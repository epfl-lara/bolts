; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!642672 () Bool)

(assert start!642672)

(declare-fun b!6557986 () Bool)

(assert (=> b!6557986 true))

(assert (=> b!6557986 true))

(declare-fun lambda!364633 () Int)

(declare-fun lambda!364632 () Int)

(assert (=> b!6557986 (not (= lambda!364633 lambda!364632))))

(assert (=> b!6557986 true))

(assert (=> b!6557986 true))

(declare-fun b!6557983 () Bool)

(assert (=> b!6557983 true))

(declare-fun b!6557958 () Bool)

(assert (=> b!6557958 true))

(declare-fun bs!1673798 () Bool)

(declare-fun b!6557965 () Bool)

(assert (= bs!1673798 (and b!6557965 b!6557986)))

(declare-datatypes ((C!33138 0))(
  ( (C!33139 (val!26271 Int)) )
))
(declare-datatypes ((Regex!16434 0))(
  ( (ElementMatch!16434 (c!1204909 C!33138)) (Concat!25279 (regOne!33380 Regex!16434) (regTwo!33380 Regex!16434)) (EmptyExpr!16434) (Star!16434 (reg!16763 Regex!16434)) (EmptyLang!16434) (Union!16434 (regOne!33381 Regex!16434) (regTwo!33381 Regex!16434)) )
))
(declare-fun r!7292 () Regex!16434)

(declare-fun lambda!364637 () Int)

(declare-fun lt!2404982 () Regex!16434)

(assert (=> bs!1673798 (= (= lt!2404982 (regOne!33380 r!7292)) (= lambda!364637 lambda!364632))))

(assert (=> bs!1673798 (not (= lambda!364637 lambda!364633))))

(assert (=> b!6557965 true))

(assert (=> b!6557965 true))

(assert (=> b!6557965 true))

(declare-fun lambda!364638 () Int)

(assert (=> bs!1673798 (not (= lambda!364638 lambda!364632))))

(assert (=> bs!1673798 (= (= lt!2404982 (regOne!33380 r!7292)) (= lambda!364638 lambda!364633))))

(assert (=> b!6557965 (not (= lambda!364638 lambda!364637))))

(assert (=> b!6557965 true))

(assert (=> b!6557965 true))

(assert (=> b!6557965 true))

(declare-fun bs!1673799 () Bool)

(declare-fun b!6557976 () Bool)

(assert (= bs!1673799 (and b!6557976 b!6557986)))

(declare-datatypes ((List!65601 0))(
  ( (Nil!65477) (Cons!65477 (h!71925 C!33138) (t!379243 List!65601)) )
))
(declare-datatypes ((tuple2!66826 0))(
  ( (tuple2!66827 (_1!36716 List!65601) (_2!36716 List!65601)) )
))
(declare-fun lt!2405023 () tuple2!66826)

(declare-fun s!2326 () List!65601)

(declare-fun lt!2405035 () Regex!16434)

(declare-fun lambda!364639 () Int)

(assert (=> bs!1673799 (= (and (= (_1!36716 lt!2405023) s!2326) (= (reg!16763 (regOne!33380 r!7292)) (regOne!33380 r!7292)) (= lt!2405035 (regTwo!33380 r!7292))) (= lambda!364639 lambda!364632))))

(assert (=> bs!1673799 (not (= lambda!364639 lambda!364633))))

(declare-fun bs!1673800 () Bool)

(assert (= bs!1673800 (and b!6557976 b!6557965)))

(assert (=> bs!1673800 (= (and (= (_1!36716 lt!2405023) s!2326) (= (reg!16763 (regOne!33380 r!7292)) lt!2404982) (= lt!2405035 (regTwo!33380 r!7292))) (= lambda!364639 lambda!364637))))

(assert (=> bs!1673800 (not (= lambda!364639 lambda!364638))))

(assert (=> b!6557976 true))

(assert (=> b!6557976 true))

(assert (=> b!6557976 true))

(declare-fun b!6557941 () Bool)

(declare-fun res!2690850 () Bool)

(declare-fun e!3970116 () Bool)

(assert (=> b!6557941 (=> res!2690850 e!3970116)))

(declare-fun lt!2404995 () Regex!16434)

(assert (=> b!6557941 (= res!2690850 (not (= lt!2404995 r!7292)))))

(declare-fun b!6557942 () Bool)

(declare-fun res!2690845 () Bool)

(declare-fun e!3970103 () Bool)

(assert (=> b!6557942 (=> res!2690845 e!3970103)))

(declare-datatypes ((List!65602 0))(
  ( (Nil!65478) (Cons!65478 (h!71926 Regex!16434) (t!379244 List!65602)) )
))
(declare-datatypes ((Context!11636 0))(
  ( (Context!11637 (exprs!6318 List!65602)) )
))
(declare-datatypes ((List!65603 0))(
  ( (Nil!65479) (Cons!65479 (h!71927 Context!11636) (t!379245 List!65603)) )
))
(declare-fun zl!343 () List!65603)

(declare-fun generalisedUnion!2278 (List!65602) Regex!16434)

(declare-fun unfocusZipperList!1855 (List!65603) List!65602)

(assert (=> b!6557942 (= res!2690845 (not (= r!7292 (generalisedUnion!2278 (unfocusZipperList!1855 zl!343)))))))

(declare-fun b!6557943 () Bool)

(declare-fun e!3970106 () Bool)

(declare-fun tp_is_empty!42121 () Bool)

(declare-fun tp!1812256 () Bool)

(assert (=> b!6557943 (= e!3970106 (and tp_is_empty!42121 tp!1812256))))

(declare-fun b!6557944 () Bool)

(declare-fun e!3970115 () Bool)

(declare-fun e!3970109 () Bool)

(assert (=> b!6557944 (= e!3970115 e!3970109)))

(declare-fun res!2690854 () Bool)

(assert (=> b!6557944 (=> res!2690854 e!3970109)))

(declare-fun lt!2405021 () (Set Context!11636))

(declare-fun lt!2405015 () (Set Context!11636))

(assert (=> b!6557944 (= res!2690854 (not (= lt!2405021 lt!2405015)))))

(declare-fun lt!2405031 () Context!11636)

(declare-fun derivationStepZipperDown!1682 (Regex!16434 Context!11636 C!33138) (Set Context!11636))

(assert (=> b!6557944 (= lt!2405015 (derivationStepZipperDown!1682 (reg!16763 (regOne!33380 r!7292)) lt!2405031 (h!71925 s!2326)))))

(declare-fun lt!2405038 () List!65602)

(assert (=> b!6557944 (= lt!2405031 (Context!11637 lt!2405038))))

(assert (=> b!6557944 (= lt!2405038 (Cons!65478 lt!2405035 (t!379244 (exprs!6318 (h!71927 zl!343)))))))

(assert (=> b!6557944 (= lt!2405035 (Star!16434 (reg!16763 (regOne!33380 r!7292))))))

(declare-fun b!6557945 () Bool)

(declare-fun e!3970117 () Bool)

(declare-fun e!3970097 () Bool)

(assert (=> b!6557945 (= e!3970117 e!3970097)))

(declare-fun res!2690851 () Bool)

(assert (=> b!6557945 (=> res!2690851 e!3970097)))

(declare-fun lt!2405017 () List!65603)

(declare-fun lt!2404994 () Regex!16434)

(declare-fun unfocusZipper!2176 (List!65603) Regex!16434)

(assert (=> b!6557945 (= res!2690851 (not (= (unfocusZipper!2176 lt!2405017) lt!2404994)))))

(assert (=> b!6557945 (= lt!2405017 (Cons!65479 lt!2405031 Nil!65479))))

(declare-fun setIsEmpty!44763 () Bool)

(declare-fun setRes!44763 () Bool)

(assert (=> setIsEmpty!44763 setRes!44763))

(declare-fun b!6557946 () Bool)

(declare-fun res!2690871 () Bool)

(declare-fun e!3970113 () Bool)

(assert (=> b!6557946 (=> res!2690871 e!3970113)))

(declare-fun z!1189 () (Set Context!11636))

(declare-fun matchZipper!2446 ((Set Context!11636) List!65601) Bool)

(assert (=> b!6557946 (= res!2690871 (not (matchZipper!2446 z!1189 s!2326)))))

(declare-fun b!6557947 () Bool)

(declare-fun e!3970104 () Bool)

(declare-fun validRegex!8170 (Regex!16434) Bool)

(assert (=> b!6557947 (= e!3970104 (validRegex!8170 lt!2405035))))

(declare-fun b!6557948 () Bool)

(declare-fun e!3970119 () Bool)

(declare-fun tp!1812261 () Bool)

(declare-fun tp!1812260 () Bool)

(assert (=> b!6557948 (= e!3970119 (and tp!1812261 tp!1812260))))

(declare-fun b!6557949 () Bool)

(declare-fun e!3970107 () Bool)

(assert (=> b!6557949 (= e!3970107 e!3970117)))

(declare-fun res!2690863 () Bool)

(assert (=> b!6557949 (=> res!2690863 e!3970117)))

(declare-fun lt!2404983 () List!65603)

(assert (=> b!6557949 (= res!2690863 (not (= (unfocusZipper!2176 lt!2404983) (reg!16763 (regOne!33380 r!7292)))))))

(declare-fun lt!2404979 () Context!11636)

(assert (=> b!6557949 (= lt!2404983 (Cons!65479 lt!2404979 Nil!65479))))

(declare-fun lt!2404987 () (Set Context!11636))

(declare-fun lambda!364634 () Int)

(declare-fun flatMap!1939 ((Set Context!11636) Int) (Set Context!11636))

(declare-fun derivationStepZipperUp!1608 (Context!11636 C!33138) (Set Context!11636))

(assert (=> b!6557949 (= (flatMap!1939 lt!2404987 lambda!364634) (derivationStepZipperUp!1608 lt!2405031 (h!71925 s!2326)))))

(declare-datatypes ((Unit!159071 0))(
  ( (Unit!159072) )
))
(declare-fun lt!2405025 () Unit!159071)

(declare-fun lemmaFlatMapOnSingletonSet!1465 ((Set Context!11636) Context!11636 Int) Unit!159071)

(assert (=> b!6557949 (= lt!2405025 (lemmaFlatMapOnSingletonSet!1465 lt!2404987 lt!2405031 lambda!364634))))

(declare-fun lt!2405013 () (Set Context!11636))

(assert (=> b!6557949 (= (flatMap!1939 lt!2405013 lambda!364634) (derivationStepZipperUp!1608 lt!2404979 (h!71925 s!2326)))))

(declare-fun lt!2405006 () Unit!159071)

(assert (=> b!6557949 (= lt!2405006 (lemmaFlatMapOnSingletonSet!1465 lt!2405013 lt!2404979 lambda!364634))))

(declare-fun lt!2404981 () (Set Context!11636))

(assert (=> b!6557949 (= lt!2404981 (derivationStepZipperUp!1608 lt!2405031 (h!71925 s!2326)))))

(declare-fun lt!2405003 () (Set Context!11636))

(assert (=> b!6557949 (= lt!2405003 (derivationStepZipperUp!1608 lt!2404979 (h!71925 s!2326)))))

(assert (=> b!6557949 (= lt!2404987 (set.insert lt!2405031 (as set.empty (Set Context!11636))))))

(assert (=> b!6557949 (= lt!2405013 (set.insert lt!2404979 (as set.empty (Set Context!11636))))))

(declare-fun lt!2405014 () List!65602)

(assert (=> b!6557949 (= lt!2404979 (Context!11637 lt!2405014))))

(assert (=> b!6557949 (= lt!2405014 (Cons!65478 (reg!16763 (regOne!33380 r!7292)) Nil!65478))))

(declare-fun b!6557950 () Bool)

(declare-fun e!3970099 () Bool)

(declare-fun tp!1812257 () Bool)

(assert (=> b!6557950 (= e!3970099 tp!1812257)))

(declare-fun b!6557951 () Bool)

(declare-fun tp!1812262 () Bool)

(assert (=> b!6557951 (= e!3970119 tp!1812262)))

(declare-fun b!6557952 () Bool)

(declare-fun e!3970118 () Bool)

(assert (=> b!6557952 (= e!3970118 (not e!3970103))))

(declare-fun res!2690867 () Bool)

(assert (=> b!6557952 (=> res!2690867 e!3970103)))

(assert (=> b!6557952 (= res!2690867 (not (is-Cons!65479 zl!343)))))

(declare-fun lt!2405026 () Bool)

(declare-fun matchRSpec!3535 (Regex!16434 List!65601) Bool)

(assert (=> b!6557952 (= lt!2405026 (matchRSpec!3535 r!7292 s!2326))))

(declare-fun matchR!8617 (Regex!16434 List!65601) Bool)

(assert (=> b!6557952 (= lt!2405026 (matchR!8617 r!7292 s!2326))))

(declare-fun lt!2405036 () Unit!159071)

(declare-fun mainMatchTheorem!3535 (Regex!16434 List!65601) Unit!159071)

(assert (=> b!6557952 (= lt!2405036 (mainMatchTheorem!3535 r!7292 s!2326))))

(declare-fun b!6557953 () Bool)

(declare-fun res!2690857 () Bool)

(assert (=> b!6557953 (=> res!2690857 e!3970103)))

(assert (=> b!6557953 (= res!2690857 (or (is-EmptyExpr!16434 r!7292) (is-EmptyLang!16434 r!7292) (is-ElementMatch!16434 r!7292) (is-Union!16434 r!7292) (not (is-Concat!25279 r!7292))))))

(declare-fun b!6557954 () Bool)

(declare-fun e!3970120 () Bool)

(assert (=> b!6557954 (= e!3970113 e!3970120)))

(declare-fun res!2690846 () Bool)

(assert (=> b!6557954 (=> res!2690846 e!3970120)))

(declare-fun e!3970101 () Bool)

(assert (=> b!6557954 (= res!2690846 e!3970101)))

(declare-fun res!2690855 () Bool)

(assert (=> b!6557954 (=> (not res!2690855) (not e!3970101))))

(declare-fun lt!2405012 () Bool)

(assert (=> b!6557954 (= res!2690855 (not lt!2405012))))

(assert (=> b!6557954 (= lt!2405012 (matchZipper!2446 lt!2405021 (t!379243 s!2326)))))

(declare-fun b!6557955 () Bool)

(declare-fun e!3970108 () Bool)

(assert (=> b!6557955 (= e!3970116 e!3970108)))

(declare-fun res!2690860 () Bool)

(assert (=> b!6557955 (=> res!2690860 e!3970108)))

(assert (=> b!6557955 (= res!2690860 (not (= r!7292 lt!2404994)))))

(assert (=> b!6557955 (= lt!2404994 (Concat!25279 lt!2405035 (regTwo!33380 r!7292)))))

(declare-fun b!6557956 () Bool)

(declare-fun e!3970100 () Bool)

(declare-fun lt!2405009 () (Set Context!11636))

(assert (=> b!6557956 (= e!3970100 (matchZipper!2446 lt!2405009 (t!379243 s!2326)))))

(declare-fun tp!1812258 () Bool)

(declare-fun e!3970121 () Bool)

(declare-fun b!6557957 () Bool)

(declare-fun e!3970124 () Bool)

(declare-fun inv!84333 (Context!11636) Bool)

(assert (=> b!6557957 (= e!3970121 (and (inv!84333 (h!71927 zl!343)) e!3970124 tp!1812258))))

(declare-fun res!2690840 () Bool)

(declare-fun e!3970105 () Bool)

(assert (=> start!642672 (=> (not res!2690840) (not e!3970105))))

(assert (=> start!642672 (= res!2690840 (validRegex!8170 r!7292))))

(assert (=> start!642672 e!3970105))

(assert (=> start!642672 e!3970119))

(declare-fun condSetEmpty!44763 () Bool)

(assert (=> start!642672 (= condSetEmpty!44763 (= z!1189 (as set.empty (Set Context!11636))))))

(assert (=> start!642672 setRes!44763))

(assert (=> start!642672 e!3970121))

(assert (=> start!642672 e!3970106))

(declare-fun e!3970110 () Bool)

(assert (=> b!6557958 (= e!3970120 e!3970110)))

(declare-fun res!2690859 () Bool)

(assert (=> b!6557958 (=> res!2690859 e!3970110)))

(declare-fun lt!2404986 () (Set Context!11636))

(declare-fun appendTo!195 ((Set Context!11636) Context!11636) (Set Context!11636))

(assert (=> b!6557958 (= res!2690859 (not (= (appendTo!195 lt!2405013 lt!2405031) lt!2404986)))))

(declare-fun lambda!364635 () Int)

(declare-fun map!14960 ((Set Context!11636) Int) (Set Context!11636))

(declare-fun ++!14570 (List!65602 List!65602) List!65602)

(assert (=> b!6557958 (= (map!14960 lt!2405013 lambda!364635) (set.insert (Context!11637 (++!14570 lt!2405014 lt!2405038)) (as set.empty (Set Context!11636))))))

(declare-fun lambda!364636 () Int)

(declare-fun lt!2405001 () Unit!159071)

(declare-fun lemmaConcatPreservesForall!407 (List!65602 List!65602 Int) Unit!159071)

(assert (=> b!6557958 (= lt!2405001 (lemmaConcatPreservesForall!407 lt!2405014 lt!2405038 lambda!364636))))

(declare-fun lt!2405018 () Unit!159071)

(declare-fun lemmaMapOnSingletonSet!217 ((Set Context!11636) Context!11636 Int) Unit!159071)

(assert (=> b!6557958 (= lt!2405018 (lemmaMapOnSingletonSet!217 lt!2405013 lt!2404979 lambda!364635))))

(declare-fun b!6557959 () Bool)

(declare-fun res!2690858 () Bool)

(assert (=> b!6557959 (=> res!2690858 e!3970113)))

(declare-fun lt!2405027 () Bool)

(assert (=> b!6557959 (= res!2690858 (not lt!2405027))))

(declare-fun b!6557960 () Bool)

(assert (=> b!6557960 (= e!3970105 e!3970118)))

(declare-fun res!2690839 () Bool)

(assert (=> b!6557960 (=> (not res!2690839) (not e!3970118))))

(assert (=> b!6557960 (= res!2690839 (= r!7292 lt!2404995))))

(assert (=> b!6557960 (= lt!2404995 (unfocusZipper!2176 zl!343))))

(declare-fun b!6557961 () Bool)

(declare-fun e!3970111 () Unit!159071)

(declare-fun Unit!159073 () Unit!159071)

(assert (=> b!6557961 (= e!3970111 Unit!159073)))

(declare-fun b!6557962 () Bool)

(declare-fun res!2690870 () Bool)

(assert (=> b!6557962 (=> res!2690870 e!3970103)))

(declare-fun generalisedConcat!2031 (List!65602) Regex!16434)

(assert (=> b!6557962 (= res!2690870 (not (= r!7292 (generalisedConcat!2031 (exprs!6318 (h!71927 zl!343))))))))

(declare-fun b!6557963 () Bool)

(declare-fun res!2690849 () Bool)

(assert (=> b!6557963 (=> res!2690849 e!3970120)))

(declare-fun lt!2404996 () Bool)

(assert (=> b!6557963 (= res!2690849 (or (not lt!2405012) (not lt!2404996)))))

(declare-fun b!6557964 () Bool)

(declare-fun Unit!159074 () Unit!159071)

(assert (=> b!6557964 (= e!3970111 Unit!159074)))

(declare-fun lt!2405029 () Unit!159071)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1265 ((Set Context!11636) (Set Context!11636) List!65601) Unit!159071)

(assert (=> b!6557964 (= lt!2405029 (lemmaZipperConcatMatchesSameAsBothZippers!1265 lt!2405021 lt!2405009 (t!379243 s!2326)))))

(declare-fun res!2690865 () Bool)

(assert (=> b!6557964 (= res!2690865 (matchZipper!2446 lt!2405021 (t!379243 s!2326)))))

(assert (=> b!6557964 (=> res!2690865 e!3970100)))

(assert (=> b!6557964 (= (matchZipper!2446 (set.union lt!2405021 lt!2405009) (t!379243 s!2326)) e!3970100)))

(declare-fun setElem!44763 () Context!11636)

(declare-fun tp!1812264 () Bool)

(declare-fun setNonEmpty!44763 () Bool)

(assert (=> setNonEmpty!44763 (= setRes!44763 (and tp!1812264 (inv!84333 setElem!44763) e!3970099))))

(declare-fun setRest!44763 () (Set Context!11636))

(assert (=> setNonEmpty!44763 (= z!1189 (set.union (set.insert setElem!44763 (as set.empty (Set Context!11636))) setRest!44763))))

(declare-fun e!3970123 () Bool)

(declare-fun e!3970114 () Bool)

(assert (=> b!6557965 (= e!3970123 e!3970114)))

(declare-fun res!2690836 () Bool)

(assert (=> b!6557965 (=> res!2690836 e!3970114)))

(assert (=> b!6557965 (= res!2690836 (not (matchR!8617 lt!2404982 (_1!36716 lt!2405023))))))

(declare-datatypes ((Option!16325 0))(
  ( (None!16324) (Some!16324 (v!52509 tuple2!66826)) )
))
(declare-fun lt!2404989 () Option!16325)

(declare-fun get!22733 (Option!16325) tuple2!66826)

(assert (=> b!6557965 (= lt!2405023 (get!22733 lt!2404989))))

(declare-fun Exists!3504 (Int) Bool)

(assert (=> b!6557965 (= (Exists!3504 lambda!364637) (Exists!3504 lambda!364638))))

(declare-fun lt!2404988 () Unit!159071)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2041 (Regex!16434 Regex!16434 List!65601) Unit!159071)

(assert (=> b!6557965 (= lt!2404988 (lemmaExistCutMatchRandMatchRSpecEquivalent!2041 lt!2404982 (regTwo!33380 r!7292) s!2326))))

(declare-fun isDefined!13028 (Option!16325) Bool)

(assert (=> b!6557965 (= (isDefined!13028 lt!2404989) (Exists!3504 lambda!364637))))

(declare-fun findConcatSeparation!2739 (Regex!16434 Regex!16434 List!65601 List!65601 List!65601) Option!16325)

(assert (=> b!6557965 (= lt!2404989 (findConcatSeparation!2739 lt!2404982 (regTwo!33380 r!7292) Nil!65477 s!2326 s!2326))))

(declare-fun lt!2404991 () Unit!159071)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2503 (Regex!16434 Regex!16434 List!65601) Unit!159071)

(assert (=> b!6557965 (= lt!2404991 (lemmaFindConcatSeparationEquivalentToExists!2503 lt!2404982 (regTwo!33380 r!7292) s!2326))))

(declare-fun lt!2405034 () Regex!16434)

(assert (=> b!6557965 (matchRSpec!3535 lt!2405034 s!2326)))

(declare-fun lt!2404993 () Unit!159071)

(assert (=> b!6557965 (= lt!2404993 (mainMatchTheorem!3535 lt!2405034 s!2326))))

(assert (=> b!6557965 (matchR!8617 lt!2405034 s!2326)))

(assert (=> b!6557965 (= lt!2405034 (Concat!25279 lt!2404982 (regTwo!33380 r!7292)))))

(assert (=> b!6557965 (= lt!2404982 (Concat!25279 (reg!16763 (regOne!33380 r!7292)) lt!2405035))))

(declare-fun lt!2405010 () Unit!159071)

(declare-fun lemmaConcatAssociative!131 (Regex!16434 Regex!16434 Regex!16434 List!65601) Unit!159071)

(assert (=> b!6557965 (= lt!2405010 (lemmaConcatAssociative!131 (reg!16763 (regOne!33380 r!7292)) lt!2405035 (regTwo!33380 r!7292) s!2326))))

(declare-fun e!3970102 () Bool)

(assert (=> b!6557965 e!3970102))

(declare-fun res!2690837 () Bool)

(assert (=> b!6557965 (=> (not res!2690837) (not e!3970102))))

(declare-fun lt!2405019 () Regex!16434)

(declare-fun lt!2405011 () List!65601)

(assert (=> b!6557965 (= res!2690837 (matchR!8617 lt!2405019 lt!2405011))))

(declare-fun lt!2405028 () Unit!159071)

(declare-fun lt!2405004 () tuple2!66826)

(declare-fun lemmaTwoRegexMatchThenConcatMatchesConcatString!355 (Regex!16434 Regex!16434 List!65601 List!65601) Unit!159071)

(assert (=> b!6557965 (= lt!2405028 (lemmaTwoRegexMatchThenConcatMatchesConcatString!355 (reg!16763 (regOne!33380 r!7292)) lt!2404994 (_1!36716 lt!2405004) (_2!36716 lt!2405004)))))

(assert (=> b!6557965 (matchR!8617 lt!2404994 (_2!36716 lt!2405004))))

(declare-fun lt!2405032 () Unit!159071)

(declare-fun theoremZipperRegexEquiv!870 ((Set Context!11636) List!65603 Regex!16434 List!65601) Unit!159071)

(assert (=> b!6557965 (= lt!2405032 (theoremZipperRegexEquiv!870 lt!2404987 lt!2405017 lt!2404994 (_2!36716 lt!2405004)))))

(assert (=> b!6557965 (matchR!8617 (reg!16763 (regOne!33380 r!7292)) (_1!36716 lt!2405004))))

(declare-fun lt!2404999 () Unit!159071)

(assert (=> b!6557965 (= lt!2404999 (theoremZipperRegexEquiv!870 lt!2405013 lt!2404983 (reg!16763 (regOne!33380 r!7292)) (_1!36716 lt!2405004)))))

(assert (=> b!6557965 (matchZipper!2446 (set.insert (Context!11637 (++!14570 lt!2405014 lt!2405038)) (as set.empty (Set Context!11636))) lt!2405011)))

(declare-fun lt!2404997 () Unit!159071)

(assert (=> b!6557965 (= lt!2404997 (lemmaConcatPreservesForall!407 lt!2405014 lt!2405038 lambda!364636))))

(declare-fun lt!2405033 () Unit!159071)

(declare-fun lemmaConcatenateContextMatchesConcatOfStrings!215 (Context!11636 Context!11636 List!65601 List!65601) Unit!159071)

(assert (=> b!6557965 (= lt!2405033 (lemmaConcatenateContextMatchesConcatOfStrings!215 lt!2404979 lt!2405031 (_1!36716 lt!2405004) (_2!36716 lt!2405004)))))

(declare-fun b!6557966 () Bool)

(declare-fun tp!1812265 () Bool)

(assert (=> b!6557966 (= e!3970124 tp!1812265)))

(declare-fun b!6557967 () Bool)

(declare-fun res!2690856 () Bool)

(assert (=> b!6557967 (=> res!2690856 e!3970103)))

(declare-fun isEmpty!37715 (List!65603) Bool)

(assert (=> b!6557967 (= res!2690856 (not (isEmpty!37715 (t!379245 zl!343))))))

(declare-fun b!6557968 () Bool)

(declare-fun res!2690847 () Bool)

(assert (=> b!6557968 (=> res!2690847 e!3970115)))

(assert (=> b!6557968 (= res!2690847 (or (is-Concat!25279 (regOne!33380 r!7292)) (not (is-Star!16434 (regOne!33380 r!7292)))))))

(declare-fun b!6557969 () Bool)

(assert (=> b!6557969 (= e!3970097 e!3970113)))

(declare-fun res!2690843 () Bool)

(assert (=> b!6557969 (=> res!2690843 e!3970113)))

(assert (=> b!6557969 (= res!2690843 lt!2405026)))

(declare-fun lt!2405008 () Bool)

(assert (=> b!6557969 (= lt!2405008 (matchRSpec!3535 lt!2405019 s!2326))))

(assert (=> b!6557969 (= lt!2405008 (matchR!8617 lt!2405019 s!2326))))

(declare-fun lt!2405000 () Unit!159071)

(assert (=> b!6557969 (= lt!2405000 (mainMatchTheorem!3535 lt!2405019 s!2326))))

(declare-fun b!6557970 () Bool)

(assert (=> b!6557970 (= e!3970102 lt!2405008)))

(declare-fun b!6557971 () Bool)

(declare-fun res!2690869 () Bool)

(assert (=> b!6557971 (=> res!2690869 e!3970123)))

(assert (=> b!6557971 (= res!2690869 (not (matchZipper!2446 lt!2404987 (_2!36716 lt!2405004))))))

(declare-fun b!6557972 () Bool)

(declare-fun e!3970122 () Bool)

(assert (=> b!6557972 (= e!3970109 e!3970122)))

(declare-fun res!2690852 () Bool)

(assert (=> b!6557972 (=> res!2690852 e!3970122)))

(declare-fun lt!2405024 () (Set Context!11636))

(assert (=> b!6557972 (= res!2690852 (not (= lt!2405024 lt!2405015)))))

(declare-fun lt!2405022 () Context!11636)

(assert (=> b!6557972 (= (flatMap!1939 lt!2404986 lambda!364634) (derivationStepZipperUp!1608 lt!2405022 (h!71925 s!2326)))))

(declare-fun lt!2405002 () Unit!159071)

(assert (=> b!6557972 (= lt!2405002 (lemmaFlatMapOnSingletonSet!1465 lt!2404986 lt!2405022 lambda!364634))))

(declare-fun lt!2404985 () (Set Context!11636))

(assert (=> b!6557972 (= lt!2404985 (derivationStepZipperUp!1608 lt!2405022 (h!71925 s!2326)))))

(declare-fun derivationStepZipper!2400 ((Set Context!11636) C!33138) (Set Context!11636))

(assert (=> b!6557972 (= lt!2405024 (derivationStepZipper!2400 lt!2404986 (h!71925 s!2326)))))

(assert (=> b!6557972 (= lt!2404986 (set.insert lt!2405022 (as set.empty (Set Context!11636))))))

(assert (=> b!6557972 (= lt!2405022 (Context!11637 (Cons!65478 (reg!16763 (regOne!33380 r!7292)) lt!2405038)))))

(declare-fun b!6557973 () Bool)

(declare-fun res!2690862 () Bool)

(assert (=> b!6557973 (=> res!2690862 e!3970115)))

(declare-fun e!3970098 () Bool)

(assert (=> b!6557973 (= res!2690862 e!3970098)))

(declare-fun res!2690841 () Bool)

(assert (=> b!6557973 (=> (not res!2690841) (not e!3970098))))

(assert (=> b!6557973 (= res!2690841 (is-Concat!25279 (regOne!33380 r!7292)))))

(declare-fun b!6557974 () Bool)

(declare-fun res!2690864 () Bool)

(assert (=> b!6557974 (=> (not res!2690864) (not e!3970105))))

(declare-fun toList!10218 ((Set Context!11636)) List!65603)

(assert (=> b!6557974 (= res!2690864 (= (toList!10218 z!1189) zl!343))))

(declare-fun b!6557975 () Bool)

(declare-fun res!2690848 () Bool)

(declare-fun e!3970112 () Bool)

(assert (=> b!6557975 (=> res!2690848 e!3970112)))

(declare-fun isEmpty!37716 (List!65602) Bool)

(assert (=> b!6557975 (= res!2690848 (isEmpty!37716 (t!379244 (exprs!6318 (h!71927 zl!343)))))))

(assert (=> b!6557976 (= e!3970114 e!3970104)))

(declare-fun res!2690861 () Bool)

(assert (=> b!6557976 (=> res!2690861 e!3970104)))

(assert (=> b!6557976 (= res!2690861 (not (validRegex!8170 (reg!16763 (regOne!33380 r!7292)))))))

(assert (=> b!6557976 (= (isDefined!13028 (findConcatSeparation!2739 (reg!16763 (regOne!33380 r!7292)) lt!2405035 Nil!65477 (_1!36716 lt!2405023) (_1!36716 lt!2405023))) (Exists!3504 lambda!364639))))

(declare-fun lt!2404990 () Unit!159071)

(assert (=> b!6557976 (= lt!2404990 (lemmaFindConcatSeparationEquivalentToExists!2503 (reg!16763 (regOne!33380 r!7292)) lt!2405035 (_1!36716 lt!2405023)))))

(assert (=> b!6557976 (matchRSpec!3535 lt!2404982 (_1!36716 lt!2405023))))

(declare-fun lt!2404992 () Unit!159071)

(assert (=> b!6557976 (= lt!2404992 (mainMatchTheorem!3535 lt!2404982 (_1!36716 lt!2405023)))))

(declare-fun b!6557977 () Bool)

(declare-fun res!2690853 () Bool)

(assert (=> b!6557977 (=> res!2690853 e!3970103)))

(assert (=> b!6557977 (= res!2690853 (not (is-Cons!65478 (exprs!6318 (h!71927 zl!343)))))))

(declare-fun b!6557978 () Bool)

(declare-fun tp!1812259 () Bool)

(declare-fun tp!1812263 () Bool)

(assert (=> b!6557978 (= e!3970119 (and tp!1812259 tp!1812263))))

(declare-fun b!6557979 () Bool)

(assert (=> b!6557979 (= e!3970122 e!3970116)))

(declare-fun res!2690838 () Bool)

(assert (=> b!6557979 (=> res!2690838 e!3970116)))

(assert (=> b!6557979 (= res!2690838 (not (= lt!2404996 (matchZipper!2446 lt!2405024 (t!379243 s!2326)))))))

(assert (=> b!6557979 (= lt!2404996 (matchZipper!2446 lt!2404986 s!2326))))

(declare-fun b!6557980 () Bool)

(declare-fun nullable!6427 (Regex!16434) Bool)

(assert (=> b!6557980 (= e!3970098 (nullable!6427 (regOne!33380 (regOne!33380 r!7292))))))

(declare-fun b!6557981 () Bool)

(assert (=> b!6557981 (= e!3970110 e!3970123)))

(declare-fun res!2690868 () Bool)

(assert (=> b!6557981 (=> res!2690868 e!3970123)))

(assert (=> b!6557981 (= res!2690868 (not (= s!2326 lt!2405011)))))

(declare-fun ++!14571 (List!65601 List!65601) List!65601)

(assert (=> b!6557981 (= lt!2405011 (++!14571 (_1!36716 lt!2405004) (_2!36716 lt!2405004)))))

(declare-fun lt!2405007 () Option!16325)

(assert (=> b!6557981 (= lt!2405004 (get!22733 lt!2405007))))

(assert (=> b!6557981 (isDefined!13028 lt!2405007)))

(declare-fun findConcatSeparationZippers!199 ((Set Context!11636) (Set Context!11636) List!65601 List!65601 List!65601) Option!16325)

(assert (=> b!6557981 (= lt!2405007 (findConcatSeparationZippers!199 lt!2405013 lt!2404987 Nil!65477 s!2326 s!2326))))

(declare-fun lt!2405030 () Unit!159071)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!199 ((Set Context!11636) Context!11636 List!65601) Unit!159071)

(assert (=> b!6557981 (= lt!2405030 (lemmaConcatZipperMatchesStringThenFindConcatDefined!199 lt!2405013 lt!2405031 s!2326))))

(declare-fun b!6557982 () Bool)

(assert (=> b!6557982 (= e!3970119 tp_is_empty!42121)))

(assert (=> b!6557983 (= e!3970112 e!3970115)))

(declare-fun res!2690842 () Bool)

(assert (=> b!6557983 (=> res!2690842 e!3970115)))

(assert (=> b!6557983 (= res!2690842 (or (and (is-ElementMatch!16434 (regOne!33380 r!7292)) (= (c!1204909 (regOne!33380 r!7292)) (h!71925 s!2326))) (is-Union!16434 (regOne!33380 r!7292))))))

(declare-fun lt!2405016 () Unit!159071)

(assert (=> b!6557983 (= lt!2405016 e!3970111)))

(declare-fun c!1204908 () Bool)

(assert (=> b!6557983 (= c!1204908 lt!2405027)))

(assert (=> b!6557983 (= lt!2405027 (nullable!6427 (h!71926 (exprs!6318 (h!71927 zl!343)))))))

(assert (=> b!6557983 (= (flatMap!1939 z!1189 lambda!364634) (derivationStepZipperUp!1608 (h!71927 zl!343) (h!71925 s!2326)))))

(declare-fun lt!2404984 () Unit!159071)

(assert (=> b!6557983 (= lt!2404984 (lemmaFlatMapOnSingletonSet!1465 z!1189 (h!71927 zl!343) lambda!364634))))

(declare-fun lt!2404998 () Context!11636)

(assert (=> b!6557983 (= lt!2405009 (derivationStepZipperUp!1608 lt!2404998 (h!71925 s!2326)))))

(assert (=> b!6557983 (= lt!2405021 (derivationStepZipperDown!1682 (h!71926 (exprs!6318 (h!71927 zl!343))) lt!2404998 (h!71925 s!2326)))))

(assert (=> b!6557983 (= lt!2404998 (Context!11637 (t!379244 (exprs!6318 (h!71927 zl!343)))))))

(declare-fun lt!2405020 () (Set Context!11636))

(assert (=> b!6557983 (= lt!2405020 (derivationStepZipperUp!1608 (Context!11637 (Cons!65478 (h!71926 (exprs!6318 (h!71927 zl!343))) (t!379244 (exprs!6318 (h!71927 zl!343))))) (h!71925 s!2326)))))

(declare-fun b!6557984 () Bool)

(declare-fun res!2690844 () Bool)

(assert (=> b!6557984 (=> res!2690844 e!3970123)))

(assert (=> b!6557984 (= res!2690844 (not (matchZipper!2446 lt!2405013 (_1!36716 lt!2405004))))))

(declare-fun b!6557985 () Bool)

(assert (=> b!6557985 (= e!3970101 (not (matchZipper!2446 lt!2405009 (t!379243 s!2326))))))

(assert (=> b!6557986 (= e!3970103 e!3970112)))

(declare-fun res!2690835 () Bool)

(assert (=> b!6557986 (=> res!2690835 e!3970112)))

(declare-fun lt!2405005 () Bool)

(assert (=> b!6557986 (= res!2690835 (or (not (= lt!2405026 lt!2405005)) (is-Nil!65477 s!2326)))))

(assert (=> b!6557986 (= (Exists!3504 lambda!364632) (Exists!3504 lambda!364633))))

(declare-fun lt!2405037 () Unit!159071)

(assert (=> b!6557986 (= lt!2405037 (lemmaExistCutMatchRandMatchRSpecEquivalent!2041 (regOne!33380 r!7292) (regTwo!33380 r!7292) s!2326))))

(assert (=> b!6557986 (= lt!2405005 (Exists!3504 lambda!364632))))

(assert (=> b!6557986 (= lt!2405005 (isDefined!13028 (findConcatSeparation!2739 (regOne!33380 r!7292) (regTwo!33380 r!7292) Nil!65477 s!2326 s!2326)))))

(declare-fun lt!2404980 () Unit!159071)

(assert (=> b!6557986 (= lt!2404980 (lemmaFindConcatSeparationEquivalentToExists!2503 (regOne!33380 r!7292) (regTwo!33380 r!7292) s!2326))))

(declare-fun b!6557987 () Bool)

(assert (=> b!6557987 (= e!3970108 e!3970107)))

(declare-fun res!2690866 () Bool)

(assert (=> b!6557987 (=> res!2690866 e!3970107)))

(assert (=> b!6557987 (= res!2690866 (not (= (unfocusZipper!2176 (Cons!65479 lt!2405022 Nil!65479)) lt!2405019)))))

(assert (=> b!6557987 (= lt!2405019 (Concat!25279 (reg!16763 (regOne!33380 r!7292)) lt!2404994))))

(assert (= (and start!642672 res!2690840) b!6557974))

(assert (= (and b!6557974 res!2690864) b!6557960))

(assert (= (and b!6557960 res!2690839) b!6557952))

(assert (= (and b!6557952 (not res!2690867)) b!6557967))

(assert (= (and b!6557967 (not res!2690856)) b!6557962))

(assert (= (and b!6557962 (not res!2690870)) b!6557977))

(assert (= (and b!6557977 (not res!2690853)) b!6557942))

(assert (= (and b!6557942 (not res!2690845)) b!6557953))

(assert (= (and b!6557953 (not res!2690857)) b!6557986))

(assert (= (and b!6557986 (not res!2690835)) b!6557975))

(assert (= (and b!6557975 (not res!2690848)) b!6557983))

(assert (= (and b!6557983 c!1204908) b!6557964))

(assert (= (and b!6557983 (not c!1204908)) b!6557961))

(assert (= (and b!6557964 (not res!2690865)) b!6557956))

(assert (= (and b!6557983 (not res!2690842)) b!6557973))

(assert (= (and b!6557973 res!2690841) b!6557980))

(assert (= (and b!6557973 (not res!2690862)) b!6557968))

(assert (= (and b!6557968 (not res!2690847)) b!6557944))

(assert (= (and b!6557944 (not res!2690854)) b!6557972))

(assert (= (and b!6557972 (not res!2690852)) b!6557979))

(assert (= (and b!6557979 (not res!2690838)) b!6557941))

(assert (= (and b!6557941 (not res!2690850)) b!6557955))

(assert (= (and b!6557955 (not res!2690860)) b!6557987))

(assert (= (and b!6557987 (not res!2690866)) b!6557949))

(assert (= (and b!6557949 (not res!2690863)) b!6557945))

(assert (= (and b!6557945 (not res!2690851)) b!6557969))

(assert (= (and b!6557969 (not res!2690843)) b!6557946))

(assert (= (and b!6557946 (not res!2690871)) b!6557959))

(assert (= (and b!6557959 (not res!2690858)) b!6557954))

(assert (= (and b!6557954 res!2690855) b!6557985))

(assert (= (and b!6557954 (not res!2690846)) b!6557963))

(assert (= (and b!6557963 (not res!2690849)) b!6557958))

(assert (= (and b!6557958 (not res!2690859)) b!6557981))

(assert (= (and b!6557981 (not res!2690868)) b!6557984))

(assert (= (and b!6557984 (not res!2690844)) b!6557971))

(assert (= (and b!6557971 (not res!2690869)) b!6557965))

(assert (= (and b!6557965 res!2690837) b!6557970))

(assert (= (and b!6557965 (not res!2690836)) b!6557976))

(assert (= (and b!6557976 (not res!2690861)) b!6557947))

(assert (= (and start!642672 (is-ElementMatch!16434 r!7292)) b!6557982))

(assert (= (and start!642672 (is-Concat!25279 r!7292)) b!6557978))

(assert (= (and start!642672 (is-Star!16434 r!7292)) b!6557951))

(assert (= (and start!642672 (is-Union!16434 r!7292)) b!6557948))

(assert (= (and start!642672 condSetEmpty!44763) setIsEmpty!44763))

(assert (= (and start!642672 (not condSetEmpty!44763)) setNonEmpty!44763))

(assert (= setNonEmpty!44763 b!6557950))

(assert (= b!6557957 b!6557966))

(assert (= (and start!642672 (is-Cons!65479 zl!343)) b!6557957))

(assert (= (and start!642672 (is-Cons!65477 s!2326)) b!6557943))

(declare-fun m!7339956 () Bool)

(assert (=> b!6557984 m!7339956))

(declare-fun m!7339958 () Bool)

(assert (=> b!6557962 m!7339958))

(declare-fun m!7339960 () Bool)

(assert (=> b!6557974 m!7339960))

(declare-fun m!7339962 () Bool)

(assert (=> b!6557944 m!7339962))

(declare-fun m!7339964 () Bool)

(assert (=> setNonEmpty!44763 m!7339964))

(declare-fun m!7339966 () Bool)

(assert (=> b!6557969 m!7339966))

(declare-fun m!7339968 () Bool)

(assert (=> b!6557969 m!7339968))

(declare-fun m!7339970 () Bool)

(assert (=> b!6557969 m!7339970))

(declare-fun m!7339972 () Bool)

(assert (=> b!6557947 m!7339972))

(declare-fun m!7339974 () Bool)

(assert (=> b!6557979 m!7339974))

(declare-fun m!7339976 () Bool)

(assert (=> b!6557979 m!7339976))

(declare-fun m!7339978 () Bool)

(assert (=> b!6557986 m!7339978))

(declare-fun m!7339980 () Bool)

(assert (=> b!6557986 m!7339980))

(declare-fun m!7339982 () Bool)

(assert (=> b!6557986 m!7339982))

(declare-fun m!7339984 () Bool)

(assert (=> b!6557986 m!7339984))

(declare-fun m!7339986 () Bool)

(assert (=> b!6557986 m!7339986))

(assert (=> b!6557986 m!7339984))

(assert (=> b!6557986 m!7339978))

(declare-fun m!7339988 () Bool)

(assert (=> b!6557986 m!7339988))

(declare-fun m!7339990 () Bool)

(assert (=> b!6557952 m!7339990))

(declare-fun m!7339992 () Bool)

(assert (=> b!6557952 m!7339992))

(declare-fun m!7339994 () Bool)

(assert (=> b!6557952 m!7339994))

(declare-fun m!7339996 () Bool)

(assert (=> b!6557981 m!7339996))

(declare-fun m!7339998 () Bool)

(assert (=> b!6557981 m!7339998))

(declare-fun m!7340000 () Bool)

(assert (=> b!6557981 m!7340000))

(declare-fun m!7340002 () Bool)

(assert (=> b!6557981 m!7340002))

(declare-fun m!7340004 () Bool)

(assert (=> b!6557981 m!7340004))

(declare-fun m!7340006 () Bool)

(assert (=> b!6557967 m!7340006))

(declare-fun m!7340008 () Bool)

(assert (=> b!6557942 m!7340008))

(assert (=> b!6557942 m!7340008))

(declare-fun m!7340010 () Bool)

(assert (=> b!6557942 m!7340010))

(declare-fun m!7340012 () Bool)

(assert (=> b!6557980 m!7340012))

(declare-fun m!7340014 () Bool)

(assert (=> b!6557983 m!7340014))

(declare-fun m!7340016 () Bool)

(assert (=> b!6557983 m!7340016))

(declare-fun m!7340018 () Bool)

(assert (=> b!6557983 m!7340018))

(declare-fun m!7340020 () Bool)

(assert (=> b!6557983 m!7340020))

(declare-fun m!7340022 () Bool)

(assert (=> b!6557983 m!7340022))

(declare-fun m!7340024 () Bool)

(assert (=> b!6557983 m!7340024))

(declare-fun m!7340026 () Bool)

(assert (=> b!6557983 m!7340026))

(declare-fun m!7340028 () Bool)

(assert (=> b!6557956 m!7340028))

(declare-fun m!7340030 () Bool)

(assert (=> b!6557972 m!7340030))

(declare-fun m!7340032 () Bool)

(assert (=> b!6557972 m!7340032))

(declare-fun m!7340034 () Bool)

(assert (=> b!6557972 m!7340034))

(declare-fun m!7340036 () Bool)

(assert (=> b!6557972 m!7340036))

(declare-fun m!7340038 () Bool)

(assert (=> b!6557972 m!7340038))

(assert (=> b!6557985 m!7340028))

(declare-fun m!7340040 () Bool)

(assert (=> b!6557957 m!7340040))

(declare-fun m!7340042 () Bool)

(assert (=> b!6557945 m!7340042))

(declare-fun m!7340044 () Bool)

(assert (=> b!6557958 m!7340044))

(declare-fun m!7340046 () Bool)

(assert (=> b!6557958 m!7340046))

(declare-fun m!7340048 () Bool)

(assert (=> b!6557958 m!7340048))

(declare-fun m!7340050 () Bool)

(assert (=> b!6557958 m!7340050))

(declare-fun m!7340052 () Bool)

(assert (=> b!6557958 m!7340052))

(declare-fun m!7340054 () Bool)

(assert (=> b!6557958 m!7340054))

(declare-fun m!7340056 () Bool)

(assert (=> b!6557946 m!7340056))

(declare-fun m!7340058 () Bool)

(assert (=> b!6557971 m!7340058))

(declare-fun m!7340060 () Bool)

(assert (=> start!642672 m!7340060))

(declare-fun m!7340062 () Bool)

(assert (=> b!6557949 m!7340062))

(declare-fun m!7340064 () Bool)

(assert (=> b!6557949 m!7340064))

(declare-fun m!7340066 () Bool)

(assert (=> b!6557949 m!7340066))

(declare-fun m!7340068 () Bool)

(assert (=> b!6557949 m!7340068))

(declare-fun m!7340070 () Bool)

(assert (=> b!6557949 m!7340070))

(declare-fun m!7340072 () Bool)

(assert (=> b!6557949 m!7340072))

(declare-fun m!7340074 () Bool)

(assert (=> b!6557949 m!7340074))

(declare-fun m!7340076 () Bool)

(assert (=> b!6557949 m!7340076))

(declare-fun m!7340078 () Bool)

(assert (=> b!6557949 m!7340078))

(declare-fun m!7340080 () Bool)

(assert (=> b!6557965 m!7340080))

(assert (=> b!6557965 m!7340050))

(declare-fun m!7340082 () Bool)

(assert (=> b!6557965 m!7340082))

(declare-fun m!7340084 () Bool)

(assert (=> b!6557965 m!7340084))

(declare-fun m!7340086 () Bool)

(assert (=> b!6557965 m!7340086))

(declare-fun m!7340088 () Bool)

(assert (=> b!6557965 m!7340088))

(declare-fun m!7340090 () Bool)

(assert (=> b!6557965 m!7340090))

(declare-fun m!7340092 () Bool)

(assert (=> b!6557965 m!7340092))

(declare-fun m!7340094 () Bool)

(assert (=> b!6557965 m!7340094))

(declare-fun m!7340096 () Bool)

(assert (=> b!6557965 m!7340096))

(declare-fun m!7340098 () Bool)

(assert (=> b!6557965 m!7340098))

(assert (=> b!6557965 m!7340052))

(declare-fun m!7340100 () Bool)

(assert (=> b!6557965 m!7340100))

(declare-fun m!7340102 () Bool)

(assert (=> b!6557965 m!7340102))

(declare-fun m!7340104 () Bool)

(assert (=> b!6557965 m!7340104))

(assert (=> b!6557965 m!7340044))

(declare-fun m!7340106 () Bool)

(assert (=> b!6557965 m!7340106))

(declare-fun m!7340108 () Bool)

(assert (=> b!6557965 m!7340108))

(assert (=> b!6557965 m!7340044))

(declare-fun m!7340110 () Bool)

(assert (=> b!6557965 m!7340110))

(declare-fun m!7340112 () Bool)

(assert (=> b!6557965 m!7340112))

(declare-fun m!7340114 () Bool)

(assert (=> b!6557965 m!7340114))

(assert (=> b!6557965 m!7340088))

(declare-fun m!7340116 () Bool)

(assert (=> b!6557965 m!7340116))

(declare-fun m!7340118 () Bool)

(assert (=> b!6557965 m!7340118))

(declare-fun m!7340120 () Bool)

(assert (=> b!6557960 m!7340120))

(declare-fun m!7340122 () Bool)

(assert (=> b!6557954 m!7340122))

(declare-fun m!7340124 () Bool)

(assert (=> b!6557976 m!7340124))

(declare-fun m!7340126 () Bool)

(assert (=> b!6557976 m!7340126))

(declare-fun m!7340128 () Bool)

(assert (=> b!6557976 m!7340128))

(declare-fun m!7340130 () Bool)

(assert (=> b!6557976 m!7340130))

(declare-fun m!7340132 () Bool)

(assert (=> b!6557976 m!7340132))

(declare-fun m!7340134 () Bool)

(assert (=> b!6557976 m!7340134))

(declare-fun m!7340136 () Bool)

(assert (=> b!6557976 m!7340136))

(assert (=> b!6557976 m!7340126))

(declare-fun m!7340138 () Bool)

(assert (=> b!6557987 m!7340138))

(declare-fun m!7340140 () Bool)

(assert (=> b!6557964 m!7340140))

(assert (=> b!6557964 m!7340122))

(declare-fun m!7340142 () Bool)

(assert (=> b!6557964 m!7340142))

(declare-fun m!7340144 () Bool)

(assert (=> b!6557975 m!7340144))

(push 1)

(assert (not b!6557943))

(assert (not b!6557965))

(assert (not b!6557950))

(assert (not setNonEmpty!44763))

(assert (not b!6557979))

(assert (not b!6557952))

(assert (not b!6557948))

(assert (not b!6557984))

(assert (not b!6557981))

(assert (not b!6557985))

(assert (not b!6557975))

(assert (not b!6557972))

(assert (not b!6557954))

(assert (not b!6557978))

(assert (not b!6557944))

(assert (not b!6557964))

(assert (not b!6557947))

(assert (not b!6557957))

(assert (not b!6557967))

(assert (not b!6557942))

(assert tp_is_empty!42121)

(assert (not b!6557946))

(assert (not b!6557958))

(assert (not b!6557966))

(assert (not b!6557976))

(assert (not b!6557987))

(assert (not b!6557951))

(assert (not b!6557960))

(assert (not b!6557956))

(assert (not b!6557983))

(assert (not b!6557971))

(assert (not b!6557949))

(assert (not b!6557974))

(assert (not b!6557980))

(assert (not b!6557969))

(assert (not b!6557986))

(assert (not b!6557962))

(assert (not start!642672))

(assert (not b!6557945))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1673804 () Bool)

(declare-fun d!2057713 () Bool)

(assert (= bs!1673804 (and d!2057713 b!6557958)))

(declare-fun lambda!364680 () Int)

(assert (=> bs!1673804 (= lambda!364680 lambda!364636)))

(declare-fun b!6558197 () Bool)

(declare-fun e!3970239 () Bool)

(assert (=> b!6558197 (= e!3970239 (isEmpty!37716 (t!379244 (exprs!6318 (h!71927 zl!343)))))))

(declare-fun e!3970240 () Bool)

(assert (=> d!2057713 e!3970240))

(declare-fun res!2691017 () Bool)

(assert (=> d!2057713 (=> (not res!2691017) (not e!3970240))))

(declare-fun lt!2405223 () Regex!16434)

(assert (=> d!2057713 (= res!2691017 (validRegex!8170 lt!2405223))))

(declare-fun e!3970237 () Regex!16434)

(assert (=> d!2057713 (= lt!2405223 e!3970237)))

(declare-fun c!1204933 () Bool)

(assert (=> d!2057713 (= c!1204933 e!3970239)))

(declare-fun res!2691016 () Bool)

(assert (=> d!2057713 (=> (not res!2691016) (not e!3970239))))

(assert (=> d!2057713 (= res!2691016 (is-Cons!65478 (exprs!6318 (h!71927 zl!343))))))

(declare-fun forall!15606 (List!65602 Int) Bool)

(assert (=> d!2057713 (forall!15606 (exprs!6318 (h!71927 zl!343)) lambda!364680)))

(assert (=> d!2057713 (= (generalisedConcat!2031 (exprs!6318 (h!71927 zl!343))) lt!2405223)))

(declare-fun b!6558198 () Bool)

(declare-fun e!3970236 () Bool)

(declare-fun isEmptyExpr!1812 (Regex!16434) Bool)

(assert (=> b!6558198 (= e!3970236 (isEmptyExpr!1812 lt!2405223))))

(declare-fun b!6558199 () Bool)

(declare-fun e!3970238 () Bool)

(assert (=> b!6558199 (= e!3970236 e!3970238)))

(declare-fun c!1204935 () Bool)

(declare-fun tail!12404 (List!65602) List!65602)

(assert (=> b!6558199 (= c!1204935 (isEmpty!37716 (tail!12404 (exprs!6318 (h!71927 zl!343)))))))

(declare-fun b!6558200 () Bool)

(assert (=> b!6558200 (= e!3970240 e!3970236)))

(declare-fun c!1204936 () Bool)

(assert (=> b!6558200 (= c!1204936 (isEmpty!37716 (exprs!6318 (h!71927 zl!343))))))

(declare-fun b!6558201 () Bool)

(assert (=> b!6558201 (= e!3970237 (h!71926 (exprs!6318 (h!71927 zl!343))))))

(declare-fun b!6558202 () Bool)

(declare-fun isConcat!1335 (Regex!16434) Bool)

(assert (=> b!6558202 (= e!3970238 (isConcat!1335 lt!2405223))))

(declare-fun b!6558203 () Bool)

(declare-fun e!3970235 () Regex!16434)

(assert (=> b!6558203 (= e!3970235 (Concat!25279 (h!71926 (exprs!6318 (h!71927 zl!343))) (generalisedConcat!2031 (t!379244 (exprs!6318 (h!71927 zl!343))))))))

(declare-fun b!6558204 () Bool)

(assert (=> b!6558204 (= e!3970237 e!3970235)))

(declare-fun c!1204934 () Bool)

(assert (=> b!6558204 (= c!1204934 (is-Cons!65478 (exprs!6318 (h!71927 zl!343))))))

(declare-fun b!6558205 () Bool)

(declare-fun head!13319 (List!65602) Regex!16434)

(assert (=> b!6558205 (= e!3970238 (= lt!2405223 (head!13319 (exprs!6318 (h!71927 zl!343)))))))

(declare-fun b!6558206 () Bool)

(assert (=> b!6558206 (= e!3970235 EmptyExpr!16434)))

(assert (= (and d!2057713 res!2691016) b!6558197))

(assert (= (and d!2057713 c!1204933) b!6558201))

(assert (= (and d!2057713 (not c!1204933)) b!6558204))

(assert (= (and b!6558204 c!1204934) b!6558203))

(assert (= (and b!6558204 (not c!1204934)) b!6558206))

(assert (= (and d!2057713 res!2691017) b!6558200))

(assert (= (and b!6558200 c!1204936) b!6558198))

(assert (= (and b!6558200 (not c!1204936)) b!6558199))

(assert (= (and b!6558199 c!1204935) b!6558205))

(assert (= (and b!6558199 (not c!1204935)) b!6558202))

(declare-fun m!7340336 () Bool)

(assert (=> b!6558199 m!7340336))

(assert (=> b!6558199 m!7340336))

(declare-fun m!7340338 () Bool)

(assert (=> b!6558199 m!7340338))

(declare-fun m!7340340 () Bool)

(assert (=> d!2057713 m!7340340))

(declare-fun m!7340342 () Bool)

(assert (=> d!2057713 m!7340342))

(declare-fun m!7340344 () Bool)

(assert (=> b!6558200 m!7340344))

(declare-fun m!7340346 () Bool)

(assert (=> b!6558205 m!7340346))

(assert (=> b!6558197 m!7340144))

(declare-fun m!7340348 () Bool)

(assert (=> b!6558203 m!7340348))

(declare-fun m!7340350 () Bool)

(assert (=> b!6558198 m!7340350))

(declare-fun m!7340352 () Bool)

(assert (=> b!6558202 m!7340352))

(assert (=> b!6557962 d!2057713))

(declare-fun d!2057715 () Bool)

(assert (=> d!2057715 (isDefined!13028 (findConcatSeparationZippers!199 lt!2405013 (set.insert lt!2405031 (as set.empty (Set Context!11636))) Nil!65477 s!2326 s!2326))))

(declare-fun lt!2405226 () Unit!159071)

(declare-fun choose!48887 ((Set Context!11636) Context!11636 List!65601) Unit!159071)

(assert (=> d!2057715 (= lt!2405226 (choose!48887 lt!2405013 lt!2405031 s!2326))))

(assert (=> d!2057715 (matchZipper!2446 (appendTo!195 lt!2405013 lt!2405031) s!2326)))

(assert (=> d!2057715 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!199 lt!2405013 lt!2405031 s!2326) lt!2405226)))

(declare-fun bs!1673805 () Bool)

(assert (= bs!1673805 d!2057715))

(declare-fun m!7340354 () Bool)

(assert (=> bs!1673805 m!7340354))

(declare-fun m!7340356 () Bool)

(assert (=> bs!1673805 m!7340356))

(declare-fun m!7340358 () Bool)

(assert (=> bs!1673805 m!7340358))

(assert (=> bs!1673805 m!7340046))

(assert (=> bs!1673805 m!7340062))

(assert (=> bs!1673805 m!7340354))

(assert (=> bs!1673805 m!7340046))

(declare-fun m!7340360 () Bool)

(assert (=> bs!1673805 m!7340360))

(assert (=> bs!1673805 m!7340062))

(assert (=> b!6557981 d!2057715))

(declare-fun d!2057717 () Bool)

(assert (=> d!2057717 (= (get!22733 lt!2405007) (v!52509 lt!2405007))))

(assert (=> b!6557981 d!2057717))

(declare-fun b!6558225 () Bool)

(declare-fun e!3970255 () Option!16325)

(declare-fun e!3970252 () Option!16325)

(assert (=> b!6558225 (= e!3970255 e!3970252)))

(declare-fun c!1204942 () Bool)

(assert (=> b!6558225 (= c!1204942 (is-Nil!65477 s!2326))))

(declare-fun b!6558226 () Bool)

(assert (=> b!6558226 (= e!3970252 None!16324)))

(declare-fun d!2057719 () Bool)

(declare-fun e!3970251 () Bool)

(assert (=> d!2057719 e!3970251))

(declare-fun res!2691029 () Bool)

(assert (=> d!2057719 (=> res!2691029 e!3970251)))

(declare-fun e!3970253 () Bool)

(assert (=> d!2057719 (= res!2691029 e!3970253)))

(declare-fun res!2691030 () Bool)

(assert (=> d!2057719 (=> (not res!2691030) (not e!3970253))))

(declare-fun lt!2405233 () Option!16325)

(assert (=> d!2057719 (= res!2691030 (isDefined!13028 lt!2405233))))

(assert (=> d!2057719 (= lt!2405233 e!3970255)))

(declare-fun c!1204941 () Bool)

(declare-fun e!3970254 () Bool)

(assert (=> d!2057719 (= c!1204941 e!3970254)))

(declare-fun res!2691028 () Bool)

(assert (=> d!2057719 (=> (not res!2691028) (not e!3970254))))

(assert (=> d!2057719 (= res!2691028 (matchZipper!2446 lt!2405013 Nil!65477))))

(assert (=> d!2057719 (= (++!14571 Nil!65477 s!2326) s!2326)))

(assert (=> d!2057719 (= (findConcatSeparationZippers!199 lt!2405013 lt!2404987 Nil!65477 s!2326 s!2326) lt!2405233)))

(declare-fun b!6558227 () Bool)

(assert (=> b!6558227 (= e!3970251 (not (isDefined!13028 lt!2405233)))))

(declare-fun b!6558228 () Bool)

(declare-fun lt!2405234 () Unit!159071)

(declare-fun lt!2405235 () Unit!159071)

(assert (=> b!6558228 (= lt!2405234 lt!2405235)))

(assert (=> b!6558228 (= (++!14571 (++!14571 Nil!65477 (Cons!65477 (h!71925 s!2326) Nil!65477)) (t!379243 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2577 (List!65601 C!33138 List!65601 List!65601) Unit!159071)

(assert (=> b!6558228 (= lt!2405235 (lemmaMoveElementToOtherListKeepsConcatEq!2577 Nil!65477 (h!71925 s!2326) (t!379243 s!2326) s!2326))))

(assert (=> b!6558228 (= e!3970252 (findConcatSeparationZippers!199 lt!2405013 lt!2404987 (++!14571 Nil!65477 (Cons!65477 (h!71925 s!2326) Nil!65477)) (t!379243 s!2326) s!2326))))

(declare-fun b!6558229 () Bool)

(assert (=> b!6558229 (= e!3970255 (Some!16324 (tuple2!66827 Nil!65477 s!2326)))))

(declare-fun b!6558230 () Bool)

(assert (=> b!6558230 (= e!3970254 (matchZipper!2446 lt!2404987 s!2326))))

(declare-fun b!6558231 () Bool)

(declare-fun res!2691032 () Bool)

(assert (=> b!6558231 (=> (not res!2691032) (not e!3970253))))

(assert (=> b!6558231 (= res!2691032 (matchZipper!2446 lt!2405013 (_1!36716 (get!22733 lt!2405233))))))

(declare-fun b!6558232 () Bool)

(assert (=> b!6558232 (= e!3970253 (= (++!14571 (_1!36716 (get!22733 lt!2405233)) (_2!36716 (get!22733 lt!2405233))) s!2326))))

(declare-fun b!6558233 () Bool)

(declare-fun res!2691031 () Bool)

(assert (=> b!6558233 (=> (not res!2691031) (not e!3970253))))

(assert (=> b!6558233 (= res!2691031 (matchZipper!2446 lt!2404987 (_2!36716 (get!22733 lt!2405233))))))

(assert (= (and d!2057719 res!2691028) b!6558230))

(assert (= (and d!2057719 c!1204941) b!6558229))

(assert (= (and d!2057719 (not c!1204941)) b!6558225))

(assert (= (and b!6558225 c!1204942) b!6558226))

(assert (= (and b!6558225 (not c!1204942)) b!6558228))

(assert (= (and d!2057719 res!2691030) b!6558231))

(assert (= (and b!6558231 res!2691032) b!6558233))

(assert (= (and b!6558233 res!2691031) b!6558232))

(assert (= (and d!2057719 (not res!2691029)) b!6558227))

(declare-fun m!7340362 () Bool)

(assert (=> b!6558227 m!7340362))

(declare-fun m!7340364 () Bool)

(assert (=> b!6558232 m!7340364))

(declare-fun m!7340366 () Bool)

(assert (=> b!6558232 m!7340366))

(assert (=> b!6558231 m!7340364))

(declare-fun m!7340368 () Bool)

(assert (=> b!6558231 m!7340368))

(declare-fun m!7340370 () Bool)

(assert (=> b!6558228 m!7340370))

(assert (=> b!6558228 m!7340370))

(declare-fun m!7340372 () Bool)

(assert (=> b!6558228 m!7340372))

(declare-fun m!7340374 () Bool)

(assert (=> b!6558228 m!7340374))

(assert (=> b!6558228 m!7340370))

(declare-fun m!7340376 () Bool)

(assert (=> b!6558228 m!7340376))

(assert (=> b!6558233 m!7340364))

(declare-fun m!7340378 () Bool)

(assert (=> b!6558233 m!7340378))

(assert (=> d!2057719 m!7340362))

(declare-fun m!7340380 () Bool)

(assert (=> d!2057719 m!7340380))

(declare-fun m!7340382 () Bool)

(assert (=> d!2057719 m!7340382))

(declare-fun m!7340384 () Bool)

(assert (=> b!6558230 m!7340384))

(assert (=> b!6557981 d!2057719))

(declare-fun b!6558245 () Bool)

(declare-fun e!3970261 () Bool)

(declare-fun lt!2405238 () List!65601)

(assert (=> b!6558245 (= e!3970261 (or (not (= (_2!36716 lt!2405004) Nil!65477)) (= lt!2405238 (_1!36716 lt!2405004))))))

(declare-fun b!6558243 () Bool)

(declare-fun e!3970260 () List!65601)

(assert (=> b!6558243 (= e!3970260 (Cons!65477 (h!71925 (_1!36716 lt!2405004)) (++!14571 (t!379243 (_1!36716 lt!2405004)) (_2!36716 lt!2405004))))))

(declare-fun b!6558244 () Bool)

(declare-fun res!2691038 () Bool)

(assert (=> b!6558244 (=> (not res!2691038) (not e!3970261))))

(declare-fun size!40517 (List!65601) Int)

(assert (=> b!6558244 (= res!2691038 (= (size!40517 lt!2405238) (+ (size!40517 (_1!36716 lt!2405004)) (size!40517 (_2!36716 lt!2405004)))))))

(declare-fun d!2057721 () Bool)

(assert (=> d!2057721 e!3970261))

(declare-fun res!2691037 () Bool)

(assert (=> d!2057721 (=> (not res!2691037) (not e!3970261))))

(declare-fun content!12583 (List!65601) (Set C!33138))

(assert (=> d!2057721 (= res!2691037 (= (content!12583 lt!2405238) (set.union (content!12583 (_1!36716 lt!2405004)) (content!12583 (_2!36716 lt!2405004)))))))

(assert (=> d!2057721 (= lt!2405238 e!3970260)))

(declare-fun c!1204945 () Bool)

(assert (=> d!2057721 (= c!1204945 (is-Nil!65477 (_1!36716 lt!2405004)))))

(assert (=> d!2057721 (= (++!14571 (_1!36716 lt!2405004) (_2!36716 lt!2405004)) lt!2405238)))

(declare-fun b!6558242 () Bool)

(assert (=> b!6558242 (= e!3970260 (_2!36716 lt!2405004))))

(assert (= (and d!2057721 c!1204945) b!6558242))

(assert (= (and d!2057721 (not c!1204945)) b!6558243))

(assert (= (and d!2057721 res!2691037) b!6558244))

(assert (= (and b!6558244 res!2691038) b!6558245))

(declare-fun m!7340386 () Bool)

(assert (=> b!6558243 m!7340386))

(declare-fun m!7340388 () Bool)

(assert (=> b!6558244 m!7340388))

(declare-fun m!7340390 () Bool)

(assert (=> b!6558244 m!7340390))

(declare-fun m!7340392 () Bool)

(assert (=> b!6558244 m!7340392))

(declare-fun m!7340394 () Bool)

(assert (=> d!2057721 m!7340394))

(declare-fun m!7340396 () Bool)

(assert (=> d!2057721 m!7340396))

(declare-fun m!7340398 () Bool)

(assert (=> d!2057721 m!7340398))

(assert (=> b!6557981 d!2057721))

(declare-fun d!2057723 () Bool)

(declare-fun isEmpty!37719 (Option!16325) Bool)

(assert (=> d!2057723 (= (isDefined!13028 lt!2405007) (not (isEmpty!37719 lt!2405007)))))

(declare-fun bs!1673806 () Bool)

(assert (= bs!1673806 d!2057723))

(declare-fun m!7340400 () Bool)

(assert (=> bs!1673806 m!7340400))

(assert (=> b!6557981 d!2057723))

(declare-fun d!2057725 () Bool)

(declare-fun lt!2405241 () Regex!16434)

(assert (=> d!2057725 (validRegex!8170 lt!2405241)))

(assert (=> d!2057725 (= lt!2405241 (generalisedUnion!2278 (unfocusZipperList!1855 zl!343)))))

(assert (=> d!2057725 (= (unfocusZipper!2176 zl!343) lt!2405241)))

(declare-fun bs!1673807 () Bool)

(assert (= bs!1673807 d!2057725))

(declare-fun m!7340402 () Bool)

(assert (=> bs!1673807 m!7340402))

(assert (=> bs!1673807 m!7340008))

(assert (=> bs!1673807 m!7340008))

(assert (=> bs!1673807 m!7340010))

(assert (=> b!6557960 d!2057725))

(declare-fun d!2057727 () Bool)

(declare-fun nullableFct!2353 (Regex!16434) Bool)

(assert (=> d!2057727 (= (nullable!6427 (regOne!33380 (regOne!33380 r!7292))) (nullableFct!2353 (regOne!33380 (regOne!33380 r!7292))))))

(declare-fun bs!1673808 () Bool)

(assert (= bs!1673808 d!2057727))

(declare-fun m!7340404 () Bool)

(assert (=> bs!1673808 m!7340404))

(assert (=> b!6557980 d!2057727))

(declare-fun d!2057729 () Bool)

(declare-fun c!1204948 () Bool)

(declare-fun isEmpty!37720 (List!65601) Bool)

(assert (=> d!2057729 (= c!1204948 (isEmpty!37720 (t!379243 s!2326)))))

(declare-fun e!3970264 () Bool)

(assert (=> d!2057729 (= (matchZipper!2446 lt!2405009 (t!379243 s!2326)) e!3970264)))

(declare-fun b!6558250 () Bool)

(declare-fun nullableZipper!2179 ((Set Context!11636)) Bool)

(assert (=> b!6558250 (= e!3970264 (nullableZipper!2179 lt!2405009))))

(declare-fun b!6558251 () Bool)

(declare-fun head!13320 (List!65601) C!33138)

(declare-fun tail!12405 (List!65601) List!65601)

(assert (=> b!6558251 (= e!3970264 (matchZipper!2446 (derivationStepZipper!2400 lt!2405009 (head!13320 (t!379243 s!2326))) (tail!12405 (t!379243 s!2326))))))

(assert (= (and d!2057729 c!1204948) b!6558250))

(assert (= (and d!2057729 (not c!1204948)) b!6558251))

(declare-fun m!7340406 () Bool)

(assert (=> d!2057729 m!7340406))

(declare-fun m!7340408 () Bool)

(assert (=> b!6558250 m!7340408))

(declare-fun m!7340410 () Bool)

(assert (=> b!6558251 m!7340410))

(assert (=> b!6558251 m!7340410))

(declare-fun m!7340412 () Bool)

(assert (=> b!6558251 m!7340412))

(declare-fun m!7340414 () Bool)

(assert (=> b!6558251 m!7340414))

(assert (=> b!6558251 m!7340412))

(assert (=> b!6558251 m!7340414))

(declare-fun m!7340416 () Bool)

(assert (=> b!6558251 m!7340416))

(assert (=> b!6557985 d!2057729))

(declare-fun bm!570393 () Bool)

(declare-fun call!570400 () List!65602)

(declare-fun call!570399 () List!65602)

(assert (=> bm!570393 (= call!570400 call!570399)))

(declare-fun b!6558274 () Bool)

(declare-fun e!3970278 () (Set Context!11636))

(declare-fun call!570398 () (Set Context!11636))

(declare-fun call!570401 () (Set Context!11636))

(assert (=> b!6558274 (= e!3970278 (set.union call!570398 call!570401))))

(declare-fun b!6558275 () Bool)

(declare-fun e!3970279 () (Set Context!11636))

(assert (=> b!6558275 (= e!3970279 (set.insert lt!2405031 (as set.empty (Set Context!11636))))))

(declare-fun b!6558276 () Bool)

(declare-fun c!1204960 () Bool)

(assert (=> b!6558276 (= c!1204960 (is-Star!16434 (reg!16763 (regOne!33380 r!7292))))))

(declare-fun e!3970281 () (Set Context!11636))

(declare-fun e!3970280 () (Set Context!11636))

(assert (=> b!6558276 (= e!3970281 e!3970280)))

(declare-fun b!6558277 () Bool)

(assert (=> b!6558277 (= e!3970278 e!3970281)))

(declare-fun c!1204963 () Bool)

(assert (=> b!6558277 (= c!1204963 (is-Concat!25279 (reg!16763 (regOne!33380 r!7292))))))

(declare-fun b!6558278 () Bool)

(declare-fun e!3970282 () (Set Context!11636))

(assert (=> b!6558278 (= e!3970279 e!3970282)))

(declare-fun c!1204961 () Bool)

(assert (=> b!6558278 (= c!1204961 (is-Union!16434 (reg!16763 (regOne!33380 r!7292))))))

(declare-fun call!570403 () (Set Context!11636))

(declare-fun bm!570394 () Bool)

(declare-fun c!1204959 () Bool)

(assert (=> bm!570394 (= call!570403 (derivationStepZipperDown!1682 (ite c!1204961 (regTwo!33381 (reg!16763 (regOne!33380 r!7292))) (ite c!1204959 (regTwo!33380 (reg!16763 (regOne!33380 r!7292))) (ite c!1204963 (regOne!33380 (reg!16763 (regOne!33380 r!7292))) (reg!16763 (reg!16763 (regOne!33380 r!7292)))))) (ite (or c!1204961 c!1204959) lt!2405031 (Context!11637 call!570400)) (h!71925 s!2326)))))

(declare-fun bm!570395 () Bool)

(declare-fun call!570402 () (Set Context!11636))

(assert (=> bm!570395 (= call!570402 call!570401)))

(declare-fun b!6558279 () Bool)

(declare-fun e!3970277 () Bool)

(assert (=> b!6558279 (= e!3970277 (nullable!6427 (regOne!33380 (reg!16763 (regOne!33380 r!7292)))))))

(declare-fun b!6558280 () Bool)

(assert (=> b!6558280 (= e!3970281 call!570402)))

(declare-fun bm!570396 () Bool)

(declare-fun $colon$colon!2275 (List!65602 Regex!16434) List!65602)

(assert (=> bm!570396 (= call!570399 ($colon$colon!2275 (exprs!6318 lt!2405031) (ite (or c!1204959 c!1204963) (regTwo!33380 (reg!16763 (regOne!33380 r!7292))) (reg!16763 (regOne!33380 r!7292)))))))

(declare-fun d!2057731 () Bool)

(declare-fun c!1204962 () Bool)

(assert (=> d!2057731 (= c!1204962 (and (is-ElementMatch!16434 (reg!16763 (regOne!33380 r!7292))) (= (c!1204909 (reg!16763 (regOne!33380 r!7292))) (h!71925 s!2326))))))

(assert (=> d!2057731 (= (derivationStepZipperDown!1682 (reg!16763 (regOne!33380 r!7292)) lt!2405031 (h!71925 s!2326)) e!3970279)))

(declare-fun b!6558281 () Bool)

(assert (=> b!6558281 (= e!3970282 (set.union call!570398 call!570403))))

(declare-fun b!6558282 () Bool)

(assert (=> b!6558282 (= e!3970280 call!570402)))

(declare-fun b!6558283 () Bool)

(assert (=> b!6558283 (= c!1204959 e!3970277)))

(declare-fun res!2691041 () Bool)

(assert (=> b!6558283 (=> (not res!2691041) (not e!3970277))))

(assert (=> b!6558283 (= res!2691041 (is-Concat!25279 (reg!16763 (regOne!33380 r!7292))))))

(assert (=> b!6558283 (= e!3970282 e!3970278)))

(declare-fun b!6558284 () Bool)

(assert (=> b!6558284 (= e!3970280 (as set.empty (Set Context!11636)))))

(declare-fun bm!570397 () Bool)

(assert (=> bm!570397 (= call!570398 (derivationStepZipperDown!1682 (ite c!1204961 (regOne!33381 (reg!16763 (regOne!33380 r!7292))) (regOne!33380 (reg!16763 (regOne!33380 r!7292)))) (ite c!1204961 lt!2405031 (Context!11637 call!570399)) (h!71925 s!2326)))))

(declare-fun bm!570398 () Bool)

(assert (=> bm!570398 (= call!570401 call!570403)))

(assert (= (and d!2057731 c!1204962) b!6558275))

(assert (= (and d!2057731 (not c!1204962)) b!6558278))

(assert (= (and b!6558278 c!1204961) b!6558281))

(assert (= (and b!6558278 (not c!1204961)) b!6558283))

(assert (= (and b!6558283 res!2691041) b!6558279))

(assert (= (and b!6558283 c!1204959) b!6558274))

(assert (= (and b!6558283 (not c!1204959)) b!6558277))

(assert (= (and b!6558277 c!1204963) b!6558280))

(assert (= (and b!6558277 (not c!1204963)) b!6558276))

(assert (= (and b!6558276 c!1204960) b!6558282))

(assert (= (and b!6558276 (not c!1204960)) b!6558284))

(assert (= (or b!6558280 b!6558282) bm!570393))

(assert (= (or b!6558280 b!6558282) bm!570395))

(assert (= (or b!6558274 bm!570393) bm!570396))

(assert (= (or b!6558274 bm!570395) bm!570398))

(assert (= (or b!6558281 bm!570398) bm!570394))

(assert (= (or b!6558281 b!6558274) bm!570397))

(assert (=> b!6558275 m!7340062))

(declare-fun m!7340418 () Bool)

(assert (=> bm!570394 m!7340418))

(declare-fun m!7340420 () Bool)

(assert (=> bm!570396 m!7340420))

(declare-fun m!7340422 () Bool)

(assert (=> b!6558279 m!7340422))

(declare-fun m!7340424 () Bool)

(assert (=> bm!570397 m!7340424))

(assert (=> b!6557944 d!2057731))

(declare-fun d!2057733 () Bool)

(declare-fun e!3970285 () Bool)

(assert (=> d!2057733 (= (matchZipper!2446 (set.union lt!2405021 lt!2405009) (t!379243 s!2326)) e!3970285)))

(declare-fun res!2691044 () Bool)

(assert (=> d!2057733 (=> res!2691044 e!3970285)))

(assert (=> d!2057733 (= res!2691044 (matchZipper!2446 lt!2405021 (t!379243 s!2326)))))

(declare-fun lt!2405244 () Unit!159071)

(declare-fun choose!48888 ((Set Context!11636) (Set Context!11636) List!65601) Unit!159071)

(assert (=> d!2057733 (= lt!2405244 (choose!48888 lt!2405021 lt!2405009 (t!379243 s!2326)))))

(assert (=> d!2057733 (= (lemmaZipperConcatMatchesSameAsBothZippers!1265 lt!2405021 lt!2405009 (t!379243 s!2326)) lt!2405244)))

(declare-fun b!6558287 () Bool)

(assert (=> b!6558287 (= e!3970285 (matchZipper!2446 lt!2405009 (t!379243 s!2326)))))

(assert (= (and d!2057733 (not res!2691044)) b!6558287))

(assert (=> d!2057733 m!7340142))

(assert (=> d!2057733 m!7340122))

(declare-fun m!7340426 () Bool)

(assert (=> d!2057733 m!7340426))

(assert (=> b!6558287 m!7340028))

(assert (=> b!6557964 d!2057733))

(declare-fun d!2057735 () Bool)

(declare-fun c!1204964 () Bool)

(assert (=> d!2057735 (= c!1204964 (isEmpty!37720 (t!379243 s!2326)))))

(declare-fun e!3970286 () Bool)

(assert (=> d!2057735 (= (matchZipper!2446 lt!2405021 (t!379243 s!2326)) e!3970286)))

(declare-fun b!6558288 () Bool)

(assert (=> b!6558288 (= e!3970286 (nullableZipper!2179 lt!2405021))))

(declare-fun b!6558289 () Bool)

(assert (=> b!6558289 (= e!3970286 (matchZipper!2446 (derivationStepZipper!2400 lt!2405021 (head!13320 (t!379243 s!2326))) (tail!12405 (t!379243 s!2326))))))

(assert (= (and d!2057735 c!1204964) b!6558288))

(assert (= (and d!2057735 (not c!1204964)) b!6558289))

(assert (=> d!2057735 m!7340406))

(declare-fun m!7340428 () Bool)

(assert (=> b!6558288 m!7340428))

(assert (=> b!6558289 m!7340410))

(assert (=> b!6558289 m!7340410))

(declare-fun m!7340430 () Bool)

(assert (=> b!6558289 m!7340430))

(assert (=> b!6558289 m!7340414))

(assert (=> b!6558289 m!7340430))

(assert (=> b!6558289 m!7340414))

(declare-fun m!7340432 () Bool)

(assert (=> b!6558289 m!7340432))

(assert (=> b!6557964 d!2057735))

(declare-fun d!2057737 () Bool)

(declare-fun c!1204965 () Bool)

(assert (=> d!2057737 (= c!1204965 (isEmpty!37720 (t!379243 s!2326)))))

(declare-fun e!3970287 () Bool)

(assert (=> d!2057737 (= (matchZipper!2446 (set.union lt!2405021 lt!2405009) (t!379243 s!2326)) e!3970287)))

(declare-fun b!6558290 () Bool)

(assert (=> b!6558290 (= e!3970287 (nullableZipper!2179 (set.union lt!2405021 lt!2405009)))))

(declare-fun b!6558291 () Bool)

(assert (=> b!6558291 (= e!3970287 (matchZipper!2446 (derivationStepZipper!2400 (set.union lt!2405021 lt!2405009) (head!13320 (t!379243 s!2326))) (tail!12405 (t!379243 s!2326))))))

(assert (= (and d!2057737 c!1204965) b!6558290))

(assert (= (and d!2057737 (not c!1204965)) b!6558291))

(assert (=> d!2057737 m!7340406))

(declare-fun m!7340434 () Bool)

(assert (=> b!6558290 m!7340434))

(assert (=> b!6558291 m!7340410))

(assert (=> b!6558291 m!7340410))

(declare-fun m!7340436 () Bool)

(assert (=> b!6558291 m!7340436))

(assert (=> b!6558291 m!7340414))

(assert (=> b!6558291 m!7340436))

(assert (=> b!6558291 m!7340414))

(declare-fun m!7340438 () Bool)

(assert (=> b!6558291 m!7340438))

(assert (=> b!6557964 d!2057737))

(declare-fun d!2057739 () Bool)

(declare-fun c!1204966 () Bool)

(assert (=> d!2057739 (= c!1204966 (isEmpty!37720 (_1!36716 lt!2405004)))))

(declare-fun e!3970288 () Bool)

(assert (=> d!2057739 (= (matchZipper!2446 lt!2405013 (_1!36716 lt!2405004)) e!3970288)))

(declare-fun b!6558292 () Bool)

(assert (=> b!6558292 (= e!3970288 (nullableZipper!2179 lt!2405013))))

(declare-fun b!6558293 () Bool)

(assert (=> b!6558293 (= e!3970288 (matchZipper!2446 (derivationStepZipper!2400 lt!2405013 (head!13320 (_1!36716 lt!2405004))) (tail!12405 (_1!36716 lt!2405004))))))

(assert (= (and d!2057739 c!1204966) b!6558292))

(assert (= (and d!2057739 (not c!1204966)) b!6558293))

(declare-fun m!7340440 () Bool)

(assert (=> d!2057739 m!7340440))

(declare-fun m!7340442 () Bool)

(assert (=> b!6558292 m!7340442))

(declare-fun m!7340444 () Bool)

(assert (=> b!6558293 m!7340444))

(assert (=> b!6558293 m!7340444))

(declare-fun m!7340446 () Bool)

(assert (=> b!6558293 m!7340446))

(declare-fun m!7340448 () Bool)

(assert (=> b!6558293 m!7340448))

(assert (=> b!6558293 m!7340446))

(assert (=> b!6558293 m!7340448))

(declare-fun m!7340450 () Bool)

(assert (=> b!6558293 m!7340450))

(assert (=> b!6557984 d!2057739))

(declare-fun d!2057741 () Bool)

(declare-fun dynLambda!26040 (Int Context!11636) (Set Context!11636))

(assert (=> d!2057741 (= (flatMap!1939 z!1189 lambda!364634) (dynLambda!26040 lambda!364634 (h!71927 zl!343)))))

(declare-fun lt!2405247 () Unit!159071)

(declare-fun choose!48889 ((Set Context!11636) Context!11636 Int) Unit!159071)

(assert (=> d!2057741 (= lt!2405247 (choose!48889 z!1189 (h!71927 zl!343) lambda!364634))))

(assert (=> d!2057741 (= z!1189 (set.insert (h!71927 zl!343) (as set.empty (Set Context!11636))))))

(assert (=> d!2057741 (= (lemmaFlatMapOnSingletonSet!1465 z!1189 (h!71927 zl!343) lambda!364634) lt!2405247)))

(declare-fun b_lambda!248121 () Bool)

(assert (=> (not b_lambda!248121) (not d!2057741)))

(declare-fun bs!1673809 () Bool)

(assert (= bs!1673809 d!2057741))

(assert (=> bs!1673809 m!7340024))

(declare-fun m!7340452 () Bool)

(assert (=> bs!1673809 m!7340452))

(declare-fun m!7340454 () Bool)

(assert (=> bs!1673809 m!7340454))

(declare-fun m!7340456 () Bool)

(assert (=> bs!1673809 m!7340456))

(assert (=> b!6557983 d!2057741))

(declare-fun d!2057743 () Bool)

(assert (=> d!2057743 (= (nullable!6427 (h!71926 (exprs!6318 (h!71927 zl!343)))) (nullableFct!2353 (h!71926 (exprs!6318 (h!71927 zl!343)))))))

(declare-fun bs!1673810 () Bool)

(assert (= bs!1673810 d!2057743))

(declare-fun m!7340458 () Bool)

(assert (=> bs!1673810 m!7340458))

(assert (=> b!6557983 d!2057743))

(declare-fun b!6558304 () Bool)

(declare-fun e!3970297 () (Set Context!11636))

(declare-fun call!570406 () (Set Context!11636))

(assert (=> b!6558304 (= e!3970297 call!570406)))

(declare-fun d!2057745 () Bool)

(declare-fun c!1204971 () Bool)

(declare-fun e!3970295 () Bool)

(assert (=> d!2057745 (= c!1204971 e!3970295)))

(declare-fun res!2691047 () Bool)

(assert (=> d!2057745 (=> (not res!2691047) (not e!3970295))))

(assert (=> d!2057745 (= res!2691047 (is-Cons!65478 (exprs!6318 (Context!11637 (Cons!65478 (h!71926 (exprs!6318 (h!71927 zl!343))) (t!379244 (exprs!6318 (h!71927 zl!343))))))))))

(declare-fun e!3970296 () (Set Context!11636))

(assert (=> d!2057745 (= (derivationStepZipperUp!1608 (Context!11637 (Cons!65478 (h!71926 (exprs!6318 (h!71927 zl!343))) (t!379244 (exprs!6318 (h!71927 zl!343))))) (h!71925 s!2326)) e!3970296)))

(declare-fun b!6558305 () Bool)

(assert (=> b!6558305 (= e!3970295 (nullable!6427 (h!71926 (exprs!6318 (Context!11637 (Cons!65478 (h!71926 (exprs!6318 (h!71927 zl!343))) (t!379244 (exprs!6318 (h!71927 zl!343)))))))))))

(declare-fun b!6558306 () Bool)

(assert (=> b!6558306 (= e!3970297 (as set.empty (Set Context!11636)))))

(declare-fun bm!570401 () Bool)

(assert (=> bm!570401 (= call!570406 (derivationStepZipperDown!1682 (h!71926 (exprs!6318 (Context!11637 (Cons!65478 (h!71926 (exprs!6318 (h!71927 zl!343))) (t!379244 (exprs!6318 (h!71927 zl!343))))))) (Context!11637 (t!379244 (exprs!6318 (Context!11637 (Cons!65478 (h!71926 (exprs!6318 (h!71927 zl!343))) (t!379244 (exprs!6318 (h!71927 zl!343)))))))) (h!71925 s!2326)))))

(declare-fun b!6558307 () Bool)

(assert (=> b!6558307 (= e!3970296 (set.union call!570406 (derivationStepZipperUp!1608 (Context!11637 (t!379244 (exprs!6318 (Context!11637 (Cons!65478 (h!71926 (exprs!6318 (h!71927 zl!343))) (t!379244 (exprs!6318 (h!71927 zl!343)))))))) (h!71925 s!2326))))))

(declare-fun b!6558308 () Bool)

(assert (=> b!6558308 (= e!3970296 e!3970297)))

(declare-fun c!1204972 () Bool)

(assert (=> b!6558308 (= c!1204972 (is-Cons!65478 (exprs!6318 (Context!11637 (Cons!65478 (h!71926 (exprs!6318 (h!71927 zl!343))) (t!379244 (exprs!6318 (h!71927 zl!343))))))))))

(assert (= (and d!2057745 res!2691047) b!6558305))

(assert (= (and d!2057745 c!1204971) b!6558307))

(assert (= (and d!2057745 (not c!1204971)) b!6558308))

(assert (= (and b!6558308 c!1204972) b!6558304))

(assert (= (and b!6558308 (not c!1204972)) b!6558306))

(assert (= (or b!6558307 b!6558304) bm!570401))

(declare-fun m!7340460 () Bool)

(assert (=> b!6558305 m!7340460))

(declare-fun m!7340462 () Bool)

(assert (=> bm!570401 m!7340462))

(declare-fun m!7340464 () Bool)

(assert (=> b!6558307 m!7340464))

(assert (=> b!6557983 d!2057745))

(declare-fun d!2057747 () Bool)

(declare-fun choose!48890 ((Set Context!11636) Int) (Set Context!11636))

(assert (=> d!2057747 (= (flatMap!1939 z!1189 lambda!364634) (choose!48890 z!1189 lambda!364634))))

(declare-fun bs!1673811 () Bool)

(assert (= bs!1673811 d!2057747))

(declare-fun m!7340466 () Bool)

(assert (=> bs!1673811 m!7340466))

(assert (=> b!6557983 d!2057747))

(declare-fun bm!570402 () Bool)

(declare-fun call!570409 () List!65602)

(declare-fun call!570408 () List!65602)

(assert (=> bm!570402 (= call!570409 call!570408)))

(declare-fun b!6558309 () Bool)

(declare-fun e!3970299 () (Set Context!11636))

(declare-fun call!570407 () (Set Context!11636))

(declare-fun call!570410 () (Set Context!11636))

(assert (=> b!6558309 (= e!3970299 (set.union call!570407 call!570410))))

(declare-fun b!6558310 () Bool)

(declare-fun e!3970300 () (Set Context!11636))

(assert (=> b!6558310 (= e!3970300 (set.insert lt!2404998 (as set.empty (Set Context!11636))))))

(declare-fun b!6558311 () Bool)

(declare-fun c!1204974 () Bool)

(assert (=> b!6558311 (= c!1204974 (is-Star!16434 (h!71926 (exprs!6318 (h!71927 zl!343)))))))

(declare-fun e!3970302 () (Set Context!11636))

(declare-fun e!3970301 () (Set Context!11636))

(assert (=> b!6558311 (= e!3970302 e!3970301)))

(declare-fun b!6558312 () Bool)

(assert (=> b!6558312 (= e!3970299 e!3970302)))

(declare-fun c!1204977 () Bool)

(assert (=> b!6558312 (= c!1204977 (is-Concat!25279 (h!71926 (exprs!6318 (h!71927 zl!343)))))))

(declare-fun b!6558313 () Bool)

(declare-fun e!3970303 () (Set Context!11636))

(assert (=> b!6558313 (= e!3970300 e!3970303)))

(declare-fun c!1204975 () Bool)

(assert (=> b!6558313 (= c!1204975 (is-Union!16434 (h!71926 (exprs!6318 (h!71927 zl!343)))))))

(declare-fun bm!570403 () Bool)

(declare-fun call!570412 () (Set Context!11636))

(declare-fun c!1204973 () Bool)

(assert (=> bm!570403 (= call!570412 (derivationStepZipperDown!1682 (ite c!1204975 (regTwo!33381 (h!71926 (exprs!6318 (h!71927 zl!343)))) (ite c!1204973 (regTwo!33380 (h!71926 (exprs!6318 (h!71927 zl!343)))) (ite c!1204977 (regOne!33380 (h!71926 (exprs!6318 (h!71927 zl!343)))) (reg!16763 (h!71926 (exprs!6318 (h!71927 zl!343))))))) (ite (or c!1204975 c!1204973) lt!2404998 (Context!11637 call!570409)) (h!71925 s!2326)))))

(declare-fun bm!570404 () Bool)

(declare-fun call!570411 () (Set Context!11636))

(assert (=> bm!570404 (= call!570411 call!570410)))

(declare-fun b!6558314 () Bool)

(declare-fun e!3970298 () Bool)

(assert (=> b!6558314 (= e!3970298 (nullable!6427 (regOne!33380 (h!71926 (exprs!6318 (h!71927 zl!343))))))))

(declare-fun b!6558315 () Bool)

(assert (=> b!6558315 (= e!3970302 call!570411)))

(declare-fun bm!570405 () Bool)

(assert (=> bm!570405 (= call!570408 ($colon$colon!2275 (exprs!6318 lt!2404998) (ite (or c!1204973 c!1204977) (regTwo!33380 (h!71926 (exprs!6318 (h!71927 zl!343)))) (h!71926 (exprs!6318 (h!71927 zl!343))))))))

(declare-fun d!2057749 () Bool)

(declare-fun c!1204976 () Bool)

(assert (=> d!2057749 (= c!1204976 (and (is-ElementMatch!16434 (h!71926 (exprs!6318 (h!71927 zl!343)))) (= (c!1204909 (h!71926 (exprs!6318 (h!71927 zl!343)))) (h!71925 s!2326))))))

(assert (=> d!2057749 (= (derivationStepZipperDown!1682 (h!71926 (exprs!6318 (h!71927 zl!343))) lt!2404998 (h!71925 s!2326)) e!3970300)))

(declare-fun b!6558316 () Bool)

(assert (=> b!6558316 (= e!3970303 (set.union call!570407 call!570412))))

(declare-fun b!6558317 () Bool)

(assert (=> b!6558317 (= e!3970301 call!570411)))

(declare-fun b!6558318 () Bool)

(assert (=> b!6558318 (= c!1204973 e!3970298)))

(declare-fun res!2691048 () Bool)

(assert (=> b!6558318 (=> (not res!2691048) (not e!3970298))))

(assert (=> b!6558318 (= res!2691048 (is-Concat!25279 (h!71926 (exprs!6318 (h!71927 zl!343)))))))

(assert (=> b!6558318 (= e!3970303 e!3970299)))

(declare-fun b!6558319 () Bool)

(assert (=> b!6558319 (= e!3970301 (as set.empty (Set Context!11636)))))

(declare-fun bm!570406 () Bool)

(assert (=> bm!570406 (= call!570407 (derivationStepZipperDown!1682 (ite c!1204975 (regOne!33381 (h!71926 (exprs!6318 (h!71927 zl!343)))) (regOne!33380 (h!71926 (exprs!6318 (h!71927 zl!343))))) (ite c!1204975 lt!2404998 (Context!11637 call!570408)) (h!71925 s!2326)))))

(declare-fun bm!570407 () Bool)

(assert (=> bm!570407 (= call!570410 call!570412)))

(assert (= (and d!2057749 c!1204976) b!6558310))

(assert (= (and d!2057749 (not c!1204976)) b!6558313))

(assert (= (and b!6558313 c!1204975) b!6558316))

(assert (= (and b!6558313 (not c!1204975)) b!6558318))

(assert (= (and b!6558318 res!2691048) b!6558314))

(assert (= (and b!6558318 c!1204973) b!6558309))

(assert (= (and b!6558318 (not c!1204973)) b!6558312))

(assert (= (and b!6558312 c!1204977) b!6558315))

(assert (= (and b!6558312 (not c!1204977)) b!6558311))

(assert (= (and b!6558311 c!1204974) b!6558317))

(assert (= (and b!6558311 (not c!1204974)) b!6558319))

(assert (= (or b!6558315 b!6558317) bm!570402))

(assert (= (or b!6558315 b!6558317) bm!570404))

(assert (= (or b!6558309 bm!570402) bm!570405))

(assert (= (or b!6558309 bm!570404) bm!570407))

(assert (= (or b!6558316 bm!570407) bm!570403))

(assert (= (or b!6558316 b!6558309) bm!570406))

(declare-fun m!7340468 () Bool)

(assert (=> b!6558310 m!7340468))

(declare-fun m!7340470 () Bool)

(assert (=> bm!570403 m!7340470))

(declare-fun m!7340472 () Bool)

(assert (=> bm!570405 m!7340472))

(declare-fun m!7340474 () Bool)

(assert (=> b!6558314 m!7340474))

(declare-fun m!7340476 () Bool)

(assert (=> bm!570406 m!7340476))

(assert (=> b!6557983 d!2057749))

(declare-fun b!6558320 () Bool)

(declare-fun e!3970306 () (Set Context!11636))

(declare-fun call!570413 () (Set Context!11636))

(assert (=> b!6558320 (= e!3970306 call!570413)))

(declare-fun d!2057751 () Bool)

(declare-fun c!1204978 () Bool)

(declare-fun e!3970304 () Bool)

(assert (=> d!2057751 (= c!1204978 e!3970304)))

(declare-fun res!2691049 () Bool)

(assert (=> d!2057751 (=> (not res!2691049) (not e!3970304))))

(assert (=> d!2057751 (= res!2691049 (is-Cons!65478 (exprs!6318 (h!71927 zl!343))))))

(declare-fun e!3970305 () (Set Context!11636))

(assert (=> d!2057751 (= (derivationStepZipperUp!1608 (h!71927 zl!343) (h!71925 s!2326)) e!3970305)))

(declare-fun b!6558321 () Bool)

(assert (=> b!6558321 (= e!3970304 (nullable!6427 (h!71926 (exprs!6318 (h!71927 zl!343)))))))

(declare-fun b!6558322 () Bool)

(assert (=> b!6558322 (= e!3970306 (as set.empty (Set Context!11636)))))

(declare-fun bm!570408 () Bool)

(assert (=> bm!570408 (= call!570413 (derivationStepZipperDown!1682 (h!71926 (exprs!6318 (h!71927 zl!343))) (Context!11637 (t!379244 (exprs!6318 (h!71927 zl!343)))) (h!71925 s!2326)))))

(declare-fun b!6558323 () Bool)

(assert (=> b!6558323 (= e!3970305 (set.union call!570413 (derivationStepZipperUp!1608 (Context!11637 (t!379244 (exprs!6318 (h!71927 zl!343)))) (h!71925 s!2326))))))

(declare-fun b!6558324 () Bool)

(assert (=> b!6558324 (= e!3970305 e!3970306)))

(declare-fun c!1204979 () Bool)

(assert (=> b!6558324 (= c!1204979 (is-Cons!65478 (exprs!6318 (h!71927 zl!343))))))

(assert (= (and d!2057751 res!2691049) b!6558321))

(assert (= (and d!2057751 c!1204978) b!6558323))

(assert (= (and d!2057751 (not c!1204978)) b!6558324))

(assert (= (and b!6558324 c!1204979) b!6558320))

(assert (= (and b!6558324 (not c!1204979)) b!6558322))

(assert (= (or b!6558323 b!6558320) bm!570408))

(assert (=> b!6558321 m!7340020))

(declare-fun m!7340478 () Bool)

(assert (=> bm!570408 m!7340478))

(declare-fun m!7340480 () Bool)

(assert (=> b!6558323 m!7340480))

(assert (=> b!6557983 d!2057751))

(declare-fun b!6558325 () Bool)

(declare-fun e!3970309 () (Set Context!11636))

(declare-fun call!570414 () (Set Context!11636))

(assert (=> b!6558325 (= e!3970309 call!570414)))

(declare-fun d!2057753 () Bool)

(declare-fun c!1204980 () Bool)

(declare-fun e!3970307 () Bool)

(assert (=> d!2057753 (= c!1204980 e!3970307)))

(declare-fun res!2691050 () Bool)

(assert (=> d!2057753 (=> (not res!2691050) (not e!3970307))))

(assert (=> d!2057753 (= res!2691050 (is-Cons!65478 (exprs!6318 lt!2404998)))))

(declare-fun e!3970308 () (Set Context!11636))

(assert (=> d!2057753 (= (derivationStepZipperUp!1608 lt!2404998 (h!71925 s!2326)) e!3970308)))

(declare-fun b!6558326 () Bool)

(assert (=> b!6558326 (= e!3970307 (nullable!6427 (h!71926 (exprs!6318 lt!2404998))))))

(declare-fun b!6558327 () Bool)

(assert (=> b!6558327 (= e!3970309 (as set.empty (Set Context!11636)))))

(declare-fun bm!570409 () Bool)

(assert (=> bm!570409 (= call!570414 (derivationStepZipperDown!1682 (h!71926 (exprs!6318 lt!2404998)) (Context!11637 (t!379244 (exprs!6318 lt!2404998))) (h!71925 s!2326)))))

(declare-fun b!6558328 () Bool)

(assert (=> b!6558328 (= e!3970308 (set.union call!570414 (derivationStepZipperUp!1608 (Context!11637 (t!379244 (exprs!6318 lt!2404998))) (h!71925 s!2326))))))

(declare-fun b!6558329 () Bool)

(assert (=> b!6558329 (= e!3970308 e!3970309)))

(declare-fun c!1204981 () Bool)

(assert (=> b!6558329 (= c!1204981 (is-Cons!65478 (exprs!6318 lt!2404998)))))

(assert (= (and d!2057753 res!2691050) b!6558326))

(assert (= (and d!2057753 c!1204980) b!6558328))

(assert (= (and d!2057753 (not c!1204980)) b!6558329))

(assert (= (and b!6558329 c!1204981) b!6558325))

(assert (= (and b!6558329 (not c!1204981)) b!6558327))

(assert (= (or b!6558328 b!6558325) bm!570409))

(declare-fun m!7340482 () Bool)

(assert (=> b!6558326 m!7340482))

(declare-fun m!7340484 () Bool)

(assert (=> bm!570409 m!7340484))

(declare-fun m!7340486 () Bool)

(assert (=> b!6558328 m!7340486))

(assert (=> b!6557983 d!2057753))

(declare-fun bs!1673812 () Bool)

(declare-fun d!2057755 () Bool)

(assert (= bs!1673812 (and d!2057755 b!6557958)))

(declare-fun lambda!364683 () Int)

(assert (=> bs!1673812 (= lambda!364683 lambda!364636)))

(declare-fun bs!1673813 () Bool)

(assert (= bs!1673813 (and d!2057755 d!2057713)))

(assert (=> bs!1673813 (= lambda!364683 lambda!364680)))

(declare-fun b!6558350 () Bool)

(declare-fun e!3970327 () Regex!16434)

(assert (=> b!6558350 (= e!3970327 (Union!16434 (h!71926 (unfocusZipperList!1855 zl!343)) (generalisedUnion!2278 (t!379244 (unfocusZipperList!1855 zl!343)))))))

(declare-fun b!6558351 () Bool)

(declare-fun e!3970325 () Bool)

(declare-fun e!3970322 () Bool)

(assert (=> b!6558351 (= e!3970325 e!3970322)))

(declare-fun c!1204991 () Bool)

(assert (=> b!6558351 (= c!1204991 (isEmpty!37716 (unfocusZipperList!1855 zl!343)))))

(declare-fun b!6558352 () Bool)

(declare-fun e!3970326 () Bool)

(declare-fun lt!2405250 () Regex!16434)

(declare-fun isUnion!1251 (Regex!16434) Bool)

(assert (=> b!6558352 (= e!3970326 (isUnion!1251 lt!2405250))))

(assert (=> d!2057755 e!3970325))

(declare-fun res!2691055 () Bool)

(assert (=> d!2057755 (=> (not res!2691055) (not e!3970325))))

(assert (=> d!2057755 (= res!2691055 (validRegex!8170 lt!2405250))))

(declare-fun e!3970324 () Regex!16434)

(assert (=> d!2057755 (= lt!2405250 e!3970324)))

(declare-fun c!1204990 () Bool)

(declare-fun e!3970323 () Bool)

(assert (=> d!2057755 (= c!1204990 e!3970323)))

(declare-fun res!2691056 () Bool)

(assert (=> d!2057755 (=> (not res!2691056) (not e!3970323))))

(assert (=> d!2057755 (= res!2691056 (is-Cons!65478 (unfocusZipperList!1855 zl!343)))))

(assert (=> d!2057755 (forall!15606 (unfocusZipperList!1855 zl!343) lambda!364683)))

(assert (=> d!2057755 (= (generalisedUnion!2278 (unfocusZipperList!1855 zl!343)) lt!2405250)))

(declare-fun b!6558353 () Bool)

(assert (=> b!6558353 (= e!3970326 (= lt!2405250 (head!13319 (unfocusZipperList!1855 zl!343))))))

(declare-fun b!6558354 () Bool)

(assert (=> b!6558354 (= e!3970322 e!3970326)))

(declare-fun c!1204992 () Bool)

(assert (=> b!6558354 (= c!1204992 (isEmpty!37716 (tail!12404 (unfocusZipperList!1855 zl!343))))))

(declare-fun b!6558355 () Bool)

(assert (=> b!6558355 (= e!3970327 EmptyLang!16434)))

(declare-fun b!6558356 () Bool)

(declare-fun isEmptyLang!1821 (Regex!16434) Bool)

(assert (=> b!6558356 (= e!3970322 (isEmptyLang!1821 lt!2405250))))

(declare-fun b!6558357 () Bool)

(assert (=> b!6558357 (= e!3970324 (h!71926 (unfocusZipperList!1855 zl!343)))))

(declare-fun b!6558358 () Bool)

(assert (=> b!6558358 (= e!3970324 e!3970327)))

(declare-fun c!1204993 () Bool)

(assert (=> b!6558358 (= c!1204993 (is-Cons!65478 (unfocusZipperList!1855 zl!343)))))

(declare-fun b!6558359 () Bool)

(assert (=> b!6558359 (= e!3970323 (isEmpty!37716 (t!379244 (unfocusZipperList!1855 zl!343))))))

(assert (= (and d!2057755 res!2691056) b!6558359))

(assert (= (and d!2057755 c!1204990) b!6558357))

(assert (= (and d!2057755 (not c!1204990)) b!6558358))

(assert (= (and b!6558358 c!1204993) b!6558350))

(assert (= (and b!6558358 (not c!1204993)) b!6558355))

(assert (= (and d!2057755 res!2691055) b!6558351))

(assert (= (and b!6558351 c!1204991) b!6558356))

(assert (= (and b!6558351 (not c!1204991)) b!6558354))

(assert (= (and b!6558354 c!1204992) b!6558353))

(assert (= (and b!6558354 (not c!1204992)) b!6558352))

(declare-fun m!7340488 () Bool)

(assert (=> b!6558359 m!7340488))

(declare-fun m!7340490 () Bool)

(assert (=> b!6558352 m!7340490))

(assert (=> b!6558353 m!7340008))

(declare-fun m!7340492 () Bool)

(assert (=> b!6558353 m!7340492))

(assert (=> b!6558351 m!7340008))

(declare-fun m!7340494 () Bool)

(assert (=> b!6558351 m!7340494))

(declare-fun m!7340496 () Bool)

(assert (=> d!2057755 m!7340496))

(assert (=> d!2057755 m!7340008))

(declare-fun m!7340498 () Bool)

(assert (=> d!2057755 m!7340498))

(assert (=> b!6558354 m!7340008))

(declare-fun m!7340500 () Bool)

(assert (=> b!6558354 m!7340500))

(assert (=> b!6558354 m!7340500))

(declare-fun m!7340502 () Bool)

(assert (=> b!6558354 m!7340502))

(declare-fun m!7340504 () Bool)

(assert (=> b!6558350 m!7340504))

(declare-fun m!7340506 () Bool)

(assert (=> b!6558356 m!7340506))

(assert (=> b!6557942 d!2057755))

(declare-fun bs!1673814 () Bool)

(declare-fun d!2057757 () Bool)

(assert (= bs!1673814 (and d!2057757 b!6557958)))

(declare-fun lambda!364686 () Int)

(assert (=> bs!1673814 (= lambda!364686 lambda!364636)))

(declare-fun bs!1673815 () Bool)

(assert (= bs!1673815 (and d!2057757 d!2057713)))

(assert (=> bs!1673815 (= lambda!364686 lambda!364680)))

(declare-fun bs!1673816 () Bool)

(assert (= bs!1673816 (and d!2057757 d!2057755)))

(assert (=> bs!1673816 (= lambda!364686 lambda!364683)))

(declare-fun lt!2405253 () List!65602)

(assert (=> d!2057757 (forall!15606 lt!2405253 lambda!364686)))

(declare-fun e!3970330 () List!65602)

(assert (=> d!2057757 (= lt!2405253 e!3970330)))

(declare-fun c!1204996 () Bool)

(assert (=> d!2057757 (= c!1204996 (is-Cons!65479 zl!343))))

(assert (=> d!2057757 (= (unfocusZipperList!1855 zl!343) lt!2405253)))

(declare-fun b!6558364 () Bool)

(assert (=> b!6558364 (= e!3970330 (Cons!65478 (generalisedConcat!2031 (exprs!6318 (h!71927 zl!343))) (unfocusZipperList!1855 (t!379245 zl!343))))))

(declare-fun b!6558365 () Bool)

(assert (=> b!6558365 (= e!3970330 Nil!65478)))

(assert (= (and d!2057757 c!1204996) b!6558364))

(assert (= (and d!2057757 (not c!1204996)) b!6558365))

(declare-fun m!7340508 () Bool)

(assert (=> d!2057757 m!7340508))

(assert (=> b!6558364 m!7339958))

(declare-fun m!7340510 () Bool)

(assert (=> b!6558364 m!7340510))

(assert (=> b!6557942 d!2057757))

(declare-fun d!2057759 () Bool)

(declare-fun c!1204997 () Bool)

(assert (=> d!2057759 (= c!1204997 (isEmpty!37720 s!2326))))

(declare-fun e!3970331 () Bool)

(assert (=> d!2057759 (= (matchZipper!2446 z!1189 s!2326) e!3970331)))

(declare-fun b!6558366 () Bool)

(assert (=> b!6558366 (= e!3970331 (nullableZipper!2179 z!1189))))

(declare-fun b!6558367 () Bool)

(assert (=> b!6558367 (= e!3970331 (matchZipper!2446 (derivationStepZipper!2400 z!1189 (head!13320 s!2326)) (tail!12405 s!2326)))))

(assert (= (and d!2057759 c!1204997) b!6558366))

(assert (= (and d!2057759 (not c!1204997)) b!6558367))

(declare-fun m!7340512 () Bool)

(assert (=> d!2057759 m!7340512))

(declare-fun m!7340514 () Bool)

(assert (=> b!6558366 m!7340514))

(declare-fun m!7340516 () Bool)

(assert (=> b!6558367 m!7340516))

(assert (=> b!6558367 m!7340516))

(declare-fun m!7340518 () Bool)

(assert (=> b!6558367 m!7340518))

(declare-fun m!7340520 () Bool)

(assert (=> b!6558367 m!7340520))

(assert (=> b!6558367 m!7340518))

(assert (=> b!6558367 m!7340520))

(declare-fun m!7340522 () Bool)

(assert (=> b!6558367 m!7340522))

(assert (=> b!6557946 d!2057759))

(declare-fun d!2057761 () Bool)

(declare-fun lt!2405254 () Regex!16434)

(assert (=> d!2057761 (validRegex!8170 lt!2405254)))

(assert (=> d!2057761 (= lt!2405254 (generalisedUnion!2278 (unfocusZipperList!1855 (Cons!65479 lt!2405022 Nil!65479))))))

(assert (=> d!2057761 (= (unfocusZipper!2176 (Cons!65479 lt!2405022 Nil!65479)) lt!2405254)))

(declare-fun bs!1673817 () Bool)

(assert (= bs!1673817 d!2057761))

(declare-fun m!7340524 () Bool)

(assert (=> bs!1673817 m!7340524))

(declare-fun m!7340526 () Bool)

(assert (=> bs!1673817 m!7340526))

(assert (=> bs!1673817 m!7340526))

(declare-fun m!7340528 () Bool)

(assert (=> bs!1673817 m!7340528))

(assert (=> b!6557987 d!2057761))

(declare-fun bm!570416 () Bool)

(declare-fun call!570421 () Bool)

(declare-fun c!1205002 () Bool)

(assert (=> bm!570416 (= call!570421 (validRegex!8170 (ite c!1205002 (regOne!33381 r!7292) (regOne!33380 r!7292))))))

(declare-fun b!6558386 () Bool)

(declare-fun res!2691071 () Bool)

(declare-fun e!3970352 () Bool)

(assert (=> b!6558386 (=> res!2691071 e!3970352)))

(assert (=> b!6558386 (= res!2691071 (not (is-Concat!25279 r!7292)))))

(declare-fun e!3970349 () Bool)

(assert (=> b!6558386 (= e!3970349 e!3970352)))

(declare-fun b!6558387 () Bool)

(declare-fun e!3970350 () Bool)

(declare-fun call!570423 () Bool)

(assert (=> b!6558387 (= e!3970350 call!570423)))

(declare-fun bm!570417 () Bool)

(declare-fun call!570422 () Bool)

(assert (=> bm!570417 (= call!570422 call!570423)))

(declare-fun c!1205003 () Bool)

(declare-fun bm!570418 () Bool)

(assert (=> bm!570418 (= call!570423 (validRegex!8170 (ite c!1205003 (reg!16763 r!7292) (ite c!1205002 (regTwo!33381 r!7292) (regTwo!33380 r!7292)))))))

(declare-fun b!6558389 () Bool)

(declare-fun e!3970346 () Bool)

(assert (=> b!6558389 (= e!3970346 e!3970350)))

(declare-fun res!2691070 () Bool)

(assert (=> b!6558389 (= res!2691070 (not (nullable!6427 (reg!16763 r!7292))))))

(assert (=> b!6558389 (=> (not res!2691070) (not e!3970350))))

(declare-fun b!6558390 () Bool)

(declare-fun e!3970351 () Bool)

(assert (=> b!6558390 (= e!3970351 call!570422)))

(declare-fun b!6558391 () Bool)

(declare-fun e!3970347 () Bool)

(assert (=> b!6558391 (= e!3970347 e!3970346)))

(assert (=> b!6558391 (= c!1205003 (is-Star!16434 r!7292))))

(declare-fun b!6558392 () Bool)

(assert (=> b!6558392 (= e!3970352 e!3970351)))

(declare-fun res!2691069 () Bool)

(assert (=> b!6558392 (=> (not res!2691069) (not e!3970351))))

(assert (=> b!6558392 (= res!2691069 call!570421)))

(declare-fun d!2057763 () Bool)

(declare-fun res!2691072 () Bool)

(assert (=> d!2057763 (=> res!2691072 e!3970347)))

(assert (=> d!2057763 (= res!2691072 (is-ElementMatch!16434 r!7292))))

(assert (=> d!2057763 (= (validRegex!8170 r!7292) e!3970347)))

(declare-fun b!6558388 () Bool)

(declare-fun res!2691068 () Bool)

(declare-fun e!3970348 () Bool)

(assert (=> b!6558388 (=> (not res!2691068) (not e!3970348))))

(assert (=> b!6558388 (= res!2691068 call!570421)))

(assert (=> b!6558388 (= e!3970349 e!3970348)))

(declare-fun b!6558393 () Bool)

(assert (=> b!6558393 (= e!3970346 e!3970349)))

(assert (=> b!6558393 (= c!1205002 (is-Union!16434 r!7292))))

(declare-fun b!6558394 () Bool)

(assert (=> b!6558394 (= e!3970348 call!570422)))

(assert (= (and d!2057763 (not res!2691072)) b!6558391))

(assert (= (and b!6558391 c!1205003) b!6558389))

(assert (= (and b!6558391 (not c!1205003)) b!6558393))

(assert (= (and b!6558389 res!2691070) b!6558387))

(assert (= (and b!6558393 c!1205002) b!6558388))

(assert (= (and b!6558393 (not c!1205002)) b!6558386))

(assert (= (and b!6558388 res!2691068) b!6558394))

(assert (= (and b!6558386 (not res!2691071)) b!6558392))

(assert (= (and b!6558392 res!2691069) b!6558390))

(assert (= (or b!6558394 b!6558390) bm!570417))

(assert (= (or b!6558388 b!6558392) bm!570416))

(assert (= (or b!6558387 bm!570417) bm!570418))

(declare-fun m!7340530 () Bool)

(assert (=> bm!570416 m!7340530))

(declare-fun m!7340532 () Bool)

(assert (=> bm!570418 m!7340532))

(declare-fun m!7340534 () Bool)

(assert (=> b!6558389 m!7340534))

(assert (=> start!642672 d!2057763))

(declare-fun b!6558423 () Bool)

(declare-fun res!2691096 () Bool)

(declare-fun e!3970372 () Bool)

(assert (=> b!6558423 (=> res!2691096 e!3970372)))

(assert (=> b!6558423 (= res!2691096 (not (is-ElementMatch!16434 lt!2404982)))))

(declare-fun e!3970369 () Bool)

(assert (=> b!6558423 (= e!3970369 e!3970372)))

(declare-fun b!6558424 () Bool)

(declare-fun res!2691092 () Bool)

(assert (=> b!6558424 (=> res!2691092 e!3970372)))

(declare-fun e!3970373 () Bool)

(assert (=> b!6558424 (= res!2691092 e!3970373)))

(declare-fun res!2691094 () Bool)

(assert (=> b!6558424 (=> (not res!2691094) (not e!3970373))))

(declare-fun lt!2405257 () Bool)

(assert (=> b!6558424 (= res!2691094 lt!2405257)))

(declare-fun b!6558425 () Bool)

(declare-fun e!3970367 () Bool)

(declare-fun e!3970371 () Bool)

(assert (=> b!6558425 (= e!3970367 e!3970371)))

(declare-fun res!2691095 () Bool)

(assert (=> b!6558425 (=> res!2691095 e!3970371)))

(declare-fun call!570426 () Bool)

(assert (=> b!6558425 (= res!2691095 call!570426)))

(declare-fun b!6558426 () Bool)

(assert (=> b!6558426 (= e!3970371 (not (= (head!13320 (_1!36716 lt!2405023)) (c!1204909 lt!2404982))))))

(declare-fun b!6558427 () Bool)

(declare-fun e!3970368 () Bool)

(declare-fun derivativeStep!5118 (Regex!16434 C!33138) Regex!16434)

(assert (=> b!6558427 (= e!3970368 (matchR!8617 (derivativeStep!5118 lt!2404982 (head!13320 (_1!36716 lt!2405023))) (tail!12405 (_1!36716 lt!2405023))))))

(declare-fun b!6558428 () Bool)

(assert (=> b!6558428 (= e!3970372 e!3970367)))

(declare-fun res!2691090 () Bool)

(assert (=> b!6558428 (=> (not res!2691090) (not e!3970367))))

(assert (=> b!6558428 (= res!2691090 (not lt!2405257))))

(declare-fun b!6558429 () Bool)

(declare-fun e!3970370 () Bool)

(assert (=> b!6558429 (= e!3970370 e!3970369)))

(declare-fun c!1205012 () Bool)

(assert (=> b!6558429 (= c!1205012 (is-EmptyLang!16434 lt!2404982))))

(declare-fun b!6558431 () Bool)

(assert (=> b!6558431 (= e!3970369 (not lt!2405257))))

(declare-fun b!6558432 () Bool)

(assert (=> b!6558432 (= e!3970373 (= (head!13320 (_1!36716 lt!2405023)) (c!1204909 lt!2404982)))))

(declare-fun b!6558433 () Bool)

(assert (=> b!6558433 (= e!3970370 (= lt!2405257 call!570426))))

(declare-fun b!6558434 () Bool)

(declare-fun res!2691091 () Bool)

(assert (=> b!6558434 (=> (not res!2691091) (not e!3970373))))

(assert (=> b!6558434 (= res!2691091 (isEmpty!37720 (tail!12405 (_1!36716 lt!2405023))))))

(declare-fun b!6558435 () Bool)

(assert (=> b!6558435 (= e!3970368 (nullable!6427 lt!2404982))))

(declare-fun b!6558436 () Bool)

(declare-fun res!2691089 () Bool)

(assert (=> b!6558436 (=> (not res!2691089) (not e!3970373))))

(assert (=> b!6558436 (= res!2691089 (not call!570426))))

(declare-fun bm!570421 () Bool)

(assert (=> bm!570421 (= call!570426 (isEmpty!37720 (_1!36716 lt!2405023)))))

(declare-fun b!6558430 () Bool)

(declare-fun res!2691093 () Bool)

(assert (=> b!6558430 (=> res!2691093 e!3970371)))

(assert (=> b!6558430 (= res!2691093 (not (isEmpty!37720 (tail!12405 (_1!36716 lt!2405023)))))))

(declare-fun d!2057765 () Bool)

(assert (=> d!2057765 e!3970370))

(declare-fun c!1205010 () Bool)

(assert (=> d!2057765 (= c!1205010 (is-EmptyExpr!16434 lt!2404982))))

(assert (=> d!2057765 (= lt!2405257 e!3970368)))

(declare-fun c!1205011 () Bool)

(assert (=> d!2057765 (= c!1205011 (isEmpty!37720 (_1!36716 lt!2405023)))))

(assert (=> d!2057765 (validRegex!8170 lt!2404982)))

(assert (=> d!2057765 (= (matchR!8617 lt!2404982 (_1!36716 lt!2405023)) lt!2405257)))

(assert (= (and d!2057765 c!1205011) b!6558435))

(assert (= (and d!2057765 (not c!1205011)) b!6558427))

(assert (= (and d!2057765 c!1205010) b!6558433))

(assert (= (and d!2057765 (not c!1205010)) b!6558429))

(assert (= (and b!6558429 c!1205012) b!6558431))

(assert (= (and b!6558429 (not c!1205012)) b!6558423))

(assert (= (and b!6558423 (not res!2691096)) b!6558424))

(assert (= (and b!6558424 res!2691094) b!6558436))

(assert (= (and b!6558436 res!2691089) b!6558434))

(assert (= (and b!6558434 res!2691091) b!6558432))

(assert (= (and b!6558424 (not res!2691092)) b!6558428))

(assert (= (and b!6558428 res!2691090) b!6558425))

(assert (= (and b!6558425 (not res!2691095)) b!6558430))

(assert (= (and b!6558430 (not res!2691093)) b!6558426))

(assert (= (or b!6558433 b!6558425 b!6558436) bm!570421))

(declare-fun m!7340536 () Bool)

(assert (=> bm!570421 m!7340536))

(declare-fun m!7340538 () Bool)

(assert (=> b!6558434 m!7340538))

(assert (=> b!6558434 m!7340538))

(declare-fun m!7340540 () Bool)

(assert (=> b!6558434 m!7340540))

(declare-fun m!7340542 () Bool)

(assert (=> b!6558435 m!7340542))

(declare-fun m!7340544 () Bool)

(assert (=> b!6558427 m!7340544))

(assert (=> b!6558427 m!7340544))

(declare-fun m!7340546 () Bool)

(assert (=> b!6558427 m!7340546))

(assert (=> b!6558427 m!7340538))

(assert (=> b!6558427 m!7340546))

(assert (=> b!6558427 m!7340538))

(declare-fun m!7340548 () Bool)

(assert (=> b!6558427 m!7340548))

(assert (=> b!6558430 m!7340538))

(assert (=> b!6558430 m!7340538))

(assert (=> b!6558430 m!7340540))

(assert (=> b!6558432 m!7340544))

(assert (=> d!2057765 m!7340536))

(declare-fun m!7340550 () Bool)

(assert (=> d!2057765 m!7340550))

(assert (=> b!6558426 m!7340544))

(assert (=> b!6557965 d!2057765))

(declare-fun d!2057767 () Bool)

(assert (=> d!2057767 (= (isDefined!13028 lt!2404989) (not (isEmpty!37719 lt!2404989)))))

(declare-fun bs!1673818 () Bool)

(assert (= bs!1673818 d!2057767))

(declare-fun m!7340552 () Bool)

(assert (=> bs!1673818 m!7340552))

(assert (=> b!6557965 d!2057767))

(declare-fun d!2057769 () Bool)

(assert (=> d!2057769 (= (get!22733 lt!2404989) (v!52509 lt!2404989))))

(assert (=> b!6557965 d!2057769))

(declare-fun b!6558437 () Bool)

(declare-fun res!2691104 () Bool)

(declare-fun e!3970379 () Bool)

(assert (=> b!6558437 (=> res!2691104 e!3970379)))

(assert (=> b!6558437 (= res!2691104 (not (is-ElementMatch!16434 lt!2405019)))))

(declare-fun e!3970376 () Bool)

(assert (=> b!6558437 (= e!3970376 e!3970379)))

(declare-fun b!6558438 () Bool)

(declare-fun res!2691100 () Bool)

(assert (=> b!6558438 (=> res!2691100 e!3970379)))

(declare-fun e!3970380 () Bool)

(assert (=> b!6558438 (= res!2691100 e!3970380)))

(declare-fun res!2691102 () Bool)

(assert (=> b!6558438 (=> (not res!2691102) (not e!3970380))))

(declare-fun lt!2405258 () Bool)

(assert (=> b!6558438 (= res!2691102 lt!2405258)))

(declare-fun b!6558439 () Bool)

(declare-fun e!3970374 () Bool)

(declare-fun e!3970378 () Bool)

(assert (=> b!6558439 (= e!3970374 e!3970378)))

(declare-fun res!2691103 () Bool)

(assert (=> b!6558439 (=> res!2691103 e!3970378)))

(declare-fun call!570427 () Bool)

(assert (=> b!6558439 (= res!2691103 call!570427)))

(declare-fun b!6558440 () Bool)

(assert (=> b!6558440 (= e!3970378 (not (= (head!13320 lt!2405011) (c!1204909 lt!2405019))))))

(declare-fun b!6558441 () Bool)

(declare-fun e!3970375 () Bool)

(assert (=> b!6558441 (= e!3970375 (matchR!8617 (derivativeStep!5118 lt!2405019 (head!13320 lt!2405011)) (tail!12405 lt!2405011)))))

(declare-fun b!6558442 () Bool)

(assert (=> b!6558442 (= e!3970379 e!3970374)))

(declare-fun res!2691098 () Bool)

(assert (=> b!6558442 (=> (not res!2691098) (not e!3970374))))

(assert (=> b!6558442 (= res!2691098 (not lt!2405258))))

(declare-fun b!6558443 () Bool)

(declare-fun e!3970377 () Bool)

(assert (=> b!6558443 (= e!3970377 e!3970376)))

(declare-fun c!1205015 () Bool)

(assert (=> b!6558443 (= c!1205015 (is-EmptyLang!16434 lt!2405019))))

(declare-fun b!6558445 () Bool)

(assert (=> b!6558445 (= e!3970376 (not lt!2405258))))

(declare-fun b!6558446 () Bool)

(assert (=> b!6558446 (= e!3970380 (= (head!13320 lt!2405011) (c!1204909 lt!2405019)))))

(declare-fun b!6558447 () Bool)

(assert (=> b!6558447 (= e!3970377 (= lt!2405258 call!570427))))

(declare-fun b!6558448 () Bool)

(declare-fun res!2691099 () Bool)

(assert (=> b!6558448 (=> (not res!2691099) (not e!3970380))))

(assert (=> b!6558448 (= res!2691099 (isEmpty!37720 (tail!12405 lt!2405011)))))

(declare-fun b!6558449 () Bool)

(assert (=> b!6558449 (= e!3970375 (nullable!6427 lt!2405019))))

(declare-fun b!6558450 () Bool)

(declare-fun res!2691097 () Bool)

(assert (=> b!6558450 (=> (not res!2691097) (not e!3970380))))

(assert (=> b!6558450 (= res!2691097 (not call!570427))))

(declare-fun bm!570422 () Bool)

(assert (=> bm!570422 (= call!570427 (isEmpty!37720 lt!2405011))))

(declare-fun b!6558444 () Bool)

(declare-fun res!2691101 () Bool)

(assert (=> b!6558444 (=> res!2691101 e!3970378)))

(assert (=> b!6558444 (= res!2691101 (not (isEmpty!37720 (tail!12405 lt!2405011))))))

(declare-fun d!2057771 () Bool)

(assert (=> d!2057771 e!3970377))

(declare-fun c!1205013 () Bool)

(assert (=> d!2057771 (= c!1205013 (is-EmptyExpr!16434 lt!2405019))))

(assert (=> d!2057771 (= lt!2405258 e!3970375)))

(declare-fun c!1205014 () Bool)

(assert (=> d!2057771 (= c!1205014 (isEmpty!37720 lt!2405011))))

(assert (=> d!2057771 (validRegex!8170 lt!2405019)))

(assert (=> d!2057771 (= (matchR!8617 lt!2405019 lt!2405011) lt!2405258)))

(assert (= (and d!2057771 c!1205014) b!6558449))

(assert (= (and d!2057771 (not c!1205014)) b!6558441))

(assert (= (and d!2057771 c!1205013) b!6558447))

(assert (= (and d!2057771 (not c!1205013)) b!6558443))

(assert (= (and b!6558443 c!1205015) b!6558445))

(assert (= (and b!6558443 (not c!1205015)) b!6558437))

(assert (= (and b!6558437 (not res!2691104)) b!6558438))

(assert (= (and b!6558438 res!2691102) b!6558450))

(assert (= (and b!6558450 res!2691097) b!6558448))

(assert (= (and b!6558448 res!2691099) b!6558446))

(assert (= (and b!6558438 (not res!2691100)) b!6558442))

(assert (= (and b!6558442 res!2691098) b!6558439))

(assert (= (and b!6558439 (not res!2691103)) b!6558444))

(assert (= (and b!6558444 (not res!2691101)) b!6558440))

(assert (= (or b!6558447 b!6558439 b!6558450) bm!570422))

(declare-fun m!7340554 () Bool)

(assert (=> bm!570422 m!7340554))

(declare-fun m!7340556 () Bool)

(assert (=> b!6558448 m!7340556))

(assert (=> b!6558448 m!7340556))

(declare-fun m!7340558 () Bool)

(assert (=> b!6558448 m!7340558))

(declare-fun m!7340560 () Bool)

(assert (=> b!6558449 m!7340560))

(declare-fun m!7340562 () Bool)

(assert (=> b!6558441 m!7340562))

(assert (=> b!6558441 m!7340562))

(declare-fun m!7340564 () Bool)

(assert (=> b!6558441 m!7340564))

(assert (=> b!6558441 m!7340556))

(assert (=> b!6558441 m!7340564))

(assert (=> b!6558441 m!7340556))

(declare-fun m!7340566 () Bool)

(assert (=> b!6558441 m!7340566))

(assert (=> b!6558444 m!7340556))

(assert (=> b!6558444 m!7340556))

(assert (=> b!6558444 m!7340558))

(assert (=> b!6558446 m!7340562))

(assert (=> d!2057771 m!7340554))

(declare-fun m!7340568 () Bool)

(assert (=> d!2057771 m!7340568))

(assert (=> b!6558440 m!7340562))

(assert (=> b!6557965 d!2057771))

(declare-fun bs!1673819 () Bool)

(declare-fun b!6558488 () Bool)

(assert (= bs!1673819 (and b!6558488 b!6557965)))

(declare-fun lambda!364691 () Int)

(assert (=> bs!1673819 (not (= lambda!364691 lambda!364637))))

(declare-fun bs!1673820 () Bool)

(assert (= bs!1673820 (and b!6558488 b!6557976)))

(assert (=> bs!1673820 (not (= lambda!364691 lambda!364639))))

(declare-fun bs!1673821 () Bool)

(assert (= bs!1673821 (and b!6558488 b!6557986)))

(assert (=> bs!1673821 (not (= lambda!364691 lambda!364633))))

(assert (=> bs!1673821 (not (= lambda!364691 lambda!364632))))

(assert (=> bs!1673819 (not (= lambda!364691 lambda!364638))))

(assert (=> b!6558488 true))

(assert (=> b!6558488 true))

(declare-fun bs!1673822 () Bool)

(declare-fun b!6558493 () Bool)

(assert (= bs!1673822 (and b!6558493 b!6557965)))

(declare-fun lambda!364692 () Int)

(assert (=> bs!1673822 (not (= lambda!364692 lambda!364637))))

(declare-fun bs!1673823 () Bool)

(assert (= bs!1673823 (and b!6558493 b!6558488)))

(assert (=> bs!1673823 (not (= lambda!364692 lambda!364691))))

(declare-fun bs!1673824 () Bool)

(assert (= bs!1673824 (and b!6558493 b!6557976)))

(assert (=> bs!1673824 (not (= lambda!364692 lambda!364639))))

(declare-fun bs!1673825 () Bool)

(assert (= bs!1673825 (and b!6558493 b!6557986)))

(assert (=> bs!1673825 (= (and (= (regOne!33380 lt!2405034) (regOne!33380 r!7292)) (= (regTwo!33380 lt!2405034) (regTwo!33380 r!7292))) (= lambda!364692 lambda!364633))))

(assert (=> bs!1673825 (not (= lambda!364692 lambda!364632))))

(assert (=> bs!1673822 (= (and (= (regOne!33380 lt!2405034) lt!2404982) (= (regTwo!33380 lt!2405034) (regTwo!33380 r!7292))) (= lambda!364692 lambda!364638))))

(assert (=> b!6558493 true))

(assert (=> b!6558493 true))

(declare-fun b!6558483 () Bool)

(declare-fun c!1205025 () Bool)

(assert (=> b!6558483 (= c!1205025 (is-Union!16434 lt!2405034))))

(declare-fun e!3970404 () Bool)

(declare-fun e!3970401 () Bool)

(assert (=> b!6558483 (= e!3970404 e!3970401)))

(declare-fun b!6558484 () Bool)

(declare-fun e!3970399 () Bool)

(declare-fun e!3970402 () Bool)

(assert (=> b!6558484 (= e!3970399 e!3970402)))

(declare-fun res!2691121 () Bool)

(assert (=> b!6558484 (= res!2691121 (not (is-EmptyLang!16434 lt!2405034)))))

(assert (=> b!6558484 (=> (not res!2691121) (not e!3970402))))

(declare-fun b!6558486 () Bool)

(declare-fun e!3970400 () Bool)

(assert (=> b!6558486 (= e!3970400 (matchRSpec!3535 (regTwo!33381 lt!2405034) s!2326))))

(declare-fun bm!570427 () Bool)

(declare-fun call!570432 () Bool)

(declare-fun c!1205026 () Bool)

(assert (=> bm!570427 (= call!570432 (Exists!3504 (ite c!1205026 lambda!364691 lambda!364692)))))

(declare-fun bm!570428 () Bool)

(declare-fun call!570433 () Bool)

(assert (=> bm!570428 (= call!570433 (isEmpty!37720 s!2326))))

(declare-fun b!6558487 () Bool)

(declare-fun c!1205027 () Bool)

(assert (=> b!6558487 (= c!1205027 (is-ElementMatch!16434 lt!2405034))))

(assert (=> b!6558487 (= e!3970402 e!3970404)))

(declare-fun e!3970405 () Bool)

(assert (=> b!6558488 (= e!3970405 call!570432)))

(declare-fun b!6558489 () Bool)

(assert (=> b!6558489 (= e!3970401 e!3970400)))

(declare-fun res!2691122 () Bool)

(assert (=> b!6558489 (= res!2691122 (matchRSpec!3535 (regOne!33381 lt!2405034) s!2326))))

(assert (=> b!6558489 (=> res!2691122 e!3970400)))

(declare-fun b!6558490 () Bool)

(declare-fun res!2691123 () Bool)

(assert (=> b!6558490 (=> res!2691123 e!3970405)))

(assert (=> b!6558490 (= res!2691123 call!570433)))

(declare-fun e!3970403 () Bool)

(assert (=> b!6558490 (= e!3970403 e!3970405)))

(declare-fun b!6558491 () Bool)

(assert (=> b!6558491 (= e!3970404 (= s!2326 (Cons!65477 (c!1204909 lt!2405034) Nil!65477)))))

(declare-fun b!6558485 () Bool)

(assert (=> b!6558485 (= e!3970399 call!570433)))

(declare-fun d!2057773 () Bool)

(declare-fun c!1205024 () Bool)

(assert (=> d!2057773 (= c!1205024 (is-EmptyExpr!16434 lt!2405034))))

(assert (=> d!2057773 (= (matchRSpec!3535 lt!2405034 s!2326) e!3970399)))

(declare-fun b!6558492 () Bool)

(assert (=> b!6558492 (= e!3970401 e!3970403)))

(assert (=> b!6558492 (= c!1205026 (is-Star!16434 lt!2405034))))

(assert (=> b!6558493 (= e!3970403 call!570432)))

(assert (= (and d!2057773 c!1205024) b!6558485))

(assert (= (and d!2057773 (not c!1205024)) b!6558484))

(assert (= (and b!6558484 res!2691121) b!6558487))

(assert (= (and b!6558487 c!1205027) b!6558491))

(assert (= (and b!6558487 (not c!1205027)) b!6558483))

(assert (= (and b!6558483 c!1205025) b!6558489))

(assert (= (and b!6558483 (not c!1205025)) b!6558492))

(assert (= (and b!6558489 (not res!2691122)) b!6558486))

(assert (= (and b!6558492 c!1205026) b!6558490))

(assert (= (and b!6558492 (not c!1205026)) b!6558493))

(assert (= (and b!6558490 (not res!2691123)) b!6558488))

(assert (= (or b!6558488 b!6558493) bm!570427))

(assert (= (or b!6558485 b!6558490) bm!570428))

(declare-fun m!7340570 () Bool)

(assert (=> b!6558486 m!7340570))

(declare-fun m!7340572 () Bool)

(assert (=> bm!570427 m!7340572))

(assert (=> bm!570428 m!7340512))

(declare-fun m!7340574 () Bool)

(assert (=> b!6558489 m!7340574))

(assert (=> b!6557965 d!2057773))

(declare-fun bs!1673826 () Bool)

(declare-fun d!2057775 () Bool)

(assert (= bs!1673826 (and d!2057775 b!6557965)))

(declare-fun lambda!364697 () Int)

(assert (=> bs!1673826 (= lambda!364697 lambda!364637)))

(declare-fun bs!1673827 () Bool)

(assert (= bs!1673827 (and d!2057775 b!6558493)))

(assert (=> bs!1673827 (not (= lambda!364697 lambda!364692))))

(declare-fun bs!1673828 () Bool)

(assert (= bs!1673828 (and d!2057775 b!6558488)))

(assert (=> bs!1673828 (not (= lambda!364697 lambda!364691))))

(declare-fun bs!1673829 () Bool)

(assert (= bs!1673829 (and d!2057775 b!6557976)))

(assert (=> bs!1673829 (= (and (= s!2326 (_1!36716 lt!2405023)) (= lt!2404982 (reg!16763 (regOne!33380 r!7292))) (= (regTwo!33380 r!7292) lt!2405035)) (= lambda!364697 lambda!364639))))

(declare-fun bs!1673830 () Bool)

(assert (= bs!1673830 (and d!2057775 b!6557986)))

(assert (=> bs!1673830 (not (= lambda!364697 lambda!364633))))

(assert (=> bs!1673830 (= (= lt!2404982 (regOne!33380 r!7292)) (= lambda!364697 lambda!364632))))

(assert (=> bs!1673826 (not (= lambda!364697 lambda!364638))))

(assert (=> d!2057775 true))

(assert (=> d!2057775 true))

(assert (=> d!2057775 true))

(declare-fun lambda!364698 () Int)

(assert (=> bs!1673826 (not (= lambda!364698 lambda!364637))))

(assert (=> bs!1673827 (= (and (= lt!2404982 (regOne!33380 lt!2405034)) (= (regTwo!33380 r!7292) (regTwo!33380 lt!2405034))) (= lambda!364698 lambda!364692))))

(assert (=> bs!1673828 (not (= lambda!364698 lambda!364691))))

(assert (=> bs!1673829 (not (= lambda!364698 lambda!364639))))

(assert (=> bs!1673830 (= (= lt!2404982 (regOne!33380 r!7292)) (= lambda!364698 lambda!364633))))

(declare-fun bs!1673831 () Bool)

(assert (= bs!1673831 d!2057775))

(assert (=> bs!1673831 (not (= lambda!364698 lambda!364697))))

(assert (=> bs!1673830 (not (= lambda!364698 lambda!364632))))

(assert (=> bs!1673826 (= lambda!364698 lambda!364638)))

(assert (=> d!2057775 true))

(assert (=> d!2057775 true))

(assert (=> d!2057775 true))

(assert (=> d!2057775 (= (Exists!3504 lambda!364697) (Exists!3504 lambda!364698))))

(declare-fun lt!2405261 () Unit!159071)

(declare-fun choose!48891 (Regex!16434 Regex!16434 List!65601) Unit!159071)

(assert (=> d!2057775 (= lt!2405261 (choose!48891 lt!2404982 (regTwo!33380 r!7292) s!2326))))

(assert (=> d!2057775 (validRegex!8170 lt!2404982)))

(assert (=> d!2057775 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2041 lt!2404982 (regTwo!33380 r!7292) s!2326) lt!2405261)))

(declare-fun m!7340576 () Bool)

(assert (=> bs!1673831 m!7340576))

(declare-fun m!7340578 () Bool)

(assert (=> bs!1673831 m!7340578))

(declare-fun m!7340580 () Bool)

(assert (=> bs!1673831 m!7340580))

(assert (=> bs!1673831 m!7340550))

(assert (=> b!6557965 d!2057775))

(declare-fun b!6558502 () Bool)

(declare-fun res!2691139 () Bool)

(declare-fun e!3970415 () Bool)

(assert (=> b!6558502 (=> res!2691139 e!3970415)))

(assert (=> b!6558502 (= res!2691139 (not (is-ElementMatch!16434 (reg!16763 (regOne!33380 r!7292)))))))

(declare-fun e!3970412 () Bool)

(assert (=> b!6558502 (= e!3970412 e!3970415)))

(declare-fun b!6558503 () Bool)

(declare-fun res!2691135 () Bool)

(assert (=> b!6558503 (=> res!2691135 e!3970415)))

(declare-fun e!3970416 () Bool)

(assert (=> b!6558503 (= res!2691135 e!3970416)))

(declare-fun res!2691137 () Bool)

(assert (=> b!6558503 (=> (not res!2691137) (not e!3970416))))

(declare-fun lt!2405262 () Bool)

(assert (=> b!6558503 (= res!2691137 lt!2405262)))

(declare-fun b!6558504 () Bool)

(declare-fun e!3970410 () Bool)

(declare-fun e!3970414 () Bool)

(assert (=> b!6558504 (= e!3970410 e!3970414)))

(declare-fun res!2691138 () Bool)

(assert (=> b!6558504 (=> res!2691138 e!3970414)))

(declare-fun call!570434 () Bool)

(assert (=> b!6558504 (= res!2691138 call!570434)))

(declare-fun b!6558505 () Bool)

(assert (=> b!6558505 (= e!3970414 (not (= (head!13320 (_1!36716 lt!2405004)) (c!1204909 (reg!16763 (regOne!33380 r!7292))))))))

(declare-fun b!6558506 () Bool)

(declare-fun e!3970411 () Bool)

(assert (=> b!6558506 (= e!3970411 (matchR!8617 (derivativeStep!5118 (reg!16763 (regOne!33380 r!7292)) (head!13320 (_1!36716 lt!2405004))) (tail!12405 (_1!36716 lt!2405004))))))

(declare-fun b!6558507 () Bool)

(assert (=> b!6558507 (= e!3970415 e!3970410)))

(declare-fun res!2691133 () Bool)

(assert (=> b!6558507 (=> (not res!2691133) (not e!3970410))))

(assert (=> b!6558507 (= res!2691133 (not lt!2405262))))

(declare-fun b!6558508 () Bool)

(declare-fun e!3970413 () Bool)

(assert (=> b!6558508 (= e!3970413 e!3970412)))

(declare-fun c!1205030 () Bool)

(assert (=> b!6558508 (= c!1205030 (is-EmptyLang!16434 (reg!16763 (regOne!33380 r!7292))))))

(declare-fun b!6558510 () Bool)

(assert (=> b!6558510 (= e!3970412 (not lt!2405262))))

(declare-fun b!6558511 () Bool)

(assert (=> b!6558511 (= e!3970416 (= (head!13320 (_1!36716 lt!2405004)) (c!1204909 (reg!16763 (regOne!33380 r!7292)))))))

(declare-fun b!6558512 () Bool)

(assert (=> b!6558512 (= e!3970413 (= lt!2405262 call!570434))))

(declare-fun b!6558513 () Bool)

(declare-fun res!2691134 () Bool)

(assert (=> b!6558513 (=> (not res!2691134) (not e!3970416))))

(assert (=> b!6558513 (= res!2691134 (isEmpty!37720 (tail!12405 (_1!36716 lt!2405004))))))

(declare-fun b!6558514 () Bool)

(assert (=> b!6558514 (= e!3970411 (nullable!6427 (reg!16763 (regOne!33380 r!7292))))))

(declare-fun b!6558515 () Bool)

(declare-fun res!2691132 () Bool)

(assert (=> b!6558515 (=> (not res!2691132) (not e!3970416))))

(assert (=> b!6558515 (= res!2691132 (not call!570434))))

(declare-fun bm!570429 () Bool)

(assert (=> bm!570429 (= call!570434 (isEmpty!37720 (_1!36716 lt!2405004)))))

(declare-fun b!6558509 () Bool)

(declare-fun res!2691136 () Bool)

(assert (=> b!6558509 (=> res!2691136 e!3970414)))

(assert (=> b!6558509 (= res!2691136 (not (isEmpty!37720 (tail!12405 (_1!36716 lt!2405004)))))))

(declare-fun d!2057777 () Bool)

(assert (=> d!2057777 e!3970413))

(declare-fun c!1205028 () Bool)

(assert (=> d!2057777 (= c!1205028 (is-EmptyExpr!16434 (reg!16763 (regOne!33380 r!7292))))))

(assert (=> d!2057777 (= lt!2405262 e!3970411)))

(declare-fun c!1205029 () Bool)

(assert (=> d!2057777 (= c!1205029 (isEmpty!37720 (_1!36716 lt!2405004)))))

(assert (=> d!2057777 (validRegex!8170 (reg!16763 (regOne!33380 r!7292)))))

(assert (=> d!2057777 (= (matchR!8617 (reg!16763 (regOne!33380 r!7292)) (_1!36716 lt!2405004)) lt!2405262)))

(assert (= (and d!2057777 c!1205029) b!6558514))

(assert (= (and d!2057777 (not c!1205029)) b!6558506))

(assert (= (and d!2057777 c!1205028) b!6558512))

(assert (= (and d!2057777 (not c!1205028)) b!6558508))

(assert (= (and b!6558508 c!1205030) b!6558510))

(assert (= (and b!6558508 (not c!1205030)) b!6558502))

(assert (= (and b!6558502 (not res!2691139)) b!6558503))

(assert (= (and b!6558503 res!2691137) b!6558515))

(assert (= (and b!6558515 res!2691132) b!6558513))

(assert (= (and b!6558513 res!2691134) b!6558511))

(assert (= (and b!6558503 (not res!2691135)) b!6558507))

(assert (= (and b!6558507 res!2691133) b!6558504))

(assert (= (and b!6558504 (not res!2691138)) b!6558509))

(assert (= (and b!6558509 (not res!2691136)) b!6558505))

(assert (= (or b!6558512 b!6558504 b!6558515) bm!570429))

(assert (=> bm!570429 m!7340440))

(assert (=> b!6558513 m!7340448))

(assert (=> b!6558513 m!7340448))

(declare-fun m!7340582 () Bool)

(assert (=> b!6558513 m!7340582))

(declare-fun m!7340584 () Bool)

(assert (=> b!6558514 m!7340584))

(assert (=> b!6558506 m!7340444))

(assert (=> b!6558506 m!7340444))

(declare-fun m!7340586 () Bool)

(assert (=> b!6558506 m!7340586))

(assert (=> b!6558506 m!7340448))

(assert (=> b!6558506 m!7340586))

(assert (=> b!6558506 m!7340448))

(declare-fun m!7340588 () Bool)

(assert (=> b!6558506 m!7340588))

(assert (=> b!6558509 m!7340448))

(assert (=> b!6558509 m!7340448))

(assert (=> b!6558509 m!7340582))

(assert (=> b!6558511 m!7340444))

(assert (=> d!2057777 m!7340440))

(assert (=> d!2057777 m!7340124))

(assert (=> b!6558505 m!7340444))

(assert (=> b!6557965 d!2057777))

(declare-fun b!6558525 () Bool)

(declare-fun e!3970421 () List!65602)

(assert (=> b!6558525 (= e!3970421 (Cons!65478 (h!71926 lt!2405014) (++!14570 (t!379244 lt!2405014) lt!2405038)))))

(declare-fun b!6558526 () Bool)

(declare-fun res!2691145 () Bool)

(declare-fun e!3970422 () Bool)

(assert (=> b!6558526 (=> (not res!2691145) (not e!3970422))))

(declare-fun lt!2405265 () List!65602)

(declare-fun size!40518 (List!65602) Int)

(assert (=> b!6558526 (= res!2691145 (= (size!40518 lt!2405265) (+ (size!40518 lt!2405014) (size!40518 lt!2405038))))))

(declare-fun d!2057779 () Bool)

(assert (=> d!2057779 e!3970422))

(declare-fun res!2691144 () Bool)

(assert (=> d!2057779 (=> (not res!2691144) (not e!3970422))))

(declare-fun content!12584 (List!65602) (Set Regex!16434))

(assert (=> d!2057779 (= res!2691144 (= (content!12584 lt!2405265) (set.union (content!12584 lt!2405014) (content!12584 lt!2405038))))))

(assert (=> d!2057779 (= lt!2405265 e!3970421)))

(declare-fun c!1205033 () Bool)

(assert (=> d!2057779 (= c!1205033 (is-Nil!65478 lt!2405014))))

(assert (=> d!2057779 (= (++!14570 lt!2405014 lt!2405038) lt!2405265)))

(declare-fun b!6558527 () Bool)

(assert (=> b!6558527 (= e!3970422 (or (not (= lt!2405038 Nil!65478)) (= lt!2405265 lt!2405014)))))

(declare-fun b!6558524 () Bool)

(assert (=> b!6558524 (= e!3970421 lt!2405038)))

(assert (= (and d!2057779 c!1205033) b!6558524))

(assert (= (and d!2057779 (not c!1205033)) b!6558525))

(assert (= (and d!2057779 res!2691144) b!6558526))

(assert (= (and b!6558526 res!2691145) b!6558527))

(declare-fun m!7340590 () Bool)

(assert (=> b!6558525 m!7340590))

(declare-fun m!7340592 () Bool)

(assert (=> b!6558526 m!7340592))

(declare-fun m!7340594 () Bool)

(assert (=> b!6558526 m!7340594))

(declare-fun m!7340596 () Bool)

(assert (=> b!6558526 m!7340596))

(declare-fun m!7340598 () Bool)

(assert (=> d!2057779 m!7340598))

(declare-fun m!7340600 () Bool)

(assert (=> d!2057779 m!7340600))

(declare-fun m!7340602 () Bool)

(assert (=> d!2057779 m!7340602))

(assert (=> b!6557965 d!2057779))

(declare-fun d!2057781 () Bool)

(assert (=> d!2057781 (= (matchR!8617 (Concat!25279 (Concat!25279 (reg!16763 (regOne!33380 r!7292)) lt!2405035) (regTwo!33380 r!7292)) s!2326) (matchR!8617 (Concat!25279 (reg!16763 (regOne!33380 r!7292)) (Concat!25279 lt!2405035 (regTwo!33380 r!7292))) s!2326))))

(declare-fun lt!2405268 () Unit!159071)

(declare-fun choose!48892 (Regex!16434 Regex!16434 Regex!16434 List!65601) Unit!159071)

(assert (=> d!2057781 (= lt!2405268 (choose!48892 (reg!16763 (regOne!33380 r!7292)) lt!2405035 (regTwo!33380 r!7292) s!2326))))

(declare-fun e!3970425 () Bool)

(assert (=> d!2057781 e!3970425))

(declare-fun res!2691150 () Bool)

(assert (=> d!2057781 (=> (not res!2691150) (not e!3970425))))

(assert (=> d!2057781 (= res!2691150 (validRegex!8170 (reg!16763 (regOne!33380 r!7292))))))

(assert (=> d!2057781 (= (lemmaConcatAssociative!131 (reg!16763 (regOne!33380 r!7292)) lt!2405035 (regTwo!33380 r!7292) s!2326) lt!2405268)))

(declare-fun b!6558532 () Bool)

(declare-fun res!2691151 () Bool)

(assert (=> b!6558532 (=> (not res!2691151) (not e!3970425))))

(assert (=> b!6558532 (= res!2691151 (validRegex!8170 lt!2405035))))

(declare-fun b!6558533 () Bool)

(assert (=> b!6558533 (= e!3970425 (validRegex!8170 (regTwo!33380 r!7292)))))

(assert (= (and d!2057781 res!2691150) b!6558532))

(assert (= (and b!6558532 res!2691151) b!6558533))

(declare-fun m!7340604 () Bool)

(assert (=> d!2057781 m!7340604))

(declare-fun m!7340606 () Bool)

(assert (=> d!2057781 m!7340606))

(declare-fun m!7340608 () Bool)

(assert (=> d!2057781 m!7340608))

(assert (=> d!2057781 m!7340124))

(assert (=> b!6558532 m!7339972))

(declare-fun m!7340610 () Bool)

(assert (=> b!6558533 m!7340610))

(assert (=> b!6557965 d!2057781))

(declare-fun d!2057783 () Bool)

(assert (=> d!2057783 (= (matchR!8617 lt!2404994 (_2!36716 lt!2405004)) (matchZipper!2446 lt!2404987 (_2!36716 lt!2405004)))))

(declare-fun lt!2405271 () Unit!159071)

(declare-fun choose!48893 ((Set Context!11636) List!65603 Regex!16434 List!65601) Unit!159071)

(assert (=> d!2057783 (= lt!2405271 (choose!48893 lt!2404987 lt!2405017 lt!2404994 (_2!36716 lt!2405004)))))

(assert (=> d!2057783 (validRegex!8170 lt!2404994)))

(assert (=> d!2057783 (= (theoremZipperRegexEquiv!870 lt!2404987 lt!2405017 lt!2404994 (_2!36716 lt!2405004)) lt!2405271)))

(declare-fun bs!1673832 () Bool)

(assert (= bs!1673832 d!2057783))

(assert (=> bs!1673832 m!7340098))

(assert (=> bs!1673832 m!7340058))

(declare-fun m!7340612 () Bool)

(assert (=> bs!1673832 m!7340612))

(declare-fun m!7340614 () Bool)

(assert (=> bs!1673832 m!7340614))

(assert (=> b!6557965 d!2057783))

(declare-fun b!6558552 () Bool)

(declare-fun e!3970438 () Option!16325)

(declare-fun e!3970437 () Option!16325)

(assert (=> b!6558552 (= e!3970438 e!3970437)))

(declare-fun c!1205038 () Bool)

(assert (=> b!6558552 (= c!1205038 (is-Nil!65477 s!2326))))

(declare-fun b!6558553 () Bool)

(declare-fun e!3970439 () Bool)

(assert (=> b!6558553 (= e!3970439 (matchR!8617 (regTwo!33380 r!7292) s!2326))))

(declare-fun b!6558555 () Bool)

(assert (=> b!6558555 (= e!3970438 (Some!16324 (tuple2!66827 Nil!65477 s!2326)))))

(declare-fun b!6558556 () Bool)

(declare-fun lt!2405280 () Unit!159071)

(declare-fun lt!2405279 () Unit!159071)

(assert (=> b!6558556 (= lt!2405280 lt!2405279)))

(assert (=> b!6558556 (= (++!14571 (++!14571 Nil!65477 (Cons!65477 (h!71925 s!2326) Nil!65477)) (t!379243 s!2326)) s!2326)))

(assert (=> b!6558556 (= lt!2405279 (lemmaMoveElementToOtherListKeepsConcatEq!2577 Nil!65477 (h!71925 s!2326) (t!379243 s!2326) s!2326))))

(assert (=> b!6558556 (= e!3970437 (findConcatSeparation!2739 lt!2404982 (regTwo!33380 r!7292) (++!14571 Nil!65477 (Cons!65477 (h!71925 s!2326) Nil!65477)) (t!379243 s!2326) s!2326))))

(declare-fun b!6558557 () Bool)

(declare-fun res!2691163 () Bool)

(declare-fun e!3970440 () Bool)

(assert (=> b!6558557 (=> (not res!2691163) (not e!3970440))))

(declare-fun lt!2405278 () Option!16325)

(assert (=> b!6558557 (= res!2691163 (matchR!8617 (regTwo!33380 r!7292) (_2!36716 (get!22733 lt!2405278))))))

(declare-fun b!6558558 () Bool)

(declare-fun res!2691165 () Bool)

(assert (=> b!6558558 (=> (not res!2691165) (not e!3970440))))

(assert (=> b!6558558 (= res!2691165 (matchR!8617 lt!2404982 (_1!36716 (get!22733 lt!2405278))))))

(declare-fun d!2057785 () Bool)

(declare-fun e!3970436 () Bool)

(assert (=> d!2057785 e!3970436))

(declare-fun res!2691166 () Bool)

(assert (=> d!2057785 (=> res!2691166 e!3970436)))

(assert (=> d!2057785 (= res!2691166 e!3970440)))

(declare-fun res!2691162 () Bool)

(assert (=> d!2057785 (=> (not res!2691162) (not e!3970440))))

(assert (=> d!2057785 (= res!2691162 (isDefined!13028 lt!2405278))))

(assert (=> d!2057785 (= lt!2405278 e!3970438)))

(declare-fun c!1205039 () Bool)

(assert (=> d!2057785 (= c!1205039 e!3970439)))

(declare-fun res!2691164 () Bool)

(assert (=> d!2057785 (=> (not res!2691164) (not e!3970439))))

(assert (=> d!2057785 (= res!2691164 (matchR!8617 lt!2404982 Nil!65477))))

(assert (=> d!2057785 (validRegex!8170 lt!2404982)))

(assert (=> d!2057785 (= (findConcatSeparation!2739 lt!2404982 (regTwo!33380 r!7292) Nil!65477 s!2326 s!2326) lt!2405278)))

(declare-fun b!6558554 () Bool)

(assert (=> b!6558554 (= e!3970440 (= (++!14571 (_1!36716 (get!22733 lt!2405278)) (_2!36716 (get!22733 lt!2405278))) s!2326))))

(declare-fun b!6558559 () Bool)

(assert (=> b!6558559 (= e!3970437 None!16324)))

(declare-fun b!6558560 () Bool)

(assert (=> b!6558560 (= e!3970436 (not (isDefined!13028 lt!2405278)))))

(assert (= (and d!2057785 res!2691164) b!6558553))

(assert (= (and d!2057785 c!1205039) b!6558555))

(assert (= (and d!2057785 (not c!1205039)) b!6558552))

(assert (= (and b!6558552 c!1205038) b!6558559))

(assert (= (and b!6558552 (not c!1205038)) b!6558556))

(assert (= (and d!2057785 res!2691162) b!6558558))

(assert (= (and b!6558558 res!2691165) b!6558557))

(assert (= (and b!6558557 res!2691163) b!6558554))

(assert (= (and d!2057785 (not res!2691166)) b!6558560))

(assert (=> b!6558556 m!7340370))

(assert (=> b!6558556 m!7340370))

(assert (=> b!6558556 m!7340372))

(assert (=> b!6558556 m!7340374))

(assert (=> b!6558556 m!7340370))

(declare-fun m!7340616 () Bool)

(assert (=> b!6558556 m!7340616))

(declare-fun m!7340618 () Bool)

(assert (=> b!6558557 m!7340618))

(declare-fun m!7340620 () Bool)

(assert (=> b!6558557 m!7340620))

(declare-fun m!7340622 () Bool)

(assert (=> d!2057785 m!7340622))

(declare-fun m!7340624 () Bool)

(assert (=> d!2057785 m!7340624))

(assert (=> d!2057785 m!7340550))

(assert (=> b!6558558 m!7340618))

(declare-fun m!7340626 () Bool)

(assert (=> b!6558558 m!7340626))

(assert (=> b!6558554 m!7340618))

(declare-fun m!7340628 () Bool)

(assert (=> b!6558554 m!7340628))

(assert (=> b!6558560 m!7340622))

(declare-fun m!7340630 () Bool)

(assert (=> b!6558553 m!7340630))

(assert (=> b!6557965 d!2057785))

(declare-fun bs!1673833 () Bool)

(declare-fun d!2057787 () Bool)

(assert (= bs!1673833 (and d!2057787 d!2057775)))

(declare-fun lambda!364701 () Int)

(assert (=> bs!1673833 (not (= lambda!364701 lambda!364698))))

(declare-fun bs!1673834 () Bool)

(assert (= bs!1673834 (and d!2057787 b!6557965)))

(assert (=> bs!1673834 (= lambda!364701 lambda!364637)))

(declare-fun bs!1673835 () Bool)

(assert (= bs!1673835 (and d!2057787 b!6558493)))

(assert (=> bs!1673835 (not (= lambda!364701 lambda!364692))))

(declare-fun bs!1673836 () Bool)

(assert (= bs!1673836 (and d!2057787 b!6558488)))

(assert (=> bs!1673836 (not (= lambda!364701 lambda!364691))))

(declare-fun bs!1673837 () Bool)

(assert (= bs!1673837 (and d!2057787 b!6557976)))

(assert (=> bs!1673837 (= (and (= s!2326 (_1!36716 lt!2405023)) (= lt!2404982 (reg!16763 (regOne!33380 r!7292))) (= (regTwo!33380 r!7292) lt!2405035)) (= lambda!364701 lambda!364639))))

(declare-fun bs!1673838 () Bool)

(assert (= bs!1673838 (and d!2057787 b!6557986)))

(assert (=> bs!1673838 (not (= lambda!364701 lambda!364633))))

(assert (=> bs!1673833 (= lambda!364701 lambda!364697)))

(assert (=> bs!1673838 (= (= lt!2404982 (regOne!33380 r!7292)) (= lambda!364701 lambda!364632))))

(assert (=> bs!1673834 (not (= lambda!364701 lambda!364638))))

(assert (=> d!2057787 true))

(assert (=> d!2057787 true))

(assert (=> d!2057787 true))

(assert (=> d!2057787 (= (isDefined!13028 (findConcatSeparation!2739 lt!2404982 (regTwo!33380 r!7292) Nil!65477 s!2326 s!2326)) (Exists!3504 lambda!364701))))

(declare-fun lt!2405283 () Unit!159071)

(declare-fun choose!48894 (Regex!16434 Regex!16434 List!65601) Unit!159071)

(assert (=> d!2057787 (= lt!2405283 (choose!48894 lt!2404982 (regTwo!33380 r!7292) s!2326))))

(assert (=> d!2057787 (validRegex!8170 lt!2404982)))

(assert (=> d!2057787 (= (lemmaFindConcatSeparationEquivalentToExists!2503 lt!2404982 (regTwo!33380 r!7292) s!2326) lt!2405283)))

(declare-fun bs!1673839 () Bool)

(assert (= bs!1673839 d!2057787))

(declare-fun m!7340632 () Bool)

(assert (=> bs!1673839 m!7340632))

(assert (=> bs!1673839 m!7340100))

(assert (=> bs!1673839 m!7340100))

(declare-fun m!7340634 () Bool)

(assert (=> bs!1673839 m!7340634))

(assert (=> bs!1673839 m!7340550))

(declare-fun m!7340636 () Bool)

(assert (=> bs!1673839 m!7340636))

(assert (=> b!6557965 d!2057787))

(declare-fun d!2057789 () Bool)

(declare-fun choose!48895 (Int) Bool)

(assert (=> d!2057789 (= (Exists!3504 lambda!364638) (choose!48895 lambda!364638))))

(declare-fun bs!1673840 () Bool)

(assert (= bs!1673840 d!2057789))

(declare-fun m!7340638 () Bool)

(assert (=> bs!1673840 m!7340638))

(assert (=> b!6557965 d!2057789))

(declare-fun b!6558565 () Bool)

(declare-fun res!2691178 () Bool)

(declare-fun e!3970448 () Bool)

(assert (=> b!6558565 (=> res!2691178 e!3970448)))

(assert (=> b!6558565 (= res!2691178 (not (is-ElementMatch!16434 lt!2405034)))))

(declare-fun e!3970445 () Bool)

(assert (=> b!6558565 (= e!3970445 e!3970448)))

(declare-fun b!6558566 () Bool)

(declare-fun res!2691174 () Bool)

(assert (=> b!6558566 (=> res!2691174 e!3970448)))

(declare-fun e!3970449 () Bool)

(assert (=> b!6558566 (= res!2691174 e!3970449)))

(declare-fun res!2691176 () Bool)

(assert (=> b!6558566 (=> (not res!2691176) (not e!3970449))))

(declare-fun lt!2405284 () Bool)

(assert (=> b!6558566 (= res!2691176 lt!2405284)))

(declare-fun b!6558567 () Bool)

(declare-fun e!3970443 () Bool)

(declare-fun e!3970447 () Bool)

(assert (=> b!6558567 (= e!3970443 e!3970447)))

(declare-fun res!2691177 () Bool)

(assert (=> b!6558567 (=> res!2691177 e!3970447)))

(declare-fun call!570435 () Bool)

(assert (=> b!6558567 (= res!2691177 call!570435)))

(declare-fun b!6558568 () Bool)

(assert (=> b!6558568 (= e!3970447 (not (= (head!13320 s!2326) (c!1204909 lt!2405034))))))

(declare-fun b!6558569 () Bool)

(declare-fun e!3970444 () Bool)

(assert (=> b!6558569 (= e!3970444 (matchR!8617 (derivativeStep!5118 lt!2405034 (head!13320 s!2326)) (tail!12405 s!2326)))))

(declare-fun b!6558570 () Bool)

(assert (=> b!6558570 (= e!3970448 e!3970443)))

(declare-fun res!2691172 () Bool)

(assert (=> b!6558570 (=> (not res!2691172) (not e!3970443))))

(assert (=> b!6558570 (= res!2691172 (not lt!2405284))))

(declare-fun b!6558571 () Bool)

(declare-fun e!3970446 () Bool)

(assert (=> b!6558571 (= e!3970446 e!3970445)))

(declare-fun c!1205042 () Bool)

(assert (=> b!6558571 (= c!1205042 (is-EmptyLang!16434 lt!2405034))))

(declare-fun b!6558573 () Bool)

(assert (=> b!6558573 (= e!3970445 (not lt!2405284))))

(declare-fun b!6558574 () Bool)

(assert (=> b!6558574 (= e!3970449 (= (head!13320 s!2326) (c!1204909 lt!2405034)))))

(declare-fun b!6558575 () Bool)

(assert (=> b!6558575 (= e!3970446 (= lt!2405284 call!570435))))

(declare-fun b!6558576 () Bool)

(declare-fun res!2691173 () Bool)

(assert (=> b!6558576 (=> (not res!2691173) (not e!3970449))))

(assert (=> b!6558576 (= res!2691173 (isEmpty!37720 (tail!12405 s!2326)))))

(declare-fun b!6558577 () Bool)

(assert (=> b!6558577 (= e!3970444 (nullable!6427 lt!2405034))))

(declare-fun b!6558578 () Bool)

(declare-fun res!2691171 () Bool)

(assert (=> b!6558578 (=> (not res!2691171) (not e!3970449))))

(assert (=> b!6558578 (= res!2691171 (not call!570435))))

(declare-fun bm!570430 () Bool)

(assert (=> bm!570430 (= call!570435 (isEmpty!37720 s!2326))))

(declare-fun b!6558572 () Bool)

(declare-fun res!2691175 () Bool)

(assert (=> b!6558572 (=> res!2691175 e!3970447)))

(assert (=> b!6558572 (= res!2691175 (not (isEmpty!37720 (tail!12405 s!2326))))))

(declare-fun d!2057791 () Bool)

(assert (=> d!2057791 e!3970446))

(declare-fun c!1205040 () Bool)

(assert (=> d!2057791 (= c!1205040 (is-EmptyExpr!16434 lt!2405034))))

(assert (=> d!2057791 (= lt!2405284 e!3970444)))

(declare-fun c!1205041 () Bool)

(assert (=> d!2057791 (= c!1205041 (isEmpty!37720 s!2326))))

(assert (=> d!2057791 (validRegex!8170 lt!2405034)))

(assert (=> d!2057791 (= (matchR!8617 lt!2405034 s!2326) lt!2405284)))

(assert (= (and d!2057791 c!1205041) b!6558577))

(assert (= (and d!2057791 (not c!1205041)) b!6558569))

(assert (= (and d!2057791 c!1205040) b!6558575))

(assert (= (and d!2057791 (not c!1205040)) b!6558571))

(assert (= (and b!6558571 c!1205042) b!6558573))

(assert (= (and b!6558571 (not c!1205042)) b!6558565))

(assert (= (and b!6558565 (not res!2691178)) b!6558566))

(assert (= (and b!6558566 res!2691176) b!6558578))

(assert (= (and b!6558578 res!2691171) b!6558576))

(assert (= (and b!6558576 res!2691173) b!6558574))

(assert (= (and b!6558566 (not res!2691174)) b!6558570))

(assert (= (and b!6558570 res!2691172) b!6558567))

(assert (= (and b!6558567 (not res!2691177)) b!6558572))

(assert (= (and b!6558572 (not res!2691175)) b!6558568))

(assert (= (or b!6558575 b!6558567 b!6558578) bm!570430))

(assert (=> bm!570430 m!7340512))

(assert (=> b!6558576 m!7340520))

(assert (=> b!6558576 m!7340520))

(declare-fun m!7340640 () Bool)

(assert (=> b!6558576 m!7340640))

(declare-fun m!7340642 () Bool)

(assert (=> b!6558577 m!7340642))

(assert (=> b!6558569 m!7340516))

(assert (=> b!6558569 m!7340516))

(declare-fun m!7340644 () Bool)

(assert (=> b!6558569 m!7340644))

(assert (=> b!6558569 m!7340520))

(assert (=> b!6558569 m!7340644))

(assert (=> b!6558569 m!7340520))

(declare-fun m!7340646 () Bool)

(assert (=> b!6558569 m!7340646))

(assert (=> b!6558572 m!7340520))

(assert (=> b!6558572 m!7340520))

(assert (=> b!6558572 m!7340640))

(assert (=> b!6558574 m!7340516))

(assert (=> d!2057791 m!7340512))

(declare-fun m!7340648 () Bool)

(assert (=> d!2057791 m!7340648))

(assert (=> b!6558568 m!7340516))

(assert (=> b!6557965 d!2057791))

(declare-fun d!2057793 () Bool)

(assert (=> d!2057793 (forall!15606 (++!14570 lt!2405014 lt!2405038) lambda!364636)))

(declare-fun lt!2405287 () Unit!159071)

(declare-fun choose!48896 (List!65602 List!65602 Int) Unit!159071)

(assert (=> d!2057793 (= lt!2405287 (choose!48896 lt!2405014 lt!2405038 lambda!364636))))

(assert (=> d!2057793 (forall!15606 lt!2405014 lambda!364636)))

(assert (=> d!2057793 (= (lemmaConcatPreservesForall!407 lt!2405014 lt!2405038 lambda!364636) lt!2405287)))

(declare-fun bs!1673841 () Bool)

(assert (= bs!1673841 d!2057793))

(assert (=> bs!1673841 m!7340050))

(assert (=> bs!1673841 m!7340050))

(declare-fun m!7340650 () Bool)

(assert (=> bs!1673841 m!7340650))

(declare-fun m!7340652 () Bool)

(assert (=> bs!1673841 m!7340652))

(declare-fun m!7340654 () Bool)

(assert (=> bs!1673841 m!7340654))

(assert (=> b!6557965 d!2057793))

(declare-fun d!2057795 () Bool)

(assert (=> d!2057795 (matchR!8617 (Concat!25279 (reg!16763 (regOne!33380 r!7292)) lt!2404994) (++!14571 (_1!36716 lt!2405004) (_2!36716 lt!2405004)))))

(declare-fun lt!2405290 () Unit!159071)

(declare-fun choose!48897 (Regex!16434 Regex!16434 List!65601 List!65601) Unit!159071)

(assert (=> d!2057795 (= lt!2405290 (choose!48897 (reg!16763 (regOne!33380 r!7292)) lt!2404994 (_1!36716 lt!2405004) (_2!36716 lt!2405004)))))

(declare-fun e!3970452 () Bool)

(assert (=> d!2057795 e!3970452))

(declare-fun res!2691181 () Bool)

(assert (=> d!2057795 (=> (not res!2691181) (not e!3970452))))

(assert (=> d!2057795 (= res!2691181 (validRegex!8170 (reg!16763 (regOne!33380 r!7292))))))

(assert (=> d!2057795 (= (lemmaTwoRegexMatchThenConcatMatchesConcatString!355 (reg!16763 (regOne!33380 r!7292)) lt!2404994 (_1!36716 lt!2405004) (_2!36716 lt!2405004)) lt!2405290)))

(declare-fun b!6558581 () Bool)

(assert (=> b!6558581 (= e!3970452 (validRegex!8170 lt!2404994))))

(assert (= (and d!2057795 res!2691181) b!6558581))

(assert (=> d!2057795 m!7340002))

(assert (=> d!2057795 m!7340002))

(declare-fun m!7340656 () Bool)

(assert (=> d!2057795 m!7340656))

(declare-fun m!7340658 () Bool)

(assert (=> d!2057795 m!7340658))

(assert (=> d!2057795 m!7340124))

(assert (=> b!6558581 m!7340614))

(assert (=> b!6557965 d!2057795))

(declare-fun d!2057797 () Bool)

(assert (=> d!2057797 (= (matchR!8617 (reg!16763 (regOne!33380 r!7292)) (_1!36716 lt!2405004)) (matchZipper!2446 lt!2405013 (_1!36716 lt!2405004)))))

(declare-fun lt!2405291 () Unit!159071)

(assert (=> d!2057797 (= lt!2405291 (choose!48893 lt!2405013 lt!2404983 (reg!16763 (regOne!33380 r!7292)) (_1!36716 lt!2405004)))))

(assert (=> d!2057797 (validRegex!8170 (reg!16763 (regOne!33380 r!7292)))))

(assert (=> d!2057797 (= (theoremZipperRegexEquiv!870 lt!2405013 lt!2404983 (reg!16763 (regOne!33380 r!7292)) (_1!36716 lt!2405004)) lt!2405291)))

(declare-fun bs!1673842 () Bool)

(assert (= bs!1673842 d!2057797))

(assert (=> bs!1673842 m!7340114))

(assert (=> bs!1673842 m!7339956))

(declare-fun m!7340660 () Bool)

(assert (=> bs!1673842 m!7340660))

(assert (=> bs!1673842 m!7340124))

(assert (=> b!6557965 d!2057797))

(declare-fun d!2057799 () Bool)

(assert (=> d!2057799 (= (Exists!3504 lambda!364637) (choose!48895 lambda!364637))))

(declare-fun bs!1673843 () Bool)

(assert (= bs!1673843 d!2057799))

(declare-fun m!7340662 () Bool)

(assert (=> bs!1673843 m!7340662))

(assert (=> b!6557965 d!2057799))

(declare-fun d!2057801 () Bool)

(declare-fun c!1205043 () Bool)

(assert (=> d!2057801 (= c!1205043 (isEmpty!37720 lt!2405011))))

(declare-fun e!3970453 () Bool)

(assert (=> d!2057801 (= (matchZipper!2446 (set.insert (Context!11637 (++!14570 lt!2405014 lt!2405038)) (as set.empty (Set Context!11636))) lt!2405011) e!3970453)))

(declare-fun b!6558582 () Bool)

(assert (=> b!6558582 (= e!3970453 (nullableZipper!2179 (set.insert (Context!11637 (++!14570 lt!2405014 lt!2405038)) (as set.empty (Set Context!11636)))))))

(declare-fun b!6558583 () Bool)

(assert (=> b!6558583 (= e!3970453 (matchZipper!2446 (derivationStepZipper!2400 (set.insert (Context!11637 (++!14570 lt!2405014 lt!2405038)) (as set.empty (Set Context!11636))) (head!13320 lt!2405011)) (tail!12405 lt!2405011)))))

(assert (= (and d!2057801 c!1205043) b!6558582))

(assert (= (and d!2057801 (not c!1205043)) b!6558583))

(assert (=> d!2057801 m!7340554))

(assert (=> b!6558582 m!7340044))

(declare-fun m!7340664 () Bool)

(assert (=> b!6558582 m!7340664))

(assert (=> b!6558583 m!7340562))

(assert (=> b!6558583 m!7340044))

(assert (=> b!6558583 m!7340562))

(declare-fun m!7340666 () Bool)

(assert (=> b!6558583 m!7340666))

(assert (=> b!6558583 m!7340556))

(assert (=> b!6558583 m!7340666))

(assert (=> b!6558583 m!7340556))

(declare-fun m!7340668 () Bool)

(assert (=> b!6558583 m!7340668))

(assert (=> b!6557965 d!2057801))

(declare-fun bs!1673844 () Bool)

(declare-fun d!2057803 () Bool)

(assert (= bs!1673844 (and d!2057803 b!6557958)))

(declare-fun lambda!364704 () Int)

(assert (=> bs!1673844 (= lambda!364704 lambda!364636)))

(declare-fun bs!1673845 () Bool)

(assert (= bs!1673845 (and d!2057803 d!2057713)))

(assert (=> bs!1673845 (= lambda!364704 lambda!364680)))

(declare-fun bs!1673846 () Bool)

(assert (= bs!1673846 (and d!2057803 d!2057755)))

(assert (=> bs!1673846 (= lambda!364704 lambda!364683)))

(declare-fun bs!1673847 () Bool)

(assert (= bs!1673847 (and d!2057803 d!2057757)))

(assert (=> bs!1673847 (= lambda!364704 lambda!364686)))

(assert (=> d!2057803 (matchZipper!2446 (set.insert (Context!11637 (++!14570 (exprs!6318 lt!2404979) (exprs!6318 lt!2405031))) (as set.empty (Set Context!11636))) (++!14571 (_1!36716 lt!2405004) (_2!36716 lt!2405004)))))

(declare-fun lt!2405297 () Unit!159071)

(assert (=> d!2057803 (= lt!2405297 (lemmaConcatPreservesForall!407 (exprs!6318 lt!2404979) (exprs!6318 lt!2405031) lambda!364704))))

(declare-fun lt!2405296 () Unit!159071)

(declare-fun choose!48900 (Context!11636 Context!11636 List!65601 List!65601) Unit!159071)

(assert (=> d!2057803 (= lt!2405296 (choose!48900 lt!2404979 lt!2405031 (_1!36716 lt!2405004) (_2!36716 lt!2405004)))))

(assert (=> d!2057803 (matchZipper!2446 (set.insert lt!2404979 (as set.empty (Set Context!11636))) (_1!36716 lt!2405004))))

(assert (=> d!2057803 (= (lemmaConcatenateContextMatchesConcatOfStrings!215 lt!2404979 lt!2405031 (_1!36716 lt!2405004) (_2!36716 lt!2405004)) lt!2405296)))

(declare-fun bs!1673848 () Bool)

(assert (= bs!1673848 d!2057803))

(assert (=> bs!1673848 m!7340070))

(declare-fun m!7340670 () Bool)

(assert (=> bs!1673848 m!7340670))

(declare-fun m!7340672 () Bool)

(assert (=> bs!1673848 m!7340672))

(declare-fun m!7340674 () Bool)

(assert (=> bs!1673848 m!7340674))

(assert (=> bs!1673848 m!7340002))

(declare-fun m!7340676 () Bool)

(assert (=> bs!1673848 m!7340676))

(assert (=> bs!1673848 m!7340676))

(assert (=> bs!1673848 m!7340002))

(declare-fun m!7340678 () Bool)

(assert (=> bs!1673848 m!7340678))

(assert (=> bs!1673848 m!7340070))

(declare-fun m!7340680 () Bool)

(assert (=> bs!1673848 m!7340680))

(assert (=> b!6557965 d!2057803))

(declare-fun b!6558584 () Bool)

(declare-fun res!2691189 () Bool)

(declare-fun e!3970459 () Bool)

(assert (=> b!6558584 (=> res!2691189 e!3970459)))

(assert (=> b!6558584 (= res!2691189 (not (is-ElementMatch!16434 lt!2404994)))))

(declare-fun e!3970456 () Bool)

(assert (=> b!6558584 (= e!3970456 e!3970459)))

(declare-fun b!6558585 () Bool)

(declare-fun res!2691185 () Bool)

(assert (=> b!6558585 (=> res!2691185 e!3970459)))

(declare-fun e!3970460 () Bool)

(assert (=> b!6558585 (= res!2691185 e!3970460)))

(declare-fun res!2691187 () Bool)

(assert (=> b!6558585 (=> (not res!2691187) (not e!3970460))))

(declare-fun lt!2405298 () Bool)

(assert (=> b!6558585 (= res!2691187 lt!2405298)))

(declare-fun b!6558586 () Bool)

(declare-fun e!3970454 () Bool)

(declare-fun e!3970458 () Bool)

(assert (=> b!6558586 (= e!3970454 e!3970458)))

(declare-fun res!2691188 () Bool)

(assert (=> b!6558586 (=> res!2691188 e!3970458)))

(declare-fun call!570436 () Bool)

(assert (=> b!6558586 (= res!2691188 call!570436)))

(declare-fun b!6558587 () Bool)

(assert (=> b!6558587 (= e!3970458 (not (= (head!13320 (_2!36716 lt!2405004)) (c!1204909 lt!2404994))))))

(declare-fun b!6558588 () Bool)

(declare-fun e!3970455 () Bool)

(assert (=> b!6558588 (= e!3970455 (matchR!8617 (derivativeStep!5118 lt!2404994 (head!13320 (_2!36716 lt!2405004))) (tail!12405 (_2!36716 lt!2405004))))))

(declare-fun b!6558589 () Bool)

(assert (=> b!6558589 (= e!3970459 e!3970454)))

(declare-fun res!2691183 () Bool)

(assert (=> b!6558589 (=> (not res!2691183) (not e!3970454))))

(assert (=> b!6558589 (= res!2691183 (not lt!2405298))))

(declare-fun b!6558590 () Bool)

(declare-fun e!3970457 () Bool)

(assert (=> b!6558590 (= e!3970457 e!3970456)))

(declare-fun c!1205046 () Bool)

(assert (=> b!6558590 (= c!1205046 (is-EmptyLang!16434 lt!2404994))))

(declare-fun b!6558592 () Bool)

(assert (=> b!6558592 (= e!3970456 (not lt!2405298))))

(declare-fun b!6558593 () Bool)

(assert (=> b!6558593 (= e!3970460 (= (head!13320 (_2!36716 lt!2405004)) (c!1204909 lt!2404994)))))

(declare-fun b!6558594 () Bool)

(assert (=> b!6558594 (= e!3970457 (= lt!2405298 call!570436))))

(declare-fun b!6558595 () Bool)

(declare-fun res!2691184 () Bool)

(assert (=> b!6558595 (=> (not res!2691184) (not e!3970460))))

(assert (=> b!6558595 (= res!2691184 (isEmpty!37720 (tail!12405 (_2!36716 lt!2405004))))))

(declare-fun b!6558596 () Bool)

(assert (=> b!6558596 (= e!3970455 (nullable!6427 lt!2404994))))

(declare-fun b!6558597 () Bool)

(declare-fun res!2691182 () Bool)

(assert (=> b!6558597 (=> (not res!2691182) (not e!3970460))))

(assert (=> b!6558597 (= res!2691182 (not call!570436))))

(declare-fun bm!570431 () Bool)

(assert (=> bm!570431 (= call!570436 (isEmpty!37720 (_2!36716 lt!2405004)))))

(declare-fun b!6558591 () Bool)

(declare-fun res!2691186 () Bool)

(assert (=> b!6558591 (=> res!2691186 e!3970458)))

(assert (=> b!6558591 (= res!2691186 (not (isEmpty!37720 (tail!12405 (_2!36716 lt!2405004)))))))

(declare-fun d!2057805 () Bool)

(assert (=> d!2057805 e!3970457))

(declare-fun c!1205044 () Bool)

(assert (=> d!2057805 (= c!1205044 (is-EmptyExpr!16434 lt!2404994))))

(assert (=> d!2057805 (= lt!2405298 e!3970455)))

(declare-fun c!1205045 () Bool)

(assert (=> d!2057805 (= c!1205045 (isEmpty!37720 (_2!36716 lt!2405004)))))

(assert (=> d!2057805 (validRegex!8170 lt!2404994)))

(assert (=> d!2057805 (= (matchR!8617 lt!2404994 (_2!36716 lt!2405004)) lt!2405298)))

(assert (= (and d!2057805 c!1205045) b!6558596))

(assert (= (and d!2057805 (not c!1205045)) b!6558588))

(assert (= (and d!2057805 c!1205044) b!6558594))

(assert (= (and d!2057805 (not c!1205044)) b!6558590))

(assert (= (and b!6558590 c!1205046) b!6558592))

(assert (= (and b!6558590 (not c!1205046)) b!6558584))

(assert (= (and b!6558584 (not res!2691189)) b!6558585))

(assert (= (and b!6558585 res!2691187) b!6558597))

(assert (= (and b!6558597 res!2691182) b!6558595))

(assert (= (and b!6558595 res!2691184) b!6558593))

(assert (= (and b!6558585 (not res!2691185)) b!6558589))

(assert (= (and b!6558589 res!2691183) b!6558586))

(assert (= (and b!6558586 (not res!2691188)) b!6558591))

(assert (= (and b!6558591 (not res!2691186)) b!6558587))

(assert (= (or b!6558594 b!6558586 b!6558597) bm!570431))

(declare-fun m!7340682 () Bool)

(assert (=> bm!570431 m!7340682))

(declare-fun m!7340684 () Bool)

(assert (=> b!6558595 m!7340684))

(assert (=> b!6558595 m!7340684))

(declare-fun m!7340686 () Bool)

(assert (=> b!6558595 m!7340686))

(declare-fun m!7340688 () Bool)

(assert (=> b!6558596 m!7340688))

(declare-fun m!7340690 () Bool)

(assert (=> b!6558588 m!7340690))

(assert (=> b!6558588 m!7340690))

(declare-fun m!7340692 () Bool)

(assert (=> b!6558588 m!7340692))

(assert (=> b!6558588 m!7340684))

(assert (=> b!6558588 m!7340692))

(assert (=> b!6558588 m!7340684))

(declare-fun m!7340694 () Bool)

(assert (=> b!6558588 m!7340694))

(assert (=> b!6558591 m!7340684))

(assert (=> b!6558591 m!7340684))

(assert (=> b!6558591 m!7340686))

(assert (=> b!6558593 m!7340690))

(assert (=> d!2057805 m!7340682))

(assert (=> d!2057805 m!7340614))

(assert (=> b!6558587 m!7340690))

(assert (=> b!6557965 d!2057805))

(declare-fun d!2057807 () Bool)

(assert (=> d!2057807 (= (matchR!8617 lt!2405034 s!2326) (matchRSpec!3535 lt!2405034 s!2326))))

(declare-fun lt!2405301 () Unit!159071)

(declare-fun choose!48903 (Regex!16434 List!65601) Unit!159071)

(assert (=> d!2057807 (= lt!2405301 (choose!48903 lt!2405034 s!2326))))

(assert (=> d!2057807 (validRegex!8170 lt!2405034)))

(assert (=> d!2057807 (= (mainMatchTheorem!3535 lt!2405034 s!2326) lt!2405301)))

(declare-fun bs!1673849 () Bool)

(assert (= bs!1673849 d!2057807))

(assert (=> bs!1673849 m!7340112))

(assert (=> bs!1673849 m!7340102))

(declare-fun m!7340696 () Bool)

(assert (=> bs!1673849 m!7340696))

(assert (=> bs!1673849 m!7340648))

(assert (=> b!6557965 d!2057807))

(declare-fun b!6558598 () Bool)

(declare-fun e!3970463 () Option!16325)

(declare-fun e!3970462 () Option!16325)

(assert (=> b!6558598 (= e!3970463 e!3970462)))

(declare-fun c!1205047 () Bool)

(assert (=> b!6558598 (= c!1205047 (is-Nil!65477 s!2326))))

(declare-fun b!6558599 () Bool)

(declare-fun e!3970464 () Bool)

(assert (=> b!6558599 (= e!3970464 (matchR!8617 (regTwo!33380 r!7292) s!2326))))

(declare-fun b!6558601 () Bool)

(assert (=> b!6558601 (= e!3970463 (Some!16324 (tuple2!66827 Nil!65477 s!2326)))))

(declare-fun b!6558602 () Bool)

(declare-fun lt!2405304 () Unit!159071)

(declare-fun lt!2405303 () Unit!159071)

(assert (=> b!6558602 (= lt!2405304 lt!2405303)))

(assert (=> b!6558602 (= (++!14571 (++!14571 Nil!65477 (Cons!65477 (h!71925 s!2326) Nil!65477)) (t!379243 s!2326)) s!2326)))

(assert (=> b!6558602 (= lt!2405303 (lemmaMoveElementToOtherListKeepsConcatEq!2577 Nil!65477 (h!71925 s!2326) (t!379243 s!2326) s!2326))))

(assert (=> b!6558602 (= e!3970462 (findConcatSeparation!2739 (regOne!33380 r!7292) (regTwo!33380 r!7292) (++!14571 Nil!65477 (Cons!65477 (h!71925 s!2326) Nil!65477)) (t!379243 s!2326) s!2326))))

(declare-fun b!6558603 () Bool)

(declare-fun res!2691191 () Bool)

(declare-fun e!3970465 () Bool)

(assert (=> b!6558603 (=> (not res!2691191) (not e!3970465))))

(declare-fun lt!2405302 () Option!16325)

(assert (=> b!6558603 (= res!2691191 (matchR!8617 (regTwo!33380 r!7292) (_2!36716 (get!22733 lt!2405302))))))

(declare-fun b!6558604 () Bool)

(declare-fun res!2691193 () Bool)

(assert (=> b!6558604 (=> (not res!2691193) (not e!3970465))))

(assert (=> b!6558604 (= res!2691193 (matchR!8617 (regOne!33380 r!7292) (_1!36716 (get!22733 lt!2405302))))))

(declare-fun d!2057809 () Bool)

(declare-fun e!3970461 () Bool)

(assert (=> d!2057809 e!3970461))

(declare-fun res!2691194 () Bool)

(assert (=> d!2057809 (=> res!2691194 e!3970461)))

(assert (=> d!2057809 (= res!2691194 e!3970465)))

(declare-fun res!2691190 () Bool)

(assert (=> d!2057809 (=> (not res!2691190) (not e!3970465))))

(assert (=> d!2057809 (= res!2691190 (isDefined!13028 lt!2405302))))

(assert (=> d!2057809 (= lt!2405302 e!3970463)))

(declare-fun c!1205048 () Bool)

(assert (=> d!2057809 (= c!1205048 e!3970464)))

(declare-fun res!2691192 () Bool)

(assert (=> d!2057809 (=> (not res!2691192) (not e!3970464))))

(assert (=> d!2057809 (= res!2691192 (matchR!8617 (regOne!33380 r!7292) Nil!65477))))

(assert (=> d!2057809 (validRegex!8170 (regOne!33380 r!7292))))

(assert (=> d!2057809 (= (findConcatSeparation!2739 (regOne!33380 r!7292) (regTwo!33380 r!7292) Nil!65477 s!2326 s!2326) lt!2405302)))

(declare-fun b!6558600 () Bool)

(assert (=> b!6558600 (= e!3970465 (= (++!14571 (_1!36716 (get!22733 lt!2405302)) (_2!36716 (get!22733 lt!2405302))) s!2326))))

(declare-fun b!6558605 () Bool)

(assert (=> b!6558605 (= e!3970462 None!16324)))

(declare-fun b!6558606 () Bool)

(assert (=> b!6558606 (= e!3970461 (not (isDefined!13028 lt!2405302)))))

(assert (= (and d!2057809 res!2691192) b!6558599))

(assert (= (and d!2057809 c!1205048) b!6558601))

(assert (= (and d!2057809 (not c!1205048)) b!6558598))

(assert (= (and b!6558598 c!1205047) b!6558605))

(assert (= (and b!6558598 (not c!1205047)) b!6558602))

(assert (= (and d!2057809 res!2691190) b!6558604))

(assert (= (and b!6558604 res!2691193) b!6558603))

(assert (= (and b!6558603 res!2691191) b!6558600))

(assert (= (and d!2057809 (not res!2691194)) b!6558606))

(assert (=> b!6558602 m!7340370))

(assert (=> b!6558602 m!7340370))

(assert (=> b!6558602 m!7340372))

(assert (=> b!6558602 m!7340374))

(assert (=> b!6558602 m!7340370))

(declare-fun m!7340698 () Bool)

(assert (=> b!6558602 m!7340698))

(declare-fun m!7340700 () Bool)

(assert (=> b!6558603 m!7340700))

(declare-fun m!7340702 () Bool)

(assert (=> b!6558603 m!7340702))

(declare-fun m!7340704 () Bool)

(assert (=> d!2057809 m!7340704))

(declare-fun m!7340706 () Bool)

(assert (=> d!2057809 m!7340706))

(declare-fun m!7340708 () Bool)

(assert (=> d!2057809 m!7340708))

(assert (=> b!6558604 m!7340700))

(declare-fun m!7340710 () Bool)

(assert (=> b!6558604 m!7340710))

(assert (=> b!6558600 m!7340700))

(declare-fun m!7340712 () Bool)

(assert (=> b!6558600 m!7340712))

(assert (=> b!6558606 m!7340704))

(assert (=> b!6558599 m!7340630))

(assert (=> b!6557986 d!2057809))

(declare-fun d!2057811 () Bool)

(assert (=> d!2057811 (= (Exists!3504 lambda!364633) (choose!48895 lambda!364633))))

(declare-fun bs!1673850 () Bool)

(assert (= bs!1673850 d!2057811))

(declare-fun m!7340714 () Bool)

(assert (=> bs!1673850 m!7340714))

(assert (=> b!6557986 d!2057811))

(declare-fun d!2057813 () Bool)

(assert (=> d!2057813 (= (Exists!3504 lambda!364632) (choose!48895 lambda!364632))))

(declare-fun bs!1673851 () Bool)

(assert (= bs!1673851 d!2057813))

(declare-fun m!7340716 () Bool)

(assert (=> bs!1673851 m!7340716))

(assert (=> b!6557986 d!2057813))

(declare-fun bs!1673852 () Bool)

(declare-fun d!2057815 () Bool)

(assert (= bs!1673852 (and d!2057815 b!6557965)))

(declare-fun lambda!364705 () Int)

(assert (=> bs!1673852 (= (= (regOne!33380 r!7292) lt!2404982) (= lambda!364705 lambda!364637))))

(declare-fun bs!1673853 () Bool)

(assert (= bs!1673853 (and d!2057815 b!6558493)))

(assert (=> bs!1673853 (not (= lambda!364705 lambda!364692))))

(declare-fun bs!1673854 () Bool)

(assert (= bs!1673854 (and d!2057815 b!6558488)))

(assert (=> bs!1673854 (not (= lambda!364705 lambda!364691))))

(declare-fun bs!1673855 () Bool)

(assert (= bs!1673855 (and d!2057815 b!6557976)))

(assert (=> bs!1673855 (= (and (= s!2326 (_1!36716 lt!2405023)) (= (regOne!33380 r!7292) (reg!16763 (regOne!33380 r!7292))) (= (regTwo!33380 r!7292) lt!2405035)) (= lambda!364705 lambda!364639))))

(declare-fun bs!1673856 () Bool)

(assert (= bs!1673856 (and d!2057815 b!6557986)))

(assert (=> bs!1673856 (not (= lambda!364705 lambda!364633))))

(declare-fun bs!1673857 () Bool)

(assert (= bs!1673857 (and d!2057815 d!2057775)))

(assert (=> bs!1673857 (= (= (regOne!33380 r!7292) lt!2404982) (= lambda!364705 lambda!364697))))

(assert (=> bs!1673856 (= lambda!364705 lambda!364632)))

(assert (=> bs!1673852 (not (= lambda!364705 lambda!364638))))

(declare-fun bs!1673858 () Bool)

(assert (= bs!1673858 (and d!2057815 d!2057787)))

(assert (=> bs!1673858 (= (= (regOne!33380 r!7292) lt!2404982) (= lambda!364705 lambda!364701))))

(assert (=> bs!1673857 (not (= lambda!364705 lambda!364698))))

(assert (=> d!2057815 true))

(assert (=> d!2057815 true))

(assert (=> d!2057815 true))

(assert (=> d!2057815 (= (isDefined!13028 (findConcatSeparation!2739 (regOne!33380 r!7292) (regTwo!33380 r!7292) Nil!65477 s!2326 s!2326)) (Exists!3504 lambda!364705))))

(declare-fun lt!2405305 () Unit!159071)

(assert (=> d!2057815 (= lt!2405305 (choose!48894 (regOne!33380 r!7292) (regTwo!33380 r!7292) s!2326))))

(assert (=> d!2057815 (validRegex!8170 (regOne!33380 r!7292))))

(assert (=> d!2057815 (= (lemmaFindConcatSeparationEquivalentToExists!2503 (regOne!33380 r!7292) (regTwo!33380 r!7292) s!2326) lt!2405305)))

(declare-fun bs!1673859 () Bool)

(assert (= bs!1673859 d!2057815))

(declare-fun m!7340718 () Bool)

(assert (=> bs!1673859 m!7340718))

(assert (=> bs!1673859 m!7339978))

(assert (=> bs!1673859 m!7339978))

(assert (=> bs!1673859 m!7339980))

(assert (=> bs!1673859 m!7340708))

(declare-fun m!7340720 () Bool)

(assert (=> bs!1673859 m!7340720))

(assert (=> b!6557986 d!2057815))

(declare-fun bs!1673860 () Bool)

(declare-fun d!2057817 () Bool)

(assert (= bs!1673860 (and d!2057817 d!2057815)))

(declare-fun lambda!364706 () Int)

(assert (=> bs!1673860 (= lambda!364706 lambda!364705)))

(declare-fun bs!1673861 () Bool)

(assert (= bs!1673861 (and d!2057817 b!6557965)))

(assert (=> bs!1673861 (= (= (regOne!33380 r!7292) lt!2404982) (= lambda!364706 lambda!364637))))

(declare-fun bs!1673862 () Bool)

(assert (= bs!1673862 (and d!2057817 b!6558493)))

(assert (=> bs!1673862 (not (= lambda!364706 lambda!364692))))

(declare-fun bs!1673863 () Bool)

(assert (= bs!1673863 (and d!2057817 b!6558488)))

(assert (=> bs!1673863 (not (= lambda!364706 lambda!364691))))

(declare-fun bs!1673864 () Bool)

(assert (= bs!1673864 (and d!2057817 b!6557976)))

(assert (=> bs!1673864 (= (and (= s!2326 (_1!36716 lt!2405023)) (= (regOne!33380 r!7292) (reg!16763 (regOne!33380 r!7292))) (= (regTwo!33380 r!7292) lt!2405035)) (= lambda!364706 lambda!364639))))

(declare-fun bs!1673865 () Bool)

(assert (= bs!1673865 (and d!2057817 b!6557986)))

(assert (=> bs!1673865 (not (= lambda!364706 lambda!364633))))

(declare-fun bs!1673866 () Bool)

(assert (= bs!1673866 (and d!2057817 d!2057775)))

(assert (=> bs!1673866 (= (= (regOne!33380 r!7292) lt!2404982) (= lambda!364706 lambda!364697))))

(assert (=> bs!1673865 (= lambda!364706 lambda!364632)))

(assert (=> bs!1673861 (not (= lambda!364706 lambda!364638))))

(declare-fun bs!1673867 () Bool)

(assert (= bs!1673867 (and d!2057817 d!2057787)))

(assert (=> bs!1673867 (= (= (regOne!33380 r!7292) lt!2404982) (= lambda!364706 lambda!364701))))

(assert (=> bs!1673866 (not (= lambda!364706 lambda!364698))))

(assert (=> d!2057817 true))

(assert (=> d!2057817 true))

(assert (=> d!2057817 true))

(declare-fun lambda!364707 () Int)

(assert (=> bs!1673860 (not (= lambda!364707 lambda!364705))))

(declare-fun bs!1673868 () Bool)

(assert (= bs!1673868 d!2057817))

(assert (=> bs!1673868 (not (= lambda!364707 lambda!364706))))

(assert (=> bs!1673861 (not (= lambda!364707 lambda!364637))))

(assert (=> bs!1673862 (= (and (= (regOne!33380 r!7292) (regOne!33380 lt!2405034)) (= (regTwo!33380 r!7292) (regTwo!33380 lt!2405034))) (= lambda!364707 lambda!364692))))

(assert (=> bs!1673863 (not (= lambda!364707 lambda!364691))))

(assert (=> bs!1673864 (not (= lambda!364707 lambda!364639))))

(assert (=> bs!1673865 (= lambda!364707 lambda!364633)))

(assert (=> bs!1673866 (not (= lambda!364707 lambda!364697))))

(assert (=> bs!1673865 (not (= lambda!364707 lambda!364632))))

(assert (=> bs!1673861 (= (= (regOne!33380 r!7292) lt!2404982) (= lambda!364707 lambda!364638))))

(assert (=> bs!1673867 (not (= lambda!364707 lambda!364701))))

(assert (=> bs!1673866 (= (= (regOne!33380 r!7292) lt!2404982) (= lambda!364707 lambda!364698))))

(assert (=> d!2057817 true))

(assert (=> d!2057817 true))

(assert (=> d!2057817 true))

(assert (=> d!2057817 (= (Exists!3504 lambda!364706) (Exists!3504 lambda!364707))))

(declare-fun lt!2405306 () Unit!159071)

(assert (=> d!2057817 (= lt!2405306 (choose!48891 (regOne!33380 r!7292) (regTwo!33380 r!7292) s!2326))))

(assert (=> d!2057817 (validRegex!8170 (regOne!33380 r!7292))))

(assert (=> d!2057817 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2041 (regOne!33380 r!7292) (regTwo!33380 r!7292) s!2326) lt!2405306)))

(declare-fun m!7340722 () Bool)

(assert (=> bs!1673868 m!7340722))

(declare-fun m!7340724 () Bool)

(assert (=> bs!1673868 m!7340724))

(declare-fun m!7340726 () Bool)

(assert (=> bs!1673868 m!7340726))

(assert (=> bs!1673868 m!7340708))

(assert (=> b!6557986 d!2057817))

(declare-fun d!2057819 () Bool)

(assert (=> d!2057819 (= (isDefined!13028 (findConcatSeparation!2739 (regOne!33380 r!7292) (regTwo!33380 r!7292) Nil!65477 s!2326 s!2326)) (not (isEmpty!37719 (findConcatSeparation!2739 (regOne!33380 r!7292) (regTwo!33380 r!7292) Nil!65477 s!2326 s!2326))))))

(declare-fun bs!1673869 () Bool)

(assert (= bs!1673869 d!2057819))

(assert (=> bs!1673869 m!7339978))

(declare-fun m!7340728 () Bool)

(assert (=> bs!1673869 m!7340728))

(assert (=> b!6557986 d!2057819))

(declare-fun d!2057821 () Bool)

(declare-fun lt!2405307 () Regex!16434)

(assert (=> d!2057821 (validRegex!8170 lt!2405307)))

(assert (=> d!2057821 (= lt!2405307 (generalisedUnion!2278 (unfocusZipperList!1855 lt!2405017)))))

(assert (=> d!2057821 (= (unfocusZipper!2176 lt!2405017) lt!2405307)))

(declare-fun bs!1673870 () Bool)

(assert (= bs!1673870 d!2057821))

(declare-fun m!7340730 () Bool)

(assert (=> bs!1673870 m!7340730))

(declare-fun m!7340732 () Bool)

(assert (=> bs!1673870 m!7340732))

(assert (=> bs!1673870 m!7340732))

(declare-fun m!7340734 () Bool)

(assert (=> bs!1673870 m!7340734))

(assert (=> b!6557945 d!2057821))

(declare-fun bs!1673871 () Bool)

(declare-fun d!2057823 () Bool)

(assert (= bs!1673871 (and d!2057823 d!2057713)))

(declare-fun lambda!364710 () Int)

(assert (=> bs!1673871 (= lambda!364710 lambda!364680)))

(declare-fun bs!1673872 () Bool)

(assert (= bs!1673872 (and d!2057823 d!2057755)))

(assert (=> bs!1673872 (= lambda!364710 lambda!364683)))

(declare-fun bs!1673873 () Bool)

(assert (= bs!1673873 (and d!2057823 d!2057757)))

(assert (=> bs!1673873 (= lambda!364710 lambda!364686)))

(declare-fun bs!1673874 () Bool)

(assert (= bs!1673874 (and d!2057823 d!2057803)))

(assert (=> bs!1673874 (= lambda!364710 lambda!364704)))

(declare-fun bs!1673875 () Bool)

(assert (= bs!1673875 (and d!2057823 b!6557958)))

(assert (=> bs!1673875 (= lambda!364710 lambda!364636)))

(assert (=> d!2057823 (= (inv!84333 setElem!44763) (forall!15606 (exprs!6318 setElem!44763) lambda!364710))))

(declare-fun bs!1673876 () Bool)

(assert (= bs!1673876 d!2057823))

(declare-fun m!7340736 () Bool)

(assert (=> bs!1673876 m!7340736))

(assert (=> setNonEmpty!44763 d!2057823))

(declare-fun bs!1673877 () Bool)

(declare-fun b!6558612 () Bool)

(assert (= bs!1673877 (and b!6558612 d!2057815)))

(declare-fun lambda!364711 () Int)

(assert (=> bs!1673877 (not (= lambda!364711 lambda!364705))))

(declare-fun bs!1673878 () Bool)

(assert (= bs!1673878 (and b!6558612 d!2057817)))

(assert (=> bs!1673878 (not (= lambda!364711 lambda!364706))))

(declare-fun bs!1673879 () Bool)

(assert (= bs!1673879 (and b!6558612 b!6557965)))

(assert (=> bs!1673879 (not (= lambda!364711 lambda!364637))))

(declare-fun bs!1673880 () Bool)

(assert (= bs!1673880 (and b!6558612 b!6558488)))

(assert (=> bs!1673880 (= (and (= (reg!16763 lt!2405019) (reg!16763 lt!2405034)) (= lt!2405019 lt!2405034)) (= lambda!364711 lambda!364691))))

(declare-fun bs!1673881 () Bool)

(assert (= bs!1673881 (and b!6558612 b!6557976)))

(assert (=> bs!1673881 (not (= lambda!364711 lambda!364639))))

(declare-fun bs!1673882 () Bool)

(assert (= bs!1673882 (and b!6558612 b!6557986)))

(assert (=> bs!1673882 (not (= lambda!364711 lambda!364633))))

(declare-fun bs!1673883 () Bool)

(assert (= bs!1673883 (and b!6558612 d!2057775)))

(assert (=> bs!1673883 (not (= lambda!364711 lambda!364697))))

(assert (=> bs!1673882 (not (= lambda!364711 lambda!364632))))

(assert (=> bs!1673879 (not (= lambda!364711 lambda!364638))))

(declare-fun bs!1673884 () Bool)

(assert (= bs!1673884 (and b!6558612 d!2057787)))

(assert (=> bs!1673884 (not (= lambda!364711 lambda!364701))))

(assert (=> bs!1673883 (not (= lambda!364711 lambda!364698))))

(assert (=> bs!1673878 (not (= lambda!364711 lambda!364707))))

(declare-fun bs!1673885 () Bool)

(assert (= bs!1673885 (and b!6558612 b!6558493)))

(assert (=> bs!1673885 (not (= lambda!364711 lambda!364692))))

(assert (=> b!6558612 true))

(assert (=> b!6558612 true))

(declare-fun bs!1673886 () Bool)

(declare-fun b!6558617 () Bool)

(assert (= bs!1673886 (and b!6558617 d!2057815)))

(declare-fun lambda!364712 () Int)

(assert (=> bs!1673886 (not (= lambda!364712 lambda!364705))))

(declare-fun bs!1673887 () Bool)

(assert (= bs!1673887 (and b!6558617 d!2057817)))

(assert (=> bs!1673887 (not (= lambda!364712 lambda!364706))))

(declare-fun bs!1673888 () Bool)

(assert (= bs!1673888 (and b!6558617 b!6557965)))

(assert (=> bs!1673888 (not (= lambda!364712 lambda!364637))))

(declare-fun bs!1673889 () Bool)

(assert (= bs!1673889 (and b!6558617 b!6558488)))

(assert (=> bs!1673889 (not (= lambda!364712 lambda!364691))))

(declare-fun bs!1673890 () Bool)

(assert (= bs!1673890 (and b!6558617 b!6557976)))

(assert (=> bs!1673890 (not (= lambda!364712 lambda!364639))))

(declare-fun bs!1673891 () Bool)

(assert (= bs!1673891 (and b!6558617 b!6557986)))

(assert (=> bs!1673891 (= (and (= (regOne!33380 lt!2405019) (regOne!33380 r!7292)) (= (regTwo!33380 lt!2405019) (regTwo!33380 r!7292))) (= lambda!364712 lambda!364633))))

(declare-fun bs!1673892 () Bool)

(assert (= bs!1673892 (and b!6558617 d!2057775)))

(assert (=> bs!1673892 (not (= lambda!364712 lambda!364697))))

(assert (=> bs!1673891 (not (= lambda!364712 lambda!364632))))

(assert (=> bs!1673888 (= (and (= (regOne!33380 lt!2405019) lt!2404982) (= (regTwo!33380 lt!2405019) (regTwo!33380 r!7292))) (= lambda!364712 lambda!364638))))

(declare-fun bs!1673893 () Bool)

(assert (= bs!1673893 (and b!6558617 b!6558612)))

(assert (=> bs!1673893 (not (= lambda!364712 lambda!364711))))

(declare-fun bs!1673894 () Bool)

(assert (= bs!1673894 (and b!6558617 d!2057787)))

(assert (=> bs!1673894 (not (= lambda!364712 lambda!364701))))

(assert (=> bs!1673892 (= (and (= (regOne!33380 lt!2405019) lt!2404982) (= (regTwo!33380 lt!2405019) (regTwo!33380 r!7292))) (= lambda!364712 lambda!364698))))

(assert (=> bs!1673887 (= (and (= (regOne!33380 lt!2405019) (regOne!33380 r!7292)) (= (regTwo!33380 lt!2405019) (regTwo!33380 r!7292))) (= lambda!364712 lambda!364707))))

(declare-fun bs!1673895 () Bool)

(assert (= bs!1673895 (and b!6558617 b!6558493)))

(assert (=> bs!1673895 (= (and (= (regOne!33380 lt!2405019) (regOne!33380 lt!2405034)) (= (regTwo!33380 lt!2405019) (regTwo!33380 lt!2405034))) (= lambda!364712 lambda!364692))))

(assert (=> b!6558617 true))

(assert (=> b!6558617 true))

(declare-fun b!6558607 () Bool)

(declare-fun c!1205050 () Bool)

(assert (=> b!6558607 (= c!1205050 (is-Union!16434 lt!2405019))))

(declare-fun e!3970471 () Bool)

(declare-fun e!3970468 () Bool)

(assert (=> b!6558607 (= e!3970471 e!3970468)))

(declare-fun b!6558608 () Bool)

(declare-fun e!3970466 () Bool)

(declare-fun e!3970469 () Bool)

(assert (=> b!6558608 (= e!3970466 e!3970469)))

(declare-fun res!2691195 () Bool)

(assert (=> b!6558608 (= res!2691195 (not (is-EmptyLang!16434 lt!2405019)))))

(assert (=> b!6558608 (=> (not res!2691195) (not e!3970469))))

(declare-fun b!6558610 () Bool)

(declare-fun e!3970467 () Bool)

(assert (=> b!6558610 (= e!3970467 (matchRSpec!3535 (regTwo!33381 lt!2405019) s!2326))))

(declare-fun bm!570432 () Bool)

(declare-fun call!570437 () Bool)

(declare-fun c!1205051 () Bool)

(assert (=> bm!570432 (= call!570437 (Exists!3504 (ite c!1205051 lambda!364711 lambda!364712)))))

(declare-fun bm!570433 () Bool)

(declare-fun call!570438 () Bool)

(assert (=> bm!570433 (= call!570438 (isEmpty!37720 s!2326))))

(declare-fun b!6558611 () Bool)

(declare-fun c!1205052 () Bool)

(assert (=> b!6558611 (= c!1205052 (is-ElementMatch!16434 lt!2405019))))

(assert (=> b!6558611 (= e!3970469 e!3970471)))

(declare-fun e!3970472 () Bool)

(assert (=> b!6558612 (= e!3970472 call!570437)))

(declare-fun b!6558613 () Bool)

(assert (=> b!6558613 (= e!3970468 e!3970467)))

(declare-fun res!2691196 () Bool)

(assert (=> b!6558613 (= res!2691196 (matchRSpec!3535 (regOne!33381 lt!2405019) s!2326))))

(assert (=> b!6558613 (=> res!2691196 e!3970467)))

(declare-fun b!6558614 () Bool)

(declare-fun res!2691197 () Bool)

(assert (=> b!6558614 (=> res!2691197 e!3970472)))

(assert (=> b!6558614 (= res!2691197 call!570438)))

(declare-fun e!3970470 () Bool)

(assert (=> b!6558614 (= e!3970470 e!3970472)))

(declare-fun b!6558615 () Bool)

(assert (=> b!6558615 (= e!3970471 (= s!2326 (Cons!65477 (c!1204909 lt!2405019) Nil!65477)))))

(declare-fun b!6558609 () Bool)

(assert (=> b!6558609 (= e!3970466 call!570438)))

(declare-fun d!2057825 () Bool)

(declare-fun c!1205049 () Bool)

(assert (=> d!2057825 (= c!1205049 (is-EmptyExpr!16434 lt!2405019))))

(assert (=> d!2057825 (= (matchRSpec!3535 lt!2405019 s!2326) e!3970466)))

(declare-fun b!6558616 () Bool)

(assert (=> b!6558616 (= e!3970468 e!3970470)))

(assert (=> b!6558616 (= c!1205051 (is-Star!16434 lt!2405019))))

(assert (=> b!6558617 (= e!3970470 call!570437)))

(assert (= (and d!2057825 c!1205049) b!6558609))

(assert (= (and d!2057825 (not c!1205049)) b!6558608))

(assert (= (and b!6558608 res!2691195) b!6558611))

(assert (= (and b!6558611 c!1205052) b!6558615))

(assert (= (and b!6558611 (not c!1205052)) b!6558607))

(assert (= (and b!6558607 c!1205050) b!6558613))

(assert (= (and b!6558607 (not c!1205050)) b!6558616))

(assert (= (and b!6558613 (not res!2691196)) b!6558610))

(assert (= (and b!6558616 c!1205051) b!6558614))

(assert (= (and b!6558616 (not c!1205051)) b!6558617))

(assert (= (and b!6558614 (not res!2691197)) b!6558612))

(assert (= (or b!6558612 b!6558617) bm!570432))

(assert (= (or b!6558609 b!6558614) bm!570433))

(declare-fun m!7340738 () Bool)

(assert (=> b!6558610 m!7340738))

(declare-fun m!7340740 () Bool)

(assert (=> bm!570432 m!7340740))

(assert (=> bm!570433 m!7340512))

(declare-fun m!7340742 () Bool)

(assert (=> b!6558613 m!7340742))

(assert (=> b!6557969 d!2057825))

(declare-fun b!6558618 () Bool)

(declare-fun res!2691205 () Bool)

(declare-fun e!3970478 () Bool)

(assert (=> b!6558618 (=> res!2691205 e!3970478)))

(assert (=> b!6558618 (= res!2691205 (not (is-ElementMatch!16434 lt!2405019)))))

(declare-fun e!3970475 () Bool)

(assert (=> b!6558618 (= e!3970475 e!3970478)))

(declare-fun b!6558619 () Bool)

(declare-fun res!2691201 () Bool)

(assert (=> b!6558619 (=> res!2691201 e!3970478)))

(declare-fun e!3970479 () Bool)

(assert (=> b!6558619 (= res!2691201 e!3970479)))

(declare-fun res!2691203 () Bool)

(assert (=> b!6558619 (=> (not res!2691203) (not e!3970479))))

(declare-fun lt!2405308 () Bool)

(assert (=> b!6558619 (= res!2691203 lt!2405308)))

(declare-fun b!6558620 () Bool)

(declare-fun e!3970473 () Bool)

(declare-fun e!3970477 () Bool)

(assert (=> b!6558620 (= e!3970473 e!3970477)))

(declare-fun res!2691204 () Bool)

(assert (=> b!6558620 (=> res!2691204 e!3970477)))

(declare-fun call!570439 () Bool)

(assert (=> b!6558620 (= res!2691204 call!570439)))

(declare-fun b!6558621 () Bool)

(assert (=> b!6558621 (= e!3970477 (not (= (head!13320 s!2326) (c!1204909 lt!2405019))))))

(declare-fun b!6558622 () Bool)

(declare-fun e!3970474 () Bool)

(assert (=> b!6558622 (= e!3970474 (matchR!8617 (derivativeStep!5118 lt!2405019 (head!13320 s!2326)) (tail!12405 s!2326)))))

(declare-fun b!6558623 () Bool)

(assert (=> b!6558623 (= e!3970478 e!3970473)))

(declare-fun res!2691199 () Bool)

(assert (=> b!6558623 (=> (not res!2691199) (not e!3970473))))

(assert (=> b!6558623 (= res!2691199 (not lt!2405308))))

(declare-fun b!6558624 () Bool)

(declare-fun e!3970476 () Bool)

(assert (=> b!6558624 (= e!3970476 e!3970475)))

(declare-fun c!1205055 () Bool)

(assert (=> b!6558624 (= c!1205055 (is-EmptyLang!16434 lt!2405019))))

(declare-fun b!6558626 () Bool)

(assert (=> b!6558626 (= e!3970475 (not lt!2405308))))

(declare-fun b!6558627 () Bool)

(assert (=> b!6558627 (= e!3970479 (= (head!13320 s!2326) (c!1204909 lt!2405019)))))

(declare-fun b!6558628 () Bool)

(assert (=> b!6558628 (= e!3970476 (= lt!2405308 call!570439))))

(declare-fun b!6558629 () Bool)

(declare-fun res!2691200 () Bool)

(assert (=> b!6558629 (=> (not res!2691200) (not e!3970479))))

(assert (=> b!6558629 (= res!2691200 (isEmpty!37720 (tail!12405 s!2326)))))

(declare-fun b!6558630 () Bool)

(assert (=> b!6558630 (= e!3970474 (nullable!6427 lt!2405019))))

(declare-fun b!6558631 () Bool)

(declare-fun res!2691198 () Bool)

(assert (=> b!6558631 (=> (not res!2691198) (not e!3970479))))

(assert (=> b!6558631 (= res!2691198 (not call!570439))))

(declare-fun bm!570434 () Bool)

(assert (=> bm!570434 (= call!570439 (isEmpty!37720 s!2326))))

(declare-fun b!6558625 () Bool)

(declare-fun res!2691202 () Bool)

(assert (=> b!6558625 (=> res!2691202 e!3970477)))

(assert (=> b!6558625 (= res!2691202 (not (isEmpty!37720 (tail!12405 s!2326))))))

(declare-fun d!2057827 () Bool)

(assert (=> d!2057827 e!3970476))

(declare-fun c!1205053 () Bool)

(assert (=> d!2057827 (= c!1205053 (is-EmptyExpr!16434 lt!2405019))))

(assert (=> d!2057827 (= lt!2405308 e!3970474)))

(declare-fun c!1205054 () Bool)

(assert (=> d!2057827 (= c!1205054 (isEmpty!37720 s!2326))))

(assert (=> d!2057827 (validRegex!8170 lt!2405019)))

(assert (=> d!2057827 (= (matchR!8617 lt!2405019 s!2326) lt!2405308)))

(assert (= (and d!2057827 c!1205054) b!6558630))

(assert (= (and d!2057827 (not c!1205054)) b!6558622))

(assert (= (and d!2057827 c!1205053) b!6558628))

(assert (= (and d!2057827 (not c!1205053)) b!6558624))

(assert (= (and b!6558624 c!1205055) b!6558626))

(assert (= (and b!6558624 (not c!1205055)) b!6558618))

(assert (= (and b!6558618 (not res!2691205)) b!6558619))

(assert (= (and b!6558619 res!2691203) b!6558631))

(assert (= (and b!6558631 res!2691198) b!6558629))

(assert (= (and b!6558629 res!2691200) b!6558627))

(assert (= (and b!6558619 (not res!2691201)) b!6558623))

(assert (= (and b!6558623 res!2691199) b!6558620))

(assert (= (and b!6558620 (not res!2691204)) b!6558625))

(assert (= (and b!6558625 (not res!2691202)) b!6558621))

(assert (= (or b!6558628 b!6558620 b!6558631) bm!570434))

(assert (=> bm!570434 m!7340512))

(assert (=> b!6558629 m!7340520))

(assert (=> b!6558629 m!7340520))

(assert (=> b!6558629 m!7340640))

(assert (=> b!6558630 m!7340560))

(assert (=> b!6558622 m!7340516))

(assert (=> b!6558622 m!7340516))

(declare-fun m!7340744 () Bool)

(assert (=> b!6558622 m!7340744))

(assert (=> b!6558622 m!7340520))

(assert (=> b!6558622 m!7340744))

(assert (=> b!6558622 m!7340520))

(declare-fun m!7340746 () Bool)

(assert (=> b!6558622 m!7340746))

(assert (=> b!6558625 m!7340520))

(assert (=> b!6558625 m!7340520))

(assert (=> b!6558625 m!7340640))

(assert (=> b!6558627 m!7340516))

(assert (=> d!2057827 m!7340512))

(assert (=> d!2057827 m!7340568))

(assert (=> b!6558621 m!7340516))

(assert (=> b!6557969 d!2057827))

(declare-fun d!2057829 () Bool)

(assert (=> d!2057829 (= (matchR!8617 lt!2405019 s!2326) (matchRSpec!3535 lt!2405019 s!2326))))

(declare-fun lt!2405309 () Unit!159071)

(assert (=> d!2057829 (= lt!2405309 (choose!48903 lt!2405019 s!2326))))

(assert (=> d!2057829 (validRegex!8170 lt!2405019)))

(assert (=> d!2057829 (= (mainMatchTheorem!3535 lt!2405019 s!2326) lt!2405309)))

(declare-fun bs!1673896 () Bool)

(assert (= bs!1673896 d!2057829))

(assert (=> bs!1673896 m!7339968))

(assert (=> bs!1673896 m!7339966))

(declare-fun m!7340748 () Bool)

(assert (=> bs!1673896 m!7340748))

(assert (=> bs!1673896 m!7340568))

(assert (=> b!6557969 d!2057829))

(declare-fun bm!570435 () Bool)

(declare-fun call!570440 () Bool)

(declare-fun c!1205056 () Bool)

(assert (=> bm!570435 (= call!570440 (validRegex!8170 (ite c!1205056 (regOne!33381 lt!2405035) (regOne!33380 lt!2405035))))))

(declare-fun b!6558632 () Bool)

(declare-fun res!2691209 () Bool)

(declare-fun e!3970486 () Bool)

(assert (=> b!6558632 (=> res!2691209 e!3970486)))

(assert (=> b!6558632 (= res!2691209 (not (is-Concat!25279 lt!2405035)))))

(declare-fun e!3970483 () Bool)

(assert (=> b!6558632 (= e!3970483 e!3970486)))

(declare-fun b!6558633 () Bool)

(declare-fun e!3970484 () Bool)

(declare-fun call!570442 () Bool)

(assert (=> b!6558633 (= e!3970484 call!570442)))

(declare-fun bm!570436 () Bool)

(declare-fun call!570441 () Bool)

(assert (=> bm!570436 (= call!570441 call!570442)))

(declare-fun bm!570437 () Bool)

(declare-fun c!1205057 () Bool)

(assert (=> bm!570437 (= call!570442 (validRegex!8170 (ite c!1205057 (reg!16763 lt!2405035) (ite c!1205056 (regTwo!33381 lt!2405035) (regTwo!33380 lt!2405035)))))))

(declare-fun b!6558635 () Bool)

(declare-fun e!3970480 () Bool)

(assert (=> b!6558635 (= e!3970480 e!3970484)))

(declare-fun res!2691208 () Bool)

(assert (=> b!6558635 (= res!2691208 (not (nullable!6427 (reg!16763 lt!2405035))))))

(assert (=> b!6558635 (=> (not res!2691208) (not e!3970484))))

(declare-fun b!6558636 () Bool)

(declare-fun e!3970485 () Bool)

(assert (=> b!6558636 (= e!3970485 call!570441)))

(declare-fun b!6558637 () Bool)

(declare-fun e!3970481 () Bool)

(assert (=> b!6558637 (= e!3970481 e!3970480)))

(assert (=> b!6558637 (= c!1205057 (is-Star!16434 lt!2405035))))

(declare-fun b!6558638 () Bool)

(assert (=> b!6558638 (= e!3970486 e!3970485)))

(declare-fun res!2691207 () Bool)

(assert (=> b!6558638 (=> (not res!2691207) (not e!3970485))))

(assert (=> b!6558638 (= res!2691207 call!570440)))

(declare-fun d!2057831 () Bool)

(declare-fun res!2691210 () Bool)

(assert (=> d!2057831 (=> res!2691210 e!3970481)))

(assert (=> d!2057831 (= res!2691210 (is-ElementMatch!16434 lt!2405035))))

(assert (=> d!2057831 (= (validRegex!8170 lt!2405035) e!3970481)))

(declare-fun b!6558634 () Bool)

(declare-fun res!2691206 () Bool)

(declare-fun e!3970482 () Bool)

(assert (=> b!6558634 (=> (not res!2691206) (not e!3970482))))

(assert (=> b!6558634 (= res!2691206 call!570440)))

(assert (=> b!6558634 (= e!3970483 e!3970482)))

(declare-fun b!6558639 () Bool)

(assert (=> b!6558639 (= e!3970480 e!3970483)))

(assert (=> b!6558639 (= c!1205056 (is-Union!16434 lt!2405035))))

(declare-fun b!6558640 () Bool)

(assert (=> b!6558640 (= e!3970482 call!570441)))

(assert (= (and d!2057831 (not res!2691210)) b!6558637))

(assert (= (and b!6558637 c!1205057) b!6558635))

(assert (= (and b!6558637 (not c!1205057)) b!6558639))

(assert (= (and b!6558635 res!2691208) b!6558633))

(assert (= (and b!6558639 c!1205056) b!6558634))

(assert (= (and b!6558639 (not c!1205056)) b!6558632))

(assert (= (and b!6558634 res!2691206) b!6558640))

(assert (= (and b!6558632 (not res!2691209)) b!6558638))

(assert (= (and b!6558638 res!2691207) b!6558636))

(assert (= (or b!6558640 b!6558636) bm!570436))

(assert (= (or b!6558634 b!6558638) bm!570435))

(assert (= (or b!6558633 bm!570436) bm!570437))

(declare-fun m!7340750 () Bool)

(assert (=> bm!570435 m!7340750))

(declare-fun m!7340752 () Bool)

(assert (=> bm!570437 m!7340752))

(declare-fun m!7340754 () Bool)

(assert (=> b!6558635 m!7340754))

(assert (=> b!6557947 d!2057831))

(declare-fun d!2057833 () Bool)

(assert (=> d!2057833 (= (isEmpty!37715 (t!379245 zl!343)) (is-Nil!65479 (t!379245 zl!343)))))

(assert (=> b!6557967 d!2057833))

(declare-fun d!2057835 () Bool)

(declare-fun c!1205058 () Bool)

(assert (=> d!2057835 (= c!1205058 (isEmpty!37720 (_2!36716 lt!2405004)))))

(declare-fun e!3970487 () Bool)

(assert (=> d!2057835 (= (matchZipper!2446 lt!2404987 (_2!36716 lt!2405004)) e!3970487)))

(declare-fun b!6558641 () Bool)

(assert (=> b!6558641 (= e!3970487 (nullableZipper!2179 lt!2404987))))

(declare-fun b!6558642 () Bool)

(assert (=> b!6558642 (= e!3970487 (matchZipper!2446 (derivationStepZipper!2400 lt!2404987 (head!13320 (_2!36716 lt!2405004))) (tail!12405 (_2!36716 lt!2405004))))))

(assert (= (and d!2057835 c!1205058) b!6558641))

(assert (= (and d!2057835 (not c!1205058)) b!6558642))

(assert (=> d!2057835 m!7340682))

(declare-fun m!7340756 () Bool)

(assert (=> b!6558641 m!7340756))

(assert (=> b!6558642 m!7340690))

(assert (=> b!6558642 m!7340690))

(declare-fun m!7340758 () Bool)

(assert (=> b!6558642 m!7340758))

(assert (=> b!6558642 m!7340684))

(assert (=> b!6558642 m!7340758))

(assert (=> b!6558642 m!7340684))

(declare-fun m!7340760 () Bool)

(assert (=> b!6558642 m!7340760))

(assert (=> b!6557971 d!2057835))

(declare-fun d!2057837 () Bool)

(assert (=> d!2057837 (= (flatMap!1939 lt!2404987 lambda!364634) (choose!48890 lt!2404987 lambda!364634))))

(declare-fun bs!1673897 () Bool)

(assert (= bs!1673897 d!2057837))

(declare-fun m!7340762 () Bool)

(assert (=> bs!1673897 m!7340762))

(assert (=> b!6557949 d!2057837))

(declare-fun d!2057839 () Bool)

(assert (=> d!2057839 (= (flatMap!1939 lt!2404987 lambda!364634) (dynLambda!26040 lambda!364634 lt!2405031))))

(declare-fun lt!2405310 () Unit!159071)

(assert (=> d!2057839 (= lt!2405310 (choose!48889 lt!2404987 lt!2405031 lambda!364634))))

(assert (=> d!2057839 (= lt!2404987 (set.insert lt!2405031 (as set.empty (Set Context!11636))))))

(assert (=> d!2057839 (= (lemmaFlatMapOnSingletonSet!1465 lt!2404987 lt!2405031 lambda!364634) lt!2405310)))

(declare-fun b_lambda!248123 () Bool)

(assert (=> (not b_lambda!248123) (not d!2057839)))

(declare-fun bs!1673898 () Bool)

(assert (= bs!1673898 d!2057839))

(assert (=> bs!1673898 m!7340076))

(declare-fun m!7340764 () Bool)

(assert (=> bs!1673898 m!7340764))

(declare-fun m!7340766 () Bool)

(assert (=> bs!1673898 m!7340766))

(assert (=> bs!1673898 m!7340062))

(assert (=> b!6557949 d!2057839))

(declare-fun d!2057841 () Bool)

(assert (=> d!2057841 (= (flatMap!1939 lt!2405013 lambda!364634) (choose!48890 lt!2405013 lambda!364634))))

(declare-fun bs!1673899 () Bool)

(assert (= bs!1673899 d!2057841))

(declare-fun m!7340768 () Bool)

(assert (=> bs!1673899 m!7340768))

(assert (=> b!6557949 d!2057841))

(declare-fun d!2057843 () Bool)

(declare-fun lt!2405311 () Regex!16434)

(assert (=> d!2057843 (validRegex!8170 lt!2405311)))

(assert (=> d!2057843 (= lt!2405311 (generalisedUnion!2278 (unfocusZipperList!1855 lt!2404983)))))

(assert (=> d!2057843 (= (unfocusZipper!2176 lt!2404983) lt!2405311)))

(declare-fun bs!1673900 () Bool)

(assert (= bs!1673900 d!2057843))

(declare-fun m!7340770 () Bool)

(assert (=> bs!1673900 m!7340770))

(declare-fun m!7340772 () Bool)

(assert (=> bs!1673900 m!7340772))

(assert (=> bs!1673900 m!7340772))

(declare-fun m!7340774 () Bool)

(assert (=> bs!1673900 m!7340774))

(assert (=> b!6557949 d!2057843))

(declare-fun b!6558643 () Bool)

(declare-fun e!3970490 () (Set Context!11636))

(declare-fun call!570443 () (Set Context!11636))

(assert (=> b!6558643 (= e!3970490 call!570443)))

(declare-fun d!2057845 () Bool)

(declare-fun c!1205059 () Bool)

(declare-fun e!3970488 () Bool)

(assert (=> d!2057845 (= c!1205059 e!3970488)))

(declare-fun res!2691211 () Bool)

(assert (=> d!2057845 (=> (not res!2691211) (not e!3970488))))

(assert (=> d!2057845 (= res!2691211 (is-Cons!65478 (exprs!6318 lt!2404979)))))

(declare-fun e!3970489 () (Set Context!11636))

(assert (=> d!2057845 (= (derivationStepZipperUp!1608 lt!2404979 (h!71925 s!2326)) e!3970489)))

(declare-fun b!6558644 () Bool)

(assert (=> b!6558644 (= e!3970488 (nullable!6427 (h!71926 (exprs!6318 lt!2404979))))))

(declare-fun b!6558645 () Bool)

(assert (=> b!6558645 (= e!3970490 (as set.empty (Set Context!11636)))))

(declare-fun bm!570438 () Bool)

(assert (=> bm!570438 (= call!570443 (derivationStepZipperDown!1682 (h!71926 (exprs!6318 lt!2404979)) (Context!11637 (t!379244 (exprs!6318 lt!2404979))) (h!71925 s!2326)))))

(declare-fun b!6558646 () Bool)

(assert (=> b!6558646 (= e!3970489 (set.union call!570443 (derivationStepZipperUp!1608 (Context!11637 (t!379244 (exprs!6318 lt!2404979))) (h!71925 s!2326))))))

(declare-fun b!6558647 () Bool)

(assert (=> b!6558647 (= e!3970489 e!3970490)))

(declare-fun c!1205060 () Bool)

(assert (=> b!6558647 (= c!1205060 (is-Cons!65478 (exprs!6318 lt!2404979)))))

(assert (= (and d!2057845 res!2691211) b!6558644))

(assert (= (and d!2057845 c!1205059) b!6558646))

(assert (= (and d!2057845 (not c!1205059)) b!6558647))

(assert (= (and b!6558647 c!1205060) b!6558643))

(assert (= (and b!6558647 (not c!1205060)) b!6558645))

(assert (= (or b!6558646 b!6558643) bm!570438))

(declare-fun m!7340776 () Bool)

(assert (=> b!6558644 m!7340776))

(declare-fun m!7340778 () Bool)

(assert (=> bm!570438 m!7340778))

(declare-fun m!7340780 () Bool)

(assert (=> b!6558646 m!7340780))

(assert (=> b!6557949 d!2057845))

(declare-fun d!2057847 () Bool)

(assert (=> d!2057847 (= (flatMap!1939 lt!2405013 lambda!364634) (dynLambda!26040 lambda!364634 lt!2404979))))

(declare-fun lt!2405312 () Unit!159071)

(assert (=> d!2057847 (= lt!2405312 (choose!48889 lt!2405013 lt!2404979 lambda!364634))))

(assert (=> d!2057847 (= lt!2405013 (set.insert lt!2404979 (as set.empty (Set Context!11636))))))

(assert (=> d!2057847 (= (lemmaFlatMapOnSingletonSet!1465 lt!2405013 lt!2404979 lambda!364634) lt!2405312)))

(declare-fun b_lambda!248125 () Bool)

(assert (=> (not b_lambda!248125) (not d!2057847)))

(declare-fun bs!1673901 () Bool)

(assert (= bs!1673901 d!2057847))

(assert (=> bs!1673901 m!7340072))

(declare-fun m!7340782 () Bool)

(assert (=> bs!1673901 m!7340782))

(declare-fun m!7340784 () Bool)

(assert (=> bs!1673901 m!7340784))

(assert (=> bs!1673901 m!7340070))

(assert (=> b!6557949 d!2057847))

(declare-fun b!6558648 () Bool)

(declare-fun e!3970493 () (Set Context!11636))

(declare-fun call!570444 () (Set Context!11636))

(assert (=> b!6558648 (= e!3970493 call!570444)))

(declare-fun d!2057849 () Bool)

(declare-fun c!1205061 () Bool)

(declare-fun e!3970491 () Bool)

(assert (=> d!2057849 (= c!1205061 e!3970491)))

(declare-fun res!2691212 () Bool)

(assert (=> d!2057849 (=> (not res!2691212) (not e!3970491))))

(assert (=> d!2057849 (= res!2691212 (is-Cons!65478 (exprs!6318 lt!2405031)))))

(declare-fun e!3970492 () (Set Context!11636))

(assert (=> d!2057849 (= (derivationStepZipperUp!1608 lt!2405031 (h!71925 s!2326)) e!3970492)))

(declare-fun b!6558649 () Bool)

(assert (=> b!6558649 (= e!3970491 (nullable!6427 (h!71926 (exprs!6318 lt!2405031))))))

(declare-fun b!6558650 () Bool)

(assert (=> b!6558650 (= e!3970493 (as set.empty (Set Context!11636)))))

(declare-fun bm!570439 () Bool)

(assert (=> bm!570439 (= call!570444 (derivationStepZipperDown!1682 (h!71926 (exprs!6318 lt!2405031)) (Context!11637 (t!379244 (exprs!6318 lt!2405031))) (h!71925 s!2326)))))

(declare-fun b!6558651 () Bool)

(assert (=> b!6558651 (= e!3970492 (set.union call!570444 (derivationStepZipperUp!1608 (Context!11637 (t!379244 (exprs!6318 lt!2405031))) (h!71925 s!2326))))))

(declare-fun b!6558652 () Bool)

(assert (=> b!6558652 (= e!3970492 e!3970493)))

(declare-fun c!1205062 () Bool)

(assert (=> b!6558652 (= c!1205062 (is-Cons!65478 (exprs!6318 lt!2405031)))))

(assert (= (and d!2057849 res!2691212) b!6558649))

(assert (= (and d!2057849 c!1205061) b!6558651))

(assert (= (and d!2057849 (not c!1205061)) b!6558652))

(assert (= (and b!6558652 c!1205062) b!6558648))

(assert (= (and b!6558652 (not c!1205062)) b!6558650))

(assert (= (or b!6558651 b!6558648) bm!570439))

(declare-fun m!7340786 () Bool)

(assert (=> b!6558649 m!7340786))

(declare-fun m!7340788 () Bool)

(assert (=> bm!570439 m!7340788))

(declare-fun m!7340790 () Bool)

(assert (=> b!6558651 m!7340790))

(assert (=> b!6557949 d!2057849))

(assert (=> b!6557954 d!2057735))

(declare-fun d!2057851 () Bool)

(declare-fun e!3970496 () Bool)

(assert (=> d!2057851 e!3970496))

(declare-fun res!2691215 () Bool)

(assert (=> d!2057851 (=> (not res!2691215) (not e!3970496))))

(declare-fun lt!2405315 () List!65603)

(declare-fun noDuplicate!2240 (List!65603) Bool)

(assert (=> d!2057851 (= res!2691215 (noDuplicate!2240 lt!2405315))))

(declare-fun choose!48909 ((Set Context!11636)) List!65603)

(assert (=> d!2057851 (= lt!2405315 (choose!48909 z!1189))))

(assert (=> d!2057851 (= (toList!10218 z!1189) lt!2405315)))

(declare-fun b!6558655 () Bool)

(declare-fun content!12588 (List!65603) (Set Context!11636))

(assert (=> b!6558655 (= e!3970496 (= (content!12588 lt!2405315) z!1189))))

(assert (= (and d!2057851 res!2691215) b!6558655))

(declare-fun m!7340792 () Bool)

(assert (=> d!2057851 m!7340792))

(declare-fun m!7340794 () Bool)

(assert (=> d!2057851 m!7340794))

(declare-fun m!7340796 () Bool)

(assert (=> b!6558655 m!7340796))

(assert (=> b!6557974 d!2057851))

(declare-fun bs!1673902 () Bool)

(declare-fun b!6558661 () Bool)

(assert (= bs!1673902 (and b!6558661 d!2057815)))

(declare-fun lambda!364713 () Int)

(assert (=> bs!1673902 (not (= lambda!364713 lambda!364705))))

(declare-fun bs!1673903 () Bool)

(assert (= bs!1673903 (and b!6558661 d!2057817)))

(assert (=> bs!1673903 (not (= lambda!364713 lambda!364706))))

(declare-fun bs!1673904 () Bool)

(assert (= bs!1673904 (and b!6558661 b!6557965)))

(assert (=> bs!1673904 (not (= lambda!364713 lambda!364637))))

(declare-fun bs!1673905 () Bool)

(assert (= bs!1673905 (and b!6558661 b!6558488)))

(assert (=> bs!1673905 (= (and (= (reg!16763 r!7292) (reg!16763 lt!2405034)) (= r!7292 lt!2405034)) (= lambda!364713 lambda!364691))))

(declare-fun bs!1673906 () Bool)

(assert (= bs!1673906 (and b!6558661 b!6557976)))

(assert (=> bs!1673906 (not (= lambda!364713 lambda!364639))))

(declare-fun bs!1673907 () Bool)

(assert (= bs!1673907 (and b!6558661 b!6557986)))

(assert (=> bs!1673907 (not (= lambda!364713 lambda!364633))))

(declare-fun bs!1673908 () Bool)

(assert (= bs!1673908 (and b!6558661 d!2057775)))

(assert (=> bs!1673908 (not (= lambda!364713 lambda!364697))))

(assert (=> bs!1673907 (not (= lambda!364713 lambda!364632))))

(assert (=> bs!1673904 (not (= lambda!364713 lambda!364638))))

(declare-fun bs!1673909 () Bool)

(assert (= bs!1673909 (and b!6558661 b!6558617)))

(assert (=> bs!1673909 (not (= lambda!364713 lambda!364712))))

(declare-fun bs!1673910 () Bool)

(assert (= bs!1673910 (and b!6558661 b!6558612)))

(assert (=> bs!1673910 (= (and (= (reg!16763 r!7292) (reg!16763 lt!2405019)) (= r!7292 lt!2405019)) (= lambda!364713 lambda!364711))))

(declare-fun bs!1673911 () Bool)

(assert (= bs!1673911 (and b!6558661 d!2057787)))

(assert (=> bs!1673911 (not (= lambda!364713 lambda!364701))))

(assert (=> bs!1673908 (not (= lambda!364713 lambda!364698))))

(assert (=> bs!1673903 (not (= lambda!364713 lambda!364707))))

(declare-fun bs!1673912 () Bool)

(assert (= bs!1673912 (and b!6558661 b!6558493)))

(assert (=> bs!1673912 (not (= lambda!364713 lambda!364692))))

(assert (=> b!6558661 true))

(assert (=> b!6558661 true))

(declare-fun bs!1673913 () Bool)

(declare-fun b!6558666 () Bool)

(assert (= bs!1673913 (and b!6558666 d!2057815)))

(declare-fun lambda!364714 () Int)

(assert (=> bs!1673913 (not (= lambda!364714 lambda!364705))))

(declare-fun bs!1673914 () Bool)

(assert (= bs!1673914 (and b!6558666 b!6558661)))

(assert (=> bs!1673914 (not (= lambda!364714 lambda!364713))))

(declare-fun bs!1673915 () Bool)

(assert (= bs!1673915 (and b!6558666 d!2057817)))

(assert (=> bs!1673915 (not (= lambda!364714 lambda!364706))))

(declare-fun bs!1673916 () Bool)

(assert (= bs!1673916 (and b!6558666 b!6557965)))

(assert (=> bs!1673916 (not (= lambda!364714 lambda!364637))))

(declare-fun bs!1673917 () Bool)

(assert (= bs!1673917 (and b!6558666 b!6558488)))

(assert (=> bs!1673917 (not (= lambda!364714 lambda!364691))))

(declare-fun bs!1673918 () Bool)

(assert (= bs!1673918 (and b!6558666 b!6557976)))

(assert (=> bs!1673918 (not (= lambda!364714 lambda!364639))))

(declare-fun bs!1673919 () Bool)

(assert (= bs!1673919 (and b!6558666 b!6557986)))

(assert (=> bs!1673919 (= lambda!364714 lambda!364633)))

(declare-fun bs!1673920 () Bool)

(assert (= bs!1673920 (and b!6558666 d!2057775)))

(assert (=> bs!1673920 (not (= lambda!364714 lambda!364697))))

(assert (=> bs!1673919 (not (= lambda!364714 lambda!364632))))

(assert (=> bs!1673916 (= (= (regOne!33380 r!7292) lt!2404982) (= lambda!364714 lambda!364638))))

(declare-fun bs!1673921 () Bool)

(assert (= bs!1673921 (and b!6558666 b!6558617)))

(assert (=> bs!1673921 (= (and (= (regOne!33380 r!7292) (regOne!33380 lt!2405019)) (= (regTwo!33380 r!7292) (regTwo!33380 lt!2405019))) (= lambda!364714 lambda!364712))))

(declare-fun bs!1673922 () Bool)

(assert (= bs!1673922 (and b!6558666 b!6558612)))

(assert (=> bs!1673922 (not (= lambda!364714 lambda!364711))))

(declare-fun bs!1673923 () Bool)

(assert (= bs!1673923 (and b!6558666 d!2057787)))

(assert (=> bs!1673923 (not (= lambda!364714 lambda!364701))))

(assert (=> bs!1673920 (= (= (regOne!33380 r!7292) lt!2404982) (= lambda!364714 lambda!364698))))

(assert (=> bs!1673915 (= lambda!364714 lambda!364707)))

(declare-fun bs!1673924 () Bool)

(assert (= bs!1673924 (and b!6558666 b!6558493)))

(assert (=> bs!1673924 (= (and (= (regOne!33380 r!7292) (regOne!33380 lt!2405034)) (= (regTwo!33380 r!7292) (regTwo!33380 lt!2405034))) (= lambda!364714 lambda!364692))))

(assert (=> b!6558666 true))

(assert (=> b!6558666 true))

(declare-fun b!6558656 () Bool)

(declare-fun c!1205064 () Bool)

(assert (=> b!6558656 (= c!1205064 (is-Union!16434 r!7292))))

(declare-fun e!3970502 () Bool)

(declare-fun e!3970499 () Bool)

(assert (=> b!6558656 (= e!3970502 e!3970499)))

(declare-fun b!6558657 () Bool)

(declare-fun e!3970497 () Bool)

(declare-fun e!3970500 () Bool)

(assert (=> b!6558657 (= e!3970497 e!3970500)))

(declare-fun res!2691216 () Bool)

(assert (=> b!6558657 (= res!2691216 (not (is-EmptyLang!16434 r!7292)))))

(assert (=> b!6558657 (=> (not res!2691216) (not e!3970500))))

(declare-fun b!6558659 () Bool)

(declare-fun e!3970498 () Bool)

(assert (=> b!6558659 (= e!3970498 (matchRSpec!3535 (regTwo!33381 r!7292) s!2326))))

(declare-fun c!1205065 () Bool)

(declare-fun bm!570440 () Bool)

(declare-fun call!570445 () Bool)

(assert (=> bm!570440 (= call!570445 (Exists!3504 (ite c!1205065 lambda!364713 lambda!364714)))))

(declare-fun bm!570441 () Bool)

(declare-fun call!570446 () Bool)

(assert (=> bm!570441 (= call!570446 (isEmpty!37720 s!2326))))

(declare-fun b!6558660 () Bool)

(declare-fun c!1205066 () Bool)

(assert (=> b!6558660 (= c!1205066 (is-ElementMatch!16434 r!7292))))

(assert (=> b!6558660 (= e!3970500 e!3970502)))

(declare-fun e!3970503 () Bool)

(assert (=> b!6558661 (= e!3970503 call!570445)))

(declare-fun b!6558662 () Bool)

(assert (=> b!6558662 (= e!3970499 e!3970498)))

(declare-fun res!2691217 () Bool)

(assert (=> b!6558662 (= res!2691217 (matchRSpec!3535 (regOne!33381 r!7292) s!2326))))

(assert (=> b!6558662 (=> res!2691217 e!3970498)))

(declare-fun b!6558663 () Bool)

(declare-fun res!2691218 () Bool)

(assert (=> b!6558663 (=> res!2691218 e!3970503)))

(assert (=> b!6558663 (= res!2691218 call!570446)))

(declare-fun e!3970501 () Bool)

(assert (=> b!6558663 (= e!3970501 e!3970503)))

(declare-fun b!6558664 () Bool)

(assert (=> b!6558664 (= e!3970502 (= s!2326 (Cons!65477 (c!1204909 r!7292) Nil!65477)))))

(declare-fun b!6558658 () Bool)

(assert (=> b!6558658 (= e!3970497 call!570446)))

(declare-fun d!2057853 () Bool)

(declare-fun c!1205063 () Bool)

(assert (=> d!2057853 (= c!1205063 (is-EmptyExpr!16434 r!7292))))

(assert (=> d!2057853 (= (matchRSpec!3535 r!7292 s!2326) e!3970497)))

(declare-fun b!6558665 () Bool)

(assert (=> b!6558665 (= e!3970499 e!3970501)))

(assert (=> b!6558665 (= c!1205065 (is-Star!16434 r!7292))))

(assert (=> b!6558666 (= e!3970501 call!570445)))

(assert (= (and d!2057853 c!1205063) b!6558658))

(assert (= (and d!2057853 (not c!1205063)) b!6558657))

(assert (= (and b!6558657 res!2691216) b!6558660))

(assert (= (and b!6558660 c!1205066) b!6558664))

(assert (= (and b!6558660 (not c!1205066)) b!6558656))

(assert (= (and b!6558656 c!1205064) b!6558662))

(assert (= (and b!6558656 (not c!1205064)) b!6558665))

(assert (= (and b!6558662 (not res!2691217)) b!6558659))

(assert (= (and b!6558665 c!1205065) b!6558663))

(assert (= (and b!6558665 (not c!1205065)) b!6558666))

(assert (= (and b!6558663 (not res!2691218)) b!6558661))

(assert (= (or b!6558661 b!6558666) bm!570440))

(assert (= (or b!6558658 b!6558663) bm!570441))

(declare-fun m!7340798 () Bool)

(assert (=> b!6558659 m!7340798))

(declare-fun m!7340800 () Bool)

(assert (=> bm!570440 m!7340800))

(assert (=> bm!570441 m!7340512))

(declare-fun m!7340802 () Bool)

(assert (=> b!6558662 m!7340802))

(assert (=> b!6557952 d!2057853))

(declare-fun b!6558667 () Bool)

(declare-fun res!2691226 () Bool)

(declare-fun e!3970509 () Bool)

(assert (=> b!6558667 (=> res!2691226 e!3970509)))

(assert (=> b!6558667 (= res!2691226 (not (is-ElementMatch!16434 r!7292)))))

(declare-fun e!3970506 () Bool)

(assert (=> b!6558667 (= e!3970506 e!3970509)))

(declare-fun b!6558668 () Bool)

(declare-fun res!2691222 () Bool)

(assert (=> b!6558668 (=> res!2691222 e!3970509)))

(declare-fun e!3970510 () Bool)

(assert (=> b!6558668 (= res!2691222 e!3970510)))

(declare-fun res!2691224 () Bool)

(assert (=> b!6558668 (=> (not res!2691224) (not e!3970510))))

(declare-fun lt!2405316 () Bool)

(assert (=> b!6558668 (= res!2691224 lt!2405316)))

(declare-fun b!6558669 () Bool)

(declare-fun e!3970504 () Bool)

(declare-fun e!3970508 () Bool)

(assert (=> b!6558669 (= e!3970504 e!3970508)))

(declare-fun res!2691225 () Bool)

(assert (=> b!6558669 (=> res!2691225 e!3970508)))

(declare-fun call!570447 () Bool)

(assert (=> b!6558669 (= res!2691225 call!570447)))

(declare-fun b!6558670 () Bool)

(assert (=> b!6558670 (= e!3970508 (not (= (head!13320 s!2326) (c!1204909 r!7292))))))

(declare-fun b!6558671 () Bool)

(declare-fun e!3970505 () Bool)

(assert (=> b!6558671 (= e!3970505 (matchR!8617 (derivativeStep!5118 r!7292 (head!13320 s!2326)) (tail!12405 s!2326)))))

(declare-fun b!6558672 () Bool)

(assert (=> b!6558672 (= e!3970509 e!3970504)))

(declare-fun res!2691220 () Bool)

(assert (=> b!6558672 (=> (not res!2691220) (not e!3970504))))

(assert (=> b!6558672 (= res!2691220 (not lt!2405316))))

(declare-fun b!6558673 () Bool)

(declare-fun e!3970507 () Bool)

(assert (=> b!6558673 (= e!3970507 e!3970506)))

(declare-fun c!1205069 () Bool)

(assert (=> b!6558673 (= c!1205069 (is-EmptyLang!16434 r!7292))))

(declare-fun b!6558675 () Bool)

(assert (=> b!6558675 (= e!3970506 (not lt!2405316))))

(declare-fun b!6558676 () Bool)

(assert (=> b!6558676 (= e!3970510 (= (head!13320 s!2326) (c!1204909 r!7292)))))

(declare-fun b!6558677 () Bool)

(assert (=> b!6558677 (= e!3970507 (= lt!2405316 call!570447))))

(declare-fun b!6558678 () Bool)

(declare-fun res!2691221 () Bool)

(assert (=> b!6558678 (=> (not res!2691221) (not e!3970510))))

(assert (=> b!6558678 (= res!2691221 (isEmpty!37720 (tail!12405 s!2326)))))

(declare-fun b!6558679 () Bool)

(assert (=> b!6558679 (= e!3970505 (nullable!6427 r!7292))))

(declare-fun b!6558680 () Bool)

(declare-fun res!2691219 () Bool)

(assert (=> b!6558680 (=> (not res!2691219) (not e!3970510))))

(assert (=> b!6558680 (= res!2691219 (not call!570447))))

(declare-fun bm!570442 () Bool)

(assert (=> bm!570442 (= call!570447 (isEmpty!37720 s!2326))))

(declare-fun b!6558674 () Bool)

(declare-fun res!2691223 () Bool)

(assert (=> b!6558674 (=> res!2691223 e!3970508)))

(assert (=> b!6558674 (= res!2691223 (not (isEmpty!37720 (tail!12405 s!2326))))))

(declare-fun d!2057855 () Bool)

(assert (=> d!2057855 e!3970507))

(declare-fun c!1205067 () Bool)

(assert (=> d!2057855 (= c!1205067 (is-EmptyExpr!16434 r!7292))))

(assert (=> d!2057855 (= lt!2405316 e!3970505)))

(declare-fun c!1205068 () Bool)

(assert (=> d!2057855 (= c!1205068 (isEmpty!37720 s!2326))))

(assert (=> d!2057855 (validRegex!8170 r!7292)))

(assert (=> d!2057855 (= (matchR!8617 r!7292 s!2326) lt!2405316)))

(assert (= (and d!2057855 c!1205068) b!6558679))

(assert (= (and d!2057855 (not c!1205068)) b!6558671))

(assert (= (and d!2057855 c!1205067) b!6558677))

(assert (= (and d!2057855 (not c!1205067)) b!6558673))

(assert (= (and b!6558673 c!1205069) b!6558675))

(assert (= (and b!6558673 (not c!1205069)) b!6558667))

(assert (= (and b!6558667 (not res!2691226)) b!6558668))

(assert (= (and b!6558668 res!2691224) b!6558680))

(assert (= (and b!6558680 res!2691219) b!6558678))

(assert (= (and b!6558678 res!2691221) b!6558676))

(assert (= (and b!6558668 (not res!2691222)) b!6558672))

(assert (= (and b!6558672 res!2691220) b!6558669))

(assert (= (and b!6558669 (not res!2691225)) b!6558674))

(assert (= (and b!6558674 (not res!2691223)) b!6558670))

(assert (= (or b!6558677 b!6558669 b!6558680) bm!570442))

(assert (=> bm!570442 m!7340512))

(assert (=> b!6558678 m!7340520))

(assert (=> b!6558678 m!7340520))

(assert (=> b!6558678 m!7340640))

(declare-fun m!7340804 () Bool)

(assert (=> b!6558679 m!7340804))

(assert (=> b!6558671 m!7340516))

(assert (=> b!6558671 m!7340516))

(declare-fun m!7340806 () Bool)

(assert (=> b!6558671 m!7340806))

(assert (=> b!6558671 m!7340520))

(assert (=> b!6558671 m!7340806))

(assert (=> b!6558671 m!7340520))

(declare-fun m!7340808 () Bool)

(assert (=> b!6558671 m!7340808))

(assert (=> b!6558674 m!7340520))

(assert (=> b!6558674 m!7340520))

(assert (=> b!6558674 m!7340640))

(assert (=> b!6558676 m!7340516))

(assert (=> d!2057855 m!7340512))

(assert (=> d!2057855 m!7340060))

(assert (=> b!6558670 m!7340516))

(assert (=> b!6557952 d!2057855))

(declare-fun d!2057857 () Bool)

(assert (=> d!2057857 (= (matchR!8617 r!7292 s!2326) (matchRSpec!3535 r!7292 s!2326))))

(declare-fun lt!2405317 () Unit!159071)

(assert (=> d!2057857 (= lt!2405317 (choose!48903 r!7292 s!2326))))

(assert (=> d!2057857 (validRegex!8170 r!7292)))

(assert (=> d!2057857 (= (mainMatchTheorem!3535 r!7292 s!2326) lt!2405317)))

(declare-fun bs!1673925 () Bool)

(assert (= bs!1673925 d!2057857))

(assert (=> bs!1673925 m!7339992))

(assert (=> bs!1673925 m!7339990))

(declare-fun m!7340810 () Bool)

(assert (=> bs!1673925 m!7340810))

(assert (=> bs!1673925 m!7340060))

(assert (=> b!6557952 d!2057857))

(declare-fun d!2057859 () Bool)

(assert (=> d!2057859 (= (flatMap!1939 lt!2404986 lambda!364634) (choose!48890 lt!2404986 lambda!364634))))

(declare-fun bs!1673926 () Bool)

(assert (= bs!1673926 d!2057859))

(declare-fun m!7340812 () Bool)

(assert (=> bs!1673926 m!7340812))

(assert (=> b!6557972 d!2057859))

(declare-fun b!6558681 () Bool)

(declare-fun e!3970513 () (Set Context!11636))

(declare-fun call!570448 () (Set Context!11636))

(assert (=> b!6558681 (= e!3970513 call!570448)))

(declare-fun d!2057861 () Bool)

(declare-fun c!1205070 () Bool)

(declare-fun e!3970511 () Bool)

(assert (=> d!2057861 (= c!1205070 e!3970511)))

(declare-fun res!2691227 () Bool)

(assert (=> d!2057861 (=> (not res!2691227) (not e!3970511))))

(assert (=> d!2057861 (= res!2691227 (is-Cons!65478 (exprs!6318 lt!2405022)))))

(declare-fun e!3970512 () (Set Context!11636))

(assert (=> d!2057861 (= (derivationStepZipperUp!1608 lt!2405022 (h!71925 s!2326)) e!3970512)))

(declare-fun b!6558682 () Bool)

(assert (=> b!6558682 (= e!3970511 (nullable!6427 (h!71926 (exprs!6318 lt!2405022))))))

(declare-fun b!6558683 () Bool)

(assert (=> b!6558683 (= e!3970513 (as set.empty (Set Context!11636)))))

(declare-fun bm!570443 () Bool)

(assert (=> bm!570443 (= call!570448 (derivationStepZipperDown!1682 (h!71926 (exprs!6318 lt!2405022)) (Context!11637 (t!379244 (exprs!6318 lt!2405022))) (h!71925 s!2326)))))

(declare-fun b!6558684 () Bool)

(assert (=> b!6558684 (= e!3970512 (set.union call!570448 (derivationStepZipperUp!1608 (Context!11637 (t!379244 (exprs!6318 lt!2405022))) (h!71925 s!2326))))))

(declare-fun b!6558685 () Bool)

(assert (=> b!6558685 (= e!3970512 e!3970513)))

(declare-fun c!1205071 () Bool)

(assert (=> b!6558685 (= c!1205071 (is-Cons!65478 (exprs!6318 lt!2405022)))))

(assert (= (and d!2057861 res!2691227) b!6558682))

(assert (= (and d!2057861 c!1205070) b!6558684))

(assert (= (and d!2057861 (not c!1205070)) b!6558685))

(assert (= (and b!6558685 c!1205071) b!6558681))

(assert (= (and b!6558685 (not c!1205071)) b!6558683))

(assert (= (or b!6558684 b!6558681) bm!570443))

(declare-fun m!7340814 () Bool)

(assert (=> b!6558682 m!7340814))

(declare-fun m!7340816 () Bool)

(assert (=> bm!570443 m!7340816))

(declare-fun m!7340818 () Bool)

(assert (=> b!6558684 m!7340818))

(assert (=> b!6557972 d!2057861))

(declare-fun d!2057863 () Bool)

(assert (=> d!2057863 (= (flatMap!1939 lt!2404986 lambda!364634) (dynLambda!26040 lambda!364634 lt!2405022))))

(declare-fun lt!2405318 () Unit!159071)

(assert (=> d!2057863 (= lt!2405318 (choose!48889 lt!2404986 lt!2405022 lambda!364634))))

(assert (=> d!2057863 (= lt!2404986 (set.insert lt!2405022 (as set.empty (Set Context!11636))))))

(assert (=> d!2057863 (= (lemmaFlatMapOnSingletonSet!1465 lt!2404986 lt!2405022 lambda!364634) lt!2405318)))

(declare-fun b_lambda!248127 () Bool)

(assert (=> (not b_lambda!248127) (not d!2057863)))

(declare-fun bs!1673927 () Bool)

(assert (= bs!1673927 d!2057863))

(assert (=> bs!1673927 m!7340034))

(declare-fun m!7340820 () Bool)

(assert (=> bs!1673927 m!7340820))

(declare-fun m!7340822 () Bool)

(assert (=> bs!1673927 m!7340822))

(assert (=> bs!1673927 m!7340036))

(assert (=> b!6557972 d!2057863))

(declare-fun bs!1673928 () Bool)

(declare-fun d!2057865 () Bool)

(assert (= bs!1673928 (and d!2057865 b!6557983)))

(declare-fun lambda!364717 () Int)

(assert (=> bs!1673928 (= lambda!364717 lambda!364634)))

(assert (=> d!2057865 true))

(assert (=> d!2057865 (= (derivationStepZipper!2400 lt!2404986 (h!71925 s!2326)) (flatMap!1939 lt!2404986 lambda!364717))))

(declare-fun bs!1673929 () Bool)

(assert (= bs!1673929 d!2057865))

(declare-fun m!7340824 () Bool)

(assert (=> bs!1673929 m!7340824))

(assert (=> b!6557972 d!2057865))

(assert (=> b!6557956 d!2057729))

(declare-fun bm!570444 () Bool)

(declare-fun call!570449 () Bool)

(declare-fun c!1205074 () Bool)

(assert (=> bm!570444 (= call!570449 (validRegex!8170 (ite c!1205074 (regOne!33381 (reg!16763 (regOne!33380 r!7292))) (regOne!33380 (reg!16763 (regOne!33380 r!7292))))))))

(declare-fun b!6558688 () Bool)

(declare-fun res!2691231 () Bool)

(declare-fun e!3970520 () Bool)

(assert (=> b!6558688 (=> res!2691231 e!3970520)))

(assert (=> b!6558688 (= res!2691231 (not (is-Concat!25279 (reg!16763 (regOne!33380 r!7292)))))))

(declare-fun e!3970517 () Bool)

(assert (=> b!6558688 (= e!3970517 e!3970520)))

(declare-fun b!6558689 () Bool)

(declare-fun e!3970518 () Bool)

(declare-fun call!570451 () Bool)

(assert (=> b!6558689 (= e!3970518 call!570451)))

(declare-fun bm!570445 () Bool)

(declare-fun call!570450 () Bool)

(assert (=> bm!570445 (= call!570450 call!570451)))

(declare-fun bm!570446 () Bool)

(declare-fun c!1205075 () Bool)

(assert (=> bm!570446 (= call!570451 (validRegex!8170 (ite c!1205075 (reg!16763 (reg!16763 (regOne!33380 r!7292))) (ite c!1205074 (regTwo!33381 (reg!16763 (regOne!33380 r!7292))) (regTwo!33380 (reg!16763 (regOne!33380 r!7292)))))))))

(declare-fun b!6558691 () Bool)

(declare-fun e!3970514 () Bool)

(assert (=> b!6558691 (= e!3970514 e!3970518)))

(declare-fun res!2691230 () Bool)

(assert (=> b!6558691 (= res!2691230 (not (nullable!6427 (reg!16763 (reg!16763 (regOne!33380 r!7292))))))))

(assert (=> b!6558691 (=> (not res!2691230) (not e!3970518))))

(declare-fun b!6558692 () Bool)

(declare-fun e!3970519 () Bool)

(assert (=> b!6558692 (= e!3970519 call!570450)))

(declare-fun b!6558693 () Bool)

(declare-fun e!3970515 () Bool)

(assert (=> b!6558693 (= e!3970515 e!3970514)))

(assert (=> b!6558693 (= c!1205075 (is-Star!16434 (reg!16763 (regOne!33380 r!7292))))))

(declare-fun b!6558694 () Bool)

(assert (=> b!6558694 (= e!3970520 e!3970519)))

(declare-fun res!2691229 () Bool)

(assert (=> b!6558694 (=> (not res!2691229) (not e!3970519))))

(assert (=> b!6558694 (= res!2691229 call!570449)))

(declare-fun d!2057867 () Bool)

(declare-fun res!2691232 () Bool)

(assert (=> d!2057867 (=> res!2691232 e!3970515)))

(assert (=> d!2057867 (= res!2691232 (is-ElementMatch!16434 (reg!16763 (regOne!33380 r!7292))))))

(assert (=> d!2057867 (= (validRegex!8170 (reg!16763 (regOne!33380 r!7292))) e!3970515)))

(declare-fun b!6558690 () Bool)

(declare-fun res!2691228 () Bool)

(declare-fun e!3970516 () Bool)

(assert (=> b!6558690 (=> (not res!2691228) (not e!3970516))))

(assert (=> b!6558690 (= res!2691228 call!570449)))

(assert (=> b!6558690 (= e!3970517 e!3970516)))

(declare-fun b!6558695 () Bool)

(assert (=> b!6558695 (= e!3970514 e!3970517)))

(assert (=> b!6558695 (= c!1205074 (is-Union!16434 (reg!16763 (regOne!33380 r!7292))))))

(declare-fun b!6558696 () Bool)

(assert (=> b!6558696 (= e!3970516 call!570450)))

(assert (= (and d!2057867 (not res!2691232)) b!6558693))

(assert (= (and b!6558693 c!1205075) b!6558691))

(assert (= (and b!6558693 (not c!1205075)) b!6558695))

(assert (= (and b!6558691 res!2691230) b!6558689))

(assert (= (and b!6558695 c!1205074) b!6558690))

(assert (= (and b!6558695 (not c!1205074)) b!6558688))

(assert (= (and b!6558690 res!2691228) b!6558696))

(assert (= (and b!6558688 (not res!2691231)) b!6558694))

(assert (= (and b!6558694 res!2691229) b!6558692))

(assert (= (or b!6558696 b!6558692) bm!570445))

(assert (= (or b!6558690 b!6558694) bm!570444))

(assert (= (or b!6558689 bm!570445) bm!570446))

(declare-fun m!7340826 () Bool)

(assert (=> bm!570444 m!7340826))

(declare-fun m!7340828 () Bool)

(assert (=> bm!570446 m!7340828))

(declare-fun m!7340830 () Bool)

(assert (=> b!6558691 m!7340830))

(assert (=> b!6557976 d!2057867))

(declare-fun d!2057869 () Bool)

(assert (=> d!2057869 (= (isDefined!13028 (findConcatSeparation!2739 (reg!16763 (regOne!33380 r!7292)) lt!2405035 Nil!65477 (_1!36716 lt!2405023) (_1!36716 lt!2405023))) (not (isEmpty!37719 (findConcatSeparation!2739 (reg!16763 (regOne!33380 r!7292)) lt!2405035 Nil!65477 (_1!36716 lt!2405023) (_1!36716 lt!2405023)))))))

(declare-fun bs!1673930 () Bool)

(assert (= bs!1673930 d!2057869))

(assert (=> bs!1673930 m!7340126))

(declare-fun m!7340832 () Bool)

(assert (=> bs!1673930 m!7340832))

(assert (=> b!6557976 d!2057869))

(declare-fun bs!1673931 () Bool)

(declare-fun d!2057871 () Bool)

(assert (= bs!1673931 (and d!2057871 d!2057815)))

(declare-fun lambda!364718 () Int)

(assert (=> bs!1673931 (= (and (= (_1!36716 lt!2405023) s!2326) (= (reg!16763 (regOne!33380 r!7292)) (regOne!33380 r!7292)) (= lt!2405035 (regTwo!33380 r!7292))) (= lambda!364718 lambda!364705))))

(declare-fun bs!1673932 () Bool)

(assert (= bs!1673932 (and d!2057871 b!6558661)))

(assert (=> bs!1673932 (not (= lambda!364718 lambda!364713))))

(declare-fun bs!1673933 () Bool)

(assert (= bs!1673933 (and d!2057871 d!2057817)))

(assert (=> bs!1673933 (= (and (= (_1!36716 lt!2405023) s!2326) (= (reg!16763 (regOne!33380 r!7292)) (regOne!33380 r!7292)) (= lt!2405035 (regTwo!33380 r!7292))) (= lambda!364718 lambda!364706))))

(declare-fun bs!1673934 () Bool)

(assert (= bs!1673934 (and d!2057871 b!6557965)))

(assert (=> bs!1673934 (= (and (= (_1!36716 lt!2405023) s!2326) (= (reg!16763 (regOne!33380 r!7292)) lt!2404982) (= lt!2405035 (regTwo!33380 r!7292))) (= lambda!364718 lambda!364637))))

(declare-fun bs!1673935 () Bool)

(assert (= bs!1673935 (and d!2057871 b!6558488)))

(assert (=> bs!1673935 (not (= lambda!364718 lambda!364691))))

(declare-fun bs!1673936 () Bool)

(assert (= bs!1673936 (and d!2057871 b!6557976)))

(assert (=> bs!1673936 (= lambda!364718 lambda!364639)))

(declare-fun bs!1673937 () Bool)

(assert (= bs!1673937 (and d!2057871 b!6557986)))

(assert (=> bs!1673937 (not (= lambda!364718 lambda!364633))))

(declare-fun bs!1673938 () Bool)

(assert (= bs!1673938 (and d!2057871 d!2057775)))

(assert (=> bs!1673938 (= (and (= (_1!36716 lt!2405023) s!2326) (= (reg!16763 (regOne!33380 r!7292)) lt!2404982) (= lt!2405035 (regTwo!33380 r!7292))) (= lambda!364718 lambda!364697))))

(assert (=> bs!1673937 (= (and (= (_1!36716 lt!2405023) s!2326) (= (reg!16763 (regOne!33380 r!7292)) (regOne!33380 r!7292)) (= lt!2405035 (regTwo!33380 r!7292))) (= lambda!364718 lambda!364632))))

(declare-fun bs!1673939 () Bool)

(assert (= bs!1673939 (and d!2057871 b!6558617)))

(assert (=> bs!1673939 (not (= lambda!364718 lambda!364712))))

(declare-fun bs!1673940 () Bool)

(assert (= bs!1673940 (and d!2057871 b!6558612)))

(assert (=> bs!1673940 (not (= lambda!364718 lambda!364711))))

(declare-fun bs!1673941 () Bool)

(assert (= bs!1673941 (and d!2057871 d!2057787)))

(assert (=> bs!1673941 (= (and (= (_1!36716 lt!2405023) s!2326) (= (reg!16763 (regOne!33380 r!7292)) lt!2404982) (= lt!2405035 (regTwo!33380 r!7292))) (= lambda!364718 lambda!364701))))

(assert (=> bs!1673938 (not (= lambda!364718 lambda!364698))))

(assert (=> bs!1673933 (not (= lambda!364718 lambda!364707))))

(declare-fun bs!1673942 () Bool)

(assert (= bs!1673942 (and d!2057871 b!6558493)))

(assert (=> bs!1673942 (not (= lambda!364718 lambda!364692))))

(assert (=> bs!1673934 (not (= lambda!364718 lambda!364638))))

(declare-fun bs!1673943 () Bool)

(assert (= bs!1673943 (and d!2057871 b!6558666)))

(assert (=> bs!1673943 (not (= lambda!364718 lambda!364714))))

(assert (=> d!2057871 true))

(assert (=> d!2057871 true))

(assert (=> d!2057871 true))

(assert (=> d!2057871 (= (isDefined!13028 (findConcatSeparation!2739 (reg!16763 (regOne!33380 r!7292)) lt!2405035 Nil!65477 (_1!36716 lt!2405023) (_1!36716 lt!2405023))) (Exists!3504 lambda!364718))))

(declare-fun lt!2405319 () Unit!159071)

(assert (=> d!2057871 (= lt!2405319 (choose!48894 (reg!16763 (regOne!33380 r!7292)) lt!2405035 (_1!36716 lt!2405023)))))

(assert (=> d!2057871 (validRegex!8170 (reg!16763 (regOne!33380 r!7292)))))

(assert (=> d!2057871 (= (lemmaFindConcatSeparationEquivalentToExists!2503 (reg!16763 (regOne!33380 r!7292)) lt!2405035 (_1!36716 lt!2405023)) lt!2405319)))

(declare-fun bs!1673944 () Bool)

(assert (= bs!1673944 d!2057871))

(declare-fun m!7340834 () Bool)

(assert (=> bs!1673944 m!7340834))

(assert (=> bs!1673944 m!7340126))

(assert (=> bs!1673944 m!7340126))

(assert (=> bs!1673944 m!7340128))

(assert (=> bs!1673944 m!7340124))

(declare-fun m!7340836 () Bool)

(assert (=> bs!1673944 m!7340836))

(assert (=> b!6557976 d!2057871))

(declare-fun d!2057873 () Bool)

(assert (=> d!2057873 (= (Exists!3504 lambda!364639) (choose!48895 lambda!364639))))

(declare-fun bs!1673945 () Bool)

(assert (= bs!1673945 d!2057873))

(declare-fun m!7340838 () Bool)

(assert (=> bs!1673945 m!7340838))

(assert (=> b!6557976 d!2057873))

(declare-fun d!2057875 () Bool)

(assert (=> d!2057875 (= (matchR!8617 lt!2404982 (_1!36716 lt!2405023)) (matchRSpec!3535 lt!2404982 (_1!36716 lt!2405023)))))

(declare-fun lt!2405320 () Unit!159071)

(assert (=> d!2057875 (= lt!2405320 (choose!48903 lt!2404982 (_1!36716 lt!2405023)))))

(assert (=> d!2057875 (validRegex!8170 lt!2404982)))

(assert (=> d!2057875 (= (mainMatchTheorem!3535 lt!2404982 (_1!36716 lt!2405023)) lt!2405320)))

(declare-fun bs!1673946 () Bool)

(assert (= bs!1673946 d!2057875))

(assert (=> bs!1673946 m!7340082))

(assert (=> bs!1673946 m!7340134))

(declare-fun m!7340840 () Bool)

(assert (=> bs!1673946 m!7340840))

(assert (=> bs!1673946 m!7340550))

(assert (=> b!6557976 d!2057875))

(declare-fun b!6558697 () Bool)

(declare-fun e!3970523 () Option!16325)

(declare-fun e!3970522 () Option!16325)

(assert (=> b!6558697 (= e!3970523 e!3970522)))

(declare-fun c!1205076 () Bool)

(assert (=> b!6558697 (= c!1205076 (is-Nil!65477 (_1!36716 lt!2405023)))))

(declare-fun b!6558698 () Bool)

(declare-fun e!3970524 () Bool)

(assert (=> b!6558698 (= e!3970524 (matchR!8617 lt!2405035 (_1!36716 lt!2405023)))))

(declare-fun b!6558700 () Bool)

(assert (=> b!6558700 (= e!3970523 (Some!16324 (tuple2!66827 Nil!65477 (_1!36716 lt!2405023))))))

(declare-fun b!6558701 () Bool)

(declare-fun lt!2405323 () Unit!159071)

(declare-fun lt!2405322 () Unit!159071)

(assert (=> b!6558701 (= lt!2405323 lt!2405322)))

(assert (=> b!6558701 (= (++!14571 (++!14571 Nil!65477 (Cons!65477 (h!71925 (_1!36716 lt!2405023)) Nil!65477)) (t!379243 (_1!36716 lt!2405023))) (_1!36716 lt!2405023))))

(assert (=> b!6558701 (= lt!2405322 (lemmaMoveElementToOtherListKeepsConcatEq!2577 Nil!65477 (h!71925 (_1!36716 lt!2405023)) (t!379243 (_1!36716 lt!2405023)) (_1!36716 lt!2405023)))))

(assert (=> b!6558701 (= e!3970522 (findConcatSeparation!2739 (reg!16763 (regOne!33380 r!7292)) lt!2405035 (++!14571 Nil!65477 (Cons!65477 (h!71925 (_1!36716 lt!2405023)) Nil!65477)) (t!379243 (_1!36716 lt!2405023)) (_1!36716 lt!2405023)))))

(declare-fun b!6558702 () Bool)

(declare-fun res!2691234 () Bool)

(declare-fun e!3970525 () Bool)

(assert (=> b!6558702 (=> (not res!2691234) (not e!3970525))))

(declare-fun lt!2405321 () Option!16325)

(assert (=> b!6558702 (= res!2691234 (matchR!8617 lt!2405035 (_2!36716 (get!22733 lt!2405321))))))

(declare-fun b!6558703 () Bool)

(declare-fun res!2691236 () Bool)

(assert (=> b!6558703 (=> (not res!2691236) (not e!3970525))))

(assert (=> b!6558703 (= res!2691236 (matchR!8617 (reg!16763 (regOne!33380 r!7292)) (_1!36716 (get!22733 lt!2405321))))))

(declare-fun d!2057877 () Bool)

(declare-fun e!3970521 () Bool)

(assert (=> d!2057877 e!3970521))

(declare-fun res!2691237 () Bool)

(assert (=> d!2057877 (=> res!2691237 e!3970521)))

(assert (=> d!2057877 (= res!2691237 e!3970525)))

(declare-fun res!2691233 () Bool)

(assert (=> d!2057877 (=> (not res!2691233) (not e!3970525))))

(assert (=> d!2057877 (= res!2691233 (isDefined!13028 lt!2405321))))

(assert (=> d!2057877 (= lt!2405321 e!3970523)))

(declare-fun c!1205077 () Bool)

(assert (=> d!2057877 (= c!1205077 e!3970524)))

(declare-fun res!2691235 () Bool)

(assert (=> d!2057877 (=> (not res!2691235) (not e!3970524))))

(assert (=> d!2057877 (= res!2691235 (matchR!8617 (reg!16763 (regOne!33380 r!7292)) Nil!65477))))

(assert (=> d!2057877 (validRegex!8170 (reg!16763 (regOne!33380 r!7292)))))

(assert (=> d!2057877 (= (findConcatSeparation!2739 (reg!16763 (regOne!33380 r!7292)) lt!2405035 Nil!65477 (_1!36716 lt!2405023) (_1!36716 lt!2405023)) lt!2405321)))

(declare-fun b!6558699 () Bool)

(assert (=> b!6558699 (= e!3970525 (= (++!14571 (_1!36716 (get!22733 lt!2405321)) (_2!36716 (get!22733 lt!2405321))) (_1!36716 lt!2405023)))))

(declare-fun b!6558704 () Bool)

(assert (=> b!6558704 (= e!3970522 None!16324)))

(declare-fun b!6558705 () Bool)

(assert (=> b!6558705 (= e!3970521 (not (isDefined!13028 lt!2405321)))))

(assert (= (and d!2057877 res!2691235) b!6558698))

(assert (= (and d!2057877 c!1205077) b!6558700))

(assert (= (and d!2057877 (not c!1205077)) b!6558697))

(assert (= (and b!6558697 c!1205076) b!6558704))

(assert (= (and b!6558697 (not c!1205076)) b!6558701))

(assert (= (and d!2057877 res!2691233) b!6558703))

(assert (= (and b!6558703 res!2691236) b!6558702))

(assert (= (and b!6558702 res!2691234) b!6558699))

(assert (= (and d!2057877 (not res!2691237)) b!6558705))

(declare-fun m!7340842 () Bool)

(assert (=> b!6558701 m!7340842))

(assert (=> b!6558701 m!7340842))

(declare-fun m!7340844 () Bool)

(assert (=> b!6558701 m!7340844))

(declare-fun m!7340846 () Bool)

(assert (=> b!6558701 m!7340846))

(assert (=> b!6558701 m!7340842))

(declare-fun m!7340848 () Bool)

(assert (=> b!6558701 m!7340848))

(declare-fun m!7340850 () Bool)

(assert (=> b!6558702 m!7340850))

(declare-fun m!7340852 () Bool)

(assert (=> b!6558702 m!7340852))

(declare-fun m!7340854 () Bool)

(assert (=> d!2057877 m!7340854))

(declare-fun m!7340856 () Bool)

(assert (=> d!2057877 m!7340856))

(assert (=> d!2057877 m!7340124))

(assert (=> b!6558703 m!7340850))

(declare-fun m!7340858 () Bool)

(assert (=> b!6558703 m!7340858))

(assert (=> b!6558699 m!7340850))

(declare-fun m!7340860 () Bool)

(assert (=> b!6558699 m!7340860))

(assert (=> b!6558705 m!7340854))

(declare-fun m!7340862 () Bool)

(assert (=> b!6558698 m!7340862))

(assert (=> b!6557976 d!2057877))

(declare-fun bs!1673947 () Bool)

(declare-fun b!6558711 () Bool)

(assert (= bs!1673947 (and b!6558711 d!2057815)))

(declare-fun lambda!364719 () Int)

(assert (=> bs!1673947 (not (= lambda!364719 lambda!364705))))

(declare-fun bs!1673948 () Bool)

(assert (= bs!1673948 (and b!6558711 b!6558661)))

(assert (=> bs!1673948 (= (and (= (_1!36716 lt!2405023) s!2326) (= (reg!16763 lt!2404982) (reg!16763 r!7292)) (= lt!2404982 r!7292)) (= lambda!364719 lambda!364713))))

(declare-fun bs!1673949 () Bool)

(assert (= bs!1673949 (and b!6558711 d!2057817)))

(assert (=> bs!1673949 (not (= lambda!364719 lambda!364706))))

(declare-fun bs!1673950 () Bool)

(assert (= bs!1673950 (and b!6558711 b!6557965)))

(assert (=> bs!1673950 (not (= lambda!364719 lambda!364637))))

(declare-fun bs!1673951 () Bool)

(assert (= bs!1673951 (and b!6558711 d!2057871)))

(assert (=> bs!1673951 (not (= lambda!364719 lambda!364718))))

(declare-fun bs!1673952 () Bool)

(assert (= bs!1673952 (and b!6558711 b!6558488)))

(assert (=> bs!1673952 (= (and (= (_1!36716 lt!2405023) s!2326) (= (reg!16763 lt!2404982) (reg!16763 lt!2405034)) (= lt!2404982 lt!2405034)) (= lambda!364719 lambda!364691))))

(declare-fun bs!1673953 () Bool)

(assert (= bs!1673953 (and b!6558711 b!6557976)))

(assert (=> bs!1673953 (not (= lambda!364719 lambda!364639))))

(declare-fun bs!1673954 () Bool)

(assert (= bs!1673954 (and b!6558711 b!6557986)))

(assert (=> bs!1673954 (not (= lambda!364719 lambda!364633))))

(declare-fun bs!1673955 () Bool)

(assert (= bs!1673955 (and b!6558711 d!2057775)))

(assert (=> bs!1673955 (not (= lambda!364719 lambda!364697))))

(assert (=> bs!1673954 (not (= lambda!364719 lambda!364632))))

(declare-fun bs!1673956 () Bool)

(assert (= bs!1673956 (and b!6558711 b!6558617)))

(assert (=> bs!1673956 (not (= lambda!364719 lambda!364712))))

(declare-fun bs!1673957 () Bool)

(assert (= bs!1673957 (and b!6558711 b!6558612)))

(assert (=> bs!1673957 (= (and (= (_1!36716 lt!2405023) s!2326) (= (reg!16763 lt!2404982) (reg!16763 lt!2405019)) (= lt!2404982 lt!2405019)) (= lambda!364719 lambda!364711))))

(declare-fun bs!1673958 () Bool)

(assert (= bs!1673958 (and b!6558711 d!2057787)))

(assert (=> bs!1673958 (not (= lambda!364719 lambda!364701))))

(assert (=> bs!1673955 (not (= lambda!364719 lambda!364698))))

(assert (=> bs!1673949 (not (= lambda!364719 lambda!364707))))

(declare-fun bs!1673959 () Bool)

(assert (= bs!1673959 (and b!6558711 b!6558493)))

(assert (=> bs!1673959 (not (= lambda!364719 lambda!364692))))

(assert (=> bs!1673950 (not (= lambda!364719 lambda!364638))))

(declare-fun bs!1673960 () Bool)

(assert (= bs!1673960 (and b!6558711 b!6558666)))

(assert (=> bs!1673960 (not (= lambda!364719 lambda!364714))))

(assert (=> b!6558711 true))

(assert (=> b!6558711 true))

(declare-fun bs!1673961 () Bool)

(declare-fun b!6558716 () Bool)

(assert (= bs!1673961 (and b!6558716 d!2057815)))

(declare-fun lambda!364720 () Int)

(assert (=> bs!1673961 (not (= lambda!364720 lambda!364705))))

(declare-fun bs!1673962 () Bool)

(assert (= bs!1673962 (and b!6558716 b!6558661)))

(assert (=> bs!1673962 (not (= lambda!364720 lambda!364713))))

(declare-fun bs!1673963 () Bool)

(assert (= bs!1673963 (and b!6558716 d!2057817)))

(assert (=> bs!1673963 (not (= lambda!364720 lambda!364706))))

(declare-fun bs!1673964 () Bool)

(assert (= bs!1673964 (and b!6558716 b!6557965)))

(assert (=> bs!1673964 (not (= lambda!364720 lambda!364637))))

(declare-fun bs!1673965 () Bool)

(assert (= bs!1673965 (and b!6558716 b!6558488)))

(assert (=> bs!1673965 (not (= lambda!364720 lambda!364691))))

(declare-fun bs!1673966 () Bool)

(assert (= bs!1673966 (and b!6558716 b!6557976)))

(assert (=> bs!1673966 (not (= lambda!364720 lambda!364639))))

(declare-fun bs!1673967 () Bool)

(assert (= bs!1673967 (and b!6558716 b!6557986)))

(assert (=> bs!1673967 (= (and (= (_1!36716 lt!2405023) s!2326) (= (regOne!33380 lt!2404982) (regOne!33380 r!7292)) (= (regTwo!33380 lt!2404982) (regTwo!33380 r!7292))) (= lambda!364720 lambda!364633))))

(declare-fun bs!1673968 () Bool)

(assert (= bs!1673968 (and b!6558716 d!2057775)))

(assert (=> bs!1673968 (not (= lambda!364720 lambda!364697))))

(assert (=> bs!1673967 (not (= lambda!364720 lambda!364632))))

(declare-fun bs!1673969 () Bool)

(assert (= bs!1673969 (and b!6558716 b!6558617)))

(assert (=> bs!1673969 (= (and (= (_1!36716 lt!2405023) s!2326) (= (regOne!33380 lt!2404982) (regOne!33380 lt!2405019)) (= (regTwo!33380 lt!2404982) (regTwo!33380 lt!2405019))) (= lambda!364720 lambda!364712))))

(declare-fun bs!1673970 () Bool)

(assert (= bs!1673970 (and b!6558716 b!6558612)))

(assert (=> bs!1673970 (not (= lambda!364720 lambda!364711))))

(declare-fun bs!1673971 () Bool)

(assert (= bs!1673971 (and b!6558716 d!2057787)))

(assert (=> bs!1673971 (not (= lambda!364720 lambda!364701))))

(assert (=> bs!1673968 (= (and (= (_1!36716 lt!2405023) s!2326) (= (regOne!33380 lt!2404982) lt!2404982) (= (regTwo!33380 lt!2404982) (regTwo!33380 r!7292))) (= lambda!364720 lambda!364698))))

(declare-fun bs!1673972 () Bool)

(assert (= bs!1673972 (and b!6558716 d!2057871)))

(assert (=> bs!1673972 (not (= lambda!364720 lambda!364718))))

(declare-fun bs!1673973 () Bool)

(assert (= bs!1673973 (and b!6558716 b!6558711)))

(assert (=> bs!1673973 (not (= lambda!364720 lambda!364719))))

(assert (=> bs!1673963 (= (and (= (_1!36716 lt!2405023) s!2326) (= (regOne!33380 lt!2404982) (regOne!33380 r!7292)) (= (regTwo!33380 lt!2404982) (regTwo!33380 r!7292))) (= lambda!364720 lambda!364707))))

(declare-fun bs!1673974 () Bool)

(assert (= bs!1673974 (and b!6558716 b!6558493)))

(assert (=> bs!1673974 (= (and (= (_1!36716 lt!2405023) s!2326) (= (regOne!33380 lt!2404982) (regOne!33380 lt!2405034)) (= (regTwo!33380 lt!2404982) (regTwo!33380 lt!2405034))) (= lambda!364720 lambda!364692))))

(assert (=> bs!1673964 (= (and (= (_1!36716 lt!2405023) s!2326) (= (regOne!33380 lt!2404982) lt!2404982) (= (regTwo!33380 lt!2404982) (regTwo!33380 r!7292))) (= lambda!364720 lambda!364638))))

(declare-fun bs!1673975 () Bool)

(assert (= bs!1673975 (and b!6558716 b!6558666)))

(assert (=> bs!1673975 (= (and (= (_1!36716 lt!2405023) s!2326) (= (regOne!33380 lt!2404982) (regOne!33380 r!7292)) (= (regTwo!33380 lt!2404982) (regTwo!33380 r!7292))) (= lambda!364720 lambda!364714))))

(assert (=> b!6558716 true))

(assert (=> b!6558716 true))

(declare-fun b!6558706 () Bool)

(declare-fun c!1205079 () Bool)

(assert (=> b!6558706 (= c!1205079 (is-Union!16434 lt!2404982))))

(declare-fun e!3970531 () Bool)

(declare-fun e!3970528 () Bool)

(assert (=> b!6558706 (= e!3970531 e!3970528)))

(declare-fun b!6558707 () Bool)

(declare-fun e!3970526 () Bool)

(declare-fun e!3970529 () Bool)

(assert (=> b!6558707 (= e!3970526 e!3970529)))

(declare-fun res!2691238 () Bool)

(assert (=> b!6558707 (= res!2691238 (not (is-EmptyLang!16434 lt!2404982)))))

(assert (=> b!6558707 (=> (not res!2691238) (not e!3970529))))

(declare-fun b!6558709 () Bool)

(declare-fun e!3970527 () Bool)

(assert (=> b!6558709 (= e!3970527 (matchRSpec!3535 (regTwo!33381 lt!2404982) (_1!36716 lt!2405023)))))

(declare-fun bm!570447 () Bool)

(declare-fun c!1205080 () Bool)

(declare-fun call!570452 () Bool)

(assert (=> bm!570447 (= call!570452 (Exists!3504 (ite c!1205080 lambda!364719 lambda!364720)))))

(declare-fun bm!570448 () Bool)

(declare-fun call!570453 () Bool)

(assert (=> bm!570448 (= call!570453 (isEmpty!37720 (_1!36716 lt!2405023)))))

(declare-fun b!6558710 () Bool)

(declare-fun c!1205081 () Bool)

(assert (=> b!6558710 (= c!1205081 (is-ElementMatch!16434 lt!2404982))))

(assert (=> b!6558710 (= e!3970529 e!3970531)))

(declare-fun e!3970532 () Bool)

(assert (=> b!6558711 (= e!3970532 call!570452)))

(declare-fun b!6558712 () Bool)

(assert (=> b!6558712 (= e!3970528 e!3970527)))

(declare-fun res!2691239 () Bool)

(assert (=> b!6558712 (= res!2691239 (matchRSpec!3535 (regOne!33381 lt!2404982) (_1!36716 lt!2405023)))))

(assert (=> b!6558712 (=> res!2691239 e!3970527)))

(declare-fun b!6558713 () Bool)

(declare-fun res!2691240 () Bool)

(assert (=> b!6558713 (=> res!2691240 e!3970532)))

(assert (=> b!6558713 (= res!2691240 call!570453)))

(declare-fun e!3970530 () Bool)

(assert (=> b!6558713 (= e!3970530 e!3970532)))

(declare-fun b!6558714 () Bool)

(assert (=> b!6558714 (= e!3970531 (= (_1!36716 lt!2405023) (Cons!65477 (c!1204909 lt!2404982) Nil!65477)))))

(declare-fun b!6558708 () Bool)

(assert (=> b!6558708 (= e!3970526 call!570453)))

(declare-fun d!2057879 () Bool)

(declare-fun c!1205078 () Bool)

(assert (=> d!2057879 (= c!1205078 (is-EmptyExpr!16434 lt!2404982))))

(assert (=> d!2057879 (= (matchRSpec!3535 lt!2404982 (_1!36716 lt!2405023)) e!3970526)))

(declare-fun b!6558715 () Bool)

(assert (=> b!6558715 (= e!3970528 e!3970530)))

(assert (=> b!6558715 (= c!1205080 (is-Star!16434 lt!2404982))))

(assert (=> b!6558716 (= e!3970530 call!570452)))

(assert (= (and d!2057879 c!1205078) b!6558708))

(assert (= (and d!2057879 (not c!1205078)) b!6558707))

(assert (= (and b!6558707 res!2691238) b!6558710))

(assert (= (and b!6558710 c!1205081) b!6558714))

(assert (= (and b!6558710 (not c!1205081)) b!6558706))

(assert (= (and b!6558706 c!1205079) b!6558712))

(assert (= (and b!6558706 (not c!1205079)) b!6558715))

(assert (= (and b!6558712 (not res!2691239)) b!6558709))

(assert (= (and b!6558715 c!1205080) b!6558713))

(assert (= (and b!6558715 (not c!1205080)) b!6558716))

(assert (= (and b!6558713 (not res!2691240)) b!6558711))

(assert (= (or b!6558711 b!6558716) bm!570447))

(assert (= (or b!6558708 b!6558713) bm!570448))

(declare-fun m!7340864 () Bool)

(assert (=> b!6558709 m!7340864))

(declare-fun m!7340866 () Bool)

(assert (=> bm!570447 m!7340866))

(assert (=> bm!570448 m!7340536))

(declare-fun m!7340868 () Bool)

(assert (=> b!6558712 m!7340868))

(assert (=> b!6557976 d!2057879))

(declare-fun d!2057881 () Bool)

(assert (=> d!2057881 (= (isEmpty!37716 (t!379244 (exprs!6318 (h!71927 zl!343)))) (is-Nil!65478 (t!379244 (exprs!6318 (h!71927 zl!343)))))))

(assert (=> b!6557975 d!2057881))

(declare-fun d!2057883 () Bool)

(declare-fun c!1205082 () Bool)

(assert (=> d!2057883 (= c!1205082 (isEmpty!37720 (t!379243 s!2326)))))

(declare-fun e!3970533 () Bool)

(assert (=> d!2057883 (= (matchZipper!2446 lt!2405024 (t!379243 s!2326)) e!3970533)))

(declare-fun b!6558717 () Bool)

(assert (=> b!6558717 (= e!3970533 (nullableZipper!2179 lt!2405024))))

(declare-fun b!6558718 () Bool)

(assert (=> b!6558718 (= e!3970533 (matchZipper!2446 (derivationStepZipper!2400 lt!2405024 (head!13320 (t!379243 s!2326))) (tail!12405 (t!379243 s!2326))))))

(assert (= (and d!2057883 c!1205082) b!6558717))

(assert (= (and d!2057883 (not c!1205082)) b!6558718))

(assert (=> d!2057883 m!7340406))

(declare-fun m!7340870 () Bool)

(assert (=> b!6558717 m!7340870))

(assert (=> b!6558718 m!7340410))

(assert (=> b!6558718 m!7340410))

(declare-fun m!7340872 () Bool)

(assert (=> b!6558718 m!7340872))

(assert (=> b!6558718 m!7340414))

(assert (=> b!6558718 m!7340872))

(assert (=> b!6558718 m!7340414))

(declare-fun m!7340874 () Bool)

(assert (=> b!6558718 m!7340874))

(assert (=> b!6557979 d!2057883))

(declare-fun d!2057887 () Bool)

(declare-fun c!1205083 () Bool)

(assert (=> d!2057887 (= c!1205083 (isEmpty!37720 s!2326))))

(declare-fun e!3970534 () Bool)

(assert (=> d!2057887 (= (matchZipper!2446 lt!2404986 s!2326) e!3970534)))

(declare-fun b!6558719 () Bool)

(assert (=> b!6558719 (= e!3970534 (nullableZipper!2179 lt!2404986))))

(declare-fun b!6558720 () Bool)

(assert (=> b!6558720 (= e!3970534 (matchZipper!2446 (derivationStepZipper!2400 lt!2404986 (head!13320 s!2326)) (tail!12405 s!2326)))))

(assert (= (and d!2057887 c!1205083) b!6558719))

(assert (= (and d!2057887 (not c!1205083)) b!6558720))

(assert (=> d!2057887 m!7340512))

(declare-fun m!7340876 () Bool)

(assert (=> b!6558719 m!7340876))

(assert (=> b!6558720 m!7340516))

(assert (=> b!6558720 m!7340516))

(declare-fun m!7340878 () Bool)

(assert (=> b!6558720 m!7340878))

(assert (=> b!6558720 m!7340520))

(assert (=> b!6558720 m!7340878))

(assert (=> b!6558720 m!7340520))

(declare-fun m!7340880 () Bool)

(assert (=> b!6558720 m!7340880))

(assert (=> b!6557979 d!2057887))

(declare-fun bs!1673977 () Bool)

(declare-fun d!2057889 () Bool)

(assert (= bs!1673977 (and d!2057889 b!6557958)))

(declare-fun lambda!364725 () Int)

(assert (=> bs!1673977 (= (= (exprs!6318 lt!2405031) lt!2405038) (= lambda!364725 lambda!364635))))

(assert (=> d!2057889 true))

(assert (=> d!2057889 (= (appendTo!195 lt!2405013 lt!2405031) (map!14960 lt!2405013 lambda!364725))))

(declare-fun bs!1673978 () Bool)

(assert (= bs!1673978 d!2057889))

(declare-fun m!7340884 () Bool)

(assert (=> bs!1673978 m!7340884))

(assert (=> b!6557958 d!2057889))

(assert (=> b!6557958 d!2057793))

(declare-fun d!2057893 () Bool)

(declare-fun dynLambda!26043 (Int Context!11636) Context!11636)

(assert (=> d!2057893 (= (map!14960 lt!2405013 lambda!364635) (set.insert (dynLambda!26043 lambda!364635 lt!2404979) (as set.empty (Set Context!11636))))))

(declare-fun lt!2405331 () Unit!159071)

(declare-fun choose!48916 ((Set Context!11636) Context!11636 Int) Unit!159071)

(assert (=> d!2057893 (= lt!2405331 (choose!48916 lt!2405013 lt!2404979 lambda!364635))))

(assert (=> d!2057893 (= lt!2405013 (set.insert lt!2404979 (as set.empty (Set Context!11636))))))

(assert (=> d!2057893 (= (lemmaMapOnSingletonSet!217 lt!2405013 lt!2404979 lambda!364635) lt!2405331)))

(declare-fun b_lambda!248131 () Bool)

(assert (=> (not b_lambda!248131) (not d!2057893)))

(declare-fun bs!1673980 () Bool)

(assert (= bs!1673980 d!2057893))

(declare-fun m!7340890 () Bool)

(assert (=> bs!1673980 m!7340890))

(assert (=> bs!1673980 m!7340048))

(assert (=> bs!1673980 m!7340890))

(declare-fun m!7340894 () Bool)

(assert (=> bs!1673980 m!7340894))

(declare-fun m!7340896 () Bool)

(assert (=> bs!1673980 m!7340896))

(assert (=> bs!1673980 m!7340070))

(assert (=> b!6557958 d!2057893))

(declare-fun d!2057897 () Bool)

(declare-fun choose!48917 ((Set Context!11636) Int) (Set Context!11636))

(assert (=> d!2057897 (= (map!14960 lt!2405013 lambda!364635) (choose!48917 lt!2405013 lambda!364635))))

(declare-fun bs!1673981 () Bool)

(assert (= bs!1673981 d!2057897))

(declare-fun m!7340898 () Bool)

(assert (=> bs!1673981 m!7340898))

(assert (=> b!6557958 d!2057897))

(assert (=> b!6557958 d!2057779))

(declare-fun bs!1673982 () Bool)

(declare-fun d!2057899 () Bool)

(assert (= bs!1673982 (and d!2057899 d!2057823)))

(declare-fun lambda!364726 () Int)

(assert (=> bs!1673982 (= lambda!364726 lambda!364710)))

(declare-fun bs!1673983 () Bool)

(assert (= bs!1673983 (and d!2057899 d!2057713)))

(assert (=> bs!1673983 (= lambda!364726 lambda!364680)))

(declare-fun bs!1673984 () Bool)

(assert (= bs!1673984 (and d!2057899 d!2057755)))

(assert (=> bs!1673984 (= lambda!364726 lambda!364683)))

(declare-fun bs!1673985 () Bool)

(assert (= bs!1673985 (and d!2057899 d!2057757)))

(assert (=> bs!1673985 (= lambda!364726 lambda!364686)))

(declare-fun bs!1673986 () Bool)

(assert (= bs!1673986 (and d!2057899 d!2057803)))

(assert (=> bs!1673986 (= lambda!364726 lambda!364704)))

(declare-fun bs!1673987 () Bool)

(assert (= bs!1673987 (and d!2057899 b!6557958)))

(assert (=> bs!1673987 (= lambda!364726 lambda!364636)))

(assert (=> d!2057899 (= (inv!84333 (h!71927 zl!343)) (forall!15606 (exprs!6318 (h!71927 zl!343)) lambda!364726))))

(declare-fun bs!1673988 () Bool)

(assert (= bs!1673988 d!2057899))

(declare-fun m!7340900 () Bool)

(assert (=> bs!1673988 m!7340900))

(assert (=> b!6557957 d!2057899))

(declare-fun b!6558727 () Bool)

(declare-fun e!3970537 () Bool)

(declare-fun tp!1812300 () Bool)

(declare-fun tp!1812301 () Bool)

(assert (=> b!6558727 (= e!3970537 (and tp!1812300 tp!1812301))))

(assert (=> b!6557966 (= tp!1812265 e!3970537)))

(assert (= (and b!6557966 (is-Cons!65478 (exprs!6318 (h!71927 zl!343)))) b!6558727))

(declare-fun b!6558741 () Bool)

(declare-fun e!3970540 () Bool)

(declare-fun tp!1812316 () Bool)

(declare-fun tp!1812312 () Bool)

(assert (=> b!6558741 (= e!3970540 (and tp!1812316 tp!1812312))))

(declare-fun b!6558740 () Bool)

(declare-fun tp!1812313 () Bool)

(assert (=> b!6558740 (= e!3970540 tp!1812313)))

(declare-fun b!6558738 () Bool)

(assert (=> b!6558738 (= e!3970540 tp_is_empty!42121)))

(assert (=> b!6557951 (= tp!1812262 e!3970540)))

(declare-fun b!6558739 () Bool)

(declare-fun tp!1812314 () Bool)

(declare-fun tp!1812315 () Bool)

(assert (=> b!6558739 (= e!3970540 (and tp!1812314 tp!1812315))))

(assert (= (and b!6557951 (is-ElementMatch!16434 (reg!16763 r!7292))) b!6558738))

(assert (= (and b!6557951 (is-Concat!25279 (reg!16763 r!7292))) b!6558739))

(assert (= (and b!6557951 (is-Star!16434 (reg!16763 r!7292))) b!6558740))

(assert (= (and b!6557951 (is-Union!16434 (reg!16763 r!7292))) b!6558741))

(declare-fun b!6558742 () Bool)

(declare-fun e!3970541 () Bool)

(declare-fun tp!1812317 () Bool)

(declare-fun tp!1812318 () Bool)

(assert (=> b!6558742 (= e!3970541 (and tp!1812317 tp!1812318))))

(assert (=> b!6557950 (= tp!1812257 e!3970541)))

(assert (= (and b!6557950 (is-Cons!65478 (exprs!6318 setElem!44763))) b!6558742))

(declare-fun condSetEmpty!44769 () Bool)

(assert (=> setNonEmpty!44763 (= condSetEmpty!44769 (= setRest!44763 (as set.empty (Set Context!11636))))))

(declare-fun setRes!44769 () Bool)

(assert (=> setNonEmpty!44763 (= tp!1812264 setRes!44769)))

(declare-fun setIsEmpty!44769 () Bool)

(assert (=> setIsEmpty!44769 setRes!44769))

(declare-fun tp!1812324 () Bool)

(declare-fun setNonEmpty!44769 () Bool)

(declare-fun e!3970544 () Bool)

(declare-fun setElem!44769 () Context!11636)

(assert (=> setNonEmpty!44769 (= setRes!44769 (and tp!1812324 (inv!84333 setElem!44769) e!3970544))))

(declare-fun setRest!44769 () (Set Context!11636))

(assert (=> setNonEmpty!44769 (= setRest!44763 (set.union (set.insert setElem!44769 (as set.empty (Set Context!11636))) setRest!44769))))

(declare-fun b!6558747 () Bool)

(declare-fun tp!1812323 () Bool)

(assert (=> b!6558747 (= e!3970544 tp!1812323)))

(assert (= (and setNonEmpty!44763 condSetEmpty!44769) setIsEmpty!44769))

(assert (= (and setNonEmpty!44763 (not condSetEmpty!44769)) setNonEmpty!44769))

(assert (= setNonEmpty!44769 b!6558747))

(declare-fun m!7340908 () Bool)

(assert (=> setNonEmpty!44769 m!7340908))

(declare-fun b!6558751 () Bool)

(declare-fun e!3970545 () Bool)

(declare-fun tp!1812329 () Bool)

(declare-fun tp!1812325 () Bool)

(assert (=> b!6558751 (= e!3970545 (and tp!1812329 tp!1812325))))

(declare-fun b!6558750 () Bool)

(declare-fun tp!1812326 () Bool)

(assert (=> b!6558750 (= e!3970545 tp!1812326)))

(declare-fun b!6558748 () Bool)

(assert (=> b!6558748 (= e!3970545 tp_is_empty!42121)))

(assert (=> b!6557948 (= tp!1812261 e!3970545)))

(declare-fun b!6558749 () Bool)

(declare-fun tp!1812327 () Bool)

(declare-fun tp!1812328 () Bool)

(assert (=> b!6558749 (= e!3970545 (and tp!1812327 tp!1812328))))

(assert (= (and b!6557948 (is-ElementMatch!16434 (regOne!33381 r!7292))) b!6558748))

(assert (= (and b!6557948 (is-Concat!25279 (regOne!33381 r!7292))) b!6558749))

(assert (= (and b!6557948 (is-Star!16434 (regOne!33381 r!7292))) b!6558750))

(assert (= (and b!6557948 (is-Union!16434 (regOne!33381 r!7292))) b!6558751))

(declare-fun b!6558755 () Bool)

(declare-fun e!3970546 () Bool)

(declare-fun tp!1812334 () Bool)

(declare-fun tp!1812330 () Bool)

(assert (=> b!6558755 (= e!3970546 (and tp!1812334 tp!1812330))))

(declare-fun b!6558754 () Bool)

(declare-fun tp!1812331 () Bool)

(assert (=> b!6558754 (= e!3970546 tp!1812331)))

(declare-fun b!6558752 () Bool)

(assert (=> b!6558752 (= e!3970546 tp_is_empty!42121)))

(assert (=> b!6557948 (= tp!1812260 e!3970546)))

(declare-fun b!6558753 () Bool)

(declare-fun tp!1812332 () Bool)

(declare-fun tp!1812333 () Bool)

(assert (=> b!6558753 (= e!3970546 (and tp!1812332 tp!1812333))))

(assert (= (and b!6557948 (is-ElementMatch!16434 (regTwo!33381 r!7292))) b!6558752))

(assert (= (and b!6557948 (is-Concat!25279 (regTwo!33381 r!7292))) b!6558753))

(assert (= (and b!6557948 (is-Star!16434 (regTwo!33381 r!7292))) b!6558754))

(assert (= (and b!6557948 (is-Union!16434 (regTwo!33381 r!7292))) b!6558755))

(declare-fun b!6558760 () Bool)

(declare-fun e!3970549 () Bool)

(declare-fun tp!1812337 () Bool)

(assert (=> b!6558760 (= e!3970549 (and tp_is_empty!42121 tp!1812337))))

(assert (=> b!6557943 (= tp!1812256 e!3970549)))

(assert (= (and b!6557943 (is-Cons!65477 (t!379243 s!2326))) b!6558760))

(declare-fun b!6558764 () Bool)

(declare-fun e!3970550 () Bool)

(declare-fun tp!1812342 () Bool)

(declare-fun tp!1812338 () Bool)

(assert (=> b!6558764 (= e!3970550 (and tp!1812342 tp!1812338))))

(declare-fun b!6558763 () Bool)

(declare-fun tp!1812339 () Bool)

(assert (=> b!6558763 (= e!3970550 tp!1812339)))

(declare-fun b!6558761 () Bool)

(assert (=> b!6558761 (= e!3970550 tp_is_empty!42121)))

(assert (=> b!6557978 (= tp!1812259 e!3970550)))

(declare-fun b!6558762 () Bool)

(declare-fun tp!1812340 () Bool)

(declare-fun tp!1812341 () Bool)

(assert (=> b!6558762 (= e!3970550 (and tp!1812340 tp!1812341))))

(assert (= (and b!6557978 (is-ElementMatch!16434 (regOne!33380 r!7292))) b!6558761))

(assert (= (and b!6557978 (is-Concat!25279 (regOne!33380 r!7292))) b!6558762))

(assert (= (and b!6557978 (is-Star!16434 (regOne!33380 r!7292))) b!6558763))

(assert (= (and b!6557978 (is-Union!16434 (regOne!33380 r!7292))) b!6558764))

(declare-fun b!6558768 () Bool)

(declare-fun e!3970551 () Bool)

(declare-fun tp!1812347 () Bool)

(declare-fun tp!1812343 () Bool)

(assert (=> b!6558768 (= e!3970551 (and tp!1812347 tp!1812343))))

(declare-fun b!6558767 () Bool)

(declare-fun tp!1812344 () Bool)

(assert (=> b!6558767 (= e!3970551 tp!1812344)))

(declare-fun b!6558765 () Bool)

(assert (=> b!6558765 (= e!3970551 tp_is_empty!42121)))

(assert (=> b!6557978 (= tp!1812263 e!3970551)))

(declare-fun b!6558766 () Bool)

(declare-fun tp!1812345 () Bool)

(declare-fun tp!1812346 () Bool)

(assert (=> b!6558766 (= e!3970551 (and tp!1812345 tp!1812346))))

(assert (= (and b!6557978 (is-ElementMatch!16434 (regTwo!33380 r!7292))) b!6558765))

(assert (= (and b!6557978 (is-Concat!25279 (regTwo!33380 r!7292))) b!6558766))

(assert (= (and b!6557978 (is-Star!16434 (regTwo!33380 r!7292))) b!6558767))

(assert (= (and b!6557978 (is-Union!16434 (regTwo!33380 r!7292))) b!6558768))

(declare-fun b!6558776 () Bool)

(declare-fun e!3970557 () Bool)

(declare-fun tp!1812352 () Bool)

(assert (=> b!6558776 (= e!3970557 tp!1812352)))

(declare-fun b!6558775 () Bool)

(declare-fun e!3970556 () Bool)

(declare-fun tp!1812353 () Bool)

(assert (=> b!6558775 (= e!3970556 (and (inv!84333 (h!71927 (t!379245 zl!343))) e!3970557 tp!1812353))))

(assert (=> b!6557957 (= tp!1812258 e!3970556)))

(assert (= b!6558775 b!6558776))

(assert (= (and b!6557957 (is-Cons!65479 (t!379245 zl!343))) b!6558775))

(declare-fun m!7340910 () Bool)

(assert (=> b!6558775 m!7340910))

(declare-fun b_lambda!248133 () Bool)

(assert (= b_lambda!248123 (or b!6557983 b_lambda!248133)))

(declare-fun bs!1673990 () Bool)

(declare-fun d!2057903 () Bool)

(assert (= bs!1673990 (and d!2057903 b!6557983)))

(assert (=> bs!1673990 (= (dynLambda!26040 lambda!364634 lt!2405031) (derivationStepZipperUp!1608 lt!2405031 (h!71925 s!2326)))))

(assert (=> bs!1673990 m!7340064))

(assert (=> d!2057839 d!2057903))

(declare-fun b_lambda!248135 () Bool)

(assert (= b_lambda!248127 (or b!6557983 b_lambda!248135)))

(declare-fun bs!1673991 () Bool)

(declare-fun d!2057905 () Bool)

(assert (= bs!1673991 (and d!2057905 b!6557983)))

(assert (=> bs!1673991 (= (dynLambda!26040 lambda!364634 lt!2405022) (derivationStepZipperUp!1608 lt!2405022 (h!71925 s!2326)))))

(assert (=> bs!1673991 m!7340030))

(assert (=> d!2057863 d!2057905))

(declare-fun b_lambda!248137 () Bool)

(assert (= b_lambda!248121 (or b!6557983 b_lambda!248137)))

(declare-fun bs!1673992 () Bool)

(declare-fun d!2057907 () Bool)

(assert (= bs!1673992 (and d!2057907 b!6557983)))

(assert (=> bs!1673992 (= (dynLambda!26040 lambda!364634 (h!71927 zl!343)) (derivationStepZipperUp!1608 (h!71927 zl!343) (h!71925 s!2326)))))

(assert (=> bs!1673992 m!7340016))

(assert (=> d!2057741 d!2057907))

(declare-fun b_lambda!248139 () Bool)

(assert (= b_lambda!248131 (or b!6557958 b_lambda!248139)))

(declare-fun bs!1673993 () Bool)

(declare-fun d!2057909 () Bool)

(assert (= bs!1673993 (and d!2057909 b!6557958)))

(declare-fun lt!2405337 () Unit!159071)

(assert (=> bs!1673993 (= lt!2405337 (lemmaConcatPreservesForall!407 (exprs!6318 lt!2404979) lt!2405038 lambda!364636))))

(assert (=> bs!1673993 (= (dynLambda!26043 lambda!364635 lt!2404979) (Context!11637 (++!14570 (exprs!6318 lt!2404979) lt!2405038)))))

(declare-fun m!7340912 () Bool)

(assert (=> bs!1673993 m!7340912))

(declare-fun m!7340914 () Bool)

(assert (=> bs!1673993 m!7340914))

(assert (=> d!2057893 d!2057909))

(declare-fun b_lambda!248141 () Bool)

(assert (= b_lambda!248125 (or b!6557983 b_lambda!248141)))

(declare-fun bs!1673994 () Bool)

(declare-fun d!2057911 () Bool)

(assert (= bs!1673994 (and d!2057911 b!6557983)))

(assert (=> bs!1673994 (= (dynLambda!26040 lambda!364634 lt!2404979) (derivationStepZipperUp!1608 lt!2404979 (h!71925 s!2326)))))

(assert (=> bs!1673994 m!7340068))

(assert (=> d!2057847 d!2057911))

(push 1)

(assert (not b!6558553))

(assert (not b!6558644))

(assert (not b_lambda!248135))

(assert (not b!6558574))

(assert (not b!6558251))

(assert (not b!6558763))

(assert (not d!2057827))

(assert (not d!2057819))

(assert (not b!6558323))

(assert (not b!6558646))

(assert (not b!6558328))

(assert (not bm!570437))

(assert (not b!6558569))

(assert (not b!6558595))

(assert (not b!6558532))

(assert (not d!2057779))

(assert (not d!2057889))

(assert (not b!6558366))

(assert (not d!2057733))

(assert (not b!6558353))

(assert (not d!2057843))

(assert (not b!6558526))

(assert (not bs!1673991))

(assert (not b!6558699))

(assert (not b!6558754))

(assert (not b!6558600))

(assert (not b!6558760))

(assert (not d!2057785))

(assert (not d!2057727))

(assert (not d!2057799))

(assert (not d!2057797))

(assert (not d!2057741))

(assert (not b!6558321))

(assert (not b!6558705))

(assert (not b!6558449))

(assert (not bm!570434))

(assert (not bm!570429))

(assert (not b!6558250))

(assert tp_is_empty!42121)

(assert (not b!6558292))

(assert (not d!2057715))

(assert (not bm!570443))

(assert (not b!6558749))

(assert (not b!6558432))

(assert (not b!6558289))

(assert (not b!6558684))

(assert (not b!6558560))

(assert (not d!2057729))

(assert (not bm!570435))

(assert (not b!6558230))

(assert (not d!2057851))

(assert (not b!6558718))

(assert (not b!6558655))

(assert (not b!6558674))

(assert (not bm!570416))

(assert (not d!2057793))

(assert (not b!6558625))

(assert (not d!2057817))

(assert (not b!6558727))

(assert (not d!2057791))

(assert (not b!6558651))

(assert (not b!6558767))

(assert (not b!6558679))

(assert (not b!6558558))

(assert (not b!6558576))

(assert (not d!2057735))

(assert (not d!2057823))

(assert (not d!2057725))

(assert (not bm!570427))

(assert (not b!6558717))

(assert (not b!6558198))

(assert (not b!6558630))

(assert (not b!6558533))

(assert (not d!2057893))

(assert (not d!2057775))

(assert (not b!6558489))

(assert (not b!6558435))

(assert (not b!6558199))

(assert (not bm!570418))

(assert (not bm!570405))

(assert (not b!6558753))

(assert (not d!2057815))

(assert (not b!6558364))

(assert (not b!6558750))

(assert (not b!6558610))

(assert (not d!2057737))

(assert (not d!2057771))

(assert (not b!6558227))

(assert (not bm!570431))

(assert (not bm!570409))

(assert (not bm!570442))

(assert (not b!6558314))

(assert (not d!2057837))

(assert (not b!6558287))

(assert (not b!6558557))

(assert (not b!6558701))

(assert (not d!2057721))

(assert (not bm!570430))

(assert (not b!6558659))

(assert (not b!6558670))

(assert (not bs!1673990))

(assert (not bm!570439))

(assert (not b!6558293))

(assert (not b!6558326))

(assert (not bm!570448))

(assert (not b!6558514))

(assert (not d!2057787))

(assert (not d!2057841))

(assert (not b!6558359))

(assert (not bs!1673992))

(assert (not b!6558755))

(assert (not b_lambda!248133))

(assert (not d!2057795))

(assert (not d!2057777))

(assert (not b!6558741))

(assert (not bm!570440))

(assert (not bm!570403))

(assert (not b_lambda!248137))

(assert (not b!6558764))

(assert (not b!6558202))

(assert (not bm!570408))

(assert (not b!6558751))

(assert (not b!6558671))

(assert (not b!6558568))

(assert (not b!6558440))

(assert (not b_lambda!248141))

(assert (not d!2057803))

(assert (not b!6558233))

(assert (not d!2057801))

(assert (not b!6558720))

(assert (not d!2057809))

(assert (not b!6558606))

(assert (not b!6558635))

(assert (not b!6558290))

(assert (not bm!570428))

(assert (not bm!570394))

(assert (not b!6558583))

(assert (not b!6558703))

(assert (not b!6558776))

(assert (not b!6558427))

(assert (not b!6558197))

(assert (not b!6558525))

(assert (not b!6558486))

(assert (not b!6558513))

(assert (not b!6558649))

(assert (not d!2057789))

(assert (not bm!570432))

(assert (not b!6558350))

(assert (not d!2057871))

(assert (not b!6558554))

(assert (not d!2057883))

(assert (not bm!570438))

(assert (not d!2057869))

(assert (not b!6558446))

(assert (not d!2057811))

(assert (not b!6558203))

(assert (not d!2057873))

(assert (not b!6558441))

(assert (not d!2057719))

(assert (not d!2057859))

(assert (not b!6558739))

(assert (not b!6558604))

(assert (not b!6558627))

(assert (not b!6558291))

(assert (not b!6558228))

(assert (not b!6558511))

(assert (not d!2057723))

(assert (not b!6558775))

(assert (not b!6558602))

(assert (not b!6558599))

(assert (not b!6558279))

(assert (not d!2057855))

(assert (not d!2057829))

(assert (not bm!570396))

(assert (not b!6558444))

(assert (not b!6558426))

(assert (not d!2057839))

(assert (not d!2057847))

(assert (not d!2057761))

(assert (not bm!570447))

(assert (not d!2057765))

(assert (not b!6558205))

(assert (not bm!570422))

(assert (not b!6558766))

(assert (not d!2057743))

(assert (not b!6558768))

(assert (not bm!570406))

(assert (not d!2057805))

(assert (not d!2057857))

(assert (not b!6558200))

(assert (not b!6558231))

(assert (not d!2057821))

(assert (not b!6558613))

(assert (not b!6558747))

(assert (not b!6558434))

(assert (not b!6558698))

(assert (not b!6558572))

(assert (not b!6558629))

(assert (not b!6558288))

(assert (not d!2057757))

(assert (not d!2057759))

(assert (not b!6558641))

(assert (not d!2057835))

(assert (not b!6558509))

(assert (not d!2057877))

(assert (not b!6558506))

(assert (not bm!570446))

(assert (not d!2057739))

(assert (not b!6558305))

(assert (not d!2057865))

(assert (not b!6558448))

(assert (not d!2057875))

(assert (not bm!570401))

(assert (not b!6558740))

(assert (not b!6558719))

(assert (not bm!570444))

(assert (not b!6558582))

(assert (not b!6558307))

(assert (not b!6558702))

(assert (not d!2057755))

(assert (not b!6558505))

(assert (not bm!570433))

(assert (not d!2057807))

(assert (not b!6558596))

(assert (not d!2057767))

(assert (not b!6558389))

(assert (not bm!570421))

(assert (not b!6558676))

(assert (not b!6558351))

(assert (not b!6558243))

(assert (not b_lambda!248139))

(assert (not b!6558232))

(assert (not b!6558354))

(assert (not b!6558603))

(assert (not d!2057747))

(assert (not b!6558662))

(assert (not b!6558367))

(assert (not b!6558244))

(assert (not b!6558762))

(assert (not b!6558556))

(assert (not b!6558642))

(assert (not d!2057783))

(assert (not d!2057887))

(assert (not b!6558593))

(assert (not b!6558356))

(assert (not d!2057713))

(assert (not bm!570397))

(assert (not bs!1673994))

(assert (not b!6558581))

(assert (not b!6558588))

(assert (not setNonEmpty!44769))

(assert (not bm!570441))

(assert (not b!6558430))

(assert (not d!2057899))

(assert (not b!6558682))

(assert (not b!6558712))

(assert (not d!2057813))

(assert (not b!6558621))

(assert (not b!6558691))

(assert (not b!6558591))

(assert (not d!2057863))

(assert (not b!6558352))

(assert (not b!6558709))

(assert (not b!6558577))

(assert (not d!2057781))

(assert (not b!6558742))

(assert (not bs!1673993))

(assert (not b!6558622))

(assert (not b!6558587))

(assert (not b!6558678))

(assert (not d!2057897))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

