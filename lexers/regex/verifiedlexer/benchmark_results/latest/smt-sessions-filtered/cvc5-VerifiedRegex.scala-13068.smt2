; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!715604 () Bool)

(assert start!715604)

(declare-fun b!7329302 () Bool)

(declare-fun e!4388692 () Bool)

(declare-fun tp!2081057 () Bool)

(assert (=> b!7329302 (= e!4388692 tp!2081057)))

(declare-fun b!7329303 () Bool)

(declare-fun e!4388695 () Bool)

(declare-fun tp!2081056 () Bool)

(assert (=> b!7329303 (= e!4388695 tp!2081056)))

(declare-fun res!2962224 () Bool)

(declare-fun e!4388690 () Bool)

(assert (=> start!715604 (=> (not res!2962224) (not e!4388690))))

(declare-datatypes ((C!38322 0))(
  ( (C!38323 (val!29521 Int)) )
))
(declare-datatypes ((Regex!19024 0))(
  ( (ElementMatch!19024 (c!1360719 C!38322)) (Concat!27869 (regOne!38560 Regex!19024) (regTwo!38560 Regex!19024)) (EmptyExpr!19024) (Star!19024 (reg!19353 Regex!19024)) (EmptyLang!19024) (Union!19024 (regOne!38561 Regex!19024) (regTwo!38561 Regex!19024)) )
))
(declare-datatypes ((List!71520 0))(
  ( (Nil!71396) (Cons!71396 (h!77844 Regex!19024) (t!385907 List!71520)) )
))
(declare-datatypes ((Context!15928 0))(
  ( (Context!15929 (exprs!8464 List!71520)) )
))
(declare-fun cWitness!35 () Context!15928)

(declare-fun lt!2607259 () (Set Context!15928))

(assert (=> start!715604 (= res!2962224 (set.member cWitness!35 lt!2607259))))

(declare-fun ct1!256 () Context!15928)

(declare-fun c!10305 () C!38322)

(declare-fun derivationStepZipperUp!2704 (Context!15928 C!38322) (Set Context!15928))

(assert (=> start!715604 (= lt!2607259 (derivationStepZipperUp!2704 ct1!256 c!10305))))

(assert (=> start!715604 e!4388690))

(declare-fun tp_is_empty!48293 () Bool)

(assert (=> start!715604 tp_is_empty!48293))

(declare-fun inv!90901 (Context!15928) Bool)

(assert (=> start!715604 (and (inv!90901 cWitness!35) e!4388695)))

(declare-fun e!4388694 () Bool)

(assert (=> start!715604 (and (inv!90901 ct1!256) e!4388694)))

(declare-fun ct2!352 () Context!15928)

(assert (=> start!715604 (and (inv!90901 ct2!352) e!4388692)))

(declare-fun b!7329304 () Bool)

(declare-fun tp!2081058 () Bool)

(assert (=> b!7329304 (= e!4388694 tp!2081058)))

(declare-fun b!7329305 () Bool)

(declare-fun res!2962223 () Bool)

(declare-fun e!4388691 () Bool)

(assert (=> b!7329305 (=> (not res!2962223) (not e!4388691))))

(declare-fun isEmpty!40940 (List!71520) Bool)

(assert (=> b!7329305 (= res!2962223 (not (isEmpty!40940 (exprs!8464 ct1!256))))))

(declare-fun b!7329306 () Bool)

(declare-fun e!4388693 () Bool)

(declare-fun lt!2607260 () (Set Context!15928))

(assert (=> b!7329306 (= e!4388693 (not (= lt!2607259 lt!2607260)))))

(declare-fun b!7329307 () Bool)

(assert (=> b!7329307 (= e!4388691 e!4388693)))

(declare-fun res!2962221 () Bool)

(assert (=> b!7329307 (=> (not res!2962221) (not e!4388693))))

(declare-fun nullable!8126 (Regex!19024) Bool)

(assert (=> b!7329307 (= res!2962221 (not (nullable!8126 (h!77844 (exprs!8464 ct1!256)))))))

(declare-fun derivationStepZipperDown!2853 (Regex!19024 Context!15928 C!38322) (Set Context!15928))

(declare-fun tail!14711 (List!71520) List!71520)

(assert (=> b!7329307 (= lt!2607260 (derivationStepZipperDown!2853 (h!77844 (exprs!8464 ct1!256)) (Context!15929 (tail!14711 (exprs!8464 ct1!256))) c!10305))))

(declare-fun b!7329308 () Bool)

(assert (=> b!7329308 (= e!4388690 e!4388691)))

(declare-fun res!2962222 () Bool)

(assert (=> b!7329308 (=> (not res!2962222) (not e!4388691))))

(assert (=> b!7329308 (= res!2962222 (is-Cons!71396 (exprs!8464 ct1!256)))))

(declare-fun lt!2607261 () List!71520)

(declare-fun ++!16848 (List!71520 List!71520) List!71520)

(assert (=> b!7329308 (= lt!2607261 (++!16848 (exprs!8464 ct1!256) (exprs!8464 ct2!352)))))

(declare-datatypes ((Unit!165013 0))(
  ( (Unit!165014) )
))
(declare-fun lt!2607262 () Unit!165013)

(declare-fun lambda!454479 () Int)

(declare-fun lemmaConcatPreservesForall!1705 (List!71520 List!71520 Int) Unit!165013)

(assert (=> b!7329308 (= lt!2607262 (lemmaConcatPreservesForall!1705 (exprs!8464 ct1!256) (exprs!8464 ct2!352) lambda!454479))))

(assert (= (and start!715604 res!2962224) b!7329308))

(assert (= (and b!7329308 res!2962222) b!7329305))

(assert (= (and b!7329305 res!2962223) b!7329307))

(assert (= (and b!7329307 res!2962221) b!7329306))

(assert (= start!715604 b!7329303))

(assert (= start!715604 b!7329304))

(assert (= start!715604 b!7329302))

(declare-fun m!7995356 () Bool)

(assert (=> start!715604 m!7995356))

(declare-fun m!7995358 () Bool)

(assert (=> start!715604 m!7995358))

(declare-fun m!7995360 () Bool)

(assert (=> start!715604 m!7995360))

(declare-fun m!7995362 () Bool)

(assert (=> start!715604 m!7995362))

(declare-fun m!7995364 () Bool)

(assert (=> start!715604 m!7995364))

(declare-fun m!7995366 () Bool)

(assert (=> b!7329305 m!7995366))

(declare-fun m!7995368 () Bool)

(assert (=> b!7329307 m!7995368))

(declare-fun m!7995370 () Bool)

(assert (=> b!7329307 m!7995370))

(declare-fun m!7995372 () Bool)

(assert (=> b!7329307 m!7995372))

(declare-fun m!7995374 () Bool)

(assert (=> b!7329308 m!7995374))

(declare-fun m!7995376 () Bool)

(assert (=> b!7329308 m!7995376))

(push 1)

(assert (not start!715604))

(assert (not b!7329303))

(assert (not b!7329302))

(assert tp_is_empty!48293)

(assert (not b!7329308))

(assert (not b!7329307))

(assert (not b!7329304))

(assert (not b!7329305))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2276047 () Bool)

(declare-fun nullableFct!3232 (Regex!19024) Bool)

(assert (=> d!2276047 (= (nullable!8126 (h!77844 (exprs!8464 ct1!256))) (nullableFct!3232 (h!77844 (exprs!8464 ct1!256))))))

(declare-fun bs!1917116 () Bool)

(assert (= bs!1917116 d!2276047))

(declare-fun m!7995400 () Bool)

(assert (=> bs!1917116 m!7995400))

(assert (=> b!7329307 d!2276047))

(declare-fun b!7329352 () Bool)

(declare-fun c!1360731 () Bool)

(declare-fun e!4388727 () Bool)

(assert (=> b!7329352 (= c!1360731 e!4388727)))

(declare-fun res!2962239 () Bool)

(assert (=> b!7329352 (=> (not res!2962239) (not e!4388727))))

(assert (=> b!7329352 (= res!2962239 (is-Concat!27869 (h!77844 (exprs!8464 ct1!256))))))

(declare-fun e!4388731 () (Set Context!15928))

(declare-fun e!4388729 () (Set Context!15928))

(assert (=> b!7329352 (= e!4388731 e!4388729)))

(declare-fun b!7329354 () Bool)

(assert (=> b!7329354 (= e!4388727 (nullable!8126 (regOne!38560 (h!77844 (exprs!8464 ct1!256)))))))

(declare-fun bm!667475 () Bool)

(declare-fun call!667484 () (Set Context!15928))

(declare-fun call!667482 () (Set Context!15928))

(assert (=> bm!667475 (= call!667484 call!667482)))

(declare-fun bm!667476 () Bool)

(declare-fun call!667480 () (Set Context!15928))

(assert (=> bm!667476 (= call!667482 call!667480)))

(declare-fun b!7329355 () Bool)

(declare-fun c!1360734 () Bool)

(assert (=> b!7329355 (= c!1360734 (is-Star!19024 (h!77844 (exprs!8464 ct1!256))))))

(declare-fun e!4388728 () (Set Context!15928))

(declare-fun e!4388730 () (Set Context!15928))

(assert (=> b!7329355 (= e!4388728 e!4388730)))

(declare-fun b!7329356 () Bool)

(declare-fun call!667485 () (Set Context!15928))

(assert (=> b!7329356 (= e!4388729 (set.union call!667485 call!667482))))

(declare-fun b!7329353 () Bool)

(declare-fun e!4388726 () (Set Context!15928))

(assert (=> b!7329353 (= e!4388726 (set.insert (Context!15929 (tail!14711 (exprs!8464 ct1!256))) (as set.empty (Set Context!15928))))))

(declare-fun d!2276049 () Bool)

(declare-fun c!1360735 () Bool)

(assert (=> d!2276049 (= c!1360735 (and (is-ElementMatch!19024 (h!77844 (exprs!8464 ct1!256))) (= (c!1360719 (h!77844 (exprs!8464 ct1!256))) c!10305)))))

(assert (=> d!2276049 (= (derivationStepZipperDown!2853 (h!77844 (exprs!8464 ct1!256)) (Context!15929 (tail!14711 (exprs!8464 ct1!256))) c!10305) e!4388726)))

(declare-fun b!7329357 () Bool)

(assert (=> b!7329357 (= e!4388729 e!4388728)))

(declare-fun c!1360732 () Bool)

(assert (=> b!7329357 (= c!1360732 (is-Concat!27869 (h!77844 (exprs!8464 ct1!256))))))

(declare-fun b!7329358 () Bool)

(assert (=> b!7329358 (= e!4388726 e!4388731)))

(declare-fun c!1360733 () Bool)

(assert (=> b!7329358 (= c!1360733 (is-Union!19024 (h!77844 (exprs!8464 ct1!256))))))

(declare-fun b!7329359 () Bool)

(assert (=> b!7329359 (= e!4388730 (as set.empty (Set Context!15928)))))

(declare-fun b!7329360 () Bool)

(assert (=> b!7329360 (= e!4388728 call!667484)))

(declare-fun bm!667477 () Bool)

(declare-fun call!667481 () List!71520)

(declare-fun $colon$colon!3049 (List!71520 Regex!19024) List!71520)

(assert (=> bm!667477 (= call!667481 ($colon$colon!3049 (exprs!8464 (Context!15929 (tail!14711 (exprs!8464 ct1!256)))) (ite (or c!1360731 c!1360732) (regTwo!38560 (h!77844 (exprs!8464 ct1!256))) (h!77844 (exprs!8464 ct1!256)))))))

(declare-fun bm!667478 () Bool)

(assert (=> bm!667478 (= call!667485 (derivationStepZipperDown!2853 (ite c!1360733 (regOne!38561 (h!77844 (exprs!8464 ct1!256))) (regOne!38560 (h!77844 (exprs!8464 ct1!256)))) (ite c!1360733 (Context!15929 (tail!14711 (exprs!8464 ct1!256))) (Context!15929 call!667481)) c!10305))))

(declare-fun b!7329361 () Bool)

(assert (=> b!7329361 (= e!4388730 call!667484)))

(declare-fun call!667483 () List!71520)

(declare-fun bm!667479 () Bool)

(assert (=> bm!667479 (= call!667480 (derivationStepZipperDown!2853 (ite c!1360733 (regTwo!38561 (h!77844 (exprs!8464 ct1!256))) (ite c!1360731 (regTwo!38560 (h!77844 (exprs!8464 ct1!256))) (ite c!1360732 (regOne!38560 (h!77844 (exprs!8464 ct1!256))) (reg!19353 (h!77844 (exprs!8464 ct1!256)))))) (ite (or c!1360733 c!1360731) (Context!15929 (tail!14711 (exprs!8464 ct1!256))) (Context!15929 call!667483)) c!10305))))

(declare-fun b!7329362 () Bool)

(assert (=> b!7329362 (= e!4388731 (set.union call!667485 call!667480))))

(declare-fun bm!667480 () Bool)

(assert (=> bm!667480 (= call!667483 call!667481)))

(assert (= (and d!2276049 c!1360735) b!7329353))

(assert (= (and d!2276049 (not c!1360735)) b!7329358))

(assert (= (and b!7329358 c!1360733) b!7329362))

(assert (= (and b!7329358 (not c!1360733)) b!7329352))

(assert (= (and b!7329352 res!2962239) b!7329354))

(assert (= (and b!7329352 c!1360731) b!7329356))

(assert (= (and b!7329352 (not c!1360731)) b!7329357))

(assert (= (and b!7329357 c!1360732) b!7329360))

(assert (= (and b!7329357 (not c!1360732)) b!7329355))

(assert (= (and b!7329355 c!1360734) b!7329361))

(assert (= (and b!7329355 (not c!1360734)) b!7329359))

(assert (= (or b!7329360 b!7329361) bm!667480))

(assert (= (or b!7329360 b!7329361) bm!667475))

(assert (= (or b!7329356 bm!667475) bm!667476))

(assert (= (or b!7329356 bm!667480) bm!667477))

(assert (= (or b!7329362 bm!667476) bm!667479))

(assert (= (or b!7329362 b!7329356) bm!667478))

(declare-fun m!7995404 () Bool)

(assert (=> bm!667478 m!7995404))

(declare-fun m!7995406 () Bool)

(assert (=> b!7329353 m!7995406))

(declare-fun m!7995408 () Bool)

(assert (=> b!7329354 m!7995408))

(declare-fun m!7995410 () Bool)

(assert (=> bm!667479 m!7995410))

(declare-fun m!7995412 () Bool)

(assert (=> bm!667477 m!7995412))

(assert (=> b!7329307 d!2276049))

(declare-fun d!2276055 () Bool)

(assert (=> d!2276055 (= (tail!14711 (exprs!8464 ct1!256)) (t!385907 (exprs!8464 ct1!256)))))

(assert (=> b!7329307 d!2276055))

(declare-fun b!7329395 () Bool)

(declare-fun e!4388752 () (Set Context!15928))

(declare-fun call!667500 () (Set Context!15928))

(assert (=> b!7329395 (= e!4388752 call!667500)))

(declare-fun b!7329396 () Bool)

(assert (=> b!7329396 (= e!4388752 (as set.empty (Set Context!15928)))))

(declare-fun b!7329397 () Bool)

(declare-fun e!4388750 () (Set Context!15928))

(assert (=> b!7329397 (= e!4388750 e!4388752)))

(declare-fun c!1360750 () Bool)

(assert (=> b!7329397 (= c!1360750 (is-Cons!71396 (exprs!8464 ct1!256)))))

(declare-fun d!2276057 () Bool)

(declare-fun c!1360751 () Bool)

(declare-fun e!4388751 () Bool)

(assert (=> d!2276057 (= c!1360751 e!4388751)))

(declare-fun res!2962244 () Bool)

(assert (=> d!2276057 (=> (not res!2962244) (not e!4388751))))

(assert (=> d!2276057 (= res!2962244 (is-Cons!71396 (exprs!8464 ct1!256)))))

(assert (=> d!2276057 (= (derivationStepZipperUp!2704 ct1!256 c!10305) e!4388750)))

(declare-fun b!7329398 () Bool)

(assert (=> b!7329398 (= e!4388751 (nullable!8126 (h!77844 (exprs!8464 ct1!256))))))

(declare-fun b!7329399 () Bool)

(assert (=> b!7329399 (= e!4388750 (set.union call!667500 (derivationStepZipperUp!2704 (Context!15929 (t!385907 (exprs!8464 ct1!256))) c!10305)))))

(declare-fun bm!667495 () Bool)

(assert (=> bm!667495 (= call!667500 (derivationStepZipperDown!2853 (h!77844 (exprs!8464 ct1!256)) (Context!15929 (t!385907 (exprs!8464 ct1!256))) c!10305))))

(assert (= (and d!2276057 res!2962244) b!7329398))

(assert (= (and d!2276057 c!1360751) b!7329399))

(assert (= (and d!2276057 (not c!1360751)) b!7329397))

(assert (= (and b!7329397 c!1360750) b!7329395))

(assert (= (and b!7329397 (not c!1360750)) b!7329396))

(assert (= (or b!7329399 b!7329395) bm!667495))

(assert (=> b!7329398 m!7995368))

(declare-fun m!7995414 () Bool)

(assert (=> b!7329399 m!7995414))

(declare-fun m!7995416 () Bool)

(assert (=> bm!667495 m!7995416))

(assert (=> start!715604 d!2276057))

(declare-fun bs!1917118 () Bool)

(declare-fun d!2276059 () Bool)

(assert (= bs!1917118 (and d!2276059 b!7329308)))

(declare-fun lambda!454485 () Int)

(assert (=> bs!1917118 (= lambda!454485 lambda!454479)))

(declare-fun forall!17869 (List!71520 Int) Bool)

(assert (=> d!2276059 (= (inv!90901 cWitness!35) (forall!17869 (exprs!8464 cWitness!35) lambda!454485))))

(declare-fun bs!1917119 () Bool)

(assert (= bs!1917119 d!2276059))

(declare-fun m!7995418 () Bool)

(assert (=> bs!1917119 m!7995418))

(assert (=> start!715604 d!2276059))

(declare-fun bs!1917120 () Bool)

(declare-fun d!2276061 () Bool)

(assert (= bs!1917120 (and d!2276061 b!7329308)))

(declare-fun lambda!454486 () Int)

(assert (=> bs!1917120 (= lambda!454486 lambda!454479)))

(declare-fun bs!1917121 () Bool)

(assert (= bs!1917121 (and d!2276061 d!2276059)))

(assert (=> bs!1917121 (= lambda!454486 lambda!454485)))

(assert (=> d!2276061 (= (inv!90901 ct1!256) (forall!17869 (exprs!8464 ct1!256) lambda!454486))))

(declare-fun bs!1917122 () Bool)

(assert (= bs!1917122 d!2276061))

(declare-fun m!7995420 () Bool)

(assert (=> bs!1917122 m!7995420))

(assert (=> start!715604 d!2276061))

(declare-fun bs!1917123 () Bool)

(declare-fun d!2276063 () Bool)

(assert (= bs!1917123 (and d!2276063 b!7329308)))

(declare-fun lambda!454487 () Int)

(assert (=> bs!1917123 (= lambda!454487 lambda!454479)))

(declare-fun bs!1917124 () Bool)

(assert (= bs!1917124 (and d!2276063 d!2276059)))

(assert (=> bs!1917124 (= lambda!454487 lambda!454485)))

(declare-fun bs!1917125 () Bool)

(assert (= bs!1917125 (and d!2276063 d!2276061)))

(assert (=> bs!1917125 (= lambda!454487 lambda!454486)))

(assert (=> d!2276063 (= (inv!90901 ct2!352) (forall!17869 (exprs!8464 ct2!352) lambda!454487))))

(declare-fun bs!1917126 () Bool)

(assert (= bs!1917126 d!2276063))

(declare-fun m!7995422 () Bool)

(assert (=> bs!1917126 m!7995422))

(assert (=> start!715604 d!2276063))

(declare-fun d!2276065 () Bool)

(assert (=> d!2276065 (= (isEmpty!40940 (exprs!8464 ct1!256)) (is-Nil!71396 (exprs!8464 ct1!256)))))

(assert (=> b!7329305 d!2276065))

(declare-fun d!2276067 () Bool)

(declare-fun e!4388768 () Bool)

(assert (=> d!2276067 e!4388768))

(declare-fun res!2962254 () Bool)

(assert (=> d!2276067 (=> (not res!2962254) (not e!4388768))))

(declare-fun lt!2607279 () List!71520)

(declare-fun content!14961 (List!71520) (Set Regex!19024))

(assert (=> d!2276067 (= res!2962254 (= (content!14961 lt!2607279) (set.union (content!14961 (exprs!8464 ct1!256)) (content!14961 (exprs!8464 ct2!352)))))))

(declare-fun e!4388767 () List!71520)

(assert (=> d!2276067 (= lt!2607279 e!4388767)))

(declare-fun c!1360761 () Bool)

(assert (=> d!2276067 (= c!1360761 (is-Nil!71396 (exprs!8464 ct1!256)))))

(assert (=> d!2276067 (= (++!16848 (exprs!8464 ct1!256) (exprs!8464 ct2!352)) lt!2607279)))

(declare-fun b!7329430 () Bool)

(assert (=> b!7329430 (= e!4388768 (or (not (= (exprs!8464 ct2!352) Nil!71396)) (= lt!2607279 (exprs!8464 ct1!256))))))

(declare-fun b!7329427 () Bool)

(assert (=> b!7329427 (= e!4388767 (exprs!8464 ct2!352))))

(declare-fun b!7329428 () Bool)

(assert (=> b!7329428 (= e!4388767 (Cons!71396 (h!77844 (exprs!8464 ct1!256)) (++!16848 (t!385907 (exprs!8464 ct1!256)) (exprs!8464 ct2!352))))))

(declare-fun b!7329429 () Bool)

(declare-fun res!2962255 () Bool)

(assert (=> b!7329429 (=> (not res!2962255) (not e!4388768))))

(declare-fun size!41938 (List!71520) Int)

(assert (=> b!7329429 (= res!2962255 (= (size!41938 lt!2607279) (+ (size!41938 (exprs!8464 ct1!256)) (size!41938 (exprs!8464 ct2!352)))))))

(assert (= (and d!2276067 c!1360761) b!7329427))

(assert (= (and d!2276067 (not c!1360761)) b!7329428))

(assert (= (and d!2276067 res!2962254) b!7329429))

(assert (= (and b!7329429 res!2962255) b!7329430))

(declare-fun m!7995434 () Bool)

(assert (=> d!2276067 m!7995434))

(declare-fun m!7995436 () Bool)

(assert (=> d!2276067 m!7995436))

(declare-fun m!7995438 () Bool)

(assert (=> d!2276067 m!7995438))

(declare-fun m!7995440 () Bool)

(assert (=> b!7329428 m!7995440))

(declare-fun m!7995442 () Bool)

(assert (=> b!7329429 m!7995442))

(declare-fun m!7995444 () Bool)

(assert (=> b!7329429 m!7995444))

(declare-fun m!7995446 () Bool)

(assert (=> b!7329429 m!7995446))

(assert (=> b!7329308 d!2276067))

(declare-fun d!2276073 () Bool)

(assert (=> d!2276073 (forall!17869 (++!16848 (exprs!8464 ct1!256) (exprs!8464 ct2!352)) lambda!454479)))

(declare-fun lt!2607283 () Unit!165013)

(declare-fun choose!57007 (List!71520 List!71520 Int) Unit!165013)

(assert (=> d!2276073 (= lt!2607283 (choose!57007 (exprs!8464 ct1!256) (exprs!8464 ct2!352) lambda!454479))))

(assert (=> d!2276073 (forall!17869 (exprs!8464 ct1!256) lambda!454479)))

(assert (=> d!2276073 (= (lemmaConcatPreservesForall!1705 (exprs!8464 ct1!256) (exprs!8464 ct2!352) lambda!454479) lt!2607283)))

(declare-fun bs!1917127 () Bool)

(assert (= bs!1917127 d!2276073))

(assert (=> bs!1917127 m!7995374))

(assert (=> bs!1917127 m!7995374))

(declare-fun m!7995462 () Bool)

(assert (=> bs!1917127 m!7995462))

(declare-fun m!7995464 () Bool)

(assert (=> bs!1917127 m!7995464))

(declare-fun m!7995466 () Bool)

(assert (=> bs!1917127 m!7995466))

(assert (=> b!7329308 d!2276073))

(declare-fun b!7329439 () Bool)

(declare-fun e!4388773 () Bool)

(declare-fun tp!2081072 () Bool)

(declare-fun tp!2081073 () Bool)

(assert (=> b!7329439 (= e!4388773 (and tp!2081072 tp!2081073))))

(assert (=> b!7329304 (= tp!2081058 e!4388773)))

(assert (= (and b!7329304 (is-Cons!71396 (exprs!8464 ct1!256))) b!7329439))

(declare-fun b!7329440 () Bool)

(declare-fun e!4388774 () Bool)

(declare-fun tp!2081074 () Bool)

(declare-fun tp!2081075 () Bool)

(assert (=> b!7329440 (= e!4388774 (and tp!2081074 tp!2081075))))

(assert (=> b!7329303 (= tp!2081056 e!4388774)))

(assert (= (and b!7329303 (is-Cons!71396 (exprs!8464 cWitness!35))) b!7329440))

(declare-fun b!7329441 () Bool)

(declare-fun e!4388775 () Bool)

(declare-fun tp!2081076 () Bool)

(declare-fun tp!2081077 () Bool)

(assert (=> b!7329441 (= e!4388775 (and tp!2081076 tp!2081077))))

(assert (=> b!7329302 (= tp!2081057 e!4388775)))

(assert (= (and b!7329302 (is-Cons!71396 (exprs!8464 ct2!352))) b!7329441))

(push 1)

(assert (not d!2276061))

(assert (not d!2276059))

(assert (not bm!667479))

(assert (not b!7329441))

(assert (not b!7329398))

(assert (not d!2276067))

(assert (not d!2276073))

(assert (not b!7329439))

(assert (not b!7329354))

(assert (not b!7329440))

(assert (not b!7329429))

(assert (not b!7329399))

(assert (not d!2276047))

(assert (not bm!667495))

(assert (not d!2276063))

(assert (not bm!667478))

(assert tp_is_empty!48293)

(assert (not bm!667477))

(assert (not b!7329428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

