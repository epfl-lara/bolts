; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!692982 () Bool)

(assert start!692982)

(declare-fun b!7120164 () Bool)

(assert (=> b!7120164 true))

(declare-fun b!7120161 () Bool)

(declare-fun res!2904563 () Bool)

(declare-fun e!4278210 () Bool)

(assert (=> b!7120161 (=> (not res!2904563) (not e!4278210))))

(declare-datatypes ((C!36242 0))(
  ( (C!36243 (val!27827 Int)) )
))
(declare-datatypes ((Regex!17986 0))(
  ( (ElementMatch!17986 (c!1328779 C!36242)) (Concat!26831 (regOne!36484 Regex!17986) (regTwo!36484 Regex!17986)) (EmptyExpr!17986) (Star!17986 (reg!18315 Regex!17986)) (EmptyLang!17986) (Union!17986 (regOne!36485 Regex!17986) (regTwo!36485 Regex!17986)) )
))
(declare-fun r!11554 () Regex!17986)

(assert (=> b!7120161 (= res!2904563 (and (not (is-Concat!26831 r!11554)) (not (is-Star!17986 r!11554))))))

(declare-fun b!7120162 () Bool)

(declare-fun e!4278209 () Bool)

(declare-fun tp!1960185 () Bool)

(assert (=> b!7120162 (= e!4278209 tp!1960185)))

(declare-fun b!7120163 () Bool)

(declare-fun e!4278211 () Bool)

(declare-fun nullable!7623 (Regex!17986) Bool)

(assert (=> b!7120163 (= e!4278211 (not (nullable!7623 (regOne!36484 r!11554))))))

(declare-fun e!4278213 () Bool)

(assert (=> b!7120164 (= e!4278213 e!4278210)))

(declare-fun res!2904564 () Bool)

(assert (=> b!7120164 (=> (not res!2904564) (not e!4278210))))

(declare-fun a!1901 () C!36242)

(assert (=> b!7120164 (= res!2904564 (and (or (not (is-ElementMatch!17986 r!11554)) (not (= (c!1328779 r!11554) a!1901))) (not (is-Union!17986 r!11554))))))

(declare-fun b!7120165 () Bool)

(declare-fun e!4278214 () Bool)

(declare-fun tp!1960183 () Bool)

(assert (=> b!7120165 (= e!4278214 tp!1960183)))

(declare-fun res!2904565 () Bool)

(assert (=> start!692982 (=> (not res!2904565) (not e!4278213))))

(declare-fun validRegex!9259 (Regex!17986) Bool)

(assert (=> start!692982 (= res!2904565 (validRegex!9259 r!11554))))

(assert (=> start!692982 e!4278213))

(assert (=> start!692982 e!4278209))

(declare-datatypes ((List!68947 0))(
  ( (Nil!68823) (Cons!68823 (h!75271 Regex!17986) (t!382810 List!68947)) )
))
(declare-datatypes ((Context!13960 0))(
  ( (Context!13961 (exprs!7480 List!68947)) )
))
(declare-fun c!9994 () Context!13960)

(declare-fun e!4278212 () Bool)

(declare-fun inv!87829 (Context!13960) Bool)

(assert (=> start!692982 (and (inv!87829 c!9994) e!4278212)))

(declare-fun tp_is_empty!45205 () Bool)

(assert (=> start!692982 tp_is_empty!45205))

(declare-fun auxCtx!45 () Context!13960)

(assert (=> start!692982 (and (inv!87829 auxCtx!45) e!4278214)))

(declare-fun b!7120166 () Bool)

(declare-fun res!2904567 () Bool)

(assert (=> b!7120166 (=> (not res!2904567) (not e!4278210))))

(assert (=> b!7120166 (= res!2904567 e!4278211)))

(declare-fun res!2904566 () Bool)

(assert (=> b!7120166 (=> res!2904566 e!4278211)))

(assert (=> b!7120166 (= res!2904566 (not (is-Concat!26831 r!11554)))))

(declare-fun b!7120167 () Bool)

(assert (=> b!7120167 (= e!4278209 tp_is_empty!45205)))

(declare-fun b!7120168 () Bool)

(declare-fun derivationStepZipperDown!2481 (Regex!17986 Context!13960 C!36242) (Set Context!13960))

(declare-fun ++!16138 (List!68947 List!68947) List!68947)

(declare-fun appendTo!949 ((Set Context!13960) Context!13960) (Set Context!13960))

(assert (=> b!7120168 (= e!4278210 (not (= (derivationStepZipperDown!2481 r!11554 (Context!13961 (++!16138 (exprs!7480 c!9994) (exprs!7480 auxCtx!45))) a!1901) (appendTo!949 (derivationStepZipperDown!2481 r!11554 c!9994 a!1901) auxCtx!45))))))

(declare-datatypes ((Unit!162643 0))(
  ( (Unit!162644) )
))
(declare-fun lt!2561246 () Unit!162643)

(declare-fun lambda!432681 () Int)

(declare-fun lemmaConcatPreservesForall!1271 (List!68947 List!68947 Int) Unit!162643)

(assert (=> b!7120168 (= lt!2561246 (lemmaConcatPreservesForall!1271 (exprs!7480 c!9994) (exprs!7480 auxCtx!45) lambda!432681))))

(declare-fun lambda!432680 () Int)

(declare-fun map!16319 ((Set Context!13960) Int) (Set Context!13960))

(assert (=> b!7120168 (= (map!16319 (as set.empty (Set Context!13960)) lambda!432680) (as set.empty (Set Context!13960)))))

(declare-fun lt!2561245 () Unit!162643)

(declare-fun lemmaMapOnEmptySetIsEmpty!17 ((Set Context!13960) Int) Unit!162643)

(assert (=> b!7120168 (= lt!2561245 (lemmaMapOnEmptySetIsEmpty!17 (as set.empty (Set Context!13960)) lambda!432680))))

(declare-fun b!7120169 () Bool)

(declare-fun tp!1960189 () Bool)

(declare-fun tp!1960184 () Bool)

(assert (=> b!7120169 (= e!4278209 (and tp!1960189 tp!1960184))))

(declare-fun b!7120170 () Bool)

(declare-fun tp!1960186 () Bool)

(assert (=> b!7120170 (= e!4278212 tp!1960186)))

(declare-fun b!7120171 () Bool)

(declare-fun tp!1960188 () Bool)

(declare-fun tp!1960187 () Bool)

(assert (=> b!7120171 (= e!4278209 (and tp!1960188 tp!1960187))))

(assert (= (and start!692982 res!2904565) b!7120164))

(assert (= (and b!7120164 res!2904564) b!7120166))

(assert (= (and b!7120166 (not res!2904566)) b!7120163))

(assert (= (and b!7120166 res!2904567) b!7120161))

(assert (= (and b!7120161 res!2904563) b!7120168))

(assert (= (and start!692982 (is-ElementMatch!17986 r!11554)) b!7120167))

(assert (= (and start!692982 (is-Concat!26831 r!11554)) b!7120169))

(assert (= (and start!692982 (is-Star!17986 r!11554)) b!7120162))

(assert (= (and start!692982 (is-Union!17986 r!11554)) b!7120171))

(assert (= start!692982 b!7120170))

(assert (= start!692982 b!7120165))

(declare-fun m!7837280 () Bool)

(assert (=> b!7120163 m!7837280))

(declare-fun m!7837282 () Bool)

(assert (=> start!692982 m!7837282))

(declare-fun m!7837284 () Bool)

(assert (=> start!692982 m!7837284))

(declare-fun m!7837286 () Bool)

(assert (=> start!692982 m!7837286))

(declare-fun m!7837288 () Bool)

(assert (=> b!7120168 m!7837288))

(declare-fun m!7837290 () Bool)

(assert (=> b!7120168 m!7837290))

(declare-fun m!7837292 () Bool)

(assert (=> b!7120168 m!7837292))

(declare-fun m!7837294 () Bool)

(assert (=> b!7120168 m!7837294))

(assert (=> b!7120168 m!7837290))

(declare-fun m!7837296 () Bool)

(assert (=> b!7120168 m!7837296))

(declare-fun m!7837298 () Bool)

(assert (=> b!7120168 m!7837298))

(declare-fun m!7837300 () Bool)

(assert (=> b!7120168 m!7837300))

(push 1)

(assert (not b!7120169))

(assert (not b!7120163))

(assert (not start!692982))

(assert (not b!7120165))

(assert tp_is_empty!45205)

(assert (not b!7120171))

(assert (not b!7120170))

(assert (not b!7120162))

(assert (not b!7120168))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!650599 () Bool)

(declare-fun call!650604 () Bool)

(declare-fun c!1328785 () Bool)

(assert (=> bm!650599 (= call!650604 (validRegex!9259 (ite c!1328785 (regTwo!36485 r!11554) (regOne!36484 r!11554))))))

(declare-fun bm!650600 () Bool)

(declare-fun call!650606 () Bool)

(declare-fun call!650605 () Bool)

(assert (=> bm!650600 (= call!650606 call!650605)))

(declare-fun b!7120227 () Bool)

(declare-fun e!4278247 () Bool)

(declare-fun e!4278253 () Bool)

(assert (=> b!7120227 (= e!4278247 e!4278253)))

(declare-fun res!2904598 () Bool)

(assert (=> b!7120227 (= res!2904598 (not (nullable!7623 (reg!18315 r!11554))))))

(assert (=> b!7120227 (=> (not res!2904598) (not e!4278253))))

(declare-fun d!2221823 () Bool)

(declare-fun res!2904599 () Bool)

(declare-fun e!4278248 () Bool)

(assert (=> d!2221823 (=> res!2904599 e!4278248)))

(assert (=> d!2221823 (= res!2904599 (is-ElementMatch!17986 r!11554))))

(assert (=> d!2221823 (= (validRegex!9259 r!11554) e!4278248)))

(declare-fun b!7120228 () Bool)

(assert (=> b!7120228 (= e!4278248 e!4278247)))

(declare-fun c!1328786 () Bool)

(assert (=> b!7120228 (= c!1328786 (is-Star!17986 r!11554))))

(declare-fun b!7120229 () Bool)

(declare-fun e!4278251 () Bool)

(assert (=> b!7120229 (= e!4278251 call!650606)))

(declare-fun b!7120230 () Bool)

(declare-fun e!4278249 () Bool)

(assert (=> b!7120230 (= e!4278249 call!650604)))

(declare-fun b!7120231 () Bool)

(declare-fun res!2904595 () Bool)

(assert (=> b!7120231 (=> (not res!2904595) (not e!4278249))))

(assert (=> b!7120231 (= res!2904595 call!650606)))

(declare-fun e!4278250 () Bool)

(assert (=> b!7120231 (= e!4278250 e!4278249)))

(declare-fun b!7120232 () Bool)

(assert (=> b!7120232 (= e!4278247 e!4278250)))

(assert (=> b!7120232 (= c!1328785 (is-Union!17986 r!11554))))

(declare-fun b!7120233 () Bool)

(declare-fun e!4278252 () Bool)

(assert (=> b!7120233 (= e!4278252 e!4278251)))

(declare-fun res!2904596 () Bool)

(assert (=> b!7120233 (=> (not res!2904596) (not e!4278251))))

(assert (=> b!7120233 (= res!2904596 call!650604)))

(declare-fun b!7120234 () Bool)

(assert (=> b!7120234 (= e!4278253 call!650605)))

(declare-fun bm!650601 () Bool)

(assert (=> bm!650601 (= call!650605 (validRegex!9259 (ite c!1328786 (reg!18315 r!11554) (ite c!1328785 (regOne!36485 r!11554) (regTwo!36484 r!11554)))))))

(declare-fun b!7120235 () Bool)

(declare-fun res!2904597 () Bool)

(assert (=> b!7120235 (=> res!2904597 e!4278252)))

(assert (=> b!7120235 (= res!2904597 (not (is-Concat!26831 r!11554)))))

(assert (=> b!7120235 (= e!4278250 e!4278252)))

(assert (= (and d!2221823 (not res!2904599)) b!7120228))

(assert (= (and b!7120228 c!1328786) b!7120227))

(assert (= (and b!7120228 (not c!1328786)) b!7120232))

(assert (= (and b!7120227 res!2904598) b!7120234))

(assert (= (and b!7120232 c!1328785) b!7120231))

(assert (= (and b!7120232 (not c!1328785)) b!7120235))

(assert (= (and b!7120231 res!2904595) b!7120230))

(assert (= (and b!7120235 (not res!2904597)) b!7120233))

(assert (= (and b!7120233 res!2904596) b!7120229))

(assert (= (or b!7120231 b!7120229) bm!650600))

(assert (= (or b!7120230 b!7120233) bm!650599))

(assert (= (or b!7120234 bm!650600) bm!650601))

(declare-fun m!7837324 () Bool)

(assert (=> bm!650599 m!7837324))

(declare-fun m!7837326 () Bool)

(assert (=> b!7120227 m!7837326))

(declare-fun m!7837328 () Bool)

(assert (=> bm!650601 m!7837328))

(assert (=> start!692982 d!2221823))

(declare-fun bs!1885839 () Bool)

(declare-fun d!2221825 () Bool)

(assert (= bs!1885839 (and d!2221825 b!7120168)))

(declare-fun lambda!432692 () Int)

(assert (=> bs!1885839 (= lambda!432692 lambda!432681)))

(declare-fun forall!16874 (List!68947 Int) Bool)

(assert (=> d!2221825 (= (inv!87829 c!9994) (forall!16874 (exprs!7480 c!9994) lambda!432692))))

(declare-fun bs!1885840 () Bool)

(assert (= bs!1885840 d!2221825))

(declare-fun m!7837330 () Bool)

(assert (=> bs!1885840 m!7837330))

(assert (=> start!692982 d!2221825))

(declare-fun bs!1885841 () Bool)

(declare-fun d!2221827 () Bool)

(assert (= bs!1885841 (and d!2221827 b!7120168)))

(declare-fun lambda!432693 () Int)

(assert (=> bs!1885841 (= lambda!432693 lambda!432681)))

(declare-fun bs!1885842 () Bool)

(assert (= bs!1885842 (and d!2221827 d!2221825)))

(assert (=> bs!1885842 (= lambda!432693 lambda!432692)))

(assert (=> d!2221827 (= (inv!87829 auxCtx!45) (forall!16874 (exprs!7480 auxCtx!45) lambda!432693))))

(declare-fun bs!1885843 () Bool)

(assert (= bs!1885843 d!2221827))

(declare-fun m!7837332 () Bool)

(assert (=> bs!1885843 m!7837332))

(assert (=> start!692982 d!2221827))

(declare-fun bs!1885844 () Bool)

(declare-fun d!2221829 () Bool)

(assert (= bs!1885844 (and d!2221829 b!7120164)))

(declare-fun lambda!432698 () Int)

(assert (=> bs!1885844 (= lambda!432698 lambda!432680)))

(assert (=> d!2221829 true))

(assert (=> d!2221829 (= (appendTo!949 (derivationStepZipperDown!2481 r!11554 c!9994 a!1901) auxCtx!45) (map!16319 (derivationStepZipperDown!2481 r!11554 c!9994 a!1901) lambda!432698))))

(declare-fun bs!1885845 () Bool)

(assert (= bs!1885845 d!2221829))

(assert (=> bs!1885845 m!7837290))

(declare-fun m!7837334 () Bool)

(assert (=> bs!1885845 m!7837334))

(assert (=> b!7120168 d!2221829))

(declare-fun b!7120276 () Bool)

(declare-fun e!4278283 () (Set Context!13960))

(declare-fun call!650625 () (Set Context!13960))

(assert (=> b!7120276 (= e!4278283 call!650625)))

(declare-fun b!7120277 () Bool)

(declare-fun e!4278280 () (Set Context!13960))

(declare-fun e!4278284 () (Set Context!13960))

(assert (=> b!7120277 (= e!4278280 e!4278284)))

(declare-fun c!1328805 () Bool)

(assert (=> b!7120277 (= c!1328805 (is-Concat!26831 r!11554))))

(declare-fun b!7120278 () Bool)

(declare-fun call!650628 () (Set Context!13960))

(declare-fun call!650630 () (Set Context!13960))

(assert (=> b!7120278 (= e!4278280 (set.union call!650628 call!650630))))

(declare-fun b!7120279 () Bool)

(declare-fun e!4278281 () (Set Context!13960))

(assert (=> b!7120279 (= e!4278281 (set.insert c!9994 (as set.empty (Set Context!13960))))))

(declare-fun b!7120280 () Bool)

(declare-fun e!4278282 () (Set Context!13960))

(assert (=> b!7120280 (= e!4278281 e!4278282)))

(declare-fun c!1328806 () Bool)

(assert (=> b!7120280 (= c!1328806 (is-Union!17986 r!11554))))

(declare-fun d!2221833 () Bool)

(declare-fun c!1328804 () Bool)

(assert (=> d!2221833 (= c!1328804 (and (is-ElementMatch!17986 r!11554) (= (c!1328779 r!11554) a!1901)))))

(assert (=> d!2221833 (= (derivationStepZipperDown!2481 r!11554 c!9994 a!1901) e!4278281)))

(declare-fun bm!650620 () Bool)

(declare-fun call!650627 () List!68947)

(assert (=> bm!650620 (= call!650628 (derivationStepZipperDown!2481 (ite c!1328806 (regOne!36485 r!11554) (regOne!36484 r!11554)) (ite c!1328806 c!9994 (Context!13961 call!650627)) a!1901))))

(declare-fun c!1328802 () Bool)

(declare-fun bm!650621 () Bool)

(declare-fun $colon$colon!2828 (List!68947 Regex!17986) List!68947)

(assert (=> bm!650621 (= call!650627 ($colon$colon!2828 (exprs!7480 c!9994) (ite (or c!1328802 c!1328805) (regTwo!36484 r!11554) r!11554)))))

(declare-fun b!7120281 () Bool)

(declare-fun c!1328803 () Bool)

(assert (=> b!7120281 (= c!1328803 (is-Star!17986 r!11554))))

(assert (=> b!7120281 (= e!4278284 e!4278283)))

(declare-fun bm!650622 () Bool)

(declare-fun call!650626 () (Set Context!13960))

(assert (=> bm!650622 (= call!650630 call!650626)))

(declare-fun b!7120282 () Bool)

(declare-fun e!4278285 () Bool)

(assert (=> b!7120282 (= e!4278285 (nullable!7623 (regOne!36484 r!11554)))))

(declare-fun b!7120283 () Bool)

(assert (=> b!7120283 (= c!1328802 e!4278285)))

(declare-fun res!2904612 () Bool)

(assert (=> b!7120283 (=> (not res!2904612) (not e!4278285))))

(assert (=> b!7120283 (= res!2904612 (is-Concat!26831 r!11554))))

(assert (=> b!7120283 (= e!4278282 e!4278280)))

(declare-fun bm!650623 () Bool)

(declare-fun call!650629 () List!68947)

(assert (=> bm!650623 (= call!650626 (derivationStepZipperDown!2481 (ite c!1328806 (regTwo!36485 r!11554) (ite c!1328802 (regTwo!36484 r!11554) (ite c!1328805 (regOne!36484 r!11554) (reg!18315 r!11554)))) (ite (or c!1328806 c!1328802) c!9994 (Context!13961 call!650629)) a!1901))))

(declare-fun bm!650624 () Bool)

(assert (=> bm!650624 (= call!650625 call!650630)))

(declare-fun bm!650625 () Bool)

(assert (=> bm!650625 (= call!650629 call!650627)))

(declare-fun b!7120284 () Bool)

(assert (=> b!7120284 (= e!4278283 (as set.empty (Set Context!13960)))))

(declare-fun b!7120285 () Bool)

(assert (=> b!7120285 (= e!4278284 call!650625)))

(declare-fun b!7120286 () Bool)

(assert (=> b!7120286 (= e!4278282 (set.union call!650628 call!650626))))

(assert (= (and d!2221833 c!1328804) b!7120279))

(assert (= (and d!2221833 (not c!1328804)) b!7120280))

(assert (= (and b!7120280 c!1328806) b!7120286))

(assert (= (and b!7120280 (not c!1328806)) b!7120283))

(assert (= (and b!7120283 res!2904612) b!7120282))

(assert (= (and b!7120283 c!1328802) b!7120278))

(assert (= (and b!7120283 (not c!1328802)) b!7120277))

(assert (= (and b!7120277 c!1328805) b!7120285))

(assert (= (and b!7120277 (not c!1328805)) b!7120281))

(assert (= (and b!7120281 c!1328803) b!7120276))

(assert (= (and b!7120281 (not c!1328803)) b!7120284))

(assert (= (or b!7120285 b!7120276) bm!650625))

(assert (= (or b!7120285 b!7120276) bm!650624))

(assert (= (or b!7120278 bm!650624) bm!650622))

(assert (= (or b!7120278 bm!650625) bm!650621))

(assert (= (or b!7120286 bm!650622) bm!650623))

(assert (= (or b!7120286 b!7120278) bm!650620))

(declare-fun m!7837336 () Bool)

(assert (=> bm!650621 m!7837336))

(declare-fun m!7837338 () Bool)

(assert (=> bm!650623 m!7837338))

(declare-fun m!7837340 () Bool)

(assert (=> b!7120279 m!7837340))

(declare-fun m!7837342 () Bool)

(assert (=> bm!650620 m!7837342))

(assert (=> b!7120282 m!7837280))

(assert (=> b!7120168 d!2221833))

(declare-fun d!2221835 () Bool)

(assert (=> d!2221835 (forall!16874 (++!16138 (exprs!7480 c!9994) (exprs!7480 auxCtx!45)) lambda!432681)))

(declare-fun lt!2561259 () Unit!162643)

(declare-fun choose!54916 (List!68947 List!68947 Int) Unit!162643)

(assert (=> d!2221835 (= lt!2561259 (choose!54916 (exprs!7480 c!9994) (exprs!7480 auxCtx!45) lambda!432681))))

(assert (=> d!2221835 (forall!16874 (exprs!7480 c!9994) lambda!432681)))

(assert (=> d!2221835 (= (lemmaConcatPreservesForall!1271 (exprs!7480 c!9994) (exprs!7480 auxCtx!45) lambda!432681) lt!2561259)))

(declare-fun bs!1885846 () Bool)

(assert (= bs!1885846 d!2221835))

(assert (=> bs!1885846 m!7837296))

(assert (=> bs!1885846 m!7837296))

(declare-fun m!7837350 () Bool)

(assert (=> bs!1885846 m!7837350))

(declare-fun m!7837352 () Bool)

(assert (=> bs!1885846 m!7837352))

(declare-fun m!7837354 () Bool)

(assert (=> bs!1885846 m!7837354))

(assert (=> b!7120168 d!2221835))

(declare-fun b!7120296 () Bool)

(declare-fun e!4278296 () (Set Context!13960))

(declare-fun call!650634 () (Set Context!13960))

(assert (=> b!7120296 (= e!4278296 call!650634)))

(declare-fun b!7120297 () Bool)

(declare-fun e!4278293 () (Set Context!13960))

(declare-fun e!4278297 () (Set Context!13960))

(assert (=> b!7120297 (= e!4278293 e!4278297)))

(declare-fun c!1328812 () Bool)

(assert (=> b!7120297 (= c!1328812 (is-Concat!26831 r!11554))))

(declare-fun b!7120298 () Bool)

(declare-fun call!650637 () (Set Context!13960))

(declare-fun call!650639 () (Set Context!13960))

(assert (=> b!7120298 (= e!4278293 (set.union call!650637 call!650639))))

(declare-fun b!7120299 () Bool)

(declare-fun e!4278294 () (Set Context!13960))

(assert (=> b!7120299 (= e!4278294 (set.insert (Context!13961 (++!16138 (exprs!7480 c!9994) (exprs!7480 auxCtx!45))) (as set.empty (Set Context!13960))))))

(declare-fun b!7120300 () Bool)

(declare-fun e!4278295 () (Set Context!13960))

(assert (=> b!7120300 (= e!4278294 e!4278295)))

(declare-fun c!1328813 () Bool)

(assert (=> b!7120300 (= c!1328813 (is-Union!17986 r!11554))))

(declare-fun d!2221839 () Bool)

(declare-fun c!1328811 () Bool)

(assert (=> d!2221839 (= c!1328811 (and (is-ElementMatch!17986 r!11554) (= (c!1328779 r!11554) a!1901)))))

(assert (=> d!2221839 (= (derivationStepZipperDown!2481 r!11554 (Context!13961 (++!16138 (exprs!7480 c!9994) (exprs!7480 auxCtx!45))) a!1901) e!4278294)))

(declare-fun call!650636 () List!68947)

(declare-fun bm!650629 () Bool)

(assert (=> bm!650629 (= call!650637 (derivationStepZipperDown!2481 (ite c!1328813 (regOne!36485 r!11554) (regOne!36484 r!11554)) (ite c!1328813 (Context!13961 (++!16138 (exprs!7480 c!9994) (exprs!7480 auxCtx!45))) (Context!13961 call!650636)) a!1901))))

(declare-fun bm!650630 () Bool)

(declare-fun c!1328809 () Bool)

(assert (=> bm!650630 (= call!650636 ($colon$colon!2828 (exprs!7480 (Context!13961 (++!16138 (exprs!7480 c!9994) (exprs!7480 auxCtx!45)))) (ite (or c!1328809 c!1328812) (regTwo!36484 r!11554) r!11554)))))

(declare-fun b!7120301 () Bool)

(declare-fun c!1328810 () Bool)

(assert (=> b!7120301 (= c!1328810 (is-Star!17986 r!11554))))

(assert (=> b!7120301 (= e!4278297 e!4278296)))

(declare-fun bm!650631 () Bool)

(declare-fun call!650635 () (Set Context!13960))

(assert (=> bm!650631 (= call!650639 call!650635)))

(declare-fun b!7120302 () Bool)

(declare-fun e!4278298 () Bool)

(assert (=> b!7120302 (= e!4278298 (nullable!7623 (regOne!36484 r!11554)))))

(declare-fun b!7120303 () Bool)

(assert (=> b!7120303 (= c!1328809 e!4278298)))

(declare-fun res!2904618 () Bool)

(assert (=> b!7120303 (=> (not res!2904618) (not e!4278298))))

(assert (=> b!7120303 (= res!2904618 (is-Concat!26831 r!11554))))

(assert (=> b!7120303 (= e!4278295 e!4278293)))

(declare-fun bm!650632 () Bool)

(declare-fun call!650638 () List!68947)

(assert (=> bm!650632 (= call!650635 (derivationStepZipperDown!2481 (ite c!1328813 (regTwo!36485 r!11554) (ite c!1328809 (regTwo!36484 r!11554) (ite c!1328812 (regOne!36484 r!11554) (reg!18315 r!11554)))) (ite (or c!1328813 c!1328809) (Context!13961 (++!16138 (exprs!7480 c!9994) (exprs!7480 auxCtx!45))) (Context!13961 call!650638)) a!1901))))

(declare-fun bm!650633 () Bool)

(assert (=> bm!650633 (= call!650634 call!650639)))

(declare-fun bm!650634 () Bool)

(assert (=> bm!650634 (= call!650638 call!650636)))

(declare-fun b!7120304 () Bool)

(assert (=> b!7120304 (= e!4278296 (as set.empty (Set Context!13960)))))

(declare-fun b!7120305 () Bool)

(assert (=> b!7120305 (= e!4278297 call!650634)))

(declare-fun b!7120306 () Bool)

(assert (=> b!7120306 (= e!4278295 (set.union call!650637 call!650635))))

(assert (= (and d!2221839 c!1328811) b!7120299))

(assert (= (and d!2221839 (not c!1328811)) b!7120300))

(assert (= (and b!7120300 c!1328813) b!7120306))

(assert (= (and b!7120300 (not c!1328813)) b!7120303))

(assert (= (and b!7120303 res!2904618) b!7120302))

(assert (= (and b!7120303 c!1328809) b!7120298))

(assert (= (and b!7120303 (not c!1328809)) b!7120297))

(assert (= (and b!7120297 c!1328812) b!7120305))

(assert (= (and b!7120297 (not c!1328812)) b!7120301))

(assert (= (and b!7120301 c!1328810) b!7120296))

(assert (= (and b!7120301 (not c!1328810)) b!7120304))

(assert (= (or b!7120305 b!7120296) bm!650634))

(assert (= (or b!7120305 b!7120296) bm!650633))

(assert (= (or b!7120298 bm!650633) bm!650631))

(assert (= (or b!7120298 bm!650634) bm!650630))

(assert (= (or b!7120306 bm!650631) bm!650632))

(assert (= (or b!7120306 b!7120298) bm!650629))

(declare-fun m!7837356 () Bool)

(assert (=> bm!650630 m!7837356))

(declare-fun m!7837358 () Bool)

(assert (=> bm!650632 m!7837358))

(declare-fun m!7837360 () Bool)

(assert (=> b!7120299 m!7837360))

(declare-fun m!7837362 () Bool)

(assert (=> bm!650629 m!7837362))

(assert (=> b!7120302 m!7837280))

(assert (=> b!7120168 d!2221839))

(declare-fun d!2221841 () Bool)

(declare-fun e!4278304 () Bool)

(assert (=> d!2221841 e!4278304))

(declare-fun res!2904624 () Bool)

(assert (=> d!2221841 (=> (not res!2904624) (not e!4278304))))

(declare-fun lt!2561262 () List!68947)

(declare-fun content!14057 (List!68947) (Set Regex!17986))

(assert (=> d!2221841 (= res!2904624 (= (content!14057 lt!2561262) (set.union (content!14057 (exprs!7480 c!9994)) (content!14057 (exprs!7480 auxCtx!45)))))))

(declare-fun e!4278303 () List!68947)

(assert (=> d!2221841 (= lt!2561262 e!4278303)))

(declare-fun c!1328816 () Bool)

(assert (=> d!2221841 (= c!1328816 (is-Nil!68823 (exprs!7480 c!9994)))))

(assert (=> d!2221841 (= (++!16138 (exprs!7480 c!9994) (exprs!7480 auxCtx!45)) lt!2561262)))

(declare-fun b!7120315 () Bool)

(assert (=> b!7120315 (= e!4278303 (exprs!7480 auxCtx!45))))

(declare-fun b!7120317 () Bool)

(declare-fun res!2904623 () Bool)

(assert (=> b!7120317 (=> (not res!2904623) (not e!4278304))))

(declare-fun size!41432 (List!68947) Int)

(assert (=> b!7120317 (= res!2904623 (= (size!41432 lt!2561262) (+ (size!41432 (exprs!7480 c!9994)) (size!41432 (exprs!7480 auxCtx!45)))))))

(declare-fun b!7120318 () Bool)

(assert (=> b!7120318 (= e!4278304 (or (not (= (exprs!7480 auxCtx!45) Nil!68823)) (= lt!2561262 (exprs!7480 c!9994))))))

(declare-fun b!7120316 () Bool)

(assert (=> b!7120316 (= e!4278303 (Cons!68823 (h!75271 (exprs!7480 c!9994)) (++!16138 (t!382810 (exprs!7480 c!9994)) (exprs!7480 auxCtx!45))))))

(assert (= (and d!2221841 c!1328816) b!7120315))

(assert (= (and d!2221841 (not c!1328816)) b!7120316))

(assert (= (and d!2221841 res!2904624) b!7120317))

(assert (= (and b!7120317 res!2904623) b!7120318))

(declare-fun m!7837368 () Bool)

(assert (=> d!2221841 m!7837368))

(declare-fun m!7837370 () Bool)

(assert (=> d!2221841 m!7837370))

(declare-fun m!7837372 () Bool)

(assert (=> d!2221841 m!7837372))

(declare-fun m!7837374 () Bool)

(assert (=> b!7120317 m!7837374))

(declare-fun m!7837376 () Bool)

(assert (=> b!7120317 m!7837376))

(declare-fun m!7837378 () Bool)

(assert (=> b!7120317 m!7837378))

(declare-fun m!7837380 () Bool)

(assert (=> b!7120316 m!7837380))

(assert (=> b!7120168 d!2221841))

(declare-fun d!2221847 () Bool)

(assert (=> d!2221847 (= (map!16319 (as set.empty (Set Context!13960)) lambda!432680) (as set.empty (Set Context!13960)))))

(declare-fun lt!2561265 () Unit!162643)

(declare-fun choose!54917 ((Set Context!13960) Int) Unit!162643)

(assert (=> d!2221847 (= lt!2561265 (choose!54917 (as set.empty (Set Context!13960)) lambda!432680))))

(assert (=> d!2221847 (= (as set.empty (Set Context!13960)) (as set.empty (Set Context!13960)))))

(assert (=> d!2221847 (= (lemmaMapOnEmptySetIsEmpty!17 (as set.empty (Set Context!13960)) lambda!432680) lt!2561265)))

(declare-fun bs!1885853 () Bool)

(assert (= bs!1885853 d!2221847))

(assert (=> bs!1885853 m!7837294))

(declare-fun m!7837384 () Bool)

(assert (=> bs!1885853 m!7837384))

(assert (=> b!7120168 d!2221847))

(declare-fun d!2221851 () Bool)

(declare-fun choose!54918 ((Set Context!13960) Int) (Set Context!13960))

(assert (=> d!2221851 (= (map!16319 (as set.empty (Set Context!13960)) lambda!432680) (choose!54918 (as set.empty (Set Context!13960)) lambda!432680))))

(declare-fun bs!1885854 () Bool)

(assert (= bs!1885854 d!2221851))

(declare-fun m!7837386 () Bool)

(assert (=> bs!1885854 m!7837386))

(assert (=> b!7120168 d!2221851))

(declare-fun d!2221853 () Bool)

(declare-fun nullableFct!2962 (Regex!17986) Bool)

(assert (=> d!2221853 (= (nullable!7623 (regOne!36484 r!11554)) (nullableFct!2962 (regOne!36484 r!11554)))))

(declare-fun bs!1885855 () Bool)

(assert (= bs!1885855 d!2221853))

(declare-fun m!7837388 () Bool)

(assert (=> bs!1885855 m!7837388))

(assert (=> b!7120163 d!2221853))

(declare-fun b!7120331 () Bool)

(declare-fun e!4278307 () Bool)

(declare-fun tp!1960224 () Bool)

(assert (=> b!7120331 (= e!4278307 tp!1960224)))

(declare-fun b!7120332 () Bool)

(declare-fun tp!1960225 () Bool)

(declare-fun tp!1960222 () Bool)

(assert (=> b!7120332 (= e!4278307 (and tp!1960225 tp!1960222))))

(declare-fun b!7120330 () Bool)

(declare-fun tp!1960221 () Bool)

(declare-fun tp!1960223 () Bool)

(assert (=> b!7120330 (= e!4278307 (and tp!1960221 tp!1960223))))

(assert (=> b!7120162 (= tp!1960185 e!4278307)))

(declare-fun b!7120329 () Bool)

(assert (=> b!7120329 (= e!4278307 tp_is_empty!45205)))

(assert (= (and b!7120162 (is-ElementMatch!17986 (reg!18315 r!11554))) b!7120329))

(assert (= (and b!7120162 (is-Concat!26831 (reg!18315 r!11554))) b!7120330))

(assert (= (and b!7120162 (is-Star!17986 (reg!18315 r!11554))) b!7120331))

(assert (= (and b!7120162 (is-Union!17986 (reg!18315 r!11554))) b!7120332))

(declare-fun b!7120335 () Bool)

(declare-fun e!4278308 () Bool)

(declare-fun tp!1960229 () Bool)

(assert (=> b!7120335 (= e!4278308 tp!1960229)))

(declare-fun b!7120336 () Bool)

(declare-fun tp!1960230 () Bool)

(declare-fun tp!1960227 () Bool)

(assert (=> b!7120336 (= e!4278308 (and tp!1960230 tp!1960227))))

(declare-fun b!7120334 () Bool)

(declare-fun tp!1960226 () Bool)

(declare-fun tp!1960228 () Bool)

(assert (=> b!7120334 (= e!4278308 (and tp!1960226 tp!1960228))))

(assert (=> b!7120169 (= tp!1960189 e!4278308)))

(declare-fun b!7120333 () Bool)

(assert (=> b!7120333 (= e!4278308 tp_is_empty!45205)))

(assert (= (and b!7120169 (is-ElementMatch!17986 (regOne!36484 r!11554))) b!7120333))

(assert (= (and b!7120169 (is-Concat!26831 (regOne!36484 r!11554))) b!7120334))

(assert (= (and b!7120169 (is-Star!17986 (regOne!36484 r!11554))) b!7120335))

(assert (= (and b!7120169 (is-Union!17986 (regOne!36484 r!11554))) b!7120336))

(declare-fun b!7120339 () Bool)

(declare-fun e!4278309 () Bool)

(declare-fun tp!1960234 () Bool)

(assert (=> b!7120339 (= e!4278309 tp!1960234)))

(declare-fun b!7120340 () Bool)

(declare-fun tp!1960235 () Bool)

(declare-fun tp!1960232 () Bool)

(assert (=> b!7120340 (= e!4278309 (and tp!1960235 tp!1960232))))

(declare-fun b!7120338 () Bool)

(declare-fun tp!1960231 () Bool)

(declare-fun tp!1960233 () Bool)

(assert (=> b!7120338 (= e!4278309 (and tp!1960231 tp!1960233))))

(assert (=> b!7120169 (= tp!1960184 e!4278309)))

(declare-fun b!7120337 () Bool)

(assert (=> b!7120337 (= e!4278309 tp_is_empty!45205)))

(assert (= (and b!7120169 (is-ElementMatch!17986 (regTwo!36484 r!11554))) b!7120337))

(assert (= (and b!7120169 (is-Concat!26831 (regTwo!36484 r!11554))) b!7120338))

(assert (= (and b!7120169 (is-Star!17986 (regTwo!36484 r!11554))) b!7120339))

(assert (= (and b!7120169 (is-Union!17986 (regTwo!36484 r!11554))) b!7120340))

(declare-fun b!7120345 () Bool)

(declare-fun e!4278312 () Bool)

(declare-fun tp!1960240 () Bool)

(declare-fun tp!1960241 () Bool)

(assert (=> b!7120345 (= e!4278312 (and tp!1960240 tp!1960241))))

(assert (=> b!7120170 (= tp!1960186 e!4278312)))

(assert (= (and b!7120170 (is-Cons!68823 (exprs!7480 c!9994))) b!7120345))

(declare-fun b!7120346 () Bool)

(declare-fun e!4278313 () Bool)

(declare-fun tp!1960242 () Bool)

(declare-fun tp!1960243 () Bool)

(assert (=> b!7120346 (= e!4278313 (and tp!1960242 tp!1960243))))

(assert (=> b!7120165 (= tp!1960183 e!4278313)))

(assert (= (and b!7120165 (is-Cons!68823 (exprs!7480 auxCtx!45))) b!7120346))

(declare-fun b!7120349 () Bool)

(declare-fun e!4278314 () Bool)

(declare-fun tp!1960247 () Bool)

(assert (=> b!7120349 (= e!4278314 tp!1960247)))

(declare-fun b!7120350 () Bool)

(declare-fun tp!1960248 () Bool)

(declare-fun tp!1960245 () Bool)

(assert (=> b!7120350 (= e!4278314 (and tp!1960248 tp!1960245))))

(declare-fun b!7120348 () Bool)

(declare-fun tp!1960244 () Bool)

(declare-fun tp!1960246 () Bool)

(assert (=> b!7120348 (= e!4278314 (and tp!1960244 tp!1960246))))

(assert (=> b!7120171 (= tp!1960188 e!4278314)))

(declare-fun b!7120347 () Bool)

(assert (=> b!7120347 (= e!4278314 tp_is_empty!45205)))

(assert (= (and b!7120171 (is-ElementMatch!17986 (regOne!36485 r!11554))) b!7120347))

(assert (= (and b!7120171 (is-Concat!26831 (regOne!36485 r!11554))) b!7120348))

(assert (= (and b!7120171 (is-Star!17986 (regOne!36485 r!11554))) b!7120349))

(assert (= (and b!7120171 (is-Union!17986 (regOne!36485 r!11554))) b!7120350))

(declare-fun b!7120353 () Bool)

(declare-fun e!4278315 () Bool)

(declare-fun tp!1960252 () Bool)

(assert (=> b!7120353 (= e!4278315 tp!1960252)))

(declare-fun b!7120354 () Bool)

(declare-fun tp!1960253 () Bool)

(declare-fun tp!1960250 () Bool)

(assert (=> b!7120354 (= e!4278315 (and tp!1960253 tp!1960250))))

(declare-fun b!7120352 () Bool)

(declare-fun tp!1960249 () Bool)

(declare-fun tp!1960251 () Bool)

(assert (=> b!7120352 (= e!4278315 (and tp!1960249 tp!1960251))))

(assert (=> b!7120171 (= tp!1960187 e!4278315)))

(declare-fun b!7120351 () Bool)

(assert (=> b!7120351 (= e!4278315 tp_is_empty!45205)))

(assert (= (and b!7120171 (is-ElementMatch!17986 (regTwo!36485 r!11554))) b!7120351))

(assert (= (and b!7120171 (is-Concat!26831 (regTwo!36485 r!11554))) b!7120352))

(assert (= (and b!7120171 (is-Star!17986 (regTwo!36485 r!11554))) b!7120353))

(assert (= (and b!7120171 (is-Union!17986 (regTwo!36485 r!11554))) b!7120354))

(push 1)

(assert (not d!2221853))

(assert (not d!2221851))

(assert (not bm!650632))

(assert (not b!7120345))

(assert (not bm!650599))

(assert (not b!7120354))

(assert (not b!7120353))

(assert (not b!7120340))

(assert (not b!7120352))

(assert (not b!7120227))

(assert (not b!7120348))

(assert (not d!2221847))

(assert (not bm!650629))

(assert (not b!7120332))

(assert (not d!2221827))

(assert (not b!7120282))

(assert (not b!7120338))

(assert (not b!7120330))

(assert (not b!7120302))

(assert (not b!7120317))

(assert (not b!7120336))

(assert (not b!7120339))

(assert (not bm!650620))

(assert (not b!7120331))

(assert (not d!2221841))

(assert (not b!7120349))

(assert (not bm!650621))

(assert (not b!7120346))

(assert (not b!7120316))

(assert (not d!2221829))

(assert tp_is_empty!45205)

(assert (not bm!650630))

(assert (not b!7120334))

(assert (not bm!650601))

(assert (not d!2221835))

(assert (not bm!650623))

(assert (not b!7120350))

(assert (not b!7120335))

(assert (not d!2221825))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

