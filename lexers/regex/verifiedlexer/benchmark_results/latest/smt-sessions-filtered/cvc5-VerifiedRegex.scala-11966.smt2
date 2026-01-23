; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!670010 () Bool)

(assert start!670010)

(declare-fun b!6981583 () Bool)

(assert (=> b!6981583 true))

(declare-fun b!6981580 () Bool)

(assert (=> b!6981580 true))

(declare-fun b!6981575 () Bool)

(assert (=> b!6981575 true))

(declare-fun b!6981573 () Bool)

(declare-fun e!4196039 () Bool)

(declare-fun tp_is_empty!43581 () Bool)

(declare-fun tp!1928378 () Bool)

(assert (=> b!6981573 (= e!4196039 (and tp_is_empty!43581 tp!1928378))))

(declare-fun b!6981574 () Bool)

(declare-fun res!2846956 () Bool)

(declare-fun e!4196042 () Bool)

(assert (=> b!6981574 (=> res!2846956 e!4196042)))

(declare-datatypes ((C!34626 0))(
  ( (C!34627 (val!27015 Int)) )
))
(declare-datatypes ((Regex!17178 0))(
  ( (ElementMatch!17178 (c!1294261 C!34626)) (Concat!26023 (regOne!34868 Regex!17178) (regTwo!34868 Regex!17178)) (EmptyExpr!17178) (Star!17178 (reg!17507 Regex!17178)) (EmptyLang!17178) (Union!17178 (regOne!34869 Regex!17178) (regTwo!34869 Regex!17178)) )
))
(declare-datatypes ((List!67079 0))(
  ( (Nil!66955) (Cons!66955 (h!73403 Regex!17178) (t!380822 List!67079)) )
))
(declare-datatypes ((Context!12348 0))(
  ( (Context!12349 (exprs!6674 List!67079)) )
))
(declare-fun lt!2482086 () Context!12348)

(declare-fun lt!2482098 () (Set Context!12348))

(assert (=> b!6981574 (= res!2846956 (not (set.member lt!2482086 lt!2482098)))))

(declare-fun setIsEmpty!47558 () Bool)

(declare-fun setRes!47558 () Bool)

(assert (=> setIsEmpty!47558 setRes!47558))

(declare-fun e!4196038 () Bool)

(declare-fun e!4196034 () Bool)

(assert (=> b!6981575 (= e!4196038 e!4196034)))

(declare-fun res!2846959 () Bool)

(assert (=> b!6981575 (=> res!2846959 e!4196034)))

(declare-fun lt!2482090 () (Set Context!12348))

(declare-fun lt!2482103 () (Set Context!12348))

(declare-datatypes ((List!67080 0))(
  ( (Nil!66956) (Cons!66956 (h!73404 C!34626) (t!380823 List!67080)) )
))
(declare-fun s!7408 () List!67080)

(declare-fun derivationStepZipper!2658 ((Set Context!12348) C!34626) (Set Context!12348))

(assert (=> b!6981575 (= res!2846959 (not (= (derivationStepZipper!2658 lt!2482090 (h!73404 s!7408)) lt!2482103)))))

(declare-fun lt!2482102 () Context!12348)

(declare-fun lambda!399343 () Int)

(declare-fun flatMap!2164 ((Set Context!12348) Int) (Set Context!12348))

(declare-fun derivationStepZipperUp!1828 (Context!12348 C!34626) (Set Context!12348))

(assert (=> b!6981575 (= (flatMap!2164 lt!2482090 lambda!399343) (derivationStepZipperUp!1828 lt!2482102 (h!73404 s!7408)))))

(declare-datatypes ((Unit!161008 0))(
  ( (Unit!161009) )
))
(declare-fun lt!2482087 () Unit!161008)

(declare-fun lemmaFlatMapOnSingletonSet!1679 ((Set Context!12348) Context!12348 Int) Unit!161008)

(assert (=> b!6981575 (= lt!2482087 (lemmaFlatMapOnSingletonSet!1679 lt!2482090 lt!2482102 lambda!399343))))

(assert (=> b!6981575 (= lt!2482103 (derivationStepZipperUp!1828 lt!2482102 (h!73404 s!7408)))))

(declare-fun lt!2482097 () Unit!161008)

(declare-fun lambda!399342 () Int)

(declare-fun lt!2482088 () Context!12348)

(declare-fun ct2!306 () Context!12348)

(declare-fun lemmaConcatPreservesForall!514 (List!67079 List!67079 Int) Unit!161008)

(assert (=> b!6981575 (= lt!2482097 (lemmaConcatPreservesForall!514 (exprs!6674 lt!2482088) (exprs!6674 ct2!306) lambda!399342))))

(declare-fun b!6981576 () Bool)

(declare-fun e!4196041 () Bool)

(assert (=> b!6981576 (= e!4196034 e!4196041)))

(declare-fun res!2846958 () Bool)

(assert (=> b!6981576 (=> res!2846958 e!4196041)))

(declare-fun nullable!6938 (Regex!17178) Bool)

(assert (=> b!6981576 (= res!2846958 (not (nullable!6938 (h!73403 (exprs!6674 lt!2482088)))))))

(declare-fun lt!2482095 () List!67079)

(declare-fun tail!13158 (List!67079) List!67079)

(assert (=> b!6981576 (= lt!2482095 (tail!13158 (exprs!6674 lt!2482088)))))

(declare-fun b!6981577 () Bool)

(declare-fun res!2846962 () Bool)

(assert (=> b!6981577 (=> res!2846962 e!4196034)))

(declare-fun isEmpty!39082 (List!67079) Bool)

(assert (=> b!6981577 (= res!2846962 (isEmpty!39082 (exprs!6674 lt!2482088)))))

(declare-fun b!6981578 () Bool)

(declare-fun e!4196036 () Bool)

(declare-fun tp!1928376 () Bool)

(assert (=> b!6981578 (= e!4196036 tp!1928376)))

(declare-fun b!6981579 () Bool)

(declare-fun res!2846964 () Bool)

(assert (=> b!6981579 (=> res!2846964 e!4196034)))

(assert (=> b!6981579 (= res!2846964 (not (is-Cons!66955 (exprs!6674 lt!2482088))))))

(declare-fun e!4196035 () Bool)

(assert (=> b!6981580 (= e!4196042 e!4196035)))

(declare-fun res!2846960 () Bool)

(assert (=> b!6981580 (=> res!2846960 e!4196035)))

(declare-fun z1!570 () (Set Context!12348))

(assert (=> b!6981580 (= res!2846960 (or (not (= lt!2482102 lt!2482086)) (not (set.member lt!2482088 z1!570))))))

(declare-fun ++!15123 (List!67079 List!67079) List!67079)

(assert (=> b!6981580 (= lt!2482102 (Context!12349 (++!15123 (exprs!6674 lt!2482088) (exprs!6674 ct2!306))))))

(declare-fun lt!2482092 () Unit!161008)

(assert (=> b!6981580 (= lt!2482092 (lemmaConcatPreservesForall!514 (exprs!6674 lt!2482088) (exprs!6674 ct2!306) lambda!399342))))

(declare-fun lambda!399341 () Int)

(declare-fun mapPost2!33 ((Set Context!12348) Int Context!12348) Context!12348)

(assert (=> b!6981580 (= lt!2482088 (mapPost2!33 z1!570 lambda!399341 lt!2482086))))

(declare-fun b!6981581 () Bool)

(declare-fun e!4196037 () Bool)

(declare-fun e!4196032 () Bool)

(assert (=> b!6981581 (= e!4196037 e!4196032)))

(declare-fun res!2846955 () Bool)

(assert (=> b!6981581 (=> res!2846955 e!4196032)))

(declare-fun forall!16070 (List!67079 Int) Bool)

(assert (=> b!6981581 (= res!2846955 (not (forall!16070 lt!2482095 lambda!399342)))))

(declare-fun lt!2482094 () Unit!161008)

(assert (=> b!6981581 (= lt!2482094 (lemmaConcatPreservesForall!514 lt!2482095 (exprs!6674 ct2!306) lambda!399342))))

(declare-fun b!6981582 () Bool)

(assert (=> b!6981582 (= e!4196032 (forall!16070 (exprs!6674 ct2!306) lambda!399342))))

(declare-fun e!4196033 () Bool)

(assert (=> b!6981583 (= e!4196033 (not e!4196042))))

(declare-fun res!2846957 () Bool)

(assert (=> b!6981583 (=> res!2846957 e!4196042)))

(declare-fun lt!2482099 () (Set Context!12348))

(declare-fun matchZipper!2718 ((Set Context!12348) List!67080) Bool)

(assert (=> b!6981583 (= res!2846957 (not (matchZipper!2718 lt!2482099 s!7408)))))

(assert (=> b!6981583 (= lt!2482099 (set.insert lt!2482086 (as set.empty (Set Context!12348))))))

(declare-fun lambda!399340 () Int)

(declare-fun getWitness!1052 ((Set Context!12348) Int) Context!12348)

(assert (=> b!6981583 (= lt!2482086 (getWitness!1052 lt!2482098 lambda!399340))))

(declare-datatypes ((List!67081 0))(
  ( (Nil!66957) (Cons!66957 (h!73405 Context!12348) (t!380824 List!67081)) )
))
(declare-fun lt!2482089 () List!67081)

(declare-fun exists!2941 (List!67081 Int) Bool)

(assert (=> b!6981583 (exists!2941 lt!2482089 lambda!399340)))

(declare-fun lt!2482091 () Unit!161008)

(declare-fun lemmaZipperMatchesExistsMatchingContext!147 (List!67081 List!67080) Unit!161008)

(assert (=> b!6981583 (= lt!2482091 (lemmaZipperMatchesExistsMatchingContext!147 lt!2482089 s!7408))))

(declare-fun toList!10538 ((Set Context!12348)) List!67081)

(assert (=> b!6981583 (= lt!2482089 (toList!10538 lt!2482098))))

(declare-fun b!6981584 () Bool)

(assert (=> b!6981584 (= e!4196035 e!4196038)))

(declare-fun res!2846963 () Bool)

(assert (=> b!6981584 (=> res!2846963 e!4196038)))

(assert (=> b!6981584 (= res!2846963 (not (= lt!2482090 lt!2482099)))))

(assert (=> b!6981584 (= lt!2482090 (set.insert lt!2482102 (as set.empty (Set Context!12348))))))

(declare-fun lt!2482101 () Unit!161008)

(assert (=> b!6981584 (= lt!2482101 (lemmaConcatPreservesForall!514 (exprs!6674 lt!2482088) (exprs!6674 ct2!306) lambda!399342))))

(declare-fun b!6981585 () Bool)

(declare-fun e!4196040 () Bool)

(declare-fun tp!1928375 () Bool)

(assert (=> b!6981585 (= e!4196040 tp!1928375)))

(declare-fun b!6981586 () Bool)

(declare-fun res!2846961 () Bool)

(assert (=> b!6981586 (=> (not res!2846961) (not e!4196033))))

(assert (=> b!6981586 (= res!2846961 (is-Cons!66956 s!7408))))

(declare-fun res!2846966 () Bool)

(assert (=> start!670010 (=> (not res!2846966) (not e!4196033))))

(assert (=> start!670010 (= res!2846966 (matchZipper!2718 lt!2482098 s!7408))))

(declare-fun appendTo!299 ((Set Context!12348) Context!12348) (Set Context!12348))

(assert (=> start!670010 (= lt!2482098 (appendTo!299 z1!570 ct2!306))))

(assert (=> start!670010 e!4196033))

(declare-fun condSetEmpty!47558 () Bool)

(assert (=> start!670010 (= condSetEmpty!47558 (= z1!570 (as set.empty (Set Context!12348))))))

(assert (=> start!670010 setRes!47558))

(declare-fun inv!85805 (Context!12348) Bool)

(assert (=> start!670010 (and (inv!85805 ct2!306) e!4196036)))

(assert (=> start!670010 e!4196039))

(declare-fun setNonEmpty!47558 () Bool)

(declare-fun setElem!47558 () Context!12348)

(declare-fun tp!1928377 () Bool)

(assert (=> setNonEmpty!47558 (= setRes!47558 (and tp!1928377 (inv!85805 setElem!47558) e!4196040))))

(declare-fun setRest!47558 () (Set Context!12348))

(assert (=> setNonEmpty!47558 (= z1!570 (set.union (set.insert setElem!47558 (as set.empty (Set Context!12348))) setRest!47558))))

(declare-fun b!6981587 () Bool)

(assert (=> b!6981587 (= e!4196041 e!4196037)))

(declare-fun res!2846965 () Bool)

(assert (=> b!6981587 (=> res!2846965 e!4196037)))

(declare-fun lt!2482100 () Context!12348)

(declare-fun derivationStepZipperDown!1896 (Regex!17178 Context!12348 C!34626) (Set Context!12348))

(assert (=> b!6981587 (= res!2846965 (not (= lt!2482103 (set.union (derivationStepZipperDown!1896 (h!73403 (exprs!6674 lt!2482088)) lt!2482100 (h!73404 s!7408)) (derivationStepZipperUp!1828 lt!2482100 (h!73404 s!7408))))))))

(assert (=> b!6981587 (= lt!2482100 (Context!12349 (++!15123 lt!2482095 (exprs!6674 ct2!306))))))

(declare-fun lt!2482096 () Unit!161008)

(assert (=> b!6981587 (= lt!2482096 (lemmaConcatPreservesForall!514 lt!2482095 (exprs!6674 ct2!306) lambda!399342))))

(declare-fun lt!2482093 () Unit!161008)

(assert (=> b!6981587 (= lt!2482093 (lemmaConcatPreservesForall!514 lt!2482095 (exprs!6674 ct2!306) lambda!399342))))

(assert (= (and start!670010 res!2846966) b!6981586))

(assert (= (and b!6981586 res!2846961) b!6981583))

(assert (= (and b!6981583 (not res!2846957)) b!6981574))

(assert (= (and b!6981574 (not res!2846956)) b!6981580))

(assert (= (and b!6981580 (not res!2846960)) b!6981584))

(assert (= (and b!6981584 (not res!2846963)) b!6981575))

(assert (= (and b!6981575 (not res!2846959)) b!6981579))

(assert (= (and b!6981579 (not res!2846964)) b!6981577))

(assert (= (and b!6981577 (not res!2846962)) b!6981576))

(assert (= (and b!6981576 (not res!2846958)) b!6981587))

(assert (= (and b!6981587 (not res!2846965)) b!6981581))

(assert (= (and b!6981581 (not res!2846955)) b!6981582))

(assert (= (and start!670010 condSetEmpty!47558) setIsEmpty!47558))

(assert (= (and start!670010 (not condSetEmpty!47558)) setNonEmpty!47558))

(assert (= setNonEmpty!47558 b!6981585))

(assert (= start!670010 b!6981578))

(assert (= (and start!670010 (is-Cons!66956 s!7408)) b!6981573))

(declare-fun m!7668106 () Bool)

(assert (=> b!6981575 m!7668106))

(declare-fun m!7668108 () Bool)

(assert (=> b!6981575 m!7668108))

(declare-fun m!7668110 () Bool)

(assert (=> b!6981575 m!7668110))

(declare-fun m!7668112 () Bool)

(assert (=> b!6981575 m!7668112))

(declare-fun m!7668114 () Bool)

(assert (=> b!6981575 m!7668114))

(declare-fun m!7668116 () Bool)

(assert (=> b!6981577 m!7668116))

(declare-fun m!7668118 () Bool)

(assert (=> setNonEmpty!47558 m!7668118))

(declare-fun m!7668120 () Bool)

(assert (=> b!6981576 m!7668120))

(declare-fun m!7668122 () Bool)

(assert (=> b!6981576 m!7668122))

(declare-fun m!7668124 () Bool)

(assert (=> b!6981584 m!7668124))

(assert (=> b!6981584 m!7668112))

(declare-fun m!7668126 () Bool)

(assert (=> b!6981583 m!7668126))

(declare-fun m!7668128 () Bool)

(assert (=> b!6981583 m!7668128))

(declare-fun m!7668130 () Bool)

(assert (=> b!6981583 m!7668130))

(declare-fun m!7668132 () Bool)

(assert (=> b!6981583 m!7668132))

(declare-fun m!7668134 () Bool)

(assert (=> b!6981583 m!7668134))

(declare-fun m!7668136 () Bool)

(assert (=> b!6981583 m!7668136))

(declare-fun m!7668138 () Bool)

(assert (=> b!6981587 m!7668138))

(declare-fun m!7668140 () Bool)

(assert (=> b!6981587 m!7668140))

(declare-fun m!7668142 () Bool)

(assert (=> b!6981587 m!7668142))

(declare-fun m!7668144 () Bool)

(assert (=> b!6981587 m!7668144))

(assert (=> b!6981587 m!7668142))

(declare-fun m!7668146 () Bool)

(assert (=> b!6981574 m!7668146))

(declare-fun m!7668148 () Bool)

(assert (=> start!670010 m!7668148))

(declare-fun m!7668150 () Bool)

(assert (=> start!670010 m!7668150))

(declare-fun m!7668152 () Bool)

(assert (=> start!670010 m!7668152))

(declare-fun m!7668154 () Bool)

(assert (=> b!6981581 m!7668154))

(assert (=> b!6981581 m!7668142))

(declare-fun m!7668156 () Bool)

(assert (=> b!6981580 m!7668156))

(declare-fun m!7668158 () Bool)

(assert (=> b!6981580 m!7668158))

(assert (=> b!6981580 m!7668112))

(declare-fun m!7668160 () Bool)

(assert (=> b!6981580 m!7668160))

(declare-fun m!7668162 () Bool)

(assert (=> b!6981582 m!7668162))

(push 1)

(assert (not b!6981573))

(assert (not b!6981581))

(assert (not setNonEmpty!47558))

(assert (not b!6981582))

(assert (not b!6981580))

(assert (not b!6981584))

(assert tp_is_empty!43581)

(assert (not b!6981578))

(assert (not start!670010))

(assert (not b!6981585))

(assert (not b!6981575))

(assert (not b!6981577))

(assert (not b!6981583))

(assert (not b!6981587))

(assert (not b!6981576))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1860945 () Bool)

(declare-fun d!2174165 () Bool)

(assert (= bs!1860945 (and d!2174165 b!6981575)))

(declare-fun lambda!399374 () Int)

(assert (=> bs!1860945 (= lambda!399374 lambda!399343)))

(assert (=> d!2174165 true))

(assert (=> d!2174165 (= (derivationStepZipper!2658 lt!2482090 (h!73404 s!7408)) (flatMap!2164 lt!2482090 lambda!399374))))

(declare-fun bs!1860946 () Bool)

(assert (= bs!1860946 d!2174165))

(declare-fun m!7668222 () Bool)

(assert (=> bs!1860946 m!7668222))

(assert (=> b!6981575 d!2174165))

(declare-fun d!2174167 () Bool)

(assert (=> d!2174167 (forall!16070 (++!15123 (exprs!6674 lt!2482088) (exprs!6674 ct2!306)) lambda!399342)))

(declare-fun lt!2482162 () Unit!161008)

(declare-fun choose!52066 (List!67079 List!67079 Int) Unit!161008)

(assert (=> d!2174167 (= lt!2482162 (choose!52066 (exprs!6674 lt!2482088) (exprs!6674 ct2!306) lambda!399342))))

(assert (=> d!2174167 (forall!16070 (exprs!6674 lt!2482088) lambda!399342)))

(assert (=> d!2174167 (= (lemmaConcatPreservesForall!514 (exprs!6674 lt!2482088) (exprs!6674 ct2!306) lambda!399342) lt!2482162)))

(declare-fun bs!1860947 () Bool)

(assert (= bs!1860947 d!2174167))

(assert (=> bs!1860947 m!7668158))

(assert (=> bs!1860947 m!7668158))

(declare-fun m!7668224 () Bool)

(assert (=> bs!1860947 m!7668224))

(declare-fun m!7668226 () Bool)

(assert (=> bs!1860947 m!7668226))

(declare-fun m!7668228 () Bool)

(assert (=> bs!1860947 m!7668228))

(assert (=> b!6981575 d!2174167))

(declare-fun d!2174169 () Bool)

(declare-fun dynLambda!26773 (Int Context!12348) (Set Context!12348))

(assert (=> d!2174169 (= (flatMap!2164 lt!2482090 lambda!399343) (dynLambda!26773 lambda!399343 lt!2482102))))

(declare-fun lt!2482165 () Unit!161008)

(declare-fun choose!52067 ((Set Context!12348) Context!12348 Int) Unit!161008)

(assert (=> d!2174169 (= lt!2482165 (choose!52067 lt!2482090 lt!2482102 lambda!399343))))

(assert (=> d!2174169 (= lt!2482090 (set.insert lt!2482102 (as set.empty (Set Context!12348))))))

(assert (=> d!2174169 (= (lemmaFlatMapOnSingletonSet!1679 lt!2482090 lt!2482102 lambda!399343) lt!2482165)))

(declare-fun b_lambda!261711 () Bool)

(assert (=> (not b_lambda!261711) (not d!2174169)))

(declare-fun bs!1860948 () Bool)

(assert (= bs!1860948 d!2174169))

(assert (=> bs!1860948 m!7668108))

(declare-fun m!7668230 () Bool)

(assert (=> bs!1860948 m!7668230))

(declare-fun m!7668232 () Bool)

(assert (=> bs!1860948 m!7668232))

(assert (=> bs!1860948 m!7668124))

(assert (=> b!6981575 d!2174169))

(declare-fun d!2174171 () Bool)

(declare-fun choose!52068 ((Set Context!12348) Int) (Set Context!12348))

(assert (=> d!2174171 (= (flatMap!2164 lt!2482090 lambda!399343) (choose!52068 lt!2482090 lambda!399343))))

(declare-fun bs!1860949 () Bool)

(assert (= bs!1860949 d!2174171))

(declare-fun m!7668234 () Bool)

(assert (=> bs!1860949 m!7668234))

(assert (=> b!6981575 d!2174171))

(declare-fun b!6981657 () Bool)

(declare-fun e!4196083 () Bool)

(assert (=> b!6981657 (= e!4196083 (nullable!6938 (h!73403 (exprs!6674 lt!2482102))))))

(declare-fun e!4196082 () (Set Context!12348))

(declare-fun call!633553 () (Set Context!12348))

(declare-fun b!6981658 () Bool)

(assert (=> b!6981658 (= e!4196082 (set.union call!633553 (derivationStepZipperUp!1828 (Context!12349 (t!380822 (exprs!6674 lt!2482102))) (h!73404 s!7408))))))

(declare-fun b!6981660 () Bool)

(declare-fun e!4196084 () (Set Context!12348))

(assert (=> b!6981660 (= e!4196084 (as set.empty (Set Context!12348)))))

(declare-fun bm!633548 () Bool)

(assert (=> bm!633548 (= call!633553 (derivationStepZipperDown!1896 (h!73403 (exprs!6674 lt!2482102)) (Context!12349 (t!380822 (exprs!6674 lt!2482102))) (h!73404 s!7408)))))

(declare-fun b!6981661 () Bool)

(assert (=> b!6981661 (= e!4196082 e!4196084)))

(declare-fun c!1294277 () Bool)

(assert (=> b!6981661 (= c!1294277 (is-Cons!66955 (exprs!6674 lt!2482102)))))

(declare-fun b!6981659 () Bool)

(assert (=> b!6981659 (= e!4196084 call!633553)))

(declare-fun d!2174173 () Bool)

(declare-fun c!1294278 () Bool)

(assert (=> d!2174173 (= c!1294278 e!4196083)))

(declare-fun res!2847007 () Bool)

(assert (=> d!2174173 (=> (not res!2847007) (not e!4196083))))

(assert (=> d!2174173 (= res!2847007 (is-Cons!66955 (exprs!6674 lt!2482102)))))

(assert (=> d!2174173 (= (derivationStepZipperUp!1828 lt!2482102 (h!73404 s!7408)) e!4196082)))

(assert (= (and d!2174173 res!2847007) b!6981657))

(assert (= (and d!2174173 c!1294278) b!6981658))

(assert (= (and d!2174173 (not c!1294278)) b!6981661))

(assert (= (and b!6981661 c!1294277) b!6981659))

(assert (= (and b!6981661 (not c!1294277)) b!6981660))

(assert (= (or b!6981658 b!6981659) bm!633548))

(declare-fun m!7668236 () Bool)

(assert (=> b!6981657 m!7668236))

(declare-fun m!7668238 () Bool)

(assert (=> b!6981658 m!7668238))

(declare-fun m!7668240 () Bool)

(assert (=> bm!633548 m!7668240))

(assert (=> b!6981575 d!2174173))

(declare-fun d!2174177 () Bool)

(assert (=> d!2174177 (= (isEmpty!39082 (exprs!6674 lt!2482088)) (is-Nil!66955 (exprs!6674 lt!2482088)))))

(assert (=> b!6981577 d!2174177))

(declare-fun bs!1860950 () Bool)

(declare-fun d!2174179 () Bool)

(assert (= bs!1860950 (and d!2174179 b!6981580)))

(declare-fun lambda!399377 () Int)

(assert (=> bs!1860950 (= lambda!399377 lambda!399342)))

(assert (=> d!2174179 (= (inv!85805 setElem!47558) (forall!16070 (exprs!6674 setElem!47558) lambda!399377))))

(declare-fun bs!1860951 () Bool)

(assert (= bs!1860951 d!2174179))

(declare-fun m!7668242 () Bool)

(assert (=> bs!1860951 m!7668242))

(assert (=> setNonEmpty!47558 d!2174179))

(declare-fun d!2174181 () Bool)

(declare-fun nullableFct!2610 (Regex!17178) Bool)

(assert (=> d!2174181 (= (nullable!6938 (h!73403 (exprs!6674 lt!2482088))) (nullableFct!2610 (h!73403 (exprs!6674 lt!2482088))))))

(declare-fun bs!1860952 () Bool)

(assert (= bs!1860952 d!2174181))

(declare-fun m!7668244 () Bool)

(assert (=> bs!1860952 m!7668244))

(assert (=> b!6981576 d!2174181))

(declare-fun d!2174183 () Bool)

(assert (=> d!2174183 (= (tail!13158 (exprs!6674 lt!2482088)) (t!380822 (exprs!6674 lt!2482088)))))

(assert (=> b!6981576 d!2174183))

(declare-fun d!2174185 () Bool)

(declare-fun e!4196087 () Bool)

(assert (=> d!2174185 e!4196087))

(declare-fun res!2847010 () Bool)

(assert (=> d!2174185 (=> (not res!2847010) (not e!4196087))))

(declare-fun lt!2482171 () Context!12348)

(declare-fun dynLambda!26774 (Int Context!12348) Bool)

(assert (=> d!2174185 (= res!2847010 (dynLambda!26774 lambda!399340 lt!2482171))))

(declare-fun getWitness!1054 (List!67081 Int) Context!12348)

(assert (=> d!2174185 (= lt!2482171 (getWitness!1054 (toList!10538 lt!2482098) lambda!399340))))

(declare-fun exists!2943 ((Set Context!12348) Int) Bool)

(assert (=> d!2174185 (exists!2943 lt!2482098 lambda!399340)))

(assert (=> d!2174185 (= (getWitness!1052 lt!2482098 lambda!399340) lt!2482171)))

(declare-fun b!6981664 () Bool)

(assert (=> b!6981664 (= e!4196087 (set.member lt!2482171 lt!2482098))))

(assert (= (and d!2174185 res!2847010) b!6981664))

(declare-fun b_lambda!261713 () Bool)

(assert (=> (not b_lambda!261713) (not d!2174185)))

(declare-fun m!7668252 () Bool)

(assert (=> d!2174185 m!7668252))

(assert (=> d!2174185 m!7668126))

(assert (=> d!2174185 m!7668126))

(declare-fun m!7668254 () Bool)

(assert (=> d!2174185 m!7668254))

(declare-fun m!7668256 () Bool)

(assert (=> d!2174185 m!7668256))

(declare-fun m!7668258 () Bool)

(assert (=> b!6981664 m!7668258))

(assert (=> b!6981583 d!2174185))

(declare-fun d!2174189 () Bool)

(declare-fun e!4196094 () Bool)

(assert (=> d!2174189 e!4196094))

(declare-fun res!2847017 () Bool)

(assert (=> d!2174189 (=> (not res!2847017) (not e!4196094))))

(declare-fun lt!2482174 () List!67081)

(declare-fun noDuplicate!2498 (List!67081) Bool)

(assert (=> d!2174189 (= res!2847017 (noDuplicate!2498 lt!2482174))))

(declare-fun choose!52069 ((Set Context!12348)) List!67081)

(assert (=> d!2174189 (= lt!2482174 (choose!52069 lt!2482098))))

(assert (=> d!2174189 (= (toList!10538 lt!2482098) lt!2482174)))

(declare-fun b!6981671 () Bool)

(declare-fun content!13208 (List!67081) (Set Context!12348))

(assert (=> b!6981671 (= e!4196094 (= (content!13208 lt!2482174) lt!2482098))))

(assert (= (and d!2174189 res!2847017) b!6981671))

(declare-fun m!7668260 () Bool)

(assert (=> d!2174189 m!7668260))

(declare-fun m!7668262 () Bool)

(assert (=> d!2174189 m!7668262))

(declare-fun m!7668264 () Bool)

(assert (=> b!6981671 m!7668264))

(assert (=> b!6981583 d!2174189))

(declare-fun d!2174191 () Bool)

(declare-fun c!1294281 () Bool)

(declare-fun isEmpty!39084 (List!67080) Bool)

(assert (=> d!2174191 (= c!1294281 (isEmpty!39084 s!7408))))

(declare-fun e!4196099 () Bool)

(assert (=> d!2174191 (= (matchZipper!2718 lt!2482099 s!7408) e!4196099)))

(declare-fun b!6981678 () Bool)

(declare-fun nullableZipper!2407 ((Set Context!12348)) Bool)

(assert (=> b!6981678 (= e!4196099 (nullableZipper!2407 lt!2482099))))

(declare-fun b!6981679 () Bool)

(declare-fun head!14079 (List!67080) C!34626)

(declare-fun tail!13160 (List!67080) List!67080)

(assert (=> b!6981679 (= e!4196099 (matchZipper!2718 (derivationStepZipper!2658 lt!2482099 (head!14079 s!7408)) (tail!13160 s!7408)))))

(assert (= (and d!2174191 c!1294281) b!6981678))

(assert (= (and d!2174191 (not c!1294281)) b!6981679))

(declare-fun m!7668272 () Bool)

(assert (=> d!2174191 m!7668272))

(declare-fun m!7668274 () Bool)

(assert (=> b!6981678 m!7668274))

(declare-fun m!7668276 () Bool)

(assert (=> b!6981679 m!7668276))

(assert (=> b!6981679 m!7668276))

(declare-fun m!7668278 () Bool)

(assert (=> b!6981679 m!7668278))

(declare-fun m!7668280 () Bool)

(assert (=> b!6981679 m!7668280))

(assert (=> b!6981679 m!7668278))

(assert (=> b!6981679 m!7668280))

(declare-fun m!7668282 () Bool)

(assert (=> b!6981679 m!7668282))

(assert (=> b!6981583 d!2174191))

(declare-fun bs!1860955 () Bool)

(declare-fun d!2174199 () Bool)

(assert (= bs!1860955 (and d!2174199 b!6981583)))

(declare-fun lambda!399380 () Int)

(assert (=> bs!1860955 (not (= lambda!399380 lambda!399340))))

(assert (=> d!2174199 true))

(declare-fun order!27853 () Int)

(declare-fun dynLambda!26775 (Int Int) Int)

(assert (=> d!2174199 (< (dynLambda!26775 order!27853 lambda!399340) (dynLambda!26775 order!27853 lambda!399380))))

(declare-fun forall!16072 (List!67081 Int) Bool)

(assert (=> d!2174199 (= (exists!2941 lt!2482089 lambda!399340) (not (forall!16072 lt!2482089 lambda!399380)))))

(declare-fun bs!1860956 () Bool)

(assert (= bs!1860956 d!2174199))

(declare-fun m!7668284 () Bool)

(assert (=> bs!1860956 m!7668284))

(assert (=> b!6981583 d!2174199))

(declare-fun bs!1860959 () Bool)

(declare-fun d!2174201 () Bool)

(assert (= bs!1860959 (and d!2174201 b!6981583)))

(declare-fun lambda!399386 () Int)

(assert (=> bs!1860959 (= lambda!399386 lambda!399340)))

(declare-fun bs!1860960 () Bool)

(assert (= bs!1860960 (and d!2174201 d!2174199)))

(assert (=> bs!1860960 (not (= lambda!399386 lambda!399380))))

(assert (=> d!2174201 true))

(assert (=> d!2174201 (exists!2941 lt!2482089 lambda!399386)))

(declare-fun lt!2482177 () Unit!161008)

(declare-fun choose!52070 (List!67081 List!67080) Unit!161008)

(assert (=> d!2174201 (= lt!2482177 (choose!52070 lt!2482089 s!7408))))

(assert (=> d!2174201 (matchZipper!2718 (content!13208 lt!2482089) s!7408)))

(assert (=> d!2174201 (= (lemmaZipperMatchesExistsMatchingContext!147 lt!2482089 s!7408) lt!2482177)))

(declare-fun bs!1860961 () Bool)

(assert (= bs!1860961 d!2174201))

(declare-fun m!7668288 () Bool)

(assert (=> bs!1860961 m!7668288))

(declare-fun m!7668290 () Bool)

(assert (=> bs!1860961 m!7668290))

(declare-fun m!7668292 () Bool)

(assert (=> bs!1860961 m!7668292))

(assert (=> bs!1860961 m!7668292))

(declare-fun m!7668294 () Bool)

(assert (=> bs!1860961 m!7668294))

(assert (=> b!6981583 d!2174201))

(assert (=> b!6981584 d!2174167))

(declare-fun d!2174205 () Bool)

(declare-fun res!2847026 () Bool)

(declare-fun e!4196110 () Bool)

(assert (=> d!2174205 (=> res!2847026 e!4196110)))

(assert (=> d!2174205 (= res!2847026 (is-Nil!66955 lt!2482095))))

(assert (=> d!2174205 (= (forall!16070 lt!2482095 lambda!399342) e!4196110)))

(declare-fun b!6981698 () Bool)

(declare-fun e!4196111 () Bool)

(assert (=> b!6981698 (= e!4196110 e!4196111)))

(declare-fun res!2847027 () Bool)

(assert (=> b!6981698 (=> (not res!2847027) (not e!4196111))))

(declare-fun dynLambda!26776 (Int Regex!17178) Bool)

(assert (=> b!6981698 (= res!2847027 (dynLambda!26776 lambda!399342 (h!73403 lt!2482095)))))

(declare-fun b!6981699 () Bool)

(assert (=> b!6981699 (= e!4196111 (forall!16070 (t!380822 lt!2482095) lambda!399342))))

(assert (= (and d!2174205 (not res!2847026)) b!6981698))

(assert (= (and b!6981698 res!2847027) b!6981699))

(declare-fun b_lambda!261717 () Bool)

(assert (=> (not b_lambda!261717) (not b!6981698)))

(declare-fun m!7668296 () Bool)

(assert (=> b!6981698 m!7668296))

(declare-fun m!7668298 () Bool)

(assert (=> b!6981699 m!7668298))

(assert (=> b!6981581 d!2174205))

(declare-fun d!2174207 () Bool)

(assert (=> d!2174207 (forall!16070 (++!15123 lt!2482095 (exprs!6674 ct2!306)) lambda!399342)))

(declare-fun lt!2482178 () Unit!161008)

(assert (=> d!2174207 (= lt!2482178 (choose!52066 lt!2482095 (exprs!6674 ct2!306) lambda!399342))))

(assert (=> d!2174207 (forall!16070 lt!2482095 lambda!399342)))

(assert (=> d!2174207 (= (lemmaConcatPreservesForall!514 lt!2482095 (exprs!6674 ct2!306) lambda!399342) lt!2482178)))

(declare-fun bs!1860962 () Bool)

(assert (= bs!1860962 d!2174207))

(assert (=> bs!1860962 m!7668144))

(assert (=> bs!1860962 m!7668144))

(declare-fun m!7668300 () Bool)

(assert (=> bs!1860962 m!7668300))

(declare-fun m!7668302 () Bool)

(assert (=> bs!1860962 m!7668302))

(assert (=> bs!1860962 m!7668154))

(assert (=> b!6981581 d!2174207))

(declare-fun b!6981714 () Bool)

(declare-fun e!4196119 () List!67079)

(assert (=> b!6981714 (= e!4196119 (Cons!66955 (h!73403 (exprs!6674 lt!2482088)) (++!15123 (t!380822 (exprs!6674 lt!2482088)) (exprs!6674 ct2!306))))))

(declare-fun e!4196120 () Bool)

(declare-fun b!6981716 () Bool)

(declare-fun lt!2482181 () List!67079)

(assert (=> b!6981716 (= e!4196120 (or (not (= (exprs!6674 ct2!306) Nil!66955)) (= lt!2482181 (exprs!6674 lt!2482088))))))

(declare-fun b!6981715 () Bool)

(declare-fun res!2847034 () Bool)

(assert (=> b!6981715 (=> (not res!2847034) (not e!4196120))))

(declare-fun size!40878 (List!67079) Int)

(assert (=> b!6981715 (= res!2847034 (= (size!40878 lt!2482181) (+ (size!40878 (exprs!6674 lt!2482088)) (size!40878 (exprs!6674 ct2!306)))))))

(declare-fun b!6981713 () Bool)

(assert (=> b!6981713 (= e!4196119 (exprs!6674 ct2!306))))

(declare-fun d!2174209 () Bool)

(assert (=> d!2174209 e!4196120))

(declare-fun res!2847033 () Bool)

(assert (=> d!2174209 (=> (not res!2847033) (not e!4196120))))

(declare-fun content!13209 (List!67079) (Set Regex!17178))

(assert (=> d!2174209 (= res!2847033 (= (content!13209 lt!2482181) (set.union (content!13209 (exprs!6674 lt!2482088)) (content!13209 (exprs!6674 ct2!306)))))))

(assert (=> d!2174209 (= lt!2482181 e!4196119)))

(declare-fun c!1294294 () Bool)

(assert (=> d!2174209 (= c!1294294 (is-Nil!66955 (exprs!6674 lt!2482088)))))

(assert (=> d!2174209 (= (++!15123 (exprs!6674 lt!2482088) (exprs!6674 ct2!306)) lt!2482181)))

(assert (= (and d!2174209 c!1294294) b!6981713))

(assert (= (and d!2174209 (not c!1294294)) b!6981714))

(assert (= (and d!2174209 res!2847033) b!6981715))

(assert (= (and b!6981715 res!2847034) b!6981716))

(declare-fun m!7668306 () Bool)

(assert (=> b!6981714 m!7668306))

(declare-fun m!7668308 () Bool)

(assert (=> b!6981715 m!7668308))

(declare-fun m!7668310 () Bool)

(assert (=> b!6981715 m!7668310))

(declare-fun m!7668312 () Bool)

(assert (=> b!6981715 m!7668312))

(declare-fun m!7668316 () Bool)

(assert (=> d!2174209 m!7668316))

(declare-fun m!7668318 () Bool)

(assert (=> d!2174209 m!7668318))

(declare-fun m!7668320 () Bool)

(assert (=> d!2174209 m!7668320))

(assert (=> b!6981580 d!2174209))

(assert (=> b!6981580 d!2174167))

(declare-fun d!2174211 () Bool)

(declare-fun e!4196123 () Bool)

(assert (=> d!2174211 e!4196123))

(declare-fun res!2847037 () Bool)

(assert (=> d!2174211 (=> (not res!2847037) (not e!4196123))))

(declare-fun lt!2482184 () Context!12348)

(declare-fun dynLambda!26777 (Int Context!12348) Context!12348)

(assert (=> d!2174211 (= res!2847037 (= lt!2482086 (dynLambda!26777 lambda!399341 lt!2482184)))))

(declare-fun choose!52071 ((Set Context!12348) Int Context!12348) Context!12348)

(assert (=> d!2174211 (= lt!2482184 (choose!52071 z1!570 lambda!399341 lt!2482086))))

(declare-fun map!15433 ((Set Context!12348) Int) (Set Context!12348))

(assert (=> d!2174211 (set.member lt!2482086 (map!15433 z1!570 lambda!399341))))

(assert (=> d!2174211 (= (mapPost2!33 z1!570 lambda!399341 lt!2482086) lt!2482184)))

(declare-fun b!6981720 () Bool)

(assert (=> b!6981720 (= e!4196123 (set.member lt!2482184 z1!570))))

(assert (= (and d!2174211 res!2847037) b!6981720))

(declare-fun b_lambda!261719 () Bool)

(assert (=> (not b_lambda!261719) (not d!2174211)))

(declare-fun m!7668324 () Bool)

(assert (=> d!2174211 m!7668324))

(declare-fun m!7668326 () Bool)

(assert (=> d!2174211 m!7668326))

(declare-fun m!7668328 () Bool)

(assert (=> d!2174211 m!7668328))

(declare-fun m!7668330 () Bool)

(assert (=> d!2174211 m!7668330))

(declare-fun m!7668332 () Bool)

(assert (=> b!6981720 m!7668332))

(assert (=> b!6981580 d!2174211))

(declare-fun d!2174215 () Bool)

(declare-fun res!2847038 () Bool)

(declare-fun e!4196124 () Bool)

(assert (=> d!2174215 (=> res!2847038 e!4196124)))

(assert (=> d!2174215 (= res!2847038 (is-Nil!66955 (exprs!6674 ct2!306)))))

(assert (=> d!2174215 (= (forall!16070 (exprs!6674 ct2!306) lambda!399342) e!4196124)))

(declare-fun b!6981721 () Bool)

(declare-fun e!4196125 () Bool)

(assert (=> b!6981721 (= e!4196124 e!4196125)))

(declare-fun res!2847039 () Bool)

(assert (=> b!6981721 (=> (not res!2847039) (not e!4196125))))

(assert (=> b!6981721 (= res!2847039 (dynLambda!26776 lambda!399342 (h!73403 (exprs!6674 ct2!306))))))

(declare-fun b!6981722 () Bool)

(assert (=> b!6981722 (= e!4196125 (forall!16070 (t!380822 (exprs!6674 ct2!306)) lambda!399342))))

(assert (= (and d!2174215 (not res!2847038)) b!6981721))

(assert (= (and b!6981721 res!2847039) b!6981722))

(declare-fun b_lambda!261721 () Bool)

(assert (=> (not b_lambda!261721) (not b!6981721)))

(declare-fun m!7668334 () Bool)

(assert (=> b!6981721 m!7668334))

(declare-fun m!7668336 () Bool)

(assert (=> b!6981722 m!7668336))

(assert (=> b!6981582 d!2174215))

(declare-fun b!6981724 () Bool)

(declare-fun e!4196126 () List!67079)

(assert (=> b!6981724 (= e!4196126 (Cons!66955 (h!73403 lt!2482095) (++!15123 (t!380822 lt!2482095) (exprs!6674 ct2!306))))))

(declare-fun lt!2482187 () List!67079)

(declare-fun b!6981726 () Bool)

(declare-fun e!4196127 () Bool)

(assert (=> b!6981726 (= e!4196127 (or (not (= (exprs!6674 ct2!306) Nil!66955)) (= lt!2482187 lt!2482095)))))

(declare-fun b!6981725 () Bool)

(declare-fun res!2847041 () Bool)

(assert (=> b!6981725 (=> (not res!2847041) (not e!4196127))))

(assert (=> b!6981725 (= res!2847041 (= (size!40878 lt!2482187) (+ (size!40878 lt!2482095) (size!40878 (exprs!6674 ct2!306)))))))

(declare-fun b!6981723 () Bool)

(assert (=> b!6981723 (= e!4196126 (exprs!6674 ct2!306))))

(declare-fun d!2174217 () Bool)

(assert (=> d!2174217 e!4196127))

(declare-fun res!2847040 () Bool)

(assert (=> d!2174217 (=> (not res!2847040) (not e!4196127))))

(assert (=> d!2174217 (= res!2847040 (= (content!13209 lt!2482187) (set.union (content!13209 lt!2482095) (content!13209 (exprs!6674 ct2!306)))))))

(assert (=> d!2174217 (= lt!2482187 e!4196126)))

(declare-fun c!1294295 () Bool)

(assert (=> d!2174217 (= c!1294295 (is-Nil!66955 lt!2482095))))

(assert (=> d!2174217 (= (++!15123 lt!2482095 (exprs!6674 ct2!306)) lt!2482187)))

(assert (= (and d!2174217 c!1294295) b!6981723))

(assert (= (and d!2174217 (not c!1294295)) b!6981724))

(assert (= (and d!2174217 res!2847040) b!6981725))

(assert (= (and b!6981725 res!2847041) b!6981726))

(declare-fun m!7668338 () Bool)

(assert (=> b!6981724 m!7668338))

(declare-fun m!7668340 () Bool)

(assert (=> b!6981725 m!7668340))

(declare-fun m!7668342 () Bool)

(assert (=> b!6981725 m!7668342))

(assert (=> b!6981725 m!7668312))

(declare-fun m!7668344 () Bool)

(assert (=> d!2174217 m!7668344))

(declare-fun m!7668346 () Bool)

(assert (=> d!2174217 m!7668346))

(assert (=> d!2174217 m!7668320))

(assert (=> b!6981587 d!2174217))

(assert (=> b!6981587 d!2174207))

(declare-fun b!6981727 () Bool)

(declare-fun e!4196129 () Bool)

(assert (=> b!6981727 (= e!4196129 (nullable!6938 (h!73403 (exprs!6674 lt!2482100))))))

(declare-fun b!6981728 () Bool)

(declare-fun e!4196128 () (Set Context!12348))

(declare-fun call!633557 () (Set Context!12348))

(assert (=> b!6981728 (= e!4196128 (set.union call!633557 (derivationStepZipperUp!1828 (Context!12349 (t!380822 (exprs!6674 lt!2482100))) (h!73404 s!7408))))))

(declare-fun b!6981730 () Bool)

(declare-fun e!4196130 () (Set Context!12348))

(assert (=> b!6981730 (= e!4196130 (as set.empty (Set Context!12348)))))

(declare-fun bm!633552 () Bool)

(assert (=> bm!633552 (= call!633557 (derivationStepZipperDown!1896 (h!73403 (exprs!6674 lt!2482100)) (Context!12349 (t!380822 (exprs!6674 lt!2482100))) (h!73404 s!7408)))))

(declare-fun b!6981731 () Bool)

(assert (=> b!6981731 (= e!4196128 e!4196130)))

(declare-fun c!1294296 () Bool)

(assert (=> b!6981731 (= c!1294296 (is-Cons!66955 (exprs!6674 lt!2482100)))))

(declare-fun b!6981729 () Bool)

(assert (=> b!6981729 (= e!4196130 call!633557)))

(declare-fun d!2174219 () Bool)

(declare-fun c!1294297 () Bool)

(assert (=> d!2174219 (= c!1294297 e!4196129)))

(declare-fun res!2847042 () Bool)

(assert (=> d!2174219 (=> (not res!2847042) (not e!4196129))))

(assert (=> d!2174219 (= res!2847042 (is-Cons!66955 (exprs!6674 lt!2482100)))))

(assert (=> d!2174219 (= (derivationStepZipperUp!1828 lt!2482100 (h!73404 s!7408)) e!4196128)))

(assert (= (and d!2174219 res!2847042) b!6981727))

(assert (= (and d!2174219 c!1294297) b!6981728))

(assert (= (and d!2174219 (not c!1294297)) b!6981731))

(assert (= (and b!6981731 c!1294296) b!6981729))

(assert (= (and b!6981731 (not c!1294296)) b!6981730))

(assert (= (or b!6981728 b!6981729) bm!633552))

(declare-fun m!7668348 () Bool)

(assert (=> b!6981727 m!7668348))

(declare-fun m!7668350 () Bool)

(assert (=> b!6981728 m!7668350))

(declare-fun m!7668352 () Bool)

(assert (=> bm!633552 m!7668352))

(assert (=> b!6981587 d!2174219))

(declare-fun b!6981762 () Bool)

(declare-fun e!4196151 () (Set Context!12348))

(declare-fun e!4196149 () (Set Context!12348))

(assert (=> b!6981762 (= e!4196151 e!4196149)))

(declare-fun c!1294310 () Bool)

(assert (=> b!6981762 (= c!1294310 (is-Concat!26023 (h!73403 (exprs!6674 lt!2482088))))))

(declare-fun c!1294313 () Bool)

(declare-fun call!633572 () (Set Context!12348))

(declare-fun bm!633565 () Bool)

(declare-fun call!633570 () List!67079)

(assert (=> bm!633565 (= call!633572 (derivationStepZipperDown!1896 (ite c!1294313 (regTwo!34869 (h!73403 (exprs!6674 lt!2482088))) (regOne!34868 (h!73403 (exprs!6674 lt!2482088)))) (ite c!1294313 lt!2482100 (Context!12349 call!633570)) (h!73404 s!7408)))))

(declare-fun bm!633566 () Bool)

(declare-fun c!1294312 () Bool)

(declare-fun $colon$colon!2458 (List!67079 Regex!17178) List!67079)

(assert (=> bm!633566 (= call!633570 ($colon$colon!2458 (exprs!6674 lt!2482100) (ite (or c!1294312 c!1294310) (regTwo!34868 (h!73403 (exprs!6674 lt!2482088))) (h!73403 (exprs!6674 lt!2482088)))))))

(declare-fun bm!633567 () Bool)

(declare-fun call!633571 () (Set Context!12348))

(declare-fun call!633574 () (Set Context!12348))

(assert (=> bm!633567 (= call!633571 call!633574)))

(declare-fun b!6981763 () Bool)

(assert (=> b!6981763 (= e!4196151 (set.union call!633572 call!633571))))

(declare-fun b!6981764 () Bool)

(declare-fun e!4196148 () (Set Context!12348))

(declare-fun e!4196147 () (Set Context!12348))

(assert (=> b!6981764 (= e!4196148 e!4196147)))

(assert (=> b!6981764 (= c!1294313 (is-Union!17178 (h!73403 (exprs!6674 lt!2482088))))))

(declare-fun b!6981765 () Bool)

(declare-fun e!4196152 () (Set Context!12348))

(declare-fun call!633575 () (Set Context!12348))

(assert (=> b!6981765 (= e!4196152 call!633575)))

(declare-fun bm!633568 () Bool)

(declare-fun call!633573 () List!67079)

(assert (=> bm!633568 (= call!633573 call!633570)))

(declare-fun d!2174221 () Bool)

(declare-fun c!1294311 () Bool)

(assert (=> d!2174221 (= c!1294311 (and (is-ElementMatch!17178 (h!73403 (exprs!6674 lt!2482088))) (= (c!1294261 (h!73403 (exprs!6674 lt!2482088))) (h!73404 s!7408))))))

(assert (=> d!2174221 (= (derivationStepZipperDown!1896 (h!73403 (exprs!6674 lt!2482088)) lt!2482100 (h!73404 s!7408)) e!4196148)))

(declare-fun b!6981766 () Bool)

(assert (=> b!6981766 (= e!4196147 (set.union call!633574 call!633572))))

(declare-fun b!6981767 () Bool)

(declare-fun e!4196150 () Bool)

(assert (=> b!6981767 (= e!4196150 (nullable!6938 (regOne!34868 (h!73403 (exprs!6674 lt!2482088)))))))

(declare-fun b!6981768 () Bool)

(assert (=> b!6981768 (= e!4196149 call!633575)))

(declare-fun b!6981769 () Bool)

(assert (=> b!6981769 (= e!4196148 (set.insert lt!2482100 (as set.empty (Set Context!12348))))))

(declare-fun b!6981770 () Bool)

(assert (=> b!6981770 (= e!4196152 (as set.empty (Set Context!12348)))))

(declare-fun bm!633569 () Bool)

(assert (=> bm!633569 (= call!633574 (derivationStepZipperDown!1896 (ite c!1294313 (regOne!34869 (h!73403 (exprs!6674 lt!2482088))) (ite c!1294312 (regTwo!34868 (h!73403 (exprs!6674 lt!2482088))) (ite c!1294310 (regOne!34868 (h!73403 (exprs!6674 lt!2482088))) (reg!17507 (h!73403 (exprs!6674 lt!2482088)))))) (ite (or c!1294313 c!1294312) lt!2482100 (Context!12349 call!633573)) (h!73404 s!7408)))))

(declare-fun b!6981771 () Bool)

(declare-fun c!1294314 () Bool)

(assert (=> b!6981771 (= c!1294314 (is-Star!17178 (h!73403 (exprs!6674 lt!2482088))))))

(assert (=> b!6981771 (= e!4196149 e!4196152)))

(declare-fun bm!633570 () Bool)

(assert (=> bm!633570 (= call!633575 call!633571)))

(declare-fun b!6981772 () Bool)

(assert (=> b!6981772 (= c!1294312 e!4196150)))

(declare-fun res!2847049 () Bool)

(assert (=> b!6981772 (=> (not res!2847049) (not e!4196150))))

(assert (=> b!6981772 (= res!2847049 (is-Concat!26023 (h!73403 (exprs!6674 lt!2482088))))))

(assert (=> b!6981772 (= e!4196147 e!4196151)))

(assert (= (and d!2174221 c!1294311) b!6981769))

(assert (= (and d!2174221 (not c!1294311)) b!6981764))

(assert (= (and b!6981764 c!1294313) b!6981766))

(assert (= (and b!6981764 (not c!1294313)) b!6981772))

(assert (= (and b!6981772 res!2847049) b!6981767))

(assert (= (and b!6981772 c!1294312) b!6981763))

(assert (= (and b!6981772 (not c!1294312)) b!6981762))

(assert (= (and b!6981762 c!1294310) b!6981768))

(assert (= (and b!6981762 (not c!1294310)) b!6981771))

(assert (= (and b!6981771 c!1294314) b!6981765))

(assert (= (and b!6981771 (not c!1294314)) b!6981770))

(assert (= (or b!6981768 b!6981765) bm!633568))

(assert (= (or b!6981768 b!6981765) bm!633570))

(assert (= (or b!6981763 bm!633570) bm!633567))

(assert (= (or b!6981763 bm!633568) bm!633566))

(assert (= (or b!6981766 bm!633567) bm!633569))

(assert (= (or b!6981766 b!6981763) bm!633565))

(declare-fun m!7668360 () Bool)

(assert (=> b!6981767 m!7668360))

(declare-fun m!7668366 () Bool)

(assert (=> bm!633569 m!7668366))

(declare-fun m!7668372 () Bool)

(assert (=> bm!633565 m!7668372))

(declare-fun m!7668376 () Bool)

(assert (=> bm!633566 m!7668376))

(declare-fun m!7668380 () Bool)

(assert (=> b!6981769 m!7668380))

(assert (=> b!6981587 d!2174221))

(declare-fun d!2174227 () Bool)

(declare-fun c!1294316 () Bool)

(assert (=> d!2174227 (= c!1294316 (isEmpty!39084 s!7408))))

(declare-fun e!4196155 () Bool)

(assert (=> d!2174227 (= (matchZipper!2718 lt!2482098 s!7408) e!4196155)))

(declare-fun b!6981777 () Bool)

(assert (=> b!6981777 (= e!4196155 (nullableZipper!2407 lt!2482098))))

(declare-fun b!6981778 () Bool)

(assert (=> b!6981778 (= e!4196155 (matchZipper!2718 (derivationStepZipper!2658 lt!2482098 (head!14079 s!7408)) (tail!13160 s!7408)))))

(assert (= (and d!2174227 c!1294316) b!6981777))

(assert (= (and d!2174227 (not c!1294316)) b!6981778))

(assert (=> d!2174227 m!7668272))

(declare-fun m!7668384 () Bool)

(assert (=> b!6981777 m!7668384))

(assert (=> b!6981778 m!7668276))

(assert (=> b!6981778 m!7668276))

(declare-fun m!7668386 () Bool)

(assert (=> b!6981778 m!7668386))

(assert (=> b!6981778 m!7668280))

(assert (=> b!6981778 m!7668386))

(assert (=> b!6981778 m!7668280))

(declare-fun m!7668388 () Bool)

(assert (=> b!6981778 m!7668388))

(assert (=> start!670010 d!2174227))

(declare-fun bs!1860966 () Bool)

(declare-fun d!2174231 () Bool)

(assert (= bs!1860966 (and d!2174231 b!6981580)))

(declare-fun lambda!399391 () Int)

(assert (=> bs!1860966 (= lambda!399391 lambda!399341)))

(assert (=> d!2174231 true))

(assert (=> d!2174231 (= (appendTo!299 z1!570 ct2!306) (map!15433 z1!570 lambda!399391))))

(declare-fun bs!1860967 () Bool)

(assert (= bs!1860967 d!2174231))

(declare-fun m!7668394 () Bool)

(assert (=> bs!1860967 m!7668394))

(assert (=> start!670010 d!2174231))

(declare-fun bs!1860968 () Bool)

(declare-fun d!2174235 () Bool)

(assert (= bs!1860968 (and d!2174235 b!6981580)))

(declare-fun lambda!399392 () Int)

(assert (=> bs!1860968 (= lambda!399392 lambda!399342)))

(declare-fun bs!1860969 () Bool)

(assert (= bs!1860969 (and d!2174235 d!2174179)))

(assert (=> bs!1860969 (= lambda!399392 lambda!399377)))

(assert (=> d!2174235 (= (inv!85805 ct2!306) (forall!16070 (exprs!6674 ct2!306) lambda!399392))))

(declare-fun bs!1860970 () Bool)

(assert (= bs!1860970 d!2174235))

(declare-fun m!7668396 () Bool)

(assert (=> bs!1860970 m!7668396))

(assert (=> start!670010 d!2174235))

(declare-fun condSetEmpty!47564 () Bool)

(assert (=> setNonEmpty!47558 (= condSetEmpty!47564 (= setRest!47558 (as set.empty (Set Context!12348))))))

(declare-fun setRes!47564 () Bool)

(assert (=> setNonEmpty!47558 (= tp!1928377 setRes!47564)))

(declare-fun setIsEmpty!47564 () Bool)

(assert (=> setIsEmpty!47564 setRes!47564))

(declare-fun tp!1928395 () Bool)

(declare-fun setNonEmpty!47564 () Bool)

(declare-fun setElem!47564 () Context!12348)

(declare-fun e!4196158 () Bool)

(assert (=> setNonEmpty!47564 (= setRes!47564 (and tp!1928395 (inv!85805 setElem!47564) e!4196158))))

(declare-fun setRest!47564 () (Set Context!12348))

(assert (=> setNonEmpty!47564 (= setRest!47558 (set.union (set.insert setElem!47564 (as set.empty (Set Context!12348))) setRest!47564))))

(declare-fun b!6981783 () Bool)

(declare-fun tp!1928396 () Bool)

(assert (=> b!6981783 (= e!4196158 tp!1928396)))

(assert (= (and setNonEmpty!47558 condSetEmpty!47564) setIsEmpty!47564))

(assert (= (and setNonEmpty!47558 (not condSetEmpty!47564)) setNonEmpty!47564))

(assert (= setNonEmpty!47564 b!6981783))

(declare-fun m!7668398 () Bool)

(assert (=> setNonEmpty!47564 m!7668398))

(declare-fun b!6981788 () Bool)

(declare-fun e!4196161 () Bool)

(declare-fun tp!1928401 () Bool)

(declare-fun tp!1928402 () Bool)

(assert (=> b!6981788 (= e!4196161 (and tp!1928401 tp!1928402))))

(assert (=> b!6981578 (= tp!1928376 e!4196161)))

(assert (= (and b!6981578 (is-Cons!66955 (exprs!6674 ct2!306))) b!6981788))

(declare-fun b!6981793 () Bool)

(declare-fun e!4196164 () Bool)

(declare-fun tp!1928405 () Bool)

(assert (=> b!6981793 (= e!4196164 (and tp_is_empty!43581 tp!1928405))))

(assert (=> b!6981573 (= tp!1928378 e!4196164)))

(assert (= (and b!6981573 (is-Cons!66956 (t!380823 s!7408))) b!6981793))

(declare-fun b!6981794 () Bool)

(declare-fun e!4196165 () Bool)

(declare-fun tp!1928406 () Bool)

(declare-fun tp!1928407 () Bool)

(assert (=> b!6981794 (= e!4196165 (and tp!1928406 tp!1928407))))

(assert (=> b!6981585 (= tp!1928375 e!4196165)))

(assert (= (and b!6981585 (is-Cons!66955 (exprs!6674 setElem!47558))) b!6981794))

(declare-fun b_lambda!261725 () Bool)

(assert (= b_lambda!261717 (or b!6981580 b_lambda!261725)))

(declare-fun bs!1860971 () Bool)

(declare-fun d!2174237 () Bool)

(assert (= bs!1860971 (and d!2174237 b!6981580)))

(declare-fun validRegex!8839 (Regex!17178) Bool)

(assert (=> bs!1860971 (= (dynLambda!26776 lambda!399342 (h!73403 lt!2482095)) (validRegex!8839 (h!73403 lt!2482095)))))

(declare-fun m!7668400 () Bool)

(assert (=> bs!1860971 m!7668400))

(assert (=> b!6981698 d!2174237))

(declare-fun b_lambda!261727 () Bool)

(assert (= b_lambda!261719 (or b!6981580 b_lambda!261727)))

(declare-fun bs!1860972 () Bool)

(declare-fun d!2174239 () Bool)

(assert (= bs!1860972 (and d!2174239 b!6981580)))

(declare-fun lt!2482195 () Unit!161008)

(assert (=> bs!1860972 (= lt!2482195 (lemmaConcatPreservesForall!514 (exprs!6674 lt!2482184) (exprs!6674 ct2!306) lambda!399342))))

(assert (=> bs!1860972 (= (dynLambda!26777 lambda!399341 lt!2482184) (Context!12349 (++!15123 (exprs!6674 lt!2482184) (exprs!6674 ct2!306))))))

(declare-fun m!7668402 () Bool)

(assert (=> bs!1860972 m!7668402))

(declare-fun m!7668404 () Bool)

(assert (=> bs!1860972 m!7668404))

(assert (=> d!2174211 d!2174239))

(declare-fun b_lambda!261729 () Bool)

(assert (= b_lambda!261713 (or b!6981583 b_lambda!261729)))

(declare-fun bs!1860973 () Bool)

(declare-fun d!2174241 () Bool)

(assert (= bs!1860973 (and d!2174241 b!6981583)))

(assert (=> bs!1860973 (= (dynLambda!26774 lambda!399340 lt!2482171) (matchZipper!2718 (set.insert lt!2482171 (as set.empty (Set Context!12348))) s!7408))))

(declare-fun m!7668406 () Bool)

(assert (=> bs!1860973 m!7668406))

(assert (=> bs!1860973 m!7668406))

(declare-fun m!7668408 () Bool)

(assert (=> bs!1860973 m!7668408))

(assert (=> d!2174185 d!2174241))

(declare-fun b_lambda!261731 () Bool)

(assert (= b_lambda!261721 (or b!6981580 b_lambda!261731)))

(declare-fun bs!1860974 () Bool)

(declare-fun d!2174243 () Bool)

(assert (= bs!1860974 (and d!2174243 b!6981580)))

(assert (=> bs!1860974 (= (dynLambda!26776 lambda!399342 (h!73403 (exprs!6674 ct2!306))) (validRegex!8839 (h!73403 (exprs!6674 ct2!306))))))

(declare-fun m!7668410 () Bool)

(assert (=> bs!1860974 m!7668410))

(assert (=> b!6981721 d!2174243))

(declare-fun b_lambda!261733 () Bool)

(assert (= b_lambda!261711 (or b!6981575 b_lambda!261733)))

(declare-fun bs!1860975 () Bool)

(declare-fun d!2174245 () Bool)

(assert (= bs!1860975 (and d!2174245 b!6981575)))

(assert (=> bs!1860975 (= (dynLambda!26773 lambda!399343 lt!2482102) (derivationStepZipperUp!1828 lt!2482102 (h!73404 s!7408)))))

(assert (=> bs!1860975 m!7668106))

(assert (=> d!2174169 d!2174245))

(push 1)

(assert (not b!6981657))

(assert (not d!2174235))

(assert (not bs!1860973))

(assert (not bs!1860972))

(assert (not b!6981678))

(assert (not b!6981777))

(assert (not d!2174207))

(assert (not d!2174211))

(assert (not b!6981715))

(assert (not d!2174185))

(assert (not b_lambda!261731))

(assert (not bm!633569))

(assert (not b!6981658))

(assert (not b!6981679))

(assert (not b_lambda!261727))

(assert (not b!6981699))

(assert (not d!2174169))

(assert (not b!6981725))

(assert (not d!2174191))

(assert (not b_lambda!261725))

(assert (not d!2174209))

(assert (not d!2174171))

(assert (not bm!633565))

(assert (not b!6981671))

(assert (not d!2174231))

(assert (not d!2174199))

(assert (not b!6981778))

(assert (not d!2174227))

(assert (not b!6981767))

(assert (not d!2174165))

(assert (not b!6981794))

(assert (not b!6981724))

(assert (not d!2174167))

(assert (not b!6981793))

(assert (not b!6981788))

(assert (not b_lambda!261733))

(assert (not b_lambda!261729))

(assert (not b!6981783))

(assert (not b!6981722))

(assert (not bm!633552))

(assert (not b!6981727))

(assert (not d!2174217))

(assert tp_is_empty!43581)

(assert (not bs!1860975))

(assert (not bm!633548))

(assert (not bs!1860974))

(assert (not b!6981728))

(assert (not b!6981714))

(assert (not d!2174181))

(assert (not d!2174179))

(assert (not bs!1860971))

(assert (not setNonEmpty!47564))

(assert (not d!2174201))

(assert (not d!2174189))

(assert (not bm!633566))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

