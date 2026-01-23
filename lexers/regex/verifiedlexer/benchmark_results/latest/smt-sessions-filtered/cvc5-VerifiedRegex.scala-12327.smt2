; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!691506 () Bool)

(assert start!691506)

(declare-fun b!7103258 () Bool)

(declare-fun e!4269358 () Bool)

(declare-fun tp!1953191 () Bool)

(assert (=> b!7103258 (= e!4269358 tp!1953191)))

(declare-fun b!7103259 () Bool)

(declare-fun e!4269357 () Bool)

(declare-fun tp_is_empty!45025 () Bool)

(assert (=> b!7103259 (= e!4269357 tp_is_empty!45025)))

(declare-fun b!7103260 () Bool)

(declare-fun tp!1953186 () Bool)

(declare-fun tp!1953188 () Bool)

(assert (=> b!7103260 (= e!4269357 (and tp!1953186 tp!1953188))))

(declare-fun b!7103261 () Bool)

(declare-fun e!4269360 () Bool)

(declare-fun tp!1953185 () Bool)

(assert (=> b!7103261 (= e!4269360 tp!1953185)))

(declare-fun b!7103262 () Bool)

(declare-fun tp!1953187 () Bool)

(assert (=> b!7103262 (= e!4269357 tp!1953187)))

(declare-fun res!2900005 () Bool)

(declare-fun e!4269359 () Bool)

(assert (=> start!691506 (=> (not res!2900005) (not e!4269359))))

(declare-datatypes ((C!36062 0))(
  ( (C!36063 (val!27737 Int)) )
))
(declare-datatypes ((Regex!17896 0))(
  ( (ElementMatch!17896 (c!1325389 C!36062)) (Concat!26741 (regOne!36304 Regex!17896) (regTwo!36304 Regex!17896)) (EmptyExpr!17896) (Star!17896 (reg!18225 Regex!17896)) (EmptyLang!17896) (Union!17896 (regOne!36305 Regex!17896) (regTwo!36305 Regex!17896)) )
))
(declare-fun r!11554 () Regex!17896)

(declare-fun validRegex!9169 (Regex!17896) Bool)

(assert (=> start!691506 (= res!2900005 (validRegex!9169 r!11554))))

(assert (=> start!691506 e!4269359))

(assert (=> start!691506 e!4269357))

(assert (=> start!691506 tp_is_empty!45025))

(declare-datatypes ((List!68857 0))(
  ( (Nil!68733) (Cons!68733 (h!75181 Regex!17896) (t!382674 List!68857)) )
))
(declare-datatypes ((Context!13780 0))(
  ( (Context!13781 (exprs!7390 List!68857)) )
))
(declare-fun c!9994 () Context!13780)

(declare-fun inv!87604 (Context!13780) Bool)

(assert (=> start!691506 (and (inv!87604 c!9994) e!4269360)))

(declare-fun auxCtx!45 () Context!13780)

(assert (=> start!691506 (and (inv!87604 auxCtx!45) e!4269358)))

(declare-fun b!7103257 () Bool)

(declare-fun res!2900006 () Bool)

(assert (=> b!7103257 (=> (not res!2900006) (not e!4269359))))

(declare-fun a!1901 () C!36062)

(assert (=> b!7103257 (= res!2900006 (and (or (not (is-ElementMatch!17896 r!11554)) (not (= (c!1325389 r!11554) a!1901))) (is-Union!17896 r!11554)))))

(declare-fun b!7103263 () Bool)

(declare-fun tp!1953189 () Bool)

(declare-fun tp!1953190 () Bool)

(assert (=> b!7103263 (= e!4269357 (and tp!1953189 tp!1953190))))

(declare-fun b!7103264 () Bool)

(declare-fun ++!16048 (List!68857 List!68857) List!68857)

(assert (=> b!7103264 (= e!4269359 (not (inv!87604 (Context!13781 (++!16048 (exprs!7390 c!9994) (exprs!7390 auxCtx!45))))))))

(declare-fun lambda!431262 () Int)

(declare-datatypes ((Unit!162463 0))(
  ( (Unit!162464) )
))
(declare-fun lt!2558453 () Unit!162463)

(declare-fun lemmaConcatPreservesForall!1181 (List!68857 List!68857 Int) Unit!162463)

(assert (=> b!7103264 (= lt!2558453 (lemmaConcatPreservesForall!1181 (exprs!7390 c!9994) (exprs!7390 auxCtx!45) lambda!431262))))

(declare-fun lt!2558454 () Unit!162463)

(assert (=> b!7103264 (= lt!2558454 (lemmaConcatPreservesForall!1181 (exprs!7390 c!9994) (exprs!7390 auxCtx!45) lambda!431262))))

(declare-fun lt!2558455 () Unit!162463)

(assert (=> b!7103264 (= lt!2558455 (lemmaConcatPreservesForall!1181 (exprs!7390 c!9994) (exprs!7390 auxCtx!45) lambda!431262))))

(assert (= (and start!691506 res!2900005) b!7103257))

(assert (= (and b!7103257 res!2900006) b!7103264))

(assert (= (and start!691506 (is-ElementMatch!17896 r!11554)) b!7103259))

(assert (= (and start!691506 (is-Concat!26741 r!11554)) b!7103263))

(assert (= (and start!691506 (is-Star!17896 r!11554)) b!7103262))

(assert (= (and start!691506 (is-Union!17896 r!11554)) b!7103260))

(assert (= start!691506 b!7103261))

(assert (= start!691506 b!7103258))

(declare-fun m!7827576 () Bool)

(assert (=> start!691506 m!7827576))

(declare-fun m!7827578 () Bool)

(assert (=> start!691506 m!7827578))

(declare-fun m!7827580 () Bool)

(assert (=> start!691506 m!7827580))

(declare-fun m!7827582 () Bool)

(assert (=> b!7103264 m!7827582))

(declare-fun m!7827584 () Bool)

(assert (=> b!7103264 m!7827584))

(assert (=> b!7103264 m!7827584))

(assert (=> b!7103264 m!7827584))

(declare-fun m!7827586 () Bool)

(assert (=> b!7103264 m!7827586))

(push 1)

(assert (not start!691506))

(assert (not b!7103258))

(assert (not b!7103262))

(assert (not b!7103261))

(assert tp_is_empty!45025)

(assert (not b!7103263))

(assert (not b!7103260))

(assert (not b!7103264))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2218914 () Bool)

(declare-fun forall!16799 (List!68857 Int) Bool)

(assert (=> d!2218914 (forall!16799 (++!16048 (exprs!7390 c!9994) (exprs!7390 auxCtx!45)) lambda!431262)))

(declare-fun lt!2558467 () Unit!162463)

(declare-fun choose!54786 (List!68857 List!68857 Int) Unit!162463)

(assert (=> d!2218914 (= lt!2558467 (choose!54786 (exprs!7390 c!9994) (exprs!7390 auxCtx!45) lambda!431262))))

(assert (=> d!2218914 (forall!16799 (exprs!7390 c!9994) lambda!431262)))

(assert (=> d!2218914 (= (lemmaConcatPreservesForall!1181 (exprs!7390 c!9994) (exprs!7390 auxCtx!45) lambda!431262) lt!2558467)))

(declare-fun bs!1884489 () Bool)

(assert (= bs!1884489 d!2218914))

(assert (=> bs!1884489 m!7827586))

(assert (=> bs!1884489 m!7827586))

(declare-fun m!7827600 () Bool)

(assert (=> bs!1884489 m!7827600))

(declare-fun m!7827602 () Bool)

(assert (=> bs!1884489 m!7827602))

(declare-fun m!7827604 () Bool)

(assert (=> bs!1884489 m!7827604))

(assert (=> b!7103264 d!2218914))

(declare-fun bs!1884490 () Bool)

(declare-fun d!2218916 () Bool)

(assert (= bs!1884490 (and d!2218916 b!7103264)))

(declare-fun lambda!431272 () Int)

(assert (=> bs!1884490 (= lambda!431272 lambda!431262)))

(assert (=> d!2218916 (= (inv!87604 (Context!13781 (++!16048 (exprs!7390 c!9994) (exprs!7390 auxCtx!45)))) (forall!16799 (exprs!7390 (Context!13781 (++!16048 (exprs!7390 c!9994) (exprs!7390 auxCtx!45)))) lambda!431272))))

(declare-fun bs!1884491 () Bool)

(assert (= bs!1884491 d!2218916))

(declare-fun m!7827606 () Bool)

(assert (=> bs!1884491 m!7827606))

(assert (=> b!7103264 d!2218916))

(declare-fun b!7103299 () Bool)

(declare-fun res!2900017 () Bool)

(declare-fun e!4269377 () Bool)

(assert (=> b!7103299 (=> (not res!2900017) (not e!4269377))))

(declare-fun lt!2558470 () List!68857)

(declare-fun size!41361 (List!68857) Int)

(assert (=> b!7103299 (= res!2900017 (= (size!41361 lt!2558470) (+ (size!41361 (exprs!7390 c!9994)) (size!41361 (exprs!7390 auxCtx!45)))))))

(declare-fun b!7103300 () Bool)

(assert (=> b!7103300 (= e!4269377 (or (not (= (exprs!7390 auxCtx!45) Nil!68733)) (= lt!2558470 (exprs!7390 c!9994))))))

(declare-fun b!7103298 () Bool)

(declare-fun e!4269378 () List!68857)

(assert (=> b!7103298 (= e!4269378 (Cons!68733 (h!75181 (exprs!7390 c!9994)) (++!16048 (t!382674 (exprs!7390 c!9994)) (exprs!7390 auxCtx!45))))))

(declare-fun b!7103297 () Bool)

(assert (=> b!7103297 (= e!4269378 (exprs!7390 auxCtx!45))))

(declare-fun d!2218918 () Bool)

(assert (=> d!2218918 e!4269377))

(declare-fun res!2900018 () Bool)

(assert (=> d!2218918 (=> (not res!2900018) (not e!4269377))))

(declare-fun content!13986 (List!68857) (Set Regex!17896))

(assert (=> d!2218918 (= res!2900018 (= (content!13986 lt!2558470) (set.union (content!13986 (exprs!7390 c!9994)) (content!13986 (exprs!7390 auxCtx!45)))))))

(assert (=> d!2218918 (= lt!2558470 e!4269378)))

(declare-fun c!1325393 () Bool)

(assert (=> d!2218918 (= c!1325393 (is-Nil!68733 (exprs!7390 c!9994)))))

(assert (=> d!2218918 (= (++!16048 (exprs!7390 c!9994) (exprs!7390 auxCtx!45)) lt!2558470)))

(assert (= (and d!2218918 c!1325393) b!7103297))

(assert (= (and d!2218918 (not c!1325393)) b!7103298))

(assert (= (and d!2218918 res!2900018) b!7103299))

(assert (= (and b!7103299 res!2900017) b!7103300))

(declare-fun m!7827608 () Bool)

(assert (=> b!7103299 m!7827608))

(declare-fun m!7827610 () Bool)

(assert (=> b!7103299 m!7827610))

(declare-fun m!7827612 () Bool)

(assert (=> b!7103299 m!7827612))

(declare-fun m!7827614 () Bool)

(assert (=> b!7103298 m!7827614))

(declare-fun m!7827616 () Bool)

(assert (=> d!2218918 m!7827616))

(declare-fun m!7827618 () Bool)

(assert (=> d!2218918 m!7827618))

(declare-fun m!7827620 () Bool)

(assert (=> d!2218918 m!7827620))

(assert (=> b!7103264 d!2218918))

(declare-fun b!7103338 () Bool)

(declare-fun e!4269410 () Bool)

(declare-fun e!4269407 () Bool)

(assert (=> b!7103338 (= e!4269410 e!4269407)))

(declare-fun c!1325403 () Bool)

(assert (=> b!7103338 (= c!1325403 (is-Union!17896 r!11554))))

(declare-fun b!7103339 () Bool)

(declare-fun e!4269413 () Bool)

(declare-fun call!647035 () Bool)

(assert (=> b!7103339 (= e!4269413 call!647035)))

(declare-fun b!7103340 () Bool)

(declare-fun e!4269411 () Bool)

(declare-fun call!647034 () Bool)

(assert (=> b!7103340 (= e!4269411 call!647034)))

(declare-fun b!7103341 () Bool)

(declare-fun e!4269409 () Bool)

(assert (=> b!7103341 (= e!4269409 e!4269413)))

(declare-fun res!2900039 () Bool)

(assert (=> b!7103341 (=> (not res!2900039) (not e!4269413))))

(assert (=> b!7103341 (= res!2900039 call!647034)))

(declare-fun c!1325402 () Bool)

(declare-fun bm!647029 () Bool)

(declare-fun call!647036 () Bool)

(assert (=> bm!647029 (= call!647036 (validRegex!9169 (ite c!1325402 (reg!18225 r!11554) (ite c!1325403 (regOne!36305 r!11554) (regTwo!36304 r!11554)))))))

(declare-fun b!7103342 () Bool)

(declare-fun e!4269412 () Bool)

(assert (=> b!7103342 (= e!4269412 e!4269410)))

(assert (=> b!7103342 (= c!1325402 (is-Star!17896 r!11554))))

(declare-fun b!7103343 () Bool)

(declare-fun res!2900042 () Bool)

(assert (=> b!7103343 (=> (not res!2900042) (not e!4269411))))

(assert (=> b!7103343 (= res!2900042 call!647035)))

(assert (=> b!7103343 (= e!4269407 e!4269411)))

(declare-fun b!7103337 () Bool)

(declare-fun res!2900043 () Bool)

(assert (=> b!7103337 (=> res!2900043 e!4269409)))

(assert (=> b!7103337 (= res!2900043 (not (is-Concat!26741 r!11554)))))

(assert (=> b!7103337 (= e!4269407 e!4269409)))

(declare-fun d!2218922 () Bool)

(declare-fun res!2900041 () Bool)

(assert (=> d!2218922 (=> res!2900041 e!4269412)))

(assert (=> d!2218922 (= res!2900041 (is-ElementMatch!17896 r!11554))))

(assert (=> d!2218922 (= (validRegex!9169 r!11554) e!4269412)))

(declare-fun b!7103344 () Bool)

(declare-fun e!4269408 () Bool)

(assert (=> b!7103344 (= e!4269408 call!647036)))

(declare-fun bm!647030 () Bool)

(assert (=> bm!647030 (= call!647034 (validRegex!9169 (ite c!1325403 (regTwo!36305 r!11554) (regOne!36304 r!11554))))))

(declare-fun b!7103345 () Bool)

(assert (=> b!7103345 (= e!4269410 e!4269408)))

(declare-fun res!2900040 () Bool)

(declare-fun nullable!7533 (Regex!17896) Bool)

(assert (=> b!7103345 (= res!2900040 (not (nullable!7533 (reg!18225 r!11554))))))

(assert (=> b!7103345 (=> (not res!2900040) (not e!4269408))))

(declare-fun bm!647031 () Bool)

(assert (=> bm!647031 (= call!647035 call!647036)))

(assert (= (and d!2218922 (not res!2900041)) b!7103342))

(assert (= (and b!7103342 c!1325402) b!7103345))

(assert (= (and b!7103342 (not c!1325402)) b!7103338))

(assert (= (and b!7103345 res!2900040) b!7103344))

(assert (= (and b!7103338 c!1325403) b!7103343))

(assert (= (and b!7103338 (not c!1325403)) b!7103337))

(assert (= (and b!7103343 res!2900042) b!7103340))

(assert (= (and b!7103337 (not res!2900043)) b!7103341))

(assert (= (and b!7103341 res!2900039) b!7103339))

(assert (= (or b!7103343 b!7103339) bm!647031))

(assert (= (or b!7103340 b!7103341) bm!647030))

(assert (= (or b!7103344 bm!647031) bm!647029))

(declare-fun m!7827622 () Bool)

(assert (=> bm!647029 m!7827622))

(declare-fun m!7827624 () Bool)

(assert (=> bm!647030 m!7827624))

(declare-fun m!7827626 () Bool)

(assert (=> b!7103345 m!7827626))

(assert (=> start!691506 d!2218922))

(declare-fun bs!1884492 () Bool)

(declare-fun d!2218924 () Bool)

(assert (= bs!1884492 (and d!2218924 b!7103264)))

(declare-fun lambda!431273 () Int)

(assert (=> bs!1884492 (= lambda!431273 lambda!431262)))

(declare-fun bs!1884493 () Bool)

(assert (= bs!1884493 (and d!2218924 d!2218916)))

(assert (=> bs!1884493 (= lambda!431273 lambda!431272)))

(assert (=> d!2218924 (= (inv!87604 c!9994) (forall!16799 (exprs!7390 c!9994) lambda!431273))))

(declare-fun bs!1884494 () Bool)

(assert (= bs!1884494 d!2218924))

(declare-fun m!7827628 () Bool)

(assert (=> bs!1884494 m!7827628))

(assert (=> start!691506 d!2218924))

(declare-fun bs!1884495 () Bool)

(declare-fun d!2218926 () Bool)

(assert (= bs!1884495 (and d!2218926 b!7103264)))

(declare-fun lambda!431274 () Int)

(assert (=> bs!1884495 (= lambda!431274 lambda!431262)))

(declare-fun bs!1884496 () Bool)

(assert (= bs!1884496 (and d!2218926 d!2218916)))

(assert (=> bs!1884496 (= lambda!431274 lambda!431272)))

(declare-fun bs!1884497 () Bool)

(assert (= bs!1884497 (and d!2218926 d!2218924)))

(assert (=> bs!1884497 (= lambda!431274 lambda!431273)))

(assert (=> d!2218926 (= (inv!87604 auxCtx!45) (forall!16799 (exprs!7390 auxCtx!45) lambda!431274))))

(declare-fun bs!1884498 () Bool)

(assert (= bs!1884498 d!2218926))

(declare-fun m!7827630 () Bool)

(assert (=> bs!1884498 m!7827630))

(assert (=> start!691506 d!2218926))

(declare-fun b!7103350 () Bool)

(declare-fun e!4269416 () Bool)

(declare-fun tp!1953217 () Bool)

(declare-fun tp!1953218 () Bool)

(assert (=> b!7103350 (= e!4269416 (and tp!1953217 tp!1953218))))

(assert (=> b!7103261 (= tp!1953185 e!4269416)))

(assert (= (and b!7103261 (is-Cons!68733 (exprs!7390 c!9994))) b!7103350))

(declare-fun b!7103361 () Bool)

(declare-fun e!4269419 () Bool)

(assert (=> b!7103361 (= e!4269419 tp_is_empty!45025)))

(declare-fun b!7103363 () Bool)

(declare-fun tp!1953231 () Bool)

(assert (=> b!7103363 (= e!4269419 tp!1953231)))

(declare-fun b!7103362 () Bool)

(declare-fun tp!1953233 () Bool)

(declare-fun tp!1953229 () Bool)

(assert (=> b!7103362 (= e!4269419 (and tp!1953233 tp!1953229))))

(assert (=> b!7103263 (= tp!1953189 e!4269419)))

(declare-fun b!7103364 () Bool)

(declare-fun tp!1953230 () Bool)

(declare-fun tp!1953232 () Bool)

(assert (=> b!7103364 (= e!4269419 (and tp!1953230 tp!1953232))))

(assert (= (and b!7103263 (is-ElementMatch!17896 (regOne!36304 r!11554))) b!7103361))

(assert (= (and b!7103263 (is-Concat!26741 (regOne!36304 r!11554))) b!7103362))

(assert (= (and b!7103263 (is-Star!17896 (regOne!36304 r!11554))) b!7103363))

(assert (= (and b!7103263 (is-Union!17896 (regOne!36304 r!11554))) b!7103364))

(declare-fun b!7103365 () Bool)

(declare-fun e!4269420 () Bool)

(assert (=> b!7103365 (= e!4269420 tp_is_empty!45025)))

(declare-fun b!7103367 () Bool)

(declare-fun tp!1953236 () Bool)

(assert (=> b!7103367 (= e!4269420 tp!1953236)))

(declare-fun b!7103366 () Bool)

(declare-fun tp!1953238 () Bool)

(declare-fun tp!1953234 () Bool)

(assert (=> b!7103366 (= e!4269420 (and tp!1953238 tp!1953234))))

(assert (=> b!7103263 (= tp!1953190 e!4269420)))

(declare-fun b!7103368 () Bool)

(declare-fun tp!1953235 () Bool)

(declare-fun tp!1953237 () Bool)

(assert (=> b!7103368 (= e!4269420 (and tp!1953235 tp!1953237))))

(assert (= (and b!7103263 (is-ElementMatch!17896 (regTwo!36304 r!11554))) b!7103365))

(assert (= (and b!7103263 (is-Concat!26741 (regTwo!36304 r!11554))) b!7103366))

(assert (= (and b!7103263 (is-Star!17896 (regTwo!36304 r!11554))) b!7103367))

(assert (= (and b!7103263 (is-Union!17896 (regTwo!36304 r!11554))) b!7103368))

(declare-fun b!7103369 () Bool)

(declare-fun e!4269421 () Bool)

(assert (=> b!7103369 (= e!4269421 tp_is_empty!45025)))

(declare-fun b!7103371 () Bool)

(declare-fun tp!1953241 () Bool)

(assert (=> b!7103371 (= e!4269421 tp!1953241)))

(declare-fun b!7103370 () Bool)

(declare-fun tp!1953243 () Bool)

(declare-fun tp!1953239 () Bool)

(assert (=> b!7103370 (= e!4269421 (and tp!1953243 tp!1953239))))

(assert (=> b!7103262 (= tp!1953187 e!4269421)))

(declare-fun b!7103372 () Bool)

(declare-fun tp!1953240 () Bool)

(declare-fun tp!1953242 () Bool)

(assert (=> b!7103372 (= e!4269421 (and tp!1953240 tp!1953242))))

(assert (= (and b!7103262 (is-ElementMatch!17896 (reg!18225 r!11554))) b!7103369))

(assert (= (and b!7103262 (is-Concat!26741 (reg!18225 r!11554))) b!7103370))

(assert (= (and b!7103262 (is-Star!17896 (reg!18225 r!11554))) b!7103371))

(assert (= (and b!7103262 (is-Union!17896 (reg!18225 r!11554))) b!7103372))

(declare-fun b!7103373 () Bool)

(declare-fun e!4269422 () Bool)

(declare-fun tp!1953244 () Bool)

(declare-fun tp!1953245 () Bool)

(assert (=> b!7103373 (= e!4269422 (and tp!1953244 tp!1953245))))

(assert (=> b!7103258 (= tp!1953191 e!4269422)))

(assert (= (and b!7103258 (is-Cons!68733 (exprs!7390 auxCtx!45))) b!7103373))

(declare-fun b!7103374 () Bool)

(declare-fun e!4269423 () Bool)

(assert (=> b!7103374 (= e!4269423 tp_is_empty!45025)))

(declare-fun b!7103376 () Bool)

(declare-fun tp!1953248 () Bool)

(assert (=> b!7103376 (= e!4269423 tp!1953248)))

(declare-fun b!7103375 () Bool)

(declare-fun tp!1953250 () Bool)

(declare-fun tp!1953246 () Bool)

(assert (=> b!7103375 (= e!4269423 (and tp!1953250 tp!1953246))))

(assert (=> b!7103260 (= tp!1953186 e!4269423)))

(declare-fun b!7103377 () Bool)

(declare-fun tp!1953247 () Bool)

(declare-fun tp!1953249 () Bool)

(assert (=> b!7103377 (= e!4269423 (and tp!1953247 tp!1953249))))

(assert (= (and b!7103260 (is-ElementMatch!17896 (regOne!36305 r!11554))) b!7103374))

(assert (= (and b!7103260 (is-Concat!26741 (regOne!36305 r!11554))) b!7103375))

(assert (= (and b!7103260 (is-Star!17896 (regOne!36305 r!11554))) b!7103376))

(assert (= (and b!7103260 (is-Union!17896 (regOne!36305 r!11554))) b!7103377))

(declare-fun b!7103378 () Bool)

(declare-fun e!4269424 () Bool)

(assert (=> b!7103378 (= e!4269424 tp_is_empty!45025)))

(declare-fun b!7103380 () Bool)

(declare-fun tp!1953253 () Bool)

(assert (=> b!7103380 (= e!4269424 tp!1953253)))

(declare-fun b!7103379 () Bool)

(declare-fun tp!1953255 () Bool)

(declare-fun tp!1953251 () Bool)

(assert (=> b!7103379 (= e!4269424 (and tp!1953255 tp!1953251))))

(assert (=> b!7103260 (= tp!1953188 e!4269424)))

(declare-fun b!7103381 () Bool)

(declare-fun tp!1953252 () Bool)

(declare-fun tp!1953254 () Bool)

(assert (=> b!7103381 (= e!4269424 (and tp!1953252 tp!1953254))))

(assert (= (and b!7103260 (is-ElementMatch!17896 (regTwo!36305 r!11554))) b!7103378))

(assert (= (and b!7103260 (is-Concat!26741 (regTwo!36305 r!11554))) b!7103379))

(assert (= (and b!7103260 (is-Star!17896 (regTwo!36305 r!11554))) b!7103380))

(assert (= (and b!7103260 (is-Union!17896 (regTwo!36305 r!11554))) b!7103381))

(push 1)

(assert (not b!7103381))

(assert (not b!7103375))

(assert (not bm!647030))

(assert (not b!7103371))

(assert (not d!2218924))

(assert (not b!7103362))

(assert (not b!7103363))

(assert (not b!7103350))

(assert (not d!2218926))

(assert (not d!2218914))

(assert (not b!7103298))

(assert (not b!7103373))

(assert (not b!7103367))

(assert (not b!7103366))

(assert (not b!7103299))

(assert (not b!7103370))

(assert (not b!7103379))

(assert tp_is_empty!45025)

(assert (not d!2218916))

(assert (not b!7103364))

(assert (not bm!647029))

(assert (not b!7103380))

(assert (not b!7103377))

(assert (not b!7103372))

(assert (not b!7103345))

(assert (not b!7103368))

(assert (not d!2218918))

(assert (not b!7103376))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

