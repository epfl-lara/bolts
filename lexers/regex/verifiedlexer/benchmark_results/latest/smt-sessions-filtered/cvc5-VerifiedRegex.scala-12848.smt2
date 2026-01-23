; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709792 () Bool)

(assert start!709792)

(declare-fun b!7272247 () Bool)

(assert (=> b!7272247 true))

(declare-fun b!7272238 () Bool)

(declare-fun e!4360902 () Bool)

(declare-fun tp!2041273 () Bool)

(assert (=> b!7272238 (= e!4360902 tp!2041273)))

(declare-fun b!7272239 () Bool)

(declare-fun res!2947951 () Bool)

(declare-fun e!4360899 () Bool)

(assert (=> b!7272239 (=> (not res!2947951) (not e!4360899))))

(declare-datatypes ((C!37882 0))(
  ( (C!37883 (val!28889 Int)) )
))
(declare-datatypes ((Regex!18804 0))(
  ( (ElementMatch!18804 (c!1353910 C!37882)) (Concat!27649 (regOne!38120 Regex!18804) (regTwo!38120 Regex!18804)) (EmptyExpr!18804) (Star!18804 (reg!19133 Regex!18804)) (EmptyLang!18804) (Union!18804 (regOne!38121 Regex!18804) (regTwo!38121 Regex!18804)) )
))
(declare-datatypes ((List!70923 0))(
  ( (Nil!70799) (Cons!70799 (h!77247 Regex!18804) (t!384995 List!70923)) )
))
(declare-datatypes ((Context!15488 0))(
  ( (Context!15489 (exprs!8244 List!70923)) )
))
(declare-fun ct1!250 () Context!15488)

(declare-fun nullableContext!294 (Context!15488) Bool)

(assert (=> b!7272239 (= res!2947951 (nullableContext!294 ct1!250))))

(declare-fun b!7272240 () Bool)

(declare-fun e!4360894 () Bool)

(declare-fun e!4360897 () Bool)

(assert (=> b!7272240 (= e!4360894 e!4360897)))

(declare-fun res!2947954 () Bool)

(assert (=> b!7272240 (=> res!2947954 e!4360897)))

(declare-fun lt!2595569 () (Set Context!15488))

(declare-datatypes ((List!70924 0))(
  ( (Nil!70800) (Cons!70800 (h!77248 C!37882) (t!384996 List!70924)) )
))
(declare-fun s!7854 () List!70924)

(declare-fun matchZipper!3708 ((Set Context!15488) List!70924) Bool)

(assert (=> b!7272240 (= res!2947954 (not (matchZipper!3708 lt!2595569 (t!384996 s!7854))))))

(declare-fun lt!2595542 () List!70923)

(declare-fun ct2!346 () Context!15488)

(declare-fun lambda!448938 () Int)

(declare-datatypes ((Unit!164226 0))(
  ( (Unit!164227) )
))
(declare-fun lt!2595559 () Unit!164226)

(declare-fun lemmaConcatPreservesForall!1561 (List!70923 List!70923 Int) Unit!164226)

(assert (=> b!7272240 (= lt!2595559 (lemmaConcatPreservesForall!1561 lt!2595542 (exprs!8244 ct2!346) lambda!448938))))

(declare-fun lambda!448939 () Int)

(declare-fun lt!2595568 () Context!15488)

(declare-fun lt!2595549 () (Set Context!15488))

(declare-fun flatMap!2917 ((Set Context!15488) Int) (Set Context!15488))

(declare-fun derivationStepZipperUp!2574 (Context!15488 C!37882) (Set Context!15488))

(assert (=> b!7272240 (= (flatMap!2917 lt!2595549 lambda!448939) (derivationStepZipperUp!2574 lt!2595568 (h!77248 s!7854)))))

(declare-fun lt!2595558 () Unit!164226)

(declare-fun lemmaFlatMapOnSingletonSet!2317 ((Set Context!15488) Context!15488 Int) Unit!164226)

(assert (=> b!7272240 (= lt!2595558 (lemmaFlatMapOnSingletonSet!2317 lt!2595549 lt!2595568 lambda!448939))))

(declare-fun lt!2595557 () Unit!164226)

(assert (=> b!7272240 (= lt!2595557 (lemmaConcatPreservesForall!1561 lt!2595542 (exprs!8244 ct2!346) lambda!448938))))

(declare-fun lt!2595545 () Unit!164226)

(assert (=> b!7272240 (= lt!2595545 (lemmaConcatPreservesForall!1561 lt!2595542 (exprs!8244 ct2!346) lambda!448938))))

(declare-fun lt!2595563 () Unit!164226)

(assert (=> b!7272240 (= lt!2595563 (lemmaConcatPreservesForall!1561 lt!2595542 (exprs!8244 ct2!346) lambda!448938))))

(assert (=> b!7272240 (matchZipper!3708 lt!2595549 s!7854)))

(assert (=> b!7272240 (= lt!2595549 (set.insert lt!2595568 (as set.empty (Set Context!15488))))))

(declare-fun lt!2595560 () Unit!164226)

(assert (=> b!7272240 (= lt!2595560 (lemmaConcatPreservesForall!1561 lt!2595542 (exprs!8244 ct2!346) lambda!448938))))

(declare-fun lt!2595564 () Context!15488)

(declare-fun lt!2595550 () Unit!164226)

(declare-fun lemmaPrependingNullableCtxStillMatches!41 (Context!15488 Context!15488 List!70924) Unit!164226)

(assert (=> b!7272240 (= lt!2595550 (lemmaPrependingNullableCtxStillMatches!41 lt!2595564 ct2!346 s!7854))))

(declare-fun b!7272241 () Bool)

(declare-fun e!4360900 () Bool)

(assert (=> b!7272241 (= e!4360900 e!4360894)))

(declare-fun res!2947950 () Bool)

(assert (=> b!7272241 (=> res!2947950 e!4360894)))

(declare-fun lt!2595562 () (Set Context!15488))

(declare-fun lt!2595547 () (Set Context!15488))

(assert (=> b!7272241 (= res!2947950 (not (= lt!2595562 lt!2595547)))))

(declare-fun lt!2595548 () (Set Context!15488))

(assert (=> b!7272241 (= lt!2595547 (set.union lt!2595548 lt!2595569))))

(assert (=> b!7272241 (= lt!2595569 (derivationStepZipperUp!2574 lt!2595568 (h!77248 s!7854)))))

(declare-fun derivationStepZipperDown!2738 (Regex!18804 Context!15488 C!37882) (Set Context!15488))

(assert (=> b!7272241 (= lt!2595548 (derivationStepZipperDown!2738 (h!77247 (exprs!8244 ct1!250)) lt!2595568 (h!77248 s!7854)))))

(declare-fun ++!16704 (List!70923 List!70923) List!70923)

(assert (=> b!7272241 (= lt!2595568 (Context!15489 (++!16704 lt!2595542 (exprs!8244 ct2!346))))))

(declare-fun lt!2595554 () Unit!164226)

(assert (=> b!7272241 (= lt!2595554 (lemmaConcatPreservesForall!1561 lt!2595542 (exprs!8244 ct2!346) lambda!448938))))

(declare-fun lt!2595553 () Unit!164226)

(assert (=> b!7272241 (= lt!2595553 (lemmaConcatPreservesForall!1561 lt!2595542 (exprs!8244 ct2!346) lambda!448938))))

(declare-fun b!7272242 () Bool)

(declare-fun res!2947945 () Bool)

(assert (=> b!7272242 (=> (not res!2947945) (not e!4360899))))

(assert (=> b!7272242 (= res!2947945 (is-Cons!70800 s!7854))))

(declare-fun b!7272243 () Bool)

(declare-fun res!2947948 () Bool)

(declare-fun e!4360895 () Bool)

(assert (=> b!7272243 (=> res!2947948 e!4360895)))

(declare-fun isEmpty!40724 (List!70923) Bool)

(assert (=> b!7272243 (= res!2947948 (isEmpty!40724 (exprs!8244 ct1!250)))))

(declare-fun b!7272244 () Bool)

(declare-fun e!4360896 () Bool)

(declare-fun tp!2041274 () Bool)

(assert (=> b!7272244 (= e!4360896 tp!2041274)))

(declare-fun res!2947946 () Bool)

(assert (=> start!709792 (=> (not res!2947946) (not e!4360899))))

(assert (=> start!709792 (= res!2947946 (matchZipper!3708 (set.insert ct2!346 (as set.empty (Set Context!15488))) s!7854))))

(assert (=> start!709792 e!4360899))

(declare-fun inv!90021 (Context!15488) Bool)

(assert (=> start!709792 (and (inv!90021 ct2!346) e!4360896)))

(declare-fun e!4360898 () Bool)

(assert (=> start!709792 e!4360898))

(assert (=> start!709792 (and (inv!90021 ct1!250) e!4360902)))

(declare-fun b!7272245 () Bool)

(declare-fun res!2947947 () Bool)

(assert (=> b!7272245 (=> res!2947947 e!4360900)))

(declare-fun lt!2595570 () (Set Context!15488))

(assert (=> b!7272245 (= res!2947947 (not (= lt!2595570 (set.union (derivationStepZipperDown!2738 (h!77247 (exprs!8244 ct1!250)) lt!2595564 (h!77248 s!7854)) (derivationStepZipperUp!2574 lt!2595564 (h!77248 s!7854))))))))

(declare-fun b!7272246 () Bool)

(declare-fun e!4360901 () Bool)

(assert (=> b!7272246 (= e!4360897 e!4360901)))

(declare-fun res!2947953 () Bool)

(assert (=> b!7272246 (=> res!2947953 e!4360901)))

(declare-fun lt!2595552 () (Set Context!15488))

(assert (=> b!7272246 (= res!2947953 (not (matchZipper!3708 lt!2595552 s!7854)))))

(declare-fun lt!2595565 () Unit!164226)

(assert (=> b!7272246 (= lt!2595565 (lemmaConcatPreservesForall!1561 (exprs!8244 ct1!250) (exprs!8244 ct2!346) lambda!448938))))

(assert (=> b!7272246 (matchZipper!3708 lt!2595547 (t!384996 s!7854))))

(declare-fun lt!2595566 () Bool)

(assert (=> b!7272246 (= lt!2595566 (matchZipper!3708 lt!2595548 (t!384996 s!7854)))))

(declare-fun lt!2595555 () Unit!164226)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1777 ((Set Context!15488) (Set Context!15488) List!70924) Unit!164226)

(assert (=> b!7272246 (= lt!2595555 (lemmaZipperConcatMatchesSameAsBothZippers!1777 lt!2595548 lt!2595569 (t!384996 s!7854)))))

(declare-fun lt!2595541 () Unit!164226)

(assert (=> b!7272246 (= lt!2595541 (lemmaConcatPreservesForall!1561 lt!2595542 (exprs!8244 ct2!346) lambda!448938))))

(declare-fun lt!2595556 () Unit!164226)

(assert (=> b!7272246 (= lt!2595556 (lemmaConcatPreservesForall!1561 lt!2595542 (exprs!8244 ct2!346) lambda!448938))))

(assert (=> b!7272247 (= e!4360899 (not e!4360895))))

(declare-fun res!2947949 () Bool)

(assert (=> b!7272247 (=> res!2947949 e!4360895)))

(declare-fun derivationStepZipper!3544 ((Set Context!15488) C!37882) (Set Context!15488))

(assert (=> b!7272247 (= res!2947949 (not (= lt!2595562 (derivationStepZipper!3544 lt!2595552 (h!77248 s!7854)))))))

(declare-fun lt!2595546 () Unit!164226)

(assert (=> b!7272247 (= lt!2595546 (lemmaConcatPreservesForall!1561 (exprs!8244 ct1!250) (exprs!8244 ct2!346) lambda!448938))))

(declare-fun lt!2595561 () Context!15488)

(assert (=> b!7272247 (= (flatMap!2917 lt!2595552 lambda!448939) (derivationStepZipperUp!2574 lt!2595561 (h!77248 s!7854)))))

(declare-fun lt!2595540 () Unit!164226)

(assert (=> b!7272247 (= lt!2595540 (lemmaFlatMapOnSingletonSet!2317 lt!2595552 lt!2595561 lambda!448939))))

(assert (=> b!7272247 (= lt!2595552 (set.insert lt!2595561 (as set.empty (Set Context!15488))))))

(declare-fun lt!2595571 () Unit!164226)

(assert (=> b!7272247 (= lt!2595571 (lemmaConcatPreservesForall!1561 (exprs!8244 ct1!250) (exprs!8244 ct2!346) lambda!448938))))

(declare-fun lt!2595567 () Unit!164226)

(assert (=> b!7272247 (= lt!2595567 (lemmaConcatPreservesForall!1561 (exprs!8244 ct1!250) (exprs!8244 ct2!346) lambda!448938))))

(declare-fun lt!2595543 () (Set Context!15488))

(assert (=> b!7272247 (= (flatMap!2917 lt!2595543 lambda!448939) (derivationStepZipperUp!2574 ct1!250 (h!77248 s!7854)))))

(declare-fun lt!2595544 () Unit!164226)

(assert (=> b!7272247 (= lt!2595544 (lemmaFlatMapOnSingletonSet!2317 lt!2595543 ct1!250 lambda!448939))))

(assert (=> b!7272247 (= lt!2595543 (set.insert ct1!250 (as set.empty (Set Context!15488))))))

(assert (=> b!7272247 (= lt!2595562 (derivationStepZipperUp!2574 lt!2595561 (h!77248 s!7854)))))

(assert (=> b!7272247 (= lt!2595561 (Context!15489 (++!16704 (exprs!8244 ct1!250) (exprs!8244 ct2!346))))))

(declare-fun lt!2595551 () Unit!164226)

(assert (=> b!7272247 (= lt!2595551 (lemmaConcatPreservesForall!1561 (exprs!8244 ct1!250) (exprs!8244 ct2!346) lambda!448938))))

(declare-fun b!7272248 () Bool)

(assert (=> b!7272248 (= e!4360895 e!4360900)))

(declare-fun res!2947944 () Bool)

(assert (=> b!7272248 (=> res!2947944 e!4360900)))

(declare-fun nullable!8004 (Regex!18804) Bool)

(assert (=> b!7272248 (= res!2947944 (not (nullable!8004 (h!77247 (exprs!8244 ct1!250)))))))

(assert (=> b!7272248 (= lt!2595570 (derivationStepZipperUp!2574 ct1!250 (h!77248 s!7854)))))

(assert (=> b!7272248 (= lt!2595564 (Context!15489 lt!2595542))))

(declare-fun tail!14511 (List!70923) List!70923)

(assert (=> b!7272248 (= lt!2595542 (tail!14511 (exprs!8244 ct1!250)))))

(declare-fun b!7272249 () Bool)

(declare-fun forall!17633 (List!70923 Int) Bool)

(assert (=> b!7272249 (= e!4360901 (forall!17633 (exprs!8244 ct1!250) lambda!448938))))

(declare-fun b!7272250 () Bool)

(declare-fun res!2947952 () Bool)

(assert (=> b!7272250 (=> res!2947952 e!4360895)))

(assert (=> b!7272250 (= res!2947952 (not (is-Cons!70799 (exprs!8244 ct1!250))))))

(declare-fun b!7272251 () Bool)

(declare-fun tp_is_empty!47073 () Bool)

(declare-fun tp!2041275 () Bool)

(assert (=> b!7272251 (= e!4360898 (and tp_is_empty!47073 tp!2041275))))

(assert (= (and start!709792 res!2947946) b!7272239))

(assert (= (and b!7272239 res!2947951) b!7272242))

(assert (= (and b!7272242 res!2947945) b!7272247))

(assert (= (and b!7272247 (not res!2947949)) b!7272250))

(assert (= (and b!7272250 (not res!2947952)) b!7272243))

(assert (= (and b!7272243 (not res!2947948)) b!7272248))

(assert (= (and b!7272248 (not res!2947944)) b!7272245))

(assert (= (and b!7272245 (not res!2947947)) b!7272241))

(assert (= (and b!7272241 (not res!2947950)) b!7272240))

(assert (= (and b!7272240 (not res!2947954)) b!7272246))

(assert (= (and b!7272246 (not res!2947953)) b!7272249))

(assert (= start!709792 b!7272244))

(assert (= (and start!709792 (is-Cons!70800 s!7854)) b!7272251))

(assert (= start!709792 b!7272238))

(declare-fun m!7958342 () Bool)

(assert (=> b!7272248 m!7958342))

(declare-fun m!7958344 () Bool)

(assert (=> b!7272248 m!7958344))

(declare-fun m!7958346 () Bool)

(assert (=> b!7272248 m!7958346))

(declare-fun m!7958348 () Bool)

(assert (=> b!7272239 m!7958348))

(declare-fun m!7958350 () Bool)

(assert (=> b!7272240 m!7958350))

(assert (=> b!7272240 m!7958350))

(declare-fun m!7958352 () Bool)

(assert (=> b!7272240 m!7958352))

(assert (=> b!7272240 m!7958350))

(assert (=> b!7272240 m!7958350))

(declare-fun m!7958354 () Bool)

(assert (=> b!7272240 m!7958354))

(declare-fun m!7958356 () Bool)

(assert (=> b!7272240 m!7958356))

(declare-fun m!7958358 () Bool)

(assert (=> b!7272240 m!7958358))

(declare-fun m!7958360 () Bool)

(assert (=> b!7272240 m!7958360))

(assert (=> b!7272240 m!7958350))

(declare-fun m!7958362 () Bool)

(assert (=> b!7272240 m!7958362))

(declare-fun m!7958364 () Bool)

(assert (=> b!7272240 m!7958364))

(declare-fun m!7958366 () Bool)

(assert (=> b!7272246 m!7958366))

(assert (=> b!7272246 m!7958350))

(declare-fun m!7958368 () Bool)

(assert (=> b!7272246 m!7958368))

(declare-fun m!7958370 () Bool)

(assert (=> b!7272246 m!7958370))

(declare-fun m!7958372 () Bool)

(assert (=> b!7272246 m!7958372))

(assert (=> b!7272246 m!7958350))

(declare-fun m!7958374 () Bool)

(assert (=> b!7272246 m!7958374))

(assert (=> b!7272247 m!7958374))

(declare-fun m!7958376 () Bool)

(assert (=> b!7272247 m!7958376))

(declare-fun m!7958378 () Bool)

(assert (=> b!7272247 m!7958378))

(assert (=> b!7272247 m!7958374))

(assert (=> b!7272247 m!7958344))

(assert (=> b!7272247 m!7958374))

(declare-fun m!7958380 () Bool)

(assert (=> b!7272247 m!7958380))

(declare-fun m!7958382 () Bool)

(assert (=> b!7272247 m!7958382))

(declare-fun m!7958384 () Bool)

(assert (=> b!7272247 m!7958384))

(declare-fun m!7958386 () Bool)

(assert (=> b!7272247 m!7958386))

(declare-fun m!7958388 () Bool)

(assert (=> b!7272247 m!7958388))

(declare-fun m!7958390 () Bool)

(assert (=> b!7272247 m!7958390))

(declare-fun m!7958392 () Bool)

(assert (=> b!7272247 m!7958392))

(assert (=> b!7272247 m!7958374))

(assert (=> b!7272241 m!7958362))

(assert (=> b!7272241 m!7958350))

(declare-fun m!7958394 () Bool)

(assert (=> b!7272241 m!7958394))

(assert (=> b!7272241 m!7958350))

(declare-fun m!7958396 () Bool)

(assert (=> b!7272241 m!7958396))

(declare-fun m!7958398 () Bool)

(assert (=> b!7272249 m!7958398))

(declare-fun m!7958400 () Bool)

(assert (=> start!709792 m!7958400))

(assert (=> start!709792 m!7958400))

(declare-fun m!7958402 () Bool)

(assert (=> start!709792 m!7958402))

(declare-fun m!7958404 () Bool)

(assert (=> start!709792 m!7958404))

(declare-fun m!7958406 () Bool)

(assert (=> start!709792 m!7958406))

(declare-fun m!7958408 () Bool)

(assert (=> b!7272243 m!7958408))

(declare-fun m!7958410 () Bool)

(assert (=> b!7272245 m!7958410))

(declare-fun m!7958412 () Bool)

(assert (=> b!7272245 m!7958412))

(push 1)

(assert (not b!7272240))

(assert tp_is_empty!47073)

(assert (not start!709792))

(assert (not b!7272238))

(assert (not b!7272241))

(assert (not b!7272244))

(assert (not b!7272245))

(assert (not b!7272247))

(assert (not b!7272239))

(assert (not b!7272249))

(assert (not b!7272248))

(assert (not b!7272246))

(assert (not b!7272243))

(assert (not b!7272251))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2263257 () Bool)

(declare-fun res!2947992 () Bool)

(declare-fun e!4360934 () Bool)

(assert (=> d!2263257 (=> res!2947992 e!4360934)))

(assert (=> d!2263257 (= res!2947992 (is-Nil!70799 (exprs!8244 ct1!250)))))

(assert (=> d!2263257 (= (forall!17633 (exprs!8244 ct1!250) lambda!448938) e!4360934)))

(declare-fun b!7272302 () Bool)

(declare-fun e!4360935 () Bool)

(assert (=> b!7272302 (= e!4360934 e!4360935)))

(declare-fun res!2947993 () Bool)

(assert (=> b!7272302 (=> (not res!2947993) (not e!4360935))))

(declare-fun dynLambda!28943 (Int Regex!18804) Bool)

(assert (=> b!7272302 (= res!2947993 (dynLambda!28943 lambda!448938 (h!77247 (exprs!8244 ct1!250))))))

(declare-fun b!7272303 () Bool)

(assert (=> b!7272303 (= e!4360935 (forall!17633 (t!384995 (exprs!8244 ct1!250)) lambda!448938))))

(assert (= (and d!2263257 (not res!2947992)) b!7272302))

(assert (= (and b!7272302 res!2947993) b!7272303))

(declare-fun b_lambda!280437 () Bool)

(assert (=> (not b_lambda!280437) (not b!7272302)))

(declare-fun m!7958486 () Bool)

(assert (=> b!7272302 m!7958486))

(declare-fun m!7958488 () Bool)

(assert (=> b!7272303 m!7958488))

(assert (=> b!7272249 d!2263257))

(declare-fun bs!1911319 () Bool)

(declare-fun d!2263259 () Bool)

(assert (= bs!1911319 (and d!2263259 b!7272247)))

(declare-fun lambda!448980 () Int)

(assert (=> bs!1911319 (not (= lambda!448980 lambda!448938))))

(assert (=> d!2263259 (= (nullableContext!294 ct1!250) (forall!17633 (exprs!8244 ct1!250) lambda!448980))))

(declare-fun bs!1911320 () Bool)

(assert (= bs!1911320 d!2263259))

(declare-fun m!7958490 () Bool)

(assert (=> bs!1911320 m!7958490))

(assert (=> b!7272239 d!2263259))

(declare-fun d!2263261 () Bool)

(declare-fun nullableFct!3161 (Regex!18804) Bool)

(assert (=> d!2263261 (= (nullable!8004 (h!77247 (exprs!8244 ct1!250))) (nullableFct!3161 (h!77247 (exprs!8244 ct1!250))))))

(declare-fun bs!1911321 () Bool)

(assert (= bs!1911321 d!2263261))

(declare-fun m!7958492 () Bool)

(assert (=> bs!1911321 m!7958492))

(assert (=> b!7272248 d!2263261))

(declare-fun d!2263263 () Bool)

(declare-fun c!1353923 () Bool)

(declare-fun e!4360942 () Bool)

(assert (=> d!2263263 (= c!1353923 e!4360942)))

(declare-fun res!2947996 () Bool)

(assert (=> d!2263263 (=> (not res!2947996) (not e!4360942))))

(assert (=> d!2263263 (= res!2947996 (is-Cons!70799 (exprs!8244 ct1!250)))))

(declare-fun e!4360943 () (Set Context!15488))

(assert (=> d!2263263 (= (derivationStepZipperUp!2574 ct1!250 (h!77248 s!7854)) e!4360943)))

(declare-fun b!7272314 () Bool)

(declare-fun e!4360944 () (Set Context!15488))

(assert (=> b!7272314 (= e!4360944 (as set.empty (Set Context!15488)))))

(declare-fun b!7272315 () Bool)

(assert (=> b!7272315 (= e!4360943 e!4360944)))

(declare-fun c!1353924 () Bool)

(assert (=> b!7272315 (= c!1353924 (is-Cons!70799 (exprs!8244 ct1!250)))))

(declare-fun b!7272316 () Bool)

(declare-fun call!663430 () (Set Context!15488))

(assert (=> b!7272316 (= e!4360943 (set.union call!663430 (derivationStepZipperUp!2574 (Context!15489 (t!384995 (exprs!8244 ct1!250))) (h!77248 s!7854))))))

(declare-fun b!7272317 () Bool)

(assert (=> b!7272317 (= e!4360944 call!663430)))

(declare-fun b!7272318 () Bool)

(assert (=> b!7272318 (= e!4360942 (nullable!8004 (h!77247 (exprs!8244 ct1!250))))))

(declare-fun bm!663425 () Bool)

(assert (=> bm!663425 (= call!663430 (derivationStepZipperDown!2738 (h!77247 (exprs!8244 ct1!250)) (Context!15489 (t!384995 (exprs!8244 ct1!250))) (h!77248 s!7854)))))

(assert (= (and d!2263263 res!2947996) b!7272318))

(assert (= (and d!2263263 c!1353923) b!7272316))

(assert (= (and d!2263263 (not c!1353923)) b!7272315))

(assert (= (and b!7272315 c!1353924) b!7272317))

(assert (= (and b!7272315 (not c!1353924)) b!7272314))

(assert (= (or b!7272316 b!7272317) bm!663425))

(declare-fun m!7958494 () Bool)

(assert (=> b!7272316 m!7958494))

(assert (=> b!7272318 m!7958342))

(declare-fun m!7958496 () Bool)

(assert (=> bm!663425 m!7958496))

(assert (=> b!7272248 d!2263263))

(declare-fun d!2263265 () Bool)

(assert (=> d!2263265 (= (tail!14511 (exprs!8244 ct1!250)) (t!384995 (exprs!8244 ct1!250)))))

(assert (=> b!7272248 d!2263265))

(declare-fun d!2263267 () Bool)

(assert (=> d!2263267 (= (isEmpty!40724 (exprs!8244 ct1!250)) (is-Nil!70799 (exprs!8244 ct1!250)))))

(assert (=> b!7272243 d!2263267))

(declare-fun d!2263269 () Bool)

(declare-fun c!1353927 () Bool)

(declare-fun isEmpty!40726 (List!70924) Bool)

(assert (=> d!2263269 (= c!1353927 (isEmpty!40726 (t!384996 s!7854)))))

(declare-fun e!4360947 () Bool)

(assert (=> d!2263269 (= (matchZipper!3708 lt!2595548 (t!384996 s!7854)) e!4360947)))

(declare-fun b!7272323 () Bool)

(declare-fun nullableZipper!3010 ((Set Context!15488)) Bool)

(assert (=> b!7272323 (= e!4360947 (nullableZipper!3010 lt!2595548))))

(declare-fun b!7272324 () Bool)

(declare-fun head!15008 (List!70924) C!37882)

(declare-fun tail!14513 (List!70924) List!70924)

(assert (=> b!7272324 (= e!4360947 (matchZipper!3708 (derivationStepZipper!3544 lt!2595548 (head!15008 (t!384996 s!7854))) (tail!14513 (t!384996 s!7854))))))

(assert (= (and d!2263269 c!1353927) b!7272323))

(assert (= (and d!2263269 (not c!1353927)) b!7272324))

(declare-fun m!7958498 () Bool)

(assert (=> d!2263269 m!7958498))

(declare-fun m!7958500 () Bool)

(assert (=> b!7272323 m!7958500))

(declare-fun m!7958502 () Bool)

(assert (=> b!7272324 m!7958502))

(assert (=> b!7272324 m!7958502))

(declare-fun m!7958504 () Bool)

(assert (=> b!7272324 m!7958504))

(declare-fun m!7958506 () Bool)

(assert (=> b!7272324 m!7958506))

(assert (=> b!7272324 m!7958504))

(assert (=> b!7272324 m!7958506))

(declare-fun m!7958508 () Bool)

(assert (=> b!7272324 m!7958508))

(assert (=> b!7272246 d!2263269))

(declare-fun d!2263271 () Bool)

(declare-fun c!1353928 () Bool)

(assert (=> d!2263271 (= c!1353928 (isEmpty!40726 (t!384996 s!7854)))))

(declare-fun e!4360948 () Bool)

(assert (=> d!2263271 (= (matchZipper!3708 lt!2595547 (t!384996 s!7854)) e!4360948)))

(declare-fun b!7272325 () Bool)

(assert (=> b!7272325 (= e!4360948 (nullableZipper!3010 lt!2595547))))

(declare-fun b!7272326 () Bool)

(assert (=> b!7272326 (= e!4360948 (matchZipper!3708 (derivationStepZipper!3544 lt!2595547 (head!15008 (t!384996 s!7854))) (tail!14513 (t!384996 s!7854))))))

(assert (= (and d!2263271 c!1353928) b!7272325))

(assert (= (and d!2263271 (not c!1353928)) b!7272326))

(assert (=> d!2263271 m!7958498))

(declare-fun m!7958510 () Bool)

(assert (=> b!7272325 m!7958510))

(assert (=> b!7272326 m!7958502))

(assert (=> b!7272326 m!7958502))

(declare-fun m!7958512 () Bool)

(assert (=> b!7272326 m!7958512))

(assert (=> b!7272326 m!7958506))

(assert (=> b!7272326 m!7958512))

(assert (=> b!7272326 m!7958506))

(declare-fun m!7958514 () Bool)

(assert (=> b!7272326 m!7958514))

(assert (=> b!7272246 d!2263271))

(declare-fun d!2263273 () Bool)

(assert (=> d!2263273 (forall!17633 (++!16704 lt!2595542 (exprs!8244 ct2!346)) lambda!448938)))

(declare-fun lt!2595670 () Unit!164226)

(declare-fun choose!56424 (List!70923 List!70923 Int) Unit!164226)

(assert (=> d!2263273 (= lt!2595670 (choose!56424 lt!2595542 (exprs!8244 ct2!346) lambda!448938))))

(assert (=> d!2263273 (forall!17633 lt!2595542 lambda!448938)))

(assert (=> d!2263273 (= (lemmaConcatPreservesForall!1561 lt!2595542 (exprs!8244 ct2!346) lambda!448938) lt!2595670)))

(declare-fun bs!1911322 () Bool)

(assert (= bs!1911322 d!2263273))

(assert (=> bs!1911322 m!7958396))

(assert (=> bs!1911322 m!7958396))

(declare-fun m!7958516 () Bool)

(assert (=> bs!1911322 m!7958516))

(declare-fun m!7958518 () Bool)

(assert (=> bs!1911322 m!7958518))

(declare-fun m!7958520 () Bool)

(assert (=> bs!1911322 m!7958520))

(assert (=> b!7272246 d!2263273))

(declare-fun d!2263275 () Bool)

(declare-fun e!4360951 () Bool)

(assert (=> d!2263275 (= (matchZipper!3708 (set.union lt!2595548 lt!2595569) (t!384996 s!7854)) e!4360951)))

(declare-fun res!2947999 () Bool)

(assert (=> d!2263275 (=> res!2947999 e!4360951)))

(assert (=> d!2263275 (= res!2947999 (matchZipper!3708 lt!2595548 (t!384996 s!7854)))))

(declare-fun lt!2595673 () Unit!164226)

(declare-fun choose!56425 ((Set Context!15488) (Set Context!15488) List!70924) Unit!164226)

(assert (=> d!2263275 (= lt!2595673 (choose!56425 lt!2595548 lt!2595569 (t!384996 s!7854)))))

(assert (=> d!2263275 (= (lemmaZipperConcatMatchesSameAsBothZippers!1777 lt!2595548 lt!2595569 (t!384996 s!7854)) lt!2595673)))

(declare-fun b!7272329 () Bool)

(assert (=> b!7272329 (= e!4360951 (matchZipper!3708 lt!2595569 (t!384996 s!7854)))))

(assert (= (and d!2263275 (not res!2947999)) b!7272329))

(declare-fun m!7958522 () Bool)

(assert (=> d!2263275 m!7958522))

(assert (=> d!2263275 m!7958370))

(declare-fun m!7958524 () Bool)

(assert (=> d!2263275 m!7958524))

(assert (=> b!7272329 m!7958360))

(assert (=> b!7272246 d!2263275))

(declare-fun d!2263277 () Bool)

(assert (=> d!2263277 (forall!17633 (++!16704 (exprs!8244 ct1!250) (exprs!8244 ct2!346)) lambda!448938)))

(declare-fun lt!2595674 () Unit!164226)

(assert (=> d!2263277 (= lt!2595674 (choose!56424 (exprs!8244 ct1!250) (exprs!8244 ct2!346) lambda!448938))))

(assert (=> d!2263277 (forall!17633 (exprs!8244 ct1!250) lambda!448938)))

(assert (=> d!2263277 (= (lemmaConcatPreservesForall!1561 (exprs!8244 ct1!250) (exprs!8244 ct2!346) lambda!448938) lt!2595674)))

(declare-fun bs!1911323 () Bool)

(assert (= bs!1911323 d!2263277))

(assert (=> bs!1911323 m!7958390))

(assert (=> bs!1911323 m!7958390))

(declare-fun m!7958526 () Bool)

(assert (=> bs!1911323 m!7958526))

(declare-fun m!7958528 () Bool)

(assert (=> bs!1911323 m!7958528))

(assert (=> bs!1911323 m!7958398))

(assert (=> b!7272246 d!2263277))

(declare-fun d!2263279 () Bool)

(declare-fun c!1353929 () Bool)

(assert (=> d!2263279 (= c!1353929 (isEmpty!40726 s!7854))))

(declare-fun e!4360952 () Bool)

(assert (=> d!2263279 (= (matchZipper!3708 lt!2595552 s!7854) e!4360952)))

(declare-fun b!7272330 () Bool)

(assert (=> b!7272330 (= e!4360952 (nullableZipper!3010 lt!2595552))))

(declare-fun b!7272331 () Bool)

(assert (=> b!7272331 (= e!4360952 (matchZipper!3708 (derivationStepZipper!3544 lt!2595552 (head!15008 s!7854)) (tail!14513 s!7854)))))

(assert (= (and d!2263279 c!1353929) b!7272330))

(assert (= (and d!2263279 (not c!1353929)) b!7272331))

(declare-fun m!7958530 () Bool)

(assert (=> d!2263279 m!7958530))

(declare-fun m!7958532 () Bool)

(assert (=> b!7272330 m!7958532))

(declare-fun m!7958534 () Bool)

(assert (=> b!7272331 m!7958534))

(assert (=> b!7272331 m!7958534))

(declare-fun m!7958536 () Bool)

(assert (=> b!7272331 m!7958536))

(declare-fun m!7958538 () Bool)

(assert (=> b!7272331 m!7958538))

(assert (=> b!7272331 m!7958536))

(assert (=> b!7272331 m!7958538))

(declare-fun m!7958540 () Bool)

(assert (=> b!7272331 m!7958540))

(assert (=> b!7272246 d!2263279))

(assert (=> b!7272241 d!2263273))

(declare-fun b!7272354 () Bool)

(declare-fun e!4360970 () (Set Context!15488))

(declare-fun e!4360968 () (Set Context!15488))

(assert (=> b!7272354 (= e!4360970 e!4360968)))

(declare-fun c!1353940 () Bool)

(assert (=> b!7272354 (= c!1353940 (is-Union!18804 (h!77247 (exprs!8244 ct1!250))))))

(declare-fun b!7272355 () Bool)

(declare-fun e!4360966 () (Set Context!15488))

(declare-fun call!663443 () (Set Context!15488))

(declare-fun call!663448 () (Set Context!15488))

(assert (=> b!7272355 (= e!4360966 (set.union call!663443 call!663448))))

(declare-fun c!1353941 () Bool)

(declare-fun c!1353942 () Bool)

(declare-fun call!663447 () List!70923)

(declare-fun bm!663438 () Bool)

(declare-fun $colon$colon!2978 (List!70923 Regex!18804) List!70923)

(assert (=> bm!663438 (= call!663447 ($colon$colon!2978 (exprs!8244 lt!2595568) (ite (or c!1353942 c!1353941) (regTwo!38120 (h!77247 (exprs!8244 ct1!250))) (h!77247 (exprs!8244 ct1!250)))))))

(declare-fun d!2263281 () Bool)

(declare-fun c!1353943 () Bool)

(assert (=> d!2263281 (= c!1353943 (and (is-ElementMatch!18804 (h!77247 (exprs!8244 ct1!250))) (= (c!1353910 (h!77247 (exprs!8244 ct1!250))) (h!77248 s!7854))))))

(assert (=> d!2263281 (= (derivationStepZipperDown!2738 (h!77247 (exprs!8244 ct1!250)) lt!2595568 (h!77248 s!7854)) e!4360970)))

(declare-fun b!7272356 () Bool)

(declare-fun c!1353944 () Bool)

(assert (=> b!7272356 (= c!1353944 (is-Star!18804 (h!77247 (exprs!8244 ct1!250))))))

(declare-fun e!4360965 () (Set Context!15488))

(declare-fun e!4360967 () (Set Context!15488))

(assert (=> b!7272356 (= e!4360965 e!4360967)))

(declare-fun bm!663439 () Bool)

(assert (=> bm!663439 (= call!663443 (derivationStepZipperDown!2738 (ite c!1353940 (regOne!38121 (h!77247 (exprs!8244 ct1!250))) (regOne!38120 (h!77247 (exprs!8244 ct1!250)))) (ite c!1353940 lt!2595568 (Context!15489 call!663447)) (h!77248 s!7854)))))

(declare-fun b!7272357 () Bool)

(declare-fun call!663444 () (Set Context!15488))

(assert (=> b!7272357 (= e!4360967 call!663444)))

(declare-fun b!7272358 () Bool)

(declare-fun e!4360969 () Bool)

(assert (=> b!7272358 (= c!1353942 e!4360969)))

(declare-fun res!2948002 () Bool)

(assert (=> b!7272358 (=> (not res!2948002) (not e!4360969))))

(assert (=> b!7272358 (= res!2948002 (is-Concat!27649 (h!77247 (exprs!8244 ct1!250))))))

(assert (=> b!7272358 (= e!4360968 e!4360966)))

(declare-fun b!7272359 () Bool)

(assert (=> b!7272359 (= e!4360966 e!4360965)))

(assert (=> b!7272359 (= c!1353941 (is-Concat!27649 (h!77247 (exprs!8244 ct1!250))))))

(declare-fun bm!663440 () Bool)

(declare-fun call!663445 () (Set Context!15488))

(assert (=> bm!663440 (= call!663448 call!663445)))

(declare-fun b!7272360 () Bool)

(assert (=> b!7272360 (= e!4360970 (set.insert lt!2595568 (as set.empty (Set Context!15488))))))

(declare-fun b!7272361 () Bool)

(assert (=> b!7272361 (= e!4360967 (as set.empty (Set Context!15488)))))

(declare-fun b!7272362 () Bool)

(assert (=> b!7272362 (= e!4360965 call!663444)))

(declare-fun bm!663441 () Bool)

(declare-fun call!663446 () List!70923)

(assert (=> bm!663441 (= call!663446 call!663447)))

(declare-fun bm!663442 () Bool)

(assert (=> bm!663442 (= call!663444 call!663448)))

(declare-fun b!7272363 () Bool)

(assert (=> b!7272363 (= e!4360969 (nullable!8004 (regOne!38120 (h!77247 (exprs!8244 ct1!250)))))))

(declare-fun bm!663443 () Bool)

(assert (=> bm!663443 (= call!663445 (derivationStepZipperDown!2738 (ite c!1353940 (regTwo!38121 (h!77247 (exprs!8244 ct1!250))) (ite c!1353942 (regTwo!38120 (h!77247 (exprs!8244 ct1!250))) (ite c!1353941 (regOne!38120 (h!77247 (exprs!8244 ct1!250))) (reg!19133 (h!77247 (exprs!8244 ct1!250)))))) (ite (or c!1353940 c!1353942) lt!2595568 (Context!15489 call!663446)) (h!77248 s!7854)))))

(declare-fun b!7272364 () Bool)

(assert (=> b!7272364 (= e!4360968 (set.union call!663443 call!663445))))

(assert (= (and d!2263281 c!1353943) b!7272360))

(assert (= (and d!2263281 (not c!1353943)) b!7272354))

(assert (= (and b!7272354 c!1353940) b!7272364))

(assert (= (and b!7272354 (not c!1353940)) b!7272358))

(assert (= (and b!7272358 res!2948002) b!7272363))

(assert (= (and b!7272358 c!1353942) b!7272355))

(assert (= (and b!7272358 (not c!1353942)) b!7272359))

(assert (= (and b!7272359 c!1353941) b!7272362))

(assert (= (and b!7272359 (not c!1353941)) b!7272356))

(assert (= (and b!7272356 c!1353944) b!7272357))

(assert (= (and b!7272356 (not c!1353944)) b!7272361))

(assert (= (or b!7272362 b!7272357) bm!663441))

(assert (= (or b!7272362 b!7272357) bm!663442))

(assert (= (or b!7272355 bm!663441) bm!663438))

(assert (= (or b!7272355 bm!663442) bm!663440))

(assert (= (or b!7272364 b!7272355) bm!663439))

(assert (= (or b!7272364 bm!663440) bm!663443))

(assert (=> b!7272360 m!7958356))

(declare-fun m!7958542 () Bool)

(assert (=> b!7272363 m!7958542))

(declare-fun m!7958544 () Bool)

(assert (=> bm!663443 m!7958544))

(declare-fun m!7958546 () Bool)

(assert (=> bm!663439 m!7958546))

(declare-fun m!7958548 () Bool)

(assert (=> bm!663438 m!7958548))

(assert (=> b!7272241 d!2263281))

(declare-fun d!2263283 () Bool)

(declare-fun c!1353945 () Bool)

(declare-fun e!4360971 () Bool)

(assert (=> d!2263283 (= c!1353945 e!4360971)))

(declare-fun res!2948003 () Bool)

(assert (=> d!2263283 (=> (not res!2948003) (not e!4360971))))

(assert (=> d!2263283 (= res!2948003 (is-Cons!70799 (exprs!8244 lt!2595568)))))

(declare-fun e!4360972 () (Set Context!15488))

(assert (=> d!2263283 (= (derivationStepZipperUp!2574 lt!2595568 (h!77248 s!7854)) e!4360972)))

(declare-fun b!7272365 () Bool)

(declare-fun e!4360973 () (Set Context!15488))

(assert (=> b!7272365 (= e!4360973 (as set.empty (Set Context!15488)))))

(declare-fun b!7272366 () Bool)

(assert (=> b!7272366 (= e!4360972 e!4360973)))

(declare-fun c!1353946 () Bool)

(assert (=> b!7272366 (= c!1353946 (is-Cons!70799 (exprs!8244 lt!2595568)))))

(declare-fun call!663449 () (Set Context!15488))

(declare-fun b!7272367 () Bool)

(assert (=> b!7272367 (= e!4360972 (set.union call!663449 (derivationStepZipperUp!2574 (Context!15489 (t!384995 (exprs!8244 lt!2595568))) (h!77248 s!7854))))))

(declare-fun b!7272368 () Bool)

(assert (=> b!7272368 (= e!4360973 call!663449)))

(declare-fun b!7272369 () Bool)

(assert (=> b!7272369 (= e!4360971 (nullable!8004 (h!77247 (exprs!8244 lt!2595568))))))

(declare-fun bm!663444 () Bool)

(assert (=> bm!663444 (= call!663449 (derivationStepZipperDown!2738 (h!77247 (exprs!8244 lt!2595568)) (Context!15489 (t!384995 (exprs!8244 lt!2595568))) (h!77248 s!7854)))))

(assert (= (and d!2263283 res!2948003) b!7272369))

(assert (= (and d!2263283 c!1353945) b!7272367))

(assert (= (and d!2263283 (not c!1353945)) b!7272366))

(assert (= (and b!7272366 c!1353946) b!7272368))

(assert (= (and b!7272366 (not c!1353946)) b!7272365))

(assert (= (or b!7272367 b!7272368) bm!663444))

(declare-fun m!7958550 () Bool)

(assert (=> b!7272367 m!7958550))

(declare-fun m!7958552 () Bool)

(assert (=> b!7272369 m!7958552))

(declare-fun m!7958554 () Bool)

(assert (=> bm!663444 m!7958554))

(assert (=> b!7272241 d!2263283))

(declare-fun b!7272379 () Bool)

(declare-fun e!4360978 () List!70923)

(assert (=> b!7272379 (= e!4360978 (Cons!70799 (h!77247 lt!2595542) (++!16704 (t!384995 lt!2595542) (exprs!8244 ct2!346))))))

(declare-fun lt!2595677 () List!70923)

(declare-fun b!7272381 () Bool)

(declare-fun e!4360979 () Bool)

(assert (=> b!7272381 (= e!4360979 (or (not (= (exprs!8244 ct2!346) Nil!70799)) (= lt!2595677 lt!2595542)))))

(declare-fun d!2263285 () Bool)

(assert (=> d!2263285 e!4360979))

(declare-fun res!2948008 () Bool)

(assert (=> d!2263285 (=> (not res!2948008) (not e!4360979))))

(declare-fun content!14781 (List!70923) (Set Regex!18804))

(assert (=> d!2263285 (= res!2948008 (= (content!14781 lt!2595677) (set.union (content!14781 lt!2595542) (content!14781 (exprs!8244 ct2!346)))))))

(assert (=> d!2263285 (= lt!2595677 e!4360978)))

(declare-fun c!1353949 () Bool)

(assert (=> d!2263285 (= c!1353949 (is-Nil!70799 lt!2595542))))

(assert (=> d!2263285 (= (++!16704 lt!2595542 (exprs!8244 ct2!346)) lt!2595677)))

(declare-fun b!7272380 () Bool)

(declare-fun res!2948009 () Bool)

(assert (=> b!7272380 (=> (not res!2948009) (not e!4360979))))

(declare-fun size!41829 (List!70923) Int)

(assert (=> b!7272380 (= res!2948009 (= (size!41829 lt!2595677) (+ (size!41829 lt!2595542) (size!41829 (exprs!8244 ct2!346)))))))

(declare-fun b!7272378 () Bool)

(assert (=> b!7272378 (= e!4360978 (exprs!8244 ct2!346))))

(assert (= (and d!2263285 c!1353949) b!7272378))

(assert (= (and d!2263285 (not c!1353949)) b!7272379))

(assert (= (and d!2263285 res!2948008) b!7272380))

(assert (= (and b!7272380 res!2948009) b!7272381))

(declare-fun m!7958556 () Bool)

(assert (=> b!7272379 m!7958556))

(declare-fun m!7958558 () Bool)

(assert (=> d!2263285 m!7958558))

(declare-fun m!7958560 () Bool)

(assert (=> d!2263285 m!7958560))

(declare-fun m!7958562 () Bool)

(assert (=> d!2263285 m!7958562))

(declare-fun m!7958564 () Bool)

(assert (=> b!7272380 m!7958564))

(declare-fun m!7958566 () Bool)

(assert (=> b!7272380 m!7958566))

(declare-fun m!7958568 () Bool)

(assert (=> b!7272380 m!7958568))

(assert (=> b!7272241 d!2263285))

(declare-fun d!2263287 () Bool)

(declare-fun c!1353950 () Bool)

(assert (=> d!2263287 (= c!1353950 (isEmpty!40726 s!7854))))

(declare-fun e!4360980 () Bool)

(assert (=> d!2263287 (= (matchZipper!3708 (set.insert ct2!346 (as set.empty (Set Context!15488))) s!7854) e!4360980)))

(declare-fun b!7272382 () Bool)

(assert (=> b!7272382 (= e!4360980 (nullableZipper!3010 (set.insert ct2!346 (as set.empty (Set Context!15488)))))))

(declare-fun b!7272383 () Bool)

(assert (=> b!7272383 (= e!4360980 (matchZipper!3708 (derivationStepZipper!3544 (set.insert ct2!346 (as set.empty (Set Context!15488))) (head!15008 s!7854)) (tail!14513 s!7854)))))

(assert (= (and d!2263287 c!1353950) b!7272382))

(assert (= (and d!2263287 (not c!1353950)) b!7272383))

(assert (=> d!2263287 m!7958530))

(assert (=> b!7272382 m!7958400))

(declare-fun m!7958570 () Bool)

(assert (=> b!7272382 m!7958570))

(assert (=> b!7272383 m!7958534))

(assert (=> b!7272383 m!7958400))

(assert (=> b!7272383 m!7958534))

(declare-fun m!7958572 () Bool)

(assert (=> b!7272383 m!7958572))

(assert (=> b!7272383 m!7958538))

(assert (=> b!7272383 m!7958572))

(assert (=> b!7272383 m!7958538))

(declare-fun m!7958574 () Bool)

(assert (=> b!7272383 m!7958574))

(assert (=> start!709792 d!2263287))

(declare-fun bs!1911324 () Bool)

(declare-fun d!2263289 () Bool)

(assert (= bs!1911324 (and d!2263289 b!7272247)))

(declare-fun lambda!448983 () Int)

(assert (=> bs!1911324 (= lambda!448983 lambda!448938)))

(declare-fun bs!1911325 () Bool)

(assert (= bs!1911325 (and d!2263289 d!2263259)))

(assert (=> bs!1911325 (not (= lambda!448983 lambda!448980))))

(assert (=> d!2263289 (= (inv!90021 ct2!346) (forall!17633 (exprs!8244 ct2!346) lambda!448983))))

(declare-fun bs!1911326 () Bool)

(assert (= bs!1911326 d!2263289))

(declare-fun m!7958576 () Bool)

(assert (=> bs!1911326 m!7958576))

(assert (=> start!709792 d!2263289))

(declare-fun bs!1911327 () Bool)

(declare-fun d!2263291 () Bool)

(assert (= bs!1911327 (and d!2263291 b!7272247)))

(declare-fun lambda!448984 () Int)

(assert (=> bs!1911327 (= lambda!448984 lambda!448938)))

(declare-fun bs!1911328 () Bool)

(assert (= bs!1911328 (and d!2263291 d!2263259)))

(assert (=> bs!1911328 (not (= lambda!448984 lambda!448980))))

(declare-fun bs!1911329 () Bool)

(assert (= bs!1911329 (and d!2263291 d!2263289)))

(assert (=> bs!1911329 (= lambda!448984 lambda!448983)))

(assert (=> d!2263291 (= (inv!90021 ct1!250) (forall!17633 (exprs!8244 ct1!250) lambda!448984))))

(declare-fun bs!1911330 () Bool)

(assert (= bs!1911330 d!2263291))

(declare-fun m!7958578 () Bool)

(assert (=> bs!1911330 m!7958578))

(assert (=> start!709792 d!2263291))

(declare-fun bs!1911331 () Bool)

(declare-fun d!2263293 () Bool)

(assert (= bs!1911331 (and d!2263293 b!7272247)))

(declare-fun lambda!448987 () Int)

(assert (=> bs!1911331 (= lambda!448987 lambda!448939)))

(assert (=> d!2263293 true))

(assert (=> d!2263293 (= (derivationStepZipper!3544 lt!2595552 (h!77248 s!7854)) (flatMap!2917 lt!2595552 lambda!448987))))

(declare-fun bs!1911332 () Bool)

(assert (= bs!1911332 d!2263293))

(declare-fun m!7958580 () Bool)

(assert (=> bs!1911332 m!7958580))

(assert (=> b!7272247 d!2263293))

(declare-fun d!2263295 () Bool)

(declare-fun c!1353953 () Bool)

(declare-fun e!4360981 () Bool)

(assert (=> d!2263295 (= c!1353953 e!4360981)))

(declare-fun res!2948010 () Bool)

(assert (=> d!2263295 (=> (not res!2948010) (not e!4360981))))

(assert (=> d!2263295 (= res!2948010 (is-Cons!70799 (exprs!8244 lt!2595561)))))

(declare-fun e!4360982 () (Set Context!15488))

(assert (=> d!2263295 (= (derivationStepZipperUp!2574 lt!2595561 (h!77248 s!7854)) e!4360982)))

(declare-fun b!7272386 () Bool)

(declare-fun e!4360983 () (Set Context!15488))

(assert (=> b!7272386 (= e!4360983 (as set.empty (Set Context!15488)))))

(declare-fun b!7272387 () Bool)

(assert (=> b!7272387 (= e!4360982 e!4360983)))

(declare-fun c!1353954 () Bool)

(assert (=> b!7272387 (= c!1353954 (is-Cons!70799 (exprs!8244 lt!2595561)))))

(declare-fun call!663450 () (Set Context!15488))

(declare-fun b!7272388 () Bool)

(assert (=> b!7272388 (= e!4360982 (set.union call!663450 (derivationStepZipperUp!2574 (Context!15489 (t!384995 (exprs!8244 lt!2595561))) (h!77248 s!7854))))))

(declare-fun b!7272389 () Bool)

(assert (=> b!7272389 (= e!4360983 call!663450)))

(declare-fun b!7272390 () Bool)

(assert (=> b!7272390 (= e!4360981 (nullable!8004 (h!77247 (exprs!8244 lt!2595561))))))

(declare-fun bm!663445 () Bool)

(assert (=> bm!663445 (= call!663450 (derivationStepZipperDown!2738 (h!77247 (exprs!8244 lt!2595561)) (Context!15489 (t!384995 (exprs!8244 lt!2595561))) (h!77248 s!7854)))))

(assert (= (and d!2263295 res!2948010) b!7272390))

(assert (= (and d!2263295 c!1353953) b!7272388))

(assert (= (and d!2263295 (not c!1353953)) b!7272387))

(assert (= (and b!7272387 c!1353954) b!7272389))

(assert (= (and b!7272387 (not c!1353954)) b!7272386))

(assert (= (or b!7272388 b!7272389) bm!663445))

(declare-fun m!7958582 () Bool)

(assert (=> b!7272388 m!7958582))

(declare-fun m!7958584 () Bool)

(assert (=> b!7272390 m!7958584))

(declare-fun m!7958586 () Bool)

(assert (=> bm!663445 m!7958586))

(assert (=> b!7272247 d!2263295))

(declare-fun d!2263297 () Bool)

(declare-fun choose!56426 ((Set Context!15488) Int) (Set Context!15488))

(assert (=> d!2263297 (= (flatMap!2917 lt!2595552 lambda!448939) (choose!56426 lt!2595552 lambda!448939))))

(declare-fun bs!1911333 () Bool)

(assert (= bs!1911333 d!2263297))

(declare-fun m!7958588 () Bool)

(assert (=> bs!1911333 m!7958588))

(assert (=> b!7272247 d!2263297))

(assert (=> b!7272247 d!2263263))

(declare-fun b!7272392 () Bool)

(declare-fun e!4360984 () List!70923)

(assert (=> b!7272392 (= e!4360984 (Cons!70799 (h!77247 (exprs!8244 ct1!250)) (++!16704 (t!384995 (exprs!8244 ct1!250)) (exprs!8244 ct2!346))))))

(declare-fun b!7272394 () Bool)

(declare-fun e!4360985 () Bool)

(declare-fun lt!2595678 () List!70923)

(assert (=> b!7272394 (= e!4360985 (or (not (= (exprs!8244 ct2!346) Nil!70799)) (= lt!2595678 (exprs!8244 ct1!250))))))

(declare-fun d!2263299 () Bool)

(assert (=> d!2263299 e!4360985))

(declare-fun res!2948011 () Bool)

(assert (=> d!2263299 (=> (not res!2948011) (not e!4360985))))

(assert (=> d!2263299 (= res!2948011 (= (content!14781 lt!2595678) (set.union (content!14781 (exprs!8244 ct1!250)) (content!14781 (exprs!8244 ct2!346)))))))

(assert (=> d!2263299 (= lt!2595678 e!4360984)))

(declare-fun c!1353955 () Bool)

(assert (=> d!2263299 (= c!1353955 (is-Nil!70799 (exprs!8244 ct1!250)))))

(assert (=> d!2263299 (= (++!16704 (exprs!8244 ct1!250) (exprs!8244 ct2!346)) lt!2595678)))

(declare-fun b!7272393 () Bool)

(declare-fun res!2948012 () Bool)

(assert (=> b!7272393 (=> (not res!2948012) (not e!4360985))))

(assert (=> b!7272393 (= res!2948012 (= (size!41829 lt!2595678) (+ (size!41829 (exprs!8244 ct1!250)) (size!41829 (exprs!8244 ct2!346)))))))

(declare-fun b!7272391 () Bool)

(assert (=> b!7272391 (= e!4360984 (exprs!8244 ct2!346))))

(assert (= (and d!2263299 c!1353955) b!7272391))

(assert (= (and d!2263299 (not c!1353955)) b!7272392))

(assert (= (and d!2263299 res!2948011) b!7272393))

(assert (= (and b!7272393 res!2948012) b!7272394))

(declare-fun m!7958590 () Bool)

(assert (=> b!7272392 m!7958590))

(declare-fun m!7958592 () Bool)

(assert (=> d!2263299 m!7958592))

(declare-fun m!7958594 () Bool)

(assert (=> d!2263299 m!7958594))

(assert (=> d!2263299 m!7958562))

(declare-fun m!7958596 () Bool)

(assert (=> b!7272393 m!7958596))

(declare-fun m!7958598 () Bool)

(assert (=> b!7272393 m!7958598))

(assert (=> b!7272393 m!7958568))

(assert (=> b!7272247 d!2263299))

(declare-fun d!2263301 () Bool)

(assert (=> d!2263301 (= (flatMap!2917 lt!2595543 lambda!448939) (choose!56426 lt!2595543 lambda!448939))))

(declare-fun bs!1911334 () Bool)

(assert (= bs!1911334 d!2263301))

(declare-fun m!7958600 () Bool)

(assert (=> bs!1911334 m!7958600))

(assert (=> b!7272247 d!2263301))

(assert (=> b!7272247 d!2263277))

(declare-fun d!2263303 () Bool)

(declare-fun dynLambda!28944 (Int Context!15488) (Set Context!15488))

(assert (=> d!2263303 (= (flatMap!2917 lt!2595543 lambda!448939) (dynLambda!28944 lambda!448939 ct1!250))))

(declare-fun lt!2595681 () Unit!164226)

(declare-fun choose!56427 ((Set Context!15488) Context!15488 Int) Unit!164226)

(assert (=> d!2263303 (= lt!2595681 (choose!56427 lt!2595543 ct1!250 lambda!448939))))

(assert (=> d!2263303 (= lt!2595543 (set.insert ct1!250 (as set.empty (Set Context!15488))))))

(assert (=> d!2263303 (= (lemmaFlatMapOnSingletonSet!2317 lt!2595543 ct1!250 lambda!448939) lt!2595681)))

(declare-fun b_lambda!280439 () Bool)

(assert (=> (not b_lambda!280439) (not d!2263303)))

(declare-fun bs!1911335 () Bool)

(assert (= bs!1911335 d!2263303))

(assert (=> bs!1911335 m!7958376))

(declare-fun m!7958602 () Bool)

(assert (=> bs!1911335 m!7958602))

(declare-fun m!7958604 () Bool)

(assert (=> bs!1911335 m!7958604))

(assert (=> bs!1911335 m!7958392))

(assert (=> b!7272247 d!2263303))

(declare-fun d!2263305 () Bool)

(assert (=> d!2263305 (= (flatMap!2917 lt!2595552 lambda!448939) (dynLambda!28944 lambda!448939 lt!2595561))))

(declare-fun lt!2595682 () Unit!164226)

(assert (=> d!2263305 (= lt!2595682 (choose!56427 lt!2595552 lt!2595561 lambda!448939))))

(assert (=> d!2263305 (= lt!2595552 (set.insert lt!2595561 (as set.empty (Set Context!15488))))))

(assert (=> d!2263305 (= (lemmaFlatMapOnSingletonSet!2317 lt!2595552 lt!2595561 lambda!448939) lt!2595682)))

(declare-fun b_lambda!280441 () Bool)

(assert (=> (not b_lambda!280441) (not d!2263305)))

(declare-fun bs!1911336 () Bool)

(assert (= bs!1911336 d!2263305))

(assert (=> bs!1911336 m!7958384))

(declare-fun m!7958606 () Bool)

(assert (=> bs!1911336 m!7958606))

(declare-fun m!7958608 () Bool)

(assert (=> bs!1911336 m!7958608))

(assert (=> bs!1911336 m!7958388))

(assert (=> b!7272247 d!2263305))

(declare-fun b!7272395 () Bool)

(declare-fun e!4360991 () (Set Context!15488))

(declare-fun e!4360989 () (Set Context!15488))

(assert (=> b!7272395 (= e!4360991 e!4360989)))

(declare-fun c!1353956 () Bool)

(assert (=> b!7272395 (= c!1353956 (is-Union!18804 (h!77247 (exprs!8244 ct1!250))))))

(declare-fun b!7272396 () Bool)

(declare-fun e!4360987 () (Set Context!15488))

(declare-fun call!663451 () (Set Context!15488))

(declare-fun call!663456 () (Set Context!15488))

(assert (=> b!7272396 (= e!4360987 (set.union call!663451 call!663456))))

(declare-fun bm!663446 () Bool)

(declare-fun c!1353957 () Bool)

(declare-fun c!1353958 () Bool)

(declare-fun call!663455 () List!70923)

(assert (=> bm!663446 (= call!663455 ($colon$colon!2978 (exprs!8244 lt!2595564) (ite (or c!1353958 c!1353957) (regTwo!38120 (h!77247 (exprs!8244 ct1!250))) (h!77247 (exprs!8244 ct1!250)))))))

(declare-fun d!2263307 () Bool)

(declare-fun c!1353959 () Bool)

(assert (=> d!2263307 (= c!1353959 (and (is-ElementMatch!18804 (h!77247 (exprs!8244 ct1!250))) (= (c!1353910 (h!77247 (exprs!8244 ct1!250))) (h!77248 s!7854))))))

(assert (=> d!2263307 (= (derivationStepZipperDown!2738 (h!77247 (exprs!8244 ct1!250)) lt!2595564 (h!77248 s!7854)) e!4360991)))

(declare-fun b!7272397 () Bool)

(declare-fun c!1353960 () Bool)

(assert (=> b!7272397 (= c!1353960 (is-Star!18804 (h!77247 (exprs!8244 ct1!250))))))

(declare-fun e!4360986 () (Set Context!15488))

(declare-fun e!4360988 () (Set Context!15488))

(assert (=> b!7272397 (= e!4360986 e!4360988)))

(declare-fun bm!663447 () Bool)

(assert (=> bm!663447 (= call!663451 (derivationStepZipperDown!2738 (ite c!1353956 (regOne!38121 (h!77247 (exprs!8244 ct1!250))) (regOne!38120 (h!77247 (exprs!8244 ct1!250)))) (ite c!1353956 lt!2595564 (Context!15489 call!663455)) (h!77248 s!7854)))))

(declare-fun b!7272398 () Bool)

(declare-fun call!663452 () (Set Context!15488))

(assert (=> b!7272398 (= e!4360988 call!663452)))

(declare-fun b!7272399 () Bool)

(declare-fun e!4360990 () Bool)

(assert (=> b!7272399 (= c!1353958 e!4360990)))

(declare-fun res!2948013 () Bool)

(assert (=> b!7272399 (=> (not res!2948013) (not e!4360990))))

(assert (=> b!7272399 (= res!2948013 (is-Concat!27649 (h!77247 (exprs!8244 ct1!250))))))

(assert (=> b!7272399 (= e!4360989 e!4360987)))

(declare-fun b!7272400 () Bool)

(assert (=> b!7272400 (= e!4360987 e!4360986)))

(assert (=> b!7272400 (= c!1353957 (is-Concat!27649 (h!77247 (exprs!8244 ct1!250))))))

(declare-fun bm!663448 () Bool)

(declare-fun call!663453 () (Set Context!15488))

(assert (=> bm!663448 (= call!663456 call!663453)))

(declare-fun b!7272401 () Bool)

(assert (=> b!7272401 (= e!4360991 (set.insert lt!2595564 (as set.empty (Set Context!15488))))))

(declare-fun b!7272402 () Bool)

(assert (=> b!7272402 (= e!4360988 (as set.empty (Set Context!15488)))))

(declare-fun b!7272403 () Bool)

(assert (=> b!7272403 (= e!4360986 call!663452)))

(declare-fun bm!663449 () Bool)

(declare-fun call!663454 () List!70923)

(assert (=> bm!663449 (= call!663454 call!663455)))

(declare-fun bm!663450 () Bool)

(assert (=> bm!663450 (= call!663452 call!663456)))

(declare-fun b!7272404 () Bool)

(assert (=> b!7272404 (= e!4360990 (nullable!8004 (regOne!38120 (h!77247 (exprs!8244 ct1!250)))))))

(declare-fun bm!663451 () Bool)

(assert (=> bm!663451 (= call!663453 (derivationStepZipperDown!2738 (ite c!1353956 (regTwo!38121 (h!77247 (exprs!8244 ct1!250))) (ite c!1353958 (regTwo!38120 (h!77247 (exprs!8244 ct1!250))) (ite c!1353957 (regOne!38120 (h!77247 (exprs!8244 ct1!250))) (reg!19133 (h!77247 (exprs!8244 ct1!250)))))) (ite (or c!1353956 c!1353958) lt!2595564 (Context!15489 call!663454)) (h!77248 s!7854)))))

(declare-fun b!7272405 () Bool)

(assert (=> b!7272405 (= e!4360989 (set.union call!663451 call!663453))))

(assert (= (and d!2263307 c!1353959) b!7272401))

(assert (= (and d!2263307 (not c!1353959)) b!7272395))

(assert (= (and b!7272395 c!1353956) b!7272405))

(assert (= (and b!7272395 (not c!1353956)) b!7272399))

(assert (= (and b!7272399 res!2948013) b!7272404))

(assert (= (and b!7272399 c!1353958) b!7272396))

(assert (= (and b!7272399 (not c!1353958)) b!7272400))

(assert (= (and b!7272400 c!1353957) b!7272403))

(assert (= (and b!7272400 (not c!1353957)) b!7272397))

(assert (= (and b!7272397 c!1353960) b!7272398))

(assert (= (and b!7272397 (not c!1353960)) b!7272402))

(assert (= (or b!7272403 b!7272398) bm!663449))

(assert (= (or b!7272403 b!7272398) bm!663450))

(assert (= (or b!7272396 bm!663449) bm!663446))

(assert (= (or b!7272396 bm!663450) bm!663448))

(assert (= (or b!7272405 b!7272396) bm!663447))

(assert (= (or b!7272405 bm!663448) bm!663451))

(declare-fun m!7958610 () Bool)

(assert (=> b!7272401 m!7958610))

(assert (=> b!7272404 m!7958542))

(declare-fun m!7958612 () Bool)

(assert (=> bm!663451 m!7958612))

(declare-fun m!7958614 () Bool)

(assert (=> bm!663447 m!7958614))

(declare-fun m!7958616 () Bool)

(assert (=> bm!663446 m!7958616))

(assert (=> b!7272245 d!2263307))

(declare-fun d!2263309 () Bool)

(declare-fun c!1353961 () Bool)

(declare-fun e!4360992 () Bool)

(assert (=> d!2263309 (= c!1353961 e!4360992)))

(declare-fun res!2948014 () Bool)

(assert (=> d!2263309 (=> (not res!2948014) (not e!4360992))))

(assert (=> d!2263309 (= res!2948014 (is-Cons!70799 (exprs!8244 lt!2595564)))))

(declare-fun e!4360993 () (Set Context!15488))

(assert (=> d!2263309 (= (derivationStepZipperUp!2574 lt!2595564 (h!77248 s!7854)) e!4360993)))

(declare-fun b!7272406 () Bool)

(declare-fun e!4360994 () (Set Context!15488))

(assert (=> b!7272406 (= e!4360994 (as set.empty (Set Context!15488)))))

(declare-fun b!7272407 () Bool)

(assert (=> b!7272407 (= e!4360993 e!4360994)))

(declare-fun c!1353962 () Bool)

(assert (=> b!7272407 (= c!1353962 (is-Cons!70799 (exprs!8244 lt!2595564)))))

(declare-fun b!7272408 () Bool)

(declare-fun call!663457 () (Set Context!15488))

(assert (=> b!7272408 (= e!4360993 (set.union call!663457 (derivationStepZipperUp!2574 (Context!15489 (t!384995 (exprs!8244 lt!2595564))) (h!77248 s!7854))))))

(declare-fun b!7272409 () Bool)

(assert (=> b!7272409 (= e!4360994 call!663457)))

(declare-fun b!7272410 () Bool)

(assert (=> b!7272410 (= e!4360992 (nullable!8004 (h!77247 (exprs!8244 lt!2595564))))))

(declare-fun bm!663452 () Bool)

(assert (=> bm!663452 (= call!663457 (derivationStepZipperDown!2738 (h!77247 (exprs!8244 lt!2595564)) (Context!15489 (t!384995 (exprs!8244 lt!2595564))) (h!77248 s!7854)))))

(assert (= (and d!2263309 res!2948014) b!7272410))

(assert (= (and d!2263309 c!1353961) b!7272408))

(assert (= (and d!2263309 (not c!1353961)) b!7272407))

(assert (= (and b!7272407 c!1353962) b!7272409))

(assert (= (and b!7272407 (not c!1353962)) b!7272406))

(assert (= (or b!7272408 b!7272409) bm!663452))

(declare-fun m!7958618 () Bool)

(assert (=> b!7272408 m!7958618))

(declare-fun m!7958620 () Bool)

(assert (=> b!7272410 m!7958620))

(declare-fun m!7958622 () Bool)

(assert (=> bm!663452 m!7958622))

(assert (=> b!7272245 d!2263309))

(declare-fun bs!1911337 () Bool)

(declare-fun d!2263311 () Bool)

(assert (= bs!1911337 (and d!2263311 b!7272247)))

(declare-fun lambda!448990 () Int)

(assert (=> bs!1911337 (= lambda!448990 lambda!448938)))

(declare-fun bs!1911338 () Bool)

(assert (= bs!1911338 (and d!2263311 d!2263259)))

(assert (=> bs!1911338 (not (= lambda!448990 lambda!448980))))

(declare-fun bs!1911339 () Bool)

(assert (= bs!1911339 (and d!2263311 d!2263289)))

(assert (=> bs!1911339 (= lambda!448990 lambda!448983)))

(declare-fun bs!1911340 () Bool)

(assert (= bs!1911340 (and d!2263311 d!2263291)))

(assert (=> bs!1911340 (= lambda!448990 lambda!448984)))

(assert (=> d!2263311 (matchZipper!3708 (set.insert (Context!15489 (++!16704 (exprs!8244 lt!2595564) (exprs!8244 ct2!346))) (as set.empty (Set Context!15488))) s!7854)))

(declare-fun lt!2595688 () Unit!164226)

(assert (=> d!2263311 (= lt!2595688 (lemmaConcatPreservesForall!1561 (exprs!8244 lt!2595564) (exprs!8244 ct2!346) lambda!448990))))

(declare-fun lt!2595687 () Unit!164226)

(declare-fun choose!56428 (Context!15488 Context!15488 List!70924) Unit!164226)

(assert (=> d!2263311 (= lt!2595687 (choose!56428 lt!2595564 ct2!346 s!7854))))

(assert (=> d!2263311 (matchZipper!3708 (set.insert ct2!346 (as set.empty (Set Context!15488))) s!7854)))

(assert (=> d!2263311 (= (lemmaPrependingNullableCtxStillMatches!41 lt!2595564 ct2!346 s!7854) lt!2595687)))

(declare-fun bs!1911341 () Bool)

(assert (= bs!1911341 d!2263311))

(declare-fun m!7958624 () Bool)

(assert (=> bs!1911341 m!7958624))

(declare-fun m!7958626 () Bool)

(assert (=> bs!1911341 m!7958626))

(declare-fun m!7958628 () Bool)

(assert (=> bs!1911341 m!7958628))

(declare-fun m!7958630 () Bool)

(assert (=> bs!1911341 m!7958630))

(assert (=> bs!1911341 m!7958400))

(declare-fun m!7958632 () Bool)

(assert (=> bs!1911341 m!7958632))

(assert (=> bs!1911341 m!7958628))

(assert (=> bs!1911341 m!7958400))

(assert (=> bs!1911341 m!7958402))

(assert (=> b!7272240 d!2263311))

(declare-fun d!2263313 () Bool)

(declare-fun c!1353963 () Bool)

(assert (=> d!2263313 (= c!1353963 (isEmpty!40726 (t!384996 s!7854)))))

(declare-fun e!4360995 () Bool)

(assert (=> d!2263313 (= (matchZipper!3708 lt!2595569 (t!384996 s!7854)) e!4360995)))

(declare-fun b!7272411 () Bool)

(assert (=> b!7272411 (= e!4360995 (nullableZipper!3010 lt!2595569))))

(declare-fun b!7272412 () Bool)

(assert (=> b!7272412 (= e!4360995 (matchZipper!3708 (derivationStepZipper!3544 lt!2595569 (head!15008 (t!384996 s!7854))) (tail!14513 (t!384996 s!7854))))))

(assert (= (and d!2263313 c!1353963) b!7272411))

(assert (= (and d!2263313 (not c!1353963)) b!7272412))

(assert (=> d!2263313 m!7958498))

(declare-fun m!7958634 () Bool)

(assert (=> b!7272411 m!7958634))

(assert (=> b!7272412 m!7958502))

(assert (=> b!7272412 m!7958502))

(declare-fun m!7958636 () Bool)

(assert (=> b!7272412 m!7958636))

(assert (=> b!7272412 m!7958506))

(assert (=> b!7272412 m!7958636))

(assert (=> b!7272412 m!7958506))

(declare-fun m!7958638 () Bool)

(assert (=> b!7272412 m!7958638))

(assert (=> b!7272240 d!2263313))

(assert (=> b!7272240 d!2263273))

(declare-fun d!2263315 () Bool)

(assert (=> d!2263315 (= (flatMap!2917 lt!2595549 lambda!448939) (choose!56426 lt!2595549 lambda!448939))))

(declare-fun bs!1911342 () Bool)

(assert (= bs!1911342 d!2263315))

(declare-fun m!7958640 () Bool)

(assert (=> bs!1911342 m!7958640))

(assert (=> b!7272240 d!2263315))

(declare-fun d!2263317 () Bool)

(declare-fun c!1353964 () Bool)

(assert (=> d!2263317 (= c!1353964 (isEmpty!40726 s!7854))))

(declare-fun e!4360996 () Bool)

(assert (=> d!2263317 (= (matchZipper!3708 lt!2595549 s!7854) e!4360996)))

(declare-fun b!7272413 () Bool)

(assert (=> b!7272413 (= e!4360996 (nullableZipper!3010 lt!2595549))))

(declare-fun b!7272414 () Bool)

(assert (=> b!7272414 (= e!4360996 (matchZipper!3708 (derivationStepZipper!3544 lt!2595549 (head!15008 s!7854)) (tail!14513 s!7854)))))

(assert (= (and d!2263317 c!1353964) b!7272413))

(assert (= (and d!2263317 (not c!1353964)) b!7272414))

(assert (=> d!2263317 m!7958530))

(declare-fun m!7958642 () Bool)

(assert (=> b!7272413 m!7958642))

(assert (=> b!7272414 m!7958534))

(assert (=> b!7272414 m!7958534))

(declare-fun m!7958644 () Bool)

(assert (=> b!7272414 m!7958644))

(assert (=> b!7272414 m!7958538))

(assert (=> b!7272414 m!7958644))

(assert (=> b!7272414 m!7958538))

(declare-fun m!7958646 () Bool)

(assert (=> b!7272414 m!7958646))

(assert (=> b!7272240 d!2263317))

(declare-fun d!2263319 () Bool)

(assert (=> d!2263319 (= (flatMap!2917 lt!2595549 lambda!448939) (dynLambda!28944 lambda!448939 lt!2595568))))

(declare-fun lt!2595689 () Unit!164226)

(assert (=> d!2263319 (= lt!2595689 (choose!56427 lt!2595549 lt!2595568 lambda!448939))))

(assert (=> d!2263319 (= lt!2595549 (set.insert lt!2595568 (as set.empty (Set Context!15488))))))

(assert (=> d!2263319 (= (lemmaFlatMapOnSingletonSet!2317 lt!2595549 lt!2595568 lambda!448939) lt!2595689)))

(declare-fun b_lambda!280443 () Bool)

(assert (=> (not b_lambda!280443) (not d!2263319)))

(declare-fun bs!1911343 () Bool)

(assert (= bs!1911343 d!2263319))

(assert (=> bs!1911343 m!7958354))

(declare-fun m!7958648 () Bool)

(assert (=> bs!1911343 m!7958648))

(declare-fun m!7958650 () Bool)

(assert (=> bs!1911343 m!7958650))

(assert (=> bs!1911343 m!7958356))

(assert (=> b!7272240 d!2263319))

(assert (=> b!7272240 d!2263283))

(declare-fun b!7272419 () Bool)

(declare-fun e!4360999 () Bool)

(declare-fun tp!2041289 () Bool)

(declare-fun tp!2041290 () Bool)

(assert (=> b!7272419 (= e!4360999 (and tp!2041289 tp!2041290))))

(assert (=> b!7272238 (= tp!2041273 e!4360999)))

(assert (= (and b!7272238 (is-Cons!70799 (exprs!8244 ct1!250))) b!7272419))

(declare-fun b!7272420 () Bool)

(declare-fun e!4361000 () Bool)

(declare-fun tp!2041291 () Bool)

(declare-fun tp!2041292 () Bool)

(assert (=> b!7272420 (= e!4361000 (and tp!2041291 tp!2041292))))

(assert (=> b!7272244 (= tp!2041274 e!4361000)))

(assert (= (and b!7272244 (is-Cons!70799 (exprs!8244 ct2!346))) b!7272420))

(declare-fun b!7272425 () Bool)

(declare-fun e!4361003 () Bool)

(declare-fun tp!2041295 () Bool)

(assert (=> b!7272425 (= e!4361003 (and tp_is_empty!47073 tp!2041295))))

(assert (=> b!7272251 (= tp!2041275 e!4361003)))

(assert (= (and b!7272251 (is-Cons!70800 (t!384996 s!7854))) b!7272425))

(declare-fun b_lambda!280445 () Bool)

(assert (= b_lambda!280441 (or b!7272247 b_lambda!280445)))

(declare-fun bs!1911344 () Bool)

(declare-fun d!2263321 () Bool)

(assert (= bs!1911344 (and d!2263321 b!7272247)))

(assert (=> bs!1911344 (= (dynLambda!28944 lambda!448939 lt!2595561) (derivationStepZipperUp!2574 lt!2595561 (h!77248 s!7854)))))

(assert (=> bs!1911344 m!7958378))

(assert (=> d!2263305 d!2263321))

(declare-fun b_lambda!280447 () Bool)

(assert (= b_lambda!280437 (or b!7272247 b_lambda!280447)))

(declare-fun bs!1911345 () Bool)

(declare-fun d!2263323 () Bool)

(assert (= bs!1911345 (and d!2263323 b!7272247)))

(declare-fun validRegex!9589 (Regex!18804) Bool)

(assert (=> bs!1911345 (= (dynLambda!28943 lambda!448938 (h!77247 (exprs!8244 ct1!250))) (validRegex!9589 (h!77247 (exprs!8244 ct1!250))))))

(declare-fun m!7958652 () Bool)

(assert (=> bs!1911345 m!7958652))

(assert (=> b!7272302 d!2263323))

(declare-fun b_lambda!280449 () Bool)

(assert (= b_lambda!280439 (or b!7272247 b_lambda!280449)))

(declare-fun bs!1911346 () Bool)

(declare-fun d!2263325 () Bool)

(assert (= bs!1911346 (and d!2263325 b!7272247)))

(assert (=> bs!1911346 (= (dynLambda!28944 lambda!448939 ct1!250) (derivationStepZipperUp!2574 ct1!250 (h!77248 s!7854)))))

(assert (=> bs!1911346 m!7958344))

(assert (=> d!2263303 d!2263325))

(declare-fun b_lambda!280451 () Bool)

(assert (= b_lambda!280443 (or b!7272247 b_lambda!280451)))

(declare-fun bs!1911347 () Bool)

(declare-fun d!2263327 () Bool)

(assert (= bs!1911347 (and d!2263327 b!7272247)))

(assert (=> bs!1911347 (= (dynLambda!28944 lambda!448939 lt!2595568) (derivationStepZipperUp!2574 lt!2595568 (h!77248 s!7854)))))

(assert (=> bs!1911347 m!7958362))

(assert (=> d!2263319 d!2263327))

(push 1)

(assert (not b_lambda!280447))

(assert (not bm!663443))

(assert (not d!2263313))

(assert (not b!7272329))

(assert (not d!2263299))

(assert (not b_lambda!280445))

(assert (not d!2263269))

(assert (not b!7272330))

(assert (not b!7272408))

(assert (not bm!663452))

(assert (not bs!1911344))

(assert (not d!2263301))

(assert (not b!7272367))

(assert (not d!2263305))

(assert (not d!2263291))

(assert (not bm!663439))

(assert (not b!7272419))

(assert (not d!2263297))

(assert (not b!7272325))

(assert (not bs!1911347))

(assert (not b!7272331))

(assert (not b!7272390))

(assert tp_is_empty!47073)

(assert (not d!2263303))

(assert (not b!7272323))

(assert (not b!7272379))

(assert (not b!7272404))

(assert (not d!2263287))

(assert (not bm!663425))

(assert (not b!7272420))

(assert (not b!7272363))

(assert (not d!2263317))

(assert (not b!7272369))

(assert (not b!7272414))

(assert (not b!7272388))

(assert (not d!2263293))

(assert (not b!7272316))

(assert (not d!2263261))

(assert (not b!7272303))

(assert (not d!2263319))

(assert (not d!2263277))

(assert (not d!2263271))

(assert (not b_lambda!280449))

(assert (not bs!1911345))

(assert (not bm!663438))

(assert (not bm!663451))

(assert (not d!2263259))

(assert (not bm!663447))

(assert (not b!7272318))

(assert (not b!7272383))

(assert (not b!7272380))

(assert (not d!2263273))

(assert (not b_lambda!280451))

(assert (not b!7272326))

(assert (not b!7272392))

(assert (not b!7272410))

(assert (not b!7272425))

(assert (not d!2263315))

(assert (not d!2263285))

(assert (not d!2263311))

(assert (not d!2263289))

(assert (not b!7272393))

(assert (not d!2263275))

(assert (not d!2263279))

(assert (not b!7272413))

(assert (not bm!663445))

(assert (not b!7272324))

(assert (not b!7272382))

(assert (not b!7272411))

(assert (not bs!1911346))

(assert (not bm!663446))

(assert (not b!7272412))

(assert (not bm!663444))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

