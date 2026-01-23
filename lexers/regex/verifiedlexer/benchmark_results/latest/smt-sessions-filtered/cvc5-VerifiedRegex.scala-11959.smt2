; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!669382 () Bool)

(assert start!669382)

(declare-fun b!6979157 () Bool)

(assert (=> b!6979157 true))

(declare-fun b!6979159 () Bool)

(assert (=> b!6979159 true))

(declare-fun b!6979155 () Bool)

(assert (=> b!6979155 true))

(declare-fun e!4194525 () Bool)

(declare-fun e!4194532 () Bool)

(assert (=> b!6979155 (= e!4194525 e!4194532)))

(declare-fun res!2845922 () Bool)

(assert (=> b!6979155 (=> res!2845922 e!4194532)))

(declare-datatypes ((C!34598 0))(
  ( (C!34599 (val!27001 Int)) )
))
(declare-datatypes ((Regex!17164 0))(
  ( (ElementMatch!17164 (c!1293643 C!34598)) (Concat!26009 (regOne!34840 Regex!17164) (regTwo!34840 Regex!17164)) (EmptyExpr!17164) (Star!17164 (reg!17493 Regex!17164)) (EmptyLang!17164) (Union!17164 (regOne!34841 Regex!17164) (regTwo!34841 Regex!17164)) )
))
(declare-datatypes ((List!67037 0))(
  ( (Nil!66913) (Cons!66913 (h!73361 Regex!17164) (t!380780 List!67037)) )
))
(declare-datatypes ((Context!12320 0))(
  ( (Context!12321 (exprs!6660 List!67037)) )
))
(declare-fun lt!2480980 () (Set Context!12320))

(declare-datatypes ((List!67038 0))(
  ( (Nil!66914) (Cons!66914 (h!73362 C!34598) (t!380781 List!67038)) )
))
(declare-fun s!7408 () List!67038)

(declare-fun lt!2480989 () (Set Context!12320))

(declare-fun derivationStepZipper!2644 ((Set Context!12320) C!34598) (Set Context!12320))

(assert (=> b!6979155 (= res!2845922 (not (= (derivationStepZipper!2644 lt!2480989 (h!73362 s!7408)) lt!2480980)))))

(declare-fun lambda!398715 () Int)

(declare-fun lt!2480982 () Context!12320)

(declare-fun flatMap!2150 ((Set Context!12320) Int) (Set Context!12320))

(declare-fun derivationStepZipperUp!1814 (Context!12320 C!34598) (Set Context!12320))

(assert (=> b!6979155 (= (flatMap!2150 lt!2480989 lambda!398715) (derivationStepZipperUp!1814 lt!2480982 (h!73362 s!7408)))))

(declare-datatypes ((Unit!160978 0))(
  ( (Unit!160979) )
))
(declare-fun lt!2480981 () Unit!160978)

(declare-fun lemmaFlatMapOnSingletonSet!1665 ((Set Context!12320) Context!12320 Int) Unit!160978)

(assert (=> b!6979155 (= lt!2480981 (lemmaFlatMapOnSingletonSet!1665 lt!2480989 lt!2480982 lambda!398715))))

(assert (=> b!6979155 (= lt!2480980 (derivationStepZipperUp!1814 lt!2480982 (h!73362 s!7408)))))

(declare-fun lambda!398714 () Int)

(declare-fun lt!2480979 () Unit!160978)

(declare-fun lt!2480988 () Context!12320)

(declare-fun ct2!306 () Context!12320)

(declare-fun lemmaConcatPreservesForall!500 (List!67037 List!67037 Int) Unit!160978)

(assert (=> b!6979155 (= lt!2480979 (lemmaConcatPreservesForall!500 (exprs!6660 lt!2480988) (exprs!6660 ct2!306) lambda!398714))))

(declare-fun b!6979156 () Bool)

(declare-fun res!2845923 () Bool)

(assert (=> b!6979156 (=> res!2845923 e!4194532)))

(assert (=> b!6979156 (= res!2845923 (not (is-Cons!66913 (exprs!6660 lt!2480988))))))

(declare-fun setIsEmpty!47466 () Bool)

(declare-fun setRes!47466 () Bool)

(assert (=> setIsEmpty!47466 setRes!47466))

(declare-fun e!4194524 () Bool)

(declare-fun e!4194527 () Bool)

(assert (=> b!6979157 (= e!4194524 (not e!4194527))))

(declare-fun res!2845918 () Bool)

(assert (=> b!6979157 (=> res!2845918 e!4194527)))

(declare-fun lt!2480990 () (Set Context!12320))

(declare-fun matchZipper!2704 ((Set Context!12320) List!67038) Bool)

(assert (=> b!6979157 (= res!2845918 (not (matchZipper!2704 lt!2480990 s!7408)))))

(declare-fun lt!2480978 () Context!12320)

(assert (=> b!6979157 (= lt!2480990 (set.insert lt!2480978 (as set.empty (Set Context!12320))))))

(declare-fun lt!2480987 () (Set Context!12320))

(declare-fun lambda!398712 () Int)

(declare-fun getWitness!1025 ((Set Context!12320) Int) Context!12320)

(assert (=> b!6979157 (= lt!2480978 (getWitness!1025 lt!2480987 lambda!398712))))

(declare-datatypes ((List!67039 0))(
  ( (Nil!66915) (Cons!66915 (h!73363 Context!12320) (t!380782 List!67039)) )
))
(declare-fun lt!2480983 () List!67039)

(declare-fun exists!2914 (List!67039 Int) Bool)

(assert (=> b!6979157 (exists!2914 lt!2480983 lambda!398712)))

(declare-fun lt!2480986 () Unit!160978)

(declare-fun lemmaZipperMatchesExistsMatchingContext!133 (List!67039 List!67038) Unit!160978)

(assert (=> b!6979157 (= lt!2480986 (lemmaZipperMatchesExistsMatchingContext!133 lt!2480983 s!7408))))

(declare-fun toList!10524 ((Set Context!12320)) List!67039)

(assert (=> b!6979157 (= lt!2480983 (toList!10524 lt!2480987))))

(declare-fun b!6979158 () Bool)

(declare-fun e!4194529 () Bool)

(declare-fun tp!1927883 () Bool)

(assert (=> b!6979158 (= e!4194529 tp!1927883)))

(declare-fun e!4194528 () Bool)

(assert (=> b!6979159 (= e!4194527 e!4194528)))

(declare-fun res!2845921 () Bool)

(assert (=> b!6979159 (=> res!2845921 e!4194528)))

(declare-fun z1!570 () (Set Context!12320))

(assert (=> b!6979159 (= res!2845921 (or (not (= lt!2480982 lt!2480978)) (not (set.member lt!2480988 z1!570))))))

(declare-fun ++!15109 (List!67037 List!67037) List!67037)

(assert (=> b!6979159 (= lt!2480982 (Context!12321 (++!15109 (exprs!6660 lt!2480988) (exprs!6660 ct2!306))))))

(declare-fun lt!2480985 () Unit!160978)

(assert (=> b!6979159 (= lt!2480985 (lemmaConcatPreservesForall!500 (exprs!6660 lt!2480988) (exprs!6660 ct2!306) lambda!398714))))

(declare-fun lambda!398713 () Int)

(declare-fun mapPost2!19 ((Set Context!12320) Int Context!12320) Context!12320)

(assert (=> b!6979159 (= lt!2480988 (mapPost2!19 z1!570 lambda!398713 lt!2480978))))

(declare-fun e!4194531 () Bool)

(declare-fun tp!1927882 () Bool)

(declare-fun setNonEmpty!47466 () Bool)

(declare-fun setElem!47466 () Context!12320)

(declare-fun inv!85770 (Context!12320) Bool)

(assert (=> setNonEmpty!47466 (= setRes!47466 (and tp!1927882 (inv!85770 setElem!47466) e!4194531))))

(declare-fun setRest!47466 () (Set Context!12320))

(assert (=> setNonEmpty!47466 (= z1!570 (set.union (set.insert setElem!47466 (as set.empty (Set Context!12320))) setRest!47466))))

(declare-fun b!6979160 () Bool)

(declare-fun e!4194526 () Bool)

(declare-fun tp_is_empty!43553 () Bool)

(declare-fun tp!1927881 () Bool)

(assert (=> b!6979160 (= e!4194526 (and tp_is_empty!43553 tp!1927881))))

(declare-fun b!6979161 () Bool)

(declare-fun res!2845915 () Bool)

(assert (=> b!6979161 (=> res!2845915 e!4194532)))

(declare-fun isEmpty!39056 (List!67037) Bool)

(assert (=> b!6979161 (= res!2845915 (isEmpty!39056 (exprs!6660 lt!2480988)))))

(declare-fun b!6979162 () Bool)

(declare-fun e!4194530 () Bool)

(assert (=> b!6979162 (= e!4194532 e!4194530)))

(declare-fun res!2845916 () Bool)

(assert (=> b!6979162 (=> res!2845916 e!4194530)))

(declare-fun forall!16043 (List!67037 Int) Bool)

(declare-fun tail!13132 (List!67037) List!67037)

(assert (=> b!6979162 (= res!2845916 (not (forall!16043 (tail!13132 (exprs!6660 lt!2480988)) lambda!398714)))))

(declare-fun res!2845920 () Bool)

(assert (=> start!669382 (=> (not res!2845920) (not e!4194524))))

(assert (=> start!669382 (= res!2845920 (matchZipper!2704 lt!2480987 s!7408))))

(declare-fun appendTo!285 ((Set Context!12320) Context!12320) (Set Context!12320))

(assert (=> start!669382 (= lt!2480987 (appendTo!285 z1!570 ct2!306))))

(assert (=> start!669382 e!4194524))

(declare-fun condSetEmpty!47466 () Bool)

(assert (=> start!669382 (= condSetEmpty!47466 (= z1!570 (as set.empty (Set Context!12320))))))

(assert (=> start!669382 setRes!47466))

(assert (=> start!669382 (and (inv!85770 ct2!306) e!4194529)))

(assert (=> start!669382 e!4194526))

(declare-fun b!6979163 () Bool)

(declare-fun res!2845919 () Bool)

(assert (=> b!6979163 (=> (not res!2845919) (not e!4194524))))

(assert (=> b!6979163 (= res!2845919 (is-Cons!66914 s!7408))))

(declare-fun b!6979164 () Bool)

(assert (=> b!6979164 (= e!4194528 e!4194525)))

(declare-fun res!2845917 () Bool)

(assert (=> b!6979164 (=> res!2845917 e!4194525)))

(assert (=> b!6979164 (= res!2845917 (not (= lt!2480989 lt!2480990)))))

(assert (=> b!6979164 (= lt!2480989 (set.insert lt!2480982 (as set.empty (Set Context!12320))))))

(declare-fun lt!2480984 () Unit!160978)

(assert (=> b!6979164 (= lt!2480984 (lemmaConcatPreservesForall!500 (exprs!6660 lt!2480988) (exprs!6660 ct2!306) lambda!398714))))

(declare-fun b!6979165 () Bool)

(assert (=> b!6979165 (= e!4194530 (forall!16043 (exprs!6660 ct2!306) lambda!398714))))

(declare-fun b!6979166 () Bool)

(declare-fun res!2845925 () Bool)

(assert (=> b!6979166 (=> res!2845925 e!4194532)))

(declare-fun nullable!6924 (Regex!17164) Bool)

(assert (=> b!6979166 (= res!2845925 (not (nullable!6924 (h!73361 (exprs!6660 lt!2480988)))))))

(declare-fun b!6979167 () Bool)

(declare-fun tp!1927884 () Bool)

(assert (=> b!6979167 (= e!4194531 tp!1927884)))

(declare-fun b!6979168 () Bool)

(declare-fun res!2845924 () Bool)

(assert (=> b!6979168 (=> res!2845924 e!4194527)))

(assert (=> b!6979168 (= res!2845924 (not (set.member lt!2480978 lt!2480987)))))

(assert (= (and start!669382 res!2845920) b!6979163))

(assert (= (and b!6979163 res!2845919) b!6979157))

(assert (= (and b!6979157 (not res!2845918)) b!6979168))

(assert (= (and b!6979168 (not res!2845924)) b!6979159))

(assert (= (and b!6979159 (not res!2845921)) b!6979164))

(assert (= (and b!6979164 (not res!2845917)) b!6979155))

(assert (= (and b!6979155 (not res!2845922)) b!6979156))

(assert (= (and b!6979156 (not res!2845923)) b!6979161))

(assert (= (and b!6979161 (not res!2845915)) b!6979166))

(assert (= (and b!6979166 (not res!2845925)) b!6979162))

(assert (= (and b!6979162 (not res!2845916)) b!6979165))

(assert (= (and start!669382 condSetEmpty!47466) setIsEmpty!47466))

(assert (= (and start!669382 (not condSetEmpty!47466)) setNonEmpty!47466))

(assert (= setNonEmpty!47466 b!6979167))

(assert (= start!669382 b!6979158))

(assert (= (and start!669382 (is-Cons!66914 s!7408)) b!6979160))

(declare-fun m!7665070 () Bool)

(assert (=> b!6979161 m!7665070))

(declare-fun m!7665072 () Bool)

(assert (=> b!6979159 m!7665072))

(declare-fun m!7665074 () Bool)

(assert (=> b!6979159 m!7665074))

(declare-fun m!7665076 () Bool)

(assert (=> b!6979159 m!7665076))

(declare-fun m!7665078 () Bool)

(assert (=> b!6979159 m!7665078))

(declare-fun m!7665080 () Bool)

(assert (=> b!6979168 m!7665080))

(declare-fun m!7665082 () Bool)

(assert (=> b!6979166 m!7665082))

(declare-fun m!7665084 () Bool)

(assert (=> b!6979155 m!7665084))

(declare-fun m!7665086 () Bool)

(assert (=> b!6979155 m!7665086))

(declare-fun m!7665088 () Bool)

(assert (=> b!6979155 m!7665088))

(declare-fun m!7665090 () Bool)

(assert (=> b!6979155 m!7665090))

(assert (=> b!6979155 m!7665076))

(declare-fun m!7665092 () Bool)

(assert (=> b!6979157 m!7665092))

(declare-fun m!7665094 () Bool)

(assert (=> b!6979157 m!7665094))

(declare-fun m!7665096 () Bool)

(assert (=> b!6979157 m!7665096))

(declare-fun m!7665098 () Bool)

(assert (=> b!6979157 m!7665098))

(declare-fun m!7665100 () Bool)

(assert (=> b!6979157 m!7665100))

(declare-fun m!7665102 () Bool)

(assert (=> b!6979157 m!7665102))

(declare-fun m!7665104 () Bool)

(assert (=> start!669382 m!7665104))

(declare-fun m!7665106 () Bool)

(assert (=> start!669382 m!7665106))

(declare-fun m!7665108 () Bool)

(assert (=> start!669382 m!7665108))

(declare-fun m!7665110 () Bool)

(assert (=> setNonEmpty!47466 m!7665110))

(declare-fun m!7665112 () Bool)

(assert (=> b!6979165 m!7665112))

(declare-fun m!7665114 () Bool)

(assert (=> b!6979164 m!7665114))

(assert (=> b!6979164 m!7665076))

(declare-fun m!7665116 () Bool)

(assert (=> b!6979162 m!7665116))

(assert (=> b!6979162 m!7665116))

(declare-fun m!7665118 () Bool)

(assert (=> b!6979162 m!7665118))

(push 1)

(assert (not b!6979162))

(assert (not b!6979164))

(assert (not b!6979166))

(assert (not b!6979159))

(assert (not start!669382))

(assert (not b!6979157))

(assert (not b!6979161))

(assert (not b!6979165))

(assert tp_is_empty!43553)

(assert (not b!6979155))

(assert (not b!6979160))

(assert (not b!6979167))

(assert (not setNonEmpty!47466))

(assert (not b!6979158))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1860501 () Bool)

(declare-fun d!2173138 () Bool)

(assert (= bs!1860501 (and d!2173138 b!6979155)))

(declare-fun lambda!398740 () Int)

(assert (=> bs!1860501 (= lambda!398740 lambda!398715)))

(assert (=> d!2173138 true))

(assert (=> d!2173138 (= (derivationStepZipper!2644 lt!2480989 (h!73362 s!7408)) (flatMap!2150 lt!2480989 lambda!398740))))

(declare-fun bs!1860502 () Bool)

(assert (= bs!1860502 d!2173138))

(declare-fun m!7665170 () Bool)

(assert (=> bs!1860502 m!7665170))

(assert (=> b!6979155 d!2173138))

(declare-fun d!2173140 () Bool)

(declare-fun dynLambda!26712 (Int Context!12320) (Set Context!12320))

(assert (=> d!2173140 (= (flatMap!2150 lt!2480989 lambda!398715) (dynLambda!26712 lambda!398715 lt!2480982))))

(declare-fun lt!2481034 () Unit!160978)

(declare-fun choose!51988 ((Set Context!12320) Context!12320 Int) Unit!160978)

(assert (=> d!2173140 (= lt!2481034 (choose!51988 lt!2480989 lt!2480982 lambda!398715))))

(assert (=> d!2173140 (= lt!2480989 (set.insert lt!2480982 (as set.empty (Set Context!12320))))))

(assert (=> d!2173140 (= (lemmaFlatMapOnSingletonSet!1665 lt!2480989 lt!2480982 lambda!398715) lt!2481034)))

(declare-fun b_lambda!261379 () Bool)

(assert (=> (not b_lambda!261379) (not d!2173140)))

(declare-fun bs!1860503 () Bool)

(assert (= bs!1860503 d!2173140))

(assert (=> bs!1860503 m!7665088))

(declare-fun m!7665172 () Bool)

(assert (=> bs!1860503 m!7665172))

(declare-fun m!7665174 () Bool)

(assert (=> bs!1860503 m!7665174))

(assert (=> bs!1860503 m!7665114))

(assert (=> b!6979155 d!2173140))

(declare-fun d!2173142 () Bool)

(assert (=> d!2173142 (forall!16043 (++!15109 (exprs!6660 lt!2480988) (exprs!6660 ct2!306)) lambda!398714)))

(declare-fun lt!2481037 () Unit!160978)

(declare-fun choose!51989 (List!67037 List!67037 Int) Unit!160978)

(assert (=> d!2173142 (= lt!2481037 (choose!51989 (exprs!6660 lt!2480988) (exprs!6660 ct2!306) lambda!398714))))

(assert (=> d!2173142 (forall!16043 (exprs!6660 lt!2480988) lambda!398714)))

(assert (=> d!2173142 (= (lemmaConcatPreservesForall!500 (exprs!6660 lt!2480988) (exprs!6660 ct2!306) lambda!398714) lt!2481037)))

(declare-fun bs!1860504 () Bool)

(assert (= bs!1860504 d!2173142))

(assert (=> bs!1860504 m!7665074))

(assert (=> bs!1860504 m!7665074))

(declare-fun m!7665176 () Bool)

(assert (=> bs!1860504 m!7665176))

(declare-fun m!7665178 () Bool)

(assert (=> bs!1860504 m!7665178))

(declare-fun m!7665180 () Bool)

(assert (=> bs!1860504 m!7665180))

(assert (=> b!6979155 d!2173142))

(declare-fun d!2173144 () Bool)

(declare-fun choose!51990 ((Set Context!12320) Int) (Set Context!12320))

(assert (=> d!2173144 (= (flatMap!2150 lt!2480989 lambda!398715) (choose!51990 lt!2480989 lambda!398715))))

(declare-fun bs!1860505 () Bool)

(assert (= bs!1860505 d!2173144))

(declare-fun m!7665182 () Bool)

(assert (=> bs!1860505 m!7665182))

(assert (=> b!6979155 d!2173144))

(declare-fun b!6979235 () Bool)

(declare-fun e!4194568 () (Set Context!12320))

(declare-fun e!4194567 () (Set Context!12320))

(assert (=> b!6979235 (= e!4194568 e!4194567)))

(declare-fun c!1293659 () Bool)

(assert (=> b!6979235 (= c!1293659 (is-Cons!66913 (exprs!6660 lt!2480982)))))

(declare-fun b!6979236 () Bool)

(assert (=> b!6979236 (= e!4194567 (as set.empty (Set Context!12320)))))

(declare-fun b!6979237 () Bool)

(declare-fun call!633317 () (Set Context!12320))

(assert (=> b!6979237 (= e!4194567 call!633317)))

(declare-fun b!6979238 () Bool)

(assert (=> b!6979238 (= e!4194568 (set.union call!633317 (derivationStepZipperUp!1814 (Context!12321 (t!380780 (exprs!6660 lt!2480982))) (h!73362 s!7408))))))

(declare-fun b!6979239 () Bool)

(declare-fun e!4194566 () Bool)

(assert (=> b!6979239 (= e!4194566 (nullable!6924 (h!73361 (exprs!6660 lt!2480982))))))

(declare-fun bm!633312 () Bool)

(declare-fun derivationStepZipperDown!1884 (Regex!17164 Context!12320 C!34598) (Set Context!12320))

(assert (=> bm!633312 (= call!633317 (derivationStepZipperDown!1884 (h!73361 (exprs!6660 lt!2480982)) (Context!12321 (t!380780 (exprs!6660 lt!2480982))) (h!73362 s!7408)))))

(declare-fun d!2173146 () Bool)

(declare-fun c!1293660 () Bool)

(assert (=> d!2173146 (= c!1293660 e!4194566)))

(declare-fun res!2845962 () Bool)

(assert (=> d!2173146 (=> (not res!2845962) (not e!4194566))))

(assert (=> d!2173146 (= res!2845962 (is-Cons!66913 (exprs!6660 lt!2480982)))))

(assert (=> d!2173146 (= (derivationStepZipperUp!1814 lt!2480982 (h!73362 s!7408)) e!4194568)))

(assert (= (and d!2173146 res!2845962) b!6979239))

(assert (= (and d!2173146 c!1293660) b!6979238))

(assert (= (and d!2173146 (not c!1293660)) b!6979235))

(assert (= (and b!6979235 c!1293659) b!6979237))

(assert (= (and b!6979235 (not c!1293659)) b!6979236))

(assert (= (or b!6979238 b!6979237) bm!633312))

(declare-fun m!7665184 () Bool)

(assert (=> b!6979238 m!7665184))

(declare-fun m!7665186 () Bool)

(assert (=> b!6979239 m!7665186))

(declare-fun m!7665188 () Bool)

(assert (=> bm!633312 m!7665188))

(assert (=> b!6979155 d!2173146))

(assert (=> b!6979164 d!2173142))

(declare-fun bs!1860506 () Bool)

(declare-fun d!2173148 () Bool)

(assert (= bs!1860506 (and d!2173148 b!6979159)))

(declare-fun lambda!398743 () Int)

(assert (=> bs!1860506 (= lambda!398743 lambda!398714)))

(assert (=> d!2173148 (= (inv!85770 setElem!47466) (forall!16043 (exprs!6660 setElem!47466) lambda!398743))))

(declare-fun bs!1860507 () Bool)

(assert (= bs!1860507 d!2173148))

(declare-fun m!7665190 () Bool)

(assert (=> bs!1860507 m!7665190))

(assert (=> setNonEmpty!47466 d!2173148))

(declare-fun b!6979248 () Bool)

(declare-fun e!4194573 () List!67037)

(assert (=> b!6979248 (= e!4194573 (exprs!6660 ct2!306))))

(declare-fun lt!2481040 () List!67037)

(declare-fun b!6979251 () Bool)

(declare-fun e!4194574 () Bool)

(assert (=> b!6979251 (= e!4194574 (or (not (= (exprs!6660 ct2!306) Nil!66913)) (= lt!2481040 (exprs!6660 lt!2480988))))))

(declare-fun b!6979250 () Bool)

(declare-fun res!2845967 () Bool)

(assert (=> b!6979250 (=> (not res!2845967) (not e!4194574))))

(declare-fun size!40867 (List!67037) Int)

(assert (=> b!6979250 (= res!2845967 (= (size!40867 lt!2481040) (+ (size!40867 (exprs!6660 lt!2480988)) (size!40867 (exprs!6660 ct2!306)))))))

(declare-fun b!6979249 () Bool)

(assert (=> b!6979249 (= e!4194573 (Cons!66913 (h!73361 (exprs!6660 lt!2480988)) (++!15109 (t!380780 (exprs!6660 lt!2480988)) (exprs!6660 ct2!306))))))

(declare-fun d!2173150 () Bool)

(assert (=> d!2173150 e!4194574))

(declare-fun res!2845968 () Bool)

(assert (=> d!2173150 (=> (not res!2845968) (not e!4194574))))

(declare-fun content!13185 (List!67037) (Set Regex!17164))

(assert (=> d!2173150 (= res!2845968 (= (content!13185 lt!2481040) (set.union (content!13185 (exprs!6660 lt!2480988)) (content!13185 (exprs!6660 ct2!306)))))))

(assert (=> d!2173150 (= lt!2481040 e!4194573)))

(declare-fun c!1293663 () Bool)

(assert (=> d!2173150 (= c!1293663 (is-Nil!66913 (exprs!6660 lt!2480988)))))

(assert (=> d!2173150 (= (++!15109 (exprs!6660 lt!2480988) (exprs!6660 ct2!306)) lt!2481040)))

(assert (= (and d!2173150 c!1293663) b!6979248))

(assert (= (and d!2173150 (not c!1293663)) b!6979249))

(assert (= (and d!2173150 res!2845968) b!6979250))

(assert (= (and b!6979250 res!2845967) b!6979251))

(declare-fun m!7665192 () Bool)

(assert (=> b!6979250 m!7665192))

(declare-fun m!7665194 () Bool)

(assert (=> b!6979250 m!7665194))

(declare-fun m!7665196 () Bool)

(assert (=> b!6979250 m!7665196))

(declare-fun m!7665198 () Bool)

(assert (=> b!6979249 m!7665198))

(declare-fun m!7665200 () Bool)

(assert (=> d!2173150 m!7665200))

(declare-fun m!7665202 () Bool)

(assert (=> d!2173150 m!7665202))

(declare-fun m!7665204 () Bool)

(assert (=> d!2173150 m!7665204))

(assert (=> b!6979159 d!2173150))

(assert (=> b!6979159 d!2173142))

(declare-fun d!2173152 () Bool)

(declare-fun e!4194577 () Bool)

(assert (=> d!2173152 e!4194577))

(declare-fun res!2845972 () Bool)

(assert (=> d!2173152 (=> (not res!2845972) (not e!4194577))))

(declare-fun lt!2481043 () Context!12320)

(declare-fun dynLambda!26713 (Int Context!12320) Context!12320)

(assert (=> d!2173152 (= res!2845972 (= lt!2480978 (dynLambda!26713 lambda!398713 lt!2481043)))))

(declare-fun choose!51991 ((Set Context!12320) Int Context!12320) Context!12320)

(assert (=> d!2173152 (= lt!2481043 (choose!51991 z1!570 lambda!398713 lt!2480978))))

(declare-fun map!15415 ((Set Context!12320) Int) (Set Context!12320))

(assert (=> d!2173152 (set.member lt!2480978 (map!15415 z1!570 lambda!398713))))

(assert (=> d!2173152 (= (mapPost2!19 z1!570 lambda!398713 lt!2480978) lt!2481043)))

(declare-fun b!6979255 () Bool)

(assert (=> b!6979255 (= e!4194577 (set.member lt!2481043 z1!570))))

(assert (= (and d!2173152 res!2845972) b!6979255))

(declare-fun b_lambda!261381 () Bool)

(assert (=> (not b_lambda!261381) (not d!2173152)))

(declare-fun m!7665206 () Bool)

(assert (=> d!2173152 m!7665206))

(declare-fun m!7665208 () Bool)

(assert (=> d!2173152 m!7665208))

(declare-fun m!7665210 () Bool)

(assert (=> d!2173152 m!7665210))

(declare-fun m!7665212 () Bool)

(assert (=> d!2173152 m!7665212))

(declare-fun m!7665214 () Bool)

(assert (=> b!6979255 m!7665214))

(assert (=> b!6979159 d!2173152))

(declare-fun d!2173154 () Bool)

(assert (=> d!2173154 (= (isEmpty!39056 (exprs!6660 lt!2480988)) (is-Nil!66913 (exprs!6660 lt!2480988)))))

(assert (=> b!6979161 d!2173154))

(declare-fun d!2173156 () Bool)

(declare-fun c!1293666 () Bool)

(declare-fun isEmpty!39058 (List!67038) Bool)

(assert (=> d!2173156 (= c!1293666 (isEmpty!39058 s!7408))))

(declare-fun e!4194580 () Bool)

(assert (=> d!2173156 (= (matchZipper!2704 lt!2480987 s!7408) e!4194580)))

(declare-fun b!6979260 () Bool)

(declare-fun nullableZipper!2395 ((Set Context!12320)) Bool)

(assert (=> b!6979260 (= e!4194580 (nullableZipper!2395 lt!2480987))))

(declare-fun b!6979261 () Bool)

(declare-fun head!14065 (List!67038) C!34598)

(declare-fun tail!13134 (List!67038) List!67038)

(assert (=> b!6979261 (= e!4194580 (matchZipper!2704 (derivationStepZipper!2644 lt!2480987 (head!14065 s!7408)) (tail!13134 s!7408)))))

(assert (= (and d!2173156 c!1293666) b!6979260))

(assert (= (and d!2173156 (not c!1293666)) b!6979261))

(declare-fun m!7665216 () Bool)

(assert (=> d!2173156 m!7665216))

(declare-fun m!7665218 () Bool)

(assert (=> b!6979260 m!7665218))

(declare-fun m!7665220 () Bool)

(assert (=> b!6979261 m!7665220))

(assert (=> b!6979261 m!7665220))

(declare-fun m!7665222 () Bool)

(assert (=> b!6979261 m!7665222))

(declare-fun m!7665224 () Bool)

(assert (=> b!6979261 m!7665224))

(assert (=> b!6979261 m!7665222))

(assert (=> b!6979261 m!7665224))

(declare-fun m!7665226 () Bool)

(assert (=> b!6979261 m!7665226))

(assert (=> start!669382 d!2173156))

(declare-fun bs!1860508 () Bool)

(declare-fun d!2173158 () Bool)

(assert (= bs!1860508 (and d!2173158 b!6979159)))

(declare-fun lambda!398748 () Int)

(assert (=> bs!1860508 (= lambda!398748 lambda!398713)))

(assert (=> d!2173158 true))

(assert (=> d!2173158 (= (appendTo!285 z1!570 ct2!306) (map!15415 z1!570 lambda!398748))))

(declare-fun bs!1860509 () Bool)

(assert (= bs!1860509 d!2173158))

(declare-fun m!7665228 () Bool)

(assert (=> bs!1860509 m!7665228))

(assert (=> start!669382 d!2173158))

(declare-fun bs!1860510 () Bool)

(declare-fun d!2173160 () Bool)

(assert (= bs!1860510 (and d!2173160 b!6979159)))

(declare-fun lambda!398749 () Int)

(assert (=> bs!1860510 (= lambda!398749 lambda!398714)))

(declare-fun bs!1860511 () Bool)

(assert (= bs!1860511 (and d!2173160 d!2173148)))

(assert (=> bs!1860511 (= lambda!398749 lambda!398743)))

(assert (=> d!2173160 (= (inv!85770 ct2!306) (forall!16043 (exprs!6660 ct2!306) lambda!398749))))

(declare-fun bs!1860512 () Bool)

(assert (= bs!1860512 d!2173160))

(declare-fun m!7665230 () Bool)

(assert (=> bs!1860512 m!7665230))

(assert (=> start!669382 d!2173160))

(declare-fun bs!1860513 () Bool)

(declare-fun d!2173162 () Bool)

(assert (= bs!1860513 (and d!2173162 b!6979157)))

(declare-fun lambda!398752 () Int)

(assert (=> bs!1860513 (not (= lambda!398752 lambda!398712))))

(assert (=> d!2173162 true))

(declare-fun order!27825 () Int)

(declare-fun dynLambda!26714 (Int Int) Int)

(assert (=> d!2173162 (< (dynLambda!26714 order!27825 lambda!398712) (dynLambda!26714 order!27825 lambda!398752))))

(declare-fun forall!16045 (List!67039 Int) Bool)

(assert (=> d!2173162 (= (exists!2914 lt!2480983 lambda!398712) (not (forall!16045 lt!2480983 lambda!398752)))))

(declare-fun bs!1860514 () Bool)

(assert (= bs!1860514 d!2173162))

(declare-fun m!7665232 () Bool)

(assert (=> bs!1860514 m!7665232))

(assert (=> b!6979157 d!2173162))

(declare-fun bs!1860515 () Bool)

(declare-fun d!2173164 () Bool)

(assert (= bs!1860515 (and d!2173164 b!6979157)))

(declare-fun lambda!398755 () Int)

(assert (=> bs!1860515 (= lambda!398755 lambda!398712)))

(declare-fun bs!1860516 () Bool)

(assert (= bs!1860516 (and d!2173164 d!2173162)))

(assert (=> bs!1860516 (not (= lambda!398755 lambda!398752))))

(assert (=> d!2173164 true))

(assert (=> d!2173164 (exists!2914 lt!2480983 lambda!398755)))

(declare-fun lt!2481048 () Unit!160978)

(declare-fun choose!51992 (List!67039 List!67038) Unit!160978)

(assert (=> d!2173164 (= lt!2481048 (choose!51992 lt!2480983 s!7408))))

(declare-fun content!13186 (List!67039) (Set Context!12320))

(assert (=> d!2173164 (matchZipper!2704 (content!13186 lt!2480983) s!7408)))

(assert (=> d!2173164 (= (lemmaZipperMatchesExistsMatchingContext!133 lt!2480983 s!7408) lt!2481048)))

(declare-fun bs!1860517 () Bool)

(assert (= bs!1860517 d!2173164))

(declare-fun m!7665234 () Bool)

(assert (=> bs!1860517 m!7665234))

(declare-fun m!7665236 () Bool)

(assert (=> bs!1860517 m!7665236))

(declare-fun m!7665238 () Bool)

(assert (=> bs!1860517 m!7665238))

(assert (=> bs!1860517 m!7665238))

(declare-fun m!7665240 () Bool)

(assert (=> bs!1860517 m!7665240))

(assert (=> b!6979157 d!2173164))

(declare-fun d!2173166 () Bool)

(declare-fun e!4194583 () Bool)

(assert (=> d!2173166 e!4194583))

(declare-fun res!2845975 () Bool)

(assert (=> d!2173166 (=> (not res!2845975) (not e!4194583))))

(declare-fun lt!2481051 () Context!12320)

(declare-fun dynLambda!26715 (Int Context!12320) Bool)

(assert (=> d!2173166 (= res!2845975 (dynLambda!26715 lambda!398712 lt!2481051))))

(declare-fun getWitness!1027 (List!67039 Int) Context!12320)

(assert (=> d!2173166 (= lt!2481051 (getWitness!1027 (toList!10524 lt!2480987) lambda!398712))))

(declare-fun exists!2916 ((Set Context!12320) Int) Bool)

(assert (=> d!2173166 (exists!2916 lt!2480987 lambda!398712)))

(assert (=> d!2173166 (= (getWitness!1025 lt!2480987 lambda!398712) lt!2481051)))

(declare-fun b!6979266 () Bool)

(assert (=> b!6979266 (= e!4194583 (set.member lt!2481051 lt!2480987))))

(assert (= (and d!2173166 res!2845975) b!6979266))

(declare-fun b_lambda!261383 () Bool)

(assert (=> (not b_lambda!261383) (not d!2173166)))

(declare-fun m!7665242 () Bool)

(assert (=> d!2173166 m!7665242))

(assert (=> d!2173166 m!7665092))

(assert (=> d!2173166 m!7665092))

(declare-fun m!7665244 () Bool)

(assert (=> d!2173166 m!7665244))

(declare-fun m!7665246 () Bool)

(assert (=> d!2173166 m!7665246))

(declare-fun m!7665248 () Bool)

(assert (=> b!6979266 m!7665248))

(assert (=> b!6979157 d!2173166))

(declare-fun d!2173170 () Bool)

(declare-fun c!1293670 () Bool)

(assert (=> d!2173170 (= c!1293670 (isEmpty!39058 s!7408))))

(declare-fun e!4194584 () Bool)

(assert (=> d!2173170 (= (matchZipper!2704 lt!2480990 s!7408) e!4194584)))

(declare-fun b!6979267 () Bool)

(assert (=> b!6979267 (= e!4194584 (nullableZipper!2395 lt!2480990))))

(declare-fun b!6979268 () Bool)

(assert (=> b!6979268 (= e!4194584 (matchZipper!2704 (derivationStepZipper!2644 lt!2480990 (head!14065 s!7408)) (tail!13134 s!7408)))))

(assert (= (and d!2173170 c!1293670) b!6979267))

(assert (= (and d!2173170 (not c!1293670)) b!6979268))

(assert (=> d!2173170 m!7665216))

(declare-fun m!7665250 () Bool)

(assert (=> b!6979267 m!7665250))

(assert (=> b!6979268 m!7665220))

(assert (=> b!6979268 m!7665220))

(declare-fun m!7665252 () Bool)

(assert (=> b!6979268 m!7665252))

(assert (=> b!6979268 m!7665224))

(assert (=> b!6979268 m!7665252))

(assert (=> b!6979268 m!7665224))

(declare-fun m!7665254 () Bool)

(assert (=> b!6979268 m!7665254))

(assert (=> b!6979157 d!2173170))

(declare-fun d!2173172 () Bool)

(declare-fun e!4194587 () Bool)

(assert (=> d!2173172 e!4194587))

(declare-fun res!2845978 () Bool)

(assert (=> d!2173172 (=> (not res!2845978) (not e!4194587))))

(declare-fun lt!2481054 () List!67039)

(declare-fun noDuplicate!2485 (List!67039) Bool)

(assert (=> d!2173172 (= res!2845978 (noDuplicate!2485 lt!2481054))))

(declare-fun choose!51993 ((Set Context!12320)) List!67039)

(assert (=> d!2173172 (= lt!2481054 (choose!51993 lt!2480987))))

(assert (=> d!2173172 (= (toList!10524 lt!2480987) lt!2481054)))

(declare-fun b!6979271 () Bool)

(assert (=> b!6979271 (= e!4194587 (= (content!13186 lt!2481054) lt!2480987))))

(assert (= (and d!2173172 res!2845978) b!6979271))

(declare-fun m!7665256 () Bool)

(assert (=> d!2173172 m!7665256))

(declare-fun m!7665258 () Bool)

(assert (=> d!2173172 m!7665258))

(declare-fun m!7665260 () Bool)

(assert (=> b!6979271 m!7665260))

(assert (=> b!6979157 d!2173172))

(declare-fun d!2173174 () Bool)

(declare-fun res!2845983 () Bool)

(declare-fun e!4194592 () Bool)

(assert (=> d!2173174 (=> res!2845983 e!4194592)))

(assert (=> d!2173174 (= res!2845983 (is-Nil!66913 (tail!13132 (exprs!6660 lt!2480988))))))

(assert (=> d!2173174 (= (forall!16043 (tail!13132 (exprs!6660 lt!2480988)) lambda!398714) e!4194592)))

(declare-fun b!6979276 () Bool)

(declare-fun e!4194593 () Bool)

(assert (=> b!6979276 (= e!4194592 e!4194593)))

(declare-fun res!2845984 () Bool)

(assert (=> b!6979276 (=> (not res!2845984) (not e!4194593))))

(declare-fun dynLambda!26716 (Int Regex!17164) Bool)

(assert (=> b!6979276 (= res!2845984 (dynLambda!26716 lambda!398714 (h!73361 (tail!13132 (exprs!6660 lt!2480988)))))))

(declare-fun b!6979277 () Bool)

(assert (=> b!6979277 (= e!4194593 (forall!16043 (t!380780 (tail!13132 (exprs!6660 lt!2480988))) lambda!398714))))

(assert (= (and d!2173174 (not res!2845983)) b!6979276))

(assert (= (and b!6979276 res!2845984) b!6979277))

(declare-fun b_lambda!261385 () Bool)

(assert (=> (not b_lambda!261385) (not b!6979276)))

(declare-fun m!7665262 () Bool)

(assert (=> b!6979276 m!7665262))

(declare-fun m!7665264 () Bool)

(assert (=> b!6979277 m!7665264))

(assert (=> b!6979162 d!2173174))

(declare-fun d!2173176 () Bool)

(assert (=> d!2173176 (= (tail!13132 (exprs!6660 lt!2480988)) (t!380780 (exprs!6660 lt!2480988)))))

(assert (=> b!6979162 d!2173176))

(declare-fun d!2173180 () Bool)

(declare-fun res!2845985 () Bool)

(declare-fun e!4194594 () Bool)

(assert (=> d!2173180 (=> res!2845985 e!4194594)))

(assert (=> d!2173180 (= res!2845985 (is-Nil!66913 (exprs!6660 ct2!306)))))

(assert (=> d!2173180 (= (forall!16043 (exprs!6660 ct2!306) lambda!398714) e!4194594)))

(declare-fun b!6979278 () Bool)

(declare-fun e!4194595 () Bool)

(assert (=> b!6979278 (= e!4194594 e!4194595)))

(declare-fun res!2845986 () Bool)

(assert (=> b!6979278 (=> (not res!2845986) (not e!4194595))))

(assert (=> b!6979278 (= res!2845986 (dynLambda!26716 lambda!398714 (h!73361 (exprs!6660 ct2!306))))))

(declare-fun b!6979279 () Bool)

(assert (=> b!6979279 (= e!4194595 (forall!16043 (t!380780 (exprs!6660 ct2!306)) lambda!398714))))

(assert (= (and d!2173180 (not res!2845985)) b!6979278))

(assert (= (and b!6979278 res!2845986) b!6979279))

(declare-fun b_lambda!261387 () Bool)

(assert (=> (not b_lambda!261387) (not b!6979278)))

(declare-fun m!7665272 () Bool)

(assert (=> b!6979278 m!7665272))

(declare-fun m!7665274 () Bool)

(assert (=> b!6979279 m!7665274))

(assert (=> b!6979165 d!2173180))

(declare-fun d!2173182 () Bool)

(declare-fun nullableFct!2599 (Regex!17164) Bool)

(assert (=> d!2173182 (= (nullable!6924 (h!73361 (exprs!6660 lt!2480988))) (nullableFct!2599 (h!73361 (exprs!6660 lt!2480988))))))

(declare-fun bs!1860519 () Bool)

(assert (= bs!1860519 d!2173182))

(declare-fun m!7665276 () Bool)

(assert (=> bs!1860519 m!7665276))

(assert (=> b!6979166 d!2173182))

(declare-fun condSetEmpty!47472 () Bool)

(assert (=> setNonEmpty!47466 (= condSetEmpty!47472 (= setRest!47466 (as set.empty (Set Context!12320))))))

(declare-fun setRes!47472 () Bool)

(assert (=> setNonEmpty!47466 (= tp!1927882 setRes!47472)))

(declare-fun setIsEmpty!47472 () Bool)

(assert (=> setIsEmpty!47472 setRes!47472))

(declare-fun tp!1927901 () Bool)

(declare-fun setElem!47472 () Context!12320)

(declare-fun setNonEmpty!47472 () Bool)

(declare-fun e!4194598 () Bool)

(assert (=> setNonEmpty!47472 (= setRes!47472 (and tp!1927901 (inv!85770 setElem!47472) e!4194598))))

(declare-fun setRest!47472 () (Set Context!12320))

(assert (=> setNonEmpty!47472 (= setRest!47466 (set.union (set.insert setElem!47472 (as set.empty (Set Context!12320))) setRest!47472))))

(declare-fun b!6979284 () Bool)

(declare-fun tp!1927902 () Bool)

(assert (=> b!6979284 (= e!4194598 tp!1927902)))

(assert (= (and setNonEmpty!47466 condSetEmpty!47472) setIsEmpty!47472))

(assert (= (and setNonEmpty!47466 (not condSetEmpty!47472)) setNonEmpty!47472))

(assert (= setNonEmpty!47472 b!6979284))

(declare-fun m!7665278 () Bool)

(assert (=> setNonEmpty!47472 m!7665278))

(declare-fun b!6979289 () Bool)

(declare-fun e!4194601 () Bool)

(declare-fun tp!1927907 () Bool)

(declare-fun tp!1927908 () Bool)

(assert (=> b!6979289 (= e!4194601 (and tp!1927907 tp!1927908))))

(assert (=> b!6979158 (= tp!1927883 e!4194601)))

(assert (= (and b!6979158 (is-Cons!66913 (exprs!6660 ct2!306))) b!6979289))

(declare-fun b!6979290 () Bool)

(declare-fun e!4194602 () Bool)

(declare-fun tp!1927909 () Bool)

(declare-fun tp!1927910 () Bool)

(assert (=> b!6979290 (= e!4194602 (and tp!1927909 tp!1927910))))

(assert (=> b!6979167 (= tp!1927884 e!4194602)))

(assert (= (and b!6979167 (is-Cons!66913 (exprs!6660 setElem!47466))) b!6979290))

(declare-fun b!6979295 () Bool)

(declare-fun e!4194605 () Bool)

(declare-fun tp!1927913 () Bool)

(assert (=> b!6979295 (= e!4194605 (and tp_is_empty!43553 tp!1927913))))

(assert (=> b!6979160 (= tp!1927881 e!4194605)))

(assert (= (and b!6979160 (is-Cons!66914 (t!380781 s!7408))) b!6979295))

(declare-fun b_lambda!261389 () Bool)

(assert (= b_lambda!261383 (or b!6979157 b_lambda!261389)))

(declare-fun bs!1860520 () Bool)

(declare-fun d!2173186 () Bool)

(assert (= bs!1860520 (and d!2173186 b!6979157)))

(assert (=> bs!1860520 (= (dynLambda!26715 lambda!398712 lt!2481051) (matchZipper!2704 (set.insert lt!2481051 (as set.empty (Set Context!12320))) s!7408))))

(declare-fun m!7665280 () Bool)

(assert (=> bs!1860520 m!7665280))

(assert (=> bs!1860520 m!7665280))

(declare-fun m!7665282 () Bool)

(assert (=> bs!1860520 m!7665282))

(assert (=> d!2173166 d!2173186))

(declare-fun b_lambda!261391 () Bool)

(assert (= b_lambda!261385 (or b!6979159 b_lambda!261391)))

(declare-fun bs!1860521 () Bool)

(declare-fun d!2173188 () Bool)

(assert (= bs!1860521 (and d!2173188 b!6979159)))

(declare-fun validRegex!8831 (Regex!17164) Bool)

(assert (=> bs!1860521 (= (dynLambda!26716 lambda!398714 (h!73361 (tail!13132 (exprs!6660 lt!2480988)))) (validRegex!8831 (h!73361 (tail!13132 (exprs!6660 lt!2480988)))))))

(declare-fun m!7665284 () Bool)

(assert (=> bs!1860521 m!7665284))

(assert (=> b!6979276 d!2173188))

(declare-fun b_lambda!261393 () Bool)

(assert (= b_lambda!261381 (or b!6979159 b_lambda!261393)))

(declare-fun bs!1860522 () Bool)

(declare-fun d!2173190 () Bool)

(assert (= bs!1860522 (and d!2173190 b!6979159)))

(declare-fun lt!2481058 () Unit!160978)

(assert (=> bs!1860522 (= lt!2481058 (lemmaConcatPreservesForall!500 (exprs!6660 lt!2481043) (exprs!6660 ct2!306) lambda!398714))))

(assert (=> bs!1860522 (= (dynLambda!26713 lambda!398713 lt!2481043) (Context!12321 (++!15109 (exprs!6660 lt!2481043) (exprs!6660 ct2!306))))))

(declare-fun m!7665286 () Bool)

(assert (=> bs!1860522 m!7665286))

(declare-fun m!7665288 () Bool)

(assert (=> bs!1860522 m!7665288))

(assert (=> d!2173152 d!2173190))

(declare-fun b_lambda!261395 () Bool)

(assert (= b_lambda!261379 (or b!6979155 b_lambda!261395)))

(declare-fun bs!1860523 () Bool)

(declare-fun d!2173192 () Bool)

(assert (= bs!1860523 (and d!2173192 b!6979155)))

(assert (=> bs!1860523 (= (dynLambda!26712 lambda!398715 lt!2480982) (derivationStepZipperUp!1814 lt!2480982 (h!73362 s!7408)))))

(assert (=> bs!1860523 m!7665084))

(assert (=> d!2173140 d!2173192))

(declare-fun b_lambda!261397 () Bool)

(assert (= b_lambda!261387 (or b!6979159 b_lambda!261397)))

(declare-fun bs!1860524 () Bool)

(declare-fun d!2173194 () Bool)

(assert (= bs!1860524 (and d!2173194 b!6979159)))

(assert (=> bs!1860524 (= (dynLambda!26716 lambda!398714 (h!73361 (exprs!6660 ct2!306))) (validRegex!8831 (h!73361 (exprs!6660 ct2!306))))))

(declare-fun m!7665290 () Bool)

(assert (=> bs!1860524 m!7665290))

(assert (=> b!6979278 d!2173194))

(push 1)

(assert (not b!6979267))

(assert (not d!2173152))

(assert (not d!2173182))

(assert (not d!2173170))

(assert (not d!2173172))

(assert (not d!2173160))

(assert (not d!2173144))

(assert (not b!6979260))

(assert (not b_lambda!261395))

(assert (not bs!1860524))

(assert (not b!6979289))

(assert (not b!6979268))

(assert (not d!2173162))

(assert (not b!6979271))

(assert (not b_lambda!261393))

(assert (not b!6979239))

(assert (not b!6979261))

(assert (not b!6979238))

(assert (not bs!1860523))

(assert tp_is_empty!43553)

(assert (not d!2173150))

(assert (not b!6979250))

(assert (not bs!1860520))

(assert (not d!2173166))

(assert (not b_lambda!261391))

(assert (not d!2173138))

(assert (not b!6979249))

(assert (not d!2173140))

(assert (not setNonEmpty!47472))

(assert (not d!2173164))

(assert (not b!6979290))

(assert (not b_lambda!261397))

(assert (not bs!1860522))

(assert (not bm!633312))

(assert (not b!6979295))

(assert (not b_lambda!261389))

(assert (not b!6979277))

(assert (not d!2173142))

(assert (not d!2173158))

(assert (not d!2173156))

(assert (not bs!1860521))

(assert (not b!6979284))

(assert (not b!6979279))

(assert (not d!2173148))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

