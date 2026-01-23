; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!652820 () Bool)

(assert start!652820)

(declare-fun b!6731448 () Bool)

(assert (=> b!6731448 true))

(assert (=> b!6731448 true))

(declare-fun lambda!377831 () Int)

(declare-fun lambda!377830 () Int)

(assert (=> b!6731448 (not (= lambda!377831 lambda!377830))))

(assert (=> b!6731448 true))

(assert (=> b!6731448 true))

(declare-fun lambda!377832 () Int)

(assert (=> b!6731448 (not (= lambda!377832 lambda!377830))))

(assert (=> b!6731448 (not (= lambda!377832 lambda!377831))))

(assert (=> b!6731448 true))

(assert (=> b!6731448 true))

(declare-fun b!6731459 () Bool)

(assert (=> b!6731459 true))

(declare-fun b!6731436 () Bool)

(declare-fun e!4066579 () Bool)

(declare-fun tp_is_empty!42371 () Bool)

(assert (=> b!6731436 (= e!4066579 tp_is_empty!42371)))

(declare-fun b!6731437 () Bool)

(declare-fun e!4066575 () Bool)

(declare-fun tp!1845644 () Bool)

(assert (=> b!6731437 (= e!4066575 (and tp_is_empty!42371 tp!1845644))))

(declare-fun b!6731438 () Bool)

(declare-fun res!2753936 () Bool)

(declare-fun e!4066572 () Bool)

(assert (=> b!6731438 (=> res!2753936 e!4066572)))

(declare-datatypes ((C!33388 0))(
  ( (C!33389 (val!26396 Int)) )
))
(declare-datatypes ((Regex!16559 0))(
  ( (ElementMatch!16559 (c!1248231 C!33388)) (Concat!25404 (regOne!33630 Regex!16559) (regTwo!33630 Regex!16559)) (EmptyExpr!16559) (Star!16559 (reg!16888 Regex!16559)) (EmptyLang!16559) (Union!16559 (regOne!33631 Regex!16559) (regTwo!33631 Regex!16559)) )
))
(declare-datatypes ((List!65976 0))(
  ( (Nil!65852) (Cons!65852 (h!72300 Regex!16559) (t!379665 List!65976)) )
))
(declare-datatypes ((Context!11886 0))(
  ( (Context!11887 (exprs!6443 List!65976)) )
))
(declare-fun lt!2437877 () Context!11886)

(declare-fun r!7292 () Regex!16559)

(declare-datatypes ((List!65977 0))(
  ( (Nil!65853) (Cons!65853 (h!72301 Context!11886) (t!379666 List!65977)) )
))
(declare-fun unfocusZipper!2301 (List!65977) Regex!16559)

(assert (=> b!6731438 (= res!2753936 (not (= (unfocusZipper!2301 (Cons!65853 lt!2437877 Nil!65853)) (Concat!25404 (reg!16888 r!7292) r!7292))))))

(declare-fun b!6731439 () Bool)

(declare-fun res!2753927 () Bool)

(declare-fun e!4066569 () Bool)

(assert (=> b!6731439 (=> res!2753927 e!4066569)))

(declare-fun zl!343 () List!65977)

(declare-fun isEmpty!38185 (List!65977) Bool)

(assert (=> b!6731439 (= res!2753927 (not (isEmpty!38185 (t!379666 zl!343))))))

(declare-fun b!6731440 () Bool)

(declare-fun res!2753921 () Bool)

(declare-fun e!4066568 () Bool)

(assert (=> b!6731440 (=> (not res!2753921) (not e!4066568))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11886))

(declare-fun toList!10343 ((InoxSet Context!11886)) List!65977)

(assert (=> b!6731440 (= res!2753921 (= (toList!10343 z!1189) zl!343))))

(declare-fun b!6731441 () Bool)

(declare-fun e!4066570 () Bool)

(declare-fun lt!2437867 () Bool)

(assert (=> b!6731441 (= e!4066570 lt!2437867)))

(declare-fun b!6731442 () Bool)

(declare-fun lt!2437873 () Context!11886)

(declare-fun inv!84644 (Context!11886) Bool)

(assert (=> b!6731442 (= e!4066572 (inv!84644 lt!2437873))))

(declare-fun b!6731443 () Bool)

(declare-fun e!4066574 () Bool)

(declare-fun tp!1845651 () Bool)

(assert (=> b!6731443 (= e!4066574 tp!1845651)))

(declare-fun b!6731444 () Bool)

(declare-fun tp!1845647 () Bool)

(assert (=> b!6731444 (= e!4066579 tp!1845647)))

(declare-fun b!6731445 () Bool)

(declare-fun res!2753932 () Bool)

(assert (=> b!6731445 (=> res!2753932 e!4066569)))

(declare-fun generalisedConcat!2156 (List!65976) Regex!16559)

(assert (=> b!6731445 (= res!2753932 (not (= r!7292 (generalisedConcat!2156 (exprs!6443 (h!72301 zl!343))))))))

(declare-fun b!6731446 () Bool)

(declare-fun res!2753934 () Bool)

(assert (=> b!6731446 (=> res!2753934 e!4066569)))

(get-info :version)

(assert (=> b!6731446 (= res!2753934 (not ((_ is Cons!65852) (exprs!6443 (h!72301 zl!343)))))))

(declare-fun b!6731447 () Bool)

(declare-fun e!4066573 () Bool)

(assert (=> b!6731447 (= e!4066568 e!4066573)))

(declare-fun res!2753923 () Bool)

(assert (=> b!6731447 (=> (not res!2753923) (not e!4066573))))

(declare-fun lt!2437882 () Regex!16559)

(assert (=> b!6731447 (= res!2753923 (= r!7292 lt!2437882))))

(assert (=> b!6731447 (= lt!2437882 (unfocusZipper!2301 zl!343))))

(declare-fun e!4066576 () Bool)

(assert (=> b!6731448 (= e!4066569 e!4066576)))

(declare-fun res!2753933 () Bool)

(assert (=> b!6731448 (=> res!2753933 e!4066576)))

(declare-fun lt!2437875 () Bool)

(assert (=> b!6731448 (= res!2753933 (not (= lt!2437875 e!4066570)))))

(declare-fun res!2753929 () Bool)

(assert (=> b!6731448 (=> res!2753929 e!4066570)))

(declare-datatypes ((List!65978 0))(
  ( (Nil!65854) (Cons!65854 (h!72302 C!33388) (t!379667 List!65978)) )
))
(declare-fun s!2326 () List!65978)

(declare-fun isEmpty!38186 (List!65978) Bool)

(assert (=> b!6731448 (= res!2753929 (isEmpty!38186 s!2326))))

(declare-fun Exists!3627 (Int) Bool)

(assert (=> b!6731448 (= (Exists!3627 lambda!377830) (Exists!3627 lambda!377832))))

(declare-datatypes ((Unit!159809 0))(
  ( (Unit!159810) )
))
(declare-fun lt!2437874 () Unit!159809)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2154 (Regex!16559 Regex!16559 List!65978) Unit!159809)

(assert (=> b!6731448 (= lt!2437874 (lemmaExistCutMatchRandMatchRSpecEquivalent!2154 (reg!16888 r!7292) r!7292 s!2326))))

(assert (=> b!6731448 (= (Exists!3627 lambda!377830) (Exists!3627 lambda!377831))))

(declare-fun lt!2437878 () Unit!159809)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalentStar!718 (Regex!16559 List!65978) Unit!159809)

(assert (=> b!6731448 (= lt!2437878 (lemmaExistCutMatchRandMatchRSpecEquivalentStar!718 (reg!16888 r!7292) s!2326))))

(assert (=> b!6731448 (= lt!2437867 (Exists!3627 lambda!377830))))

(declare-datatypes ((tuple2!67068 0))(
  ( (tuple2!67069 (_1!36837 List!65978) (_2!36837 List!65978)) )
))
(declare-datatypes ((Option!16446 0))(
  ( (None!16445) (Some!16445 (v!52645 tuple2!67068)) )
))
(declare-fun isDefined!13149 (Option!16446) Bool)

(declare-fun findConcatSeparation!2860 (Regex!16559 Regex!16559 List!65978 List!65978 List!65978) Option!16446)

(assert (=> b!6731448 (= lt!2437867 (isDefined!13149 (findConcatSeparation!2860 (reg!16888 r!7292) r!7292 Nil!65854 s!2326 s!2326)))))

(declare-fun lt!2437871 () Unit!159809)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2624 (Regex!16559 Regex!16559 List!65978) Unit!159809)

(assert (=> b!6731448 (= lt!2437871 (lemmaFindConcatSeparationEquivalentToExists!2624 (reg!16888 r!7292) r!7292 s!2326))))

(declare-fun b!6731450 () Bool)

(declare-fun res!2753924 () Bool)

(assert (=> b!6731450 (=> res!2753924 e!4066572)))

(declare-fun lt!2437868 () (InoxSet Context!11886))

(declare-fun matchZipper!2545 ((InoxSet Context!11886) List!65978) Bool)

(declare-fun derivationStepZipper!2503 ((InoxSet Context!11886) C!33388) (InoxSet Context!11886))

(assert (=> b!6731450 (= res!2753924 (not (= (matchZipper!2545 lt!2437868 s!2326) (matchZipper!2545 (derivationStepZipper!2503 lt!2437868 (h!72302 s!2326)) (t!379667 s!2326)))))))

(declare-fun b!6731451 () Bool)

(assert (=> b!6731451 (= e!4066573 (not e!4066569))))

(declare-fun res!2753922 () Bool)

(assert (=> b!6731451 (=> res!2753922 e!4066569)))

(assert (=> b!6731451 (= res!2753922 (not ((_ is Cons!65853) zl!343)))))

(declare-fun matchRSpec!3660 (Regex!16559 List!65978) Bool)

(assert (=> b!6731451 (= lt!2437875 (matchRSpec!3660 r!7292 s!2326))))

(declare-fun matchR!8742 (Regex!16559 List!65978) Bool)

(assert (=> b!6731451 (= lt!2437875 (matchR!8742 r!7292 s!2326))))

(declare-fun lt!2437881 () Unit!159809)

(declare-fun mainMatchTheorem!3660 (Regex!16559 List!65978) Unit!159809)

(assert (=> b!6731451 (= lt!2437881 (mainMatchTheorem!3660 r!7292 s!2326))))

(declare-fun b!6731452 () Bool)

(declare-fun res!2753937 () Bool)

(assert (=> b!6731452 (=> res!2753937 e!4066569)))

(declare-fun generalisedUnion!2403 (List!65976) Regex!16559)

(declare-fun unfocusZipperList!1980 (List!65977) List!65976)

(assert (=> b!6731452 (= res!2753937 (not (= r!7292 (generalisedUnion!2403 (unfocusZipperList!1980 zl!343)))))))

(declare-fun b!6731453 () Bool)

(declare-fun tp!1845646 () Bool)

(declare-fun tp!1845650 () Bool)

(assert (=> b!6731453 (= e!4066579 (and tp!1845646 tp!1845650))))

(declare-fun setElem!45921 () Context!11886)

(declare-fun e!4066578 () Bool)

(declare-fun setRes!45921 () Bool)

(declare-fun setNonEmpty!45921 () Bool)

(declare-fun tp!1845645 () Bool)

(assert (=> setNonEmpty!45921 (= setRes!45921 (and tp!1845645 (inv!84644 setElem!45921) e!4066578))))

(declare-fun setRest!45921 () (InoxSet Context!11886))

(assert (=> setNonEmpty!45921 (= z!1189 ((_ map or) (store ((as const (Array Context!11886 Bool)) false) setElem!45921 true) setRest!45921))))

(declare-fun e!4066580 () Bool)

(declare-fun b!6731454 () Bool)

(declare-fun tp!1845652 () Bool)

(assert (=> b!6731454 (= e!4066580 (and (inv!84644 (h!72301 zl!343)) e!4066574 tp!1845652))))

(declare-fun b!6731455 () Bool)

(declare-fun res!2753938 () Bool)

(assert (=> b!6731455 (=> res!2753938 e!4066569)))

(assert (=> b!6731455 (= res!2753938 (or ((_ is EmptyExpr!16559) r!7292) ((_ is EmptyLang!16559) r!7292) ((_ is ElementMatch!16559) r!7292) ((_ is Union!16559) r!7292) ((_ is Concat!25404) r!7292)))))

(declare-fun b!6731456 () Bool)

(declare-fun res!2753935 () Bool)

(assert (=> b!6731456 (=> res!2753935 e!4066572)))

(assert (=> b!6731456 (= res!2753935 (or (not (= lt!2437882 r!7292)) (not (= r!7292 r!7292))))))

(declare-fun b!6731457 () Bool)

(declare-fun tp!1845648 () Bool)

(declare-fun tp!1845649 () Bool)

(assert (=> b!6731457 (= e!4066579 (and tp!1845648 tp!1845649))))

(declare-fun b!6731458 () Bool)

(declare-fun e!4066571 () Bool)

(assert (=> b!6731458 (= e!4066571 e!4066572)))

(declare-fun res!2753930 () Bool)

(assert (=> b!6731458 (=> res!2753930 e!4066572)))

(declare-fun lt!2437870 () (InoxSet Context!11886))

(declare-fun derivationStepZipperDown!1787 (Regex!16559 Context!11886 C!33388) (InoxSet Context!11886))

(assert (=> b!6731458 (= res!2753930 (not (= lt!2437870 (derivationStepZipperDown!1787 (reg!16888 r!7292) lt!2437873 (h!72302 s!2326)))))))

(declare-fun lt!2437872 () List!65976)

(assert (=> b!6731458 (= lt!2437873 (Context!11887 lt!2437872))))

(declare-fun lambda!377833 () Int)

(declare-fun flatMap!2040 ((InoxSet Context!11886) Int) (InoxSet Context!11886))

(declare-fun derivationStepZipperUp!1713 (Context!11886 C!33388) (InoxSet Context!11886))

(assert (=> b!6731458 (= (flatMap!2040 lt!2437868 lambda!377833) (derivationStepZipperUp!1713 lt!2437877 (h!72302 s!2326)))))

(declare-fun lt!2437879 () Unit!159809)

(declare-fun lemmaFlatMapOnSingletonSet!1566 ((InoxSet Context!11886) Context!11886 Int) Unit!159809)

(assert (=> b!6731458 (= lt!2437879 (lemmaFlatMapOnSingletonSet!1566 lt!2437868 lt!2437877 lambda!377833))))

(declare-fun lt!2437876 () (InoxSet Context!11886))

(assert (=> b!6731458 (= lt!2437876 (derivationStepZipperUp!1713 lt!2437877 (h!72302 s!2326)))))

(assert (=> b!6731458 (= lt!2437868 (store ((as const (Array Context!11886 Bool)) false) lt!2437877 true))))

(assert (=> b!6731458 (= lt!2437877 (Context!11887 (Cons!65852 (reg!16888 r!7292) lt!2437872)))))

(assert (=> b!6731458 (= lt!2437872 (Cons!65852 r!7292 Nil!65852))))

(declare-fun setIsEmpty!45921 () Bool)

(assert (=> setIsEmpty!45921 setRes!45921))

(declare-fun e!4066577 () Bool)

(assert (=> b!6731459 (= e!4066577 e!4066571)))

(declare-fun res!2753928 () Bool)

(assert (=> b!6731459 (=> res!2753928 e!4066571)))

(declare-fun lt!2437869 () (InoxSet Context!11886))

(assert (=> b!6731459 (= res!2753928 (not (= lt!2437870 lt!2437869)))))

(assert (=> b!6731459 (= (flatMap!2040 z!1189 lambda!377833) (derivationStepZipperUp!1713 (h!72301 zl!343) (h!72302 s!2326)))))

(declare-fun lt!2437866 () Unit!159809)

(assert (=> b!6731459 (= lt!2437866 (lemmaFlatMapOnSingletonSet!1566 z!1189 (h!72301 zl!343) lambda!377833))))

(declare-fun b!6731460 () Bool)

(declare-fun tp!1845653 () Bool)

(assert (=> b!6731460 (= e!4066578 tp!1845653)))

(declare-fun b!6731461 () Bool)

(declare-fun res!2753925 () Bool)

(assert (=> b!6731461 (=> res!2753925 e!4066576)))

(assert (=> b!6731461 (= res!2753925 ((_ is Nil!65854) s!2326))))

(declare-fun res!2753926 () Bool)

(assert (=> start!652820 (=> (not res!2753926) (not e!4066568))))

(declare-fun validRegex!8295 (Regex!16559) Bool)

(assert (=> start!652820 (= res!2753926 (validRegex!8295 r!7292))))

(assert (=> start!652820 e!4066568))

(assert (=> start!652820 e!4066579))

(declare-fun condSetEmpty!45921 () Bool)

(assert (=> start!652820 (= condSetEmpty!45921 (= z!1189 ((as const (Array Context!11886 Bool)) false)))))

(assert (=> start!652820 setRes!45921))

(assert (=> start!652820 e!4066580))

(assert (=> start!652820 e!4066575))

(declare-fun b!6731449 () Bool)

(assert (=> b!6731449 (= e!4066576 e!4066577)))

(declare-fun res!2753931 () Bool)

(assert (=> b!6731449 (=> res!2753931 e!4066577)))

(declare-fun lt!2437880 () (InoxSet Context!11886))

(assert (=> b!6731449 (= res!2753931 (not (= lt!2437880 lt!2437869)))))

(assert (=> b!6731449 (= lt!2437869 (derivationStepZipperDown!1787 r!7292 (Context!11887 Nil!65852) (h!72302 s!2326)))))

(assert (=> b!6731449 (= lt!2437880 (derivationStepZipperUp!1713 (Context!11887 (Cons!65852 r!7292 Nil!65852)) (h!72302 s!2326)))))

(assert (=> b!6731449 (= lt!2437870 (derivationStepZipper!2503 z!1189 (h!72302 s!2326)))))

(assert (= (and start!652820 res!2753926) b!6731440))

(assert (= (and b!6731440 res!2753921) b!6731447))

(assert (= (and b!6731447 res!2753923) b!6731451))

(assert (= (and b!6731451 (not res!2753922)) b!6731439))

(assert (= (and b!6731439 (not res!2753927)) b!6731445))

(assert (= (and b!6731445 (not res!2753932)) b!6731446))

(assert (= (and b!6731446 (not res!2753934)) b!6731452))

(assert (= (and b!6731452 (not res!2753937)) b!6731455))

(assert (= (and b!6731455 (not res!2753938)) b!6731448))

(assert (= (and b!6731448 (not res!2753929)) b!6731441))

(assert (= (and b!6731448 (not res!2753933)) b!6731461))

(assert (= (and b!6731461 (not res!2753925)) b!6731449))

(assert (= (and b!6731449 (not res!2753931)) b!6731459))

(assert (= (and b!6731459 (not res!2753928)) b!6731458))

(assert (= (and b!6731458 (not res!2753930)) b!6731450))

(assert (= (and b!6731450 (not res!2753924)) b!6731456))

(assert (= (and b!6731456 (not res!2753935)) b!6731438))

(assert (= (and b!6731438 (not res!2753936)) b!6731442))

(assert (= (and start!652820 ((_ is ElementMatch!16559) r!7292)) b!6731436))

(assert (= (and start!652820 ((_ is Concat!25404) r!7292)) b!6731453))

(assert (= (and start!652820 ((_ is Star!16559) r!7292)) b!6731444))

(assert (= (and start!652820 ((_ is Union!16559) r!7292)) b!6731457))

(assert (= (and start!652820 condSetEmpty!45921) setIsEmpty!45921))

(assert (= (and start!652820 (not condSetEmpty!45921)) setNonEmpty!45921))

(assert (= setNonEmpty!45921 b!6731460))

(assert (= b!6731454 b!6731443))

(assert (= (and start!652820 ((_ is Cons!65853) zl!343)) b!6731454))

(assert (= (and start!652820 ((_ is Cons!65854) s!2326)) b!6731437))

(declare-fun m!7489946 () Bool)

(assert (=> b!6731458 m!7489946))

(declare-fun m!7489948 () Bool)

(assert (=> b!6731458 m!7489948))

(declare-fun m!7489950 () Bool)

(assert (=> b!6731458 m!7489950))

(declare-fun m!7489952 () Bool)

(assert (=> b!6731458 m!7489952))

(declare-fun m!7489954 () Bool)

(assert (=> b!6731458 m!7489954))

(declare-fun m!7489956 () Bool)

(assert (=> b!6731449 m!7489956))

(declare-fun m!7489958 () Bool)

(assert (=> b!6731449 m!7489958))

(declare-fun m!7489960 () Bool)

(assert (=> b!6731449 m!7489960))

(declare-fun m!7489962 () Bool)

(assert (=> b!6731447 m!7489962))

(declare-fun m!7489964 () Bool)

(assert (=> b!6731452 m!7489964))

(assert (=> b!6731452 m!7489964))

(declare-fun m!7489966 () Bool)

(assert (=> b!6731452 m!7489966))

(declare-fun m!7489968 () Bool)

(assert (=> b!6731439 m!7489968))

(declare-fun m!7489970 () Bool)

(assert (=> b!6731440 m!7489970))

(declare-fun m!7489972 () Bool)

(assert (=> b!6731454 m!7489972))

(declare-fun m!7489974 () Bool)

(assert (=> b!6731448 m!7489974))

(declare-fun m!7489976 () Bool)

(assert (=> b!6731448 m!7489976))

(declare-fun m!7489978 () Bool)

(assert (=> b!6731448 m!7489978))

(declare-fun m!7489980 () Bool)

(assert (=> b!6731448 m!7489980))

(declare-fun m!7489982 () Bool)

(assert (=> b!6731448 m!7489982))

(declare-fun m!7489984 () Bool)

(assert (=> b!6731448 m!7489984))

(declare-fun m!7489986 () Bool)

(assert (=> b!6731448 m!7489986))

(declare-fun m!7489988 () Bool)

(assert (=> b!6731448 m!7489988))

(declare-fun m!7489990 () Bool)

(assert (=> b!6731448 m!7489990))

(assert (=> b!6731448 m!7489978))

(assert (=> b!6731448 m!7489984))

(assert (=> b!6731448 m!7489978))

(declare-fun m!7489992 () Bool)

(assert (=> b!6731459 m!7489992))

(declare-fun m!7489994 () Bool)

(assert (=> b!6731459 m!7489994))

(declare-fun m!7489996 () Bool)

(assert (=> b!6731459 m!7489996))

(declare-fun m!7489998 () Bool)

(assert (=> b!6731438 m!7489998))

(declare-fun m!7490000 () Bool)

(assert (=> setNonEmpty!45921 m!7490000))

(declare-fun m!7490002 () Bool)

(assert (=> b!6731442 m!7490002))

(declare-fun m!7490004 () Bool)

(assert (=> b!6731450 m!7490004))

(declare-fun m!7490006 () Bool)

(assert (=> b!6731450 m!7490006))

(assert (=> b!6731450 m!7490006))

(declare-fun m!7490008 () Bool)

(assert (=> b!6731450 m!7490008))

(declare-fun m!7490010 () Bool)

(assert (=> b!6731451 m!7490010))

(declare-fun m!7490012 () Bool)

(assert (=> b!6731451 m!7490012))

(declare-fun m!7490014 () Bool)

(assert (=> b!6731451 m!7490014))

(declare-fun m!7490016 () Bool)

(assert (=> b!6731445 m!7490016))

(declare-fun m!7490018 () Bool)

(assert (=> start!652820 m!7490018))

(check-sat (not b!6731445) (not b!6731448) (not b!6731437) (not start!652820) (not b!6731450) (not b!6731438) (not b!6731458) (not b!6731447) (not b!6731442) (not b!6731452) (not b!6731451) (not b!6731440) (not setNonEmpty!45921) tp_is_empty!42371 (not b!6731460) (not b!6731454) (not b!6731444) (not b!6731457) (not b!6731443) (not b!6731439) (not b!6731453) (not b!6731459) (not b!6731449))
(check-sat)
(get-model)

(declare-fun d!2115063 () Bool)

(declare-fun lambda!377836 () Int)

(declare-fun forall!15759 (List!65976 Int) Bool)

(assert (=> d!2115063 (= (inv!84644 setElem!45921) (forall!15759 (exprs!6443 setElem!45921) lambda!377836))))

(declare-fun bs!1790227 () Bool)

(assert (= bs!1790227 d!2115063))

(declare-fun m!7490036 () Bool)

(assert (=> bs!1790227 m!7490036))

(assert (=> setNonEmpty!45921 d!2115063))

(declare-fun bs!1790229 () Bool)

(declare-fun d!2115069 () Bool)

(assert (= bs!1790229 (and d!2115069 d!2115063)))

(declare-fun lambda!377845 () Int)

(assert (=> bs!1790229 (= lambda!377845 lambda!377836)))

(declare-fun b!6731566 () Bool)

(declare-fun e!4066645 () Bool)

(declare-fun e!4066646 () Bool)

(assert (=> b!6731566 (= e!4066645 e!4066646)))

(declare-fun c!1248268 () Bool)

(declare-fun isEmpty!38188 (List!65976) Bool)

(assert (=> b!6731566 (= c!1248268 (isEmpty!38188 (unfocusZipperList!1980 zl!343)))))

(declare-fun b!6731567 () Bool)

(declare-fun lt!2437897 () Regex!16559)

(declare-fun isEmptyLang!1933 (Regex!16559) Bool)

(assert (=> b!6731567 (= e!4066646 (isEmptyLang!1933 lt!2437897))))

(declare-fun b!6731568 () Bool)

(declare-fun e!4066649 () Bool)

(assert (=> b!6731568 (= e!4066646 e!4066649)))

(declare-fun c!1248270 () Bool)

(declare-fun tail!12630 (List!65976) List!65976)

(assert (=> b!6731568 (= c!1248270 (isEmpty!38188 (tail!12630 (unfocusZipperList!1980 zl!343))))))

(declare-fun b!6731569 () Bool)

(declare-fun head!13545 (List!65976) Regex!16559)

(assert (=> b!6731569 (= e!4066649 (= lt!2437897 (head!13545 (unfocusZipperList!1980 zl!343))))))

(assert (=> d!2115069 e!4066645))

(declare-fun res!2753967 () Bool)

(assert (=> d!2115069 (=> (not res!2753967) (not e!4066645))))

(assert (=> d!2115069 (= res!2753967 (validRegex!8295 lt!2437897))))

(declare-fun e!4066644 () Regex!16559)

(assert (=> d!2115069 (= lt!2437897 e!4066644)))

(declare-fun c!1248269 () Bool)

(declare-fun e!4066647 () Bool)

(assert (=> d!2115069 (= c!1248269 e!4066647)))

(declare-fun res!2753968 () Bool)

(assert (=> d!2115069 (=> (not res!2753968) (not e!4066647))))

(assert (=> d!2115069 (= res!2753968 ((_ is Cons!65852) (unfocusZipperList!1980 zl!343)))))

(assert (=> d!2115069 (forall!15759 (unfocusZipperList!1980 zl!343) lambda!377845)))

(assert (=> d!2115069 (= (generalisedUnion!2403 (unfocusZipperList!1980 zl!343)) lt!2437897)))

(declare-fun b!6731570 () Bool)

(assert (=> b!6731570 (= e!4066644 (h!72300 (unfocusZipperList!1980 zl!343)))))

(declare-fun b!6731571 () Bool)

(declare-fun e!4066648 () Regex!16559)

(assert (=> b!6731571 (= e!4066648 (Union!16559 (h!72300 (unfocusZipperList!1980 zl!343)) (generalisedUnion!2403 (t!379665 (unfocusZipperList!1980 zl!343)))))))

(declare-fun b!6731572 () Bool)

(assert (=> b!6731572 (= e!4066648 EmptyLang!16559)))

(declare-fun b!6731573 () Bool)

(assert (=> b!6731573 (= e!4066644 e!4066648)))

(declare-fun c!1248267 () Bool)

(assert (=> b!6731573 (= c!1248267 ((_ is Cons!65852) (unfocusZipperList!1980 zl!343)))))

(declare-fun b!6731574 () Bool)

(assert (=> b!6731574 (= e!4066647 (isEmpty!38188 (t!379665 (unfocusZipperList!1980 zl!343))))))

(declare-fun b!6731575 () Bool)

(declare-fun isUnion!1363 (Regex!16559) Bool)

(assert (=> b!6731575 (= e!4066649 (isUnion!1363 lt!2437897))))

(assert (= (and d!2115069 res!2753968) b!6731574))

(assert (= (and d!2115069 c!1248269) b!6731570))

(assert (= (and d!2115069 (not c!1248269)) b!6731573))

(assert (= (and b!6731573 c!1248267) b!6731571))

(assert (= (and b!6731573 (not c!1248267)) b!6731572))

(assert (= (and d!2115069 res!2753967) b!6731566))

(assert (= (and b!6731566 c!1248268) b!6731567))

(assert (= (and b!6731566 (not c!1248268)) b!6731568))

(assert (= (and b!6731568 c!1248270) b!6731569))

(assert (= (and b!6731568 (not c!1248270)) b!6731575))

(declare-fun m!7490068 () Bool)

(assert (=> b!6731571 m!7490068))

(declare-fun m!7490070 () Bool)

(assert (=> b!6731567 m!7490070))

(declare-fun m!7490072 () Bool)

(assert (=> b!6731574 m!7490072))

(assert (=> b!6731566 m!7489964))

(declare-fun m!7490074 () Bool)

(assert (=> b!6731566 m!7490074))

(declare-fun m!7490076 () Bool)

(assert (=> d!2115069 m!7490076))

(assert (=> d!2115069 m!7489964))

(declare-fun m!7490078 () Bool)

(assert (=> d!2115069 m!7490078))

(assert (=> b!6731569 m!7489964))

(declare-fun m!7490080 () Bool)

(assert (=> b!6731569 m!7490080))

(declare-fun m!7490082 () Bool)

(assert (=> b!6731575 m!7490082))

(assert (=> b!6731568 m!7489964))

(declare-fun m!7490084 () Bool)

(assert (=> b!6731568 m!7490084))

(assert (=> b!6731568 m!7490084))

(declare-fun m!7490086 () Bool)

(assert (=> b!6731568 m!7490086))

(assert (=> b!6731452 d!2115069))

(declare-fun bs!1790233 () Bool)

(declare-fun d!2115077 () Bool)

(assert (= bs!1790233 (and d!2115077 d!2115063)))

(declare-fun lambda!377854 () Int)

(assert (=> bs!1790233 (= lambda!377854 lambda!377836)))

(declare-fun bs!1790234 () Bool)

(assert (= bs!1790234 (and d!2115077 d!2115069)))

(assert (=> bs!1790234 (= lambda!377854 lambda!377845)))

(declare-fun lt!2437900 () List!65976)

(assert (=> d!2115077 (forall!15759 lt!2437900 lambda!377854)))

(declare-fun e!4066677 () List!65976)

(assert (=> d!2115077 (= lt!2437900 e!4066677)))

(declare-fun c!1248285 () Bool)

(assert (=> d!2115077 (= c!1248285 ((_ is Cons!65853) zl!343))))

(assert (=> d!2115077 (= (unfocusZipperList!1980 zl!343) lt!2437900)))

(declare-fun b!6731623 () Bool)

(assert (=> b!6731623 (= e!4066677 (Cons!65852 (generalisedConcat!2156 (exprs!6443 (h!72301 zl!343))) (unfocusZipperList!1980 (t!379666 zl!343))))))

(declare-fun b!6731624 () Bool)

(assert (=> b!6731624 (= e!4066677 Nil!65852)))

(assert (= (and d!2115077 c!1248285) b!6731623))

(assert (= (and d!2115077 (not c!1248285)) b!6731624))

(declare-fun m!7490094 () Bool)

(assert (=> d!2115077 m!7490094))

(assert (=> b!6731623 m!7490016))

(declare-fun m!7490096 () Bool)

(assert (=> b!6731623 m!7490096))

(assert (=> b!6731452 d!2115077))

(declare-fun bs!1790235 () Bool)

(declare-fun d!2115081 () Bool)

(assert (= bs!1790235 (and d!2115081 d!2115063)))

(declare-fun lambda!377855 () Int)

(assert (=> bs!1790235 (= lambda!377855 lambda!377836)))

(declare-fun bs!1790236 () Bool)

(assert (= bs!1790236 (and d!2115081 d!2115069)))

(assert (=> bs!1790236 (= lambda!377855 lambda!377845)))

(declare-fun bs!1790237 () Bool)

(assert (= bs!1790237 (and d!2115081 d!2115077)))

(assert (=> bs!1790237 (= lambda!377855 lambda!377854)))

(assert (=> d!2115081 (= (inv!84644 lt!2437873) (forall!15759 (exprs!6443 lt!2437873) lambda!377855))))

(declare-fun bs!1790238 () Bool)

(assert (= bs!1790238 d!2115081))

(declare-fun m!7490098 () Bool)

(assert (=> bs!1790238 m!7490098))

(assert (=> b!6731442 d!2115081))

(declare-fun d!2115083 () Bool)

(declare-fun choose!50166 ((InoxSet Context!11886) Int) (InoxSet Context!11886))

(assert (=> d!2115083 (= (flatMap!2040 z!1189 lambda!377833) (choose!50166 z!1189 lambda!377833))))

(declare-fun bs!1790239 () Bool)

(assert (= bs!1790239 d!2115083))

(declare-fun m!7490100 () Bool)

(assert (=> bs!1790239 m!7490100))

(assert (=> b!6731459 d!2115083))

(declare-fun b!6731677 () Bool)

(declare-fun e!4066707 () (InoxSet Context!11886))

(declare-fun call!608019 () (InoxSet Context!11886))

(assert (=> b!6731677 (= e!4066707 call!608019)))

(declare-fun b!6731678 () Bool)

(declare-fun e!4066706 () (InoxSet Context!11886))

(assert (=> b!6731678 (= e!4066706 e!4066707)))

(declare-fun c!1248299 () Bool)

(assert (=> b!6731678 (= c!1248299 ((_ is Cons!65852) (exprs!6443 (h!72301 zl!343))))))

(declare-fun d!2115085 () Bool)

(declare-fun c!1248300 () Bool)

(declare-fun e!4066705 () Bool)

(assert (=> d!2115085 (= c!1248300 e!4066705)))

(declare-fun res!2754014 () Bool)

(assert (=> d!2115085 (=> (not res!2754014) (not e!4066705))))

(assert (=> d!2115085 (= res!2754014 ((_ is Cons!65852) (exprs!6443 (h!72301 zl!343))))))

(assert (=> d!2115085 (= (derivationStepZipperUp!1713 (h!72301 zl!343) (h!72302 s!2326)) e!4066706)))

(declare-fun b!6731679 () Bool)

(assert (=> b!6731679 (= e!4066707 ((as const (Array Context!11886 Bool)) false))))

(declare-fun b!6731680 () Bool)

(declare-fun nullable!6546 (Regex!16559) Bool)

(assert (=> b!6731680 (= e!4066705 (nullable!6546 (h!72300 (exprs!6443 (h!72301 zl!343)))))))

(declare-fun bm!608014 () Bool)

(assert (=> bm!608014 (= call!608019 (derivationStepZipperDown!1787 (h!72300 (exprs!6443 (h!72301 zl!343))) (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343)))) (h!72302 s!2326)))))

(declare-fun b!6731681 () Bool)

(assert (=> b!6731681 (= e!4066706 ((_ map or) call!608019 (derivationStepZipperUp!1713 (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343)))) (h!72302 s!2326))))))

(assert (= (and d!2115085 res!2754014) b!6731680))

(assert (= (and d!2115085 c!1248300) b!6731681))

(assert (= (and d!2115085 (not c!1248300)) b!6731678))

(assert (= (and b!6731678 c!1248299) b!6731677))

(assert (= (and b!6731678 (not c!1248299)) b!6731679))

(assert (= (or b!6731681 b!6731677) bm!608014))

(declare-fun m!7490116 () Bool)

(assert (=> b!6731680 m!7490116))

(declare-fun m!7490118 () Bool)

(assert (=> bm!608014 m!7490118))

(declare-fun m!7490120 () Bool)

(assert (=> b!6731681 m!7490120))

(assert (=> b!6731459 d!2115085))

(declare-fun d!2115093 () Bool)

(declare-fun dynLambda!26268 (Int Context!11886) (InoxSet Context!11886))

(assert (=> d!2115093 (= (flatMap!2040 z!1189 lambda!377833) (dynLambda!26268 lambda!377833 (h!72301 zl!343)))))

(declare-fun lt!2437909 () Unit!159809)

(declare-fun choose!50167 ((InoxSet Context!11886) Context!11886 Int) Unit!159809)

(assert (=> d!2115093 (= lt!2437909 (choose!50167 z!1189 (h!72301 zl!343) lambda!377833))))

(assert (=> d!2115093 (= z!1189 (store ((as const (Array Context!11886 Bool)) false) (h!72301 zl!343) true))))

(assert (=> d!2115093 (= (lemmaFlatMapOnSingletonSet!1566 z!1189 (h!72301 zl!343) lambda!377833) lt!2437909)))

(declare-fun b_lambda!253453 () Bool)

(assert (=> (not b_lambda!253453) (not d!2115093)))

(declare-fun bs!1790243 () Bool)

(assert (= bs!1790243 d!2115093))

(assert (=> bs!1790243 m!7489992))

(declare-fun m!7490142 () Bool)

(assert (=> bs!1790243 m!7490142))

(declare-fun m!7490144 () Bool)

(assert (=> bs!1790243 m!7490144))

(declare-fun m!7490146 () Bool)

(assert (=> bs!1790243 m!7490146))

(assert (=> b!6731459 d!2115093))

(declare-fun d!2115101 () Bool)

(declare-fun e!4066723 () Bool)

(assert (=> d!2115101 e!4066723))

(declare-fun res!2754021 () Bool)

(assert (=> d!2115101 (=> (not res!2754021) (not e!4066723))))

(declare-fun lt!2437914 () List!65977)

(declare-fun noDuplicate!2351 (List!65977) Bool)

(assert (=> d!2115101 (= res!2754021 (noDuplicate!2351 lt!2437914))))

(declare-fun choose!50168 ((InoxSet Context!11886)) List!65977)

(assert (=> d!2115101 (= lt!2437914 (choose!50168 z!1189))))

(assert (=> d!2115101 (= (toList!10343 z!1189) lt!2437914)))

(declare-fun b!6731710 () Bool)

(declare-fun content!12786 (List!65977) (InoxSet Context!11886))

(assert (=> b!6731710 (= e!4066723 (= (content!12786 lt!2437914) z!1189))))

(assert (= (and d!2115101 res!2754021) b!6731710))

(declare-fun m!7490148 () Bool)

(assert (=> d!2115101 m!7490148))

(declare-fun m!7490150 () Bool)

(assert (=> d!2115101 m!7490150))

(declare-fun m!7490152 () Bool)

(assert (=> b!6731710 m!7490152))

(assert (=> b!6731440 d!2115101))

(declare-fun bs!1790268 () Bool)

(declare-fun b!6731816 () Bool)

(assert (= bs!1790268 (and b!6731816 b!6731448)))

(declare-fun lambda!377876 () Int)

(assert (=> bs!1790268 (not (= lambda!377876 lambda!377830))))

(assert (=> bs!1790268 (= lambda!377876 lambda!377831)))

(assert (=> bs!1790268 (not (= lambda!377876 lambda!377832))))

(assert (=> b!6731816 true))

(assert (=> b!6731816 true))

(declare-fun bs!1790272 () Bool)

(declare-fun b!6731824 () Bool)

(assert (= bs!1790272 (and b!6731824 b!6731448)))

(declare-fun lambda!377878 () Int)

(assert (=> bs!1790272 (not (= lambda!377878 lambda!377830))))

(assert (=> bs!1790272 (not (= lambda!377878 lambda!377831))))

(assert (=> bs!1790272 (= (and (= (regOne!33630 r!7292) (reg!16888 r!7292)) (= (regTwo!33630 r!7292) r!7292)) (= lambda!377878 lambda!377832))))

(declare-fun bs!1790274 () Bool)

(assert (= bs!1790274 (and b!6731824 b!6731816)))

(assert (=> bs!1790274 (not (= lambda!377878 lambda!377876))))

(assert (=> b!6731824 true))

(assert (=> b!6731824 true))

(declare-fun b!6731815 () Bool)

(declare-fun res!2754052 () Bool)

(declare-fun e!4066789 () Bool)

(assert (=> b!6731815 (=> res!2754052 e!4066789)))

(declare-fun call!608050 () Bool)

(assert (=> b!6731815 (= res!2754052 call!608050)))

(declare-fun e!4066785 () Bool)

(assert (=> b!6731815 (= e!4066785 e!4066789)))

(declare-fun call!608051 () Bool)

(assert (=> b!6731816 (= e!4066789 call!608051)))

(declare-fun b!6731817 () Bool)

(declare-fun c!1248351 () Bool)

(assert (=> b!6731817 (= c!1248351 ((_ is Union!16559) r!7292))))

(declare-fun e!4066783 () Bool)

(declare-fun e!4066784 () Bool)

(assert (=> b!6731817 (= e!4066783 e!4066784)))

(declare-fun bm!608045 () Bool)

(assert (=> bm!608045 (= call!608050 (isEmpty!38186 s!2326))))

(declare-fun bm!608046 () Bool)

(declare-fun c!1248353 () Bool)

(assert (=> bm!608046 (= call!608051 (Exists!3627 (ite c!1248353 lambda!377876 lambda!377878)))))

(declare-fun b!6731818 () Bool)

(declare-fun e!4066786 () Bool)

(assert (=> b!6731818 (= e!4066786 (matchRSpec!3660 (regTwo!33631 r!7292) s!2326))))

(declare-fun d!2115103 () Bool)

(declare-fun c!1248354 () Bool)

(assert (=> d!2115103 (= c!1248354 ((_ is EmptyExpr!16559) r!7292))))

(declare-fun e!4066788 () Bool)

(assert (=> d!2115103 (= (matchRSpec!3660 r!7292 s!2326) e!4066788)))

(declare-fun b!6731819 () Bool)

(assert (=> b!6731819 (= e!4066784 e!4066785)))

(assert (=> b!6731819 (= c!1248353 ((_ is Star!16559) r!7292))))

(declare-fun b!6731820 () Bool)

(assert (=> b!6731820 (= e!4066788 call!608050)))

(declare-fun b!6731821 () Bool)

(declare-fun c!1248352 () Bool)

(assert (=> b!6731821 (= c!1248352 ((_ is ElementMatch!16559) r!7292))))

(declare-fun e!4066787 () Bool)

(assert (=> b!6731821 (= e!4066787 e!4066783)))

(declare-fun b!6731822 () Bool)

(assert (=> b!6731822 (= e!4066784 e!4066786)))

(declare-fun res!2754051 () Bool)

(assert (=> b!6731822 (= res!2754051 (matchRSpec!3660 (regOne!33631 r!7292) s!2326))))

(assert (=> b!6731822 (=> res!2754051 e!4066786)))

(declare-fun b!6731823 () Bool)

(assert (=> b!6731823 (= e!4066783 (= s!2326 (Cons!65854 (c!1248231 r!7292) Nil!65854)))))

(assert (=> b!6731824 (= e!4066785 call!608051)))

(declare-fun b!6731825 () Bool)

(assert (=> b!6731825 (= e!4066788 e!4066787)))

(declare-fun res!2754050 () Bool)

(assert (=> b!6731825 (= res!2754050 (not ((_ is EmptyLang!16559) r!7292)))))

(assert (=> b!6731825 (=> (not res!2754050) (not e!4066787))))

(assert (= (and d!2115103 c!1248354) b!6731820))

(assert (= (and d!2115103 (not c!1248354)) b!6731825))

(assert (= (and b!6731825 res!2754050) b!6731821))

(assert (= (and b!6731821 c!1248352) b!6731823))

(assert (= (and b!6731821 (not c!1248352)) b!6731817))

(assert (= (and b!6731817 c!1248351) b!6731822))

(assert (= (and b!6731817 (not c!1248351)) b!6731819))

(assert (= (and b!6731822 (not res!2754051)) b!6731818))

(assert (= (and b!6731819 c!1248353) b!6731815))

(assert (= (and b!6731819 (not c!1248353)) b!6731824))

(assert (= (and b!6731815 (not res!2754052)) b!6731816))

(assert (= (or b!6731816 b!6731824) bm!608046))

(assert (= (or b!6731820 b!6731815) bm!608045))

(assert (=> bm!608045 m!7489974))

(declare-fun m!7490236 () Bool)

(assert (=> bm!608046 m!7490236))

(declare-fun m!7490238 () Bool)

(assert (=> b!6731818 m!7490238))

(declare-fun m!7490240 () Bool)

(assert (=> b!6731822 m!7490240))

(assert (=> b!6731451 d!2115103))

(declare-fun b!6731868 () Bool)

(declare-fun res!2754090 () Bool)

(declare-fun e!4066815 () Bool)

(assert (=> b!6731868 (=> (not res!2754090) (not e!4066815))))

(declare-fun call!608054 () Bool)

(assert (=> b!6731868 (= res!2754090 (not call!608054))))

(declare-fun b!6731869 () Bool)

(declare-fun e!4066816 () Bool)

(declare-fun lt!2437926 () Bool)

(assert (=> b!6731869 (= e!4066816 (= lt!2437926 call!608054))))

(declare-fun b!6731870 () Bool)

(declare-fun res!2754089 () Bool)

(assert (=> b!6731870 (=> (not res!2754089) (not e!4066815))))

(declare-fun tail!12631 (List!65978) List!65978)

(assert (=> b!6731870 (= res!2754089 (isEmpty!38186 (tail!12631 s!2326)))))

(declare-fun b!6731871 () Bool)

(declare-fun res!2754087 () Bool)

(declare-fun e!4066812 () Bool)

(assert (=> b!6731871 (=> res!2754087 e!4066812)))

(assert (=> b!6731871 (= res!2754087 (not ((_ is ElementMatch!16559) r!7292)))))

(declare-fun e!4066814 () Bool)

(assert (=> b!6731871 (= e!4066814 e!4066812)))

(declare-fun b!6731872 () Bool)

(declare-fun e!4066810 () Bool)

(declare-fun head!13546 (List!65978) C!33388)

(assert (=> b!6731872 (= e!4066810 (not (= (head!13546 s!2326) (c!1248231 r!7292))))))

(declare-fun b!6731873 () Bool)

(declare-fun e!4066813 () Bool)

(assert (=> b!6731873 (= e!4066813 e!4066810)))

(declare-fun res!2754084 () Bool)

(assert (=> b!6731873 (=> res!2754084 e!4066810)))

(assert (=> b!6731873 (= res!2754084 call!608054)))

(declare-fun b!6731874 () Bool)

(assert (=> b!6731874 (= e!4066816 e!4066814)))

(declare-fun c!1248361 () Bool)

(assert (=> b!6731874 (= c!1248361 ((_ is EmptyLang!16559) r!7292))))

(declare-fun b!6731875 () Bool)

(declare-fun e!4066811 () Bool)

(assert (=> b!6731875 (= e!4066811 (nullable!6546 r!7292))))

(declare-fun b!6731876 () Bool)

(declare-fun res!2754086 () Bool)

(assert (=> b!6731876 (=> res!2754086 e!4066812)))

(assert (=> b!6731876 (= res!2754086 e!4066815)))

(declare-fun res!2754088 () Bool)

(assert (=> b!6731876 (=> (not res!2754088) (not e!4066815))))

(assert (=> b!6731876 (= res!2754088 lt!2437926)))

(declare-fun d!2115133 () Bool)

(assert (=> d!2115133 e!4066816))

(declare-fun c!1248363 () Bool)

(assert (=> d!2115133 (= c!1248363 ((_ is EmptyExpr!16559) r!7292))))

(assert (=> d!2115133 (= lt!2437926 e!4066811)))

(declare-fun c!1248362 () Bool)

(assert (=> d!2115133 (= c!1248362 (isEmpty!38186 s!2326))))

(assert (=> d!2115133 (validRegex!8295 r!7292)))

(assert (=> d!2115133 (= (matchR!8742 r!7292 s!2326) lt!2437926)))

(declare-fun b!6731877 () Bool)

(declare-fun derivativeStep!5231 (Regex!16559 C!33388) Regex!16559)

(assert (=> b!6731877 (= e!4066811 (matchR!8742 (derivativeStep!5231 r!7292 (head!13546 s!2326)) (tail!12631 s!2326)))))

(declare-fun b!6731878 () Bool)

(assert (=> b!6731878 (= e!4066812 e!4066813)))

(declare-fun res!2754085 () Bool)

(assert (=> b!6731878 (=> (not res!2754085) (not e!4066813))))

(assert (=> b!6731878 (= res!2754085 (not lt!2437926))))

(declare-fun b!6731879 () Bool)

(assert (=> b!6731879 (= e!4066815 (= (head!13546 s!2326) (c!1248231 r!7292)))))

(declare-fun b!6731880 () Bool)

(declare-fun res!2754083 () Bool)

(assert (=> b!6731880 (=> res!2754083 e!4066810)))

(assert (=> b!6731880 (= res!2754083 (not (isEmpty!38186 (tail!12631 s!2326))))))

(declare-fun b!6731881 () Bool)

(assert (=> b!6731881 (= e!4066814 (not lt!2437926))))

(declare-fun bm!608049 () Bool)

(assert (=> bm!608049 (= call!608054 (isEmpty!38186 s!2326))))

(assert (= (and d!2115133 c!1248362) b!6731875))

(assert (= (and d!2115133 (not c!1248362)) b!6731877))

(assert (= (and d!2115133 c!1248363) b!6731869))

(assert (= (and d!2115133 (not c!1248363)) b!6731874))

(assert (= (and b!6731874 c!1248361) b!6731881))

(assert (= (and b!6731874 (not c!1248361)) b!6731871))

(assert (= (and b!6731871 (not res!2754087)) b!6731876))

(assert (= (and b!6731876 res!2754088) b!6731868))

(assert (= (and b!6731868 res!2754090) b!6731870))

(assert (= (and b!6731870 res!2754089) b!6731879))

(assert (= (and b!6731876 (not res!2754086)) b!6731878))

(assert (= (and b!6731878 res!2754085) b!6731873))

(assert (= (and b!6731873 (not res!2754084)) b!6731880))

(assert (= (and b!6731880 (not res!2754083)) b!6731872))

(assert (= (or b!6731869 b!6731868 b!6731873) bm!608049))

(declare-fun m!7490254 () Bool)

(assert (=> b!6731870 m!7490254))

(assert (=> b!6731870 m!7490254))

(declare-fun m!7490256 () Bool)

(assert (=> b!6731870 m!7490256))

(declare-fun m!7490258 () Bool)

(assert (=> b!6731879 m!7490258))

(declare-fun m!7490260 () Bool)

(assert (=> b!6731875 m!7490260))

(assert (=> b!6731877 m!7490258))

(assert (=> b!6731877 m!7490258))

(declare-fun m!7490262 () Bool)

(assert (=> b!6731877 m!7490262))

(assert (=> b!6731877 m!7490254))

(assert (=> b!6731877 m!7490262))

(assert (=> b!6731877 m!7490254))

(declare-fun m!7490264 () Bool)

(assert (=> b!6731877 m!7490264))

(assert (=> d!2115133 m!7489974))

(assert (=> d!2115133 m!7490018))

(assert (=> b!6731880 m!7490254))

(assert (=> b!6731880 m!7490254))

(assert (=> b!6731880 m!7490256))

(assert (=> b!6731872 m!7490258))

(assert (=> bm!608049 m!7489974))

(assert (=> b!6731451 d!2115133))

(declare-fun d!2115145 () Bool)

(assert (=> d!2115145 (= (matchR!8742 r!7292 s!2326) (matchRSpec!3660 r!7292 s!2326))))

(declare-fun lt!2437935 () Unit!159809)

(declare-fun choose!50169 (Regex!16559 List!65978) Unit!159809)

(assert (=> d!2115145 (= lt!2437935 (choose!50169 r!7292 s!2326))))

(assert (=> d!2115145 (validRegex!8295 r!7292)))

(assert (=> d!2115145 (= (mainMatchTheorem!3660 r!7292 s!2326) lt!2437935)))

(declare-fun bs!1790283 () Bool)

(assert (= bs!1790283 d!2115145))

(assert (=> bs!1790283 m!7490012))

(assert (=> bs!1790283 m!7490010))

(declare-fun m!7490266 () Bool)

(assert (=> bs!1790283 m!7490266))

(assert (=> bs!1790283 m!7490018))

(assert (=> b!6731451 d!2115145))

(declare-fun bm!608062 () Bool)

(declare-fun call!608071 () List!65976)

(declare-fun call!608072 () List!65976)

(assert (=> bm!608062 (= call!608071 call!608072)))

(declare-fun d!2115147 () Bool)

(declare-fun c!1248383 () Bool)

(assert (=> d!2115147 (= c!1248383 (and ((_ is ElementMatch!16559) r!7292) (= (c!1248231 r!7292) (h!72302 s!2326))))))

(declare-fun e!4066857 () (InoxSet Context!11886))

(assert (=> d!2115147 (= (derivationStepZipperDown!1787 r!7292 (Context!11887 Nil!65852) (h!72302 s!2326)) e!4066857)))

(declare-fun b!6731952 () Bool)

(declare-fun e!4066854 () (InoxSet Context!11886))

(declare-fun e!4066855 () (InoxSet Context!11886))

(assert (=> b!6731952 (= e!4066854 e!4066855)))

(declare-fun c!1248380 () Bool)

(assert (=> b!6731952 (= c!1248380 ((_ is Concat!25404) r!7292))))

(declare-fun b!6731953 () Bool)

(declare-fun call!608068 () (InoxSet Context!11886))

(declare-fun call!608069 () (InoxSet Context!11886))

(assert (=> b!6731953 (= e!4066854 ((_ map or) call!608068 call!608069))))

(declare-fun b!6731954 () Bool)

(declare-fun e!4066852 () (InoxSet Context!11886))

(declare-fun call!608067 () (InoxSet Context!11886))

(assert (=> b!6731954 (= e!4066852 ((_ map or) call!608067 call!608068))))

(declare-fun bm!608063 () Bool)

(assert (=> bm!608063 (= call!608069 call!608067)))

(declare-fun b!6731955 () Bool)

(declare-fun e!4066856 () Bool)

(assert (=> b!6731955 (= e!4066856 (nullable!6546 (regOne!33630 r!7292)))))

(declare-fun b!6731956 () Bool)

(declare-fun call!608070 () (InoxSet Context!11886))

(assert (=> b!6731956 (= e!4066855 call!608070)))

(declare-fun c!1248381 () Bool)

(declare-fun bm!608064 () Bool)

(assert (=> bm!608064 (= call!608068 (derivationStepZipperDown!1787 (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292)) (ite c!1248381 (Context!11887 Nil!65852) (Context!11887 call!608072)) (h!72302 s!2326)))))

(declare-fun b!6731957 () Bool)

(assert (=> b!6731957 (= e!4066857 e!4066852)))

(assert (=> b!6731957 (= c!1248381 ((_ is Union!16559) r!7292))))

(declare-fun b!6731958 () Bool)

(declare-fun e!4066853 () (InoxSet Context!11886))

(assert (=> b!6731958 (= e!4066853 ((as const (Array Context!11886 Bool)) false))))

(declare-fun c!1248384 () Bool)

(declare-fun bm!608065 () Bool)

(declare-fun $colon$colon!2376 (List!65976 Regex!16559) List!65976)

(assert (=> bm!608065 (= call!608072 ($colon$colon!2376 (exprs!6443 (Context!11887 Nil!65852)) (ite (or c!1248384 c!1248380) (regTwo!33630 r!7292) r!7292)))))

(declare-fun b!6731959 () Bool)

(assert (=> b!6731959 (= e!4066857 (store ((as const (Array Context!11886 Bool)) false) (Context!11887 Nil!65852) true))))

(declare-fun bm!608066 () Bool)

(assert (=> bm!608066 (= call!608070 call!608069)))

(declare-fun bm!608067 () Bool)

(assert (=> bm!608067 (= call!608067 (derivationStepZipperDown!1787 (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292)))) (ite (or c!1248381 c!1248384) (Context!11887 Nil!65852) (Context!11887 call!608071)) (h!72302 s!2326)))))

(declare-fun b!6731960 () Bool)

(assert (=> b!6731960 (= c!1248384 e!4066856)))

(declare-fun res!2754115 () Bool)

(assert (=> b!6731960 (=> (not res!2754115) (not e!4066856))))

(assert (=> b!6731960 (= res!2754115 ((_ is Concat!25404) r!7292))))

(assert (=> b!6731960 (= e!4066852 e!4066854)))

(declare-fun b!6731961 () Bool)

(assert (=> b!6731961 (= e!4066853 call!608070)))

(declare-fun b!6731962 () Bool)

(declare-fun c!1248382 () Bool)

(assert (=> b!6731962 (= c!1248382 ((_ is Star!16559) r!7292))))

(assert (=> b!6731962 (= e!4066855 e!4066853)))

(assert (= (and d!2115147 c!1248383) b!6731959))

(assert (= (and d!2115147 (not c!1248383)) b!6731957))

(assert (= (and b!6731957 c!1248381) b!6731954))

(assert (= (and b!6731957 (not c!1248381)) b!6731960))

(assert (= (and b!6731960 res!2754115) b!6731955))

(assert (= (and b!6731960 c!1248384) b!6731953))

(assert (= (and b!6731960 (not c!1248384)) b!6731952))

(assert (= (and b!6731952 c!1248380) b!6731956))

(assert (= (and b!6731952 (not c!1248380)) b!6731962))

(assert (= (and b!6731962 c!1248382) b!6731961))

(assert (= (and b!6731962 (not c!1248382)) b!6731958))

(assert (= (or b!6731956 b!6731961) bm!608062))

(assert (= (or b!6731956 b!6731961) bm!608066))

(assert (= (or b!6731953 bm!608062) bm!608065))

(assert (= (or b!6731953 bm!608066) bm!608063))

(assert (= (or b!6731954 b!6731953) bm!608064))

(assert (= (or b!6731954 bm!608063) bm!608067))

(declare-fun m!7490298 () Bool)

(assert (=> bm!608067 m!7490298))

(declare-fun m!7490300 () Bool)

(assert (=> bm!608065 m!7490300))

(declare-fun m!7490302 () Bool)

(assert (=> bm!608064 m!7490302))

(declare-fun m!7490304 () Bool)

(assert (=> b!6731959 m!7490304))

(declare-fun m!7490306 () Bool)

(assert (=> b!6731955 m!7490306))

(assert (=> b!6731449 d!2115147))

(declare-fun b!6731985 () Bool)

(declare-fun e!4066870 () (InoxSet Context!11886))

(declare-fun call!608073 () (InoxSet Context!11886))

(assert (=> b!6731985 (= e!4066870 call!608073)))

(declare-fun b!6731986 () Bool)

(declare-fun e!4066869 () (InoxSet Context!11886))

(assert (=> b!6731986 (= e!4066869 e!4066870)))

(declare-fun c!1248385 () Bool)

(assert (=> b!6731986 (= c!1248385 ((_ is Cons!65852) (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852)))))))

(declare-fun d!2115153 () Bool)

(declare-fun c!1248386 () Bool)

(declare-fun e!4066868 () Bool)

(assert (=> d!2115153 (= c!1248386 e!4066868)))

(declare-fun res!2754116 () Bool)

(assert (=> d!2115153 (=> (not res!2754116) (not e!4066868))))

(assert (=> d!2115153 (= res!2754116 ((_ is Cons!65852) (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852)))))))

(assert (=> d!2115153 (= (derivationStepZipperUp!1713 (Context!11887 (Cons!65852 r!7292 Nil!65852)) (h!72302 s!2326)) e!4066869)))

(declare-fun b!6731987 () Bool)

(assert (=> b!6731987 (= e!4066870 ((as const (Array Context!11886 Bool)) false))))

(declare-fun b!6731988 () Bool)

(assert (=> b!6731988 (= e!4066868 (nullable!6546 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))))))

(declare-fun bm!608068 () Bool)

(assert (=> bm!608068 (= call!608073 (derivationStepZipperDown!1787 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852)))) (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (h!72302 s!2326)))))

(declare-fun b!6731989 () Bool)

(assert (=> b!6731989 (= e!4066869 ((_ map or) call!608073 (derivationStepZipperUp!1713 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (h!72302 s!2326))))))

(assert (= (and d!2115153 res!2754116) b!6731988))

(assert (= (and d!2115153 c!1248386) b!6731989))

(assert (= (and d!2115153 (not c!1248386)) b!6731986))

(assert (= (and b!6731986 c!1248385) b!6731985))

(assert (= (and b!6731986 (not c!1248385)) b!6731987))

(assert (= (or b!6731989 b!6731985) bm!608068))

(declare-fun m!7490308 () Bool)

(assert (=> b!6731988 m!7490308))

(declare-fun m!7490310 () Bool)

(assert (=> bm!608068 m!7490310))

(declare-fun m!7490312 () Bool)

(assert (=> b!6731989 m!7490312))

(assert (=> b!6731449 d!2115153))

(declare-fun bs!1790292 () Bool)

(declare-fun d!2115155 () Bool)

(assert (= bs!1790292 (and d!2115155 b!6731459)))

(declare-fun lambda!377891 () Int)

(assert (=> bs!1790292 (= lambda!377891 lambda!377833)))

(assert (=> d!2115155 true))

(assert (=> d!2115155 (= (derivationStepZipper!2503 z!1189 (h!72302 s!2326)) (flatMap!2040 z!1189 lambda!377891))))

(declare-fun bs!1790293 () Bool)

(assert (= bs!1790293 d!2115155))

(declare-fun m!7490318 () Bool)

(assert (=> bs!1790293 m!7490318))

(assert (=> b!6731449 d!2115155))

(declare-fun d!2115161 () Bool)

(assert (=> d!2115161 (= (isEmpty!38185 (t!379666 zl!343)) ((_ is Nil!65853) (t!379666 zl!343)))))

(assert (=> b!6731439 d!2115161))

(declare-fun d!2115163 () Bool)

(declare-fun c!1248391 () Bool)

(assert (=> d!2115163 (= c!1248391 (isEmpty!38186 s!2326))))

(declare-fun e!4066883 () Bool)

(assert (=> d!2115163 (= (matchZipper!2545 lt!2437868 s!2326) e!4066883)))

(declare-fun b!6732014 () Bool)

(declare-fun nullableZipper!2274 ((InoxSet Context!11886)) Bool)

(assert (=> b!6732014 (= e!4066883 (nullableZipper!2274 lt!2437868))))

(declare-fun b!6732015 () Bool)

(assert (=> b!6732015 (= e!4066883 (matchZipper!2545 (derivationStepZipper!2503 lt!2437868 (head!13546 s!2326)) (tail!12631 s!2326)))))

(assert (= (and d!2115163 c!1248391) b!6732014))

(assert (= (and d!2115163 (not c!1248391)) b!6732015))

(assert (=> d!2115163 m!7489974))

(declare-fun m!7490320 () Bool)

(assert (=> b!6732014 m!7490320))

(assert (=> b!6732015 m!7490258))

(assert (=> b!6732015 m!7490258))

(declare-fun m!7490322 () Bool)

(assert (=> b!6732015 m!7490322))

(assert (=> b!6732015 m!7490254))

(assert (=> b!6732015 m!7490322))

(assert (=> b!6732015 m!7490254))

(declare-fun m!7490324 () Bool)

(assert (=> b!6732015 m!7490324))

(assert (=> b!6731450 d!2115163))

(declare-fun d!2115165 () Bool)

(declare-fun c!1248392 () Bool)

(assert (=> d!2115165 (= c!1248392 (isEmpty!38186 (t!379667 s!2326)))))

(declare-fun e!4066884 () Bool)

(assert (=> d!2115165 (= (matchZipper!2545 (derivationStepZipper!2503 lt!2437868 (h!72302 s!2326)) (t!379667 s!2326)) e!4066884)))

(declare-fun b!6732016 () Bool)

(assert (=> b!6732016 (= e!4066884 (nullableZipper!2274 (derivationStepZipper!2503 lt!2437868 (h!72302 s!2326))))))

(declare-fun b!6732017 () Bool)

(assert (=> b!6732017 (= e!4066884 (matchZipper!2545 (derivationStepZipper!2503 (derivationStepZipper!2503 lt!2437868 (h!72302 s!2326)) (head!13546 (t!379667 s!2326))) (tail!12631 (t!379667 s!2326))))))

(assert (= (and d!2115165 c!1248392) b!6732016))

(assert (= (and d!2115165 (not c!1248392)) b!6732017))

(declare-fun m!7490326 () Bool)

(assert (=> d!2115165 m!7490326))

(assert (=> b!6732016 m!7490006))

(declare-fun m!7490328 () Bool)

(assert (=> b!6732016 m!7490328))

(declare-fun m!7490330 () Bool)

(assert (=> b!6732017 m!7490330))

(assert (=> b!6732017 m!7490006))

(assert (=> b!6732017 m!7490330))

(declare-fun m!7490332 () Bool)

(assert (=> b!6732017 m!7490332))

(declare-fun m!7490334 () Bool)

(assert (=> b!6732017 m!7490334))

(assert (=> b!6732017 m!7490332))

(assert (=> b!6732017 m!7490334))

(declare-fun m!7490336 () Bool)

(assert (=> b!6732017 m!7490336))

(assert (=> b!6731450 d!2115165))

(declare-fun bs!1790294 () Bool)

(declare-fun d!2115167 () Bool)

(assert (= bs!1790294 (and d!2115167 b!6731459)))

(declare-fun lambda!377892 () Int)

(assert (=> bs!1790294 (= lambda!377892 lambda!377833)))

(declare-fun bs!1790295 () Bool)

(assert (= bs!1790295 (and d!2115167 d!2115155)))

(assert (=> bs!1790295 (= lambda!377892 lambda!377891)))

(assert (=> d!2115167 true))

(assert (=> d!2115167 (= (derivationStepZipper!2503 lt!2437868 (h!72302 s!2326)) (flatMap!2040 lt!2437868 lambda!377892))))

(declare-fun bs!1790296 () Bool)

(assert (= bs!1790296 d!2115167))

(declare-fun m!7490338 () Bool)

(assert (=> bs!1790296 m!7490338))

(assert (=> b!6731450 d!2115167))

(declare-fun d!2115169 () Bool)

(declare-fun isEmpty!38190 (Option!16446) Bool)

(assert (=> d!2115169 (= (isDefined!13149 (findConcatSeparation!2860 (reg!16888 r!7292) r!7292 Nil!65854 s!2326 s!2326)) (not (isEmpty!38190 (findConcatSeparation!2860 (reg!16888 r!7292) r!7292 Nil!65854 s!2326 s!2326))))))

(declare-fun bs!1790297 () Bool)

(assert (= bs!1790297 d!2115169))

(assert (=> bs!1790297 m!7489984))

(declare-fun m!7490340 () Bool)

(assert (=> bs!1790297 m!7490340))

(assert (=> b!6731448 d!2115169))

(declare-fun bs!1790298 () Bool)

(declare-fun d!2115171 () Bool)

(assert (= bs!1790298 (and d!2115171 b!6731448)))

(declare-fun lambda!377897 () Int)

(assert (=> bs!1790298 (not (= lambda!377897 lambda!377832))))

(assert (=> bs!1790298 (not (= lambda!377897 lambda!377831))))

(assert (=> bs!1790298 (= lambda!377897 lambda!377830)))

(declare-fun bs!1790299 () Bool)

(assert (= bs!1790299 (and d!2115171 b!6731816)))

(assert (=> bs!1790299 (not (= lambda!377897 lambda!377876))))

(declare-fun bs!1790300 () Bool)

(assert (= bs!1790300 (and d!2115171 b!6731824)))

(assert (=> bs!1790300 (not (= lambda!377897 lambda!377878))))

(assert (=> d!2115171 true))

(assert (=> d!2115171 true))

(assert (=> d!2115171 true))

(declare-fun bs!1790301 () Bool)

(assert (= bs!1790301 d!2115171))

(declare-fun lambda!377898 () Int)

(assert (=> bs!1790301 (not (= lambda!377898 lambda!377897))))

(assert (=> bs!1790298 (= lambda!377898 lambda!377832)))

(assert (=> bs!1790298 (not (= lambda!377898 lambda!377831))))

(assert (=> bs!1790298 (not (= lambda!377898 lambda!377830))))

(assert (=> bs!1790299 (not (= lambda!377898 lambda!377876))))

(assert (=> bs!1790300 (= (and (= (reg!16888 r!7292) (regOne!33630 r!7292)) (= r!7292 (regTwo!33630 r!7292))) (= lambda!377898 lambda!377878))))

(assert (=> d!2115171 true))

(assert (=> d!2115171 true))

(assert (=> d!2115171 true))

(assert (=> d!2115171 (= (Exists!3627 lambda!377897) (Exists!3627 lambda!377898))))

(declare-fun lt!2437947 () Unit!159809)

(declare-fun choose!50173 (Regex!16559 Regex!16559 List!65978) Unit!159809)

(assert (=> d!2115171 (= lt!2437947 (choose!50173 (reg!16888 r!7292) r!7292 s!2326))))

(assert (=> d!2115171 (validRegex!8295 (reg!16888 r!7292))))

(assert (=> d!2115171 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2154 (reg!16888 r!7292) r!7292 s!2326) lt!2437947)))

(declare-fun m!7490342 () Bool)

(assert (=> bs!1790301 m!7490342))

(declare-fun m!7490344 () Bool)

(assert (=> bs!1790301 m!7490344))

(declare-fun m!7490346 () Bool)

(assert (=> bs!1790301 m!7490346))

(declare-fun m!7490348 () Bool)

(assert (=> bs!1790301 m!7490348))

(assert (=> b!6731448 d!2115171))

(declare-fun d!2115173 () Bool)

(declare-fun choose!50174 (Int) Bool)

(assert (=> d!2115173 (= (Exists!3627 lambda!377830) (choose!50174 lambda!377830))))

(declare-fun bs!1790302 () Bool)

(assert (= bs!1790302 d!2115173))

(declare-fun m!7490350 () Bool)

(assert (=> bs!1790302 m!7490350))

(assert (=> b!6731448 d!2115173))

(declare-fun d!2115175 () Bool)

(assert (=> d!2115175 (= (isEmpty!38186 s!2326) ((_ is Nil!65854) s!2326))))

(assert (=> b!6731448 d!2115175))

(declare-fun d!2115177 () Bool)

(assert (=> d!2115177 (= (Exists!3627 lambda!377831) (choose!50174 lambda!377831))))

(declare-fun bs!1790303 () Bool)

(assert (= bs!1790303 d!2115177))

(declare-fun m!7490352 () Bool)

(assert (=> bs!1790303 m!7490352))

(assert (=> b!6731448 d!2115177))

(declare-fun d!2115179 () Bool)

(assert (=> d!2115179 (= (Exists!3627 lambda!377832) (choose!50174 lambda!377832))))

(declare-fun bs!1790304 () Bool)

(assert (= bs!1790304 d!2115179))

(declare-fun m!7490354 () Bool)

(assert (=> bs!1790304 m!7490354))

(assert (=> b!6731448 d!2115179))

(declare-fun bs!1790305 () Bool)

(declare-fun d!2115181 () Bool)

(assert (= bs!1790305 (and d!2115181 d!2115171)))

(declare-fun lambda!377903 () Int)

(assert (=> bs!1790305 (= (= (Star!16559 (reg!16888 r!7292)) r!7292) (= lambda!377903 lambda!377897))))

(declare-fun bs!1790306 () Bool)

(assert (= bs!1790306 (and d!2115181 b!6731448)))

(assert (=> bs!1790306 (not (= lambda!377903 lambda!377832))))

(assert (=> bs!1790306 (not (= lambda!377903 lambda!377831))))

(assert (=> bs!1790306 (= (= (Star!16559 (reg!16888 r!7292)) r!7292) (= lambda!377903 lambda!377830))))

(declare-fun bs!1790307 () Bool)

(assert (= bs!1790307 (and d!2115181 b!6731816)))

(assert (=> bs!1790307 (not (= lambda!377903 lambda!377876))))

(assert (=> bs!1790305 (not (= lambda!377903 lambda!377898))))

(declare-fun bs!1790308 () Bool)

(assert (= bs!1790308 (and d!2115181 b!6731824)))

(assert (=> bs!1790308 (not (= lambda!377903 lambda!377878))))

(assert (=> d!2115181 true))

(assert (=> d!2115181 true))

(declare-fun lambda!377904 () Int)

(assert (=> bs!1790305 (not (= lambda!377904 lambda!377897))))

(assert (=> bs!1790306 (not (= lambda!377904 lambda!377832))))

(assert (=> bs!1790306 (= (= (Star!16559 (reg!16888 r!7292)) r!7292) (= lambda!377904 lambda!377831))))

(assert (=> bs!1790306 (not (= lambda!377904 lambda!377830))))

(assert (=> bs!1790307 (= (= (Star!16559 (reg!16888 r!7292)) r!7292) (= lambda!377904 lambda!377876))))

(assert (=> bs!1790305 (not (= lambda!377904 lambda!377898))))

(declare-fun bs!1790309 () Bool)

(assert (= bs!1790309 d!2115181))

(assert (=> bs!1790309 (not (= lambda!377904 lambda!377903))))

(assert (=> bs!1790308 (not (= lambda!377904 lambda!377878))))

(assert (=> d!2115181 true))

(assert (=> d!2115181 true))

(assert (=> d!2115181 (= (Exists!3627 lambda!377903) (Exists!3627 lambda!377904))))

(declare-fun lt!2437950 () Unit!159809)

(declare-fun choose!50177 (Regex!16559 List!65978) Unit!159809)

(assert (=> d!2115181 (= lt!2437950 (choose!50177 (reg!16888 r!7292) s!2326))))

(assert (=> d!2115181 (validRegex!8295 (reg!16888 r!7292))))

(assert (=> d!2115181 (= (lemmaExistCutMatchRandMatchRSpecEquivalentStar!718 (reg!16888 r!7292) s!2326) lt!2437950)))

(declare-fun m!7490356 () Bool)

(assert (=> bs!1790309 m!7490356))

(declare-fun m!7490358 () Bool)

(assert (=> bs!1790309 m!7490358))

(declare-fun m!7490360 () Bool)

(assert (=> bs!1790309 m!7490360))

(assert (=> bs!1790309 m!7490348))

(assert (=> b!6731448 d!2115181))

(declare-fun b!6732054 () Bool)

(declare-fun e!4066903 () Bool)

(assert (=> b!6732054 (= e!4066903 (matchR!8742 r!7292 s!2326))))

(declare-fun b!6732055 () Bool)

(declare-fun e!4066904 () Bool)

(declare-fun lt!2437959 () Option!16446)

(assert (=> b!6732055 (= e!4066904 (not (isDefined!13149 lt!2437959)))))

(declare-fun d!2115183 () Bool)

(assert (=> d!2115183 e!4066904))

(declare-fun res!2754149 () Bool)

(assert (=> d!2115183 (=> res!2754149 e!4066904)))

(declare-fun e!4066905 () Bool)

(assert (=> d!2115183 (= res!2754149 e!4066905)))

(declare-fun res!2754145 () Bool)

(assert (=> d!2115183 (=> (not res!2754145) (not e!4066905))))

(assert (=> d!2115183 (= res!2754145 (isDefined!13149 lt!2437959))))

(declare-fun e!4066906 () Option!16446)

(assert (=> d!2115183 (= lt!2437959 e!4066906)))

(declare-fun c!1248398 () Bool)

(assert (=> d!2115183 (= c!1248398 e!4066903)))

(declare-fun res!2754148 () Bool)

(assert (=> d!2115183 (=> (not res!2754148) (not e!4066903))))

(assert (=> d!2115183 (= res!2754148 (matchR!8742 (reg!16888 r!7292) Nil!65854))))

(assert (=> d!2115183 (validRegex!8295 (reg!16888 r!7292))))

(assert (=> d!2115183 (= (findConcatSeparation!2860 (reg!16888 r!7292) r!7292 Nil!65854 s!2326 s!2326) lt!2437959)))

(declare-fun b!6732056 () Bool)

(declare-fun e!4066907 () Option!16446)

(assert (=> b!6732056 (= e!4066906 e!4066907)))

(declare-fun c!1248397 () Bool)

(assert (=> b!6732056 (= c!1248397 ((_ is Nil!65854) s!2326))))

(declare-fun b!6732057 () Bool)

(assert (=> b!6732057 (= e!4066907 None!16445)))

(declare-fun b!6732058 () Bool)

(assert (=> b!6732058 (= e!4066906 (Some!16445 (tuple2!67069 Nil!65854 s!2326)))))

(declare-fun b!6732059 () Bool)

(declare-fun lt!2437958 () Unit!159809)

(declare-fun lt!2437957 () Unit!159809)

(assert (=> b!6732059 (= lt!2437958 lt!2437957)))

(declare-fun ++!14715 (List!65978 List!65978) List!65978)

(assert (=> b!6732059 (= (++!14715 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854)) (t!379667 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2688 (List!65978 C!33388 List!65978 List!65978) Unit!159809)

(assert (=> b!6732059 (= lt!2437957 (lemmaMoveElementToOtherListKeepsConcatEq!2688 Nil!65854 (h!72302 s!2326) (t!379667 s!2326) s!2326))))

(assert (=> b!6732059 (= e!4066907 (findConcatSeparation!2860 (reg!16888 r!7292) r!7292 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854)) (t!379667 s!2326) s!2326))))

(declare-fun b!6732060 () Bool)

(declare-fun get!22910 (Option!16446) tuple2!67068)

(assert (=> b!6732060 (= e!4066905 (= (++!14715 (_1!36837 (get!22910 lt!2437959)) (_2!36837 (get!22910 lt!2437959))) s!2326))))

(declare-fun b!6732061 () Bool)

(declare-fun res!2754147 () Bool)

(assert (=> b!6732061 (=> (not res!2754147) (not e!4066905))))

(assert (=> b!6732061 (= res!2754147 (matchR!8742 r!7292 (_2!36837 (get!22910 lt!2437959))))))

(declare-fun b!6732062 () Bool)

(declare-fun res!2754146 () Bool)

(assert (=> b!6732062 (=> (not res!2754146) (not e!4066905))))

(assert (=> b!6732062 (= res!2754146 (matchR!8742 (reg!16888 r!7292) (_1!36837 (get!22910 lt!2437959))))))

(assert (= (and d!2115183 res!2754148) b!6732054))

(assert (= (and d!2115183 c!1248398) b!6732058))

(assert (= (and d!2115183 (not c!1248398)) b!6732056))

(assert (= (and b!6732056 c!1248397) b!6732057))

(assert (= (and b!6732056 (not c!1248397)) b!6732059))

(assert (= (and d!2115183 res!2754145) b!6732062))

(assert (= (and b!6732062 res!2754146) b!6732061))

(assert (= (and b!6732061 res!2754147) b!6732060))

(assert (= (and d!2115183 (not res!2754149)) b!6732055))

(assert (=> b!6732054 m!7490012))

(declare-fun m!7490362 () Bool)

(assert (=> b!6732061 m!7490362))

(declare-fun m!7490364 () Bool)

(assert (=> b!6732061 m!7490364))

(assert (=> b!6732060 m!7490362))

(declare-fun m!7490366 () Bool)

(assert (=> b!6732060 m!7490366))

(declare-fun m!7490368 () Bool)

(assert (=> d!2115183 m!7490368))

(declare-fun m!7490370 () Bool)

(assert (=> d!2115183 m!7490370))

(assert (=> d!2115183 m!7490348))

(assert (=> b!6732062 m!7490362))

(declare-fun m!7490372 () Bool)

(assert (=> b!6732062 m!7490372))

(declare-fun m!7490374 () Bool)

(assert (=> b!6732059 m!7490374))

(assert (=> b!6732059 m!7490374))

(declare-fun m!7490376 () Bool)

(assert (=> b!6732059 m!7490376))

(declare-fun m!7490378 () Bool)

(assert (=> b!6732059 m!7490378))

(assert (=> b!6732059 m!7490374))

(declare-fun m!7490380 () Bool)

(assert (=> b!6732059 m!7490380))

(assert (=> b!6732055 m!7490368))

(assert (=> b!6731448 d!2115183))

(declare-fun bs!1790310 () Bool)

(declare-fun d!2115185 () Bool)

(assert (= bs!1790310 (and d!2115185 d!2115171)))

(declare-fun lambda!377907 () Int)

(assert (=> bs!1790310 (= lambda!377907 lambda!377897)))

(declare-fun bs!1790311 () Bool)

(assert (= bs!1790311 (and d!2115185 b!6731448)))

(assert (=> bs!1790311 (not (= lambda!377907 lambda!377832))))

(declare-fun bs!1790312 () Bool)

(assert (= bs!1790312 (and d!2115185 d!2115181)))

(assert (=> bs!1790312 (not (= lambda!377907 lambda!377904))))

(assert (=> bs!1790311 (not (= lambda!377907 lambda!377831))))

(assert (=> bs!1790311 (= lambda!377907 lambda!377830)))

(declare-fun bs!1790313 () Bool)

(assert (= bs!1790313 (and d!2115185 b!6731816)))

(assert (=> bs!1790313 (not (= lambda!377907 lambda!377876))))

(assert (=> bs!1790310 (not (= lambda!377907 lambda!377898))))

(assert (=> bs!1790312 (= (= r!7292 (Star!16559 (reg!16888 r!7292))) (= lambda!377907 lambda!377903))))

(declare-fun bs!1790314 () Bool)

(assert (= bs!1790314 (and d!2115185 b!6731824)))

(assert (=> bs!1790314 (not (= lambda!377907 lambda!377878))))

(assert (=> d!2115185 true))

(assert (=> d!2115185 true))

(assert (=> d!2115185 true))

(assert (=> d!2115185 (= (isDefined!13149 (findConcatSeparation!2860 (reg!16888 r!7292) r!7292 Nil!65854 s!2326 s!2326)) (Exists!3627 lambda!377907))))

(declare-fun lt!2437962 () Unit!159809)

(declare-fun choose!50178 (Regex!16559 Regex!16559 List!65978) Unit!159809)

(assert (=> d!2115185 (= lt!2437962 (choose!50178 (reg!16888 r!7292) r!7292 s!2326))))

(assert (=> d!2115185 (validRegex!8295 (reg!16888 r!7292))))

(assert (=> d!2115185 (= (lemmaFindConcatSeparationEquivalentToExists!2624 (reg!16888 r!7292) r!7292 s!2326) lt!2437962)))

(declare-fun bs!1790315 () Bool)

(assert (= bs!1790315 d!2115185))

(assert (=> bs!1790315 m!7489984))

(assert (=> bs!1790315 m!7489986))

(declare-fun m!7490382 () Bool)

(assert (=> bs!1790315 m!7490382))

(declare-fun m!7490384 () Bool)

(assert (=> bs!1790315 m!7490384))

(assert (=> bs!1790315 m!7489984))

(assert (=> bs!1790315 m!7490348))

(assert (=> b!6731448 d!2115185))

(declare-fun bm!608069 () Bool)

(declare-fun call!608078 () List!65976)

(declare-fun call!608079 () List!65976)

(assert (=> bm!608069 (= call!608078 call!608079)))

(declare-fun d!2115187 () Bool)

(declare-fun c!1248402 () Bool)

(assert (=> d!2115187 (= c!1248402 (and ((_ is ElementMatch!16559) (reg!16888 r!7292)) (= (c!1248231 (reg!16888 r!7292)) (h!72302 s!2326))))))

(declare-fun e!4066915 () (InoxSet Context!11886))

(assert (=> d!2115187 (= (derivationStepZipperDown!1787 (reg!16888 r!7292) lt!2437873 (h!72302 s!2326)) e!4066915)))

(declare-fun b!6732067 () Bool)

(declare-fun e!4066912 () (InoxSet Context!11886))

(declare-fun e!4066913 () (InoxSet Context!11886))

(assert (=> b!6732067 (= e!4066912 e!4066913)))

(declare-fun c!1248399 () Bool)

(assert (=> b!6732067 (= c!1248399 ((_ is Concat!25404) (reg!16888 r!7292)))))

(declare-fun b!6732068 () Bool)

(declare-fun call!608075 () (InoxSet Context!11886))

(declare-fun call!608076 () (InoxSet Context!11886))

(assert (=> b!6732068 (= e!4066912 ((_ map or) call!608075 call!608076))))

(declare-fun b!6732069 () Bool)

(declare-fun e!4066910 () (InoxSet Context!11886))

(declare-fun call!608074 () (InoxSet Context!11886))

(assert (=> b!6732069 (= e!4066910 ((_ map or) call!608074 call!608075))))

(declare-fun bm!608070 () Bool)

(assert (=> bm!608070 (= call!608076 call!608074)))

(declare-fun b!6732070 () Bool)

(declare-fun e!4066914 () Bool)

(assert (=> b!6732070 (= e!4066914 (nullable!6546 (regOne!33630 (reg!16888 r!7292))))))

(declare-fun b!6732071 () Bool)

(declare-fun call!608077 () (InoxSet Context!11886))

(assert (=> b!6732071 (= e!4066913 call!608077)))

(declare-fun c!1248400 () Bool)

(declare-fun bm!608071 () Bool)

(assert (=> bm!608071 (= call!608075 (derivationStepZipperDown!1787 (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292))) (ite c!1248400 lt!2437873 (Context!11887 call!608079)) (h!72302 s!2326)))))

(declare-fun b!6732072 () Bool)

(assert (=> b!6732072 (= e!4066915 e!4066910)))

(assert (=> b!6732072 (= c!1248400 ((_ is Union!16559) (reg!16888 r!7292)))))

(declare-fun b!6732073 () Bool)

(declare-fun e!4066911 () (InoxSet Context!11886))

(assert (=> b!6732073 (= e!4066911 ((as const (Array Context!11886 Bool)) false))))

(declare-fun bm!608072 () Bool)

(declare-fun c!1248403 () Bool)

(assert (=> bm!608072 (= call!608079 ($colon$colon!2376 (exprs!6443 lt!2437873) (ite (or c!1248403 c!1248399) (regTwo!33630 (reg!16888 r!7292)) (reg!16888 r!7292))))))

(declare-fun b!6732074 () Bool)

(assert (=> b!6732074 (= e!4066915 (store ((as const (Array Context!11886 Bool)) false) lt!2437873 true))))

(declare-fun bm!608073 () Bool)

(assert (=> bm!608073 (= call!608077 call!608076)))

(declare-fun bm!608074 () Bool)

(assert (=> bm!608074 (= call!608074 (derivationStepZipperDown!1787 (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292))))) (ite (or c!1248400 c!1248403) lt!2437873 (Context!11887 call!608078)) (h!72302 s!2326)))))

(declare-fun b!6732075 () Bool)

(assert (=> b!6732075 (= c!1248403 e!4066914)))

(declare-fun res!2754154 () Bool)

(assert (=> b!6732075 (=> (not res!2754154) (not e!4066914))))

(assert (=> b!6732075 (= res!2754154 ((_ is Concat!25404) (reg!16888 r!7292)))))

(assert (=> b!6732075 (= e!4066910 e!4066912)))

(declare-fun b!6732076 () Bool)

(assert (=> b!6732076 (= e!4066911 call!608077)))

(declare-fun b!6732077 () Bool)

(declare-fun c!1248401 () Bool)

(assert (=> b!6732077 (= c!1248401 ((_ is Star!16559) (reg!16888 r!7292)))))

(assert (=> b!6732077 (= e!4066913 e!4066911)))

(assert (= (and d!2115187 c!1248402) b!6732074))

(assert (= (and d!2115187 (not c!1248402)) b!6732072))

(assert (= (and b!6732072 c!1248400) b!6732069))

(assert (= (and b!6732072 (not c!1248400)) b!6732075))

(assert (= (and b!6732075 res!2754154) b!6732070))

(assert (= (and b!6732075 c!1248403) b!6732068))

(assert (= (and b!6732075 (not c!1248403)) b!6732067))

(assert (= (and b!6732067 c!1248399) b!6732071))

(assert (= (and b!6732067 (not c!1248399)) b!6732077))

(assert (= (and b!6732077 c!1248401) b!6732076))

(assert (= (and b!6732077 (not c!1248401)) b!6732073))

(assert (= (or b!6732071 b!6732076) bm!608069))

(assert (= (or b!6732071 b!6732076) bm!608073))

(assert (= (or b!6732068 bm!608069) bm!608072))

(assert (= (or b!6732068 bm!608073) bm!608070))

(assert (= (or b!6732069 b!6732068) bm!608071))

(assert (= (or b!6732069 bm!608070) bm!608074))

(declare-fun m!7490386 () Bool)

(assert (=> bm!608074 m!7490386))

(declare-fun m!7490388 () Bool)

(assert (=> bm!608072 m!7490388))

(declare-fun m!7490390 () Bool)

(assert (=> bm!608071 m!7490390))

(declare-fun m!7490392 () Bool)

(assert (=> b!6732074 m!7490392))

(declare-fun m!7490394 () Bool)

(assert (=> b!6732070 m!7490394))

(assert (=> b!6731458 d!2115187))

(declare-fun d!2115189 () Bool)

(assert (=> d!2115189 (= (flatMap!2040 lt!2437868 lambda!377833) (choose!50166 lt!2437868 lambda!377833))))

(declare-fun bs!1790316 () Bool)

(assert (= bs!1790316 d!2115189))

(declare-fun m!7490396 () Bool)

(assert (=> bs!1790316 m!7490396))

(assert (=> b!6731458 d!2115189))

(declare-fun b!6732078 () Bool)

(declare-fun e!4066918 () (InoxSet Context!11886))

(declare-fun call!608080 () (InoxSet Context!11886))

(assert (=> b!6732078 (= e!4066918 call!608080)))

(declare-fun b!6732079 () Bool)

(declare-fun e!4066917 () (InoxSet Context!11886))

(assert (=> b!6732079 (= e!4066917 e!4066918)))

(declare-fun c!1248404 () Bool)

(assert (=> b!6732079 (= c!1248404 ((_ is Cons!65852) (exprs!6443 lt!2437877)))))

(declare-fun d!2115191 () Bool)

(declare-fun c!1248405 () Bool)

(declare-fun e!4066916 () Bool)

(assert (=> d!2115191 (= c!1248405 e!4066916)))

(declare-fun res!2754155 () Bool)

(assert (=> d!2115191 (=> (not res!2754155) (not e!4066916))))

(assert (=> d!2115191 (= res!2754155 ((_ is Cons!65852) (exprs!6443 lt!2437877)))))

(assert (=> d!2115191 (= (derivationStepZipperUp!1713 lt!2437877 (h!72302 s!2326)) e!4066917)))

(declare-fun b!6732080 () Bool)

(assert (=> b!6732080 (= e!4066918 ((as const (Array Context!11886 Bool)) false))))

(declare-fun b!6732081 () Bool)

(assert (=> b!6732081 (= e!4066916 (nullable!6546 (h!72300 (exprs!6443 lt!2437877))))))

(declare-fun bm!608075 () Bool)

(assert (=> bm!608075 (= call!608080 (derivationStepZipperDown!1787 (h!72300 (exprs!6443 lt!2437877)) (Context!11887 (t!379665 (exprs!6443 lt!2437877))) (h!72302 s!2326)))))

(declare-fun b!6732082 () Bool)

(assert (=> b!6732082 (= e!4066917 ((_ map or) call!608080 (derivationStepZipperUp!1713 (Context!11887 (t!379665 (exprs!6443 lt!2437877))) (h!72302 s!2326))))))

(assert (= (and d!2115191 res!2754155) b!6732081))

(assert (= (and d!2115191 c!1248405) b!6732082))

(assert (= (and d!2115191 (not c!1248405)) b!6732079))

(assert (= (and b!6732079 c!1248404) b!6732078))

(assert (= (and b!6732079 (not c!1248404)) b!6732080))

(assert (= (or b!6732082 b!6732078) bm!608075))

(declare-fun m!7490398 () Bool)

(assert (=> b!6732081 m!7490398))

(declare-fun m!7490400 () Bool)

(assert (=> bm!608075 m!7490400))

(declare-fun m!7490402 () Bool)

(assert (=> b!6732082 m!7490402))

(assert (=> b!6731458 d!2115191))

(declare-fun d!2115193 () Bool)

(assert (=> d!2115193 (= (flatMap!2040 lt!2437868 lambda!377833) (dynLambda!26268 lambda!377833 lt!2437877))))

(declare-fun lt!2437963 () Unit!159809)

(assert (=> d!2115193 (= lt!2437963 (choose!50167 lt!2437868 lt!2437877 lambda!377833))))

(assert (=> d!2115193 (= lt!2437868 (store ((as const (Array Context!11886 Bool)) false) lt!2437877 true))))

(assert (=> d!2115193 (= (lemmaFlatMapOnSingletonSet!1566 lt!2437868 lt!2437877 lambda!377833) lt!2437963)))

(declare-fun b_lambda!253461 () Bool)

(assert (=> (not b_lambda!253461) (not d!2115193)))

(declare-fun bs!1790317 () Bool)

(assert (= bs!1790317 d!2115193))

(assert (=> bs!1790317 m!7489950))

(declare-fun m!7490404 () Bool)

(assert (=> bs!1790317 m!7490404))

(declare-fun m!7490406 () Bool)

(assert (=> bs!1790317 m!7490406))

(assert (=> bs!1790317 m!7489948))

(assert (=> b!6731458 d!2115193))

(declare-fun d!2115195 () Bool)

(declare-fun lt!2437966 () Regex!16559)

(assert (=> d!2115195 (validRegex!8295 lt!2437966)))

(assert (=> d!2115195 (= lt!2437966 (generalisedUnion!2403 (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853))))))

(assert (=> d!2115195 (= (unfocusZipper!2301 (Cons!65853 lt!2437877 Nil!65853)) lt!2437966)))

(declare-fun bs!1790318 () Bool)

(assert (= bs!1790318 d!2115195))

(declare-fun m!7490408 () Bool)

(assert (=> bs!1790318 m!7490408))

(declare-fun m!7490410 () Bool)

(assert (=> bs!1790318 m!7490410))

(assert (=> bs!1790318 m!7490410))

(declare-fun m!7490412 () Bool)

(assert (=> bs!1790318 m!7490412))

(assert (=> b!6731438 d!2115195))

(declare-fun d!2115197 () Bool)

(declare-fun lt!2437967 () Regex!16559)

(assert (=> d!2115197 (validRegex!8295 lt!2437967)))

(assert (=> d!2115197 (= lt!2437967 (generalisedUnion!2403 (unfocusZipperList!1980 zl!343)))))

(assert (=> d!2115197 (= (unfocusZipper!2301 zl!343) lt!2437967)))

(declare-fun bs!1790319 () Bool)

(assert (= bs!1790319 d!2115197))

(declare-fun m!7490414 () Bool)

(assert (=> bs!1790319 m!7490414))

(assert (=> bs!1790319 m!7489964))

(assert (=> bs!1790319 m!7489964))

(assert (=> bs!1790319 m!7489966))

(assert (=> b!6731447 d!2115197))

(declare-fun bs!1790320 () Bool)

(declare-fun d!2115199 () Bool)

(assert (= bs!1790320 (and d!2115199 d!2115063)))

(declare-fun lambda!377910 () Int)

(assert (=> bs!1790320 (= lambda!377910 lambda!377836)))

(declare-fun bs!1790321 () Bool)

(assert (= bs!1790321 (and d!2115199 d!2115069)))

(assert (=> bs!1790321 (= lambda!377910 lambda!377845)))

(declare-fun bs!1790322 () Bool)

(assert (= bs!1790322 (and d!2115199 d!2115077)))

(assert (=> bs!1790322 (= lambda!377910 lambda!377854)))

(declare-fun bs!1790323 () Bool)

(assert (= bs!1790323 (and d!2115199 d!2115081)))

(assert (=> bs!1790323 (= lambda!377910 lambda!377855)))

(declare-fun b!6732103 () Bool)

(declare-fun e!4066935 () Bool)

(declare-fun lt!2437970 () Regex!16559)

(declare-fun isEmptyExpr!1925 (Regex!16559) Bool)

(assert (=> b!6732103 (= e!4066935 (isEmptyExpr!1925 lt!2437970))))

(declare-fun b!6732104 () Bool)

(declare-fun e!4066932 () Regex!16559)

(assert (=> b!6732104 (= e!4066932 (Concat!25404 (h!72300 (exprs!6443 (h!72301 zl!343))) (generalisedConcat!2156 (t!379665 (exprs!6443 (h!72301 zl!343))))))))

(declare-fun b!6732105 () Bool)

(declare-fun e!4066933 () Regex!16559)

(assert (=> b!6732105 (= e!4066933 (h!72300 (exprs!6443 (h!72301 zl!343))))))

(declare-fun b!6732106 () Bool)

(declare-fun e!4066934 () Bool)

(assert (=> b!6732106 (= e!4066934 (= lt!2437970 (head!13545 (exprs!6443 (h!72301 zl!343)))))))

(declare-fun b!6732107 () Bool)

(declare-fun e!4066936 () Bool)

(assert (=> b!6732107 (= e!4066936 (isEmpty!38188 (t!379665 (exprs!6443 (h!72301 zl!343)))))))

(declare-fun b!6732109 () Bool)

(declare-fun isConcat!1448 (Regex!16559) Bool)

(assert (=> b!6732109 (= e!4066934 (isConcat!1448 lt!2437970))))

(declare-fun b!6732110 () Bool)

(assert (=> b!6732110 (= e!4066932 EmptyExpr!16559)))

(declare-fun b!6732111 () Bool)

(assert (=> b!6732111 (= e!4066933 e!4066932)))

(declare-fun c!1248417 () Bool)

(assert (=> b!6732111 (= c!1248417 ((_ is Cons!65852) (exprs!6443 (h!72301 zl!343))))))

(declare-fun b!6732112 () Bool)

(declare-fun e!4066931 () Bool)

(assert (=> b!6732112 (= e!4066931 e!4066935)))

(declare-fun c!1248414 () Bool)

(assert (=> b!6732112 (= c!1248414 (isEmpty!38188 (exprs!6443 (h!72301 zl!343))))))

(assert (=> d!2115199 e!4066931))

(declare-fun res!2754161 () Bool)

(assert (=> d!2115199 (=> (not res!2754161) (not e!4066931))))

(assert (=> d!2115199 (= res!2754161 (validRegex!8295 lt!2437970))))

(assert (=> d!2115199 (= lt!2437970 e!4066933)))

(declare-fun c!1248415 () Bool)

(assert (=> d!2115199 (= c!1248415 e!4066936)))

(declare-fun res!2754160 () Bool)

(assert (=> d!2115199 (=> (not res!2754160) (not e!4066936))))

(assert (=> d!2115199 (= res!2754160 ((_ is Cons!65852) (exprs!6443 (h!72301 zl!343))))))

(assert (=> d!2115199 (forall!15759 (exprs!6443 (h!72301 zl!343)) lambda!377910)))

(assert (=> d!2115199 (= (generalisedConcat!2156 (exprs!6443 (h!72301 zl!343))) lt!2437970)))

(declare-fun b!6732108 () Bool)

(assert (=> b!6732108 (= e!4066935 e!4066934)))

(declare-fun c!1248416 () Bool)

(assert (=> b!6732108 (= c!1248416 (isEmpty!38188 (tail!12630 (exprs!6443 (h!72301 zl!343)))))))

(assert (= (and d!2115199 res!2754160) b!6732107))

(assert (= (and d!2115199 c!1248415) b!6732105))

(assert (= (and d!2115199 (not c!1248415)) b!6732111))

(assert (= (and b!6732111 c!1248417) b!6732104))

(assert (= (and b!6732111 (not c!1248417)) b!6732110))

(assert (= (and d!2115199 res!2754161) b!6732112))

(assert (= (and b!6732112 c!1248414) b!6732103))

(assert (= (and b!6732112 (not c!1248414)) b!6732108))

(assert (= (and b!6732108 c!1248416) b!6732106))

(assert (= (and b!6732108 (not c!1248416)) b!6732109))

(declare-fun m!7490416 () Bool)

(assert (=> b!6732112 m!7490416))

(declare-fun m!7490418 () Bool)

(assert (=> d!2115199 m!7490418))

(declare-fun m!7490420 () Bool)

(assert (=> d!2115199 m!7490420))

(declare-fun m!7490422 () Bool)

(assert (=> b!6732103 m!7490422))

(declare-fun m!7490424 () Bool)

(assert (=> b!6732108 m!7490424))

(assert (=> b!6732108 m!7490424))

(declare-fun m!7490426 () Bool)

(assert (=> b!6732108 m!7490426))

(declare-fun m!7490428 () Bool)

(assert (=> b!6732104 m!7490428))

(declare-fun m!7490430 () Bool)

(assert (=> b!6732107 m!7490430))

(declare-fun m!7490432 () Bool)

(assert (=> b!6732109 m!7490432))

(declare-fun m!7490434 () Bool)

(assert (=> b!6732106 m!7490434))

(assert (=> b!6731445 d!2115199))

(declare-fun d!2115201 () Bool)

(declare-fun res!2754172 () Bool)

(declare-fun e!4066955 () Bool)

(assert (=> d!2115201 (=> res!2754172 e!4066955)))

(assert (=> d!2115201 (= res!2754172 ((_ is ElementMatch!16559) r!7292))))

(assert (=> d!2115201 (= (validRegex!8295 r!7292) e!4066955)))

(declare-fun b!6732131 () Bool)

(declare-fun res!2754176 () Bool)

(declare-fun e!4066956 () Bool)

(assert (=> b!6732131 (=> (not res!2754176) (not e!4066956))))

(declare-fun call!608087 () Bool)

(assert (=> b!6732131 (= res!2754176 call!608087)))

(declare-fun e!4066954 () Bool)

(assert (=> b!6732131 (= e!4066954 e!4066956)))

(declare-fun c!1248423 () Bool)

(declare-fun call!608089 () Bool)

(declare-fun c!1248422 () Bool)

(declare-fun bm!608082 () Bool)

(assert (=> bm!608082 (= call!608089 (validRegex!8295 (ite c!1248423 (reg!16888 r!7292) (ite c!1248422 (regOne!33631 r!7292) (regOne!33630 r!7292)))))))

(declare-fun bm!608083 () Bool)

(declare-fun call!608088 () Bool)

(assert (=> bm!608083 (= call!608088 (validRegex!8295 (ite c!1248422 (regTwo!33631 r!7292) (regTwo!33630 r!7292))))))

(declare-fun b!6732132 () Bool)

(declare-fun e!4066951 () Bool)

(assert (=> b!6732132 (= e!4066951 call!608089)))

(declare-fun b!6732133 () Bool)

(declare-fun e!4066957 () Bool)

(assert (=> b!6732133 (= e!4066955 e!4066957)))

(assert (=> b!6732133 (= c!1248423 ((_ is Star!16559) r!7292))))

(declare-fun b!6732134 () Bool)

(assert (=> b!6732134 (= e!4066957 e!4066954)))

(assert (=> b!6732134 (= c!1248422 ((_ is Union!16559) r!7292))))

(declare-fun bm!608084 () Bool)

(assert (=> bm!608084 (= call!608087 call!608089)))

(declare-fun b!6732135 () Bool)

(declare-fun e!4066953 () Bool)

(declare-fun e!4066952 () Bool)

(assert (=> b!6732135 (= e!4066953 e!4066952)))

(declare-fun res!2754174 () Bool)

(assert (=> b!6732135 (=> (not res!2754174) (not e!4066952))))

(assert (=> b!6732135 (= res!2754174 call!608087)))

(declare-fun b!6732136 () Bool)

(declare-fun res!2754175 () Bool)

(assert (=> b!6732136 (=> res!2754175 e!4066953)))

(assert (=> b!6732136 (= res!2754175 (not ((_ is Concat!25404) r!7292)))))

(assert (=> b!6732136 (= e!4066954 e!4066953)))

(declare-fun b!6732137 () Bool)

(assert (=> b!6732137 (= e!4066957 e!4066951)))

(declare-fun res!2754173 () Bool)

(assert (=> b!6732137 (= res!2754173 (not (nullable!6546 (reg!16888 r!7292))))))

(assert (=> b!6732137 (=> (not res!2754173) (not e!4066951))))

(declare-fun b!6732138 () Bool)

(assert (=> b!6732138 (= e!4066952 call!608088)))

(declare-fun b!6732139 () Bool)

(assert (=> b!6732139 (= e!4066956 call!608088)))

(assert (= (and d!2115201 (not res!2754172)) b!6732133))

(assert (= (and b!6732133 c!1248423) b!6732137))

(assert (= (and b!6732133 (not c!1248423)) b!6732134))

(assert (= (and b!6732137 res!2754173) b!6732132))

(assert (= (and b!6732134 c!1248422) b!6732131))

(assert (= (and b!6732134 (not c!1248422)) b!6732136))

(assert (= (and b!6732131 res!2754176) b!6732139))

(assert (= (and b!6732136 (not res!2754175)) b!6732135))

(assert (= (and b!6732135 res!2754174) b!6732138))

(assert (= (or b!6732139 b!6732138) bm!608083))

(assert (= (or b!6732131 b!6732135) bm!608084))

(assert (= (or b!6732132 bm!608084) bm!608082))

(declare-fun m!7490436 () Bool)

(assert (=> bm!608082 m!7490436))

(declare-fun m!7490438 () Bool)

(assert (=> bm!608083 m!7490438))

(declare-fun m!7490440 () Bool)

(assert (=> b!6732137 m!7490440))

(assert (=> start!652820 d!2115201))

(declare-fun bs!1790324 () Bool)

(declare-fun d!2115203 () Bool)

(assert (= bs!1790324 (and d!2115203 d!2115077)))

(declare-fun lambda!377911 () Int)

(assert (=> bs!1790324 (= lambda!377911 lambda!377854)))

(declare-fun bs!1790325 () Bool)

(assert (= bs!1790325 (and d!2115203 d!2115081)))

(assert (=> bs!1790325 (= lambda!377911 lambda!377855)))

(declare-fun bs!1790326 () Bool)

(assert (= bs!1790326 (and d!2115203 d!2115063)))

(assert (=> bs!1790326 (= lambda!377911 lambda!377836)))

(declare-fun bs!1790327 () Bool)

(assert (= bs!1790327 (and d!2115203 d!2115069)))

(assert (=> bs!1790327 (= lambda!377911 lambda!377845)))

(declare-fun bs!1790328 () Bool)

(assert (= bs!1790328 (and d!2115203 d!2115199)))

(assert (=> bs!1790328 (= lambda!377911 lambda!377910)))

(assert (=> d!2115203 (= (inv!84644 (h!72301 zl!343)) (forall!15759 (exprs!6443 (h!72301 zl!343)) lambda!377911))))

(declare-fun bs!1790329 () Bool)

(assert (= bs!1790329 d!2115203))

(declare-fun m!7490442 () Bool)

(assert (=> bs!1790329 m!7490442))

(assert (=> b!6731454 d!2115203))

(declare-fun b!6732144 () Bool)

(declare-fun e!4066960 () Bool)

(declare-fun tp!1845714 () Bool)

(assert (=> b!6732144 (= e!4066960 (and tp_is_empty!42371 tp!1845714))))

(assert (=> b!6731437 (= tp!1845644 e!4066960)))

(assert (= (and b!6731437 ((_ is Cons!65854) (t!379667 s!2326))) b!6732144))

(declare-fun e!4066963 () Bool)

(assert (=> b!6731453 (= tp!1845646 e!4066963)))

(declare-fun b!6732156 () Bool)

(declare-fun tp!1845727 () Bool)

(declare-fun tp!1845729 () Bool)

(assert (=> b!6732156 (= e!4066963 (and tp!1845727 tp!1845729))))

(declare-fun b!6732158 () Bool)

(declare-fun tp!1845728 () Bool)

(declare-fun tp!1845726 () Bool)

(assert (=> b!6732158 (= e!4066963 (and tp!1845728 tp!1845726))))

(declare-fun b!6732157 () Bool)

(declare-fun tp!1845725 () Bool)

(assert (=> b!6732157 (= e!4066963 tp!1845725)))

(declare-fun b!6732155 () Bool)

(assert (=> b!6732155 (= e!4066963 tp_is_empty!42371)))

(assert (= (and b!6731453 ((_ is ElementMatch!16559) (regOne!33630 r!7292))) b!6732155))

(assert (= (and b!6731453 ((_ is Concat!25404) (regOne!33630 r!7292))) b!6732156))

(assert (= (and b!6731453 ((_ is Star!16559) (regOne!33630 r!7292))) b!6732157))

(assert (= (and b!6731453 ((_ is Union!16559) (regOne!33630 r!7292))) b!6732158))

(declare-fun e!4066964 () Bool)

(assert (=> b!6731453 (= tp!1845650 e!4066964)))

(declare-fun b!6732160 () Bool)

(declare-fun tp!1845732 () Bool)

(declare-fun tp!1845734 () Bool)

(assert (=> b!6732160 (= e!4066964 (and tp!1845732 tp!1845734))))

(declare-fun b!6732162 () Bool)

(declare-fun tp!1845733 () Bool)

(declare-fun tp!1845731 () Bool)

(assert (=> b!6732162 (= e!4066964 (and tp!1845733 tp!1845731))))

(declare-fun b!6732161 () Bool)

(declare-fun tp!1845730 () Bool)

(assert (=> b!6732161 (= e!4066964 tp!1845730)))

(declare-fun b!6732159 () Bool)

(assert (=> b!6732159 (= e!4066964 tp_is_empty!42371)))

(assert (= (and b!6731453 ((_ is ElementMatch!16559) (regTwo!33630 r!7292))) b!6732159))

(assert (= (and b!6731453 ((_ is Concat!25404) (regTwo!33630 r!7292))) b!6732160))

(assert (= (and b!6731453 ((_ is Star!16559) (regTwo!33630 r!7292))) b!6732161))

(assert (= (and b!6731453 ((_ is Union!16559) (regTwo!33630 r!7292))) b!6732162))

(declare-fun b!6732167 () Bool)

(declare-fun e!4066967 () Bool)

(declare-fun tp!1845739 () Bool)

(declare-fun tp!1845740 () Bool)

(assert (=> b!6732167 (= e!4066967 (and tp!1845739 tp!1845740))))

(assert (=> b!6731443 (= tp!1845651 e!4066967)))

(assert (= (and b!6731443 ((_ is Cons!65852) (exprs!6443 (h!72301 zl!343)))) b!6732167))

(declare-fun condSetEmpty!45927 () Bool)

(assert (=> setNonEmpty!45921 (= condSetEmpty!45927 (= setRest!45921 ((as const (Array Context!11886 Bool)) false)))))

(declare-fun setRes!45927 () Bool)

(assert (=> setNonEmpty!45921 (= tp!1845645 setRes!45927)))

(declare-fun setIsEmpty!45927 () Bool)

(assert (=> setIsEmpty!45927 setRes!45927))

(declare-fun setElem!45927 () Context!11886)

(declare-fun tp!1845745 () Bool)

(declare-fun e!4066970 () Bool)

(declare-fun setNonEmpty!45927 () Bool)

(assert (=> setNonEmpty!45927 (= setRes!45927 (and tp!1845745 (inv!84644 setElem!45927) e!4066970))))

(declare-fun setRest!45927 () (InoxSet Context!11886))

(assert (=> setNonEmpty!45927 (= setRest!45921 ((_ map or) (store ((as const (Array Context!11886 Bool)) false) setElem!45927 true) setRest!45927))))

(declare-fun b!6732172 () Bool)

(declare-fun tp!1845746 () Bool)

(assert (=> b!6732172 (= e!4066970 tp!1845746)))

(assert (= (and setNonEmpty!45921 condSetEmpty!45927) setIsEmpty!45927))

(assert (= (and setNonEmpty!45921 (not condSetEmpty!45927)) setNonEmpty!45927))

(assert (= setNonEmpty!45927 b!6732172))

(declare-fun m!7490444 () Bool)

(assert (=> setNonEmpty!45927 m!7490444))

(declare-fun e!4066971 () Bool)

(assert (=> b!6731457 (= tp!1845648 e!4066971)))

(declare-fun b!6732174 () Bool)

(declare-fun tp!1845749 () Bool)

(declare-fun tp!1845751 () Bool)

(assert (=> b!6732174 (= e!4066971 (and tp!1845749 tp!1845751))))

(declare-fun b!6732176 () Bool)

(declare-fun tp!1845750 () Bool)

(declare-fun tp!1845748 () Bool)

(assert (=> b!6732176 (= e!4066971 (and tp!1845750 tp!1845748))))

(declare-fun b!6732175 () Bool)

(declare-fun tp!1845747 () Bool)

(assert (=> b!6732175 (= e!4066971 tp!1845747)))

(declare-fun b!6732173 () Bool)

(assert (=> b!6732173 (= e!4066971 tp_is_empty!42371)))

(assert (= (and b!6731457 ((_ is ElementMatch!16559) (regOne!33631 r!7292))) b!6732173))

(assert (= (and b!6731457 ((_ is Concat!25404) (regOne!33631 r!7292))) b!6732174))

(assert (= (and b!6731457 ((_ is Star!16559) (regOne!33631 r!7292))) b!6732175))

(assert (= (and b!6731457 ((_ is Union!16559) (regOne!33631 r!7292))) b!6732176))

(declare-fun e!4066972 () Bool)

(assert (=> b!6731457 (= tp!1845649 e!4066972)))

(declare-fun b!6732178 () Bool)

(declare-fun tp!1845754 () Bool)

(declare-fun tp!1845756 () Bool)

(assert (=> b!6732178 (= e!4066972 (and tp!1845754 tp!1845756))))

(declare-fun b!6732180 () Bool)

(declare-fun tp!1845755 () Bool)

(declare-fun tp!1845753 () Bool)

(assert (=> b!6732180 (= e!4066972 (and tp!1845755 tp!1845753))))

(declare-fun b!6732179 () Bool)

(declare-fun tp!1845752 () Bool)

(assert (=> b!6732179 (= e!4066972 tp!1845752)))

(declare-fun b!6732177 () Bool)

(assert (=> b!6732177 (= e!4066972 tp_is_empty!42371)))

(assert (= (and b!6731457 ((_ is ElementMatch!16559) (regTwo!33631 r!7292))) b!6732177))

(assert (= (and b!6731457 ((_ is Concat!25404) (regTwo!33631 r!7292))) b!6732178))

(assert (= (and b!6731457 ((_ is Star!16559) (regTwo!33631 r!7292))) b!6732179))

(assert (= (and b!6731457 ((_ is Union!16559) (regTwo!33631 r!7292))) b!6732180))

(declare-fun b!6732181 () Bool)

(declare-fun e!4066973 () Bool)

(declare-fun tp!1845757 () Bool)

(declare-fun tp!1845758 () Bool)

(assert (=> b!6732181 (= e!4066973 (and tp!1845757 tp!1845758))))

(assert (=> b!6731460 (= tp!1845653 e!4066973)))

(assert (= (and b!6731460 ((_ is Cons!65852) (exprs!6443 setElem!45921))) b!6732181))

(declare-fun e!4066974 () Bool)

(assert (=> b!6731444 (= tp!1845647 e!4066974)))

(declare-fun b!6732183 () Bool)

(declare-fun tp!1845761 () Bool)

(declare-fun tp!1845763 () Bool)

(assert (=> b!6732183 (= e!4066974 (and tp!1845761 tp!1845763))))

(declare-fun b!6732185 () Bool)

(declare-fun tp!1845762 () Bool)

(declare-fun tp!1845760 () Bool)

(assert (=> b!6732185 (= e!4066974 (and tp!1845762 tp!1845760))))

(declare-fun b!6732184 () Bool)

(declare-fun tp!1845759 () Bool)

(assert (=> b!6732184 (= e!4066974 tp!1845759)))

(declare-fun b!6732182 () Bool)

(assert (=> b!6732182 (= e!4066974 tp_is_empty!42371)))

(assert (= (and b!6731444 ((_ is ElementMatch!16559) (reg!16888 r!7292))) b!6732182))

(assert (= (and b!6731444 ((_ is Concat!25404) (reg!16888 r!7292))) b!6732183))

(assert (= (and b!6731444 ((_ is Star!16559) (reg!16888 r!7292))) b!6732184))

(assert (= (and b!6731444 ((_ is Union!16559) (reg!16888 r!7292))) b!6732185))

(declare-fun b!6732193 () Bool)

(declare-fun e!4066980 () Bool)

(declare-fun tp!1845768 () Bool)

(assert (=> b!6732193 (= e!4066980 tp!1845768)))

(declare-fun e!4066979 () Bool)

(declare-fun b!6732192 () Bool)

(declare-fun tp!1845769 () Bool)

(assert (=> b!6732192 (= e!4066979 (and (inv!84644 (h!72301 (t!379666 zl!343))) e!4066980 tp!1845769))))

(assert (=> b!6731454 (= tp!1845652 e!4066979)))

(assert (= b!6732192 b!6732193))

(assert (= (and b!6731454 ((_ is Cons!65853) (t!379666 zl!343))) b!6732192))

(declare-fun m!7490446 () Bool)

(assert (=> b!6732192 m!7490446))

(declare-fun b_lambda!253463 () Bool)

(assert (= b_lambda!253453 (or b!6731459 b_lambda!253463)))

(declare-fun bs!1790330 () Bool)

(declare-fun d!2115205 () Bool)

(assert (= bs!1790330 (and d!2115205 b!6731459)))

(assert (=> bs!1790330 (= (dynLambda!26268 lambda!377833 (h!72301 zl!343)) (derivationStepZipperUp!1713 (h!72301 zl!343) (h!72302 s!2326)))))

(assert (=> bs!1790330 m!7489994))

(assert (=> d!2115093 d!2115205))

(declare-fun b_lambda!253465 () Bool)

(assert (= b_lambda!253461 (or b!6731459 b_lambda!253465)))

(declare-fun bs!1790331 () Bool)

(declare-fun d!2115207 () Bool)

(assert (= bs!1790331 (and d!2115207 b!6731459)))

(assert (=> bs!1790331 (= (dynLambda!26268 lambda!377833 lt!2437877) (derivationStepZipperUp!1713 lt!2437877 (h!72302 s!2326)))))

(assert (=> bs!1790331 m!7489946))

(assert (=> d!2115193 d!2115207))

(check-sat (not b!6731680) (not b!6732176) (not b!6732185) (not b!6732107) (not b!6731571) (not b!6732055) (not d!2115193) (not b!6731574) (not b!6732061) (not b!6732104) (not bm!608083) (not bm!608075) (not d!2115077) (not d!2115181) (not b!6732157) (not b!6732160) (not b!6732137) (not b!6731566) (not b!6732108) (not b!6732174) (not bs!1790330) (not b!6732017) (not b!6732193) (not b!6732184) (not d!2115165) (not b!6731822) tp_is_empty!42371 (not b!6732081) (not b!6732060) (not bm!608065) (not b!6732144) (not b!6732054) (not b!6731988) (not b!6732109) (not b!6731872) (not b!6732179) (not d!2115173) (not d!2115163) (not d!2115167) (not b!6731989) (not bm!608046) (not bm!608068) (not b!6731875) (not b!6731870) (not bm!608045) (not b!6732070) (not d!2115195) (not b_lambda!253465) (not bm!608074) (not d!2115177) (not b!6731567) (not bm!608064) (not setNonEmpty!45927) (not b!6731955) (not d!2115155) (not b!6731877) (not b!6732062) (not b!6732014) (not d!2115083) (not b!6732156) (not d!2115197) (not bm!608067) (not b!6732167) (not d!2115203) (not b!6732183) (not b!6732161) (not b!6731879) (not d!2115189) (not b!6732172) (not b!6732162) (not d!2115093) (not bm!608072) (not bm!608082) (not b!6732015) (not d!2115171) (not b!6732082) (not d!2115199) (not b!6732192) (not bs!1790331) (not d!2115101) (not b!6731880) (not b!6732175) (not bm!608049) (not b!6732059) (not b!6732016) (not d!2115185) (not d!2115081) (not b!6731569) (not b_lambda!253463) (not b!6731575) (not b!6732178) (not b!6732181) (not b!6731710) (not bm!608014) (not b!6732106) (not d!2115133) (not d!2115169) (not d!2115179) (not b!6731818) (not b!6732158) (not b!6732103) (not b!6731623) (not b!6732112) (not b!6732180) (not b!6731568) (not d!2115145) (not d!2115183) (not d!2115069) (not b!6731681) (not bm!608071) (not d!2115063))
(check-sat)
(get-model)

(assert (=> d!2115133 d!2115175))

(assert (=> d!2115133 d!2115201))

(declare-fun b!6732500 () Bool)

(declare-fun e!4067162 () Bool)

(declare-fun lt!2437995 () List!65978)

(assert (=> b!6732500 (= e!4067162 (or (not (= (_2!36837 (get!22910 lt!2437959)) Nil!65854)) (= lt!2437995 (_1!36837 (get!22910 lt!2437959)))))))

(declare-fun b!6732499 () Bool)

(declare-fun res!2754299 () Bool)

(assert (=> b!6732499 (=> (not res!2754299) (not e!4067162))))

(declare-fun size!40608 (List!65978) Int)

(assert (=> b!6732499 (= res!2754299 (= (size!40608 lt!2437995) (+ (size!40608 (_1!36837 (get!22910 lt!2437959))) (size!40608 (_2!36837 (get!22910 lt!2437959))))))))

(declare-fun d!2115331 () Bool)

(assert (=> d!2115331 e!4067162))

(declare-fun res!2754300 () Bool)

(assert (=> d!2115331 (=> (not res!2754300) (not e!4067162))))

(declare-fun content!12788 (List!65978) (InoxSet C!33388))

(assert (=> d!2115331 (= res!2754300 (= (content!12788 lt!2437995) ((_ map or) (content!12788 (_1!36837 (get!22910 lt!2437959))) (content!12788 (_2!36837 (get!22910 lt!2437959))))))))

(declare-fun e!4067161 () List!65978)

(assert (=> d!2115331 (= lt!2437995 e!4067161)))

(declare-fun c!1248518 () Bool)

(assert (=> d!2115331 (= c!1248518 ((_ is Nil!65854) (_1!36837 (get!22910 lt!2437959))))))

(assert (=> d!2115331 (= (++!14715 (_1!36837 (get!22910 lt!2437959)) (_2!36837 (get!22910 lt!2437959))) lt!2437995)))

(declare-fun b!6732498 () Bool)

(assert (=> b!6732498 (= e!4067161 (Cons!65854 (h!72302 (_1!36837 (get!22910 lt!2437959))) (++!14715 (t!379667 (_1!36837 (get!22910 lt!2437959))) (_2!36837 (get!22910 lt!2437959)))))))

(declare-fun b!6732497 () Bool)

(assert (=> b!6732497 (= e!4067161 (_2!36837 (get!22910 lt!2437959)))))

(assert (= (and d!2115331 c!1248518) b!6732497))

(assert (= (and d!2115331 (not c!1248518)) b!6732498))

(assert (= (and d!2115331 res!2754300) b!6732499))

(assert (= (and b!6732499 res!2754299) b!6732500))

(declare-fun m!7490788 () Bool)

(assert (=> b!6732499 m!7490788))

(declare-fun m!7490790 () Bool)

(assert (=> b!6732499 m!7490790))

(declare-fun m!7490792 () Bool)

(assert (=> b!6732499 m!7490792))

(declare-fun m!7490794 () Bool)

(assert (=> d!2115331 m!7490794))

(declare-fun m!7490796 () Bool)

(assert (=> d!2115331 m!7490796))

(declare-fun m!7490798 () Bool)

(assert (=> d!2115331 m!7490798))

(declare-fun m!7490800 () Bool)

(assert (=> b!6732498 m!7490800))

(assert (=> b!6732060 d!2115331))

(declare-fun d!2115345 () Bool)

(assert (=> d!2115345 (= (get!22910 lt!2437959) (v!52645 lt!2437959))))

(assert (=> b!6732060 d!2115345))

(declare-fun d!2115347 () Bool)

(declare-fun c!1248519 () Bool)

(assert (=> d!2115347 (= c!1248519 (isEmpty!38186 (tail!12631 (t!379667 s!2326))))))

(declare-fun e!4067163 () Bool)

(assert (=> d!2115347 (= (matchZipper!2545 (derivationStepZipper!2503 (derivationStepZipper!2503 lt!2437868 (h!72302 s!2326)) (head!13546 (t!379667 s!2326))) (tail!12631 (t!379667 s!2326))) e!4067163)))

(declare-fun b!6732501 () Bool)

(assert (=> b!6732501 (= e!4067163 (nullableZipper!2274 (derivationStepZipper!2503 (derivationStepZipper!2503 lt!2437868 (h!72302 s!2326)) (head!13546 (t!379667 s!2326)))))))

(declare-fun b!6732502 () Bool)

(assert (=> b!6732502 (= e!4067163 (matchZipper!2545 (derivationStepZipper!2503 (derivationStepZipper!2503 (derivationStepZipper!2503 lt!2437868 (h!72302 s!2326)) (head!13546 (t!379667 s!2326))) (head!13546 (tail!12631 (t!379667 s!2326)))) (tail!12631 (tail!12631 (t!379667 s!2326)))))))

(assert (= (and d!2115347 c!1248519) b!6732501))

(assert (= (and d!2115347 (not c!1248519)) b!6732502))

(assert (=> d!2115347 m!7490334))

(declare-fun m!7490802 () Bool)

(assert (=> d!2115347 m!7490802))

(assert (=> b!6732501 m!7490332))

(declare-fun m!7490804 () Bool)

(assert (=> b!6732501 m!7490804))

(assert (=> b!6732502 m!7490334))

(declare-fun m!7490806 () Bool)

(assert (=> b!6732502 m!7490806))

(assert (=> b!6732502 m!7490332))

(assert (=> b!6732502 m!7490806))

(declare-fun m!7490808 () Bool)

(assert (=> b!6732502 m!7490808))

(assert (=> b!6732502 m!7490334))

(declare-fun m!7490810 () Bool)

(assert (=> b!6732502 m!7490810))

(assert (=> b!6732502 m!7490808))

(assert (=> b!6732502 m!7490810))

(declare-fun m!7490812 () Bool)

(assert (=> b!6732502 m!7490812))

(assert (=> b!6732017 d!2115347))

(declare-fun bs!1790428 () Bool)

(declare-fun d!2115349 () Bool)

(assert (= bs!1790428 (and d!2115349 b!6731459)))

(declare-fun lambda!377931 () Int)

(assert (=> bs!1790428 (= (= (head!13546 (t!379667 s!2326)) (h!72302 s!2326)) (= lambda!377931 lambda!377833))))

(declare-fun bs!1790429 () Bool)

(assert (= bs!1790429 (and d!2115349 d!2115155)))

(assert (=> bs!1790429 (= (= (head!13546 (t!379667 s!2326)) (h!72302 s!2326)) (= lambda!377931 lambda!377891))))

(declare-fun bs!1790430 () Bool)

(assert (= bs!1790430 (and d!2115349 d!2115167)))

(assert (=> bs!1790430 (= (= (head!13546 (t!379667 s!2326)) (h!72302 s!2326)) (= lambda!377931 lambda!377892))))

(assert (=> d!2115349 true))

(assert (=> d!2115349 (= (derivationStepZipper!2503 (derivationStepZipper!2503 lt!2437868 (h!72302 s!2326)) (head!13546 (t!379667 s!2326))) (flatMap!2040 (derivationStepZipper!2503 lt!2437868 (h!72302 s!2326)) lambda!377931))))

(declare-fun bs!1790431 () Bool)

(assert (= bs!1790431 d!2115349))

(assert (=> bs!1790431 m!7490006))

(declare-fun m!7490814 () Bool)

(assert (=> bs!1790431 m!7490814))

(assert (=> b!6732017 d!2115349))

(declare-fun d!2115351 () Bool)

(assert (=> d!2115351 (= (head!13546 (t!379667 s!2326)) (h!72302 (t!379667 s!2326)))))

(assert (=> b!6732017 d!2115351))

(declare-fun d!2115353 () Bool)

(assert (=> d!2115353 (= (tail!12631 (t!379667 s!2326)) (t!379667 (t!379667 s!2326)))))

(assert (=> b!6732017 d!2115353))

(declare-fun d!2115355 () Bool)

(declare-fun nullableFct!2460 (Regex!16559) Bool)

(assert (=> d!2115355 (= (nullable!6546 (regOne!33630 (reg!16888 r!7292))) (nullableFct!2460 (regOne!33630 (reg!16888 r!7292))))))

(declare-fun bs!1790432 () Bool)

(assert (= bs!1790432 d!2115355))

(declare-fun m!7490816 () Bool)

(assert (=> bs!1790432 m!7490816))

(assert (=> b!6732070 d!2115355))

(declare-fun d!2115357 () Bool)

(assert (=> d!2115357 (= (isEmpty!38188 (tail!12630 (unfocusZipperList!1980 zl!343))) ((_ is Nil!65852) (tail!12630 (unfocusZipperList!1980 zl!343))))))

(assert (=> b!6731568 d!2115357))

(declare-fun d!2115359 () Bool)

(assert (=> d!2115359 (= (tail!12630 (unfocusZipperList!1980 zl!343)) (t!379665 (unfocusZipperList!1980 zl!343)))))

(assert (=> b!6731568 d!2115359))

(declare-fun d!2115361 () Bool)

(assert (=> d!2115361 (= (head!13546 s!2326) (h!72302 s!2326))))

(assert (=> b!6731879 d!2115361))

(declare-fun d!2115363 () Bool)

(declare-fun res!2754309 () Bool)

(declare-fun e!4067170 () Bool)

(assert (=> d!2115363 (=> res!2754309 e!4067170)))

(assert (=> d!2115363 (= res!2754309 ((_ is Nil!65852) (exprs!6443 setElem!45921)))))

(assert (=> d!2115363 (= (forall!15759 (exprs!6443 setElem!45921) lambda!377836) e!4067170)))

(declare-fun b!6732511 () Bool)

(declare-fun e!4067171 () Bool)

(assert (=> b!6732511 (= e!4067170 e!4067171)))

(declare-fun res!2754310 () Bool)

(assert (=> b!6732511 (=> (not res!2754310) (not e!4067171))))

(declare-fun dynLambda!26270 (Int Regex!16559) Bool)

(assert (=> b!6732511 (= res!2754310 (dynLambda!26270 lambda!377836 (h!72300 (exprs!6443 setElem!45921))))))

(declare-fun b!6732512 () Bool)

(assert (=> b!6732512 (= e!4067171 (forall!15759 (t!379665 (exprs!6443 setElem!45921)) lambda!377836))))

(assert (= (and d!2115363 (not res!2754309)) b!6732511))

(assert (= (and b!6732511 res!2754310) b!6732512))

(declare-fun b_lambda!253479 () Bool)

(assert (=> (not b_lambda!253479) (not b!6732511)))

(declare-fun m!7490818 () Bool)

(assert (=> b!6732511 m!7490818))

(declare-fun m!7490820 () Bool)

(assert (=> b!6732512 m!7490820))

(assert (=> d!2115063 d!2115363))

(declare-fun bm!608153 () Bool)

(declare-fun call!608162 () List!65976)

(declare-fun call!608163 () List!65976)

(assert (=> bm!608153 (= call!608162 call!608163)))

(declare-fun d!2115365 () Bool)

(declare-fun c!1248523 () Bool)

(assert (=> d!2115365 (= c!1248523 (and ((_ is ElementMatch!16559) (h!72300 (exprs!6443 lt!2437877))) (= (c!1248231 (h!72300 (exprs!6443 lt!2437877))) (h!72302 s!2326))))))

(declare-fun e!4067177 () (InoxSet Context!11886))

(assert (=> d!2115365 (= (derivationStepZipperDown!1787 (h!72300 (exprs!6443 lt!2437877)) (Context!11887 (t!379665 (exprs!6443 lt!2437877))) (h!72302 s!2326)) e!4067177)))

(declare-fun b!6732513 () Bool)

(declare-fun e!4067174 () (InoxSet Context!11886))

(declare-fun e!4067175 () (InoxSet Context!11886))

(assert (=> b!6732513 (= e!4067174 e!4067175)))

(declare-fun c!1248520 () Bool)

(assert (=> b!6732513 (= c!1248520 ((_ is Concat!25404) (h!72300 (exprs!6443 lt!2437877))))))

(declare-fun b!6732514 () Bool)

(declare-fun call!608159 () (InoxSet Context!11886))

(declare-fun call!608160 () (InoxSet Context!11886))

(assert (=> b!6732514 (= e!4067174 ((_ map or) call!608159 call!608160))))

(declare-fun b!6732515 () Bool)

(declare-fun e!4067172 () (InoxSet Context!11886))

(declare-fun call!608158 () (InoxSet Context!11886))

(assert (=> b!6732515 (= e!4067172 ((_ map or) call!608158 call!608159))))

(declare-fun bm!608154 () Bool)

(assert (=> bm!608154 (= call!608160 call!608158)))

(declare-fun b!6732516 () Bool)

(declare-fun e!4067176 () Bool)

(assert (=> b!6732516 (= e!4067176 (nullable!6546 (regOne!33630 (h!72300 (exprs!6443 lt!2437877)))))))

(declare-fun b!6732517 () Bool)

(declare-fun call!608161 () (InoxSet Context!11886))

(assert (=> b!6732517 (= e!4067175 call!608161)))

(declare-fun bm!608155 () Bool)

(declare-fun c!1248521 () Bool)

(assert (=> bm!608155 (= call!608159 (derivationStepZipperDown!1787 (ite c!1248521 (regTwo!33631 (h!72300 (exprs!6443 lt!2437877))) (regOne!33630 (h!72300 (exprs!6443 lt!2437877)))) (ite c!1248521 (Context!11887 (t!379665 (exprs!6443 lt!2437877))) (Context!11887 call!608163)) (h!72302 s!2326)))))

(declare-fun b!6732518 () Bool)

(assert (=> b!6732518 (= e!4067177 e!4067172)))

(assert (=> b!6732518 (= c!1248521 ((_ is Union!16559) (h!72300 (exprs!6443 lt!2437877))))))

(declare-fun b!6732519 () Bool)

(declare-fun e!4067173 () (InoxSet Context!11886))

(assert (=> b!6732519 (= e!4067173 ((as const (Array Context!11886 Bool)) false))))

(declare-fun c!1248524 () Bool)

(declare-fun bm!608156 () Bool)

(assert (=> bm!608156 (= call!608163 ($colon$colon!2376 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 lt!2437877)))) (ite (or c!1248524 c!1248520) (regTwo!33630 (h!72300 (exprs!6443 lt!2437877))) (h!72300 (exprs!6443 lt!2437877)))))))

(declare-fun b!6732520 () Bool)

(assert (=> b!6732520 (= e!4067177 (store ((as const (Array Context!11886 Bool)) false) (Context!11887 (t!379665 (exprs!6443 lt!2437877))) true))))

(declare-fun bm!608157 () Bool)

(assert (=> bm!608157 (= call!608161 call!608160)))

(declare-fun bm!608158 () Bool)

(assert (=> bm!608158 (= call!608158 (derivationStepZipperDown!1787 (ite c!1248521 (regOne!33631 (h!72300 (exprs!6443 lt!2437877))) (ite c!1248524 (regTwo!33630 (h!72300 (exprs!6443 lt!2437877))) (ite c!1248520 (regOne!33630 (h!72300 (exprs!6443 lt!2437877))) (reg!16888 (h!72300 (exprs!6443 lt!2437877)))))) (ite (or c!1248521 c!1248524) (Context!11887 (t!379665 (exprs!6443 lt!2437877))) (Context!11887 call!608162)) (h!72302 s!2326)))))

(declare-fun b!6732521 () Bool)

(assert (=> b!6732521 (= c!1248524 e!4067176)))

(declare-fun res!2754311 () Bool)

(assert (=> b!6732521 (=> (not res!2754311) (not e!4067176))))

(assert (=> b!6732521 (= res!2754311 ((_ is Concat!25404) (h!72300 (exprs!6443 lt!2437877))))))

(assert (=> b!6732521 (= e!4067172 e!4067174)))

(declare-fun b!6732522 () Bool)

(assert (=> b!6732522 (= e!4067173 call!608161)))

(declare-fun b!6732523 () Bool)

(declare-fun c!1248522 () Bool)

(assert (=> b!6732523 (= c!1248522 ((_ is Star!16559) (h!72300 (exprs!6443 lt!2437877))))))

(assert (=> b!6732523 (= e!4067175 e!4067173)))

(assert (= (and d!2115365 c!1248523) b!6732520))

(assert (= (and d!2115365 (not c!1248523)) b!6732518))

(assert (= (and b!6732518 c!1248521) b!6732515))

(assert (= (and b!6732518 (not c!1248521)) b!6732521))

(assert (= (and b!6732521 res!2754311) b!6732516))

(assert (= (and b!6732521 c!1248524) b!6732514))

(assert (= (and b!6732521 (not c!1248524)) b!6732513))

(assert (= (and b!6732513 c!1248520) b!6732517))

(assert (= (and b!6732513 (not c!1248520)) b!6732523))

(assert (= (and b!6732523 c!1248522) b!6732522))

(assert (= (and b!6732523 (not c!1248522)) b!6732519))

(assert (= (or b!6732517 b!6732522) bm!608153))

(assert (= (or b!6732517 b!6732522) bm!608157))

(assert (= (or b!6732514 bm!608153) bm!608156))

(assert (= (or b!6732514 bm!608157) bm!608154))

(assert (= (or b!6732515 b!6732514) bm!608155))

(assert (= (or b!6732515 bm!608154) bm!608158))

(declare-fun m!7490822 () Bool)

(assert (=> bm!608158 m!7490822))

(declare-fun m!7490824 () Bool)

(assert (=> bm!608156 m!7490824))

(declare-fun m!7490826 () Bool)

(assert (=> bm!608155 m!7490826))

(declare-fun m!7490828 () Bool)

(assert (=> b!6732520 m!7490828))

(declare-fun m!7490830 () Bool)

(assert (=> b!6732516 m!7490830))

(assert (=> bm!608075 d!2115365))

(declare-fun d!2115367 () Bool)

(declare-fun c!1248527 () Bool)

(assert (=> d!2115367 (= c!1248527 ((_ is Nil!65853) lt!2437914))))

(declare-fun e!4067182 () (InoxSet Context!11886))

(assert (=> d!2115367 (= (content!12786 lt!2437914) e!4067182)))

(declare-fun b!6732532 () Bool)

(assert (=> b!6732532 (= e!4067182 ((as const (Array Context!11886 Bool)) false))))

(declare-fun b!6732533 () Bool)

(assert (=> b!6732533 (= e!4067182 ((_ map or) (store ((as const (Array Context!11886 Bool)) false) (h!72301 lt!2437914) true) (content!12786 (t!379666 lt!2437914))))))

(assert (= (and d!2115367 c!1248527) b!6732532))

(assert (= (and d!2115367 (not c!1248527)) b!6732533))

(declare-fun m!7490832 () Bool)

(assert (=> b!6732533 m!7490832))

(declare-fun m!7490834 () Bool)

(assert (=> b!6732533 m!7490834))

(assert (=> b!6731710 d!2115367))

(assert (=> b!6732054 d!2115133))

(declare-fun bs!1790442 () Bool)

(declare-fun b!6732535 () Bool)

(assert (= bs!1790442 (and b!6732535 d!2115171)))

(declare-fun lambda!377937 () Int)

(assert (=> bs!1790442 (not (= lambda!377937 lambda!377897))))

(declare-fun bs!1790443 () Bool)

(assert (= bs!1790443 (and b!6732535 b!6731448)))

(assert (=> bs!1790443 (not (= lambda!377937 lambda!377832))))

(declare-fun bs!1790444 () Bool)

(assert (= bs!1790444 (and b!6732535 d!2115181)))

(assert (=> bs!1790444 (= (and (= (reg!16888 (regOne!33631 r!7292)) (reg!16888 r!7292)) (= (regOne!33631 r!7292) (Star!16559 (reg!16888 r!7292)))) (= lambda!377937 lambda!377904))))

(assert (=> bs!1790443 (= (and (= (reg!16888 (regOne!33631 r!7292)) (reg!16888 r!7292)) (= (regOne!33631 r!7292) r!7292)) (= lambda!377937 lambda!377831))))

(assert (=> bs!1790443 (not (= lambda!377937 lambda!377830))))

(declare-fun bs!1790446 () Bool)

(assert (= bs!1790446 (and b!6732535 b!6731816)))

(assert (=> bs!1790446 (= (and (= (reg!16888 (regOne!33631 r!7292)) (reg!16888 r!7292)) (= (regOne!33631 r!7292) r!7292)) (= lambda!377937 lambda!377876))))

(assert (=> bs!1790442 (not (= lambda!377937 lambda!377898))))

(declare-fun bs!1790447 () Bool)

(assert (= bs!1790447 (and b!6732535 d!2115185)))

(assert (=> bs!1790447 (not (= lambda!377937 lambda!377907))))

(assert (=> bs!1790444 (not (= lambda!377937 lambda!377903))))

(declare-fun bs!1790448 () Bool)

(assert (= bs!1790448 (and b!6732535 b!6731824)))

(assert (=> bs!1790448 (not (= lambda!377937 lambda!377878))))

(assert (=> b!6732535 true))

(assert (=> b!6732535 true))

(declare-fun bs!1790449 () Bool)

(declare-fun b!6732543 () Bool)

(assert (= bs!1790449 (and b!6732543 d!2115171)))

(declare-fun lambda!377939 () Int)

(assert (=> bs!1790449 (not (= lambda!377939 lambda!377897))))

(declare-fun bs!1790450 () Bool)

(assert (= bs!1790450 (and b!6732543 b!6731448)))

(assert (=> bs!1790450 (= (and (= (regOne!33630 (regOne!33631 r!7292)) (reg!16888 r!7292)) (= (regTwo!33630 (regOne!33631 r!7292)) r!7292)) (= lambda!377939 lambda!377832))))

(declare-fun bs!1790451 () Bool)

(assert (= bs!1790451 (and b!6732543 d!2115181)))

(assert (=> bs!1790451 (not (= lambda!377939 lambda!377904))))

(assert (=> bs!1790450 (not (= lambda!377939 lambda!377831))))

(assert (=> bs!1790450 (not (= lambda!377939 lambda!377830))))

(declare-fun bs!1790452 () Bool)

(assert (= bs!1790452 (and b!6732543 b!6731816)))

(assert (=> bs!1790452 (not (= lambda!377939 lambda!377876))))

(declare-fun bs!1790453 () Bool)

(assert (= bs!1790453 (and b!6732543 b!6732535)))

(assert (=> bs!1790453 (not (= lambda!377939 lambda!377937))))

(assert (=> bs!1790449 (= (and (= (regOne!33630 (regOne!33631 r!7292)) (reg!16888 r!7292)) (= (regTwo!33630 (regOne!33631 r!7292)) r!7292)) (= lambda!377939 lambda!377898))))

(declare-fun bs!1790454 () Bool)

(assert (= bs!1790454 (and b!6732543 d!2115185)))

(assert (=> bs!1790454 (not (= lambda!377939 lambda!377907))))

(assert (=> bs!1790451 (not (= lambda!377939 lambda!377903))))

(declare-fun bs!1790455 () Bool)

(assert (= bs!1790455 (and b!6732543 b!6731824)))

(assert (=> bs!1790455 (= (and (= (regOne!33630 (regOne!33631 r!7292)) (regOne!33630 r!7292)) (= (regTwo!33630 (regOne!33631 r!7292)) (regTwo!33630 r!7292))) (= lambda!377939 lambda!377878))))

(assert (=> b!6732543 true))

(assert (=> b!6732543 true))

(declare-fun b!6732534 () Bool)

(declare-fun res!2754318 () Bool)

(declare-fun e!4067189 () Bool)

(assert (=> b!6732534 (=> res!2754318 e!4067189)))

(declare-fun call!608164 () Bool)

(assert (=> b!6732534 (= res!2754318 call!608164)))

(declare-fun e!4067185 () Bool)

(assert (=> b!6732534 (= e!4067185 e!4067189)))

(declare-fun call!608165 () Bool)

(assert (=> b!6732535 (= e!4067189 call!608165)))

(declare-fun b!6732536 () Bool)

(declare-fun c!1248528 () Bool)

(assert (=> b!6732536 (= c!1248528 ((_ is Union!16559) (regOne!33631 r!7292)))))

(declare-fun e!4067183 () Bool)

(declare-fun e!4067184 () Bool)

(assert (=> b!6732536 (= e!4067183 e!4067184)))

(declare-fun bm!608159 () Bool)

(assert (=> bm!608159 (= call!608164 (isEmpty!38186 s!2326))))

(declare-fun c!1248530 () Bool)

(declare-fun bm!608160 () Bool)

(assert (=> bm!608160 (= call!608165 (Exists!3627 (ite c!1248530 lambda!377937 lambda!377939)))))

(declare-fun b!6732537 () Bool)

(declare-fun e!4067186 () Bool)

(assert (=> b!6732537 (= e!4067186 (matchRSpec!3660 (regTwo!33631 (regOne!33631 r!7292)) s!2326))))

(declare-fun d!2115369 () Bool)

(declare-fun c!1248531 () Bool)

(assert (=> d!2115369 (= c!1248531 ((_ is EmptyExpr!16559) (regOne!33631 r!7292)))))

(declare-fun e!4067188 () Bool)

(assert (=> d!2115369 (= (matchRSpec!3660 (regOne!33631 r!7292) s!2326) e!4067188)))

(declare-fun b!6732538 () Bool)

(assert (=> b!6732538 (= e!4067184 e!4067185)))

(assert (=> b!6732538 (= c!1248530 ((_ is Star!16559) (regOne!33631 r!7292)))))

(declare-fun b!6732539 () Bool)

(assert (=> b!6732539 (= e!4067188 call!608164)))

(declare-fun b!6732540 () Bool)

(declare-fun c!1248529 () Bool)

(assert (=> b!6732540 (= c!1248529 ((_ is ElementMatch!16559) (regOne!33631 r!7292)))))

(declare-fun e!4067187 () Bool)

(assert (=> b!6732540 (= e!4067187 e!4067183)))

(declare-fun b!6732541 () Bool)

(assert (=> b!6732541 (= e!4067184 e!4067186)))

(declare-fun res!2754317 () Bool)

(assert (=> b!6732541 (= res!2754317 (matchRSpec!3660 (regOne!33631 (regOne!33631 r!7292)) s!2326))))

(assert (=> b!6732541 (=> res!2754317 e!4067186)))

(declare-fun b!6732542 () Bool)

(assert (=> b!6732542 (= e!4067183 (= s!2326 (Cons!65854 (c!1248231 (regOne!33631 r!7292)) Nil!65854)))))

(assert (=> b!6732543 (= e!4067185 call!608165)))

(declare-fun b!6732544 () Bool)

(assert (=> b!6732544 (= e!4067188 e!4067187)))

(declare-fun res!2754316 () Bool)

(assert (=> b!6732544 (= res!2754316 (not ((_ is EmptyLang!16559) (regOne!33631 r!7292))))))

(assert (=> b!6732544 (=> (not res!2754316) (not e!4067187))))

(assert (= (and d!2115369 c!1248531) b!6732539))

(assert (= (and d!2115369 (not c!1248531)) b!6732544))

(assert (= (and b!6732544 res!2754316) b!6732540))

(assert (= (and b!6732540 c!1248529) b!6732542))

(assert (= (and b!6732540 (not c!1248529)) b!6732536))

(assert (= (and b!6732536 c!1248528) b!6732541))

(assert (= (and b!6732536 (not c!1248528)) b!6732538))

(assert (= (and b!6732541 (not res!2754317)) b!6732537))

(assert (= (and b!6732538 c!1248530) b!6732534))

(assert (= (and b!6732538 (not c!1248530)) b!6732543))

(assert (= (and b!6732534 (not res!2754318)) b!6732535))

(assert (= (or b!6732535 b!6732543) bm!608160))

(assert (= (or b!6732539 b!6732534) bm!608159))

(assert (=> bm!608159 m!7489974))

(declare-fun m!7490840 () Bool)

(assert (=> bm!608160 m!7490840))

(declare-fun m!7490842 () Bool)

(assert (=> b!6732537 m!7490842))

(declare-fun m!7490844 () Bool)

(assert (=> b!6732541 m!7490844))

(assert (=> b!6731822 d!2115369))

(declare-fun d!2115377 () Bool)

(declare-fun res!2754321 () Bool)

(declare-fun e!4067200 () Bool)

(assert (=> d!2115377 (=> res!2754321 e!4067200)))

(assert (=> d!2115377 (= res!2754321 ((_ is ElementMatch!16559) lt!2437897))))

(assert (=> d!2115377 (= (validRegex!8295 lt!2437897) e!4067200)))

(declare-fun b!6732556 () Bool)

(declare-fun res!2754325 () Bool)

(declare-fun e!4067201 () Bool)

(assert (=> b!6732556 (=> (not res!2754325) (not e!4067201))))

(declare-fun call!608172 () Bool)

(assert (=> b!6732556 (= res!2754325 call!608172)))

(declare-fun e!4067199 () Bool)

(assert (=> b!6732556 (= e!4067199 e!4067201)))

(declare-fun c!1248537 () Bool)

(declare-fun c!1248538 () Bool)

(declare-fun bm!608167 () Bool)

(declare-fun call!608174 () Bool)

(assert (=> bm!608167 (= call!608174 (validRegex!8295 (ite c!1248538 (reg!16888 lt!2437897) (ite c!1248537 (regOne!33631 lt!2437897) (regOne!33630 lt!2437897)))))))

(declare-fun bm!608168 () Bool)

(declare-fun call!608173 () Bool)

(assert (=> bm!608168 (= call!608173 (validRegex!8295 (ite c!1248537 (regTwo!33631 lt!2437897) (regTwo!33630 lt!2437897))))))

(declare-fun b!6732557 () Bool)

(declare-fun e!4067196 () Bool)

(assert (=> b!6732557 (= e!4067196 call!608174)))

(declare-fun b!6732558 () Bool)

(declare-fun e!4067202 () Bool)

(assert (=> b!6732558 (= e!4067200 e!4067202)))

(assert (=> b!6732558 (= c!1248538 ((_ is Star!16559) lt!2437897))))

(declare-fun b!6732559 () Bool)

(assert (=> b!6732559 (= e!4067202 e!4067199)))

(assert (=> b!6732559 (= c!1248537 ((_ is Union!16559) lt!2437897))))

(declare-fun bm!608169 () Bool)

(assert (=> bm!608169 (= call!608172 call!608174)))

(declare-fun b!6732560 () Bool)

(declare-fun e!4067198 () Bool)

(declare-fun e!4067197 () Bool)

(assert (=> b!6732560 (= e!4067198 e!4067197)))

(declare-fun res!2754323 () Bool)

(assert (=> b!6732560 (=> (not res!2754323) (not e!4067197))))

(assert (=> b!6732560 (= res!2754323 call!608172)))

(declare-fun b!6732561 () Bool)

(declare-fun res!2754324 () Bool)

(assert (=> b!6732561 (=> res!2754324 e!4067198)))

(assert (=> b!6732561 (= res!2754324 (not ((_ is Concat!25404) lt!2437897)))))

(assert (=> b!6732561 (= e!4067199 e!4067198)))

(declare-fun b!6732562 () Bool)

(assert (=> b!6732562 (= e!4067202 e!4067196)))

(declare-fun res!2754322 () Bool)

(assert (=> b!6732562 (= res!2754322 (not (nullable!6546 (reg!16888 lt!2437897))))))

(assert (=> b!6732562 (=> (not res!2754322) (not e!4067196))))

(declare-fun b!6732563 () Bool)

(assert (=> b!6732563 (= e!4067197 call!608173)))

(declare-fun b!6732564 () Bool)

(assert (=> b!6732564 (= e!4067201 call!608173)))

(assert (= (and d!2115377 (not res!2754321)) b!6732558))

(assert (= (and b!6732558 c!1248538) b!6732562))

(assert (= (and b!6732558 (not c!1248538)) b!6732559))

(assert (= (and b!6732562 res!2754322) b!6732557))

(assert (= (and b!6732559 c!1248537) b!6732556))

(assert (= (and b!6732559 (not c!1248537)) b!6732561))

(assert (= (and b!6732556 res!2754325) b!6732564))

(assert (= (and b!6732561 (not res!2754324)) b!6732560))

(assert (= (and b!6732560 res!2754323) b!6732563))

(assert (= (or b!6732564 b!6732563) bm!608168))

(assert (= (or b!6732556 b!6732560) bm!608169))

(assert (= (or b!6732557 bm!608169) bm!608167))

(declare-fun m!7490850 () Bool)

(assert (=> bm!608167 m!7490850))

(declare-fun m!7490854 () Bool)

(assert (=> bm!608168 m!7490854))

(declare-fun m!7490856 () Bool)

(assert (=> b!6732562 m!7490856))

(assert (=> d!2115069 d!2115377))

(declare-fun d!2115379 () Bool)

(declare-fun res!2754326 () Bool)

(declare-fun e!4067203 () Bool)

(assert (=> d!2115379 (=> res!2754326 e!4067203)))

(assert (=> d!2115379 (= res!2754326 ((_ is Nil!65852) (unfocusZipperList!1980 zl!343)))))

(assert (=> d!2115379 (= (forall!15759 (unfocusZipperList!1980 zl!343) lambda!377845) e!4067203)))

(declare-fun b!6732565 () Bool)

(declare-fun e!4067204 () Bool)

(assert (=> b!6732565 (= e!4067203 e!4067204)))

(declare-fun res!2754327 () Bool)

(assert (=> b!6732565 (=> (not res!2754327) (not e!4067204))))

(assert (=> b!6732565 (= res!2754327 (dynLambda!26270 lambda!377845 (h!72300 (unfocusZipperList!1980 zl!343))))))

(declare-fun b!6732566 () Bool)

(assert (=> b!6732566 (= e!4067204 (forall!15759 (t!379665 (unfocusZipperList!1980 zl!343)) lambda!377845))))

(assert (= (and d!2115379 (not res!2754326)) b!6732565))

(assert (= (and b!6732565 res!2754327) b!6732566))

(declare-fun b_lambda!253481 () Bool)

(assert (=> (not b_lambda!253481) (not b!6732565)))

(declare-fun m!7490862 () Bool)

(assert (=> b!6732565 m!7490862))

(declare-fun m!7490864 () Bool)

(assert (=> b!6732566 m!7490864))

(assert (=> d!2115069 d!2115379))

(declare-fun d!2115383 () Bool)

(assert (=> d!2115383 (= (isEmpty!38188 (unfocusZipperList!1980 zl!343)) ((_ is Nil!65852) (unfocusZipperList!1980 zl!343)))))

(assert (=> b!6731566 d!2115383))

(declare-fun b!6732578 () Bool)

(declare-fun res!2754338 () Bool)

(declare-fun e!4067217 () Bool)

(assert (=> b!6732578 (=> (not res!2754338) (not e!4067217))))

(declare-fun call!608177 () Bool)

(assert (=> b!6732578 (= res!2754338 (not call!608177))))

(declare-fun b!6732579 () Bool)

(declare-fun e!4067218 () Bool)

(declare-fun lt!2437996 () Bool)

(assert (=> b!6732579 (= e!4067218 (= lt!2437996 call!608177))))

(declare-fun b!6732580 () Bool)

(declare-fun res!2754337 () Bool)

(assert (=> b!6732580 (=> (not res!2754337) (not e!4067217))))

(assert (=> b!6732580 (= res!2754337 (isEmpty!38186 (tail!12631 (tail!12631 s!2326))))))

(declare-fun b!6732581 () Bool)

(declare-fun res!2754335 () Bool)

(declare-fun e!4067214 () Bool)

(assert (=> b!6732581 (=> res!2754335 e!4067214)))

(assert (=> b!6732581 (= res!2754335 (not ((_ is ElementMatch!16559) (derivativeStep!5231 r!7292 (head!13546 s!2326)))))))

(declare-fun e!4067216 () Bool)

(assert (=> b!6732581 (= e!4067216 e!4067214)))

(declare-fun b!6732582 () Bool)

(declare-fun e!4067212 () Bool)

(assert (=> b!6732582 (= e!4067212 (not (= (head!13546 (tail!12631 s!2326)) (c!1248231 (derivativeStep!5231 r!7292 (head!13546 s!2326))))))))

(declare-fun b!6732583 () Bool)

(declare-fun e!4067215 () Bool)

(assert (=> b!6732583 (= e!4067215 e!4067212)))

(declare-fun res!2754332 () Bool)

(assert (=> b!6732583 (=> res!2754332 e!4067212)))

(assert (=> b!6732583 (= res!2754332 call!608177)))

(declare-fun b!6732584 () Bool)

(assert (=> b!6732584 (= e!4067218 e!4067216)))

(declare-fun c!1248543 () Bool)

(assert (=> b!6732584 (= c!1248543 ((_ is EmptyLang!16559) (derivativeStep!5231 r!7292 (head!13546 s!2326))))))

(declare-fun b!6732585 () Bool)

(declare-fun e!4067213 () Bool)

(assert (=> b!6732585 (= e!4067213 (nullable!6546 (derivativeStep!5231 r!7292 (head!13546 s!2326))))))

(declare-fun b!6732586 () Bool)

(declare-fun res!2754334 () Bool)

(assert (=> b!6732586 (=> res!2754334 e!4067214)))

(assert (=> b!6732586 (= res!2754334 e!4067217)))

(declare-fun res!2754336 () Bool)

(assert (=> b!6732586 (=> (not res!2754336) (not e!4067217))))

(assert (=> b!6732586 (= res!2754336 lt!2437996)))

(declare-fun d!2115385 () Bool)

(assert (=> d!2115385 e!4067218))

(declare-fun c!1248545 () Bool)

(assert (=> d!2115385 (= c!1248545 ((_ is EmptyExpr!16559) (derivativeStep!5231 r!7292 (head!13546 s!2326))))))

(assert (=> d!2115385 (= lt!2437996 e!4067213)))

(declare-fun c!1248544 () Bool)

(assert (=> d!2115385 (= c!1248544 (isEmpty!38186 (tail!12631 s!2326)))))

(assert (=> d!2115385 (validRegex!8295 (derivativeStep!5231 r!7292 (head!13546 s!2326)))))

(assert (=> d!2115385 (= (matchR!8742 (derivativeStep!5231 r!7292 (head!13546 s!2326)) (tail!12631 s!2326)) lt!2437996)))

(declare-fun b!6732587 () Bool)

(assert (=> b!6732587 (= e!4067213 (matchR!8742 (derivativeStep!5231 (derivativeStep!5231 r!7292 (head!13546 s!2326)) (head!13546 (tail!12631 s!2326))) (tail!12631 (tail!12631 s!2326))))))

(declare-fun b!6732588 () Bool)

(assert (=> b!6732588 (= e!4067214 e!4067215)))

(declare-fun res!2754333 () Bool)

(assert (=> b!6732588 (=> (not res!2754333) (not e!4067215))))

(assert (=> b!6732588 (= res!2754333 (not lt!2437996))))

(declare-fun b!6732589 () Bool)

(assert (=> b!6732589 (= e!4067217 (= (head!13546 (tail!12631 s!2326)) (c!1248231 (derivativeStep!5231 r!7292 (head!13546 s!2326)))))))

(declare-fun b!6732590 () Bool)

(declare-fun res!2754331 () Bool)

(assert (=> b!6732590 (=> res!2754331 e!4067212)))

(assert (=> b!6732590 (= res!2754331 (not (isEmpty!38186 (tail!12631 (tail!12631 s!2326)))))))

(declare-fun b!6732591 () Bool)

(assert (=> b!6732591 (= e!4067216 (not lt!2437996))))

(declare-fun bm!608172 () Bool)

(assert (=> bm!608172 (= call!608177 (isEmpty!38186 (tail!12631 s!2326)))))

(assert (= (and d!2115385 c!1248544) b!6732585))

(assert (= (and d!2115385 (not c!1248544)) b!6732587))

(assert (= (and d!2115385 c!1248545) b!6732579))

(assert (= (and d!2115385 (not c!1248545)) b!6732584))

(assert (= (and b!6732584 c!1248543) b!6732591))

(assert (= (and b!6732584 (not c!1248543)) b!6732581))

(assert (= (and b!6732581 (not res!2754335)) b!6732586))

(assert (= (and b!6732586 res!2754336) b!6732578))

(assert (= (and b!6732578 res!2754338) b!6732580))

(assert (= (and b!6732580 res!2754337) b!6732589))

(assert (= (and b!6732586 (not res!2754334)) b!6732588))

(assert (= (and b!6732588 res!2754333) b!6732583))

(assert (= (and b!6732583 (not res!2754332)) b!6732590))

(assert (= (and b!6732590 (not res!2754331)) b!6732582))

(assert (= (or b!6732579 b!6732578 b!6732583) bm!608172))

(assert (=> b!6732580 m!7490254))

(declare-fun m!7490866 () Bool)

(assert (=> b!6732580 m!7490866))

(assert (=> b!6732580 m!7490866))

(declare-fun m!7490868 () Bool)

(assert (=> b!6732580 m!7490868))

(assert (=> b!6732589 m!7490254))

(declare-fun m!7490870 () Bool)

(assert (=> b!6732589 m!7490870))

(assert (=> b!6732585 m!7490262))

(declare-fun m!7490872 () Bool)

(assert (=> b!6732585 m!7490872))

(assert (=> b!6732587 m!7490254))

(assert (=> b!6732587 m!7490870))

(assert (=> b!6732587 m!7490262))

(assert (=> b!6732587 m!7490870))

(declare-fun m!7490874 () Bool)

(assert (=> b!6732587 m!7490874))

(assert (=> b!6732587 m!7490254))

(assert (=> b!6732587 m!7490866))

(assert (=> b!6732587 m!7490874))

(assert (=> b!6732587 m!7490866))

(declare-fun m!7490876 () Bool)

(assert (=> b!6732587 m!7490876))

(assert (=> d!2115385 m!7490254))

(assert (=> d!2115385 m!7490256))

(assert (=> d!2115385 m!7490262))

(declare-fun m!7490878 () Bool)

(assert (=> d!2115385 m!7490878))

(assert (=> b!6732590 m!7490254))

(assert (=> b!6732590 m!7490866))

(assert (=> b!6732590 m!7490866))

(assert (=> b!6732590 m!7490868))

(assert (=> b!6732582 m!7490254))

(assert (=> b!6732582 m!7490870))

(assert (=> bm!608172 m!7490254))

(assert (=> bm!608172 m!7490256))

(assert (=> b!6731877 d!2115385))

(declare-fun b!6732629 () Bool)

(declare-fun c!1248565 () Bool)

(assert (=> b!6732629 (= c!1248565 ((_ is Union!16559) r!7292))))

(declare-fun e!4067241 () Regex!16559)

(declare-fun e!4067242 () Regex!16559)

(assert (=> b!6732629 (= e!4067241 e!4067242)))

(declare-fun b!6732630 () Bool)

(declare-fun e!4067243 () Regex!16559)

(assert (=> b!6732630 (= e!4067242 e!4067243)))

(declare-fun c!1248566 () Bool)

(assert (=> b!6732630 (= c!1248566 ((_ is Star!16559) r!7292))))

(declare-fun b!6732631 () Bool)

(declare-fun call!608188 () Regex!16559)

(assert (=> b!6732631 (= e!4067243 (Concat!25404 call!608188 r!7292))))

(declare-fun b!6732632 () Bool)

(declare-fun c!1248567 () Bool)

(assert (=> b!6732632 (= c!1248567 (nullable!6546 (regOne!33630 r!7292)))))

(declare-fun e!4067240 () Regex!16559)

(assert (=> b!6732632 (= e!4067243 e!4067240)))

(declare-fun b!6732633 () Bool)

(declare-fun e!4067239 () Regex!16559)

(assert (=> b!6732633 (= e!4067239 e!4067241)))

(declare-fun c!1248564 () Bool)

(assert (=> b!6732633 (= c!1248564 ((_ is ElementMatch!16559) r!7292))))

(declare-fun bm!608183 () Bool)

(declare-fun call!608189 () Regex!16559)

(declare-fun call!608187 () Regex!16559)

(assert (=> bm!608183 (= call!608189 call!608187)))

(declare-fun call!608190 () Regex!16559)

(declare-fun bm!608184 () Bool)

(assert (=> bm!608184 (= call!608190 (derivativeStep!5231 (ite c!1248565 (regTwo!33631 r!7292) (ite c!1248566 (reg!16888 r!7292) (regOne!33630 r!7292))) (head!13546 s!2326)))))

(declare-fun b!6732634 () Bool)

(assert (=> b!6732634 (= e!4067240 (Union!16559 (Concat!25404 call!608188 (regTwo!33630 r!7292)) call!608189))))

(declare-fun b!6732635 () Bool)

(assert (=> b!6732635 (= e!4067242 (Union!16559 call!608187 call!608190))))

(declare-fun b!6732636 () Bool)

(assert (=> b!6732636 (= e!4067240 (Union!16559 (Concat!25404 call!608189 (regTwo!33630 r!7292)) EmptyLang!16559))))

(declare-fun b!6732637 () Bool)

(assert (=> b!6732637 (= e!4067239 EmptyLang!16559)))

(declare-fun d!2115387 () Bool)

(declare-fun lt!2438000 () Regex!16559)

(assert (=> d!2115387 (validRegex!8295 lt!2438000)))

(assert (=> d!2115387 (= lt!2438000 e!4067239)))

(declare-fun c!1248563 () Bool)

(assert (=> d!2115387 (= c!1248563 (or ((_ is EmptyExpr!16559) r!7292) ((_ is EmptyLang!16559) r!7292)))))

(assert (=> d!2115387 (validRegex!8295 r!7292)))

(assert (=> d!2115387 (= (derivativeStep!5231 r!7292 (head!13546 s!2326)) lt!2438000)))

(declare-fun bm!608182 () Bool)

(assert (=> bm!608182 (= call!608188 call!608190)))

(declare-fun bm!608185 () Bool)

(assert (=> bm!608185 (= call!608187 (derivativeStep!5231 (ite c!1248565 (regOne!33631 r!7292) (ite c!1248567 (regTwo!33630 r!7292) (regOne!33630 r!7292))) (head!13546 s!2326)))))

(declare-fun b!6732638 () Bool)

(assert (=> b!6732638 (= e!4067241 (ite (= (head!13546 s!2326) (c!1248231 r!7292)) EmptyExpr!16559 EmptyLang!16559))))

(assert (= (and d!2115387 c!1248563) b!6732637))

(assert (= (and d!2115387 (not c!1248563)) b!6732633))

(assert (= (and b!6732633 c!1248564) b!6732638))

(assert (= (and b!6732633 (not c!1248564)) b!6732629))

(assert (= (and b!6732629 c!1248565) b!6732635))

(assert (= (and b!6732629 (not c!1248565)) b!6732630))

(assert (= (and b!6732630 c!1248566) b!6732631))

(assert (= (and b!6732630 (not c!1248566)) b!6732632))

(assert (= (and b!6732632 c!1248567) b!6732634))

(assert (= (and b!6732632 (not c!1248567)) b!6732636))

(assert (= (or b!6732634 b!6732636) bm!608183))

(assert (= (or b!6732631 b!6732634) bm!608182))

(assert (= (or b!6732635 bm!608182) bm!608184))

(assert (= (or b!6732635 bm!608183) bm!608185))

(assert (=> b!6732632 m!7490306))

(assert (=> bm!608184 m!7490258))

(declare-fun m!7490928 () Bool)

(assert (=> bm!608184 m!7490928))

(declare-fun m!7490930 () Bool)

(assert (=> d!2115387 m!7490930))

(assert (=> d!2115387 m!7490018))

(assert (=> bm!608185 m!7490258))

(declare-fun m!7490932 () Bool)

(assert (=> bm!608185 m!7490932))

(assert (=> b!6731877 d!2115387))

(assert (=> b!6731877 d!2115361))

(declare-fun d!2115425 () Bool)

(assert (=> d!2115425 (= (tail!12631 s!2326) (t!379667 s!2326))))

(assert (=> b!6731877 d!2115425))

(declare-fun d!2115427 () Bool)

(assert (=> d!2115427 (= (isEmpty!38186 (t!379667 s!2326)) ((_ is Nil!65854) (t!379667 s!2326)))))

(assert (=> d!2115165 d!2115427))

(declare-fun d!2115429 () Bool)

(declare-fun res!2754343 () Bool)

(declare-fun e!4067248 () Bool)

(assert (=> d!2115429 (=> res!2754343 e!4067248)))

(assert (=> d!2115429 (= res!2754343 ((_ is ElementMatch!16559) lt!2437966))))

(assert (=> d!2115429 (= (validRegex!8295 lt!2437966) e!4067248)))

(declare-fun b!6732639 () Bool)

(declare-fun res!2754347 () Bool)

(declare-fun e!4067249 () Bool)

(assert (=> b!6732639 (=> (not res!2754347) (not e!4067249))))

(declare-fun call!608191 () Bool)

(assert (=> b!6732639 (= res!2754347 call!608191)))

(declare-fun e!4067247 () Bool)

(assert (=> b!6732639 (= e!4067247 e!4067249)))

(declare-fun c!1248568 () Bool)

(declare-fun bm!608186 () Bool)

(declare-fun call!608193 () Bool)

(declare-fun c!1248569 () Bool)

(assert (=> bm!608186 (= call!608193 (validRegex!8295 (ite c!1248569 (reg!16888 lt!2437966) (ite c!1248568 (regOne!33631 lt!2437966) (regOne!33630 lt!2437966)))))))

(declare-fun bm!608187 () Bool)

(declare-fun call!608192 () Bool)

(assert (=> bm!608187 (= call!608192 (validRegex!8295 (ite c!1248568 (regTwo!33631 lt!2437966) (regTwo!33630 lt!2437966))))))

(declare-fun b!6732640 () Bool)

(declare-fun e!4067244 () Bool)

(assert (=> b!6732640 (= e!4067244 call!608193)))

(declare-fun b!6732641 () Bool)

(declare-fun e!4067250 () Bool)

(assert (=> b!6732641 (= e!4067248 e!4067250)))

(assert (=> b!6732641 (= c!1248569 ((_ is Star!16559) lt!2437966))))

(declare-fun b!6732642 () Bool)

(assert (=> b!6732642 (= e!4067250 e!4067247)))

(assert (=> b!6732642 (= c!1248568 ((_ is Union!16559) lt!2437966))))

(declare-fun bm!608188 () Bool)

(assert (=> bm!608188 (= call!608191 call!608193)))

(declare-fun b!6732643 () Bool)

(declare-fun e!4067246 () Bool)

(declare-fun e!4067245 () Bool)

(assert (=> b!6732643 (= e!4067246 e!4067245)))

(declare-fun res!2754345 () Bool)

(assert (=> b!6732643 (=> (not res!2754345) (not e!4067245))))

(assert (=> b!6732643 (= res!2754345 call!608191)))

(declare-fun b!6732644 () Bool)

(declare-fun res!2754346 () Bool)

(assert (=> b!6732644 (=> res!2754346 e!4067246)))

(assert (=> b!6732644 (= res!2754346 (not ((_ is Concat!25404) lt!2437966)))))

(assert (=> b!6732644 (= e!4067247 e!4067246)))

(declare-fun b!6732645 () Bool)

(assert (=> b!6732645 (= e!4067250 e!4067244)))

(declare-fun res!2754344 () Bool)

(assert (=> b!6732645 (= res!2754344 (not (nullable!6546 (reg!16888 lt!2437966))))))

(assert (=> b!6732645 (=> (not res!2754344) (not e!4067244))))

(declare-fun b!6732646 () Bool)

(assert (=> b!6732646 (= e!4067245 call!608192)))

(declare-fun b!6732647 () Bool)

(assert (=> b!6732647 (= e!4067249 call!608192)))

(assert (= (and d!2115429 (not res!2754343)) b!6732641))

(assert (= (and b!6732641 c!1248569) b!6732645))

(assert (= (and b!6732641 (not c!1248569)) b!6732642))

(assert (= (and b!6732645 res!2754344) b!6732640))

(assert (= (and b!6732642 c!1248568) b!6732639))

(assert (= (and b!6732642 (not c!1248568)) b!6732644))

(assert (= (and b!6732639 res!2754347) b!6732647))

(assert (= (and b!6732644 (not res!2754346)) b!6732643))

(assert (= (and b!6732643 res!2754345) b!6732646))

(assert (= (or b!6732647 b!6732646) bm!608187))

(assert (= (or b!6732639 b!6732643) bm!608188))

(assert (= (or b!6732640 bm!608188) bm!608186))

(declare-fun m!7490934 () Bool)

(assert (=> bm!608186 m!7490934))

(declare-fun m!7490936 () Bool)

(assert (=> bm!608187 m!7490936))

(declare-fun m!7490938 () Bool)

(assert (=> b!6732645 m!7490938))

(assert (=> d!2115195 d!2115429))

(declare-fun bs!1790497 () Bool)

(declare-fun d!2115431 () Bool)

(assert (= bs!1790497 (and d!2115431 d!2115077)))

(declare-fun lambda!377944 () Int)

(assert (=> bs!1790497 (= lambda!377944 lambda!377854)))

(declare-fun bs!1790498 () Bool)

(assert (= bs!1790498 (and d!2115431 d!2115081)))

(assert (=> bs!1790498 (= lambda!377944 lambda!377855)))

(declare-fun bs!1790499 () Bool)

(assert (= bs!1790499 (and d!2115431 d!2115063)))

(assert (=> bs!1790499 (= lambda!377944 lambda!377836)))

(declare-fun bs!1790500 () Bool)

(assert (= bs!1790500 (and d!2115431 d!2115203)))

(assert (=> bs!1790500 (= lambda!377944 lambda!377911)))

(declare-fun bs!1790501 () Bool)

(assert (= bs!1790501 (and d!2115431 d!2115069)))

(assert (=> bs!1790501 (= lambda!377944 lambda!377845)))

(declare-fun bs!1790502 () Bool)

(assert (= bs!1790502 (and d!2115431 d!2115199)))

(assert (=> bs!1790502 (= lambda!377944 lambda!377910)))

(declare-fun b!6732650 () Bool)

(declare-fun e!4067254 () Bool)

(declare-fun e!4067255 () Bool)

(assert (=> b!6732650 (= e!4067254 e!4067255)))

(declare-fun c!1248571 () Bool)

(assert (=> b!6732650 (= c!1248571 (isEmpty!38188 (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853))))))

(declare-fun b!6732651 () Bool)

(declare-fun lt!2438001 () Regex!16559)

(assert (=> b!6732651 (= e!4067255 (isEmptyLang!1933 lt!2438001))))

(declare-fun b!6732652 () Bool)

(declare-fun e!4067260 () Bool)

(assert (=> b!6732652 (= e!4067255 e!4067260)))

(declare-fun c!1248573 () Bool)

(assert (=> b!6732652 (= c!1248573 (isEmpty!38188 (tail!12630 (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853)))))))

(declare-fun b!6732653 () Bool)

(assert (=> b!6732653 (= e!4067260 (= lt!2438001 (head!13545 (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853)))))))

(assert (=> d!2115431 e!4067254))

(declare-fun res!2754350 () Bool)

(assert (=> d!2115431 (=> (not res!2754350) (not e!4067254))))

(assert (=> d!2115431 (= res!2754350 (validRegex!8295 lt!2438001))))

(declare-fun e!4067253 () Regex!16559)

(assert (=> d!2115431 (= lt!2438001 e!4067253)))

(declare-fun c!1248572 () Bool)

(declare-fun e!4067258 () Bool)

(assert (=> d!2115431 (= c!1248572 e!4067258)))

(declare-fun res!2754353 () Bool)

(assert (=> d!2115431 (=> (not res!2754353) (not e!4067258))))

(assert (=> d!2115431 (= res!2754353 ((_ is Cons!65852) (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853))))))

(assert (=> d!2115431 (forall!15759 (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853)) lambda!377944)))

(assert (=> d!2115431 (= (generalisedUnion!2403 (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853))) lt!2438001)))

(declare-fun b!6732654 () Bool)

(assert (=> b!6732654 (= e!4067253 (h!72300 (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853))))))

(declare-fun b!6732655 () Bool)

(declare-fun e!4067259 () Regex!16559)

(assert (=> b!6732655 (= e!4067259 (Union!16559 (h!72300 (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853))) (generalisedUnion!2403 (t!379665 (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853))))))))

(declare-fun b!6732656 () Bool)

(assert (=> b!6732656 (= e!4067259 EmptyLang!16559)))

(declare-fun b!6732659 () Bool)

(assert (=> b!6732659 (= e!4067253 e!4067259)))

(declare-fun c!1248570 () Bool)

(assert (=> b!6732659 (= c!1248570 ((_ is Cons!65852) (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853))))))

(declare-fun b!6732660 () Bool)

(assert (=> b!6732660 (= e!4067258 (isEmpty!38188 (t!379665 (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853)))))))

(declare-fun b!6732661 () Bool)

(assert (=> b!6732661 (= e!4067260 (isUnion!1363 lt!2438001))))

(assert (= (and d!2115431 res!2754353) b!6732660))

(assert (= (and d!2115431 c!1248572) b!6732654))

(assert (= (and d!2115431 (not c!1248572)) b!6732659))

(assert (= (and b!6732659 c!1248570) b!6732655))

(assert (= (and b!6732659 (not c!1248570)) b!6732656))

(assert (= (and d!2115431 res!2754350) b!6732650))

(assert (= (and b!6732650 c!1248571) b!6732651))

(assert (= (and b!6732650 (not c!1248571)) b!6732652))

(assert (= (and b!6732652 c!1248573) b!6732653))

(assert (= (and b!6732652 (not c!1248573)) b!6732661))

(declare-fun m!7490940 () Bool)

(assert (=> b!6732655 m!7490940))

(declare-fun m!7490942 () Bool)

(assert (=> b!6732651 m!7490942))

(declare-fun m!7490944 () Bool)

(assert (=> b!6732660 m!7490944))

(assert (=> b!6732650 m!7490410))

(declare-fun m!7490950 () Bool)

(assert (=> b!6732650 m!7490950))

(declare-fun m!7490952 () Bool)

(assert (=> d!2115431 m!7490952))

(assert (=> d!2115431 m!7490410))

(declare-fun m!7490954 () Bool)

(assert (=> d!2115431 m!7490954))

(assert (=> b!6732653 m!7490410))

(declare-fun m!7490956 () Bool)

(assert (=> b!6732653 m!7490956))

(declare-fun m!7490958 () Bool)

(assert (=> b!6732661 m!7490958))

(assert (=> b!6732652 m!7490410))

(declare-fun m!7490960 () Bool)

(assert (=> b!6732652 m!7490960))

(assert (=> b!6732652 m!7490960))

(declare-fun m!7490962 () Bool)

(assert (=> b!6732652 m!7490962))

(assert (=> d!2115195 d!2115431))

(declare-fun bs!1790503 () Bool)

(declare-fun d!2115435 () Bool)

(assert (= bs!1790503 (and d!2115435 d!2115077)))

(declare-fun lambda!377945 () Int)

(assert (=> bs!1790503 (= lambda!377945 lambda!377854)))

(declare-fun bs!1790504 () Bool)

(assert (= bs!1790504 (and d!2115435 d!2115081)))

(assert (=> bs!1790504 (= lambda!377945 lambda!377855)))

(declare-fun bs!1790505 () Bool)

(assert (= bs!1790505 (and d!2115435 d!2115063)))

(assert (=> bs!1790505 (= lambda!377945 lambda!377836)))

(declare-fun bs!1790506 () Bool)

(assert (= bs!1790506 (and d!2115435 d!2115203)))

(assert (=> bs!1790506 (= lambda!377945 lambda!377911)))

(declare-fun bs!1790507 () Bool)

(assert (= bs!1790507 (and d!2115435 d!2115069)))

(assert (=> bs!1790507 (= lambda!377945 lambda!377845)))

(declare-fun bs!1790508 () Bool)

(assert (= bs!1790508 (and d!2115435 d!2115199)))

(assert (=> bs!1790508 (= lambda!377945 lambda!377910)))

(declare-fun bs!1790509 () Bool)

(assert (= bs!1790509 (and d!2115435 d!2115431)))

(assert (=> bs!1790509 (= lambda!377945 lambda!377944)))

(declare-fun lt!2438002 () List!65976)

(assert (=> d!2115435 (forall!15759 lt!2438002 lambda!377945)))

(declare-fun e!4067263 () List!65976)

(assert (=> d!2115435 (= lt!2438002 e!4067263)))

(declare-fun c!1248574 () Bool)

(assert (=> d!2115435 (= c!1248574 ((_ is Cons!65853) (Cons!65853 lt!2437877 Nil!65853)))))

(assert (=> d!2115435 (= (unfocusZipperList!1980 (Cons!65853 lt!2437877 Nil!65853)) lt!2438002)))

(declare-fun b!6732664 () Bool)

(assert (=> b!6732664 (= e!4067263 (Cons!65852 (generalisedConcat!2156 (exprs!6443 (h!72301 (Cons!65853 lt!2437877 Nil!65853)))) (unfocusZipperList!1980 (t!379666 (Cons!65853 lt!2437877 Nil!65853)))))))

(declare-fun b!6732665 () Bool)

(assert (=> b!6732665 (= e!4067263 Nil!65852)))

(assert (= (and d!2115435 c!1248574) b!6732664))

(assert (= (and d!2115435 (not c!1248574)) b!6732665))

(declare-fun m!7490964 () Bool)

(assert (=> d!2115435 m!7490964))

(declare-fun m!7490966 () Bool)

(assert (=> b!6732664 m!7490966))

(declare-fun m!7490968 () Bool)

(assert (=> b!6732664 m!7490968))

(assert (=> d!2115195 d!2115435))

(declare-fun d!2115437 () Bool)

(assert (=> d!2115437 (= (nullable!6546 r!7292) (nullableFct!2460 r!7292))))

(declare-fun bs!1790510 () Bool)

(assert (= bs!1790510 d!2115437))

(declare-fun m!7490970 () Bool)

(assert (=> bs!1790510 m!7490970))

(assert (=> b!6731875 d!2115437))

(declare-fun d!2115439 () Bool)

(declare-fun res!2754360 () Bool)

(declare-fun e!4067274 () Bool)

(assert (=> d!2115439 (=> res!2754360 e!4067274)))

(assert (=> d!2115439 (= res!2754360 ((_ is ElementMatch!16559) (ite c!1248422 (regTwo!33631 r!7292) (regTwo!33630 r!7292))))))

(assert (=> d!2115439 (= (validRegex!8295 (ite c!1248422 (regTwo!33631 r!7292) (regTwo!33630 r!7292))) e!4067274)))

(declare-fun b!6732672 () Bool)

(declare-fun res!2754364 () Bool)

(declare-fun e!4067275 () Bool)

(assert (=> b!6732672 (=> (not res!2754364) (not e!4067275))))

(declare-fun call!608194 () Bool)

(assert (=> b!6732672 (= res!2754364 call!608194)))

(declare-fun e!4067273 () Bool)

(assert (=> b!6732672 (= e!4067273 e!4067275)))

(declare-fun c!1248576 () Bool)

(declare-fun call!608196 () Bool)

(declare-fun c!1248575 () Bool)

(declare-fun bm!608189 () Bool)

(assert (=> bm!608189 (= call!608196 (validRegex!8295 (ite c!1248576 (reg!16888 (ite c!1248422 (regTwo!33631 r!7292) (regTwo!33630 r!7292))) (ite c!1248575 (regOne!33631 (ite c!1248422 (regTwo!33631 r!7292) (regTwo!33630 r!7292))) (regOne!33630 (ite c!1248422 (regTwo!33631 r!7292) (regTwo!33630 r!7292)))))))))

(declare-fun bm!608190 () Bool)

(declare-fun call!608195 () Bool)

(assert (=> bm!608190 (= call!608195 (validRegex!8295 (ite c!1248575 (regTwo!33631 (ite c!1248422 (regTwo!33631 r!7292) (regTwo!33630 r!7292))) (regTwo!33630 (ite c!1248422 (regTwo!33631 r!7292) (regTwo!33630 r!7292))))))))

(declare-fun b!6732673 () Bool)

(declare-fun e!4067270 () Bool)

(assert (=> b!6732673 (= e!4067270 call!608196)))

(declare-fun b!6732674 () Bool)

(declare-fun e!4067276 () Bool)

(assert (=> b!6732674 (= e!4067274 e!4067276)))

(assert (=> b!6732674 (= c!1248576 ((_ is Star!16559) (ite c!1248422 (regTwo!33631 r!7292) (regTwo!33630 r!7292))))))

(declare-fun b!6732675 () Bool)

(assert (=> b!6732675 (= e!4067276 e!4067273)))

(assert (=> b!6732675 (= c!1248575 ((_ is Union!16559) (ite c!1248422 (regTwo!33631 r!7292) (regTwo!33630 r!7292))))))

(declare-fun bm!608191 () Bool)

(assert (=> bm!608191 (= call!608194 call!608196)))

(declare-fun b!6732676 () Bool)

(declare-fun e!4067272 () Bool)

(declare-fun e!4067271 () Bool)

(assert (=> b!6732676 (= e!4067272 e!4067271)))

(declare-fun res!2754362 () Bool)

(assert (=> b!6732676 (=> (not res!2754362) (not e!4067271))))

(assert (=> b!6732676 (= res!2754362 call!608194)))

(declare-fun b!6732677 () Bool)

(declare-fun res!2754363 () Bool)

(assert (=> b!6732677 (=> res!2754363 e!4067272)))

(assert (=> b!6732677 (= res!2754363 (not ((_ is Concat!25404) (ite c!1248422 (regTwo!33631 r!7292) (regTwo!33630 r!7292)))))))

(assert (=> b!6732677 (= e!4067273 e!4067272)))

(declare-fun b!6732678 () Bool)

(assert (=> b!6732678 (= e!4067276 e!4067270)))

(declare-fun res!2754361 () Bool)

(assert (=> b!6732678 (= res!2754361 (not (nullable!6546 (reg!16888 (ite c!1248422 (regTwo!33631 r!7292) (regTwo!33630 r!7292))))))))

(assert (=> b!6732678 (=> (not res!2754361) (not e!4067270))))

(declare-fun b!6732679 () Bool)

(assert (=> b!6732679 (= e!4067271 call!608195)))

(declare-fun b!6732680 () Bool)

(assert (=> b!6732680 (= e!4067275 call!608195)))

(assert (= (and d!2115439 (not res!2754360)) b!6732674))

(assert (= (and b!6732674 c!1248576) b!6732678))

(assert (= (and b!6732674 (not c!1248576)) b!6732675))

(assert (= (and b!6732678 res!2754361) b!6732673))

(assert (= (and b!6732675 c!1248575) b!6732672))

(assert (= (and b!6732675 (not c!1248575)) b!6732677))

(assert (= (and b!6732672 res!2754364) b!6732680))

(assert (= (and b!6732677 (not res!2754363)) b!6732676))

(assert (= (and b!6732676 res!2754362) b!6732679))

(assert (= (or b!6732680 b!6732679) bm!608190))

(assert (= (or b!6732672 b!6732676) bm!608191))

(assert (= (or b!6732673 bm!608191) bm!608189))

(declare-fun m!7490972 () Bool)

(assert (=> bm!608189 m!7490972))

(declare-fun m!7490974 () Bool)

(assert (=> bm!608190 m!7490974))

(declare-fun m!7490976 () Bool)

(assert (=> b!6732678 m!7490976))

(assert (=> bm!608083 d!2115439))

(assert (=> d!2115145 d!2115133))

(assert (=> d!2115145 d!2115103))

(declare-fun d!2115441 () Bool)

(assert (=> d!2115441 (= (matchR!8742 r!7292 s!2326) (matchRSpec!3660 r!7292 s!2326))))

(assert (=> d!2115441 true))

(declare-fun _$88!5480 () Unit!159809)

(assert (=> d!2115441 (= (choose!50169 r!7292 s!2326) _$88!5480)))

(declare-fun bs!1790512 () Bool)

(assert (= bs!1790512 d!2115441))

(assert (=> bs!1790512 m!7490012))

(assert (=> bs!1790512 m!7490010))

(assert (=> d!2115145 d!2115441))

(assert (=> d!2115145 d!2115201))

(declare-fun d!2115451 () Bool)

(assert (=> d!2115451 (= (isEmpty!38188 (exprs!6443 (h!72301 zl!343))) ((_ is Nil!65852) (exprs!6443 (h!72301 zl!343))))))

(assert (=> b!6732112 d!2115451))

(declare-fun d!2115453 () Bool)

(assert (=> d!2115453 (= (nullable!6546 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (nullableFct!2460 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))))))

(declare-fun bs!1790513 () Bool)

(assert (= bs!1790513 d!2115453))

(declare-fun m!7490996 () Bool)

(assert (=> bs!1790513 m!7490996))

(assert (=> b!6731988 d!2115453))

(declare-fun d!2115455 () Bool)

(assert (=> d!2115455 (= (Exists!3627 (ite c!1248353 lambda!377876 lambda!377878)) (choose!50174 (ite c!1248353 lambda!377876 lambda!377878)))))

(declare-fun bs!1790514 () Bool)

(assert (= bs!1790514 d!2115455))

(declare-fun m!7490998 () Bool)

(assert (=> bs!1790514 m!7490998))

(assert (=> bm!608046 d!2115455))

(declare-fun bm!608195 () Bool)

(declare-fun call!608204 () List!65976)

(declare-fun call!608205 () List!65976)

(assert (=> bm!608195 (= call!608204 call!608205)))

(declare-fun c!1248582 () Bool)

(declare-fun d!2115457 () Bool)

(assert (=> d!2115457 (= c!1248582 (and ((_ is ElementMatch!16559) (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292))))) (= (c!1248231 (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292))))) (h!72302 s!2326))))))

(declare-fun e!4067296 () (InoxSet Context!11886))

(assert (=> d!2115457 (= (derivationStepZipperDown!1787 (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292)))) (ite (or c!1248381 c!1248384) (Context!11887 Nil!65852) (Context!11887 call!608071)) (h!72302 s!2326)) e!4067296)))

(declare-fun b!6732697 () Bool)

(declare-fun e!4067293 () (InoxSet Context!11886))

(declare-fun e!4067294 () (InoxSet Context!11886))

(assert (=> b!6732697 (= e!4067293 e!4067294)))

(declare-fun c!1248579 () Bool)

(assert (=> b!6732697 (= c!1248579 ((_ is Concat!25404) (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292))))))))

(declare-fun b!6732698 () Bool)

(declare-fun call!608201 () (InoxSet Context!11886))

(declare-fun call!608202 () (InoxSet Context!11886))

(assert (=> b!6732698 (= e!4067293 ((_ map or) call!608201 call!608202))))

(declare-fun b!6732699 () Bool)

(declare-fun e!4067291 () (InoxSet Context!11886))

(declare-fun call!608200 () (InoxSet Context!11886))

(assert (=> b!6732699 (= e!4067291 ((_ map or) call!608200 call!608201))))

(declare-fun bm!608196 () Bool)

(assert (=> bm!608196 (= call!608202 call!608200)))

(declare-fun b!6732700 () Bool)

(declare-fun e!4067295 () Bool)

(assert (=> b!6732700 (= e!4067295 (nullable!6546 (regOne!33630 (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292)))))))))

(declare-fun b!6732701 () Bool)

(declare-fun call!608203 () (InoxSet Context!11886))

(assert (=> b!6732701 (= e!4067294 call!608203)))

(declare-fun c!1248580 () Bool)

(declare-fun bm!608197 () Bool)

(assert (=> bm!608197 (= call!608201 (derivationStepZipperDown!1787 (ite c!1248580 (regTwo!33631 (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292))))) (regOne!33630 (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292)))))) (ite c!1248580 (ite (or c!1248381 c!1248384) (Context!11887 Nil!65852) (Context!11887 call!608071)) (Context!11887 call!608205)) (h!72302 s!2326)))))

(declare-fun b!6732702 () Bool)

(assert (=> b!6732702 (= e!4067296 e!4067291)))

(assert (=> b!6732702 (= c!1248580 ((_ is Union!16559) (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292))))))))

(declare-fun b!6732703 () Bool)

(declare-fun e!4067292 () (InoxSet Context!11886))

(assert (=> b!6732703 (= e!4067292 ((as const (Array Context!11886 Bool)) false))))

(declare-fun bm!608198 () Bool)

(declare-fun c!1248583 () Bool)

(assert (=> bm!608198 (= call!608205 ($colon$colon!2376 (exprs!6443 (ite (or c!1248381 c!1248384) (Context!11887 Nil!65852) (Context!11887 call!608071))) (ite (or c!1248583 c!1248579) (regTwo!33630 (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292))))) (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292)))))))))

(declare-fun b!6732704 () Bool)

(assert (=> b!6732704 (= e!4067296 (store ((as const (Array Context!11886 Bool)) false) (ite (or c!1248381 c!1248384) (Context!11887 Nil!65852) (Context!11887 call!608071)) true))))

(declare-fun bm!608199 () Bool)

(assert (=> bm!608199 (= call!608203 call!608202)))

(declare-fun bm!608200 () Bool)

(assert (=> bm!608200 (= call!608200 (derivationStepZipperDown!1787 (ite c!1248580 (regOne!33631 (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292))))) (ite c!1248583 (regTwo!33630 (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292))))) (ite c!1248579 (regOne!33630 (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292))))) (reg!16888 (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292)))))))) (ite (or c!1248580 c!1248583) (ite (or c!1248381 c!1248384) (Context!11887 Nil!65852) (Context!11887 call!608071)) (Context!11887 call!608204)) (h!72302 s!2326)))))

(declare-fun b!6732705 () Bool)

(assert (=> b!6732705 (= c!1248583 e!4067295)))

(declare-fun res!2754376 () Bool)

(assert (=> b!6732705 (=> (not res!2754376) (not e!4067295))))

(assert (=> b!6732705 (= res!2754376 ((_ is Concat!25404) (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292))))))))

(assert (=> b!6732705 (= e!4067291 e!4067293)))

(declare-fun b!6732706 () Bool)

(assert (=> b!6732706 (= e!4067292 call!608203)))

(declare-fun c!1248581 () Bool)

(declare-fun b!6732707 () Bool)

(assert (=> b!6732707 (= c!1248581 ((_ is Star!16559) (ite c!1248381 (regOne!33631 r!7292) (ite c!1248384 (regTwo!33630 r!7292) (ite c!1248380 (regOne!33630 r!7292) (reg!16888 r!7292))))))))

(assert (=> b!6732707 (= e!4067294 e!4067292)))

(assert (= (and d!2115457 c!1248582) b!6732704))

(assert (= (and d!2115457 (not c!1248582)) b!6732702))

(assert (= (and b!6732702 c!1248580) b!6732699))

(assert (= (and b!6732702 (not c!1248580)) b!6732705))

(assert (= (and b!6732705 res!2754376) b!6732700))

(assert (= (and b!6732705 c!1248583) b!6732698))

(assert (= (and b!6732705 (not c!1248583)) b!6732697))

(assert (= (and b!6732697 c!1248579) b!6732701))

(assert (= (and b!6732697 (not c!1248579)) b!6732707))

(assert (= (and b!6732707 c!1248581) b!6732706))

(assert (= (and b!6732707 (not c!1248581)) b!6732703))

(assert (= (or b!6732701 b!6732706) bm!608195))

(assert (= (or b!6732701 b!6732706) bm!608199))

(assert (= (or b!6732698 bm!608195) bm!608198))

(assert (= (or b!6732698 bm!608199) bm!608196))

(assert (= (or b!6732699 b!6732698) bm!608197))

(assert (= (or b!6732699 bm!608196) bm!608200))

(declare-fun m!7491002 () Bool)

(assert (=> bm!608200 m!7491002))

(declare-fun m!7491006 () Bool)

(assert (=> bm!608198 m!7491006))

(declare-fun m!7491010 () Bool)

(assert (=> bm!608197 m!7491010))

(declare-fun m!7491012 () Bool)

(assert (=> b!6732704 m!7491012))

(declare-fun m!7491014 () Bool)

(assert (=> b!6732700 m!7491014))

(assert (=> bm!608067 d!2115457))

(assert (=> b!6731872 d!2115361))

(declare-fun d!2115465 () Bool)

(declare-fun res!2754379 () Bool)

(declare-fun e!4067303 () Bool)

(assert (=> d!2115465 (=> res!2754379 e!4067303)))

(assert (=> d!2115465 (= res!2754379 ((_ is ElementMatch!16559) lt!2437967))))

(assert (=> d!2115465 (= (validRegex!8295 lt!2437967) e!4067303)))

(declare-fun b!6732710 () Bool)

(declare-fun res!2754383 () Bool)

(declare-fun e!4067304 () Bool)

(assert (=> b!6732710 (=> (not res!2754383) (not e!4067304))))

(declare-fun call!608206 () Bool)

(assert (=> b!6732710 (= res!2754383 call!608206)))

(declare-fun e!4067302 () Bool)

(assert (=> b!6732710 (= e!4067302 e!4067304)))

(declare-fun call!608208 () Bool)

(declare-fun c!1248585 () Bool)

(declare-fun c!1248584 () Bool)

(declare-fun bm!608201 () Bool)

(assert (=> bm!608201 (= call!608208 (validRegex!8295 (ite c!1248585 (reg!16888 lt!2437967) (ite c!1248584 (regOne!33631 lt!2437967) (regOne!33630 lt!2437967)))))))

(declare-fun bm!608202 () Bool)

(declare-fun call!608207 () Bool)

(assert (=> bm!608202 (= call!608207 (validRegex!8295 (ite c!1248584 (regTwo!33631 lt!2437967) (regTwo!33630 lt!2437967))))))

(declare-fun b!6732711 () Bool)

(declare-fun e!4067299 () Bool)

(assert (=> b!6732711 (= e!4067299 call!608208)))

(declare-fun b!6732712 () Bool)

(declare-fun e!4067305 () Bool)

(assert (=> b!6732712 (= e!4067303 e!4067305)))

(assert (=> b!6732712 (= c!1248585 ((_ is Star!16559) lt!2437967))))

(declare-fun b!6732713 () Bool)

(assert (=> b!6732713 (= e!4067305 e!4067302)))

(assert (=> b!6732713 (= c!1248584 ((_ is Union!16559) lt!2437967))))

(declare-fun bm!608203 () Bool)

(assert (=> bm!608203 (= call!608206 call!608208)))

(declare-fun b!6732714 () Bool)

(declare-fun e!4067301 () Bool)

(declare-fun e!4067300 () Bool)

(assert (=> b!6732714 (= e!4067301 e!4067300)))

(declare-fun res!2754381 () Bool)

(assert (=> b!6732714 (=> (not res!2754381) (not e!4067300))))

(assert (=> b!6732714 (= res!2754381 call!608206)))

(declare-fun b!6732715 () Bool)

(declare-fun res!2754382 () Bool)

(assert (=> b!6732715 (=> res!2754382 e!4067301)))

(assert (=> b!6732715 (= res!2754382 (not ((_ is Concat!25404) lt!2437967)))))

(assert (=> b!6732715 (= e!4067302 e!4067301)))

(declare-fun b!6732716 () Bool)

(assert (=> b!6732716 (= e!4067305 e!4067299)))

(declare-fun res!2754380 () Bool)

(assert (=> b!6732716 (= res!2754380 (not (nullable!6546 (reg!16888 lt!2437967))))))

(assert (=> b!6732716 (=> (not res!2754380) (not e!4067299))))

(declare-fun b!6732717 () Bool)

(assert (=> b!6732717 (= e!4067300 call!608207)))

(declare-fun b!6732718 () Bool)

(assert (=> b!6732718 (= e!4067304 call!608207)))

(assert (= (and d!2115465 (not res!2754379)) b!6732712))

(assert (= (and b!6732712 c!1248585) b!6732716))

(assert (= (and b!6732712 (not c!1248585)) b!6732713))

(assert (= (and b!6732716 res!2754380) b!6732711))

(assert (= (and b!6732713 c!1248584) b!6732710))

(assert (= (and b!6732713 (not c!1248584)) b!6732715))

(assert (= (and b!6732710 res!2754383) b!6732718))

(assert (= (and b!6732715 (not res!2754382)) b!6732714))

(assert (= (and b!6732714 res!2754381) b!6732717))

(assert (= (or b!6732718 b!6732717) bm!608202))

(assert (= (or b!6732710 b!6732714) bm!608203))

(assert (= (or b!6732711 bm!608203) bm!608201))

(declare-fun m!7491016 () Bool)

(assert (=> bm!608201 m!7491016))

(declare-fun m!7491018 () Bool)

(assert (=> bm!608202 m!7491018))

(declare-fun m!7491020 () Bool)

(assert (=> b!6732716 m!7491020))

(assert (=> d!2115197 d!2115465))

(assert (=> d!2115197 d!2115069))

(assert (=> d!2115197 d!2115077))

(declare-fun b!6732723 () Bool)

(declare-fun e!4067310 () (InoxSet Context!11886))

(declare-fun call!608209 () (InoxSet Context!11886))

(assert (=> b!6732723 (= e!4067310 call!608209)))

(declare-fun b!6732724 () Bool)

(declare-fun e!4067309 () (InoxSet Context!11886))

(assert (=> b!6732724 (= e!4067309 e!4067310)))

(declare-fun c!1248588 () Bool)

(assert (=> b!6732724 (= c!1248588 ((_ is Cons!65852) (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343)))))))))

(declare-fun d!2115467 () Bool)

(declare-fun c!1248589 () Bool)

(declare-fun e!4067308 () Bool)

(assert (=> d!2115467 (= c!1248589 e!4067308)))

(declare-fun res!2754384 () Bool)

(assert (=> d!2115467 (=> (not res!2754384) (not e!4067308))))

(assert (=> d!2115467 (= res!2754384 ((_ is Cons!65852) (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343)))))))))

(assert (=> d!2115467 (= (derivationStepZipperUp!1713 (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343)))) (h!72302 s!2326)) e!4067309)))

(declare-fun b!6732725 () Bool)

(assert (=> b!6732725 (= e!4067310 ((as const (Array Context!11886 Bool)) false))))

(declare-fun b!6732726 () Bool)

(assert (=> b!6732726 (= e!4067308 (nullable!6546 (h!72300 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343))))))))))

(declare-fun bm!608204 () Bool)

(assert (=> bm!608204 (= call!608209 (derivationStepZipperDown!1787 (h!72300 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343)))))) (Context!11887 (t!379665 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343))))))) (h!72302 s!2326)))))

(declare-fun b!6732727 () Bool)

(assert (=> b!6732727 (= e!4067309 ((_ map or) call!608209 (derivationStepZipperUp!1713 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343))))))) (h!72302 s!2326))))))

(assert (= (and d!2115467 res!2754384) b!6732726))

(assert (= (and d!2115467 c!1248589) b!6732727))

(assert (= (and d!2115467 (not c!1248589)) b!6732724))

(assert (= (and b!6732724 c!1248588) b!6732723))

(assert (= (and b!6732724 (not c!1248588)) b!6732725))

(assert (= (or b!6732727 b!6732723) bm!608204))

(declare-fun m!7491022 () Bool)

(assert (=> b!6732726 m!7491022))

(declare-fun m!7491024 () Bool)

(assert (=> bm!608204 m!7491024))

(declare-fun m!7491026 () Bool)

(assert (=> b!6732727 m!7491026))

(assert (=> b!6731681 d!2115467))

(declare-fun bm!608205 () Bool)

(declare-fun call!608214 () List!65976)

(declare-fun call!608215 () List!65976)

(assert (=> bm!608205 (= call!608214 call!608215)))

(declare-fun d!2115469 () Bool)

(declare-fun c!1248593 () Bool)

(assert (=> d!2115469 (= c!1248593 (and ((_ is ElementMatch!16559) (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292)))))) (= (c!1248231 (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292)))))) (h!72302 s!2326))))))

(declare-fun e!4067316 () (InoxSet Context!11886))

(assert (=> d!2115469 (= (derivationStepZipperDown!1787 (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292))))) (ite (or c!1248400 c!1248403) lt!2437873 (Context!11887 call!608078)) (h!72302 s!2326)) e!4067316)))

(declare-fun b!6732728 () Bool)

(declare-fun e!4067313 () (InoxSet Context!11886))

(declare-fun e!4067314 () (InoxSet Context!11886))

(assert (=> b!6732728 (= e!4067313 e!4067314)))

(declare-fun c!1248590 () Bool)

(assert (=> b!6732728 (= c!1248590 ((_ is Concat!25404) (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292)))))))))

(declare-fun b!6732729 () Bool)

(declare-fun call!608211 () (InoxSet Context!11886))

(declare-fun call!608212 () (InoxSet Context!11886))

(assert (=> b!6732729 (= e!4067313 ((_ map or) call!608211 call!608212))))

(declare-fun b!6732730 () Bool)

(declare-fun e!4067311 () (InoxSet Context!11886))

(declare-fun call!608210 () (InoxSet Context!11886))

(assert (=> b!6732730 (= e!4067311 ((_ map or) call!608210 call!608211))))

(declare-fun bm!608206 () Bool)

(assert (=> bm!608206 (= call!608212 call!608210)))

(declare-fun e!4067315 () Bool)

(declare-fun b!6732733 () Bool)

(assert (=> b!6732733 (= e!4067315 (nullable!6546 (regOne!33630 (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292))))))))))

(declare-fun b!6732734 () Bool)

(declare-fun call!608213 () (InoxSet Context!11886))

(assert (=> b!6732734 (= e!4067314 call!608213)))

(declare-fun bm!608207 () Bool)

(declare-fun c!1248591 () Bool)

(assert (=> bm!608207 (= call!608211 (derivationStepZipperDown!1787 (ite c!1248591 (regTwo!33631 (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292)))))) (regOne!33630 (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292))))))) (ite c!1248591 (ite (or c!1248400 c!1248403) lt!2437873 (Context!11887 call!608078)) (Context!11887 call!608215)) (h!72302 s!2326)))))

(declare-fun b!6732735 () Bool)

(assert (=> b!6732735 (= e!4067316 e!4067311)))

(assert (=> b!6732735 (= c!1248591 ((_ is Union!16559) (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292)))))))))

(declare-fun b!6732736 () Bool)

(declare-fun e!4067312 () (InoxSet Context!11886))

(assert (=> b!6732736 (= e!4067312 ((as const (Array Context!11886 Bool)) false))))

(declare-fun c!1248594 () Bool)

(declare-fun bm!608208 () Bool)

(assert (=> bm!608208 (= call!608215 ($colon$colon!2376 (exprs!6443 (ite (or c!1248400 c!1248403) lt!2437873 (Context!11887 call!608078))) (ite (or c!1248594 c!1248590) (regTwo!33630 (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292)))))) (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292))))))))))

(declare-fun b!6732737 () Bool)

(assert (=> b!6732737 (= e!4067316 (store ((as const (Array Context!11886 Bool)) false) (ite (or c!1248400 c!1248403) lt!2437873 (Context!11887 call!608078)) true))))

(declare-fun bm!608209 () Bool)

(assert (=> bm!608209 (= call!608213 call!608212)))

(declare-fun bm!608210 () Bool)

(assert (=> bm!608210 (= call!608210 (derivationStepZipperDown!1787 (ite c!1248591 (regOne!33631 (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292)))))) (ite c!1248594 (regTwo!33630 (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292)))))) (ite c!1248590 (regOne!33630 (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292)))))) (reg!16888 (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292))))))))) (ite (or c!1248591 c!1248594) (ite (or c!1248400 c!1248403) lt!2437873 (Context!11887 call!608078)) (Context!11887 call!608214)) (h!72302 s!2326)))))

(declare-fun b!6732738 () Bool)

(assert (=> b!6732738 (= c!1248594 e!4067315)))

(declare-fun res!2754385 () Bool)

(assert (=> b!6732738 (=> (not res!2754385) (not e!4067315))))

(assert (=> b!6732738 (= res!2754385 ((_ is Concat!25404) (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292)))))))))

(assert (=> b!6732738 (= e!4067311 e!4067313)))

(declare-fun b!6732739 () Bool)

(assert (=> b!6732739 (= e!4067312 call!608213)))

(declare-fun b!6732740 () Bool)

(declare-fun c!1248592 () Bool)

(assert (=> b!6732740 (= c!1248592 ((_ is Star!16559) (ite c!1248400 (regOne!33631 (reg!16888 r!7292)) (ite c!1248403 (regTwo!33630 (reg!16888 r!7292)) (ite c!1248399 (regOne!33630 (reg!16888 r!7292)) (reg!16888 (reg!16888 r!7292)))))))))

(assert (=> b!6732740 (= e!4067314 e!4067312)))

(assert (= (and d!2115469 c!1248593) b!6732737))

(assert (= (and d!2115469 (not c!1248593)) b!6732735))

(assert (= (and b!6732735 c!1248591) b!6732730))

(assert (= (and b!6732735 (not c!1248591)) b!6732738))

(assert (= (and b!6732738 res!2754385) b!6732733))

(assert (= (and b!6732738 c!1248594) b!6732729))

(assert (= (and b!6732738 (not c!1248594)) b!6732728))

(assert (= (and b!6732728 c!1248590) b!6732734))

(assert (= (and b!6732728 (not c!1248590)) b!6732740))

(assert (= (and b!6732740 c!1248592) b!6732739))

(assert (= (and b!6732740 (not c!1248592)) b!6732736))

(assert (= (or b!6732734 b!6732739) bm!608205))

(assert (= (or b!6732734 b!6732739) bm!608209))

(assert (= (or b!6732729 bm!608205) bm!608208))

(assert (= (or b!6732729 bm!608209) bm!608206))

(assert (= (or b!6732730 b!6732729) bm!608207))

(assert (= (or b!6732730 bm!608206) bm!608210))

(declare-fun m!7491032 () Bool)

(assert (=> bm!608210 m!7491032))

(declare-fun m!7491034 () Bool)

(assert (=> bm!608208 m!7491034))

(declare-fun m!7491036 () Bool)

(assert (=> bm!608207 m!7491036))

(declare-fun m!7491038 () Bool)

(assert (=> b!6732737 m!7491038))

(declare-fun m!7491040 () Bool)

(assert (=> b!6732733 m!7491040))

(assert (=> bm!608074 d!2115469))

(declare-fun d!2115473 () Bool)

(assert (=> d!2115473 (= (isEmpty!38186 (tail!12631 s!2326)) ((_ is Nil!65854) (tail!12631 s!2326)))))

(assert (=> b!6731870 d!2115473))

(assert (=> b!6731870 d!2115425))

(declare-fun d!2115475 () Bool)

(declare-fun lambda!377948 () Int)

(declare-fun exists!2693 ((InoxSet Context!11886) Int) Bool)

(assert (=> d!2115475 (= (nullableZipper!2274 lt!2437868) (exists!2693 lt!2437868 lambda!377948))))

(declare-fun bs!1790516 () Bool)

(assert (= bs!1790516 d!2115475))

(declare-fun m!7491052 () Bool)

(assert (=> bs!1790516 m!7491052))

(assert (=> b!6732014 d!2115475))

(declare-fun d!2115479 () Bool)

(assert (=> d!2115479 (= (nullable!6546 (h!72300 (exprs!6443 (h!72301 zl!343)))) (nullableFct!2460 (h!72300 (exprs!6443 (h!72301 zl!343)))))))

(declare-fun bs!1790517 () Bool)

(assert (= bs!1790517 d!2115479))

(declare-fun m!7491054 () Bool)

(assert (=> bs!1790517 m!7491054))

(assert (=> b!6731680 d!2115479))

(declare-fun bs!1790518 () Bool)

(declare-fun d!2115481 () Bool)

(assert (= bs!1790518 (and d!2115481 d!2115077)))

(declare-fun lambda!377949 () Int)

(assert (=> bs!1790518 (= lambda!377949 lambda!377854)))

(declare-fun bs!1790519 () Bool)

(assert (= bs!1790519 (and d!2115481 d!2115081)))

(assert (=> bs!1790519 (= lambda!377949 lambda!377855)))

(declare-fun bs!1790520 () Bool)

(assert (= bs!1790520 (and d!2115481 d!2115063)))

(assert (=> bs!1790520 (= lambda!377949 lambda!377836)))

(declare-fun bs!1790521 () Bool)

(assert (= bs!1790521 (and d!2115481 d!2115203)))

(assert (=> bs!1790521 (= lambda!377949 lambda!377911)))

(declare-fun bs!1790522 () Bool)

(assert (= bs!1790522 (and d!2115481 d!2115199)))

(assert (=> bs!1790522 (= lambda!377949 lambda!377910)))

(declare-fun bs!1790523 () Bool)

(assert (= bs!1790523 (and d!2115481 d!2115431)))

(assert (=> bs!1790523 (= lambda!377949 lambda!377944)))

(declare-fun bs!1790524 () Bool)

(assert (= bs!1790524 (and d!2115481 d!2115435)))

(assert (=> bs!1790524 (= lambda!377949 lambda!377945)))

(declare-fun bs!1790525 () Bool)

(assert (= bs!1790525 (and d!2115481 d!2115069)))

(assert (=> bs!1790525 (= lambda!377949 lambda!377845)))

(assert (=> d!2115481 (= (inv!84644 setElem!45927) (forall!15759 (exprs!6443 setElem!45927) lambda!377949))))

(declare-fun bs!1790526 () Bool)

(assert (= bs!1790526 d!2115481))

(declare-fun m!7491056 () Bool)

(assert (=> bs!1790526 m!7491056))

(assert (=> setNonEmpty!45927 d!2115481))

(assert (=> d!2115093 d!2115083))

(declare-fun d!2115483 () Bool)

(assert (=> d!2115483 (= (flatMap!2040 z!1189 lambda!377833) (dynLambda!26268 lambda!377833 (h!72301 zl!343)))))

(assert (=> d!2115483 true))

(declare-fun _$13!4046 () Unit!159809)

(assert (=> d!2115483 (= (choose!50167 z!1189 (h!72301 zl!343) lambda!377833) _$13!4046)))

(declare-fun b_lambda!253487 () Bool)

(assert (=> (not b_lambda!253487) (not d!2115483)))

(declare-fun bs!1790527 () Bool)

(assert (= bs!1790527 d!2115483))

(assert (=> bs!1790527 m!7489992))

(assert (=> bs!1790527 m!7490142))

(assert (=> d!2115093 d!2115483))

(declare-fun d!2115485 () Bool)

(assert (=> d!2115485 (= (head!13545 (exprs!6443 (h!72301 zl!343))) (h!72300 (exprs!6443 (h!72301 zl!343))))))

(assert (=> b!6732106 d!2115485))

(declare-fun bm!608217 () Bool)

(declare-fun call!608226 () List!65976)

(declare-fun call!608227 () List!65976)

(assert (=> bm!608217 (= call!608226 call!608227)))

(declare-fun c!1248606 () Bool)

(declare-fun d!2115487 () Bool)

(assert (=> d!2115487 (= c!1248606 (and ((_ is ElementMatch!16559) (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292))) (= (c!1248231 (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292))) (h!72302 s!2326))))))

(declare-fun e!4067329 () (InoxSet Context!11886))

(assert (=> d!2115487 (= (derivationStepZipperDown!1787 (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292)) (ite c!1248381 (Context!11887 Nil!65852) (Context!11887 call!608072)) (h!72302 s!2326)) e!4067329)))

(declare-fun b!6732752 () Bool)

(declare-fun e!4067326 () (InoxSet Context!11886))

(declare-fun e!4067327 () (InoxSet Context!11886))

(assert (=> b!6732752 (= e!4067326 e!4067327)))

(declare-fun c!1248603 () Bool)

(assert (=> b!6732752 (= c!1248603 ((_ is Concat!25404) (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292))))))

(declare-fun b!6732753 () Bool)

(declare-fun call!608223 () (InoxSet Context!11886))

(declare-fun call!608224 () (InoxSet Context!11886))

(assert (=> b!6732753 (= e!4067326 ((_ map or) call!608223 call!608224))))

(declare-fun b!6732754 () Bool)

(declare-fun e!4067324 () (InoxSet Context!11886))

(declare-fun call!608222 () (InoxSet Context!11886))

(assert (=> b!6732754 (= e!4067324 ((_ map or) call!608222 call!608223))))

(declare-fun bm!608218 () Bool)

(assert (=> bm!608218 (= call!608224 call!608222)))

(declare-fun b!6732755 () Bool)

(declare-fun e!4067328 () Bool)

(assert (=> b!6732755 (= e!4067328 (nullable!6546 (regOne!33630 (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292)))))))

(declare-fun b!6732756 () Bool)

(declare-fun call!608225 () (InoxSet Context!11886))

(assert (=> b!6732756 (= e!4067327 call!608225)))

(declare-fun c!1248604 () Bool)

(declare-fun bm!608219 () Bool)

(assert (=> bm!608219 (= call!608223 (derivationStepZipperDown!1787 (ite c!1248604 (regTwo!33631 (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292))) (regOne!33630 (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292)))) (ite c!1248604 (ite c!1248381 (Context!11887 Nil!65852) (Context!11887 call!608072)) (Context!11887 call!608227)) (h!72302 s!2326)))))

(declare-fun b!6732757 () Bool)

(assert (=> b!6732757 (= e!4067329 e!4067324)))

(assert (=> b!6732757 (= c!1248604 ((_ is Union!16559) (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292))))))

(declare-fun b!6732758 () Bool)

(declare-fun e!4067325 () (InoxSet Context!11886))

(assert (=> b!6732758 (= e!4067325 ((as const (Array Context!11886 Bool)) false))))

(declare-fun c!1248607 () Bool)

(declare-fun bm!608220 () Bool)

(assert (=> bm!608220 (= call!608227 ($colon$colon!2376 (exprs!6443 (ite c!1248381 (Context!11887 Nil!65852) (Context!11887 call!608072))) (ite (or c!1248607 c!1248603) (regTwo!33630 (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292))) (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292)))))))

(declare-fun b!6732759 () Bool)

(assert (=> b!6732759 (= e!4067329 (store ((as const (Array Context!11886 Bool)) false) (ite c!1248381 (Context!11887 Nil!65852) (Context!11887 call!608072)) true))))

(declare-fun bm!608221 () Bool)

(assert (=> bm!608221 (= call!608225 call!608224)))

(declare-fun bm!608222 () Bool)

(assert (=> bm!608222 (= call!608222 (derivationStepZipperDown!1787 (ite c!1248604 (regOne!33631 (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292))) (ite c!1248607 (regTwo!33630 (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292))) (ite c!1248603 (regOne!33630 (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292))) (reg!16888 (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292)))))) (ite (or c!1248604 c!1248607) (ite c!1248381 (Context!11887 Nil!65852) (Context!11887 call!608072)) (Context!11887 call!608226)) (h!72302 s!2326)))))

(declare-fun b!6732760 () Bool)

(assert (=> b!6732760 (= c!1248607 e!4067328)))

(declare-fun res!2754387 () Bool)

(assert (=> b!6732760 (=> (not res!2754387) (not e!4067328))))

(assert (=> b!6732760 (= res!2754387 ((_ is Concat!25404) (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292))))))

(assert (=> b!6732760 (= e!4067324 e!4067326)))

(declare-fun b!6732761 () Bool)

(assert (=> b!6732761 (= e!4067325 call!608225)))

(declare-fun b!6732762 () Bool)

(declare-fun c!1248605 () Bool)

(assert (=> b!6732762 (= c!1248605 ((_ is Star!16559) (ite c!1248381 (regTwo!33631 r!7292) (regOne!33630 r!7292))))))

(assert (=> b!6732762 (= e!4067327 e!4067325)))

(assert (= (and d!2115487 c!1248606) b!6732759))

(assert (= (and d!2115487 (not c!1248606)) b!6732757))

(assert (= (and b!6732757 c!1248604) b!6732754))

(assert (= (and b!6732757 (not c!1248604)) b!6732760))

(assert (= (and b!6732760 res!2754387) b!6732755))

(assert (= (and b!6732760 c!1248607) b!6732753))

(assert (= (and b!6732760 (not c!1248607)) b!6732752))

(assert (= (and b!6732752 c!1248603) b!6732756))

(assert (= (and b!6732752 (not c!1248603)) b!6732762))

(assert (= (and b!6732762 c!1248605) b!6732761))

(assert (= (and b!6732762 (not c!1248605)) b!6732758))

(assert (= (or b!6732756 b!6732761) bm!608217))

(assert (= (or b!6732756 b!6732761) bm!608221))

(assert (= (or b!6732753 bm!608217) bm!608220))

(assert (= (or b!6732753 bm!608221) bm!608218))

(assert (= (or b!6732754 b!6732753) bm!608219))

(assert (= (or b!6732754 bm!608218) bm!608222))

(declare-fun m!7491058 () Bool)

(assert (=> bm!608222 m!7491058))

(declare-fun m!7491060 () Bool)

(assert (=> bm!608220 m!7491060))

(declare-fun m!7491062 () Bool)

(assert (=> bm!608219 m!7491062))

(declare-fun m!7491064 () Bool)

(assert (=> b!6732759 m!7491064))

(declare-fun m!7491066 () Bool)

(assert (=> b!6732755 m!7491066))

(assert (=> bm!608064 d!2115487))

(declare-fun d!2115489 () Bool)

(assert (=> d!2115489 (= (isEmpty!38188 (tail!12630 (exprs!6443 (h!72301 zl!343)))) ((_ is Nil!65852) (tail!12630 (exprs!6443 (h!72301 zl!343)))))))

(assert (=> b!6732108 d!2115489))

(declare-fun d!2115491 () Bool)

(assert (=> d!2115491 (= (tail!12630 (exprs!6443 (h!72301 zl!343))) (t!379665 (exprs!6443 (h!72301 zl!343))))))

(assert (=> b!6732108 d!2115491))

(declare-fun d!2115493 () Bool)

(assert (=> d!2115493 true))

(assert (=> d!2115493 true))

(declare-fun res!2754394 () Bool)

(assert (=> d!2115493 (= (choose!50174 lambda!377832) res!2754394)))

(assert (=> d!2115179 d!2115493))

(declare-fun b!6732767 () Bool)

(declare-fun res!2754402 () Bool)

(declare-fun e!4067337 () Bool)

(assert (=> b!6732767 (=> (not res!2754402) (not e!4067337))))

(declare-fun call!608228 () Bool)

(assert (=> b!6732767 (= res!2754402 (not call!608228))))

(declare-fun b!6732768 () Bool)

(declare-fun e!4067338 () Bool)

(declare-fun lt!2438003 () Bool)

(assert (=> b!6732768 (= e!4067338 (= lt!2438003 call!608228))))

(declare-fun b!6732769 () Bool)

(declare-fun res!2754401 () Bool)

(assert (=> b!6732769 (=> (not res!2754401) (not e!4067337))))

(assert (=> b!6732769 (= res!2754401 (isEmpty!38186 (tail!12631 (_1!36837 (get!22910 lt!2437959)))))))

(declare-fun b!6732770 () Bool)

(declare-fun res!2754399 () Bool)

(declare-fun e!4067334 () Bool)

(assert (=> b!6732770 (=> res!2754399 e!4067334)))

(assert (=> b!6732770 (= res!2754399 (not ((_ is ElementMatch!16559) (reg!16888 r!7292))))))

(declare-fun e!4067336 () Bool)

(assert (=> b!6732770 (= e!4067336 e!4067334)))

(declare-fun b!6732771 () Bool)

(declare-fun e!4067332 () Bool)

(assert (=> b!6732771 (= e!4067332 (not (= (head!13546 (_1!36837 (get!22910 lt!2437959))) (c!1248231 (reg!16888 r!7292)))))))

(declare-fun b!6732772 () Bool)

(declare-fun e!4067335 () Bool)

(assert (=> b!6732772 (= e!4067335 e!4067332)))

(declare-fun res!2754396 () Bool)

(assert (=> b!6732772 (=> res!2754396 e!4067332)))

(assert (=> b!6732772 (= res!2754396 call!608228)))

(declare-fun b!6732773 () Bool)

(assert (=> b!6732773 (= e!4067338 e!4067336)))

(declare-fun c!1248608 () Bool)

(assert (=> b!6732773 (= c!1248608 ((_ is EmptyLang!16559) (reg!16888 r!7292)))))

(declare-fun b!6732774 () Bool)

(declare-fun e!4067333 () Bool)

(assert (=> b!6732774 (= e!4067333 (nullable!6546 (reg!16888 r!7292)))))

(declare-fun b!6732775 () Bool)

(declare-fun res!2754398 () Bool)

(assert (=> b!6732775 (=> res!2754398 e!4067334)))

(assert (=> b!6732775 (= res!2754398 e!4067337)))

(declare-fun res!2754400 () Bool)

(assert (=> b!6732775 (=> (not res!2754400) (not e!4067337))))

(assert (=> b!6732775 (= res!2754400 lt!2438003)))

(declare-fun d!2115495 () Bool)

(assert (=> d!2115495 e!4067338))

(declare-fun c!1248610 () Bool)

(assert (=> d!2115495 (= c!1248610 ((_ is EmptyExpr!16559) (reg!16888 r!7292)))))

(assert (=> d!2115495 (= lt!2438003 e!4067333)))

(declare-fun c!1248609 () Bool)

(assert (=> d!2115495 (= c!1248609 (isEmpty!38186 (_1!36837 (get!22910 lt!2437959))))))

(assert (=> d!2115495 (validRegex!8295 (reg!16888 r!7292))))

(assert (=> d!2115495 (= (matchR!8742 (reg!16888 r!7292) (_1!36837 (get!22910 lt!2437959))) lt!2438003)))

(declare-fun b!6732776 () Bool)

(assert (=> b!6732776 (= e!4067333 (matchR!8742 (derivativeStep!5231 (reg!16888 r!7292) (head!13546 (_1!36837 (get!22910 lt!2437959)))) (tail!12631 (_1!36837 (get!22910 lt!2437959)))))))

(declare-fun b!6732777 () Bool)

(assert (=> b!6732777 (= e!4067334 e!4067335)))

(declare-fun res!2754397 () Bool)

(assert (=> b!6732777 (=> (not res!2754397) (not e!4067335))))

(assert (=> b!6732777 (= res!2754397 (not lt!2438003))))

(declare-fun b!6732778 () Bool)

(assert (=> b!6732778 (= e!4067337 (= (head!13546 (_1!36837 (get!22910 lt!2437959))) (c!1248231 (reg!16888 r!7292))))))

(declare-fun b!6732779 () Bool)

(declare-fun res!2754395 () Bool)

(assert (=> b!6732779 (=> res!2754395 e!4067332)))

(assert (=> b!6732779 (= res!2754395 (not (isEmpty!38186 (tail!12631 (_1!36837 (get!22910 lt!2437959))))))))

(declare-fun b!6732780 () Bool)

(assert (=> b!6732780 (= e!4067336 (not lt!2438003))))

(declare-fun bm!608223 () Bool)

(assert (=> bm!608223 (= call!608228 (isEmpty!38186 (_1!36837 (get!22910 lt!2437959))))))

(assert (= (and d!2115495 c!1248609) b!6732774))

(assert (= (and d!2115495 (not c!1248609)) b!6732776))

(assert (= (and d!2115495 c!1248610) b!6732768))

(assert (= (and d!2115495 (not c!1248610)) b!6732773))

(assert (= (and b!6732773 c!1248608) b!6732780))

(assert (= (and b!6732773 (not c!1248608)) b!6732770))

(assert (= (and b!6732770 (not res!2754399)) b!6732775))

(assert (= (and b!6732775 res!2754400) b!6732767))

(assert (= (and b!6732767 res!2754402) b!6732769))

(assert (= (and b!6732769 res!2754401) b!6732778))

(assert (= (and b!6732775 (not res!2754398)) b!6732777))

(assert (= (and b!6732777 res!2754397) b!6732772))

(assert (= (and b!6732772 (not res!2754396)) b!6732779))

(assert (= (and b!6732779 (not res!2754395)) b!6732771))

(assert (= (or b!6732768 b!6732767 b!6732772) bm!608223))

(declare-fun m!7491068 () Bool)

(assert (=> b!6732769 m!7491068))

(assert (=> b!6732769 m!7491068))

(declare-fun m!7491070 () Bool)

(assert (=> b!6732769 m!7491070))

(declare-fun m!7491072 () Bool)

(assert (=> b!6732778 m!7491072))

(assert (=> b!6732774 m!7490440))

(assert (=> b!6732776 m!7491072))

(assert (=> b!6732776 m!7491072))

(declare-fun m!7491074 () Bool)

(assert (=> b!6732776 m!7491074))

(assert (=> b!6732776 m!7491068))

(assert (=> b!6732776 m!7491074))

(assert (=> b!6732776 m!7491068))

(declare-fun m!7491076 () Bool)

(assert (=> b!6732776 m!7491076))

(declare-fun m!7491078 () Bool)

(assert (=> d!2115495 m!7491078))

(assert (=> d!2115495 m!7490348))

(assert (=> b!6732779 m!7491068))

(assert (=> b!6732779 m!7491068))

(assert (=> b!6732779 m!7491070))

(assert (=> b!6732771 m!7491072))

(assert (=> bm!608223 m!7491078))

(assert (=> b!6732062 d!2115495))

(assert (=> b!6732062 d!2115345))

(declare-fun bm!608224 () Bool)

(declare-fun call!608233 () List!65976)

(declare-fun call!608234 () List!65976)

(assert (=> bm!608224 (= call!608233 call!608234)))

(declare-fun d!2115497 () Bool)

(declare-fun c!1248614 () Bool)

(assert (=> d!2115497 (= c!1248614 (and ((_ is ElementMatch!16559) (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292)))) (= (c!1248231 (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292)))) (h!72302 s!2326))))))

(declare-fun e!4067344 () (InoxSet Context!11886))

(assert (=> d!2115497 (= (derivationStepZipperDown!1787 (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292))) (ite c!1248400 lt!2437873 (Context!11887 call!608079)) (h!72302 s!2326)) e!4067344)))

(declare-fun b!6732781 () Bool)

(declare-fun e!4067341 () (InoxSet Context!11886))

(declare-fun e!4067342 () (InoxSet Context!11886))

(assert (=> b!6732781 (= e!4067341 e!4067342)))

(declare-fun c!1248611 () Bool)

(assert (=> b!6732781 (= c!1248611 ((_ is Concat!25404) (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292)))))))

(declare-fun b!6732782 () Bool)

(declare-fun call!608230 () (InoxSet Context!11886))

(declare-fun call!608231 () (InoxSet Context!11886))

(assert (=> b!6732782 (= e!4067341 ((_ map or) call!608230 call!608231))))

(declare-fun b!6732783 () Bool)

(declare-fun e!4067339 () (InoxSet Context!11886))

(declare-fun call!608229 () (InoxSet Context!11886))

(assert (=> b!6732783 (= e!4067339 ((_ map or) call!608229 call!608230))))

(declare-fun bm!608225 () Bool)

(assert (=> bm!608225 (= call!608231 call!608229)))

(declare-fun b!6732784 () Bool)

(declare-fun e!4067343 () Bool)

(assert (=> b!6732784 (= e!4067343 (nullable!6546 (regOne!33630 (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292))))))))

(declare-fun b!6732785 () Bool)

(declare-fun call!608232 () (InoxSet Context!11886))

(assert (=> b!6732785 (= e!4067342 call!608232)))

(declare-fun bm!608226 () Bool)

(declare-fun c!1248612 () Bool)

(assert (=> bm!608226 (= call!608230 (derivationStepZipperDown!1787 (ite c!1248612 (regTwo!33631 (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292)))) (regOne!33630 (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292))))) (ite c!1248612 (ite c!1248400 lt!2437873 (Context!11887 call!608079)) (Context!11887 call!608234)) (h!72302 s!2326)))))

(declare-fun b!6732786 () Bool)

(assert (=> b!6732786 (= e!4067344 e!4067339)))

(assert (=> b!6732786 (= c!1248612 ((_ is Union!16559) (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292)))))))

(declare-fun b!6732787 () Bool)

(declare-fun e!4067340 () (InoxSet Context!11886))

(assert (=> b!6732787 (= e!4067340 ((as const (Array Context!11886 Bool)) false))))

(declare-fun bm!608227 () Bool)

(declare-fun c!1248615 () Bool)

(assert (=> bm!608227 (= call!608234 ($colon$colon!2376 (exprs!6443 (ite c!1248400 lt!2437873 (Context!11887 call!608079))) (ite (or c!1248615 c!1248611) (regTwo!33630 (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292)))) (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292))))))))

(declare-fun b!6732788 () Bool)

(assert (=> b!6732788 (= e!4067344 (store ((as const (Array Context!11886 Bool)) false) (ite c!1248400 lt!2437873 (Context!11887 call!608079)) true))))

(declare-fun bm!608228 () Bool)

(assert (=> bm!608228 (= call!608232 call!608231)))

(declare-fun bm!608229 () Bool)

(assert (=> bm!608229 (= call!608229 (derivationStepZipperDown!1787 (ite c!1248612 (regOne!33631 (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292)))) (ite c!1248615 (regTwo!33630 (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292)))) (ite c!1248611 (regOne!33630 (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292)))) (reg!16888 (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292))))))) (ite (or c!1248612 c!1248615) (ite c!1248400 lt!2437873 (Context!11887 call!608079)) (Context!11887 call!608233)) (h!72302 s!2326)))))

(declare-fun b!6732789 () Bool)

(assert (=> b!6732789 (= c!1248615 e!4067343)))

(declare-fun res!2754403 () Bool)

(assert (=> b!6732789 (=> (not res!2754403) (not e!4067343))))

(assert (=> b!6732789 (= res!2754403 ((_ is Concat!25404) (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292)))))))

(assert (=> b!6732789 (= e!4067339 e!4067341)))

(declare-fun b!6732790 () Bool)

(assert (=> b!6732790 (= e!4067340 call!608232)))

(declare-fun b!6732791 () Bool)

(declare-fun c!1248613 () Bool)

(assert (=> b!6732791 (= c!1248613 ((_ is Star!16559) (ite c!1248400 (regTwo!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292)))))))

(assert (=> b!6732791 (= e!4067342 e!4067340)))

(assert (= (and d!2115497 c!1248614) b!6732788))

(assert (= (and d!2115497 (not c!1248614)) b!6732786))

(assert (= (and b!6732786 c!1248612) b!6732783))

(assert (= (and b!6732786 (not c!1248612)) b!6732789))

(assert (= (and b!6732789 res!2754403) b!6732784))

(assert (= (and b!6732789 c!1248615) b!6732782))

(assert (= (and b!6732789 (not c!1248615)) b!6732781))

(assert (= (and b!6732781 c!1248611) b!6732785))

(assert (= (and b!6732781 (not c!1248611)) b!6732791))

(assert (= (and b!6732791 c!1248613) b!6732790))

(assert (= (and b!6732791 (not c!1248613)) b!6732787))

(assert (= (or b!6732785 b!6732790) bm!608224))

(assert (= (or b!6732785 b!6732790) bm!608228))

(assert (= (or b!6732782 bm!608224) bm!608227))

(assert (= (or b!6732782 bm!608228) bm!608225))

(assert (= (or b!6732783 b!6732782) bm!608226))

(assert (= (or b!6732783 bm!608225) bm!608229))

(declare-fun m!7491084 () Bool)

(assert (=> bm!608229 m!7491084))

(declare-fun m!7491086 () Bool)

(assert (=> bm!608227 m!7491086))

(declare-fun m!7491088 () Bool)

(assert (=> bm!608226 m!7491088))

(declare-fun m!7491090 () Bool)

(assert (=> b!6732788 m!7491090))

(declare-fun m!7491092 () Bool)

(assert (=> b!6732784 m!7491092))

(assert (=> bm!608071 d!2115497))

(declare-fun d!2115505 () Bool)

(assert (=> d!2115505 true))

(declare-fun setRes!45934 () Bool)

(assert (=> d!2115505 setRes!45934))

(declare-fun condSetEmpty!45934 () Bool)

(declare-fun res!2754406 () (InoxSet Context!11886))

(assert (=> d!2115505 (= condSetEmpty!45934 (= res!2754406 ((as const (Array Context!11886 Bool)) false)))))

(assert (=> d!2115505 (= (choose!50166 lt!2437868 lambda!377833) res!2754406)))

(declare-fun setIsEmpty!45934 () Bool)

(assert (=> setIsEmpty!45934 setRes!45934))

(declare-fun setElem!45934 () Context!11886)

(declare-fun tp!1845819 () Bool)

(declare-fun setNonEmpty!45934 () Bool)

(declare-fun e!4067356 () Bool)

(assert (=> setNonEmpty!45934 (= setRes!45934 (and tp!1845819 (inv!84644 setElem!45934) e!4067356))))

(declare-fun setRest!45934 () (InoxSet Context!11886))

(assert (=> setNonEmpty!45934 (= res!2754406 ((_ map or) (store ((as const (Array Context!11886 Bool)) false) setElem!45934 true) setRest!45934))))

(declare-fun b!6732818 () Bool)

(declare-fun tp!1845818 () Bool)

(assert (=> b!6732818 (= e!4067356 tp!1845818)))

(assert (= (and d!2115505 condSetEmpty!45934) setIsEmpty!45934))

(assert (= (and d!2115505 (not condSetEmpty!45934)) setNonEmpty!45934))

(assert (= setNonEmpty!45934 b!6732818))

(declare-fun m!7491096 () Bool)

(assert (=> setNonEmpty!45934 m!7491096))

(assert (=> d!2115189 d!2115505))

(declare-fun bs!1790542 () Bool)

(declare-fun d!2115507 () Bool)

(assert (= bs!1790542 (and d!2115507 d!2115077)))

(declare-fun lambda!377953 () Int)

(assert (=> bs!1790542 (= lambda!377953 lambda!377854)))

(declare-fun bs!1790543 () Bool)

(assert (= bs!1790543 (and d!2115507 d!2115081)))

(assert (=> bs!1790543 (= lambda!377953 lambda!377855)))

(declare-fun bs!1790544 () Bool)

(assert (= bs!1790544 (and d!2115507 d!2115063)))

(assert (=> bs!1790544 (= lambda!377953 lambda!377836)))

(declare-fun bs!1790545 () Bool)

(assert (= bs!1790545 (and d!2115507 d!2115203)))

(assert (=> bs!1790545 (= lambda!377953 lambda!377911)))

(declare-fun bs!1790546 () Bool)

(assert (= bs!1790546 (and d!2115507 d!2115199)))

(assert (=> bs!1790546 (= lambda!377953 lambda!377910)))

(declare-fun bs!1790547 () Bool)

(assert (= bs!1790547 (and d!2115507 d!2115481)))

(assert (=> bs!1790547 (= lambda!377953 lambda!377949)))

(declare-fun bs!1790548 () Bool)

(assert (= bs!1790548 (and d!2115507 d!2115431)))

(assert (=> bs!1790548 (= lambda!377953 lambda!377944)))

(declare-fun bs!1790549 () Bool)

(assert (= bs!1790549 (and d!2115507 d!2115435)))

(assert (=> bs!1790549 (= lambda!377953 lambda!377945)))

(declare-fun bs!1790550 () Bool)

(assert (= bs!1790550 (and d!2115507 d!2115069)))

(assert (=> bs!1790550 (= lambda!377953 lambda!377845)))

(declare-fun b!6732828 () Bool)

(declare-fun e!4067364 () Bool)

(declare-fun lt!2438004 () Regex!16559)

(assert (=> b!6732828 (= e!4067364 (isEmptyExpr!1925 lt!2438004))))

(declare-fun b!6732829 () Bool)

(declare-fun e!4067361 () Regex!16559)

(assert (=> b!6732829 (= e!4067361 (Concat!25404 (h!72300 (t!379665 (exprs!6443 (h!72301 zl!343)))) (generalisedConcat!2156 (t!379665 (t!379665 (exprs!6443 (h!72301 zl!343)))))))))

(declare-fun b!6732830 () Bool)

(declare-fun e!4067362 () Regex!16559)

(assert (=> b!6732830 (= e!4067362 (h!72300 (t!379665 (exprs!6443 (h!72301 zl!343)))))))

(declare-fun b!6732831 () Bool)

(declare-fun e!4067363 () Bool)

(assert (=> b!6732831 (= e!4067363 (= lt!2438004 (head!13545 (t!379665 (exprs!6443 (h!72301 zl!343))))))))

(declare-fun b!6732832 () Bool)

(declare-fun e!4067365 () Bool)

(assert (=> b!6732832 (= e!4067365 (isEmpty!38188 (t!379665 (t!379665 (exprs!6443 (h!72301 zl!343))))))))

(declare-fun b!6732834 () Bool)

(assert (=> b!6732834 (= e!4067363 (isConcat!1448 lt!2438004))))

(declare-fun b!6732835 () Bool)

(assert (=> b!6732835 (= e!4067361 EmptyExpr!16559)))

(declare-fun b!6732836 () Bool)

(assert (=> b!6732836 (= e!4067362 e!4067361)))

(declare-fun c!1248619 () Bool)

(assert (=> b!6732836 (= c!1248619 ((_ is Cons!65852) (t!379665 (exprs!6443 (h!72301 zl!343)))))))

(declare-fun b!6732837 () Bool)

(declare-fun e!4067360 () Bool)

(assert (=> b!6732837 (= e!4067360 e!4067364)))

(declare-fun c!1248616 () Bool)

(assert (=> b!6732837 (= c!1248616 (isEmpty!38188 (t!379665 (exprs!6443 (h!72301 zl!343)))))))

(assert (=> d!2115507 e!4067360))

(declare-fun res!2754408 () Bool)

(assert (=> d!2115507 (=> (not res!2754408) (not e!4067360))))

(assert (=> d!2115507 (= res!2754408 (validRegex!8295 lt!2438004))))

(assert (=> d!2115507 (= lt!2438004 e!4067362)))

(declare-fun c!1248617 () Bool)

(assert (=> d!2115507 (= c!1248617 e!4067365)))

(declare-fun res!2754407 () Bool)

(assert (=> d!2115507 (=> (not res!2754407) (not e!4067365))))

(assert (=> d!2115507 (= res!2754407 ((_ is Cons!65852) (t!379665 (exprs!6443 (h!72301 zl!343)))))))

(assert (=> d!2115507 (forall!15759 (t!379665 (exprs!6443 (h!72301 zl!343))) lambda!377953)))

(assert (=> d!2115507 (= (generalisedConcat!2156 (t!379665 (exprs!6443 (h!72301 zl!343)))) lt!2438004)))

(declare-fun b!6732833 () Bool)

(assert (=> b!6732833 (= e!4067364 e!4067363)))

(declare-fun c!1248618 () Bool)

(assert (=> b!6732833 (= c!1248618 (isEmpty!38188 (tail!12630 (t!379665 (exprs!6443 (h!72301 zl!343))))))))

(assert (= (and d!2115507 res!2754407) b!6732832))

(assert (= (and d!2115507 c!1248617) b!6732830))

(assert (= (and d!2115507 (not c!1248617)) b!6732836))

(assert (= (and b!6732836 c!1248619) b!6732829))

(assert (= (and b!6732836 (not c!1248619)) b!6732835))

(assert (= (and d!2115507 res!2754408) b!6732837))

(assert (= (and b!6732837 c!1248616) b!6732828))

(assert (= (and b!6732837 (not c!1248616)) b!6732833))

(assert (= (and b!6732833 c!1248618) b!6732831))

(assert (= (and b!6732833 (not c!1248618)) b!6732834))

(assert (=> b!6732837 m!7490430))

(declare-fun m!7491098 () Bool)

(assert (=> d!2115507 m!7491098))

(declare-fun m!7491102 () Bool)

(assert (=> d!2115507 m!7491102))

(declare-fun m!7491104 () Bool)

(assert (=> b!6732828 m!7491104))

(declare-fun m!7491106 () Bool)

(assert (=> b!6732833 m!7491106))

(assert (=> b!6732833 m!7491106))

(declare-fun m!7491108 () Bool)

(assert (=> b!6732833 m!7491108))

(declare-fun m!7491110 () Bool)

(assert (=> b!6732829 m!7491110))

(declare-fun m!7491112 () Bool)

(assert (=> b!6732832 m!7491112))

(declare-fun m!7491114 () Bool)

(assert (=> b!6732834 m!7491114))

(declare-fun m!7491116 () Bool)

(assert (=> b!6732831 m!7491116))

(assert (=> b!6732104 d!2115507))

(declare-fun d!2115509 () Bool)

(assert (=> d!2115509 (= (isEmpty!38188 (t!379665 (unfocusZipperList!1980 zl!343))) ((_ is Nil!65852) (t!379665 (unfocusZipperList!1980 zl!343))))))

(assert (=> b!6731574 d!2115509))

(declare-fun d!2115511 () Bool)

(assert (=> d!2115511 (= (nullable!6546 (regOne!33630 r!7292)) (nullableFct!2460 (regOne!33630 r!7292)))))

(declare-fun bs!1790551 () Bool)

(assert (= bs!1790551 d!2115511))

(declare-fun m!7491118 () Bool)

(assert (=> bs!1790551 m!7491118))

(assert (=> b!6731955 d!2115511))

(declare-fun d!2115513 () Bool)

(assert (=> d!2115513 (= (nullable!6546 (reg!16888 r!7292)) (nullableFct!2460 (reg!16888 r!7292)))))

(declare-fun bs!1790552 () Bool)

(assert (= bs!1790552 d!2115513))

(declare-fun m!7491120 () Bool)

(assert (=> bs!1790552 m!7491120))

(assert (=> b!6732137 d!2115513))

(assert (=> bm!608049 d!2115175))

(declare-fun b!6732884 () Bool)

(declare-fun e!4067380 () Bool)

(declare-fun lt!2438005 () List!65978)

(assert (=> b!6732884 (= e!4067380 (or (not (= (t!379667 s!2326) Nil!65854)) (= lt!2438005 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854)))))))

(declare-fun b!6732883 () Bool)

(declare-fun res!2754409 () Bool)

(assert (=> b!6732883 (=> (not res!2754409) (not e!4067380))))

(assert (=> b!6732883 (= res!2754409 (= (size!40608 lt!2438005) (+ (size!40608 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854))) (size!40608 (t!379667 s!2326)))))))

(declare-fun d!2115515 () Bool)

(assert (=> d!2115515 e!4067380))

(declare-fun res!2754410 () Bool)

(assert (=> d!2115515 (=> (not res!2754410) (not e!4067380))))

(assert (=> d!2115515 (= res!2754410 (= (content!12788 lt!2438005) ((_ map or) (content!12788 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854))) (content!12788 (t!379667 s!2326)))))))

(declare-fun e!4067379 () List!65978)

(assert (=> d!2115515 (= lt!2438005 e!4067379)))

(declare-fun c!1248620 () Bool)

(assert (=> d!2115515 (= c!1248620 ((_ is Nil!65854) (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854))))))

(assert (=> d!2115515 (= (++!14715 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854)) (t!379667 s!2326)) lt!2438005)))

(declare-fun b!6732882 () Bool)

(assert (=> b!6732882 (= e!4067379 (Cons!65854 (h!72302 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854))) (++!14715 (t!379667 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854))) (t!379667 s!2326))))))

(declare-fun b!6732881 () Bool)

(assert (=> b!6732881 (= e!4067379 (t!379667 s!2326))))

(assert (= (and d!2115515 c!1248620) b!6732881))

(assert (= (and d!2115515 (not c!1248620)) b!6732882))

(assert (= (and d!2115515 res!2754410) b!6732883))

(assert (= (and b!6732883 res!2754409) b!6732884))

(declare-fun m!7491122 () Bool)

(assert (=> b!6732883 m!7491122))

(assert (=> b!6732883 m!7490374))

(declare-fun m!7491124 () Bool)

(assert (=> b!6732883 m!7491124))

(declare-fun m!7491126 () Bool)

(assert (=> b!6732883 m!7491126))

(declare-fun m!7491128 () Bool)

(assert (=> d!2115515 m!7491128))

(assert (=> d!2115515 m!7490374))

(declare-fun m!7491130 () Bool)

(assert (=> d!2115515 m!7491130))

(declare-fun m!7491132 () Bool)

(assert (=> d!2115515 m!7491132))

(declare-fun m!7491134 () Bool)

(assert (=> b!6732882 m!7491134))

(assert (=> b!6732059 d!2115515))

(declare-fun b!6732904 () Bool)

(declare-fun e!4067386 () Bool)

(declare-fun lt!2438006 () List!65978)

(assert (=> b!6732904 (= e!4067386 (or (not (= (Cons!65854 (h!72302 s!2326) Nil!65854) Nil!65854)) (= lt!2438006 Nil!65854)))))

(declare-fun b!6732903 () Bool)

(declare-fun res!2754411 () Bool)

(assert (=> b!6732903 (=> (not res!2754411) (not e!4067386))))

(assert (=> b!6732903 (= res!2754411 (= (size!40608 lt!2438006) (+ (size!40608 Nil!65854) (size!40608 (Cons!65854 (h!72302 s!2326) Nil!65854)))))))

(declare-fun d!2115517 () Bool)

(assert (=> d!2115517 e!4067386))

(declare-fun res!2754412 () Bool)

(assert (=> d!2115517 (=> (not res!2754412) (not e!4067386))))

(assert (=> d!2115517 (= res!2754412 (= (content!12788 lt!2438006) ((_ map or) (content!12788 Nil!65854) (content!12788 (Cons!65854 (h!72302 s!2326) Nil!65854)))))))

(declare-fun e!4067385 () List!65978)

(assert (=> d!2115517 (= lt!2438006 e!4067385)))

(declare-fun c!1248621 () Bool)

(assert (=> d!2115517 (= c!1248621 ((_ is Nil!65854) Nil!65854))))

(assert (=> d!2115517 (= (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854)) lt!2438006)))

(declare-fun b!6732902 () Bool)

(assert (=> b!6732902 (= e!4067385 (Cons!65854 (h!72302 Nil!65854) (++!14715 (t!379667 Nil!65854) (Cons!65854 (h!72302 s!2326) Nil!65854))))))

(declare-fun b!6732901 () Bool)

(assert (=> b!6732901 (= e!4067385 (Cons!65854 (h!72302 s!2326) Nil!65854))))

(assert (= (and d!2115517 c!1248621) b!6732901))

(assert (= (and d!2115517 (not c!1248621)) b!6732902))

(assert (= (and d!2115517 res!2754412) b!6732903))

(assert (= (and b!6732903 res!2754411) b!6732904))

(declare-fun m!7491136 () Bool)

(assert (=> b!6732903 m!7491136))

(declare-fun m!7491138 () Bool)

(assert (=> b!6732903 m!7491138))

(declare-fun m!7491140 () Bool)

(assert (=> b!6732903 m!7491140))

(declare-fun m!7491142 () Bool)

(assert (=> d!2115517 m!7491142))

(declare-fun m!7491144 () Bool)

(assert (=> d!2115517 m!7491144))

(declare-fun m!7491146 () Bool)

(assert (=> d!2115517 m!7491146))

(declare-fun m!7491148 () Bool)

(assert (=> b!6732902 m!7491148))

(assert (=> b!6732059 d!2115517))

(declare-fun d!2115519 () Bool)

(assert (=> d!2115519 (= (++!14715 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854)) (t!379667 s!2326)) s!2326)))

(declare-fun lt!2438009 () Unit!159809)

(declare-fun choose!50180 (List!65978 C!33388 List!65978 List!65978) Unit!159809)

(assert (=> d!2115519 (= lt!2438009 (choose!50180 Nil!65854 (h!72302 s!2326) (t!379667 s!2326) s!2326))))

(assert (=> d!2115519 (= (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) (t!379667 s!2326))) s!2326)))

(assert (=> d!2115519 (= (lemmaMoveElementToOtherListKeepsConcatEq!2688 Nil!65854 (h!72302 s!2326) (t!379667 s!2326) s!2326) lt!2438009)))

(declare-fun bs!1790559 () Bool)

(assert (= bs!1790559 d!2115519))

(assert (=> bs!1790559 m!7490374))

(assert (=> bs!1790559 m!7490374))

(assert (=> bs!1790559 m!7490376))

(declare-fun m!7491160 () Bool)

(assert (=> bs!1790559 m!7491160))

(declare-fun m!7491162 () Bool)

(assert (=> bs!1790559 m!7491162))

(assert (=> b!6732059 d!2115519))

(declare-fun b!6732929 () Bool)

(declare-fun e!4067393 () Bool)

(assert (=> b!6732929 (= e!4067393 (matchR!8742 r!7292 (t!379667 s!2326)))))

(declare-fun b!6732930 () Bool)

(declare-fun e!4067394 () Bool)

(declare-fun lt!2438012 () Option!16446)

(assert (=> b!6732930 (= e!4067394 (not (isDefined!13149 lt!2438012)))))

(declare-fun d!2115533 () Bool)

(assert (=> d!2115533 e!4067394))

(declare-fun res!2754417 () Bool)

(assert (=> d!2115533 (=> res!2754417 e!4067394)))

(declare-fun e!4067395 () Bool)

(assert (=> d!2115533 (= res!2754417 e!4067395)))

(declare-fun res!2754413 () Bool)

(assert (=> d!2115533 (=> (not res!2754413) (not e!4067395))))

(assert (=> d!2115533 (= res!2754413 (isDefined!13149 lt!2438012))))

(declare-fun e!4067396 () Option!16446)

(assert (=> d!2115533 (= lt!2438012 e!4067396)))

(declare-fun c!1248623 () Bool)

(assert (=> d!2115533 (= c!1248623 e!4067393)))

(declare-fun res!2754416 () Bool)

(assert (=> d!2115533 (=> (not res!2754416) (not e!4067393))))

(assert (=> d!2115533 (= res!2754416 (matchR!8742 (reg!16888 r!7292) (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854))))))

(assert (=> d!2115533 (validRegex!8295 (reg!16888 r!7292))))

(assert (=> d!2115533 (= (findConcatSeparation!2860 (reg!16888 r!7292) r!7292 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854)) (t!379667 s!2326) s!2326) lt!2438012)))

(declare-fun b!6732931 () Bool)

(declare-fun e!4067397 () Option!16446)

(assert (=> b!6732931 (= e!4067396 e!4067397)))

(declare-fun c!1248622 () Bool)

(assert (=> b!6732931 (= c!1248622 ((_ is Nil!65854) (t!379667 s!2326)))))

(declare-fun b!6732932 () Bool)

(assert (=> b!6732932 (= e!4067397 None!16445)))

(declare-fun b!6732933 () Bool)

(assert (=> b!6732933 (= e!4067396 (Some!16445 (tuple2!67069 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854)) (t!379667 s!2326))))))

(declare-fun b!6732934 () Bool)

(declare-fun lt!2438011 () Unit!159809)

(declare-fun lt!2438010 () Unit!159809)

(assert (=> b!6732934 (= lt!2438011 lt!2438010)))

(assert (=> b!6732934 (= (++!14715 (++!14715 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854)) (Cons!65854 (h!72302 (t!379667 s!2326)) Nil!65854)) (t!379667 (t!379667 s!2326))) s!2326)))

(assert (=> b!6732934 (= lt!2438010 (lemmaMoveElementToOtherListKeepsConcatEq!2688 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854)) (h!72302 (t!379667 s!2326)) (t!379667 (t!379667 s!2326)) s!2326))))

(assert (=> b!6732934 (= e!4067397 (findConcatSeparation!2860 (reg!16888 r!7292) r!7292 (++!14715 (++!14715 Nil!65854 (Cons!65854 (h!72302 s!2326) Nil!65854)) (Cons!65854 (h!72302 (t!379667 s!2326)) Nil!65854)) (t!379667 (t!379667 s!2326)) s!2326))))

(declare-fun b!6732935 () Bool)

(assert (=> b!6732935 (= e!4067395 (= (++!14715 (_1!36837 (get!22910 lt!2438012)) (_2!36837 (get!22910 lt!2438012))) s!2326))))

(declare-fun b!6732936 () Bool)

(declare-fun res!2754415 () Bool)

(assert (=> b!6732936 (=> (not res!2754415) (not e!4067395))))

(assert (=> b!6732936 (= res!2754415 (matchR!8742 r!7292 (_2!36837 (get!22910 lt!2438012))))))

(declare-fun b!6732937 () Bool)

(declare-fun res!2754414 () Bool)

(assert (=> b!6732937 (=> (not res!2754414) (not e!4067395))))

(assert (=> b!6732937 (= res!2754414 (matchR!8742 (reg!16888 r!7292) (_1!36837 (get!22910 lt!2438012))))))

(assert (= (and d!2115533 res!2754416) b!6732929))

(assert (= (and d!2115533 c!1248623) b!6732933))

(assert (= (and d!2115533 (not c!1248623)) b!6732931))

(assert (= (and b!6732931 c!1248622) b!6732932))

(assert (= (and b!6732931 (not c!1248622)) b!6732934))

(assert (= (and d!2115533 res!2754413) b!6732937))

(assert (= (and b!6732937 res!2754414) b!6732936))

(assert (= (and b!6732936 res!2754415) b!6732935))

(assert (= (and d!2115533 (not res!2754417)) b!6732930))

(declare-fun m!7491164 () Bool)

(assert (=> b!6732929 m!7491164))

(declare-fun m!7491166 () Bool)

(assert (=> b!6732936 m!7491166))

(declare-fun m!7491168 () Bool)

(assert (=> b!6732936 m!7491168))

(assert (=> b!6732935 m!7491166))

(declare-fun m!7491170 () Bool)

(assert (=> b!6732935 m!7491170))

(declare-fun m!7491172 () Bool)

(assert (=> d!2115533 m!7491172))

(assert (=> d!2115533 m!7490374))

(declare-fun m!7491174 () Bool)

(assert (=> d!2115533 m!7491174))

(assert (=> d!2115533 m!7490348))

(assert (=> b!6732937 m!7491166))

(declare-fun m!7491176 () Bool)

(assert (=> b!6732937 m!7491176))

(assert (=> b!6732934 m!7490374))

(declare-fun m!7491178 () Bool)

(assert (=> b!6732934 m!7491178))

(assert (=> b!6732934 m!7491178))

(declare-fun m!7491180 () Bool)

(assert (=> b!6732934 m!7491180))

(assert (=> b!6732934 m!7490374))

(declare-fun m!7491182 () Bool)

(assert (=> b!6732934 m!7491182))

(assert (=> b!6732934 m!7491178))

(declare-fun m!7491184 () Bool)

(assert (=> b!6732934 m!7491184))

(assert (=> b!6732930 m!7491172))

(assert (=> b!6732059 d!2115533))

(declare-fun b!6732938 () Bool)

(declare-fun e!4067400 () (InoxSet Context!11886))

(declare-fun call!608235 () (InoxSet Context!11886))

(assert (=> b!6732938 (= e!4067400 call!608235)))

(declare-fun b!6732939 () Bool)

(declare-fun e!4067399 () (InoxSet Context!11886))

(assert (=> b!6732939 (= e!4067399 e!4067400)))

(declare-fun c!1248624 () Bool)

(assert (=> b!6732939 (= c!1248624 ((_ is Cons!65852) (exprs!6443 (Context!11887 (t!379665 (exprs!6443 lt!2437877))))))))

(declare-fun d!2115535 () Bool)

(declare-fun c!1248625 () Bool)

(declare-fun e!4067398 () Bool)

(assert (=> d!2115535 (= c!1248625 e!4067398)))

(declare-fun res!2754418 () Bool)

(assert (=> d!2115535 (=> (not res!2754418) (not e!4067398))))

(assert (=> d!2115535 (= res!2754418 ((_ is Cons!65852) (exprs!6443 (Context!11887 (t!379665 (exprs!6443 lt!2437877))))))))

(assert (=> d!2115535 (= (derivationStepZipperUp!1713 (Context!11887 (t!379665 (exprs!6443 lt!2437877))) (h!72302 s!2326)) e!4067399)))

(declare-fun b!6732940 () Bool)

(assert (=> b!6732940 (= e!4067400 ((as const (Array Context!11886 Bool)) false))))

(declare-fun b!6732941 () Bool)

(assert (=> b!6732941 (= e!4067398 (nullable!6546 (h!72300 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 lt!2437877)))))))))

(declare-fun bm!608230 () Bool)

(assert (=> bm!608230 (= call!608235 (derivationStepZipperDown!1787 (h!72300 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 lt!2437877))))) (Context!11887 (t!379665 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 lt!2437877)))))) (h!72302 s!2326)))))

(declare-fun b!6732942 () Bool)

(assert (=> b!6732942 (= e!4067399 ((_ map or) call!608235 (derivationStepZipperUp!1713 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 lt!2437877)))))) (h!72302 s!2326))))))

(assert (= (and d!2115535 res!2754418) b!6732941))

(assert (= (and d!2115535 c!1248625) b!6732942))

(assert (= (and d!2115535 (not c!1248625)) b!6732939))

(assert (= (and b!6732939 c!1248624) b!6732938))

(assert (= (and b!6732939 (not c!1248624)) b!6732940))

(assert (= (or b!6732942 b!6732938) bm!608230))

(declare-fun m!7491186 () Bool)

(assert (=> b!6732941 m!7491186))

(declare-fun m!7491188 () Bool)

(assert (=> bm!608230 m!7491188))

(declare-fun m!7491190 () Bool)

(assert (=> b!6732942 m!7491190))

(assert (=> b!6732082 d!2115535))

(declare-fun bs!1790560 () Bool)

(declare-fun d!2115537 () Bool)

(assert (= bs!1790560 (and d!2115537 d!2115475)))

(declare-fun lambda!377954 () Int)

(assert (=> bs!1790560 (= lambda!377954 lambda!377948)))

(assert (=> d!2115537 (= (nullableZipper!2274 (derivationStepZipper!2503 lt!2437868 (h!72302 s!2326))) (exists!2693 (derivationStepZipper!2503 lt!2437868 (h!72302 s!2326)) lambda!377954))))

(declare-fun bs!1790561 () Bool)

(assert (= bs!1790561 d!2115537))

(assert (=> bs!1790561 m!7490006))

(declare-fun m!7491192 () Bool)

(assert (=> bs!1790561 m!7491192))

(assert (=> b!6732016 d!2115537))

(declare-fun d!2115539 () Bool)

(assert (=> d!2115539 (= (isEmpty!38190 (findConcatSeparation!2860 (reg!16888 r!7292) r!7292 Nil!65854 s!2326 s!2326)) (not ((_ is Some!16445) (findConcatSeparation!2860 (reg!16888 r!7292) r!7292 Nil!65854 s!2326 s!2326))))))

(assert (=> d!2115169 d!2115539))

(declare-fun bs!1790562 () Bool)

(declare-fun d!2115541 () Bool)

(assert (= bs!1790562 (and d!2115541 d!2115077)))

(declare-fun lambda!377955 () Int)

(assert (=> bs!1790562 (= lambda!377955 lambda!377854)))

(declare-fun bs!1790563 () Bool)

(assert (= bs!1790563 (and d!2115541 d!2115507)))

(assert (=> bs!1790563 (= lambda!377955 lambda!377953)))

(declare-fun bs!1790564 () Bool)

(assert (= bs!1790564 (and d!2115541 d!2115081)))

(assert (=> bs!1790564 (= lambda!377955 lambda!377855)))

(declare-fun bs!1790565 () Bool)

(assert (= bs!1790565 (and d!2115541 d!2115063)))

(assert (=> bs!1790565 (= lambda!377955 lambda!377836)))

(declare-fun bs!1790566 () Bool)

(assert (= bs!1790566 (and d!2115541 d!2115203)))

(assert (=> bs!1790566 (= lambda!377955 lambda!377911)))

(declare-fun bs!1790567 () Bool)

(assert (= bs!1790567 (and d!2115541 d!2115199)))

(assert (=> bs!1790567 (= lambda!377955 lambda!377910)))

(declare-fun bs!1790568 () Bool)

(assert (= bs!1790568 (and d!2115541 d!2115481)))

(assert (=> bs!1790568 (= lambda!377955 lambda!377949)))

(declare-fun bs!1790569 () Bool)

(assert (= bs!1790569 (and d!2115541 d!2115431)))

(assert (=> bs!1790569 (= lambda!377955 lambda!377944)))

(declare-fun bs!1790570 () Bool)

(assert (= bs!1790570 (and d!2115541 d!2115435)))

(assert (=> bs!1790570 (= lambda!377955 lambda!377945)))

(declare-fun bs!1790571 () Bool)

(assert (= bs!1790571 (and d!2115541 d!2115069)))

(assert (=> bs!1790571 (= lambda!377955 lambda!377845)))

(assert (=> d!2115541 (= (inv!84644 (h!72301 (t!379666 zl!343))) (forall!15759 (exprs!6443 (h!72301 (t!379666 zl!343))) lambda!377955))))

(declare-fun bs!1790572 () Bool)

(assert (= bs!1790572 d!2115541))

(declare-fun m!7491194 () Bool)

(assert (=> bs!1790572 m!7491194))

(assert (=> b!6732192 d!2115541))

(declare-fun d!2115543 () Bool)

(assert (=> d!2115543 (= (isEmptyExpr!1925 lt!2437970) ((_ is EmptyExpr!16559) lt!2437970))))

(assert (=> b!6732103 d!2115543))

(declare-fun d!2115545 () Bool)

(assert (=> d!2115545 true))

(assert (=> d!2115545 true))

(declare-fun res!2754419 () Bool)

(assert (=> d!2115545 (= (choose!50174 lambda!377831) res!2754419)))

(assert (=> d!2115177 d!2115545))

(declare-fun bs!1790573 () Bool)

(declare-fun d!2115547 () Bool)

(assert (= bs!1790573 (and d!2115547 d!2115507)))

(declare-fun lambda!377956 () Int)

(assert (=> bs!1790573 (= lambda!377956 lambda!377953)))

(declare-fun bs!1790574 () Bool)

(assert (= bs!1790574 (and d!2115547 d!2115081)))

(assert (=> bs!1790574 (= lambda!377956 lambda!377855)))

(declare-fun bs!1790575 () Bool)

(assert (= bs!1790575 (and d!2115547 d!2115063)))

(assert (=> bs!1790575 (= lambda!377956 lambda!377836)))

(declare-fun bs!1790576 () Bool)

(assert (= bs!1790576 (and d!2115547 d!2115203)))

(assert (=> bs!1790576 (= lambda!377956 lambda!377911)))

(declare-fun bs!1790577 () Bool)

(assert (= bs!1790577 (and d!2115547 d!2115199)))

(assert (=> bs!1790577 (= lambda!377956 lambda!377910)))

(declare-fun bs!1790578 () Bool)

(assert (= bs!1790578 (and d!2115547 d!2115481)))

(assert (=> bs!1790578 (= lambda!377956 lambda!377949)))

(declare-fun bs!1790579 () Bool)

(assert (= bs!1790579 (and d!2115547 d!2115431)))

(assert (=> bs!1790579 (= lambda!377956 lambda!377944)))

(declare-fun bs!1790580 () Bool)

(assert (= bs!1790580 (and d!2115547 d!2115541)))

(assert (=> bs!1790580 (= lambda!377956 lambda!377955)))

(declare-fun bs!1790581 () Bool)

(assert (= bs!1790581 (and d!2115547 d!2115077)))

(assert (=> bs!1790581 (= lambda!377956 lambda!377854)))

(declare-fun bs!1790582 () Bool)

(assert (= bs!1790582 (and d!2115547 d!2115435)))

(assert (=> bs!1790582 (= lambda!377956 lambda!377945)))

(declare-fun bs!1790583 () Bool)

(assert (= bs!1790583 (and d!2115547 d!2115069)))

(assert (=> bs!1790583 (= lambda!377956 lambda!377845)))

(declare-fun b!6732943 () Bool)

(declare-fun e!4067402 () Bool)

(declare-fun e!4067403 () Bool)

(assert (=> b!6732943 (= e!4067402 e!4067403)))

(declare-fun c!1248627 () Bool)

(assert (=> b!6732943 (= c!1248627 (isEmpty!38188 (t!379665 (unfocusZipperList!1980 zl!343))))))

(declare-fun b!6732944 () Bool)

(declare-fun lt!2438013 () Regex!16559)

(assert (=> b!6732944 (= e!4067403 (isEmptyLang!1933 lt!2438013))))

(declare-fun b!6732945 () Bool)

(declare-fun e!4067406 () Bool)

(assert (=> b!6732945 (= e!4067403 e!4067406)))

(declare-fun c!1248629 () Bool)

(assert (=> b!6732945 (= c!1248629 (isEmpty!38188 (tail!12630 (t!379665 (unfocusZipperList!1980 zl!343)))))))

(declare-fun b!6732946 () Bool)

(assert (=> b!6732946 (= e!4067406 (= lt!2438013 (head!13545 (t!379665 (unfocusZipperList!1980 zl!343)))))))

(assert (=> d!2115547 e!4067402))

(declare-fun res!2754420 () Bool)

(assert (=> d!2115547 (=> (not res!2754420) (not e!4067402))))

(assert (=> d!2115547 (= res!2754420 (validRegex!8295 lt!2438013))))

(declare-fun e!4067401 () Regex!16559)

(assert (=> d!2115547 (= lt!2438013 e!4067401)))

(declare-fun c!1248628 () Bool)

(declare-fun e!4067404 () Bool)

(assert (=> d!2115547 (= c!1248628 e!4067404)))

(declare-fun res!2754421 () Bool)

(assert (=> d!2115547 (=> (not res!2754421) (not e!4067404))))

(assert (=> d!2115547 (= res!2754421 ((_ is Cons!65852) (t!379665 (unfocusZipperList!1980 zl!343))))))

(assert (=> d!2115547 (forall!15759 (t!379665 (unfocusZipperList!1980 zl!343)) lambda!377956)))

(assert (=> d!2115547 (= (generalisedUnion!2403 (t!379665 (unfocusZipperList!1980 zl!343))) lt!2438013)))

(declare-fun b!6732947 () Bool)

(assert (=> b!6732947 (= e!4067401 (h!72300 (t!379665 (unfocusZipperList!1980 zl!343))))))

(declare-fun b!6732948 () Bool)

(declare-fun e!4067405 () Regex!16559)

(assert (=> b!6732948 (= e!4067405 (Union!16559 (h!72300 (t!379665 (unfocusZipperList!1980 zl!343))) (generalisedUnion!2403 (t!379665 (t!379665 (unfocusZipperList!1980 zl!343))))))))

(declare-fun b!6732949 () Bool)

(assert (=> b!6732949 (= e!4067405 EmptyLang!16559)))

(declare-fun b!6732950 () Bool)

(assert (=> b!6732950 (= e!4067401 e!4067405)))

(declare-fun c!1248626 () Bool)

(assert (=> b!6732950 (= c!1248626 ((_ is Cons!65852) (t!379665 (unfocusZipperList!1980 zl!343))))))

(declare-fun b!6732951 () Bool)

(assert (=> b!6732951 (= e!4067404 (isEmpty!38188 (t!379665 (t!379665 (unfocusZipperList!1980 zl!343)))))))

(declare-fun b!6732952 () Bool)

(assert (=> b!6732952 (= e!4067406 (isUnion!1363 lt!2438013))))

(assert (= (and d!2115547 res!2754421) b!6732951))

(assert (= (and d!2115547 c!1248628) b!6732947))

(assert (= (and d!2115547 (not c!1248628)) b!6732950))

(assert (= (and b!6732950 c!1248626) b!6732948))

(assert (= (and b!6732950 (not c!1248626)) b!6732949))

(assert (= (and d!2115547 res!2754420) b!6732943))

(assert (= (and b!6732943 c!1248627) b!6732944))

(assert (= (and b!6732943 (not c!1248627)) b!6732945))

(assert (= (and b!6732945 c!1248629) b!6732946))

(assert (= (and b!6732945 (not c!1248629)) b!6732952))

(declare-fun m!7491196 () Bool)

(assert (=> b!6732948 m!7491196))

(declare-fun m!7491198 () Bool)

(assert (=> b!6732944 m!7491198))

(declare-fun m!7491200 () Bool)

(assert (=> b!6732951 m!7491200))

(assert (=> b!6732943 m!7490072))

(declare-fun m!7491202 () Bool)

(assert (=> d!2115547 m!7491202))

(declare-fun m!7491204 () Bool)

(assert (=> d!2115547 m!7491204))

(declare-fun m!7491206 () Bool)

(assert (=> b!6732946 m!7491206))

(declare-fun m!7491208 () Bool)

(assert (=> b!6732952 m!7491208))

(declare-fun m!7491210 () Bool)

(assert (=> b!6732945 m!7491210))

(assert (=> b!6732945 m!7491210))

(declare-fun m!7491212 () Bool)

(assert (=> b!6732945 m!7491212))

(assert (=> b!6731571 d!2115547))

(declare-fun b!6732953 () Bool)

(declare-fun res!2754429 () Bool)

(declare-fun e!4067412 () Bool)

(assert (=> b!6732953 (=> (not res!2754429) (not e!4067412))))

(declare-fun call!608236 () Bool)

(assert (=> b!6732953 (= res!2754429 (not call!608236))))

(declare-fun b!6732954 () Bool)

(declare-fun e!4067413 () Bool)

(declare-fun lt!2438014 () Bool)

(assert (=> b!6732954 (= e!4067413 (= lt!2438014 call!608236))))

(declare-fun b!6732955 () Bool)

(declare-fun res!2754428 () Bool)

(assert (=> b!6732955 (=> (not res!2754428) (not e!4067412))))

(assert (=> b!6732955 (= res!2754428 (isEmpty!38186 (tail!12631 (_2!36837 (get!22910 lt!2437959)))))))

(declare-fun b!6732956 () Bool)

(declare-fun res!2754426 () Bool)

(declare-fun e!4067409 () Bool)

(assert (=> b!6732956 (=> res!2754426 e!4067409)))

(assert (=> b!6732956 (= res!2754426 (not ((_ is ElementMatch!16559) r!7292)))))

(declare-fun e!4067411 () Bool)

(assert (=> b!6732956 (= e!4067411 e!4067409)))

(declare-fun b!6732957 () Bool)

(declare-fun e!4067407 () Bool)

(assert (=> b!6732957 (= e!4067407 (not (= (head!13546 (_2!36837 (get!22910 lt!2437959))) (c!1248231 r!7292))))))

(declare-fun b!6732958 () Bool)

(declare-fun e!4067410 () Bool)

(assert (=> b!6732958 (= e!4067410 e!4067407)))

(declare-fun res!2754423 () Bool)

(assert (=> b!6732958 (=> res!2754423 e!4067407)))

(assert (=> b!6732958 (= res!2754423 call!608236)))

(declare-fun b!6732959 () Bool)

(assert (=> b!6732959 (= e!4067413 e!4067411)))

(declare-fun c!1248630 () Bool)

(assert (=> b!6732959 (= c!1248630 ((_ is EmptyLang!16559) r!7292))))

(declare-fun b!6732960 () Bool)

(declare-fun e!4067408 () Bool)

(assert (=> b!6732960 (= e!4067408 (nullable!6546 r!7292))))

(declare-fun b!6732961 () Bool)

(declare-fun res!2754425 () Bool)

(assert (=> b!6732961 (=> res!2754425 e!4067409)))

(assert (=> b!6732961 (= res!2754425 e!4067412)))

(declare-fun res!2754427 () Bool)

(assert (=> b!6732961 (=> (not res!2754427) (not e!4067412))))

(assert (=> b!6732961 (= res!2754427 lt!2438014)))

(declare-fun d!2115549 () Bool)

(assert (=> d!2115549 e!4067413))

(declare-fun c!1248632 () Bool)

(assert (=> d!2115549 (= c!1248632 ((_ is EmptyExpr!16559) r!7292))))

(assert (=> d!2115549 (= lt!2438014 e!4067408)))

(declare-fun c!1248631 () Bool)

(assert (=> d!2115549 (= c!1248631 (isEmpty!38186 (_2!36837 (get!22910 lt!2437959))))))

(assert (=> d!2115549 (validRegex!8295 r!7292)))

(assert (=> d!2115549 (= (matchR!8742 r!7292 (_2!36837 (get!22910 lt!2437959))) lt!2438014)))

(declare-fun b!6732962 () Bool)

(assert (=> b!6732962 (= e!4067408 (matchR!8742 (derivativeStep!5231 r!7292 (head!13546 (_2!36837 (get!22910 lt!2437959)))) (tail!12631 (_2!36837 (get!22910 lt!2437959)))))))

(declare-fun b!6732963 () Bool)

(assert (=> b!6732963 (= e!4067409 e!4067410)))

(declare-fun res!2754424 () Bool)

(assert (=> b!6732963 (=> (not res!2754424) (not e!4067410))))

(assert (=> b!6732963 (= res!2754424 (not lt!2438014))))

(declare-fun b!6732964 () Bool)

(assert (=> b!6732964 (= e!4067412 (= (head!13546 (_2!36837 (get!22910 lt!2437959))) (c!1248231 r!7292)))))

(declare-fun b!6732965 () Bool)

(declare-fun res!2754422 () Bool)

(assert (=> b!6732965 (=> res!2754422 e!4067407)))

(assert (=> b!6732965 (= res!2754422 (not (isEmpty!38186 (tail!12631 (_2!36837 (get!22910 lt!2437959))))))))

(declare-fun b!6732966 () Bool)

(assert (=> b!6732966 (= e!4067411 (not lt!2438014))))

(declare-fun bm!608231 () Bool)

(assert (=> bm!608231 (= call!608236 (isEmpty!38186 (_2!36837 (get!22910 lt!2437959))))))

(assert (= (and d!2115549 c!1248631) b!6732960))

(assert (= (and d!2115549 (not c!1248631)) b!6732962))

(assert (= (and d!2115549 c!1248632) b!6732954))

(assert (= (and d!2115549 (not c!1248632)) b!6732959))

(assert (= (and b!6732959 c!1248630) b!6732966))

(assert (= (and b!6732959 (not c!1248630)) b!6732956))

(assert (= (and b!6732956 (not res!2754426)) b!6732961))

(assert (= (and b!6732961 res!2754427) b!6732953))

(assert (= (and b!6732953 res!2754429) b!6732955))

(assert (= (and b!6732955 res!2754428) b!6732964))

(assert (= (and b!6732961 (not res!2754425)) b!6732963))

(assert (= (and b!6732963 res!2754424) b!6732958))

(assert (= (and b!6732958 (not res!2754423)) b!6732965))

(assert (= (and b!6732965 (not res!2754422)) b!6732957))

(assert (= (or b!6732954 b!6732953 b!6732958) bm!608231))

(declare-fun m!7491214 () Bool)

(assert (=> b!6732955 m!7491214))

(assert (=> b!6732955 m!7491214))

(declare-fun m!7491216 () Bool)

(assert (=> b!6732955 m!7491216))

(declare-fun m!7491218 () Bool)

(assert (=> b!6732964 m!7491218))

(assert (=> b!6732960 m!7490260))

(assert (=> b!6732962 m!7491218))

(assert (=> b!6732962 m!7491218))

(declare-fun m!7491220 () Bool)

(assert (=> b!6732962 m!7491220))

(assert (=> b!6732962 m!7491214))

(assert (=> b!6732962 m!7491220))

(assert (=> b!6732962 m!7491214))

(declare-fun m!7491222 () Bool)

(assert (=> b!6732962 m!7491222))

(declare-fun m!7491224 () Bool)

(assert (=> d!2115549 m!7491224))

(assert (=> d!2115549 m!7490018))

(assert (=> b!6732965 m!7491214))

(assert (=> b!6732965 m!7491214))

(assert (=> b!6732965 m!7491216))

(assert (=> b!6732957 m!7491218))

(assert (=> bm!608231 m!7491224))

(assert (=> b!6732061 d!2115549))

(assert (=> b!6732061 d!2115345))

(declare-fun d!2115551 () Bool)

(assert (=> d!2115551 true))

(declare-fun setRes!45936 () Bool)

(assert (=> d!2115551 setRes!45936))

(declare-fun condSetEmpty!45936 () Bool)

(declare-fun res!2754430 () (InoxSet Context!11886))

(assert (=> d!2115551 (= condSetEmpty!45936 (= res!2754430 ((as const (Array Context!11886 Bool)) false)))))

(assert (=> d!2115551 (= (choose!50166 z!1189 lambda!377833) res!2754430)))

(declare-fun setIsEmpty!45936 () Bool)

(assert (=> setIsEmpty!45936 setRes!45936))

(declare-fun e!4067414 () Bool)

(declare-fun tp!1845939 () Bool)

(declare-fun setNonEmpty!45936 () Bool)

(declare-fun setElem!45936 () Context!11886)

(assert (=> setNonEmpty!45936 (= setRes!45936 (and tp!1845939 (inv!84644 setElem!45936) e!4067414))))

(declare-fun setRest!45936 () (InoxSet Context!11886))

(assert (=> setNonEmpty!45936 (= res!2754430 ((_ map or) (store ((as const (Array Context!11886 Bool)) false) setElem!45936 true) setRest!45936))))

(declare-fun b!6732967 () Bool)

(declare-fun tp!1845938 () Bool)

(assert (=> b!6732967 (= e!4067414 tp!1845938)))

(assert (= (and d!2115551 condSetEmpty!45936) setIsEmpty!45936))

(assert (= (and d!2115551 (not condSetEmpty!45936)) setNonEmpty!45936))

(assert (= setNonEmpty!45936 b!6732967))

(declare-fun m!7491226 () Bool)

(assert (=> setNonEmpty!45936 m!7491226))

(assert (=> d!2115083 d!2115551))

(declare-fun d!2115553 () Bool)

(declare-fun res!2754431 () Bool)

(declare-fun e!4067419 () Bool)

(assert (=> d!2115553 (=> res!2754431 e!4067419)))

(assert (=> d!2115553 (= res!2754431 ((_ is ElementMatch!16559) lt!2437970))))

(assert (=> d!2115553 (= (validRegex!8295 lt!2437970) e!4067419)))

(declare-fun b!6732968 () Bool)

(declare-fun res!2754435 () Bool)

(declare-fun e!4067420 () Bool)

(assert (=> b!6732968 (=> (not res!2754435) (not e!4067420))))

(declare-fun call!608237 () Bool)

(assert (=> b!6732968 (= res!2754435 call!608237)))

(declare-fun e!4067418 () Bool)

(assert (=> b!6732968 (= e!4067418 e!4067420)))

(declare-fun c!1248633 () Bool)

(declare-fun c!1248634 () Bool)

(declare-fun call!608239 () Bool)

(declare-fun bm!608232 () Bool)

(assert (=> bm!608232 (= call!608239 (validRegex!8295 (ite c!1248634 (reg!16888 lt!2437970) (ite c!1248633 (regOne!33631 lt!2437970) (regOne!33630 lt!2437970)))))))

(declare-fun bm!608233 () Bool)

(declare-fun call!608238 () Bool)

(assert (=> bm!608233 (= call!608238 (validRegex!8295 (ite c!1248633 (regTwo!33631 lt!2437970) (regTwo!33630 lt!2437970))))))

(declare-fun b!6732969 () Bool)

(declare-fun e!4067415 () Bool)

(assert (=> b!6732969 (= e!4067415 call!608239)))

(declare-fun b!6732970 () Bool)

(declare-fun e!4067421 () Bool)

(assert (=> b!6732970 (= e!4067419 e!4067421)))

(assert (=> b!6732970 (= c!1248634 ((_ is Star!16559) lt!2437970))))

(declare-fun b!6732971 () Bool)

(assert (=> b!6732971 (= e!4067421 e!4067418)))

(assert (=> b!6732971 (= c!1248633 ((_ is Union!16559) lt!2437970))))

(declare-fun bm!608234 () Bool)

(assert (=> bm!608234 (= call!608237 call!608239)))

(declare-fun b!6732972 () Bool)

(declare-fun e!4067417 () Bool)

(declare-fun e!4067416 () Bool)

(assert (=> b!6732972 (= e!4067417 e!4067416)))

(declare-fun res!2754433 () Bool)

(assert (=> b!6732972 (=> (not res!2754433) (not e!4067416))))

(assert (=> b!6732972 (= res!2754433 call!608237)))

(declare-fun b!6732973 () Bool)

(declare-fun res!2754434 () Bool)

(assert (=> b!6732973 (=> res!2754434 e!4067417)))

(assert (=> b!6732973 (= res!2754434 (not ((_ is Concat!25404) lt!2437970)))))

(assert (=> b!6732973 (= e!4067418 e!4067417)))

(declare-fun b!6732974 () Bool)

(assert (=> b!6732974 (= e!4067421 e!4067415)))

(declare-fun res!2754432 () Bool)

(assert (=> b!6732974 (= res!2754432 (not (nullable!6546 (reg!16888 lt!2437970))))))

(assert (=> b!6732974 (=> (not res!2754432) (not e!4067415))))

(declare-fun b!6732975 () Bool)

(assert (=> b!6732975 (= e!4067416 call!608238)))

(declare-fun b!6732976 () Bool)

(assert (=> b!6732976 (= e!4067420 call!608238)))

(assert (= (and d!2115553 (not res!2754431)) b!6732970))

(assert (= (and b!6732970 c!1248634) b!6732974))

(assert (= (and b!6732970 (not c!1248634)) b!6732971))

(assert (= (and b!6732974 res!2754432) b!6732969))

(assert (= (and b!6732971 c!1248633) b!6732968))

(assert (= (and b!6732971 (not c!1248633)) b!6732973))

(assert (= (and b!6732968 res!2754435) b!6732976))

(assert (= (and b!6732973 (not res!2754434)) b!6732972))

(assert (= (and b!6732972 res!2754433) b!6732975))

(assert (= (or b!6732976 b!6732975) bm!608233))

(assert (= (or b!6732968 b!6732972) bm!608234))

(assert (= (or b!6732969 bm!608234) bm!608232))

(declare-fun m!7491228 () Bool)

(assert (=> bm!608232 m!7491228))

(declare-fun m!7491230 () Bool)

(assert (=> bm!608233 m!7491230))

(declare-fun m!7491232 () Bool)

(assert (=> b!6732974 m!7491232))

(assert (=> d!2115199 d!2115553))

(declare-fun d!2115555 () Bool)

(declare-fun res!2754436 () Bool)

(declare-fun e!4067422 () Bool)

(assert (=> d!2115555 (=> res!2754436 e!4067422)))

(assert (=> d!2115555 (= res!2754436 ((_ is Nil!65852) (exprs!6443 (h!72301 zl!343))))))

(assert (=> d!2115555 (= (forall!15759 (exprs!6443 (h!72301 zl!343)) lambda!377910) e!4067422)))

(declare-fun b!6732977 () Bool)

(declare-fun e!4067423 () Bool)

(assert (=> b!6732977 (= e!4067422 e!4067423)))

(declare-fun res!2754437 () Bool)

(assert (=> b!6732977 (=> (not res!2754437) (not e!4067423))))

(assert (=> b!6732977 (= res!2754437 (dynLambda!26270 lambda!377910 (h!72300 (exprs!6443 (h!72301 zl!343)))))))

(declare-fun b!6732978 () Bool)

(assert (=> b!6732978 (= e!4067423 (forall!15759 (t!379665 (exprs!6443 (h!72301 zl!343))) lambda!377910))))

(assert (= (and d!2115555 (not res!2754436)) b!6732977))

(assert (= (and b!6732977 res!2754437) b!6732978))

(declare-fun b_lambda!253505 () Bool)

(assert (=> (not b_lambda!253505) (not b!6732977)))

(declare-fun m!7491234 () Bool)

(assert (=> b!6732977 m!7491234))

(declare-fun m!7491236 () Bool)

(assert (=> b!6732978 m!7491236))

(assert (=> d!2115199 d!2115555))

(declare-fun d!2115557 () Bool)

(declare-fun res!2754438 () Bool)

(declare-fun e!4067424 () Bool)

(assert (=> d!2115557 (=> res!2754438 e!4067424)))

(assert (=> d!2115557 (= res!2754438 ((_ is Nil!65852) lt!2437900))))

(assert (=> d!2115557 (= (forall!15759 lt!2437900 lambda!377854) e!4067424)))

(declare-fun b!6732979 () Bool)

(declare-fun e!4067425 () Bool)

(assert (=> b!6732979 (= e!4067424 e!4067425)))

(declare-fun res!2754439 () Bool)

(assert (=> b!6732979 (=> (not res!2754439) (not e!4067425))))

(assert (=> b!6732979 (= res!2754439 (dynLambda!26270 lambda!377854 (h!72300 lt!2437900)))))

(declare-fun b!6732980 () Bool)

(assert (=> b!6732980 (= e!4067425 (forall!15759 (t!379665 lt!2437900) lambda!377854))))

(assert (= (and d!2115557 (not res!2754438)) b!6732979))

(assert (= (and b!6732979 res!2754439) b!6732980))

(declare-fun b_lambda!253507 () Bool)

(assert (=> (not b_lambda!253507) (not b!6732979)))

(declare-fun m!7491238 () Bool)

(assert (=> b!6732979 m!7491238))

(declare-fun m!7491240 () Bool)

(assert (=> b!6732980 m!7491240))

(assert (=> d!2115077 d!2115557))

(declare-fun d!2115559 () Bool)

(assert (=> d!2115559 (= (isEmptyLang!1933 lt!2437897) ((_ is EmptyLang!16559) lt!2437897))))

(assert (=> b!6731567 d!2115559))

(declare-fun d!2115561 () Bool)

(assert (=> d!2115561 (= (nullable!6546 (h!72300 (exprs!6443 lt!2437877))) (nullableFct!2460 (h!72300 (exprs!6443 lt!2437877))))))

(declare-fun bs!1790584 () Bool)

(assert (= bs!1790584 d!2115561))

(declare-fun m!7491242 () Bool)

(assert (=> bs!1790584 m!7491242))

(assert (=> b!6732081 d!2115561))

(declare-fun d!2115563 () Bool)

(assert (=> d!2115563 (= (head!13545 (unfocusZipperList!1980 zl!343)) (h!72300 (unfocusZipperList!1980 zl!343)))))

(assert (=> b!6731569 d!2115563))

(assert (=> b!6731880 d!2115473))

(assert (=> b!6731880 d!2115425))

(declare-fun d!2115565 () Bool)

(assert (=> d!2115565 (= (isDefined!13149 lt!2437959) (not (isEmpty!38190 lt!2437959)))))

(declare-fun bs!1790585 () Bool)

(assert (= bs!1790585 d!2115565))

(declare-fun m!7491244 () Bool)

(assert (=> bs!1790585 m!7491244))

(assert (=> b!6732055 d!2115565))

(declare-fun d!2115567 () Bool)

(declare-fun res!2754440 () Bool)

(declare-fun e!4067430 () Bool)

(assert (=> d!2115567 (=> res!2754440 e!4067430)))

(assert (=> d!2115567 (= res!2754440 ((_ is ElementMatch!16559) (ite c!1248423 (reg!16888 r!7292) (ite c!1248422 (regOne!33631 r!7292) (regOne!33630 r!7292)))))))

(assert (=> d!2115567 (= (validRegex!8295 (ite c!1248423 (reg!16888 r!7292) (ite c!1248422 (regOne!33631 r!7292) (regOne!33630 r!7292)))) e!4067430)))

(declare-fun b!6732981 () Bool)

(declare-fun res!2754444 () Bool)

(declare-fun e!4067431 () Bool)

(assert (=> b!6732981 (=> (not res!2754444) (not e!4067431))))

(declare-fun call!608240 () Bool)

(assert (=> b!6732981 (= res!2754444 call!608240)))

(declare-fun e!4067429 () Bool)

(assert (=> b!6732981 (= e!4067429 e!4067431)))

(declare-fun call!608242 () Bool)

(declare-fun c!1248636 () Bool)

(declare-fun c!1248635 () Bool)

(declare-fun bm!608235 () Bool)

(assert (=> bm!608235 (= call!608242 (validRegex!8295 (ite c!1248636 (reg!16888 (ite c!1248423 (reg!16888 r!7292) (ite c!1248422 (regOne!33631 r!7292) (regOne!33630 r!7292)))) (ite c!1248635 (regOne!33631 (ite c!1248423 (reg!16888 r!7292) (ite c!1248422 (regOne!33631 r!7292) (regOne!33630 r!7292)))) (regOne!33630 (ite c!1248423 (reg!16888 r!7292) (ite c!1248422 (regOne!33631 r!7292) (regOne!33630 r!7292))))))))))

(declare-fun call!608241 () Bool)

(declare-fun bm!608236 () Bool)

(assert (=> bm!608236 (= call!608241 (validRegex!8295 (ite c!1248635 (regTwo!33631 (ite c!1248423 (reg!16888 r!7292) (ite c!1248422 (regOne!33631 r!7292) (regOne!33630 r!7292)))) (regTwo!33630 (ite c!1248423 (reg!16888 r!7292) (ite c!1248422 (regOne!33631 r!7292) (regOne!33630 r!7292)))))))))

(declare-fun b!6732982 () Bool)

(declare-fun e!4067426 () Bool)

(assert (=> b!6732982 (= e!4067426 call!608242)))

(declare-fun b!6732983 () Bool)

(declare-fun e!4067432 () Bool)

(assert (=> b!6732983 (= e!4067430 e!4067432)))

(assert (=> b!6732983 (= c!1248636 ((_ is Star!16559) (ite c!1248423 (reg!16888 r!7292) (ite c!1248422 (regOne!33631 r!7292) (regOne!33630 r!7292)))))))

(declare-fun b!6732984 () Bool)

(assert (=> b!6732984 (= e!4067432 e!4067429)))

(assert (=> b!6732984 (= c!1248635 ((_ is Union!16559) (ite c!1248423 (reg!16888 r!7292) (ite c!1248422 (regOne!33631 r!7292) (regOne!33630 r!7292)))))))

(declare-fun bm!608237 () Bool)

(assert (=> bm!608237 (= call!608240 call!608242)))

(declare-fun b!6732985 () Bool)

(declare-fun e!4067428 () Bool)

(declare-fun e!4067427 () Bool)

(assert (=> b!6732985 (= e!4067428 e!4067427)))

(declare-fun res!2754442 () Bool)

(assert (=> b!6732985 (=> (not res!2754442) (not e!4067427))))

(assert (=> b!6732985 (= res!2754442 call!608240)))

(declare-fun b!6732986 () Bool)

(declare-fun res!2754443 () Bool)

(assert (=> b!6732986 (=> res!2754443 e!4067428)))

(assert (=> b!6732986 (= res!2754443 (not ((_ is Concat!25404) (ite c!1248423 (reg!16888 r!7292) (ite c!1248422 (regOne!33631 r!7292) (regOne!33630 r!7292))))))))

(assert (=> b!6732986 (= e!4067429 e!4067428)))

(declare-fun b!6732987 () Bool)

(assert (=> b!6732987 (= e!4067432 e!4067426)))

(declare-fun res!2754441 () Bool)

(assert (=> b!6732987 (= res!2754441 (not (nullable!6546 (reg!16888 (ite c!1248423 (reg!16888 r!7292) (ite c!1248422 (regOne!33631 r!7292) (regOne!33630 r!7292)))))))))

(assert (=> b!6732987 (=> (not res!2754441) (not e!4067426))))

(declare-fun b!6732988 () Bool)

(assert (=> b!6732988 (= e!4067427 call!608241)))

(declare-fun b!6732989 () Bool)

(assert (=> b!6732989 (= e!4067431 call!608241)))

(assert (= (and d!2115567 (not res!2754440)) b!6732983))

(assert (= (and b!6732983 c!1248636) b!6732987))

(assert (= (and b!6732983 (not c!1248636)) b!6732984))

(assert (= (and b!6732987 res!2754441) b!6732982))

(assert (= (and b!6732984 c!1248635) b!6732981))

(assert (= (and b!6732984 (not c!1248635)) b!6732986))

(assert (= (and b!6732981 res!2754444) b!6732989))

(assert (= (and b!6732986 (not res!2754443)) b!6732985))

(assert (= (and b!6732985 res!2754442) b!6732988))

(assert (= (or b!6732989 b!6732988) bm!608236))

(assert (= (or b!6732981 b!6732985) bm!608237))

(assert (= (or b!6732982 bm!608237) bm!608235))

(declare-fun m!7491246 () Bool)

(assert (=> bm!608235 m!7491246))

(declare-fun m!7491248 () Bool)

(assert (=> bm!608236 m!7491248))

(declare-fun m!7491250 () Bool)

(assert (=> b!6732987 m!7491250))

(assert (=> bm!608082 d!2115567))

(assert (=> d!2115163 d!2115175))

(declare-fun b!6732990 () Bool)

(declare-fun e!4067435 () (InoxSet Context!11886))

(declare-fun call!608243 () (InoxSet Context!11886))

(assert (=> b!6732990 (= e!4067435 call!608243)))

(declare-fun b!6732991 () Bool)

(declare-fun e!4067434 () (InoxSet Context!11886))

(assert (=> b!6732991 (= e!4067434 e!4067435)))

(declare-fun c!1248637 () Bool)

(assert (=> b!6732991 (= c!1248637 ((_ is Cons!65852) (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))))))))

(declare-fun d!2115569 () Bool)

(declare-fun c!1248638 () Bool)

(declare-fun e!4067433 () Bool)

(assert (=> d!2115569 (= c!1248638 e!4067433)))

(declare-fun res!2754445 () Bool)

(assert (=> d!2115569 (=> (not res!2754445) (not e!4067433))))

(assert (=> d!2115569 (= res!2754445 ((_ is Cons!65852) (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))))))))

(assert (=> d!2115569 (= (derivationStepZipperUp!1713 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (h!72302 s!2326)) e!4067434)))

(declare-fun b!6732992 () Bool)

(assert (=> b!6732992 (= e!4067435 ((as const (Array Context!11886 Bool)) false))))

(declare-fun b!6732993 () Bool)

(assert (=> b!6732993 (= e!4067433 (nullable!6546 (h!72300 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852)))))))))))

(declare-fun bm!608238 () Bool)

(assert (=> bm!608238 (= call!608243 (derivationStepZipperDown!1787 (h!72300 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))))) (Context!11887 (t!379665 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852)))))))) (h!72302 s!2326)))))

(declare-fun b!6732994 () Bool)

(assert (=> b!6732994 (= e!4067434 ((_ map or) call!608243 (derivationStepZipperUp!1713 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852)))))))) (h!72302 s!2326))))))

(assert (= (and d!2115569 res!2754445) b!6732993))

(assert (= (and d!2115569 c!1248638) b!6732994))

(assert (= (and d!2115569 (not c!1248638)) b!6732991))

(assert (= (and b!6732991 c!1248637) b!6732990))

(assert (= (and b!6732991 (not c!1248637)) b!6732992))

(assert (= (or b!6732994 b!6732990) bm!608238))

(declare-fun m!7491252 () Bool)

(assert (=> b!6732993 m!7491252))

(declare-fun m!7491254 () Bool)

(assert (=> bm!608238 m!7491254))

(declare-fun m!7491256 () Bool)

(assert (=> b!6732994 m!7491256))

(assert (=> b!6731989 d!2115569))

(assert (=> bs!1790331 d!2115191))

(declare-fun d!2115571 () Bool)

(assert (=> d!2115571 (= (flatMap!2040 lt!2437868 lambda!377892) (choose!50166 lt!2437868 lambda!377892))))

(declare-fun bs!1790586 () Bool)

(assert (= bs!1790586 d!2115571))

(declare-fun m!7491258 () Bool)

(assert (=> bs!1790586 m!7491258))

(assert (=> d!2115167 d!2115571))

(declare-fun d!2115573 () Bool)

(assert (=> d!2115573 true))

(assert (=> d!2115573 true))

(declare-fun res!2754446 () Bool)

(assert (=> d!2115573 (= (choose!50174 lambda!377830) res!2754446)))

(assert (=> d!2115173 d!2115573))

(assert (=> bs!1790330 d!2115085))

(assert (=> bm!608045 d!2115175))

(declare-fun bm!608239 () Bool)

(declare-fun call!608248 () List!65976)

(declare-fun call!608249 () List!65976)

(assert (=> bm!608239 (= call!608248 call!608249)))

(declare-fun d!2115575 () Bool)

(declare-fun c!1248642 () Bool)

(assert (=> d!2115575 (= c!1248642 (and ((_ is ElementMatch!16559) (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (= (c!1248231 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (h!72302 s!2326))))))

(declare-fun e!4067441 () (InoxSet Context!11886))

(assert (=> d!2115575 (= (derivationStepZipperDown!1787 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852)))) (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (h!72302 s!2326)) e!4067441)))

(declare-fun b!6732995 () Bool)

(declare-fun e!4067438 () (InoxSet Context!11886))

(declare-fun e!4067439 () (InoxSet Context!11886))

(assert (=> b!6732995 (= e!4067438 e!4067439)))

(declare-fun c!1248639 () Bool)

(assert (=> b!6732995 (= c!1248639 ((_ is Concat!25404) (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))))))

(declare-fun b!6732996 () Bool)

(declare-fun call!608245 () (InoxSet Context!11886))

(declare-fun call!608246 () (InoxSet Context!11886))

(assert (=> b!6732996 (= e!4067438 ((_ map or) call!608245 call!608246))))

(declare-fun b!6732997 () Bool)

(declare-fun e!4067436 () (InoxSet Context!11886))

(declare-fun call!608244 () (InoxSet Context!11886))

(assert (=> b!6732997 (= e!4067436 ((_ map or) call!608244 call!608245))))

(declare-fun bm!608240 () Bool)

(assert (=> bm!608240 (= call!608246 call!608244)))

(declare-fun b!6732998 () Bool)

(declare-fun e!4067440 () Bool)

(assert (=> b!6732998 (= e!4067440 (nullable!6546 (regOne!33630 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852)))))))))

(declare-fun b!6732999 () Bool)

(declare-fun call!608247 () (InoxSet Context!11886))

(assert (=> b!6732999 (= e!4067439 call!608247)))

(declare-fun bm!608241 () Bool)

(declare-fun c!1248640 () Bool)

(assert (=> bm!608241 (= call!608245 (derivationStepZipperDown!1787 (ite c!1248640 (regTwo!33631 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (regOne!33630 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852)))))) (ite c!1248640 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (Context!11887 call!608249)) (h!72302 s!2326)))))

(declare-fun b!6733000 () Bool)

(assert (=> b!6733000 (= e!4067441 e!4067436)))

(assert (=> b!6733000 (= c!1248640 ((_ is Union!16559) (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))))))

(declare-fun b!6733001 () Bool)

(declare-fun e!4067437 () (InoxSet Context!11886))

(assert (=> b!6733001 (= e!4067437 ((as const (Array Context!11886 Bool)) false))))

(declare-fun c!1248643 () Bool)

(declare-fun bm!608242 () Bool)

(assert (=> bm!608242 (= call!608249 ($colon$colon!2376 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852)))))) (ite (or c!1248643 c!1248639) (regTwo!33630 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852)))))))))

(declare-fun b!6733002 () Bool)

(assert (=> b!6733002 (= e!4067441 (store ((as const (Array Context!11886 Bool)) false) (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) true))))

(declare-fun bm!608243 () Bool)

(assert (=> bm!608243 (= call!608247 call!608246)))

(declare-fun bm!608244 () Bool)

(assert (=> bm!608244 (= call!608244 (derivationStepZipperDown!1787 (ite c!1248640 (regOne!33631 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (ite c!1248643 (regTwo!33630 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (ite c!1248639 (regOne!33630 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (reg!16888 (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852)))))))) (ite (or c!1248640 c!1248643) (Context!11887 (t!379665 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))) (Context!11887 call!608248)) (h!72302 s!2326)))))

(declare-fun b!6733003 () Bool)

(assert (=> b!6733003 (= c!1248643 e!4067440)))

(declare-fun res!2754447 () Bool)

(assert (=> b!6733003 (=> (not res!2754447) (not e!4067440))))

(assert (=> b!6733003 (= res!2754447 ((_ is Concat!25404) (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))))))

(assert (=> b!6733003 (= e!4067436 e!4067438)))

(declare-fun b!6733004 () Bool)

(assert (=> b!6733004 (= e!4067437 call!608247)))

(declare-fun b!6733005 () Bool)

(declare-fun c!1248641 () Bool)

(assert (=> b!6733005 (= c!1248641 ((_ is Star!16559) (h!72300 (exprs!6443 (Context!11887 (Cons!65852 r!7292 Nil!65852))))))))

(assert (=> b!6733005 (= e!4067439 e!4067437)))

(assert (= (and d!2115575 c!1248642) b!6733002))

(assert (= (and d!2115575 (not c!1248642)) b!6733000))

(assert (= (and b!6733000 c!1248640) b!6732997))

(assert (= (and b!6733000 (not c!1248640)) b!6733003))

(assert (= (and b!6733003 res!2754447) b!6732998))

(assert (= (and b!6733003 c!1248643) b!6732996))

(assert (= (and b!6733003 (not c!1248643)) b!6732995))

(assert (= (and b!6732995 c!1248639) b!6732999))

(assert (= (and b!6732995 (not c!1248639)) b!6733005))

(assert (= (and b!6733005 c!1248641) b!6733004))

(assert (= (and b!6733005 (not c!1248641)) b!6733001))

(assert (= (or b!6732999 b!6733004) bm!608239))

(assert (= (or b!6732999 b!6733004) bm!608243))

(assert (= (or b!6732996 bm!608239) bm!608242))

(assert (= (or b!6732996 bm!608243) bm!608240))

(assert (= (or b!6732997 b!6732996) bm!608241))

(assert (= (or b!6732997 bm!608240) bm!608244))

(declare-fun m!7491260 () Bool)

(assert (=> bm!608244 m!7491260))

(declare-fun m!7491262 () Bool)

(assert (=> bm!608242 m!7491262))

(declare-fun m!7491264 () Bool)

(assert (=> bm!608241 m!7491264))

(declare-fun m!7491266 () Bool)

(assert (=> b!6733002 m!7491266))

(declare-fun m!7491268 () Bool)

(assert (=> b!6732998 m!7491268))

(assert (=> bm!608068 d!2115575))

(declare-fun d!2115577 () Bool)

(assert (=> d!2115577 (= (Exists!3627 lambda!377903) (choose!50174 lambda!377903))))

(declare-fun bs!1790587 () Bool)

(assert (= bs!1790587 d!2115577))

(declare-fun m!7491270 () Bool)

(assert (=> bs!1790587 m!7491270))

(assert (=> d!2115181 d!2115577))

(declare-fun d!2115579 () Bool)

(assert (=> d!2115579 (= (Exists!3627 lambda!377904) (choose!50174 lambda!377904))))

(declare-fun bs!1790588 () Bool)

(assert (= bs!1790588 d!2115579))

(declare-fun m!7491272 () Bool)

(assert (=> bs!1790588 m!7491272))

(assert (=> d!2115181 d!2115579))

(declare-fun bs!1790589 () Bool)

(declare-fun d!2115581 () Bool)

(assert (= bs!1790589 (and d!2115581 b!6731448)))

(declare-fun lambda!377961 () Int)

(assert (=> bs!1790589 (not (= lambda!377961 lambda!377832))))

(declare-fun bs!1790590 () Bool)

(assert (= bs!1790590 (and d!2115581 d!2115181)))

(assert (=> bs!1790590 (not (= lambda!377961 lambda!377904))))

(assert (=> bs!1790589 (not (= lambda!377961 lambda!377831))))

(assert (=> bs!1790589 (= (= (Star!16559 (reg!16888 r!7292)) r!7292) (= lambda!377961 lambda!377830))))

(declare-fun bs!1790591 () Bool)

(assert (= bs!1790591 (and d!2115581 b!6731816)))

(assert (=> bs!1790591 (not (= lambda!377961 lambda!377876))))

(declare-fun bs!1790592 () Bool)

(assert (= bs!1790592 (and d!2115581 b!6732535)))

(assert (=> bs!1790592 (not (= lambda!377961 lambda!377937))))

(declare-fun bs!1790593 () Bool)

(assert (= bs!1790593 (and d!2115581 d!2115171)))

(assert (=> bs!1790593 (not (= lambda!377961 lambda!377898))))

(declare-fun bs!1790594 () Bool)

(assert (= bs!1790594 (and d!2115581 d!2115185)))

(assert (=> bs!1790594 (= (= (Star!16559 (reg!16888 r!7292)) r!7292) (= lambda!377961 lambda!377907))))

(assert (=> bs!1790590 (= lambda!377961 lambda!377903)))

(declare-fun bs!1790595 () Bool)

(assert (= bs!1790595 (and d!2115581 b!6731824)))

(assert (=> bs!1790595 (not (= lambda!377961 lambda!377878))))

(assert (=> bs!1790593 (= (= (Star!16559 (reg!16888 r!7292)) r!7292) (= lambda!377961 lambda!377897))))

(declare-fun bs!1790596 () Bool)

(assert (= bs!1790596 (and d!2115581 b!6732543)))

(assert (=> bs!1790596 (not (= lambda!377961 lambda!377939))))

(assert (=> d!2115581 true))

(assert (=> d!2115581 true))

(declare-fun lambda!377962 () Int)

(assert (=> bs!1790589 (not (= lambda!377962 lambda!377832))))

(assert (=> bs!1790590 (= lambda!377962 lambda!377904)))

(assert (=> bs!1790589 (= (= (Star!16559 (reg!16888 r!7292)) r!7292) (= lambda!377962 lambda!377831))))

(assert (=> bs!1790589 (not (= lambda!377962 lambda!377830))))

(assert (=> bs!1790592 (= (and (= (reg!16888 r!7292) (reg!16888 (regOne!33631 r!7292))) (= (Star!16559 (reg!16888 r!7292)) (regOne!33631 r!7292))) (= lambda!377962 lambda!377937))))

(assert (=> bs!1790593 (not (= lambda!377962 lambda!377898))))

(assert (=> bs!1790594 (not (= lambda!377962 lambda!377907))))

(assert (=> bs!1790590 (not (= lambda!377962 lambda!377903))))

(assert (=> bs!1790595 (not (= lambda!377962 lambda!377878))))

(assert (=> bs!1790593 (not (= lambda!377962 lambda!377897))))

(assert (=> bs!1790596 (not (= lambda!377962 lambda!377939))))

(declare-fun bs!1790597 () Bool)

(assert (= bs!1790597 d!2115581))

(assert (=> bs!1790597 (not (= lambda!377962 lambda!377961))))

(assert (=> bs!1790591 (= (= (Star!16559 (reg!16888 r!7292)) r!7292) (= lambda!377962 lambda!377876))))

(assert (=> d!2115581 true))

(assert (=> d!2115581 true))

(assert (=> d!2115581 (= (Exists!3627 lambda!377961) (Exists!3627 lambda!377962))))

(assert (=> d!2115581 true))

(declare-fun _$91!698 () Unit!159809)

(assert (=> d!2115581 (= (choose!50177 (reg!16888 r!7292) s!2326) _$91!698)))

(declare-fun m!7491274 () Bool)

(assert (=> bs!1790597 m!7491274))

(declare-fun m!7491276 () Bool)

(assert (=> bs!1790597 m!7491276))

(assert (=> d!2115181 d!2115581))

(declare-fun d!2115583 () Bool)

(declare-fun res!2754458 () Bool)

(declare-fun e!4067450 () Bool)

(assert (=> d!2115583 (=> res!2754458 e!4067450)))

(assert (=> d!2115583 (= res!2754458 ((_ is ElementMatch!16559) (reg!16888 r!7292)))))

(assert (=> d!2115583 (= (validRegex!8295 (reg!16888 r!7292)) e!4067450)))

(declare-fun b!6733016 () Bool)

(declare-fun res!2754462 () Bool)

(declare-fun e!4067451 () Bool)

(assert (=> b!6733016 (=> (not res!2754462) (not e!4067451))))

(declare-fun call!608250 () Bool)

(assert (=> b!6733016 (= res!2754462 call!608250)))

(declare-fun e!4067449 () Bool)

(assert (=> b!6733016 (= e!4067449 e!4067451)))

(declare-fun call!608252 () Bool)

(declare-fun bm!608245 () Bool)

(declare-fun c!1248645 () Bool)

(declare-fun c!1248644 () Bool)

(assert (=> bm!608245 (= call!608252 (validRegex!8295 (ite c!1248645 (reg!16888 (reg!16888 r!7292)) (ite c!1248644 (regOne!33631 (reg!16888 r!7292)) (regOne!33630 (reg!16888 r!7292))))))))

(declare-fun bm!608246 () Bool)

(declare-fun call!608251 () Bool)

(assert (=> bm!608246 (= call!608251 (validRegex!8295 (ite c!1248644 (regTwo!33631 (reg!16888 r!7292)) (regTwo!33630 (reg!16888 r!7292)))))))

(declare-fun b!6733017 () Bool)

(declare-fun e!4067446 () Bool)

(assert (=> b!6733017 (= e!4067446 call!608252)))

(declare-fun b!6733018 () Bool)

(declare-fun e!4067452 () Bool)

(assert (=> b!6733018 (= e!4067450 e!4067452)))

(assert (=> b!6733018 (= c!1248645 ((_ is Star!16559) (reg!16888 r!7292)))))

(declare-fun b!6733019 () Bool)

(assert (=> b!6733019 (= e!4067452 e!4067449)))

(assert (=> b!6733019 (= c!1248644 ((_ is Union!16559) (reg!16888 r!7292)))))

(declare-fun bm!608247 () Bool)

(assert (=> bm!608247 (= call!608250 call!608252)))

(declare-fun b!6733020 () Bool)

(declare-fun e!4067448 () Bool)

(declare-fun e!4067447 () Bool)

(assert (=> b!6733020 (= e!4067448 e!4067447)))

(declare-fun res!2754460 () Bool)

(assert (=> b!6733020 (=> (not res!2754460) (not e!4067447))))

(assert (=> b!6733020 (= res!2754460 call!608250)))

(declare-fun b!6733021 () Bool)

(declare-fun res!2754461 () Bool)

(assert (=> b!6733021 (=> res!2754461 e!4067448)))

(assert (=> b!6733021 (= res!2754461 (not ((_ is Concat!25404) (reg!16888 r!7292))))))

(assert (=> b!6733021 (= e!4067449 e!4067448)))

(declare-fun b!6733022 () Bool)

(assert (=> b!6733022 (= e!4067452 e!4067446)))

(declare-fun res!2754459 () Bool)

(assert (=> b!6733022 (= res!2754459 (not (nullable!6546 (reg!16888 (reg!16888 r!7292)))))))

(assert (=> b!6733022 (=> (not res!2754459) (not e!4067446))))

(declare-fun b!6733023 () Bool)

(assert (=> b!6733023 (= e!4067447 call!608251)))

(declare-fun b!6733024 () Bool)

(assert (=> b!6733024 (= e!4067451 call!608251)))

(assert (= (and d!2115583 (not res!2754458)) b!6733018))

(assert (= (and b!6733018 c!1248645) b!6733022))

(assert (= (and b!6733018 (not c!1248645)) b!6733019))

(assert (= (and b!6733022 res!2754459) b!6733017))

(assert (= (and b!6733019 c!1248644) b!6733016))

(assert (= (and b!6733019 (not c!1248644)) b!6733021))

(assert (= (and b!6733016 res!2754462) b!6733024))

(assert (= (and b!6733021 (not res!2754461)) b!6733020))

(assert (= (and b!6733020 res!2754460) b!6733023))

(assert (= (or b!6733024 b!6733023) bm!608246))

(assert (= (or b!6733016 b!6733020) bm!608247))

(assert (= (or b!6733017 bm!608247) bm!608245))

(declare-fun m!7491278 () Bool)

(assert (=> bm!608245 m!7491278))

(declare-fun m!7491280 () Bool)

(assert (=> bm!608246 m!7491280))

(declare-fun m!7491282 () Bool)

(assert (=> b!6733022 m!7491282))

(assert (=> d!2115181 d!2115583))

(assert (=> b!6731623 d!2115199))

(declare-fun bs!1790598 () Bool)

(declare-fun d!2115585 () Bool)

(assert (= bs!1790598 (and d!2115585 d!2115507)))

(declare-fun lambda!377963 () Int)

(assert (=> bs!1790598 (= lambda!377963 lambda!377953)))

(declare-fun bs!1790599 () Bool)

(assert (= bs!1790599 (and d!2115585 d!2115081)))

(assert (=> bs!1790599 (= lambda!377963 lambda!377855)))

(declare-fun bs!1790600 () Bool)

(assert (= bs!1790600 (and d!2115585 d!2115547)))

(assert (=> bs!1790600 (= lambda!377963 lambda!377956)))

(declare-fun bs!1790601 () Bool)

(assert (= bs!1790601 (and d!2115585 d!2115063)))

(assert (=> bs!1790601 (= lambda!377963 lambda!377836)))

(declare-fun bs!1790602 () Bool)

(assert (= bs!1790602 (and d!2115585 d!2115203)))

(assert (=> bs!1790602 (= lambda!377963 lambda!377911)))

(declare-fun bs!1790603 () Bool)

(assert (= bs!1790603 (and d!2115585 d!2115199)))

(assert (=> bs!1790603 (= lambda!377963 lambda!377910)))

(declare-fun bs!1790604 () Bool)

(assert (= bs!1790604 (and d!2115585 d!2115481)))

(assert (=> bs!1790604 (= lambda!377963 lambda!377949)))

(declare-fun bs!1790605 () Bool)

(assert (= bs!1790605 (and d!2115585 d!2115431)))

(assert (=> bs!1790605 (= lambda!377963 lambda!377944)))

(declare-fun bs!1790606 () Bool)

(assert (= bs!1790606 (and d!2115585 d!2115541)))

(assert (=> bs!1790606 (= lambda!377963 lambda!377955)))

(declare-fun bs!1790607 () Bool)

(assert (= bs!1790607 (and d!2115585 d!2115077)))

(assert (=> bs!1790607 (= lambda!377963 lambda!377854)))

(declare-fun bs!1790608 () Bool)

(assert (= bs!1790608 (and d!2115585 d!2115435)))

(assert (=> bs!1790608 (= lambda!377963 lambda!377945)))

(declare-fun bs!1790609 () Bool)

(assert (= bs!1790609 (and d!2115585 d!2115069)))

(assert (=> bs!1790609 (= lambda!377963 lambda!377845)))

(declare-fun lt!2438015 () List!65976)

(assert (=> d!2115585 (forall!15759 lt!2438015 lambda!377963)))

(declare-fun e!4067453 () List!65976)

(assert (=> d!2115585 (= lt!2438015 e!4067453)))

(declare-fun c!1248646 () Bool)

(assert (=> d!2115585 (= c!1248646 ((_ is Cons!65853) (t!379666 zl!343)))))

(assert (=> d!2115585 (= (unfocusZipperList!1980 (t!379666 zl!343)) lt!2438015)))

(declare-fun b!6733025 () Bool)

(assert (=> b!6733025 (= e!4067453 (Cons!65852 (generalisedConcat!2156 (exprs!6443 (h!72301 (t!379666 zl!343)))) (unfocusZipperList!1980 (t!379666 (t!379666 zl!343)))))))

(declare-fun b!6733026 () Bool)

(assert (=> b!6733026 (= e!4067453 Nil!65852)))

(assert (= (and d!2115585 c!1248646) b!6733025))

(assert (= (and d!2115585 (not c!1248646)) b!6733026))

(declare-fun m!7491284 () Bool)

(assert (=> d!2115585 m!7491284))

(declare-fun m!7491286 () Bool)

(assert (=> b!6733025 m!7491286))

(declare-fun m!7491288 () Bool)

(assert (=> b!6733025 m!7491288))

(assert (=> b!6731623 d!2115585))

(declare-fun bs!1790610 () Bool)

(declare-fun b!6733028 () Bool)

(assert (= bs!1790610 (and b!6733028 b!6731448)))

(declare-fun lambda!377964 () Int)

(assert (=> bs!1790610 (not (= lambda!377964 lambda!377832))))

(declare-fun bs!1790611 () Bool)

(assert (= bs!1790611 (and b!6733028 d!2115181)))

(assert (=> bs!1790611 (= (and (= (reg!16888 (regTwo!33631 r!7292)) (reg!16888 r!7292)) (= (regTwo!33631 r!7292) (Star!16559 (reg!16888 r!7292)))) (= lambda!377964 lambda!377904))))

(assert (=> bs!1790610 (not (= lambda!377964 lambda!377830))))

(declare-fun bs!1790612 () Bool)

(assert (= bs!1790612 (and b!6733028 b!6732535)))

(assert (=> bs!1790612 (= (and (= (reg!16888 (regTwo!33631 r!7292)) (reg!16888 (regOne!33631 r!7292))) (= (regTwo!33631 r!7292) (regOne!33631 r!7292))) (= lambda!377964 lambda!377937))))

(declare-fun bs!1790613 () Bool)

(assert (= bs!1790613 (and b!6733028 d!2115171)))

(assert (=> bs!1790613 (not (= lambda!377964 lambda!377898))))

(declare-fun bs!1790614 () Bool)

(assert (= bs!1790614 (and b!6733028 d!2115185)))

(assert (=> bs!1790614 (not (= lambda!377964 lambda!377907))))

(assert (=> bs!1790611 (not (= lambda!377964 lambda!377903))))

(declare-fun bs!1790615 () Bool)

(assert (= bs!1790615 (and b!6733028 b!6731824)))

(assert (=> bs!1790615 (not (= lambda!377964 lambda!377878))))

(assert (=> bs!1790613 (not (= lambda!377964 lambda!377897))))

(declare-fun bs!1790616 () Bool)

(assert (= bs!1790616 (and b!6733028 b!6732543)))

(assert (=> bs!1790616 (not (= lambda!377964 lambda!377939))))

(assert (=> bs!1790610 (= (and (= (reg!16888 (regTwo!33631 r!7292)) (reg!16888 r!7292)) (= (regTwo!33631 r!7292) r!7292)) (= lambda!377964 lambda!377831))))

(declare-fun bs!1790617 () Bool)

(assert (= bs!1790617 (and b!6733028 d!2115581)))

(assert (=> bs!1790617 (= (and (= (reg!16888 (regTwo!33631 r!7292)) (reg!16888 r!7292)) (= (regTwo!33631 r!7292) (Star!16559 (reg!16888 r!7292)))) (= lambda!377964 lambda!377962))))

(assert (=> bs!1790617 (not (= lambda!377964 lambda!377961))))

(declare-fun bs!1790618 () Bool)

(assert (= bs!1790618 (and b!6733028 b!6731816)))

(assert (=> bs!1790618 (= (and (= (reg!16888 (regTwo!33631 r!7292)) (reg!16888 r!7292)) (= (regTwo!33631 r!7292) r!7292)) (= lambda!377964 lambda!377876))))

(assert (=> b!6733028 true))

(assert (=> b!6733028 true))

(declare-fun bs!1790619 () Bool)

(declare-fun b!6733036 () Bool)

(assert (= bs!1790619 (and b!6733036 b!6731448)))

(declare-fun lambda!377965 () Int)

(assert (=> bs!1790619 (= (and (= (regOne!33630 (regTwo!33631 r!7292)) (reg!16888 r!7292)) (= (regTwo!33630 (regTwo!33631 r!7292)) r!7292)) (= lambda!377965 lambda!377832))))

(declare-fun bs!1790620 () Bool)

(assert (= bs!1790620 (and b!6733036 d!2115181)))

(assert (=> bs!1790620 (not (= lambda!377965 lambda!377904))))

(assert (=> bs!1790619 (not (= lambda!377965 lambda!377830))))

(declare-fun bs!1790621 () Bool)

(assert (= bs!1790621 (and b!6733036 b!6732535)))

(assert (=> bs!1790621 (not (= lambda!377965 lambda!377937))))

(declare-fun bs!1790622 () Bool)

(assert (= bs!1790622 (and b!6733036 d!2115171)))

(assert (=> bs!1790622 (= (and (= (regOne!33630 (regTwo!33631 r!7292)) (reg!16888 r!7292)) (= (regTwo!33630 (regTwo!33631 r!7292)) r!7292)) (= lambda!377965 lambda!377898))))

(declare-fun bs!1790623 () Bool)

(assert (= bs!1790623 (and b!6733036 b!6733028)))

(assert (=> bs!1790623 (not (= lambda!377965 lambda!377964))))

(declare-fun bs!1790624 () Bool)

(assert (= bs!1790624 (and b!6733036 d!2115185)))

(assert (=> bs!1790624 (not (= lambda!377965 lambda!377907))))

(assert (=> bs!1790620 (not (= lambda!377965 lambda!377903))))

(declare-fun bs!1790625 () Bool)

(assert (= bs!1790625 (and b!6733036 b!6731824)))

(assert (=> bs!1790625 (= (and (= (regOne!33630 (regTwo!33631 r!7292)) (regOne!33630 r!7292)) (= (regTwo!33630 (regTwo!33631 r!7292)) (regTwo!33630 r!7292))) (= lambda!377965 lambda!377878))))

(assert (=> bs!1790622 (not (= lambda!377965 lambda!377897))))

(declare-fun bs!1790626 () Bool)

(assert (= bs!1790626 (and b!6733036 b!6732543)))

(assert (=> bs!1790626 (= (and (= (regOne!33630 (regTwo!33631 r!7292)) (regOne!33630 (regOne!33631 r!7292))) (= (regTwo!33630 (regTwo!33631 r!7292)) (regTwo!33630 (regOne!33631 r!7292)))) (= lambda!377965 lambda!377939))))

(assert (=> bs!1790619 (not (= lambda!377965 lambda!377831))))

(declare-fun bs!1790627 () Bool)

(assert (= bs!1790627 (and b!6733036 d!2115581)))

(assert (=> bs!1790627 (not (= lambda!377965 lambda!377962))))

(assert (=> bs!1790627 (not (= lambda!377965 lambda!377961))))

(declare-fun bs!1790628 () Bool)

(assert (= bs!1790628 (and b!6733036 b!6731816)))

(assert (=> bs!1790628 (not (= lambda!377965 lambda!377876))))

(assert (=> b!6733036 true))

(assert (=> b!6733036 true))

(declare-fun b!6733027 () Bool)

(declare-fun res!2754465 () Bool)

(declare-fun e!4067460 () Bool)

(assert (=> b!6733027 (=> res!2754465 e!4067460)))

(declare-fun call!608253 () Bool)

(assert (=> b!6733027 (= res!2754465 call!608253)))

(declare-fun e!4067456 () Bool)

(assert (=> b!6733027 (= e!4067456 e!4067460)))

(declare-fun call!608254 () Bool)

(assert (=> b!6733028 (= e!4067460 call!608254)))

(declare-fun b!6733029 () Bool)

(declare-fun c!1248647 () Bool)

(assert (=> b!6733029 (= c!1248647 ((_ is Union!16559) (regTwo!33631 r!7292)))))

(declare-fun e!4067454 () Bool)

(declare-fun e!4067455 () Bool)

(assert (=> b!6733029 (= e!4067454 e!4067455)))

(declare-fun bm!608248 () Bool)

(assert (=> bm!608248 (= call!608253 (isEmpty!38186 s!2326))))

(declare-fun c!1248649 () Bool)

(declare-fun bm!608249 () Bool)

(assert (=> bm!608249 (= call!608254 (Exists!3627 (ite c!1248649 lambda!377964 lambda!377965)))))

(declare-fun b!6733030 () Bool)

(declare-fun e!4067457 () Bool)

(assert (=> b!6733030 (= e!4067457 (matchRSpec!3660 (regTwo!33631 (regTwo!33631 r!7292)) s!2326))))

(declare-fun d!2115587 () Bool)

(declare-fun c!1248650 () Bool)

(assert (=> d!2115587 (= c!1248650 ((_ is EmptyExpr!16559) (regTwo!33631 r!7292)))))

(declare-fun e!4067459 () Bool)

(assert (=> d!2115587 (= (matchRSpec!3660 (regTwo!33631 r!7292) s!2326) e!4067459)))

(declare-fun b!6733031 () Bool)

(assert (=> b!6733031 (= e!4067455 e!4067456)))

(assert (=> b!6733031 (= c!1248649 ((_ is Star!16559) (regTwo!33631 r!7292)))))

(declare-fun b!6733032 () Bool)

(assert (=> b!6733032 (= e!4067459 call!608253)))

(declare-fun b!6733033 () Bool)

(declare-fun c!1248648 () Bool)

(assert (=> b!6733033 (= c!1248648 ((_ is ElementMatch!16559) (regTwo!33631 r!7292)))))

(declare-fun e!4067458 () Bool)

(assert (=> b!6733033 (= e!4067458 e!4067454)))

(declare-fun b!6733034 () Bool)

(assert (=> b!6733034 (= e!4067455 e!4067457)))

(declare-fun res!2754464 () Bool)

(assert (=> b!6733034 (= res!2754464 (matchRSpec!3660 (regOne!33631 (regTwo!33631 r!7292)) s!2326))))

(assert (=> b!6733034 (=> res!2754464 e!4067457)))

(declare-fun b!6733035 () Bool)

(assert (=> b!6733035 (= e!4067454 (= s!2326 (Cons!65854 (c!1248231 (regTwo!33631 r!7292)) Nil!65854)))))

(assert (=> b!6733036 (= e!4067456 call!608254)))

(declare-fun b!6733037 () Bool)

(assert (=> b!6733037 (= e!4067459 e!4067458)))

(declare-fun res!2754463 () Bool)

(assert (=> b!6733037 (= res!2754463 (not ((_ is EmptyLang!16559) (regTwo!33631 r!7292))))))

(assert (=> b!6733037 (=> (not res!2754463) (not e!4067458))))

(assert (= (and d!2115587 c!1248650) b!6733032))

(assert (= (and d!2115587 (not c!1248650)) b!6733037))

(assert (= (and b!6733037 res!2754463) b!6733033))

(assert (= (and b!6733033 c!1248648) b!6733035))

(assert (= (and b!6733033 (not c!1248648)) b!6733029))

(assert (= (and b!6733029 c!1248647) b!6733034))

(assert (= (and b!6733029 (not c!1248647)) b!6733031))

(assert (= (and b!6733034 (not res!2754464)) b!6733030))

(assert (= (and b!6733031 c!1248649) b!6733027))

(assert (= (and b!6733031 (not c!1248649)) b!6733036))

(assert (= (and b!6733027 (not res!2754465)) b!6733028))

(assert (= (or b!6733028 b!6733036) bm!608249))

(assert (= (or b!6733032 b!6733027) bm!608248))

(assert (=> bm!608248 m!7489974))

(declare-fun m!7491290 () Bool)

(assert (=> bm!608249 m!7491290))

(declare-fun m!7491292 () Bool)

(assert (=> b!6733030 m!7491292))

(declare-fun m!7491294 () Bool)

(assert (=> b!6733034 m!7491294))

(assert (=> b!6731818 d!2115587))

(declare-fun d!2115589 () Bool)

(assert (=> d!2115589 (= (isConcat!1448 lt!2437970) ((_ is Concat!25404) lt!2437970))))

(assert (=> b!6732109 d!2115589))

(assert (=> d!2115193 d!2115189))

(declare-fun d!2115591 () Bool)

(assert (=> d!2115591 (= (flatMap!2040 lt!2437868 lambda!377833) (dynLambda!26268 lambda!377833 lt!2437877))))

(assert (=> d!2115591 true))

(declare-fun _$13!4047 () Unit!159809)

(assert (=> d!2115591 (= (choose!50167 lt!2437868 lt!2437877 lambda!377833) _$13!4047)))

(declare-fun b_lambda!253509 () Bool)

(assert (=> (not b_lambda!253509) (not d!2115591)))

(declare-fun bs!1790629 () Bool)

(assert (= bs!1790629 d!2115591))

(assert (=> bs!1790629 m!7489950))

(assert (=> bs!1790629 m!7490404))

(assert (=> d!2115193 d!2115591))

(declare-fun d!2115593 () Bool)

(declare-fun res!2754466 () Bool)

(declare-fun e!4067461 () Bool)

(assert (=> d!2115593 (=> res!2754466 e!4067461)))

(assert (=> d!2115593 (= res!2754466 ((_ is Nil!65852) (exprs!6443 lt!2437873)))))

(assert (=> d!2115593 (= (forall!15759 (exprs!6443 lt!2437873) lambda!377855) e!4067461)))

(declare-fun b!6733038 () Bool)

(declare-fun e!4067462 () Bool)

(assert (=> b!6733038 (= e!4067461 e!4067462)))

(declare-fun res!2754467 () Bool)

(assert (=> b!6733038 (=> (not res!2754467) (not e!4067462))))

(assert (=> b!6733038 (= res!2754467 (dynLambda!26270 lambda!377855 (h!72300 (exprs!6443 lt!2437873))))))

(declare-fun b!6733039 () Bool)

(assert (=> b!6733039 (= e!4067462 (forall!15759 (t!379665 (exprs!6443 lt!2437873)) lambda!377855))))

(assert (= (and d!2115593 (not res!2754466)) b!6733038))

(assert (= (and b!6733038 res!2754467) b!6733039))

(declare-fun b_lambda!253511 () Bool)

(assert (=> (not b_lambda!253511) (not b!6733038)))

(declare-fun m!7491296 () Bool)

(assert (=> b!6733038 m!7491296))

(declare-fun m!7491298 () Bool)

(assert (=> b!6733039 m!7491298))

(assert (=> d!2115081 d!2115593))

(declare-fun d!2115595 () Bool)

(assert (=> d!2115595 (= (Exists!3627 lambda!377897) (choose!50174 lambda!377897))))

(declare-fun bs!1790630 () Bool)

(assert (= bs!1790630 d!2115595))

(declare-fun m!7491300 () Bool)

(assert (=> bs!1790630 m!7491300))

(assert (=> d!2115171 d!2115595))

(declare-fun d!2115597 () Bool)

(assert (=> d!2115597 (= (Exists!3627 lambda!377898) (choose!50174 lambda!377898))))

(declare-fun bs!1790631 () Bool)

(assert (= bs!1790631 d!2115597))

(declare-fun m!7491302 () Bool)

(assert (=> bs!1790631 m!7491302))

(assert (=> d!2115171 d!2115597))

(declare-fun bs!1790632 () Bool)

(declare-fun d!2115599 () Bool)

(assert (= bs!1790632 (and d!2115599 b!6731448)))

(declare-fun lambda!377970 () Int)

(assert (=> bs!1790632 (not (= lambda!377970 lambda!377832))))

(declare-fun bs!1790633 () Bool)

(assert (= bs!1790633 (and d!2115599 d!2115181)))

(assert (=> bs!1790633 (not (= lambda!377970 lambda!377904))))

(declare-fun bs!1790634 () Bool)

(assert (= bs!1790634 (and d!2115599 b!6733036)))

(assert (=> bs!1790634 (not (= lambda!377970 lambda!377965))))

(assert (=> bs!1790632 (= lambda!377970 lambda!377830)))

(declare-fun bs!1790635 () Bool)

(assert (= bs!1790635 (and d!2115599 b!6732535)))

(assert (=> bs!1790635 (not (= lambda!377970 lambda!377937))))

(declare-fun bs!1790636 () Bool)

(assert (= bs!1790636 (and d!2115599 d!2115171)))

(assert (=> bs!1790636 (not (= lambda!377970 lambda!377898))))

(declare-fun bs!1790637 () Bool)

(assert (= bs!1790637 (and d!2115599 b!6733028)))

(assert (=> bs!1790637 (not (= lambda!377970 lambda!377964))))

(declare-fun bs!1790638 () Bool)

(assert (= bs!1790638 (and d!2115599 d!2115185)))

(assert (=> bs!1790638 (= lambda!377970 lambda!377907)))

(assert (=> bs!1790633 (= (= r!7292 (Star!16559 (reg!16888 r!7292))) (= lambda!377970 lambda!377903))))

(declare-fun bs!1790639 () Bool)

(assert (= bs!1790639 (and d!2115599 b!6731824)))

(assert (=> bs!1790639 (not (= lambda!377970 lambda!377878))))

(assert (=> bs!1790636 (= lambda!377970 lambda!377897)))

(declare-fun bs!1790640 () Bool)

(assert (= bs!1790640 (and d!2115599 b!6732543)))

(assert (=> bs!1790640 (not (= lambda!377970 lambda!377939))))

(assert (=> bs!1790632 (not (= lambda!377970 lambda!377831))))

(declare-fun bs!1790641 () Bool)

(assert (= bs!1790641 (and d!2115599 d!2115581)))

(assert (=> bs!1790641 (not (= lambda!377970 lambda!377962))))

(assert (=> bs!1790641 (= (= r!7292 (Star!16559 (reg!16888 r!7292))) (= lambda!377970 lambda!377961))))

(declare-fun bs!1790642 () Bool)

(assert (= bs!1790642 (and d!2115599 b!6731816)))

(assert (=> bs!1790642 (not (= lambda!377970 lambda!377876))))

(assert (=> d!2115599 true))

(assert (=> d!2115599 true))

(assert (=> d!2115599 true))

(declare-fun lambda!377971 () Int)

(assert (=> bs!1790632 (= lambda!377971 lambda!377832)))

(assert (=> bs!1790633 (not (= lambda!377971 lambda!377904))))

(assert (=> bs!1790634 (= (and (= (reg!16888 r!7292) (regOne!33630 (regTwo!33631 r!7292))) (= r!7292 (regTwo!33630 (regTwo!33631 r!7292)))) (= lambda!377971 lambda!377965))))

(assert (=> bs!1790632 (not (= lambda!377971 lambda!377830))))

(assert (=> bs!1790635 (not (= lambda!377971 lambda!377937))))

(assert (=> bs!1790636 (= lambda!377971 lambda!377898)))

(assert (=> bs!1790637 (not (= lambda!377971 lambda!377964))))

(assert (=> bs!1790638 (not (= lambda!377971 lambda!377907))))

(assert (=> bs!1790633 (not (= lambda!377971 lambda!377903))))

(assert (=> bs!1790639 (= (and (= (reg!16888 r!7292) (regOne!33630 r!7292)) (= r!7292 (regTwo!33630 r!7292))) (= lambda!377971 lambda!377878))))

(assert (=> bs!1790636 (not (= lambda!377971 lambda!377897))))

(assert (=> bs!1790640 (= (and (= (reg!16888 r!7292) (regOne!33630 (regOne!33631 r!7292))) (= r!7292 (regTwo!33630 (regOne!33631 r!7292)))) (= lambda!377971 lambda!377939))))

(assert (=> bs!1790632 (not (= lambda!377971 lambda!377831))))

(assert (=> bs!1790641 (not (= lambda!377971 lambda!377962))))

(assert (=> bs!1790641 (not (= lambda!377971 lambda!377961))))

(declare-fun bs!1790643 () Bool)

(assert (= bs!1790643 d!2115599))

(assert (=> bs!1790643 (not (= lambda!377971 lambda!377970))))

(assert (=> bs!1790642 (not (= lambda!377971 lambda!377876))))

(assert (=> d!2115599 true))

(assert (=> d!2115599 true))

(assert (=> d!2115599 true))

(assert (=> d!2115599 (= (Exists!3627 lambda!377970) (Exists!3627 lambda!377971))))

(assert (=> d!2115599 true))

(declare-fun _$90!2578 () Unit!159809)

(assert (=> d!2115599 (= (choose!50173 (reg!16888 r!7292) r!7292 s!2326) _$90!2578)))

(declare-fun m!7491304 () Bool)

(assert (=> bs!1790643 m!7491304))

(declare-fun m!7491306 () Bool)

(assert (=> bs!1790643 m!7491306))

(assert (=> d!2115171 d!2115599))

(assert (=> d!2115171 d!2115583))

(assert (=> d!2115183 d!2115565))

(declare-fun b!6733048 () Bool)

(declare-fun res!2754483 () Bool)

(declare-fun e!4067472 () Bool)

(assert (=> b!6733048 (=> (not res!2754483) (not e!4067472))))

(declare-fun call!608255 () Bool)

(assert (=> b!6733048 (= res!2754483 (not call!608255))))

(declare-fun b!6733049 () Bool)

(declare-fun e!4067473 () Bool)

(declare-fun lt!2438016 () Bool)

(assert (=> b!6733049 (= e!4067473 (= lt!2438016 call!608255))))

(declare-fun b!6733050 () Bool)

(declare-fun res!2754482 () Bool)

(assert (=> b!6733050 (=> (not res!2754482) (not e!4067472))))

(assert (=> b!6733050 (= res!2754482 (isEmpty!38186 (tail!12631 Nil!65854)))))

(declare-fun b!6733051 () Bool)

(declare-fun res!2754480 () Bool)

(declare-fun e!4067469 () Bool)

(assert (=> b!6733051 (=> res!2754480 e!4067469)))

(assert (=> b!6733051 (= res!2754480 (not ((_ is ElementMatch!16559) (reg!16888 r!7292))))))

(declare-fun e!4067471 () Bool)

(assert (=> b!6733051 (= e!4067471 e!4067469)))

(declare-fun b!6733052 () Bool)

(declare-fun e!4067467 () Bool)

(assert (=> b!6733052 (= e!4067467 (not (= (head!13546 Nil!65854) (c!1248231 (reg!16888 r!7292)))))))

(declare-fun b!6733053 () Bool)

(declare-fun e!4067470 () Bool)

(assert (=> b!6733053 (= e!4067470 e!4067467)))

(declare-fun res!2754477 () Bool)

(assert (=> b!6733053 (=> res!2754477 e!4067467)))

(assert (=> b!6733053 (= res!2754477 call!608255)))

(declare-fun b!6733054 () Bool)

(assert (=> b!6733054 (= e!4067473 e!4067471)))

(declare-fun c!1248651 () Bool)

(assert (=> b!6733054 (= c!1248651 ((_ is EmptyLang!16559) (reg!16888 r!7292)))))

(declare-fun b!6733055 () Bool)

(declare-fun e!4067468 () Bool)

(assert (=> b!6733055 (= e!4067468 (nullable!6546 (reg!16888 r!7292)))))

(declare-fun b!6733056 () Bool)

(declare-fun res!2754479 () Bool)

(assert (=> b!6733056 (=> res!2754479 e!4067469)))

(assert (=> b!6733056 (= res!2754479 e!4067472)))

(declare-fun res!2754481 () Bool)

(assert (=> b!6733056 (=> (not res!2754481) (not e!4067472))))

(assert (=> b!6733056 (= res!2754481 lt!2438016)))

(declare-fun d!2115601 () Bool)

(assert (=> d!2115601 e!4067473))

(declare-fun c!1248653 () Bool)

(assert (=> d!2115601 (= c!1248653 ((_ is EmptyExpr!16559) (reg!16888 r!7292)))))

(assert (=> d!2115601 (= lt!2438016 e!4067468)))

(declare-fun c!1248652 () Bool)

(assert (=> d!2115601 (= c!1248652 (isEmpty!38186 Nil!65854))))

(assert (=> d!2115601 (validRegex!8295 (reg!16888 r!7292))))

(assert (=> d!2115601 (= (matchR!8742 (reg!16888 r!7292) Nil!65854) lt!2438016)))

(declare-fun b!6733057 () Bool)

(assert (=> b!6733057 (= e!4067468 (matchR!8742 (derivativeStep!5231 (reg!16888 r!7292) (head!13546 Nil!65854)) (tail!12631 Nil!65854)))))

(declare-fun b!6733058 () Bool)

(assert (=> b!6733058 (= e!4067469 e!4067470)))

(declare-fun res!2754478 () Bool)

(assert (=> b!6733058 (=> (not res!2754478) (not e!4067470))))

(assert (=> b!6733058 (= res!2754478 (not lt!2438016))))

(declare-fun b!6733059 () Bool)

(assert (=> b!6733059 (= e!4067472 (= (head!13546 Nil!65854) (c!1248231 (reg!16888 r!7292))))))

(declare-fun b!6733060 () Bool)

(declare-fun res!2754476 () Bool)

(assert (=> b!6733060 (=> res!2754476 e!4067467)))

(assert (=> b!6733060 (= res!2754476 (not (isEmpty!38186 (tail!12631 Nil!65854))))))

(declare-fun b!6733061 () Bool)

(assert (=> b!6733061 (= e!4067471 (not lt!2438016))))

(declare-fun bm!608250 () Bool)

(assert (=> bm!608250 (= call!608255 (isEmpty!38186 Nil!65854))))

(assert (= (and d!2115601 c!1248652) b!6733055))

(assert (= (and d!2115601 (not c!1248652)) b!6733057))

(assert (= (and d!2115601 c!1248653) b!6733049))

(assert (= (and d!2115601 (not c!1248653)) b!6733054))

(assert (= (and b!6733054 c!1248651) b!6733061))

(assert (= (and b!6733054 (not c!1248651)) b!6733051))

(assert (= (and b!6733051 (not res!2754480)) b!6733056))

(assert (= (and b!6733056 res!2754481) b!6733048))

(assert (= (and b!6733048 res!2754483) b!6733050))

(assert (= (and b!6733050 res!2754482) b!6733059))

(assert (= (and b!6733056 (not res!2754479)) b!6733058))

(assert (= (and b!6733058 res!2754478) b!6733053))

(assert (= (and b!6733053 (not res!2754477)) b!6733060))

(assert (= (and b!6733060 (not res!2754476)) b!6733052))

(assert (= (or b!6733049 b!6733048 b!6733053) bm!608250))

(declare-fun m!7491308 () Bool)

(assert (=> b!6733050 m!7491308))

(assert (=> b!6733050 m!7491308))

(declare-fun m!7491310 () Bool)

(assert (=> b!6733050 m!7491310))

(declare-fun m!7491312 () Bool)

(assert (=> b!6733059 m!7491312))

(assert (=> b!6733055 m!7490440))

(assert (=> b!6733057 m!7491312))

(assert (=> b!6733057 m!7491312))

(declare-fun m!7491314 () Bool)

(assert (=> b!6733057 m!7491314))

(assert (=> b!6733057 m!7491308))

(assert (=> b!6733057 m!7491314))

(assert (=> b!6733057 m!7491308))

(declare-fun m!7491316 () Bool)

(assert (=> b!6733057 m!7491316))

(declare-fun m!7491318 () Bool)

(assert (=> d!2115601 m!7491318))

(assert (=> d!2115601 m!7490348))

(assert (=> b!6733060 m!7491308))

(assert (=> b!6733060 m!7491308))

(assert (=> b!6733060 m!7491310))

(assert (=> b!6733052 m!7491312))

(assert (=> bm!608250 m!7491318))

(assert (=> d!2115183 d!2115601))

(assert (=> d!2115183 d!2115583))

(declare-fun d!2115603 () Bool)

(declare-fun res!2754484 () Bool)

(declare-fun e!4067474 () Bool)

(assert (=> d!2115603 (=> res!2754484 e!4067474)))

(assert (=> d!2115603 (= res!2754484 ((_ is Nil!65852) (exprs!6443 (h!72301 zl!343))))))

(assert (=> d!2115603 (= (forall!15759 (exprs!6443 (h!72301 zl!343)) lambda!377911) e!4067474)))

(declare-fun b!6733062 () Bool)

(declare-fun e!4067475 () Bool)

(assert (=> b!6733062 (= e!4067474 e!4067475)))

(declare-fun res!2754485 () Bool)

(assert (=> b!6733062 (=> (not res!2754485) (not e!4067475))))

(assert (=> b!6733062 (= res!2754485 (dynLambda!26270 lambda!377911 (h!72300 (exprs!6443 (h!72301 zl!343)))))))

(declare-fun b!6733063 () Bool)

(assert (=> b!6733063 (= e!4067475 (forall!15759 (t!379665 (exprs!6443 (h!72301 zl!343))) lambda!377911))))

(assert (= (and d!2115603 (not res!2754484)) b!6733062))

(assert (= (and b!6733062 res!2754485) b!6733063))

(declare-fun b_lambda!253513 () Bool)

(assert (=> (not b_lambda!253513) (not b!6733062)))

(declare-fun m!7491320 () Bool)

(assert (=> b!6733062 m!7491320))

(declare-fun m!7491322 () Bool)

(assert (=> b!6733063 m!7491322))

(assert (=> d!2115203 d!2115603))

(declare-fun d!2115605 () Bool)

(declare-fun c!1248654 () Bool)

(assert (=> d!2115605 (= c!1248654 (isEmpty!38186 (tail!12631 s!2326)))))

(declare-fun e!4067476 () Bool)

(assert (=> d!2115605 (= (matchZipper!2545 (derivationStepZipper!2503 lt!2437868 (head!13546 s!2326)) (tail!12631 s!2326)) e!4067476)))

(declare-fun b!6733064 () Bool)

(assert (=> b!6733064 (= e!4067476 (nullableZipper!2274 (derivationStepZipper!2503 lt!2437868 (head!13546 s!2326))))))

(declare-fun b!6733065 () Bool)

(assert (=> b!6733065 (= e!4067476 (matchZipper!2545 (derivationStepZipper!2503 (derivationStepZipper!2503 lt!2437868 (head!13546 s!2326)) (head!13546 (tail!12631 s!2326))) (tail!12631 (tail!12631 s!2326))))))

(assert (= (and d!2115605 c!1248654) b!6733064))

(assert (= (and d!2115605 (not c!1248654)) b!6733065))

(assert (=> d!2115605 m!7490254))

(assert (=> d!2115605 m!7490256))

(assert (=> b!6733064 m!7490322))

(declare-fun m!7491324 () Bool)

(assert (=> b!6733064 m!7491324))

(assert (=> b!6733065 m!7490254))

(assert (=> b!6733065 m!7490870))

(assert (=> b!6733065 m!7490322))

(assert (=> b!6733065 m!7490870))

(declare-fun m!7491326 () Bool)

(assert (=> b!6733065 m!7491326))

(assert (=> b!6733065 m!7490254))

(assert (=> b!6733065 m!7490866))

(assert (=> b!6733065 m!7491326))

(assert (=> b!6733065 m!7490866))

(declare-fun m!7491328 () Bool)

(assert (=> b!6733065 m!7491328))

(assert (=> b!6732015 d!2115605))

(declare-fun bs!1790644 () Bool)

(declare-fun d!2115607 () Bool)

(assert (= bs!1790644 (and d!2115607 b!6731459)))

(declare-fun lambda!377972 () Int)

(assert (=> bs!1790644 (= (= (head!13546 s!2326) (h!72302 s!2326)) (= lambda!377972 lambda!377833))))

(declare-fun bs!1790645 () Bool)

(assert (= bs!1790645 (and d!2115607 d!2115155)))

(assert (=> bs!1790645 (= (= (head!13546 s!2326) (h!72302 s!2326)) (= lambda!377972 lambda!377891))))

(declare-fun bs!1790646 () Bool)

(assert (= bs!1790646 (and d!2115607 d!2115167)))

(assert (=> bs!1790646 (= (= (head!13546 s!2326) (h!72302 s!2326)) (= lambda!377972 lambda!377892))))

(declare-fun bs!1790647 () Bool)

(assert (= bs!1790647 (and d!2115607 d!2115349)))

(assert (=> bs!1790647 (= (= (head!13546 s!2326) (head!13546 (t!379667 s!2326))) (= lambda!377972 lambda!377931))))

(assert (=> d!2115607 true))

(assert (=> d!2115607 (= (derivationStepZipper!2503 lt!2437868 (head!13546 s!2326)) (flatMap!2040 lt!2437868 lambda!377972))))

(declare-fun bs!1790648 () Bool)

(assert (= bs!1790648 d!2115607))

(declare-fun m!7491330 () Bool)

(assert (=> bs!1790648 m!7491330))

(assert (=> b!6732015 d!2115607))

(assert (=> b!6732015 d!2115361))

(assert (=> b!6732015 d!2115425))

(declare-fun d!2115609 () Bool)

(assert (=> d!2115609 (= ($colon$colon!2376 (exprs!6443 (Context!11887 Nil!65852)) (ite (or c!1248384 c!1248380) (regTwo!33630 r!7292) r!7292)) (Cons!65852 (ite (or c!1248384 c!1248380) (regTwo!33630 r!7292) r!7292) (exprs!6443 (Context!11887 Nil!65852))))))

(assert (=> bm!608065 d!2115609))

(declare-fun d!2115611 () Bool)

(assert (=> d!2115611 (= (flatMap!2040 z!1189 lambda!377891) (choose!50166 z!1189 lambda!377891))))

(declare-fun bs!1790649 () Bool)

(assert (= bs!1790649 d!2115611))

(declare-fun m!7491332 () Bool)

(assert (=> bs!1790649 m!7491332))

(assert (=> d!2115155 d!2115611))

(declare-fun d!2115613 () Bool)

(assert (=> d!2115613 (= (isEmpty!38188 (t!379665 (exprs!6443 (h!72301 zl!343)))) ((_ is Nil!65852) (t!379665 (exprs!6443 (h!72301 zl!343)))))))

(assert (=> b!6732107 d!2115613))

(declare-fun d!2115615 () Bool)

(assert (=> d!2115615 (= (isUnion!1363 lt!2437897) ((_ is Union!16559) lt!2437897))))

(assert (=> b!6731575 d!2115615))

(declare-fun bm!608251 () Bool)

(declare-fun call!608260 () List!65976)

(declare-fun call!608261 () List!65976)

(assert (=> bm!608251 (= call!608260 call!608261)))

(declare-fun d!2115617 () Bool)

(declare-fun c!1248658 () Bool)

(assert (=> d!2115617 (= c!1248658 (and ((_ is ElementMatch!16559) (h!72300 (exprs!6443 (h!72301 zl!343)))) (= (c!1248231 (h!72300 (exprs!6443 (h!72301 zl!343)))) (h!72302 s!2326))))))

(declare-fun e!4067482 () (InoxSet Context!11886))

(assert (=> d!2115617 (= (derivationStepZipperDown!1787 (h!72300 (exprs!6443 (h!72301 zl!343))) (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343)))) (h!72302 s!2326)) e!4067482)))

(declare-fun b!6733066 () Bool)

(declare-fun e!4067479 () (InoxSet Context!11886))

(declare-fun e!4067480 () (InoxSet Context!11886))

(assert (=> b!6733066 (= e!4067479 e!4067480)))

(declare-fun c!1248655 () Bool)

(assert (=> b!6733066 (= c!1248655 ((_ is Concat!25404) (h!72300 (exprs!6443 (h!72301 zl!343)))))))

(declare-fun b!6733067 () Bool)

(declare-fun call!608257 () (InoxSet Context!11886))

(declare-fun call!608258 () (InoxSet Context!11886))

(assert (=> b!6733067 (= e!4067479 ((_ map or) call!608257 call!608258))))

(declare-fun b!6733068 () Bool)

(declare-fun e!4067477 () (InoxSet Context!11886))

(declare-fun call!608256 () (InoxSet Context!11886))

(assert (=> b!6733068 (= e!4067477 ((_ map or) call!608256 call!608257))))

(declare-fun bm!608252 () Bool)

(assert (=> bm!608252 (= call!608258 call!608256)))

(declare-fun b!6733069 () Bool)

(declare-fun e!4067481 () Bool)

(assert (=> b!6733069 (= e!4067481 (nullable!6546 (regOne!33630 (h!72300 (exprs!6443 (h!72301 zl!343))))))))

(declare-fun b!6733070 () Bool)

(declare-fun call!608259 () (InoxSet Context!11886))

(assert (=> b!6733070 (= e!4067480 call!608259)))

(declare-fun bm!608253 () Bool)

(declare-fun c!1248656 () Bool)

(assert (=> bm!608253 (= call!608257 (derivationStepZipperDown!1787 (ite c!1248656 (regTwo!33631 (h!72300 (exprs!6443 (h!72301 zl!343)))) (regOne!33630 (h!72300 (exprs!6443 (h!72301 zl!343))))) (ite c!1248656 (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343)))) (Context!11887 call!608261)) (h!72302 s!2326)))))

(declare-fun b!6733071 () Bool)

(assert (=> b!6733071 (= e!4067482 e!4067477)))

(assert (=> b!6733071 (= c!1248656 ((_ is Union!16559) (h!72300 (exprs!6443 (h!72301 zl!343)))))))

(declare-fun b!6733072 () Bool)

(declare-fun e!4067478 () (InoxSet Context!11886))

(assert (=> b!6733072 (= e!4067478 ((as const (Array Context!11886 Bool)) false))))

(declare-fun bm!608254 () Bool)

(declare-fun c!1248659 () Bool)

(assert (=> bm!608254 (= call!608261 ($colon$colon!2376 (exprs!6443 (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343))))) (ite (or c!1248659 c!1248655) (regTwo!33630 (h!72300 (exprs!6443 (h!72301 zl!343)))) (h!72300 (exprs!6443 (h!72301 zl!343))))))))

(declare-fun b!6733073 () Bool)

(assert (=> b!6733073 (= e!4067482 (store ((as const (Array Context!11886 Bool)) false) (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343)))) true))))

(declare-fun bm!608255 () Bool)

(assert (=> bm!608255 (= call!608259 call!608258)))

(declare-fun bm!608256 () Bool)

(assert (=> bm!608256 (= call!608256 (derivationStepZipperDown!1787 (ite c!1248656 (regOne!33631 (h!72300 (exprs!6443 (h!72301 zl!343)))) (ite c!1248659 (regTwo!33630 (h!72300 (exprs!6443 (h!72301 zl!343)))) (ite c!1248655 (regOne!33630 (h!72300 (exprs!6443 (h!72301 zl!343)))) (reg!16888 (h!72300 (exprs!6443 (h!72301 zl!343))))))) (ite (or c!1248656 c!1248659) (Context!11887 (t!379665 (exprs!6443 (h!72301 zl!343)))) (Context!11887 call!608260)) (h!72302 s!2326)))))

(declare-fun b!6733074 () Bool)

(assert (=> b!6733074 (= c!1248659 e!4067481)))

(declare-fun res!2754486 () Bool)

(assert (=> b!6733074 (=> (not res!2754486) (not e!4067481))))

(assert (=> b!6733074 (= res!2754486 ((_ is Concat!25404) (h!72300 (exprs!6443 (h!72301 zl!343)))))))

(assert (=> b!6733074 (= e!4067477 e!4067479)))

(declare-fun b!6733075 () Bool)

(assert (=> b!6733075 (= e!4067478 call!608259)))

(declare-fun b!6733076 () Bool)

(declare-fun c!1248657 () Bool)

(assert (=> b!6733076 (= c!1248657 ((_ is Star!16559) (h!72300 (exprs!6443 (h!72301 zl!343)))))))

(assert (=> b!6733076 (= e!4067480 e!4067478)))

(assert (= (and d!2115617 c!1248658) b!6733073))

(assert (= (and d!2115617 (not c!1248658)) b!6733071))

(assert (= (and b!6733071 c!1248656) b!6733068))

(assert (= (and b!6733071 (not c!1248656)) b!6733074))

(assert (= (and b!6733074 res!2754486) b!6733069))

(assert (= (and b!6733074 c!1248659) b!6733067))

(assert (= (and b!6733074 (not c!1248659)) b!6733066))

(assert (= (and b!6733066 c!1248655) b!6733070))

(assert (= (and b!6733066 (not c!1248655)) b!6733076))

(assert (= (and b!6733076 c!1248657) b!6733075))

(assert (= (and b!6733076 (not c!1248657)) b!6733072))

(assert (= (or b!6733070 b!6733075) bm!608251))

(assert (= (or b!6733070 b!6733075) bm!608255))

(assert (= (or b!6733067 bm!608251) bm!608254))

(assert (= (or b!6733067 bm!608255) bm!608252))

(assert (= (or b!6733068 b!6733067) bm!608253))

(assert (= (or b!6733068 bm!608252) bm!608256))

(declare-fun m!7491334 () Bool)

(assert (=> bm!608256 m!7491334))

(declare-fun m!7491336 () Bool)

(assert (=> bm!608254 m!7491336))

(declare-fun m!7491338 () Bool)

(assert (=> bm!608253 m!7491338))

(declare-fun m!7491340 () Bool)

(assert (=> b!6733073 m!7491340))

(declare-fun m!7491342 () Bool)

(assert (=> b!6733069 m!7491342))

(assert (=> bm!608014 d!2115617))

(declare-fun d!2115619 () Bool)

(assert (=> d!2115619 (= ($colon$colon!2376 (exprs!6443 lt!2437873) (ite (or c!1248403 c!1248399) (regTwo!33630 (reg!16888 r!7292)) (reg!16888 r!7292))) (Cons!65852 (ite (or c!1248403 c!1248399) (regTwo!33630 (reg!16888 r!7292)) (reg!16888 r!7292)) (exprs!6443 lt!2437873)))))

(assert (=> bm!608072 d!2115619))

(declare-fun d!2115621 () Bool)

(declare-fun res!2754491 () Bool)

(declare-fun e!4067487 () Bool)

(assert (=> d!2115621 (=> res!2754491 e!4067487)))

(assert (=> d!2115621 (= res!2754491 ((_ is Nil!65853) lt!2437914))))

(assert (=> d!2115621 (= (noDuplicate!2351 lt!2437914) e!4067487)))

(declare-fun b!6733081 () Bool)

(declare-fun e!4067488 () Bool)

(assert (=> b!6733081 (= e!4067487 e!4067488)))

(declare-fun res!2754492 () Bool)

(assert (=> b!6733081 (=> (not res!2754492) (not e!4067488))))

(declare-fun contains!20257 (List!65977 Context!11886) Bool)

(assert (=> b!6733081 (= res!2754492 (not (contains!20257 (t!379666 lt!2437914) (h!72301 lt!2437914))))))

(declare-fun b!6733082 () Bool)

(assert (=> b!6733082 (= e!4067488 (noDuplicate!2351 (t!379666 lt!2437914)))))

(assert (= (and d!2115621 (not res!2754491)) b!6733081))

(assert (= (and b!6733081 res!2754492) b!6733082))

(declare-fun m!7491344 () Bool)

(assert (=> b!6733081 m!7491344))

(declare-fun m!7491346 () Bool)

(assert (=> b!6733082 m!7491346))

(assert (=> d!2115101 d!2115621))

(declare-fun d!2115623 () Bool)

(declare-fun e!4067495 () Bool)

(assert (=> d!2115623 e!4067495))

(declare-fun res!2754497 () Bool)

(assert (=> d!2115623 (=> (not res!2754497) (not e!4067495))))

(declare-fun res!2754498 () List!65977)

(assert (=> d!2115623 (= res!2754497 (noDuplicate!2351 res!2754498))))

(declare-fun e!4067497 () Bool)

(assert (=> d!2115623 e!4067497))

(assert (=> d!2115623 (= (choose!50168 z!1189) res!2754498)))

(declare-fun b!6733090 () Bool)

(declare-fun e!4067496 () Bool)

(declare-fun tp!1845944 () Bool)

(assert (=> b!6733090 (= e!4067496 tp!1845944)))

(declare-fun tp!1845945 () Bool)

(declare-fun b!6733089 () Bool)

(assert (=> b!6733089 (= e!4067497 (and (inv!84644 (h!72301 res!2754498)) e!4067496 tp!1845945))))

(declare-fun b!6733091 () Bool)

(assert (=> b!6733091 (= e!4067495 (= (content!12786 res!2754498) z!1189))))

(assert (= b!6733089 b!6733090))

(assert (= (and d!2115623 ((_ is Cons!65853) res!2754498)) b!6733089))

(assert (= (and d!2115623 res!2754497) b!6733091))

(declare-fun m!7491348 () Bool)

(assert (=> d!2115623 m!7491348))

(declare-fun m!7491350 () Bool)

(assert (=> b!6733089 m!7491350))

(declare-fun m!7491352 () Bool)

(assert (=> b!6733091 m!7491352))

(assert (=> d!2115101 d!2115623))

(assert (=> d!2115185 d!2115169))

(declare-fun bs!1790650 () Bool)

(declare-fun d!2115625 () Bool)

(assert (= bs!1790650 (and d!2115625 b!6731448)))

(declare-fun lambda!377975 () Int)

(assert (=> bs!1790650 (not (= lambda!377975 lambda!377832))))

(declare-fun bs!1790651 () Bool)

(assert (= bs!1790651 (and d!2115625 d!2115181)))

(assert (=> bs!1790651 (not (= lambda!377975 lambda!377904))))

(declare-fun bs!1790652 () Bool)

(assert (= bs!1790652 (and d!2115625 b!6733036)))

(assert (=> bs!1790652 (not (= lambda!377975 lambda!377965))))

(declare-fun bs!1790653 () Bool)

(assert (= bs!1790653 (and d!2115625 d!2115599)))

(assert (=> bs!1790653 (not (= lambda!377975 lambda!377971))))

(assert (=> bs!1790650 (= lambda!377975 lambda!377830)))

(declare-fun bs!1790654 () Bool)

(assert (= bs!1790654 (and d!2115625 b!6732535)))

(assert (=> bs!1790654 (not (= lambda!377975 lambda!377937))))

(declare-fun bs!1790655 () Bool)

(assert (= bs!1790655 (and d!2115625 d!2115171)))

(assert (=> bs!1790655 (not (= lambda!377975 lambda!377898))))

(declare-fun bs!1790656 () Bool)

(assert (= bs!1790656 (and d!2115625 b!6733028)))

(assert (=> bs!1790656 (not (= lambda!377975 lambda!377964))))

(declare-fun bs!1790657 () Bool)

(assert (= bs!1790657 (and d!2115625 d!2115185)))

(assert (=> bs!1790657 (= lambda!377975 lambda!377907)))

(assert (=> bs!1790651 (= (= r!7292 (Star!16559 (reg!16888 r!7292))) (= lambda!377975 lambda!377903))))

(declare-fun bs!1790658 () Bool)

(assert (= bs!1790658 (and d!2115625 b!6731824)))

(assert (=> bs!1790658 (not (= lambda!377975 lambda!377878))))

(assert (=> bs!1790655 (= lambda!377975 lambda!377897)))

(declare-fun bs!1790659 () Bool)

(assert (= bs!1790659 (and d!2115625 b!6732543)))

(assert (=> bs!1790659 (not (= lambda!377975 lambda!377939))))

(assert (=> bs!1790650 (not (= lambda!377975 lambda!377831))))

(declare-fun bs!1790660 () Bool)

(assert (= bs!1790660 (and d!2115625 d!2115581)))

(assert (=> bs!1790660 (not (= lambda!377975 lambda!377962))))

(assert (=> bs!1790660 (= (= r!7292 (Star!16559 (reg!16888 r!7292))) (= lambda!377975 lambda!377961))))

(assert (=> bs!1790653 (= lambda!377975 lambda!377970)))

(declare-fun bs!1790661 () Bool)

(assert (= bs!1790661 (and d!2115625 b!6731816)))

(assert (=> bs!1790661 (not (= lambda!377975 lambda!377876))))

(assert (=> d!2115625 true))

(assert (=> d!2115625 true))

(assert (=> d!2115625 true))

(assert (=> d!2115625 (= (isDefined!13149 (findConcatSeparation!2860 (reg!16888 r!7292) r!7292 Nil!65854 s!2326 s!2326)) (Exists!3627 lambda!377975))))

(assert (=> d!2115625 true))

(declare-fun _$89!2956 () Unit!159809)

(assert (=> d!2115625 (= (choose!50178 (reg!16888 r!7292) r!7292 s!2326) _$89!2956)))

(declare-fun bs!1790662 () Bool)

(assert (= bs!1790662 d!2115625))

(assert (=> bs!1790662 m!7489984))

(assert (=> bs!1790662 m!7489984))

(assert (=> bs!1790662 m!7489986))

(declare-fun m!7491354 () Bool)

(assert (=> bs!1790662 m!7491354))

(assert (=> d!2115185 d!2115625))

(declare-fun d!2115627 () Bool)

(assert (=> d!2115627 (= (Exists!3627 lambda!377907) (choose!50174 lambda!377907))))

(declare-fun bs!1790663 () Bool)

(assert (= bs!1790663 d!2115627))

(declare-fun m!7491356 () Bool)

(assert (=> bs!1790663 m!7491356))

(assert (=> d!2115185 d!2115627))

(assert (=> d!2115185 d!2115183))

(assert (=> d!2115185 d!2115583))

(declare-fun b!6733097 () Bool)

(declare-fun e!4067501 () Bool)

(declare-fun tp!1845946 () Bool)

(assert (=> b!6733097 (= e!4067501 tp!1845946)))

(declare-fun tp!1845947 () Bool)

(declare-fun b!6733096 () Bool)

(declare-fun e!4067500 () Bool)

(assert (=> b!6733096 (= e!4067500 (and (inv!84644 (h!72301 (t!379666 (t!379666 zl!343)))) e!4067501 tp!1845947))))

(assert (=> b!6732192 (= tp!1845769 e!4067500)))

(assert (= b!6733096 b!6733097))

(assert (= (and b!6732192 ((_ is Cons!65853) (t!379666 (t!379666 zl!343)))) b!6733096))

(declare-fun m!7491358 () Bool)

(assert (=> b!6733096 m!7491358))

(declare-fun b!6733098 () Bool)

(declare-fun e!4067502 () Bool)

(declare-fun tp!1845948 () Bool)

(declare-fun tp!1845949 () Bool)

(assert (=> b!6733098 (= e!4067502 (and tp!1845948 tp!1845949))))

(assert (=> b!6732193 (= tp!1845768 e!4067502)))

(assert (= (and b!6732193 ((_ is Cons!65852) (exprs!6443 (h!72301 (t!379666 zl!343))))) b!6733098))

(declare-fun e!4067503 () Bool)

(assert (=> b!6732183 (= tp!1845761 e!4067503)))

(declare-fun b!6733100 () Bool)

(declare-fun tp!1845952 () Bool)

(declare-fun tp!1845954 () Bool)

(assert (=> b!6733100 (= e!4067503 (and tp!1845952 tp!1845954))))

(declare-fun b!6733102 () Bool)

(declare-fun tp!1845953 () Bool)

(declare-fun tp!1845951 () Bool)

(assert (=> b!6733102 (= e!4067503 (and tp!1845953 tp!1845951))))

(declare-fun b!6733101 () Bool)

(declare-fun tp!1845950 () Bool)

(assert (=> b!6733101 (= e!4067503 tp!1845950)))

(declare-fun b!6733099 () Bool)

(assert (=> b!6733099 (= e!4067503 tp_is_empty!42371)))

(assert (= (and b!6732183 ((_ is ElementMatch!16559) (regOne!33630 (reg!16888 r!7292)))) b!6733099))

(assert (= (and b!6732183 ((_ is Concat!25404) (regOne!33630 (reg!16888 r!7292)))) b!6733100))

(assert (= (and b!6732183 ((_ is Star!16559) (regOne!33630 (reg!16888 r!7292)))) b!6733101))

(assert (= (and b!6732183 ((_ is Union!16559) (regOne!33630 (reg!16888 r!7292)))) b!6733102))

(declare-fun e!4067504 () Bool)

(assert (=> b!6732183 (= tp!1845763 e!4067504)))

(declare-fun b!6733104 () Bool)

(declare-fun tp!1845957 () Bool)

(declare-fun tp!1845959 () Bool)

(assert (=> b!6733104 (= e!4067504 (and tp!1845957 tp!1845959))))

(declare-fun b!6733106 () Bool)

(declare-fun tp!1845958 () Bool)

(declare-fun tp!1845956 () Bool)

(assert (=> b!6733106 (= e!4067504 (and tp!1845958 tp!1845956))))

(declare-fun b!6733105 () Bool)

(declare-fun tp!1845955 () Bool)

(assert (=> b!6733105 (= e!4067504 tp!1845955)))

(declare-fun b!6733103 () Bool)

(assert (=> b!6733103 (= e!4067504 tp_is_empty!42371)))

(assert (= (and b!6732183 ((_ is ElementMatch!16559) (regTwo!33630 (reg!16888 r!7292)))) b!6733103))

(assert (= (and b!6732183 ((_ is Concat!25404) (regTwo!33630 (reg!16888 r!7292)))) b!6733104))

(assert (= (and b!6732183 ((_ is Star!16559) (regTwo!33630 (reg!16888 r!7292)))) b!6733105))

(assert (= (and b!6732183 ((_ is Union!16559) (regTwo!33630 (reg!16888 r!7292)))) b!6733106))

(declare-fun e!4067505 () Bool)

(assert (=> b!6732184 (= tp!1845759 e!4067505)))

(declare-fun b!6733108 () Bool)

(declare-fun tp!1845962 () Bool)

(declare-fun tp!1845964 () Bool)

(assert (=> b!6733108 (= e!4067505 (and tp!1845962 tp!1845964))))

(declare-fun b!6733110 () Bool)

(declare-fun tp!1845963 () Bool)

(declare-fun tp!1845961 () Bool)

(assert (=> b!6733110 (= e!4067505 (and tp!1845963 tp!1845961))))

(declare-fun b!6733109 () Bool)

(declare-fun tp!1845960 () Bool)

(assert (=> b!6733109 (= e!4067505 tp!1845960)))

(declare-fun b!6733107 () Bool)

(assert (=> b!6733107 (= e!4067505 tp_is_empty!42371)))

(assert (= (and b!6732184 ((_ is ElementMatch!16559) (reg!16888 (reg!16888 r!7292)))) b!6733107))

(assert (= (and b!6732184 ((_ is Concat!25404) (reg!16888 (reg!16888 r!7292)))) b!6733108))

(assert (= (and b!6732184 ((_ is Star!16559) (reg!16888 (reg!16888 r!7292)))) b!6733109))

(assert (= (and b!6732184 ((_ is Union!16559) (reg!16888 (reg!16888 r!7292)))) b!6733110))

(declare-fun e!4067506 () Bool)

(assert (=> b!6732185 (= tp!1845762 e!4067506)))

(declare-fun b!6733112 () Bool)

(declare-fun tp!1845967 () Bool)

(declare-fun tp!1845969 () Bool)

(assert (=> b!6733112 (= e!4067506 (and tp!1845967 tp!1845969))))

(declare-fun b!6733114 () Bool)

(declare-fun tp!1845968 () Bool)

(declare-fun tp!1845966 () Bool)

(assert (=> b!6733114 (= e!4067506 (and tp!1845968 tp!1845966))))

(declare-fun b!6733113 () Bool)

(declare-fun tp!1845965 () Bool)

(assert (=> b!6733113 (= e!4067506 tp!1845965)))

(declare-fun b!6733111 () Bool)

(assert (=> b!6733111 (= e!4067506 tp_is_empty!42371)))

(assert (= (and b!6732185 ((_ is ElementMatch!16559) (regOne!33631 (reg!16888 r!7292)))) b!6733111))

(assert (= (and b!6732185 ((_ is Concat!25404) (regOne!33631 (reg!16888 r!7292)))) b!6733112))

(assert (= (and b!6732185 ((_ is Star!16559) (regOne!33631 (reg!16888 r!7292)))) b!6733113))

(assert (= (and b!6732185 ((_ is Union!16559) (regOne!33631 (reg!16888 r!7292)))) b!6733114))

(declare-fun e!4067507 () Bool)

(assert (=> b!6732185 (= tp!1845760 e!4067507)))

(declare-fun b!6733116 () Bool)

(declare-fun tp!1845972 () Bool)

(declare-fun tp!1845974 () Bool)

(assert (=> b!6733116 (= e!4067507 (and tp!1845972 tp!1845974))))

(declare-fun b!6733118 () Bool)

(declare-fun tp!1845973 () Bool)

(declare-fun tp!1845971 () Bool)

(assert (=> b!6733118 (= e!4067507 (and tp!1845973 tp!1845971))))

(declare-fun b!6733117 () Bool)

(declare-fun tp!1845970 () Bool)

(assert (=> b!6733117 (= e!4067507 tp!1845970)))

(declare-fun b!6733115 () Bool)

(assert (=> b!6733115 (= e!4067507 tp_is_empty!42371)))

(assert (= (and b!6732185 ((_ is ElementMatch!16559) (regTwo!33631 (reg!16888 r!7292)))) b!6733115))

(assert (= (and b!6732185 ((_ is Concat!25404) (regTwo!33631 (reg!16888 r!7292)))) b!6733116))

(assert (= (and b!6732185 ((_ is Star!16559) (regTwo!33631 (reg!16888 r!7292)))) b!6733117))

(assert (= (and b!6732185 ((_ is Union!16559) (regTwo!33631 (reg!16888 r!7292)))) b!6733118))

(declare-fun e!4067508 () Bool)

(assert (=> b!6732162 (= tp!1845733 e!4067508)))

(declare-fun b!6733120 () Bool)

(declare-fun tp!1845977 () Bool)

(declare-fun tp!1845979 () Bool)

(assert (=> b!6733120 (= e!4067508 (and tp!1845977 tp!1845979))))

(declare-fun b!6733122 () Bool)

(declare-fun tp!1845978 () Bool)

(declare-fun tp!1845976 () Bool)

(assert (=> b!6733122 (= e!4067508 (and tp!1845978 tp!1845976))))

(declare-fun b!6733121 () Bool)

(declare-fun tp!1845975 () Bool)

(assert (=> b!6733121 (= e!4067508 tp!1845975)))

(declare-fun b!6733119 () Bool)

(assert (=> b!6733119 (= e!4067508 tp_is_empty!42371)))

(assert (= (and b!6732162 ((_ is ElementMatch!16559) (regOne!33631 (regTwo!33630 r!7292)))) b!6733119))

(assert (= (and b!6732162 ((_ is Concat!25404) (regOne!33631 (regTwo!33630 r!7292)))) b!6733120))

(assert (= (and b!6732162 ((_ is Star!16559) (regOne!33631 (regTwo!33630 r!7292)))) b!6733121))

(assert (= (and b!6732162 ((_ is Union!16559) (regOne!33631 (regTwo!33630 r!7292)))) b!6733122))

(declare-fun e!4067509 () Bool)

(assert (=> b!6732162 (= tp!1845731 e!4067509)))

(declare-fun b!6733124 () Bool)

(declare-fun tp!1845982 () Bool)

(declare-fun tp!1845984 () Bool)

(assert (=> b!6733124 (= e!4067509 (and tp!1845982 tp!1845984))))

(declare-fun b!6733126 () Bool)

(declare-fun tp!1845983 () Bool)

(declare-fun tp!1845981 () Bool)

(assert (=> b!6733126 (= e!4067509 (and tp!1845983 tp!1845981))))

(declare-fun b!6733125 () Bool)

(declare-fun tp!1845980 () Bool)

(assert (=> b!6733125 (= e!4067509 tp!1845980)))

(declare-fun b!6733123 () Bool)

(assert (=> b!6733123 (= e!4067509 tp_is_empty!42371)))

(assert (= (and b!6732162 ((_ is ElementMatch!16559) (regTwo!33631 (regTwo!33630 r!7292)))) b!6733123))

(assert (= (and b!6732162 ((_ is Concat!25404) (regTwo!33631 (regTwo!33630 r!7292)))) b!6733124))

(assert (= (and b!6732162 ((_ is Star!16559) (regTwo!33631 (regTwo!33630 r!7292)))) b!6733125))

(assert (= (and b!6732162 ((_ is Union!16559) (regTwo!33631 (regTwo!33630 r!7292)))) b!6733126))

(declare-fun e!4067510 () Bool)

(assert (=> b!6732174 (= tp!1845749 e!4067510)))

(declare-fun b!6733128 () Bool)

(declare-fun tp!1845987 () Bool)

(declare-fun tp!1845989 () Bool)

(assert (=> b!6733128 (= e!4067510 (and tp!1845987 tp!1845989))))

(declare-fun b!6733130 () Bool)

(declare-fun tp!1845988 () Bool)

(declare-fun tp!1845986 () Bool)

(assert (=> b!6733130 (= e!4067510 (and tp!1845988 tp!1845986))))

(declare-fun b!6733129 () Bool)

(declare-fun tp!1845985 () Bool)

(assert (=> b!6733129 (= e!4067510 tp!1845985)))

(declare-fun b!6733127 () Bool)

(assert (=> b!6733127 (= e!4067510 tp_is_empty!42371)))

(assert (= (and b!6732174 ((_ is ElementMatch!16559) (regOne!33630 (regOne!33631 r!7292)))) b!6733127))

(assert (= (and b!6732174 ((_ is Concat!25404) (regOne!33630 (regOne!33631 r!7292)))) b!6733128))

(assert (= (and b!6732174 ((_ is Star!16559) (regOne!33630 (regOne!33631 r!7292)))) b!6733129))

(assert (= (and b!6732174 ((_ is Union!16559) (regOne!33630 (regOne!33631 r!7292)))) b!6733130))

(declare-fun e!4067511 () Bool)

(assert (=> b!6732174 (= tp!1845751 e!4067511)))

(declare-fun b!6733132 () Bool)

(declare-fun tp!1845992 () Bool)

(declare-fun tp!1845994 () Bool)

(assert (=> b!6733132 (= e!4067511 (and tp!1845992 tp!1845994))))

(declare-fun b!6733134 () Bool)

(declare-fun tp!1845993 () Bool)

(declare-fun tp!1845991 () Bool)

(assert (=> b!6733134 (= e!4067511 (and tp!1845993 tp!1845991))))

(declare-fun b!6733133 () Bool)

(declare-fun tp!1845990 () Bool)

(assert (=> b!6733133 (= e!4067511 tp!1845990)))

(declare-fun b!6733131 () Bool)

(assert (=> b!6733131 (= e!4067511 tp_is_empty!42371)))

(assert (= (and b!6732174 ((_ is ElementMatch!16559) (regTwo!33630 (regOne!33631 r!7292)))) b!6733131))

(assert (= (and b!6732174 ((_ is Concat!25404) (regTwo!33630 (regOne!33631 r!7292)))) b!6733132))

(assert (= (and b!6732174 ((_ is Star!16559) (regTwo!33630 (regOne!33631 r!7292)))) b!6733133))

(assert (= (and b!6732174 ((_ is Union!16559) (regTwo!33630 (regOne!33631 r!7292)))) b!6733134))

(declare-fun e!4067512 () Bool)

(assert (=> b!6732175 (= tp!1845747 e!4067512)))

(declare-fun b!6733136 () Bool)

(declare-fun tp!1845997 () Bool)

(declare-fun tp!1845999 () Bool)

(assert (=> b!6733136 (= e!4067512 (and tp!1845997 tp!1845999))))

(declare-fun b!6733138 () Bool)

(declare-fun tp!1845998 () Bool)

(declare-fun tp!1845996 () Bool)

(assert (=> b!6733138 (= e!4067512 (and tp!1845998 tp!1845996))))

(declare-fun b!6733137 () Bool)

(declare-fun tp!1845995 () Bool)

(assert (=> b!6733137 (= e!4067512 tp!1845995)))

(declare-fun b!6733135 () Bool)

(assert (=> b!6733135 (= e!4067512 tp_is_empty!42371)))

(assert (= (and b!6732175 ((_ is ElementMatch!16559) (reg!16888 (regOne!33631 r!7292)))) b!6733135))

(assert (= (and b!6732175 ((_ is Concat!25404) (reg!16888 (regOne!33631 r!7292)))) b!6733136))

(assert (= (and b!6732175 ((_ is Star!16559) (reg!16888 (regOne!33631 r!7292)))) b!6733137))

(assert (= (and b!6732175 ((_ is Union!16559) (reg!16888 (regOne!33631 r!7292)))) b!6733138))

(declare-fun e!4067513 () Bool)

(assert (=> b!6732176 (= tp!1845750 e!4067513)))

(declare-fun b!6733140 () Bool)

(declare-fun tp!1846002 () Bool)

(declare-fun tp!1846004 () Bool)

(assert (=> b!6733140 (= e!4067513 (and tp!1846002 tp!1846004))))

(declare-fun b!6733142 () Bool)

(declare-fun tp!1846003 () Bool)

(declare-fun tp!1846001 () Bool)

(assert (=> b!6733142 (= e!4067513 (and tp!1846003 tp!1846001))))

(declare-fun b!6733141 () Bool)

(declare-fun tp!1846000 () Bool)

(assert (=> b!6733141 (= e!4067513 tp!1846000)))

(declare-fun b!6733139 () Bool)

(assert (=> b!6733139 (= e!4067513 tp_is_empty!42371)))

(assert (= (and b!6732176 ((_ is ElementMatch!16559) (regOne!33631 (regOne!33631 r!7292)))) b!6733139))

(assert (= (and b!6732176 ((_ is Concat!25404) (regOne!33631 (regOne!33631 r!7292)))) b!6733140))

(assert (= (and b!6732176 ((_ is Star!16559) (regOne!33631 (regOne!33631 r!7292)))) b!6733141))

(assert (= (and b!6732176 ((_ is Union!16559) (regOne!33631 (regOne!33631 r!7292)))) b!6733142))

(declare-fun e!4067514 () Bool)

(assert (=> b!6732176 (= tp!1845748 e!4067514)))

(declare-fun b!6733144 () Bool)

(declare-fun tp!1846007 () Bool)

(declare-fun tp!1846009 () Bool)

(assert (=> b!6733144 (= e!4067514 (and tp!1846007 tp!1846009))))

(declare-fun b!6733146 () Bool)

(declare-fun tp!1846008 () Bool)

(declare-fun tp!1846006 () Bool)

(assert (=> b!6733146 (= e!4067514 (and tp!1846008 tp!1846006))))

(declare-fun b!6733145 () Bool)

(declare-fun tp!1846005 () Bool)

(assert (=> b!6733145 (= e!4067514 tp!1846005)))

(declare-fun b!6733143 () Bool)

(assert (=> b!6733143 (= e!4067514 tp_is_empty!42371)))

(assert (= (and b!6732176 ((_ is ElementMatch!16559) (regTwo!33631 (regOne!33631 r!7292)))) b!6733143))

(assert (= (and b!6732176 ((_ is Concat!25404) (regTwo!33631 (regOne!33631 r!7292)))) b!6733144))

(assert (= (and b!6732176 ((_ is Star!16559) (regTwo!33631 (regOne!33631 r!7292)))) b!6733145))

(assert (= (and b!6732176 ((_ is Union!16559) (regTwo!33631 (regOne!33631 r!7292)))) b!6733146))

(declare-fun e!4067515 () Bool)

(assert (=> b!6732160 (= tp!1845732 e!4067515)))

(declare-fun b!6733148 () Bool)

(declare-fun tp!1846012 () Bool)

(declare-fun tp!1846014 () Bool)

(assert (=> b!6733148 (= e!4067515 (and tp!1846012 tp!1846014))))

(declare-fun b!6733150 () Bool)

(declare-fun tp!1846013 () Bool)

(declare-fun tp!1846011 () Bool)

(assert (=> b!6733150 (= e!4067515 (and tp!1846013 tp!1846011))))

(declare-fun b!6733149 () Bool)

(declare-fun tp!1846010 () Bool)

(assert (=> b!6733149 (= e!4067515 tp!1846010)))

(declare-fun b!6733147 () Bool)

(assert (=> b!6733147 (= e!4067515 tp_is_empty!42371)))

(assert (= (and b!6732160 ((_ is ElementMatch!16559) (regOne!33630 (regTwo!33630 r!7292)))) b!6733147))

(assert (= (and b!6732160 ((_ is Concat!25404) (regOne!33630 (regTwo!33630 r!7292)))) b!6733148))

(assert (= (and b!6732160 ((_ is Star!16559) (regOne!33630 (regTwo!33630 r!7292)))) b!6733149))

(assert (= (and b!6732160 ((_ is Union!16559) (regOne!33630 (regTwo!33630 r!7292)))) b!6733150))

(declare-fun e!4067516 () Bool)

(assert (=> b!6732160 (= tp!1845734 e!4067516)))

(declare-fun b!6733152 () Bool)

(declare-fun tp!1846017 () Bool)

(declare-fun tp!1846019 () Bool)

(assert (=> b!6733152 (= e!4067516 (and tp!1846017 tp!1846019))))

(declare-fun b!6733154 () Bool)

(declare-fun tp!1846018 () Bool)

(declare-fun tp!1846016 () Bool)

(assert (=> b!6733154 (= e!4067516 (and tp!1846018 tp!1846016))))

(declare-fun b!6733153 () Bool)

(declare-fun tp!1846015 () Bool)

(assert (=> b!6733153 (= e!4067516 tp!1846015)))

(declare-fun b!6733151 () Bool)

(assert (=> b!6733151 (= e!4067516 tp_is_empty!42371)))

(assert (= (and b!6732160 ((_ is ElementMatch!16559) (regTwo!33630 (regTwo!33630 r!7292)))) b!6733151))

(assert (= (and b!6732160 ((_ is Concat!25404) (regTwo!33630 (regTwo!33630 r!7292)))) b!6733152))

(assert (= (and b!6732160 ((_ is Star!16559) (regTwo!33630 (regTwo!33630 r!7292)))) b!6733153))

(assert (= (and b!6732160 ((_ is Union!16559) (regTwo!33630 (regTwo!33630 r!7292)))) b!6733154))

(declare-fun e!4067517 () Bool)

(assert (=> b!6732161 (= tp!1845730 e!4067517)))

(declare-fun b!6733156 () Bool)

(declare-fun tp!1846022 () Bool)

(declare-fun tp!1846024 () Bool)

(assert (=> b!6733156 (= e!4067517 (and tp!1846022 tp!1846024))))

(declare-fun b!6733158 () Bool)

(declare-fun tp!1846023 () Bool)

(declare-fun tp!1846021 () Bool)

(assert (=> b!6733158 (= e!4067517 (and tp!1846023 tp!1846021))))

(declare-fun b!6733157 () Bool)

(declare-fun tp!1846020 () Bool)

(assert (=> b!6733157 (= e!4067517 tp!1846020)))

(declare-fun b!6733155 () Bool)

(assert (=> b!6733155 (= e!4067517 tp_is_empty!42371)))

(assert (= (and b!6732161 ((_ is ElementMatch!16559) (reg!16888 (regTwo!33630 r!7292)))) b!6733155))

(assert (= (and b!6732161 ((_ is Concat!25404) (reg!16888 (regTwo!33630 r!7292)))) b!6733156))

(assert (= (and b!6732161 ((_ is Star!16559) (reg!16888 (regTwo!33630 r!7292)))) b!6733157))

(assert (= (and b!6732161 ((_ is Union!16559) (reg!16888 (regTwo!33630 r!7292)))) b!6733158))

(declare-fun e!4067518 () Bool)

(assert (=> b!6732181 (= tp!1845757 e!4067518)))

(declare-fun b!6733160 () Bool)

(declare-fun tp!1846027 () Bool)

(declare-fun tp!1846029 () Bool)

(assert (=> b!6733160 (= e!4067518 (and tp!1846027 tp!1846029))))

(declare-fun b!6733162 () Bool)

(declare-fun tp!1846028 () Bool)

(declare-fun tp!1846026 () Bool)

(assert (=> b!6733162 (= e!4067518 (and tp!1846028 tp!1846026))))

(declare-fun b!6733161 () Bool)

(declare-fun tp!1846025 () Bool)

(assert (=> b!6733161 (= e!4067518 tp!1846025)))

(declare-fun b!6733159 () Bool)

(assert (=> b!6733159 (= e!4067518 tp_is_empty!42371)))

(assert (= (and b!6732181 ((_ is ElementMatch!16559) (h!72300 (exprs!6443 setElem!45921)))) b!6733159))

(assert (= (and b!6732181 ((_ is Concat!25404) (h!72300 (exprs!6443 setElem!45921)))) b!6733160))

(assert (= (and b!6732181 ((_ is Star!16559) (h!72300 (exprs!6443 setElem!45921)))) b!6733161))

(assert (= (and b!6732181 ((_ is Union!16559) (h!72300 (exprs!6443 setElem!45921)))) b!6733162))

(declare-fun b!6733163 () Bool)

(declare-fun e!4067519 () Bool)

(declare-fun tp!1846030 () Bool)

(declare-fun tp!1846031 () Bool)

(assert (=> b!6733163 (= e!4067519 (and tp!1846030 tp!1846031))))

(assert (=> b!6732181 (= tp!1845758 e!4067519)))

(assert (= (and b!6732181 ((_ is Cons!65852) (t!379665 (exprs!6443 setElem!45921)))) b!6733163))

(declare-fun b!6733164 () Bool)

(declare-fun e!4067520 () Bool)

(declare-fun tp!1846032 () Bool)

(assert (=> b!6733164 (= e!4067520 (and tp_is_empty!42371 tp!1846032))))

(assert (=> b!6732144 (= tp!1845714 e!4067520)))

(assert (= (and b!6732144 ((_ is Cons!65854) (t!379667 (t!379667 s!2326)))) b!6733164))

(declare-fun e!4067521 () Bool)

(assert (=> b!6732167 (= tp!1845739 e!4067521)))

(declare-fun b!6733166 () Bool)

(declare-fun tp!1846035 () Bool)

(declare-fun tp!1846037 () Bool)

(assert (=> b!6733166 (= e!4067521 (and tp!1846035 tp!1846037))))

(declare-fun b!6733168 () Bool)

(declare-fun tp!1846036 () Bool)

(declare-fun tp!1846034 () Bool)

(assert (=> b!6733168 (= e!4067521 (and tp!1846036 tp!1846034))))

(declare-fun b!6733167 () Bool)

(declare-fun tp!1846033 () Bool)

(assert (=> b!6733167 (= e!4067521 tp!1846033)))

(declare-fun b!6733165 () Bool)

(assert (=> b!6733165 (= e!4067521 tp_is_empty!42371)))

(assert (= (and b!6732167 ((_ is ElementMatch!16559) (h!72300 (exprs!6443 (h!72301 zl!343))))) b!6733165))

(assert (= (and b!6732167 ((_ is Concat!25404) (h!72300 (exprs!6443 (h!72301 zl!343))))) b!6733166))

(assert (= (and b!6732167 ((_ is Star!16559) (h!72300 (exprs!6443 (h!72301 zl!343))))) b!6733167))

(assert (= (and b!6732167 ((_ is Union!16559) (h!72300 (exprs!6443 (h!72301 zl!343))))) b!6733168))

(declare-fun b!6733169 () Bool)

(declare-fun e!4067522 () Bool)

(declare-fun tp!1846038 () Bool)

(declare-fun tp!1846039 () Bool)

(assert (=> b!6733169 (= e!4067522 (and tp!1846038 tp!1846039))))

(assert (=> b!6732167 (= tp!1845740 e!4067522)))

(assert (= (and b!6732167 ((_ is Cons!65852) (t!379665 (exprs!6443 (h!72301 zl!343))))) b!6733169))

(declare-fun condSetEmpty!45937 () Bool)

(assert (=> setNonEmpty!45927 (= condSetEmpty!45937 (= setRest!45927 ((as const (Array Context!11886 Bool)) false)))))

(declare-fun setRes!45937 () Bool)

(assert (=> setNonEmpty!45927 (= tp!1845745 setRes!45937)))

(declare-fun setIsEmpty!45937 () Bool)

(assert (=> setIsEmpty!45937 setRes!45937))

(declare-fun e!4067523 () Bool)

(declare-fun setElem!45937 () Context!11886)

(declare-fun tp!1846040 () Bool)

(declare-fun setNonEmpty!45937 () Bool)

(assert (=> setNonEmpty!45937 (= setRes!45937 (and tp!1846040 (inv!84644 setElem!45937) e!4067523))))

(declare-fun setRest!45937 () (InoxSet Context!11886))

(assert (=> setNonEmpty!45937 (= setRest!45927 ((_ map or) (store ((as const (Array Context!11886 Bool)) false) setElem!45937 true) setRest!45937))))

(declare-fun b!6733170 () Bool)

(declare-fun tp!1846041 () Bool)

(assert (=> b!6733170 (= e!4067523 tp!1846041)))

(assert (= (and setNonEmpty!45927 condSetEmpty!45937) setIsEmpty!45937))

(assert (= (and setNonEmpty!45927 (not condSetEmpty!45937)) setNonEmpty!45937))

(assert (= setNonEmpty!45937 b!6733170))

(declare-fun m!7491360 () Bool)

(assert (=> setNonEmpty!45937 m!7491360))

(declare-fun e!4067524 () Bool)

(assert (=> b!6732157 (= tp!1845725 e!4067524)))

(declare-fun b!6733172 () Bool)

(declare-fun tp!1846044 () Bool)

(declare-fun tp!1846046 () Bool)

(assert (=> b!6733172 (= e!4067524 (and tp!1846044 tp!1846046))))

(declare-fun b!6733174 () Bool)

(declare-fun tp!1846045 () Bool)

(declare-fun tp!1846043 () Bool)

(assert (=> b!6733174 (= e!4067524 (and tp!1846045 tp!1846043))))

(declare-fun b!6733173 () Bool)

(declare-fun tp!1846042 () Bool)

(assert (=> b!6733173 (= e!4067524 tp!1846042)))

(declare-fun b!6733171 () Bool)

(assert (=> b!6733171 (= e!4067524 tp_is_empty!42371)))

(assert (= (and b!6732157 ((_ is ElementMatch!16559) (reg!16888 (regOne!33630 r!7292)))) b!6733171))

(assert (= (and b!6732157 ((_ is Concat!25404) (reg!16888 (regOne!33630 r!7292)))) b!6733172))

(assert (= (and b!6732157 ((_ is Star!16559) (reg!16888 (regOne!33630 r!7292)))) b!6733173))

(assert (= (and b!6732157 ((_ is Union!16559) (reg!16888 (regOne!33630 r!7292)))) b!6733174))

(declare-fun e!4067525 () Bool)

(assert (=> b!6732158 (= tp!1845728 e!4067525)))

(declare-fun b!6733176 () Bool)

(declare-fun tp!1846049 () Bool)

(declare-fun tp!1846051 () Bool)

(assert (=> b!6733176 (= e!4067525 (and tp!1846049 tp!1846051))))

(declare-fun b!6733178 () Bool)

(declare-fun tp!1846050 () Bool)

(declare-fun tp!1846048 () Bool)

(assert (=> b!6733178 (= e!4067525 (and tp!1846050 tp!1846048))))

(declare-fun b!6733177 () Bool)

(declare-fun tp!1846047 () Bool)

(assert (=> b!6733177 (= e!4067525 tp!1846047)))

(declare-fun b!6733175 () Bool)

(assert (=> b!6733175 (= e!4067525 tp_is_empty!42371)))

(assert (= (and b!6732158 ((_ is ElementMatch!16559) (regOne!33631 (regOne!33630 r!7292)))) b!6733175))

(assert (= (and b!6732158 ((_ is Concat!25404) (regOne!33631 (regOne!33630 r!7292)))) b!6733176))

(assert (= (and b!6732158 ((_ is Star!16559) (regOne!33631 (regOne!33630 r!7292)))) b!6733177))

(assert (= (and b!6732158 ((_ is Union!16559) (regOne!33631 (regOne!33630 r!7292)))) b!6733178))

(declare-fun e!4067526 () Bool)

(assert (=> b!6732158 (= tp!1845726 e!4067526)))

(declare-fun b!6733180 () Bool)

(declare-fun tp!1846054 () Bool)

(declare-fun tp!1846056 () Bool)

(assert (=> b!6733180 (= e!4067526 (and tp!1846054 tp!1846056))))

(declare-fun b!6733182 () Bool)

(declare-fun tp!1846055 () Bool)

(declare-fun tp!1846053 () Bool)

(assert (=> b!6733182 (= e!4067526 (and tp!1846055 tp!1846053))))

(declare-fun b!6733181 () Bool)

(declare-fun tp!1846052 () Bool)

(assert (=> b!6733181 (= e!4067526 tp!1846052)))

(declare-fun b!6733179 () Bool)

(assert (=> b!6733179 (= e!4067526 tp_is_empty!42371)))

(assert (= (and b!6732158 ((_ is ElementMatch!16559) (regTwo!33631 (regOne!33630 r!7292)))) b!6733179))

(assert (= (and b!6732158 ((_ is Concat!25404) (regTwo!33631 (regOne!33630 r!7292)))) b!6733180))

(assert (= (and b!6732158 ((_ is Star!16559) (regTwo!33631 (regOne!33630 r!7292)))) b!6733181))

(assert (= (and b!6732158 ((_ is Union!16559) (regTwo!33631 (regOne!33630 r!7292)))) b!6733182))

(declare-fun e!4067527 () Bool)

(assert (=> b!6732179 (= tp!1845752 e!4067527)))

(declare-fun b!6733184 () Bool)

(declare-fun tp!1846059 () Bool)

(declare-fun tp!1846061 () Bool)

(assert (=> b!6733184 (= e!4067527 (and tp!1846059 tp!1846061))))

(declare-fun b!6733186 () Bool)

(declare-fun tp!1846060 () Bool)

(declare-fun tp!1846058 () Bool)

(assert (=> b!6733186 (= e!4067527 (and tp!1846060 tp!1846058))))

(declare-fun b!6733185 () Bool)

(declare-fun tp!1846057 () Bool)

(assert (=> b!6733185 (= e!4067527 tp!1846057)))

(declare-fun b!6733183 () Bool)

(assert (=> b!6733183 (= e!4067527 tp_is_empty!42371)))

(assert (= (and b!6732179 ((_ is ElementMatch!16559) (reg!16888 (regTwo!33631 r!7292)))) b!6733183))

(assert (= (and b!6732179 ((_ is Concat!25404) (reg!16888 (regTwo!33631 r!7292)))) b!6733184))

(assert (= (and b!6732179 ((_ is Star!16559) (reg!16888 (regTwo!33631 r!7292)))) b!6733185))

(assert (= (and b!6732179 ((_ is Union!16559) (reg!16888 (regTwo!33631 r!7292)))) b!6733186))

(declare-fun b!6733187 () Bool)

(declare-fun e!4067528 () Bool)

(declare-fun tp!1846062 () Bool)

(declare-fun tp!1846063 () Bool)

(assert (=> b!6733187 (= e!4067528 (and tp!1846062 tp!1846063))))

(assert (=> b!6732172 (= tp!1845746 e!4067528)))

(assert (= (and b!6732172 ((_ is Cons!65852) (exprs!6443 setElem!45927))) b!6733187))

(declare-fun e!4067529 () Bool)

(assert (=> b!6732180 (= tp!1845755 e!4067529)))

(declare-fun b!6733189 () Bool)

(declare-fun tp!1846066 () Bool)

(declare-fun tp!1846068 () Bool)

(assert (=> b!6733189 (= e!4067529 (and tp!1846066 tp!1846068))))

(declare-fun b!6733191 () Bool)

(declare-fun tp!1846067 () Bool)

(declare-fun tp!1846065 () Bool)

(assert (=> b!6733191 (= e!4067529 (and tp!1846067 tp!1846065))))

(declare-fun b!6733190 () Bool)

(declare-fun tp!1846064 () Bool)

(assert (=> b!6733190 (= e!4067529 tp!1846064)))

(declare-fun b!6733188 () Bool)

(assert (=> b!6733188 (= e!4067529 tp_is_empty!42371)))

(assert (= (and b!6732180 ((_ is ElementMatch!16559) (regOne!33631 (regTwo!33631 r!7292)))) b!6733188))

(assert (= (and b!6732180 ((_ is Concat!25404) (regOne!33631 (regTwo!33631 r!7292)))) b!6733189))

(assert (= (and b!6732180 ((_ is Star!16559) (regOne!33631 (regTwo!33631 r!7292)))) b!6733190))

(assert (= (and b!6732180 ((_ is Union!16559) (regOne!33631 (regTwo!33631 r!7292)))) b!6733191))

(declare-fun e!4067530 () Bool)

(assert (=> b!6732180 (= tp!1845753 e!4067530)))

(declare-fun b!6733193 () Bool)

(declare-fun tp!1846071 () Bool)

(declare-fun tp!1846073 () Bool)

(assert (=> b!6733193 (= e!4067530 (and tp!1846071 tp!1846073))))

(declare-fun b!6733195 () Bool)

(declare-fun tp!1846072 () Bool)

(declare-fun tp!1846070 () Bool)

(assert (=> b!6733195 (= e!4067530 (and tp!1846072 tp!1846070))))

(declare-fun b!6733194 () Bool)

(declare-fun tp!1846069 () Bool)

(assert (=> b!6733194 (= e!4067530 tp!1846069)))

(declare-fun b!6733192 () Bool)

(assert (=> b!6733192 (= e!4067530 tp_is_empty!42371)))

(assert (= (and b!6732180 ((_ is ElementMatch!16559) (regTwo!33631 (regTwo!33631 r!7292)))) b!6733192))

(assert (= (and b!6732180 ((_ is Concat!25404) (regTwo!33631 (regTwo!33631 r!7292)))) b!6733193))

(assert (= (and b!6732180 ((_ is Star!16559) (regTwo!33631 (regTwo!33631 r!7292)))) b!6733194))

(assert (= (and b!6732180 ((_ is Union!16559) (regTwo!33631 (regTwo!33631 r!7292)))) b!6733195))

(declare-fun e!4067531 () Bool)

(assert (=> b!6732156 (= tp!1845727 e!4067531)))

(declare-fun b!6733197 () Bool)

(declare-fun tp!1846076 () Bool)

(declare-fun tp!1846078 () Bool)

(assert (=> b!6733197 (= e!4067531 (and tp!1846076 tp!1846078))))

(declare-fun b!6733199 () Bool)

(declare-fun tp!1846077 () Bool)

(declare-fun tp!1846075 () Bool)

(assert (=> b!6733199 (= e!4067531 (and tp!1846077 tp!1846075))))

(declare-fun b!6733198 () Bool)

(declare-fun tp!1846074 () Bool)

(assert (=> b!6733198 (= e!4067531 tp!1846074)))

(declare-fun b!6733196 () Bool)

(assert (=> b!6733196 (= e!4067531 tp_is_empty!42371)))

(assert (= (and b!6732156 ((_ is ElementMatch!16559) (regOne!33630 (regOne!33630 r!7292)))) b!6733196))

(assert (= (and b!6732156 ((_ is Concat!25404) (regOne!33630 (regOne!33630 r!7292)))) b!6733197))

(assert (= (and b!6732156 ((_ is Star!16559) (regOne!33630 (regOne!33630 r!7292)))) b!6733198))

(assert (= (and b!6732156 ((_ is Union!16559) (regOne!33630 (regOne!33630 r!7292)))) b!6733199))

(declare-fun e!4067532 () Bool)

(assert (=> b!6732156 (= tp!1845729 e!4067532)))

(declare-fun b!6733201 () Bool)

(declare-fun tp!1846081 () Bool)

(declare-fun tp!1846083 () Bool)

(assert (=> b!6733201 (= e!4067532 (and tp!1846081 tp!1846083))))

(declare-fun b!6733203 () Bool)

(declare-fun tp!1846082 () Bool)

(declare-fun tp!1846080 () Bool)

(assert (=> b!6733203 (= e!4067532 (and tp!1846082 tp!1846080))))

(declare-fun b!6733202 () Bool)

(declare-fun tp!1846079 () Bool)

(assert (=> b!6733202 (= e!4067532 tp!1846079)))

(declare-fun b!6733200 () Bool)

(assert (=> b!6733200 (= e!4067532 tp_is_empty!42371)))

(assert (= (and b!6732156 ((_ is ElementMatch!16559) (regTwo!33630 (regOne!33630 r!7292)))) b!6733200))

(assert (= (and b!6732156 ((_ is Concat!25404) (regTwo!33630 (regOne!33630 r!7292)))) b!6733201))

(assert (= (and b!6732156 ((_ is Star!16559) (regTwo!33630 (regOne!33630 r!7292)))) b!6733202))

(assert (= (and b!6732156 ((_ is Union!16559) (regTwo!33630 (regOne!33630 r!7292)))) b!6733203))

(declare-fun e!4067533 () Bool)

(assert (=> b!6732178 (= tp!1845754 e!4067533)))

(declare-fun b!6733205 () Bool)

(declare-fun tp!1846086 () Bool)

(declare-fun tp!1846088 () Bool)

(assert (=> b!6733205 (= e!4067533 (and tp!1846086 tp!1846088))))

(declare-fun b!6733207 () Bool)

(declare-fun tp!1846087 () Bool)

(declare-fun tp!1846085 () Bool)

(assert (=> b!6733207 (= e!4067533 (and tp!1846087 tp!1846085))))

(declare-fun b!6733206 () Bool)

(declare-fun tp!1846084 () Bool)

(assert (=> b!6733206 (= e!4067533 tp!1846084)))

(declare-fun b!6733204 () Bool)

(assert (=> b!6733204 (= e!4067533 tp_is_empty!42371)))

(assert (= (and b!6732178 ((_ is ElementMatch!16559) (regOne!33630 (regTwo!33631 r!7292)))) b!6733204))

(assert (= (and b!6732178 ((_ is Concat!25404) (regOne!33630 (regTwo!33631 r!7292)))) b!6733205))

(assert (= (and b!6732178 ((_ is Star!16559) (regOne!33630 (regTwo!33631 r!7292)))) b!6733206))

(assert (= (and b!6732178 ((_ is Union!16559) (regOne!33630 (regTwo!33631 r!7292)))) b!6733207))

(declare-fun e!4067534 () Bool)

(assert (=> b!6732178 (= tp!1845756 e!4067534)))

(declare-fun b!6733209 () Bool)

(declare-fun tp!1846091 () Bool)

(declare-fun tp!1846093 () Bool)

(assert (=> b!6733209 (= e!4067534 (and tp!1846091 tp!1846093))))

(declare-fun b!6733211 () Bool)

(declare-fun tp!1846092 () Bool)

(declare-fun tp!1846090 () Bool)

(assert (=> b!6733211 (= e!4067534 (and tp!1846092 tp!1846090))))

(declare-fun b!6733210 () Bool)

(declare-fun tp!1846089 () Bool)

(assert (=> b!6733210 (= e!4067534 tp!1846089)))

(declare-fun b!6733208 () Bool)

(assert (=> b!6733208 (= e!4067534 tp_is_empty!42371)))

(assert (= (and b!6732178 ((_ is ElementMatch!16559) (regTwo!33630 (regTwo!33631 r!7292)))) b!6733208))

(assert (= (and b!6732178 ((_ is Concat!25404) (regTwo!33630 (regTwo!33631 r!7292)))) b!6733209))

(assert (= (and b!6732178 ((_ is Star!16559) (regTwo!33630 (regTwo!33631 r!7292)))) b!6733210))

(assert (= (and b!6732178 ((_ is Union!16559) (regTwo!33630 (regTwo!33631 r!7292)))) b!6733211))

(declare-fun b_lambda!253515 () Bool)

(assert (= b_lambda!253507 (or d!2115077 b_lambda!253515)))

(declare-fun bs!1790664 () Bool)

(declare-fun d!2115629 () Bool)

(assert (= bs!1790664 (and d!2115629 d!2115077)))

(assert (=> bs!1790664 (= (dynLambda!26270 lambda!377854 (h!72300 lt!2437900)) (validRegex!8295 (h!72300 lt!2437900)))))

(declare-fun m!7491362 () Bool)

(assert (=> bs!1790664 m!7491362))

(assert (=> b!6732979 d!2115629))

(declare-fun b_lambda!253517 () Bool)

(assert (= b_lambda!253509 (or b!6731459 b_lambda!253517)))

(assert (=> d!2115591 d!2115207))

(declare-fun b_lambda!253519 () Bool)

(assert (= b_lambda!253487 (or b!6731459 b_lambda!253519)))

(assert (=> d!2115483 d!2115205))

(declare-fun b_lambda!253521 () Bool)

(assert (= b_lambda!253505 (or d!2115199 b_lambda!253521)))

(declare-fun bs!1790665 () Bool)

(declare-fun d!2115631 () Bool)

(assert (= bs!1790665 (and d!2115631 d!2115199)))

(assert (=> bs!1790665 (= (dynLambda!26270 lambda!377910 (h!72300 (exprs!6443 (h!72301 zl!343)))) (validRegex!8295 (h!72300 (exprs!6443 (h!72301 zl!343)))))))

(declare-fun m!7491364 () Bool)

(assert (=> bs!1790665 m!7491364))

(assert (=> b!6732977 d!2115631))

(declare-fun b_lambda!253523 () Bool)

(assert (= b_lambda!253511 (or d!2115081 b_lambda!253523)))

(declare-fun bs!1790666 () Bool)

(declare-fun d!2115633 () Bool)

(assert (= bs!1790666 (and d!2115633 d!2115081)))

(assert (=> bs!1790666 (= (dynLambda!26270 lambda!377855 (h!72300 (exprs!6443 lt!2437873))) (validRegex!8295 (h!72300 (exprs!6443 lt!2437873))))))

(declare-fun m!7491366 () Bool)

(assert (=> bs!1790666 m!7491366))

(assert (=> b!6733038 d!2115633))

(declare-fun b_lambda!253525 () Bool)

(assert (= b_lambda!253479 (or d!2115063 b_lambda!253525)))

(declare-fun bs!1790667 () Bool)

(declare-fun d!2115635 () Bool)

(assert (= bs!1790667 (and d!2115635 d!2115063)))

(assert (=> bs!1790667 (= (dynLambda!26270 lambda!377836 (h!72300 (exprs!6443 setElem!45921))) (validRegex!8295 (h!72300 (exprs!6443 setElem!45921))))))

(declare-fun m!7491368 () Bool)

(assert (=> bs!1790667 m!7491368))

(assert (=> b!6732511 d!2115635))

(declare-fun b_lambda!253527 () Bool)

(assert (= b_lambda!253481 (or d!2115069 b_lambda!253527)))

(declare-fun bs!1790668 () Bool)

(declare-fun d!2115637 () Bool)

(assert (= bs!1790668 (and d!2115637 d!2115069)))

(assert (=> bs!1790668 (= (dynLambda!26270 lambda!377845 (h!72300 (unfocusZipperList!1980 zl!343))) (validRegex!8295 (h!72300 (unfocusZipperList!1980 zl!343))))))

(declare-fun m!7491370 () Bool)

(assert (=> bs!1790668 m!7491370))

(assert (=> b!6732565 d!2115637))

(declare-fun b_lambda!253529 () Bool)

(assert (= b_lambda!253513 (or d!2115203 b_lambda!253529)))

(declare-fun bs!1790669 () Bool)

(declare-fun d!2115639 () Bool)

(assert (= bs!1790669 (and d!2115639 d!2115203)))

(assert (=> bs!1790669 (= (dynLambda!26270 lambda!377911 (h!72300 (exprs!6443 (h!72301 zl!343)))) (validRegex!8295 (h!72300 (exprs!6443 (h!72301 zl!343)))))))

(assert (=> bs!1790669 m!7491364))

(assert (=> b!6733062 d!2115639))

(check-sat (not b!6732936) (not b!6733101) (not b_lambda!253521) (not b!6732653) (not d!2115591) (not b!6733069) (not b_lambda!253523) (not b!6733186) (not b!6733187) (not d!2115585) (not bm!608197) (not bm!608245) (not bs!1790667) (not b!6732942) (not b!6732502) (not b!6733102) (not b!6733174) (not bm!608230) (not setNonEmpty!45936) (not b!6732882) (not b!6732499) (not b!6733055) (not b!6733090) (not bm!608223) (not b!6732652) (not b!6732967) (not d!2115453) (not b!6733137) (not bm!608236) (not d!2115547) (not bm!608187) (not bm!608158) (not b!6732903) (not bs!1790664) (not b!6733154) (not b!6733105) (not b!6733145) (not b!6733129) (not b!6733110) (not b!6733198) (not d!2115385) (not bm!608207) (not b!6732678) (not b!6733207) (not bm!608190) (not b!6732829) (not b!6732664) (not d!2115549) (not b!6733211) (not b!6733158) (not b!6732902) (not b!6733138) (not bm!608253) (not b!6733063) (not d!2115435) (not b!6733034) (not b!6733065) (not b!6732779) (not bm!608200) (not b!6733134) (not b!6733164) (not b!6733157) (not d!2115533) (not b!6733124) (not b!6732837) (not b!6732934) (not b!6733163) (not d!2115511) (not bm!608159) (not d!2115517) (not b!6733180) tp_is_empty!42371 (not b!6732501) (not bm!608160) (not b!6733109) (not b!6733089) (not b!6733122) (not b!6732585) (not b!6732632) (not b!6733128) (not bm!608256) (not d!2115601) (not b!6733039) (not bs!1790666) (not b!6732516) (not bm!608220) (not bm!608210) (not b!6732784) (not b!6732952) (not b!6732533) (not b!6732700) (not b!6732937) (not b!6733125) (not bm!608226) (not b!6733205) (not b!6733059) (not d!2115441) (not bm!608168) (not bm!608229) (not d!2115627) (not b!6733141) (not b!6732980) (not d!2115483) (not b!6733118) (not b_lambda!253519) (not bm!608219) (not bs!1790669) (not b!6733150) (not b!6733193) (not b!6732832) (not b_lambda!253465) (not bm!608241) (not b!6732818) (not b!6732755) (not b!6733081) (not bm!608235) (not b!6733108) (not b!6733203) (not b!6733098) (not bm!608227) (not b!6733201) (not bs!1790668) (not b!6733148) (not d!2115479) (not b!6733064) (not b_lambda!253529) (not b!6732946) (not b!6733106) (not b!6732498) (not setNonEmpty!45934) (not b!6733199) (not b!6732566) (not b!6733210) (not b!6733030) (not d!2115561) (not b!6733100) (not b!6732930) (not b!6733178) (not b!6733169) (not b!6732589) (not b_lambda!253525) (not b_lambda!253515) (not b!6733209) (not bm!608254) (not b!6733136) (not b!6732883) (not bm!608246) (not b!6733130) (not b!6733126) (not b!6732733) (not b!6732541) (not bm!608189) (not b!6733161) (not bm!608172) (not d!2115565) (not d!2115595) (not b!6733190) (not b!6732828) (not b!6733082) (not b!6732727) (not b!6733160) (not b!6733149) (not b!6732965) (not b!6732660) (not d!2115519) (not bm!608244) (not b!6732590) (not b!6733176) (not b!6732650) (not b!6732978) (not d!2115599) (not d!2115577) (not b!6732987) (not b!6733052) (not b!6733168) (not b!6733117) (not bm!608202) (not b!6732833) (not b!6732769) (not d!2115513) (not b!6732964) (not b!6732831) (not bm!608155) (not d!2115537) (not d!2115607) (not b!6732655) (not b!6732929) (not b!6733104) (not b!6733197) (not d!2115331) (not bm!608204) (not b!6733096) (not d!2115597) (not d!2115481) (not b!6732998) (not b!6733144) (not b!6733194) (not b!6732944) (not bm!608167) (not b!6732960) (not b!6732580) (not b!6732994) (not b!6733181) (not bm!608250) (not b!6733114) (not b!6732776) (not b!6732962) (not b!6733152) (not d!2115581) (not b!6733116) (not b!6732771) (not b!6733146) (not b!6733050) (not bm!608231) (not d!2115515) (not bm!608233) (not b!6733140) (not b!6733060) (not b!6733142) (not b!6733206) (not bm!608184) (not b!6733121) (not b!6732993) (not b!6732774) (not b!6733112) (not bm!608198) (not d!2115455) (not b!6732945) (not d!2115507) (not d!2115347) (not b!6733166) (not b!6732778) (not b!6733177) (not d!2115623) (not b!6732957) (not b!6733132) (not b!6732955) (not b!6732661) (not b!6732974) (not d!2115387) (not b!6732948) (not b!6733022) (not b!6733191) (not b!6732935) (not b!6733189) (not b_lambda!253463) (not bm!608201) (not b!6732587) (not b!6732716) (not b!6732651) (not b!6733172) (not b!6733097) (not d!2115495) (not d!2115625) (not b!6732537) (not d!2115541) (not b!6733120) (not bm!608242) (not bm!608222) (not b!6733184) (not bm!608248) (not bm!608186) (not b!6733156) (not b_lambda!253517) (not b!6733182) (not bm!608238) (not b!6733153) (not b!6733167) (not bm!608156) (not b!6733202) (not bm!608249) (not b!6732941) (not d!2115605) (not setNonEmpty!45937) (not b!6733195) (not d!2115355) (not d!2115579) (not b!6733025) (not d!2115349) (not b!6733162) (not b!6732951) (not b!6732645) (not d!2115571) (not d!2115431) (not b!6733185) (not b!6732562) (not bm!608208) (not bs!1790665) (not d!2115475) (not b!6733057) (not b!6733133) (not b!6732726) (not bm!608185) (not d!2115611) (not b!6732943) (not bm!608232) (not b!6732834) (not b!6733113) (not b!6733170) (not b_lambda!253527) (not b!6732582) (not b!6732512) (not b!6733173) (not b!6733091) (not d!2115437))
(check-sat)
