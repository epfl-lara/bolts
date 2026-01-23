; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!687174 () Bool)

(assert start!687174)

(declare-fun b!7073036 () Bool)

(assert (=> b!7073036 true))

(declare-fun b!7073041 () Bool)

(assert (=> b!7073041 true))

(declare-fun b!7073022 () Bool)

(assert (=> b!7073022 true))

(declare-fun bs!1880828 () Bool)

(declare-fun b!7073023 () Bool)

(assert (= bs!1880828 (and b!7073023 b!7073036)))

(declare-fun lambda!425912 () Int)

(declare-datatypes ((C!35570 0))(
  ( (C!35571 (val!27487 Int)) )
))
(declare-datatypes ((List!68476 0))(
  ( (Nil!68352) (Cons!68352 (h!74800 C!35570) (t!382259 List!68476)) )
))
(declare-fun lt!2546965 () List!68476)

(declare-fun s!7408 () List!68476)

(declare-fun lambda!425908 () Int)

(assert (=> bs!1880828 (= (= lt!2546965 s!7408) (= lambda!425912 lambda!425908))))

(assert (=> b!7073023 true))

(declare-fun b!7073014 () Bool)

(declare-fun e!4252320 () Bool)

(declare-datatypes ((Regex!17650 0))(
  ( (ElementMatch!17650 (c!1319431 C!35570)) (Concat!26495 (regOne!35812 Regex!17650) (regTwo!35812 Regex!17650)) (EmptyExpr!17650) (Star!17650 (reg!17979 Regex!17650)) (EmptyLang!17650) (Union!17650 (regOne!35813 Regex!17650) (regTwo!35813 Regex!17650)) )
))
(declare-datatypes ((List!68477 0))(
  ( (Nil!68353) (Cons!68353 (h!74801 Regex!17650) (t!382260 List!68477)) )
))
(declare-datatypes ((Context!13292 0))(
  ( (Context!13293 (exprs!7146 List!68477)) )
))
(declare-fun lt!2546935 () (Set Context!13292))

(declare-fun matchZipper!3190 ((Set Context!13292) List!68476) Bool)

(assert (=> b!7073014 (= e!4252320 (matchZipper!3190 lt!2546935 (t!382259 s!7408)))))

(declare-fun b!7073015 () Bool)

(declare-fun e!4252326 () Bool)

(declare-fun e!4252318 () Bool)

(assert (=> b!7073015 (= e!4252326 e!4252318)))

(declare-fun res!2888800 () Bool)

(assert (=> b!7073015 (=> res!2888800 e!4252318)))

(declare-fun e!4252319 () Bool)

(assert (=> b!7073015 (= res!2888800 e!4252319)))

(declare-fun res!2888804 () Bool)

(assert (=> b!7073015 (=> (not res!2888804) (not e!4252319))))

(declare-fun lt!2546970 () Bool)

(declare-fun lt!2546963 () Bool)

(assert (=> b!7073015 (= res!2888804 (not (= lt!2546970 lt!2546963)))))

(declare-fun lt!2546967 () (Set Context!13292))

(assert (=> b!7073015 (= lt!2546970 (matchZipper!3190 lt!2546967 (t!382259 s!7408)))))

(declare-fun lambda!425910 () Int)

(declare-fun lt!2546937 () List!68477)

(declare-datatypes ((Unit!162010 0))(
  ( (Unit!162011) )
))
(declare-fun lt!2546940 () Unit!162010)

(declare-fun ct2!306 () Context!13292)

(declare-fun lemmaConcatPreservesForall!961 (List!68477 List!68477 Int) Unit!162010)

(assert (=> b!7073015 (= lt!2546940 (lemmaConcatPreservesForall!961 lt!2546937 (exprs!7146 ct2!306) lambda!425910))))

(declare-fun lt!2546930 () (Set Context!13292))

(assert (=> b!7073015 (= (matchZipper!3190 lt!2546930 (t!382259 s!7408)) e!4252320)))

(declare-fun res!2888820 () Bool)

(assert (=> b!7073015 (=> res!2888820 e!4252320)))

(assert (=> b!7073015 (= res!2888820 lt!2546963)))

(declare-fun lt!2546947 () (Set Context!13292))

(assert (=> b!7073015 (= lt!2546963 (matchZipper!3190 lt!2546947 (t!382259 s!7408)))))

(declare-fun lt!2546943 () Unit!162010)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1663 ((Set Context!13292) (Set Context!13292) List!68476) Unit!162010)

(assert (=> b!7073015 (= lt!2546943 (lemmaZipperConcatMatchesSameAsBothZippers!1663 lt!2546947 lt!2546935 (t!382259 s!7408)))))

(declare-fun lt!2546938 () Unit!162010)

(assert (=> b!7073015 (= lt!2546938 (lemmaConcatPreservesForall!961 lt!2546937 (exprs!7146 ct2!306) lambda!425910))))

(declare-fun lt!2546926 () Unit!162010)

(assert (=> b!7073015 (= lt!2546926 (lemmaConcatPreservesForall!961 lt!2546937 (exprs!7146 ct2!306) lambda!425910))))

(declare-fun b!7073016 () Bool)

(declare-fun e!4252321 () Bool)

(declare-fun tp!1942421 () Bool)

(assert (=> b!7073016 (= e!4252321 tp!1942421)))

(declare-fun b!7073017 () Bool)

(declare-fun e!4252311 () Bool)

(declare-fun tp!1942420 () Bool)

(assert (=> b!7073017 (= e!4252311 tp!1942420)))

(declare-fun b!7073018 () Bool)

(declare-fun res!2888812 () Bool)

(declare-fun e!4252309 () Bool)

(assert (=> b!7073018 (=> res!2888812 e!4252309)))

(declare-fun lt!2546931 () Context!13292)

(declare-fun lt!2546932 () (Set Context!13292))

(assert (=> b!7073018 (= res!2888812 (not (set.member lt!2546931 lt!2546932)))))

(declare-fun b!7073019 () Bool)

(declare-fun res!2888802 () Bool)

(declare-fun e!4252313 () Bool)

(assert (=> b!7073019 (=> res!2888802 e!4252313)))

(declare-fun lt!2546944 () (Set Context!13292))

(declare-datatypes ((tuple2!68274 0))(
  ( (tuple2!68275 (_1!37440 List!68476) (_2!37440 List!68476)) )
))
(declare-fun lt!2546961 () tuple2!68274)

(assert (=> b!7073019 (= res!2888802 (not (matchZipper!3190 lt!2546944 (_2!37440 lt!2546961))))))

(declare-fun b!7073020 () Bool)

(declare-fun e!4252314 () Bool)

(assert (=> b!7073020 (= e!4252314 e!4252313)))

(declare-fun res!2888807 () Bool)

(assert (=> b!7073020 (=> res!2888807 e!4252313)))

(declare-fun lt!2546958 () (Set Context!13292))

(assert (=> b!7073020 (= res!2888807 (not (matchZipper!3190 lt!2546958 (_1!37440 lt!2546961))))))

(declare-datatypes ((Option!16969 0))(
  ( (None!16968) (Some!16968 (v!53262 tuple2!68274)) )
))
(declare-fun lt!2546939 () Option!16969)

(declare-fun get!23945 (Option!16969) tuple2!68274)

(assert (=> b!7073020 (= lt!2546961 (get!23945 lt!2546939))))

(declare-fun isDefined!13670 (Option!16969) Bool)

(assert (=> b!7073020 (isDefined!13670 lt!2546939)))

(declare-fun findConcatSeparationZippers!485 ((Set Context!13292) (Set Context!13292) List!68476 List!68476 List!68476) Option!16969)

(assert (=> b!7073020 (= lt!2546939 (findConcatSeparationZippers!485 lt!2546958 lt!2546944 Nil!68352 (t!382259 s!7408) (t!382259 s!7408)))))

(assert (=> b!7073020 (= lt!2546944 (set.insert ct2!306 (as set.empty (Set Context!13292))))))

(declare-fun lt!2546955 () Unit!162010)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!473 ((Set Context!13292) Context!13292 List!68476) Unit!162010)

(assert (=> b!7073020 (= lt!2546955 (lemmaConcatZipperMatchesStringThenFindConcatDefined!473 lt!2546958 ct2!306 (t!382259 s!7408)))))

(declare-fun lt!2546953 () Unit!162010)

(assert (=> b!7073020 (= lt!2546953 (lemmaConcatPreservesForall!961 lt!2546937 (exprs!7146 ct2!306) lambda!425910))))

(declare-fun appendTo!771 ((Set Context!13292) Context!13292) (Set Context!13292))

(assert (=> b!7073020 (= lt!2546947 (appendTo!771 lt!2546958 ct2!306))))

(declare-fun lt!2546959 () Context!13292)

(declare-fun lt!2546928 () Context!13292)

(declare-fun derivationStepZipperDown!2284 (Regex!17650 Context!13292 C!35570) (Set Context!13292))

(assert (=> b!7073020 (= lt!2546958 (derivationStepZipperDown!2284 (h!74801 (exprs!7146 lt!2546928)) lt!2546959 (h!74800 s!7408)))))

(declare-fun lt!2546966 () Unit!162010)

(assert (=> b!7073020 (= lt!2546966 (lemmaConcatPreservesForall!961 lt!2546937 (exprs!7146 ct2!306) lambda!425910))))

(declare-fun lt!2546934 () Unit!162010)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!121 (Context!13292 Regex!17650 C!35570 Context!13292) Unit!162010)

(assert (=> b!7073020 (= lt!2546934 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!121 lt!2546959 (h!74801 (exprs!7146 lt!2546928)) (h!74800 s!7408) ct2!306))))

(declare-fun b!7073021 () Bool)

(declare-fun e!4252306 () Bool)

(declare-fun e!4252308 () Bool)

(assert (=> b!7073021 (= e!4252306 e!4252308)))

(declare-fun res!2888809 () Bool)

(assert (=> b!7073021 (=> res!2888809 e!4252308)))

(declare-fun e!4252324 () Bool)

(assert (=> b!7073021 (= res!2888809 e!4252324)))

(declare-fun res!2888816 () Bool)

(assert (=> b!7073021 (=> (not res!2888816) (not e!4252324))))

(declare-fun lt!2546933 () Bool)

(assert (=> b!7073021 (= res!2888816 (not lt!2546933))))

(declare-fun lt!2546969 () (Set Context!13292))

(assert (=> b!7073021 (= lt!2546933 (matchZipper!3190 lt!2546969 lt!2546965))))

(assert (=> b!7073021 (= lt!2546965 (Cons!68352 (h!74800 s!7408) (_1!37440 lt!2546961)))))

(declare-fun lt!2546942 () (Set Context!13292))

(assert (=> b!7073021 (matchZipper!3190 lt!2546942 (_1!37440 lt!2546961))))

(declare-fun lt!2546952 () Unit!162010)

(declare-fun lt!2546936 () (Set Context!13292))

(assert (=> b!7073021 (= lt!2546952 (lemmaZipperConcatMatchesSameAsBothZippers!1663 lt!2546958 lt!2546936 (_1!37440 lt!2546961)))))

(declare-fun setIsEmpty!50282 () Bool)

(declare-fun setRes!50282 () Bool)

(assert (=> setIsEmpty!50282 setRes!50282))

(declare-fun tp!1942419 () Bool)

(declare-fun setElem!50282 () Context!13292)

(declare-fun setNonEmpty!50282 () Bool)

(declare-fun inv!86985 (Context!13292) Bool)

(assert (=> setNonEmpty!50282 (= setRes!50282 (and tp!1942419 (inv!86985 setElem!50282) e!4252321))))

(declare-fun z1!570 () (Set Context!13292))

(declare-fun setRest!50282 () (Set Context!13292))

(assert (=> setNonEmpty!50282 (= z1!570 (set.union (set.insert setElem!50282 (as set.empty (Set Context!13292))) setRest!50282))))

(declare-fun e!4252310 () Bool)

(declare-fun e!4252317 () Bool)

(assert (=> b!7073022 (= e!4252310 e!4252317)))

(declare-fun res!2888823 () Bool)

(assert (=> b!7073022 (=> res!2888823 e!4252317)))

(declare-fun lt!2546946 () (Set Context!13292))

(declare-fun derivationStepZipper!3100 ((Set Context!13292) C!35570) (Set Context!13292))

(assert (=> b!7073022 (= res!2888823 (not (= (derivationStepZipper!3100 lt!2546946 (h!74800 s!7408)) lt!2546967)))))

(declare-fun lt!2546945 () Context!13292)

(declare-fun lambda!425911 () Int)

(declare-fun flatMap!2576 ((Set Context!13292) Int) (Set Context!13292))

(declare-fun derivationStepZipperUp!2234 (Context!13292 C!35570) (Set Context!13292))

(assert (=> b!7073022 (= (flatMap!2576 lt!2546946 lambda!425911) (derivationStepZipperUp!2234 lt!2546945 (h!74800 s!7408)))))

(declare-fun lt!2546975 () Unit!162010)

(declare-fun lemmaFlatMapOnSingletonSet!2085 ((Set Context!13292) Context!13292 Int) Unit!162010)

(assert (=> b!7073022 (= lt!2546975 (lemmaFlatMapOnSingletonSet!2085 lt!2546946 lt!2546945 lambda!425911))))

(assert (=> b!7073022 (= lt!2546967 (derivationStepZipperUp!2234 lt!2546945 (h!74800 s!7408)))))

(declare-fun lt!2546954 () Unit!162010)

(assert (=> b!7073022 (= lt!2546954 (lemmaConcatPreservesForall!961 (exprs!7146 lt!2546928) (exprs!7146 ct2!306) lambda!425910))))

(declare-fun e!4252323 () Bool)

(assert (=> b!7073023 (= e!4252308 e!4252323)))

(declare-fun res!2888808 () Bool)

(assert (=> b!7073023 (=> res!2888808 e!4252323)))

(assert (=> b!7073023 (= res!2888808 (not (matchZipper!3190 z1!570 lt!2546965)))))

(declare-datatypes ((List!68478 0))(
  ( (Nil!68354) (Cons!68354 (h!74802 Context!13292) (t!382261 List!68478)) )
))
(declare-fun lt!2546929 () List!68478)

(declare-fun content!13800 (List!68478) (Set Context!13292))

(assert (=> b!7073023 (matchZipper!3190 (content!13800 lt!2546929) lt!2546965)))

(declare-fun lt!2546974 () Unit!162010)

(declare-fun lemmaExistsMatchingContextThenMatchingString!53 (List!68478 List!68476) Unit!162010)

(assert (=> b!7073023 (= lt!2546974 (lemmaExistsMatchingContextThenMatchingString!53 lt!2546929 lt!2546965))))

(declare-fun toList!10991 ((Set Context!13292)) List!68478)

(assert (=> b!7073023 (= lt!2546929 (toList!10991 z1!570))))

(declare-fun exists!3700 ((Set Context!13292) Int) Bool)

(assert (=> b!7073023 (exists!3700 z1!570 lambda!425912)))

(declare-fun lt!2546960 () Unit!162010)

(declare-fun lemmaContainsThenExists!158 ((Set Context!13292) Context!13292 Int) Unit!162010)

(assert (=> b!7073023 (= lt!2546960 (lemmaContainsThenExists!158 z1!570 lt!2546928 lambda!425912))))

(assert (=> b!7073023 (isDefined!13670 (findConcatSeparationZippers!485 lt!2546969 lt!2546944 Nil!68352 s!7408 s!7408))))

(declare-fun lt!2546950 () Unit!162010)

(declare-fun lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!77 ((Set Context!13292) (Set Context!13292) List!68476 List!68476 List!68476 List!68476 List!68476) Unit!162010)

(assert (=> b!7073023 (= lt!2546950 (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!77 lt!2546969 lt!2546944 lt!2546965 (_2!37440 lt!2546961) s!7408 Nil!68352 s!7408))))

(declare-fun b!7073024 () Bool)

(declare-fun e!4252307 () Bool)

(assert (=> b!7073024 (= e!4252307 e!4252314)))

(declare-fun res!2888810 () Bool)

(assert (=> b!7073024 (=> res!2888810 e!4252314)))

(assert (=> b!7073024 (= res!2888810 (not lt!2546963))))

(declare-fun lt!2546949 () Unit!162010)

(assert (=> b!7073024 (= lt!2546949 (lemmaConcatPreservesForall!961 lt!2546937 (exprs!7146 ct2!306) lambda!425910))))

(declare-fun lt!2546968 () Unit!162010)

(assert (=> b!7073024 (= lt!2546968 (lemmaConcatPreservesForall!961 lt!2546937 (exprs!7146 ct2!306) lambda!425910))))

(declare-fun b!7073025 () Bool)

(declare-fun res!2888815 () Bool)

(assert (=> b!7073025 (=> res!2888815 e!4252317)))

(assert (=> b!7073025 (= res!2888815 (not (is-Cons!68353 (exprs!7146 lt!2546928))))))

(declare-fun b!7073026 () Bool)

(assert (=> b!7073026 (= e!4252324 (not (matchZipper!3190 lt!2546936 (_1!37440 lt!2546961))))))

(declare-fun res!2888811 () Bool)

(declare-fun e!4252312 () Bool)

(assert (=> start!687174 (=> (not res!2888811) (not e!4252312))))

(assert (=> start!687174 (= res!2888811 (matchZipper!3190 lt!2546932 s!7408))))

(assert (=> start!687174 (= lt!2546932 (appendTo!771 z1!570 ct2!306))))

(assert (=> start!687174 e!4252312))

(declare-fun condSetEmpty!50282 () Bool)

(assert (=> start!687174 (= condSetEmpty!50282 (= z1!570 (as set.empty (Set Context!13292))))))

(assert (=> start!687174 setRes!50282))

(assert (=> start!687174 (and (inv!86985 ct2!306) e!4252311)))

(declare-fun e!4252325 () Bool)

(assert (=> start!687174 e!4252325))

(declare-fun b!7073013 () Bool)

(declare-fun e!4252322 () Bool)

(assert (=> b!7073013 (= e!4252317 e!4252322)))

(declare-fun res!2888801 () Bool)

(assert (=> b!7073013 (=> res!2888801 e!4252322)))

(declare-fun nullable!7333 (Regex!17650) Bool)

(assert (=> b!7073013 (= res!2888801 (not (nullable!7333 (h!74801 (exprs!7146 lt!2546928)))))))

(assert (=> b!7073013 (= lt!2546959 (Context!13293 lt!2546937))))

(declare-fun tail!13836 (List!68477) List!68477)

(assert (=> b!7073013 (= lt!2546937 (tail!13836 (exprs!7146 lt!2546928)))))

(declare-fun b!7073027 () Bool)

(declare-fun res!2888818 () Bool)

(assert (=> b!7073027 (=> res!2888818 e!4252318)))

(assert (=> b!7073027 (= res!2888818 (not lt!2546970))))

(declare-fun b!7073028 () Bool)

(declare-fun res!2888813 () Bool)

(assert (=> b!7073028 (=> (not res!2888813) (not e!4252312))))

(assert (=> b!7073028 (= res!2888813 (is-Cons!68352 s!7408))))

(declare-fun b!7073029 () Bool)

(declare-fun res!2888819 () Bool)

(assert (=> b!7073029 (=> res!2888819 e!4252313)))

(declare-fun ++!15783 (List!68476 List!68476) List!68476)

(assert (=> b!7073029 (= res!2888819 (not (= (++!15783 (_1!37440 lt!2546961) (_2!37440 lt!2546961)) (t!382259 s!7408))))))

(declare-fun b!7073030 () Bool)

(declare-fun e!4252315 () Bool)

(assert (=> b!7073030 (= e!4252313 e!4252315)))

(declare-fun res!2888805 () Bool)

(assert (=> b!7073030 (=> res!2888805 e!4252315)))

(declare-fun lt!2546957 () (Set Context!13292))

(declare-fun lt!2546941 () (Set Context!13292))

(assert (=> b!7073030 (= res!2888805 (not (= lt!2546957 lt!2546941)))))

(assert (=> b!7073030 (= (flatMap!2576 lt!2546969 lambda!425911) (derivationStepZipperUp!2234 lt!2546928 (h!74800 s!7408)))))

(declare-fun lt!2546976 () Unit!162010)

(assert (=> b!7073030 (= lt!2546976 (lemmaFlatMapOnSingletonSet!2085 lt!2546969 lt!2546928 lambda!425911))))

(assert (=> b!7073030 (= lt!2546941 (derivationStepZipperUp!2234 lt!2546928 (h!74800 s!7408)))))

(assert (=> b!7073030 (= lt!2546957 (derivationStepZipper!3100 lt!2546969 (h!74800 s!7408)))))

(assert (=> b!7073030 (= lt!2546969 (set.insert lt!2546928 (as set.empty (Set Context!13292))))))

(declare-fun b!7073031 () Bool)

(assert (=> b!7073031 (= e!4252319 (not (matchZipper!3190 lt!2546935 (t!382259 s!7408))))))

(declare-fun lt!2546951 () Unit!162010)

(assert (=> b!7073031 (= lt!2546951 (lemmaConcatPreservesForall!961 lt!2546937 (exprs!7146 ct2!306) lambda!425910))))

(declare-fun b!7073032 () Bool)

(declare-fun tp_is_empty!44525 () Bool)

(declare-fun tp!1942422 () Bool)

(assert (=> b!7073032 (= e!4252325 (and tp_is_empty!44525 tp!1942422))))

(declare-fun b!7073033 () Bool)

(declare-fun res!2888806 () Bool)

(assert (=> b!7073033 (=> res!2888806 e!4252308)))

(assert (=> b!7073033 (= res!2888806 (not lt!2546933))))

(declare-fun b!7073034 () Bool)

(assert (=> b!7073034 (= e!4252322 e!4252326)))

(declare-fun res!2888822 () Bool)

(assert (=> b!7073034 (=> res!2888822 e!4252326)))

(assert (=> b!7073034 (= res!2888822 (not (= lt!2546967 lt!2546930)))))

(assert (=> b!7073034 (= lt!2546930 (set.union lt!2546947 lt!2546935))))

(declare-fun lt!2546964 () Context!13292)

(assert (=> b!7073034 (= lt!2546935 (derivationStepZipperUp!2234 lt!2546964 (h!74800 s!7408)))))

(assert (=> b!7073034 (= lt!2546947 (derivationStepZipperDown!2284 (h!74801 (exprs!7146 lt!2546928)) lt!2546964 (h!74800 s!7408)))))

(declare-fun ++!15784 (List!68477 List!68477) List!68477)

(assert (=> b!7073034 (= lt!2546964 (Context!13293 (++!15784 lt!2546937 (exprs!7146 ct2!306))))))

(declare-fun lt!2546956 () Unit!162010)

(assert (=> b!7073034 (= lt!2546956 (lemmaConcatPreservesForall!961 lt!2546937 (exprs!7146 ct2!306) lambda!425910))))

(declare-fun lt!2546973 () Unit!162010)

(assert (=> b!7073034 (= lt!2546973 (lemmaConcatPreservesForall!961 lt!2546937 (exprs!7146 ct2!306) lambda!425910))))

(declare-fun b!7073035 () Bool)

(declare-fun res!2888824 () Bool)

(assert (=> b!7073035 (=> res!2888824 e!4252317)))

(declare-fun isEmpty!39892 (List!68477) Bool)

(assert (=> b!7073035 (= res!2888824 (isEmpty!39892 (exprs!7146 lt!2546928)))))

(assert (=> b!7073036 (= e!4252312 (not e!4252309))))

(declare-fun res!2888825 () Bool)

(assert (=> b!7073036 (=> res!2888825 e!4252309)))

(declare-fun lt!2546948 () (Set Context!13292))

(assert (=> b!7073036 (= res!2888825 (not (matchZipper!3190 lt!2546948 s!7408)))))

(assert (=> b!7073036 (= lt!2546948 (set.insert lt!2546931 (as set.empty (Set Context!13292))))))

(declare-fun getWitness!1755 ((Set Context!13292) Int) Context!13292)

(assert (=> b!7073036 (= lt!2546931 (getWitness!1755 lt!2546932 lambda!425908))))

(declare-fun lt!2546927 () List!68478)

(declare-fun exists!3701 (List!68478 Int) Bool)

(assert (=> b!7073036 (exists!3701 lt!2546927 lambda!425908)))

(declare-fun lt!2546972 () Unit!162010)

(declare-fun lemmaZipperMatchesExistsMatchingContext!571 (List!68478 List!68476) Unit!162010)

(assert (=> b!7073036 (= lt!2546972 (lemmaZipperMatchesExistsMatchingContext!571 lt!2546927 s!7408))))

(assert (=> b!7073036 (= lt!2546927 (toList!10991 lt!2546932))))

(declare-fun b!7073037 () Bool)

(assert (=> b!7073037 (= e!4252323 (= (++!15783 lt!2546965 (_2!37440 lt!2546961)) s!7408))))

(declare-fun b!7073038 () Bool)

(assert (=> b!7073038 (= e!4252318 e!4252307)))

(declare-fun res!2888803 () Bool)

(assert (=> b!7073038 (=> res!2888803 e!4252307)))

(assert (=> b!7073038 (= res!2888803 (matchZipper!3190 lt!2546935 (t!382259 s!7408)))))

(declare-fun lt!2546977 () Unit!162010)

(assert (=> b!7073038 (= lt!2546977 (lemmaConcatPreservesForall!961 lt!2546937 (exprs!7146 ct2!306) lambda!425910))))

(declare-fun b!7073039 () Bool)

(declare-fun e!4252316 () Bool)

(assert (=> b!7073039 (= e!4252316 e!4252310)))

(declare-fun res!2888817 () Bool)

(assert (=> b!7073039 (=> res!2888817 e!4252310)))

(assert (=> b!7073039 (= res!2888817 (not (= lt!2546946 lt!2546948)))))

(assert (=> b!7073039 (= lt!2546946 (set.insert lt!2546945 (as set.empty (Set Context!13292))))))

(declare-fun lt!2546962 () Unit!162010)

(assert (=> b!7073039 (= lt!2546962 (lemmaConcatPreservesForall!961 (exprs!7146 lt!2546928) (exprs!7146 ct2!306) lambda!425910))))

(declare-fun b!7073040 () Bool)

(assert (=> b!7073040 (= e!4252315 e!4252306)))

(declare-fun res!2888814 () Bool)

(assert (=> b!7073040 (=> res!2888814 e!4252306)))

(assert (=> b!7073040 (= res!2888814 (not (= lt!2546957 lt!2546942)))))

(assert (=> b!7073040 (= lt!2546942 (set.union lt!2546958 lt!2546936))))

(assert (=> b!7073040 (= lt!2546936 (derivationStepZipperUp!2234 lt!2546959 (h!74800 s!7408)))))

(assert (=> b!7073041 (= e!4252309 e!4252316)))

(declare-fun res!2888821 () Bool)

(assert (=> b!7073041 (=> res!2888821 e!4252316)))

(assert (=> b!7073041 (= res!2888821 (or (not (= lt!2546945 lt!2546931)) (not (set.member lt!2546928 z1!570))))))

(assert (=> b!7073041 (= lt!2546945 (Context!13293 (++!15784 (exprs!7146 lt!2546928) (exprs!7146 ct2!306))))))

(declare-fun lt!2546971 () Unit!162010)

(assert (=> b!7073041 (= lt!2546971 (lemmaConcatPreservesForall!961 (exprs!7146 lt!2546928) (exprs!7146 ct2!306) lambda!425910))))

(declare-fun lambda!425909 () Int)

(declare-fun mapPost2!479 ((Set Context!13292) Int Context!13292) Context!13292)

(assert (=> b!7073041 (= lt!2546928 (mapPost2!479 z1!570 lambda!425909 lt!2546931))))

(assert (= (and start!687174 res!2888811) b!7073028))

(assert (= (and b!7073028 res!2888813) b!7073036))

(assert (= (and b!7073036 (not res!2888825)) b!7073018))

(assert (= (and b!7073018 (not res!2888812)) b!7073041))

(assert (= (and b!7073041 (not res!2888821)) b!7073039))

(assert (= (and b!7073039 (not res!2888817)) b!7073022))

(assert (= (and b!7073022 (not res!2888823)) b!7073025))

(assert (= (and b!7073025 (not res!2888815)) b!7073035))

(assert (= (and b!7073035 (not res!2888824)) b!7073013))

(assert (= (and b!7073013 (not res!2888801)) b!7073034))

(assert (= (and b!7073034 (not res!2888822)) b!7073015))

(assert (= (and b!7073015 (not res!2888820)) b!7073014))

(assert (= (and b!7073015 res!2888804) b!7073031))

(assert (= (and b!7073015 (not res!2888800)) b!7073027))

(assert (= (and b!7073027 (not res!2888818)) b!7073038))

(assert (= (and b!7073038 (not res!2888803)) b!7073024))

(assert (= (and b!7073024 (not res!2888810)) b!7073020))

(assert (= (and b!7073020 (not res!2888807)) b!7073019))

(assert (= (and b!7073019 (not res!2888802)) b!7073029))

(assert (= (and b!7073029 (not res!2888819)) b!7073030))

(assert (= (and b!7073030 (not res!2888805)) b!7073040))

(assert (= (and b!7073040 (not res!2888814)) b!7073021))

(assert (= (and b!7073021 res!2888816) b!7073026))

(assert (= (and b!7073021 (not res!2888809)) b!7073033))

(assert (= (and b!7073033 (not res!2888806)) b!7073023))

(assert (= (and b!7073023 (not res!2888808)) b!7073037))

(assert (= (and start!687174 condSetEmpty!50282) setIsEmpty!50282))

(assert (= (and start!687174 (not condSetEmpty!50282)) setNonEmpty!50282))

(assert (= setNonEmpty!50282 b!7073016))

(assert (= start!687174 b!7073017))

(assert (= (and start!687174 (is-Cons!68352 s!7408)) b!7073032))

(declare-fun m!7799538 () Bool)

(assert (=> b!7073019 m!7799538))

(declare-fun m!7799540 () Bool)

(assert (=> b!7073030 m!7799540))

(declare-fun m!7799542 () Bool)

(assert (=> b!7073030 m!7799542))

(declare-fun m!7799544 () Bool)

(assert (=> b!7073030 m!7799544))

(declare-fun m!7799546 () Bool)

(assert (=> b!7073030 m!7799546))

(declare-fun m!7799548 () Bool)

(assert (=> b!7073030 m!7799548))

(declare-fun m!7799550 () Bool)

(assert (=> b!7073041 m!7799550))

(declare-fun m!7799552 () Bool)

(assert (=> b!7073041 m!7799552))

(declare-fun m!7799554 () Bool)

(assert (=> b!7073041 m!7799554))

(declare-fun m!7799556 () Bool)

(assert (=> b!7073041 m!7799556))

(declare-fun m!7799558 () Bool)

(assert (=> setNonEmpty!50282 m!7799558))

(declare-fun m!7799560 () Bool)

(assert (=> b!7073036 m!7799560))

(declare-fun m!7799562 () Bool)

(assert (=> b!7073036 m!7799562))

(declare-fun m!7799564 () Bool)

(assert (=> b!7073036 m!7799564))

(declare-fun m!7799566 () Bool)

(assert (=> b!7073036 m!7799566))

(declare-fun m!7799568 () Bool)

(assert (=> b!7073036 m!7799568))

(declare-fun m!7799570 () Bool)

(assert (=> b!7073036 m!7799570))

(declare-fun m!7799572 () Bool)

(assert (=> b!7073026 m!7799572))

(declare-fun m!7799574 () Bool)

(assert (=> b!7073035 m!7799574))

(declare-fun m!7799576 () Bool)

(assert (=> b!7073037 m!7799576))

(declare-fun m!7799578 () Bool)

(assert (=> b!7073024 m!7799578))

(assert (=> b!7073024 m!7799578))

(declare-fun m!7799580 () Bool)

(assert (=> b!7073039 m!7799580))

(assert (=> b!7073039 m!7799554))

(declare-fun m!7799582 () Bool)

(assert (=> start!687174 m!7799582))

(declare-fun m!7799584 () Bool)

(assert (=> start!687174 m!7799584))

(declare-fun m!7799586 () Bool)

(assert (=> start!687174 m!7799586))

(declare-fun m!7799588 () Bool)

(assert (=> b!7073040 m!7799588))

(declare-fun m!7799590 () Bool)

(assert (=> b!7073034 m!7799590))

(assert (=> b!7073034 m!7799578))

(assert (=> b!7073034 m!7799578))

(declare-fun m!7799592 () Bool)

(assert (=> b!7073034 m!7799592))

(declare-fun m!7799594 () Bool)

(assert (=> b!7073034 m!7799594))

(declare-fun m!7799596 () Bool)

(assert (=> b!7073013 m!7799596))

(declare-fun m!7799598 () Bool)

(assert (=> b!7073013 m!7799598))

(declare-fun m!7799600 () Bool)

(assert (=> b!7073020 m!7799600))

(declare-fun m!7799602 () Bool)

(assert (=> b!7073020 m!7799602))

(declare-fun m!7799604 () Bool)

(assert (=> b!7073020 m!7799604))

(declare-fun m!7799606 () Bool)

(assert (=> b!7073020 m!7799606))

(assert (=> b!7073020 m!7799578))

(declare-fun m!7799608 () Bool)

(assert (=> b!7073020 m!7799608))

(assert (=> b!7073020 m!7799578))

(declare-fun m!7799610 () Bool)

(assert (=> b!7073020 m!7799610))

(declare-fun m!7799612 () Bool)

(assert (=> b!7073020 m!7799612))

(declare-fun m!7799614 () Bool)

(assert (=> b!7073020 m!7799614))

(declare-fun m!7799616 () Bool)

(assert (=> b!7073020 m!7799616))

(declare-fun m!7799618 () Bool)

(assert (=> b!7073015 m!7799618))

(declare-fun m!7799620 () Bool)

(assert (=> b!7073015 m!7799620))

(declare-fun m!7799622 () Bool)

(assert (=> b!7073015 m!7799622))

(declare-fun m!7799624 () Bool)

(assert (=> b!7073015 m!7799624))

(assert (=> b!7073015 m!7799578))

(assert (=> b!7073015 m!7799578))

(assert (=> b!7073015 m!7799578))

(declare-fun m!7799626 () Bool)

(assert (=> b!7073023 m!7799626))

(declare-fun m!7799628 () Bool)

(assert (=> b!7073023 m!7799628))

(declare-fun m!7799630 () Bool)

(assert (=> b!7073023 m!7799630))

(declare-fun m!7799632 () Bool)

(assert (=> b!7073023 m!7799632))

(declare-fun m!7799634 () Bool)

(assert (=> b!7073023 m!7799634))

(declare-fun m!7799636 () Bool)

(assert (=> b!7073023 m!7799636))

(declare-fun m!7799638 () Bool)

(assert (=> b!7073023 m!7799638))

(assert (=> b!7073023 m!7799634))

(declare-fun m!7799640 () Bool)

(assert (=> b!7073023 m!7799640))

(declare-fun m!7799642 () Bool)

(assert (=> b!7073023 m!7799642))

(declare-fun m!7799644 () Bool)

(assert (=> b!7073023 m!7799644))

(assert (=> b!7073023 m!7799642))

(declare-fun m!7799646 () Bool)

(assert (=> b!7073021 m!7799646))

(declare-fun m!7799648 () Bool)

(assert (=> b!7073021 m!7799648))

(declare-fun m!7799650 () Bool)

(assert (=> b!7073021 m!7799650))

(declare-fun m!7799652 () Bool)

(assert (=> b!7073018 m!7799652))

(declare-fun m!7799654 () Bool)

(assert (=> b!7073022 m!7799654))

(declare-fun m!7799656 () Bool)

(assert (=> b!7073022 m!7799656))

(declare-fun m!7799658 () Bool)

(assert (=> b!7073022 m!7799658))

(declare-fun m!7799660 () Bool)

(assert (=> b!7073022 m!7799660))

(assert (=> b!7073022 m!7799554))

(declare-fun m!7799662 () Bool)

(assert (=> b!7073038 m!7799662))

(assert (=> b!7073038 m!7799578))

(assert (=> b!7073014 m!7799662))

(declare-fun m!7799664 () Bool)

(assert (=> b!7073029 m!7799664))

(assert (=> b!7073031 m!7799662))

(assert (=> b!7073031 m!7799578))

(push 1)

(assert (not b!7073022))

(assert (not b!7073014))

(assert (not b!7073015))

(assert (not b!7073020))

(assert (not b!7073019))

(assert (not b!7073016))

(assert (not b!7073023))

(assert (not start!687174))

(assert (not b!7073036))

(assert (not b!7073034))

(assert (not b!7073032))

(assert (not b!7073013))

(assert (not b!7073035))

(assert (not b!7073037))

(assert tp_is_empty!44525)

(assert (not b!7073039))

(assert (not b!7073041))

(assert (not b!7073024))

(assert (not b!7073029))

(assert (not b!7073040))

(assert (not b!7073030))

(assert (not b!7073017))

(assert (not setNonEmpty!50282))

(assert (not b!7073021))

(assert (not b!7073038))

(assert (not b!7073026))

(assert (not b!7073031))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7073151 () Bool)

(declare-fun res!2888909 () Bool)

(declare-fun e!4252395 () Bool)

(assert (=> b!7073151 (=> (not res!2888909) (not e!4252395))))

(declare-fun lt!2547138 () List!68476)

(declare-fun size!41218 (List!68476) Int)

(assert (=> b!7073151 (= res!2888909 (= (size!41218 lt!2547138) (+ (size!41218 (_1!37440 lt!2546961)) (size!41218 (_2!37440 lt!2546961)))))))

(declare-fun b!7073149 () Bool)

(declare-fun e!4252394 () List!68476)

(assert (=> b!7073149 (= e!4252394 (_2!37440 lt!2546961))))

(declare-fun b!7073152 () Bool)

(assert (=> b!7073152 (= e!4252395 (or (not (= (_2!37440 lt!2546961) Nil!68352)) (= lt!2547138 (_1!37440 lt!2546961))))))

(declare-fun d!2211887 () Bool)

(assert (=> d!2211887 e!4252395))

(declare-fun res!2888910 () Bool)

(assert (=> d!2211887 (=> (not res!2888910) (not e!4252395))))

(declare-fun content!13802 (List!68476) (Set C!35570))

(assert (=> d!2211887 (= res!2888910 (= (content!13802 lt!2547138) (set.union (content!13802 (_1!37440 lt!2546961)) (content!13802 (_2!37440 lt!2546961)))))))

(assert (=> d!2211887 (= lt!2547138 e!4252394)))

(declare-fun c!1319447 () Bool)

(assert (=> d!2211887 (= c!1319447 (is-Nil!68352 (_1!37440 lt!2546961)))))

(assert (=> d!2211887 (= (++!15783 (_1!37440 lt!2546961) (_2!37440 lt!2546961)) lt!2547138)))

(declare-fun b!7073150 () Bool)

(assert (=> b!7073150 (= e!4252394 (Cons!68352 (h!74800 (_1!37440 lt!2546961)) (++!15783 (t!382259 (_1!37440 lt!2546961)) (_2!37440 lt!2546961))))))

(assert (= (and d!2211887 c!1319447) b!7073149))

(assert (= (and d!2211887 (not c!1319447)) b!7073150))

(assert (= (and d!2211887 res!2888910) b!7073151))

(assert (= (and b!7073151 res!2888909) b!7073152))

(declare-fun m!7799794 () Bool)

(assert (=> b!7073151 m!7799794))

(declare-fun m!7799796 () Bool)

(assert (=> b!7073151 m!7799796))

(declare-fun m!7799798 () Bool)

(assert (=> b!7073151 m!7799798))

(declare-fun m!7799800 () Bool)

(assert (=> d!2211887 m!7799800))

(declare-fun m!7799802 () Bool)

(assert (=> d!2211887 m!7799802))

(declare-fun m!7799804 () Bool)

(assert (=> d!2211887 m!7799804))

(declare-fun m!7799806 () Bool)

(assert (=> b!7073150 m!7799806))

(assert (=> b!7073029 d!2211887))

(declare-fun d!2211889 () Bool)

(declare-fun isEmpty!39894 (Option!16969) Bool)

(assert (=> d!2211889 (= (isDefined!13670 lt!2546939) (not (isEmpty!39894 lt!2546939)))))

(declare-fun bs!1880830 () Bool)

(assert (= bs!1880830 d!2211889))

(declare-fun m!7799808 () Bool)

(assert (=> bs!1880830 m!7799808))

(assert (=> b!7073020 d!2211889))

(declare-fun d!2211891 () Bool)

(assert (=> d!2211891 (= (get!23945 lt!2546939) (v!53262 lt!2546939))))

(assert (=> b!7073020 d!2211891))

(declare-fun bs!1880831 () Bool)

(declare-fun d!2211893 () Bool)

(assert (= bs!1880831 (and d!2211893 b!7073041)))

(declare-fun lambda!425962 () Int)

(assert (=> bs!1880831 (= lambda!425962 lambda!425910)))

(assert (=> d!2211893 (= (derivationStepZipperDown!2284 (h!74801 (exprs!7146 lt!2546928)) (Context!13293 (++!15784 (exprs!7146 lt!2546959) (exprs!7146 ct2!306))) (h!74800 s!7408)) (appendTo!771 (derivationStepZipperDown!2284 (h!74801 (exprs!7146 lt!2546928)) lt!2546959 (h!74800 s!7408)) ct2!306))))

(declare-fun lt!2547144 () Unit!162010)

(assert (=> d!2211893 (= lt!2547144 (lemmaConcatPreservesForall!961 (exprs!7146 lt!2546959) (exprs!7146 ct2!306) lambda!425962))))

(declare-fun lt!2547143 () Unit!162010)

(declare-fun choose!54239 (Context!13292 Regex!17650 C!35570 Context!13292) Unit!162010)

(assert (=> d!2211893 (= lt!2547143 (choose!54239 lt!2546959 (h!74801 (exprs!7146 lt!2546928)) (h!74800 s!7408) ct2!306))))

(declare-fun validRegex!8974 (Regex!17650) Bool)

(assert (=> d!2211893 (validRegex!8974 (h!74801 (exprs!7146 lt!2546928)))))

(assert (=> d!2211893 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!121 lt!2546959 (h!74801 (exprs!7146 lt!2546928)) (h!74800 s!7408) ct2!306) lt!2547143)))

(declare-fun bs!1880832 () Bool)

(assert (= bs!1880832 d!2211893))

(declare-fun m!7799810 () Bool)

(assert (=> bs!1880832 m!7799810))

(assert (=> bs!1880832 m!7799608))

(declare-fun m!7799812 () Bool)

(assert (=> bs!1880832 m!7799812))

(declare-fun m!7799814 () Bool)

(assert (=> bs!1880832 m!7799814))

(declare-fun m!7799816 () Bool)

(assert (=> bs!1880832 m!7799816))

(assert (=> bs!1880832 m!7799608))

(declare-fun m!7799818 () Bool)

(assert (=> bs!1880832 m!7799818))

(declare-fun m!7799820 () Bool)

(assert (=> bs!1880832 m!7799820))

(assert (=> b!7073020 d!2211893))

(declare-fun d!2211895 () Bool)

(assert (=> d!2211895 (isDefined!13670 (findConcatSeparationZippers!485 lt!2546958 (set.insert ct2!306 (as set.empty (Set Context!13292))) Nil!68352 (t!382259 s!7408) (t!382259 s!7408)))))

(declare-fun lt!2547147 () Unit!162010)

(declare-fun choose!54240 ((Set Context!13292) Context!13292 List!68476) Unit!162010)

(assert (=> d!2211895 (= lt!2547147 (choose!54240 lt!2546958 ct2!306 (t!382259 s!7408)))))

(assert (=> d!2211895 (matchZipper!3190 (appendTo!771 lt!2546958 ct2!306) (t!382259 s!7408))))

(assert (=> d!2211895 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!473 lt!2546958 ct2!306 (t!382259 s!7408)) lt!2547147)))

(declare-fun bs!1880833 () Bool)

(assert (= bs!1880833 d!2211895))

(assert (=> bs!1880833 m!7799600))

(declare-fun m!7799822 () Bool)

(assert (=> bs!1880833 m!7799822))

(declare-fun m!7799824 () Bool)

(assert (=> bs!1880833 m!7799824))

(assert (=> bs!1880833 m!7799614))

(declare-fun m!7799826 () Bool)

(assert (=> bs!1880833 m!7799826))

(assert (=> bs!1880833 m!7799614))

(assert (=> bs!1880833 m!7799822))

(assert (=> bs!1880833 m!7799600))

(declare-fun m!7799828 () Bool)

(assert (=> bs!1880833 m!7799828))

(assert (=> b!7073020 d!2211895))

(declare-fun call!642837 () List!68477)

(declare-fun call!642839 () (Set Context!13292))

(declare-fun bm!642830 () Bool)

(declare-fun c!1319459 () Bool)

(assert (=> bm!642830 (= call!642839 (derivationStepZipperDown!2284 (ite c!1319459 (regTwo!35813 (h!74801 (exprs!7146 lt!2546928))) (regOne!35812 (h!74801 (exprs!7146 lt!2546928)))) (ite c!1319459 lt!2546959 (Context!13293 call!642837)) (h!74800 s!7408)))))

(declare-fun b!7073175 () Bool)

(declare-fun e!4252411 () (Set Context!13292))

(declare-fun call!642835 () (Set Context!13292))

(assert (=> b!7073175 (= e!4252411 call!642835)))

(declare-fun b!7073176 () Bool)

(declare-fun c!1319461 () Bool)

(assert (=> b!7073176 (= c!1319461 (is-Star!17650 (h!74801 (exprs!7146 lt!2546928))))))

(declare-fun e!4252408 () (Set Context!13292))

(assert (=> b!7073176 (= e!4252408 e!4252411)))

(declare-fun b!7073177 () Bool)

(declare-fun e!4252412 () (Set Context!13292))

(declare-fun e!4252413 () (Set Context!13292))

(assert (=> b!7073177 (= e!4252412 e!4252413)))

(assert (=> b!7073177 (= c!1319459 (is-Union!17650 (h!74801 (exprs!7146 lt!2546928))))))

(declare-fun bm!642831 () Bool)

(declare-fun call!642840 () (Set Context!13292))

(assert (=> bm!642831 (= call!642835 call!642840)))

(declare-fun b!7073178 () Bool)

(declare-fun e!4252409 () Bool)

(assert (=> b!7073178 (= e!4252409 (nullable!7333 (regOne!35812 (h!74801 (exprs!7146 lt!2546928)))))))

(declare-fun bm!642832 () Bool)

(declare-fun call!642838 () List!68477)

(assert (=> bm!642832 (= call!642838 call!642837)))

(declare-fun b!7073179 () Bool)

(declare-fun c!1319460 () Bool)

(assert (=> b!7073179 (= c!1319460 e!4252409)))

(declare-fun res!2888913 () Bool)

(assert (=> b!7073179 (=> (not res!2888913) (not e!4252409))))

(assert (=> b!7073179 (= res!2888913 (is-Concat!26495 (h!74801 (exprs!7146 lt!2546928))))))

(declare-fun e!4252410 () (Set Context!13292))

(assert (=> b!7073179 (= e!4252413 e!4252410)))

(declare-fun d!2211897 () Bool)

(declare-fun c!1319463 () Bool)

(assert (=> d!2211897 (= c!1319463 (and (is-ElementMatch!17650 (h!74801 (exprs!7146 lt!2546928))) (= (c!1319431 (h!74801 (exprs!7146 lt!2546928))) (h!74800 s!7408))))))

(assert (=> d!2211897 (= (derivationStepZipperDown!2284 (h!74801 (exprs!7146 lt!2546928)) lt!2546959 (h!74800 s!7408)) e!4252412)))

(declare-fun b!7073180 () Bool)

(assert (=> b!7073180 (= e!4252408 call!642835)))

(declare-fun b!7073181 () Bool)

(assert (=> b!7073181 (= e!4252412 (set.insert lt!2546959 (as set.empty (Set Context!13292))))))

(declare-fun b!7073182 () Bool)

(assert (=> b!7073182 (= e!4252410 e!4252408)))

(declare-fun c!1319462 () Bool)

(assert (=> b!7073182 (= c!1319462 (is-Concat!26495 (h!74801 (exprs!7146 lt!2546928))))))

(declare-fun b!7073183 () Bool)

(assert (=> b!7073183 (= e!4252411 (as set.empty (Set Context!13292)))))

(declare-fun b!7073184 () Bool)

(assert (=> b!7073184 (= e!4252410 (set.union call!642839 call!642840))))

(declare-fun bm!642833 () Bool)

(declare-fun call!642836 () (Set Context!13292))

(assert (=> bm!642833 (= call!642836 (derivationStepZipperDown!2284 (ite c!1319459 (regOne!35813 (h!74801 (exprs!7146 lt!2546928))) (ite c!1319460 (regTwo!35812 (h!74801 (exprs!7146 lt!2546928))) (ite c!1319462 (regOne!35812 (h!74801 (exprs!7146 lt!2546928))) (reg!17979 (h!74801 (exprs!7146 lt!2546928)))))) (ite (or c!1319459 c!1319460) lt!2546959 (Context!13293 call!642838)) (h!74800 s!7408)))))

(declare-fun bm!642834 () Bool)

(declare-fun $colon$colon!2662 (List!68477 Regex!17650) List!68477)

(assert (=> bm!642834 (= call!642837 ($colon$colon!2662 (exprs!7146 lt!2546959) (ite (or c!1319460 c!1319462) (regTwo!35812 (h!74801 (exprs!7146 lt!2546928))) (h!74801 (exprs!7146 lt!2546928)))))))

(declare-fun b!7073185 () Bool)

(assert (=> b!7073185 (= e!4252413 (set.union call!642836 call!642839))))

(declare-fun bm!642835 () Bool)

(assert (=> bm!642835 (= call!642840 call!642836)))

(assert (= (and d!2211897 c!1319463) b!7073181))

(assert (= (and d!2211897 (not c!1319463)) b!7073177))

(assert (= (and b!7073177 c!1319459) b!7073185))

(assert (= (and b!7073177 (not c!1319459)) b!7073179))

(assert (= (and b!7073179 res!2888913) b!7073178))

(assert (= (and b!7073179 c!1319460) b!7073184))

(assert (= (and b!7073179 (not c!1319460)) b!7073182))

(assert (= (and b!7073182 c!1319462) b!7073180))

(assert (= (and b!7073182 (not c!1319462)) b!7073176))

(assert (= (and b!7073176 c!1319461) b!7073175))

(assert (= (and b!7073176 (not c!1319461)) b!7073183))

(assert (= (or b!7073180 b!7073175) bm!642832))

(assert (= (or b!7073180 b!7073175) bm!642831))

(assert (= (or b!7073184 bm!642831) bm!642835))

(assert (= (or b!7073184 bm!642832) bm!642834))

(assert (= (or b!7073185 bm!642835) bm!642833))

(assert (= (or b!7073185 b!7073184) bm!642830))

(declare-fun m!7799830 () Bool)

(assert (=> b!7073181 m!7799830))

(declare-fun m!7799832 () Bool)

(assert (=> bm!642830 m!7799832))

(declare-fun m!7799834 () Bool)

(assert (=> b!7073178 m!7799834))

(declare-fun m!7799836 () Bool)

(assert (=> bm!642833 m!7799836))

(declare-fun m!7799838 () Bool)

(assert (=> bm!642834 m!7799838))

(assert (=> b!7073020 d!2211897))

(declare-fun bs!1880834 () Bool)

(declare-fun d!2211899 () Bool)

(assert (= bs!1880834 (and d!2211899 b!7073041)))

(declare-fun lambda!425967 () Int)

(assert (=> bs!1880834 (= lambda!425967 lambda!425909)))

(assert (=> d!2211899 true))

(declare-fun map!15996 ((Set Context!13292) Int) (Set Context!13292))

(assert (=> d!2211899 (= (appendTo!771 lt!2546958 ct2!306) (map!15996 lt!2546958 lambda!425967))))

(declare-fun bs!1880835 () Bool)

(assert (= bs!1880835 d!2211899))

(declare-fun m!7799840 () Bool)

(assert (=> bs!1880835 m!7799840))

(assert (=> b!7073020 d!2211899))

(declare-fun d!2211901 () Bool)

(declare-fun forall!16603 (List!68477 Int) Bool)

(assert (=> d!2211901 (forall!16603 (++!15784 lt!2546937 (exprs!7146 ct2!306)) lambda!425910)))

(declare-fun lt!2547152 () Unit!162010)

(declare-fun choose!54241 (List!68477 List!68477 Int) Unit!162010)

(assert (=> d!2211901 (= lt!2547152 (choose!54241 lt!2546937 (exprs!7146 ct2!306) lambda!425910))))

(assert (=> d!2211901 (forall!16603 lt!2546937 lambda!425910)))

(assert (=> d!2211901 (= (lemmaConcatPreservesForall!961 lt!2546937 (exprs!7146 ct2!306) lambda!425910) lt!2547152)))

(declare-fun bs!1880836 () Bool)

(assert (= bs!1880836 d!2211901))

(assert (=> bs!1880836 m!7799592))

(assert (=> bs!1880836 m!7799592))

(declare-fun m!7799842 () Bool)

(assert (=> bs!1880836 m!7799842))

(declare-fun m!7799844 () Bool)

(assert (=> bs!1880836 m!7799844))

(declare-fun m!7799846 () Bool)

(assert (=> bs!1880836 m!7799846))

(assert (=> b!7073020 d!2211901))

(declare-fun d!2211903 () Bool)

(declare-fun c!1319467 () Bool)

(declare-fun isEmpty!39895 (List!68476) Bool)

(assert (=> d!2211903 (= c!1319467 (isEmpty!39895 (_1!37440 lt!2546961)))))

(declare-fun e!4252416 () Bool)

(assert (=> d!2211903 (= (matchZipper!3190 lt!2546958 (_1!37440 lt!2546961)) e!4252416)))

(declare-fun b!7073190 () Bool)

(declare-fun nullableZipper!2702 ((Set Context!13292)) Bool)

(assert (=> b!7073190 (= e!4252416 (nullableZipper!2702 lt!2546958))))

(declare-fun b!7073191 () Bool)

(declare-fun head!14410 (List!68476) C!35570)

(declare-fun tail!13838 (List!68476) List!68476)

(assert (=> b!7073191 (= e!4252416 (matchZipper!3190 (derivationStepZipper!3100 lt!2546958 (head!14410 (_1!37440 lt!2546961))) (tail!13838 (_1!37440 lt!2546961))))))

(assert (= (and d!2211903 c!1319467) b!7073190))

(assert (= (and d!2211903 (not c!1319467)) b!7073191))

(declare-fun m!7799848 () Bool)

(assert (=> d!2211903 m!7799848))

(declare-fun m!7799850 () Bool)

(assert (=> b!7073190 m!7799850))

(declare-fun m!7799852 () Bool)

(assert (=> b!7073191 m!7799852))

(assert (=> b!7073191 m!7799852))

(declare-fun m!7799854 () Bool)

(assert (=> b!7073191 m!7799854))

(declare-fun m!7799856 () Bool)

(assert (=> b!7073191 m!7799856))

(assert (=> b!7073191 m!7799854))

(assert (=> b!7073191 m!7799856))

(declare-fun m!7799858 () Bool)

(assert (=> b!7073191 m!7799858))

(assert (=> b!7073020 d!2211903))

(declare-fun b!7073210 () Bool)

(declare-fun e!4252431 () Option!16969)

(assert (=> b!7073210 (= e!4252431 (Some!16968 (tuple2!68275 Nil!68352 (t!382259 s!7408))))))

(declare-fun b!7073211 () Bool)

(declare-fun e!4252430 () Bool)

(assert (=> b!7073211 (= e!4252430 (matchZipper!3190 lt!2546944 (t!382259 s!7408)))))

(declare-fun d!2211905 () Bool)

(declare-fun e!4252427 () Bool)

(assert (=> d!2211905 e!4252427))

(declare-fun res!2888928 () Bool)

(assert (=> d!2211905 (=> res!2888928 e!4252427)))

(declare-fun e!4252428 () Bool)

(assert (=> d!2211905 (= res!2888928 e!4252428)))

(declare-fun res!2888925 () Bool)

(assert (=> d!2211905 (=> (not res!2888925) (not e!4252428))))

(declare-fun lt!2547160 () Option!16969)

(assert (=> d!2211905 (= res!2888925 (isDefined!13670 lt!2547160))))

(assert (=> d!2211905 (= lt!2547160 e!4252431)))

(declare-fun c!1319472 () Bool)

(assert (=> d!2211905 (= c!1319472 e!4252430)))

(declare-fun res!2888927 () Bool)

(assert (=> d!2211905 (=> (not res!2888927) (not e!4252430))))

(assert (=> d!2211905 (= res!2888927 (matchZipper!3190 lt!2546958 Nil!68352))))

(assert (=> d!2211905 (= (++!15783 Nil!68352 (t!382259 s!7408)) (t!382259 s!7408))))

(assert (=> d!2211905 (= (findConcatSeparationZippers!485 lt!2546958 lt!2546944 Nil!68352 (t!382259 s!7408) (t!382259 s!7408)) lt!2547160)))

(declare-fun b!7073212 () Bool)

(assert (=> b!7073212 (= e!4252428 (= (++!15783 (_1!37440 (get!23945 lt!2547160)) (_2!37440 (get!23945 lt!2547160))) (t!382259 s!7408)))))

(declare-fun b!7073213 () Bool)

(declare-fun e!4252429 () Option!16969)

(assert (=> b!7073213 (= e!4252429 None!16968)))

(declare-fun b!7073214 () Bool)

(declare-fun res!2888924 () Bool)

(assert (=> b!7073214 (=> (not res!2888924) (not e!4252428))))

(assert (=> b!7073214 (= res!2888924 (matchZipper!3190 lt!2546944 (_2!37440 (get!23945 lt!2547160))))))

(declare-fun b!7073215 () Bool)

(declare-fun lt!2547159 () Unit!162010)

(declare-fun lt!2547161 () Unit!162010)

(assert (=> b!7073215 (= lt!2547159 lt!2547161)))

(assert (=> b!7073215 (= (++!15783 (++!15783 Nil!68352 (Cons!68352 (h!74800 (t!382259 s!7408)) Nil!68352)) (t!382259 (t!382259 s!7408))) (t!382259 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2977 (List!68476 C!35570 List!68476 List!68476) Unit!162010)

(assert (=> b!7073215 (= lt!2547161 (lemmaMoveElementToOtherListKeepsConcatEq!2977 Nil!68352 (h!74800 (t!382259 s!7408)) (t!382259 (t!382259 s!7408)) (t!382259 s!7408)))))

(assert (=> b!7073215 (= e!4252429 (findConcatSeparationZippers!485 lt!2546958 lt!2546944 (++!15783 Nil!68352 (Cons!68352 (h!74800 (t!382259 s!7408)) Nil!68352)) (t!382259 (t!382259 s!7408)) (t!382259 s!7408)))))

(declare-fun b!7073216 () Bool)

(declare-fun res!2888926 () Bool)

(assert (=> b!7073216 (=> (not res!2888926) (not e!4252428))))

(assert (=> b!7073216 (= res!2888926 (matchZipper!3190 lt!2546958 (_1!37440 (get!23945 lt!2547160))))))

(declare-fun b!7073217 () Bool)

(assert (=> b!7073217 (= e!4252431 e!4252429)))

(declare-fun c!1319473 () Bool)

(assert (=> b!7073217 (= c!1319473 (is-Nil!68352 (t!382259 s!7408)))))

(declare-fun b!7073218 () Bool)

(assert (=> b!7073218 (= e!4252427 (not (isDefined!13670 lt!2547160)))))

(assert (= (and d!2211905 res!2888927) b!7073211))

(assert (= (and d!2211905 c!1319472) b!7073210))

(assert (= (and d!2211905 (not c!1319472)) b!7073217))

(assert (= (and b!7073217 c!1319473) b!7073213))

(assert (= (and b!7073217 (not c!1319473)) b!7073215))

(assert (= (and d!2211905 res!2888925) b!7073216))

(assert (= (and b!7073216 res!2888926) b!7073214))

(assert (= (and b!7073214 res!2888924) b!7073212))

(assert (= (and d!2211905 (not res!2888928)) b!7073218))

(declare-fun m!7799860 () Bool)

(assert (=> b!7073216 m!7799860))

(declare-fun m!7799862 () Bool)

(assert (=> b!7073216 m!7799862))

(assert (=> b!7073214 m!7799860))

(declare-fun m!7799864 () Bool)

(assert (=> b!7073214 m!7799864))

(declare-fun m!7799866 () Bool)

(assert (=> b!7073215 m!7799866))

(assert (=> b!7073215 m!7799866))

(declare-fun m!7799868 () Bool)

(assert (=> b!7073215 m!7799868))

(declare-fun m!7799870 () Bool)

(assert (=> b!7073215 m!7799870))

(assert (=> b!7073215 m!7799866))

(declare-fun m!7799872 () Bool)

(assert (=> b!7073215 m!7799872))

(assert (=> b!7073212 m!7799860))

(declare-fun m!7799874 () Bool)

(assert (=> b!7073212 m!7799874))

(declare-fun m!7799876 () Bool)

(assert (=> b!7073218 m!7799876))

(assert (=> d!2211905 m!7799876))

(declare-fun m!7799878 () Bool)

(assert (=> d!2211905 m!7799878))

(declare-fun m!7799880 () Bool)

(assert (=> d!2211905 m!7799880))

(declare-fun m!7799882 () Bool)

(assert (=> b!7073211 m!7799882))

(assert (=> b!7073020 d!2211905))

(declare-fun d!2211907 () Bool)

(assert (=> d!2211907 (forall!16603 (++!15784 (exprs!7146 lt!2546928) (exprs!7146 ct2!306)) lambda!425910)))

(declare-fun lt!2547162 () Unit!162010)

(assert (=> d!2211907 (= lt!2547162 (choose!54241 (exprs!7146 lt!2546928) (exprs!7146 ct2!306) lambda!425910))))

(assert (=> d!2211907 (forall!16603 (exprs!7146 lt!2546928) lambda!425910)))

(assert (=> d!2211907 (= (lemmaConcatPreservesForall!961 (exprs!7146 lt!2546928) (exprs!7146 ct2!306) lambda!425910) lt!2547162)))

(declare-fun bs!1880837 () Bool)

(assert (= bs!1880837 d!2211907))

(assert (=> bs!1880837 m!7799552))

(assert (=> bs!1880837 m!7799552))

(declare-fun m!7799884 () Bool)

(assert (=> bs!1880837 m!7799884))

(declare-fun m!7799886 () Bool)

(assert (=> bs!1880837 m!7799886))

(declare-fun m!7799888 () Bool)

(assert (=> bs!1880837 m!7799888))

(assert (=> b!7073039 d!2211907))

(declare-fun d!2211909 () Bool)

(declare-fun c!1319474 () Bool)

(assert (=> d!2211909 (= c!1319474 (isEmpty!39895 (_2!37440 lt!2546961)))))

(declare-fun e!4252432 () Bool)

(assert (=> d!2211909 (= (matchZipper!3190 lt!2546944 (_2!37440 lt!2546961)) e!4252432)))

(declare-fun b!7073219 () Bool)

(assert (=> b!7073219 (= e!4252432 (nullableZipper!2702 lt!2546944))))

(declare-fun b!7073220 () Bool)

(assert (=> b!7073220 (= e!4252432 (matchZipper!3190 (derivationStepZipper!3100 lt!2546944 (head!14410 (_2!37440 lt!2546961))) (tail!13838 (_2!37440 lt!2546961))))))

(assert (= (and d!2211909 c!1319474) b!7073219))

(assert (= (and d!2211909 (not c!1319474)) b!7073220))

(declare-fun m!7799890 () Bool)

(assert (=> d!2211909 m!7799890))

(declare-fun m!7799892 () Bool)

(assert (=> b!7073219 m!7799892))

(declare-fun m!7799894 () Bool)

(assert (=> b!7073220 m!7799894))

(assert (=> b!7073220 m!7799894))

(declare-fun m!7799896 () Bool)

(assert (=> b!7073220 m!7799896))

(declare-fun m!7799898 () Bool)

(assert (=> b!7073220 m!7799898))

(assert (=> b!7073220 m!7799896))

(assert (=> b!7073220 m!7799898))

(declare-fun m!7799900 () Bool)

(assert (=> b!7073220 m!7799900))

(assert (=> b!7073019 d!2211909))

(declare-fun d!2211911 () Bool)

(declare-fun c!1319475 () Bool)

(assert (=> d!2211911 (= c!1319475 (isEmpty!39895 (t!382259 s!7408)))))

(declare-fun e!4252433 () Bool)

(assert (=> d!2211911 (= (matchZipper!3190 lt!2546935 (t!382259 s!7408)) e!4252433)))

(declare-fun b!7073221 () Bool)

(assert (=> b!7073221 (= e!4252433 (nullableZipper!2702 lt!2546935))))

(declare-fun b!7073222 () Bool)

(assert (=> b!7073222 (= e!4252433 (matchZipper!3190 (derivationStepZipper!3100 lt!2546935 (head!14410 (t!382259 s!7408))) (tail!13838 (t!382259 s!7408))))))

(assert (= (and d!2211911 c!1319475) b!7073221))

(assert (= (and d!2211911 (not c!1319475)) b!7073222))

(declare-fun m!7799902 () Bool)

(assert (=> d!2211911 m!7799902))

(declare-fun m!7799904 () Bool)

(assert (=> b!7073221 m!7799904))

(declare-fun m!7799906 () Bool)

(assert (=> b!7073222 m!7799906))

(assert (=> b!7073222 m!7799906))

(declare-fun m!7799908 () Bool)

(assert (=> b!7073222 m!7799908))

(declare-fun m!7799910 () Bool)

(assert (=> b!7073222 m!7799910))

(assert (=> b!7073222 m!7799908))

(assert (=> b!7073222 m!7799910))

(declare-fun m!7799912 () Bool)

(assert (=> b!7073222 m!7799912))

(assert (=> b!7073038 d!2211911))

(assert (=> b!7073038 d!2211901))

(declare-fun bs!1880838 () Bool)

(declare-fun d!2211913 () Bool)

(assert (= bs!1880838 (and d!2211913 b!7073041)))

(declare-fun lambda!425970 () Int)

(assert (=> bs!1880838 (= lambda!425970 lambda!425910)))

(declare-fun bs!1880839 () Bool)

(assert (= bs!1880839 (and d!2211913 d!2211893)))

(assert (=> bs!1880839 (= lambda!425970 lambda!425962)))

(assert (=> d!2211913 (= (inv!86985 setElem!50282) (forall!16603 (exprs!7146 setElem!50282) lambda!425970))))

(declare-fun bs!1880840 () Bool)

(assert (= bs!1880840 d!2211913))

(declare-fun m!7799914 () Bool)

(assert (=> bs!1880840 m!7799914))

(assert (=> setNonEmpty!50282 d!2211913))

(assert (=> b!7073031 d!2211911))

(assert (=> b!7073031 d!2211901))

(declare-fun b!7073233 () Bool)

(declare-fun res!2888934 () Bool)

(declare-fun e!4252439 () Bool)

(assert (=> b!7073233 (=> (not res!2888934) (not e!4252439))))

(declare-fun lt!2547165 () List!68477)

(declare-fun size!41219 (List!68477) Int)

(assert (=> b!7073233 (= res!2888934 (= (size!41219 lt!2547165) (+ (size!41219 (exprs!7146 lt!2546928)) (size!41219 (exprs!7146 ct2!306)))))))

(declare-fun b!7073231 () Bool)

(declare-fun e!4252438 () List!68477)

(assert (=> b!7073231 (= e!4252438 (exprs!7146 ct2!306))))

(declare-fun b!7073232 () Bool)

(assert (=> b!7073232 (= e!4252438 (Cons!68353 (h!74801 (exprs!7146 lt!2546928)) (++!15784 (t!382260 (exprs!7146 lt!2546928)) (exprs!7146 ct2!306))))))

(declare-fun d!2211915 () Bool)

(assert (=> d!2211915 e!4252439))

(declare-fun res!2888933 () Bool)

(assert (=> d!2211915 (=> (not res!2888933) (not e!4252439))))

(declare-fun content!13803 (List!68477) (Set Regex!17650))

(assert (=> d!2211915 (= res!2888933 (= (content!13803 lt!2547165) (set.union (content!13803 (exprs!7146 lt!2546928)) (content!13803 (exprs!7146 ct2!306)))))))

(assert (=> d!2211915 (= lt!2547165 e!4252438)))

(declare-fun c!1319478 () Bool)

(assert (=> d!2211915 (= c!1319478 (is-Nil!68353 (exprs!7146 lt!2546928)))))

(assert (=> d!2211915 (= (++!15784 (exprs!7146 lt!2546928) (exprs!7146 ct2!306)) lt!2547165)))

(declare-fun b!7073234 () Bool)

(assert (=> b!7073234 (= e!4252439 (or (not (= (exprs!7146 ct2!306) Nil!68353)) (= lt!2547165 (exprs!7146 lt!2546928))))))

(assert (= (and d!2211915 c!1319478) b!7073231))

(assert (= (and d!2211915 (not c!1319478)) b!7073232))

(assert (= (and d!2211915 res!2888933) b!7073233))

(assert (= (and b!7073233 res!2888934) b!7073234))

(declare-fun m!7799916 () Bool)

(assert (=> b!7073233 m!7799916))

(declare-fun m!7799918 () Bool)

(assert (=> b!7073233 m!7799918))

(declare-fun m!7799920 () Bool)

(assert (=> b!7073233 m!7799920))

(declare-fun m!7799922 () Bool)

(assert (=> b!7073232 m!7799922))

(declare-fun m!7799924 () Bool)

(assert (=> d!2211915 m!7799924))

(declare-fun m!7799926 () Bool)

(assert (=> d!2211915 m!7799926))

(declare-fun m!7799928 () Bool)

(assert (=> d!2211915 m!7799928))

(assert (=> b!7073041 d!2211915))

(assert (=> b!7073041 d!2211907))

(declare-fun d!2211917 () Bool)

(declare-fun e!4252442 () Bool)

(assert (=> d!2211917 e!4252442))

(declare-fun res!2888937 () Bool)

(assert (=> d!2211917 (=> (not res!2888937) (not e!4252442))))

(declare-fun lt!2547168 () Context!13292)

(declare-fun dynLambda!27811 (Int Context!13292) Context!13292)

(assert (=> d!2211917 (= res!2888937 (= lt!2546931 (dynLambda!27811 lambda!425909 lt!2547168)))))

(declare-fun choose!54242 ((Set Context!13292) Int Context!13292) Context!13292)

(assert (=> d!2211917 (= lt!2547168 (choose!54242 z1!570 lambda!425909 lt!2546931))))

(assert (=> d!2211917 (set.member lt!2546931 (map!15996 z1!570 lambda!425909))))

(assert (=> d!2211917 (= (mapPost2!479 z1!570 lambda!425909 lt!2546931) lt!2547168)))

(declare-fun b!7073238 () Bool)

(assert (=> b!7073238 (= e!4252442 (set.member lt!2547168 z1!570))))

(assert (= (and d!2211917 res!2888937) b!7073238))

(declare-fun b_lambda!270039 () Bool)

(assert (=> (not b_lambda!270039) (not d!2211917)))

(declare-fun m!7799930 () Bool)

(assert (=> d!2211917 m!7799930))

(declare-fun m!7799932 () Bool)

(assert (=> d!2211917 m!7799932))

(declare-fun m!7799934 () Bool)

(assert (=> d!2211917 m!7799934))

(declare-fun m!7799936 () Bool)

(assert (=> d!2211917 m!7799936))

(declare-fun m!7799938 () Bool)

(assert (=> b!7073238 m!7799938))

(assert (=> b!7073041 d!2211917))

(declare-fun d!2211919 () Bool)

(declare-fun choose!54243 ((Set Context!13292) Int) (Set Context!13292))

(assert (=> d!2211919 (= (flatMap!2576 lt!2546969 lambda!425911) (choose!54243 lt!2546969 lambda!425911))))

(declare-fun bs!1880841 () Bool)

(assert (= bs!1880841 d!2211919))

(declare-fun m!7799940 () Bool)

(assert (=> bs!1880841 m!7799940))

(assert (=> b!7073030 d!2211919))

(declare-fun bm!642838 () Bool)

(declare-fun call!642843 () (Set Context!13292))

(assert (=> bm!642838 (= call!642843 (derivationStepZipperDown!2284 (h!74801 (exprs!7146 lt!2546928)) (Context!13293 (t!382260 (exprs!7146 lt!2546928))) (h!74800 s!7408)))))

(declare-fun b!7073249 () Bool)

(declare-fun e!4252449 () (Set Context!13292))

(assert (=> b!7073249 (= e!4252449 (set.union call!642843 (derivationStepZipperUp!2234 (Context!13293 (t!382260 (exprs!7146 lt!2546928))) (h!74800 s!7408))))))

(declare-fun d!2211921 () Bool)

(declare-fun c!1319484 () Bool)

(declare-fun e!4252450 () Bool)

(assert (=> d!2211921 (= c!1319484 e!4252450)))

(declare-fun res!2888940 () Bool)

(assert (=> d!2211921 (=> (not res!2888940) (not e!4252450))))

(assert (=> d!2211921 (= res!2888940 (is-Cons!68353 (exprs!7146 lt!2546928)))))

(assert (=> d!2211921 (= (derivationStepZipperUp!2234 lt!2546928 (h!74800 s!7408)) e!4252449)))

(declare-fun b!7073250 () Bool)

(declare-fun e!4252451 () (Set Context!13292))

(assert (=> b!7073250 (= e!4252451 (as set.empty (Set Context!13292)))))

(declare-fun b!7073251 () Bool)

(assert (=> b!7073251 (= e!4252449 e!4252451)))

(declare-fun c!1319483 () Bool)

(assert (=> b!7073251 (= c!1319483 (is-Cons!68353 (exprs!7146 lt!2546928)))))

(declare-fun b!7073252 () Bool)

(assert (=> b!7073252 (= e!4252450 (nullable!7333 (h!74801 (exprs!7146 lt!2546928))))))

(declare-fun b!7073253 () Bool)

(assert (=> b!7073253 (= e!4252451 call!642843)))

(assert (= (and d!2211921 res!2888940) b!7073252))

(assert (= (and d!2211921 c!1319484) b!7073249))

(assert (= (and d!2211921 (not c!1319484)) b!7073251))

(assert (= (and b!7073251 c!1319483) b!7073253))

(assert (= (and b!7073251 (not c!1319483)) b!7073250))

(assert (= (or b!7073249 b!7073253) bm!642838))

(declare-fun m!7799942 () Bool)

(assert (=> bm!642838 m!7799942))

(declare-fun m!7799944 () Bool)

(assert (=> b!7073249 m!7799944))

(assert (=> b!7073252 m!7799596))

(assert (=> b!7073030 d!2211921))

(declare-fun d!2211923 () Bool)

(declare-fun dynLambda!27812 (Int Context!13292) (Set Context!13292))

(assert (=> d!2211923 (= (flatMap!2576 lt!2546969 lambda!425911) (dynLambda!27812 lambda!425911 lt!2546928))))

(declare-fun lt!2547171 () Unit!162010)

(declare-fun choose!54244 ((Set Context!13292) Context!13292 Int) Unit!162010)

(assert (=> d!2211923 (= lt!2547171 (choose!54244 lt!2546969 lt!2546928 lambda!425911))))

(assert (=> d!2211923 (= lt!2546969 (set.insert lt!2546928 (as set.empty (Set Context!13292))))))

(assert (=> d!2211923 (= (lemmaFlatMapOnSingletonSet!2085 lt!2546969 lt!2546928 lambda!425911) lt!2547171)))

(declare-fun b_lambda!270041 () Bool)

(assert (=> (not b_lambda!270041) (not d!2211923)))

(declare-fun bs!1880842 () Bool)

(assert (= bs!1880842 d!2211923))

(assert (=> bs!1880842 m!7799542))

(declare-fun m!7799946 () Bool)

(assert (=> bs!1880842 m!7799946))

(declare-fun m!7799948 () Bool)

(assert (=> bs!1880842 m!7799948))

(assert (=> bs!1880842 m!7799544))

(assert (=> b!7073030 d!2211923))

(declare-fun bs!1880843 () Bool)

(declare-fun d!2211925 () Bool)

(assert (= bs!1880843 (and d!2211925 b!7073022)))

(declare-fun lambda!425973 () Int)

(assert (=> bs!1880843 (= lambda!425973 lambda!425911)))

(assert (=> d!2211925 true))

(assert (=> d!2211925 (= (derivationStepZipper!3100 lt!2546969 (h!74800 s!7408)) (flatMap!2576 lt!2546969 lambda!425973))))

(declare-fun bs!1880844 () Bool)

(assert (= bs!1880844 d!2211925))

(declare-fun m!7799950 () Bool)

(assert (=> bs!1880844 m!7799950))

(assert (=> b!7073030 d!2211925))

(declare-fun d!2211927 () Bool)

(declare-fun c!1319487 () Bool)

(assert (=> d!2211927 (= c!1319487 (isEmpty!39895 lt!2546965))))

(declare-fun e!4252452 () Bool)

(assert (=> d!2211927 (= (matchZipper!3190 lt!2546969 lt!2546965) e!4252452)))

(declare-fun b!7073256 () Bool)

(assert (=> b!7073256 (= e!4252452 (nullableZipper!2702 lt!2546969))))

(declare-fun b!7073257 () Bool)

(assert (=> b!7073257 (= e!4252452 (matchZipper!3190 (derivationStepZipper!3100 lt!2546969 (head!14410 lt!2546965)) (tail!13838 lt!2546965)))))

(assert (= (and d!2211927 c!1319487) b!7073256))

(assert (= (and d!2211927 (not c!1319487)) b!7073257))

(declare-fun m!7799952 () Bool)

(assert (=> d!2211927 m!7799952))

(declare-fun m!7799954 () Bool)

(assert (=> b!7073256 m!7799954))

(declare-fun m!7799956 () Bool)

(assert (=> b!7073257 m!7799956))

(assert (=> b!7073257 m!7799956))

(declare-fun m!7799958 () Bool)

(assert (=> b!7073257 m!7799958))

(declare-fun m!7799960 () Bool)

(assert (=> b!7073257 m!7799960))

(assert (=> b!7073257 m!7799958))

(assert (=> b!7073257 m!7799960))

(declare-fun m!7799962 () Bool)

(assert (=> b!7073257 m!7799962))

(assert (=> b!7073021 d!2211927))

(declare-fun d!2211929 () Bool)

(declare-fun c!1319488 () Bool)

(assert (=> d!2211929 (= c!1319488 (isEmpty!39895 (_1!37440 lt!2546961)))))

(declare-fun e!4252453 () Bool)

(assert (=> d!2211929 (= (matchZipper!3190 lt!2546942 (_1!37440 lt!2546961)) e!4252453)))

(declare-fun b!7073258 () Bool)

(assert (=> b!7073258 (= e!4252453 (nullableZipper!2702 lt!2546942))))

(declare-fun b!7073259 () Bool)

(assert (=> b!7073259 (= e!4252453 (matchZipper!3190 (derivationStepZipper!3100 lt!2546942 (head!14410 (_1!37440 lt!2546961))) (tail!13838 (_1!37440 lt!2546961))))))

(assert (= (and d!2211929 c!1319488) b!7073258))

(assert (= (and d!2211929 (not c!1319488)) b!7073259))

(assert (=> d!2211929 m!7799848))

(declare-fun m!7799964 () Bool)

(assert (=> b!7073258 m!7799964))

(assert (=> b!7073259 m!7799852))

(assert (=> b!7073259 m!7799852))

(declare-fun m!7799966 () Bool)

(assert (=> b!7073259 m!7799966))

(assert (=> b!7073259 m!7799856))

(assert (=> b!7073259 m!7799966))

(assert (=> b!7073259 m!7799856))

(declare-fun m!7799968 () Bool)

(assert (=> b!7073259 m!7799968))

(assert (=> b!7073021 d!2211929))

(declare-fun d!2211931 () Bool)

(declare-fun e!4252456 () Bool)

(assert (=> d!2211931 (= (matchZipper!3190 (set.union lt!2546958 lt!2546936) (_1!37440 lt!2546961)) e!4252456)))

(declare-fun res!2888943 () Bool)

(assert (=> d!2211931 (=> res!2888943 e!4252456)))

(assert (=> d!2211931 (= res!2888943 (matchZipper!3190 lt!2546958 (_1!37440 lt!2546961)))))

(declare-fun lt!2547174 () Unit!162010)

(declare-fun choose!54245 ((Set Context!13292) (Set Context!13292) List!68476) Unit!162010)

(assert (=> d!2211931 (= lt!2547174 (choose!54245 lt!2546958 lt!2546936 (_1!37440 lt!2546961)))))

(assert (=> d!2211931 (= (lemmaZipperConcatMatchesSameAsBothZippers!1663 lt!2546958 lt!2546936 (_1!37440 lt!2546961)) lt!2547174)))

(declare-fun b!7073262 () Bool)

(assert (=> b!7073262 (= e!4252456 (matchZipper!3190 lt!2546936 (_1!37440 lt!2546961)))))

(assert (= (and d!2211931 (not res!2888943)) b!7073262))

(declare-fun m!7799970 () Bool)

(assert (=> d!2211931 m!7799970))

(assert (=> d!2211931 m!7799616))

(declare-fun m!7799972 () Bool)

(assert (=> d!2211931 m!7799972))

(assert (=> b!7073262 m!7799572))

(assert (=> b!7073021 d!2211931))

(declare-fun bm!642839 () Bool)

(declare-fun call!642844 () (Set Context!13292))

(assert (=> bm!642839 (= call!642844 (derivationStepZipperDown!2284 (h!74801 (exprs!7146 lt!2546959)) (Context!13293 (t!382260 (exprs!7146 lt!2546959))) (h!74800 s!7408)))))

(declare-fun e!4252457 () (Set Context!13292))

(declare-fun b!7073263 () Bool)

(assert (=> b!7073263 (= e!4252457 (set.union call!642844 (derivationStepZipperUp!2234 (Context!13293 (t!382260 (exprs!7146 lt!2546959))) (h!74800 s!7408))))))

(declare-fun d!2211933 () Bool)

(declare-fun c!1319490 () Bool)

(declare-fun e!4252458 () Bool)

(assert (=> d!2211933 (= c!1319490 e!4252458)))

(declare-fun res!2888944 () Bool)

(assert (=> d!2211933 (=> (not res!2888944) (not e!4252458))))

(assert (=> d!2211933 (= res!2888944 (is-Cons!68353 (exprs!7146 lt!2546959)))))

(assert (=> d!2211933 (= (derivationStepZipperUp!2234 lt!2546959 (h!74800 s!7408)) e!4252457)))

(declare-fun b!7073264 () Bool)

(declare-fun e!4252459 () (Set Context!13292))

(assert (=> b!7073264 (= e!4252459 (as set.empty (Set Context!13292)))))

(declare-fun b!7073265 () Bool)

(assert (=> b!7073265 (= e!4252457 e!4252459)))

(declare-fun c!1319489 () Bool)

(assert (=> b!7073265 (= c!1319489 (is-Cons!68353 (exprs!7146 lt!2546959)))))

(declare-fun b!7073266 () Bool)

(assert (=> b!7073266 (= e!4252458 (nullable!7333 (h!74801 (exprs!7146 lt!2546959))))))

(declare-fun b!7073267 () Bool)

(assert (=> b!7073267 (= e!4252459 call!642844)))

(assert (= (and d!2211933 res!2888944) b!7073266))

(assert (= (and d!2211933 c!1319490) b!7073263))

(assert (= (and d!2211933 (not c!1319490)) b!7073265))

(assert (= (and b!7073265 c!1319489) b!7073267))

(assert (= (and b!7073265 (not c!1319489)) b!7073264))

(assert (= (or b!7073263 b!7073267) bm!642839))

(declare-fun m!7799974 () Bool)

(assert (=> bm!642839 m!7799974))

(declare-fun m!7799976 () Bool)

(assert (=> b!7073263 m!7799976))

(declare-fun m!7799978 () Bool)

(assert (=> b!7073266 m!7799978))

(assert (=> b!7073040 d!2211933))

(declare-fun d!2211935 () Bool)

(declare-fun c!1319491 () Bool)

(assert (=> d!2211935 (= c!1319491 (isEmpty!39895 (t!382259 s!7408)))))

(declare-fun e!4252460 () Bool)

(assert (=> d!2211935 (= (matchZipper!3190 lt!2546947 (t!382259 s!7408)) e!4252460)))

(declare-fun b!7073268 () Bool)

(assert (=> b!7073268 (= e!4252460 (nullableZipper!2702 lt!2546947))))

(declare-fun b!7073269 () Bool)

(assert (=> b!7073269 (= e!4252460 (matchZipper!3190 (derivationStepZipper!3100 lt!2546947 (head!14410 (t!382259 s!7408))) (tail!13838 (t!382259 s!7408))))))

(assert (= (and d!2211935 c!1319491) b!7073268))

(assert (= (and d!2211935 (not c!1319491)) b!7073269))

(assert (=> d!2211935 m!7799902))

(declare-fun m!7799980 () Bool)

(assert (=> b!7073268 m!7799980))

(assert (=> b!7073269 m!7799906))

(assert (=> b!7073269 m!7799906))

(declare-fun m!7799982 () Bool)

(assert (=> b!7073269 m!7799982))

(assert (=> b!7073269 m!7799910))

(assert (=> b!7073269 m!7799982))

(assert (=> b!7073269 m!7799910))

(declare-fun m!7799984 () Bool)

(assert (=> b!7073269 m!7799984))

(assert (=> b!7073015 d!2211935))

(declare-fun d!2211937 () Bool)

(declare-fun c!1319492 () Bool)

(assert (=> d!2211937 (= c!1319492 (isEmpty!39895 (t!382259 s!7408)))))

(declare-fun e!4252461 () Bool)

(assert (=> d!2211937 (= (matchZipper!3190 lt!2546967 (t!382259 s!7408)) e!4252461)))

(declare-fun b!7073270 () Bool)

(assert (=> b!7073270 (= e!4252461 (nullableZipper!2702 lt!2546967))))

(declare-fun b!7073271 () Bool)

(assert (=> b!7073271 (= e!4252461 (matchZipper!3190 (derivationStepZipper!3100 lt!2546967 (head!14410 (t!382259 s!7408))) (tail!13838 (t!382259 s!7408))))))

(assert (= (and d!2211937 c!1319492) b!7073270))

(assert (= (and d!2211937 (not c!1319492)) b!7073271))

(assert (=> d!2211937 m!7799902))

(declare-fun m!7799986 () Bool)

(assert (=> b!7073270 m!7799986))

(assert (=> b!7073271 m!7799906))

(assert (=> b!7073271 m!7799906))

(declare-fun m!7799988 () Bool)

(assert (=> b!7073271 m!7799988))

(assert (=> b!7073271 m!7799910))

(assert (=> b!7073271 m!7799988))

(assert (=> b!7073271 m!7799910))

(declare-fun m!7799990 () Bool)

(assert (=> b!7073271 m!7799990))

(assert (=> b!7073015 d!2211937))

(declare-fun e!4252462 () Bool)

(declare-fun d!2211939 () Bool)

(assert (=> d!2211939 (= (matchZipper!3190 (set.union lt!2546947 lt!2546935) (t!382259 s!7408)) e!4252462)))

(declare-fun res!2888945 () Bool)

(assert (=> d!2211939 (=> res!2888945 e!4252462)))

(assert (=> d!2211939 (= res!2888945 (matchZipper!3190 lt!2546947 (t!382259 s!7408)))))

(declare-fun lt!2547175 () Unit!162010)

(assert (=> d!2211939 (= lt!2547175 (choose!54245 lt!2546947 lt!2546935 (t!382259 s!7408)))))

(assert (=> d!2211939 (= (lemmaZipperConcatMatchesSameAsBothZippers!1663 lt!2546947 lt!2546935 (t!382259 s!7408)) lt!2547175)))

(declare-fun b!7073272 () Bool)

(assert (=> b!7073272 (= e!4252462 (matchZipper!3190 lt!2546935 (t!382259 s!7408)))))

(assert (= (and d!2211939 (not res!2888945)) b!7073272))

(declare-fun m!7799992 () Bool)

(assert (=> d!2211939 m!7799992))

(assert (=> d!2211939 m!7799620))

(declare-fun m!7799994 () Bool)

(assert (=> d!2211939 m!7799994))

(assert (=> b!7073272 m!7799662))

(assert (=> b!7073015 d!2211939))

(declare-fun d!2211941 () Bool)

(declare-fun c!1319493 () Bool)

(assert (=> d!2211941 (= c!1319493 (isEmpty!39895 (t!382259 s!7408)))))

(declare-fun e!4252463 () Bool)

(assert (=> d!2211941 (= (matchZipper!3190 lt!2546930 (t!382259 s!7408)) e!4252463)))

(declare-fun b!7073273 () Bool)

(assert (=> b!7073273 (= e!4252463 (nullableZipper!2702 lt!2546930))))

(declare-fun b!7073274 () Bool)

(assert (=> b!7073274 (= e!4252463 (matchZipper!3190 (derivationStepZipper!3100 lt!2546930 (head!14410 (t!382259 s!7408))) (tail!13838 (t!382259 s!7408))))))

(assert (= (and d!2211941 c!1319493) b!7073273))

(assert (= (and d!2211941 (not c!1319493)) b!7073274))

(assert (=> d!2211941 m!7799902))

(declare-fun m!7799996 () Bool)

(assert (=> b!7073273 m!7799996))

(assert (=> b!7073274 m!7799906))

(assert (=> b!7073274 m!7799906))

(declare-fun m!7799998 () Bool)

(assert (=> b!7073274 m!7799998))

(assert (=> b!7073274 m!7799910))

(assert (=> b!7073274 m!7799998))

(assert (=> b!7073274 m!7799910))

(declare-fun m!7800000 () Bool)

(assert (=> b!7073274 m!7800000))

(assert (=> b!7073015 d!2211941))

(assert (=> b!7073015 d!2211901))

(declare-fun bm!642840 () Bool)

(declare-fun call!642845 () (Set Context!13292))

(assert (=> bm!642840 (= call!642845 (derivationStepZipperDown!2284 (h!74801 (exprs!7146 lt!2546964)) (Context!13293 (t!382260 (exprs!7146 lt!2546964))) (h!74800 s!7408)))))

(declare-fun e!4252464 () (Set Context!13292))

(declare-fun b!7073275 () Bool)

(assert (=> b!7073275 (= e!4252464 (set.union call!642845 (derivationStepZipperUp!2234 (Context!13293 (t!382260 (exprs!7146 lt!2546964))) (h!74800 s!7408))))))

(declare-fun d!2211943 () Bool)

(declare-fun c!1319495 () Bool)

(declare-fun e!4252465 () Bool)

(assert (=> d!2211943 (= c!1319495 e!4252465)))

(declare-fun res!2888946 () Bool)

(assert (=> d!2211943 (=> (not res!2888946) (not e!4252465))))

(assert (=> d!2211943 (= res!2888946 (is-Cons!68353 (exprs!7146 lt!2546964)))))

(assert (=> d!2211943 (= (derivationStepZipperUp!2234 lt!2546964 (h!74800 s!7408)) e!4252464)))

(declare-fun b!7073276 () Bool)

(declare-fun e!4252466 () (Set Context!13292))

(assert (=> b!7073276 (= e!4252466 (as set.empty (Set Context!13292)))))

(declare-fun b!7073277 () Bool)

(assert (=> b!7073277 (= e!4252464 e!4252466)))

(declare-fun c!1319494 () Bool)

(assert (=> b!7073277 (= c!1319494 (is-Cons!68353 (exprs!7146 lt!2546964)))))

(declare-fun b!7073278 () Bool)

(assert (=> b!7073278 (= e!4252465 (nullable!7333 (h!74801 (exprs!7146 lt!2546964))))))

(declare-fun b!7073279 () Bool)

(assert (=> b!7073279 (= e!4252466 call!642845)))

(assert (= (and d!2211943 res!2888946) b!7073278))

(assert (= (and d!2211943 c!1319495) b!7073275))

(assert (= (and d!2211943 (not c!1319495)) b!7073277))

(assert (= (and b!7073277 c!1319494) b!7073279))

(assert (= (and b!7073277 (not c!1319494)) b!7073276))

(assert (= (or b!7073275 b!7073279) bm!642840))

(declare-fun m!7800002 () Bool)

(assert (=> bm!642840 m!7800002))

(declare-fun m!7800004 () Bool)

(assert (=> b!7073275 m!7800004))

(declare-fun m!7800006 () Bool)

(assert (=> b!7073278 m!7800006))

(assert (=> b!7073034 d!2211943))

(assert (=> b!7073034 d!2211901))

(declare-fun c!1319496 () Bool)

(declare-fun call!642848 () List!68477)

(declare-fun call!642850 () (Set Context!13292))

(declare-fun bm!642841 () Bool)

(assert (=> bm!642841 (= call!642850 (derivationStepZipperDown!2284 (ite c!1319496 (regTwo!35813 (h!74801 (exprs!7146 lt!2546928))) (regOne!35812 (h!74801 (exprs!7146 lt!2546928)))) (ite c!1319496 lt!2546964 (Context!13293 call!642848)) (h!74800 s!7408)))))

(declare-fun b!7073280 () Bool)

(declare-fun e!4252470 () (Set Context!13292))

(declare-fun call!642846 () (Set Context!13292))

(assert (=> b!7073280 (= e!4252470 call!642846)))

(declare-fun b!7073281 () Bool)

(declare-fun c!1319498 () Bool)

(assert (=> b!7073281 (= c!1319498 (is-Star!17650 (h!74801 (exprs!7146 lt!2546928))))))

(declare-fun e!4252467 () (Set Context!13292))

(assert (=> b!7073281 (= e!4252467 e!4252470)))

(declare-fun b!7073282 () Bool)

(declare-fun e!4252471 () (Set Context!13292))

(declare-fun e!4252472 () (Set Context!13292))

(assert (=> b!7073282 (= e!4252471 e!4252472)))

(assert (=> b!7073282 (= c!1319496 (is-Union!17650 (h!74801 (exprs!7146 lt!2546928))))))

(declare-fun bm!642842 () Bool)

(declare-fun call!642851 () (Set Context!13292))

(assert (=> bm!642842 (= call!642846 call!642851)))

(declare-fun b!7073283 () Bool)

(declare-fun e!4252468 () Bool)

(assert (=> b!7073283 (= e!4252468 (nullable!7333 (regOne!35812 (h!74801 (exprs!7146 lt!2546928)))))))

(declare-fun bm!642843 () Bool)

(declare-fun call!642849 () List!68477)

(assert (=> bm!642843 (= call!642849 call!642848)))

(declare-fun b!7073284 () Bool)

(declare-fun c!1319497 () Bool)

(assert (=> b!7073284 (= c!1319497 e!4252468)))

(declare-fun res!2888947 () Bool)

(assert (=> b!7073284 (=> (not res!2888947) (not e!4252468))))

(assert (=> b!7073284 (= res!2888947 (is-Concat!26495 (h!74801 (exprs!7146 lt!2546928))))))

(declare-fun e!4252469 () (Set Context!13292))

(assert (=> b!7073284 (= e!4252472 e!4252469)))

(declare-fun d!2211945 () Bool)

(declare-fun c!1319500 () Bool)

(assert (=> d!2211945 (= c!1319500 (and (is-ElementMatch!17650 (h!74801 (exprs!7146 lt!2546928))) (= (c!1319431 (h!74801 (exprs!7146 lt!2546928))) (h!74800 s!7408))))))

(assert (=> d!2211945 (= (derivationStepZipperDown!2284 (h!74801 (exprs!7146 lt!2546928)) lt!2546964 (h!74800 s!7408)) e!4252471)))

(declare-fun b!7073285 () Bool)

(assert (=> b!7073285 (= e!4252467 call!642846)))

(declare-fun b!7073286 () Bool)

(assert (=> b!7073286 (= e!4252471 (set.insert lt!2546964 (as set.empty (Set Context!13292))))))

(declare-fun b!7073287 () Bool)

(assert (=> b!7073287 (= e!4252469 e!4252467)))

(declare-fun c!1319499 () Bool)

(assert (=> b!7073287 (= c!1319499 (is-Concat!26495 (h!74801 (exprs!7146 lt!2546928))))))

(declare-fun b!7073288 () Bool)

(assert (=> b!7073288 (= e!4252470 (as set.empty (Set Context!13292)))))

(declare-fun b!7073289 () Bool)

(assert (=> b!7073289 (= e!4252469 (set.union call!642850 call!642851))))

(declare-fun call!642847 () (Set Context!13292))

(declare-fun bm!642844 () Bool)

(assert (=> bm!642844 (= call!642847 (derivationStepZipperDown!2284 (ite c!1319496 (regOne!35813 (h!74801 (exprs!7146 lt!2546928))) (ite c!1319497 (regTwo!35812 (h!74801 (exprs!7146 lt!2546928))) (ite c!1319499 (regOne!35812 (h!74801 (exprs!7146 lt!2546928))) (reg!17979 (h!74801 (exprs!7146 lt!2546928)))))) (ite (or c!1319496 c!1319497) lt!2546964 (Context!13293 call!642849)) (h!74800 s!7408)))))

(declare-fun bm!642845 () Bool)

(assert (=> bm!642845 (= call!642848 ($colon$colon!2662 (exprs!7146 lt!2546964) (ite (or c!1319497 c!1319499) (regTwo!35812 (h!74801 (exprs!7146 lt!2546928))) (h!74801 (exprs!7146 lt!2546928)))))))

(declare-fun b!7073290 () Bool)

(assert (=> b!7073290 (= e!4252472 (set.union call!642847 call!642850))))

(declare-fun bm!642846 () Bool)

(assert (=> bm!642846 (= call!642851 call!642847)))

(assert (= (and d!2211945 c!1319500) b!7073286))

(assert (= (and d!2211945 (not c!1319500)) b!7073282))

(assert (= (and b!7073282 c!1319496) b!7073290))

(assert (= (and b!7073282 (not c!1319496)) b!7073284))

(assert (= (and b!7073284 res!2888947) b!7073283))

(assert (= (and b!7073284 c!1319497) b!7073289))

(assert (= (and b!7073284 (not c!1319497)) b!7073287))

(assert (= (and b!7073287 c!1319499) b!7073285))

(assert (= (and b!7073287 (not c!1319499)) b!7073281))

(assert (= (and b!7073281 c!1319498) b!7073280))

(assert (= (and b!7073281 (not c!1319498)) b!7073288))

(assert (= (or b!7073285 b!7073280) bm!642843))

(assert (= (or b!7073285 b!7073280) bm!642842))

(assert (= (or b!7073289 bm!642842) bm!642846))

(assert (= (or b!7073289 bm!642843) bm!642845))

(assert (= (or b!7073290 bm!642846) bm!642844))

(assert (= (or b!7073290 b!7073289) bm!642841))

(declare-fun m!7800008 () Bool)

(assert (=> b!7073286 m!7800008))

(declare-fun m!7800010 () Bool)

(assert (=> bm!642841 m!7800010))

(assert (=> b!7073283 m!7799834))

(declare-fun m!7800012 () Bool)

(assert (=> bm!642844 m!7800012))

(declare-fun m!7800014 () Bool)

(assert (=> bm!642845 m!7800014))

(assert (=> b!7073034 d!2211945))

(declare-fun b!7073293 () Bool)

(declare-fun res!2888949 () Bool)

(declare-fun e!4252474 () Bool)

(assert (=> b!7073293 (=> (not res!2888949) (not e!4252474))))

(declare-fun lt!2547176 () List!68477)

(assert (=> b!7073293 (= res!2888949 (= (size!41219 lt!2547176) (+ (size!41219 lt!2546937) (size!41219 (exprs!7146 ct2!306)))))))

(declare-fun b!7073291 () Bool)

(declare-fun e!4252473 () List!68477)

(assert (=> b!7073291 (= e!4252473 (exprs!7146 ct2!306))))

(declare-fun b!7073292 () Bool)

(assert (=> b!7073292 (= e!4252473 (Cons!68353 (h!74801 lt!2546937) (++!15784 (t!382260 lt!2546937) (exprs!7146 ct2!306))))))

(declare-fun d!2211947 () Bool)

(assert (=> d!2211947 e!4252474))

(declare-fun res!2888948 () Bool)

(assert (=> d!2211947 (=> (not res!2888948) (not e!4252474))))

(assert (=> d!2211947 (= res!2888948 (= (content!13803 lt!2547176) (set.union (content!13803 lt!2546937) (content!13803 (exprs!7146 ct2!306)))))))

(assert (=> d!2211947 (= lt!2547176 e!4252473)))

(declare-fun c!1319501 () Bool)

(assert (=> d!2211947 (= c!1319501 (is-Nil!68353 lt!2546937))))

(assert (=> d!2211947 (= (++!15784 lt!2546937 (exprs!7146 ct2!306)) lt!2547176)))

(declare-fun b!7073294 () Bool)

(assert (=> b!7073294 (= e!4252474 (or (not (= (exprs!7146 ct2!306) Nil!68353)) (= lt!2547176 lt!2546937)))))

(assert (= (and d!2211947 c!1319501) b!7073291))

(assert (= (and d!2211947 (not c!1319501)) b!7073292))

(assert (= (and d!2211947 res!2888948) b!7073293))

(assert (= (and b!7073293 res!2888949) b!7073294))

(declare-fun m!7800016 () Bool)

(assert (=> b!7073293 m!7800016))

(declare-fun m!7800018 () Bool)

(assert (=> b!7073293 m!7800018))

(assert (=> b!7073293 m!7799920))

(declare-fun m!7800020 () Bool)

(assert (=> b!7073292 m!7800020))

(declare-fun m!7800022 () Bool)

(assert (=> d!2211947 m!7800022))

(declare-fun m!7800024 () Bool)

(assert (=> d!2211947 m!7800024))

(assert (=> d!2211947 m!7799928))

(assert (=> b!7073034 d!2211947))

(declare-fun d!2211949 () Bool)

(assert (=> d!2211949 (exists!3700 z1!570 lambda!425912)))

(declare-fun lt!2547179 () Unit!162010)

(declare-fun choose!54246 ((Set Context!13292) Context!13292 Int) Unit!162010)

(assert (=> d!2211949 (= lt!2547179 (choose!54246 z1!570 lt!2546928 lambda!425912))))

(assert (=> d!2211949 (set.member lt!2546928 z1!570)))

(assert (=> d!2211949 (= (lemmaContainsThenExists!158 z1!570 lt!2546928 lambda!425912) lt!2547179)))

(declare-fun bs!1880845 () Bool)

(assert (= bs!1880845 d!2211949))

(assert (=> bs!1880845 m!7799638))

(declare-fun m!7800026 () Bool)

(assert (=> bs!1880845 m!7800026))

(assert (=> bs!1880845 m!7799550))

(assert (=> b!7073023 d!2211949))

(declare-fun d!2211951 () Bool)

(assert (=> d!2211951 (= (isDefined!13670 (findConcatSeparationZippers!485 lt!2546969 lt!2546944 Nil!68352 s!7408 s!7408)) (not (isEmpty!39894 (findConcatSeparationZippers!485 lt!2546969 lt!2546944 Nil!68352 s!7408 s!7408))))))

(declare-fun bs!1880846 () Bool)

(assert (= bs!1880846 d!2211951))

(assert (=> bs!1880846 m!7799634))

(declare-fun m!7800028 () Bool)

(assert (=> bs!1880846 m!7800028))

(assert (=> b!7073023 d!2211951))

(declare-fun d!2211953 () Bool)

(assert (=> d!2211953 (isDefined!13670 (findConcatSeparationZippers!485 lt!2546969 lt!2546944 Nil!68352 s!7408 s!7408))))

(declare-fun lt!2547182 () Unit!162010)

(declare-fun choose!54247 ((Set Context!13292) (Set Context!13292) List!68476 List!68476 List!68476 List!68476 List!68476) Unit!162010)

(assert (=> d!2211953 (= lt!2547182 (choose!54247 lt!2546969 lt!2546944 lt!2546965 (_2!37440 lt!2546961) s!7408 Nil!68352 s!7408))))

(assert (=> d!2211953 (matchZipper!3190 lt!2546969 lt!2546965)))

(assert (=> d!2211953 (= (lemmaZ1MatchesS1AndZ2MatchesS2ThenFindSeparationZipperFindsAtLeastThem!77 lt!2546969 lt!2546944 lt!2546965 (_2!37440 lt!2546961) s!7408 Nil!68352 s!7408) lt!2547182)))

(declare-fun bs!1880847 () Bool)

(assert (= bs!1880847 d!2211953))

(assert (=> bs!1880847 m!7799634))

(assert (=> bs!1880847 m!7799634))

(assert (=> bs!1880847 m!7799640))

(declare-fun m!7800030 () Bool)

(assert (=> bs!1880847 m!7800030))

(assert (=> bs!1880847 m!7799646))

(assert (=> b!7073023 d!2211953))

(declare-fun d!2211955 () Bool)

(declare-fun c!1319502 () Bool)

(assert (=> d!2211955 (= c!1319502 (isEmpty!39895 lt!2546965))))

(declare-fun e!4252476 () Bool)

(assert (=> d!2211955 (= (matchZipper!3190 (content!13800 lt!2546929) lt!2546965) e!4252476)))

(declare-fun b!7073295 () Bool)

(assert (=> b!7073295 (= e!4252476 (nullableZipper!2702 (content!13800 lt!2546929)))))

(declare-fun b!7073296 () Bool)

(assert (=> b!7073296 (= e!4252476 (matchZipper!3190 (derivationStepZipper!3100 (content!13800 lt!2546929) (head!14410 lt!2546965)) (tail!13838 lt!2546965)))))

(assert (= (and d!2211955 c!1319502) b!7073295))

(assert (= (and d!2211955 (not c!1319502)) b!7073296))

(assert (=> d!2211955 m!7799952))

(assert (=> b!7073295 m!7799642))

(declare-fun m!7800032 () Bool)

(assert (=> b!7073295 m!7800032))

(assert (=> b!7073296 m!7799956))

(assert (=> b!7073296 m!7799642))

(assert (=> b!7073296 m!7799956))

(declare-fun m!7800034 () Bool)

(assert (=> b!7073296 m!7800034))

(assert (=> b!7073296 m!7799960))

(assert (=> b!7073296 m!7800034))

(assert (=> b!7073296 m!7799960))

(declare-fun m!7800036 () Bool)

(assert (=> b!7073296 m!7800036))

(assert (=> b!7073023 d!2211955))

(declare-fun d!2211957 () Bool)

(declare-fun lt!2547185 () Bool)

(assert (=> d!2211957 (= lt!2547185 (exists!3701 (toList!10991 z1!570) lambda!425912))))

(declare-fun choose!54248 ((Set Context!13292) Int) Bool)

(assert (=> d!2211957 (= lt!2547185 (choose!54248 z1!570 lambda!425912))))

(assert (=> d!2211957 (= (exists!3700 z1!570 lambda!425912) lt!2547185)))

(declare-fun bs!1880848 () Bool)

(assert (= bs!1880848 d!2211957))

(assert (=> bs!1880848 m!7799626))

(assert (=> bs!1880848 m!7799626))

(declare-fun m!7800038 () Bool)

(assert (=> bs!1880848 m!7800038))

(declare-fun m!7800040 () Bool)

(assert (=> bs!1880848 m!7800040))

(assert (=> b!7073023 d!2211957))

(declare-fun b!7073297 () Bool)

(declare-fun e!4252481 () Option!16969)

(assert (=> b!7073297 (= e!4252481 (Some!16968 (tuple2!68275 Nil!68352 s!7408)))))

(declare-fun b!7073298 () Bool)

(declare-fun e!4252480 () Bool)

(assert (=> b!7073298 (= e!4252480 (matchZipper!3190 lt!2546944 s!7408))))

(declare-fun d!2211959 () Bool)

(declare-fun e!4252477 () Bool)

(assert (=> d!2211959 e!4252477))

(declare-fun res!2888954 () Bool)

(assert (=> d!2211959 (=> res!2888954 e!4252477)))

(declare-fun e!4252478 () Bool)

(assert (=> d!2211959 (= res!2888954 e!4252478)))

(declare-fun res!2888951 () Bool)

(assert (=> d!2211959 (=> (not res!2888951) (not e!4252478))))

(declare-fun lt!2547187 () Option!16969)

(assert (=> d!2211959 (= res!2888951 (isDefined!13670 lt!2547187))))

(assert (=> d!2211959 (= lt!2547187 e!4252481)))

(declare-fun c!1319503 () Bool)

(assert (=> d!2211959 (= c!1319503 e!4252480)))

(declare-fun res!2888953 () Bool)

(assert (=> d!2211959 (=> (not res!2888953) (not e!4252480))))

(assert (=> d!2211959 (= res!2888953 (matchZipper!3190 lt!2546969 Nil!68352))))

(assert (=> d!2211959 (= (++!15783 Nil!68352 s!7408) s!7408)))

(assert (=> d!2211959 (= (findConcatSeparationZippers!485 lt!2546969 lt!2546944 Nil!68352 s!7408 s!7408) lt!2547187)))

(declare-fun b!7073299 () Bool)

(assert (=> b!7073299 (= e!4252478 (= (++!15783 (_1!37440 (get!23945 lt!2547187)) (_2!37440 (get!23945 lt!2547187))) s!7408))))

(declare-fun b!7073300 () Bool)

(declare-fun e!4252479 () Option!16969)

(assert (=> b!7073300 (= e!4252479 None!16968)))

(declare-fun b!7073301 () Bool)

(declare-fun res!2888950 () Bool)

(assert (=> b!7073301 (=> (not res!2888950) (not e!4252478))))

(assert (=> b!7073301 (= res!2888950 (matchZipper!3190 lt!2546944 (_2!37440 (get!23945 lt!2547187))))))

(declare-fun b!7073302 () Bool)

(declare-fun lt!2547186 () Unit!162010)

(declare-fun lt!2547188 () Unit!162010)

(assert (=> b!7073302 (= lt!2547186 lt!2547188)))

(assert (=> b!7073302 (= (++!15783 (++!15783 Nil!68352 (Cons!68352 (h!74800 s!7408) Nil!68352)) (t!382259 s!7408)) s!7408)))

(assert (=> b!7073302 (= lt!2547188 (lemmaMoveElementToOtherListKeepsConcatEq!2977 Nil!68352 (h!74800 s!7408) (t!382259 s!7408) s!7408))))

(assert (=> b!7073302 (= e!4252479 (findConcatSeparationZippers!485 lt!2546969 lt!2546944 (++!15783 Nil!68352 (Cons!68352 (h!74800 s!7408) Nil!68352)) (t!382259 s!7408) s!7408))))

(declare-fun b!7073303 () Bool)

(declare-fun res!2888952 () Bool)

(assert (=> b!7073303 (=> (not res!2888952) (not e!4252478))))

(assert (=> b!7073303 (= res!2888952 (matchZipper!3190 lt!2546969 (_1!37440 (get!23945 lt!2547187))))))

(declare-fun b!7073304 () Bool)

(assert (=> b!7073304 (= e!4252481 e!4252479)))

(declare-fun c!1319504 () Bool)

(assert (=> b!7073304 (= c!1319504 (is-Nil!68352 s!7408))))

(declare-fun b!7073305 () Bool)

(assert (=> b!7073305 (= e!4252477 (not (isDefined!13670 lt!2547187)))))

(assert (= (and d!2211959 res!2888953) b!7073298))

(assert (= (and d!2211959 c!1319503) b!7073297))

(assert (= (and d!2211959 (not c!1319503)) b!7073304))

(assert (= (and b!7073304 c!1319504) b!7073300))

(assert (= (and b!7073304 (not c!1319504)) b!7073302))

(assert (= (and d!2211959 res!2888951) b!7073303))

(assert (= (and b!7073303 res!2888952) b!7073301))

(assert (= (and b!7073301 res!2888950) b!7073299))

(assert (= (and d!2211959 (not res!2888954)) b!7073305))

(declare-fun m!7800042 () Bool)

(assert (=> b!7073303 m!7800042))

(declare-fun m!7800044 () Bool)

(assert (=> b!7073303 m!7800044))

(assert (=> b!7073301 m!7800042))

(declare-fun m!7800046 () Bool)

(assert (=> b!7073301 m!7800046))

(declare-fun m!7800048 () Bool)

(assert (=> b!7073302 m!7800048))

(assert (=> b!7073302 m!7800048))

(declare-fun m!7800050 () Bool)

(assert (=> b!7073302 m!7800050))

(declare-fun m!7800052 () Bool)

(assert (=> b!7073302 m!7800052))

(assert (=> b!7073302 m!7800048))

(declare-fun m!7800054 () Bool)

(assert (=> b!7073302 m!7800054))

(assert (=> b!7073299 m!7800042))

(declare-fun m!7800056 () Bool)

(assert (=> b!7073299 m!7800056))

(declare-fun m!7800058 () Bool)

(assert (=> b!7073305 m!7800058))

(assert (=> d!2211959 m!7800058))

(declare-fun m!7800060 () Bool)

(assert (=> d!2211959 m!7800060))

(declare-fun m!7800062 () Bool)

(assert (=> d!2211959 m!7800062))

(declare-fun m!7800064 () Bool)

(assert (=> b!7073298 m!7800064))

(assert (=> b!7073023 d!2211959))

(declare-fun bs!1880849 () Bool)

(declare-fun d!2211961 () Bool)

(assert (= bs!1880849 (and d!2211961 b!7073036)))

(declare-fun lambda!425976 () Int)

(assert (=> bs!1880849 (= (= lt!2546965 s!7408) (= lambda!425976 lambda!425908))))

(declare-fun bs!1880850 () Bool)

(assert (= bs!1880850 (and d!2211961 b!7073023)))

(assert (=> bs!1880850 (= lambda!425976 lambda!425912)))

(assert (=> d!2211961 true))

(assert (=> d!2211961 (matchZipper!3190 (content!13800 lt!2546929) lt!2546965)))

(declare-fun lt!2547191 () Unit!162010)

(declare-fun choose!54249 (List!68478 List!68476) Unit!162010)

(assert (=> d!2211961 (= lt!2547191 (choose!54249 lt!2546929 lt!2546965))))

(assert (=> d!2211961 (exists!3701 lt!2546929 lambda!425976)))

(assert (=> d!2211961 (= (lemmaExistsMatchingContextThenMatchingString!53 lt!2546929 lt!2546965) lt!2547191)))

(declare-fun bs!1880851 () Bool)

(assert (= bs!1880851 d!2211961))

(assert (=> bs!1880851 m!7799642))

(assert (=> bs!1880851 m!7799642))

(assert (=> bs!1880851 m!7799644))

(declare-fun m!7800066 () Bool)

(assert (=> bs!1880851 m!7800066))

(declare-fun m!7800068 () Bool)

(assert (=> bs!1880851 m!7800068))

(assert (=> b!7073023 d!2211961))

(declare-fun d!2211963 () Bool)

(declare-fun c!1319507 () Bool)

(assert (=> d!2211963 (= c!1319507 (isEmpty!39895 lt!2546965))))

(declare-fun e!4252482 () Bool)

(assert (=> d!2211963 (= (matchZipper!3190 z1!570 lt!2546965) e!4252482)))

(declare-fun b!7073306 () Bool)

(assert (=> b!7073306 (= e!4252482 (nullableZipper!2702 z1!570))))

(declare-fun b!7073307 () Bool)

(assert (=> b!7073307 (= e!4252482 (matchZipper!3190 (derivationStepZipper!3100 z1!570 (head!14410 lt!2546965)) (tail!13838 lt!2546965)))))

(assert (= (and d!2211963 c!1319507) b!7073306))

(assert (= (and d!2211963 (not c!1319507)) b!7073307))

(assert (=> d!2211963 m!7799952))

(declare-fun m!7800070 () Bool)

(assert (=> b!7073306 m!7800070))

(assert (=> b!7073307 m!7799956))

(assert (=> b!7073307 m!7799956))

(declare-fun m!7800072 () Bool)

(assert (=> b!7073307 m!7800072))

(assert (=> b!7073307 m!7799960))

(assert (=> b!7073307 m!7800072))

(assert (=> b!7073307 m!7799960))

(declare-fun m!7800074 () Bool)

(assert (=> b!7073307 m!7800074))

(assert (=> b!7073023 d!2211963))

(declare-fun d!2211965 () Bool)

(declare-fun e!4252485 () Bool)

(assert (=> d!2211965 e!4252485))

(declare-fun res!2888957 () Bool)

(assert (=> d!2211965 (=> (not res!2888957) (not e!4252485))))

(declare-fun lt!2547194 () List!68478)

(declare-fun noDuplicate!2731 (List!68478) Bool)

(assert (=> d!2211965 (= res!2888957 (noDuplicate!2731 lt!2547194))))

(declare-fun choose!54250 ((Set Context!13292)) List!68478)

(assert (=> d!2211965 (= lt!2547194 (choose!54250 z1!570))))

(assert (=> d!2211965 (= (toList!10991 z1!570) lt!2547194)))

(declare-fun b!7073310 () Bool)

(assert (=> b!7073310 (= e!4252485 (= (content!13800 lt!2547194) z1!570))))

(assert (= (and d!2211965 res!2888957) b!7073310))

(declare-fun m!7800076 () Bool)

(assert (=> d!2211965 m!7800076))

(declare-fun m!7800078 () Bool)

(assert (=> d!2211965 m!7800078))

(declare-fun m!7800080 () Bool)

(assert (=> b!7073310 m!7800080))

(assert (=> b!7073023 d!2211965))

(declare-fun d!2211967 () Bool)

(declare-fun c!1319510 () Bool)

(assert (=> d!2211967 (= c!1319510 (is-Nil!68354 lt!2546929))))

(declare-fun e!4252488 () (Set Context!13292))

(assert (=> d!2211967 (= (content!13800 lt!2546929) e!4252488)))

(declare-fun b!7073315 () Bool)

(assert (=> b!7073315 (= e!4252488 (as set.empty (Set Context!13292)))))

(declare-fun b!7073316 () Bool)

(assert (=> b!7073316 (= e!4252488 (set.union (set.insert (h!74802 lt!2546929) (as set.empty (Set Context!13292))) (content!13800 (t!382261 lt!2546929))))))

(assert (= (and d!2211967 c!1319510) b!7073315))

(assert (= (and d!2211967 (not c!1319510)) b!7073316))

(declare-fun m!7800082 () Bool)

(assert (=> b!7073316 m!7800082))

(declare-fun m!7800084 () Bool)

(assert (=> b!7073316 m!7800084))

(assert (=> b!7073023 d!2211967))

(assert (=> b!7073014 d!2211911))

(declare-fun bm!642847 () Bool)

(declare-fun call!642852 () (Set Context!13292))

(assert (=> bm!642847 (= call!642852 (derivationStepZipperDown!2284 (h!74801 (exprs!7146 lt!2546945)) (Context!13293 (t!382260 (exprs!7146 lt!2546945))) (h!74800 s!7408)))))

(declare-fun b!7073317 () Bool)

(declare-fun e!4252489 () (Set Context!13292))

(assert (=> b!7073317 (= e!4252489 (set.union call!642852 (derivationStepZipperUp!2234 (Context!13293 (t!382260 (exprs!7146 lt!2546945))) (h!74800 s!7408))))))

(declare-fun d!2211969 () Bool)

(declare-fun c!1319512 () Bool)

(declare-fun e!4252490 () Bool)

(assert (=> d!2211969 (= c!1319512 e!4252490)))

(declare-fun res!2888958 () Bool)

(assert (=> d!2211969 (=> (not res!2888958) (not e!4252490))))

(assert (=> d!2211969 (= res!2888958 (is-Cons!68353 (exprs!7146 lt!2546945)))))

(assert (=> d!2211969 (= (derivationStepZipperUp!2234 lt!2546945 (h!74800 s!7408)) e!4252489)))

(declare-fun b!7073318 () Bool)

(declare-fun e!4252491 () (Set Context!13292))

(assert (=> b!7073318 (= e!4252491 (as set.empty (Set Context!13292)))))

(declare-fun b!7073319 () Bool)

(assert (=> b!7073319 (= e!4252489 e!4252491)))

(declare-fun c!1319511 () Bool)

(assert (=> b!7073319 (= c!1319511 (is-Cons!68353 (exprs!7146 lt!2546945)))))

(declare-fun b!7073320 () Bool)

(assert (=> b!7073320 (= e!4252490 (nullable!7333 (h!74801 (exprs!7146 lt!2546945))))))

(declare-fun b!7073321 () Bool)

(assert (=> b!7073321 (= e!4252491 call!642852)))

(assert (= (and d!2211969 res!2888958) b!7073320))

(assert (= (and d!2211969 c!1319512) b!7073317))

(assert (= (and d!2211969 (not c!1319512)) b!7073319))

(assert (= (and b!7073319 c!1319511) b!7073321))

(assert (= (and b!7073319 (not c!1319511)) b!7073318))

(assert (= (or b!7073317 b!7073321) bm!642847))

(declare-fun m!7800086 () Bool)

(assert (=> bm!642847 m!7800086))

(declare-fun m!7800088 () Bool)

(assert (=> b!7073317 m!7800088))

(declare-fun m!7800090 () Bool)

(assert (=> b!7073320 m!7800090))

(assert (=> b!7073022 d!2211969))

(declare-fun d!2211971 () Bool)

(assert (=> d!2211971 (= (flatMap!2576 lt!2546946 lambda!425911) (dynLambda!27812 lambda!425911 lt!2546945))))

(declare-fun lt!2547195 () Unit!162010)

(assert (=> d!2211971 (= lt!2547195 (choose!54244 lt!2546946 lt!2546945 lambda!425911))))

(assert (=> d!2211971 (= lt!2546946 (set.insert lt!2546945 (as set.empty (Set Context!13292))))))

(assert (=> d!2211971 (= (lemmaFlatMapOnSingletonSet!2085 lt!2546946 lt!2546945 lambda!425911) lt!2547195)))

(declare-fun b_lambda!270043 () Bool)

(assert (=> (not b_lambda!270043) (not d!2211971)))

(declare-fun bs!1880852 () Bool)

(assert (= bs!1880852 d!2211971))

(assert (=> bs!1880852 m!7799660))

(declare-fun m!7800092 () Bool)

(assert (=> bs!1880852 m!7800092))

(declare-fun m!7800094 () Bool)

(assert (=> bs!1880852 m!7800094))

(assert (=> bs!1880852 m!7799580))

(assert (=> b!7073022 d!2211971))

(assert (=> b!7073022 d!2211907))

(declare-fun bs!1880853 () Bool)

(declare-fun d!2211973 () Bool)

(assert (= bs!1880853 (and d!2211973 b!7073022)))

(declare-fun lambda!425977 () Int)

(assert (=> bs!1880853 (= lambda!425977 lambda!425911)))

(declare-fun bs!1880854 () Bool)

(assert (= bs!1880854 (and d!2211973 d!2211925)))

(assert (=> bs!1880854 (= lambda!425977 lambda!425973)))

(assert (=> d!2211973 true))

(assert (=> d!2211973 (= (derivationStepZipper!3100 lt!2546946 (h!74800 s!7408)) (flatMap!2576 lt!2546946 lambda!425977))))

(declare-fun bs!1880855 () Bool)

(assert (= bs!1880855 d!2211973))

(declare-fun m!7800096 () Bool)

(assert (=> bs!1880855 m!7800096))

(assert (=> b!7073022 d!2211973))

(declare-fun d!2211975 () Bool)

(assert (=> d!2211975 (= (flatMap!2576 lt!2546946 lambda!425911) (choose!54243 lt!2546946 lambda!425911))))

(declare-fun bs!1880856 () Bool)

(assert (= bs!1880856 d!2211975))

(declare-fun m!7800098 () Bool)

(assert (=> bs!1880856 m!7800098))

(assert (=> b!7073022 d!2211975))

(declare-fun d!2211977 () Bool)

(declare-fun nullableFct!2816 (Regex!17650) Bool)

(assert (=> d!2211977 (= (nullable!7333 (h!74801 (exprs!7146 lt!2546928))) (nullableFct!2816 (h!74801 (exprs!7146 lt!2546928))))))

(declare-fun bs!1880857 () Bool)

(assert (= bs!1880857 d!2211977))

(declare-fun m!7800100 () Bool)

(assert (=> bs!1880857 m!7800100))

(assert (=> b!7073013 d!2211977))

(declare-fun d!2211979 () Bool)

(assert (=> d!2211979 (= (tail!13836 (exprs!7146 lt!2546928)) (t!382260 (exprs!7146 lt!2546928)))))

(assert (=> b!7073013 d!2211979))

(declare-fun b!7073324 () Bool)

(declare-fun res!2888959 () Bool)

(declare-fun e!4252493 () Bool)

(assert (=> b!7073324 (=> (not res!2888959) (not e!4252493))))

(declare-fun lt!2547196 () List!68476)

(assert (=> b!7073324 (= res!2888959 (= (size!41218 lt!2547196) (+ (size!41218 lt!2546965) (size!41218 (_2!37440 lt!2546961)))))))

(declare-fun b!7073322 () Bool)

(declare-fun e!4252492 () List!68476)

(assert (=> b!7073322 (= e!4252492 (_2!37440 lt!2546961))))

(declare-fun b!7073325 () Bool)

(assert (=> b!7073325 (= e!4252493 (or (not (= (_2!37440 lt!2546961) Nil!68352)) (= lt!2547196 lt!2546965)))))

(declare-fun d!2211981 () Bool)

(assert (=> d!2211981 e!4252493))

(declare-fun res!2888960 () Bool)

(assert (=> d!2211981 (=> (not res!2888960) (not e!4252493))))

(assert (=> d!2211981 (= res!2888960 (= (content!13802 lt!2547196) (set.union (content!13802 lt!2546965) (content!13802 (_2!37440 lt!2546961)))))))

(assert (=> d!2211981 (= lt!2547196 e!4252492)))

(declare-fun c!1319513 () Bool)

(assert (=> d!2211981 (= c!1319513 (is-Nil!68352 lt!2546965))))

(assert (=> d!2211981 (= (++!15783 lt!2546965 (_2!37440 lt!2546961)) lt!2547196)))

(declare-fun b!7073323 () Bool)

(assert (=> b!7073323 (= e!4252492 (Cons!68352 (h!74800 lt!2546965) (++!15783 (t!382259 lt!2546965) (_2!37440 lt!2546961))))))

(assert (= (and d!2211981 c!1319513) b!7073322))

(assert (= (and d!2211981 (not c!1319513)) b!7073323))

(assert (= (and d!2211981 res!2888960) b!7073324))

(assert (= (and b!7073324 res!2888959) b!7073325))

(declare-fun m!7800102 () Bool)

(assert (=> b!7073324 m!7800102))

(declare-fun m!7800104 () Bool)

(assert (=> b!7073324 m!7800104))

(assert (=> b!7073324 m!7799798))

(declare-fun m!7800106 () Bool)

(assert (=> d!2211981 m!7800106))

(declare-fun m!7800108 () Bool)

(assert (=> d!2211981 m!7800108))

(assert (=> d!2211981 m!7799804))

(declare-fun m!7800110 () Bool)

(assert (=> b!7073323 m!7800110))

(assert (=> b!7073037 d!2211981))

(declare-fun d!2211983 () Bool)

(declare-fun c!1319514 () Bool)

(assert (=> d!2211983 (= c!1319514 (isEmpty!39895 (_1!37440 lt!2546961)))))

(declare-fun e!4252494 () Bool)

(assert (=> d!2211983 (= (matchZipper!3190 lt!2546936 (_1!37440 lt!2546961)) e!4252494)))

(declare-fun b!7073326 () Bool)

(assert (=> b!7073326 (= e!4252494 (nullableZipper!2702 lt!2546936))))

(declare-fun b!7073327 () Bool)

(assert (=> b!7073327 (= e!4252494 (matchZipper!3190 (derivationStepZipper!3100 lt!2546936 (head!14410 (_1!37440 lt!2546961))) (tail!13838 (_1!37440 lt!2546961))))))

(assert (= (and d!2211983 c!1319514) b!7073326))

(assert (= (and d!2211983 (not c!1319514)) b!7073327))

(assert (=> d!2211983 m!7799848))

(declare-fun m!7800112 () Bool)

(assert (=> b!7073326 m!7800112))

(assert (=> b!7073327 m!7799852))

(assert (=> b!7073327 m!7799852))

(declare-fun m!7800114 () Bool)

(assert (=> b!7073327 m!7800114))

(assert (=> b!7073327 m!7799856))

(assert (=> b!7073327 m!7800114))

(assert (=> b!7073327 m!7799856))

(declare-fun m!7800116 () Bool)

(assert (=> b!7073327 m!7800116))

(assert (=> b!7073026 d!2211983))

(declare-fun d!2211985 () Bool)

(declare-fun e!4252497 () Bool)

(assert (=> d!2211985 e!4252497))

(declare-fun res!2888963 () Bool)

(assert (=> d!2211985 (=> (not res!2888963) (not e!4252497))))

(declare-fun lt!2547199 () Context!13292)

(declare-fun dynLambda!27813 (Int Context!13292) Bool)

(assert (=> d!2211985 (= res!2888963 (dynLambda!27813 lambda!425908 lt!2547199))))

(declare-fun getWitness!1757 (List!68478 Int) Context!13292)

(assert (=> d!2211985 (= lt!2547199 (getWitness!1757 (toList!10991 lt!2546932) lambda!425908))))

(assert (=> d!2211985 (exists!3700 lt!2546932 lambda!425908)))

(assert (=> d!2211985 (= (getWitness!1755 lt!2546932 lambda!425908) lt!2547199)))

(declare-fun b!7073330 () Bool)

(assert (=> b!7073330 (= e!4252497 (set.member lt!2547199 lt!2546932))))

(assert (= (and d!2211985 res!2888963) b!7073330))

(declare-fun b_lambda!270045 () Bool)

(assert (=> (not b_lambda!270045) (not d!2211985)))

(declare-fun m!7800118 () Bool)

(assert (=> d!2211985 m!7800118))

(assert (=> d!2211985 m!7799566))

(assert (=> d!2211985 m!7799566))

(declare-fun m!7800120 () Bool)

(assert (=> d!2211985 m!7800120))

(declare-fun m!7800122 () Bool)

(assert (=> d!2211985 m!7800122))

(declare-fun m!7800124 () Bool)

(assert (=> b!7073330 m!7800124))

(assert (=> b!7073036 d!2211985))

(declare-fun bs!1880858 () Bool)

(declare-fun d!2211987 () Bool)

(assert (= bs!1880858 (and d!2211987 b!7073036)))

(declare-fun lambda!425980 () Int)

(assert (=> bs!1880858 (not (= lambda!425980 lambda!425908))))

(declare-fun bs!1880859 () Bool)

(assert (= bs!1880859 (and d!2211987 b!7073023)))

(assert (=> bs!1880859 (not (= lambda!425980 lambda!425912))))

(declare-fun bs!1880860 () Bool)

(assert (= bs!1880860 (and d!2211987 d!2211961)))

(assert (=> bs!1880860 (not (= lambda!425980 lambda!425976))))

(assert (=> d!2211987 true))

(declare-fun order!28413 () Int)

(declare-fun dynLambda!27814 (Int Int) Int)

(assert (=> d!2211987 (< (dynLambda!27814 order!28413 lambda!425908) (dynLambda!27814 order!28413 lambda!425980))))

(declare-fun forall!16604 (List!68478 Int) Bool)

(assert (=> d!2211987 (= (exists!3701 lt!2546927 lambda!425908) (not (forall!16604 lt!2546927 lambda!425980)))))

(declare-fun bs!1880861 () Bool)

(assert (= bs!1880861 d!2211987))

(declare-fun m!7800126 () Bool)

(assert (=> bs!1880861 m!7800126))

(assert (=> b!7073036 d!2211987))

(declare-fun bs!1880862 () Bool)

(declare-fun d!2211989 () Bool)

(assert (= bs!1880862 (and d!2211989 b!7073036)))

(declare-fun lambda!425983 () Int)

(assert (=> bs!1880862 (= lambda!425983 lambda!425908)))

(declare-fun bs!1880863 () Bool)

(assert (= bs!1880863 (and d!2211989 b!7073023)))

(assert (=> bs!1880863 (= (= s!7408 lt!2546965) (= lambda!425983 lambda!425912))))

(declare-fun bs!1880864 () Bool)

(assert (= bs!1880864 (and d!2211989 d!2211961)))

(assert (=> bs!1880864 (= (= s!7408 lt!2546965) (= lambda!425983 lambda!425976))))

(declare-fun bs!1880865 () Bool)

(assert (= bs!1880865 (and d!2211989 d!2211987)))

(assert (=> bs!1880865 (not (= lambda!425983 lambda!425980))))

(assert (=> d!2211989 true))

(assert (=> d!2211989 (exists!3701 lt!2546927 lambda!425983)))

(declare-fun lt!2547202 () Unit!162010)

(declare-fun choose!54251 (List!68478 List!68476) Unit!162010)

(assert (=> d!2211989 (= lt!2547202 (choose!54251 lt!2546927 s!7408))))

(assert (=> d!2211989 (matchZipper!3190 (content!13800 lt!2546927) s!7408)))

(assert (=> d!2211989 (= (lemmaZipperMatchesExistsMatchingContext!571 lt!2546927 s!7408) lt!2547202)))

(declare-fun bs!1880866 () Bool)

(assert (= bs!1880866 d!2211989))

(declare-fun m!7800128 () Bool)

(assert (=> bs!1880866 m!7800128))

(declare-fun m!7800130 () Bool)

(assert (=> bs!1880866 m!7800130))

(declare-fun m!7800132 () Bool)

(assert (=> bs!1880866 m!7800132))

(assert (=> bs!1880866 m!7800132))

(declare-fun m!7800134 () Bool)

(assert (=> bs!1880866 m!7800134))

(assert (=> b!7073036 d!2211989))

(declare-fun d!2211991 () Bool)

(declare-fun e!4252498 () Bool)

(assert (=> d!2211991 e!4252498))

(declare-fun res!2888964 () Bool)

(assert (=> d!2211991 (=> (not res!2888964) (not e!4252498))))

(declare-fun lt!2547203 () List!68478)

(assert (=> d!2211991 (= res!2888964 (noDuplicate!2731 lt!2547203))))

(assert (=> d!2211991 (= lt!2547203 (choose!54250 lt!2546932))))

(assert (=> d!2211991 (= (toList!10991 lt!2546932) lt!2547203)))

(declare-fun b!7073333 () Bool)

(assert (=> b!7073333 (= e!4252498 (= (content!13800 lt!2547203) lt!2546932))))

(assert (= (and d!2211991 res!2888964) b!7073333))

(declare-fun m!7800136 () Bool)

(assert (=> d!2211991 m!7800136))

(declare-fun m!7800138 () Bool)

(assert (=> d!2211991 m!7800138))

(declare-fun m!7800140 () Bool)

(assert (=> b!7073333 m!7800140))

(assert (=> b!7073036 d!2211991))

(declare-fun d!2211993 () Bool)

(declare-fun c!1319517 () Bool)

(assert (=> d!2211993 (= c!1319517 (isEmpty!39895 s!7408))))

(declare-fun e!4252499 () Bool)

(assert (=> d!2211993 (= (matchZipper!3190 lt!2546948 s!7408) e!4252499)))

(declare-fun b!7073334 () Bool)

(assert (=> b!7073334 (= e!4252499 (nullableZipper!2702 lt!2546948))))

(declare-fun b!7073335 () Bool)

(assert (=> b!7073335 (= e!4252499 (matchZipper!3190 (derivationStepZipper!3100 lt!2546948 (head!14410 s!7408)) (tail!13838 s!7408)))))

(assert (= (and d!2211993 c!1319517) b!7073334))

(assert (= (and d!2211993 (not c!1319517)) b!7073335))

(declare-fun m!7800142 () Bool)

(assert (=> d!2211993 m!7800142))

(declare-fun m!7800144 () Bool)

(assert (=> b!7073334 m!7800144))

(declare-fun m!7800146 () Bool)

(assert (=> b!7073335 m!7800146))

(assert (=> b!7073335 m!7800146))

(declare-fun m!7800148 () Bool)

(assert (=> b!7073335 m!7800148))

(declare-fun m!7800150 () Bool)

(assert (=> b!7073335 m!7800150))

(assert (=> b!7073335 m!7800148))

(assert (=> b!7073335 m!7800150))

(declare-fun m!7800152 () Bool)

(assert (=> b!7073335 m!7800152))

(assert (=> b!7073036 d!2211993))

(declare-fun d!2211995 () Bool)

(declare-fun c!1319518 () Bool)

(assert (=> d!2211995 (= c!1319518 (isEmpty!39895 s!7408))))

(declare-fun e!4252500 () Bool)

(assert (=> d!2211995 (= (matchZipper!3190 lt!2546932 s!7408) e!4252500)))

(declare-fun b!7073336 () Bool)

(assert (=> b!7073336 (= e!4252500 (nullableZipper!2702 lt!2546932))))

(declare-fun b!7073337 () Bool)

(assert (=> b!7073337 (= e!4252500 (matchZipper!3190 (derivationStepZipper!3100 lt!2546932 (head!14410 s!7408)) (tail!13838 s!7408)))))

(assert (= (and d!2211995 c!1319518) b!7073336))

(assert (= (and d!2211995 (not c!1319518)) b!7073337))

(assert (=> d!2211995 m!7800142))

(declare-fun m!7800154 () Bool)

(assert (=> b!7073336 m!7800154))

(assert (=> b!7073337 m!7800146))

(assert (=> b!7073337 m!7800146))

(declare-fun m!7800156 () Bool)

(assert (=> b!7073337 m!7800156))

(assert (=> b!7073337 m!7800150))

(assert (=> b!7073337 m!7800156))

(assert (=> b!7073337 m!7800150))

(declare-fun m!7800158 () Bool)

(assert (=> b!7073337 m!7800158))

(assert (=> start!687174 d!2211995))

(declare-fun bs!1880867 () Bool)

(declare-fun d!2211997 () Bool)

(assert (= bs!1880867 (and d!2211997 b!7073041)))

(declare-fun lambda!425984 () Int)

(assert (=> bs!1880867 (= lambda!425984 lambda!425909)))

(declare-fun bs!1880868 () Bool)

(assert (= bs!1880868 (and d!2211997 d!2211899)))

(assert (=> bs!1880868 (= lambda!425984 lambda!425967)))

(assert (=> d!2211997 true))

(assert (=> d!2211997 (= (appendTo!771 z1!570 ct2!306) (map!15996 z1!570 lambda!425984))))

(declare-fun bs!1880869 () Bool)

(assert (= bs!1880869 d!2211997))

(declare-fun m!7800160 () Bool)

(assert (=> bs!1880869 m!7800160))

(assert (=> start!687174 d!2211997))

(declare-fun bs!1880870 () Bool)

(declare-fun d!2211999 () Bool)

(assert (= bs!1880870 (and d!2211999 b!7073041)))

(declare-fun lambda!425985 () Int)

(assert (=> bs!1880870 (= lambda!425985 lambda!425910)))

(declare-fun bs!1880871 () Bool)

(assert (= bs!1880871 (and d!2211999 d!2211893)))

(assert (=> bs!1880871 (= lambda!425985 lambda!425962)))

(declare-fun bs!1880872 () Bool)

(assert (= bs!1880872 (and d!2211999 d!2211913)))

(assert (=> bs!1880872 (= lambda!425985 lambda!425970)))

(assert (=> d!2211999 (= (inv!86985 ct2!306) (forall!16603 (exprs!7146 ct2!306) lambda!425985))))

(declare-fun bs!1880873 () Bool)

(assert (= bs!1880873 d!2211999))

(declare-fun m!7800162 () Bool)

(assert (=> bs!1880873 m!7800162))

(assert (=> start!687174 d!2211999))

(declare-fun d!2212001 () Bool)

(assert (=> d!2212001 (= (isEmpty!39892 (exprs!7146 lt!2546928)) (is-Nil!68353 (exprs!7146 lt!2546928)))))

(assert (=> b!7073035 d!2212001))

(assert (=> b!7073024 d!2211901))

(declare-fun b!7073342 () Bool)

(declare-fun e!4252503 () Bool)

(declare-fun tp!1942437 () Bool)

(assert (=> b!7073342 (= e!4252503 (and tp_is_empty!44525 tp!1942437))))

(assert (=> b!7073032 (= tp!1942422 e!4252503)))

(assert (= (and b!7073032 (is-Cons!68352 (t!382259 s!7408))) b!7073342))

(declare-fun condSetEmpty!50288 () Bool)

(assert (=> setNonEmpty!50282 (= condSetEmpty!50288 (= setRest!50282 (as set.empty (Set Context!13292))))))

(declare-fun setRes!50288 () Bool)

(assert (=> setNonEmpty!50282 (= tp!1942419 setRes!50288)))

(declare-fun setIsEmpty!50288 () Bool)

(assert (=> setIsEmpty!50288 setRes!50288))

(declare-fun setElem!50288 () Context!13292)

(declare-fun setNonEmpty!50288 () Bool)

(declare-fun tp!1942443 () Bool)

(declare-fun e!4252506 () Bool)

(assert (=> setNonEmpty!50288 (= setRes!50288 (and tp!1942443 (inv!86985 setElem!50288) e!4252506))))

(declare-fun setRest!50288 () (Set Context!13292))

(assert (=> setNonEmpty!50288 (= setRest!50282 (set.union (set.insert setElem!50288 (as set.empty (Set Context!13292))) setRest!50288))))

(declare-fun b!7073347 () Bool)

(declare-fun tp!1942442 () Bool)

(assert (=> b!7073347 (= e!4252506 tp!1942442)))

(assert (= (and setNonEmpty!50282 condSetEmpty!50288) setIsEmpty!50288))

(assert (= (and setNonEmpty!50282 (not condSetEmpty!50288)) setNonEmpty!50288))

(assert (= setNonEmpty!50288 b!7073347))

(declare-fun m!7800164 () Bool)

(assert (=> setNonEmpty!50288 m!7800164))

(declare-fun b!7073352 () Bool)

(declare-fun e!4252509 () Bool)

(declare-fun tp!1942448 () Bool)

(declare-fun tp!1942449 () Bool)

(assert (=> b!7073352 (= e!4252509 (and tp!1942448 tp!1942449))))

(assert (=> b!7073017 (= tp!1942420 e!4252509)))

(assert (= (and b!7073017 (is-Cons!68353 (exprs!7146 ct2!306))) b!7073352))

(declare-fun b!7073353 () Bool)

(declare-fun e!4252510 () Bool)

(declare-fun tp!1942450 () Bool)

(declare-fun tp!1942451 () Bool)

(assert (=> b!7073353 (= e!4252510 (and tp!1942450 tp!1942451))))

(assert (=> b!7073016 (= tp!1942421 e!4252510)))

(assert (= (and b!7073016 (is-Cons!68353 (exprs!7146 setElem!50282))) b!7073353))

(declare-fun b_lambda!270047 () Bool)

(assert (= b_lambda!270039 (or b!7073041 b_lambda!270047)))

(declare-fun bs!1880874 () Bool)

(declare-fun d!2212003 () Bool)

(assert (= bs!1880874 (and d!2212003 b!7073041)))

(declare-fun lt!2547204 () Unit!162010)

(assert (=> bs!1880874 (= lt!2547204 (lemmaConcatPreservesForall!961 (exprs!7146 lt!2547168) (exprs!7146 ct2!306) lambda!425910))))

(assert (=> bs!1880874 (= (dynLambda!27811 lambda!425909 lt!2547168) (Context!13293 (++!15784 (exprs!7146 lt!2547168) (exprs!7146 ct2!306))))))

(declare-fun m!7800166 () Bool)

(assert (=> bs!1880874 m!7800166))

(declare-fun m!7800168 () Bool)

(assert (=> bs!1880874 m!7800168))

(assert (=> d!2211917 d!2212003))

(declare-fun b_lambda!270049 () Bool)

(assert (= b_lambda!270041 (or b!7073022 b_lambda!270049)))

(declare-fun bs!1880875 () Bool)

(declare-fun d!2212005 () Bool)

(assert (= bs!1880875 (and d!2212005 b!7073022)))

(assert (=> bs!1880875 (= (dynLambda!27812 lambda!425911 lt!2546928) (derivationStepZipperUp!2234 lt!2546928 (h!74800 s!7408)))))

(assert (=> bs!1880875 m!7799540))

(assert (=> d!2211923 d!2212005))

(declare-fun b_lambda!270051 () Bool)

(assert (= b_lambda!270043 (or b!7073022 b_lambda!270051)))

(declare-fun bs!1880876 () Bool)

(declare-fun d!2212007 () Bool)

(assert (= bs!1880876 (and d!2212007 b!7073022)))

(assert (=> bs!1880876 (= (dynLambda!27812 lambda!425911 lt!2546945) (derivationStepZipperUp!2234 lt!2546945 (h!74800 s!7408)))))

(assert (=> bs!1880876 m!7799656))

(assert (=> d!2211971 d!2212007))

(declare-fun b_lambda!270053 () Bool)

(assert (= b_lambda!270045 (or b!7073036 b_lambda!270053)))

(declare-fun bs!1880877 () Bool)

(declare-fun d!2212009 () Bool)

(assert (= bs!1880877 (and d!2212009 b!7073036)))

(assert (=> bs!1880877 (= (dynLambda!27813 lambda!425908 lt!2547199) (matchZipper!3190 (set.insert lt!2547199 (as set.empty (Set Context!13292))) s!7408))))

(declare-fun m!7800170 () Bool)

(assert (=> bs!1880877 m!7800170))

(assert (=> bs!1880877 m!7800170))

(declare-fun m!7800172 () Bool)

(assert (=> bs!1880877 m!7800172))

(assert (=> d!2211985 d!2212009))

(push 1)

(assert (not bs!1880875))

(assert (not d!2211931))

(assert (not b!7073178))

(assert (not d!2211947))

(assert (not d!2211929))

(assert (not bm!642844))

(assert (not d!2211991))

(assert (not bm!642847))

(assert (not d!2211915))

(assert (not bm!642840))

(assert (not b!7073272))

(assert (not d!2211951))

(assert (not b!7073296))

(assert (not d!2211977))

(assert (not b!7073283))

(assert (not b!7073215))

(assert (not b!7073335))

(assert (not b!7073270))

(assert (not bm!642833))

(assert (not b!7073334))

(assert (not d!2211905))

(assert (not bm!642834))

(assert (not b!7073269))

(assert (not b!7073292))

(assert (not d!2211995))

(assert (not b!7073191))

(assert (not d!2211887))

(assert (not b!7073258))

(assert (not d!2211903))

(assert (not b!7073316))

(assert (not bm!642841))

(assert (not b!7073337))

(assert (not b_lambda!270049))

(assert (not bm!642839))

(assert (not d!2211959))

(assert (not b!7073301))

(assert (not d!2211999))

(assert (not b!7073249))

(assert (not d!2211917))

(assert (not d!2211939))

(assert (not d!2211889))

(assert (not bm!642830))

(assert (not d!2211913))

(assert (not b!7073275))

(assert (not d!2211955))

(assert (not b!7073257))

(assert (not b!7073212))

(assert (not b!7073271))

(assert (not b!7073218))

(assert (not b!7073336))

(assert (not d!2211983))

(assert (not b_lambda!270053))

(assert (not b!7073310))

(assert (not b!7073211))

(assert (not d!2211941))

(assert (not bm!642838))

(assert (not b!7073299))

(assert (not d!2211997))

(assert (not b!7073305))

(assert (not b!7073320))

(assert (not bm!642845))

(assert (not b!7073323))

(assert (not d!2211975))

(assert (not b!7073273))

(assert (not b!7073295))

(assert (not bs!1880876))

(assert (not d!2211961))

(assert tp_is_empty!44525)

(assert (not d!2211909))

(assert (not b!7073352))

(assert (not d!2211953))

(assert (not d!2211957))

(assert (not b!7073327))

(assert (not b!7073266))

(assert (not b!7073222))

(assert (not b!7073150))

(assert (not d!2211911))

(assert (not b!7073278))

(assert (not d!2211971))

(assert (not b!7073298))

(assert (not bs!1880874))

(assert (not b!7073326))

(assert (not b!7073216))

(assert (not d!2211895))

(assert (not b!7073342))

(assert (not b!7073306))

(assert (not b!7073347))

(assert (not b!7073190))

(assert (not b!7073214))

(assert (not b!7073219))

(assert (not d!2211963))

(assert (not b!7073263))

(assert (not d!2211985))

(assert (not d!2211981))

(assert (not b!7073221))

(assert (not b!7073151))

(assert (not d!2211993))

(assert (not d!2211901))

(assert (not b!7073233))

(assert (not b!7073268))

(assert (not d!2211989))

(assert (not b!7073324))

(assert (not d!2211925))

(assert (not setNonEmpty!50288))

(assert (not d!2211893))

(assert (not b!7073259))

(assert (not bs!1880877))

(assert (not d!2211949))

(assert (not b!7073274))

(assert (not b!7073302))

(assert (not d!2211987))

(assert (not b!7073303))

(assert (not d!2211899))

(assert (not d!2211965))

(assert (not b!7073353))

(assert (not b!7073307))

(assert (not d!2211937))

(assert (not b!7073252))

(assert (not b!7073333))

(assert (not b_lambda!270047))

(assert (not b!7073256))

(assert (not d!2211907))

(assert (not b_lambda!270051))

(assert (not b!7073293))

(assert (not d!2211923))

(assert (not b!7073220))

(assert (not b!7073262))

(assert (not b!7073317))

(assert (not d!2211927))

(assert (not b!7073232))

(assert (not d!2211973))

(assert (not d!2211935))

(assert (not d!2211919))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

