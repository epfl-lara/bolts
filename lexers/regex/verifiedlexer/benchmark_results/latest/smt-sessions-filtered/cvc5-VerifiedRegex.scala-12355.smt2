; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692446 () Bool)

(assert start!692446)

(declare-fun b!7114241 () Bool)

(declare-fun e!4275165 () Bool)

(declare-fun tp!1957710 () Bool)

(declare-fun tp!1957715 () Bool)

(assert (=> b!7114241 (= e!4275165 (and tp!1957710 tp!1957715))))

(declare-fun b!7114242 () Bool)

(declare-fun tp_is_empty!45137 () Bool)

(assert (=> b!7114242 (= e!4275165 tp_is_empty!45137)))

(declare-fun b!7114243 () Bool)

(declare-fun res!2902881 () Bool)

(declare-fun e!4275168 () Bool)

(assert (=> b!7114243 (=> (not res!2902881) (not e!4275168))))

(declare-datatypes ((C!36174 0))(
  ( (C!36175 (val!27793 Int)) )
))
(declare-datatypes ((Regex!17952 0))(
  ( (ElementMatch!17952 (c!1327645 C!36174)) (Concat!26797 (regOne!36416 Regex!17952) (regTwo!36416 Regex!17952)) (EmptyExpr!17952) (Star!17952 (reg!18281 Regex!17952)) (EmptyLang!17952) (Union!17952 (regOne!36417 Regex!17952) (regTwo!36417 Regex!17952)) )
))
(declare-fun r!11554 () Regex!17952)

(declare-fun a!1901 () C!36174)

(assert (=> b!7114243 (= res!2902881 (and (or (not (is-ElementMatch!17952 r!11554)) (not (= (c!1327645 r!11554) a!1901))) (not (is-Union!17952 r!11554))))))

(declare-fun res!2902886 () Bool)

(assert (=> start!692446 (=> (not res!2902886) (not e!4275168))))

(declare-fun validRegex!9225 (Regex!17952) Bool)

(assert (=> start!692446 (= res!2902886 (validRegex!9225 r!11554))))

(assert (=> start!692446 e!4275168))

(assert (=> start!692446 e!4275165))

(assert (=> start!692446 tp_is_empty!45137))

(declare-datatypes ((List!68913 0))(
  ( (Nil!68789) (Cons!68789 (h!75237 Regex!17952) (t!382754 List!68913)) )
))
(declare-datatypes ((Context!13892 0))(
  ( (Context!13893 (exprs!7446 List!68913)) )
))
(declare-fun c!9994 () Context!13892)

(declare-fun e!4275167 () Bool)

(declare-fun inv!87744 (Context!13892) Bool)

(assert (=> start!692446 (and (inv!87744 c!9994) e!4275167)))

(declare-fun auxCtx!45 () Context!13892)

(declare-fun e!4275169 () Bool)

(assert (=> start!692446 (and (inv!87744 auxCtx!45) e!4275169)))

(declare-fun b!7114244 () Bool)

(declare-fun tp!1957709 () Bool)

(assert (=> b!7114244 (= e!4275169 tp!1957709)))

(declare-fun b!7114245 () Bool)

(declare-fun e!4275166 () Bool)

(declare-fun regexDepth!395 (Regex!17952) Int)

(assert (=> b!7114245 (= e!4275166 (>= (regexDepth!395 (regOne!36416 r!11554)) (regexDepth!395 r!11554)))))

(declare-fun b!7114246 () Bool)

(declare-fun e!4275170 () Bool)

(declare-fun nullable!7589 (Regex!17952) Bool)

(assert (=> b!7114246 (= e!4275170 (not (nullable!7589 (regOne!36416 r!11554))))))

(declare-fun b!7114247 () Bool)

(declare-fun res!2902887 () Bool)

(assert (=> b!7114247 (=> (not res!2902887) (not e!4275166))))

(assert (=> b!7114247 (= res!2902887 (validRegex!9225 (regOne!36416 r!11554)))))

(declare-fun b!7114248 () Bool)

(assert (=> b!7114248 (= e!4275168 e!4275166)))

(declare-fun res!2902884 () Bool)

(assert (=> b!7114248 (=> (not res!2902884) (not e!4275166))))

(assert (=> b!7114248 (= res!2902884 (validRegex!9225 (regTwo!36416 r!11554)))))

(declare-fun lt!2560362 () List!68913)

(declare-fun ++!16104 (List!68913 List!68913) List!68913)

(assert (=> b!7114248 (= lt!2560362 (++!16104 (exprs!7446 c!9994) (exprs!7446 auxCtx!45)))))

(declare-fun lambda!432212 () Int)

(declare-datatypes ((Unit!162575 0))(
  ( (Unit!162576) )
))
(declare-fun lt!2560361 () Unit!162575)

(declare-fun lemmaConcatPreservesForall!1237 (List!68913 List!68913 Int) Unit!162575)

(assert (=> b!7114248 (= lt!2560361 (lemmaConcatPreservesForall!1237 (exprs!7446 c!9994) (exprs!7446 auxCtx!45) lambda!432212))))

(declare-fun lt!2560363 () Unit!162575)

(assert (=> b!7114248 (= lt!2560363 (lemmaConcatPreservesForall!1237 (exprs!7446 c!9994) (exprs!7446 auxCtx!45) lambda!432212))))

(declare-fun b!7114249 () Bool)

(declare-fun res!2902888 () Bool)

(assert (=> b!7114249 (=> (not res!2902888) (not e!4275168))))

(assert (=> b!7114249 (= res!2902888 e!4275170)))

(declare-fun res!2902885 () Bool)

(assert (=> b!7114249 (=> res!2902885 e!4275170)))

(assert (=> b!7114249 (= res!2902885 (not (is-Concat!26797 r!11554)))))

(declare-fun b!7114250 () Bool)

(declare-fun tp!1957712 () Bool)

(declare-fun tp!1957714 () Bool)

(assert (=> b!7114250 (= e!4275165 (and tp!1957712 tp!1957714))))

(declare-fun b!7114251 () Bool)

(declare-fun tp!1957713 () Bool)

(assert (=> b!7114251 (= e!4275167 tp!1957713)))

(declare-fun b!7114252 () Bool)

(declare-fun res!2902882 () Bool)

(assert (=> b!7114252 (=> (not res!2902882) (not e!4275168))))

(assert (=> b!7114252 (= res!2902882 (is-Concat!26797 r!11554))))

(declare-fun b!7114253 () Bool)

(declare-fun res!2902883 () Bool)

(assert (=> b!7114253 (=> (not res!2902883) (not e!4275166))))

(declare-fun derivationStepZipperDown!2459 (Regex!17952 Context!13892 C!36174) (Set Context!13892))

(declare-fun $colon$colon!2804 (List!68913 Regex!17952) List!68913)

(assert (=> b!7114253 (= res!2902883 (= (derivationStepZipperDown!2459 r!11554 (Context!13893 lt!2560362) a!1901) (derivationStepZipperDown!2459 (regOne!36416 r!11554) (Context!13893 ($colon$colon!2804 lt!2560362 (regTwo!36416 r!11554))) a!1901)))))

(declare-fun b!7114254 () Bool)

(declare-fun tp!1957711 () Bool)

(assert (=> b!7114254 (= e!4275165 tp!1957711)))

(assert (= (and start!692446 res!2902886) b!7114243))

(assert (= (and b!7114243 res!2902881) b!7114249))

(assert (= (and b!7114249 (not res!2902885)) b!7114246))

(assert (= (and b!7114249 res!2902888) b!7114252))

(assert (= (and b!7114252 res!2902882) b!7114248))

(assert (= (and b!7114248 res!2902884) b!7114253))

(assert (= (and b!7114253 res!2902883) b!7114247))

(assert (= (and b!7114247 res!2902887) b!7114245))

(assert (= (and start!692446 (is-ElementMatch!17952 r!11554)) b!7114242))

(assert (= (and start!692446 (is-Concat!26797 r!11554)) b!7114241))

(assert (= (and start!692446 (is-Star!17952 r!11554)) b!7114254))

(assert (= (and start!692446 (is-Union!17952 r!11554)) b!7114250))

(assert (= start!692446 b!7114251))

(assert (= start!692446 b!7114244))

(declare-fun m!7834008 () Bool)

(assert (=> b!7114248 m!7834008))

(declare-fun m!7834010 () Bool)

(assert (=> b!7114248 m!7834010))

(declare-fun m!7834012 () Bool)

(assert (=> b!7114248 m!7834012))

(assert (=> b!7114248 m!7834012))

(declare-fun m!7834014 () Bool)

(assert (=> start!692446 m!7834014))

(declare-fun m!7834016 () Bool)

(assert (=> start!692446 m!7834016))

(declare-fun m!7834018 () Bool)

(assert (=> start!692446 m!7834018))

(declare-fun m!7834020 () Bool)

(assert (=> b!7114246 m!7834020))

(declare-fun m!7834022 () Bool)

(assert (=> b!7114245 m!7834022))

(declare-fun m!7834024 () Bool)

(assert (=> b!7114245 m!7834024))

(declare-fun m!7834026 () Bool)

(assert (=> b!7114247 m!7834026))

(declare-fun m!7834028 () Bool)

(assert (=> b!7114253 m!7834028))

(declare-fun m!7834030 () Bool)

(assert (=> b!7114253 m!7834030))

(declare-fun m!7834032 () Bool)

(assert (=> b!7114253 m!7834032))

(push 1)

(assert (not b!7114241))

(assert (not b!7114247))

(assert (not b!7114253))

(assert (not b!7114246))

(assert (not start!692446))

(assert (not b!7114250))

(assert (not b!7114244))

(assert (not b!7114251))

(assert (not b!7114248))

(assert (not b!7114254))

(assert tp_is_empty!45137)

(assert (not b!7114245))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!649433 () Bool)

(declare-fun call!649438 () Bool)

(declare-fun c!1327662 () Bool)

(assert (=> bm!649433 (= call!649438 (validRegex!9225 (ite c!1327662 (regOne!36417 r!11554) (regTwo!36416 r!11554))))))

(declare-fun b!7114337 () Bool)

(declare-fun e!4275219 () Bool)

(declare-fun e!4275215 () Bool)

(assert (=> b!7114337 (= e!4275219 e!4275215)))

(assert (=> b!7114337 (= c!1327662 (is-Union!17952 r!11554))))

(declare-fun b!7114338 () Bool)

(declare-fun res!2902925 () Bool)

(declare-fun e!4275218 () Bool)

(assert (=> b!7114338 (=> (not res!2902925) (not e!4275218))))

(assert (=> b!7114338 (= res!2902925 call!649438)))

(assert (=> b!7114338 (= e!4275215 e!4275218)))

(declare-fun b!7114339 () Bool)

(declare-fun e!4275221 () Bool)

(assert (=> b!7114339 (= e!4275221 call!649438)))

(declare-fun d!2220852 () Bool)

(declare-fun res!2902927 () Bool)

(declare-fun e!4275220 () Bool)

(assert (=> d!2220852 (=> res!2902927 e!4275220)))

(assert (=> d!2220852 (= res!2902927 (is-ElementMatch!17952 r!11554))))

(assert (=> d!2220852 (= (validRegex!9225 r!11554) e!4275220)))

(declare-fun b!7114340 () Bool)

(assert (=> b!7114340 (= e!4275220 e!4275219)))

(declare-fun c!1327661 () Bool)

(assert (=> b!7114340 (= c!1327661 (is-Star!17952 r!11554))))

(declare-fun bm!649434 () Bool)

(declare-fun call!649439 () Bool)

(declare-fun call!649440 () Bool)

(assert (=> bm!649434 (= call!649439 call!649440)))

(declare-fun b!7114341 () Bool)

(declare-fun e!4275217 () Bool)

(assert (=> b!7114341 (= e!4275217 e!4275221)))

(declare-fun res!2902929 () Bool)

(assert (=> b!7114341 (=> (not res!2902929) (not e!4275221))))

(assert (=> b!7114341 (= res!2902929 call!649439)))

(declare-fun b!7114342 () Bool)

(declare-fun e!4275216 () Bool)

(assert (=> b!7114342 (= e!4275216 call!649440)))

(declare-fun b!7114343 () Bool)

(declare-fun res!2902928 () Bool)

(assert (=> b!7114343 (=> res!2902928 e!4275217)))

(assert (=> b!7114343 (= res!2902928 (not (is-Concat!26797 r!11554)))))

(assert (=> b!7114343 (= e!4275215 e!4275217)))

(declare-fun b!7114344 () Bool)

(assert (=> b!7114344 (= e!4275218 call!649439)))

(declare-fun b!7114345 () Bool)

(assert (=> b!7114345 (= e!4275219 e!4275216)))

(declare-fun res!2902926 () Bool)

(assert (=> b!7114345 (= res!2902926 (not (nullable!7589 (reg!18281 r!11554))))))

(assert (=> b!7114345 (=> (not res!2902926) (not e!4275216))))

(declare-fun bm!649435 () Bool)

(assert (=> bm!649435 (= call!649440 (validRegex!9225 (ite c!1327661 (reg!18281 r!11554) (ite c!1327662 (regTwo!36417 r!11554) (regOne!36416 r!11554)))))))

(assert (= (and d!2220852 (not res!2902927)) b!7114340))

(assert (= (and b!7114340 c!1327661) b!7114345))

(assert (= (and b!7114340 (not c!1327661)) b!7114337))

(assert (= (and b!7114345 res!2902926) b!7114342))

(assert (= (and b!7114337 c!1327662) b!7114338))

(assert (= (and b!7114337 (not c!1327662)) b!7114343))

(assert (= (and b!7114338 res!2902925) b!7114344))

(assert (= (and b!7114343 (not res!2902928)) b!7114341))

(assert (= (and b!7114341 res!2902929) b!7114339))

(assert (= (or b!7114338 b!7114339) bm!649433))

(assert (= (or b!7114344 b!7114341) bm!649434))

(assert (= (or b!7114342 bm!649434) bm!649435))

(declare-fun m!7834060 () Bool)

(assert (=> bm!649433 m!7834060))

(declare-fun m!7834062 () Bool)

(assert (=> b!7114345 m!7834062))

(declare-fun m!7834064 () Bool)

(assert (=> bm!649435 m!7834064))

(assert (=> start!692446 d!2220852))

(declare-fun bs!1885407 () Bool)

(declare-fun d!2220854 () Bool)

(assert (= bs!1885407 (and d!2220854 b!7114248)))

(declare-fun lambda!432220 () Int)

(assert (=> bs!1885407 (= lambda!432220 lambda!432212)))

(declare-fun forall!16847 (List!68913 Int) Bool)

(assert (=> d!2220854 (= (inv!87744 c!9994) (forall!16847 (exprs!7446 c!9994) lambda!432220))))

(declare-fun bs!1885408 () Bool)

(assert (= bs!1885408 d!2220854))

(declare-fun m!7834066 () Bool)

(assert (=> bs!1885408 m!7834066))

(assert (=> start!692446 d!2220854))

(declare-fun bs!1885409 () Bool)

(declare-fun d!2220856 () Bool)

(assert (= bs!1885409 (and d!2220856 b!7114248)))

(declare-fun lambda!432221 () Int)

(assert (=> bs!1885409 (= lambda!432221 lambda!432212)))

(declare-fun bs!1885410 () Bool)

(assert (= bs!1885410 (and d!2220856 d!2220854)))

(assert (=> bs!1885410 (= lambda!432221 lambda!432220)))

(assert (=> d!2220856 (= (inv!87744 auxCtx!45) (forall!16847 (exprs!7446 auxCtx!45) lambda!432221))))

(declare-fun bs!1885411 () Bool)

(assert (= bs!1885411 d!2220856))

(declare-fun m!7834068 () Bool)

(assert (=> bs!1885411 m!7834068))

(assert (=> start!692446 d!2220856))

(declare-fun b!7114391 () Bool)

(declare-fun e!4275251 () Int)

(declare-fun call!649467 () Int)

(assert (=> b!7114391 (= e!4275251 (+ 1 call!649467))))

(declare-fun b!7114392 () Bool)

(declare-fun c!1327683 () Bool)

(assert (=> b!7114392 (= c!1327683 (is-Union!17952 (regOne!36416 r!11554)))))

(declare-fun e!4275257 () Int)

(assert (=> b!7114392 (= e!4275251 e!4275257)))

(declare-fun b!7114393 () Bool)

(declare-fun call!649468 () Int)

(assert (=> b!7114393 (= e!4275257 (+ 1 call!649468))))

(declare-fun bm!649460 () Bool)

(declare-fun call!649466 () Int)

(declare-fun c!1327684 () Bool)

(assert (=> bm!649460 (= call!649466 (regexDepth!395 (ite c!1327684 (regOne!36417 (regOne!36416 r!11554)) (regTwo!36416 (regOne!36416 r!11554)))))))

(declare-fun b!7114394 () Bool)

(declare-fun e!4275248 () Int)

(assert (=> b!7114394 (= e!4275248 (+ 1 call!649468))))

(declare-fun b!7114395 () Bool)

(declare-fun e!4275254 () Bool)

(declare-fun lt!2560375 () Int)

(assert (=> b!7114395 (= e!4275254 (> lt!2560375 call!649466))))

(declare-fun b!7114396 () Bool)

(declare-fun e!4275256 () Int)

(assert (=> b!7114396 (= e!4275256 e!4275251)))

(declare-fun c!1327688 () Bool)

(assert (=> b!7114396 (= c!1327688 (is-Star!17952 (regOne!36416 r!11554)))))

(declare-fun bm!649461 () Bool)

(declare-fun call!649469 () Int)

(declare-fun call!649471 () Int)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!649461 (= call!649468 (maxBigInt!0 (ite c!1327683 call!649469 call!649471) (ite c!1327683 call!649471 call!649469)))))

(declare-fun b!7114397 () Bool)

(declare-fun e!4275252 () Bool)

(declare-fun e!4275255 () Bool)

(assert (=> b!7114397 (= e!4275252 e!4275255)))

(assert (=> b!7114397 (= c!1327684 (is-Union!17952 (regOne!36416 r!11554)))))

(declare-fun b!7114398 () Bool)

(assert (=> b!7114398 (= e!4275257 e!4275248)))

(declare-fun c!1327682 () Bool)

(assert (=> b!7114398 (= c!1327682 (is-Concat!26797 (regOne!36416 r!11554)))))

(declare-fun b!7114399 () Bool)

(declare-fun res!2902939 () Bool)

(assert (=> b!7114399 (=> (not res!2902939) (not e!4275254))))

(declare-fun call!649465 () Int)

(assert (=> b!7114399 (= res!2902939 (> lt!2560375 call!649465))))

(declare-fun e!4275253 () Bool)

(assert (=> b!7114399 (= e!4275253 e!4275254)))

(declare-fun b!7114400 () Bool)

(assert (=> b!7114400 (= e!4275248 1)))

(declare-fun b!7114401 () Bool)

(declare-fun e!4275250 () Bool)

(declare-fun call!649470 () Int)

(assert (=> b!7114401 (= e!4275250 (> lt!2560375 call!649470))))

(declare-fun d!2220858 () Bool)

(assert (=> d!2220858 e!4275252))

(declare-fun res!2902938 () Bool)

(assert (=> d!2220858 (=> (not res!2902938) (not e!4275252))))

(assert (=> d!2220858 (= res!2902938 (> lt!2560375 0))))

(assert (=> d!2220858 (= lt!2560375 e!4275256)))

(declare-fun c!1327686 () Bool)

(assert (=> d!2220858 (= c!1327686 (is-ElementMatch!17952 (regOne!36416 r!11554)))))

(assert (=> d!2220858 (= (regexDepth!395 (regOne!36416 r!11554)) lt!2560375)))

(declare-fun bm!649462 () Bool)

(assert (=> bm!649462 (= call!649471 call!649467)))

(declare-fun bm!649463 () Bool)

(assert (=> bm!649463 (= call!649469 (regexDepth!395 (ite c!1327683 (regOne!36417 (regOne!36416 r!11554)) (regTwo!36416 (regOne!36416 r!11554)))))))

(declare-fun b!7114402 () Bool)

(declare-fun e!4275249 () Bool)

(assert (=> b!7114402 (= e!4275249 (> lt!2560375 call!649465))))

(declare-fun b!7114403 () Bool)

(assert (=> b!7114403 (= e!4275255 e!4275253)))

(declare-fun c!1327685 () Bool)

(assert (=> b!7114403 (= c!1327685 (is-Concat!26797 (regOne!36416 r!11554)))))

(declare-fun b!7114404 () Bool)

(assert (=> b!7114404 (= e!4275249 (= lt!2560375 1))))

(declare-fun bm!649464 () Bool)

(assert (=> bm!649464 (= call!649467 (regexDepth!395 (ite c!1327688 (reg!18281 (regOne!36416 r!11554)) (ite c!1327683 (regTwo!36417 (regOne!36416 r!11554)) (regOne!36416 (regOne!36416 r!11554))))))))

(declare-fun b!7114405 () Bool)

(declare-fun c!1327687 () Bool)

(assert (=> b!7114405 (= c!1327687 (is-Star!17952 (regOne!36416 r!11554)))))

(assert (=> b!7114405 (= e!4275253 e!4275249)))

(declare-fun b!7114406 () Bool)

(assert (=> b!7114406 (= e!4275255 e!4275250)))

(declare-fun res!2902937 () Bool)

(assert (=> b!7114406 (= res!2902937 (> lt!2560375 call!649466))))

(assert (=> b!7114406 (=> (not res!2902937) (not e!4275250))))

(declare-fun b!7114407 () Bool)

(assert (=> b!7114407 (= e!4275256 1)))

(declare-fun bm!649465 () Bool)

(assert (=> bm!649465 (= call!649465 call!649470)))

(declare-fun bm!649466 () Bool)

(assert (=> bm!649466 (= call!649470 (regexDepth!395 (ite c!1327684 (regTwo!36417 (regOne!36416 r!11554)) (ite c!1327685 (regOne!36416 (regOne!36416 r!11554)) (reg!18281 (regOne!36416 r!11554))))))))

(assert (= (and d!2220858 c!1327686) b!7114407))

(assert (= (and d!2220858 (not c!1327686)) b!7114396))

(assert (= (and b!7114396 c!1327688) b!7114391))

(assert (= (and b!7114396 (not c!1327688)) b!7114392))

(assert (= (and b!7114392 c!1327683) b!7114393))

(assert (= (and b!7114392 (not c!1327683)) b!7114398))

(assert (= (and b!7114398 c!1327682) b!7114394))

(assert (= (and b!7114398 (not c!1327682)) b!7114400))

(assert (= (or b!7114393 b!7114394) bm!649462))

(assert (= (or b!7114393 b!7114394) bm!649463))

(assert (= (or b!7114393 b!7114394) bm!649461))

(assert (= (or b!7114391 bm!649462) bm!649464))

(assert (= (and d!2220858 res!2902938) b!7114397))

(assert (= (and b!7114397 c!1327684) b!7114406))

(assert (= (and b!7114397 (not c!1327684)) b!7114403))

(assert (= (and b!7114406 res!2902937) b!7114401))

(assert (= (and b!7114403 c!1327685) b!7114399))

(assert (= (and b!7114403 (not c!1327685)) b!7114405))

(assert (= (and b!7114399 res!2902939) b!7114395))

(assert (= (and b!7114405 c!1327687) b!7114402))

(assert (= (and b!7114405 (not c!1327687)) b!7114404))

(assert (= (or b!7114399 b!7114402) bm!649465))

(assert (= (or b!7114401 bm!649465) bm!649466))

(assert (= (or b!7114406 b!7114395) bm!649460))

(declare-fun m!7834078 () Bool)

(assert (=> bm!649460 m!7834078))

(declare-fun m!7834080 () Bool)

(assert (=> bm!649461 m!7834080))

(declare-fun m!7834082 () Bool)

(assert (=> bm!649463 m!7834082))

(declare-fun m!7834084 () Bool)

(assert (=> bm!649464 m!7834084))

(declare-fun m!7834086 () Bool)

(assert (=> bm!649466 m!7834086))

(assert (=> b!7114245 d!2220858))

(declare-fun b!7114415 () Bool)

(declare-fun e!4275265 () Int)

(declare-fun call!649477 () Int)

(assert (=> b!7114415 (= e!4275265 (+ 1 call!649477))))

(declare-fun b!7114416 () Bool)

(declare-fun c!1327692 () Bool)

(assert (=> b!7114416 (= c!1327692 (is-Union!17952 r!11554))))

(declare-fun e!4275273 () Int)

(assert (=> b!7114416 (= e!4275265 e!4275273)))

(declare-fun b!7114418 () Bool)

(declare-fun call!649478 () Int)

(assert (=> b!7114418 (= e!4275273 (+ 1 call!649478))))

(declare-fun bm!649472 () Bool)

(declare-fun call!649474 () Int)

(declare-fun c!1327693 () Bool)

(assert (=> bm!649472 (= call!649474 (regexDepth!395 (ite c!1327693 (regOne!36417 r!11554) (regTwo!36416 r!11554))))))

(declare-fun b!7114419 () Bool)

(declare-fun e!4275259 () Int)

(assert (=> b!7114419 (= e!4275259 (+ 1 call!649478))))

(declare-fun b!7114421 () Bool)

(declare-fun e!4275270 () Bool)

(declare-fun lt!2560376 () Int)

(assert (=> b!7114421 (= e!4275270 (> lt!2560376 call!649474))))

(declare-fun b!7114423 () Bool)

(declare-fun e!4275272 () Int)

(assert (=> b!7114423 (= e!4275272 e!4275265)))

(declare-fun c!1327700 () Bool)

(assert (=> b!7114423 (= c!1327700 (is-Star!17952 r!11554))))

(declare-fun call!649484 () Int)

(declare-fun bm!649474 () Bool)

(declare-fun call!649480 () Int)

(assert (=> bm!649474 (= call!649478 (maxBigInt!0 (ite c!1327692 call!649480 call!649484) (ite c!1327692 call!649484 call!649480)))))

(declare-fun b!7114425 () Bool)

(declare-fun e!4275267 () Bool)

(declare-fun e!4275271 () Bool)

(assert (=> b!7114425 (= e!4275267 e!4275271)))

(assert (=> b!7114425 (= c!1327693 (is-Union!17952 r!11554))))

(declare-fun b!7114426 () Bool)

(assert (=> b!7114426 (= e!4275273 e!4275259)))

(declare-fun c!1327690 () Bool)

(assert (=> b!7114426 (= c!1327690 (is-Concat!26797 r!11554))))

(declare-fun b!7114427 () Bool)

(declare-fun res!2902943 () Bool)

(assert (=> b!7114427 (=> (not res!2902943) (not e!4275270))))

(declare-fun call!649473 () Int)

(assert (=> b!7114427 (= res!2902943 (> lt!2560376 call!649473))))

(declare-fun e!4275269 () Bool)

(assert (=> b!7114427 (= e!4275269 e!4275270)))

(declare-fun b!7114428 () Bool)

(assert (=> b!7114428 (= e!4275259 1)))

(declare-fun b!7114429 () Bool)

(declare-fun e!4275263 () Bool)

(declare-fun call!649483 () Int)

(assert (=> b!7114429 (= e!4275263 (> lt!2560376 call!649483))))

(declare-fun d!2220862 () Bool)

(assert (=> d!2220862 e!4275267))

(declare-fun res!2902942 () Bool)

(assert (=> d!2220862 (=> (not res!2902942) (not e!4275267))))

(assert (=> d!2220862 (= res!2902942 (> lt!2560376 0))))

(assert (=> d!2220862 (= lt!2560376 e!4275272)))

(declare-fun c!1327698 () Bool)

(assert (=> d!2220862 (= c!1327698 (is-ElementMatch!17952 r!11554))))

(assert (=> d!2220862 (= (regexDepth!395 r!11554) lt!2560376)))

(declare-fun bm!649475 () Bool)

(assert (=> bm!649475 (= call!649484 call!649477)))

(declare-fun bm!649476 () Bool)

(assert (=> bm!649476 (= call!649480 (regexDepth!395 (ite c!1327692 (regOne!36417 r!11554) (regTwo!36416 r!11554))))))

(declare-fun b!7114430 () Bool)

(declare-fun e!4275261 () Bool)

(assert (=> b!7114430 (= e!4275261 (> lt!2560376 call!649473))))

(declare-fun b!7114431 () Bool)

(assert (=> b!7114431 (= e!4275271 e!4275269)))

(declare-fun c!1327696 () Bool)

(assert (=> b!7114431 (= c!1327696 (is-Concat!26797 r!11554))))

(declare-fun b!7114432 () Bool)

(assert (=> b!7114432 (= e!4275261 (= lt!2560376 1))))

(declare-fun bm!649477 () Bool)

(assert (=> bm!649477 (= call!649477 (regexDepth!395 (ite c!1327700 (reg!18281 r!11554) (ite c!1327692 (regTwo!36417 r!11554) (regOne!36416 r!11554)))))))

(declare-fun b!7114433 () Bool)

(declare-fun c!1327699 () Bool)

(assert (=> b!7114433 (= c!1327699 (is-Star!17952 r!11554))))

(assert (=> b!7114433 (= e!4275269 e!4275261)))

(declare-fun b!7114434 () Bool)

(assert (=> b!7114434 (= e!4275271 e!4275263)))

(declare-fun res!2902940 () Bool)

(assert (=> b!7114434 (= res!2902940 (> lt!2560376 call!649474))))

(assert (=> b!7114434 (=> (not res!2902940) (not e!4275263))))

(declare-fun b!7114435 () Bool)

(assert (=> b!7114435 (= e!4275272 1)))

(declare-fun bm!649478 () Bool)

(assert (=> bm!649478 (= call!649473 call!649483)))

(declare-fun bm!649479 () Bool)

(assert (=> bm!649479 (= call!649483 (regexDepth!395 (ite c!1327693 (regTwo!36417 r!11554) (ite c!1327696 (regOne!36416 r!11554) (reg!18281 r!11554)))))))

(assert (= (and d!2220862 c!1327698) b!7114435))

(assert (= (and d!2220862 (not c!1327698)) b!7114423))

(assert (= (and b!7114423 c!1327700) b!7114415))

(assert (= (and b!7114423 (not c!1327700)) b!7114416))

(assert (= (and b!7114416 c!1327692) b!7114418))

(assert (= (and b!7114416 (not c!1327692)) b!7114426))

(assert (= (and b!7114426 c!1327690) b!7114419))

(assert (= (and b!7114426 (not c!1327690)) b!7114428))

(assert (= (or b!7114418 b!7114419) bm!649475))

(assert (= (or b!7114418 b!7114419) bm!649476))

(assert (= (or b!7114418 b!7114419) bm!649474))

(assert (= (or b!7114415 bm!649475) bm!649477))

(assert (= (and d!2220862 res!2902942) b!7114425))

(assert (= (and b!7114425 c!1327693) b!7114434))

(assert (= (and b!7114425 (not c!1327693)) b!7114431))

(assert (= (and b!7114434 res!2902940) b!7114429))

(assert (= (and b!7114431 c!1327696) b!7114427))

(assert (= (and b!7114431 (not c!1327696)) b!7114433))

(assert (= (and b!7114427 res!2902943) b!7114421))

(assert (= (and b!7114433 c!1327699) b!7114430))

(assert (= (and b!7114433 (not c!1327699)) b!7114432))

(assert (= (or b!7114427 b!7114430) bm!649478))

(assert (= (or b!7114429 bm!649478) bm!649479))

(assert (= (or b!7114434 b!7114421) bm!649472))

(declare-fun m!7834088 () Bool)

(assert (=> bm!649472 m!7834088))

(declare-fun m!7834090 () Bool)

(assert (=> bm!649474 m!7834090))

(declare-fun m!7834092 () Bool)

(assert (=> bm!649476 m!7834092))

(declare-fun m!7834094 () Bool)

(assert (=> bm!649477 m!7834094))

(declare-fun m!7834096 () Bool)

(assert (=> bm!649479 m!7834096))

(assert (=> b!7114245 d!2220862))

(declare-fun d!2220864 () Bool)

(declare-fun nullableFct!2939 (Regex!17952) Bool)

(assert (=> d!2220864 (= (nullable!7589 (regOne!36416 r!11554)) (nullableFct!2939 (regOne!36416 r!11554)))))

(declare-fun bs!1885412 () Bool)

(assert (= bs!1885412 d!2220864))

(declare-fun m!7834098 () Bool)

(assert (=> bs!1885412 m!7834098))

(assert (=> b!7114246 d!2220864))

(declare-fun bm!649480 () Bool)

(declare-fun call!649485 () Bool)

(declare-fun c!1327702 () Bool)

(assert (=> bm!649480 (= call!649485 (validRegex!9225 (ite c!1327702 (regOne!36417 (regOne!36416 r!11554)) (regTwo!36416 (regOne!36416 r!11554)))))))

(declare-fun b!7114436 () Bool)

(declare-fun e!4275278 () Bool)

(declare-fun e!4275274 () Bool)

(assert (=> b!7114436 (= e!4275278 e!4275274)))

(assert (=> b!7114436 (= c!1327702 (is-Union!17952 (regOne!36416 r!11554)))))

(declare-fun b!7114437 () Bool)

(declare-fun res!2902944 () Bool)

(declare-fun e!4275277 () Bool)

(assert (=> b!7114437 (=> (not res!2902944) (not e!4275277))))

(assert (=> b!7114437 (= res!2902944 call!649485)))

(assert (=> b!7114437 (= e!4275274 e!4275277)))

(declare-fun b!7114438 () Bool)

(declare-fun e!4275280 () Bool)

(assert (=> b!7114438 (= e!4275280 call!649485)))

(declare-fun d!2220866 () Bool)

(declare-fun res!2902946 () Bool)

(declare-fun e!4275279 () Bool)

(assert (=> d!2220866 (=> res!2902946 e!4275279)))

(assert (=> d!2220866 (= res!2902946 (is-ElementMatch!17952 (regOne!36416 r!11554)))))

(assert (=> d!2220866 (= (validRegex!9225 (regOne!36416 r!11554)) e!4275279)))

(declare-fun b!7114439 () Bool)

(assert (=> b!7114439 (= e!4275279 e!4275278)))

(declare-fun c!1327701 () Bool)

(assert (=> b!7114439 (= c!1327701 (is-Star!17952 (regOne!36416 r!11554)))))

(declare-fun bm!649481 () Bool)

(declare-fun call!649486 () Bool)

(declare-fun call!649487 () Bool)

(assert (=> bm!649481 (= call!649486 call!649487)))

(declare-fun b!7114440 () Bool)

(declare-fun e!4275276 () Bool)

(assert (=> b!7114440 (= e!4275276 e!4275280)))

(declare-fun res!2902948 () Bool)

(assert (=> b!7114440 (=> (not res!2902948) (not e!4275280))))

(assert (=> b!7114440 (= res!2902948 call!649486)))

(declare-fun b!7114441 () Bool)

(declare-fun e!4275275 () Bool)

(assert (=> b!7114441 (= e!4275275 call!649487)))

(declare-fun b!7114442 () Bool)

(declare-fun res!2902947 () Bool)

(assert (=> b!7114442 (=> res!2902947 e!4275276)))

(assert (=> b!7114442 (= res!2902947 (not (is-Concat!26797 (regOne!36416 r!11554))))))

(assert (=> b!7114442 (= e!4275274 e!4275276)))

(declare-fun b!7114443 () Bool)

(assert (=> b!7114443 (= e!4275277 call!649486)))

(declare-fun b!7114444 () Bool)

(assert (=> b!7114444 (= e!4275278 e!4275275)))

(declare-fun res!2902945 () Bool)

(assert (=> b!7114444 (= res!2902945 (not (nullable!7589 (reg!18281 (regOne!36416 r!11554)))))))

(assert (=> b!7114444 (=> (not res!2902945) (not e!4275275))))

(declare-fun bm!649482 () Bool)

(assert (=> bm!649482 (= call!649487 (validRegex!9225 (ite c!1327701 (reg!18281 (regOne!36416 r!11554)) (ite c!1327702 (regTwo!36417 (regOne!36416 r!11554)) (regOne!36416 (regOne!36416 r!11554))))))))

(assert (= (and d!2220866 (not res!2902946)) b!7114439))

(assert (= (and b!7114439 c!1327701) b!7114444))

(assert (= (and b!7114439 (not c!1327701)) b!7114436))

(assert (= (and b!7114444 res!2902945) b!7114441))

(assert (= (and b!7114436 c!1327702) b!7114437))

(assert (= (and b!7114436 (not c!1327702)) b!7114442))

(assert (= (and b!7114437 res!2902944) b!7114443))

(assert (= (and b!7114442 (not res!2902947)) b!7114440))

(assert (= (and b!7114440 res!2902948) b!7114438))

(assert (= (or b!7114437 b!7114438) bm!649480))

(assert (= (or b!7114443 b!7114440) bm!649481))

(assert (= (or b!7114441 bm!649481) bm!649482))

(declare-fun m!7834108 () Bool)

(assert (=> bm!649480 m!7834108))

(declare-fun m!7834110 () Bool)

(assert (=> b!7114444 m!7834110))

(declare-fun m!7834112 () Bool)

(assert (=> bm!649482 m!7834112))

(assert (=> b!7114247 d!2220866))

(declare-fun bm!649483 () Bool)

(declare-fun call!649488 () Bool)

(declare-fun c!1327704 () Bool)

(assert (=> bm!649483 (= call!649488 (validRegex!9225 (ite c!1327704 (regOne!36417 (regTwo!36416 r!11554)) (regTwo!36416 (regTwo!36416 r!11554)))))))

(declare-fun b!7114445 () Bool)

(declare-fun e!4275285 () Bool)

(declare-fun e!4275281 () Bool)

(assert (=> b!7114445 (= e!4275285 e!4275281)))

(assert (=> b!7114445 (= c!1327704 (is-Union!17952 (regTwo!36416 r!11554)))))

(declare-fun b!7114446 () Bool)

(declare-fun res!2902949 () Bool)

(declare-fun e!4275284 () Bool)

(assert (=> b!7114446 (=> (not res!2902949) (not e!4275284))))

(assert (=> b!7114446 (= res!2902949 call!649488)))

(assert (=> b!7114446 (= e!4275281 e!4275284)))

(declare-fun b!7114447 () Bool)

(declare-fun e!4275287 () Bool)

(assert (=> b!7114447 (= e!4275287 call!649488)))

(declare-fun d!2220868 () Bool)

(declare-fun res!2902951 () Bool)

(declare-fun e!4275286 () Bool)

(assert (=> d!2220868 (=> res!2902951 e!4275286)))

(assert (=> d!2220868 (= res!2902951 (is-ElementMatch!17952 (regTwo!36416 r!11554)))))

(assert (=> d!2220868 (= (validRegex!9225 (regTwo!36416 r!11554)) e!4275286)))

(declare-fun b!7114448 () Bool)

(assert (=> b!7114448 (= e!4275286 e!4275285)))

(declare-fun c!1327703 () Bool)

(assert (=> b!7114448 (= c!1327703 (is-Star!17952 (regTwo!36416 r!11554)))))

(declare-fun bm!649484 () Bool)

(declare-fun call!649489 () Bool)

(declare-fun call!649490 () Bool)

(assert (=> bm!649484 (= call!649489 call!649490)))

(declare-fun b!7114449 () Bool)

(declare-fun e!4275283 () Bool)

(assert (=> b!7114449 (= e!4275283 e!4275287)))

(declare-fun res!2902953 () Bool)

(assert (=> b!7114449 (=> (not res!2902953) (not e!4275287))))

(assert (=> b!7114449 (= res!2902953 call!649489)))

(declare-fun b!7114450 () Bool)

(declare-fun e!4275282 () Bool)

(assert (=> b!7114450 (= e!4275282 call!649490)))

(declare-fun b!7114451 () Bool)

(declare-fun res!2902952 () Bool)

(assert (=> b!7114451 (=> res!2902952 e!4275283)))

(assert (=> b!7114451 (= res!2902952 (not (is-Concat!26797 (regTwo!36416 r!11554))))))

(assert (=> b!7114451 (= e!4275281 e!4275283)))

(declare-fun b!7114452 () Bool)

(assert (=> b!7114452 (= e!4275284 call!649489)))

(declare-fun b!7114453 () Bool)

(assert (=> b!7114453 (= e!4275285 e!4275282)))

(declare-fun res!2902950 () Bool)

(assert (=> b!7114453 (= res!2902950 (not (nullable!7589 (reg!18281 (regTwo!36416 r!11554)))))))

(assert (=> b!7114453 (=> (not res!2902950) (not e!4275282))))

(declare-fun bm!649485 () Bool)

(assert (=> bm!649485 (= call!649490 (validRegex!9225 (ite c!1327703 (reg!18281 (regTwo!36416 r!11554)) (ite c!1327704 (regTwo!36417 (regTwo!36416 r!11554)) (regOne!36416 (regTwo!36416 r!11554))))))))

(assert (= (and d!2220868 (not res!2902951)) b!7114448))

(assert (= (and b!7114448 c!1327703) b!7114453))

(assert (= (and b!7114448 (not c!1327703)) b!7114445))

(assert (= (and b!7114453 res!2902950) b!7114450))

(assert (= (and b!7114445 c!1327704) b!7114446))

(assert (= (and b!7114445 (not c!1327704)) b!7114451))

(assert (= (and b!7114446 res!2902949) b!7114452))

(assert (= (and b!7114451 (not res!2902952)) b!7114449))

(assert (= (and b!7114449 res!2902953) b!7114447))

(assert (= (or b!7114446 b!7114447) bm!649483))

(assert (= (or b!7114452 b!7114449) bm!649484))

(assert (= (or b!7114450 bm!649484) bm!649485))

(declare-fun m!7834116 () Bool)

(assert (=> bm!649483 m!7834116))

(declare-fun m!7834118 () Bool)

(assert (=> b!7114453 m!7834118))

(declare-fun m!7834120 () Bool)

(assert (=> bm!649485 m!7834120))

(assert (=> b!7114248 d!2220868))

(declare-fun b!7114463 () Bool)

(declare-fun e!4275293 () List!68913)

(assert (=> b!7114463 (= e!4275293 (Cons!68789 (h!75237 (exprs!7446 c!9994)) (++!16104 (t!382754 (exprs!7446 c!9994)) (exprs!7446 auxCtx!45))))))

(declare-fun d!2220872 () Bool)

(declare-fun e!4275292 () Bool)

(assert (=> d!2220872 e!4275292))

(declare-fun res!2902958 () Bool)

(assert (=> d!2220872 (=> (not res!2902958) (not e!4275292))))

(declare-fun lt!2560379 () List!68913)

(declare-fun content!14032 (List!68913) (Set Regex!17952))

(assert (=> d!2220872 (= res!2902958 (= (content!14032 lt!2560379) (set.union (content!14032 (exprs!7446 c!9994)) (content!14032 (exprs!7446 auxCtx!45)))))))

(assert (=> d!2220872 (= lt!2560379 e!4275293)))

(declare-fun c!1327707 () Bool)

(assert (=> d!2220872 (= c!1327707 (is-Nil!68789 (exprs!7446 c!9994)))))

(assert (=> d!2220872 (= (++!16104 (exprs!7446 c!9994) (exprs!7446 auxCtx!45)) lt!2560379)))

(declare-fun b!7114464 () Bool)

(declare-fun res!2902959 () Bool)

(assert (=> b!7114464 (=> (not res!2902959) (not e!4275292))))

(declare-fun size!41407 (List!68913) Int)

(assert (=> b!7114464 (= res!2902959 (= (size!41407 lt!2560379) (+ (size!41407 (exprs!7446 c!9994)) (size!41407 (exprs!7446 auxCtx!45)))))))

(declare-fun b!7114462 () Bool)

(assert (=> b!7114462 (= e!4275293 (exprs!7446 auxCtx!45))))

(declare-fun b!7114465 () Bool)

(assert (=> b!7114465 (= e!4275292 (or (not (= (exprs!7446 auxCtx!45) Nil!68789)) (= lt!2560379 (exprs!7446 c!9994))))))

(assert (= (and d!2220872 c!1327707) b!7114462))

(assert (= (and d!2220872 (not c!1327707)) b!7114463))

(assert (= (and d!2220872 res!2902958) b!7114464))

(assert (= (and b!7114464 res!2902959) b!7114465))

(declare-fun m!7834124 () Bool)

(assert (=> b!7114463 m!7834124))

(declare-fun m!7834126 () Bool)

(assert (=> d!2220872 m!7834126))

(declare-fun m!7834128 () Bool)

(assert (=> d!2220872 m!7834128))

(declare-fun m!7834130 () Bool)

(assert (=> d!2220872 m!7834130))

(declare-fun m!7834132 () Bool)

(assert (=> b!7114464 m!7834132))

(declare-fun m!7834134 () Bool)

(assert (=> b!7114464 m!7834134))

(declare-fun m!7834136 () Bool)

(assert (=> b!7114464 m!7834136))

(assert (=> b!7114248 d!2220872))

(declare-fun d!2220878 () Bool)

(assert (=> d!2220878 (forall!16847 (++!16104 (exprs!7446 c!9994) (exprs!7446 auxCtx!45)) lambda!432212)))

(declare-fun lt!2560382 () Unit!162575)

(declare-fun choose!54876 (List!68913 List!68913 Int) Unit!162575)

(assert (=> d!2220878 (= lt!2560382 (choose!54876 (exprs!7446 c!9994) (exprs!7446 auxCtx!45) lambda!432212))))

(assert (=> d!2220878 (forall!16847 (exprs!7446 c!9994) lambda!432212)))

(assert (=> d!2220878 (= (lemmaConcatPreservesForall!1237 (exprs!7446 c!9994) (exprs!7446 auxCtx!45) lambda!432212) lt!2560382)))

(declare-fun bs!1885414 () Bool)

(assert (= bs!1885414 d!2220878))

(assert (=> bs!1885414 m!7834010))

(assert (=> bs!1885414 m!7834010))

(declare-fun m!7834138 () Bool)

(assert (=> bs!1885414 m!7834138))

(declare-fun m!7834140 () Bool)

(assert (=> bs!1885414 m!7834140))

(declare-fun m!7834142 () Bool)

(assert (=> bs!1885414 m!7834142))

(assert (=> b!7114248 d!2220878))

(declare-fun b!7114515 () Bool)

(declare-fun e!4275327 () (Set Context!13892))

(declare-fun e!4275331 () (Set Context!13892))

(assert (=> b!7114515 (= e!4275327 e!4275331)))

(declare-fun c!1327728 () Bool)

(assert (=> b!7114515 (= c!1327728 (is-Union!17952 r!11554))))

(declare-fun b!7114516 () Bool)

(declare-fun e!4275328 () (Set Context!13892))

(declare-fun call!649516 () (Set Context!13892))

(assert (=> b!7114516 (= e!4275328 call!649516)))

(declare-fun bm!649507 () Bool)

(declare-fun call!649515 () List!68913)

(declare-fun call!649512 () List!68913)

(assert (=> bm!649507 (= call!649515 call!649512)))

(declare-fun b!7114517 () Bool)

(declare-fun call!649513 () (Set Context!13892))

(declare-fun call!649514 () (Set Context!13892))

(assert (=> b!7114517 (= e!4275331 (set.union call!649513 call!649514))))

(declare-fun b!7114518 () Bool)

(assert (=> b!7114518 (= e!4275327 (set.insert (Context!13893 lt!2560362) (as set.empty (Set Context!13892))))))

(declare-fun b!7114519 () Bool)

(declare-fun e!4275329 () (Set Context!13892))

(declare-fun call!649517 () (Set Context!13892))

(assert (=> b!7114519 (= e!4275329 (set.union call!649513 call!649517))))

(declare-fun b!7114520 () Bool)

(declare-fun c!1327725 () Bool)

(assert (=> b!7114520 (= c!1327725 (is-Star!17952 r!11554))))

(declare-fun e!4275330 () (Set Context!13892))

(assert (=> b!7114520 (= e!4275328 e!4275330)))

(declare-fun b!7114521 () Bool)

(declare-fun c!1327724 () Bool)

(declare-fun e!4275332 () Bool)

(assert (=> b!7114521 (= c!1327724 e!4275332)))

(declare-fun res!2902977 () Bool)

(assert (=> b!7114521 (=> (not res!2902977) (not e!4275332))))

(assert (=> b!7114521 (= res!2902977 (is-Concat!26797 r!11554))))

(assert (=> b!7114521 (= e!4275331 e!4275329)))

(declare-fun b!7114522 () Bool)

(assert (=> b!7114522 (= e!4275332 (nullable!7589 (regOne!36416 r!11554)))))

(declare-fun d!2220880 () Bool)

(declare-fun c!1327726 () Bool)

(assert (=> d!2220880 (= c!1327726 (and (is-ElementMatch!17952 r!11554) (= (c!1327645 r!11554) a!1901)))))

(assert (=> d!2220880 (= (derivationStepZipperDown!2459 r!11554 (Context!13893 lt!2560362) a!1901) e!4275327)))

(declare-fun b!7114523 () Bool)

(assert (=> b!7114523 (= e!4275330 (as set.empty (Set Context!13892)))))

(declare-fun b!7114524 () Bool)

(assert (=> b!7114524 (= e!4275329 e!4275328)))

(declare-fun c!1327727 () Bool)

(assert (=> b!7114524 (= c!1327727 (is-Concat!26797 r!11554))))

(declare-fun bm!649508 () Bool)

(assert (=> bm!649508 (= call!649513 (derivationStepZipperDown!2459 (ite c!1327728 (regOne!36417 r!11554) (regOne!36416 r!11554)) (ite c!1327728 (Context!13893 lt!2560362) (Context!13893 call!649512)) a!1901))))

(declare-fun b!7114525 () Bool)

(assert (=> b!7114525 (= e!4275330 call!649516)))

(declare-fun bm!649509 () Bool)

(assert (=> bm!649509 (= call!649516 call!649517)))

(declare-fun bm!649510 () Bool)

(assert (=> bm!649510 (= call!649517 call!649514)))

(declare-fun bm!649511 () Bool)

(assert (=> bm!649511 (= call!649512 ($colon$colon!2804 (exprs!7446 (Context!13893 lt!2560362)) (ite (or c!1327724 c!1327727) (regTwo!36416 r!11554) r!11554)))))

(declare-fun bm!649512 () Bool)

(assert (=> bm!649512 (= call!649514 (derivationStepZipperDown!2459 (ite c!1327728 (regTwo!36417 r!11554) (ite c!1327724 (regTwo!36416 r!11554) (ite c!1327727 (regOne!36416 r!11554) (reg!18281 r!11554)))) (ite (or c!1327728 c!1327724) (Context!13893 lt!2560362) (Context!13893 call!649515)) a!1901))))

(assert (= (and d!2220880 c!1327726) b!7114518))

(assert (= (and d!2220880 (not c!1327726)) b!7114515))

(assert (= (and b!7114515 c!1327728) b!7114517))

(assert (= (and b!7114515 (not c!1327728)) b!7114521))

(assert (= (and b!7114521 res!2902977) b!7114522))

(assert (= (and b!7114521 c!1327724) b!7114519))

(assert (= (and b!7114521 (not c!1327724)) b!7114524))

(assert (= (and b!7114524 c!1327727) b!7114516))

(assert (= (and b!7114524 (not c!1327727)) b!7114520))

(assert (= (and b!7114520 c!1327725) b!7114525))

(assert (= (and b!7114520 (not c!1327725)) b!7114523))

(assert (= (or b!7114516 b!7114525) bm!649507))

(assert (= (or b!7114516 b!7114525) bm!649509))

(assert (= (or b!7114519 bm!649509) bm!649510))

(assert (= (or b!7114519 bm!649507) bm!649511))

(assert (= (or b!7114517 bm!649510) bm!649512))

(assert (= (or b!7114517 b!7114519) bm!649508))

(declare-fun m!7834150 () Bool)

(assert (=> b!7114518 m!7834150))

(declare-fun m!7834152 () Bool)

(assert (=> bm!649511 m!7834152))

(declare-fun m!7834154 () Bool)

(assert (=> bm!649508 m!7834154))

(declare-fun m!7834156 () Bool)

(assert (=> bm!649512 m!7834156))

(assert (=> b!7114522 m!7834020))

(assert (=> b!7114253 d!2220880))

(declare-fun b!7114526 () Bool)

(declare-fun e!4275333 () (Set Context!13892))

(declare-fun e!4275337 () (Set Context!13892))

(assert (=> b!7114526 (= e!4275333 e!4275337)))

(declare-fun c!1327733 () Bool)

(assert (=> b!7114526 (= c!1327733 (is-Union!17952 (regOne!36416 r!11554)))))

(declare-fun b!7114527 () Bool)

(declare-fun e!4275334 () (Set Context!13892))

(declare-fun call!649522 () (Set Context!13892))

(assert (=> b!7114527 (= e!4275334 call!649522)))

(declare-fun bm!649513 () Bool)

(declare-fun call!649521 () List!68913)

(declare-fun call!649518 () List!68913)

(assert (=> bm!649513 (= call!649521 call!649518)))

(declare-fun b!7114528 () Bool)

(declare-fun call!649519 () (Set Context!13892))

(declare-fun call!649520 () (Set Context!13892))

(assert (=> b!7114528 (= e!4275337 (set.union call!649519 call!649520))))

(declare-fun b!7114529 () Bool)

(assert (=> b!7114529 (= e!4275333 (set.insert (Context!13893 ($colon$colon!2804 lt!2560362 (regTwo!36416 r!11554))) (as set.empty (Set Context!13892))))))

(declare-fun b!7114530 () Bool)

(declare-fun e!4275335 () (Set Context!13892))

(declare-fun call!649523 () (Set Context!13892))

(assert (=> b!7114530 (= e!4275335 (set.union call!649519 call!649523))))

(declare-fun b!7114531 () Bool)

(declare-fun c!1327730 () Bool)

(assert (=> b!7114531 (= c!1327730 (is-Star!17952 (regOne!36416 r!11554)))))

(declare-fun e!4275336 () (Set Context!13892))

(assert (=> b!7114531 (= e!4275334 e!4275336)))

(declare-fun b!7114532 () Bool)

(declare-fun c!1327729 () Bool)

(declare-fun e!4275338 () Bool)

(assert (=> b!7114532 (= c!1327729 e!4275338)))

(declare-fun res!2902978 () Bool)

(assert (=> b!7114532 (=> (not res!2902978) (not e!4275338))))

(assert (=> b!7114532 (= res!2902978 (is-Concat!26797 (regOne!36416 r!11554)))))

(assert (=> b!7114532 (= e!4275337 e!4275335)))

(declare-fun b!7114533 () Bool)

(assert (=> b!7114533 (= e!4275338 (nullable!7589 (regOne!36416 (regOne!36416 r!11554))))))

(declare-fun d!2220884 () Bool)

(declare-fun c!1327731 () Bool)

(assert (=> d!2220884 (= c!1327731 (and (is-ElementMatch!17952 (regOne!36416 r!11554)) (= (c!1327645 (regOne!36416 r!11554)) a!1901)))))

(assert (=> d!2220884 (= (derivationStepZipperDown!2459 (regOne!36416 r!11554) (Context!13893 ($colon$colon!2804 lt!2560362 (regTwo!36416 r!11554))) a!1901) e!4275333)))

(declare-fun b!7114534 () Bool)

(assert (=> b!7114534 (= e!4275336 (as set.empty (Set Context!13892)))))

(declare-fun b!7114535 () Bool)

(assert (=> b!7114535 (= e!4275335 e!4275334)))

(declare-fun c!1327732 () Bool)

(assert (=> b!7114535 (= c!1327732 (is-Concat!26797 (regOne!36416 r!11554)))))

(declare-fun bm!649514 () Bool)

(assert (=> bm!649514 (= call!649519 (derivationStepZipperDown!2459 (ite c!1327733 (regOne!36417 (regOne!36416 r!11554)) (regOne!36416 (regOne!36416 r!11554))) (ite c!1327733 (Context!13893 ($colon$colon!2804 lt!2560362 (regTwo!36416 r!11554))) (Context!13893 call!649518)) a!1901))))

(declare-fun b!7114536 () Bool)

(assert (=> b!7114536 (= e!4275336 call!649522)))

(declare-fun bm!649515 () Bool)

(assert (=> bm!649515 (= call!649522 call!649523)))

(declare-fun bm!649516 () Bool)

(assert (=> bm!649516 (= call!649523 call!649520)))

(declare-fun bm!649517 () Bool)

(assert (=> bm!649517 (= call!649518 ($colon$colon!2804 (exprs!7446 (Context!13893 ($colon$colon!2804 lt!2560362 (regTwo!36416 r!11554)))) (ite (or c!1327729 c!1327732) (regTwo!36416 (regOne!36416 r!11554)) (regOne!36416 r!11554))))))

(declare-fun bm!649518 () Bool)

(assert (=> bm!649518 (= call!649520 (derivationStepZipperDown!2459 (ite c!1327733 (regTwo!36417 (regOne!36416 r!11554)) (ite c!1327729 (regTwo!36416 (regOne!36416 r!11554)) (ite c!1327732 (regOne!36416 (regOne!36416 r!11554)) (reg!18281 (regOne!36416 r!11554))))) (ite (or c!1327733 c!1327729) (Context!13893 ($colon$colon!2804 lt!2560362 (regTwo!36416 r!11554))) (Context!13893 call!649521)) a!1901))))

(assert (= (and d!2220884 c!1327731) b!7114529))

(assert (= (and d!2220884 (not c!1327731)) b!7114526))

(assert (= (and b!7114526 c!1327733) b!7114528))

(assert (= (and b!7114526 (not c!1327733)) b!7114532))

(assert (= (and b!7114532 res!2902978) b!7114533))

(assert (= (and b!7114532 c!1327729) b!7114530))

(assert (= (and b!7114532 (not c!1327729)) b!7114535))

(assert (= (and b!7114535 c!1327732) b!7114527))

(assert (= (and b!7114535 (not c!1327732)) b!7114531))

(assert (= (and b!7114531 c!1327730) b!7114536))

(assert (= (and b!7114531 (not c!1327730)) b!7114534))

(assert (= (or b!7114527 b!7114536) bm!649513))

(assert (= (or b!7114527 b!7114536) bm!649515))

(assert (= (or b!7114530 bm!649515) bm!649516))

(assert (= (or b!7114530 bm!649513) bm!649517))

(assert (= (or b!7114528 bm!649516) bm!649518))

(assert (= (or b!7114528 b!7114530) bm!649514))

(declare-fun m!7834158 () Bool)

(assert (=> b!7114529 m!7834158))

(declare-fun m!7834160 () Bool)

(assert (=> bm!649517 m!7834160))

(declare-fun m!7834162 () Bool)

(assert (=> bm!649514 m!7834162))

(declare-fun m!7834164 () Bool)

(assert (=> bm!649518 m!7834164))

(declare-fun m!7834166 () Bool)

(assert (=> b!7114533 m!7834166))

(assert (=> b!7114253 d!2220884))

(declare-fun d!2220886 () Bool)

(assert (=> d!2220886 (= ($colon$colon!2804 lt!2560362 (regTwo!36416 r!11554)) (Cons!68789 (regTwo!36416 r!11554) lt!2560362))))

(assert (=> b!7114253 d!2220886))

(declare-fun b!7114548 () Bool)

(declare-fun e!4275341 () Bool)

(declare-fun tp!1957748 () Bool)

(declare-fun tp!1957750 () Bool)

(assert (=> b!7114548 (= e!4275341 (and tp!1957748 tp!1957750))))

(declare-fun b!7114549 () Bool)

(declare-fun tp!1957749 () Bool)

(assert (=> b!7114549 (= e!4275341 tp!1957749)))

(declare-fun b!7114550 () Bool)

(declare-fun tp!1957751 () Bool)

(declare-fun tp!1957747 () Bool)

(assert (=> b!7114550 (= e!4275341 (and tp!1957751 tp!1957747))))

(declare-fun b!7114547 () Bool)

(assert (=> b!7114547 (= e!4275341 tp_is_empty!45137)))

(assert (=> b!7114254 (= tp!1957711 e!4275341)))

(assert (= (and b!7114254 (is-ElementMatch!17952 (reg!18281 r!11554))) b!7114547))

(assert (= (and b!7114254 (is-Concat!26797 (reg!18281 r!11554))) b!7114548))

(assert (= (and b!7114254 (is-Star!17952 (reg!18281 r!11554))) b!7114549))

(assert (= (and b!7114254 (is-Union!17952 (reg!18281 r!11554))) b!7114550))

(declare-fun b!7114555 () Bool)

(declare-fun e!4275344 () Bool)

(declare-fun tp!1957756 () Bool)

(declare-fun tp!1957757 () Bool)

(assert (=> b!7114555 (= e!4275344 (and tp!1957756 tp!1957757))))

(assert (=> b!7114244 (= tp!1957709 e!4275344)))

(assert (= (and b!7114244 (is-Cons!68789 (exprs!7446 auxCtx!45))) b!7114555))

(declare-fun b!7114557 () Bool)

(declare-fun e!4275345 () Bool)

(declare-fun tp!1957759 () Bool)

(declare-fun tp!1957761 () Bool)

(assert (=> b!7114557 (= e!4275345 (and tp!1957759 tp!1957761))))

(declare-fun b!7114558 () Bool)

(declare-fun tp!1957760 () Bool)

(assert (=> b!7114558 (= e!4275345 tp!1957760)))

(declare-fun b!7114559 () Bool)

(declare-fun tp!1957762 () Bool)

(declare-fun tp!1957758 () Bool)

(assert (=> b!7114559 (= e!4275345 (and tp!1957762 tp!1957758))))

(declare-fun b!7114556 () Bool)

(assert (=> b!7114556 (= e!4275345 tp_is_empty!45137)))

(assert (=> b!7114250 (= tp!1957712 e!4275345)))

(assert (= (and b!7114250 (is-ElementMatch!17952 (regOne!36417 r!11554))) b!7114556))

(assert (= (and b!7114250 (is-Concat!26797 (regOne!36417 r!11554))) b!7114557))

(assert (= (and b!7114250 (is-Star!17952 (regOne!36417 r!11554))) b!7114558))

(assert (= (and b!7114250 (is-Union!17952 (regOne!36417 r!11554))) b!7114559))

(declare-fun b!7114561 () Bool)

(declare-fun e!4275346 () Bool)

(declare-fun tp!1957764 () Bool)

(declare-fun tp!1957766 () Bool)

(assert (=> b!7114561 (= e!4275346 (and tp!1957764 tp!1957766))))

(declare-fun b!7114562 () Bool)

(declare-fun tp!1957765 () Bool)

(assert (=> b!7114562 (= e!4275346 tp!1957765)))

(declare-fun b!7114563 () Bool)

(declare-fun tp!1957767 () Bool)

(declare-fun tp!1957763 () Bool)

(assert (=> b!7114563 (= e!4275346 (and tp!1957767 tp!1957763))))

(declare-fun b!7114560 () Bool)

(assert (=> b!7114560 (= e!4275346 tp_is_empty!45137)))

(assert (=> b!7114250 (= tp!1957714 e!4275346)))

(assert (= (and b!7114250 (is-ElementMatch!17952 (regTwo!36417 r!11554))) b!7114560))

(assert (= (and b!7114250 (is-Concat!26797 (regTwo!36417 r!11554))) b!7114561))

(assert (= (and b!7114250 (is-Star!17952 (regTwo!36417 r!11554))) b!7114562))

(assert (= (and b!7114250 (is-Union!17952 (regTwo!36417 r!11554))) b!7114563))

(declare-fun b!7114564 () Bool)

(declare-fun e!4275347 () Bool)

(declare-fun tp!1957768 () Bool)

(declare-fun tp!1957769 () Bool)

(assert (=> b!7114564 (= e!4275347 (and tp!1957768 tp!1957769))))

(assert (=> b!7114251 (= tp!1957713 e!4275347)))

(assert (= (and b!7114251 (is-Cons!68789 (exprs!7446 c!9994))) b!7114564))

(declare-fun b!7114566 () Bool)

(declare-fun e!4275348 () Bool)

(declare-fun tp!1957771 () Bool)

(declare-fun tp!1957773 () Bool)

(assert (=> b!7114566 (= e!4275348 (and tp!1957771 tp!1957773))))

(declare-fun b!7114567 () Bool)

(declare-fun tp!1957772 () Bool)

(assert (=> b!7114567 (= e!4275348 tp!1957772)))

(declare-fun b!7114568 () Bool)

(declare-fun tp!1957774 () Bool)

(declare-fun tp!1957770 () Bool)

(assert (=> b!7114568 (= e!4275348 (and tp!1957774 tp!1957770))))

(declare-fun b!7114565 () Bool)

(assert (=> b!7114565 (= e!4275348 tp_is_empty!45137)))

(assert (=> b!7114241 (= tp!1957710 e!4275348)))

(assert (= (and b!7114241 (is-ElementMatch!17952 (regOne!36416 r!11554))) b!7114565))

(assert (= (and b!7114241 (is-Concat!26797 (regOne!36416 r!11554))) b!7114566))

(assert (= (and b!7114241 (is-Star!17952 (regOne!36416 r!11554))) b!7114567))

(assert (= (and b!7114241 (is-Union!17952 (regOne!36416 r!11554))) b!7114568))

(declare-fun b!7114570 () Bool)

(declare-fun e!4275349 () Bool)

(declare-fun tp!1957776 () Bool)

(declare-fun tp!1957778 () Bool)

(assert (=> b!7114570 (= e!4275349 (and tp!1957776 tp!1957778))))

(declare-fun b!7114571 () Bool)

(declare-fun tp!1957777 () Bool)

(assert (=> b!7114571 (= e!4275349 tp!1957777)))

(declare-fun b!7114572 () Bool)

(declare-fun tp!1957779 () Bool)

(declare-fun tp!1957775 () Bool)

(assert (=> b!7114572 (= e!4275349 (and tp!1957779 tp!1957775))))

(declare-fun b!7114569 () Bool)

(assert (=> b!7114569 (= e!4275349 tp_is_empty!45137)))

(assert (=> b!7114241 (= tp!1957715 e!4275349)))

(assert (= (and b!7114241 (is-ElementMatch!17952 (regTwo!36416 r!11554))) b!7114569))

(assert (= (and b!7114241 (is-Concat!26797 (regTwo!36416 r!11554))) b!7114570))

(assert (= (and b!7114241 (is-Star!17952 (regTwo!36416 r!11554))) b!7114571))

(assert (= (and b!7114241 (is-Union!17952 (regTwo!36416 r!11554))) b!7114572))

(push 1)

(assert (not bm!649476))

(assert (not bm!649479))

(assert (not b!7114444))

(assert (not b!7114345))

(assert (not bm!649517))

(assert (not bm!649464))

(assert (not bm!649512))

(assert (not b!7114548))

(assert (not bm!649477))

(assert (not b!7114559))

(assert (not b!7114558))

(assert (not b!7114557))

(assert (not b!7114563))

(assert (not b!7114555))

(assert (not bm!649460))

(assert (not b!7114562))

(assert (not bm!649463))

(assert (not b!7114570))

(assert (not b!7114533))

(assert (not b!7114549))

(assert (not d!2220864))

(assert (not b!7114568))

(assert (not bm!649474))

(assert (not d!2220878))

(assert (not b!7114561))

(assert (not d!2220856))

(assert (not bm!649461))

(assert (not b!7114564))

(assert (not bm!649435))

(assert (not b!7114453))

(assert (not bm!649483))

(assert (not bm!649511))

(assert (not bm!649485))

(assert (not bm!649466))

(assert (not bm!649480))

(assert (not b!7114571))

(assert (not b!7114566))

(assert (not b!7114572))

(assert (not bm!649482))

(assert (not b!7114463))

(assert tp_is_empty!45137)

(assert (not b!7114464))

(assert (not bm!649518))

(assert (not bm!649508))

(assert (not b!7114550))

(assert (not d!2220872))

(assert (not d!2220854))

(assert (not b!7114522))

(assert (not b!7114567))

(assert (not bm!649472))

(assert (not bm!649433))

(assert (not bm!649514))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

