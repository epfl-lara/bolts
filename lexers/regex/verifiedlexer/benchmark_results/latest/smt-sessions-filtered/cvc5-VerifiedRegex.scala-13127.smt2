; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717410 () Bool)

(assert start!717410)

(declare-fun b!7346050 () Bool)

(declare-fun res!2967090 () Bool)

(declare-fun e!4398668 () Bool)

(assert (=> b!7346050 (=> (not res!2967090) (not e!4398668))))

(declare-datatypes ((C!38558 0))(
  ( (C!38559 (val!29639 Int)) )
))
(declare-datatypes ((Regex!19142 0))(
  ( (ElementMatch!19142 (c!1364628 C!38558)) (Concat!27987 (regOne!38796 Regex!19142) (regTwo!38796 Regex!19142)) (EmptyExpr!19142) (Star!19142 (reg!19471 Regex!19142)) (EmptyLang!19142) (Union!19142 (regOne!38797 Regex!19142) (regTwo!38797 Regex!19142)) )
))
(declare-fun r1!2370 () Regex!19142)

(declare-fun nullable!8233 (Regex!19142) Bool)

(assert (=> b!7346050 (= res!2967090 (nullable!8233 (regOne!38796 r1!2370)))))

(declare-fun res!2967094 () Bool)

(declare-fun e!4398672 () Bool)

(assert (=> start!717410 (=> (not res!2967094) (not e!4398672))))

(declare-fun validRegex!9738 (Regex!19142) Bool)

(assert (=> start!717410 (= res!2967094 (validRegex!9738 r1!2370))))

(assert (=> start!717410 e!4398672))

(declare-fun tp_is_empty!48529 () Bool)

(assert (=> start!717410 tp_is_empty!48529))

(declare-datatypes ((List!71638 0))(
  ( (Nil!71514) (Cons!71514 (h!77962 Regex!19142) (t!386037 List!71638)) )
))
(declare-datatypes ((Context!16164 0))(
  ( (Context!16165 (exprs!8582 List!71638)) )
))
(declare-fun cWitness!61 () Context!16164)

(declare-fun e!4398673 () Bool)

(declare-fun inv!91196 (Context!16164) Bool)

(assert (=> start!717410 (and (inv!91196 cWitness!61) e!4398673)))

(declare-fun ct1!282 () Context!16164)

(declare-fun e!4398669 () Bool)

(assert (=> start!717410 (and (inv!91196 ct1!282) e!4398669)))

(declare-fun e!4398671 () Bool)

(assert (=> start!717410 e!4398671))

(declare-fun ct2!378 () Context!16164)

(declare-fun e!4398667 () Bool)

(assert (=> start!717410 (and (inv!91196 ct2!378) e!4398667)))

(declare-fun b!7346051 () Bool)

(declare-fun e!4398675 () Bool)

(assert (=> b!7346051 (= e!4398675 e!4398668)))

(declare-fun res!2967093 () Bool)

(assert (=> b!7346051 (=> (not res!2967093) (not e!4398668))))

(declare-fun c!10362 () C!38558)

(assert (=> b!7346051 (= res!2967093 (and (or (not (is-ElementMatch!19142 r1!2370)) (not (= c!10362 (c!1364628 r1!2370)))) (not (is-Union!19142 r1!2370)) (is-Concat!27987 r1!2370)))))

(declare-fun lt!2611141 () (Set Context!16164))

(declare-fun derivationStepZipperDown!2968 (Regex!19142 Context!16164 C!38558) (Set Context!16164))

(declare-fun ++!16960 (List!71638 List!71638) List!71638)

(assert (=> b!7346051 (= lt!2611141 (derivationStepZipperDown!2968 r1!2370 (Context!16165 (++!16960 (exprs!8582 ct1!282) (exprs!8582 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165237 0))(
  ( (Unit!165238) )
))
(declare-fun lt!2611140 () Unit!165237)

(declare-fun lambda!456098 () Int)

(declare-fun lemmaConcatPreservesForall!1817 (List!71638 List!71638 Int) Unit!165237)

(assert (=> b!7346051 (= lt!2611140 (lemmaConcatPreservesForall!1817 (exprs!8582 ct1!282) (exprs!8582 ct2!378) lambda!456098))))

(declare-fun b!7346052 () Bool)

(assert (=> b!7346052 (= e!4398671 tp_is_empty!48529)))

(declare-fun b!7346053 () Bool)

(declare-fun tp!2086295 () Bool)

(declare-fun tp!2086290 () Bool)

(assert (=> b!7346053 (= e!4398671 (and tp!2086295 tp!2086290))))

(declare-fun b!7346054 () Bool)

(declare-fun tp!2086294 () Bool)

(declare-fun tp!2086288 () Bool)

(assert (=> b!7346054 (= e!4398671 (and tp!2086294 tp!2086288))))

(declare-fun b!7346055 () Bool)

(declare-fun tp!2086292 () Bool)

(assert (=> b!7346055 (= e!4398669 tp!2086292)))

(declare-fun b!7346056 () Bool)

(declare-fun e!4398674 () Bool)

(assert (=> b!7346056 (= e!4398668 e!4398674)))

(declare-fun res!2967091 () Bool)

(assert (=> b!7346056 (=> (not res!2967091) (not e!4398674))))

(declare-fun lt!2611137 () (Set Context!16164))

(declare-fun lt!2611134 () (Set Context!16164))

(assert (=> b!7346056 (= res!2967091 (= lt!2611134 (set.union lt!2611137 (derivationStepZipperDown!2968 (regTwo!38796 r1!2370) ct1!282 c!10362))))))

(declare-fun lt!2611144 () Context!16164)

(assert (=> b!7346056 (= lt!2611137 (derivationStepZipperDown!2968 (regOne!38796 r1!2370) lt!2611144 c!10362))))

(declare-fun lt!2611136 () List!71638)

(assert (=> b!7346056 (= lt!2611144 (Context!16165 lt!2611136))))

(declare-fun $colon$colon!3140 (List!71638 Regex!19142) List!71638)

(assert (=> b!7346056 (= lt!2611136 ($colon$colon!3140 (exprs!8582 ct1!282) (regTwo!38796 r1!2370)))))

(declare-fun b!7346057 () Bool)

(assert (=> b!7346057 (= e!4398672 e!4398675)))

(declare-fun res!2967089 () Bool)

(assert (=> b!7346057 (=> (not res!2967089) (not e!4398675))))

(assert (=> b!7346057 (= res!2967089 (set.member cWitness!61 lt!2611134))))

(assert (=> b!7346057 (= lt!2611134 (derivationStepZipperDown!2968 r1!2370 ct1!282 c!10362))))

(declare-fun b!7346058 () Bool)

(declare-fun res!2967092 () Bool)

(assert (=> b!7346058 (=> (not res!2967092) (not e!4398668))))

(assert (=> b!7346058 (= res!2967092 (validRegex!9738 (regTwo!38796 r1!2370)))))

(declare-fun b!7346059 () Bool)

(declare-fun tp!2086293 () Bool)

(assert (=> b!7346059 (= e!4398667 tp!2086293)))

(declare-fun b!7346060 () Bool)

(declare-fun tp!2086291 () Bool)

(assert (=> b!7346060 (= e!4398671 tp!2086291)))

(declare-fun b!7346061 () Bool)

(declare-fun e!4398670 () Bool)

(declare-fun forall!17968 (List!71638 Int) Bool)

(assert (=> b!7346061 (= e!4398670 (forall!17968 (exprs!8582 cWitness!61) lambda!456098))))

(declare-fun b!7346062 () Bool)

(declare-fun res!2967088 () Bool)

(assert (=> b!7346062 (=> (not res!2967088) (not e!4398674))))

(assert (=> b!7346062 (= res!2967088 (set.member cWitness!61 lt!2611137))))

(declare-fun b!7346063 () Bool)

(assert (=> b!7346063 (= e!4398674 (not e!4398670))))

(declare-fun res!2967087 () Bool)

(assert (=> b!7346063 (=> res!2967087 e!4398670)))

(declare-fun lt!2611135 () Context!16164)

(assert (=> b!7346063 (= res!2967087 (not (set.member lt!2611135 lt!2611141)))))

(declare-fun lt!2611143 () Unit!165237)

(assert (=> b!7346063 (= lt!2611143 (lemmaConcatPreservesForall!1817 (exprs!8582 cWitness!61) (exprs!8582 ct2!378) lambda!456098))))

(assert (=> b!7346063 (set.member lt!2611135 (derivationStepZipperDown!2968 (regOne!38796 r1!2370) (Context!16165 (++!16960 lt!2611136 (exprs!8582 ct2!378))) c!10362))))

(assert (=> b!7346063 (= lt!2611135 (Context!16165 (++!16960 (exprs!8582 cWitness!61) (exprs!8582 ct2!378))))))

(declare-fun lt!2611142 () Unit!165237)

(assert (=> b!7346063 (= lt!2611142 (lemmaConcatPreservesForall!1817 lt!2611136 (exprs!8582 ct2!378) lambda!456098))))

(declare-fun lt!2611139 () Unit!165237)

(assert (=> b!7346063 (= lt!2611139 (lemmaConcatPreservesForall!1817 (exprs!8582 cWitness!61) (exprs!8582 ct2!378) lambda!456098))))

(declare-fun lt!2611138 () Unit!165237)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!69 (Regex!19142 Context!16164 Context!16164 Context!16164 C!38558) Unit!165237)

(assert (=> b!7346063 (= lt!2611138 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!69 (regOne!38796 r1!2370) lt!2611144 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7346064 () Bool)

(declare-fun tp!2086289 () Bool)

(assert (=> b!7346064 (= e!4398673 tp!2086289)))

(assert (= (and start!717410 res!2967094) b!7346057))

(assert (= (and b!7346057 res!2967089) b!7346051))

(assert (= (and b!7346051 res!2967093) b!7346050))

(assert (= (and b!7346050 res!2967090) b!7346058))

(assert (= (and b!7346058 res!2967092) b!7346056))

(assert (= (and b!7346056 res!2967091) b!7346062))

(assert (= (and b!7346062 res!2967088) b!7346063))

(assert (= (and b!7346063 (not res!2967087)) b!7346061))

(assert (= start!717410 b!7346064))

(assert (= start!717410 b!7346055))

(assert (= (and start!717410 (is-ElementMatch!19142 r1!2370)) b!7346052))

(assert (= (and start!717410 (is-Concat!27987 r1!2370)) b!7346054))

(assert (= (and start!717410 (is-Star!19142 r1!2370)) b!7346060))

(assert (= (and start!717410 (is-Union!19142 r1!2370)) b!7346053))

(assert (= start!717410 b!7346059))

(declare-fun m!8008370 () Bool)

(assert (=> b!7346061 m!8008370))

(declare-fun m!8008372 () Bool)

(assert (=> b!7346062 m!8008372))

(declare-fun m!8008374 () Bool)

(assert (=> b!7346050 m!8008374))

(declare-fun m!8008376 () Bool)

(assert (=> start!717410 m!8008376))

(declare-fun m!8008378 () Bool)

(assert (=> start!717410 m!8008378))

(declare-fun m!8008380 () Bool)

(assert (=> start!717410 m!8008380))

(declare-fun m!8008382 () Bool)

(assert (=> start!717410 m!8008382))

(declare-fun m!8008384 () Bool)

(assert (=> b!7346056 m!8008384))

(declare-fun m!8008386 () Bool)

(assert (=> b!7346056 m!8008386))

(declare-fun m!8008388 () Bool)

(assert (=> b!7346056 m!8008388))

(declare-fun m!8008390 () Bool)

(assert (=> b!7346057 m!8008390))

(declare-fun m!8008392 () Bool)

(assert (=> b!7346057 m!8008392))

(declare-fun m!8008394 () Bool)

(assert (=> b!7346063 m!8008394))

(declare-fun m!8008396 () Bool)

(assert (=> b!7346063 m!8008396))

(declare-fun m!8008398 () Bool)

(assert (=> b!7346063 m!8008398))

(declare-fun m!8008400 () Bool)

(assert (=> b!7346063 m!8008400))

(declare-fun m!8008402 () Bool)

(assert (=> b!7346063 m!8008402))

(assert (=> b!7346063 m!8008396))

(declare-fun m!8008404 () Bool)

(assert (=> b!7346063 m!8008404))

(declare-fun m!8008406 () Bool)

(assert (=> b!7346063 m!8008406))

(declare-fun m!8008408 () Bool)

(assert (=> b!7346063 m!8008408))

(declare-fun m!8008410 () Bool)

(assert (=> b!7346051 m!8008410))

(declare-fun m!8008412 () Bool)

(assert (=> b!7346051 m!8008412))

(declare-fun m!8008414 () Bool)

(assert (=> b!7346051 m!8008414))

(declare-fun m!8008416 () Bool)

(assert (=> b!7346058 m!8008416))

(push 1)

(assert (not b!7346056))

(assert (not b!7346051))

(assert (not b!7346060))

(assert (not b!7346063))

(assert (not b!7346059))

(assert (not b!7346058))

(assert (not b!7346053))

(assert (not b!7346054))

(assert tp_is_empty!48529)

(assert (not b!7346050))

(assert (not b!7346057))

(assert (not b!7346064))

(assert (not b!7346055))

(assert (not start!717410))

(assert (not b!7346061))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1918865 () Bool)

(declare-fun d!2279630 () Bool)

(assert (= bs!1918865 (and d!2279630 b!7346051)))

(declare-fun lambda!456114 () Int)

(assert (=> bs!1918865 (= lambda!456114 lambda!456098)))

(assert (=> d!2279630 (set.member (Context!16165 (++!16960 (exprs!8582 cWitness!61) (exprs!8582 ct2!378))) (derivationStepZipperDown!2968 (regOne!38796 r1!2370) (Context!16165 (++!16960 (exprs!8582 lt!2611144) (exprs!8582 ct2!378))) c!10362))))

(declare-fun lt!2611186 () Unit!165237)

(assert (=> d!2279630 (= lt!2611186 (lemmaConcatPreservesForall!1817 (exprs!8582 lt!2611144) (exprs!8582 ct2!378) lambda!456114))))

(declare-fun lt!2611185 () Unit!165237)

(assert (=> d!2279630 (= lt!2611185 (lemmaConcatPreservesForall!1817 (exprs!8582 cWitness!61) (exprs!8582 ct2!378) lambda!456114))))

(declare-fun lt!2611184 () Unit!165237)

(declare-fun choose!57140 (Regex!19142 Context!16164 Context!16164 Context!16164 C!38558) Unit!165237)

(assert (=> d!2279630 (= lt!2611184 (choose!57140 (regOne!38796 r1!2370) lt!2611144 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2279630 (validRegex!9738 (regOne!38796 r1!2370))))

(assert (=> d!2279630 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!69 (regOne!38796 r1!2370) lt!2611144 ct2!378 cWitness!61 c!10362) lt!2611184)))

(declare-fun bs!1918866 () Bool)

(assert (= bs!1918866 d!2279630))

(declare-fun m!8008468 () Bool)

(assert (=> bs!1918866 m!8008468))

(declare-fun m!8008470 () Bool)

(assert (=> bs!1918866 m!8008470))

(declare-fun m!8008472 () Bool)

(assert (=> bs!1918866 m!8008472))

(declare-fun m!8008474 () Bool)

(assert (=> bs!1918866 m!8008474))

(declare-fun m!8008476 () Bool)

(assert (=> bs!1918866 m!8008476))

(assert (=> bs!1918866 m!8008404))

(declare-fun m!8008478 () Bool)

(assert (=> bs!1918866 m!8008478))

(declare-fun m!8008480 () Bool)

(assert (=> bs!1918866 m!8008480))

(assert (=> b!7346063 d!2279630))

(declare-fun call!671246 () List!71638)

(declare-fun call!671241 () (Set Context!16164))

(declare-fun c!1364648 () Bool)

(declare-fun bm!671236 () Bool)

(declare-fun c!1364647 () Bool)

(declare-fun c!1364649 () Bool)

(assert (=> bm!671236 (= call!671241 (derivationStepZipperDown!2968 (ite c!1364649 (regTwo!38797 (regOne!38796 r1!2370)) (ite c!1364648 (regTwo!38796 (regOne!38796 r1!2370)) (ite c!1364647 (regOne!38796 (regOne!38796 r1!2370)) (reg!19471 (regOne!38796 r1!2370))))) (ite (or c!1364649 c!1364648) (Context!16165 (++!16960 lt!2611136 (exprs!8582 ct2!378))) (Context!16165 call!671246)) c!10362))))

(declare-fun b!7346159 () Bool)

(declare-fun e!4398738 () (Set Context!16164))

(declare-fun call!671244 () (Set Context!16164))

(assert (=> b!7346159 (= e!4398738 call!671244)))

(declare-fun b!7346160 () Bool)

(assert (=> b!7346160 (= e!4398738 (as set.empty (Set Context!16164)))))

(declare-fun b!7346161 () Bool)

(declare-fun e!4398739 () (Set Context!16164))

(declare-fun call!671243 () (Set Context!16164))

(declare-fun call!671242 () (Set Context!16164))

(assert (=> b!7346161 (= e!4398739 (set.union call!671243 call!671242))))

(declare-fun b!7346162 () Bool)

(declare-fun e!4398741 () (Set Context!16164))

(assert (=> b!7346162 (= e!4398741 (set.union call!671243 call!671241))))

(declare-fun b!7346163 () Bool)

(declare-fun c!1364650 () Bool)

(assert (=> b!7346163 (= c!1364650 (is-Star!19142 (regOne!38796 r1!2370)))))

(declare-fun e!4398737 () (Set Context!16164))

(assert (=> b!7346163 (= e!4398737 e!4398738)))

(declare-fun bm!671238 () Bool)

(assert (=> bm!671238 (= call!671242 call!671241)))

(declare-fun b!7346164 () Bool)

(declare-fun e!4398740 () (Set Context!16164))

(assert (=> b!7346164 (= e!4398740 e!4398741)))

(assert (=> b!7346164 (= c!1364649 (is-Union!19142 (regOne!38796 r1!2370)))))

(declare-fun b!7346165 () Bool)

(declare-fun e!4398736 () Bool)

(assert (=> b!7346165 (= c!1364648 e!4398736)))

(declare-fun res!2967136 () Bool)

(assert (=> b!7346165 (=> (not res!2967136) (not e!4398736))))

(assert (=> b!7346165 (= res!2967136 (is-Concat!27987 (regOne!38796 r1!2370)))))

(assert (=> b!7346165 (= e!4398741 e!4398739)))

(declare-fun b!7346166 () Bool)

(assert (=> b!7346166 (= e!4398736 (nullable!8233 (regOne!38796 (regOne!38796 r1!2370))))))

(declare-fun b!7346167 () Bool)

(assert (=> b!7346167 (= e!4398737 call!671244)))

(declare-fun bm!671239 () Bool)

(assert (=> bm!671239 (= call!671244 call!671242)))

(declare-fun bm!671240 () Bool)

(declare-fun call!671245 () List!71638)

(assert (=> bm!671240 (= call!671243 (derivationStepZipperDown!2968 (ite c!1364649 (regOne!38797 (regOne!38796 r1!2370)) (regOne!38796 (regOne!38796 r1!2370))) (ite c!1364649 (Context!16165 (++!16960 lt!2611136 (exprs!8582 ct2!378))) (Context!16165 call!671245)) c!10362))))

(declare-fun b!7346168 () Bool)

(assert (=> b!7346168 (= e!4398739 e!4398737)))

(assert (=> b!7346168 (= c!1364647 (is-Concat!27987 (regOne!38796 r1!2370)))))

(declare-fun bm!671241 () Bool)

(assert (=> bm!671241 (= call!671246 call!671245)))

(declare-fun b!7346169 () Bool)

(assert (=> b!7346169 (= e!4398740 (set.insert (Context!16165 (++!16960 lt!2611136 (exprs!8582 ct2!378))) (as set.empty (Set Context!16164))))))

(declare-fun d!2279636 () Bool)

(declare-fun c!1364651 () Bool)

(assert (=> d!2279636 (= c!1364651 (and (is-ElementMatch!19142 (regOne!38796 r1!2370)) (= (c!1364628 (regOne!38796 r1!2370)) c!10362)))))

(assert (=> d!2279636 (= (derivationStepZipperDown!2968 (regOne!38796 r1!2370) (Context!16165 (++!16960 lt!2611136 (exprs!8582 ct2!378))) c!10362) e!4398740)))

(declare-fun bm!671237 () Bool)

(assert (=> bm!671237 (= call!671245 ($colon$colon!3140 (exprs!8582 (Context!16165 (++!16960 lt!2611136 (exprs!8582 ct2!378)))) (ite (or c!1364648 c!1364647) (regTwo!38796 (regOne!38796 r1!2370)) (regOne!38796 r1!2370))))))

(assert (= (and d!2279636 c!1364651) b!7346169))

(assert (= (and d!2279636 (not c!1364651)) b!7346164))

(assert (= (and b!7346164 c!1364649) b!7346162))

(assert (= (and b!7346164 (not c!1364649)) b!7346165))

(assert (= (and b!7346165 res!2967136) b!7346166))

(assert (= (and b!7346165 c!1364648) b!7346161))

(assert (= (and b!7346165 (not c!1364648)) b!7346168))

(assert (= (and b!7346168 c!1364647) b!7346167))

(assert (= (and b!7346168 (not c!1364647)) b!7346163))

(assert (= (and b!7346163 c!1364650) b!7346159))

(assert (= (and b!7346163 (not c!1364650)) b!7346160))

(assert (= (or b!7346167 b!7346159) bm!671241))

(assert (= (or b!7346167 b!7346159) bm!671239))

(assert (= (or b!7346161 bm!671239) bm!671238))

(assert (= (or b!7346161 bm!671241) bm!671237))

(assert (= (or b!7346162 bm!671238) bm!671236))

(assert (= (or b!7346162 b!7346161) bm!671240))

(declare-fun m!8008488 () Bool)

(assert (=> bm!671237 m!8008488))

(declare-fun m!8008490 () Bool)

(assert (=> b!7346169 m!8008490))

(declare-fun m!8008492 () Bool)

(assert (=> bm!671236 m!8008492))

(declare-fun m!8008494 () Bool)

(assert (=> b!7346166 m!8008494))

(declare-fun m!8008496 () Bool)

(assert (=> bm!671240 m!8008496))

(assert (=> b!7346063 d!2279636))

(declare-fun b!7346181 () Bool)

(declare-fun e!4398746 () Bool)

(declare-fun lt!2611189 () List!71638)

(assert (=> b!7346181 (= e!4398746 (or (not (= (exprs!8582 ct2!378) Nil!71514)) (= lt!2611189 (exprs!8582 cWitness!61))))))

(declare-fun b!7346179 () Bool)

(declare-fun e!4398747 () List!71638)

(assert (=> b!7346179 (= e!4398747 (Cons!71514 (h!77962 (exprs!8582 cWitness!61)) (++!16960 (t!386037 (exprs!8582 cWitness!61)) (exprs!8582 ct2!378))))))

(declare-fun d!2279640 () Bool)

(assert (=> d!2279640 e!4398746))

(declare-fun res!2967141 () Bool)

(assert (=> d!2279640 (=> (not res!2967141) (not e!4398746))))

(declare-fun content!15052 (List!71638) (Set Regex!19142))

(assert (=> d!2279640 (= res!2967141 (= (content!15052 lt!2611189) (set.union (content!15052 (exprs!8582 cWitness!61)) (content!15052 (exprs!8582 ct2!378)))))))

(assert (=> d!2279640 (= lt!2611189 e!4398747)))

(declare-fun c!1364654 () Bool)

(assert (=> d!2279640 (= c!1364654 (is-Nil!71514 (exprs!8582 cWitness!61)))))

(assert (=> d!2279640 (= (++!16960 (exprs!8582 cWitness!61) (exprs!8582 ct2!378)) lt!2611189)))

(declare-fun b!7346180 () Bool)

(declare-fun res!2967142 () Bool)

(assert (=> b!7346180 (=> (not res!2967142) (not e!4398746))))

(declare-fun size!42031 (List!71638) Int)

(assert (=> b!7346180 (= res!2967142 (= (size!42031 lt!2611189) (+ (size!42031 (exprs!8582 cWitness!61)) (size!42031 (exprs!8582 ct2!378)))))))

(declare-fun b!7346178 () Bool)

(assert (=> b!7346178 (= e!4398747 (exprs!8582 ct2!378))))

(assert (= (and d!2279640 c!1364654) b!7346178))

(assert (= (and d!2279640 (not c!1364654)) b!7346179))

(assert (= (and d!2279640 res!2967141) b!7346180))

(assert (= (and b!7346180 res!2967142) b!7346181))

(declare-fun m!8008498 () Bool)

(assert (=> b!7346179 m!8008498))

(declare-fun m!8008500 () Bool)

(assert (=> d!2279640 m!8008500))

(declare-fun m!8008502 () Bool)

(assert (=> d!2279640 m!8008502))

(declare-fun m!8008504 () Bool)

(assert (=> d!2279640 m!8008504))

(declare-fun m!8008506 () Bool)

(assert (=> b!7346180 m!8008506))

(declare-fun m!8008508 () Bool)

(assert (=> b!7346180 m!8008508))

(declare-fun m!8008510 () Bool)

(assert (=> b!7346180 m!8008510))

(assert (=> b!7346063 d!2279640))

(declare-fun d!2279642 () Bool)

(assert (=> d!2279642 (forall!17968 (++!16960 lt!2611136 (exprs!8582 ct2!378)) lambda!456098)))

(declare-fun lt!2611192 () Unit!165237)

(declare-fun choose!57141 (List!71638 List!71638 Int) Unit!165237)

(assert (=> d!2279642 (= lt!2611192 (choose!57141 lt!2611136 (exprs!8582 ct2!378) lambda!456098))))

(assert (=> d!2279642 (forall!17968 lt!2611136 lambda!456098)))

(assert (=> d!2279642 (= (lemmaConcatPreservesForall!1817 lt!2611136 (exprs!8582 ct2!378) lambda!456098) lt!2611192)))

(declare-fun bs!1918867 () Bool)

(assert (= bs!1918867 d!2279642))

(assert (=> bs!1918867 m!8008398))

(assert (=> bs!1918867 m!8008398))

(declare-fun m!8008512 () Bool)

(assert (=> bs!1918867 m!8008512))

(declare-fun m!8008514 () Bool)

(assert (=> bs!1918867 m!8008514))

(declare-fun m!8008516 () Bool)

(assert (=> bs!1918867 m!8008516))

(assert (=> b!7346063 d!2279642))

(declare-fun d!2279644 () Bool)

(assert (=> d!2279644 (forall!17968 (++!16960 (exprs!8582 cWitness!61) (exprs!8582 ct2!378)) lambda!456098)))

(declare-fun lt!2611193 () Unit!165237)

(assert (=> d!2279644 (= lt!2611193 (choose!57141 (exprs!8582 cWitness!61) (exprs!8582 ct2!378) lambda!456098))))

(assert (=> d!2279644 (forall!17968 (exprs!8582 cWitness!61) lambda!456098)))

(assert (=> d!2279644 (= (lemmaConcatPreservesForall!1817 (exprs!8582 cWitness!61) (exprs!8582 ct2!378) lambda!456098) lt!2611193)))

(declare-fun bs!1918868 () Bool)

(assert (= bs!1918868 d!2279644))

(assert (=> bs!1918868 m!8008404))

(assert (=> bs!1918868 m!8008404))

(declare-fun m!8008518 () Bool)

(assert (=> bs!1918868 m!8008518))

(declare-fun m!8008520 () Bool)

(assert (=> bs!1918868 m!8008520))

(assert (=> bs!1918868 m!8008370))

(assert (=> b!7346063 d!2279644))

(declare-fun e!4398750 () Bool)

(declare-fun b!7346189 () Bool)

(declare-fun lt!2611194 () List!71638)

(assert (=> b!7346189 (= e!4398750 (or (not (= (exprs!8582 ct2!378) Nil!71514)) (= lt!2611194 lt!2611136)))))

(declare-fun b!7346187 () Bool)

(declare-fun e!4398751 () List!71638)

(assert (=> b!7346187 (= e!4398751 (Cons!71514 (h!77962 lt!2611136) (++!16960 (t!386037 lt!2611136) (exprs!8582 ct2!378))))))

(declare-fun d!2279646 () Bool)

(assert (=> d!2279646 e!4398750))

(declare-fun res!2967143 () Bool)

(assert (=> d!2279646 (=> (not res!2967143) (not e!4398750))))

(assert (=> d!2279646 (= res!2967143 (= (content!15052 lt!2611194) (set.union (content!15052 lt!2611136) (content!15052 (exprs!8582 ct2!378)))))))

(assert (=> d!2279646 (= lt!2611194 e!4398751)))

(declare-fun c!1364657 () Bool)

(assert (=> d!2279646 (= c!1364657 (is-Nil!71514 lt!2611136))))

(assert (=> d!2279646 (= (++!16960 lt!2611136 (exprs!8582 ct2!378)) lt!2611194)))

(declare-fun b!7346188 () Bool)

(declare-fun res!2967144 () Bool)

(assert (=> b!7346188 (=> (not res!2967144) (not e!4398750))))

(assert (=> b!7346188 (= res!2967144 (= (size!42031 lt!2611194) (+ (size!42031 lt!2611136) (size!42031 (exprs!8582 ct2!378)))))))

(declare-fun b!7346186 () Bool)

(assert (=> b!7346186 (= e!4398751 (exprs!8582 ct2!378))))

(assert (= (and d!2279646 c!1364657) b!7346186))

(assert (= (and d!2279646 (not c!1364657)) b!7346187))

(assert (= (and d!2279646 res!2967143) b!7346188))

(assert (= (and b!7346188 res!2967144) b!7346189))

(declare-fun m!8008522 () Bool)

(assert (=> b!7346187 m!8008522))

(declare-fun m!8008524 () Bool)

(assert (=> d!2279646 m!8008524))

(declare-fun m!8008526 () Bool)

(assert (=> d!2279646 m!8008526))

(assert (=> d!2279646 m!8008504))

(declare-fun m!8008528 () Bool)

(assert (=> b!7346188 m!8008528))

(declare-fun m!8008530 () Bool)

(assert (=> b!7346188 m!8008530))

(assert (=> b!7346188 m!8008510))

(assert (=> b!7346063 d!2279646))

(declare-fun b!7346226 () Bool)

(declare-fun e!4398782 () Bool)

(declare-fun e!4398779 () Bool)

(assert (=> b!7346226 (= e!4398782 e!4398779)))

(declare-fun res!2967161 () Bool)

(assert (=> b!7346226 (=> (not res!2967161) (not e!4398779))))

(declare-fun call!671265 () Bool)

(assert (=> b!7346226 (= res!2967161 call!671265)))

(declare-fun b!7346227 () Bool)

(declare-fun call!671263 () Bool)

(assert (=> b!7346227 (= e!4398779 call!671263)))

(declare-fun bm!671256 () Bool)

(declare-fun c!1364670 () Bool)

(assert (=> bm!671256 (= call!671263 (validRegex!9738 (ite c!1364670 (regOne!38797 (regTwo!38796 r1!2370)) (regTwo!38796 (regTwo!38796 r1!2370)))))))

(declare-fun bm!671257 () Bool)

(declare-fun call!671264 () Bool)

(assert (=> bm!671257 (= call!671265 call!671264)))

(declare-fun b!7346228 () Bool)

(declare-fun res!2967157 () Bool)

(declare-fun e!4398781 () Bool)

(assert (=> b!7346228 (=> (not res!2967157) (not e!4398781))))

(assert (=> b!7346228 (= res!2967157 call!671263)))

(declare-fun e!4398776 () Bool)

(assert (=> b!7346228 (= e!4398776 e!4398781)))

(declare-fun b!7346229 () Bool)

(declare-fun res!2967159 () Bool)

(assert (=> b!7346229 (=> res!2967159 e!4398782)))

(assert (=> b!7346229 (= res!2967159 (not (is-Concat!27987 (regTwo!38796 r1!2370))))))

(assert (=> b!7346229 (= e!4398776 e!4398782)))

(declare-fun b!7346230 () Bool)

(declare-fun e!4398778 () Bool)

(assert (=> b!7346230 (= e!4398778 e!4398776)))

(assert (=> b!7346230 (= c!1364670 (is-Union!19142 (regTwo!38796 r1!2370)))))

(declare-fun b!7346231 () Bool)

(declare-fun e!4398777 () Bool)

(assert (=> b!7346231 (= e!4398777 call!671264)))

(declare-fun b!7346232 () Bool)

(declare-fun e!4398780 () Bool)

(assert (=> b!7346232 (= e!4398780 e!4398778)))

(declare-fun c!1364671 () Bool)

(assert (=> b!7346232 (= c!1364671 (is-Star!19142 (regTwo!38796 r1!2370)))))

(declare-fun b!7346233 () Bool)

(assert (=> b!7346233 (= e!4398778 e!4398777)))

(declare-fun res!2967158 () Bool)

(assert (=> b!7346233 (= res!2967158 (not (nullable!8233 (reg!19471 (regTwo!38796 r1!2370)))))))

(assert (=> b!7346233 (=> (not res!2967158) (not e!4398777))))

(declare-fun b!7346234 () Bool)

(assert (=> b!7346234 (= e!4398781 call!671265)))

(declare-fun d!2279648 () Bool)

(declare-fun res!2967160 () Bool)

(assert (=> d!2279648 (=> res!2967160 e!4398780)))

(assert (=> d!2279648 (= res!2967160 (is-ElementMatch!19142 (regTwo!38796 r1!2370)))))

(assert (=> d!2279648 (= (validRegex!9738 (regTwo!38796 r1!2370)) e!4398780)))

(declare-fun bm!671258 () Bool)

(assert (=> bm!671258 (= call!671264 (validRegex!9738 (ite c!1364671 (reg!19471 (regTwo!38796 r1!2370)) (ite c!1364670 (regTwo!38797 (regTwo!38796 r1!2370)) (regOne!38796 (regTwo!38796 r1!2370))))))))

(assert (= (and d!2279648 (not res!2967160)) b!7346232))

(assert (= (and b!7346232 c!1364671) b!7346233))

(assert (= (and b!7346232 (not c!1364671)) b!7346230))

(assert (= (and b!7346233 res!2967158) b!7346231))

(assert (= (and b!7346230 c!1364670) b!7346228))

(assert (= (and b!7346230 (not c!1364670)) b!7346229))

(assert (= (and b!7346228 res!2967157) b!7346234))

(assert (= (and b!7346229 (not res!2967159)) b!7346226))

(assert (= (and b!7346226 res!2967161) b!7346227))

(assert (= (or b!7346228 b!7346227) bm!671256))

(assert (= (or b!7346234 b!7346226) bm!671257))

(assert (= (or b!7346231 bm!671257) bm!671258))

(declare-fun m!8008532 () Bool)

(assert (=> bm!671256 m!8008532))

(declare-fun m!8008534 () Bool)

(assert (=> b!7346233 m!8008534))

(declare-fun m!8008536 () Bool)

(assert (=> bm!671258 m!8008536))

(assert (=> b!7346058 d!2279648))

(declare-fun c!1364673 () Bool)

(declare-fun call!671268 () (Set Context!16164))

(declare-fun bm!671261 () Bool)

(declare-fun call!671273 () List!71638)

(declare-fun c!1364672 () Bool)

(declare-fun c!1364674 () Bool)

(assert (=> bm!671261 (= call!671268 (derivationStepZipperDown!2968 (ite c!1364674 (regTwo!38797 (regTwo!38796 r1!2370)) (ite c!1364673 (regTwo!38796 (regTwo!38796 r1!2370)) (ite c!1364672 (regOne!38796 (regTwo!38796 r1!2370)) (reg!19471 (regTwo!38796 r1!2370))))) (ite (or c!1364674 c!1364673) ct1!282 (Context!16165 call!671273)) c!10362))))

(declare-fun b!7346235 () Bool)

(declare-fun e!4398785 () (Set Context!16164))

(declare-fun call!671271 () (Set Context!16164))

(assert (=> b!7346235 (= e!4398785 call!671271)))

(declare-fun b!7346236 () Bool)

(assert (=> b!7346236 (= e!4398785 (as set.empty (Set Context!16164)))))

(declare-fun b!7346237 () Bool)

(declare-fun e!4398786 () (Set Context!16164))

(declare-fun call!671270 () (Set Context!16164))

(declare-fun call!671269 () (Set Context!16164))

(assert (=> b!7346237 (= e!4398786 (set.union call!671270 call!671269))))

(declare-fun b!7346238 () Bool)

(declare-fun e!4398788 () (Set Context!16164))

(assert (=> b!7346238 (= e!4398788 (set.union call!671270 call!671268))))

(declare-fun b!7346239 () Bool)

(declare-fun c!1364675 () Bool)

(assert (=> b!7346239 (= c!1364675 (is-Star!19142 (regTwo!38796 r1!2370)))))

(declare-fun e!4398784 () (Set Context!16164))

(assert (=> b!7346239 (= e!4398784 e!4398785)))

(declare-fun bm!671263 () Bool)

(assert (=> bm!671263 (= call!671269 call!671268)))

(declare-fun b!7346240 () Bool)

(declare-fun e!4398787 () (Set Context!16164))

(assert (=> b!7346240 (= e!4398787 e!4398788)))

(assert (=> b!7346240 (= c!1364674 (is-Union!19142 (regTwo!38796 r1!2370)))))

(declare-fun b!7346241 () Bool)

(declare-fun e!4398783 () Bool)

(assert (=> b!7346241 (= c!1364673 e!4398783)))

(declare-fun res!2967162 () Bool)

(assert (=> b!7346241 (=> (not res!2967162) (not e!4398783))))

(assert (=> b!7346241 (= res!2967162 (is-Concat!27987 (regTwo!38796 r1!2370)))))

(assert (=> b!7346241 (= e!4398788 e!4398786)))

(declare-fun b!7346242 () Bool)

(assert (=> b!7346242 (= e!4398783 (nullable!8233 (regOne!38796 (regTwo!38796 r1!2370))))))

(declare-fun b!7346243 () Bool)

(assert (=> b!7346243 (= e!4398784 call!671271)))

(declare-fun bm!671264 () Bool)

(assert (=> bm!671264 (= call!671271 call!671269)))

(declare-fun call!671272 () List!71638)

(declare-fun bm!671265 () Bool)

(assert (=> bm!671265 (= call!671270 (derivationStepZipperDown!2968 (ite c!1364674 (regOne!38797 (regTwo!38796 r1!2370)) (regOne!38796 (regTwo!38796 r1!2370))) (ite c!1364674 ct1!282 (Context!16165 call!671272)) c!10362))))

(declare-fun b!7346244 () Bool)

(assert (=> b!7346244 (= e!4398786 e!4398784)))

(assert (=> b!7346244 (= c!1364672 (is-Concat!27987 (regTwo!38796 r1!2370)))))

(declare-fun bm!671266 () Bool)

(assert (=> bm!671266 (= call!671273 call!671272)))

(declare-fun b!7346245 () Bool)

(assert (=> b!7346245 (= e!4398787 (set.insert ct1!282 (as set.empty (Set Context!16164))))))

(declare-fun d!2279650 () Bool)

(declare-fun c!1364676 () Bool)

(assert (=> d!2279650 (= c!1364676 (and (is-ElementMatch!19142 (regTwo!38796 r1!2370)) (= (c!1364628 (regTwo!38796 r1!2370)) c!10362)))))

(assert (=> d!2279650 (= (derivationStepZipperDown!2968 (regTwo!38796 r1!2370) ct1!282 c!10362) e!4398787)))

(declare-fun bm!671262 () Bool)

(assert (=> bm!671262 (= call!671272 ($colon$colon!3140 (exprs!8582 ct1!282) (ite (or c!1364673 c!1364672) (regTwo!38796 (regTwo!38796 r1!2370)) (regTwo!38796 r1!2370))))))

(assert (= (and d!2279650 c!1364676) b!7346245))

(assert (= (and d!2279650 (not c!1364676)) b!7346240))

(assert (= (and b!7346240 c!1364674) b!7346238))

(assert (= (and b!7346240 (not c!1364674)) b!7346241))

(assert (= (and b!7346241 res!2967162) b!7346242))

(assert (= (and b!7346241 c!1364673) b!7346237))

(assert (= (and b!7346241 (not c!1364673)) b!7346244))

(assert (= (and b!7346244 c!1364672) b!7346243))

(assert (= (and b!7346244 (not c!1364672)) b!7346239))

(assert (= (and b!7346239 c!1364675) b!7346235))

(assert (= (and b!7346239 (not c!1364675)) b!7346236))

(assert (= (or b!7346243 b!7346235) bm!671266))

(assert (= (or b!7346243 b!7346235) bm!671264))

(assert (= (or b!7346237 bm!671264) bm!671263))

(assert (= (or b!7346237 bm!671266) bm!671262))

(assert (= (or b!7346238 bm!671263) bm!671261))

(assert (= (or b!7346238 b!7346237) bm!671265))

(declare-fun m!8008538 () Bool)

(assert (=> bm!671262 m!8008538))

(declare-fun m!8008540 () Bool)

(assert (=> b!7346245 m!8008540))

(declare-fun m!8008542 () Bool)

(assert (=> bm!671261 m!8008542))

(declare-fun m!8008544 () Bool)

(assert (=> b!7346242 m!8008544))

(declare-fun m!8008546 () Bool)

(assert (=> bm!671265 m!8008546))

(assert (=> b!7346056 d!2279650))

(declare-fun call!671274 () (Set Context!16164))

(declare-fun c!1364679 () Bool)

(declare-fun c!1364677 () Bool)

(declare-fun c!1364678 () Bool)

(declare-fun call!671279 () List!71638)

(declare-fun bm!671269 () Bool)

(assert (=> bm!671269 (= call!671274 (derivationStepZipperDown!2968 (ite c!1364679 (regTwo!38797 (regOne!38796 r1!2370)) (ite c!1364678 (regTwo!38796 (regOne!38796 r1!2370)) (ite c!1364677 (regOne!38796 (regOne!38796 r1!2370)) (reg!19471 (regOne!38796 r1!2370))))) (ite (or c!1364679 c!1364678) lt!2611144 (Context!16165 call!671279)) c!10362))))

(declare-fun b!7346246 () Bool)

(declare-fun e!4398791 () (Set Context!16164))

(declare-fun call!671277 () (Set Context!16164))

(assert (=> b!7346246 (= e!4398791 call!671277)))

(declare-fun b!7346247 () Bool)

(assert (=> b!7346247 (= e!4398791 (as set.empty (Set Context!16164)))))

(declare-fun b!7346248 () Bool)

(declare-fun e!4398792 () (Set Context!16164))

(declare-fun call!671276 () (Set Context!16164))

(declare-fun call!671275 () (Set Context!16164))

(assert (=> b!7346248 (= e!4398792 (set.union call!671276 call!671275))))

(declare-fun b!7346249 () Bool)

(declare-fun e!4398794 () (Set Context!16164))

(assert (=> b!7346249 (= e!4398794 (set.union call!671276 call!671274))))

(declare-fun b!7346250 () Bool)

(declare-fun c!1364680 () Bool)

(assert (=> b!7346250 (= c!1364680 (is-Star!19142 (regOne!38796 r1!2370)))))

(declare-fun e!4398790 () (Set Context!16164))

(assert (=> b!7346250 (= e!4398790 e!4398791)))

(declare-fun bm!671271 () Bool)

(assert (=> bm!671271 (= call!671275 call!671274)))

(declare-fun b!7346251 () Bool)

(declare-fun e!4398793 () (Set Context!16164))

(assert (=> b!7346251 (= e!4398793 e!4398794)))

(assert (=> b!7346251 (= c!1364679 (is-Union!19142 (regOne!38796 r1!2370)))))

(declare-fun b!7346252 () Bool)

(declare-fun e!4398789 () Bool)

(assert (=> b!7346252 (= c!1364678 e!4398789)))

(declare-fun res!2967163 () Bool)

(assert (=> b!7346252 (=> (not res!2967163) (not e!4398789))))

(assert (=> b!7346252 (= res!2967163 (is-Concat!27987 (regOne!38796 r1!2370)))))

(assert (=> b!7346252 (= e!4398794 e!4398792)))

(declare-fun b!7346253 () Bool)

(assert (=> b!7346253 (= e!4398789 (nullable!8233 (regOne!38796 (regOne!38796 r1!2370))))))

(declare-fun b!7346254 () Bool)

(assert (=> b!7346254 (= e!4398790 call!671277)))

(declare-fun bm!671272 () Bool)

(assert (=> bm!671272 (= call!671277 call!671275)))

(declare-fun bm!671273 () Bool)

(declare-fun call!671278 () List!71638)

(assert (=> bm!671273 (= call!671276 (derivationStepZipperDown!2968 (ite c!1364679 (regOne!38797 (regOne!38796 r1!2370)) (regOne!38796 (regOne!38796 r1!2370))) (ite c!1364679 lt!2611144 (Context!16165 call!671278)) c!10362))))

(declare-fun b!7346255 () Bool)

(assert (=> b!7346255 (= e!4398792 e!4398790)))

(assert (=> b!7346255 (= c!1364677 (is-Concat!27987 (regOne!38796 r1!2370)))))

(declare-fun bm!671274 () Bool)

(assert (=> bm!671274 (= call!671279 call!671278)))

(declare-fun b!7346256 () Bool)

(assert (=> b!7346256 (= e!4398793 (set.insert lt!2611144 (as set.empty (Set Context!16164))))))

(declare-fun d!2279652 () Bool)

(declare-fun c!1364681 () Bool)

(assert (=> d!2279652 (= c!1364681 (and (is-ElementMatch!19142 (regOne!38796 r1!2370)) (= (c!1364628 (regOne!38796 r1!2370)) c!10362)))))

(assert (=> d!2279652 (= (derivationStepZipperDown!2968 (regOne!38796 r1!2370) lt!2611144 c!10362) e!4398793)))

(declare-fun bm!671270 () Bool)

(assert (=> bm!671270 (= call!671278 ($colon$colon!3140 (exprs!8582 lt!2611144) (ite (or c!1364678 c!1364677) (regTwo!38796 (regOne!38796 r1!2370)) (regOne!38796 r1!2370))))))

(assert (= (and d!2279652 c!1364681) b!7346256))

(assert (= (and d!2279652 (not c!1364681)) b!7346251))

(assert (= (and b!7346251 c!1364679) b!7346249))

(assert (= (and b!7346251 (not c!1364679)) b!7346252))

(assert (= (and b!7346252 res!2967163) b!7346253))

(assert (= (and b!7346252 c!1364678) b!7346248))

(assert (= (and b!7346252 (not c!1364678)) b!7346255))

(assert (= (and b!7346255 c!1364677) b!7346254))

(assert (= (and b!7346255 (not c!1364677)) b!7346250))

(assert (= (and b!7346250 c!1364680) b!7346246))

(assert (= (and b!7346250 (not c!1364680)) b!7346247))

(assert (= (or b!7346254 b!7346246) bm!671274))

(assert (= (or b!7346254 b!7346246) bm!671272))

(assert (= (or b!7346248 bm!671272) bm!671271))

(assert (= (or b!7346248 bm!671274) bm!671270))

(assert (= (or b!7346249 bm!671271) bm!671269))

(assert (= (or b!7346249 b!7346248) bm!671273))

(declare-fun m!8008548 () Bool)

(assert (=> bm!671270 m!8008548))

(declare-fun m!8008550 () Bool)

(assert (=> b!7346256 m!8008550))

(declare-fun m!8008552 () Bool)

(assert (=> bm!671269 m!8008552))

(assert (=> b!7346253 m!8008494))

(declare-fun m!8008554 () Bool)

(assert (=> bm!671273 m!8008554))

(assert (=> b!7346056 d!2279652))

(declare-fun d!2279654 () Bool)

(assert (=> d!2279654 (= ($colon$colon!3140 (exprs!8582 ct1!282) (regTwo!38796 r1!2370)) (Cons!71514 (regTwo!38796 r1!2370) (exprs!8582 ct1!282)))))

(assert (=> b!7346056 d!2279654))

(declare-fun call!671280 () (Set Context!16164))

(declare-fun c!1364682 () Bool)

(declare-fun c!1364683 () Bool)

(declare-fun call!671285 () List!71638)

(declare-fun c!1364684 () Bool)

(declare-fun bm!671275 () Bool)

(assert (=> bm!671275 (= call!671280 (derivationStepZipperDown!2968 (ite c!1364684 (regTwo!38797 r1!2370) (ite c!1364683 (regTwo!38796 r1!2370) (ite c!1364682 (regOne!38796 r1!2370) (reg!19471 r1!2370)))) (ite (or c!1364684 c!1364683) (Context!16165 (++!16960 (exprs!8582 ct1!282) (exprs!8582 ct2!378))) (Context!16165 call!671285)) c!10362))))

(declare-fun b!7346257 () Bool)

(declare-fun e!4398797 () (Set Context!16164))

(declare-fun call!671283 () (Set Context!16164))

(assert (=> b!7346257 (= e!4398797 call!671283)))

(declare-fun b!7346258 () Bool)

(assert (=> b!7346258 (= e!4398797 (as set.empty (Set Context!16164)))))

(declare-fun b!7346259 () Bool)

(declare-fun e!4398798 () (Set Context!16164))

(declare-fun call!671282 () (Set Context!16164))

(declare-fun call!671281 () (Set Context!16164))

(assert (=> b!7346259 (= e!4398798 (set.union call!671282 call!671281))))

(declare-fun b!7346260 () Bool)

(declare-fun e!4398800 () (Set Context!16164))

(assert (=> b!7346260 (= e!4398800 (set.union call!671282 call!671280))))

(declare-fun b!7346261 () Bool)

(declare-fun c!1364685 () Bool)

(assert (=> b!7346261 (= c!1364685 (is-Star!19142 r1!2370))))

(declare-fun e!4398796 () (Set Context!16164))

(assert (=> b!7346261 (= e!4398796 e!4398797)))

(declare-fun bm!671277 () Bool)

(assert (=> bm!671277 (= call!671281 call!671280)))

(declare-fun b!7346262 () Bool)

(declare-fun e!4398799 () (Set Context!16164))

(assert (=> b!7346262 (= e!4398799 e!4398800)))

(assert (=> b!7346262 (= c!1364684 (is-Union!19142 r1!2370))))

(declare-fun b!7346263 () Bool)

(declare-fun e!4398795 () Bool)

(assert (=> b!7346263 (= c!1364683 e!4398795)))

(declare-fun res!2967164 () Bool)

(assert (=> b!7346263 (=> (not res!2967164) (not e!4398795))))

(assert (=> b!7346263 (= res!2967164 (is-Concat!27987 r1!2370))))

(assert (=> b!7346263 (= e!4398800 e!4398798)))

(declare-fun b!7346264 () Bool)

(assert (=> b!7346264 (= e!4398795 (nullable!8233 (regOne!38796 r1!2370)))))

(declare-fun b!7346265 () Bool)

(assert (=> b!7346265 (= e!4398796 call!671283)))

(declare-fun bm!671278 () Bool)

(assert (=> bm!671278 (= call!671283 call!671281)))

(declare-fun call!671284 () List!71638)

(declare-fun bm!671279 () Bool)

(assert (=> bm!671279 (= call!671282 (derivationStepZipperDown!2968 (ite c!1364684 (regOne!38797 r1!2370) (regOne!38796 r1!2370)) (ite c!1364684 (Context!16165 (++!16960 (exprs!8582 ct1!282) (exprs!8582 ct2!378))) (Context!16165 call!671284)) c!10362))))

(declare-fun b!7346266 () Bool)

(assert (=> b!7346266 (= e!4398798 e!4398796)))

(assert (=> b!7346266 (= c!1364682 (is-Concat!27987 r1!2370))))

(declare-fun bm!671280 () Bool)

(assert (=> bm!671280 (= call!671285 call!671284)))

(declare-fun b!7346267 () Bool)

(assert (=> b!7346267 (= e!4398799 (set.insert (Context!16165 (++!16960 (exprs!8582 ct1!282) (exprs!8582 ct2!378))) (as set.empty (Set Context!16164))))))

(declare-fun d!2279656 () Bool)

(declare-fun c!1364686 () Bool)

(assert (=> d!2279656 (= c!1364686 (and (is-ElementMatch!19142 r1!2370) (= (c!1364628 r1!2370) c!10362)))))

(assert (=> d!2279656 (= (derivationStepZipperDown!2968 r1!2370 (Context!16165 (++!16960 (exprs!8582 ct1!282) (exprs!8582 ct2!378))) c!10362) e!4398799)))

(declare-fun bm!671276 () Bool)

(assert (=> bm!671276 (= call!671284 ($colon$colon!3140 (exprs!8582 (Context!16165 (++!16960 (exprs!8582 ct1!282) (exprs!8582 ct2!378)))) (ite (or c!1364683 c!1364682) (regTwo!38796 r1!2370) r1!2370)))))

(assert (= (and d!2279656 c!1364686) b!7346267))

(assert (= (and d!2279656 (not c!1364686)) b!7346262))

(assert (= (and b!7346262 c!1364684) b!7346260))

(assert (= (and b!7346262 (not c!1364684)) b!7346263))

(assert (= (and b!7346263 res!2967164) b!7346264))

(assert (= (and b!7346263 c!1364683) b!7346259))

(assert (= (and b!7346263 (not c!1364683)) b!7346266))

(assert (= (and b!7346266 c!1364682) b!7346265))

(assert (= (and b!7346266 (not c!1364682)) b!7346261))

(assert (= (and b!7346261 c!1364685) b!7346257))

(assert (= (and b!7346261 (not c!1364685)) b!7346258))

(assert (= (or b!7346265 b!7346257) bm!671280))

(assert (= (or b!7346265 b!7346257) bm!671278))

(assert (= (or b!7346259 bm!671278) bm!671277))

(assert (= (or b!7346259 bm!671280) bm!671276))

(assert (= (or b!7346260 bm!671277) bm!671275))

(assert (= (or b!7346260 b!7346259) bm!671279))

(declare-fun m!8008556 () Bool)

(assert (=> bm!671276 m!8008556))

(declare-fun m!8008558 () Bool)

(assert (=> b!7346267 m!8008558))

(declare-fun m!8008560 () Bool)

(assert (=> bm!671275 m!8008560))

(assert (=> b!7346264 m!8008374))

(declare-fun m!8008562 () Bool)

(assert (=> bm!671279 m!8008562))

(assert (=> b!7346051 d!2279656))

(declare-fun lt!2611195 () List!71638)

(declare-fun e!4398801 () Bool)

(declare-fun b!7346271 () Bool)

(assert (=> b!7346271 (= e!4398801 (or (not (= (exprs!8582 ct2!378) Nil!71514)) (= lt!2611195 (exprs!8582 ct1!282))))))

(declare-fun b!7346269 () Bool)

(declare-fun e!4398802 () List!71638)

(assert (=> b!7346269 (= e!4398802 (Cons!71514 (h!77962 (exprs!8582 ct1!282)) (++!16960 (t!386037 (exprs!8582 ct1!282)) (exprs!8582 ct2!378))))))

(declare-fun d!2279658 () Bool)

(assert (=> d!2279658 e!4398801))

(declare-fun res!2967165 () Bool)

(assert (=> d!2279658 (=> (not res!2967165) (not e!4398801))))

(assert (=> d!2279658 (= res!2967165 (= (content!15052 lt!2611195) (set.union (content!15052 (exprs!8582 ct1!282)) (content!15052 (exprs!8582 ct2!378)))))))

(assert (=> d!2279658 (= lt!2611195 e!4398802)))

(declare-fun c!1364687 () Bool)

(assert (=> d!2279658 (= c!1364687 (is-Nil!71514 (exprs!8582 ct1!282)))))

(assert (=> d!2279658 (= (++!16960 (exprs!8582 ct1!282) (exprs!8582 ct2!378)) lt!2611195)))

(declare-fun b!7346270 () Bool)

(declare-fun res!2967166 () Bool)

(assert (=> b!7346270 (=> (not res!2967166) (not e!4398801))))

(assert (=> b!7346270 (= res!2967166 (= (size!42031 lt!2611195) (+ (size!42031 (exprs!8582 ct1!282)) (size!42031 (exprs!8582 ct2!378)))))))

(declare-fun b!7346268 () Bool)

(assert (=> b!7346268 (= e!4398802 (exprs!8582 ct2!378))))

(assert (= (and d!2279658 c!1364687) b!7346268))

(assert (= (and d!2279658 (not c!1364687)) b!7346269))

(assert (= (and d!2279658 res!2967165) b!7346270))

(assert (= (and b!7346270 res!2967166) b!7346271))

(declare-fun m!8008564 () Bool)

(assert (=> b!7346269 m!8008564))

(declare-fun m!8008566 () Bool)

(assert (=> d!2279658 m!8008566))

(declare-fun m!8008568 () Bool)

(assert (=> d!2279658 m!8008568))

(assert (=> d!2279658 m!8008504))

(declare-fun m!8008570 () Bool)

(assert (=> b!7346270 m!8008570))

(declare-fun m!8008572 () Bool)

(assert (=> b!7346270 m!8008572))

(assert (=> b!7346270 m!8008510))

(assert (=> b!7346051 d!2279658))

(declare-fun d!2279660 () Bool)

(assert (=> d!2279660 (forall!17968 (++!16960 (exprs!8582 ct1!282) (exprs!8582 ct2!378)) lambda!456098)))

(declare-fun lt!2611196 () Unit!165237)

(assert (=> d!2279660 (= lt!2611196 (choose!57141 (exprs!8582 ct1!282) (exprs!8582 ct2!378) lambda!456098))))

(assert (=> d!2279660 (forall!17968 (exprs!8582 ct1!282) lambda!456098)))

(assert (=> d!2279660 (= (lemmaConcatPreservesForall!1817 (exprs!8582 ct1!282) (exprs!8582 ct2!378) lambda!456098) lt!2611196)))

(declare-fun bs!1918869 () Bool)

(assert (= bs!1918869 d!2279660))

(assert (=> bs!1918869 m!8008410))

(assert (=> bs!1918869 m!8008410))

(declare-fun m!8008574 () Bool)

(assert (=> bs!1918869 m!8008574))

(declare-fun m!8008576 () Bool)

(assert (=> bs!1918869 m!8008576))

(declare-fun m!8008578 () Bool)

(assert (=> bs!1918869 m!8008578))

(assert (=> b!7346051 d!2279660))

(declare-fun bm!671281 () Bool)

(declare-fun c!1364690 () Bool)

(declare-fun c!1364688 () Bool)

(declare-fun c!1364689 () Bool)

(declare-fun call!671291 () List!71638)

(declare-fun call!671286 () (Set Context!16164))

(assert (=> bm!671281 (= call!671286 (derivationStepZipperDown!2968 (ite c!1364690 (regTwo!38797 r1!2370) (ite c!1364689 (regTwo!38796 r1!2370) (ite c!1364688 (regOne!38796 r1!2370) (reg!19471 r1!2370)))) (ite (or c!1364690 c!1364689) ct1!282 (Context!16165 call!671291)) c!10362))))

(declare-fun b!7346272 () Bool)

(declare-fun e!4398805 () (Set Context!16164))

(declare-fun call!671289 () (Set Context!16164))

(assert (=> b!7346272 (= e!4398805 call!671289)))

(declare-fun b!7346273 () Bool)

(assert (=> b!7346273 (= e!4398805 (as set.empty (Set Context!16164)))))

(declare-fun b!7346274 () Bool)

(declare-fun e!4398806 () (Set Context!16164))

(declare-fun call!671288 () (Set Context!16164))

(declare-fun call!671287 () (Set Context!16164))

(assert (=> b!7346274 (= e!4398806 (set.union call!671288 call!671287))))

(declare-fun b!7346275 () Bool)

(declare-fun e!4398808 () (Set Context!16164))

(assert (=> b!7346275 (= e!4398808 (set.union call!671288 call!671286))))

(declare-fun b!7346276 () Bool)

(declare-fun c!1364691 () Bool)

(assert (=> b!7346276 (= c!1364691 (is-Star!19142 r1!2370))))

(declare-fun e!4398804 () (Set Context!16164))

(assert (=> b!7346276 (= e!4398804 e!4398805)))

(declare-fun bm!671283 () Bool)

(assert (=> bm!671283 (= call!671287 call!671286)))

(declare-fun b!7346277 () Bool)

(declare-fun e!4398807 () (Set Context!16164))

(assert (=> b!7346277 (= e!4398807 e!4398808)))

(assert (=> b!7346277 (= c!1364690 (is-Union!19142 r1!2370))))

(declare-fun b!7346278 () Bool)

(declare-fun e!4398803 () Bool)

(assert (=> b!7346278 (= c!1364689 e!4398803)))

(declare-fun res!2967167 () Bool)

(assert (=> b!7346278 (=> (not res!2967167) (not e!4398803))))

(assert (=> b!7346278 (= res!2967167 (is-Concat!27987 r1!2370))))

(assert (=> b!7346278 (= e!4398808 e!4398806)))

(declare-fun b!7346279 () Bool)

(assert (=> b!7346279 (= e!4398803 (nullable!8233 (regOne!38796 r1!2370)))))

(declare-fun b!7346280 () Bool)

(assert (=> b!7346280 (= e!4398804 call!671289)))

(declare-fun bm!671284 () Bool)

(assert (=> bm!671284 (= call!671289 call!671287)))

(declare-fun bm!671285 () Bool)

(declare-fun call!671290 () List!71638)

(assert (=> bm!671285 (= call!671288 (derivationStepZipperDown!2968 (ite c!1364690 (regOne!38797 r1!2370) (regOne!38796 r1!2370)) (ite c!1364690 ct1!282 (Context!16165 call!671290)) c!10362))))

(declare-fun b!7346281 () Bool)

(assert (=> b!7346281 (= e!4398806 e!4398804)))

(assert (=> b!7346281 (= c!1364688 (is-Concat!27987 r1!2370))))

(declare-fun bm!671286 () Bool)

(assert (=> bm!671286 (= call!671291 call!671290)))

(declare-fun b!7346282 () Bool)

(assert (=> b!7346282 (= e!4398807 (set.insert ct1!282 (as set.empty (Set Context!16164))))))

(declare-fun d!2279662 () Bool)

(declare-fun c!1364692 () Bool)

(assert (=> d!2279662 (= c!1364692 (and (is-ElementMatch!19142 r1!2370) (= (c!1364628 r1!2370) c!10362)))))

(assert (=> d!2279662 (= (derivationStepZipperDown!2968 r1!2370 ct1!282 c!10362) e!4398807)))

(declare-fun bm!671282 () Bool)

(assert (=> bm!671282 (= call!671290 ($colon$colon!3140 (exprs!8582 ct1!282) (ite (or c!1364689 c!1364688) (regTwo!38796 r1!2370) r1!2370)))))

(assert (= (and d!2279662 c!1364692) b!7346282))

(assert (= (and d!2279662 (not c!1364692)) b!7346277))

(assert (= (and b!7346277 c!1364690) b!7346275))

(assert (= (and b!7346277 (not c!1364690)) b!7346278))

(assert (= (and b!7346278 res!2967167) b!7346279))

(assert (= (and b!7346278 c!1364689) b!7346274))

(assert (= (and b!7346278 (not c!1364689)) b!7346281))

(assert (= (and b!7346281 c!1364688) b!7346280))

(assert (= (and b!7346281 (not c!1364688)) b!7346276))

(assert (= (and b!7346276 c!1364691) b!7346272))

(assert (= (and b!7346276 (not c!1364691)) b!7346273))

(assert (= (or b!7346280 b!7346272) bm!671286))

(assert (= (or b!7346280 b!7346272) bm!671284))

(assert (= (or b!7346274 bm!671284) bm!671283))

(assert (= (or b!7346274 bm!671286) bm!671282))

(assert (= (or b!7346275 bm!671283) bm!671281))

(assert (= (or b!7346275 b!7346274) bm!671285))

(declare-fun m!8008580 () Bool)

(assert (=> bm!671282 m!8008580))

(assert (=> b!7346282 m!8008540))

(declare-fun m!8008582 () Bool)

(assert (=> bm!671281 m!8008582))

(assert (=> b!7346279 m!8008374))

(declare-fun m!8008584 () Bool)

(assert (=> bm!671285 m!8008584))

(assert (=> b!7346057 d!2279662))

(declare-fun d!2279664 () Bool)

(declare-fun nullableFct!3274 (Regex!19142) Bool)

(assert (=> d!2279664 (= (nullable!8233 (regOne!38796 r1!2370)) (nullableFct!3274 (regOne!38796 r1!2370)))))

(declare-fun bs!1918870 () Bool)

(assert (= bs!1918870 d!2279664))

(declare-fun m!8008586 () Bool)

(assert (=> bs!1918870 m!8008586))

(assert (=> b!7346050 d!2279664))

(declare-fun b!7346283 () Bool)

(declare-fun e!4398815 () Bool)

(declare-fun e!4398812 () Bool)

(assert (=> b!7346283 (= e!4398815 e!4398812)))

(declare-fun res!2967172 () Bool)

(assert (=> b!7346283 (=> (not res!2967172) (not e!4398812))))

(declare-fun call!671294 () Bool)

(assert (=> b!7346283 (= res!2967172 call!671294)))

(declare-fun b!7346284 () Bool)

(declare-fun call!671292 () Bool)

(assert (=> b!7346284 (= e!4398812 call!671292)))

(declare-fun bm!671287 () Bool)

(declare-fun c!1364693 () Bool)

(assert (=> bm!671287 (= call!671292 (validRegex!9738 (ite c!1364693 (regOne!38797 r1!2370) (regTwo!38796 r1!2370))))))

(declare-fun bm!671288 () Bool)

(declare-fun call!671293 () Bool)

(assert (=> bm!671288 (= call!671294 call!671293)))

(declare-fun b!7346285 () Bool)

(declare-fun res!2967168 () Bool)

(declare-fun e!4398814 () Bool)

(assert (=> b!7346285 (=> (not res!2967168) (not e!4398814))))

(assert (=> b!7346285 (= res!2967168 call!671292)))

(declare-fun e!4398809 () Bool)

(assert (=> b!7346285 (= e!4398809 e!4398814)))

(declare-fun b!7346286 () Bool)

(declare-fun res!2967170 () Bool)

(assert (=> b!7346286 (=> res!2967170 e!4398815)))

(assert (=> b!7346286 (= res!2967170 (not (is-Concat!27987 r1!2370)))))

(assert (=> b!7346286 (= e!4398809 e!4398815)))

(declare-fun b!7346287 () Bool)

(declare-fun e!4398811 () Bool)

(assert (=> b!7346287 (= e!4398811 e!4398809)))

(assert (=> b!7346287 (= c!1364693 (is-Union!19142 r1!2370))))

(declare-fun b!7346288 () Bool)

(declare-fun e!4398810 () Bool)

(assert (=> b!7346288 (= e!4398810 call!671293)))

(declare-fun b!7346289 () Bool)

(declare-fun e!4398813 () Bool)

(assert (=> b!7346289 (= e!4398813 e!4398811)))

(declare-fun c!1364694 () Bool)

(assert (=> b!7346289 (= c!1364694 (is-Star!19142 r1!2370))))

(declare-fun b!7346290 () Bool)

(assert (=> b!7346290 (= e!4398811 e!4398810)))

(declare-fun res!2967169 () Bool)

(assert (=> b!7346290 (= res!2967169 (not (nullable!8233 (reg!19471 r1!2370))))))

(assert (=> b!7346290 (=> (not res!2967169) (not e!4398810))))

(declare-fun b!7346291 () Bool)

(assert (=> b!7346291 (= e!4398814 call!671294)))

(declare-fun d!2279666 () Bool)

(declare-fun res!2967171 () Bool)

(assert (=> d!2279666 (=> res!2967171 e!4398813)))

(assert (=> d!2279666 (= res!2967171 (is-ElementMatch!19142 r1!2370))))

(assert (=> d!2279666 (= (validRegex!9738 r1!2370) e!4398813)))

(declare-fun bm!671289 () Bool)

(assert (=> bm!671289 (= call!671293 (validRegex!9738 (ite c!1364694 (reg!19471 r1!2370) (ite c!1364693 (regTwo!38797 r1!2370) (regOne!38796 r1!2370)))))))

(assert (= (and d!2279666 (not res!2967171)) b!7346289))

(assert (= (and b!7346289 c!1364694) b!7346290))

(assert (= (and b!7346289 (not c!1364694)) b!7346287))

(assert (= (and b!7346290 res!2967169) b!7346288))

(assert (= (and b!7346287 c!1364693) b!7346285))

(assert (= (and b!7346287 (not c!1364693)) b!7346286))

(assert (= (and b!7346285 res!2967168) b!7346291))

(assert (= (and b!7346286 (not res!2967170)) b!7346283))

(assert (= (and b!7346283 res!2967172) b!7346284))

(assert (= (or b!7346285 b!7346284) bm!671287))

(assert (= (or b!7346291 b!7346283) bm!671288))

(assert (= (or b!7346288 bm!671288) bm!671289))

(declare-fun m!8008588 () Bool)

(assert (=> bm!671287 m!8008588))

(declare-fun m!8008590 () Bool)

(assert (=> b!7346290 m!8008590))

(declare-fun m!8008592 () Bool)

(assert (=> bm!671289 m!8008592))

(assert (=> start!717410 d!2279666))

(declare-fun bs!1918871 () Bool)

(declare-fun d!2279668 () Bool)

(assert (= bs!1918871 (and d!2279668 b!7346051)))

(declare-fun lambda!456117 () Int)

(assert (=> bs!1918871 (= lambda!456117 lambda!456098)))

(declare-fun bs!1918872 () Bool)

(assert (= bs!1918872 (and d!2279668 d!2279630)))

(assert (=> bs!1918872 (= lambda!456117 lambda!456114)))

(assert (=> d!2279668 (= (inv!91196 cWitness!61) (forall!17968 (exprs!8582 cWitness!61) lambda!456117))))

(declare-fun bs!1918873 () Bool)

(assert (= bs!1918873 d!2279668))

(declare-fun m!8008594 () Bool)

(assert (=> bs!1918873 m!8008594))

(assert (=> start!717410 d!2279668))

(declare-fun bs!1918874 () Bool)

(declare-fun d!2279670 () Bool)

(assert (= bs!1918874 (and d!2279670 b!7346051)))

(declare-fun lambda!456118 () Int)

(assert (=> bs!1918874 (= lambda!456118 lambda!456098)))

(declare-fun bs!1918875 () Bool)

(assert (= bs!1918875 (and d!2279670 d!2279630)))

(assert (=> bs!1918875 (= lambda!456118 lambda!456114)))

(declare-fun bs!1918876 () Bool)

(assert (= bs!1918876 (and d!2279670 d!2279668)))

(assert (=> bs!1918876 (= lambda!456118 lambda!456117)))

(assert (=> d!2279670 (= (inv!91196 ct1!282) (forall!17968 (exprs!8582 ct1!282) lambda!456118))))

(declare-fun bs!1918877 () Bool)

(assert (= bs!1918877 d!2279670))

(declare-fun m!8008596 () Bool)

(assert (=> bs!1918877 m!8008596))

(assert (=> start!717410 d!2279670))

(declare-fun bs!1918878 () Bool)

(declare-fun d!2279672 () Bool)

(assert (= bs!1918878 (and d!2279672 b!7346051)))

(declare-fun lambda!456119 () Int)

(assert (=> bs!1918878 (= lambda!456119 lambda!456098)))

(declare-fun bs!1918879 () Bool)

(assert (= bs!1918879 (and d!2279672 d!2279630)))

(assert (=> bs!1918879 (= lambda!456119 lambda!456114)))

(declare-fun bs!1918880 () Bool)

(assert (= bs!1918880 (and d!2279672 d!2279668)))

(assert (=> bs!1918880 (= lambda!456119 lambda!456117)))

(declare-fun bs!1918881 () Bool)

(assert (= bs!1918881 (and d!2279672 d!2279670)))

(assert (=> bs!1918881 (= lambda!456119 lambda!456118)))

(assert (=> d!2279672 (= (inv!91196 ct2!378) (forall!17968 (exprs!8582 ct2!378) lambda!456119))))

(declare-fun bs!1918882 () Bool)

(assert (= bs!1918882 d!2279672))

(declare-fun m!8008598 () Bool)

(assert (=> bs!1918882 m!8008598))

(assert (=> start!717410 d!2279672))

(declare-fun d!2279674 () Bool)

(declare-fun res!2967178 () Bool)

(declare-fun e!4398826 () Bool)

(assert (=> d!2279674 (=> res!2967178 e!4398826)))

(assert (=> d!2279674 (= res!2967178 (is-Nil!71514 (exprs!8582 cWitness!61)))))

(assert (=> d!2279674 (= (forall!17968 (exprs!8582 cWitness!61) lambda!456098) e!4398826)))

(declare-fun b!7346307 () Bool)

(declare-fun e!4398827 () Bool)

(assert (=> b!7346307 (= e!4398826 e!4398827)))

(declare-fun res!2967179 () Bool)

(assert (=> b!7346307 (=> (not res!2967179) (not e!4398827))))

(declare-fun dynLambda!29473 (Int Regex!19142) Bool)

(assert (=> b!7346307 (= res!2967179 (dynLambda!29473 lambda!456098 (h!77962 (exprs!8582 cWitness!61))))))

(declare-fun b!7346308 () Bool)

(assert (=> b!7346308 (= e!4398827 (forall!17968 (t!386037 (exprs!8582 cWitness!61)) lambda!456098))))

(assert (= (and d!2279674 (not res!2967178)) b!7346307))

(assert (= (and b!7346307 res!2967179) b!7346308))

(declare-fun b_lambda!284003 () Bool)

(assert (=> (not b_lambda!284003) (not b!7346307)))

(declare-fun m!8008600 () Bool)

(assert (=> b!7346307 m!8008600))

(declare-fun m!8008602 () Bool)

(assert (=> b!7346308 m!8008602))

(assert (=> b!7346061 d!2279674))

(declare-fun b!7346321 () Bool)

(declare-fun e!4398830 () Bool)

(declare-fun tp!2086330 () Bool)

(assert (=> b!7346321 (= e!4398830 tp!2086330)))

(declare-fun b!7346322 () Bool)

(declare-fun tp!2086331 () Bool)

(declare-fun tp!2086333 () Bool)

(assert (=> b!7346322 (= e!4398830 (and tp!2086331 tp!2086333))))

(declare-fun b!7346319 () Bool)

(assert (=> b!7346319 (= e!4398830 tp_is_empty!48529)))

(assert (=> b!7346053 (= tp!2086295 e!4398830)))

(declare-fun b!7346320 () Bool)

(declare-fun tp!2086334 () Bool)

(declare-fun tp!2086332 () Bool)

(assert (=> b!7346320 (= e!4398830 (and tp!2086334 tp!2086332))))

(assert (= (and b!7346053 (is-ElementMatch!19142 (regOne!38797 r1!2370))) b!7346319))

(assert (= (and b!7346053 (is-Concat!27987 (regOne!38797 r1!2370))) b!7346320))

(assert (= (and b!7346053 (is-Star!19142 (regOne!38797 r1!2370))) b!7346321))

(assert (= (and b!7346053 (is-Union!19142 (regOne!38797 r1!2370))) b!7346322))

(declare-fun b!7346325 () Bool)

(declare-fun e!4398832 () Bool)

(declare-fun tp!2086335 () Bool)

(assert (=> b!7346325 (= e!4398832 tp!2086335)))

(declare-fun b!7346326 () Bool)

(declare-fun tp!2086336 () Bool)

(declare-fun tp!2086338 () Bool)

(assert (=> b!7346326 (= e!4398832 (and tp!2086336 tp!2086338))))

(declare-fun b!7346323 () Bool)

(assert (=> b!7346323 (= e!4398832 tp_is_empty!48529)))

(assert (=> b!7346053 (= tp!2086290 e!4398832)))

(declare-fun b!7346324 () Bool)

(declare-fun tp!2086339 () Bool)

(declare-fun tp!2086337 () Bool)

(assert (=> b!7346324 (= e!4398832 (and tp!2086339 tp!2086337))))

(assert (= (and b!7346053 (is-ElementMatch!19142 (regTwo!38797 r1!2370))) b!7346323))

(assert (= (and b!7346053 (is-Concat!27987 (regTwo!38797 r1!2370))) b!7346324))

(assert (= (and b!7346053 (is-Star!19142 (regTwo!38797 r1!2370))) b!7346325))

(assert (= (and b!7346053 (is-Union!19142 (regTwo!38797 r1!2370))) b!7346326))

(declare-fun b!7346340 () Bool)

(declare-fun e!4398838 () Bool)

(declare-fun tp!2086340 () Bool)

(assert (=> b!7346340 (= e!4398838 tp!2086340)))

(declare-fun b!7346341 () Bool)

(declare-fun tp!2086341 () Bool)

(declare-fun tp!2086343 () Bool)

(assert (=> b!7346341 (= e!4398838 (and tp!2086341 tp!2086343))))

(declare-fun b!7346338 () Bool)

(assert (=> b!7346338 (= e!4398838 tp_is_empty!48529)))

(assert (=> b!7346060 (= tp!2086291 e!4398838)))

(declare-fun b!7346339 () Bool)

(declare-fun tp!2086344 () Bool)

(declare-fun tp!2086342 () Bool)

(assert (=> b!7346339 (= e!4398838 (and tp!2086344 tp!2086342))))

(assert (= (and b!7346060 (is-ElementMatch!19142 (reg!19471 r1!2370))) b!7346338))

(assert (= (and b!7346060 (is-Concat!27987 (reg!19471 r1!2370))) b!7346339))

(assert (= (and b!7346060 (is-Star!19142 (reg!19471 r1!2370))) b!7346340))

(assert (= (and b!7346060 (is-Union!19142 (reg!19471 r1!2370))) b!7346341))

(declare-fun b!7346346 () Bool)

(declare-fun e!4398841 () Bool)

(declare-fun tp!2086349 () Bool)

(declare-fun tp!2086350 () Bool)

(assert (=> b!7346346 (= e!4398841 (and tp!2086349 tp!2086350))))

(assert (=> b!7346055 (= tp!2086292 e!4398841)))

(assert (= (and b!7346055 (is-Cons!71514 (exprs!8582 ct1!282))) b!7346346))

(declare-fun b!7346347 () Bool)

(declare-fun e!4398842 () Bool)

(declare-fun tp!2086351 () Bool)

(declare-fun tp!2086352 () Bool)

(assert (=> b!7346347 (= e!4398842 (and tp!2086351 tp!2086352))))

(assert (=> b!7346064 (= tp!2086289 e!4398842)))

(assert (= (and b!7346064 (is-Cons!71514 (exprs!8582 cWitness!61))) b!7346347))

(declare-fun b!7346348 () Bool)

(declare-fun e!4398843 () Bool)

(declare-fun tp!2086353 () Bool)

(declare-fun tp!2086354 () Bool)

(assert (=> b!7346348 (= e!4398843 (and tp!2086353 tp!2086354))))

(assert (=> b!7346059 (= tp!2086293 e!4398843)))

(assert (= (and b!7346059 (is-Cons!71514 (exprs!8582 ct2!378))) b!7346348))

(declare-fun b!7346351 () Bool)

(declare-fun e!4398844 () Bool)

(declare-fun tp!2086355 () Bool)

(assert (=> b!7346351 (= e!4398844 tp!2086355)))

(declare-fun b!7346352 () Bool)

(declare-fun tp!2086356 () Bool)

(declare-fun tp!2086358 () Bool)

(assert (=> b!7346352 (= e!4398844 (and tp!2086356 tp!2086358))))

(declare-fun b!7346349 () Bool)

(assert (=> b!7346349 (= e!4398844 tp_is_empty!48529)))

(assert (=> b!7346054 (= tp!2086294 e!4398844)))

(declare-fun b!7346350 () Bool)

(declare-fun tp!2086359 () Bool)

(declare-fun tp!2086357 () Bool)

(assert (=> b!7346350 (= e!4398844 (and tp!2086359 tp!2086357))))

(assert (= (and b!7346054 (is-ElementMatch!19142 (regOne!38796 r1!2370))) b!7346349))

(assert (= (and b!7346054 (is-Concat!27987 (regOne!38796 r1!2370))) b!7346350))

(assert (= (and b!7346054 (is-Star!19142 (regOne!38796 r1!2370))) b!7346351))

(assert (= (and b!7346054 (is-Union!19142 (regOne!38796 r1!2370))) b!7346352))

(declare-fun b!7346355 () Bool)

(declare-fun e!4398845 () Bool)

(declare-fun tp!2086360 () Bool)

(assert (=> b!7346355 (= e!4398845 tp!2086360)))

(declare-fun b!7346356 () Bool)

(declare-fun tp!2086361 () Bool)

(declare-fun tp!2086363 () Bool)

(assert (=> b!7346356 (= e!4398845 (and tp!2086361 tp!2086363))))

(declare-fun b!7346353 () Bool)

(assert (=> b!7346353 (= e!4398845 tp_is_empty!48529)))

(assert (=> b!7346054 (= tp!2086288 e!4398845)))

(declare-fun b!7346354 () Bool)

(declare-fun tp!2086364 () Bool)

(declare-fun tp!2086362 () Bool)

(assert (=> b!7346354 (= e!4398845 (and tp!2086364 tp!2086362))))

(assert (= (and b!7346054 (is-ElementMatch!19142 (regTwo!38796 r1!2370))) b!7346353))

(assert (= (and b!7346054 (is-Concat!27987 (regTwo!38796 r1!2370))) b!7346354))

(assert (= (and b!7346054 (is-Star!19142 (regTwo!38796 r1!2370))) b!7346355))

(assert (= (and b!7346054 (is-Union!19142 (regTwo!38796 r1!2370))) b!7346356))

(declare-fun b_lambda!284005 () Bool)

(assert (= b_lambda!284003 (or b!7346051 b_lambda!284005)))

(declare-fun bs!1918883 () Bool)

(declare-fun d!2279678 () Bool)

(assert (= bs!1918883 (and d!2279678 b!7346051)))

(assert (=> bs!1918883 (= (dynLambda!29473 lambda!456098 (h!77962 (exprs!8582 cWitness!61))) (validRegex!9738 (h!77962 (exprs!8582 cWitness!61))))))

(declare-fun m!8008612 () Bool)

(assert (=> bs!1918883 m!8008612))

(assert (=> b!7346307 d!2279678))

(push 1)

(assert (not bm!671256))

(assert (not bm!671261))

(assert (not b!7346253))

(assert (not d!2279644))

(assert (not bs!1918883))

(assert (not d!2279672))

(assert (not b!7346341))

(assert (not b!7346187))

(assert (not b!7346352))

(assert (not b!7346351))

(assert (not b!7346180))

(assert (not bm!671237))

(assert (not bm!671240))

(assert (not b!7346279))

(assert (not bm!671281))

(assert (not b!7346326))

(assert (not b!7346242))

(assert (not b!7346339))

(assert (not b!7346346))

(assert (not b!7346166))

(assert (not b!7346321))

(assert (not b!7346347))

(assert (not b!7346322))

(assert (not b!7346179))

(assert (not bm!671285))

(assert (not bm!671289))

(assert (not d!2279630))

(assert (not bm!671282))

(assert (not b!7346269))

(assert (not bm!671276))

(assert (not d!2279660))

(assert (not b!7346188))

(assert (not b!7346355))

(assert (not b!7346308))

(assert (not b!7346354))

(assert (not b!7346270))

(assert (not b!7346356))

(assert (not bm!671275))

(assert (not b!7346264))

(assert (not d!2279668))

(assert (not bm!671269))

(assert (not b!7346233))

(assert (not bm!671273))

(assert (not bm!671265))

(assert (not b_lambda!284005))

(assert (not d!2279642))

(assert (not bm!671258))

(assert (not bm!671270))

(assert (not d!2279664))

(assert tp_is_empty!48529)

(assert (not b!7346290))

(assert (not d!2279646))

(assert (not d!2279658))

(assert (not b!7346325))

(assert (not b!7346348))

(assert (not bm!671287))

(assert (not bm!671236))

(assert (not bm!671279))

(assert (not b!7346320))

(assert (not bm!671262))

(assert (not b!7346324))

(assert (not b!7346340))

(assert (not b!7346350))

(assert (not d!2279640))

(assert (not d!2279670))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

