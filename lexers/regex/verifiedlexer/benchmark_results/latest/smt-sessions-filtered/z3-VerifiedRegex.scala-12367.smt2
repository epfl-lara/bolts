; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!692796 () Bool)

(assert start!692796)

(declare-fun b!7118348 () Bool)

(declare-fun res!2904084 () Bool)

(declare-fun e!4277258 () Bool)

(assert (=> b!7118348 (=> (not res!2904084) (not e!4277258))))

(declare-datatypes ((C!36224 0))(
  ( (C!36225 (val!27818 Int)) )
))
(declare-datatypes ((Regex!17977 0))(
  ( (ElementMatch!17977 (c!1328362 C!36224)) (Concat!26822 (regOne!36466 Regex!17977) (regTwo!36466 Regex!17977)) (EmptyExpr!17977) (Star!17977 (reg!18306 Regex!17977)) (EmptyLang!17977) (Union!17977 (regOne!36467 Regex!17977) (regTwo!36467 Regex!17977)) )
))
(declare-fun r!11554 () Regex!17977)

(declare-fun a!1901 () C!36224)

(get-info :version)

(assert (=> b!7118348 (= res!2904084 (and (or (not ((_ is ElementMatch!17977) r!11554)) (not (= (c!1328362 r!11554) a!1901))) (not ((_ is Union!17977) r!11554))))))

(declare-fun b!7118349 () Bool)

(declare-fun e!4277257 () Bool)

(assert (=> b!7118349 (= e!4277258 e!4277257)))

(declare-fun res!2904079 () Bool)

(assert (=> b!7118349 (=> (not res!2904079) (not e!4277257))))

(declare-fun validRegex!9250 (Regex!17977) Bool)

(assert (=> b!7118349 (= res!2904079 (validRegex!9250 r!11554))))

(declare-datatypes ((List!68938 0))(
  ( (Nil!68814) (Cons!68814 (h!75262 Regex!17977) (t!382793 List!68938)) )
))
(declare-fun lt!2560914 () List!68938)

(declare-datatypes ((Context!13942 0))(
  ( (Context!13943 (exprs!7471 List!68938)) )
))
(declare-fun c!9994 () Context!13942)

(declare-fun auxCtx!45 () Context!13942)

(declare-fun ++!16129 (List!68938 List!68938) List!68938)

(assert (=> b!7118349 (= lt!2560914 (++!16129 (exprs!7471 c!9994) (exprs!7471 auxCtx!45)))))

(declare-datatypes ((Unit!162625 0))(
  ( (Unit!162626) )
))
(declare-fun lt!2560913 () Unit!162625)

(declare-fun lambda!432501 () Int)

(declare-fun lemmaConcatPreservesForall!1262 (List!68938 List!68938 Int) Unit!162625)

(assert (=> b!7118349 (= lt!2560913 (lemmaConcatPreservesForall!1262 (exprs!7471 c!9994) (exprs!7471 auxCtx!45) lambda!432501))))

(declare-fun lt!2560912 () Unit!162625)

(assert (=> b!7118349 (= lt!2560912 (lemmaConcatPreservesForall!1262 (exprs!7471 c!9994) (exprs!7471 auxCtx!45) lambda!432501))))

(declare-fun b!7118350 () Bool)

(declare-fun e!4277255 () Bool)

(declare-fun tp!1959567 () Bool)

(declare-fun tp!1959565 () Bool)

(assert (=> b!7118350 (= e!4277255 (and tp!1959567 tp!1959565))))

(declare-fun b!7118351 () Bool)

(declare-fun res!2904080 () Bool)

(assert (=> b!7118351 (=> (not res!2904080) (not e!4277258))))

(declare-fun e!4277256 () Bool)

(assert (=> b!7118351 (= res!2904080 e!4277256)))

(declare-fun res!2904082 () Bool)

(assert (=> b!7118351 (=> res!2904082 e!4277256)))

(assert (=> b!7118351 (= res!2904082 (not ((_ is Concat!26822) r!11554)))))

(declare-fun b!7118352 () Bool)

(declare-fun res!2904083 () Bool)

(assert (=> b!7118352 (=> (not res!2904083) (not e!4277257))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun derivationStepZipperDown!2474 (Regex!17977 Context!13942 C!36224) (InoxSet Context!13942))

(declare-fun $colon$colon!2821 (List!68938 Regex!17977) List!68938)

(assert (=> b!7118352 (= res!2904083 (= (derivationStepZipperDown!2474 r!11554 (Context!13943 lt!2560914) a!1901) (derivationStepZipperDown!2474 (reg!18306 r!11554) (Context!13943 ($colon$colon!2821 lt!2560914 r!11554)) a!1901)))))

(declare-fun b!7118353 () Bool)

(declare-fun res!2904077 () Bool)

(assert (=> b!7118353 (=> (not res!2904077) (not e!4277258))))

(assert (=> b!7118353 (= res!2904077 (and (not ((_ is Concat!26822) r!11554)) ((_ is Star!17977) r!11554)))))

(declare-fun b!7118354 () Bool)

(declare-fun regexDepth!398 (Regex!17977) Int)

(assert (=> b!7118354 (= e!4277257 (>= (regexDepth!398 (reg!18306 r!11554)) (regexDepth!398 r!11554)))))

(declare-fun res!2904078 () Bool)

(assert (=> start!692796 (=> (not res!2904078) (not e!4277258))))

(assert (=> start!692796 (= res!2904078 (validRegex!9250 r!11554))))

(assert (=> start!692796 e!4277258))

(assert (=> start!692796 e!4277255))

(declare-fun tp_is_empty!45187 () Bool)

(assert (=> start!692796 tp_is_empty!45187))

(declare-fun e!4277259 () Bool)

(declare-fun inv!87805 (Context!13942) Bool)

(assert (=> start!692796 (and (inv!87805 c!9994) e!4277259)))

(declare-fun e!4277260 () Bool)

(assert (=> start!692796 (and (inv!87805 auxCtx!45) e!4277260)))

(declare-fun b!7118347 () Bool)

(declare-fun nullable!7614 (Regex!17977) Bool)

(assert (=> b!7118347 (= e!4277256 (not (nullable!7614 (regOne!36466 r!11554))))))

(declare-fun b!7118355 () Bool)

(declare-fun res!2904081 () Bool)

(assert (=> b!7118355 (=> (not res!2904081) (not e!4277257))))

(assert (=> b!7118355 (= res!2904081 (validRegex!9250 (reg!18306 r!11554)))))

(declare-fun b!7118356 () Bool)

(declare-fun tp!1959566 () Bool)

(assert (=> b!7118356 (= e!4277255 tp!1959566)))

(declare-fun b!7118357 () Bool)

(declare-fun tp!1959569 () Bool)

(assert (=> b!7118357 (= e!4277260 tp!1959569)))

(declare-fun b!7118358 () Bool)

(declare-fun tp!1959570 () Bool)

(assert (=> b!7118358 (= e!4277259 tp!1959570)))

(declare-fun b!7118359 () Bool)

(declare-fun tp!1959568 () Bool)

(declare-fun tp!1959564 () Bool)

(assert (=> b!7118359 (= e!4277255 (and tp!1959568 tp!1959564))))

(declare-fun b!7118360 () Bool)

(assert (=> b!7118360 (= e!4277255 tp_is_empty!45187)))

(assert (= (and start!692796 res!2904078) b!7118348))

(assert (= (and b!7118348 res!2904084) b!7118351))

(assert (= (and b!7118351 (not res!2904082)) b!7118347))

(assert (= (and b!7118351 res!2904080) b!7118353))

(assert (= (and b!7118353 res!2904077) b!7118349))

(assert (= (and b!7118349 res!2904079) b!7118352))

(assert (= (and b!7118352 res!2904083) b!7118355))

(assert (= (and b!7118355 res!2904081) b!7118354))

(assert (= (and start!692796 ((_ is ElementMatch!17977) r!11554)) b!7118360))

(assert (= (and start!692796 ((_ is Concat!26822) r!11554)) b!7118350))

(assert (= (and start!692796 ((_ is Star!17977) r!11554)) b!7118356))

(assert (= (and start!692796 ((_ is Union!17977) r!11554)) b!7118359))

(assert (= start!692796 b!7118358))

(assert (= start!692796 b!7118357))

(declare-fun m!7836164 () Bool)

(assert (=> start!692796 m!7836164))

(declare-fun m!7836166 () Bool)

(assert (=> start!692796 m!7836166))

(declare-fun m!7836168 () Bool)

(assert (=> start!692796 m!7836168))

(declare-fun m!7836170 () Bool)

(assert (=> b!7118355 m!7836170))

(declare-fun m!7836172 () Bool)

(assert (=> b!7118352 m!7836172))

(declare-fun m!7836174 () Bool)

(assert (=> b!7118352 m!7836174))

(declare-fun m!7836176 () Bool)

(assert (=> b!7118352 m!7836176))

(declare-fun m!7836178 () Bool)

(assert (=> b!7118354 m!7836178))

(declare-fun m!7836180 () Bool)

(assert (=> b!7118354 m!7836180))

(declare-fun m!7836182 () Bool)

(assert (=> b!7118347 m!7836182))

(assert (=> b!7118349 m!7836164))

(declare-fun m!7836184 () Bool)

(assert (=> b!7118349 m!7836184))

(declare-fun m!7836186 () Bool)

(assert (=> b!7118349 m!7836186))

(assert (=> b!7118349 m!7836186))

(check-sat (not b!7118355) (not b!7118359) (not b!7118358) tp_is_empty!45187 (not start!692796) (not b!7118357) (not b!7118349) (not b!7118352) (not b!7118356) (not b!7118350) (not b!7118347) (not b!7118354))
(check-sat)
(get-model)

(declare-fun bm!650167 () Bool)

(declare-fun call!650175 () Int)

(declare-fun c!1328379 () Bool)

(assert (=> bm!650167 (= call!650175 (regexDepth!398 (ite c!1328379 (regOne!36467 (reg!18306 r!11554)) (regTwo!36466 (reg!18306 r!11554)))))))

(declare-fun b!7118395 () Bool)

(declare-fun e!4277281 () Bool)

(declare-fun e!4277282 () Bool)

(assert (=> b!7118395 (= e!4277281 e!4277282)))

(declare-fun res!2904092 () Bool)

(declare-fun lt!2560917 () Int)

(declare-fun call!650173 () Int)

(assert (=> b!7118395 (= res!2904092 (> lt!2560917 call!650173))))

(assert (=> b!7118395 (=> (not res!2904092) (not e!4277282))))

(declare-fun bm!650168 () Bool)

(declare-fun c!1328377 () Bool)

(declare-fun call!650174 () Int)

(assert (=> bm!650168 (= call!650174 (regexDepth!398 (ite c!1328377 (reg!18306 (reg!18306 r!11554)) (ite c!1328379 (regTwo!36467 (reg!18306 r!11554)) (regOne!36466 (reg!18306 r!11554))))))))

(declare-fun b!7118396 () Bool)

(declare-fun e!4277288 () Bool)

(assert (=> b!7118396 (= e!4277288 e!4277281)))

(declare-fun c!1328381 () Bool)

(assert (=> b!7118396 (= c!1328381 ((_ is Union!17977) (reg!18306 r!11554)))))

(declare-fun b!7118397 () Bool)

(declare-fun res!2904093 () Bool)

(declare-fun e!4277289 () Bool)

(assert (=> b!7118397 (=> (not res!2904093) (not e!4277289))))

(declare-fun call!650178 () Int)

(assert (=> b!7118397 (= res!2904093 (> lt!2560917 call!650178))))

(declare-fun e!4277286 () Bool)

(assert (=> b!7118397 (= e!4277286 e!4277289)))

(declare-fun b!7118398 () Bool)

(declare-fun call!650172 () Int)

(assert (=> b!7118398 (= e!4277282 (> lt!2560917 call!650172))))

(declare-fun b!7118400 () Bool)

(assert (=> b!7118400 (= c!1328379 ((_ is Union!17977) (reg!18306 r!11554)))))

(declare-fun e!4277285 () Int)

(declare-fun e!4277283 () Int)

(assert (=> b!7118400 (= e!4277285 e!4277283)))

(declare-fun b!7118401 () Bool)

(declare-fun e!4277284 () Bool)

(assert (=> b!7118401 (= e!4277284 (> lt!2560917 call!650178))))

(declare-fun b!7118402 () Bool)

(declare-fun e!4277287 () Int)

(assert (=> b!7118402 (= e!4277283 e!4277287)))

(declare-fun c!1328378 () Bool)

(assert (=> b!7118402 (= c!1328378 ((_ is Concat!26822) (reg!18306 r!11554)))))

(declare-fun b!7118403 () Bool)

(assert (=> b!7118403 (= e!4277284 (= lt!2560917 1))))

(declare-fun b!7118404 () Bool)

(assert (=> b!7118404 (= e!4277285 (+ 1 call!650174))))

(declare-fun b!7118405 () Bool)

(assert (=> b!7118405 (= e!4277287 1)))

(declare-fun b!7118406 () Bool)

(declare-fun call!650176 () Int)

(assert (=> b!7118406 (= e!4277283 (+ 1 call!650176))))

(declare-fun b!7118407 () Bool)

(assert (=> b!7118407 (= e!4277281 e!4277286)))

(declare-fun c!1328383 () Bool)

(assert (=> b!7118407 (= c!1328383 ((_ is Concat!26822) (reg!18306 r!11554)))))

(declare-fun b!7118408 () Bool)

(assert (=> b!7118408 (= e!4277289 (> lt!2560917 call!650172))))

(declare-fun b!7118409 () Bool)

(declare-fun e!4277290 () Int)

(assert (=> b!7118409 (= e!4277290 e!4277285)))

(assert (=> b!7118409 (= c!1328377 ((_ is Star!17977) (reg!18306 r!11554)))))

(declare-fun d!2221518 () Bool)

(assert (=> d!2221518 e!4277288))

(declare-fun res!2904091 () Bool)

(assert (=> d!2221518 (=> (not res!2904091) (not e!4277288))))

(assert (=> d!2221518 (= res!2904091 (> lt!2560917 0))))

(assert (=> d!2221518 (= lt!2560917 e!4277290)))

(declare-fun c!1328380 () Bool)

(assert (=> d!2221518 (= c!1328380 ((_ is ElementMatch!17977) (reg!18306 r!11554)))))

(assert (=> d!2221518 (= (regexDepth!398 (reg!18306 r!11554)) lt!2560917)))

(declare-fun b!7118399 () Bool)

(assert (=> b!7118399 (= e!4277287 (+ 1 call!650176))))

(declare-fun b!7118410 () Bool)

(declare-fun c!1328382 () Bool)

(assert (=> b!7118410 (= c!1328382 ((_ is Star!17977) (reg!18306 r!11554)))))

(assert (=> b!7118410 (= e!4277286 e!4277284)))

(declare-fun b!7118411 () Bool)

(assert (=> b!7118411 (= e!4277290 1)))

(declare-fun bm!650169 () Bool)

(declare-fun call!650177 () Int)

(assert (=> bm!650169 (= call!650177 call!650174)))

(declare-fun bm!650170 () Bool)

(assert (=> bm!650170 (= call!650173 (regexDepth!398 (ite c!1328381 (regOne!36467 (reg!18306 r!11554)) (ite c!1328383 (regOne!36466 (reg!18306 r!11554)) (reg!18306 (reg!18306 r!11554))))))))

(declare-fun bm!650171 () Bool)

(declare-fun maxBigInt!0 (Int Int) Int)

(assert (=> bm!650171 (= call!650176 (maxBigInt!0 (ite c!1328379 call!650175 call!650177) (ite c!1328379 call!650177 call!650175)))))

(declare-fun bm!650172 () Bool)

(assert (=> bm!650172 (= call!650178 call!650173)))

(declare-fun bm!650173 () Bool)

(assert (=> bm!650173 (= call!650172 (regexDepth!398 (ite c!1328381 (regTwo!36467 (reg!18306 r!11554)) (regTwo!36466 (reg!18306 r!11554)))))))

(assert (= (and d!2221518 c!1328380) b!7118411))

(assert (= (and d!2221518 (not c!1328380)) b!7118409))

(assert (= (and b!7118409 c!1328377) b!7118404))

(assert (= (and b!7118409 (not c!1328377)) b!7118400))

(assert (= (and b!7118400 c!1328379) b!7118406))

(assert (= (and b!7118400 (not c!1328379)) b!7118402))

(assert (= (and b!7118402 c!1328378) b!7118399))

(assert (= (and b!7118402 (not c!1328378)) b!7118405))

(assert (= (or b!7118406 b!7118399) bm!650169))

(assert (= (or b!7118406 b!7118399) bm!650167))

(assert (= (or b!7118406 b!7118399) bm!650171))

(assert (= (or b!7118404 bm!650169) bm!650168))

(assert (= (and d!2221518 res!2904091) b!7118396))

(assert (= (and b!7118396 c!1328381) b!7118395))

(assert (= (and b!7118396 (not c!1328381)) b!7118407))

(assert (= (and b!7118395 res!2904092) b!7118398))

(assert (= (and b!7118407 c!1328383) b!7118397))

(assert (= (and b!7118407 (not c!1328383)) b!7118410))

(assert (= (and b!7118397 res!2904093) b!7118408))

(assert (= (and b!7118410 c!1328382) b!7118401))

(assert (= (and b!7118410 (not c!1328382)) b!7118403))

(assert (= (or b!7118397 b!7118401) bm!650172))

(assert (= (or b!7118398 b!7118408) bm!650173))

(assert (= (or b!7118395 bm!650172) bm!650170))

(declare-fun m!7836188 () Bool)

(assert (=> bm!650173 m!7836188))

(declare-fun m!7836190 () Bool)

(assert (=> bm!650170 m!7836190))

(declare-fun m!7836192 () Bool)

(assert (=> bm!650171 m!7836192))

(declare-fun m!7836194 () Bool)

(assert (=> bm!650168 m!7836194))

(declare-fun m!7836196 () Bool)

(assert (=> bm!650167 m!7836196))

(assert (=> b!7118354 d!2221518))

(declare-fun bm!650174 () Bool)

(declare-fun call!650182 () Int)

(declare-fun c!1328386 () Bool)

(assert (=> bm!650174 (= call!650182 (regexDepth!398 (ite c!1328386 (regOne!36467 r!11554) (regTwo!36466 r!11554))))))

(declare-fun b!7118412 () Bool)

(declare-fun e!4277291 () Bool)

(declare-fun e!4277292 () Bool)

(assert (=> b!7118412 (= e!4277291 e!4277292)))

(declare-fun res!2904095 () Bool)

(declare-fun lt!2560918 () Int)

(declare-fun call!650180 () Int)

(assert (=> b!7118412 (= res!2904095 (> lt!2560918 call!650180))))

(assert (=> b!7118412 (=> (not res!2904095) (not e!4277292))))

(declare-fun c!1328384 () Bool)

(declare-fun bm!650175 () Bool)

(declare-fun call!650181 () Int)

(assert (=> bm!650175 (= call!650181 (regexDepth!398 (ite c!1328384 (reg!18306 r!11554) (ite c!1328386 (regTwo!36467 r!11554) (regOne!36466 r!11554)))))))

(declare-fun b!7118413 () Bool)

(declare-fun e!4277298 () Bool)

(assert (=> b!7118413 (= e!4277298 e!4277291)))

(declare-fun c!1328388 () Bool)

(assert (=> b!7118413 (= c!1328388 ((_ is Union!17977) r!11554))))

(declare-fun b!7118414 () Bool)

(declare-fun res!2904096 () Bool)

(declare-fun e!4277299 () Bool)

(assert (=> b!7118414 (=> (not res!2904096) (not e!4277299))))

(declare-fun call!650185 () Int)

(assert (=> b!7118414 (= res!2904096 (> lt!2560918 call!650185))))

(declare-fun e!4277296 () Bool)

(assert (=> b!7118414 (= e!4277296 e!4277299)))

(declare-fun b!7118415 () Bool)

(declare-fun call!650179 () Int)

(assert (=> b!7118415 (= e!4277292 (> lt!2560918 call!650179))))

(declare-fun b!7118417 () Bool)

(assert (=> b!7118417 (= c!1328386 ((_ is Union!17977) r!11554))))

(declare-fun e!4277295 () Int)

(declare-fun e!4277293 () Int)

(assert (=> b!7118417 (= e!4277295 e!4277293)))

(declare-fun b!7118418 () Bool)

(declare-fun e!4277294 () Bool)

(assert (=> b!7118418 (= e!4277294 (> lt!2560918 call!650185))))

(declare-fun b!7118419 () Bool)

(declare-fun e!4277297 () Int)

(assert (=> b!7118419 (= e!4277293 e!4277297)))

(declare-fun c!1328385 () Bool)

(assert (=> b!7118419 (= c!1328385 ((_ is Concat!26822) r!11554))))

(declare-fun b!7118420 () Bool)

(assert (=> b!7118420 (= e!4277294 (= lt!2560918 1))))

(declare-fun b!7118421 () Bool)

(assert (=> b!7118421 (= e!4277295 (+ 1 call!650181))))

(declare-fun b!7118422 () Bool)

(assert (=> b!7118422 (= e!4277297 1)))

(declare-fun b!7118423 () Bool)

(declare-fun call!650183 () Int)

(assert (=> b!7118423 (= e!4277293 (+ 1 call!650183))))

(declare-fun b!7118424 () Bool)

(assert (=> b!7118424 (= e!4277291 e!4277296)))

(declare-fun c!1328390 () Bool)

(assert (=> b!7118424 (= c!1328390 ((_ is Concat!26822) r!11554))))

(declare-fun b!7118425 () Bool)

(assert (=> b!7118425 (= e!4277299 (> lt!2560918 call!650179))))

(declare-fun b!7118426 () Bool)

(declare-fun e!4277300 () Int)

(assert (=> b!7118426 (= e!4277300 e!4277295)))

(assert (=> b!7118426 (= c!1328384 ((_ is Star!17977) r!11554))))

(declare-fun d!2221522 () Bool)

(assert (=> d!2221522 e!4277298))

(declare-fun res!2904094 () Bool)

(assert (=> d!2221522 (=> (not res!2904094) (not e!4277298))))

(assert (=> d!2221522 (= res!2904094 (> lt!2560918 0))))

(assert (=> d!2221522 (= lt!2560918 e!4277300)))

(declare-fun c!1328387 () Bool)

(assert (=> d!2221522 (= c!1328387 ((_ is ElementMatch!17977) r!11554))))

(assert (=> d!2221522 (= (regexDepth!398 r!11554) lt!2560918)))

(declare-fun b!7118416 () Bool)

(assert (=> b!7118416 (= e!4277297 (+ 1 call!650183))))

(declare-fun b!7118427 () Bool)

(declare-fun c!1328389 () Bool)

(assert (=> b!7118427 (= c!1328389 ((_ is Star!17977) r!11554))))

(assert (=> b!7118427 (= e!4277296 e!4277294)))

(declare-fun b!7118428 () Bool)

(assert (=> b!7118428 (= e!4277300 1)))

(declare-fun bm!650176 () Bool)

(declare-fun call!650184 () Int)

(assert (=> bm!650176 (= call!650184 call!650181)))

(declare-fun bm!650177 () Bool)

(assert (=> bm!650177 (= call!650180 (regexDepth!398 (ite c!1328388 (regOne!36467 r!11554) (ite c!1328390 (regOne!36466 r!11554) (reg!18306 r!11554)))))))

(declare-fun bm!650178 () Bool)

(assert (=> bm!650178 (= call!650183 (maxBigInt!0 (ite c!1328386 call!650182 call!650184) (ite c!1328386 call!650184 call!650182)))))

(declare-fun bm!650179 () Bool)

(assert (=> bm!650179 (= call!650185 call!650180)))

(declare-fun bm!650180 () Bool)

(assert (=> bm!650180 (= call!650179 (regexDepth!398 (ite c!1328388 (regTwo!36467 r!11554) (regTwo!36466 r!11554))))))

(assert (= (and d!2221522 c!1328387) b!7118428))

(assert (= (and d!2221522 (not c!1328387)) b!7118426))

(assert (= (and b!7118426 c!1328384) b!7118421))

(assert (= (and b!7118426 (not c!1328384)) b!7118417))

(assert (= (and b!7118417 c!1328386) b!7118423))

(assert (= (and b!7118417 (not c!1328386)) b!7118419))

(assert (= (and b!7118419 c!1328385) b!7118416))

(assert (= (and b!7118419 (not c!1328385)) b!7118422))

(assert (= (or b!7118423 b!7118416) bm!650176))

(assert (= (or b!7118423 b!7118416) bm!650174))

(assert (= (or b!7118423 b!7118416) bm!650178))

(assert (= (or b!7118421 bm!650176) bm!650175))

(assert (= (and d!2221522 res!2904094) b!7118413))

(assert (= (and b!7118413 c!1328388) b!7118412))

(assert (= (and b!7118413 (not c!1328388)) b!7118424))

(assert (= (and b!7118412 res!2904095) b!7118415))

(assert (= (and b!7118424 c!1328390) b!7118414))

(assert (= (and b!7118424 (not c!1328390)) b!7118427))

(assert (= (and b!7118414 res!2904096) b!7118425))

(assert (= (and b!7118427 c!1328389) b!7118418))

(assert (= (and b!7118427 (not c!1328389)) b!7118420))

(assert (= (or b!7118414 b!7118418) bm!650179))

(assert (= (or b!7118415 b!7118425) bm!650180))

(assert (= (or b!7118412 bm!650179) bm!650177))

(declare-fun m!7836198 () Bool)

(assert (=> bm!650180 m!7836198))

(declare-fun m!7836200 () Bool)

(assert (=> bm!650177 m!7836200))

(declare-fun m!7836202 () Bool)

(assert (=> bm!650178 m!7836202))

(declare-fun m!7836204 () Bool)

(assert (=> bm!650175 m!7836204))

(declare-fun m!7836206 () Bool)

(assert (=> bm!650174 m!7836206))

(assert (=> b!7118354 d!2221522))

(declare-fun b!7118481 () Bool)

(declare-fun res!2904115 () Bool)

(declare-fun e!4277336 () Bool)

(assert (=> b!7118481 (=> res!2904115 e!4277336)))

(assert (=> b!7118481 (= res!2904115 (not ((_ is Concat!26822) r!11554)))))

(declare-fun e!4277338 () Bool)

(assert (=> b!7118481 (= e!4277338 e!4277336)))

(declare-fun d!2221524 () Bool)

(declare-fun res!2904113 () Bool)

(declare-fun e!4277340 () Bool)

(assert (=> d!2221524 (=> res!2904113 e!4277340)))

(assert (=> d!2221524 (= res!2904113 ((_ is ElementMatch!17977) r!11554))))

(assert (=> d!2221524 (= (validRegex!9250 r!11554) e!4277340)))

(declare-fun b!7118482 () Bool)

(declare-fun e!4277339 () Bool)

(declare-fun call!650207 () Bool)

(assert (=> b!7118482 (= e!4277339 call!650207)))

(declare-fun b!7118483 () Bool)

(declare-fun res!2904114 () Bool)

(assert (=> b!7118483 (=> (not res!2904114) (not e!4277339))))

(declare-fun call!650206 () Bool)

(assert (=> b!7118483 (= res!2904114 call!650206)))

(assert (=> b!7118483 (= e!4277338 e!4277339)))

(declare-fun bm!650201 () Bool)

(declare-fun call!650208 () Bool)

(assert (=> bm!650201 (= call!650207 call!650208)))

(declare-fun b!7118484 () Bool)

(declare-fun e!4277335 () Bool)

(assert (=> b!7118484 (= e!4277335 e!4277338)))

(declare-fun c!1328409 () Bool)

(assert (=> b!7118484 (= c!1328409 ((_ is Union!17977) r!11554))))

(declare-fun bm!650202 () Bool)

(assert (=> bm!650202 (= call!650206 (validRegex!9250 (ite c!1328409 (regOne!36467 r!11554) (regTwo!36466 r!11554))))))

(declare-fun b!7118485 () Bool)

(declare-fun e!4277341 () Bool)

(assert (=> b!7118485 (= e!4277336 e!4277341)))

(declare-fun res!2904117 () Bool)

(assert (=> b!7118485 (=> (not res!2904117) (not e!4277341))))

(assert (=> b!7118485 (= res!2904117 call!650207)))

(declare-fun b!7118486 () Bool)

(declare-fun e!4277337 () Bool)

(assert (=> b!7118486 (= e!4277337 call!650208)))

(declare-fun b!7118487 () Bool)

(assert (=> b!7118487 (= e!4277335 e!4277337)))

(declare-fun res!2904116 () Bool)

(assert (=> b!7118487 (= res!2904116 (not (nullable!7614 (reg!18306 r!11554))))))

(assert (=> b!7118487 (=> (not res!2904116) (not e!4277337))))

(declare-fun bm!650203 () Bool)

(declare-fun c!1328410 () Bool)

(assert (=> bm!650203 (= call!650208 (validRegex!9250 (ite c!1328410 (reg!18306 r!11554) (ite c!1328409 (regTwo!36467 r!11554) (regOne!36466 r!11554)))))))

(declare-fun b!7118488 () Bool)

(assert (=> b!7118488 (= e!4277341 call!650206)))

(declare-fun b!7118489 () Bool)

(assert (=> b!7118489 (= e!4277340 e!4277335)))

(assert (=> b!7118489 (= c!1328410 ((_ is Star!17977) r!11554))))

(assert (= (and d!2221524 (not res!2904113)) b!7118489))

(assert (= (and b!7118489 c!1328410) b!7118487))

(assert (= (and b!7118489 (not c!1328410)) b!7118484))

(assert (= (and b!7118487 res!2904116) b!7118486))

(assert (= (and b!7118484 c!1328409) b!7118483))

(assert (= (and b!7118484 (not c!1328409)) b!7118481))

(assert (= (and b!7118483 res!2904114) b!7118482))

(assert (= (and b!7118481 (not res!2904115)) b!7118485))

(assert (= (and b!7118485 res!2904117) b!7118488))

(assert (= (or b!7118483 b!7118488) bm!650202))

(assert (= (or b!7118482 b!7118485) bm!650201))

(assert (= (or b!7118486 bm!650201) bm!650203))

(declare-fun m!7836208 () Bool)

(assert (=> bm!650202 m!7836208))

(declare-fun m!7836210 () Bool)

(assert (=> b!7118487 m!7836210))

(declare-fun m!7836212 () Bool)

(assert (=> bm!650203 m!7836212))

(assert (=> b!7118349 d!2221524))

(declare-fun b!7118538 () Bool)

(declare-fun res!2904131 () Bool)

(declare-fun e!4277369 () Bool)

(assert (=> b!7118538 (=> (not res!2904131) (not e!4277369))))

(declare-fun lt!2560925 () List!68938)

(declare-fun size!41423 (List!68938) Int)

(assert (=> b!7118538 (= res!2904131 (= (size!41423 lt!2560925) (+ (size!41423 (exprs!7471 c!9994)) (size!41423 (exprs!7471 auxCtx!45)))))))

(declare-fun b!7118537 () Bool)

(declare-fun e!4277368 () List!68938)

(assert (=> b!7118537 (= e!4277368 (Cons!68814 (h!75262 (exprs!7471 c!9994)) (++!16129 (t!382793 (exprs!7471 c!9994)) (exprs!7471 auxCtx!45))))))

(declare-fun b!7118539 () Bool)

(assert (=> b!7118539 (= e!4277369 (or (not (= (exprs!7471 auxCtx!45) Nil!68814)) (= lt!2560925 (exprs!7471 c!9994))))))

(declare-fun d!2221526 () Bool)

(assert (=> d!2221526 e!4277369))

(declare-fun res!2904130 () Bool)

(assert (=> d!2221526 (=> (not res!2904130) (not e!4277369))))

(declare-fun content!14048 (List!68938) (InoxSet Regex!17977))

(assert (=> d!2221526 (= res!2904130 (= (content!14048 lt!2560925) ((_ map or) (content!14048 (exprs!7471 c!9994)) (content!14048 (exprs!7471 auxCtx!45)))))))

(assert (=> d!2221526 (= lt!2560925 e!4277368)))

(declare-fun c!1328427 () Bool)

(assert (=> d!2221526 (= c!1328427 ((_ is Nil!68814) (exprs!7471 c!9994)))))

(assert (=> d!2221526 (= (++!16129 (exprs!7471 c!9994) (exprs!7471 auxCtx!45)) lt!2560925)))

(declare-fun b!7118536 () Bool)

(assert (=> b!7118536 (= e!4277368 (exprs!7471 auxCtx!45))))

(assert (= (and d!2221526 c!1328427) b!7118536))

(assert (= (and d!2221526 (not c!1328427)) b!7118537))

(assert (= (and d!2221526 res!2904130) b!7118538))

(assert (= (and b!7118538 res!2904131) b!7118539))

(declare-fun m!7836234 () Bool)

(assert (=> b!7118538 m!7836234))

(declare-fun m!7836236 () Bool)

(assert (=> b!7118538 m!7836236))

(declare-fun m!7836238 () Bool)

(assert (=> b!7118538 m!7836238))

(declare-fun m!7836240 () Bool)

(assert (=> b!7118537 m!7836240))

(declare-fun m!7836242 () Bool)

(assert (=> d!2221526 m!7836242))

(declare-fun m!7836244 () Bool)

(assert (=> d!2221526 m!7836244))

(declare-fun m!7836246 () Bool)

(assert (=> d!2221526 m!7836246))

(assert (=> b!7118349 d!2221526))

(declare-fun d!2221532 () Bool)

(declare-fun forall!16864 (List!68938 Int) Bool)

(assert (=> d!2221532 (forall!16864 (++!16129 (exprs!7471 c!9994) (exprs!7471 auxCtx!45)) lambda!432501)))

(declare-fun lt!2560928 () Unit!162625)

(declare-fun choose!54898 (List!68938 List!68938 Int) Unit!162625)

(assert (=> d!2221532 (= lt!2560928 (choose!54898 (exprs!7471 c!9994) (exprs!7471 auxCtx!45) lambda!432501))))

(assert (=> d!2221532 (forall!16864 (exprs!7471 c!9994) lambda!432501)))

(assert (=> d!2221532 (= (lemmaConcatPreservesForall!1262 (exprs!7471 c!9994) (exprs!7471 auxCtx!45) lambda!432501) lt!2560928)))

(declare-fun bs!1885683 () Bool)

(assert (= bs!1885683 d!2221532))

(assert (=> bs!1885683 m!7836184))

(assert (=> bs!1885683 m!7836184))

(declare-fun m!7836248 () Bool)

(assert (=> bs!1885683 m!7836248))

(declare-fun m!7836250 () Bool)

(assert (=> bs!1885683 m!7836250))

(declare-fun m!7836252 () Bool)

(assert (=> bs!1885683 m!7836252))

(assert (=> b!7118349 d!2221532))

(assert (=> start!692796 d!2221524))

(declare-fun bs!1885684 () Bool)

(declare-fun d!2221534 () Bool)

(assert (= bs!1885684 (and d!2221534 b!7118349)))

(declare-fun lambda!432504 () Int)

(assert (=> bs!1885684 (= lambda!432504 lambda!432501)))

(assert (=> d!2221534 (= (inv!87805 c!9994) (forall!16864 (exprs!7471 c!9994) lambda!432504))))

(declare-fun bs!1885685 () Bool)

(assert (= bs!1885685 d!2221534))

(declare-fun m!7836266 () Bool)

(assert (=> bs!1885685 m!7836266))

(assert (=> start!692796 d!2221534))

(declare-fun bs!1885686 () Bool)

(declare-fun d!2221540 () Bool)

(assert (= bs!1885686 (and d!2221540 b!7118349)))

(declare-fun lambda!432505 () Int)

(assert (=> bs!1885686 (= lambda!432505 lambda!432501)))

(declare-fun bs!1885687 () Bool)

(assert (= bs!1885687 (and d!2221540 d!2221534)))

(assert (=> bs!1885687 (= lambda!432505 lambda!432504)))

(assert (=> d!2221540 (= (inv!87805 auxCtx!45) (forall!16864 (exprs!7471 auxCtx!45) lambda!432505))))

(declare-fun bs!1885688 () Bool)

(assert (= bs!1885688 d!2221540))

(declare-fun m!7836268 () Bool)

(assert (=> bs!1885688 m!7836268))

(assert (=> start!692796 d!2221540))

(declare-fun b!7118572 () Bool)

(declare-fun res!2904152 () Bool)

(declare-fun e!4277397 () Bool)

(assert (=> b!7118572 (=> res!2904152 e!4277397)))

(assert (=> b!7118572 (= res!2904152 (not ((_ is Concat!26822) (reg!18306 r!11554))))))

(declare-fun e!4277399 () Bool)

(assert (=> b!7118572 (= e!4277399 e!4277397)))

(declare-fun d!2221542 () Bool)

(declare-fun res!2904150 () Bool)

(declare-fun e!4277401 () Bool)

(assert (=> d!2221542 (=> res!2904150 e!4277401)))

(assert (=> d!2221542 (= res!2904150 ((_ is ElementMatch!17977) (reg!18306 r!11554)))))

(assert (=> d!2221542 (= (validRegex!9250 (reg!18306 r!11554)) e!4277401)))

(declare-fun b!7118573 () Bool)

(declare-fun e!4277400 () Bool)

(declare-fun call!650236 () Bool)

(assert (=> b!7118573 (= e!4277400 call!650236)))

(declare-fun b!7118574 () Bool)

(declare-fun res!2904151 () Bool)

(assert (=> b!7118574 (=> (not res!2904151) (not e!4277400))))

(declare-fun call!650235 () Bool)

(assert (=> b!7118574 (= res!2904151 call!650235)))

(assert (=> b!7118574 (= e!4277399 e!4277400)))

(declare-fun bm!650230 () Bool)

(declare-fun call!650237 () Bool)

(assert (=> bm!650230 (= call!650236 call!650237)))

(declare-fun b!7118575 () Bool)

(declare-fun e!4277396 () Bool)

(assert (=> b!7118575 (= e!4277396 e!4277399)))

(declare-fun c!1328436 () Bool)

(assert (=> b!7118575 (= c!1328436 ((_ is Union!17977) (reg!18306 r!11554)))))

(declare-fun bm!650231 () Bool)

(assert (=> bm!650231 (= call!650235 (validRegex!9250 (ite c!1328436 (regOne!36467 (reg!18306 r!11554)) (regTwo!36466 (reg!18306 r!11554)))))))

(declare-fun b!7118576 () Bool)

(declare-fun e!4277402 () Bool)

(assert (=> b!7118576 (= e!4277397 e!4277402)))

(declare-fun res!2904154 () Bool)

(assert (=> b!7118576 (=> (not res!2904154) (not e!4277402))))

(assert (=> b!7118576 (= res!2904154 call!650236)))

(declare-fun b!7118577 () Bool)

(declare-fun e!4277398 () Bool)

(assert (=> b!7118577 (= e!4277398 call!650237)))

(declare-fun b!7118578 () Bool)

(assert (=> b!7118578 (= e!4277396 e!4277398)))

(declare-fun res!2904153 () Bool)

(assert (=> b!7118578 (= res!2904153 (not (nullable!7614 (reg!18306 (reg!18306 r!11554)))))))

(assert (=> b!7118578 (=> (not res!2904153) (not e!4277398))))

(declare-fun c!1328437 () Bool)

(declare-fun bm!650232 () Bool)

(assert (=> bm!650232 (= call!650237 (validRegex!9250 (ite c!1328437 (reg!18306 (reg!18306 r!11554)) (ite c!1328436 (regTwo!36467 (reg!18306 r!11554)) (regOne!36466 (reg!18306 r!11554))))))))

(declare-fun b!7118579 () Bool)

(assert (=> b!7118579 (= e!4277402 call!650235)))

(declare-fun b!7118580 () Bool)

(assert (=> b!7118580 (= e!4277401 e!4277396)))

(assert (=> b!7118580 (= c!1328437 ((_ is Star!17977) (reg!18306 r!11554)))))

(assert (= (and d!2221542 (not res!2904150)) b!7118580))

(assert (= (and b!7118580 c!1328437) b!7118578))

(assert (= (and b!7118580 (not c!1328437)) b!7118575))

(assert (= (and b!7118578 res!2904153) b!7118577))

(assert (= (and b!7118575 c!1328436) b!7118574))

(assert (= (and b!7118575 (not c!1328436)) b!7118572))

(assert (= (and b!7118574 res!2904151) b!7118573))

(assert (= (and b!7118572 (not res!2904152)) b!7118576))

(assert (= (and b!7118576 res!2904154) b!7118579))

(assert (= (or b!7118574 b!7118579) bm!650231))

(assert (= (or b!7118573 b!7118576) bm!650230))

(assert (= (or b!7118577 bm!650230) bm!650232))

(declare-fun m!7836270 () Bool)

(assert (=> bm!650231 m!7836270))

(declare-fun m!7836272 () Bool)

(assert (=> b!7118578 m!7836272))

(declare-fun m!7836274 () Bool)

(assert (=> bm!650232 m!7836274))

(assert (=> b!7118355 d!2221542))

(declare-fun b!7118615 () Bool)

(declare-fun c!1328454 () Bool)

(assert (=> b!7118615 (= c!1328454 ((_ is Star!17977) r!11554))))

(declare-fun e!4277425 () (InoxSet Context!13942))

(declare-fun e!4277422 () (InoxSet Context!13942))

(assert (=> b!7118615 (= e!4277425 e!4277422)))

(declare-fun b!7118616 () Bool)

(declare-fun e!4277424 () (InoxSet Context!13942))

(declare-fun call!650254 () (InoxSet Context!13942))

(declare-fun call!650252 () (InoxSet Context!13942))

(assert (=> b!7118616 (= e!4277424 ((_ map or) call!650254 call!650252))))

(declare-fun d!2221544 () Bool)

(declare-fun c!1328453 () Bool)

(assert (=> d!2221544 (= c!1328453 (and ((_ is ElementMatch!17977) r!11554) (= (c!1328362 r!11554) a!1901)))))

(declare-fun e!4277426 () (InoxSet Context!13942))

(assert (=> d!2221544 (= (derivationStepZipperDown!2474 r!11554 (Context!13943 lt!2560914) a!1901) e!4277426)))

(declare-fun b!7118617 () Bool)

(declare-fun e!4277423 () (InoxSet Context!13942))

(assert (=> b!7118617 (= e!4277426 e!4277423)))

(declare-fun c!1328451 () Bool)

(assert (=> b!7118617 (= c!1328451 ((_ is Union!17977) r!11554))))

(declare-fun b!7118618 () Bool)

(declare-fun e!4277421 () Bool)

(assert (=> b!7118618 (= e!4277421 (nullable!7614 (regOne!36466 r!11554)))))

(declare-fun bm!650245 () Bool)

(declare-fun call!650255 () (InoxSet Context!13942))

(assert (=> bm!650245 (= call!650252 call!650255)))

(declare-fun b!7118619 () Bool)

(assert (=> b!7118619 (= e!4277426 (store ((as const (Array Context!13942 Bool)) false) (Context!13943 lt!2560914) true))))

(declare-fun b!7118620 () Bool)

(assert (=> b!7118620 (= e!4277423 ((_ map or) call!650254 call!650255))))

(declare-fun bm!650246 () Bool)

(declare-fun call!650253 () (InoxSet Context!13942))

(assert (=> bm!650246 (= call!650253 call!650252)))

(declare-fun b!7118621 () Bool)

(assert (=> b!7118621 (= e!4277424 e!4277425)))

(declare-fun c!1328452 () Bool)

(assert (=> b!7118621 (= c!1328452 ((_ is Concat!26822) r!11554))))

(declare-fun call!650251 () List!68938)

(declare-fun bm!650247 () Bool)

(assert (=> bm!650247 (= call!650254 (derivationStepZipperDown!2474 (ite c!1328451 (regOne!36467 r!11554) (regOne!36466 r!11554)) (ite c!1328451 (Context!13943 lt!2560914) (Context!13943 call!650251)) a!1901))))

(declare-fun b!7118622 () Bool)

(assert (=> b!7118622 (= e!4277422 call!650253)))

(declare-fun bm!650248 () Bool)

(declare-fun c!1328455 () Bool)

(assert (=> bm!650248 (= call!650251 ($colon$colon!2821 (exprs!7471 (Context!13943 lt!2560914)) (ite (or c!1328455 c!1328452) (regTwo!36466 r!11554) r!11554)))))

(declare-fun b!7118623 () Bool)

(assert (=> b!7118623 (= c!1328455 e!4277421)))

(declare-fun res!2904163 () Bool)

(assert (=> b!7118623 (=> (not res!2904163) (not e!4277421))))

(assert (=> b!7118623 (= res!2904163 ((_ is Concat!26822) r!11554))))

(assert (=> b!7118623 (= e!4277423 e!4277424)))

(declare-fun b!7118624 () Bool)

(assert (=> b!7118624 (= e!4277425 call!650253)))

(declare-fun bm!650249 () Bool)

(declare-fun call!650250 () List!68938)

(assert (=> bm!650249 (= call!650255 (derivationStepZipperDown!2474 (ite c!1328451 (regTwo!36467 r!11554) (ite c!1328455 (regTwo!36466 r!11554) (ite c!1328452 (regOne!36466 r!11554) (reg!18306 r!11554)))) (ite (or c!1328451 c!1328455) (Context!13943 lt!2560914) (Context!13943 call!650250)) a!1901))))

(declare-fun b!7118625 () Bool)

(assert (=> b!7118625 (= e!4277422 ((as const (Array Context!13942 Bool)) false))))

(declare-fun bm!650250 () Bool)

(assert (=> bm!650250 (= call!650250 call!650251)))

(assert (= (and d!2221544 c!1328453) b!7118619))

(assert (= (and d!2221544 (not c!1328453)) b!7118617))

(assert (= (and b!7118617 c!1328451) b!7118620))

(assert (= (and b!7118617 (not c!1328451)) b!7118623))

(assert (= (and b!7118623 res!2904163) b!7118618))

(assert (= (and b!7118623 c!1328455) b!7118616))

(assert (= (and b!7118623 (not c!1328455)) b!7118621))

(assert (= (and b!7118621 c!1328452) b!7118624))

(assert (= (and b!7118621 (not c!1328452)) b!7118615))

(assert (= (and b!7118615 c!1328454) b!7118622))

(assert (= (and b!7118615 (not c!1328454)) b!7118625))

(assert (= (or b!7118624 b!7118622) bm!650250))

(assert (= (or b!7118624 b!7118622) bm!650246))

(assert (= (or b!7118616 bm!650246) bm!650245))

(assert (= (or b!7118616 bm!650250) bm!650248))

(assert (= (or b!7118620 bm!650245) bm!650249))

(assert (= (or b!7118620 b!7118616) bm!650247))

(declare-fun m!7836302 () Bool)

(assert (=> b!7118619 m!7836302))

(declare-fun m!7836304 () Bool)

(assert (=> bm!650249 m!7836304))

(declare-fun m!7836306 () Bool)

(assert (=> bm!650247 m!7836306))

(assert (=> b!7118618 m!7836182))

(declare-fun m!7836308 () Bool)

(assert (=> bm!650248 m!7836308))

(assert (=> b!7118352 d!2221544))

(declare-fun b!7118638 () Bool)

(declare-fun c!1328465 () Bool)

(assert (=> b!7118638 (= c!1328465 ((_ is Star!17977) (reg!18306 r!11554)))))

(declare-fun e!4277437 () (InoxSet Context!13942))

(declare-fun e!4277432 () (InoxSet Context!13942))

(assert (=> b!7118638 (= e!4277437 e!4277432)))

(declare-fun b!7118639 () Bool)

(declare-fun e!4277435 () (InoxSet Context!13942))

(declare-fun call!650260 () (InoxSet Context!13942))

(declare-fun call!650258 () (InoxSet Context!13942))

(assert (=> b!7118639 (= e!4277435 ((_ map or) call!650260 call!650258))))

(declare-fun d!2221556 () Bool)

(declare-fun c!1328462 () Bool)

(assert (=> d!2221556 (= c!1328462 (and ((_ is ElementMatch!17977) (reg!18306 r!11554)) (= (c!1328362 (reg!18306 r!11554)) a!1901)))))

(declare-fun e!4277438 () (InoxSet Context!13942))

(assert (=> d!2221556 (= (derivationStepZipperDown!2474 (reg!18306 r!11554) (Context!13943 ($colon$colon!2821 lt!2560914 r!11554)) a!1901) e!4277438)))

(declare-fun b!7118640 () Bool)

(declare-fun e!4277433 () (InoxSet Context!13942))

(assert (=> b!7118640 (= e!4277438 e!4277433)))

(declare-fun c!1328460 () Bool)

(assert (=> b!7118640 (= c!1328460 ((_ is Union!17977) (reg!18306 r!11554)))))

(declare-fun b!7118641 () Bool)

(declare-fun e!4277431 () Bool)

(assert (=> b!7118641 (= e!4277431 (nullable!7614 (regOne!36466 (reg!18306 r!11554))))))

(declare-fun bm!650251 () Bool)

(declare-fun call!650261 () (InoxSet Context!13942))

(assert (=> bm!650251 (= call!650258 call!650261)))

(declare-fun b!7118642 () Bool)

(assert (=> b!7118642 (= e!4277438 (store ((as const (Array Context!13942 Bool)) false) (Context!13943 ($colon$colon!2821 lt!2560914 r!11554)) true))))

(declare-fun b!7118643 () Bool)

(assert (=> b!7118643 (= e!4277433 ((_ map or) call!650260 call!650261))))

(declare-fun bm!650252 () Bool)

(declare-fun call!650259 () (InoxSet Context!13942))

(assert (=> bm!650252 (= call!650259 call!650258)))

(declare-fun b!7118644 () Bool)

(assert (=> b!7118644 (= e!4277435 e!4277437)))

(declare-fun c!1328461 () Bool)

(assert (=> b!7118644 (= c!1328461 ((_ is Concat!26822) (reg!18306 r!11554)))))

(declare-fun call!650257 () List!68938)

(declare-fun bm!650253 () Bool)

(assert (=> bm!650253 (= call!650260 (derivationStepZipperDown!2474 (ite c!1328460 (regOne!36467 (reg!18306 r!11554)) (regOne!36466 (reg!18306 r!11554))) (ite c!1328460 (Context!13943 ($colon$colon!2821 lt!2560914 r!11554)) (Context!13943 call!650257)) a!1901))))

(declare-fun b!7118645 () Bool)

(assert (=> b!7118645 (= e!4277432 call!650259)))

(declare-fun c!1328466 () Bool)

(declare-fun bm!650254 () Bool)

(assert (=> bm!650254 (= call!650257 ($colon$colon!2821 (exprs!7471 (Context!13943 ($colon$colon!2821 lt!2560914 r!11554))) (ite (or c!1328466 c!1328461) (regTwo!36466 (reg!18306 r!11554)) (reg!18306 r!11554))))))

(declare-fun b!7118648 () Bool)

(assert (=> b!7118648 (= c!1328466 e!4277431)))

(declare-fun res!2904164 () Bool)

(assert (=> b!7118648 (=> (not res!2904164) (not e!4277431))))

(assert (=> b!7118648 (= res!2904164 ((_ is Concat!26822) (reg!18306 r!11554)))))

(assert (=> b!7118648 (= e!4277433 e!4277435)))

(declare-fun b!7118649 () Bool)

(assert (=> b!7118649 (= e!4277437 call!650259)))

(declare-fun bm!650255 () Bool)

(declare-fun call!650256 () List!68938)

(assert (=> bm!650255 (= call!650261 (derivationStepZipperDown!2474 (ite c!1328460 (regTwo!36467 (reg!18306 r!11554)) (ite c!1328466 (regTwo!36466 (reg!18306 r!11554)) (ite c!1328461 (regOne!36466 (reg!18306 r!11554)) (reg!18306 (reg!18306 r!11554))))) (ite (or c!1328460 c!1328466) (Context!13943 ($colon$colon!2821 lt!2560914 r!11554)) (Context!13943 call!650256)) a!1901))))

(declare-fun b!7118650 () Bool)

(assert (=> b!7118650 (= e!4277432 ((as const (Array Context!13942 Bool)) false))))

(declare-fun bm!650256 () Bool)

(assert (=> bm!650256 (= call!650256 call!650257)))

(assert (= (and d!2221556 c!1328462) b!7118642))

(assert (= (and d!2221556 (not c!1328462)) b!7118640))

(assert (= (and b!7118640 c!1328460) b!7118643))

(assert (= (and b!7118640 (not c!1328460)) b!7118648))

(assert (= (and b!7118648 res!2904164) b!7118641))

(assert (= (and b!7118648 c!1328466) b!7118639))

(assert (= (and b!7118648 (not c!1328466)) b!7118644))

(assert (= (and b!7118644 c!1328461) b!7118649))

(assert (= (and b!7118644 (not c!1328461)) b!7118638))

(assert (= (and b!7118638 c!1328465) b!7118645))

(assert (= (and b!7118638 (not c!1328465)) b!7118650))

(assert (= (or b!7118649 b!7118645) bm!650256))

(assert (= (or b!7118649 b!7118645) bm!650252))

(assert (= (or b!7118639 bm!650252) bm!650251))

(assert (= (or b!7118639 bm!650256) bm!650254))

(assert (= (or b!7118643 bm!650251) bm!650255))

(assert (= (or b!7118643 b!7118639) bm!650253))

(declare-fun m!7836310 () Bool)

(assert (=> b!7118642 m!7836310))

(declare-fun m!7836312 () Bool)

(assert (=> bm!650255 m!7836312))

(declare-fun m!7836314 () Bool)

(assert (=> bm!650253 m!7836314))

(declare-fun m!7836316 () Bool)

(assert (=> b!7118641 m!7836316))

(declare-fun m!7836318 () Bool)

(assert (=> bm!650254 m!7836318))

(assert (=> b!7118352 d!2221556))

(declare-fun d!2221558 () Bool)

(assert (=> d!2221558 (= ($colon$colon!2821 lt!2560914 r!11554) (Cons!68814 r!11554 lt!2560914))))

(assert (=> b!7118352 d!2221558))

(declare-fun d!2221560 () Bool)

(declare-fun nullableFct!2955 (Regex!17977) Bool)

(assert (=> d!2221560 (= (nullable!7614 (regOne!36466 r!11554)) (nullableFct!2955 (regOne!36466 r!11554)))))

(declare-fun bs!1885696 () Bool)

(assert (= bs!1885696 d!2221560))

(declare-fun m!7836320 () Bool)

(assert (=> bs!1885696 m!7836320))

(assert (=> b!7118347 d!2221560))

(declare-fun b!7118672 () Bool)

(declare-fun e!4277447 () Bool)

(declare-fun tp!1959585 () Bool)

(declare-fun tp!1959584 () Bool)

(assert (=> b!7118672 (= e!4277447 (and tp!1959585 tp!1959584))))

(declare-fun b!7118670 () Bool)

(declare-fun tp!1959582 () Bool)

(declare-fun tp!1959581 () Bool)

(assert (=> b!7118670 (= e!4277447 (and tp!1959582 tp!1959581))))

(declare-fun b!7118671 () Bool)

(declare-fun tp!1959583 () Bool)

(assert (=> b!7118671 (= e!4277447 tp!1959583)))

(assert (=> b!7118359 (= tp!1959568 e!4277447)))

(declare-fun b!7118669 () Bool)

(assert (=> b!7118669 (= e!4277447 tp_is_empty!45187)))

(assert (= (and b!7118359 ((_ is ElementMatch!17977) (regOne!36467 r!11554))) b!7118669))

(assert (= (and b!7118359 ((_ is Concat!26822) (regOne!36467 r!11554))) b!7118670))

(assert (= (and b!7118359 ((_ is Star!17977) (regOne!36467 r!11554))) b!7118671))

(assert (= (and b!7118359 ((_ is Union!17977) (regOne!36467 r!11554))) b!7118672))

(declare-fun b!7118676 () Bool)

(declare-fun e!4277448 () Bool)

(declare-fun tp!1959590 () Bool)

(declare-fun tp!1959589 () Bool)

(assert (=> b!7118676 (= e!4277448 (and tp!1959590 tp!1959589))))

(declare-fun b!7118674 () Bool)

(declare-fun tp!1959587 () Bool)

(declare-fun tp!1959586 () Bool)

(assert (=> b!7118674 (= e!4277448 (and tp!1959587 tp!1959586))))

(declare-fun b!7118675 () Bool)

(declare-fun tp!1959588 () Bool)

(assert (=> b!7118675 (= e!4277448 tp!1959588)))

(assert (=> b!7118359 (= tp!1959564 e!4277448)))

(declare-fun b!7118673 () Bool)

(assert (=> b!7118673 (= e!4277448 tp_is_empty!45187)))

(assert (= (and b!7118359 ((_ is ElementMatch!17977) (regTwo!36467 r!11554))) b!7118673))

(assert (= (and b!7118359 ((_ is Concat!26822) (regTwo!36467 r!11554))) b!7118674))

(assert (= (and b!7118359 ((_ is Star!17977) (regTwo!36467 r!11554))) b!7118675))

(assert (= (and b!7118359 ((_ is Union!17977) (regTwo!36467 r!11554))) b!7118676))

(declare-fun b!7118680 () Bool)

(declare-fun e!4277449 () Bool)

(declare-fun tp!1959595 () Bool)

(declare-fun tp!1959594 () Bool)

(assert (=> b!7118680 (= e!4277449 (and tp!1959595 tp!1959594))))

(declare-fun b!7118678 () Bool)

(declare-fun tp!1959592 () Bool)

(declare-fun tp!1959591 () Bool)

(assert (=> b!7118678 (= e!4277449 (and tp!1959592 tp!1959591))))

(declare-fun b!7118679 () Bool)

(declare-fun tp!1959593 () Bool)

(assert (=> b!7118679 (= e!4277449 tp!1959593)))

(assert (=> b!7118350 (= tp!1959567 e!4277449)))

(declare-fun b!7118677 () Bool)

(assert (=> b!7118677 (= e!4277449 tp_is_empty!45187)))

(assert (= (and b!7118350 ((_ is ElementMatch!17977) (regOne!36466 r!11554))) b!7118677))

(assert (= (and b!7118350 ((_ is Concat!26822) (regOne!36466 r!11554))) b!7118678))

(assert (= (and b!7118350 ((_ is Star!17977) (regOne!36466 r!11554))) b!7118679))

(assert (= (and b!7118350 ((_ is Union!17977) (regOne!36466 r!11554))) b!7118680))

(declare-fun b!7118684 () Bool)

(declare-fun e!4277450 () Bool)

(declare-fun tp!1959600 () Bool)

(declare-fun tp!1959599 () Bool)

(assert (=> b!7118684 (= e!4277450 (and tp!1959600 tp!1959599))))

(declare-fun b!7118682 () Bool)

(declare-fun tp!1959597 () Bool)

(declare-fun tp!1959596 () Bool)

(assert (=> b!7118682 (= e!4277450 (and tp!1959597 tp!1959596))))

(declare-fun b!7118683 () Bool)

(declare-fun tp!1959598 () Bool)

(assert (=> b!7118683 (= e!4277450 tp!1959598)))

(assert (=> b!7118350 (= tp!1959565 e!4277450)))

(declare-fun b!7118681 () Bool)

(assert (=> b!7118681 (= e!4277450 tp_is_empty!45187)))

(assert (= (and b!7118350 ((_ is ElementMatch!17977) (regTwo!36466 r!11554))) b!7118681))

(assert (= (and b!7118350 ((_ is Concat!26822) (regTwo!36466 r!11554))) b!7118682))

(assert (= (and b!7118350 ((_ is Star!17977) (regTwo!36466 r!11554))) b!7118683))

(assert (= (and b!7118350 ((_ is Union!17977) (regTwo!36466 r!11554))) b!7118684))

(declare-fun b!7118688 () Bool)

(declare-fun e!4277451 () Bool)

(declare-fun tp!1959605 () Bool)

(declare-fun tp!1959604 () Bool)

(assert (=> b!7118688 (= e!4277451 (and tp!1959605 tp!1959604))))

(declare-fun b!7118686 () Bool)

(declare-fun tp!1959602 () Bool)

(declare-fun tp!1959601 () Bool)

(assert (=> b!7118686 (= e!4277451 (and tp!1959602 tp!1959601))))

(declare-fun b!7118687 () Bool)

(declare-fun tp!1959603 () Bool)

(assert (=> b!7118687 (= e!4277451 tp!1959603)))

(assert (=> b!7118356 (= tp!1959566 e!4277451)))

(declare-fun b!7118685 () Bool)

(assert (=> b!7118685 (= e!4277451 tp_is_empty!45187)))

(assert (= (and b!7118356 ((_ is ElementMatch!17977) (reg!18306 r!11554))) b!7118685))

(assert (= (and b!7118356 ((_ is Concat!26822) (reg!18306 r!11554))) b!7118686))

(assert (= (and b!7118356 ((_ is Star!17977) (reg!18306 r!11554))) b!7118687))

(assert (= (and b!7118356 ((_ is Union!17977) (reg!18306 r!11554))) b!7118688))

(declare-fun b!7118693 () Bool)

(declare-fun e!4277454 () Bool)

(declare-fun tp!1959610 () Bool)

(declare-fun tp!1959611 () Bool)

(assert (=> b!7118693 (= e!4277454 (and tp!1959610 tp!1959611))))

(assert (=> b!7118357 (= tp!1959569 e!4277454)))

(assert (= (and b!7118357 ((_ is Cons!68814) (exprs!7471 auxCtx!45))) b!7118693))

(declare-fun b!7118694 () Bool)

(declare-fun e!4277455 () Bool)

(declare-fun tp!1959612 () Bool)

(declare-fun tp!1959613 () Bool)

(assert (=> b!7118694 (= e!4277455 (and tp!1959612 tp!1959613))))

(assert (=> b!7118358 (= tp!1959570 e!4277455)))

(assert (= (and b!7118358 ((_ is Cons!68814) (exprs!7471 c!9994))) b!7118694))

(check-sat (not d!2221560) (not bm!650249) (not bm!650173) (not d!2221526) (not b!7118671) (not b!7118674) (not b!7118680) (not b!7118686) (not bm!650178) (not b!7118676) (not bm!650255) (not d!2221540) (not b!7118538) (not bm!650254) (not bm!650248) (not d!2221532) (not bm!650202) (not b!7118672) (not bm!650168) (not b!7118670) (not b!7118694) (not bm!650170) (not bm!650174) (not b!7118618) (not bm!650167) (not b!7118537) (not b!7118687) (not d!2221534) (not bm!650175) (not bm!650177) (not bm!650231) (not b!7118678) (not bm!650203) (not bm!650232) (not b!7118675) tp_is_empty!45187 (not b!7118641) (not b!7118693) (not bm!650247) (not b!7118578) (not b!7118684) (not b!7118679) (not b!7118682) (not b!7118487) (not bm!650171) (not bm!650180) (not b!7118688) (not bm!650253) (not b!7118683))
(check-sat)
