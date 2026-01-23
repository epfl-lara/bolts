; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714826 () Bool)

(assert start!714826)

(declare-fun b!7324186 () Bool)

(declare-fun e!4385466 () Bool)

(declare-fun e!4385464 () Bool)

(assert (=> b!7324186 (= e!4385466 e!4385464)))

(declare-fun res!2960457 () Bool)

(assert (=> b!7324186 (=> (not res!2960457) (not e!4385464))))

(declare-datatypes ((C!38238 0))(
  ( (C!38239 (val!29479 Int)) )
))
(declare-datatypes ((Regex!18982 0))(
  ( (ElementMatch!18982 (c!1359335 C!38238)) (Concat!27827 (regOne!38476 Regex!18982) (regTwo!38476 Regex!18982)) (EmptyExpr!18982) (Star!18982 (reg!19311 Regex!18982)) (EmptyLang!18982) (Union!18982 (regOne!38477 Regex!18982) (regTwo!38477 Regex!18982)) )
))
(declare-datatypes ((List!71478 0))(
  ( (Nil!71354) (Cons!71354 (h!77802 Regex!18982) (t!385861 List!71478)) )
))
(declare-datatypes ((Context!15844 0))(
  ( (Context!15845 (exprs!8422 List!71478)) )
))
(declare-fun ct1!256 () Context!15844)

(assert (=> b!7324186 (= res!2960457 (is-Cons!71354 (exprs!8422 ct1!256)))))

(declare-fun lt!2605578 () List!71478)

(declare-fun ct2!352 () Context!15844)

(declare-fun ++!16806 (List!71478 List!71478) List!71478)

(assert (=> b!7324186 (= lt!2605578 (++!16806 (exprs!8422 ct1!256) (exprs!8422 ct2!352)))))

(declare-fun lambda!453871 () Int)

(declare-datatypes ((Unit!164929 0))(
  ( (Unit!164930) )
))
(declare-fun lt!2605582 () Unit!164929)

(declare-fun lemmaConcatPreservesForall!1663 (List!71478 List!71478 Int) Unit!164929)

(assert (=> b!7324186 (= lt!2605582 (lemmaConcatPreservesForall!1663 (exprs!8422 ct1!256) (exprs!8422 ct2!352) lambda!453871))))

(declare-fun b!7324187 () Bool)

(declare-fun e!4385462 () Bool)

(declare-fun tp!2080216 () Bool)

(assert (=> b!7324187 (= e!4385462 tp!2080216)))

(declare-fun b!7324188 () Bool)

(declare-fun e!4385468 () Bool)

(declare-fun tp!2080214 () Bool)

(assert (=> b!7324188 (= e!4385468 tp!2080214)))

(declare-fun b!7324189 () Bool)

(declare-fun res!2960460 () Bool)

(assert (=> b!7324189 (=> (not res!2960460) (not e!4385464))))

(declare-fun isEmpty!40900 (List!71478) Bool)

(assert (=> b!7324189 (= res!2960460 (not (isEmpty!40900 (exprs!8422 ct1!256))))))

(declare-fun b!7324190 () Bool)

(declare-fun e!4385467 () Bool)

(assert (=> b!7324190 (= e!4385464 e!4385467)))

(declare-fun res!2960459 () Bool)

(assert (=> b!7324190 (=> (not res!2960459) (not e!4385467))))

(declare-fun nullable!8086 (Regex!18982) Bool)

(assert (=> b!7324190 (= res!2960459 (nullable!8086 (h!77802 (exprs!8422 ct1!256))))))

(declare-fun c!10305 () C!38238)

(declare-fun lt!2605581 () Context!15844)

(declare-fun lt!2605577 () (Set Context!15844))

(declare-fun derivationStepZipperDown!2813 (Regex!18982 Context!15844 C!38238) (Set Context!15844))

(assert (=> b!7324190 (= lt!2605577 (derivationStepZipperDown!2813 (h!77802 (exprs!8422 ct1!256)) lt!2605581 c!10305))))

(declare-fun tail!14671 (List!71478) List!71478)

(assert (=> b!7324190 (= lt!2605581 (Context!15845 (tail!14671 (exprs!8422 ct1!256))))))

(declare-fun b!7324191 () Bool)

(declare-fun e!4385463 () Bool)

(declare-fun tp!2080215 () Bool)

(assert (=> b!7324191 (= e!4385463 tp!2080215)))

(declare-fun res!2960461 () Bool)

(assert (=> start!714826 (=> (not res!2960461) (not e!4385466))))

(declare-fun cWitness!35 () Context!15844)

(declare-fun lt!2605580 () (Set Context!15844))

(assert (=> start!714826 (= res!2960461 (set.member cWitness!35 lt!2605580))))

(declare-fun derivationStepZipperUp!2662 (Context!15844 C!38238) (Set Context!15844))

(assert (=> start!714826 (= lt!2605580 (derivationStepZipperUp!2662 ct1!256 c!10305))))

(assert (=> start!714826 e!4385466))

(declare-fun tp_is_empty!48209 () Bool)

(assert (=> start!714826 tp_is_empty!48209))

(declare-fun inv!90796 (Context!15844) Bool)

(assert (=> start!714826 (and (inv!90796 cWitness!35) e!4385462)))

(assert (=> start!714826 (and (inv!90796 ct1!256) e!4385463)))

(assert (=> start!714826 (and (inv!90796 ct2!352) e!4385468)))

(declare-fun b!7324192 () Bool)

(declare-fun e!4385465 () Bool)

(assert (=> b!7324192 (= e!4385465 (= lt!2605578 Nil!71354))))

(declare-fun b!7324193 () Bool)

(declare-fun res!2960462 () Bool)

(assert (=> b!7324193 (=> (not res!2960462) (not e!4385465))))

(assert (=> b!7324193 (= res!2960462 (not (isEmpty!40900 lt!2605578)))))

(declare-fun b!7324194 () Bool)

(assert (=> b!7324194 (= e!4385467 e!4385465)))

(declare-fun res!2960458 () Bool)

(assert (=> b!7324194 (=> (not res!2960458) (not e!4385465))))

(declare-fun lt!2605579 () (Set Context!15844))

(assert (=> b!7324194 (= res!2960458 (and (= lt!2605580 (set.union lt!2605577 lt!2605579)) (or (set.member cWitness!35 lt!2605577) (set.member cWitness!35 lt!2605579)) (not (set.member cWitness!35 lt!2605579))))))

(assert (=> b!7324194 (= lt!2605579 (derivationStepZipperUp!2662 lt!2605581 c!10305))))

(assert (= (and start!714826 res!2960461) b!7324186))

(assert (= (and b!7324186 res!2960457) b!7324189))

(assert (= (and b!7324189 res!2960460) b!7324190))

(assert (= (and b!7324190 res!2960459) b!7324194))

(assert (= (and b!7324194 res!2960458) b!7324193))

(assert (= (and b!7324193 res!2960462) b!7324192))

(assert (= start!714826 b!7324187))

(assert (= start!714826 b!7324191))

(assert (= start!714826 b!7324188))

(declare-fun m!7990014 () Bool)

(assert (=> b!7324194 m!7990014))

(declare-fun m!7990016 () Bool)

(assert (=> b!7324194 m!7990016))

(declare-fun m!7990018 () Bool)

(assert (=> b!7324194 m!7990018))

(declare-fun m!7990020 () Bool)

(assert (=> start!714826 m!7990020))

(declare-fun m!7990022 () Bool)

(assert (=> start!714826 m!7990022))

(declare-fun m!7990024 () Bool)

(assert (=> start!714826 m!7990024))

(declare-fun m!7990026 () Bool)

(assert (=> start!714826 m!7990026))

(declare-fun m!7990028 () Bool)

(assert (=> start!714826 m!7990028))

(declare-fun m!7990030 () Bool)

(assert (=> b!7324193 m!7990030))

(declare-fun m!7990032 () Bool)

(assert (=> b!7324186 m!7990032))

(declare-fun m!7990034 () Bool)

(assert (=> b!7324186 m!7990034))

(declare-fun m!7990036 () Bool)

(assert (=> b!7324189 m!7990036))

(declare-fun m!7990038 () Bool)

(assert (=> b!7324190 m!7990038))

(declare-fun m!7990040 () Bool)

(assert (=> b!7324190 m!7990040))

(declare-fun m!7990042 () Bool)

(assert (=> b!7324190 m!7990042))

(push 1)

(assert (not b!7324186))

(assert (not b!7324194))

(assert (not start!714826))

(assert (not b!7324193))

(assert (not b!7324190))

(assert (not b!7324188))

(assert (not b!7324189))

(assert tp_is_empty!48209)

(assert (not b!7324187))

(assert (not b!7324191))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2274476 () Bool)

(declare-fun nullableFct!3202 (Regex!18982) Bool)

(assert (=> d!2274476 (= (nullable!8086 (h!77802 (exprs!8422 ct1!256))) (nullableFct!3202 (h!77802 (exprs!8422 ct1!256))))))

(declare-fun bs!1916462 () Bool)

(assert (= bs!1916462 d!2274476))

(declare-fun m!7990074 () Bool)

(assert (=> bs!1916462 m!7990074))

(assert (=> b!7324190 d!2274476))

(declare-fun b!7324266 () Bool)

(declare-fun e!4385519 () (Set Context!15844))

(assert (=> b!7324266 (= e!4385519 (set.insert lt!2605581 (as set.empty (Set Context!15844))))))

(declare-fun b!7324267 () Bool)

(declare-fun e!4385518 () (Set Context!15844))

(assert (=> b!7324267 (= e!4385518 (as set.empty (Set Context!15844)))))

(declare-fun bm!666281 () Bool)

(declare-fun call!666290 () List!71478)

(declare-fun call!666288 () (Set Context!15844))

(declare-fun c!1359357 () Bool)

(assert (=> bm!666281 (= call!666288 (derivationStepZipperDown!2813 (ite c!1359357 (regTwo!38477 (h!77802 (exprs!8422 ct1!256))) (regOne!38476 (h!77802 (exprs!8422 ct1!256)))) (ite c!1359357 lt!2605581 (Context!15845 call!666290)) c!10305))))

(declare-fun bm!666282 () Bool)

(declare-fun call!666289 () (Set Context!15844))

(declare-fun call!666291 () (Set Context!15844))

(assert (=> bm!666282 (= call!666289 call!666291)))

(declare-fun b!7324269 () Bool)

(declare-fun e!4385516 () (Set Context!15844))

(declare-fun e!4385514 () (Set Context!15844))

(assert (=> b!7324269 (= e!4385516 e!4385514)))

(declare-fun c!1359361 () Bool)

(assert (=> b!7324269 (= c!1359361 (is-Concat!27827 (h!77802 (exprs!8422 ct1!256))))))

(declare-fun bm!666283 () Bool)

(declare-fun call!666286 () (Set Context!15844))

(assert (=> bm!666283 (= call!666286 call!666289)))

(declare-fun b!7324270 () Bool)

(declare-fun e!4385517 () (Set Context!15844))

(assert (=> b!7324270 (= e!4385517 (set.union call!666291 call!666288))))

(declare-fun b!7324271 () Bool)

(assert (=> b!7324271 (= e!4385516 (set.union call!666288 call!666289))))

(declare-fun b!7324272 () Bool)

(declare-fun c!1359360 () Bool)

(declare-fun e!4385515 () Bool)

(assert (=> b!7324272 (= c!1359360 e!4385515)))

(declare-fun res!2960485 () Bool)

(assert (=> b!7324272 (=> (not res!2960485) (not e!4385515))))

(assert (=> b!7324272 (= res!2960485 (is-Concat!27827 (h!77802 (exprs!8422 ct1!256))))))

(assert (=> b!7324272 (= e!4385517 e!4385516)))

(declare-fun bm!666284 () Bool)

(declare-fun call!666287 () List!71478)

(assert (=> bm!666284 (= call!666287 call!666290)))

(declare-fun d!2274480 () Bool)

(declare-fun c!1359359 () Bool)

(assert (=> d!2274480 (= c!1359359 (and (is-ElementMatch!18982 (h!77802 (exprs!8422 ct1!256))) (= (c!1359335 (h!77802 (exprs!8422 ct1!256))) c!10305)))))

(assert (=> d!2274480 (= (derivationStepZipperDown!2813 (h!77802 (exprs!8422 ct1!256)) lt!2605581 c!10305) e!4385519)))

(declare-fun b!7324268 () Bool)

(assert (=> b!7324268 (= e!4385514 call!666286)))

(declare-fun b!7324273 () Bool)

(assert (=> b!7324273 (= e!4385518 call!666286)))

(declare-fun b!7324274 () Bool)

(declare-fun c!1359358 () Bool)

(assert (=> b!7324274 (= c!1359358 (is-Star!18982 (h!77802 (exprs!8422 ct1!256))))))

(assert (=> b!7324274 (= e!4385514 e!4385518)))

(declare-fun bm!666285 () Bool)

(declare-fun $colon$colon!3018 (List!71478 Regex!18982) List!71478)

(assert (=> bm!666285 (= call!666290 ($colon$colon!3018 (exprs!8422 lt!2605581) (ite (or c!1359360 c!1359361) (regTwo!38476 (h!77802 (exprs!8422 ct1!256))) (h!77802 (exprs!8422 ct1!256)))))))

(declare-fun b!7324275 () Bool)

(assert (=> b!7324275 (= e!4385515 (nullable!8086 (regOne!38476 (h!77802 (exprs!8422 ct1!256)))))))

(declare-fun bm!666286 () Bool)

(assert (=> bm!666286 (= call!666291 (derivationStepZipperDown!2813 (ite c!1359357 (regOne!38477 (h!77802 (exprs!8422 ct1!256))) (ite c!1359360 (regTwo!38476 (h!77802 (exprs!8422 ct1!256))) (ite c!1359361 (regOne!38476 (h!77802 (exprs!8422 ct1!256))) (reg!19311 (h!77802 (exprs!8422 ct1!256)))))) (ite (or c!1359357 c!1359360) lt!2605581 (Context!15845 call!666287)) c!10305))))

(declare-fun b!7324276 () Bool)

(assert (=> b!7324276 (= e!4385519 e!4385517)))

(assert (=> b!7324276 (= c!1359357 (is-Union!18982 (h!77802 (exprs!8422 ct1!256))))))

(assert (= (and d!2274480 c!1359359) b!7324266))

(assert (= (and d!2274480 (not c!1359359)) b!7324276))

(assert (= (and b!7324276 c!1359357) b!7324270))

(assert (= (and b!7324276 (not c!1359357)) b!7324272))

(assert (= (and b!7324272 res!2960485) b!7324275))

(assert (= (and b!7324272 c!1359360) b!7324271))

(assert (= (and b!7324272 (not c!1359360)) b!7324269))

(assert (= (and b!7324269 c!1359361) b!7324268))

(assert (= (and b!7324269 (not c!1359361)) b!7324274))

(assert (= (and b!7324274 c!1359358) b!7324273))

(assert (= (and b!7324274 (not c!1359358)) b!7324267))

(assert (= (or b!7324268 b!7324273) bm!666284))

(assert (= (or b!7324268 b!7324273) bm!666283))

(assert (= (or b!7324271 bm!666283) bm!666282))

(assert (= (or b!7324271 bm!666284) bm!666285))

(assert (= (or b!7324270 b!7324271) bm!666281))

(assert (= (or b!7324270 bm!666282) bm!666286))

(declare-fun m!7990078 () Bool)

(assert (=> bm!666286 m!7990078))

(declare-fun m!7990080 () Bool)

(assert (=> b!7324275 m!7990080))

(declare-fun m!7990082 () Bool)

(assert (=> bm!666281 m!7990082))

(declare-fun m!7990084 () Bool)

(assert (=> b!7324266 m!7990084))

(declare-fun m!7990086 () Bool)

(assert (=> bm!666285 m!7990086))

(assert (=> b!7324190 d!2274480))

(declare-fun d!2274484 () Bool)

(assert (=> d!2274484 (= (tail!14671 (exprs!8422 ct1!256)) (t!385861 (exprs!8422 ct1!256)))))

(assert (=> b!7324190 d!2274484))

(declare-fun d!2274486 () Bool)

(assert (=> d!2274486 (= (isEmpty!40900 (exprs!8422 ct1!256)) (is-Nil!71354 (exprs!8422 ct1!256)))))

(assert (=> b!7324189 d!2274486))

(declare-fun d!2274488 () Bool)

(declare-fun e!4385525 () Bool)

(assert (=> d!2274488 e!4385525))

(declare-fun res!2960490 () Bool)

(assert (=> d!2274488 (=> (not res!2960490) (not e!4385525))))

(declare-fun lt!2605603 () List!71478)

(declare-fun content!14929 (List!71478) (Set Regex!18982))

(assert (=> d!2274488 (= res!2960490 (= (content!14929 lt!2605603) (set.union (content!14929 (exprs!8422 ct1!256)) (content!14929 (exprs!8422 ct2!352)))))))

(declare-fun e!4385524 () List!71478)

(assert (=> d!2274488 (= lt!2605603 e!4385524)))

(declare-fun c!1359364 () Bool)

(assert (=> d!2274488 (= c!1359364 (is-Nil!71354 (exprs!8422 ct1!256)))))

(assert (=> d!2274488 (= (++!16806 (exprs!8422 ct1!256) (exprs!8422 ct2!352)) lt!2605603)))

(declare-fun b!7324287 () Bool)

(declare-fun res!2960491 () Bool)

(assert (=> b!7324287 (=> (not res!2960491) (not e!4385525))))

(declare-fun size!41906 (List!71478) Int)

(assert (=> b!7324287 (= res!2960491 (= (size!41906 lt!2605603) (+ (size!41906 (exprs!8422 ct1!256)) (size!41906 (exprs!8422 ct2!352)))))))

(declare-fun b!7324286 () Bool)

(assert (=> b!7324286 (= e!4385524 (Cons!71354 (h!77802 (exprs!8422 ct1!256)) (++!16806 (t!385861 (exprs!8422 ct1!256)) (exprs!8422 ct2!352))))))

(declare-fun b!7324285 () Bool)

(assert (=> b!7324285 (= e!4385524 (exprs!8422 ct2!352))))

(declare-fun b!7324288 () Bool)

(assert (=> b!7324288 (= e!4385525 (or (not (= (exprs!8422 ct2!352) Nil!71354)) (= lt!2605603 (exprs!8422 ct1!256))))))

(assert (= (and d!2274488 c!1359364) b!7324285))

(assert (= (and d!2274488 (not c!1359364)) b!7324286))

(assert (= (and d!2274488 res!2960490) b!7324287))

(assert (= (and b!7324287 res!2960491) b!7324288))

(declare-fun m!7990088 () Bool)

(assert (=> d!2274488 m!7990088))

(declare-fun m!7990090 () Bool)

(assert (=> d!2274488 m!7990090))

(declare-fun m!7990092 () Bool)

(assert (=> d!2274488 m!7990092))

(declare-fun m!7990094 () Bool)

(assert (=> b!7324287 m!7990094))

(declare-fun m!7990096 () Bool)

(assert (=> b!7324287 m!7990096))

(declare-fun m!7990098 () Bool)

(assert (=> b!7324287 m!7990098))

(declare-fun m!7990100 () Bool)

(assert (=> b!7324286 m!7990100))

(assert (=> b!7324186 d!2274488))

(declare-fun d!2274490 () Bool)

(declare-fun forall!17836 (List!71478 Int) Bool)

(assert (=> d!2274490 (forall!17836 (++!16806 (exprs!8422 ct1!256) (exprs!8422 ct2!352)) lambda!453871)))

(declare-fun lt!2605606 () Unit!164929)

(declare-fun choose!56955 (List!71478 List!71478 Int) Unit!164929)

(assert (=> d!2274490 (= lt!2605606 (choose!56955 (exprs!8422 ct1!256) (exprs!8422 ct2!352) lambda!453871))))

(assert (=> d!2274490 (forall!17836 (exprs!8422 ct1!256) lambda!453871)))

(assert (=> d!2274490 (= (lemmaConcatPreservesForall!1663 (exprs!8422 ct1!256) (exprs!8422 ct2!352) lambda!453871) lt!2605606)))

(declare-fun bs!1916464 () Bool)

(assert (= bs!1916464 d!2274490))

(assert (=> bs!1916464 m!7990032))

(assert (=> bs!1916464 m!7990032))

(declare-fun m!7990102 () Bool)

(assert (=> bs!1916464 m!7990102))

(declare-fun m!7990104 () Bool)

(assert (=> bs!1916464 m!7990104))

(declare-fun m!7990106 () Bool)

(assert (=> bs!1916464 m!7990106))

(assert (=> b!7324186 d!2274490))

(declare-fun b!7324299 () Bool)

(declare-fun e!4385532 () Bool)

(assert (=> b!7324299 (= e!4385532 (nullable!8086 (h!77802 (exprs!8422 ct1!256))))))

(declare-fun b!7324300 () Bool)

(declare-fun e!4385533 () (Set Context!15844))

(declare-fun e!4385534 () (Set Context!15844))

(assert (=> b!7324300 (= e!4385533 e!4385534)))

(declare-fun c!1359370 () Bool)

(assert (=> b!7324300 (= c!1359370 (is-Cons!71354 (exprs!8422 ct1!256)))))

(declare-fun d!2274492 () Bool)

(declare-fun c!1359369 () Bool)

(assert (=> d!2274492 (= c!1359369 e!4385532)))

(declare-fun res!2960494 () Bool)

(assert (=> d!2274492 (=> (not res!2960494) (not e!4385532))))

(assert (=> d!2274492 (= res!2960494 (is-Cons!71354 (exprs!8422 ct1!256)))))

(assert (=> d!2274492 (= (derivationStepZipperUp!2662 ct1!256 c!10305) e!4385533)))

(declare-fun b!7324301 () Bool)

(declare-fun call!666306 () (Set Context!15844))

(assert (=> b!7324301 (= e!4385534 call!666306)))

(declare-fun b!7324302 () Bool)

(assert (=> b!7324302 (= e!4385534 (as set.empty (Set Context!15844)))))

(declare-fun bm!666301 () Bool)

(assert (=> bm!666301 (= call!666306 (derivationStepZipperDown!2813 (h!77802 (exprs!8422 ct1!256)) (Context!15845 (t!385861 (exprs!8422 ct1!256))) c!10305))))

(declare-fun b!7324303 () Bool)

(assert (=> b!7324303 (= e!4385533 (set.union call!666306 (derivationStepZipperUp!2662 (Context!15845 (t!385861 (exprs!8422 ct1!256))) c!10305)))))

(assert (= (and d!2274492 res!2960494) b!7324299))

(assert (= (and d!2274492 c!1359369) b!7324303))

(assert (= (and d!2274492 (not c!1359369)) b!7324300))

(assert (= (and b!7324300 c!1359370) b!7324301))

(assert (= (and b!7324300 (not c!1359370)) b!7324302))

(assert (= (or b!7324303 b!7324301) bm!666301))

(assert (=> b!7324299 m!7990038))

(declare-fun m!7990108 () Bool)

(assert (=> bm!666301 m!7990108))

(declare-fun m!7990110 () Bool)

(assert (=> b!7324303 m!7990110))

(assert (=> start!714826 d!2274492))

(declare-fun bs!1916465 () Bool)

(declare-fun d!2274494 () Bool)

(assert (= bs!1916465 (and d!2274494 b!7324186)))

(declare-fun lambda!453877 () Int)

(assert (=> bs!1916465 (= lambda!453877 lambda!453871)))

(assert (=> d!2274494 (= (inv!90796 cWitness!35) (forall!17836 (exprs!8422 cWitness!35) lambda!453877))))

(declare-fun bs!1916466 () Bool)

(assert (= bs!1916466 d!2274494))

(declare-fun m!7990112 () Bool)

(assert (=> bs!1916466 m!7990112))

(assert (=> start!714826 d!2274494))

(declare-fun bs!1916467 () Bool)

(declare-fun d!2274496 () Bool)

(assert (= bs!1916467 (and d!2274496 b!7324186)))

(declare-fun lambda!453878 () Int)

(assert (=> bs!1916467 (= lambda!453878 lambda!453871)))

(declare-fun bs!1916468 () Bool)

(assert (= bs!1916468 (and d!2274496 d!2274494)))

(assert (=> bs!1916468 (= lambda!453878 lambda!453877)))

(assert (=> d!2274496 (= (inv!90796 ct1!256) (forall!17836 (exprs!8422 ct1!256) lambda!453878))))

(declare-fun bs!1916469 () Bool)

(assert (= bs!1916469 d!2274496))

(declare-fun m!7990114 () Bool)

(assert (=> bs!1916469 m!7990114))

(assert (=> start!714826 d!2274496))

(declare-fun bs!1916470 () Bool)

(declare-fun d!2274498 () Bool)

(assert (= bs!1916470 (and d!2274498 b!7324186)))

(declare-fun lambda!453879 () Int)

(assert (=> bs!1916470 (= lambda!453879 lambda!453871)))

(declare-fun bs!1916471 () Bool)

(assert (= bs!1916471 (and d!2274498 d!2274494)))

(assert (=> bs!1916471 (= lambda!453879 lambda!453877)))

(declare-fun bs!1916472 () Bool)

(assert (= bs!1916472 (and d!2274498 d!2274496)))

(assert (=> bs!1916472 (= lambda!453879 lambda!453878)))

(assert (=> d!2274498 (= (inv!90796 ct2!352) (forall!17836 (exprs!8422 ct2!352) lambda!453879))))

(declare-fun bs!1916473 () Bool)

(assert (= bs!1916473 d!2274498))

(declare-fun m!7990116 () Bool)

(assert (=> bs!1916473 m!7990116))

(assert (=> start!714826 d!2274498))

(declare-fun b!7324315 () Bool)

(declare-fun e!4385541 () Bool)

(assert (=> b!7324315 (= e!4385541 (nullable!8086 (h!77802 (exprs!8422 lt!2605581))))))

(declare-fun b!7324316 () Bool)

(declare-fun e!4385542 () (Set Context!15844))

(declare-fun e!4385543 () (Set Context!15844))

(assert (=> b!7324316 (= e!4385542 e!4385543)))

(declare-fun c!1359377 () Bool)

(assert (=> b!7324316 (= c!1359377 (is-Cons!71354 (exprs!8422 lt!2605581)))))

(declare-fun d!2274500 () Bool)

(declare-fun c!1359376 () Bool)

(assert (=> d!2274500 (= c!1359376 e!4385541)))

(declare-fun res!2960496 () Bool)

(assert (=> d!2274500 (=> (not res!2960496) (not e!4385541))))

(assert (=> d!2274500 (= res!2960496 (is-Cons!71354 (exprs!8422 lt!2605581)))))

(assert (=> d!2274500 (= (derivationStepZipperUp!2662 lt!2605581 c!10305) e!4385542)))

(declare-fun b!7324317 () Bool)

(declare-fun call!666313 () (Set Context!15844))

(assert (=> b!7324317 (= e!4385543 call!666313)))

(declare-fun b!7324318 () Bool)

(assert (=> b!7324318 (= e!4385543 (as set.empty (Set Context!15844)))))

(declare-fun bm!666308 () Bool)

(assert (=> bm!666308 (= call!666313 (derivationStepZipperDown!2813 (h!77802 (exprs!8422 lt!2605581)) (Context!15845 (t!385861 (exprs!8422 lt!2605581))) c!10305))))

(declare-fun b!7324319 () Bool)

(assert (=> b!7324319 (= e!4385542 (set.union call!666313 (derivationStepZipperUp!2662 (Context!15845 (t!385861 (exprs!8422 lt!2605581))) c!10305)))))

(assert (= (and d!2274500 res!2960496) b!7324315))

(assert (= (and d!2274500 c!1359376) b!7324319))

(assert (= (and d!2274500 (not c!1359376)) b!7324316))

(assert (= (and b!7324316 c!1359377) b!7324317))

(assert (= (and b!7324316 (not c!1359377)) b!7324318))

(assert (= (or b!7324319 b!7324317) bm!666308))

(declare-fun m!7990118 () Bool)

(assert (=> b!7324315 m!7990118))

(declare-fun m!7990120 () Bool)

(assert (=> bm!666308 m!7990120))

(declare-fun m!7990122 () Bool)

(assert (=> b!7324319 m!7990122))

(assert (=> b!7324194 d!2274500))

(declare-fun d!2274502 () Bool)

(assert (=> d!2274502 (= (isEmpty!40900 lt!2605578) (is-Nil!71354 lt!2605578))))

(assert (=> b!7324193 d!2274502))

(declare-fun b!7324324 () Bool)

(declare-fun e!4385546 () Bool)

(declare-fun tp!2080230 () Bool)

(declare-fun tp!2080231 () Bool)

(assert (=> b!7324324 (= e!4385546 (and tp!2080230 tp!2080231))))

(assert (=> b!7324191 (= tp!2080215 e!4385546)))

(assert (= (and b!7324191 (is-Cons!71354 (exprs!8422 ct1!256))) b!7324324))

(declare-fun b!7324325 () Bool)

(declare-fun e!4385547 () Bool)

(declare-fun tp!2080232 () Bool)

(declare-fun tp!2080233 () Bool)

(assert (=> b!7324325 (= e!4385547 (and tp!2080232 tp!2080233))))

(assert (=> b!7324187 (= tp!2080216 e!4385547)))

(assert (= (and b!7324187 (is-Cons!71354 (exprs!8422 cWitness!35))) b!7324325))

(declare-fun b!7324326 () Bool)

(declare-fun e!4385548 () Bool)

(declare-fun tp!2080234 () Bool)

(declare-fun tp!2080235 () Bool)

(assert (=> b!7324326 (= e!4385548 (and tp!2080234 tp!2080235))))

(assert (=> b!7324188 (= tp!2080214 e!4385548)))

(assert (= (and b!7324188 (is-Cons!71354 (exprs!8422 ct2!352))) b!7324326))

(push 1)

(assert (not bm!666281))

(assert (not b!7324286))

(assert (not bm!666308))

(assert (not d!2274490))

(assert (not d!2274496))

(assert tp_is_empty!48209)

(assert (not bm!666286))

(assert (not b!7324326))

(assert (not bm!666301))

(assert (not b!7324325))

(assert (not d!2274476))

(assert (not b!7324287))

(assert (not b!7324324))

(assert (not d!2274498))

(assert (not b!7324319))

(assert (not b!7324315))

(assert (not d!2274488))

(assert (not b!7324303))

(assert (not b!7324275))

(assert (not bm!666285))

(assert (not b!7324299))

(assert (not d!2274494))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

