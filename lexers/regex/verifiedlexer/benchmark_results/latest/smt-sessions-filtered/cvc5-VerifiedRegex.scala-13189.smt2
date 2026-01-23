; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719202 () Bool)

(assert start!719202)

(declare-fun b!7368276 () Bool)

(declare-fun e!4411240 () Bool)

(declare-fun tp!2094523 () Bool)

(assert (=> b!7368276 (= e!4411240 tp!2094523)))

(declare-fun b!7368277 () Bool)

(declare-fun res!2973475 () Bool)

(declare-fun e!4411244 () Bool)

(assert (=> b!7368277 (=> (not res!2973475) (not e!4411244))))

(declare-datatypes ((C!38806 0))(
  ( (C!38807 (val!29763 Int)) )
))
(declare-datatypes ((Regex!19266 0))(
  ( (ElementMatch!19266 (c!1369276 C!38806)) (Concat!28111 (regOne!39044 Regex!19266) (regTwo!39044 Regex!19266)) (EmptyExpr!19266) (Star!19266 (reg!19595 Regex!19266)) (EmptyLang!19266) (Union!19266 (regOne!39045 Regex!19266) (regTwo!39045 Regex!19266)) )
))
(declare-fun r1!2370 () Regex!19266)

(declare-fun validRegex!9862 (Regex!19266) Bool)

(assert (=> b!7368277 (= res!2973475 (validRegex!9862 (regTwo!39044 r1!2370)))))

(declare-fun b!7368278 () Bool)

(declare-fun e!4411241 () Bool)

(assert (=> b!7368278 (= e!4411241 (not (validRegex!9862 (regOne!39044 r1!2370))))))

(declare-fun b!7368279 () Bool)

(declare-fun e!4411242 () Bool)

(declare-fun e!4411239 () Bool)

(assert (=> b!7368279 (= e!4411242 e!4411239)))

(declare-fun res!2973477 () Bool)

(assert (=> b!7368279 (=> (not res!2973477) (not e!4411239))))

(declare-datatypes ((List!71762 0))(
  ( (Nil!71638) (Cons!71638 (h!78086 Regex!19266) (t!386215 List!71762)) )
))
(declare-datatypes ((Context!16412 0))(
  ( (Context!16413 (exprs!8706 List!71762)) )
))
(declare-fun cWitness!61 () Context!16412)

(declare-fun lt!2615101 () (Set Context!16412))

(assert (=> b!7368279 (= res!2973477 (set.member cWitness!61 lt!2615101))))

(declare-fun c!10362 () C!38806)

(declare-fun ct1!282 () Context!16412)

(declare-fun derivationStepZipperDown!3092 (Regex!19266 Context!16412 C!38806) (Set Context!16412))

(assert (=> b!7368279 (= lt!2615101 (derivationStepZipperDown!3092 r1!2370 ct1!282 c!10362))))

(declare-fun b!7368280 () Bool)

(assert (=> b!7368280 (= e!4411239 e!4411244)))

(declare-fun res!2973476 () Bool)

(assert (=> b!7368280 (=> (not res!2973476) (not e!4411244))))

(assert (=> b!7368280 (= res!2973476 (and (or (not (is-ElementMatch!19266 r1!2370)) (not (= c!10362 (c!1369276 r1!2370)))) (not (is-Union!19266 r1!2370)) (is-Concat!28111 r1!2370)))))

(declare-fun lt!2615098 () (Set Context!16412))

(declare-fun ct2!378 () Context!16412)

(declare-fun ++!17082 (List!71762 List!71762) List!71762)

(assert (=> b!7368280 (= lt!2615098 (derivationStepZipperDown!3092 r1!2370 (Context!16413 (++!17082 (exprs!8706 ct1!282) (exprs!8706 ct2!378))) c!10362))))

(declare-fun lambda!457842 () Int)

(declare-datatypes ((Unit!165481 0))(
  ( (Unit!165482) )
))
(declare-fun lt!2615100 () Unit!165481)

(declare-fun lemmaConcatPreservesForall!1939 (List!71762 List!71762 Int) Unit!165481)

(assert (=> b!7368280 (= lt!2615100 (lemmaConcatPreservesForall!1939 (exprs!8706 ct1!282) (exprs!8706 ct2!378) lambda!457842))))

(declare-fun b!7368281 () Bool)

(declare-fun e!4411245 () Bool)

(declare-fun tp!2094521 () Bool)

(assert (=> b!7368281 (= e!4411245 tp!2094521)))

(declare-fun b!7368282 () Bool)

(declare-fun res!2973478 () Bool)

(assert (=> b!7368282 (=> (not res!2973478) (not e!4411241))))

(declare-fun lt!2615099 () (Set Context!16412))

(assert (=> b!7368282 (= res!2973478 (set.member cWitness!61 lt!2615099))))

(declare-fun b!7368283 () Bool)

(assert (=> b!7368283 (= e!4411244 e!4411241)))

(declare-fun res!2973473 () Bool)

(assert (=> b!7368283 (=> (not res!2973473) (not e!4411241))))

(assert (=> b!7368283 (= res!2973473 (= lt!2615101 (set.union lt!2615099 (derivationStepZipperDown!3092 (regTwo!39044 r1!2370) ct1!282 c!10362))))))

(declare-fun $colon$colon!3248 (List!71762 Regex!19266) List!71762)

(assert (=> b!7368283 (= lt!2615099 (derivationStepZipperDown!3092 (regOne!39044 r1!2370) (Context!16413 ($colon$colon!3248 (exprs!8706 ct1!282) (regTwo!39044 r1!2370))) c!10362))))

(declare-fun b!7368284 () Bool)

(declare-fun e!4411246 () Bool)

(declare-fun tp!2094524 () Bool)

(assert (=> b!7368284 (= e!4411246 tp!2094524)))

(declare-fun b!7368285 () Bool)

(declare-fun tp!2094519 () Bool)

(declare-fun tp!2094525 () Bool)

(assert (=> b!7368285 (= e!4411245 (and tp!2094519 tp!2094525))))

(declare-fun b!7368286 () Bool)

(declare-fun e!4411243 () Bool)

(declare-fun tp!2094520 () Bool)

(assert (=> b!7368286 (= e!4411243 tp!2094520)))

(declare-fun b!7368287 () Bool)

(declare-fun tp!2094522 () Bool)

(declare-fun tp!2094518 () Bool)

(assert (=> b!7368287 (= e!4411245 (and tp!2094522 tp!2094518))))

(declare-fun res!2973474 () Bool)

(assert (=> start!719202 (=> (not res!2973474) (not e!4411242))))

(assert (=> start!719202 (= res!2973474 (validRegex!9862 r1!2370))))

(assert (=> start!719202 e!4411242))

(declare-fun tp_is_empty!48777 () Bool)

(assert (=> start!719202 tp_is_empty!48777))

(declare-fun inv!91506 (Context!16412) Bool)

(assert (=> start!719202 (and (inv!91506 cWitness!61) e!4411240)))

(assert (=> start!719202 (and (inv!91506 ct1!282) e!4411243)))

(assert (=> start!719202 e!4411245))

(assert (=> start!719202 (and (inv!91506 ct2!378) e!4411246)))

(declare-fun b!7368288 () Bool)

(assert (=> b!7368288 (= e!4411245 tp_is_empty!48777)))

(declare-fun b!7368289 () Bool)

(declare-fun res!2973479 () Bool)

(assert (=> b!7368289 (=> (not res!2973479) (not e!4411244))))

(declare-fun nullable!8342 (Regex!19266) Bool)

(assert (=> b!7368289 (= res!2973479 (nullable!8342 (regOne!39044 r1!2370)))))

(assert (= (and start!719202 res!2973474) b!7368279))

(assert (= (and b!7368279 res!2973477) b!7368280))

(assert (= (and b!7368280 res!2973476) b!7368289))

(assert (= (and b!7368289 res!2973479) b!7368277))

(assert (= (and b!7368277 res!2973475) b!7368283))

(assert (= (and b!7368283 res!2973473) b!7368282))

(assert (= (and b!7368282 res!2973478) b!7368278))

(assert (= start!719202 b!7368276))

(assert (= start!719202 b!7368286))

(assert (= (and start!719202 (is-ElementMatch!19266 r1!2370)) b!7368288))

(assert (= (and start!719202 (is-Concat!28111 r1!2370)) b!7368285))

(assert (= (and start!719202 (is-Star!19266 r1!2370)) b!7368281))

(assert (= (and start!719202 (is-Union!19266 r1!2370)) b!7368287))

(assert (= start!719202 b!7368284))

(declare-fun m!8022890 () Bool)

(assert (=> b!7368278 m!8022890))

(declare-fun m!8022892 () Bool)

(assert (=> b!7368282 m!8022892))

(declare-fun m!8022894 () Bool)

(assert (=> b!7368279 m!8022894))

(declare-fun m!8022896 () Bool)

(assert (=> b!7368279 m!8022896))

(declare-fun m!8022898 () Bool)

(assert (=> b!7368289 m!8022898))

(declare-fun m!8022900 () Bool)

(assert (=> b!7368280 m!8022900))

(declare-fun m!8022902 () Bool)

(assert (=> b!7368280 m!8022902))

(declare-fun m!8022904 () Bool)

(assert (=> b!7368280 m!8022904))

(declare-fun m!8022906 () Bool)

(assert (=> b!7368277 m!8022906))

(declare-fun m!8022908 () Bool)

(assert (=> b!7368283 m!8022908))

(declare-fun m!8022910 () Bool)

(assert (=> b!7368283 m!8022910))

(declare-fun m!8022912 () Bool)

(assert (=> b!7368283 m!8022912))

(declare-fun m!8022914 () Bool)

(assert (=> start!719202 m!8022914))

(declare-fun m!8022916 () Bool)

(assert (=> start!719202 m!8022916))

(declare-fun m!8022918 () Bool)

(assert (=> start!719202 m!8022918))

(declare-fun m!8022920 () Bool)

(assert (=> start!719202 m!8022920))

(push 1)

(assert tp_is_empty!48777)

(assert (not b!7368285))

(assert (not b!7368280))

(assert (not start!719202))

(assert (not b!7368276))

(assert (not b!7368281))

(assert (not b!7368279))

(assert (not b!7368286))

(assert (not b!7368289))

(assert (not b!7368284))

(assert (not b!7368277))

(assert (not b!7368283))

(assert (not b!7368278))

(assert (not b!7368287))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7368372 () Bool)

(declare-fun c!1369294 () Bool)

(assert (=> b!7368372 (= c!1369294 (is-Star!19266 r1!2370))))

(declare-fun e!4411300 () (Set Context!16412))

(declare-fun e!4411298 () (Set Context!16412))

(assert (=> b!7368372 (= e!4411300 e!4411298)))

(declare-fun b!7368373 () Bool)

(declare-fun call!676287 () (Set Context!16412))

(assert (=> b!7368373 (= e!4411300 call!676287)))

(declare-fun b!7368374 () Bool)

(declare-fun e!4411302 () (Set Context!16412))

(assert (=> b!7368374 (= e!4411302 (set.insert ct1!282 (as set.empty (Set Context!16412))))))

(declare-fun c!1369292 () Bool)

(declare-fun call!676289 () List!71762)

(declare-fun bm!676281 () Bool)

(declare-fun call!676286 () (Set Context!16412))

(declare-fun c!1369293 () Bool)

(declare-fun c!1369295 () Bool)

(assert (=> bm!676281 (= call!676286 (derivationStepZipperDown!3092 (ite c!1369292 (regOne!39045 r1!2370) (ite c!1369293 (regTwo!39044 r1!2370) (ite c!1369295 (regOne!39044 r1!2370) (reg!19595 r1!2370)))) (ite (or c!1369292 c!1369293) ct1!282 (Context!16413 call!676289)) c!10362))))

(declare-fun b!7368375 () Bool)

(declare-fun e!4411297 () (Set Context!16412))

(assert (=> b!7368375 (= e!4411297 e!4411300)))

(assert (=> b!7368375 (= c!1369295 (is-Concat!28111 r1!2370))))

(declare-fun b!7368376 () Bool)

(declare-fun e!4411299 () (Set Context!16412))

(assert (=> b!7368376 (= e!4411302 e!4411299)))

(assert (=> b!7368376 (= c!1369292 (is-Union!19266 r1!2370))))

(declare-fun b!7368377 () Bool)

(assert (=> b!7368377 (= e!4411298 call!676287)))

(declare-fun bm!676282 () Bool)

(declare-fun call!676290 () (Set Context!16412))

(assert (=> bm!676282 (= call!676287 call!676290)))

(declare-fun d!2283232 () Bool)

(declare-fun c!1369296 () Bool)

(assert (=> d!2283232 (= c!1369296 (and (is-ElementMatch!19266 r1!2370) (= (c!1369276 r1!2370) c!10362)))))

(assert (=> d!2283232 (= (derivationStepZipperDown!3092 r1!2370 ct1!282 c!10362) e!4411302)))

(declare-fun call!676288 () List!71762)

(declare-fun bm!676283 () Bool)

(assert (=> bm!676283 (= call!676288 ($colon$colon!3248 (exprs!8706 ct1!282) (ite (or c!1369293 c!1369295) (regTwo!39044 r1!2370) r1!2370)))))

(declare-fun b!7368378 () Bool)

(declare-fun call!676291 () (Set Context!16412))

(assert (=> b!7368378 (= e!4411297 (set.union call!676291 call!676290))))

(declare-fun bm!676284 () Bool)

(assert (=> bm!676284 (= call!676289 call!676288)))

(declare-fun bm!676285 () Bool)

(assert (=> bm!676285 (= call!676291 (derivationStepZipperDown!3092 (ite c!1369292 (regTwo!39045 r1!2370) (regOne!39044 r1!2370)) (ite c!1369292 ct1!282 (Context!16413 call!676288)) c!10362))))

(declare-fun b!7368379 () Bool)

(assert (=> b!7368379 (= e!4411299 (set.union call!676286 call!676291))))

(declare-fun b!7368380 () Bool)

(assert (=> b!7368380 (= e!4411298 (as set.empty (Set Context!16412)))))

(declare-fun b!7368381 () Bool)

(declare-fun e!4411301 () Bool)

(assert (=> b!7368381 (= e!4411301 (nullable!8342 (regOne!39044 r1!2370)))))

(declare-fun bm!676286 () Bool)

(assert (=> bm!676286 (= call!676290 call!676286)))

(declare-fun b!7368382 () Bool)

(assert (=> b!7368382 (= c!1369293 e!4411301)))

(declare-fun res!2973513 () Bool)

(assert (=> b!7368382 (=> (not res!2973513) (not e!4411301))))

(assert (=> b!7368382 (= res!2973513 (is-Concat!28111 r1!2370))))

(assert (=> b!7368382 (= e!4411299 e!4411297)))

(assert (= (and d!2283232 c!1369296) b!7368374))

(assert (= (and d!2283232 (not c!1369296)) b!7368376))

(assert (= (and b!7368376 c!1369292) b!7368379))

(assert (= (and b!7368376 (not c!1369292)) b!7368382))

(assert (= (and b!7368382 res!2973513) b!7368381))

(assert (= (and b!7368382 c!1369293) b!7368378))

(assert (= (and b!7368382 (not c!1369293)) b!7368375))

(assert (= (and b!7368375 c!1369295) b!7368373))

(assert (= (and b!7368375 (not c!1369295)) b!7368372))

(assert (= (and b!7368372 c!1369294) b!7368377))

(assert (= (and b!7368372 (not c!1369294)) b!7368380))

(assert (= (or b!7368373 b!7368377) bm!676284))

(assert (= (or b!7368373 b!7368377) bm!676282))

(assert (= (or b!7368378 bm!676282) bm!676286))

(assert (= (or b!7368378 bm!676284) bm!676283))

(assert (= (or b!7368379 b!7368378) bm!676285))

(assert (= (or b!7368379 bm!676286) bm!676281))

(declare-fun m!8022954 () Bool)

(assert (=> bm!676285 m!8022954))

(declare-fun m!8022956 () Bool)

(assert (=> bm!676283 m!8022956))

(declare-fun m!8022958 () Bool)

(assert (=> b!7368374 m!8022958))

(declare-fun m!8022960 () Bool)

(assert (=> bm!676281 m!8022960))

(assert (=> b!7368381 m!8022898))

(assert (=> b!7368279 d!2283232))

(declare-fun b!7368401 () Bool)

(declare-fun e!4411321 () Bool)

(declare-fun call!676300 () Bool)

(assert (=> b!7368401 (= e!4411321 call!676300)))

(declare-fun b!7368402 () Bool)

(declare-fun e!4411319 () Bool)

(declare-fun call!676301 () Bool)

(assert (=> b!7368402 (= e!4411319 call!676301)))

(declare-fun b!7368403 () Bool)

(declare-fun e!4411323 () Bool)

(assert (=> b!7368403 (= e!4411323 e!4411319)))

(declare-fun res!2973524 () Bool)

(assert (=> b!7368403 (=> (not res!2973524) (not e!4411319))))

(assert (=> b!7368403 (= res!2973524 call!676300)))

(declare-fun b!7368404 () Bool)

(declare-fun e!4411322 () Bool)

(declare-fun e!4411317 () Bool)

(assert (=> b!7368404 (= e!4411322 e!4411317)))

(declare-fun res!2973526 () Bool)

(assert (=> b!7368404 (= res!2973526 (not (nullable!8342 (reg!19595 r1!2370))))))

(assert (=> b!7368404 (=> (not res!2973526) (not e!4411317))))

(declare-fun d!2283236 () Bool)

(declare-fun res!2973527 () Bool)

(declare-fun e!4411318 () Bool)

(assert (=> d!2283236 (=> res!2973527 e!4411318)))

(assert (=> d!2283236 (= res!2973527 (is-ElementMatch!19266 r1!2370))))

(assert (=> d!2283236 (= (validRegex!9862 r1!2370) e!4411318)))

(declare-fun b!7368405 () Bool)

(declare-fun res!2973525 () Bool)

(assert (=> b!7368405 (=> (not res!2973525) (not e!4411321))))

(assert (=> b!7368405 (= res!2973525 call!676301)))

(declare-fun e!4411320 () Bool)

(assert (=> b!7368405 (= e!4411320 e!4411321)))

(declare-fun b!7368406 () Bool)

(declare-fun call!676302 () Bool)

(assert (=> b!7368406 (= e!4411317 call!676302)))

(declare-fun b!7368407 () Bool)

(declare-fun res!2973528 () Bool)

(assert (=> b!7368407 (=> res!2973528 e!4411323)))

(assert (=> b!7368407 (= res!2973528 (not (is-Concat!28111 r1!2370)))))

(assert (=> b!7368407 (= e!4411320 e!4411323)))

(declare-fun b!7368408 () Bool)

(assert (=> b!7368408 (= e!4411318 e!4411322)))

(declare-fun c!1369302 () Bool)

(assert (=> b!7368408 (= c!1369302 (is-Star!19266 r1!2370))))

(declare-fun bm!676295 () Bool)

(assert (=> bm!676295 (= call!676300 call!676302)))

(declare-fun bm!676296 () Bool)

(declare-fun c!1369301 () Bool)

(assert (=> bm!676296 (= call!676302 (validRegex!9862 (ite c!1369302 (reg!19595 r1!2370) (ite c!1369301 (regTwo!39045 r1!2370) (regOne!39044 r1!2370)))))))

(declare-fun bm!676297 () Bool)

(assert (=> bm!676297 (= call!676301 (validRegex!9862 (ite c!1369301 (regOne!39045 r1!2370) (regTwo!39044 r1!2370))))))

(declare-fun b!7368409 () Bool)

(assert (=> b!7368409 (= e!4411322 e!4411320)))

(assert (=> b!7368409 (= c!1369301 (is-Union!19266 r1!2370))))

(assert (= (and d!2283236 (not res!2973527)) b!7368408))

(assert (= (and b!7368408 c!1369302) b!7368404))

(assert (= (and b!7368408 (not c!1369302)) b!7368409))

(assert (= (and b!7368404 res!2973526) b!7368406))

(assert (= (and b!7368409 c!1369301) b!7368405))

(assert (= (and b!7368409 (not c!1369301)) b!7368407))

(assert (= (and b!7368405 res!2973525) b!7368401))

(assert (= (and b!7368407 (not res!2973528)) b!7368403))

(assert (= (and b!7368403 res!2973524) b!7368402))

(assert (= (or b!7368405 b!7368402) bm!676297))

(assert (= (or b!7368401 b!7368403) bm!676295))

(assert (= (or b!7368406 bm!676295) bm!676296))

(declare-fun m!8022962 () Bool)

(assert (=> b!7368404 m!8022962))

(declare-fun m!8022964 () Bool)

(assert (=> bm!676296 m!8022964))

(declare-fun m!8022966 () Bool)

(assert (=> bm!676297 m!8022966))

(assert (=> start!719202 d!2283236))

(declare-fun bs!1920684 () Bool)

(declare-fun d!2283238 () Bool)

(assert (= bs!1920684 (and d!2283238 b!7368280)))

(declare-fun lambda!457848 () Int)

(assert (=> bs!1920684 (= lambda!457848 lambda!457842)))

(declare-fun forall!18072 (List!71762 Int) Bool)

(assert (=> d!2283238 (= (inv!91506 cWitness!61) (forall!18072 (exprs!8706 cWitness!61) lambda!457848))))

(declare-fun bs!1920685 () Bool)

(assert (= bs!1920685 d!2283238))

(declare-fun m!8022974 () Bool)

(assert (=> bs!1920685 m!8022974))

(assert (=> start!719202 d!2283238))

(declare-fun bs!1920686 () Bool)

(declare-fun d!2283242 () Bool)

(assert (= bs!1920686 (and d!2283242 b!7368280)))

(declare-fun lambda!457849 () Int)

(assert (=> bs!1920686 (= lambda!457849 lambda!457842)))

(declare-fun bs!1920687 () Bool)

(assert (= bs!1920687 (and d!2283242 d!2283238)))

(assert (=> bs!1920687 (= lambda!457849 lambda!457848)))

(assert (=> d!2283242 (= (inv!91506 ct1!282) (forall!18072 (exprs!8706 ct1!282) lambda!457849))))

(declare-fun bs!1920688 () Bool)

(assert (= bs!1920688 d!2283242))

(declare-fun m!8022976 () Bool)

(assert (=> bs!1920688 m!8022976))

(assert (=> start!719202 d!2283242))

(declare-fun bs!1920689 () Bool)

(declare-fun d!2283244 () Bool)

(assert (= bs!1920689 (and d!2283244 b!7368280)))

(declare-fun lambda!457850 () Int)

(assert (=> bs!1920689 (= lambda!457850 lambda!457842)))

(declare-fun bs!1920690 () Bool)

(assert (= bs!1920690 (and d!2283244 d!2283238)))

(assert (=> bs!1920690 (= lambda!457850 lambda!457848)))

(declare-fun bs!1920691 () Bool)

(assert (= bs!1920691 (and d!2283244 d!2283242)))

(assert (=> bs!1920691 (= lambda!457850 lambda!457849)))

(assert (=> d!2283244 (= (inv!91506 ct2!378) (forall!18072 (exprs!8706 ct2!378) lambda!457850))))

(declare-fun bs!1920692 () Bool)

(assert (= bs!1920692 d!2283244))

(declare-fun m!8022978 () Bool)

(assert (=> bs!1920692 m!8022978))

(assert (=> start!719202 d!2283244))

(declare-fun b!7368419 () Bool)

(declare-fun c!1369307 () Bool)

(assert (=> b!7368419 (= c!1369307 (is-Star!19266 r1!2370))))

(declare-fun e!4411334 () (Set Context!16412))

(declare-fun e!4411332 () (Set Context!16412))

(assert (=> b!7368419 (= e!4411334 e!4411332)))

(declare-fun b!7368420 () Bool)

(declare-fun call!676307 () (Set Context!16412))

(assert (=> b!7368420 (= e!4411334 call!676307)))

(declare-fun b!7368421 () Bool)

(declare-fun e!4411336 () (Set Context!16412))

(assert (=> b!7368421 (= e!4411336 (set.insert (Context!16413 (++!17082 (exprs!8706 ct1!282) (exprs!8706 ct2!378))) (as set.empty (Set Context!16412))))))

(declare-fun c!1369306 () Bool)

(declare-fun c!1369308 () Bool)

(declare-fun bm!676301 () Bool)

(declare-fun call!676306 () (Set Context!16412))

(declare-fun call!676309 () List!71762)

(declare-fun c!1369305 () Bool)

(assert (=> bm!676301 (= call!676306 (derivationStepZipperDown!3092 (ite c!1369305 (regOne!39045 r1!2370) (ite c!1369306 (regTwo!39044 r1!2370) (ite c!1369308 (regOne!39044 r1!2370) (reg!19595 r1!2370)))) (ite (or c!1369305 c!1369306) (Context!16413 (++!17082 (exprs!8706 ct1!282) (exprs!8706 ct2!378))) (Context!16413 call!676309)) c!10362))))

(declare-fun b!7368422 () Bool)

(declare-fun e!4411331 () (Set Context!16412))

(assert (=> b!7368422 (= e!4411331 e!4411334)))

(assert (=> b!7368422 (= c!1369308 (is-Concat!28111 r1!2370))))

(declare-fun b!7368423 () Bool)

(declare-fun e!4411333 () (Set Context!16412))

(assert (=> b!7368423 (= e!4411336 e!4411333)))

(assert (=> b!7368423 (= c!1369305 (is-Union!19266 r1!2370))))

(declare-fun b!7368424 () Bool)

(assert (=> b!7368424 (= e!4411332 call!676307)))

(declare-fun bm!676302 () Bool)

(declare-fun call!676310 () (Set Context!16412))

(assert (=> bm!676302 (= call!676307 call!676310)))

(declare-fun d!2283246 () Bool)

(declare-fun c!1369309 () Bool)

(assert (=> d!2283246 (= c!1369309 (and (is-ElementMatch!19266 r1!2370) (= (c!1369276 r1!2370) c!10362)))))

(assert (=> d!2283246 (= (derivationStepZipperDown!3092 r1!2370 (Context!16413 (++!17082 (exprs!8706 ct1!282) (exprs!8706 ct2!378))) c!10362) e!4411336)))

(declare-fun call!676308 () List!71762)

(declare-fun bm!676303 () Bool)

(assert (=> bm!676303 (= call!676308 ($colon$colon!3248 (exprs!8706 (Context!16413 (++!17082 (exprs!8706 ct1!282) (exprs!8706 ct2!378)))) (ite (or c!1369306 c!1369308) (regTwo!39044 r1!2370) r1!2370)))))

(declare-fun b!7368425 () Bool)

(declare-fun call!676311 () (Set Context!16412))

(assert (=> b!7368425 (= e!4411331 (set.union call!676311 call!676310))))

(declare-fun bm!676304 () Bool)

(assert (=> bm!676304 (= call!676309 call!676308)))

(declare-fun bm!676305 () Bool)

(assert (=> bm!676305 (= call!676311 (derivationStepZipperDown!3092 (ite c!1369305 (regTwo!39045 r1!2370) (regOne!39044 r1!2370)) (ite c!1369305 (Context!16413 (++!17082 (exprs!8706 ct1!282) (exprs!8706 ct2!378))) (Context!16413 call!676308)) c!10362))))

(declare-fun b!7368426 () Bool)

(assert (=> b!7368426 (= e!4411333 (set.union call!676306 call!676311))))

(declare-fun b!7368427 () Bool)

(assert (=> b!7368427 (= e!4411332 (as set.empty (Set Context!16412)))))

(declare-fun b!7368428 () Bool)

(declare-fun e!4411335 () Bool)

(assert (=> b!7368428 (= e!4411335 (nullable!8342 (regOne!39044 r1!2370)))))

(declare-fun bm!676306 () Bool)

(assert (=> bm!676306 (= call!676310 call!676306)))

(declare-fun b!7368429 () Bool)

(assert (=> b!7368429 (= c!1369306 e!4411335)))

(declare-fun res!2973534 () Bool)

(assert (=> b!7368429 (=> (not res!2973534) (not e!4411335))))

(assert (=> b!7368429 (= res!2973534 (is-Concat!28111 r1!2370))))

(assert (=> b!7368429 (= e!4411333 e!4411331)))

(assert (= (and d!2283246 c!1369309) b!7368421))

(assert (= (and d!2283246 (not c!1369309)) b!7368423))

(assert (= (and b!7368423 c!1369305) b!7368426))

(assert (= (and b!7368423 (not c!1369305)) b!7368429))

(assert (= (and b!7368429 res!2973534) b!7368428))

(assert (= (and b!7368429 c!1369306) b!7368425))

(assert (= (and b!7368429 (not c!1369306)) b!7368422))

(assert (= (and b!7368422 c!1369308) b!7368420))

(assert (= (and b!7368422 (not c!1369308)) b!7368419))

(assert (= (and b!7368419 c!1369307) b!7368424))

(assert (= (and b!7368419 (not c!1369307)) b!7368427))

(assert (= (or b!7368420 b!7368424) bm!676304))

(assert (= (or b!7368420 b!7368424) bm!676302))

(assert (= (or b!7368425 bm!676302) bm!676306))

(assert (= (or b!7368425 bm!676304) bm!676303))

(assert (= (or b!7368426 b!7368425) bm!676305))

(assert (= (or b!7368426 bm!676306) bm!676301))

(declare-fun m!8022980 () Bool)

(assert (=> bm!676305 m!8022980))

(declare-fun m!8022982 () Bool)

(assert (=> bm!676303 m!8022982))

(declare-fun m!8022984 () Bool)

(assert (=> b!7368421 m!8022984))

(declare-fun m!8022986 () Bool)

(assert (=> bm!676301 m!8022986))

(assert (=> b!7368428 m!8022898))

(assert (=> b!7368280 d!2283246))

(declare-fun b!7368439 () Bool)

(declare-fun e!4411341 () List!71762)

(assert (=> b!7368439 (= e!4411341 (Cons!71638 (h!78086 (exprs!8706 ct1!282)) (++!17082 (t!386215 (exprs!8706 ct1!282)) (exprs!8706 ct2!378))))))

(declare-fun b!7368440 () Bool)

(declare-fun res!2973539 () Bool)

(declare-fun e!4411342 () Bool)

(assert (=> b!7368440 (=> (not res!2973539) (not e!4411342))))

(declare-fun lt!2615116 () List!71762)

(declare-fun size!42125 (List!71762) Int)

(assert (=> b!7368440 (= res!2973539 (= (size!42125 lt!2615116) (+ (size!42125 (exprs!8706 ct1!282)) (size!42125 (exprs!8706 ct2!378)))))))

(declare-fun b!7368438 () Bool)

(assert (=> b!7368438 (= e!4411341 (exprs!8706 ct2!378))))

(declare-fun b!7368441 () Bool)

(assert (=> b!7368441 (= e!4411342 (or (not (= (exprs!8706 ct2!378) Nil!71638)) (= lt!2615116 (exprs!8706 ct1!282))))))

(declare-fun d!2283248 () Bool)

(assert (=> d!2283248 e!4411342))

(declare-fun res!2973540 () Bool)

(assert (=> d!2283248 (=> (not res!2973540) (not e!4411342))))

(declare-fun content!15147 (List!71762) (Set Regex!19266))

(assert (=> d!2283248 (= res!2973540 (= (content!15147 lt!2615116) (set.union (content!15147 (exprs!8706 ct1!282)) (content!15147 (exprs!8706 ct2!378)))))))

(assert (=> d!2283248 (= lt!2615116 e!4411341)))

(declare-fun c!1369312 () Bool)

(assert (=> d!2283248 (= c!1369312 (is-Nil!71638 (exprs!8706 ct1!282)))))

(assert (=> d!2283248 (= (++!17082 (exprs!8706 ct1!282) (exprs!8706 ct2!378)) lt!2615116)))

(assert (= (and d!2283248 c!1369312) b!7368438))

(assert (= (and d!2283248 (not c!1369312)) b!7368439))

(assert (= (and d!2283248 res!2973540) b!7368440))

(assert (= (and b!7368440 res!2973539) b!7368441))

(declare-fun m!8022988 () Bool)

(assert (=> b!7368439 m!8022988))

(declare-fun m!8022990 () Bool)

(assert (=> b!7368440 m!8022990))

(declare-fun m!8022992 () Bool)

(assert (=> b!7368440 m!8022992))

(declare-fun m!8022994 () Bool)

(assert (=> b!7368440 m!8022994))

(declare-fun m!8022996 () Bool)

(assert (=> d!2283248 m!8022996))

(declare-fun m!8022998 () Bool)

(assert (=> d!2283248 m!8022998))

(declare-fun m!8023000 () Bool)

(assert (=> d!2283248 m!8023000))

(assert (=> b!7368280 d!2283248))

(declare-fun d!2283250 () Bool)

(assert (=> d!2283250 (forall!18072 (++!17082 (exprs!8706 ct1!282) (exprs!8706 ct2!378)) lambda!457842)))

(declare-fun lt!2615119 () Unit!165481)

(declare-fun choose!57290 (List!71762 List!71762 Int) Unit!165481)

(assert (=> d!2283250 (= lt!2615119 (choose!57290 (exprs!8706 ct1!282) (exprs!8706 ct2!378) lambda!457842))))

(assert (=> d!2283250 (forall!18072 (exprs!8706 ct1!282) lambda!457842)))

(assert (=> d!2283250 (= (lemmaConcatPreservesForall!1939 (exprs!8706 ct1!282) (exprs!8706 ct2!378) lambda!457842) lt!2615119)))

(declare-fun bs!1920693 () Bool)

(assert (= bs!1920693 d!2283250))

(assert (=> bs!1920693 m!8022900))

(assert (=> bs!1920693 m!8022900))

(declare-fun m!8023002 () Bool)

(assert (=> bs!1920693 m!8023002))

(declare-fun m!8023004 () Bool)

(assert (=> bs!1920693 m!8023004))

(declare-fun m!8023006 () Bool)

(assert (=> bs!1920693 m!8023006))

(assert (=> b!7368280 d!2283250))

(declare-fun b!7368446 () Bool)

(declare-fun e!4411349 () Bool)

(declare-fun call!676312 () Bool)

(assert (=> b!7368446 (= e!4411349 call!676312)))

(declare-fun b!7368447 () Bool)

(declare-fun e!4411347 () Bool)

(declare-fun call!676313 () Bool)

(assert (=> b!7368447 (= e!4411347 call!676313)))

(declare-fun b!7368448 () Bool)

(declare-fun e!4411351 () Bool)

(assert (=> b!7368448 (= e!4411351 e!4411347)))

(declare-fun res!2973541 () Bool)

(assert (=> b!7368448 (=> (not res!2973541) (not e!4411347))))

(assert (=> b!7368448 (= res!2973541 call!676312)))

(declare-fun b!7368449 () Bool)

(declare-fun e!4411350 () Bool)

(declare-fun e!4411345 () Bool)

(assert (=> b!7368449 (= e!4411350 e!4411345)))

(declare-fun res!2973543 () Bool)

(assert (=> b!7368449 (= res!2973543 (not (nullable!8342 (reg!19595 (regTwo!39044 r1!2370)))))))

(assert (=> b!7368449 (=> (not res!2973543) (not e!4411345))))

(declare-fun d!2283252 () Bool)

(declare-fun res!2973544 () Bool)

(declare-fun e!4411346 () Bool)

(assert (=> d!2283252 (=> res!2973544 e!4411346)))

(assert (=> d!2283252 (= res!2973544 (is-ElementMatch!19266 (regTwo!39044 r1!2370)))))

(assert (=> d!2283252 (= (validRegex!9862 (regTwo!39044 r1!2370)) e!4411346)))

(declare-fun b!7368450 () Bool)

(declare-fun res!2973542 () Bool)

(assert (=> b!7368450 (=> (not res!2973542) (not e!4411349))))

(assert (=> b!7368450 (= res!2973542 call!676313)))

(declare-fun e!4411348 () Bool)

(assert (=> b!7368450 (= e!4411348 e!4411349)))

(declare-fun b!7368451 () Bool)

(declare-fun call!676314 () Bool)

(assert (=> b!7368451 (= e!4411345 call!676314)))

(declare-fun b!7368452 () Bool)

(declare-fun res!2973545 () Bool)

(assert (=> b!7368452 (=> res!2973545 e!4411351)))

(assert (=> b!7368452 (= res!2973545 (not (is-Concat!28111 (regTwo!39044 r1!2370))))))

(assert (=> b!7368452 (= e!4411348 e!4411351)))

(declare-fun b!7368453 () Bool)

(assert (=> b!7368453 (= e!4411346 e!4411350)))

(declare-fun c!1369316 () Bool)

(assert (=> b!7368453 (= c!1369316 (is-Star!19266 (regTwo!39044 r1!2370)))))

(declare-fun bm!676307 () Bool)

(assert (=> bm!676307 (= call!676312 call!676314)))

(declare-fun c!1369315 () Bool)

(declare-fun bm!676308 () Bool)

(assert (=> bm!676308 (= call!676314 (validRegex!9862 (ite c!1369316 (reg!19595 (regTwo!39044 r1!2370)) (ite c!1369315 (regTwo!39045 (regTwo!39044 r1!2370)) (regOne!39044 (regTwo!39044 r1!2370))))))))

(declare-fun bm!676309 () Bool)

(assert (=> bm!676309 (= call!676313 (validRegex!9862 (ite c!1369315 (regOne!39045 (regTwo!39044 r1!2370)) (regTwo!39044 (regTwo!39044 r1!2370)))))))

(declare-fun b!7368454 () Bool)

(assert (=> b!7368454 (= e!4411350 e!4411348)))

(assert (=> b!7368454 (= c!1369315 (is-Union!19266 (regTwo!39044 r1!2370)))))

(assert (= (and d!2283252 (not res!2973544)) b!7368453))

(assert (= (and b!7368453 c!1369316) b!7368449))

(assert (= (and b!7368453 (not c!1369316)) b!7368454))

(assert (= (and b!7368449 res!2973543) b!7368451))

(assert (= (and b!7368454 c!1369315) b!7368450))

(assert (= (and b!7368454 (not c!1369315)) b!7368452))

(assert (= (and b!7368450 res!2973542) b!7368446))

(assert (= (and b!7368452 (not res!2973545)) b!7368448))

(assert (= (and b!7368448 res!2973541) b!7368447))

(assert (= (or b!7368450 b!7368447) bm!676309))

(assert (= (or b!7368446 b!7368448) bm!676307))

(assert (= (or b!7368451 bm!676307) bm!676308))

(declare-fun m!8023008 () Bool)

(assert (=> b!7368449 m!8023008))

(declare-fun m!8023010 () Bool)

(assert (=> bm!676308 m!8023010))

(declare-fun m!8023012 () Bool)

(assert (=> bm!676309 m!8023012))

(assert (=> b!7368277 d!2283252))

(declare-fun b!7368465 () Bool)

(declare-fun c!1369323 () Bool)

(assert (=> b!7368465 (= c!1369323 (is-Star!19266 (regTwo!39044 r1!2370)))))

(declare-fun e!4411361 () (Set Context!16412))

(declare-fun e!4411359 () (Set Context!16412))

(assert (=> b!7368465 (= e!4411361 e!4411359)))

(declare-fun b!7368466 () Bool)

(declare-fun call!676316 () (Set Context!16412))

(assert (=> b!7368466 (= e!4411361 call!676316)))

(declare-fun b!7368467 () Bool)

(declare-fun e!4411363 () (Set Context!16412))

(assert (=> b!7368467 (= e!4411363 (set.insert ct1!282 (as set.empty (Set Context!16412))))))

(declare-fun call!676318 () List!71762)

(declare-fun c!1369322 () Bool)

(declare-fun bm!676310 () Bool)

(declare-fun c!1369321 () Bool)

(declare-fun c!1369324 () Bool)

(declare-fun call!676315 () (Set Context!16412))

(assert (=> bm!676310 (= call!676315 (derivationStepZipperDown!3092 (ite c!1369321 (regOne!39045 (regTwo!39044 r1!2370)) (ite c!1369322 (regTwo!39044 (regTwo!39044 r1!2370)) (ite c!1369324 (regOne!39044 (regTwo!39044 r1!2370)) (reg!19595 (regTwo!39044 r1!2370))))) (ite (or c!1369321 c!1369322) ct1!282 (Context!16413 call!676318)) c!10362))))

(declare-fun b!7368468 () Bool)

(declare-fun e!4411358 () (Set Context!16412))

(assert (=> b!7368468 (= e!4411358 e!4411361)))

(assert (=> b!7368468 (= c!1369324 (is-Concat!28111 (regTwo!39044 r1!2370)))))

(declare-fun b!7368469 () Bool)

(declare-fun e!4411360 () (Set Context!16412))

(assert (=> b!7368469 (= e!4411363 e!4411360)))

(assert (=> b!7368469 (= c!1369321 (is-Union!19266 (regTwo!39044 r1!2370)))))

(declare-fun b!7368470 () Bool)

(assert (=> b!7368470 (= e!4411359 call!676316)))

(declare-fun bm!676311 () Bool)

(declare-fun call!676319 () (Set Context!16412))

(assert (=> bm!676311 (= call!676316 call!676319)))

(declare-fun d!2283254 () Bool)

(declare-fun c!1369325 () Bool)

(assert (=> d!2283254 (= c!1369325 (and (is-ElementMatch!19266 (regTwo!39044 r1!2370)) (= (c!1369276 (regTwo!39044 r1!2370)) c!10362)))))

(assert (=> d!2283254 (= (derivationStepZipperDown!3092 (regTwo!39044 r1!2370) ct1!282 c!10362) e!4411363)))

(declare-fun bm!676312 () Bool)

(declare-fun call!676317 () List!71762)

(assert (=> bm!676312 (= call!676317 ($colon$colon!3248 (exprs!8706 ct1!282) (ite (or c!1369322 c!1369324) (regTwo!39044 (regTwo!39044 r1!2370)) (regTwo!39044 r1!2370))))))

(declare-fun b!7368471 () Bool)

(declare-fun call!676320 () (Set Context!16412))

(assert (=> b!7368471 (= e!4411358 (set.union call!676320 call!676319))))

(declare-fun bm!676313 () Bool)

(assert (=> bm!676313 (= call!676318 call!676317)))

(declare-fun bm!676314 () Bool)

(assert (=> bm!676314 (= call!676320 (derivationStepZipperDown!3092 (ite c!1369321 (regTwo!39045 (regTwo!39044 r1!2370)) (regOne!39044 (regTwo!39044 r1!2370))) (ite c!1369321 ct1!282 (Context!16413 call!676317)) c!10362))))

(declare-fun b!7368472 () Bool)

(assert (=> b!7368472 (= e!4411360 (set.union call!676315 call!676320))))

(declare-fun b!7368473 () Bool)

(assert (=> b!7368473 (= e!4411359 (as set.empty (Set Context!16412)))))

(declare-fun b!7368474 () Bool)

(declare-fun e!4411362 () Bool)

(assert (=> b!7368474 (= e!4411362 (nullable!8342 (regOne!39044 (regTwo!39044 r1!2370))))))

(declare-fun bm!676315 () Bool)

(assert (=> bm!676315 (= call!676319 call!676315)))

(declare-fun b!7368475 () Bool)

(assert (=> b!7368475 (= c!1369322 e!4411362)))

(declare-fun res!2973548 () Bool)

(assert (=> b!7368475 (=> (not res!2973548) (not e!4411362))))

(assert (=> b!7368475 (= res!2973548 (is-Concat!28111 (regTwo!39044 r1!2370)))))

(assert (=> b!7368475 (= e!4411360 e!4411358)))

(assert (= (and d!2283254 c!1369325) b!7368467))

(assert (= (and d!2283254 (not c!1369325)) b!7368469))

(assert (= (and b!7368469 c!1369321) b!7368472))

(assert (= (and b!7368469 (not c!1369321)) b!7368475))

(assert (= (and b!7368475 res!2973548) b!7368474))

(assert (= (and b!7368475 c!1369322) b!7368471))

(assert (= (and b!7368475 (not c!1369322)) b!7368468))

(assert (= (and b!7368468 c!1369324) b!7368466))

(assert (= (and b!7368468 (not c!1369324)) b!7368465))

(assert (= (and b!7368465 c!1369323) b!7368470))

(assert (= (and b!7368465 (not c!1369323)) b!7368473))

(assert (= (or b!7368466 b!7368470) bm!676313))

(assert (= (or b!7368466 b!7368470) bm!676311))

(assert (= (or b!7368471 bm!676311) bm!676315))

(assert (= (or b!7368471 bm!676313) bm!676312))

(assert (= (or b!7368472 b!7368471) bm!676314))

(assert (= (or b!7368472 bm!676315) bm!676310))

(declare-fun m!8023014 () Bool)

(assert (=> bm!676314 m!8023014))

(declare-fun m!8023016 () Bool)

(assert (=> bm!676312 m!8023016))

(assert (=> b!7368467 m!8022958))

(declare-fun m!8023018 () Bool)

(assert (=> bm!676310 m!8023018))

(declare-fun m!8023020 () Bool)

(assert (=> b!7368474 m!8023020))

(assert (=> b!7368283 d!2283254))

(declare-fun b!7368484 () Bool)

(declare-fun c!1369332 () Bool)

(assert (=> b!7368484 (= c!1369332 (is-Star!19266 (regOne!39044 r1!2370)))))

(declare-fun e!4411371 () (Set Context!16412))

(declare-fun e!4411369 () (Set Context!16412))

(assert (=> b!7368484 (= e!4411371 e!4411369)))

(declare-fun b!7368485 () Bool)

(declare-fun call!676324 () (Set Context!16412))

(assert (=> b!7368485 (= e!4411371 call!676324)))

(declare-fun b!7368486 () Bool)

(declare-fun e!4411373 () (Set Context!16412))

(assert (=> b!7368486 (= e!4411373 (set.insert (Context!16413 ($colon$colon!3248 (exprs!8706 ct1!282) (regTwo!39044 r1!2370))) (as set.empty (Set Context!16412))))))

(declare-fun c!1369330 () Bool)

(declare-fun c!1369333 () Bool)

(declare-fun call!676326 () List!71762)

(declare-fun c!1369331 () Bool)

(declare-fun bm!676316 () Bool)

(declare-fun call!676323 () (Set Context!16412))

(assert (=> bm!676316 (= call!676323 (derivationStepZipperDown!3092 (ite c!1369330 (regOne!39045 (regOne!39044 r1!2370)) (ite c!1369331 (regTwo!39044 (regOne!39044 r1!2370)) (ite c!1369333 (regOne!39044 (regOne!39044 r1!2370)) (reg!19595 (regOne!39044 r1!2370))))) (ite (or c!1369330 c!1369331) (Context!16413 ($colon$colon!3248 (exprs!8706 ct1!282) (regTwo!39044 r1!2370))) (Context!16413 call!676326)) c!10362))))

(declare-fun b!7368487 () Bool)

(declare-fun e!4411368 () (Set Context!16412))

(assert (=> b!7368487 (= e!4411368 e!4411371)))

(assert (=> b!7368487 (= c!1369333 (is-Concat!28111 (regOne!39044 r1!2370)))))

(declare-fun b!7368488 () Bool)

(declare-fun e!4411370 () (Set Context!16412))

(assert (=> b!7368488 (= e!4411373 e!4411370)))

(assert (=> b!7368488 (= c!1369330 (is-Union!19266 (regOne!39044 r1!2370)))))

(declare-fun b!7368489 () Bool)

(assert (=> b!7368489 (= e!4411369 call!676324)))

(declare-fun bm!676317 () Bool)

(declare-fun call!676327 () (Set Context!16412))

(assert (=> bm!676317 (= call!676324 call!676327)))

(declare-fun d!2283256 () Bool)

(declare-fun c!1369334 () Bool)

(assert (=> d!2283256 (= c!1369334 (and (is-ElementMatch!19266 (regOne!39044 r1!2370)) (= (c!1369276 (regOne!39044 r1!2370)) c!10362)))))

(assert (=> d!2283256 (= (derivationStepZipperDown!3092 (regOne!39044 r1!2370) (Context!16413 ($colon$colon!3248 (exprs!8706 ct1!282) (regTwo!39044 r1!2370))) c!10362) e!4411373)))

(declare-fun bm!676318 () Bool)

(declare-fun call!676325 () List!71762)

(assert (=> bm!676318 (= call!676325 ($colon$colon!3248 (exprs!8706 (Context!16413 ($colon$colon!3248 (exprs!8706 ct1!282) (regTwo!39044 r1!2370)))) (ite (or c!1369331 c!1369333) (regTwo!39044 (regOne!39044 r1!2370)) (regOne!39044 r1!2370))))))

(declare-fun b!7368490 () Bool)

(declare-fun call!676328 () (Set Context!16412))

(assert (=> b!7368490 (= e!4411368 (set.union call!676328 call!676327))))

(declare-fun bm!676319 () Bool)

(assert (=> bm!676319 (= call!676326 call!676325)))

(declare-fun bm!676320 () Bool)

(assert (=> bm!676320 (= call!676328 (derivationStepZipperDown!3092 (ite c!1369330 (regTwo!39045 (regOne!39044 r1!2370)) (regOne!39044 (regOne!39044 r1!2370))) (ite c!1369330 (Context!16413 ($colon$colon!3248 (exprs!8706 ct1!282) (regTwo!39044 r1!2370))) (Context!16413 call!676325)) c!10362))))

(declare-fun b!7368491 () Bool)

(assert (=> b!7368491 (= e!4411370 (set.union call!676323 call!676328))))

(declare-fun b!7368492 () Bool)

(assert (=> b!7368492 (= e!4411369 (as set.empty (Set Context!16412)))))

(declare-fun b!7368493 () Bool)

(declare-fun e!4411372 () Bool)

(assert (=> b!7368493 (= e!4411372 (nullable!8342 (regOne!39044 (regOne!39044 r1!2370))))))

(declare-fun bm!676321 () Bool)

(assert (=> bm!676321 (= call!676327 call!676323)))

(declare-fun b!7368494 () Bool)

(assert (=> b!7368494 (= c!1369331 e!4411372)))

(declare-fun res!2973549 () Bool)

(assert (=> b!7368494 (=> (not res!2973549) (not e!4411372))))

(assert (=> b!7368494 (= res!2973549 (is-Concat!28111 (regOne!39044 r1!2370)))))

(assert (=> b!7368494 (= e!4411370 e!4411368)))

(assert (= (and d!2283256 c!1369334) b!7368486))

(assert (= (and d!2283256 (not c!1369334)) b!7368488))

(assert (= (and b!7368488 c!1369330) b!7368491))

(assert (= (and b!7368488 (not c!1369330)) b!7368494))

(assert (= (and b!7368494 res!2973549) b!7368493))

(assert (= (and b!7368494 c!1369331) b!7368490))

(assert (= (and b!7368494 (not c!1369331)) b!7368487))

(assert (= (and b!7368487 c!1369333) b!7368485))

(assert (= (and b!7368487 (not c!1369333)) b!7368484))

(assert (= (and b!7368484 c!1369332) b!7368489))

(assert (= (and b!7368484 (not c!1369332)) b!7368492))

(assert (= (or b!7368485 b!7368489) bm!676319))

(assert (= (or b!7368485 b!7368489) bm!676317))

(assert (= (or b!7368490 bm!676317) bm!676321))

(assert (= (or b!7368490 bm!676319) bm!676318))

(assert (= (or b!7368491 b!7368490) bm!676320))

(assert (= (or b!7368491 bm!676321) bm!676316))

(declare-fun m!8023022 () Bool)

(assert (=> bm!676320 m!8023022))

(declare-fun m!8023024 () Bool)

(assert (=> bm!676318 m!8023024))

(declare-fun m!8023026 () Bool)

(assert (=> b!7368486 m!8023026))

(declare-fun m!8023028 () Bool)

(assert (=> bm!676316 m!8023028))

(declare-fun m!8023030 () Bool)

(assert (=> b!7368493 m!8023030))

(assert (=> b!7368283 d!2283256))

(declare-fun d!2283258 () Bool)

(assert (=> d!2283258 (= ($colon$colon!3248 (exprs!8706 ct1!282) (regTwo!39044 r1!2370)) (Cons!71638 (regTwo!39044 r1!2370) (exprs!8706 ct1!282)))))

(assert (=> b!7368283 d!2283258))

(declare-fun d!2283260 () Bool)

(declare-fun nullableFct!3331 (Regex!19266) Bool)

(assert (=> d!2283260 (= (nullable!8342 (regOne!39044 r1!2370)) (nullableFct!3331 (regOne!39044 r1!2370)))))

(declare-fun bs!1920694 () Bool)

(assert (= bs!1920694 d!2283260))

(declare-fun m!8023032 () Bool)

(assert (=> bs!1920694 m!8023032))

(assert (=> b!7368289 d!2283260))

(declare-fun b!7368495 () Bool)

(declare-fun e!4411378 () Bool)

(declare-fun call!676333 () Bool)

(assert (=> b!7368495 (= e!4411378 call!676333)))

(declare-fun b!7368496 () Bool)

(declare-fun e!4411376 () Bool)

(declare-fun call!676334 () Bool)

(assert (=> b!7368496 (= e!4411376 call!676334)))

(declare-fun b!7368497 () Bool)

(declare-fun e!4411380 () Bool)

(assert (=> b!7368497 (= e!4411380 e!4411376)))

(declare-fun res!2973550 () Bool)

(assert (=> b!7368497 (=> (not res!2973550) (not e!4411376))))

(assert (=> b!7368497 (= res!2973550 call!676333)))

(declare-fun b!7368498 () Bool)

(declare-fun e!4411379 () Bool)

(declare-fun e!4411374 () Bool)

(assert (=> b!7368498 (= e!4411379 e!4411374)))

(declare-fun res!2973552 () Bool)

(assert (=> b!7368498 (= res!2973552 (not (nullable!8342 (reg!19595 (regOne!39044 r1!2370)))))))

(assert (=> b!7368498 (=> (not res!2973552) (not e!4411374))))

(declare-fun d!2283262 () Bool)

(declare-fun res!2973553 () Bool)

(declare-fun e!4411375 () Bool)

(assert (=> d!2283262 (=> res!2973553 e!4411375)))

(assert (=> d!2283262 (= res!2973553 (is-ElementMatch!19266 (regOne!39044 r1!2370)))))

(assert (=> d!2283262 (= (validRegex!9862 (regOne!39044 r1!2370)) e!4411375)))

(declare-fun b!7368499 () Bool)

(declare-fun res!2973551 () Bool)

(assert (=> b!7368499 (=> (not res!2973551) (not e!4411378))))

(assert (=> b!7368499 (= res!2973551 call!676334)))

(declare-fun e!4411377 () Bool)

(assert (=> b!7368499 (= e!4411377 e!4411378)))

(declare-fun b!7368500 () Bool)

(declare-fun call!676335 () Bool)

(assert (=> b!7368500 (= e!4411374 call!676335)))

(declare-fun b!7368501 () Bool)

(declare-fun res!2973554 () Bool)

(assert (=> b!7368501 (=> res!2973554 e!4411380)))

(assert (=> b!7368501 (= res!2973554 (not (is-Concat!28111 (regOne!39044 r1!2370))))))

(assert (=> b!7368501 (= e!4411377 e!4411380)))

(declare-fun b!7368502 () Bool)

(assert (=> b!7368502 (= e!4411375 e!4411379)))

(declare-fun c!1369336 () Bool)

(assert (=> b!7368502 (= c!1369336 (is-Star!19266 (regOne!39044 r1!2370)))))

(declare-fun bm!676326 () Bool)

(assert (=> bm!676326 (= call!676333 call!676335)))

(declare-fun bm!676327 () Bool)

(declare-fun c!1369335 () Bool)

(assert (=> bm!676327 (= call!676335 (validRegex!9862 (ite c!1369336 (reg!19595 (regOne!39044 r1!2370)) (ite c!1369335 (regTwo!39045 (regOne!39044 r1!2370)) (regOne!39044 (regOne!39044 r1!2370))))))))

(declare-fun bm!676328 () Bool)

(assert (=> bm!676328 (= call!676334 (validRegex!9862 (ite c!1369335 (regOne!39045 (regOne!39044 r1!2370)) (regTwo!39044 (regOne!39044 r1!2370)))))))

(declare-fun b!7368503 () Bool)

(assert (=> b!7368503 (= e!4411379 e!4411377)))

(assert (=> b!7368503 (= c!1369335 (is-Union!19266 (regOne!39044 r1!2370)))))

(assert (= (and d!2283262 (not res!2973553)) b!7368502))

(assert (= (and b!7368502 c!1369336) b!7368498))

(assert (= (and b!7368502 (not c!1369336)) b!7368503))

(assert (= (and b!7368498 res!2973552) b!7368500))

(assert (= (and b!7368503 c!1369335) b!7368499))

(assert (= (and b!7368503 (not c!1369335)) b!7368501))

(assert (= (and b!7368499 res!2973551) b!7368495))

(assert (= (and b!7368501 (not res!2973554)) b!7368497))

(assert (= (and b!7368497 res!2973550) b!7368496))

(assert (= (or b!7368499 b!7368496) bm!676328))

(assert (= (or b!7368495 b!7368497) bm!676326))

(assert (= (or b!7368500 bm!676326) bm!676327))

(declare-fun m!8023034 () Bool)

(assert (=> b!7368498 m!8023034))

(declare-fun m!8023036 () Bool)

(assert (=> bm!676327 m!8023036))

(declare-fun m!8023038 () Bool)

(assert (=> bm!676328 m!8023038))

(assert (=> b!7368278 d!2283262))

(declare-fun b!7368508 () Bool)

(declare-fun e!4411383 () Bool)

(declare-fun tp!2094554 () Bool)

(declare-fun tp!2094555 () Bool)

(assert (=> b!7368508 (= e!4411383 (and tp!2094554 tp!2094555))))

(assert (=> b!7368284 (= tp!2094524 e!4411383)))

(assert (= (and b!7368284 (is-Cons!71638 (exprs!8706 ct2!378))) b!7368508))

(declare-fun b!7368522 () Bool)

(declare-fun e!4411386 () Bool)

(declare-fun tp!2094568 () Bool)

(declare-fun tp!2094567 () Bool)

(assert (=> b!7368522 (= e!4411386 (and tp!2094568 tp!2094567))))

(assert (=> b!7368285 (= tp!2094519 e!4411386)))

(declare-fun b!7368520 () Bool)

(declare-fun tp!2094566 () Bool)

(declare-fun tp!2094570 () Bool)

(assert (=> b!7368520 (= e!4411386 (and tp!2094566 tp!2094570))))

(declare-fun b!7368519 () Bool)

(assert (=> b!7368519 (= e!4411386 tp_is_empty!48777)))

(declare-fun b!7368521 () Bool)

(declare-fun tp!2094569 () Bool)

(assert (=> b!7368521 (= e!4411386 tp!2094569)))

(assert (= (and b!7368285 (is-ElementMatch!19266 (regOne!39044 r1!2370))) b!7368519))

(assert (= (and b!7368285 (is-Concat!28111 (regOne!39044 r1!2370))) b!7368520))

(assert (= (and b!7368285 (is-Star!19266 (regOne!39044 r1!2370))) b!7368521))

(assert (= (and b!7368285 (is-Union!19266 (regOne!39044 r1!2370))) b!7368522))

(declare-fun b!7368526 () Bool)

(declare-fun e!4411387 () Bool)

(declare-fun tp!2094573 () Bool)

(declare-fun tp!2094572 () Bool)

(assert (=> b!7368526 (= e!4411387 (and tp!2094573 tp!2094572))))

(assert (=> b!7368285 (= tp!2094525 e!4411387)))

(declare-fun b!7368524 () Bool)

(declare-fun tp!2094571 () Bool)

(declare-fun tp!2094575 () Bool)

(assert (=> b!7368524 (= e!4411387 (and tp!2094571 tp!2094575))))

(declare-fun b!7368523 () Bool)

(assert (=> b!7368523 (= e!4411387 tp_is_empty!48777)))

(declare-fun b!7368525 () Bool)

(declare-fun tp!2094574 () Bool)

(assert (=> b!7368525 (= e!4411387 tp!2094574)))

(assert (= (and b!7368285 (is-ElementMatch!19266 (regTwo!39044 r1!2370))) b!7368523))

(assert (= (and b!7368285 (is-Concat!28111 (regTwo!39044 r1!2370))) b!7368524))

(assert (= (and b!7368285 (is-Star!19266 (regTwo!39044 r1!2370))) b!7368525))

(assert (= (and b!7368285 (is-Union!19266 (regTwo!39044 r1!2370))) b!7368526))

(declare-fun b!7368530 () Bool)

(declare-fun e!4411388 () Bool)

(declare-fun tp!2094578 () Bool)

(declare-fun tp!2094577 () Bool)

(assert (=> b!7368530 (= e!4411388 (and tp!2094578 tp!2094577))))

(assert (=> b!7368281 (= tp!2094521 e!4411388)))

(declare-fun b!7368528 () Bool)

(declare-fun tp!2094576 () Bool)

(declare-fun tp!2094580 () Bool)

(assert (=> b!7368528 (= e!4411388 (and tp!2094576 tp!2094580))))

(declare-fun b!7368527 () Bool)

(assert (=> b!7368527 (= e!4411388 tp_is_empty!48777)))

(declare-fun b!7368529 () Bool)

(declare-fun tp!2094579 () Bool)

(assert (=> b!7368529 (= e!4411388 tp!2094579)))

(assert (= (and b!7368281 (is-ElementMatch!19266 (reg!19595 r1!2370))) b!7368527))

(assert (= (and b!7368281 (is-Concat!28111 (reg!19595 r1!2370))) b!7368528))

(assert (= (and b!7368281 (is-Star!19266 (reg!19595 r1!2370))) b!7368529))

(assert (= (and b!7368281 (is-Union!19266 (reg!19595 r1!2370))) b!7368530))

(declare-fun b!7368531 () Bool)

(declare-fun e!4411389 () Bool)

(declare-fun tp!2094581 () Bool)

(declare-fun tp!2094582 () Bool)

(assert (=> b!7368531 (= e!4411389 (and tp!2094581 tp!2094582))))

(assert (=> b!7368286 (= tp!2094520 e!4411389)))

(assert (= (and b!7368286 (is-Cons!71638 (exprs!8706 ct1!282))) b!7368531))

(declare-fun b!7368535 () Bool)

(declare-fun e!4411390 () Bool)

(declare-fun tp!2094585 () Bool)

(declare-fun tp!2094584 () Bool)

(assert (=> b!7368535 (= e!4411390 (and tp!2094585 tp!2094584))))

(assert (=> b!7368287 (= tp!2094522 e!4411390)))

(declare-fun b!7368533 () Bool)

(declare-fun tp!2094583 () Bool)

(declare-fun tp!2094587 () Bool)

(assert (=> b!7368533 (= e!4411390 (and tp!2094583 tp!2094587))))

(declare-fun b!7368532 () Bool)

(assert (=> b!7368532 (= e!4411390 tp_is_empty!48777)))

(declare-fun b!7368534 () Bool)

(declare-fun tp!2094586 () Bool)

(assert (=> b!7368534 (= e!4411390 tp!2094586)))

(assert (= (and b!7368287 (is-ElementMatch!19266 (regOne!39045 r1!2370))) b!7368532))

(assert (= (and b!7368287 (is-Concat!28111 (regOne!39045 r1!2370))) b!7368533))

(assert (= (and b!7368287 (is-Star!19266 (regOne!39045 r1!2370))) b!7368534))

(assert (= (and b!7368287 (is-Union!19266 (regOne!39045 r1!2370))) b!7368535))

(declare-fun b!7368539 () Bool)

(declare-fun e!4411391 () Bool)

(declare-fun tp!2094590 () Bool)

(declare-fun tp!2094589 () Bool)

(assert (=> b!7368539 (= e!4411391 (and tp!2094590 tp!2094589))))

(assert (=> b!7368287 (= tp!2094518 e!4411391)))

(declare-fun b!7368537 () Bool)

(declare-fun tp!2094588 () Bool)

(declare-fun tp!2094592 () Bool)

(assert (=> b!7368537 (= e!4411391 (and tp!2094588 tp!2094592))))

(declare-fun b!7368536 () Bool)

(assert (=> b!7368536 (= e!4411391 tp_is_empty!48777)))

(declare-fun b!7368538 () Bool)

(declare-fun tp!2094591 () Bool)

(assert (=> b!7368538 (= e!4411391 tp!2094591)))

(assert (= (and b!7368287 (is-ElementMatch!19266 (regTwo!39045 r1!2370))) b!7368536))

(assert (= (and b!7368287 (is-Concat!28111 (regTwo!39045 r1!2370))) b!7368537))

(assert (= (and b!7368287 (is-Star!19266 (regTwo!39045 r1!2370))) b!7368538))

(assert (= (and b!7368287 (is-Union!19266 (regTwo!39045 r1!2370))) b!7368539))

(declare-fun b!7368540 () Bool)

(declare-fun e!4411392 () Bool)

(declare-fun tp!2094593 () Bool)

(declare-fun tp!2094594 () Bool)

(assert (=> b!7368540 (= e!4411392 (and tp!2094593 tp!2094594))))

(assert (=> b!7368276 (= tp!2094523 e!4411392)))

(assert (= (and b!7368276 (is-Cons!71638 (exprs!8706 cWitness!61))) b!7368540))

(push 1)

(assert (not b!7368474))

(assert (not bm!676312))

(assert (not b!7368404))

(assert (not bm!676327))

(assert (not b!7368508))

(assert (not bm!676281))

(assert (not b!7368530))

(assert (not d!2283248))

(assert (not b!7368526))

(assert (not bm!676303))

(assert (not d!2283250))

(assert (not b!7368538))

(assert (not b!7368529))

(assert (not bm!676283))

(assert (not bm!676285))

(assert tp_is_empty!48777)

(assert (not b!7368493))

(assert (not b!7368439))

(assert (not bm!676301))

(assert (not b!7368440))

(assert (not b!7368521))

(assert (not d!2283260))

(assert (not bm!676314))

(assert (not b!7368528))

(assert (not b!7368449))

(assert (not b!7368525))

(assert (not b!7368533))

(assert (not bm!676310))

(assert (not d!2283238))

(assert (not b!7368428))

(assert (not b!7368534))

(assert (not d!2283244))

(assert (not bm!676305))

(assert (not bm!676320))

(assert (not b!7368498))

(assert (not bm!676296))

(assert (not b!7368535))

(assert (not b!7368522))

(assert (not bm!676316))

(assert (not b!7368524))

(assert (not b!7368537))

(assert (not b!7368381))

(assert (not bm!676328))

(assert (not d!2283242))

(assert (not bm!676308))

(assert (not bm!676309))

(assert (not b!7368531))

(assert (not b!7368539))

(assert (not b!7368520))

(assert (not b!7368540))

(assert (not bm!676318))

(assert (not bm!676297))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

