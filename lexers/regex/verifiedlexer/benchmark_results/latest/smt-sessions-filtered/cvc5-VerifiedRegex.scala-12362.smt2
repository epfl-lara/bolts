; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692634 () Bool)

(assert start!692634)

(declare-fun b!7116299 () Bool)

(declare-fun res!2903495 () Bool)

(declare-fun e!4276249 () Bool)

(assert (=> b!7116299 (=> (not res!2903495) (not e!4276249))))

(declare-datatypes ((C!36202 0))(
  ( (C!36203 (val!27807 Int)) )
))
(declare-datatypes ((Regex!17966 0))(
  ( (ElementMatch!17966 (c!1328083 C!36202)) (Concat!26811 (regOne!36444 Regex!17966) (regTwo!36444 Regex!17966)) (EmptyExpr!17966) (Star!17966 (reg!18295 Regex!17966)) (EmptyLang!17966) (Union!17966 (regOne!36445 Regex!17966) (regTwo!36445 Regex!17966)) )
))
(declare-fun r!11554 () Regex!17966)

(assert (=> b!7116299 (= res!2903495 (and (not (is-Concat!26811 r!11554)) (is-Star!17966 r!11554)))))

(declare-fun b!7116300 () Bool)

(declare-fun e!4276250 () Bool)

(declare-fun tp!1958435 () Bool)

(assert (=> b!7116300 (= e!4276250 tp!1958435)))

(declare-fun b!7116301 () Bool)

(declare-fun res!2903496 () Bool)

(assert (=> b!7116301 (=> (not res!2903496) (not e!4276249))))

(declare-fun e!4276252 () Bool)

(assert (=> b!7116301 (= res!2903496 e!4276252)))

(declare-fun res!2903491 () Bool)

(assert (=> b!7116301 (=> res!2903491 e!4276252)))

(assert (=> b!7116301 (= res!2903491 (not (is-Concat!26811 r!11554)))))

(declare-fun b!7116302 () Bool)

(declare-fun e!4276248 () Bool)

(declare-fun tp!1958437 () Bool)

(declare-fun tp!1958436 () Bool)

(assert (=> b!7116302 (= e!4276248 (and tp!1958437 tp!1958436))))

(declare-fun b!7116303 () Bool)

(declare-fun tp_is_empty!45165 () Bool)

(assert (=> b!7116303 (= e!4276248 tp_is_empty!45165)))

(declare-fun b!7116304 () Bool)

(declare-fun e!4276251 () Bool)

(declare-datatypes ((List!68927 0))(
  ( (Nil!68803) (Cons!68803 (h!75251 Regex!17966) (t!382776 List!68927)) )
))
(declare-fun lt!2560730 () List!68927)

(declare-datatypes ((Context!13920 0))(
  ( (Context!13921 (exprs!7460 List!68927)) )
))
(declare-fun inv!87779 (Context!13920) Bool)

(assert (=> b!7116304 (= e!4276251 (not (inv!87779 (Context!13921 lt!2560730))))))

(declare-fun res!2903493 () Bool)

(assert (=> start!692634 (=> (not res!2903493) (not e!4276249))))

(declare-fun validRegex!9239 (Regex!17966) Bool)

(assert (=> start!692634 (= res!2903493 (validRegex!9239 r!11554))))

(assert (=> start!692634 e!4276249))

(assert (=> start!692634 e!4276248))

(assert (=> start!692634 tp_is_empty!45165))

(declare-fun c!9994 () Context!13920)

(assert (=> start!692634 (and (inv!87779 c!9994) e!4276250)))

(declare-fun auxCtx!45 () Context!13920)

(declare-fun e!4276247 () Bool)

(assert (=> start!692634 (and (inv!87779 auxCtx!45) e!4276247)))

(declare-fun b!7116305 () Bool)

(declare-fun tp!1958439 () Bool)

(assert (=> b!7116305 (= e!4276247 tp!1958439)))

(declare-fun b!7116306 () Bool)

(declare-fun nullable!7603 (Regex!17966) Bool)

(assert (=> b!7116306 (= e!4276252 (not (nullable!7603 (regOne!36444 r!11554))))))

(declare-fun b!7116307 () Bool)

(declare-fun tp!1958438 () Bool)

(declare-fun tp!1958433 () Bool)

(assert (=> b!7116307 (= e!4276248 (and tp!1958438 tp!1958433))))

(declare-fun b!7116308 () Bool)

(assert (=> b!7116308 (= e!4276249 e!4276251)))

(declare-fun res!2903492 () Bool)

(assert (=> b!7116308 (=> (not res!2903492) (not e!4276251))))

(assert (=> b!7116308 (= res!2903492 (validRegex!9239 r!11554))))

(declare-fun ++!16118 (List!68927 List!68927) List!68927)

(assert (=> b!7116308 (= lt!2560730 (++!16118 (exprs!7460 c!9994) (exprs!7460 auxCtx!45)))))

(declare-fun lambda!432408 () Int)

(declare-datatypes ((Unit!162603 0))(
  ( (Unit!162604) )
))
(declare-fun lt!2560729 () Unit!162603)

(declare-fun lemmaConcatPreservesForall!1251 (List!68927 List!68927 Int) Unit!162603)

(assert (=> b!7116308 (= lt!2560729 (lemmaConcatPreservesForall!1251 (exprs!7460 c!9994) (exprs!7460 auxCtx!45) lambda!432408))))

(declare-fun lt!2560731 () Unit!162603)

(assert (=> b!7116308 (= lt!2560731 (lemmaConcatPreservesForall!1251 (exprs!7460 c!9994) (exprs!7460 auxCtx!45) lambda!432408))))

(declare-fun b!7116309 () Bool)

(declare-fun res!2903494 () Bool)

(assert (=> b!7116309 (=> (not res!2903494) (not e!4276249))))

(declare-fun a!1901 () C!36202)

(assert (=> b!7116309 (= res!2903494 (and (or (not (is-ElementMatch!17966 r!11554)) (not (= (c!1328083 r!11554) a!1901))) (not (is-Union!17966 r!11554))))))

(declare-fun b!7116310 () Bool)

(declare-fun tp!1958434 () Bool)

(assert (=> b!7116310 (= e!4276248 tp!1958434)))

(assert (= (and start!692634 res!2903493) b!7116309))

(assert (= (and b!7116309 res!2903494) b!7116301))

(assert (= (and b!7116301 (not res!2903491)) b!7116306))

(assert (= (and b!7116301 res!2903496) b!7116299))

(assert (= (and b!7116299 res!2903495) b!7116308))

(assert (= (and b!7116308 res!2903492) b!7116304))

(assert (= (and start!692634 (is-ElementMatch!17966 r!11554)) b!7116303))

(assert (= (and start!692634 (is-Concat!26811 r!11554)) b!7116307))

(assert (= (and start!692634 (is-Star!17966 r!11554)) b!7116310))

(assert (= (and start!692634 (is-Union!17966 r!11554)) b!7116302))

(assert (= start!692634 b!7116300))

(assert (= start!692634 b!7116305))

(declare-fun m!7835244 () Bool)

(assert (=> b!7116304 m!7835244))

(declare-fun m!7835246 () Bool)

(assert (=> start!692634 m!7835246))

(declare-fun m!7835248 () Bool)

(assert (=> start!692634 m!7835248))

(declare-fun m!7835250 () Bool)

(assert (=> start!692634 m!7835250))

(declare-fun m!7835252 () Bool)

(assert (=> b!7116306 m!7835252))

(assert (=> b!7116308 m!7835246))

(declare-fun m!7835254 () Bool)

(assert (=> b!7116308 m!7835254))

(declare-fun m!7835256 () Bool)

(assert (=> b!7116308 m!7835256))

(assert (=> b!7116308 m!7835256))

(push 1)

(assert (not b!7116306))

(assert (not b!7116305))

(assert tp_is_empty!45165)

(assert (not b!7116300))

(assert (not b!7116307))

(assert (not b!7116308))

(assert (not b!7116302))

(assert (not start!692634))

(assert (not b!7116304))

(assert (not b!7116310))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1885563 () Bool)

(declare-fun d!2221165 () Bool)

(assert (= bs!1885563 (and d!2221165 b!7116308)))

(declare-fun lambda!432416 () Int)

(assert (=> bs!1885563 (= lambda!432416 lambda!432408)))

(declare-fun forall!16857 (List!68927 Int) Bool)

(assert (=> d!2221165 (= (inv!87779 (Context!13921 lt!2560730)) (forall!16857 (exprs!7460 (Context!13921 lt!2560730)) lambda!432416))))

(declare-fun bs!1885564 () Bool)

(assert (= bs!1885564 d!2221165))

(declare-fun m!7835272 () Bool)

(assert (=> bs!1885564 m!7835272))

(assert (=> b!7116304 d!2221165))

(declare-fun b!7116365 () Bool)

(declare-fun e!4276290 () Bool)

(declare-fun call!649896 () Bool)

(assert (=> b!7116365 (= e!4276290 call!649896)))

(declare-fun b!7116366 () Bool)

(declare-fun e!4276291 () Bool)

(declare-fun e!4276287 () Bool)

(assert (=> b!7116366 (= e!4276291 e!4276287)))

(declare-fun c!1328089 () Bool)

(assert (=> b!7116366 (= c!1328089 (is-Star!17966 r!11554))))

(declare-fun c!1328090 () Bool)

(declare-fun call!649895 () Bool)

(declare-fun bm!649889 () Bool)

(assert (=> bm!649889 (= call!649895 (validRegex!9239 (ite c!1328089 (reg!18295 r!11554) (ite c!1328090 (regTwo!36445 r!11554) (regOne!36444 r!11554)))))))

(declare-fun b!7116367 () Bool)

(declare-fun e!4276286 () Bool)

(declare-fun call!649894 () Bool)

(assert (=> b!7116367 (= e!4276286 call!649894)))

(declare-fun b!7116368 () Bool)

(declare-fun e!4276289 () Bool)

(assert (=> b!7116368 (= e!4276289 e!4276290)))

(declare-fun res!2903529 () Bool)

(assert (=> b!7116368 (=> (not res!2903529) (not e!4276290))))

(assert (=> b!7116368 (= res!2903529 call!649894)))

(declare-fun b!7116370 () Bool)

(declare-fun e!4276285 () Bool)

(assert (=> b!7116370 (= e!4276287 e!4276285)))

(declare-fun res!2903528 () Bool)

(assert (=> b!7116370 (= res!2903528 (not (nullable!7603 (reg!18295 r!11554))))))

(assert (=> b!7116370 (=> (not res!2903528) (not e!4276285))))

(declare-fun b!7116371 () Bool)

(declare-fun res!2903526 () Bool)

(assert (=> b!7116371 (=> res!2903526 e!4276289)))

(assert (=> b!7116371 (= res!2903526 (not (is-Concat!26811 r!11554)))))

(declare-fun e!4276288 () Bool)

(assert (=> b!7116371 (= e!4276288 e!4276289)))

(declare-fun bm!649890 () Bool)

(assert (=> bm!649890 (= call!649894 call!649895)))

(declare-fun b!7116372 () Bool)

(assert (=> b!7116372 (= e!4276287 e!4276288)))

(assert (=> b!7116372 (= c!1328090 (is-Union!17966 r!11554))))

(declare-fun b!7116373 () Bool)

(assert (=> b!7116373 (= e!4276285 call!649895)))

(declare-fun bm!649891 () Bool)

(assert (=> bm!649891 (= call!649896 (validRegex!9239 (ite c!1328090 (regOne!36445 r!11554) (regTwo!36444 r!11554))))))

(declare-fun b!7116369 () Bool)

(declare-fun res!2903525 () Bool)

(assert (=> b!7116369 (=> (not res!2903525) (not e!4276286))))

(assert (=> b!7116369 (= res!2903525 call!649896)))

(assert (=> b!7116369 (= e!4276288 e!4276286)))

(declare-fun d!2221167 () Bool)

(declare-fun res!2903527 () Bool)

(assert (=> d!2221167 (=> res!2903527 e!4276291)))

(assert (=> d!2221167 (= res!2903527 (is-ElementMatch!17966 r!11554))))

(assert (=> d!2221167 (= (validRegex!9239 r!11554) e!4276291)))

(assert (= (and d!2221167 (not res!2903527)) b!7116366))

(assert (= (and b!7116366 c!1328089) b!7116370))

(assert (= (and b!7116366 (not c!1328089)) b!7116372))

(assert (= (and b!7116370 res!2903528) b!7116373))

(assert (= (and b!7116372 c!1328090) b!7116369))

(assert (= (and b!7116372 (not c!1328090)) b!7116371))

(assert (= (and b!7116369 res!2903525) b!7116367))

(assert (= (and b!7116371 (not res!2903526)) b!7116368))

(assert (= (and b!7116368 res!2903529) b!7116365))

(assert (= (or b!7116369 b!7116365) bm!649891))

(assert (= (or b!7116367 b!7116368) bm!649890))

(assert (= (or b!7116373 bm!649890) bm!649889))

(declare-fun m!7835274 () Bool)

(assert (=> bm!649889 m!7835274))

(declare-fun m!7835276 () Bool)

(assert (=> b!7116370 m!7835276))

(declare-fun m!7835278 () Bool)

(assert (=> bm!649891 m!7835278))

(assert (=> start!692634 d!2221167))

(declare-fun bs!1885565 () Bool)

(declare-fun d!2221171 () Bool)

(assert (= bs!1885565 (and d!2221171 b!7116308)))

(declare-fun lambda!432417 () Int)

(assert (=> bs!1885565 (= lambda!432417 lambda!432408)))

(declare-fun bs!1885566 () Bool)

(assert (= bs!1885566 (and d!2221171 d!2221165)))

(assert (=> bs!1885566 (= lambda!432417 lambda!432416)))

(assert (=> d!2221171 (= (inv!87779 c!9994) (forall!16857 (exprs!7460 c!9994) lambda!432417))))

(declare-fun bs!1885567 () Bool)

(assert (= bs!1885567 d!2221171))

(declare-fun m!7835280 () Bool)

(assert (=> bs!1885567 m!7835280))

(assert (=> start!692634 d!2221171))

(declare-fun bs!1885568 () Bool)

(declare-fun d!2221173 () Bool)

(assert (= bs!1885568 (and d!2221173 b!7116308)))

(declare-fun lambda!432418 () Int)

(assert (=> bs!1885568 (= lambda!432418 lambda!432408)))

(declare-fun bs!1885569 () Bool)

(assert (= bs!1885569 (and d!2221173 d!2221165)))

(assert (=> bs!1885569 (= lambda!432418 lambda!432416)))

(declare-fun bs!1885570 () Bool)

(assert (= bs!1885570 (and d!2221173 d!2221171)))

(assert (=> bs!1885570 (= lambda!432418 lambda!432417)))

(assert (=> d!2221173 (= (inv!87779 auxCtx!45) (forall!16857 (exprs!7460 auxCtx!45) lambda!432418))))

(declare-fun bs!1885571 () Bool)

(assert (= bs!1885571 d!2221173))

(declare-fun m!7835282 () Bool)

(assert (=> bs!1885571 m!7835282))

(assert (=> start!692634 d!2221173))

(declare-fun d!2221175 () Bool)

(declare-fun nullableFct!2948 (Regex!17966) Bool)

(assert (=> d!2221175 (= (nullable!7603 (regOne!36444 r!11554)) (nullableFct!2948 (regOne!36444 r!11554)))))

(declare-fun bs!1885572 () Bool)

(assert (= bs!1885572 d!2221175))

(declare-fun m!7835284 () Bool)

(assert (=> bs!1885572 m!7835284))

(assert (=> b!7116306 d!2221175))

(assert (=> b!7116308 d!2221167))

(declare-fun b!7116402 () Bool)

(declare-fun res!2903545 () Bool)

(declare-fun e!4276311 () Bool)

(assert (=> b!7116402 (=> (not res!2903545) (not e!4276311))))

(declare-fun lt!2560743 () List!68927)

(declare-fun size!41417 (List!68927) Int)

(assert (=> b!7116402 (= res!2903545 (= (size!41417 lt!2560743) (+ (size!41417 (exprs!7460 c!9994)) (size!41417 (exprs!7460 auxCtx!45)))))))

(declare-fun d!2221177 () Bool)

(assert (=> d!2221177 e!4276311))

(declare-fun res!2903544 () Bool)

(assert (=> d!2221177 (=> (not res!2903544) (not e!4276311))))

(declare-fun content!14042 (List!68927) (Set Regex!17966))

(assert (=> d!2221177 (= res!2903544 (= (content!14042 lt!2560743) (set.union (content!14042 (exprs!7460 c!9994)) (content!14042 (exprs!7460 auxCtx!45)))))))

(declare-fun e!4276310 () List!68927)

(assert (=> d!2221177 (= lt!2560743 e!4276310)))

(declare-fun c!1328097 () Bool)

(assert (=> d!2221177 (= c!1328097 (is-Nil!68803 (exprs!7460 c!9994)))))

(assert (=> d!2221177 (= (++!16118 (exprs!7460 c!9994) (exprs!7460 auxCtx!45)) lt!2560743)))

(declare-fun b!7116401 () Bool)

(assert (=> b!7116401 (= e!4276310 (Cons!68803 (h!75251 (exprs!7460 c!9994)) (++!16118 (t!382776 (exprs!7460 c!9994)) (exprs!7460 auxCtx!45))))))

(declare-fun b!7116400 () Bool)

(assert (=> b!7116400 (= e!4276310 (exprs!7460 auxCtx!45))))

(declare-fun b!7116403 () Bool)

(assert (=> b!7116403 (= e!4276311 (or (not (= (exprs!7460 auxCtx!45) Nil!68803)) (= lt!2560743 (exprs!7460 c!9994))))))

(assert (= (and d!2221177 c!1328097) b!7116400))

(assert (= (and d!2221177 (not c!1328097)) b!7116401))

(assert (= (and d!2221177 res!2903544) b!7116402))

(assert (= (and b!7116402 res!2903545) b!7116403))

(declare-fun m!7835286 () Bool)

(assert (=> b!7116402 m!7835286))

(declare-fun m!7835288 () Bool)

(assert (=> b!7116402 m!7835288))

(declare-fun m!7835290 () Bool)

(assert (=> b!7116402 m!7835290))

(declare-fun m!7835292 () Bool)

(assert (=> d!2221177 m!7835292))

(declare-fun m!7835294 () Bool)

(assert (=> d!2221177 m!7835294))

(declare-fun m!7835296 () Bool)

(assert (=> d!2221177 m!7835296))

(declare-fun m!7835298 () Bool)

(assert (=> b!7116401 m!7835298))

(assert (=> b!7116308 d!2221177))

(declare-fun d!2221179 () Bool)

(assert (=> d!2221179 (forall!16857 (++!16118 (exprs!7460 c!9994) (exprs!7460 auxCtx!45)) lambda!432408)))

(declare-fun lt!2560746 () Unit!162603)

(declare-fun choose!54892 (List!68927 List!68927 Int) Unit!162603)

(assert (=> d!2221179 (= lt!2560746 (choose!54892 (exprs!7460 c!9994) (exprs!7460 auxCtx!45) lambda!432408))))

(assert (=> d!2221179 (forall!16857 (exprs!7460 c!9994) lambda!432408)))

(assert (=> d!2221179 (= (lemmaConcatPreservesForall!1251 (exprs!7460 c!9994) (exprs!7460 auxCtx!45) lambda!432408) lt!2560746)))

(declare-fun bs!1885573 () Bool)

(assert (= bs!1885573 d!2221179))

(assert (=> bs!1885573 m!7835254))

(assert (=> bs!1885573 m!7835254))

(declare-fun m!7835300 () Bool)

(assert (=> bs!1885573 m!7835300))

(declare-fun m!7835302 () Bool)

(assert (=> bs!1885573 m!7835302))

(declare-fun m!7835304 () Bool)

(assert (=> bs!1885573 m!7835304))

(assert (=> b!7116308 d!2221179))

(declare-fun b!7116417 () Bool)

(declare-fun e!4276314 () Bool)

(declare-fun tp!1958471 () Bool)

(declare-fun tp!1958472 () Bool)

(assert (=> b!7116417 (= e!4276314 (and tp!1958471 tp!1958472))))

(declare-fun b!7116414 () Bool)

(assert (=> b!7116414 (= e!4276314 tp_is_empty!45165)))

(assert (=> b!7116310 (= tp!1958434 e!4276314)))

(declare-fun b!7116415 () Bool)

(declare-fun tp!1958473 () Bool)

(declare-fun tp!1958475 () Bool)

(assert (=> b!7116415 (= e!4276314 (and tp!1958473 tp!1958475))))

(declare-fun b!7116416 () Bool)

(declare-fun tp!1958474 () Bool)

(assert (=> b!7116416 (= e!4276314 tp!1958474)))

(assert (= (and b!7116310 (is-ElementMatch!17966 (reg!18295 r!11554))) b!7116414))

(assert (= (and b!7116310 (is-Concat!26811 (reg!18295 r!11554))) b!7116415))

(assert (= (and b!7116310 (is-Star!17966 (reg!18295 r!11554))) b!7116416))

(assert (= (and b!7116310 (is-Union!17966 (reg!18295 r!11554))) b!7116417))

(declare-fun b!7116422 () Bool)

(declare-fun e!4276317 () Bool)

(declare-fun tp!1958480 () Bool)

(declare-fun tp!1958481 () Bool)

(assert (=> b!7116422 (= e!4276317 (and tp!1958480 tp!1958481))))

(assert (=> b!7116305 (= tp!1958439 e!4276317)))

(assert (= (and b!7116305 (is-Cons!68803 (exprs!7460 auxCtx!45))) b!7116422))

(declare-fun b!7116423 () Bool)

(declare-fun e!4276318 () Bool)

(declare-fun tp!1958482 () Bool)

(declare-fun tp!1958483 () Bool)

(assert (=> b!7116423 (= e!4276318 (and tp!1958482 tp!1958483))))

(assert (=> b!7116300 (= tp!1958435 e!4276318)))

(assert (= (and b!7116300 (is-Cons!68803 (exprs!7460 c!9994))) b!7116423))

(declare-fun b!7116427 () Bool)

(declare-fun e!4276319 () Bool)

(declare-fun tp!1958484 () Bool)

(declare-fun tp!1958485 () Bool)

(assert (=> b!7116427 (= e!4276319 (and tp!1958484 tp!1958485))))

(declare-fun b!7116424 () Bool)

(assert (=> b!7116424 (= e!4276319 tp_is_empty!45165)))

(assert (=> b!7116307 (= tp!1958438 e!4276319)))

(declare-fun b!7116425 () Bool)

(declare-fun tp!1958486 () Bool)

(declare-fun tp!1958488 () Bool)

(assert (=> b!7116425 (= e!4276319 (and tp!1958486 tp!1958488))))

(declare-fun b!7116426 () Bool)

(declare-fun tp!1958487 () Bool)

(assert (=> b!7116426 (= e!4276319 tp!1958487)))

(assert (= (and b!7116307 (is-ElementMatch!17966 (regOne!36444 r!11554))) b!7116424))

(assert (= (and b!7116307 (is-Concat!26811 (regOne!36444 r!11554))) b!7116425))

(assert (= (and b!7116307 (is-Star!17966 (regOne!36444 r!11554))) b!7116426))

(assert (= (and b!7116307 (is-Union!17966 (regOne!36444 r!11554))) b!7116427))

(declare-fun b!7116431 () Bool)

(declare-fun e!4276320 () Bool)

(declare-fun tp!1958489 () Bool)

(declare-fun tp!1958490 () Bool)

(assert (=> b!7116431 (= e!4276320 (and tp!1958489 tp!1958490))))

(declare-fun b!7116428 () Bool)

(assert (=> b!7116428 (= e!4276320 tp_is_empty!45165)))

(assert (=> b!7116307 (= tp!1958433 e!4276320)))

(declare-fun b!7116429 () Bool)

(declare-fun tp!1958491 () Bool)

(declare-fun tp!1958493 () Bool)

(assert (=> b!7116429 (= e!4276320 (and tp!1958491 tp!1958493))))

(declare-fun b!7116430 () Bool)

(declare-fun tp!1958492 () Bool)

(assert (=> b!7116430 (= e!4276320 tp!1958492)))

(assert (= (and b!7116307 (is-ElementMatch!17966 (regTwo!36444 r!11554))) b!7116428))

(assert (= (and b!7116307 (is-Concat!26811 (regTwo!36444 r!11554))) b!7116429))

(assert (= (and b!7116307 (is-Star!17966 (regTwo!36444 r!11554))) b!7116430))

(assert (= (and b!7116307 (is-Union!17966 (regTwo!36444 r!11554))) b!7116431))

(declare-fun b!7116435 () Bool)

(declare-fun e!4276321 () Bool)

(declare-fun tp!1958494 () Bool)

(declare-fun tp!1958495 () Bool)

(assert (=> b!7116435 (= e!4276321 (and tp!1958494 tp!1958495))))

(declare-fun b!7116432 () Bool)

(assert (=> b!7116432 (= e!4276321 tp_is_empty!45165)))

(assert (=> b!7116302 (= tp!1958437 e!4276321)))

(declare-fun b!7116433 () Bool)

(declare-fun tp!1958496 () Bool)

(declare-fun tp!1958498 () Bool)

(assert (=> b!7116433 (= e!4276321 (and tp!1958496 tp!1958498))))

(declare-fun b!7116434 () Bool)

(declare-fun tp!1958497 () Bool)

(assert (=> b!7116434 (= e!4276321 tp!1958497)))

(assert (= (and b!7116302 (is-ElementMatch!17966 (regOne!36445 r!11554))) b!7116432))

(assert (= (and b!7116302 (is-Concat!26811 (regOne!36445 r!11554))) b!7116433))

(assert (= (and b!7116302 (is-Star!17966 (regOne!36445 r!11554))) b!7116434))

(assert (= (and b!7116302 (is-Union!17966 (regOne!36445 r!11554))) b!7116435))

(declare-fun b!7116439 () Bool)

(declare-fun e!4276322 () Bool)

(declare-fun tp!1958499 () Bool)

(declare-fun tp!1958500 () Bool)

(assert (=> b!7116439 (= e!4276322 (and tp!1958499 tp!1958500))))

(declare-fun b!7116436 () Bool)

(assert (=> b!7116436 (= e!4276322 tp_is_empty!45165)))

(assert (=> b!7116302 (= tp!1958436 e!4276322)))

(declare-fun b!7116437 () Bool)

(declare-fun tp!1958501 () Bool)

(declare-fun tp!1958503 () Bool)

(assert (=> b!7116437 (= e!4276322 (and tp!1958501 tp!1958503))))

(declare-fun b!7116438 () Bool)

(declare-fun tp!1958502 () Bool)

(assert (=> b!7116438 (= e!4276322 tp!1958502)))

(assert (= (and b!7116302 (is-ElementMatch!17966 (regTwo!36445 r!11554))) b!7116436))

(assert (= (and b!7116302 (is-Concat!26811 (regTwo!36445 r!11554))) b!7116437))

(assert (= (and b!7116302 (is-Star!17966 (regTwo!36445 r!11554))) b!7116438))

(assert (= (and b!7116302 (is-Union!17966 (regTwo!36445 r!11554))) b!7116439))

(push 1)

(assert (not d!2221173))

(assert (not b!7116370))

(assert (not d!2221179))

(assert (not b!7116416))

(assert (not b!7116431))

(assert (not b!7116437))

(assert tp_is_empty!45165)

(assert (not b!7116415))

(assert (not b!7116433))

(assert (not b!7116401))

(assert (not d!2221171))

(assert (not b!7116426))

(assert (not b!7116422))

(assert (not d!2221165))

(assert (not b!7116438))

(assert (not bm!649889))

(assert (not b!7116402))

(assert (not b!7116439))

(assert (not b!7116430))

(assert (not b!7116423))

(assert (not b!7116434))

(assert (not bm!649891))

(assert (not d!2221177))

(assert (not b!7116429))

(assert (not b!7116425))

(assert (not d!2221175))

(assert (not b!7116427))

(assert (not b!7116435))

(assert (not b!7116417))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

