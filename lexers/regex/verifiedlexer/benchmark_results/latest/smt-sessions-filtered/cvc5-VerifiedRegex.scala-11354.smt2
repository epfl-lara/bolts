; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!601290 () Bool)

(assert start!601290)

(declare-fun b!5910791 () Bool)

(assert (=> b!5910791 true))

(assert (=> b!5910791 true))

(declare-fun b!5910777 () Bool)

(declare-fun e!3619517 () Bool)

(declare-fun tp!1642220 () Bool)

(assert (=> b!5910777 (= e!3619517 tp!1642220)))

(declare-fun b!5910778 () Bool)

(declare-fun res!2478421 () Bool)

(declare-fun e!3619514 () Bool)

(assert (=> b!5910778 (=> res!2478421 e!3619514)))

(declare-datatypes ((C!32178 0))(
  ( (C!32179 (val!25791 Int)) )
))
(declare-datatypes ((Regex!15954 0))(
  ( (ElementMatch!15954 (c!1050468 C!32178)) (Concat!24799 (regOne!32420 Regex!15954) (regTwo!32420 Regex!15954)) (EmptyExpr!15954) (Star!15954 (reg!16283 Regex!15954)) (EmptyLang!15954) (Union!15954 (regOne!32421 Regex!15954) (regTwo!32421 Regex!15954)) )
))
(declare-fun r!7292 () Regex!15954)

(declare-datatypes ((List!64161 0))(
  ( (Nil!64037) (Cons!64037 (h!70485 Regex!15954) (t!377550 List!64161)) )
))
(declare-datatypes ((Context!10676 0))(
  ( (Context!10677 (exprs!5838 List!64161)) )
))
(declare-datatypes ((List!64162 0))(
  ( (Nil!64038) (Cons!64038 (h!70486 Context!10676) (t!377551 List!64162)) )
))
(declare-fun zl!343 () List!64162)

(declare-fun generalisedConcat!1551 (List!64161) Regex!15954)

(assert (=> b!5910778 (= res!2478421 (not (= r!7292 (generalisedConcat!1551 (exprs!5838 (h!70486 zl!343))))))))

(declare-fun b!5910779 () Bool)

(declare-fun e!3619516 () Bool)

(declare-fun tp!1642215 () Bool)

(declare-fun tp!1642212 () Bool)

(assert (=> b!5910779 (= e!3619516 (and tp!1642215 tp!1642212))))

(declare-fun b!5910780 () Bool)

(declare-fun res!2478419 () Bool)

(assert (=> b!5910780 (=> res!2478419 e!3619514)))

(declare-fun generalisedUnion!1798 (List!64161) Regex!15954)

(declare-fun unfocusZipperList!1375 (List!64162) List!64161)

(assert (=> b!5910780 (= res!2478419 (not (= r!7292 (generalisedUnion!1798 (unfocusZipperList!1375 zl!343)))))))

(declare-fun b!5910781 () Bool)

(declare-fun e!3619513 () Bool)

(declare-fun tp!1642214 () Bool)

(assert (=> b!5910781 (= e!3619513 tp!1642214)))

(declare-fun b!5910782 () Bool)

(declare-fun tp!1642211 () Bool)

(declare-fun tp!1642218 () Bool)

(assert (=> b!5910782 (= e!3619516 (and tp!1642211 tp!1642218))))

(declare-fun b!5910783 () Bool)

(declare-fun res!2478420 () Bool)

(declare-fun e!3619515 () Bool)

(assert (=> b!5910783 (=> (not res!2478420) (not e!3619515))))

(declare-fun z!1189 () (Set Context!10676))

(declare-fun toList!9738 ((Set Context!10676)) List!64162)

(assert (=> b!5910783 (= res!2478420 (= (toList!9738 z!1189) zl!343))))

(declare-fun b!5910784 () Bool)

(declare-fun res!2478414 () Bool)

(assert (=> b!5910784 (=> res!2478414 e!3619514)))

(assert (=> b!5910784 (= res!2478414 (not (is-Cons!64037 (exprs!5838 (h!70486 zl!343)))))))

(declare-fun b!5910785 () Bool)

(declare-fun res!2478418 () Bool)

(assert (=> b!5910785 (=> res!2478418 e!3619514)))

(declare-fun isEmpty!35893 (List!64162) Bool)

(assert (=> b!5910785 (= res!2478418 (not (isEmpty!35893 (t!377551 zl!343))))))

(declare-fun b!5910786 () Bool)

(declare-fun res!2478415 () Bool)

(assert (=> b!5910786 (=> (not res!2478415) (not e!3619515))))

(declare-fun unfocusZipper!1696 (List!64162) Regex!15954)

(assert (=> b!5910786 (= res!2478415 (= r!7292 (unfocusZipper!1696 zl!343)))))

(declare-fun res!2478417 () Bool)

(assert (=> start!601290 (=> (not res!2478417) (not e!3619515))))

(declare-fun validRegex!7690 (Regex!15954) Bool)

(assert (=> start!601290 (= res!2478417 (validRegex!7690 r!7292))))

(assert (=> start!601290 e!3619515))

(assert (=> start!601290 e!3619516))

(declare-fun condSetEmpty!40081 () Bool)

(assert (=> start!601290 (= condSetEmpty!40081 (= z!1189 (as set.empty (Set Context!10676))))))

(declare-fun setRes!40081 () Bool)

(assert (=> start!601290 setRes!40081))

(declare-fun e!3619512 () Bool)

(assert (=> start!601290 e!3619512))

(declare-fun e!3619518 () Bool)

(assert (=> start!601290 e!3619518))

(declare-fun b!5910787 () Bool)

(declare-fun res!2478413 () Bool)

(assert (=> b!5910787 (=> res!2478413 e!3619514)))

(assert (=> b!5910787 (= res!2478413 (or (is-EmptyExpr!15954 r!7292) (is-EmptyLang!15954 r!7292) (is-ElementMatch!15954 r!7292) (is-Union!15954 r!7292) (not (is-Concat!24799 r!7292))))))

(declare-fun b!5910788 () Bool)

(declare-fun tp_is_empty!41161 () Bool)

(declare-fun tp!1642217 () Bool)

(assert (=> b!5910788 (= e!3619518 (and tp_is_empty!41161 tp!1642217))))

(declare-fun setElem!40081 () Context!10676)

(declare-fun tp!1642213 () Bool)

(declare-fun setNonEmpty!40081 () Bool)

(declare-fun inv!83133 (Context!10676) Bool)

(assert (=> setNonEmpty!40081 (= setRes!40081 (and tp!1642213 (inv!83133 setElem!40081) e!3619517))))

(declare-fun setRest!40081 () (Set Context!10676))

(assert (=> setNonEmpty!40081 (= z!1189 (set.union (set.insert setElem!40081 (as set.empty (Set Context!10676))) setRest!40081))))

(declare-fun b!5910789 () Bool)

(declare-fun tp!1642216 () Bool)

(assert (=> b!5910789 (= e!3619512 (and (inv!83133 (h!70486 zl!343)) e!3619513 tp!1642216))))

(declare-fun b!5910790 () Bool)

(declare-fun tp!1642219 () Bool)

(assert (=> b!5910790 (= e!3619516 tp!1642219)))

(assert (=> b!5910791 (= e!3619514 (validRegex!7690 (regOne!32420 r!7292)))))

(declare-datatypes ((List!64163 0))(
  ( (Nil!64039) (Cons!64039 (h!70487 C!32178) (t!377552 List!64163)) )
))
(declare-fun s!2326 () List!64163)

(declare-fun lambda!322357 () Int)

(declare-datatypes ((tuple2!65866 0))(
  ( (tuple2!65867 (_1!36236 List!64163) (_2!36236 List!64163)) )
))
(declare-datatypes ((Option!15845 0))(
  ( (None!15844) (Some!15844 (v!51938 tuple2!65866)) )
))
(declare-fun isDefined!12548 (Option!15845) Bool)

(declare-fun findConcatSeparation!2259 (Regex!15954 Regex!15954 List!64163 List!64163 List!64163) Option!15845)

(declare-fun Exists!3024 (Int) Bool)

(assert (=> b!5910791 (= (isDefined!12548 (findConcatSeparation!2259 (regOne!32420 r!7292) (regTwo!32420 r!7292) Nil!64039 s!2326 s!2326)) (Exists!3024 lambda!322357))))

(declare-datatypes ((Unit!157179 0))(
  ( (Unit!157180) )
))
(declare-fun lt!2308998 () Unit!157179)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2023 (Regex!15954 Regex!15954 List!64163) Unit!157179)

(assert (=> b!5910791 (= lt!2308998 (lemmaFindConcatSeparationEquivalentToExists!2023 (regOne!32420 r!7292) (regTwo!32420 r!7292) s!2326))))

(declare-fun b!5910792 () Bool)

(assert (=> b!5910792 (= e!3619516 tp_is_empty!41161)))

(declare-fun setIsEmpty!40081 () Bool)

(assert (=> setIsEmpty!40081 setRes!40081))

(declare-fun b!5910793 () Bool)

(assert (=> b!5910793 (= e!3619515 (not e!3619514))))

(declare-fun res!2478416 () Bool)

(assert (=> b!5910793 (=> res!2478416 e!3619514)))

(assert (=> b!5910793 (= res!2478416 (not (is-Cons!64038 zl!343)))))

(declare-fun matchR!8137 (Regex!15954 List!64163) Bool)

(declare-fun matchRSpec!3055 (Regex!15954 List!64163) Bool)

(assert (=> b!5910793 (= (matchR!8137 r!7292 s!2326) (matchRSpec!3055 r!7292 s!2326))))

(declare-fun lt!2308997 () Unit!157179)

(declare-fun mainMatchTheorem!3055 (Regex!15954 List!64163) Unit!157179)

(assert (=> b!5910793 (= lt!2308997 (mainMatchTheorem!3055 r!7292 s!2326))))

(assert (= (and start!601290 res!2478417) b!5910783))

(assert (= (and b!5910783 res!2478420) b!5910786))

(assert (= (and b!5910786 res!2478415) b!5910793))

(assert (= (and b!5910793 (not res!2478416)) b!5910785))

(assert (= (and b!5910785 (not res!2478418)) b!5910778))

(assert (= (and b!5910778 (not res!2478421)) b!5910784))

(assert (= (and b!5910784 (not res!2478414)) b!5910780))

(assert (= (and b!5910780 (not res!2478419)) b!5910787))

(assert (= (and b!5910787 (not res!2478413)) b!5910791))

(assert (= (and start!601290 (is-ElementMatch!15954 r!7292)) b!5910792))

(assert (= (and start!601290 (is-Concat!24799 r!7292)) b!5910782))

(assert (= (and start!601290 (is-Star!15954 r!7292)) b!5910790))

(assert (= (and start!601290 (is-Union!15954 r!7292)) b!5910779))

(assert (= (and start!601290 condSetEmpty!40081) setIsEmpty!40081))

(assert (= (and start!601290 (not condSetEmpty!40081)) setNonEmpty!40081))

(assert (= setNonEmpty!40081 b!5910777))

(assert (= b!5910789 b!5910781))

(assert (= (and start!601290 (is-Cons!64038 zl!343)) b!5910789))

(assert (= (and start!601290 (is-Cons!64039 s!2326)) b!5910788))

(declare-fun m!6810944 () Bool)

(assert (=> b!5910785 m!6810944))

(declare-fun m!6810946 () Bool)

(assert (=> setNonEmpty!40081 m!6810946))

(declare-fun m!6810948 () Bool)

(assert (=> b!5910780 m!6810948))

(assert (=> b!5910780 m!6810948))

(declare-fun m!6810950 () Bool)

(assert (=> b!5910780 m!6810950))

(declare-fun m!6810952 () Bool)

(assert (=> b!5910783 m!6810952))

(declare-fun m!6810954 () Bool)

(assert (=> b!5910793 m!6810954))

(declare-fun m!6810956 () Bool)

(assert (=> b!5910793 m!6810956))

(declare-fun m!6810958 () Bool)

(assert (=> b!5910793 m!6810958))

(declare-fun m!6810960 () Bool)

(assert (=> b!5910778 m!6810960))

(declare-fun m!6810962 () Bool)

(assert (=> b!5910789 m!6810962))

(declare-fun m!6810964 () Bool)

(assert (=> b!5910791 m!6810964))

(declare-fun m!6810966 () Bool)

(assert (=> b!5910791 m!6810966))

(declare-fun m!6810968 () Bool)

(assert (=> b!5910791 m!6810968))

(declare-fun m!6810970 () Bool)

(assert (=> b!5910791 m!6810970))

(assert (=> b!5910791 m!6810968))

(declare-fun m!6810972 () Bool)

(assert (=> b!5910791 m!6810972))

(declare-fun m!6810974 () Bool)

(assert (=> start!601290 m!6810974))

(declare-fun m!6810976 () Bool)

(assert (=> b!5910786 m!6810976))

(push 1)

(assert (not b!5910788))

(assert (not b!5910793))

(assert (not b!5910791))

(assert (not b!5910780))

(assert (not b!5910778))

(assert (not b!5910789))

(assert (not b!5910779))

(assert (not start!601290))

(assert tp_is_empty!41161)

(assert (not b!5910790))

(assert (not b!5910783))

(assert (not setNonEmpty!40081))

(assert (not b!5910781))

(assert (not b!5910786))

(assert (not b!5910777))

(assert (not b!5910782))

(assert (not b!5910785))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!5910875 () Bool)

(declare-fun lt!2309011 () Unit!157179)

(declare-fun lt!2309012 () Unit!157179)

(assert (=> b!5910875 (= lt!2309011 lt!2309012)))

(declare-fun ++!14056 (List!64163 List!64163) List!64163)

(assert (=> b!5910875 (= (++!14056 (++!14056 Nil!64039 (Cons!64039 (h!70487 s!2326) Nil!64039)) (t!377552 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2151 (List!64163 C!32178 List!64163 List!64163) Unit!157179)

(assert (=> b!5910875 (= lt!2309012 (lemmaMoveElementToOtherListKeepsConcatEq!2151 Nil!64039 (h!70487 s!2326) (t!377552 s!2326) s!2326))))

(declare-fun e!3619553 () Option!15845)

(assert (=> b!5910875 (= e!3619553 (findConcatSeparation!2259 (regOne!32420 r!7292) (regTwo!32420 r!7292) (++!14056 Nil!64039 (Cons!64039 (h!70487 s!2326) Nil!64039)) (t!377552 s!2326) s!2326))))

(declare-fun b!5910876 () Bool)

(declare-fun res!2478466 () Bool)

(declare-fun e!3619555 () Bool)

(assert (=> b!5910876 (=> (not res!2478466) (not e!3619555))))

(declare-fun lt!2309013 () Option!15845)

(declare-fun get!22049 (Option!15845) tuple2!65866)

(assert (=> b!5910876 (= res!2478466 (matchR!8137 (regOne!32420 r!7292) (_1!36236 (get!22049 lt!2309013))))))

(declare-fun b!5910877 () Bool)

(declare-fun e!3619552 () Bool)

(assert (=> b!5910877 (= e!3619552 (not (isDefined!12548 lt!2309013)))))

(declare-fun d!1854597 () Bool)

(assert (=> d!1854597 e!3619552))

(declare-fun res!2478465 () Bool)

(assert (=> d!1854597 (=> res!2478465 e!3619552)))

(assert (=> d!1854597 (= res!2478465 e!3619555)))

(declare-fun res!2478467 () Bool)

(assert (=> d!1854597 (=> (not res!2478467) (not e!3619555))))

(assert (=> d!1854597 (= res!2478467 (isDefined!12548 lt!2309013))))

(declare-fun e!3619556 () Option!15845)

(assert (=> d!1854597 (= lt!2309013 e!3619556)))

(declare-fun c!1050475 () Bool)

(declare-fun e!3619554 () Bool)

(assert (=> d!1854597 (= c!1050475 e!3619554)))

(declare-fun res!2478463 () Bool)

(assert (=> d!1854597 (=> (not res!2478463) (not e!3619554))))

(assert (=> d!1854597 (= res!2478463 (matchR!8137 (regOne!32420 r!7292) Nil!64039))))

(assert (=> d!1854597 (validRegex!7690 (regOne!32420 r!7292))))

(assert (=> d!1854597 (= (findConcatSeparation!2259 (regOne!32420 r!7292) (regTwo!32420 r!7292) Nil!64039 s!2326 s!2326) lt!2309013)))

(declare-fun b!5910878 () Bool)

(assert (=> b!5910878 (= e!3619554 (matchR!8137 (regTwo!32420 r!7292) s!2326))))

(declare-fun b!5910879 () Bool)

(assert (=> b!5910879 (= e!3619556 (Some!15844 (tuple2!65867 Nil!64039 s!2326)))))

(declare-fun b!5910880 () Bool)

(assert (=> b!5910880 (= e!3619553 None!15844)))

(declare-fun b!5910881 () Bool)

(assert (=> b!5910881 (= e!3619556 e!3619553)))

(declare-fun c!1050474 () Bool)

(assert (=> b!5910881 (= c!1050474 (is-Nil!64039 s!2326))))

(declare-fun b!5910882 () Bool)

(assert (=> b!5910882 (= e!3619555 (= (++!14056 (_1!36236 (get!22049 lt!2309013)) (_2!36236 (get!22049 lt!2309013))) s!2326))))

(declare-fun b!5910883 () Bool)

(declare-fun res!2478464 () Bool)

(assert (=> b!5910883 (=> (not res!2478464) (not e!3619555))))

(assert (=> b!5910883 (= res!2478464 (matchR!8137 (regTwo!32420 r!7292) (_2!36236 (get!22049 lt!2309013))))))

(assert (= (and d!1854597 res!2478463) b!5910878))

(assert (= (and d!1854597 c!1050475) b!5910879))

(assert (= (and d!1854597 (not c!1050475)) b!5910881))

(assert (= (and b!5910881 c!1050474) b!5910880))

(assert (= (and b!5910881 (not c!1050474)) b!5910875))

(assert (= (and d!1854597 res!2478467) b!5910876))

(assert (= (and b!5910876 res!2478466) b!5910883))

(assert (= (and b!5910883 res!2478464) b!5910882))

(assert (= (and d!1854597 (not res!2478465)) b!5910877))

(declare-fun m!6811012 () Bool)

(assert (=> b!5910877 m!6811012))

(assert (=> d!1854597 m!6811012))

(declare-fun m!6811014 () Bool)

(assert (=> d!1854597 m!6811014))

(assert (=> d!1854597 m!6810964))

(declare-fun m!6811016 () Bool)

(assert (=> b!5910882 m!6811016))

(declare-fun m!6811018 () Bool)

(assert (=> b!5910882 m!6811018))

(declare-fun m!6811020 () Bool)

(assert (=> b!5910875 m!6811020))

(assert (=> b!5910875 m!6811020))

(declare-fun m!6811022 () Bool)

(assert (=> b!5910875 m!6811022))

(declare-fun m!6811024 () Bool)

(assert (=> b!5910875 m!6811024))

(assert (=> b!5910875 m!6811020))

(declare-fun m!6811026 () Bool)

(assert (=> b!5910875 m!6811026))

(assert (=> b!5910876 m!6811016))

(declare-fun m!6811028 () Bool)

(assert (=> b!5910876 m!6811028))

(assert (=> b!5910883 m!6811016))

(declare-fun m!6811030 () Bool)

(assert (=> b!5910883 m!6811030))

(declare-fun m!6811032 () Bool)

(assert (=> b!5910878 m!6811032))

(assert (=> b!5910791 d!1854597))

(declare-fun d!1854601 () Bool)

(declare-fun choose!44582 (Int) Bool)

(assert (=> d!1854601 (= (Exists!3024 lambda!322357) (choose!44582 lambda!322357))))

(declare-fun bs!1399904 () Bool)

(assert (= bs!1399904 d!1854601))

(declare-fun m!6811034 () Bool)

(assert (=> bs!1399904 m!6811034))

(assert (=> b!5910791 d!1854601))

(declare-fun b!5910922 () Bool)

(declare-fun res!2478484 () Bool)

(declare-fun e!3619585 () Bool)

(assert (=> b!5910922 (=> res!2478484 e!3619585)))

(assert (=> b!5910922 (= res!2478484 (not (is-Concat!24799 (regOne!32420 r!7292))))))

(declare-fun e!3619584 () Bool)

(assert (=> b!5910922 (= e!3619584 e!3619585)))

(declare-fun b!5910924 () Bool)

(declare-fun e!3619583 () Bool)

(declare-fun call!468482 () Bool)

(assert (=> b!5910924 (= e!3619583 call!468482)))

(declare-fun bm!468476 () Bool)

(declare-fun call!468481 () Bool)

(declare-fun call!468483 () Bool)

(assert (=> bm!468476 (= call!468481 call!468483)))

(declare-fun b!5910925 () Bool)

(declare-fun e!3619589 () Bool)

(assert (=> b!5910925 (= e!3619589 call!468483)))

(declare-fun c!1050489 () Bool)

(declare-fun bm!468477 () Bool)

(declare-fun c!1050488 () Bool)

(assert (=> bm!468477 (= call!468483 (validRegex!7690 (ite c!1050489 (reg!16283 (regOne!32420 r!7292)) (ite c!1050488 (regOne!32421 (regOne!32420 r!7292)) (regOne!32420 (regOne!32420 r!7292))))))))

(declare-fun b!5910926 () Bool)

(assert (=> b!5910926 (= e!3619585 e!3619583)))

(declare-fun res!2478483 () Bool)

(assert (=> b!5910926 (=> (not res!2478483) (not e!3619583))))

(assert (=> b!5910926 (= res!2478483 call!468481)))

(declare-fun b!5910927 () Bool)

(declare-fun e!3619586 () Bool)

(assert (=> b!5910927 (= e!3619586 e!3619589)))

(declare-fun res!2478482 () Bool)

(declare-fun nullable!5952 (Regex!15954) Bool)

(assert (=> b!5910927 (= res!2478482 (not (nullable!5952 (reg!16283 (regOne!32420 r!7292)))))))

(assert (=> b!5910927 (=> (not res!2478482) (not e!3619589))))

(declare-fun b!5910928 () Bool)

(assert (=> b!5910928 (= e!3619586 e!3619584)))

(assert (=> b!5910928 (= c!1050488 (is-Union!15954 (regOne!32420 r!7292)))))

(declare-fun b!5910929 () Bool)

(declare-fun e!3619587 () Bool)

(assert (=> b!5910929 (= e!3619587 call!468482)))

(declare-fun d!1854603 () Bool)

(declare-fun res!2478486 () Bool)

(declare-fun e!3619588 () Bool)

(assert (=> d!1854603 (=> res!2478486 e!3619588)))

(assert (=> d!1854603 (= res!2478486 (is-ElementMatch!15954 (regOne!32420 r!7292)))))

(assert (=> d!1854603 (= (validRegex!7690 (regOne!32420 r!7292)) e!3619588)))

(declare-fun b!5910923 () Bool)

(declare-fun res!2478485 () Bool)

(assert (=> b!5910923 (=> (not res!2478485) (not e!3619587))))

(assert (=> b!5910923 (= res!2478485 call!468481)))

(assert (=> b!5910923 (= e!3619584 e!3619587)))

(declare-fun b!5910930 () Bool)

(assert (=> b!5910930 (= e!3619588 e!3619586)))

(assert (=> b!5910930 (= c!1050489 (is-Star!15954 (regOne!32420 r!7292)))))

(declare-fun bm!468478 () Bool)

(assert (=> bm!468478 (= call!468482 (validRegex!7690 (ite c!1050488 (regTwo!32421 (regOne!32420 r!7292)) (regTwo!32420 (regOne!32420 r!7292)))))))

(assert (= (and d!1854603 (not res!2478486)) b!5910930))

(assert (= (and b!5910930 c!1050489) b!5910927))

(assert (= (and b!5910930 (not c!1050489)) b!5910928))

(assert (= (and b!5910927 res!2478482) b!5910925))

(assert (= (and b!5910928 c!1050488) b!5910923))

(assert (= (and b!5910928 (not c!1050488)) b!5910922))

(assert (= (and b!5910923 res!2478485) b!5910929))

(assert (= (and b!5910922 (not res!2478484)) b!5910926))

(assert (= (and b!5910926 res!2478483) b!5910924))

(assert (= (or b!5910929 b!5910924) bm!468478))

(assert (= (or b!5910923 b!5910926) bm!468476))

(assert (= (or b!5910925 bm!468476) bm!468477))

(declare-fun m!6811036 () Bool)

(assert (=> bm!468477 m!6811036))

(declare-fun m!6811038 () Bool)

(assert (=> b!5910927 m!6811038))

(declare-fun m!6811040 () Bool)

(assert (=> bm!468478 m!6811040))

(assert (=> b!5910791 d!1854603))

(declare-fun d!1854605 () Bool)

(declare-fun isEmpty!35895 (Option!15845) Bool)

(assert (=> d!1854605 (= (isDefined!12548 (findConcatSeparation!2259 (regOne!32420 r!7292) (regTwo!32420 r!7292) Nil!64039 s!2326 s!2326)) (not (isEmpty!35895 (findConcatSeparation!2259 (regOne!32420 r!7292) (regTwo!32420 r!7292) Nil!64039 s!2326 s!2326))))))

(declare-fun bs!1399905 () Bool)

(assert (= bs!1399905 d!1854605))

(assert (=> bs!1399905 m!6810968))

(declare-fun m!6811042 () Bool)

(assert (=> bs!1399905 m!6811042))

(assert (=> b!5910791 d!1854605))

(declare-fun bs!1399906 () Bool)

(declare-fun d!1854607 () Bool)

(assert (= bs!1399906 (and d!1854607 b!5910791)))

(declare-fun lambda!322366 () Int)

(assert (=> bs!1399906 (= lambda!322366 lambda!322357)))

(assert (=> d!1854607 true))

(assert (=> d!1854607 true))

(assert (=> d!1854607 true))

(assert (=> d!1854607 (= (isDefined!12548 (findConcatSeparation!2259 (regOne!32420 r!7292) (regTwo!32420 r!7292) Nil!64039 s!2326 s!2326)) (Exists!3024 lambda!322366))))

(declare-fun lt!2309021 () Unit!157179)

(declare-fun choose!44583 (Regex!15954 Regex!15954 List!64163) Unit!157179)

(assert (=> d!1854607 (= lt!2309021 (choose!44583 (regOne!32420 r!7292) (regTwo!32420 r!7292) s!2326))))

(assert (=> d!1854607 (validRegex!7690 (regOne!32420 r!7292))))

(assert (=> d!1854607 (= (lemmaFindConcatSeparationEquivalentToExists!2023 (regOne!32420 r!7292) (regTwo!32420 r!7292) s!2326) lt!2309021)))

(declare-fun bs!1399907 () Bool)

(assert (= bs!1399907 d!1854607))

(assert (=> bs!1399907 m!6810968))

(assert (=> bs!1399907 m!6810970))

(assert (=> bs!1399907 m!6810964))

(declare-fun m!6811064 () Bool)

(assert (=> bs!1399907 m!6811064))

(assert (=> bs!1399907 m!6810968))

(declare-fun m!6811066 () Bool)

(assert (=> bs!1399907 m!6811066))

(assert (=> b!5910791 d!1854607))

(declare-fun d!1854611 () Bool)

(assert (=> d!1854611 (= (isEmpty!35893 (t!377551 zl!343)) (is-Nil!64038 (t!377551 zl!343)))))

(assert (=> b!5910785 d!1854611))

(declare-fun b!5910971 () Bool)

(declare-fun e!3619614 () Regex!15954)

(assert (=> b!5910971 (= e!3619614 EmptyLang!15954)))

(declare-fun b!5910972 () Bool)

(declare-fun e!3619615 () Bool)

(declare-fun e!3619618 () Bool)

(assert (=> b!5910972 (= e!3619615 e!3619618)))

(declare-fun c!1050505 () Bool)

(declare-fun isEmpty!35896 (List!64161) Bool)

(declare-fun tail!11543 (List!64161) List!64161)

(assert (=> b!5910972 (= c!1050505 (isEmpty!35896 (tail!11543 (unfocusZipperList!1375 zl!343))))))

(declare-fun b!5910973 () Bool)

(assert (=> b!5910973 (= e!3619614 (Union!15954 (h!70485 (unfocusZipperList!1375 zl!343)) (generalisedUnion!1798 (t!377550 (unfocusZipperList!1375 zl!343)))))))

(declare-fun b!5910974 () Bool)

(declare-fun lt!2309025 () Regex!15954)

(declare-fun head!12458 (List!64161) Regex!15954)

(assert (=> b!5910974 (= e!3619618 (= lt!2309025 (head!12458 (unfocusZipperList!1375 zl!343))))))

(declare-fun b!5910975 () Bool)

(declare-fun e!3619617 () Regex!15954)

(assert (=> b!5910975 (= e!3619617 e!3619614)))

(declare-fun c!1050508 () Bool)

(assert (=> b!5910975 (= c!1050508 (is-Cons!64037 (unfocusZipperList!1375 zl!343)))))

(declare-fun b!5910976 () Bool)

(declare-fun e!3619616 () Bool)

(assert (=> b!5910976 (= e!3619616 (isEmpty!35896 (t!377550 (unfocusZipperList!1375 zl!343))))))

(declare-fun b!5910978 () Bool)

(declare-fun isEmptyLang!1395 (Regex!15954) Bool)

(assert (=> b!5910978 (= e!3619615 (isEmptyLang!1395 lt!2309025))))

(declare-fun b!5910979 () Bool)

(declare-fun e!3619613 () Bool)

(assert (=> b!5910979 (= e!3619613 e!3619615)))

(declare-fun c!1050507 () Bool)

(assert (=> b!5910979 (= c!1050507 (isEmpty!35896 (unfocusZipperList!1375 zl!343)))))

(declare-fun b!5910980 () Bool)

(declare-fun isUnion!825 (Regex!15954) Bool)

(assert (=> b!5910980 (= e!3619618 (isUnion!825 lt!2309025))))

(declare-fun b!5910977 () Bool)

(assert (=> b!5910977 (= e!3619617 (h!70485 (unfocusZipperList!1375 zl!343)))))

(declare-fun d!1854613 () Bool)

(assert (=> d!1854613 e!3619613))

(declare-fun res!2478498 () Bool)

(assert (=> d!1854613 (=> (not res!2478498) (not e!3619613))))

(assert (=> d!1854613 (= res!2478498 (validRegex!7690 lt!2309025))))

(assert (=> d!1854613 (= lt!2309025 e!3619617)))

(declare-fun c!1050506 () Bool)

(assert (=> d!1854613 (= c!1050506 e!3619616)))

(declare-fun res!2478497 () Bool)

(assert (=> d!1854613 (=> (not res!2478497) (not e!3619616))))

(assert (=> d!1854613 (= res!2478497 (is-Cons!64037 (unfocusZipperList!1375 zl!343)))))

(declare-fun lambda!322372 () Int)

(declare-fun forall!15041 (List!64161 Int) Bool)

(assert (=> d!1854613 (forall!15041 (unfocusZipperList!1375 zl!343) lambda!322372)))

(assert (=> d!1854613 (= (generalisedUnion!1798 (unfocusZipperList!1375 zl!343)) lt!2309025)))

(assert (= (and d!1854613 res!2478497) b!5910976))

(assert (= (and d!1854613 c!1050506) b!5910977))

(assert (= (and d!1854613 (not c!1050506)) b!5910975))

(assert (= (and b!5910975 c!1050508) b!5910973))

(assert (= (and b!5910975 (not c!1050508)) b!5910971))

(assert (= (and d!1854613 res!2478498) b!5910979))

(assert (= (and b!5910979 c!1050507) b!5910978))

(assert (= (and b!5910979 (not c!1050507)) b!5910972))

(assert (= (and b!5910972 c!1050505) b!5910974))

(assert (= (and b!5910972 (not c!1050505)) b!5910980))

(declare-fun m!6811072 () Bool)

(assert (=> d!1854613 m!6811072))

(assert (=> d!1854613 m!6810948))

(declare-fun m!6811074 () Bool)

(assert (=> d!1854613 m!6811074))

(declare-fun m!6811076 () Bool)

(assert (=> b!5910978 m!6811076))

(declare-fun m!6811078 () Bool)

(assert (=> b!5910973 m!6811078))

(declare-fun m!6811080 () Bool)

(assert (=> b!5910980 m!6811080))

(assert (=> b!5910972 m!6810948))

(declare-fun m!6811082 () Bool)

(assert (=> b!5910972 m!6811082))

(assert (=> b!5910972 m!6811082))

(declare-fun m!6811084 () Bool)

(assert (=> b!5910972 m!6811084))

(assert (=> b!5910974 m!6810948))

(declare-fun m!6811086 () Bool)

(assert (=> b!5910974 m!6811086))

(declare-fun m!6811088 () Bool)

(assert (=> b!5910976 m!6811088))

(assert (=> b!5910979 m!6810948))

(declare-fun m!6811090 () Bool)

(assert (=> b!5910979 m!6811090))

(assert (=> b!5910780 d!1854613))

(declare-fun bs!1399909 () Bool)

(declare-fun d!1854617 () Bool)

(assert (= bs!1399909 (and d!1854617 d!1854613)))

(declare-fun lambda!322375 () Int)

(assert (=> bs!1399909 (= lambda!322375 lambda!322372)))

(declare-fun lt!2309028 () List!64161)

(assert (=> d!1854617 (forall!15041 lt!2309028 lambda!322375)))

(declare-fun e!3619621 () List!64161)

(assert (=> d!1854617 (= lt!2309028 e!3619621)))

(declare-fun c!1050511 () Bool)

(assert (=> d!1854617 (= c!1050511 (is-Cons!64038 zl!343))))

(assert (=> d!1854617 (= (unfocusZipperList!1375 zl!343) lt!2309028)))

(declare-fun b!5910985 () Bool)

(assert (=> b!5910985 (= e!3619621 (Cons!64037 (generalisedConcat!1551 (exprs!5838 (h!70486 zl!343))) (unfocusZipperList!1375 (t!377551 zl!343))))))

(declare-fun b!5910986 () Bool)

(assert (=> b!5910986 (= e!3619621 Nil!64037)))

(assert (= (and d!1854617 c!1050511) b!5910985))

(assert (= (and d!1854617 (not c!1050511)) b!5910986))

(declare-fun m!6811092 () Bool)

(assert (=> d!1854617 m!6811092))

(assert (=> b!5910985 m!6810960))

(declare-fun m!6811094 () Bool)

(assert (=> b!5910985 m!6811094))

(assert (=> b!5910780 d!1854617))

(declare-fun d!1854619 () Bool)

(declare-fun lt!2309033 () Regex!15954)

(assert (=> d!1854619 (validRegex!7690 lt!2309033)))

(assert (=> d!1854619 (= lt!2309033 (generalisedUnion!1798 (unfocusZipperList!1375 zl!343)))))

(assert (=> d!1854619 (= (unfocusZipper!1696 zl!343) lt!2309033)))

(declare-fun bs!1399910 () Bool)

(assert (= bs!1399910 d!1854619))

(declare-fun m!6811096 () Bool)

(assert (=> bs!1399910 m!6811096))

(assert (=> bs!1399910 m!6810948))

(assert (=> bs!1399910 m!6810948))

(assert (=> bs!1399910 m!6810950))

(assert (=> b!5910786 d!1854619))

(declare-fun bs!1399911 () Bool)

(declare-fun d!1854621 () Bool)

(assert (= bs!1399911 (and d!1854621 d!1854613)))

(declare-fun lambda!322380 () Int)

(assert (=> bs!1399911 (= lambda!322380 lambda!322372)))

(declare-fun bs!1399912 () Bool)

(assert (= bs!1399912 (and d!1854621 d!1854617)))

(assert (=> bs!1399912 (= lambda!322380 lambda!322375)))

(assert (=> d!1854621 (= (inv!83133 setElem!40081) (forall!15041 (exprs!5838 setElem!40081) lambda!322380))))

(declare-fun bs!1399913 () Bool)

(assert (= bs!1399913 d!1854621))

(declare-fun m!6811098 () Bool)

(assert (=> bs!1399913 m!6811098))

(assert (=> setNonEmpty!40081 d!1854621))

(declare-fun b!5911045 () Bool)

(declare-fun res!2478523 () Bool)

(declare-fun e!3619656 () Bool)

(assert (=> b!5911045 (=> res!2478523 e!3619656)))

(declare-fun isEmpty!35897 (List!64163) Bool)

(declare-fun tail!11544 (List!64163) List!64163)

(assert (=> b!5911045 (= res!2478523 (not (isEmpty!35897 (tail!11544 s!2326))))))

(declare-fun b!5911046 () Bool)

(declare-fun res!2478525 () Bool)

(declare-fun e!3619658 () Bool)

(assert (=> b!5911046 (=> (not res!2478525) (not e!3619658))))

(declare-fun call!468486 () Bool)

(assert (=> b!5911046 (= res!2478525 (not call!468486))))

(declare-fun b!5911047 () Bool)

(declare-fun e!3619660 () Bool)

(declare-fun lt!2309037 () Bool)

(assert (=> b!5911047 (= e!3619660 (= lt!2309037 call!468486))))

(declare-fun b!5911048 () Bool)

(declare-fun res!2478522 () Bool)

(assert (=> b!5911048 (=> (not res!2478522) (not e!3619658))))

(assert (=> b!5911048 (= res!2478522 (isEmpty!35897 (tail!11544 s!2326)))))

(declare-fun bm!468481 () Bool)

(assert (=> bm!468481 (= call!468486 (isEmpty!35897 s!2326))))

(declare-fun b!5911049 () Bool)

(declare-fun e!3619655 () Bool)

(assert (=> b!5911049 (= e!3619655 e!3619656)))

(declare-fun res!2478521 () Bool)

(assert (=> b!5911049 (=> res!2478521 e!3619656)))

(assert (=> b!5911049 (= res!2478521 call!468486)))

(declare-fun b!5911050 () Bool)

(declare-fun e!3619654 () Bool)

(assert (=> b!5911050 (= e!3619654 e!3619655)))

(declare-fun res!2478527 () Bool)

(assert (=> b!5911050 (=> (not res!2478527) (not e!3619655))))

(assert (=> b!5911050 (= res!2478527 (not lt!2309037))))

(declare-fun b!5911051 () Bool)

(declare-fun e!3619659 () Bool)

(assert (=> b!5911051 (= e!3619659 (nullable!5952 r!7292))))

(declare-fun b!5911052 () Bool)

(declare-fun e!3619657 () Bool)

(assert (=> b!5911052 (= e!3619660 e!3619657)))

(declare-fun c!1050531 () Bool)

(assert (=> b!5911052 (= c!1050531 (is-EmptyLang!15954 r!7292))))

(declare-fun b!5911053 () Bool)

(declare-fun derivativeStep!4690 (Regex!15954 C!32178) Regex!15954)

(declare-fun head!12459 (List!64163) C!32178)

(assert (=> b!5911053 (= e!3619659 (matchR!8137 (derivativeStep!4690 r!7292 (head!12459 s!2326)) (tail!11544 s!2326)))))

(declare-fun b!5911054 () Bool)

(assert (=> b!5911054 (= e!3619656 (not (= (head!12459 s!2326) (c!1050468 r!7292))))))

(declare-fun b!5911055 () Bool)

(declare-fun res!2478526 () Bool)

(assert (=> b!5911055 (=> res!2478526 e!3619654)))

(assert (=> b!5911055 (= res!2478526 (not (is-ElementMatch!15954 r!7292)))))

(assert (=> b!5911055 (= e!3619657 e!3619654)))

(declare-fun b!5911056 () Bool)

(assert (=> b!5911056 (= e!3619657 (not lt!2309037))))

(declare-fun d!1854623 () Bool)

(assert (=> d!1854623 e!3619660))

(declare-fun c!1050530 () Bool)

(assert (=> d!1854623 (= c!1050530 (is-EmptyExpr!15954 r!7292))))

(assert (=> d!1854623 (= lt!2309037 e!3619659)))

(declare-fun c!1050532 () Bool)

(assert (=> d!1854623 (= c!1050532 (isEmpty!35897 s!2326))))

(assert (=> d!1854623 (validRegex!7690 r!7292)))

(assert (=> d!1854623 (= (matchR!8137 r!7292 s!2326) lt!2309037)))

(declare-fun b!5911057 () Bool)

(declare-fun res!2478528 () Bool)

(assert (=> b!5911057 (=> res!2478528 e!3619654)))

(assert (=> b!5911057 (= res!2478528 e!3619658)))

(declare-fun res!2478524 () Bool)

(assert (=> b!5911057 (=> (not res!2478524) (not e!3619658))))

(assert (=> b!5911057 (= res!2478524 lt!2309037)))

(declare-fun b!5911058 () Bool)

(assert (=> b!5911058 (= e!3619658 (= (head!12459 s!2326) (c!1050468 r!7292)))))

(assert (= (and d!1854623 c!1050532) b!5911051))

(assert (= (and d!1854623 (not c!1050532)) b!5911053))

(assert (= (and d!1854623 c!1050530) b!5911047))

(assert (= (and d!1854623 (not c!1050530)) b!5911052))

(assert (= (and b!5911052 c!1050531) b!5911056))

(assert (= (and b!5911052 (not c!1050531)) b!5911055))

(assert (= (and b!5911055 (not res!2478526)) b!5911057))

(assert (= (and b!5911057 res!2478524) b!5911046))

(assert (= (and b!5911046 res!2478525) b!5911048))

(assert (= (and b!5911048 res!2478522) b!5911058))

(assert (= (and b!5911057 (not res!2478528)) b!5911050))

(assert (= (and b!5911050 res!2478527) b!5911049))

(assert (= (and b!5911049 (not res!2478521)) b!5911045))

(assert (= (and b!5911045 (not res!2478523)) b!5911054))

(assert (= (or b!5911047 b!5911046 b!5911049) bm!468481))

(declare-fun m!6811120 () Bool)

(assert (=> b!5911045 m!6811120))

(assert (=> b!5911045 m!6811120))

(declare-fun m!6811122 () Bool)

(assert (=> b!5911045 m!6811122))

(declare-fun m!6811124 () Bool)

(assert (=> b!5911053 m!6811124))

(assert (=> b!5911053 m!6811124))

(declare-fun m!6811126 () Bool)

(assert (=> b!5911053 m!6811126))

(assert (=> b!5911053 m!6811120))

(assert (=> b!5911053 m!6811126))

(assert (=> b!5911053 m!6811120))

(declare-fun m!6811128 () Bool)

(assert (=> b!5911053 m!6811128))

(declare-fun m!6811130 () Bool)

(assert (=> d!1854623 m!6811130))

(assert (=> d!1854623 m!6810974))

(assert (=> b!5911054 m!6811124))

(assert (=> b!5911048 m!6811120))

(assert (=> b!5911048 m!6811120))

(assert (=> b!5911048 m!6811122))

(assert (=> b!5911058 m!6811124))

(assert (=> bm!468481 m!6811130))

(declare-fun m!6811132 () Bool)

(assert (=> b!5911051 m!6811132))

(assert (=> b!5910793 d!1854623))

(declare-fun bs!1399920 () Bool)

(declare-fun b!5911101 () Bool)

(assert (= bs!1399920 (and b!5911101 b!5910791)))

(declare-fun lambda!322389 () Int)

(assert (=> bs!1399920 (not (= lambda!322389 lambda!322357))))

(declare-fun bs!1399921 () Bool)

(assert (= bs!1399921 (and b!5911101 d!1854607)))

(assert (=> bs!1399921 (not (= lambda!322389 lambda!322366))))

(assert (=> b!5911101 true))

(assert (=> b!5911101 true))

(declare-fun bs!1399922 () Bool)

(declare-fun b!5911100 () Bool)

(assert (= bs!1399922 (and b!5911100 b!5910791)))

(declare-fun lambda!322390 () Int)

(assert (=> bs!1399922 (not (= lambda!322390 lambda!322357))))

(declare-fun bs!1399923 () Bool)

(assert (= bs!1399923 (and b!5911100 d!1854607)))

(assert (=> bs!1399923 (not (= lambda!322390 lambda!322366))))

(declare-fun bs!1399924 () Bool)

(assert (= bs!1399924 (and b!5911100 b!5911101)))

(assert (=> bs!1399924 (not (= lambda!322390 lambda!322389))))

(assert (=> b!5911100 true))

(assert (=> b!5911100 true))

(declare-fun b!5911097 () Bool)

(declare-fun e!3619684 () Bool)

(declare-fun e!3619687 () Bool)

(assert (=> b!5911097 (= e!3619684 e!3619687)))

(declare-fun res!2478546 () Bool)

(assert (=> b!5911097 (= res!2478546 (not (is-EmptyLang!15954 r!7292)))))

(assert (=> b!5911097 (=> (not res!2478546) (not e!3619687))))

(declare-fun b!5911098 () Bool)

(declare-fun e!3619681 () Bool)

(declare-fun e!3619683 () Bool)

(assert (=> b!5911098 (= e!3619681 e!3619683)))

(declare-fun c!1050543 () Bool)

(assert (=> b!5911098 (= c!1050543 (is-Star!15954 r!7292))))

(declare-fun d!1854627 () Bool)

(declare-fun c!1050545 () Bool)

(assert (=> d!1854627 (= c!1050545 (is-EmptyExpr!15954 r!7292))))

(assert (=> d!1854627 (= (matchRSpec!3055 r!7292 s!2326) e!3619684)))

(declare-fun b!5911099 () Bool)

(declare-fun e!3619685 () Bool)

(assert (=> b!5911099 (= e!3619681 e!3619685)))

(declare-fun res!2478545 () Bool)

(assert (=> b!5911099 (= res!2478545 (matchRSpec!3055 (regOne!32421 r!7292) s!2326))))

(assert (=> b!5911099 (=> res!2478545 e!3619685)))

(declare-fun call!468491 () Bool)

(assert (=> b!5911100 (= e!3619683 call!468491)))

(declare-fun e!3619682 () Bool)

(assert (=> b!5911101 (= e!3619682 call!468491)))

(declare-fun b!5911102 () Bool)

(declare-fun c!1050544 () Bool)

(assert (=> b!5911102 (= c!1050544 (is-ElementMatch!15954 r!7292))))

(declare-fun e!3619686 () Bool)

(assert (=> b!5911102 (= e!3619687 e!3619686)))

(declare-fun b!5911103 () Bool)

(declare-fun res!2478547 () Bool)

(assert (=> b!5911103 (=> res!2478547 e!3619682)))

(declare-fun call!468492 () Bool)

(assert (=> b!5911103 (= res!2478547 call!468492)))

(assert (=> b!5911103 (= e!3619683 e!3619682)))

(declare-fun b!5911104 () Bool)

(assert (=> b!5911104 (= e!3619684 call!468492)))

(declare-fun bm!468486 () Bool)

(assert (=> bm!468486 (= call!468491 (Exists!3024 (ite c!1050543 lambda!322389 lambda!322390)))))

(declare-fun b!5911105 () Bool)

(declare-fun c!1050546 () Bool)

(assert (=> b!5911105 (= c!1050546 (is-Union!15954 r!7292))))

(assert (=> b!5911105 (= e!3619686 e!3619681)))

(declare-fun b!5911106 () Bool)

(assert (=> b!5911106 (= e!3619686 (= s!2326 (Cons!64039 (c!1050468 r!7292) Nil!64039)))))

(declare-fun b!5911107 () Bool)

(assert (=> b!5911107 (= e!3619685 (matchRSpec!3055 (regTwo!32421 r!7292) s!2326))))

(declare-fun bm!468487 () Bool)

(assert (=> bm!468487 (= call!468492 (isEmpty!35897 s!2326))))

(assert (= (and d!1854627 c!1050545) b!5911104))

(assert (= (and d!1854627 (not c!1050545)) b!5911097))

(assert (= (and b!5911097 res!2478546) b!5911102))

(assert (= (and b!5911102 c!1050544) b!5911106))

(assert (= (and b!5911102 (not c!1050544)) b!5911105))

(assert (= (and b!5911105 c!1050546) b!5911099))

(assert (= (and b!5911105 (not c!1050546)) b!5911098))

(assert (= (and b!5911099 (not res!2478545)) b!5911107))

(assert (= (and b!5911098 c!1050543) b!5911103))

(assert (= (and b!5911098 (not c!1050543)) b!5911100))

(assert (= (and b!5911103 (not res!2478547)) b!5911101))

(assert (= (or b!5911101 b!5911100) bm!468486))

(assert (= (or b!5911104 b!5911103) bm!468487))

(declare-fun m!6811136 () Bool)

(assert (=> b!5911099 m!6811136))

(declare-fun m!6811138 () Bool)

(assert (=> bm!468486 m!6811138))

(declare-fun m!6811140 () Bool)

(assert (=> b!5911107 m!6811140))

(assert (=> bm!468487 m!6811130))

(assert (=> b!5910793 d!1854627))

(declare-fun d!1854631 () Bool)

(assert (=> d!1854631 (= (matchR!8137 r!7292 s!2326) (matchRSpec!3055 r!7292 s!2326))))

(declare-fun lt!2309042 () Unit!157179)

(declare-fun choose!44584 (Regex!15954 List!64163) Unit!157179)

(assert (=> d!1854631 (= lt!2309042 (choose!44584 r!7292 s!2326))))

(assert (=> d!1854631 (validRegex!7690 r!7292)))

(assert (=> d!1854631 (= (mainMatchTheorem!3055 r!7292 s!2326) lt!2309042)))

(declare-fun bs!1399925 () Bool)

(assert (= bs!1399925 d!1854631))

(assert (=> bs!1399925 m!6810954))

(assert (=> bs!1399925 m!6810956))

(declare-fun m!6811142 () Bool)

(assert (=> bs!1399925 m!6811142))

(assert (=> bs!1399925 m!6810974))

(assert (=> b!5910793 d!1854631))

(declare-fun b!5911130 () Bool)

(declare-fun res!2478566 () Bool)

(declare-fun e!3619702 () Bool)

(assert (=> b!5911130 (=> res!2478566 e!3619702)))

(assert (=> b!5911130 (= res!2478566 (not (is-Concat!24799 r!7292)))))

(declare-fun e!3619701 () Bool)

(assert (=> b!5911130 (= e!3619701 e!3619702)))

(declare-fun b!5911132 () Bool)

(declare-fun e!3619700 () Bool)

(declare-fun call!468496 () Bool)

(assert (=> b!5911132 (= e!3619700 call!468496)))

(declare-fun bm!468490 () Bool)

(declare-fun call!468495 () Bool)

(declare-fun call!468497 () Bool)

(assert (=> bm!468490 (= call!468495 call!468497)))

(declare-fun b!5911133 () Bool)

(declare-fun e!3619706 () Bool)

(assert (=> b!5911133 (= e!3619706 call!468497)))

(declare-fun c!1050551 () Bool)

(declare-fun c!1050552 () Bool)

(declare-fun bm!468491 () Bool)

(assert (=> bm!468491 (= call!468497 (validRegex!7690 (ite c!1050552 (reg!16283 r!7292) (ite c!1050551 (regOne!32421 r!7292) (regOne!32420 r!7292)))))))

(declare-fun b!5911134 () Bool)

(assert (=> b!5911134 (= e!3619702 e!3619700)))

(declare-fun res!2478565 () Bool)

(assert (=> b!5911134 (=> (not res!2478565) (not e!3619700))))

(assert (=> b!5911134 (= res!2478565 call!468495)))

(declare-fun b!5911135 () Bool)

(declare-fun e!3619703 () Bool)

(assert (=> b!5911135 (= e!3619703 e!3619706)))

(declare-fun res!2478564 () Bool)

(assert (=> b!5911135 (= res!2478564 (not (nullable!5952 (reg!16283 r!7292))))))

(assert (=> b!5911135 (=> (not res!2478564) (not e!3619706))))

(declare-fun b!5911136 () Bool)

(assert (=> b!5911136 (= e!3619703 e!3619701)))

(assert (=> b!5911136 (= c!1050551 (is-Union!15954 r!7292))))

(declare-fun b!5911137 () Bool)

(declare-fun e!3619704 () Bool)

(assert (=> b!5911137 (= e!3619704 call!468496)))

(declare-fun d!1854633 () Bool)

(declare-fun res!2478568 () Bool)

(declare-fun e!3619705 () Bool)

(assert (=> d!1854633 (=> res!2478568 e!3619705)))

(assert (=> d!1854633 (= res!2478568 (is-ElementMatch!15954 r!7292))))

(assert (=> d!1854633 (= (validRegex!7690 r!7292) e!3619705)))

(declare-fun b!5911131 () Bool)

(declare-fun res!2478567 () Bool)

(assert (=> b!5911131 (=> (not res!2478567) (not e!3619704))))

(assert (=> b!5911131 (= res!2478567 call!468495)))

(assert (=> b!5911131 (= e!3619701 e!3619704)))

(declare-fun b!5911138 () Bool)

(assert (=> b!5911138 (= e!3619705 e!3619703)))

(assert (=> b!5911138 (= c!1050552 (is-Star!15954 r!7292))))

(declare-fun bm!468492 () Bool)

(assert (=> bm!468492 (= call!468496 (validRegex!7690 (ite c!1050551 (regTwo!32421 r!7292) (regTwo!32420 r!7292))))))

(assert (= (and d!1854633 (not res!2478568)) b!5911138))

(assert (= (and b!5911138 c!1050552) b!5911135))

(assert (= (and b!5911138 (not c!1050552)) b!5911136))

(assert (= (and b!5911135 res!2478564) b!5911133))

(assert (= (and b!5911136 c!1050551) b!5911131))

(assert (= (and b!5911136 (not c!1050551)) b!5911130))

(assert (= (and b!5911131 res!2478567) b!5911137))

(assert (= (and b!5911130 (not res!2478566)) b!5911134))

(assert (= (and b!5911134 res!2478565) b!5911132))

(assert (= (or b!5911137 b!5911132) bm!468492))

(assert (= (or b!5911131 b!5911134) bm!468490))

(assert (= (or b!5911133 bm!468490) bm!468491))

(declare-fun m!6811144 () Bool)

(assert (=> bm!468491 m!6811144))

(declare-fun m!6811146 () Bool)

(assert (=> b!5911135 m!6811146))

(declare-fun m!6811148 () Bool)

(assert (=> bm!468492 m!6811148))

(assert (=> start!601290 d!1854633))

(declare-fun bs!1399926 () Bool)

(declare-fun d!1854635 () Bool)

(assert (= bs!1399926 (and d!1854635 d!1854613)))

(declare-fun lambda!322391 () Int)

(assert (=> bs!1399926 (= lambda!322391 lambda!322372)))

(declare-fun bs!1399927 () Bool)

(assert (= bs!1399927 (and d!1854635 d!1854617)))

(assert (=> bs!1399927 (= lambda!322391 lambda!322375)))

(declare-fun bs!1399928 () Bool)

(assert (= bs!1399928 (and d!1854635 d!1854621)))

(assert (=> bs!1399928 (= lambda!322391 lambda!322380)))

(assert (=> d!1854635 (= (inv!83133 (h!70486 zl!343)) (forall!15041 (exprs!5838 (h!70486 zl!343)) lambda!322391))))

(declare-fun bs!1399929 () Bool)

(assert (= bs!1399929 d!1854635))

(declare-fun m!6811150 () Bool)

(assert (=> bs!1399929 m!6811150))

(assert (=> b!5910789 d!1854635))

(declare-fun d!1854637 () Bool)

(declare-fun e!3619709 () Bool)

(assert (=> d!1854637 e!3619709))

(declare-fun res!2478571 () Bool)

(assert (=> d!1854637 (=> (not res!2478571) (not e!3619709))))

(declare-fun lt!2309045 () List!64162)

(declare-fun noDuplicate!1817 (List!64162) Bool)

(assert (=> d!1854637 (= res!2478571 (noDuplicate!1817 lt!2309045))))

(declare-fun choose!44585 ((Set Context!10676)) List!64162)

(assert (=> d!1854637 (= lt!2309045 (choose!44585 z!1189))))

(assert (=> d!1854637 (= (toList!9738 z!1189) lt!2309045)))

(declare-fun b!5911141 () Bool)

(declare-fun content!11782 (List!64162) (Set Context!10676))

(assert (=> b!5911141 (= e!3619709 (= (content!11782 lt!2309045) z!1189))))

(assert (= (and d!1854637 res!2478571) b!5911141))

(declare-fun m!6811152 () Bool)

(assert (=> d!1854637 m!6811152))

(declare-fun m!6811154 () Bool)

(assert (=> d!1854637 m!6811154))

(declare-fun m!6811156 () Bool)

(assert (=> b!5911141 m!6811156))

(assert (=> b!5910783 d!1854637))

(declare-fun bs!1399930 () Bool)

(declare-fun d!1854639 () Bool)

(assert (= bs!1399930 (and d!1854639 d!1854613)))

(declare-fun lambda!322394 () Int)

(assert (=> bs!1399930 (= lambda!322394 lambda!322372)))

(declare-fun bs!1399931 () Bool)

(assert (= bs!1399931 (and d!1854639 d!1854617)))

(assert (=> bs!1399931 (= lambda!322394 lambda!322375)))

(declare-fun bs!1399932 () Bool)

(assert (= bs!1399932 (and d!1854639 d!1854621)))

(assert (=> bs!1399932 (= lambda!322394 lambda!322380)))

(declare-fun bs!1399933 () Bool)

(assert (= bs!1399933 (and d!1854639 d!1854635)))

(assert (=> bs!1399933 (= lambda!322394 lambda!322391)))

(declare-fun b!5911176 () Bool)

(declare-fun e!3619734 () Regex!15954)

(declare-fun e!3619732 () Regex!15954)

(assert (=> b!5911176 (= e!3619734 e!3619732)))

(declare-fun c!1050566 () Bool)

(assert (=> b!5911176 (= c!1050566 (is-Cons!64037 (exprs!5838 (h!70486 zl!343))))))

(declare-fun b!5911177 () Bool)

(declare-fun e!3619731 () Bool)

(declare-fun e!3619729 () Bool)

(assert (=> b!5911177 (= e!3619731 e!3619729)))

(declare-fun c!1050565 () Bool)

(assert (=> b!5911177 (= c!1050565 (isEmpty!35896 (tail!11543 (exprs!5838 (h!70486 zl!343)))))))

(declare-fun b!5911178 () Bool)

(assert (=> b!5911178 (= e!3619732 EmptyExpr!15954)))

(declare-fun b!5911179 () Bool)

(declare-fun e!3619730 () Bool)

(assert (=> b!5911179 (= e!3619730 (isEmpty!35896 (t!377550 (exprs!5838 (h!70486 zl!343)))))))

(declare-fun e!3619733 () Bool)

(assert (=> d!1854639 e!3619733))

(declare-fun res!2478585 () Bool)

(assert (=> d!1854639 (=> (not res!2478585) (not e!3619733))))

(declare-fun lt!2309049 () Regex!15954)

(assert (=> d!1854639 (= res!2478585 (validRegex!7690 lt!2309049))))

(assert (=> d!1854639 (= lt!2309049 e!3619734)))

(declare-fun c!1050567 () Bool)

(assert (=> d!1854639 (= c!1050567 e!3619730)))

(declare-fun res!2478584 () Bool)

(assert (=> d!1854639 (=> (not res!2478584) (not e!3619730))))

(assert (=> d!1854639 (= res!2478584 (is-Cons!64037 (exprs!5838 (h!70486 zl!343))))))

(assert (=> d!1854639 (forall!15041 (exprs!5838 (h!70486 zl!343)) lambda!322394)))

(assert (=> d!1854639 (= (generalisedConcat!1551 (exprs!5838 (h!70486 zl!343))) lt!2309049)))

(declare-fun b!5911180 () Bool)

(declare-fun isEmptyExpr!1387 (Regex!15954) Bool)

(assert (=> b!5911180 (= e!3619731 (isEmptyExpr!1387 lt!2309049))))

(declare-fun b!5911181 () Bool)

(declare-fun isConcat!910 (Regex!15954) Bool)

(assert (=> b!5911181 (= e!3619729 (isConcat!910 lt!2309049))))

(declare-fun b!5911182 () Bool)

(assert (=> b!5911182 (= e!3619729 (= lt!2309049 (head!12458 (exprs!5838 (h!70486 zl!343)))))))

(declare-fun b!5911183 () Bool)

(assert (=> b!5911183 (= e!3619732 (Concat!24799 (h!70485 (exprs!5838 (h!70486 zl!343))) (generalisedConcat!1551 (t!377550 (exprs!5838 (h!70486 zl!343))))))))

(declare-fun b!5911184 () Bool)

(assert (=> b!5911184 (= e!3619734 (h!70485 (exprs!5838 (h!70486 zl!343))))))

(declare-fun b!5911185 () Bool)

(assert (=> b!5911185 (= e!3619733 e!3619731)))

(declare-fun c!1050564 () Bool)

(assert (=> b!5911185 (= c!1050564 (isEmpty!35896 (exprs!5838 (h!70486 zl!343))))))

(assert (= (and d!1854639 res!2478584) b!5911179))

(assert (= (and d!1854639 c!1050567) b!5911184))

(assert (= (and d!1854639 (not c!1050567)) b!5911176))

(assert (= (and b!5911176 c!1050566) b!5911183))

(assert (= (and b!5911176 (not c!1050566)) b!5911178))

(assert (= (and d!1854639 res!2478585) b!5911185))

(assert (= (and b!5911185 c!1050564) b!5911180))

(assert (= (and b!5911185 (not c!1050564)) b!5911177))

(assert (= (and b!5911177 c!1050565) b!5911182))

(assert (= (and b!5911177 (not c!1050565)) b!5911181))

(declare-fun m!6811172 () Bool)

(assert (=> b!5911185 m!6811172))

(declare-fun m!6811174 () Bool)

(assert (=> b!5911177 m!6811174))

(assert (=> b!5911177 m!6811174))

(declare-fun m!6811176 () Bool)

(assert (=> b!5911177 m!6811176))

(declare-fun m!6811178 () Bool)

(assert (=> b!5911179 m!6811178))

(declare-fun m!6811180 () Bool)

(assert (=> b!5911182 m!6811180))

(declare-fun m!6811182 () Bool)

(assert (=> b!5911183 m!6811182))

(declare-fun m!6811184 () Bool)

(assert (=> b!5911181 m!6811184))

(declare-fun m!6811186 () Bool)

(assert (=> b!5911180 m!6811186))

(declare-fun m!6811188 () Bool)

(assert (=> d!1854639 m!6811188))

(declare-fun m!6811190 () Bool)

(assert (=> d!1854639 m!6811190))

(assert (=> b!5910778 d!1854639))

(declare-fun b!5911190 () Bool)

(declare-fun e!3619737 () Bool)

(declare-fun tp!1642255 () Bool)

(declare-fun tp!1642256 () Bool)

(assert (=> b!5911190 (= e!3619737 (and tp!1642255 tp!1642256))))

(assert (=> b!5910781 (= tp!1642214 e!3619737)))

(assert (= (and b!5910781 (is-Cons!64037 (exprs!5838 (h!70486 zl!343)))) b!5911190))

(declare-fun b!5911203 () Bool)

(declare-fun e!3619740 () Bool)

(declare-fun tp!1642270 () Bool)

(assert (=> b!5911203 (= e!3619740 tp!1642270)))

(assert (=> b!5910782 (= tp!1642211 e!3619740)))

(declare-fun b!5911204 () Bool)

(declare-fun tp!1642271 () Bool)

(declare-fun tp!1642268 () Bool)

(assert (=> b!5911204 (= e!3619740 (and tp!1642271 tp!1642268))))

(declare-fun b!5911202 () Bool)

(declare-fun tp!1642267 () Bool)

(declare-fun tp!1642269 () Bool)

(assert (=> b!5911202 (= e!3619740 (and tp!1642267 tp!1642269))))

(declare-fun b!5911201 () Bool)

(assert (=> b!5911201 (= e!3619740 tp_is_empty!41161)))

(assert (= (and b!5910782 (is-ElementMatch!15954 (regOne!32420 r!7292))) b!5911201))

(assert (= (and b!5910782 (is-Concat!24799 (regOne!32420 r!7292))) b!5911202))

(assert (= (and b!5910782 (is-Star!15954 (regOne!32420 r!7292))) b!5911203))

(assert (= (and b!5910782 (is-Union!15954 (regOne!32420 r!7292))) b!5911204))

(declare-fun b!5911207 () Bool)

(declare-fun e!3619741 () Bool)

(declare-fun tp!1642275 () Bool)

(assert (=> b!5911207 (= e!3619741 tp!1642275)))

(assert (=> b!5910782 (= tp!1642218 e!3619741)))

(declare-fun b!5911208 () Bool)

(declare-fun tp!1642276 () Bool)

(declare-fun tp!1642273 () Bool)

(assert (=> b!5911208 (= e!3619741 (and tp!1642276 tp!1642273))))

(declare-fun b!5911206 () Bool)

(declare-fun tp!1642272 () Bool)

(declare-fun tp!1642274 () Bool)

(assert (=> b!5911206 (= e!3619741 (and tp!1642272 tp!1642274))))

(declare-fun b!5911205 () Bool)

(assert (=> b!5911205 (= e!3619741 tp_is_empty!41161)))

(assert (= (and b!5910782 (is-ElementMatch!15954 (regTwo!32420 r!7292))) b!5911205))

(assert (= (and b!5910782 (is-Concat!24799 (regTwo!32420 r!7292))) b!5911206))

(assert (= (and b!5910782 (is-Star!15954 (regTwo!32420 r!7292))) b!5911207))

(assert (= (and b!5910782 (is-Union!15954 (regTwo!32420 r!7292))) b!5911208))

(declare-fun b!5911211 () Bool)

(declare-fun e!3619742 () Bool)

(declare-fun tp!1642280 () Bool)

(assert (=> b!5911211 (= e!3619742 tp!1642280)))

(assert (=> b!5910790 (= tp!1642219 e!3619742)))

(declare-fun b!5911212 () Bool)

(declare-fun tp!1642281 () Bool)

(declare-fun tp!1642278 () Bool)

(assert (=> b!5911212 (= e!3619742 (and tp!1642281 tp!1642278))))

(declare-fun b!5911210 () Bool)

(declare-fun tp!1642277 () Bool)

(declare-fun tp!1642279 () Bool)

(assert (=> b!5911210 (= e!3619742 (and tp!1642277 tp!1642279))))

(declare-fun b!5911209 () Bool)

(assert (=> b!5911209 (= e!3619742 tp_is_empty!41161)))

(assert (= (and b!5910790 (is-ElementMatch!15954 (reg!16283 r!7292))) b!5911209))

(assert (= (and b!5910790 (is-Concat!24799 (reg!16283 r!7292))) b!5911210))

(assert (= (and b!5910790 (is-Star!15954 (reg!16283 r!7292))) b!5911211))

(assert (= (and b!5910790 (is-Union!15954 (reg!16283 r!7292))) b!5911212))

(declare-fun condSetEmpty!40087 () Bool)

(assert (=> setNonEmpty!40081 (= condSetEmpty!40087 (= setRest!40081 (as set.empty (Set Context!10676))))))

(declare-fun setRes!40087 () Bool)

(assert (=> setNonEmpty!40081 (= tp!1642213 setRes!40087)))

(declare-fun setIsEmpty!40087 () Bool)

(assert (=> setIsEmpty!40087 setRes!40087))

(declare-fun setNonEmpty!40087 () Bool)

(declare-fun setElem!40087 () Context!10676)

(declare-fun e!3619745 () Bool)

(declare-fun tp!1642286 () Bool)

(assert (=> setNonEmpty!40087 (= setRes!40087 (and tp!1642286 (inv!83133 setElem!40087) e!3619745))))

(declare-fun setRest!40087 () (Set Context!10676))

(assert (=> setNonEmpty!40087 (= setRest!40081 (set.union (set.insert setElem!40087 (as set.empty (Set Context!10676))) setRest!40087))))

(declare-fun b!5911217 () Bool)

(declare-fun tp!1642287 () Bool)

(assert (=> b!5911217 (= e!3619745 tp!1642287)))

(assert (= (and setNonEmpty!40081 condSetEmpty!40087) setIsEmpty!40087))

(assert (= (and setNonEmpty!40081 (not condSetEmpty!40087)) setNonEmpty!40087))

(assert (= setNonEmpty!40087 b!5911217))

(declare-fun m!6811192 () Bool)

(assert (=> setNonEmpty!40087 m!6811192))

(declare-fun b!5911220 () Bool)

(declare-fun e!3619746 () Bool)

(declare-fun tp!1642291 () Bool)

(assert (=> b!5911220 (= e!3619746 tp!1642291)))

(assert (=> b!5910779 (= tp!1642215 e!3619746)))

(declare-fun b!5911221 () Bool)

(declare-fun tp!1642292 () Bool)

(declare-fun tp!1642289 () Bool)

(assert (=> b!5911221 (= e!3619746 (and tp!1642292 tp!1642289))))

(declare-fun b!5911219 () Bool)

(declare-fun tp!1642288 () Bool)

(declare-fun tp!1642290 () Bool)

(assert (=> b!5911219 (= e!3619746 (and tp!1642288 tp!1642290))))

(declare-fun b!5911218 () Bool)

(assert (=> b!5911218 (= e!3619746 tp_is_empty!41161)))

(assert (= (and b!5910779 (is-ElementMatch!15954 (regOne!32421 r!7292))) b!5911218))

(assert (= (and b!5910779 (is-Concat!24799 (regOne!32421 r!7292))) b!5911219))

(assert (= (and b!5910779 (is-Star!15954 (regOne!32421 r!7292))) b!5911220))

(assert (= (and b!5910779 (is-Union!15954 (regOne!32421 r!7292))) b!5911221))

(declare-fun b!5911224 () Bool)

(declare-fun e!3619747 () Bool)

(declare-fun tp!1642296 () Bool)

(assert (=> b!5911224 (= e!3619747 tp!1642296)))

(assert (=> b!5910779 (= tp!1642212 e!3619747)))

(declare-fun b!5911225 () Bool)

(declare-fun tp!1642297 () Bool)

(declare-fun tp!1642294 () Bool)

(assert (=> b!5911225 (= e!3619747 (and tp!1642297 tp!1642294))))

(declare-fun b!5911223 () Bool)

(declare-fun tp!1642293 () Bool)

(declare-fun tp!1642295 () Bool)

(assert (=> b!5911223 (= e!3619747 (and tp!1642293 tp!1642295))))

(declare-fun b!5911222 () Bool)

(assert (=> b!5911222 (= e!3619747 tp_is_empty!41161)))

(assert (= (and b!5910779 (is-ElementMatch!15954 (regTwo!32421 r!7292))) b!5911222))

(assert (= (and b!5910779 (is-Concat!24799 (regTwo!32421 r!7292))) b!5911223))

(assert (= (and b!5910779 (is-Star!15954 (regTwo!32421 r!7292))) b!5911224))

(assert (= (and b!5910779 (is-Union!15954 (regTwo!32421 r!7292))) b!5911225))

(declare-fun b!5911233 () Bool)

(declare-fun e!3619753 () Bool)

(declare-fun tp!1642302 () Bool)

(assert (=> b!5911233 (= e!3619753 tp!1642302)))

(declare-fun e!3619752 () Bool)

(declare-fun b!5911232 () Bool)

(declare-fun tp!1642303 () Bool)

(assert (=> b!5911232 (= e!3619752 (and (inv!83133 (h!70486 (t!377551 zl!343))) e!3619753 tp!1642303))))

(assert (=> b!5910789 (= tp!1642216 e!3619752)))

(assert (= b!5911232 b!5911233))

(assert (= (and b!5910789 (is-Cons!64038 (t!377551 zl!343))) b!5911232))

(declare-fun m!6811194 () Bool)

(assert (=> b!5911232 m!6811194))

(declare-fun b!5911234 () Bool)

(declare-fun e!3619754 () Bool)

(declare-fun tp!1642304 () Bool)

(declare-fun tp!1642305 () Bool)

(assert (=> b!5911234 (= e!3619754 (and tp!1642304 tp!1642305))))

(assert (=> b!5910777 (= tp!1642220 e!3619754)))

(assert (= (and b!5910777 (is-Cons!64037 (exprs!5838 setElem!40081))) b!5911234))

(declare-fun b!5911239 () Bool)

(declare-fun e!3619757 () Bool)

(declare-fun tp!1642308 () Bool)

(assert (=> b!5911239 (= e!3619757 (and tp_is_empty!41161 tp!1642308))))

(assert (=> b!5910788 (= tp!1642217 e!3619757)))

(assert (= (and b!5910788 (is-Cons!64039 (t!377552 s!2326))) b!5911239))

(push 1)

(assert (not b!5911182))

(assert (not d!1854613))

(assert (not b!5910927))

(assert (not setNonEmpty!40087))

(assert (not b!5911190))

(assert (not b!5911211))

(assert (not b!5911135))

(assert (not b!5911204))

(assert (not d!1854639))

(assert (not b!5911179))

(assert (not bm!468477))

(assert (not b!5911141))

(assert tp_is_empty!41161)

(assert (not b!5911107))

(assert (not b!5911048))

(assert (not b!5911232))

(assert (not b!5911054))

(assert (not b!5910877))

(assert (not b!5911225))

(assert (not b!5911219))

(assert (not b!5910974))

(assert (not b!5910979))

(assert (not b!5911224))

(assert (not b!5911053))

(assert (not b!5911181))

(assert (not b!5910980))

(assert (not b!5911099))

(assert (not b!5911208))

(assert (not b!5911234))

(assert (not bm!468478))

(assert (not b!5911221))

(assert (not b!5910973))

(assert (not d!1854601))

(assert (not b!5911183))

(assert (not b!5911220))

(assert (not d!1854607))

(assert (not b!5910875))

(assert (not bm!468481))

(assert (not b!5911223))

(assert (not d!1854631))

(assert (not d!1854635))

(assert (not b!5910883))

(assert (not b!5911202))

(assert (not b!5911217))

(assert (not d!1854637))

(assert (not b!5911203))

(assert (not bm!468492))

(assert (not b!5911051))

(assert (not b!5911210))

(assert (not b!5910976))

(assert (not b!5911212))

(assert (not d!1854623))

(assert (not d!1854617))

(assert (not d!1854605))

(assert (not b!5911177))

(assert (not b!5910882))

(assert (not b!5911058))

(assert (not b!5911207))

(assert (not b!5910972))

(assert (not b!5910978))

(assert (not b!5910985))

(assert (not bm!468486))

(assert (not bm!468491))

(assert (not b!5911185))

(assert (not d!1854597))

(assert (not b!5911206))

(assert (not b!5911180))

(assert (not b!5910876))

(assert (not b!5911045))

(assert (not b!5910878))

(assert (not bm!468487))

(assert (not d!1854619))

(assert (not b!5911233))

(assert (not b!5911239))

(assert (not d!1854621))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

