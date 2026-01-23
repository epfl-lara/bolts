; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715798 () Bool)

(assert start!715798)

(declare-fun b!7330304 () Bool)

(declare-fun e!4389347 () Bool)

(declare-fun tp!2081356 () Bool)

(assert (=> b!7330304 (= e!4389347 tp!2081356)))

(declare-fun b!7330305 () Bool)

(declare-fun e!4389346 () Bool)

(declare-fun e!4389343 () Bool)

(assert (=> b!7330305 (= e!4389346 e!4389343)))

(declare-fun res!2962499 () Bool)

(assert (=> b!7330305 (=> (not res!2962499) (not e!4389343))))

(declare-datatypes ((C!38350 0))(
  ( (C!38351 (val!29535 Int)) )
))
(declare-datatypes ((Regex!19038 0))(
  ( (ElementMatch!19038 (c!1360974 C!38350)) (Concat!27883 (regOne!38588 Regex!19038) (regTwo!38588 Regex!19038)) (EmptyExpr!19038) (Star!19038 (reg!19367 Regex!19038)) (EmptyLang!19038) (Union!19038 (regOne!38589 Regex!19038) (regTwo!38589 Regex!19038)) )
))
(declare-datatypes ((List!71534 0))(
  ( (Nil!71410) (Cons!71410 (h!77858 Regex!19038) (t!385921 List!71534)) )
))
(declare-datatypes ((Context!15956 0))(
  ( (Context!15957 (exprs!8478 List!71534)) )
))
(declare-fun lt!2607535 () (Set Context!15956))

(declare-fun lt!2607531 () (Set Context!15956))

(declare-fun lt!2607532 () (Set Context!15956))

(declare-fun cWitness!35 () Context!15956)

(assert (=> b!7330305 (= res!2962499 (and (= lt!2607535 (set.union lt!2607531 lt!2607532)) (or (set.member cWitness!35 lt!2607531) (set.member cWitness!35 lt!2607532)) (set.member cWitness!35 lt!2607532)))))

(declare-fun lt!2607526 () Context!15956)

(declare-fun c!10305 () C!38350)

(declare-fun derivationStepZipperUp!2718 (Context!15956 C!38350) (Set Context!15956))

(assert (=> b!7330305 (= lt!2607532 (derivationStepZipperUp!2718 lt!2607526 c!10305))))

(declare-fun b!7330306 () Bool)

(declare-fun lt!2607525 () Context!15956)

(declare-fun inv!90936 (Context!15956) Bool)

(assert (=> b!7330306 (= e!4389343 (not (inv!90936 lt!2607525)))))

(declare-fun lambda!454582 () Int)

(declare-datatypes ((Unit!165037 0))(
  ( (Unit!165038) )
))
(declare-fun lt!2607529 () Unit!165037)

(declare-fun ct2!352 () Context!15956)

(declare-fun lemmaConcatPreservesForall!1717 (List!71534 List!71534 Int) Unit!165037)

(assert (=> b!7330306 (= lt!2607529 (lemmaConcatPreservesForall!1717 (exprs!8478 cWitness!35) (exprs!8478 ct2!352) lambda!454582))))

(declare-fun lt!2607533 () List!71534)

(declare-fun ++!16860 (List!71534 List!71534) List!71534)

(assert (=> b!7330306 (set.member lt!2607525 (derivationStepZipperUp!2718 (Context!15957 (++!16860 lt!2607533 (exprs!8478 ct2!352))) c!10305))))

(assert (=> b!7330306 (= lt!2607525 (Context!15957 (++!16860 (exprs!8478 cWitness!35) (exprs!8478 ct2!352))))))

(declare-fun lt!2607527 () Unit!165037)

(assert (=> b!7330306 (= lt!2607527 (lemmaConcatPreservesForall!1717 lt!2607533 (exprs!8478 ct2!352) lambda!454582))))

(declare-fun lt!2607524 () Unit!165037)

(assert (=> b!7330306 (= lt!2607524 (lemmaConcatPreservesForall!1717 (exprs!8478 cWitness!35) (exprs!8478 ct2!352) lambda!454582))))

(declare-fun lt!2607534 () Unit!165037)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!53 (Context!15956 Context!15956 Context!15956 C!38350) Unit!165037)

(assert (=> b!7330306 (= lt!2607534 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!53 lt!2607526 ct2!352 cWitness!35 c!10305))))

(declare-fun b!7330307 () Bool)

(declare-fun e!4389342 () Bool)

(assert (=> b!7330307 (= e!4389342 e!4389346)))

(declare-fun res!2962496 () Bool)

(assert (=> b!7330307 (=> (not res!2962496) (not e!4389346))))

(declare-fun ct1!256 () Context!15956)

(declare-fun nullable!8139 (Regex!19038) Bool)

(assert (=> b!7330307 (= res!2962496 (nullable!8139 (h!77858 (exprs!8478 ct1!256))))))

(declare-fun derivationStepZipperDown!2865 (Regex!19038 Context!15956 C!38350) (Set Context!15956))

(assert (=> b!7330307 (= lt!2607531 (derivationStepZipperDown!2865 (h!77858 (exprs!8478 ct1!256)) lt!2607526 c!10305))))

(assert (=> b!7330307 (= lt!2607526 (Context!15957 lt!2607533))))

(declare-fun tail!14719 (List!71534) List!71534)

(assert (=> b!7330307 (= lt!2607533 (tail!14719 (exprs!8478 ct1!256)))))

(declare-fun res!2962495 () Bool)

(declare-fun e!4389345 () Bool)

(assert (=> start!715798 (=> (not res!2962495) (not e!4389345))))

(assert (=> start!715798 (= res!2962495 (set.member cWitness!35 lt!2607535))))

(assert (=> start!715798 (= lt!2607535 (derivationStepZipperUp!2718 ct1!256 c!10305))))

(assert (=> start!715798 e!4389345))

(declare-fun tp_is_empty!48321 () Bool)

(assert (=> start!715798 tp_is_empty!48321))

(assert (=> start!715798 (and (inv!90936 cWitness!35) e!4389347)))

(declare-fun e!4389344 () Bool)

(assert (=> start!715798 (and (inv!90936 ct1!256) e!4389344)))

(declare-fun e!4389341 () Bool)

(assert (=> start!715798 (and (inv!90936 ct2!352) e!4389341)))

(declare-fun b!7330308 () Bool)

(declare-fun tp!2081355 () Bool)

(assert (=> b!7330308 (= e!4389341 tp!2081355)))

(declare-fun b!7330309 () Bool)

(declare-fun res!2962498 () Bool)

(assert (=> b!7330309 (=> (not res!2962498) (not e!4389342))))

(declare-fun isEmpty!40950 (List!71534) Bool)

(assert (=> b!7330309 (= res!2962498 (not (isEmpty!40950 (exprs!8478 ct1!256))))))

(declare-fun b!7330310 () Bool)

(assert (=> b!7330310 (= e!4389345 e!4389342)))

(declare-fun res!2962497 () Bool)

(assert (=> b!7330310 (=> (not res!2962497) (not e!4389342))))

(assert (=> b!7330310 (= res!2962497 (is-Cons!71410 (exprs!8478 ct1!256)))))

(declare-fun lt!2607530 () List!71534)

(assert (=> b!7330310 (= lt!2607530 (++!16860 (exprs!8478 ct1!256) (exprs!8478 ct2!352)))))

(declare-fun lt!2607528 () Unit!165037)

(assert (=> b!7330310 (= lt!2607528 (lemmaConcatPreservesForall!1717 (exprs!8478 ct1!256) (exprs!8478 ct2!352) lambda!454582))))

(declare-fun b!7330311 () Bool)

(declare-fun tp!2081354 () Bool)

(assert (=> b!7330311 (= e!4389344 tp!2081354)))

(assert (= (and start!715798 res!2962495) b!7330310))

(assert (= (and b!7330310 res!2962497) b!7330309))

(assert (= (and b!7330309 res!2962498) b!7330307))

(assert (= (and b!7330307 res!2962496) b!7330305))

(assert (= (and b!7330305 res!2962499) b!7330306))

(assert (= start!715798 b!7330304))

(assert (= start!715798 b!7330311))

(assert (= start!715798 b!7330308))

(declare-fun m!7996178 () Bool)

(assert (=> start!715798 m!7996178))

(declare-fun m!7996180 () Bool)

(assert (=> start!715798 m!7996180))

(declare-fun m!7996182 () Bool)

(assert (=> start!715798 m!7996182))

(declare-fun m!7996184 () Bool)

(assert (=> start!715798 m!7996184))

(declare-fun m!7996186 () Bool)

(assert (=> start!715798 m!7996186))

(declare-fun m!7996188 () Bool)

(assert (=> b!7330306 m!7996188))

(declare-fun m!7996190 () Bool)

(assert (=> b!7330306 m!7996190))

(assert (=> b!7330306 m!7996188))

(declare-fun m!7996192 () Bool)

(assert (=> b!7330306 m!7996192))

(declare-fun m!7996194 () Bool)

(assert (=> b!7330306 m!7996194))

(declare-fun m!7996196 () Bool)

(assert (=> b!7330306 m!7996196))

(declare-fun m!7996198 () Bool)

(assert (=> b!7330306 m!7996198))

(declare-fun m!7996200 () Bool)

(assert (=> b!7330306 m!7996200))

(declare-fun m!7996202 () Bool)

(assert (=> b!7330306 m!7996202))

(declare-fun m!7996204 () Bool)

(assert (=> b!7330310 m!7996204))

(declare-fun m!7996206 () Bool)

(assert (=> b!7330310 m!7996206))

(declare-fun m!7996208 () Bool)

(assert (=> b!7330309 m!7996208))

(declare-fun m!7996210 () Bool)

(assert (=> b!7330307 m!7996210))

(declare-fun m!7996212 () Bool)

(assert (=> b!7330307 m!7996212))

(declare-fun m!7996214 () Bool)

(assert (=> b!7330307 m!7996214))

(declare-fun m!7996216 () Bool)

(assert (=> b!7330305 m!7996216))

(declare-fun m!7996218 () Bool)

(assert (=> b!7330305 m!7996218))

(declare-fun m!7996220 () Bool)

(assert (=> b!7330305 m!7996220))

(push 1)

(assert (not b!7330309))

(assert (not b!7330305))

(assert (not b!7330310))

(assert (not start!715798))

(assert (not b!7330311))

(assert (not b!7330306))

(assert (not b!7330304))

(assert (not b!7330308))

(assert (not b!7330307))

(assert tp_is_empty!48321)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7330346 () Bool)

(declare-fun e!4389377 () (Set Context!15956))

(declare-fun call!667618 () (Set Context!15956))

(assert (=> b!7330346 (= e!4389377 call!667618)))

(declare-fun b!7330347 () Bool)

(assert (=> b!7330347 (= e!4389377 (as set.empty (Set Context!15956)))))

(declare-fun bm!667613 () Bool)

(assert (=> bm!667613 (= call!667618 (derivationStepZipperDown!2865 (h!77858 (exprs!8478 lt!2607526)) (Context!15957 (t!385921 (exprs!8478 lt!2607526))) c!10305))))

(declare-fun b!7330348 () Bool)

(declare-fun e!4389375 () (Set Context!15956))

(assert (=> b!7330348 (= e!4389375 e!4389377)))

(declare-fun c!1360980 () Bool)

(assert (=> b!7330348 (= c!1360980 (is-Cons!71410 (exprs!8478 lt!2607526)))))

(declare-fun b!7330349 () Bool)

(declare-fun e!4389376 () Bool)

(assert (=> b!7330349 (= e!4389376 (nullable!8139 (h!77858 (exprs!8478 lt!2607526))))))

(declare-fun b!7330350 () Bool)

(assert (=> b!7330350 (= e!4389375 (set.union call!667618 (derivationStepZipperUp!2718 (Context!15957 (t!385921 (exprs!8478 lt!2607526))) c!10305)))))

(declare-fun d!2276332 () Bool)

(declare-fun c!1360981 () Bool)

(assert (=> d!2276332 (= c!1360981 e!4389376)))

(declare-fun res!2962517 () Bool)

(assert (=> d!2276332 (=> (not res!2962517) (not e!4389376))))

(assert (=> d!2276332 (= res!2962517 (is-Cons!71410 (exprs!8478 lt!2607526)))))

(assert (=> d!2276332 (= (derivationStepZipperUp!2718 lt!2607526 c!10305) e!4389375)))

(assert (= (and d!2276332 res!2962517) b!7330349))

(assert (= (and d!2276332 c!1360981) b!7330350))

(assert (= (and d!2276332 (not c!1360981)) b!7330348))

(assert (= (and b!7330348 c!1360980) b!7330346))

(assert (= (and b!7330348 (not c!1360980)) b!7330347))

(assert (= (or b!7330350 b!7330346) bm!667613))

(declare-fun m!7996266 () Bool)

(assert (=> bm!667613 m!7996266))

(declare-fun m!7996268 () Bool)

(assert (=> b!7330349 m!7996268))

(declare-fun m!7996270 () Bool)

(assert (=> b!7330350 m!7996270))

(assert (=> b!7330305 d!2276332))

(declare-fun lt!2607574 () List!71534)

(declare-fun b!7330362 () Bool)

(declare-fun e!4389383 () Bool)

(assert (=> b!7330362 (= e!4389383 (or (not (= (exprs!8478 ct2!352) Nil!71410)) (= lt!2607574 (exprs!8478 ct1!256))))))

(declare-fun b!7330360 () Bool)

(declare-fun e!4389382 () List!71534)

(assert (=> b!7330360 (= e!4389382 (Cons!71410 (h!77858 (exprs!8478 ct1!256)) (++!16860 (t!385921 (exprs!8478 ct1!256)) (exprs!8478 ct2!352))))))

(declare-fun d!2276334 () Bool)

(assert (=> d!2276334 e!4389383))

(declare-fun res!2962523 () Bool)

(assert (=> d!2276334 (=> (not res!2962523) (not e!4389383))))

(declare-fun content!14970 (List!71534) (Set Regex!19038))

(assert (=> d!2276334 (= res!2962523 (= (content!14970 lt!2607574) (set.union (content!14970 (exprs!8478 ct1!256)) (content!14970 (exprs!8478 ct2!352)))))))

(assert (=> d!2276334 (= lt!2607574 e!4389382)))

(declare-fun c!1360984 () Bool)

(assert (=> d!2276334 (= c!1360984 (is-Nil!71410 (exprs!8478 ct1!256)))))

(assert (=> d!2276334 (= (++!16860 (exprs!8478 ct1!256) (exprs!8478 ct2!352)) lt!2607574)))

(declare-fun b!7330359 () Bool)

(assert (=> b!7330359 (= e!4389382 (exprs!8478 ct2!352))))

(declare-fun b!7330361 () Bool)

(declare-fun res!2962522 () Bool)

(assert (=> b!7330361 (=> (not res!2962522) (not e!4389383))))

(declare-fun size!41949 (List!71534) Int)

(assert (=> b!7330361 (= res!2962522 (= (size!41949 lt!2607574) (+ (size!41949 (exprs!8478 ct1!256)) (size!41949 (exprs!8478 ct2!352)))))))

(assert (= (and d!2276334 c!1360984) b!7330359))

(assert (= (and d!2276334 (not c!1360984)) b!7330360))

(assert (= (and d!2276334 res!2962523) b!7330361))

(assert (= (and b!7330361 res!2962522) b!7330362))

(declare-fun m!7996272 () Bool)

(assert (=> b!7330360 m!7996272))

(declare-fun m!7996274 () Bool)

(assert (=> d!2276334 m!7996274))

(declare-fun m!7996276 () Bool)

(assert (=> d!2276334 m!7996276))

(declare-fun m!7996278 () Bool)

(assert (=> d!2276334 m!7996278))

(declare-fun m!7996280 () Bool)

(assert (=> b!7330361 m!7996280))

(declare-fun m!7996282 () Bool)

(assert (=> b!7330361 m!7996282))

(declare-fun m!7996284 () Bool)

(assert (=> b!7330361 m!7996284))

(assert (=> b!7330310 d!2276334))

(declare-fun d!2276336 () Bool)

(declare-fun forall!17879 (List!71534 Int) Bool)

(assert (=> d!2276336 (forall!17879 (++!16860 (exprs!8478 ct1!256) (exprs!8478 ct2!352)) lambda!454582)))

(declare-fun lt!2607577 () Unit!165037)

(declare-fun choose!57015 (List!71534 List!71534 Int) Unit!165037)

(assert (=> d!2276336 (= lt!2607577 (choose!57015 (exprs!8478 ct1!256) (exprs!8478 ct2!352) lambda!454582))))

(assert (=> d!2276336 (forall!17879 (exprs!8478 ct1!256) lambda!454582)))

(assert (=> d!2276336 (= (lemmaConcatPreservesForall!1717 (exprs!8478 ct1!256) (exprs!8478 ct2!352) lambda!454582) lt!2607577)))

(declare-fun bs!1917266 () Bool)

(assert (= bs!1917266 d!2276336))

(assert (=> bs!1917266 m!7996204))

(assert (=> bs!1917266 m!7996204))

(declare-fun m!7996286 () Bool)

(assert (=> bs!1917266 m!7996286))

(declare-fun m!7996288 () Bool)

(assert (=> bs!1917266 m!7996288))

(declare-fun m!7996290 () Bool)

(assert (=> bs!1917266 m!7996290))

(assert (=> b!7330310 d!2276336))

(declare-fun bs!1917267 () Bool)

(declare-fun d!2276342 () Bool)

(assert (= bs!1917267 (and d!2276342 b!7330310)))

(declare-fun lambda!454594 () Int)

(assert (=> bs!1917267 (= lambda!454594 lambda!454582)))

(assert (=> d!2276342 (= (inv!90936 lt!2607525) (forall!17879 (exprs!8478 lt!2607525) lambda!454594))))

(declare-fun bs!1917268 () Bool)

(assert (= bs!1917268 d!2276342))

(declare-fun m!7996292 () Bool)

(assert (=> bs!1917268 m!7996292))

(assert (=> b!7330306 d!2276342))

(declare-fun d!2276344 () Bool)

(assert (=> d!2276344 (forall!17879 (++!16860 lt!2607533 (exprs!8478 ct2!352)) lambda!454582)))

(declare-fun lt!2607578 () Unit!165037)

(assert (=> d!2276344 (= lt!2607578 (choose!57015 lt!2607533 (exprs!8478 ct2!352) lambda!454582))))

(assert (=> d!2276344 (forall!17879 lt!2607533 lambda!454582)))

(assert (=> d!2276344 (= (lemmaConcatPreservesForall!1717 lt!2607533 (exprs!8478 ct2!352) lambda!454582) lt!2607578)))

(declare-fun bs!1917269 () Bool)

(assert (= bs!1917269 d!2276344))

(assert (=> bs!1917269 m!7996202))

(assert (=> bs!1917269 m!7996202))

(declare-fun m!7996294 () Bool)

(assert (=> bs!1917269 m!7996294))

(declare-fun m!7996296 () Bool)

(assert (=> bs!1917269 m!7996296))

(declare-fun m!7996298 () Bool)

(assert (=> bs!1917269 m!7996298))

(assert (=> b!7330306 d!2276344))

(declare-fun bs!1917270 () Bool)

(declare-fun d!2276346 () Bool)

(assert (= bs!1917270 (and d!2276346 b!7330310)))

(declare-fun lambda!454599 () Int)

(assert (=> bs!1917270 (= lambda!454599 lambda!454582)))

(declare-fun bs!1917271 () Bool)

(assert (= bs!1917271 (and d!2276346 d!2276342)))

(assert (=> bs!1917271 (= lambda!454599 lambda!454594)))

(assert (=> d!2276346 (set.member (Context!15957 (++!16860 (exprs!8478 cWitness!35) (exprs!8478 ct2!352))) (derivationStepZipperUp!2718 (Context!15957 (++!16860 (exprs!8478 lt!2607526) (exprs!8478 ct2!352))) c!10305))))

(declare-fun lt!2607587 () Unit!165037)

(assert (=> d!2276346 (= lt!2607587 (lemmaConcatPreservesForall!1717 (exprs!8478 lt!2607526) (exprs!8478 ct2!352) lambda!454599))))

(declare-fun lt!2607586 () Unit!165037)

(assert (=> d!2276346 (= lt!2607586 (lemmaConcatPreservesForall!1717 (exprs!8478 cWitness!35) (exprs!8478 ct2!352) lambda!454599))))

(declare-fun lt!2607585 () Unit!165037)

(declare-fun choose!57016 (Context!15956 Context!15956 Context!15956 C!38350) Unit!165037)

(assert (=> d!2276346 (= lt!2607585 (choose!57016 lt!2607526 ct2!352 cWitness!35 c!10305))))

(assert (=> d!2276346 (set.member cWitness!35 (derivationStepZipperUp!2718 lt!2607526 c!10305))))

(assert (=> d!2276346 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!53 lt!2607526 ct2!352 cWitness!35 c!10305) lt!2607585)))

(declare-fun bs!1917272 () Bool)

(assert (= bs!1917272 d!2276346))

(declare-fun m!7996306 () Bool)

(assert (=> bs!1917272 m!7996306))

(declare-fun m!7996308 () Bool)

(assert (=> bs!1917272 m!7996308))

(assert (=> bs!1917272 m!7996192))

(declare-fun m!7996310 () Bool)

(assert (=> bs!1917272 m!7996310))

(declare-fun m!7996312 () Bool)

(assert (=> bs!1917272 m!7996312))

(assert (=> bs!1917272 m!7996220))

(declare-fun m!7996314 () Bool)

(assert (=> bs!1917272 m!7996314))

(declare-fun m!7996316 () Bool)

(assert (=> bs!1917272 m!7996316))

(declare-fun m!7996318 () Bool)

(assert (=> bs!1917272 m!7996318))

(assert (=> b!7330306 d!2276346))

(declare-fun b!7330378 () Bool)

(declare-fun e!4389395 () (Set Context!15956))

(declare-fun call!667622 () (Set Context!15956))

(assert (=> b!7330378 (= e!4389395 call!667622)))

(declare-fun b!7330379 () Bool)

(assert (=> b!7330379 (= e!4389395 (as set.empty (Set Context!15956)))))

(declare-fun bm!667617 () Bool)

(assert (=> bm!667617 (= call!667622 (derivationStepZipperDown!2865 (h!77858 (exprs!8478 (Context!15957 (++!16860 lt!2607533 (exprs!8478 ct2!352))))) (Context!15957 (t!385921 (exprs!8478 (Context!15957 (++!16860 lt!2607533 (exprs!8478 ct2!352)))))) c!10305))))

(declare-fun b!7330380 () Bool)

(declare-fun e!4389393 () (Set Context!15956))

(assert (=> b!7330380 (= e!4389393 e!4389395)))

(declare-fun c!1360992 () Bool)

(assert (=> b!7330380 (= c!1360992 (is-Cons!71410 (exprs!8478 (Context!15957 (++!16860 lt!2607533 (exprs!8478 ct2!352))))))))

(declare-fun b!7330381 () Bool)

(declare-fun e!4389394 () Bool)

(assert (=> b!7330381 (= e!4389394 (nullable!8139 (h!77858 (exprs!8478 (Context!15957 (++!16860 lt!2607533 (exprs!8478 ct2!352)))))))))

(declare-fun b!7330382 () Bool)

(assert (=> b!7330382 (= e!4389393 (set.union call!667622 (derivationStepZipperUp!2718 (Context!15957 (t!385921 (exprs!8478 (Context!15957 (++!16860 lt!2607533 (exprs!8478 ct2!352)))))) c!10305)))))

(declare-fun d!2276350 () Bool)

(declare-fun c!1360993 () Bool)

(assert (=> d!2276350 (= c!1360993 e!4389394)))

(declare-fun res!2962527 () Bool)

(assert (=> d!2276350 (=> (not res!2962527) (not e!4389394))))

(assert (=> d!2276350 (= res!2962527 (is-Cons!71410 (exprs!8478 (Context!15957 (++!16860 lt!2607533 (exprs!8478 ct2!352))))))))

(assert (=> d!2276350 (= (derivationStepZipperUp!2718 (Context!15957 (++!16860 lt!2607533 (exprs!8478 ct2!352))) c!10305) e!4389393)))

(assert (= (and d!2276350 res!2962527) b!7330381))

(assert (= (and d!2276350 c!1360993) b!7330382))

(assert (= (and d!2276350 (not c!1360993)) b!7330380))

(assert (= (and b!7330380 c!1360992) b!7330378))

(assert (= (and b!7330380 (not c!1360992)) b!7330379))

(assert (= (or b!7330382 b!7330378) bm!667617))

(declare-fun m!7996322 () Bool)

(assert (=> bm!667617 m!7996322))

(declare-fun m!7996324 () Bool)

(assert (=> b!7330381 m!7996324))

(declare-fun m!7996326 () Bool)

(assert (=> b!7330382 m!7996326))

(assert (=> b!7330306 d!2276350))

(declare-fun e!4389397 () Bool)

(declare-fun lt!2607588 () List!71534)

(declare-fun b!7330386 () Bool)

(assert (=> b!7330386 (= e!4389397 (or (not (= (exprs!8478 ct2!352) Nil!71410)) (= lt!2607588 (exprs!8478 cWitness!35))))))

(declare-fun b!7330384 () Bool)

(declare-fun e!4389396 () List!71534)

(assert (=> b!7330384 (= e!4389396 (Cons!71410 (h!77858 (exprs!8478 cWitness!35)) (++!16860 (t!385921 (exprs!8478 cWitness!35)) (exprs!8478 ct2!352))))))

(declare-fun d!2276354 () Bool)

(assert (=> d!2276354 e!4389397))

(declare-fun res!2962529 () Bool)

(assert (=> d!2276354 (=> (not res!2962529) (not e!4389397))))

(assert (=> d!2276354 (= res!2962529 (= (content!14970 lt!2607588) (set.union (content!14970 (exprs!8478 cWitness!35)) (content!14970 (exprs!8478 ct2!352)))))))

(assert (=> d!2276354 (= lt!2607588 e!4389396)))

(declare-fun c!1360994 () Bool)

(assert (=> d!2276354 (= c!1360994 (is-Nil!71410 (exprs!8478 cWitness!35)))))

(assert (=> d!2276354 (= (++!16860 (exprs!8478 cWitness!35) (exprs!8478 ct2!352)) lt!2607588)))

(declare-fun b!7330383 () Bool)

(assert (=> b!7330383 (= e!4389396 (exprs!8478 ct2!352))))

(declare-fun b!7330385 () Bool)

(declare-fun res!2962528 () Bool)

(assert (=> b!7330385 (=> (not res!2962528) (not e!4389397))))

(assert (=> b!7330385 (= res!2962528 (= (size!41949 lt!2607588) (+ (size!41949 (exprs!8478 cWitness!35)) (size!41949 (exprs!8478 ct2!352)))))))

(assert (= (and d!2276354 c!1360994) b!7330383))

(assert (= (and d!2276354 (not c!1360994)) b!7330384))

(assert (= (and d!2276354 res!2962529) b!7330385))

(assert (= (and b!7330385 res!2962528) b!7330386))

(declare-fun m!7996328 () Bool)

(assert (=> b!7330384 m!7996328))

(declare-fun m!7996330 () Bool)

(assert (=> d!2276354 m!7996330))

(declare-fun m!7996332 () Bool)

(assert (=> d!2276354 m!7996332))

(assert (=> d!2276354 m!7996278))

(declare-fun m!7996334 () Bool)

(assert (=> b!7330385 m!7996334))

(declare-fun m!7996336 () Bool)

(assert (=> b!7330385 m!7996336))

(assert (=> b!7330385 m!7996284))

(assert (=> b!7330306 d!2276354))

(declare-fun d!2276356 () Bool)

(assert (=> d!2276356 (forall!17879 (++!16860 (exprs!8478 cWitness!35) (exprs!8478 ct2!352)) lambda!454582)))

(declare-fun lt!2607589 () Unit!165037)

(assert (=> d!2276356 (= lt!2607589 (choose!57015 (exprs!8478 cWitness!35) (exprs!8478 ct2!352) lambda!454582))))

(assert (=> d!2276356 (forall!17879 (exprs!8478 cWitness!35) lambda!454582)))

(assert (=> d!2276356 (= (lemmaConcatPreservesForall!1717 (exprs!8478 cWitness!35) (exprs!8478 ct2!352) lambda!454582) lt!2607589)))

(declare-fun bs!1917274 () Bool)

(assert (= bs!1917274 d!2276356))

(assert (=> bs!1917274 m!7996192))

(assert (=> bs!1917274 m!7996192))

(declare-fun m!7996338 () Bool)

(assert (=> bs!1917274 m!7996338))

(declare-fun m!7996340 () Bool)

(assert (=> bs!1917274 m!7996340))

(declare-fun m!7996342 () Bool)

(assert (=> bs!1917274 m!7996342))

(assert (=> b!7330306 d!2276356))

(declare-fun b!7330390 () Bool)

(declare-fun e!4389399 () Bool)

(declare-fun lt!2607590 () List!71534)

(assert (=> b!7330390 (= e!4389399 (or (not (= (exprs!8478 ct2!352) Nil!71410)) (= lt!2607590 lt!2607533)))))

(declare-fun b!7330388 () Bool)

(declare-fun e!4389398 () List!71534)

(assert (=> b!7330388 (= e!4389398 (Cons!71410 (h!77858 lt!2607533) (++!16860 (t!385921 lt!2607533) (exprs!8478 ct2!352))))))

(declare-fun d!2276358 () Bool)

(assert (=> d!2276358 e!4389399))

(declare-fun res!2962531 () Bool)

(assert (=> d!2276358 (=> (not res!2962531) (not e!4389399))))

(assert (=> d!2276358 (= res!2962531 (= (content!14970 lt!2607590) (set.union (content!14970 lt!2607533) (content!14970 (exprs!8478 ct2!352)))))))

(assert (=> d!2276358 (= lt!2607590 e!4389398)))

(declare-fun c!1360995 () Bool)

(assert (=> d!2276358 (= c!1360995 (is-Nil!71410 lt!2607533))))

(assert (=> d!2276358 (= (++!16860 lt!2607533 (exprs!8478 ct2!352)) lt!2607590)))

(declare-fun b!7330387 () Bool)

(assert (=> b!7330387 (= e!4389398 (exprs!8478 ct2!352))))

(declare-fun b!7330389 () Bool)

(declare-fun res!2962530 () Bool)

(assert (=> b!7330389 (=> (not res!2962530) (not e!4389399))))

(assert (=> b!7330389 (= res!2962530 (= (size!41949 lt!2607590) (+ (size!41949 lt!2607533) (size!41949 (exprs!8478 ct2!352)))))))

(assert (= (and d!2276358 c!1360995) b!7330387))

(assert (= (and d!2276358 (not c!1360995)) b!7330388))

(assert (= (and d!2276358 res!2962531) b!7330389))

(assert (= (and b!7330389 res!2962530) b!7330390))

(declare-fun m!7996344 () Bool)

(assert (=> b!7330388 m!7996344))

(declare-fun m!7996346 () Bool)

(assert (=> d!2276358 m!7996346))

(declare-fun m!7996348 () Bool)

(assert (=> d!2276358 m!7996348))

(assert (=> d!2276358 m!7996278))

(declare-fun m!7996350 () Bool)

(assert (=> b!7330389 m!7996350))

(declare-fun m!7996352 () Bool)

(assert (=> b!7330389 m!7996352))

(assert (=> b!7330389 m!7996284))

(assert (=> b!7330306 d!2276358))

(declare-fun d!2276360 () Bool)

(declare-fun nullableFct!3236 (Regex!19038) Bool)

(assert (=> d!2276360 (= (nullable!8139 (h!77858 (exprs!8478 ct1!256))) (nullableFct!3236 (h!77858 (exprs!8478 ct1!256))))))

(declare-fun bs!1917275 () Bool)

(assert (= bs!1917275 d!2276360))

(declare-fun m!7996354 () Bool)

(assert (=> bs!1917275 m!7996354))

(assert (=> b!7330307 d!2276360))

(declare-fun b!7330435 () Bool)

(declare-fun e!4389424 () (Set Context!15956))

(declare-fun call!667650 () (Set Context!15956))

(declare-fun call!667649 () (Set Context!15956))

(assert (=> b!7330435 (= e!4389424 (set.union call!667650 call!667649))))

(declare-fun b!7330436 () Bool)

(declare-fun e!4389428 () (Set Context!15956))

(assert (=> b!7330436 (= e!4389428 (as set.empty (Set Context!15956)))))

(declare-fun bm!667640 () Bool)

(declare-fun call!667646 () List!71534)

(declare-fun call!667648 () List!71534)

(assert (=> bm!667640 (= call!667646 call!667648)))

(declare-fun b!7330438 () Bool)

(declare-fun e!4389426 () (Set Context!15956))

(assert (=> b!7330438 (= e!4389426 e!4389424)))

(declare-fun c!1361017 () Bool)

(assert (=> b!7330438 (= c!1361017 (is-Union!19038 (h!77858 (exprs!8478 ct1!256))))))

(declare-fun c!1361019 () Bool)

(declare-fun c!1361018 () Bool)

(declare-fun bm!667641 () Bool)

(declare-fun $colon$colon!3053 (List!71534 Regex!19038) List!71534)

(assert (=> bm!667641 (= call!667648 ($colon$colon!3053 (exprs!8478 lt!2607526) (ite (or c!1361019 c!1361018) (regTwo!38588 (h!77858 (exprs!8478 ct1!256))) (h!77858 (exprs!8478 ct1!256)))))))

(declare-fun b!7330439 () Bool)

(assert (=> b!7330439 (= e!4389426 (set.insert lt!2607526 (as set.empty (Set Context!15956))))))

(declare-fun b!7330440 () Bool)

(declare-fun e!4389427 () (Set Context!15956))

(declare-fun e!4389429 () (Set Context!15956))

(assert (=> b!7330440 (= e!4389427 e!4389429)))

(assert (=> b!7330440 (= c!1361018 (is-Concat!27883 (h!77858 (exprs!8478 ct1!256))))))

(declare-fun bm!667642 () Bool)

(declare-fun call!667647 () (Set Context!15956))

(assert (=> bm!667642 (= call!667647 call!667649)))

(declare-fun bm!667643 () Bool)

(declare-fun call!667645 () (Set Context!15956))

(assert (=> bm!667643 (= call!667645 call!667647)))

(declare-fun bm!667644 () Bool)

(assert (=> bm!667644 (= call!667650 (derivationStepZipperDown!2865 (ite c!1361017 (regOne!38589 (h!77858 (exprs!8478 ct1!256))) (regOne!38588 (h!77858 (exprs!8478 ct1!256)))) (ite c!1361017 lt!2607526 (Context!15957 call!667648)) c!10305))))

(declare-fun b!7330441 () Bool)

(assert (=> b!7330441 (= e!4389427 (set.union call!667650 call!667647))))

(declare-fun b!7330442 () Bool)

(assert (=> b!7330442 (= e!4389428 call!667645)))

(declare-fun b!7330443 () Bool)

(declare-fun c!1361020 () Bool)

(assert (=> b!7330443 (= c!1361020 (is-Star!19038 (h!77858 (exprs!8478 ct1!256))))))

(assert (=> b!7330443 (= e!4389429 e!4389428)))

(declare-fun bm!667645 () Bool)

(assert (=> bm!667645 (= call!667649 (derivationStepZipperDown!2865 (ite c!1361017 (regTwo!38589 (h!77858 (exprs!8478 ct1!256))) (ite c!1361019 (regTwo!38588 (h!77858 (exprs!8478 ct1!256))) (ite c!1361018 (regOne!38588 (h!77858 (exprs!8478 ct1!256))) (reg!19367 (h!77858 (exprs!8478 ct1!256)))))) (ite (or c!1361017 c!1361019) lt!2607526 (Context!15957 call!667646)) c!10305))))

(declare-fun d!2276362 () Bool)

(declare-fun c!1361016 () Bool)

(assert (=> d!2276362 (= c!1361016 (and (is-ElementMatch!19038 (h!77858 (exprs!8478 ct1!256))) (= (c!1360974 (h!77858 (exprs!8478 ct1!256))) c!10305)))))

(assert (=> d!2276362 (= (derivationStepZipperDown!2865 (h!77858 (exprs!8478 ct1!256)) lt!2607526 c!10305) e!4389426)))

(declare-fun b!7330437 () Bool)

(assert (=> b!7330437 (= e!4389429 call!667645)))

(declare-fun b!7330444 () Bool)

(declare-fun e!4389425 () Bool)

(assert (=> b!7330444 (= e!4389425 (nullable!8139 (regOne!38588 (h!77858 (exprs!8478 ct1!256)))))))

(declare-fun b!7330445 () Bool)

(assert (=> b!7330445 (= c!1361019 e!4389425)))

(declare-fun res!2962536 () Bool)

(assert (=> b!7330445 (=> (not res!2962536) (not e!4389425))))

(assert (=> b!7330445 (= res!2962536 (is-Concat!27883 (h!77858 (exprs!8478 ct1!256))))))

(assert (=> b!7330445 (= e!4389424 e!4389427)))

(assert (= (and d!2276362 c!1361016) b!7330439))

(assert (= (and d!2276362 (not c!1361016)) b!7330438))

(assert (= (and b!7330438 c!1361017) b!7330435))

(assert (= (and b!7330438 (not c!1361017)) b!7330445))

(assert (= (and b!7330445 res!2962536) b!7330444))

(assert (= (and b!7330445 c!1361019) b!7330441))

(assert (= (and b!7330445 (not c!1361019)) b!7330440))

(assert (= (and b!7330440 c!1361018) b!7330437))

(assert (= (and b!7330440 (not c!1361018)) b!7330443))

(assert (= (and b!7330443 c!1361020) b!7330442))

(assert (= (and b!7330443 (not c!1361020)) b!7330436))

(assert (= (or b!7330437 b!7330442) bm!667640))

(assert (= (or b!7330437 b!7330442) bm!667643))

(assert (= (or b!7330441 bm!667643) bm!667642))

(assert (= (or b!7330441 bm!667640) bm!667641))

(assert (= (or b!7330435 bm!667642) bm!667645))

(assert (= (or b!7330435 b!7330441) bm!667644))

(declare-fun m!7996356 () Bool)

(assert (=> bm!667645 m!7996356))

(declare-fun m!7996358 () Bool)

(assert (=> b!7330439 m!7996358))

(declare-fun m!7996360 () Bool)

(assert (=> bm!667641 m!7996360))

(declare-fun m!7996362 () Bool)

(assert (=> b!7330444 m!7996362))

(declare-fun m!7996364 () Bool)

(assert (=> bm!667644 m!7996364))

(assert (=> b!7330307 d!2276362))

(declare-fun d!2276364 () Bool)

(assert (=> d!2276364 (= (tail!14719 (exprs!8478 ct1!256)) (t!385921 (exprs!8478 ct1!256)))))

(assert (=> b!7330307 d!2276364))

(declare-fun b!7330446 () Bool)

(declare-fun e!4389432 () (Set Context!15956))

(declare-fun call!667653 () (Set Context!15956))

(assert (=> b!7330446 (= e!4389432 call!667653)))

(declare-fun b!7330447 () Bool)

(assert (=> b!7330447 (= e!4389432 (as set.empty (Set Context!15956)))))

(declare-fun bm!667648 () Bool)

(assert (=> bm!667648 (= call!667653 (derivationStepZipperDown!2865 (h!77858 (exprs!8478 ct1!256)) (Context!15957 (t!385921 (exprs!8478 ct1!256))) c!10305))))

(declare-fun b!7330448 () Bool)

(declare-fun e!4389430 () (Set Context!15956))

(assert (=> b!7330448 (= e!4389430 e!4389432)))

(declare-fun c!1361021 () Bool)

(assert (=> b!7330448 (= c!1361021 (is-Cons!71410 (exprs!8478 ct1!256)))))

(declare-fun b!7330449 () Bool)

(declare-fun e!4389431 () Bool)

(assert (=> b!7330449 (= e!4389431 (nullable!8139 (h!77858 (exprs!8478 ct1!256))))))

(declare-fun b!7330450 () Bool)

(assert (=> b!7330450 (= e!4389430 (set.union call!667653 (derivationStepZipperUp!2718 (Context!15957 (t!385921 (exprs!8478 ct1!256))) c!10305)))))

(declare-fun d!2276366 () Bool)

(declare-fun c!1361022 () Bool)

(assert (=> d!2276366 (= c!1361022 e!4389431)))

(declare-fun res!2962537 () Bool)

(assert (=> d!2276366 (=> (not res!2962537) (not e!4389431))))

(assert (=> d!2276366 (= res!2962537 (is-Cons!71410 (exprs!8478 ct1!256)))))

(assert (=> d!2276366 (= (derivationStepZipperUp!2718 ct1!256 c!10305) e!4389430)))

(assert (= (and d!2276366 res!2962537) b!7330449))

(assert (= (and d!2276366 c!1361022) b!7330450))

(assert (= (and d!2276366 (not c!1361022)) b!7330448))

(assert (= (and b!7330448 c!1361021) b!7330446))

(assert (= (and b!7330448 (not c!1361021)) b!7330447))

(assert (= (or b!7330450 b!7330446) bm!667648))

(declare-fun m!7996366 () Bool)

(assert (=> bm!667648 m!7996366))

(assert (=> b!7330449 m!7996210))

(declare-fun m!7996368 () Bool)

(assert (=> b!7330450 m!7996368))

(assert (=> start!715798 d!2276366))

(declare-fun bs!1917276 () Bool)

(declare-fun d!2276368 () Bool)

(assert (= bs!1917276 (and d!2276368 b!7330310)))

(declare-fun lambda!454600 () Int)

(assert (=> bs!1917276 (= lambda!454600 lambda!454582)))

(declare-fun bs!1917277 () Bool)

(assert (= bs!1917277 (and d!2276368 d!2276342)))

(assert (=> bs!1917277 (= lambda!454600 lambda!454594)))

(declare-fun bs!1917278 () Bool)

(assert (= bs!1917278 (and d!2276368 d!2276346)))

(assert (=> bs!1917278 (= lambda!454600 lambda!454599)))

(assert (=> d!2276368 (= (inv!90936 cWitness!35) (forall!17879 (exprs!8478 cWitness!35) lambda!454600))))

(declare-fun bs!1917279 () Bool)

(assert (= bs!1917279 d!2276368))

(declare-fun m!7996370 () Bool)

(assert (=> bs!1917279 m!7996370))

(assert (=> start!715798 d!2276368))

(declare-fun bs!1917280 () Bool)

(declare-fun d!2276370 () Bool)

(assert (= bs!1917280 (and d!2276370 b!7330310)))

(declare-fun lambda!454601 () Int)

(assert (=> bs!1917280 (= lambda!454601 lambda!454582)))

(declare-fun bs!1917281 () Bool)

(assert (= bs!1917281 (and d!2276370 d!2276342)))

(assert (=> bs!1917281 (= lambda!454601 lambda!454594)))

(declare-fun bs!1917282 () Bool)

(assert (= bs!1917282 (and d!2276370 d!2276346)))

(assert (=> bs!1917282 (= lambda!454601 lambda!454599)))

(declare-fun bs!1917283 () Bool)

(assert (= bs!1917283 (and d!2276370 d!2276368)))

(assert (=> bs!1917283 (= lambda!454601 lambda!454600)))

(assert (=> d!2276370 (= (inv!90936 ct1!256) (forall!17879 (exprs!8478 ct1!256) lambda!454601))))

(declare-fun bs!1917284 () Bool)

(assert (= bs!1917284 d!2276370))

(declare-fun m!7996372 () Bool)

(assert (=> bs!1917284 m!7996372))

(assert (=> start!715798 d!2276370))

(declare-fun bs!1917285 () Bool)

(declare-fun d!2276372 () Bool)

(assert (= bs!1917285 (and d!2276372 d!2276370)))

(declare-fun lambda!454602 () Int)

(assert (=> bs!1917285 (= lambda!454602 lambda!454601)))

(declare-fun bs!1917286 () Bool)

(assert (= bs!1917286 (and d!2276372 d!2276346)))

(assert (=> bs!1917286 (= lambda!454602 lambda!454599)))

(declare-fun bs!1917287 () Bool)

(assert (= bs!1917287 (and d!2276372 d!2276368)))

(assert (=> bs!1917287 (= lambda!454602 lambda!454600)))

(declare-fun bs!1917288 () Bool)

(assert (= bs!1917288 (and d!2276372 b!7330310)))

(assert (=> bs!1917288 (= lambda!454602 lambda!454582)))

(declare-fun bs!1917289 () Bool)

(assert (= bs!1917289 (and d!2276372 d!2276342)))

(assert (=> bs!1917289 (= lambda!454602 lambda!454594)))

(assert (=> d!2276372 (= (inv!90936 ct2!352) (forall!17879 (exprs!8478 ct2!352) lambda!454602))))

(declare-fun bs!1917290 () Bool)

(assert (= bs!1917290 d!2276372))

(declare-fun m!7996374 () Bool)

(assert (=> bs!1917290 m!7996374))

(assert (=> start!715798 d!2276372))

(declare-fun d!2276374 () Bool)

(assert (=> d!2276374 (= (isEmpty!40950 (exprs!8478 ct1!256)) (is-Nil!71410 (exprs!8478 ct1!256)))))

(assert (=> b!7330309 d!2276374))

(declare-fun b!7330455 () Bool)

(declare-fun e!4389435 () Bool)

(declare-fun tp!2081370 () Bool)

(declare-fun tp!2081371 () Bool)

(assert (=> b!7330455 (= e!4389435 (and tp!2081370 tp!2081371))))

(assert (=> b!7330311 (= tp!2081354 e!4389435)))

(assert (= (and b!7330311 (is-Cons!71410 (exprs!8478 ct1!256))) b!7330455))

(declare-fun b!7330456 () Bool)

(declare-fun e!4389436 () Bool)

(declare-fun tp!2081372 () Bool)

(declare-fun tp!2081373 () Bool)

(assert (=> b!7330456 (= e!4389436 (and tp!2081372 tp!2081373))))

(assert (=> b!7330308 (= tp!2081355 e!4389436)))

(assert (= (and b!7330308 (is-Cons!71410 (exprs!8478 ct2!352))) b!7330456))

(declare-fun b!7330457 () Bool)

(declare-fun e!4389437 () Bool)

(declare-fun tp!2081374 () Bool)

(declare-fun tp!2081375 () Bool)

(assert (=> b!7330457 (= e!4389437 (and tp!2081374 tp!2081375))))

(assert (=> b!7330304 (= tp!2081356 e!4389437)))

(assert (= (and b!7330304 (is-Cons!71410 (exprs!8478 cWitness!35))) b!7330457))

(push 1)

(assert (not b!7330350))

(assert (not d!2276334))

(assert (not b!7330389))

(assert (not d!2276354))

(assert (not bm!667648))

(assert (not bm!667617))

(assert (not d!2276358))

(assert (not b!7330361))

(assert (not d!2276368))

(assert (not b!7330349))

(assert tp_is_empty!48321)

(assert (not b!7330449))

(assert (not b!7330388))

(assert (not d!2276336))

(assert (not d!2276344))

(assert (not d!2276342))

(assert (not b!7330382))

(assert (not b!7330456))

(assert (not b!7330444))

(assert (not d!2276346))

(assert (not bm!667644))

(assert (not d!2276372))

(assert (not bm!667613))

(assert (not b!7330381))

(assert (not b!7330384))

(assert (not d!2276370))

(assert (not b!7330360))

(assert (not b!7330450))

(assert (not d!2276360))

(assert (not b!7330385))

(assert (not bm!667641))

(assert (not bm!667645))

(assert (not b!7330457))

(assert (not b!7330455))

(assert (not d!2276356))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

