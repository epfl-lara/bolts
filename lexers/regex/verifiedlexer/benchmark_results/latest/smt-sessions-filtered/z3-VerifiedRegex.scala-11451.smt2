; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!619146 () Bool)

(assert start!619146)

(declare-fun b!6210980 () Bool)

(assert (=> b!6210980 true))

(assert (=> b!6210980 true))

(declare-fun lambda!339382 () Int)

(declare-fun lambda!339381 () Int)

(assert (=> b!6210980 (not (= lambda!339382 lambda!339381))))

(assert (=> b!6210980 true))

(assert (=> b!6210980 true))

(declare-fun b!6210960 () Bool)

(assert (=> b!6210960 true))

(declare-fun b!6210959 () Bool)

(declare-fun res!2567991 () Bool)

(declare-fun e!3781377 () Bool)

(assert (=> b!6210959 (=> res!2567991 e!3781377)))

(declare-datatypes ((C!32568 0))(
  ( (C!32569 (val!25986 Int)) )
))
(declare-datatypes ((Regex!16149 0))(
  ( (ElementMatch!16149 (c!1121618 C!32568)) (Concat!24994 (regOne!32810 Regex!16149) (regTwo!32810 Regex!16149)) (EmptyExpr!16149) (Star!16149 (reg!16478 Regex!16149)) (EmptyLang!16149) (Union!16149 (regOne!32811 Regex!16149) (regTwo!32811 Regex!16149)) )
))
(declare-datatypes ((List!64746 0))(
  ( (Nil!64622) (Cons!64622 (h!71070 Regex!16149) (t!378270 List!64746)) )
))
(declare-datatypes ((Context!11066 0))(
  ( (Context!11067 (exprs!6033 List!64746)) )
))
(declare-datatypes ((List!64747 0))(
  ( (Nil!64623) (Cons!64623 (h!71071 Context!11066) (t!378271 List!64747)) )
))
(declare-fun zl!343 () List!64747)

(get-info :version)

(assert (=> b!6210959 (= res!2567991 (not ((_ is Cons!64622) (exprs!6033 (h!71071 zl!343)))))))

(declare-fun e!3781381 () Bool)

(declare-fun setElem!42168 () Context!11066)

(declare-fun setRes!42168 () Bool)

(declare-fun setNonEmpty!42168 () Bool)

(declare-fun tp!1732730 () Bool)

(declare-fun inv!83619 (Context!11066) Bool)

(assert (=> setNonEmpty!42168 (= setRes!42168 (and tp!1732730 (inv!83619 setElem!42168) e!3781381))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11066))

(declare-fun setRest!42168 () (InoxSet Context!11066))

(assert (=> setNonEmpty!42168 (= z!1189 ((_ map or) (store ((as const (Array Context!11066 Bool)) false) setElem!42168 true) setRest!42168))))

(declare-fun b!6210961 () Bool)

(declare-fun e!3781384 () Bool)

(declare-fun lt!2343849 () Context!11066)

(assert (=> b!6210961 (= e!3781384 (inv!83619 lt!2343849))))

(declare-fun setIsEmpty!42168 () Bool)

(assert (=> setIsEmpty!42168 setRes!42168))

(declare-fun b!6210962 () Bool)

(declare-fun e!3781372 () Bool)

(declare-fun lt!2343840 () (InoxSet Context!11066))

(declare-datatypes ((List!64748 0))(
  ( (Nil!64624) (Cons!64624 (h!71072 C!32568) (t!378272 List!64748)) )
))
(declare-fun s!2326 () List!64748)

(declare-fun matchZipper!2161 ((InoxSet Context!11066) List!64748) Bool)

(assert (=> b!6210962 (= e!3781372 (matchZipper!2161 lt!2343840 (t!378272 s!2326)))))

(declare-fun b!6210963 () Bool)

(declare-fun e!3781375 () Bool)

(declare-fun tp_is_empty!41551 () Bool)

(assert (=> b!6210963 (= e!3781375 tp_is_empty!41551)))

(declare-fun b!6210964 () Bool)

(declare-fun tp!1732726 () Bool)

(declare-fun tp!1732725 () Bool)

(assert (=> b!6210964 (= e!3781375 (and tp!1732726 tp!1732725))))

(declare-fun b!6210965 () Bool)

(declare-fun res!2567998 () Bool)

(declare-fun e!3781380 () Bool)

(assert (=> b!6210965 (=> res!2567998 e!3781380)))

(declare-fun isEmpty!36622 (List!64746) Bool)

(assert (=> b!6210965 (= res!2567998 (isEmpty!36622 (t!378270 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun b!6210966 () Bool)

(declare-fun res!2567992 () Bool)

(declare-fun e!3781382 () Bool)

(assert (=> b!6210966 (=> (not res!2567992) (not e!3781382))))

(declare-fun r!7292 () Regex!16149)

(declare-fun unfocusZipper!1891 (List!64747) Regex!16149)

(assert (=> b!6210966 (= res!2567992 (= r!7292 (unfocusZipper!1891 zl!343)))))

(declare-fun b!6210967 () Bool)

(declare-fun e!3781385 () Bool)

(declare-fun lt!2343836 () (InoxSet Context!11066))

(assert (=> b!6210967 (= e!3781385 (not (matchZipper!2161 lt!2343836 (t!378272 s!2326))))))

(declare-fun b!6210968 () Bool)

(declare-fun tp!1732728 () Bool)

(declare-fun tp!1732723 () Bool)

(assert (=> b!6210968 (= e!3781375 (and tp!1732728 tp!1732723))))

(declare-fun e!3781373 () Bool)

(declare-fun b!6210969 () Bool)

(declare-fun tp!1732727 () Bool)

(declare-fun e!3781376 () Bool)

(assert (=> b!6210969 (= e!3781376 (and (inv!83619 (h!71071 zl!343)) e!3781373 tp!1732727))))

(declare-fun b!6210970 () Bool)

(declare-fun res!2567990 () Bool)

(assert (=> b!6210970 (=> (not res!2567990) (not e!3781382))))

(declare-fun toList!9933 ((InoxSet Context!11066)) List!64747)

(assert (=> b!6210970 (= res!2567990 (= (toList!9933 z!1189) zl!343))))

(declare-fun res!2567984 () Bool)

(assert (=> start!619146 (=> (not res!2567984) (not e!3781382))))

(declare-fun validRegex!7885 (Regex!16149) Bool)

(assert (=> start!619146 (= res!2567984 (validRegex!7885 r!7292))))

(assert (=> start!619146 e!3781382))

(assert (=> start!619146 e!3781375))

(declare-fun condSetEmpty!42168 () Bool)

(assert (=> start!619146 (= condSetEmpty!42168 (= z!1189 ((as const (Array Context!11066 Bool)) false)))))

(assert (=> start!619146 setRes!42168))

(assert (=> start!619146 e!3781376))

(declare-fun e!3781371 () Bool)

(assert (=> start!619146 e!3781371))

(declare-fun e!3781383 () Bool)

(assert (=> b!6210960 (= e!3781380 e!3781383)))

(declare-fun res!2567988 () Bool)

(assert (=> b!6210960 (=> res!2567988 e!3781383)))

(assert (=> b!6210960 (= res!2567988 (or (and ((_ is ElementMatch!16149) (regOne!32810 r!7292)) (= (c!1121618 (regOne!32810 r!7292)) (h!71072 s!2326))) ((_ is Union!16149) (regOne!32810 r!7292)) (not ((_ is Concat!24994) (regOne!32810 r!7292)))))))

(declare-datatypes ((Unit!157927 0))(
  ( (Unit!157928) )
))
(declare-fun lt!2343835 () Unit!157927)

(declare-fun e!3781378 () Unit!157927)

(assert (=> b!6210960 (= lt!2343835 e!3781378)))

(declare-fun c!1121617 () Bool)

(declare-fun nullable!6142 (Regex!16149) Bool)

(assert (=> b!6210960 (= c!1121617 (nullable!6142 (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun lambda!339383 () Int)

(declare-fun flatMap!1654 ((InoxSet Context!11066) Int) (InoxSet Context!11066))

(declare-fun derivationStepZipperUp!1323 (Context!11066 C!32568) (InoxSet Context!11066))

(assert (=> b!6210960 (= (flatMap!1654 z!1189 lambda!339383) (derivationStepZipperUp!1323 (h!71071 zl!343) (h!71072 s!2326)))))

(declare-fun lt!2343837 () Unit!157927)

(declare-fun lemmaFlatMapOnSingletonSet!1180 ((InoxSet Context!11066) Context!11066 Int) Unit!157927)

(assert (=> b!6210960 (= lt!2343837 (lemmaFlatMapOnSingletonSet!1180 z!1189 (h!71071 zl!343) lambda!339383))))

(declare-fun lt!2343834 () Context!11066)

(assert (=> b!6210960 (= lt!2343840 (derivationStepZipperUp!1323 lt!2343834 (h!71072 s!2326)))))

(declare-fun lt!2343847 () (InoxSet Context!11066))

(declare-fun derivationStepZipperDown!1397 (Regex!16149 Context!11066 C!32568) (InoxSet Context!11066))

(assert (=> b!6210960 (= lt!2343847 (derivationStepZipperDown!1397 (h!71070 (exprs!6033 (h!71071 zl!343))) lt!2343834 (h!71072 s!2326)))))

(assert (=> b!6210960 (= lt!2343834 (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun lt!2343850 () (InoxSet Context!11066))

(assert (=> b!6210960 (= lt!2343850 (derivationStepZipperUp!1323 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))) (h!71072 s!2326)))))

(declare-fun b!6210971 () Bool)

(declare-fun res!2567999 () Bool)

(assert (=> b!6210971 (=> res!2567999 e!3781377)))

(declare-fun isEmpty!36623 (List!64747) Bool)

(assert (=> b!6210971 (= res!2567999 (not (isEmpty!36623 (t!378271 zl!343))))))

(declare-fun b!6210972 () Bool)

(declare-fun e!3781379 () Bool)

(assert (=> b!6210972 (= e!3781379 e!3781384)))

(declare-fun res!2567989 () Bool)

(assert (=> b!6210972 (=> res!2567989 e!3781384)))

(assert (=> b!6210972 (= res!2567989 e!3781385)))

(declare-fun res!2567993 () Bool)

(assert (=> b!6210972 (=> (not res!2567993) (not e!3781385))))

(declare-fun lt!2343833 () Bool)

(assert (=> b!6210972 (= res!2567993 (not (= (matchZipper!2161 lt!2343847 (t!378272 s!2326)) lt!2343833)))))

(declare-fun lt!2343846 () (InoxSet Context!11066))

(declare-fun e!3781374 () Bool)

(assert (=> b!6210972 (= (matchZipper!2161 lt!2343846 (t!378272 s!2326)) e!3781374)))

(declare-fun res!2567997 () Bool)

(assert (=> b!6210972 (=> res!2567997 e!3781374)))

(assert (=> b!6210972 (= res!2567997 lt!2343833)))

(declare-fun lt!2343848 () (InoxSet Context!11066))

(assert (=> b!6210972 (= lt!2343833 (matchZipper!2161 lt!2343848 (t!378272 s!2326)))))

(declare-fun lt!2343841 () Unit!157927)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!980 ((InoxSet Context!11066) (InoxSet Context!11066) List!64748) Unit!157927)

(assert (=> b!6210972 (= lt!2343841 (lemmaZipperConcatMatchesSameAsBothZippers!980 lt!2343848 lt!2343836 (t!378272 s!2326)))))

(declare-fun b!6210973 () Bool)

(declare-fun res!2567985 () Bool)

(assert (=> b!6210973 (=> res!2567985 e!3781383)))

(assert (=> b!6210973 (= res!2567985 (not (nullable!6142 (regOne!32810 (regOne!32810 r!7292)))))))

(declare-fun b!6210974 () Bool)

(declare-fun tp!1732721 () Bool)

(assert (=> b!6210974 (= e!3781375 tp!1732721)))

(declare-fun b!6210975 () Bool)

(declare-fun tp!1732722 () Bool)

(assert (=> b!6210975 (= e!3781381 tp!1732722)))

(declare-fun b!6210976 () Bool)

(assert (=> b!6210976 (= e!3781382 (not e!3781377))))

(declare-fun res!2567983 () Bool)

(assert (=> b!6210976 (=> res!2567983 e!3781377)))

(assert (=> b!6210976 (= res!2567983 (not ((_ is Cons!64623) zl!343)))))

(declare-fun lt!2343839 () Bool)

(declare-fun matchRSpec!3250 (Regex!16149 List!64748) Bool)

(assert (=> b!6210976 (= lt!2343839 (matchRSpec!3250 r!7292 s!2326))))

(declare-fun matchR!8332 (Regex!16149 List!64748) Bool)

(assert (=> b!6210976 (= lt!2343839 (matchR!8332 r!7292 s!2326))))

(declare-fun lt!2343843 () Unit!157927)

(declare-fun mainMatchTheorem!3250 (Regex!16149 List!64748) Unit!157927)

(assert (=> b!6210976 (= lt!2343843 (mainMatchTheorem!3250 r!7292 s!2326))))

(declare-fun b!6210977 () Bool)

(declare-fun Unit!157929 () Unit!157927)

(assert (=> b!6210977 (= e!3781378 Unit!157929)))

(declare-fun lt!2343845 () Unit!157927)

(assert (=> b!6210977 (= lt!2343845 (lemmaZipperConcatMatchesSameAsBothZippers!980 lt!2343847 lt!2343840 (t!378272 s!2326)))))

(declare-fun res!2567982 () Bool)

(assert (=> b!6210977 (= res!2567982 (matchZipper!2161 lt!2343847 (t!378272 s!2326)))))

(assert (=> b!6210977 (=> res!2567982 e!3781372)))

(assert (=> b!6210977 (= (matchZipper!2161 ((_ map or) lt!2343847 lt!2343840) (t!378272 s!2326)) e!3781372)))

(declare-fun b!6210978 () Bool)

(declare-fun res!2567987 () Bool)

(assert (=> b!6210978 (=> res!2567987 e!3781377)))

(assert (=> b!6210978 (= res!2567987 (or ((_ is EmptyExpr!16149) r!7292) ((_ is EmptyLang!16149) r!7292) ((_ is ElementMatch!16149) r!7292) ((_ is Union!16149) r!7292) (not ((_ is Concat!24994) r!7292))))))

(declare-fun b!6210979 () Bool)

(assert (=> b!6210979 (= e!3781374 (matchZipper!2161 lt!2343836 (t!378272 s!2326)))))

(assert (=> b!6210980 (= e!3781377 e!3781380)))

(declare-fun res!2567994 () Bool)

(assert (=> b!6210980 (=> res!2567994 e!3781380)))

(declare-fun lt!2343838 () Bool)

(assert (=> b!6210980 (= res!2567994 (or (not (= lt!2343839 lt!2343838)) ((_ is Nil!64624) s!2326)))))

(declare-fun Exists!3219 (Int) Bool)

(assert (=> b!6210980 (= (Exists!3219 lambda!339381) (Exists!3219 lambda!339382))))

(declare-fun lt!2343842 () Unit!157927)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!1756 (Regex!16149 Regex!16149 List!64748) Unit!157927)

(assert (=> b!6210980 (= lt!2343842 (lemmaExistCutMatchRandMatchRSpecEquivalent!1756 (regOne!32810 r!7292) (regTwo!32810 r!7292) s!2326))))

(assert (=> b!6210980 (= lt!2343838 (Exists!3219 lambda!339381))))

(declare-datatypes ((tuple2!66256 0))(
  ( (tuple2!66257 (_1!36431 List!64748) (_2!36431 List!64748)) )
))
(declare-datatypes ((Option!16040 0))(
  ( (None!16039) (Some!16039 (v!52184 tuple2!66256)) )
))
(declare-fun isDefined!12743 (Option!16040) Bool)

(declare-fun findConcatSeparation!2454 (Regex!16149 Regex!16149 List!64748 List!64748 List!64748) Option!16040)

(assert (=> b!6210980 (= lt!2343838 (isDefined!12743 (findConcatSeparation!2454 (regOne!32810 r!7292) (regTwo!32810 r!7292) Nil!64624 s!2326 s!2326)))))

(declare-fun lt!2343844 () Unit!157927)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2218 (Regex!16149 Regex!16149 List!64748) Unit!157927)

(assert (=> b!6210980 (= lt!2343844 (lemmaFindConcatSeparationEquivalentToExists!2218 (regOne!32810 r!7292) (regTwo!32810 r!7292) s!2326))))

(declare-fun b!6210981 () Bool)

(declare-fun Unit!157930 () Unit!157927)

(assert (=> b!6210981 (= e!3781378 Unit!157930)))

(declare-fun b!6210982 () Bool)

(assert (=> b!6210982 (= e!3781383 e!3781379)))

(declare-fun res!2567996 () Bool)

(assert (=> b!6210982 (=> res!2567996 e!3781379)))

(assert (=> b!6210982 (= res!2567996 (not (= lt!2343847 lt!2343846)))))

(assert (=> b!6210982 (= lt!2343846 ((_ map or) lt!2343848 lt!2343836))))

(assert (=> b!6210982 (= lt!2343836 (derivationStepZipperDown!1397 (regTwo!32810 (regOne!32810 r!7292)) lt!2343834 (h!71072 s!2326)))))

(assert (=> b!6210982 (= lt!2343848 (derivationStepZipperDown!1397 (regOne!32810 (regOne!32810 r!7292)) lt!2343849 (h!71072 s!2326)))))

(assert (=> b!6210982 (= lt!2343849 (Context!11067 (Cons!64622 (regTwo!32810 (regOne!32810 r!7292)) (t!378270 (exprs!6033 (h!71071 zl!343))))))))

(declare-fun b!6210983 () Bool)

(declare-fun res!2567986 () Bool)

(assert (=> b!6210983 (=> res!2567986 e!3781377)))

(declare-fun generalisedUnion!1993 (List!64746) Regex!16149)

(declare-fun unfocusZipperList!1570 (List!64747) List!64746)

(assert (=> b!6210983 (= res!2567986 (not (= r!7292 (generalisedUnion!1993 (unfocusZipperList!1570 zl!343)))))))

(declare-fun b!6210984 () Bool)

(declare-fun tp!1732729 () Bool)

(assert (=> b!6210984 (= e!3781371 (and tp_is_empty!41551 tp!1732729))))

(declare-fun b!6210985 () Bool)

(declare-fun res!2567995 () Bool)

(assert (=> b!6210985 (=> res!2567995 e!3781377)))

(declare-fun generalisedConcat!1746 (List!64746) Regex!16149)

(assert (=> b!6210985 (= res!2567995 (not (= r!7292 (generalisedConcat!1746 (exprs!6033 (h!71071 zl!343))))))))

(declare-fun b!6210986 () Bool)

(declare-fun tp!1732724 () Bool)

(assert (=> b!6210986 (= e!3781373 tp!1732724)))

(assert (= (and start!619146 res!2567984) b!6210970))

(assert (= (and b!6210970 res!2567990) b!6210966))

(assert (= (and b!6210966 res!2567992) b!6210976))

(assert (= (and b!6210976 (not res!2567983)) b!6210971))

(assert (= (and b!6210971 (not res!2567999)) b!6210985))

(assert (= (and b!6210985 (not res!2567995)) b!6210959))

(assert (= (and b!6210959 (not res!2567991)) b!6210983))

(assert (= (and b!6210983 (not res!2567986)) b!6210978))

(assert (= (and b!6210978 (not res!2567987)) b!6210980))

(assert (= (and b!6210980 (not res!2567994)) b!6210965))

(assert (= (and b!6210965 (not res!2567998)) b!6210960))

(assert (= (and b!6210960 c!1121617) b!6210977))

(assert (= (and b!6210960 (not c!1121617)) b!6210981))

(assert (= (and b!6210977 (not res!2567982)) b!6210962))

(assert (= (and b!6210960 (not res!2567988)) b!6210973))

(assert (= (and b!6210973 (not res!2567985)) b!6210982))

(assert (= (and b!6210982 (not res!2567996)) b!6210972))

(assert (= (and b!6210972 (not res!2567997)) b!6210979))

(assert (= (and b!6210972 res!2567993) b!6210967))

(assert (= (and b!6210972 (not res!2567989)) b!6210961))

(assert (= (and start!619146 ((_ is ElementMatch!16149) r!7292)) b!6210963))

(assert (= (and start!619146 ((_ is Concat!24994) r!7292)) b!6210968))

(assert (= (and start!619146 ((_ is Star!16149) r!7292)) b!6210974))

(assert (= (and start!619146 ((_ is Union!16149) r!7292)) b!6210964))

(assert (= (and start!619146 condSetEmpty!42168) setIsEmpty!42168))

(assert (= (and start!619146 (not condSetEmpty!42168)) setNonEmpty!42168))

(assert (= setNonEmpty!42168 b!6210975))

(assert (= b!6210969 b!6210986))

(assert (= (and start!619146 ((_ is Cons!64623) zl!343)) b!6210969))

(assert (= (and start!619146 ((_ is Cons!64624) s!2326)) b!6210984))

(declare-fun m!7040914 () Bool)

(assert (=> b!6210965 m!7040914))

(declare-fun m!7040916 () Bool)

(assert (=> b!6210962 m!7040916))

(declare-fun m!7040918 () Bool)

(assert (=> b!6210966 m!7040918))

(declare-fun m!7040920 () Bool)

(assert (=> b!6210970 m!7040920))

(declare-fun m!7040922 () Bool)

(assert (=> b!6210971 m!7040922))

(declare-fun m!7040924 () Bool)

(assert (=> b!6210977 m!7040924))

(declare-fun m!7040926 () Bool)

(assert (=> b!6210977 m!7040926))

(declare-fun m!7040928 () Bool)

(assert (=> b!6210977 m!7040928))

(declare-fun m!7040930 () Bool)

(assert (=> b!6210985 m!7040930))

(declare-fun m!7040932 () Bool)

(assert (=> b!6210973 m!7040932))

(declare-fun m!7040934 () Bool)

(assert (=> b!6210960 m!7040934))

(declare-fun m!7040936 () Bool)

(assert (=> b!6210960 m!7040936))

(declare-fun m!7040938 () Bool)

(assert (=> b!6210960 m!7040938))

(declare-fun m!7040940 () Bool)

(assert (=> b!6210960 m!7040940))

(declare-fun m!7040942 () Bool)

(assert (=> b!6210960 m!7040942))

(declare-fun m!7040944 () Bool)

(assert (=> b!6210960 m!7040944))

(declare-fun m!7040946 () Bool)

(assert (=> b!6210960 m!7040946))

(declare-fun m!7040948 () Bool)

(assert (=> start!619146 m!7040948))

(declare-fun m!7040950 () Bool)

(assert (=> b!6210979 m!7040950))

(assert (=> b!6210967 m!7040950))

(declare-fun m!7040952 () Bool)

(assert (=> b!6210976 m!7040952))

(declare-fun m!7040954 () Bool)

(assert (=> b!6210976 m!7040954))

(declare-fun m!7040956 () Bool)

(assert (=> b!6210976 m!7040956))

(declare-fun m!7040958 () Bool)

(assert (=> b!6210961 m!7040958))

(declare-fun m!7040960 () Bool)

(assert (=> b!6210969 m!7040960))

(declare-fun m!7040962 () Bool)

(assert (=> b!6210983 m!7040962))

(assert (=> b!6210983 m!7040962))

(declare-fun m!7040964 () Bool)

(assert (=> b!6210983 m!7040964))

(declare-fun m!7040966 () Bool)

(assert (=> setNonEmpty!42168 m!7040966))

(declare-fun m!7040968 () Bool)

(assert (=> b!6210980 m!7040968))

(declare-fun m!7040970 () Bool)

(assert (=> b!6210980 m!7040970))

(declare-fun m!7040972 () Bool)

(assert (=> b!6210980 m!7040972))

(declare-fun m!7040974 () Bool)

(assert (=> b!6210980 m!7040974))

(assert (=> b!6210980 m!7040972))

(declare-fun m!7040976 () Bool)

(assert (=> b!6210980 m!7040976))

(assert (=> b!6210980 m!7040968))

(declare-fun m!7040978 () Bool)

(assert (=> b!6210980 m!7040978))

(declare-fun m!7040980 () Bool)

(assert (=> b!6210982 m!7040980))

(declare-fun m!7040982 () Bool)

(assert (=> b!6210982 m!7040982))

(assert (=> b!6210972 m!7040926))

(declare-fun m!7040984 () Bool)

(assert (=> b!6210972 m!7040984))

(declare-fun m!7040986 () Bool)

(assert (=> b!6210972 m!7040986))

(declare-fun m!7040988 () Bool)

(assert (=> b!6210972 m!7040988))

(check-sat tp_is_empty!41551 (not b!6210976) (not setNonEmpty!42168) (not b!6210966) (not b!6210969) (not b!6210975) (not b!6210985) (not b!6210979) (not b!6210962) (not b!6210982) (not b!6210980) (not b!6210986) (not b!6210984) (not start!619146) (not b!6210977) (not b!6210973) (not b!6210960) (not b!6210967) (not b!6210965) (not b!6210968) (not b!6210961) (not b!6210971) (not b!6210972) (not b!6210983) (not b!6210964) (not b!6210970) (not b!6210974))
(check-sat)
(get-model)

(declare-fun d!1946988 () Bool)

(declare-fun c!1121724 () Bool)

(declare-fun isEmpty!36626 (List!64748) Bool)

(assert (=> d!1946988 (= c!1121724 (isEmpty!36626 (t!378272 s!2326)))))

(declare-fun e!3781598 () Bool)

(assert (=> d!1946988 (= (matchZipper!2161 lt!2343836 (t!378272 s!2326)) e!3781598)))

(declare-fun b!6211371 () Bool)

(declare-fun nullableZipper!1923 ((InoxSet Context!11066)) Bool)

(assert (=> b!6211371 (= e!3781598 (nullableZipper!1923 lt!2343836))))

(declare-fun b!6211372 () Bool)

(declare-fun derivationStepZipper!2115 ((InoxSet Context!11066) C!32568) (InoxSet Context!11066))

(declare-fun head!12806 (List!64748) C!32568)

(declare-fun tail!11891 (List!64748) List!64748)

(assert (=> b!6211372 (= e!3781598 (matchZipper!2161 (derivationStepZipper!2115 lt!2343836 (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))))))

(assert (= (and d!1946988 c!1121724) b!6211371))

(assert (= (and d!1946988 (not c!1121724)) b!6211372))

(declare-fun m!7041222 () Bool)

(assert (=> d!1946988 m!7041222))

(declare-fun m!7041224 () Bool)

(assert (=> b!6211371 m!7041224))

(declare-fun m!7041226 () Bool)

(assert (=> b!6211372 m!7041226))

(assert (=> b!6211372 m!7041226))

(declare-fun m!7041228 () Bool)

(assert (=> b!6211372 m!7041228))

(declare-fun m!7041230 () Bool)

(assert (=> b!6211372 m!7041230))

(assert (=> b!6211372 m!7041228))

(assert (=> b!6211372 m!7041230))

(declare-fun m!7041232 () Bool)

(assert (=> b!6211372 m!7041232))

(assert (=> b!6210979 d!1946988))

(declare-fun d!1946990 () Bool)

(declare-fun lambda!339415 () Int)

(declare-fun forall!15263 (List!64746 Int) Bool)

(assert (=> d!1946990 (= (inv!83619 setElem!42168) (forall!15263 (exprs!6033 setElem!42168) lambda!339415))))

(declare-fun bs!1540682 () Bool)

(assert (= bs!1540682 d!1946990))

(declare-fun m!7041234 () Bool)

(assert (=> bs!1540682 m!7041234))

(assert (=> setNonEmpty!42168 d!1946990))

(declare-fun e!3781601 () Bool)

(declare-fun d!1946992 () Bool)

(assert (=> d!1946992 (= (matchZipper!2161 ((_ map or) lt!2343847 lt!2343840) (t!378272 s!2326)) e!3781601)))

(declare-fun res!2568116 () Bool)

(assert (=> d!1946992 (=> res!2568116 e!3781601)))

(assert (=> d!1946992 (= res!2568116 (matchZipper!2161 lt!2343847 (t!378272 s!2326)))))

(declare-fun lt!2343896 () Unit!157927)

(declare-fun choose!46158 ((InoxSet Context!11066) (InoxSet Context!11066) List!64748) Unit!157927)

(assert (=> d!1946992 (= lt!2343896 (choose!46158 lt!2343847 lt!2343840 (t!378272 s!2326)))))

(assert (=> d!1946992 (= (lemmaZipperConcatMatchesSameAsBothZippers!980 lt!2343847 lt!2343840 (t!378272 s!2326)) lt!2343896)))

(declare-fun b!6211375 () Bool)

(assert (=> b!6211375 (= e!3781601 (matchZipper!2161 lt!2343840 (t!378272 s!2326)))))

(assert (= (and d!1946992 (not res!2568116)) b!6211375))

(assert (=> d!1946992 m!7040928))

(assert (=> d!1946992 m!7040926))

(declare-fun m!7041236 () Bool)

(assert (=> d!1946992 m!7041236))

(assert (=> b!6211375 m!7040916))

(assert (=> b!6210977 d!1946992))

(declare-fun d!1946994 () Bool)

(declare-fun c!1121725 () Bool)

(assert (=> d!1946994 (= c!1121725 (isEmpty!36626 (t!378272 s!2326)))))

(declare-fun e!3781602 () Bool)

(assert (=> d!1946994 (= (matchZipper!2161 lt!2343847 (t!378272 s!2326)) e!3781602)))

(declare-fun b!6211376 () Bool)

(assert (=> b!6211376 (= e!3781602 (nullableZipper!1923 lt!2343847))))

(declare-fun b!6211377 () Bool)

(assert (=> b!6211377 (= e!3781602 (matchZipper!2161 (derivationStepZipper!2115 lt!2343847 (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))))))

(assert (= (and d!1946994 c!1121725) b!6211376))

(assert (= (and d!1946994 (not c!1121725)) b!6211377))

(assert (=> d!1946994 m!7041222))

(declare-fun m!7041238 () Bool)

(assert (=> b!6211376 m!7041238))

(assert (=> b!6211377 m!7041226))

(assert (=> b!6211377 m!7041226))

(declare-fun m!7041240 () Bool)

(assert (=> b!6211377 m!7041240))

(assert (=> b!6211377 m!7041230))

(assert (=> b!6211377 m!7041240))

(assert (=> b!6211377 m!7041230))

(declare-fun m!7041242 () Bool)

(assert (=> b!6211377 m!7041242))

(assert (=> b!6210977 d!1946994))

(declare-fun d!1946996 () Bool)

(declare-fun c!1121726 () Bool)

(assert (=> d!1946996 (= c!1121726 (isEmpty!36626 (t!378272 s!2326)))))

(declare-fun e!3781603 () Bool)

(assert (=> d!1946996 (= (matchZipper!2161 ((_ map or) lt!2343847 lt!2343840) (t!378272 s!2326)) e!3781603)))

(declare-fun b!6211378 () Bool)

(assert (=> b!6211378 (= e!3781603 (nullableZipper!1923 ((_ map or) lt!2343847 lt!2343840)))))

(declare-fun b!6211379 () Bool)

(assert (=> b!6211379 (= e!3781603 (matchZipper!2161 (derivationStepZipper!2115 ((_ map or) lt!2343847 lt!2343840) (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))))))

(assert (= (and d!1946996 c!1121726) b!6211378))

(assert (= (and d!1946996 (not c!1121726)) b!6211379))

(assert (=> d!1946996 m!7041222))

(declare-fun m!7041244 () Bool)

(assert (=> b!6211378 m!7041244))

(assert (=> b!6211379 m!7041226))

(assert (=> b!6211379 m!7041226))

(declare-fun m!7041246 () Bool)

(assert (=> b!6211379 m!7041246))

(assert (=> b!6211379 m!7041230))

(assert (=> b!6211379 m!7041246))

(assert (=> b!6211379 m!7041230))

(declare-fun m!7041248 () Bool)

(assert (=> b!6211379 m!7041248))

(assert (=> b!6210977 d!1946996))

(assert (=> b!6210967 d!1946988))

(declare-fun bs!1540683 () Bool)

(declare-fun d!1946998 () Bool)

(assert (= bs!1540683 (and d!1946998 d!1946990)))

(declare-fun lambda!339416 () Int)

(assert (=> bs!1540683 (= lambda!339416 lambda!339415)))

(assert (=> d!1946998 (= (inv!83619 lt!2343849) (forall!15263 (exprs!6033 lt!2343849) lambda!339416))))

(declare-fun bs!1540684 () Bool)

(assert (= bs!1540684 d!1946998))

(declare-fun m!7041250 () Bool)

(assert (=> bs!1540684 m!7041250))

(assert (=> b!6210961 d!1946998))

(declare-fun d!1947000 () Bool)

(assert (=> d!1947000 (= (isEmpty!36623 (t!378271 zl!343)) ((_ is Nil!64623) (t!378271 zl!343)))))

(assert (=> b!6210971 d!1947000))

(declare-fun b!6211402 () Bool)

(declare-fun e!3781619 () (InoxSet Context!11066))

(declare-fun call!520604 () (InoxSet Context!11066))

(declare-fun call!520609 () (InoxSet Context!11066))

(assert (=> b!6211402 (= e!3781619 ((_ map or) call!520604 call!520609))))

(declare-fun c!1121737 () Bool)

(declare-fun call!520605 () List!64746)

(declare-fun bm!520599 () Bool)

(assert (=> bm!520599 (= call!520604 (derivationStepZipperDown!1397 (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292)))) (ite c!1121737 lt!2343834 (Context!11067 call!520605)) (h!71072 s!2326)))))

(declare-fun d!1947002 () Bool)

(declare-fun c!1121738 () Bool)

(assert (=> d!1947002 (= c!1121738 (and ((_ is ElementMatch!16149) (regTwo!32810 (regOne!32810 r!7292))) (= (c!1121618 (regTwo!32810 (regOne!32810 r!7292))) (h!71072 s!2326))))))

(declare-fun e!3781618 () (InoxSet Context!11066))

(assert (=> d!1947002 (= (derivationStepZipperDown!1397 (regTwo!32810 (regOne!32810 r!7292)) lt!2343834 (h!71072 s!2326)) e!3781618)))

(declare-fun b!6211403 () Bool)

(assert (=> b!6211403 (= e!3781618 (store ((as const (Array Context!11066 Bool)) false) lt!2343834 true))))

(declare-fun b!6211404 () Bool)

(declare-fun e!3781620 () (InoxSet Context!11066))

(assert (=> b!6211404 (= e!3781620 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6211405 () Bool)

(declare-fun e!3781616 () (InoxSet Context!11066))

(assert (=> b!6211405 (= e!3781618 e!3781616)))

(assert (=> b!6211405 (= c!1121737 ((_ is Union!16149) (regTwo!32810 (regOne!32810 r!7292))))))

(declare-fun bm!520600 () Bool)

(declare-fun call!520608 () (InoxSet Context!11066))

(assert (=> bm!520600 (= call!520608 call!520609)))

(declare-fun b!6211406 () Bool)

(declare-fun e!3781621 () (InoxSet Context!11066))

(assert (=> b!6211406 (= e!3781621 call!520608)))

(declare-fun c!1121741 () Bool)

(declare-fun c!1121740 () Bool)

(declare-fun bm!520601 () Bool)

(declare-fun $colon$colon!2018 (List!64746 Regex!16149) List!64746)

(assert (=> bm!520601 (= call!520605 ($colon$colon!2018 (exprs!6033 lt!2343834) (ite (or c!1121740 c!1121741) (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (regTwo!32810 (regOne!32810 r!7292)))))))

(declare-fun b!6211407 () Bool)

(assert (=> b!6211407 (= e!3781619 e!3781621)))

(assert (=> b!6211407 (= c!1121741 ((_ is Concat!24994) (regTwo!32810 (regOne!32810 r!7292))))))

(declare-fun bm!520602 () Bool)

(declare-fun call!520606 () (InoxSet Context!11066))

(assert (=> bm!520602 (= call!520609 call!520606)))

(declare-fun b!6211408 () Bool)

(declare-fun e!3781617 () Bool)

(assert (=> b!6211408 (= e!3781617 (nullable!6142 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292)))))))

(declare-fun b!6211409 () Bool)

(assert (=> b!6211409 (= c!1121740 e!3781617)))

(declare-fun res!2568119 () Bool)

(assert (=> b!6211409 (=> (not res!2568119) (not e!3781617))))

(assert (=> b!6211409 (= res!2568119 ((_ is Concat!24994) (regTwo!32810 (regOne!32810 r!7292))))))

(assert (=> b!6211409 (= e!3781616 e!3781619)))

(declare-fun bm!520603 () Bool)

(declare-fun call!520607 () List!64746)

(assert (=> bm!520603 (= call!520607 call!520605)))

(declare-fun b!6211410 () Bool)

(assert (=> b!6211410 (= e!3781616 ((_ map or) call!520604 call!520606))))

(declare-fun bm!520604 () Bool)

(assert (=> bm!520604 (= call!520606 (derivationStepZipperDown!1397 (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292)))))) (ite (or c!1121737 c!1121740) lt!2343834 (Context!11067 call!520607)) (h!71072 s!2326)))))

(declare-fun b!6211411 () Bool)

(assert (=> b!6211411 (= e!3781620 call!520608)))

(declare-fun b!6211412 () Bool)

(declare-fun c!1121739 () Bool)

(assert (=> b!6211412 (= c!1121739 ((_ is Star!16149) (regTwo!32810 (regOne!32810 r!7292))))))

(assert (=> b!6211412 (= e!3781621 e!3781620)))

(assert (= (and d!1947002 c!1121738) b!6211403))

(assert (= (and d!1947002 (not c!1121738)) b!6211405))

(assert (= (and b!6211405 c!1121737) b!6211410))

(assert (= (and b!6211405 (not c!1121737)) b!6211409))

(assert (= (and b!6211409 res!2568119) b!6211408))

(assert (= (and b!6211409 c!1121740) b!6211402))

(assert (= (and b!6211409 (not c!1121740)) b!6211407))

(assert (= (and b!6211407 c!1121741) b!6211406))

(assert (= (and b!6211407 (not c!1121741)) b!6211412))

(assert (= (and b!6211412 c!1121739) b!6211411))

(assert (= (and b!6211412 (not c!1121739)) b!6211404))

(assert (= (or b!6211406 b!6211411) bm!520603))

(assert (= (or b!6211406 b!6211411) bm!520600))

(assert (= (or b!6211402 bm!520603) bm!520601))

(assert (= (or b!6211402 bm!520600) bm!520602))

(assert (= (or b!6211410 bm!520602) bm!520604))

(assert (= (or b!6211410 b!6211402) bm!520599))

(declare-fun m!7041252 () Bool)

(assert (=> b!6211403 m!7041252))

(declare-fun m!7041254 () Bool)

(assert (=> b!6211408 m!7041254))

(declare-fun m!7041256 () Bool)

(assert (=> bm!520604 m!7041256))

(declare-fun m!7041258 () Bool)

(assert (=> bm!520599 m!7041258))

(declare-fun m!7041260 () Bool)

(assert (=> bm!520601 m!7041260))

(assert (=> b!6210982 d!1947002))

(declare-fun b!6211413 () Bool)

(declare-fun e!3781625 () (InoxSet Context!11066))

(declare-fun call!520610 () (InoxSet Context!11066))

(declare-fun call!520615 () (InoxSet Context!11066))

(assert (=> b!6211413 (= e!3781625 ((_ map or) call!520610 call!520615))))

(declare-fun call!520611 () List!64746)

(declare-fun c!1121742 () Bool)

(declare-fun bm!520605 () Bool)

(assert (=> bm!520605 (= call!520610 (derivationStepZipperDown!1397 (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292)))) (ite c!1121742 lt!2343849 (Context!11067 call!520611)) (h!71072 s!2326)))))

(declare-fun d!1947004 () Bool)

(declare-fun c!1121743 () Bool)

(assert (=> d!1947004 (= c!1121743 (and ((_ is ElementMatch!16149) (regOne!32810 (regOne!32810 r!7292))) (= (c!1121618 (regOne!32810 (regOne!32810 r!7292))) (h!71072 s!2326))))))

(declare-fun e!3781624 () (InoxSet Context!11066))

(assert (=> d!1947004 (= (derivationStepZipperDown!1397 (regOne!32810 (regOne!32810 r!7292)) lt!2343849 (h!71072 s!2326)) e!3781624)))

(declare-fun b!6211414 () Bool)

(assert (=> b!6211414 (= e!3781624 (store ((as const (Array Context!11066 Bool)) false) lt!2343849 true))))

(declare-fun b!6211415 () Bool)

(declare-fun e!3781626 () (InoxSet Context!11066))

(assert (=> b!6211415 (= e!3781626 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6211416 () Bool)

(declare-fun e!3781622 () (InoxSet Context!11066))

(assert (=> b!6211416 (= e!3781624 e!3781622)))

(assert (=> b!6211416 (= c!1121742 ((_ is Union!16149) (regOne!32810 (regOne!32810 r!7292))))))

(declare-fun bm!520606 () Bool)

(declare-fun call!520614 () (InoxSet Context!11066))

(assert (=> bm!520606 (= call!520614 call!520615)))

(declare-fun b!6211417 () Bool)

(declare-fun e!3781627 () (InoxSet Context!11066))

(assert (=> b!6211417 (= e!3781627 call!520614)))

(declare-fun c!1121745 () Bool)

(declare-fun c!1121746 () Bool)

(declare-fun bm!520607 () Bool)

(assert (=> bm!520607 (= call!520611 ($colon$colon!2018 (exprs!6033 lt!2343849) (ite (or c!1121745 c!1121746) (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 r!7292)))))))

(declare-fun b!6211418 () Bool)

(assert (=> b!6211418 (= e!3781625 e!3781627)))

(assert (=> b!6211418 (= c!1121746 ((_ is Concat!24994) (regOne!32810 (regOne!32810 r!7292))))))

(declare-fun bm!520608 () Bool)

(declare-fun call!520612 () (InoxSet Context!11066))

(assert (=> bm!520608 (= call!520615 call!520612)))

(declare-fun b!6211419 () Bool)

(declare-fun e!3781623 () Bool)

(assert (=> b!6211419 (= e!3781623 (nullable!6142 (regOne!32810 (regOne!32810 (regOne!32810 r!7292)))))))

(declare-fun b!6211420 () Bool)

(assert (=> b!6211420 (= c!1121745 e!3781623)))

(declare-fun res!2568120 () Bool)

(assert (=> b!6211420 (=> (not res!2568120) (not e!3781623))))

(assert (=> b!6211420 (= res!2568120 ((_ is Concat!24994) (regOne!32810 (regOne!32810 r!7292))))))

(assert (=> b!6211420 (= e!3781622 e!3781625)))

(declare-fun bm!520609 () Bool)

(declare-fun call!520613 () List!64746)

(assert (=> bm!520609 (= call!520613 call!520611)))

(declare-fun b!6211421 () Bool)

(assert (=> b!6211421 (= e!3781622 ((_ map or) call!520610 call!520612))))

(declare-fun bm!520610 () Bool)

(assert (=> bm!520610 (= call!520612 (derivationStepZipperDown!1397 (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292)))))) (ite (or c!1121742 c!1121745) lt!2343849 (Context!11067 call!520613)) (h!71072 s!2326)))))

(declare-fun b!6211422 () Bool)

(assert (=> b!6211422 (= e!3781626 call!520614)))

(declare-fun b!6211423 () Bool)

(declare-fun c!1121744 () Bool)

(assert (=> b!6211423 (= c!1121744 ((_ is Star!16149) (regOne!32810 (regOne!32810 r!7292))))))

(assert (=> b!6211423 (= e!3781627 e!3781626)))

(assert (= (and d!1947004 c!1121743) b!6211414))

(assert (= (and d!1947004 (not c!1121743)) b!6211416))

(assert (= (and b!6211416 c!1121742) b!6211421))

(assert (= (and b!6211416 (not c!1121742)) b!6211420))

(assert (= (and b!6211420 res!2568120) b!6211419))

(assert (= (and b!6211420 c!1121745) b!6211413))

(assert (= (and b!6211420 (not c!1121745)) b!6211418))

(assert (= (and b!6211418 c!1121746) b!6211417))

(assert (= (and b!6211418 (not c!1121746)) b!6211423))

(assert (= (and b!6211423 c!1121744) b!6211422))

(assert (= (and b!6211423 (not c!1121744)) b!6211415))

(assert (= (or b!6211417 b!6211422) bm!520609))

(assert (= (or b!6211417 b!6211422) bm!520606))

(assert (= (or b!6211413 bm!520609) bm!520607))

(assert (= (or b!6211413 bm!520606) bm!520608))

(assert (= (or b!6211421 bm!520608) bm!520610))

(assert (= (or b!6211421 b!6211413) bm!520605))

(declare-fun m!7041262 () Bool)

(assert (=> b!6211414 m!7041262))

(declare-fun m!7041264 () Bool)

(assert (=> b!6211419 m!7041264))

(declare-fun m!7041266 () Bool)

(assert (=> bm!520610 m!7041266))

(declare-fun m!7041268 () Bool)

(assert (=> bm!520605 m!7041268))

(declare-fun m!7041270 () Bool)

(assert (=> bm!520607 m!7041270))

(assert (=> b!6210982 d!1947004))

(declare-fun bs!1540685 () Bool)

(declare-fun d!1947006 () Bool)

(assert (= bs!1540685 (and d!1947006 d!1946990)))

(declare-fun lambda!339417 () Int)

(assert (=> bs!1540685 (= lambda!339417 lambda!339415)))

(declare-fun bs!1540686 () Bool)

(assert (= bs!1540686 (and d!1947006 d!1946998)))

(assert (=> bs!1540686 (= lambda!339417 lambda!339416)))

(assert (=> d!1947006 (= (inv!83619 (h!71071 zl!343)) (forall!15263 (exprs!6033 (h!71071 zl!343)) lambda!339417))))

(declare-fun bs!1540687 () Bool)

(assert (= bs!1540687 d!1947006))

(declare-fun m!7041272 () Bool)

(assert (=> bs!1540687 m!7041272))

(assert (=> b!6210969 d!1947006))

(declare-fun b!6211442 () Bool)

(declare-fun e!3781641 () Option!16040)

(assert (=> b!6211442 (= e!3781641 (Some!16039 (tuple2!66257 Nil!64624 s!2326)))))

(declare-fun b!6211443 () Bool)

(declare-fun e!3781639 () Bool)

(declare-fun lt!2343905 () Option!16040)

(assert (=> b!6211443 (= e!3781639 (not (isDefined!12743 lt!2343905)))))

(declare-fun d!1947008 () Bool)

(assert (=> d!1947008 e!3781639))

(declare-fun res!2568133 () Bool)

(assert (=> d!1947008 (=> res!2568133 e!3781639)))

(declare-fun e!3781640 () Bool)

(assert (=> d!1947008 (= res!2568133 e!3781640)))

(declare-fun res!2568135 () Bool)

(assert (=> d!1947008 (=> (not res!2568135) (not e!3781640))))

(assert (=> d!1947008 (= res!2568135 (isDefined!12743 lt!2343905))))

(assert (=> d!1947008 (= lt!2343905 e!3781641)))

(declare-fun c!1121752 () Bool)

(declare-fun e!3781642 () Bool)

(assert (=> d!1947008 (= c!1121752 e!3781642)))

(declare-fun res!2568132 () Bool)

(assert (=> d!1947008 (=> (not res!2568132) (not e!3781642))))

(assert (=> d!1947008 (= res!2568132 (matchR!8332 (regOne!32810 r!7292) Nil!64624))))

(assert (=> d!1947008 (validRegex!7885 (regOne!32810 r!7292))))

(assert (=> d!1947008 (= (findConcatSeparation!2454 (regOne!32810 r!7292) (regTwo!32810 r!7292) Nil!64624 s!2326 s!2326) lt!2343905)))

(declare-fun b!6211444 () Bool)

(declare-fun res!2568134 () Bool)

(assert (=> b!6211444 (=> (not res!2568134) (not e!3781640))))

(declare-fun get!22317 (Option!16040) tuple2!66256)

(assert (=> b!6211444 (= res!2568134 (matchR!8332 (regTwo!32810 r!7292) (_2!36431 (get!22317 lt!2343905))))))

(declare-fun b!6211445 () Bool)

(assert (=> b!6211445 (= e!3781642 (matchR!8332 (regTwo!32810 r!7292) s!2326))))

(declare-fun b!6211446 () Bool)

(declare-fun e!3781638 () Option!16040)

(assert (=> b!6211446 (= e!3781638 None!16039)))

(declare-fun b!6211447 () Bool)

(declare-fun ++!14227 (List!64748 List!64748) List!64748)

(assert (=> b!6211447 (= e!3781640 (= (++!14227 (_1!36431 (get!22317 lt!2343905)) (_2!36431 (get!22317 lt!2343905))) s!2326))))

(declare-fun b!6211448 () Bool)

(declare-fun lt!2343904 () Unit!157927)

(declare-fun lt!2343903 () Unit!157927)

(assert (=> b!6211448 (= lt!2343904 lt!2343903)))

(assert (=> b!6211448 (= (++!14227 (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624)) (t!378272 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2322 (List!64748 C!32568 List!64748 List!64748) Unit!157927)

(assert (=> b!6211448 (= lt!2343903 (lemmaMoveElementToOtherListKeepsConcatEq!2322 Nil!64624 (h!71072 s!2326) (t!378272 s!2326) s!2326))))

(assert (=> b!6211448 (= e!3781638 (findConcatSeparation!2454 (regOne!32810 r!7292) (regTwo!32810 r!7292) (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624)) (t!378272 s!2326) s!2326))))

(declare-fun b!6211449 () Bool)

(declare-fun res!2568131 () Bool)

(assert (=> b!6211449 (=> (not res!2568131) (not e!3781640))))

(assert (=> b!6211449 (= res!2568131 (matchR!8332 (regOne!32810 r!7292) (_1!36431 (get!22317 lt!2343905))))))

(declare-fun b!6211450 () Bool)

(assert (=> b!6211450 (= e!3781641 e!3781638)))

(declare-fun c!1121751 () Bool)

(assert (=> b!6211450 (= c!1121751 ((_ is Nil!64624) s!2326))))

(assert (= (and d!1947008 res!2568132) b!6211445))

(assert (= (and d!1947008 c!1121752) b!6211442))

(assert (= (and d!1947008 (not c!1121752)) b!6211450))

(assert (= (and b!6211450 c!1121751) b!6211446))

(assert (= (and b!6211450 (not c!1121751)) b!6211448))

(assert (= (and d!1947008 res!2568135) b!6211449))

(assert (= (and b!6211449 res!2568131) b!6211444))

(assert (= (and b!6211444 res!2568134) b!6211447))

(assert (= (and d!1947008 (not res!2568133)) b!6211443))

(declare-fun m!7041274 () Bool)

(assert (=> b!6211448 m!7041274))

(assert (=> b!6211448 m!7041274))

(declare-fun m!7041276 () Bool)

(assert (=> b!6211448 m!7041276))

(declare-fun m!7041278 () Bool)

(assert (=> b!6211448 m!7041278))

(assert (=> b!6211448 m!7041274))

(declare-fun m!7041280 () Bool)

(assert (=> b!6211448 m!7041280))

(declare-fun m!7041282 () Bool)

(assert (=> b!6211443 m!7041282))

(declare-fun m!7041284 () Bool)

(assert (=> b!6211447 m!7041284))

(declare-fun m!7041286 () Bool)

(assert (=> b!6211447 m!7041286))

(assert (=> d!1947008 m!7041282))

(declare-fun m!7041288 () Bool)

(assert (=> d!1947008 m!7041288))

(declare-fun m!7041290 () Bool)

(assert (=> d!1947008 m!7041290))

(assert (=> b!6211449 m!7041284))

(declare-fun m!7041292 () Bool)

(assert (=> b!6211449 m!7041292))

(declare-fun m!7041294 () Bool)

(assert (=> b!6211445 m!7041294))

(assert (=> b!6211444 m!7041284))

(declare-fun m!7041296 () Bool)

(assert (=> b!6211444 m!7041296))

(assert (=> b!6210980 d!1947008))

(declare-fun d!1947010 () Bool)

(declare-fun choose!46159 (Int) Bool)

(assert (=> d!1947010 (= (Exists!3219 lambda!339382) (choose!46159 lambda!339382))))

(declare-fun bs!1540688 () Bool)

(assert (= bs!1540688 d!1947010))

(declare-fun m!7041298 () Bool)

(assert (=> bs!1540688 m!7041298))

(assert (=> b!6210980 d!1947010))

(declare-fun d!1947012 () Bool)

(assert (=> d!1947012 (= (Exists!3219 lambda!339381) (choose!46159 lambda!339381))))

(declare-fun bs!1540689 () Bool)

(assert (= bs!1540689 d!1947012))

(declare-fun m!7041300 () Bool)

(assert (=> bs!1540689 m!7041300))

(assert (=> b!6210980 d!1947012))

(declare-fun bs!1540690 () Bool)

(declare-fun d!1947014 () Bool)

(assert (= bs!1540690 (and d!1947014 b!6210980)))

(declare-fun lambda!339420 () Int)

(assert (=> bs!1540690 (= lambda!339420 lambda!339381)))

(assert (=> bs!1540690 (not (= lambda!339420 lambda!339382))))

(assert (=> d!1947014 true))

(assert (=> d!1947014 true))

(assert (=> d!1947014 true))

(assert (=> d!1947014 (= (isDefined!12743 (findConcatSeparation!2454 (regOne!32810 r!7292) (regTwo!32810 r!7292) Nil!64624 s!2326 s!2326)) (Exists!3219 lambda!339420))))

(declare-fun lt!2343908 () Unit!157927)

(declare-fun choose!46160 (Regex!16149 Regex!16149 List!64748) Unit!157927)

(assert (=> d!1947014 (= lt!2343908 (choose!46160 (regOne!32810 r!7292) (regTwo!32810 r!7292) s!2326))))

(assert (=> d!1947014 (validRegex!7885 (regOne!32810 r!7292))))

(assert (=> d!1947014 (= (lemmaFindConcatSeparationEquivalentToExists!2218 (regOne!32810 r!7292) (regTwo!32810 r!7292) s!2326) lt!2343908)))

(declare-fun bs!1540691 () Bool)

(assert (= bs!1540691 d!1947014))

(assert (=> bs!1540691 m!7040968))

(declare-fun m!7041302 () Bool)

(assert (=> bs!1540691 m!7041302))

(declare-fun m!7041304 () Bool)

(assert (=> bs!1540691 m!7041304))

(assert (=> bs!1540691 m!7040968))

(assert (=> bs!1540691 m!7040970))

(assert (=> bs!1540691 m!7041290))

(assert (=> b!6210980 d!1947014))

(declare-fun bs!1540692 () Bool)

(declare-fun d!1947016 () Bool)

(assert (= bs!1540692 (and d!1947016 b!6210980)))

(declare-fun lambda!339425 () Int)

(assert (=> bs!1540692 (= lambda!339425 lambda!339381)))

(assert (=> bs!1540692 (not (= lambda!339425 lambda!339382))))

(declare-fun bs!1540693 () Bool)

(assert (= bs!1540693 (and d!1947016 d!1947014)))

(assert (=> bs!1540693 (= lambda!339425 lambda!339420)))

(assert (=> d!1947016 true))

(assert (=> d!1947016 true))

(assert (=> d!1947016 true))

(declare-fun lambda!339426 () Int)

(assert (=> bs!1540692 (not (= lambda!339426 lambda!339381))))

(assert (=> bs!1540692 (= lambda!339426 lambda!339382)))

(assert (=> bs!1540693 (not (= lambda!339426 lambda!339420))))

(declare-fun bs!1540694 () Bool)

(assert (= bs!1540694 d!1947016))

(assert (=> bs!1540694 (not (= lambda!339426 lambda!339425))))

(assert (=> d!1947016 true))

(assert (=> d!1947016 true))

(assert (=> d!1947016 true))

(assert (=> d!1947016 (= (Exists!3219 lambda!339425) (Exists!3219 lambda!339426))))

(declare-fun lt!2343911 () Unit!157927)

(declare-fun choose!46161 (Regex!16149 Regex!16149 List!64748) Unit!157927)

(assert (=> d!1947016 (= lt!2343911 (choose!46161 (regOne!32810 r!7292) (regTwo!32810 r!7292) s!2326))))

(assert (=> d!1947016 (validRegex!7885 (regOne!32810 r!7292))))

(assert (=> d!1947016 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!1756 (regOne!32810 r!7292) (regTwo!32810 r!7292) s!2326) lt!2343911)))

(declare-fun m!7041306 () Bool)

(assert (=> bs!1540694 m!7041306))

(declare-fun m!7041308 () Bool)

(assert (=> bs!1540694 m!7041308))

(declare-fun m!7041310 () Bool)

(assert (=> bs!1540694 m!7041310))

(assert (=> bs!1540694 m!7041290))

(assert (=> b!6210980 d!1947016))

(declare-fun d!1947018 () Bool)

(declare-fun isEmpty!36627 (Option!16040) Bool)

(assert (=> d!1947018 (= (isDefined!12743 (findConcatSeparation!2454 (regOne!32810 r!7292) (regTwo!32810 r!7292) Nil!64624 s!2326 s!2326)) (not (isEmpty!36627 (findConcatSeparation!2454 (regOne!32810 r!7292) (regTwo!32810 r!7292) Nil!64624 s!2326 s!2326))))))

(declare-fun bs!1540695 () Bool)

(assert (= bs!1540695 d!1947018))

(assert (=> bs!1540695 m!7040968))

(declare-fun m!7041312 () Bool)

(assert (=> bs!1540695 m!7041312))

(assert (=> b!6210980 d!1947018))

(declare-fun d!1947020 () Bool)

(declare-fun choose!46162 ((InoxSet Context!11066) Int) (InoxSet Context!11066))

(assert (=> d!1947020 (= (flatMap!1654 z!1189 lambda!339383) (choose!46162 z!1189 lambda!339383))))

(declare-fun bs!1540696 () Bool)

(assert (= bs!1540696 d!1947020))

(declare-fun m!7041314 () Bool)

(assert (=> bs!1540696 m!7041314))

(assert (=> b!6210960 d!1947020))

(declare-fun d!1947022 () Bool)

(declare-fun nullableFct!2098 (Regex!16149) Bool)

(assert (=> d!1947022 (= (nullable!6142 (h!71070 (exprs!6033 (h!71071 zl!343)))) (nullableFct!2098 (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun bs!1540697 () Bool)

(assert (= bs!1540697 d!1947022))

(declare-fun m!7041316 () Bool)

(assert (=> bs!1540697 m!7041316))

(assert (=> b!6210960 d!1947022))

(declare-fun bm!520613 () Bool)

(declare-fun call!520618 () (InoxSet Context!11066))

(assert (=> bm!520613 (= call!520618 (derivationStepZipperDown!1397 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))) (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (h!71072 s!2326)))))

(declare-fun b!6211473 () Bool)

(declare-fun e!3781656 () (InoxSet Context!11066))

(assert (=> b!6211473 (= e!3781656 ((_ map or) call!520618 (derivationStepZipperUp!1323 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (h!71072 s!2326))))))

(declare-fun d!1947024 () Bool)

(declare-fun c!1121758 () Bool)

(declare-fun e!3781657 () Bool)

(assert (=> d!1947024 (= c!1121758 e!3781657)))

(declare-fun res!2568150 () Bool)

(assert (=> d!1947024 (=> (not res!2568150) (not e!3781657))))

(assert (=> d!1947024 (= res!2568150 ((_ is Cons!64622) (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))))))

(assert (=> d!1947024 (= (derivationStepZipperUp!1323 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))) (h!71072 s!2326)) e!3781656)))

(declare-fun b!6211474 () Bool)

(declare-fun e!3781655 () (InoxSet Context!11066))

(assert (=> b!6211474 (= e!3781655 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6211475 () Bool)

(assert (=> b!6211475 (= e!3781657 (nullable!6142 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))))))

(declare-fun b!6211476 () Bool)

(assert (=> b!6211476 (= e!3781655 call!520618)))

(declare-fun b!6211477 () Bool)

(assert (=> b!6211477 (= e!3781656 e!3781655)))

(declare-fun c!1121757 () Bool)

(assert (=> b!6211477 (= c!1121757 ((_ is Cons!64622) (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))))))

(assert (= (and d!1947024 res!2568150) b!6211475))

(assert (= (and d!1947024 c!1121758) b!6211473))

(assert (= (and d!1947024 (not c!1121758)) b!6211477))

(assert (= (and b!6211477 c!1121757) b!6211476))

(assert (= (and b!6211477 (not c!1121757)) b!6211474))

(assert (= (or b!6211473 b!6211476) bm!520613))

(declare-fun m!7041318 () Bool)

(assert (=> bm!520613 m!7041318))

(declare-fun m!7041320 () Bool)

(assert (=> b!6211473 m!7041320))

(declare-fun m!7041322 () Bool)

(assert (=> b!6211475 m!7041322))

(assert (=> b!6210960 d!1947024))

(declare-fun b!6211478 () Bool)

(declare-fun e!3781661 () (InoxSet Context!11066))

(declare-fun call!520619 () (InoxSet Context!11066))

(declare-fun call!520624 () (InoxSet Context!11066))

(assert (=> b!6211478 (= e!3781661 ((_ map or) call!520619 call!520624))))

(declare-fun call!520620 () List!64746)

(declare-fun bm!520614 () Bool)

(declare-fun c!1121759 () Bool)

(assert (=> bm!520614 (= call!520619 (derivationStepZipperDown!1397 (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343))))) (ite c!1121759 lt!2343834 (Context!11067 call!520620)) (h!71072 s!2326)))))

(declare-fun d!1947026 () Bool)

(declare-fun c!1121760 () Bool)

(assert (=> d!1947026 (= c!1121760 (and ((_ is ElementMatch!16149) (h!71070 (exprs!6033 (h!71071 zl!343)))) (= (c!1121618 (h!71070 (exprs!6033 (h!71071 zl!343)))) (h!71072 s!2326))))))

(declare-fun e!3781660 () (InoxSet Context!11066))

(assert (=> d!1947026 (= (derivationStepZipperDown!1397 (h!71070 (exprs!6033 (h!71071 zl!343))) lt!2343834 (h!71072 s!2326)) e!3781660)))

(declare-fun b!6211479 () Bool)

(assert (=> b!6211479 (= e!3781660 (store ((as const (Array Context!11066 Bool)) false) lt!2343834 true))))

(declare-fun b!6211480 () Bool)

(declare-fun e!3781662 () (InoxSet Context!11066))

(assert (=> b!6211480 (= e!3781662 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6211481 () Bool)

(declare-fun e!3781658 () (InoxSet Context!11066))

(assert (=> b!6211481 (= e!3781660 e!3781658)))

(assert (=> b!6211481 (= c!1121759 ((_ is Union!16149) (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun bm!520615 () Bool)

(declare-fun call!520623 () (InoxSet Context!11066))

(assert (=> bm!520615 (= call!520623 call!520624)))

(declare-fun b!6211482 () Bool)

(declare-fun e!3781663 () (InoxSet Context!11066))

(assert (=> b!6211482 (= e!3781663 call!520623)))

(declare-fun bm!520616 () Bool)

(declare-fun c!1121762 () Bool)

(declare-fun c!1121763 () Bool)

(assert (=> bm!520616 (= call!520620 ($colon$colon!2018 (exprs!6033 lt!2343834) (ite (or c!1121762 c!1121763) (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (h!71070 (exprs!6033 (h!71071 zl!343))))))))

(declare-fun b!6211483 () Bool)

(assert (=> b!6211483 (= e!3781661 e!3781663)))

(assert (=> b!6211483 (= c!1121763 ((_ is Concat!24994) (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun bm!520617 () Bool)

(declare-fun call!520621 () (InoxSet Context!11066))

(assert (=> bm!520617 (= call!520624 call!520621)))

(declare-fun b!6211484 () Bool)

(declare-fun e!3781659 () Bool)

(assert (=> b!6211484 (= e!3781659 (nullable!6142 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343))))))))

(declare-fun b!6211485 () Bool)

(assert (=> b!6211485 (= c!1121762 e!3781659)))

(declare-fun res!2568151 () Bool)

(assert (=> b!6211485 (=> (not res!2568151) (not e!3781659))))

(assert (=> b!6211485 (= res!2568151 ((_ is Concat!24994) (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(assert (=> b!6211485 (= e!3781658 e!3781661)))

(declare-fun bm!520618 () Bool)

(declare-fun call!520622 () List!64746)

(assert (=> bm!520618 (= call!520622 call!520620)))

(declare-fun b!6211486 () Bool)

(assert (=> b!6211486 (= e!3781658 ((_ map or) call!520619 call!520621))))

(declare-fun bm!520619 () Bool)

(assert (=> bm!520619 (= call!520621 (derivationStepZipperDown!1397 (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343))))))) (ite (or c!1121759 c!1121762) lt!2343834 (Context!11067 call!520622)) (h!71072 s!2326)))))

(declare-fun b!6211487 () Bool)

(assert (=> b!6211487 (= e!3781662 call!520623)))

(declare-fun b!6211488 () Bool)

(declare-fun c!1121761 () Bool)

(assert (=> b!6211488 (= c!1121761 ((_ is Star!16149) (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(assert (=> b!6211488 (= e!3781663 e!3781662)))

(assert (= (and d!1947026 c!1121760) b!6211479))

(assert (= (and d!1947026 (not c!1121760)) b!6211481))

(assert (= (and b!6211481 c!1121759) b!6211486))

(assert (= (and b!6211481 (not c!1121759)) b!6211485))

(assert (= (and b!6211485 res!2568151) b!6211484))

(assert (= (and b!6211485 c!1121762) b!6211478))

(assert (= (and b!6211485 (not c!1121762)) b!6211483))

(assert (= (and b!6211483 c!1121763) b!6211482))

(assert (= (and b!6211483 (not c!1121763)) b!6211488))

(assert (= (and b!6211488 c!1121761) b!6211487))

(assert (= (and b!6211488 (not c!1121761)) b!6211480))

(assert (= (or b!6211482 b!6211487) bm!520618))

(assert (= (or b!6211482 b!6211487) bm!520615))

(assert (= (or b!6211478 bm!520618) bm!520616))

(assert (= (or b!6211478 bm!520615) bm!520617))

(assert (= (or b!6211486 bm!520617) bm!520619))

(assert (= (or b!6211486 b!6211478) bm!520614))

(assert (=> b!6211479 m!7041252))

(declare-fun m!7041324 () Bool)

(assert (=> b!6211484 m!7041324))

(declare-fun m!7041326 () Bool)

(assert (=> bm!520619 m!7041326))

(declare-fun m!7041328 () Bool)

(assert (=> bm!520614 m!7041328))

(declare-fun m!7041330 () Bool)

(assert (=> bm!520616 m!7041330))

(assert (=> b!6210960 d!1947026))

(declare-fun bm!520620 () Bool)

(declare-fun call!520625 () (InoxSet Context!11066))

(assert (=> bm!520620 (= call!520625 (derivationStepZipperDown!1397 (h!71070 (exprs!6033 (h!71071 zl!343))) (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343)))) (h!71072 s!2326)))))

(declare-fun e!3781665 () (InoxSet Context!11066))

(declare-fun b!6211489 () Bool)

(assert (=> b!6211489 (= e!3781665 ((_ map or) call!520625 (derivationStepZipperUp!1323 (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343)))) (h!71072 s!2326))))))

(declare-fun d!1947028 () Bool)

(declare-fun c!1121765 () Bool)

(declare-fun e!3781666 () Bool)

(assert (=> d!1947028 (= c!1121765 e!3781666)))

(declare-fun res!2568152 () Bool)

(assert (=> d!1947028 (=> (not res!2568152) (not e!3781666))))

(assert (=> d!1947028 (= res!2568152 ((_ is Cons!64622) (exprs!6033 (h!71071 zl!343))))))

(assert (=> d!1947028 (= (derivationStepZipperUp!1323 (h!71071 zl!343) (h!71072 s!2326)) e!3781665)))

(declare-fun b!6211490 () Bool)

(declare-fun e!3781664 () (InoxSet Context!11066))

(assert (=> b!6211490 (= e!3781664 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6211491 () Bool)

(assert (=> b!6211491 (= e!3781666 (nullable!6142 (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun b!6211492 () Bool)

(assert (=> b!6211492 (= e!3781664 call!520625)))

(declare-fun b!6211493 () Bool)

(assert (=> b!6211493 (= e!3781665 e!3781664)))

(declare-fun c!1121764 () Bool)

(assert (=> b!6211493 (= c!1121764 ((_ is Cons!64622) (exprs!6033 (h!71071 zl!343))))))

(assert (= (and d!1947028 res!2568152) b!6211491))

(assert (= (and d!1947028 c!1121765) b!6211489))

(assert (= (and d!1947028 (not c!1121765)) b!6211493))

(assert (= (and b!6211493 c!1121764) b!6211492))

(assert (= (and b!6211493 (not c!1121764)) b!6211490))

(assert (= (or b!6211489 b!6211492) bm!520620))

(declare-fun m!7041332 () Bool)

(assert (=> bm!520620 m!7041332))

(declare-fun m!7041334 () Bool)

(assert (=> b!6211489 m!7041334))

(assert (=> b!6211491 m!7040944))

(assert (=> b!6210960 d!1947028))

(declare-fun d!1947030 () Bool)

(declare-fun dynLambda!25491 (Int Context!11066) (InoxSet Context!11066))

(assert (=> d!1947030 (= (flatMap!1654 z!1189 lambda!339383) (dynLambda!25491 lambda!339383 (h!71071 zl!343)))))

(declare-fun lt!2343914 () Unit!157927)

(declare-fun choose!46163 ((InoxSet Context!11066) Context!11066 Int) Unit!157927)

(assert (=> d!1947030 (= lt!2343914 (choose!46163 z!1189 (h!71071 zl!343) lambda!339383))))

(assert (=> d!1947030 (= z!1189 (store ((as const (Array Context!11066 Bool)) false) (h!71071 zl!343) true))))

(assert (=> d!1947030 (= (lemmaFlatMapOnSingletonSet!1180 z!1189 (h!71071 zl!343) lambda!339383) lt!2343914)))

(declare-fun b_lambda!236177 () Bool)

(assert (=> (not b_lambda!236177) (not d!1947030)))

(declare-fun bs!1540698 () Bool)

(assert (= bs!1540698 d!1947030))

(assert (=> bs!1540698 m!7040936))

(declare-fun m!7041336 () Bool)

(assert (=> bs!1540698 m!7041336))

(declare-fun m!7041338 () Bool)

(assert (=> bs!1540698 m!7041338))

(declare-fun m!7041340 () Bool)

(assert (=> bs!1540698 m!7041340))

(assert (=> b!6210960 d!1947030))

(declare-fun bm!520621 () Bool)

(declare-fun call!520626 () (InoxSet Context!11066))

(assert (=> bm!520621 (= call!520626 (derivationStepZipperDown!1397 (h!71070 (exprs!6033 lt!2343834)) (Context!11067 (t!378270 (exprs!6033 lt!2343834))) (h!71072 s!2326)))))

(declare-fun b!6211494 () Bool)

(declare-fun e!3781668 () (InoxSet Context!11066))

(assert (=> b!6211494 (= e!3781668 ((_ map or) call!520626 (derivationStepZipperUp!1323 (Context!11067 (t!378270 (exprs!6033 lt!2343834))) (h!71072 s!2326))))))

(declare-fun d!1947032 () Bool)

(declare-fun c!1121767 () Bool)

(declare-fun e!3781669 () Bool)

(assert (=> d!1947032 (= c!1121767 e!3781669)))

(declare-fun res!2568153 () Bool)

(assert (=> d!1947032 (=> (not res!2568153) (not e!3781669))))

(assert (=> d!1947032 (= res!2568153 ((_ is Cons!64622) (exprs!6033 lt!2343834)))))

(assert (=> d!1947032 (= (derivationStepZipperUp!1323 lt!2343834 (h!71072 s!2326)) e!3781668)))

(declare-fun b!6211495 () Bool)

(declare-fun e!3781667 () (InoxSet Context!11066))

(assert (=> b!6211495 (= e!3781667 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6211496 () Bool)

(assert (=> b!6211496 (= e!3781669 (nullable!6142 (h!71070 (exprs!6033 lt!2343834))))))

(declare-fun b!6211497 () Bool)

(assert (=> b!6211497 (= e!3781667 call!520626)))

(declare-fun b!6211498 () Bool)

(assert (=> b!6211498 (= e!3781668 e!3781667)))

(declare-fun c!1121766 () Bool)

(assert (=> b!6211498 (= c!1121766 ((_ is Cons!64622) (exprs!6033 lt!2343834)))))

(assert (= (and d!1947032 res!2568153) b!6211496))

(assert (= (and d!1947032 c!1121767) b!6211494))

(assert (= (and d!1947032 (not c!1121767)) b!6211498))

(assert (= (and b!6211498 c!1121766) b!6211497))

(assert (= (and b!6211498 (not c!1121766)) b!6211495))

(assert (= (or b!6211494 b!6211497) bm!520621))

(declare-fun m!7041342 () Bool)

(assert (=> bm!520621 m!7041342))

(declare-fun m!7041344 () Bool)

(assert (=> b!6211494 m!7041344))

(declare-fun m!7041346 () Bool)

(assert (=> b!6211496 m!7041346))

(assert (=> b!6210960 d!1947032))

(declare-fun d!1947034 () Bool)

(declare-fun e!3781672 () Bool)

(assert (=> d!1947034 e!3781672))

(declare-fun res!2568156 () Bool)

(assert (=> d!1947034 (=> (not res!2568156) (not e!3781672))))

(declare-fun lt!2343917 () List!64747)

(declare-fun noDuplicate!1987 (List!64747) Bool)

(assert (=> d!1947034 (= res!2568156 (noDuplicate!1987 lt!2343917))))

(declare-fun choose!46164 ((InoxSet Context!11066)) List!64747)

(assert (=> d!1947034 (= lt!2343917 (choose!46164 z!1189))))

(assert (=> d!1947034 (= (toList!9933 z!1189) lt!2343917)))

(declare-fun b!6211501 () Bool)

(declare-fun content!12092 (List!64747) (InoxSet Context!11066))

(assert (=> b!6211501 (= e!3781672 (= (content!12092 lt!2343917) z!1189))))

(assert (= (and d!1947034 res!2568156) b!6211501))

(declare-fun m!7041348 () Bool)

(assert (=> d!1947034 m!7041348))

(declare-fun m!7041350 () Bool)

(assert (=> d!1947034 m!7041350))

(declare-fun m!7041352 () Bool)

(assert (=> b!6211501 m!7041352))

(assert (=> b!6210970 d!1947034))

(declare-fun d!1947036 () Bool)

(assert (=> d!1947036 (= (nullable!6142 (regOne!32810 (regOne!32810 r!7292))) (nullableFct!2098 (regOne!32810 (regOne!32810 r!7292))))))

(declare-fun bs!1540699 () Bool)

(assert (= bs!1540699 d!1947036))

(declare-fun m!7041354 () Bool)

(assert (=> bs!1540699 m!7041354))

(assert (=> b!6210973 d!1947036))

(assert (=> b!6210972 d!1946994))

(declare-fun d!1947038 () Bool)

(declare-fun c!1121768 () Bool)

(assert (=> d!1947038 (= c!1121768 (isEmpty!36626 (t!378272 s!2326)))))

(declare-fun e!3781673 () Bool)

(assert (=> d!1947038 (= (matchZipper!2161 lt!2343846 (t!378272 s!2326)) e!3781673)))

(declare-fun b!6211502 () Bool)

(assert (=> b!6211502 (= e!3781673 (nullableZipper!1923 lt!2343846))))

(declare-fun b!6211503 () Bool)

(assert (=> b!6211503 (= e!3781673 (matchZipper!2161 (derivationStepZipper!2115 lt!2343846 (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))))))

(assert (= (and d!1947038 c!1121768) b!6211502))

(assert (= (and d!1947038 (not c!1121768)) b!6211503))

(assert (=> d!1947038 m!7041222))

(declare-fun m!7041356 () Bool)

(assert (=> b!6211502 m!7041356))

(assert (=> b!6211503 m!7041226))

(assert (=> b!6211503 m!7041226))

(declare-fun m!7041358 () Bool)

(assert (=> b!6211503 m!7041358))

(assert (=> b!6211503 m!7041230))

(assert (=> b!6211503 m!7041358))

(assert (=> b!6211503 m!7041230))

(declare-fun m!7041360 () Bool)

(assert (=> b!6211503 m!7041360))

(assert (=> b!6210972 d!1947038))

(declare-fun d!1947040 () Bool)

(declare-fun c!1121769 () Bool)

(assert (=> d!1947040 (= c!1121769 (isEmpty!36626 (t!378272 s!2326)))))

(declare-fun e!3781674 () Bool)

(assert (=> d!1947040 (= (matchZipper!2161 lt!2343848 (t!378272 s!2326)) e!3781674)))

(declare-fun b!6211504 () Bool)

(assert (=> b!6211504 (= e!3781674 (nullableZipper!1923 lt!2343848))))

(declare-fun b!6211505 () Bool)

(assert (=> b!6211505 (= e!3781674 (matchZipper!2161 (derivationStepZipper!2115 lt!2343848 (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))))))

(assert (= (and d!1947040 c!1121769) b!6211504))

(assert (= (and d!1947040 (not c!1121769)) b!6211505))

(assert (=> d!1947040 m!7041222))

(declare-fun m!7041362 () Bool)

(assert (=> b!6211504 m!7041362))

(assert (=> b!6211505 m!7041226))

(assert (=> b!6211505 m!7041226))

(declare-fun m!7041364 () Bool)

(assert (=> b!6211505 m!7041364))

(assert (=> b!6211505 m!7041230))

(assert (=> b!6211505 m!7041364))

(assert (=> b!6211505 m!7041230))

(declare-fun m!7041366 () Bool)

(assert (=> b!6211505 m!7041366))

(assert (=> b!6210972 d!1947040))

(declare-fun e!3781675 () Bool)

(declare-fun d!1947042 () Bool)

(assert (=> d!1947042 (= (matchZipper!2161 ((_ map or) lt!2343848 lt!2343836) (t!378272 s!2326)) e!3781675)))

(declare-fun res!2568157 () Bool)

(assert (=> d!1947042 (=> res!2568157 e!3781675)))

(assert (=> d!1947042 (= res!2568157 (matchZipper!2161 lt!2343848 (t!378272 s!2326)))))

(declare-fun lt!2343918 () Unit!157927)

(assert (=> d!1947042 (= lt!2343918 (choose!46158 lt!2343848 lt!2343836 (t!378272 s!2326)))))

(assert (=> d!1947042 (= (lemmaZipperConcatMatchesSameAsBothZippers!980 lt!2343848 lt!2343836 (t!378272 s!2326)) lt!2343918)))

(declare-fun b!6211506 () Bool)

(assert (=> b!6211506 (= e!3781675 (matchZipper!2161 lt!2343836 (t!378272 s!2326)))))

(assert (= (and d!1947042 (not res!2568157)) b!6211506))

(declare-fun m!7041368 () Bool)

(assert (=> d!1947042 m!7041368))

(assert (=> d!1947042 m!7040986))

(declare-fun m!7041370 () Bool)

(assert (=> d!1947042 m!7041370))

(assert (=> b!6211506 m!7040950))

(assert (=> b!6210972 d!1947042))

(declare-fun bs!1540700 () Bool)

(declare-fun d!1947044 () Bool)

(assert (= bs!1540700 (and d!1947044 d!1946990)))

(declare-fun lambda!339429 () Int)

(assert (=> bs!1540700 (= lambda!339429 lambda!339415)))

(declare-fun bs!1540701 () Bool)

(assert (= bs!1540701 (and d!1947044 d!1946998)))

(assert (=> bs!1540701 (= lambda!339429 lambda!339416)))

(declare-fun bs!1540702 () Bool)

(assert (= bs!1540702 (and d!1947044 d!1947006)))

(assert (=> bs!1540702 (= lambda!339429 lambda!339417)))

(declare-fun b!6211527 () Bool)

(declare-fun e!3781688 () Regex!16149)

(assert (=> b!6211527 (= e!3781688 (Union!16149 (h!71070 (unfocusZipperList!1570 zl!343)) (generalisedUnion!1993 (t!378270 (unfocusZipperList!1570 zl!343)))))))

(declare-fun b!6211528 () Bool)

(declare-fun e!3781692 () Bool)

(declare-fun e!3781690 () Bool)

(assert (=> b!6211528 (= e!3781692 e!3781690)))

(declare-fun c!1121779 () Bool)

(declare-fun tail!11892 (List!64746) List!64746)

(assert (=> b!6211528 (= c!1121779 (isEmpty!36622 (tail!11892 (unfocusZipperList!1570 zl!343))))))

(declare-fun b!6211529 () Bool)

(assert (=> b!6211529 (= e!3781688 EmptyLang!16149)))

(declare-fun b!6211530 () Bool)

(declare-fun e!3781689 () Bool)

(assert (=> b!6211530 (= e!3781689 (isEmpty!36622 (t!378270 (unfocusZipperList!1570 zl!343))))))

(declare-fun e!3781691 () Bool)

(assert (=> d!1947044 e!3781691))

(declare-fun res!2568162 () Bool)

(assert (=> d!1947044 (=> (not res!2568162) (not e!3781691))))

(declare-fun lt!2343921 () Regex!16149)

(assert (=> d!1947044 (= res!2568162 (validRegex!7885 lt!2343921))))

(declare-fun e!3781693 () Regex!16149)

(assert (=> d!1947044 (= lt!2343921 e!3781693)))

(declare-fun c!1121781 () Bool)

(assert (=> d!1947044 (= c!1121781 e!3781689)))

(declare-fun res!2568163 () Bool)

(assert (=> d!1947044 (=> (not res!2568163) (not e!3781689))))

(assert (=> d!1947044 (= res!2568163 ((_ is Cons!64622) (unfocusZipperList!1570 zl!343)))))

(assert (=> d!1947044 (forall!15263 (unfocusZipperList!1570 zl!343) lambda!339429)))

(assert (=> d!1947044 (= (generalisedUnion!1993 (unfocusZipperList!1570 zl!343)) lt!2343921)))

(declare-fun b!6211531 () Bool)

(assert (=> b!6211531 (= e!3781693 (h!71070 (unfocusZipperList!1570 zl!343)))))

(declare-fun b!6211532 () Bool)

(declare-fun isUnion!998 (Regex!16149) Bool)

(assert (=> b!6211532 (= e!3781690 (isUnion!998 lt!2343921))))

(declare-fun b!6211533 () Bool)

(declare-fun isEmptyLang!1568 (Regex!16149) Bool)

(assert (=> b!6211533 (= e!3781692 (isEmptyLang!1568 lt!2343921))))

(declare-fun b!6211534 () Bool)

(declare-fun head!12807 (List!64746) Regex!16149)

(assert (=> b!6211534 (= e!3781690 (= lt!2343921 (head!12807 (unfocusZipperList!1570 zl!343))))))

(declare-fun b!6211535 () Bool)

(assert (=> b!6211535 (= e!3781691 e!3781692)))

(declare-fun c!1121778 () Bool)

(assert (=> b!6211535 (= c!1121778 (isEmpty!36622 (unfocusZipperList!1570 zl!343)))))

(declare-fun b!6211536 () Bool)

(assert (=> b!6211536 (= e!3781693 e!3781688)))

(declare-fun c!1121780 () Bool)

(assert (=> b!6211536 (= c!1121780 ((_ is Cons!64622) (unfocusZipperList!1570 zl!343)))))

(assert (= (and d!1947044 res!2568163) b!6211530))

(assert (= (and d!1947044 c!1121781) b!6211531))

(assert (= (and d!1947044 (not c!1121781)) b!6211536))

(assert (= (and b!6211536 c!1121780) b!6211527))

(assert (= (and b!6211536 (not c!1121780)) b!6211529))

(assert (= (and d!1947044 res!2568162) b!6211535))

(assert (= (and b!6211535 c!1121778) b!6211533))

(assert (= (and b!6211535 (not c!1121778)) b!6211528))

(assert (= (and b!6211528 c!1121779) b!6211534))

(assert (= (and b!6211528 (not c!1121779)) b!6211532))

(assert (=> b!6211534 m!7040962))

(declare-fun m!7041372 () Bool)

(assert (=> b!6211534 m!7041372))

(declare-fun m!7041374 () Bool)

(assert (=> b!6211530 m!7041374))

(assert (=> b!6211528 m!7040962))

(declare-fun m!7041376 () Bool)

(assert (=> b!6211528 m!7041376))

(assert (=> b!6211528 m!7041376))

(declare-fun m!7041378 () Bool)

(assert (=> b!6211528 m!7041378))

(assert (=> b!6211535 m!7040962))

(declare-fun m!7041380 () Bool)

(assert (=> b!6211535 m!7041380))

(declare-fun m!7041382 () Bool)

(assert (=> b!6211527 m!7041382))

(declare-fun m!7041384 () Bool)

(assert (=> d!1947044 m!7041384))

(assert (=> d!1947044 m!7040962))

(declare-fun m!7041386 () Bool)

(assert (=> d!1947044 m!7041386))

(declare-fun m!7041388 () Bool)

(assert (=> b!6211532 m!7041388))

(declare-fun m!7041390 () Bool)

(assert (=> b!6211533 m!7041390))

(assert (=> b!6210983 d!1947044))

(declare-fun bs!1540703 () Bool)

(declare-fun d!1947046 () Bool)

(assert (= bs!1540703 (and d!1947046 d!1946990)))

(declare-fun lambda!339432 () Int)

(assert (=> bs!1540703 (= lambda!339432 lambda!339415)))

(declare-fun bs!1540704 () Bool)

(assert (= bs!1540704 (and d!1947046 d!1946998)))

(assert (=> bs!1540704 (= lambda!339432 lambda!339416)))

(declare-fun bs!1540705 () Bool)

(assert (= bs!1540705 (and d!1947046 d!1947006)))

(assert (=> bs!1540705 (= lambda!339432 lambda!339417)))

(declare-fun bs!1540706 () Bool)

(assert (= bs!1540706 (and d!1947046 d!1947044)))

(assert (=> bs!1540706 (= lambda!339432 lambda!339429)))

(declare-fun lt!2343924 () List!64746)

(assert (=> d!1947046 (forall!15263 lt!2343924 lambda!339432)))

(declare-fun e!3781696 () List!64746)

(assert (=> d!1947046 (= lt!2343924 e!3781696)))

(declare-fun c!1121784 () Bool)

(assert (=> d!1947046 (= c!1121784 ((_ is Cons!64623) zl!343))))

(assert (=> d!1947046 (= (unfocusZipperList!1570 zl!343) lt!2343924)))

(declare-fun b!6211541 () Bool)

(assert (=> b!6211541 (= e!3781696 (Cons!64622 (generalisedConcat!1746 (exprs!6033 (h!71071 zl!343))) (unfocusZipperList!1570 (t!378271 zl!343))))))

(declare-fun b!6211542 () Bool)

(assert (=> b!6211542 (= e!3781696 Nil!64622)))

(assert (= (and d!1947046 c!1121784) b!6211541))

(assert (= (and d!1947046 (not c!1121784)) b!6211542))

(declare-fun m!7041392 () Bool)

(assert (=> d!1947046 m!7041392))

(assert (=> b!6211541 m!7040930))

(declare-fun m!7041394 () Bool)

(assert (=> b!6211541 m!7041394))

(assert (=> b!6210983 d!1947046))

(declare-fun b!6211561 () Bool)

(declare-fun res!2568174 () Bool)

(declare-fun e!3781713 () Bool)

(assert (=> b!6211561 (=> res!2568174 e!3781713)))

(assert (=> b!6211561 (= res!2568174 (not ((_ is Concat!24994) r!7292)))))

(declare-fun e!3781712 () Bool)

(assert (=> b!6211561 (= e!3781712 e!3781713)))

(declare-fun b!6211562 () Bool)

(declare-fun res!2568175 () Bool)

(declare-fun e!3781717 () Bool)

(assert (=> b!6211562 (=> (not res!2568175) (not e!3781717))))

(declare-fun call!520633 () Bool)

(assert (=> b!6211562 (= res!2568175 call!520633)))

(assert (=> b!6211562 (= e!3781712 e!3781717)))

(declare-fun b!6211563 () Bool)

(declare-fun call!520635 () Bool)

(assert (=> b!6211563 (= e!3781717 call!520635)))

(declare-fun d!1947048 () Bool)

(declare-fun res!2568176 () Bool)

(declare-fun e!3781711 () Bool)

(assert (=> d!1947048 (=> res!2568176 e!3781711)))

(assert (=> d!1947048 (= res!2568176 ((_ is ElementMatch!16149) r!7292))))

(assert (=> d!1947048 (= (validRegex!7885 r!7292) e!3781711)))

(declare-fun b!6211564 () Bool)

(declare-fun e!3781715 () Bool)

(assert (=> b!6211564 (= e!3781713 e!3781715)))

(declare-fun res!2568178 () Bool)

(assert (=> b!6211564 (=> (not res!2568178) (not e!3781715))))

(assert (=> b!6211564 (= res!2568178 call!520633)))

(declare-fun b!6211565 () Bool)

(assert (=> b!6211565 (= e!3781715 call!520635)))

(declare-fun bm!520628 () Bool)

(declare-fun call!520634 () Bool)

(assert (=> bm!520628 (= call!520633 call!520634)))

(declare-fun bm!520629 () Bool)

(declare-fun c!1121790 () Bool)

(assert (=> bm!520629 (= call!520635 (validRegex!7885 (ite c!1121790 (regTwo!32811 r!7292) (regTwo!32810 r!7292))))))

(declare-fun b!6211566 () Bool)

(declare-fun e!3781716 () Bool)

(assert (=> b!6211566 (= e!3781716 e!3781712)))

(assert (=> b!6211566 (= c!1121790 ((_ is Union!16149) r!7292))))

(declare-fun bm!520630 () Bool)

(declare-fun c!1121789 () Bool)

(assert (=> bm!520630 (= call!520634 (validRegex!7885 (ite c!1121789 (reg!16478 r!7292) (ite c!1121790 (regOne!32811 r!7292) (regOne!32810 r!7292)))))))

(declare-fun b!6211567 () Bool)

(declare-fun e!3781714 () Bool)

(assert (=> b!6211567 (= e!3781714 call!520634)))

(declare-fun b!6211568 () Bool)

(assert (=> b!6211568 (= e!3781711 e!3781716)))

(assert (=> b!6211568 (= c!1121789 ((_ is Star!16149) r!7292))))

(declare-fun b!6211569 () Bool)

(assert (=> b!6211569 (= e!3781716 e!3781714)))

(declare-fun res!2568177 () Bool)

(assert (=> b!6211569 (= res!2568177 (not (nullable!6142 (reg!16478 r!7292))))))

(assert (=> b!6211569 (=> (not res!2568177) (not e!3781714))))

(assert (= (and d!1947048 (not res!2568176)) b!6211568))

(assert (= (and b!6211568 c!1121789) b!6211569))

(assert (= (and b!6211568 (not c!1121789)) b!6211566))

(assert (= (and b!6211569 res!2568177) b!6211567))

(assert (= (and b!6211566 c!1121790) b!6211562))

(assert (= (and b!6211566 (not c!1121790)) b!6211561))

(assert (= (and b!6211562 res!2568175) b!6211563))

(assert (= (and b!6211561 (not res!2568174)) b!6211564))

(assert (= (and b!6211564 res!2568178) b!6211565))

(assert (= (or b!6211563 b!6211565) bm!520629))

(assert (= (or b!6211562 b!6211564) bm!520628))

(assert (= (or b!6211567 bm!520628) bm!520630))

(declare-fun m!7041396 () Bool)

(assert (=> bm!520629 m!7041396))

(declare-fun m!7041398 () Bool)

(assert (=> bm!520630 m!7041398))

(declare-fun m!7041400 () Bool)

(assert (=> b!6211569 m!7041400))

(assert (=> start!619146 d!1947048))

(declare-fun d!1947050 () Bool)

(declare-fun c!1121791 () Bool)

(assert (=> d!1947050 (= c!1121791 (isEmpty!36626 (t!378272 s!2326)))))

(declare-fun e!3781718 () Bool)

(assert (=> d!1947050 (= (matchZipper!2161 lt!2343840 (t!378272 s!2326)) e!3781718)))

(declare-fun b!6211570 () Bool)

(assert (=> b!6211570 (= e!3781718 (nullableZipper!1923 lt!2343840))))

(declare-fun b!6211571 () Bool)

(assert (=> b!6211571 (= e!3781718 (matchZipper!2161 (derivationStepZipper!2115 lt!2343840 (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))))))

(assert (= (and d!1947050 c!1121791) b!6211570))

(assert (= (and d!1947050 (not c!1121791)) b!6211571))

(assert (=> d!1947050 m!7041222))

(declare-fun m!7041402 () Bool)

(assert (=> b!6211570 m!7041402))

(assert (=> b!6211571 m!7041226))

(assert (=> b!6211571 m!7041226))

(declare-fun m!7041404 () Bool)

(assert (=> b!6211571 m!7041404))

(assert (=> b!6211571 m!7041230))

(assert (=> b!6211571 m!7041404))

(assert (=> b!6211571 m!7041230))

(declare-fun m!7041406 () Bool)

(assert (=> b!6211571 m!7041406))

(assert (=> b!6210962 d!1947050))

(declare-fun d!1947052 () Bool)

(assert (=> d!1947052 (= (isEmpty!36622 (t!378270 (exprs!6033 (h!71071 zl!343)))) ((_ is Nil!64622) (t!378270 (exprs!6033 (h!71071 zl!343)))))))

(assert (=> b!6210965 d!1947052))

(declare-fun bs!1540707 () Bool)

(declare-fun b!6211605 () Bool)

(assert (= bs!1540707 (and b!6211605 d!1947014)))

(declare-fun lambda!339437 () Int)

(assert (=> bs!1540707 (not (= lambda!339437 lambda!339420))))

(declare-fun bs!1540708 () Bool)

(assert (= bs!1540708 (and b!6211605 b!6210980)))

(assert (=> bs!1540708 (not (= lambda!339437 lambda!339381))))

(declare-fun bs!1540709 () Bool)

(assert (= bs!1540709 (and b!6211605 d!1947016)))

(assert (=> bs!1540709 (not (= lambda!339437 lambda!339425))))

(assert (=> bs!1540708 (not (= lambda!339437 lambda!339382))))

(assert (=> bs!1540709 (not (= lambda!339437 lambda!339426))))

(assert (=> b!6211605 true))

(assert (=> b!6211605 true))

(declare-fun bs!1540710 () Bool)

(declare-fun b!6211609 () Bool)

(assert (= bs!1540710 (and b!6211609 d!1947014)))

(declare-fun lambda!339438 () Int)

(assert (=> bs!1540710 (not (= lambda!339438 lambda!339420))))

(declare-fun bs!1540711 () Bool)

(assert (= bs!1540711 (and b!6211609 b!6210980)))

(assert (=> bs!1540711 (not (= lambda!339438 lambda!339381))))

(declare-fun bs!1540712 () Bool)

(assert (= bs!1540712 (and b!6211609 d!1947016)))

(assert (=> bs!1540712 (not (= lambda!339438 lambda!339425))))

(assert (=> bs!1540711 (= lambda!339438 lambda!339382)))

(declare-fun bs!1540713 () Bool)

(assert (= bs!1540713 (and b!6211609 b!6211605)))

(assert (=> bs!1540713 (not (= lambda!339438 lambda!339437))))

(assert (=> bs!1540712 (= lambda!339438 lambda!339426)))

(assert (=> b!6211609 true))

(assert (=> b!6211609 true))

(declare-fun b!6211604 () Bool)

(declare-fun e!3781737 () Bool)

(declare-fun e!3781738 () Bool)

(assert (=> b!6211604 (= e!3781737 e!3781738)))

(declare-fun c!1121802 () Bool)

(assert (=> b!6211604 (= c!1121802 ((_ is Star!16149) r!7292))))

(declare-fun bm!520635 () Bool)

(declare-fun call!520640 () Bool)

(assert (=> bm!520635 (= call!520640 (isEmpty!36626 s!2326))))

(declare-fun e!3781741 () Bool)

(declare-fun call!520641 () Bool)

(assert (=> b!6211605 (= e!3781741 call!520641)))

(declare-fun b!6211606 () Bool)

(declare-fun e!3781743 () Bool)

(assert (=> b!6211606 (= e!3781743 call!520640)))

(declare-fun b!6211607 () Bool)

(declare-fun e!3781740 () Bool)

(assert (=> b!6211607 (= e!3781743 e!3781740)))

(declare-fun res!2568196 () Bool)

(assert (=> b!6211607 (= res!2568196 (not ((_ is EmptyLang!16149) r!7292)))))

(assert (=> b!6211607 (=> (not res!2568196) (not e!3781740))))

(declare-fun b!6211608 () Bool)

(declare-fun e!3781739 () Bool)

(assert (=> b!6211608 (= e!3781739 (= s!2326 (Cons!64624 (c!1121618 r!7292) Nil!64624)))))

(assert (=> b!6211609 (= e!3781738 call!520641)))

(declare-fun d!1947054 () Bool)

(declare-fun c!1121801 () Bool)

(assert (=> d!1947054 (= c!1121801 ((_ is EmptyExpr!16149) r!7292))))

(assert (=> d!1947054 (= (matchRSpec!3250 r!7292 s!2326) e!3781743)))

(declare-fun b!6211610 () Bool)

(declare-fun c!1121800 () Bool)

(assert (=> b!6211610 (= c!1121800 ((_ is Union!16149) r!7292))))

(assert (=> b!6211610 (= e!3781739 e!3781737)))

(declare-fun b!6211611 () Bool)

(declare-fun e!3781742 () Bool)

(assert (=> b!6211611 (= e!3781742 (matchRSpec!3250 (regTwo!32811 r!7292) s!2326))))

(declare-fun b!6211612 () Bool)

(declare-fun c!1121803 () Bool)

(assert (=> b!6211612 (= c!1121803 ((_ is ElementMatch!16149) r!7292))))

(assert (=> b!6211612 (= e!3781740 e!3781739)))

(declare-fun b!6211613 () Bool)

(declare-fun res!2568195 () Bool)

(assert (=> b!6211613 (=> res!2568195 e!3781741)))

(assert (=> b!6211613 (= res!2568195 call!520640)))

(assert (=> b!6211613 (= e!3781738 e!3781741)))

(declare-fun bm!520636 () Bool)

(assert (=> bm!520636 (= call!520641 (Exists!3219 (ite c!1121802 lambda!339437 lambda!339438)))))

(declare-fun b!6211614 () Bool)

(assert (=> b!6211614 (= e!3781737 e!3781742)))

(declare-fun res!2568197 () Bool)

(assert (=> b!6211614 (= res!2568197 (matchRSpec!3250 (regOne!32811 r!7292) s!2326))))

(assert (=> b!6211614 (=> res!2568197 e!3781742)))

(assert (= (and d!1947054 c!1121801) b!6211606))

(assert (= (and d!1947054 (not c!1121801)) b!6211607))

(assert (= (and b!6211607 res!2568196) b!6211612))

(assert (= (and b!6211612 c!1121803) b!6211608))

(assert (= (and b!6211612 (not c!1121803)) b!6211610))

(assert (= (and b!6211610 c!1121800) b!6211614))

(assert (= (and b!6211610 (not c!1121800)) b!6211604))

(assert (= (and b!6211614 (not res!2568197)) b!6211611))

(assert (= (and b!6211604 c!1121802) b!6211613))

(assert (= (and b!6211604 (not c!1121802)) b!6211609))

(assert (= (and b!6211613 (not res!2568195)) b!6211605))

(assert (= (or b!6211605 b!6211609) bm!520636))

(assert (= (or b!6211606 b!6211613) bm!520635))

(declare-fun m!7041408 () Bool)

(assert (=> bm!520635 m!7041408))

(declare-fun m!7041410 () Bool)

(assert (=> b!6211611 m!7041410))

(declare-fun m!7041412 () Bool)

(assert (=> bm!520636 m!7041412))

(declare-fun m!7041414 () Bool)

(assert (=> b!6211614 m!7041414))

(assert (=> b!6210976 d!1947054))

(declare-fun b!6211643 () Bool)

(declare-fun res!2568218 () Bool)

(declare-fun e!3781758 () Bool)

(assert (=> b!6211643 (=> (not res!2568218) (not e!3781758))))

(declare-fun call!520644 () Bool)

(assert (=> b!6211643 (= res!2568218 (not call!520644))))

(declare-fun b!6211644 () Bool)

(declare-fun e!3781761 () Bool)

(declare-fun e!3781759 () Bool)

(assert (=> b!6211644 (= e!3781761 e!3781759)))

(declare-fun c!1121812 () Bool)

(assert (=> b!6211644 (= c!1121812 ((_ is EmptyLang!16149) r!7292))))

(declare-fun b!6211645 () Bool)

(declare-fun e!3781760 () Bool)

(declare-fun e!3781764 () Bool)

(assert (=> b!6211645 (= e!3781760 e!3781764)))

(declare-fun res!2568217 () Bool)

(assert (=> b!6211645 (=> res!2568217 e!3781764)))

(assert (=> b!6211645 (= res!2568217 call!520644)))

(declare-fun bm!520639 () Bool)

(assert (=> bm!520639 (= call!520644 (isEmpty!36626 s!2326))))

(declare-fun d!1947056 () Bool)

(assert (=> d!1947056 e!3781761))

(declare-fun c!1121810 () Bool)

(assert (=> d!1947056 (= c!1121810 ((_ is EmptyExpr!16149) r!7292))))

(declare-fun lt!2343927 () Bool)

(declare-fun e!3781762 () Bool)

(assert (=> d!1947056 (= lt!2343927 e!3781762)))

(declare-fun c!1121811 () Bool)

(assert (=> d!1947056 (= c!1121811 (isEmpty!36626 s!2326))))

(assert (=> d!1947056 (validRegex!7885 r!7292)))

(assert (=> d!1947056 (= (matchR!8332 r!7292 s!2326) lt!2343927)))

(declare-fun b!6211646 () Bool)

(assert (=> b!6211646 (= e!3781764 (not (= (head!12806 s!2326) (c!1121618 r!7292))))))

(declare-fun b!6211647 () Bool)

(assert (=> b!6211647 (= e!3781761 (= lt!2343927 call!520644))))

(declare-fun b!6211648 () Bool)

(assert (=> b!6211648 (= e!3781758 (= (head!12806 s!2326) (c!1121618 r!7292)))))

(declare-fun b!6211649 () Bool)

(assert (=> b!6211649 (= e!3781759 (not lt!2343927))))

(declare-fun b!6211650 () Bool)

(declare-fun res!2568221 () Bool)

(declare-fun e!3781763 () Bool)

(assert (=> b!6211650 (=> res!2568221 e!3781763)))

(assert (=> b!6211650 (= res!2568221 (not ((_ is ElementMatch!16149) r!7292)))))

(assert (=> b!6211650 (= e!3781759 e!3781763)))

(declare-fun b!6211651 () Bool)

(assert (=> b!6211651 (= e!3781762 (nullable!6142 r!7292))))

(declare-fun b!6211652 () Bool)

(declare-fun res!2568214 () Bool)

(assert (=> b!6211652 (=> (not res!2568214) (not e!3781758))))

(assert (=> b!6211652 (= res!2568214 (isEmpty!36626 (tail!11891 s!2326)))))

(declare-fun b!6211653 () Bool)

(declare-fun res!2568219 () Bool)

(assert (=> b!6211653 (=> res!2568219 e!3781764)))

(assert (=> b!6211653 (= res!2568219 (not (isEmpty!36626 (tail!11891 s!2326))))))

(declare-fun b!6211654 () Bool)

(assert (=> b!6211654 (= e!3781763 e!3781760)))

(declare-fun res!2568215 () Bool)

(assert (=> b!6211654 (=> (not res!2568215) (not e!3781760))))

(assert (=> b!6211654 (= res!2568215 (not lt!2343927))))

(declare-fun b!6211655 () Bool)

(declare-fun derivativeStep!4862 (Regex!16149 C!32568) Regex!16149)

(assert (=> b!6211655 (= e!3781762 (matchR!8332 (derivativeStep!4862 r!7292 (head!12806 s!2326)) (tail!11891 s!2326)))))

(declare-fun b!6211656 () Bool)

(declare-fun res!2568220 () Bool)

(assert (=> b!6211656 (=> res!2568220 e!3781763)))

(assert (=> b!6211656 (= res!2568220 e!3781758)))

(declare-fun res!2568216 () Bool)

(assert (=> b!6211656 (=> (not res!2568216) (not e!3781758))))

(assert (=> b!6211656 (= res!2568216 lt!2343927)))

(assert (= (and d!1947056 c!1121811) b!6211651))

(assert (= (and d!1947056 (not c!1121811)) b!6211655))

(assert (= (and d!1947056 c!1121810) b!6211647))

(assert (= (and d!1947056 (not c!1121810)) b!6211644))

(assert (= (and b!6211644 c!1121812) b!6211649))

(assert (= (and b!6211644 (not c!1121812)) b!6211650))

(assert (= (and b!6211650 (not res!2568221)) b!6211656))

(assert (= (and b!6211656 res!2568216) b!6211643))

(assert (= (and b!6211643 res!2568218) b!6211652))

(assert (= (and b!6211652 res!2568214) b!6211648))

(assert (= (and b!6211656 (not res!2568220)) b!6211654))

(assert (= (and b!6211654 res!2568215) b!6211645))

(assert (= (and b!6211645 (not res!2568217)) b!6211653))

(assert (= (and b!6211653 (not res!2568219)) b!6211646))

(assert (= (or b!6211647 b!6211643 b!6211645) bm!520639))

(declare-fun m!7041416 () Bool)

(assert (=> b!6211653 m!7041416))

(assert (=> b!6211653 m!7041416))

(declare-fun m!7041418 () Bool)

(assert (=> b!6211653 m!7041418))

(declare-fun m!7041420 () Bool)

(assert (=> b!6211655 m!7041420))

(assert (=> b!6211655 m!7041420))

(declare-fun m!7041422 () Bool)

(assert (=> b!6211655 m!7041422))

(assert (=> b!6211655 m!7041416))

(assert (=> b!6211655 m!7041422))

(assert (=> b!6211655 m!7041416))

(declare-fun m!7041424 () Bool)

(assert (=> b!6211655 m!7041424))

(assert (=> b!6211648 m!7041420))

(assert (=> b!6211646 m!7041420))

(declare-fun m!7041426 () Bool)

(assert (=> b!6211651 m!7041426))

(assert (=> bm!520639 m!7041408))

(assert (=> d!1947056 m!7041408))

(assert (=> d!1947056 m!7040948))

(assert (=> b!6211652 m!7041416))

(assert (=> b!6211652 m!7041416))

(assert (=> b!6211652 m!7041418))

(assert (=> b!6210976 d!1947056))

(declare-fun d!1947058 () Bool)

(assert (=> d!1947058 (= (matchR!8332 r!7292 s!2326) (matchRSpec!3250 r!7292 s!2326))))

(declare-fun lt!2343930 () Unit!157927)

(declare-fun choose!46165 (Regex!16149 List!64748) Unit!157927)

(assert (=> d!1947058 (= lt!2343930 (choose!46165 r!7292 s!2326))))

(assert (=> d!1947058 (validRegex!7885 r!7292)))

(assert (=> d!1947058 (= (mainMatchTheorem!3250 r!7292 s!2326) lt!2343930)))

(declare-fun bs!1540714 () Bool)

(assert (= bs!1540714 d!1947058))

(assert (=> bs!1540714 m!7040954))

(assert (=> bs!1540714 m!7040952))

(declare-fun m!7041428 () Bool)

(assert (=> bs!1540714 m!7041428))

(assert (=> bs!1540714 m!7040948))

(assert (=> b!6210976 d!1947058))

(declare-fun d!1947060 () Bool)

(declare-fun lt!2343933 () Regex!16149)

(assert (=> d!1947060 (validRegex!7885 lt!2343933)))

(assert (=> d!1947060 (= lt!2343933 (generalisedUnion!1993 (unfocusZipperList!1570 zl!343)))))

(assert (=> d!1947060 (= (unfocusZipper!1891 zl!343) lt!2343933)))

(declare-fun bs!1540715 () Bool)

(assert (= bs!1540715 d!1947060))

(declare-fun m!7041430 () Bool)

(assert (=> bs!1540715 m!7041430))

(assert (=> bs!1540715 m!7040962))

(assert (=> bs!1540715 m!7040962))

(assert (=> bs!1540715 m!7040964))

(assert (=> b!6210966 d!1947060))

(declare-fun bs!1540716 () Bool)

(declare-fun d!1947062 () Bool)

(assert (= bs!1540716 (and d!1947062 d!1947044)))

(declare-fun lambda!339441 () Int)

(assert (=> bs!1540716 (= lambda!339441 lambda!339429)))

(declare-fun bs!1540717 () Bool)

(assert (= bs!1540717 (and d!1947062 d!1946998)))

(assert (=> bs!1540717 (= lambda!339441 lambda!339416)))

(declare-fun bs!1540718 () Bool)

(assert (= bs!1540718 (and d!1947062 d!1947046)))

(assert (=> bs!1540718 (= lambda!339441 lambda!339432)))

(declare-fun bs!1540719 () Bool)

(assert (= bs!1540719 (and d!1947062 d!1947006)))

(assert (=> bs!1540719 (= lambda!339441 lambda!339417)))

(declare-fun bs!1540720 () Bool)

(assert (= bs!1540720 (and d!1947062 d!1946990)))

(assert (=> bs!1540720 (= lambda!339441 lambda!339415)))

(declare-fun b!6211677 () Bool)

(declare-fun e!3781782 () Regex!16149)

(assert (=> b!6211677 (= e!3781782 (Concat!24994 (h!71070 (exprs!6033 (h!71071 zl!343))) (generalisedConcat!1746 (t!378270 (exprs!6033 (h!71071 zl!343))))))))

(declare-fun b!6211678 () Bool)

(declare-fun e!3781781 () Bool)

(declare-fun lt!2343936 () Regex!16149)

(assert (=> b!6211678 (= e!3781781 (= lt!2343936 (head!12807 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun b!6211679 () Bool)

(assert (=> b!6211679 (= e!3781782 EmptyExpr!16149)))

(declare-fun b!6211680 () Bool)

(declare-fun e!3781777 () Bool)

(assert (=> b!6211680 (= e!3781777 e!3781781)))

(declare-fun c!1121821 () Bool)

(assert (=> b!6211680 (= c!1121821 (isEmpty!36622 (tail!11892 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun b!6211681 () Bool)

(declare-fun e!3781778 () Regex!16149)

(assert (=> b!6211681 (= e!3781778 e!3781782)))

(declare-fun c!1121823 () Bool)

(assert (=> b!6211681 (= c!1121823 ((_ is Cons!64622) (exprs!6033 (h!71071 zl!343))))))

(declare-fun b!6211682 () Bool)

(declare-fun e!3781780 () Bool)

(assert (=> b!6211682 (= e!3781780 (isEmpty!36622 (t!378270 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun b!6211683 () Bool)

(declare-fun isConcat!1082 (Regex!16149) Bool)

(assert (=> b!6211683 (= e!3781781 (isConcat!1082 lt!2343936))))

(declare-fun e!3781779 () Bool)

(assert (=> d!1947062 e!3781779))

(declare-fun res!2568227 () Bool)

(assert (=> d!1947062 (=> (not res!2568227) (not e!3781779))))

(assert (=> d!1947062 (= res!2568227 (validRegex!7885 lt!2343936))))

(assert (=> d!1947062 (= lt!2343936 e!3781778)))

(declare-fun c!1121822 () Bool)

(assert (=> d!1947062 (= c!1121822 e!3781780)))

(declare-fun res!2568226 () Bool)

(assert (=> d!1947062 (=> (not res!2568226) (not e!3781780))))

(assert (=> d!1947062 (= res!2568226 ((_ is Cons!64622) (exprs!6033 (h!71071 zl!343))))))

(assert (=> d!1947062 (forall!15263 (exprs!6033 (h!71071 zl!343)) lambda!339441)))

(assert (=> d!1947062 (= (generalisedConcat!1746 (exprs!6033 (h!71071 zl!343))) lt!2343936)))

(declare-fun b!6211684 () Bool)

(assert (=> b!6211684 (= e!3781778 (h!71070 (exprs!6033 (h!71071 zl!343))))))

(declare-fun b!6211685 () Bool)

(assert (=> b!6211685 (= e!3781779 e!3781777)))

(declare-fun c!1121824 () Bool)

(assert (=> b!6211685 (= c!1121824 (isEmpty!36622 (exprs!6033 (h!71071 zl!343))))))

(declare-fun b!6211686 () Bool)

(declare-fun isEmptyExpr!1559 (Regex!16149) Bool)

(assert (=> b!6211686 (= e!3781777 (isEmptyExpr!1559 lt!2343936))))

(assert (= (and d!1947062 res!2568226) b!6211682))

(assert (= (and d!1947062 c!1121822) b!6211684))

(assert (= (and d!1947062 (not c!1121822)) b!6211681))

(assert (= (and b!6211681 c!1121823) b!6211677))

(assert (= (and b!6211681 (not c!1121823)) b!6211679))

(assert (= (and d!1947062 res!2568227) b!6211685))

(assert (= (and b!6211685 c!1121824) b!6211686))

(assert (= (and b!6211685 (not c!1121824)) b!6211680))

(assert (= (and b!6211680 c!1121821) b!6211678))

(assert (= (and b!6211680 (not c!1121821)) b!6211683))

(declare-fun m!7041432 () Bool)

(assert (=> b!6211678 m!7041432))

(declare-fun m!7041434 () Bool)

(assert (=> b!6211683 m!7041434))

(declare-fun m!7041436 () Bool)

(assert (=> d!1947062 m!7041436))

(declare-fun m!7041438 () Bool)

(assert (=> d!1947062 m!7041438))

(declare-fun m!7041440 () Bool)

(assert (=> b!6211680 m!7041440))

(assert (=> b!6211680 m!7041440))

(declare-fun m!7041442 () Bool)

(assert (=> b!6211680 m!7041442))

(declare-fun m!7041444 () Bool)

(assert (=> b!6211685 m!7041444))

(assert (=> b!6211682 m!7040914))

(declare-fun m!7041446 () Bool)

(assert (=> b!6211677 m!7041446))

(declare-fun m!7041448 () Bool)

(assert (=> b!6211686 m!7041448))

(assert (=> b!6210985 d!1947062))

(declare-fun b!6211691 () Bool)

(declare-fun e!3781785 () Bool)

(declare-fun tp!1732791 () Bool)

(assert (=> b!6211691 (= e!3781785 (and tp_is_empty!41551 tp!1732791))))

(assert (=> b!6210984 (= tp!1732729 e!3781785)))

(assert (= (and b!6210984 ((_ is Cons!64624) (t!378272 s!2326))) b!6211691))

(declare-fun b!6211702 () Bool)

(declare-fun e!3781788 () Bool)

(assert (=> b!6211702 (= e!3781788 tp_is_empty!41551)))

(declare-fun b!6211704 () Bool)

(declare-fun tp!1732805 () Bool)

(assert (=> b!6211704 (= e!3781788 tp!1732805)))

(declare-fun b!6211705 () Bool)

(declare-fun tp!1732803 () Bool)

(declare-fun tp!1732802 () Bool)

(assert (=> b!6211705 (= e!3781788 (and tp!1732803 tp!1732802))))

(assert (=> b!6210968 (= tp!1732728 e!3781788)))

(declare-fun b!6211703 () Bool)

(declare-fun tp!1732806 () Bool)

(declare-fun tp!1732804 () Bool)

(assert (=> b!6211703 (= e!3781788 (and tp!1732806 tp!1732804))))

(assert (= (and b!6210968 ((_ is ElementMatch!16149) (regOne!32810 r!7292))) b!6211702))

(assert (= (and b!6210968 ((_ is Concat!24994) (regOne!32810 r!7292))) b!6211703))

(assert (= (and b!6210968 ((_ is Star!16149) (regOne!32810 r!7292))) b!6211704))

(assert (= (and b!6210968 ((_ is Union!16149) (regOne!32810 r!7292))) b!6211705))

(declare-fun b!6211706 () Bool)

(declare-fun e!3781789 () Bool)

(assert (=> b!6211706 (= e!3781789 tp_is_empty!41551)))

(declare-fun b!6211708 () Bool)

(declare-fun tp!1732810 () Bool)

(assert (=> b!6211708 (= e!3781789 tp!1732810)))

(declare-fun b!6211709 () Bool)

(declare-fun tp!1732808 () Bool)

(declare-fun tp!1732807 () Bool)

(assert (=> b!6211709 (= e!3781789 (and tp!1732808 tp!1732807))))

(assert (=> b!6210968 (= tp!1732723 e!3781789)))

(declare-fun b!6211707 () Bool)

(declare-fun tp!1732811 () Bool)

(declare-fun tp!1732809 () Bool)

(assert (=> b!6211707 (= e!3781789 (and tp!1732811 tp!1732809))))

(assert (= (and b!6210968 ((_ is ElementMatch!16149) (regTwo!32810 r!7292))) b!6211706))

(assert (= (and b!6210968 ((_ is Concat!24994) (regTwo!32810 r!7292))) b!6211707))

(assert (= (and b!6210968 ((_ is Star!16149) (regTwo!32810 r!7292))) b!6211708))

(assert (= (and b!6210968 ((_ is Union!16149) (regTwo!32810 r!7292))) b!6211709))

(declare-fun b!6211710 () Bool)

(declare-fun e!3781790 () Bool)

(assert (=> b!6211710 (= e!3781790 tp_is_empty!41551)))

(declare-fun b!6211712 () Bool)

(declare-fun tp!1732815 () Bool)

(assert (=> b!6211712 (= e!3781790 tp!1732815)))

(declare-fun b!6211713 () Bool)

(declare-fun tp!1732813 () Bool)

(declare-fun tp!1732812 () Bool)

(assert (=> b!6211713 (= e!3781790 (and tp!1732813 tp!1732812))))

(assert (=> b!6210974 (= tp!1732721 e!3781790)))

(declare-fun b!6211711 () Bool)

(declare-fun tp!1732816 () Bool)

(declare-fun tp!1732814 () Bool)

(assert (=> b!6211711 (= e!3781790 (and tp!1732816 tp!1732814))))

(assert (= (and b!6210974 ((_ is ElementMatch!16149) (reg!16478 r!7292))) b!6211710))

(assert (= (and b!6210974 ((_ is Concat!24994) (reg!16478 r!7292))) b!6211711))

(assert (= (and b!6210974 ((_ is Star!16149) (reg!16478 r!7292))) b!6211712))

(assert (= (and b!6210974 ((_ is Union!16149) (reg!16478 r!7292))) b!6211713))

(declare-fun condSetEmpty!42174 () Bool)

(assert (=> setNonEmpty!42168 (= condSetEmpty!42174 (= setRest!42168 ((as const (Array Context!11066 Bool)) false)))))

(declare-fun setRes!42174 () Bool)

(assert (=> setNonEmpty!42168 (= tp!1732730 setRes!42174)))

(declare-fun setIsEmpty!42174 () Bool)

(assert (=> setIsEmpty!42174 setRes!42174))

(declare-fun e!3781793 () Bool)

(declare-fun setElem!42174 () Context!11066)

(declare-fun setNonEmpty!42174 () Bool)

(declare-fun tp!1732822 () Bool)

(assert (=> setNonEmpty!42174 (= setRes!42174 (and tp!1732822 (inv!83619 setElem!42174) e!3781793))))

(declare-fun setRest!42174 () (InoxSet Context!11066))

(assert (=> setNonEmpty!42174 (= setRest!42168 ((_ map or) (store ((as const (Array Context!11066 Bool)) false) setElem!42174 true) setRest!42174))))

(declare-fun b!6211718 () Bool)

(declare-fun tp!1732821 () Bool)

(assert (=> b!6211718 (= e!3781793 tp!1732821)))

(assert (= (and setNonEmpty!42168 condSetEmpty!42174) setIsEmpty!42174))

(assert (= (and setNonEmpty!42168 (not condSetEmpty!42174)) setNonEmpty!42174))

(assert (= setNonEmpty!42174 b!6211718))

(declare-fun m!7041450 () Bool)

(assert (=> setNonEmpty!42174 m!7041450))

(declare-fun b!6211726 () Bool)

(declare-fun e!3781799 () Bool)

(declare-fun tp!1732827 () Bool)

(assert (=> b!6211726 (= e!3781799 tp!1732827)))

(declare-fun b!6211725 () Bool)

(declare-fun tp!1732828 () Bool)

(declare-fun e!3781798 () Bool)

(assert (=> b!6211725 (= e!3781798 (and (inv!83619 (h!71071 (t!378271 zl!343))) e!3781799 tp!1732828))))

(assert (=> b!6210969 (= tp!1732727 e!3781798)))

(assert (= b!6211725 b!6211726))

(assert (= (and b!6210969 ((_ is Cons!64623) (t!378271 zl!343))) b!6211725))

(declare-fun m!7041452 () Bool)

(assert (=> b!6211725 m!7041452))

(declare-fun b!6211727 () Bool)

(declare-fun e!3781800 () Bool)

(assert (=> b!6211727 (= e!3781800 tp_is_empty!41551)))

(declare-fun b!6211729 () Bool)

(declare-fun tp!1732832 () Bool)

(assert (=> b!6211729 (= e!3781800 tp!1732832)))

(declare-fun b!6211730 () Bool)

(declare-fun tp!1732830 () Bool)

(declare-fun tp!1732829 () Bool)

(assert (=> b!6211730 (= e!3781800 (and tp!1732830 tp!1732829))))

(assert (=> b!6210964 (= tp!1732726 e!3781800)))

(declare-fun b!6211728 () Bool)

(declare-fun tp!1732833 () Bool)

(declare-fun tp!1732831 () Bool)

(assert (=> b!6211728 (= e!3781800 (and tp!1732833 tp!1732831))))

(assert (= (and b!6210964 ((_ is ElementMatch!16149) (regOne!32811 r!7292))) b!6211727))

(assert (= (and b!6210964 ((_ is Concat!24994) (regOne!32811 r!7292))) b!6211728))

(assert (= (and b!6210964 ((_ is Star!16149) (regOne!32811 r!7292))) b!6211729))

(assert (= (and b!6210964 ((_ is Union!16149) (regOne!32811 r!7292))) b!6211730))

(declare-fun b!6211731 () Bool)

(declare-fun e!3781801 () Bool)

(assert (=> b!6211731 (= e!3781801 tp_is_empty!41551)))

(declare-fun b!6211733 () Bool)

(declare-fun tp!1732837 () Bool)

(assert (=> b!6211733 (= e!3781801 tp!1732837)))

(declare-fun b!6211734 () Bool)

(declare-fun tp!1732835 () Bool)

(declare-fun tp!1732834 () Bool)

(assert (=> b!6211734 (= e!3781801 (and tp!1732835 tp!1732834))))

(assert (=> b!6210964 (= tp!1732725 e!3781801)))

(declare-fun b!6211732 () Bool)

(declare-fun tp!1732838 () Bool)

(declare-fun tp!1732836 () Bool)

(assert (=> b!6211732 (= e!3781801 (and tp!1732838 tp!1732836))))

(assert (= (and b!6210964 ((_ is ElementMatch!16149) (regTwo!32811 r!7292))) b!6211731))

(assert (= (and b!6210964 ((_ is Concat!24994) (regTwo!32811 r!7292))) b!6211732))

(assert (= (and b!6210964 ((_ is Star!16149) (regTwo!32811 r!7292))) b!6211733))

(assert (= (and b!6210964 ((_ is Union!16149) (regTwo!32811 r!7292))) b!6211734))

(declare-fun b!6211739 () Bool)

(declare-fun e!3781804 () Bool)

(declare-fun tp!1732843 () Bool)

(declare-fun tp!1732844 () Bool)

(assert (=> b!6211739 (= e!3781804 (and tp!1732843 tp!1732844))))

(assert (=> b!6210975 (= tp!1732722 e!3781804)))

(assert (= (and b!6210975 ((_ is Cons!64622) (exprs!6033 setElem!42168))) b!6211739))

(declare-fun b!6211740 () Bool)

(declare-fun e!3781805 () Bool)

(declare-fun tp!1732845 () Bool)

(declare-fun tp!1732846 () Bool)

(assert (=> b!6211740 (= e!3781805 (and tp!1732845 tp!1732846))))

(assert (=> b!6210986 (= tp!1732724 e!3781805)))

(assert (= (and b!6210986 ((_ is Cons!64622) (exprs!6033 (h!71071 zl!343)))) b!6211740))

(declare-fun b_lambda!236179 () Bool)

(assert (= b_lambda!236177 (or b!6210960 b_lambda!236179)))

(declare-fun bs!1540721 () Bool)

(declare-fun d!1947064 () Bool)

(assert (= bs!1540721 (and d!1947064 b!6210960)))

(assert (=> bs!1540721 (= (dynLambda!25491 lambda!339383 (h!71071 zl!343)) (derivationStepZipperUp!1323 (h!71071 zl!343) (h!71072 s!2326)))))

(assert (=> bs!1540721 m!7040942))

(assert (=> d!1947030 d!1947064))

(check-sat (not bm!520601) (not b!6211653) (not b_lambda!236179) (not b!6211494) (not d!1947056) (not b!6211447) (not b!6211378) (not b!6211375) (not d!1947006) (not b!6211732) (not bm!520610) (not b!6211614) (not b!6211691) (not b!6211646) (not d!1946998) (not bm!520604) (not bm!520616) (not b!6211541) (not d!1947060) (not b!6211484) (not b!6211449) (not d!1947022) (not b!6211682) (not d!1947038) (not b!6211491) (not b!6211707) tp_is_empty!41551 (not b!6211726) (not b!6211496) (not b!6211705) (not d!1947036) (not d!1947018) (not b!6211729) (not bm!520613) (not b!6211740) (not b!6211611) (not b!6211648) (not d!1947044) (not b!6211713) (not b!6211733) (not b!6211501) (not b!6211502) (not b!6211504) (not b!6211475) (not bm!520619) (not d!1947010) (not b!6211448) (not b!6211503) (not b!6211725) (not setNonEmpty!42174) (not b!6211708) (not bm!520635) (not b!6211376) (not bm!520636) (not b!6211371) (not b!6211571) (not bm!520607) (not b!6211711) (not b!6211379) (not b!6211535) (not bm!520605) (not b!6211677) (not b!6211652) (not b!6211709) (not b!6211408) (not bs!1540721) (not b!6211570) (not b!6211489) (not d!1947008) (not d!1947042) (not bm!520629) (not b!6211445) (not bm!520620) (not b!6211444) (not d!1947046) (not d!1947012) (not b!6211473) (not b!6211527) (not d!1947014) (not bm!520621) (not b!6211655) (not b!6211686) (not d!1946988) (not b!6211530) (not b!6211734) (not d!1946992) (not b!6211419) (not b!6211372) (not bm!520630) (not b!6211534) (not b!6211728) (not bm!520599) (not b!6211505) (not b!6211683) (not b!6211651) (not b!6211685) (not b!6211718) (not b!6211703) (not d!1947016) (not d!1946994) (not d!1946996) (not d!1947040) (not b!6211569) (not b!6211528) (not b!6211678) (not d!1946990) (not bm!520614) (not b!6211506) (not b!6211704) (not b!6211377) (not d!1947020) (not b!6211712) (not b!6211533) (not b!6211739) (not b!6211680) (not d!1947062) (not d!1947034) (not b!6211443) (not d!1947050) (not b!6211730) (not b!6211532) (not bm!520639) (not d!1947030) (not d!1947058))
(check-sat)
(get-model)

(declare-fun d!1947302 () Bool)

(assert (=> d!1947302 (= (isEmpty!36626 s!2326) ((_ is Nil!64624) s!2326))))

(assert (=> d!1947056 d!1947302))

(assert (=> d!1947056 d!1947048))

(declare-fun d!1947304 () Bool)

(assert (=> d!1947304 (= (nullable!6142 (h!71070 (exprs!6033 lt!2343834))) (nullableFct!2098 (h!71070 (exprs!6033 lt!2343834))))))

(declare-fun bs!1540880 () Bool)

(assert (= bs!1540880 d!1947304))

(declare-fun m!7041952 () Bool)

(assert (=> bs!1540880 m!7041952))

(assert (=> b!6211496 d!1947304))

(declare-fun d!1947306 () Bool)

(assert (=> d!1947306 (= (head!12807 (exprs!6033 (h!71071 zl!343))) (h!71070 (exprs!6033 (h!71071 zl!343))))))

(assert (=> b!6211678 d!1947306))

(declare-fun d!1947308 () Bool)

(declare-fun c!1121960 () Bool)

(assert (=> d!1947308 (= c!1121960 (isEmpty!36626 (tail!11891 (t!378272 s!2326))))))

(declare-fun e!3782116 () Bool)

(assert (=> d!1947308 (= (matchZipper!2161 (derivationStepZipper!2115 lt!2343847 (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))) e!3782116)))

(declare-fun b!6212298 () Bool)

(assert (=> b!6212298 (= e!3782116 (nullableZipper!1923 (derivationStepZipper!2115 lt!2343847 (head!12806 (t!378272 s!2326)))))))

(declare-fun b!6212299 () Bool)

(assert (=> b!6212299 (= e!3782116 (matchZipper!2161 (derivationStepZipper!2115 (derivationStepZipper!2115 lt!2343847 (head!12806 (t!378272 s!2326))) (head!12806 (tail!11891 (t!378272 s!2326)))) (tail!11891 (tail!11891 (t!378272 s!2326)))))))

(assert (= (and d!1947308 c!1121960) b!6212298))

(assert (= (and d!1947308 (not c!1121960)) b!6212299))

(assert (=> d!1947308 m!7041230))

(declare-fun m!7041954 () Bool)

(assert (=> d!1947308 m!7041954))

(assert (=> b!6212298 m!7041240))

(declare-fun m!7041956 () Bool)

(assert (=> b!6212298 m!7041956))

(assert (=> b!6212299 m!7041230))

(declare-fun m!7041958 () Bool)

(assert (=> b!6212299 m!7041958))

(assert (=> b!6212299 m!7041240))

(assert (=> b!6212299 m!7041958))

(declare-fun m!7041960 () Bool)

(assert (=> b!6212299 m!7041960))

(assert (=> b!6212299 m!7041230))

(declare-fun m!7041962 () Bool)

(assert (=> b!6212299 m!7041962))

(assert (=> b!6212299 m!7041960))

(assert (=> b!6212299 m!7041962))

(declare-fun m!7041964 () Bool)

(assert (=> b!6212299 m!7041964))

(assert (=> b!6211377 d!1947308))

(declare-fun bs!1540881 () Bool)

(declare-fun d!1947310 () Bool)

(assert (= bs!1540881 (and d!1947310 b!6210960)))

(declare-fun lambda!339478 () Int)

(assert (=> bs!1540881 (= (= (head!12806 (t!378272 s!2326)) (h!71072 s!2326)) (= lambda!339478 lambda!339383))))

(assert (=> d!1947310 true))

(assert (=> d!1947310 (= (derivationStepZipper!2115 lt!2343847 (head!12806 (t!378272 s!2326))) (flatMap!1654 lt!2343847 lambda!339478))))

(declare-fun bs!1540882 () Bool)

(assert (= bs!1540882 d!1947310))

(declare-fun m!7041966 () Bool)

(assert (=> bs!1540882 m!7041966))

(assert (=> b!6211377 d!1947310))

(declare-fun d!1947312 () Bool)

(assert (=> d!1947312 (= (head!12806 (t!378272 s!2326)) (h!71072 (t!378272 s!2326)))))

(assert (=> b!6211377 d!1947312))

(declare-fun d!1947314 () Bool)

(assert (=> d!1947314 (= (tail!11891 (t!378272 s!2326)) (t!378272 (t!378272 s!2326)))))

(assert (=> b!6211377 d!1947314))

(assert (=> bs!1540721 d!1947028))

(declare-fun b!6212302 () Bool)

(declare-fun e!3782120 () (InoxSet Context!11066))

(declare-fun call!520749 () (InoxSet Context!11066))

(declare-fun call!520754 () (InoxSet Context!11066))

(assert (=> b!6212302 (= e!3782120 ((_ map or) call!520749 call!520754))))

(declare-fun bm!520744 () Bool)

(declare-fun call!520750 () List!64746)

(declare-fun c!1121963 () Bool)

(assert (=> bm!520744 (= call!520749 (derivationStepZipperDown!1397 (ite c!1121963 (regOne!32811 (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))))) (regOne!32810 (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292)))))) (ite c!1121963 (ite c!1121737 lt!2343834 (Context!11067 call!520605)) (Context!11067 call!520750)) (h!71072 s!2326)))))

(declare-fun c!1121964 () Bool)

(declare-fun d!1947316 () Bool)

(assert (=> d!1947316 (= c!1121964 (and ((_ is ElementMatch!16149) (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))))) (= (c!1121618 (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))))) (h!71072 s!2326))))))

(declare-fun e!3782119 () (InoxSet Context!11066))

(assert (=> d!1947316 (= (derivationStepZipperDown!1397 (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292)))) (ite c!1121737 lt!2343834 (Context!11067 call!520605)) (h!71072 s!2326)) e!3782119)))

(declare-fun b!6212303 () Bool)

(assert (=> b!6212303 (= e!3782119 (store ((as const (Array Context!11066 Bool)) false) (ite c!1121737 lt!2343834 (Context!11067 call!520605)) true))))

(declare-fun b!6212304 () Bool)

(declare-fun e!3782121 () (InoxSet Context!11066))

(assert (=> b!6212304 (= e!3782121 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212305 () Bool)

(declare-fun e!3782117 () (InoxSet Context!11066))

(assert (=> b!6212305 (= e!3782119 e!3782117)))

(assert (=> b!6212305 (= c!1121963 ((_ is Union!16149) (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))))))))

(declare-fun bm!520745 () Bool)

(declare-fun call!520753 () (InoxSet Context!11066))

(assert (=> bm!520745 (= call!520753 call!520754)))

(declare-fun b!6212306 () Bool)

(declare-fun e!3782122 () (InoxSet Context!11066))

(assert (=> b!6212306 (= e!3782122 call!520753)))

(declare-fun c!1121966 () Bool)

(declare-fun c!1121967 () Bool)

(declare-fun bm!520746 () Bool)

(assert (=> bm!520746 (= call!520750 ($colon$colon!2018 (exprs!6033 (ite c!1121737 lt!2343834 (Context!11067 call!520605))) (ite (or c!1121966 c!1121967) (regTwo!32810 (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))))) (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292)))))))))

(declare-fun b!6212307 () Bool)

(assert (=> b!6212307 (= e!3782120 e!3782122)))

(assert (=> b!6212307 (= c!1121967 ((_ is Concat!24994) (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))))))))

(declare-fun bm!520747 () Bool)

(declare-fun call!520751 () (InoxSet Context!11066))

(assert (=> bm!520747 (= call!520754 call!520751)))

(declare-fun b!6212308 () Bool)

(declare-fun e!3782118 () Bool)

(assert (=> b!6212308 (= e!3782118 (nullable!6142 (regOne!32810 (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292)))))))))

(declare-fun b!6212309 () Bool)

(assert (=> b!6212309 (= c!1121966 e!3782118)))

(declare-fun res!2568406 () Bool)

(assert (=> b!6212309 (=> (not res!2568406) (not e!3782118))))

(assert (=> b!6212309 (= res!2568406 ((_ is Concat!24994) (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))))))))

(assert (=> b!6212309 (= e!3782117 e!3782120)))

(declare-fun bm!520748 () Bool)

(declare-fun call!520752 () List!64746)

(assert (=> bm!520748 (= call!520752 call!520750)))

(declare-fun b!6212310 () Bool)

(assert (=> b!6212310 (= e!3782117 ((_ map or) call!520749 call!520751))))

(declare-fun bm!520749 () Bool)

(assert (=> bm!520749 (= call!520751 (derivationStepZipperDown!1397 (ite c!1121963 (regTwo!32811 (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))))) (ite c!1121966 (regTwo!32810 (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))))) (ite c!1121967 (regOne!32810 (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))))) (reg!16478 (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292)))))))) (ite (or c!1121963 c!1121966) (ite c!1121737 lt!2343834 (Context!11067 call!520605)) (Context!11067 call!520752)) (h!71072 s!2326)))))

(declare-fun b!6212311 () Bool)

(assert (=> b!6212311 (= e!3782121 call!520753)))

(declare-fun b!6212312 () Bool)

(declare-fun c!1121965 () Bool)

(assert (=> b!6212312 (= c!1121965 ((_ is Star!16149) (ite c!1121737 (regOne!32811 (regTwo!32810 (regOne!32810 r!7292))) (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))))))))

(assert (=> b!6212312 (= e!3782122 e!3782121)))

(assert (= (and d!1947316 c!1121964) b!6212303))

(assert (= (and d!1947316 (not c!1121964)) b!6212305))

(assert (= (and b!6212305 c!1121963) b!6212310))

(assert (= (and b!6212305 (not c!1121963)) b!6212309))

(assert (= (and b!6212309 res!2568406) b!6212308))

(assert (= (and b!6212309 c!1121966) b!6212302))

(assert (= (and b!6212309 (not c!1121966)) b!6212307))

(assert (= (and b!6212307 c!1121967) b!6212306))

(assert (= (and b!6212307 (not c!1121967)) b!6212312))

(assert (= (and b!6212312 c!1121965) b!6212311))

(assert (= (and b!6212312 (not c!1121965)) b!6212304))

(assert (= (or b!6212306 b!6212311) bm!520748))

(assert (= (or b!6212306 b!6212311) bm!520745))

(assert (= (or b!6212302 bm!520748) bm!520746))

(assert (= (or b!6212302 bm!520745) bm!520747))

(assert (= (or b!6212310 bm!520747) bm!520749))

(assert (= (or b!6212310 b!6212302) bm!520744))

(declare-fun m!7041968 () Bool)

(assert (=> b!6212303 m!7041968))

(declare-fun m!7041970 () Bool)

(assert (=> b!6212308 m!7041970))

(declare-fun m!7041972 () Bool)

(assert (=> bm!520749 m!7041972))

(declare-fun m!7041974 () Bool)

(assert (=> bm!520744 m!7041974))

(declare-fun m!7041976 () Bool)

(assert (=> bm!520746 m!7041976))

(assert (=> bm!520599 d!1947316))

(declare-fun d!1947318 () Bool)

(declare-fun c!1121970 () Bool)

(assert (=> d!1947318 (= c!1121970 ((_ is Nil!64623) lt!2343917))))

(declare-fun e!3782125 () (InoxSet Context!11066))

(assert (=> d!1947318 (= (content!12092 lt!2343917) e!3782125)))

(declare-fun b!6212317 () Bool)

(assert (=> b!6212317 (= e!3782125 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212318 () Bool)

(assert (=> b!6212318 (= e!3782125 ((_ map or) (store ((as const (Array Context!11066 Bool)) false) (h!71071 lt!2343917) true) (content!12092 (t!378271 lt!2343917))))))

(assert (= (and d!1947318 c!1121970) b!6212317))

(assert (= (and d!1947318 (not c!1121970)) b!6212318))

(declare-fun m!7041978 () Bool)

(assert (=> b!6212318 m!7041978))

(declare-fun m!7041980 () Bool)

(assert (=> b!6212318 m!7041980))

(assert (=> b!6211501 d!1947318))

(assert (=> b!6211491 d!1947022))

(declare-fun b!6212319 () Bool)

(declare-fun res!2568407 () Bool)

(declare-fun e!3782128 () Bool)

(assert (=> b!6212319 (=> res!2568407 e!3782128)))

(assert (=> b!6212319 (= res!2568407 (not ((_ is Concat!24994) (ite c!1121789 (reg!16478 r!7292) (ite c!1121790 (regOne!32811 r!7292) (regOne!32810 r!7292))))))))

(declare-fun e!3782127 () Bool)

(assert (=> b!6212319 (= e!3782127 e!3782128)))

(declare-fun b!6212320 () Bool)

(declare-fun res!2568408 () Bool)

(declare-fun e!3782132 () Bool)

(assert (=> b!6212320 (=> (not res!2568408) (not e!3782132))))

(declare-fun call!520755 () Bool)

(assert (=> b!6212320 (= res!2568408 call!520755)))

(assert (=> b!6212320 (= e!3782127 e!3782132)))

(declare-fun b!6212321 () Bool)

(declare-fun call!520757 () Bool)

(assert (=> b!6212321 (= e!3782132 call!520757)))

(declare-fun d!1947320 () Bool)

(declare-fun res!2568409 () Bool)

(declare-fun e!3782126 () Bool)

(assert (=> d!1947320 (=> res!2568409 e!3782126)))

(assert (=> d!1947320 (= res!2568409 ((_ is ElementMatch!16149) (ite c!1121789 (reg!16478 r!7292) (ite c!1121790 (regOne!32811 r!7292) (regOne!32810 r!7292)))))))

(assert (=> d!1947320 (= (validRegex!7885 (ite c!1121789 (reg!16478 r!7292) (ite c!1121790 (regOne!32811 r!7292) (regOne!32810 r!7292)))) e!3782126)))

(declare-fun b!6212322 () Bool)

(declare-fun e!3782130 () Bool)

(assert (=> b!6212322 (= e!3782128 e!3782130)))

(declare-fun res!2568411 () Bool)

(assert (=> b!6212322 (=> (not res!2568411) (not e!3782130))))

(assert (=> b!6212322 (= res!2568411 call!520755)))

(declare-fun b!6212323 () Bool)

(assert (=> b!6212323 (= e!3782130 call!520757)))

(declare-fun bm!520750 () Bool)

(declare-fun call!520756 () Bool)

(assert (=> bm!520750 (= call!520755 call!520756)))

(declare-fun bm!520751 () Bool)

(declare-fun c!1121972 () Bool)

(assert (=> bm!520751 (= call!520757 (validRegex!7885 (ite c!1121972 (regTwo!32811 (ite c!1121789 (reg!16478 r!7292) (ite c!1121790 (regOne!32811 r!7292) (regOne!32810 r!7292)))) (regTwo!32810 (ite c!1121789 (reg!16478 r!7292) (ite c!1121790 (regOne!32811 r!7292) (regOne!32810 r!7292)))))))))

(declare-fun b!6212324 () Bool)

(declare-fun e!3782131 () Bool)

(assert (=> b!6212324 (= e!3782131 e!3782127)))

(assert (=> b!6212324 (= c!1121972 ((_ is Union!16149) (ite c!1121789 (reg!16478 r!7292) (ite c!1121790 (regOne!32811 r!7292) (regOne!32810 r!7292)))))))

(declare-fun c!1121971 () Bool)

(declare-fun bm!520752 () Bool)

(assert (=> bm!520752 (= call!520756 (validRegex!7885 (ite c!1121971 (reg!16478 (ite c!1121789 (reg!16478 r!7292) (ite c!1121790 (regOne!32811 r!7292) (regOne!32810 r!7292)))) (ite c!1121972 (regOne!32811 (ite c!1121789 (reg!16478 r!7292) (ite c!1121790 (regOne!32811 r!7292) (regOne!32810 r!7292)))) (regOne!32810 (ite c!1121789 (reg!16478 r!7292) (ite c!1121790 (regOne!32811 r!7292) (regOne!32810 r!7292))))))))))

(declare-fun b!6212325 () Bool)

(declare-fun e!3782129 () Bool)

(assert (=> b!6212325 (= e!3782129 call!520756)))

(declare-fun b!6212326 () Bool)

(assert (=> b!6212326 (= e!3782126 e!3782131)))

(assert (=> b!6212326 (= c!1121971 ((_ is Star!16149) (ite c!1121789 (reg!16478 r!7292) (ite c!1121790 (regOne!32811 r!7292) (regOne!32810 r!7292)))))))

(declare-fun b!6212327 () Bool)

(assert (=> b!6212327 (= e!3782131 e!3782129)))

(declare-fun res!2568410 () Bool)

(assert (=> b!6212327 (= res!2568410 (not (nullable!6142 (reg!16478 (ite c!1121789 (reg!16478 r!7292) (ite c!1121790 (regOne!32811 r!7292) (regOne!32810 r!7292)))))))))

(assert (=> b!6212327 (=> (not res!2568410) (not e!3782129))))

(assert (= (and d!1947320 (not res!2568409)) b!6212326))

(assert (= (and b!6212326 c!1121971) b!6212327))

(assert (= (and b!6212326 (not c!1121971)) b!6212324))

(assert (= (and b!6212327 res!2568410) b!6212325))

(assert (= (and b!6212324 c!1121972) b!6212320))

(assert (= (and b!6212324 (not c!1121972)) b!6212319))

(assert (= (and b!6212320 res!2568408) b!6212321))

(assert (= (and b!6212319 (not res!2568407)) b!6212322))

(assert (= (and b!6212322 res!2568411) b!6212323))

(assert (= (or b!6212321 b!6212323) bm!520751))

(assert (= (or b!6212320 b!6212322) bm!520750))

(assert (= (or b!6212325 bm!520750) bm!520752))

(declare-fun m!7041982 () Bool)

(assert (=> bm!520751 m!7041982))

(declare-fun m!7041984 () Bool)

(assert (=> bm!520752 m!7041984))

(declare-fun m!7041986 () Bool)

(assert (=> b!6212327 m!7041986))

(assert (=> bm!520630 d!1947320))

(declare-fun d!1947322 () Bool)

(assert (=> d!1947322 (= (isEmpty!36626 (t!378272 s!2326)) ((_ is Nil!64624) (t!378272 s!2326)))))

(assert (=> d!1947038 d!1947322))

(declare-fun d!1947324 () Bool)

(assert (=> d!1947324 (= (head!12806 s!2326) (h!71072 s!2326))))

(assert (=> b!6211648 d!1947324))

(declare-fun bs!1540883 () Bool)

(declare-fun d!1947326 () Bool)

(assert (= bs!1540883 (and d!1947326 d!1947044)))

(declare-fun lambda!339479 () Int)

(assert (=> bs!1540883 (= lambda!339479 lambda!339429)))

(declare-fun bs!1540884 () Bool)

(assert (= bs!1540884 (and d!1947326 d!1946998)))

(assert (=> bs!1540884 (= lambda!339479 lambda!339416)))

(declare-fun bs!1540885 () Bool)

(assert (= bs!1540885 (and d!1947326 d!1947062)))

(assert (=> bs!1540885 (= lambda!339479 lambda!339441)))

(declare-fun bs!1540886 () Bool)

(assert (= bs!1540886 (and d!1947326 d!1947046)))

(assert (=> bs!1540886 (= lambda!339479 lambda!339432)))

(declare-fun bs!1540887 () Bool)

(assert (= bs!1540887 (and d!1947326 d!1947006)))

(assert (=> bs!1540887 (= lambda!339479 lambda!339417)))

(declare-fun bs!1540888 () Bool)

(assert (= bs!1540888 (and d!1947326 d!1946990)))

(assert (=> bs!1540888 (= lambda!339479 lambda!339415)))

(assert (=> d!1947326 (= (inv!83619 (h!71071 (t!378271 zl!343))) (forall!15263 (exprs!6033 (h!71071 (t!378271 zl!343))) lambda!339479))))

(declare-fun bs!1540889 () Bool)

(assert (= bs!1540889 d!1947326))

(declare-fun m!7041988 () Bool)

(assert (=> bs!1540889 m!7041988))

(assert (=> b!6211725 d!1947326))

(declare-fun b!6212328 () Bool)

(declare-fun e!3782136 () (InoxSet Context!11066))

(declare-fun call!520758 () (InoxSet Context!11066))

(declare-fun call!520763 () (InoxSet Context!11066))

(assert (=> b!6212328 (= e!3782136 ((_ map or) call!520758 call!520763))))

(declare-fun c!1121973 () Bool)

(declare-fun bm!520753 () Bool)

(declare-fun call!520759 () List!64746)

(assert (=> bm!520753 (= call!520758 (derivationStepZipperDown!1397 (ite c!1121973 (regOne!32811 (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292))))))) (regOne!32810 (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292)))))))) (ite c!1121973 (ite (or c!1121737 c!1121740) lt!2343834 (Context!11067 call!520607)) (Context!11067 call!520759)) (h!71072 s!2326)))))

(declare-fun c!1121974 () Bool)

(declare-fun d!1947328 () Bool)

(assert (=> d!1947328 (= c!1121974 (and ((_ is ElementMatch!16149) (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292))))))) (= (c!1121618 (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292))))))) (h!71072 s!2326))))))

(declare-fun e!3782135 () (InoxSet Context!11066))

(assert (=> d!1947328 (= (derivationStepZipperDown!1397 (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292)))))) (ite (or c!1121737 c!1121740) lt!2343834 (Context!11067 call!520607)) (h!71072 s!2326)) e!3782135)))

(declare-fun b!6212329 () Bool)

(assert (=> b!6212329 (= e!3782135 (store ((as const (Array Context!11066 Bool)) false) (ite (or c!1121737 c!1121740) lt!2343834 (Context!11067 call!520607)) true))))

(declare-fun b!6212330 () Bool)

(declare-fun e!3782137 () (InoxSet Context!11066))

(assert (=> b!6212330 (= e!3782137 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212331 () Bool)

(declare-fun e!3782133 () (InoxSet Context!11066))

(assert (=> b!6212331 (= e!3782135 e!3782133)))

(assert (=> b!6212331 (= c!1121973 ((_ is Union!16149) (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292))))))))))

(declare-fun bm!520754 () Bool)

(declare-fun call!520762 () (InoxSet Context!11066))

(assert (=> bm!520754 (= call!520762 call!520763)))

(declare-fun b!6212332 () Bool)

(declare-fun e!3782138 () (InoxSet Context!11066))

(assert (=> b!6212332 (= e!3782138 call!520762)))

(declare-fun c!1121976 () Bool)

(declare-fun c!1121977 () Bool)

(declare-fun bm!520755 () Bool)

(assert (=> bm!520755 (= call!520759 ($colon$colon!2018 (exprs!6033 (ite (or c!1121737 c!1121740) lt!2343834 (Context!11067 call!520607))) (ite (or c!1121976 c!1121977) (regTwo!32810 (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292))))))) (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292)))))))))))

(declare-fun b!6212333 () Bool)

(assert (=> b!6212333 (= e!3782136 e!3782138)))

(assert (=> b!6212333 (= c!1121977 ((_ is Concat!24994) (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292))))))))))

(declare-fun bm!520756 () Bool)

(declare-fun call!520760 () (InoxSet Context!11066))

(assert (=> bm!520756 (= call!520763 call!520760)))

(declare-fun e!3782134 () Bool)

(declare-fun b!6212334 () Bool)

(assert (=> b!6212334 (= e!3782134 (nullable!6142 (regOne!32810 (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292)))))))))))

(declare-fun b!6212335 () Bool)

(assert (=> b!6212335 (= c!1121976 e!3782134)))

(declare-fun res!2568412 () Bool)

(assert (=> b!6212335 (=> (not res!2568412) (not e!3782134))))

(assert (=> b!6212335 (= res!2568412 ((_ is Concat!24994) (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292))))))))))

(assert (=> b!6212335 (= e!3782133 e!3782136)))

(declare-fun bm!520757 () Bool)

(declare-fun call!520761 () List!64746)

(assert (=> bm!520757 (= call!520761 call!520759)))

(declare-fun b!6212336 () Bool)

(assert (=> b!6212336 (= e!3782133 ((_ map or) call!520758 call!520760))))

(declare-fun bm!520758 () Bool)

(assert (=> bm!520758 (= call!520760 (derivationStepZipperDown!1397 (ite c!1121973 (regTwo!32811 (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292))))))) (ite c!1121976 (regTwo!32810 (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292))))))) (ite c!1121977 (regOne!32810 (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292))))))) (reg!16478 (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292)))))))))) (ite (or c!1121973 c!1121976) (ite (or c!1121737 c!1121740) lt!2343834 (Context!11067 call!520607)) (Context!11067 call!520761)) (h!71072 s!2326)))))

(declare-fun b!6212337 () Bool)

(assert (=> b!6212337 (= e!3782137 call!520762)))

(declare-fun c!1121975 () Bool)

(declare-fun b!6212338 () Bool)

(assert (=> b!6212338 (= c!1121975 ((_ is Star!16149) (ite c!1121737 (regTwo!32811 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121740 (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (ite c!1121741 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292))) (reg!16478 (regTwo!32810 (regOne!32810 r!7292))))))))))

(assert (=> b!6212338 (= e!3782138 e!3782137)))

(assert (= (and d!1947328 c!1121974) b!6212329))

(assert (= (and d!1947328 (not c!1121974)) b!6212331))

(assert (= (and b!6212331 c!1121973) b!6212336))

(assert (= (and b!6212331 (not c!1121973)) b!6212335))

(assert (= (and b!6212335 res!2568412) b!6212334))

(assert (= (and b!6212335 c!1121976) b!6212328))

(assert (= (and b!6212335 (not c!1121976)) b!6212333))

(assert (= (and b!6212333 c!1121977) b!6212332))

(assert (= (and b!6212333 (not c!1121977)) b!6212338))

(assert (= (and b!6212338 c!1121975) b!6212337))

(assert (= (and b!6212338 (not c!1121975)) b!6212330))

(assert (= (or b!6212332 b!6212337) bm!520757))

(assert (= (or b!6212332 b!6212337) bm!520754))

(assert (= (or b!6212328 bm!520757) bm!520755))

(assert (= (or b!6212328 bm!520754) bm!520756))

(assert (= (or b!6212336 bm!520756) bm!520758))

(assert (= (or b!6212336 b!6212328) bm!520753))

(declare-fun m!7041990 () Bool)

(assert (=> b!6212329 m!7041990))

(declare-fun m!7041992 () Bool)

(assert (=> b!6212334 m!7041992))

(declare-fun m!7041994 () Bool)

(assert (=> bm!520758 m!7041994))

(declare-fun m!7041996 () Bool)

(assert (=> bm!520753 m!7041996))

(declare-fun m!7041998 () Bool)

(assert (=> bm!520755 m!7041998))

(assert (=> bm!520604 d!1947328))

(declare-fun d!1947330 () Bool)

(declare-fun res!2568417 () Bool)

(declare-fun e!3782143 () Bool)

(assert (=> d!1947330 (=> res!2568417 e!3782143)))

(assert (=> d!1947330 (= res!2568417 ((_ is Nil!64622) (exprs!6033 setElem!42168)))))

(assert (=> d!1947330 (= (forall!15263 (exprs!6033 setElem!42168) lambda!339415) e!3782143)))

(declare-fun b!6212343 () Bool)

(declare-fun e!3782144 () Bool)

(assert (=> b!6212343 (= e!3782143 e!3782144)))

(declare-fun res!2568418 () Bool)

(assert (=> b!6212343 (=> (not res!2568418) (not e!3782144))))

(declare-fun dynLambda!25493 (Int Regex!16149) Bool)

(assert (=> b!6212343 (= res!2568418 (dynLambda!25493 lambda!339415 (h!71070 (exprs!6033 setElem!42168))))))

(declare-fun b!6212344 () Bool)

(assert (=> b!6212344 (= e!3782144 (forall!15263 (t!378270 (exprs!6033 setElem!42168)) lambda!339415))))

(assert (= (and d!1947330 (not res!2568417)) b!6212343))

(assert (= (and b!6212343 res!2568418) b!6212344))

(declare-fun b_lambda!236209 () Bool)

(assert (=> (not b_lambda!236209) (not b!6212343)))

(declare-fun m!7042000 () Bool)

(assert (=> b!6212343 m!7042000))

(declare-fun m!7042002 () Bool)

(assert (=> b!6212344 m!7042002))

(assert (=> d!1946990 d!1947330))

(assert (=> d!1946994 d!1947322))

(declare-fun d!1947332 () Bool)

(assert (=> d!1947332 (= (isEmpty!36622 (unfocusZipperList!1570 zl!343)) ((_ is Nil!64622) (unfocusZipperList!1570 zl!343)))))

(assert (=> b!6211535 d!1947332))

(declare-fun d!1947334 () Bool)

(declare-fun c!1121978 () Bool)

(assert (=> d!1947334 (= c!1121978 (isEmpty!36626 (tail!11891 (t!378272 s!2326))))))

(declare-fun e!3782145 () Bool)

(assert (=> d!1947334 (= (matchZipper!2161 (derivationStepZipper!2115 lt!2343846 (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))) e!3782145)))

(declare-fun b!6212345 () Bool)

(assert (=> b!6212345 (= e!3782145 (nullableZipper!1923 (derivationStepZipper!2115 lt!2343846 (head!12806 (t!378272 s!2326)))))))

(declare-fun b!6212346 () Bool)

(assert (=> b!6212346 (= e!3782145 (matchZipper!2161 (derivationStepZipper!2115 (derivationStepZipper!2115 lt!2343846 (head!12806 (t!378272 s!2326))) (head!12806 (tail!11891 (t!378272 s!2326)))) (tail!11891 (tail!11891 (t!378272 s!2326)))))))

(assert (= (and d!1947334 c!1121978) b!6212345))

(assert (= (and d!1947334 (not c!1121978)) b!6212346))

(assert (=> d!1947334 m!7041230))

(assert (=> d!1947334 m!7041954))

(assert (=> b!6212345 m!7041358))

(declare-fun m!7042004 () Bool)

(assert (=> b!6212345 m!7042004))

(assert (=> b!6212346 m!7041230))

(assert (=> b!6212346 m!7041958))

(assert (=> b!6212346 m!7041358))

(assert (=> b!6212346 m!7041958))

(declare-fun m!7042006 () Bool)

(assert (=> b!6212346 m!7042006))

(assert (=> b!6212346 m!7041230))

(assert (=> b!6212346 m!7041962))

(assert (=> b!6212346 m!7042006))

(assert (=> b!6212346 m!7041962))

(declare-fun m!7042008 () Bool)

(assert (=> b!6212346 m!7042008))

(assert (=> b!6211503 d!1947334))

(declare-fun bs!1540890 () Bool)

(declare-fun d!1947336 () Bool)

(assert (= bs!1540890 (and d!1947336 b!6210960)))

(declare-fun lambda!339480 () Int)

(assert (=> bs!1540890 (= (= (head!12806 (t!378272 s!2326)) (h!71072 s!2326)) (= lambda!339480 lambda!339383))))

(declare-fun bs!1540891 () Bool)

(assert (= bs!1540891 (and d!1947336 d!1947310)))

(assert (=> bs!1540891 (= lambda!339480 lambda!339478)))

(assert (=> d!1947336 true))

(assert (=> d!1947336 (= (derivationStepZipper!2115 lt!2343846 (head!12806 (t!378272 s!2326))) (flatMap!1654 lt!2343846 lambda!339480))))

(declare-fun bs!1540892 () Bool)

(assert (= bs!1540892 d!1947336))

(declare-fun m!7042010 () Bool)

(assert (=> bs!1540892 m!7042010))

(assert (=> b!6211503 d!1947336))

(assert (=> b!6211503 d!1947312))

(assert (=> b!6211503 d!1947314))

(declare-fun d!1947338 () Bool)

(assert (=> d!1947338 (= (isEmpty!36626 (tail!11891 s!2326)) ((_ is Nil!64624) (tail!11891 s!2326)))))

(assert (=> b!6211652 d!1947338))

(declare-fun d!1947340 () Bool)

(assert (=> d!1947340 (= (tail!11891 s!2326) (t!378272 s!2326))))

(assert (=> b!6211652 d!1947340))

(declare-fun d!1947342 () Bool)

(declare-fun c!1121979 () Bool)

(assert (=> d!1947342 (= c!1121979 (isEmpty!36626 (tail!11891 (t!378272 s!2326))))))

(declare-fun e!3782146 () Bool)

(assert (=> d!1947342 (= (matchZipper!2161 (derivationStepZipper!2115 lt!2343848 (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))) e!3782146)))

(declare-fun b!6212347 () Bool)

(assert (=> b!6212347 (= e!3782146 (nullableZipper!1923 (derivationStepZipper!2115 lt!2343848 (head!12806 (t!378272 s!2326)))))))

(declare-fun b!6212348 () Bool)

(assert (=> b!6212348 (= e!3782146 (matchZipper!2161 (derivationStepZipper!2115 (derivationStepZipper!2115 lt!2343848 (head!12806 (t!378272 s!2326))) (head!12806 (tail!11891 (t!378272 s!2326)))) (tail!11891 (tail!11891 (t!378272 s!2326)))))))

(assert (= (and d!1947342 c!1121979) b!6212347))

(assert (= (and d!1947342 (not c!1121979)) b!6212348))

(assert (=> d!1947342 m!7041230))

(assert (=> d!1947342 m!7041954))

(assert (=> b!6212347 m!7041364))

(declare-fun m!7042012 () Bool)

(assert (=> b!6212347 m!7042012))

(assert (=> b!6212348 m!7041230))

(assert (=> b!6212348 m!7041958))

(assert (=> b!6212348 m!7041364))

(assert (=> b!6212348 m!7041958))

(declare-fun m!7042014 () Bool)

(assert (=> b!6212348 m!7042014))

(assert (=> b!6212348 m!7041230))

(assert (=> b!6212348 m!7041962))

(assert (=> b!6212348 m!7042014))

(assert (=> b!6212348 m!7041962))

(declare-fun m!7042016 () Bool)

(assert (=> b!6212348 m!7042016))

(assert (=> b!6211505 d!1947342))

(declare-fun bs!1540893 () Bool)

(declare-fun d!1947344 () Bool)

(assert (= bs!1540893 (and d!1947344 b!6210960)))

(declare-fun lambda!339481 () Int)

(assert (=> bs!1540893 (= (= (head!12806 (t!378272 s!2326)) (h!71072 s!2326)) (= lambda!339481 lambda!339383))))

(declare-fun bs!1540894 () Bool)

(assert (= bs!1540894 (and d!1947344 d!1947310)))

(assert (=> bs!1540894 (= lambda!339481 lambda!339478)))

(declare-fun bs!1540895 () Bool)

(assert (= bs!1540895 (and d!1947344 d!1947336)))

(assert (=> bs!1540895 (= lambda!339481 lambda!339480)))

(assert (=> d!1947344 true))

(assert (=> d!1947344 (= (derivationStepZipper!2115 lt!2343848 (head!12806 (t!378272 s!2326))) (flatMap!1654 lt!2343848 lambda!339481))))

(declare-fun bs!1540896 () Bool)

(assert (= bs!1540896 d!1947344))

(declare-fun m!7042018 () Bool)

(assert (=> bs!1540896 m!7042018))

(assert (=> b!6211505 d!1947344))

(assert (=> b!6211505 d!1947312))

(assert (=> b!6211505 d!1947314))

(declare-fun b!6212363 () Bool)

(declare-fun e!3782160 () Bool)

(declare-fun e!3782162 () Bool)

(assert (=> b!6212363 (= e!3782160 e!3782162)))

(declare-fun res!2568430 () Bool)

(assert (=> b!6212363 (=> res!2568430 e!3782162)))

(assert (=> b!6212363 (= res!2568430 ((_ is Star!16149) (regOne!32810 (regOne!32810 r!7292))))))

(declare-fun b!6212364 () Bool)

(declare-fun e!3782163 () Bool)

(declare-fun call!520769 () Bool)

(assert (=> b!6212364 (= e!3782163 call!520769)))

(declare-fun b!6212365 () Bool)

(declare-fun e!3782164 () Bool)

(assert (=> b!6212365 (= e!3782164 e!3782160)))

(declare-fun res!2568432 () Bool)

(assert (=> b!6212365 (=> (not res!2568432) (not e!3782160))))

(assert (=> b!6212365 (= res!2568432 (and (not ((_ is EmptyLang!16149) (regOne!32810 (regOne!32810 r!7292)))) (not ((_ is ElementMatch!16149) (regOne!32810 (regOne!32810 r!7292))))))))

(declare-fun d!1947346 () Bool)

(declare-fun res!2568433 () Bool)

(assert (=> d!1947346 (=> res!2568433 e!3782164)))

(assert (=> d!1947346 (= res!2568433 ((_ is EmptyExpr!16149) (regOne!32810 (regOne!32810 r!7292))))))

(assert (=> d!1947346 (= (nullableFct!2098 (regOne!32810 (regOne!32810 r!7292))) e!3782164)))

(declare-fun bm!520763 () Bool)

(declare-fun c!1121982 () Bool)

(assert (=> bm!520763 (= call!520769 (nullable!6142 (ite c!1121982 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))))))))

(declare-fun b!6212366 () Bool)

(declare-fun e!3782161 () Bool)

(declare-fun e!3782159 () Bool)

(assert (=> b!6212366 (= e!3782161 e!3782159)))

(declare-fun res!2568429 () Bool)

(declare-fun call!520768 () Bool)

(assert (=> b!6212366 (= res!2568429 call!520768)))

(assert (=> b!6212366 (=> (not res!2568429) (not e!3782159))))

(declare-fun b!6212367 () Bool)

(assert (=> b!6212367 (= e!3782161 e!3782163)))

(declare-fun res!2568431 () Bool)

(assert (=> b!6212367 (= res!2568431 call!520768)))

(assert (=> b!6212367 (=> res!2568431 e!3782163)))

(declare-fun b!6212368 () Bool)

(assert (=> b!6212368 (= e!3782162 e!3782161)))

(assert (=> b!6212368 (= c!1121982 ((_ is Union!16149) (regOne!32810 (regOne!32810 r!7292))))))

(declare-fun b!6212369 () Bool)

(assert (=> b!6212369 (= e!3782159 call!520769)))

(declare-fun bm!520764 () Bool)

(assert (=> bm!520764 (= call!520768 (nullable!6142 (ite c!1121982 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292))))))))

(assert (= (and d!1947346 (not res!2568433)) b!6212365))

(assert (= (and b!6212365 res!2568432) b!6212363))

(assert (= (and b!6212363 (not res!2568430)) b!6212368))

(assert (= (and b!6212368 c!1121982) b!6212367))

(assert (= (and b!6212368 (not c!1121982)) b!6212366))

(assert (= (and b!6212367 (not res!2568431)) b!6212364))

(assert (= (and b!6212366 res!2568429) b!6212369))

(assert (= (or b!6212364 b!6212369) bm!520763))

(assert (= (or b!6212367 b!6212366) bm!520764))

(declare-fun m!7042020 () Bool)

(assert (=> bm!520763 m!7042020))

(declare-fun m!7042022 () Bool)

(assert (=> bm!520764 m!7042022))

(assert (=> d!1947036 d!1947346))

(declare-fun bs!1540897 () Bool)

(declare-fun d!1947348 () Bool)

(assert (= bs!1540897 (and d!1947348 d!1947044)))

(declare-fun lambda!339482 () Int)

(assert (=> bs!1540897 (= lambda!339482 lambda!339429)))

(declare-fun bs!1540898 () Bool)

(assert (= bs!1540898 (and d!1947348 d!1946998)))

(assert (=> bs!1540898 (= lambda!339482 lambda!339416)))

(declare-fun bs!1540899 () Bool)

(assert (= bs!1540899 (and d!1947348 d!1947062)))

(assert (=> bs!1540899 (= lambda!339482 lambda!339441)))

(declare-fun bs!1540900 () Bool)

(assert (= bs!1540900 (and d!1947348 d!1947326)))

(assert (=> bs!1540900 (= lambda!339482 lambda!339479)))

(declare-fun bs!1540901 () Bool)

(assert (= bs!1540901 (and d!1947348 d!1947046)))

(assert (=> bs!1540901 (= lambda!339482 lambda!339432)))

(declare-fun bs!1540902 () Bool)

(assert (= bs!1540902 (and d!1947348 d!1947006)))

(assert (=> bs!1540902 (= lambda!339482 lambda!339417)))

(declare-fun bs!1540903 () Bool)

(assert (= bs!1540903 (and d!1947348 d!1946990)))

(assert (=> bs!1540903 (= lambda!339482 lambda!339415)))

(assert (=> d!1947348 (= (inv!83619 setElem!42174) (forall!15263 (exprs!6033 setElem!42174) lambda!339482))))

(declare-fun bs!1540904 () Bool)

(assert (= bs!1540904 d!1947348))

(declare-fun m!7042024 () Bool)

(assert (=> bs!1540904 m!7042024))

(assert (=> setNonEmpty!42174 d!1947348))

(assert (=> d!1947030 d!1947020))

(declare-fun d!1947350 () Bool)

(assert (=> d!1947350 (= (flatMap!1654 z!1189 lambda!339383) (dynLambda!25491 lambda!339383 (h!71071 zl!343)))))

(assert (=> d!1947350 true))

(declare-fun _$13!3230 () Unit!157927)

(assert (=> d!1947350 (= (choose!46163 z!1189 (h!71071 zl!343) lambda!339383) _$13!3230)))

(declare-fun b_lambda!236211 () Bool)

(assert (=> (not b_lambda!236211) (not d!1947350)))

(declare-fun bs!1540905 () Bool)

(assert (= bs!1540905 d!1947350))

(assert (=> bs!1540905 m!7040936))

(assert (=> bs!1540905 m!7041336))

(assert (=> d!1947030 d!1947350))

(declare-fun b!6212370 () Bool)

(declare-fun res!2568438 () Bool)

(declare-fun e!3782165 () Bool)

(assert (=> b!6212370 (=> (not res!2568438) (not e!3782165))))

(declare-fun call!520770 () Bool)

(assert (=> b!6212370 (= res!2568438 (not call!520770))))

(declare-fun b!6212371 () Bool)

(declare-fun e!3782168 () Bool)

(declare-fun e!3782166 () Bool)

(assert (=> b!6212371 (= e!3782168 e!3782166)))

(declare-fun c!1121985 () Bool)

(assert (=> b!6212371 (= c!1121985 ((_ is EmptyLang!16149) (regTwo!32810 r!7292)))))

(declare-fun b!6212372 () Bool)

(declare-fun e!3782167 () Bool)

(declare-fun e!3782171 () Bool)

(assert (=> b!6212372 (= e!3782167 e!3782171)))

(declare-fun res!2568437 () Bool)

(assert (=> b!6212372 (=> res!2568437 e!3782171)))

(assert (=> b!6212372 (= res!2568437 call!520770)))

(declare-fun bm!520765 () Bool)

(assert (=> bm!520765 (= call!520770 (isEmpty!36626 s!2326))))

(declare-fun d!1947352 () Bool)

(assert (=> d!1947352 e!3782168))

(declare-fun c!1121983 () Bool)

(assert (=> d!1947352 (= c!1121983 ((_ is EmptyExpr!16149) (regTwo!32810 r!7292)))))

(declare-fun lt!2343959 () Bool)

(declare-fun e!3782169 () Bool)

(assert (=> d!1947352 (= lt!2343959 e!3782169)))

(declare-fun c!1121984 () Bool)

(assert (=> d!1947352 (= c!1121984 (isEmpty!36626 s!2326))))

(assert (=> d!1947352 (validRegex!7885 (regTwo!32810 r!7292))))

(assert (=> d!1947352 (= (matchR!8332 (regTwo!32810 r!7292) s!2326) lt!2343959)))

(declare-fun b!6212373 () Bool)

(assert (=> b!6212373 (= e!3782171 (not (= (head!12806 s!2326) (c!1121618 (regTwo!32810 r!7292)))))))

(declare-fun b!6212374 () Bool)

(assert (=> b!6212374 (= e!3782168 (= lt!2343959 call!520770))))

(declare-fun b!6212375 () Bool)

(assert (=> b!6212375 (= e!3782165 (= (head!12806 s!2326) (c!1121618 (regTwo!32810 r!7292))))))

(declare-fun b!6212376 () Bool)

(assert (=> b!6212376 (= e!3782166 (not lt!2343959))))

(declare-fun b!6212377 () Bool)

(declare-fun res!2568441 () Bool)

(declare-fun e!3782170 () Bool)

(assert (=> b!6212377 (=> res!2568441 e!3782170)))

(assert (=> b!6212377 (= res!2568441 (not ((_ is ElementMatch!16149) (regTwo!32810 r!7292))))))

(assert (=> b!6212377 (= e!3782166 e!3782170)))

(declare-fun b!6212378 () Bool)

(assert (=> b!6212378 (= e!3782169 (nullable!6142 (regTwo!32810 r!7292)))))

(declare-fun b!6212379 () Bool)

(declare-fun res!2568434 () Bool)

(assert (=> b!6212379 (=> (not res!2568434) (not e!3782165))))

(assert (=> b!6212379 (= res!2568434 (isEmpty!36626 (tail!11891 s!2326)))))

(declare-fun b!6212380 () Bool)

(declare-fun res!2568439 () Bool)

(assert (=> b!6212380 (=> res!2568439 e!3782171)))

(assert (=> b!6212380 (= res!2568439 (not (isEmpty!36626 (tail!11891 s!2326))))))

(declare-fun b!6212381 () Bool)

(assert (=> b!6212381 (= e!3782170 e!3782167)))

(declare-fun res!2568435 () Bool)

(assert (=> b!6212381 (=> (not res!2568435) (not e!3782167))))

(assert (=> b!6212381 (= res!2568435 (not lt!2343959))))

(declare-fun b!6212382 () Bool)

(assert (=> b!6212382 (= e!3782169 (matchR!8332 (derivativeStep!4862 (regTwo!32810 r!7292) (head!12806 s!2326)) (tail!11891 s!2326)))))

(declare-fun b!6212383 () Bool)

(declare-fun res!2568440 () Bool)

(assert (=> b!6212383 (=> res!2568440 e!3782170)))

(assert (=> b!6212383 (= res!2568440 e!3782165)))

(declare-fun res!2568436 () Bool)

(assert (=> b!6212383 (=> (not res!2568436) (not e!3782165))))

(assert (=> b!6212383 (= res!2568436 lt!2343959)))

(assert (= (and d!1947352 c!1121984) b!6212378))

(assert (= (and d!1947352 (not c!1121984)) b!6212382))

(assert (= (and d!1947352 c!1121983) b!6212374))

(assert (= (and d!1947352 (not c!1121983)) b!6212371))

(assert (= (and b!6212371 c!1121985) b!6212376))

(assert (= (and b!6212371 (not c!1121985)) b!6212377))

(assert (= (and b!6212377 (not res!2568441)) b!6212383))

(assert (= (and b!6212383 res!2568436) b!6212370))

(assert (= (and b!6212370 res!2568438) b!6212379))

(assert (= (and b!6212379 res!2568434) b!6212375))

(assert (= (and b!6212383 (not res!2568440)) b!6212381))

(assert (= (and b!6212381 res!2568435) b!6212372))

(assert (= (and b!6212372 (not res!2568437)) b!6212380))

(assert (= (and b!6212380 (not res!2568439)) b!6212373))

(assert (= (or b!6212374 b!6212370 b!6212372) bm!520765))

(assert (=> b!6212380 m!7041416))

(assert (=> b!6212380 m!7041416))

(assert (=> b!6212380 m!7041418))

(assert (=> b!6212382 m!7041420))

(assert (=> b!6212382 m!7041420))

(declare-fun m!7042026 () Bool)

(assert (=> b!6212382 m!7042026))

(assert (=> b!6212382 m!7041416))

(assert (=> b!6212382 m!7042026))

(assert (=> b!6212382 m!7041416))

(declare-fun m!7042028 () Bool)

(assert (=> b!6212382 m!7042028))

(assert (=> b!6212375 m!7041420))

(assert (=> b!6212373 m!7041420))

(declare-fun m!7042030 () Bool)

(assert (=> b!6212378 m!7042030))

(assert (=> bm!520765 m!7041408))

(assert (=> d!1947352 m!7041408))

(declare-fun m!7042032 () Bool)

(assert (=> d!1947352 m!7042032))

(assert (=> b!6212379 m!7041416))

(assert (=> b!6212379 m!7041416))

(assert (=> b!6212379 m!7041418))

(assert (=> b!6211445 d!1947352))

(declare-fun d!1947354 () Bool)

(assert (=> d!1947354 (= (isEmpty!36622 (t!378270 (unfocusZipperList!1570 zl!343))) ((_ is Nil!64622) (t!378270 (unfocusZipperList!1570 zl!343))))))

(assert (=> b!6211530 d!1947354))

(assert (=> bm!520635 d!1947302))

(declare-fun d!1947356 () Bool)

(declare-fun c!1121986 () Bool)

(assert (=> d!1947356 (= c!1121986 (isEmpty!36626 (tail!11891 (t!378272 s!2326))))))

(declare-fun e!3782172 () Bool)

(assert (=> d!1947356 (= (matchZipper!2161 (derivationStepZipper!2115 ((_ map or) lt!2343847 lt!2343840) (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))) e!3782172)))

(declare-fun b!6212384 () Bool)

(assert (=> b!6212384 (= e!3782172 (nullableZipper!1923 (derivationStepZipper!2115 ((_ map or) lt!2343847 lt!2343840) (head!12806 (t!378272 s!2326)))))))

(declare-fun b!6212385 () Bool)

(assert (=> b!6212385 (= e!3782172 (matchZipper!2161 (derivationStepZipper!2115 (derivationStepZipper!2115 ((_ map or) lt!2343847 lt!2343840) (head!12806 (t!378272 s!2326))) (head!12806 (tail!11891 (t!378272 s!2326)))) (tail!11891 (tail!11891 (t!378272 s!2326)))))))

(assert (= (and d!1947356 c!1121986) b!6212384))

(assert (= (and d!1947356 (not c!1121986)) b!6212385))

(assert (=> d!1947356 m!7041230))

(assert (=> d!1947356 m!7041954))

(assert (=> b!6212384 m!7041246))

(declare-fun m!7042034 () Bool)

(assert (=> b!6212384 m!7042034))

(assert (=> b!6212385 m!7041230))

(assert (=> b!6212385 m!7041958))

(assert (=> b!6212385 m!7041246))

(assert (=> b!6212385 m!7041958))

(declare-fun m!7042036 () Bool)

(assert (=> b!6212385 m!7042036))

(assert (=> b!6212385 m!7041230))

(assert (=> b!6212385 m!7041962))

(assert (=> b!6212385 m!7042036))

(assert (=> b!6212385 m!7041962))

(declare-fun m!7042038 () Bool)

(assert (=> b!6212385 m!7042038))

(assert (=> b!6211379 d!1947356))

(declare-fun bs!1540906 () Bool)

(declare-fun d!1947358 () Bool)

(assert (= bs!1540906 (and d!1947358 b!6210960)))

(declare-fun lambda!339483 () Int)

(assert (=> bs!1540906 (= (= (head!12806 (t!378272 s!2326)) (h!71072 s!2326)) (= lambda!339483 lambda!339383))))

(declare-fun bs!1540907 () Bool)

(assert (= bs!1540907 (and d!1947358 d!1947310)))

(assert (=> bs!1540907 (= lambda!339483 lambda!339478)))

(declare-fun bs!1540908 () Bool)

(assert (= bs!1540908 (and d!1947358 d!1947336)))

(assert (=> bs!1540908 (= lambda!339483 lambda!339480)))

(declare-fun bs!1540909 () Bool)

(assert (= bs!1540909 (and d!1947358 d!1947344)))

(assert (=> bs!1540909 (= lambda!339483 lambda!339481)))

(assert (=> d!1947358 true))

(assert (=> d!1947358 (= (derivationStepZipper!2115 ((_ map or) lt!2343847 lt!2343840) (head!12806 (t!378272 s!2326))) (flatMap!1654 ((_ map or) lt!2343847 lt!2343840) lambda!339483))))

(declare-fun bs!1540910 () Bool)

(assert (= bs!1540910 d!1947358))

(declare-fun m!7042040 () Bool)

(assert (=> bs!1540910 m!7042040))

(assert (=> b!6211379 d!1947358))

(assert (=> b!6211379 d!1947312))

(assert (=> b!6211379 d!1947314))

(assert (=> b!6211682 d!1947052))

(assert (=> d!1947040 d!1947322))

(declare-fun d!1947360 () Bool)

(assert (=> d!1947360 (= (isEmptyExpr!1559 lt!2343936) ((_ is EmptyExpr!16149) lt!2343936))))

(assert (=> b!6211686 d!1947360))

(assert (=> d!1946996 d!1947322))

(assert (=> b!6211653 d!1947338))

(assert (=> b!6211653 d!1947340))

(declare-fun d!1947362 () Bool)

(assert (=> d!1947362 (= (Exists!3219 (ite c!1121802 lambda!339437 lambda!339438)) (choose!46159 (ite c!1121802 lambda!339437 lambda!339438)))))

(declare-fun bs!1540911 () Bool)

(assert (= bs!1540911 d!1947362))

(declare-fun m!7042042 () Bool)

(assert (=> bs!1540911 m!7042042))

(assert (=> bm!520636 d!1947362))

(declare-fun d!1947364 () Bool)

(assert (=> d!1947364 true))

(assert (=> d!1947364 true))

(declare-fun res!2568444 () Bool)

(assert (=> d!1947364 (= (choose!46159 lambda!339382) res!2568444)))

(assert (=> d!1947010 d!1947364))

(declare-fun b!6212386 () Bool)

(declare-fun e!3782176 () (InoxSet Context!11066))

(declare-fun call!520771 () (InoxSet Context!11066))

(declare-fun call!520776 () (InoxSet Context!11066))

(assert (=> b!6212386 (= e!3782176 ((_ map or) call!520771 call!520776))))

(declare-fun call!520772 () List!64746)

(declare-fun bm!520766 () Bool)

(declare-fun c!1121987 () Bool)

(assert (=> bm!520766 (= call!520771 (derivationStepZipperDown!1397 (ite c!1121987 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343))))) (ite c!1121987 (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343)))) (Context!11067 call!520772)) (h!71072 s!2326)))))

(declare-fun d!1947366 () Bool)

(declare-fun c!1121988 () Bool)

(assert (=> d!1947366 (= c!1121988 (and ((_ is ElementMatch!16149) (h!71070 (exprs!6033 (h!71071 zl!343)))) (= (c!1121618 (h!71070 (exprs!6033 (h!71071 zl!343)))) (h!71072 s!2326))))))

(declare-fun e!3782175 () (InoxSet Context!11066))

(assert (=> d!1947366 (= (derivationStepZipperDown!1397 (h!71070 (exprs!6033 (h!71071 zl!343))) (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343)))) (h!71072 s!2326)) e!3782175)))

(declare-fun b!6212387 () Bool)

(assert (=> b!6212387 (= e!3782175 (store ((as const (Array Context!11066 Bool)) false) (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343)))) true))))

(declare-fun b!6212388 () Bool)

(declare-fun e!3782177 () (InoxSet Context!11066))

(assert (=> b!6212388 (= e!3782177 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212389 () Bool)

(declare-fun e!3782173 () (InoxSet Context!11066))

(assert (=> b!6212389 (= e!3782175 e!3782173)))

(assert (=> b!6212389 (= c!1121987 ((_ is Union!16149) (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun bm!520767 () Bool)

(declare-fun call!520775 () (InoxSet Context!11066))

(assert (=> bm!520767 (= call!520775 call!520776)))

(declare-fun b!6212390 () Bool)

(declare-fun e!3782178 () (InoxSet Context!11066))

(assert (=> b!6212390 (= e!3782178 call!520775)))

(declare-fun c!1121990 () Bool)

(declare-fun bm!520768 () Bool)

(declare-fun c!1121991 () Bool)

(assert (=> bm!520768 (= call!520772 ($colon$colon!2018 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343))))) (ite (or c!1121990 c!1121991) (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (h!71070 (exprs!6033 (h!71071 zl!343))))))))

(declare-fun b!6212391 () Bool)

(assert (=> b!6212391 (= e!3782176 e!3782178)))

(assert (=> b!6212391 (= c!1121991 ((_ is Concat!24994) (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun bm!520769 () Bool)

(declare-fun call!520773 () (InoxSet Context!11066))

(assert (=> bm!520769 (= call!520776 call!520773)))

(declare-fun b!6212392 () Bool)

(declare-fun e!3782174 () Bool)

(assert (=> b!6212392 (= e!3782174 (nullable!6142 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343))))))))

(declare-fun b!6212393 () Bool)

(assert (=> b!6212393 (= c!1121990 e!3782174)))

(declare-fun res!2568445 () Bool)

(assert (=> b!6212393 (=> (not res!2568445) (not e!3782174))))

(assert (=> b!6212393 (= res!2568445 ((_ is Concat!24994) (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(assert (=> b!6212393 (= e!3782173 e!3782176)))

(declare-fun bm!520770 () Bool)

(declare-fun call!520774 () List!64746)

(assert (=> bm!520770 (= call!520774 call!520772)))

(declare-fun b!6212394 () Bool)

(assert (=> b!6212394 (= e!3782173 ((_ map or) call!520771 call!520773))))

(declare-fun bm!520771 () Bool)

(assert (=> bm!520771 (= call!520773 (derivationStepZipperDown!1397 (ite c!1121987 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121990 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121991 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343))))))) (ite (or c!1121987 c!1121990) (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343)))) (Context!11067 call!520774)) (h!71072 s!2326)))))

(declare-fun b!6212395 () Bool)

(assert (=> b!6212395 (= e!3782177 call!520775)))

(declare-fun b!6212396 () Bool)

(declare-fun c!1121989 () Bool)

(assert (=> b!6212396 (= c!1121989 ((_ is Star!16149) (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(assert (=> b!6212396 (= e!3782178 e!3782177)))

(assert (= (and d!1947366 c!1121988) b!6212387))

(assert (= (and d!1947366 (not c!1121988)) b!6212389))

(assert (= (and b!6212389 c!1121987) b!6212394))

(assert (= (and b!6212389 (not c!1121987)) b!6212393))

(assert (= (and b!6212393 res!2568445) b!6212392))

(assert (= (and b!6212393 c!1121990) b!6212386))

(assert (= (and b!6212393 (not c!1121990)) b!6212391))

(assert (= (and b!6212391 c!1121991) b!6212390))

(assert (= (and b!6212391 (not c!1121991)) b!6212396))

(assert (= (and b!6212396 c!1121989) b!6212395))

(assert (= (and b!6212396 (not c!1121989)) b!6212388))

(assert (= (or b!6212390 b!6212395) bm!520770))

(assert (= (or b!6212390 b!6212395) bm!520767))

(assert (= (or b!6212386 bm!520770) bm!520768))

(assert (= (or b!6212386 bm!520767) bm!520769))

(assert (= (or b!6212394 bm!520769) bm!520771))

(assert (= (or b!6212394 b!6212386) bm!520766))

(declare-fun m!7042044 () Bool)

(assert (=> b!6212387 m!7042044))

(assert (=> b!6212392 m!7041324))

(declare-fun m!7042046 () Bool)

(assert (=> bm!520771 m!7042046))

(declare-fun m!7042048 () Bool)

(assert (=> bm!520766 m!7042048))

(declare-fun m!7042050 () Bool)

(assert (=> bm!520768 m!7042050))

(assert (=> bm!520620 d!1947366))

(declare-fun d!1947368 () Bool)

(assert (=> d!1947368 (= (nullable!6142 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (nullableFct!2098 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))))))

(declare-fun bs!1540912 () Bool)

(assert (= bs!1540912 d!1947368))

(declare-fun m!7042052 () Bool)

(assert (=> bs!1540912 m!7042052))

(assert (=> b!6211475 d!1947368))

(declare-fun d!1947370 () Bool)

(assert (=> d!1947370 (= (isDefined!12743 lt!2343905) (not (isEmpty!36627 lt!2343905)))))

(declare-fun bs!1540913 () Bool)

(assert (= bs!1540913 d!1947370))

(declare-fun m!7042054 () Bool)

(assert (=> bs!1540913 m!7042054))

(assert (=> d!1947008 d!1947370))

(declare-fun b!6212397 () Bool)

(declare-fun res!2568450 () Bool)

(declare-fun e!3782179 () Bool)

(assert (=> b!6212397 (=> (not res!2568450) (not e!3782179))))

(declare-fun call!520777 () Bool)

(assert (=> b!6212397 (= res!2568450 (not call!520777))))

(declare-fun b!6212398 () Bool)

(declare-fun e!3782182 () Bool)

(declare-fun e!3782180 () Bool)

(assert (=> b!6212398 (= e!3782182 e!3782180)))

(declare-fun c!1121994 () Bool)

(assert (=> b!6212398 (= c!1121994 ((_ is EmptyLang!16149) (regOne!32810 r!7292)))))

(declare-fun b!6212399 () Bool)

(declare-fun e!3782181 () Bool)

(declare-fun e!3782185 () Bool)

(assert (=> b!6212399 (= e!3782181 e!3782185)))

(declare-fun res!2568449 () Bool)

(assert (=> b!6212399 (=> res!2568449 e!3782185)))

(assert (=> b!6212399 (= res!2568449 call!520777)))

(declare-fun bm!520772 () Bool)

(assert (=> bm!520772 (= call!520777 (isEmpty!36626 Nil!64624))))

(declare-fun d!1947372 () Bool)

(assert (=> d!1947372 e!3782182))

(declare-fun c!1121992 () Bool)

(assert (=> d!1947372 (= c!1121992 ((_ is EmptyExpr!16149) (regOne!32810 r!7292)))))

(declare-fun lt!2343960 () Bool)

(declare-fun e!3782183 () Bool)

(assert (=> d!1947372 (= lt!2343960 e!3782183)))

(declare-fun c!1121993 () Bool)

(assert (=> d!1947372 (= c!1121993 (isEmpty!36626 Nil!64624))))

(assert (=> d!1947372 (validRegex!7885 (regOne!32810 r!7292))))

(assert (=> d!1947372 (= (matchR!8332 (regOne!32810 r!7292) Nil!64624) lt!2343960)))

(declare-fun b!6212400 () Bool)

(assert (=> b!6212400 (= e!3782185 (not (= (head!12806 Nil!64624) (c!1121618 (regOne!32810 r!7292)))))))

(declare-fun b!6212401 () Bool)

(assert (=> b!6212401 (= e!3782182 (= lt!2343960 call!520777))))

(declare-fun b!6212402 () Bool)

(assert (=> b!6212402 (= e!3782179 (= (head!12806 Nil!64624) (c!1121618 (regOne!32810 r!7292))))))

(declare-fun b!6212403 () Bool)

(assert (=> b!6212403 (= e!3782180 (not lt!2343960))))

(declare-fun b!6212404 () Bool)

(declare-fun res!2568453 () Bool)

(declare-fun e!3782184 () Bool)

(assert (=> b!6212404 (=> res!2568453 e!3782184)))

(assert (=> b!6212404 (= res!2568453 (not ((_ is ElementMatch!16149) (regOne!32810 r!7292))))))

(assert (=> b!6212404 (= e!3782180 e!3782184)))

(declare-fun b!6212405 () Bool)

(assert (=> b!6212405 (= e!3782183 (nullable!6142 (regOne!32810 r!7292)))))

(declare-fun b!6212406 () Bool)

(declare-fun res!2568446 () Bool)

(assert (=> b!6212406 (=> (not res!2568446) (not e!3782179))))

(assert (=> b!6212406 (= res!2568446 (isEmpty!36626 (tail!11891 Nil!64624)))))

(declare-fun b!6212407 () Bool)

(declare-fun res!2568451 () Bool)

(assert (=> b!6212407 (=> res!2568451 e!3782185)))

(assert (=> b!6212407 (= res!2568451 (not (isEmpty!36626 (tail!11891 Nil!64624))))))

(declare-fun b!6212408 () Bool)

(assert (=> b!6212408 (= e!3782184 e!3782181)))

(declare-fun res!2568447 () Bool)

(assert (=> b!6212408 (=> (not res!2568447) (not e!3782181))))

(assert (=> b!6212408 (= res!2568447 (not lt!2343960))))

(declare-fun b!6212409 () Bool)

(assert (=> b!6212409 (= e!3782183 (matchR!8332 (derivativeStep!4862 (regOne!32810 r!7292) (head!12806 Nil!64624)) (tail!11891 Nil!64624)))))

(declare-fun b!6212410 () Bool)

(declare-fun res!2568452 () Bool)

(assert (=> b!6212410 (=> res!2568452 e!3782184)))

(assert (=> b!6212410 (= res!2568452 e!3782179)))

(declare-fun res!2568448 () Bool)

(assert (=> b!6212410 (=> (not res!2568448) (not e!3782179))))

(assert (=> b!6212410 (= res!2568448 lt!2343960)))

(assert (= (and d!1947372 c!1121993) b!6212405))

(assert (= (and d!1947372 (not c!1121993)) b!6212409))

(assert (= (and d!1947372 c!1121992) b!6212401))

(assert (= (and d!1947372 (not c!1121992)) b!6212398))

(assert (= (and b!6212398 c!1121994) b!6212403))

(assert (= (and b!6212398 (not c!1121994)) b!6212404))

(assert (= (and b!6212404 (not res!2568453)) b!6212410))

(assert (= (and b!6212410 res!2568448) b!6212397))

(assert (= (and b!6212397 res!2568450) b!6212406))

(assert (= (and b!6212406 res!2568446) b!6212402))

(assert (= (and b!6212410 (not res!2568452)) b!6212408))

(assert (= (and b!6212408 res!2568447) b!6212399))

(assert (= (and b!6212399 (not res!2568449)) b!6212407))

(assert (= (and b!6212407 (not res!2568451)) b!6212400))

(assert (= (or b!6212401 b!6212397 b!6212399) bm!520772))

(declare-fun m!7042056 () Bool)

(assert (=> b!6212407 m!7042056))

(assert (=> b!6212407 m!7042056))

(declare-fun m!7042058 () Bool)

(assert (=> b!6212407 m!7042058))

(declare-fun m!7042060 () Bool)

(assert (=> b!6212409 m!7042060))

(assert (=> b!6212409 m!7042060))

(declare-fun m!7042062 () Bool)

(assert (=> b!6212409 m!7042062))

(assert (=> b!6212409 m!7042056))

(assert (=> b!6212409 m!7042062))

(assert (=> b!6212409 m!7042056))

(declare-fun m!7042064 () Bool)

(assert (=> b!6212409 m!7042064))

(assert (=> b!6212402 m!7042060))

(assert (=> b!6212400 m!7042060))

(declare-fun m!7042066 () Bool)

(assert (=> b!6212405 m!7042066))

(declare-fun m!7042068 () Bool)

(assert (=> bm!520772 m!7042068))

(assert (=> d!1947372 m!7042068))

(assert (=> d!1947372 m!7041290))

(assert (=> b!6212406 m!7042056))

(assert (=> b!6212406 m!7042056))

(assert (=> b!6212406 m!7042058))

(assert (=> d!1947008 d!1947372))

(declare-fun b!6212411 () Bool)

(declare-fun res!2568454 () Bool)

(declare-fun e!3782188 () Bool)

(assert (=> b!6212411 (=> res!2568454 e!3782188)))

(assert (=> b!6212411 (= res!2568454 (not ((_ is Concat!24994) (regOne!32810 r!7292))))))

(declare-fun e!3782187 () Bool)

(assert (=> b!6212411 (= e!3782187 e!3782188)))

(declare-fun b!6212412 () Bool)

(declare-fun res!2568455 () Bool)

(declare-fun e!3782192 () Bool)

(assert (=> b!6212412 (=> (not res!2568455) (not e!3782192))))

(declare-fun call!520778 () Bool)

(assert (=> b!6212412 (= res!2568455 call!520778)))

(assert (=> b!6212412 (= e!3782187 e!3782192)))

(declare-fun b!6212413 () Bool)

(declare-fun call!520780 () Bool)

(assert (=> b!6212413 (= e!3782192 call!520780)))

(declare-fun d!1947374 () Bool)

(declare-fun res!2568456 () Bool)

(declare-fun e!3782186 () Bool)

(assert (=> d!1947374 (=> res!2568456 e!3782186)))

(assert (=> d!1947374 (= res!2568456 ((_ is ElementMatch!16149) (regOne!32810 r!7292)))))

(assert (=> d!1947374 (= (validRegex!7885 (regOne!32810 r!7292)) e!3782186)))

(declare-fun b!6212414 () Bool)

(declare-fun e!3782190 () Bool)

(assert (=> b!6212414 (= e!3782188 e!3782190)))

(declare-fun res!2568458 () Bool)

(assert (=> b!6212414 (=> (not res!2568458) (not e!3782190))))

(assert (=> b!6212414 (= res!2568458 call!520778)))

(declare-fun b!6212415 () Bool)

(assert (=> b!6212415 (= e!3782190 call!520780)))

(declare-fun bm!520773 () Bool)

(declare-fun call!520779 () Bool)

(assert (=> bm!520773 (= call!520778 call!520779)))

(declare-fun bm!520774 () Bool)

(declare-fun c!1121996 () Bool)

(assert (=> bm!520774 (= call!520780 (validRegex!7885 (ite c!1121996 (regTwo!32811 (regOne!32810 r!7292)) (regTwo!32810 (regOne!32810 r!7292)))))))

(declare-fun b!6212416 () Bool)

(declare-fun e!3782191 () Bool)

(assert (=> b!6212416 (= e!3782191 e!3782187)))

(assert (=> b!6212416 (= c!1121996 ((_ is Union!16149) (regOne!32810 r!7292)))))

(declare-fun bm!520775 () Bool)

(declare-fun c!1121995 () Bool)

(assert (=> bm!520775 (= call!520779 (validRegex!7885 (ite c!1121995 (reg!16478 (regOne!32810 r!7292)) (ite c!1121996 (regOne!32811 (regOne!32810 r!7292)) (regOne!32810 (regOne!32810 r!7292))))))))

(declare-fun b!6212417 () Bool)

(declare-fun e!3782189 () Bool)

(assert (=> b!6212417 (= e!3782189 call!520779)))

(declare-fun b!6212418 () Bool)

(assert (=> b!6212418 (= e!3782186 e!3782191)))

(assert (=> b!6212418 (= c!1121995 ((_ is Star!16149) (regOne!32810 r!7292)))))

(declare-fun b!6212419 () Bool)

(assert (=> b!6212419 (= e!3782191 e!3782189)))

(declare-fun res!2568457 () Bool)

(assert (=> b!6212419 (= res!2568457 (not (nullable!6142 (reg!16478 (regOne!32810 r!7292)))))))

(assert (=> b!6212419 (=> (not res!2568457) (not e!3782189))))

(assert (= (and d!1947374 (not res!2568456)) b!6212418))

(assert (= (and b!6212418 c!1121995) b!6212419))

(assert (= (and b!6212418 (not c!1121995)) b!6212416))

(assert (= (and b!6212419 res!2568457) b!6212417))

(assert (= (and b!6212416 c!1121996) b!6212412))

(assert (= (and b!6212416 (not c!1121996)) b!6212411))

(assert (= (and b!6212412 res!2568455) b!6212413))

(assert (= (and b!6212411 (not res!2568454)) b!6212414))

(assert (= (and b!6212414 res!2568458) b!6212415))

(assert (= (or b!6212413 b!6212415) bm!520774))

(assert (= (or b!6212412 b!6212414) bm!520773))

(assert (= (or b!6212417 bm!520773) bm!520775))

(declare-fun m!7042070 () Bool)

(assert (=> bm!520774 m!7042070))

(declare-fun m!7042072 () Bool)

(assert (=> bm!520775 m!7042072))

(declare-fun m!7042074 () Bool)

(assert (=> b!6212419 m!7042074))

(assert (=> d!1947008 d!1947374))

(declare-fun d!1947376 () Bool)

(assert (=> d!1947376 (= (nullable!6142 (regOne!32810 (regOne!32810 (regOne!32810 r!7292)))) (nullableFct!2098 (regOne!32810 (regOne!32810 (regOne!32810 r!7292)))))))

(declare-fun bs!1540914 () Bool)

(assert (= bs!1540914 d!1947376))

(declare-fun m!7042076 () Bool)

(assert (=> bs!1540914 m!7042076))

(assert (=> b!6211419 d!1947376))

(declare-fun d!1947378 () Bool)

(assert (=> d!1947378 (= (isUnion!998 lt!2343921) ((_ is Union!16149) lt!2343921))))

(assert (=> b!6211532 d!1947378))

(assert (=> d!1947058 d!1947056))

(assert (=> d!1947058 d!1947054))

(declare-fun d!1947380 () Bool)

(assert (=> d!1947380 (= (matchR!8332 r!7292 s!2326) (matchRSpec!3250 r!7292 s!2326))))

(assert (=> d!1947380 true))

(declare-fun _$88!4817 () Unit!157927)

(assert (=> d!1947380 (= (choose!46165 r!7292 s!2326) _$88!4817)))

(declare-fun bs!1540915 () Bool)

(assert (= bs!1540915 d!1947380))

(assert (=> bs!1540915 m!7040954))

(assert (=> bs!1540915 m!7040952))

(assert (=> d!1947058 d!1947380))

(assert (=> d!1947058 d!1947048))

(declare-fun d!1947382 () Bool)

(declare-fun res!2568459 () Bool)

(declare-fun e!3782193 () Bool)

(assert (=> d!1947382 (=> res!2568459 e!3782193)))

(assert (=> d!1947382 (= res!2568459 ((_ is Nil!64622) (exprs!6033 (h!71071 zl!343))))))

(assert (=> d!1947382 (= (forall!15263 (exprs!6033 (h!71071 zl!343)) lambda!339417) e!3782193)))

(declare-fun b!6212420 () Bool)

(declare-fun e!3782194 () Bool)

(assert (=> b!6212420 (= e!3782193 e!3782194)))

(declare-fun res!2568460 () Bool)

(assert (=> b!6212420 (=> (not res!2568460) (not e!3782194))))

(assert (=> b!6212420 (= res!2568460 (dynLambda!25493 lambda!339417 (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun b!6212421 () Bool)

(assert (=> b!6212421 (= e!3782194 (forall!15263 (t!378270 (exprs!6033 (h!71071 zl!343))) lambda!339417))))

(assert (= (and d!1947382 (not res!2568459)) b!6212420))

(assert (= (and b!6212420 res!2568460) b!6212421))

(declare-fun b_lambda!236213 () Bool)

(assert (=> (not b_lambda!236213) (not b!6212420)))

(declare-fun m!7042078 () Bool)

(assert (=> b!6212420 m!7042078))

(declare-fun m!7042080 () Bool)

(assert (=> b!6212421 m!7042080))

(assert (=> d!1947006 d!1947382))

(declare-fun b!6212422 () Bool)

(declare-fun e!3782198 () (InoxSet Context!11066))

(declare-fun call!520781 () (InoxSet Context!11066))

(declare-fun call!520786 () (InoxSet Context!11066))

(assert (=> b!6212422 (= e!3782198 ((_ map or) call!520781 call!520786))))

(declare-fun call!520782 () List!64746)

(declare-fun c!1121997 () Bool)

(declare-fun bm!520776 () Bool)

(assert (=> bm!520776 (= call!520781 (derivationStepZipperDown!1397 (ite c!1121997 (regOne!32811 (h!71070 (exprs!6033 lt!2343834))) (regOne!32810 (h!71070 (exprs!6033 lt!2343834)))) (ite c!1121997 (Context!11067 (t!378270 (exprs!6033 lt!2343834))) (Context!11067 call!520782)) (h!71072 s!2326)))))

(declare-fun d!1947384 () Bool)

(declare-fun c!1121998 () Bool)

(assert (=> d!1947384 (= c!1121998 (and ((_ is ElementMatch!16149) (h!71070 (exprs!6033 lt!2343834))) (= (c!1121618 (h!71070 (exprs!6033 lt!2343834))) (h!71072 s!2326))))))

(declare-fun e!3782197 () (InoxSet Context!11066))

(assert (=> d!1947384 (= (derivationStepZipperDown!1397 (h!71070 (exprs!6033 lt!2343834)) (Context!11067 (t!378270 (exprs!6033 lt!2343834))) (h!71072 s!2326)) e!3782197)))

(declare-fun b!6212423 () Bool)

(assert (=> b!6212423 (= e!3782197 (store ((as const (Array Context!11066 Bool)) false) (Context!11067 (t!378270 (exprs!6033 lt!2343834))) true))))

(declare-fun b!6212424 () Bool)

(declare-fun e!3782199 () (InoxSet Context!11066))

(assert (=> b!6212424 (= e!3782199 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212425 () Bool)

(declare-fun e!3782195 () (InoxSet Context!11066))

(assert (=> b!6212425 (= e!3782197 e!3782195)))

(assert (=> b!6212425 (= c!1121997 ((_ is Union!16149) (h!71070 (exprs!6033 lt!2343834))))))

(declare-fun bm!520777 () Bool)

(declare-fun call!520785 () (InoxSet Context!11066))

(assert (=> bm!520777 (= call!520785 call!520786)))

(declare-fun b!6212426 () Bool)

(declare-fun e!3782200 () (InoxSet Context!11066))

(assert (=> b!6212426 (= e!3782200 call!520785)))

(declare-fun c!1122000 () Bool)

(declare-fun c!1122001 () Bool)

(declare-fun bm!520778 () Bool)

(assert (=> bm!520778 (= call!520782 ($colon$colon!2018 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 lt!2343834)))) (ite (or c!1122000 c!1122001) (regTwo!32810 (h!71070 (exprs!6033 lt!2343834))) (h!71070 (exprs!6033 lt!2343834)))))))

(declare-fun b!6212427 () Bool)

(assert (=> b!6212427 (= e!3782198 e!3782200)))

(assert (=> b!6212427 (= c!1122001 ((_ is Concat!24994) (h!71070 (exprs!6033 lt!2343834))))))

(declare-fun bm!520779 () Bool)

(declare-fun call!520783 () (InoxSet Context!11066))

(assert (=> bm!520779 (= call!520786 call!520783)))

(declare-fun b!6212428 () Bool)

(declare-fun e!3782196 () Bool)

(assert (=> b!6212428 (= e!3782196 (nullable!6142 (regOne!32810 (h!71070 (exprs!6033 lt!2343834)))))))

(declare-fun b!6212429 () Bool)

(assert (=> b!6212429 (= c!1122000 e!3782196)))

(declare-fun res!2568461 () Bool)

(assert (=> b!6212429 (=> (not res!2568461) (not e!3782196))))

(assert (=> b!6212429 (= res!2568461 ((_ is Concat!24994) (h!71070 (exprs!6033 lt!2343834))))))

(assert (=> b!6212429 (= e!3782195 e!3782198)))

(declare-fun bm!520780 () Bool)

(declare-fun call!520784 () List!64746)

(assert (=> bm!520780 (= call!520784 call!520782)))

(declare-fun b!6212430 () Bool)

(assert (=> b!6212430 (= e!3782195 ((_ map or) call!520781 call!520783))))

(declare-fun bm!520781 () Bool)

(assert (=> bm!520781 (= call!520783 (derivationStepZipperDown!1397 (ite c!1121997 (regTwo!32811 (h!71070 (exprs!6033 lt!2343834))) (ite c!1122000 (regTwo!32810 (h!71070 (exprs!6033 lt!2343834))) (ite c!1122001 (regOne!32810 (h!71070 (exprs!6033 lt!2343834))) (reg!16478 (h!71070 (exprs!6033 lt!2343834)))))) (ite (or c!1121997 c!1122000) (Context!11067 (t!378270 (exprs!6033 lt!2343834))) (Context!11067 call!520784)) (h!71072 s!2326)))))

(declare-fun b!6212431 () Bool)

(assert (=> b!6212431 (= e!3782199 call!520785)))

(declare-fun b!6212432 () Bool)

(declare-fun c!1121999 () Bool)

(assert (=> b!6212432 (= c!1121999 ((_ is Star!16149) (h!71070 (exprs!6033 lt!2343834))))))

(assert (=> b!6212432 (= e!3782200 e!3782199)))

(assert (= (and d!1947384 c!1121998) b!6212423))

(assert (= (and d!1947384 (not c!1121998)) b!6212425))

(assert (= (and b!6212425 c!1121997) b!6212430))

(assert (= (and b!6212425 (not c!1121997)) b!6212429))

(assert (= (and b!6212429 res!2568461) b!6212428))

(assert (= (and b!6212429 c!1122000) b!6212422))

(assert (= (and b!6212429 (not c!1122000)) b!6212427))

(assert (= (and b!6212427 c!1122001) b!6212426))

(assert (= (and b!6212427 (not c!1122001)) b!6212432))

(assert (= (and b!6212432 c!1121999) b!6212431))

(assert (= (and b!6212432 (not c!1121999)) b!6212424))

(assert (= (or b!6212426 b!6212431) bm!520780))

(assert (= (or b!6212426 b!6212431) bm!520777))

(assert (= (or b!6212422 bm!520780) bm!520778))

(assert (= (or b!6212422 bm!520777) bm!520779))

(assert (= (or b!6212430 bm!520779) bm!520781))

(assert (= (or b!6212430 b!6212422) bm!520776))

(declare-fun m!7042082 () Bool)

(assert (=> b!6212423 m!7042082))

(declare-fun m!7042084 () Bool)

(assert (=> b!6212428 m!7042084))

(declare-fun m!7042086 () Bool)

(assert (=> bm!520781 m!7042086))

(declare-fun m!7042088 () Bool)

(assert (=> bm!520776 m!7042088))

(declare-fun m!7042090 () Bool)

(assert (=> bm!520778 m!7042090))

(assert (=> bm!520621 d!1947384))

(declare-fun b!6212433 () Bool)

(declare-fun e!3782204 () (InoxSet Context!11066))

(declare-fun call!520787 () (InoxSet Context!11066))

(declare-fun call!520792 () (InoxSet Context!11066))

(assert (=> b!6212433 (= e!3782204 ((_ map or) call!520787 call!520792))))

(declare-fun bm!520782 () Bool)

(declare-fun c!1122002 () Bool)

(declare-fun call!520788 () List!64746)

(assert (=> bm!520782 (= call!520787 (derivationStepZipperDown!1397 (ite c!1122002 (regOne!32811 (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292))))))) (regOne!32810 (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292)))))))) (ite c!1122002 (ite (or c!1121742 c!1121745) lt!2343849 (Context!11067 call!520613)) (Context!11067 call!520788)) (h!71072 s!2326)))))

(declare-fun d!1947386 () Bool)

(declare-fun c!1122003 () Bool)

(assert (=> d!1947386 (= c!1122003 (and ((_ is ElementMatch!16149) (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292))))))) (= (c!1121618 (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292))))))) (h!71072 s!2326))))))

(declare-fun e!3782203 () (InoxSet Context!11066))

(assert (=> d!1947386 (= (derivationStepZipperDown!1397 (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292)))))) (ite (or c!1121742 c!1121745) lt!2343849 (Context!11067 call!520613)) (h!71072 s!2326)) e!3782203)))

(declare-fun b!6212434 () Bool)

(assert (=> b!6212434 (= e!3782203 (store ((as const (Array Context!11066 Bool)) false) (ite (or c!1121742 c!1121745) lt!2343849 (Context!11067 call!520613)) true))))

(declare-fun b!6212435 () Bool)

(declare-fun e!3782205 () (InoxSet Context!11066))

(assert (=> b!6212435 (= e!3782205 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212436 () Bool)

(declare-fun e!3782201 () (InoxSet Context!11066))

(assert (=> b!6212436 (= e!3782203 e!3782201)))

(assert (=> b!6212436 (= c!1122002 ((_ is Union!16149) (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292))))))))))

(declare-fun bm!520783 () Bool)

(declare-fun call!520791 () (InoxSet Context!11066))

(assert (=> bm!520783 (= call!520791 call!520792)))

(declare-fun b!6212437 () Bool)

(declare-fun e!3782206 () (InoxSet Context!11066))

(assert (=> b!6212437 (= e!3782206 call!520791)))

(declare-fun c!1122005 () Bool)

(declare-fun c!1122006 () Bool)

(declare-fun bm!520784 () Bool)

(assert (=> bm!520784 (= call!520788 ($colon$colon!2018 (exprs!6033 (ite (or c!1121742 c!1121745) lt!2343849 (Context!11067 call!520613))) (ite (or c!1122005 c!1122006) (regTwo!32810 (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292))))))) (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292)))))))))))

(declare-fun b!6212438 () Bool)

(assert (=> b!6212438 (= e!3782204 e!3782206)))

(assert (=> b!6212438 (= c!1122006 ((_ is Concat!24994) (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292))))))))))

(declare-fun bm!520785 () Bool)

(declare-fun call!520789 () (InoxSet Context!11066))

(assert (=> bm!520785 (= call!520792 call!520789)))

(declare-fun e!3782202 () Bool)

(declare-fun b!6212439 () Bool)

(assert (=> b!6212439 (= e!3782202 (nullable!6142 (regOne!32810 (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292)))))))))))

(declare-fun b!6212440 () Bool)

(assert (=> b!6212440 (= c!1122005 e!3782202)))

(declare-fun res!2568462 () Bool)

(assert (=> b!6212440 (=> (not res!2568462) (not e!3782202))))

(assert (=> b!6212440 (= res!2568462 ((_ is Concat!24994) (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292))))))))))

(assert (=> b!6212440 (= e!3782201 e!3782204)))

(declare-fun bm!520786 () Bool)

(declare-fun call!520790 () List!64746)

(assert (=> bm!520786 (= call!520790 call!520788)))

(declare-fun b!6212441 () Bool)

(assert (=> b!6212441 (= e!3782201 ((_ map or) call!520787 call!520789))))

(declare-fun bm!520787 () Bool)

(assert (=> bm!520787 (= call!520789 (derivationStepZipperDown!1397 (ite c!1122002 (regTwo!32811 (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292))))))) (ite c!1122005 (regTwo!32810 (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292))))))) (ite c!1122006 (regOne!32810 (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292))))))) (reg!16478 (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292)))))))))) (ite (or c!1122002 c!1122005) (ite (or c!1121742 c!1121745) lt!2343849 (Context!11067 call!520613)) (Context!11067 call!520790)) (h!71072 s!2326)))))

(declare-fun b!6212442 () Bool)

(assert (=> b!6212442 (= e!3782205 call!520791)))

(declare-fun b!6212443 () Bool)

(declare-fun c!1122004 () Bool)

(assert (=> b!6212443 (= c!1122004 ((_ is Star!16149) (ite c!1121742 (regTwo!32811 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121745 (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (ite c!1121746 (regOne!32810 (regOne!32810 (regOne!32810 r!7292))) (reg!16478 (regOne!32810 (regOne!32810 r!7292))))))))))

(assert (=> b!6212443 (= e!3782206 e!3782205)))

(assert (= (and d!1947386 c!1122003) b!6212434))

(assert (= (and d!1947386 (not c!1122003)) b!6212436))

(assert (= (and b!6212436 c!1122002) b!6212441))

(assert (= (and b!6212436 (not c!1122002)) b!6212440))

(assert (= (and b!6212440 res!2568462) b!6212439))

(assert (= (and b!6212440 c!1122005) b!6212433))

(assert (= (and b!6212440 (not c!1122005)) b!6212438))

(assert (= (and b!6212438 c!1122006) b!6212437))

(assert (= (and b!6212438 (not c!1122006)) b!6212443))

(assert (= (and b!6212443 c!1122004) b!6212442))

(assert (= (and b!6212443 (not c!1122004)) b!6212435))

(assert (= (or b!6212437 b!6212442) bm!520786))

(assert (= (or b!6212437 b!6212442) bm!520783))

(assert (= (or b!6212433 bm!520786) bm!520784))

(assert (= (or b!6212433 bm!520783) bm!520785))

(assert (= (or b!6212441 bm!520785) bm!520787))

(assert (= (or b!6212441 b!6212433) bm!520782))

(declare-fun m!7042092 () Bool)

(assert (=> b!6212434 m!7042092))

(declare-fun m!7042094 () Bool)

(assert (=> b!6212439 m!7042094))

(declare-fun m!7042096 () Bool)

(assert (=> bm!520787 m!7042096))

(declare-fun m!7042098 () Bool)

(assert (=> bm!520782 m!7042098))

(declare-fun m!7042100 () Bool)

(assert (=> bm!520784 m!7042100))

(assert (=> bm!520610 d!1947386))

(declare-fun bs!1540916 () Bool)

(declare-fun d!1947388 () Bool)

(assert (= bs!1540916 (and d!1947388 d!1947348)))

(declare-fun lambda!339484 () Int)

(assert (=> bs!1540916 (= lambda!339484 lambda!339482)))

(declare-fun bs!1540917 () Bool)

(assert (= bs!1540917 (and d!1947388 d!1947044)))

(assert (=> bs!1540917 (= lambda!339484 lambda!339429)))

(declare-fun bs!1540918 () Bool)

(assert (= bs!1540918 (and d!1947388 d!1946998)))

(assert (=> bs!1540918 (= lambda!339484 lambda!339416)))

(declare-fun bs!1540919 () Bool)

(assert (= bs!1540919 (and d!1947388 d!1947062)))

(assert (=> bs!1540919 (= lambda!339484 lambda!339441)))

(declare-fun bs!1540920 () Bool)

(assert (= bs!1540920 (and d!1947388 d!1947326)))

(assert (=> bs!1540920 (= lambda!339484 lambda!339479)))

(declare-fun bs!1540921 () Bool)

(assert (= bs!1540921 (and d!1947388 d!1947046)))

(assert (=> bs!1540921 (= lambda!339484 lambda!339432)))

(declare-fun bs!1540922 () Bool)

(assert (= bs!1540922 (and d!1947388 d!1947006)))

(assert (=> bs!1540922 (= lambda!339484 lambda!339417)))

(declare-fun bs!1540923 () Bool)

(assert (= bs!1540923 (and d!1947388 d!1946990)))

(assert (=> bs!1540923 (= lambda!339484 lambda!339415)))

(declare-fun b!6212444 () Bool)

(declare-fun e!3782207 () Regex!16149)

(assert (=> b!6212444 (= e!3782207 (Union!16149 (h!71070 (t!378270 (unfocusZipperList!1570 zl!343))) (generalisedUnion!1993 (t!378270 (t!378270 (unfocusZipperList!1570 zl!343))))))))

(declare-fun b!6212445 () Bool)

(declare-fun e!3782211 () Bool)

(declare-fun e!3782209 () Bool)

(assert (=> b!6212445 (= e!3782211 e!3782209)))

(declare-fun c!1122008 () Bool)

(assert (=> b!6212445 (= c!1122008 (isEmpty!36622 (tail!11892 (t!378270 (unfocusZipperList!1570 zl!343)))))))

(declare-fun b!6212446 () Bool)

(assert (=> b!6212446 (= e!3782207 EmptyLang!16149)))

(declare-fun b!6212447 () Bool)

(declare-fun e!3782208 () Bool)

(assert (=> b!6212447 (= e!3782208 (isEmpty!36622 (t!378270 (t!378270 (unfocusZipperList!1570 zl!343)))))))

(declare-fun e!3782210 () Bool)

(assert (=> d!1947388 e!3782210))

(declare-fun res!2568463 () Bool)

(assert (=> d!1947388 (=> (not res!2568463) (not e!3782210))))

(declare-fun lt!2343961 () Regex!16149)

(assert (=> d!1947388 (= res!2568463 (validRegex!7885 lt!2343961))))

(declare-fun e!3782212 () Regex!16149)

(assert (=> d!1947388 (= lt!2343961 e!3782212)))

(declare-fun c!1122010 () Bool)

(assert (=> d!1947388 (= c!1122010 e!3782208)))

(declare-fun res!2568464 () Bool)

(assert (=> d!1947388 (=> (not res!2568464) (not e!3782208))))

(assert (=> d!1947388 (= res!2568464 ((_ is Cons!64622) (t!378270 (unfocusZipperList!1570 zl!343))))))

(assert (=> d!1947388 (forall!15263 (t!378270 (unfocusZipperList!1570 zl!343)) lambda!339484)))

(assert (=> d!1947388 (= (generalisedUnion!1993 (t!378270 (unfocusZipperList!1570 zl!343))) lt!2343961)))

(declare-fun b!6212448 () Bool)

(assert (=> b!6212448 (= e!3782212 (h!71070 (t!378270 (unfocusZipperList!1570 zl!343))))))

(declare-fun b!6212449 () Bool)

(assert (=> b!6212449 (= e!3782209 (isUnion!998 lt!2343961))))

(declare-fun b!6212450 () Bool)

(assert (=> b!6212450 (= e!3782211 (isEmptyLang!1568 lt!2343961))))

(declare-fun b!6212451 () Bool)

(assert (=> b!6212451 (= e!3782209 (= lt!2343961 (head!12807 (t!378270 (unfocusZipperList!1570 zl!343)))))))

(declare-fun b!6212452 () Bool)

(assert (=> b!6212452 (= e!3782210 e!3782211)))

(declare-fun c!1122007 () Bool)

(assert (=> b!6212452 (= c!1122007 (isEmpty!36622 (t!378270 (unfocusZipperList!1570 zl!343))))))

(declare-fun b!6212453 () Bool)

(assert (=> b!6212453 (= e!3782212 e!3782207)))

(declare-fun c!1122009 () Bool)

(assert (=> b!6212453 (= c!1122009 ((_ is Cons!64622) (t!378270 (unfocusZipperList!1570 zl!343))))))

(assert (= (and d!1947388 res!2568464) b!6212447))

(assert (= (and d!1947388 c!1122010) b!6212448))

(assert (= (and d!1947388 (not c!1122010)) b!6212453))

(assert (= (and b!6212453 c!1122009) b!6212444))

(assert (= (and b!6212453 (not c!1122009)) b!6212446))

(assert (= (and d!1947388 res!2568463) b!6212452))

(assert (= (and b!6212452 c!1122007) b!6212450))

(assert (= (and b!6212452 (not c!1122007)) b!6212445))

(assert (= (and b!6212445 c!1122008) b!6212451))

(assert (= (and b!6212445 (not c!1122008)) b!6212449))

(declare-fun m!7042102 () Bool)

(assert (=> b!6212451 m!7042102))

(declare-fun m!7042104 () Bool)

(assert (=> b!6212447 m!7042104))

(declare-fun m!7042106 () Bool)

(assert (=> b!6212445 m!7042106))

(assert (=> b!6212445 m!7042106))

(declare-fun m!7042108 () Bool)

(assert (=> b!6212445 m!7042108))

(assert (=> b!6212452 m!7041374))

(declare-fun m!7042110 () Bool)

(assert (=> b!6212444 m!7042110))

(declare-fun m!7042112 () Bool)

(assert (=> d!1947388 m!7042112))

(declare-fun m!7042114 () Bool)

(assert (=> d!1947388 m!7042114))

(declare-fun m!7042116 () Bool)

(assert (=> b!6212449 m!7042116))

(declare-fun m!7042118 () Bool)

(assert (=> b!6212450 m!7042118))

(assert (=> b!6211527 d!1947388))

(declare-fun d!1947390 () Bool)

(assert (=> d!1947390 (= (nullable!6142 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292)))) (nullableFct!2098 (regOne!32810 (regTwo!32810 (regOne!32810 r!7292)))))))

(declare-fun bs!1540924 () Bool)

(assert (= bs!1540924 d!1947390))

(declare-fun m!7042120 () Bool)

(assert (=> bs!1540924 m!7042120))

(assert (=> b!6211408 d!1947390))

(assert (=> d!1946992 d!1946996))

(assert (=> d!1946992 d!1946994))

(declare-fun d!1947392 () Bool)

(declare-fun e!3782215 () Bool)

(assert (=> d!1947392 (= (matchZipper!2161 ((_ map or) lt!2343847 lt!2343840) (t!378272 s!2326)) e!3782215)))

(declare-fun res!2568467 () Bool)

(assert (=> d!1947392 (=> res!2568467 e!3782215)))

(assert (=> d!1947392 (= res!2568467 (matchZipper!2161 lt!2343847 (t!378272 s!2326)))))

(assert (=> d!1947392 true))

(declare-fun _$48!1875 () Unit!157927)

(assert (=> d!1947392 (= (choose!46158 lt!2343847 lt!2343840 (t!378272 s!2326)) _$48!1875)))

(declare-fun b!6212456 () Bool)

(assert (=> b!6212456 (= e!3782215 (matchZipper!2161 lt!2343840 (t!378272 s!2326)))))

(assert (= (and d!1947392 (not res!2568467)) b!6212456))

(assert (=> d!1947392 m!7040928))

(assert (=> d!1947392 m!7040926))

(assert (=> b!6212456 m!7040916))

(assert (=> d!1946992 d!1947392))

(assert (=> b!6211375 d!1947050))

(declare-fun d!1947394 () Bool)

(assert (=> d!1947394 (= (isConcat!1082 lt!2343936) ((_ is Concat!24994) lt!2343936))))

(assert (=> b!6211683 d!1947394))

(declare-fun b!6212457 () Bool)

(declare-fun e!3782219 () (InoxSet Context!11066))

(declare-fun call!520793 () (InoxSet Context!11066))

(declare-fun call!520798 () (InoxSet Context!11066))

(assert (=> b!6212457 (= e!3782219 ((_ map or) call!520793 call!520798))))

(declare-fun c!1122011 () Bool)

(declare-fun bm!520788 () Bool)

(declare-fun call!520794 () List!64746)

(assert (=> bm!520788 (= call!520793 (derivationStepZipperDown!1397 (ite c!1122011 (regOne!32811 (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292))))) (regOne!32810 (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292)))))) (ite c!1122011 (ite c!1121742 lt!2343849 (Context!11067 call!520611)) (Context!11067 call!520794)) (h!71072 s!2326)))))

(declare-fun c!1122012 () Bool)

(declare-fun d!1947396 () Bool)

(assert (=> d!1947396 (= c!1122012 (and ((_ is ElementMatch!16149) (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292))))) (= (c!1121618 (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292))))) (h!71072 s!2326))))))

(declare-fun e!3782218 () (InoxSet Context!11066))

(assert (=> d!1947396 (= (derivationStepZipperDown!1397 (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292)))) (ite c!1121742 lt!2343849 (Context!11067 call!520611)) (h!71072 s!2326)) e!3782218)))

(declare-fun b!6212458 () Bool)

(assert (=> b!6212458 (= e!3782218 (store ((as const (Array Context!11066 Bool)) false) (ite c!1121742 lt!2343849 (Context!11067 call!520611)) true))))

(declare-fun b!6212459 () Bool)

(declare-fun e!3782220 () (InoxSet Context!11066))

(assert (=> b!6212459 (= e!3782220 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212460 () Bool)

(declare-fun e!3782216 () (InoxSet Context!11066))

(assert (=> b!6212460 (= e!3782218 e!3782216)))

(assert (=> b!6212460 (= c!1122011 ((_ is Union!16149) (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292))))))))

(declare-fun bm!520789 () Bool)

(declare-fun call!520797 () (InoxSet Context!11066))

(assert (=> bm!520789 (= call!520797 call!520798)))

(declare-fun b!6212461 () Bool)

(declare-fun e!3782221 () (InoxSet Context!11066))

(assert (=> b!6212461 (= e!3782221 call!520797)))

(declare-fun c!1122014 () Bool)

(declare-fun c!1122015 () Bool)

(declare-fun bm!520790 () Bool)

(assert (=> bm!520790 (= call!520794 ($colon$colon!2018 (exprs!6033 (ite c!1121742 lt!2343849 (Context!11067 call!520611))) (ite (or c!1122014 c!1122015) (regTwo!32810 (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292))))) (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292)))))))))

(declare-fun b!6212462 () Bool)

(assert (=> b!6212462 (= e!3782219 e!3782221)))

(assert (=> b!6212462 (= c!1122015 ((_ is Concat!24994) (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292))))))))

(declare-fun bm!520791 () Bool)

(declare-fun call!520795 () (InoxSet Context!11066))

(assert (=> bm!520791 (= call!520798 call!520795)))

(declare-fun b!6212463 () Bool)

(declare-fun e!3782217 () Bool)

(assert (=> b!6212463 (= e!3782217 (nullable!6142 (regOne!32810 (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292)))))))))

(declare-fun b!6212464 () Bool)

(assert (=> b!6212464 (= c!1122014 e!3782217)))

(declare-fun res!2568468 () Bool)

(assert (=> b!6212464 (=> (not res!2568468) (not e!3782217))))

(assert (=> b!6212464 (= res!2568468 ((_ is Concat!24994) (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292))))))))

(assert (=> b!6212464 (= e!3782216 e!3782219)))

(declare-fun bm!520792 () Bool)

(declare-fun call!520796 () List!64746)

(assert (=> bm!520792 (= call!520796 call!520794)))

(declare-fun b!6212465 () Bool)

(assert (=> b!6212465 (= e!3782216 ((_ map or) call!520793 call!520795))))

(declare-fun bm!520793 () Bool)

(assert (=> bm!520793 (= call!520795 (derivationStepZipperDown!1397 (ite c!1122011 (regTwo!32811 (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292))))) (ite c!1122014 (regTwo!32810 (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292))))) (ite c!1122015 (regOne!32810 (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292))))) (reg!16478 (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292)))))))) (ite (or c!1122011 c!1122014) (ite c!1121742 lt!2343849 (Context!11067 call!520611)) (Context!11067 call!520796)) (h!71072 s!2326)))))

(declare-fun b!6212466 () Bool)

(assert (=> b!6212466 (= e!3782220 call!520797)))

(declare-fun b!6212467 () Bool)

(declare-fun c!1122013 () Bool)

(assert (=> b!6212467 (= c!1122013 ((_ is Star!16149) (ite c!1121742 (regOne!32811 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 (regOne!32810 r!7292))))))))

(assert (=> b!6212467 (= e!3782221 e!3782220)))

(assert (= (and d!1947396 c!1122012) b!6212458))

(assert (= (and d!1947396 (not c!1122012)) b!6212460))

(assert (= (and b!6212460 c!1122011) b!6212465))

(assert (= (and b!6212460 (not c!1122011)) b!6212464))

(assert (= (and b!6212464 res!2568468) b!6212463))

(assert (= (and b!6212464 c!1122014) b!6212457))

(assert (= (and b!6212464 (not c!1122014)) b!6212462))

(assert (= (and b!6212462 c!1122015) b!6212461))

(assert (= (and b!6212462 (not c!1122015)) b!6212467))

(assert (= (and b!6212467 c!1122013) b!6212466))

(assert (= (and b!6212467 (not c!1122013)) b!6212459))

(assert (= (or b!6212461 b!6212466) bm!520792))

(assert (= (or b!6212461 b!6212466) bm!520789))

(assert (= (or b!6212457 bm!520792) bm!520790))

(assert (= (or b!6212457 bm!520789) bm!520791))

(assert (= (or b!6212465 bm!520791) bm!520793))

(assert (= (or b!6212465 b!6212457) bm!520788))

(declare-fun m!7042122 () Bool)

(assert (=> b!6212458 m!7042122))

(declare-fun m!7042124 () Bool)

(assert (=> b!6212463 m!7042124))

(declare-fun m!7042126 () Bool)

(assert (=> bm!520793 m!7042126))

(declare-fun m!7042128 () Bool)

(assert (=> bm!520788 m!7042128))

(declare-fun m!7042130 () Bool)

(assert (=> bm!520790 m!7042130))

(assert (=> bm!520605 d!1947396))

(declare-fun b!6212468 () Bool)

(declare-fun res!2568469 () Bool)

(declare-fun e!3782224 () Bool)

(assert (=> b!6212468 (=> res!2568469 e!3782224)))

(assert (=> b!6212468 (= res!2568469 (not ((_ is Concat!24994) lt!2343933)))))

(declare-fun e!3782223 () Bool)

(assert (=> b!6212468 (= e!3782223 e!3782224)))

(declare-fun b!6212469 () Bool)

(declare-fun res!2568470 () Bool)

(declare-fun e!3782228 () Bool)

(assert (=> b!6212469 (=> (not res!2568470) (not e!3782228))))

(declare-fun call!520799 () Bool)

(assert (=> b!6212469 (= res!2568470 call!520799)))

(assert (=> b!6212469 (= e!3782223 e!3782228)))

(declare-fun b!6212470 () Bool)

(declare-fun call!520801 () Bool)

(assert (=> b!6212470 (= e!3782228 call!520801)))

(declare-fun d!1947398 () Bool)

(declare-fun res!2568471 () Bool)

(declare-fun e!3782222 () Bool)

(assert (=> d!1947398 (=> res!2568471 e!3782222)))

(assert (=> d!1947398 (= res!2568471 ((_ is ElementMatch!16149) lt!2343933))))

(assert (=> d!1947398 (= (validRegex!7885 lt!2343933) e!3782222)))

(declare-fun b!6212471 () Bool)

(declare-fun e!3782226 () Bool)

(assert (=> b!6212471 (= e!3782224 e!3782226)))

(declare-fun res!2568473 () Bool)

(assert (=> b!6212471 (=> (not res!2568473) (not e!3782226))))

(assert (=> b!6212471 (= res!2568473 call!520799)))

(declare-fun b!6212472 () Bool)

(assert (=> b!6212472 (= e!3782226 call!520801)))

(declare-fun bm!520794 () Bool)

(declare-fun call!520800 () Bool)

(assert (=> bm!520794 (= call!520799 call!520800)))

(declare-fun bm!520795 () Bool)

(declare-fun c!1122017 () Bool)

(assert (=> bm!520795 (= call!520801 (validRegex!7885 (ite c!1122017 (regTwo!32811 lt!2343933) (regTwo!32810 lt!2343933))))))

(declare-fun b!6212473 () Bool)

(declare-fun e!3782227 () Bool)

(assert (=> b!6212473 (= e!3782227 e!3782223)))

(assert (=> b!6212473 (= c!1122017 ((_ is Union!16149) lt!2343933))))

(declare-fun c!1122016 () Bool)

(declare-fun bm!520796 () Bool)

(assert (=> bm!520796 (= call!520800 (validRegex!7885 (ite c!1122016 (reg!16478 lt!2343933) (ite c!1122017 (regOne!32811 lt!2343933) (regOne!32810 lt!2343933)))))))

(declare-fun b!6212474 () Bool)

(declare-fun e!3782225 () Bool)

(assert (=> b!6212474 (= e!3782225 call!520800)))

(declare-fun b!6212475 () Bool)

(assert (=> b!6212475 (= e!3782222 e!3782227)))

(assert (=> b!6212475 (= c!1122016 ((_ is Star!16149) lt!2343933))))

(declare-fun b!6212476 () Bool)

(assert (=> b!6212476 (= e!3782227 e!3782225)))

(declare-fun res!2568472 () Bool)

(assert (=> b!6212476 (= res!2568472 (not (nullable!6142 (reg!16478 lt!2343933))))))

(assert (=> b!6212476 (=> (not res!2568472) (not e!3782225))))

(assert (= (and d!1947398 (not res!2568471)) b!6212475))

(assert (= (and b!6212475 c!1122016) b!6212476))

(assert (= (and b!6212475 (not c!1122016)) b!6212473))

(assert (= (and b!6212476 res!2568472) b!6212474))

(assert (= (and b!6212473 c!1122017) b!6212469))

(assert (= (and b!6212473 (not c!1122017)) b!6212468))

(assert (= (and b!6212469 res!2568470) b!6212470))

(assert (= (and b!6212468 (not res!2568469)) b!6212471))

(assert (= (and b!6212471 res!2568473) b!6212472))

(assert (= (or b!6212470 b!6212472) bm!520795))

(assert (= (or b!6212469 b!6212471) bm!520794))

(assert (= (or b!6212474 bm!520794) bm!520796))

(declare-fun m!7042132 () Bool)

(assert (=> bm!520795 m!7042132))

(declare-fun m!7042134 () Bool)

(assert (=> bm!520796 m!7042134))

(declare-fun m!7042136 () Bool)

(assert (=> b!6212476 m!7042136))

(assert (=> d!1947060 d!1947398))

(assert (=> d!1947060 d!1947044))

(assert (=> d!1947060 d!1947046))

(declare-fun b!6212477 () Bool)

(declare-fun res!2568474 () Bool)

(declare-fun e!3782231 () Bool)

(assert (=> b!6212477 (=> res!2568474 e!3782231)))

(assert (=> b!6212477 (= res!2568474 (not ((_ is Concat!24994) lt!2343921)))))

(declare-fun e!3782230 () Bool)

(assert (=> b!6212477 (= e!3782230 e!3782231)))

(declare-fun b!6212478 () Bool)

(declare-fun res!2568475 () Bool)

(declare-fun e!3782235 () Bool)

(assert (=> b!6212478 (=> (not res!2568475) (not e!3782235))))

(declare-fun call!520802 () Bool)

(assert (=> b!6212478 (= res!2568475 call!520802)))

(assert (=> b!6212478 (= e!3782230 e!3782235)))

(declare-fun b!6212479 () Bool)

(declare-fun call!520804 () Bool)

(assert (=> b!6212479 (= e!3782235 call!520804)))

(declare-fun d!1947400 () Bool)

(declare-fun res!2568476 () Bool)

(declare-fun e!3782229 () Bool)

(assert (=> d!1947400 (=> res!2568476 e!3782229)))

(assert (=> d!1947400 (= res!2568476 ((_ is ElementMatch!16149) lt!2343921))))

(assert (=> d!1947400 (= (validRegex!7885 lt!2343921) e!3782229)))

(declare-fun b!6212480 () Bool)

(declare-fun e!3782233 () Bool)

(assert (=> b!6212480 (= e!3782231 e!3782233)))

(declare-fun res!2568478 () Bool)

(assert (=> b!6212480 (=> (not res!2568478) (not e!3782233))))

(assert (=> b!6212480 (= res!2568478 call!520802)))

(declare-fun b!6212481 () Bool)

(assert (=> b!6212481 (= e!3782233 call!520804)))

(declare-fun bm!520797 () Bool)

(declare-fun call!520803 () Bool)

(assert (=> bm!520797 (= call!520802 call!520803)))

(declare-fun bm!520798 () Bool)

(declare-fun c!1122019 () Bool)

(assert (=> bm!520798 (= call!520804 (validRegex!7885 (ite c!1122019 (regTwo!32811 lt!2343921) (regTwo!32810 lt!2343921))))))

(declare-fun b!6212482 () Bool)

(declare-fun e!3782234 () Bool)

(assert (=> b!6212482 (= e!3782234 e!3782230)))

(assert (=> b!6212482 (= c!1122019 ((_ is Union!16149) lt!2343921))))

(declare-fun bm!520799 () Bool)

(declare-fun c!1122018 () Bool)

(assert (=> bm!520799 (= call!520803 (validRegex!7885 (ite c!1122018 (reg!16478 lt!2343921) (ite c!1122019 (regOne!32811 lt!2343921) (regOne!32810 lt!2343921)))))))

(declare-fun b!6212483 () Bool)

(declare-fun e!3782232 () Bool)

(assert (=> b!6212483 (= e!3782232 call!520803)))

(declare-fun b!6212484 () Bool)

(assert (=> b!6212484 (= e!3782229 e!3782234)))

(assert (=> b!6212484 (= c!1122018 ((_ is Star!16149) lt!2343921))))

(declare-fun b!6212485 () Bool)

(assert (=> b!6212485 (= e!3782234 e!3782232)))

(declare-fun res!2568477 () Bool)

(assert (=> b!6212485 (= res!2568477 (not (nullable!6142 (reg!16478 lt!2343921))))))

(assert (=> b!6212485 (=> (not res!2568477) (not e!3782232))))

(assert (= (and d!1947400 (not res!2568476)) b!6212484))

(assert (= (and b!6212484 c!1122018) b!6212485))

(assert (= (and b!6212484 (not c!1122018)) b!6212482))

(assert (= (and b!6212485 res!2568477) b!6212483))

(assert (= (and b!6212482 c!1122019) b!6212478))

(assert (= (and b!6212482 (not c!1122019)) b!6212477))

(assert (= (and b!6212478 res!2568475) b!6212479))

(assert (= (and b!6212477 (not res!2568474)) b!6212480))

(assert (= (and b!6212480 res!2568478) b!6212481))

(assert (= (or b!6212479 b!6212481) bm!520798))

(assert (= (or b!6212478 b!6212480) bm!520797))

(assert (= (or b!6212483 bm!520797) bm!520799))

(declare-fun m!7042138 () Bool)

(assert (=> bm!520798 m!7042138))

(declare-fun m!7042140 () Bool)

(assert (=> bm!520799 m!7042140))

(declare-fun m!7042142 () Bool)

(assert (=> b!6212485 m!7042142))

(assert (=> d!1947044 d!1947400))

(declare-fun d!1947402 () Bool)

(declare-fun res!2568479 () Bool)

(declare-fun e!3782236 () Bool)

(assert (=> d!1947402 (=> res!2568479 e!3782236)))

(assert (=> d!1947402 (= res!2568479 ((_ is Nil!64622) (unfocusZipperList!1570 zl!343)))))

(assert (=> d!1947402 (= (forall!15263 (unfocusZipperList!1570 zl!343) lambda!339429) e!3782236)))

(declare-fun b!6212486 () Bool)

(declare-fun e!3782237 () Bool)

(assert (=> b!6212486 (= e!3782236 e!3782237)))

(declare-fun res!2568480 () Bool)

(assert (=> b!6212486 (=> (not res!2568480) (not e!3782237))))

(assert (=> b!6212486 (= res!2568480 (dynLambda!25493 lambda!339429 (h!71070 (unfocusZipperList!1570 zl!343))))))

(declare-fun b!6212487 () Bool)

(assert (=> b!6212487 (= e!3782237 (forall!15263 (t!378270 (unfocusZipperList!1570 zl!343)) lambda!339429))))

(assert (= (and d!1947402 (not res!2568479)) b!6212486))

(assert (= (and b!6212486 res!2568480) b!6212487))

(declare-fun b_lambda!236215 () Bool)

(assert (=> (not b_lambda!236215) (not b!6212486)))

(declare-fun m!7042144 () Bool)

(assert (=> b!6212486 m!7042144))

(declare-fun m!7042146 () Bool)

(assert (=> b!6212487 m!7042146))

(assert (=> d!1947044 d!1947402))

(declare-fun d!1947404 () Bool)

(assert (=> d!1947404 true))

(assert (=> d!1947404 true))

(declare-fun res!2568481 () Bool)

(assert (=> d!1947404 (= (choose!46159 lambda!339381) res!2568481)))

(assert (=> d!1947012 d!1947404))

(declare-fun d!1947406 () Bool)

(assert (=> d!1947406 (= (isEmpty!36627 (findConcatSeparation!2454 (regOne!32810 r!7292) (regTwo!32810 r!7292) Nil!64624 s!2326 s!2326)) (not ((_ is Some!16039) (findConcatSeparation!2454 (regOne!32810 r!7292) (regTwo!32810 r!7292) Nil!64624 s!2326 s!2326))))))

(assert (=> d!1947018 d!1947406))

(declare-fun d!1947408 () Bool)

(declare-fun res!2568482 () Bool)

(declare-fun e!3782238 () Bool)

(assert (=> d!1947408 (=> res!2568482 e!3782238)))

(assert (=> d!1947408 (= res!2568482 ((_ is Nil!64622) lt!2343924))))

(assert (=> d!1947408 (= (forall!15263 lt!2343924 lambda!339432) e!3782238)))

(declare-fun b!6212488 () Bool)

(declare-fun e!3782239 () Bool)

(assert (=> b!6212488 (= e!3782238 e!3782239)))

(declare-fun res!2568483 () Bool)

(assert (=> b!6212488 (=> (not res!2568483) (not e!3782239))))

(assert (=> b!6212488 (= res!2568483 (dynLambda!25493 lambda!339432 (h!71070 lt!2343924)))))

(declare-fun b!6212489 () Bool)

(assert (=> b!6212489 (= e!3782239 (forall!15263 (t!378270 lt!2343924) lambda!339432))))

(assert (= (and d!1947408 (not res!2568482)) b!6212488))

(assert (= (and b!6212488 res!2568483) b!6212489))

(declare-fun b_lambda!236217 () Bool)

(assert (=> (not b_lambda!236217) (not b!6212488)))

(declare-fun m!7042148 () Bool)

(assert (=> b!6212488 m!7042148))

(declare-fun m!7042150 () Bool)

(assert (=> b!6212489 m!7042150))

(assert (=> d!1947046 d!1947408))

(declare-fun bm!520800 () Bool)

(declare-fun call!520805 () (InoxSet Context!11066))

(assert (=> bm!520800 (= call!520805 (derivationStepZipperDown!1397 (h!71070 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343)))))) (Context!11067 (t!378270 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343))))))) (h!71072 s!2326)))))

(declare-fun e!3782241 () (InoxSet Context!11066))

(declare-fun b!6212490 () Bool)

(assert (=> b!6212490 (= e!3782241 ((_ map or) call!520805 (derivationStepZipperUp!1323 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343))))))) (h!71072 s!2326))))))

(declare-fun d!1947410 () Bool)

(declare-fun c!1122021 () Bool)

(declare-fun e!3782242 () Bool)

(assert (=> d!1947410 (= c!1122021 e!3782242)))

(declare-fun res!2568484 () Bool)

(assert (=> d!1947410 (=> (not res!2568484) (not e!3782242))))

(assert (=> d!1947410 (= res!2568484 ((_ is Cons!64622) (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343)))))))))

(assert (=> d!1947410 (= (derivationStepZipperUp!1323 (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343)))) (h!71072 s!2326)) e!3782241)))

(declare-fun b!6212491 () Bool)

(declare-fun e!3782240 () (InoxSet Context!11066))

(assert (=> b!6212491 (= e!3782240 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212492 () Bool)

(assert (=> b!6212492 (= e!3782242 (nullable!6142 (h!71070 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343))))))))))

(declare-fun b!6212493 () Bool)

(assert (=> b!6212493 (= e!3782240 call!520805)))

(declare-fun b!6212494 () Bool)

(assert (=> b!6212494 (= e!3782241 e!3782240)))

(declare-fun c!1122020 () Bool)

(assert (=> b!6212494 (= c!1122020 ((_ is Cons!64622) (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (h!71071 zl!343)))))))))

(assert (= (and d!1947410 res!2568484) b!6212492))

(assert (= (and d!1947410 c!1122021) b!6212490))

(assert (= (and d!1947410 (not c!1122021)) b!6212494))

(assert (= (and b!6212494 c!1122020) b!6212493))

(assert (= (and b!6212494 (not c!1122020)) b!6212491))

(assert (= (or b!6212490 b!6212493) bm!520800))

(declare-fun m!7042152 () Bool)

(assert (=> bm!520800 m!7042152))

(declare-fun m!7042154 () Bool)

(assert (=> b!6212490 m!7042154))

(declare-fun m!7042156 () Bool)

(assert (=> b!6212492 m!7042156))

(assert (=> b!6211489 d!1947410))

(declare-fun b!6212495 () Bool)

(declare-fun e!3782246 () (InoxSet Context!11066))

(declare-fun call!520806 () (InoxSet Context!11066))

(declare-fun call!520811 () (InoxSet Context!11066))

(assert (=> b!6212495 (= e!3782246 ((_ map or) call!520806 call!520811))))

(declare-fun call!520807 () List!64746)

(declare-fun bm!520801 () Bool)

(declare-fun c!1122022 () Bool)

(assert (=> bm!520801 (= call!520806 (derivationStepZipperDown!1397 (ite c!1122022 (regOne!32811 (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343)))))))) (regOne!32810 (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343))))))))) (ite c!1122022 (ite (or c!1121759 c!1121762) lt!2343834 (Context!11067 call!520622)) (Context!11067 call!520807)) (h!71072 s!2326)))))

(declare-fun d!1947412 () Bool)

(declare-fun c!1122023 () Bool)

(assert (=> d!1947412 (= c!1122023 (and ((_ is ElementMatch!16149) (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343)))))))) (= (c!1121618 (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343)))))))) (h!71072 s!2326))))))

(declare-fun e!3782245 () (InoxSet Context!11066))

(assert (=> d!1947412 (= (derivationStepZipperDown!1397 (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343))))))) (ite (or c!1121759 c!1121762) lt!2343834 (Context!11067 call!520622)) (h!71072 s!2326)) e!3782245)))

(declare-fun b!6212496 () Bool)

(assert (=> b!6212496 (= e!3782245 (store ((as const (Array Context!11066 Bool)) false) (ite (or c!1121759 c!1121762) lt!2343834 (Context!11067 call!520622)) true))))

(declare-fun b!6212497 () Bool)

(declare-fun e!3782247 () (InoxSet Context!11066))

(assert (=> b!6212497 (= e!3782247 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212498 () Bool)

(declare-fun e!3782243 () (InoxSet Context!11066))

(assert (=> b!6212498 (= e!3782245 e!3782243)))

(assert (=> b!6212498 (= c!1122022 ((_ is Union!16149) (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343)))))))))))

(declare-fun bm!520802 () Bool)

(declare-fun call!520810 () (InoxSet Context!11066))

(assert (=> bm!520802 (= call!520810 call!520811)))

(declare-fun b!6212499 () Bool)

(declare-fun e!3782248 () (InoxSet Context!11066))

(assert (=> b!6212499 (= e!3782248 call!520810)))

(declare-fun bm!520803 () Bool)

(declare-fun c!1122026 () Bool)

(declare-fun c!1122025 () Bool)

(assert (=> bm!520803 (= call!520807 ($colon$colon!2018 (exprs!6033 (ite (or c!1121759 c!1121762) lt!2343834 (Context!11067 call!520622))) (ite (or c!1122025 c!1122026) (regTwo!32810 (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343)))))))) (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343))))))))))))

(declare-fun b!6212500 () Bool)

(assert (=> b!6212500 (= e!3782246 e!3782248)))

(assert (=> b!6212500 (= c!1122026 ((_ is Concat!24994) (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343)))))))))))

(declare-fun bm!520804 () Bool)

(declare-fun call!520808 () (InoxSet Context!11066))

(assert (=> bm!520804 (= call!520811 call!520808)))

(declare-fun b!6212501 () Bool)

(declare-fun e!3782244 () Bool)

(assert (=> b!6212501 (= e!3782244 (nullable!6142 (regOne!32810 (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343))))))))))))

(declare-fun b!6212502 () Bool)

(assert (=> b!6212502 (= c!1122025 e!3782244)))

(declare-fun res!2568485 () Bool)

(assert (=> b!6212502 (=> (not res!2568485) (not e!3782244))))

(assert (=> b!6212502 (= res!2568485 ((_ is Concat!24994) (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343)))))))))))

(assert (=> b!6212502 (= e!3782243 e!3782246)))

(declare-fun bm!520805 () Bool)

(declare-fun call!520809 () List!64746)

(assert (=> bm!520805 (= call!520809 call!520807)))

(declare-fun b!6212503 () Bool)

(assert (=> b!6212503 (= e!3782243 ((_ map or) call!520806 call!520808))))

(declare-fun bm!520806 () Bool)

(assert (=> bm!520806 (= call!520808 (derivationStepZipperDown!1397 (ite c!1122022 (regTwo!32811 (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343)))))))) (ite c!1122025 (regTwo!32810 (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343)))))))) (ite c!1122026 (regOne!32810 (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343)))))))) (reg!16478 (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343))))))))))) (ite (or c!1122022 c!1122025) (ite (or c!1121759 c!1121762) lt!2343834 (Context!11067 call!520622)) (Context!11067 call!520809)) (h!71072 s!2326)))))

(declare-fun b!6212504 () Bool)

(assert (=> b!6212504 (= e!3782247 call!520810)))

(declare-fun b!6212505 () Bool)

(declare-fun c!1122024 () Bool)

(assert (=> b!6212505 (= c!1122024 ((_ is Star!16149) (ite c!1121759 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121762 (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (ite c!1121763 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (reg!16478 (h!71070 (exprs!6033 (h!71071 zl!343)))))))))))

(assert (=> b!6212505 (= e!3782248 e!3782247)))

(assert (= (and d!1947412 c!1122023) b!6212496))

(assert (= (and d!1947412 (not c!1122023)) b!6212498))

(assert (= (and b!6212498 c!1122022) b!6212503))

(assert (= (and b!6212498 (not c!1122022)) b!6212502))

(assert (= (and b!6212502 res!2568485) b!6212501))

(assert (= (and b!6212502 c!1122025) b!6212495))

(assert (= (and b!6212502 (not c!1122025)) b!6212500))

(assert (= (and b!6212500 c!1122026) b!6212499))

(assert (= (and b!6212500 (not c!1122026)) b!6212505))

(assert (= (and b!6212505 c!1122024) b!6212504))

(assert (= (and b!6212505 (not c!1122024)) b!6212497))

(assert (= (or b!6212499 b!6212504) bm!520805))

(assert (= (or b!6212499 b!6212504) bm!520802))

(assert (= (or b!6212495 bm!520805) bm!520803))

(assert (= (or b!6212495 bm!520802) bm!520804))

(assert (= (or b!6212503 bm!520804) bm!520806))

(assert (= (or b!6212503 b!6212495) bm!520801))

(declare-fun m!7042158 () Bool)

(assert (=> b!6212496 m!7042158))

(declare-fun m!7042160 () Bool)

(assert (=> b!6212501 m!7042160))

(declare-fun m!7042162 () Bool)

(assert (=> bm!520806 m!7042162))

(declare-fun m!7042164 () Bool)

(assert (=> bm!520801 m!7042164))

(declare-fun m!7042166 () Bool)

(assert (=> bm!520803 m!7042166))

(assert (=> bm!520619 d!1947412))

(declare-fun bs!1540925 () Bool)

(declare-fun b!6212507 () Bool)

(assert (= bs!1540925 (and b!6212507 d!1947014)))

(declare-fun lambda!339485 () Int)

(assert (=> bs!1540925 (not (= lambda!339485 lambda!339420))))

(declare-fun bs!1540926 () Bool)

(assert (= bs!1540926 (and b!6212507 b!6210980)))

(assert (=> bs!1540926 (not (= lambda!339485 lambda!339381))))

(declare-fun bs!1540927 () Bool)

(assert (= bs!1540927 (and b!6212507 d!1947016)))

(assert (=> bs!1540927 (not (= lambda!339485 lambda!339425))))

(declare-fun bs!1540928 () Bool)

(assert (= bs!1540928 (and b!6212507 b!6211609)))

(assert (=> bs!1540928 (not (= lambda!339485 lambda!339438))))

(assert (=> bs!1540926 (not (= lambda!339485 lambda!339382))))

(declare-fun bs!1540929 () Bool)

(assert (= bs!1540929 (and b!6212507 b!6211605)))

(assert (=> bs!1540929 (= (and (= (reg!16478 (regOne!32811 r!7292)) (reg!16478 r!7292)) (= (regOne!32811 r!7292) r!7292)) (= lambda!339485 lambda!339437))))

(assert (=> bs!1540927 (not (= lambda!339485 lambda!339426))))

(assert (=> b!6212507 true))

(assert (=> b!6212507 true))

(declare-fun bs!1540930 () Bool)

(declare-fun b!6212511 () Bool)

(assert (= bs!1540930 (and b!6212511 d!1947014)))

(declare-fun lambda!339486 () Int)

(assert (=> bs!1540930 (not (= lambda!339486 lambda!339420))))

(declare-fun bs!1540931 () Bool)

(assert (= bs!1540931 (and b!6212511 b!6210980)))

(assert (=> bs!1540931 (not (= lambda!339486 lambda!339381))))

(declare-fun bs!1540932 () Bool)

(assert (= bs!1540932 (and b!6212511 b!6212507)))

(assert (=> bs!1540932 (not (= lambda!339486 lambda!339485))))

(declare-fun bs!1540933 () Bool)

(assert (= bs!1540933 (and b!6212511 d!1947016)))

(assert (=> bs!1540933 (not (= lambda!339486 lambda!339425))))

(declare-fun bs!1540934 () Bool)

(assert (= bs!1540934 (and b!6212511 b!6211609)))

(assert (=> bs!1540934 (= (and (= (regOne!32810 (regOne!32811 r!7292)) (regOne!32810 r!7292)) (= (regTwo!32810 (regOne!32811 r!7292)) (regTwo!32810 r!7292))) (= lambda!339486 lambda!339438))))

(assert (=> bs!1540931 (= (and (= (regOne!32810 (regOne!32811 r!7292)) (regOne!32810 r!7292)) (= (regTwo!32810 (regOne!32811 r!7292)) (regTwo!32810 r!7292))) (= lambda!339486 lambda!339382))))

(declare-fun bs!1540935 () Bool)

(assert (= bs!1540935 (and b!6212511 b!6211605)))

(assert (=> bs!1540935 (not (= lambda!339486 lambda!339437))))

(assert (=> bs!1540933 (= (and (= (regOne!32810 (regOne!32811 r!7292)) (regOne!32810 r!7292)) (= (regTwo!32810 (regOne!32811 r!7292)) (regTwo!32810 r!7292))) (= lambda!339486 lambda!339426))))

(assert (=> b!6212511 true))

(assert (=> b!6212511 true))

(declare-fun b!6212506 () Bool)

(declare-fun e!3782249 () Bool)

(declare-fun e!3782250 () Bool)

(assert (=> b!6212506 (= e!3782249 e!3782250)))

(declare-fun c!1122029 () Bool)

(assert (=> b!6212506 (= c!1122029 ((_ is Star!16149) (regOne!32811 r!7292)))))

(declare-fun bm!520807 () Bool)

(declare-fun call!520812 () Bool)

(assert (=> bm!520807 (= call!520812 (isEmpty!36626 s!2326))))

(declare-fun e!3782253 () Bool)

(declare-fun call!520813 () Bool)

(assert (=> b!6212507 (= e!3782253 call!520813)))

(declare-fun b!6212508 () Bool)

(declare-fun e!3782255 () Bool)

(assert (=> b!6212508 (= e!3782255 call!520812)))

(declare-fun b!6212509 () Bool)

(declare-fun e!3782252 () Bool)

(assert (=> b!6212509 (= e!3782255 e!3782252)))

(declare-fun res!2568487 () Bool)

(assert (=> b!6212509 (= res!2568487 (not ((_ is EmptyLang!16149) (regOne!32811 r!7292))))))

(assert (=> b!6212509 (=> (not res!2568487) (not e!3782252))))

(declare-fun b!6212510 () Bool)

(declare-fun e!3782251 () Bool)

(assert (=> b!6212510 (= e!3782251 (= s!2326 (Cons!64624 (c!1121618 (regOne!32811 r!7292)) Nil!64624)))))

(assert (=> b!6212511 (= e!3782250 call!520813)))

(declare-fun d!1947414 () Bool)

(declare-fun c!1122028 () Bool)

(assert (=> d!1947414 (= c!1122028 ((_ is EmptyExpr!16149) (regOne!32811 r!7292)))))

(assert (=> d!1947414 (= (matchRSpec!3250 (regOne!32811 r!7292) s!2326) e!3782255)))

(declare-fun b!6212512 () Bool)

(declare-fun c!1122027 () Bool)

(assert (=> b!6212512 (= c!1122027 ((_ is Union!16149) (regOne!32811 r!7292)))))

(assert (=> b!6212512 (= e!3782251 e!3782249)))

(declare-fun b!6212513 () Bool)

(declare-fun e!3782254 () Bool)

(assert (=> b!6212513 (= e!3782254 (matchRSpec!3250 (regTwo!32811 (regOne!32811 r!7292)) s!2326))))

(declare-fun b!6212514 () Bool)

(declare-fun c!1122030 () Bool)

(assert (=> b!6212514 (= c!1122030 ((_ is ElementMatch!16149) (regOne!32811 r!7292)))))

(assert (=> b!6212514 (= e!3782252 e!3782251)))

(declare-fun b!6212515 () Bool)

(declare-fun res!2568486 () Bool)

(assert (=> b!6212515 (=> res!2568486 e!3782253)))

(assert (=> b!6212515 (= res!2568486 call!520812)))

(assert (=> b!6212515 (= e!3782250 e!3782253)))

(declare-fun bm!520808 () Bool)

(assert (=> bm!520808 (= call!520813 (Exists!3219 (ite c!1122029 lambda!339485 lambda!339486)))))

(declare-fun b!6212516 () Bool)

(assert (=> b!6212516 (= e!3782249 e!3782254)))

(declare-fun res!2568488 () Bool)

(assert (=> b!6212516 (= res!2568488 (matchRSpec!3250 (regOne!32811 (regOne!32811 r!7292)) s!2326))))

(assert (=> b!6212516 (=> res!2568488 e!3782254)))

(assert (= (and d!1947414 c!1122028) b!6212508))

(assert (= (and d!1947414 (not c!1122028)) b!6212509))

(assert (= (and b!6212509 res!2568487) b!6212514))

(assert (= (and b!6212514 c!1122030) b!6212510))

(assert (= (and b!6212514 (not c!1122030)) b!6212512))

(assert (= (and b!6212512 c!1122027) b!6212516))

(assert (= (and b!6212512 (not c!1122027)) b!6212506))

(assert (= (and b!6212516 (not res!2568488)) b!6212513))

(assert (= (and b!6212506 c!1122029) b!6212515))

(assert (= (and b!6212506 (not c!1122029)) b!6212511))

(assert (= (and b!6212515 (not res!2568486)) b!6212507))

(assert (= (or b!6212507 b!6212511) bm!520808))

(assert (= (or b!6212508 b!6212515) bm!520807))

(assert (=> bm!520807 m!7041408))

(declare-fun m!7042168 () Bool)

(assert (=> b!6212513 m!7042168))

(declare-fun m!7042170 () Bool)

(assert (=> bm!520808 m!7042170))

(declare-fun m!7042172 () Bool)

(assert (=> b!6212516 m!7042172))

(assert (=> b!6211614 d!1947414))

(assert (=> b!6211541 d!1947062))

(declare-fun bs!1540936 () Bool)

(declare-fun d!1947416 () Bool)

(assert (= bs!1540936 (and d!1947416 d!1947348)))

(declare-fun lambda!339487 () Int)

(assert (=> bs!1540936 (= lambda!339487 lambda!339482)))

(declare-fun bs!1540937 () Bool)

(assert (= bs!1540937 (and d!1947416 d!1947044)))

(assert (=> bs!1540937 (= lambda!339487 lambda!339429)))

(declare-fun bs!1540938 () Bool)

(assert (= bs!1540938 (and d!1947416 d!1946998)))

(assert (=> bs!1540938 (= lambda!339487 lambda!339416)))

(declare-fun bs!1540939 () Bool)

(assert (= bs!1540939 (and d!1947416 d!1947062)))

(assert (=> bs!1540939 (= lambda!339487 lambda!339441)))

(declare-fun bs!1540940 () Bool)

(assert (= bs!1540940 (and d!1947416 d!1947388)))

(assert (=> bs!1540940 (= lambda!339487 lambda!339484)))

(declare-fun bs!1540941 () Bool)

(assert (= bs!1540941 (and d!1947416 d!1947326)))

(assert (=> bs!1540941 (= lambda!339487 lambda!339479)))

(declare-fun bs!1540942 () Bool)

(assert (= bs!1540942 (and d!1947416 d!1947046)))

(assert (=> bs!1540942 (= lambda!339487 lambda!339432)))

(declare-fun bs!1540943 () Bool)

(assert (= bs!1540943 (and d!1947416 d!1947006)))

(assert (=> bs!1540943 (= lambda!339487 lambda!339417)))

(declare-fun bs!1540944 () Bool)

(assert (= bs!1540944 (and d!1947416 d!1946990)))

(assert (=> bs!1540944 (= lambda!339487 lambda!339415)))

(declare-fun lt!2343962 () List!64746)

(assert (=> d!1947416 (forall!15263 lt!2343962 lambda!339487)))

(declare-fun e!3782256 () List!64746)

(assert (=> d!1947416 (= lt!2343962 e!3782256)))

(declare-fun c!1122031 () Bool)

(assert (=> d!1947416 (= c!1122031 ((_ is Cons!64623) (t!378271 zl!343)))))

(assert (=> d!1947416 (= (unfocusZipperList!1570 (t!378271 zl!343)) lt!2343962)))

(declare-fun b!6212517 () Bool)

(assert (=> b!6212517 (= e!3782256 (Cons!64622 (generalisedConcat!1746 (exprs!6033 (h!71071 (t!378271 zl!343)))) (unfocusZipperList!1570 (t!378271 (t!378271 zl!343)))))))

(declare-fun b!6212518 () Bool)

(assert (=> b!6212518 (= e!3782256 Nil!64622)))

(assert (= (and d!1947416 c!1122031) b!6212517))

(assert (= (and d!1947416 (not c!1122031)) b!6212518))

(declare-fun m!7042174 () Bool)

(assert (=> d!1947416 m!7042174))

(declare-fun m!7042176 () Bool)

(assert (=> b!6212517 m!7042176))

(declare-fun m!7042178 () Bool)

(assert (=> b!6212517 m!7042178))

(assert (=> b!6211541 d!1947416))

(declare-fun d!1947418 () Bool)

(assert (=> d!1947418 (= (isEmpty!36622 (tail!11892 (exprs!6033 (h!71071 zl!343)))) ((_ is Nil!64622) (tail!11892 (exprs!6033 (h!71071 zl!343)))))))

(assert (=> b!6211680 d!1947418))

(declare-fun d!1947420 () Bool)

(assert (=> d!1947420 (= (tail!11892 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))

(assert (=> b!6211680 d!1947420))

(declare-fun d!1947422 () Bool)

(declare-fun lambda!339490 () Int)

(declare-fun exists!2482 ((InoxSet Context!11066) Int) Bool)

(assert (=> d!1947422 (= (nullableZipper!1923 lt!2343836) (exists!2482 lt!2343836 lambda!339490))))

(declare-fun bs!1540945 () Bool)

(assert (= bs!1540945 d!1947422))

(declare-fun m!7042180 () Bool)

(assert (=> bs!1540945 m!7042180))

(assert (=> b!6211371 d!1947422))

(declare-fun d!1947424 () Bool)

(assert (=> d!1947424 (= (isEmptyLang!1568 lt!2343921) ((_ is EmptyLang!16149) lt!2343921))))

(assert (=> b!6211533 d!1947424))

(declare-fun b!6212529 () Bool)

(declare-fun res!2568494 () Bool)

(declare-fun e!3782262 () Bool)

(assert (=> b!6212529 (=> (not res!2568494) (not e!3782262))))

(declare-fun lt!2343965 () List!64748)

(declare-fun size!40276 (List!64748) Int)

(assert (=> b!6212529 (= res!2568494 (= (size!40276 lt!2343965) (+ (size!40276 (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624))) (size!40276 (t!378272 s!2326)))))))

(declare-fun b!6212530 () Bool)

(assert (=> b!6212530 (= e!3782262 (or (not (= (t!378272 s!2326) Nil!64624)) (= lt!2343965 (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624)))))))

(declare-fun b!6212528 () Bool)

(declare-fun e!3782261 () List!64748)

(assert (=> b!6212528 (= e!3782261 (Cons!64624 (h!71072 (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624))) (++!14227 (t!378272 (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624))) (t!378272 s!2326))))))

(declare-fun b!6212527 () Bool)

(assert (=> b!6212527 (= e!3782261 (t!378272 s!2326))))

(declare-fun d!1947426 () Bool)

(assert (=> d!1947426 e!3782262))

(declare-fun res!2568493 () Bool)

(assert (=> d!1947426 (=> (not res!2568493) (not e!3782262))))

(declare-fun content!12094 (List!64748) (InoxSet C!32568))

(assert (=> d!1947426 (= res!2568493 (= (content!12094 lt!2343965) ((_ map or) (content!12094 (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624))) (content!12094 (t!378272 s!2326)))))))

(assert (=> d!1947426 (= lt!2343965 e!3782261)))

(declare-fun c!1122036 () Bool)

(assert (=> d!1947426 (= c!1122036 ((_ is Nil!64624) (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624))))))

(assert (=> d!1947426 (= (++!14227 (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624)) (t!378272 s!2326)) lt!2343965)))

(assert (= (and d!1947426 c!1122036) b!6212527))

(assert (= (and d!1947426 (not c!1122036)) b!6212528))

(assert (= (and d!1947426 res!2568493) b!6212529))

(assert (= (and b!6212529 res!2568494) b!6212530))

(declare-fun m!7042182 () Bool)

(assert (=> b!6212529 m!7042182))

(assert (=> b!6212529 m!7041274))

(declare-fun m!7042184 () Bool)

(assert (=> b!6212529 m!7042184))

(declare-fun m!7042186 () Bool)

(assert (=> b!6212529 m!7042186))

(declare-fun m!7042188 () Bool)

(assert (=> b!6212528 m!7042188))

(declare-fun m!7042190 () Bool)

(assert (=> d!1947426 m!7042190))

(assert (=> d!1947426 m!7041274))

(declare-fun m!7042192 () Bool)

(assert (=> d!1947426 m!7042192))

(declare-fun m!7042194 () Bool)

(assert (=> d!1947426 m!7042194))

(assert (=> b!6211448 d!1947426))

(declare-fun b!6212533 () Bool)

(declare-fun res!2568496 () Bool)

(declare-fun e!3782264 () Bool)

(assert (=> b!6212533 (=> (not res!2568496) (not e!3782264))))

(declare-fun lt!2343966 () List!64748)

(assert (=> b!6212533 (= res!2568496 (= (size!40276 lt!2343966) (+ (size!40276 Nil!64624) (size!40276 (Cons!64624 (h!71072 s!2326) Nil!64624)))))))

(declare-fun b!6212534 () Bool)

(assert (=> b!6212534 (= e!3782264 (or (not (= (Cons!64624 (h!71072 s!2326) Nil!64624) Nil!64624)) (= lt!2343966 Nil!64624)))))

(declare-fun b!6212532 () Bool)

(declare-fun e!3782263 () List!64748)

(assert (=> b!6212532 (= e!3782263 (Cons!64624 (h!71072 Nil!64624) (++!14227 (t!378272 Nil!64624) (Cons!64624 (h!71072 s!2326) Nil!64624))))))

(declare-fun b!6212531 () Bool)

(assert (=> b!6212531 (= e!3782263 (Cons!64624 (h!71072 s!2326) Nil!64624))))

(declare-fun d!1947428 () Bool)

(assert (=> d!1947428 e!3782264))

(declare-fun res!2568495 () Bool)

(assert (=> d!1947428 (=> (not res!2568495) (not e!3782264))))

(assert (=> d!1947428 (= res!2568495 (= (content!12094 lt!2343966) ((_ map or) (content!12094 Nil!64624) (content!12094 (Cons!64624 (h!71072 s!2326) Nil!64624)))))))

(assert (=> d!1947428 (= lt!2343966 e!3782263)))

(declare-fun c!1122037 () Bool)

(assert (=> d!1947428 (= c!1122037 ((_ is Nil!64624) Nil!64624))))

(assert (=> d!1947428 (= (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624)) lt!2343966)))

(assert (= (and d!1947428 c!1122037) b!6212531))

(assert (= (and d!1947428 (not c!1122037)) b!6212532))

(assert (= (and d!1947428 res!2568495) b!6212533))

(assert (= (and b!6212533 res!2568496) b!6212534))

(declare-fun m!7042196 () Bool)

(assert (=> b!6212533 m!7042196))

(declare-fun m!7042198 () Bool)

(assert (=> b!6212533 m!7042198))

(declare-fun m!7042200 () Bool)

(assert (=> b!6212533 m!7042200))

(declare-fun m!7042202 () Bool)

(assert (=> b!6212532 m!7042202))

(declare-fun m!7042204 () Bool)

(assert (=> d!1947428 m!7042204))

(declare-fun m!7042206 () Bool)

(assert (=> d!1947428 m!7042206))

(declare-fun m!7042208 () Bool)

(assert (=> d!1947428 m!7042208))

(assert (=> b!6211448 d!1947428))

(declare-fun d!1947430 () Bool)

(assert (=> d!1947430 (= (++!14227 (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624)) (t!378272 s!2326)) s!2326)))

(declare-fun lt!2343969 () Unit!157927)

(declare-fun choose!46167 (List!64748 C!32568 List!64748 List!64748) Unit!157927)

(assert (=> d!1947430 (= lt!2343969 (choose!46167 Nil!64624 (h!71072 s!2326) (t!378272 s!2326) s!2326))))

(assert (=> d!1947430 (= (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) (t!378272 s!2326))) s!2326)))

(assert (=> d!1947430 (= (lemmaMoveElementToOtherListKeepsConcatEq!2322 Nil!64624 (h!71072 s!2326) (t!378272 s!2326) s!2326) lt!2343969)))

(declare-fun bs!1540946 () Bool)

(assert (= bs!1540946 d!1947430))

(assert (=> bs!1540946 m!7041274))

(assert (=> bs!1540946 m!7041274))

(assert (=> bs!1540946 m!7041276))

(declare-fun m!7042210 () Bool)

(assert (=> bs!1540946 m!7042210))

(declare-fun m!7042212 () Bool)

(assert (=> bs!1540946 m!7042212))

(assert (=> b!6211448 d!1947430))

(declare-fun b!6212535 () Bool)

(declare-fun e!3782268 () Option!16040)

(assert (=> b!6212535 (= e!3782268 (Some!16039 (tuple2!66257 (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624)) (t!378272 s!2326))))))

(declare-fun b!6212536 () Bool)

(declare-fun e!3782266 () Bool)

(declare-fun lt!2343972 () Option!16040)

(assert (=> b!6212536 (= e!3782266 (not (isDefined!12743 lt!2343972)))))

(declare-fun d!1947432 () Bool)

(assert (=> d!1947432 e!3782266))

(declare-fun res!2568499 () Bool)

(assert (=> d!1947432 (=> res!2568499 e!3782266)))

(declare-fun e!3782267 () Bool)

(assert (=> d!1947432 (= res!2568499 e!3782267)))

(declare-fun res!2568501 () Bool)

(assert (=> d!1947432 (=> (not res!2568501) (not e!3782267))))

(assert (=> d!1947432 (= res!2568501 (isDefined!12743 lt!2343972))))

(assert (=> d!1947432 (= lt!2343972 e!3782268)))

(declare-fun c!1122039 () Bool)

(declare-fun e!3782269 () Bool)

(assert (=> d!1947432 (= c!1122039 e!3782269)))

(declare-fun res!2568498 () Bool)

(assert (=> d!1947432 (=> (not res!2568498) (not e!3782269))))

(assert (=> d!1947432 (= res!2568498 (matchR!8332 (regOne!32810 r!7292) (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624))))))

(assert (=> d!1947432 (validRegex!7885 (regOne!32810 r!7292))))

(assert (=> d!1947432 (= (findConcatSeparation!2454 (regOne!32810 r!7292) (regTwo!32810 r!7292) (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624)) (t!378272 s!2326) s!2326) lt!2343972)))

(declare-fun b!6212537 () Bool)

(declare-fun res!2568500 () Bool)

(assert (=> b!6212537 (=> (not res!2568500) (not e!3782267))))

(assert (=> b!6212537 (= res!2568500 (matchR!8332 (regTwo!32810 r!7292) (_2!36431 (get!22317 lt!2343972))))))

(declare-fun b!6212538 () Bool)

(assert (=> b!6212538 (= e!3782269 (matchR!8332 (regTwo!32810 r!7292) (t!378272 s!2326)))))

(declare-fun b!6212539 () Bool)

(declare-fun e!3782265 () Option!16040)

(assert (=> b!6212539 (= e!3782265 None!16039)))

(declare-fun b!6212540 () Bool)

(assert (=> b!6212540 (= e!3782267 (= (++!14227 (_1!36431 (get!22317 lt!2343972)) (_2!36431 (get!22317 lt!2343972))) s!2326))))

(declare-fun b!6212541 () Bool)

(declare-fun lt!2343971 () Unit!157927)

(declare-fun lt!2343970 () Unit!157927)

(assert (=> b!6212541 (= lt!2343971 lt!2343970)))

(assert (=> b!6212541 (= (++!14227 (++!14227 (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624)) (Cons!64624 (h!71072 (t!378272 s!2326)) Nil!64624)) (t!378272 (t!378272 s!2326))) s!2326)))

(assert (=> b!6212541 (= lt!2343970 (lemmaMoveElementToOtherListKeepsConcatEq!2322 (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624)) (h!71072 (t!378272 s!2326)) (t!378272 (t!378272 s!2326)) s!2326))))

(assert (=> b!6212541 (= e!3782265 (findConcatSeparation!2454 (regOne!32810 r!7292) (regTwo!32810 r!7292) (++!14227 (++!14227 Nil!64624 (Cons!64624 (h!71072 s!2326) Nil!64624)) (Cons!64624 (h!71072 (t!378272 s!2326)) Nil!64624)) (t!378272 (t!378272 s!2326)) s!2326))))

(declare-fun b!6212542 () Bool)

(declare-fun res!2568497 () Bool)

(assert (=> b!6212542 (=> (not res!2568497) (not e!3782267))))

(assert (=> b!6212542 (= res!2568497 (matchR!8332 (regOne!32810 r!7292) (_1!36431 (get!22317 lt!2343972))))))

(declare-fun b!6212543 () Bool)

(assert (=> b!6212543 (= e!3782268 e!3782265)))

(declare-fun c!1122038 () Bool)

(assert (=> b!6212543 (= c!1122038 ((_ is Nil!64624) (t!378272 s!2326)))))

(assert (= (and d!1947432 res!2568498) b!6212538))

(assert (= (and d!1947432 c!1122039) b!6212535))

(assert (= (and d!1947432 (not c!1122039)) b!6212543))

(assert (= (and b!6212543 c!1122038) b!6212539))

(assert (= (and b!6212543 (not c!1122038)) b!6212541))

(assert (= (and d!1947432 res!2568501) b!6212542))

(assert (= (and b!6212542 res!2568497) b!6212537))

(assert (= (and b!6212537 res!2568500) b!6212540))

(assert (= (and d!1947432 (not res!2568499)) b!6212536))

(assert (=> b!6212541 m!7041274))

(declare-fun m!7042214 () Bool)

(assert (=> b!6212541 m!7042214))

(assert (=> b!6212541 m!7042214))

(declare-fun m!7042216 () Bool)

(assert (=> b!6212541 m!7042216))

(assert (=> b!6212541 m!7041274))

(declare-fun m!7042218 () Bool)

(assert (=> b!6212541 m!7042218))

(assert (=> b!6212541 m!7042214))

(declare-fun m!7042220 () Bool)

(assert (=> b!6212541 m!7042220))

(declare-fun m!7042222 () Bool)

(assert (=> b!6212536 m!7042222))

(declare-fun m!7042224 () Bool)

(assert (=> b!6212540 m!7042224))

(declare-fun m!7042226 () Bool)

(assert (=> b!6212540 m!7042226))

(assert (=> d!1947432 m!7042222))

(assert (=> d!1947432 m!7041274))

(declare-fun m!7042228 () Bool)

(assert (=> d!1947432 m!7042228))

(assert (=> d!1947432 m!7041290))

(assert (=> b!6212542 m!7042224))

(declare-fun m!7042230 () Bool)

(assert (=> b!6212542 m!7042230))

(declare-fun m!7042232 () Bool)

(assert (=> b!6212538 m!7042232))

(assert (=> b!6212537 m!7042224))

(declare-fun m!7042234 () Bool)

(assert (=> b!6212537 m!7042234))

(assert (=> b!6211448 d!1947432))

(declare-fun b!6212544 () Bool)

(declare-fun e!3782271 () Bool)

(declare-fun e!3782273 () Bool)

(assert (=> b!6212544 (= e!3782271 e!3782273)))

(declare-fun res!2568503 () Bool)

(assert (=> b!6212544 (=> res!2568503 e!3782273)))

(assert (=> b!6212544 (= res!2568503 ((_ is Star!16149) (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun b!6212545 () Bool)

(declare-fun e!3782274 () Bool)

(declare-fun call!520815 () Bool)

(assert (=> b!6212545 (= e!3782274 call!520815)))

(declare-fun b!6212546 () Bool)

(declare-fun e!3782275 () Bool)

(assert (=> b!6212546 (= e!3782275 e!3782271)))

(declare-fun res!2568505 () Bool)

(assert (=> b!6212546 (=> (not res!2568505) (not e!3782271))))

(assert (=> b!6212546 (= res!2568505 (and (not ((_ is EmptyLang!16149) (h!71070 (exprs!6033 (h!71071 zl!343))))) (not ((_ is ElementMatch!16149) (h!71070 (exprs!6033 (h!71071 zl!343)))))))))

(declare-fun d!1947434 () Bool)

(declare-fun res!2568506 () Bool)

(assert (=> d!1947434 (=> res!2568506 e!3782275)))

(assert (=> d!1947434 (= res!2568506 ((_ is EmptyExpr!16149) (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(assert (=> d!1947434 (= (nullableFct!2098 (h!71070 (exprs!6033 (h!71071 zl!343)))) e!3782275)))

(declare-fun bm!520809 () Bool)

(declare-fun c!1122040 () Bool)

(assert (=> bm!520809 (= call!520815 (nullable!6142 (ite c!1122040 (regTwo!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))))))

(declare-fun b!6212547 () Bool)

(declare-fun e!3782272 () Bool)

(declare-fun e!3782270 () Bool)

(assert (=> b!6212547 (= e!3782272 e!3782270)))

(declare-fun res!2568502 () Bool)

(declare-fun call!520814 () Bool)

(assert (=> b!6212547 (= res!2568502 call!520814)))

(assert (=> b!6212547 (=> (not res!2568502) (not e!3782270))))

(declare-fun b!6212548 () Bool)

(assert (=> b!6212548 (= e!3782272 e!3782274)))

(declare-fun res!2568504 () Bool)

(assert (=> b!6212548 (= res!2568504 call!520814)))

(assert (=> b!6212548 (=> res!2568504 e!3782274)))

(declare-fun b!6212549 () Bool)

(assert (=> b!6212549 (= e!3782273 e!3782272)))

(assert (=> b!6212549 (= c!1122040 ((_ is Union!16149) (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun b!6212550 () Bool)

(assert (=> b!6212550 (= e!3782270 call!520815)))

(declare-fun bm!520810 () Bool)

(assert (=> bm!520810 (= call!520814 (nullable!6142 (ite c!1122040 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))))))

(assert (= (and d!1947434 (not res!2568506)) b!6212546))

(assert (= (and b!6212546 res!2568505) b!6212544))

(assert (= (and b!6212544 (not res!2568503)) b!6212549))

(assert (= (and b!6212549 c!1122040) b!6212548))

(assert (= (and b!6212549 (not c!1122040)) b!6212547))

(assert (= (and b!6212548 (not res!2568504)) b!6212545))

(assert (= (and b!6212547 res!2568502) b!6212550))

(assert (= (or b!6212545 b!6212550) bm!520809))

(assert (= (or b!6212548 b!6212547) bm!520810))

(declare-fun m!7042236 () Bool)

(assert (=> bm!520809 m!7042236))

(declare-fun m!7042238 () Bool)

(assert (=> bm!520810 m!7042238))

(assert (=> d!1947022 d!1947434))

(declare-fun bm!520811 () Bool)

(declare-fun call!520816 () (InoxSet Context!11066))

(assert (=> bm!520811 (= call!520816 (derivationStepZipperDown!1397 (h!71070 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 lt!2343834))))) (Context!11067 (t!378270 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 lt!2343834)))))) (h!71072 s!2326)))))

(declare-fun e!3782277 () (InoxSet Context!11066))

(declare-fun b!6212551 () Bool)

(assert (=> b!6212551 (= e!3782277 ((_ map or) call!520816 (derivationStepZipperUp!1323 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 lt!2343834)))))) (h!71072 s!2326))))))

(declare-fun d!1947436 () Bool)

(declare-fun c!1122042 () Bool)

(declare-fun e!3782278 () Bool)

(assert (=> d!1947436 (= c!1122042 e!3782278)))

(declare-fun res!2568507 () Bool)

(assert (=> d!1947436 (=> (not res!2568507) (not e!3782278))))

(assert (=> d!1947436 (= res!2568507 ((_ is Cons!64622) (exprs!6033 (Context!11067 (t!378270 (exprs!6033 lt!2343834))))))))

(assert (=> d!1947436 (= (derivationStepZipperUp!1323 (Context!11067 (t!378270 (exprs!6033 lt!2343834))) (h!71072 s!2326)) e!3782277)))

(declare-fun b!6212552 () Bool)

(declare-fun e!3782276 () (InoxSet Context!11066))

(assert (=> b!6212552 (= e!3782276 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212553 () Bool)

(assert (=> b!6212553 (= e!3782278 (nullable!6142 (h!71070 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 lt!2343834)))))))))

(declare-fun b!6212554 () Bool)

(assert (=> b!6212554 (= e!3782276 call!520816)))

(declare-fun b!6212555 () Bool)

(assert (=> b!6212555 (= e!3782277 e!3782276)))

(declare-fun c!1122041 () Bool)

(assert (=> b!6212555 (= c!1122041 ((_ is Cons!64622) (exprs!6033 (Context!11067 (t!378270 (exprs!6033 lt!2343834))))))))

(assert (= (and d!1947436 res!2568507) b!6212553))

(assert (= (and d!1947436 c!1122042) b!6212551))

(assert (= (and d!1947436 (not c!1122042)) b!6212555))

(assert (= (and b!6212555 c!1122041) b!6212554))

(assert (= (and b!6212555 (not c!1122041)) b!6212552))

(assert (= (or b!6212551 b!6212554) bm!520811))

(declare-fun m!7042240 () Bool)

(assert (=> bm!520811 m!7042240))

(declare-fun m!7042242 () Bool)

(assert (=> b!6212551 m!7042242))

(declare-fun m!7042244 () Bool)

(assert (=> b!6212553 m!7042244))

(assert (=> b!6211494 d!1947436))

(declare-fun b!6212556 () Bool)

(declare-fun e!3782282 () (InoxSet Context!11066))

(declare-fun call!520817 () (InoxSet Context!11066))

(declare-fun call!520822 () (InoxSet Context!11066))

(assert (=> b!6212556 (= e!3782282 ((_ map or) call!520817 call!520822))))

(declare-fun bm!520812 () Bool)

(declare-fun c!1122043 () Bool)

(declare-fun call!520818 () List!64746)

(assert (=> bm!520812 (= call!520817 (derivationStepZipperDown!1397 (ite c!1122043 (regOne!32811 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (regOne!32810 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))))) (ite c!1122043 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (Context!11067 call!520818)) (h!71072 s!2326)))))

(declare-fun d!1947438 () Bool)

(declare-fun c!1122044 () Bool)

(assert (=> d!1947438 (= c!1122044 (and ((_ is ElementMatch!16149) (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (= (c!1121618 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (h!71072 s!2326))))))

(declare-fun e!3782281 () (InoxSet Context!11066))

(assert (=> d!1947438 (= (derivationStepZipperDown!1397 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))) (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (h!71072 s!2326)) e!3782281)))

(declare-fun b!6212557 () Bool)

(assert (=> b!6212557 (= e!3782281 (store ((as const (Array Context!11066 Bool)) false) (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) true))))

(declare-fun b!6212558 () Bool)

(declare-fun e!3782283 () (InoxSet Context!11066))

(assert (=> b!6212558 (= e!3782283 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212559 () Bool)

(declare-fun e!3782279 () (InoxSet Context!11066))

(assert (=> b!6212559 (= e!3782281 e!3782279)))

(assert (=> b!6212559 (= c!1122043 ((_ is Union!16149) (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))))))

(declare-fun bm!520813 () Bool)

(declare-fun call!520821 () (InoxSet Context!11066))

(assert (=> bm!520813 (= call!520821 call!520822)))

(declare-fun b!6212560 () Bool)

(declare-fun e!3782284 () (InoxSet Context!11066))

(assert (=> b!6212560 (= e!3782284 call!520821)))

(declare-fun bm!520814 () Bool)

(declare-fun c!1122046 () Bool)

(declare-fun c!1122047 () Bool)

(assert (=> bm!520814 (= call!520818 ($colon$colon!2018 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))))) (ite (or c!1122046 c!1122047) (regTwo!32810 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))))))))

(declare-fun b!6212561 () Bool)

(assert (=> b!6212561 (= e!3782282 e!3782284)))

(assert (=> b!6212561 (= c!1122047 ((_ is Concat!24994) (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))))))

(declare-fun bm!520815 () Bool)

(declare-fun call!520819 () (InoxSet Context!11066))

(assert (=> bm!520815 (= call!520822 call!520819)))

(declare-fun b!6212562 () Bool)

(declare-fun e!3782280 () Bool)

(assert (=> b!6212562 (= e!3782280 (nullable!6142 (regOne!32810 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))))))))

(declare-fun b!6212563 () Bool)

(assert (=> b!6212563 (= c!1122046 e!3782280)))

(declare-fun res!2568508 () Bool)

(assert (=> b!6212563 (=> (not res!2568508) (not e!3782280))))

(assert (=> b!6212563 (= res!2568508 ((_ is Concat!24994) (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))))))

(assert (=> b!6212563 (= e!3782279 e!3782282)))

(declare-fun bm!520816 () Bool)

(declare-fun call!520820 () List!64746)

(assert (=> bm!520816 (= call!520820 call!520818)))

(declare-fun b!6212564 () Bool)

(assert (=> b!6212564 (= e!3782279 ((_ map or) call!520817 call!520819))))

(declare-fun bm!520817 () Bool)

(assert (=> bm!520817 (= call!520819 (derivationStepZipperDown!1397 (ite c!1122043 (regTwo!32811 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (ite c!1122046 (regTwo!32810 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (ite c!1122047 (regOne!32810 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (reg!16478 (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))))))) (ite (or c!1122043 c!1122046) (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (Context!11067 call!520820)) (h!71072 s!2326)))))

(declare-fun b!6212565 () Bool)

(assert (=> b!6212565 (= e!3782283 call!520821)))

(declare-fun b!6212566 () Bool)

(declare-fun c!1122045 () Bool)

(assert (=> b!6212566 (= c!1122045 ((_ is Star!16149) (h!71070 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))))))

(assert (=> b!6212566 (= e!3782284 e!3782283)))

(assert (= (and d!1947438 c!1122044) b!6212557))

(assert (= (and d!1947438 (not c!1122044)) b!6212559))

(assert (= (and b!6212559 c!1122043) b!6212564))

(assert (= (and b!6212559 (not c!1122043)) b!6212563))

(assert (= (and b!6212563 res!2568508) b!6212562))

(assert (= (and b!6212563 c!1122046) b!6212556))

(assert (= (and b!6212563 (not c!1122046)) b!6212561))

(assert (= (and b!6212561 c!1122047) b!6212560))

(assert (= (and b!6212561 (not c!1122047)) b!6212566))

(assert (= (and b!6212566 c!1122045) b!6212565))

(assert (= (and b!6212566 (not c!1122045)) b!6212558))

(assert (= (or b!6212560 b!6212565) bm!520816))

(assert (= (or b!6212560 b!6212565) bm!520813))

(assert (= (or b!6212556 bm!520816) bm!520814))

(assert (= (or b!6212556 bm!520813) bm!520815))

(assert (= (or b!6212564 bm!520815) bm!520817))

(assert (= (or b!6212564 b!6212556) bm!520812))

(declare-fun m!7042246 () Bool)

(assert (=> b!6212557 m!7042246))

(declare-fun m!7042248 () Bool)

(assert (=> b!6212562 m!7042248))

(declare-fun m!7042250 () Bool)

(assert (=> bm!520817 m!7042250))

(declare-fun m!7042252 () Bool)

(assert (=> bm!520812 m!7042252))

(declare-fun m!7042254 () Bool)

(assert (=> bm!520814 m!7042254))

(assert (=> bm!520613 d!1947438))

(declare-fun d!1947440 () Bool)

(assert (=> d!1947440 (= (nullable!6142 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343))))) (nullableFct!2098 (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343))))))))

(declare-fun bs!1540947 () Bool)

(assert (= bs!1540947 d!1947440))

(declare-fun m!7042256 () Bool)

(assert (=> bs!1540947 m!7042256))

(assert (=> b!6211484 d!1947440))

(declare-fun bs!1540948 () Bool)

(declare-fun b!6212568 () Bool)

(assert (= bs!1540948 (and b!6212568 d!1947014)))

(declare-fun lambda!339491 () Int)

(assert (=> bs!1540948 (not (= lambda!339491 lambda!339420))))

(declare-fun bs!1540949 () Bool)

(assert (= bs!1540949 (and b!6212568 b!6210980)))

(assert (=> bs!1540949 (not (= lambda!339491 lambda!339381))))

(declare-fun bs!1540950 () Bool)

(assert (= bs!1540950 (and b!6212568 b!6212507)))

(assert (=> bs!1540950 (= (and (= (reg!16478 (regTwo!32811 r!7292)) (reg!16478 (regOne!32811 r!7292))) (= (regTwo!32811 r!7292) (regOne!32811 r!7292))) (= lambda!339491 lambda!339485))))

(declare-fun bs!1540951 () Bool)

(assert (= bs!1540951 (and b!6212568 d!1947016)))

(assert (=> bs!1540951 (not (= lambda!339491 lambda!339425))))

(declare-fun bs!1540952 () Bool)

(assert (= bs!1540952 (and b!6212568 b!6211609)))

(assert (=> bs!1540952 (not (= lambda!339491 lambda!339438))))

(declare-fun bs!1540953 () Bool)

(assert (= bs!1540953 (and b!6212568 b!6212511)))

(assert (=> bs!1540953 (not (= lambda!339491 lambda!339486))))

(assert (=> bs!1540949 (not (= lambda!339491 lambda!339382))))

(declare-fun bs!1540954 () Bool)

(assert (= bs!1540954 (and b!6212568 b!6211605)))

(assert (=> bs!1540954 (= (and (= (reg!16478 (regTwo!32811 r!7292)) (reg!16478 r!7292)) (= (regTwo!32811 r!7292) r!7292)) (= lambda!339491 lambda!339437))))

(assert (=> bs!1540951 (not (= lambda!339491 lambda!339426))))

(assert (=> b!6212568 true))

(assert (=> b!6212568 true))

(declare-fun bs!1540955 () Bool)

(declare-fun b!6212572 () Bool)

(assert (= bs!1540955 (and b!6212572 d!1947014)))

(declare-fun lambda!339492 () Int)

(assert (=> bs!1540955 (not (= lambda!339492 lambda!339420))))

(declare-fun bs!1540956 () Bool)

(assert (= bs!1540956 (and b!6212572 b!6210980)))

(assert (=> bs!1540956 (not (= lambda!339492 lambda!339381))))

(declare-fun bs!1540957 () Bool)

(assert (= bs!1540957 (and b!6212572 d!1947016)))

(assert (=> bs!1540957 (not (= lambda!339492 lambda!339425))))

(declare-fun bs!1540958 () Bool)

(assert (= bs!1540958 (and b!6212572 b!6211609)))

(assert (=> bs!1540958 (= (and (= (regOne!32810 (regTwo!32811 r!7292)) (regOne!32810 r!7292)) (= (regTwo!32810 (regTwo!32811 r!7292)) (regTwo!32810 r!7292))) (= lambda!339492 lambda!339438))))

(declare-fun bs!1540959 () Bool)

(assert (= bs!1540959 (and b!6212572 b!6212511)))

(assert (=> bs!1540959 (= (and (= (regOne!32810 (regTwo!32811 r!7292)) (regOne!32810 (regOne!32811 r!7292))) (= (regTwo!32810 (regTwo!32811 r!7292)) (regTwo!32810 (regOne!32811 r!7292)))) (= lambda!339492 lambda!339486))))

(assert (=> bs!1540956 (= (and (= (regOne!32810 (regTwo!32811 r!7292)) (regOne!32810 r!7292)) (= (regTwo!32810 (regTwo!32811 r!7292)) (regTwo!32810 r!7292))) (= lambda!339492 lambda!339382))))

(declare-fun bs!1540960 () Bool)

(assert (= bs!1540960 (and b!6212572 b!6211605)))

(assert (=> bs!1540960 (not (= lambda!339492 lambda!339437))))

(assert (=> bs!1540957 (= (and (= (regOne!32810 (regTwo!32811 r!7292)) (regOne!32810 r!7292)) (= (regTwo!32810 (regTwo!32811 r!7292)) (regTwo!32810 r!7292))) (= lambda!339492 lambda!339426))))

(declare-fun bs!1540961 () Bool)

(assert (= bs!1540961 (and b!6212572 b!6212568)))

(assert (=> bs!1540961 (not (= lambda!339492 lambda!339491))))

(declare-fun bs!1540962 () Bool)

(assert (= bs!1540962 (and b!6212572 b!6212507)))

(assert (=> bs!1540962 (not (= lambda!339492 lambda!339485))))

(assert (=> b!6212572 true))

(assert (=> b!6212572 true))

(declare-fun b!6212567 () Bool)

(declare-fun e!3782285 () Bool)

(declare-fun e!3782286 () Bool)

(assert (=> b!6212567 (= e!3782285 e!3782286)))

(declare-fun c!1122050 () Bool)

(assert (=> b!6212567 (= c!1122050 ((_ is Star!16149) (regTwo!32811 r!7292)))))

(declare-fun bm!520818 () Bool)

(declare-fun call!520823 () Bool)

(assert (=> bm!520818 (= call!520823 (isEmpty!36626 s!2326))))

(declare-fun e!3782289 () Bool)

(declare-fun call!520824 () Bool)

(assert (=> b!6212568 (= e!3782289 call!520824)))

(declare-fun b!6212569 () Bool)

(declare-fun e!3782291 () Bool)

(assert (=> b!6212569 (= e!3782291 call!520823)))

(declare-fun b!6212570 () Bool)

(declare-fun e!3782288 () Bool)

(assert (=> b!6212570 (= e!3782291 e!3782288)))

(declare-fun res!2568510 () Bool)

(assert (=> b!6212570 (= res!2568510 (not ((_ is EmptyLang!16149) (regTwo!32811 r!7292))))))

(assert (=> b!6212570 (=> (not res!2568510) (not e!3782288))))

(declare-fun b!6212571 () Bool)

(declare-fun e!3782287 () Bool)

(assert (=> b!6212571 (= e!3782287 (= s!2326 (Cons!64624 (c!1121618 (regTwo!32811 r!7292)) Nil!64624)))))

(assert (=> b!6212572 (= e!3782286 call!520824)))

(declare-fun d!1947442 () Bool)

(declare-fun c!1122049 () Bool)

(assert (=> d!1947442 (= c!1122049 ((_ is EmptyExpr!16149) (regTwo!32811 r!7292)))))

(assert (=> d!1947442 (= (matchRSpec!3250 (regTwo!32811 r!7292) s!2326) e!3782291)))

(declare-fun b!6212573 () Bool)

(declare-fun c!1122048 () Bool)

(assert (=> b!6212573 (= c!1122048 ((_ is Union!16149) (regTwo!32811 r!7292)))))

(assert (=> b!6212573 (= e!3782287 e!3782285)))

(declare-fun b!6212574 () Bool)

(declare-fun e!3782290 () Bool)

(assert (=> b!6212574 (= e!3782290 (matchRSpec!3250 (regTwo!32811 (regTwo!32811 r!7292)) s!2326))))

(declare-fun b!6212575 () Bool)

(declare-fun c!1122051 () Bool)

(assert (=> b!6212575 (= c!1122051 ((_ is ElementMatch!16149) (regTwo!32811 r!7292)))))

(assert (=> b!6212575 (= e!3782288 e!3782287)))

(declare-fun b!6212576 () Bool)

(declare-fun res!2568509 () Bool)

(assert (=> b!6212576 (=> res!2568509 e!3782289)))

(assert (=> b!6212576 (= res!2568509 call!520823)))

(assert (=> b!6212576 (= e!3782286 e!3782289)))

(declare-fun bm!520819 () Bool)

(assert (=> bm!520819 (= call!520824 (Exists!3219 (ite c!1122050 lambda!339491 lambda!339492)))))

(declare-fun b!6212577 () Bool)

(assert (=> b!6212577 (= e!3782285 e!3782290)))

(declare-fun res!2568511 () Bool)

(assert (=> b!6212577 (= res!2568511 (matchRSpec!3250 (regOne!32811 (regTwo!32811 r!7292)) s!2326))))

(assert (=> b!6212577 (=> res!2568511 e!3782290)))

(assert (= (and d!1947442 c!1122049) b!6212569))

(assert (= (and d!1947442 (not c!1122049)) b!6212570))

(assert (= (and b!6212570 res!2568510) b!6212575))

(assert (= (and b!6212575 c!1122051) b!6212571))

(assert (= (and b!6212575 (not c!1122051)) b!6212573))

(assert (= (and b!6212573 c!1122048) b!6212577))

(assert (= (and b!6212573 (not c!1122048)) b!6212567))

(assert (= (and b!6212577 (not res!2568511)) b!6212574))

(assert (= (and b!6212567 c!1122050) b!6212576))

(assert (= (and b!6212567 (not c!1122050)) b!6212572))

(assert (= (and b!6212576 (not res!2568509)) b!6212568))

(assert (= (or b!6212568 b!6212572) bm!520819))

(assert (= (or b!6212569 b!6212576) bm!520818))

(assert (=> bm!520818 m!7041408))

(declare-fun m!7042258 () Bool)

(assert (=> b!6212574 m!7042258))

(declare-fun m!7042260 () Bool)

(assert (=> bm!520819 m!7042260))

(declare-fun m!7042262 () Bool)

(assert (=> b!6212577 m!7042262))

(assert (=> b!6211611 d!1947442))

(declare-fun b!6212578 () Bool)

(declare-fun e!3782295 () (InoxSet Context!11066))

(declare-fun call!520825 () (InoxSet Context!11066))

(declare-fun call!520830 () (InoxSet Context!11066))

(assert (=> b!6212578 (= e!3782295 ((_ map or) call!520825 call!520830))))

(declare-fun call!520826 () List!64746)

(declare-fun c!1122052 () Bool)

(declare-fun bm!520820 () Bool)

(assert (=> bm!520820 (= call!520825 (derivationStepZipperDown!1397 (ite c!1122052 (regOne!32811 (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))) (regOne!32810 (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343))))))) (ite c!1122052 (ite c!1121759 lt!2343834 (Context!11067 call!520620)) (Context!11067 call!520826)) (h!71072 s!2326)))))

(declare-fun d!1947444 () Bool)

(declare-fun c!1122053 () Bool)

(assert (=> d!1947444 (= c!1122053 (and ((_ is ElementMatch!16149) (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))) (= (c!1121618 (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))) (h!71072 s!2326))))))

(declare-fun e!3782294 () (InoxSet Context!11066))

(assert (=> d!1947444 (= (derivationStepZipperDown!1397 (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343))))) (ite c!1121759 lt!2343834 (Context!11067 call!520620)) (h!71072 s!2326)) e!3782294)))

(declare-fun b!6212579 () Bool)

(assert (=> b!6212579 (= e!3782294 (store ((as const (Array Context!11066 Bool)) false) (ite c!1121759 lt!2343834 (Context!11067 call!520620)) true))))

(declare-fun b!6212580 () Bool)

(declare-fun e!3782296 () (InoxSet Context!11066))

(assert (=> b!6212580 (= e!3782296 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212581 () Bool)

(declare-fun e!3782292 () (InoxSet Context!11066))

(assert (=> b!6212581 (= e!3782294 e!3782292)))

(assert (=> b!6212581 (= c!1122052 ((_ is Union!16149) (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))))))

(declare-fun bm!520821 () Bool)

(declare-fun call!520829 () (InoxSet Context!11066))

(assert (=> bm!520821 (= call!520829 call!520830)))

(declare-fun b!6212582 () Bool)

(declare-fun e!3782297 () (InoxSet Context!11066))

(assert (=> b!6212582 (= e!3782297 call!520829)))

(declare-fun c!1122055 () Bool)

(declare-fun c!1122056 () Bool)

(declare-fun bm!520822 () Bool)

(assert (=> bm!520822 (= call!520826 ($colon$colon!2018 (exprs!6033 (ite c!1121759 lt!2343834 (Context!11067 call!520620))) (ite (or c!1122055 c!1122056) (regTwo!32810 (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))) (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343))))))))))

(declare-fun b!6212583 () Bool)

(assert (=> b!6212583 (= e!3782295 e!3782297)))

(assert (=> b!6212583 (= c!1122056 ((_ is Concat!24994) (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))))))

(declare-fun bm!520823 () Bool)

(declare-fun call!520827 () (InoxSet Context!11066))

(assert (=> bm!520823 (= call!520830 call!520827)))

(declare-fun b!6212584 () Bool)

(declare-fun e!3782293 () Bool)

(assert (=> b!6212584 (= e!3782293 (nullable!6142 (regOne!32810 (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343))))))))))

(declare-fun b!6212585 () Bool)

(assert (=> b!6212585 (= c!1122055 e!3782293)))

(declare-fun res!2568512 () Bool)

(assert (=> b!6212585 (=> (not res!2568512) (not e!3782293))))

(assert (=> b!6212585 (= res!2568512 ((_ is Concat!24994) (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))))))

(assert (=> b!6212585 (= e!3782292 e!3782295)))

(declare-fun bm!520824 () Bool)

(declare-fun call!520828 () List!64746)

(assert (=> bm!520824 (= call!520828 call!520826)))

(declare-fun b!6212586 () Bool)

(assert (=> b!6212586 (= e!3782292 ((_ map or) call!520825 call!520827))))

(declare-fun bm!520825 () Bool)

(assert (=> bm!520825 (= call!520827 (derivationStepZipperDown!1397 (ite c!1122052 (regTwo!32811 (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))) (ite c!1122055 (regTwo!32810 (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))) (ite c!1122056 (regOne!32810 (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))) (reg!16478 (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343))))))))) (ite (or c!1122052 c!1122055) (ite c!1121759 lt!2343834 (Context!11067 call!520620)) (Context!11067 call!520828)) (h!71072 s!2326)))))

(declare-fun b!6212587 () Bool)

(assert (=> b!6212587 (= e!3782296 call!520829)))

(declare-fun b!6212588 () Bool)

(declare-fun c!1122054 () Bool)

(assert (=> b!6212588 (= c!1122054 ((_ is Star!16149) (ite c!1121759 (regOne!32811 (h!71070 (exprs!6033 (h!71071 zl!343)))) (regOne!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))))))))

(assert (=> b!6212588 (= e!3782297 e!3782296)))

(assert (= (and d!1947444 c!1122053) b!6212579))

(assert (= (and d!1947444 (not c!1122053)) b!6212581))

(assert (= (and b!6212581 c!1122052) b!6212586))

(assert (= (and b!6212581 (not c!1122052)) b!6212585))

(assert (= (and b!6212585 res!2568512) b!6212584))

(assert (= (and b!6212585 c!1122055) b!6212578))

(assert (= (and b!6212585 (not c!1122055)) b!6212583))

(assert (= (and b!6212583 c!1122056) b!6212582))

(assert (= (and b!6212583 (not c!1122056)) b!6212588))

(assert (= (and b!6212588 c!1122054) b!6212587))

(assert (= (and b!6212588 (not c!1122054)) b!6212580))

(assert (= (or b!6212582 b!6212587) bm!520824))

(assert (= (or b!6212582 b!6212587) bm!520821))

(assert (= (or b!6212578 bm!520824) bm!520822))

(assert (= (or b!6212578 bm!520821) bm!520823))

(assert (= (or b!6212586 bm!520823) bm!520825))

(assert (= (or b!6212586 b!6212578) bm!520820))

(declare-fun m!7042264 () Bool)

(assert (=> b!6212579 m!7042264))

(declare-fun m!7042266 () Bool)

(assert (=> b!6212584 m!7042266))

(declare-fun m!7042268 () Bool)

(assert (=> bm!520825 m!7042268))

(declare-fun m!7042270 () Bool)

(assert (=> bm!520820 m!7042270))

(declare-fun m!7042272 () Bool)

(assert (=> bm!520822 m!7042272))

(assert (=> bm!520614 d!1947444))

(assert (=> b!6211443 d!1947370))

(declare-fun d!1947446 () Bool)

(assert (=> d!1947446 (= (isEmpty!36622 (tail!11892 (unfocusZipperList!1570 zl!343))) ((_ is Nil!64622) (tail!11892 (unfocusZipperList!1570 zl!343))))))

(assert (=> b!6211528 d!1947446))

(declare-fun d!1947448 () Bool)

(assert (=> d!1947448 (= (tail!11892 (unfocusZipperList!1570 zl!343)) (t!378270 (unfocusZipperList!1570 zl!343)))))

(assert (=> b!6211528 d!1947448))

(assert (=> d!1947014 d!1947008))

(assert (=> d!1947014 d!1947374))

(assert (=> d!1947014 d!1947018))

(declare-fun d!1947450 () Bool)

(assert (=> d!1947450 (= (Exists!3219 lambda!339420) (choose!46159 lambda!339420))))

(declare-fun bs!1540963 () Bool)

(assert (= bs!1540963 d!1947450))

(declare-fun m!7042274 () Bool)

(assert (=> bs!1540963 m!7042274))

(assert (=> d!1947014 d!1947450))

(declare-fun bs!1540964 () Bool)

(declare-fun d!1947452 () Bool)

(assert (= bs!1540964 (and d!1947452 d!1947014)))

(declare-fun lambda!339495 () Int)

(assert (=> bs!1540964 (= lambda!339495 lambda!339420)))

(declare-fun bs!1540965 () Bool)

(assert (= bs!1540965 (and d!1947452 b!6210980)))

(assert (=> bs!1540965 (= lambda!339495 lambda!339381)))

(declare-fun bs!1540966 () Bool)

(assert (= bs!1540966 (and d!1947452 d!1947016)))

(assert (=> bs!1540966 (= lambda!339495 lambda!339425)))

(declare-fun bs!1540967 () Bool)

(assert (= bs!1540967 (and d!1947452 b!6211609)))

(assert (=> bs!1540967 (not (= lambda!339495 lambda!339438))))

(declare-fun bs!1540968 () Bool)

(assert (= bs!1540968 (and d!1947452 b!6212572)))

(assert (=> bs!1540968 (not (= lambda!339495 lambda!339492))))

(declare-fun bs!1540969 () Bool)

(assert (= bs!1540969 (and d!1947452 b!6212511)))

(assert (=> bs!1540969 (not (= lambda!339495 lambda!339486))))

(assert (=> bs!1540965 (not (= lambda!339495 lambda!339382))))

(declare-fun bs!1540970 () Bool)

(assert (= bs!1540970 (and d!1947452 b!6211605)))

(assert (=> bs!1540970 (not (= lambda!339495 lambda!339437))))

(assert (=> bs!1540966 (not (= lambda!339495 lambda!339426))))

(declare-fun bs!1540971 () Bool)

(assert (= bs!1540971 (and d!1947452 b!6212568)))

(assert (=> bs!1540971 (not (= lambda!339495 lambda!339491))))

(declare-fun bs!1540972 () Bool)

(assert (= bs!1540972 (and d!1947452 b!6212507)))

(assert (=> bs!1540972 (not (= lambda!339495 lambda!339485))))

(assert (=> d!1947452 true))

(assert (=> d!1947452 true))

(assert (=> d!1947452 true))

(assert (=> d!1947452 (= (isDefined!12743 (findConcatSeparation!2454 (regOne!32810 r!7292) (regTwo!32810 r!7292) Nil!64624 s!2326 s!2326)) (Exists!3219 lambda!339495))))

(assert (=> d!1947452 true))

(declare-fun _$89!2371 () Unit!157927)

(assert (=> d!1947452 (= (choose!46160 (regOne!32810 r!7292) (regTwo!32810 r!7292) s!2326) _$89!2371)))

(declare-fun bs!1540973 () Bool)

(assert (= bs!1540973 d!1947452))

(assert (=> bs!1540973 m!7040968))

(assert (=> bs!1540973 m!7040968))

(assert (=> bs!1540973 m!7040970))

(declare-fun m!7042276 () Bool)

(assert (=> bs!1540973 m!7042276))

(assert (=> d!1947014 d!1947452))

(assert (=> bm!520639 d!1947302))

(declare-fun b!6212595 () Bool)

(declare-fun res!2568518 () Bool)

(declare-fun e!3782301 () Bool)

(assert (=> b!6212595 (=> (not res!2568518) (not e!3782301))))

(declare-fun lt!2343973 () List!64748)

(assert (=> b!6212595 (= res!2568518 (= (size!40276 lt!2343973) (+ (size!40276 (_1!36431 (get!22317 lt!2343905))) (size!40276 (_2!36431 (get!22317 lt!2343905))))))))

(declare-fun b!6212596 () Bool)

(assert (=> b!6212596 (= e!3782301 (or (not (= (_2!36431 (get!22317 lt!2343905)) Nil!64624)) (= lt!2343973 (_1!36431 (get!22317 lt!2343905)))))))

(declare-fun b!6212594 () Bool)

(declare-fun e!3782300 () List!64748)

(assert (=> b!6212594 (= e!3782300 (Cons!64624 (h!71072 (_1!36431 (get!22317 lt!2343905))) (++!14227 (t!378272 (_1!36431 (get!22317 lt!2343905))) (_2!36431 (get!22317 lt!2343905)))))))

(declare-fun b!6212593 () Bool)

(assert (=> b!6212593 (= e!3782300 (_2!36431 (get!22317 lt!2343905)))))

(declare-fun d!1947454 () Bool)

(assert (=> d!1947454 e!3782301))

(declare-fun res!2568517 () Bool)

(assert (=> d!1947454 (=> (not res!2568517) (not e!3782301))))

(assert (=> d!1947454 (= res!2568517 (= (content!12094 lt!2343973) ((_ map or) (content!12094 (_1!36431 (get!22317 lt!2343905))) (content!12094 (_2!36431 (get!22317 lt!2343905))))))))

(assert (=> d!1947454 (= lt!2343973 e!3782300)))

(declare-fun c!1122057 () Bool)

(assert (=> d!1947454 (= c!1122057 ((_ is Nil!64624) (_1!36431 (get!22317 lt!2343905))))))

(assert (=> d!1947454 (= (++!14227 (_1!36431 (get!22317 lt!2343905)) (_2!36431 (get!22317 lt!2343905))) lt!2343973)))

(assert (= (and d!1947454 c!1122057) b!6212593))

(assert (= (and d!1947454 (not c!1122057)) b!6212594))

(assert (= (and d!1947454 res!2568517) b!6212595))

(assert (= (and b!6212595 res!2568518) b!6212596))

(declare-fun m!7042278 () Bool)

(assert (=> b!6212595 m!7042278))

(declare-fun m!7042280 () Bool)

(assert (=> b!6212595 m!7042280))

(declare-fun m!7042282 () Bool)

(assert (=> b!6212595 m!7042282))

(declare-fun m!7042284 () Bool)

(assert (=> b!6212594 m!7042284))

(declare-fun m!7042286 () Bool)

(assert (=> d!1947454 m!7042286))

(declare-fun m!7042288 () Bool)

(assert (=> d!1947454 m!7042288))

(declare-fun m!7042290 () Bool)

(assert (=> d!1947454 m!7042290))

(assert (=> b!6211447 d!1947454))

(declare-fun d!1947456 () Bool)

(assert (=> d!1947456 (= (get!22317 lt!2343905) (v!52184 lt!2343905))))

(assert (=> b!6211447 d!1947456))

(declare-fun d!1947458 () Bool)

(assert (=> d!1947458 true))

(declare-fun setRes!42181 () Bool)

(assert (=> d!1947458 setRes!42181))

(declare-fun condSetEmpty!42181 () Bool)

(declare-fun res!2568521 () (InoxSet Context!11066))

(assert (=> d!1947458 (= condSetEmpty!42181 (= res!2568521 ((as const (Array Context!11066 Bool)) false)))))

(assert (=> d!1947458 (= (choose!46162 z!1189 lambda!339383) res!2568521)))

(declare-fun setIsEmpty!42181 () Bool)

(assert (=> setIsEmpty!42181 setRes!42181))

(declare-fun setNonEmpty!42181 () Bool)

(declare-fun e!3782304 () Bool)

(declare-fun tp!1733011 () Bool)

(declare-fun setElem!42181 () Context!11066)

(assert (=> setNonEmpty!42181 (= setRes!42181 (and tp!1733011 (inv!83619 setElem!42181) e!3782304))))

(declare-fun setRest!42181 () (InoxSet Context!11066))

(assert (=> setNonEmpty!42181 (= res!2568521 ((_ map or) (store ((as const (Array Context!11066 Bool)) false) setElem!42181 true) setRest!42181))))

(declare-fun b!6212599 () Bool)

(declare-fun tp!1733012 () Bool)

(assert (=> b!6212599 (= e!3782304 tp!1733012)))

(assert (= (and d!1947458 condSetEmpty!42181) setIsEmpty!42181))

(assert (= (and d!1947458 (not condSetEmpty!42181)) setNonEmpty!42181))

(assert (= setNonEmpty!42181 b!6212599))

(declare-fun m!7042292 () Bool)

(assert (=> setNonEmpty!42181 m!7042292))

(assert (=> d!1947020 d!1947458))

(assert (=> d!1946988 d!1947322))

(declare-fun d!1947460 () Bool)

(declare-fun res!2568526 () Bool)

(declare-fun e!3782309 () Bool)

(assert (=> d!1947460 (=> res!2568526 e!3782309)))

(assert (=> d!1947460 (= res!2568526 ((_ is Nil!64623) lt!2343917))))

(assert (=> d!1947460 (= (noDuplicate!1987 lt!2343917) e!3782309)))

(declare-fun b!6212604 () Bool)

(declare-fun e!3782310 () Bool)

(assert (=> b!6212604 (= e!3782309 e!3782310)))

(declare-fun res!2568527 () Bool)

(assert (=> b!6212604 (=> (not res!2568527) (not e!3782310))))

(declare-fun contains!20090 (List!64747 Context!11066) Bool)

(assert (=> b!6212604 (= res!2568527 (not (contains!20090 (t!378271 lt!2343917) (h!71071 lt!2343917))))))

(declare-fun b!6212605 () Bool)

(assert (=> b!6212605 (= e!3782310 (noDuplicate!1987 (t!378271 lt!2343917)))))

(assert (= (and d!1947460 (not res!2568526)) b!6212604))

(assert (= (and b!6212604 res!2568527) b!6212605))

(declare-fun m!7042294 () Bool)

(assert (=> b!6212604 m!7042294))

(declare-fun m!7042296 () Bool)

(assert (=> b!6212605 m!7042296))

(assert (=> d!1947034 d!1947460))

(declare-fun d!1947462 () Bool)

(declare-fun e!3782317 () Bool)

(assert (=> d!1947462 e!3782317))

(declare-fun res!2568532 () Bool)

(assert (=> d!1947462 (=> (not res!2568532) (not e!3782317))))

(declare-fun res!2568533 () List!64747)

(assert (=> d!1947462 (= res!2568532 (noDuplicate!1987 res!2568533))))

(declare-fun e!3782319 () Bool)

(assert (=> d!1947462 e!3782319))

(assert (=> d!1947462 (= (choose!46164 z!1189) res!2568533)))

(declare-fun b!6212613 () Bool)

(declare-fun e!3782318 () Bool)

(declare-fun tp!1733017 () Bool)

(assert (=> b!6212613 (= e!3782318 tp!1733017)))

(declare-fun tp!1733018 () Bool)

(declare-fun b!6212612 () Bool)

(assert (=> b!6212612 (= e!3782319 (and (inv!83619 (h!71071 res!2568533)) e!3782318 tp!1733018))))

(declare-fun b!6212614 () Bool)

(assert (=> b!6212614 (= e!3782317 (= (content!12092 res!2568533) z!1189))))

(assert (= b!6212612 b!6212613))

(assert (= (and d!1947462 ((_ is Cons!64623) res!2568533)) b!6212612))

(assert (= (and d!1947462 res!2568532) b!6212614))

(declare-fun m!7042298 () Bool)

(assert (=> d!1947462 m!7042298))

(declare-fun m!7042300 () Bool)

(assert (=> b!6212612 m!7042300))

(declare-fun m!7042302 () Bool)

(assert (=> b!6212614 m!7042302))

(assert (=> d!1947034 d!1947462))

(declare-fun d!1947464 () Bool)

(assert (=> d!1947464 (= ($colon$colon!2018 (exprs!6033 lt!2343834) (ite (or c!1121740 c!1121741) (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (regTwo!32810 (regOne!32810 r!7292)))) (Cons!64622 (ite (or c!1121740 c!1121741) (regTwo!32810 (regTwo!32810 (regOne!32810 r!7292))) (regTwo!32810 (regOne!32810 r!7292))) (exprs!6033 lt!2343834)))))

(assert (=> bm!520601 d!1947464))

(declare-fun bs!1540974 () Bool)

(declare-fun d!1947466 () Bool)

(assert (= bs!1540974 (and d!1947466 d!1947422)))

(declare-fun lambda!339496 () Int)

(assert (=> bs!1540974 (= lambda!339496 lambda!339490)))

(assert (=> d!1947466 (= (nullableZipper!1923 lt!2343840) (exists!2482 lt!2343840 lambda!339496))))

(declare-fun bs!1540975 () Bool)

(assert (= bs!1540975 d!1947466))

(declare-fun m!7042304 () Bool)

(assert (=> bs!1540975 m!7042304))

(assert (=> b!6211570 d!1947466))

(declare-fun bm!520826 () Bool)

(declare-fun call!520831 () (InoxSet Context!11066))

(assert (=> bm!520826 (= call!520831 (derivationStepZipperDown!1397 (h!71070 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))))) (Context!11067 (t!378270 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))))))) (h!71072 s!2326)))))

(declare-fun e!3782321 () (InoxSet Context!11066))

(declare-fun b!6212615 () Bool)

(assert (=> b!6212615 (= e!3782321 ((_ map or) call!520831 (derivationStepZipperUp!1323 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))))))) (h!71072 s!2326))))))

(declare-fun d!1947468 () Bool)

(declare-fun c!1122059 () Bool)

(declare-fun e!3782322 () Bool)

(assert (=> d!1947468 (= c!1122059 e!3782322)))

(declare-fun res!2568534 () Bool)

(assert (=> d!1947468 (=> (not res!2568534) (not e!3782322))))

(assert (=> d!1947468 (= res!2568534 ((_ is Cons!64622) (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))))))))

(assert (=> d!1947468 (= (derivationStepZipperUp!1323 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))) (h!71072 s!2326)) e!3782321)))

(declare-fun b!6212616 () Bool)

(declare-fun e!3782320 () (InoxSet Context!11066))

(assert (=> b!6212616 (= e!3782320 ((as const (Array Context!11066 Bool)) false))))

(declare-fun b!6212617 () Bool)

(assert (=> b!6212617 (= e!3782322 (nullable!6142 (h!71070 (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343))))))))))))))

(declare-fun b!6212618 () Bool)

(assert (=> b!6212618 (= e!3782320 call!520831)))

(declare-fun b!6212619 () Bool)

(assert (=> b!6212619 (= e!3782321 e!3782320)))

(declare-fun c!1122058 () Bool)

(assert (=> b!6212619 (= c!1122058 ((_ is Cons!64622) (exprs!6033 (Context!11067 (t!378270 (exprs!6033 (Context!11067 (Cons!64622 (h!71070 (exprs!6033 (h!71071 zl!343))) (t!378270 (exprs!6033 (h!71071 zl!343)))))))))))))

(assert (= (and d!1947468 res!2568534) b!6212617))

(assert (= (and d!1947468 c!1122059) b!6212615))

(assert (= (and d!1947468 (not c!1122059)) b!6212619))

(assert (= (and b!6212619 c!1122058) b!6212618))

(assert (= (and b!6212619 (not c!1122058)) b!6212616))

(assert (= (or b!6212615 b!6212618) bm!520826))

(declare-fun m!7042306 () Bool)

(assert (=> bm!520826 m!7042306))

(declare-fun m!7042308 () Bool)

(assert (=> b!6212615 m!7042308))

(declare-fun m!7042310 () Bool)

(assert (=> b!6212617 m!7042310))

(assert (=> b!6211473 d!1947468))

(declare-fun bs!1540976 () Bool)

(declare-fun d!1947470 () Bool)

(assert (= bs!1540976 (and d!1947470 d!1947348)))

(declare-fun lambda!339497 () Int)

(assert (=> bs!1540976 (= lambda!339497 lambda!339482)))

(declare-fun bs!1540977 () Bool)

(assert (= bs!1540977 (and d!1947470 d!1947044)))

(assert (=> bs!1540977 (= lambda!339497 lambda!339429)))

(declare-fun bs!1540978 () Bool)

(assert (= bs!1540978 (and d!1947470 d!1946998)))

(assert (=> bs!1540978 (= lambda!339497 lambda!339416)))

(declare-fun bs!1540979 () Bool)

(assert (= bs!1540979 (and d!1947470 d!1947416)))

(assert (=> bs!1540979 (= lambda!339497 lambda!339487)))

(declare-fun bs!1540980 () Bool)

(assert (= bs!1540980 (and d!1947470 d!1947062)))

(assert (=> bs!1540980 (= lambda!339497 lambda!339441)))

(declare-fun bs!1540981 () Bool)

(assert (= bs!1540981 (and d!1947470 d!1947388)))

(assert (=> bs!1540981 (= lambda!339497 lambda!339484)))

(declare-fun bs!1540982 () Bool)

(assert (= bs!1540982 (and d!1947470 d!1947326)))

(assert (=> bs!1540982 (= lambda!339497 lambda!339479)))

(declare-fun bs!1540983 () Bool)

(assert (= bs!1540983 (and d!1947470 d!1947046)))

(assert (=> bs!1540983 (= lambda!339497 lambda!339432)))

(declare-fun bs!1540984 () Bool)

(assert (= bs!1540984 (and d!1947470 d!1947006)))

(assert (=> bs!1540984 (= lambda!339497 lambda!339417)))

(declare-fun bs!1540985 () Bool)

(assert (= bs!1540985 (and d!1947470 d!1946990)))

(assert (=> bs!1540985 (= lambda!339497 lambda!339415)))

(declare-fun b!6212620 () Bool)

(declare-fun e!3782328 () Regex!16149)

(assert (=> b!6212620 (= e!3782328 (Concat!24994 (h!71070 (t!378270 (exprs!6033 (h!71071 zl!343)))) (generalisedConcat!1746 (t!378270 (t!378270 (exprs!6033 (h!71071 zl!343)))))))))

(declare-fun b!6212621 () Bool)

(declare-fun e!3782327 () Bool)

(declare-fun lt!2343974 () Regex!16149)

(assert (=> b!6212621 (= e!3782327 (= lt!2343974 (head!12807 (t!378270 (exprs!6033 (h!71071 zl!343))))))))

(declare-fun b!6212622 () Bool)

(assert (=> b!6212622 (= e!3782328 EmptyExpr!16149)))

(declare-fun b!6212623 () Bool)

(declare-fun e!3782323 () Bool)

(assert (=> b!6212623 (= e!3782323 e!3782327)))

(declare-fun c!1122060 () Bool)

(assert (=> b!6212623 (= c!1122060 (isEmpty!36622 (tail!11892 (t!378270 (exprs!6033 (h!71071 zl!343))))))))

(declare-fun b!6212624 () Bool)

(declare-fun e!3782324 () Regex!16149)

(assert (=> b!6212624 (= e!3782324 e!3782328)))

(declare-fun c!1122062 () Bool)

(assert (=> b!6212624 (= c!1122062 ((_ is Cons!64622) (t!378270 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun b!6212625 () Bool)

(declare-fun e!3782326 () Bool)

(assert (=> b!6212625 (= e!3782326 (isEmpty!36622 (t!378270 (t!378270 (exprs!6033 (h!71071 zl!343))))))))

(declare-fun b!6212626 () Bool)

(assert (=> b!6212626 (= e!3782327 (isConcat!1082 lt!2343974))))

(declare-fun e!3782325 () Bool)

(assert (=> d!1947470 e!3782325))

(declare-fun res!2568536 () Bool)

(assert (=> d!1947470 (=> (not res!2568536) (not e!3782325))))

(assert (=> d!1947470 (= res!2568536 (validRegex!7885 lt!2343974))))

(assert (=> d!1947470 (= lt!2343974 e!3782324)))

(declare-fun c!1122061 () Bool)

(assert (=> d!1947470 (= c!1122061 e!3782326)))

(declare-fun res!2568535 () Bool)

(assert (=> d!1947470 (=> (not res!2568535) (not e!3782326))))

(assert (=> d!1947470 (= res!2568535 ((_ is Cons!64622) (t!378270 (exprs!6033 (h!71071 zl!343)))))))

(assert (=> d!1947470 (forall!15263 (t!378270 (exprs!6033 (h!71071 zl!343))) lambda!339497)))

(assert (=> d!1947470 (= (generalisedConcat!1746 (t!378270 (exprs!6033 (h!71071 zl!343)))) lt!2343974)))

(declare-fun b!6212627 () Bool)

(assert (=> b!6212627 (= e!3782324 (h!71070 (t!378270 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun b!6212628 () Bool)

(assert (=> b!6212628 (= e!3782325 e!3782323)))

(declare-fun c!1122063 () Bool)

(assert (=> b!6212628 (= c!1122063 (isEmpty!36622 (t!378270 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun b!6212629 () Bool)

(assert (=> b!6212629 (= e!3782323 (isEmptyExpr!1559 lt!2343974))))

(assert (= (and d!1947470 res!2568535) b!6212625))

(assert (= (and d!1947470 c!1122061) b!6212627))

(assert (= (and d!1947470 (not c!1122061)) b!6212624))

(assert (= (and b!6212624 c!1122062) b!6212620))

(assert (= (and b!6212624 (not c!1122062)) b!6212622))

(assert (= (and d!1947470 res!2568536) b!6212628))

(assert (= (and b!6212628 c!1122063) b!6212629))

(assert (= (and b!6212628 (not c!1122063)) b!6212623))

(assert (= (and b!6212623 c!1122060) b!6212621))

(assert (= (and b!6212623 (not c!1122060)) b!6212626))

(declare-fun m!7042312 () Bool)

(assert (=> b!6212621 m!7042312))

(declare-fun m!7042314 () Bool)

(assert (=> b!6212626 m!7042314))

(declare-fun m!7042316 () Bool)

(assert (=> d!1947470 m!7042316))

(declare-fun m!7042318 () Bool)

(assert (=> d!1947470 m!7042318))

(declare-fun m!7042320 () Bool)

(assert (=> b!6212623 m!7042320))

(assert (=> b!6212623 m!7042320))

(declare-fun m!7042322 () Bool)

(assert (=> b!6212623 m!7042322))

(assert (=> b!6212628 m!7040914))

(declare-fun m!7042324 () Bool)

(assert (=> b!6212625 m!7042324))

(declare-fun m!7042326 () Bool)

(assert (=> b!6212620 m!7042326))

(declare-fun m!7042328 () Bool)

(assert (=> b!6212629 m!7042328))

(assert (=> b!6211677 d!1947470))

(declare-fun bs!1540986 () Bool)

(declare-fun d!1947472 () Bool)

(assert (= bs!1540986 (and d!1947472 d!1947422)))

(declare-fun lambda!339498 () Int)

(assert (=> bs!1540986 (= lambda!339498 lambda!339490)))

(declare-fun bs!1540987 () Bool)

(assert (= bs!1540987 (and d!1947472 d!1947466)))

(assert (=> bs!1540987 (= lambda!339498 lambda!339496)))

(assert (=> d!1947472 (= (nullableZipper!1923 lt!2343847) (exists!2482 lt!2343847 lambda!339498))))

(declare-fun bs!1540988 () Bool)

(assert (= bs!1540988 d!1947472))

(declare-fun m!7042330 () Bool)

(assert (=> bs!1540988 m!7042330))

(assert (=> b!6211376 d!1947472))

(declare-fun d!1947474 () Bool)

(declare-fun res!2568537 () Bool)

(declare-fun e!3782329 () Bool)

(assert (=> d!1947474 (=> res!2568537 e!3782329)))

(assert (=> d!1947474 (= res!2568537 ((_ is Nil!64622) (exprs!6033 lt!2343849)))))

(assert (=> d!1947474 (= (forall!15263 (exprs!6033 lt!2343849) lambda!339416) e!3782329)))

(declare-fun b!6212630 () Bool)

(declare-fun e!3782330 () Bool)

(assert (=> b!6212630 (= e!3782329 e!3782330)))

(declare-fun res!2568538 () Bool)

(assert (=> b!6212630 (=> (not res!2568538) (not e!3782330))))

(assert (=> b!6212630 (= res!2568538 (dynLambda!25493 lambda!339416 (h!71070 (exprs!6033 lt!2343849))))))

(declare-fun b!6212631 () Bool)

(assert (=> b!6212631 (= e!3782330 (forall!15263 (t!378270 (exprs!6033 lt!2343849)) lambda!339416))))

(assert (= (and d!1947474 (not res!2568537)) b!6212630))

(assert (= (and b!6212630 res!2568538) b!6212631))

(declare-fun b_lambda!236219 () Bool)

(assert (=> (not b_lambda!236219) (not b!6212630)))

(declare-fun m!7042332 () Bool)

(assert (=> b!6212630 m!7042332))

(declare-fun m!7042334 () Bool)

(assert (=> b!6212631 m!7042334))

(assert (=> d!1946998 d!1947474))

(assert (=> b!6211506 d!1946988))

(declare-fun b!6212632 () Bool)

(declare-fun res!2568543 () Bool)

(declare-fun e!3782331 () Bool)

(assert (=> b!6212632 (=> (not res!2568543) (not e!3782331))))

(declare-fun call!520832 () Bool)

(assert (=> b!6212632 (= res!2568543 (not call!520832))))

(declare-fun b!6212633 () Bool)

(declare-fun e!3782334 () Bool)

(declare-fun e!3782332 () Bool)

(assert (=> b!6212633 (= e!3782334 e!3782332)))

(declare-fun c!1122066 () Bool)

(assert (=> b!6212633 (= c!1122066 ((_ is EmptyLang!16149) (derivativeStep!4862 r!7292 (head!12806 s!2326))))))

(declare-fun b!6212634 () Bool)

(declare-fun e!3782333 () Bool)

(declare-fun e!3782337 () Bool)

(assert (=> b!6212634 (= e!3782333 e!3782337)))

(declare-fun res!2568542 () Bool)

(assert (=> b!6212634 (=> res!2568542 e!3782337)))

(assert (=> b!6212634 (= res!2568542 call!520832)))

(declare-fun bm!520827 () Bool)

(assert (=> bm!520827 (= call!520832 (isEmpty!36626 (tail!11891 s!2326)))))

(declare-fun d!1947476 () Bool)

(assert (=> d!1947476 e!3782334))

(declare-fun c!1122064 () Bool)

(assert (=> d!1947476 (= c!1122064 ((_ is EmptyExpr!16149) (derivativeStep!4862 r!7292 (head!12806 s!2326))))))

(declare-fun lt!2343975 () Bool)

(declare-fun e!3782335 () Bool)

(assert (=> d!1947476 (= lt!2343975 e!3782335)))

(declare-fun c!1122065 () Bool)

(assert (=> d!1947476 (= c!1122065 (isEmpty!36626 (tail!11891 s!2326)))))

(assert (=> d!1947476 (validRegex!7885 (derivativeStep!4862 r!7292 (head!12806 s!2326)))))

(assert (=> d!1947476 (= (matchR!8332 (derivativeStep!4862 r!7292 (head!12806 s!2326)) (tail!11891 s!2326)) lt!2343975)))

(declare-fun b!6212635 () Bool)

(assert (=> b!6212635 (= e!3782337 (not (= (head!12806 (tail!11891 s!2326)) (c!1121618 (derivativeStep!4862 r!7292 (head!12806 s!2326))))))))

(declare-fun b!6212636 () Bool)

(assert (=> b!6212636 (= e!3782334 (= lt!2343975 call!520832))))

(declare-fun b!6212637 () Bool)

(assert (=> b!6212637 (= e!3782331 (= (head!12806 (tail!11891 s!2326)) (c!1121618 (derivativeStep!4862 r!7292 (head!12806 s!2326)))))))

(declare-fun b!6212638 () Bool)

(assert (=> b!6212638 (= e!3782332 (not lt!2343975))))

(declare-fun b!6212639 () Bool)

(declare-fun res!2568546 () Bool)

(declare-fun e!3782336 () Bool)

(assert (=> b!6212639 (=> res!2568546 e!3782336)))

(assert (=> b!6212639 (= res!2568546 (not ((_ is ElementMatch!16149) (derivativeStep!4862 r!7292 (head!12806 s!2326)))))))

(assert (=> b!6212639 (= e!3782332 e!3782336)))

(declare-fun b!6212640 () Bool)

(assert (=> b!6212640 (= e!3782335 (nullable!6142 (derivativeStep!4862 r!7292 (head!12806 s!2326))))))

(declare-fun b!6212641 () Bool)

(declare-fun res!2568539 () Bool)

(assert (=> b!6212641 (=> (not res!2568539) (not e!3782331))))

(assert (=> b!6212641 (= res!2568539 (isEmpty!36626 (tail!11891 (tail!11891 s!2326))))))

(declare-fun b!6212642 () Bool)

(declare-fun res!2568544 () Bool)

(assert (=> b!6212642 (=> res!2568544 e!3782337)))

(assert (=> b!6212642 (= res!2568544 (not (isEmpty!36626 (tail!11891 (tail!11891 s!2326)))))))

(declare-fun b!6212643 () Bool)

(assert (=> b!6212643 (= e!3782336 e!3782333)))

(declare-fun res!2568540 () Bool)

(assert (=> b!6212643 (=> (not res!2568540) (not e!3782333))))

(assert (=> b!6212643 (= res!2568540 (not lt!2343975))))

(declare-fun b!6212644 () Bool)

(assert (=> b!6212644 (= e!3782335 (matchR!8332 (derivativeStep!4862 (derivativeStep!4862 r!7292 (head!12806 s!2326)) (head!12806 (tail!11891 s!2326))) (tail!11891 (tail!11891 s!2326))))))

(declare-fun b!6212645 () Bool)

(declare-fun res!2568545 () Bool)

(assert (=> b!6212645 (=> res!2568545 e!3782336)))

(assert (=> b!6212645 (= res!2568545 e!3782331)))

(declare-fun res!2568541 () Bool)

(assert (=> b!6212645 (=> (not res!2568541) (not e!3782331))))

(assert (=> b!6212645 (= res!2568541 lt!2343975)))

(assert (= (and d!1947476 c!1122065) b!6212640))

(assert (= (and d!1947476 (not c!1122065)) b!6212644))

(assert (= (and d!1947476 c!1122064) b!6212636))

(assert (= (and d!1947476 (not c!1122064)) b!6212633))

(assert (= (and b!6212633 c!1122066) b!6212638))

(assert (= (and b!6212633 (not c!1122066)) b!6212639))

(assert (= (and b!6212639 (not res!2568546)) b!6212645))

(assert (= (and b!6212645 res!2568541) b!6212632))

(assert (= (and b!6212632 res!2568543) b!6212641))

(assert (= (and b!6212641 res!2568539) b!6212637))

(assert (= (and b!6212645 (not res!2568545)) b!6212643))

(assert (= (and b!6212643 res!2568540) b!6212634))

(assert (= (and b!6212634 (not res!2568542)) b!6212642))

(assert (= (and b!6212642 (not res!2568544)) b!6212635))

(assert (= (or b!6212636 b!6212632 b!6212634) bm!520827))

(assert (=> b!6212642 m!7041416))

(declare-fun m!7042336 () Bool)

(assert (=> b!6212642 m!7042336))

(assert (=> b!6212642 m!7042336))

(declare-fun m!7042338 () Bool)

(assert (=> b!6212642 m!7042338))

(assert (=> b!6212644 m!7041416))

(declare-fun m!7042340 () Bool)

(assert (=> b!6212644 m!7042340))

(assert (=> b!6212644 m!7041422))

(assert (=> b!6212644 m!7042340))

(declare-fun m!7042342 () Bool)

(assert (=> b!6212644 m!7042342))

(assert (=> b!6212644 m!7041416))

(assert (=> b!6212644 m!7042336))

(assert (=> b!6212644 m!7042342))

(assert (=> b!6212644 m!7042336))

(declare-fun m!7042344 () Bool)

(assert (=> b!6212644 m!7042344))

(assert (=> b!6212637 m!7041416))

(assert (=> b!6212637 m!7042340))

(assert (=> b!6212635 m!7041416))

(assert (=> b!6212635 m!7042340))

(assert (=> b!6212640 m!7041422))

(declare-fun m!7042346 () Bool)

(assert (=> b!6212640 m!7042346))

(assert (=> bm!520827 m!7041416))

(assert (=> bm!520827 m!7041418))

(assert (=> d!1947476 m!7041416))

(assert (=> d!1947476 m!7041418))

(assert (=> d!1947476 m!7041422))

(declare-fun m!7042348 () Bool)

(assert (=> d!1947476 m!7042348))

(assert (=> b!6212641 m!7041416))

(assert (=> b!6212641 m!7042336))

(assert (=> b!6212641 m!7042336))

(assert (=> b!6212641 m!7042338))

(assert (=> b!6211655 d!1947476))

(declare-fun bm!520836 () Bool)

(declare-fun call!520844 () Regex!16149)

(declare-fun call!520842 () Regex!16149)

(assert (=> bm!520836 (= call!520844 call!520842)))

(declare-fun b!6212667 () Bool)

(declare-fun e!3782350 () Regex!16149)

(declare-fun e!3782351 () Regex!16149)

(assert (=> b!6212667 (= e!3782350 e!3782351)))

(declare-fun c!1122081 () Bool)

(assert (=> b!6212667 (= c!1122081 ((_ is Star!16149) r!7292))))

(declare-fun b!6212668 () Bool)

(declare-fun e!3782352 () Regex!16149)

(declare-fun e!3782349 () Regex!16149)

(assert (=> b!6212668 (= e!3782352 e!3782349)))

(declare-fun c!1122077 () Bool)

(assert (=> b!6212668 (= c!1122077 ((_ is ElementMatch!16149) r!7292))))

(declare-fun b!6212669 () Bool)

(declare-fun call!520841 () Regex!16149)

(assert (=> b!6212669 (= e!3782350 (Union!16149 call!520841 call!520842))))

(declare-fun bm!520837 () Bool)

(declare-fun call!520843 () Regex!16149)

(assert (=> bm!520837 (= call!520843 call!520841)))

(declare-fun b!6212670 () Bool)

(assert (=> b!6212670 (= e!3782351 (Concat!24994 call!520844 r!7292))))

(declare-fun b!6212671 () Bool)

(assert (=> b!6212671 (= e!3782352 EmptyLang!16149)))

(declare-fun b!6212672 () Bool)

(assert (=> b!6212672 (= e!3782349 (ite (= (head!12806 s!2326) (c!1121618 r!7292)) EmptyExpr!16149 EmptyLang!16149))))

(declare-fun bm!520838 () Bool)

(declare-fun c!1122080 () Bool)

(declare-fun c!1122078 () Bool)

(assert (=> bm!520838 (= call!520841 (derivativeStep!4862 (ite c!1122080 (regOne!32811 r!7292) (ite c!1122078 (regTwo!32810 r!7292) (regOne!32810 r!7292))) (head!12806 s!2326)))))

(declare-fun b!6212673 () Bool)

(assert (=> b!6212673 (= c!1122080 ((_ is Union!16149) r!7292))))

(assert (=> b!6212673 (= e!3782349 e!3782350)))

(declare-fun bm!520839 () Bool)

(assert (=> bm!520839 (= call!520842 (derivativeStep!4862 (ite c!1122080 (regTwo!32811 r!7292) (ite c!1122081 (reg!16478 r!7292) (regOne!32810 r!7292))) (head!12806 s!2326)))))

(declare-fun d!1947478 () Bool)

(declare-fun lt!2343978 () Regex!16149)

(assert (=> d!1947478 (validRegex!7885 lt!2343978)))

(assert (=> d!1947478 (= lt!2343978 e!3782352)))

(declare-fun c!1122079 () Bool)

(assert (=> d!1947478 (= c!1122079 (or ((_ is EmptyExpr!16149) r!7292) ((_ is EmptyLang!16149) r!7292)))))

(assert (=> d!1947478 (validRegex!7885 r!7292)))

(assert (=> d!1947478 (= (derivativeStep!4862 r!7292 (head!12806 s!2326)) lt!2343978)))

(declare-fun b!6212666 () Bool)

(declare-fun e!3782348 () Regex!16149)

(assert (=> b!6212666 (= e!3782348 (Union!16149 (Concat!24994 call!520844 (regTwo!32810 r!7292)) call!520843))))

(declare-fun b!6212674 () Bool)

(assert (=> b!6212674 (= c!1122078 (nullable!6142 (regOne!32810 r!7292)))))

(assert (=> b!6212674 (= e!3782351 e!3782348)))

(declare-fun b!6212675 () Bool)

(assert (=> b!6212675 (= e!3782348 (Union!16149 (Concat!24994 call!520843 (regTwo!32810 r!7292)) EmptyLang!16149))))

(assert (= (and d!1947478 c!1122079) b!6212671))

(assert (= (and d!1947478 (not c!1122079)) b!6212668))

(assert (= (and b!6212668 c!1122077) b!6212672))

(assert (= (and b!6212668 (not c!1122077)) b!6212673))

(assert (= (and b!6212673 c!1122080) b!6212669))

(assert (= (and b!6212673 (not c!1122080)) b!6212667))

(assert (= (and b!6212667 c!1122081) b!6212670))

(assert (= (and b!6212667 (not c!1122081)) b!6212674))

(assert (= (and b!6212674 c!1122078) b!6212666))

(assert (= (and b!6212674 (not c!1122078)) b!6212675))

(assert (= (or b!6212666 b!6212675) bm!520837))

(assert (= (or b!6212670 b!6212666) bm!520836))

(assert (= (or b!6212669 bm!520836) bm!520839))

(assert (= (or b!6212669 bm!520837) bm!520838))

(assert (=> bm!520838 m!7041420))

(declare-fun m!7042350 () Bool)

(assert (=> bm!520838 m!7042350))

(assert (=> bm!520839 m!7041420))

(declare-fun m!7042352 () Bool)

(assert (=> bm!520839 m!7042352))

(declare-fun m!7042354 () Bool)

(assert (=> d!1947478 m!7042354))

(assert (=> d!1947478 m!7040948))

(assert (=> b!6212674 m!7042066))

(assert (=> b!6211655 d!1947478))

(assert (=> b!6211655 d!1947324))

(assert (=> b!6211655 d!1947340))

(declare-fun b!6212676 () Bool)

(declare-fun res!2568551 () Bool)

(declare-fun e!3782353 () Bool)

(assert (=> b!6212676 (=> (not res!2568551) (not e!3782353))))

(declare-fun call!520845 () Bool)

(assert (=> b!6212676 (= res!2568551 (not call!520845))))

(declare-fun b!6212677 () Bool)

(declare-fun e!3782356 () Bool)

(declare-fun e!3782354 () Bool)

(assert (=> b!6212677 (= e!3782356 e!3782354)))

(declare-fun c!1122084 () Bool)

(assert (=> b!6212677 (= c!1122084 ((_ is EmptyLang!16149) (regOne!32810 r!7292)))))

(declare-fun b!6212678 () Bool)

(declare-fun e!3782355 () Bool)

(declare-fun e!3782359 () Bool)

(assert (=> b!6212678 (= e!3782355 e!3782359)))

(declare-fun res!2568550 () Bool)

(assert (=> b!6212678 (=> res!2568550 e!3782359)))

(assert (=> b!6212678 (= res!2568550 call!520845)))

(declare-fun bm!520840 () Bool)

(assert (=> bm!520840 (= call!520845 (isEmpty!36626 (_1!36431 (get!22317 lt!2343905))))))

(declare-fun d!1947480 () Bool)

(assert (=> d!1947480 e!3782356))

(declare-fun c!1122082 () Bool)

(assert (=> d!1947480 (= c!1122082 ((_ is EmptyExpr!16149) (regOne!32810 r!7292)))))

(declare-fun lt!2343979 () Bool)

(declare-fun e!3782357 () Bool)

(assert (=> d!1947480 (= lt!2343979 e!3782357)))

(declare-fun c!1122083 () Bool)

(assert (=> d!1947480 (= c!1122083 (isEmpty!36626 (_1!36431 (get!22317 lt!2343905))))))

(assert (=> d!1947480 (validRegex!7885 (regOne!32810 r!7292))))

(assert (=> d!1947480 (= (matchR!8332 (regOne!32810 r!7292) (_1!36431 (get!22317 lt!2343905))) lt!2343979)))

(declare-fun b!6212679 () Bool)

(assert (=> b!6212679 (= e!3782359 (not (= (head!12806 (_1!36431 (get!22317 lt!2343905))) (c!1121618 (regOne!32810 r!7292)))))))

(declare-fun b!6212680 () Bool)

(assert (=> b!6212680 (= e!3782356 (= lt!2343979 call!520845))))

(declare-fun b!6212681 () Bool)

(assert (=> b!6212681 (= e!3782353 (= (head!12806 (_1!36431 (get!22317 lt!2343905))) (c!1121618 (regOne!32810 r!7292))))))

(declare-fun b!6212682 () Bool)

(assert (=> b!6212682 (= e!3782354 (not lt!2343979))))

(declare-fun b!6212683 () Bool)

(declare-fun res!2568554 () Bool)

(declare-fun e!3782358 () Bool)

(assert (=> b!6212683 (=> res!2568554 e!3782358)))

(assert (=> b!6212683 (= res!2568554 (not ((_ is ElementMatch!16149) (regOne!32810 r!7292))))))

(assert (=> b!6212683 (= e!3782354 e!3782358)))

(declare-fun b!6212684 () Bool)

(assert (=> b!6212684 (= e!3782357 (nullable!6142 (regOne!32810 r!7292)))))

(declare-fun b!6212685 () Bool)

(declare-fun res!2568547 () Bool)

(assert (=> b!6212685 (=> (not res!2568547) (not e!3782353))))

(assert (=> b!6212685 (= res!2568547 (isEmpty!36626 (tail!11891 (_1!36431 (get!22317 lt!2343905)))))))

(declare-fun b!6212686 () Bool)

(declare-fun res!2568552 () Bool)

(assert (=> b!6212686 (=> res!2568552 e!3782359)))

(assert (=> b!6212686 (= res!2568552 (not (isEmpty!36626 (tail!11891 (_1!36431 (get!22317 lt!2343905))))))))

(declare-fun b!6212687 () Bool)

(assert (=> b!6212687 (= e!3782358 e!3782355)))

(declare-fun res!2568548 () Bool)

(assert (=> b!6212687 (=> (not res!2568548) (not e!3782355))))

(assert (=> b!6212687 (= res!2568548 (not lt!2343979))))

(declare-fun b!6212688 () Bool)

(assert (=> b!6212688 (= e!3782357 (matchR!8332 (derivativeStep!4862 (regOne!32810 r!7292) (head!12806 (_1!36431 (get!22317 lt!2343905)))) (tail!11891 (_1!36431 (get!22317 lt!2343905)))))))

(declare-fun b!6212689 () Bool)

(declare-fun res!2568553 () Bool)

(assert (=> b!6212689 (=> res!2568553 e!3782358)))

(assert (=> b!6212689 (= res!2568553 e!3782353)))

(declare-fun res!2568549 () Bool)

(assert (=> b!6212689 (=> (not res!2568549) (not e!3782353))))

(assert (=> b!6212689 (= res!2568549 lt!2343979)))

(assert (= (and d!1947480 c!1122083) b!6212684))

(assert (= (and d!1947480 (not c!1122083)) b!6212688))

(assert (= (and d!1947480 c!1122082) b!6212680))

(assert (= (and d!1947480 (not c!1122082)) b!6212677))

(assert (= (and b!6212677 c!1122084) b!6212682))

(assert (= (and b!6212677 (not c!1122084)) b!6212683))

(assert (= (and b!6212683 (not res!2568554)) b!6212689))

(assert (= (and b!6212689 res!2568549) b!6212676))

(assert (= (and b!6212676 res!2568551) b!6212685))

(assert (= (and b!6212685 res!2568547) b!6212681))

(assert (= (and b!6212689 (not res!2568553)) b!6212687))

(assert (= (and b!6212687 res!2568548) b!6212678))

(assert (= (and b!6212678 (not res!2568550)) b!6212686))

(assert (= (and b!6212686 (not res!2568552)) b!6212679))

(assert (= (or b!6212680 b!6212676 b!6212678) bm!520840))

(declare-fun m!7042356 () Bool)

(assert (=> b!6212686 m!7042356))

(assert (=> b!6212686 m!7042356))

(declare-fun m!7042358 () Bool)

(assert (=> b!6212686 m!7042358))

(declare-fun m!7042360 () Bool)

(assert (=> b!6212688 m!7042360))

(assert (=> b!6212688 m!7042360))

(declare-fun m!7042362 () Bool)

(assert (=> b!6212688 m!7042362))

(assert (=> b!6212688 m!7042356))

(assert (=> b!6212688 m!7042362))

(assert (=> b!6212688 m!7042356))

(declare-fun m!7042364 () Bool)

(assert (=> b!6212688 m!7042364))

(assert (=> b!6212681 m!7042360))

(assert (=> b!6212679 m!7042360))

(assert (=> b!6212684 m!7042066))

(declare-fun m!7042366 () Bool)

(assert (=> bm!520840 m!7042366))

(assert (=> d!1947480 m!7042366))

(assert (=> d!1947480 m!7041290))

(assert (=> b!6212685 m!7042356))

(assert (=> b!6212685 m!7042356))

(assert (=> b!6212685 m!7042358))

(assert (=> b!6211449 d!1947480))

(assert (=> b!6211449 d!1947456))

(declare-fun d!1947482 () Bool)

(assert (=> d!1947482 (= (head!12807 (unfocusZipperList!1570 zl!343)) (h!71070 (unfocusZipperList!1570 zl!343)))))

(assert (=> b!6211534 d!1947482))

(declare-fun d!1947484 () Bool)

(assert (=> d!1947484 (= ($colon$colon!2018 (exprs!6033 lt!2343834) (ite (or c!1121762 c!1121763) (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (h!71070 (exprs!6033 (h!71071 zl!343))))) (Cons!64622 (ite (or c!1121762 c!1121763) (regTwo!32810 (h!71070 (exprs!6033 (h!71071 zl!343)))) (h!71070 (exprs!6033 (h!71071 zl!343)))) (exprs!6033 lt!2343834)))))

(assert (=> bm!520616 d!1947484))

(declare-fun d!1947486 () Bool)

(declare-fun c!1122085 () Bool)

(assert (=> d!1947486 (= c!1122085 (isEmpty!36626 (t!378272 s!2326)))))

(declare-fun e!3782360 () Bool)

(assert (=> d!1947486 (= (matchZipper!2161 ((_ map or) lt!2343848 lt!2343836) (t!378272 s!2326)) e!3782360)))

(declare-fun b!6212690 () Bool)

(assert (=> b!6212690 (= e!3782360 (nullableZipper!1923 ((_ map or) lt!2343848 lt!2343836)))))

(declare-fun b!6212691 () Bool)

(assert (=> b!6212691 (= e!3782360 (matchZipper!2161 (derivationStepZipper!2115 ((_ map or) lt!2343848 lt!2343836) (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))))))

(assert (= (and d!1947486 c!1122085) b!6212690))

(assert (= (and d!1947486 (not c!1122085)) b!6212691))

(assert (=> d!1947486 m!7041222))

(declare-fun m!7042368 () Bool)

(assert (=> b!6212690 m!7042368))

(assert (=> b!6212691 m!7041226))

(assert (=> b!6212691 m!7041226))

(declare-fun m!7042370 () Bool)

(assert (=> b!6212691 m!7042370))

(assert (=> b!6212691 m!7041230))

(assert (=> b!6212691 m!7042370))

(assert (=> b!6212691 m!7041230))

(declare-fun m!7042372 () Bool)

(assert (=> b!6212691 m!7042372))

(assert (=> d!1947042 d!1947486))

(assert (=> d!1947042 d!1947040))

(declare-fun e!3782361 () Bool)

(declare-fun d!1947488 () Bool)

(assert (=> d!1947488 (= (matchZipper!2161 ((_ map or) lt!2343848 lt!2343836) (t!378272 s!2326)) e!3782361)))

(declare-fun res!2568555 () Bool)

(assert (=> d!1947488 (=> res!2568555 e!3782361)))

(assert (=> d!1947488 (= res!2568555 (matchZipper!2161 lt!2343848 (t!378272 s!2326)))))

(assert (=> d!1947488 true))

(declare-fun _$48!1876 () Unit!157927)

(assert (=> d!1947488 (= (choose!46158 lt!2343848 lt!2343836 (t!378272 s!2326)) _$48!1876)))

(declare-fun b!6212692 () Bool)

(assert (=> b!6212692 (= e!3782361 (matchZipper!2161 lt!2343836 (t!378272 s!2326)))))

(assert (= (and d!1947488 (not res!2568555)) b!6212692))

(assert (=> d!1947488 m!7041368))

(assert (=> d!1947488 m!7040986))

(assert (=> b!6212692 m!7040950))

(assert (=> d!1947042 d!1947488))

(declare-fun d!1947490 () Bool)

(assert (=> d!1947490 (= (nullable!6142 (reg!16478 r!7292)) (nullableFct!2098 (reg!16478 r!7292)))))

(declare-fun bs!1540989 () Bool)

(assert (= bs!1540989 d!1947490))

(declare-fun m!7042374 () Bool)

(assert (=> bs!1540989 m!7042374))

(assert (=> b!6211569 d!1947490))

(declare-fun bs!1540990 () Bool)

(declare-fun d!1947492 () Bool)

(assert (= bs!1540990 (and d!1947492 d!1947422)))

(declare-fun lambda!339499 () Int)

(assert (=> bs!1540990 (= lambda!339499 lambda!339490)))

(declare-fun bs!1540991 () Bool)

(assert (= bs!1540991 (and d!1947492 d!1947466)))

(assert (=> bs!1540991 (= lambda!339499 lambda!339496)))

(declare-fun bs!1540992 () Bool)

(assert (= bs!1540992 (and d!1947492 d!1947472)))

(assert (=> bs!1540992 (= lambda!339499 lambda!339498)))

(assert (=> d!1947492 (= (nullableZipper!1923 lt!2343846) (exists!2482 lt!2343846 lambda!339499))))

(declare-fun bs!1540993 () Bool)

(assert (= bs!1540993 d!1947492))

(declare-fun m!7042376 () Bool)

(assert (=> bs!1540993 m!7042376))

(assert (=> b!6211502 d!1947492))

(declare-fun b!6212693 () Bool)

(declare-fun res!2568556 () Bool)

(declare-fun e!3782364 () Bool)

(assert (=> b!6212693 (=> res!2568556 e!3782364)))

(assert (=> b!6212693 (= res!2568556 (not ((_ is Concat!24994) lt!2343936)))))

(declare-fun e!3782363 () Bool)

(assert (=> b!6212693 (= e!3782363 e!3782364)))

(declare-fun b!6212694 () Bool)

(declare-fun res!2568557 () Bool)

(declare-fun e!3782368 () Bool)

(assert (=> b!6212694 (=> (not res!2568557) (not e!3782368))))

(declare-fun call!520846 () Bool)

(assert (=> b!6212694 (= res!2568557 call!520846)))

(assert (=> b!6212694 (= e!3782363 e!3782368)))

(declare-fun b!6212695 () Bool)

(declare-fun call!520848 () Bool)

(assert (=> b!6212695 (= e!3782368 call!520848)))

(declare-fun d!1947494 () Bool)

(declare-fun res!2568558 () Bool)

(declare-fun e!3782362 () Bool)

(assert (=> d!1947494 (=> res!2568558 e!3782362)))

(assert (=> d!1947494 (= res!2568558 ((_ is ElementMatch!16149) lt!2343936))))

(assert (=> d!1947494 (= (validRegex!7885 lt!2343936) e!3782362)))

(declare-fun b!6212696 () Bool)

(declare-fun e!3782366 () Bool)

(assert (=> b!6212696 (= e!3782364 e!3782366)))

(declare-fun res!2568560 () Bool)

(assert (=> b!6212696 (=> (not res!2568560) (not e!3782366))))

(assert (=> b!6212696 (= res!2568560 call!520846)))

(declare-fun b!6212697 () Bool)

(assert (=> b!6212697 (= e!3782366 call!520848)))

(declare-fun bm!520841 () Bool)

(declare-fun call!520847 () Bool)

(assert (=> bm!520841 (= call!520846 call!520847)))

(declare-fun bm!520842 () Bool)

(declare-fun c!1122087 () Bool)

(assert (=> bm!520842 (= call!520848 (validRegex!7885 (ite c!1122087 (regTwo!32811 lt!2343936) (regTwo!32810 lt!2343936))))))

(declare-fun b!6212698 () Bool)

(declare-fun e!3782367 () Bool)

(assert (=> b!6212698 (= e!3782367 e!3782363)))

(assert (=> b!6212698 (= c!1122087 ((_ is Union!16149) lt!2343936))))

(declare-fun c!1122086 () Bool)

(declare-fun bm!520843 () Bool)

(assert (=> bm!520843 (= call!520847 (validRegex!7885 (ite c!1122086 (reg!16478 lt!2343936) (ite c!1122087 (regOne!32811 lt!2343936) (regOne!32810 lt!2343936)))))))

(declare-fun b!6212699 () Bool)

(declare-fun e!3782365 () Bool)

(assert (=> b!6212699 (= e!3782365 call!520847)))

(declare-fun b!6212700 () Bool)

(assert (=> b!6212700 (= e!3782362 e!3782367)))

(assert (=> b!6212700 (= c!1122086 ((_ is Star!16149) lt!2343936))))

(declare-fun b!6212701 () Bool)

(assert (=> b!6212701 (= e!3782367 e!3782365)))

(declare-fun res!2568559 () Bool)

(assert (=> b!6212701 (= res!2568559 (not (nullable!6142 (reg!16478 lt!2343936))))))

(assert (=> b!6212701 (=> (not res!2568559) (not e!3782365))))

(assert (= (and d!1947494 (not res!2568558)) b!6212700))

(assert (= (and b!6212700 c!1122086) b!6212701))

(assert (= (and b!6212700 (not c!1122086)) b!6212698))

(assert (= (and b!6212701 res!2568559) b!6212699))

(assert (= (and b!6212698 c!1122087) b!6212694))

(assert (= (and b!6212698 (not c!1122087)) b!6212693))

(assert (= (and b!6212694 res!2568557) b!6212695))

(assert (= (and b!6212693 (not res!2568556)) b!6212696))

(assert (= (and b!6212696 res!2568560) b!6212697))

(assert (= (or b!6212695 b!6212697) bm!520842))

(assert (= (or b!6212694 b!6212696) bm!520841))

(assert (= (or b!6212699 bm!520841) bm!520843))

(declare-fun m!7042378 () Bool)

(assert (=> bm!520842 m!7042378))

(declare-fun m!7042380 () Bool)

(assert (=> bm!520843 m!7042380))

(declare-fun m!7042382 () Bool)

(assert (=> b!6212701 m!7042382))

(assert (=> d!1947062 d!1947494))

(declare-fun d!1947496 () Bool)

(declare-fun res!2568561 () Bool)

(declare-fun e!3782369 () Bool)

(assert (=> d!1947496 (=> res!2568561 e!3782369)))

(assert (=> d!1947496 (= res!2568561 ((_ is Nil!64622) (exprs!6033 (h!71071 zl!343))))))

(assert (=> d!1947496 (= (forall!15263 (exprs!6033 (h!71071 zl!343)) lambda!339441) e!3782369)))

(declare-fun b!6212702 () Bool)

(declare-fun e!3782370 () Bool)

(assert (=> b!6212702 (= e!3782369 e!3782370)))

(declare-fun res!2568562 () Bool)

(assert (=> b!6212702 (=> (not res!2568562) (not e!3782370))))

(assert (=> b!6212702 (= res!2568562 (dynLambda!25493 lambda!339441 (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun b!6212703 () Bool)

(assert (=> b!6212703 (= e!3782370 (forall!15263 (t!378270 (exprs!6033 (h!71071 zl!343))) lambda!339441))))

(assert (= (and d!1947496 (not res!2568561)) b!6212702))

(assert (= (and b!6212702 res!2568562) b!6212703))

(declare-fun b_lambda!236221 () Bool)

(assert (=> (not b_lambda!236221) (not b!6212702)))

(declare-fun m!7042384 () Bool)

(assert (=> b!6212702 m!7042384))

(declare-fun m!7042386 () Bool)

(assert (=> b!6212703 m!7042386))

(assert (=> d!1947062 d!1947496))

(declare-fun d!1947498 () Bool)

(assert (=> d!1947498 (= (nullable!6142 r!7292) (nullableFct!2098 r!7292))))

(declare-fun bs!1540994 () Bool)

(assert (= bs!1540994 d!1947498))

(declare-fun m!7042388 () Bool)

(assert (=> bs!1540994 m!7042388))

(assert (=> b!6211651 d!1947498))

(declare-fun bs!1540995 () Bool)

(declare-fun d!1947500 () Bool)

(assert (= bs!1540995 (and d!1947500 d!1947422)))

(declare-fun lambda!339500 () Int)

(assert (=> bs!1540995 (= lambda!339500 lambda!339490)))

(declare-fun bs!1540996 () Bool)

(assert (= bs!1540996 (and d!1947500 d!1947466)))

(assert (=> bs!1540996 (= lambda!339500 lambda!339496)))

(declare-fun bs!1540997 () Bool)

(assert (= bs!1540997 (and d!1947500 d!1947472)))

(assert (=> bs!1540997 (= lambda!339500 lambda!339498)))

(declare-fun bs!1540998 () Bool)

(assert (= bs!1540998 (and d!1947500 d!1947492)))

(assert (=> bs!1540998 (= lambda!339500 lambda!339499)))

(assert (=> d!1947500 (= (nullableZipper!1923 ((_ map or) lt!2343847 lt!2343840)) (exists!2482 ((_ map or) lt!2343847 lt!2343840) lambda!339500))))

(declare-fun bs!1540999 () Bool)

(assert (= bs!1540999 d!1947500))

(declare-fun m!7042390 () Bool)

(assert (=> bs!1540999 m!7042390))

(assert (=> b!6211378 d!1947500))

(declare-fun b!6212704 () Bool)

(declare-fun res!2568567 () Bool)

(declare-fun e!3782371 () Bool)

(assert (=> b!6212704 (=> (not res!2568567) (not e!3782371))))

(declare-fun call!520849 () Bool)

(assert (=> b!6212704 (= res!2568567 (not call!520849))))

(declare-fun b!6212705 () Bool)

(declare-fun e!3782374 () Bool)

(declare-fun e!3782372 () Bool)

(assert (=> b!6212705 (= e!3782374 e!3782372)))

(declare-fun c!1122090 () Bool)

(assert (=> b!6212705 (= c!1122090 ((_ is EmptyLang!16149) (regTwo!32810 r!7292)))))

(declare-fun b!6212706 () Bool)

(declare-fun e!3782373 () Bool)

(declare-fun e!3782377 () Bool)

(assert (=> b!6212706 (= e!3782373 e!3782377)))

(declare-fun res!2568566 () Bool)

(assert (=> b!6212706 (=> res!2568566 e!3782377)))

(assert (=> b!6212706 (= res!2568566 call!520849)))

(declare-fun bm!520844 () Bool)

(assert (=> bm!520844 (= call!520849 (isEmpty!36626 (_2!36431 (get!22317 lt!2343905))))))

(declare-fun d!1947502 () Bool)

(assert (=> d!1947502 e!3782374))

(declare-fun c!1122088 () Bool)

(assert (=> d!1947502 (= c!1122088 ((_ is EmptyExpr!16149) (regTwo!32810 r!7292)))))

(declare-fun lt!2343980 () Bool)

(declare-fun e!3782375 () Bool)

(assert (=> d!1947502 (= lt!2343980 e!3782375)))

(declare-fun c!1122089 () Bool)

(assert (=> d!1947502 (= c!1122089 (isEmpty!36626 (_2!36431 (get!22317 lt!2343905))))))

(assert (=> d!1947502 (validRegex!7885 (regTwo!32810 r!7292))))

(assert (=> d!1947502 (= (matchR!8332 (regTwo!32810 r!7292) (_2!36431 (get!22317 lt!2343905))) lt!2343980)))

(declare-fun b!6212707 () Bool)

(assert (=> b!6212707 (= e!3782377 (not (= (head!12806 (_2!36431 (get!22317 lt!2343905))) (c!1121618 (regTwo!32810 r!7292)))))))

(declare-fun b!6212708 () Bool)

(assert (=> b!6212708 (= e!3782374 (= lt!2343980 call!520849))))

(declare-fun b!6212709 () Bool)

(assert (=> b!6212709 (= e!3782371 (= (head!12806 (_2!36431 (get!22317 lt!2343905))) (c!1121618 (regTwo!32810 r!7292))))))

(declare-fun b!6212710 () Bool)

(assert (=> b!6212710 (= e!3782372 (not lt!2343980))))

(declare-fun b!6212711 () Bool)

(declare-fun res!2568570 () Bool)

(declare-fun e!3782376 () Bool)

(assert (=> b!6212711 (=> res!2568570 e!3782376)))

(assert (=> b!6212711 (= res!2568570 (not ((_ is ElementMatch!16149) (regTwo!32810 r!7292))))))

(assert (=> b!6212711 (= e!3782372 e!3782376)))

(declare-fun b!6212712 () Bool)

(assert (=> b!6212712 (= e!3782375 (nullable!6142 (regTwo!32810 r!7292)))))

(declare-fun b!6212713 () Bool)

(declare-fun res!2568563 () Bool)

(assert (=> b!6212713 (=> (not res!2568563) (not e!3782371))))

(assert (=> b!6212713 (= res!2568563 (isEmpty!36626 (tail!11891 (_2!36431 (get!22317 lt!2343905)))))))

(declare-fun b!6212714 () Bool)

(declare-fun res!2568568 () Bool)

(assert (=> b!6212714 (=> res!2568568 e!3782377)))

(assert (=> b!6212714 (= res!2568568 (not (isEmpty!36626 (tail!11891 (_2!36431 (get!22317 lt!2343905))))))))

(declare-fun b!6212715 () Bool)

(assert (=> b!6212715 (= e!3782376 e!3782373)))

(declare-fun res!2568564 () Bool)

(assert (=> b!6212715 (=> (not res!2568564) (not e!3782373))))

(assert (=> b!6212715 (= res!2568564 (not lt!2343980))))

(declare-fun b!6212716 () Bool)

(assert (=> b!6212716 (= e!3782375 (matchR!8332 (derivativeStep!4862 (regTwo!32810 r!7292) (head!12806 (_2!36431 (get!22317 lt!2343905)))) (tail!11891 (_2!36431 (get!22317 lt!2343905)))))))

(declare-fun b!6212717 () Bool)

(declare-fun res!2568569 () Bool)

(assert (=> b!6212717 (=> res!2568569 e!3782376)))

(assert (=> b!6212717 (= res!2568569 e!3782371)))

(declare-fun res!2568565 () Bool)

(assert (=> b!6212717 (=> (not res!2568565) (not e!3782371))))

(assert (=> b!6212717 (= res!2568565 lt!2343980)))

(assert (= (and d!1947502 c!1122089) b!6212712))

(assert (= (and d!1947502 (not c!1122089)) b!6212716))

(assert (= (and d!1947502 c!1122088) b!6212708))

(assert (= (and d!1947502 (not c!1122088)) b!6212705))

(assert (= (and b!6212705 c!1122090) b!6212710))

(assert (= (and b!6212705 (not c!1122090)) b!6212711))

(assert (= (and b!6212711 (not res!2568570)) b!6212717))

(assert (= (and b!6212717 res!2568565) b!6212704))

(assert (= (and b!6212704 res!2568567) b!6212713))

(assert (= (and b!6212713 res!2568563) b!6212709))

(assert (= (and b!6212717 (not res!2568569)) b!6212715))

(assert (= (and b!6212715 res!2568564) b!6212706))

(assert (= (and b!6212706 (not res!2568566)) b!6212714))

(assert (= (and b!6212714 (not res!2568568)) b!6212707))

(assert (= (or b!6212708 b!6212704 b!6212706) bm!520844))

(declare-fun m!7042392 () Bool)

(assert (=> b!6212714 m!7042392))

(assert (=> b!6212714 m!7042392))

(declare-fun m!7042394 () Bool)

(assert (=> b!6212714 m!7042394))

(declare-fun m!7042396 () Bool)

(assert (=> b!6212716 m!7042396))

(assert (=> b!6212716 m!7042396))

(declare-fun m!7042398 () Bool)

(assert (=> b!6212716 m!7042398))

(assert (=> b!6212716 m!7042392))

(assert (=> b!6212716 m!7042398))

(assert (=> b!6212716 m!7042392))

(declare-fun m!7042400 () Bool)

(assert (=> b!6212716 m!7042400))

(assert (=> b!6212709 m!7042396))

(assert (=> b!6212707 m!7042396))

(assert (=> b!6212712 m!7042030))

(declare-fun m!7042402 () Bool)

(assert (=> bm!520844 m!7042402))

(assert (=> d!1947502 m!7042402))

(assert (=> d!1947502 m!7042032))

(assert (=> b!6212713 m!7042392))

(assert (=> b!6212713 m!7042392))

(assert (=> b!6212713 m!7042394))

(assert (=> b!6211444 d!1947502))

(assert (=> b!6211444 d!1947456))

(assert (=> b!6211646 d!1947324))

(declare-fun d!1947504 () Bool)

(assert (=> d!1947504 (= ($colon$colon!2018 (exprs!6033 lt!2343849) (ite (or c!1121745 c!1121746) (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 r!7292)))) (Cons!64622 (ite (or c!1121745 c!1121746) (regTwo!32810 (regOne!32810 (regOne!32810 r!7292))) (regOne!32810 (regOne!32810 r!7292))) (exprs!6033 lt!2343849)))))

(assert (=> bm!520607 d!1947504))

(declare-fun b!6212718 () Bool)

(declare-fun res!2568571 () Bool)

(declare-fun e!3782380 () Bool)

(assert (=> b!6212718 (=> res!2568571 e!3782380)))

(assert (=> b!6212718 (= res!2568571 (not ((_ is Concat!24994) (ite c!1121790 (regTwo!32811 r!7292) (regTwo!32810 r!7292)))))))

(declare-fun e!3782379 () Bool)

(assert (=> b!6212718 (= e!3782379 e!3782380)))

(declare-fun b!6212719 () Bool)

(declare-fun res!2568572 () Bool)

(declare-fun e!3782384 () Bool)

(assert (=> b!6212719 (=> (not res!2568572) (not e!3782384))))

(declare-fun call!520850 () Bool)

(assert (=> b!6212719 (= res!2568572 call!520850)))

(assert (=> b!6212719 (= e!3782379 e!3782384)))

(declare-fun b!6212720 () Bool)

(declare-fun call!520852 () Bool)

(assert (=> b!6212720 (= e!3782384 call!520852)))

(declare-fun d!1947506 () Bool)

(declare-fun res!2568573 () Bool)

(declare-fun e!3782378 () Bool)

(assert (=> d!1947506 (=> res!2568573 e!3782378)))

(assert (=> d!1947506 (= res!2568573 ((_ is ElementMatch!16149) (ite c!1121790 (regTwo!32811 r!7292) (regTwo!32810 r!7292))))))

(assert (=> d!1947506 (= (validRegex!7885 (ite c!1121790 (regTwo!32811 r!7292) (regTwo!32810 r!7292))) e!3782378)))

(declare-fun b!6212721 () Bool)

(declare-fun e!3782382 () Bool)

(assert (=> b!6212721 (= e!3782380 e!3782382)))

(declare-fun res!2568575 () Bool)

(assert (=> b!6212721 (=> (not res!2568575) (not e!3782382))))

(assert (=> b!6212721 (= res!2568575 call!520850)))

(declare-fun b!6212722 () Bool)

(assert (=> b!6212722 (= e!3782382 call!520852)))

(declare-fun bm!520845 () Bool)

(declare-fun call!520851 () Bool)

(assert (=> bm!520845 (= call!520850 call!520851)))

(declare-fun bm!520846 () Bool)

(declare-fun c!1122092 () Bool)

(assert (=> bm!520846 (= call!520852 (validRegex!7885 (ite c!1122092 (regTwo!32811 (ite c!1121790 (regTwo!32811 r!7292) (regTwo!32810 r!7292))) (regTwo!32810 (ite c!1121790 (regTwo!32811 r!7292) (regTwo!32810 r!7292))))))))

(declare-fun b!6212723 () Bool)

(declare-fun e!3782383 () Bool)

(assert (=> b!6212723 (= e!3782383 e!3782379)))

(assert (=> b!6212723 (= c!1122092 ((_ is Union!16149) (ite c!1121790 (regTwo!32811 r!7292) (regTwo!32810 r!7292))))))

(declare-fun bm!520847 () Bool)

(declare-fun c!1122091 () Bool)

(assert (=> bm!520847 (= call!520851 (validRegex!7885 (ite c!1122091 (reg!16478 (ite c!1121790 (regTwo!32811 r!7292) (regTwo!32810 r!7292))) (ite c!1122092 (regOne!32811 (ite c!1121790 (regTwo!32811 r!7292) (regTwo!32810 r!7292))) (regOne!32810 (ite c!1121790 (regTwo!32811 r!7292) (regTwo!32810 r!7292)))))))))

(declare-fun b!6212724 () Bool)

(declare-fun e!3782381 () Bool)

(assert (=> b!6212724 (= e!3782381 call!520851)))

(declare-fun b!6212725 () Bool)

(assert (=> b!6212725 (= e!3782378 e!3782383)))

(assert (=> b!6212725 (= c!1122091 ((_ is Star!16149) (ite c!1121790 (regTwo!32811 r!7292) (regTwo!32810 r!7292))))))

(declare-fun b!6212726 () Bool)

(assert (=> b!6212726 (= e!3782383 e!3782381)))

(declare-fun res!2568574 () Bool)

(assert (=> b!6212726 (= res!2568574 (not (nullable!6142 (reg!16478 (ite c!1121790 (regTwo!32811 r!7292) (regTwo!32810 r!7292))))))))

(assert (=> b!6212726 (=> (not res!2568574) (not e!3782381))))

(assert (= (and d!1947506 (not res!2568573)) b!6212725))

(assert (= (and b!6212725 c!1122091) b!6212726))

(assert (= (and b!6212725 (not c!1122091)) b!6212723))

(assert (= (and b!6212726 res!2568574) b!6212724))

(assert (= (and b!6212723 c!1122092) b!6212719))

(assert (= (and b!6212723 (not c!1122092)) b!6212718))

(assert (= (and b!6212719 res!2568572) b!6212720))

(assert (= (and b!6212718 (not res!2568571)) b!6212721))

(assert (= (and b!6212721 res!2568575) b!6212722))

(assert (= (or b!6212720 b!6212722) bm!520846))

(assert (= (or b!6212719 b!6212721) bm!520845))

(assert (= (or b!6212724 bm!520845) bm!520847))

(declare-fun m!7042404 () Bool)

(assert (=> bm!520846 m!7042404))

(declare-fun m!7042406 () Bool)

(assert (=> bm!520847 m!7042406))

(declare-fun m!7042408 () Bool)

(assert (=> b!6212726 m!7042408))

(assert (=> bm!520629 d!1947506))

(assert (=> d!1947050 d!1947322))

(declare-fun d!1947508 () Bool)

(declare-fun c!1122093 () Bool)

(assert (=> d!1947508 (= c!1122093 (isEmpty!36626 (tail!11891 (t!378272 s!2326))))))

(declare-fun e!3782385 () Bool)

(assert (=> d!1947508 (= (matchZipper!2161 (derivationStepZipper!2115 lt!2343836 (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))) e!3782385)))

(declare-fun b!6212727 () Bool)

(assert (=> b!6212727 (= e!3782385 (nullableZipper!1923 (derivationStepZipper!2115 lt!2343836 (head!12806 (t!378272 s!2326)))))))

(declare-fun b!6212728 () Bool)

(assert (=> b!6212728 (= e!3782385 (matchZipper!2161 (derivationStepZipper!2115 (derivationStepZipper!2115 lt!2343836 (head!12806 (t!378272 s!2326))) (head!12806 (tail!11891 (t!378272 s!2326)))) (tail!11891 (tail!11891 (t!378272 s!2326)))))))

(assert (= (and d!1947508 c!1122093) b!6212727))

(assert (= (and d!1947508 (not c!1122093)) b!6212728))

(assert (=> d!1947508 m!7041230))

(assert (=> d!1947508 m!7041954))

(assert (=> b!6212727 m!7041228))

(declare-fun m!7042410 () Bool)

(assert (=> b!6212727 m!7042410))

(assert (=> b!6212728 m!7041230))

(assert (=> b!6212728 m!7041958))

(assert (=> b!6212728 m!7041228))

(assert (=> b!6212728 m!7041958))

(declare-fun m!7042412 () Bool)

(assert (=> b!6212728 m!7042412))

(assert (=> b!6212728 m!7041230))

(assert (=> b!6212728 m!7041962))

(assert (=> b!6212728 m!7042412))

(assert (=> b!6212728 m!7041962))

(declare-fun m!7042414 () Bool)

(assert (=> b!6212728 m!7042414))

(assert (=> b!6211372 d!1947508))

(declare-fun bs!1541000 () Bool)

(declare-fun d!1947510 () Bool)

(assert (= bs!1541000 (and d!1947510 d!1947310)))

(declare-fun lambda!339501 () Int)

(assert (=> bs!1541000 (= lambda!339501 lambda!339478)))

(declare-fun bs!1541001 () Bool)

(assert (= bs!1541001 (and d!1947510 b!6210960)))

(assert (=> bs!1541001 (= (= (head!12806 (t!378272 s!2326)) (h!71072 s!2326)) (= lambda!339501 lambda!339383))))

(declare-fun bs!1541002 () Bool)

(assert (= bs!1541002 (and d!1947510 d!1947358)))

(assert (=> bs!1541002 (= lambda!339501 lambda!339483)))

(declare-fun bs!1541003 () Bool)

(assert (= bs!1541003 (and d!1947510 d!1947336)))

(assert (=> bs!1541003 (= lambda!339501 lambda!339480)))

(declare-fun bs!1541004 () Bool)

(assert (= bs!1541004 (and d!1947510 d!1947344)))

(assert (=> bs!1541004 (= lambda!339501 lambda!339481)))

(assert (=> d!1947510 true))

(assert (=> d!1947510 (= (derivationStepZipper!2115 lt!2343836 (head!12806 (t!378272 s!2326))) (flatMap!1654 lt!2343836 lambda!339501))))

(declare-fun bs!1541005 () Bool)

(assert (= bs!1541005 d!1947510))

(declare-fun m!7042416 () Bool)

(assert (=> bs!1541005 m!7042416))

(assert (=> b!6211372 d!1947510))

(assert (=> b!6211372 d!1947312))

(assert (=> b!6211372 d!1947314))

(declare-fun d!1947512 () Bool)

(assert (=> d!1947512 (= (Exists!3219 lambda!339425) (choose!46159 lambda!339425))))

(declare-fun bs!1541006 () Bool)

(assert (= bs!1541006 d!1947512))

(declare-fun m!7042418 () Bool)

(assert (=> bs!1541006 m!7042418))

(assert (=> d!1947016 d!1947512))

(declare-fun d!1947514 () Bool)

(assert (=> d!1947514 (= (Exists!3219 lambda!339426) (choose!46159 lambda!339426))))

(declare-fun bs!1541007 () Bool)

(assert (= bs!1541007 d!1947514))

(declare-fun m!7042420 () Bool)

(assert (=> bs!1541007 m!7042420))

(assert (=> d!1947016 d!1947514))

(declare-fun bs!1541008 () Bool)

(declare-fun d!1947516 () Bool)

(assert (= bs!1541008 (and d!1947516 d!1947014)))

(declare-fun lambda!339506 () Int)

(assert (=> bs!1541008 (= lambda!339506 lambda!339420)))

(declare-fun bs!1541009 () Bool)

(assert (= bs!1541009 (and d!1947516 b!6210980)))

(assert (=> bs!1541009 (= lambda!339506 lambda!339381)))

(declare-fun bs!1541010 () Bool)

(assert (= bs!1541010 (and d!1947516 d!1947016)))

(assert (=> bs!1541010 (= lambda!339506 lambda!339425)))

(declare-fun bs!1541011 () Bool)

(assert (= bs!1541011 (and d!1947516 b!6211609)))

(assert (=> bs!1541011 (not (= lambda!339506 lambda!339438))))

(declare-fun bs!1541012 () Bool)

(assert (= bs!1541012 (and d!1947516 d!1947452)))

(assert (=> bs!1541012 (= lambda!339506 lambda!339495)))

(declare-fun bs!1541013 () Bool)

(assert (= bs!1541013 (and d!1947516 b!6212572)))

(assert (=> bs!1541013 (not (= lambda!339506 lambda!339492))))

(declare-fun bs!1541014 () Bool)

(assert (= bs!1541014 (and d!1947516 b!6212511)))

(assert (=> bs!1541014 (not (= lambda!339506 lambda!339486))))

(assert (=> bs!1541009 (not (= lambda!339506 lambda!339382))))

(declare-fun bs!1541015 () Bool)

(assert (= bs!1541015 (and d!1947516 b!6211605)))

(assert (=> bs!1541015 (not (= lambda!339506 lambda!339437))))

(assert (=> bs!1541010 (not (= lambda!339506 lambda!339426))))

(declare-fun bs!1541016 () Bool)

(assert (= bs!1541016 (and d!1947516 b!6212568)))

(assert (=> bs!1541016 (not (= lambda!339506 lambda!339491))))

(declare-fun bs!1541017 () Bool)

(assert (= bs!1541017 (and d!1947516 b!6212507)))

(assert (=> bs!1541017 (not (= lambda!339506 lambda!339485))))

(assert (=> d!1947516 true))

(assert (=> d!1947516 true))

(assert (=> d!1947516 true))

(declare-fun bs!1541018 () Bool)

(assert (= bs!1541018 d!1947516))

(declare-fun lambda!339507 () Int)

(assert (=> bs!1541018 (not (= lambda!339507 lambda!339506))))

(assert (=> bs!1541008 (not (= lambda!339507 lambda!339420))))

(assert (=> bs!1541009 (not (= lambda!339507 lambda!339381))))

(assert (=> bs!1541010 (not (= lambda!339507 lambda!339425))))

(assert (=> bs!1541011 (= lambda!339507 lambda!339438)))

(assert (=> bs!1541012 (not (= lambda!339507 lambda!339495))))

(assert (=> bs!1541013 (= (and (= (regOne!32810 r!7292) (regOne!32810 (regTwo!32811 r!7292))) (= (regTwo!32810 r!7292) (regTwo!32810 (regTwo!32811 r!7292)))) (= lambda!339507 lambda!339492))))

(assert (=> bs!1541014 (= (and (= (regOne!32810 r!7292) (regOne!32810 (regOne!32811 r!7292))) (= (regTwo!32810 r!7292) (regTwo!32810 (regOne!32811 r!7292)))) (= lambda!339507 lambda!339486))))

(assert (=> bs!1541009 (= lambda!339507 lambda!339382)))

(assert (=> bs!1541015 (not (= lambda!339507 lambda!339437))))

(assert (=> bs!1541010 (= lambda!339507 lambda!339426)))

(assert (=> bs!1541016 (not (= lambda!339507 lambda!339491))))

(assert (=> bs!1541017 (not (= lambda!339507 lambda!339485))))

(assert (=> d!1947516 true))

(assert (=> d!1947516 true))

(assert (=> d!1947516 true))

(assert (=> d!1947516 (= (Exists!3219 lambda!339506) (Exists!3219 lambda!339507))))

(assert (=> d!1947516 true))

(declare-fun _$90!1995 () Unit!157927)

(assert (=> d!1947516 (= (choose!46161 (regOne!32810 r!7292) (regTwo!32810 r!7292) s!2326) _$90!1995)))

(declare-fun m!7042422 () Bool)

(assert (=> bs!1541018 m!7042422))

(declare-fun m!7042424 () Bool)

(assert (=> bs!1541018 m!7042424))

(assert (=> d!1947016 d!1947516))

(assert (=> d!1947016 d!1947374))

(declare-fun d!1947518 () Bool)

(assert (=> d!1947518 (= (isEmpty!36622 (exprs!6033 (h!71071 zl!343))) ((_ is Nil!64622) (exprs!6033 (h!71071 zl!343))))))

(assert (=> b!6211685 d!1947518))

(declare-fun d!1947520 () Bool)

(declare-fun c!1122094 () Bool)

(assert (=> d!1947520 (= c!1122094 (isEmpty!36626 (tail!11891 (t!378272 s!2326))))))

(declare-fun e!3782390 () Bool)

(assert (=> d!1947520 (= (matchZipper!2161 (derivationStepZipper!2115 lt!2343840 (head!12806 (t!378272 s!2326))) (tail!11891 (t!378272 s!2326))) e!3782390)))

(declare-fun b!6212737 () Bool)

(assert (=> b!6212737 (= e!3782390 (nullableZipper!1923 (derivationStepZipper!2115 lt!2343840 (head!12806 (t!378272 s!2326)))))))

(declare-fun b!6212738 () Bool)

(assert (=> b!6212738 (= e!3782390 (matchZipper!2161 (derivationStepZipper!2115 (derivationStepZipper!2115 lt!2343840 (head!12806 (t!378272 s!2326))) (head!12806 (tail!11891 (t!378272 s!2326)))) (tail!11891 (tail!11891 (t!378272 s!2326)))))))

(assert (= (and d!1947520 c!1122094) b!6212737))

(assert (= (and d!1947520 (not c!1122094)) b!6212738))

(assert (=> d!1947520 m!7041230))

(assert (=> d!1947520 m!7041954))

(assert (=> b!6212737 m!7041404))

(declare-fun m!7042426 () Bool)

(assert (=> b!6212737 m!7042426))

(assert (=> b!6212738 m!7041230))

(assert (=> b!6212738 m!7041958))

(assert (=> b!6212738 m!7041404))

(assert (=> b!6212738 m!7041958))

(declare-fun m!7042428 () Bool)

(assert (=> b!6212738 m!7042428))

(assert (=> b!6212738 m!7041230))

(assert (=> b!6212738 m!7041962))

(assert (=> b!6212738 m!7042428))

(assert (=> b!6212738 m!7041962))

(declare-fun m!7042430 () Bool)

(assert (=> b!6212738 m!7042430))

(assert (=> b!6211571 d!1947520))

(declare-fun bs!1541019 () Bool)

(declare-fun d!1947522 () Bool)

(assert (= bs!1541019 (and d!1947522 d!1947510)))

(declare-fun lambda!339508 () Int)

(assert (=> bs!1541019 (= lambda!339508 lambda!339501)))

(declare-fun bs!1541020 () Bool)

(assert (= bs!1541020 (and d!1947522 d!1947310)))

(assert (=> bs!1541020 (= lambda!339508 lambda!339478)))

(declare-fun bs!1541021 () Bool)

(assert (= bs!1541021 (and d!1947522 b!6210960)))

(assert (=> bs!1541021 (= (= (head!12806 (t!378272 s!2326)) (h!71072 s!2326)) (= lambda!339508 lambda!339383))))

(declare-fun bs!1541022 () Bool)

(assert (= bs!1541022 (and d!1947522 d!1947358)))

(assert (=> bs!1541022 (= lambda!339508 lambda!339483)))

(declare-fun bs!1541023 () Bool)

(assert (= bs!1541023 (and d!1947522 d!1947336)))

(assert (=> bs!1541023 (= lambda!339508 lambda!339480)))

(declare-fun bs!1541024 () Bool)

(assert (= bs!1541024 (and d!1947522 d!1947344)))

(assert (=> bs!1541024 (= lambda!339508 lambda!339481)))

(assert (=> d!1947522 true))

(assert (=> d!1947522 (= (derivationStepZipper!2115 lt!2343840 (head!12806 (t!378272 s!2326))) (flatMap!1654 lt!2343840 lambda!339508))))

(declare-fun bs!1541025 () Bool)

(assert (= bs!1541025 d!1947522))

(declare-fun m!7042432 () Bool)

(assert (=> bs!1541025 m!7042432))

(assert (=> b!6211571 d!1947522))

(assert (=> b!6211571 d!1947312))

(assert (=> b!6211571 d!1947314))

(declare-fun bs!1541026 () Bool)

(declare-fun d!1947524 () Bool)

(assert (= bs!1541026 (and d!1947524 d!1947500)))

(declare-fun lambda!339509 () Int)

(assert (=> bs!1541026 (= lambda!339509 lambda!339500)))

(declare-fun bs!1541027 () Bool)

(assert (= bs!1541027 (and d!1947524 d!1947492)))

(assert (=> bs!1541027 (= lambda!339509 lambda!339499)))

(declare-fun bs!1541028 () Bool)

(assert (= bs!1541028 (and d!1947524 d!1947466)))

(assert (=> bs!1541028 (= lambda!339509 lambda!339496)))

(declare-fun bs!1541029 () Bool)

(assert (= bs!1541029 (and d!1947524 d!1947472)))

(assert (=> bs!1541029 (= lambda!339509 lambda!339498)))

(declare-fun bs!1541030 () Bool)

(assert (= bs!1541030 (and d!1947524 d!1947422)))

(assert (=> bs!1541030 (= lambda!339509 lambda!339490)))

(assert (=> d!1947524 (= (nullableZipper!1923 lt!2343848) (exists!2482 lt!2343848 lambda!339509))))

(declare-fun bs!1541031 () Bool)

(assert (= bs!1541031 d!1947524))

(declare-fun m!7042434 () Bool)

(assert (=> bs!1541031 m!7042434))

(assert (=> b!6211504 d!1947524))

(declare-fun b!6212740 () Bool)

(declare-fun e!3782392 () Bool)

(declare-fun tp!1733019 () Bool)

(assert (=> b!6212740 (= e!3782392 tp!1733019)))

(declare-fun b!6212739 () Bool)

(declare-fun tp!1733020 () Bool)

(declare-fun e!3782391 () Bool)

(assert (=> b!6212739 (= e!3782391 (and (inv!83619 (h!71071 (t!378271 (t!378271 zl!343)))) e!3782392 tp!1733020))))

(assert (=> b!6211725 (= tp!1732828 e!3782391)))

(assert (= b!6212739 b!6212740))

(assert (= (and b!6211725 ((_ is Cons!64623) (t!378271 (t!378271 zl!343)))) b!6212739))

(declare-fun m!7042436 () Bool)

(assert (=> b!6212739 m!7042436))

(declare-fun b!6212741 () Bool)

(declare-fun e!3782393 () Bool)

(declare-fun tp!1733021 () Bool)

(declare-fun tp!1733022 () Bool)

(assert (=> b!6212741 (= e!3782393 (and tp!1733021 tp!1733022))))

(assert (=> b!6211726 (= tp!1732827 e!3782393)))

(assert (= (and b!6211726 ((_ is Cons!64622) (exprs!6033 (h!71071 (t!378271 zl!343))))) b!6212741))

(declare-fun b!6212742 () Bool)

(declare-fun e!3782394 () Bool)

(assert (=> b!6212742 (= e!3782394 tp_is_empty!41551)))

(declare-fun b!6212744 () Bool)

(declare-fun tp!1733026 () Bool)

(assert (=> b!6212744 (= e!3782394 tp!1733026)))

(declare-fun b!6212745 () Bool)

(declare-fun tp!1733024 () Bool)

(declare-fun tp!1733023 () Bool)

(assert (=> b!6212745 (= e!3782394 (and tp!1733024 tp!1733023))))

(assert (=> b!6211711 (= tp!1732816 e!3782394)))

(declare-fun b!6212743 () Bool)

(declare-fun tp!1733027 () Bool)

(declare-fun tp!1733025 () Bool)

(assert (=> b!6212743 (= e!3782394 (and tp!1733027 tp!1733025))))

(assert (= (and b!6211711 ((_ is ElementMatch!16149) (regOne!32810 (reg!16478 r!7292)))) b!6212742))

(assert (= (and b!6211711 ((_ is Concat!24994) (regOne!32810 (reg!16478 r!7292)))) b!6212743))

(assert (= (and b!6211711 ((_ is Star!16149) (regOne!32810 (reg!16478 r!7292)))) b!6212744))

(assert (= (and b!6211711 ((_ is Union!16149) (regOne!32810 (reg!16478 r!7292)))) b!6212745))

(declare-fun b!6212746 () Bool)

(declare-fun e!3782395 () Bool)

(assert (=> b!6212746 (= e!3782395 tp_is_empty!41551)))

(declare-fun b!6212748 () Bool)

(declare-fun tp!1733031 () Bool)

(assert (=> b!6212748 (= e!3782395 tp!1733031)))

(declare-fun b!6212749 () Bool)

(declare-fun tp!1733029 () Bool)

(declare-fun tp!1733028 () Bool)

(assert (=> b!6212749 (= e!3782395 (and tp!1733029 tp!1733028))))

(assert (=> b!6211711 (= tp!1732814 e!3782395)))

(declare-fun b!6212747 () Bool)

(declare-fun tp!1733032 () Bool)

(declare-fun tp!1733030 () Bool)

(assert (=> b!6212747 (= e!3782395 (and tp!1733032 tp!1733030))))

(assert (= (and b!6211711 ((_ is ElementMatch!16149) (regTwo!32810 (reg!16478 r!7292)))) b!6212746))

(assert (= (and b!6211711 ((_ is Concat!24994) (regTwo!32810 (reg!16478 r!7292)))) b!6212747))

(assert (= (and b!6211711 ((_ is Star!16149) (regTwo!32810 (reg!16478 r!7292)))) b!6212748))

(assert (= (and b!6211711 ((_ is Union!16149) (regTwo!32810 (reg!16478 r!7292)))) b!6212749))

(declare-fun b!6212750 () Bool)

(declare-fun e!3782396 () Bool)

(assert (=> b!6212750 (= e!3782396 tp_is_empty!41551)))

(declare-fun b!6212752 () Bool)

(declare-fun tp!1733036 () Bool)

(assert (=> b!6212752 (= e!3782396 tp!1733036)))

(declare-fun b!6212753 () Bool)

(declare-fun tp!1733034 () Bool)

(declare-fun tp!1733033 () Bool)

(assert (=> b!6212753 (= e!3782396 (and tp!1733034 tp!1733033))))

(assert (=> b!6211733 (= tp!1732837 e!3782396)))

(declare-fun b!6212751 () Bool)

(declare-fun tp!1733037 () Bool)

(declare-fun tp!1733035 () Bool)

(assert (=> b!6212751 (= e!3782396 (and tp!1733037 tp!1733035))))

(assert (= (and b!6211733 ((_ is ElementMatch!16149) (reg!16478 (regTwo!32811 r!7292)))) b!6212750))

(assert (= (and b!6211733 ((_ is Concat!24994) (reg!16478 (regTwo!32811 r!7292)))) b!6212751))

(assert (= (and b!6211733 ((_ is Star!16149) (reg!16478 (regTwo!32811 r!7292)))) b!6212752))

(assert (= (and b!6211733 ((_ is Union!16149) (reg!16478 (regTwo!32811 r!7292)))) b!6212753))

(declare-fun b!6212754 () Bool)

(declare-fun e!3782397 () Bool)

(assert (=> b!6212754 (= e!3782397 tp_is_empty!41551)))

(declare-fun b!6212756 () Bool)

(declare-fun tp!1733041 () Bool)

(assert (=> b!6212756 (= e!3782397 tp!1733041)))

(declare-fun b!6212757 () Bool)

(declare-fun tp!1733039 () Bool)

(declare-fun tp!1733038 () Bool)

(assert (=> b!6212757 (= e!3782397 (and tp!1733039 tp!1733038))))

(assert (=> b!6211734 (= tp!1732835 e!3782397)))

(declare-fun b!6212755 () Bool)

(declare-fun tp!1733042 () Bool)

(declare-fun tp!1733040 () Bool)

(assert (=> b!6212755 (= e!3782397 (and tp!1733042 tp!1733040))))

(assert (= (and b!6211734 ((_ is ElementMatch!16149) (regOne!32811 (regTwo!32811 r!7292)))) b!6212754))

(assert (= (and b!6211734 ((_ is Concat!24994) (regOne!32811 (regTwo!32811 r!7292)))) b!6212755))

(assert (= (and b!6211734 ((_ is Star!16149) (regOne!32811 (regTwo!32811 r!7292)))) b!6212756))

(assert (= (and b!6211734 ((_ is Union!16149) (regOne!32811 (regTwo!32811 r!7292)))) b!6212757))

(declare-fun b!6212758 () Bool)

(declare-fun e!3782398 () Bool)

(assert (=> b!6212758 (= e!3782398 tp_is_empty!41551)))

(declare-fun b!6212760 () Bool)

(declare-fun tp!1733046 () Bool)

(assert (=> b!6212760 (= e!3782398 tp!1733046)))

(declare-fun b!6212761 () Bool)

(declare-fun tp!1733044 () Bool)

(declare-fun tp!1733043 () Bool)

(assert (=> b!6212761 (= e!3782398 (and tp!1733044 tp!1733043))))

(assert (=> b!6211734 (= tp!1732834 e!3782398)))

(declare-fun b!6212759 () Bool)

(declare-fun tp!1733047 () Bool)

(declare-fun tp!1733045 () Bool)

(assert (=> b!6212759 (= e!3782398 (and tp!1733047 tp!1733045))))

(assert (= (and b!6211734 ((_ is ElementMatch!16149) (regTwo!32811 (regTwo!32811 r!7292)))) b!6212758))

(assert (= (and b!6211734 ((_ is Concat!24994) (regTwo!32811 (regTwo!32811 r!7292)))) b!6212759))

(assert (= (and b!6211734 ((_ is Star!16149) (regTwo!32811 (regTwo!32811 r!7292)))) b!6212760))

(assert (= (and b!6211734 ((_ is Union!16149) (regTwo!32811 (regTwo!32811 r!7292)))) b!6212761))

(declare-fun b!6212762 () Bool)

(declare-fun e!3782399 () Bool)

(assert (=> b!6212762 (= e!3782399 tp_is_empty!41551)))

(declare-fun b!6212764 () Bool)

(declare-fun tp!1733051 () Bool)

(assert (=> b!6212764 (= e!3782399 tp!1733051)))

(declare-fun b!6212765 () Bool)

(declare-fun tp!1733049 () Bool)

(declare-fun tp!1733048 () Bool)

(assert (=> b!6212765 (= e!3782399 (and tp!1733049 tp!1733048))))

(assert (=> b!6211740 (= tp!1732845 e!3782399)))

(declare-fun b!6212763 () Bool)

(declare-fun tp!1733052 () Bool)

(declare-fun tp!1733050 () Bool)

(assert (=> b!6212763 (= e!3782399 (and tp!1733052 tp!1733050))))

(assert (= (and b!6211740 ((_ is ElementMatch!16149) (h!71070 (exprs!6033 (h!71071 zl!343))))) b!6212762))

(assert (= (and b!6211740 ((_ is Concat!24994) (h!71070 (exprs!6033 (h!71071 zl!343))))) b!6212763))

(assert (= (and b!6211740 ((_ is Star!16149) (h!71070 (exprs!6033 (h!71071 zl!343))))) b!6212764))

(assert (= (and b!6211740 ((_ is Union!16149) (h!71070 (exprs!6033 (h!71071 zl!343))))) b!6212765))

(declare-fun b!6212766 () Bool)

(declare-fun e!3782400 () Bool)

(declare-fun tp!1733053 () Bool)

(declare-fun tp!1733054 () Bool)

(assert (=> b!6212766 (= e!3782400 (and tp!1733053 tp!1733054))))

(assert (=> b!6211740 (= tp!1732846 e!3782400)))

(assert (= (and b!6211740 ((_ is Cons!64622) (t!378270 (exprs!6033 (h!71071 zl!343))))) b!6212766))

(declare-fun b!6212767 () Bool)

(declare-fun e!3782401 () Bool)

(assert (=> b!6212767 (= e!3782401 tp_is_empty!41551)))

(declare-fun b!6212769 () Bool)

(declare-fun tp!1733058 () Bool)

(assert (=> b!6212769 (= e!3782401 tp!1733058)))

(declare-fun b!6212770 () Bool)

(declare-fun tp!1733056 () Bool)

(declare-fun tp!1733055 () Bool)

(assert (=> b!6212770 (= e!3782401 (and tp!1733056 tp!1733055))))

(assert (=> b!6211703 (= tp!1732806 e!3782401)))

(declare-fun b!6212768 () Bool)

(declare-fun tp!1733059 () Bool)

(declare-fun tp!1733057 () Bool)

(assert (=> b!6212768 (= e!3782401 (and tp!1733059 tp!1733057))))

(assert (= (and b!6211703 ((_ is ElementMatch!16149) (regOne!32810 (regOne!32810 r!7292)))) b!6212767))

(assert (= (and b!6211703 ((_ is Concat!24994) (regOne!32810 (regOne!32810 r!7292)))) b!6212768))

(assert (= (and b!6211703 ((_ is Star!16149) (regOne!32810 (regOne!32810 r!7292)))) b!6212769))

(assert (= (and b!6211703 ((_ is Union!16149) (regOne!32810 (regOne!32810 r!7292)))) b!6212770))

(declare-fun b!6212771 () Bool)

(declare-fun e!3782402 () Bool)

(assert (=> b!6212771 (= e!3782402 tp_is_empty!41551)))

(declare-fun b!6212773 () Bool)

(declare-fun tp!1733063 () Bool)

(assert (=> b!6212773 (= e!3782402 tp!1733063)))

(declare-fun b!6212774 () Bool)

(declare-fun tp!1733061 () Bool)

(declare-fun tp!1733060 () Bool)

(assert (=> b!6212774 (= e!3782402 (and tp!1733061 tp!1733060))))

(assert (=> b!6211703 (= tp!1732804 e!3782402)))

(declare-fun b!6212772 () Bool)

(declare-fun tp!1733064 () Bool)

(declare-fun tp!1733062 () Bool)

(assert (=> b!6212772 (= e!3782402 (and tp!1733064 tp!1733062))))

(assert (= (and b!6211703 ((_ is ElementMatch!16149) (regTwo!32810 (regOne!32810 r!7292)))) b!6212771))

(assert (= (and b!6211703 ((_ is Concat!24994) (regTwo!32810 (regOne!32810 r!7292)))) b!6212772))

(assert (= (and b!6211703 ((_ is Star!16149) (regTwo!32810 (regOne!32810 r!7292)))) b!6212773))

(assert (= (and b!6211703 ((_ is Union!16149) (regTwo!32810 (regOne!32810 r!7292)))) b!6212774))

(declare-fun b!6212775 () Bool)

(declare-fun e!3782403 () Bool)

(assert (=> b!6212775 (= e!3782403 tp_is_empty!41551)))

(declare-fun b!6212777 () Bool)

(declare-fun tp!1733068 () Bool)

(assert (=> b!6212777 (= e!3782403 tp!1733068)))

(declare-fun b!6212778 () Bool)

(declare-fun tp!1733066 () Bool)

(declare-fun tp!1733065 () Bool)

(assert (=> b!6212778 (= e!3782403 (and tp!1733066 tp!1733065))))

(assert (=> b!6211712 (= tp!1732815 e!3782403)))

(declare-fun b!6212776 () Bool)

(declare-fun tp!1733069 () Bool)

(declare-fun tp!1733067 () Bool)

(assert (=> b!6212776 (= e!3782403 (and tp!1733069 tp!1733067))))

(assert (= (and b!6211712 ((_ is ElementMatch!16149) (reg!16478 (reg!16478 r!7292)))) b!6212775))

(assert (= (and b!6211712 ((_ is Concat!24994) (reg!16478 (reg!16478 r!7292)))) b!6212776))

(assert (= (and b!6211712 ((_ is Star!16149) (reg!16478 (reg!16478 r!7292)))) b!6212777))

(assert (= (and b!6211712 ((_ is Union!16149) (reg!16478 (reg!16478 r!7292)))) b!6212778))

(declare-fun b!6212779 () Bool)

(declare-fun e!3782404 () Bool)

(assert (=> b!6212779 (= e!3782404 tp_is_empty!41551)))

(declare-fun b!6212781 () Bool)

(declare-fun tp!1733073 () Bool)

(assert (=> b!6212781 (= e!3782404 tp!1733073)))

(declare-fun b!6212782 () Bool)

(declare-fun tp!1733071 () Bool)

(declare-fun tp!1733070 () Bool)

(assert (=> b!6212782 (= e!3782404 (and tp!1733071 tp!1733070))))

(assert (=> b!6211713 (= tp!1732813 e!3782404)))

(declare-fun b!6212780 () Bool)

(declare-fun tp!1733074 () Bool)

(declare-fun tp!1733072 () Bool)

(assert (=> b!6212780 (= e!3782404 (and tp!1733074 tp!1733072))))

(assert (= (and b!6211713 ((_ is ElementMatch!16149) (regOne!32811 (reg!16478 r!7292)))) b!6212779))

(assert (= (and b!6211713 ((_ is Concat!24994) (regOne!32811 (reg!16478 r!7292)))) b!6212780))

(assert (= (and b!6211713 ((_ is Star!16149) (regOne!32811 (reg!16478 r!7292)))) b!6212781))

(assert (= (and b!6211713 ((_ is Union!16149) (regOne!32811 (reg!16478 r!7292)))) b!6212782))

(declare-fun b!6212783 () Bool)

(declare-fun e!3782405 () Bool)

(assert (=> b!6212783 (= e!3782405 tp_is_empty!41551)))

(declare-fun b!6212785 () Bool)

(declare-fun tp!1733078 () Bool)

(assert (=> b!6212785 (= e!3782405 tp!1733078)))

(declare-fun b!6212786 () Bool)

(declare-fun tp!1733076 () Bool)

(declare-fun tp!1733075 () Bool)

(assert (=> b!6212786 (= e!3782405 (and tp!1733076 tp!1733075))))

(assert (=> b!6211713 (= tp!1732812 e!3782405)))

(declare-fun b!6212784 () Bool)

(declare-fun tp!1733079 () Bool)

(declare-fun tp!1733077 () Bool)

(assert (=> b!6212784 (= e!3782405 (and tp!1733079 tp!1733077))))

(assert (= (and b!6211713 ((_ is ElementMatch!16149) (regTwo!32811 (reg!16478 r!7292)))) b!6212783))

(assert (= (and b!6211713 ((_ is Concat!24994) (regTwo!32811 (reg!16478 r!7292)))) b!6212784))

(assert (= (and b!6211713 ((_ is Star!16149) (regTwo!32811 (reg!16478 r!7292)))) b!6212785))

(assert (= (and b!6211713 ((_ is Union!16149) (regTwo!32811 (reg!16478 r!7292)))) b!6212786))

(declare-fun b!6212787 () Bool)

(declare-fun e!3782406 () Bool)

(assert (=> b!6212787 (= e!3782406 tp_is_empty!41551)))

(declare-fun b!6212789 () Bool)

(declare-fun tp!1733083 () Bool)

(assert (=> b!6212789 (= e!3782406 tp!1733083)))

(declare-fun b!6212790 () Bool)

(declare-fun tp!1733081 () Bool)

(declare-fun tp!1733080 () Bool)

(assert (=> b!6212790 (= e!3782406 (and tp!1733081 tp!1733080))))

(assert (=> b!6211704 (= tp!1732805 e!3782406)))

(declare-fun b!6212788 () Bool)

(declare-fun tp!1733084 () Bool)

(declare-fun tp!1733082 () Bool)

(assert (=> b!6212788 (= e!3782406 (and tp!1733084 tp!1733082))))

(assert (= (and b!6211704 ((_ is ElementMatch!16149) (reg!16478 (regOne!32810 r!7292)))) b!6212787))

(assert (= (and b!6211704 ((_ is Concat!24994) (reg!16478 (regOne!32810 r!7292)))) b!6212788))

(assert (= (and b!6211704 ((_ is Star!16149) (reg!16478 (regOne!32810 r!7292)))) b!6212789))

(assert (= (and b!6211704 ((_ is Union!16149) (reg!16478 (regOne!32810 r!7292)))) b!6212790))

(declare-fun b!6212791 () Bool)

(declare-fun e!3782407 () Bool)

(assert (=> b!6212791 (= e!3782407 tp_is_empty!41551)))

(declare-fun b!6212793 () Bool)

(declare-fun tp!1733088 () Bool)

(assert (=> b!6212793 (= e!3782407 tp!1733088)))

(declare-fun b!6212794 () Bool)

(declare-fun tp!1733086 () Bool)

(declare-fun tp!1733085 () Bool)

(assert (=> b!6212794 (= e!3782407 (and tp!1733086 tp!1733085))))

(assert (=> b!6211705 (= tp!1732803 e!3782407)))

(declare-fun b!6212792 () Bool)

(declare-fun tp!1733089 () Bool)

(declare-fun tp!1733087 () Bool)

(assert (=> b!6212792 (= e!3782407 (and tp!1733089 tp!1733087))))

(assert (= (and b!6211705 ((_ is ElementMatch!16149) (regOne!32811 (regOne!32810 r!7292)))) b!6212791))

(assert (= (and b!6211705 ((_ is Concat!24994) (regOne!32811 (regOne!32810 r!7292)))) b!6212792))

(assert (= (and b!6211705 ((_ is Star!16149) (regOne!32811 (regOne!32810 r!7292)))) b!6212793))

(assert (= (and b!6211705 ((_ is Union!16149) (regOne!32811 (regOne!32810 r!7292)))) b!6212794))

(declare-fun b!6212795 () Bool)

(declare-fun e!3782408 () Bool)

(assert (=> b!6212795 (= e!3782408 tp_is_empty!41551)))

(declare-fun b!6212797 () Bool)

(declare-fun tp!1733093 () Bool)

(assert (=> b!6212797 (= e!3782408 tp!1733093)))

(declare-fun b!6212798 () Bool)

(declare-fun tp!1733091 () Bool)

(declare-fun tp!1733090 () Bool)

(assert (=> b!6212798 (= e!3782408 (and tp!1733091 tp!1733090))))

(assert (=> b!6211705 (= tp!1732802 e!3782408)))

(declare-fun b!6212796 () Bool)

(declare-fun tp!1733094 () Bool)

(declare-fun tp!1733092 () Bool)

(assert (=> b!6212796 (= e!3782408 (and tp!1733094 tp!1733092))))

(assert (= (and b!6211705 ((_ is ElementMatch!16149) (regTwo!32811 (regOne!32810 r!7292)))) b!6212795))

(assert (= (and b!6211705 ((_ is Concat!24994) (regTwo!32811 (regOne!32810 r!7292)))) b!6212796))

(assert (= (and b!6211705 ((_ is Star!16149) (regTwo!32811 (regOne!32810 r!7292)))) b!6212797))

(assert (= (and b!6211705 ((_ is Union!16149) (regTwo!32811 (regOne!32810 r!7292)))) b!6212798))

(declare-fun condSetEmpty!42182 () Bool)

(assert (=> setNonEmpty!42174 (= condSetEmpty!42182 (= setRest!42174 ((as const (Array Context!11066 Bool)) false)))))

(declare-fun setRes!42182 () Bool)

(assert (=> setNonEmpty!42174 (= tp!1732822 setRes!42182)))

(declare-fun setIsEmpty!42182 () Bool)

(assert (=> setIsEmpty!42182 setRes!42182))

(declare-fun tp!1733096 () Bool)

(declare-fun setNonEmpty!42182 () Bool)

(declare-fun e!3782409 () Bool)

(declare-fun setElem!42182 () Context!11066)

(assert (=> setNonEmpty!42182 (= setRes!42182 (and tp!1733096 (inv!83619 setElem!42182) e!3782409))))

(declare-fun setRest!42182 () (InoxSet Context!11066))

(assert (=> setNonEmpty!42182 (= setRest!42174 ((_ map or) (store ((as const (Array Context!11066 Bool)) false) setElem!42182 true) setRest!42182))))

(declare-fun b!6212799 () Bool)

(declare-fun tp!1733095 () Bool)

(assert (=> b!6212799 (= e!3782409 tp!1733095)))

(assert (= (and setNonEmpty!42174 condSetEmpty!42182) setIsEmpty!42182))

(assert (= (and setNonEmpty!42174 (not condSetEmpty!42182)) setNonEmpty!42182))

(assert (= setNonEmpty!42182 b!6212799))

(declare-fun m!7042438 () Bool)

(assert (=> setNonEmpty!42182 m!7042438))

(declare-fun b!6212800 () Bool)

(declare-fun e!3782410 () Bool)

(declare-fun tp!1733097 () Bool)

(declare-fun tp!1733098 () Bool)

(assert (=> b!6212800 (= e!3782410 (and tp!1733097 tp!1733098))))

(assert (=> b!6211718 (= tp!1732821 e!3782410)))

(assert (= (and b!6211718 ((_ is Cons!64622) (exprs!6033 setElem!42174))) b!6212800))

(declare-fun b!6212801 () Bool)

(declare-fun e!3782411 () Bool)

(assert (=> b!6212801 (= e!3782411 tp_is_empty!41551)))

(declare-fun b!6212803 () Bool)

(declare-fun tp!1733102 () Bool)

(assert (=> b!6212803 (= e!3782411 tp!1733102)))

(declare-fun b!6212804 () Bool)

(declare-fun tp!1733100 () Bool)

(declare-fun tp!1733099 () Bool)

(assert (=> b!6212804 (= e!3782411 (and tp!1733100 tp!1733099))))

(assert (=> b!6211739 (= tp!1732843 e!3782411)))

(declare-fun b!6212802 () Bool)

(declare-fun tp!1733103 () Bool)

(declare-fun tp!1733101 () Bool)

(assert (=> b!6212802 (= e!3782411 (and tp!1733103 tp!1733101))))

(assert (= (and b!6211739 ((_ is ElementMatch!16149) (h!71070 (exprs!6033 setElem!42168)))) b!6212801))

(assert (= (and b!6211739 ((_ is Concat!24994) (h!71070 (exprs!6033 setElem!42168)))) b!6212802))

(assert (= (and b!6211739 ((_ is Star!16149) (h!71070 (exprs!6033 setElem!42168)))) b!6212803))

(assert (= (and b!6211739 ((_ is Union!16149) (h!71070 (exprs!6033 setElem!42168)))) b!6212804))

(declare-fun b!6212805 () Bool)

(declare-fun e!3782412 () Bool)

(declare-fun tp!1733104 () Bool)

(declare-fun tp!1733105 () Bool)

(assert (=> b!6212805 (= e!3782412 (and tp!1733104 tp!1733105))))

(assert (=> b!6211739 (= tp!1732844 e!3782412)))

(assert (= (and b!6211739 ((_ is Cons!64622) (t!378270 (exprs!6033 setElem!42168)))) b!6212805))

(declare-fun b!6212806 () Bool)

(declare-fun e!3782413 () Bool)

(assert (=> b!6212806 (= e!3782413 tp_is_empty!41551)))

(declare-fun b!6212808 () Bool)

(declare-fun tp!1733109 () Bool)

(assert (=> b!6212808 (= e!3782413 tp!1733109)))

(declare-fun b!6212809 () Bool)

(declare-fun tp!1733107 () Bool)

(declare-fun tp!1733106 () Bool)

(assert (=> b!6212809 (= e!3782413 (and tp!1733107 tp!1733106))))

(assert (=> b!6211732 (= tp!1732838 e!3782413)))

(declare-fun b!6212807 () Bool)

(declare-fun tp!1733110 () Bool)

(declare-fun tp!1733108 () Bool)

(assert (=> b!6212807 (= e!3782413 (and tp!1733110 tp!1733108))))

(assert (= (and b!6211732 ((_ is ElementMatch!16149) (regOne!32810 (regTwo!32811 r!7292)))) b!6212806))

(assert (= (and b!6211732 ((_ is Concat!24994) (regOne!32810 (regTwo!32811 r!7292)))) b!6212807))

(assert (= (and b!6211732 ((_ is Star!16149) (regOne!32810 (regTwo!32811 r!7292)))) b!6212808))

(assert (= (and b!6211732 ((_ is Union!16149) (regOne!32810 (regTwo!32811 r!7292)))) b!6212809))

(declare-fun b!6212810 () Bool)

(declare-fun e!3782414 () Bool)

(assert (=> b!6212810 (= e!3782414 tp_is_empty!41551)))

(declare-fun b!6212812 () Bool)

(declare-fun tp!1733114 () Bool)

(assert (=> b!6212812 (= e!3782414 tp!1733114)))

(declare-fun b!6212813 () Bool)

(declare-fun tp!1733112 () Bool)

(declare-fun tp!1733111 () Bool)

(assert (=> b!6212813 (= e!3782414 (and tp!1733112 tp!1733111))))

(assert (=> b!6211732 (= tp!1732836 e!3782414)))

(declare-fun b!6212811 () Bool)

(declare-fun tp!1733115 () Bool)

(declare-fun tp!1733113 () Bool)

(assert (=> b!6212811 (= e!3782414 (and tp!1733115 tp!1733113))))

(assert (= (and b!6211732 ((_ is ElementMatch!16149) (regTwo!32810 (regTwo!32811 r!7292)))) b!6212810))

(assert (= (and b!6211732 ((_ is Concat!24994) (regTwo!32810 (regTwo!32811 r!7292)))) b!6212811))

(assert (= (and b!6211732 ((_ is Star!16149) (regTwo!32810 (regTwo!32811 r!7292)))) b!6212812))

(assert (= (and b!6211732 ((_ is Union!16149) (regTwo!32810 (regTwo!32811 r!7292)))) b!6212813))

(declare-fun b!6212814 () Bool)

(declare-fun e!3782415 () Bool)

(assert (=> b!6212814 (= e!3782415 tp_is_empty!41551)))

(declare-fun b!6212816 () Bool)

(declare-fun tp!1733119 () Bool)

(assert (=> b!6212816 (= e!3782415 tp!1733119)))

(declare-fun b!6212817 () Bool)

(declare-fun tp!1733117 () Bool)

(declare-fun tp!1733116 () Bool)

(assert (=> b!6212817 (= e!3782415 (and tp!1733117 tp!1733116))))

(assert (=> b!6211728 (= tp!1732833 e!3782415)))

(declare-fun b!6212815 () Bool)

(declare-fun tp!1733120 () Bool)

(declare-fun tp!1733118 () Bool)

(assert (=> b!6212815 (= e!3782415 (and tp!1733120 tp!1733118))))

(assert (= (and b!6211728 ((_ is ElementMatch!16149) (regOne!32810 (regOne!32811 r!7292)))) b!6212814))

(assert (= (and b!6211728 ((_ is Concat!24994) (regOne!32810 (regOne!32811 r!7292)))) b!6212815))

(assert (= (and b!6211728 ((_ is Star!16149) (regOne!32810 (regOne!32811 r!7292)))) b!6212816))

(assert (= (and b!6211728 ((_ is Union!16149) (regOne!32810 (regOne!32811 r!7292)))) b!6212817))

(declare-fun b!6212818 () Bool)

(declare-fun e!3782416 () Bool)

(assert (=> b!6212818 (= e!3782416 tp_is_empty!41551)))

(declare-fun b!6212820 () Bool)

(declare-fun tp!1733124 () Bool)

(assert (=> b!6212820 (= e!3782416 tp!1733124)))

(declare-fun b!6212821 () Bool)

(declare-fun tp!1733122 () Bool)

(declare-fun tp!1733121 () Bool)

(assert (=> b!6212821 (= e!3782416 (and tp!1733122 tp!1733121))))

(assert (=> b!6211728 (= tp!1732831 e!3782416)))

(declare-fun b!6212819 () Bool)

(declare-fun tp!1733125 () Bool)

(declare-fun tp!1733123 () Bool)

(assert (=> b!6212819 (= e!3782416 (and tp!1733125 tp!1733123))))

(assert (= (and b!6211728 ((_ is ElementMatch!16149) (regTwo!32810 (regOne!32811 r!7292)))) b!6212818))

(assert (= (and b!6211728 ((_ is Concat!24994) (regTwo!32810 (regOne!32811 r!7292)))) b!6212819))

(assert (= (and b!6211728 ((_ is Star!16149) (regTwo!32810 (regOne!32811 r!7292)))) b!6212820))

(assert (= (and b!6211728 ((_ is Union!16149) (regTwo!32810 (regOne!32811 r!7292)))) b!6212821))

(declare-fun b!6212822 () Bool)

(declare-fun e!3782417 () Bool)

(declare-fun tp!1733126 () Bool)

(assert (=> b!6212822 (= e!3782417 (and tp_is_empty!41551 tp!1733126))))

(assert (=> b!6211691 (= tp!1732791 e!3782417)))

(assert (= (and b!6211691 ((_ is Cons!64624) (t!378272 (t!378272 s!2326)))) b!6212822))

(declare-fun b!6212823 () Bool)

(declare-fun e!3782418 () Bool)

(assert (=> b!6212823 (= e!3782418 tp_is_empty!41551)))

(declare-fun b!6212825 () Bool)

(declare-fun tp!1733130 () Bool)

(assert (=> b!6212825 (= e!3782418 tp!1733130)))

(declare-fun b!6212826 () Bool)

(declare-fun tp!1733128 () Bool)

(declare-fun tp!1733127 () Bool)

(assert (=> b!6212826 (= e!3782418 (and tp!1733128 tp!1733127))))

(assert (=> b!6211707 (= tp!1732811 e!3782418)))

(declare-fun b!6212824 () Bool)

(declare-fun tp!1733131 () Bool)

(declare-fun tp!1733129 () Bool)

(assert (=> b!6212824 (= e!3782418 (and tp!1733131 tp!1733129))))

(assert (= (and b!6211707 ((_ is ElementMatch!16149) (regOne!32810 (regTwo!32810 r!7292)))) b!6212823))

(assert (= (and b!6211707 ((_ is Concat!24994) (regOne!32810 (regTwo!32810 r!7292)))) b!6212824))

(assert (= (and b!6211707 ((_ is Star!16149) (regOne!32810 (regTwo!32810 r!7292)))) b!6212825))

(assert (= (and b!6211707 ((_ is Union!16149) (regOne!32810 (regTwo!32810 r!7292)))) b!6212826))

(declare-fun b!6212827 () Bool)

(declare-fun e!3782419 () Bool)

(assert (=> b!6212827 (= e!3782419 tp_is_empty!41551)))

(declare-fun b!6212829 () Bool)

(declare-fun tp!1733135 () Bool)

(assert (=> b!6212829 (= e!3782419 tp!1733135)))

(declare-fun b!6212830 () Bool)

(declare-fun tp!1733133 () Bool)

(declare-fun tp!1733132 () Bool)

(assert (=> b!6212830 (= e!3782419 (and tp!1733133 tp!1733132))))

(assert (=> b!6211707 (= tp!1732809 e!3782419)))

(declare-fun b!6212828 () Bool)

(declare-fun tp!1733136 () Bool)

(declare-fun tp!1733134 () Bool)

(assert (=> b!6212828 (= e!3782419 (and tp!1733136 tp!1733134))))

(assert (= (and b!6211707 ((_ is ElementMatch!16149) (regTwo!32810 (regTwo!32810 r!7292)))) b!6212827))

(assert (= (and b!6211707 ((_ is Concat!24994) (regTwo!32810 (regTwo!32810 r!7292)))) b!6212828))

(assert (= (and b!6211707 ((_ is Star!16149) (regTwo!32810 (regTwo!32810 r!7292)))) b!6212829))

(assert (= (and b!6211707 ((_ is Union!16149) (regTwo!32810 (regTwo!32810 r!7292)))) b!6212830))

(declare-fun b!6212831 () Bool)

(declare-fun e!3782420 () Bool)

(assert (=> b!6212831 (= e!3782420 tp_is_empty!41551)))

(declare-fun b!6212833 () Bool)

(declare-fun tp!1733140 () Bool)

(assert (=> b!6212833 (= e!3782420 tp!1733140)))

(declare-fun b!6212834 () Bool)

(declare-fun tp!1733138 () Bool)

(declare-fun tp!1733137 () Bool)

(assert (=> b!6212834 (= e!3782420 (and tp!1733138 tp!1733137))))

(assert (=> b!6211729 (= tp!1732832 e!3782420)))

(declare-fun b!6212832 () Bool)

(declare-fun tp!1733141 () Bool)

(declare-fun tp!1733139 () Bool)

(assert (=> b!6212832 (= e!3782420 (and tp!1733141 tp!1733139))))

(assert (= (and b!6211729 ((_ is ElementMatch!16149) (reg!16478 (regOne!32811 r!7292)))) b!6212831))

(assert (= (and b!6211729 ((_ is Concat!24994) (reg!16478 (regOne!32811 r!7292)))) b!6212832))

(assert (= (and b!6211729 ((_ is Star!16149) (reg!16478 (regOne!32811 r!7292)))) b!6212833))

(assert (= (and b!6211729 ((_ is Union!16149) (reg!16478 (regOne!32811 r!7292)))) b!6212834))

(declare-fun b!6212835 () Bool)

(declare-fun e!3782421 () Bool)

(assert (=> b!6212835 (= e!3782421 tp_is_empty!41551)))

(declare-fun b!6212837 () Bool)

(declare-fun tp!1733145 () Bool)

(assert (=> b!6212837 (= e!3782421 tp!1733145)))

(declare-fun b!6212838 () Bool)

(declare-fun tp!1733143 () Bool)

(declare-fun tp!1733142 () Bool)

(assert (=> b!6212838 (= e!3782421 (and tp!1733143 tp!1733142))))

(assert (=> b!6211730 (= tp!1732830 e!3782421)))

(declare-fun b!6212836 () Bool)

(declare-fun tp!1733146 () Bool)

(declare-fun tp!1733144 () Bool)

(assert (=> b!6212836 (= e!3782421 (and tp!1733146 tp!1733144))))

(assert (= (and b!6211730 ((_ is ElementMatch!16149) (regOne!32811 (regOne!32811 r!7292)))) b!6212835))

(assert (= (and b!6211730 ((_ is Concat!24994) (regOne!32811 (regOne!32811 r!7292)))) b!6212836))

(assert (= (and b!6211730 ((_ is Star!16149) (regOne!32811 (regOne!32811 r!7292)))) b!6212837))

(assert (= (and b!6211730 ((_ is Union!16149) (regOne!32811 (regOne!32811 r!7292)))) b!6212838))

(declare-fun b!6212839 () Bool)

(declare-fun e!3782422 () Bool)

(assert (=> b!6212839 (= e!3782422 tp_is_empty!41551)))

(declare-fun b!6212841 () Bool)

(declare-fun tp!1733150 () Bool)

(assert (=> b!6212841 (= e!3782422 tp!1733150)))

(declare-fun b!6212842 () Bool)

(declare-fun tp!1733148 () Bool)

(declare-fun tp!1733147 () Bool)

(assert (=> b!6212842 (= e!3782422 (and tp!1733148 tp!1733147))))

(assert (=> b!6211730 (= tp!1732829 e!3782422)))

(declare-fun b!6212840 () Bool)

(declare-fun tp!1733151 () Bool)

(declare-fun tp!1733149 () Bool)

(assert (=> b!6212840 (= e!3782422 (and tp!1733151 tp!1733149))))

(assert (= (and b!6211730 ((_ is ElementMatch!16149) (regTwo!32811 (regOne!32811 r!7292)))) b!6212839))

(assert (= (and b!6211730 ((_ is Concat!24994) (regTwo!32811 (regOne!32811 r!7292)))) b!6212840))

(assert (= (and b!6211730 ((_ is Star!16149) (regTwo!32811 (regOne!32811 r!7292)))) b!6212841))

(assert (= (and b!6211730 ((_ is Union!16149) (regTwo!32811 (regOne!32811 r!7292)))) b!6212842))

(declare-fun b!6212843 () Bool)

(declare-fun e!3782423 () Bool)

(assert (=> b!6212843 (= e!3782423 tp_is_empty!41551)))

(declare-fun b!6212845 () Bool)

(declare-fun tp!1733155 () Bool)

(assert (=> b!6212845 (= e!3782423 tp!1733155)))

(declare-fun b!6212846 () Bool)

(declare-fun tp!1733153 () Bool)

(declare-fun tp!1733152 () Bool)

(assert (=> b!6212846 (= e!3782423 (and tp!1733153 tp!1733152))))

(assert (=> b!6211708 (= tp!1732810 e!3782423)))

(declare-fun b!6212844 () Bool)

(declare-fun tp!1733156 () Bool)

(declare-fun tp!1733154 () Bool)

(assert (=> b!6212844 (= e!3782423 (and tp!1733156 tp!1733154))))

(assert (= (and b!6211708 ((_ is ElementMatch!16149) (reg!16478 (regTwo!32810 r!7292)))) b!6212843))

(assert (= (and b!6211708 ((_ is Concat!24994) (reg!16478 (regTwo!32810 r!7292)))) b!6212844))

(assert (= (and b!6211708 ((_ is Star!16149) (reg!16478 (regTwo!32810 r!7292)))) b!6212845))

(assert (= (and b!6211708 ((_ is Union!16149) (reg!16478 (regTwo!32810 r!7292)))) b!6212846))

(declare-fun b!6212847 () Bool)

(declare-fun e!3782424 () Bool)

(assert (=> b!6212847 (= e!3782424 tp_is_empty!41551)))

(declare-fun b!6212849 () Bool)

(declare-fun tp!1733160 () Bool)

(assert (=> b!6212849 (= e!3782424 tp!1733160)))

(declare-fun b!6212850 () Bool)

(declare-fun tp!1733158 () Bool)

(declare-fun tp!1733157 () Bool)

(assert (=> b!6212850 (= e!3782424 (and tp!1733158 tp!1733157))))

(assert (=> b!6211709 (= tp!1732808 e!3782424)))

(declare-fun b!6212848 () Bool)

(declare-fun tp!1733161 () Bool)

(declare-fun tp!1733159 () Bool)

(assert (=> b!6212848 (= e!3782424 (and tp!1733161 tp!1733159))))

(assert (= (and b!6211709 ((_ is ElementMatch!16149) (regOne!32811 (regTwo!32810 r!7292)))) b!6212847))

(assert (= (and b!6211709 ((_ is Concat!24994) (regOne!32811 (regTwo!32810 r!7292)))) b!6212848))

(assert (= (and b!6211709 ((_ is Star!16149) (regOne!32811 (regTwo!32810 r!7292)))) b!6212849))

(assert (= (and b!6211709 ((_ is Union!16149) (regOne!32811 (regTwo!32810 r!7292)))) b!6212850))

(declare-fun b!6212851 () Bool)

(declare-fun e!3782425 () Bool)

(assert (=> b!6212851 (= e!3782425 tp_is_empty!41551)))

(declare-fun b!6212853 () Bool)

(declare-fun tp!1733165 () Bool)

(assert (=> b!6212853 (= e!3782425 tp!1733165)))

(declare-fun b!6212854 () Bool)

(declare-fun tp!1733163 () Bool)

(declare-fun tp!1733162 () Bool)

(assert (=> b!6212854 (= e!3782425 (and tp!1733163 tp!1733162))))

(assert (=> b!6211709 (= tp!1732807 e!3782425)))

(declare-fun b!6212852 () Bool)

(declare-fun tp!1733166 () Bool)

(declare-fun tp!1733164 () Bool)

(assert (=> b!6212852 (= e!3782425 (and tp!1733166 tp!1733164))))

(assert (= (and b!6211709 ((_ is ElementMatch!16149) (regTwo!32811 (regTwo!32810 r!7292)))) b!6212851))

(assert (= (and b!6211709 ((_ is Concat!24994) (regTwo!32811 (regTwo!32810 r!7292)))) b!6212852))

(assert (= (and b!6211709 ((_ is Star!16149) (regTwo!32811 (regTwo!32810 r!7292)))) b!6212853))

(assert (= (and b!6211709 ((_ is Union!16149) (regTwo!32811 (regTwo!32810 r!7292)))) b!6212854))

(declare-fun b_lambda!236223 () Bool)

(assert (= b_lambda!236215 (or d!1947044 b_lambda!236223)))

(declare-fun bs!1541032 () Bool)

(declare-fun d!1947526 () Bool)

(assert (= bs!1541032 (and d!1947526 d!1947044)))

(assert (=> bs!1541032 (= (dynLambda!25493 lambda!339429 (h!71070 (unfocusZipperList!1570 zl!343))) (validRegex!7885 (h!71070 (unfocusZipperList!1570 zl!343))))))

(declare-fun m!7042440 () Bool)

(assert (=> bs!1541032 m!7042440))

(assert (=> b!6212486 d!1947526))

(declare-fun b_lambda!236225 () Bool)

(assert (= b_lambda!236209 (or d!1946990 b_lambda!236225)))

(declare-fun bs!1541033 () Bool)

(declare-fun d!1947528 () Bool)

(assert (= bs!1541033 (and d!1947528 d!1946990)))

(assert (=> bs!1541033 (= (dynLambda!25493 lambda!339415 (h!71070 (exprs!6033 setElem!42168))) (validRegex!7885 (h!71070 (exprs!6033 setElem!42168))))))

(declare-fun m!7042442 () Bool)

(assert (=> bs!1541033 m!7042442))

(assert (=> b!6212343 d!1947528))

(declare-fun b_lambda!236227 () Bool)

(assert (= b_lambda!236211 (or b!6210960 b_lambda!236227)))

(assert (=> d!1947350 d!1947064))

(declare-fun b_lambda!236229 () Bool)

(assert (= b_lambda!236219 (or d!1946998 b_lambda!236229)))

(declare-fun bs!1541034 () Bool)

(declare-fun d!1947530 () Bool)

(assert (= bs!1541034 (and d!1947530 d!1946998)))

(assert (=> bs!1541034 (= (dynLambda!25493 lambda!339416 (h!71070 (exprs!6033 lt!2343849))) (validRegex!7885 (h!71070 (exprs!6033 lt!2343849))))))

(declare-fun m!7042444 () Bool)

(assert (=> bs!1541034 m!7042444))

(assert (=> b!6212630 d!1947530))

(declare-fun b_lambda!236231 () Bool)

(assert (= b_lambda!236217 (or d!1947046 b_lambda!236231)))

(declare-fun bs!1541035 () Bool)

(declare-fun d!1947532 () Bool)

(assert (= bs!1541035 (and d!1947532 d!1947046)))

(assert (=> bs!1541035 (= (dynLambda!25493 lambda!339432 (h!71070 lt!2343924)) (validRegex!7885 (h!71070 lt!2343924)))))

(declare-fun m!7042446 () Bool)

(assert (=> bs!1541035 m!7042446))

(assert (=> b!6212488 d!1947532))

(declare-fun b_lambda!236233 () Bool)

(assert (= b_lambda!236221 (or d!1947062 b_lambda!236233)))

(declare-fun bs!1541036 () Bool)

(declare-fun d!1947534 () Bool)

(assert (= bs!1541036 (and d!1947534 d!1947062)))

(assert (=> bs!1541036 (= (dynLambda!25493 lambda!339441 (h!71070 (exprs!6033 (h!71071 zl!343)))) (validRegex!7885 (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(declare-fun m!7042448 () Bool)

(assert (=> bs!1541036 m!7042448))

(assert (=> b!6212702 d!1947534))

(declare-fun b_lambda!236235 () Bool)

(assert (= b_lambda!236213 (or d!1947006 b_lambda!236235)))

(declare-fun bs!1541037 () Bool)

(declare-fun d!1947536 () Bool)

(assert (= bs!1541037 (and d!1947536 d!1947006)))

(assert (=> bs!1541037 (= (dynLambda!25493 lambda!339417 (h!71070 (exprs!6033 (h!71071 zl!343)))) (validRegex!7885 (h!71070 (exprs!6033 (h!71071 zl!343)))))))

(assert (=> bs!1541037 m!7042448))

(assert (=> b!6212420 d!1947536))

(check-sat (not bm!520817) (not b_lambda!236179) (not b!6212832) (not b!6212604) (not bm!520772) (not b!6212298) (not b!6212642) (not b!6212840) (not d!1947462) (not b!6212745) (not d!1947372) (not d!1947380) (not b!6212757) (not b!6212816) (not bm!520788) (not b!6212617) (not b!6212385) (not b!6212577) (not d!1947492) (not bm!520751) (not d!1947342) (not b!6212740) (not bm!520787) (not b!6212541) (not b!6212562) (not d!1947514) (not bm!520744) (not b!6212402) (not b!6212615) (not d!1947326) (not b!6212594) (not d!1947356) (not d!1947508) (not b!6212819) (not b!6212451) (not d!1947498) (not d!1947348) (not b!6212753) (not bm!520753) (not b!6212829) (not b!6212492) (not bm!520763) (not b!6212450) (not b!6212841) (not b!6212796) (not b!6212612) (not b!6212828) (not d!1947454) (not b!6212777) (not b!6212751) (not b!6212716) (not b!6212778) (not bm!520781) (not b!6212400) (not b!6212800) tp_is_empty!41551 (not d!1947368) (not bm!520764) (not b!6212599) (not b!6212419) (not bm!520776) (not b!6212808) (not b!6212345) (not bm!520782) (not b!6212528) (not b!6212628) (not bm!520809) (not b!6212811) (not b!6212421) (not d!1947308) (not b!6212770) (not d!1947500) (not b!6212803) (not b!6212476) (not d!1947450) (not d!1947336) (not b!6212749) (not d!1947452) (not b!6212487) (not b!6212822) (not bm!520795) (not b!6212463) (not b!6212846) (not b!6212842) (not b!6212456) (not b!6212347) (not b!6212538) (not b!6212595) (not b!6212691) (not b!6212605) (not b!6212681) (not b!6212812) (not d!1947472) (not bm!520846) (not d!1947352) (not d!1947520) (not b!6212501) (not b!6212805) (not bm!520765) (not b!6212763) (not b!6212726) (not bm!520819) (not b!6212382) (not b!6212793) (not b!6212551) (not b!6212769) (not b!6212348) (not b!6212452) (not d!1947310) (not bm!520766) (not setNonEmpty!42182) (not b!6212781) (not b!6212409) (not b!6212318) (not b!6212644) (not b!6212788) (not b!6212817) (not b!6212384) (not b!6212537) (not b_lambda!236223) (not d!1947486) (not b!6212621) (not b!6212449) (not b!6212584) (not d!1947344) (not b!6212755) (not b!6212513) (not bm!520798) (not b!6212690) (not b!6212533) (not b!6212820) (not b!6212844) (not b!6212821) (not b!6212765) (not bm!520811) (not d!1947376) (not bm!520847) (not d!1947516) (not bm!520838) (not bm!520775) (not bm!520810) (not b_lambda!236235) (not b!6212786) (not b!6212836) (not b!6212392) (not bs!1541035) (not b!6212379) (not b!6212444) (not b!6212553) (not b!6212853) (not d!1947490) (not d!1947502) (not b!6212674) (not bm!520799) (not b!6212838) (not bm!520793) (not b!6212848) (not b!6212760) (not d!1947432) (not b!6212747) (not b!6212802) (not b!6212764) (not b!6212635) (not b!6212737) (not b!6212792) (not b_lambda!236233) (not bm!520746) (not b!6212516) (not d!1947392) (not b!6212813) (not bm!520840) (not b!6212407) (not d!1947440) (not b!6212686) (not b!6212375) (not d!1947476) (not b!6212850) (not d!1947478) (not b!6212334) (not b!6212790) (not b!6212574) (not b!6212517) (not b!6212741) (not bm!520801) (not bm!520778) (not b!6212776) (not bs!1541032) (not b!6212834) (not b!6212772) (not b!6212490) (not b!6212727) (not b!6212712) (not d!1947426) (not d!1947512) (not d!1947334) (not d!1947480) (not b!6212641) (not d!1947422) (not b!6212804) (not b!6212640) (not b!6212485) (not b!6212785) (not b!6212825) (not b!6212782) (not b!6212536) (not b!6212789) (not b!6212728) (not bm!520843) (not b!6212797) (not bm!520768) (not b!6212344) (not b!6212532) (not d!1947488) (not b!6212685) (not bs!1541036) (not bm!520818) (not b!6212613) (not bm!520844) (not b!6212849) (not b!6212798) (not bm!520800) (not b_lambda!236227) (not b!6212679) (not b!6212614) (not d!1947524) (not bm!520807) (not b!6212489) (not b!6212703) (not bm!520774) (not b!6212739) (not d!1947510) (not b!6212713) (not b!6212748) (not bm!520790) (not d!1947350) (not b!6212629) (not d!1947362) (not b!6212807) (not d!1947430) (not b!6212815) (not bm!520752) (not bm!520822) (not b!6212620) (not bm!520806) (not bm!520820) (not b!6212631) (not b!6212327) (not b!6212784) (not b!6212759) (not d!1947466) (not bm!520803) (not b!6212714) (not b!6212308) (not b!6212794) (not b!6212852) (not b!6212752) (not b_lambda!236231) (not d!1947358) (not b!6212701) (not bm!520827) (not b!6212761) (not d!1947522) (not bs!1541034) (not bm!520749) (not d!1947304) (not b!6212299) (not bm!520784) (not b!6212623) (not b!6212439) (not b!6212428) (not bs!1541033) (not b!6212768) (not b!6212830) (not b!6212738) (not bm!520755) (not b!6212405) (not b!6212378) (not b!6212406) (not bm!520814) (not b!6212780) (not b!6212824) (not b!6212774) (not bm!520796) (not b!6212692) (not bm!520825) (not b!6212707) (not b!6212373) (not b!6212540) (not d!1947470) (not b!6212529) (not b!6212380) (not b!6212625) (not b!6212626) (not bs!1541037) (not b!6212833) (not d!1947390) (not b!6212826) (not b!6212445) (not b!6212709) (not b!6212766) (not bm!520839) (not b!6212346) (not b!6212773) (not b!6212688) (not bm!520758) (not d!1947388) (not b_lambda!236225) (not b!6212845) (not b_lambda!236229) (not b!6212542) (not b!6212837) (not b!6212447) (not b!6212799) (not b!6212854) (not b!6212809) (not bm!520842) (not setNonEmpty!42181) (not d!1947428) (not b!6212744) (not b!6212637) (not b!6212756) (not b!6212684) (not bm!520808) (not d!1947416) (not b!6212743) (not d!1947370) (not bm!520812) (not bm!520771) (not bm!520826))
(check-sat)
