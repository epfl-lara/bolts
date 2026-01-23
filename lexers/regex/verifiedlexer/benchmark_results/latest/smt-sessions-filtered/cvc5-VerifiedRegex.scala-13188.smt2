; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!719150 () Bool)

(assert start!719150)

(declare-fun b!7367290 () Bool)

(declare-fun res!2973248 () Bool)

(declare-fun e!4410721 () Bool)

(assert (=> b!7367290 (=> (not res!2973248) (not e!4410721))))

(declare-datatypes ((C!38802 0))(
  ( (C!38803 (val!29761 Int)) )
))
(declare-datatypes ((Regex!19264 0))(
  ( (ElementMatch!19264 (c!1369068 C!38802)) (Concat!28109 (regOne!39040 Regex!19264) (regTwo!39040 Regex!19264)) (EmptyExpr!19264) (Star!19264 (reg!19593 Regex!19264)) (EmptyLang!19264) (Union!19264 (regOne!39041 Regex!19264) (regTwo!39041 Regex!19264)) )
))
(declare-fun r1!2370 () Regex!19264)

(declare-fun nullable!8340 (Regex!19264) Bool)

(assert (=> b!7367290 (= res!2973248 (nullable!8340 (regOne!39040 r1!2370)))))

(declare-fun b!7367291 () Bool)

(declare-fun e!4410726 () Bool)

(declare-fun tp!2094089 () Bool)

(assert (=> b!7367291 (= e!4410726 tp!2094089)))

(declare-fun b!7367292 () Bool)

(declare-fun res!2973250 () Bool)

(declare-fun e!4410722 () Bool)

(assert (=> b!7367292 (=> (not res!2973250) (not e!4410722))))

(declare-datatypes ((List!71760 0))(
  ( (Nil!71636) (Cons!71636 (h!78084 Regex!19264) (t!386211 List!71760)) )
))
(declare-datatypes ((Context!16408 0))(
  ( (Context!16409 (exprs!8704 List!71760)) )
))
(declare-fun cWitness!61 () Context!16408)

(declare-fun lt!2615050 () (Set Context!16408))

(assert (=> b!7367292 (= res!2973250 (set.member cWitness!61 lt!2615050))))

(declare-fun b!7367294 () Bool)

(declare-fun e!4410727 () Bool)

(declare-fun tp!2094093 () Bool)

(assert (=> b!7367294 (= e!4410727 tp!2094093)))

(declare-fun b!7367295 () Bool)

(declare-fun tp!2094092 () Bool)

(declare-fun tp!2094094 () Bool)

(assert (=> b!7367295 (= e!4410726 (and tp!2094092 tp!2094094))))

(declare-fun b!7367296 () Bool)

(declare-fun lt!2615049 () Context!16408)

(declare-fun inv!91501 (Context!16408) Bool)

(assert (=> b!7367296 (= e!4410722 (not (inv!91501 lt!2615049)))))

(declare-fun b!7367297 () Bool)

(declare-fun tp!2094091 () Bool)

(declare-fun tp!2094088 () Bool)

(assert (=> b!7367297 (= e!4410726 (and tp!2094091 tp!2094088))))

(declare-fun b!7367293 () Bool)

(declare-fun res!2973245 () Bool)

(assert (=> b!7367293 (=> (not res!2973245) (not e!4410721))))

(declare-fun validRegex!9860 (Regex!19264) Bool)

(assert (=> b!7367293 (= res!2973245 (validRegex!9860 (regTwo!39040 r1!2370)))))

(declare-fun res!2973247 () Bool)

(declare-fun e!4410724 () Bool)

(assert (=> start!719150 (=> (not res!2973247) (not e!4410724))))

(assert (=> start!719150 (= res!2973247 (validRegex!9860 r1!2370))))

(assert (=> start!719150 e!4410724))

(declare-fun tp_is_empty!48773 () Bool)

(assert (=> start!719150 tp_is_empty!48773))

(declare-fun e!4410728 () Bool)

(assert (=> start!719150 (and (inv!91501 cWitness!61) e!4410728)))

(declare-fun ct1!282 () Context!16408)

(declare-fun e!4410723 () Bool)

(assert (=> start!719150 (and (inv!91501 ct1!282) e!4410723)))

(assert (=> start!719150 e!4410726))

(declare-fun ct2!378 () Context!16408)

(assert (=> start!719150 (and (inv!91501 ct2!378) e!4410727)))

(declare-fun b!7367298 () Bool)

(assert (=> b!7367298 (= e!4410721 e!4410722)))

(declare-fun res!2973246 () Bool)

(assert (=> b!7367298 (=> (not res!2973246) (not e!4410722))))

(declare-fun c!10362 () C!38802)

(declare-fun lt!2615047 () (Set Context!16408))

(declare-fun derivationStepZipperDown!3090 (Regex!19264 Context!16408 C!38802) (Set Context!16408))

(assert (=> b!7367298 (= res!2973246 (= lt!2615047 (set.union lt!2615050 (derivationStepZipperDown!3090 (regTwo!39040 r1!2370) ct1!282 c!10362))))))

(assert (=> b!7367298 (= lt!2615050 (derivationStepZipperDown!3090 (regOne!39040 r1!2370) lt!2615049 c!10362))))

(declare-fun $colon$colon!3246 (List!71760 Regex!19264) List!71760)

(assert (=> b!7367298 (= lt!2615049 (Context!16409 ($colon$colon!3246 (exprs!8704 ct1!282) (regTwo!39040 r1!2370))))))

(declare-fun b!7367299 () Bool)

(declare-fun e!4410725 () Bool)

(assert (=> b!7367299 (= e!4410725 e!4410721)))

(declare-fun res!2973251 () Bool)

(assert (=> b!7367299 (=> (not res!2973251) (not e!4410721))))

(assert (=> b!7367299 (= res!2973251 (and (or (not (is-ElementMatch!19264 r1!2370)) (not (= c!10362 (c!1369068 r1!2370)))) (not (is-Union!19264 r1!2370)) (is-Concat!28109 r1!2370)))))

(declare-fun lt!2615048 () (Set Context!16408))

(declare-fun ++!17080 (List!71760 List!71760) List!71760)

(assert (=> b!7367299 (= lt!2615048 (derivationStepZipperDown!3090 r1!2370 (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) c!10362))))

(declare-fun lambda!457824 () Int)

(declare-datatypes ((Unit!165477 0))(
  ( (Unit!165478) )
))
(declare-fun lt!2615046 () Unit!165477)

(declare-fun lemmaConcatPreservesForall!1937 (List!71760 List!71760 Int) Unit!165477)

(assert (=> b!7367299 (= lt!2615046 (lemmaConcatPreservesForall!1937 (exprs!8704 ct1!282) (exprs!8704 ct2!378) lambda!457824))))

(declare-fun b!7367300 () Bool)

(assert (=> b!7367300 (= e!4410726 tp_is_empty!48773)))

(declare-fun b!7367301 () Bool)

(declare-fun tp!2094090 () Bool)

(assert (=> b!7367301 (= e!4410723 tp!2094090)))

(declare-fun b!7367302 () Bool)

(assert (=> b!7367302 (= e!4410724 e!4410725)))

(declare-fun res!2973249 () Bool)

(assert (=> b!7367302 (=> (not res!2973249) (not e!4410725))))

(assert (=> b!7367302 (= res!2973249 (set.member cWitness!61 lt!2615047))))

(assert (=> b!7367302 (= lt!2615047 (derivationStepZipperDown!3090 r1!2370 ct1!282 c!10362))))

(declare-fun b!7367303 () Bool)

(declare-fun tp!2094095 () Bool)

(assert (=> b!7367303 (= e!4410728 tp!2094095)))

(assert (= (and start!719150 res!2973247) b!7367302))

(assert (= (and b!7367302 res!2973249) b!7367299))

(assert (= (and b!7367299 res!2973251) b!7367290))

(assert (= (and b!7367290 res!2973248) b!7367293))

(assert (= (and b!7367293 res!2973245) b!7367298))

(assert (= (and b!7367298 res!2973246) b!7367292))

(assert (= (and b!7367292 res!2973250) b!7367296))

(assert (= start!719150 b!7367303))

(assert (= start!719150 b!7367301))

(assert (= (and start!719150 (is-ElementMatch!19264 r1!2370)) b!7367300))

(assert (= (and start!719150 (is-Concat!28109 r1!2370)) b!7367297))

(assert (= (and start!719150 (is-Star!19264 r1!2370)) b!7367291))

(assert (= (and start!719150 (is-Union!19264 r1!2370)) b!7367295))

(assert (= start!719150 b!7367294))

(declare-fun m!8022326 () Bool)

(assert (=> b!7367292 m!8022326))

(declare-fun m!8022328 () Bool)

(assert (=> b!7367293 m!8022328))

(declare-fun m!8022330 () Bool)

(assert (=> b!7367290 m!8022330))

(declare-fun m!8022332 () Bool)

(assert (=> b!7367302 m!8022332))

(declare-fun m!8022334 () Bool)

(assert (=> b!7367302 m!8022334))

(declare-fun m!8022336 () Bool)

(assert (=> b!7367299 m!8022336))

(declare-fun m!8022338 () Bool)

(assert (=> b!7367299 m!8022338))

(declare-fun m!8022340 () Bool)

(assert (=> b!7367299 m!8022340))

(declare-fun m!8022342 () Bool)

(assert (=> b!7367296 m!8022342))

(declare-fun m!8022344 () Bool)

(assert (=> b!7367298 m!8022344))

(declare-fun m!8022346 () Bool)

(assert (=> b!7367298 m!8022346))

(declare-fun m!8022348 () Bool)

(assert (=> b!7367298 m!8022348))

(declare-fun m!8022350 () Bool)

(assert (=> start!719150 m!8022350))

(declare-fun m!8022352 () Bool)

(assert (=> start!719150 m!8022352))

(declare-fun m!8022354 () Bool)

(assert (=> start!719150 m!8022354))

(declare-fun m!8022356 () Bool)

(assert (=> start!719150 m!8022356))

(push 1)

(assert (not b!7367299))

(assert (not b!7367290))

(assert (not b!7367302))

(assert (not b!7367294))

(assert (not b!7367297))

(assert (not b!7367303))

(assert (not b!7367293))

(assert tp_is_empty!48773)

(assert (not b!7367296))

(assert (not b!7367298))

(assert (not start!719150))

(assert (not b!7367301))

(assert (not b!7367291))

(assert (not b!7367295))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7367368 () Bool)

(declare-fun e!4410769 () (Set Context!16408))

(assert (=> b!7367368 (= e!4410769 (as set.empty (Set Context!16408)))))

(declare-fun bm!676049 () Bool)

(declare-fun call!676059 () (Set Context!16408))

(declare-fun call!676058 () (Set Context!16408))

(assert (=> bm!676049 (= call!676059 call!676058)))

(declare-fun b!7367369 () Bool)

(declare-fun e!4410765 () (Set Context!16408))

(declare-fun call!676057 () (Set Context!16408))

(assert (=> b!7367369 (= e!4410765 (set.union call!676058 call!676057))))

(declare-fun b!7367370 () Bool)

(declare-fun e!4410767 () (Set Context!16408))

(assert (=> b!7367370 (= e!4410767 (set.insert ct1!282 (as set.empty (Set Context!16408))))))

(declare-fun b!7367371 () Bool)

(declare-fun call!676056 () (Set Context!16408))

(assert (=> b!7367371 (= e!4410769 call!676056)))

(declare-fun call!676054 () List!71760)

(declare-fun c!1369080 () Bool)

(declare-fun bm!676050 () Bool)

(declare-fun c!1369084 () Bool)

(assert (=> bm!676050 (= call!676054 ($colon$colon!3246 (exprs!8704 ct1!282) (ite (or c!1369080 c!1369084) (regTwo!39040 r1!2370) r1!2370)))))

(declare-fun c!1369082 () Bool)

(declare-fun call!676055 () List!71760)

(declare-fun bm!676051 () Bool)

(assert (=> bm!676051 (= call!676058 (derivationStepZipperDown!3090 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370)))) (ite (or c!1369082 c!1369080) ct1!282 (Context!16409 call!676055)) c!10362))))

(declare-fun b!7367372 () Bool)

(declare-fun c!1369081 () Bool)

(assert (=> b!7367372 (= c!1369081 (is-Star!19264 r1!2370))))

(declare-fun e!4410768 () (Set Context!16408))

(assert (=> b!7367372 (= e!4410768 e!4410769)))

(declare-fun b!7367373 () Bool)

(declare-fun e!4410770 () Bool)

(assert (=> b!7367373 (= e!4410770 (nullable!8340 (regOne!39040 r1!2370)))))

(declare-fun bm!676052 () Bool)

(assert (=> bm!676052 (= call!676057 (derivationStepZipperDown!3090 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)) (ite c!1369082 ct1!282 (Context!16409 call!676054)) c!10362))))

(declare-fun b!7367374 () Bool)

(assert (=> b!7367374 (= e!4410768 call!676056)))

(declare-fun d!2283011 () Bool)

(declare-fun c!1369083 () Bool)

(assert (=> d!2283011 (= c!1369083 (and (is-ElementMatch!19264 r1!2370) (= (c!1369068 r1!2370) c!10362)))))

(assert (=> d!2283011 (= (derivationStepZipperDown!3090 r1!2370 ct1!282 c!10362) e!4410767)))

(declare-fun b!7367375 () Bool)

(assert (=> b!7367375 (= e!4410767 e!4410765)))

(assert (=> b!7367375 (= c!1369082 (is-Union!19264 r1!2370))))

(declare-fun b!7367376 () Bool)

(declare-fun e!4410766 () (Set Context!16408))

(assert (=> b!7367376 (= e!4410766 (set.union call!676057 call!676059))))

(declare-fun bm!676053 () Bool)

(assert (=> bm!676053 (= call!676056 call!676059)))

(declare-fun bm!676054 () Bool)

(assert (=> bm!676054 (= call!676055 call!676054)))

(declare-fun b!7367377 () Bool)

(assert (=> b!7367377 (= e!4410766 e!4410768)))

(assert (=> b!7367377 (= c!1369084 (is-Concat!28109 r1!2370))))

(declare-fun b!7367378 () Bool)

(assert (=> b!7367378 (= c!1369080 e!4410770)))

(declare-fun res!2973275 () Bool)

(assert (=> b!7367378 (=> (not res!2973275) (not e!4410770))))

(assert (=> b!7367378 (= res!2973275 (is-Concat!28109 r1!2370))))

(assert (=> b!7367378 (= e!4410765 e!4410766)))

(assert (= (and d!2283011 c!1369083) b!7367370))

(assert (= (and d!2283011 (not c!1369083)) b!7367375))

(assert (= (and b!7367375 c!1369082) b!7367369))

(assert (= (and b!7367375 (not c!1369082)) b!7367378))

(assert (= (and b!7367378 res!2973275) b!7367373))

(assert (= (and b!7367378 c!1369080) b!7367376))

(assert (= (and b!7367378 (not c!1369080)) b!7367377))

(assert (= (and b!7367377 c!1369084) b!7367374))

(assert (= (and b!7367377 (not c!1369084)) b!7367372))

(assert (= (and b!7367372 c!1369081) b!7367371))

(assert (= (and b!7367372 (not c!1369081)) b!7367368))

(assert (= (or b!7367374 b!7367371) bm!676054))

(assert (= (or b!7367374 b!7367371) bm!676053))

(assert (= (or b!7367376 bm!676053) bm!676049))

(assert (= (or b!7367376 bm!676054) bm!676050))

(assert (= (or b!7367369 b!7367376) bm!676052))

(assert (= (or b!7367369 bm!676049) bm!676051))

(assert (=> b!7367373 m!8022330))

(declare-fun m!8022392 () Bool)

(assert (=> b!7367370 m!8022392))

(declare-fun m!8022394 () Bool)

(assert (=> bm!676052 m!8022394))

(declare-fun m!8022396 () Bool)

(assert (=> bm!676051 m!8022396))

(declare-fun m!8022398 () Bool)

(assert (=> bm!676050 m!8022398))

(assert (=> b!7367302 d!2283011))

(declare-fun d!2283017 () Bool)

(declare-fun nullableFct!3329 (Regex!19264) Bool)

(assert (=> d!2283017 (= (nullable!8340 (regOne!39040 r1!2370)) (nullableFct!3329 (regOne!39040 r1!2370)))))

(declare-fun bs!1920629 () Bool)

(assert (= bs!1920629 d!2283017))

(declare-fun m!8022400 () Bool)

(assert (=> bs!1920629 m!8022400))

(assert (=> b!7367290 d!2283017))

(declare-fun b!7367415 () Bool)

(declare-fun res!2973298 () Bool)

(declare-fun e!4410799 () Bool)

(assert (=> b!7367415 (=> (not res!2973298) (not e!4410799))))

(declare-fun call!676074 () Bool)

(assert (=> b!7367415 (= res!2973298 call!676074)))

(declare-fun e!4410804 () Bool)

(assert (=> b!7367415 (= e!4410804 e!4410799)))

(declare-fun b!7367416 () Bool)

(declare-fun e!4410800 () Bool)

(declare-fun e!4410801 () Bool)

(assert (=> b!7367416 (= e!4410800 e!4410801)))

(declare-fun res!2973296 () Bool)

(assert (=> b!7367416 (=> (not res!2973296) (not e!4410801))))

(declare-fun call!676073 () Bool)

(assert (=> b!7367416 (= res!2973296 call!676073)))

(declare-fun b!7367417 () Bool)

(assert (=> b!7367417 (= e!4410799 call!676073)))

(declare-fun b!7367418 () Bool)

(declare-fun e!4410803 () Bool)

(declare-fun call!676072 () Bool)

(assert (=> b!7367418 (= e!4410803 call!676072)))

(declare-fun b!7367419 () Bool)

(assert (=> b!7367419 (= e!4410801 call!676074)))

(declare-fun b!7367420 () Bool)

(declare-fun e!4410805 () Bool)

(assert (=> b!7367420 (= e!4410805 e!4410804)))

(declare-fun c!1369094 () Bool)

(assert (=> b!7367420 (= c!1369094 (is-Union!19264 r1!2370))))

(declare-fun b!7367421 () Bool)

(assert (=> b!7367421 (= e!4410805 e!4410803)))

(declare-fun res!2973299 () Bool)

(assert (=> b!7367421 (= res!2973299 (not (nullable!8340 (reg!19593 r1!2370))))))

(assert (=> b!7367421 (=> (not res!2973299) (not e!4410803))))

(declare-fun b!7367422 () Bool)

(declare-fun res!2973300 () Bool)

(assert (=> b!7367422 (=> res!2973300 e!4410800)))

(assert (=> b!7367422 (= res!2973300 (not (is-Concat!28109 r1!2370)))))

(assert (=> b!7367422 (= e!4410804 e!4410800)))

(declare-fun bm!676068 () Bool)

(assert (=> bm!676068 (= call!676074 (validRegex!9860 (ite c!1369094 (regOne!39041 r1!2370) (regTwo!39040 r1!2370))))))

(declare-fun b!7367423 () Bool)

(declare-fun e!4410802 () Bool)

(assert (=> b!7367423 (= e!4410802 e!4410805)))

(declare-fun c!1369093 () Bool)

(assert (=> b!7367423 (= c!1369093 (is-Star!19264 r1!2370))))

(declare-fun bm!676069 () Bool)

(assert (=> bm!676069 (= call!676073 call!676072)))

(declare-fun bm!676067 () Bool)

(assert (=> bm!676067 (= call!676072 (validRegex!9860 (ite c!1369093 (reg!19593 r1!2370) (ite c!1369094 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))))))

(declare-fun d!2283019 () Bool)

(declare-fun res!2973297 () Bool)

(assert (=> d!2283019 (=> res!2973297 e!4410802)))

(assert (=> d!2283019 (= res!2973297 (is-ElementMatch!19264 r1!2370))))

(assert (=> d!2283019 (= (validRegex!9860 r1!2370) e!4410802)))

(assert (= (and d!2283019 (not res!2973297)) b!7367423))

(assert (= (and b!7367423 c!1369093) b!7367421))

(assert (= (and b!7367423 (not c!1369093)) b!7367420))

(assert (= (and b!7367421 res!2973299) b!7367418))

(assert (= (and b!7367420 c!1369094) b!7367415))

(assert (= (and b!7367420 (not c!1369094)) b!7367422))

(assert (= (and b!7367415 res!2973298) b!7367417))

(assert (= (and b!7367422 (not res!2973300)) b!7367416))

(assert (= (and b!7367416 res!2973296) b!7367419))

(assert (= (or b!7367415 b!7367419) bm!676068))

(assert (= (or b!7367417 b!7367416) bm!676069))

(assert (= (or b!7367418 bm!676069) bm!676067))

(declare-fun m!8022402 () Bool)

(assert (=> b!7367421 m!8022402))

(declare-fun m!8022404 () Bool)

(assert (=> bm!676068 m!8022404))

(declare-fun m!8022406 () Bool)

(assert (=> bm!676067 m!8022406))

(assert (=> start!719150 d!2283019))

(declare-fun bs!1920630 () Bool)

(declare-fun d!2283021 () Bool)

(assert (= bs!1920630 (and d!2283021 b!7367299)))

(declare-fun lambda!457830 () Int)

(assert (=> bs!1920630 (= lambda!457830 lambda!457824)))

(declare-fun forall!18070 (List!71760 Int) Bool)

(assert (=> d!2283021 (= (inv!91501 cWitness!61) (forall!18070 (exprs!8704 cWitness!61) lambda!457830))))

(declare-fun bs!1920631 () Bool)

(assert (= bs!1920631 d!2283021))

(declare-fun m!8022408 () Bool)

(assert (=> bs!1920631 m!8022408))

(assert (=> start!719150 d!2283021))

(declare-fun bs!1920632 () Bool)

(declare-fun d!2283023 () Bool)

(assert (= bs!1920632 (and d!2283023 b!7367299)))

(declare-fun lambda!457831 () Int)

(assert (=> bs!1920632 (= lambda!457831 lambda!457824)))

(declare-fun bs!1920633 () Bool)

(assert (= bs!1920633 (and d!2283023 d!2283021)))

(assert (=> bs!1920633 (= lambda!457831 lambda!457830)))

(assert (=> d!2283023 (= (inv!91501 ct1!282) (forall!18070 (exprs!8704 ct1!282) lambda!457831))))

(declare-fun bs!1920634 () Bool)

(assert (= bs!1920634 d!2283023))

(declare-fun m!8022410 () Bool)

(assert (=> bs!1920634 m!8022410))

(assert (=> start!719150 d!2283023))

(declare-fun bs!1920635 () Bool)

(declare-fun d!2283025 () Bool)

(assert (= bs!1920635 (and d!2283025 b!7367299)))

(declare-fun lambda!457832 () Int)

(assert (=> bs!1920635 (= lambda!457832 lambda!457824)))

(declare-fun bs!1920636 () Bool)

(assert (= bs!1920636 (and d!2283025 d!2283021)))

(assert (=> bs!1920636 (= lambda!457832 lambda!457830)))

(declare-fun bs!1920637 () Bool)

(assert (= bs!1920637 (and d!2283025 d!2283023)))

(assert (=> bs!1920637 (= lambda!457832 lambda!457831)))

(assert (=> d!2283025 (= (inv!91501 ct2!378) (forall!18070 (exprs!8704 ct2!378) lambda!457832))))

(declare-fun bs!1920638 () Bool)

(assert (= bs!1920638 d!2283025))

(declare-fun m!8022412 () Bool)

(assert (=> bs!1920638 m!8022412))

(assert (=> start!719150 d!2283025))

(declare-fun bs!1920639 () Bool)

(declare-fun d!2283027 () Bool)

(assert (= bs!1920639 (and d!2283027 b!7367299)))

(declare-fun lambda!457833 () Int)

(assert (=> bs!1920639 (= lambda!457833 lambda!457824)))

(declare-fun bs!1920640 () Bool)

(assert (= bs!1920640 (and d!2283027 d!2283021)))

(assert (=> bs!1920640 (= lambda!457833 lambda!457830)))

(declare-fun bs!1920641 () Bool)

(assert (= bs!1920641 (and d!2283027 d!2283023)))

(assert (=> bs!1920641 (= lambda!457833 lambda!457831)))

(declare-fun bs!1920642 () Bool)

(assert (= bs!1920642 (and d!2283027 d!2283025)))

(assert (=> bs!1920642 (= lambda!457833 lambda!457832)))

(assert (=> d!2283027 (= (inv!91501 lt!2615049) (forall!18070 (exprs!8704 lt!2615049) lambda!457833))))

(declare-fun bs!1920643 () Bool)

(assert (= bs!1920643 d!2283027))

(declare-fun m!8022414 () Bool)

(assert (=> bs!1920643 m!8022414))

(assert (=> b!7367296 d!2283027))

(declare-fun b!7367433 () Bool)

(declare-fun e!4410817 () (Set Context!16408))

(assert (=> b!7367433 (= e!4410817 (as set.empty (Set Context!16408)))))

(declare-fun bm!676073 () Bool)

(declare-fun call!676083 () (Set Context!16408))

(declare-fun call!676082 () (Set Context!16408))

(assert (=> bm!676073 (= call!676083 call!676082)))

(declare-fun b!7367434 () Bool)

(declare-fun e!4410813 () (Set Context!16408))

(declare-fun call!676081 () (Set Context!16408))

(assert (=> b!7367434 (= e!4410813 (set.union call!676082 call!676081))))

(declare-fun b!7367435 () Bool)

(declare-fun e!4410815 () (Set Context!16408))

(assert (=> b!7367435 (= e!4410815 (set.insert (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (as set.empty (Set Context!16408))))))

(declare-fun b!7367436 () Bool)

(declare-fun call!676080 () (Set Context!16408))

(assert (=> b!7367436 (= e!4410817 call!676080)))

(declare-fun c!1369097 () Bool)

(declare-fun bm!676074 () Bool)

(declare-fun c!1369101 () Bool)

(declare-fun call!676078 () List!71760)

(assert (=> bm!676074 (= call!676078 ($colon$colon!3246 (exprs!8704 (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378)))) (ite (or c!1369097 c!1369101) (regTwo!39040 r1!2370) r1!2370)))))

(declare-fun bm!676075 () Bool)

(declare-fun c!1369099 () Bool)

(declare-fun call!676079 () List!71760)

(assert (=> bm!676075 (= call!676082 (derivationStepZipperDown!3090 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370)))) (ite (or c!1369099 c!1369097) (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (Context!16409 call!676079)) c!10362))))

(declare-fun b!7367437 () Bool)

(declare-fun c!1369098 () Bool)

(assert (=> b!7367437 (= c!1369098 (is-Star!19264 r1!2370))))

(declare-fun e!4410816 () (Set Context!16408))

(assert (=> b!7367437 (= e!4410816 e!4410817)))

(declare-fun b!7367438 () Bool)

(declare-fun e!4410818 () Bool)

(assert (=> b!7367438 (= e!4410818 (nullable!8340 (regOne!39040 r1!2370)))))

(declare-fun bm!676076 () Bool)

(assert (=> bm!676076 (= call!676081 (derivationStepZipperDown!3090 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)) (ite c!1369099 (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (Context!16409 call!676078)) c!10362))))

(declare-fun b!7367439 () Bool)

(assert (=> b!7367439 (= e!4410816 call!676080)))

(declare-fun d!2283029 () Bool)

(declare-fun c!1369100 () Bool)

(assert (=> d!2283029 (= c!1369100 (and (is-ElementMatch!19264 r1!2370) (= (c!1369068 r1!2370) c!10362)))))

(assert (=> d!2283029 (= (derivationStepZipperDown!3090 r1!2370 (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) c!10362) e!4410815)))

(declare-fun b!7367440 () Bool)

(assert (=> b!7367440 (= e!4410815 e!4410813)))

(assert (=> b!7367440 (= c!1369099 (is-Union!19264 r1!2370))))

(declare-fun b!7367441 () Bool)

(declare-fun e!4410814 () (Set Context!16408))

(assert (=> b!7367441 (= e!4410814 (set.union call!676081 call!676083))))

(declare-fun bm!676077 () Bool)

(assert (=> bm!676077 (= call!676080 call!676083)))

(declare-fun bm!676078 () Bool)

(assert (=> bm!676078 (= call!676079 call!676078)))

(declare-fun b!7367442 () Bool)

(assert (=> b!7367442 (= e!4410814 e!4410816)))

(assert (=> b!7367442 (= c!1369101 (is-Concat!28109 r1!2370))))

(declare-fun b!7367443 () Bool)

(assert (=> b!7367443 (= c!1369097 e!4410818)))

(declare-fun res!2973306 () Bool)

(assert (=> b!7367443 (=> (not res!2973306) (not e!4410818))))

(assert (=> b!7367443 (= res!2973306 (is-Concat!28109 r1!2370))))

(assert (=> b!7367443 (= e!4410813 e!4410814)))

(assert (= (and d!2283029 c!1369100) b!7367435))

(assert (= (and d!2283029 (not c!1369100)) b!7367440))

(assert (= (and b!7367440 c!1369099) b!7367434))

(assert (= (and b!7367440 (not c!1369099)) b!7367443))

(assert (= (and b!7367443 res!2973306) b!7367438))

(assert (= (and b!7367443 c!1369097) b!7367441))

(assert (= (and b!7367443 (not c!1369097)) b!7367442))

(assert (= (and b!7367442 c!1369101) b!7367439))

(assert (= (and b!7367442 (not c!1369101)) b!7367437))

(assert (= (and b!7367437 c!1369098) b!7367436))

(assert (= (and b!7367437 (not c!1369098)) b!7367433))

(assert (= (or b!7367439 b!7367436) bm!676078))

(assert (= (or b!7367439 b!7367436) bm!676077))

(assert (= (or b!7367441 bm!676077) bm!676073))

(assert (= (or b!7367441 bm!676078) bm!676074))

(assert (= (or b!7367434 b!7367441) bm!676076))

(assert (= (or b!7367434 bm!676073) bm!676075))

(assert (=> b!7367438 m!8022330))

(declare-fun m!8022416 () Bool)

(assert (=> b!7367435 m!8022416))

(declare-fun m!8022418 () Bool)

(assert (=> bm!676076 m!8022418))

(declare-fun m!8022422 () Bool)

(assert (=> bm!676075 m!8022422))

(declare-fun m!8022426 () Bool)

(assert (=> bm!676074 m!8022426))

(assert (=> b!7367299 d!2283029))

(declare-fun b!7367453 () Bool)

(declare-fun e!4410823 () List!71760)

(assert (=> b!7367453 (= e!4410823 (Cons!71636 (h!78084 (exprs!8704 ct1!282)) (++!17080 (t!386211 (exprs!8704 ct1!282)) (exprs!8704 ct2!378))))))

(declare-fun lt!2615068 () List!71760)

(declare-fun e!4410824 () Bool)

(declare-fun b!7367455 () Bool)

(assert (=> b!7367455 (= e!4410824 (or (not (= (exprs!8704 ct2!378) Nil!71636)) (= lt!2615068 (exprs!8704 ct1!282))))))

(declare-fun d!2283031 () Bool)

(assert (=> d!2283031 e!4410824))

(declare-fun res!2973312 () Bool)

(assert (=> d!2283031 (=> (not res!2973312) (not e!4410824))))

(declare-fun content!15145 (List!71760) (Set Regex!19264))

(assert (=> d!2283031 (= res!2973312 (= (content!15145 lt!2615068) (set.union (content!15145 (exprs!8704 ct1!282)) (content!15145 (exprs!8704 ct2!378)))))))

(assert (=> d!2283031 (= lt!2615068 e!4410823)))

(declare-fun c!1369104 () Bool)

(assert (=> d!2283031 (= c!1369104 (is-Nil!71636 (exprs!8704 ct1!282)))))

(assert (=> d!2283031 (= (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378)) lt!2615068)))

(declare-fun b!7367452 () Bool)

(assert (=> b!7367452 (= e!4410823 (exprs!8704 ct2!378))))

(declare-fun b!7367454 () Bool)

(declare-fun res!2973311 () Bool)

(assert (=> b!7367454 (=> (not res!2973311) (not e!4410824))))

(declare-fun size!42123 (List!71760) Int)

(assert (=> b!7367454 (= res!2973311 (= (size!42123 lt!2615068) (+ (size!42123 (exprs!8704 ct1!282)) (size!42123 (exprs!8704 ct2!378)))))))

(assert (= (and d!2283031 c!1369104) b!7367452))

(assert (= (and d!2283031 (not c!1369104)) b!7367453))

(assert (= (and d!2283031 res!2973312) b!7367454))

(assert (= (and b!7367454 res!2973311) b!7367455))

(declare-fun m!8022432 () Bool)

(assert (=> b!7367453 m!8022432))

(declare-fun m!8022434 () Bool)

(assert (=> d!2283031 m!8022434))

(declare-fun m!8022436 () Bool)

(assert (=> d!2283031 m!8022436))

(declare-fun m!8022438 () Bool)

(assert (=> d!2283031 m!8022438))

(declare-fun m!8022440 () Bool)

(assert (=> b!7367454 m!8022440))

(declare-fun m!8022442 () Bool)

(assert (=> b!7367454 m!8022442))

(declare-fun m!8022444 () Bool)

(assert (=> b!7367454 m!8022444))

(assert (=> b!7367299 d!2283031))

(declare-fun d!2283037 () Bool)

(assert (=> d!2283037 (forall!18070 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378)) lambda!457824)))

(declare-fun lt!2615071 () Unit!165477)

(declare-fun choose!57288 (List!71760 List!71760 Int) Unit!165477)

(assert (=> d!2283037 (= lt!2615071 (choose!57288 (exprs!8704 ct1!282) (exprs!8704 ct2!378) lambda!457824))))

(assert (=> d!2283037 (forall!18070 (exprs!8704 ct1!282) lambda!457824)))

(assert (=> d!2283037 (= (lemmaConcatPreservesForall!1937 (exprs!8704 ct1!282) (exprs!8704 ct2!378) lambda!457824) lt!2615071)))

(declare-fun bs!1920653 () Bool)

(assert (= bs!1920653 d!2283037))

(assert (=> bs!1920653 m!8022336))

(assert (=> bs!1920653 m!8022336))

(declare-fun m!8022450 () Bool)

(assert (=> bs!1920653 m!8022450))

(declare-fun m!8022452 () Bool)

(assert (=> bs!1920653 m!8022452))

(declare-fun m!8022454 () Bool)

(assert (=> bs!1920653 m!8022454))

(assert (=> b!7367299 d!2283037))

(declare-fun b!7367465 () Bool)

(declare-fun e!4410836 () (Set Context!16408))

(assert (=> b!7367465 (= e!4410836 (as set.empty (Set Context!16408)))))

(declare-fun bm!676082 () Bool)

(declare-fun call!676092 () (Set Context!16408))

(declare-fun call!676091 () (Set Context!16408))

(assert (=> bm!676082 (= call!676092 call!676091)))

(declare-fun b!7367466 () Bool)

(declare-fun e!4410832 () (Set Context!16408))

(declare-fun call!676090 () (Set Context!16408))

(assert (=> b!7367466 (= e!4410832 (set.union call!676091 call!676090))))

(declare-fun b!7367467 () Bool)

(declare-fun e!4410834 () (Set Context!16408))

(assert (=> b!7367467 (= e!4410834 (set.insert ct1!282 (as set.empty (Set Context!16408))))))

(declare-fun b!7367468 () Bool)

(declare-fun call!676089 () (Set Context!16408))

(assert (=> b!7367468 (= e!4410836 call!676089)))

(declare-fun c!1369111 () Bool)

(declare-fun c!1369107 () Bool)

(declare-fun bm!676083 () Bool)

(declare-fun call!676087 () List!71760)

(assert (=> bm!676083 (= call!676087 ($colon$colon!3246 (exprs!8704 ct1!282) (ite (or c!1369107 c!1369111) (regTwo!39040 (regTwo!39040 r1!2370)) (regTwo!39040 r1!2370))))))

(declare-fun call!676088 () List!71760)

(declare-fun c!1369109 () Bool)

(declare-fun bm!676084 () Bool)

(assert (=> bm!676084 (= call!676091 (derivationStepZipperDown!3090 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370))))) (ite (or c!1369109 c!1369107) ct1!282 (Context!16409 call!676088)) c!10362))))

(declare-fun b!7367469 () Bool)

(declare-fun c!1369108 () Bool)

(assert (=> b!7367469 (= c!1369108 (is-Star!19264 (regTwo!39040 r1!2370)))))

(declare-fun e!4410835 () (Set Context!16408))

(assert (=> b!7367469 (= e!4410835 e!4410836)))

(declare-fun b!7367470 () Bool)

(declare-fun e!4410837 () Bool)

(assert (=> b!7367470 (= e!4410837 (nullable!8340 (regOne!39040 (regTwo!39040 r1!2370))))))

(declare-fun bm!676085 () Bool)

(assert (=> bm!676085 (= call!676090 (derivationStepZipperDown!3090 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))) (ite c!1369109 ct1!282 (Context!16409 call!676087)) c!10362))))

(declare-fun b!7367471 () Bool)

(assert (=> b!7367471 (= e!4410835 call!676089)))

(declare-fun d!2283043 () Bool)

(declare-fun c!1369110 () Bool)

(assert (=> d!2283043 (= c!1369110 (and (is-ElementMatch!19264 (regTwo!39040 r1!2370)) (= (c!1369068 (regTwo!39040 r1!2370)) c!10362)))))

(assert (=> d!2283043 (= (derivationStepZipperDown!3090 (regTwo!39040 r1!2370) ct1!282 c!10362) e!4410834)))

(declare-fun b!7367472 () Bool)

(assert (=> b!7367472 (= e!4410834 e!4410832)))

(assert (=> b!7367472 (= c!1369109 (is-Union!19264 (regTwo!39040 r1!2370)))))

(declare-fun b!7367473 () Bool)

(declare-fun e!4410833 () (Set Context!16408))

(assert (=> b!7367473 (= e!4410833 (set.union call!676090 call!676092))))

(declare-fun bm!676086 () Bool)

(assert (=> bm!676086 (= call!676089 call!676092)))

(declare-fun bm!676087 () Bool)

(assert (=> bm!676087 (= call!676088 call!676087)))

(declare-fun b!7367474 () Bool)

(assert (=> b!7367474 (= e!4410833 e!4410835)))

(assert (=> b!7367474 (= c!1369111 (is-Concat!28109 (regTwo!39040 r1!2370)))))

(declare-fun b!7367475 () Bool)

(assert (=> b!7367475 (= c!1369107 e!4410837)))

(declare-fun res!2973318 () Bool)

(assert (=> b!7367475 (=> (not res!2973318) (not e!4410837))))

(assert (=> b!7367475 (= res!2973318 (is-Concat!28109 (regTwo!39040 r1!2370)))))

(assert (=> b!7367475 (= e!4410832 e!4410833)))

(assert (= (and d!2283043 c!1369110) b!7367467))

(assert (= (and d!2283043 (not c!1369110)) b!7367472))

(assert (= (and b!7367472 c!1369109) b!7367466))

(assert (= (and b!7367472 (not c!1369109)) b!7367475))

(assert (= (and b!7367475 res!2973318) b!7367470))

(assert (= (and b!7367475 c!1369107) b!7367473))

(assert (= (and b!7367475 (not c!1369107)) b!7367474))

(assert (= (and b!7367474 c!1369111) b!7367471))

(assert (= (and b!7367474 (not c!1369111)) b!7367469))

(assert (= (and b!7367469 c!1369108) b!7367468))

(assert (= (and b!7367469 (not c!1369108)) b!7367465))

(assert (= (or b!7367471 b!7367468) bm!676087))

(assert (= (or b!7367471 b!7367468) bm!676086))

(assert (= (or b!7367473 bm!676086) bm!676082))

(assert (= (or b!7367473 bm!676087) bm!676083))

(assert (= (or b!7367466 b!7367473) bm!676085))

(assert (= (or b!7367466 bm!676082) bm!676084))

(declare-fun m!8022462 () Bool)

(assert (=> b!7367470 m!8022462))

(assert (=> b!7367467 m!8022392))

(declare-fun m!8022464 () Bool)

(assert (=> bm!676085 m!8022464))

(declare-fun m!8022466 () Bool)

(assert (=> bm!676084 m!8022466))

(declare-fun m!8022468 () Bool)

(assert (=> bm!676083 m!8022468))

(assert (=> b!7367298 d!2283043))

(declare-fun b!7367476 () Bool)

(declare-fun e!4410842 () (Set Context!16408))

(assert (=> b!7367476 (= e!4410842 (as set.empty (Set Context!16408)))))

(declare-fun bm!676088 () Bool)

(declare-fun call!676098 () (Set Context!16408))

(declare-fun call!676097 () (Set Context!16408))

(assert (=> bm!676088 (= call!676098 call!676097)))

(declare-fun b!7367477 () Bool)

(declare-fun e!4410838 () (Set Context!16408))

(declare-fun call!676096 () (Set Context!16408))

(assert (=> b!7367477 (= e!4410838 (set.union call!676097 call!676096))))

(declare-fun b!7367478 () Bool)

(declare-fun e!4410840 () (Set Context!16408))

(assert (=> b!7367478 (= e!4410840 (set.insert lt!2615049 (as set.empty (Set Context!16408))))))

(declare-fun b!7367479 () Bool)

(declare-fun call!676095 () (Set Context!16408))

(assert (=> b!7367479 (= e!4410842 call!676095)))

(declare-fun c!1369112 () Bool)

(declare-fun call!676093 () List!71760)

(declare-fun bm!676089 () Bool)

(declare-fun c!1369116 () Bool)

(assert (=> bm!676089 (= call!676093 ($colon$colon!3246 (exprs!8704 lt!2615049) (ite (or c!1369112 c!1369116) (regTwo!39040 (regOne!39040 r1!2370)) (regOne!39040 r1!2370))))))

(declare-fun call!676094 () List!71760)

(declare-fun c!1369114 () Bool)

(declare-fun bm!676090 () Bool)

(assert (=> bm!676090 (= call!676097 (derivationStepZipperDown!3090 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370))))) (ite (or c!1369114 c!1369112) lt!2615049 (Context!16409 call!676094)) c!10362))))

(declare-fun b!7367480 () Bool)

(declare-fun c!1369113 () Bool)

(assert (=> b!7367480 (= c!1369113 (is-Star!19264 (regOne!39040 r1!2370)))))

(declare-fun e!4410841 () (Set Context!16408))

(assert (=> b!7367480 (= e!4410841 e!4410842)))

(declare-fun b!7367481 () Bool)

(declare-fun e!4410843 () Bool)

(assert (=> b!7367481 (= e!4410843 (nullable!8340 (regOne!39040 (regOne!39040 r1!2370))))))

(declare-fun bm!676091 () Bool)

(assert (=> bm!676091 (= call!676096 (derivationStepZipperDown!3090 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370))) (ite c!1369114 lt!2615049 (Context!16409 call!676093)) c!10362))))

(declare-fun b!7367482 () Bool)

(assert (=> b!7367482 (= e!4410841 call!676095)))

(declare-fun d!2283047 () Bool)

(declare-fun c!1369115 () Bool)

(assert (=> d!2283047 (= c!1369115 (and (is-ElementMatch!19264 (regOne!39040 r1!2370)) (= (c!1369068 (regOne!39040 r1!2370)) c!10362)))))

(assert (=> d!2283047 (= (derivationStepZipperDown!3090 (regOne!39040 r1!2370) lt!2615049 c!10362) e!4410840)))

(declare-fun b!7367483 () Bool)

(assert (=> b!7367483 (= e!4410840 e!4410838)))

(assert (=> b!7367483 (= c!1369114 (is-Union!19264 (regOne!39040 r1!2370)))))

(declare-fun b!7367484 () Bool)

(declare-fun e!4410839 () (Set Context!16408))

(assert (=> b!7367484 (= e!4410839 (set.union call!676096 call!676098))))

(declare-fun bm!676092 () Bool)

(assert (=> bm!676092 (= call!676095 call!676098)))

(declare-fun bm!676093 () Bool)

(assert (=> bm!676093 (= call!676094 call!676093)))

(declare-fun b!7367485 () Bool)

(assert (=> b!7367485 (= e!4410839 e!4410841)))

(assert (=> b!7367485 (= c!1369116 (is-Concat!28109 (regOne!39040 r1!2370)))))

(declare-fun b!7367486 () Bool)

(assert (=> b!7367486 (= c!1369112 e!4410843)))

(declare-fun res!2973319 () Bool)

(assert (=> b!7367486 (=> (not res!2973319) (not e!4410843))))

(assert (=> b!7367486 (= res!2973319 (is-Concat!28109 (regOne!39040 r1!2370)))))

(assert (=> b!7367486 (= e!4410838 e!4410839)))

(assert (= (and d!2283047 c!1369115) b!7367478))

(assert (= (and d!2283047 (not c!1369115)) b!7367483))

(assert (= (and b!7367483 c!1369114) b!7367477))

(assert (= (and b!7367483 (not c!1369114)) b!7367486))

(assert (= (and b!7367486 res!2973319) b!7367481))

(assert (= (and b!7367486 c!1369112) b!7367484))

(assert (= (and b!7367486 (not c!1369112)) b!7367485))

(assert (= (and b!7367485 c!1369116) b!7367482))

(assert (= (and b!7367485 (not c!1369116)) b!7367480))

(assert (= (and b!7367480 c!1369113) b!7367479))

(assert (= (and b!7367480 (not c!1369113)) b!7367476))

(assert (= (or b!7367482 b!7367479) bm!676093))

(assert (= (or b!7367482 b!7367479) bm!676092))

(assert (= (or b!7367484 bm!676092) bm!676088))

(assert (= (or b!7367484 bm!676093) bm!676089))

(assert (= (or b!7367477 b!7367484) bm!676091))

(assert (= (or b!7367477 bm!676088) bm!676090))

(declare-fun m!8022470 () Bool)

(assert (=> b!7367481 m!8022470))

(declare-fun m!8022472 () Bool)

(assert (=> b!7367478 m!8022472))

(declare-fun m!8022474 () Bool)

(assert (=> bm!676091 m!8022474))

(declare-fun m!8022476 () Bool)

(assert (=> bm!676090 m!8022476))

(declare-fun m!8022478 () Bool)

(assert (=> bm!676089 m!8022478))

(assert (=> b!7367298 d!2283047))

(declare-fun d!2283049 () Bool)

(assert (=> d!2283049 (= ($colon$colon!3246 (exprs!8704 ct1!282) (regTwo!39040 r1!2370)) (Cons!71636 (regTwo!39040 r1!2370) (exprs!8704 ct1!282)))))

(assert (=> b!7367298 d!2283049))

(declare-fun b!7367487 () Bool)

(declare-fun res!2973322 () Bool)

(declare-fun e!4410844 () Bool)

(assert (=> b!7367487 (=> (not res!2973322) (not e!4410844))))

(declare-fun call!676101 () Bool)

(assert (=> b!7367487 (= res!2973322 call!676101)))

(declare-fun e!4410849 () Bool)

(assert (=> b!7367487 (= e!4410849 e!4410844)))

(declare-fun b!7367488 () Bool)

(declare-fun e!4410845 () Bool)

(declare-fun e!4410846 () Bool)

(assert (=> b!7367488 (= e!4410845 e!4410846)))

(declare-fun res!2973320 () Bool)

(assert (=> b!7367488 (=> (not res!2973320) (not e!4410846))))

(declare-fun call!676100 () Bool)

(assert (=> b!7367488 (= res!2973320 call!676100)))

(declare-fun b!7367489 () Bool)

(assert (=> b!7367489 (= e!4410844 call!676100)))

(declare-fun b!7367490 () Bool)

(declare-fun e!4410848 () Bool)

(declare-fun call!676099 () Bool)

(assert (=> b!7367490 (= e!4410848 call!676099)))

(declare-fun b!7367491 () Bool)

(assert (=> b!7367491 (= e!4410846 call!676101)))

(declare-fun b!7367492 () Bool)

(declare-fun e!4410850 () Bool)

(assert (=> b!7367492 (= e!4410850 e!4410849)))

(declare-fun c!1369118 () Bool)

(assert (=> b!7367492 (= c!1369118 (is-Union!19264 (regTwo!39040 r1!2370)))))

(declare-fun b!7367493 () Bool)

(assert (=> b!7367493 (= e!4410850 e!4410848)))

(declare-fun res!2973323 () Bool)

(assert (=> b!7367493 (= res!2973323 (not (nullable!8340 (reg!19593 (regTwo!39040 r1!2370)))))))

(assert (=> b!7367493 (=> (not res!2973323) (not e!4410848))))

(declare-fun b!7367494 () Bool)

(declare-fun res!2973324 () Bool)

(assert (=> b!7367494 (=> res!2973324 e!4410845)))

(assert (=> b!7367494 (= res!2973324 (not (is-Concat!28109 (regTwo!39040 r1!2370))))))

(assert (=> b!7367494 (= e!4410849 e!4410845)))

(declare-fun bm!676095 () Bool)

(assert (=> bm!676095 (= call!676101 (validRegex!9860 (ite c!1369118 (regOne!39041 (regTwo!39040 r1!2370)) (regTwo!39040 (regTwo!39040 r1!2370)))))))

(declare-fun b!7367495 () Bool)

(declare-fun e!4410847 () Bool)

(assert (=> b!7367495 (= e!4410847 e!4410850)))

(declare-fun c!1369117 () Bool)

(assert (=> b!7367495 (= c!1369117 (is-Star!19264 (regTwo!39040 r1!2370)))))

(declare-fun bm!676096 () Bool)

(assert (=> bm!676096 (= call!676100 call!676099)))

(declare-fun bm!676094 () Bool)

(assert (=> bm!676094 (= call!676099 (validRegex!9860 (ite c!1369117 (reg!19593 (regTwo!39040 r1!2370)) (ite c!1369118 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))))))

(declare-fun d!2283051 () Bool)

(declare-fun res!2973321 () Bool)

(assert (=> d!2283051 (=> res!2973321 e!4410847)))

(assert (=> d!2283051 (= res!2973321 (is-ElementMatch!19264 (regTwo!39040 r1!2370)))))

(assert (=> d!2283051 (= (validRegex!9860 (regTwo!39040 r1!2370)) e!4410847)))

(assert (= (and d!2283051 (not res!2973321)) b!7367495))

(assert (= (and b!7367495 c!1369117) b!7367493))

(assert (= (and b!7367495 (not c!1369117)) b!7367492))

(assert (= (and b!7367493 res!2973323) b!7367490))

(assert (= (and b!7367492 c!1369118) b!7367487))

(assert (= (and b!7367492 (not c!1369118)) b!7367494))

(assert (= (and b!7367487 res!2973322) b!7367489))

(assert (= (and b!7367494 (not res!2973324)) b!7367488))

(assert (= (and b!7367488 res!2973320) b!7367491))

(assert (= (or b!7367487 b!7367491) bm!676095))

(assert (= (or b!7367489 b!7367488) bm!676096))

(assert (= (or b!7367490 bm!676096) bm!676094))

(declare-fun m!8022480 () Bool)

(assert (=> b!7367493 m!8022480))

(declare-fun m!8022482 () Bool)

(assert (=> bm!676095 m!8022482))

(declare-fun m!8022484 () Bool)

(assert (=> bm!676094 m!8022484))

(assert (=> b!7367293 d!2283051))

(declare-fun e!4410853 () Bool)

(assert (=> b!7367291 (= tp!2094089 e!4410853)))

(declare-fun b!7367507 () Bool)

(declare-fun tp!2094130 () Bool)

(declare-fun tp!2094133 () Bool)

(assert (=> b!7367507 (= e!4410853 (and tp!2094130 tp!2094133))))

(declare-fun b!7367509 () Bool)

(declare-fun tp!2094131 () Bool)

(declare-fun tp!2094132 () Bool)

(assert (=> b!7367509 (= e!4410853 (and tp!2094131 tp!2094132))))

(declare-fun b!7367508 () Bool)

(declare-fun tp!2094134 () Bool)

(assert (=> b!7367508 (= e!4410853 tp!2094134)))

(declare-fun b!7367506 () Bool)

(assert (=> b!7367506 (= e!4410853 tp_is_empty!48773)))

(assert (= (and b!7367291 (is-ElementMatch!19264 (reg!19593 r1!2370))) b!7367506))

(assert (= (and b!7367291 (is-Concat!28109 (reg!19593 r1!2370))) b!7367507))

(assert (= (and b!7367291 (is-Star!19264 (reg!19593 r1!2370))) b!7367508))

(assert (= (and b!7367291 (is-Union!19264 (reg!19593 r1!2370))) b!7367509))

(declare-fun e!4410854 () Bool)

(assert (=> b!7367297 (= tp!2094091 e!4410854)))

(declare-fun b!7367511 () Bool)

(declare-fun tp!2094135 () Bool)

(declare-fun tp!2094138 () Bool)

(assert (=> b!7367511 (= e!4410854 (and tp!2094135 tp!2094138))))

(declare-fun b!7367513 () Bool)

(declare-fun tp!2094136 () Bool)

(declare-fun tp!2094137 () Bool)

(assert (=> b!7367513 (= e!4410854 (and tp!2094136 tp!2094137))))

(declare-fun b!7367512 () Bool)

(declare-fun tp!2094139 () Bool)

(assert (=> b!7367512 (= e!4410854 tp!2094139)))

(declare-fun b!7367510 () Bool)

(assert (=> b!7367510 (= e!4410854 tp_is_empty!48773)))

(assert (= (and b!7367297 (is-ElementMatch!19264 (regOne!39040 r1!2370))) b!7367510))

(assert (= (and b!7367297 (is-Concat!28109 (regOne!39040 r1!2370))) b!7367511))

(assert (= (and b!7367297 (is-Star!19264 (regOne!39040 r1!2370))) b!7367512))

(assert (= (and b!7367297 (is-Union!19264 (regOne!39040 r1!2370))) b!7367513))

(declare-fun e!4410855 () Bool)

(assert (=> b!7367297 (= tp!2094088 e!4410855)))

(declare-fun b!7367515 () Bool)

(declare-fun tp!2094140 () Bool)

(declare-fun tp!2094143 () Bool)

(assert (=> b!7367515 (= e!4410855 (and tp!2094140 tp!2094143))))

(declare-fun b!7367517 () Bool)

(declare-fun tp!2094141 () Bool)

(declare-fun tp!2094142 () Bool)

(assert (=> b!7367517 (= e!4410855 (and tp!2094141 tp!2094142))))

(declare-fun b!7367516 () Bool)

(declare-fun tp!2094144 () Bool)

(assert (=> b!7367516 (= e!4410855 tp!2094144)))

(declare-fun b!7367514 () Bool)

(assert (=> b!7367514 (= e!4410855 tp_is_empty!48773)))

(assert (= (and b!7367297 (is-ElementMatch!19264 (regTwo!39040 r1!2370))) b!7367514))

(assert (= (and b!7367297 (is-Concat!28109 (regTwo!39040 r1!2370))) b!7367515))

(assert (= (and b!7367297 (is-Star!19264 (regTwo!39040 r1!2370))) b!7367516))

(assert (= (and b!7367297 (is-Union!19264 (regTwo!39040 r1!2370))) b!7367517))

(declare-fun e!4410856 () Bool)

(assert (=> b!7367295 (= tp!2094092 e!4410856)))

(declare-fun b!7367519 () Bool)

(declare-fun tp!2094145 () Bool)

(declare-fun tp!2094148 () Bool)

(assert (=> b!7367519 (= e!4410856 (and tp!2094145 tp!2094148))))

(declare-fun b!7367521 () Bool)

(declare-fun tp!2094146 () Bool)

(declare-fun tp!2094147 () Bool)

(assert (=> b!7367521 (= e!4410856 (and tp!2094146 tp!2094147))))

(declare-fun b!7367520 () Bool)

(declare-fun tp!2094149 () Bool)

(assert (=> b!7367520 (= e!4410856 tp!2094149)))

(declare-fun b!7367518 () Bool)

(assert (=> b!7367518 (= e!4410856 tp_is_empty!48773)))

(assert (= (and b!7367295 (is-ElementMatch!19264 (regOne!39041 r1!2370))) b!7367518))

(assert (= (and b!7367295 (is-Concat!28109 (regOne!39041 r1!2370))) b!7367519))

(assert (= (and b!7367295 (is-Star!19264 (regOne!39041 r1!2370))) b!7367520))

(assert (= (and b!7367295 (is-Union!19264 (regOne!39041 r1!2370))) b!7367521))

(declare-fun e!4410857 () Bool)

(assert (=> b!7367295 (= tp!2094094 e!4410857)))

(declare-fun b!7367523 () Bool)

(declare-fun tp!2094150 () Bool)

(declare-fun tp!2094153 () Bool)

(assert (=> b!7367523 (= e!4410857 (and tp!2094150 tp!2094153))))

(declare-fun b!7367525 () Bool)

(declare-fun tp!2094151 () Bool)

(declare-fun tp!2094152 () Bool)

(assert (=> b!7367525 (= e!4410857 (and tp!2094151 tp!2094152))))

(declare-fun b!7367524 () Bool)

(declare-fun tp!2094154 () Bool)

(assert (=> b!7367524 (= e!4410857 tp!2094154)))

(declare-fun b!7367522 () Bool)

(assert (=> b!7367522 (= e!4410857 tp_is_empty!48773)))

(assert (= (and b!7367295 (is-ElementMatch!19264 (regTwo!39041 r1!2370))) b!7367522))

(assert (= (and b!7367295 (is-Concat!28109 (regTwo!39041 r1!2370))) b!7367523))

(assert (= (and b!7367295 (is-Star!19264 (regTwo!39041 r1!2370))) b!7367524))

(assert (= (and b!7367295 (is-Union!19264 (regTwo!39041 r1!2370))) b!7367525))

(declare-fun b!7367530 () Bool)

(declare-fun e!4410860 () Bool)

(declare-fun tp!2094159 () Bool)

(declare-fun tp!2094160 () Bool)

(assert (=> b!7367530 (= e!4410860 (and tp!2094159 tp!2094160))))

(assert (=> b!7367301 (= tp!2094090 e!4410860)))

(assert (= (and b!7367301 (is-Cons!71636 (exprs!8704 ct1!282))) b!7367530))

(declare-fun b!7367531 () Bool)

(declare-fun e!4410861 () Bool)

(declare-fun tp!2094161 () Bool)

(declare-fun tp!2094162 () Bool)

(assert (=> b!7367531 (= e!4410861 (and tp!2094161 tp!2094162))))

(assert (=> b!7367294 (= tp!2094093 e!4410861)))

(assert (= (and b!7367294 (is-Cons!71636 (exprs!8704 ct2!378))) b!7367531))

(declare-fun b!7367532 () Bool)

(declare-fun e!4410862 () Bool)

(declare-fun tp!2094163 () Bool)

(declare-fun tp!2094164 () Bool)

(assert (=> b!7367532 (= e!4410862 (and tp!2094163 tp!2094164))))

(assert (=> b!7367303 (= tp!2094095 e!4410862)))

(assert (= (and b!7367303 (is-Cons!71636 (exprs!8704 cWitness!61))) b!7367532))

(push 1)

(assert (not d!2283027))

(assert (not b!7367525))

(assert (not b!7367470))

(assert (not b!7367515))

(assert (not b!7367516))

(assert (not b!7367517))

(assert (not bm!676090))

(assert (not b!7367421))

(assert (not b!7367523))

(assert (not b!7367507))

(assert (not bm!676068))

(assert (not b!7367509))

(assert (not b!7367532))

(assert (not b!7367438))

(assert (not bm!676094))

(assert (not b!7367512))

(assert (not b!7367521))

(assert (not d!2283037))

(assert (not bm!676067))

(assert (not b!7367524))

(assert (not bm!676083))

(assert (not bm!676074))

(assert (not bm!676052))

(assert (not b!7367520))

(assert (not b!7367530))

(assert (not bm!676085))

(assert (not bm!676095))

(assert (not b!7367519))

(assert (not b!7367508))

(assert (not bm!676050))

(assert (not bm!676076))

(assert (not d!2283017))

(assert (not b!7367373))

(assert (not bm!676084))

(assert (not b!7367481))

(assert (not bm!676075))

(assert (not bm!676089))

(assert (not d!2283031))

(assert tp_is_empty!48773)

(assert (not b!7367453))

(assert (not d!2283021))

(assert (not b!7367454))

(assert (not b!7367531))

(assert (not d!2283025))

(assert (not b!7367511))

(assert (not bm!676051))

(assert (not d!2283023))

(assert (not b!7367493))

(assert (not b!7367513))

(assert (not bm!676091))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7367648 () Bool)

(declare-fun res!2973339 () Bool)

(declare-fun e!4410917 () Bool)

(assert (=> b!7367648 (=> (not res!2973339) (not e!4410917))))

(declare-fun call!676140 () Bool)

(assert (=> b!7367648 (= res!2973339 call!676140)))

(declare-fun e!4410922 () Bool)

(assert (=> b!7367648 (= e!4410922 e!4410917)))

(declare-fun b!7367649 () Bool)

(declare-fun e!4410918 () Bool)

(declare-fun e!4410919 () Bool)

(assert (=> b!7367649 (= e!4410918 e!4410919)))

(declare-fun res!2973337 () Bool)

(assert (=> b!7367649 (=> (not res!2973337) (not e!4410919))))

(declare-fun call!676139 () Bool)

(assert (=> b!7367649 (= res!2973337 call!676139)))

(declare-fun b!7367650 () Bool)

(assert (=> b!7367650 (= e!4410917 call!676139)))

(declare-fun b!7367651 () Bool)

(declare-fun e!4410921 () Bool)

(declare-fun call!676138 () Bool)

(assert (=> b!7367651 (= e!4410921 call!676138)))

(declare-fun b!7367652 () Bool)

(assert (=> b!7367652 (= e!4410919 call!676140)))

(declare-fun b!7367653 () Bool)

(declare-fun e!4410923 () Bool)

(assert (=> b!7367653 (= e!4410923 e!4410922)))

(declare-fun c!1369153 () Bool)

(assert (=> b!7367653 (= c!1369153 (is-Union!19264 (ite c!1369118 (regOne!39041 (regTwo!39040 r1!2370)) (regTwo!39040 (regTwo!39040 r1!2370)))))))

(declare-fun b!7367654 () Bool)

(assert (=> b!7367654 (= e!4410923 e!4410921)))

(declare-fun res!2973340 () Bool)

(assert (=> b!7367654 (= res!2973340 (not (nullable!8340 (reg!19593 (ite c!1369118 (regOne!39041 (regTwo!39040 r1!2370)) (regTwo!39040 (regTwo!39040 r1!2370)))))))))

(assert (=> b!7367654 (=> (not res!2973340) (not e!4410921))))

(declare-fun b!7367655 () Bool)

(declare-fun res!2973341 () Bool)

(assert (=> b!7367655 (=> res!2973341 e!4410918)))

(assert (=> b!7367655 (= res!2973341 (not (is-Concat!28109 (ite c!1369118 (regOne!39041 (regTwo!39040 r1!2370)) (regTwo!39040 (regTwo!39040 r1!2370))))))))

(assert (=> b!7367655 (= e!4410922 e!4410918)))

(declare-fun bm!676134 () Bool)

(assert (=> bm!676134 (= call!676140 (validRegex!9860 (ite c!1369153 (regOne!39041 (ite c!1369118 (regOne!39041 (regTwo!39040 r1!2370)) (regTwo!39040 (regTwo!39040 r1!2370)))) (regTwo!39040 (ite c!1369118 (regOne!39041 (regTwo!39040 r1!2370)) (regTwo!39040 (regTwo!39040 r1!2370)))))))))

(declare-fun b!7367656 () Bool)

(declare-fun e!4410920 () Bool)

(assert (=> b!7367656 (= e!4410920 e!4410923)))

(declare-fun c!1369152 () Bool)

(assert (=> b!7367656 (= c!1369152 (is-Star!19264 (ite c!1369118 (regOne!39041 (regTwo!39040 r1!2370)) (regTwo!39040 (regTwo!39040 r1!2370)))))))

(declare-fun bm!676135 () Bool)

(assert (=> bm!676135 (= call!676139 call!676138)))

(declare-fun bm!676133 () Bool)

(assert (=> bm!676133 (= call!676138 (validRegex!9860 (ite c!1369152 (reg!19593 (ite c!1369118 (regOne!39041 (regTwo!39040 r1!2370)) (regTwo!39040 (regTwo!39040 r1!2370)))) (ite c!1369153 (regTwo!39041 (ite c!1369118 (regOne!39041 (regTwo!39040 r1!2370)) (regTwo!39040 (regTwo!39040 r1!2370)))) (regOne!39040 (ite c!1369118 (regOne!39041 (regTwo!39040 r1!2370)) (regTwo!39040 (regTwo!39040 r1!2370))))))))))

(declare-fun d!2283067 () Bool)

(declare-fun res!2973338 () Bool)

(assert (=> d!2283067 (=> res!2973338 e!4410920)))

(assert (=> d!2283067 (= res!2973338 (is-ElementMatch!19264 (ite c!1369118 (regOne!39041 (regTwo!39040 r1!2370)) (regTwo!39040 (regTwo!39040 r1!2370)))))))

(assert (=> d!2283067 (= (validRegex!9860 (ite c!1369118 (regOne!39041 (regTwo!39040 r1!2370)) (regTwo!39040 (regTwo!39040 r1!2370)))) e!4410920)))

(assert (= (and d!2283067 (not res!2973338)) b!7367656))

(assert (= (and b!7367656 c!1369152) b!7367654))

(assert (= (and b!7367656 (not c!1369152)) b!7367653))

(assert (= (and b!7367654 res!2973340) b!7367651))

(assert (= (and b!7367653 c!1369153) b!7367648))

(assert (= (and b!7367653 (not c!1369153)) b!7367655))

(assert (= (and b!7367648 res!2973339) b!7367650))

(assert (= (and b!7367655 (not res!2973341)) b!7367649))

(assert (= (and b!7367649 res!2973337) b!7367652))

(assert (= (or b!7367648 b!7367652) bm!676134))

(assert (= (or b!7367650 b!7367649) bm!676135))

(assert (= (or b!7367651 bm!676135) bm!676133))

(declare-fun m!8022542 () Bool)

(assert (=> b!7367654 m!8022542))

(declare-fun m!8022544 () Bool)

(assert (=> bm!676134 m!8022544))

(declare-fun m!8022546 () Bool)

(assert (=> bm!676133 m!8022546))

(assert (=> bm!676095 d!2283067))

(declare-fun d!2283069 () Bool)

(declare-fun lt!2615080 () Int)

(assert (=> d!2283069 (>= lt!2615080 0)))

(declare-fun e!4410926 () Int)

(assert (=> d!2283069 (= lt!2615080 e!4410926)))

(declare-fun c!1369156 () Bool)

(assert (=> d!2283069 (= c!1369156 (is-Nil!71636 lt!2615068))))

(assert (=> d!2283069 (= (size!42123 lt!2615068) lt!2615080)))

(declare-fun b!7367661 () Bool)

(assert (=> b!7367661 (= e!4410926 0)))

(declare-fun b!7367662 () Bool)

(assert (=> b!7367662 (= e!4410926 (+ 1 (size!42123 (t!386211 lt!2615068))))))

(assert (= (and d!2283069 c!1369156) b!7367661))

(assert (= (and d!2283069 (not c!1369156)) b!7367662))

(declare-fun m!8022548 () Bool)

(assert (=> b!7367662 m!8022548))

(assert (=> b!7367454 d!2283069))

(declare-fun d!2283071 () Bool)

(declare-fun lt!2615081 () Int)

(assert (=> d!2283071 (>= lt!2615081 0)))

(declare-fun e!4410927 () Int)

(assert (=> d!2283071 (= lt!2615081 e!4410927)))

(declare-fun c!1369157 () Bool)

(assert (=> d!2283071 (= c!1369157 (is-Nil!71636 (exprs!8704 ct1!282)))))

(assert (=> d!2283071 (= (size!42123 (exprs!8704 ct1!282)) lt!2615081)))

(declare-fun b!7367663 () Bool)

(assert (=> b!7367663 (= e!4410927 0)))

(declare-fun b!7367664 () Bool)

(assert (=> b!7367664 (= e!4410927 (+ 1 (size!42123 (t!386211 (exprs!8704 ct1!282)))))))

(assert (= (and d!2283071 c!1369157) b!7367663))

(assert (= (and d!2283071 (not c!1369157)) b!7367664))

(declare-fun m!8022550 () Bool)

(assert (=> b!7367664 m!8022550))

(assert (=> b!7367454 d!2283071))

(declare-fun d!2283073 () Bool)

(declare-fun lt!2615082 () Int)

(assert (=> d!2283073 (>= lt!2615082 0)))

(declare-fun e!4410928 () Int)

(assert (=> d!2283073 (= lt!2615082 e!4410928)))

(declare-fun c!1369158 () Bool)

(assert (=> d!2283073 (= c!1369158 (is-Nil!71636 (exprs!8704 ct2!378)))))

(assert (=> d!2283073 (= (size!42123 (exprs!8704 ct2!378)) lt!2615082)))

(declare-fun b!7367665 () Bool)

(assert (=> b!7367665 (= e!4410928 0)))

(declare-fun b!7367666 () Bool)

(assert (=> b!7367666 (= e!4410928 (+ 1 (size!42123 (t!386211 (exprs!8704 ct2!378)))))))

(assert (= (and d!2283073 c!1369158) b!7367665))

(assert (= (and d!2283073 (not c!1369158)) b!7367666))

(declare-fun m!8022552 () Bool)

(assert (=> b!7367666 m!8022552))

(assert (=> b!7367454 d!2283073))

(declare-fun d!2283075 () Bool)

(assert (=> d!2283075 (= (nullable!8340 (regOne!39040 (regTwo!39040 r1!2370))) (nullableFct!3329 (regOne!39040 (regTwo!39040 r1!2370))))))

(declare-fun bs!1920660 () Bool)

(assert (= bs!1920660 d!2283075))

(declare-fun m!8022554 () Bool)

(assert (=> bs!1920660 m!8022554))

(assert (=> b!7367470 d!2283075))

(declare-fun d!2283077 () Bool)

(declare-fun res!2973346 () Bool)

(declare-fun e!4410933 () Bool)

(assert (=> d!2283077 (=> res!2973346 e!4410933)))

(assert (=> d!2283077 (= res!2973346 (is-Nil!71636 (exprs!8704 cWitness!61)))))

(assert (=> d!2283077 (= (forall!18070 (exprs!8704 cWitness!61) lambda!457830) e!4410933)))

(declare-fun b!7367671 () Bool)

(declare-fun e!4410934 () Bool)

(assert (=> b!7367671 (= e!4410933 e!4410934)))

(declare-fun res!2973347 () Bool)

(assert (=> b!7367671 (=> (not res!2973347) (not e!4410934))))

(declare-fun dynLambda!29522 (Int Regex!19264) Bool)

(assert (=> b!7367671 (= res!2973347 (dynLambda!29522 lambda!457830 (h!78084 (exprs!8704 cWitness!61))))))

(declare-fun b!7367672 () Bool)

(assert (=> b!7367672 (= e!4410934 (forall!18070 (t!386211 (exprs!8704 cWitness!61)) lambda!457830))))

(assert (= (and d!2283077 (not res!2973346)) b!7367671))

(assert (= (and b!7367671 res!2973347) b!7367672))

(declare-fun b_lambda!284363 () Bool)

(assert (=> (not b_lambda!284363) (not b!7367671)))

(declare-fun m!8022556 () Bool)

(assert (=> b!7367671 m!8022556))

(declare-fun m!8022558 () Bool)

(assert (=> b!7367672 m!8022558))

(assert (=> d!2283021 d!2283077))

(declare-fun b!7367673 () Bool)

(declare-fun e!4410939 () (Set Context!16408))

(assert (=> b!7367673 (= e!4410939 (as set.empty (Set Context!16408)))))

(declare-fun bm!676136 () Bool)

(declare-fun call!676146 () (Set Context!16408))

(declare-fun call!676145 () (Set Context!16408))

(assert (=> bm!676136 (= call!676146 call!676145)))

(declare-fun b!7367674 () Bool)

(declare-fun e!4410935 () (Set Context!16408))

(declare-fun call!676144 () (Set Context!16408))

(assert (=> b!7367674 (= e!4410935 (set.union call!676145 call!676144))))

(declare-fun b!7367675 () Bool)

(declare-fun e!4410937 () (Set Context!16408))

(assert (=> b!7367675 (= e!4410937 (set.insert (ite (or c!1369109 c!1369107) ct1!282 (Context!16409 call!676088)) (as set.empty (Set Context!16408))))))

(declare-fun b!7367676 () Bool)

(declare-fun call!676143 () (Set Context!16408))

(assert (=> b!7367676 (= e!4410939 call!676143)))

(declare-fun c!1369163 () Bool)

(declare-fun bm!676137 () Bool)

(declare-fun c!1369159 () Bool)

(declare-fun call!676141 () List!71760)

(assert (=> bm!676137 (= call!676141 ($colon$colon!3246 (exprs!8704 (ite (or c!1369109 c!1369107) ct1!282 (Context!16409 call!676088))) (ite (or c!1369159 c!1369163) (regTwo!39040 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370)))))) (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370))))))))))

(declare-fun call!676142 () List!71760)

(declare-fun bm!676138 () Bool)

(declare-fun c!1369161 () Bool)

(assert (=> bm!676138 (= call!676145 (derivationStepZipperDown!3090 (ite c!1369161 (regOne!39041 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370)))))) (ite c!1369159 (regTwo!39040 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370)))))) (ite c!1369163 (regOne!39040 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370)))))) (reg!19593 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370))))))))) (ite (or c!1369161 c!1369159) (ite (or c!1369109 c!1369107) ct1!282 (Context!16409 call!676088)) (Context!16409 call!676142)) c!10362))))

(declare-fun b!7367677 () Bool)

(declare-fun c!1369160 () Bool)

(assert (=> b!7367677 (= c!1369160 (is-Star!19264 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370)))))))))

(declare-fun e!4410938 () (Set Context!16408))

(assert (=> b!7367677 (= e!4410938 e!4410939)))

(declare-fun e!4410940 () Bool)

(declare-fun b!7367678 () Bool)

(assert (=> b!7367678 (= e!4410940 (nullable!8340 (regOne!39040 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370))))))))))

(declare-fun bm!676139 () Bool)

(assert (=> bm!676139 (= call!676144 (derivationStepZipperDown!3090 (ite c!1369161 (regTwo!39041 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370)))))) (regOne!39040 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370))))))) (ite c!1369161 (ite (or c!1369109 c!1369107) ct1!282 (Context!16409 call!676088)) (Context!16409 call!676141)) c!10362))))

(declare-fun b!7367679 () Bool)

(assert (=> b!7367679 (= e!4410938 call!676143)))

(declare-fun d!2283079 () Bool)

(declare-fun c!1369162 () Bool)

(assert (=> d!2283079 (= c!1369162 (and (is-ElementMatch!19264 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370)))))) (= (c!1369068 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370)))))) c!10362)))))

(assert (=> d!2283079 (= (derivationStepZipperDown!3090 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370))))) (ite (or c!1369109 c!1369107) ct1!282 (Context!16409 call!676088)) c!10362) e!4410937)))

(declare-fun b!7367680 () Bool)

(assert (=> b!7367680 (= e!4410937 e!4410935)))

(assert (=> b!7367680 (= c!1369161 (is-Union!19264 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370)))))))))

(declare-fun b!7367681 () Bool)

(declare-fun e!4410936 () (Set Context!16408))

(assert (=> b!7367681 (= e!4410936 (set.union call!676144 call!676146))))

(declare-fun bm!676140 () Bool)

(assert (=> bm!676140 (= call!676143 call!676146)))

(declare-fun bm!676141 () Bool)

(assert (=> bm!676141 (= call!676142 call!676141)))

(declare-fun b!7367682 () Bool)

(assert (=> b!7367682 (= e!4410936 e!4410938)))

(assert (=> b!7367682 (= c!1369163 (is-Concat!28109 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370)))))))))

(declare-fun b!7367683 () Bool)

(assert (=> b!7367683 (= c!1369159 e!4410940)))

(declare-fun res!2973348 () Bool)

(assert (=> b!7367683 (=> (not res!2973348) (not e!4410940))))

(assert (=> b!7367683 (= res!2973348 (is-Concat!28109 (ite c!1369109 (regOne!39041 (regTwo!39040 r1!2370)) (ite c!1369107 (regTwo!39040 (regTwo!39040 r1!2370)) (ite c!1369111 (regOne!39040 (regTwo!39040 r1!2370)) (reg!19593 (regTwo!39040 r1!2370)))))))))

(assert (=> b!7367683 (= e!4410935 e!4410936)))

(assert (= (and d!2283079 c!1369162) b!7367675))

(assert (= (and d!2283079 (not c!1369162)) b!7367680))

(assert (= (and b!7367680 c!1369161) b!7367674))

(assert (= (and b!7367680 (not c!1369161)) b!7367683))

(assert (= (and b!7367683 res!2973348) b!7367678))

(assert (= (and b!7367683 c!1369159) b!7367681))

(assert (= (and b!7367683 (not c!1369159)) b!7367682))

(assert (= (and b!7367682 c!1369163) b!7367679))

(assert (= (and b!7367682 (not c!1369163)) b!7367677))

(assert (= (and b!7367677 c!1369160) b!7367676))

(assert (= (and b!7367677 (not c!1369160)) b!7367673))

(assert (= (or b!7367679 b!7367676) bm!676141))

(assert (= (or b!7367679 b!7367676) bm!676140))

(assert (= (or b!7367681 bm!676140) bm!676136))

(assert (= (or b!7367681 bm!676141) bm!676137))

(assert (= (or b!7367674 b!7367681) bm!676139))

(assert (= (or b!7367674 bm!676136) bm!676138))

(declare-fun m!8022560 () Bool)

(assert (=> b!7367678 m!8022560))

(declare-fun m!8022562 () Bool)

(assert (=> b!7367675 m!8022562))

(declare-fun m!8022564 () Bool)

(assert (=> bm!676139 m!8022564))

(declare-fun m!8022566 () Bool)

(assert (=> bm!676138 m!8022566))

(declare-fun m!8022568 () Bool)

(assert (=> bm!676137 m!8022568))

(assert (=> bm!676084 d!2283079))

(declare-fun d!2283081 () Bool)

(declare-fun res!2973349 () Bool)

(declare-fun e!4410941 () Bool)

(assert (=> d!2283081 (=> res!2973349 e!4410941)))

(assert (=> d!2283081 (= res!2973349 (is-Nil!71636 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))))))

(assert (=> d!2283081 (= (forall!18070 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378)) lambda!457824) e!4410941)))

(declare-fun b!7367684 () Bool)

(declare-fun e!4410942 () Bool)

(assert (=> b!7367684 (= e!4410941 e!4410942)))

(declare-fun res!2973350 () Bool)

(assert (=> b!7367684 (=> (not res!2973350) (not e!4410942))))

(assert (=> b!7367684 (= res!2973350 (dynLambda!29522 lambda!457824 (h!78084 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378)))))))

(declare-fun b!7367685 () Bool)

(assert (=> b!7367685 (= e!4410942 (forall!18070 (t!386211 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) lambda!457824))))

(assert (= (and d!2283081 (not res!2973349)) b!7367684))

(assert (= (and b!7367684 res!2973350) b!7367685))

(declare-fun b_lambda!284365 () Bool)

(assert (=> (not b_lambda!284365) (not b!7367684)))

(declare-fun m!8022570 () Bool)

(assert (=> b!7367684 m!8022570))

(declare-fun m!8022572 () Bool)

(assert (=> b!7367685 m!8022572))

(assert (=> d!2283037 d!2283081))

(assert (=> d!2283037 d!2283031))

(declare-fun d!2283083 () Bool)

(assert (=> d!2283083 (forall!18070 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378)) lambda!457824)))

(assert (=> d!2283083 true))

(declare-fun _$78!930 () Unit!165477)

(assert (=> d!2283083 (= (choose!57288 (exprs!8704 ct1!282) (exprs!8704 ct2!378) lambda!457824) _$78!930)))

(declare-fun bs!1920661 () Bool)

(assert (= bs!1920661 d!2283083))

(assert (=> bs!1920661 m!8022336))

(assert (=> bs!1920661 m!8022336))

(assert (=> bs!1920661 m!8022450))

(assert (=> d!2283037 d!2283083))

(declare-fun d!2283085 () Bool)

(declare-fun res!2973351 () Bool)

(declare-fun e!4410943 () Bool)

(assert (=> d!2283085 (=> res!2973351 e!4410943)))

(assert (=> d!2283085 (= res!2973351 (is-Nil!71636 (exprs!8704 ct1!282)))))

(assert (=> d!2283085 (= (forall!18070 (exprs!8704 ct1!282) lambda!457824) e!4410943)))

(declare-fun b!7367686 () Bool)

(declare-fun e!4410944 () Bool)

(assert (=> b!7367686 (= e!4410943 e!4410944)))

(declare-fun res!2973352 () Bool)

(assert (=> b!7367686 (=> (not res!2973352) (not e!4410944))))

(assert (=> b!7367686 (= res!2973352 (dynLambda!29522 lambda!457824 (h!78084 (exprs!8704 ct1!282))))))

(declare-fun b!7367687 () Bool)

(assert (=> b!7367687 (= e!4410944 (forall!18070 (t!386211 (exprs!8704 ct1!282)) lambda!457824))))

(assert (= (and d!2283085 (not res!2973351)) b!7367686))

(assert (= (and b!7367686 res!2973352) b!7367687))

(declare-fun b_lambda!284367 () Bool)

(assert (=> (not b_lambda!284367) (not b!7367686)))

(declare-fun m!8022574 () Bool)

(assert (=> b!7367686 m!8022574))

(declare-fun m!8022576 () Bool)

(assert (=> b!7367687 m!8022576))

(assert (=> d!2283037 d!2283085))

(declare-fun b!7367689 () Bool)

(declare-fun e!4410945 () List!71760)

(assert (=> b!7367689 (= e!4410945 (Cons!71636 (h!78084 (t!386211 (exprs!8704 ct1!282))) (++!17080 (t!386211 (t!386211 (exprs!8704 ct1!282))) (exprs!8704 ct2!378))))))

(declare-fun b!7367691 () Bool)

(declare-fun e!4410946 () Bool)

(declare-fun lt!2615083 () List!71760)

(assert (=> b!7367691 (= e!4410946 (or (not (= (exprs!8704 ct2!378) Nil!71636)) (= lt!2615083 (t!386211 (exprs!8704 ct1!282)))))))

(declare-fun d!2283087 () Bool)

(assert (=> d!2283087 e!4410946))

(declare-fun res!2973354 () Bool)

(assert (=> d!2283087 (=> (not res!2973354) (not e!4410946))))

(assert (=> d!2283087 (= res!2973354 (= (content!15145 lt!2615083) (set.union (content!15145 (t!386211 (exprs!8704 ct1!282))) (content!15145 (exprs!8704 ct2!378)))))))

(assert (=> d!2283087 (= lt!2615083 e!4410945)))

(declare-fun c!1369164 () Bool)

(assert (=> d!2283087 (= c!1369164 (is-Nil!71636 (t!386211 (exprs!8704 ct1!282))))))

(assert (=> d!2283087 (= (++!17080 (t!386211 (exprs!8704 ct1!282)) (exprs!8704 ct2!378)) lt!2615083)))

(declare-fun b!7367688 () Bool)

(assert (=> b!7367688 (= e!4410945 (exprs!8704 ct2!378))))

(declare-fun b!7367690 () Bool)

(declare-fun res!2973353 () Bool)

(assert (=> b!7367690 (=> (not res!2973353) (not e!4410946))))

(assert (=> b!7367690 (= res!2973353 (= (size!42123 lt!2615083) (+ (size!42123 (t!386211 (exprs!8704 ct1!282))) (size!42123 (exprs!8704 ct2!378)))))))

(assert (= (and d!2283087 c!1369164) b!7367688))

(assert (= (and d!2283087 (not c!1369164)) b!7367689))

(assert (= (and d!2283087 res!2973354) b!7367690))

(assert (= (and b!7367690 res!2973353) b!7367691))

(declare-fun m!8022578 () Bool)

(assert (=> b!7367689 m!8022578))

(declare-fun m!8022580 () Bool)

(assert (=> d!2283087 m!8022580))

(declare-fun m!8022582 () Bool)

(assert (=> d!2283087 m!8022582))

(assert (=> d!2283087 m!8022438))

(declare-fun m!8022584 () Bool)

(assert (=> b!7367690 m!8022584))

(assert (=> b!7367690 m!8022550))

(assert (=> b!7367690 m!8022444))

(assert (=> b!7367453 d!2283087))

(declare-fun d!2283089 () Bool)

(declare-fun res!2973355 () Bool)

(declare-fun e!4410947 () Bool)

(assert (=> d!2283089 (=> res!2973355 e!4410947)))

(assert (=> d!2283089 (= res!2973355 (is-Nil!71636 (exprs!8704 ct2!378)))))

(assert (=> d!2283089 (= (forall!18070 (exprs!8704 ct2!378) lambda!457832) e!4410947)))

(declare-fun b!7367692 () Bool)

(declare-fun e!4410948 () Bool)

(assert (=> b!7367692 (= e!4410947 e!4410948)))

(declare-fun res!2973356 () Bool)

(assert (=> b!7367692 (=> (not res!2973356) (not e!4410948))))

(assert (=> b!7367692 (= res!2973356 (dynLambda!29522 lambda!457832 (h!78084 (exprs!8704 ct2!378))))))

(declare-fun b!7367693 () Bool)

(assert (=> b!7367693 (= e!4410948 (forall!18070 (t!386211 (exprs!8704 ct2!378)) lambda!457832))))

(assert (= (and d!2283089 (not res!2973355)) b!7367692))

(assert (= (and b!7367692 res!2973356) b!7367693))

(declare-fun b_lambda!284369 () Bool)

(assert (=> (not b_lambda!284369) (not b!7367692)))

(declare-fun m!8022586 () Bool)

(assert (=> b!7367692 m!8022586))

(declare-fun m!8022588 () Bool)

(assert (=> b!7367693 m!8022588))

(assert (=> d!2283025 d!2283089))

(declare-fun b!7367694 () Bool)

(declare-fun e!4410953 () (Set Context!16408))

(assert (=> b!7367694 (= e!4410953 (as set.empty (Set Context!16408)))))

(declare-fun bm!676142 () Bool)

(declare-fun call!676152 () (Set Context!16408))

(declare-fun call!676151 () (Set Context!16408))

(assert (=> bm!676142 (= call!676152 call!676151)))

(declare-fun b!7367695 () Bool)

(declare-fun e!4410949 () (Set Context!16408))

(declare-fun call!676150 () (Set Context!16408))

(assert (=> b!7367695 (= e!4410949 (set.union call!676151 call!676150))))

(declare-fun b!7367696 () Bool)

(declare-fun e!4410951 () (Set Context!16408))

(assert (=> b!7367696 (= e!4410951 (set.insert (ite c!1369109 ct1!282 (Context!16409 call!676087)) (as set.empty (Set Context!16408))))))

(declare-fun b!7367697 () Bool)

(declare-fun call!676149 () (Set Context!16408))

(assert (=> b!7367697 (= e!4410953 call!676149)))

(declare-fun c!1369165 () Bool)

(declare-fun bm!676143 () Bool)

(declare-fun c!1369169 () Bool)

(declare-fun call!676147 () List!71760)

(assert (=> bm!676143 (= call!676147 ($colon$colon!3246 (exprs!8704 (ite c!1369109 ct1!282 (Context!16409 call!676087))) (ite (or c!1369165 c!1369169) (regTwo!39040 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))) (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))))))

(declare-fun bm!676144 () Bool)

(declare-fun c!1369167 () Bool)

(declare-fun call!676148 () List!71760)

(assert (=> bm!676144 (= call!676151 (derivationStepZipperDown!3090 (ite c!1369167 (regOne!39041 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))) (ite c!1369165 (regTwo!39040 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))) (ite c!1369169 (regOne!39040 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))) (reg!19593 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))))) (ite (or c!1369167 c!1369165) (ite c!1369109 ct1!282 (Context!16409 call!676087)) (Context!16409 call!676148)) c!10362))))

(declare-fun b!7367698 () Bool)

(declare-fun c!1369166 () Bool)

(assert (=> b!7367698 (= c!1369166 (is-Star!19264 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))))))

(declare-fun e!4410952 () (Set Context!16408))

(assert (=> b!7367698 (= e!4410952 e!4410953)))

(declare-fun b!7367699 () Bool)

(declare-fun e!4410954 () Bool)

(assert (=> b!7367699 (= e!4410954 (nullable!8340 (regOne!39040 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))))))

(declare-fun bm!676145 () Bool)

(assert (=> bm!676145 (= call!676150 (derivationStepZipperDown!3090 (ite c!1369167 (regTwo!39041 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))) (regOne!39040 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))) (ite c!1369167 (ite c!1369109 ct1!282 (Context!16409 call!676087)) (Context!16409 call!676147)) c!10362))))

(declare-fun b!7367700 () Bool)

(assert (=> b!7367700 (= e!4410952 call!676149)))

(declare-fun d!2283091 () Bool)

(declare-fun c!1369168 () Bool)

(assert (=> d!2283091 (= c!1369168 (and (is-ElementMatch!19264 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))) (= (c!1369068 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))) c!10362)))))

(assert (=> d!2283091 (= (derivationStepZipperDown!3090 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))) (ite c!1369109 ct1!282 (Context!16409 call!676087)) c!10362) e!4410951)))

(declare-fun b!7367701 () Bool)

(assert (=> b!7367701 (= e!4410951 e!4410949)))

(assert (=> b!7367701 (= c!1369167 (is-Union!19264 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))))))

(declare-fun b!7367702 () Bool)

(declare-fun e!4410950 () (Set Context!16408))

(assert (=> b!7367702 (= e!4410950 (set.union call!676150 call!676152))))

(declare-fun bm!676146 () Bool)

(assert (=> bm!676146 (= call!676149 call!676152)))

(declare-fun bm!676147 () Bool)

(assert (=> bm!676147 (= call!676148 call!676147)))

(declare-fun b!7367703 () Bool)

(assert (=> b!7367703 (= e!4410950 e!4410952)))

(assert (=> b!7367703 (= c!1369169 (is-Concat!28109 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))))))

(declare-fun b!7367704 () Bool)

(assert (=> b!7367704 (= c!1369165 e!4410954)))

(declare-fun res!2973357 () Bool)

(assert (=> b!7367704 (=> (not res!2973357) (not e!4410954))))

(assert (=> b!7367704 (= res!2973357 (is-Concat!28109 (ite c!1369109 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))))))

(assert (=> b!7367704 (= e!4410949 e!4410950)))

(assert (= (and d!2283091 c!1369168) b!7367696))

(assert (= (and d!2283091 (not c!1369168)) b!7367701))

(assert (= (and b!7367701 c!1369167) b!7367695))

(assert (= (and b!7367701 (not c!1369167)) b!7367704))

(assert (= (and b!7367704 res!2973357) b!7367699))

(assert (= (and b!7367704 c!1369165) b!7367702))

(assert (= (and b!7367704 (not c!1369165)) b!7367703))

(assert (= (and b!7367703 c!1369169) b!7367700))

(assert (= (and b!7367703 (not c!1369169)) b!7367698))

(assert (= (and b!7367698 c!1369166) b!7367697))

(assert (= (and b!7367698 (not c!1369166)) b!7367694))

(assert (= (or b!7367700 b!7367697) bm!676147))

(assert (= (or b!7367700 b!7367697) bm!676146))

(assert (= (or b!7367702 bm!676146) bm!676142))

(assert (= (or b!7367702 bm!676147) bm!676143))

(assert (= (or b!7367695 b!7367702) bm!676145))

(assert (= (or b!7367695 bm!676142) bm!676144))

(declare-fun m!8022590 () Bool)

(assert (=> b!7367699 m!8022590))

(declare-fun m!8022592 () Bool)

(assert (=> b!7367696 m!8022592))

(declare-fun m!8022594 () Bool)

(assert (=> bm!676145 m!8022594))

(declare-fun m!8022596 () Bool)

(assert (=> bm!676144 m!8022596))

(declare-fun m!8022598 () Bool)

(assert (=> bm!676143 m!8022598))

(assert (=> bm!676085 d!2283091))

(declare-fun d!2283093 () Bool)

(declare-fun res!2973358 () Bool)

(declare-fun e!4410955 () Bool)

(assert (=> d!2283093 (=> res!2973358 e!4410955)))

(assert (=> d!2283093 (= res!2973358 (is-Nil!71636 (exprs!8704 ct1!282)))))

(assert (=> d!2283093 (= (forall!18070 (exprs!8704 ct1!282) lambda!457831) e!4410955)))

(declare-fun b!7367705 () Bool)

(declare-fun e!4410956 () Bool)

(assert (=> b!7367705 (= e!4410955 e!4410956)))

(declare-fun res!2973359 () Bool)

(assert (=> b!7367705 (=> (not res!2973359) (not e!4410956))))

(assert (=> b!7367705 (= res!2973359 (dynLambda!29522 lambda!457831 (h!78084 (exprs!8704 ct1!282))))))

(declare-fun b!7367706 () Bool)

(assert (=> b!7367706 (= e!4410956 (forall!18070 (t!386211 (exprs!8704 ct1!282)) lambda!457831))))

(assert (= (and d!2283093 (not res!2973358)) b!7367705))

(assert (= (and b!7367705 res!2973359) b!7367706))

(declare-fun b_lambda!284371 () Bool)

(assert (=> (not b_lambda!284371) (not b!7367705)))

(declare-fun m!8022600 () Bool)

(assert (=> b!7367705 m!8022600))

(declare-fun m!8022602 () Bool)

(assert (=> b!7367706 m!8022602))

(assert (=> d!2283023 d!2283093))

(declare-fun d!2283095 () Bool)

(assert (=> d!2283095 (= ($colon$colon!3246 (exprs!8704 ct1!282) (ite (or c!1369107 c!1369111) (regTwo!39040 (regTwo!39040 r1!2370)) (regTwo!39040 r1!2370))) (Cons!71636 (ite (or c!1369107 c!1369111) (regTwo!39040 (regTwo!39040 r1!2370)) (regTwo!39040 r1!2370)) (exprs!8704 ct1!282)))))

(assert (=> bm!676083 d!2283095))

(declare-fun d!2283097 () Bool)

(assert (=> d!2283097 (= (nullable!8340 (reg!19593 (regTwo!39040 r1!2370))) (nullableFct!3329 (reg!19593 (regTwo!39040 r1!2370))))))

(declare-fun bs!1920662 () Bool)

(assert (= bs!1920662 d!2283097))

(declare-fun m!8022604 () Bool)

(assert (=> bs!1920662 m!8022604))

(assert (=> b!7367493 d!2283097))

(declare-fun d!2283099 () Bool)

(declare-fun res!2973360 () Bool)

(declare-fun e!4410957 () Bool)

(assert (=> d!2283099 (=> res!2973360 e!4410957)))

(assert (=> d!2283099 (= res!2973360 (is-Nil!71636 (exprs!8704 lt!2615049)))))

(assert (=> d!2283099 (= (forall!18070 (exprs!8704 lt!2615049) lambda!457833) e!4410957)))

(declare-fun b!7367707 () Bool)

(declare-fun e!4410958 () Bool)

(assert (=> b!7367707 (= e!4410957 e!4410958)))

(declare-fun res!2973361 () Bool)

(assert (=> b!7367707 (=> (not res!2973361) (not e!4410958))))

(assert (=> b!7367707 (= res!2973361 (dynLambda!29522 lambda!457833 (h!78084 (exprs!8704 lt!2615049))))))

(declare-fun b!7367708 () Bool)

(assert (=> b!7367708 (= e!4410958 (forall!18070 (t!386211 (exprs!8704 lt!2615049)) lambda!457833))))

(assert (= (and d!2283099 (not res!2973360)) b!7367707))

(assert (= (and b!7367707 res!2973361) b!7367708))

(declare-fun b_lambda!284373 () Bool)

(assert (=> (not b_lambda!284373) (not b!7367707)))

(declare-fun m!8022606 () Bool)

(assert (=> b!7367707 m!8022606))

(declare-fun m!8022608 () Bool)

(assert (=> b!7367708 m!8022608))

(assert (=> d!2283027 d!2283099))

(declare-fun b!7367709 () Bool)

(declare-fun e!4410963 () (Set Context!16408))

(assert (=> b!7367709 (= e!4410963 (as set.empty (Set Context!16408)))))

(declare-fun bm!676148 () Bool)

(declare-fun call!676158 () (Set Context!16408))

(declare-fun call!676157 () (Set Context!16408))

(assert (=> bm!676148 (= call!676158 call!676157)))

(declare-fun b!7367710 () Bool)

(declare-fun e!4410959 () (Set Context!16408))

(declare-fun call!676156 () (Set Context!16408))

(assert (=> b!7367710 (= e!4410959 (set.union call!676157 call!676156))))

(declare-fun e!4410961 () (Set Context!16408))

(declare-fun b!7367711 () Bool)

(assert (=> b!7367711 (= e!4410961 (set.insert (ite (or c!1369099 c!1369097) (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (Context!16409 call!676079)) (as set.empty (Set Context!16408))))))

(declare-fun b!7367712 () Bool)

(declare-fun call!676155 () (Set Context!16408))

(assert (=> b!7367712 (= e!4410963 call!676155)))

(declare-fun call!676153 () List!71760)

(declare-fun c!1369174 () Bool)

(declare-fun bm!676149 () Bool)

(declare-fun c!1369170 () Bool)

(assert (=> bm!676149 (= call!676153 ($colon$colon!3246 (exprs!8704 (ite (or c!1369099 c!1369097) (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (Context!16409 call!676079))) (ite (or c!1369170 c!1369174) (regTwo!39040 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370)))))))))

(declare-fun c!1369172 () Bool)

(declare-fun call!676154 () List!71760)

(declare-fun bm!676150 () Bool)

(assert (=> bm!676150 (= call!676157 (derivationStepZipperDown!3090 (ite c!1369172 (regOne!39041 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) (ite c!1369170 (regTwo!39040 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) (ite c!1369174 (regOne!39040 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) (reg!19593 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370)))))))) (ite (or c!1369172 c!1369170) (ite (or c!1369099 c!1369097) (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (Context!16409 call!676079)) (Context!16409 call!676154)) c!10362))))

(declare-fun c!1369171 () Bool)

(declare-fun b!7367713 () Bool)

(assert (=> b!7367713 (= c!1369171 (is-Star!19264 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370))))))))

(declare-fun e!4410962 () (Set Context!16408))

(assert (=> b!7367713 (= e!4410962 e!4410963)))

(declare-fun e!4410964 () Bool)

(declare-fun b!7367714 () Bool)

(assert (=> b!7367714 (= e!4410964 (nullable!8340 (regOne!39040 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370)))))))))

(declare-fun bm!676151 () Bool)

(assert (=> bm!676151 (= call!676156 (derivationStepZipperDown!3090 (ite c!1369172 (regTwo!39041 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) (regOne!39040 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370)))))) (ite c!1369172 (ite (or c!1369099 c!1369097) (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (Context!16409 call!676079)) (Context!16409 call!676153)) c!10362))))

(declare-fun b!7367715 () Bool)

(assert (=> b!7367715 (= e!4410962 call!676155)))

(declare-fun d!2283101 () Bool)

(declare-fun c!1369173 () Bool)

(assert (=> d!2283101 (= c!1369173 (and (is-ElementMatch!19264 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) (= (c!1369068 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) c!10362)))))

(assert (=> d!2283101 (= (derivationStepZipperDown!3090 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370)))) (ite (or c!1369099 c!1369097) (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (Context!16409 call!676079)) c!10362) e!4410961)))

(declare-fun b!7367716 () Bool)

(assert (=> b!7367716 (= e!4410961 e!4410959)))

(assert (=> b!7367716 (= c!1369172 (is-Union!19264 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370))))))))

(declare-fun b!7367717 () Bool)

(declare-fun e!4410960 () (Set Context!16408))

(assert (=> b!7367717 (= e!4410960 (set.union call!676156 call!676158))))

(declare-fun bm!676152 () Bool)

(assert (=> bm!676152 (= call!676155 call!676158)))

(declare-fun bm!676153 () Bool)

(assert (=> bm!676153 (= call!676154 call!676153)))

(declare-fun b!7367718 () Bool)

(assert (=> b!7367718 (= e!4410960 e!4410962)))

(assert (=> b!7367718 (= c!1369174 (is-Concat!28109 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370))))))))

(declare-fun b!7367719 () Bool)

(assert (=> b!7367719 (= c!1369170 e!4410964)))

(declare-fun res!2973362 () Bool)

(assert (=> b!7367719 (=> (not res!2973362) (not e!4410964))))

(assert (=> b!7367719 (= res!2973362 (is-Concat!28109 (ite c!1369099 (regOne!39041 r1!2370) (ite c!1369097 (regTwo!39040 r1!2370) (ite c!1369101 (regOne!39040 r1!2370) (reg!19593 r1!2370))))))))

(assert (=> b!7367719 (= e!4410959 e!4410960)))

(assert (= (and d!2283101 c!1369173) b!7367711))

(assert (= (and d!2283101 (not c!1369173)) b!7367716))

(assert (= (and b!7367716 c!1369172) b!7367710))

(assert (= (and b!7367716 (not c!1369172)) b!7367719))

(assert (= (and b!7367719 res!2973362) b!7367714))

(assert (= (and b!7367719 c!1369170) b!7367717))

(assert (= (and b!7367719 (not c!1369170)) b!7367718))

(assert (= (and b!7367718 c!1369174) b!7367715))

(assert (= (and b!7367718 (not c!1369174)) b!7367713))

(assert (= (and b!7367713 c!1369171) b!7367712))

(assert (= (and b!7367713 (not c!1369171)) b!7367709))

(assert (= (or b!7367715 b!7367712) bm!676153))

(assert (= (or b!7367715 b!7367712) bm!676152))

(assert (= (or b!7367717 bm!676152) bm!676148))

(assert (= (or b!7367717 bm!676153) bm!676149))

(assert (= (or b!7367710 b!7367717) bm!676151))

(assert (= (or b!7367710 bm!676148) bm!676150))

(declare-fun m!8022610 () Bool)

(assert (=> b!7367714 m!8022610))

(declare-fun m!8022612 () Bool)

(assert (=> b!7367711 m!8022612))

(declare-fun m!8022614 () Bool)

(assert (=> bm!676151 m!8022614))

(declare-fun m!8022616 () Bool)

(assert (=> bm!676150 m!8022616))

(declare-fun m!8022618 () Bool)

(assert (=> bm!676149 m!8022618))

(assert (=> bm!676075 d!2283101))

(declare-fun d!2283103 () Bool)

(assert (=> d!2283103 (= (nullable!8340 (regOne!39040 (regOne!39040 r1!2370))) (nullableFct!3329 (regOne!39040 (regOne!39040 r1!2370))))))

(declare-fun bs!1920663 () Bool)

(assert (= bs!1920663 d!2283103))

(declare-fun m!8022620 () Bool)

(assert (=> bs!1920663 m!8022620))

(assert (=> b!7367481 d!2283103))

(declare-fun d!2283105 () Bool)

(assert (=> d!2283105 (= ($colon$colon!3246 (exprs!8704 (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378)))) (ite (or c!1369097 c!1369101) (regTwo!39040 r1!2370) r1!2370)) (Cons!71636 (ite (or c!1369097 c!1369101) (regTwo!39040 r1!2370) r1!2370) (exprs!8704 (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))))))))

(assert (=> bm!676074 d!2283105))

(declare-fun d!2283107 () Bool)

(assert (=> d!2283107 (= (nullable!8340 (reg!19593 r1!2370)) (nullableFct!3329 (reg!19593 r1!2370)))))

(declare-fun bs!1920664 () Bool)

(assert (= bs!1920664 d!2283107))

(declare-fun m!8022622 () Bool)

(assert (=> bs!1920664 m!8022622))

(assert (=> b!7367421 d!2283107))

(declare-fun d!2283109 () Bool)

(declare-fun c!1369177 () Bool)

(assert (=> d!2283109 (= c!1369177 (is-Nil!71636 lt!2615068))))

(declare-fun e!4410967 () (Set Regex!19264))

(assert (=> d!2283109 (= (content!15145 lt!2615068) e!4410967)))

(declare-fun b!7367724 () Bool)

(assert (=> b!7367724 (= e!4410967 (as set.empty (Set Regex!19264)))))

(declare-fun b!7367725 () Bool)

(assert (=> b!7367725 (= e!4410967 (set.union (set.insert (h!78084 lt!2615068) (as set.empty (Set Regex!19264))) (content!15145 (t!386211 lt!2615068))))))

(assert (= (and d!2283109 c!1369177) b!7367724))

(assert (= (and d!2283109 (not c!1369177)) b!7367725))

(declare-fun m!8022624 () Bool)

(assert (=> b!7367725 m!8022624))

(declare-fun m!8022626 () Bool)

(assert (=> b!7367725 m!8022626))

(assert (=> d!2283031 d!2283109))

(declare-fun d!2283111 () Bool)

(declare-fun c!1369178 () Bool)

(assert (=> d!2283111 (= c!1369178 (is-Nil!71636 (exprs!8704 ct1!282)))))

(declare-fun e!4410968 () (Set Regex!19264))

(assert (=> d!2283111 (= (content!15145 (exprs!8704 ct1!282)) e!4410968)))

(declare-fun b!7367726 () Bool)

(assert (=> b!7367726 (= e!4410968 (as set.empty (Set Regex!19264)))))

(declare-fun b!7367727 () Bool)

(assert (=> b!7367727 (= e!4410968 (set.union (set.insert (h!78084 (exprs!8704 ct1!282)) (as set.empty (Set Regex!19264))) (content!15145 (t!386211 (exprs!8704 ct1!282)))))))

(assert (= (and d!2283111 c!1369178) b!7367726))

(assert (= (and d!2283111 (not c!1369178)) b!7367727))

(declare-fun m!8022628 () Bool)

(assert (=> b!7367727 m!8022628))

(assert (=> b!7367727 m!8022582))

(assert (=> d!2283031 d!2283111))

(declare-fun d!2283113 () Bool)

(declare-fun c!1369179 () Bool)

(assert (=> d!2283113 (= c!1369179 (is-Nil!71636 (exprs!8704 ct2!378)))))

(declare-fun e!4410969 () (Set Regex!19264))

(assert (=> d!2283113 (= (content!15145 (exprs!8704 ct2!378)) e!4410969)))

(declare-fun b!7367728 () Bool)

(assert (=> b!7367728 (= e!4410969 (as set.empty (Set Regex!19264)))))

(declare-fun b!7367729 () Bool)

(assert (=> b!7367729 (= e!4410969 (set.union (set.insert (h!78084 (exprs!8704 ct2!378)) (as set.empty (Set Regex!19264))) (content!15145 (t!386211 (exprs!8704 ct2!378)))))))

(assert (= (and d!2283113 c!1369179) b!7367728))

(assert (= (and d!2283113 (not c!1369179)) b!7367729))

(declare-fun m!8022630 () Bool)

(assert (=> b!7367729 m!8022630))

(declare-fun m!8022632 () Bool)

(assert (=> b!7367729 m!8022632))

(assert (=> d!2283031 d!2283113))

(declare-fun b!7367730 () Bool)

(declare-fun res!2973365 () Bool)

(declare-fun e!4410970 () Bool)

(assert (=> b!7367730 (=> (not res!2973365) (not e!4410970))))

(declare-fun call!676161 () Bool)

(assert (=> b!7367730 (= res!2973365 call!676161)))

(declare-fun e!4410975 () Bool)

(assert (=> b!7367730 (= e!4410975 e!4410970)))

(declare-fun b!7367731 () Bool)

(declare-fun e!4410971 () Bool)

(declare-fun e!4410972 () Bool)

(assert (=> b!7367731 (= e!4410971 e!4410972)))

(declare-fun res!2973363 () Bool)

(assert (=> b!7367731 (=> (not res!2973363) (not e!4410972))))

(declare-fun call!676160 () Bool)

(assert (=> b!7367731 (= res!2973363 call!676160)))

(declare-fun b!7367732 () Bool)

(assert (=> b!7367732 (= e!4410970 call!676160)))

(declare-fun b!7367733 () Bool)

(declare-fun e!4410974 () Bool)

(declare-fun call!676159 () Bool)

(assert (=> b!7367733 (= e!4410974 call!676159)))

(declare-fun b!7367734 () Bool)

(assert (=> b!7367734 (= e!4410972 call!676161)))

(declare-fun b!7367735 () Bool)

(declare-fun e!4410976 () Bool)

(assert (=> b!7367735 (= e!4410976 e!4410975)))

(declare-fun c!1369181 () Bool)

(assert (=> b!7367735 (= c!1369181 (is-Union!19264 (ite c!1369117 (reg!19593 (regTwo!39040 r1!2370)) (ite c!1369118 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))))))

(declare-fun b!7367736 () Bool)

(assert (=> b!7367736 (= e!4410976 e!4410974)))

(declare-fun res!2973366 () Bool)

(assert (=> b!7367736 (= res!2973366 (not (nullable!8340 (reg!19593 (ite c!1369117 (reg!19593 (regTwo!39040 r1!2370)) (ite c!1369118 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))))))))

(assert (=> b!7367736 (=> (not res!2973366) (not e!4410974))))

(declare-fun b!7367737 () Bool)

(declare-fun res!2973367 () Bool)

(assert (=> b!7367737 (=> res!2973367 e!4410971)))

(assert (=> b!7367737 (= res!2973367 (not (is-Concat!28109 (ite c!1369117 (reg!19593 (regTwo!39040 r1!2370)) (ite c!1369118 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))))))))

(assert (=> b!7367737 (= e!4410975 e!4410971)))

(declare-fun bm!676155 () Bool)

(assert (=> bm!676155 (= call!676161 (validRegex!9860 (ite c!1369181 (regOne!39041 (ite c!1369117 (reg!19593 (regTwo!39040 r1!2370)) (ite c!1369118 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))) (regTwo!39040 (ite c!1369117 (reg!19593 (regTwo!39040 r1!2370)) (ite c!1369118 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))))))))

(declare-fun b!7367738 () Bool)

(declare-fun e!4410973 () Bool)

(assert (=> b!7367738 (= e!4410973 e!4410976)))

(declare-fun c!1369180 () Bool)

(assert (=> b!7367738 (= c!1369180 (is-Star!19264 (ite c!1369117 (reg!19593 (regTwo!39040 r1!2370)) (ite c!1369118 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))))))

(declare-fun bm!676156 () Bool)

(assert (=> bm!676156 (= call!676160 call!676159)))

(declare-fun bm!676154 () Bool)

(assert (=> bm!676154 (= call!676159 (validRegex!9860 (ite c!1369180 (reg!19593 (ite c!1369117 (reg!19593 (regTwo!39040 r1!2370)) (ite c!1369118 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))) (ite c!1369181 (regTwo!39041 (ite c!1369117 (reg!19593 (regTwo!39040 r1!2370)) (ite c!1369118 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))) (regOne!39040 (ite c!1369117 (reg!19593 (regTwo!39040 r1!2370)) (ite c!1369118 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370)))))))))))

(declare-fun d!2283115 () Bool)

(declare-fun res!2973364 () Bool)

(assert (=> d!2283115 (=> res!2973364 e!4410973)))

(assert (=> d!2283115 (= res!2973364 (is-ElementMatch!19264 (ite c!1369117 (reg!19593 (regTwo!39040 r1!2370)) (ite c!1369118 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))))))

(assert (=> d!2283115 (= (validRegex!9860 (ite c!1369117 (reg!19593 (regTwo!39040 r1!2370)) (ite c!1369118 (regTwo!39041 (regTwo!39040 r1!2370)) (regOne!39040 (regTwo!39040 r1!2370))))) e!4410973)))

(assert (= (and d!2283115 (not res!2973364)) b!7367738))

(assert (= (and b!7367738 c!1369180) b!7367736))

(assert (= (and b!7367738 (not c!1369180)) b!7367735))

(assert (= (and b!7367736 res!2973366) b!7367733))

(assert (= (and b!7367735 c!1369181) b!7367730))

(assert (= (and b!7367735 (not c!1369181)) b!7367737))

(assert (= (and b!7367730 res!2973365) b!7367732))

(assert (= (and b!7367737 (not res!2973367)) b!7367731))

(assert (= (and b!7367731 res!2973363) b!7367734))

(assert (= (or b!7367730 b!7367734) bm!676155))

(assert (= (or b!7367732 b!7367731) bm!676156))

(assert (= (or b!7367733 bm!676156) bm!676154))

(declare-fun m!8022634 () Bool)

(assert (=> b!7367736 m!8022634))

(declare-fun m!8022636 () Bool)

(assert (=> bm!676155 m!8022636))

(declare-fun m!8022638 () Bool)

(assert (=> bm!676154 m!8022638))

(assert (=> bm!676094 d!2283115))

(declare-fun b!7367739 () Bool)

(declare-fun e!4410981 () (Set Context!16408))

(assert (=> b!7367739 (= e!4410981 (as set.empty (Set Context!16408)))))

(declare-fun bm!676157 () Bool)

(declare-fun call!676167 () (Set Context!16408))

(declare-fun call!676166 () (Set Context!16408))

(assert (=> bm!676157 (= call!676167 call!676166)))

(declare-fun b!7367740 () Bool)

(declare-fun e!4410977 () (Set Context!16408))

(declare-fun call!676165 () (Set Context!16408))

(assert (=> b!7367740 (= e!4410977 (set.union call!676166 call!676165))))

(declare-fun e!4410979 () (Set Context!16408))

(declare-fun b!7367741 () Bool)

(assert (=> b!7367741 (= e!4410979 (set.insert (ite c!1369099 (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (Context!16409 call!676078)) (as set.empty (Set Context!16408))))))

(declare-fun b!7367742 () Bool)

(declare-fun call!676164 () (Set Context!16408))

(assert (=> b!7367742 (= e!4410981 call!676164)))

(declare-fun c!1369186 () Bool)

(declare-fun c!1369182 () Bool)

(declare-fun call!676162 () List!71760)

(declare-fun bm!676158 () Bool)

(assert (=> bm!676158 (= call!676162 ($colon$colon!3246 (exprs!8704 (ite c!1369099 (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (Context!16409 call!676078))) (ite (or c!1369182 c!1369186) (regTwo!39040 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))))))

(declare-fun bm!676159 () Bool)

(declare-fun call!676163 () List!71760)

(declare-fun c!1369184 () Bool)

(assert (=> bm!676159 (= call!676166 (derivationStepZipperDown!3090 (ite c!1369184 (regOne!39041 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) (ite c!1369182 (regTwo!39040 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) (ite c!1369186 (regOne!39040 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) (reg!19593 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))))) (ite (or c!1369184 c!1369182) (ite c!1369099 (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (Context!16409 call!676078)) (Context!16409 call!676163)) c!10362))))

(declare-fun b!7367743 () Bool)

(declare-fun c!1369183 () Bool)

(assert (=> b!7367743 (= c!1369183 (is-Star!19264 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))))))

(declare-fun e!4410980 () (Set Context!16408))

(assert (=> b!7367743 (= e!4410980 e!4410981)))

(declare-fun b!7367744 () Bool)

(declare-fun e!4410982 () Bool)

(assert (=> b!7367744 (= e!4410982 (nullable!8340 (regOne!39040 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))))))

(declare-fun bm!676160 () Bool)

(assert (=> bm!676160 (= call!676165 (derivationStepZipperDown!3090 (ite c!1369184 (regTwo!39041 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) (regOne!39040 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))) (ite c!1369184 (ite c!1369099 (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (Context!16409 call!676078)) (Context!16409 call!676162)) c!10362))))

(declare-fun b!7367745 () Bool)

(assert (=> b!7367745 (= e!4410980 call!676164)))

(declare-fun d!2283117 () Bool)

(declare-fun c!1369185 () Bool)

(assert (=> d!2283117 (= c!1369185 (and (is-ElementMatch!19264 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) (= (c!1369068 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) c!10362)))))

(assert (=> d!2283117 (= (derivationStepZipperDown!3090 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)) (ite c!1369099 (Context!16409 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378))) (Context!16409 call!676078)) c!10362) e!4410979)))

(declare-fun b!7367746 () Bool)

(assert (=> b!7367746 (= e!4410979 e!4410977)))

(assert (=> b!7367746 (= c!1369184 (is-Union!19264 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))))))

(declare-fun b!7367747 () Bool)

(declare-fun e!4410978 () (Set Context!16408))

(assert (=> b!7367747 (= e!4410978 (set.union call!676165 call!676167))))

(declare-fun bm!676161 () Bool)

(assert (=> bm!676161 (= call!676164 call!676167)))

(declare-fun bm!676162 () Bool)

(assert (=> bm!676162 (= call!676163 call!676162)))

(declare-fun b!7367748 () Bool)

(assert (=> b!7367748 (= e!4410978 e!4410980)))

(assert (=> b!7367748 (= c!1369186 (is-Concat!28109 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))))))

(declare-fun b!7367749 () Bool)

(assert (=> b!7367749 (= c!1369182 e!4410982)))

(declare-fun res!2973368 () Bool)

(assert (=> b!7367749 (=> (not res!2973368) (not e!4410982))))

(assert (=> b!7367749 (= res!2973368 (is-Concat!28109 (ite c!1369099 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))))))

(assert (=> b!7367749 (= e!4410977 e!4410978)))

(assert (= (and d!2283117 c!1369185) b!7367741))

(assert (= (and d!2283117 (not c!1369185)) b!7367746))

(assert (= (and b!7367746 c!1369184) b!7367740))

(assert (= (and b!7367746 (not c!1369184)) b!7367749))

(assert (= (and b!7367749 res!2973368) b!7367744))

(assert (= (and b!7367749 c!1369182) b!7367747))

(assert (= (and b!7367749 (not c!1369182)) b!7367748))

(assert (= (and b!7367748 c!1369186) b!7367745))

(assert (= (and b!7367748 (not c!1369186)) b!7367743))

(assert (= (and b!7367743 c!1369183) b!7367742))

(assert (= (and b!7367743 (not c!1369183)) b!7367739))

(assert (= (or b!7367745 b!7367742) bm!676162))

(assert (= (or b!7367745 b!7367742) bm!676161))

(assert (= (or b!7367747 bm!676161) bm!676157))

(assert (= (or b!7367747 bm!676162) bm!676158))

(assert (= (or b!7367740 b!7367747) bm!676160))

(assert (= (or b!7367740 bm!676157) bm!676159))

(declare-fun m!8022640 () Bool)

(assert (=> b!7367744 m!8022640))

(declare-fun m!8022642 () Bool)

(assert (=> b!7367741 m!8022642))

(declare-fun m!8022644 () Bool)

(assert (=> bm!676160 m!8022644))

(declare-fun m!8022646 () Bool)

(assert (=> bm!676159 m!8022646))

(declare-fun m!8022648 () Bool)

(assert (=> bm!676158 m!8022648))

(assert (=> bm!676076 d!2283117))

(declare-fun b!7367750 () Bool)

(declare-fun e!4410987 () (Set Context!16408))

(assert (=> b!7367750 (= e!4410987 (as set.empty (Set Context!16408)))))

(declare-fun bm!676163 () Bool)

(declare-fun call!676173 () (Set Context!16408))

(declare-fun call!676172 () (Set Context!16408))

(assert (=> bm!676163 (= call!676173 call!676172)))

(declare-fun b!7367751 () Bool)

(declare-fun e!4410983 () (Set Context!16408))

(declare-fun call!676171 () (Set Context!16408))

(assert (=> b!7367751 (= e!4410983 (set.union call!676172 call!676171))))

(declare-fun e!4410985 () (Set Context!16408))

(declare-fun b!7367752 () Bool)

(assert (=> b!7367752 (= e!4410985 (set.insert (ite c!1369114 lt!2615049 (Context!16409 call!676093)) (as set.empty (Set Context!16408))))))

(declare-fun b!7367753 () Bool)

(declare-fun call!676170 () (Set Context!16408))

(assert (=> b!7367753 (= e!4410987 call!676170)))

(declare-fun bm!676164 () Bool)

(declare-fun c!1369187 () Bool)

(declare-fun call!676168 () List!71760)

(declare-fun c!1369191 () Bool)

(assert (=> bm!676164 (= call!676168 ($colon$colon!3246 (exprs!8704 (ite c!1369114 lt!2615049 (Context!16409 call!676093))) (ite (or c!1369187 c!1369191) (regTwo!39040 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370)))) (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370))))))))

(declare-fun bm!676165 () Bool)

(declare-fun call!676169 () List!71760)

(declare-fun c!1369189 () Bool)

(assert (=> bm!676165 (= call!676172 (derivationStepZipperDown!3090 (ite c!1369189 (regOne!39041 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370)))) (ite c!1369187 (regTwo!39040 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370)))) (ite c!1369191 (regOne!39040 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370)))) (reg!19593 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370))))))) (ite (or c!1369189 c!1369187) (ite c!1369114 lt!2615049 (Context!16409 call!676093)) (Context!16409 call!676169)) c!10362))))

(declare-fun b!7367754 () Bool)

(declare-fun c!1369188 () Bool)

(assert (=> b!7367754 (= c!1369188 (is-Star!19264 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370)))))))

(declare-fun e!4410986 () (Set Context!16408))

(assert (=> b!7367754 (= e!4410986 e!4410987)))

(declare-fun b!7367755 () Bool)

(declare-fun e!4410988 () Bool)

(assert (=> b!7367755 (= e!4410988 (nullable!8340 (regOne!39040 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370))))))))

(declare-fun bm!676166 () Bool)

(assert (=> bm!676166 (= call!676171 (derivationStepZipperDown!3090 (ite c!1369189 (regTwo!39041 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370)))) (regOne!39040 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370))))) (ite c!1369189 (ite c!1369114 lt!2615049 (Context!16409 call!676093)) (Context!16409 call!676168)) c!10362))))

(declare-fun b!7367756 () Bool)

(assert (=> b!7367756 (= e!4410986 call!676170)))

(declare-fun c!1369190 () Bool)

(declare-fun d!2283119 () Bool)

(assert (=> d!2283119 (= c!1369190 (and (is-ElementMatch!19264 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370)))) (= (c!1369068 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370)))) c!10362)))))

(assert (=> d!2283119 (= (derivationStepZipperDown!3090 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370))) (ite c!1369114 lt!2615049 (Context!16409 call!676093)) c!10362) e!4410985)))

(declare-fun b!7367757 () Bool)

(assert (=> b!7367757 (= e!4410985 e!4410983)))

(assert (=> b!7367757 (= c!1369189 (is-Union!19264 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370)))))))

(declare-fun b!7367758 () Bool)

(declare-fun e!4410984 () (Set Context!16408))

(assert (=> b!7367758 (= e!4410984 (set.union call!676171 call!676173))))

(declare-fun bm!676167 () Bool)

(assert (=> bm!676167 (= call!676170 call!676173)))

(declare-fun bm!676168 () Bool)

(assert (=> bm!676168 (= call!676169 call!676168)))

(declare-fun b!7367759 () Bool)

(assert (=> b!7367759 (= e!4410984 e!4410986)))

(assert (=> b!7367759 (= c!1369191 (is-Concat!28109 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370)))))))

(declare-fun b!7367760 () Bool)

(assert (=> b!7367760 (= c!1369187 e!4410988)))

(declare-fun res!2973369 () Bool)

(assert (=> b!7367760 (=> (not res!2973369) (not e!4410988))))

(assert (=> b!7367760 (= res!2973369 (is-Concat!28109 (ite c!1369114 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370)))))))

(assert (=> b!7367760 (= e!4410983 e!4410984)))

(assert (= (and d!2283119 c!1369190) b!7367752))

(assert (= (and d!2283119 (not c!1369190)) b!7367757))

(assert (= (and b!7367757 c!1369189) b!7367751))

(assert (= (and b!7367757 (not c!1369189)) b!7367760))

(assert (= (and b!7367760 res!2973369) b!7367755))

(assert (= (and b!7367760 c!1369187) b!7367758))

(assert (= (and b!7367760 (not c!1369187)) b!7367759))

(assert (= (and b!7367759 c!1369191) b!7367756))

(assert (= (and b!7367759 (not c!1369191)) b!7367754))

(assert (= (and b!7367754 c!1369188) b!7367753))

(assert (= (and b!7367754 (not c!1369188)) b!7367750))

(assert (= (or b!7367756 b!7367753) bm!676168))

(assert (= (or b!7367756 b!7367753) bm!676167))

(assert (= (or b!7367758 bm!676167) bm!676163))

(assert (= (or b!7367758 bm!676168) bm!676164))

(assert (= (or b!7367751 b!7367758) bm!676166))

(assert (= (or b!7367751 bm!676163) bm!676165))

(declare-fun m!8022650 () Bool)

(assert (=> b!7367755 m!8022650))

(declare-fun m!8022652 () Bool)

(assert (=> b!7367752 m!8022652))

(declare-fun m!8022654 () Bool)

(assert (=> bm!676166 m!8022654))

(declare-fun m!8022656 () Bool)

(assert (=> bm!676165 m!8022656))

(declare-fun m!8022658 () Bool)

(assert (=> bm!676164 m!8022658))

(assert (=> bm!676091 d!2283119))

(declare-fun b!7367761 () Bool)

(declare-fun res!2973372 () Bool)

(declare-fun e!4410989 () Bool)

(assert (=> b!7367761 (=> (not res!2973372) (not e!4410989))))

(declare-fun call!676176 () Bool)

(assert (=> b!7367761 (= res!2973372 call!676176)))

(declare-fun e!4410994 () Bool)

(assert (=> b!7367761 (= e!4410994 e!4410989)))

(declare-fun b!7367762 () Bool)

(declare-fun e!4410990 () Bool)

(declare-fun e!4410991 () Bool)

(assert (=> b!7367762 (= e!4410990 e!4410991)))

(declare-fun res!2973370 () Bool)

(assert (=> b!7367762 (=> (not res!2973370) (not e!4410991))))

(declare-fun call!676175 () Bool)

(assert (=> b!7367762 (= res!2973370 call!676175)))

(declare-fun b!7367763 () Bool)

(assert (=> b!7367763 (= e!4410989 call!676175)))

(declare-fun b!7367764 () Bool)

(declare-fun e!4410993 () Bool)

(declare-fun call!676174 () Bool)

(assert (=> b!7367764 (= e!4410993 call!676174)))

(declare-fun b!7367765 () Bool)

(assert (=> b!7367765 (= e!4410991 call!676176)))

(declare-fun b!7367766 () Bool)

(declare-fun e!4410995 () Bool)

(assert (=> b!7367766 (= e!4410995 e!4410994)))

(declare-fun c!1369193 () Bool)

(assert (=> b!7367766 (= c!1369193 (is-Union!19264 (ite c!1369094 (regOne!39041 r1!2370) (regTwo!39040 r1!2370))))))

(declare-fun b!7367767 () Bool)

(assert (=> b!7367767 (= e!4410995 e!4410993)))

(declare-fun res!2973373 () Bool)

(assert (=> b!7367767 (= res!2973373 (not (nullable!8340 (reg!19593 (ite c!1369094 (regOne!39041 r1!2370) (regTwo!39040 r1!2370))))))))

(assert (=> b!7367767 (=> (not res!2973373) (not e!4410993))))

(declare-fun b!7367768 () Bool)

(declare-fun res!2973374 () Bool)

(assert (=> b!7367768 (=> res!2973374 e!4410990)))

(assert (=> b!7367768 (= res!2973374 (not (is-Concat!28109 (ite c!1369094 (regOne!39041 r1!2370) (regTwo!39040 r1!2370)))))))

(assert (=> b!7367768 (= e!4410994 e!4410990)))

(declare-fun bm!676170 () Bool)

(assert (=> bm!676170 (= call!676176 (validRegex!9860 (ite c!1369193 (regOne!39041 (ite c!1369094 (regOne!39041 r1!2370) (regTwo!39040 r1!2370))) (regTwo!39040 (ite c!1369094 (regOne!39041 r1!2370) (regTwo!39040 r1!2370))))))))

(declare-fun b!7367769 () Bool)

(declare-fun e!4410992 () Bool)

(assert (=> b!7367769 (= e!4410992 e!4410995)))

(declare-fun c!1369192 () Bool)

(assert (=> b!7367769 (= c!1369192 (is-Star!19264 (ite c!1369094 (regOne!39041 r1!2370) (regTwo!39040 r1!2370))))))

(declare-fun bm!676171 () Bool)

(assert (=> bm!676171 (= call!676175 call!676174)))

(declare-fun bm!676169 () Bool)

(assert (=> bm!676169 (= call!676174 (validRegex!9860 (ite c!1369192 (reg!19593 (ite c!1369094 (regOne!39041 r1!2370) (regTwo!39040 r1!2370))) (ite c!1369193 (regTwo!39041 (ite c!1369094 (regOne!39041 r1!2370) (regTwo!39040 r1!2370))) (regOne!39040 (ite c!1369094 (regOne!39041 r1!2370) (regTwo!39040 r1!2370)))))))))

(declare-fun d!2283121 () Bool)

(declare-fun res!2973371 () Bool)

(assert (=> d!2283121 (=> res!2973371 e!4410992)))

(assert (=> d!2283121 (= res!2973371 (is-ElementMatch!19264 (ite c!1369094 (regOne!39041 r1!2370) (regTwo!39040 r1!2370))))))

(assert (=> d!2283121 (= (validRegex!9860 (ite c!1369094 (regOne!39041 r1!2370) (regTwo!39040 r1!2370))) e!4410992)))

(assert (= (and d!2283121 (not res!2973371)) b!7367769))

(assert (= (and b!7367769 c!1369192) b!7367767))

(assert (= (and b!7367769 (not c!1369192)) b!7367766))

(assert (= (and b!7367767 res!2973373) b!7367764))

(assert (= (and b!7367766 c!1369193) b!7367761))

(assert (= (and b!7367766 (not c!1369193)) b!7367768))

(assert (= (and b!7367761 res!2973372) b!7367763))

(assert (= (and b!7367768 (not res!2973374)) b!7367762))

(assert (= (and b!7367762 res!2973370) b!7367765))

(assert (= (or b!7367761 b!7367765) bm!676170))

(assert (= (or b!7367763 b!7367762) bm!676171))

(assert (= (or b!7367764 bm!676171) bm!676169))

(declare-fun m!8022660 () Bool)

(assert (=> b!7367767 m!8022660))

(declare-fun m!8022662 () Bool)

(assert (=> bm!676170 m!8022662))

(declare-fun m!8022664 () Bool)

(assert (=> bm!676169 m!8022664))

(assert (=> bm!676068 d!2283121))

(assert (=> b!7367438 d!2283017))

(declare-fun b!7367770 () Bool)

(declare-fun e!4411000 () (Set Context!16408))

(assert (=> b!7367770 (= e!4411000 (as set.empty (Set Context!16408)))))

(declare-fun bm!676172 () Bool)

(declare-fun call!676182 () (Set Context!16408))

(declare-fun call!676181 () (Set Context!16408))

(assert (=> bm!676172 (= call!676182 call!676181)))

(declare-fun b!7367771 () Bool)

(declare-fun e!4410996 () (Set Context!16408))

(declare-fun call!676180 () (Set Context!16408))

(assert (=> b!7367771 (= e!4410996 (set.union call!676181 call!676180))))

(declare-fun e!4410998 () (Set Context!16408))

(declare-fun b!7367772 () Bool)

(assert (=> b!7367772 (= e!4410998 (set.insert (ite (or c!1369082 c!1369080) ct1!282 (Context!16409 call!676055)) (as set.empty (Set Context!16408))))))

(declare-fun b!7367773 () Bool)

(declare-fun call!676179 () (Set Context!16408))

(assert (=> b!7367773 (= e!4411000 call!676179)))

(declare-fun bm!676173 () Bool)

(declare-fun c!1369194 () Bool)

(declare-fun call!676177 () List!71760)

(declare-fun c!1369198 () Bool)

(assert (=> bm!676173 (= call!676177 ($colon$colon!3246 (exprs!8704 (ite (or c!1369082 c!1369080) ct1!282 (Context!16409 call!676055))) (ite (or c!1369194 c!1369198) (regTwo!39040 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370)))))))))

(declare-fun call!676178 () List!71760)

(declare-fun c!1369196 () Bool)

(declare-fun bm!676174 () Bool)

(assert (=> bm!676174 (= call!676181 (derivationStepZipperDown!3090 (ite c!1369196 (regOne!39041 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) (ite c!1369194 (regTwo!39040 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) (ite c!1369198 (regOne!39040 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) (reg!19593 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370)))))))) (ite (or c!1369196 c!1369194) (ite (or c!1369082 c!1369080) ct1!282 (Context!16409 call!676055)) (Context!16409 call!676178)) c!10362))))

(declare-fun b!7367774 () Bool)

(declare-fun c!1369195 () Bool)

(assert (=> b!7367774 (= c!1369195 (is-Star!19264 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370))))))))

(declare-fun e!4410999 () (Set Context!16408))

(assert (=> b!7367774 (= e!4410999 e!4411000)))

(declare-fun e!4411001 () Bool)

(declare-fun b!7367775 () Bool)

(assert (=> b!7367775 (= e!4411001 (nullable!8340 (regOne!39040 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370)))))))))

(declare-fun bm!676175 () Bool)

(assert (=> bm!676175 (= call!676180 (derivationStepZipperDown!3090 (ite c!1369196 (regTwo!39041 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) (regOne!39040 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370)))))) (ite c!1369196 (ite (or c!1369082 c!1369080) ct1!282 (Context!16409 call!676055)) (Context!16409 call!676177)) c!10362))))

(declare-fun b!7367776 () Bool)

(assert (=> b!7367776 (= e!4410999 call!676179)))

(declare-fun d!2283123 () Bool)

(declare-fun c!1369197 () Bool)

(assert (=> d!2283123 (= c!1369197 (and (is-ElementMatch!19264 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) (= (c!1369068 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370))))) c!10362)))))

(assert (=> d!2283123 (= (derivationStepZipperDown!3090 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370)))) (ite (or c!1369082 c!1369080) ct1!282 (Context!16409 call!676055)) c!10362) e!4410998)))

(declare-fun b!7367777 () Bool)

(assert (=> b!7367777 (= e!4410998 e!4410996)))

(assert (=> b!7367777 (= c!1369196 (is-Union!19264 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370))))))))

(declare-fun b!7367778 () Bool)

(declare-fun e!4410997 () (Set Context!16408))

(assert (=> b!7367778 (= e!4410997 (set.union call!676180 call!676182))))

(declare-fun bm!676176 () Bool)

(assert (=> bm!676176 (= call!676179 call!676182)))

(declare-fun bm!676177 () Bool)

(assert (=> bm!676177 (= call!676178 call!676177)))

(declare-fun b!7367779 () Bool)

(assert (=> b!7367779 (= e!4410997 e!4410999)))

(assert (=> b!7367779 (= c!1369198 (is-Concat!28109 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370))))))))

(declare-fun b!7367780 () Bool)

(assert (=> b!7367780 (= c!1369194 e!4411001)))

(declare-fun res!2973375 () Bool)

(assert (=> b!7367780 (=> (not res!2973375) (not e!4411001))))

(assert (=> b!7367780 (= res!2973375 (is-Concat!28109 (ite c!1369082 (regOne!39041 r1!2370) (ite c!1369080 (regTwo!39040 r1!2370) (ite c!1369084 (regOne!39040 r1!2370) (reg!19593 r1!2370))))))))

(assert (=> b!7367780 (= e!4410996 e!4410997)))

(assert (= (and d!2283123 c!1369197) b!7367772))

(assert (= (and d!2283123 (not c!1369197)) b!7367777))

(assert (= (and b!7367777 c!1369196) b!7367771))

(assert (= (and b!7367777 (not c!1369196)) b!7367780))

(assert (= (and b!7367780 res!2973375) b!7367775))

(assert (= (and b!7367780 c!1369194) b!7367778))

(assert (= (and b!7367780 (not c!1369194)) b!7367779))

(assert (= (and b!7367779 c!1369198) b!7367776))

(assert (= (and b!7367779 (not c!1369198)) b!7367774))

(assert (= (and b!7367774 c!1369195) b!7367773))

(assert (= (and b!7367774 (not c!1369195)) b!7367770))

(assert (= (or b!7367776 b!7367773) bm!676177))

(assert (= (or b!7367776 b!7367773) bm!676176))

(assert (= (or b!7367778 bm!676176) bm!676172))

(assert (= (or b!7367778 bm!676177) bm!676173))

(assert (= (or b!7367771 b!7367778) bm!676175))

(assert (= (or b!7367771 bm!676172) bm!676174))

(declare-fun m!8022666 () Bool)

(assert (=> b!7367775 m!8022666))

(declare-fun m!8022668 () Bool)

(assert (=> b!7367772 m!8022668))

(declare-fun m!8022670 () Bool)

(assert (=> bm!676175 m!8022670))

(declare-fun m!8022672 () Bool)

(assert (=> bm!676174 m!8022672))

(declare-fun m!8022674 () Bool)

(assert (=> bm!676173 m!8022674))

(assert (=> bm!676051 d!2283123))

(declare-fun b!7367781 () Bool)

(declare-fun res!2973378 () Bool)

(declare-fun e!4411002 () Bool)

(assert (=> b!7367781 (=> (not res!2973378) (not e!4411002))))

(declare-fun call!676185 () Bool)

(assert (=> b!7367781 (= res!2973378 call!676185)))

(declare-fun e!4411007 () Bool)

(assert (=> b!7367781 (= e!4411007 e!4411002)))

(declare-fun b!7367782 () Bool)

(declare-fun e!4411003 () Bool)

(declare-fun e!4411004 () Bool)

(assert (=> b!7367782 (= e!4411003 e!4411004)))

(declare-fun res!2973376 () Bool)

(assert (=> b!7367782 (=> (not res!2973376) (not e!4411004))))

(declare-fun call!676184 () Bool)

(assert (=> b!7367782 (= res!2973376 call!676184)))

(declare-fun b!7367783 () Bool)

(assert (=> b!7367783 (= e!4411002 call!676184)))

(declare-fun b!7367784 () Bool)

(declare-fun e!4411006 () Bool)

(declare-fun call!676183 () Bool)

(assert (=> b!7367784 (= e!4411006 call!676183)))

(declare-fun b!7367785 () Bool)

(assert (=> b!7367785 (= e!4411004 call!676185)))

(declare-fun b!7367786 () Bool)

(declare-fun e!4411008 () Bool)

(assert (=> b!7367786 (= e!4411008 e!4411007)))

(declare-fun c!1369200 () Bool)

(assert (=> b!7367786 (= c!1369200 (is-Union!19264 (ite c!1369093 (reg!19593 r1!2370) (ite c!1369094 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))))))

(declare-fun b!7367787 () Bool)

(assert (=> b!7367787 (= e!4411008 e!4411006)))

(declare-fun res!2973379 () Bool)

(assert (=> b!7367787 (= res!2973379 (not (nullable!8340 (reg!19593 (ite c!1369093 (reg!19593 r1!2370) (ite c!1369094 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))))))))

(assert (=> b!7367787 (=> (not res!2973379) (not e!4411006))))

(declare-fun b!7367788 () Bool)

(declare-fun res!2973380 () Bool)

(assert (=> b!7367788 (=> res!2973380 e!4411003)))

(assert (=> b!7367788 (= res!2973380 (not (is-Concat!28109 (ite c!1369093 (reg!19593 r1!2370) (ite c!1369094 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))))))))

(assert (=> b!7367788 (= e!4411007 e!4411003)))

(declare-fun bm!676179 () Bool)

(assert (=> bm!676179 (= call!676185 (validRegex!9860 (ite c!1369200 (regOne!39041 (ite c!1369093 (reg!19593 r1!2370) (ite c!1369094 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))) (regTwo!39040 (ite c!1369093 (reg!19593 r1!2370) (ite c!1369094 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))))))))

(declare-fun b!7367789 () Bool)

(declare-fun e!4411005 () Bool)

(assert (=> b!7367789 (= e!4411005 e!4411008)))

(declare-fun c!1369199 () Bool)

(assert (=> b!7367789 (= c!1369199 (is-Star!19264 (ite c!1369093 (reg!19593 r1!2370) (ite c!1369094 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))))))

(declare-fun bm!676180 () Bool)

(assert (=> bm!676180 (= call!676184 call!676183)))

(declare-fun bm!676178 () Bool)

(assert (=> bm!676178 (= call!676183 (validRegex!9860 (ite c!1369199 (reg!19593 (ite c!1369093 (reg!19593 r1!2370) (ite c!1369094 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))) (ite c!1369200 (regTwo!39041 (ite c!1369093 (reg!19593 r1!2370) (ite c!1369094 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))) (regOne!39040 (ite c!1369093 (reg!19593 r1!2370) (ite c!1369094 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))))))))))

(declare-fun d!2283125 () Bool)

(declare-fun res!2973377 () Bool)

(assert (=> d!2283125 (=> res!2973377 e!4411005)))

(assert (=> d!2283125 (= res!2973377 (is-ElementMatch!19264 (ite c!1369093 (reg!19593 r1!2370) (ite c!1369094 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))))))

(assert (=> d!2283125 (= (validRegex!9860 (ite c!1369093 (reg!19593 r1!2370) (ite c!1369094 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))) e!4411005)))

(assert (= (and d!2283125 (not res!2973377)) b!7367789))

(assert (= (and b!7367789 c!1369199) b!7367787))

(assert (= (and b!7367789 (not c!1369199)) b!7367786))

(assert (= (and b!7367787 res!2973379) b!7367784))

(assert (= (and b!7367786 c!1369200) b!7367781))

(assert (= (and b!7367786 (not c!1369200)) b!7367788))

(assert (= (and b!7367781 res!2973378) b!7367783))

(assert (= (and b!7367788 (not res!2973380)) b!7367782))

(assert (= (and b!7367782 res!2973376) b!7367785))

(assert (= (or b!7367781 b!7367785) bm!676179))

(assert (= (or b!7367783 b!7367782) bm!676180))

(assert (= (or b!7367784 bm!676180) bm!676178))

(declare-fun m!8022676 () Bool)

(assert (=> b!7367787 m!8022676))

(declare-fun m!8022678 () Bool)

(assert (=> bm!676179 m!8022678))

(declare-fun m!8022680 () Bool)

(assert (=> bm!676178 m!8022680))

(assert (=> bm!676067 d!2283125))

(declare-fun d!2283127 () Bool)

(assert (=> d!2283127 (= ($colon$colon!3246 (exprs!8704 ct1!282) (ite (or c!1369080 c!1369084) (regTwo!39040 r1!2370) r1!2370)) (Cons!71636 (ite (or c!1369080 c!1369084) (regTwo!39040 r1!2370) r1!2370) (exprs!8704 ct1!282)))))

(assert (=> bm!676050 d!2283127))

(declare-fun b!7367804 () Bool)

(declare-fun e!4411024 () Bool)

(declare-fun call!676190 () Bool)

(assert (=> b!7367804 (= e!4411024 call!676190)))

(declare-fun b!7367805 () Bool)

(declare-fun e!4411025 () Bool)

(declare-fun call!676191 () Bool)

(assert (=> b!7367805 (= e!4411025 call!676191)))

(declare-fun d!2283129 () Bool)

(declare-fun res!2973391 () Bool)

(declare-fun e!4411021 () Bool)

(assert (=> d!2283129 (=> res!2973391 e!4411021)))

(assert (=> d!2283129 (= res!2973391 (is-EmptyExpr!19264 (regOne!39040 r1!2370)))))

(assert (=> d!2283129 (= (nullableFct!3329 (regOne!39040 r1!2370)) e!4411021)))

(declare-fun b!7367806 () Bool)

(declare-fun e!4411026 () Bool)

(assert (=> b!7367806 (= e!4411021 e!4411026)))

(declare-fun res!2973392 () Bool)

(assert (=> b!7367806 (=> (not res!2973392) (not e!4411026))))

(assert (=> b!7367806 (= res!2973392 (and (not (is-EmptyLang!19264 (regOne!39040 r1!2370))) (not (is-ElementMatch!19264 (regOne!39040 r1!2370)))))))

(declare-fun b!7367807 () Bool)

(declare-fun e!4411023 () Bool)

(assert (=> b!7367807 (= e!4411023 e!4411024)))

(declare-fun res!2973395 () Bool)

(assert (=> b!7367807 (= res!2973395 call!676191)))

(assert (=> b!7367807 (=> res!2973395 e!4411024)))

(declare-fun bm!676185 () Bool)

(declare-fun c!1369203 () Bool)

(assert (=> bm!676185 (= call!676191 (nullable!8340 (ite c!1369203 (regOne!39041 (regOne!39040 r1!2370)) (regTwo!39040 (regOne!39040 r1!2370)))))))

(declare-fun b!7367808 () Bool)

(declare-fun e!4411022 () Bool)

(assert (=> b!7367808 (= e!4411022 e!4411023)))

(assert (=> b!7367808 (= c!1369203 (is-Union!19264 (regOne!39040 r1!2370)))))

(declare-fun b!7367809 () Bool)

(assert (=> b!7367809 (= e!4411026 e!4411022)))

(declare-fun res!2973393 () Bool)

(assert (=> b!7367809 (=> res!2973393 e!4411022)))

(assert (=> b!7367809 (= res!2973393 (is-Star!19264 (regOne!39040 r1!2370)))))

(declare-fun b!7367810 () Bool)

(assert (=> b!7367810 (= e!4411023 e!4411025)))

(declare-fun res!2973394 () Bool)

(assert (=> b!7367810 (= res!2973394 call!676190)))

(assert (=> b!7367810 (=> (not res!2973394) (not e!4411025))))

(declare-fun bm!676186 () Bool)

(assert (=> bm!676186 (= call!676190 (nullable!8340 (ite c!1369203 (regTwo!39041 (regOne!39040 r1!2370)) (regOne!39040 (regOne!39040 r1!2370)))))))

(assert (= (and d!2283129 (not res!2973391)) b!7367806))

(assert (= (and b!7367806 res!2973392) b!7367809))

(assert (= (and b!7367809 (not res!2973393)) b!7367808))

(assert (= (and b!7367808 c!1369203) b!7367807))

(assert (= (and b!7367808 (not c!1369203)) b!7367810))

(assert (= (and b!7367807 (not res!2973395)) b!7367804))

(assert (= (and b!7367810 res!2973394) b!7367805))

(assert (= (or b!7367804 b!7367810) bm!676186))

(assert (= (or b!7367807 b!7367805) bm!676185))

(declare-fun m!8022682 () Bool)

(assert (=> bm!676185 m!8022682))

(declare-fun m!8022684 () Bool)

(assert (=> bm!676186 m!8022684))

(assert (=> d!2283017 d!2283129))

(declare-fun d!2283131 () Bool)

(assert (=> d!2283131 (= ($colon$colon!3246 (exprs!8704 lt!2615049) (ite (or c!1369112 c!1369116) (regTwo!39040 (regOne!39040 r1!2370)) (regOne!39040 r1!2370))) (Cons!71636 (ite (or c!1369112 c!1369116) (regTwo!39040 (regOne!39040 r1!2370)) (regOne!39040 r1!2370)) (exprs!8704 lt!2615049)))))

(assert (=> bm!676089 d!2283131))

(assert (=> b!7367373 d!2283017))

(declare-fun b!7367811 () Bool)

(declare-fun e!4411031 () (Set Context!16408))

(assert (=> b!7367811 (= e!4411031 (as set.empty (Set Context!16408)))))

(declare-fun bm!676187 () Bool)

(declare-fun call!676197 () (Set Context!16408))

(declare-fun call!676196 () (Set Context!16408))

(assert (=> bm!676187 (= call!676197 call!676196)))

(declare-fun b!7367812 () Bool)

(declare-fun e!4411027 () (Set Context!16408))

(declare-fun call!676195 () (Set Context!16408))

(assert (=> b!7367812 (= e!4411027 (set.union call!676196 call!676195))))

(declare-fun b!7367813 () Bool)

(declare-fun e!4411029 () (Set Context!16408))

(assert (=> b!7367813 (= e!4411029 (set.insert (ite c!1369082 ct1!282 (Context!16409 call!676054)) (as set.empty (Set Context!16408))))))

(declare-fun b!7367814 () Bool)

(declare-fun call!676194 () (Set Context!16408))

(assert (=> b!7367814 (= e!4411031 call!676194)))

(declare-fun c!1369208 () Bool)

(declare-fun c!1369204 () Bool)

(declare-fun call!676192 () List!71760)

(declare-fun bm!676188 () Bool)

(assert (=> bm!676188 (= call!676192 ($colon$colon!3246 (exprs!8704 (ite c!1369082 ct1!282 (Context!16409 call!676054))) (ite (or c!1369204 c!1369208) (regTwo!39040 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))))))

(declare-fun c!1369206 () Bool)

(declare-fun bm!676189 () Bool)

(declare-fun call!676193 () List!71760)

(assert (=> bm!676189 (= call!676196 (derivationStepZipperDown!3090 (ite c!1369206 (regOne!39041 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) (ite c!1369204 (regTwo!39040 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) (ite c!1369208 (regOne!39040 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) (reg!19593 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))))) (ite (or c!1369206 c!1369204) (ite c!1369082 ct1!282 (Context!16409 call!676054)) (Context!16409 call!676193)) c!10362))))

(declare-fun b!7367815 () Bool)

(declare-fun c!1369205 () Bool)

(assert (=> b!7367815 (= c!1369205 (is-Star!19264 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))))))

(declare-fun e!4411030 () (Set Context!16408))

(assert (=> b!7367815 (= e!4411030 e!4411031)))

(declare-fun b!7367816 () Bool)

(declare-fun e!4411032 () Bool)

(assert (=> b!7367816 (= e!4411032 (nullable!8340 (regOne!39040 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))))))

(declare-fun bm!676190 () Bool)

(assert (=> bm!676190 (= call!676195 (derivationStepZipperDown!3090 (ite c!1369206 (regTwo!39041 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) (regOne!39040 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)))) (ite c!1369206 (ite c!1369082 ct1!282 (Context!16409 call!676054)) (Context!16409 call!676192)) c!10362))))

(declare-fun b!7367817 () Bool)

(assert (=> b!7367817 (= e!4411030 call!676194)))

(declare-fun c!1369207 () Bool)

(declare-fun d!2283133 () Bool)

(assert (=> d!2283133 (= c!1369207 (and (is-ElementMatch!19264 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) (= (c!1369068 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))) c!10362)))))

(assert (=> d!2283133 (= (derivationStepZipperDown!3090 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370)) (ite c!1369082 ct1!282 (Context!16409 call!676054)) c!10362) e!4411029)))

(declare-fun b!7367818 () Bool)

(assert (=> b!7367818 (= e!4411029 e!4411027)))

(assert (=> b!7367818 (= c!1369206 (is-Union!19264 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))))))

(declare-fun b!7367819 () Bool)

(declare-fun e!4411028 () (Set Context!16408))

(assert (=> b!7367819 (= e!4411028 (set.union call!676195 call!676197))))

(declare-fun bm!676191 () Bool)

(assert (=> bm!676191 (= call!676194 call!676197)))

(declare-fun bm!676192 () Bool)

(assert (=> bm!676192 (= call!676193 call!676192)))

(declare-fun b!7367820 () Bool)

(assert (=> b!7367820 (= e!4411028 e!4411030)))

(assert (=> b!7367820 (= c!1369208 (is-Concat!28109 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))))))

(declare-fun b!7367821 () Bool)

(assert (=> b!7367821 (= c!1369204 e!4411032)))

(declare-fun res!2973396 () Bool)

(assert (=> b!7367821 (=> (not res!2973396) (not e!4411032))))

(assert (=> b!7367821 (= res!2973396 (is-Concat!28109 (ite c!1369082 (regTwo!39041 r1!2370) (regOne!39040 r1!2370))))))

(assert (=> b!7367821 (= e!4411027 e!4411028)))

(assert (= (and d!2283133 c!1369207) b!7367813))

(assert (= (and d!2283133 (not c!1369207)) b!7367818))

(assert (= (and b!7367818 c!1369206) b!7367812))

(assert (= (and b!7367818 (not c!1369206)) b!7367821))

(assert (= (and b!7367821 res!2973396) b!7367816))

(assert (= (and b!7367821 c!1369204) b!7367819))

(assert (= (and b!7367821 (not c!1369204)) b!7367820))

(assert (= (and b!7367820 c!1369208) b!7367817))

(assert (= (and b!7367820 (not c!1369208)) b!7367815))

(assert (= (and b!7367815 c!1369205) b!7367814))

(assert (= (and b!7367815 (not c!1369205)) b!7367811))

(assert (= (or b!7367817 b!7367814) bm!676192))

(assert (= (or b!7367817 b!7367814) bm!676191))

(assert (= (or b!7367819 bm!676191) bm!676187))

(assert (= (or b!7367819 bm!676192) bm!676188))

(assert (= (or b!7367812 b!7367819) bm!676190))

(assert (= (or b!7367812 bm!676187) bm!676189))

(declare-fun m!8022686 () Bool)

(assert (=> b!7367816 m!8022686))

(declare-fun m!8022688 () Bool)

(assert (=> b!7367813 m!8022688))

(declare-fun m!8022690 () Bool)

(assert (=> bm!676190 m!8022690))

(declare-fun m!8022692 () Bool)

(assert (=> bm!676189 m!8022692))

(declare-fun m!8022694 () Bool)

(assert (=> bm!676188 m!8022694))

(assert (=> bm!676052 d!2283133))

(declare-fun b!7367822 () Bool)

(declare-fun e!4411037 () (Set Context!16408))

(assert (=> b!7367822 (= e!4411037 (as set.empty (Set Context!16408)))))

(declare-fun bm!676193 () Bool)

(declare-fun call!676203 () (Set Context!16408))

(declare-fun call!676202 () (Set Context!16408))

(assert (=> bm!676193 (= call!676203 call!676202)))

(declare-fun b!7367823 () Bool)

(declare-fun e!4411033 () (Set Context!16408))

(declare-fun call!676201 () (Set Context!16408))

(assert (=> b!7367823 (= e!4411033 (set.union call!676202 call!676201))))

(declare-fun b!7367824 () Bool)

(declare-fun e!4411035 () (Set Context!16408))

(assert (=> b!7367824 (= e!4411035 (set.insert (ite (or c!1369114 c!1369112) lt!2615049 (Context!16409 call!676094)) (as set.empty (Set Context!16408))))))

(declare-fun b!7367825 () Bool)

(declare-fun call!676200 () (Set Context!16408))

(assert (=> b!7367825 (= e!4411037 call!676200)))

(declare-fun call!676198 () List!71760)

(declare-fun c!1369209 () Bool)

(declare-fun bm!676194 () Bool)

(declare-fun c!1369213 () Bool)

(assert (=> bm!676194 (= call!676198 ($colon$colon!3246 (exprs!8704 (ite (or c!1369114 c!1369112) lt!2615049 (Context!16409 call!676094))) (ite (or c!1369209 c!1369213) (regTwo!39040 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370)))))) (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370))))))))))

(declare-fun call!676199 () List!71760)

(declare-fun bm!676195 () Bool)

(declare-fun c!1369211 () Bool)

(assert (=> bm!676195 (= call!676202 (derivationStepZipperDown!3090 (ite c!1369211 (regOne!39041 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370)))))) (ite c!1369209 (regTwo!39040 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370)))))) (ite c!1369213 (regOne!39040 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370)))))) (reg!19593 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370))))))))) (ite (or c!1369211 c!1369209) (ite (or c!1369114 c!1369112) lt!2615049 (Context!16409 call!676094)) (Context!16409 call!676199)) c!10362))))

(declare-fun c!1369210 () Bool)

(declare-fun b!7367826 () Bool)

(assert (=> b!7367826 (= c!1369210 (is-Star!19264 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370)))))))))

(declare-fun e!4411036 () (Set Context!16408))

(assert (=> b!7367826 (= e!4411036 e!4411037)))

(declare-fun b!7367827 () Bool)

(declare-fun e!4411038 () Bool)

(assert (=> b!7367827 (= e!4411038 (nullable!8340 (regOne!39040 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370))))))))))

(declare-fun bm!676196 () Bool)

(assert (=> bm!676196 (= call!676201 (derivationStepZipperDown!3090 (ite c!1369211 (regTwo!39041 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370)))))) (regOne!39040 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370))))))) (ite c!1369211 (ite (or c!1369114 c!1369112) lt!2615049 (Context!16409 call!676094)) (Context!16409 call!676198)) c!10362))))

(declare-fun b!7367828 () Bool)

(assert (=> b!7367828 (= e!4411036 call!676200)))

(declare-fun c!1369212 () Bool)

(declare-fun d!2283135 () Bool)

(assert (=> d!2283135 (= c!1369212 (and (is-ElementMatch!19264 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370)))))) (= (c!1369068 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370)))))) c!10362)))))

(assert (=> d!2283135 (= (derivationStepZipperDown!3090 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370))))) (ite (or c!1369114 c!1369112) lt!2615049 (Context!16409 call!676094)) c!10362) e!4411035)))

(declare-fun b!7367829 () Bool)

(assert (=> b!7367829 (= e!4411035 e!4411033)))

(assert (=> b!7367829 (= c!1369211 (is-Union!19264 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370)))))))))

(declare-fun b!7367830 () Bool)

(declare-fun e!4411034 () (Set Context!16408))

(assert (=> b!7367830 (= e!4411034 (set.union call!676201 call!676203))))

(declare-fun bm!676197 () Bool)

(assert (=> bm!676197 (= call!676200 call!676203)))

(declare-fun bm!676198 () Bool)

(assert (=> bm!676198 (= call!676199 call!676198)))

(declare-fun b!7367831 () Bool)

(assert (=> b!7367831 (= e!4411034 e!4411036)))

(assert (=> b!7367831 (= c!1369213 (is-Concat!28109 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370)))))))))

(declare-fun b!7367832 () Bool)

(assert (=> b!7367832 (= c!1369209 e!4411038)))

(declare-fun res!2973397 () Bool)

(assert (=> b!7367832 (=> (not res!2973397) (not e!4411038))))

(assert (=> b!7367832 (= res!2973397 (is-Concat!28109 (ite c!1369114 (regOne!39041 (regOne!39040 r1!2370)) (ite c!1369112 (regTwo!39040 (regOne!39040 r1!2370)) (ite c!1369116 (regOne!39040 (regOne!39040 r1!2370)) (reg!19593 (regOne!39040 r1!2370)))))))))

(assert (=> b!7367832 (= e!4411033 e!4411034)))

(assert (= (and d!2283135 c!1369212) b!7367824))

(assert (= (and d!2283135 (not c!1369212)) b!7367829))

(assert (= (and b!7367829 c!1369211) b!7367823))

(assert (= (and b!7367829 (not c!1369211)) b!7367832))

(assert (= (and b!7367832 res!2973397) b!7367827))

(assert (= (and b!7367832 c!1369209) b!7367830))

(assert (= (and b!7367832 (not c!1369209)) b!7367831))

(assert (= (and b!7367831 c!1369213) b!7367828))

(assert (= (and b!7367831 (not c!1369213)) b!7367826))

(assert (= (and b!7367826 c!1369210) b!7367825))

(assert (= (and b!7367826 (not c!1369210)) b!7367822))

(assert (= (or b!7367828 b!7367825) bm!676198))

(assert (= (or b!7367828 b!7367825) bm!676197))

(assert (= (or b!7367830 bm!676197) bm!676193))

(assert (= (or b!7367830 bm!676198) bm!676194))

(assert (= (or b!7367823 b!7367830) bm!676196))

(assert (= (or b!7367823 bm!676193) bm!676195))

(declare-fun m!8022696 () Bool)

(assert (=> b!7367827 m!8022696))

(declare-fun m!8022698 () Bool)

(assert (=> b!7367824 m!8022698))

(declare-fun m!8022700 () Bool)

(assert (=> bm!676196 m!8022700))

(declare-fun m!8022702 () Bool)

(assert (=> bm!676195 m!8022702))

(declare-fun m!8022704 () Bool)

(assert (=> bm!676194 m!8022704))

(assert (=> bm!676090 d!2283135))

(declare-fun e!4411039 () Bool)

(assert (=> b!7367517 (= tp!2094141 e!4411039)))

(declare-fun b!7367834 () Bool)

(declare-fun tp!2094210 () Bool)

(declare-fun tp!2094213 () Bool)

(assert (=> b!7367834 (= e!4411039 (and tp!2094210 tp!2094213))))

(declare-fun b!7367836 () Bool)

(declare-fun tp!2094211 () Bool)

(declare-fun tp!2094212 () Bool)

(assert (=> b!7367836 (= e!4411039 (and tp!2094211 tp!2094212))))

(declare-fun b!7367835 () Bool)

(declare-fun tp!2094214 () Bool)

(assert (=> b!7367835 (= e!4411039 tp!2094214)))

(declare-fun b!7367833 () Bool)

(assert (=> b!7367833 (= e!4411039 tp_is_empty!48773)))

(assert (= (and b!7367517 (is-ElementMatch!19264 (regOne!39041 (regTwo!39040 r1!2370)))) b!7367833))

(assert (= (and b!7367517 (is-Concat!28109 (regOne!39041 (regTwo!39040 r1!2370)))) b!7367834))

(assert (= (and b!7367517 (is-Star!19264 (regOne!39041 (regTwo!39040 r1!2370)))) b!7367835))

(assert (= (and b!7367517 (is-Union!19264 (regOne!39041 (regTwo!39040 r1!2370)))) b!7367836))

(declare-fun e!4411040 () Bool)

(assert (=> b!7367517 (= tp!2094142 e!4411040)))

(declare-fun b!7367838 () Bool)

(declare-fun tp!2094215 () Bool)

(declare-fun tp!2094218 () Bool)

(assert (=> b!7367838 (= e!4411040 (and tp!2094215 tp!2094218))))

(declare-fun b!7367840 () Bool)

(declare-fun tp!2094216 () Bool)

(declare-fun tp!2094217 () Bool)

(assert (=> b!7367840 (= e!4411040 (and tp!2094216 tp!2094217))))

(declare-fun b!7367839 () Bool)

(declare-fun tp!2094219 () Bool)

(assert (=> b!7367839 (= e!4411040 tp!2094219)))

(declare-fun b!7367837 () Bool)

(assert (=> b!7367837 (= e!4411040 tp_is_empty!48773)))

(assert (= (and b!7367517 (is-ElementMatch!19264 (regTwo!39041 (regTwo!39040 r1!2370)))) b!7367837))

(assert (= (and b!7367517 (is-Concat!28109 (regTwo!39041 (regTwo!39040 r1!2370)))) b!7367838))

(assert (= (and b!7367517 (is-Star!19264 (regTwo!39041 (regTwo!39040 r1!2370)))) b!7367839))

(assert (= (and b!7367517 (is-Union!19264 (regTwo!39041 (regTwo!39040 r1!2370)))) b!7367840))

(declare-fun e!4411041 () Bool)

(assert (=> b!7367508 (= tp!2094134 e!4411041)))

(declare-fun b!7367842 () Bool)

(declare-fun tp!2094220 () Bool)

(declare-fun tp!2094223 () Bool)

(assert (=> b!7367842 (= e!4411041 (and tp!2094220 tp!2094223))))

(declare-fun b!7367844 () Bool)

(declare-fun tp!2094221 () Bool)

(declare-fun tp!2094222 () Bool)

(assert (=> b!7367844 (= e!4411041 (and tp!2094221 tp!2094222))))

(declare-fun b!7367843 () Bool)

(declare-fun tp!2094224 () Bool)

(assert (=> b!7367843 (= e!4411041 tp!2094224)))

(declare-fun b!7367841 () Bool)

(assert (=> b!7367841 (= e!4411041 tp_is_empty!48773)))

(assert (= (and b!7367508 (is-ElementMatch!19264 (reg!19593 (reg!19593 r1!2370)))) b!7367841))

(assert (= (and b!7367508 (is-Concat!28109 (reg!19593 (reg!19593 r1!2370)))) b!7367842))

(assert (= (and b!7367508 (is-Star!19264 (reg!19593 (reg!19593 r1!2370)))) b!7367843))

(assert (= (and b!7367508 (is-Union!19264 (reg!19593 (reg!19593 r1!2370)))) b!7367844))

(declare-fun e!4411042 () Bool)

(assert (=> b!7367513 (= tp!2094136 e!4411042)))

(declare-fun b!7367846 () Bool)

(declare-fun tp!2094225 () Bool)

(declare-fun tp!2094228 () Bool)

(assert (=> b!7367846 (= e!4411042 (and tp!2094225 tp!2094228))))

(declare-fun b!7367848 () Bool)

(declare-fun tp!2094226 () Bool)

(declare-fun tp!2094227 () Bool)

(assert (=> b!7367848 (= e!4411042 (and tp!2094226 tp!2094227))))

(declare-fun b!7367847 () Bool)

(declare-fun tp!2094229 () Bool)

(assert (=> b!7367847 (= e!4411042 tp!2094229)))

(declare-fun b!7367845 () Bool)

(assert (=> b!7367845 (= e!4411042 tp_is_empty!48773)))

(assert (= (and b!7367513 (is-ElementMatch!19264 (regOne!39041 (regOne!39040 r1!2370)))) b!7367845))

(assert (= (and b!7367513 (is-Concat!28109 (regOne!39041 (regOne!39040 r1!2370)))) b!7367846))

(assert (= (and b!7367513 (is-Star!19264 (regOne!39041 (regOne!39040 r1!2370)))) b!7367847))

(assert (= (and b!7367513 (is-Union!19264 (regOne!39041 (regOne!39040 r1!2370)))) b!7367848))

(declare-fun e!4411043 () Bool)

(assert (=> b!7367513 (= tp!2094137 e!4411043)))

(declare-fun b!7367850 () Bool)

(declare-fun tp!2094230 () Bool)

(declare-fun tp!2094233 () Bool)

(assert (=> b!7367850 (= e!4411043 (and tp!2094230 tp!2094233))))

(declare-fun b!7367852 () Bool)

(declare-fun tp!2094231 () Bool)

(declare-fun tp!2094232 () Bool)

(assert (=> b!7367852 (= e!4411043 (and tp!2094231 tp!2094232))))

(declare-fun b!7367851 () Bool)

(declare-fun tp!2094234 () Bool)

(assert (=> b!7367851 (= e!4411043 tp!2094234)))

(declare-fun b!7367849 () Bool)

(assert (=> b!7367849 (= e!4411043 tp_is_empty!48773)))

(assert (= (and b!7367513 (is-ElementMatch!19264 (regTwo!39041 (regOne!39040 r1!2370)))) b!7367849))

(assert (= (and b!7367513 (is-Concat!28109 (regTwo!39041 (regOne!39040 r1!2370)))) b!7367850))

(assert (= (and b!7367513 (is-Star!19264 (regTwo!39041 (regOne!39040 r1!2370)))) b!7367851))

(assert (= (and b!7367513 (is-Union!19264 (regTwo!39041 (regOne!39040 r1!2370)))) b!7367852))

(declare-fun e!4411044 () Bool)

(assert (=> b!7367525 (= tp!2094151 e!4411044)))

(declare-fun b!7367854 () Bool)

(declare-fun tp!2094235 () Bool)

(declare-fun tp!2094238 () Bool)

(assert (=> b!7367854 (= e!4411044 (and tp!2094235 tp!2094238))))

(declare-fun b!7367856 () Bool)

(declare-fun tp!2094236 () Bool)

(declare-fun tp!2094237 () Bool)

(assert (=> b!7367856 (= e!4411044 (and tp!2094236 tp!2094237))))

(declare-fun b!7367855 () Bool)

(declare-fun tp!2094239 () Bool)

(assert (=> b!7367855 (= e!4411044 tp!2094239)))

(declare-fun b!7367853 () Bool)

(assert (=> b!7367853 (= e!4411044 tp_is_empty!48773)))

(assert (= (and b!7367525 (is-ElementMatch!19264 (regOne!39041 (regTwo!39041 r1!2370)))) b!7367853))

(assert (= (and b!7367525 (is-Concat!28109 (regOne!39041 (regTwo!39041 r1!2370)))) b!7367854))

(assert (= (and b!7367525 (is-Star!19264 (regOne!39041 (regTwo!39041 r1!2370)))) b!7367855))

(assert (= (and b!7367525 (is-Union!19264 (regOne!39041 (regTwo!39041 r1!2370)))) b!7367856))

(declare-fun e!4411045 () Bool)

(assert (=> b!7367525 (= tp!2094152 e!4411045)))

(declare-fun b!7367858 () Bool)

(declare-fun tp!2094240 () Bool)

(declare-fun tp!2094243 () Bool)

(assert (=> b!7367858 (= e!4411045 (and tp!2094240 tp!2094243))))

(declare-fun b!7367860 () Bool)

(declare-fun tp!2094241 () Bool)

(declare-fun tp!2094242 () Bool)

(assert (=> b!7367860 (= e!4411045 (and tp!2094241 tp!2094242))))

(declare-fun b!7367859 () Bool)

(declare-fun tp!2094244 () Bool)

(assert (=> b!7367859 (= e!4411045 tp!2094244)))

(declare-fun b!7367857 () Bool)

(assert (=> b!7367857 (= e!4411045 tp_is_empty!48773)))

(assert (= (and b!7367525 (is-ElementMatch!19264 (regTwo!39041 (regTwo!39041 r1!2370)))) b!7367857))

(assert (= (and b!7367525 (is-Concat!28109 (regTwo!39041 (regTwo!39041 r1!2370)))) b!7367858))

(assert (= (and b!7367525 (is-Star!19264 (regTwo!39041 (regTwo!39041 r1!2370)))) b!7367859))

(assert (= (and b!7367525 (is-Union!19264 (regTwo!39041 (regTwo!39041 r1!2370)))) b!7367860))

(declare-fun e!4411046 () Bool)

(assert (=> b!7367511 (= tp!2094135 e!4411046)))

(declare-fun b!7367862 () Bool)

(declare-fun tp!2094245 () Bool)

(declare-fun tp!2094248 () Bool)

(assert (=> b!7367862 (= e!4411046 (and tp!2094245 tp!2094248))))

(declare-fun b!7367864 () Bool)

(declare-fun tp!2094246 () Bool)

(declare-fun tp!2094247 () Bool)

(assert (=> b!7367864 (= e!4411046 (and tp!2094246 tp!2094247))))

(declare-fun b!7367863 () Bool)

(declare-fun tp!2094249 () Bool)

(assert (=> b!7367863 (= e!4411046 tp!2094249)))

(declare-fun b!7367861 () Bool)

(assert (=> b!7367861 (= e!4411046 tp_is_empty!48773)))

(assert (= (and b!7367511 (is-ElementMatch!19264 (regOne!39040 (regOne!39040 r1!2370)))) b!7367861))

(assert (= (and b!7367511 (is-Concat!28109 (regOne!39040 (regOne!39040 r1!2370)))) b!7367862))

(assert (= (and b!7367511 (is-Star!19264 (regOne!39040 (regOne!39040 r1!2370)))) b!7367863))

(assert (= (and b!7367511 (is-Union!19264 (regOne!39040 (regOne!39040 r1!2370)))) b!7367864))

(declare-fun e!4411047 () Bool)

(assert (=> b!7367511 (= tp!2094138 e!4411047)))

(declare-fun b!7367866 () Bool)

(declare-fun tp!2094250 () Bool)

(declare-fun tp!2094253 () Bool)

(assert (=> b!7367866 (= e!4411047 (and tp!2094250 tp!2094253))))

(declare-fun b!7367868 () Bool)

(declare-fun tp!2094251 () Bool)

(declare-fun tp!2094252 () Bool)

(assert (=> b!7367868 (= e!4411047 (and tp!2094251 tp!2094252))))

(declare-fun b!7367867 () Bool)

(declare-fun tp!2094254 () Bool)

(assert (=> b!7367867 (= e!4411047 tp!2094254)))

(declare-fun b!7367865 () Bool)

(assert (=> b!7367865 (= e!4411047 tp_is_empty!48773)))

(assert (= (and b!7367511 (is-ElementMatch!19264 (regTwo!39040 (regOne!39040 r1!2370)))) b!7367865))

(assert (= (and b!7367511 (is-Concat!28109 (regTwo!39040 (regOne!39040 r1!2370)))) b!7367866))

(assert (= (and b!7367511 (is-Star!19264 (regTwo!39040 (regOne!39040 r1!2370)))) b!7367867))

(assert (= (and b!7367511 (is-Union!19264 (regTwo!39040 (regOne!39040 r1!2370)))) b!7367868))

(declare-fun e!4411048 () Bool)

(assert (=> b!7367516 (= tp!2094144 e!4411048)))

(declare-fun b!7367870 () Bool)

(declare-fun tp!2094255 () Bool)

(declare-fun tp!2094258 () Bool)

(assert (=> b!7367870 (= e!4411048 (and tp!2094255 tp!2094258))))

(declare-fun b!7367872 () Bool)

(declare-fun tp!2094256 () Bool)

(declare-fun tp!2094257 () Bool)

(assert (=> b!7367872 (= e!4411048 (and tp!2094256 tp!2094257))))

(declare-fun b!7367871 () Bool)

(declare-fun tp!2094259 () Bool)

(assert (=> b!7367871 (= e!4411048 tp!2094259)))

(declare-fun b!7367869 () Bool)

(assert (=> b!7367869 (= e!4411048 tp_is_empty!48773)))

(assert (= (and b!7367516 (is-ElementMatch!19264 (reg!19593 (regTwo!39040 r1!2370)))) b!7367869))

(assert (= (and b!7367516 (is-Concat!28109 (reg!19593 (regTwo!39040 r1!2370)))) b!7367870))

(assert (= (and b!7367516 (is-Star!19264 (reg!19593 (regTwo!39040 r1!2370)))) b!7367871))

(assert (= (and b!7367516 (is-Union!19264 (reg!19593 (regTwo!39040 r1!2370)))) b!7367872))

(declare-fun e!4411049 () Bool)

(assert (=> b!7367531 (= tp!2094161 e!4411049)))

(declare-fun b!7367874 () Bool)

(declare-fun tp!2094260 () Bool)

(declare-fun tp!2094263 () Bool)

(assert (=> b!7367874 (= e!4411049 (and tp!2094260 tp!2094263))))

(declare-fun b!7367876 () Bool)

(declare-fun tp!2094261 () Bool)

(declare-fun tp!2094262 () Bool)

(assert (=> b!7367876 (= e!4411049 (and tp!2094261 tp!2094262))))

(declare-fun b!7367875 () Bool)

(declare-fun tp!2094264 () Bool)

(assert (=> b!7367875 (= e!4411049 tp!2094264)))

(declare-fun b!7367873 () Bool)

(assert (=> b!7367873 (= e!4411049 tp_is_empty!48773)))

(assert (= (and b!7367531 (is-ElementMatch!19264 (h!78084 (exprs!8704 ct2!378)))) b!7367873))

(assert (= (and b!7367531 (is-Concat!28109 (h!78084 (exprs!8704 ct2!378)))) b!7367874))

(assert (= (and b!7367531 (is-Star!19264 (h!78084 (exprs!8704 ct2!378)))) b!7367875))

(assert (= (and b!7367531 (is-Union!19264 (h!78084 (exprs!8704 ct2!378)))) b!7367876))

(declare-fun b!7367877 () Bool)

(declare-fun e!4411050 () Bool)

(declare-fun tp!2094265 () Bool)

(declare-fun tp!2094266 () Bool)

(assert (=> b!7367877 (= e!4411050 (and tp!2094265 tp!2094266))))

(assert (=> b!7367531 (= tp!2094162 e!4411050)))

(assert (= (and b!7367531 (is-Cons!71636 (t!386211 (exprs!8704 ct2!378)))) b!7367877))

(declare-fun e!4411051 () Bool)

(assert (=> b!7367521 (= tp!2094146 e!4411051)))

(declare-fun b!7367879 () Bool)

(declare-fun tp!2094267 () Bool)

(declare-fun tp!2094270 () Bool)

(assert (=> b!7367879 (= e!4411051 (and tp!2094267 tp!2094270))))

(declare-fun b!7367881 () Bool)

(declare-fun tp!2094268 () Bool)

(declare-fun tp!2094269 () Bool)

(assert (=> b!7367881 (= e!4411051 (and tp!2094268 tp!2094269))))

(declare-fun b!7367880 () Bool)

(declare-fun tp!2094271 () Bool)

(assert (=> b!7367880 (= e!4411051 tp!2094271)))

(declare-fun b!7367878 () Bool)

(assert (=> b!7367878 (= e!4411051 tp_is_empty!48773)))

(assert (= (and b!7367521 (is-ElementMatch!19264 (regOne!39041 (regOne!39041 r1!2370)))) b!7367878))

(assert (= (and b!7367521 (is-Concat!28109 (regOne!39041 (regOne!39041 r1!2370)))) b!7367879))

(assert (= (and b!7367521 (is-Star!19264 (regOne!39041 (regOne!39041 r1!2370)))) b!7367880))

(assert (= (and b!7367521 (is-Union!19264 (regOne!39041 (regOne!39041 r1!2370)))) b!7367881))

(declare-fun e!4411052 () Bool)

(assert (=> b!7367521 (= tp!2094147 e!4411052)))

(declare-fun b!7367883 () Bool)

(declare-fun tp!2094272 () Bool)

(declare-fun tp!2094275 () Bool)

(assert (=> b!7367883 (= e!4411052 (and tp!2094272 tp!2094275))))

(declare-fun b!7367885 () Bool)

(declare-fun tp!2094273 () Bool)

(declare-fun tp!2094274 () Bool)

(assert (=> b!7367885 (= e!4411052 (and tp!2094273 tp!2094274))))

(declare-fun b!7367884 () Bool)

(declare-fun tp!2094276 () Bool)

(assert (=> b!7367884 (= e!4411052 tp!2094276)))

(declare-fun b!7367882 () Bool)

(assert (=> b!7367882 (= e!4411052 tp_is_empty!48773)))

(assert (= (and b!7367521 (is-ElementMatch!19264 (regTwo!39041 (regOne!39041 r1!2370)))) b!7367882))

(assert (= (and b!7367521 (is-Concat!28109 (regTwo!39041 (regOne!39041 r1!2370)))) b!7367883))

(assert (= (and b!7367521 (is-Star!19264 (regTwo!39041 (regOne!39041 r1!2370)))) b!7367884))

(assert (= (and b!7367521 (is-Union!19264 (regTwo!39041 (regOne!39041 r1!2370)))) b!7367885))

(declare-fun e!4411053 () Bool)

(assert (=> b!7367507 (= tp!2094130 e!4411053)))

(declare-fun b!7367887 () Bool)

(declare-fun tp!2094277 () Bool)

(declare-fun tp!2094280 () Bool)

(assert (=> b!7367887 (= e!4411053 (and tp!2094277 tp!2094280))))

(declare-fun b!7367889 () Bool)

(declare-fun tp!2094278 () Bool)

(declare-fun tp!2094279 () Bool)

(assert (=> b!7367889 (= e!4411053 (and tp!2094278 tp!2094279))))

(declare-fun b!7367888 () Bool)

(declare-fun tp!2094281 () Bool)

(assert (=> b!7367888 (= e!4411053 tp!2094281)))

(declare-fun b!7367886 () Bool)

(assert (=> b!7367886 (= e!4411053 tp_is_empty!48773)))

(assert (= (and b!7367507 (is-ElementMatch!19264 (regOne!39040 (reg!19593 r1!2370)))) b!7367886))

(assert (= (and b!7367507 (is-Concat!28109 (regOne!39040 (reg!19593 r1!2370)))) b!7367887))

(assert (= (and b!7367507 (is-Star!19264 (regOne!39040 (reg!19593 r1!2370)))) b!7367888))

(assert (= (and b!7367507 (is-Union!19264 (regOne!39040 (reg!19593 r1!2370)))) b!7367889))

(declare-fun e!4411054 () Bool)

(assert (=> b!7367507 (= tp!2094133 e!4411054)))

(declare-fun b!7367891 () Bool)

(declare-fun tp!2094282 () Bool)

(declare-fun tp!2094285 () Bool)

(assert (=> b!7367891 (= e!4411054 (and tp!2094282 tp!2094285))))

(declare-fun b!7367893 () Bool)

(declare-fun tp!2094283 () Bool)

(declare-fun tp!2094284 () Bool)

(assert (=> b!7367893 (= e!4411054 (and tp!2094283 tp!2094284))))

(declare-fun b!7367892 () Bool)

(declare-fun tp!2094286 () Bool)

(assert (=> b!7367892 (= e!4411054 tp!2094286)))

(declare-fun b!7367890 () Bool)

(assert (=> b!7367890 (= e!4411054 tp_is_empty!48773)))

(assert (= (and b!7367507 (is-ElementMatch!19264 (regTwo!39040 (reg!19593 r1!2370)))) b!7367890))

(assert (= (and b!7367507 (is-Concat!28109 (regTwo!39040 (reg!19593 r1!2370)))) b!7367891))

(assert (= (and b!7367507 (is-Star!19264 (regTwo!39040 (reg!19593 r1!2370)))) b!7367892))

(assert (= (and b!7367507 (is-Union!19264 (regTwo!39040 (reg!19593 r1!2370)))) b!7367893))

(declare-fun e!4411055 () Bool)

(assert (=> b!7367512 (= tp!2094139 e!4411055)))

(declare-fun b!7367895 () Bool)

(declare-fun tp!2094287 () Bool)

(declare-fun tp!2094290 () Bool)

(assert (=> b!7367895 (= e!4411055 (and tp!2094287 tp!2094290))))

(declare-fun b!7367897 () Bool)

(declare-fun tp!2094288 () Bool)

(declare-fun tp!2094289 () Bool)

(assert (=> b!7367897 (= e!4411055 (and tp!2094288 tp!2094289))))

(declare-fun b!7367896 () Bool)

(declare-fun tp!2094291 () Bool)

(assert (=> b!7367896 (= e!4411055 tp!2094291)))

(declare-fun b!7367894 () Bool)

(assert (=> b!7367894 (= e!4411055 tp_is_empty!48773)))

(assert (= (and b!7367512 (is-ElementMatch!19264 (reg!19593 (regOne!39040 r1!2370)))) b!7367894))

(assert (= (and b!7367512 (is-Concat!28109 (reg!19593 (regOne!39040 r1!2370)))) b!7367895))

(assert (= (and b!7367512 (is-Star!19264 (reg!19593 (regOne!39040 r1!2370)))) b!7367896))

(assert (= (and b!7367512 (is-Union!19264 (reg!19593 (regOne!39040 r1!2370)))) b!7367897))

(declare-fun e!4411056 () Bool)

(assert (=> b!7367532 (= tp!2094163 e!4411056)))

(declare-fun b!7367899 () Bool)

(declare-fun tp!2094292 () Bool)

(declare-fun tp!2094295 () Bool)

(assert (=> b!7367899 (= e!4411056 (and tp!2094292 tp!2094295))))

(declare-fun b!7367901 () Bool)

(declare-fun tp!2094293 () Bool)

(declare-fun tp!2094294 () Bool)

(assert (=> b!7367901 (= e!4411056 (and tp!2094293 tp!2094294))))

(declare-fun b!7367900 () Bool)

(declare-fun tp!2094296 () Bool)

(assert (=> b!7367900 (= e!4411056 tp!2094296)))

(declare-fun b!7367898 () Bool)

(assert (=> b!7367898 (= e!4411056 tp_is_empty!48773)))

(assert (= (and b!7367532 (is-ElementMatch!19264 (h!78084 (exprs!8704 cWitness!61)))) b!7367898))

(assert (= (and b!7367532 (is-Concat!28109 (h!78084 (exprs!8704 cWitness!61)))) b!7367899))

(assert (= (and b!7367532 (is-Star!19264 (h!78084 (exprs!8704 cWitness!61)))) b!7367900))

(assert (= (and b!7367532 (is-Union!19264 (h!78084 (exprs!8704 cWitness!61)))) b!7367901))

(declare-fun b!7367902 () Bool)

(declare-fun e!4411057 () Bool)

(declare-fun tp!2094297 () Bool)

(declare-fun tp!2094298 () Bool)

(assert (=> b!7367902 (= e!4411057 (and tp!2094297 tp!2094298))))

(assert (=> b!7367532 (= tp!2094164 e!4411057)))

(assert (= (and b!7367532 (is-Cons!71636 (t!386211 (exprs!8704 cWitness!61)))) b!7367902))

(declare-fun e!4411058 () Bool)

(assert (=> b!7367509 (= tp!2094131 e!4411058)))

(declare-fun b!7367904 () Bool)

(declare-fun tp!2094299 () Bool)

(declare-fun tp!2094302 () Bool)

(assert (=> b!7367904 (= e!4411058 (and tp!2094299 tp!2094302))))

(declare-fun b!7367906 () Bool)

(declare-fun tp!2094300 () Bool)

(declare-fun tp!2094301 () Bool)

(assert (=> b!7367906 (= e!4411058 (and tp!2094300 tp!2094301))))

(declare-fun b!7367905 () Bool)

(declare-fun tp!2094303 () Bool)

(assert (=> b!7367905 (= e!4411058 tp!2094303)))

(declare-fun b!7367903 () Bool)

(assert (=> b!7367903 (= e!4411058 tp_is_empty!48773)))

(assert (= (and b!7367509 (is-ElementMatch!19264 (regOne!39041 (reg!19593 r1!2370)))) b!7367903))

(assert (= (and b!7367509 (is-Concat!28109 (regOne!39041 (reg!19593 r1!2370)))) b!7367904))

(assert (= (and b!7367509 (is-Star!19264 (regOne!39041 (reg!19593 r1!2370)))) b!7367905))

(assert (= (and b!7367509 (is-Union!19264 (regOne!39041 (reg!19593 r1!2370)))) b!7367906))

(declare-fun e!4411059 () Bool)

(assert (=> b!7367509 (= tp!2094132 e!4411059)))

(declare-fun b!7367908 () Bool)

(declare-fun tp!2094304 () Bool)

(declare-fun tp!2094307 () Bool)

(assert (=> b!7367908 (= e!4411059 (and tp!2094304 tp!2094307))))

(declare-fun b!7367910 () Bool)

(declare-fun tp!2094305 () Bool)

(declare-fun tp!2094306 () Bool)

(assert (=> b!7367910 (= e!4411059 (and tp!2094305 tp!2094306))))

(declare-fun b!7367909 () Bool)

(declare-fun tp!2094308 () Bool)

(assert (=> b!7367909 (= e!4411059 tp!2094308)))

(declare-fun b!7367907 () Bool)

(assert (=> b!7367907 (= e!4411059 tp_is_empty!48773)))

(assert (= (and b!7367509 (is-ElementMatch!19264 (regTwo!39041 (reg!19593 r1!2370)))) b!7367907))

(assert (= (and b!7367509 (is-Concat!28109 (regTwo!39041 (reg!19593 r1!2370)))) b!7367908))

(assert (= (and b!7367509 (is-Star!19264 (regTwo!39041 (reg!19593 r1!2370)))) b!7367909))

(assert (= (and b!7367509 (is-Union!19264 (regTwo!39041 (reg!19593 r1!2370)))) b!7367910))

(declare-fun e!4411060 () Bool)

(assert (=> b!7367530 (= tp!2094159 e!4411060)))

(declare-fun b!7367912 () Bool)

(declare-fun tp!2094309 () Bool)

(declare-fun tp!2094312 () Bool)

(assert (=> b!7367912 (= e!4411060 (and tp!2094309 tp!2094312))))

(declare-fun b!7367914 () Bool)

(declare-fun tp!2094310 () Bool)

(declare-fun tp!2094311 () Bool)

(assert (=> b!7367914 (= e!4411060 (and tp!2094310 tp!2094311))))

(declare-fun b!7367913 () Bool)

(declare-fun tp!2094313 () Bool)

(assert (=> b!7367913 (= e!4411060 tp!2094313)))

(declare-fun b!7367911 () Bool)

(assert (=> b!7367911 (= e!4411060 tp_is_empty!48773)))

(assert (= (and b!7367530 (is-ElementMatch!19264 (h!78084 (exprs!8704 ct1!282)))) b!7367911))

(assert (= (and b!7367530 (is-Concat!28109 (h!78084 (exprs!8704 ct1!282)))) b!7367912))

(assert (= (and b!7367530 (is-Star!19264 (h!78084 (exprs!8704 ct1!282)))) b!7367913))

(assert (= (and b!7367530 (is-Union!19264 (h!78084 (exprs!8704 ct1!282)))) b!7367914))

(declare-fun b!7367915 () Bool)

(declare-fun e!4411061 () Bool)

(declare-fun tp!2094314 () Bool)

(declare-fun tp!2094315 () Bool)

(assert (=> b!7367915 (= e!4411061 (and tp!2094314 tp!2094315))))

(assert (=> b!7367530 (= tp!2094160 e!4411061)))

(assert (= (and b!7367530 (is-Cons!71636 (t!386211 (exprs!8704 ct1!282)))) b!7367915))

(declare-fun e!4411062 () Bool)

(assert (=> b!7367519 (= tp!2094145 e!4411062)))

(declare-fun b!7367917 () Bool)

(declare-fun tp!2094316 () Bool)

(declare-fun tp!2094319 () Bool)

(assert (=> b!7367917 (= e!4411062 (and tp!2094316 tp!2094319))))

(declare-fun b!7367919 () Bool)

(declare-fun tp!2094317 () Bool)

(declare-fun tp!2094318 () Bool)

(assert (=> b!7367919 (= e!4411062 (and tp!2094317 tp!2094318))))

(declare-fun b!7367918 () Bool)

(declare-fun tp!2094320 () Bool)

(assert (=> b!7367918 (= e!4411062 tp!2094320)))

(declare-fun b!7367916 () Bool)

(assert (=> b!7367916 (= e!4411062 tp_is_empty!48773)))

(assert (= (and b!7367519 (is-ElementMatch!19264 (regOne!39040 (regOne!39041 r1!2370)))) b!7367916))

(assert (= (and b!7367519 (is-Concat!28109 (regOne!39040 (regOne!39041 r1!2370)))) b!7367917))

(assert (= (and b!7367519 (is-Star!19264 (regOne!39040 (regOne!39041 r1!2370)))) b!7367918))

(assert (= (and b!7367519 (is-Union!19264 (regOne!39040 (regOne!39041 r1!2370)))) b!7367919))

(declare-fun e!4411063 () Bool)

(assert (=> b!7367519 (= tp!2094148 e!4411063)))

(declare-fun b!7367921 () Bool)

(declare-fun tp!2094321 () Bool)

(declare-fun tp!2094324 () Bool)

(assert (=> b!7367921 (= e!4411063 (and tp!2094321 tp!2094324))))

(declare-fun b!7367923 () Bool)

(declare-fun tp!2094322 () Bool)

(declare-fun tp!2094323 () Bool)

(assert (=> b!7367923 (= e!4411063 (and tp!2094322 tp!2094323))))

(declare-fun b!7367922 () Bool)

(declare-fun tp!2094325 () Bool)

(assert (=> b!7367922 (= e!4411063 tp!2094325)))

(declare-fun b!7367920 () Bool)

(assert (=> b!7367920 (= e!4411063 tp_is_empty!48773)))

(assert (= (and b!7367519 (is-ElementMatch!19264 (regTwo!39040 (regOne!39041 r1!2370)))) b!7367920))

(assert (= (and b!7367519 (is-Concat!28109 (regTwo!39040 (regOne!39041 r1!2370)))) b!7367921))

(assert (= (and b!7367519 (is-Star!19264 (regTwo!39040 (regOne!39041 r1!2370)))) b!7367922))

(assert (= (and b!7367519 (is-Union!19264 (regTwo!39040 (regOne!39041 r1!2370)))) b!7367923))

(declare-fun e!4411064 () Bool)

(assert (=> b!7367524 (= tp!2094154 e!4411064)))

(declare-fun b!7367925 () Bool)

(declare-fun tp!2094326 () Bool)

(declare-fun tp!2094329 () Bool)

(assert (=> b!7367925 (= e!4411064 (and tp!2094326 tp!2094329))))

(declare-fun b!7367927 () Bool)

(declare-fun tp!2094327 () Bool)

(declare-fun tp!2094328 () Bool)

(assert (=> b!7367927 (= e!4411064 (and tp!2094327 tp!2094328))))

(declare-fun b!7367926 () Bool)

(declare-fun tp!2094330 () Bool)

(assert (=> b!7367926 (= e!4411064 tp!2094330)))

(declare-fun b!7367924 () Bool)

(assert (=> b!7367924 (= e!4411064 tp_is_empty!48773)))

(assert (= (and b!7367524 (is-ElementMatch!19264 (reg!19593 (regTwo!39041 r1!2370)))) b!7367924))

(assert (= (and b!7367524 (is-Concat!28109 (reg!19593 (regTwo!39041 r1!2370)))) b!7367925))

(assert (= (and b!7367524 (is-Star!19264 (reg!19593 (regTwo!39041 r1!2370)))) b!7367926))

(assert (= (and b!7367524 (is-Union!19264 (reg!19593 (regTwo!39041 r1!2370)))) b!7367927))

(declare-fun e!4411065 () Bool)

(assert (=> b!7367515 (= tp!2094140 e!4411065)))

(declare-fun b!7367929 () Bool)

(declare-fun tp!2094331 () Bool)

(declare-fun tp!2094334 () Bool)

(assert (=> b!7367929 (= e!4411065 (and tp!2094331 tp!2094334))))

(declare-fun b!7367931 () Bool)

(declare-fun tp!2094332 () Bool)

(declare-fun tp!2094333 () Bool)

(assert (=> b!7367931 (= e!4411065 (and tp!2094332 tp!2094333))))

(declare-fun b!7367930 () Bool)

(declare-fun tp!2094335 () Bool)

(assert (=> b!7367930 (= e!4411065 tp!2094335)))

(declare-fun b!7367928 () Bool)

(assert (=> b!7367928 (= e!4411065 tp_is_empty!48773)))

(assert (= (and b!7367515 (is-ElementMatch!19264 (regOne!39040 (regTwo!39040 r1!2370)))) b!7367928))

(assert (= (and b!7367515 (is-Concat!28109 (regOne!39040 (regTwo!39040 r1!2370)))) b!7367929))

(assert (= (and b!7367515 (is-Star!19264 (regOne!39040 (regTwo!39040 r1!2370)))) b!7367930))

(assert (= (and b!7367515 (is-Union!19264 (regOne!39040 (regTwo!39040 r1!2370)))) b!7367931))

(declare-fun e!4411066 () Bool)

(assert (=> b!7367515 (= tp!2094143 e!4411066)))

(declare-fun b!7367933 () Bool)

(declare-fun tp!2094336 () Bool)

(declare-fun tp!2094339 () Bool)

(assert (=> b!7367933 (= e!4411066 (and tp!2094336 tp!2094339))))

(declare-fun b!7367935 () Bool)

(declare-fun tp!2094337 () Bool)

(declare-fun tp!2094338 () Bool)

(assert (=> b!7367935 (= e!4411066 (and tp!2094337 tp!2094338))))

(declare-fun b!7367934 () Bool)

(declare-fun tp!2094340 () Bool)

(assert (=> b!7367934 (= e!4411066 tp!2094340)))

(declare-fun b!7367932 () Bool)

(assert (=> b!7367932 (= e!4411066 tp_is_empty!48773)))

(assert (= (and b!7367515 (is-ElementMatch!19264 (regTwo!39040 (regTwo!39040 r1!2370)))) b!7367932))

(assert (= (and b!7367515 (is-Concat!28109 (regTwo!39040 (regTwo!39040 r1!2370)))) b!7367933))

(assert (= (and b!7367515 (is-Star!19264 (regTwo!39040 (regTwo!39040 r1!2370)))) b!7367934))

(assert (= (and b!7367515 (is-Union!19264 (regTwo!39040 (regTwo!39040 r1!2370)))) b!7367935))

(declare-fun e!4411067 () Bool)

(assert (=> b!7367520 (= tp!2094149 e!4411067)))

(declare-fun b!7367937 () Bool)

(declare-fun tp!2094341 () Bool)

(declare-fun tp!2094344 () Bool)

(assert (=> b!7367937 (= e!4411067 (and tp!2094341 tp!2094344))))

(declare-fun b!7367939 () Bool)

(declare-fun tp!2094342 () Bool)

(declare-fun tp!2094343 () Bool)

(assert (=> b!7367939 (= e!4411067 (and tp!2094342 tp!2094343))))

(declare-fun b!7367938 () Bool)

(declare-fun tp!2094345 () Bool)

(assert (=> b!7367938 (= e!4411067 tp!2094345)))

(declare-fun b!7367936 () Bool)

(assert (=> b!7367936 (= e!4411067 tp_is_empty!48773)))

(assert (= (and b!7367520 (is-ElementMatch!19264 (reg!19593 (regOne!39041 r1!2370)))) b!7367936))

(assert (= (and b!7367520 (is-Concat!28109 (reg!19593 (regOne!39041 r1!2370)))) b!7367937))

(assert (= (and b!7367520 (is-Star!19264 (reg!19593 (regOne!39041 r1!2370)))) b!7367938))

(assert (= (and b!7367520 (is-Union!19264 (reg!19593 (regOne!39041 r1!2370)))) b!7367939))

(declare-fun e!4411068 () Bool)

(assert (=> b!7367523 (= tp!2094150 e!4411068)))

(declare-fun b!7367941 () Bool)

(declare-fun tp!2094346 () Bool)

(declare-fun tp!2094349 () Bool)

(assert (=> b!7367941 (= e!4411068 (and tp!2094346 tp!2094349))))

(declare-fun b!7367943 () Bool)

(declare-fun tp!2094347 () Bool)

(declare-fun tp!2094348 () Bool)

(assert (=> b!7367943 (= e!4411068 (and tp!2094347 tp!2094348))))

(declare-fun b!7367942 () Bool)

(declare-fun tp!2094350 () Bool)

(assert (=> b!7367942 (= e!4411068 tp!2094350)))

(declare-fun b!7367940 () Bool)

(assert (=> b!7367940 (= e!4411068 tp_is_empty!48773)))

(assert (= (and b!7367523 (is-ElementMatch!19264 (regOne!39040 (regTwo!39041 r1!2370)))) b!7367940))

(assert (= (and b!7367523 (is-Concat!28109 (regOne!39040 (regTwo!39041 r1!2370)))) b!7367941))

(assert (= (and b!7367523 (is-Star!19264 (regOne!39040 (regTwo!39041 r1!2370)))) b!7367942))

(assert (= (and b!7367523 (is-Union!19264 (regOne!39040 (regTwo!39041 r1!2370)))) b!7367943))

(declare-fun e!4411069 () Bool)

(assert (=> b!7367523 (= tp!2094153 e!4411069)))

(declare-fun b!7367945 () Bool)

(declare-fun tp!2094351 () Bool)

(declare-fun tp!2094354 () Bool)

(assert (=> b!7367945 (= e!4411069 (and tp!2094351 tp!2094354))))

(declare-fun b!7367947 () Bool)

(declare-fun tp!2094352 () Bool)

(declare-fun tp!2094353 () Bool)

(assert (=> b!7367947 (= e!4411069 (and tp!2094352 tp!2094353))))

(declare-fun b!7367946 () Bool)

(declare-fun tp!2094355 () Bool)

(assert (=> b!7367946 (= e!4411069 tp!2094355)))

(declare-fun b!7367944 () Bool)

(assert (=> b!7367944 (= e!4411069 tp_is_empty!48773)))

(assert (= (and b!7367523 (is-ElementMatch!19264 (regTwo!39040 (regTwo!39041 r1!2370)))) b!7367944))

(assert (= (and b!7367523 (is-Concat!28109 (regTwo!39040 (regTwo!39041 r1!2370)))) b!7367945))

(assert (= (and b!7367523 (is-Star!19264 (regTwo!39040 (regTwo!39041 r1!2370)))) b!7367946))

(assert (= (and b!7367523 (is-Union!19264 (regTwo!39040 (regTwo!39041 r1!2370)))) b!7367947))

(declare-fun b_lambda!284375 () Bool)

(assert (= b_lambda!284363 (or d!2283021 b_lambda!284375)))

(declare-fun bs!1920665 () Bool)

(declare-fun d!2283137 () Bool)

(assert (= bs!1920665 (and d!2283137 d!2283021)))

(assert (=> bs!1920665 (= (dynLambda!29522 lambda!457830 (h!78084 (exprs!8704 cWitness!61))) (validRegex!9860 (h!78084 (exprs!8704 cWitness!61))))))

(declare-fun m!8022706 () Bool)

(assert (=> bs!1920665 m!8022706))

(assert (=> b!7367671 d!2283137))

(declare-fun b_lambda!284377 () Bool)

(assert (= b_lambda!284369 (or d!2283025 b_lambda!284377)))

(declare-fun bs!1920666 () Bool)

(declare-fun d!2283139 () Bool)

(assert (= bs!1920666 (and d!2283139 d!2283025)))

(assert (=> bs!1920666 (= (dynLambda!29522 lambda!457832 (h!78084 (exprs!8704 ct2!378))) (validRegex!9860 (h!78084 (exprs!8704 ct2!378))))))

(declare-fun m!8022708 () Bool)

(assert (=> bs!1920666 m!8022708))

(assert (=> b!7367692 d!2283139))

(declare-fun b_lambda!284379 () Bool)

(assert (= b_lambda!284373 (or d!2283027 b_lambda!284379)))

(declare-fun bs!1920667 () Bool)

(declare-fun d!2283141 () Bool)

(assert (= bs!1920667 (and d!2283141 d!2283027)))

(assert (=> bs!1920667 (= (dynLambda!29522 lambda!457833 (h!78084 (exprs!8704 lt!2615049))) (validRegex!9860 (h!78084 (exprs!8704 lt!2615049))))))

(declare-fun m!8022710 () Bool)

(assert (=> bs!1920667 m!8022710))

(assert (=> b!7367707 d!2283141))

(declare-fun b_lambda!284381 () Bool)

(assert (= b_lambda!284365 (or b!7367299 b_lambda!284381)))

(declare-fun bs!1920668 () Bool)

(declare-fun d!2283143 () Bool)

(assert (= bs!1920668 (and d!2283143 b!7367299)))

(assert (=> bs!1920668 (= (dynLambda!29522 lambda!457824 (h!78084 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378)))) (validRegex!9860 (h!78084 (++!17080 (exprs!8704 ct1!282) (exprs!8704 ct2!378)))))))

(declare-fun m!8022712 () Bool)

(assert (=> bs!1920668 m!8022712))

(assert (=> b!7367684 d!2283143))

(declare-fun b_lambda!284383 () Bool)

(assert (= b_lambda!284371 (or d!2283023 b_lambda!284383)))

(declare-fun bs!1920669 () Bool)

(declare-fun d!2283145 () Bool)

(assert (= bs!1920669 (and d!2283145 d!2283023)))

(assert (=> bs!1920669 (= (dynLambda!29522 lambda!457831 (h!78084 (exprs!8704 ct1!282))) (validRegex!9860 (h!78084 (exprs!8704 ct1!282))))))

(declare-fun m!8022714 () Bool)

(assert (=> bs!1920669 m!8022714))

(assert (=> b!7367705 d!2283145))

(declare-fun b_lambda!284385 () Bool)

(assert (= b_lambda!284367 (or b!7367299 b_lambda!284385)))

(declare-fun bs!1920670 () Bool)

(declare-fun d!2283147 () Bool)

(assert (= bs!1920670 (and d!2283147 b!7367299)))

(assert (=> bs!1920670 (= (dynLambda!29522 lambda!457824 (h!78084 (exprs!8704 ct1!282))) (validRegex!9860 (h!78084 (exprs!8704 ct1!282))))))

(assert (=> bs!1920670 m!8022714))

(assert (=> b!7367686 d!2283147))

(push 1)

(assert (not bm!676138))

(assert (not b!7367843))

(assert (not b!7367666))

(assert (not bm!676144))

(assert (not bm!676169))

(assert (not b!7367929))

(assert (not b!7367855))

(assert (not b!7367693))

(assert (not b!7367838))

(assert (not b!7367901))

(assert (not b!7367842))

(assert (not bm!676175))

(assert (not b!7367685))

(assert (not b!7367787))

(assert (not b!7367827))

(assert (not b!7367690))

(assert (not b!7367860))

(assert (not b!7367931))

(assert (not b!7367877))

(assert (not b_lambda!284385))

(assert (not b!7367736))

(assert (not b!7367714))

(assert (not bm!676149))

(assert (not b!7367930))

(assert (not b!7367854))

(assert (not d!2283107))

(assert (not b!7367887))

(assert (not b!7367909))

(assert (not b!7367910))

(assert (not bm!676179))

(assert (not b_lambda!284379))

(assert (not b_lambda!284381))

(assert (not b!7367917))

(assert (not bm!676164))

(assert (not b!7367885))

(assert (not b!7367925))

(assert (not b!7367896))

(assert (not b!7367881))

(assert (not b!7367891))

(assert (not b!7367942))

(assert (not b!7367874))

(assert (not b!7367816))

(assert (not b!7367906))

(assert (not bm!676185))

(assert (not b!7367859))

(assert (not b!7367856))

(assert (not b!7367904))

(assert (not bs!1920668))

(assert (not b!7367897))

(assert (not b!7367872))

(assert (not b!7367848))

(assert (not b!7367755))

(assert (not bm!676133))

(assert (not b!7367888))

(assert (not b!7367923))

(assert (not b!7367868))

(assert (not bm!676143))

(assert (not b!7367687))

(assert (not b!7367900))

(assert (not bm!676137))

(assert (not b!7367919))

(assert (not b!7367839))

(assert (not bm!676165))

(assert (not b!7367937))

(assert (not b!7367867))

(assert (not b!7367725))

(assert (not b!7367767))

(assert (not bm!676190))

(assert (not bm!676173))

(assert (not bm!676189))

(assert (not b_lambda!284375))

(assert (not bm!676194))

(assert (not b!7367775))

(assert (not b!7367862))

(assert (not b!7367895))

(assert (not bm!676159))

(assert (not bm!676195))

(assert (not bm!676158))

(assert (not bm!676151))

(assert (not b!7367727))

(assert (not b!7367926))

(assert (not b!7367858))

(assert (not b!7367941))

(assert (not bm!676166))

(assert (not b!7367864))

(assert (not b!7367892))

(assert (not b!7367847))

(assert (not b!7367946))

(assert (not b!7367844))

(assert (not b!7367908))

(assert (not b!7367840))

(assert (not b!7367883))

(assert (not b!7367708))

(assert (not d!2283075))

(assert (not b!7367938))

(assert (not b!7367884))

(assert (not b!7367871))

(assert (not bm!676186))

(assert (not bm!676174))

(assert (not d!2283087))

(assert (not b!7367914))

(assert (not b!7367846))

(assert (not b!7367870))

(assert (not b!7367880))

(assert tp_is_empty!48773)

(assert (not b!7367876))

(assert (not b!7367905))

(assert (not b_lambda!284383))

(assert (not d!2283103))

(assert (not bm!676170))

(assert (not b!7367834))

(assert (not bm!676154))

(assert (not bm!676160))

(assert (not b!7367927))

(assert (not b!7367654))

(assert (not b!7367699))

(assert (not b!7367852))

(assert (not b!7367866))

(assert (not bm!676155))

(assert (not bs!1920666))

(assert (not bs!1920667))

(assert (not b!7367893))

(assert (not b!7367915))

(assert (not bs!1920665))

(assert (not bm!676139))

(assert (not b!7367689))

(assert (not b!7367706))

(assert (not bs!1920670))

(assert (not b!7367662))

(assert (not bm!676188))

(assert (not b!7367933))

(assert (not b!7367899))

(assert (not b!7367875))

(assert (not b!7367902))

(assert (not bs!1920669))

(assert (not bm!676196))

(assert (not b!7367921))

(assert (not bm!676150))

(assert (not b!7367744))

(assert (not b!7367889))

(assert (not b!7367943))

(assert (not b!7367664))

(assert (not b!7367913))

(assert (not b!7367922))

(assert (not bm!676134))

(assert (not d!2283083))

(assert (not b_lambda!284377))

(assert (not b!7367947))

(assert (not b!7367945))

(assert (not b!7367851))

(assert (not bm!676178))

(assert (not b!7367934))

(assert (not b!7367879))

(assert (not b!7367729))

(assert (not b!7367678))

(assert (not b!7367918))

(assert (not b!7367850))

(assert (not b!7367939))

(assert (not b!7367672))

(assert (not b!7367835))

(assert (not bm!676145))

(assert (not b!7367836))

(assert (not b!7367912))

(assert (not b!7367935))

(assert (not d!2283097))

(assert (not b!7367863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

