; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!648182 () Bool)

(assert start!648182)

(declare-fun b!6637024 () Bool)

(assert (=> b!6637024 true))

(assert (=> b!6637024 true))

(declare-fun lambda!370904 () Int)

(declare-fun lambda!370903 () Int)

(assert (=> b!6637024 (not (= lambda!370904 lambda!370903))))

(assert (=> b!6637024 true))

(assert (=> b!6637024 true))

(declare-fun b!6637019 () Bool)

(assert (=> b!6637019 true))

(declare-fun b!6637018 () Bool)

(declare-fun e!4013980 () Bool)

(declare-datatypes ((C!33280 0))(
  ( (C!33281 (val!26342 Int)) )
))
(declare-datatypes ((Regex!16505 0))(
  ( (ElementMatch!16505 (c!1224274 C!33280)) (Concat!25350 (regOne!33522 Regex!16505) (regTwo!33522 Regex!16505)) (EmptyExpr!16505) (Star!16505 (reg!16834 Regex!16505)) (EmptyLang!16505) (Union!16505 (regOne!33523 Regex!16505) (regTwo!33523 Regex!16505)) )
))
(declare-fun r!7292 () Regex!16505)

(declare-fun validRegex!8241 (Regex!16505) Bool)

(assert (=> b!6637018 (= e!4013980 (validRegex!8241 (regTwo!33522 r!7292)))))

(declare-datatypes ((List!65814 0))(
  ( (Nil!65690) (Cons!65690 (h!72138 C!33280) (t!379480 List!65814)) )
))
(declare-fun s!2326 () List!65814)

(declare-fun matchR!8688 (Regex!16505 List!65814) Bool)

(declare-fun matchRSpec!3606 (Regex!16505 List!65814) Bool)

(assert (=> b!6637018 (= (matchR!8688 (regOne!33522 r!7292) s!2326) (matchRSpec!3606 (regOne!33522 r!7292) s!2326))))

(declare-datatypes ((Unit!159375 0))(
  ( (Unit!159376) )
))
(declare-fun lt!2419768 () Unit!159375)

(declare-fun mainMatchTheorem!3606 (Regex!16505 List!65814) Unit!159375)

(assert (=> b!6637018 (= lt!2419768 (mainMatchTheorem!3606 (regOne!33522 r!7292) s!2326))))

(declare-fun e!4013976 () Bool)

(declare-fun e!4013981 () Bool)

(assert (=> b!6637019 (= e!4013976 e!4013981)))

(declare-fun res!2719953 () Bool)

(assert (=> b!6637019 (=> res!2719953 e!4013981)))

(get-info :version)

(assert (=> b!6637019 (= res!2719953 (or (and ((_ is ElementMatch!16505) (regOne!33522 r!7292)) (= (c!1224274 (regOne!33522 r!7292)) (h!72138 s!2326))) ((_ is Union!16505) (regOne!33522 r!7292))))))

(declare-fun lt!2419770 () Unit!159375)

(declare-fun e!4013983 () Unit!159375)

(assert (=> b!6637019 (= lt!2419770 e!4013983)))

(declare-fun c!1224273 () Bool)

(declare-datatypes ((List!65815 0))(
  ( (Nil!65691) (Cons!65691 (h!72139 Regex!16505) (t!379481 List!65815)) )
))
(declare-datatypes ((Context!11778 0))(
  ( (Context!11779 (exprs!6389 List!65815)) )
))
(declare-datatypes ((List!65816 0))(
  ( (Nil!65692) (Cons!65692 (h!72140 Context!11778) (t!379482 List!65816)) )
))
(declare-fun zl!343 () List!65816)

(declare-fun nullable!6498 (Regex!16505) Bool)

(assert (=> b!6637019 (= c!1224273 (nullable!6498 (h!72139 (exprs!6389 (h!72140 zl!343)))))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun z!1189 () (InoxSet Context!11778))

(declare-fun lambda!370905 () Int)

(declare-fun flatMap!2010 ((InoxSet Context!11778) Int) (InoxSet Context!11778))

(declare-fun derivationStepZipperUp!1679 (Context!11778 C!33280) (InoxSet Context!11778))

(assert (=> b!6637019 (= (flatMap!2010 z!1189 lambda!370905) (derivationStepZipperUp!1679 (h!72140 zl!343) (h!72138 s!2326)))))

(declare-fun lt!2419771 () Unit!159375)

(declare-fun lemmaFlatMapOnSingletonSet!1536 ((InoxSet Context!11778) Context!11778 Int) Unit!159375)

(assert (=> b!6637019 (= lt!2419771 (lemmaFlatMapOnSingletonSet!1536 z!1189 (h!72140 zl!343) lambda!370905))))

(declare-fun lt!2419762 () (InoxSet Context!11778))

(declare-fun lt!2419766 () Context!11778)

(assert (=> b!6637019 (= lt!2419762 (derivationStepZipperUp!1679 lt!2419766 (h!72138 s!2326)))))

(declare-fun lt!2419765 () (InoxSet Context!11778))

(declare-fun derivationStepZipperDown!1753 (Regex!16505 Context!11778 C!33280) (InoxSet Context!11778))

(assert (=> b!6637019 (= lt!2419765 (derivationStepZipperDown!1753 (h!72139 (exprs!6389 (h!72140 zl!343))) lt!2419766 (h!72138 s!2326)))))

(assert (=> b!6637019 (= lt!2419766 (Context!11779 (t!379481 (exprs!6389 (h!72140 zl!343)))))))

(declare-fun lt!2419773 () (InoxSet Context!11778))

(assert (=> b!6637019 (= lt!2419773 (derivationStepZipperUp!1679 (Context!11779 (Cons!65691 (h!72139 (exprs!6389 (h!72140 zl!343))) (t!379481 (exprs!6389 (h!72140 zl!343))))) (h!72138 s!2326)))))

(declare-fun b!6637020 () Bool)

(declare-fun e!4013986 () Bool)

(assert (=> b!6637020 (= e!4013986 (nullable!6498 (regOne!33522 (regOne!33522 r!7292))))))

(declare-fun b!6637021 () Bool)

(declare-fun e!4013985 () Bool)

(declare-fun tp!1828108 () Bool)

(assert (=> b!6637021 (= e!4013985 tp!1828108)))

(declare-fun b!6637022 () Bool)

(declare-fun Unit!159377 () Unit!159375)

(assert (=> b!6637022 (= e!4013983 Unit!159377)))

(declare-fun b!6637023 () Bool)

(declare-fun res!2719962 () Bool)

(declare-fun e!4013975 () Bool)

(assert (=> b!6637023 (=> res!2719962 e!4013975)))

(assert (=> b!6637023 (= res!2719962 (not ((_ is Cons!65691) (exprs!6389 (h!72140 zl!343)))))))

(assert (=> b!6637024 (= e!4013975 e!4013976)))

(declare-fun res!2719965 () Bool)

(assert (=> b!6637024 (=> res!2719965 e!4013976)))

(declare-fun lt!2419763 () Bool)

(declare-fun lt!2419767 () Bool)

(assert (=> b!6637024 (= res!2719965 (or (not (= lt!2419763 lt!2419767)) ((_ is Nil!65690) s!2326)))))

(declare-fun Exists!3575 (Int) Bool)

(assert (=> b!6637024 (= (Exists!3575 lambda!370903) (Exists!3575 lambda!370904))))

(declare-fun lt!2419761 () Unit!159375)

(declare-fun lemmaExistCutMatchRandMatchRSpecEquivalent!2112 (Regex!16505 Regex!16505 List!65814) Unit!159375)

(assert (=> b!6637024 (= lt!2419761 (lemmaExistCutMatchRandMatchRSpecEquivalent!2112 (regOne!33522 r!7292) (regTwo!33522 r!7292) s!2326))))

(assert (=> b!6637024 (= lt!2419767 (Exists!3575 lambda!370903))))

(declare-datatypes ((tuple2!66968 0))(
  ( (tuple2!66969 (_1!36787 List!65814) (_2!36787 List!65814)) )
))
(declare-datatypes ((Option!16396 0))(
  ( (None!16395) (Some!16395 (v!52588 tuple2!66968)) )
))
(declare-fun isDefined!13099 (Option!16396) Bool)

(declare-fun findConcatSeparation!2810 (Regex!16505 Regex!16505 List!65814 List!65814 List!65814) Option!16396)

(assert (=> b!6637024 (= lt!2419767 (isDefined!13099 (findConcatSeparation!2810 (regOne!33522 r!7292) (regTwo!33522 r!7292) Nil!65690 s!2326 s!2326)))))

(declare-fun lt!2419764 () Unit!159375)

(declare-fun lemmaFindConcatSeparationEquivalentToExists!2574 (Regex!16505 Regex!16505 List!65814) Unit!159375)

(assert (=> b!6637024 (= lt!2419764 (lemmaFindConcatSeparationEquivalentToExists!2574 (regOne!33522 r!7292) (regTwo!33522 r!7292) s!2326))))

(declare-fun b!6637025 () Bool)

(declare-fun res!2719957 () Bool)

(declare-fun e!4013977 () Bool)

(assert (=> b!6637025 (=> (not res!2719957) (not e!4013977))))

(declare-fun unfocusZipper!2247 (List!65816) Regex!16505)

(assert (=> b!6637025 (= res!2719957 (= r!7292 (unfocusZipper!2247 zl!343)))))

(declare-fun b!6637026 () Bool)

(declare-fun res!2719961 () Bool)

(assert (=> b!6637026 (=> res!2719961 e!4013975)))

(declare-fun isEmpty!37991 (List!65816) Bool)

(assert (=> b!6637026 (= res!2719961 (not (isEmpty!37991 (t!379482 zl!343))))))

(declare-fun b!6637027 () Bool)

(declare-fun e!4013984 () Bool)

(declare-fun tp!1828104 () Bool)

(assert (=> b!6637027 (= e!4013984 tp!1828104)))

(declare-fun b!6637028 () Bool)

(declare-fun e!4013974 () Bool)

(declare-fun tp!1828105 () Bool)

(declare-fun tp!1828103 () Bool)

(assert (=> b!6637028 (= e!4013974 (and tp!1828105 tp!1828103))))

(declare-fun b!6637029 () Bool)

(declare-fun res!2719967 () Bool)

(assert (=> b!6637029 (=> res!2719967 e!4013981)))

(assert (=> b!6637029 (= res!2719967 (or ((_ is Concat!25350) (regOne!33522 r!7292)) ((_ is Star!16505) (regOne!33522 r!7292)) ((_ is EmptyExpr!16505) (regOne!33522 r!7292))))))

(declare-fun b!6637030 () Bool)

(declare-fun Unit!159378 () Unit!159375)

(assert (=> b!6637030 (= e!4013983 Unit!159378)))

(declare-fun lt!2419769 () Unit!159375)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1336 ((InoxSet Context!11778) (InoxSet Context!11778) List!65814) Unit!159375)

(assert (=> b!6637030 (= lt!2419769 (lemmaZipperConcatMatchesSameAsBothZippers!1336 lt!2419765 lt!2419762 (t!379480 s!2326)))))

(declare-fun res!2719952 () Bool)

(declare-fun matchZipper!2517 ((InoxSet Context!11778) List!65814) Bool)

(assert (=> b!6637030 (= res!2719952 (matchZipper!2517 lt!2419765 (t!379480 s!2326)))))

(declare-fun e!4013982 () Bool)

(assert (=> b!6637030 (=> res!2719952 e!4013982)))

(assert (=> b!6637030 (= (matchZipper!2517 ((_ map or) lt!2419765 lt!2419762) (t!379480 s!2326)) e!4013982)))

(declare-fun b!6637031 () Bool)

(declare-fun res!2719960 () Bool)

(assert (=> b!6637031 (=> res!2719960 e!4013981)))

(assert (=> b!6637031 (= res!2719960 e!4013986)))

(declare-fun res!2719958 () Bool)

(assert (=> b!6637031 (=> (not res!2719958) (not e!4013986))))

(assert (=> b!6637031 (= res!2719958 ((_ is Concat!25350) (regOne!33522 r!7292)))))

(declare-fun b!6637032 () Bool)

(declare-fun res!2719963 () Bool)

(assert (=> b!6637032 (=> res!2719963 e!4013975)))

(declare-fun generalisedUnion!2349 (List!65815) Regex!16505)

(declare-fun unfocusZipperList!1926 (List!65816) List!65815)

(assert (=> b!6637032 (= res!2719963 (not (= r!7292 (generalisedUnion!2349 (unfocusZipperList!1926 zl!343)))))))

(declare-fun b!6637033 () Bool)

(assert (=> b!6637033 (= e!4013982 (matchZipper!2517 lt!2419762 (t!379480 s!2326)))))

(declare-fun b!6637034 () Bool)

(declare-fun res!2719968 () Bool)

(assert (=> b!6637034 (=> res!2719968 e!4013976)))

(declare-fun isEmpty!37992 (List!65815) Bool)

(assert (=> b!6637034 (= res!2719968 (isEmpty!37992 (t!379481 (exprs!6389 (h!72140 zl!343)))))))

(declare-fun b!6637035 () Bool)

(assert (=> b!6637035 (= e!4013981 e!4013980)))

(declare-fun res!2719964 () Bool)

(assert (=> b!6637035 (=> res!2719964 e!4013980)))

(assert (=> b!6637035 (= res!2719964 (or (not (= lt!2419765 ((as const (Array Context!11778 Bool)) false))) (not (= r!7292 (Concat!25350 (regOne!33522 r!7292) (regTwo!33522 r!7292))))))))

(assert (=> b!6637035 (not (matchZipper!2517 lt!2419765 (t!379480 s!2326)))))

(declare-fun lt!2419772 () Unit!159375)

(declare-fun lemmaEmptyZipperMatchesNothing!98 ((InoxSet Context!11778) List!65814) Unit!159375)

(assert (=> b!6637035 (= lt!2419772 (lemmaEmptyZipperMatchesNothing!98 lt!2419765 (t!379480 s!2326)))))

(declare-fun res!2719955 () Bool)

(assert (=> start!648182 (=> (not res!2719955) (not e!4013977))))

(assert (=> start!648182 (= res!2719955 (validRegex!8241 r!7292))))

(assert (=> start!648182 e!4013977))

(assert (=> start!648182 e!4013974))

(declare-fun condSetEmpty!45382 () Bool)

(assert (=> start!648182 (= condSetEmpty!45382 (= z!1189 ((as const (Array Context!11778 Bool)) false)))))

(declare-fun setRes!45382 () Bool)

(assert (=> start!648182 setRes!45382))

(declare-fun e!4013978 () Bool)

(assert (=> start!648182 e!4013978))

(declare-fun e!4013979 () Bool)

(assert (=> start!648182 e!4013979))

(declare-fun setNonEmpty!45382 () Bool)

(declare-fun tp!1828107 () Bool)

(declare-fun setElem!45382 () Context!11778)

(declare-fun inv!84509 (Context!11778) Bool)

(assert (=> setNonEmpty!45382 (= setRes!45382 (and tp!1828107 (inv!84509 setElem!45382) e!4013984))))

(declare-fun setRest!45382 () (InoxSet Context!11778))

(assert (=> setNonEmpty!45382 (= z!1189 ((_ map or) (store ((as const (Array Context!11778 Bool)) false) setElem!45382 true) setRest!45382))))

(declare-fun b!6637036 () Bool)

(declare-fun res!2719959 () Bool)

(assert (=> b!6637036 (=> (not res!2719959) (not e!4013977))))

(declare-fun toList!10289 ((InoxSet Context!11778)) List!65816)

(assert (=> b!6637036 (= res!2719959 (= (toList!10289 z!1189) zl!343))))

(declare-fun b!6637037 () Bool)

(declare-fun tp!1828111 () Bool)

(declare-fun tp!1828109 () Bool)

(assert (=> b!6637037 (= e!4013974 (and tp!1828111 tp!1828109))))

(declare-fun b!6637038 () Bool)

(declare-fun tp_is_empty!42263 () Bool)

(assert (=> b!6637038 (= e!4013974 tp_is_empty!42263)))

(declare-fun setIsEmpty!45382 () Bool)

(assert (=> setIsEmpty!45382 setRes!45382))

(declare-fun tp!1828102 () Bool)

(declare-fun b!6637039 () Bool)

(assert (=> b!6637039 (= e!4013978 (and (inv!84509 (h!72140 zl!343)) e!4013985 tp!1828102))))

(declare-fun b!6637040 () Bool)

(declare-fun res!2719954 () Bool)

(assert (=> b!6637040 (=> res!2719954 e!4013975)))

(declare-fun generalisedConcat!2102 (List!65815) Regex!16505)

(assert (=> b!6637040 (= res!2719954 (not (= r!7292 (generalisedConcat!2102 (exprs!6389 (h!72140 zl!343))))))))

(declare-fun b!6637041 () Bool)

(declare-fun res!2719956 () Bool)

(assert (=> b!6637041 (=> res!2719956 e!4013975)))

(assert (=> b!6637041 (= res!2719956 (or ((_ is EmptyExpr!16505) r!7292) ((_ is EmptyLang!16505) r!7292) ((_ is ElementMatch!16505) r!7292) ((_ is Union!16505) r!7292) (not ((_ is Concat!25350) r!7292))))))

(declare-fun b!6637042 () Bool)

(declare-fun tp!1828110 () Bool)

(assert (=> b!6637042 (= e!4013974 tp!1828110)))

(declare-fun b!6637043 () Bool)

(declare-fun tp!1828106 () Bool)

(assert (=> b!6637043 (= e!4013979 (and tp_is_empty!42263 tp!1828106))))

(declare-fun b!6637044 () Bool)

(assert (=> b!6637044 (= e!4013977 (not e!4013975))))

(declare-fun res!2719966 () Bool)

(assert (=> b!6637044 (=> res!2719966 e!4013975)))

(assert (=> b!6637044 (= res!2719966 (not ((_ is Cons!65692) zl!343)))))

(assert (=> b!6637044 (= lt!2419763 (matchRSpec!3606 r!7292 s!2326))))

(assert (=> b!6637044 (= lt!2419763 (matchR!8688 r!7292 s!2326))))

(declare-fun lt!2419774 () Unit!159375)

(assert (=> b!6637044 (= lt!2419774 (mainMatchTheorem!3606 r!7292 s!2326))))

(assert (= (and start!648182 res!2719955) b!6637036))

(assert (= (and b!6637036 res!2719959) b!6637025))

(assert (= (and b!6637025 res!2719957) b!6637044))

(assert (= (and b!6637044 (not res!2719966)) b!6637026))

(assert (= (and b!6637026 (not res!2719961)) b!6637040))

(assert (= (and b!6637040 (not res!2719954)) b!6637023))

(assert (= (and b!6637023 (not res!2719962)) b!6637032))

(assert (= (and b!6637032 (not res!2719963)) b!6637041))

(assert (= (and b!6637041 (not res!2719956)) b!6637024))

(assert (= (and b!6637024 (not res!2719965)) b!6637034))

(assert (= (and b!6637034 (not res!2719968)) b!6637019))

(assert (= (and b!6637019 c!1224273) b!6637030))

(assert (= (and b!6637019 (not c!1224273)) b!6637022))

(assert (= (and b!6637030 (not res!2719952)) b!6637033))

(assert (= (and b!6637019 (not res!2719953)) b!6637031))

(assert (= (and b!6637031 res!2719958) b!6637020))

(assert (= (and b!6637031 (not res!2719960)) b!6637029))

(assert (= (and b!6637029 (not res!2719967)) b!6637035))

(assert (= (and b!6637035 (not res!2719964)) b!6637018))

(assert (= (and start!648182 ((_ is ElementMatch!16505) r!7292)) b!6637038))

(assert (= (and start!648182 ((_ is Concat!25350) r!7292)) b!6637028))

(assert (= (and start!648182 ((_ is Star!16505) r!7292)) b!6637042))

(assert (= (and start!648182 ((_ is Union!16505) r!7292)) b!6637037))

(assert (= (and start!648182 condSetEmpty!45382) setIsEmpty!45382))

(assert (= (and start!648182 (not condSetEmpty!45382)) setNonEmpty!45382))

(assert (= setNonEmpty!45382 b!6637027))

(assert (= b!6637039 b!6637021))

(assert (= (and start!648182 ((_ is Cons!65692) zl!343)) b!6637039))

(assert (= (and start!648182 ((_ is Cons!65690) s!2326)) b!6637043))

(declare-fun m!7404320 () Bool)

(assert (=> b!6637025 m!7404320))

(declare-fun m!7404322 () Bool)

(assert (=> b!6637026 m!7404322))

(declare-fun m!7404324 () Bool)

(assert (=> b!6637033 m!7404324))

(declare-fun m!7404326 () Bool)

(assert (=> b!6637032 m!7404326))

(assert (=> b!6637032 m!7404326))

(declare-fun m!7404328 () Bool)

(assert (=> b!6637032 m!7404328))

(declare-fun m!7404330 () Bool)

(assert (=> b!6637039 m!7404330))

(declare-fun m!7404332 () Bool)

(assert (=> b!6637040 m!7404332))

(declare-fun m!7404334 () Bool)

(assert (=> b!6637036 m!7404334))

(declare-fun m!7404336 () Bool)

(assert (=> b!6637034 m!7404336))

(declare-fun m!7404338 () Bool)

(assert (=> b!6637030 m!7404338))

(declare-fun m!7404340 () Bool)

(assert (=> b!6637030 m!7404340))

(declare-fun m!7404342 () Bool)

(assert (=> b!6637030 m!7404342))

(declare-fun m!7404344 () Bool)

(assert (=> b!6637018 m!7404344))

(declare-fun m!7404346 () Bool)

(assert (=> b!6637018 m!7404346))

(declare-fun m!7404348 () Bool)

(assert (=> b!6637018 m!7404348))

(declare-fun m!7404350 () Bool)

(assert (=> b!6637018 m!7404350))

(declare-fun m!7404352 () Bool)

(assert (=> b!6637020 m!7404352))

(declare-fun m!7404354 () Bool)

(assert (=> b!6637044 m!7404354))

(declare-fun m!7404356 () Bool)

(assert (=> b!6637044 m!7404356))

(declare-fun m!7404358 () Bool)

(assert (=> b!6637044 m!7404358))

(declare-fun m!7404360 () Bool)

(assert (=> start!648182 m!7404360))

(declare-fun m!7404362 () Bool)

(assert (=> b!6637019 m!7404362))

(declare-fun m!7404364 () Bool)

(assert (=> b!6637019 m!7404364))

(declare-fun m!7404366 () Bool)

(assert (=> b!6637019 m!7404366))

(declare-fun m!7404368 () Bool)

(assert (=> b!6637019 m!7404368))

(declare-fun m!7404370 () Bool)

(assert (=> b!6637019 m!7404370))

(declare-fun m!7404372 () Bool)

(assert (=> b!6637019 m!7404372))

(declare-fun m!7404374 () Bool)

(assert (=> b!6637019 m!7404374))

(declare-fun m!7404376 () Bool)

(assert (=> setNonEmpty!45382 m!7404376))

(declare-fun m!7404378 () Bool)

(assert (=> b!6637024 m!7404378))

(declare-fun m!7404380 () Bool)

(assert (=> b!6637024 m!7404380))

(declare-fun m!7404382 () Bool)

(assert (=> b!6637024 m!7404382))

(assert (=> b!6637024 m!7404380))

(declare-fun m!7404384 () Bool)

(assert (=> b!6637024 m!7404384))

(declare-fun m!7404386 () Bool)

(assert (=> b!6637024 m!7404386))

(assert (=> b!6637024 m!7404384))

(declare-fun m!7404388 () Bool)

(assert (=> b!6637024 m!7404388))

(assert (=> b!6637035 m!7404340))

(declare-fun m!7404390 () Bool)

(assert (=> b!6637035 m!7404390))

(check-sat (not b!6637021) (not b!6637024) (not b!6637025) (not b!6637034) (not setNonEmpty!45382) (not b!6637026) (not b!6637018) (not b!6637033) (not b!6637042) (not b!6637044) (not b!6637019) (not b!6637037) (not b!6637028) tp_is_empty!42263 (not b!6637039) (not start!648182) (not b!6637035) (not b!6637040) (not b!6637020) (not b!6637043) (not b!6637030) (not b!6637032) (not b!6637027) (not b!6637036))
(check-sat)
(get-model)

(declare-fun d!2080326 () Bool)

(declare-fun c!1224305 () Bool)

(declare-fun isEmpty!37994 (List!65814) Bool)

(assert (=> d!2080326 (= c!1224305 (isEmpty!37994 (t!379480 s!2326)))))

(declare-fun e!4014046 () Bool)

(assert (=> d!2080326 (= (matchZipper!2517 lt!2419762 (t!379480 s!2326)) e!4014046)))

(declare-fun b!6637140 () Bool)

(declare-fun nullableZipper!2246 ((InoxSet Context!11778)) Bool)

(assert (=> b!6637140 (= e!4014046 (nullableZipper!2246 lt!2419762))))

(declare-fun b!6637141 () Bool)

(declare-fun derivationStepZipper!2471 ((InoxSet Context!11778) C!33280) (InoxSet Context!11778))

(declare-fun head!13453 (List!65814) C!33280)

(declare-fun tail!12538 (List!65814) List!65814)

(assert (=> b!6637141 (= e!4014046 (matchZipper!2517 (derivationStepZipper!2471 lt!2419762 (head!13453 (t!379480 s!2326))) (tail!12538 (t!379480 s!2326))))))

(assert (= (and d!2080326 c!1224305) b!6637140))

(assert (= (and d!2080326 (not c!1224305)) b!6637141))

(declare-fun m!7404454 () Bool)

(assert (=> d!2080326 m!7404454))

(declare-fun m!7404456 () Bool)

(assert (=> b!6637140 m!7404456))

(declare-fun m!7404458 () Bool)

(assert (=> b!6637141 m!7404458))

(assert (=> b!6637141 m!7404458))

(declare-fun m!7404460 () Bool)

(assert (=> b!6637141 m!7404460))

(declare-fun m!7404462 () Bool)

(assert (=> b!6637141 m!7404462))

(assert (=> b!6637141 m!7404460))

(assert (=> b!6637141 m!7404462))

(declare-fun m!7404464 () Bool)

(assert (=> b!6637141 m!7404464))

(assert (=> b!6637033 d!2080326))

(declare-fun b!6637227 () Bool)

(declare-fun e!4014099 () Bool)

(declare-fun lt!2419789 () Regex!16505)

(declare-fun isEmptyLang!1887 (Regex!16505) Bool)

(assert (=> b!6637227 (= e!4014099 (isEmptyLang!1887 lt!2419789))))

(declare-fun b!6637229 () Bool)

(declare-fun e!4014095 () Regex!16505)

(assert (=> b!6637229 (= e!4014095 (Union!16505 (h!72139 (unfocusZipperList!1926 zl!343)) (generalisedUnion!2349 (t!379481 (unfocusZipperList!1926 zl!343)))))))

(declare-fun b!6637230 () Bool)

(declare-fun e!4014098 () Regex!16505)

(assert (=> b!6637230 (= e!4014098 (h!72139 (unfocusZipperList!1926 zl!343)))))

(declare-fun b!6637228 () Bool)

(declare-fun e!4014096 () Bool)

(assert (=> b!6637228 (= e!4014099 e!4014096)))

(declare-fun c!1224337 () Bool)

(declare-fun tail!12539 (List!65815) List!65815)

(assert (=> b!6637228 (= c!1224337 (isEmpty!37992 (tail!12539 (unfocusZipperList!1926 zl!343))))))

(declare-fun d!2080340 () Bool)

(declare-fun e!4014100 () Bool)

(assert (=> d!2080340 e!4014100))

(declare-fun res!2720021 () Bool)

(assert (=> d!2080340 (=> (not res!2720021) (not e!4014100))))

(assert (=> d!2080340 (= res!2720021 (validRegex!8241 lt!2419789))))

(assert (=> d!2080340 (= lt!2419789 e!4014098)))

(declare-fun c!1224338 () Bool)

(declare-fun e!4014097 () Bool)

(assert (=> d!2080340 (= c!1224338 e!4014097)))

(declare-fun res!2720022 () Bool)

(assert (=> d!2080340 (=> (not res!2720022) (not e!4014097))))

(assert (=> d!2080340 (= res!2720022 ((_ is Cons!65691) (unfocusZipperList!1926 zl!343)))))

(declare-fun lambda!370918 () Int)

(declare-fun forall!15701 (List!65815 Int) Bool)

(assert (=> d!2080340 (forall!15701 (unfocusZipperList!1926 zl!343) lambda!370918)))

(assert (=> d!2080340 (= (generalisedUnion!2349 (unfocusZipperList!1926 zl!343)) lt!2419789)))

(declare-fun b!6637231 () Bool)

(assert (=> b!6637231 (= e!4014097 (isEmpty!37992 (t!379481 (unfocusZipperList!1926 zl!343))))))

(declare-fun b!6637232 () Bool)

(assert (=> b!6637232 (= e!4014095 EmptyLang!16505)))

(declare-fun b!6637233 () Bool)

(declare-fun isUnion!1317 (Regex!16505) Bool)

(assert (=> b!6637233 (= e!4014096 (isUnion!1317 lt!2419789))))

(declare-fun b!6637234 () Bool)

(assert (=> b!6637234 (= e!4014098 e!4014095)))

(declare-fun c!1224340 () Bool)

(assert (=> b!6637234 (= c!1224340 ((_ is Cons!65691) (unfocusZipperList!1926 zl!343)))))

(declare-fun b!6637235 () Bool)

(declare-fun head!13454 (List!65815) Regex!16505)

(assert (=> b!6637235 (= e!4014096 (= lt!2419789 (head!13454 (unfocusZipperList!1926 zl!343))))))

(declare-fun b!6637236 () Bool)

(assert (=> b!6637236 (= e!4014100 e!4014099)))

(declare-fun c!1224339 () Bool)

(assert (=> b!6637236 (= c!1224339 (isEmpty!37992 (unfocusZipperList!1926 zl!343)))))

(assert (= (and d!2080340 res!2720022) b!6637231))

(assert (= (and d!2080340 c!1224338) b!6637230))

(assert (= (and d!2080340 (not c!1224338)) b!6637234))

(assert (= (and b!6637234 c!1224340) b!6637229))

(assert (= (and b!6637234 (not c!1224340)) b!6637232))

(assert (= (and d!2080340 res!2720021) b!6637236))

(assert (= (and b!6637236 c!1224339) b!6637227))

(assert (= (and b!6637236 (not c!1224339)) b!6637228))

(assert (= (and b!6637228 c!1224337) b!6637235))

(assert (= (and b!6637228 (not c!1224337)) b!6637233))

(assert (=> b!6637236 m!7404326))

(declare-fun m!7404476 () Bool)

(assert (=> b!6637236 m!7404476))

(declare-fun m!7404478 () Bool)

(assert (=> b!6637229 m!7404478))

(declare-fun m!7404480 () Bool)

(assert (=> b!6637233 m!7404480))

(declare-fun m!7404482 () Bool)

(assert (=> b!6637231 m!7404482))

(declare-fun m!7404484 () Bool)

(assert (=> d!2080340 m!7404484))

(assert (=> d!2080340 m!7404326))

(declare-fun m!7404486 () Bool)

(assert (=> d!2080340 m!7404486))

(declare-fun m!7404488 () Bool)

(assert (=> b!6637227 m!7404488))

(assert (=> b!6637235 m!7404326))

(declare-fun m!7404490 () Bool)

(assert (=> b!6637235 m!7404490))

(assert (=> b!6637228 m!7404326))

(declare-fun m!7404492 () Bool)

(assert (=> b!6637228 m!7404492))

(assert (=> b!6637228 m!7404492))

(declare-fun m!7404494 () Bool)

(assert (=> b!6637228 m!7404494))

(assert (=> b!6637032 d!2080340))

(declare-fun bs!1705542 () Bool)

(declare-fun d!2080344 () Bool)

(assert (= bs!1705542 (and d!2080344 d!2080340)))

(declare-fun lambda!370923 () Int)

(assert (=> bs!1705542 (= lambda!370923 lambda!370918)))

(declare-fun lt!2419792 () List!65815)

(assert (=> d!2080344 (forall!15701 lt!2419792 lambda!370923)))

(declare-fun e!4014110 () List!65815)

(assert (=> d!2080344 (= lt!2419792 e!4014110)))

(declare-fun c!1224347 () Bool)

(assert (=> d!2080344 (= c!1224347 ((_ is Cons!65692) zl!343))))

(assert (=> d!2080344 (= (unfocusZipperList!1926 zl!343) lt!2419792)))

(declare-fun b!6637252 () Bool)

(assert (=> b!6637252 (= e!4014110 (Cons!65691 (generalisedConcat!2102 (exprs!6389 (h!72140 zl!343))) (unfocusZipperList!1926 (t!379482 zl!343))))))

(declare-fun b!6637253 () Bool)

(assert (=> b!6637253 (= e!4014110 Nil!65691)))

(assert (= (and d!2080344 c!1224347) b!6637252))

(assert (= (and d!2080344 (not c!1224347)) b!6637253))

(declare-fun m!7404504 () Bool)

(assert (=> d!2080344 m!7404504))

(assert (=> b!6637252 m!7404332))

(declare-fun m!7404506 () Bool)

(assert (=> b!6637252 m!7404506))

(assert (=> b!6637032 d!2080344))

(declare-fun bs!1705545 () Bool)

(declare-fun d!2080348 () Bool)

(assert (= bs!1705545 (and d!2080348 d!2080340)))

(declare-fun lambda!370926 () Int)

(assert (=> bs!1705545 (= lambda!370926 lambda!370918)))

(declare-fun bs!1705546 () Bool)

(assert (= bs!1705546 (and d!2080348 d!2080344)))

(assert (=> bs!1705546 (= lambda!370926 lambda!370923)))

(declare-fun e!4014150 () Bool)

(assert (=> d!2080348 e!4014150))

(declare-fun res!2720054 () Bool)

(assert (=> d!2080348 (=> (not res!2720054) (not e!4014150))))

(declare-fun lt!2419803 () Regex!16505)

(assert (=> d!2080348 (= res!2720054 (validRegex!8241 lt!2419803))))

(declare-fun e!4014149 () Regex!16505)

(assert (=> d!2080348 (= lt!2419803 e!4014149)))

(declare-fun c!1224371 () Bool)

(declare-fun e!4014152 () Bool)

(assert (=> d!2080348 (= c!1224371 e!4014152)))

(declare-fun res!2720055 () Bool)

(assert (=> d!2080348 (=> (not res!2720055) (not e!4014152))))

(assert (=> d!2080348 (= res!2720055 ((_ is Cons!65691) (exprs!6389 (h!72140 zl!343))))))

(assert (=> d!2080348 (forall!15701 (exprs!6389 (h!72140 zl!343)) lambda!370926)))

(assert (=> d!2080348 (= (generalisedConcat!2102 (exprs!6389 (h!72140 zl!343))) lt!2419803)))

(declare-fun b!6637322 () Bool)

(assert (=> b!6637322 (= e!4014152 (isEmpty!37992 (t!379481 (exprs!6389 (h!72140 zl!343)))))))

(declare-fun b!6637323 () Bool)

(declare-fun e!4014148 () Bool)

(declare-fun isEmptyExpr!1879 (Regex!16505) Bool)

(assert (=> b!6637323 (= e!4014148 (isEmptyExpr!1879 lt!2419803))))

(declare-fun b!6637324 () Bool)

(declare-fun e!4014151 () Bool)

(assert (=> b!6637324 (= e!4014151 (= lt!2419803 (head!13454 (exprs!6389 (h!72140 zl!343)))))))

(declare-fun b!6637325 () Bool)

(declare-fun e!4014147 () Regex!16505)

(assert (=> b!6637325 (= e!4014149 e!4014147)))

(declare-fun c!1224368 () Bool)

(assert (=> b!6637325 (= c!1224368 ((_ is Cons!65691) (exprs!6389 (h!72140 zl!343))))))

(declare-fun b!6637326 () Bool)

(declare-fun isConcat!1402 (Regex!16505) Bool)

(assert (=> b!6637326 (= e!4014151 (isConcat!1402 lt!2419803))))

(declare-fun b!6637327 () Bool)

(assert (=> b!6637327 (= e!4014149 (h!72139 (exprs!6389 (h!72140 zl!343))))))

(declare-fun b!6637328 () Bool)

(assert (=> b!6637328 (= e!4014148 e!4014151)))

(declare-fun c!1224369 () Bool)

(assert (=> b!6637328 (= c!1224369 (isEmpty!37992 (tail!12539 (exprs!6389 (h!72140 zl!343)))))))

(declare-fun b!6637329 () Bool)

(assert (=> b!6637329 (= e!4014147 (Concat!25350 (h!72139 (exprs!6389 (h!72140 zl!343))) (generalisedConcat!2102 (t!379481 (exprs!6389 (h!72140 zl!343))))))))

(declare-fun b!6637330 () Bool)

(assert (=> b!6637330 (= e!4014150 e!4014148)))

(declare-fun c!1224370 () Bool)

(assert (=> b!6637330 (= c!1224370 (isEmpty!37992 (exprs!6389 (h!72140 zl!343))))))

(declare-fun b!6637331 () Bool)

(assert (=> b!6637331 (= e!4014147 EmptyExpr!16505)))

(assert (= (and d!2080348 res!2720055) b!6637322))

(assert (= (and d!2080348 c!1224371) b!6637327))

(assert (= (and d!2080348 (not c!1224371)) b!6637325))

(assert (= (and b!6637325 c!1224368) b!6637329))

(assert (= (and b!6637325 (not c!1224368)) b!6637331))

(assert (= (and d!2080348 res!2720054) b!6637330))

(assert (= (and b!6637330 c!1224370) b!6637323))

(assert (= (and b!6637330 (not c!1224370)) b!6637328))

(assert (= (and b!6637328 c!1224369) b!6637324))

(assert (= (and b!6637328 (not c!1224369)) b!6637326))

(declare-fun m!7404536 () Bool)

(assert (=> d!2080348 m!7404536))

(declare-fun m!7404538 () Bool)

(assert (=> d!2080348 m!7404538))

(declare-fun m!7404540 () Bool)

(assert (=> b!6637323 m!7404540))

(assert (=> b!6637322 m!7404336))

(declare-fun m!7404542 () Bool)

(assert (=> b!6637329 m!7404542))

(declare-fun m!7404544 () Bool)

(assert (=> b!6637324 m!7404544))

(declare-fun m!7404546 () Bool)

(assert (=> b!6637326 m!7404546))

(declare-fun m!7404548 () Bool)

(assert (=> b!6637328 m!7404548))

(assert (=> b!6637328 m!7404548))

(declare-fun m!7404550 () Bool)

(assert (=> b!6637328 m!7404550))

(declare-fun m!7404552 () Bool)

(assert (=> b!6637330 m!7404552))

(assert (=> b!6637040 d!2080348))

(declare-fun d!2080360 () Bool)

(declare-fun lt!2419811 () Regex!16505)

(assert (=> d!2080360 (validRegex!8241 lt!2419811)))

(assert (=> d!2080360 (= lt!2419811 (generalisedUnion!2349 (unfocusZipperList!1926 zl!343)))))

(assert (=> d!2080360 (= (unfocusZipper!2247 zl!343) lt!2419811)))

(declare-fun bs!1705547 () Bool)

(assert (= bs!1705547 d!2080360))

(declare-fun m!7404576 () Bool)

(assert (=> bs!1705547 m!7404576))

(assert (=> bs!1705547 m!7404326))

(assert (=> bs!1705547 m!7404326))

(assert (=> bs!1705547 m!7404328))

(assert (=> b!6637025 d!2080360))

(declare-fun bs!1705555 () Bool)

(declare-fun d!2080370 () Bool)

(assert (= bs!1705555 (and d!2080370 d!2080340)))

(declare-fun lambda!370931 () Int)

(assert (=> bs!1705555 (= lambda!370931 lambda!370918)))

(declare-fun bs!1705556 () Bool)

(assert (= bs!1705556 (and d!2080370 d!2080344)))

(assert (=> bs!1705556 (= lambda!370931 lambda!370923)))

(declare-fun bs!1705558 () Bool)

(assert (= bs!1705558 (and d!2080370 d!2080348)))

(assert (=> bs!1705558 (= lambda!370931 lambda!370926)))

(assert (=> d!2080370 (= (inv!84509 setElem!45382) (forall!15701 (exprs!6389 setElem!45382) lambda!370931))))

(declare-fun bs!1705559 () Bool)

(assert (= bs!1705559 d!2080370))

(declare-fun m!7404586 () Bool)

(assert (=> bs!1705559 m!7404586))

(assert (=> setNonEmpty!45382 d!2080370))

(declare-fun b!6637393 () Bool)

(declare-fun e!4014195 () Bool)

(declare-fun call!582709 () Bool)

(assert (=> b!6637393 (= e!4014195 call!582709)))

(declare-fun d!2080376 () Bool)

(declare-fun res!2720093 () Bool)

(declare-fun e!4014196 () Bool)

(assert (=> d!2080376 (=> res!2720093 e!4014196)))

(assert (=> d!2080376 (= res!2720093 ((_ is ElementMatch!16505) r!7292))))

(assert (=> d!2080376 (= (validRegex!8241 r!7292) e!4014196)))

(declare-fun b!6637394 () Bool)

(declare-fun e!4014200 () Bool)

(declare-fun e!4014194 () Bool)

(assert (=> b!6637394 (= e!4014200 e!4014194)))

(declare-fun c!1224387 () Bool)

(assert (=> b!6637394 (= c!1224387 ((_ is Union!16505) r!7292))))

(declare-fun b!6637395 () Bool)

(assert (=> b!6637395 (= e!4014196 e!4014200)))

(declare-fun c!1224386 () Bool)

(assert (=> b!6637395 (= c!1224386 ((_ is Star!16505) r!7292))))

(declare-fun b!6637396 () Bool)

(declare-fun e!4014198 () Bool)

(assert (=> b!6637396 (= e!4014198 e!4014195)))

(declare-fun res!2720092 () Bool)

(assert (=> b!6637396 (=> (not res!2720092) (not e!4014195))))

(declare-fun call!582710 () Bool)

(assert (=> b!6637396 (= res!2720092 call!582710)))

(declare-fun b!6637397 () Bool)

(declare-fun e!4014197 () Bool)

(assert (=> b!6637397 (= e!4014200 e!4014197)))

(declare-fun res!2720091 () Bool)

(assert (=> b!6637397 (= res!2720091 (not (nullable!6498 (reg!16834 r!7292))))))

(assert (=> b!6637397 (=> (not res!2720091) (not e!4014197))))

(declare-fun b!6637398 () Bool)

(declare-fun res!2720089 () Bool)

(declare-fun e!4014199 () Bool)

(assert (=> b!6637398 (=> (not res!2720089) (not e!4014199))))

(assert (=> b!6637398 (= res!2720089 call!582710)))

(assert (=> b!6637398 (= e!4014194 e!4014199)))

(declare-fun b!6637399 () Bool)

(declare-fun res!2720090 () Bool)

(assert (=> b!6637399 (=> res!2720090 e!4014198)))

(assert (=> b!6637399 (= res!2720090 (not ((_ is Concat!25350) r!7292)))))

(assert (=> b!6637399 (= e!4014194 e!4014198)))

(declare-fun b!6637400 () Bool)

(declare-fun call!582711 () Bool)

(assert (=> b!6637400 (= e!4014197 call!582711)))

(declare-fun bm!582704 () Bool)

(assert (=> bm!582704 (= call!582711 (validRegex!8241 (ite c!1224386 (reg!16834 r!7292) (ite c!1224387 (regOne!33523 r!7292) (regOne!33522 r!7292)))))))

(declare-fun bm!582705 () Bool)

(assert (=> bm!582705 (= call!582710 call!582711)))

(declare-fun bm!582706 () Bool)

(assert (=> bm!582706 (= call!582709 (validRegex!8241 (ite c!1224387 (regTwo!33523 r!7292) (regTwo!33522 r!7292))))))

(declare-fun b!6637401 () Bool)

(assert (=> b!6637401 (= e!4014199 call!582709)))

(assert (= (and d!2080376 (not res!2720093)) b!6637395))

(assert (= (and b!6637395 c!1224386) b!6637397))

(assert (= (and b!6637395 (not c!1224386)) b!6637394))

(assert (= (and b!6637397 res!2720091) b!6637400))

(assert (= (and b!6637394 c!1224387) b!6637398))

(assert (= (and b!6637394 (not c!1224387)) b!6637399))

(assert (= (and b!6637398 res!2720089) b!6637401))

(assert (= (and b!6637399 (not res!2720090)) b!6637396))

(assert (= (and b!6637396 res!2720092) b!6637393))

(assert (= (or b!6637401 b!6637393) bm!582706))

(assert (= (or b!6637398 b!6637396) bm!582705))

(assert (= (or b!6637400 bm!582705) bm!582704))

(declare-fun m!7404594 () Bool)

(assert (=> b!6637397 m!7404594))

(declare-fun m!7404596 () Bool)

(assert (=> bm!582704 m!7404596))

(declare-fun m!7404598 () Bool)

(assert (=> bm!582706 m!7404598))

(assert (=> start!648182 d!2080376))

(declare-fun d!2080382 () Bool)

(declare-fun c!1224388 () Bool)

(assert (=> d!2080382 (= c!1224388 (isEmpty!37994 (t!379480 s!2326)))))

(declare-fun e!4014201 () Bool)

(assert (=> d!2080382 (= (matchZipper!2517 lt!2419765 (t!379480 s!2326)) e!4014201)))

(declare-fun b!6637402 () Bool)

(assert (=> b!6637402 (= e!4014201 (nullableZipper!2246 lt!2419765))))

(declare-fun b!6637403 () Bool)

(assert (=> b!6637403 (= e!4014201 (matchZipper!2517 (derivationStepZipper!2471 lt!2419765 (head!13453 (t!379480 s!2326))) (tail!12538 (t!379480 s!2326))))))

(assert (= (and d!2080382 c!1224388) b!6637402))

(assert (= (and d!2080382 (not c!1224388)) b!6637403))

(assert (=> d!2080382 m!7404454))

(declare-fun m!7404600 () Bool)

(assert (=> b!6637402 m!7404600))

(assert (=> b!6637403 m!7404458))

(assert (=> b!6637403 m!7404458))

(declare-fun m!7404602 () Bool)

(assert (=> b!6637403 m!7404602))

(assert (=> b!6637403 m!7404462))

(assert (=> b!6637403 m!7404602))

(assert (=> b!6637403 m!7404462))

(declare-fun m!7404604 () Bool)

(assert (=> b!6637403 m!7404604))

(assert (=> b!6637035 d!2080382))

(declare-fun d!2080384 () Bool)

(assert (=> d!2080384 (not (matchZipper!2517 lt!2419765 (t!379480 s!2326)))))

(declare-fun lt!2419824 () Unit!159375)

(declare-fun choose!49599 ((InoxSet Context!11778) List!65814) Unit!159375)

(assert (=> d!2080384 (= lt!2419824 (choose!49599 lt!2419765 (t!379480 s!2326)))))

(assert (=> d!2080384 (= lt!2419765 ((as const (Array Context!11778 Bool)) false))))

(assert (=> d!2080384 (= (lemmaEmptyZipperMatchesNothing!98 lt!2419765 (t!379480 s!2326)) lt!2419824)))

(declare-fun bs!1705567 () Bool)

(assert (= bs!1705567 d!2080384))

(assert (=> bs!1705567 m!7404340))

(declare-fun m!7404606 () Bool)

(assert (=> bs!1705567 m!7404606))

(assert (=> b!6637035 d!2080384))

(declare-fun bs!1705583 () Bool)

(declare-fun b!6637493 () Bool)

(assert (= bs!1705583 (and b!6637493 b!6637024)))

(declare-fun lambda!370949 () Int)

(assert (=> bs!1705583 (not (= lambda!370949 lambda!370903))))

(assert (=> bs!1705583 (not (= lambda!370949 lambda!370904))))

(assert (=> b!6637493 true))

(assert (=> b!6637493 true))

(declare-fun bs!1705584 () Bool)

(declare-fun b!6637505 () Bool)

(assert (= bs!1705584 (and b!6637505 b!6637024)))

(declare-fun lambda!370950 () Int)

(assert (=> bs!1705584 (not (= lambda!370950 lambda!370903))))

(assert (=> bs!1705584 (= lambda!370950 lambda!370904)))

(declare-fun bs!1705585 () Bool)

(assert (= bs!1705585 (and b!6637505 b!6637493)))

(assert (=> bs!1705585 (not (= lambda!370950 lambda!370949))))

(assert (=> b!6637505 true))

(assert (=> b!6637505 true))

(declare-fun e!4014254 () Bool)

(declare-fun call!582717 () Bool)

(assert (=> b!6637493 (= e!4014254 call!582717)))

(declare-fun b!6637494 () Bool)

(declare-fun e!4014255 () Bool)

(declare-fun call!582716 () Bool)

(assert (=> b!6637494 (= e!4014255 call!582716)))

(declare-fun b!6637495 () Bool)

(declare-fun e!4014259 () Bool)

(declare-fun e!4014253 () Bool)

(assert (=> b!6637495 (= e!4014259 e!4014253)))

(declare-fun res!2720139 () Bool)

(assert (=> b!6637495 (= res!2720139 (matchRSpec!3606 (regOne!33523 r!7292) s!2326))))

(assert (=> b!6637495 (=> res!2720139 e!4014253)))

(declare-fun c!1224413 () Bool)

(declare-fun bm!582711 () Bool)

(assert (=> bm!582711 (= call!582717 (Exists!3575 (ite c!1224413 lambda!370949 lambda!370950)))))

(declare-fun d!2080386 () Bool)

(declare-fun c!1224412 () Bool)

(assert (=> d!2080386 (= c!1224412 ((_ is EmptyExpr!16505) r!7292))))

(assert (=> d!2080386 (= (matchRSpec!3606 r!7292 s!2326) e!4014255)))

(declare-fun b!6637496 () Bool)

(declare-fun e!4014252 () Bool)

(assert (=> b!6637496 (= e!4014252 (= s!2326 (Cons!65690 (c!1224274 r!7292) Nil!65690)))))

(declare-fun b!6637497 () Bool)

(assert (=> b!6637497 (= e!4014253 (matchRSpec!3606 (regTwo!33523 r!7292) s!2326))))

(declare-fun b!6637498 () Bool)

(declare-fun res!2720138 () Bool)

(assert (=> b!6637498 (=> res!2720138 e!4014254)))

(assert (=> b!6637498 (= res!2720138 call!582716)))

(declare-fun e!4014256 () Bool)

(assert (=> b!6637498 (= e!4014256 e!4014254)))

(declare-fun b!6637499 () Bool)

(assert (=> b!6637499 (= e!4014259 e!4014256)))

(assert (=> b!6637499 (= c!1224413 ((_ is Star!16505) r!7292))))

(declare-fun b!6637501 () Bool)

(declare-fun c!1224415 () Bool)

(assert (=> b!6637501 (= c!1224415 ((_ is ElementMatch!16505) r!7292))))

(declare-fun e!4014261 () Bool)

(assert (=> b!6637501 (= e!4014261 e!4014252)))

(declare-fun b!6637503 () Bool)

(declare-fun c!1224414 () Bool)

(assert (=> b!6637503 (= c!1224414 ((_ is Union!16505) r!7292))))

(assert (=> b!6637503 (= e!4014252 e!4014259)))

(assert (=> b!6637505 (= e!4014256 call!582717)))

(declare-fun bm!582712 () Bool)

(assert (=> bm!582712 (= call!582716 (isEmpty!37994 s!2326))))

(declare-fun b!6637509 () Bool)

(assert (=> b!6637509 (= e!4014255 e!4014261)))

(declare-fun res!2720137 () Bool)

(assert (=> b!6637509 (= res!2720137 (not ((_ is EmptyLang!16505) r!7292)))))

(assert (=> b!6637509 (=> (not res!2720137) (not e!4014261))))

(assert (= (and d!2080386 c!1224412) b!6637494))

(assert (= (and d!2080386 (not c!1224412)) b!6637509))

(assert (= (and b!6637509 res!2720137) b!6637501))

(assert (= (and b!6637501 c!1224415) b!6637496))

(assert (= (and b!6637501 (not c!1224415)) b!6637503))

(assert (= (and b!6637503 c!1224414) b!6637495))

(assert (= (and b!6637503 (not c!1224414)) b!6637499))

(assert (= (and b!6637495 (not res!2720139)) b!6637497))

(assert (= (and b!6637499 c!1224413) b!6637498))

(assert (= (and b!6637499 (not c!1224413)) b!6637505))

(assert (= (and b!6637498 (not res!2720138)) b!6637493))

(assert (= (or b!6637493 b!6637505) bm!582711))

(assert (= (or b!6637494 b!6637498) bm!582712))

(declare-fun m!7404668 () Bool)

(assert (=> b!6637495 m!7404668))

(declare-fun m!7404670 () Bool)

(assert (=> bm!582711 m!7404670))

(declare-fun m!7404672 () Bool)

(assert (=> b!6637497 m!7404672))

(declare-fun m!7404674 () Bool)

(assert (=> bm!582712 m!7404674))

(assert (=> b!6637044 d!2080386))

(declare-fun b!6637602 () Bool)

(declare-fun res!2720159 () Bool)

(declare-fun e!4014310 () Bool)

(assert (=> b!6637602 (=> res!2720159 e!4014310)))

(assert (=> b!6637602 (= res!2720159 (not (isEmpty!37994 (tail!12538 s!2326))))))

(declare-fun b!6637603 () Bool)

(declare-fun e!4014305 () Bool)

(declare-fun e!4014309 () Bool)

(assert (=> b!6637603 (= e!4014305 e!4014309)))

(declare-fun res!2720161 () Bool)

(assert (=> b!6637603 (=> (not res!2720161) (not e!4014309))))

(declare-fun lt!2419839 () Bool)

(assert (=> b!6637603 (= res!2720161 (not lt!2419839))))

(declare-fun b!6637604 () Bool)

(declare-fun res!2720162 () Bool)

(assert (=> b!6637604 (=> res!2720162 e!4014305)))

(assert (=> b!6637604 (= res!2720162 (not ((_ is ElementMatch!16505) r!7292)))))

(declare-fun e!4014308 () Bool)

(assert (=> b!6637604 (= e!4014308 e!4014305)))

(declare-fun bm!582715 () Bool)

(declare-fun call!582720 () Bool)

(assert (=> bm!582715 (= call!582720 (isEmpty!37994 s!2326))))

(declare-fun b!6637605 () Bool)

(declare-fun e!4014306 () Bool)

(declare-fun derivativeStep!5185 (Regex!16505 C!33280) Regex!16505)

(assert (=> b!6637605 (= e!4014306 (matchR!8688 (derivativeStep!5185 r!7292 (head!13453 s!2326)) (tail!12538 s!2326)))))

(declare-fun b!6637606 () Bool)

(assert (=> b!6637606 (= e!4014309 e!4014310)))

(declare-fun res!2720158 () Bool)

(assert (=> b!6637606 (=> res!2720158 e!4014310)))

(assert (=> b!6637606 (= res!2720158 call!582720)))

(declare-fun b!6637607 () Bool)

(assert (=> b!6637607 (= e!4014306 (nullable!6498 r!7292))))

(declare-fun b!6637608 () Bool)

(declare-fun res!2720163 () Bool)

(assert (=> b!6637608 (=> res!2720163 e!4014305)))

(declare-fun e!4014307 () Bool)

(assert (=> b!6637608 (= res!2720163 e!4014307)))

(declare-fun res!2720164 () Bool)

(assert (=> b!6637608 (=> (not res!2720164) (not e!4014307))))

(assert (=> b!6637608 (= res!2720164 lt!2419839)))

(declare-fun b!6637609 () Bool)

(declare-fun res!2720160 () Bool)

(assert (=> b!6637609 (=> (not res!2720160) (not e!4014307))))

(assert (=> b!6637609 (= res!2720160 (isEmpty!37994 (tail!12538 s!2326)))))

(declare-fun d!2080404 () Bool)

(declare-fun e!4014311 () Bool)

(assert (=> d!2080404 e!4014311))

(declare-fun c!1224430 () Bool)

(assert (=> d!2080404 (= c!1224430 ((_ is EmptyExpr!16505) r!7292))))

(assert (=> d!2080404 (= lt!2419839 e!4014306)))

(declare-fun c!1224429 () Bool)

(assert (=> d!2080404 (= c!1224429 (isEmpty!37994 s!2326))))

(assert (=> d!2080404 (validRegex!8241 r!7292)))

(assert (=> d!2080404 (= (matchR!8688 r!7292 s!2326) lt!2419839)))

(declare-fun b!6637610 () Bool)

(assert (=> b!6637610 (= e!4014311 e!4014308)))

(declare-fun c!1224431 () Bool)

(assert (=> b!6637610 (= c!1224431 ((_ is EmptyLang!16505) r!7292))))

(declare-fun b!6637611 () Bool)

(assert (=> b!6637611 (= e!4014310 (not (= (head!13453 s!2326) (c!1224274 r!7292))))))

(declare-fun b!6637612 () Bool)

(assert (=> b!6637612 (= e!4014307 (= (head!13453 s!2326) (c!1224274 r!7292)))))

(declare-fun b!6637613 () Bool)

(declare-fun res!2720165 () Bool)

(assert (=> b!6637613 (=> (not res!2720165) (not e!4014307))))

(assert (=> b!6637613 (= res!2720165 (not call!582720))))

(declare-fun b!6637614 () Bool)

(assert (=> b!6637614 (= e!4014308 (not lt!2419839))))

(declare-fun b!6637615 () Bool)

(assert (=> b!6637615 (= e!4014311 (= lt!2419839 call!582720))))

(assert (= (and d!2080404 c!1224429) b!6637607))

(assert (= (and d!2080404 (not c!1224429)) b!6637605))

(assert (= (and d!2080404 c!1224430) b!6637615))

(assert (= (and d!2080404 (not c!1224430)) b!6637610))

(assert (= (and b!6637610 c!1224431) b!6637614))

(assert (= (and b!6637610 (not c!1224431)) b!6637604))

(assert (= (and b!6637604 (not res!2720162)) b!6637608))

(assert (= (and b!6637608 res!2720164) b!6637613))

(assert (= (and b!6637613 res!2720165) b!6637609))

(assert (= (and b!6637609 res!2720160) b!6637612))

(assert (= (and b!6637608 (not res!2720163)) b!6637603))

(assert (= (and b!6637603 res!2720161) b!6637606))

(assert (= (and b!6637606 (not res!2720158)) b!6637602))

(assert (= (and b!6637602 (not res!2720159)) b!6637611))

(assert (= (or b!6637615 b!6637606 b!6637613) bm!582715))

(declare-fun m!7404684 () Bool)

(assert (=> b!6637605 m!7404684))

(assert (=> b!6637605 m!7404684))

(declare-fun m!7404686 () Bool)

(assert (=> b!6637605 m!7404686))

(declare-fun m!7404688 () Bool)

(assert (=> b!6637605 m!7404688))

(assert (=> b!6637605 m!7404686))

(assert (=> b!6637605 m!7404688))

(declare-fun m!7404690 () Bool)

(assert (=> b!6637605 m!7404690))

(assert (=> b!6637611 m!7404684))

(assert (=> d!2080404 m!7404674))

(assert (=> d!2080404 m!7404360))

(declare-fun m!7404692 () Bool)

(assert (=> b!6637607 m!7404692))

(assert (=> bm!582715 m!7404674))

(assert (=> b!6637602 m!7404688))

(assert (=> b!6637602 m!7404688))

(declare-fun m!7404694 () Bool)

(assert (=> b!6637602 m!7404694))

(assert (=> b!6637612 m!7404684))

(assert (=> b!6637609 m!7404688))

(assert (=> b!6637609 m!7404688))

(assert (=> b!6637609 m!7404694))

(assert (=> b!6637044 d!2080404))

(declare-fun d!2080408 () Bool)

(assert (=> d!2080408 (= (matchR!8688 r!7292 s!2326) (matchRSpec!3606 r!7292 s!2326))))

(declare-fun lt!2419842 () Unit!159375)

(declare-fun choose!49602 (Regex!16505 List!65814) Unit!159375)

(assert (=> d!2080408 (= lt!2419842 (choose!49602 r!7292 s!2326))))

(assert (=> d!2080408 (validRegex!8241 r!7292)))

(assert (=> d!2080408 (= (mainMatchTheorem!3606 r!7292 s!2326) lt!2419842)))

(declare-fun bs!1705591 () Bool)

(assert (= bs!1705591 d!2080408))

(assert (=> bs!1705591 m!7404356))

(assert (=> bs!1705591 m!7404354))

(declare-fun m!7404696 () Bool)

(assert (=> bs!1705591 m!7404696))

(assert (=> bs!1705591 m!7404360))

(assert (=> b!6637044 d!2080408))

(declare-fun b!6637634 () Bool)

(declare-fun e!4014322 () Option!16396)

(assert (=> b!6637634 (= e!4014322 (Some!16395 (tuple2!66969 Nil!65690 s!2326)))))

(declare-fun b!6637636 () Bool)

(declare-fun e!4014323 () Option!16396)

(assert (=> b!6637636 (= e!4014323 None!16395)))

(declare-fun b!6637637 () Bool)

(declare-fun lt!2419850 () Unit!159375)

(declare-fun lt!2419851 () Unit!159375)

(assert (=> b!6637637 (= lt!2419850 lt!2419851)))

(declare-fun ++!14655 (List!65814 List!65814) List!65814)

(assert (=> b!6637637 (= (++!14655 (++!14655 Nil!65690 (Cons!65690 (h!72138 s!2326) Nil!65690)) (t!379480 s!2326)) s!2326)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2644 (List!65814 C!33280 List!65814 List!65814) Unit!159375)

(assert (=> b!6637637 (= lt!2419851 (lemmaMoveElementToOtherListKeepsConcatEq!2644 Nil!65690 (h!72138 s!2326) (t!379480 s!2326) s!2326))))

(assert (=> b!6637637 (= e!4014323 (findConcatSeparation!2810 (regOne!33522 r!7292) (regTwo!33522 r!7292) (++!14655 Nil!65690 (Cons!65690 (h!72138 s!2326) Nil!65690)) (t!379480 s!2326) s!2326))))

(declare-fun b!6637638 () Bool)

(declare-fun e!4014324 () Bool)

(assert (=> b!6637638 (= e!4014324 (matchR!8688 (regTwo!33522 r!7292) s!2326))))

(declare-fun b!6637639 () Bool)

(declare-fun e!4014326 () Bool)

(declare-fun lt!2419849 () Option!16396)

(assert (=> b!6637639 (= e!4014326 (not (isDefined!13099 lt!2419849)))))

(declare-fun b!6637640 () Bool)

(declare-fun res!2720180 () Bool)

(declare-fun e!4014325 () Bool)

(assert (=> b!6637640 (=> (not res!2720180) (not e!4014325))))

(declare-fun get!22839 (Option!16396) tuple2!66968)

(assert (=> b!6637640 (= res!2720180 (matchR!8688 (regTwo!33522 r!7292) (_2!36787 (get!22839 lt!2419849))))))

(declare-fun b!6637641 () Bool)

(assert (=> b!6637641 (= e!4014325 (= (++!14655 (_1!36787 (get!22839 lt!2419849)) (_2!36787 (get!22839 lt!2419849))) s!2326))))

(declare-fun b!6637642 () Bool)

(declare-fun res!2720178 () Bool)

(assert (=> b!6637642 (=> (not res!2720178) (not e!4014325))))

(assert (=> b!6637642 (= res!2720178 (matchR!8688 (regOne!33522 r!7292) (_1!36787 (get!22839 lt!2419849))))))

(declare-fun b!6637635 () Bool)

(assert (=> b!6637635 (= e!4014322 e!4014323)))

(declare-fun c!1224436 () Bool)

(assert (=> b!6637635 (= c!1224436 ((_ is Nil!65690) s!2326))))

(declare-fun d!2080410 () Bool)

(assert (=> d!2080410 e!4014326))

(declare-fun res!2720179 () Bool)

(assert (=> d!2080410 (=> res!2720179 e!4014326)))

(assert (=> d!2080410 (= res!2720179 e!4014325)))

(declare-fun res!2720176 () Bool)

(assert (=> d!2080410 (=> (not res!2720176) (not e!4014325))))

(assert (=> d!2080410 (= res!2720176 (isDefined!13099 lt!2419849))))

(assert (=> d!2080410 (= lt!2419849 e!4014322)))

(declare-fun c!1224437 () Bool)

(assert (=> d!2080410 (= c!1224437 e!4014324)))

(declare-fun res!2720177 () Bool)

(assert (=> d!2080410 (=> (not res!2720177) (not e!4014324))))

(assert (=> d!2080410 (= res!2720177 (matchR!8688 (regOne!33522 r!7292) Nil!65690))))

(assert (=> d!2080410 (validRegex!8241 (regOne!33522 r!7292))))

(assert (=> d!2080410 (= (findConcatSeparation!2810 (regOne!33522 r!7292) (regTwo!33522 r!7292) Nil!65690 s!2326 s!2326) lt!2419849)))

(assert (= (and d!2080410 res!2720177) b!6637638))

(assert (= (and d!2080410 c!1224437) b!6637634))

(assert (= (and d!2080410 (not c!1224437)) b!6637635))

(assert (= (and b!6637635 c!1224436) b!6637636))

(assert (= (and b!6637635 (not c!1224436)) b!6637637))

(assert (= (and d!2080410 res!2720176) b!6637642))

(assert (= (and b!6637642 res!2720178) b!6637640))

(assert (= (and b!6637640 res!2720180) b!6637641))

(assert (= (and d!2080410 (not res!2720179)) b!6637639))

(declare-fun m!7404698 () Bool)

(assert (=> b!6637639 m!7404698))

(declare-fun m!7404700 () Bool)

(assert (=> b!6637640 m!7404700))

(declare-fun m!7404702 () Bool)

(assert (=> b!6637640 m!7404702))

(assert (=> d!2080410 m!7404698))

(declare-fun m!7404704 () Bool)

(assert (=> d!2080410 m!7404704))

(declare-fun m!7404706 () Bool)

(assert (=> d!2080410 m!7404706))

(assert (=> b!6637642 m!7404700))

(declare-fun m!7404708 () Bool)

(assert (=> b!6637642 m!7404708))

(declare-fun m!7404710 () Bool)

(assert (=> b!6637638 m!7404710))

(assert (=> b!6637641 m!7404700))

(declare-fun m!7404712 () Bool)

(assert (=> b!6637641 m!7404712))

(declare-fun m!7404714 () Bool)

(assert (=> b!6637637 m!7404714))

(assert (=> b!6637637 m!7404714))

(declare-fun m!7404716 () Bool)

(assert (=> b!6637637 m!7404716))

(declare-fun m!7404718 () Bool)

(assert (=> b!6637637 m!7404718))

(assert (=> b!6637637 m!7404714))

(declare-fun m!7404720 () Bool)

(assert (=> b!6637637 m!7404720))

(assert (=> b!6637024 d!2080410))

(declare-fun d!2080412 () Bool)

(declare-fun choose!49604 (Int) Bool)

(assert (=> d!2080412 (= (Exists!3575 lambda!370903) (choose!49604 lambda!370903))))

(declare-fun bs!1705592 () Bool)

(assert (= bs!1705592 d!2080412))

(declare-fun m!7404722 () Bool)

(assert (=> bs!1705592 m!7404722))

(assert (=> b!6637024 d!2080412))

(declare-fun d!2080414 () Bool)

(assert (=> d!2080414 (= (Exists!3575 lambda!370904) (choose!49604 lambda!370904))))

(declare-fun bs!1705593 () Bool)

(assert (= bs!1705593 d!2080414))

(declare-fun m!7404724 () Bool)

(assert (=> bs!1705593 m!7404724))

(assert (=> b!6637024 d!2080414))

(declare-fun bs!1705594 () Bool)

(declare-fun d!2080416 () Bool)

(assert (= bs!1705594 (and d!2080416 b!6637024)))

(declare-fun lambda!370956 () Int)

(assert (=> bs!1705594 (= lambda!370956 lambda!370903)))

(assert (=> bs!1705594 (not (= lambda!370956 lambda!370904))))

(declare-fun bs!1705595 () Bool)

(assert (= bs!1705595 (and d!2080416 b!6637493)))

(assert (=> bs!1705595 (not (= lambda!370956 lambda!370949))))

(declare-fun bs!1705596 () Bool)

(assert (= bs!1705596 (and d!2080416 b!6637505)))

(assert (=> bs!1705596 (not (= lambda!370956 lambda!370950))))

(assert (=> d!2080416 true))

(assert (=> d!2080416 true))

(assert (=> d!2080416 true))

(assert (=> d!2080416 (= (isDefined!13099 (findConcatSeparation!2810 (regOne!33522 r!7292) (regTwo!33522 r!7292) Nil!65690 s!2326 s!2326)) (Exists!3575 lambda!370956))))

(declare-fun lt!2419854 () Unit!159375)

(declare-fun choose!49605 (Regex!16505 Regex!16505 List!65814) Unit!159375)

(assert (=> d!2080416 (= lt!2419854 (choose!49605 (regOne!33522 r!7292) (regTwo!33522 r!7292) s!2326))))

(assert (=> d!2080416 (validRegex!8241 (regOne!33522 r!7292))))

(assert (=> d!2080416 (= (lemmaFindConcatSeparationEquivalentToExists!2574 (regOne!33522 r!7292) (regTwo!33522 r!7292) s!2326) lt!2419854)))

(declare-fun bs!1705597 () Bool)

(assert (= bs!1705597 d!2080416))

(assert (=> bs!1705597 m!7404384))

(declare-fun m!7404726 () Bool)

(assert (=> bs!1705597 m!7404726))

(declare-fun m!7404728 () Bool)

(assert (=> bs!1705597 m!7404728))

(assert (=> bs!1705597 m!7404706))

(assert (=> bs!1705597 m!7404384))

(assert (=> bs!1705597 m!7404386))

(assert (=> b!6637024 d!2080416))

(declare-fun bs!1705598 () Bool)

(declare-fun d!2080418 () Bool)

(assert (= bs!1705598 (and d!2080418 b!6637493)))

(declare-fun lambda!370961 () Int)

(assert (=> bs!1705598 (not (= lambda!370961 lambda!370949))))

(declare-fun bs!1705599 () Bool)

(assert (= bs!1705599 (and d!2080418 b!6637505)))

(assert (=> bs!1705599 (not (= lambda!370961 lambda!370950))))

(declare-fun bs!1705600 () Bool)

(assert (= bs!1705600 (and d!2080418 b!6637024)))

(assert (=> bs!1705600 (not (= lambda!370961 lambda!370904))))

(declare-fun bs!1705601 () Bool)

(assert (= bs!1705601 (and d!2080418 d!2080416)))

(assert (=> bs!1705601 (= lambda!370961 lambda!370956)))

(assert (=> bs!1705600 (= lambda!370961 lambda!370903)))

(assert (=> d!2080418 true))

(assert (=> d!2080418 true))

(assert (=> d!2080418 true))

(declare-fun lambda!370962 () Int)

(assert (=> bs!1705599 (= lambda!370962 lambda!370950)))

(assert (=> bs!1705600 (= lambda!370962 lambda!370904)))

(assert (=> bs!1705598 (not (= lambda!370962 lambda!370949))))

(declare-fun bs!1705602 () Bool)

(assert (= bs!1705602 d!2080418))

(assert (=> bs!1705602 (not (= lambda!370962 lambda!370961))))

(assert (=> bs!1705601 (not (= lambda!370962 lambda!370956))))

(assert (=> bs!1705600 (not (= lambda!370962 lambda!370903))))

(assert (=> d!2080418 true))

(assert (=> d!2080418 true))

(assert (=> d!2080418 true))

(assert (=> d!2080418 (= (Exists!3575 lambda!370961) (Exists!3575 lambda!370962))))

(declare-fun lt!2419857 () Unit!159375)

(declare-fun choose!49606 (Regex!16505 Regex!16505 List!65814) Unit!159375)

(assert (=> d!2080418 (= lt!2419857 (choose!49606 (regOne!33522 r!7292) (regTwo!33522 r!7292) s!2326))))

(assert (=> d!2080418 (validRegex!8241 (regOne!33522 r!7292))))

(assert (=> d!2080418 (= (lemmaExistCutMatchRandMatchRSpecEquivalent!2112 (regOne!33522 r!7292) (regTwo!33522 r!7292) s!2326) lt!2419857)))

(declare-fun m!7404730 () Bool)

(assert (=> bs!1705602 m!7404730))

(declare-fun m!7404732 () Bool)

(assert (=> bs!1705602 m!7404732))

(declare-fun m!7404734 () Bool)

(assert (=> bs!1705602 m!7404734))

(assert (=> bs!1705602 m!7404706))

(assert (=> b!6637024 d!2080418))

(declare-fun d!2080420 () Bool)

(declare-fun isEmpty!37996 (Option!16396) Bool)

(assert (=> d!2080420 (= (isDefined!13099 (findConcatSeparation!2810 (regOne!33522 r!7292) (regTwo!33522 r!7292) Nil!65690 s!2326 s!2326)) (not (isEmpty!37996 (findConcatSeparation!2810 (regOne!33522 r!7292) (regTwo!33522 r!7292) Nil!65690 s!2326 s!2326))))))

(declare-fun bs!1705603 () Bool)

(assert (= bs!1705603 d!2080420))

(assert (=> bs!1705603 m!7404384))

(declare-fun m!7404736 () Bool)

(assert (=> bs!1705603 m!7404736))

(assert (=> b!6637024 d!2080420))

(declare-fun d!2080422 () Bool)

(assert (=> d!2080422 (= (isEmpty!37992 (t!379481 (exprs!6389 (h!72140 zl!343)))) ((_ is Nil!65691) (t!379481 (exprs!6389 (h!72140 zl!343)))))))

(assert (=> b!6637034 d!2080422))

(declare-fun d!2080424 () Bool)

(declare-fun e!4014335 () Bool)

(assert (=> d!2080424 e!4014335))

(declare-fun res!2720195 () Bool)

(assert (=> d!2080424 (=> (not res!2720195) (not e!4014335))))

(declare-fun lt!2419860 () List!65816)

(declare-fun noDuplicate!2306 (List!65816) Bool)

(assert (=> d!2080424 (= res!2720195 (noDuplicate!2306 lt!2419860))))

(declare-fun choose!49607 ((InoxSet Context!11778)) List!65816)

(assert (=> d!2080424 (= lt!2419860 (choose!49607 z!1189))))

(assert (=> d!2080424 (= (toList!10289 z!1189) lt!2419860)))

(declare-fun b!6637657 () Bool)

(declare-fun content!12692 (List!65816) (InoxSet Context!11778))

(assert (=> b!6637657 (= e!4014335 (= (content!12692 lt!2419860) z!1189))))

(assert (= (and d!2080424 res!2720195) b!6637657))

(declare-fun m!7404738 () Bool)

(assert (=> d!2080424 m!7404738))

(declare-fun m!7404740 () Bool)

(assert (=> d!2080424 m!7404740))

(declare-fun m!7404742 () Bool)

(assert (=> b!6637657 m!7404742))

(assert (=> b!6637036 d!2080424))

(declare-fun d!2080426 () Bool)

(assert (=> d!2080426 (= (isEmpty!37991 (t!379482 zl!343)) ((_ is Nil!65692) (t!379482 zl!343)))))

(assert (=> b!6637026 d!2080426))

(declare-fun bs!1705604 () Bool)

(declare-fun d!2080428 () Bool)

(assert (= bs!1705604 (and d!2080428 d!2080340)))

(declare-fun lambda!370963 () Int)

(assert (=> bs!1705604 (= lambda!370963 lambda!370918)))

(declare-fun bs!1705605 () Bool)

(assert (= bs!1705605 (and d!2080428 d!2080344)))

(assert (=> bs!1705605 (= lambda!370963 lambda!370923)))

(declare-fun bs!1705606 () Bool)

(assert (= bs!1705606 (and d!2080428 d!2080348)))

(assert (=> bs!1705606 (= lambda!370963 lambda!370926)))

(declare-fun bs!1705607 () Bool)

(assert (= bs!1705607 (and d!2080428 d!2080370)))

(assert (=> bs!1705607 (= lambda!370963 lambda!370931)))

(assert (=> d!2080428 (= (inv!84509 (h!72140 zl!343)) (forall!15701 (exprs!6389 (h!72140 zl!343)) lambda!370963))))

(declare-fun bs!1705608 () Bool)

(assert (= bs!1705608 d!2080428))

(declare-fun m!7404744 () Bool)

(assert (=> bs!1705608 m!7404744))

(assert (=> b!6637039 d!2080428))

(declare-fun d!2080430 () Bool)

(declare-fun nullableFct!2420 (Regex!16505) Bool)

(assert (=> d!2080430 (= (nullable!6498 (regOne!33522 (regOne!33522 r!7292))) (nullableFct!2420 (regOne!33522 (regOne!33522 r!7292))))))

(declare-fun bs!1705609 () Bool)

(assert (= bs!1705609 d!2080430))

(declare-fun m!7404746 () Bool)

(assert (=> bs!1705609 m!7404746))

(assert (=> b!6637020 d!2080430))

(declare-fun d!2080432 () Bool)

(assert (=> d!2080432 (= (nullable!6498 (h!72139 (exprs!6389 (h!72140 zl!343)))) (nullableFct!2420 (h!72139 (exprs!6389 (h!72140 zl!343)))))))

(declare-fun bs!1705610 () Bool)

(assert (= bs!1705610 d!2080432))

(declare-fun m!7404748 () Bool)

(assert (=> bs!1705610 m!7404748))

(assert (=> b!6637019 d!2080432))

(declare-fun call!582723 () (InoxSet Context!11778))

(declare-fun e!4014344 () (InoxSet Context!11778))

(declare-fun b!6637668 () Bool)

(assert (=> b!6637668 (= e!4014344 ((_ map or) call!582723 (derivationStepZipperUp!1679 (Context!11779 (t!379481 (exprs!6389 (Context!11779 (Cons!65691 (h!72139 (exprs!6389 (h!72140 zl!343))) (t!379481 (exprs!6389 (h!72140 zl!343)))))))) (h!72138 s!2326))))))

(declare-fun d!2080434 () Bool)

(declare-fun c!1224442 () Bool)

(declare-fun e!4014343 () Bool)

(assert (=> d!2080434 (= c!1224442 e!4014343)))

(declare-fun res!2720198 () Bool)

(assert (=> d!2080434 (=> (not res!2720198) (not e!4014343))))

(assert (=> d!2080434 (= res!2720198 ((_ is Cons!65691) (exprs!6389 (Context!11779 (Cons!65691 (h!72139 (exprs!6389 (h!72140 zl!343))) (t!379481 (exprs!6389 (h!72140 zl!343))))))))))

(assert (=> d!2080434 (= (derivationStepZipperUp!1679 (Context!11779 (Cons!65691 (h!72139 (exprs!6389 (h!72140 zl!343))) (t!379481 (exprs!6389 (h!72140 zl!343))))) (h!72138 s!2326)) e!4014344)))

(declare-fun b!6637669 () Bool)

(assert (=> b!6637669 (= e!4014343 (nullable!6498 (h!72139 (exprs!6389 (Context!11779 (Cons!65691 (h!72139 (exprs!6389 (h!72140 zl!343))) (t!379481 (exprs!6389 (h!72140 zl!343)))))))))))

(declare-fun b!6637670 () Bool)

(declare-fun e!4014342 () (InoxSet Context!11778))

(assert (=> b!6637670 (= e!4014342 ((as const (Array Context!11778 Bool)) false))))

(declare-fun bm!582718 () Bool)

(assert (=> bm!582718 (= call!582723 (derivationStepZipperDown!1753 (h!72139 (exprs!6389 (Context!11779 (Cons!65691 (h!72139 (exprs!6389 (h!72140 zl!343))) (t!379481 (exprs!6389 (h!72140 zl!343))))))) (Context!11779 (t!379481 (exprs!6389 (Context!11779 (Cons!65691 (h!72139 (exprs!6389 (h!72140 zl!343))) (t!379481 (exprs!6389 (h!72140 zl!343)))))))) (h!72138 s!2326)))))

(declare-fun b!6637671 () Bool)

(assert (=> b!6637671 (= e!4014342 call!582723)))

(declare-fun b!6637672 () Bool)

(assert (=> b!6637672 (= e!4014344 e!4014342)))

(declare-fun c!1224443 () Bool)

(assert (=> b!6637672 (= c!1224443 ((_ is Cons!65691) (exprs!6389 (Context!11779 (Cons!65691 (h!72139 (exprs!6389 (h!72140 zl!343))) (t!379481 (exprs!6389 (h!72140 zl!343))))))))))

(assert (= (and d!2080434 res!2720198) b!6637669))

(assert (= (and d!2080434 c!1224442) b!6637668))

(assert (= (and d!2080434 (not c!1224442)) b!6637672))

(assert (= (and b!6637672 c!1224443) b!6637671))

(assert (= (and b!6637672 (not c!1224443)) b!6637670))

(assert (= (or b!6637668 b!6637671) bm!582718))

(declare-fun m!7404750 () Bool)

(assert (=> b!6637668 m!7404750))

(declare-fun m!7404752 () Bool)

(assert (=> b!6637669 m!7404752))

(declare-fun m!7404754 () Bool)

(assert (=> bm!582718 m!7404754))

(assert (=> b!6637019 d!2080434))

(declare-fun b!6637673 () Bool)

(declare-fun e!4014347 () (InoxSet Context!11778))

(declare-fun call!582724 () (InoxSet Context!11778))

(assert (=> b!6637673 (= e!4014347 ((_ map or) call!582724 (derivationStepZipperUp!1679 (Context!11779 (t!379481 (exprs!6389 lt!2419766))) (h!72138 s!2326))))))

(declare-fun d!2080436 () Bool)

(declare-fun c!1224444 () Bool)

(declare-fun e!4014346 () Bool)

(assert (=> d!2080436 (= c!1224444 e!4014346)))

(declare-fun res!2720199 () Bool)

(assert (=> d!2080436 (=> (not res!2720199) (not e!4014346))))

(assert (=> d!2080436 (= res!2720199 ((_ is Cons!65691) (exprs!6389 lt!2419766)))))

(assert (=> d!2080436 (= (derivationStepZipperUp!1679 lt!2419766 (h!72138 s!2326)) e!4014347)))

(declare-fun b!6637674 () Bool)

(assert (=> b!6637674 (= e!4014346 (nullable!6498 (h!72139 (exprs!6389 lt!2419766))))))

(declare-fun b!6637675 () Bool)

(declare-fun e!4014345 () (InoxSet Context!11778))

(assert (=> b!6637675 (= e!4014345 ((as const (Array Context!11778 Bool)) false))))

(declare-fun bm!582719 () Bool)

(assert (=> bm!582719 (= call!582724 (derivationStepZipperDown!1753 (h!72139 (exprs!6389 lt!2419766)) (Context!11779 (t!379481 (exprs!6389 lt!2419766))) (h!72138 s!2326)))))

(declare-fun b!6637676 () Bool)

(assert (=> b!6637676 (= e!4014345 call!582724)))

(declare-fun b!6637677 () Bool)

(assert (=> b!6637677 (= e!4014347 e!4014345)))

(declare-fun c!1224445 () Bool)

(assert (=> b!6637677 (= c!1224445 ((_ is Cons!65691) (exprs!6389 lt!2419766)))))

(assert (= (and d!2080436 res!2720199) b!6637674))

(assert (= (and d!2080436 c!1224444) b!6637673))

(assert (= (and d!2080436 (not c!1224444)) b!6637677))

(assert (= (and b!6637677 c!1224445) b!6637676))

(assert (= (and b!6637677 (not c!1224445)) b!6637675))

(assert (= (or b!6637673 b!6637676) bm!582719))

(declare-fun m!7404756 () Bool)

(assert (=> b!6637673 m!7404756))

(declare-fun m!7404758 () Bool)

(assert (=> b!6637674 m!7404758))

(declare-fun m!7404760 () Bool)

(assert (=> bm!582719 m!7404760))

(assert (=> b!6637019 d!2080436))

(declare-fun d!2080438 () Bool)

(declare-fun dynLambda!26168 (Int Context!11778) (InoxSet Context!11778))

(assert (=> d!2080438 (= (flatMap!2010 z!1189 lambda!370905) (dynLambda!26168 lambda!370905 (h!72140 zl!343)))))

(declare-fun lt!2419863 () Unit!159375)

(declare-fun choose!49608 ((InoxSet Context!11778) Context!11778 Int) Unit!159375)

(assert (=> d!2080438 (= lt!2419863 (choose!49608 z!1189 (h!72140 zl!343) lambda!370905))))

(assert (=> d!2080438 (= z!1189 (store ((as const (Array Context!11778 Bool)) false) (h!72140 zl!343) true))))

(assert (=> d!2080438 (= (lemmaFlatMapOnSingletonSet!1536 z!1189 (h!72140 zl!343) lambda!370905) lt!2419863)))

(declare-fun b_lambda!250853 () Bool)

(assert (=> (not b_lambda!250853) (not d!2080438)))

(declare-fun bs!1705611 () Bool)

(assert (= bs!1705611 d!2080438))

(assert (=> bs!1705611 m!7404370))

(declare-fun m!7404762 () Bool)

(assert (=> bs!1705611 m!7404762))

(declare-fun m!7404764 () Bool)

(assert (=> bs!1705611 m!7404764))

(declare-fun m!7404766 () Bool)

(assert (=> bs!1705611 m!7404766))

(assert (=> b!6637019 d!2080438))

(declare-fun e!4014350 () (InoxSet Context!11778))

(declare-fun b!6637678 () Bool)

(declare-fun call!582725 () (InoxSet Context!11778))

(assert (=> b!6637678 (= e!4014350 ((_ map or) call!582725 (derivationStepZipperUp!1679 (Context!11779 (t!379481 (exprs!6389 (h!72140 zl!343)))) (h!72138 s!2326))))))

(declare-fun d!2080440 () Bool)

(declare-fun c!1224446 () Bool)

(declare-fun e!4014349 () Bool)

(assert (=> d!2080440 (= c!1224446 e!4014349)))

(declare-fun res!2720200 () Bool)

(assert (=> d!2080440 (=> (not res!2720200) (not e!4014349))))

(assert (=> d!2080440 (= res!2720200 ((_ is Cons!65691) (exprs!6389 (h!72140 zl!343))))))

(assert (=> d!2080440 (= (derivationStepZipperUp!1679 (h!72140 zl!343) (h!72138 s!2326)) e!4014350)))

(declare-fun b!6637679 () Bool)

(assert (=> b!6637679 (= e!4014349 (nullable!6498 (h!72139 (exprs!6389 (h!72140 zl!343)))))))

(declare-fun b!6637680 () Bool)

(declare-fun e!4014348 () (InoxSet Context!11778))

(assert (=> b!6637680 (= e!4014348 ((as const (Array Context!11778 Bool)) false))))

(declare-fun bm!582720 () Bool)

(assert (=> bm!582720 (= call!582725 (derivationStepZipperDown!1753 (h!72139 (exprs!6389 (h!72140 zl!343))) (Context!11779 (t!379481 (exprs!6389 (h!72140 zl!343)))) (h!72138 s!2326)))))

(declare-fun b!6637681 () Bool)

(assert (=> b!6637681 (= e!4014348 call!582725)))

(declare-fun b!6637682 () Bool)

(assert (=> b!6637682 (= e!4014350 e!4014348)))

(declare-fun c!1224447 () Bool)

(assert (=> b!6637682 (= c!1224447 ((_ is Cons!65691) (exprs!6389 (h!72140 zl!343))))))

(assert (= (and d!2080440 res!2720200) b!6637679))

(assert (= (and d!2080440 c!1224446) b!6637678))

(assert (= (and d!2080440 (not c!1224446)) b!6637682))

(assert (= (and b!6637682 c!1224447) b!6637681))

(assert (= (and b!6637682 (not c!1224447)) b!6637680))

(assert (= (or b!6637678 b!6637681) bm!582720))

(declare-fun m!7404768 () Bool)

(assert (=> b!6637678 m!7404768))

(assert (=> b!6637679 m!7404374))

(declare-fun m!7404770 () Bool)

(assert (=> bm!582720 m!7404770))

(assert (=> b!6637019 d!2080440))

(declare-fun bm!582733 () Bool)

(declare-fun call!582738 () (InoxSet Context!11778))

(declare-fun call!582742 () (InoxSet Context!11778))

(assert (=> bm!582733 (= call!582738 call!582742)))

(declare-fun b!6637705 () Bool)

(declare-fun e!4014366 () (InoxSet Context!11778))

(assert (=> b!6637705 (= e!4014366 ((as const (Array Context!11778 Bool)) false))))

(declare-fun b!6637706 () Bool)

(declare-fun e!4014367 () Bool)

(assert (=> b!6637706 (= e!4014367 (nullable!6498 (regOne!33522 (h!72139 (exprs!6389 (h!72140 zl!343))))))))

(declare-fun d!2080442 () Bool)

(declare-fun c!1224462 () Bool)

(assert (=> d!2080442 (= c!1224462 (and ((_ is ElementMatch!16505) (h!72139 (exprs!6389 (h!72140 zl!343)))) (= (c!1224274 (h!72139 (exprs!6389 (h!72140 zl!343)))) (h!72138 s!2326))))))

(declare-fun e!4014365 () (InoxSet Context!11778))

(assert (=> d!2080442 (= (derivationStepZipperDown!1753 (h!72139 (exprs!6389 (h!72140 zl!343))) lt!2419766 (h!72138 s!2326)) e!4014365)))

(declare-fun bm!582734 () Bool)

(declare-fun call!582743 () (InoxSet Context!11778))

(assert (=> bm!582734 (= call!582742 call!582743)))

(declare-fun b!6637707 () Bool)

(declare-fun e!4014364 () (InoxSet Context!11778))

(declare-fun call!582739 () (InoxSet Context!11778))

(assert (=> b!6637707 (= e!4014364 ((_ map or) call!582739 call!582742))))

(declare-fun c!1224460 () Bool)

(declare-fun c!1224458 () Bool)

(declare-fun bm!582735 () Bool)

(declare-fun c!1224459 () Bool)

(declare-fun call!582741 () List!65815)

(assert (=> bm!582735 (= call!582743 (derivationStepZipperDown!1753 (ite c!1224460 (regOne!33523 (h!72139 (exprs!6389 (h!72140 zl!343)))) (ite c!1224459 (regTwo!33522 (h!72139 (exprs!6389 (h!72140 zl!343)))) (ite c!1224458 (regOne!33522 (h!72139 (exprs!6389 (h!72140 zl!343)))) (reg!16834 (h!72139 (exprs!6389 (h!72140 zl!343))))))) (ite (or c!1224460 c!1224459) lt!2419766 (Context!11779 call!582741)) (h!72138 s!2326)))))

(declare-fun b!6637708 () Bool)

(assert (=> b!6637708 (= e!4014365 (store ((as const (Array Context!11778 Bool)) false) lt!2419766 true))))

(declare-fun call!582740 () List!65815)

(declare-fun bm!582736 () Bool)

(assert (=> bm!582736 (= call!582739 (derivationStepZipperDown!1753 (ite c!1224460 (regTwo!33523 (h!72139 (exprs!6389 (h!72140 zl!343)))) (regOne!33522 (h!72139 (exprs!6389 (h!72140 zl!343))))) (ite c!1224460 lt!2419766 (Context!11779 call!582740)) (h!72138 s!2326)))))

(declare-fun b!6637709 () Bool)

(declare-fun c!1224461 () Bool)

(assert (=> b!6637709 (= c!1224461 ((_ is Star!16505) (h!72139 (exprs!6389 (h!72140 zl!343)))))))

(declare-fun e!4014368 () (InoxSet Context!11778))

(assert (=> b!6637709 (= e!4014368 e!4014366)))

(declare-fun b!6637710 () Bool)

(assert (=> b!6637710 (= c!1224459 e!4014367)))

(declare-fun res!2720203 () Bool)

(assert (=> b!6637710 (=> (not res!2720203) (not e!4014367))))

(assert (=> b!6637710 (= res!2720203 ((_ is Concat!25350) (h!72139 (exprs!6389 (h!72140 zl!343)))))))

(declare-fun e!4014363 () (InoxSet Context!11778))

(assert (=> b!6637710 (= e!4014363 e!4014364)))

(declare-fun b!6637711 () Bool)

(assert (=> b!6637711 (= e!4014366 call!582738)))

(declare-fun b!6637712 () Bool)

(assert (=> b!6637712 (= e!4014364 e!4014368)))

(assert (=> b!6637712 (= c!1224458 ((_ is Concat!25350) (h!72139 (exprs!6389 (h!72140 zl!343)))))))

(declare-fun bm!582737 () Bool)

(assert (=> bm!582737 (= call!582741 call!582740)))

(declare-fun b!6637713 () Bool)

(assert (=> b!6637713 (= e!4014363 ((_ map or) call!582743 call!582739))))

(declare-fun bm!582738 () Bool)

(declare-fun $colon$colon!2342 (List!65815 Regex!16505) List!65815)

(assert (=> bm!582738 (= call!582740 ($colon$colon!2342 (exprs!6389 lt!2419766) (ite (or c!1224459 c!1224458) (regTwo!33522 (h!72139 (exprs!6389 (h!72140 zl!343)))) (h!72139 (exprs!6389 (h!72140 zl!343))))))))

(declare-fun b!6637714 () Bool)

(assert (=> b!6637714 (= e!4014365 e!4014363)))

(assert (=> b!6637714 (= c!1224460 ((_ is Union!16505) (h!72139 (exprs!6389 (h!72140 zl!343)))))))

(declare-fun b!6637715 () Bool)

(assert (=> b!6637715 (= e!4014368 call!582738)))

(assert (= (and d!2080442 c!1224462) b!6637708))

(assert (= (and d!2080442 (not c!1224462)) b!6637714))

(assert (= (and b!6637714 c!1224460) b!6637713))

(assert (= (and b!6637714 (not c!1224460)) b!6637710))

(assert (= (and b!6637710 res!2720203) b!6637706))

(assert (= (and b!6637710 c!1224459) b!6637707))

(assert (= (and b!6637710 (not c!1224459)) b!6637712))

(assert (= (and b!6637712 c!1224458) b!6637715))

(assert (= (and b!6637712 (not c!1224458)) b!6637709))

(assert (= (and b!6637709 c!1224461) b!6637711))

(assert (= (and b!6637709 (not c!1224461)) b!6637705))

(assert (= (or b!6637715 b!6637711) bm!582737))

(assert (= (or b!6637715 b!6637711) bm!582733))

(assert (= (or b!6637707 bm!582737) bm!582738))

(assert (= (or b!6637707 bm!582733) bm!582734))

(assert (= (or b!6637713 b!6637707) bm!582736))

(assert (= (or b!6637713 bm!582734) bm!582735))

(declare-fun m!7404772 () Bool)

(assert (=> bm!582736 m!7404772))

(declare-fun m!7404774 () Bool)

(assert (=> b!6637706 m!7404774))

(declare-fun m!7404776 () Bool)

(assert (=> bm!582735 m!7404776))

(declare-fun m!7404778 () Bool)

(assert (=> bm!582738 m!7404778))

(declare-fun m!7404780 () Bool)

(assert (=> b!6637708 m!7404780))

(assert (=> b!6637019 d!2080442))

(declare-fun d!2080444 () Bool)

(declare-fun choose!49609 ((InoxSet Context!11778) Int) (InoxSet Context!11778))

(assert (=> d!2080444 (= (flatMap!2010 z!1189 lambda!370905) (choose!49609 z!1189 lambda!370905))))

(declare-fun bs!1705612 () Bool)

(assert (= bs!1705612 d!2080444))

(declare-fun m!7404782 () Bool)

(assert (=> bs!1705612 m!7404782))

(assert (=> b!6637019 d!2080444))

(declare-fun e!4014371 () Bool)

(declare-fun d!2080446 () Bool)

(assert (=> d!2080446 (= (matchZipper!2517 ((_ map or) lt!2419765 lt!2419762) (t!379480 s!2326)) e!4014371)))

(declare-fun res!2720206 () Bool)

(assert (=> d!2080446 (=> res!2720206 e!4014371)))

(assert (=> d!2080446 (= res!2720206 (matchZipper!2517 lt!2419765 (t!379480 s!2326)))))

(declare-fun lt!2419866 () Unit!159375)

(declare-fun choose!49610 ((InoxSet Context!11778) (InoxSet Context!11778) List!65814) Unit!159375)

(assert (=> d!2080446 (= lt!2419866 (choose!49610 lt!2419765 lt!2419762 (t!379480 s!2326)))))

(assert (=> d!2080446 (= (lemmaZipperConcatMatchesSameAsBothZippers!1336 lt!2419765 lt!2419762 (t!379480 s!2326)) lt!2419866)))

(declare-fun b!6637718 () Bool)

(assert (=> b!6637718 (= e!4014371 (matchZipper!2517 lt!2419762 (t!379480 s!2326)))))

(assert (= (and d!2080446 (not res!2720206)) b!6637718))

(assert (=> d!2080446 m!7404342))

(assert (=> d!2080446 m!7404340))

(declare-fun m!7404784 () Bool)

(assert (=> d!2080446 m!7404784))

(assert (=> b!6637718 m!7404324))

(assert (=> b!6637030 d!2080446))

(assert (=> b!6637030 d!2080382))

(declare-fun d!2080448 () Bool)

(declare-fun c!1224463 () Bool)

(assert (=> d!2080448 (= c!1224463 (isEmpty!37994 (t!379480 s!2326)))))

(declare-fun e!4014372 () Bool)

(assert (=> d!2080448 (= (matchZipper!2517 ((_ map or) lt!2419765 lt!2419762) (t!379480 s!2326)) e!4014372)))

(declare-fun b!6637719 () Bool)

(assert (=> b!6637719 (= e!4014372 (nullableZipper!2246 ((_ map or) lt!2419765 lt!2419762)))))

(declare-fun b!6637720 () Bool)

(assert (=> b!6637720 (= e!4014372 (matchZipper!2517 (derivationStepZipper!2471 ((_ map or) lt!2419765 lt!2419762) (head!13453 (t!379480 s!2326))) (tail!12538 (t!379480 s!2326))))))

(assert (= (and d!2080448 c!1224463) b!6637719))

(assert (= (and d!2080448 (not c!1224463)) b!6637720))

(assert (=> d!2080448 m!7404454))

(declare-fun m!7404786 () Bool)

(assert (=> b!6637719 m!7404786))

(assert (=> b!6637720 m!7404458))

(assert (=> b!6637720 m!7404458))

(declare-fun m!7404788 () Bool)

(assert (=> b!6637720 m!7404788))

(assert (=> b!6637720 m!7404462))

(assert (=> b!6637720 m!7404788))

(assert (=> b!6637720 m!7404462))

(declare-fun m!7404790 () Bool)

(assert (=> b!6637720 m!7404790))

(assert (=> b!6637030 d!2080448))

(declare-fun b!6637721 () Bool)

(declare-fun e!4014374 () Bool)

(declare-fun call!582744 () Bool)

(assert (=> b!6637721 (= e!4014374 call!582744)))

(declare-fun d!2080450 () Bool)

(declare-fun res!2720211 () Bool)

(declare-fun e!4014375 () Bool)

(assert (=> d!2080450 (=> res!2720211 e!4014375)))

(assert (=> d!2080450 (= res!2720211 ((_ is ElementMatch!16505) (regTwo!33522 r!7292)))))

(assert (=> d!2080450 (= (validRegex!8241 (regTwo!33522 r!7292)) e!4014375)))

(declare-fun b!6637722 () Bool)

(declare-fun e!4014379 () Bool)

(declare-fun e!4014373 () Bool)

(assert (=> b!6637722 (= e!4014379 e!4014373)))

(declare-fun c!1224465 () Bool)

(assert (=> b!6637722 (= c!1224465 ((_ is Union!16505) (regTwo!33522 r!7292)))))

(declare-fun b!6637723 () Bool)

(assert (=> b!6637723 (= e!4014375 e!4014379)))

(declare-fun c!1224464 () Bool)

(assert (=> b!6637723 (= c!1224464 ((_ is Star!16505) (regTwo!33522 r!7292)))))

(declare-fun b!6637724 () Bool)

(declare-fun e!4014377 () Bool)

(assert (=> b!6637724 (= e!4014377 e!4014374)))

(declare-fun res!2720210 () Bool)

(assert (=> b!6637724 (=> (not res!2720210) (not e!4014374))))

(declare-fun call!582745 () Bool)

(assert (=> b!6637724 (= res!2720210 call!582745)))

(declare-fun b!6637725 () Bool)

(declare-fun e!4014376 () Bool)

(assert (=> b!6637725 (= e!4014379 e!4014376)))

(declare-fun res!2720209 () Bool)

(assert (=> b!6637725 (= res!2720209 (not (nullable!6498 (reg!16834 (regTwo!33522 r!7292)))))))

(assert (=> b!6637725 (=> (not res!2720209) (not e!4014376))))

(declare-fun b!6637726 () Bool)

(declare-fun res!2720207 () Bool)

(declare-fun e!4014378 () Bool)

(assert (=> b!6637726 (=> (not res!2720207) (not e!4014378))))

(assert (=> b!6637726 (= res!2720207 call!582745)))

(assert (=> b!6637726 (= e!4014373 e!4014378)))

(declare-fun b!6637727 () Bool)

(declare-fun res!2720208 () Bool)

(assert (=> b!6637727 (=> res!2720208 e!4014377)))

(assert (=> b!6637727 (= res!2720208 (not ((_ is Concat!25350) (regTwo!33522 r!7292))))))

(assert (=> b!6637727 (= e!4014373 e!4014377)))

(declare-fun b!6637728 () Bool)

(declare-fun call!582746 () Bool)

(assert (=> b!6637728 (= e!4014376 call!582746)))

(declare-fun bm!582739 () Bool)

(assert (=> bm!582739 (= call!582746 (validRegex!8241 (ite c!1224464 (reg!16834 (regTwo!33522 r!7292)) (ite c!1224465 (regOne!33523 (regTwo!33522 r!7292)) (regOne!33522 (regTwo!33522 r!7292))))))))

(declare-fun bm!582740 () Bool)

(assert (=> bm!582740 (= call!582745 call!582746)))

(declare-fun bm!582741 () Bool)

(assert (=> bm!582741 (= call!582744 (validRegex!8241 (ite c!1224465 (regTwo!33523 (regTwo!33522 r!7292)) (regTwo!33522 (regTwo!33522 r!7292)))))))

(declare-fun b!6637729 () Bool)

(assert (=> b!6637729 (= e!4014378 call!582744)))

(assert (= (and d!2080450 (not res!2720211)) b!6637723))

(assert (= (and b!6637723 c!1224464) b!6637725))

(assert (= (and b!6637723 (not c!1224464)) b!6637722))

(assert (= (and b!6637725 res!2720209) b!6637728))

(assert (= (and b!6637722 c!1224465) b!6637726))

(assert (= (and b!6637722 (not c!1224465)) b!6637727))

(assert (= (and b!6637726 res!2720207) b!6637729))

(assert (= (and b!6637727 (not res!2720208)) b!6637724))

(assert (= (and b!6637724 res!2720210) b!6637721))

(assert (= (or b!6637729 b!6637721) bm!582741))

(assert (= (or b!6637726 b!6637724) bm!582740))

(assert (= (or b!6637728 bm!582740) bm!582739))

(declare-fun m!7404792 () Bool)

(assert (=> b!6637725 m!7404792))

(declare-fun m!7404794 () Bool)

(assert (=> bm!582739 m!7404794))

(declare-fun m!7404796 () Bool)

(assert (=> bm!582741 m!7404796))

(assert (=> b!6637018 d!2080450))

(declare-fun b!6637730 () Bool)

(declare-fun res!2720213 () Bool)

(declare-fun e!4014385 () Bool)

(assert (=> b!6637730 (=> res!2720213 e!4014385)))

(assert (=> b!6637730 (= res!2720213 (not (isEmpty!37994 (tail!12538 s!2326))))))

(declare-fun b!6637731 () Bool)

(declare-fun e!4014380 () Bool)

(declare-fun e!4014384 () Bool)

(assert (=> b!6637731 (= e!4014380 e!4014384)))

(declare-fun res!2720215 () Bool)

(assert (=> b!6637731 (=> (not res!2720215) (not e!4014384))))

(declare-fun lt!2419867 () Bool)

(assert (=> b!6637731 (= res!2720215 (not lt!2419867))))

(declare-fun b!6637732 () Bool)

(declare-fun res!2720216 () Bool)

(assert (=> b!6637732 (=> res!2720216 e!4014380)))

(assert (=> b!6637732 (= res!2720216 (not ((_ is ElementMatch!16505) (regOne!33522 r!7292))))))

(declare-fun e!4014383 () Bool)

(assert (=> b!6637732 (= e!4014383 e!4014380)))

(declare-fun bm!582742 () Bool)

(declare-fun call!582747 () Bool)

(assert (=> bm!582742 (= call!582747 (isEmpty!37994 s!2326))))

(declare-fun b!6637733 () Bool)

(declare-fun e!4014381 () Bool)

(assert (=> b!6637733 (= e!4014381 (matchR!8688 (derivativeStep!5185 (regOne!33522 r!7292) (head!13453 s!2326)) (tail!12538 s!2326)))))

(declare-fun b!6637734 () Bool)

(assert (=> b!6637734 (= e!4014384 e!4014385)))

(declare-fun res!2720212 () Bool)

(assert (=> b!6637734 (=> res!2720212 e!4014385)))

(assert (=> b!6637734 (= res!2720212 call!582747)))

(declare-fun b!6637735 () Bool)

(assert (=> b!6637735 (= e!4014381 (nullable!6498 (regOne!33522 r!7292)))))

(declare-fun b!6637736 () Bool)

(declare-fun res!2720217 () Bool)

(assert (=> b!6637736 (=> res!2720217 e!4014380)))

(declare-fun e!4014382 () Bool)

(assert (=> b!6637736 (= res!2720217 e!4014382)))

(declare-fun res!2720218 () Bool)

(assert (=> b!6637736 (=> (not res!2720218) (not e!4014382))))

(assert (=> b!6637736 (= res!2720218 lt!2419867)))

(declare-fun b!6637737 () Bool)

(declare-fun res!2720214 () Bool)

(assert (=> b!6637737 (=> (not res!2720214) (not e!4014382))))

(assert (=> b!6637737 (= res!2720214 (isEmpty!37994 (tail!12538 s!2326)))))

(declare-fun d!2080452 () Bool)

(declare-fun e!4014386 () Bool)

(assert (=> d!2080452 e!4014386))

(declare-fun c!1224467 () Bool)

(assert (=> d!2080452 (= c!1224467 ((_ is EmptyExpr!16505) (regOne!33522 r!7292)))))

(assert (=> d!2080452 (= lt!2419867 e!4014381)))

(declare-fun c!1224466 () Bool)

(assert (=> d!2080452 (= c!1224466 (isEmpty!37994 s!2326))))

(assert (=> d!2080452 (validRegex!8241 (regOne!33522 r!7292))))

(assert (=> d!2080452 (= (matchR!8688 (regOne!33522 r!7292) s!2326) lt!2419867)))

(declare-fun b!6637738 () Bool)

(assert (=> b!6637738 (= e!4014386 e!4014383)))

(declare-fun c!1224468 () Bool)

(assert (=> b!6637738 (= c!1224468 ((_ is EmptyLang!16505) (regOne!33522 r!7292)))))

(declare-fun b!6637739 () Bool)

(assert (=> b!6637739 (= e!4014385 (not (= (head!13453 s!2326) (c!1224274 (regOne!33522 r!7292)))))))

(declare-fun b!6637740 () Bool)

(assert (=> b!6637740 (= e!4014382 (= (head!13453 s!2326) (c!1224274 (regOne!33522 r!7292))))))

(declare-fun b!6637741 () Bool)

(declare-fun res!2720219 () Bool)

(assert (=> b!6637741 (=> (not res!2720219) (not e!4014382))))

(assert (=> b!6637741 (= res!2720219 (not call!582747))))

(declare-fun b!6637742 () Bool)

(assert (=> b!6637742 (= e!4014383 (not lt!2419867))))

(declare-fun b!6637743 () Bool)

(assert (=> b!6637743 (= e!4014386 (= lt!2419867 call!582747))))

(assert (= (and d!2080452 c!1224466) b!6637735))

(assert (= (and d!2080452 (not c!1224466)) b!6637733))

(assert (= (and d!2080452 c!1224467) b!6637743))

(assert (= (and d!2080452 (not c!1224467)) b!6637738))

(assert (= (and b!6637738 c!1224468) b!6637742))

(assert (= (and b!6637738 (not c!1224468)) b!6637732))

(assert (= (and b!6637732 (not res!2720216)) b!6637736))

(assert (= (and b!6637736 res!2720218) b!6637741))

(assert (= (and b!6637741 res!2720219) b!6637737))

(assert (= (and b!6637737 res!2720214) b!6637740))

(assert (= (and b!6637736 (not res!2720217)) b!6637731))

(assert (= (and b!6637731 res!2720215) b!6637734))

(assert (= (and b!6637734 (not res!2720212)) b!6637730))

(assert (= (and b!6637730 (not res!2720213)) b!6637739))

(assert (= (or b!6637743 b!6637734 b!6637741) bm!582742))

(assert (=> b!6637733 m!7404684))

(assert (=> b!6637733 m!7404684))

(declare-fun m!7404798 () Bool)

(assert (=> b!6637733 m!7404798))

(assert (=> b!6637733 m!7404688))

(assert (=> b!6637733 m!7404798))

(assert (=> b!6637733 m!7404688))

(declare-fun m!7404800 () Bool)

(assert (=> b!6637733 m!7404800))

(assert (=> b!6637739 m!7404684))

(assert (=> d!2080452 m!7404674))

(assert (=> d!2080452 m!7404706))

(declare-fun m!7404802 () Bool)

(assert (=> b!6637735 m!7404802))

(assert (=> bm!582742 m!7404674))

(assert (=> b!6637730 m!7404688))

(assert (=> b!6637730 m!7404688))

(assert (=> b!6637730 m!7404694))

(assert (=> b!6637740 m!7404684))

(assert (=> b!6637737 m!7404688))

(assert (=> b!6637737 m!7404688))

(assert (=> b!6637737 m!7404694))

(assert (=> b!6637018 d!2080452))

(declare-fun bs!1705613 () Bool)

(declare-fun b!6637744 () Bool)

(assert (= bs!1705613 (and b!6637744 b!6637505)))

(declare-fun lambda!370964 () Int)

(assert (=> bs!1705613 (not (= lambda!370964 lambda!370950))))

(declare-fun bs!1705614 () Bool)

(assert (= bs!1705614 (and b!6637744 b!6637024)))

(assert (=> bs!1705614 (not (= lambda!370964 lambda!370904))))

(declare-fun bs!1705615 () Bool)

(assert (= bs!1705615 (and b!6637744 d!2080418)))

(assert (=> bs!1705615 (not (= lambda!370964 lambda!370962))))

(declare-fun bs!1705616 () Bool)

(assert (= bs!1705616 (and b!6637744 b!6637493)))

(assert (=> bs!1705616 (= (and (= (reg!16834 (regOne!33522 r!7292)) (reg!16834 r!7292)) (= (regOne!33522 r!7292) r!7292)) (= lambda!370964 lambda!370949))))

(assert (=> bs!1705615 (not (= lambda!370964 lambda!370961))))

(declare-fun bs!1705617 () Bool)

(assert (= bs!1705617 (and b!6637744 d!2080416)))

(assert (=> bs!1705617 (not (= lambda!370964 lambda!370956))))

(assert (=> bs!1705614 (not (= lambda!370964 lambda!370903))))

(assert (=> b!6637744 true))

(assert (=> b!6637744 true))

(declare-fun bs!1705618 () Bool)

(declare-fun b!6637753 () Bool)

(assert (= bs!1705618 (and b!6637753 b!6637505)))

(declare-fun lambda!370965 () Int)

(assert (=> bs!1705618 (= (and (= (regOne!33522 (regOne!33522 r!7292)) (regOne!33522 r!7292)) (= (regTwo!33522 (regOne!33522 r!7292)) (regTwo!33522 r!7292))) (= lambda!370965 lambda!370950))))

(declare-fun bs!1705619 () Bool)

(assert (= bs!1705619 (and b!6637753 b!6637024)))

(assert (=> bs!1705619 (= (and (= (regOne!33522 (regOne!33522 r!7292)) (regOne!33522 r!7292)) (= (regTwo!33522 (regOne!33522 r!7292)) (regTwo!33522 r!7292))) (= lambda!370965 lambda!370904))))

(declare-fun bs!1705620 () Bool)

(assert (= bs!1705620 (and b!6637753 b!6637493)))

(assert (=> bs!1705620 (not (= lambda!370965 lambda!370949))))

(declare-fun bs!1705621 () Bool)

(assert (= bs!1705621 (and b!6637753 d!2080418)))

(assert (=> bs!1705621 (not (= lambda!370965 lambda!370961))))

(declare-fun bs!1705622 () Bool)

(assert (= bs!1705622 (and b!6637753 b!6637744)))

(assert (=> bs!1705622 (not (= lambda!370965 lambda!370964))))

(assert (=> bs!1705621 (= (and (= (regOne!33522 (regOne!33522 r!7292)) (regOne!33522 r!7292)) (= (regTwo!33522 (regOne!33522 r!7292)) (regTwo!33522 r!7292))) (= lambda!370965 lambda!370962))))

(declare-fun bs!1705623 () Bool)

(assert (= bs!1705623 (and b!6637753 d!2080416)))

(assert (=> bs!1705623 (not (= lambda!370965 lambda!370956))))

(assert (=> bs!1705619 (not (= lambda!370965 lambda!370903))))

(assert (=> b!6637753 true))

(assert (=> b!6637753 true))

(declare-fun e!4014389 () Bool)

(declare-fun call!582749 () Bool)

(assert (=> b!6637744 (= e!4014389 call!582749)))

(declare-fun b!6637745 () Bool)

(declare-fun e!4014390 () Bool)

(declare-fun call!582748 () Bool)

(assert (=> b!6637745 (= e!4014390 call!582748)))

(declare-fun b!6637746 () Bool)

(declare-fun e!4014392 () Bool)

(declare-fun e!4014388 () Bool)

(assert (=> b!6637746 (= e!4014392 e!4014388)))

(declare-fun res!2720222 () Bool)

(assert (=> b!6637746 (= res!2720222 (matchRSpec!3606 (regOne!33523 (regOne!33522 r!7292)) s!2326))))

(assert (=> b!6637746 (=> res!2720222 e!4014388)))

(declare-fun bm!582743 () Bool)

(declare-fun c!1224470 () Bool)

(assert (=> bm!582743 (= call!582749 (Exists!3575 (ite c!1224470 lambda!370964 lambda!370965)))))

(declare-fun d!2080454 () Bool)

(declare-fun c!1224469 () Bool)

(assert (=> d!2080454 (= c!1224469 ((_ is EmptyExpr!16505) (regOne!33522 r!7292)))))

(assert (=> d!2080454 (= (matchRSpec!3606 (regOne!33522 r!7292) s!2326) e!4014390)))

(declare-fun b!6637747 () Bool)

(declare-fun e!4014387 () Bool)

(assert (=> b!6637747 (= e!4014387 (= s!2326 (Cons!65690 (c!1224274 (regOne!33522 r!7292)) Nil!65690)))))

(declare-fun b!6637748 () Bool)

(assert (=> b!6637748 (= e!4014388 (matchRSpec!3606 (regTwo!33523 (regOne!33522 r!7292)) s!2326))))

(declare-fun b!6637749 () Bool)

(declare-fun res!2720221 () Bool)

(assert (=> b!6637749 (=> res!2720221 e!4014389)))

(assert (=> b!6637749 (= res!2720221 call!582748)))

(declare-fun e!4014391 () Bool)

(assert (=> b!6637749 (= e!4014391 e!4014389)))

(declare-fun b!6637750 () Bool)

(assert (=> b!6637750 (= e!4014392 e!4014391)))

(assert (=> b!6637750 (= c!1224470 ((_ is Star!16505) (regOne!33522 r!7292)))))

(declare-fun b!6637751 () Bool)

(declare-fun c!1224472 () Bool)

(assert (=> b!6637751 (= c!1224472 ((_ is ElementMatch!16505) (regOne!33522 r!7292)))))

(declare-fun e!4014393 () Bool)

(assert (=> b!6637751 (= e!4014393 e!4014387)))

(declare-fun b!6637752 () Bool)

(declare-fun c!1224471 () Bool)

(assert (=> b!6637752 (= c!1224471 ((_ is Union!16505) (regOne!33522 r!7292)))))

(assert (=> b!6637752 (= e!4014387 e!4014392)))

(assert (=> b!6637753 (= e!4014391 call!582749)))

(declare-fun bm!582744 () Bool)

(assert (=> bm!582744 (= call!582748 (isEmpty!37994 s!2326))))

(declare-fun b!6637754 () Bool)

(assert (=> b!6637754 (= e!4014390 e!4014393)))

(declare-fun res!2720220 () Bool)

(assert (=> b!6637754 (= res!2720220 (not ((_ is EmptyLang!16505) (regOne!33522 r!7292))))))

(assert (=> b!6637754 (=> (not res!2720220) (not e!4014393))))

(assert (= (and d!2080454 c!1224469) b!6637745))

(assert (= (and d!2080454 (not c!1224469)) b!6637754))

(assert (= (and b!6637754 res!2720220) b!6637751))

(assert (= (and b!6637751 c!1224472) b!6637747))

(assert (= (and b!6637751 (not c!1224472)) b!6637752))

(assert (= (and b!6637752 c!1224471) b!6637746))

(assert (= (and b!6637752 (not c!1224471)) b!6637750))

(assert (= (and b!6637746 (not res!2720222)) b!6637748))

(assert (= (and b!6637750 c!1224470) b!6637749))

(assert (= (and b!6637750 (not c!1224470)) b!6637753))

(assert (= (and b!6637749 (not res!2720221)) b!6637744))

(assert (= (or b!6637744 b!6637753) bm!582743))

(assert (= (or b!6637745 b!6637749) bm!582744))

(declare-fun m!7404804 () Bool)

(assert (=> b!6637746 m!7404804))

(declare-fun m!7404806 () Bool)

(assert (=> bm!582743 m!7404806))

(declare-fun m!7404808 () Bool)

(assert (=> b!6637748 m!7404808))

(assert (=> bm!582744 m!7404674))

(assert (=> b!6637018 d!2080454))

(declare-fun d!2080456 () Bool)

(assert (=> d!2080456 (= (matchR!8688 (regOne!33522 r!7292) s!2326) (matchRSpec!3606 (regOne!33522 r!7292) s!2326))))

(declare-fun lt!2419868 () Unit!159375)

(assert (=> d!2080456 (= lt!2419868 (choose!49602 (regOne!33522 r!7292) s!2326))))

(assert (=> d!2080456 (validRegex!8241 (regOne!33522 r!7292))))

(assert (=> d!2080456 (= (mainMatchTheorem!3606 (regOne!33522 r!7292) s!2326) lt!2419868)))

(declare-fun bs!1705624 () Bool)

(assert (= bs!1705624 d!2080456))

(assert (=> bs!1705624 m!7404346))

(assert (=> bs!1705624 m!7404348))

(declare-fun m!7404810 () Bool)

(assert (=> bs!1705624 m!7404810))

(assert (=> bs!1705624 m!7404706))

(assert (=> b!6637018 d!2080456))

(declare-fun b!6637766 () Bool)

(declare-fun e!4014396 () Bool)

(declare-fun tp!1828180 () Bool)

(declare-fun tp!1828181 () Bool)

(assert (=> b!6637766 (= e!4014396 (and tp!1828180 tp!1828181))))

(declare-fun b!6637767 () Bool)

(declare-fun tp!1828182 () Bool)

(assert (=> b!6637767 (= e!4014396 tp!1828182)))

(assert (=> b!6637042 (= tp!1828110 e!4014396)))

(declare-fun b!6637765 () Bool)

(assert (=> b!6637765 (= e!4014396 tp_is_empty!42263)))

(declare-fun b!6637768 () Bool)

(declare-fun tp!1828184 () Bool)

(declare-fun tp!1828183 () Bool)

(assert (=> b!6637768 (= e!4014396 (and tp!1828184 tp!1828183))))

(assert (= (and b!6637042 ((_ is ElementMatch!16505) (reg!16834 r!7292))) b!6637765))

(assert (= (and b!6637042 ((_ is Concat!25350) (reg!16834 r!7292))) b!6637766))

(assert (= (and b!6637042 ((_ is Star!16505) (reg!16834 r!7292))) b!6637767))

(assert (= (and b!6637042 ((_ is Union!16505) (reg!16834 r!7292))) b!6637768))

(declare-fun b!6637770 () Bool)

(declare-fun e!4014397 () Bool)

(declare-fun tp!1828185 () Bool)

(declare-fun tp!1828186 () Bool)

(assert (=> b!6637770 (= e!4014397 (and tp!1828185 tp!1828186))))

(declare-fun b!6637771 () Bool)

(declare-fun tp!1828187 () Bool)

(assert (=> b!6637771 (= e!4014397 tp!1828187)))

(assert (=> b!6637028 (= tp!1828105 e!4014397)))

(declare-fun b!6637769 () Bool)

(assert (=> b!6637769 (= e!4014397 tp_is_empty!42263)))

(declare-fun b!6637772 () Bool)

(declare-fun tp!1828189 () Bool)

(declare-fun tp!1828188 () Bool)

(assert (=> b!6637772 (= e!4014397 (and tp!1828189 tp!1828188))))

(assert (= (and b!6637028 ((_ is ElementMatch!16505) (regOne!33522 r!7292))) b!6637769))

(assert (= (and b!6637028 ((_ is Concat!25350) (regOne!33522 r!7292))) b!6637770))

(assert (= (and b!6637028 ((_ is Star!16505) (regOne!33522 r!7292))) b!6637771))

(assert (= (and b!6637028 ((_ is Union!16505) (regOne!33522 r!7292))) b!6637772))

(declare-fun b!6637774 () Bool)

(declare-fun e!4014398 () Bool)

(declare-fun tp!1828190 () Bool)

(declare-fun tp!1828191 () Bool)

(assert (=> b!6637774 (= e!4014398 (and tp!1828190 tp!1828191))))

(declare-fun b!6637775 () Bool)

(declare-fun tp!1828192 () Bool)

(assert (=> b!6637775 (= e!4014398 tp!1828192)))

(assert (=> b!6637028 (= tp!1828103 e!4014398)))

(declare-fun b!6637773 () Bool)

(assert (=> b!6637773 (= e!4014398 tp_is_empty!42263)))

(declare-fun b!6637776 () Bool)

(declare-fun tp!1828194 () Bool)

(declare-fun tp!1828193 () Bool)

(assert (=> b!6637776 (= e!4014398 (and tp!1828194 tp!1828193))))

(assert (= (and b!6637028 ((_ is ElementMatch!16505) (regTwo!33522 r!7292))) b!6637773))

(assert (= (and b!6637028 ((_ is Concat!25350) (regTwo!33522 r!7292))) b!6637774))

(assert (= (and b!6637028 ((_ is Star!16505) (regTwo!33522 r!7292))) b!6637775))

(assert (= (and b!6637028 ((_ is Union!16505) (regTwo!33522 r!7292))) b!6637776))

(declare-fun b!6637781 () Bool)

(declare-fun e!4014401 () Bool)

(declare-fun tp!1828199 () Bool)

(declare-fun tp!1828200 () Bool)

(assert (=> b!6637781 (= e!4014401 (and tp!1828199 tp!1828200))))

(assert (=> b!6637027 (= tp!1828104 e!4014401)))

(assert (= (and b!6637027 ((_ is Cons!65691) (exprs!6389 setElem!45382))) b!6637781))

(declare-fun b!6637783 () Bool)

(declare-fun e!4014402 () Bool)

(declare-fun tp!1828201 () Bool)

(declare-fun tp!1828202 () Bool)

(assert (=> b!6637783 (= e!4014402 (and tp!1828201 tp!1828202))))

(declare-fun b!6637784 () Bool)

(declare-fun tp!1828203 () Bool)

(assert (=> b!6637784 (= e!4014402 tp!1828203)))

(assert (=> b!6637037 (= tp!1828111 e!4014402)))

(declare-fun b!6637782 () Bool)

(assert (=> b!6637782 (= e!4014402 tp_is_empty!42263)))

(declare-fun b!6637785 () Bool)

(declare-fun tp!1828205 () Bool)

(declare-fun tp!1828204 () Bool)

(assert (=> b!6637785 (= e!4014402 (and tp!1828205 tp!1828204))))

(assert (= (and b!6637037 ((_ is ElementMatch!16505) (regOne!33523 r!7292))) b!6637782))

(assert (= (and b!6637037 ((_ is Concat!25350) (regOne!33523 r!7292))) b!6637783))

(assert (= (and b!6637037 ((_ is Star!16505) (regOne!33523 r!7292))) b!6637784))

(assert (= (and b!6637037 ((_ is Union!16505) (regOne!33523 r!7292))) b!6637785))

(declare-fun b!6637787 () Bool)

(declare-fun e!4014403 () Bool)

(declare-fun tp!1828206 () Bool)

(declare-fun tp!1828207 () Bool)

(assert (=> b!6637787 (= e!4014403 (and tp!1828206 tp!1828207))))

(declare-fun b!6637788 () Bool)

(declare-fun tp!1828208 () Bool)

(assert (=> b!6637788 (= e!4014403 tp!1828208)))

(assert (=> b!6637037 (= tp!1828109 e!4014403)))

(declare-fun b!6637786 () Bool)

(assert (=> b!6637786 (= e!4014403 tp_is_empty!42263)))

(declare-fun b!6637789 () Bool)

(declare-fun tp!1828210 () Bool)

(declare-fun tp!1828209 () Bool)

(assert (=> b!6637789 (= e!4014403 (and tp!1828210 tp!1828209))))

(assert (= (and b!6637037 ((_ is ElementMatch!16505) (regTwo!33523 r!7292))) b!6637786))

(assert (= (and b!6637037 ((_ is Concat!25350) (regTwo!33523 r!7292))) b!6637787))

(assert (= (and b!6637037 ((_ is Star!16505) (regTwo!33523 r!7292))) b!6637788))

(assert (= (and b!6637037 ((_ is Union!16505) (regTwo!33523 r!7292))) b!6637789))

(declare-fun b!6637790 () Bool)

(declare-fun e!4014404 () Bool)

(declare-fun tp!1828211 () Bool)

(declare-fun tp!1828212 () Bool)

(assert (=> b!6637790 (= e!4014404 (and tp!1828211 tp!1828212))))

(assert (=> b!6637021 (= tp!1828108 e!4014404)))

(assert (= (and b!6637021 ((_ is Cons!65691) (exprs!6389 (h!72140 zl!343)))) b!6637790))

(declare-fun b!6637798 () Bool)

(declare-fun e!4014410 () Bool)

(declare-fun tp!1828217 () Bool)

(assert (=> b!6637798 (= e!4014410 tp!1828217)))

(declare-fun tp!1828218 () Bool)

(declare-fun b!6637797 () Bool)

(declare-fun e!4014409 () Bool)

(assert (=> b!6637797 (= e!4014409 (and (inv!84509 (h!72140 (t!379482 zl!343))) e!4014410 tp!1828218))))

(assert (=> b!6637039 (= tp!1828102 e!4014409)))

(assert (= b!6637797 b!6637798))

(assert (= (and b!6637039 ((_ is Cons!65692) (t!379482 zl!343))) b!6637797))

(declare-fun m!7404812 () Bool)

(assert (=> b!6637797 m!7404812))

(declare-fun condSetEmpty!45388 () Bool)

(assert (=> setNonEmpty!45382 (= condSetEmpty!45388 (= setRest!45382 ((as const (Array Context!11778 Bool)) false)))))

(declare-fun setRes!45388 () Bool)

(assert (=> setNonEmpty!45382 (= tp!1828107 setRes!45388)))

(declare-fun setIsEmpty!45388 () Bool)

(assert (=> setIsEmpty!45388 setRes!45388))

(declare-fun tp!1828223 () Bool)

(declare-fun setElem!45388 () Context!11778)

(declare-fun e!4014413 () Bool)

(declare-fun setNonEmpty!45388 () Bool)

(assert (=> setNonEmpty!45388 (= setRes!45388 (and tp!1828223 (inv!84509 setElem!45388) e!4014413))))

(declare-fun setRest!45388 () (InoxSet Context!11778))

(assert (=> setNonEmpty!45388 (= setRest!45382 ((_ map or) (store ((as const (Array Context!11778 Bool)) false) setElem!45388 true) setRest!45388))))

(declare-fun b!6637803 () Bool)

(declare-fun tp!1828224 () Bool)

(assert (=> b!6637803 (= e!4014413 tp!1828224)))

(assert (= (and setNonEmpty!45382 condSetEmpty!45388) setIsEmpty!45388))

(assert (= (and setNonEmpty!45382 (not condSetEmpty!45388)) setNonEmpty!45388))

(assert (= setNonEmpty!45388 b!6637803))

(declare-fun m!7404814 () Bool)

(assert (=> setNonEmpty!45388 m!7404814))

(declare-fun b!6637808 () Bool)

(declare-fun e!4014416 () Bool)

(declare-fun tp!1828227 () Bool)

(assert (=> b!6637808 (= e!4014416 (and tp_is_empty!42263 tp!1828227))))

(assert (=> b!6637043 (= tp!1828106 e!4014416)))

(assert (= (and b!6637043 ((_ is Cons!65690) (t!379480 s!2326))) b!6637808))

(declare-fun b_lambda!250855 () Bool)

(assert (= b_lambda!250853 (or b!6637019 b_lambda!250855)))

(declare-fun bs!1705625 () Bool)

(declare-fun d!2080458 () Bool)

(assert (= bs!1705625 (and d!2080458 b!6637019)))

(assert (=> bs!1705625 (= (dynLambda!26168 lambda!370905 (h!72140 zl!343)) (derivationStepZipperUp!1679 (h!72140 zl!343) (h!72138 s!2326)))))

(assert (=> bs!1705625 m!7404364))

(assert (=> d!2080438 d!2080458))

(check-sat (not bm!582715) (not b!6637740) (not d!2080412) (not b!6637609) (not d!2080430) (not b!6637781) (not d!2080404) (not d!2080382) (not bm!582720) (not d!2080446) (not b!6637669) (not d!2080424) (not d!2080384) (not bm!582711) (not b!6637640) (not bm!582741) (not b!6637235) (not b_lambda!250855) (not d!2080448) (not b!6637797) (not d!2080416) (not b!6637788) (not b!6637783) (not b!6637730) (not d!2080408) (not b!6637612) (not b!6637768) (not b!6637611) (not b!6637775) (not b!6637774) (not d!2080452) (not b!6637252) (not b!6637719) (not b!6637679) (not b!6637739) (not d!2080340) (not b!6637720) (not b!6637803) (not bm!582704) (not bm!582743) (not b!6637402) (not b!6637140) (not d!2080326) (not b!6637735) (not d!2080410) (not bm!582706) (not b!6637789) (not b!6637328) (not d!2080420) (not b!6637657) (not b!6637772) (not b!6637639) (not b!6637790) (not bm!582712) (not b!6637326) (not b!6637668) (not b!6637787) (not d!2080456) (not b!6637737) (not bm!582735) (not b!6637638) (not d!2080348) (not b!6637497) (not d!2080432) (not b!6637771) (not b!6637733) (not b!6637748) (not b!6637641) (not b!6637776) (not bm!582738) (not b!6637718) (not b!6637808) (not b!6637229) (not b!6637706) (not b!6637767) (not b!6637607) (not b!6637227) (not b!6637231) (not b!6637141) (not b!6637798) (not b!6637784) (not b!6637746) (not b!6637637) (not b!6637329) (not b!6637642) (not d!2080344) (not setNonEmpty!45388) (not b!6637678) (not b!6637605) (not bm!582736) (not d!2080360) (not d!2080370) (not d!2080438) (not b!6637324) (not d!2080444) (not b!6637725) (not b!6637770) (not bs!1705625) (not d!2080418) (not b!6637403) (not b!6637330) (not b!6637233) (not b!6637673) (not d!2080414) (not d!2080428) (not b!6637495) (not b!6637785) (not b!6637322) (not b!6637397) (not b!6637228) (not b!6637602) (not bm!582744) (not b!6637323) (not b!6637674) (not b!6637766) tp_is_empty!42263 (not bm!582719) (not bm!582718) (not b!6637236) (not bm!582742) (not bm!582739))
(check-sat)
