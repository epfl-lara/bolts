; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!107364 () Bool)

(assert start!107364)

(declare-datatypes ((T!22244 0))(
  ( (T!22245 (val!3954 Int)) )
))
(declare-datatypes ((List!12133 0))(
  ( (Nil!12109) (Cons!12109 (h!17510 T!22244) (t!112549 List!12133)) )
))
(declare-fun l!2744 () List!12133)

(declare-fun from!613 () Int)

(declare-fun lt!412140 () Int)

(declare-fun r!2028 () List!12133)

(declare-fun until!61 () Int)

(declare-fun bm!84164 () Bool)

(declare-fun call!84169 () List!12133)

(declare-fun c!201179 () Bool)

(declare-fun slice!517 (List!12133 Int Int) List!12133)

(assert (=> bm!84164 (= call!84169 (slice!517 (ite c!201179 r!2028 l!2744) (ite c!201179 (- from!613 lt!412140) from!613) (ite c!201179 (- until!61 lt!412140) lt!412140)))))

(declare-fun b!1205148 () Bool)

(declare-fun e!773213 () Bool)

(declare-fun tp_is_empty!6111 () Bool)

(declare-fun tp!341965 () Bool)

(assert (=> b!1205148 (= e!773213 (and tp_is_empty!6111 tp!341965))))

(declare-fun b!1205150 () Bool)

(declare-fun e!773212 () List!12133)

(declare-fun call!84170 () List!12133)

(assert (=> b!1205150 (= e!773212 call!84170)))

(declare-fun b!1205151 () Bool)

(declare-fun e!773211 () Bool)

(declare-fun lt!412139 () List!12133)

(assert (=> b!1205151 (= e!773211 (not (= lt!412139 e!773212)))))

(declare-fun c!201180 () Bool)

(assert (=> b!1205151 (= c!201180 (<= until!61 lt!412140))))

(declare-fun b!1205152 () Bool)

(declare-fun res!542801 () Bool)

(declare-fun e!773209 () Bool)

(assert (=> b!1205152 (=> (not res!542801) (not e!773209))))

(assert (=> b!1205152 (= res!542801 (or (= l!2744 Nil!12109) (= r!2028 Nil!12109)))))

(declare-fun b!1205153 () Bool)

(assert (=> b!1205153 (= e!773211 (not (= lt!412139 call!84169)))))

(declare-fun b!1205154 () Bool)

(declare-fun ++!3131 (List!12133 List!12133) List!12133)

(assert (=> b!1205154 (= e!773212 (++!3131 call!84169 call!84170))))

(declare-fun bm!84165 () Bool)

(assert (=> bm!84165 (= call!84170 (slice!517 (ite c!201180 l!2744 r!2028) (ite c!201180 from!613 0) (ite c!201180 until!61 (- until!61 lt!412140))))))

(declare-fun res!542802 () Bool)

(declare-fun e!773210 () Bool)

(assert (=> start!107364 (=> (not res!542802) (not e!773210))))

(assert (=> start!107364 (= res!542802 (and (<= 0 from!613) (<= from!613 until!61)))))

(assert (=> start!107364 e!773210))

(assert (=> start!107364 true))

(assert (=> start!107364 e!773213))

(declare-fun e!773214 () Bool)

(assert (=> start!107364 e!773214))

(declare-fun b!1205149 () Bool)

(declare-fun tp!341964 () Bool)

(assert (=> b!1205149 (= e!773214 (and tp_is_empty!6111 tp!341964))))

(declare-fun b!1205155 () Bool)

(assert (=> b!1205155 (= e!773209 e!773211)))

(assert (=> b!1205155 (= c!201179 (<= lt!412140 from!613))))

(assert (=> b!1205155 (= lt!412139 (slice!517 (++!3131 l!2744 r!2028) from!613 until!61))))

(declare-fun b!1205156 () Bool)

(assert (=> b!1205156 (= e!773210 e!773209)))

(declare-fun res!542800 () Bool)

(assert (=> b!1205156 (=> (not res!542800) (not e!773209))))

(declare-fun size!9649 (List!12133) Int)

(assert (=> b!1205156 (= res!542800 (<= until!61 (+ lt!412140 (size!9649 r!2028))))))

(assert (=> b!1205156 (= lt!412140 (size!9649 l!2744))))

(assert (= (and start!107364 res!542802) b!1205156))

(assert (= (and b!1205156 res!542800) b!1205152))

(assert (= (and b!1205152 res!542801) b!1205155))

(assert (= (and b!1205155 c!201179) b!1205153))

(assert (= (and b!1205155 (not c!201179)) b!1205151))

(assert (= (and b!1205151 c!201180) b!1205150))

(assert (= (and b!1205151 (not c!201180)) b!1205154))

(assert (= (or b!1205150 b!1205154) bm!84165))

(assert (= (or b!1205153 b!1205154) bm!84164))

(get-info :version)

(assert (= (and start!107364 ((_ is Cons!12109) l!2744)) b!1205148))

(assert (= (and start!107364 ((_ is Cons!12109) r!2028)) b!1205149))

(declare-fun m!1380395 () Bool)

(assert (=> b!1205154 m!1380395))

(declare-fun m!1380397 () Bool)

(assert (=> b!1205156 m!1380397))

(declare-fun m!1380399 () Bool)

(assert (=> b!1205156 m!1380399))

(declare-fun m!1380401 () Bool)

(assert (=> bm!84165 m!1380401))

(declare-fun m!1380403 () Bool)

(assert (=> b!1205155 m!1380403))

(assert (=> b!1205155 m!1380403))

(declare-fun m!1380405 () Bool)

(assert (=> b!1205155 m!1380405))

(declare-fun m!1380407 () Bool)

(assert (=> bm!84164 m!1380407))

(check-sat (not bm!84165) (not b!1205156) (not b!1205148) (not b!1205149) (not b!1205155) (not b!1205154) tp_is_empty!6111 (not bm!84164))
(check-sat)
(get-model)

(declare-fun b!1205166 () Bool)

(declare-fun e!773219 () List!12133)

(assert (=> b!1205166 (= e!773219 (Cons!12109 (h!17510 call!84169) (++!3131 (t!112549 call!84169) call!84170)))))

(declare-fun lt!412143 () List!12133)

(declare-fun b!1205168 () Bool)

(declare-fun e!773220 () Bool)

(assert (=> b!1205168 (= e!773220 (or (not (= call!84170 Nil!12109)) (= lt!412143 call!84169)))))

(declare-fun b!1205165 () Bool)

(assert (=> b!1205165 (= e!773219 call!84170)))

(declare-fun d!344348 () Bool)

(assert (=> d!344348 e!773220))

(declare-fun res!542808 () Bool)

(assert (=> d!344348 (=> (not res!542808) (not e!773220))))

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!1707 (List!12133) (InoxSet T!22244))

(assert (=> d!344348 (= res!542808 (= (content!1707 lt!412143) ((_ map or) (content!1707 call!84169) (content!1707 call!84170))))))

(assert (=> d!344348 (= lt!412143 e!773219)))

(declare-fun c!201183 () Bool)

(assert (=> d!344348 (= c!201183 ((_ is Nil!12109) call!84169))))

(assert (=> d!344348 (= (++!3131 call!84169 call!84170) lt!412143)))

(declare-fun b!1205167 () Bool)

(declare-fun res!542807 () Bool)

(assert (=> b!1205167 (=> (not res!542807) (not e!773220))))

(assert (=> b!1205167 (= res!542807 (= (size!9649 lt!412143) (+ (size!9649 call!84169) (size!9649 call!84170))))))

(assert (= (and d!344348 c!201183) b!1205165))

(assert (= (and d!344348 (not c!201183)) b!1205166))

(assert (= (and d!344348 res!542808) b!1205167))

(assert (= (and b!1205167 res!542807) b!1205168))

(declare-fun m!1380409 () Bool)

(assert (=> b!1205166 m!1380409))

(declare-fun m!1380411 () Bool)

(assert (=> d!344348 m!1380411))

(declare-fun m!1380413 () Bool)

(assert (=> d!344348 m!1380413))

(declare-fun m!1380415 () Bool)

(assert (=> d!344348 m!1380415))

(declare-fun m!1380417 () Bool)

(assert (=> b!1205167 m!1380417))

(declare-fun m!1380419 () Bool)

(assert (=> b!1205167 m!1380419))

(declare-fun m!1380421 () Bool)

(assert (=> b!1205167 m!1380421))

(assert (=> b!1205154 d!344348))

(declare-fun d!344352 () Bool)

(declare-fun take!141 (List!12133 Int) List!12133)

(declare-fun drop!613 (List!12133 Int) List!12133)

(assert (=> d!344352 (= (slice!517 (ite c!201179 r!2028 l!2744) (ite c!201179 (- from!613 lt!412140) from!613) (ite c!201179 (- until!61 lt!412140) lt!412140)) (take!141 (drop!613 (ite c!201179 r!2028 l!2744) (ite c!201179 (- from!613 lt!412140) from!613)) (- (ite c!201179 (- until!61 lt!412140) lt!412140) (ite c!201179 (- from!613 lt!412140) from!613))))))

(declare-fun bs!288431 () Bool)

(assert (= bs!288431 d!344352))

(declare-fun m!1380423 () Bool)

(assert (=> bs!288431 m!1380423))

(assert (=> bs!288431 m!1380423))

(declare-fun m!1380425 () Bool)

(assert (=> bs!288431 m!1380425))

(assert (=> bm!84164 d!344352))

(declare-fun d!344354 () Bool)

(declare-fun lt!412149 () Int)

(assert (=> d!344354 (>= lt!412149 0)))

(declare-fun e!773229 () Int)

(assert (=> d!344354 (= lt!412149 e!773229)))

(declare-fun c!201189 () Bool)

(assert (=> d!344354 (= c!201189 ((_ is Nil!12109) r!2028))))

(assert (=> d!344354 (= (size!9649 r!2028) lt!412149)))

(declare-fun b!1205185 () Bool)

(assert (=> b!1205185 (= e!773229 0)))

(declare-fun b!1205186 () Bool)

(assert (=> b!1205186 (= e!773229 (+ 1 (size!9649 (t!112549 r!2028))))))

(assert (= (and d!344354 c!201189) b!1205185))

(assert (= (and d!344354 (not c!201189)) b!1205186))

(declare-fun m!1380441 () Bool)

(assert (=> b!1205186 m!1380441))

(assert (=> b!1205156 d!344354))

(declare-fun d!344358 () Bool)

(declare-fun lt!412150 () Int)

(assert (=> d!344358 (>= lt!412150 0)))

(declare-fun e!773230 () Int)

(assert (=> d!344358 (= lt!412150 e!773230)))

(declare-fun c!201190 () Bool)

(assert (=> d!344358 (= c!201190 ((_ is Nil!12109) l!2744))))

(assert (=> d!344358 (= (size!9649 l!2744) lt!412150)))

(declare-fun b!1205187 () Bool)

(assert (=> b!1205187 (= e!773230 0)))

(declare-fun b!1205188 () Bool)

(assert (=> b!1205188 (= e!773230 (+ 1 (size!9649 (t!112549 l!2744))))))

(assert (= (and d!344358 c!201190) b!1205187))

(assert (= (and d!344358 (not c!201190)) b!1205188))

(declare-fun m!1380443 () Bool)

(assert (=> b!1205188 m!1380443))

(assert (=> b!1205156 d!344358))

(declare-fun d!344360 () Bool)

(assert (=> d!344360 (= (slice!517 (ite c!201180 l!2744 r!2028) (ite c!201180 from!613 0) (ite c!201180 until!61 (- until!61 lt!412140))) (take!141 (drop!613 (ite c!201180 l!2744 r!2028) (ite c!201180 from!613 0)) (- (ite c!201180 until!61 (- until!61 lt!412140)) (ite c!201180 from!613 0))))))

(declare-fun bs!288432 () Bool)

(assert (= bs!288432 d!344360))

(declare-fun m!1380445 () Bool)

(assert (=> bs!288432 m!1380445))

(assert (=> bs!288432 m!1380445))

(declare-fun m!1380447 () Bool)

(assert (=> bs!288432 m!1380447))

(assert (=> bm!84165 d!344360))

(declare-fun d!344362 () Bool)

(assert (=> d!344362 (= (slice!517 (++!3131 l!2744 r!2028) from!613 until!61) (take!141 (drop!613 (++!3131 l!2744 r!2028) from!613) (- until!61 from!613)))))

(declare-fun bs!288433 () Bool)

(assert (= bs!288433 d!344362))

(assert (=> bs!288433 m!1380403))

(declare-fun m!1380449 () Bool)

(assert (=> bs!288433 m!1380449))

(assert (=> bs!288433 m!1380449))

(declare-fun m!1380451 () Bool)

(assert (=> bs!288433 m!1380451))

(assert (=> b!1205155 d!344362))

(declare-fun b!1205190 () Bool)

(declare-fun e!773231 () List!12133)

(assert (=> b!1205190 (= e!773231 (Cons!12109 (h!17510 l!2744) (++!3131 (t!112549 l!2744) r!2028)))))

(declare-fun e!773232 () Bool)

(declare-fun b!1205192 () Bool)

(declare-fun lt!412151 () List!12133)

(assert (=> b!1205192 (= e!773232 (or (not (= r!2028 Nil!12109)) (= lt!412151 l!2744)))))

(declare-fun b!1205189 () Bool)

(assert (=> b!1205189 (= e!773231 r!2028)))

(declare-fun d!344364 () Bool)

(assert (=> d!344364 e!773232))

(declare-fun res!542816 () Bool)

(assert (=> d!344364 (=> (not res!542816) (not e!773232))))

(assert (=> d!344364 (= res!542816 (= (content!1707 lt!412151) ((_ map or) (content!1707 l!2744) (content!1707 r!2028))))))

(assert (=> d!344364 (= lt!412151 e!773231)))

(declare-fun c!201191 () Bool)

(assert (=> d!344364 (= c!201191 ((_ is Nil!12109) l!2744))))

(assert (=> d!344364 (= (++!3131 l!2744 r!2028) lt!412151)))

(declare-fun b!1205191 () Bool)

(declare-fun res!542815 () Bool)

(assert (=> b!1205191 (=> (not res!542815) (not e!773232))))

(assert (=> b!1205191 (= res!542815 (= (size!9649 lt!412151) (+ (size!9649 l!2744) (size!9649 r!2028))))))

(assert (= (and d!344364 c!201191) b!1205189))

(assert (= (and d!344364 (not c!201191)) b!1205190))

(assert (= (and d!344364 res!542816) b!1205191))

(assert (= (and b!1205191 res!542815) b!1205192))

(declare-fun m!1380461 () Bool)

(assert (=> b!1205190 m!1380461))

(declare-fun m!1380463 () Bool)

(assert (=> d!344364 m!1380463))

(declare-fun m!1380465 () Bool)

(assert (=> d!344364 m!1380465))

(declare-fun m!1380467 () Bool)

(assert (=> d!344364 m!1380467))

(declare-fun m!1380469 () Bool)

(assert (=> b!1205191 m!1380469))

(assert (=> b!1205191 m!1380399))

(assert (=> b!1205191 m!1380397))

(assert (=> b!1205155 d!344364))

(declare-fun b!1205201 () Bool)

(declare-fun e!773237 () Bool)

(declare-fun tp!341968 () Bool)

(assert (=> b!1205201 (= e!773237 (and tp_is_empty!6111 tp!341968))))

(assert (=> b!1205149 (= tp!341964 e!773237)))

(assert (= (and b!1205149 ((_ is Cons!12109) (t!112549 r!2028))) b!1205201))

(declare-fun b!1205202 () Bool)

(declare-fun e!773238 () Bool)

(declare-fun tp!341969 () Bool)

(assert (=> b!1205202 (= e!773238 (and tp_is_empty!6111 tp!341969))))

(assert (=> b!1205148 (= tp!341965 e!773238)))

(assert (= (and b!1205148 ((_ is Cons!12109) (t!112549 l!2744))) b!1205202))

(check-sat (not b!1205186) (not d!344362) tp_is_empty!6111 (not b!1205202) (not d!344348) (not d!344360) (not d!344364) (not b!1205191) (not b!1205167) (not b!1205166) (not b!1205190) (not d!344352) (not b!1205188) (not b!1205201))
(check-sat)
(get-model)

(declare-fun d!344376 () Bool)

(declare-fun e!773255 () Bool)

(assert (=> d!344376 e!773255))

(declare-fun res!542821 () Bool)

(assert (=> d!344376 (=> (not res!542821) (not e!773255))))

(declare-fun lt!412159 () List!12133)

(assert (=> d!344376 (= res!542821 (= ((_ map implies) (content!1707 lt!412159) (content!1707 (drop!613 (++!3131 l!2744 r!2028) from!613))) ((as const (InoxSet T!22244)) true)))))

(declare-fun e!773257 () List!12133)

(assert (=> d!344376 (= lt!412159 e!773257)))

(declare-fun c!201203 () Bool)

(assert (=> d!344376 (= c!201203 (or ((_ is Nil!12109) (drop!613 (++!3131 l!2744 r!2028) from!613)) (<= (- until!61 from!613) 0)))))

(assert (=> d!344376 (= (take!141 (drop!613 (++!3131 l!2744 r!2028) from!613) (- until!61 from!613)) lt!412159)))

(declare-fun b!1205231 () Bool)

(declare-fun e!773258 () Int)

(assert (=> b!1205231 (= e!773255 (= (size!9649 lt!412159) e!773258))))

(declare-fun c!201204 () Bool)

(assert (=> b!1205231 (= c!201204 (<= (- until!61 from!613) 0))))

(declare-fun e!773256 () Int)

(declare-fun b!1205232 () Bool)

(assert (=> b!1205232 (= e!773256 (size!9649 (drop!613 (++!3131 l!2744 r!2028) from!613)))))

(declare-fun b!1205233 () Bool)

(assert (=> b!1205233 (= e!773258 0)))

(declare-fun b!1205234 () Bool)

(assert (=> b!1205234 (= e!773257 (Cons!12109 (h!17510 (drop!613 (++!3131 l!2744 r!2028) from!613)) (take!141 (t!112549 (drop!613 (++!3131 l!2744 r!2028) from!613)) (- (- until!61 from!613) 1))))))

(declare-fun b!1205235 () Bool)

(assert (=> b!1205235 (= e!773256 (- until!61 from!613))))

(declare-fun b!1205236 () Bool)

(assert (=> b!1205236 (= e!773258 e!773256)))

(declare-fun c!201205 () Bool)

(assert (=> b!1205236 (= c!201205 (>= (- until!61 from!613) (size!9649 (drop!613 (++!3131 l!2744 r!2028) from!613))))))

(declare-fun b!1205237 () Bool)

(assert (=> b!1205237 (= e!773257 Nil!12109)))

(assert (= (and d!344376 c!201203) b!1205237))

(assert (= (and d!344376 (not c!201203)) b!1205234))

(assert (= (and d!344376 res!542821) b!1205231))

(assert (= (and b!1205231 c!201204) b!1205233))

(assert (= (and b!1205231 (not c!201204)) b!1205236))

(assert (= (and b!1205236 c!201205) b!1205232))

(assert (= (and b!1205236 (not c!201205)) b!1205235))

(assert (=> b!1205232 m!1380449))

(declare-fun m!1380489 () Bool)

(assert (=> b!1205232 m!1380489))

(declare-fun m!1380491 () Bool)

(assert (=> b!1205231 m!1380491))

(declare-fun m!1380493 () Bool)

(assert (=> b!1205234 m!1380493))

(assert (=> b!1205236 m!1380449))

(assert (=> b!1205236 m!1380489))

(declare-fun m!1380495 () Bool)

(assert (=> d!344376 m!1380495))

(assert (=> d!344376 m!1380449))

(declare-fun m!1380497 () Bool)

(assert (=> d!344376 m!1380497))

(assert (=> d!344362 d!344376))

(declare-fun b!1205266 () Bool)

(declare-fun e!773276 () List!12133)

(assert (=> b!1205266 (= e!773276 (drop!613 (t!112549 (++!3131 l!2744 r!2028)) (- from!613 1)))))

(declare-fun b!1205267 () Bool)

(declare-fun e!773275 () List!12133)

(assert (=> b!1205267 (= e!773275 e!773276)))

(declare-fun c!201220 () Bool)

(assert (=> b!1205267 (= c!201220 (<= from!613 0))))

(declare-fun bm!84168 () Bool)

(declare-fun call!84173 () Int)

(assert (=> bm!84168 (= call!84173 (size!9649 (++!3131 l!2744 r!2028)))))

(declare-fun d!344378 () Bool)

(declare-fun e!773274 () Bool)

(assert (=> d!344378 e!773274))

(declare-fun res!542824 () Bool)

(assert (=> d!344378 (=> (not res!542824) (not e!773274))))

(declare-fun lt!412167 () List!12133)

(assert (=> d!344378 (= res!542824 (= ((_ map implies) (content!1707 lt!412167) (content!1707 (++!3131 l!2744 r!2028))) ((as const (InoxSet T!22244)) true)))))

(assert (=> d!344378 (= lt!412167 e!773275)))

(declare-fun c!201221 () Bool)

(assert (=> d!344378 (= c!201221 ((_ is Nil!12109) (++!3131 l!2744 r!2028)))))

(assert (=> d!344378 (= (drop!613 (++!3131 l!2744 r!2028) from!613) lt!412167)))

(declare-fun b!1205268 () Bool)

(declare-fun e!773278 () Int)

(assert (=> b!1205268 (= e!773278 (- call!84173 from!613))))

(declare-fun b!1205269 () Bool)

(assert (=> b!1205269 (= e!773275 Nil!12109)))

(declare-fun b!1205270 () Bool)

(declare-fun e!773277 () Int)

(assert (=> b!1205270 (= e!773277 e!773278)))

(declare-fun c!201219 () Bool)

(assert (=> b!1205270 (= c!201219 (>= from!613 call!84173))))

(declare-fun b!1205271 () Bool)

(assert (=> b!1205271 (= e!773276 (++!3131 l!2744 r!2028))))

(declare-fun b!1205272 () Bool)

(assert (=> b!1205272 (= e!773278 0)))

(declare-fun b!1205273 () Bool)

(assert (=> b!1205273 (= e!773277 call!84173)))

(declare-fun b!1205274 () Bool)

(assert (=> b!1205274 (= e!773274 (= (size!9649 lt!412167) e!773277))))

(declare-fun c!201222 () Bool)

(assert (=> b!1205274 (= c!201222 (<= from!613 0))))

(assert (= (and d!344378 c!201221) b!1205269))

(assert (= (and d!344378 (not c!201221)) b!1205267))

(assert (= (and b!1205267 c!201220) b!1205271))

(assert (= (and b!1205267 (not c!201220)) b!1205266))

(assert (= (and d!344378 res!542824) b!1205274))

(assert (= (and b!1205274 c!201222) b!1205273))

(assert (= (and b!1205274 (not c!201222)) b!1205270))

(assert (= (and b!1205270 c!201219) b!1205272))

(assert (= (and b!1205270 (not c!201219)) b!1205268))

(assert (= (or b!1205273 b!1205270 b!1205268) bm!84168))

(declare-fun m!1380509 () Bool)

(assert (=> b!1205266 m!1380509))

(assert (=> bm!84168 m!1380403))

(declare-fun m!1380511 () Bool)

(assert (=> bm!84168 m!1380511))

(declare-fun m!1380513 () Bool)

(assert (=> d!344378 m!1380513))

(assert (=> d!344378 m!1380403))

(declare-fun m!1380515 () Bool)

(assert (=> d!344378 m!1380515))

(declare-fun m!1380517 () Bool)

(assert (=> b!1205274 m!1380517))

(assert (=> d!344362 d!344378))

(declare-fun d!344392 () Bool)

(declare-fun lt!412168 () Int)

(assert (=> d!344392 (>= lt!412168 0)))

(declare-fun e!773279 () Int)

(assert (=> d!344392 (= lt!412168 e!773279)))

(declare-fun c!201223 () Bool)

(assert (=> d!344392 (= c!201223 ((_ is Nil!12109) lt!412151))))

(assert (=> d!344392 (= (size!9649 lt!412151) lt!412168)))

(declare-fun b!1205275 () Bool)

(assert (=> b!1205275 (= e!773279 0)))

(declare-fun b!1205276 () Bool)

(assert (=> b!1205276 (= e!773279 (+ 1 (size!9649 (t!112549 lt!412151))))))

(assert (= (and d!344392 c!201223) b!1205275))

(assert (= (and d!344392 (not c!201223)) b!1205276))

(declare-fun m!1380519 () Bool)

(assert (=> b!1205276 m!1380519))

(assert (=> b!1205191 d!344392))

(assert (=> b!1205191 d!344358))

(assert (=> b!1205191 d!344354))

(declare-fun d!344394 () Bool)

(declare-fun lt!412169 () Int)

(assert (=> d!344394 (>= lt!412169 0)))

(declare-fun e!773280 () Int)

(assert (=> d!344394 (= lt!412169 e!773280)))

(declare-fun c!201224 () Bool)

(assert (=> d!344394 (= c!201224 ((_ is Nil!12109) lt!412143))))

(assert (=> d!344394 (= (size!9649 lt!412143) lt!412169)))

(declare-fun b!1205277 () Bool)

(assert (=> b!1205277 (= e!773280 0)))

(declare-fun b!1205278 () Bool)

(assert (=> b!1205278 (= e!773280 (+ 1 (size!9649 (t!112549 lt!412143))))))

(assert (= (and d!344394 c!201224) b!1205277))

(assert (= (and d!344394 (not c!201224)) b!1205278))

(declare-fun m!1380521 () Bool)

(assert (=> b!1205278 m!1380521))

(assert (=> b!1205167 d!344394))

(declare-fun d!344396 () Bool)

(declare-fun lt!412170 () Int)

(assert (=> d!344396 (>= lt!412170 0)))

(declare-fun e!773281 () Int)

(assert (=> d!344396 (= lt!412170 e!773281)))

(declare-fun c!201225 () Bool)

(assert (=> d!344396 (= c!201225 ((_ is Nil!12109) call!84169))))

(assert (=> d!344396 (= (size!9649 call!84169) lt!412170)))

(declare-fun b!1205279 () Bool)

(assert (=> b!1205279 (= e!773281 0)))

(declare-fun b!1205280 () Bool)

(assert (=> b!1205280 (= e!773281 (+ 1 (size!9649 (t!112549 call!84169))))))

(assert (= (and d!344396 c!201225) b!1205279))

(assert (= (and d!344396 (not c!201225)) b!1205280))

(declare-fun m!1380523 () Bool)

(assert (=> b!1205280 m!1380523))

(assert (=> b!1205167 d!344396))

(declare-fun d!344398 () Bool)

(declare-fun lt!412171 () Int)

(assert (=> d!344398 (>= lt!412171 0)))

(declare-fun e!773282 () Int)

(assert (=> d!344398 (= lt!412171 e!773282)))

(declare-fun c!201226 () Bool)

(assert (=> d!344398 (= c!201226 ((_ is Nil!12109) call!84170))))

(assert (=> d!344398 (= (size!9649 call!84170) lt!412171)))

(declare-fun b!1205281 () Bool)

(assert (=> b!1205281 (= e!773282 0)))

(declare-fun b!1205282 () Bool)

(assert (=> b!1205282 (= e!773282 (+ 1 (size!9649 (t!112549 call!84170))))))

(assert (= (and d!344398 c!201226) b!1205281))

(assert (= (and d!344398 (not c!201226)) b!1205282))

(declare-fun m!1380525 () Bool)

(assert (=> b!1205282 m!1380525))

(assert (=> b!1205167 d!344398))

(declare-fun b!1205284 () Bool)

(declare-fun e!773283 () List!12133)

(assert (=> b!1205284 (= e!773283 (Cons!12109 (h!17510 (t!112549 l!2744)) (++!3131 (t!112549 (t!112549 l!2744)) r!2028)))))

(declare-fun b!1205286 () Bool)

(declare-fun e!773284 () Bool)

(declare-fun lt!412172 () List!12133)

(assert (=> b!1205286 (= e!773284 (or (not (= r!2028 Nil!12109)) (= lt!412172 (t!112549 l!2744))))))

(declare-fun b!1205283 () Bool)

(assert (=> b!1205283 (= e!773283 r!2028)))

(declare-fun d!344400 () Bool)

(assert (=> d!344400 e!773284))

(declare-fun res!542826 () Bool)

(assert (=> d!344400 (=> (not res!542826) (not e!773284))))

(assert (=> d!344400 (= res!542826 (= (content!1707 lt!412172) ((_ map or) (content!1707 (t!112549 l!2744)) (content!1707 r!2028))))))

(assert (=> d!344400 (= lt!412172 e!773283)))

(declare-fun c!201227 () Bool)

(assert (=> d!344400 (= c!201227 ((_ is Nil!12109) (t!112549 l!2744)))))

(assert (=> d!344400 (= (++!3131 (t!112549 l!2744) r!2028) lt!412172)))

(declare-fun b!1205285 () Bool)

(declare-fun res!542825 () Bool)

(assert (=> b!1205285 (=> (not res!542825) (not e!773284))))

(assert (=> b!1205285 (= res!542825 (= (size!9649 lt!412172) (+ (size!9649 (t!112549 l!2744)) (size!9649 r!2028))))))

(assert (= (and d!344400 c!201227) b!1205283))

(assert (= (and d!344400 (not c!201227)) b!1205284))

(assert (= (and d!344400 res!542826) b!1205285))

(assert (= (and b!1205285 res!542825) b!1205286))

(declare-fun m!1380527 () Bool)

(assert (=> b!1205284 m!1380527))

(declare-fun m!1380529 () Bool)

(assert (=> d!344400 m!1380529))

(declare-fun m!1380531 () Bool)

(assert (=> d!344400 m!1380531))

(assert (=> d!344400 m!1380467))

(declare-fun m!1380533 () Bool)

(assert (=> b!1205285 m!1380533))

(assert (=> b!1205285 m!1380443))

(assert (=> b!1205285 m!1380397))

(assert (=> b!1205190 d!344400))

(declare-fun d!344402 () Bool)

(declare-fun c!201236 () Bool)

(assert (=> d!344402 (= c!201236 ((_ is Nil!12109) lt!412151))))

(declare-fun e!773295 () (InoxSet T!22244))

(assert (=> d!344402 (= (content!1707 lt!412151) e!773295)))

(declare-fun b!1205305 () Bool)

(assert (=> b!1205305 (= e!773295 ((as const (Array T!22244 Bool)) false))))

(declare-fun b!1205306 () Bool)

(assert (=> b!1205306 (= e!773295 ((_ map or) (store ((as const (Array T!22244 Bool)) false) (h!17510 lt!412151) true) (content!1707 (t!112549 lt!412151))))))

(assert (= (and d!344402 c!201236) b!1205305))

(assert (= (and d!344402 (not c!201236)) b!1205306))

(declare-fun m!1380535 () Bool)

(assert (=> b!1205306 m!1380535))

(declare-fun m!1380537 () Bool)

(assert (=> b!1205306 m!1380537))

(assert (=> d!344364 d!344402))

(declare-fun d!344404 () Bool)

(declare-fun c!201237 () Bool)

(assert (=> d!344404 (= c!201237 ((_ is Nil!12109) l!2744))))

(declare-fun e!773296 () (InoxSet T!22244))

(assert (=> d!344404 (= (content!1707 l!2744) e!773296)))

(declare-fun b!1205307 () Bool)

(assert (=> b!1205307 (= e!773296 ((as const (Array T!22244 Bool)) false))))

(declare-fun b!1205308 () Bool)

(assert (=> b!1205308 (= e!773296 ((_ map or) (store ((as const (Array T!22244 Bool)) false) (h!17510 l!2744) true) (content!1707 (t!112549 l!2744))))))

(assert (= (and d!344404 c!201237) b!1205307))

(assert (= (and d!344404 (not c!201237)) b!1205308))

(declare-fun m!1380539 () Bool)

(assert (=> b!1205308 m!1380539))

(assert (=> b!1205308 m!1380531))

(assert (=> d!344364 d!344404))

(declare-fun d!344406 () Bool)

(declare-fun c!201238 () Bool)

(assert (=> d!344406 (= c!201238 ((_ is Nil!12109) r!2028))))

(declare-fun e!773297 () (InoxSet T!22244))

(assert (=> d!344406 (= (content!1707 r!2028) e!773297)))

(declare-fun b!1205309 () Bool)

(assert (=> b!1205309 (= e!773297 ((as const (Array T!22244 Bool)) false))))

(declare-fun b!1205310 () Bool)

(assert (=> b!1205310 (= e!773297 ((_ map or) (store ((as const (Array T!22244 Bool)) false) (h!17510 r!2028) true) (content!1707 (t!112549 r!2028))))))

(assert (= (and d!344406 c!201238) b!1205309))

(assert (= (and d!344406 (not c!201238)) b!1205310))

(declare-fun m!1380541 () Bool)

(assert (=> b!1205310 m!1380541))

(declare-fun m!1380543 () Bool)

(assert (=> b!1205310 m!1380543))

(assert (=> d!344364 d!344406))

(declare-fun d!344408 () Bool)

(declare-fun lt!412175 () Int)

(assert (=> d!344408 (>= lt!412175 0)))

(declare-fun e!773298 () Int)

(assert (=> d!344408 (= lt!412175 e!773298)))

(declare-fun c!201239 () Bool)

(assert (=> d!344408 (= c!201239 ((_ is Nil!12109) (t!112549 r!2028)))))

(assert (=> d!344408 (= (size!9649 (t!112549 r!2028)) lt!412175)))

(declare-fun b!1205311 () Bool)

(assert (=> b!1205311 (= e!773298 0)))

(declare-fun b!1205312 () Bool)

(assert (=> b!1205312 (= e!773298 (+ 1 (size!9649 (t!112549 (t!112549 r!2028)))))))

(assert (= (and d!344408 c!201239) b!1205311))

(assert (= (and d!344408 (not c!201239)) b!1205312))

(declare-fun m!1380545 () Bool)

(assert (=> b!1205312 m!1380545))

(assert (=> b!1205186 d!344408))

(declare-fun b!1205314 () Bool)

(declare-fun e!773299 () List!12133)

(assert (=> b!1205314 (= e!773299 (Cons!12109 (h!17510 (t!112549 call!84169)) (++!3131 (t!112549 (t!112549 call!84169)) call!84170)))))

(declare-fun lt!412176 () List!12133)

(declare-fun b!1205316 () Bool)

(declare-fun e!773300 () Bool)

(assert (=> b!1205316 (= e!773300 (or (not (= call!84170 Nil!12109)) (= lt!412176 (t!112549 call!84169))))))

(declare-fun b!1205313 () Bool)

(assert (=> b!1205313 (= e!773299 call!84170)))

(declare-fun d!344410 () Bool)

(assert (=> d!344410 e!773300))

(declare-fun res!542830 () Bool)

(assert (=> d!344410 (=> (not res!542830) (not e!773300))))

(assert (=> d!344410 (= res!542830 (= (content!1707 lt!412176) ((_ map or) (content!1707 (t!112549 call!84169)) (content!1707 call!84170))))))

(assert (=> d!344410 (= lt!412176 e!773299)))

(declare-fun c!201240 () Bool)

(assert (=> d!344410 (= c!201240 ((_ is Nil!12109) (t!112549 call!84169)))))

(assert (=> d!344410 (= (++!3131 (t!112549 call!84169) call!84170) lt!412176)))

(declare-fun b!1205315 () Bool)

(declare-fun res!542829 () Bool)

(assert (=> b!1205315 (=> (not res!542829) (not e!773300))))

(assert (=> b!1205315 (= res!542829 (= (size!9649 lt!412176) (+ (size!9649 (t!112549 call!84169)) (size!9649 call!84170))))))

(assert (= (and d!344410 c!201240) b!1205313))

(assert (= (and d!344410 (not c!201240)) b!1205314))

(assert (= (and d!344410 res!542830) b!1205315))

(assert (= (and b!1205315 res!542829) b!1205316))

(declare-fun m!1380547 () Bool)

(assert (=> b!1205314 m!1380547))

(declare-fun m!1380549 () Bool)

(assert (=> d!344410 m!1380549))

(declare-fun m!1380551 () Bool)

(assert (=> d!344410 m!1380551))

(assert (=> d!344410 m!1380415))

(declare-fun m!1380553 () Bool)

(assert (=> b!1205315 m!1380553))

(assert (=> b!1205315 m!1380523))

(assert (=> b!1205315 m!1380421))

(assert (=> b!1205166 d!344410))

(declare-fun d!344412 () Bool)

(declare-fun lt!412178 () Int)

(assert (=> d!344412 (>= lt!412178 0)))

(declare-fun e!773305 () Int)

(assert (=> d!344412 (= lt!412178 e!773305)))

(declare-fun c!201244 () Bool)

(assert (=> d!344412 (= c!201244 ((_ is Nil!12109) (t!112549 l!2744)))))

(assert (=> d!344412 (= (size!9649 (t!112549 l!2744)) lt!412178)))

(declare-fun b!1205324 () Bool)

(assert (=> b!1205324 (= e!773305 0)))

(declare-fun b!1205325 () Bool)

(assert (=> b!1205325 (= e!773305 (+ 1 (size!9649 (t!112549 (t!112549 l!2744)))))))

(assert (= (and d!344412 c!201244) b!1205324))

(assert (= (and d!344412 (not c!201244)) b!1205325))

(declare-fun m!1380555 () Bool)

(assert (=> b!1205325 m!1380555))

(assert (=> b!1205188 d!344412))

(declare-fun d!344414 () Bool)

(declare-fun e!773306 () Bool)

(assert (=> d!344414 e!773306))

(declare-fun res!542832 () Bool)

(assert (=> d!344414 (=> (not res!542832) (not e!773306))))

(declare-fun lt!412179 () List!12133)

(assert (=> d!344414 (= res!542832 (= ((_ map implies) (content!1707 lt!412179) (content!1707 (drop!613 (ite c!201180 l!2744 r!2028) (ite c!201180 from!613 0)))) ((as const (InoxSet T!22244)) true)))))

(declare-fun e!773308 () List!12133)

(assert (=> d!344414 (= lt!412179 e!773308)))

(declare-fun c!201245 () Bool)

(assert (=> d!344414 (= c!201245 (or ((_ is Nil!12109) (drop!613 (ite c!201180 l!2744 r!2028) (ite c!201180 from!613 0))) (<= (- (ite c!201180 until!61 (- until!61 lt!412140)) (ite c!201180 from!613 0)) 0)))))

(assert (=> d!344414 (= (take!141 (drop!613 (ite c!201180 l!2744 r!2028) (ite c!201180 from!613 0)) (- (ite c!201180 until!61 (- until!61 lt!412140)) (ite c!201180 from!613 0))) lt!412179)))

(declare-fun b!1205326 () Bool)

(declare-fun e!773309 () Int)

(assert (=> b!1205326 (= e!773306 (= (size!9649 lt!412179) e!773309))))

(declare-fun c!201246 () Bool)

(assert (=> b!1205326 (= c!201246 (<= (- (ite c!201180 until!61 (- until!61 lt!412140)) (ite c!201180 from!613 0)) 0))))

(declare-fun e!773307 () Int)

(declare-fun b!1205327 () Bool)

(assert (=> b!1205327 (= e!773307 (size!9649 (drop!613 (ite c!201180 l!2744 r!2028) (ite c!201180 from!613 0))))))

(declare-fun b!1205328 () Bool)

(assert (=> b!1205328 (= e!773309 0)))

(declare-fun b!1205329 () Bool)

(assert (=> b!1205329 (= e!773308 (Cons!12109 (h!17510 (drop!613 (ite c!201180 l!2744 r!2028) (ite c!201180 from!613 0))) (take!141 (t!112549 (drop!613 (ite c!201180 l!2744 r!2028) (ite c!201180 from!613 0))) (- (- (ite c!201180 until!61 (- until!61 lt!412140)) (ite c!201180 from!613 0)) 1))))))

(declare-fun b!1205330 () Bool)

(assert (=> b!1205330 (= e!773307 (- (ite c!201180 until!61 (- until!61 lt!412140)) (ite c!201180 from!613 0)))))

(declare-fun b!1205331 () Bool)

(assert (=> b!1205331 (= e!773309 e!773307)))

(declare-fun c!201247 () Bool)

(assert (=> b!1205331 (= c!201247 (>= (- (ite c!201180 until!61 (- until!61 lt!412140)) (ite c!201180 from!613 0)) (size!9649 (drop!613 (ite c!201180 l!2744 r!2028) (ite c!201180 from!613 0)))))))

(declare-fun b!1205332 () Bool)

(assert (=> b!1205332 (= e!773308 Nil!12109)))

(assert (= (and d!344414 c!201245) b!1205332))

(assert (= (and d!344414 (not c!201245)) b!1205329))

(assert (= (and d!344414 res!542832) b!1205326))

(assert (= (and b!1205326 c!201246) b!1205328))

(assert (= (and b!1205326 (not c!201246)) b!1205331))

(assert (= (and b!1205331 c!201247) b!1205327))

(assert (= (and b!1205331 (not c!201247)) b!1205330))

(assert (=> b!1205327 m!1380445))

(declare-fun m!1380567 () Bool)

(assert (=> b!1205327 m!1380567))

(declare-fun m!1380569 () Bool)

(assert (=> b!1205326 m!1380569))

(declare-fun m!1380571 () Bool)

(assert (=> b!1205329 m!1380571))

(assert (=> b!1205331 m!1380445))

(assert (=> b!1205331 m!1380567))

(declare-fun m!1380573 () Bool)

(assert (=> d!344414 m!1380573))

(assert (=> d!344414 m!1380445))

(declare-fun m!1380575 () Bool)

(assert (=> d!344414 m!1380575))

(assert (=> d!344360 d!344414))

(declare-fun b!1205333 () Bool)

(declare-fun e!773312 () List!12133)

(assert (=> b!1205333 (= e!773312 (drop!613 (t!112549 (ite c!201180 l!2744 r!2028)) (- (ite c!201180 from!613 0) 1)))))

(declare-fun b!1205334 () Bool)

(declare-fun e!773311 () List!12133)

(assert (=> b!1205334 (= e!773311 e!773312)))

(declare-fun c!201249 () Bool)

(assert (=> b!1205334 (= c!201249 (<= (ite c!201180 from!613 0) 0))))

(declare-fun bm!84169 () Bool)

(declare-fun call!84174 () Int)

(assert (=> bm!84169 (= call!84174 (size!9649 (ite c!201180 l!2744 r!2028)))))

(declare-fun d!344418 () Bool)

(declare-fun e!773310 () Bool)

(assert (=> d!344418 e!773310))

(declare-fun res!542833 () Bool)

(assert (=> d!344418 (=> (not res!542833) (not e!773310))))

(declare-fun lt!412180 () List!12133)

(assert (=> d!344418 (= res!542833 (= ((_ map implies) (content!1707 lt!412180) (content!1707 (ite c!201180 l!2744 r!2028))) ((as const (InoxSet T!22244)) true)))))

(assert (=> d!344418 (= lt!412180 e!773311)))

(declare-fun c!201250 () Bool)

(assert (=> d!344418 (= c!201250 ((_ is Nil!12109) (ite c!201180 l!2744 r!2028)))))

(assert (=> d!344418 (= (drop!613 (ite c!201180 l!2744 r!2028) (ite c!201180 from!613 0)) lt!412180)))

(declare-fun b!1205335 () Bool)

(declare-fun e!773314 () Int)

(assert (=> b!1205335 (= e!773314 (- call!84174 (ite c!201180 from!613 0)))))

(declare-fun b!1205336 () Bool)

(assert (=> b!1205336 (= e!773311 Nil!12109)))

(declare-fun b!1205337 () Bool)

(declare-fun e!773313 () Int)

(assert (=> b!1205337 (= e!773313 e!773314)))

(declare-fun c!201248 () Bool)

(assert (=> b!1205337 (= c!201248 (>= (ite c!201180 from!613 0) call!84174))))

(declare-fun b!1205338 () Bool)

(assert (=> b!1205338 (= e!773312 (ite c!201180 l!2744 r!2028))))

(declare-fun b!1205339 () Bool)

(assert (=> b!1205339 (= e!773314 0)))

(declare-fun b!1205340 () Bool)

(assert (=> b!1205340 (= e!773313 call!84174)))

(declare-fun b!1205341 () Bool)

(assert (=> b!1205341 (= e!773310 (= (size!9649 lt!412180) e!773313))))

(declare-fun c!201251 () Bool)

(assert (=> b!1205341 (= c!201251 (<= (ite c!201180 from!613 0) 0))))

(assert (= (and d!344418 c!201250) b!1205336))

(assert (= (and d!344418 (not c!201250)) b!1205334))

(assert (= (and b!1205334 c!201249) b!1205338))

(assert (= (and b!1205334 (not c!201249)) b!1205333))

(assert (= (and d!344418 res!542833) b!1205341))

(assert (= (and b!1205341 c!201251) b!1205340))

(assert (= (and b!1205341 (not c!201251)) b!1205337))

(assert (= (and b!1205337 c!201248) b!1205339))

(assert (= (and b!1205337 (not c!201248)) b!1205335))

(assert (= (or b!1205340 b!1205337 b!1205335) bm!84169))

(declare-fun m!1380577 () Bool)

(assert (=> b!1205333 m!1380577))

(declare-fun m!1380579 () Bool)

(assert (=> bm!84169 m!1380579))

(declare-fun m!1380581 () Bool)

(assert (=> d!344418 m!1380581))

(declare-fun m!1380583 () Bool)

(assert (=> d!344418 m!1380583))

(declare-fun m!1380585 () Bool)

(assert (=> b!1205341 m!1380585))

(assert (=> d!344360 d!344418))

(declare-fun d!344420 () Bool)

(declare-fun c!201252 () Bool)

(assert (=> d!344420 (= c!201252 ((_ is Nil!12109) lt!412143))))

(declare-fun e!773315 () (InoxSet T!22244))

(assert (=> d!344420 (= (content!1707 lt!412143) e!773315)))

(declare-fun b!1205342 () Bool)

(assert (=> b!1205342 (= e!773315 ((as const (Array T!22244 Bool)) false))))

(declare-fun b!1205343 () Bool)

(assert (=> b!1205343 (= e!773315 ((_ map or) (store ((as const (Array T!22244 Bool)) false) (h!17510 lt!412143) true) (content!1707 (t!112549 lt!412143))))))

(assert (= (and d!344420 c!201252) b!1205342))

(assert (= (and d!344420 (not c!201252)) b!1205343))

(declare-fun m!1380587 () Bool)

(assert (=> b!1205343 m!1380587))

(declare-fun m!1380589 () Bool)

(assert (=> b!1205343 m!1380589))

(assert (=> d!344348 d!344420))

(declare-fun d!344422 () Bool)

(declare-fun c!201253 () Bool)

(assert (=> d!344422 (= c!201253 ((_ is Nil!12109) call!84169))))

(declare-fun e!773316 () (InoxSet T!22244))

(assert (=> d!344422 (= (content!1707 call!84169) e!773316)))

(declare-fun b!1205344 () Bool)

(assert (=> b!1205344 (= e!773316 ((as const (Array T!22244 Bool)) false))))

(declare-fun b!1205345 () Bool)

(assert (=> b!1205345 (= e!773316 ((_ map or) (store ((as const (Array T!22244 Bool)) false) (h!17510 call!84169) true) (content!1707 (t!112549 call!84169))))))

(assert (= (and d!344422 c!201253) b!1205344))

(assert (= (and d!344422 (not c!201253)) b!1205345))

(declare-fun m!1380591 () Bool)

(assert (=> b!1205345 m!1380591))

(assert (=> b!1205345 m!1380551))

(assert (=> d!344348 d!344422))

(declare-fun d!344424 () Bool)

(declare-fun c!201254 () Bool)

(assert (=> d!344424 (= c!201254 ((_ is Nil!12109) call!84170))))

(declare-fun e!773317 () (InoxSet T!22244))

(assert (=> d!344424 (= (content!1707 call!84170) e!773317)))

(declare-fun b!1205346 () Bool)

(assert (=> b!1205346 (= e!773317 ((as const (Array T!22244 Bool)) false))))

(declare-fun b!1205347 () Bool)

(assert (=> b!1205347 (= e!773317 ((_ map or) (store ((as const (Array T!22244 Bool)) false) (h!17510 call!84170) true) (content!1707 (t!112549 call!84170))))))

(assert (= (and d!344424 c!201254) b!1205346))

(assert (= (and d!344424 (not c!201254)) b!1205347))

(declare-fun m!1380593 () Bool)

(assert (=> b!1205347 m!1380593))

(declare-fun m!1380595 () Bool)

(assert (=> b!1205347 m!1380595))

(assert (=> d!344348 d!344424))

(declare-fun d!344426 () Bool)

(declare-fun e!773318 () Bool)

(assert (=> d!344426 e!773318))

(declare-fun res!542834 () Bool)

(assert (=> d!344426 (=> (not res!542834) (not e!773318))))

(declare-fun lt!412181 () List!12133)

(assert (=> d!344426 (= res!542834 (= ((_ map implies) (content!1707 lt!412181) (content!1707 (drop!613 (ite c!201179 r!2028 l!2744) (ite c!201179 (- from!613 lt!412140) from!613)))) ((as const (InoxSet T!22244)) true)))))

(declare-fun e!773320 () List!12133)

(assert (=> d!344426 (= lt!412181 e!773320)))

(declare-fun c!201255 () Bool)

(assert (=> d!344426 (= c!201255 (or ((_ is Nil!12109) (drop!613 (ite c!201179 r!2028 l!2744) (ite c!201179 (- from!613 lt!412140) from!613))) (<= (- (ite c!201179 (- until!61 lt!412140) lt!412140) (ite c!201179 (- from!613 lt!412140) from!613)) 0)))))

(assert (=> d!344426 (= (take!141 (drop!613 (ite c!201179 r!2028 l!2744) (ite c!201179 (- from!613 lt!412140) from!613)) (- (ite c!201179 (- until!61 lt!412140) lt!412140) (ite c!201179 (- from!613 lt!412140) from!613))) lt!412181)))

(declare-fun b!1205348 () Bool)

(declare-fun e!773321 () Int)

(assert (=> b!1205348 (= e!773318 (= (size!9649 lt!412181) e!773321))))

(declare-fun c!201256 () Bool)

(assert (=> b!1205348 (= c!201256 (<= (- (ite c!201179 (- until!61 lt!412140) lt!412140) (ite c!201179 (- from!613 lt!412140) from!613)) 0))))

(declare-fun e!773319 () Int)

(declare-fun b!1205349 () Bool)

(assert (=> b!1205349 (= e!773319 (size!9649 (drop!613 (ite c!201179 r!2028 l!2744) (ite c!201179 (- from!613 lt!412140) from!613))))))

(declare-fun b!1205350 () Bool)

(assert (=> b!1205350 (= e!773321 0)))

(declare-fun b!1205351 () Bool)

(assert (=> b!1205351 (= e!773320 (Cons!12109 (h!17510 (drop!613 (ite c!201179 r!2028 l!2744) (ite c!201179 (- from!613 lt!412140) from!613))) (take!141 (t!112549 (drop!613 (ite c!201179 r!2028 l!2744) (ite c!201179 (- from!613 lt!412140) from!613))) (- (- (ite c!201179 (- until!61 lt!412140) lt!412140) (ite c!201179 (- from!613 lt!412140) from!613)) 1))))))

(declare-fun b!1205352 () Bool)

(assert (=> b!1205352 (= e!773319 (- (ite c!201179 (- until!61 lt!412140) lt!412140) (ite c!201179 (- from!613 lt!412140) from!613)))))

(declare-fun b!1205353 () Bool)

(assert (=> b!1205353 (= e!773321 e!773319)))

(declare-fun c!201257 () Bool)

(assert (=> b!1205353 (= c!201257 (>= (- (ite c!201179 (- until!61 lt!412140) lt!412140) (ite c!201179 (- from!613 lt!412140) from!613)) (size!9649 (drop!613 (ite c!201179 r!2028 l!2744) (ite c!201179 (- from!613 lt!412140) from!613)))))))

(declare-fun b!1205354 () Bool)

(assert (=> b!1205354 (= e!773320 Nil!12109)))

(assert (= (and d!344426 c!201255) b!1205354))

(assert (= (and d!344426 (not c!201255)) b!1205351))

(assert (= (and d!344426 res!542834) b!1205348))

(assert (= (and b!1205348 c!201256) b!1205350))

(assert (= (and b!1205348 (not c!201256)) b!1205353))

(assert (= (and b!1205353 c!201257) b!1205349))

(assert (= (and b!1205353 (not c!201257)) b!1205352))

(assert (=> b!1205349 m!1380423))

(declare-fun m!1380597 () Bool)

(assert (=> b!1205349 m!1380597))

(declare-fun m!1380599 () Bool)

(assert (=> b!1205348 m!1380599))

(declare-fun m!1380601 () Bool)

(assert (=> b!1205351 m!1380601))

(assert (=> b!1205353 m!1380423))

(assert (=> b!1205353 m!1380597))

(declare-fun m!1380603 () Bool)

(assert (=> d!344426 m!1380603))

(assert (=> d!344426 m!1380423))

(declare-fun m!1380605 () Bool)

(assert (=> d!344426 m!1380605))

(assert (=> d!344352 d!344426))

(declare-fun b!1205355 () Bool)

(declare-fun e!773324 () List!12133)

(assert (=> b!1205355 (= e!773324 (drop!613 (t!112549 (ite c!201179 r!2028 l!2744)) (- (ite c!201179 (- from!613 lt!412140) from!613) 1)))))

(declare-fun b!1205356 () Bool)

(declare-fun e!773323 () List!12133)

(assert (=> b!1205356 (= e!773323 e!773324)))

(declare-fun c!201259 () Bool)

(assert (=> b!1205356 (= c!201259 (<= (ite c!201179 (- from!613 lt!412140) from!613) 0))))

(declare-fun bm!84170 () Bool)

(declare-fun call!84175 () Int)

(assert (=> bm!84170 (= call!84175 (size!9649 (ite c!201179 r!2028 l!2744)))))

(declare-fun d!344428 () Bool)

(declare-fun e!773322 () Bool)

(assert (=> d!344428 e!773322))

(declare-fun res!542835 () Bool)

(assert (=> d!344428 (=> (not res!542835) (not e!773322))))

(declare-fun lt!412182 () List!12133)

(assert (=> d!344428 (= res!542835 (= ((_ map implies) (content!1707 lt!412182) (content!1707 (ite c!201179 r!2028 l!2744))) ((as const (InoxSet T!22244)) true)))))

(assert (=> d!344428 (= lt!412182 e!773323)))

(declare-fun c!201260 () Bool)

(assert (=> d!344428 (= c!201260 ((_ is Nil!12109) (ite c!201179 r!2028 l!2744)))))

(assert (=> d!344428 (= (drop!613 (ite c!201179 r!2028 l!2744) (ite c!201179 (- from!613 lt!412140) from!613)) lt!412182)))

(declare-fun e!773326 () Int)

(declare-fun b!1205357 () Bool)

(assert (=> b!1205357 (= e!773326 (- call!84175 (ite c!201179 (- from!613 lt!412140) from!613)))))

(declare-fun b!1205358 () Bool)

(assert (=> b!1205358 (= e!773323 Nil!12109)))

(declare-fun b!1205359 () Bool)

(declare-fun e!773325 () Int)

(assert (=> b!1205359 (= e!773325 e!773326)))

(declare-fun c!201258 () Bool)

(assert (=> b!1205359 (= c!201258 (>= (ite c!201179 (- from!613 lt!412140) from!613) call!84175))))

(declare-fun b!1205360 () Bool)

(assert (=> b!1205360 (= e!773324 (ite c!201179 r!2028 l!2744))))

(declare-fun b!1205361 () Bool)

(assert (=> b!1205361 (= e!773326 0)))

(declare-fun b!1205362 () Bool)

(assert (=> b!1205362 (= e!773325 call!84175)))

(declare-fun b!1205363 () Bool)

(assert (=> b!1205363 (= e!773322 (= (size!9649 lt!412182) e!773325))))

(declare-fun c!201261 () Bool)

(assert (=> b!1205363 (= c!201261 (<= (ite c!201179 (- from!613 lt!412140) from!613) 0))))

(assert (= (and d!344428 c!201260) b!1205358))

(assert (= (and d!344428 (not c!201260)) b!1205356))

(assert (= (and b!1205356 c!201259) b!1205360))

(assert (= (and b!1205356 (not c!201259)) b!1205355))

(assert (= (and d!344428 res!542835) b!1205363))

(assert (= (and b!1205363 c!201261) b!1205362))

(assert (= (and b!1205363 (not c!201261)) b!1205359))

(assert (= (and b!1205359 c!201258) b!1205361))

(assert (= (and b!1205359 (not c!201258)) b!1205357))

(assert (= (or b!1205362 b!1205359 b!1205357) bm!84170))

(declare-fun m!1380607 () Bool)

(assert (=> b!1205355 m!1380607))

(declare-fun m!1380609 () Bool)

(assert (=> bm!84170 m!1380609))

(declare-fun m!1380611 () Bool)

(assert (=> d!344428 m!1380611))

(declare-fun m!1380613 () Bool)

(assert (=> d!344428 m!1380613))

(declare-fun m!1380615 () Bool)

(assert (=> b!1205363 m!1380615))

(assert (=> d!344352 d!344428))

(declare-fun b!1205364 () Bool)

(declare-fun e!773327 () Bool)

(declare-fun tp!341974 () Bool)

(assert (=> b!1205364 (= e!773327 (and tp_is_empty!6111 tp!341974))))

(assert (=> b!1205201 (= tp!341968 e!773327)))

(assert (= (and b!1205201 ((_ is Cons!12109) (t!112549 (t!112549 r!2028)))) b!1205364))

(declare-fun b!1205365 () Bool)

(declare-fun e!773328 () Bool)

(declare-fun tp!341975 () Bool)

(assert (=> b!1205365 (= e!773328 (and tp_is_empty!6111 tp!341975))))

(assert (=> b!1205202 (= tp!341969 e!773328)))

(assert (= (and b!1205202 ((_ is Cons!12109) (t!112549 (t!112549 l!2744)))) b!1205365))

(check-sat (not b!1205349) (not b!1205333) (not b!1205276) (not b!1205314) (not b!1205364) (not b!1205347) (not b!1205278) (not b!1205348) (not d!344428) (not d!344418) (not b!1205282) (not b!1205274) (not b!1205326) (not b!1205310) (not b!1205353) (not d!344414) (not b!1205231) (not b!1205325) (not b!1205308) tp_is_empty!6111 (not b!1205266) (not d!344400) (not b!1205280) (not b!1205312) (not b!1205315) (not b!1205234) (not b!1205341) (not b!1205343) (not b!1205363) (not bm!84169) (not b!1205329) (not b!1205236) (not b!1205351) (not bm!84168) (not b!1205232) (not b!1205355) (not b!1205345) (not b!1205306) (not b!1205331) (not bm!84170) (not b!1205285) (not d!344410) (not b!1205284) (not b!1205327) (not d!344426) (not d!344378) (not d!344376) (not b!1205365))
(check-sat)
