; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!714738 () Bool)

(assert start!714738)

(declare-fun b!7323684 () Bool)

(declare-fun e!4385133 () Bool)

(declare-datatypes ((C!38230 0))(
  ( (C!38231 (val!29475 Int)) )
))
(declare-datatypes ((Regex!18978 0))(
  ( (ElementMatch!18978 (c!1359199 C!38230)) (Concat!27823 (regOne!38468 Regex!18978) (regTwo!38468 Regex!18978)) (EmptyExpr!18978) (Star!18978 (reg!19307 Regex!18978)) (EmptyLang!18978) (Union!18978 (regOne!38469 Regex!18978) (regTwo!38469 Regex!18978)) )
))
(declare-datatypes ((List!71474 0))(
  ( (Nil!71350) (Cons!71350 (h!77798 Regex!18978) (t!385857 List!71474)) )
))
(declare-datatypes ((Context!15836 0))(
  ( (Context!15837 (exprs!8418 List!71474)) )
))
(declare-fun ct1!256 () Context!15836)

(declare-fun lambda!453789 () Int)

(declare-fun forall!17832 (List!71474 Int) Bool)

(assert (=> b!7323684 (= e!4385133 (forall!17832 (exprs!8418 ct1!256) lambda!453789))))

(declare-datatypes ((Unit!164921 0))(
  ( (Unit!164922) )
))
(declare-fun lt!2605369 () Unit!164921)

(declare-fun cWitness!35 () Context!15836)

(declare-fun ct2!352 () Context!15836)

(declare-fun lemmaConcatPreservesForall!1659 (List!71474 List!71474 Int) Unit!164921)

(assert (=> b!7323684 (= lt!2605369 (lemmaConcatPreservesForall!1659 (exprs!8418 cWitness!35) (exprs!8418 ct2!352) lambda!453789))))

(declare-fun b!7323685 () Bool)

(declare-fun res!2960275 () Bool)

(declare-fun e!4385137 () Bool)

(assert (=> b!7323685 (=> (not res!2960275) (not e!4385137))))

(declare-fun isEmpty!40896 (List!71474) Bool)

(assert (=> b!7323685 (= res!2960275 (not (isEmpty!40896 (exprs!8418 ct1!256))))))

(declare-fun b!7323686 () Bool)

(declare-fun e!4385134 () Bool)

(assert (=> b!7323686 (= e!4385137 e!4385134)))

(declare-fun res!2960280 () Bool)

(assert (=> b!7323686 (=> (not res!2960280) (not e!4385134))))

(declare-fun nullable!8082 (Regex!18978) Bool)

(assert (=> b!7323686 (= res!2960280 (nullable!8082 (h!77798 (exprs!8418 ct1!256))))))

(declare-fun lt!2605368 () (Set Context!15836))

(declare-fun c!10305 () C!38230)

(declare-fun lt!2605366 () Context!15836)

(declare-fun derivationStepZipperDown!2809 (Regex!18978 Context!15836 C!38230) (Set Context!15836))

(assert (=> b!7323686 (= lt!2605368 (derivationStepZipperDown!2809 (h!77798 (exprs!8418 ct1!256)) lt!2605366 c!10305))))

(declare-fun lt!2605362 () List!71474)

(assert (=> b!7323686 (= lt!2605366 (Context!15837 lt!2605362))))

(declare-fun tail!14667 (List!71474) List!71474)

(assert (=> b!7323686 (= lt!2605362 (tail!14667 (exprs!8418 ct1!256)))))

(declare-fun b!7323687 () Bool)

(declare-fun e!4385130 () Bool)

(assert (=> b!7323687 (= e!4385130 (not e!4385133))))

(declare-fun res!2960277 () Bool)

(assert (=> b!7323687 (=> res!2960277 e!4385133)))

(declare-fun lt!2605363 () Context!15836)

(declare-fun lt!2605361 () List!71474)

(declare-fun derivationStepZipperUp!2658 (Context!15836 C!38230) (Set Context!15836))

(assert (=> b!7323687 (= res!2960277 (not (set.member lt!2605363 (derivationStepZipperUp!2658 (Context!15837 lt!2605361) c!10305))))))

(declare-fun lt!2605365 () Unit!164921)

(assert (=> b!7323687 (= lt!2605365 (lemmaConcatPreservesForall!1659 (exprs!8418 cWitness!35) (exprs!8418 ct2!352) lambda!453789))))

(declare-fun ++!16802 (List!71474 List!71474) List!71474)

(assert (=> b!7323687 (set.member lt!2605363 (derivationStepZipperUp!2658 (Context!15837 (++!16802 lt!2605362 (exprs!8418 ct2!352))) c!10305))))

(assert (=> b!7323687 (= lt!2605363 (Context!15837 (++!16802 (exprs!8418 cWitness!35) (exprs!8418 ct2!352))))))

(declare-fun lt!2605360 () Unit!164921)

(assert (=> b!7323687 (= lt!2605360 (lemmaConcatPreservesForall!1659 lt!2605362 (exprs!8418 ct2!352) lambda!453789))))

(declare-fun lt!2605370 () Unit!164921)

(assert (=> b!7323687 (= lt!2605370 (lemmaConcatPreservesForall!1659 (exprs!8418 cWitness!35) (exprs!8418 ct2!352) lambda!453789))))

(declare-fun lt!2605359 () Unit!164921)

(declare-fun lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!49 (Context!15836 Context!15836 Context!15836 C!38230) Unit!164921)

(assert (=> b!7323687 (= lt!2605359 (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!49 lt!2605366 ct2!352 cWitness!35 c!10305))))

(declare-fun b!7323688 () Bool)

(assert (=> b!7323688 (= e!4385134 e!4385130)))

(declare-fun res!2960278 () Bool)

(assert (=> b!7323688 (=> (not res!2960278) (not e!4385130))))

(declare-fun lt!2605367 () (Set Context!15836))

(declare-fun lt!2605371 () (Set Context!15836))

(assert (=> b!7323688 (= res!2960278 (and (= lt!2605371 (set.union lt!2605368 lt!2605367)) (or (set.member cWitness!35 lt!2605368) (set.member cWitness!35 lt!2605367)) (set.member cWitness!35 lt!2605367)))))

(assert (=> b!7323688 (= lt!2605367 (derivationStepZipperUp!2658 lt!2605366 c!10305))))

(declare-fun b!7323689 () Bool)

(declare-fun e!4385131 () Bool)

(declare-fun tp!2080139 () Bool)

(assert (=> b!7323689 (= e!4385131 tp!2080139)))

(declare-fun res!2960279 () Bool)

(declare-fun e!4385136 () Bool)

(assert (=> start!714738 (=> (not res!2960279) (not e!4385136))))

(assert (=> start!714738 (= res!2960279 (set.member cWitness!35 lt!2605371))))

(assert (=> start!714738 (= lt!2605371 (derivationStepZipperUp!2658 ct1!256 c!10305))))

(assert (=> start!714738 e!4385136))

(declare-fun tp_is_empty!48201 () Bool)

(assert (=> start!714738 tp_is_empty!48201))

(declare-fun e!4385135 () Bool)

(declare-fun inv!90786 (Context!15836) Bool)

(assert (=> start!714738 (and (inv!90786 cWitness!35) e!4385135)))

(assert (=> start!714738 (and (inv!90786 ct1!256) e!4385131)))

(declare-fun e!4385132 () Bool)

(assert (=> start!714738 (and (inv!90786 ct2!352) e!4385132)))

(declare-fun b!7323690 () Bool)

(declare-fun tp!2080140 () Bool)

(assert (=> b!7323690 (= e!4385132 tp!2080140)))

(declare-fun b!7323691 () Bool)

(assert (=> b!7323691 (= e!4385136 e!4385137)))

(declare-fun res!2960276 () Bool)

(assert (=> b!7323691 (=> (not res!2960276) (not e!4385137))))

(assert (=> b!7323691 (= res!2960276 (is-Cons!71350 (exprs!8418 ct1!256)))))

(assert (=> b!7323691 (= lt!2605361 (++!16802 (exprs!8418 ct1!256) (exprs!8418 ct2!352)))))

(declare-fun lt!2605364 () Unit!164921)

(assert (=> b!7323691 (= lt!2605364 (lemmaConcatPreservesForall!1659 (exprs!8418 ct1!256) (exprs!8418 ct2!352) lambda!453789))))

(declare-fun b!7323692 () Bool)

(declare-fun tp!2080138 () Bool)

(assert (=> b!7323692 (= e!4385135 tp!2080138)))

(assert (= (and start!714738 res!2960279) b!7323691))

(assert (= (and b!7323691 res!2960276) b!7323685))

(assert (= (and b!7323685 res!2960275) b!7323686))

(assert (= (and b!7323686 res!2960280) b!7323688))

(assert (= (and b!7323688 res!2960278) b!7323687))

(assert (= (and b!7323687 (not res!2960277)) b!7323684))

(assert (= start!714738 b!7323692))

(assert (= start!714738 b!7323689))

(assert (= start!714738 b!7323690))

(declare-fun m!7989366 () Bool)

(assert (=> b!7323691 m!7989366))

(declare-fun m!7989368 () Bool)

(assert (=> b!7323691 m!7989368))

(declare-fun m!7989370 () Bool)

(assert (=> b!7323686 m!7989370))

(declare-fun m!7989372 () Bool)

(assert (=> b!7323686 m!7989372))

(declare-fun m!7989374 () Bool)

(assert (=> b!7323686 m!7989374))

(declare-fun m!7989376 () Bool)

(assert (=> b!7323687 m!7989376))

(declare-fun m!7989378 () Bool)

(assert (=> b!7323687 m!7989378))

(assert (=> b!7323687 m!7989378))

(declare-fun m!7989380 () Bool)

(assert (=> b!7323687 m!7989380))

(declare-fun m!7989382 () Bool)

(assert (=> b!7323687 m!7989382))

(declare-fun m!7989384 () Bool)

(assert (=> b!7323687 m!7989384))

(declare-fun m!7989386 () Bool)

(assert (=> b!7323687 m!7989386))

(declare-fun m!7989388 () Bool)

(assert (=> b!7323687 m!7989388))

(declare-fun m!7989390 () Bool)

(assert (=> b!7323687 m!7989390))

(declare-fun m!7989392 () Bool)

(assert (=> b!7323687 m!7989392))

(declare-fun m!7989394 () Bool)

(assert (=> start!714738 m!7989394))

(declare-fun m!7989396 () Bool)

(assert (=> start!714738 m!7989396))

(declare-fun m!7989398 () Bool)

(assert (=> start!714738 m!7989398))

(declare-fun m!7989400 () Bool)

(assert (=> start!714738 m!7989400))

(declare-fun m!7989402 () Bool)

(assert (=> start!714738 m!7989402))

(declare-fun m!7989404 () Bool)

(assert (=> b!7323684 m!7989404))

(assert (=> b!7323684 m!7989378))

(declare-fun m!7989406 () Bool)

(assert (=> b!7323685 m!7989406))

(declare-fun m!7989408 () Bool)

(assert (=> b!7323688 m!7989408))

(declare-fun m!7989410 () Bool)

(assert (=> b!7323688 m!7989410))

(declare-fun m!7989412 () Bool)

(assert (=> b!7323688 m!7989412))

(push 1)

(assert (not b!7323690))

(assert (not b!7323692))

(assert (not start!714738))

(assert (not b!7323684))

(assert (not b!7323686))

(assert (not b!7323689))

(assert tp_is_empty!48201)

(assert (not b!7323688))

(assert (not b!7323691))

(assert (not b!7323685))

(assert (not b!7323687))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!7323730 () Bool)

(declare-fun e!4385169 () (Set Context!15836))

(declare-fun call!666180 () (Set Context!15836))

(assert (=> b!7323730 (= e!4385169 call!666180)))

(declare-fun bm!666175 () Bool)

(assert (=> bm!666175 (= call!666180 (derivationStepZipperDown!2809 (h!77798 (exprs!8418 ct1!256)) (Context!15837 (t!385857 (exprs!8418 ct1!256))) c!10305))))

(declare-fun b!7323731 () Bool)

(declare-fun e!4385170 () (Set Context!15836))

(assert (=> b!7323731 (= e!4385170 (set.union call!666180 (derivationStepZipperUp!2658 (Context!15837 (t!385857 (exprs!8418 ct1!256))) c!10305)))))

(declare-fun d!2274308 () Bool)

(declare-fun c!1359206 () Bool)

(declare-fun e!4385168 () Bool)

(assert (=> d!2274308 (= c!1359206 e!4385168)))

(declare-fun res!2960301 () Bool)

(assert (=> d!2274308 (=> (not res!2960301) (not e!4385168))))

(assert (=> d!2274308 (= res!2960301 (is-Cons!71350 (exprs!8418 ct1!256)))))

(assert (=> d!2274308 (= (derivationStepZipperUp!2658 ct1!256 c!10305) e!4385170)))

(declare-fun b!7323732 () Bool)

(assert (=> b!7323732 (= e!4385170 e!4385169)))

(declare-fun c!1359205 () Bool)

(assert (=> b!7323732 (= c!1359205 (is-Cons!71350 (exprs!8418 ct1!256)))))

(declare-fun b!7323733 () Bool)

(assert (=> b!7323733 (= e!4385169 (as set.empty (Set Context!15836)))))

(declare-fun b!7323734 () Bool)

(assert (=> b!7323734 (= e!4385168 (nullable!8082 (h!77798 (exprs!8418 ct1!256))))))

(assert (= (and d!2274308 res!2960301) b!7323734))

(assert (= (and d!2274308 c!1359206) b!7323731))

(assert (= (and d!2274308 (not c!1359206)) b!7323732))

(assert (= (and b!7323732 c!1359205) b!7323730))

(assert (= (and b!7323732 (not c!1359205)) b!7323733))

(assert (= (or b!7323731 b!7323730) bm!666175))

(declare-fun m!7989462 () Bool)

(assert (=> bm!666175 m!7989462))

(declare-fun m!7989464 () Bool)

(assert (=> b!7323731 m!7989464))

(assert (=> b!7323734 m!7989370))

(assert (=> start!714738 d!2274308))

(declare-fun bs!1916380 () Bool)

(declare-fun d!2274310 () Bool)

(assert (= bs!1916380 (and d!2274310 b!7323691)))

(declare-fun lambda!453805 () Int)

(assert (=> bs!1916380 (= lambda!453805 lambda!453789)))

(assert (=> d!2274310 (= (inv!90786 cWitness!35) (forall!17832 (exprs!8418 cWitness!35) lambda!453805))))

(declare-fun bs!1916381 () Bool)

(assert (= bs!1916381 d!2274310))

(declare-fun m!7989466 () Bool)

(assert (=> bs!1916381 m!7989466))

(assert (=> start!714738 d!2274310))

(declare-fun bs!1916382 () Bool)

(declare-fun d!2274312 () Bool)

(assert (= bs!1916382 (and d!2274312 b!7323691)))

(declare-fun lambda!453806 () Int)

(assert (=> bs!1916382 (= lambda!453806 lambda!453789)))

(declare-fun bs!1916383 () Bool)

(assert (= bs!1916383 (and d!2274312 d!2274310)))

(assert (=> bs!1916383 (= lambda!453806 lambda!453805)))

(assert (=> d!2274312 (= (inv!90786 ct1!256) (forall!17832 (exprs!8418 ct1!256) lambda!453806))))

(declare-fun bs!1916384 () Bool)

(assert (= bs!1916384 d!2274312))

(declare-fun m!7989468 () Bool)

(assert (=> bs!1916384 m!7989468))

(assert (=> start!714738 d!2274312))

(declare-fun bs!1916385 () Bool)

(declare-fun d!2274314 () Bool)

(assert (= bs!1916385 (and d!2274314 b!7323691)))

(declare-fun lambda!453807 () Int)

(assert (=> bs!1916385 (= lambda!453807 lambda!453789)))

(declare-fun bs!1916386 () Bool)

(assert (= bs!1916386 (and d!2274314 d!2274310)))

(assert (=> bs!1916386 (= lambda!453807 lambda!453805)))

(declare-fun bs!1916387 () Bool)

(assert (= bs!1916387 (and d!2274314 d!2274312)))

(assert (=> bs!1916387 (= lambda!453807 lambda!453806)))

(assert (=> d!2274314 (= (inv!90786 ct2!352) (forall!17832 (exprs!8418 ct2!352) lambda!453807))))

(declare-fun bs!1916388 () Bool)

(assert (= bs!1916388 d!2274314))

(declare-fun m!7989470 () Bool)

(assert (=> bs!1916388 m!7989470))

(assert (=> start!714738 d!2274314))

(declare-fun d!2274316 () Bool)

(declare-fun res!2960310 () Bool)

(declare-fun e!4385179 () Bool)

(assert (=> d!2274316 (=> res!2960310 e!4385179)))

(assert (=> d!2274316 (= res!2960310 (is-Nil!71350 (exprs!8418 ct1!256)))))

(assert (=> d!2274316 (= (forall!17832 (exprs!8418 ct1!256) lambda!453789) e!4385179)))

(declare-fun b!7323747 () Bool)

(declare-fun e!4385180 () Bool)

(assert (=> b!7323747 (= e!4385179 e!4385180)))

(declare-fun res!2960311 () Bool)

(assert (=> b!7323747 (=> (not res!2960311) (not e!4385180))))

(declare-fun dynLambda!29393 (Int Regex!18978) Bool)

(assert (=> b!7323747 (= res!2960311 (dynLambda!29393 lambda!453789 (h!77798 (exprs!8418 ct1!256))))))

(declare-fun b!7323748 () Bool)

(assert (=> b!7323748 (= e!4385180 (forall!17832 (t!385857 (exprs!8418 ct1!256)) lambda!453789))))

(assert (= (and d!2274316 (not res!2960310)) b!7323747))

(assert (= (and b!7323747 res!2960311) b!7323748))

(declare-fun b_lambda!283243 () Bool)

(assert (=> (not b_lambda!283243) (not b!7323747)))

(declare-fun m!7989472 () Bool)

(assert (=> b!7323747 m!7989472))

(declare-fun m!7989474 () Bool)

(assert (=> b!7323748 m!7989474))

(assert (=> b!7323684 d!2274316))

(declare-fun d!2274318 () Bool)

(assert (=> d!2274318 (forall!17832 (++!16802 (exprs!8418 cWitness!35) (exprs!8418 ct2!352)) lambda!453789)))

(declare-fun lt!2605416 () Unit!164921)

(declare-fun choose!56948 (List!71474 List!71474 Int) Unit!164921)

(assert (=> d!2274318 (= lt!2605416 (choose!56948 (exprs!8418 cWitness!35) (exprs!8418 ct2!352) lambda!453789))))

(assert (=> d!2274318 (forall!17832 (exprs!8418 cWitness!35) lambda!453789)))

(assert (=> d!2274318 (= (lemmaConcatPreservesForall!1659 (exprs!8418 cWitness!35) (exprs!8418 ct2!352) lambda!453789) lt!2605416)))

(declare-fun bs!1916389 () Bool)

(assert (= bs!1916389 d!2274318))

(assert (=> bs!1916389 m!7989380))

(assert (=> bs!1916389 m!7989380))

(declare-fun m!7989476 () Bool)

(assert (=> bs!1916389 m!7989476))

(declare-fun m!7989478 () Bool)

(assert (=> bs!1916389 m!7989478))

(declare-fun m!7989480 () Bool)

(assert (=> bs!1916389 m!7989480))

(assert (=> b!7323684 d!2274318))

(declare-fun b!7323753 () Bool)

(declare-fun e!4385184 () (Set Context!15836))

(declare-fun call!666181 () (Set Context!15836))

(assert (=> b!7323753 (= e!4385184 call!666181)))

(declare-fun bm!666176 () Bool)

(assert (=> bm!666176 (= call!666181 (derivationStepZipperDown!2809 (h!77798 (exprs!8418 lt!2605366)) (Context!15837 (t!385857 (exprs!8418 lt!2605366))) c!10305))))

(declare-fun e!4385185 () (Set Context!15836))

(declare-fun b!7323754 () Bool)

(assert (=> b!7323754 (= e!4385185 (set.union call!666181 (derivationStepZipperUp!2658 (Context!15837 (t!385857 (exprs!8418 lt!2605366))) c!10305)))))

(declare-fun d!2274320 () Bool)

(declare-fun c!1359211 () Bool)

(declare-fun e!4385183 () Bool)

(assert (=> d!2274320 (= c!1359211 e!4385183)))

(declare-fun res!2960314 () Bool)

(assert (=> d!2274320 (=> (not res!2960314) (not e!4385183))))

(assert (=> d!2274320 (= res!2960314 (is-Cons!71350 (exprs!8418 lt!2605366)))))

(assert (=> d!2274320 (= (derivationStepZipperUp!2658 lt!2605366 c!10305) e!4385185)))

(declare-fun b!7323755 () Bool)

(assert (=> b!7323755 (= e!4385185 e!4385184)))

(declare-fun c!1359210 () Bool)

(assert (=> b!7323755 (= c!1359210 (is-Cons!71350 (exprs!8418 lt!2605366)))))

(declare-fun b!7323756 () Bool)

(assert (=> b!7323756 (= e!4385184 (as set.empty (Set Context!15836)))))

(declare-fun b!7323757 () Bool)

(assert (=> b!7323757 (= e!4385183 (nullable!8082 (h!77798 (exprs!8418 lt!2605366))))))

(assert (= (and d!2274320 res!2960314) b!7323757))

(assert (= (and d!2274320 c!1359211) b!7323754))

(assert (= (and d!2274320 (not c!1359211)) b!7323755))

(assert (= (and b!7323755 c!1359210) b!7323753))

(assert (= (and b!7323755 (not c!1359210)) b!7323756))

(assert (= (or b!7323754 b!7323753) bm!666176))

(declare-fun m!7989486 () Bool)

(assert (=> bm!666176 m!7989486))

(declare-fun m!7989490 () Bool)

(assert (=> b!7323754 m!7989490))

(declare-fun m!7989492 () Bool)

(assert (=> b!7323757 m!7989492))

(assert (=> b!7323688 d!2274320))

(declare-fun bs!1916391 () Bool)

(declare-fun d!2274322 () Bool)

(assert (= bs!1916391 (and d!2274322 b!7323691)))

(declare-fun lambda!453812 () Int)

(assert (=> bs!1916391 (= lambda!453812 lambda!453789)))

(declare-fun bs!1916392 () Bool)

(assert (= bs!1916392 (and d!2274322 d!2274310)))

(assert (=> bs!1916392 (= lambda!453812 lambda!453805)))

(declare-fun bs!1916393 () Bool)

(assert (= bs!1916393 (and d!2274322 d!2274312)))

(assert (=> bs!1916393 (= lambda!453812 lambda!453806)))

(declare-fun bs!1916394 () Bool)

(assert (= bs!1916394 (and d!2274322 d!2274314)))

(assert (=> bs!1916394 (= lambda!453812 lambda!453807)))

(assert (=> d!2274322 (set.member (Context!15837 (++!16802 (exprs!8418 cWitness!35) (exprs!8418 ct2!352))) (derivationStepZipperUp!2658 (Context!15837 (++!16802 (exprs!8418 lt!2605366) (exprs!8418 ct2!352))) c!10305))))

(declare-fun lt!2605428 () Unit!164921)

(assert (=> d!2274322 (= lt!2605428 (lemmaConcatPreservesForall!1659 (exprs!8418 lt!2605366) (exprs!8418 ct2!352) lambda!453812))))

(declare-fun lt!2605427 () Unit!164921)

(assert (=> d!2274322 (= lt!2605427 (lemmaConcatPreservesForall!1659 (exprs!8418 cWitness!35) (exprs!8418 ct2!352) lambda!453812))))

(declare-fun lt!2605426 () Unit!164921)

(declare-fun choose!56949 (Context!15836 Context!15836 Context!15836 C!38230) Unit!164921)

(assert (=> d!2274322 (= lt!2605426 (choose!56949 lt!2605366 ct2!352 cWitness!35 c!10305))))

(assert (=> d!2274322 (set.member cWitness!35 (derivationStepZipperUp!2658 lt!2605366 c!10305))))

(assert (=> d!2274322 (= (lemmaDerivContainsCtxtThenConcatDerivContainsConcatCtx!49 lt!2605366 ct2!352 cWitness!35 c!10305) lt!2605426)))

(declare-fun bs!1916395 () Bool)

(assert (= bs!1916395 d!2274322))

(assert (=> bs!1916395 m!7989380))

(declare-fun m!7989506 () Bool)

(assert (=> bs!1916395 m!7989506))

(declare-fun m!7989508 () Bool)

(assert (=> bs!1916395 m!7989508))

(declare-fun m!7989510 () Bool)

(assert (=> bs!1916395 m!7989510))

(declare-fun m!7989512 () Bool)

(assert (=> bs!1916395 m!7989512))

(declare-fun m!7989514 () Bool)

(assert (=> bs!1916395 m!7989514))

(declare-fun m!7989516 () Bool)

(assert (=> bs!1916395 m!7989516))

(assert (=> bs!1916395 m!7989412))

(declare-fun m!7989518 () Bool)

(assert (=> bs!1916395 m!7989518))

(assert (=> b!7323687 d!2274322))

(assert (=> b!7323687 d!2274318))

(declare-fun d!2274328 () Bool)

(declare-fun e!4385195 () Bool)

(assert (=> d!2274328 e!4385195))

(declare-fun res!2960321 () Bool)

(assert (=> d!2274328 (=> (not res!2960321) (not e!4385195))))

(declare-fun lt!2605431 () List!71474)

(declare-fun content!14925 (List!71474) (Set Regex!18978))

(assert (=> d!2274328 (= res!2960321 (= (content!14925 lt!2605431) (set.union (content!14925 lt!2605362) (content!14925 (exprs!8418 ct2!352)))))))

(declare-fun e!4385194 () List!71474)

(assert (=> d!2274328 (= lt!2605431 e!4385194)))

(declare-fun c!1359217 () Bool)

(assert (=> d!2274328 (= c!1359217 (is-Nil!71350 lt!2605362))))

(assert (=> d!2274328 (= (++!16802 lt!2605362 (exprs!8418 ct2!352)) lt!2605431)))

(declare-fun b!7323772 () Bool)

(assert (=> b!7323772 (= e!4385194 (exprs!8418 ct2!352))))

(declare-fun b!7323774 () Bool)

(declare-fun res!2960322 () Bool)

(assert (=> b!7323774 (=> (not res!2960322) (not e!4385195))))

(declare-fun size!41902 (List!71474) Int)

(assert (=> b!7323774 (= res!2960322 (= (size!41902 lt!2605431) (+ (size!41902 lt!2605362) (size!41902 (exprs!8418 ct2!352)))))))

(declare-fun b!7323773 () Bool)

(assert (=> b!7323773 (= e!4385194 (Cons!71350 (h!77798 lt!2605362) (++!16802 (t!385857 lt!2605362) (exprs!8418 ct2!352))))))

(declare-fun b!7323775 () Bool)

(assert (=> b!7323775 (= e!4385195 (or (not (= (exprs!8418 ct2!352) Nil!71350)) (= lt!2605431 lt!2605362)))))

(assert (= (and d!2274328 c!1359217) b!7323772))

(assert (= (and d!2274328 (not c!1359217)) b!7323773))

(assert (= (and d!2274328 res!2960321) b!7323774))

(assert (= (and b!7323774 res!2960322) b!7323775))

(declare-fun m!7989520 () Bool)

(assert (=> d!2274328 m!7989520))

(declare-fun m!7989522 () Bool)

(assert (=> d!2274328 m!7989522))

(declare-fun m!7989524 () Bool)

(assert (=> d!2274328 m!7989524))

(declare-fun m!7989526 () Bool)

(assert (=> b!7323774 m!7989526))

(declare-fun m!7989528 () Bool)

(assert (=> b!7323774 m!7989528))

(declare-fun m!7989530 () Bool)

(assert (=> b!7323774 m!7989530))

(declare-fun m!7989532 () Bool)

(assert (=> b!7323773 m!7989532))

(assert (=> b!7323687 d!2274328))

(declare-fun b!7323780 () Bool)

(declare-fun e!4385199 () (Set Context!15836))

(declare-fun call!666182 () (Set Context!15836))

(assert (=> b!7323780 (= e!4385199 call!666182)))

(declare-fun bm!666177 () Bool)

(assert (=> bm!666177 (= call!666182 (derivationStepZipperDown!2809 (h!77798 (exprs!8418 (Context!15837 (++!16802 lt!2605362 (exprs!8418 ct2!352))))) (Context!15837 (t!385857 (exprs!8418 (Context!15837 (++!16802 lt!2605362 (exprs!8418 ct2!352)))))) c!10305))))

(declare-fun e!4385200 () (Set Context!15836))

(declare-fun b!7323781 () Bool)

(assert (=> b!7323781 (= e!4385200 (set.union call!666182 (derivationStepZipperUp!2658 (Context!15837 (t!385857 (exprs!8418 (Context!15837 (++!16802 lt!2605362 (exprs!8418 ct2!352)))))) c!10305)))))

(declare-fun d!2274330 () Bool)

(declare-fun c!1359221 () Bool)

(declare-fun e!4385198 () Bool)

(assert (=> d!2274330 (= c!1359221 e!4385198)))

(declare-fun res!2960323 () Bool)

(assert (=> d!2274330 (=> (not res!2960323) (not e!4385198))))

(assert (=> d!2274330 (= res!2960323 (is-Cons!71350 (exprs!8418 (Context!15837 (++!16802 lt!2605362 (exprs!8418 ct2!352))))))))

(assert (=> d!2274330 (= (derivationStepZipperUp!2658 (Context!15837 (++!16802 lt!2605362 (exprs!8418 ct2!352))) c!10305) e!4385200)))

(declare-fun b!7323782 () Bool)

(assert (=> b!7323782 (= e!4385200 e!4385199)))

(declare-fun c!1359220 () Bool)

(assert (=> b!7323782 (= c!1359220 (is-Cons!71350 (exprs!8418 (Context!15837 (++!16802 lt!2605362 (exprs!8418 ct2!352))))))))

(declare-fun b!7323783 () Bool)

(assert (=> b!7323783 (= e!4385199 (as set.empty (Set Context!15836)))))

(declare-fun b!7323784 () Bool)

(assert (=> b!7323784 (= e!4385198 (nullable!8082 (h!77798 (exprs!8418 (Context!15837 (++!16802 lt!2605362 (exprs!8418 ct2!352)))))))))

(assert (= (and d!2274330 res!2960323) b!7323784))

(assert (= (and d!2274330 c!1359221) b!7323781))

(assert (= (and d!2274330 (not c!1359221)) b!7323782))

(assert (= (and b!7323782 c!1359220) b!7323780))

(assert (= (and b!7323782 (not c!1359220)) b!7323783))

(assert (= (or b!7323781 b!7323780) bm!666177))

(declare-fun m!7989534 () Bool)

(assert (=> bm!666177 m!7989534))

(declare-fun m!7989536 () Bool)

(assert (=> b!7323781 m!7989536))

(declare-fun m!7989538 () Bool)

(assert (=> b!7323784 m!7989538))

(assert (=> b!7323687 d!2274330))

(declare-fun d!2274332 () Bool)

(assert (=> d!2274332 (forall!17832 (++!16802 lt!2605362 (exprs!8418 ct2!352)) lambda!453789)))

(declare-fun lt!2605432 () Unit!164921)

(assert (=> d!2274332 (= lt!2605432 (choose!56948 lt!2605362 (exprs!8418 ct2!352) lambda!453789))))

(assert (=> d!2274332 (forall!17832 lt!2605362 lambda!453789)))

(assert (=> d!2274332 (= (lemmaConcatPreservesForall!1659 lt!2605362 (exprs!8418 ct2!352) lambda!453789) lt!2605432)))

(declare-fun bs!1916396 () Bool)

(assert (= bs!1916396 d!2274332))

(assert (=> bs!1916396 m!7989376))

(assert (=> bs!1916396 m!7989376))

(declare-fun m!7989540 () Bool)

(assert (=> bs!1916396 m!7989540))

(declare-fun m!7989542 () Bool)

(assert (=> bs!1916396 m!7989542))

(declare-fun m!7989544 () Bool)

(assert (=> bs!1916396 m!7989544))

(assert (=> b!7323687 d!2274332))

(declare-fun b!7323785 () Bool)

(declare-fun e!4385202 () (Set Context!15836))

(declare-fun call!666185 () (Set Context!15836))

(assert (=> b!7323785 (= e!4385202 call!666185)))

(declare-fun bm!666180 () Bool)

(assert (=> bm!666180 (= call!666185 (derivationStepZipperDown!2809 (h!77798 (exprs!8418 (Context!15837 lt!2605361))) (Context!15837 (t!385857 (exprs!8418 (Context!15837 lt!2605361)))) c!10305))))

(declare-fun e!4385203 () (Set Context!15836))

(declare-fun b!7323786 () Bool)

(assert (=> b!7323786 (= e!4385203 (set.union call!666185 (derivationStepZipperUp!2658 (Context!15837 (t!385857 (exprs!8418 (Context!15837 lt!2605361)))) c!10305)))))

(declare-fun d!2274334 () Bool)

(declare-fun c!1359223 () Bool)

(declare-fun e!4385201 () Bool)

(assert (=> d!2274334 (= c!1359223 e!4385201)))

(declare-fun res!2960324 () Bool)

(assert (=> d!2274334 (=> (not res!2960324) (not e!4385201))))

(assert (=> d!2274334 (= res!2960324 (is-Cons!71350 (exprs!8418 (Context!15837 lt!2605361))))))

(assert (=> d!2274334 (= (derivationStepZipperUp!2658 (Context!15837 lt!2605361) c!10305) e!4385203)))

(declare-fun b!7323787 () Bool)

(assert (=> b!7323787 (= e!4385203 e!4385202)))

(declare-fun c!1359222 () Bool)

(assert (=> b!7323787 (= c!1359222 (is-Cons!71350 (exprs!8418 (Context!15837 lt!2605361))))))

(declare-fun b!7323788 () Bool)

(assert (=> b!7323788 (= e!4385202 (as set.empty (Set Context!15836)))))

(declare-fun b!7323789 () Bool)

(assert (=> b!7323789 (= e!4385201 (nullable!8082 (h!77798 (exprs!8418 (Context!15837 lt!2605361)))))))

(assert (= (and d!2274334 res!2960324) b!7323789))

(assert (= (and d!2274334 c!1359223) b!7323786))

(assert (= (and d!2274334 (not c!1359223)) b!7323787))

(assert (= (and b!7323787 c!1359222) b!7323785))

(assert (= (and b!7323787 (not c!1359222)) b!7323788))

(assert (= (or b!7323786 b!7323785) bm!666180))

(declare-fun m!7989546 () Bool)

(assert (=> bm!666180 m!7989546))

(declare-fun m!7989548 () Bool)

(assert (=> b!7323786 m!7989548))

(declare-fun m!7989550 () Bool)

(assert (=> b!7323789 m!7989550))

(assert (=> b!7323687 d!2274334))

(declare-fun d!2274336 () Bool)

(declare-fun e!4385205 () Bool)

(assert (=> d!2274336 e!4385205))

(declare-fun res!2960325 () Bool)

(assert (=> d!2274336 (=> (not res!2960325) (not e!4385205))))

(declare-fun lt!2605433 () List!71474)

(assert (=> d!2274336 (= res!2960325 (= (content!14925 lt!2605433) (set.union (content!14925 (exprs!8418 cWitness!35)) (content!14925 (exprs!8418 ct2!352)))))))

(declare-fun e!4385204 () List!71474)

(assert (=> d!2274336 (= lt!2605433 e!4385204)))

(declare-fun c!1359224 () Bool)

(assert (=> d!2274336 (= c!1359224 (is-Nil!71350 (exprs!8418 cWitness!35)))))

(assert (=> d!2274336 (= (++!16802 (exprs!8418 cWitness!35) (exprs!8418 ct2!352)) lt!2605433)))

(declare-fun b!7323790 () Bool)

(assert (=> b!7323790 (= e!4385204 (exprs!8418 ct2!352))))

(declare-fun b!7323792 () Bool)

(declare-fun res!2960326 () Bool)

(assert (=> b!7323792 (=> (not res!2960326) (not e!4385205))))

(assert (=> b!7323792 (= res!2960326 (= (size!41902 lt!2605433) (+ (size!41902 (exprs!8418 cWitness!35)) (size!41902 (exprs!8418 ct2!352)))))))

(declare-fun b!7323791 () Bool)

(assert (=> b!7323791 (= e!4385204 (Cons!71350 (h!77798 (exprs!8418 cWitness!35)) (++!16802 (t!385857 (exprs!8418 cWitness!35)) (exprs!8418 ct2!352))))))

(declare-fun b!7323793 () Bool)

(assert (=> b!7323793 (= e!4385205 (or (not (= (exprs!8418 ct2!352) Nil!71350)) (= lt!2605433 (exprs!8418 cWitness!35))))))

(assert (= (and d!2274336 c!1359224) b!7323790))

(assert (= (and d!2274336 (not c!1359224)) b!7323791))

(assert (= (and d!2274336 res!2960325) b!7323792))

(assert (= (and b!7323792 res!2960326) b!7323793))

(declare-fun m!7989552 () Bool)

(assert (=> d!2274336 m!7989552))

(declare-fun m!7989554 () Bool)

(assert (=> d!2274336 m!7989554))

(assert (=> d!2274336 m!7989524))

(declare-fun m!7989556 () Bool)

(assert (=> b!7323792 m!7989556))

(declare-fun m!7989558 () Bool)

(assert (=> b!7323792 m!7989558))

(assert (=> b!7323792 m!7989530))

(declare-fun m!7989560 () Bool)

(assert (=> b!7323791 m!7989560))

(assert (=> b!7323687 d!2274336))

(declare-fun d!2274338 () Bool)

(declare-fun e!4385207 () Bool)

(assert (=> d!2274338 e!4385207))

(declare-fun res!2960327 () Bool)

(assert (=> d!2274338 (=> (not res!2960327) (not e!4385207))))

(declare-fun lt!2605434 () List!71474)

(assert (=> d!2274338 (= res!2960327 (= (content!14925 lt!2605434) (set.union (content!14925 (exprs!8418 ct1!256)) (content!14925 (exprs!8418 ct2!352)))))))

(declare-fun e!4385206 () List!71474)

(assert (=> d!2274338 (= lt!2605434 e!4385206)))

(declare-fun c!1359225 () Bool)

(assert (=> d!2274338 (= c!1359225 (is-Nil!71350 (exprs!8418 ct1!256)))))

(assert (=> d!2274338 (= (++!16802 (exprs!8418 ct1!256) (exprs!8418 ct2!352)) lt!2605434)))

(declare-fun b!7323794 () Bool)

(assert (=> b!7323794 (= e!4385206 (exprs!8418 ct2!352))))

(declare-fun b!7323796 () Bool)

(declare-fun res!2960328 () Bool)

(assert (=> b!7323796 (=> (not res!2960328) (not e!4385207))))

(assert (=> b!7323796 (= res!2960328 (= (size!41902 lt!2605434) (+ (size!41902 (exprs!8418 ct1!256)) (size!41902 (exprs!8418 ct2!352)))))))

(declare-fun b!7323795 () Bool)

(assert (=> b!7323795 (= e!4385206 (Cons!71350 (h!77798 (exprs!8418 ct1!256)) (++!16802 (t!385857 (exprs!8418 ct1!256)) (exprs!8418 ct2!352))))))

(declare-fun b!7323797 () Bool)

(assert (=> b!7323797 (= e!4385207 (or (not (= (exprs!8418 ct2!352) Nil!71350)) (= lt!2605434 (exprs!8418 ct1!256))))))

(assert (= (and d!2274338 c!1359225) b!7323794))

(assert (= (and d!2274338 (not c!1359225)) b!7323795))

(assert (= (and d!2274338 res!2960327) b!7323796))

(assert (= (and b!7323796 res!2960328) b!7323797))

(declare-fun m!7989562 () Bool)

(assert (=> d!2274338 m!7989562))

(declare-fun m!7989564 () Bool)

(assert (=> d!2274338 m!7989564))

(assert (=> d!2274338 m!7989524))

(declare-fun m!7989566 () Bool)

(assert (=> b!7323796 m!7989566))

(declare-fun m!7989568 () Bool)

(assert (=> b!7323796 m!7989568))

(assert (=> b!7323796 m!7989530))

(declare-fun m!7989570 () Bool)

(assert (=> b!7323795 m!7989570))

(assert (=> b!7323691 d!2274338))

(declare-fun d!2274340 () Bool)

(assert (=> d!2274340 (forall!17832 (++!16802 (exprs!8418 ct1!256) (exprs!8418 ct2!352)) lambda!453789)))

(declare-fun lt!2605435 () Unit!164921)

(assert (=> d!2274340 (= lt!2605435 (choose!56948 (exprs!8418 ct1!256) (exprs!8418 ct2!352) lambda!453789))))

(assert (=> d!2274340 (forall!17832 (exprs!8418 ct1!256) lambda!453789)))

(assert (=> d!2274340 (= (lemmaConcatPreservesForall!1659 (exprs!8418 ct1!256) (exprs!8418 ct2!352) lambda!453789) lt!2605435)))

(declare-fun bs!1916397 () Bool)

(assert (= bs!1916397 d!2274340))

(assert (=> bs!1916397 m!7989366))

(assert (=> bs!1916397 m!7989366))

(declare-fun m!7989572 () Bool)

(assert (=> bs!1916397 m!7989572))

(declare-fun m!7989574 () Bool)

(assert (=> bs!1916397 m!7989574))

(assert (=> bs!1916397 m!7989404))

(assert (=> b!7323691 d!2274340))

(declare-fun d!2274342 () Bool)

(declare-fun nullableFct!3198 (Regex!18978) Bool)

(assert (=> d!2274342 (= (nullable!8082 (h!77798 (exprs!8418 ct1!256))) (nullableFct!3198 (h!77798 (exprs!8418 ct1!256))))))

(declare-fun bs!1916398 () Bool)

(assert (= bs!1916398 d!2274342))

(declare-fun m!7989576 () Bool)

(assert (=> bs!1916398 m!7989576))

(assert (=> b!7323686 d!2274342))

(declare-fun b!7323825 () Bool)

(declare-fun e!4385224 () (Set Context!15836))

(declare-fun call!666201 () (Set Context!15836))

(assert (=> b!7323825 (= e!4385224 call!666201)))

(declare-fun b!7323826 () Bool)

(assert (=> b!7323826 (= e!4385224 (as set.empty (Set Context!15836)))))

(declare-fun b!7323827 () Bool)

(declare-fun e!4385226 () (Set Context!15836))

(declare-fun e!4385223 () (Set Context!15836))

(assert (=> b!7323827 (= e!4385226 e!4385223)))

(declare-fun c!1359240 () Bool)

(assert (=> b!7323827 (= c!1359240 (is-Concat!27823 (h!77798 (exprs!8418 ct1!256))))))

(declare-fun b!7323828 () Bool)

(declare-fun c!1359238 () Bool)

(assert (=> b!7323828 (= c!1359238 (is-Star!18978 (h!77798 (exprs!8418 ct1!256))))))

(assert (=> b!7323828 (= e!4385223 e!4385224)))

(declare-fun b!7323829 () Bool)

(declare-fun e!4385228 () (Set Context!15836))

(declare-fun call!666203 () (Set Context!15836))

(declare-fun call!666199 () (Set Context!15836))

(assert (=> b!7323829 (= e!4385228 (set.union call!666203 call!666199))))

(declare-fun bm!666194 () Bool)

(declare-fun call!666200 () (Set Context!15836))

(assert (=> bm!666194 (= call!666201 call!666200)))

(declare-fun b!7323830 () Bool)

(declare-fun e!4385225 () (Set Context!15836))

(assert (=> b!7323830 (= e!4385225 e!4385228)))

(declare-fun c!1359239 () Bool)

(assert (=> b!7323830 (= c!1359239 (is-Union!18978 (h!77798 (exprs!8418 ct1!256))))))

(declare-fun b!7323831 () Bool)

(declare-fun e!4385227 () Bool)

(assert (=> b!7323831 (= e!4385227 (nullable!8082 (regOne!38468 (h!77798 (exprs!8418 ct1!256)))))))

(declare-fun b!7323832 () Bool)

(declare-fun c!1359242 () Bool)

(assert (=> b!7323832 (= c!1359242 e!4385227)))

(declare-fun res!2960332 () Bool)

(assert (=> b!7323832 (=> (not res!2960332) (not e!4385227))))

(assert (=> b!7323832 (= res!2960332 (is-Concat!27823 (h!77798 (exprs!8418 ct1!256))))))

(assert (=> b!7323832 (= e!4385228 e!4385226)))

(declare-fun bm!666196 () Bool)

(declare-fun call!666204 () List!71474)

(declare-fun $colon$colon!3014 (List!71474 Regex!18978) List!71474)

(assert (=> bm!666196 (= call!666204 ($colon$colon!3014 (exprs!8418 lt!2605366) (ite (or c!1359242 c!1359240) (regTwo!38468 (h!77798 (exprs!8418 ct1!256))) (h!77798 (exprs!8418 ct1!256)))))))

(declare-fun bm!666197 () Bool)

(declare-fun call!666202 () List!71474)

(assert (=> bm!666197 (= call!666202 call!666204)))

(declare-fun bm!666198 () Bool)

(assert (=> bm!666198 (= call!666199 (derivationStepZipperDown!2809 (ite c!1359239 (regTwo!38469 (h!77798 (exprs!8418 ct1!256))) (ite c!1359242 (regTwo!38468 (h!77798 (exprs!8418 ct1!256))) (ite c!1359240 (regOne!38468 (h!77798 (exprs!8418 ct1!256))) (reg!19307 (h!77798 (exprs!8418 ct1!256)))))) (ite (or c!1359239 c!1359242) lt!2605366 (Context!15837 call!666202)) c!10305))))

(declare-fun b!7323833 () Bool)

(assert (=> b!7323833 (= e!4385225 (set.insert lt!2605366 (as set.empty (Set Context!15836))))))

(declare-fun b!7323834 () Bool)

(assert (=> b!7323834 (= e!4385223 call!666201)))

(declare-fun bm!666199 () Bool)

(assert (=> bm!666199 (= call!666203 (derivationStepZipperDown!2809 (ite c!1359239 (regOne!38469 (h!77798 (exprs!8418 ct1!256))) (regOne!38468 (h!77798 (exprs!8418 ct1!256)))) (ite c!1359239 lt!2605366 (Context!15837 call!666204)) c!10305))))

(declare-fun b!7323835 () Bool)

(assert (=> b!7323835 (= e!4385226 (set.union call!666203 call!666200))))

(declare-fun bm!666195 () Bool)

(assert (=> bm!666195 (= call!666200 call!666199)))

(declare-fun d!2274344 () Bool)

(declare-fun c!1359241 () Bool)

(assert (=> d!2274344 (= c!1359241 (and (is-ElementMatch!18978 (h!77798 (exprs!8418 ct1!256))) (= (c!1359199 (h!77798 (exprs!8418 ct1!256))) c!10305)))))

(assert (=> d!2274344 (= (derivationStepZipperDown!2809 (h!77798 (exprs!8418 ct1!256)) lt!2605366 c!10305) e!4385225)))

(assert (= (and d!2274344 c!1359241) b!7323833))

(assert (= (and d!2274344 (not c!1359241)) b!7323830))

(assert (= (and b!7323830 c!1359239) b!7323829))

(assert (= (and b!7323830 (not c!1359239)) b!7323832))

(assert (= (and b!7323832 res!2960332) b!7323831))

(assert (= (and b!7323832 c!1359242) b!7323835))

(assert (= (and b!7323832 (not c!1359242)) b!7323827))

(assert (= (and b!7323827 c!1359240) b!7323834))

(assert (= (and b!7323827 (not c!1359240)) b!7323828))

(assert (= (and b!7323828 c!1359238) b!7323825))

(assert (= (and b!7323828 (not c!1359238)) b!7323826))

(assert (= (or b!7323834 b!7323825) bm!666197))

(assert (= (or b!7323834 b!7323825) bm!666194))

(assert (= (or b!7323835 bm!666194) bm!666195))

(assert (= (or b!7323835 bm!666197) bm!666196))

(assert (= (or b!7323829 bm!666195) bm!666198))

(assert (= (or b!7323829 b!7323835) bm!666199))

(declare-fun m!7989590 () Bool)

(assert (=> bm!666196 m!7989590))

(declare-fun m!7989592 () Bool)

(assert (=> bm!666198 m!7989592))

(declare-fun m!7989594 () Bool)

(assert (=> b!7323833 m!7989594))

(declare-fun m!7989596 () Bool)

(assert (=> bm!666199 m!7989596))

(declare-fun m!7989598 () Bool)

(assert (=> b!7323831 m!7989598))

(assert (=> b!7323686 d!2274344))

(declare-fun d!2274356 () Bool)

(assert (=> d!2274356 (= (tail!14667 (exprs!8418 ct1!256)) (t!385857 (exprs!8418 ct1!256)))))

(assert (=> b!7323686 d!2274356))

(declare-fun d!2274358 () Bool)

(assert (=> d!2274358 (= (isEmpty!40896 (exprs!8418 ct1!256)) (is-Nil!71350 (exprs!8418 ct1!256)))))

(assert (=> b!7323685 d!2274358))

(declare-fun b!7323840 () Bool)

(declare-fun e!4385231 () Bool)

(declare-fun tp!2080154 () Bool)

(declare-fun tp!2080155 () Bool)

(assert (=> b!7323840 (= e!4385231 (and tp!2080154 tp!2080155))))

(assert (=> b!7323690 (= tp!2080140 e!4385231)))

(assert (= (and b!7323690 (is-Cons!71350 (exprs!8418 ct2!352))) b!7323840))

(declare-fun b!7323841 () Bool)

(declare-fun e!4385232 () Bool)

(declare-fun tp!2080156 () Bool)

(declare-fun tp!2080157 () Bool)

(assert (=> b!7323841 (= e!4385232 (and tp!2080156 tp!2080157))))

(assert (=> b!7323689 (= tp!2080139 e!4385232)))

(assert (= (and b!7323689 (is-Cons!71350 (exprs!8418 ct1!256))) b!7323841))

(declare-fun b!7323842 () Bool)

(declare-fun e!4385233 () Bool)

(declare-fun tp!2080158 () Bool)

(declare-fun tp!2080159 () Bool)

(assert (=> b!7323842 (= e!4385233 (and tp!2080158 tp!2080159))))

(assert (=> b!7323692 (= tp!2080138 e!4385233)))

(assert (= (and b!7323692 (is-Cons!71350 (exprs!8418 cWitness!35))) b!7323842))

(declare-fun b_lambda!283245 () Bool)

(assert (= b_lambda!283243 (or b!7323691 b_lambda!283245)))

(declare-fun bs!1916409 () Bool)

(declare-fun d!2274360 () Bool)

(assert (= bs!1916409 (and d!2274360 b!7323691)))

(declare-fun validRegex!9623 (Regex!18978) Bool)

(assert (=> bs!1916409 (= (dynLambda!29393 lambda!453789 (h!77798 (exprs!8418 ct1!256))) (validRegex!9623 (h!77798 (exprs!8418 ct1!256))))))

(declare-fun m!7989600 () Bool)

(assert (=> bs!1916409 m!7989600))

(assert (=> b!7323747 d!2274360))

(push 1)

(assert (not b!7323754))

(assert (not b!7323748))

(assert (not d!2274338))

(assert (not d!2274340))

(assert (not d!2274328))

(assert (not d!2274310))

(assert (not bm!666198))

(assert (not bm!666180))

(assert (not d!2274336))

(assert (not b!7323786))

(assert (not b!7323792))

(assert (not bs!1916409))

(assert (not b!7323789))

(assert (not b!7323841))

(assert (not b!7323757))

(assert (not d!2274314))

(assert (not b!7323774))

(assert (not b_lambda!283245))

(assert (not b!7323831))

(assert (not b!7323840))

(assert (not bm!666177))

(assert (not d!2274322))

(assert (not b!7323795))

(assert (not b!7323731))

(assert (not bm!666175))

(assert (not b!7323734))

(assert (not d!2274342))

(assert (not bm!666199))

(assert (not d!2274312))

(assert (not b!7323781))

(assert (not d!2274332))

(assert (not d!2274318))

(assert (not b!7323784))

(assert (not bm!666196))

(assert (not b!7323842))

(assert tp_is_empty!48201)

(assert (not b!7323791))

(assert (not bm!666176))

(assert (not b!7323796))

(assert (not b!7323773))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

