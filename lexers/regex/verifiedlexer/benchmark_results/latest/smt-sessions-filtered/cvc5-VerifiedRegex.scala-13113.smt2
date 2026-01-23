; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!717034 () Bool)

(assert start!717034)

(declare-fun b!7341358 () Bool)

(declare-fun res!2965756 () Bool)

(declare-fun e!4395982 () Bool)

(assert (=> b!7341358 (=> (not res!2965756) (not e!4395982))))

(declare-datatypes ((C!38502 0))(
  ( (C!38503 (val!29611 Int)) )
))
(declare-datatypes ((Regex!19114 0))(
  ( (ElementMatch!19114 (c!1363602 C!38502)) (Concat!27959 (regOne!38740 Regex!19114) (regTwo!38740 Regex!19114)) (EmptyExpr!19114) (Star!19114 (reg!19443 Regex!19114)) (EmptyLang!19114) (Union!19114 (regOne!38741 Regex!19114) (regTwo!38741 Regex!19114)) )
))
(declare-datatypes ((List!71610 0))(
  ( (Nil!71486) (Cons!71486 (h!77934 Regex!19114) (t!386005 List!71610)) )
))
(declare-datatypes ((Context!16108 0))(
  ( (Context!16109 (exprs!8554 List!71610)) )
))
(declare-fun cWitness!61 () Context!16108)

(declare-fun lt!2610129 () (Set Context!16108))

(assert (=> b!7341358 (= res!2965756 (set.member cWitness!61 lt!2610129))))

(declare-fun b!7341359 () Bool)

(declare-fun e!4395985 () Bool)

(declare-fun ct1!282 () Context!16108)

(declare-fun lambda!455646 () Int)

(declare-fun forall!17946 (List!71610 Int) Bool)

(assert (=> b!7341359 (= e!4395985 (forall!17946 (exprs!8554 ct1!282) lambda!455646))))

(declare-fun ct2!378 () Context!16108)

(declare-datatypes ((Unit!165181 0))(
  ( (Unit!165182) )
))
(declare-fun lt!2610132 () Unit!165181)

(declare-fun lemmaConcatPreservesForall!1789 (List!71610 List!71610 Int) Unit!165181)

(assert (=> b!7341359 (= lt!2610132 (lemmaConcatPreservesForall!1789 (exprs!8554 cWitness!61) (exprs!8554 ct2!378) lambda!455646))))

(declare-fun b!7341360 () Bool)

(declare-fun e!4395983 () Bool)

(declare-fun tp!2084633 () Bool)

(assert (=> b!7341360 (= e!4395983 tp!2084633)))

(declare-fun b!7341361 () Bool)

(declare-fun e!4395988 () Bool)

(declare-fun e!4395986 () Bool)

(assert (=> b!7341361 (= e!4395988 e!4395986)))

(declare-fun res!2965755 () Bool)

(assert (=> b!7341361 (=> (not res!2965755) (not e!4395986))))

(declare-fun r1!2370 () Regex!19114)

(declare-fun c!10362 () C!38502)

(assert (=> b!7341361 (= res!2965755 (and (or (not (is-ElementMatch!19114 r1!2370)) (not (= c!10362 (c!1363602 r1!2370)))) (is-Union!19114 r1!2370)))))

(declare-fun lt!2610133 () (Set Context!16108))

(declare-fun lt!2610126 () Context!16108)

(declare-fun derivationStepZipperDown!2940 (Regex!19114 Context!16108 C!38502) (Set Context!16108))

(assert (=> b!7341361 (= lt!2610133 (derivationStepZipperDown!2940 r1!2370 lt!2610126 c!10362))))

(declare-fun ++!16932 (List!71610 List!71610) List!71610)

(assert (=> b!7341361 (= lt!2610126 (Context!16109 (++!16932 (exprs!8554 ct1!282) (exprs!8554 ct2!378))))))

(declare-fun lt!2610136 () Unit!165181)

(assert (=> b!7341361 (= lt!2610136 (lemmaConcatPreservesForall!1789 (exprs!8554 ct1!282) (exprs!8554 ct2!378) lambda!455646))))

(declare-fun b!7341362 () Bool)

(declare-fun e!4395989 () Bool)

(declare-fun tp!2084626 () Bool)

(assert (=> b!7341362 (= e!4395989 tp!2084626)))

(declare-fun res!2965758 () Bool)

(declare-fun e!4395981 () Bool)

(assert (=> start!717034 (=> (not res!2965758) (not e!4395981))))

(declare-fun validRegex!9710 (Regex!19114) Bool)

(assert (=> start!717034 (= res!2965758 (validRegex!9710 r1!2370))))

(assert (=> start!717034 e!4395981))

(declare-fun tp_is_empty!48473 () Bool)

(assert (=> start!717034 tp_is_empty!48473))

(declare-fun e!4395984 () Bool)

(declare-fun inv!91126 (Context!16108) Bool)

(assert (=> start!717034 (and (inv!91126 cWitness!61) e!4395984)))

(assert (=> start!717034 (and (inv!91126 ct1!282) e!4395983)))

(assert (=> start!717034 e!4395989))

(declare-fun e!4395987 () Bool)

(assert (=> start!717034 (and (inv!91126 ct2!378) e!4395987)))

(declare-fun b!7341363 () Bool)

(assert (=> b!7341363 (= e!4395989 tp_is_empty!48473)))

(declare-fun b!7341364 () Bool)

(assert (=> b!7341364 (= e!4395982 (not e!4395985))))

(declare-fun res!2965753 () Bool)

(assert (=> b!7341364 (=> res!2965753 e!4395985)))

(declare-fun lt!2610134 () Context!16108)

(assert (=> b!7341364 (= res!2965753 (not (set.member lt!2610134 lt!2610133)))))

(declare-fun lt!2610130 () Unit!165181)

(assert (=> b!7341364 (= lt!2610130 (lemmaConcatPreservesForall!1789 (exprs!8554 cWitness!61) (exprs!8554 ct2!378) lambda!455646))))

(assert (=> b!7341364 (set.member lt!2610134 (derivationStepZipperDown!2940 (regOne!38741 r1!2370) lt!2610126 c!10362))))

(assert (=> b!7341364 (= lt!2610134 (Context!16109 (++!16932 (exprs!8554 cWitness!61) (exprs!8554 ct2!378))))))

(declare-fun lt!2610131 () Unit!165181)

(assert (=> b!7341364 (= lt!2610131 (lemmaConcatPreservesForall!1789 (exprs!8554 ct1!282) (exprs!8554 ct2!378) lambda!455646))))

(declare-fun lt!2610135 () Unit!165181)

(assert (=> b!7341364 (= lt!2610135 (lemmaConcatPreservesForall!1789 (exprs!8554 cWitness!61) (exprs!8554 ct2!378) lambda!455646))))

(declare-fun lt!2610127 () Unit!165181)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!49 (Regex!19114 Context!16108 Context!16108 Context!16108 C!38502) Unit!165181)

(assert (=> b!7341364 (= lt!2610127 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!49 (regOne!38741 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(declare-fun b!7341365 () Bool)

(declare-fun tp!2084632 () Bool)

(assert (=> b!7341365 (= e!4395984 tp!2084632)))

(declare-fun b!7341366 () Bool)

(declare-fun tp!2084630 () Bool)

(declare-fun tp!2084631 () Bool)

(assert (=> b!7341366 (= e!4395989 (and tp!2084630 tp!2084631))))

(declare-fun b!7341367 () Bool)

(assert (=> b!7341367 (= e!4395981 e!4395988)))

(declare-fun res!2965754 () Bool)

(assert (=> b!7341367 (=> (not res!2965754) (not e!4395988))))

(declare-fun lt!2610128 () (Set Context!16108))

(assert (=> b!7341367 (= res!2965754 (set.member cWitness!61 lt!2610128))))

(assert (=> b!7341367 (= lt!2610128 (derivationStepZipperDown!2940 r1!2370 ct1!282 c!10362))))

(declare-fun b!7341368 () Bool)

(declare-fun tp!2084628 () Bool)

(declare-fun tp!2084627 () Bool)

(assert (=> b!7341368 (= e!4395989 (and tp!2084628 tp!2084627))))

(declare-fun b!7341369 () Bool)

(assert (=> b!7341369 (= e!4395986 e!4395982)))

(declare-fun res!2965757 () Bool)

(assert (=> b!7341369 (=> (not res!2965757) (not e!4395982))))

(assert (=> b!7341369 (= res!2965757 (= lt!2610128 (set.union lt!2610129 (derivationStepZipperDown!2940 (regTwo!38741 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7341369 (= lt!2610129 (derivationStepZipperDown!2940 (regOne!38741 r1!2370) ct1!282 c!10362))))

(declare-fun b!7341370 () Bool)

(declare-fun tp!2084629 () Bool)

(assert (=> b!7341370 (= e!4395987 tp!2084629)))

(assert (= (and start!717034 res!2965758) b!7341367))

(assert (= (and b!7341367 res!2965754) b!7341361))

(assert (= (and b!7341361 res!2965755) b!7341369))

(assert (= (and b!7341369 res!2965757) b!7341358))

(assert (= (and b!7341358 res!2965756) b!7341364))

(assert (= (and b!7341364 (not res!2965753)) b!7341359))

(assert (= start!717034 b!7341365))

(assert (= start!717034 b!7341360))

(assert (= (and start!717034 (is-ElementMatch!19114 r1!2370)) b!7341363))

(assert (= (and start!717034 (is-Concat!27959 r1!2370)) b!7341368))

(assert (= (and start!717034 (is-Star!19114 r1!2370)) b!7341362))

(assert (= (and start!717034 (is-Union!19114 r1!2370)) b!7341366))

(assert (= start!717034 b!7341370))

(declare-fun m!8005006 () Bool)

(assert (=> b!7341364 m!8005006))

(declare-fun m!8005008 () Bool)

(assert (=> b!7341364 m!8005008))

(assert (=> b!7341364 m!8005006))

(declare-fun m!8005010 () Bool)

(assert (=> b!7341364 m!8005010))

(declare-fun m!8005012 () Bool)

(assert (=> b!7341364 m!8005012))

(declare-fun m!8005014 () Bool)

(assert (=> b!7341364 m!8005014))

(declare-fun m!8005016 () Bool)

(assert (=> b!7341364 m!8005016))

(declare-fun m!8005018 () Bool)

(assert (=> b!7341364 m!8005018))

(declare-fun m!8005020 () Bool)

(assert (=> b!7341358 m!8005020))

(declare-fun m!8005022 () Bool)

(assert (=> b!7341361 m!8005022))

(declare-fun m!8005024 () Bool)

(assert (=> b!7341361 m!8005024))

(assert (=> b!7341361 m!8005012))

(declare-fun m!8005026 () Bool)

(assert (=> b!7341359 m!8005026))

(assert (=> b!7341359 m!8005006))

(declare-fun m!8005028 () Bool)

(assert (=> start!717034 m!8005028))

(declare-fun m!8005030 () Bool)

(assert (=> start!717034 m!8005030))

(declare-fun m!8005032 () Bool)

(assert (=> start!717034 m!8005032))

(declare-fun m!8005034 () Bool)

(assert (=> start!717034 m!8005034))

(declare-fun m!8005036 () Bool)

(assert (=> b!7341369 m!8005036))

(declare-fun m!8005038 () Bool)

(assert (=> b!7341369 m!8005038))

(declare-fun m!8005040 () Bool)

(assert (=> b!7341367 m!8005040))

(declare-fun m!8005042 () Bool)

(assert (=> b!7341367 m!8005042))

(push 1)

(assert (not b!7341366))

(assert (not b!7341370))

(assert (not b!7341364))

(assert (not b!7341367))

(assert tp_is_empty!48473)

(assert (not b!7341368))

(assert (not start!717034))

(assert (not b!7341361))

(assert (not b!7341362))

(assert (not b!7341359))

(assert (not b!7341365))

(assert (not b!7341369))

(assert (not b!7341360))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2278852 () Bool)

(declare-fun res!2965781 () Bool)

(declare-fun e!4396021 () Bool)

(assert (=> d!2278852 (=> res!2965781 e!4396021)))

(assert (=> d!2278852 (= res!2965781 (is-Nil!71486 (exprs!8554 ct1!282)))))

(assert (=> d!2278852 (= (forall!17946 (exprs!8554 ct1!282) lambda!455646) e!4396021)))

(declare-fun b!7341414 () Bool)

(declare-fun e!4396022 () Bool)

(assert (=> b!7341414 (= e!4396021 e!4396022)))

(declare-fun res!2965782 () Bool)

(assert (=> b!7341414 (=> (not res!2965782) (not e!4396022))))

(declare-fun dynLambda!29453 (Int Regex!19114) Bool)

(assert (=> b!7341414 (= res!2965782 (dynLambda!29453 lambda!455646 (h!77934 (exprs!8554 ct1!282))))))

(declare-fun b!7341415 () Bool)

(assert (=> b!7341415 (= e!4396022 (forall!17946 (t!386005 (exprs!8554 ct1!282)) lambda!455646))))

(assert (= (and d!2278852 (not res!2965781)) b!7341414))

(assert (= (and b!7341414 res!2965782) b!7341415))

(declare-fun b_lambda!283883 () Bool)

(assert (=> (not b_lambda!283883) (not b!7341414)))

(declare-fun m!8005082 () Bool)

(assert (=> b!7341414 m!8005082))

(declare-fun m!8005084 () Bool)

(assert (=> b!7341415 m!8005084))

(assert (=> b!7341359 d!2278852))

(declare-fun d!2278856 () Bool)

(assert (=> d!2278856 (forall!17946 (++!16932 (exprs!8554 cWitness!61) (exprs!8554 ct2!378)) lambda!455646)))

(declare-fun lt!2610172 () Unit!165181)

(declare-fun choose!57101 (List!71610 List!71610 Int) Unit!165181)

(assert (=> d!2278856 (= lt!2610172 (choose!57101 (exprs!8554 cWitness!61) (exprs!8554 ct2!378) lambda!455646))))

(assert (=> d!2278856 (forall!17946 (exprs!8554 cWitness!61) lambda!455646)))

(assert (=> d!2278856 (= (lemmaConcatPreservesForall!1789 (exprs!8554 cWitness!61) (exprs!8554 ct2!378) lambda!455646) lt!2610172)))

(declare-fun bs!1918456 () Bool)

(assert (= bs!1918456 d!2278856))

(assert (=> bs!1918456 m!8005018))

(assert (=> bs!1918456 m!8005018))

(declare-fun m!8005086 () Bool)

(assert (=> bs!1918456 m!8005086))

(declare-fun m!8005088 () Bool)

(assert (=> bs!1918456 m!8005088))

(declare-fun m!8005090 () Bool)

(assert (=> bs!1918456 m!8005090))

(assert (=> b!7341359 d!2278856))

(declare-fun b!7341448 () Bool)

(declare-fun res!2965797 () Bool)

(declare-fun e!4396045 () Bool)

(assert (=> b!7341448 (=> res!2965797 e!4396045)))

(assert (=> b!7341448 (= res!2965797 (not (is-Concat!27959 r1!2370)))))

(declare-fun e!4396049 () Bool)

(assert (=> b!7341448 (= e!4396049 e!4396045)))

(declare-fun b!7341449 () Bool)

(declare-fun e!4396048 () Bool)

(declare-fun e!4396047 () Bool)

(assert (=> b!7341449 (= e!4396048 e!4396047)))

(declare-fun c!1363614 () Bool)

(assert (=> b!7341449 (= c!1363614 (is-Star!19114 r1!2370))))

(declare-fun b!7341450 () Bool)

(declare-fun e!4396046 () Bool)

(declare-fun call!670118 () Bool)

(assert (=> b!7341450 (= e!4396046 call!670118)))

(declare-fun bm!670111 () Bool)

(declare-fun c!1363615 () Bool)

(assert (=> bm!670111 (= call!670118 (validRegex!9710 (ite c!1363615 (regOne!38741 r1!2370) (regTwo!38740 r1!2370))))))

(declare-fun d!2278858 () Bool)

(declare-fun res!2965795 () Bool)

(assert (=> d!2278858 (=> res!2965795 e!4396048)))

(assert (=> d!2278858 (= res!2965795 (is-ElementMatch!19114 r1!2370))))

(assert (=> d!2278858 (= (validRegex!9710 r1!2370) e!4396048)))

(declare-fun b!7341451 () Bool)

(declare-fun e!4396050 () Bool)

(declare-fun call!670117 () Bool)

(assert (=> b!7341451 (= e!4396050 call!670117)))

(declare-fun call!670116 () Bool)

(declare-fun bm!670112 () Bool)

(assert (=> bm!670112 (= call!670116 (validRegex!9710 (ite c!1363614 (reg!19443 r1!2370) (ite c!1363615 (regTwo!38741 r1!2370) (regOne!38740 r1!2370)))))))

(declare-fun bm!670113 () Bool)

(assert (=> bm!670113 (= call!670117 call!670116)))

(declare-fun b!7341452 () Bool)

(declare-fun e!4396051 () Bool)

(assert (=> b!7341452 (= e!4396051 call!670116)))

(declare-fun b!7341453 () Bool)

(assert (=> b!7341453 (= e!4396047 e!4396049)))

(assert (=> b!7341453 (= c!1363615 (is-Union!19114 r1!2370))))

(declare-fun b!7341454 () Bool)

(declare-fun res!2965796 () Bool)

(assert (=> b!7341454 (=> (not res!2965796) (not e!4396050))))

(assert (=> b!7341454 (= res!2965796 call!670118)))

(assert (=> b!7341454 (= e!4396049 e!4396050)))

(declare-fun b!7341455 () Bool)

(assert (=> b!7341455 (= e!4396045 e!4396046)))

(declare-fun res!2965798 () Bool)

(assert (=> b!7341455 (=> (not res!2965798) (not e!4396046))))

(assert (=> b!7341455 (= res!2965798 call!670117)))

(declare-fun b!7341456 () Bool)

(assert (=> b!7341456 (= e!4396047 e!4396051)))

(declare-fun res!2965799 () Bool)

(declare-fun nullable!8209 (Regex!19114) Bool)

(assert (=> b!7341456 (= res!2965799 (not (nullable!8209 (reg!19443 r1!2370))))))

(assert (=> b!7341456 (=> (not res!2965799) (not e!4396051))))

(assert (= (and d!2278858 (not res!2965795)) b!7341449))

(assert (= (and b!7341449 c!1363614) b!7341456))

(assert (= (and b!7341449 (not c!1363614)) b!7341453))

(assert (= (and b!7341456 res!2965799) b!7341452))

(assert (= (and b!7341453 c!1363615) b!7341454))

(assert (= (and b!7341453 (not c!1363615)) b!7341448))

(assert (= (and b!7341454 res!2965796) b!7341451))

(assert (= (and b!7341448 (not res!2965797)) b!7341455))

(assert (= (and b!7341455 res!2965798) b!7341450))

(assert (= (or b!7341454 b!7341450) bm!670111))

(assert (= (or b!7341451 b!7341455) bm!670113))

(assert (= (or b!7341452 bm!670113) bm!670112))

(declare-fun m!8005092 () Bool)

(assert (=> bm!670111 m!8005092))

(declare-fun m!8005094 () Bool)

(assert (=> bm!670112 m!8005094))

(declare-fun m!8005096 () Bool)

(assert (=> b!7341456 m!8005096))

(assert (=> start!717034 d!2278858))

(declare-fun bs!1918457 () Bool)

(declare-fun d!2278860 () Bool)

(assert (= bs!1918457 (and d!2278860 b!7341361)))

(declare-fun lambda!455662 () Int)

(assert (=> bs!1918457 (= lambda!455662 lambda!455646)))

(assert (=> d!2278860 (= (inv!91126 cWitness!61) (forall!17946 (exprs!8554 cWitness!61) lambda!455662))))

(declare-fun bs!1918458 () Bool)

(assert (= bs!1918458 d!2278860))

(declare-fun m!8005098 () Bool)

(assert (=> bs!1918458 m!8005098))

(assert (=> start!717034 d!2278860))

(declare-fun bs!1918459 () Bool)

(declare-fun d!2278862 () Bool)

(assert (= bs!1918459 (and d!2278862 b!7341361)))

(declare-fun lambda!455663 () Int)

(assert (=> bs!1918459 (= lambda!455663 lambda!455646)))

(declare-fun bs!1918460 () Bool)

(assert (= bs!1918460 (and d!2278862 d!2278860)))

(assert (=> bs!1918460 (= lambda!455663 lambda!455662)))

(assert (=> d!2278862 (= (inv!91126 ct1!282) (forall!17946 (exprs!8554 ct1!282) lambda!455663))))

(declare-fun bs!1918461 () Bool)

(assert (= bs!1918461 d!2278862))

(declare-fun m!8005100 () Bool)

(assert (=> bs!1918461 m!8005100))

(assert (=> start!717034 d!2278862))

(declare-fun bs!1918462 () Bool)

(declare-fun d!2278864 () Bool)

(assert (= bs!1918462 (and d!2278864 b!7341361)))

(declare-fun lambda!455664 () Int)

(assert (=> bs!1918462 (= lambda!455664 lambda!455646)))

(declare-fun bs!1918463 () Bool)

(assert (= bs!1918463 (and d!2278864 d!2278860)))

(assert (=> bs!1918463 (= lambda!455664 lambda!455662)))

(declare-fun bs!1918464 () Bool)

(assert (= bs!1918464 (and d!2278864 d!2278862)))

(assert (=> bs!1918464 (= lambda!455664 lambda!455663)))

(assert (=> d!2278864 (= (inv!91126 ct2!378) (forall!17946 (exprs!8554 ct2!378) lambda!455664))))

(declare-fun bs!1918465 () Bool)

(assert (= bs!1918465 d!2278864))

(declare-fun m!8005102 () Bool)

(assert (=> bs!1918465 m!8005102))

(assert (=> start!717034 d!2278864))

(declare-fun b!7341487 () Bool)

(declare-fun e!4396068 () (Set Context!16108))

(declare-fun e!4396070 () (Set Context!16108))

(assert (=> b!7341487 (= e!4396068 e!4396070)))

(declare-fun c!1363631 () Bool)

(assert (=> b!7341487 (= c!1363631 (is-Union!19114 r1!2370))))

(declare-fun b!7341488 () Bool)

(declare-fun c!1363633 () Bool)

(assert (=> b!7341488 (= c!1363633 (is-Star!19114 r1!2370))))

(declare-fun e!4396071 () (Set Context!16108))

(declare-fun e!4396073 () (Set Context!16108))

(assert (=> b!7341488 (= e!4396071 e!4396073)))

(declare-fun b!7341489 () Bool)

(assert (=> b!7341489 (= e!4396068 (set.insert lt!2610126 (as set.empty (Set Context!16108))))))

(declare-fun d!2278866 () Bool)

(declare-fun c!1363634 () Bool)

(assert (=> d!2278866 (= c!1363634 (and (is-ElementMatch!19114 r1!2370) (= (c!1363602 r1!2370) c!10362)))))

(assert (=> d!2278866 (= (derivationStepZipperDown!2940 r1!2370 lt!2610126 c!10362) e!4396068)))

(declare-fun b!7341490 () Bool)

(declare-fun e!4396069 () (Set Context!16108))

(declare-fun call!670146 () (Set Context!16108))

(declare-fun call!670148 () (Set Context!16108))

(assert (=> b!7341490 (= e!4396069 (set.union call!670146 call!670148))))

(declare-fun call!670147 () List!71610)

(declare-fun c!1363632 () Bool)

(declare-fun c!1363630 () Bool)

(declare-fun bm!670138 () Bool)

(declare-fun $colon$colon!3116 (List!71610 Regex!19114) List!71610)

(assert (=> bm!670138 (= call!670147 ($colon$colon!3116 (exprs!8554 lt!2610126) (ite (or c!1363632 c!1363630) (regTwo!38740 r1!2370) r1!2370)))))

(declare-fun b!7341491 () Bool)

(declare-fun call!670144 () (Set Context!16108))

(assert (=> b!7341491 (= e!4396073 call!670144)))

(declare-fun b!7341492 () Bool)

(assert (=> b!7341492 (= e!4396071 call!670144)))

(declare-fun bm!670139 () Bool)

(assert (=> bm!670139 (= call!670144 call!670148)))

(declare-fun b!7341493 () Bool)

(declare-fun call!670143 () (Set Context!16108))

(assert (=> b!7341493 (= e!4396070 (set.union call!670143 call!670146))))

(declare-fun bm!670140 () Bool)

(declare-fun call!670145 () List!71610)

(assert (=> bm!670140 (= call!670143 (derivationStepZipperDown!2940 (ite c!1363631 (regOne!38741 r1!2370) (ite c!1363632 (regTwo!38740 r1!2370) (ite c!1363630 (regOne!38740 r1!2370) (reg!19443 r1!2370)))) (ite (or c!1363631 c!1363632) lt!2610126 (Context!16109 call!670145)) c!10362))))

(declare-fun bm!670141 () Bool)

(assert (=> bm!670141 (= call!670145 call!670147)))

(declare-fun b!7341494 () Bool)

(declare-fun e!4396072 () Bool)

(assert (=> b!7341494 (= c!1363632 e!4396072)))

(declare-fun res!2965802 () Bool)

(assert (=> b!7341494 (=> (not res!2965802) (not e!4396072))))

(assert (=> b!7341494 (= res!2965802 (is-Concat!27959 r1!2370))))

(assert (=> b!7341494 (= e!4396070 e!4396069)))

(declare-fun b!7341495 () Bool)

(assert (=> b!7341495 (= e!4396073 (as set.empty (Set Context!16108)))))

(declare-fun b!7341496 () Bool)

(assert (=> b!7341496 (= e!4396069 e!4396071)))

(assert (=> b!7341496 (= c!1363630 (is-Concat!27959 r1!2370))))

(declare-fun bm!670142 () Bool)

(assert (=> bm!670142 (= call!670146 (derivationStepZipperDown!2940 (ite c!1363631 (regTwo!38741 r1!2370) (regOne!38740 r1!2370)) (ite c!1363631 lt!2610126 (Context!16109 call!670147)) c!10362))))

(declare-fun b!7341497 () Bool)

(assert (=> b!7341497 (= e!4396072 (nullable!8209 (regOne!38740 r1!2370)))))

(declare-fun bm!670143 () Bool)

(assert (=> bm!670143 (= call!670148 call!670143)))

(assert (= (and d!2278866 c!1363634) b!7341489))

(assert (= (and d!2278866 (not c!1363634)) b!7341487))

(assert (= (and b!7341487 c!1363631) b!7341493))

(assert (= (and b!7341487 (not c!1363631)) b!7341494))

(assert (= (and b!7341494 res!2965802) b!7341497))

(assert (= (and b!7341494 c!1363632) b!7341490))

(assert (= (and b!7341494 (not c!1363632)) b!7341496))

(assert (= (and b!7341496 c!1363630) b!7341492))

(assert (= (and b!7341496 (not c!1363630)) b!7341488))

(assert (= (and b!7341488 c!1363633) b!7341491))

(assert (= (and b!7341488 (not c!1363633)) b!7341495))

(assert (= (or b!7341492 b!7341491) bm!670141))

(assert (= (or b!7341492 b!7341491) bm!670139))

(assert (= (or b!7341490 bm!670139) bm!670143))

(assert (= (or b!7341490 bm!670141) bm!670138))

(assert (= (or b!7341493 b!7341490) bm!670142))

(assert (= (or b!7341493 bm!670143) bm!670140))

(declare-fun m!8005104 () Bool)

(assert (=> bm!670140 m!8005104))

(declare-fun m!8005106 () Bool)

(assert (=> bm!670138 m!8005106))

(declare-fun m!8005108 () Bool)

(assert (=> b!7341497 m!8005108))

(declare-fun m!8005110 () Bool)

(assert (=> bm!670142 m!8005110))

(declare-fun m!8005112 () Bool)

(assert (=> b!7341489 m!8005112))

(assert (=> b!7341361 d!2278866))

(declare-fun b!7341519 () Bool)

(declare-fun res!2965809 () Bool)

(declare-fun e!4396085 () Bool)

(assert (=> b!7341519 (=> (not res!2965809) (not e!4396085))))

(declare-fun lt!2610175 () List!71610)

(declare-fun size!42010 (List!71610) Int)

(assert (=> b!7341519 (= res!2965809 (= (size!42010 lt!2610175) (+ (size!42010 (exprs!8554 ct1!282)) (size!42010 (exprs!8554 ct2!378)))))))

(declare-fun d!2278868 () Bool)

(assert (=> d!2278868 e!4396085))

(declare-fun res!2965808 () Bool)

(assert (=> d!2278868 (=> (not res!2965808) (not e!4396085))))

(declare-fun content!15031 (List!71610) (Set Regex!19114))

(assert (=> d!2278868 (= res!2965808 (= (content!15031 lt!2610175) (set.union (content!15031 (exprs!8554 ct1!282)) (content!15031 (exprs!8554 ct2!378)))))))

(declare-fun e!4396084 () List!71610)

(assert (=> d!2278868 (= lt!2610175 e!4396084)))

(declare-fun c!1363642 () Bool)

(assert (=> d!2278868 (= c!1363642 (is-Nil!71486 (exprs!8554 ct1!282)))))

(assert (=> d!2278868 (= (++!16932 (exprs!8554 ct1!282) (exprs!8554 ct2!378)) lt!2610175)))

(declare-fun b!7341520 () Bool)

(assert (=> b!7341520 (= e!4396085 (or (not (= (exprs!8554 ct2!378) Nil!71486)) (= lt!2610175 (exprs!8554 ct1!282))))))

(declare-fun b!7341518 () Bool)

(assert (=> b!7341518 (= e!4396084 (Cons!71486 (h!77934 (exprs!8554 ct1!282)) (++!16932 (t!386005 (exprs!8554 ct1!282)) (exprs!8554 ct2!378))))))

(declare-fun b!7341517 () Bool)

(assert (=> b!7341517 (= e!4396084 (exprs!8554 ct2!378))))

(assert (= (and d!2278868 c!1363642) b!7341517))

(assert (= (and d!2278868 (not c!1363642)) b!7341518))

(assert (= (and d!2278868 res!2965808) b!7341519))

(assert (= (and b!7341519 res!2965809) b!7341520))

(declare-fun m!8005124 () Bool)

(assert (=> b!7341519 m!8005124))

(declare-fun m!8005126 () Bool)

(assert (=> b!7341519 m!8005126))

(declare-fun m!8005128 () Bool)

(assert (=> b!7341519 m!8005128))

(declare-fun m!8005130 () Bool)

(assert (=> d!2278868 m!8005130))

(declare-fun m!8005132 () Bool)

(assert (=> d!2278868 m!8005132))

(declare-fun m!8005134 () Bool)

(assert (=> d!2278868 m!8005134))

(declare-fun m!8005136 () Bool)

(assert (=> b!7341518 m!8005136))

(assert (=> b!7341361 d!2278868))

(declare-fun d!2278872 () Bool)

(assert (=> d!2278872 (forall!17946 (++!16932 (exprs!8554 ct1!282) (exprs!8554 ct2!378)) lambda!455646)))

(declare-fun lt!2610176 () Unit!165181)

(assert (=> d!2278872 (= lt!2610176 (choose!57101 (exprs!8554 ct1!282) (exprs!8554 ct2!378) lambda!455646))))

(assert (=> d!2278872 (forall!17946 (exprs!8554 ct1!282) lambda!455646)))

(assert (=> d!2278872 (= (lemmaConcatPreservesForall!1789 (exprs!8554 ct1!282) (exprs!8554 ct2!378) lambda!455646) lt!2610176)))

(declare-fun bs!1918466 () Bool)

(assert (= bs!1918466 d!2278872))

(assert (=> bs!1918466 m!8005024))

(assert (=> bs!1918466 m!8005024))

(declare-fun m!8005138 () Bool)

(assert (=> bs!1918466 m!8005138))

(declare-fun m!8005140 () Bool)

(assert (=> bs!1918466 m!8005140))

(assert (=> bs!1918466 m!8005026))

(assert (=> b!7341361 d!2278872))

(declare-fun b!7341521 () Bool)

(declare-fun e!4396086 () (Set Context!16108))

(declare-fun e!4396088 () (Set Context!16108))

(assert (=> b!7341521 (= e!4396086 e!4396088)))

(declare-fun c!1363644 () Bool)

(assert (=> b!7341521 (= c!1363644 (is-Union!19114 r1!2370))))

(declare-fun b!7341522 () Bool)

(declare-fun c!1363646 () Bool)

(assert (=> b!7341522 (= c!1363646 (is-Star!19114 r1!2370))))

(declare-fun e!4396089 () (Set Context!16108))

(declare-fun e!4396091 () (Set Context!16108))

(assert (=> b!7341522 (= e!4396089 e!4396091)))

(declare-fun b!7341523 () Bool)

(assert (=> b!7341523 (= e!4396086 (set.insert ct1!282 (as set.empty (Set Context!16108))))))

(declare-fun d!2278874 () Bool)

(declare-fun c!1363647 () Bool)

(assert (=> d!2278874 (= c!1363647 (and (is-ElementMatch!19114 r1!2370) (= (c!1363602 r1!2370) c!10362)))))

(assert (=> d!2278874 (= (derivationStepZipperDown!2940 r1!2370 ct1!282 c!10362) e!4396086)))

(declare-fun b!7341524 () Bool)

(declare-fun e!4396087 () (Set Context!16108))

(declare-fun call!670158 () (Set Context!16108))

(declare-fun call!670160 () (Set Context!16108))

(assert (=> b!7341524 (= e!4396087 (set.union call!670158 call!670160))))

(declare-fun bm!670150 () Bool)

(declare-fun c!1363643 () Bool)

(declare-fun call!670159 () List!71610)

(declare-fun c!1363645 () Bool)

(assert (=> bm!670150 (= call!670159 ($colon$colon!3116 (exprs!8554 ct1!282) (ite (or c!1363645 c!1363643) (regTwo!38740 r1!2370) r1!2370)))))

(declare-fun b!7341525 () Bool)

(declare-fun call!670156 () (Set Context!16108))

(assert (=> b!7341525 (= e!4396091 call!670156)))

(declare-fun b!7341526 () Bool)

(assert (=> b!7341526 (= e!4396089 call!670156)))

(declare-fun bm!670151 () Bool)

(assert (=> bm!670151 (= call!670156 call!670160)))

(declare-fun b!7341527 () Bool)

(declare-fun call!670155 () (Set Context!16108))

(assert (=> b!7341527 (= e!4396088 (set.union call!670155 call!670158))))

(declare-fun call!670157 () List!71610)

(declare-fun bm!670152 () Bool)

(assert (=> bm!670152 (= call!670155 (derivationStepZipperDown!2940 (ite c!1363644 (regOne!38741 r1!2370) (ite c!1363645 (regTwo!38740 r1!2370) (ite c!1363643 (regOne!38740 r1!2370) (reg!19443 r1!2370)))) (ite (or c!1363644 c!1363645) ct1!282 (Context!16109 call!670157)) c!10362))))

(declare-fun bm!670153 () Bool)

(assert (=> bm!670153 (= call!670157 call!670159)))

(declare-fun b!7341528 () Bool)

(declare-fun e!4396090 () Bool)

(assert (=> b!7341528 (= c!1363645 e!4396090)))

(declare-fun res!2965810 () Bool)

(assert (=> b!7341528 (=> (not res!2965810) (not e!4396090))))

(assert (=> b!7341528 (= res!2965810 (is-Concat!27959 r1!2370))))

(assert (=> b!7341528 (= e!4396088 e!4396087)))

(declare-fun b!7341529 () Bool)

(assert (=> b!7341529 (= e!4396091 (as set.empty (Set Context!16108)))))

(declare-fun b!7341530 () Bool)

(assert (=> b!7341530 (= e!4396087 e!4396089)))

(assert (=> b!7341530 (= c!1363643 (is-Concat!27959 r1!2370))))

(declare-fun bm!670154 () Bool)

(assert (=> bm!670154 (= call!670158 (derivationStepZipperDown!2940 (ite c!1363644 (regTwo!38741 r1!2370) (regOne!38740 r1!2370)) (ite c!1363644 ct1!282 (Context!16109 call!670159)) c!10362))))

(declare-fun b!7341531 () Bool)

(assert (=> b!7341531 (= e!4396090 (nullable!8209 (regOne!38740 r1!2370)))))

(declare-fun bm!670155 () Bool)

(assert (=> bm!670155 (= call!670160 call!670155)))

(assert (= (and d!2278874 c!1363647) b!7341523))

(assert (= (and d!2278874 (not c!1363647)) b!7341521))

(assert (= (and b!7341521 c!1363644) b!7341527))

(assert (= (and b!7341521 (not c!1363644)) b!7341528))

(assert (= (and b!7341528 res!2965810) b!7341531))

(assert (= (and b!7341528 c!1363645) b!7341524))

(assert (= (and b!7341528 (not c!1363645)) b!7341530))

(assert (= (and b!7341530 c!1363643) b!7341526))

(assert (= (and b!7341530 (not c!1363643)) b!7341522))

(assert (= (and b!7341522 c!1363646) b!7341525))

(assert (= (and b!7341522 (not c!1363646)) b!7341529))

(assert (= (or b!7341526 b!7341525) bm!670153))

(assert (= (or b!7341526 b!7341525) bm!670151))

(assert (= (or b!7341524 bm!670151) bm!670155))

(assert (= (or b!7341524 bm!670153) bm!670150))

(assert (= (or b!7341527 b!7341524) bm!670154))

(assert (= (or b!7341527 bm!670155) bm!670152))

(declare-fun m!8005142 () Bool)

(assert (=> bm!670152 m!8005142))

(declare-fun m!8005144 () Bool)

(assert (=> bm!670150 m!8005144))

(assert (=> b!7341531 m!8005108))

(declare-fun m!8005146 () Bool)

(assert (=> bm!670154 m!8005146))

(declare-fun m!8005148 () Bool)

(assert (=> b!7341523 m!8005148))

(assert (=> b!7341367 d!2278874))

(declare-fun b!7341532 () Bool)

(declare-fun e!4396092 () (Set Context!16108))

(declare-fun e!4396094 () (Set Context!16108))

(assert (=> b!7341532 (= e!4396092 e!4396094)))

(declare-fun c!1363649 () Bool)

(assert (=> b!7341532 (= c!1363649 (is-Union!19114 (regTwo!38741 r1!2370)))))

(declare-fun b!7341533 () Bool)

(declare-fun c!1363651 () Bool)

(assert (=> b!7341533 (= c!1363651 (is-Star!19114 (regTwo!38741 r1!2370)))))

(declare-fun e!4396095 () (Set Context!16108))

(declare-fun e!4396097 () (Set Context!16108))

(assert (=> b!7341533 (= e!4396095 e!4396097)))

(declare-fun b!7341534 () Bool)

(assert (=> b!7341534 (= e!4396092 (set.insert ct1!282 (as set.empty (Set Context!16108))))))

(declare-fun d!2278876 () Bool)

(declare-fun c!1363652 () Bool)

(assert (=> d!2278876 (= c!1363652 (and (is-ElementMatch!19114 (regTwo!38741 r1!2370)) (= (c!1363602 (regTwo!38741 r1!2370)) c!10362)))))

(assert (=> d!2278876 (= (derivationStepZipperDown!2940 (regTwo!38741 r1!2370) ct1!282 c!10362) e!4396092)))

(declare-fun b!7341535 () Bool)

(declare-fun e!4396093 () (Set Context!16108))

(declare-fun call!670164 () (Set Context!16108))

(declare-fun call!670166 () (Set Context!16108))

(assert (=> b!7341535 (= e!4396093 (set.union call!670164 call!670166))))

(declare-fun c!1363648 () Bool)

(declare-fun call!670165 () List!71610)

(declare-fun c!1363650 () Bool)

(declare-fun bm!670156 () Bool)

(assert (=> bm!670156 (= call!670165 ($colon$colon!3116 (exprs!8554 ct1!282) (ite (or c!1363650 c!1363648) (regTwo!38740 (regTwo!38741 r1!2370)) (regTwo!38741 r1!2370))))))

(declare-fun b!7341536 () Bool)

(declare-fun call!670162 () (Set Context!16108))

(assert (=> b!7341536 (= e!4396097 call!670162)))

(declare-fun b!7341537 () Bool)

(assert (=> b!7341537 (= e!4396095 call!670162)))

(declare-fun bm!670157 () Bool)

(assert (=> bm!670157 (= call!670162 call!670166)))

(declare-fun b!7341538 () Bool)

(declare-fun call!670161 () (Set Context!16108))

(assert (=> b!7341538 (= e!4396094 (set.union call!670161 call!670164))))

(declare-fun bm!670158 () Bool)

(declare-fun call!670163 () List!71610)

(assert (=> bm!670158 (= call!670161 (derivationStepZipperDown!2940 (ite c!1363649 (regOne!38741 (regTwo!38741 r1!2370)) (ite c!1363650 (regTwo!38740 (regTwo!38741 r1!2370)) (ite c!1363648 (regOne!38740 (regTwo!38741 r1!2370)) (reg!19443 (regTwo!38741 r1!2370))))) (ite (or c!1363649 c!1363650) ct1!282 (Context!16109 call!670163)) c!10362))))

(declare-fun bm!670159 () Bool)

(assert (=> bm!670159 (= call!670163 call!670165)))

(declare-fun b!7341539 () Bool)

(declare-fun e!4396096 () Bool)

(assert (=> b!7341539 (= c!1363650 e!4396096)))

(declare-fun res!2965811 () Bool)

(assert (=> b!7341539 (=> (not res!2965811) (not e!4396096))))

(assert (=> b!7341539 (= res!2965811 (is-Concat!27959 (regTwo!38741 r1!2370)))))

(assert (=> b!7341539 (= e!4396094 e!4396093)))

(declare-fun b!7341540 () Bool)

(assert (=> b!7341540 (= e!4396097 (as set.empty (Set Context!16108)))))

(declare-fun b!7341541 () Bool)

(assert (=> b!7341541 (= e!4396093 e!4396095)))

(assert (=> b!7341541 (= c!1363648 (is-Concat!27959 (regTwo!38741 r1!2370)))))

(declare-fun bm!670160 () Bool)

(assert (=> bm!670160 (= call!670164 (derivationStepZipperDown!2940 (ite c!1363649 (regTwo!38741 (regTwo!38741 r1!2370)) (regOne!38740 (regTwo!38741 r1!2370))) (ite c!1363649 ct1!282 (Context!16109 call!670165)) c!10362))))

(declare-fun b!7341542 () Bool)

(assert (=> b!7341542 (= e!4396096 (nullable!8209 (regOne!38740 (regTwo!38741 r1!2370))))))

(declare-fun bm!670161 () Bool)

(assert (=> bm!670161 (= call!670166 call!670161)))

(assert (= (and d!2278876 c!1363652) b!7341534))

(assert (= (and d!2278876 (not c!1363652)) b!7341532))

(assert (= (and b!7341532 c!1363649) b!7341538))

(assert (= (and b!7341532 (not c!1363649)) b!7341539))

(assert (= (and b!7341539 res!2965811) b!7341542))

(assert (= (and b!7341539 c!1363650) b!7341535))

(assert (= (and b!7341539 (not c!1363650)) b!7341541))

(assert (= (and b!7341541 c!1363648) b!7341537))

(assert (= (and b!7341541 (not c!1363648)) b!7341533))

(assert (= (and b!7341533 c!1363651) b!7341536))

(assert (= (and b!7341533 (not c!1363651)) b!7341540))

(assert (= (or b!7341537 b!7341536) bm!670159))

(assert (= (or b!7341537 b!7341536) bm!670157))

(assert (= (or b!7341535 bm!670157) bm!670161))

(assert (= (or b!7341535 bm!670159) bm!670156))

(assert (= (or b!7341538 b!7341535) bm!670160))

(assert (= (or b!7341538 bm!670161) bm!670158))

(declare-fun m!8005150 () Bool)

(assert (=> bm!670158 m!8005150))

(declare-fun m!8005152 () Bool)

(assert (=> bm!670156 m!8005152))

(declare-fun m!8005154 () Bool)

(assert (=> b!7341542 m!8005154))

(declare-fun m!8005156 () Bool)

(assert (=> bm!670160 m!8005156))

(assert (=> b!7341534 m!8005148))

(assert (=> b!7341369 d!2278876))

(declare-fun b!7341543 () Bool)

(declare-fun e!4396098 () (Set Context!16108))

(declare-fun e!4396100 () (Set Context!16108))

(assert (=> b!7341543 (= e!4396098 e!4396100)))

(declare-fun c!1363654 () Bool)

(assert (=> b!7341543 (= c!1363654 (is-Union!19114 (regOne!38741 r1!2370)))))

(declare-fun b!7341544 () Bool)

(declare-fun c!1363656 () Bool)

(assert (=> b!7341544 (= c!1363656 (is-Star!19114 (regOne!38741 r1!2370)))))

(declare-fun e!4396101 () (Set Context!16108))

(declare-fun e!4396103 () (Set Context!16108))

(assert (=> b!7341544 (= e!4396101 e!4396103)))

(declare-fun b!7341545 () Bool)

(assert (=> b!7341545 (= e!4396098 (set.insert ct1!282 (as set.empty (Set Context!16108))))))

(declare-fun d!2278878 () Bool)

(declare-fun c!1363657 () Bool)

(assert (=> d!2278878 (= c!1363657 (and (is-ElementMatch!19114 (regOne!38741 r1!2370)) (= (c!1363602 (regOne!38741 r1!2370)) c!10362)))))

(assert (=> d!2278878 (= (derivationStepZipperDown!2940 (regOne!38741 r1!2370) ct1!282 c!10362) e!4396098)))

(declare-fun b!7341546 () Bool)

(declare-fun e!4396099 () (Set Context!16108))

(declare-fun call!670170 () (Set Context!16108))

(declare-fun call!670172 () (Set Context!16108))

(assert (=> b!7341546 (= e!4396099 (set.union call!670170 call!670172))))

(declare-fun bm!670162 () Bool)

(declare-fun call!670171 () List!71610)

(declare-fun c!1363653 () Bool)

(declare-fun c!1363655 () Bool)

(assert (=> bm!670162 (= call!670171 ($colon$colon!3116 (exprs!8554 ct1!282) (ite (or c!1363655 c!1363653) (regTwo!38740 (regOne!38741 r1!2370)) (regOne!38741 r1!2370))))))

(declare-fun b!7341547 () Bool)

(declare-fun call!670168 () (Set Context!16108))

(assert (=> b!7341547 (= e!4396103 call!670168)))

(declare-fun b!7341548 () Bool)

(assert (=> b!7341548 (= e!4396101 call!670168)))

(declare-fun bm!670163 () Bool)

(assert (=> bm!670163 (= call!670168 call!670172)))

(declare-fun b!7341549 () Bool)

(declare-fun call!670167 () (Set Context!16108))

(assert (=> b!7341549 (= e!4396100 (set.union call!670167 call!670170))))

(declare-fun call!670169 () List!71610)

(declare-fun bm!670164 () Bool)

(assert (=> bm!670164 (= call!670167 (derivationStepZipperDown!2940 (ite c!1363654 (regOne!38741 (regOne!38741 r1!2370)) (ite c!1363655 (regTwo!38740 (regOne!38741 r1!2370)) (ite c!1363653 (regOne!38740 (regOne!38741 r1!2370)) (reg!19443 (regOne!38741 r1!2370))))) (ite (or c!1363654 c!1363655) ct1!282 (Context!16109 call!670169)) c!10362))))

(declare-fun bm!670165 () Bool)

(assert (=> bm!670165 (= call!670169 call!670171)))

(declare-fun b!7341550 () Bool)

(declare-fun e!4396102 () Bool)

(assert (=> b!7341550 (= c!1363655 e!4396102)))

(declare-fun res!2965812 () Bool)

(assert (=> b!7341550 (=> (not res!2965812) (not e!4396102))))

(assert (=> b!7341550 (= res!2965812 (is-Concat!27959 (regOne!38741 r1!2370)))))

(assert (=> b!7341550 (= e!4396100 e!4396099)))

(declare-fun b!7341551 () Bool)

(assert (=> b!7341551 (= e!4396103 (as set.empty (Set Context!16108)))))

(declare-fun b!7341552 () Bool)

(assert (=> b!7341552 (= e!4396099 e!4396101)))

(assert (=> b!7341552 (= c!1363653 (is-Concat!27959 (regOne!38741 r1!2370)))))

(declare-fun bm!670166 () Bool)

(assert (=> bm!670166 (= call!670170 (derivationStepZipperDown!2940 (ite c!1363654 (regTwo!38741 (regOne!38741 r1!2370)) (regOne!38740 (regOne!38741 r1!2370))) (ite c!1363654 ct1!282 (Context!16109 call!670171)) c!10362))))

(declare-fun b!7341553 () Bool)

(assert (=> b!7341553 (= e!4396102 (nullable!8209 (regOne!38740 (regOne!38741 r1!2370))))))

(declare-fun bm!670167 () Bool)

(assert (=> bm!670167 (= call!670172 call!670167)))

(assert (= (and d!2278878 c!1363657) b!7341545))

(assert (= (and d!2278878 (not c!1363657)) b!7341543))

(assert (= (and b!7341543 c!1363654) b!7341549))

(assert (= (and b!7341543 (not c!1363654)) b!7341550))

(assert (= (and b!7341550 res!2965812) b!7341553))

(assert (= (and b!7341550 c!1363655) b!7341546))

(assert (= (and b!7341550 (not c!1363655)) b!7341552))

(assert (= (and b!7341552 c!1363653) b!7341548))

(assert (= (and b!7341552 (not c!1363653)) b!7341544))

(assert (= (and b!7341544 c!1363656) b!7341547))

(assert (= (and b!7341544 (not c!1363656)) b!7341551))

(assert (= (or b!7341548 b!7341547) bm!670165))

(assert (= (or b!7341548 b!7341547) bm!670163))

(assert (= (or b!7341546 bm!670163) bm!670167))

(assert (= (or b!7341546 bm!670165) bm!670162))

(assert (= (or b!7341549 b!7341546) bm!670166))

(assert (= (or b!7341549 bm!670167) bm!670164))

(declare-fun m!8005158 () Bool)

(assert (=> bm!670164 m!8005158))

(declare-fun m!8005160 () Bool)

(assert (=> bm!670162 m!8005160))

(declare-fun m!8005162 () Bool)

(assert (=> b!7341553 m!8005162))

(declare-fun m!8005164 () Bool)

(assert (=> bm!670166 m!8005164))

(assert (=> b!7341545 m!8005148))

(assert (=> b!7341369 d!2278878))

(declare-fun bs!1918467 () Bool)

(declare-fun d!2278880 () Bool)

(assert (= bs!1918467 (and d!2278880 b!7341361)))

(declare-fun lambda!455669 () Int)

(assert (=> bs!1918467 (= lambda!455669 lambda!455646)))

(declare-fun bs!1918468 () Bool)

(assert (= bs!1918468 (and d!2278880 d!2278860)))

(assert (=> bs!1918468 (= lambda!455669 lambda!455662)))

(declare-fun bs!1918469 () Bool)

(assert (= bs!1918469 (and d!2278880 d!2278862)))

(assert (=> bs!1918469 (= lambda!455669 lambda!455663)))

(declare-fun bs!1918470 () Bool)

(assert (= bs!1918470 (and d!2278880 d!2278864)))

(assert (=> bs!1918470 (= lambda!455669 lambda!455664)))

(assert (=> d!2278880 (set.member (Context!16109 (++!16932 (exprs!8554 cWitness!61) (exprs!8554 ct2!378))) (derivationStepZipperDown!2940 (regOne!38741 r1!2370) (Context!16109 (++!16932 (exprs!8554 ct1!282) (exprs!8554 ct2!378))) c!10362))))

(declare-fun lt!2610188 () Unit!165181)

(assert (=> d!2278880 (= lt!2610188 (lemmaConcatPreservesForall!1789 (exprs!8554 ct1!282) (exprs!8554 ct2!378) lambda!455669))))

(declare-fun lt!2610187 () Unit!165181)

(assert (=> d!2278880 (= lt!2610187 (lemmaConcatPreservesForall!1789 (exprs!8554 cWitness!61) (exprs!8554 ct2!378) lambda!455669))))

(declare-fun lt!2610186 () Unit!165181)

(declare-fun choose!57102 (Regex!19114 Context!16108 Context!16108 Context!16108 C!38502) Unit!165181)

(assert (=> d!2278880 (= lt!2610186 (choose!57102 (regOne!38741 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362))))

(assert (=> d!2278880 (validRegex!9710 (regOne!38741 r1!2370))))

(assert (=> d!2278880 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtxDerivDown!49 (regOne!38741 r1!2370) ct1!282 ct2!378 cWitness!61 c!10362) lt!2610186)))

(declare-fun bs!1918471 () Bool)

(assert (= bs!1918471 d!2278880))

(declare-fun m!8005180 () Bool)

(assert (=> bs!1918471 m!8005180))

(declare-fun m!8005182 () Bool)

(assert (=> bs!1918471 m!8005182))

(declare-fun m!8005184 () Bool)

(assert (=> bs!1918471 m!8005184))

(assert (=> bs!1918471 m!8005024))

(declare-fun m!8005186 () Bool)

(assert (=> bs!1918471 m!8005186))

(assert (=> bs!1918471 m!8005018))

(declare-fun m!8005188 () Bool)

(assert (=> bs!1918471 m!8005188))

(declare-fun m!8005190 () Bool)

(assert (=> bs!1918471 m!8005190))

(assert (=> b!7341364 d!2278880))

(assert (=> b!7341364 d!2278872))

(declare-fun b!7341566 () Bool)

(declare-fun e!4396110 () (Set Context!16108))

(declare-fun e!4396112 () (Set Context!16108))

(assert (=> b!7341566 (= e!4396110 e!4396112)))

(declare-fun c!1363663 () Bool)

(assert (=> b!7341566 (= c!1363663 (is-Union!19114 (regOne!38741 r1!2370)))))

(declare-fun b!7341567 () Bool)

(declare-fun c!1363665 () Bool)

(assert (=> b!7341567 (= c!1363665 (is-Star!19114 (regOne!38741 r1!2370)))))

(declare-fun e!4396113 () (Set Context!16108))

(declare-fun e!4396115 () (Set Context!16108))

(assert (=> b!7341567 (= e!4396113 e!4396115)))

(declare-fun b!7341568 () Bool)

(assert (=> b!7341568 (= e!4396110 (set.insert lt!2610126 (as set.empty (Set Context!16108))))))

(declare-fun d!2278884 () Bool)

(declare-fun c!1363666 () Bool)

(assert (=> d!2278884 (= c!1363666 (and (is-ElementMatch!19114 (regOne!38741 r1!2370)) (= (c!1363602 (regOne!38741 r1!2370)) c!10362)))))

(assert (=> d!2278884 (= (derivationStepZipperDown!2940 (regOne!38741 r1!2370) lt!2610126 c!10362) e!4396110)))

(declare-fun b!7341569 () Bool)

(declare-fun e!4396111 () (Set Context!16108))

(declare-fun call!670176 () (Set Context!16108))

(declare-fun call!670178 () (Set Context!16108))

(assert (=> b!7341569 (= e!4396111 (set.union call!670176 call!670178))))

(declare-fun c!1363664 () Bool)

(declare-fun call!670177 () List!71610)

(declare-fun bm!670168 () Bool)

(declare-fun c!1363662 () Bool)

(assert (=> bm!670168 (= call!670177 ($colon$colon!3116 (exprs!8554 lt!2610126) (ite (or c!1363664 c!1363662) (regTwo!38740 (regOne!38741 r1!2370)) (regOne!38741 r1!2370))))))

(declare-fun b!7341570 () Bool)

(declare-fun call!670174 () (Set Context!16108))

(assert (=> b!7341570 (= e!4396115 call!670174)))

(declare-fun b!7341571 () Bool)

(assert (=> b!7341571 (= e!4396113 call!670174)))

(declare-fun bm!670169 () Bool)

(assert (=> bm!670169 (= call!670174 call!670178)))

(declare-fun b!7341572 () Bool)

(declare-fun call!670173 () (Set Context!16108))

(assert (=> b!7341572 (= e!4396112 (set.union call!670173 call!670176))))

(declare-fun bm!670170 () Bool)

(declare-fun call!670175 () List!71610)

(assert (=> bm!670170 (= call!670173 (derivationStepZipperDown!2940 (ite c!1363663 (regOne!38741 (regOne!38741 r1!2370)) (ite c!1363664 (regTwo!38740 (regOne!38741 r1!2370)) (ite c!1363662 (regOne!38740 (regOne!38741 r1!2370)) (reg!19443 (regOne!38741 r1!2370))))) (ite (or c!1363663 c!1363664) lt!2610126 (Context!16109 call!670175)) c!10362))))

(declare-fun bm!670171 () Bool)

(assert (=> bm!670171 (= call!670175 call!670177)))

(declare-fun b!7341573 () Bool)

(declare-fun e!4396114 () Bool)

(assert (=> b!7341573 (= c!1363664 e!4396114)))

(declare-fun res!2965819 () Bool)

(assert (=> b!7341573 (=> (not res!2965819) (not e!4396114))))

(assert (=> b!7341573 (= res!2965819 (is-Concat!27959 (regOne!38741 r1!2370)))))

(assert (=> b!7341573 (= e!4396112 e!4396111)))

(declare-fun b!7341574 () Bool)

(assert (=> b!7341574 (= e!4396115 (as set.empty (Set Context!16108)))))

(declare-fun b!7341575 () Bool)

(assert (=> b!7341575 (= e!4396111 e!4396113)))

(assert (=> b!7341575 (= c!1363662 (is-Concat!27959 (regOne!38741 r1!2370)))))

(declare-fun bm!670172 () Bool)

(assert (=> bm!670172 (= call!670176 (derivationStepZipperDown!2940 (ite c!1363663 (regTwo!38741 (regOne!38741 r1!2370)) (regOne!38740 (regOne!38741 r1!2370))) (ite c!1363663 lt!2610126 (Context!16109 call!670177)) c!10362))))

(declare-fun b!7341576 () Bool)

(assert (=> b!7341576 (= e!4396114 (nullable!8209 (regOne!38740 (regOne!38741 r1!2370))))))

(declare-fun bm!670173 () Bool)

(assert (=> bm!670173 (= call!670178 call!670173)))

(assert (= (and d!2278884 c!1363666) b!7341568))

(assert (= (and d!2278884 (not c!1363666)) b!7341566))

(assert (= (and b!7341566 c!1363663) b!7341572))

(assert (= (and b!7341566 (not c!1363663)) b!7341573))

(assert (= (and b!7341573 res!2965819) b!7341576))

(assert (= (and b!7341573 c!1363664) b!7341569))

(assert (= (and b!7341573 (not c!1363664)) b!7341575))

(assert (= (and b!7341575 c!1363662) b!7341571))

(assert (= (and b!7341575 (not c!1363662)) b!7341567))

(assert (= (and b!7341567 c!1363665) b!7341570))

(assert (= (and b!7341567 (not c!1363665)) b!7341574))

(assert (= (or b!7341571 b!7341570) bm!670171))

(assert (= (or b!7341571 b!7341570) bm!670169))

(assert (= (or b!7341569 bm!670169) bm!670173))

(assert (= (or b!7341569 bm!670171) bm!670168))

(assert (= (or b!7341572 b!7341569) bm!670172))

(assert (= (or b!7341572 bm!670173) bm!670170))

(declare-fun m!8005192 () Bool)

(assert (=> bm!670170 m!8005192))

(declare-fun m!8005194 () Bool)

(assert (=> bm!670168 m!8005194))

(assert (=> b!7341576 m!8005162))

(declare-fun m!8005196 () Bool)

(assert (=> bm!670172 m!8005196))

(assert (=> b!7341568 m!8005112))

(assert (=> b!7341364 d!2278884))

(assert (=> b!7341364 d!2278856))

(declare-fun b!7341579 () Bool)

(declare-fun res!2965821 () Bool)

(declare-fun e!4396117 () Bool)

(assert (=> b!7341579 (=> (not res!2965821) (not e!4396117))))

(declare-fun lt!2610189 () List!71610)

(assert (=> b!7341579 (= res!2965821 (= (size!42010 lt!2610189) (+ (size!42010 (exprs!8554 cWitness!61)) (size!42010 (exprs!8554 ct2!378)))))))

(declare-fun d!2278886 () Bool)

(assert (=> d!2278886 e!4396117))

(declare-fun res!2965820 () Bool)

(assert (=> d!2278886 (=> (not res!2965820) (not e!4396117))))

(assert (=> d!2278886 (= res!2965820 (= (content!15031 lt!2610189) (set.union (content!15031 (exprs!8554 cWitness!61)) (content!15031 (exprs!8554 ct2!378)))))))

(declare-fun e!4396116 () List!71610)

(assert (=> d!2278886 (= lt!2610189 e!4396116)))

(declare-fun c!1363667 () Bool)

(assert (=> d!2278886 (= c!1363667 (is-Nil!71486 (exprs!8554 cWitness!61)))))

(assert (=> d!2278886 (= (++!16932 (exprs!8554 cWitness!61) (exprs!8554 ct2!378)) lt!2610189)))

(declare-fun b!7341580 () Bool)

(assert (=> b!7341580 (= e!4396117 (or (not (= (exprs!8554 ct2!378) Nil!71486)) (= lt!2610189 (exprs!8554 cWitness!61))))))

(declare-fun b!7341578 () Bool)

(assert (=> b!7341578 (= e!4396116 (Cons!71486 (h!77934 (exprs!8554 cWitness!61)) (++!16932 (t!386005 (exprs!8554 cWitness!61)) (exprs!8554 ct2!378))))))

(declare-fun b!7341577 () Bool)

(assert (=> b!7341577 (= e!4396116 (exprs!8554 ct2!378))))

(assert (= (and d!2278886 c!1363667) b!7341577))

(assert (= (and d!2278886 (not c!1363667)) b!7341578))

(assert (= (and d!2278886 res!2965820) b!7341579))

(assert (= (and b!7341579 res!2965821) b!7341580))

(declare-fun m!8005198 () Bool)

(assert (=> b!7341579 m!8005198))

(declare-fun m!8005200 () Bool)

(assert (=> b!7341579 m!8005200))

(assert (=> b!7341579 m!8005128))

(declare-fun m!8005202 () Bool)

(assert (=> d!2278886 m!8005202))

(declare-fun m!8005204 () Bool)

(assert (=> d!2278886 m!8005204))

(assert (=> d!2278886 m!8005134))

(declare-fun m!8005206 () Bool)

(assert (=> b!7341578 m!8005206))

(assert (=> b!7341364 d!2278886))

(declare-fun b!7341585 () Bool)

(declare-fun e!4396120 () Bool)

(declare-fun tp!2084662 () Bool)

(declare-fun tp!2084663 () Bool)

(assert (=> b!7341585 (= e!4396120 (and tp!2084662 tp!2084663))))

(assert (=> b!7341365 (= tp!2084632 e!4396120)))

(assert (= (and b!7341365 (is-Cons!71486 (exprs!8554 cWitness!61))) b!7341585))

(declare-fun b!7341586 () Bool)

(declare-fun e!4396121 () Bool)

(declare-fun tp!2084664 () Bool)

(declare-fun tp!2084665 () Bool)

(assert (=> b!7341586 (= e!4396121 (and tp!2084664 tp!2084665))))

(assert (=> b!7341360 (= tp!2084633 e!4396121)))

(assert (= (and b!7341360 (is-Cons!71486 (exprs!8554 ct1!282))) b!7341586))

(declare-fun b!7341587 () Bool)

(declare-fun e!4396122 () Bool)

(declare-fun tp!2084666 () Bool)

(declare-fun tp!2084667 () Bool)

(assert (=> b!7341587 (= e!4396122 (and tp!2084666 tp!2084667))))

(assert (=> b!7341370 (= tp!2084629 e!4396122)))

(assert (= (and b!7341370 (is-Cons!71486 (exprs!8554 ct2!378))) b!7341587))

(declare-fun b!7341599 () Bool)

(declare-fun e!4396125 () Bool)

(declare-fun tp!2084680 () Bool)

(declare-fun tp!2084681 () Bool)

(assert (=> b!7341599 (= e!4396125 (and tp!2084680 tp!2084681))))

(declare-fun b!7341600 () Bool)

(declare-fun tp!2084679 () Bool)

(assert (=> b!7341600 (= e!4396125 tp!2084679)))

(declare-fun b!7341601 () Bool)

(declare-fun tp!2084678 () Bool)

(declare-fun tp!2084682 () Bool)

(assert (=> b!7341601 (= e!4396125 (and tp!2084678 tp!2084682))))

(declare-fun b!7341598 () Bool)

(assert (=> b!7341598 (= e!4396125 tp_is_empty!48473)))

(assert (=> b!7341366 (= tp!2084630 e!4396125)))

(assert (= (and b!7341366 (is-ElementMatch!19114 (regOne!38741 r1!2370))) b!7341598))

(assert (= (and b!7341366 (is-Concat!27959 (regOne!38741 r1!2370))) b!7341599))

(assert (= (and b!7341366 (is-Star!19114 (regOne!38741 r1!2370))) b!7341600))

(assert (= (and b!7341366 (is-Union!19114 (regOne!38741 r1!2370))) b!7341601))

(declare-fun b!7341603 () Bool)

(declare-fun e!4396126 () Bool)

(declare-fun tp!2084685 () Bool)

(declare-fun tp!2084686 () Bool)

(assert (=> b!7341603 (= e!4396126 (and tp!2084685 tp!2084686))))

(declare-fun b!7341604 () Bool)

(declare-fun tp!2084684 () Bool)

(assert (=> b!7341604 (= e!4396126 tp!2084684)))

(declare-fun b!7341605 () Bool)

(declare-fun tp!2084683 () Bool)

(declare-fun tp!2084687 () Bool)

(assert (=> b!7341605 (= e!4396126 (and tp!2084683 tp!2084687))))

(declare-fun b!7341602 () Bool)

(assert (=> b!7341602 (= e!4396126 tp_is_empty!48473)))

(assert (=> b!7341366 (= tp!2084631 e!4396126)))

(assert (= (and b!7341366 (is-ElementMatch!19114 (regTwo!38741 r1!2370))) b!7341602))

(assert (= (and b!7341366 (is-Concat!27959 (regTwo!38741 r1!2370))) b!7341603))

(assert (= (and b!7341366 (is-Star!19114 (regTwo!38741 r1!2370))) b!7341604))

(assert (= (and b!7341366 (is-Union!19114 (regTwo!38741 r1!2370))) b!7341605))

(declare-fun b!7341607 () Bool)

(declare-fun e!4396127 () Bool)

(declare-fun tp!2084690 () Bool)

(declare-fun tp!2084691 () Bool)

(assert (=> b!7341607 (= e!4396127 (and tp!2084690 tp!2084691))))

(declare-fun b!7341608 () Bool)

(declare-fun tp!2084689 () Bool)

(assert (=> b!7341608 (= e!4396127 tp!2084689)))

(declare-fun b!7341609 () Bool)

(declare-fun tp!2084688 () Bool)

(declare-fun tp!2084692 () Bool)

(assert (=> b!7341609 (= e!4396127 (and tp!2084688 tp!2084692))))

(declare-fun b!7341606 () Bool)

(assert (=> b!7341606 (= e!4396127 tp_is_empty!48473)))

(assert (=> b!7341368 (= tp!2084628 e!4396127)))

(assert (= (and b!7341368 (is-ElementMatch!19114 (regOne!38740 r1!2370))) b!7341606))

(assert (= (and b!7341368 (is-Concat!27959 (regOne!38740 r1!2370))) b!7341607))

(assert (= (and b!7341368 (is-Star!19114 (regOne!38740 r1!2370))) b!7341608))

(assert (= (and b!7341368 (is-Union!19114 (regOne!38740 r1!2370))) b!7341609))

(declare-fun b!7341611 () Bool)

(declare-fun e!4396128 () Bool)

(declare-fun tp!2084695 () Bool)

(declare-fun tp!2084696 () Bool)

(assert (=> b!7341611 (= e!4396128 (and tp!2084695 tp!2084696))))

(declare-fun b!7341612 () Bool)

(declare-fun tp!2084694 () Bool)

(assert (=> b!7341612 (= e!4396128 tp!2084694)))

(declare-fun b!7341613 () Bool)

(declare-fun tp!2084693 () Bool)

(declare-fun tp!2084697 () Bool)

(assert (=> b!7341613 (= e!4396128 (and tp!2084693 tp!2084697))))

(declare-fun b!7341610 () Bool)

(assert (=> b!7341610 (= e!4396128 tp_is_empty!48473)))

(assert (=> b!7341368 (= tp!2084627 e!4396128)))

(assert (= (and b!7341368 (is-ElementMatch!19114 (regTwo!38740 r1!2370))) b!7341610))

(assert (= (and b!7341368 (is-Concat!27959 (regTwo!38740 r1!2370))) b!7341611))

(assert (= (and b!7341368 (is-Star!19114 (regTwo!38740 r1!2370))) b!7341612))

(assert (= (and b!7341368 (is-Union!19114 (regTwo!38740 r1!2370))) b!7341613))

(declare-fun b!7341615 () Bool)

(declare-fun e!4396129 () Bool)

(declare-fun tp!2084700 () Bool)

(declare-fun tp!2084701 () Bool)

(assert (=> b!7341615 (= e!4396129 (and tp!2084700 tp!2084701))))

(declare-fun b!7341616 () Bool)

(declare-fun tp!2084699 () Bool)

(assert (=> b!7341616 (= e!4396129 tp!2084699)))

(declare-fun b!7341617 () Bool)

(declare-fun tp!2084698 () Bool)

(declare-fun tp!2084702 () Bool)

(assert (=> b!7341617 (= e!4396129 (and tp!2084698 tp!2084702))))

(declare-fun b!7341614 () Bool)

(assert (=> b!7341614 (= e!4396129 tp_is_empty!48473)))

(assert (=> b!7341362 (= tp!2084626 e!4396129)))

(assert (= (and b!7341362 (is-ElementMatch!19114 (reg!19443 r1!2370))) b!7341614))

(assert (= (and b!7341362 (is-Concat!27959 (reg!19443 r1!2370))) b!7341615))

(assert (= (and b!7341362 (is-Star!19114 (reg!19443 r1!2370))) b!7341616))

(assert (= (and b!7341362 (is-Union!19114 (reg!19443 r1!2370))) b!7341617))

(declare-fun b_lambda!283885 () Bool)

(assert (= b_lambda!283883 (or b!7341361 b_lambda!283885)))

(declare-fun bs!1918473 () Bool)

(declare-fun d!2278890 () Bool)

(assert (= bs!1918473 (and d!2278890 b!7341361)))

(assert (=> bs!1918473 (= (dynLambda!29453 lambda!455646 (h!77934 (exprs!8554 ct1!282))) (validRegex!9710 (h!77934 (exprs!8554 ct1!282))))))

(declare-fun m!8005212 () Bool)

(assert (=> bs!1918473 m!8005212))

(assert (=> b!7341414 d!2278890))

(push 1)

(assert (not bm!670111))

(assert (not b!7341607))

(assert (not d!2278886))

(assert (not d!2278872))

(assert (not d!2278856))

(assert (not b!7341609))

(assert (not b!7341605))

(assert (not b!7341616))

(assert (not bm!670156))

(assert (not b!7341608))

(assert (not bm!670170))

(assert (not b!7341587))

(assert (not b_lambda!283885))

(assert (not bm!670160))

(assert (not bm!670164))

(assert (not bm!670150))

(assert (not bm!670166))

(assert (not b!7341604))

(assert (not b!7341456))

(assert (not bm!670154))

(assert (not bm!670140))

(assert (not b!7341578))

(assert (not bm!670158))

(assert (not b!7341585))

(assert (not d!2278868))

(assert (not bm!670112))

(assert (not b!7341553))

(assert (not d!2278862))

(assert (not bs!1918473))

(assert (not b!7341611))

(assert (not d!2278880))

(assert (not b!7341518))

(assert (not bm!670162))

(assert (not b!7341599))

(assert (not d!2278860))

(assert (not b!7341415))

(assert (not bm!670142))

(assert (not b!7341601))

(assert (not b!7341531))

(assert tp_is_empty!48473)

(assert (not b!7341612))

(assert (not b!7341542))

(assert (not b!7341579))

(assert (not b!7341576))

(assert (not b!7341617))

(assert (not d!2278864))

(assert (not b!7341586))

(assert (not bm!670152))

(assert (not b!7341600))

(assert (not bm!670138))

(assert (not bm!670168))

(assert (not b!7341615))

(assert (not bm!670172))

(assert (not b!7341603))

(assert (not b!7341497))

(assert (not b!7341613))

(assert (not b!7341519))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

