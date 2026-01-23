; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!676908 () Bool)

(assert start!676908)

(declare-fun b!7019991 () Bool)

(assert (=> b!7019991 true))

(declare-fun b!7019988 () Bool)

(assert (=> b!7019988 true))

(declare-fun b!7019983 () Bool)

(assert (=> b!7019983 true))

(declare-fun b!7019980 () Bool)

(declare-fun res!2865390 () Bool)

(declare-fun e!4219844 () Bool)

(assert (=> b!7019980 (=> (not res!2865390) (not e!4219844))))

(declare-datatypes ((C!35030 0))(
  ( (C!35031 (val!27217 Int)) )
))
(declare-datatypes ((List!67685 0))(
  ( (Nil!67561) (Cons!67561 (h!74009 C!35030) (t!381440 List!67685)) )
))
(declare-fun s!7408 () List!67685)

(assert (=> b!7019980 (= res!2865390 (is-Cons!67561 s!7408))))

(declare-fun b!7019981 () Bool)

(declare-fun e!4219839 () Bool)

(declare-fun tp_is_empty!43985 () Bool)

(declare-fun tp!1933834 () Bool)

(assert (=> b!7019981 (= e!4219839 (and tp_is_empty!43985 tp!1933834))))

(declare-fun b!7019982 () Bool)

(declare-fun e!4219842 () Bool)

(declare-fun tp!1933835 () Bool)

(assert (=> b!7019982 (= e!4219842 tp!1933835)))

(declare-fun e!4219845 () Bool)

(declare-fun e!4219838 () Bool)

(assert (=> b!7019983 (= e!4219845 e!4219838)))

(declare-fun res!2865386 () Bool)

(assert (=> b!7019983 (=> res!2865386 e!4219838)))

(declare-datatypes ((Regex!17380 0))(
  ( (ElementMatch!17380 (c!1304567 C!35030)) (Concat!26225 (regOne!35272 Regex!17380) (regTwo!35272 Regex!17380)) (EmptyExpr!17380) (Star!17380 (reg!17709 Regex!17380)) (EmptyLang!17380) (Union!17380 (regOne!35273 Regex!17380) (regTwo!35273 Regex!17380)) )
))
(declare-datatypes ((List!67686 0))(
  ( (Nil!67562) (Cons!67562 (h!74010 Regex!17380) (t!381441 List!67686)) )
))
(declare-datatypes ((Context!12752 0))(
  ( (Context!12753 (exprs!6876 List!67686)) )
))
(declare-fun lt!2511161 () (Set Context!12752))

(declare-fun lt!2511151 () (Set Context!12752))

(declare-fun derivationStepZipper!2860 ((Set Context!12752) C!35030) (Set Context!12752))

(assert (=> b!7019983 (= res!2865386 (not (= (derivationStepZipper!2860 lt!2511161 (h!74009 s!7408)) lt!2511151)))))

(declare-fun lt!2511164 () Context!12752)

(declare-fun lambda!411071 () Int)

(declare-fun flatMap!2366 ((Set Context!12752) Int) (Set Context!12752))

(declare-fun derivationStepZipperUp!2030 (Context!12752 C!35030) (Set Context!12752))

(assert (=> b!7019983 (= (flatMap!2366 lt!2511161 lambda!411071) (derivationStepZipperUp!2030 lt!2511164 (h!74009 s!7408)))))

(declare-datatypes ((Unit!161442 0))(
  ( (Unit!161443) )
))
(declare-fun lt!2511149 () Unit!161442)

(declare-fun lemmaFlatMapOnSingletonSet!1881 ((Set Context!12752) Context!12752 Int) Unit!161442)

(assert (=> b!7019983 (= lt!2511149 (lemmaFlatMapOnSingletonSet!1881 lt!2511161 lt!2511164 lambda!411071))))

(assert (=> b!7019983 (= lt!2511151 (derivationStepZipperUp!2030 lt!2511164 (h!74009 s!7408)))))

(declare-fun lt!2511162 () Unit!161442)

(declare-fun lt!2511155 () Context!12752)

(declare-fun ct2!306 () Context!12752)

(declare-fun lambda!411070 () Int)

(declare-fun lemmaConcatPreservesForall!716 (List!67686 List!67686 Int) Unit!161442)

(assert (=> b!7019983 (= lt!2511162 (lemmaConcatPreservesForall!716 (exprs!6876 lt!2511155) (exprs!6876 ct2!306) lambda!411070))))

(declare-fun b!7019984 () Bool)

(declare-fun e!4219847 () Bool)

(declare-fun e!4219841 () Bool)

(assert (=> b!7019984 (= e!4219847 e!4219841)))

(declare-fun res!2865382 () Bool)

(assert (=> b!7019984 (=> res!2865382 e!4219841)))

(declare-fun lt!2511158 () (Set Context!12752))

(declare-fun matchZipper!2920 ((Set Context!12752) List!67685) Bool)

(assert (=> b!7019984 (= res!2865382 (not (matchZipper!2920 lt!2511158 s!7408)))))

(assert (=> b!7019984 (= lt!2511158 (set.insert ct2!306 (as set.empty (Set Context!12752))))))

(declare-fun res!2865383 () Bool)

(assert (=> start!676908 (=> (not res!2865383) (not e!4219844))))

(declare-fun lt!2511156 () (Set Context!12752))

(assert (=> start!676908 (= res!2865383 (matchZipper!2920 lt!2511156 s!7408))))

(declare-fun z1!570 () (Set Context!12752))

(declare-fun appendTo!501 ((Set Context!12752) Context!12752) (Set Context!12752))

(assert (=> start!676908 (= lt!2511156 (appendTo!501 z1!570 ct2!306))))

(assert (=> start!676908 e!4219844))

(declare-fun condSetEmpty!48657 () Bool)

(assert (=> start!676908 (= condSetEmpty!48657 (= z1!570 (as set.empty (Set Context!12752))))))

(declare-fun setRes!48657 () Bool)

(assert (=> start!676908 setRes!48657))

(declare-fun e!4219840 () Bool)

(declare-fun inv!86310 (Context!12752) Bool)

(assert (=> start!676908 (and (inv!86310 ct2!306) e!4219840)))

(assert (=> start!676908 e!4219839))

(declare-fun b!7019985 () Bool)

(declare-fun e!4219846 () Bool)

(declare-fun ++!15418 (List!67685 List!67685) List!67685)

(assert (=> b!7019985 (= e!4219846 (= (++!15418 Nil!67561 s!7408) s!7408))))

(declare-fun lt!2511167 () (Set Context!12752))

(declare-datatypes ((tuple2!68026 0))(
  ( (tuple2!68027 (_1!37316 List!67685) (_2!37316 List!67685)) )
))
(declare-datatypes ((Option!16845 0))(
  ( (None!16844) (Some!16844 (v!53122 tuple2!68026)) )
))
(declare-fun isDefined!13546 (Option!16845) Bool)

(declare-fun findConcatSeparationZippers!361 ((Set Context!12752) (Set Context!12752) List!67685 List!67685 List!67685) Option!16845)

(assert (=> b!7019985 (isDefined!13546 (findConcatSeparationZippers!361 lt!2511167 lt!2511158 Nil!67561 s!7408 s!7408))))

(declare-fun lt!2511166 () Unit!161442)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!33 ((Set Context!12752) (Set Context!12752) List!67685 List!67685 List!67685 List!67685 List!67685) Unit!161442)

(assert (=> b!7019985 (= lt!2511166 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!33 lt!2511167 lt!2511158 Nil!67561 s!7408 s!7408 Nil!67561 s!7408))))

(declare-fun b!7019986 () Bool)

(declare-fun res!2865387 () Bool)

(assert (=> b!7019986 (=> res!2865387 e!4219838)))

(assert (=> b!7019986 (= res!2865387 (is-Cons!67562 (exprs!6876 lt!2511155)))))

(declare-fun setIsEmpty!48657 () Bool)

(assert (=> setIsEmpty!48657 setRes!48657))

(declare-fun b!7019987 () Bool)

(assert (=> b!7019987 (= e!4219841 e!4219846)))

(declare-fun res!2865392 () Bool)

(assert (=> b!7019987 (=> res!2865392 e!4219846)))

(declare-fun lt!2511153 () Bool)

(assert (=> b!7019987 (= res!2865392 (not lt!2511153))))

(assert (=> b!7019987 (= lt!2511153 true)))

(assert (=> b!7019987 (= lt!2511153 (matchZipper!2920 lt!2511167 Nil!67561))))

(declare-fun lt!2511160 () Unit!161442)

(declare-fun lemmaZipperOfEmptyContextMatchesEmptyString!11 ((Set Context!12752) List!67685) Unit!161442)

(assert (=> b!7019987 (= lt!2511160 (lemmaZipperOfEmptyContextMatchesEmptyString!11 lt!2511167 Nil!67561))))

(assert (=> b!7019987 (= lt!2511167 (set.insert lt!2511155 (as set.empty (Set Context!12752))))))

(declare-fun e!4219837 () Bool)

(declare-fun e!4219843 () Bool)

(assert (=> b!7019988 (= e!4219837 e!4219843)))

(declare-fun res!2865389 () Bool)

(assert (=> b!7019988 (=> res!2865389 e!4219843)))

(declare-fun lt!2511163 () Context!12752)

(assert (=> b!7019988 (= res!2865389 (or (not (= lt!2511164 lt!2511163)) (not (set.member lt!2511155 z1!570))))))

(declare-fun ++!15419 (List!67686 List!67686) List!67686)

(assert (=> b!7019988 (= lt!2511164 (Context!12753 (++!15419 (exprs!6876 lt!2511155) (exprs!6876 ct2!306))))))

(declare-fun lt!2511157 () Unit!161442)

(assert (=> b!7019988 (= lt!2511157 (lemmaConcatPreservesForall!716 (exprs!6876 lt!2511155) (exprs!6876 ct2!306) lambda!411070))))

(declare-fun lambda!411069 () Int)

(declare-fun mapPost2!235 ((Set Context!12752) Int Context!12752) Context!12752)

(assert (=> b!7019988 (= lt!2511155 (mapPost2!235 z1!570 lambda!411069 lt!2511163))))

(declare-fun b!7019989 () Bool)

(assert (=> b!7019989 (= e!4219838 e!4219847)))

(declare-fun res!2865385 () Bool)

(assert (=> b!7019989 (=> res!2865385 e!4219847)))

(assert (=> b!7019989 (= res!2865385 (not (= lt!2511164 ct2!306)))))

(declare-fun lt!2511152 () Unit!161442)

(assert (=> b!7019989 (= lt!2511152 (lemmaConcatPreservesForall!716 (exprs!6876 lt!2511155) (exprs!6876 ct2!306) lambda!411070))))

(declare-fun b!7019990 () Bool)

(declare-fun res!2865388 () Bool)

(assert (=> b!7019990 (=> res!2865388 e!4219837)))

(assert (=> b!7019990 (= res!2865388 (not (set.member lt!2511163 lt!2511156)))))

(assert (=> b!7019991 (= e!4219844 (not e!4219837))))

(declare-fun res!2865391 () Bool)

(assert (=> b!7019991 (=> res!2865391 e!4219837)))

(declare-fun lt!2511159 () (Set Context!12752))

(assert (=> b!7019991 (= res!2865391 (not (matchZipper!2920 lt!2511159 s!7408)))))

(assert (=> b!7019991 (= lt!2511159 (set.insert lt!2511163 (as set.empty (Set Context!12752))))))

(declare-fun lambda!411068 () Int)

(declare-fun getWitness!1348 ((Set Context!12752) Int) Context!12752)

(assert (=> b!7019991 (= lt!2511163 (getWitness!1348 lt!2511156 lambda!411068))))

(declare-datatypes ((List!67687 0))(
  ( (Nil!67563) (Cons!67563 (h!74011 Context!12752) (t!381442 List!67687)) )
))
(declare-fun lt!2511154 () List!67687)

(declare-fun exists!3259 (List!67687 Int) Bool)

(assert (=> b!7019991 (exists!3259 lt!2511154 lambda!411068)))

(declare-fun lt!2511165 () Unit!161442)

(declare-fun lemmaZipperMatchesExistsMatchingContext!349 (List!67687 List!67685) Unit!161442)

(assert (=> b!7019991 (= lt!2511165 (lemmaZipperMatchesExistsMatchingContext!349 lt!2511154 s!7408))))

(declare-fun toList!10740 ((Set Context!12752)) List!67687)

(assert (=> b!7019991 (= lt!2511154 (toList!10740 lt!2511156))))

(declare-fun b!7019992 () Bool)

(declare-fun tp!1933837 () Bool)

(assert (=> b!7019992 (= e!4219840 tp!1933837)))

(declare-fun setElem!48657 () Context!12752)

(declare-fun tp!1933836 () Bool)

(declare-fun setNonEmpty!48657 () Bool)

(assert (=> setNonEmpty!48657 (= setRes!48657 (and tp!1933836 (inv!86310 setElem!48657) e!4219842))))

(declare-fun setRest!48657 () (Set Context!12752))

(assert (=> setNonEmpty!48657 (= z1!570 (set.union (set.insert setElem!48657 (as set.empty (Set Context!12752))) setRest!48657))))

(declare-fun b!7019993 () Bool)

(assert (=> b!7019993 (= e!4219843 e!4219845)))

(declare-fun res!2865384 () Bool)

(assert (=> b!7019993 (=> res!2865384 e!4219845)))

(assert (=> b!7019993 (= res!2865384 (not (= lt!2511161 lt!2511159)))))

(assert (=> b!7019993 (= lt!2511161 (set.insert lt!2511164 (as set.empty (Set Context!12752))))))

(declare-fun lt!2511150 () Unit!161442)

(assert (=> b!7019993 (= lt!2511150 (lemmaConcatPreservesForall!716 (exprs!6876 lt!2511155) (exprs!6876 ct2!306) lambda!411070))))

(assert (= (and start!676908 res!2865383) b!7019980))

(assert (= (and b!7019980 res!2865390) b!7019991))

(assert (= (and b!7019991 (not res!2865391)) b!7019990))

(assert (= (and b!7019990 (not res!2865388)) b!7019988))

(assert (= (and b!7019988 (not res!2865389)) b!7019993))

(assert (= (and b!7019993 (not res!2865384)) b!7019983))

(assert (= (and b!7019983 (not res!2865386)) b!7019986))

(assert (= (and b!7019986 (not res!2865387)) b!7019989))

(assert (= (and b!7019989 (not res!2865385)) b!7019984))

(assert (= (and b!7019984 (not res!2865382)) b!7019987))

(assert (= (and b!7019987 (not res!2865392)) b!7019985))

(assert (= (and start!676908 condSetEmpty!48657) setIsEmpty!48657))

(assert (= (and start!676908 (not condSetEmpty!48657)) setNonEmpty!48657))

(assert (= setNonEmpty!48657 b!7019982))

(assert (= start!676908 b!7019992))

(assert (= (and start!676908 (is-Cons!67561 s!7408)) b!7019981))

(declare-fun m!7721348 () Bool)

(assert (=> b!7019991 m!7721348))

(declare-fun m!7721350 () Bool)

(assert (=> b!7019991 m!7721350))

(declare-fun m!7721352 () Bool)

(assert (=> b!7019991 m!7721352))

(declare-fun m!7721354 () Bool)

(assert (=> b!7019991 m!7721354))

(declare-fun m!7721356 () Bool)

(assert (=> b!7019991 m!7721356))

(declare-fun m!7721358 () Bool)

(assert (=> b!7019991 m!7721358))

(declare-fun m!7721360 () Bool)

(assert (=> b!7019987 m!7721360))

(declare-fun m!7721362 () Bool)

(assert (=> b!7019987 m!7721362))

(declare-fun m!7721364 () Bool)

(assert (=> b!7019987 m!7721364))

(declare-fun m!7721366 () Bool)

(assert (=> b!7019988 m!7721366))

(declare-fun m!7721368 () Bool)

(assert (=> b!7019988 m!7721368))

(declare-fun m!7721370 () Bool)

(assert (=> b!7019988 m!7721370))

(declare-fun m!7721372 () Bool)

(assert (=> b!7019988 m!7721372))

(declare-fun m!7721374 () Bool)

(assert (=> start!676908 m!7721374))

(declare-fun m!7721376 () Bool)

(assert (=> start!676908 m!7721376))

(declare-fun m!7721378 () Bool)

(assert (=> start!676908 m!7721378))

(declare-fun m!7721380 () Bool)

(assert (=> b!7019984 m!7721380))

(declare-fun m!7721382 () Bool)

(assert (=> b!7019984 m!7721382))

(declare-fun m!7721384 () Bool)

(assert (=> b!7019990 m!7721384))

(declare-fun m!7721386 () Bool)

(assert (=> b!7019985 m!7721386))

(declare-fun m!7721388 () Bool)

(assert (=> b!7019985 m!7721388))

(assert (=> b!7019985 m!7721388))

(declare-fun m!7721390 () Bool)

(assert (=> b!7019985 m!7721390))

(declare-fun m!7721392 () Bool)

(assert (=> b!7019985 m!7721392))

(declare-fun m!7721394 () Bool)

(assert (=> b!7019993 m!7721394))

(assert (=> b!7019993 m!7721370))

(assert (=> b!7019989 m!7721370))

(declare-fun m!7721396 () Bool)

(assert (=> setNonEmpty!48657 m!7721396))

(declare-fun m!7721398 () Bool)

(assert (=> b!7019983 m!7721398))

(assert (=> b!7019983 m!7721370))

(declare-fun m!7721400 () Bool)

(assert (=> b!7019983 m!7721400))

(declare-fun m!7721402 () Bool)

(assert (=> b!7019983 m!7721402))

(declare-fun m!7721404 () Bool)

(assert (=> b!7019983 m!7721404))

(push 1)

(assert (not start!676908))

(assert (not b!7019984))

(assert (not b!7019993))

(assert tp_is_empty!43985)

(assert (not b!7019992))

(assert (not b!7019982))

(assert (not setNonEmpty!48657))

(assert (not b!7019981))

(assert (not b!7019988))

(assert (not b!7019991))

(assert (not b!7019989))

(assert (not b!7019983))

(assert (not b!7019985))

(assert (not b!7019987))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1867395 () Bool)

(declare-fun d!2188200 () Bool)

(assert (= bs!1867395 (and d!2188200 b!7019983)))

(declare-fun lambda!411096 () Int)

(assert (=> bs!1867395 (= lambda!411096 lambda!411071)))

(assert (=> d!2188200 true))

(assert (=> d!2188200 (= (derivationStepZipper!2860 lt!2511161 (h!74009 s!7408)) (flatMap!2366 lt!2511161 lambda!411096))))

(declare-fun bs!1867396 () Bool)

(assert (= bs!1867396 d!2188200))

(declare-fun m!7721464 () Bool)

(assert (=> bs!1867396 m!7721464))

(assert (=> b!7019983 d!2188200))

(declare-fun d!2188202 () Bool)

(declare-fun forall!16291 (List!67686 Int) Bool)

(assert (=> d!2188202 (forall!16291 (++!15419 (exprs!6876 lt!2511155) (exprs!6876 ct2!306)) lambda!411070)))

(declare-fun lt!2511229 () Unit!161442)

(declare-fun choose!52929 (List!67686 List!67686 Int) Unit!161442)

(assert (=> d!2188202 (= lt!2511229 (choose!52929 (exprs!6876 lt!2511155) (exprs!6876 ct2!306) lambda!411070))))

(assert (=> d!2188202 (forall!16291 (exprs!6876 lt!2511155) lambda!411070)))

(assert (=> d!2188202 (= (lemmaConcatPreservesForall!716 (exprs!6876 lt!2511155) (exprs!6876 ct2!306) lambda!411070) lt!2511229)))

(declare-fun bs!1867397 () Bool)

(assert (= bs!1867397 d!2188202))

(assert (=> bs!1867397 m!7721368))

(assert (=> bs!1867397 m!7721368))

(declare-fun m!7721466 () Bool)

(assert (=> bs!1867397 m!7721466))

(declare-fun m!7721468 () Bool)

(assert (=> bs!1867397 m!7721468))

(declare-fun m!7721470 () Bool)

(assert (=> bs!1867397 m!7721470))

(assert (=> b!7019983 d!2188202))

(declare-fun b!7020060 () Bool)

(declare-fun e!4219889 () Bool)

(declare-fun nullable!7135 (Regex!17380) Bool)

(assert (=> b!7020060 (= e!4219889 (nullable!7135 (h!74010 (exprs!6876 lt!2511164))))))

(declare-fun b!7020061 () Bool)

(declare-fun e!4219888 () (Set Context!12752))

(declare-fun call!637613 () (Set Context!12752))

(assert (=> b!7020061 (= e!4219888 call!637613)))

(declare-fun b!7020062 () Bool)

(declare-fun e!4219887 () (Set Context!12752))

(assert (=> b!7020062 (= e!4219887 e!4219888)))

(declare-fun c!1304584 () Bool)

(assert (=> b!7020062 (= c!1304584 (is-Cons!67562 (exprs!6876 lt!2511164)))))

(declare-fun d!2188204 () Bool)

(declare-fun c!1304583 () Bool)

(assert (=> d!2188204 (= c!1304583 e!4219889)))

(declare-fun res!2865429 () Bool)

(assert (=> d!2188204 (=> (not res!2865429) (not e!4219889))))

(assert (=> d!2188204 (= res!2865429 (is-Cons!67562 (exprs!6876 lt!2511164)))))

(assert (=> d!2188204 (= (derivationStepZipperUp!2030 lt!2511164 (h!74009 s!7408)) e!4219887)))

(declare-fun b!7020063 () Bool)

(assert (=> b!7020063 (= e!4219887 (set.union call!637613 (derivationStepZipperUp!2030 (Context!12753 (t!381441 (exprs!6876 lt!2511164))) (h!74009 s!7408))))))

(declare-fun bm!637608 () Bool)

(declare-fun derivationStepZipperDown!2093 (Regex!17380 Context!12752 C!35030) (Set Context!12752))

(assert (=> bm!637608 (= call!637613 (derivationStepZipperDown!2093 (h!74010 (exprs!6876 lt!2511164)) (Context!12753 (t!381441 (exprs!6876 lt!2511164))) (h!74009 s!7408)))))

(declare-fun b!7020064 () Bool)

(assert (=> b!7020064 (= e!4219888 (as set.empty (Set Context!12752)))))

(assert (= (and d!2188204 res!2865429) b!7020060))

(assert (= (and d!2188204 c!1304583) b!7020063))

(assert (= (and d!2188204 (not c!1304583)) b!7020062))

(assert (= (and b!7020062 c!1304584) b!7020061))

(assert (= (and b!7020062 (not c!1304584)) b!7020064))

(assert (= (or b!7020063 b!7020061) bm!637608))

(declare-fun m!7721472 () Bool)

(assert (=> b!7020060 m!7721472))

(declare-fun m!7721474 () Bool)

(assert (=> b!7020063 m!7721474))

(declare-fun m!7721476 () Bool)

(assert (=> bm!637608 m!7721476))

(assert (=> b!7019983 d!2188204))

(declare-fun d!2188206 () Bool)

(declare-fun dynLambda!27218 (Int Context!12752) (Set Context!12752))

(assert (=> d!2188206 (= (flatMap!2366 lt!2511161 lambda!411071) (dynLambda!27218 lambda!411071 lt!2511164))))

(declare-fun lt!2511232 () Unit!161442)

(declare-fun choose!52930 ((Set Context!12752) Context!12752 Int) Unit!161442)

(assert (=> d!2188206 (= lt!2511232 (choose!52930 lt!2511161 lt!2511164 lambda!411071))))

(assert (=> d!2188206 (= lt!2511161 (set.insert lt!2511164 (as set.empty (Set Context!12752))))))

(assert (=> d!2188206 (= (lemmaFlatMapOnSingletonSet!1881 lt!2511161 lt!2511164 lambda!411071) lt!2511232)))

(declare-fun b_lambda!265019 () Bool)

(assert (=> (not b_lambda!265019) (not d!2188206)))

(declare-fun bs!1867398 () Bool)

(assert (= bs!1867398 d!2188206))

(assert (=> bs!1867398 m!7721400))

(declare-fun m!7721478 () Bool)

(assert (=> bs!1867398 m!7721478))

(declare-fun m!7721480 () Bool)

(assert (=> bs!1867398 m!7721480))

(assert (=> bs!1867398 m!7721394))

(assert (=> b!7019983 d!2188206))

(declare-fun d!2188208 () Bool)

(declare-fun choose!52931 ((Set Context!12752) Int) (Set Context!12752))

(assert (=> d!2188208 (= (flatMap!2366 lt!2511161 lambda!411071) (choose!52931 lt!2511161 lambda!411071))))

(declare-fun bs!1867399 () Bool)

(assert (= bs!1867399 d!2188208))

(declare-fun m!7721482 () Bool)

(assert (=> bs!1867399 m!7721482))

(assert (=> b!7019983 d!2188208))

(declare-fun d!2188210 () Bool)

(declare-fun c!1304587 () Bool)

(declare-fun isEmpty!39448 (List!67685) Bool)

(assert (=> d!2188210 (= c!1304587 (isEmpty!39448 Nil!67561))))

(declare-fun e!4219892 () Bool)

(assert (=> d!2188210 (= (matchZipper!2920 lt!2511167 Nil!67561) e!4219892)))

(declare-fun b!7020069 () Bool)

(declare-fun nullableZipper!2516 ((Set Context!12752)) Bool)

(assert (=> b!7020069 (= e!4219892 (nullableZipper!2516 lt!2511167))))

(declare-fun b!7020070 () Bool)

(declare-fun head!14206 (List!67685) C!35030)

(declare-fun tail!13475 (List!67685) List!67685)

(assert (=> b!7020070 (= e!4219892 (matchZipper!2920 (derivationStepZipper!2860 lt!2511167 (head!14206 Nil!67561)) (tail!13475 Nil!67561)))))

(assert (= (and d!2188210 c!1304587) b!7020069))

(assert (= (and d!2188210 (not c!1304587)) b!7020070))

(declare-fun m!7721484 () Bool)

(assert (=> d!2188210 m!7721484))

(declare-fun m!7721486 () Bool)

(assert (=> b!7020069 m!7721486))

(declare-fun m!7721488 () Bool)

(assert (=> b!7020070 m!7721488))

(assert (=> b!7020070 m!7721488))

(declare-fun m!7721490 () Bool)

(assert (=> b!7020070 m!7721490))

(declare-fun m!7721492 () Bool)

(assert (=> b!7020070 m!7721492))

(assert (=> b!7020070 m!7721490))

(assert (=> b!7020070 m!7721492))

(declare-fun m!7721494 () Bool)

(assert (=> b!7020070 m!7721494))

(assert (=> b!7019987 d!2188210))

(declare-fun d!2188212 () Bool)

(assert (=> d!2188212 (= (matchZipper!2920 lt!2511167 Nil!67561) (isEmpty!39448 Nil!67561))))

(declare-fun lt!2511235 () Unit!161442)

(declare-fun choose!52932 ((Set Context!12752) List!67685) Unit!161442)

(assert (=> d!2188212 (= lt!2511235 (choose!52932 lt!2511167 Nil!67561))))

(assert (=> d!2188212 (= lt!2511167 (set.singleton (Context!12753 Nil!67562)))))

(assert (=> d!2188212 (= (lemmaZipperOfEmptyContextMatchesEmptyString!11 lt!2511167 Nil!67561) lt!2511235)))

(declare-fun bs!1867400 () Bool)

(assert (= bs!1867400 d!2188212))

(assert (=> bs!1867400 m!7721360))

(assert (=> bs!1867400 m!7721484))

(declare-fun m!7721496 () Bool)

(assert (=> bs!1867400 m!7721496))

(assert (=> b!7019987 d!2188212))

(declare-fun d!2188214 () Bool)

(declare-fun e!4219895 () Bool)

(assert (=> d!2188214 e!4219895))

(declare-fun res!2865433 () Bool)

(assert (=> d!2188214 (=> (not res!2865433) (not e!4219895))))

(declare-fun lt!2511238 () Context!12752)

(declare-fun dynLambda!27219 (Int Context!12752) Bool)

(assert (=> d!2188214 (= res!2865433 (dynLambda!27219 lambda!411068 lt!2511238))))

(declare-fun getWitness!1350 (List!67687 Int) Context!12752)

(assert (=> d!2188214 (= lt!2511238 (getWitness!1350 (toList!10740 lt!2511156) lambda!411068))))

(declare-fun exists!3261 ((Set Context!12752) Int) Bool)

(assert (=> d!2188214 (exists!3261 lt!2511156 lambda!411068)))

(assert (=> d!2188214 (= (getWitness!1348 lt!2511156 lambda!411068) lt!2511238)))

(declare-fun b!7020073 () Bool)

(assert (=> b!7020073 (= e!4219895 (set.member lt!2511238 lt!2511156))))

(assert (= (and d!2188214 res!2865433) b!7020073))

(declare-fun b_lambda!265021 () Bool)

(assert (=> (not b_lambda!265021) (not d!2188214)))

(declare-fun m!7721498 () Bool)

(assert (=> d!2188214 m!7721498))

(assert (=> d!2188214 m!7721350))

(assert (=> d!2188214 m!7721350))

(declare-fun m!7721500 () Bool)

(assert (=> d!2188214 m!7721500))

(declare-fun m!7721502 () Bool)

(assert (=> d!2188214 m!7721502))

(declare-fun m!7721504 () Bool)

(assert (=> b!7020073 m!7721504))

(assert (=> b!7019991 d!2188214))

(declare-fun d!2188216 () Bool)

(declare-fun c!1304588 () Bool)

(assert (=> d!2188216 (= c!1304588 (isEmpty!39448 s!7408))))

(declare-fun e!4219896 () Bool)

(assert (=> d!2188216 (= (matchZipper!2920 lt!2511159 s!7408) e!4219896)))

(declare-fun b!7020074 () Bool)

(assert (=> b!7020074 (= e!4219896 (nullableZipper!2516 lt!2511159))))

(declare-fun b!7020075 () Bool)

(assert (=> b!7020075 (= e!4219896 (matchZipper!2920 (derivationStepZipper!2860 lt!2511159 (head!14206 s!7408)) (tail!13475 s!7408)))))

(assert (= (and d!2188216 c!1304588) b!7020074))

(assert (= (and d!2188216 (not c!1304588)) b!7020075))

(declare-fun m!7721506 () Bool)

(assert (=> d!2188216 m!7721506))

(declare-fun m!7721508 () Bool)

(assert (=> b!7020074 m!7721508))

(declare-fun m!7721510 () Bool)

(assert (=> b!7020075 m!7721510))

(assert (=> b!7020075 m!7721510))

(declare-fun m!7721512 () Bool)

(assert (=> b!7020075 m!7721512))

(declare-fun m!7721514 () Bool)

(assert (=> b!7020075 m!7721514))

(assert (=> b!7020075 m!7721512))

(assert (=> b!7020075 m!7721514))

(declare-fun m!7721516 () Bool)

(assert (=> b!7020075 m!7721516))

(assert (=> b!7019991 d!2188216))

(declare-fun bs!1867401 () Bool)

(declare-fun d!2188218 () Bool)

(assert (= bs!1867401 (and d!2188218 b!7019991)))

(declare-fun lambda!411099 () Int)

(assert (=> bs!1867401 (= lambda!411099 lambda!411068)))

(assert (=> d!2188218 true))

(assert (=> d!2188218 (exists!3259 lt!2511154 lambda!411099)))

(declare-fun lt!2511241 () Unit!161442)

(declare-fun choose!52933 (List!67687 List!67685) Unit!161442)

(assert (=> d!2188218 (= lt!2511241 (choose!52933 lt!2511154 s!7408))))

(declare-fun content!13449 (List!67687) (Set Context!12752))

(assert (=> d!2188218 (matchZipper!2920 (content!13449 lt!2511154) s!7408)))

(assert (=> d!2188218 (= (lemmaZipperMatchesExistsMatchingContext!349 lt!2511154 s!7408) lt!2511241)))

(declare-fun bs!1867402 () Bool)

(assert (= bs!1867402 d!2188218))

(declare-fun m!7721518 () Bool)

(assert (=> bs!1867402 m!7721518))

(declare-fun m!7721520 () Bool)

(assert (=> bs!1867402 m!7721520))

(declare-fun m!7721522 () Bool)

(assert (=> bs!1867402 m!7721522))

(assert (=> bs!1867402 m!7721522))

(declare-fun m!7721524 () Bool)

(assert (=> bs!1867402 m!7721524))

(assert (=> b!7019991 d!2188218))

(declare-fun d!2188220 () Bool)

(declare-fun e!4219899 () Bool)

(assert (=> d!2188220 e!4219899))

(declare-fun res!2865436 () Bool)

(assert (=> d!2188220 (=> (not res!2865436) (not e!4219899))))

(declare-fun lt!2511244 () List!67687)

(declare-fun noDuplicate!2592 (List!67687) Bool)

(assert (=> d!2188220 (= res!2865436 (noDuplicate!2592 lt!2511244))))

(declare-fun choose!52934 ((Set Context!12752)) List!67687)

(assert (=> d!2188220 (= lt!2511244 (choose!52934 lt!2511156))))

(assert (=> d!2188220 (= (toList!10740 lt!2511156) lt!2511244)))

(declare-fun b!7020078 () Bool)

(assert (=> b!7020078 (= e!4219899 (= (content!13449 lt!2511244) lt!2511156))))

(assert (= (and d!2188220 res!2865436) b!7020078))

(declare-fun m!7721526 () Bool)

(assert (=> d!2188220 m!7721526))

(declare-fun m!7721528 () Bool)

(assert (=> d!2188220 m!7721528))

(declare-fun m!7721530 () Bool)

(assert (=> b!7020078 m!7721530))

(assert (=> b!7019991 d!2188220))

(declare-fun bs!1867403 () Bool)

(declare-fun d!2188222 () Bool)

(assert (= bs!1867403 (and d!2188222 b!7019991)))

(declare-fun lambda!411102 () Int)

(assert (=> bs!1867403 (not (= lambda!411102 lambda!411068))))

(declare-fun bs!1867404 () Bool)

(assert (= bs!1867404 (and d!2188222 d!2188218)))

(assert (=> bs!1867404 (not (= lambda!411102 lambda!411099))))

(assert (=> d!2188222 true))

(declare-fun order!28093 () Int)

(declare-fun dynLambda!27220 (Int Int) Int)

(assert (=> d!2188222 (< (dynLambda!27220 order!28093 lambda!411068) (dynLambda!27220 order!28093 lambda!411102))))

(declare-fun forall!16292 (List!67687 Int) Bool)

(assert (=> d!2188222 (= (exists!3259 lt!2511154 lambda!411068) (not (forall!16292 lt!2511154 lambda!411102)))))

(declare-fun bs!1867405 () Bool)

(assert (= bs!1867405 d!2188222))

(declare-fun m!7721532 () Bool)

(assert (=> bs!1867405 m!7721532))

(assert (=> b!7019991 d!2188222))

(declare-fun d!2188224 () Bool)

(declare-fun c!1304591 () Bool)

(assert (=> d!2188224 (= c!1304591 (isEmpty!39448 s!7408))))

(declare-fun e!4219900 () Bool)

(assert (=> d!2188224 (= (matchZipper!2920 lt!2511156 s!7408) e!4219900)))

(declare-fun b!7020081 () Bool)

(assert (=> b!7020081 (= e!4219900 (nullableZipper!2516 lt!2511156))))

(declare-fun b!7020082 () Bool)

(assert (=> b!7020082 (= e!4219900 (matchZipper!2920 (derivationStepZipper!2860 lt!2511156 (head!14206 s!7408)) (tail!13475 s!7408)))))

(assert (= (and d!2188224 c!1304591) b!7020081))

(assert (= (and d!2188224 (not c!1304591)) b!7020082))

(assert (=> d!2188224 m!7721506))

(declare-fun m!7721534 () Bool)

(assert (=> b!7020081 m!7721534))

(assert (=> b!7020082 m!7721510))

(assert (=> b!7020082 m!7721510))

(declare-fun m!7721536 () Bool)

(assert (=> b!7020082 m!7721536))

(assert (=> b!7020082 m!7721514))

(assert (=> b!7020082 m!7721536))

(assert (=> b!7020082 m!7721514))

(declare-fun m!7721538 () Bool)

(assert (=> b!7020082 m!7721538))

(assert (=> start!676908 d!2188224))

(declare-fun bs!1867406 () Bool)

(declare-fun d!2188226 () Bool)

(assert (= bs!1867406 (and d!2188226 b!7019988)))

(declare-fun lambda!411107 () Int)

(assert (=> bs!1867406 (= lambda!411107 lambda!411069)))

(assert (=> d!2188226 true))

(declare-fun map!15671 ((Set Context!12752) Int) (Set Context!12752))

(assert (=> d!2188226 (= (appendTo!501 z1!570 ct2!306) (map!15671 z1!570 lambda!411107))))

(declare-fun bs!1867407 () Bool)

(assert (= bs!1867407 d!2188226))

(declare-fun m!7721540 () Bool)

(assert (=> bs!1867407 m!7721540))

(assert (=> start!676908 d!2188226))

(declare-fun bs!1867408 () Bool)

(declare-fun d!2188228 () Bool)

(assert (= bs!1867408 (and d!2188228 b!7019988)))

(declare-fun lambda!411110 () Int)

(assert (=> bs!1867408 (= lambda!411110 lambda!411070)))

(assert (=> d!2188228 (= (inv!86310 ct2!306) (forall!16291 (exprs!6876 ct2!306) lambda!411110))))

(declare-fun bs!1867409 () Bool)

(assert (= bs!1867409 d!2188228))

(declare-fun m!7721542 () Bool)

(assert (=> bs!1867409 m!7721542))

(assert (=> start!676908 d!2188228))

(declare-fun b!7020093 () Bool)

(declare-fun res!2865441 () Bool)

(declare-fun e!4219905 () Bool)

(assert (=> b!7020093 (=> (not res!2865441) (not e!4219905))))

(declare-fun lt!2511249 () List!67685)

(declare-fun size!41017 (List!67685) Int)

(assert (=> b!7020093 (= res!2865441 (= (size!41017 lt!2511249) (+ (size!41017 Nil!67561) (size!41017 s!7408))))))

(declare-fun b!7020094 () Bool)

(assert (=> b!7020094 (= e!4219905 (or (not (= s!7408 Nil!67561)) (= lt!2511249 Nil!67561)))))

(declare-fun b!7020091 () Bool)

(declare-fun e!4219906 () List!67685)

(assert (=> b!7020091 (= e!4219906 s!7408)))

(declare-fun b!7020092 () Bool)

(assert (=> b!7020092 (= e!4219906 (Cons!67561 (h!74009 Nil!67561) (++!15418 (t!381440 Nil!67561) s!7408)))))

(declare-fun d!2188230 () Bool)

(assert (=> d!2188230 e!4219905))

(declare-fun res!2865442 () Bool)

(assert (=> d!2188230 (=> (not res!2865442) (not e!4219905))))

(declare-fun content!13450 (List!67685) (Set C!35030))

(assert (=> d!2188230 (= res!2865442 (= (content!13450 lt!2511249) (set.union (content!13450 Nil!67561) (content!13450 s!7408))))))

(assert (=> d!2188230 (= lt!2511249 e!4219906)))

(declare-fun c!1304595 () Bool)

(assert (=> d!2188230 (= c!1304595 (is-Nil!67561 Nil!67561))))

(assert (=> d!2188230 (= (++!15418 Nil!67561 s!7408) lt!2511249)))

(assert (= (and d!2188230 c!1304595) b!7020091))

(assert (= (and d!2188230 (not c!1304595)) b!7020092))

(assert (= (and d!2188230 res!2865442) b!7020093))

(assert (= (and b!7020093 res!2865441) b!7020094))

(declare-fun m!7721544 () Bool)

(assert (=> b!7020093 m!7721544))

(declare-fun m!7721546 () Bool)

(assert (=> b!7020093 m!7721546))

(declare-fun m!7721548 () Bool)

(assert (=> b!7020093 m!7721548))

(declare-fun m!7721550 () Bool)

(assert (=> b!7020092 m!7721550))

(declare-fun m!7721552 () Bool)

(assert (=> d!2188230 m!7721552))

(declare-fun m!7721554 () Bool)

(assert (=> d!2188230 m!7721554))

(declare-fun m!7721556 () Bool)

(assert (=> d!2188230 m!7721556))

(assert (=> b!7019985 d!2188230))

(declare-fun d!2188232 () Bool)

(declare-fun isEmpty!39449 (Option!16845) Bool)

(assert (=> d!2188232 (= (isDefined!13546 (findConcatSeparationZippers!361 lt!2511167 lt!2511158 Nil!67561 s!7408 s!7408)) (not (isEmpty!39449 (findConcatSeparationZippers!361 lt!2511167 lt!2511158 Nil!67561 s!7408 s!7408))))))

(declare-fun bs!1867410 () Bool)

(assert (= bs!1867410 d!2188232))

(assert (=> bs!1867410 m!7721388))

(declare-fun m!7721558 () Bool)

(assert (=> bs!1867410 m!7721558))

(assert (=> b!7019985 d!2188232))

(declare-fun b!7020113 () Bool)

(declare-fun e!4219920 () Bool)

(declare-fun lt!2511257 () Option!16845)

(declare-fun get!23694 (Option!16845) tuple2!68026)

(assert (=> b!7020113 (= e!4219920 (= (++!15418 (_1!37316 (get!23694 lt!2511257)) (_2!37316 (get!23694 lt!2511257))) s!7408))))

(declare-fun b!7020114 () Bool)

(declare-fun res!2865455 () Bool)

(assert (=> b!7020114 (=> (not res!2865455) (not e!4219920))))

(assert (=> b!7020114 (= res!2865455 (matchZipper!2920 lt!2511167 (_1!37316 (get!23694 lt!2511257))))))

(declare-fun b!7020115 () Bool)

(declare-fun e!4219921 () Bool)

(assert (=> b!7020115 (= e!4219921 (matchZipper!2920 lt!2511158 s!7408))))

(declare-fun b!7020116 () Bool)

(declare-fun res!2865457 () Bool)

(assert (=> b!7020116 (=> (not res!2865457) (not e!4219920))))

(assert (=> b!7020116 (= res!2865457 (matchZipper!2920 lt!2511158 (_2!37316 (get!23694 lt!2511257))))))

(declare-fun b!7020117 () Bool)

(declare-fun e!4219918 () Option!16845)

(declare-fun e!4219917 () Option!16845)

(assert (=> b!7020117 (= e!4219918 e!4219917)))

(declare-fun c!1304601 () Bool)

(assert (=> b!7020117 (= c!1304601 (is-Nil!67561 s!7408))))

(declare-fun b!7020118 () Bool)

(declare-fun lt!2511256 () Unit!161442)

(declare-fun lt!2511258 () Unit!161442)

(assert (=> b!7020118 (= lt!2511256 lt!2511258)))

(assert (=> b!7020118 (= (++!15418 (++!15418 Nil!67561 (Cons!67561 (h!74009 s!7408) Nil!67561)) (t!381440 s!7408)) s!7408)))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2909 (List!67685 C!35030 List!67685 List!67685) Unit!161442)

(assert (=> b!7020118 (= lt!2511258 (lemmaMoveElementToOtherListKeepsConcatEq!2909 Nil!67561 (h!74009 s!7408) (t!381440 s!7408) s!7408))))

(assert (=> b!7020118 (= e!4219917 (findConcatSeparationZippers!361 lt!2511167 lt!2511158 (++!15418 Nil!67561 (Cons!67561 (h!74009 s!7408) Nil!67561)) (t!381440 s!7408) s!7408))))

(declare-fun d!2188234 () Bool)

(declare-fun e!4219919 () Bool)

(assert (=> d!2188234 e!4219919))

(declare-fun res!2865456 () Bool)

(assert (=> d!2188234 (=> res!2865456 e!4219919)))

(assert (=> d!2188234 (= res!2865456 e!4219920)))

(declare-fun res!2865454 () Bool)

(assert (=> d!2188234 (=> (not res!2865454) (not e!4219920))))

(assert (=> d!2188234 (= res!2865454 (isDefined!13546 lt!2511257))))

(assert (=> d!2188234 (= lt!2511257 e!4219918)))

(declare-fun c!1304600 () Bool)

(assert (=> d!2188234 (= c!1304600 e!4219921)))

(declare-fun res!2865453 () Bool)

(assert (=> d!2188234 (=> (not res!2865453) (not e!4219921))))

(assert (=> d!2188234 (= res!2865453 (matchZipper!2920 lt!2511167 Nil!67561))))

(assert (=> d!2188234 (= (++!15418 Nil!67561 s!7408) s!7408)))

(assert (=> d!2188234 (= (findConcatSeparationZippers!361 lt!2511167 lt!2511158 Nil!67561 s!7408 s!7408) lt!2511257)))

(declare-fun b!7020119 () Bool)

(assert (=> b!7020119 (= e!4219917 None!16844)))

(declare-fun b!7020120 () Bool)

(assert (=> b!7020120 (= e!4219919 (not (isDefined!13546 lt!2511257)))))

(declare-fun b!7020121 () Bool)

(assert (=> b!7020121 (= e!4219918 (Some!16844 (tuple2!68027 Nil!67561 s!7408)))))

(assert (= (and d!2188234 res!2865453) b!7020115))

(assert (= (and d!2188234 c!1304600) b!7020121))

(assert (= (and d!2188234 (not c!1304600)) b!7020117))

(assert (= (and b!7020117 c!1304601) b!7020119))

(assert (= (and b!7020117 (not c!1304601)) b!7020118))

(assert (= (and d!2188234 res!2865454) b!7020114))

(assert (= (and b!7020114 res!2865455) b!7020116))

(assert (= (and b!7020116 res!2865457) b!7020113))

(assert (= (and d!2188234 (not res!2865456)) b!7020120))

(declare-fun m!7721560 () Bool)

(assert (=> b!7020116 m!7721560))

(declare-fun m!7721562 () Bool)

(assert (=> b!7020116 m!7721562))

(declare-fun m!7721564 () Bool)

(assert (=> d!2188234 m!7721564))

(assert (=> d!2188234 m!7721360))

(assert (=> d!2188234 m!7721386))

(assert (=> b!7020113 m!7721560))

(declare-fun m!7721566 () Bool)

(assert (=> b!7020113 m!7721566))

(declare-fun m!7721568 () Bool)

(assert (=> b!7020118 m!7721568))

(assert (=> b!7020118 m!7721568))

(declare-fun m!7721570 () Bool)

(assert (=> b!7020118 m!7721570))

(declare-fun m!7721572 () Bool)

(assert (=> b!7020118 m!7721572))

(assert (=> b!7020118 m!7721568))

(declare-fun m!7721574 () Bool)

(assert (=> b!7020118 m!7721574))

(assert (=> b!7020120 m!7721564))

(assert (=> b!7020115 m!7721380))

(assert (=> b!7020114 m!7721560))

(declare-fun m!7721576 () Bool)

(assert (=> b!7020114 m!7721576))

(assert (=> b!7019985 d!2188234))

(declare-fun d!2188236 () Bool)

(assert (=> d!2188236 (isDefined!13546 (findConcatSeparationZippers!361 lt!2511167 lt!2511158 Nil!67561 s!7408 s!7408))))

(declare-fun lt!2511261 () Unit!161442)

(declare-fun choose!52935 ((Set Context!12752) (Set Context!12752) List!67685 List!67685 List!67685 List!67685 List!67685) Unit!161442)

(assert (=> d!2188236 (= lt!2511261 (choose!52935 lt!2511167 lt!2511158 Nil!67561 s!7408 s!7408 Nil!67561 s!7408))))

(assert (=> d!2188236 (matchZipper!2920 lt!2511167 Nil!67561)))

(assert (=> d!2188236 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!33 lt!2511167 lt!2511158 Nil!67561 s!7408 s!7408 Nil!67561 s!7408) lt!2511261)))

(declare-fun bs!1867411 () Bool)

(assert (= bs!1867411 d!2188236))

(assert (=> bs!1867411 m!7721388))

(assert (=> bs!1867411 m!7721388))

(assert (=> bs!1867411 m!7721390))

(declare-fun m!7721578 () Bool)

(assert (=> bs!1867411 m!7721578))

(assert (=> bs!1867411 m!7721360))

(assert (=> b!7019985 d!2188236))

(assert (=> b!7019989 d!2188202))

(assert (=> b!7019993 d!2188202))

(declare-fun d!2188238 () Bool)

(declare-fun c!1304602 () Bool)

(assert (=> d!2188238 (= c!1304602 (isEmpty!39448 s!7408))))

(declare-fun e!4219922 () Bool)

(assert (=> d!2188238 (= (matchZipper!2920 lt!2511158 s!7408) e!4219922)))

(declare-fun b!7020122 () Bool)

(assert (=> b!7020122 (= e!4219922 (nullableZipper!2516 lt!2511158))))

(declare-fun b!7020123 () Bool)

(assert (=> b!7020123 (= e!4219922 (matchZipper!2920 (derivationStepZipper!2860 lt!2511158 (head!14206 s!7408)) (tail!13475 s!7408)))))

(assert (= (and d!2188238 c!1304602) b!7020122))

(assert (= (and d!2188238 (not c!1304602)) b!7020123))

(assert (=> d!2188238 m!7721506))

(declare-fun m!7721580 () Bool)

(assert (=> b!7020122 m!7721580))

(assert (=> b!7020123 m!7721510))

(assert (=> b!7020123 m!7721510))

(declare-fun m!7721582 () Bool)

(assert (=> b!7020123 m!7721582))

(assert (=> b!7020123 m!7721514))

(assert (=> b!7020123 m!7721582))

(assert (=> b!7020123 m!7721514))

(declare-fun m!7721584 () Bool)

(assert (=> b!7020123 m!7721584))

(assert (=> b!7019984 d!2188238))

(declare-fun b!7020135 () Bool)

(declare-fun e!4219928 () Bool)

(declare-fun lt!2511264 () List!67686)

(assert (=> b!7020135 (= e!4219928 (or (not (= (exprs!6876 ct2!306) Nil!67562)) (= lt!2511264 (exprs!6876 lt!2511155))))))

(declare-fun b!7020133 () Bool)

(declare-fun e!4219927 () List!67686)

(assert (=> b!7020133 (= e!4219927 (Cons!67562 (h!74010 (exprs!6876 lt!2511155)) (++!15419 (t!381441 (exprs!6876 lt!2511155)) (exprs!6876 ct2!306))))))

(declare-fun d!2188240 () Bool)

(assert (=> d!2188240 e!4219928))

(declare-fun res!2865462 () Bool)

(assert (=> d!2188240 (=> (not res!2865462) (not e!4219928))))

(declare-fun content!13451 (List!67686) (Set Regex!17380))

(assert (=> d!2188240 (= res!2865462 (= (content!13451 lt!2511264) (set.union (content!13451 (exprs!6876 lt!2511155)) (content!13451 (exprs!6876 ct2!306)))))))

(assert (=> d!2188240 (= lt!2511264 e!4219927)))

(declare-fun c!1304605 () Bool)

(assert (=> d!2188240 (= c!1304605 (is-Nil!67562 (exprs!6876 lt!2511155)))))

(assert (=> d!2188240 (= (++!15419 (exprs!6876 lt!2511155) (exprs!6876 ct2!306)) lt!2511264)))

(declare-fun b!7020134 () Bool)

(declare-fun res!2865463 () Bool)

(assert (=> b!7020134 (=> (not res!2865463) (not e!4219928))))

(declare-fun size!41018 (List!67686) Int)

(assert (=> b!7020134 (= res!2865463 (= (size!41018 lt!2511264) (+ (size!41018 (exprs!6876 lt!2511155)) (size!41018 (exprs!6876 ct2!306)))))))

(declare-fun b!7020132 () Bool)

(assert (=> b!7020132 (= e!4219927 (exprs!6876 ct2!306))))

(assert (= (and d!2188240 c!1304605) b!7020132))

(assert (= (and d!2188240 (not c!1304605)) b!7020133))

(assert (= (and d!2188240 res!2865462) b!7020134))

(assert (= (and b!7020134 res!2865463) b!7020135))

(declare-fun m!7721586 () Bool)

(assert (=> b!7020133 m!7721586))

(declare-fun m!7721588 () Bool)

(assert (=> d!2188240 m!7721588))

(declare-fun m!7721590 () Bool)

(assert (=> d!2188240 m!7721590))

(declare-fun m!7721592 () Bool)

(assert (=> d!2188240 m!7721592))

(declare-fun m!7721594 () Bool)

(assert (=> b!7020134 m!7721594))

(declare-fun m!7721596 () Bool)

(assert (=> b!7020134 m!7721596))

(declare-fun m!7721598 () Bool)

(assert (=> b!7020134 m!7721598))

(assert (=> b!7019988 d!2188240))

(assert (=> b!7019988 d!2188202))

(declare-fun d!2188242 () Bool)

(declare-fun e!4219931 () Bool)

(assert (=> d!2188242 e!4219931))

(declare-fun res!2865466 () Bool)

(assert (=> d!2188242 (=> (not res!2865466) (not e!4219931))))

(declare-fun lt!2511267 () Context!12752)

(declare-fun dynLambda!27221 (Int Context!12752) Context!12752)

(assert (=> d!2188242 (= res!2865466 (= lt!2511163 (dynLambda!27221 lambda!411069 lt!2511267)))))

(declare-fun choose!52936 ((Set Context!12752) Int Context!12752) Context!12752)

(assert (=> d!2188242 (= lt!2511267 (choose!52936 z1!570 lambda!411069 lt!2511163))))

(assert (=> d!2188242 (set.member lt!2511163 (map!15671 z1!570 lambda!411069))))

(assert (=> d!2188242 (= (mapPost2!235 z1!570 lambda!411069 lt!2511163) lt!2511267)))

(declare-fun b!7020139 () Bool)

(assert (=> b!7020139 (= e!4219931 (set.member lt!2511267 z1!570))))

(assert (= (and d!2188242 res!2865466) b!7020139))

(declare-fun b_lambda!265023 () Bool)

(assert (=> (not b_lambda!265023) (not d!2188242)))

(declare-fun m!7721600 () Bool)

(assert (=> d!2188242 m!7721600))

(declare-fun m!7721602 () Bool)

(assert (=> d!2188242 m!7721602))

(declare-fun m!7721604 () Bool)

(assert (=> d!2188242 m!7721604))

(declare-fun m!7721606 () Bool)

(assert (=> d!2188242 m!7721606))

(declare-fun m!7721608 () Bool)

(assert (=> b!7020139 m!7721608))

(assert (=> b!7019988 d!2188242))

(declare-fun bs!1867412 () Bool)

(declare-fun d!2188244 () Bool)

(assert (= bs!1867412 (and d!2188244 b!7019988)))

(declare-fun lambda!411111 () Int)

(assert (=> bs!1867412 (= lambda!411111 lambda!411070)))

(declare-fun bs!1867413 () Bool)

(assert (= bs!1867413 (and d!2188244 d!2188228)))

(assert (=> bs!1867413 (= lambda!411111 lambda!411110)))

(assert (=> d!2188244 (= (inv!86310 setElem!48657) (forall!16291 (exprs!6876 setElem!48657) lambda!411111))))

(declare-fun bs!1867414 () Bool)

(assert (= bs!1867414 d!2188244))

(declare-fun m!7721610 () Bool)

(assert (=> bs!1867414 m!7721610))

(assert (=> setNonEmpty!48657 d!2188244))

(declare-fun b!7020144 () Bool)

(declare-fun e!4219934 () Bool)

(declare-fun tp!1933854 () Bool)

(declare-fun tp!1933855 () Bool)

(assert (=> b!7020144 (= e!4219934 (and tp!1933854 tp!1933855))))

(assert (=> b!7019992 (= tp!1933837 e!4219934)))

(assert (= (and b!7019992 (is-Cons!67562 (exprs!6876 ct2!306))) b!7020144))

(declare-fun b!7020145 () Bool)

(declare-fun e!4219935 () Bool)

(declare-fun tp!1933856 () Bool)

(declare-fun tp!1933857 () Bool)

(assert (=> b!7020145 (= e!4219935 (and tp!1933856 tp!1933857))))

(assert (=> b!7019982 (= tp!1933835 e!4219935)))

(assert (= (and b!7019982 (is-Cons!67562 (exprs!6876 setElem!48657))) b!7020145))

(declare-fun b!7020150 () Bool)

(declare-fun e!4219938 () Bool)

(declare-fun tp!1933860 () Bool)

(assert (=> b!7020150 (= e!4219938 (and tp_is_empty!43985 tp!1933860))))

(assert (=> b!7019981 (= tp!1933834 e!4219938)))

(assert (= (and b!7019981 (is-Cons!67561 (t!381440 s!7408))) b!7020150))

(declare-fun condSetEmpty!48663 () Bool)

(assert (=> setNonEmpty!48657 (= condSetEmpty!48663 (= setRest!48657 (as set.empty (Set Context!12752))))))

(declare-fun setRes!48663 () Bool)

(assert (=> setNonEmpty!48657 (= tp!1933836 setRes!48663)))

(declare-fun setIsEmpty!48663 () Bool)

(assert (=> setIsEmpty!48663 setRes!48663))

(declare-fun e!4219941 () Bool)

(declare-fun setNonEmpty!48663 () Bool)

(declare-fun setElem!48663 () Context!12752)

(declare-fun tp!1933866 () Bool)

(assert (=> setNonEmpty!48663 (= setRes!48663 (and tp!1933866 (inv!86310 setElem!48663) e!4219941))))

(declare-fun setRest!48663 () (Set Context!12752))

(assert (=> setNonEmpty!48663 (= setRest!48657 (set.union (set.insert setElem!48663 (as set.empty (Set Context!12752))) setRest!48663))))

(declare-fun b!7020155 () Bool)

(declare-fun tp!1933865 () Bool)

(assert (=> b!7020155 (= e!4219941 tp!1933865)))

(assert (= (and setNonEmpty!48657 condSetEmpty!48663) setIsEmpty!48663))

(assert (= (and setNonEmpty!48657 (not condSetEmpty!48663)) setNonEmpty!48663))

(assert (= setNonEmpty!48663 b!7020155))

(declare-fun m!7721612 () Bool)

(assert (=> setNonEmpty!48663 m!7721612))

(declare-fun b_lambda!265025 () Bool)

(assert (= b_lambda!265019 (or b!7019983 b_lambda!265025)))

(declare-fun bs!1867415 () Bool)

(declare-fun d!2188246 () Bool)

(assert (= bs!1867415 (and d!2188246 b!7019983)))

(assert (=> bs!1867415 (= (dynLambda!27218 lambda!411071 lt!2511164) (derivationStepZipperUp!2030 lt!2511164 (h!74009 s!7408)))))

(assert (=> bs!1867415 m!7721402))

(assert (=> d!2188206 d!2188246))

(declare-fun b_lambda!265027 () Bool)

(assert (= b_lambda!265023 (or b!7019988 b_lambda!265027)))

(declare-fun bs!1867416 () Bool)

(declare-fun d!2188248 () Bool)

(assert (= bs!1867416 (and d!2188248 b!7019988)))

(declare-fun lt!2511268 () Unit!161442)

(assert (=> bs!1867416 (= lt!2511268 (lemmaConcatPreservesForall!716 (exprs!6876 lt!2511267) (exprs!6876 ct2!306) lambda!411070))))

(assert (=> bs!1867416 (= (dynLambda!27221 lambda!411069 lt!2511267) (Context!12753 (++!15419 (exprs!6876 lt!2511267) (exprs!6876 ct2!306))))))

(declare-fun m!7721614 () Bool)

(assert (=> bs!1867416 m!7721614))

(declare-fun m!7721616 () Bool)

(assert (=> bs!1867416 m!7721616))

(assert (=> d!2188242 d!2188248))

(declare-fun b_lambda!265029 () Bool)

(assert (= b_lambda!265021 (or b!7019991 b_lambda!265029)))

(declare-fun bs!1867417 () Bool)

(declare-fun d!2188250 () Bool)

(assert (= bs!1867417 (and d!2188250 b!7019991)))

(assert (=> bs!1867417 (= (dynLambda!27219 lambda!411068 lt!2511238) (matchZipper!2920 (set.insert lt!2511238 (as set.empty (Set Context!12752))) s!7408))))

(declare-fun m!7721618 () Bool)

(assert (=> bs!1867417 m!7721618))

(assert (=> bs!1867417 m!7721618))

(declare-fun m!7721620 () Bool)

(assert (=> bs!1867417 m!7721620))

(assert (=> d!2188214 d!2188250))

(push 1)

(assert (not b!7020122))

(assert (not d!2188234))

(assert (not b!7020081))

(assert (not d!2188220))

(assert (not d!2188218))

(assert (not b!7020116))

(assert (not b!7020150))

(assert (not b!7020134))

(assert (not b!7020082))

(assert (not b!7020120))

(assert (not d!2188228))

(assert (not d!2188202))

(assert (not b!7020074))

(assert (not bs!1867417))

(assert (not bs!1867416))

(assert (not d!2188230))

(assert (not b!7020092))

(assert (not b!7020113))

(assert (not b!7020145))

(assert (not b_lambda!265027))

(assert (not d!2188214))

(assert (not d!2188212))

(assert (not d!2188222))

(assert (not d!2188206))

(assert (not d!2188242))

(assert (not b!7020069))

(assert (not d!2188208))

(assert (not setNonEmpty!48663))

(assert (not b!7020114))

(assert (not d!2188240))

(assert (not b_lambda!265025))

(assert (not d!2188236))

(assert (not bs!1867415))

(assert (not b!7020063))

(assert (not d!2188226))

(assert (not b!7020115))

(assert (not d!2188238))

(assert (not b!7020075))

(assert tp_is_empty!43985)

(assert (not d!2188210))

(assert (not b!7020070))

(assert (not d!2188200))

(assert (not d!2188224))

(assert (not b!7020060))

(assert (not d!2188216))

(assert (not b!7020093))

(assert (not d!2188244))

(assert (not bm!637608))

(assert (not b!7020155))

(assert (not b!7020118))

(assert (not b!7020078))

(assert (not b_lambda!265029))

(assert (not b!7020133))

(assert (not b!7020123))

(assert (not b!7020144))

(assert (not d!2188232))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

