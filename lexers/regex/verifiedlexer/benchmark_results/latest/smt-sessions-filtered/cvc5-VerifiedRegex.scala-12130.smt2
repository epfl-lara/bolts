; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!682052 () Bool)

(assert start!682052)

(declare-fun b!7046131 () Bool)

(assert (=> b!7046131 true))

(declare-fun b!7046136 () Bool)

(assert (=> b!7046136 true))

(declare-fun b!7046126 () Bool)

(assert (=> b!7046126 true))

(declare-fun b!7046124 () Bool)

(declare-fun e!4235913 () Bool)

(declare-datatypes ((C!35282 0))(
  ( (C!35283 (val!27343 Int)) )
))
(declare-datatypes ((Regex!17506 0))(
  ( (ElementMatch!17506 (c!1312016 C!35282)) (Concat!26351 (regOne!35524 Regex!17506) (regTwo!35524 Regex!17506)) (EmptyExpr!17506) (Star!17506 (reg!17835 Regex!17506)) (EmptyLang!17506) (Union!17506 (regOne!35525 Regex!17506) (regTwo!35525 Regex!17506)) )
))
(declare-datatypes ((List!68046 0))(
  ( (Nil!67922) (Cons!67922 (h!74370 Regex!17506) (t!381823 List!68046)) )
))
(declare-datatypes ((Context!13004 0))(
  ( (Context!13005 (exprs!7002 List!68046)) )
))
(declare-fun lt!2526932 () (Set Context!13004))

(declare-datatypes ((List!68047 0))(
  ( (Nil!67923) (Cons!67923 (h!74371 C!35282) (t!381824 List!68047)) )
))
(declare-datatypes ((tuple2!68142 0))(
  ( (tuple2!68143 (_1!37374 List!68047) (_2!37374 List!68047)) )
))
(declare-datatypes ((Option!16903 0))(
  ( (None!16902) (Some!16902 (v!53192 tuple2!68142)) )
))
(declare-fun lt!2526918 () Option!16903)

(declare-fun matchZipper!3046 ((Set Context!13004) List!68047) Bool)

(declare-fun get!23807 (Option!16903) tuple2!68142)

(assert (=> b!7046124 (= e!4235913 (matchZipper!3046 lt!2526932 (_1!37374 (get!23807 lt!2526918))))))

(declare-fun isDefined!13604 (Option!16903) Bool)

(assert (=> b!7046124 (isDefined!13604 lt!2526918)))

(declare-fun s!7408 () List!68047)

(declare-fun ct2!306 () Context!13004)

(declare-fun findConcatSeparationZippers!419 ((Set Context!13004) (Set Context!13004) List!68047 List!68047 List!68047) Option!16903)

(assert (=> b!7046124 (= lt!2526918 (findConcatSeparationZippers!419 lt!2526932 (set.insert ct2!306 (as set.empty (Set Context!13004))) Nil!67923 (t!381824 s!7408) (t!381824 s!7408)))))

(declare-datatypes ((Unit!161698 0))(
  ( (Unit!161699) )
))
(declare-fun lt!2526914 () Unit!161698)

(declare-fun lemmaConcatZipperMatchesStringThenFindConcatDefined!407 ((Set Context!13004) Context!13004 List!68047) Unit!161698)

(assert (=> b!7046124 (= lt!2526914 (lemmaConcatZipperMatchesStringThenFindConcatDefined!407 lt!2526932 ct2!306 (t!381824 s!7408)))))

(declare-fun lt!2526930 () (Set Context!13004))

(declare-fun appendTo!627 ((Set Context!13004) Context!13004) (Set Context!13004))

(assert (=> b!7046124 (= lt!2526930 (appendTo!627 lt!2526932 ct2!306))))

(declare-fun lt!2526913 () Context!13004)

(declare-fun lt!2526924 () Context!13004)

(declare-fun derivationStepZipperDown!2170 (Regex!17506 Context!13004 C!35282) (Set Context!13004))

(assert (=> b!7046124 (= lt!2526932 (derivationStepZipperDown!2170 (h!74370 (exprs!7002 lt!2526924)) lt!2526913 (h!74371 s!7408)))))

(declare-fun lambda!417807 () Int)

(declare-fun lt!2526911 () List!68046)

(declare-fun lt!2526919 () Unit!161698)

(declare-fun lemmaConcatPreservesForall!827 (List!68046 List!68046 Int) Unit!161698)

(assert (=> b!7046124 (= lt!2526919 (lemmaConcatPreservesForall!827 lt!2526911 (exprs!7002 ct2!306) lambda!417807))))

(declare-fun lt!2526931 () Unit!161698)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!83 (Context!13004 Regex!17506 C!35282 Context!13004) Unit!161698)

(assert (=> b!7046124 (= lt!2526931 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!83 lt!2526913 (h!74370 (exprs!7002 lt!2526924)) (h!74371 s!7408) ct2!306))))

(declare-fun b!7046125 () Bool)

(declare-fun res!2876516 () Bool)

(declare-fun e!4235915 () Bool)

(assert (=> b!7046125 (=> res!2876516 e!4235915)))

(declare-fun lt!2526920 () Context!13004)

(declare-fun lt!2526916 () (Set Context!13004))

(assert (=> b!7046125 (= res!2876516 (not (set.member lt!2526920 lt!2526916)))))

(declare-fun e!4235916 () Bool)

(declare-fun e!4235914 () Bool)

(assert (=> b!7046126 (= e!4235916 e!4235914)))

(declare-fun res!2876511 () Bool)

(assert (=> b!7046126 (=> res!2876511 e!4235914)))

(declare-fun lt!2526926 () (Set Context!13004))

(declare-fun lt!2526927 () (Set Context!13004))

(declare-fun derivationStepZipper!2962 ((Set Context!13004) C!35282) (Set Context!13004))

(assert (=> b!7046126 (= res!2876511 (not (= (derivationStepZipper!2962 lt!2526927 (h!74371 s!7408)) lt!2526926)))))

(declare-fun lambda!417808 () Int)

(declare-fun lt!2526923 () Context!13004)

(declare-fun flatMap!2453 ((Set Context!13004) Int) (Set Context!13004))

(declare-fun derivationStepZipperUp!2116 (Context!13004 C!35282) (Set Context!13004))

(assert (=> b!7046126 (= (flatMap!2453 lt!2526927 lambda!417808) (derivationStepZipperUp!2116 lt!2526923 (h!74371 s!7408)))))

(declare-fun lt!2526929 () Unit!161698)

(declare-fun lemmaFlatMapOnSingletonSet!1967 ((Set Context!13004) Context!13004 Int) Unit!161698)

(assert (=> b!7046126 (= lt!2526929 (lemmaFlatMapOnSingletonSet!1967 lt!2526927 lt!2526923 lambda!417808))))

(assert (=> b!7046126 (= lt!2526926 (derivationStepZipperUp!2116 lt!2526923 (h!74371 s!7408)))))

(declare-fun lt!2526925 () Unit!161698)

(assert (=> b!7046126 (= lt!2526925 (lemmaConcatPreservesForall!827 (exprs!7002 lt!2526924) (exprs!7002 ct2!306) lambda!417807))))

(declare-fun b!7046127 () Bool)

(declare-fun res!2876517 () Bool)

(assert (=> b!7046127 (=> res!2876517 e!4235914)))

(assert (=> b!7046127 (= res!2876517 (not (is-Cons!67922 (exprs!7002 lt!2526924))))))

(declare-fun b!7046128 () Bool)

(declare-fun res!2876519 () Bool)

(declare-fun e!4235912 () Bool)

(assert (=> b!7046128 (=> (not res!2876519) (not e!4235912))))

(assert (=> b!7046128 (= res!2876519 (is-Cons!67923 s!7408))))

(declare-fun b!7046129 () Bool)

(declare-fun e!4235911 () Bool)

(declare-fun tp_is_empty!44237 () Bool)

(declare-fun tp!1938054 () Bool)

(assert (=> b!7046129 (= e!4235911 (and tp_is_empty!44237 tp!1938054))))

(declare-fun b!7046130 () Bool)

(declare-fun e!4235908 () Bool)

(declare-fun tp!1938056 () Bool)

(assert (=> b!7046130 (= e!4235908 tp!1938056)))

(assert (=> b!7046131 (= e!4235912 (not e!4235915))))

(declare-fun res!2876514 () Bool)

(assert (=> b!7046131 (=> res!2876514 e!4235915)))

(declare-fun lt!2526917 () (Set Context!13004))

(assert (=> b!7046131 (= res!2876514 (not (matchZipper!3046 lt!2526917 s!7408)))))

(assert (=> b!7046131 (= lt!2526917 (set.insert lt!2526920 (as set.empty (Set Context!13004))))))

(declare-fun lambda!417805 () Int)

(declare-fun getWitness!1539 ((Set Context!13004) Int) Context!13004)

(assert (=> b!7046131 (= lt!2526920 (getWitness!1539 lt!2526916 lambda!417805))))

(declare-datatypes ((List!68048 0))(
  ( (Nil!67924) (Cons!67924 (h!74372 Context!13004) (t!381825 List!68048)) )
))
(declare-fun lt!2526922 () List!68048)

(declare-fun exists!3460 (List!68048 Int) Bool)

(assert (=> b!7046131 (exists!3460 lt!2526922 lambda!417805)))

(declare-fun lt!2526928 () Unit!161698)

(declare-fun lemmaZipperMatchesExistsMatchingContext!445 (List!68048 List!68047) Unit!161698)

(assert (=> b!7046131 (= lt!2526928 (lemmaZipperMatchesExistsMatchingContext!445 lt!2526922 s!7408))))

(declare-fun toList!10849 ((Set Context!13004)) List!68048)

(assert (=> b!7046131 (= lt!2526922 (toList!10849 lt!2526916))))

(declare-fun b!7046132 () Bool)

(declare-fun res!2876515 () Bool)

(assert (=> b!7046132 (=> res!2876515 e!4235914)))

(declare-fun isEmpty!39640 (List!68046) Bool)

(assert (=> b!7046132 (= res!2876515 (isEmpty!39640 (exprs!7002 lt!2526924)))))

(declare-fun b!7046133 () Bool)

(declare-fun e!4235909 () Bool)

(declare-fun tp!1938055 () Bool)

(assert (=> b!7046133 (= e!4235909 tp!1938055)))

(declare-fun res!2876513 () Bool)

(assert (=> start!682052 (=> (not res!2876513) (not e!4235912))))

(assert (=> start!682052 (= res!2876513 (matchZipper!3046 lt!2526916 s!7408))))

(declare-fun z1!570 () (Set Context!13004))

(assert (=> start!682052 (= lt!2526916 (appendTo!627 z1!570 ct2!306))))

(assert (=> start!682052 e!4235912))

(declare-fun condSetEmpty!49457 () Bool)

(assert (=> start!682052 (= condSetEmpty!49457 (= z1!570 (as set.empty (Set Context!13004))))))

(declare-fun setRes!49457 () Bool)

(assert (=> start!682052 setRes!49457))

(declare-fun inv!86625 (Context!13004) Bool)

(assert (=> start!682052 (and (inv!86625 ct2!306) e!4235908)))

(assert (=> start!682052 e!4235911))

(declare-fun setIsEmpty!49457 () Bool)

(assert (=> setIsEmpty!49457 setRes!49457))

(declare-fun b!7046134 () Bool)

(declare-fun e!4235907 () Bool)

(assert (=> b!7046134 (= e!4235907 e!4235916)))

(declare-fun res!2876518 () Bool)

(assert (=> b!7046134 (=> res!2876518 e!4235916)))

(assert (=> b!7046134 (= res!2876518 (not (= lt!2526927 lt!2526917)))))

(assert (=> b!7046134 (= lt!2526927 (set.insert lt!2526923 (as set.empty (Set Context!13004))))))

(declare-fun lt!2526915 () Unit!161698)

(assert (=> b!7046134 (= lt!2526915 (lemmaConcatPreservesForall!827 (exprs!7002 lt!2526924) (exprs!7002 ct2!306) lambda!417807))))

(declare-fun b!7046135 () Bool)

(declare-fun e!4235910 () Bool)

(assert (=> b!7046135 (= e!4235910 e!4235913)))

(declare-fun res!2876512 () Bool)

(assert (=> b!7046135 (=> res!2876512 e!4235913)))

(assert (=> b!7046135 (= res!2876512 (not (matchZipper!3046 lt!2526930 (t!381824 s!7408))))))

(declare-fun ++!15583 (List!68046 List!68046) List!68046)

(assert (=> b!7046135 (= lt!2526930 (derivationStepZipperDown!2170 (h!74370 (exprs!7002 lt!2526924)) (Context!13005 (++!15583 lt!2526911 (exprs!7002 ct2!306))) (h!74371 s!7408)))))

(declare-fun lt!2526921 () Unit!161698)

(assert (=> b!7046135 (= lt!2526921 (lemmaConcatPreservesForall!827 lt!2526911 (exprs!7002 ct2!306) lambda!417807))))

(assert (=> b!7046136 (= e!4235915 e!4235907)))

(declare-fun res!2876520 () Bool)

(assert (=> b!7046136 (=> res!2876520 e!4235907)))

(assert (=> b!7046136 (= res!2876520 (or (not (= lt!2526923 lt!2526920)) (not (set.member lt!2526924 z1!570))))))

(assert (=> b!7046136 (= lt!2526923 (Context!13005 (++!15583 (exprs!7002 lt!2526924) (exprs!7002 ct2!306))))))

(declare-fun lt!2526912 () Unit!161698)

(assert (=> b!7046136 (= lt!2526912 (lemmaConcatPreservesForall!827 (exprs!7002 lt!2526924) (exprs!7002 ct2!306) lambda!417807))))

(declare-fun lambda!417806 () Int)

(declare-fun mapPost2!347 ((Set Context!13004) Int Context!13004) Context!13004)

(assert (=> b!7046136 (= lt!2526924 (mapPost2!347 z1!570 lambda!417806 lt!2526920))))

(declare-fun setElem!49457 () Context!13004)

(declare-fun tp!1938057 () Bool)

(declare-fun setNonEmpty!49457 () Bool)

(assert (=> setNonEmpty!49457 (= setRes!49457 (and tp!1938057 (inv!86625 setElem!49457) e!4235909))))

(declare-fun setRest!49457 () (Set Context!13004))

(assert (=> setNonEmpty!49457 (= z1!570 (set.union (set.insert setElem!49457 (as set.empty (Set Context!13004))) setRest!49457))))

(declare-fun b!7046137 () Bool)

(assert (=> b!7046137 (= e!4235914 e!4235910)))

(declare-fun res!2876521 () Bool)

(assert (=> b!7046137 (=> res!2876521 e!4235910)))

(declare-fun nullable!7217 (Regex!17506) Bool)

(assert (=> b!7046137 (= res!2876521 (nullable!7217 (h!74370 (exprs!7002 lt!2526924))))))

(assert (=> b!7046137 (= lt!2526913 (Context!13005 lt!2526911))))

(declare-fun tail!13624 (List!68046) List!68046)

(assert (=> b!7046137 (= lt!2526911 (tail!13624 (exprs!7002 lt!2526924)))))

(assert (= (and start!682052 res!2876513) b!7046128))

(assert (= (and b!7046128 res!2876519) b!7046131))

(assert (= (and b!7046131 (not res!2876514)) b!7046125))

(assert (= (and b!7046125 (not res!2876516)) b!7046136))

(assert (= (and b!7046136 (not res!2876520)) b!7046134))

(assert (= (and b!7046134 (not res!2876518)) b!7046126))

(assert (= (and b!7046126 (not res!2876511)) b!7046127))

(assert (= (and b!7046127 (not res!2876517)) b!7046132))

(assert (= (and b!7046132 (not res!2876515)) b!7046137))

(assert (= (and b!7046137 (not res!2876521)) b!7046135))

(assert (= (and b!7046135 (not res!2876512)) b!7046124))

(assert (= (and start!682052 condSetEmpty!49457) setIsEmpty!49457))

(assert (= (and start!682052 (not condSetEmpty!49457)) setNonEmpty!49457))

(assert (= setNonEmpty!49457 b!7046133))

(assert (= start!682052 b!7046130))

(assert (= (and start!682052 (is-Cons!67923 s!7408)) b!7046129))

(declare-fun m!7759910 () Bool)

(assert (=> setNonEmpty!49457 m!7759910))

(declare-fun m!7759912 () Bool)

(assert (=> b!7046136 m!7759912))

(declare-fun m!7759914 () Bool)

(assert (=> b!7046136 m!7759914))

(declare-fun m!7759916 () Bool)

(assert (=> b!7046136 m!7759916))

(declare-fun m!7759918 () Bool)

(assert (=> b!7046136 m!7759918))

(declare-fun m!7759920 () Bool)

(assert (=> b!7046137 m!7759920))

(declare-fun m!7759922 () Bool)

(assert (=> b!7046137 m!7759922))

(declare-fun m!7759924 () Bool)

(assert (=> b!7046125 m!7759924))

(declare-fun m!7759926 () Bool)

(assert (=> b!7046131 m!7759926))

(declare-fun m!7759928 () Bool)

(assert (=> b!7046131 m!7759928))

(declare-fun m!7759930 () Bool)

(assert (=> b!7046131 m!7759930))

(declare-fun m!7759932 () Bool)

(assert (=> b!7046131 m!7759932))

(declare-fun m!7759934 () Bool)

(assert (=> b!7046131 m!7759934))

(declare-fun m!7759936 () Bool)

(assert (=> b!7046131 m!7759936))

(declare-fun m!7759938 () Bool)

(assert (=> start!682052 m!7759938))

(declare-fun m!7759940 () Bool)

(assert (=> start!682052 m!7759940))

(declare-fun m!7759942 () Bool)

(assert (=> start!682052 m!7759942))

(declare-fun m!7759944 () Bool)

(assert (=> b!7046126 m!7759944))

(declare-fun m!7759946 () Bool)

(assert (=> b!7046126 m!7759946))

(declare-fun m!7759948 () Bool)

(assert (=> b!7046126 m!7759948))

(declare-fun m!7759950 () Bool)

(assert (=> b!7046126 m!7759950))

(assert (=> b!7046126 m!7759916))

(declare-fun m!7759952 () Bool)

(assert (=> b!7046132 m!7759952))

(declare-fun m!7759954 () Bool)

(assert (=> b!7046134 m!7759954))

(assert (=> b!7046134 m!7759916))

(declare-fun m!7759956 () Bool)

(assert (=> b!7046124 m!7759956))

(declare-fun m!7759958 () Bool)

(assert (=> b!7046124 m!7759958))

(declare-fun m!7759960 () Bool)

(assert (=> b!7046124 m!7759960))

(declare-fun m!7759962 () Bool)

(assert (=> b!7046124 m!7759962))

(declare-fun m!7759964 () Bool)

(assert (=> b!7046124 m!7759964))

(assert (=> b!7046124 m!7759958))

(declare-fun m!7759966 () Bool)

(assert (=> b!7046124 m!7759966))

(declare-fun m!7759968 () Bool)

(assert (=> b!7046124 m!7759968))

(declare-fun m!7759970 () Bool)

(assert (=> b!7046124 m!7759970))

(declare-fun m!7759972 () Bool)

(assert (=> b!7046124 m!7759972))

(declare-fun m!7759974 () Bool)

(assert (=> b!7046124 m!7759974))

(declare-fun m!7759976 () Bool)

(assert (=> b!7046135 m!7759976))

(declare-fun m!7759978 () Bool)

(assert (=> b!7046135 m!7759978))

(declare-fun m!7759980 () Bool)

(assert (=> b!7046135 m!7759980))

(assert (=> b!7046135 m!7759970))

(push 1)

(assert (not b!7046137))

(assert tp_is_empty!44237)

(assert (not b!7046135))

(assert (not b!7046130))

(assert (not setNonEmpty!49457))

(assert (not b!7046126))

(assert (not b!7046134))

(assert (not b!7046129))

(assert (not b!7046136))

(assert (not start!682052))

(assert (not b!7046124))

(assert (not b!7046131))

(assert (not b!7046133))

(assert (not b!7046132))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1874898 () Bool)

(declare-fun d!2200813 () Bool)

(assert (= bs!1874898 (and d!2200813 b!7046136)))

(declare-fun lambda!417835 () Int)

(assert (=> bs!1874898 (= lambda!417835 lambda!417807)))

(declare-fun forall!16434 (List!68046 Int) Bool)

(assert (=> d!2200813 (= (inv!86625 setElem!49457) (forall!16434 (exprs!7002 setElem!49457) lambda!417835))))

(declare-fun bs!1874899 () Bool)

(assert (= bs!1874899 d!2200813))

(declare-fun m!7760054 () Bool)

(assert (=> bs!1874899 m!7760054))

(assert (=> setNonEmpty!49457 d!2200813))

(declare-fun d!2200815 () Bool)

(declare-fun c!1312030 () Bool)

(declare-fun e!4235953 () Bool)

(assert (=> d!2200815 (= c!1312030 e!4235953)))

(declare-fun res!2876559 () Bool)

(assert (=> d!2200815 (=> (not res!2876559) (not e!4235953))))

(assert (=> d!2200815 (= res!2876559 (is-Cons!67922 (exprs!7002 lt!2526923)))))

(declare-fun e!4235954 () (Set Context!13004))

(assert (=> d!2200815 (= (derivationStepZipperUp!2116 lt!2526923 (h!74371 s!7408)) e!4235954)))

(declare-fun bm!640159 () Bool)

(declare-fun call!640164 () (Set Context!13004))

(assert (=> bm!640159 (= call!640164 (derivationStepZipperDown!2170 (h!74370 (exprs!7002 lt!2526923)) (Context!13005 (t!381823 (exprs!7002 lt!2526923))) (h!74371 s!7408)))))

(declare-fun b!7046202 () Bool)

(declare-fun e!4235955 () (Set Context!13004))

(assert (=> b!7046202 (= e!4235954 e!4235955)))

(declare-fun c!1312031 () Bool)

(assert (=> b!7046202 (= c!1312031 (is-Cons!67922 (exprs!7002 lt!2526923)))))

(declare-fun b!7046203 () Bool)

(assert (=> b!7046203 (= e!4235955 call!640164)))

(declare-fun b!7046204 () Bool)

(assert (=> b!7046204 (= e!4235955 (as set.empty (Set Context!13004)))))

(declare-fun b!7046205 () Bool)

(assert (=> b!7046205 (= e!4235953 (nullable!7217 (h!74370 (exprs!7002 lt!2526923))))))

(declare-fun b!7046206 () Bool)

(assert (=> b!7046206 (= e!4235954 (set.union call!640164 (derivationStepZipperUp!2116 (Context!13005 (t!381823 (exprs!7002 lt!2526923))) (h!74371 s!7408))))))

(assert (= (and d!2200815 res!2876559) b!7046205))

(assert (= (and d!2200815 c!1312030) b!7046206))

(assert (= (and d!2200815 (not c!1312030)) b!7046202))

(assert (= (and b!7046202 c!1312031) b!7046203))

(assert (= (and b!7046202 (not c!1312031)) b!7046204))

(assert (= (or b!7046206 b!7046203) bm!640159))

(declare-fun m!7760056 () Bool)

(assert (=> bm!640159 m!7760056))

(declare-fun m!7760058 () Bool)

(assert (=> b!7046205 m!7760058))

(declare-fun m!7760060 () Bool)

(assert (=> b!7046206 m!7760060))

(assert (=> b!7046126 d!2200815))

(declare-fun d!2200817 () Bool)

(declare-fun dynLambda!27497 (Int Context!13004) (Set Context!13004))

(assert (=> d!2200817 (= (flatMap!2453 lt!2526927 lambda!417808) (dynLambda!27497 lambda!417808 lt!2526923))))

(declare-fun lt!2527003 () Unit!161698)

(declare-fun choose!53544 ((Set Context!13004) Context!13004 Int) Unit!161698)

(assert (=> d!2200817 (= lt!2527003 (choose!53544 lt!2526927 lt!2526923 lambda!417808))))

(assert (=> d!2200817 (= lt!2526927 (set.insert lt!2526923 (as set.empty (Set Context!13004))))))

(assert (=> d!2200817 (= (lemmaFlatMapOnSingletonSet!1967 lt!2526927 lt!2526923 lambda!417808) lt!2527003)))

(declare-fun b_lambda!267755 () Bool)

(assert (=> (not b_lambda!267755) (not d!2200817)))

(declare-fun bs!1874900 () Bool)

(assert (= bs!1874900 d!2200817))

(assert (=> bs!1874900 m!7759944))

(declare-fun m!7760062 () Bool)

(assert (=> bs!1874900 m!7760062))

(declare-fun m!7760064 () Bool)

(assert (=> bs!1874900 m!7760064))

(assert (=> bs!1874900 m!7759954))

(assert (=> b!7046126 d!2200817))

(declare-fun d!2200819 () Bool)

(assert (=> d!2200819 (forall!16434 (++!15583 (exprs!7002 lt!2526924) (exprs!7002 ct2!306)) lambda!417807)))

(declare-fun lt!2527006 () Unit!161698)

(declare-fun choose!53545 (List!68046 List!68046 Int) Unit!161698)

(assert (=> d!2200819 (= lt!2527006 (choose!53545 (exprs!7002 lt!2526924) (exprs!7002 ct2!306) lambda!417807))))

(assert (=> d!2200819 (forall!16434 (exprs!7002 lt!2526924) lambda!417807)))

(assert (=> d!2200819 (= (lemmaConcatPreservesForall!827 (exprs!7002 lt!2526924) (exprs!7002 ct2!306) lambda!417807) lt!2527006)))

(declare-fun bs!1874901 () Bool)

(assert (= bs!1874901 d!2200819))

(assert (=> bs!1874901 m!7759914))

(assert (=> bs!1874901 m!7759914))

(declare-fun m!7760066 () Bool)

(assert (=> bs!1874901 m!7760066))

(declare-fun m!7760068 () Bool)

(assert (=> bs!1874901 m!7760068))

(declare-fun m!7760070 () Bool)

(assert (=> bs!1874901 m!7760070))

(assert (=> b!7046126 d!2200819))

(declare-fun d!2200821 () Bool)

(declare-fun choose!53546 ((Set Context!13004) Int) (Set Context!13004))

(assert (=> d!2200821 (= (flatMap!2453 lt!2526927 lambda!417808) (choose!53546 lt!2526927 lambda!417808))))

(declare-fun bs!1874902 () Bool)

(assert (= bs!1874902 d!2200821))

(declare-fun m!7760072 () Bool)

(assert (=> bs!1874902 m!7760072))

(assert (=> b!7046126 d!2200821))

(declare-fun bs!1874903 () Bool)

(declare-fun d!2200823 () Bool)

(assert (= bs!1874903 (and d!2200823 b!7046126)))

(declare-fun lambda!417838 () Int)

(assert (=> bs!1874903 (= lambda!417838 lambda!417808)))

(assert (=> d!2200823 true))

(assert (=> d!2200823 (= (derivationStepZipper!2962 lt!2526927 (h!74371 s!7408)) (flatMap!2453 lt!2526927 lambda!417838))))

(declare-fun bs!1874904 () Bool)

(assert (= bs!1874904 d!2200823))

(declare-fun m!7760074 () Bool)

(assert (=> bs!1874904 m!7760074))

(assert (=> b!7046126 d!2200823))

(declare-fun d!2200827 () Bool)

(declare-fun e!4235958 () Bool)

(assert (=> d!2200827 e!4235958))

(declare-fun res!2876562 () Bool)

(assert (=> d!2200827 (=> (not res!2876562) (not e!4235958))))

(declare-fun lt!2527009 () List!68048)

(declare-fun noDuplicate!2654 (List!68048) Bool)

(assert (=> d!2200827 (= res!2876562 (noDuplicate!2654 lt!2527009))))

(declare-fun choose!53547 ((Set Context!13004)) List!68048)

(assert (=> d!2200827 (= lt!2527009 (choose!53547 lt!2526916))))

(assert (=> d!2200827 (= (toList!10849 lt!2526916) lt!2527009)))

(declare-fun b!7046211 () Bool)

(declare-fun content!13607 (List!68048) (Set Context!13004))

(assert (=> b!7046211 (= e!4235958 (= (content!13607 lt!2527009) lt!2526916))))

(assert (= (and d!2200827 res!2876562) b!7046211))

(declare-fun m!7760076 () Bool)

(assert (=> d!2200827 m!7760076))

(declare-fun m!7760078 () Bool)

(assert (=> d!2200827 m!7760078))

(declare-fun m!7760080 () Bool)

(assert (=> b!7046211 m!7760080))

(assert (=> b!7046131 d!2200827))

(declare-fun d!2200829 () Bool)

(declare-fun e!4235967 () Bool)

(assert (=> d!2200829 e!4235967))

(declare-fun res!2876571 () Bool)

(assert (=> d!2200829 (=> (not res!2876571) (not e!4235967))))

(declare-fun lt!2527015 () Context!13004)

(declare-fun dynLambda!27498 (Int Context!13004) Bool)

(assert (=> d!2200829 (= res!2876571 (dynLambda!27498 lambda!417805 lt!2527015))))

(declare-fun getWitness!1541 (List!68048 Int) Context!13004)

(assert (=> d!2200829 (= lt!2527015 (getWitness!1541 (toList!10849 lt!2526916) lambda!417805))))

(declare-fun exists!3462 ((Set Context!13004) Int) Bool)

(assert (=> d!2200829 (exists!3462 lt!2526916 lambda!417805)))

(assert (=> d!2200829 (= (getWitness!1539 lt!2526916 lambda!417805) lt!2527015)))

(declare-fun b!7046222 () Bool)

(assert (=> b!7046222 (= e!4235967 (set.member lt!2527015 lt!2526916))))

(assert (= (and d!2200829 res!2876571) b!7046222))

(declare-fun b_lambda!267757 () Bool)

(assert (=> (not b_lambda!267757) (not d!2200829)))

(declare-fun m!7760082 () Bool)

(assert (=> d!2200829 m!7760082))

(assert (=> d!2200829 m!7759934))

(assert (=> d!2200829 m!7759934))

(declare-fun m!7760084 () Bool)

(assert (=> d!2200829 m!7760084))

(declare-fun m!7760086 () Bool)

(assert (=> d!2200829 m!7760086))

(declare-fun m!7760088 () Bool)

(assert (=> b!7046222 m!7760088))

(assert (=> b!7046131 d!2200829))

(declare-fun bs!1874906 () Bool)

(declare-fun d!2200831 () Bool)

(assert (= bs!1874906 (and d!2200831 b!7046131)))

(declare-fun lambda!417841 () Int)

(assert (=> bs!1874906 (= lambda!417841 lambda!417805)))

(assert (=> d!2200831 true))

(assert (=> d!2200831 (exists!3460 lt!2526922 lambda!417841)))

(declare-fun lt!2527021 () Unit!161698)

(declare-fun choose!53548 (List!68048 List!68047) Unit!161698)

(assert (=> d!2200831 (= lt!2527021 (choose!53548 lt!2526922 s!7408))))

(assert (=> d!2200831 (matchZipper!3046 (content!13607 lt!2526922) s!7408)))

(assert (=> d!2200831 (= (lemmaZipperMatchesExistsMatchingContext!445 lt!2526922 s!7408) lt!2527021)))

(declare-fun bs!1874907 () Bool)

(assert (= bs!1874907 d!2200831))

(declare-fun m!7760110 () Bool)

(assert (=> bs!1874907 m!7760110))

(declare-fun m!7760112 () Bool)

(assert (=> bs!1874907 m!7760112))

(declare-fun m!7760114 () Bool)

(assert (=> bs!1874907 m!7760114))

(assert (=> bs!1874907 m!7760114))

(declare-fun m!7760116 () Bool)

(assert (=> bs!1874907 m!7760116))

(assert (=> b!7046131 d!2200831))

(declare-fun bs!1874908 () Bool)

(declare-fun d!2200837 () Bool)

(assert (= bs!1874908 (and d!2200837 b!7046131)))

(declare-fun lambda!417844 () Int)

(assert (=> bs!1874908 (not (= lambda!417844 lambda!417805))))

(declare-fun bs!1874909 () Bool)

(assert (= bs!1874909 (and d!2200837 d!2200831)))

(assert (=> bs!1874909 (not (= lambda!417844 lambda!417841))))

(assert (=> d!2200837 true))

(declare-fun order!28233 () Int)

(declare-fun dynLambda!27499 (Int Int) Int)

(assert (=> d!2200837 (< (dynLambda!27499 order!28233 lambda!417805) (dynLambda!27499 order!28233 lambda!417844))))

(declare-fun forall!16435 (List!68048 Int) Bool)

(assert (=> d!2200837 (= (exists!3460 lt!2526922 lambda!417805) (not (forall!16435 lt!2526922 lambda!417844)))))

(declare-fun bs!1874910 () Bool)

(assert (= bs!1874910 d!2200837))

(declare-fun m!7760118 () Bool)

(assert (=> bs!1874910 m!7760118))

(assert (=> b!7046131 d!2200837))

(declare-fun d!2200839 () Bool)

(declare-fun c!1312041 () Bool)

(declare-fun isEmpty!39642 (List!68047) Bool)

(assert (=> d!2200839 (= c!1312041 (isEmpty!39642 s!7408))))

(declare-fun e!4235973 () Bool)

(assert (=> d!2200839 (= (matchZipper!3046 lt!2526917 s!7408) e!4235973)))

(declare-fun b!7046237 () Bool)

(declare-fun nullableZipper!2608 ((Set Context!13004)) Bool)

(assert (=> b!7046237 (= e!4235973 (nullableZipper!2608 lt!2526917))))

(declare-fun b!7046238 () Bool)

(declare-fun head!14305 (List!68047) C!35282)

(declare-fun tail!13626 (List!68047) List!68047)

(assert (=> b!7046238 (= e!4235973 (matchZipper!3046 (derivationStepZipper!2962 lt!2526917 (head!14305 s!7408)) (tail!13626 s!7408)))))

(assert (= (and d!2200839 c!1312041) b!7046237))

(assert (= (and d!2200839 (not c!1312041)) b!7046238))

(declare-fun m!7760130 () Bool)

(assert (=> d!2200839 m!7760130))

(declare-fun m!7760132 () Bool)

(assert (=> b!7046237 m!7760132))

(declare-fun m!7760134 () Bool)

(assert (=> b!7046238 m!7760134))

(assert (=> b!7046238 m!7760134))

(declare-fun m!7760136 () Bool)

(assert (=> b!7046238 m!7760136))

(declare-fun m!7760138 () Bool)

(assert (=> b!7046238 m!7760138))

(assert (=> b!7046238 m!7760136))

(assert (=> b!7046238 m!7760138))

(declare-fun m!7760140 () Bool)

(assert (=> b!7046238 m!7760140))

(assert (=> b!7046131 d!2200839))

(declare-fun d!2200843 () Bool)

(assert (=> d!2200843 (= (isEmpty!39640 (exprs!7002 lt!2526924)) (is-Nil!67922 (exprs!7002 lt!2526924)))))

(assert (=> b!7046132 d!2200843))

(declare-fun b!7046251 () Bool)

(declare-fun res!2876581 () Bool)

(declare-fun e!4235980 () Bool)

(assert (=> b!7046251 (=> (not res!2876581) (not e!4235980))))

(declare-fun lt!2527029 () List!68046)

(declare-fun size!41110 (List!68046) Int)

(assert (=> b!7046251 (= res!2876581 (= (size!41110 lt!2527029) (+ (size!41110 (exprs!7002 lt!2526924)) (size!41110 (exprs!7002 ct2!306)))))))

(declare-fun d!2200845 () Bool)

(assert (=> d!2200845 e!4235980))

(declare-fun res!2876582 () Bool)

(assert (=> d!2200845 (=> (not res!2876582) (not e!4235980))))

(declare-fun content!13608 (List!68046) (Set Regex!17506))

(assert (=> d!2200845 (= res!2876582 (= (content!13608 lt!2527029) (set.union (content!13608 (exprs!7002 lt!2526924)) (content!13608 (exprs!7002 ct2!306)))))))

(declare-fun e!4235981 () List!68046)

(assert (=> d!2200845 (= lt!2527029 e!4235981)))

(declare-fun c!1312044 () Bool)

(assert (=> d!2200845 (= c!1312044 (is-Nil!67922 (exprs!7002 lt!2526924)))))

(assert (=> d!2200845 (= (++!15583 (exprs!7002 lt!2526924) (exprs!7002 ct2!306)) lt!2527029)))

(declare-fun b!7046250 () Bool)

(assert (=> b!7046250 (= e!4235981 (Cons!67922 (h!74370 (exprs!7002 lt!2526924)) (++!15583 (t!381823 (exprs!7002 lt!2526924)) (exprs!7002 ct2!306))))))

(declare-fun b!7046252 () Bool)

(assert (=> b!7046252 (= e!4235980 (or (not (= (exprs!7002 ct2!306) Nil!67922)) (= lt!2527029 (exprs!7002 lt!2526924))))))

(declare-fun b!7046249 () Bool)

(assert (=> b!7046249 (= e!4235981 (exprs!7002 ct2!306))))

(assert (= (and d!2200845 c!1312044) b!7046249))

(assert (= (and d!2200845 (not c!1312044)) b!7046250))

(assert (= (and d!2200845 res!2876582) b!7046251))

(assert (= (and b!7046251 res!2876581) b!7046252))

(declare-fun m!7760142 () Bool)

(assert (=> b!7046251 m!7760142))

(declare-fun m!7760144 () Bool)

(assert (=> b!7046251 m!7760144))

(declare-fun m!7760146 () Bool)

(assert (=> b!7046251 m!7760146))

(declare-fun m!7760148 () Bool)

(assert (=> d!2200845 m!7760148))

(declare-fun m!7760150 () Bool)

(assert (=> d!2200845 m!7760150))

(declare-fun m!7760152 () Bool)

(assert (=> d!2200845 m!7760152))

(declare-fun m!7760154 () Bool)

(assert (=> b!7046250 m!7760154))

(assert (=> b!7046136 d!2200845))

(assert (=> b!7046136 d!2200819))

(declare-fun d!2200847 () Bool)

(declare-fun e!4235985 () Bool)

(assert (=> d!2200847 e!4235985))

(declare-fun res!2876586 () Bool)

(assert (=> d!2200847 (=> (not res!2876586) (not e!4235985))))

(declare-fun lt!2527033 () Context!13004)

(declare-fun dynLambda!27500 (Int Context!13004) Context!13004)

(assert (=> d!2200847 (= res!2876586 (= lt!2526920 (dynLambda!27500 lambda!417806 lt!2527033)))))

(declare-fun choose!53549 ((Set Context!13004) Int Context!13004) Context!13004)

(assert (=> d!2200847 (= lt!2527033 (choose!53549 z1!570 lambda!417806 lt!2526920))))

(declare-fun map!15817 ((Set Context!13004) Int) (Set Context!13004))

(assert (=> d!2200847 (set.member lt!2526920 (map!15817 z1!570 lambda!417806))))

(assert (=> d!2200847 (= (mapPost2!347 z1!570 lambda!417806 lt!2526920) lt!2527033)))

(declare-fun b!7046257 () Bool)

(assert (=> b!7046257 (= e!4235985 (set.member lt!2527033 z1!570))))

(assert (= (and d!2200847 res!2876586) b!7046257))

(declare-fun b_lambda!267763 () Bool)

(assert (=> (not b_lambda!267763) (not d!2200847)))

(declare-fun m!7760164 () Bool)

(assert (=> d!2200847 m!7760164))

(declare-fun m!7760166 () Bool)

(assert (=> d!2200847 m!7760166))

(declare-fun m!7760168 () Bool)

(assert (=> d!2200847 m!7760168))

(declare-fun m!7760170 () Bool)

(assert (=> d!2200847 m!7760170))

(declare-fun m!7760172 () Bool)

(assert (=> b!7046257 m!7760172))

(assert (=> b!7046136 d!2200847))

(assert (=> b!7046134 d!2200819))

(declare-fun d!2200851 () Bool)

(declare-fun c!1312045 () Bool)

(assert (=> d!2200851 (= c!1312045 (isEmpty!39642 (t!381824 s!7408)))))

(declare-fun e!4235986 () Bool)

(assert (=> d!2200851 (= (matchZipper!3046 lt!2526930 (t!381824 s!7408)) e!4235986)))

(declare-fun b!7046258 () Bool)

(assert (=> b!7046258 (= e!4235986 (nullableZipper!2608 lt!2526930))))

(declare-fun b!7046259 () Bool)

(assert (=> b!7046259 (= e!4235986 (matchZipper!3046 (derivationStepZipper!2962 lt!2526930 (head!14305 (t!381824 s!7408))) (tail!13626 (t!381824 s!7408))))))

(assert (= (and d!2200851 c!1312045) b!7046258))

(assert (= (and d!2200851 (not c!1312045)) b!7046259))

(declare-fun m!7760174 () Bool)

(assert (=> d!2200851 m!7760174))

(declare-fun m!7760176 () Bool)

(assert (=> b!7046258 m!7760176))

(declare-fun m!7760178 () Bool)

(assert (=> b!7046259 m!7760178))

(assert (=> b!7046259 m!7760178))

(declare-fun m!7760180 () Bool)

(assert (=> b!7046259 m!7760180))

(declare-fun m!7760182 () Bool)

(assert (=> b!7046259 m!7760182))

(assert (=> b!7046259 m!7760180))

(assert (=> b!7046259 m!7760182))

(declare-fun m!7760184 () Bool)

(assert (=> b!7046259 m!7760184))

(assert (=> b!7046135 d!2200851))

(declare-fun c!1312063 () Bool)

(declare-fun call!640182 () List!68046)

(declare-fun bm!640172 () Bool)

(declare-fun c!1312060 () Bool)

(declare-fun $colon$colon!2601 (List!68046 Regex!17506) List!68046)

(assert (=> bm!640172 (= call!640182 ($colon$colon!2601 (exprs!7002 (Context!13005 (++!15583 lt!2526911 (exprs!7002 ct2!306)))) (ite (or c!1312060 c!1312063) (regTwo!35524 (h!74370 (exprs!7002 lt!2526924))) (h!74370 (exprs!7002 lt!2526924)))))))

(declare-fun b!7046288 () Bool)

(declare-fun e!4236002 () (Set Context!13004))

(declare-fun call!640177 () (Set Context!13004))

(assert (=> b!7046288 (= e!4236002 call!640177)))

(declare-fun b!7046289 () Bool)

(declare-fun c!1312062 () Bool)

(assert (=> b!7046289 (= c!1312062 (is-Star!17506 (h!74370 (exprs!7002 lt!2526924))))))

(declare-fun e!4236003 () (Set Context!13004))

(assert (=> b!7046289 (= e!4236002 e!4236003)))

(declare-fun b!7046290 () Bool)

(declare-fun e!4236005 () (Set Context!13004))

(assert (=> b!7046290 (= e!4236005 (set.insert (Context!13005 (++!15583 lt!2526911 (exprs!7002 ct2!306))) (as set.empty (Set Context!13004))))))

(declare-fun c!1312061 () Bool)

(declare-fun call!640178 () List!68046)

(declare-fun bm!640173 () Bool)

(declare-fun call!640179 () (Set Context!13004))

(assert (=> bm!640173 (= call!640179 (derivationStepZipperDown!2170 (ite c!1312061 (regTwo!35525 (h!74370 (exprs!7002 lt!2526924))) (ite c!1312060 (regTwo!35524 (h!74370 (exprs!7002 lt!2526924))) (ite c!1312063 (regOne!35524 (h!74370 (exprs!7002 lt!2526924))) (reg!17835 (h!74370 (exprs!7002 lt!2526924)))))) (ite (or c!1312061 c!1312060) (Context!13005 (++!15583 lt!2526911 (exprs!7002 ct2!306))) (Context!13005 call!640178)) (h!74371 s!7408)))))

(declare-fun d!2200853 () Bool)

(declare-fun c!1312059 () Bool)

(assert (=> d!2200853 (= c!1312059 (and (is-ElementMatch!17506 (h!74370 (exprs!7002 lt!2526924))) (= (c!1312016 (h!74370 (exprs!7002 lt!2526924))) (h!74371 s!7408))))))

(assert (=> d!2200853 (= (derivationStepZipperDown!2170 (h!74370 (exprs!7002 lt!2526924)) (Context!13005 (++!15583 lt!2526911 (exprs!7002 ct2!306))) (h!74371 s!7408)) e!4236005)))

(declare-fun b!7046291 () Bool)

(declare-fun e!4236006 () (Set Context!13004))

(declare-fun call!640180 () (Set Context!13004))

(declare-fun call!640181 () (Set Context!13004))

(assert (=> b!7046291 (= e!4236006 (set.union call!640180 call!640181))))

(declare-fun b!7046292 () Bool)

(declare-fun e!4236007 () Bool)

(assert (=> b!7046292 (= e!4236007 (nullable!7217 (regOne!35524 (h!74370 (exprs!7002 lt!2526924)))))))

(declare-fun bm!640174 () Bool)

(assert (=> bm!640174 (= call!640178 call!640182)))

(declare-fun b!7046293 () Bool)

(assert (=> b!7046293 (= e!4236003 (as set.empty (Set Context!13004)))))

(declare-fun bm!640175 () Bool)

(assert (=> bm!640175 (= call!640177 call!640181)))

(declare-fun b!7046294 () Bool)

(declare-fun e!4236004 () (Set Context!13004))

(assert (=> b!7046294 (= e!4236005 e!4236004)))

(assert (=> b!7046294 (= c!1312061 (is-Union!17506 (h!74370 (exprs!7002 lt!2526924))))))

(declare-fun bm!640176 () Bool)

(assert (=> bm!640176 (= call!640180 (derivationStepZipperDown!2170 (ite c!1312061 (regOne!35525 (h!74370 (exprs!7002 lt!2526924))) (regOne!35524 (h!74370 (exprs!7002 lt!2526924)))) (ite c!1312061 (Context!13005 (++!15583 lt!2526911 (exprs!7002 ct2!306))) (Context!13005 call!640182)) (h!74371 s!7408)))))

(declare-fun b!7046295 () Bool)

(assert (=> b!7046295 (= e!4236004 (set.union call!640180 call!640179))))

(declare-fun b!7046296 () Bool)

(assert (=> b!7046296 (= e!4236006 e!4236002)))

(assert (=> b!7046296 (= c!1312063 (is-Concat!26351 (h!74370 (exprs!7002 lt!2526924))))))

(declare-fun b!7046297 () Bool)

(assert (=> b!7046297 (= e!4236003 call!640177)))

(declare-fun b!7046298 () Bool)

(assert (=> b!7046298 (= c!1312060 e!4236007)))

(declare-fun res!2876589 () Bool)

(assert (=> b!7046298 (=> (not res!2876589) (not e!4236007))))

(assert (=> b!7046298 (= res!2876589 (is-Concat!26351 (h!74370 (exprs!7002 lt!2526924))))))

(assert (=> b!7046298 (= e!4236004 e!4236006)))

(declare-fun bm!640177 () Bool)

(assert (=> bm!640177 (= call!640181 call!640179)))

(assert (= (and d!2200853 c!1312059) b!7046290))

(assert (= (and d!2200853 (not c!1312059)) b!7046294))

(assert (= (and b!7046294 c!1312061) b!7046295))

(assert (= (and b!7046294 (not c!1312061)) b!7046298))

(assert (= (and b!7046298 res!2876589) b!7046292))

(assert (= (and b!7046298 c!1312060) b!7046291))

(assert (= (and b!7046298 (not c!1312060)) b!7046296))

(assert (= (and b!7046296 c!1312063) b!7046288))

(assert (= (and b!7046296 (not c!1312063)) b!7046289))

(assert (= (and b!7046289 c!1312062) b!7046297))

(assert (= (and b!7046289 (not c!1312062)) b!7046293))

(assert (= (or b!7046288 b!7046297) bm!640174))

(assert (= (or b!7046288 b!7046297) bm!640175))

(assert (= (or b!7046291 bm!640175) bm!640177))

(assert (= (or b!7046291 bm!640174) bm!640172))

(assert (= (or b!7046295 b!7046291) bm!640176))

(assert (= (or b!7046295 bm!640177) bm!640173))

(declare-fun m!7760198 () Bool)

(assert (=> b!7046292 m!7760198))

(declare-fun m!7760200 () Bool)

(assert (=> bm!640173 m!7760200))

(declare-fun m!7760202 () Bool)

(assert (=> b!7046290 m!7760202))

(declare-fun m!7760204 () Bool)

(assert (=> bm!640172 m!7760204))

(declare-fun m!7760206 () Bool)

(assert (=> bm!640176 m!7760206))

(assert (=> b!7046135 d!2200853))

(declare-fun b!7046301 () Bool)

(declare-fun res!2876590 () Bool)

(declare-fun e!4236008 () Bool)

(assert (=> b!7046301 (=> (not res!2876590) (not e!4236008))))

(declare-fun lt!2527034 () List!68046)

(assert (=> b!7046301 (= res!2876590 (= (size!41110 lt!2527034) (+ (size!41110 lt!2526911) (size!41110 (exprs!7002 ct2!306)))))))

(declare-fun d!2200857 () Bool)

(assert (=> d!2200857 e!4236008))

(declare-fun res!2876591 () Bool)

(assert (=> d!2200857 (=> (not res!2876591) (not e!4236008))))

(assert (=> d!2200857 (= res!2876591 (= (content!13608 lt!2527034) (set.union (content!13608 lt!2526911) (content!13608 (exprs!7002 ct2!306)))))))

(declare-fun e!4236009 () List!68046)

(assert (=> d!2200857 (= lt!2527034 e!4236009)))

(declare-fun c!1312064 () Bool)

(assert (=> d!2200857 (= c!1312064 (is-Nil!67922 lt!2526911))))

(assert (=> d!2200857 (= (++!15583 lt!2526911 (exprs!7002 ct2!306)) lt!2527034)))

(declare-fun b!7046300 () Bool)

(assert (=> b!7046300 (= e!4236009 (Cons!67922 (h!74370 lt!2526911) (++!15583 (t!381823 lt!2526911) (exprs!7002 ct2!306))))))

(declare-fun b!7046302 () Bool)

(assert (=> b!7046302 (= e!4236008 (or (not (= (exprs!7002 ct2!306) Nil!67922)) (= lt!2527034 lt!2526911)))))

(declare-fun b!7046299 () Bool)

(assert (=> b!7046299 (= e!4236009 (exprs!7002 ct2!306))))

(assert (= (and d!2200857 c!1312064) b!7046299))

(assert (= (and d!2200857 (not c!1312064)) b!7046300))

(assert (= (and d!2200857 res!2876591) b!7046301))

(assert (= (and b!7046301 res!2876590) b!7046302))

(declare-fun m!7760208 () Bool)

(assert (=> b!7046301 m!7760208))

(declare-fun m!7760210 () Bool)

(assert (=> b!7046301 m!7760210))

(assert (=> b!7046301 m!7760146))

(declare-fun m!7760212 () Bool)

(assert (=> d!2200857 m!7760212))

(declare-fun m!7760214 () Bool)

(assert (=> d!2200857 m!7760214))

(assert (=> d!2200857 m!7760152))

(declare-fun m!7760216 () Bool)

(assert (=> b!7046300 m!7760216))

(assert (=> b!7046135 d!2200857))

(declare-fun d!2200859 () Bool)

(assert (=> d!2200859 (forall!16434 (++!15583 lt!2526911 (exprs!7002 ct2!306)) lambda!417807)))

(declare-fun lt!2527035 () Unit!161698)

(assert (=> d!2200859 (= lt!2527035 (choose!53545 lt!2526911 (exprs!7002 ct2!306) lambda!417807))))

(assert (=> d!2200859 (forall!16434 lt!2526911 lambda!417807)))

(assert (=> d!2200859 (= (lemmaConcatPreservesForall!827 lt!2526911 (exprs!7002 ct2!306) lambda!417807) lt!2527035)))

(declare-fun bs!1874911 () Bool)

(assert (= bs!1874911 d!2200859))

(assert (=> bs!1874911 m!7759978))

(assert (=> bs!1874911 m!7759978))

(declare-fun m!7760218 () Bool)

(assert (=> bs!1874911 m!7760218))

(declare-fun m!7760220 () Bool)

(assert (=> bs!1874911 m!7760220))

(declare-fun m!7760222 () Bool)

(assert (=> bs!1874911 m!7760222))

(assert (=> b!7046135 d!2200859))

(declare-fun d!2200861 () Bool)

(declare-fun c!1312065 () Bool)

(assert (=> d!2200861 (= c!1312065 (isEmpty!39642 s!7408))))

(declare-fun e!4236010 () Bool)

(assert (=> d!2200861 (= (matchZipper!3046 lt!2526916 s!7408) e!4236010)))

(declare-fun b!7046305 () Bool)

(assert (=> b!7046305 (= e!4236010 (nullableZipper!2608 lt!2526916))))

(declare-fun b!7046306 () Bool)

(assert (=> b!7046306 (= e!4236010 (matchZipper!3046 (derivationStepZipper!2962 lt!2526916 (head!14305 s!7408)) (tail!13626 s!7408)))))

(assert (= (and d!2200861 c!1312065) b!7046305))

(assert (= (and d!2200861 (not c!1312065)) b!7046306))

(assert (=> d!2200861 m!7760130))

(declare-fun m!7760224 () Bool)

(assert (=> b!7046305 m!7760224))

(assert (=> b!7046306 m!7760134))

(assert (=> b!7046306 m!7760134))

(declare-fun m!7760226 () Bool)

(assert (=> b!7046306 m!7760226))

(assert (=> b!7046306 m!7760138))

(assert (=> b!7046306 m!7760226))

(assert (=> b!7046306 m!7760138))

(declare-fun m!7760228 () Bool)

(assert (=> b!7046306 m!7760228))

(assert (=> start!682052 d!2200861))

(declare-fun bs!1874914 () Bool)

(declare-fun d!2200863 () Bool)

(assert (= bs!1874914 (and d!2200863 b!7046136)))

(declare-fun lambda!417852 () Int)

(assert (=> bs!1874914 (= lambda!417852 lambda!417806)))

(assert (=> d!2200863 true))

(assert (=> d!2200863 (= (appendTo!627 z1!570 ct2!306) (map!15817 z1!570 lambda!417852))))

(declare-fun bs!1874915 () Bool)

(assert (= bs!1874915 d!2200863))

(declare-fun m!7760232 () Bool)

(assert (=> bs!1874915 m!7760232))

(assert (=> start!682052 d!2200863))

(declare-fun bs!1874916 () Bool)

(declare-fun d!2200867 () Bool)

(assert (= bs!1874916 (and d!2200867 b!7046136)))

(declare-fun lambda!417853 () Int)

(assert (=> bs!1874916 (= lambda!417853 lambda!417807)))

(declare-fun bs!1874917 () Bool)

(assert (= bs!1874917 (and d!2200867 d!2200813)))

(assert (=> bs!1874917 (= lambda!417853 lambda!417835)))

(assert (=> d!2200867 (= (inv!86625 ct2!306) (forall!16434 (exprs!7002 ct2!306) lambda!417853))))

(declare-fun bs!1874918 () Bool)

(assert (= bs!1874918 d!2200867))

(declare-fun m!7760234 () Bool)

(assert (=> bs!1874918 m!7760234))

(assert (=> start!682052 d!2200867))

(declare-fun d!2200869 () Bool)

(declare-fun nullableFct!2753 (Regex!17506) Bool)

(assert (=> d!2200869 (= (nullable!7217 (h!74370 (exprs!7002 lt!2526924))) (nullableFct!2753 (h!74370 (exprs!7002 lt!2526924))))))

(declare-fun bs!1874919 () Bool)

(assert (= bs!1874919 d!2200869))

(declare-fun m!7760236 () Bool)

(assert (=> bs!1874919 m!7760236))

(assert (=> b!7046137 d!2200869))

(declare-fun d!2200871 () Bool)

(assert (=> d!2200871 (= (tail!13624 (exprs!7002 lt!2526924)) (t!381823 (exprs!7002 lt!2526924)))))

(assert (=> b!7046137 d!2200871))

(declare-fun c!1312068 () Bool)

(declare-fun c!1312071 () Bool)

(declare-fun bm!640178 () Bool)

(declare-fun call!640188 () List!68046)

(assert (=> bm!640178 (= call!640188 ($colon$colon!2601 (exprs!7002 lt!2526913) (ite (or c!1312068 c!1312071) (regTwo!35524 (h!74370 (exprs!7002 lt!2526924))) (h!74370 (exprs!7002 lt!2526924)))))))

(declare-fun b!7046307 () Bool)

(declare-fun e!4236011 () (Set Context!13004))

(declare-fun call!640183 () (Set Context!13004))

(assert (=> b!7046307 (= e!4236011 call!640183)))

(declare-fun b!7046308 () Bool)

(declare-fun c!1312070 () Bool)

(assert (=> b!7046308 (= c!1312070 (is-Star!17506 (h!74370 (exprs!7002 lt!2526924))))))

(declare-fun e!4236012 () (Set Context!13004))

(assert (=> b!7046308 (= e!4236011 e!4236012)))

(declare-fun b!7046309 () Bool)

(declare-fun e!4236014 () (Set Context!13004))

(assert (=> b!7046309 (= e!4236014 (set.insert lt!2526913 (as set.empty (Set Context!13004))))))

(declare-fun c!1312069 () Bool)

(declare-fun call!640185 () (Set Context!13004))

(declare-fun call!640184 () List!68046)

(declare-fun bm!640179 () Bool)

(assert (=> bm!640179 (= call!640185 (derivationStepZipperDown!2170 (ite c!1312069 (regTwo!35525 (h!74370 (exprs!7002 lt!2526924))) (ite c!1312068 (regTwo!35524 (h!74370 (exprs!7002 lt!2526924))) (ite c!1312071 (regOne!35524 (h!74370 (exprs!7002 lt!2526924))) (reg!17835 (h!74370 (exprs!7002 lt!2526924)))))) (ite (or c!1312069 c!1312068) lt!2526913 (Context!13005 call!640184)) (h!74371 s!7408)))))

(declare-fun d!2200873 () Bool)

(declare-fun c!1312067 () Bool)

(assert (=> d!2200873 (= c!1312067 (and (is-ElementMatch!17506 (h!74370 (exprs!7002 lt!2526924))) (= (c!1312016 (h!74370 (exprs!7002 lt!2526924))) (h!74371 s!7408))))))

(assert (=> d!2200873 (= (derivationStepZipperDown!2170 (h!74370 (exprs!7002 lt!2526924)) lt!2526913 (h!74371 s!7408)) e!4236014)))

(declare-fun b!7046310 () Bool)

(declare-fun e!4236015 () (Set Context!13004))

(declare-fun call!640186 () (Set Context!13004))

(declare-fun call!640187 () (Set Context!13004))

(assert (=> b!7046310 (= e!4236015 (set.union call!640186 call!640187))))

(declare-fun b!7046311 () Bool)

(declare-fun e!4236016 () Bool)

(assert (=> b!7046311 (= e!4236016 (nullable!7217 (regOne!35524 (h!74370 (exprs!7002 lt!2526924)))))))

(declare-fun bm!640180 () Bool)

(assert (=> bm!640180 (= call!640184 call!640188)))

(declare-fun b!7046312 () Bool)

(assert (=> b!7046312 (= e!4236012 (as set.empty (Set Context!13004)))))

(declare-fun bm!640181 () Bool)

(assert (=> bm!640181 (= call!640183 call!640187)))

(declare-fun b!7046313 () Bool)

(declare-fun e!4236013 () (Set Context!13004))

(assert (=> b!7046313 (= e!4236014 e!4236013)))

(assert (=> b!7046313 (= c!1312069 (is-Union!17506 (h!74370 (exprs!7002 lt!2526924))))))

(declare-fun bm!640182 () Bool)

(assert (=> bm!640182 (= call!640186 (derivationStepZipperDown!2170 (ite c!1312069 (regOne!35525 (h!74370 (exprs!7002 lt!2526924))) (regOne!35524 (h!74370 (exprs!7002 lt!2526924)))) (ite c!1312069 lt!2526913 (Context!13005 call!640188)) (h!74371 s!7408)))))

(declare-fun b!7046314 () Bool)

(assert (=> b!7046314 (= e!4236013 (set.union call!640186 call!640185))))

(declare-fun b!7046315 () Bool)

(assert (=> b!7046315 (= e!4236015 e!4236011)))

(assert (=> b!7046315 (= c!1312071 (is-Concat!26351 (h!74370 (exprs!7002 lt!2526924))))))

(declare-fun b!7046316 () Bool)

(assert (=> b!7046316 (= e!4236012 call!640183)))

(declare-fun b!7046317 () Bool)

(assert (=> b!7046317 (= c!1312068 e!4236016)))

(declare-fun res!2876592 () Bool)

(assert (=> b!7046317 (=> (not res!2876592) (not e!4236016))))

(assert (=> b!7046317 (= res!2876592 (is-Concat!26351 (h!74370 (exprs!7002 lt!2526924))))))

(assert (=> b!7046317 (= e!4236013 e!4236015)))

(declare-fun bm!640183 () Bool)

(assert (=> bm!640183 (= call!640187 call!640185)))

(assert (= (and d!2200873 c!1312067) b!7046309))

(assert (= (and d!2200873 (not c!1312067)) b!7046313))

(assert (= (and b!7046313 c!1312069) b!7046314))

(assert (= (and b!7046313 (not c!1312069)) b!7046317))

(assert (= (and b!7046317 res!2876592) b!7046311))

(assert (= (and b!7046317 c!1312068) b!7046310))

(assert (= (and b!7046317 (not c!1312068)) b!7046315))

(assert (= (and b!7046315 c!1312071) b!7046307))

(assert (= (and b!7046315 (not c!1312071)) b!7046308))

(assert (= (and b!7046308 c!1312070) b!7046316))

(assert (= (and b!7046308 (not c!1312070)) b!7046312))

(assert (= (or b!7046307 b!7046316) bm!640180))

(assert (= (or b!7046307 b!7046316) bm!640181))

(assert (= (or b!7046310 bm!640181) bm!640183))

(assert (= (or b!7046310 bm!640180) bm!640178))

(assert (= (or b!7046314 b!7046310) bm!640182))

(assert (= (or b!7046314 bm!640183) bm!640179))

(assert (=> b!7046311 m!7760198))

(declare-fun m!7760238 () Bool)

(assert (=> bm!640179 m!7760238))

(declare-fun m!7760240 () Bool)

(assert (=> b!7046309 m!7760240))

(declare-fun m!7760242 () Bool)

(assert (=> bm!640178 m!7760242))

(declare-fun m!7760244 () Bool)

(assert (=> bm!640182 m!7760244))

(assert (=> b!7046124 d!2200873))

(declare-fun d!2200875 () Bool)

(declare-fun isEmpty!39643 (Option!16903) Bool)

(assert (=> d!2200875 (= (isDefined!13604 lt!2526918) (not (isEmpty!39643 lt!2526918)))))

(declare-fun bs!1874920 () Bool)

(assert (= bs!1874920 d!2200875))

(declare-fun m!7760246 () Bool)

(assert (=> bs!1874920 m!7760246))

(assert (=> b!7046124 d!2200875))

(declare-fun bs!1874921 () Bool)

(declare-fun d!2200877 () Bool)

(assert (= bs!1874921 (and d!2200877 b!7046136)))

(declare-fun lambda!417854 () Int)

(assert (=> bs!1874921 (= lambda!417854 lambda!417806)))

(declare-fun bs!1874922 () Bool)

(assert (= bs!1874922 (and d!2200877 d!2200863)))

(assert (=> bs!1874922 (= lambda!417854 lambda!417852)))

(assert (=> d!2200877 true))

(assert (=> d!2200877 (= (appendTo!627 lt!2526932 ct2!306) (map!15817 lt!2526932 lambda!417854))))

(declare-fun bs!1874923 () Bool)

(assert (= bs!1874923 d!2200877))

(declare-fun m!7760248 () Bool)

(assert (=> bs!1874923 m!7760248))

(assert (=> b!7046124 d!2200877))

(declare-fun d!2200879 () Bool)

(assert (=> d!2200879 (isDefined!13604 (findConcatSeparationZippers!419 lt!2526932 (set.insert ct2!306 (as set.empty (Set Context!13004))) Nil!67923 (t!381824 s!7408) (t!381824 s!7408)))))

(declare-fun lt!2527043 () Unit!161698)

(declare-fun choose!53550 ((Set Context!13004) Context!13004 List!68047) Unit!161698)

(assert (=> d!2200879 (= lt!2527043 (choose!53550 lt!2526932 ct2!306 (t!381824 s!7408)))))

(assert (=> d!2200879 (matchZipper!3046 (appendTo!627 lt!2526932 ct2!306) (t!381824 s!7408))))

(assert (=> d!2200879 (= (lemmaConcatZipperMatchesStringThenFindConcatDefined!407 lt!2526932 ct2!306 (t!381824 s!7408)) lt!2527043)))

(declare-fun bs!1874927 () Bool)

(assert (= bs!1874927 d!2200879))

(declare-fun m!7760258 () Bool)

(assert (=> bs!1874927 m!7760258))

(assert (=> bs!1874927 m!7759966))

(declare-fun m!7760260 () Bool)

(assert (=> bs!1874927 m!7760260))

(assert (=> bs!1874927 m!7759958))

(assert (=> bs!1874927 m!7759958))

(assert (=> bs!1874927 m!7759966))

(assert (=> bs!1874927 m!7759974))

(declare-fun m!7760262 () Bool)

(assert (=> bs!1874927 m!7760262))

(assert (=> bs!1874927 m!7759974))

(assert (=> b!7046124 d!2200879))

(declare-fun d!2200883 () Bool)

(assert (=> d!2200883 (= (get!23807 lt!2526918) (v!53192 lt!2526918))))

(assert (=> b!7046124 d!2200883))

(declare-fun b!7046363 () Bool)

(declare-fun e!4236044 () Option!16903)

(assert (=> b!7046363 (= e!4236044 (Some!16902 (tuple2!68143 Nil!67923 (t!381824 s!7408))))))

(declare-fun b!7046364 () Bool)

(declare-fun e!4236045 () Bool)

(assert (=> b!7046364 (= e!4236045 (matchZipper!3046 (set.insert ct2!306 (as set.empty (Set Context!13004))) (t!381824 s!7408)))))

(declare-fun b!7046365 () Bool)

(declare-fun res!2876612 () Bool)

(declare-fun e!4236043 () Bool)

(assert (=> b!7046365 (=> (not res!2876612) (not e!4236043))))

(declare-fun lt!2527054 () Option!16903)

(assert (=> b!7046365 (= res!2876612 (matchZipper!3046 lt!2526932 (_1!37374 (get!23807 lt!2527054))))))

(declare-fun b!7046366 () Bool)

(declare-fun lt!2527055 () Unit!161698)

(declare-fun lt!2527053 () Unit!161698)

(assert (=> b!7046366 (= lt!2527055 lt!2527053)))

(declare-fun ++!15585 (List!68047 List!68047) List!68047)

(assert (=> b!7046366 (= (++!15585 (++!15585 Nil!67923 (Cons!67923 (h!74371 (t!381824 s!7408)) Nil!67923)) (t!381824 (t!381824 s!7408))) (t!381824 s!7408))))

(declare-fun lemmaMoveElementToOtherListKeepsConcatEq!2946 (List!68047 C!35282 List!68047 List!68047) Unit!161698)

(assert (=> b!7046366 (= lt!2527053 (lemmaMoveElementToOtherListKeepsConcatEq!2946 Nil!67923 (h!74371 (t!381824 s!7408)) (t!381824 (t!381824 s!7408)) (t!381824 s!7408)))))

(declare-fun e!4236047 () Option!16903)

(assert (=> b!7046366 (= e!4236047 (findConcatSeparationZippers!419 lt!2526932 (set.insert ct2!306 (as set.empty (Set Context!13004))) (++!15585 Nil!67923 (Cons!67923 (h!74371 (t!381824 s!7408)) Nil!67923)) (t!381824 (t!381824 s!7408)) (t!381824 s!7408)))))

(declare-fun b!7046367 () Bool)

(declare-fun e!4236046 () Bool)

(assert (=> b!7046367 (= e!4236046 (not (isDefined!13604 lt!2527054)))))

(declare-fun b!7046369 () Bool)

(declare-fun res!2876610 () Bool)

(assert (=> b!7046369 (=> (not res!2876610) (not e!4236043))))

(assert (=> b!7046369 (= res!2876610 (matchZipper!3046 (set.insert ct2!306 (as set.empty (Set Context!13004))) (_2!37374 (get!23807 lt!2527054))))))

(declare-fun b!7046370 () Bool)

(assert (=> b!7046370 (= e!4236044 e!4236047)))

(declare-fun c!1312090 () Bool)

(assert (=> b!7046370 (= c!1312090 (is-Nil!67923 (t!381824 s!7408)))))

(declare-fun b!7046371 () Bool)

(assert (=> b!7046371 (= e!4236047 None!16902)))

(declare-fun d!2200885 () Bool)

(assert (=> d!2200885 e!4236046))

(declare-fun res!2876608 () Bool)

(assert (=> d!2200885 (=> res!2876608 e!4236046)))

(assert (=> d!2200885 (= res!2876608 e!4236043)))

(declare-fun res!2876611 () Bool)

(assert (=> d!2200885 (=> (not res!2876611) (not e!4236043))))

(assert (=> d!2200885 (= res!2876611 (isDefined!13604 lt!2527054))))

(assert (=> d!2200885 (= lt!2527054 e!4236044)))

(declare-fun c!1312089 () Bool)

(assert (=> d!2200885 (= c!1312089 e!4236045)))

(declare-fun res!2876609 () Bool)

(assert (=> d!2200885 (=> (not res!2876609) (not e!4236045))))

(assert (=> d!2200885 (= res!2876609 (matchZipper!3046 lt!2526932 Nil!67923))))

(assert (=> d!2200885 (= (++!15585 Nil!67923 (t!381824 s!7408)) (t!381824 s!7408))))

(assert (=> d!2200885 (= (findConcatSeparationZippers!419 lt!2526932 (set.insert ct2!306 (as set.empty (Set Context!13004))) Nil!67923 (t!381824 s!7408) (t!381824 s!7408)) lt!2527054)))

(declare-fun b!7046368 () Bool)

(assert (=> b!7046368 (= e!4236043 (= (++!15585 (_1!37374 (get!23807 lt!2527054)) (_2!37374 (get!23807 lt!2527054))) (t!381824 s!7408)))))

(assert (= (and d!2200885 res!2876609) b!7046364))

(assert (= (and d!2200885 c!1312089) b!7046363))

(assert (= (and d!2200885 (not c!1312089)) b!7046370))

(assert (= (and b!7046370 c!1312090) b!7046371))

(assert (= (and b!7046370 (not c!1312090)) b!7046366))

(assert (= (and d!2200885 res!2876611) b!7046365))

(assert (= (and b!7046365 res!2876612) b!7046369))

(assert (= (and b!7046369 res!2876610) b!7046368))

(assert (= (and d!2200885 (not res!2876608)) b!7046367))

(declare-fun m!7760282 () Bool)

(assert (=> b!7046366 m!7760282))

(assert (=> b!7046366 m!7760282))

(declare-fun m!7760284 () Bool)

(assert (=> b!7046366 m!7760284))

(declare-fun m!7760286 () Bool)

(assert (=> b!7046366 m!7760286))

(assert (=> b!7046366 m!7759958))

(assert (=> b!7046366 m!7760282))

(declare-fun m!7760288 () Bool)

(assert (=> b!7046366 m!7760288))

(declare-fun m!7760290 () Bool)

(assert (=> b!7046367 m!7760290))

(declare-fun m!7760292 () Bool)

(assert (=> b!7046369 m!7760292))

(assert (=> b!7046369 m!7759958))

(declare-fun m!7760294 () Bool)

(assert (=> b!7046369 m!7760294))

(assert (=> b!7046365 m!7760292))

(declare-fun m!7760296 () Bool)

(assert (=> b!7046365 m!7760296))

(assert (=> b!7046364 m!7759958))

(declare-fun m!7760298 () Bool)

(assert (=> b!7046364 m!7760298))

(assert (=> d!2200885 m!7760290))

(declare-fun m!7760300 () Bool)

(assert (=> d!2200885 m!7760300))

(declare-fun m!7760302 () Bool)

(assert (=> d!2200885 m!7760302))

(assert (=> b!7046368 m!7760292))

(declare-fun m!7760304 () Bool)

(assert (=> b!7046368 m!7760304))

(assert (=> b!7046124 d!2200885))

(declare-fun bs!1874928 () Bool)

(declare-fun d!2200891 () Bool)

(assert (= bs!1874928 (and d!2200891 b!7046136)))

(declare-fun lambda!417860 () Int)

(assert (=> bs!1874928 (= lambda!417860 lambda!417807)))

(declare-fun bs!1874929 () Bool)

(assert (= bs!1874929 (and d!2200891 d!2200813)))

(assert (=> bs!1874929 (= lambda!417860 lambda!417835)))

(declare-fun bs!1874930 () Bool)

(assert (= bs!1874930 (and d!2200891 d!2200867)))

(assert (=> bs!1874930 (= lambda!417860 lambda!417853)))

(assert (=> d!2200891 (= (derivationStepZipperDown!2170 (h!74370 (exprs!7002 lt!2526924)) (Context!13005 (++!15583 (exprs!7002 lt!2526913) (exprs!7002 ct2!306))) (h!74371 s!7408)) (appendTo!627 (derivationStepZipperDown!2170 (h!74370 (exprs!7002 lt!2526924)) lt!2526913 (h!74371 s!7408)) ct2!306))))

(declare-fun lt!2527061 () Unit!161698)

(assert (=> d!2200891 (= lt!2527061 (lemmaConcatPreservesForall!827 (exprs!7002 lt!2526913) (exprs!7002 ct2!306) lambda!417860))))

(declare-fun lt!2527060 () Unit!161698)

(declare-fun choose!53551 (Context!13004 Regex!17506 C!35282 Context!13004) Unit!161698)

(assert (=> d!2200891 (= lt!2527060 (choose!53551 lt!2526913 (h!74370 (exprs!7002 lt!2526924)) (h!74371 s!7408) ct2!306))))

(declare-fun validRegex!8946 (Regex!17506) Bool)

(assert (=> d!2200891 (validRegex!8946 (h!74370 (exprs!7002 lt!2526924)))))

(assert (=> d!2200891 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!83 lt!2526913 (h!74370 (exprs!7002 lt!2526924)) (h!74371 s!7408) ct2!306) lt!2527060)))

(declare-fun bs!1874931 () Bool)

(assert (= bs!1874931 d!2200891))

(declare-fun m!7760306 () Bool)

(assert (=> bs!1874931 m!7760306))

(declare-fun m!7760308 () Bool)

(assert (=> bs!1874931 m!7760308))

(assert (=> bs!1874931 m!7759964))

(declare-fun m!7760310 () Bool)

(assert (=> bs!1874931 m!7760310))

(declare-fun m!7760312 () Bool)

(assert (=> bs!1874931 m!7760312))

(assert (=> bs!1874931 m!7759964))

(declare-fun m!7760314 () Bool)

(assert (=> bs!1874931 m!7760314))

(declare-fun m!7760316 () Bool)

(assert (=> bs!1874931 m!7760316))

(assert (=> b!7046124 d!2200891))

(declare-fun d!2200893 () Bool)

(declare-fun c!1312092 () Bool)

(assert (=> d!2200893 (= c!1312092 (isEmpty!39642 (_1!37374 (get!23807 lt!2526918))))))

(declare-fun e!4236048 () Bool)

(assert (=> d!2200893 (= (matchZipper!3046 lt!2526932 (_1!37374 (get!23807 lt!2526918))) e!4236048)))

(declare-fun b!7046372 () Bool)

(assert (=> b!7046372 (= e!4236048 (nullableZipper!2608 lt!2526932))))

(declare-fun b!7046373 () Bool)

(assert (=> b!7046373 (= e!4236048 (matchZipper!3046 (derivationStepZipper!2962 lt!2526932 (head!14305 (_1!37374 (get!23807 lt!2526918)))) (tail!13626 (_1!37374 (get!23807 lt!2526918)))))))

(assert (= (and d!2200893 c!1312092) b!7046372))

(assert (= (and d!2200893 (not c!1312092)) b!7046373))

(declare-fun m!7760318 () Bool)

(assert (=> d!2200893 m!7760318))

(declare-fun m!7760320 () Bool)

(assert (=> b!7046372 m!7760320))

(declare-fun m!7760322 () Bool)

(assert (=> b!7046373 m!7760322))

(assert (=> b!7046373 m!7760322))

(declare-fun m!7760324 () Bool)

(assert (=> b!7046373 m!7760324))

(declare-fun m!7760326 () Bool)

(assert (=> b!7046373 m!7760326))

(assert (=> b!7046373 m!7760324))

(assert (=> b!7046373 m!7760326))

(declare-fun m!7760328 () Bool)

(assert (=> b!7046373 m!7760328))

(assert (=> b!7046124 d!2200893))

(assert (=> b!7046124 d!2200859))

(declare-fun condSetEmpty!49463 () Bool)

(assert (=> setNonEmpty!49457 (= condSetEmpty!49463 (= setRest!49457 (as set.empty (Set Context!13004))))))

(declare-fun setRes!49463 () Bool)

(assert (=> setNonEmpty!49457 (= tp!1938057 setRes!49463)))

(declare-fun setIsEmpty!49463 () Bool)

(assert (=> setIsEmpty!49463 setRes!49463))

(declare-fun e!4236057 () Bool)

(declare-fun setElem!49463 () Context!13004)

(declare-fun tp!1938075 () Bool)

(declare-fun setNonEmpty!49463 () Bool)

(assert (=> setNonEmpty!49463 (= setRes!49463 (and tp!1938075 (inv!86625 setElem!49463) e!4236057))))

(declare-fun setRest!49463 () (Set Context!13004))

(assert (=> setNonEmpty!49463 (= setRest!49457 (set.union (set.insert setElem!49463 (as set.empty (Set Context!13004))) setRest!49463))))

(declare-fun b!7046389 () Bool)

(declare-fun tp!1938074 () Bool)

(assert (=> b!7046389 (= e!4236057 tp!1938074)))

(assert (= (and setNonEmpty!49457 condSetEmpty!49463) setIsEmpty!49463))

(assert (= (and setNonEmpty!49457 (not condSetEmpty!49463)) setNonEmpty!49463))

(assert (= setNonEmpty!49463 b!7046389))

(declare-fun m!7760330 () Bool)

(assert (=> setNonEmpty!49463 m!7760330))

(declare-fun b!7046394 () Bool)

(declare-fun e!4236060 () Bool)

(declare-fun tp!1938080 () Bool)

(declare-fun tp!1938081 () Bool)

(assert (=> b!7046394 (= e!4236060 (and tp!1938080 tp!1938081))))

(assert (=> b!7046133 (= tp!1938055 e!4236060)))

(assert (= (and b!7046133 (is-Cons!67922 (exprs!7002 setElem!49457))) b!7046394))

(declare-fun b!7046395 () Bool)

(declare-fun e!4236061 () Bool)

(declare-fun tp!1938082 () Bool)

(declare-fun tp!1938083 () Bool)

(assert (=> b!7046395 (= e!4236061 (and tp!1938082 tp!1938083))))

(assert (=> b!7046130 (= tp!1938056 e!4236061)))

(assert (= (and b!7046130 (is-Cons!67922 (exprs!7002 ct2!306))) b!7046395))

(declare-fun b!7046400 () Bool)

(declare-fun e!4236064 () Bool)

(declare-fun tp!1938086 () Bool)

(assert (=> b!7046400 (= e!4236064 (and tp_is_empty!44237 tp!1938086))))

(assert (=> b!7046129 (= tp!1938054 e!4236064)))

(assert (= (and b!7046129 (is-Cons!67923 (t!381824 s!7408))) b!7046400))

(declare-fun b_lambda!267765 () Bool)

(assert (= b_lambda!267763 (or b!7046136 b_lambda!267765)))

(declare-fun bs!1874932 () Bool)

(declare-fun d!2200895 () Bool)

(assert (= bs!1874932 (and d!2200895 b!7046136)))

(declare-fun lt!2527062 () Unit!161698)

(assert (=> bs!1874932 (= lt!2527062 (lemmaConcatPreservesForall!827 (exprs!7002 lt!2527033) (exprs!7002 ct2!306) lambda!417807))))

(assert (=> bs!1874932 (= (dynLambda!27500 lambda!417806 lt!2527033) (Context!13005 (++!15583 (exprs!7002 lt!2527033) (exprs!7002 ct2!306))))))

(declare-fun m!7760342 () Bool)

(assert (=> bs!1874932 m!7760342))

(declare-fun m!7760344 () Bool)

(assert (=> bs!1874932 m!7760344))

(assert (=> d!2200847 d!2200895))

(declare-fun b_lambda!267767 () Bool)

(assert (= b_lambda!267755 (or b!7046126 b_lambda!267767)))

(declare-fun bs!1874933 () Bool)

(declare-fun d!2200899 () Bool)

(assert (= bs!1874933 (and d!2200899 b!7046126)))

(assert (=> bs!1874933 (= (dynLambda!27497 lambda!417808 lt!2526923) (derivationStepZipperUp!2116 lt!2526923 (h!74371 s!7408)))))

(assert (=> bs!1874933 m!7759950))

(assert (=> d!2200817 d!2200899))

(declare-fun b_lambda!267769 () Bool)

(assert (= b_lambda!267757 (or b!7046131 b_lambda!267769)))

(declare-fun bs!1874934 () Bool)

(declare-fun d!2200901 () Bool)

(assert (= bs!1874934 (and d!2200901 b!7046131)))

(assert (=> bs!1874934 (= (dynLambda!27498 lambda!417805 lt!2527015) (matchZipper!3046 (set.insert lt!2527015 (as set.empty (Set Context!13004))) s!7408))))

(declare-fun m!7760346 () Bool)

(assert (=> bs!1874934 m!7760346))

(assert (=> bs!1874934 m!7760346))

(declare-fun m!7760348 () Bool)

(assert (=> bs!1874934 m!7760348))

(assert (=> d!2200829 d!2200901))

(push 1)

(assert (not b!7046292))

(assert (not d!2200859))

(assert (not bm!640178))

(assert (not d!2200893))

(assert (not bm!640176))

(assert (not d!2200831))

(assert (not b!7046369))

(assert (not b!7046205))

(assert (not b!7046373))

(assert (not d!2200867))

(assert (not d!2200847))

(assert (not d!2200875))

(assert (not b!7046301))

(assert (not bs!1874934))

(assert (not b!7046237))

(assert (not d!2200885))

(assert (not d!2200827))

(assert (not d!2200851))

(assert (not b!7046366))

(assert (not d!2200857))

(assert (not b!7046311))

(assert (not b!7046259))

(assert (not d!2200813))

(assert (not b!7046395))

(assert (not b!7046400))

(assert (not b!7046258))

(assert (not d!2200829))

(assert (not b!7046365))

(assert (not b!7046250))

(assert (not b!7046368))

(assert (not d!2200861))

(assert (not bm!640182))

(assert (not b!7046394))

(assert (not d!2200839))

(assert (not b!7046251))

(assert tp_is_empty!44237)

(assert (not b!7046300))

(assert (not d!2200817))

(assert (not bm!640173))

(assert (not b!7046364))

(assert (not bm!640179))

(assert (not d!2200869))

(assert (not bm!640172))

(assert (not b!7046306))

(assert (not d!2200891))

(assert (not d!2200823))

(assert (not d!2200863))

(assert (not d!2200845))

(assert (not setNonEmpty!49463))

(assert (not b!7046238))

(assert (not d!2200879))

(assert (not d!2200821))

(assert (not b!7046389))

(assert (not b!7046211))

(assert (not b_lambda!267765))

(assert (not b!7046206))

(assert (not b!7046372))

(assert (not d!2200819))

(assert (not bs!1874933))

(assert (not b_lambda!267767))

(assert (not bm!640159))

(assert (not d!2200877))

(assert (not d!2200837))

(assert (not b_lambda!267769))

(assert (not b!7046367))

(assert (not bs!1874932))

(assert (not b!7046305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

