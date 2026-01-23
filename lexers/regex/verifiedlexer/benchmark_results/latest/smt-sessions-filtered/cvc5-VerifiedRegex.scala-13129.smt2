; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717490 () Bool)

(assert start!717490)

(declare-fun b!7346944 () Bool)

(declare-fun e!4399177 () Bool)

(declare-fun tp!2086569 () Bool)

(declare-fun tp!2086571 () Bool)

(assert (=> b!7346944 (= e!4399177 (and tp!2086569 tp!2086571))))

(declare-fun b!7346945 () Bool)

(declare-fun e!4399184 () Bool)

(declare-fun e!4399179 () Bool)

(assert (=> b!7346945 (= e!4399184 e!4399179)))

(declare-fun res!2967366 () Bool)

(assert (=> b!7346945 (=> (not res!2967366) (not e!4399179))))

(declare-datatypes ((C!38566 0))(
  ( (C!38567 (val!29643 Int)) )
))
(declare-datatypes ((Regex!19146 0))(
  ( (ElementMatch!19146 (c!1364828 C!38566)) (Concat!27991 (regOne!38804 Regex!19146) (regTwo!38804 Regex!19146)) (EmptyExpr!19146) (Star!19146 (reg!19475 Regex!19146)) (EmptyLang!19146) (Union!19146 (regOne!38805 Regex!19146) (regTwo!38805 Regex!19146)) )
))
(declare-fun r1!2370 () Regex!19146)

(declare-fun c!10362 () C!38566)

(declare-datatypes ((List!71642 0))(
  ( (Nil!71518) (Cons!71518 (h!77966 Regex!19146) (t!386045 List!71642)) )
))
(declare-datatypes ((Context!16172 0))(
  ( (Context!16173 (exprs!8586 List!71642)) )
))
(declare-fun lt!2611353 () (Set Context!16172))

(declare-fun ct1!282 () Context!16172)

(declare-fun lt!2611346 () (Set Context!16172))

(declare-fun derivationStepZipperDown!2972 (Regex!19146 Context!16172 C!38566) (Set Context!16172))

(assert (=> b!7346945 (= res!2967366 (= lt!2611353 (set.union lt!2611346 (derivationStepZipperDown!2972 (regTwo!38804 r1!2370) ct1!282 c!10362))))))

(declare-fun lt!2611351 () Context!16172)

(assert (=> b!7346945 (= lt!2611346 (derivationStepZipperDown!2972 (regOne!38804 r1!2370) lt!2611351 c!10362))))

(declare-fun lt!2611348 () List!71642)

(assert (=> b!7346945 (= lt!2611351 (Context!16173 lt!2611348))))

(declare-fun $colon$colon!3144 (List!71642 Regex!19146) List!71642)

(assert (=> b!7346945 (= lt!2611348 ($colon$colon!3144 (exprs!8586 ct1!282) (regTwo!38804 r1!2370)))))

(declare-fun b!7346946 () Bool)

(declare-fun e!4399181 () Bool)

(assert (=> b!7346946 (= e!4399181 e!4399184)))

(declare-fun res!2967371 () Bool)

(assert (=> b!7346946 (=> (not res!2967371) (not e!4399184))))

(assert (=> b!7346946 (= res!2967371 (and (or (not (is-ElementMatch!19146 r1!2370)) (not (= c!10362 (c!1364828 r1!2370)))) (not (is-Union!19146 r1!2370)) (is-Concat!27991 r1!2370)))))

(declare-fun lt!2611350 () (Set Context!16172))

(declare-fun ct2!378 () Context!16172)

(declare-fun ++!16964 (List!71642 List!71642) List!71642)

(assert (=> b!7346946 (= lt!2611350 (derivationStepZipperDown!2972 r1!2370 (Context!16173 (++!16964 (exprs!8586 ct1!282) (exprs!8586 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165245 0))(
  ( (Unit!165246) )
))
(declare-fun lt!2611347 () Unit!165245)

(declare-fun lambda!456184 () Int)

(declare-fun lemmaConcatPreservesForall!1821 (List!71642 List!71642 Int) Unit!165245)

(assert (=> b!7346946 (= lt!2611347 (lemmaConcatPreservesForall!1821 (exprs!8586 ct1!282) (exprs!8586 ct2!378) lambda!456184))))

(declare-fun b!7346947 () Bool)

(declare-fun tp!2086570 () Bool)

(assert (=> b!7346947 (= e!4399177 tp!2086570)))

(declare-fun b!7346948 () Bool)

(declare-fun res!2967365 () Bool)

(assert (=> b!7346948 (=> (not res!2967365) (not e!4399184))))

(declare-fun nullable!8237 (Regex!19146) Bool)

(assert (=> b!7346948 (= res!2967365 (nullable!8237 (regOne!38804 r1!2370)))))

(declare-fun res!2967368 () Bool)

(declare-fun e!4399185 () Bool)

(assert (=> start!717490 (=> (not res!2967368) (not e!4399185))))

(declare-fun validRegex!9742 (Regex!19146) Bool)

(assert (=> start!717490 (= res!2967368 (validRegex!9742 r1!2370))))

(assert (=> start!717490 e!4399185))

(declare-fun tp_is_empty!48537 () Bool)

(assert (=> start!717490 tp_is_empty!48537))

(declare-fun cWitness!61 () Context!16172)

(declare-fun e!4399182 () Bool)

(declare-fun inv!91206 (Context!16172) Bool)

(assert (=> start!717490 (and (inv!91206 cWitness!61) e!4399182)))

(declare-fun e!4399180 () Bool)

(assert (=> start!717490 (and (inv!91206 ct1!282) e!4399180)))

(assert (=> start!717490 e!4399177))

(declare-fun e!4399183 () Bool)

(assert (=> start!717490 (and (inv!91206 ct2!378) e!4399183)))

(declare-fun b!7346949 () Bool)

(declare-fun tp!2086567 () Bool)

(assert (=> b!7346949 (= e!4399180 tp!2086567)))

(declare-fun b!7346950 () Bool)

(declare-fun e!4399178 () Bool)

(declare-fun forall!17972 (List!71642 Int) Bool)

(assert (=> b!7346950 (= e!4399178 (forall!17972 (exprs!8586 ct1!282) lambda!456184))))

(declare-fun lt!2611349 () Unit!165245)

(assert (=> b!7346950 (= lt!2611349 (lemmaConcatPreservesForall!1821 (exprs!8586 cWitness!61) (exprs!8586 ct2!378) lambda!456184))))

(declare-fun b!7346951 () Bool)

(assert (=> b!7346951 (= e!4399177 tp_is_empty!48537)))

(declare-fun b!7346952 () Bool)

(declare-fun tp!2086568 () Bool)

(assert (=> b!7346952 (= e!4399183 tp!2086568)))

(declare-fun b!7346953 () Bool)

(declare-fun res!2967372 () Bool)

(assert (=> b!7346953 (=> (not res!2967372) (not e!4399184))))

(assert (=> b!7346953 (= res!2967372 (validRegex!9742 (regTwo!38804 r1!2370)))))

(declare-fun b!7346954 () Bool)

(declare-fun tp!2086566 () Bool)

(assert (=> b!7346954 (= e!4399182 tp!2086566)))

(declare-fun b!7346955 () Bool)

(assert (=> b!7346955 (= e!4399185 e!4399181)))

(declare-fun res!2967369 () Bool)

(assert (=> b!7346955 (=> (not res!2967369) (not e!4399181))))

(assert (=> b!7346955 (= res!2967369 (set.member cWitness!61 lt!2611353))))

(assert (=> b!7346955 (= lt!2611353 (derivationStepZipperDown!2972 r1!2370 ct1!282 c!10362))))

(declare-fun b!7346956 () Bool)

(declare-fun res!2967367 () Bool)

(assert (=> b!7346956 (=> (not res!2967367) (not e!4399179))))

(assert (=> b!7346956 (= res!2967367 (set.member cWitness!61 lt!2611346))))

(declare-fun b!7346957 () Bool)

(assert (=> b!7346957 (= e!4399179 (not e!4399178))))

(declare-fun res!2967370 () Bool)

(assert (=> b!7346957 (=> res!2967370 e!4399178)))

(declare-fun lt!2611345 () Context!16172)

(assert (=> b!7346957 (= res!2967370 (not (set.member lt!2611345 lt!2611350)))))

(declare-fun lt!2611355 () Unit!165245)

(assert (=> b!7346957 (= lt!2611355 (lemmaConcatPreservesForall!1821 (exprs!8586 cWitness!61) (exprs!8586 ct2!378) lambda!456184))))

(assert (=> b!7346957 (set.member lt!2611345 (derivationStepZipperDown!2972 (regOne!38804 r1!2370) (Context!16173 (++!16964 lt!2611348 (exprs!8586 ct2!378))) c!10362))))

(assert (=> b!7346957 (= lt!2611345 (Context!16173 (++!16964 (exprs!8586 cWitness!61) (exprs!8586 ct2!378))))))

(declare-fun lt!2611354 () Unit!165245)

(assert (=> b!7346957 (= lt!2611354 (lemmaConcatPreservesForall!1821 lt!2611348 (exprs!8586 ct2!378) lambda!456184))))

(declare-fun lt!2611352 () Unit!165245)

(assert (=> b!7346957 (= lt!2611352 (lemmaConcatPreservesForall!1821 (exprs!8586 cWitness!61) (exprs!8586 ct2!378) lambda!456184))))

(declare-fun lt!2611344 () Unit!165245)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!73 (Regex!19146 Context!16172 Context!16172 Context!16172 C!38566) Unit!165245)

(assert (=> b!7346957 (= lt!2611344 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!73 (regOne!38804 r1!2370) lt!2611351 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7346958 () Bool)

(declare-fun tp!2086564 () Bool)

(declare-fun tp!2086565 () Bool)

(assert (=> b!7346958 (= e!4399177 (and tp!2086564 tp!2086565))))

(assert (= (and start!717490 res!2967368) b!7346955))

(assert (= (and b!7346955 res!2967369) b!7346946))

(assert (= (and b!7346946 res!2967371) b!7346948))

(assert (= (and b!7346948 res!2967365) b!7346953))

(assert (= (and b!7346953 res!2967372) b!7346945))

(assert (= (and b!7346945 res!2967366) b!7346956))

(assert (= (and b!7346956 res!2967367) b!7346957))

(assert (= (and b!7346957 (not res!2967370)) b!7346950))

(assert (= start!717490 b!7346954))

(assert (= start!717490 b!7346949))

(assert (= (and start!717490 (is-ElementMatch!19146 r1!2370)) b!7346951))

(assert (= (and start!717490 (is-Concat!27991 r1!2370)) b!7346944))

(assert (= (and start!717490 (is-Star!19146 r1!2370)) b!7346947))

(assert (= (and start!717490 (is-Union!19146 r1!2370)) b!7346958))

(assert (= start!717490 b!7346952))

(declare-fun m!8009106 () Bool)

(assert (=> b!7346946 m!8009106))

(declare-fun m!8009108 () Bool)

(assert (=> b!7346946 m!8009108))

(declare-fun m!8009110 () Bool)

(assert (=> b!7346946 m!8009110))

(declare-fun m!8009112 () Bool)

(assert (=> b!7346945 m!8009112))

(declare-fun m!8009114 () Bool)

(assert (=> b!7346945 m!8009114))

(declare-fun m!8009116 () Bool)

(assert (=> b!7346945 m!8009116))

(declare-fun m!8009118 () Bool)

(assert (=> b!7346956 m!8009118))

(declare-fun m!8009120 () Bool)

(assert (=> b!7346953 m!8009120))

(declare-fun m!8009122 () Bool)

(assert (=> b!7346948 m!8009122))

(declare-fun m!8009124 () Bool)

(assert (=> b!7346957 m!8009124))

(declare-fun m!8009126 () Bool)

(assert (=> b!7346957 m!8009126))

(declare-fun m!8009128 () Bool)

(assert (=> b!7346957 m!8009128))

(declare-fun m!8009130 () Bool)

(assert (=> b!7346957 m!8009130))

(declare-fun m!8009132 () Bool)

(assert (=> b!7346957 m!8009132))

(declare-fun m!8009134 () Bool)

(assert (=> b!7346957 m!8009134))

(declare-fun m!8009136 () Bool)

(assert (=> b!7346957 m!8009136))

(assert (=> b!7346957 m!8009132))

(declare-fun m!8009138 () Bool)

(assert (=> b!7346957 m!8009138))

(declare-fun m!8009140 () Bool)

(assert (=> b!7346950 m!8009140))

(assert (=> b!7346950 m!8009132))

(declare-fun m!8009142 () Bool)

(assert (=> b!7346955 m!8009142))

(declare-fun m!8009144 () Bool)

(assert (=> b!7346955 m!8009144))

(declare-fun m!8009146 () Bool)

(assert (=> start!717490 m!8009146))

(declare-fun m!8009148 () Bool)

(assert (=> start!717490 m!8009148))

(declare-fun m!8009150 () Bool)

(assert (=> start!717490 m!8009150))

(declare-fun m!8009152 () Bool)

(assert (=> start!717490 m!8009152))

(push 1)

(assert (not b!7346944))

(assert (not b!7346955))

(assert (not b!7346957))

(assert (not b!7346950))

(assert (not b!7346954))

(assert (not b!7346946))

(assert (not b!7346945))

(assert (not b!7346953))

(assert (not b!7346949))

(assert (not b!7346948))

(assert (not start!717490))

(assert (not b!7346952))

(assert (not b!7346958))

(assert (not b!7346947))

(assert tp_is_empty!48537)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7347023 () Bool)

(declare-fun e!4399228 () Bool)

(declare-fun e!4399231 () Bool)

(assert (=> b!7347023 (= e!4399228 e!4399231)))

(declare-fun res!2967411 () Bool)

(assert (=> b!7347023 (=> (not res!2967411) (not e!4399231))))

(declare-fun call!671444 () Bool)

(assert (=> b!7347023 (= res!2967411 call!671444)))

(declare-fun bm!671437 () Bool)

(declare-fun c!1364835 () Bool)

(assert (=> bm!671437 (= call!671444 (validRegex!9742 (ite c!1364835 (regTwo!38805 (regTwo!38804 r1!2370)) (regOne!38804 (regTwo!38804 r1!2370)))))))

(declare-fun b!7347024 () Bool)

(declare-fun e!4399229 () Bool)

(declare-fun e!4399232 () Bool)

(assert (=> b!7347024 (= e!4399229 e!4399232)))

(declare-fun c!1364834 () Bool)

(assert (=> b!7347024 (= c!1364834 (is-Star!19146 (regTwo!38804 r1!2370)))))

(declare-fun b!7347025 () Bool)

(declare-fun res!2967410 () Bool)

(assert (=> b!7347025 (=> res!2967410 e!4399228)))

(assert (=> b!7347025 (= res!2967410 (not (is-Concat!27991 (regTwo!38804 r1!2370))))))

(declare-fun e!4399233 () Bool)

(assert (=> b!7347025 (= e!4399233 e!4399228)))

(declare-fun b!7347026 () Bool)

(declare-fun call!671443 () Bool)

(assert (=> b!7347026 (= e!4399231 call!671443)))

(declare-fun b!7347027 () Bool)

(assert (=> b!7347027 (= e!4399232 e!4399233)))

(assert (=> b!7347027 (= c!1364835 (is-Union!19146 (regTwo!38804 r1!2370)))))

(declare-fun bm!671438 () Bool)

(declare-fun call!671442 () Bool)

(assert (=> bm!671438 (= call!671442 (validRegex!9742 (ite c!1364834 (reg!19475 (regTwo!38804 r1!2370)) (ite c!1364835 (regOne!38805 (regTwo!38804 r1!2370)) (regTwo!38804 (regTwo!38804 r1!2370))))))))

(declare-fun bm!671439 () Bool)

(assert (=> bm!671439 (= call!671443 call!671442)))

(declare-fun b!7347028 () Bool)

(declare-fun e!4399227 () Bool)

(assert (=> b!7347028 (= e!4399227 call!671442)))

(declare-fun d!2279808 () Bool)

(declare-fun res!2967409 () Bool)

(assert (=> d!2279808 (=> res!2967409 e!4399229)))

(assert (=> d!2279808 (= res!2967409 (is-ElementMatch!19146 (regTwo!38804 r1!2370)))))

(assert (=> d!2279808 (= (validRegex!9742 (regTwo!38804 r1!2370)) e!4399229)))

(declare-fun b!7347022 () Bool)

(assert (=> b!7347022 (= e!4399232 e!4399227)))

(declare-fun res!2967408 () Bool)

(assert (=> b!7347022 (= res!2967408 (not (nullable!8237 (reg!19475 (regTwo!38804 r1!2370)))))))

(assert (=> b!7347022 (=> (not res!2967408) (not e!4399227))))

(declare-fun b!7347029 () Bool)

(declare-fun e!4399230 () Bool)

(assert (=> b!7347029 (= e!4399230 call!671444)))

(declare-fun b!7347030 () Bool)

(declare-fun res!2967407 () Bool)

(assert (=> b!7347030 (=> (not res!2967407) (not e!4399230))))

(assert (=> b!7347030 (= res!2967407 call!671443)))

(assert (=> b!7347030 (= e!4399233 e!4399230)))

(assert (= (and d!2279808 (not res!2967409)) b!7347024))

(assert (= (and b!7347024 c!1364834) b!7347022))

(assert (= (and b!7347024 (not c!1364834)) b!7347027))

(assert (= (and b!7347022 res!2967408) b!7347028))

(assert (= (and b!7347027 c!1364835) b!7347030))

(assert (= (and b!7347027 (not c!1364835)) b!7347025))

(assert (= (and b!7347030 res!2967407) b!7347029))

(assert (= (and b!7347025 (not res!2967410)) b!7347023))

(assert (= (and b!7347023 res!2967411) b!7347026))

(assert (= (or b!7347030 b!7347026) bm!671439))

(assert (= (or b!7347029 b!7347023) bm!671437))

(assert (= (or b!7347028 bm!671439) bm!671438))

(declare-fun m!8009202 () Bool)

(assert (=> bm!671437 m!8009202))

(declare-fun m!8009204 () Bool)

(assert (=> bm!671438 m!8009204))

(declare-fun m!8009206 () Bool)

(assert (=> b!7347022 m!8009206))

(assert (=> b!7346953 d!2279808))

(declare-fun d!2279812 () Bool)

(declare-fun nullableFct!3277 (Regex!19146) Bool)

(assert (=> d!2279812 (= (nullable!8237 (regOne!38804 r1!2370)) (nullableFct!3277 (regOne!38804 r1!2370)))))

(declare-fun bs!1918946 () Bool)

(assert (= bs!1918946 d!2279812))

(declare-fun m!8009208 () Bool)

(assert (=> bs!1918946 m!8009208))

(assert (=> b!7346948 d!2279812))

(declare-fun b!7347032 () Bool)

(declare-fun e!4399235 () Bool)

(declare-fun e!4399238 () Bool)

(assert (=> b!7347032 (= e!4399235 e!4399238)))

(declare-fun res!2967416 () Bool)

(assert (=> b!7347032 (=> (not res!2967416) (not e!4399238))))

(declare-fun call!671447 () Bool)

(assert (=> b!7347032 (= res!2967416 call!671447)))

(declare-fun bm!671440 () Bool)

(declare-fun c!1364837 () Bool)

(assert (=> bm!671440 (= call!671447 (validRegex!9742 (ite c!1364837 (regTwo!38805 r1!2370) (regOne!38804 r1!2370))))))

(declare-fun b!7347033 () Bool)

(declare-fun e!4399236 () Bool)

(declare-fun e!4399239 () Bool)

(assert (=> b!7347033 (= e!4399236 e!4399239)))

(declare-fun c!1364836 () Bool)

(assert (=> b!7347033 (= c!1364836 (is-Star!19146 r1!2370))))

(declare-fun b!7347034 () Bool)

(declare-fun res!2967415 () Bool)

(assert (=> b!7347034 (=> res!2967415 e!4399235)))

(assert (=> b!7347034 (= res!2967415 (not (is-Concat!27991 r1!2370)))))

(declare-fun e!4399240 () Bool)

(assert (=> b!7347034 (= e!4399240 e!4399235)))

(declare-fun b!7347035 () Bool)

(declare-fun call!671446 () Bool)

(assert (=> b!7347035 (= e!4399238 call!671446)))

(declare-fun b!7347036 () Bool)

(assert (=> b!7347036 (= e!4399239 e!4399240)))

(assert (=> b!7347036 (= c!1364837 (is-Union!19146 r1!2370))))

(declare-fun bm!671441 () Bool)

(declare-fun call!671445 () Bool)

(assert (=> bm!671441 (= call!671445 (validRegex!9742 (ite c!1364836 (reg!19475 r1!2370) (ite c!1364837 (regOne!38805 r1!2370) (regTwo!38804 r1!2370)))))))

(declare-fun bm!671442 () Bool)

(assert (=> bm!671442 (= call!671446 call!671445)))

(declare-fun b!7347037 () Bool)

(declare-fun e!4399234 () Bool)

(assert (=> b!7347037 (= e!4399234 call!671445)))

(declare-fun d!2279814 () Bool)

(declare-fun res!2967414 () Bool)

(assert (=> d!2279814 (=> res!2967414 e!4399236)))

(assert (=> d!2279814 (= res!2967414 (is-ElementMatch!19146 r1!2370))))

(assert (=> d!2279814 (= (validRegex!9742 r1!2370) e!4399236)))

(declare-fun b!7347031 () Bool)

(assert (=> b!7347031 (= e!4399239 e!4399234)))

(declare-fun res!2967413 () Bool)

(assert (=> b!7347031 (= res!2967413 (not (nullable!8237 (reg!19475 r1!2370))))))

(assert (=> b!7347031 (=> (not res!2967413) (not e!4399234))))

(declare-fun b!7347038 () Bool)

(declare-fun e!4399237 () Bool)

(assert (=> b!7347038 (= e!4399237 call!671447)))

(declare-fun b!7347039 () Bool)

(declare-fun res!2967412 () Bool)

(assert (=> b!7347039 (=> (not res!2967412) (not e!4399237))))

(assert (=> b!7347039 (= res!2967412 call!671446)))

(assert (=> b!7347039 (= e!4399240 e!4399237)))

(assert (= (and d!2279814 (not res!2967414)) b!7347033))

(assert (= (and b!7347033 c!1364836) b!7347031))

(assert (= (and b!7347033 (not c!1364836)) b!7347036))

(assert (= (and b!7347031 res!2967413) b!7347037))

(assert (= (and b!7347036 c!1364837) b!7347039))

(assert (= (and b!7347036 (not c!1364837)) b!7347034))

(assert (= (and b!7347039 res!2967412) b!7347038))

(assert (= (and b!7347034 (not res!2967415)) b!7347032))

(assert (= (and b!7347032 res!2967416) b!7347035))

(assert (= (or b!7347039 b!7347035) bm!671442))

(assert (= (or b!7347038 b!7347032) bm!671440))

(assert (= (or b!7347037 bm!671442) bm!671441))

(declare-fun m!8009210 () Bool)

(assert (=> bm!671440 m!8009210))

(declare-fun m!8009212 () Bool)

(assert (=> bm!671441 m!8009212))

(declare-fun m!8009214 () Bool)

(assert (=> b!7347031 m!8009214))

(assert (=> start!717490 d!2279814))

(declare-fun bs!1918947 () Bool)

(declare-fun d!2279816 () Bool)

(assert (= bs!1918947 (and d!2279816 b!7346946)))

(declare-fun lambda!456200 () Int)

(assert (=> bs!1918947 (= lambda!456200 lambda!456184)))

(assert (=> d!2279816 (= (inv!91206 cWitness!61) (forall!17972 (exprs!8586 cWitness!61) lambda!456200))))

(declare-fun bs!1918948 () Bool)

(assert (= bs!1918948 d!2279816))

(declare-fun m!8009216 () Bool)

(assert (=> bs!1918948 m!8009216))

(assert (=> start!717490 d!2279816))

(declare-fun bs!1918949 () Bool)

(declare-fun d!2279818 () Bool)

(assert (= bs!1918949 (and d!2279818 b!7346946)))

(declare-fun lambda!456201 () Int)

(assert (=> bs!1918949 (= lambda!456201 lambda!456184)))

(declare-fun bs!1918950 () Bool)

(assert (= bs!1918950 (and d!2279818 d!2279816)))

(assert (=> bs!1918950 (= lambda!456201 lambda!456200)))

(assert (=> d!2279818 (= (inv!91206 ct1!282) (forall!17972 (exprs!8586 ct1!282) lambda!456201))))

(declare-fun bs!1918951 () Bool)

(assert (= bs!1918951 d!2279818))

(declare-fun m!8009218 () Bool)

(assert (=> bs!1918951 m!8009218))

(assert (=> start!717490 d!2279818))

(declare-fun bs!1918952 () Bool)

(declare-fun d!2279820 () Bool)

(assert (= bs!1918952 (and d!2279820 b!7346946)))

(declare-fun lambda!456202 () Int)

(assert (=> bs!1918952 (= lambda!456202 lambda!456184)))

(declare-fun bs!1918953 () Bool)

(assert (= bs!1918953 (and d!2279820 d!2279816)))

(assert (=> bs!1918953 (= lambda!456202 lambda!456200)))

(declare-fun bs!1918954 () Bool)

(assert (= bs!1918954 (and d!2279820 d!2279818)))

(assert (=> bs!1918954 (= lambda!456202 lambda!456201)))

(assert (=> d!2279820 (= (inv!91206 ct2!378) (forall!17972 (exprs!8586 ct2!378) lambda!456202))))

(declare-fun bs!1918955 () Bool)

(assert (= bs!1918955 d!2279820))

(declare-fun m!8009220 () Bool)

(assert (=> bs!1918955 m!8009220))

(assert (=> start!717490 d!2279820))

(declare-fun b!7347084 () Bool)

(declare-fun e!4399267 () (Set Context!16172))

(assert (=> b!7347084 (= e!4399267 (as set.empty (Set Context!16172)))))

(declare-fun b!7347085 () Bool)

(declare-fun c!1364860 () Bool)

(assert (=> b!7347085 (= c!1364860 (is-Star!19146 r1!2370))))

(declare-fun e!4399268 () (Set Context!16172))

(assert (=> b!7347085 (= e!4399268 e!4399267)))

(declare-fun b!7347086 () Bool)

(declare-fun e!4399266 () Bool)

(assert (=> b!7347086 (= e!4399266 (nullable!8237 (regOne!38804 r1!2370)))))

(declare-fun bm!671463 () Bool)

(declare-fun call!671469 () (Set Context!16172))

(declare-fun call!671473 () (Set Context!16172))

(assert (=> bm!671463 (= call!671469 call!671473)))

(declare-fun bm!671464 () Bool)

(declare-fun c!1364861 () Bool)

(declare-fun call!671468 () List!71642)

(declare-fun c!1364859 () Bool)

(assert (=> bm!671464 (= call!671468 ($colon$colon!3144 (exprs!8586 ct1!282) (ite (or c!1364861 c!1364859) (regTwo!38804 r1!2370) r1!2370)))))

(declare-fun b!7347088 () Bool)

(assert (=> b!7347088 (= e!4399267 call!671469)))

(declare-fun b!7347089 () Bool)

(declare-fun e!4399270 () (Set Context!16172))

(declare-fun e!4399269 () (Set Context!16172))

(assert (=> b!7347089 (= e!4399270 e!4399269)))

(declare-fun c!1364862 () Bool)

(assert (=> b!7347089 (= c!1364862 (is-Union!19146 r1!2370))))

(declare-fun bm!671465 () Bool)

(declare-fun call!671472 () (Set Context!16172))

(assert (=> bm!671465 (= call!671473 call!671472)))

(declare-fun bm!671466 () Bool)

(declare-fun call!671470 () List!71642)

(assert (=> bm!671466 (= call!671470 call!671468)))

(declare-fun b!7347090 () Bool)

(assert (=> b!7347090 (= e!4399268 call!671469)))

(declare-fun d!2279822 () Bool)

(declare-fun c!1364858 () Bool)

(assert (=> d!2279822 (= c!1364858 (and (is-ElementMatch!19146 r1!2370) (= (c!1364828 r1!2370) c!10362)))))

(assert (=> d!2279822 (= (derivationStepZipperDown!2972 r1!2370 ct1!282 c!10362) e!4399270)))

(declare-fun b!7347087 () Bool)

(declare-fun call!671471 () (Set Context!16172))

(assert (=> b!7347087 (= e!4399269 (set.union call!671471 call!671472))))

(declare-fun b!7347091 () Bool)

(declare-fun e!4399265 () (Set Context!16172))

(assert (=> b!7347091 (= e!4399265 e!4399268)))

(assert (=> b!7347091 (= c!1364859 (is-Concat!27991 r1!2370))))

(declare-fun bm!671467 () Bool)

(assert (=> bm!671467 (= call!671472 (derivationStepZipperDown!2972 (ite c!1364862 (regTwo!38805 r1!2370) (ite c!1364861 (regTwo!38804 r1!2370) (ite c!1364859 (regOne!38804 r1!2370) (reg!19475 r1!2370)))) (ite (or c!1364862 c!1364861) ct1!282 (Context!16173 call!671470)) c!10362))))

(declare-fun b!7347092 () Bool)

(assert (=> b!7347092 (= c!1364861 e!4399266)))

(declare-fun res!2967421 () Bool)

(assert (=> b!7347092 (=> (not res!2967421) (not e!4399266))))

(assert (=> b!7347092 (= res!2967421 (is-Concat!27991 r1!2370))))

(assert (=> b!7347092 (= e!4399269 e!4399265)))

(declare-fun b!7347093 () Bool)

(assert (=> b!7347093 (= e!4399265 (set.union call!671471 call!671473))))

(declare-fun b!7347094 () Bool)

(assert (=> b!7347094 (= e!4399270 (set.insert ct1!282 (as set.empty (Set Context!16172))))))

(declare-fun bm!671468 () Bool)

(assert (=> bm!671468 (= call!671471 (derivationStepZipperDown!2972 (ite c!1364862 (regOne!38805 r1!2370) (regOne!38804 r1!2370)) (ite c!1364862 ct1!282 (Context!16173 call!671468)) c!10362))))

(assert (= (and d!2279822 c!1364858) b!7347094))

(assert (= (and d!2279822 (not c!1364858)) b!7347089))

(assert (= (and b!7347089 c!1364862) b!7347087))

(assert (= (and b!7347089 (not c!1364862)) b!7347092))

(assert (= (and b!7347092 res!2967421) b!7347086))

(assert (= (and b!7347092 c!1364861) b!7347093))

(assert (= (and b!7347092 (not c!1364861)) b!7347091))

(assert (= (and b!7347091 c!1364859) b!7347090))

(assert (= (and b!7347091 (not c!1364859)) b!7347085))

(assert (= (and b!7347085 c!1364860) b!7347088))

(assert (= (and b!7347085 (not c!1364860)) b!7347084))

(assert (= (or b!7347090 b!7347088) bm!671466))

(assert (= (or b!7347090 b!7347088) bm!671463))

(assert (= (or b!7347093 bm!671463) bm!671465))

(assert (= (or b!7347093 bm!671466) bm!671464))

(assert (= (or b!7347087 bm!671465) bm!671467))

(assert (= (or b!7347087 b!7347093) bm!671468))

(declare-fun m!8009222 () Bool)

(assert (=> bm!671467 m!8009222))

(assert (=> b!7347086 m!8009122))

(declare-fun m!8009224 () Bool)

(assert (=> b!7347094 m!8009224))

(declare-fun m!8009226 () Bool)

(assert (=> bm!671468 m!8009226))

(declare-fun m!8009228 () Bool)

(assert (=> bm!671464 m!8009228))

(assert (=> b!7346955 d!2279822))

(declare-fun d!2279824 () Bool)

(declare-fun res!2967426 () Bool)

(declare-fun e!4399275 () Bool)

(assert (=> d!2279824 (=> res!2967426 e!4399275)))

(assert (=> d!2279824 (= res!2967426 (is-Nil!71518 (exprs!8586 ct1!282)))))

(assert (=> d!2279824 (= (forall!17972 (exprs!8586 ct1!282) lambda!456184) e!4399275)))

(declare-fun b!7347099 () Bool)

(declare-fun e!4399276 () Bool)

(assert (=> b!7347099 (= e!4399275 e!4399276)))

(declare-fun res!2967427 () Bool)

(assert (=> b!7347099 (=> (not res!2967427) (not e!4399276))))

(declare-fun dynLambda!29477 (Int Regex!19146) Bool)

(assert (=> b!7347099 (= res!2967427 (dynLambda!29477 lambda!456184 (h!77966 (exprs!8586 ct1!282))))))

(declare-fun b!7347100 () Bool)

(assert (=> b!7347100 (= e!4399276 (forall!17972 (t!386045 (exprs!8586 ct1!282)) lambda!456184))))

(assert (= (and d!2279824 (not res!2967426)) b!7347099))

(assert (= (and b!7347099 res!2967427) b!7347100))

(declare-fun b_lambda!284027 () Bool)

(assert (=> (not b_lambda!284027) (not b!7347099)))

(declare-fun m!8009230 () Bool)

(assert (=> b!7347099 m!8009230))

(declare-fun m!8009232 () Bool)

(assert (=> b!7347100 m!8009232))

(assert (=> b!7346950 d!2279824))

(declare-fun d!2279826 () Bool)

(assert (=> d!2279826 (forall!17972 (++!16964 (exprs!8586 cWitness!61) (exprs!8586 ct2!378)) lambda!456184)))

(declare-fun lt!2611394 () Unit!165245)

(declare-fun choose!57148 (List!71642 List!71642 Int) Unit!165245)

(assert (=> d!2279826 (= lt!2611394 (choose!57148 (exprs!8586 cWitness!61) (exprs!8586 ct2!378) lambda!456184))))

(assert (=> d!2279826 (forall!17972 (exprs!8586 cWitness!61) lambda!456184)))

(assert (=> d!2279826 (= (lemmaConcatPreservesForall!1821 (exprs!8586 cWitness!61) (exprs!8586 ct2!378) lambda!456184) lt!2611394)))

(declare-fun bs!1918956 () Bool)

(assert (= bs!1918956 d!2279826))

(assert (=> bs!1918956 m!8009134))

(assert (=> bs!1918956 m!8009134))

(declare-fun m!8009234 () Bool)

(assert (=> bs!1918956 m!8009234))

(declare-fun m!8009236 () Bool)

(assert (=> bs!1918956 m!8009236))

(declare-fun m!8009238 () Bool)

(assert (=> bs!1918956 m!8009238))

(assert (=> b!7346950 d!2279826))

(declare-fun b!7347101 () Bool)

(declare-fun e!4399279 () (Set Context!16172))

(assert (=> b!7347101 (= e!4399279 (as set.empty (Set Context!16172)))))

(declare-fun b!7347102 () Bool)

(declare-fun c!1364865 () Bool)

(assert (=> b!7347102 (= c!1364865 (is-Star!19146 (regTwo!38804 r1!2370)))))

(declare-fun e!4399280 () (Set Context!16172))

(assert (=> b!7347102 (= e!4399280 e!4399279)))

(declare-fun b!7347103 () Bool)

(declare-fun e!4399278 () Bool)

(assert (=> b!7347103 (= e!4399278 (nullable!8237 (regOne!38804 (regTwo!38804 r1!2370))))))

(declare-fun bm!671473 () Bool)

(declare-fun call!671479 () (Set Context!16172))

(declare-fun call!671483 () (Set Context!16172))

(assert (=> bm!671473 (= call!671479 call!671483)))

(declare-fun bm!671474 () Bool)

(declare-fun c!1364866 () Bool)

(declare-fun call!671478 () List!71642)

(declare-fun c!1364864 () Bool)

(assert (=> bm!671474 (= call!671478 ($colon$colon!3144 (exprs!8586 ct1!282) (ite (or c!1364866 c!1364864) (regTwo!38804 (regTwo!38804 r1!2370)) (regTwo!38804 r1!2370))))))

(declare-fun b!7347105 () Bool)

(assert (=> b!7347105 (= e!4399279 call!671479)))

(declare-fun b!7347106 () Bool)

(declare-fun e!4399282 () (Set Context!16172))

(declare-fun e!4399281 () (Set Context!16172))

(assert (=> b!7347106 (= e!4399282 e!4399281)))

(declare-fun c!1364867 () Bool)

(assert (=> b!7347106 (= c!1364867 (is-Union!19146 (regTwo!38804 r1!2370)))))

(declare-fun bm!671475 () Bool)

(declare-fun call!671482 () (Set Context!16172))

(assert (=> bm!671475 (= call!671483 call!671482)))

(declare-fun bm!671476 () Bool)

(declare-fun call!671480 () List!71642)

(assert (=> bm!671476 (= call!671480 call!671478)))

(declare-fun b!7347107 () Bool)

(assert (=> b!7347107 (= e!4399280 call!671479)))

(declare-fun d!2279828 () Bool)

(declare-fun c!1364863 () Bool)

(assert (=> d!2279828 (= c!1364863 (and (is-ElementMatch!19146 (regTwo!38804 r1!2370)) (= (c!1364828 (regTwo!38804 r1!2370)) c!10362)))))

(assert (=> d!2279828 (= (derivationStepZipperDown!2972 (regTwo!38804 r1!2370) ct1!282 c!10362) e!4399282)))

(declare-fun b!7347104 () Bool)

(declare-fun call!671481 () (Set Context!16172))

(assert (=> b!7347104 (= e!4399281 (set.union call!671481 call!671482))))

(declare-fun b!7347108 () Bool)

(declare-fun e!4399277 () (Set Context!16172))

(assert (=> b!7347108 (= e!4399277 e!4399280)))

(assert (=> b!7347108 (= c!1364864 (is-Concat!27991 (regTwo!38804 r1!2370)))))

(declare-fun bm!671477 () Bool)

(assert (=> bm!671477 (= call!671482 (derivationStepZipperDown!2972 (ite c!1364867 (regTwo!38805 (regTwo!38804 r1!2370)) (ite c!1364866 (regTwo!38804 (regTwo!38804 r1!2370)) (ite c!1364864 (regOne!38804 (regTwo!38804 r1!2370)) (reg!19475 (regTwo!38804 r1!2370))))) (ite (or c!1364867 c!1364866) ct1!282 (Context!16173 call!671480)) c!10362))))

(declare-fun b!7347109 () Bool)

(assert (=> b!7347109 (= c!1364866 e!4399278)))

(declare-fun res!2967428 () Bool)

(assert (=> b!7347109 (=> (not res!2967428) (not e!4399278))))

(assert (=> b!7347109 (= res!2967428 (is-Concat!27991 (regTwo!38804 r1!2370)))))

(assert (=> b!7347109 (= e!4399281 e!4399277)))

(declare-fun b!7347110 () Bool)

(assert (=> b!7347110 (= e!4399277 (set.union call!671481 call!671483))))

(declare-fun b!7347111 () Bool)

(assert (=> b!7347111 (= e!4399282 (set.insert ct1!282 (as set.empty (Set Context!16172))))))

(declare-fun bm!671478 () Bool)

(assert (=> bm!671478 (= call!671481 (derivationStepZipperDown!2972 (ite c!1364867 (regOne!38805 (regTwo!38804 r1!2370)) (regOne!38804 (regTwo!38804 r1!2370))) (ite c!1364867 ct1!282 (Context!16173 call!671478)) c!10362))))

(assert (= (and d!2279828 c!1364863) b!7347111))

(assert (= (and d!2279828 (not c!1364863)) b!7347106))

(assert (= (and b!7347106 c!1364867) b!7347104))

(assert (= (and b!7347106 (not c!1364867)) b!7347109))

(assert (= (and b!7347109 res!2967428) b!7347103))

(assert (= (and b!7347109 c!1364866) b!7347110))

(assert (= (and b!7347109 (not c!1364866)) b!7347108))

(assert (= (and b!7347108 c!1364864) b!7347107))

(assert (= (and b!7347108 (not c!1364864)) b!7347102))

(assert (= (and b!7347102 c!1364865) b!7347105))

(assert (= (and b!7347102 (not c!1364865)) b!7347101))

(assert (= (or b!7347107 b!7347105) bm!671476))

(assert (= (or b!7347107 b!7347105) bm!671473))

(assert (= (or b!7347110 bm!671473) bm!671475))

(assert (= (or b!7347110 bm!671476) bm!671474))

(assert (= (or b!7347104 bm!671475) bm!671477))

(assert (= (or b!7347104 b!7347110) bm!671478))

(declare-fun m!8009240 () Bool)

(assert (=> bm!671477 m!8009240))

(declare-fun m!8009242 () Bool)

(assert (=> b!7347103 m!8009242))

(assert (=> b!7347111 m!8009224))

(declare-fun m!8009244 () Bool)

(assert (=> bm!671478 m!8009244))

(declare-fun m!8009246 () Bool)

(assert (=> bm!671474 m!8009246))

(assert (=> b!7346945 d!2279828))

(declare-fun b!7347112 () Bool)

(declare-fun e!4399285 () (Set Context!16172))

(assert (=> b!7347112 (= e!4399285 (as set.empty (Set Context!16172)))))

(declare-fun b!7347113 () Bool)

(declare-fun c!1364870 () Bool)

(assert (=> b!7347113 (= c!1364870 (is-Star!19146 (regOne!38804 r1!2370)))))

(declare-fun e!4399286 () (Set Context!16172))

(assert (=> b!7347113 (= e!4399286 e!4399285)))

(declare-fun b!7347114 () Bool)

(declare-fun e!4399284 () Bool)

(assert (=> b!7347114 (= e!4399284 (nullable!8237 (regOne!38804 (regOne!38804 r1!2370))))))

(declare-fun bm!671479 () Bool)

(declare-fun call!671485 () (Set Context!16172))

(declare-fun call!671489 () (Set Context!16172))

(assert (=> bm!671479 (= call!671485 call!671489)))

(declare-fun c!1364869 () Bool)

(declare-fun c!1364871 () Bool)

(declare-fun call!671484 () List!71642)

(declare-fun bm!671480 () Bool)

(assert (=> bm!671480 (= call!671484 ($colon$colon!3144 (exprs!8586 lt!2611351) (ite (or c!1364871 c!1364869) (regTwo!38804 (regOne!38804 r1!2370)) (regOne!38804 r1!2370))))))

(declare-fun b!7347116 () Bool)

(assert (=> b!7347116 (= e!4399285 call!671485)))

(declare-fun b!7347117 () Bool)

(declare-fun e!4399288 () (Set Context!16172))

(declare-fun e!4399287 () (Set Context!16172))

(assert (=> b!7347117 (= e!4399288 e!4399287)))

(declare-fun c!1364872 () Bool)

(assert (=> b!7347117 (= c!1364872 (is-Union!19146 (regOne!38804 r1!2370)))))

(declare-fun bm!671481 () Bool)

(declare-fun call!671488 () (Set Context!16172))

(assert (=> bm!671481 (= call!671489 call!671488)))

(declare-fun bm!671482 () Bool)

(declare-fun call!671486 () List!71642)

(assert (=> bm!671482 (= call!671486 call!671484)))

(declare-fun b!7347118 () Bool)

(assert (=> b!7347118 (= e!4399286 call!671485)))

(declare-fun d!2279830 () Bool)

(declare-fun c!1364868 () Bool)

(assert (=> d!2279830 (= c!1364868 (and (is-ElementMatch!19146 (regOne!38804 r1!2370)) (= (c!1364828 (regOne!38804 r1!2370)) c!10362)))))

(assert (=> d!2279830 (= (derivationStepZipperDown!2972 (regOne!38804 r1!2370) lt!2611351 c!10362) e!4399288)))

(declare-fun b!7347115 () Bool)

(declare-fun call!671487 () (Set Context!16172))

(assert (=> b!7347115 (= e!4399287 (set.union call!671487 call!671488))))

(declare-fun b!7347119 () Bool)

(declare-fun e!4399283 () (Set Context!16172))

(assert (=> b!7347119 (= e!4399283 e!4399286)))

(assert (=> b!7347119 (= c!1364869 (is-Concat!27991 (regOne!38804 r1!2370)))))

(declare-fun bm!671483 () Bool)

(assert (=> bm!671483 (= call!671488 (derivationStepZipperDown!2972 (ite c!1364872 (regTwo!38805 (regOne!38804 r1!2370)) (ite c!1364871 (regTwo!38804 (regOne!38804 r1!2370)) (ite c!1364869 (regOne!38804 (regOne!38804 r1!2370)) (reg!19475 (regOne!38804 r1!2370))))) (ite (or c!1364872 c!1364871) lt!2611351 (Context!16173 call!671486)) c!10362))))

(declare-fun b!7347120 () Bool)

(assert (=> b!7347120 (= c!1364871 e!4399284)))

(declare-fun res!2967429 () Bool)

(assert (=> b!7347120 (=> (not res!2967429) (not e!4399284))))

(assert (=> b!7347120 (= res!2967429 (is-Concat!27991 (regOne!38804 r1!2370)))))

(assert (=> b!7347120 (= e!4399287 e!4399283)))

(declare-fun b!7347121 () Bool)

(assert (=> b!7347121 (= e!4399283 (set.union call!671487 call!671489))))

(declare-fun b!7347122 () Bool)

(assert (=> b!7347122 (= e!4399288 (set.insert lt!2611351 (as set.empty (Set Context!16172))))))

(declare-fun bm!671484 () Bool)

(assert (=> bm!671484 (= call!671487 (derivationStepZipperDown!2972 (ite c!1364872 (regOne!38805 (regOne!38804 r1!2370)) (regOne!38804 (regOne!38804 r1!2370))) (ite c!1364872 lt!2611351 (Context!16173 call!671484)) c!10362))))

(assert (= (and d!2279830 c!1364868) b!7347122))

(assert (= (and d!2279830 (not c!1364868)) b!7347117))

(assert (= (and b!7347117 c!1364872) b!7347115))

(assert (= (and b!7347117 (not c!1364872)) b!7347120))

(assert (= (and b!7347120 res!2967429) b!7347114))

(assert (= (and b!7347120 c!1364871) b!7347121))

(assert (= (and b!7347120 (not c!1364871)) b!7347119))

(assert (= (and b!7347119 c!1364869) b!7347118))

(assert (= (and b!7347119 (not c!1364869)) b!7347113))

(assert (= (and b!7347113 c!1364870) b!7347116))

(assert (= (and b!7347113 (not c!1364870)) b!7347112))

(assert (= (or b!7347118 b!7347116) bm!671482))

(assert (= (or b!7347118 b!7347116) bm!671479))

(assert (= (or b!7347121 bm!671479) bm!671481))

(assert (= (or b!7347121 bm!671482) bm!671480))

(assert (= (or b!7347115 bm!671481) bm!671483))

(assert (= (or b!7347115 b!7347121) bm!671484))

(declare-fun m!8009248 () Bool)

(assert (=> bm!671483 m!8009248))

(declare-fun m!8009250 () Bool)

(assert (=> b!7347114 m!8009250))

(declare-fun m!8009252 () Bool)

(assert (=> b!7347122 m!8009252))

(declare-fun m!8009254 () Bool)

(assert (=> bm!671484 m!8009254))

(declare-fun m!8009256 () Bool)

(assert (=> bm!671480 m!8009256))

(assert (=> b!7346945 d!2279830))

(declare-fun d!2279832 () Bool)

(assert (=> d!2279832 (= ($colon$colon!3144 (exprs!8586 ct1!282) (regTwo!38804 r1!2370)) (Cons!71518 (regTwo!38804 r1!2370) (exprs!8586 ct1!282)))))

(assert (=> b!7346945 d!2279832))

(declare-fun b!7347123 () Bool)

(declare-fun e!4399291 () (Set Context!16172))

(assert (=> b!7347123 (= e!4399291 (as set.empty (Set Context!16172)))))

(declare-fun b!7347124 () Bool)

(declare-fun c!1364875 () Bool)

(assert (=> b!7347124 (= c!1364875 (is-Star!19146 r1!2370))))

(declare-fun e!4399292 () (Set Context!16172))

(assert (=> b!7347124 (= e!4399292 e!4399291)))

(declare-fun b!7347125 () Bool)

(declare-fun e!4399290 () Bool)

(assert (=> b!7347125 (= e!4399290 (nullable!8237 (regOne!38804 r1!2370)))))

(declare-fun bm!671485 () Bool)

(declare-fun call!671491 () (Set Context!16172))

(declare-fun call!671495 () (Set Context!16172))

(assert (=> bm!671485 (= call!671491 call!671495)))

(declare-fun call!671490 () List!71642)

(declare-fun bm!671486 () Bool)

(declare-fun c!1364874 () Bool)

(declare-fun c!1364876 () Bool)

(assert (=> bm!671486 (= call!671490 ($colon$colon!3144 (exprs!8586 (Context!16173 (++!16964 (exprs!8586 ct1!282) (exprs!8586 ct2!378)))) (ite (or c!1364876 c!1364874) (regTwo!38804 r1!2370) r1!2370)))))

(declare-fun b!7347127 () Bool)

(assert (=> b!7347127 (= e!4399291 call!671491)))

(declare-fun b!7347128 () Bool)

(declare-fun e!4399294 () (Set Context!16172))

(declare-fun e!4399293 () (Set Context!16172))

(assert (=> b!7347128 (= e!4399294 e!4399293)))

(declare-fun c!1364877 () Bool)

(assert (=> b!7347128 (= c!1364877 (is-Union!19146 r1!2370))))

(declare-fun bm!671487 () Bool)

(declare-fun call!671494 () (Set Context!16172))

(assert (=> bm!671487 (= call!671495 call!671494)))

(declare-fun bm!671488 () Bool)

(declare-fun call!671492 () List!71642)

(assert (=> bm!671488 (= call!671492 call!671490)))

(declare-fun b!7347129 () Bool)

(assert (=> b!7347129 (= e!4399292 call!671491)))

(declare-fun d!2279834 () Bool)

(declare-fun c!1364873 () Bool)

(assert (=> d!2279834 (= c!1364873 (and (is-ElementMatch!19146 r1!2370) (= (c!1364828 r1!2370) c!10362)))))

(assert (=> d!2279834 (= (derivationStepZipperDown!2972 r1!2370 (Context!16173 (++!16964 (exprs!8586 ct1!282) (exprs!8586 ct2!378))) c!10362) e!4399294)))

(declare-fun b!7347126 () Bool)

(declare-fun call!671493 () (Set Context!16172))

(assert (=> b!7347126 (= e!4399293 (set.union call!671493 call!671494))))

(declare-fun b!7347130 () Bool)

(declare-fun e!4399289 () (Set Context!16172))

(assert (=> b!7347130 (= e!4399289 e!4399292)))

(assert (=> b!7347130 (= c!1364874 (is-Concat!27991 r1!2370))))

(declare-fun bm!671489 () Bool)

(assert (=> bm!671489 (= call!671494 (derivationStepZipperDown!2972 (ite c!1364877 (regTwo!38805 r1!2370) (ite c!1364876 (regTwo!38804 r1!2370) (ite c!1364874 (regOne!38804 r1!2370) (reg!19475 r1!2370)))) (ite (or c!1364877 c!1364876) (Context!16173 (++!16964 (exprs!8586 ct1!282) (exprs!8586 ct2!378))) (Context!16173 call!671492)) c!10362))))

(declare-fun b!7347131 () Bool)

(assert (=> b!7347131 (= c!1364876 e!4399290)))

(declare-fun res!2967430 () Bool)

(assert (=> b!7347131 (=> (not res!2967430) (not e!4399290))))

(assert (=> b!7347131 (= res!2967430 (is-Concat!27991 r1!2370))))

(assert (=> b!7347131 (= e!4399293 e!4399289)))

(declare-fun b!7347132 () Bool)

(assert (=> b!7347132 (= e!4399289 (set.union call!671493 call!671495))))

(declare-fun b!7347133 () Bool)

(assert (=> b!7347133 (= e!4399294 (set.insert (Context!16173 (++!16964 (exprs!8586 ct1!282) (exprs!8586 ct2!378))) (as set.empty (Set Context!16172))))))

(declare-fun bm!671490 () Bool)

(assert (=> bm!671490 (= call!671493 (derivationStepZipperDown!2972 (ite c!1364877 (regOne!38805 r1!2370) (regOne!38804 r1!2370)) (ite c!1364877 (Context!16173 (++!16964 (exprs!8586 ct1!282) (exprs!8586 ct2!378))) (Context!16173 call!671490)) c!10362))))

(assert (= (and d!2279834 c!1364873) b!7347133))

(assert (= (and d!2279834 (not c!1364873)) b!7347128))

(assert (= (and b!7347128 c!1364877) b!7347126))

(assert (= (and b!7347128 (not c!1364877)) b!7347131))

(assert (= (and b!7347131 res!2967430) b!7347125))

(assert (= (and b!7347131 c!1364876) b!7347132))

(assert (= (and b!7347131 (not c!1364876)) b!7347130))

(assert (= (and b!7347130 c!1364874) b!7347129))

(assert (= (and b!7347130 (not c!1364874)) b!7347124))

(assert (= (and b!7347124 c!1364875) b!7347127))

(assert (= (and b!7347124 (not c!1364875)) b!7347123))

(assert (= (or b!7347129 b!7347127) bm!671488))

(assert (= (or b!7347129 b!7347127) bm!671485))

(assert (= (or b!7347132 bm!671485) bm!671487))

(assert (= (or b!7347132 bm!671488) bm!671486))

(assert (= (or b!7347126 bm!671487) bm!671489))

(assert (= (or b!7347126 b!7347132) bm!671490))

(declare-fun m!8009258 () Bool)

(assert (=> bm!671489 m!8009258))

(assert (=> b!7347125 m!8009122))

(declare-fun m!8009260 () Bool)

(assert (=> b!7347133 m!8009260))

(declare-fun m!8009262 () Bool)

(assert (=> bm!671490 m!8009262))

(declare-fun m!8009264 () Bool)

(assert (=> bm!671486 m!8009264))

(assert (=> b!7346946 d!2279834))

(declare-fun b!7347153 () Bool)

(declare-fun e!4399306 () List!71642)

(assert (=> b!7347153 (= e!4399306 (exprs!8586 ct2!378))))

(declare-fun b!7347154 () Bool)

(assert (=> b!7347154 (= e!4399306 (Cons!71518 (h!77966 (exprs!8586 ct1!282)) (++!16964 (t!386045 (exprs!8586 ct1!282)) (exprs!8586 ct2!378))))))

(declare-fun d!2279836 () Bool)

(declare-fun e!4399305 () Bool)

(assert (=> d!2279836 e!4399305))

(declare-fun res!2967437 () Bool)

(assert (=> d!2279836 (=> (not res!2967437) (not e!4399305))))

(declare-fun lt!2611397 () List!71642)

(declare-fun content!15056 (List!71642) (Set Regex!19146))

(assert (=> d!2279836 (= res!2967437 (= (content!15056 lt!2611397) (set.union (content!15056 (exprs!8586 ct1!282)) (content!15056 (exprs!8586 ct2!378)))))))

(assert (=> d!2279836 (= lt!2611397 e!4399306)))

(declare-fun c!1364885 () Bool)

(assert (=> d!2279836 (= c!1364885 (is-Nil!71518 (exprs!8586 ct1!282)))))

(assert (=> d!2279836 (= (++!16964 (exprs!8586 ct1!282) (exprs!8586 ct2!378)) lt!2611397)))

(declare-fun b!7347155 () Bool)

(declare-fun res!2967436 () Bool)

(assert (=> b!7347155 (=> (not res!2967436) (not e!4399305))))

(declare-fun size!42035 (List!71642) Int)

(assert (=> b!7347155 (= res!2967436 (= (size!42035 lt!2611397) (+ (size!42035 (exprs!8586 ct1!282)) (size!42035 (exprs!8586 ct2!378)))))))

(declare-fun b!7347156 () Bool)

(assert (=> b!7347156 (= e!4399305 (or (not (= (exprs!8586 ct2!378) Nil!71518)) (= lt!2611397 (exprs!8586 ct1!282))))))

(assert (= (and d!2279836 c!1364885) b!7347153))

(assert (= (and d!2279836 (not c!1364885)) b!7347154))

(assert (= (and d!2279836 res!2967437) b!7347155))

(assert (= (and b!7347155 res!2967436) b!7347156))

(declare-fun m!8009274 () Bool)

(assert (=> b!7347154 m!8009274))

(declare-fun m!8009276 () Bool)

(assert (=> d!2279836 m!8009276))

(declare-fun m!8009278 () Bool)

(assert (=> d!2279836 m!8009278))

(declare-fun m!8009280 () Bool)

(assert (=> d!2279836 m!8009280))

(declare-fun m!8009282 () Bool)

(assert (=> b!7347155 m!8009282))

(declare-fun m!8009284 () Bool)

(assert (=> b!7347155 m!8009284))

(declare-fun m!8009286 () Bool)

(assert (=> b!7347155 m!8009286))

(assert (=> b!7346946 d!2279836))

(declare-fun d!2279840 () Bool)

(assert (=> d!2279840 (forall!17972 (++!16964 (exprs!8586 ct1!282) (exprs!8586 ct2!378)) lambda!456184)))

(declare-fun lt!2611398 () Unit!165245)

(assert (=> d!2279840 (= lt!2611398 (choose!57148 (exprs!8586 ct1!282) (exprs!8586 ct2!378) lambda!456184))))

(assert (=> d!2279840 (forall!17972 (exprs!8586 ct1!282) lambda!456184)))

(assert (=> d!2279840 (= (lemmaConcatPreservesForall!1821 (exprs!8586 ct1!282) (exprs!8586 ct2!378) lambda!456184) lt!2611398)))

(declare-fun bs!1918957 () Bool)

(assert (= bs!1918957 d!2279840))

(assert (=> bs!1918957 m!8009106))

(assert (=> bs!1918957 m!8009106))

(declare-fun m!8009288 () Bool)

(assert (=> bs!1918957 m!8009288))

(declare-fun m!8009290 () Bool)

(assert (=> bs!1918957 m!8009290))

(assert (=> bs!1918957 m!8009140))

(assert (=> b!7346946 d!2279840))

(declare-fun b!7347157 () Bool)

(declare-fun e!4399308 () List!71642)

(assert (=> b!7347157 (= e!4399308 (exprs!8586 ct2!378))))

(declare-fun b!7347158 () Bool)

(assert (=> b!7347158 (= e!4399308 (Cons!71518 (h!77966 lt!2611348) (++!16964 (t!386045 lt!2611348) (exprs!8586 ct2!378))))))

(declare-fun d!2279842 () Bool)

(declare-fun e!4399307 () Bool)

(assert (=> d!2279842 e!4399307))

(declare-fun res!2967439 () Bool)

(assert (=> d!2279842 (=> (not res!2967439) (not e!4399307))))

(declare-fun lt!2611399 () List!71642)

(assert (=> d!2279842 (= res!2967439 (= (content!15056 lt!2611399) (set.union (content!15056 lt!2611348) (content!15056 (exprs!8586 ct2!378)))))))

(assert (=> d!2279842 (= lt!2611399 e!4399308)))

(declare-fun c!1364886 () Bool)

(assert (=> d!2279842 (= c!1364886 (is-Nil!71518 lt!2611348))))

(assert (=> d!2279842 (= (++!16964 lt!2611348 (exprs!8586 ct2!378)) lt!2611399)))

(declare-fun b!7347159 () Bool)

(declare-fun res!2967438 () Bool)

(assert (=> b!7347159 (=> (not res!2967438) (not e!4399307))))

(assert (=> b!7347159 (= res!2967438 (= (size!42035 lt!2611399) (+ (size!42035 lt!2611348) (size!42035 (exprs!8586 ct2!378)))))))

(declare-fun b!7347160 () Bool)

(assert (=> b!7347160 (= e!4399307 (or (not (= (exprs!8586 ct2!378) Nil!71518)) (= lt!2611399 lt!2611348)))))

(assert (= (and d!2279842 c!1364886) b!7347157))

(assert (= (and d!2279842 (not c!1364886)) b!7347158))

(assert (= (and d!2279842 res!2967439) b!7347159))

(assert (= (and b!7347159 res!2967438) b!7347160))

(declare-fun m!8009292 () Bool)

(assert (=> b!7347158 m!8009292))

(declare-fun m!8009294 () Bool)

(assert (=> d!2279842 m!8009294))

(declare-fun m!8009296 () Bool)

(assert (=> d!2279842 m!8009296))

(assert (=> d!2279842 m!8009280))

(declare-fun m!8009298 () Bool)

(assert (=> b!7347159 m!8009298))

(declare-fun m!8009300 () Bool)

(assert (=> b!7347159 m!8009300))

(assert (=> b!7347159 m!8009286))

(assert (=> b!7346957 d!2279842))

(assert (=> b!7346957 d!2279826))

(declare-fun b!7347161 () Bool)

(declare-fun e!4399310 () List!71642)

(assert (=> b!7347161 (= e!4399310 (exprs!8586 ct2!378))))

(declare-fun b!7347162 () Bool)

(assert (=> b!7347162 (= e!4399310 (Cons!71518 (h!77966 (exprs!8586 cWitness!61)) (++!16964 (t!386045 (exprs!8586 cWitness!61)) (exprs!8586 ct2!378))))))

(declare-fun d!2279844 () Bool)

(declare-fun e!4399309 () Bool)

(assert (=> d!2279844 e!4399309))

(declare-fun res!2967441 () Bool)

(assert (=> d!2279844 (=> (not res!2967441) (not e!4399309))))

(declare-fun lt!2611400 () List!71642)

(assert (=> d!2279844 (= res!2967441 (= (content!15056 lt!2611400) (set.union (content!15056 (exprs!8586 cWitness!61)) (content!15056 (exprs!8586 ct2!378)))))))

(assert (=> d!2279844 (= lt!2611400 e!4399310)))

(declare-fun c!1364887 () Bool)

(assert (=> d!2279844 (= c!1364887 (is-Nil!71518 (exprs!8586 cWitness!61)))))

(assert (=> d!2279844 (= (++!16964 (exprs!8586 cWitness!61) (exprs!8586 ct2!378)) lt!2611400)))

(declare-fun b!7347163 () Bool)

(declare-fun res!2967440 () Bool)

(assert (=> b!7347163 (=> (not res!2967440) (not e!4399309))))

(assert (=> b!7347163 (= res!2967440 (= (size!42035 lt!2611400) (+ (size!42035 (exprs!8586 cWitness!61)) (size!42035 (exprs!8586 ct2!378)))))))

(declare-fun b!7347164 () Bool)

(assert (=> b!7347164 (= e!4399309 (or (not (= (exprs!8586 ct2!378) Nil!71518)) (= lt!2611400 (exprs!8586 cWitness!61))))))

(assert (= (and d!2279844 c!1364887) b!7347161))

(assert (= (and d!2279844 (not c!1364887)) b!7347162))

(assert (= (and d!2279844 res!2967441) b!7347163))

(assert (= (and b!7347163 res!2967440) b!7347164))

(declare-fun m!8009302 () Bool)

(assert (=> b!7347162 m!8009302))

(declare-fun m!8009304 () Bool)

(assert (=> d!2279844 m!8009304))

(declare-fun m!8009306 () Bool)

(assert (=> d!2279844 m!8009306))

(assert (=> d!2279844 m!8009280))

(declare-fun m!8009308 () Bool)

(assert (=> b!7347163 m!8009308))

(declare-fun m!8009310 () Bool)

(assert (=> b!7347163 m!8009310))

(assert (=> b!7347163 m!8009286))

(assert (=> b!7346957 d!2279844))

(declare-fun d!2279846 () Bool)

(assert (=> d!2279846 (forall!17972 (++!16964 lt!2611348 (exprs!8586 ct2!378)) lambda!456184)))

(declare-fun lt!2611401 () Unit!165245)

(assert (=> d!2279846 (= lt!2611401 (choose!57148 lt!2611348 (exprs!8586 ct2!378) lambda!456184))))

(assert (=> d!2279846 (forall!17972 lt!2611348 lambda!456184)))

(assert (=> d!2279846 (= (lemmaConcatPreservesForall!1821 lt!2611348 (exprs!8586 ct2!378) lambda!456184) lt!2611401)))

(declare-fun bs!1918958 () Bool)

(assert (= bs!1918958 d!2279846))

(assert (=> bs!1918958 m!8009126))

(assert (=> bs!1918958 m!8009126))

(declare-fun m!8009312 () Bool)

(assert (=> bs!1918958 m!8009312))

(declare-fun m!8009314 () Bool)

(assert (=> bs!1918958 m!8009314))

(declare-fun m!8009316 () Bool)

(assert (=> bs!1918958 m!8009316))

(assert (=> b!7346957 d!2279846))

(declare-fun b!7347165 () Bool)

(declare-fun e!4399313 () (Set Context!16172))

(assert (=> b!7347165 (= e!4399313 (as set.empty (Set Context!16172)))))

(declare-fun b!7347166 () Bool)

(declare-fun c!1364890 () Bool)

(assert (=> b!7347166 (= c!1364890 (is-Star!19146 (regOne!38804 r1!2370)))))

(declare-fun e!4399314 () (Set Context!16172))

(assert (=> b!7347166 (= e!4399314 e!4399313)))

(declare-fun b!7347167 () Bool)

(declare-fun e!4399312 () Bool)

(assert (=> b!7347167 (= e!4399312 (nullable!8237 (regOne!38804 (regOne!38804 r1!2370))))))

(declare-fun bm!671497 () Bool)

(declare-fun call!671503 () (Set Context!16172))

(declare-fun call!671507 () (Set Context!16172))

(assert (=> bm!671497 (= call!671503 call!671507)))

(declare-fun bm!671498 () Bool)

(declare-fun c!1364889 () Bool)

(declare-fun c!1364891 () Bool)

(declare-fun call!671502 () List!71642)

(assert (=> bm!671498 (= call!671502 ($colon$colon!3144 (exprs!8586 (Context!16173 (++!16964 lt!2611348 (exprs!8586 ct2!378)))) (ite (or c!1364891 c!1364889) (regTwo!38804 (regOne!38804 r1!2370)) (regOne!38804 r1!2370))))))

(declare-fun b!7347169 () Bool)

(assert (=> b!7347169 (= e!4399313 call!671503)))

(declare-fun b!7347170 () Bool)

(declare-fun e!4399316 () (Set Context!16172))

(declare-fun e!4399315 () (Set Context!16172))

(assert (=> b!7347170 (= e!4399316 e!4399315)))

(declare-fun c!1364892 () Bool)

(assert (=> b!7347170 (= c!1364892 (is-Union!19146 (regOne!38804 r1!2370)))))

(declare-fun bm!671499 () Bool)

(declare-fun call!671506 () (Set Context!16172))

(assert (=> bm!671499 (= call!671507 call!671506)))

(declare-fun bm!671500 () Bool)

(declare-fun call!671504 () List!71642)

(assert (=> bm!671500 (= call!671504 call!671502)))

(declare-fun b!7347171 () Bool)

(assert (=> b!7347171 (= e!4399314 call!671503)))

(declare-fun d!2279848 () Bool)

(declare-fun c!1364888 () Bool)

(assert (=> d!2279848 (= c!1364888 (and (is-ElementMatch!19146 (regOne!38804 r1!2370)) (= (c!1364828 (regOne!38804 r1!2370)) c!10362)))))

(assert (=> d!2279848 (= (derivationStepZipperDown!2972 (regOne!38804 r1!2370) (Context!16173 (++!16964 lt!2611348 (exprs!8586 ct2!378))) c!10362) e!4399316)))

(declare-fun b!7347168 () Bool)

(declare-fun call!671505 () (Set Context!16172))

(assert (=> b!7347168 (= e!4399315 (set.union call!671505 call!671506))))

(declare-fun b!7347172 () Bool)

(declare-fun e!4399311 () (Set Context!16172))

(assert (=> b!7347172 (= e!4399311 e!4399314)))

(assert (=> b!7347172 (= c!1364889 (is-Concat!27991 (regOne!38804 r1!2370)))))

(declare-fun bm!671501 () Bool)

(assert (=> bm!671501 (= call!671506 (derivationStepZipperDown!2972 (ite c!1364892 (regTwo!38805 (regOne!38804 r1!2370)) (ite c!1364891 (regTwo!38804 (regOne!38804 r1!2370)) (ite c!1364889 (regOne!38804 (regOne!38804 r1!2370)) (reg!19475 (regOne!38804 r1!2370))))) (ite (or c!1364892 c!1364891) (Context!16173 (++!16964 lt!2611348 (exprs!8586 ct2!378))) (Context!16173 call!671504)) c!10362))))

(declare-fun b!7347173 () Bool)

(assert (=> b!7347173 (= c!1364891 e!4399312)))

(declare-fun res!2967442 () Bool)

(assert (=> b!7347173 (=> (not res!2967442) (not e!4399312))))

(assert (=> b!7347173 (= res!2967442 (is-Concat!27991 (regOne!38804 r1!2370)))))

(assert (=> b!7347173 (= e!4399315 e!4399311)))

(declare-fun b!7347174 () Bool)

(assert (=> b!7347174 (= e!4399311 (set.union call!671505 call!671507))))

(declare-fun b!7347175 () Bool)

(assert (=> b!7347175 (= e!4399316 (set.insert (Context!16173 (++!16964 lt!2611348 (exprs!8586 ct2!378))) (as set.empty (Set Context!16172))))))

(declare-fun bm!671502 () Bool)

(assert (=> bm!671502 (= call!671505 (derivationStepZipperDown!2972 (ite c!1364892 (regOne!38805 (regOne!38804 r1!2370)) (regOne!38804 (regOne!38804 r1!2370))) (ite c!1364892 (Context!16173 (++!16964 lt!2611348 (exprs!8586 ct2!378))) (Context!16173 call!671502)) c!10362))))

(assert (= (and d!2279848 c!1364888) b!7347175))

(assert (= (and d!2279848 (not c!1364888)) b!7347170))

(assert (= (and b!7347170 c!1364892) b!7347168))

(assert (= (and b!7347170 (not c!1364892)) b!7347173))

(assert (= (and b!7347173 res!2967442) b!7347167))

(assert (= (and b!7347173 c!1364891) b!7347174))

(assert (= (and b!7347173 (not c!1364891)) b!7347172))

(assert (= (and b!7347172 c!1364889) b!7347171))

(assert (= (and b!7347172 (not c!1364889)) b!7347166))

(assert (= (and b!7347166 c!1364890) b!7347169))

(assert (= (and b!7347166 (not c!1364890)) b!7347165))

(assert (= (or b!7347171 b!7347169) bm!671500))

(assert (= (or b!7347171 b!7347169) bm!671497))

(assert (= (or b!7347174 bm!671497) bm!671499))

(assert (= (or b!7347174 bm!671500) bm!671498))

(assert (= (or b!7347168 bm!671499) bm!671501))

(assert (= (or b!7347168 b!7347174) bm!671502))

(declare-fun m!8009318 () Bool)

(assert (=> bm!671501 m!8009318))

(assert (=> b!7347167 m!8009250))

(declare-fun m!8009320 () Bool)

(assert (=> b!7347175 m!8009320))

(declare-fun m!8009322 () Bool)

(assert (=> bm!671502 m!8009322))

(declare-fun m!8009324 () Bool)

(assert (=> bm!671498 m!8009324))

(assert (=> b!7346957 d!2279848))

(declare-fun bs!1918959 () Bool)

(declare-fun d!2279850 () Bool)

(assert (= bs!1918959 (and d!2279850 b!7346946)))

(declare-fun lambda!456207 () Int)

(assert (=> bs!1918959 (= lambda!456207 lambda!456184)))

(declare-fun bs!1918960 () Bool)

(assert (= bs!1918960 (and d!2279850 d!2279816)))

(assert (=> bs!1918960 (= lambda!456207 lambda!456200)))

(declare-fun bs!1918961 () Bool)

(assert (= bs!1918961 (and d!2279850 d!2279818)))

(assert (=> bs!1918961 (= lambda!456207 lambda!456201)))

(declare-fun bs!1918962 () Bool)

(assert (= bs!1918962 (and d!2279850 d!2279820)))

(assert (=> bs!1918962 (= lambda!456207 lambda!456202)))

(assert (=> d!2279850 (set.member (Context!16173 (++!16964 (exprs!8586 cWitness!61) (exprs!8586 ct2!378))) (derivationStepZipperDown!2972 (regOne!38804 r1!2370) (Context!16173 (++!16964 (exprs!8586 lt!2611351) (exprs!8586 ct2!378))) c!10362))))

(declare-fun lt!2611412 () Unit!165245)

(assert (=> d!2279850 (= lt!2611412 (lemmaConcatPreservesForall!1821 (exprs!8586 lt!2611351) (exprs!8586 ct2!378) lambda!456207))))

(declare-fun lt!2611411 () Unit!165245)

(assert (=> d!2279850 (= lt!2611411 (lemmaConcatPreservesForall!1821 (exprs!8586 cWitness!61) (exprs!8586 ct2!378) lambda!456207))))

(declare-fun lt!2611410 () Unit!165245)

(declare-fun choose!57150 (Regex!19146 Context!16172 Context!16172 Context!16172 C!38566) Unit!165245)

(assert (=> d!2279850 (= lt!2611410 (choose!57150 (regOne!38804 r1!2370) lt!2611351 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279850 (validRegex!9742 (regOne!38804 r1!2370))))

(assert (=> d!2279850 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!73 (regOne!38804 r1!2370) lt!2611351 ct2!378 cWitness!61 c!10362) lt!2611410)))

(declare-fun bs!1918963 () Bool)

(assert (= bs!1918963 d!2279850))

(declare-fun m!8009326 () Bool)

(assert (=> bs!1918963 m!8009326))

(declare-fun m!8009328 () Bool)

(assert (=> bs!1918963 m!8009328))

(declare-fun m!8009330 () Bool)

(assert (=> bs!1918963 m!8009330))

(declare-fun m!8009332 () Bool)

(assert (=> bs!1918963 m!8009332))

(declare-fun m!8009334 () Bool)

(assert (=> bs!1918963 m!8009334))

(declare-fun m!8009336 () Bool)

(assert (=> bs!1918963 m!8009336))

(declare-fun m!8009338 () Bool)

(assert (=> bs!1918963 m!8009338))

(assert (=> bs!1918963 m!8009134))

(assert (=> b!7346957 d!2279850))

(declare-fun e!4399325 () Bool)

(assert (=> b!7346947 (= tp!2086570 e!4399325)))

(declare-fun b!7347200 () Bool)

(declare-fun tp!2086608 () Bool)

(assert (=> b!7347200 (= e!4399325 tp!2086608)))

(declare-fun b!7347201 () Bool)

(declare-fun tp!2086609 () Bool)

(declare-fun tp!2086607 () Bool)

(assert (=> b!7347201 (= e!4399325 (and tp!2086609 tp!2086607))))

(declare-fun b!7347199 () Bool)

(declare-fun tp!2086610 () Bool)

(declare-fun tp!2086606 () Bool)

(assert (=> b!7347199 (= e!4399325 (and tp!2086610 tp!2086606))))

(declare-fun b!7347198 () Bool)

(assert (=> b!7347198 (= e!4399325 tp_is_empty!48537)))

(assert (= (and b!7346947 (is-ElementMatch!19146 (reg!19475 r1!2370))) b!7347198))

(assert (= (and b!7346947 (is-Concat!27991 (reg!19475 r1!2370))) b!7347199))

(assert (= (and b!7346947 (is-Star!19146 (reg!19475 r1!2370))) b!7347200))

(assert (= (and b!7346947 (is-Union!19146 (reg!19475 r1!2370))) b!7347201))

(declare-fun e!4399326 () Bool)

(assert (=> b!7346958 (= tp!2086564 e!4399326)))

(declare-fun b!7347204 () Bool)

(declare-fun tp!2086613 () Bool)

(assert (=> b!7347204 (= e!4399326 tp!2086613)))

(declare-fun b!7347205 () Bool)

(declare-fun tp!2086614 () Bool)

(declare-fun tp!2086612 () Bool)

(assert (=> b!7347205 (= e!4399326 (and tp!2086614 tp!2086612))))

(declare-fun b!7347203 () Bool)

(declare-fun tp!2086615 () Bool)

(declare-fun tp!2086611 () Bool)

(assert (=> b!7347203 (= e!4399326 (and tp!2086615 tp!2086611))))

(declare-fun b!7347202 () Bool)

(assert (=> b!7347202 (= e!4399326 tp_is_empty!48537)))

(assert (= (and b!7346958 (is-ElementMatch!19146 (regOne!38805 r1!2370))) b!7347202))

(assert (= (and b!7346958 (is-Concat!27991 (regOne!38805 r1!2370))) b!7347203))

(assert (= (and b!7346958 (is-Star!19146 (regOne!38805 r1!2370))) b!7347204))

(assert (= (and b!7346958 (is-Union!19146 (regOne!38805 r1!2370))) b!7347205))

(declare-fun e!4399327 () Bool)

(assert (=> b!7346958 (= tp!2086565 e!4399327)))

(declare-fun b!7347208 () Bool)

(declare-fun tp!2086618 () Bool)

(assert (=> b!7347208 (= e!4399327 tp!2086618)))

(declare-fun b!7347209 () Bool)

(declare-fun tp!2086619 () Bool)

(declare-fun tp!2086617 () Bool)

(assert (=> b!7347209 (= e!4399327 (and tp!2086619 tp!2086617))))

(declare-fun b!7347207 () Bool)

(declare-fun tp!2086620 () Bool)

(declare-fun tp!2086616 () Bool)

(assert (=> b!7347207 (= e!4399327 (and tp!2086620 tp!2086616))))

(declare-fun b!7347206 () Bool)

(assert (=> b!7347206 (= e!4399327 tp_is_empty!48537)))

(assert (= (and b!7346958 (is-ElementMatch!19146 (regTwo!38805 r1!2370))) b!7347206))

(assert (= (and b!7346958 (is-Concat!27991 (regTwo!38805 r1!2370))) b!7347207))

(assert (= (and b!7346958 (is-Star!19146 (regTwo!38805 r1!2370))) b!7347208))

(assert (= (and b!7346958 (is-Union!19146 (regTwo!38805 r1!2370))) b!7347209))

(declare-fun b!7347214 () Bool)

(declare-fun e!4399330 () Bool)

(declare-fun tp!2086625 () Bool)

(declare-fun tp!2086626 () Bool)

(assert (=> b!7347214 (= e!4399330 (and tp!2086625 tp!2086626))))

(assert (=> b!7346954 (= tp!2086566 e!4399330)))

(assert (= (and b!7346954 (is-Cons!71518 (exprs!8586 cWitness!61))) b!7347214))

(declare-fun b!7347215 () Bool)

(declare-fun e!4399331 () Bool)

(declare-fun tp!2086627 () Bool)

(declare-fun tp!2086628 () Bool)

(assert (=> b!7347215 (= e!4399331 (and tp!2086627 tp!2086628))))

(assert (=> b!7346949 (= tp!2086567 e!4399331)))

(assert (= (and b!7346949 (is-Cons!71518 (exprs!8586 ct1!282))) b!7347215))

(declare-fun e!4399332 () Bool)

(assert (=> b!7346944 (= tp!2086569 e!4399332)))

(declare-fun b!7347218 () Bool)

(declare-fun tp!2086631 () Bool)

(assert (=> b!7347218 (= e!4399332 tp!2086631)))

(declare-fun b!7347219 () Bool)

(declare-fun tp!2086632 () Bool)

(declare-fun tp!2086630 () Bool)

(assert (=> b!7347219 (= e!4399332 (and tp!2086632 tp!2086630))))

(declare-fun b!7347217 () Bool)

(declare-fun tp!2086633 () Bool)

(declare-fun tp!2086629 () Bool)

(assert (=> b!7347217 (= e!4399332 (and tp!2086633 tp!2086629))))

(declare-fun b!7347216 () Bool)

(assert (=> b!7347216 (= e!4399332 tp_is_empty!48537)))

(assert (= (and b!7346944 (is-ElementMatch!19146 (regOne!38804 r1!2370))) b!7347216))

(assert (= (and b!7346944 (is-Concat!27991 (regOne!38804 r1!2370))) b!7347217))

(assert (= (and b!7346944 (is-Star!19146 (regOne!38804 r1!2370))) b!7347218))

(assert (= (and b!7346944 (is-Union!19146 (regOne!38804 r1!2370))) b!7347219))

(declare-fun e!4399333 () Bool)

(assert (=> b!7346944 (= tp!2086571 e!4399333)))

(declare-fun b!7347222 () Bool)

(declare-fun tp!2086636 () Bool)

(assert (=> b!7347222 (= e!4399333 tp!2086636)))

(declare-fun b!7347223 () Bool)

(declare-fun tp!2086637 () Bool)

(declare-fun tp!2086635 () Bool)

(assert (=> b!7347223 (= e!4399333 (and tp!2086637 tp!2086635))))

(declare-fun b!7347221 () Bool)

(declare-fun tp!2086638 () Bool)

(declare-fun tp!2086634 () Bool)

(assert (=> b!7347221 (= e!4399333 (and tp!2086638 tp!2086634))))

(declare-fun b!7347220 () Bool)

(assert (=> b!7347220 (= e!4399333 tp_is_empty!48537)))

(assert (= (and b!7346944 (is-ElementMatch!19146 (regTwo!38804 r1!2370))) b!7347220))

(assert (= (and b!7346944 (is-Concat!27991 (regTwo!38804 r1!2370))) b!7347221))

(assert (= (and b!7346944 (is-Star!19146 (regTwo!38804 r1!2370))) b!7347222))

(assert (= (and b!7346944 (is-Union!19146 (regTwo!38804 r1!2370))) b!7347223))

(declare-fun b!7347224 () Bool)

(declare-fun e!4399334 () Bool)

(declare-fun tp!2086639 () Bool)

(declare-fun tp!2086640 () Bool)

(assert (=> b!7347224 (= e!4399334 (and tp!2086639 tp!2086640))))

(assert (=> b!7346952 (= tp!2086568 e!4399334)))

(assert (= (and b!7346952 (is-Cons!71518 (exprs!8586 ct2!378))) b!7347224))

(declare-fun b_lambda!284029 () Bool)

(assert (= b_lambda!284027 (or b!7346946 b_lambda!284029)))

(declare-fun bs!1918964 () Bool)

(declare-fun d!2279854 () Bool)

(assert (= bs!1918964 (and d!2279854 b!7346946)))

(assert (=> bs!1918964 (= (dynLambda!29477 lambda!456184 (h!77966 (exprs!8586 ct1!282))) (validRegex!9742 (h!77966 (exprs!8586 ct1!282))))))

(declare-fun m!8009354 () Bool)

(assert (=> bs!1918964 m!8009354))

(assert (=> b!7347099 d!2279854))

(push 1)

(assert (not bs!1918964))

(assert (not b!7347155))

(assert (not b!7347218))

(assert (not b!7347154))

(assert (not b!7347199))

(assert (not bm!671501))

(assert (not b_lambda!284029))

(assert (not bm!671480))

(assert (not bm!671478))

(assert (not b!7347215))

(assert (not d!2279844))

(assert (not b!7347022))

(assert (not bm!671484))

(assert (not d!2279820))

(assert (not d!2279846))

(assert (not b!7347221))

(assert (not d!2279826))

(assert (not b!7347159))

(assert (not b!7347201))

(assert (not b!7347209))

(assert (not b!7347114))

(assert (not b!7347167))

(assert (not b!7347208))

(assert (not b!7347222))

(assert (not b!7347100))

(assert (not b!7347219))

(assert (not b!7347162))

(assert (not bm!671441))

(assert (not b!7347205))

(assert tp_is_empty!48537)

(assert (not b!7347224))

(assert (not d!2279850))

(assert (not b!7347214))

(assert (not b!7347217))

(assert (not d!2279842))

(assert (not b!7347031))

(assert (not b!7347163))

(assert (not d!2279816))

(assert (not bm!671468))

(assert (not bm!671490))

(assert (not bm!671477))

(assert (not b!7347200))

(assert (not b!7347207))

(assert (not b!7347086))

(assert (not b!7347204))

(assert (not d!2279818))

(assert (not b!7347158))

(assert (not bm!671483))

(assert (not bm!671486))

(assert (not d!2279840))

(assert (not b!7347125))

(assert (not bm!671498))

(assert (not b!7347103))

(assert (not bm!671437))

(assert (not b!7347203))

(assert (not b!7347223))

(assert (not bm!671489))

(assert (not bm!671474))

(assert (not bm!671440))

(assert (not bm!671467))

(assert (not bm!671502))

(assert (not bm!671438))

(assert (not d!2279836))

(assert (not d!2279812))

(assert (not bm!671464))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

