; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!690562 () Bool)

(assert start!690562)

(declare-fun b!7094225 () Bool)

(declare-fun e!4264538 () Bool)

(declare-fun tp_is_empty!44869 () Bool)

(assert (=> b!7094225 (= e!4264538 tp_is_empty!44869)))

(declare-fun b!7094226 () Bool)

(declare-fun res!2897071 () Bool)

(declare-fun e!4264539 () Bool)

(assert (=> b!7094226 (=> (not res!2897071) (not e!4264539))))

(declare-datatypes ((C!35906 0))(
  ( (C!35907 (val!27659 Int)) )
))
(declare-datatypes ((Regex!17818 0))(
  ( (ElementMatch!17818 (c!1323915 C!35906)) (Concat!26663 (regOne!36148 Regex!17818) (regTwo!36148 Regex!17818)) (EmptyExpr!17818) (Star!17818 (reg!18147 Regex!17818)) (EmptyLang!17818) (Union!17818 (regOne!36149 Regex!17818) (regTwo!36149 Regex!17818)) )
))
(declare-fun r!11554 () Regex!17818)

(declare-fun a!1901 () C!35906)

(assert (=> b!7094226 (= res!2897071 (and (or (not (is-ElementMatch!17818 r!11554)) (not (= (c!1323915 r!11554) a!1901))) (not (is-Union!17818 r!11554))))))

(declare-fun b!7094227 () Bool)

(declare-fun e!4264541 () Bool)

(declare-fun tp!1949248 () Bool)

(assert (=> b!7094227 (= e!4264541 tp!1949248)))

(declare-fun res!2897076 () Bool)

(assert (=> start!690562 (=> (not res!2897076) (not e!4264539))))

(declare-fun validRegex!9093 (Regex!17818) Bool)

(assert (=> start!690562 (= res!2897076 (validRegex!9093 r!11554))))

(assert (=> start!690562 e!4264539))

(assert (=> start!690562 e!4264538))

(assert (=> start!690562 tp_is_empty!44869))

(declare-datatypes ((List!68781 0))(
  ( (Nil!68657) (Cons!68657 (h!75105 Regex!17818) (t!382576 List!68781)) )
))
(declare-datatypes ((Context!13628 0))(
  ( (Context!13629 (exprs!7314 List!68781)) )
))
(declare-fun c!9994 () Context!13628)

(declare-fun inv!87411 (Context!13628) Bool)

(assert (=> start!690562 (and (inv!87411 c!9994) e!4264541)))

(declare-fun auxCtx!45 () Context!13628)

(declare-fun e!4264542 () Bool)

(assert (=> start!690562 (and (inv!87411 auxCtx!45) e!4264542)))

(declare-fun b!7094228 () Bool)

(declare-fun tp!1949251 () Bool)

(declare-fun tp!1949249 () Bool)

(assert (=> b!7094228 (= e!4264538 (and tp!1949251 tp!1949249))))

(declare-fun b!7094229 () Bool)

(declare-fun tp!1949253 () Bool)

(assert (=> b!7094229 (= e!4264542 tp!1949253)))

(declare-fun b!7094230 () Bool)

(declare-fun e!4264540 () Bool)

(declare-fun lambda!430274 () Int)

(declare-fun forall!16746 (List!68781 Int) Bool)

(assert (=> b!7094230 (= e!4264540 (not (forall!16746 (exprs!7314 auxCtx!45) lambda!430274)))))

(declare-fun b!7094231 () Bool)

(declare-fun tp!1949247 () Bool)

(declare-fun tp!1949250 () Bool)

(assert (=> b!7094231 (= e!4264538 (and tp!1949247 tp!1949250))))

(declare-fun b!7094232 () Bool)

(declare-fun res!2897074 () Bool)

(assert (=> b!7094232 (=> (not res!2897074) (not e!4264539))))

(declare-fun e!4264537 () Bool)

(assert (=> b!7094232 (= res!2897074 e!4264537)))

(declare-fun res!2897073 () Bool)

(assert (=> b!7094232 (=> res!2897073 e!4264537)))

(assert (=> b!7094232 (= res!2897073 (not (is-Concat!26663 r!11554)))))

(declare-fun b!7094233 () Bool)

(declare-fun nullable!7458 (Regex!17818) Bool)

(assert (=> b!7094233 (= e!4264537 (not (nullable!7458 (regOne!36148 r!11554))))))

(declare-fun b!7094234 () Bool)

(assert (=> b!7094234 (= e!4264539 e!4264540)))

(declare-fun res!2897072 () Bool)

(assert (=> b!7094234 (=> (not res!2897072) (not e!4264540))))

(assert (=> b!7094234 (= res!2897072 (forall!16746 (exprs!7314 c!9994) lambda!430274))))

(declare-datatypes ((Unit!162319 0))(
  ( (Unit!162320) )
))
(declare-fun lt!2556937 () Unit!162319)

(declare-fun lemmaConcatPreservesForall!1113 (List!68781 List!68781 Int) Unit!162319)

(assert (=> b!7094234 (= lt!2556937 (lemmaConcatPreservesForall!1113 (exprs!7314 c!9994) (exprs!7314 auxCtx!45) lambda!430274))))

(declare-fun b!7094235 () Bool)

(declare-fun res!2897075 () Bool)

(assert (=> b!7094235 (=> (not res!2897075) (not e!4264539))))

(assert (=> b!7094235 (= res!2897075 (is-Concat!26663 r!11554))))

(declare-fun b!7094236 () Bool)

(declare-fun tp!1949252 () Bool)

(assert (=> b!7094236 (= e!4264538 tp!1949252)))

(assert (= (and start!690562 res!2897076) b!7094226))

(assert (= (and b!7094226 res!2897071) b!7094232))

(assert (= (and b!7094232 (not res!2897073)) b!7094233))

(assert (= (and b!7094232 res!2897074) b!7094235))

(assert (= (and b!7094235 res!2897075) b!7094234))

(assert (= (and b!7094234 res!2897072) b!7094230))

(assert (= (and start!690562 (is-ElementMatch!17818 r!11554)) b!7094225))

(assert (= (and start!690562 (is-Concat!26663 r!11554)) b!7094228))

(assert (= (and start!690562 (is-Star!17818 r!11554)) b!7094236))

(assert (= (and start!690562 (is-Union!17818 r!11554)) b!7094231))

(assert (= start!690562 b!7094227))

(assert (= start!690562 b!7094229))

(declare-fun m!7822472 () Bool)

(assert (=> start!690562 m!7822472))

(declare-fun m!7822474 () Bool)

(assert (=> start!690562 m!7822474))

(declare-fun m!7822476 () Bool)

(assert (=> start!690562 m!7822476))

(declare-fun m!7822478 () Bool)

(assert (=> b!7094230 m!7822478))

(declare-fun m!7822480 () Bool)

(assert (=> b!7094233 m!7822480))

(declare-fun m!7822482 () Bool)

(assert (=> b!7094234 m!7822482))

(declare-fun m!7822484 () Bool)

(assert (=> b!7094234 m!7822484))

(push 1)

(assert tp_is_empty!44869)

(assert (not b!7094230))

(assert (not b!7094227))

(assert (not b!7094236))

(assert (not b!7094228))

(assert (not b!7094233))

(assert (not b!7094234))

(assert (not start!690562))

(assert (not b!7094229))

(assert (not b!7094231))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2217519 () Bool)

(declare-fun res!2897099 () Bool)

(declare-fun e!4264565 () Bool)

(assert (=> d!2217519 (=> res!2897099 e!4264565)))

(assert (=> d!2217519 (= res!2897099 (is-Nil!68657 (exprs!7314 auxCtx!45)))))

(assert (=> d!2217519 (= (forall!16746 (exprs!7314 auxCtx!45) lambda!430274) e!4264565)))

(declare-fun b!7094277 () Bool)

(declare-fun e!4264566 () Bool)

(assert (=> b!7094277 (= e!4264565 e!4264566)))

(declare-fun res!2897100 () Bool)

(assert (=> b!7094277 (=> (not res!2897100) (not e!4264566))))

(declare-fun dynLambda!28013 (Int Regex!17818) Bool)

(assert (=> b!7094277 (= res!2897100 (dynLambda!28013 lambda!430274 (h!75105 (exprs!7314 auxCtx!45))))))

(declare-fun b!7094278 () Bool)

(assert (=> b!7094278 (= e!4264566 (forall!16746 (t!382576 (exprs!7314 auxCtx!45)) lambda!430274))))

(assert (= (and d!2217519 (not res!2897099)) b!7094277))

(assert (= (and b!7094277 res!2897100) b!7094278))

(declare-fun b_lambda!271105 () Bool)

(assert (=> (not b_lambda!271105) (not b!7094277)))

(declare-fun m!7822500 () Bool)

(assert (=> b!7094277 m!7822500))

(declare-fun m!7822502 () Bool)

(assert (=> b!7094278 m!7822502))

(assert (=> b!7094230 d!2217519))

(declare-fun d!2217523 () Bool)

(declare-fun nullableFct!2864 (Regex!17818) Bool)

(assert (=> d!2217523 (= (nullable!7458 (regOne!36148 r!11554)) (nullableFct!2864 (regOne!36148 r!11554)))))

(declare-fun bs!1883797 () Bool)

(assert (= bs!1883797 d!2217523))

(declare-fun m!7822504 () Bool)

(assert (=> bs!1883797 m!7822504))

(assert (=> b!7094233 d!2217523))

(declare-fun d!2217525 () Bool)

(declare-fun res!2897101 () Bool)

(declare-fun e!4264567 () Bool)

(assert (=> d!2217525 (=> res!2897101 e!4264567)))

(assert (=> d!2217525 (= res!2897101 (is-Nil!68657 (exprs!7314 c!9994)))))

(assert (=> d!2217525 (= (forall!16746 (exprs!7314 c!9994) lambda!430274) e!4264567)))

(declare-fun b!7094279 () Bool)

(declare-fun e!4264568 () Bool)

(assert (=> b!7094279 (= e!4264567 e!4264568)))

(declare-fun res!2897102 () Bool)

(assert (=> b!7094279 (=> (not res!2897102) (not e!4264568))))

(assert (=> b!7094279 (= res!2897102 (dynLambda!28013 lambda!430274 (h!75105 (exprs!7314 c!9994))))))

(declare-fun b!7094280 () Bool)

(assert (=> b!7094280 (= e!4264568 (forall!16746 (t!382576 (exprs!7314 c!9994)) lambda!430274))))

(assert (= (and d!2217525 (not res!2897101)) b!7094279))

(assert (= (and b!7094279 res!2897102) b!7094280))

(declare-fun b_lambda!271107 () Bool)

(assert (=> (not b_lambda!271107) (not b!7094279)))

(declare-fun m!7822506 () Bool)

(assert (=> b!7094279 m!7822506))

(declare-fun m!7822508 () Bool)

(assert (=> b!7094280 m!7822508))

(assert (=> b!7094234 d!2217525))

(declare-fun d!2217527 () Bool)

(declare-fun ++!15982 (List!68781 List!68781) List!68781)

(assert (=> d!2217527 (forall!16746 (++!15982 (exprs!7314 c!9994) (exprs!7314 auxCtx!45)) lambda!430274)))

(declare-fun lt!2556943 () Unit!162319)

(declare-fun choose!54702 (List!68781 List!68781 Int) Unit!162319)

(assert (=> d!2217527 (= lt!2556943 (choose!54702 (exprs!7314 c!9994) (exprs!7314 auxCtx!45) lambda!430274))))

(assert (=> d!2217527 (forall!16746 (exprs!7314 c!9994) lambda!430274)))

(assert (=> d!2217527 (= (lemmaConcatPreservesForall!1113 (exprs!7314 c!9994) (exprs!7314 auxCtx!45) lambda!430274) lt!2556943)))

(declare-fun bs!1883799 () Bool)

(assert (= bs!1883799 d!2217527))

(declare-fun m!7822512 () Bool)

(assert (=> bs!1883799 m!7822512))

(assert (=> bs!1883799 m!7822512))

(declare-fun m!7822514 () Bool)

(assert (=> bs!1883799 m!7822514))

(declare-fun m!7822516 () Bool)

(assert (=> bs!1883799 m!7822516))

(assert (=> bs!1883799 m!7822482))

(assert (=> b!7094234 d!2217527))

(declare-fun b!7094305 () Bool)

(declare-fun e!4264593 () Bool)

(declare-fun e!4264592 () Bool)

(assert (=> b!7094305 (= e!4264593 e!4264592)))

(declare-fun res!2897122 () Bool)

(assert (=> b!7094305 (=> (not res!2897122) (not e!4264592))))

(declare-fun call!645456 () Bool)

(assert (=> b!7094305 (= res!2897122 call!645456)))

(declare-fun b!7094306 () Bool)

(declare-fun e!4264595 () Bool)

(assert (=> b!7094306 (= e!4264595 call!645456)))

(declare-fun b!7094307 () Bool)

(declare-fun e!4264589 () Bool)

(declare-fun e!4264590 () Bool)

(assert (=> b!7094307 (= e!4264589 e!4264590)))

(declare-fun c!1323921 () Bool)

(assert (=> b!7094307 (= c!1323921 (is-Star!17818 r!11554))))

(declare-fun bm!645451 () Bool)

(declare-fun call!645458 () Bool)

(assert (=> bm!645451 (= call!645456 call!645458)))

(declare-fun b!7094308 () Bool)

(declare-fun e!4264591 () Bool)

(assert (=> b!7094308 (= e!4264591 call!645458)))

(declare-fun bm!645452 () Bool)

(declare-fun c!1323922 () Bool)

(assert (=> bm!645452 (= call!645458 (validRegex!9093 (ite c!1323921 (reg!18147 r!11554) (ite c!1323922 (regTwo!36149 r!11554) (regOne!36148 r!11554)))))))

(declare-fun b!7094309 () Bool)

(declare-fun res!2897119 () Bool)

(assert (=> b!7094309 (=> (not res!2897119) (not e!4264595))))

(declare-fun call!645457 () Bool)

(assert (=> b!7094309 (= res!2897119 call!645457)))

(declare-fun e!4264594 () Bool)

(assert (=> b!7094309 (= e!4264594 e!4264595)))

(declare-fun b!7094310 () Bool)

(assert (=> b!7094310 (= e!4264592 call!645457)))

(declare-fun b!7094311 () Bool)

(assert (=> b!7094311 (= e!4264590 e!4264591)))

(declare-fun res!2897121 () Bool)

(assert (=> b!7094311 (= res!2897121 (not (nullable!7458 (reg!18147 r!11554))))))

(assert (=> b!7094311 (=> (not res!2897121) (not e!4264591))))

(declare-fun b!7094312 () Bool)

(assert (=> b!7094312 (= e!4264590 e!4264594)))

(assert (=> b!7094312 (= c!1323922 (is-Union!17818 r!11554))))

(declare-fun d!2217531 () Bool)

(declare-fun res!2897123 () Bool)

(assert (=> d!2217531 (=> res!2897123 e!4264589)))

(assert (=> d!2217531 (= res!2897123 (is-ElementMatch!17818 r!11554))))

(assert (=> d!2217531 (= (validRegex!9093 r!11554) e!4264589)))

(declare-fun bm!645453 () Bool)

(assert (=> bm!645453 (= call!645457 (validRegex!9093 (ite c!1323922 (regOne!36149 r!11554) (regTwo!36148 r!11554))))))

(declare-fun b!7094313 () Bool)

(declare-fun res!2897120 () Bool)

(assert (=> b!7094313 (=> res!2897120 e!4264593)))

(assert (=> b!7094313 (= res!2897120 (not (is-Concat!26663 r!11554)))))

(assert (=> b!7094313 (= e!4264594 e!4264593)))

(assert (= (and d!2217531 (not res!2897123)) b!7094307))

(assert (= (and b!7094307 c!1323921) b!7094311))

(assert (= (and b!7094307 (not c!1323921)) b!7094312))

(assert (= (and b!7094311 res!2897121) b!7094308))

(assert (= (and b!7094312 c!1323922) b!7094309))

(assert (= (and b!7094312 (not c!1323922)) b!7094313))

(assert (= (and b!7094309 res!2897119) b!7094306))

(assert (= (and b!7094313 (not res!2897120)) b!7094305))

(assert (= (and b!7094305 res!2897122) b!7094310))

(assert (= (or b!7094309 b!7094310) bm!645453))

(assert (= (or b!7094306 b!7094305) bm!645451))

(assert (= (or b!7094308 bm!645451) bm!645452))

(declare-fun m!7822522 () Bool)

(assert (=> bm!645452 m!7822522))

(declare-fun m!7822524 () Bool)

(assert (=> b!7094311 m!7822524))

(declare-fun m!7822526 () Bool)

(assert (=> bm!645453 m!7822526))

(assert (=> start!690562 d!2217531))

(declare-fun bs!1883800 () Bool)

(declare-fun d!2217535 () Bool)

(assert (= bs!1883800 (and d!2217535 b!7094234)))

(declare-fun lambda!430282 () Int)

(assert (=> bs!1883800 (= lambda!430282 lambda!430274)))

(assert (=> d!2217535 (= (inv!87411 c!9994) (forall!16746 (exprs!7314 c!9994) lambda!430282))))

(declare-fun bs!1883801 () Bool)

(assert (= bs!1883801 d!2217535))

(declare-fun m!7822528 () Bool)

(assert (=> bs!1883801 m!7822528))

(assert (=> start!690562 d!2217535))

(declare-fun bs!1883802 () Bool)

(declare-fun d!2217537 () Bool)

(assert (= bs!1883802 (and d!2217537 b!7094234)))

(declare-fun lambda!430283 () Int)

(assert (=> bs!1883802 (= lambda!430283 lambda!430274)))

(declare-fun bs!1883803 () Bool)

(assert (= bs!1883803 (and d!2217537 d!2217535)))

(assert (=> bs!1883803 (= lambda!430283 lambda!430282)))

(assert (=> d!2217537 (= (inv!87411 auxCtx!45) (forall!16746 (exprs!7314 auxCtx!45) lambda!430283))))

(declare-fun bs!1883804 () Bool)

(assert (= bs!1883804 d!2217537))

(declare-fun m!7822530 () Bool)

(assert (=> bs!1883804 m!7822530))

(assert (=> start!690562 d!2217537))

(declare-fun b!7094318 () Bool)

(declare-fun e!4264598 () Bool)

(declare-fun tp!1949279 () Bool)

(declare-fun tp!1949280 () Bool)

(assert (=> b!7094318 (= e!4264598 (and tp!1949279 tp!1949280))))

(assert (=> b!7094229 (= tp!1949253 e!4264598)))

(assert (= (and b!7094229 (is-Cons!68657 (exprs!7314 auxCtx!45))) b!7094318))

(declare-fun b!7094332 () Bool)

(declare-fun e!4264603 () Bool)

(declare-fun tp!1949294 () Bool)

(declare-fun tp!1949292 () Bool)

(assert (=> b!7094332 (= e!4264603 (and tp!1949294 tp!1949292))))

(assert (=> b!7094228 (= tp!1949251 e!4264603)))

(declare-fun b!7094334 () Bool)

(declare-fun tp!1949291 () Bool)

(declare-fun tp!1949295 () Bool)

(assert (=> b!7094334 (= e!4264603 (and tp!1949291 tp!1949295))))

(declare-fun b!7094331 () Bool)

(assert (=> b!7094331 (= e!4264603 tp_is_empty!44869)))

(declare-fun b!7094333 () Bool)

(declare-fun tp!1949293 () Bool)

(assert (=> b!7094333 (= e!4264603 tp!1949293)))

(assert (= (and b!7094228 (is-ElementMatch!17818 (regOne!36148 r!11554))) b!7094331))

(assert (= (and b!7094228 (is-Concat!26663 (regOne!36148 r!11554))) b!7094332))

(assert (= (and b!7094228 (is-Star!17818 (regOne!36148 r!11554))) b!7094333))

(assert (= (and b!7094228 (is-Union!17818 (regOne!36148 r!11554))) b!7094334))

(declare-fun b!7094336 () Bool)

(declare-fun e!4264604 () Bool)

(declare-fun tp!1949299 () Bool)

(declare-fun tp!1949297 () Bool)

(assert (=> b!7094336 (= e!4264604 (and tp!1949299 tp!1949297))))

(assert (=> b!7094228 (= tp!1949249 e!4264604)))

(declare-fun b!7094338 () Bool)

(declare-fun tp!1949296 () Bool)

(declare-fun tp!1949300 () Bool)

(assert (=> b!7094338 (= e!4264604 (and tp!1949296 tp!1949300))))

(declare-fun b!7094335 () Bool)

(assert (=> b!7094335 (= e!4264604 tp_is_empty!44869)))

(declare-fun b!7094337 () Bool)

(declare-fun tp!1949298 () Bool)

(assert (=> b!7094337 (= e!4264604 tp!1949298)))

(assert (= (and b!7094228 (is-ElementMatch!17818 (regTwo!36148 r!11554))) b!7094335))

(assert (= (and b!7094228 (is-Concat!26663 (regTwo!36148 r!11554))) b!7094336))

(assert (= (and b!7094228 (is-Star!17818 (regTwo!36148 r!11554))) b!7094337))

(assert (= (and b!7094228 (is-Union!17818 (regTwo!36148 r!11554))) b!7094338))

(declare-fun b!7094339 () Bool)

(declare-fun e!4264605 () Bool)

(declare-fun tp!1949301 () Bool)

(declare-fun tp!1949302 () Bool)

(assert (=> b!7094339 (= e!4264605 (and tp!1949301 tp!1949302))))

(assert (=> b!7094227 (= tp!1949248 e!4264605)))

(assert (= (and b!7094227 (is-Cons!68657 (exprs!7314 c!9994))) b!7094339))

(declare-fun b!7094341 () Bool)

(declare-fun e!4264606 () Bool)

(declare-fun tp!1949306 () Bool)

(declare-fun tp!1949304 () Bool)

(assert (=> b!7094341 (= e!4264606 (and tp!1949306 tp!1949304))))

(assert (=> b!7094236 (= tp!1949252 e!4264606)))

(declare-fun b!7094343 () Bool)

(declare-fun tp!1949303 () Bool)

(declare-fun tp!1949307 () Bool)

(assert (=> b!7094343 (= e!4264606 (and tp!1949303 tp!1949307))))

(declare-fun b!7094340 () Bool)

(assert (=> b!7094340 (= e!4264606 tp_is_empty!44869)))

(declare-fun b!7094342 () Bool)

(declare-fun tp!1949305 () Bool)

(assert (=> b!7094342 (= e!4264606 tp!1949305)))

(assert (= (and b!7094236 (is-ElementMatch!17818 (reg!18147 r!11554))) b!7094340))

(assert (= (and b!7094236 (is-Concat!26663 (reg!18147 r!11554))) b!7094341))

(assert (= (and b!7094236 (is-Star!17818 (reg!18147 r!11554))) b!7094342))

(assert (= (and b!7094236 (is-Union!17818 (reg!18147 r!11554))) b!7094343))

(declare-fun b!7094345 () Bool)

(declare-fun e!4264607 () Bool)

(declare-fun tp!1949311 () Bool)

(declare-fun tp!1949309 () Bool)

(assert (=> b!7094345 (= e!4264607 (and tp!1949311 tp!1949309))))

(assert (=> b!7094231 (= tp!1949247 e!4264607)))

(declare-fun b!7094347 () Bool)

(declare-fun tp!1949308 () Bool)

(declare-fun tp!1949312 () Bool)

(assert (=> b!7094347 (= e!4264607 (and tp!1949308 tp!1949312))))

(declare-fun b!7094344 () Bool)

(assert (=> b!7094344 (= e!4264607 tp_is_empty!44869)))

(declare-fun b!7094346 () Bool)

(declare-fun tp!1949310 () Bool)

(assert (=> b!7094346 (= e!4264607 tp!1949310)))

(assert (= (and b!7094231 (is-ElementMatch!17818 (regOne!36149 r!11554))) b!7094344))

(assert (= (and b!7094231 (is-Concat!26663 (regOne!36149 r!11554))) b!7094345))

(assert (= (and b!7094231 (is-Star!17818 (regOne!36149 r!11554))) b!7094346))

(assert (= (and b!7094231 (is-Union!17818 (regOne!36149 r!11554))) b!7094347))

(declare-fun b!7094349 () Bool)

(declare-fun e!4264608 () Bool)

(declare-fun tp!1949316 () Bool)

(declare-fun tp!1949314 () Bool)

(assert (=> b!7094349 (= e!4264608 (and tp!1949316 tp!1949314))))

(assert (=> b!7094231 (= tp!1949250 e!4264608)))

(declare-fun b!7094351 () Bool)

(declare-fun tp!1949313 () Bool)

(declare-fun tp!1949317 () Bool)

(assert (=> b!7094351 (= e!4264608 (and tp!1949313 tp!1949317))))

(declare-fun b!7094348 () Bool)

(assert (=> b!7094348 (= e!4264608 tp_is_empty!44869)))

(declare-fun b!7094350 () Bool)

(declare-fun tp!1949315 () Bool)

(assert (=> b!7094350 (= e!4264608 tp!1949315)))

(assert (= (and b!7094231 (is-ElementMatch!17818 (regTwo!36149 r!11554))) b!7094348))

(assert (= (and b!7094231 (is-Concat!26663 (regTwo!36149 r!11554))) b!7094349))

(assert (= (and b!7094231 (is-Star!17818 (regTwo!36149 r!11554))) b!7094350))

(assert (= (and b!7094231 (is-Union!17818 (regTwo!36149 r!11554))) b!7094351))

(declare-fun b_lambda!271113 () Bool)

(assert (= b_lambda!271107 (or b!7094234 b_lambda!271113)))

(declare-fun bs!1883806 () Bool)

(declare-fun d!2217543 () Bool)

(assert (= bs!1883806 (and d!2217543 b!7094234)))

(assert (=> bs!1883806 (= (dynLambda!28013 lambda!430274 (h!75105 (exprs!7314 c!9994))) (validRegex!9093 (h!75105 (exprs!7314 c!9994))))))

(declare-fun m!7822542 () Bool)

(assert (=> bs!1883806 m!7822542))

(assert (=> b!7094279 d!2217543))

(declare-fun b_lambda!271115 () Bool)

(assert (= b_lambda!271105 (or b!7094234 b_lambda!271115)))

(declare-fun bs!1883807 () Bool)

(declare-fun d!2217545 () Bool)

(assert (= bs!1883807 (and d!2217545 b!7094234)))

(assert (=> bs!1883807 (= (dynLambda!28013 lambda!430274 (h!75105 (exprs!7314 auxCtx!45))) (validRegex!9093 (h!75105 (exprs!7314 auxCtx!45))))))

(declare-fun m!7822544 () Bool)

(assert (=> bs!1883807 m!7822544))

(assert (=> b!7094277 d!2217545))

(push 1)

(assert (not b!7094280))

(assert (not bs!1883806))

(assert (not b!7094318))

(assert (not b_lambda!271115))

(assert (not b!7094347))

(assert (not bm!645452))

(assert (not bs!1883807))

(assert (not b!7094332))

(assert (not b!7094342))

(assert (not d!2217535))

(assert (not d!2217527))

(assert (not b!7094339))

(assert (not b!7094346))

(assert (not b!7094334))

(assert tp_is_empty!44869)

(assert (not b!7094336))

(assert (not d!2217537))

(assert (not d!2217523))

(assert (not b!7094345))

(assert (not b!7094349))

(assert (not b!7094278))

(assert (not b_lambda!271113))

(assert (not b!7094351))

(assert (not bm!645453))

(assert (not b!7094337))

(assert (not b!7094343))

(assert (not b!7094311))

(assert (not b!7094338))

(assert (not b!7094341))

(assert (not b!7094333))

(assert (not b!7094350))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

