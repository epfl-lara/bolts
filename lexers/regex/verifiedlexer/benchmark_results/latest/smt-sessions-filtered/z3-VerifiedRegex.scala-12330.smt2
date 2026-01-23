; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!691580 () Bool)

(assert start!691580)

(declare-fun b!7104290 () Bool)

(declare-fun e!4269916 () Bool)

(declare-fun tp!1953596 () Bool)

(declare-fun tp!1953593 () Bool)

(assert (=> b!7104290 (= e!4269916 (and tp!1953596 tp!1953593))))

(declare-fun b!7104291 () Bool)

(declare-fun e!4269918 () Bool)

(declare-fun tp!1953594 () Bool)

(assert (=> b!7104291 (= e!4269918 tp!1953594)))

(declare-fun b!7104292 () Bool)

(declare-fun e!4269914 () Bool)

(declare-fun e!4269915 () Bool)

(assert (=> b!7104292 (= e!4269914 e!4269915)))

(declare-fun res!2900261 () Bool)

(assert (=> b!7104292 (=> (not res!2900261) (not e!4269915))))

(define-sort InoxSet (T) (Array T Bool))

(declare-datatypes ((C!36076 0))(
  ( (C!36077 (val!27744 Int)) )
))
(declare-datatypes ((Regex!17903 0))(
  ( (ElementMatch!17903 (c!1325614 C!36076)) (Concat!26748 (regOne!36318 Regex!17903) (regTwo!36318 Regex!17903)) (EmptyExpr!17903) (Star!17903 (reg!18232 Regex!17903)) (EmptyLang!17903) (Union!17903 (regOne!36319 Regex!17903) (regTwo!36319 Regex!17903)) )
))
(declare-datatypes ((List!68864 0))(
  ( (Nil!68740) (Cons!68740 (h!75188 Regex!17903) (t!382681 List!68864)) )
))
(declare-datatypes ((Context!13794 0))(
  ( (Context!13795 (exprs!7397 List!68864)) )
))
(declare-fun lt!2558596 () (InoxSet Context!13794))

(declare-fun a!1901 () C!36076)

(declare-fun r!11554 () Regex!17903)

(declare-fun lt!2558598 () Context!13794)

(declare-fun derivationStepZipperDown!2426 (Regex!17903 Context!13794 C!36076) (InoxSet Context!13794))

(assert (=> b!7104292 (= res!2900261 (= (derivationStepZipperDown!2426 r!11554 lt!2558598 a!1901) ((_ map or) lt!2558596 (derivationStepZipperDown!2426 (regTwo!36319 r!11554) lt!2558598 a!1901))))))

(assert (=> b!7104292 (= lt!2558596 (derivationStepZipperDown!2426 (regOne!36319 r!11554) lt!2558598 a!1901))))

(declare-fun c!9994 () Context!13794)

(declare-fun auxCtx!45 () Context!13794)

(declare-fun ++!16055 (List!68864 List!68864) List!68864)

(assert (=> b!7104292 (= lt!2558598 (Context!13795 (++!16055 (exprs!7397 c!9994) (exprs!7397 auxCtx!45))))))

(declare-fun lambda!431341 () Int)

(declare-datatypes ((Unit!162477 0))(
  ( (Unit!162478) )
))
(declare-fun lt!2558592 () Unit!162477)

(declare-fun lemmaConcatPreservesForall!1188 (List!68864 List!68864 Int) Unit!162477)

(assert (=> b!7104292 (= lt!2558592 (lemmaConcatPreservesForall!1188 (exprs!7397 c!9994) (exprs!7397 auxCtx!45) lambda!431341))))

(declare-fun lt!2558597 () Unit!162477)

(assert (=> b!7104292 (= lt!2558597 (lemmaConcatPreservesForall!1188 (exprs!7397 c!9994) (exprs!7397 auxCtx!45) lambda!431341))))

(declare-fun lt!2558594 () Unit!162477)

(assert (=> b!7104292 (= lt!2558594 (lemmaConcatPreservesForall!1188 (exprs!7397 c!9994) (exprs!7397 auxCtx!45) lambda!431341))))

(declare-fun b!7104293 () Bool)

(declare-fun tp_is_empty!45039 () Bool)

(assert (=> b!7104293 (= e!4269916 tp_is_empty!45039)))

(declare-fun res!2900260 () Bool)

(assert (=> start!691580 (=> (not res!2900260) (not e!4269914))))

(declare-fun validRegex!9176 (Regex!17903) Bool)

(assert (=> start!691580 (= res!2900260 (validRegex!9176 r!11554))))

(assert (=> start!691580 e!4269914))

(assert (=> start!691580 e!4269916))

(assert (=> start!691580 tp_is_empty!45039))

(declare-fun inv!87620 (Context!13794) Bool)

(assert (=> start!691580 (and (inv!87620 c!9994) e!4269918)))

(declare-fun e!4269917 () Bool)

(assert (=> start!691580 (and (inv!87620 auxCtx!45) e!4269917)))

(declare-fun b!7104294 () Bool)

(declare-fun tp!1953592 () Bool)

(assert (=> b!7104294 (= e!4269917 tp!1953592)))

(declare-fun b!7104295 () Bool)

(declare-fun tp!1953591 () Bool)

(assert (=> b!7104295 (= e!4269916 tp!1953591)))

(declare-fun b!7104296 () Bool)

(declare-fun res!2900262 () Bool)

(assert (=> b!7104296 (=> (not res!2900262) (not e!4269914))))

(get-info :version)

(assert (=> b!7104296 (= res!2900262 (and (or (not ((_ is ElementMatch!17903) r!11554)) (not (= (c!1325614 r!11554) a!1901))) ((_ is Union!17903) r!11554)))))

(declare-fun b!7104297 () Bool)

(declare-fun tp!1953590 () Bool)

(declare-fun tp!1953595 () Bool)

(assert (=> b!7104297 (= e!4269916 (and tp!1953590 tp!1953595))))

(declare-fun b!7104298 () Bool)

(assert (=> b!7104298 (= e!4269915 (not (validRegex!9176 (regTwo!36319 r!11554))))))

(declare-fun appendTo!918 ((InoxSet Context!13794) Context!13794) (InoxSet Context!13794))

(assert (=> b!7104298 (= lt!2558596 (appendTo!918 (derivationStepZipperDown!2426 (regOne!36319 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2558593 () Unit!162477)

(assert (=> b!7104298 (= lt!2558593 (lemmaConcatPreservesForall!1188 (exprs!7397 c!9994) (exprs!7397 auxCtx!45) lambda!431341))))

(declare-fun lt!2558595 () Unit!162477)

(declare-fun lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!216 (Context!13794 Regex!17903 C!36076 Context!13794) Unit!162477)

(assert (=> b!7104298 (= lt!2558595 (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!216 c!9994 (regOne!36319 r!11554) a!1901 auxCtx!45))))

(assert (= (and start!691580 res!2900260) b!7104296))

(assert (= (and b!7104296 res!2900262) b!7104292))

(assert (= (and b!7104292 res!2900261) b!7104298))

(assert (= (and start!691580 ((_ is ElementMatch!17903) r!11554)) b!7104293))

(assert (= (and start!691580 ((_ is Concat!26748) r!11554)) b!7104290))

(assert (= (and start!691580 ((_ is Star!17903) r!11554)) b!7104295))

(assert (= (and start!691580 ((_ is Union!17903) r!11554)) b!7104297))

(assert (= start!691580 b!7104291))

(assert (= start!691580 b!7104294))

(declare-fun m!7828056 () Bool)

(assert (=> b!7104292 m!7828056))

(assert (=> b!7104292 m!7828056))

(declare-fun m!7828058 () Bool)

(assert (=> b!7104292 m!7828058))

(declare-fun m!7828060 () Bool)

(assert (=> b!7104292 m!7828060))

(assert (=> b!7104292 m!7828056))

(declare-fun m!7828062 () Bool)

(assert (=> b!7104292 m!7828062))

(declare-fun m!7828064 () Bool)

(assert (=> b!7104292 m!7828064))

(declare-fun m!7828066 () Bool)

(assert (=> start!691580 m!7828066))

(declare-fun m!7828068 () Bool)

(assert (=> start!691580 m!7828068))

(declare-fun m!7828070 () Bool)

(assert (=> start!691580 m!7828070))

(declare-fun m!7828072 () Bool)

(assert (=> b!7104298 m!7828072))

(declare-fun m!7828074 () Bool)

(assert (=> b!7104298 m!7828074))

(assert (=> b!7104298 m!7828072))

(declare-fun m!7828076 () Bool)

(assert (=> b!7104298 m!7828076))

(assert (=> b!7104298 m!7828056))

(declare-fun m!7828078 () Bool)

(assert (=> b!7104298 m!7828078))

(check-sat (not b!7104298) (not b!7104291) (not b!7104294) (not b!7104292) (not start!691580) (not b!7104290) (not b!7104297) (not b!7104295) tp_is_empty!45039)
(check-sat)
(get-model)

(declare-fun bs!1884541 () Bool)

(declare-fun d!2219023 () Bool)

(assert (= bs!1884541 (and d!2219023 b!7104292)))

(declare-fun lambda!431347 () Int)

(assert (=> bs!1884541 (= lambda!431347 lambda!431341)))

(assert (=> d!2219023 (= (derivationStepZipperDown!2426 (regOne!36319 r!11554) (Context!13795 (++!16055 (exprs!7397 c!9994) (exprs!7397 auxCtx!45))) a!1901) (appendTo!918 (derivationStepZipperDown!2426 (regOne!36319 r!11554) c!9994 a!1901) auxCtx!45))))

(declare-fun lt!2558610 () Unit!162477)

(assert (=> d!2219023 (= lt!2558610 (lemmaConcatPreservesForall!1188 (exprs!7397 c!9994) (exprs!7397 auxCtx!45) lambda!431347))))

(declare-fun lt!2558609 () Unit!162477)

(declare-fun choose!54793 (Context!13794 Regex!17903 C!36076 Context!13794) Unit!162477)

(assert (=> d!2219023 (= lt!2558609 (choose!54793 c!9994 (regOne!36319 r!11554) a!1901 auxCtx!45))))

(assert (=> d!2219023 (validRegex!9176 (regOne!36319 r!11554))))

(assert (=> d!2219023 (= (lemmaDerivativeStepZipperDownConcatCtxSameAsAppendTo!216 c!9994 (regOne!36319 r!11554) a!1901 auxCtx!45) lt!2558609)))

(declare-fun bs!1884542 () Bool)

(assert (= bs!1884542 d!2219023))

(assert (=> bs!1884542 m!7828064))

(declare-fun m!7828088 () Bool)

(assert (=> bs!1884542 m!7828088))

(declare-fun m!7828090 () Bool)

(assert (=> bs!1884542 m!7828090))

(declare-fun m!7828092 () Bool)

(assert (=> bs!1884542 m!7828092))

(assert (=> bs!1884542 m!7828072))

(assert (=> bs!1884542 m!7828074))

(declare-fun m!7828094 () Bool)

(assert (=> bs!1884542 m!7828094))

(assert (=> bs!1884542 m!7828072))

(assert (=> b!7104298 d!2219023))

(declare-fun d!2219027 () Bool)

(declare-fun forall!16805 (List!68864 Int) Bool)

(assert (=> d!2219027 (forall!16805 (++!16055 (exprs!7397 c!9994) (exprs!7397 auxCtx!45)) lambda!431341)))

(declare-fun lt!2558613 () Unit!162477)

(declare-fun choose!54794 (List!68864 List!68864 Int) Unit!162477)

(assert (=> d!2219027 (= lt!2558613 (choose!54794 (exprs!7397 c!9994) (exprs!7397 auxCtx!45) lambda!431341))))

(assert (=> d!2219027 (forall!16805 (exprs!7397 c!9994) lambda!431341)))

(assert (=> d!2219027 (= (lemmaConcatPreservesForall!1188 (exprs!7397 c!9994) (exprs!7397 auxCtx!45) lambda!431341) lt!2558613)))

(declare-fun bs!1884543 () Bool)

(assert (= bs!1884543 d!2219027))

(assert (=> bs!1884543 m!7828064))

(assert (=> bs!1884543 m!7828064))

(declare-fun m!7828096 () Bool)

(assert (=> bs!1884543 m!7828096))

(declare-fun m!7828098 () Bool)

(assert (=> bs!1884543 m!7828098))

(declare-fun m!7828100 () Bool)

(assert (=> bs!1884543 m!7828100))

(assert (=> b!7104298 d!2219027))

(declare-fun b!7104344 () Bool)

(declare-fun e!4269955 () Bool)

(declare-fun e!4269957 () Bool)

(assert (=> b!7104344 (= e!4269955 e!4269957)))

(declare-fun c!1325629 () Bool)

(assert (=> b!7104344 (= c!1325629 ((_ is Star!17903) (regTwo!36319 r!11554)))))

(declare-fun b!7104345 () Bool)

(declare-fun e!4269959 () Bool)

(declare-fun call!647279 () Bool)

(assert (=> b!7104345 (= e!4269959 call!647279)))

(declare-fun b!7104346 () Bool)

(declare-fun e!4269956 () Bool)

(declare-fun call!647280 () Bool)

(assert (=> b!7104346 (= e!4269956 call!647280)))

(declare-fun b!7104347 () Bool)

(declare-fun e!4269954 () Bool)

(assert (=> b!7104347 (= e!4269957 e!4269954)))

(declare-fun res!2900291 () Bool)

(declare-fun nullable!7540 (Regex!17903) Bool)

(assert (=> b!7104347 (= res!2900291 (not (nullable!7540 (reg!18232 (regTwo!36319 r!11554)))))))

(assert (=> b!7104347 (=> (not res!2900291) (not e!4269954))))

(declare-fun b!7104348 () Bool)

(declare-fun res!2900290 () Bool)

(assert (=> b!7104348 (=> (not res!2900290) (not e!4269956))))

(assert (=> b!7104348 (= res!2900290 call!647279)))

(declare-fun e!4269958 () Bool)

(assert (=> b!7104348 (= e!4269958 e!4269956)))

(declare-fun bm!647274 () Bool)

(declare-fun c!1325628 () Bool)

(declare-fun call!647281 () Bool)

(assert (=> bm!647274 (= call!647281 (validRegex!9176 (ite c!1325629 (reg!18232 (regTwo!36319 r!11554)) (ite c!1325628 (regOne!36319 (regTwo!36319 r!11554)) (regTwo!36318 (regTwo!36319 r!11554))))))))

(declare-fun bm!647275 () Bool)

(assert (=> bm!647275 (= call!647279 call!647281)))

(declare-fun bm!647276 () Bool)

(assert (=> bm!647276 (= call!647280 (validRegex!9176 (ite c!1325628 (regTwo!36319 (regTwo!36319 r!11554)) (regOne!36318 (regTwo!36319 r!11554)))))))

(declare-fun b!7104349 () Bool)

(assert (=> b!7104349 (= e!4269957 e!4269958)))

(assert (=> b!7104349 (= c!1325628 ((_ is Union!17903) (regTwo!36319 r!11554)))))

(declare-fun b!7104350 () Bool)

(assert (=> b!7104350 (= e!4269954 call!647281)))

(declare-fun d!2219029 () Bool)

(declare-fun res!2900288 () Bool)

(assert (=> d!2219029 (=> res!2900288 e!4269955)))

(assert (=> d!2219029 (= res!2900288 ((_ is ElementMatch!17903) (regTwo!36319 r!11554)))))

(assert (=> d!2219029 (= (validRegex!9176 (regTwo!36319 r!11554)) e!4269955)))

(declare-fun b!7104351 () Bool)

(declare-fun res!2900289 () Bool)

(declare-fun e!4269960 () Bool)

(assert (=> b!7104351 (=> res!2900289 e!4269960)))

(assert (=> b!7104351 (= res!2900289 (not ((_ is Concat!26748) (regTwo!36319 r!11554))))))

(assert (=> b!7104351 (= e!4269958 e!4269960)))

(declare-fun b!7104352 () Bool)

(assert (=> b!7104352 (= e!4269960 e!4269959)))

(declare-fun res!2900292 () Bool)

(assert (=> b!7104352 (=> (not res!2900292) (not e!4269959))))

(assert (=> b!7104352 (= res!2900292 call!647280)))

(assert (= (and d!2219029 (not res!2900288)) b!7104344))

(assert (= (and b!7104344 c!1325629) b!7104347))

(assert (= (and b!7104344 (not c!1325629)) b!7104349))

(assert (= (and b!7104347 res!2900291) b!7104350))

(assert (= (and b!7104349 c!1325628) b!7104348))

(assert (= (and b!7104349 (not c!1325628)) b!7104351))

(assert (= (and b!7104348 res!2900290) b!7104346))

(assert (= (and b!7104351 (not res!2900289)) b!7104352))

(assert (= (and b!7104352 res!2900292) b!7104345))

(assert (= (or b!7104348 b!7104345) bm!647275))

(assert (= (or b!7104346 b!7104352) bm!647276))

(assert (= (or b!7104350 bm!647275) bm!647274))

(declare-fun m!7828110 () Bool)

(assert (=> b!7104347 m!7828110))

(declare-fun m!7828112 () Bool)

(assert (=> bm!647274 m!7828112))

(declare-fun m!7828114 () Bool)

(assert (=> bm!647276 m!7828114))

(assert (=> b!7104298 d!2219029))

(declare-fun d!2219035 () Bool)

(assert (=> d!2219035 true))

(declare-fun lambda!431357 () Int)

(declare-fun map!16245 ((InoxSet Context!13794) Int) (InoxSet Context!13794))

(assert (=> d!2219035 (= (appendTo!918 (derivationStepZipperDown!2426 (regOne!36319 r!11554) c!9994 a!1901) auxCtx!45) (map!16245 (derivationStepZipperDown!2426 (regOne!36319 r!11554) c!9994 a!1901) lambda!431357))))

(declare-fun bs!1884545 () Bool)

(assert (= bs!1884545 d!2219035))

(assert (=> bs!1884545 m!7828072))

(declare-fun m!7828116 () Bool)

(assert (=> bs!1884545 m!7828116))

(assert (=> b!7104298 d!2219035))

(declare-fun b!7104421 () Bool)

(declare-fun e!4269999 () (InoxSet Context!13794))

(declare-fun call!647316 () (InoxSet Context!13794))

(assert (=> b!7104421 (= e!4269999 call!647316)))

(declare-fun b!7104422 () Bool)

(declare-fun e!4270000 () (InoxSet Context!13794))

(declare-fun call!647320 () (InoxSet Context!13794))

(declare-fun call!647315 () (InoxSet Context!13794))

(assert (=> b!7104422 (= e!4270000 ((_ map or) call!647320 call!647315))))

(declare-fun b!7104423 () Bool)

(declare-fun c!1325659 () Bool)

(declare-fun e!4270002 () Bool)

(assert (=> b!7104423 (= c!1325659 e!4270002)))

(declare-fun res!2900303 () Bool)

(assert (=> b!7104423 (=> (not res!2900303) (not e!4270002))))

(assert (=> b!7104423 (= res!2900303 ((_ is Concat!26748) (regOne!36319 r!11554)))))

(declare-fun e!4270003 () (InoxSet Context!13794))

(assert (=> b!7104423 (= e!4270003 e!4270000)))

(declare-fun b!7104424 () Bool)

(declare-fun call!647318 () (InoxSet Context!13794))

(assert (=> b!7104424 (= e!4270003 ((_ map or) call!647320 call!647318))))

(declare-fun bm!647310 () Bool)

(assert (=> bm!647310 (= call!647315 call!647318)))

(declare-fun b!7104425 () Bool)

(declare-fun c!1325658 () Bool)

(assert (=> b!7104425 (= c!1325658 ((_ is Star!17903) (regOne!36319 r!11554)))))

(declare-fun e!4269998 () (InoxSet Context!13794))

(assert (=> b!7104425 (= e!4269998 e!4269999)))

(declare-fun b!7104426 () Bool)

(assert (=> b!7104426 (= e!4270000 e!4269998)))

(declare-fun c!1325662 () Bool)

(assert (=> b!7104426 (= c!1325662 ((_ is Concat!26748) (regOne!36319 r!11554)))))

(declare-fun bm!647311 () Bool)

(assert (=> bm!647311 (= call!647316 call!647315)))

(declare-fun bm!647312 () Bool)

(declare-fun call!647319 () List!68864)

(declare-fun call!647317 () List!68864)

(assert (=> bm!647312 (= call!647319 call!647317)))

(declare-fun b!7104427 () Bool)

(assert (=> b!7104427 (= e!4269998 call!647316)))

(declare-fun bm!647313 () Bool)

(declare-fun $colon$colon!2766 (List!68864 Regex!17903) List!68864)

(assert (=> bm!647313 (= call!647317 ($colon$colon!2766 (exprs!7397 c!9994) (ite (or c!1325659 c!1325662) (regTwo!36318 (regOne!36319 r!11554)) (regOne!36319 r!11554))))))

(declare-fun c!1325661 () Bool)

(declare-fun bm!647314 () Bool)

(assert (=> bm!647314 (= call!647318 (derivationStepZipperDown!2426 (ite c!1325661 (regTwo!36319 (regOne!36319 r!11554)) (ite c!1325659 (regTwo!36318 (regOne!36319 r!11554)) (ite c!1325662 (regOne!36318 (regOne!36319 r!11554)) (reg!18232 (regOne!36319 r!11554))))) (ite (or c!1325661 c!1325659) c!9994 (Context!13795 call!647319)) a!1901))))

(declare-fun d!2219037 () Bool)

(declare-fun c!1325660 () Bool)

(assert (=> d!2219037 (= c!1325660 (and ((_ is ElementMatch!17903) (regOne!36319 r!11554)) (= (c!1325614 (regOne!36319 r!11554)) a!1901)))))

(declare-fun e!4270001 () (InoxSet Context!13794))

(assert (=> d!2219037 (= (derivationStepZipperDown!2426 (regOne!36319 r!11554) c!9994 a!1901) e!4270001)))

(declare-fun b!7104428 () Bool)

(assert (=> b!7104428 (= e!4270002 (nullable!7540 (regOne!36318 (regOne!36319 r!11554))))))

(declare-fun bm!647315 () Bool)

(assert (=> bm!647315 (= call!647320 (derivationStepZipperDown!2426 (ite c!1325661 (regOne!36319 (regOne!36319 r!11554)) (regOne!36318 (regOne!36319 r!11554))) (ite c!1325661 c!9994 (Context!13795 call!647317)) a!1901))))

(declare-fun b!7104429 () Bool)

(assert (=> b!7104429 (= e!4270001 e!4270003)))

(assert (=> b!7104429 (= c!1325661 ((_ is Union!17903) (regOne!36319 r!11554)))))

(declare-fun b!7104430 () Bool)

(assert (=> b!7104430 (= e!4270001 (store ((as const (Array Context!13794 Bool)) false) c!9994 true))))

(declare-fun b!7104431 () Bool)

(assert (=> b!7104431 (= e!4269999 ((as const (Array Context!13794 Bool)) false))))

(assert (= (and d!2219037 c!1325660) b!7104430))

(assert (= (and d!2219037 (not c!1325660)) b!7104429))

(assert (= (and b!7104429 c!1325661) b!7104424))

(assert (= (and b!7104429 (not c!1325661)) b!7104423))

(assert (= (and b!7104423 res!2900303) b!7104428))

(assert (= (and b!7104423 c!1325659) b!7104422))

(assert (= (and b!7104423 (not c!1325659)) b!7104426))

(assert (= (and b!7104426 c!1325662) b!7104427))

(assert (= (and b!7104426 (not c!1325662)) b!7104425))

(assert (= (and b!7104425 c!1325658) b!7104421))

(assert (= (and b!7104425 (not c!1325658)) b!7104431))

(assert (= (or b!7104427 b!7104421) bm!647312))

(assert (= (or b!7104427 b!7104421) bm!647311))

(assert (= (or b!7104422 bm!647311) bm!647310))

(assert (= (or b!7104422 bm!647312) bm!647313))

(assert (= (or b!7104424 bm!647310) bm!647314))

(assert (= (or b!7104424 b!7104422) bm!647315))

(declare-fun m!7828140 () Bool)

(assert (=> bm!647315 m!7828140))

(declare-fun m!7828142 () Bool)

(assert (=> bm!647313 m!7828142))

(declare-fun m!7828144 () Bool)

(assert (=> bm!647314 m!7828144))

(declare-fun m!7828146 () Bool)

(assert (=> b!7104430 m!7828146))

(declare-fun m!7828148 () Bool)

(assert (=> b!7104428 m!7828148))

(assert (=> b!7104298 d!2219037))

(declare-fun b!7104432 () Bool)

(declare-fun e!4270005 () (InoxSet Context!13794))

(declare-fun call!647322 () (InoxSet Context!13794))

(assert (=> b!7104432 (= e!4270005 call!647322)))

(declare-fun b!7104433 () Bool)

(declare-fun e!4270006 () (InoxSet Context!13794))

(declare-fun call!647326 () (InoxSet Context!13794))

(declare-fun call!647321 () (InoxSet Context!13794))

(assert (=> b!7104433 (= e!4270006 ((_ map or) call!647326 call!647321))))

(declare-fun b!7104434 () Bool)

(declare-fun c!1325664 () Bool)

(declare-fun e!4270008 () Bool)

(assert (=> b!7104434 (= c!1325664 e!4270008)))

(declare-fun res!2900304 () Bool)

(assert (=> b!7104434 (=> (not res!2900304) (not e!4270008))))

(assert (=> b!7104434 (= res!2900304 ((_ is Concat!26748) r!11554))))

(declare-fun e!4270009 () (InoxSet Context!13794))

(assert (=> b!7104434 (= e!4270009 e!4270006)))

(declare-fun b!7104435 () Bool)

(declare-fun call!647324 () (InoxSet Context!13794))

(assert (=> b!7104435 (= e!4270009 ((_ map or) call!647326 call!647324))))

(declare-fun bm!647316 () Bool)

(assert (=> bm!647316 (= call!647321 call!647324)))

(declare-fun b!7104436 () Bool)

(declare-fun c!1325663 () Bool)

(assert (=> b!7104436 (= c!1325663 ((_ is Star!17903) r!11554))))

(declare-fun e!4270004 () (InoxSet Context!13794))

(assert (=> b!7104436 (= e!4270004 e!4270005)))

(declare-fun b!7104437 () Bool)

(assert (=> b!7104437 (= e!4270006 e!4270004)))

(declare-fun c!1325667 () Bool)

(assert (=> b!7104437 (= c!1325667 ((_ is Concat!26748) r!11554))))

(declare-fun bm!647317 () Bool)

(assert (=> bm!647317 (= call!647322 call!647321)))

(declare-fun bm!647318 () Bool)

(declare-fun call!647325 () List!68864)

(declare-fun call!647323 () List!68864)

(assert (=> bm!647318 (= call!647325 call!647323)))

(declare-fun b!7104438 () Bool)

(assert (=> b!7104438 (= e!4270004 call!647322)))

(declare-fun bm!647319 () Bool)

(assert (=> bm!647319 (= call!647323 ($colon$colon!2766 (exprs!7397 lt!2558598) (ite (or c!1325664 c!1325667) (regTwo!36318 r!11554) r!11554)))))

(declare-fun c!1325666 () Bool)

(declare-fun bm!647320 () Bool)

(assert (=> bm!647320 (= call!647324 (derivationStepZipperDown!2426 (ite c!1325666 (regTwo!36319 r!11554) (ite c!1325664 (regTwo!36318 r!11554) (ite c!1325667 (regOne!36318 r!11554) (reg!18232 r!11554)))) (ite (or c!1325666 c!1325664) lt!2558598 (Context!13795 call!647325)) a!1901))))

(declare-fun d!2219045 () Bool)

(declare-fun c!1325665 () Bool)

(assert (=> d!2219045 (= c!1325665 (and ((_ is ElementMatch!17903) r!11554) (= (c!1325614 r!11554) a!1901)))))

(declare-fun e!4270007 () (InoxSet Context!13794))

(assert (=> d!2219045 (= (derivationStepZipperDown!2426 r!11554 lt!2558598 a!1901) e!4270007)))

(declare-fun b!7104439 () Bool)

(assert (=> b!7104439 (= e!4270008 (nullable!7540 (regOne!36318 r!11554)))))

(declare-fun bm!647321 () Bool)

(assert (=> bm!647321 (= call!647326 (derivationStepZipperDown!2426 (ite c!1325666 (regOne!36319 r!11554) (regOne!36318 r!11554)) (ite c!1325666 lt!2558598 (Context!13795 call!647323)) a!1901))))

(declare-fun b!7104440 () Bool)

(assert (=> b!7104440 (= e!4270007 e!4270009)))

(assert (=> b!7104440 (= c!1325666 ((_ is Union!17903) r!11554))))

(declare-fun b!7104441 () Bool)

(assert (=> b!7104441 (= e!4270007 (store ((as const (Array Context!13794 Bool)) false) lt!2558598 true))))

(declare-fun b!7104442 () Bool)

(assert (=> b!7104442 (= e!4270005 ((as const (Array Context!13794 Bool)) false))))

(assert (= (and d!2219045 c!1325665) b!7104441))

(assert (= (and d!2219045 (not c!1325665)) b!7104440))

(assert (= (and b!7104440 c!1325666) b!7104435))

(assert (= (and b!7104440 (not c!1325666)) b!7104434))

(assert (= (and b!7104434 res!2900304) b!7104439))

(assert (= (and b!7104434 c!1325664) b!7104433))

(assert (= (and b!7104434 (not c!1325664)) b!7104437))

(assert (= (and b!7104437 c!1325667) b!7104438))

(assert (= (and b!7104437 (not c!1325667)) b!7104436))

(assert (= (and b!7104436 c!1325663) b!7104432))

(assert (= (and b!7104436 (not c!1325663)) b!7104442))

(assert (= (or b!7104438 b!7104432) bm!647318))

(assert (= (or b!7104438 b!7104432) bm!647317))

(assert (= (or b!7104433 bm!647317) bm!647316))

(assert (= (or b!7104433 bm!647318) bm!647319))

(assert (= (or b!7104435 bm!647316) bm!647320))

(assert (= (or b!7104435 b!7104433) bm!647321))

(declare-fun m!7828154 () Bool)

(assert (=> bm!647321 m!7828154))

(declare-fun m!7828156 () Bool)

(assert (=> bm!647319 m!7828156))

(declare-fun m!7828158 () Bool)

(assert (=> bm!647320 m!7828158))

(declare-fun m!7828160 () Bool)

(assert (=> b!7104441 m!7828160))

(declare-fun m!7828162 () Bool)

(assert (=> b!7104439 m!7828162))

(assert (=> b!7104292 d!2219045))

(declare-fun b!7104454 () Bool)

(declare-fun e!4270017 () (InoxSet Context!13794))

(declare-fun call!647334 () (InoxSet Context!13794))

(assert (=> b!7104454 (= e!4270017 call!647334)))

(declare-fun b!7104455 () Bool)

(declare-fun e!4270018 () (InoxSet Context!13794))

(declare-fun call!647338 () (InoxSet Context!13794))

(declare-fun call!647333 () (InoxSet Context!13794))

(assert (=> b!7104455 (= e!4270018 ((_ map or) call!647338 call!647333))))

(declare-fun b!7104456 () Bool)

(declare-fun c!1325674 () Bool)

(declare-fun e!4270020 () Bool)

(assert (=> b!7104456 (= c!1325674 e!4270020)))

(declare-fun res!2900306 () Bool)

(assert (=> b!7104456 (=> (not res!2900306) (not e!4270020))))

(assert (=> b!7104456 (= res!2900306 ((_ is Concat!26748) (regTwo!36319 r!11554)))))

(declare-fun e!4270021 () (InoxSet Context!13794))

(assert (=> b!7104456 (= e!4270021 e!4270018)))

(declare-fun b!7104457 () Bool)

(declare-fun call!647336 () (InoxSet Context!13794))

(assert (=> b!7104457 (= e!4270021 ((_ map or) call!647338 call!647336))))

(declare-fun bm!647328 () Bool)

(assert (=> bm!647328 (= call!647333 call!647336)))

(declare-fun b!7104458 () Bool)

(declare-fun c!1325673 () Bool)

(assert (=> b!7104458 (= c!1325673 ((_ is Star!17903) (regTwo!36319 r!11554)))))

(declare-fun e!4270016 () (InoxSet Context!13794))

(assert (=> b!7104458 (= e!4270016 e!4270017)))

(declare-fun b!7104459 () Bool)

(assert (=> b!7104459 (= e!4270018 e!4270016)))

(declare-fun c!1325677 () Bool)

(assert (=> b!7104459 (= c!1325677 ((_ is Concat!26748) (regTwo!36319 r!11554)))))

(declare-fun bm!647329 () Bool)

(assert (=> bm!647329 (= call!647334 call!647333)))

(declare-fun bm!647330 () Bool)

(declare-fun call!647337 () List!68864)

(declare-fun call!647335 () List!68864)

(assert (=> bm!647330 (= call!647337 call!647335)))

(declare-fun b!7104460 () Bool)

(assert (=> b!7104460 (= e!4270016 call!647334)))

(declare-fun bm!647331 () Bool)

(assert (=> bm!647331 (= call!647335 ($colon$colon!2766 (exprs!7397 lt!2558598) (ite (or c!1325674 c!1325677) (regTwo!36318 (regTwo!36319 r!11554)) (regTwo!36319 r!11554))))))

(declare-fun c!1325676 () Bool)

(declare-fun bm!647332 () Bool)

(assert (=> bm!647332 (= call!647336 (derivationStepZipperDown!2426 (ite c!1325676 (regTwo!36319 (regTwo!36319 r!11554)) (ite c!1325674 (regTwo!36318 (regTwo!36319 r!11554)) (ite c!1325677 (regOne!36318 (regTwo!36319 r!11554)) (reg!18232 (regTwo!36319 r!11554))))) (ite (or c!1325676 c!1325674) lt!2558598 (Context!13795 call!647337)) a!1901))))

(declare-fun d!2219051 () Bool)

(declare-fun c!1325675 () Bool)

(assert (=> d!2219051 (= c!1325675 (and ((_ is ElementMatch!17903) (regTwo!36319 r!11554)) (= (c!1325614 (regTwo!36319 r!11554)) a!1901)))))

(declare-fun e!4270019 () (InoxSet Context!13794))

(assert (=> d!2219051 (= (derivationStepZipperDown!2426 (regTwo!36319 r!11554) lt!2558598 a!1901) e!4270019)))

(declare-fun b!7104461 () Bool)

(assert (=> b!7104461 (= e!4270020 (nullable!7540 (regOne!36318 (regTwo!36319 r!11554))))))

(declare-fun bm!647333 () Bool)

(assert (=> bm!647333 (= call!647338 (derivationStepZipperDown!2426 (ite c!1325676 (regOne!36319 (regTwo!36319 r!11554)) (regOne!36318 (regTwo!36319 r!11554))) (ite c!1325676 lt!2558598 (Context!13795 call!647335)) a!1901))))

(declare-fun b!7104462 () Bool)

(assert (=> b!7104462 (= e!4270019 e!4270021)))

(assert (=> b!7104462 (= c!1325676 ((_ is Union!17903) (regTwo!36319 r!11554)))))

(declare-fun b!7104463 () Bool)

(assert (=> b!7104463 (= e!4270019 (store ((as const (Array Context!13794 Bool)) false) lt!2558598 true))))

(declare-fun b!7104464 () Bool)

(assert (=> b!7104464 (= e!4270017 ((as const (Array Context!13794 Bool)) false))))

(assert (= (and d!2219051 c!1325675) b!7104463))

(assert (= (and d!2219051 (not c!1325675)) b!7104462))

(assert (= (and b!7104462 c!1325676) b!7104457))

(assert (= (and b!7104462 (not c!1325676)) b!7104456))

(assert (= (and b!7104456 res!2900306) b!7104461))

(assert (= (and b!7104456 c!1325674) b!7104455))

(assert (= (and b!7104456 (not c!1325674)) b!7104459))

(assert (= (and b!7104459 c!1325677) b!7104460))

(assert (= (and b!7104459 (not c!1325677)) b!7104458))

(assert (= (and b!7104458 c!1325673) b!7104454))

(assert (= (and b!7104458 (not c!1325673)) b!7104464))

(assert (= (or b!7104460 b!7104454) bm!647330))

(assert (= (or b!7104460 b!7104454) bm!647329))

(assert (= (or b!7104455 bm!647329) bm!647328))

(assert (= (or b!7104455 bm!647330) bm!647331))

(assert (= (or b!7104457 bm!647328) bm!647332))

(assert (= (or b!7104457 b!7104455) bm!647333))

(declare-fun m!7828174 () Bool)

(assert (=> bm!647333 m!7828174))

(declare-fun m!7828176 () Bool)

(assert (=> bm!647331 m!7828176))

(declare-fun m!7828178 () Bool)

(assert (=> bm!647332 m!7828178))

(assert (=> b!7104463 m!7828160))

(declare-fun m!7828180 () Bool)

(assert (=> b!7104461 m!7828180))

(assert (=> b!7104292 d!2219051))

(declare-fun b!7104486 () Bool)

(declare-fun e!4270032 () List!68864)

(assert (=> b!7104486 (= e!4270032 (Cons!68740 (h!75188 (exprs!7397 c!9994)) (++!16055 (t!382681 (exprs!7397 c!9994)) (exprs!7397 auxCtx!45))))))

(declare-fun b!7104485 () Bool)

(assert (=> b!7104485 (= e!4270032 (exprs!7397 auxCtx!45))))

(declare-fun b!7104487 () Bool)

(declare-fun res!2900318 () Bool)

(declare-fun e!4270033 () Bool)

(assert (=> b!7104487 (=> (not res!2900318) (not e!4270033))))

(declare-fun lt!2558626 () List!68864)

(declare-fun size!41367 (List!68864) Int)

(assert (=> b!7104487 (= res!2900318 (= (size!41367 lt!2558626) (+ (size!41367 (exprs!7397 c!9994)) (size!41367 (exprs!7397 auxCtx!45)))))))

(declare-fun d!2219055 () Bool)

(assert (=> d!2219055 e!4270033))

(declare-fun res!2900317 () Bool)

(assert (=> d!2219055 (=> (not res!2900317) (not e!4270033))))

(declare-fun content!13992 (List!68864) (InoxSet Regex!17903))

(assert (=> d!2219055 (= res!2900317 (= (content!13992 lt!2558626) ((_ map or) (content!13992 (exprs!7397 c!9994)) (content!13992 (exprs!7397 auxCtx!45)))))))

(assert (=> d!2219055 (= lt!2558626 e!4270032)))

(declare-fun c!1325683 () Bool)

(assert (=> d!2219055 (= c!1325683 ((_ is Nil!68740) (exprs!7397 c!9994)))))

(assert (=> d!2219055 (= (++!16055 (exprs!7397 c!9994) (exprs!7397 auxCtx!45)) lt!2558626)))

(declare-fun b!7104488 () Bool)

(assert (=> b!7104488 (= e!4270033 (or (not (= (exprs!7397 auxCtx!45) Nil!68740)) (= lt!2558626 (exprs!7397 c!9994))))))

(assert (= (and d!2219055 c!1325683) b!7104485))

(assert (= (and d!2219055 (not c!1325683)) b!7104486))

(assert (= (and d!2219055 res!2900317) b!7104487))

(assert (= (and b!7104487 res!2900318) b!7104488))

(declare-fun m!7828184 () Bool)

(assert (=> b!7104486 m!7828184))

(declare-fun m!7828186 () Bool)

(assert (=> b!7104487 m!7828186))

(declare-fun m!7828190 () Bool)

(assert (=> b!7104487 m!7828190))

(declare-fun m!7828194 () Bool)

(assert (=> b!7104487 m!7828194))

(declare-fun m!7828200 () Bool)

(assert (=> d!2219055 m!7828200))

(declare-fun m!7828204 () Bool)

(assert (=> d!2219055 m!7828204))

(declare-fun m!7828208 () Bool)

(assert (=> d!2219055 m!7828208))

(assert (=> b!7104292 d!2219055))

(assert (=> b!7104292 d!2219027))

(declare-fun b!7104490 () Bool)

(declare-fun e!4270036 () (InoxSet Context!13794))

(declare-fun call!647343 () (InoxSet Context!13794))

(assert (=> b!7104490 (= e!4270036 call!647343)))

(declare-fun b!7104491 () Bool)

(declare-fun e!4270038 () (InoxSet Context!13794))

(declare-fun call!647350 () (InoxSet Context!13794))

(declare-fun call!647341 () (InoxSet Context!13794))

(assert (=> b!7104491 (= e!4270038 ((_ map or) call!647350 call!647341))))

(declare-fun b!7104492 () Bool)

(declare-fun c!1325686 () Bool)

(declare-fun e!4270042 () Bool)

(assert (=> b!7104492 (= c!1325686 e!4270042)))

(declare-fun res!2900320 () Bool)

(assert (=> b!7104492 (=> (not res!2900320) (not e!4270042))))

(assert (=> b!7104492 (= res!2900320 ((_ is Concat!26748) (regOne!36319 r!11554)))))

(declare-fun e!4270045 () (InoxSet Context!13794))

(assert (=> b!7104492 (= e!4270045 e!4270038)))

(declare-fun b!7104494 () Bool)

(declare-fun call!647345 () (InoxSet Context!13794))

(assert (=> b!7104494 (= e!4270045 ((_ map or) call!647350 call!647345))))

(declare-fun bm!647335 () Bool)

(assert (=> bm!647335 (= call!647341 call!647345)))

(declare-fun b!7104496 () Bool)

(declare-fun c!1325684 () Bool)

(assert (=> b!7104496 (= c!1325684 ((_ is Star!17903) (regOne!36319 r!11554)))))

(declare-fun e!4270035 () (InoxSet Context!13794))

(assert (=> b!7104496 (= e!4270035 e!4270036)))

(declare-fun b!7104497 () Bool)

(assert (=> b!7104497 (= e!4270038 e!4270035)))

(declare-fun c!1325692 () Bool)

(assert (=> b!7104497 (= c!1325692 ((_ is Concat!26748) (regOne!36319 r!11554)))))

(declare-fun bm!647339 () Bool)

(assert (=> bm!647339 (= call!647343 call!647341)))

(declare-fun bm!647340 () Bool)

(declare-fun call!647348 () List!68864)

(declare-fun call!647344 () List!68864)

(assert (=> bm!647340 (= call!647348 call!647344)))

(declare-fun b!7104500 () Bool)

(assert (=> b!7104500 (= e!4270035 call!647343)))

(declare-fun bm!647341 () Bool)

(assert (=> bm!647341 (= call!647344 ($colon$colon!2766 (exprs!7397 lt!2558598) (ite (or c!1325686 c!1325692) (regTwo!36318 (regOne!36319 r!11554)) (regOne!36319 r!11554))))))

(declare-fun bm!647342 () Bool)

(declare-fun c!1325689 () Bool)

(assert (=> bm!647342 (= call!647345 (derivationStepZipperDown!2426 (ite c!1325689 (regTwo!36319 (regOne!36319 r!11554)) (ite c!1325686 (regTwo!36318 (regOne!36319 r!11554)) (ite c!1325692 (regOne!36318 (regOne!36319 r!11554)) (reg!18232 (regOne!36319 r!11554))))) (ite (or c!1325689 c!1325686) lt!2558598 (Context!13795 call!647348)) a!1901))))

(declare-fun d!2219059 () Bool)

(declare-fun c!1325687 () Bool)

(assert (=> d!2219059 (= c!1325687 (and ((_ is ElementMatch!17903) (regOne!36319 r!11554)) (= (c!1325614 (regOne!36319 r!11554)) a!1901)))))

(declare-fun e!4270040 () (InoxSet Context!13794))

(assert (=> d!2219059 (= (derivationStepZipperDown!2426 (regOne!36319 r!11554) lt!2558598 a!1901) e!4270040)))

(declare-fun b!7104504 () Bool)

(assert (=> b!7104504 (= e!4270042 (nullable!7540 (regOne!36318 (regOne!36319 r!11554))))))

(declare-fun bm!647343 () Bool)

(assert (=> bm!647343 (= call!647350 (derivationStepZipperDown!2426 (ite c!1325689 (regOne!36319 (regOne!36319 r!11554)) (regOne!36318 (regOne!36319 r!11554))) (ite c!1325689 lt!2558598 (Context!13795 call!647344)) a!1901))))

(declare-fun b!7104505 () Bool)

(assert (=> b!7104505 (= e!4270040 e!4270045)))

(assert (=> b!7104505 (= c!1325689 ((_ is Union!17903) (regOne!36319 r!11554)))))

(declare-fun b!7104507 () Bool)

(assert (=> b!7104507 (= e!4270040 (store ((as const (Array Context!13794 Bool)) false) lt!2558598 true))))

(declare-fun b!7104509 () Bool)

(assert (=> b!7104509 (= e!4270036 ((as const (Array Context!13794 Bool)) false))))

(assert (= (and d!2219059 c!1325687) b!7104507))

(assert (= (and d!2219059 (not c!1325687)) b!7104505))

(assert (= (and b!7104505 c!1325689) b!7104494))

(assert (= (and b!7104505 (not c!1325689)) b!7104492))

(assert (= (and b!7104492 res!2900320) b!7104504))

(assert (= (and b!7104492 c!1325686) b!7104491))

(assert (= (and b!7104492 (not c!1325686)) b!7104497))

(assert (= (and b!7104497 c!1325692) b!7104500))

(assert (= (and b!7104497 (not c!1325692)) b!7104496))

(assert (= (and b!7104496 c!1325684) b!7104490))

(assert (= (and b!7104496 (not c!1325684)) b!7104509))

(assert (= (or b!7104500 b!7104490) bm!647340))

(assert (= (or b!7104500 b!7104490) bm!647339))

(assert (= (or b!7104491 bm!647339) bm!647335))

(assert (= (or b!7104491 bm!647340) bm!647341))

(assert (= (or b!7104494 bm!647335) bm!647342))

(assert (= (or b!7104494 b!7104491) bm!647343))

(declare-fun m!7828210 () Bool)

(assert (=> bm!647343 m!7828210))

(declare-fun m!7828214 () Bool)

(assert (=> bm!647341 m!7828214))

(declare-fun m!7828220 () Bool)

(assert (=> bm!647342 m!7828220))

(assert (=> b!7104507 m!7828160))

(assert (=> b!7104504 m!7828148))

(assert (=> b!7104292 d!2219059))

(declare-fun b!7104511 () Bool)

(declare-fun e!4270047 () Bool)

(declare-fun e!4270049 () Bool)

(assert (=> b!7104511 (= e!4270047 e!4270049)))

(declare-fun c!1325695 () Bool)

(assert (=> b!7104511 (= c!1325695 ((_ is Star!17903) r!11554))))

(declare-fun b!7104512 () Bool)

(declare-fun e!4270051 () Bool)

(declare-fun call!647351 () Bool)

(assert (=> b!7104512 (= e!4270051 call!647351)))

(declare-fun b!7104513 () Bool)

(declare-fun e!4270048 () Bool)

(declare-fun call!647352 () Bool)

(assert (=> b!7104513 (= e!4270048 call!647352)))

(declare-fun b!7104514 () Bool)

(declare-fun e!4270046 () Bool)

(assert (=> b!7104514 (= e!4270049 e!4270046)))

(declare-fun res!2900324 () Bool)

(assert (=> b!7104514 (= res!2900324 (not (nullable!7540 (reg!18232 r!11554))))))

(assert (=> b!7104514 (=> (not res!2900324) (not e!4270046))))

(declare-fun b!7104515 () Bool)

(declare-fun res!2900323 () Bool)

(assert (=> b!7104515 (=> (not res!2900323) (not e!4270048))))

(assert (=> b!7104515 (= res!2900323 call!647351)))

(declare-fun e!4270050 () Bool)

(assert (=> b!7104515 (= e!4270050 e!4270048)))

(declare-fun c!1325694 () Bool)

(declare-fun call!647353 () Bool)

(declare-fun bm!647346 () Bool)

(assert (=> bm!647346 (= call!647353 (validRegex!9176 (ite c!1325695 (reg!18232 r!11554) (ite c!1325694 (regOne!36319 r!11554) (regTwo!36318 r!11554)))))))

(declare-fun bm!647347 () Bool)

(assert (=> bm!647347 (= call!647351 call!647353)))

(declare-fun bm!647348 () Bool)

(assert (=> bm!647348 (= call!647352 (validRegex!9176 (ite c!1325694 (regTwo!36319 r!11554) (regOne!36318 r!11554))))))

(declare-fun b!7104516 () Bool)

(assert (=> b!7104516 (= e!4270049 e!4270050)))

(assert (=> b!7104516 (= c!1325694 ((_ is Union!17903) r!11554))))

(declare-fun b!7104517 () Bool)

(assert (=> b!7104517 (= e!4270046 call!647353)))

(declare-fun d!2219061 () Bool)

(declare-fun res!2900321 () Bool)

(assert (=> d!2219061 (=> res!2900321 e!4270047)))

(assert (=> d!2219061 (= res!2900321 ((_ is ElementMatch!17903) r!11554))))

(assert (=> d!2219061 (= (validRegex!9176 r!11554) e!4270047)))

(declare-fun b!7104518 () Bool)

(declare-fun res!2900322 () Bool)

(declare-fun e!4270053 () Bool)

(assert (=> b!7104518 (=> res!2900322 e!4270053)))

(assert (=> b!7104518 (= res!2900322 (not ((_ is Concat!26748) r!11554)))))

(assert (=> b!7104518 (= e!4270050 e!4270053)))

(declare-fun b!7104519 () Bool)

(assert (=> b!7104519 (= e!4270053 e!4270051)))

(declare-fun res!2900325 () Bool)

(assert (=> b!7104519 (=> (not res!2900325) (not e!4270051))))

(assert (=> b!7104519 (= res!2900325 call!647352)))

(assert (= (and d!2219061 (not res!2900321)) b!7104511))

(assert (= (and b!7104511 c!1325695) b!7104514))

(assert (= (and b!7104511 (not c!1325695)) b!7104516))

(assert (= (and b!7104514 res!2900324) b!7104517))

(assert (= (and b!7104516 c!1325694) b!7104515))

(assert (= (and b!7104516 (not c!1325694)) b!7104518))

(assert (= (and b!7104515 res!2900323) b!7104513))

(assert (= (and b!7104518 (not res!2900322)) b!7104519))

(assert (= (and b!7104519 res!2900325) b!7104512))

(assert (= (or b!7104515 b!7104512) bm!647347))

(assert (= (or b!7104513 b!7104519) bm!647348))

(assert (= (or b!7104517 bm!647347) bm!647346))

(declare-fun m!7828224 () Bool)

(assert (=> b!7104514 m!7828224))

(declare-fun m!7828226 () Bool)

(assert (=> bm!647346 m!7828226))

(declare-fun m!7828228 () Bool)

(assert (=> bm!647348 m!7828228))

(assert (=> start!691580 d!2219061))

(declare-fun bs!1884554 () Bool)

(declare-fun d!2219065 () Bool)

(assert (= bs!1884554 (and d!2219065 b!7104292)))

(declare-fun lambda!431364 () Int)

(assert (=> bs!1884554 (= lambda!431364 lambda!431341)))

(declare-fun bs!1884555 () Bool)

(assert (= bs!1884555 (and d!2219065 d!2219023)))

(assert (=> bs!1884555 (= lambda!431364 lambda!431347)))

(assert (=> d!2219065 (= (inv!87620 c!9994) (forall!16805 (exprs!7397 c!9994) lambda!431364))))

(declare-fun bs!1884556 () Bool)

(assert (= bs!1884556 d!2219065))

(declare-fun m!7828236 () Bool)

(assert (=> bs!1884556 m!7828236))

(assert (=> start!691580 d!2219065))

(declare-fun bs!1884557 () Bool)

(declare-fun d!2219067 () Bool)

(assert (= bs!1884557 (and d!2219067 b!7104292)))

(declare-fun lambda!431365 () Int)

(assert (=> bs!1884557 (= lambda!431365 lambda!431341)))

(declare-fun bs!1884558 () Bool)

(assert (= bs!1884558 (and d!2219067 d!2219023)))

(assert (=> bs!1884558 (= lambda!431365 lambda!431347)))

(declare-fun bs!1884559 () Bool)

(assert (= bs!1884559 (and d!2219067 d!2219065)))

(assert (=> bs!1884559 (= lambda!431365 lambda!431364)))

(assert (=> d!2219067 (= (inv!87620 auxCtx!45) (forall!16805 (exprs!7397 auxCtx!45) lambda!431365))))

(declare-fun bs!1884560 () Bool)

(assert (= bs!1884560 d!2219067))

(declare-fun m!7828238 () Bool)

(assert (=> bs!1884560 m!7828238))

(assert (=> start!691580 d!2219067))

(declare-fun b!7104562 () Bool)

(declare-fun e!4270069 () Bool)

(declare-fun tp!1953632 () Bool)

(declare-fun tp!1953633 () Bool)

(assert (=> b!7104562 (= e!4270069 (and tp!1953632 tp!1953633))))

(assert (=> b!7104291 (= tp!1953594 e!4270069)))

(assert (= (and b!7104291 ((_ is Cons!68740) (exprs!7397 c!9994))) b!7104562))

(declare-fun b!7104583 () Bool)

(declare-fun e!4270075 () Bool)

(declare-fun tp!1953657 () Bool)

(declare-fun tp!1953659 () Bool)

(assert (=> b!7104583 (= e!4270075 (and tp!1953657 tp!1953659))))

(declare-fun b!7104584 () Bool)

(declare-fun tp!1953658 () Bool)

(assert (=> b!7104584 (= e!4270075 tp!1953658)))

(assert (=> b!7104297 (= tp!1953590 e!4270075)))

(declare-fun b!7104585 () Bool)

(declare-fun tp!1953660 () Bool)

(declare-fun tp!1953656 () Bool)

(assert (=> b!7104585 (= e!4270075 (and tp!1953660 tp!1953656))))

(declare-fun b!7104582 () Bool)

(assert (=> b!7104582 (= e!4270075 tp_is_empty!45039)))

(assert (= (and b!7104297 ((_ is ElementMatch!17903) (regOne!36319 r!11554))) b!7104582))

(assert (= (and b!7104297 ((_ is Concat!26748) (regOne!36319 r!11554))) b!7104583))

(assert (= (and b!7104297 ((_ is Star!17903) (regOne!36319 r!11554))) b!7104584))

(assert (= (and b!7104297 ((_ is Union!17903) (regOne!36319 r!11554))) b!7104585))

(declare-fun b!7104587 () Bool)

(declare-fun e!4270076 () Bool)

(declare-fun tp!1953662 () Bool)

(declare-fun tp!1953664 () Bool)

(assert (=> b!7104587 (= e!4270076 (and tp!1953662 tp!1953664))))

(declare-fun b!7104588 () Bool)

(declare-fun tp!1953663 () Bool)

(assert (=> b!7104588 (= e!4270076 tp!1953663)))

(assert (=> b!7104297 (= tp!1953595 e!4270076)))

(declare-fun b!7104589 () Bool)

(declare-fun tp!1953665 () Bool)

(declare-fun tp!1953661 () Bool)

(assert (=> b!7104589 (= e!4270076 (and tp!1953665 tp!1953661))))

(declare-fun b!7104586 () Bool)

(assert (=> b!7104586 (= e!4270076 tp_is_empty!45039)))

(assert (= (and b!7104297 ((_ is ElementMatch!17903) (regTwo!36319 r!11554))) b!7104586))

(assert (= (and b!7104297 ((_ is Concat!26748) (regTwo!36319 r!11554))) b!7104587))

(assert (= (and b!7104297 ((_ is Star!17903) (regTwo!36319 r!11554))) b!7104588))

(assert (= (and b!7104297 ((_ is Union!17903) (regTwo!36319 r!11554))) b!7104589))

(declare-fun b!7104591 () Bool)

(declare-fun e!4270077 () Bool)

(declare-fun tp!1953667 () Bool)

(declare-fun tp!1953669 () Bool)

(assert (=> b!7104591 (= e!4270077 (and tp!1953667 tp!1953669))))

(declare-fun b!7104592 () Bool)

(declare-fun tp!1953668 () Bool)

(assert (=> b!7104592 (= e!4270077 tp!1953668)))

(assert (=> b!7104290 (= tp!1953596 e!4270077)))

(declare-fun b!7104593 () Bool)

(declare-fun tp!1953670 () Bool)

(declare-fun tp!1953666 () Bool)

(assert (=> b!7104593 (= e!4270077 (and tp!1953670 tp!1953666))))

(declare-fun b!7104590 () Bool)

(assert (=> b!7104590 (= e!4270077 tp_is_empty!45039)))

(assert (= (and b!7104290 ((_ is ElementMatch!17903) (regOne!36318 r!11554))) b!7104590))

(assert (= (and b!7104290 ((_ is Concat!26748) (regOne!36318 r!11554))) b!7104591))

(assert (= (and b!7104290 ((_ is Star!17903) (regOne!36318 r!11554))) b!7104592))

(assert (= (and b!7104290 ((_ is Union!17903) (regOne!36318 r!11554))) b!7104593))

(declare-fun b!7104595 () Bool)

(declare-fun e!4270078 () Bool)

(declare-fun tp!1953672 () Bool)

(declare-fun tp!1953674 () Bool)

(assert (=> b!7104595 (= e!4270078 (and tp!1953672 tp!1953674))))

(declare-fun b!7104596 () Bool)

(declare-fun tp!1953673 () Bool)

(assert (=> b!7104596 (= e!4270078 tp!1953673)))

(assert (=> b!7104290 (= tp!1953593 e!4270078)))

(declare-fun b!7104597 () Bool)

(declare-fun tp!1953675 () Bool)

(declare-fun tp!1953671 () Bool)

(assert (=> b!7104597 (= e!4270078 (and tp!1953675 tp!1953671))))

(declare-fun b!7104594 () Bool)

(assert (=> b!7104594 (= e!4270078 tp_is_empty!45039)))

(assert (= (and b!7104290 ((_ is ElementMatch!17903) (regTwo!36318 r!11554))) b!7104594))

(assert (= (and b!7104290 ((_ is Concat!26748) (regTwo!36318 r!11554))) b!7104595))

(assert (= (and b!7104290 ((_ is Star!17903) (regTwo!36318 r!11554))) b!7104596))

(assert (= (and b!7104290 ((_ is Union!17903) (regTwo!36318 r!11554))) b!7104597))

(declare-fun b!7104599 () Bool)

(declare-fun e!4270079 () Bool)

(declare-fun tp!1953677 () Bool)

(declare-fun tp!1953679 () Bool)

(assert (=> b!7104599 (= e!4270079 (and tp!1953677 tp!1953679))))

(declare-fun b!7104600 () Bool)

(declare-fun tp!1953678 () Bool)

(assert (=> b!7104600 (= e!4270079 tp!1953678)))

(assert (=> b!7104295 (= tp!1953591 e!4270079)))

(declare-fun b!7104601 () Bool)

(declare-fun tp!1953680 () Bool)

(declare-fun tp!1953676 () Bool)

(assert (=> b!7104601 (= e!4270079 (and tp!1953680 tp!1953676))))

(declare-fun b!7104598 () Bool)

(assert (=> b!7104598 (= e!4270079 tp_is_empty!45039)))

(assert (= (and b!7104295 ((_ is ElementMatch!17903) (reg!18232 r!11554))) b!7104598))

(assert (= (and b!7104295 ((_ is Concat!26748) (reg!18232 r!11554))) b!7104599))

(assert (= (and b!7104295 ((_ is Star!17903) (reg!18232 r!11554))) b!7104600))

(assert (= (and b!7104295 ((_ is Union!17903) (reg!18232 r!11554))) b!7104601))

(declare-fun b!7104602 () Bool)

(declare-fun e!4270080 () Bool)

(declare-fun tp!1953681 () Bool)

(declare-fun tp!1953682 () Bool)

(assert (=> b!7104602 (= e!4270080 (and tp!1953681 tp!1953682))))

(assert (=> b!7104294 (= tp!1953592 e!4270080)))

(assert (= (and b!7104294 ((_ is Cons!68740) (exprs!7397 auxCtx!45))) b!7104602))

(check-sat (not d!2219035) (not bm!647343) (not bm!647331) (not b!7104597) (not b!7104596) (not bm!647274) (not b!7104585) (not b!7104599) (not bm!647341) (not b!7104461) (not bm!647321) (not d!2219067) (not bm!647319) (not bm!647314) (not b!7104347) (not b!7104486) (not d!2219055) (not bm!647332) (not b!7104487) (not bm!647342) (not b!7104593) (not bm!647315) (not b!7104588) (not b!7104587) (not b!7104439) (not b!7104562) tp_is_empty!45039 (not bm!647346) (not b!7104592) (not b!7104600) (not b!7104504) (not d!2219065) (not b!7104584) (not bm!647348) (not b!7104601) (not bm!647276) (not b!7104591) (not b!7104514) (not b!7104428) (not b!7104595) (not bm!647320) (not bm!647313) (not d!2219027) (not d!2219023) (not b!7104583) (not b!7104602) (not b!7104589) (not bm!647333))
(check-sat)
