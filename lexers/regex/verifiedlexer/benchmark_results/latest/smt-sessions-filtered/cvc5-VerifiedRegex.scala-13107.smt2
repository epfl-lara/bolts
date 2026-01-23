; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!716878 () Bool)

(assert start!716878)

(declare-fun b!7339344 () Bool)

(declare-fun e!4394826 () Bool)

(declare-fun tp!2083893 () Bool)

(declare-fun tp!2083891 () Bool)

(assert (=> b!7339344 (= e!4394826 (and tp!2083893 tp!2083891))))

(declare-fun b!7339346 () Bool)

(declare-fun e!4394825 () Bool)

(declare-fun tp!2083895 () Bool)

(assert (=> b!7339346 (= e!4394825 tp!2083895)))

(declare-fun b!7339347 () Bool)

(declare-fun res!2965206 () Bool)

(declare-fun e!4394822 () Bool)

(assert (=> b!7339347 (=> (not res!2965206) (not e!4394822))))

(declare-datatypes ((C!38478 0))(
  ( (C!38479 (val!29599 Int)) )
))
(declare-datatypes ((Regex!19102 0))(
  ( (ElementMatch!19102 (c!1363160 C!38478)) (Concat!27947 (regOne!38716 Regex!19102) (regTwo!38716 Regex!19102)) (EmptyExpr!19102) (Star!19102 (reg!19431 Regex!19102)) (EmptyLang!19102) (Union!19102 (regOne!38717 Regex!19102) (regTwo!38717 Regex!19102)) )
))
(declare-fun r1!2370 () Regex!19102)

(declare-fun c!10362 () C!38478)

(declare-datatypes ((List!71598 0))(
  ( (Nil!71474) (Cons!71474 (h!77922 Regex!19102) (t!385993 List!71598)) )
))
(declare-datatypes ((Context!16084 0))(
  ( (Context!16085 (exprs!8542 List!71598)) )
))
(declare-fun cWitness!61 () Context!16084)

(declare-fun ct1!282 () Context!16084)

(declare-fun derivationStepZipperDown!2928 (Regex!19102 Context!16084 C!38478) (Set Context!16084))

(assert (=> b!7339347 (= res!2965206 (set.member cWitness!61 (derivationStepZipperDown!2928 r1!2370 ct1!282 c!10362)))))

(declare-fun b!7339348 () Bool)

(declare-fun e!4394821 () Bool)

(assert (=> b!7339348 (= e!4394822 e!4394821)))

(declare-fun res!2965205 () Bool)

(assert (=> b!7339348 (=> (not res!2965205) (not e!4394821))))

(assert (=> b!7339348 (= res!2965205 (and (or (not (is-ElementMatch!19102 r1!2370)) (not (= c!10362 (c!1363160 r1!2370)))) (is-Union!19102 r1!2370)))))

(declare-fun lt!2609715 () (Set Context!16084))

(declare-fun ct2!378 () Context!16084)

(declare-fun ++!16920 (List!71598 List!71598) List!71598)

(assert (=> b!7339348 (= lt!2609715 (derivationStepZipperDown!2928 r1!2370 (Context!16085 (++!16920 (exprs!8542 ct1!282) (exprs!8542 ct2!378))) c!10362))))

(declare-datatypes ((Unit!165157 0))(
  ( (Unit!165158) )
))
(declare-fun lt!2609714 () Unit!165157)

(declare-fun lambda!455454 () Int)

(declare-fun lemmaConcatPreservesForall!1777 (List!71598 List!71598 Int) Unit!165157)

(assert (=> b!7339348 (= lt!2609714 (lemmaConcatPreservesForall!1777 (exprs!8542 ct1!282) (exprs!8542 ct2!378) lambda!455454))))

(declare-fun b!7339349 () Bool)

(declare-fun tp_is_empty!48449 () Bool)

(assert (=> b!7339349 (= e!4394826 tp_is_empty!48449)))

(declare-fun b!7339350 () Bool)

(declare-fun tp!2083889 () Bool)

(assert (=> b!7339350 (= e!4394826 tp!2083889)))

(declare-fun b!7339351 () Bool)

(declare-fun tp!2083890 () Bool)

(declare-fun tp!2083894 () Bool)

(assert (=> b!7339351 (= e!4394826 (and tp!2083890 tp!2083894))))

(declare-fun b!7339352 () Bool)

(declare-fun validRegex!9698 (Regex!19102) Bool)

(assert (=> b!7339352 (= e!4394821 (not (validRegex!9698 (regTwo!38717 r1!2370))))))

(declare-fun b!7339353 () Bool)

(declare-fun e!4394824 () Bool)

(declare-fun tp!2083888 () Bool)

(assert (=> b!7339353 (= e!4394824 tp!2083888)))

(declare-fun b!7339345 () Bool)

(declare-fun e!4394823 () Bool)

(declare-fun tp!2083892 () Bool)

(assert (=> b!7339345 (= e!4394823 tp!2083892)))

(declare-fun res!2965207 () Bool)

(assert (=> start!716878 (=> (not res!2965207) (not e!4394822))))

(assert (=> start!716878 (= res!2965207 (validRegex!9698 r1!2370))))

(assert (=> start!716878 e!4394822))

(assert (=> start!716878 tp_is_empty!48449))

(declare-fun inv!91096 (Context!16084) Bool)

(assert (=> start!716878 (and (inv!91096 cWitness!61) e!4394823)))

(assert (=> start!716878 (and (inv!91096 ct1!282) e!4394825)))

(assert (=> start!716878 e!4394826))

(assert (=> start!716878 (and (inv!91096 ct2!378) e!4394824)))

(assert (= (and start!716878 res!2965207) b!7339347))

(assert (= (and b!7339347 res!2965206) b!7339348))

(assert (= (and b!7339348 res!2965205) b!7339352))

(assert (= start!716878 b!7339345))

(assert (= start!716878 b!7339346))

(assert (= (and start!716878 (is-ElementMatch!19102 r1!2370)) b!7339349))

(assert (= (and start!716878 (is-Concat!27947 r1!2370)) b!7339344))

(assert (= (and start!716878 (is-Star!19102 r1!2370)) b!7339350))

(assert (= (and start!716878 (is-Union!19102 r1!2370)) b!7339351))

(assert (= start!716878 b!7339353))

(declare-fun m!8003650 () Bool)

(assert (=> b!7339347 m!8003650))

(declare-fun m!8003652 () Bool)

(assert (=> b!7339347 m!8003652))

(declare-fun m!8003654 () Bool)

(assert (=> b!7339348 m!8003654))

(declare-fun m!8003656 () Bool)

(assert (=> b!7339348 m!8003656))

(declare-fun m!8003658 () Bool)

(assert (=> b!7339348 m!8003658))

(declare-fun m!8003660 () Bool)

(assert (=> b!7339352 m!8003660))

(declare-fun m!8003662 () Bool)

(assert (=> start!716878 m!8003662))

(declare-fun m!8003664 () Bool)

(assert (=> start!716878 m!8003664))

(declare-fun m!8003666 () Bool)

(assert (=> start!716878 m!8003666))

(declare-fun m!8003668 () Bool)

(assert (=> start!716878 m!8003668))

(push 1)

(assert (not b!7339350))

(assert (not b!7339353))

(assert (not b!7339344))

(assert (not b!7339347))

(assert (not b!7339348))

(assert (not b!7339351))

(assert (not b!7339345))

(assert (not b!7339346))

(assert (not start!716878))

(assert tp_is_empty!48449)

(assert (not b!7339352))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!669637 () Bool)

(declare-fun call!669644 () (Set Context!16084))

(declare-fun call!669646 () (Set Context!16084))

(assert (=> bm!669637 (= call!669644 call!669646)))

(declare-fun b!7339406 () Bool)

(declare-fun e!4394858 () (Set Context!16084))

(assert (=> b!7339406 (= e!4394858 (as set.empty (Set Context!16084)))))

(declare-fun d!2278538 () Bool)

(declare-fun c!1363176 () Bool)

(assert (=> d!2278538 (= c!1363176 (and (is-ElementMatch!19102 r1!2370) (= (c!1363160 r1!2370) c!10362)))))

(declare-fun e!4394862 () (Set Context!16084))

(assert (=> d!2278538 (= (derivationStepZipperDown!2928 r1!2370 ct1!282 c!10362) e!4394862)))

(declare-fun bm!669638 () Bool)

(declare-fun c!1363174 () Bool)

(declare-fun c!1363172 () Bool)

(declare-fun c!1363175 () Bool)

(declare-fun call!669647 () (Set Context!16084))

(declare-fun call!669642 () List!71598)

(assert (=> bm!669638 (= call!669647 (derivationStepZipperDown!2928 (ite c!1363172 (regTwo!38717 r1!2370) (ite c!1363175 (regTwo!38716 r1!2370) (ite c!1363174 (regOne!38716 r1!2370) (reg!19431 r1!2370)))) (ite (or c!1363172 c!1363175) ct1!282 (Context!16085 call!669642)) c!10362))))

(declare-fun b!7339407 () Bool)

(assert (=> b!7339407 (= e!4394862 (set.insert ct1!282 (as set.empty (Set Context!16084))))))

(declare-fun call!669645 () List!71598)

(declare-fun call!669643 () (Set Context!16084))

(declare-fun bm!669639 () Bool)

(assert (=> bm!669639 (= call!669643 (derivationStepZipperDown!2928 (ite c!1363172 (regOne!38717 r1!2370) (regOne!38716 r1!2370)) (ite c!1363172 ct1!282 (Context!16085 call!669645)) c!10362))))

(declare-fun b!7339408 () Bool)

(declare-fun e!4394860 () (Set Context!16084))

(declare-fun e!4394861 () (Set Context!16084))

(assert (=> b!7339408 (= e!4394860 e!4394861)))

(assert (=> b!7339408 (= c!1363174 (is-Concat!27947 r1!2370))))

(declare-fun b!7339409 () Bool)

(declare-fun e!4394859 () (Set Context!16084))

(assert (=> b!7339409 (= e!4394859 (set.union call!669643 call!669647))))

(declare-fun b!7339410 () Bool)

(declare-fun c!1363173 () Bool)

(assert (=> b!7339410 (= c!1363173 (is-Star!19102 r1!2370))))

(assert (=> b!7339410 (= e!4394861 e!4394858)))

(declare-fun bm!669640 () Bool)

(assert (=> bm!669640 (= call!669646 call!669647)))

(declare-fun b!7339411 () Bool)

(assert (=> b!7339411 (= e!4394862 e!4394859)))

(assert (=> b!7339411 (= c!1363172 (is-Union!19102 r1!2370))))

(declare-fun b!7339412 () Bool)

(assert (=> b!7339412 (= e!4394861 call!669644)))

(declare-fun b!7339413 () Bool)

(assert (=> b!7339413 (= e!4394858 call!669644)))

(declare-fun bm!669641 () Bool)

(assert (=> bm!669641 (= call!669642 call!669645)))

(declare-fun b!7339414 () Bool)

(declare-fun e!4394857 () Bool)

(assert (=> b!7339414 (= c!1363175 e!4394857)))

(declare-fun res!2965219 () Bool)

(assert (=> b!7339414 (=> (not res!2965219) (not e!4394857))))

(assert (=> b!7339414 (= res!2965219 (is-Concat!27947 r1!2370))))

(assert (=> b!7339414 (= e!4394859 e!4394860)))

(declare-fun b!7339415 () Bool)

(declare-fun nullable!8199 (Regex!19102) Bool)

(assert (=> b!7339415 (= e!4394857 (nullable!8199 (regOne!38716 r1!2370)))))

(declare-fun bm!669642 () Bool)

(declare-fun $colon$colon!3106 (List!71598 Regex!19102) List!71598)

(assert (=> bm!669642 (= call!669645 ($colon$colon!3106 (exprs!8542 ct1!282) (ite (or c!1363175 c!1363174) (regTwo!38716 r1!2370) r1!2370)))))

(declare-fun b!7339416 () Bool)

(assert (=> b!7339416 (= e!4394860 (set.union call!669643 call!669646))))

(assert (= (and d!2278538 c!1363176) b!7339407))

(assert (= (and d!2278538 (not c!1363176)) b!7339411))

(assert (= (and b!7339411 c!1363172) b!7339409))

(assert (= (and b!7339411 (not c!1363172)) b!7339414))

(assert (= (and b!7339414 res!2965219) b!7339415))

(assert (= (and b!7339414 c!1363175) b!7339416))

(assert (= (and b!7339414 (not c!1363175)) b!7339408))

(assert (= (and b!7339408 c!1363174) b!7339412))

(assert (= (and b!7339408 (not c!1363174)) b!7339410))

(assert (= (and b!7339410 c!1363173) b!7339413))

(assert (= (and b!7339410 (not c!1363173)) b!7339406))

(assert (= (or b!7339412 b!7339413) bm!669641))

(assert (= (or b!7339412 b!7339413) bm!669637))

(assert (= (or b!7339416 bm!669637) bm!669640))

(assert (= (or b!7339416 bm!669641) bm!669642))

(assert (= (or b!7339409 bm!669640) bm!669638))

(assert (= (or b!7339409 b!7339416) bm!669639))

(declare-fun m!8003690 () Bool)

(assert (=> b!7339415 m!8003690))

(declare-fun m!8003692 () Bool)

(assert (=> bm!669638 m!8003692))

(declare-fun m!8003694 () Bool)

(assert (=> b!7339407 m!8003694))

(declare-fun m!8003696 () Bool)

(assert (=> bm!669639 m!8003696))

(declare-fun m!8003698 () Bool)

(assert (=> bm!669642 m!8003698))

(assert (=> b!7339347 d!2278538))

(declare-fun b!7339453 () Bool)

(declare-fun e!4394895 () Bool)

(declare-fun call!669660 () Bool)

(assert (=> b!7339453 (= e!4394895 call!669660)))

(declare-fun b!7339454 () Bool)

(declare-fun res!2965244 () Bool)

(declare-fun e!4394893 () Bool)

(assert (=> b!7339454 (=> res!2965244 e!4394893)))

(assert (=> b!7339454 (= res!2965244 (not (is-Concat!27947 r1!2370)))))

(declare-fun e!4394894 () Bool)

(assert (=> b!7339454 (= e!4394894 e!4394893)))

(declare-fun d!2278542 () Bool)

(declare-fun res!2965242 () Bool)

(declare-fun e!4394891 () Bool)

(assert (=> d!2278542 (=> res!2965242 e!4394891)))

(assert (=> d!2278542 (= res!2965242 (is-ElementMatch!19102 r1!2370))))

(assert (=> d!2278542 (= (validRegex!9698 r1!2370) e!4394891)))

(declare-fun bm!669653 () Bool)

(declare-fun call!669658 () Bool)

(declare-fun c!1363185 () Bool)

(assert (=> bm!669653 (= call!669658 (validRegex!9698 (ite c!1363185 (regTwo!38717 r1!2370) (regOne!38716 r1!2370))))))

(declare-fun b!7339455 () Bool)

(declare-fun e!4394892 () Bool)

(assert (=> b!7339455 (= e!4394892 e!4394895)))

(declare-fun res!2965243 () Bool)

(assert (=> b!7339455 (= res!2965243 (not (nullable!8199 (reg!19431 r1!2370))))))

(assert (=> b!7339455 (=> (not res!2965243) (not e!4394895))))

(declare-fun b!7339456 () Bool)

(declare-fun e!4394896 () Bool)

(assert (=> b!7339456 (= e!4394896 call!669658)))

(declare-fun b!7339457 () Bool)

(assert (=> b!7339457 (= e!4394891 e!4394892)))

(declare-fun c!1363186 () Bool)

(assert (=> b!7339457 (= c!1363186 (is-Star!19102 r1!2370))))

(declare-fun bm!669654 () Bool)

(assert (=> bm!669654 (= call!669660 (validRegex!9698 (ite c!1363186 (reg!19431 r1!2370) (ite c!1363185 (regOne!38717 r1!2370) (regTwo!38716 r1!2370)))))))

(declare-fun b!7339458 () Bool)

(declare-fun e!4394897 () Bool)

(declare-fun call!669659 () Bool)

(assert (=> b!7339458 (= e!4394897 call!669659)))

(declare-fun bm!669655 () Bool)

(assert (=> bm!669655 (= call!669659 call!669660)))

(declare-fun b!7339459 () Bool)

(assert (=> b!7339459 (= e!4394892 e!4394894)))

(assert (=> b!7339459 (= c!1363185 (is-Union!19102 r1!2370))))

(declare-fun b!7339460 () Bool)

(assert (=> b!7339460 (= e!4394893 e!4394897)))

(declare-fun res!2965240 () Bool)

(assert (=> b!7339460 (=> (not res!2965240) (not e!4394897))))

(assert (=> b!7339460 (= res!2965240 call!669658)))

(declare-fun b!7339461 () Bool)

(declare-fun res!2965241 () Bool)

(assert (=> b!7339461 (=> (not res!2965241) (not e!4394896))))

(assert (=> b!7339461 (= res!2965241 call!669659)))

(assert (=> b!7339461 (= e!4394894 e!4394896)))

(assert (= (and d!2278542 (not res!2965242)) b!7339457))

(assert (= (and b!7339457 c!1363186) b!7339455))

(assert (= (and b!7339457 (not c!1363186)) b!7339459))

(assert (= (and b!7339455 res!2965243) b!7339453))

(assert (= (and b!7339459 c!1363185) b!7339461))

(assert (= (and b!7339459 (not c!1363185)) b!7339454))

(assert (= (and b!7339461 res!2965241) b!7339456))

(assert (= (and b!7339454 (not res!2965244)) b!7339460))

(assert (= (and b!7339460 res!2965240) b!7339458))

(assert (= (or b!7339461 b!7339458) bm!669655))

(assert (= (or b!7339456 b!7339460) bm!669653))

(assert (= (or b!7339453 bm!669655) bm!669654))

(declare-fun m!8003700 () Bool)

(assert (=> bm!669653 m!8003700))

(declare-fun m!8003702 () Bool)

(assert (=> b!7339455 m!8003702))

(declare-fun m!8003704 () Bool)

(assert (=> bm!669654 m!8003704))

(assert (=> start!716878 d!2278542))

(declare-fun bs!1918284 () Bool)

(declare-fun d!2278544 () Bool)

(assert (= bs!1918284 (and d!2278544 b!7339348)))

(declare-fun lambda!455460 () Int)

(assert (=> bs!1918284 (= lambda!455460 lambda!455454)))

(declare-fun forall!17936 (List!71598 Int) Bool)

(assert (=> d!2278544 (= (inv!91096 cWitness!61) (forall!17936 (exprs!8542 cWitness!61) lambda!455460))))

(declare-fun bs!1918285 () Bool)

(assert (= bs!1918285 d!2278544))

(declare-fun m!8003706 () Bool)

(assert (=> bs!1918285 m!8003706))

(assert (=> start!716878 d!2278544))

(declare-fun bs!1918286 () Bool)

(declare-fun d!2278546 () Bool)

(assert (= bs!1918286 (and d!2278546 b!7339348)))

(declare-fun lambda!455461 () Int)

(assert (=> bs!1918286 (= lambda!455461 lambda!455454)))

(declare-fun bs!1918287 () Bool)

(assert (= bs!1918287 (and d!2278546 d!2278544)))

(assert (=> bs!1918287 (= lambda!455461 lambda!455460)))

(assert (=> d!2278546 (= (inv!91096 ct1!282) (forall!17936 (exprs!8542 ct1!282) lambda!455461))))

(declare-fun bs!1918288 () Bool)

(assert (= bs!1918288 d!2278546))

(declare-fun m!8003708 () Bool)

(assert (=> bs!1918288 m!8003708))

(assert (=> start!716878 d!2278546))

(declare-fun bs!1918289 () Bool)

(declare-fun d!2278548 () Bool)

(assert (= bs!1918289 (and d!2278548 b!7339348)))

(declare-fun lambda!455462 () Int)

(assert (=> bs!1918289 (= lambda!455462 lambda!455454)))

(declare-fun bs!1918290 () Bool)

(assert (= bs!1918290 (and d!2278548 d!2278544)))

(assert (=> bs!1918290 (= lambda!455462 lambda!455460)))

(declare-fun bs!1918291 () Bool)

(assert (= bs!1918291 (and d!2278548 d!2278546)))

(assert (=> bs!1918291 (= lambda!455462 lambda!455461)))

(assert (=> d!2278548 (= (inv!91096 ct2!378) (forall!17936 (exprs!8542 ct2!378) lambda!455462))))

(declare-fun bs!1918292 () Bool)

(assert (= bs!1918292 d!2278548))

(declare-fun m!8003710 () Bool)

(assert (=> bs!1918292 m!8003710))

(assert (=> start!716878 d!2278548))

(declare-fun b!7339462 () Bool)

(declare-fun e!4394902 () Bool)

(declare-fun call!669665 () Bool)

(assert (=> b!7339462 (= e!4394902 call!669665)))

(declare-fun b!7339463 () Bool)

(declare-fun res!2965249 () Bool)

(declare-fun e!4394900 () Bool)

(assert (=> b!7339463 (=> res!2965249 e!4394900)))

(assert (=> b!7339463 (= res!2965249 (not (is-Concat!27947 (regTwo!38717 r1!2370))))))

(declare-fun e!4394901 () Bool)

(assert (=> b!7339463 (= e!4394901 e!4394900)))

(declare-fun d!2278550 () Bool)

(declare-fun res!2965247 () Bool)

(declare-fun e!4394898 () Bool)

(assert (=> d!2278550 (=> res!2965247 e!4394898)))

(assert (=> d!2278550 (= res!2965247 (is-ElementMatch!19102 (regTwo!38717 r1!2370)))))

(assert (=> d!2278550 (= (validRegex!9698 (regTwo!38717 r1!2370)) e!4394898)))

(declare-fun bm!669658 () Bool)

(declare-fun call!669663 () Bool)

(declare-fun c!1363187 () Bool)

(assert (=> bm!669658 (= call!669663 (validRegex!9698 (ite c!1363187 (regTwo!38717 (regTwo!38717 r1!2370)) (regOne!38716 (regTwo!38717 r1!2370)))))))

(declare-fun b!7339464 () Bool)

(declare-fun e!4394899 () Bool)

(assert (=> b!7339464 (= e!4394899 e!4394902)))

(declare-fun res!2965248 () Bool)

(assert (=> b!7339464 (= res!2965248 (not (nullable!8199 (reg!19431 (regTwo!38717 r1!2370)))))))

(assert (=> b!7339464 (=> (not res!2965248) (not e!4394902))))

(declare-fun b!7339465 () Bool)

(declare-fun e!4394903 () Bool)

(assert (=> b!7339465 (= e!4394903 call!669663)))

(declare-fun b!7339466 () Bool)

(assert (=> b!7339466 (= e!4394898 e!4394899)))

(declare-fun c!1363188 () Bool)

(assert (=> b!7339466 (= c!1363188 (is-Star!19102 (regTwo!38717 r1!2370)))))

(declare-fun bm!669659 () Bool)

(assert (=> bm!669659 (= call!669665 (validRegex!9698 (ite c!1363188 (reg!19431 (regTwo!38717 r1!2370)) (ite c!1363187 (regOne!38717 (regTwo!38717 r1!2370)) (regTwo!38716 (regTwo!38717 r1!2370))))))))

(declare-fun b!7339467 () Bool)

(declare-fun e!4394904 () Bool)

(declare-fun call!669664 () Bool)

(assert (=> b!7339467 (= e!4394904 call!669664)))

(declare-fun bm!669660 () Bool)

(assert (=> bm!669660 (= call!669664 call!669665)))

(declare-fun b!7339468 () Bool)

(assert (=> b!7339468 (= e!4394899 e!4394901)))

(assert (=> b!7339468 (= c!1363187 (is-Union!19102 (regTwo!38717 r1!2370)))))

(declare-fun b!7339469 () Bool)

(assert (=> b!7339469 (= e!4394900 e!4394904)))

(declare-fun res!2965245 () Bool)

(assert (=> b!7339469 (=> (not res!2965245) (not e!4394904))))

(assert (=> b!7339469 (= res!2965245 call!669663)))

(declare-fun b!7339470 () Bool)

(declare-fun res!2965246 () Bool)

(assert (=> b!7339470 (=> (not res!2965246) (not e!4394903))))

(assert (=> b!7339470 (= res!2965246 call!669664)))

(assert (=> b!7339470 (= e!4394901 e!4394903)))

(assert (= (and d!2278550 (not res!2965247)) b!7339466))

(assert (= (and b!7339466 c!1363188) b!7339464))

(assert (= (and b!7339466 (not c!1363188)) b!7339468))

(assert (= (and b!7339464 res!2965248) b!7339462))

(assert (= (and b!7339468 c!1363187) b!7339470))

(assert (= (and b!7339468 (not c!1363187)) b!7339463))

(assert (= (and b!7339470 res!2965246) b!7339465))

(assert (= (and b!7339463 (not res!2965249)) b!7339469))

(assert (= (and b!7339469 res!2965245) b!7339467))

(assert (= (or b!7339470 b!7339467) bm!669660))

(assert (= (or b!7339465 b!7339469) bm!669658))

(assert (= (or b!7339462 bm!669660) bm!669659))

(declare-fun m!8003712 () Bool)

(assert (=> bm!669658 m!8003712))

(declare-fun m!8003714 () Bool)

(assert (=> b!7339464 m!8003714))

(declare-fun m!8003716 () Bool)

(assert (=> bm!669659 m!8003716))

(assert (=> b!7339352 d!2278550))

(declare-fun bm!669661 () Bool)

(declare-fun call!669668 () (Set Context!16084))

(declare-fun call!669670 () (Set Context!16084))

(assert (=> bm!669661 (= call!669668 call!669670)))

(declare-fun b!7339471 () Bool)

(declare-fun e!4394906 () (Set Context!16084))

(assert (=> b!7339471 (= e!4394906 (as set.empty (Set Context!16084)))))

(declare-fun d!2278552 () Bool)

(declare-fun c!1363193 () Bool)

(assert (=> d!2278552 (= c!1363193 (and (is-ElementMatch!19102 r1!2370) (= (c!1363160 r1!2370) c!10362)))))

(declare-fun e!4394910 () (Set Context!16084))

(assert (=> d!2278552 (= (derivationStepZipperDown!2928 r1!2370 (Context!16085 (++!16920 (exprs!8542 ct1!282) (exprs!8542 ct2!378))) c!10362) e!4394910)))

(declare-fun c!1363191 () Bool)

(declare-fun bm!669662 () Bool)

(declare-fun call!669671 () (Set Context!16084))

(declare-fun call!669666 () List!71598)

(declare-fun c!1363189 () Bool)

(declare-fun c!1363192 () Bool)

(assert (=> bm!669662 (= call!669671 (derivationStepZipperDown!2928 (ite c!1363189 (regTwo!38717 r1!2370) (ite c!1363192 (regTwo!38716 r1!2370) (ite c!1363191 (regOne!38716 r1!2370) (reg!19431 r1!2370)))) (ite (or c!1363189 c!1363192) (Context!16085 (++!16920 (exprs!8542 ct1!282) (exprs!8542 ct2!378))) (Context!16085 call!669666)) c!10362))))

(declare-fun b!7339472 () Bool)

(assert (=> b!7339472 (= e!4394910 (set.insert (Context!16085 (++!16920 (exprs!8542 ct1!282) (exprs!8542 ct2!378))) (as set.empty (Set Context!16084))))))

(declare-fun bm!669663 () Bool)

(declare-fun call!669667 () (Set Context!16084))

(declare-fun call!669669 () List!71598)

(assert (=> bm!669663 (= call!669667 (derivationStepZipperDown!2928 (ite c!1363189 (regOne!38717 r1!2370) (regOne!38716 r1!2370)) (ite c!1363189 (Context!16085 (++!16920 (exprs!8542 ct1!282) (exprs!8542 ct2!378))) (Context!16085 call!669669)) c!10362))))

(declare-fun b!7339473 () Bool)

(declare-fun e!4394908 () (Set Context!16084))

(declare-fun e!4394909 () (Set Context!16084))

(assert (=> b!7339473 (= e!4394908 e!4394909)))

(assert (=> b!7339473 (= c!1363191 (is-Concat!27947 r1!2370))))

(declare-fun b!7339474 () Bool)

(declare-fun e!4394907 () (Set Context!16084))

(assert (=> b!7339474 (= e!4394907 (set.union call!669667 call!669671))))

(declare-fun b!7339475 () Bool)

(declare-fun c!1363190 () Bool)

(assert (=> b!7339475 (= c!1363190 (is-Star!19102 r1!2370))))

(assert (=> b!7339475 (= e!4394909 e!4394906)))

(declare-fun bm!669664 () Bool)

(assert (=> bm!669664 (= call!669670 call!669671)))

(declare-fun b!7339476 () Bool)

(assert (=> b!7339476 (= e!4394910 e!4394907)))

(assert (=> b!7339476 (= c!1363189 (is-Union!19102 r1!2370))))

(declare-fun b!7339477 () Bool)

(assert (=> b!7339477 (= e!4394909 call!669668)))

(declare-fun b!7339478 () Bool)

(assert (=> b!7339478 (= e!4394906 call!669668)))

(declare-fun bm!669665 () Bool)

(assert (=> bm!669665 (= call!669666 call!669669)))

(declare-fun b!7339479 () Bool)

(declare-fun e!4394905 () Bool)

(assert (=> b!7339479 (= c!1363192 e!4394905)))

(declare-fun res!2965250 () Bool)

(assert (=> b!7339479 (=> (not res!2965250) (not e!4394905))))

(assert (=> b!7339479 (= res!2965250 (is-Concat!27947 r1!2370))))

(assert (=> b!7339479 (= e!4394907 e!4394908)))

(declare-fun b!7339480 () Bool)

(assert (=> b!7339480 (= e!4394905 (nullable!8199 (regOne!38716 r1!2370)))))

(declare-fun bm!669666 () Bool)

(assert (=> bm!669666 (= call!669669 ($colon$colon!3106 (exprs!8542 (Context!16085 (++!16920 (exprs!8542 ct1!282) (exprs!8542 ct2!378)))) (ite (or c!1363192 c!1363191) (regTwo!38716 r1!2370) r1!2370)))))

(declare-fun b!7339481 () Bool)

(assert (=> b!7339481 (= e!4394908 (set.union call!669667 call!669670))))

(assert (= (and d!2278552 c!1363193) b!7339472))

(assert (= (and d!2278552 (not c!1363193)) b!7339476))

(assert (= (and b!7339476 c!1363189) b!7339474))

(assert (= (and b!7339476 (not c!1363189)) b!7339479))

(assert (= (and b!7339479 res!2965250) b!7339480))

(assert (= (and b!7339479 c!1363192) b!7339481))

(assert (= (and b!7339479 (not c!1363192)) b!7339473))

(assert (= (and b!7339473 c!1363191) b!7339477))

(assert (= (and b!7339473 (not c!1363191)) b!7339475))

(assert (= (and b!7339475 c!1363190) b!7339478))

(assert (= (and b!7339475 (not c!1363190)) b!7339471))

(assert (= (or b!7339477 b!7339478) bm!669665))

(assert (= (or b!7339477 b!7339478) bm!669661))

(assert (= (or b!7339481 bm!669661) bm!669664))

(assert (= (or b!7339481 bm!669665) bm!669666))

(assert (= (or b!7339474 bm!669664) bm!669662))

(assert (= (or b!7339474 b!7339481) bm!669663))

(assert (=> b!7339480 m!8003690))

(declare-fun m!8003718 () Bool)

(assert (=> bm!669662 m!8003718))

(declare-fun m!8003720 () Bool)

(assert (=> b!7339472 m!8003720))

(declare-fun m!8003722 () Bool)

(assert (=> bm!669663 m!8003722))

(declare-fun m!8003724 () Bool)

(assert (=> bm!669666 m!8003724))

(assert (=> b!7339348 d!2278552))

(declare-fun d!2278554 () Bool)

(declare-fun e!4394922 () Bool)

(assert (=> d!2278554 e!4394922))

(declare-fun res!2965261 () Bool)

(assert (=> d!2278554 (=> (not res!2965261) (not e!4394922))))

(declare-fun lt!2609724 () List!71598)

(declare-fun content!15021 (List!71598) (Set Regex!19102))

(assert (=> d!2278554 (= res!2965261 (= (content!15021 lt!2609724) (set.union (content!15021 (exprs!8542 ct1!282)) (content!15021 (exprs!8542 ct2!378)))))))

(declare-fun e!4394923 () List!71598)

(assert (=> d!2278554 (= lt!2609724 e!4394923)))

(declare-fun c!1363198 () Bool)

(assert (=> d!2278554 (= c!1363198 (is-Nil!71474 (exprs!8542 ct1!282)))))

(assert (=> d!2278554 (= (++!16920 (exprs!8542 ct1!282) (exprs!8542 ct2!378)) lt!2609724)))

(declare-fun b!7339501 () Bool)

(declare-fun res!2965260 () Bool)

(assert (=> b!7339501 (=> (not res!2965260) (not e!4394922))))

(declare-fun size!42000 (List!71598) Int)

(assert (=> b!7339501 (= res!2965260 (= (size!42000 lt!2609724) (+ (size!42000 (exprs!8542 ct1!282)) (size!42000 (exprs!8542 ct2!378)))))))

(declare-fun b!7339500 () Bool)

(assert (=> b!7339500 (= e!4394923 (Cons!71474 (h!77922 (exprs!8542 ct1!282)) (++!16920 (t!385993 (exprs!8542 ct1!282)) (exprs!8542 ct2!378))))))

(declare-fun b!7339499 () Bool)

(assert (=> b!7339499 (= e!4394923 (exprs!8542 ct2!378))))

(declare-fun b!7339502 () Bool)

(assert (=> b!7339502 (= e!4394922 (or (not (= (exprs!8542 ct2!378) Nil!71474)) (= lt!2609724 (exprs!8542 ct1!282))))))

(assert (= (and d!2278554 c!1363198) b!7339499))

(assert (= (and d!2278554 (not c!1363198)) b!7339500))

(assert (= (and d!2278554 res!2965261) b!7339501))

(assert (= (and b!7339501 res!2965260) b!7339502))

(declare-fun m!8003732 () Bool)

(assert (=> d!2278554 m!8003732))

(declare-fun m!8003734 () Bool)

(assert (=> d!2278554 m!8003734))

(declare-fun m!8003736 () Bool)

(assert (=> d!2278554 m!8003736))

(declare-fun m!8003738 () Bool)

(assert (=> b!7339501 m!8003738))

(declare-fun m!8003740 () Bool)

(assert (=> b!7339501 m!8003740))

(declare-fun m!8003742 () Bool)

(assert (=> b!7339501 m!8003742))

(declare-fun m!8003744 () Bool)

(assert (=> b!7339500 m!8003744))

(assert (=> b!7339348 d!2278554))

(declare-fun d!2278558 () Bool)

(assert (=> d!2278558 (forall!17936 (++!16920 (exprs!8542 ct1!282) (exprs!8542 ct2!378)) lambda!455454)))

(declare-fun lt!2609727 () Unit!165157)

(declare-fun choose!57083 (List!71598 List!71598 Int) Unit!165157)

(assert (=> d!2278558 (= lt!2609727 (choose!57083 (exprs!8542 ct1!282) (exprs!8542 ct2!378) lambda!455454))))

(assert (=> d!2278558 (forall!17936 (exprs!8542 ct1!282) lambda!455454)))

(assert (=> d!2278558 (= (lemmaConcatPreservesForall!1777 (exprs!8542 ct1!282) (exprs!8542 ct2!378) lambda!455454) lt!2609727)))

(declare-fun bs!1918293 () Bool)

(assert (= bs!1918293 d!2278558))

(assert (=> bs!1918293 m!8003654))

(assert (=> bs!1918293 m!8003654))

(declare-fun m!8003746 () Bool)

(assert (=> bs!1918293 m!8003746))

(declare-fun m!8003748 () Bool)

(assert (=> bs!1918293 m!8003748))

(declare-fun m!8003750 () Bool)

(assert (=> bs!1918293 m!8003750))

(assert (=> b!7339348 d!2278558))

(declare-fun b!7339507 () Bool)

(declare-fun e!4394926 () Bool)

(declare-fun tp!2083924 () Bool)

(declare-fun tp!2083925 () Bool)

(assert (=> b!7339507 (= e!4394926 (and tp!2083924 tp!2083925))))

(assert (=> b!7339346 (= tp!2083895 e!4394926)))

(assert (= (and b!7339346 (is-Cons!71474 (exprs!8542 ct1!282))) b!7339507))

(declare-fun b!7339508 () Bool)

(declare-fun e!4394927 () Bool)

(declare-fun tp!2083926 () Bool)

(declare-fun tp!2083927 () Bool)

(assert (=> b!7339508 (= e!4394927 (and tp!2083926 tp!2083927))))

(assert (=> b!7339353 (= tp!2083888 e!4394927)))

(assert (= (and b!7339353 (is-Cons!71474 (exprs!8542 ct2!378))) b!7339508))

(declare-fun e!4394930 () Bool)

(assert (=> b!7339344 (= tp!2083893 e!4394930)))

(declare-fun b!7339519 () Bool)

(assert (=> b!7339519 (= e!4394930 tp_is_empty!48449)))

(declare-fun b!7339520 () Bool)

(declare-fun tp!2083942 () Bool)

(declare-fun tp!2083940 () Bool)

(assert (=> b!7339520 (= e!4394930 (and tp!2083942 tp!2083940))))

(declare-fun b!7339521 () Bool)

(declare-fun tp!2083939 () Bool)

(assert (=> b!7339521 (= e!4394930 tp!2083939)))

(declare-fun b!7339522 () Bool)

(declare-fun tp!2083941 () Bool)

(declare-fun tp!2083938 () Bool)

(assert (=> b!7339522 (= e!4394930 (and tp!2083941 tp!2083938))))

(assert (= (and b!7339344 (is-ElementMatch!19102 (regOne!38716 r1!2370))) b!7339519))

(assert (= (and b!7339344 (is-Concat!27947 (regOne!38716 r1!2370))) b!7339520))

(assert (= (and b!7339344 (is-Star!19102 (regOne!38716 r1!2370))) b!7339521))

(assert (= (and b!7339344 (is-Union!19102 (regOne!38716 r1!2370))) b!7339522))

(declare-fun e!4394931 () Bool)

(assert (=> b!7339344 (= tp!2083891 e!4394931)))

(declare-fun b!7339523 () Bool)

(assert (=> b!7339523 (= e!4394931 tp_is_empty!48449)))

(declare-fun b!7339524 () Bool)

(declare-fun tp!2083947 () Bool)

(declare-fun tp!2083945 () Bool)

(assert (=> b!7339524 (= e!4394931 (and tp!2083947 tp!2083945))))

(declare-fun b!7339525 () Bool)

(declare-fun tp!2083944 () Bool)

(assert (=> b!7339525 (= e!4394931 tp!2083944)))

(declare-fun b!7339526 () Bool)

(declare-fun tp!2083946 () Bool)

(declare-fun tp!2083943 () Bool)

(assert (=> b!7339526 (= e!4394931 (and tp!2083946 tp!2083943))))

(assert (= (and b!7339344 (is-ElementMatch!19102 (regTwo!38716 r1!2370))) b!7339523))

(assert (= (and b!7339344 (is-Concat!27947 (regTwo!38716 r1!2370))) b!7339524))

(assert (= (and b!7339344 (is-Star!19102 (regTwo!38716 r1!2370))) b!7339525))

(assert (= (and b!7339344 (is-Union!19102 (regTwo!38716 r1!2370))) b!7339526))

(declare-fun e!4394932 () Bool)

(assert (=> b!7339351 (= tp!2083890 e!4394932)))

(declare-fun b!7339527 () Bool)

(assert (=> b!7339527 (= e!4394932 tp_is_empty!48449)))

(declare-fun b!7339528 () Bool)

(declare-fun tp!2083952 () Bool)

(declare-fun tp!2083950 () Bool)

(assert (=> b!7339528 (= e!4394932 (and tp!2083952 tp!2083950))))

(declare-fun b!7339529 () Bool)

(declare-fun tp!2083949 () Bool)

(assert (=> b!7339529 (= e!4394932 tp!2083949)))

(declare-fun b!7339530 () Bool)

(declare-fun tp!2083951 () Bool)

(declare-fun tp!2083948 () Bool)

(assert (=> b!7339530 (= e!4394932 (and tp!2083951 tp!2083948))))

(assert (= (and b!7339351 (is-ElementMatch!19102 (regOne!38717 r1!2370))) b!7339527))

(assert (= (and b!7339351 (is-Concat!27947 (regOne!38717 r1!2370))) b!7339528))

(assert (= (and b!7339351 (is-Star!19102 (regOne!38717 r1!2370))) b!7339529))

(assert (= (and b!7339351 (is-Union!19102 (regOne!38717 r1!2370))) b!7339530))

(declare-fun e!4394933 () Bool)

(assert (=> b!7339351 (= tp!2083894 e!4394933)))

(declare-fun b!7339531 () Bool)

(assert (=> b!7339531 (= e!4394933 tp_is_empty!48449)))

(declare-fun b!7339532 () Bool)

(declare-fun tp!2083957 () Bool)

(declare-fun tp!2083955 () Bool)

(assert (=> b!7339532 (= e!4394933 (and tp!2083957 tp!2083955))))

(declare-fun b!7339533 () Bool)

(declare-fun tp!2083954 () Bool)

(assert (=> b!7339533 (= e!4394933 tp!2083954)))

(declare-fun b!7339534 () Bool)

(declare-fun tp!2083956 () Bool)

(declare-fun tp!2083953 () Bool)

(assert (=> b!7339534 (= e!4394933 (and tp!2083956 tp!2083953))))

(assert (= (and b!7339351 (is-ElementMatch!19102 (regTwo!38717 r1!2370))) b!7339531))

(assert (= (and b!7339351 (is-Concat!27947 (regTwo!38717 r1!2370))) b!7339532))

(assert (= (and b!7339351 (is-Star!19102 (regTwo!38717 r1!2370))) b!7339533))

(assert (= (and b!7339351 (is-Union!19102 (regTwo!38717 r1!2370))) b!7339534))

(declare-fun b!7339535 () Bool)

(declare-fun e!4394934 () Bool)

(declare-fun tp!2083958 () Bool)

(declare-fun tp!2083959 () Bool)

(assert (=> b!7339535 (= e!4394934 (and tp!2083958 tp!2083959))))

(assert (=> b!7339345 (= tp!2083892 e!4394934)))

(assert (= (and b!7339345 (is-Cons!71474 (exprs!8542 cWitness!61))) b!7339535))

(declare-fun e!4394935 () Bool)

(assert (=> b!7339350 (= tp!2083889 e!4394935)))

(declare-fun b!7339536 () Bool)

(assert (=> b!7339536 (= e!4394935 tp_is_empty!48449)))

(declare-fun b!7339537 () Bool)

(declare-fun tp!2083964 () Bool)

(declare-fun tp!2083962 () Bool)

(assert (=> b!7339537 (= e!4394935 (and tp!2083964 tp!2083962))))

(declare-fun b!7339538 () Bool)

(declare-fun tp!2083961 () Bool)

(assert (=> b!7339538 (= e!4394935 tp!2083961)))

(declare-fun b!7339539 () Bool)

(declare-fun tp!2083963 () Bool)

(declare-fun tp!2083960 () Bool)

(assert (=> b!7339539 (= e!4394935 (and tp!2083963 tp!2083960))))

(assert (= (and b!7339350 (is-ElementMatch!19102 (reg!19431 r1!2370))) b!7339536))

(assert (= (and b!7339350 (is-Concat!27947 (reg!19431 r1!2370))) b!7339537))

(assert (= (and b!7339350 (is-Star!19102 (reg!19431 r1!2370))) b!7339538))

(assert (= (and b!7339350 (is-Union!19102 (reg!19431 r1!2370))) b!7339539))

(push 1)

(assert (not b!7339415))

(assert (not bm!669662))

(assert (not b!7339528))

(assert (not b!7339534))

(assert (not bm!669639))

(assert (not d!2278546))

(assert (not b!7339524))

(assert (not b!7339508))

(assert (not b!7339533))

(assert (not bm!669666))

(assert (not b!7339535))

(assert (not b!7339521))

(assert (not b!7339464))

(assert (not bm!669638))

(assert (not b!7339522))

(assert (not b!7339537))

(assert (not b!7339500))

(assert (not bm!669658))

(assert (not b!7339455))

(assert (not b!7339507))

(assert (not bm!669663))

(assert (not b!7339520))

(assert (not b!7339525))

(assert (not b!7339480))

(assert (not bm!669653))

(assert tp_is_empty!48449)

(assert (not d!2278548))

(assert (not bm!669642))

(assert (not b!7339530))

(assert (not bm!669654))

(assert (not bm!669659))

(assert (not d!2278554))

(assert (not d!2278544))

(assert (not b!7339501))

(assert (not b!7339526))

(assert (not d!2278558))

(assert (not b!7339539))

(assert (not b!7339538))

(assert (not b!7339529))

(assert (not b!7339532))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

