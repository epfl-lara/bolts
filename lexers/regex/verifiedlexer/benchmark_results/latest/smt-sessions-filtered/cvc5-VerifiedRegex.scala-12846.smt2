; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709656 () Bool)

(assert start!709656)

(declare-fun b!7271563 () Bool)

(assert (=> b!7271563 true))

(declare-fun b!7271558 () Bool)

(declare-fun e!4360496 () Bool)

(declare-fun e!4360494 () Bool)

(assert (=> b!7271558 (= e!4360496 e!4360494)))

(declare-fun res!2947710 () Bool)

(assert (=> b!7271558 (=> res!2947710 e!4360494)))

(declare-datatypes ((C!37874 0))(
  ( (C!37875 (val!28885 Int)) )
))
(declare-datatypes ((Regex!18800 0))(
  ( (ElementMatch!18800 (c!1353698 C!37874)) (Concat!27645 (regOne!38112 Regex!18800) (regTwo!38112 Regex!18800)) (EmptyExpr!18800) (Star!18800 (reg!19129 Regex!18800)) (EmptyLang!18800) (Union!18800 (regOne!38113 Regex!18800) (regTwo!38113 Regex!18800)) )
))
(declare-datatypes ((List!70915 0))(
  ( (Nil!70791) (Cons!70791 (h!77239 Regex!18800) (t!384987 List!70915)) )
))
(declare-datatypes ((Context!15480 0))(
  ( (Context!15481 (exprs!8240 List!70915)) )
))
(declare-fun ct1!250 () Context!15480)

(declare-fun nullable!8000 (Regex!18800) Bool)

(assert (=> b!7271558 (= res!2947710 (not (nullable!8000 (h!77239 (exprs!8240 ct1!250)))))))

(declare-fun lt!2595086 () (Set Context!15480))

(declare-datatypes ((List!70916 0))(
  ( (Nil!70792) (Cons!70792 (h!77240 C!37874) (t!384988 List!70916)) )
))
(declare-fun s!7854 () List!70916)

(declare-fun derivationStepZipperUp!2570 (Context!15480 C!37874) (Set Context!15480))

(assert (=> b!7271558 (= lt!2595086 (derivationStepZipperUp!2570 ct1!250 (h!77240 s!7854)))))

(declare-fun lt!2595105 () Context!15480)

(declare-fun lt!2595089 () List!70915)

(assert (=> b!7271558 (= lt!2595105 (Context!15481 lt!2595089))))

(declare-fun tail!14503 (List!70915) List!70915)

(assert (=> b!7271558 (= lt!2595089 (tail!14503 (exprs!8240 ct1!250)))))

(declare-fun b!7271559 () Bool)

(declare-fun res!2947709 () Bool)

(declare-fun e!4360497 () Bool)

(assert (=> b!7271559 (=> (not res!2947709) (not e!4360497))))

(declare-fun nullableContext!290 (Context!15480) Bool)

(assert (=> b!7271559 (= res!2947709 (nullableContext!290 ct1!250))))

(declare-fun b!7271560 () Bool)

(declare-fun e!4360499 () Bool)

(assert (=> b!7271560 (= e!4360494 e!4360499)))

(declare-fun res!2947711 () Bool)

(assert (=> b!7271560 (=> res!2947711 e!4360499)))

(declare-fun lt!2595080 () (Set Context!15480))

(declare-fun lt!2595106 () (Set Context!15480))

(assert (=> b!7271560 (= res!2947711 (not (= lt!2595080 lt!2595106)))))

(declare-fun lt!2595087 () (Set Context!15480))

(declare-fun lt!2595078 () (Set Context!15480))

(assert (=> b!7271560 (= lt!2595106 (set.union lt!2595087 lt!2595078))))

(declare-fun lt!2595098 () Context!15480)

(assert (=> b!7271560 (= lt!2595078 (derivationStepZipperUp!2570 lt!2595098 (h!77240 s!7854)))))

(declare-fun derivationStepZipperDown!2734 (Regex!18800 Context!15480 C!37874) (Set Context!15480))

(assert (=> b!7271560 (= lt!2595087 (derivationStepZipperDown!2734 (h!77239 (exprs!8240 ct1!250)) lt!2595098 (h!77240 s!7854)))))

(declare-fun ct2!346 () Context!15480)

(declare-fun ++!16700 (List!70915 List!70915) List!70915)

(assert (=> b!7271560 (= lt!2595098 (Context!15481 (++!16700 lt!2595089 (exprs!8240 ct2!346))))))

(declare-fun lambda!448740 () Int)

(declare-datatypes ((Unit!164218 0))(
  ( (Unit!164219) )
))
(declare-fun lt!2595097 () Unit!164218)

(declare-fun lemmaConcatPreservesForall!1557 (List!70915 List!70915 Int) Unit!164218)

(assert (=> b!7271560 (= lt!2595097 (lemmaConcatPreservesForall!1557 lt!2595089 (exprs!8240 ct2!346) lambda!448740))))

(declare-fun lt!2595103 () Unit!164218)

(assert (=> b!7271560 (= lt!2595103 (lemmaConcatPreservesForall!1557 lt!2595089 (exprs!8240 ct2!346) lambda!448740))))

(declare-fun b!7271561 () Bool)

(declare-fun e!4360501 () Bool)

(declare-fun forall!17629 (List!70915 Int) Bool)

(assert (=> b!7271561 (= e!4360501 (forall!17629 (exprs!8240 ct1!250) lambda!448740))))

(declare-fun matchZipper!3704 ((Set Context!15480) List!70916) Bool)

(assert (=> b!7271561 (matchZipper!3704 lt!2595106 (t!384988 s!7854))))

(declare-fun lt!2595099 () Bool)

(assert (=> b!7271561 (= lt!2595099 (matchZipper!3704 lt!2595087 (t!384988 s!7854)))))

(declare-fun lt!2595079 () Unit!164218)

(declare-fun lemmaZipperConcatMatchesSameAsBothZippers!1773 ((Set Context!15480) (Set Context!15480) List!70916) Unit!164218)

(assert (=> b!7271561 (= lt!2595079 (lemmaZipperConcatMatchesSameAsBothZippers!1773 lt!2595087 lt!2595078 (t!384988 s!7854)))))

(declare-fun lt!2595084 () Unit!164218)

(assert (=> b!7271561 (= lt!2595084 (lemmaConcatPreservesForall!1557 lt!2595089 (exprs!8240 ct2!346) lambda!448740))))

(declare-fun lt!2595092 () Unit!164218)

(assert (=> b!7271561 (= lt!2595092 (lemmaConcatPreservesForall!1557 lt!2595089 (exprs!8240 ct2!346) lambda!448740))))

(declare-fun b!7271562 () Bool)

(declare-fun res!2947708 () Bool)

(assert (=> b!7271562 (=> res!2947708 e!4360494)))

(assert (=> b!7271562 (= res!2947708 (not (= lt!2595086 (set.union (derivationStepZipperDown!2734 (h!77239 (exprs!8240 ct1!250)) lt!2595105 (h!77240 s!7854)) (derivationStepZipperUp!2570 lt!2595105 (h!77240 s!7854))))))))

(assert (=> b!7271563 (= e!4360497 (not e!4360496))))

(declare-fun res!2947704 () Bool)

(assert (=> b!7271563 (=> res!2947704 e!4360496)))

(declare-fun lt!2595081 () (Set Context!15480))

(declare-fun derivationStepZipper!3540 ((Set Context!15480) C!37874) (Set Context!15480))

(assert (=> b!7271563 (= res!2947704 (not (= lt!2595080 (derivationStepZipper!3540 lt!2595081 (h!77240 s!7854)))))))

(declare-fun lt!2595093 () Unit!164218)

(assert (=> b!7271563 (= lt!2595093 (lemmaConcatPreservesForall!1557 (exprs!8240 ct1!250) (exprs!8240 ct2!346) lambda!448740))))

(declare-fun lt!2595094 () Context!15480)

(declare-fun lambda!448741 () Int)

(declare-fun flatMap!2913 ((Set Context!15480) Int) (Set Context!15480))

(assert (=> b!7271563 (= (flatMap!2913 lt!2595081 lambda!448741) (derivationStepZipperUp!2570 lt!2595094 (h!77240 s!7854)))))

(declare-fun lt!2595101 () Unit!164218)

(declare-fun lemmaFlatMapOnSingletonSet!2313 ((Set Context!15480) Context!15480 Int) Unit!164218)

(assert (=> b!7271563 (= lt!2595101 (lemmaFlatMapOnSingletonSet!2313 lt!2595081 lt!2595094 lambda!448741))))

(assert (=> b!7271563 (= lt!2595081 (set.insert lt!2595094 (as set.empty (Set Context!15480))))))

(declare-fun lt!2595104 () Unit!164218)

(assert (=> b!7271563 (= lt!2595104 (lemmaConcatPreservesForall!1557 (exprs!8240 ct1!250) (exprs!8240 ct2!346) lambda!448740))))

(declare-fun lt!2595082 () Unit!164218)

(assert (=> b!7271563 (= lt!2595082 (lemmaConcatPreservesForall!1557 (exprs!8240 ct1!250) (exprs!8240 ct2!346) lambda!448740))))

(declare-fun lt!2595107 () (Set Context!15480))

(assert (=> b!7271563 (= (flatMap!2913 lt!2595107 lambda!448741) (derivationStepZipperUp!2570 ct1!250 (h!77240 s!7854)))))

(declare-fun lt!2595090 () Unit!164218)

(assert (=> b!7271563 (= lt!2595090 (lemmaFlatMapOnSingletonSet!2313 lt!2595107 ct1!250 lambda!448741))))

(assert (=> b!7271563 (= lt!2595107 (set.insert ct1!250 (as set.empty (Set Context!15480))))))

(assert (=> b!7271563 (= lt!2595080 (derivationStepZipperUp!2570 lt!2595094 (h!77240 s!7854)))))

(assert (=> b!7271563 (= lt!2595094 (Context!15481 (++!16700 (exprs!8240 ct1!250) (exprs!8240 ct2!346))))))

(declare-fun lt!2595085 () Unit!164218)

(assert (=> b!7271563 (= lt!2595085 (lemmaConcatPreservesForall!1557 (exprs!8240 ct1!250) (exprs!8240 ct2!346) lambda!448740))))

(declare-fun b!7271564 () Bool)

(declare-fun e!4360495 () Bool)

(declare-fun tp!2041193 () Bool)

(assert (=> b!7271564 (= e!4360495 tp!2041193)))

(declare-fun b!7271565 () Bool)

(assert (=> b!7271565 (= e!4360499 e!4360501)))

(declare-fun res!2947713 () Bool)

(assert (=> b!7271565 (=> res!2947713 e!4360501)))

(assert (=> b!7271565 (= res!2947713 (not (matchZipper!3704 lt!2595078 (t!384988 s!7854))))))

(declare-fun lt!2595088 () Unit!164218)

(assert (=> b!7271565 (= lt!2595088 (lemmaConcatPreservesForall!1557 lt!2595089 (exprs!8240 ct2!346) lambda!448740))))

(declare-fun lt!2595100 () (Set Context!15480))

(assert (=> b!7271565 (= (flatMap!2913 lt!2595100 lambda!448741) (derivationStepZipperUp!2570 lt!2595098 (h!77240 s!7854)))))

(declare-fun lt!2595091 () Unit!164218)

(assert (=> b!7271565 (= lt!2595091 (lemmaFlatMapOnSingletonSet!2313 lt!2595100 lt!2595098 lambda!448741))))

(declare-fun lt!2595102 () Unit!164218)

(assert (=> b!7271565 (= lt!2595102 (lemmaConcatPreservesForall!1557 lt!2595089 (exprs!8240 ct2!346) lambda!448740))))

(declare-fun lt!2595083 () Unit!164218)

(assert (=> b!7271565 (= lt!2595083 (lemmaConcatPreservesForall!1557 lt!2595089 (exprs!8240 ct2!346) lambda!448740))))

(declare-fun lt!2595108 () Unit!164218)

(assert (=> b!7271565 (= lt!2595108 (lemmaConcatPreservesForall!1557 lt!2595089 (exprs!8240 ct2!346) lambda!448740))))

(assert (=> b!7271565 (matchZipper!3704 lt!2595100 s!7854)))

(assert (=> b!7271565 (= lt!2595100 (set.insert lt!2595098 (as set.empty (Set Context!15480))))))

(declare-fun lt!2595095 () Unit!164218)

(assert (=> b!7271565 (= lt!2595095 (lemmaConcatPreservesForall!1557 lt!2595089 (exprs!8240 ct2!346) lambda!448740))))

(declare-fun lt!2595096 () Unit!164218)

(declare-fun lemmaPrependingNullableCtxStillMatches!37 (Context!15480 Context!15480 List!70916) Unit!164218)

(assert (=> b!7271565 (= lt!2595096 (lemmaPrependingNullableCtxStillMatches!37 lt!2595105 ct2!346 s!7854))))

(declare-fun res!2947712 () Bool)

(assert (=> start!709656 (=> (not res!2947712) (not e!4360497))))

(assert (=> start!709656 (= res!2947712 (matchZipper!3704 (set.insert ct2!346 (as set.empty (Set Context!15480))) s!7854))))

(assert (=> start!709656 e!4360497))

(declare-fun e!4360500 () Bool)

(declare-fun inv!90011 (Context!15480) Bool)

(assert (=> start!709656 (and (inv!90011 ct2!346) e!4360500)))

(declare-fun e!4360498 () Bool)

(assert (=> start!709656 e!4360498))

(assert (=> start!709656 (and (inv!90011 ct1!250) e!4360495)))

(declare-fun b!7271566 () Bool)

(declare-fun tp_is_empty!47065 () Bool)

(declare-fun tp!2041195 () Bool)

(assert (=> b!7271566 (= e!4360498 (and tp_is_empty!47065 tp!2041195))))

(declare-fun b!7271567 () Bool)

(declare-fun res!2947707 () Bool)

(assert (=> b!7271567 (=> res!2947707 e!4360496)))

(declare-fun isEmpty!40716 (List!70915) Bool)

(assert (=> b!7271567 (= res!2947707 (isEmpty!40716 (exprs!8240 ct1!250)))))

(declare-fun b!7271568 () Bool)

(declare-fun tp!2041194 () Bool)

(assert (=> b!7271568 (= e!4360500 tp!2041194)))

(declare-fun b!7271569 () Bool)

(declare-fun res!2947705 () Bool)

(assert (=> b!7271569 (=> (not res!2947705) (not e!4360497))))

(assert (=> b!7271569 (= res!2947705 (is-Cons!70792 s!7854))))

(declare-fun b!7271570 () Bool)

(declare-fun res!2947706 () Bool)

(assert (=> b!7271570 (=> res!2947706 e!4360496)))

(assert (=> b!7271570 (= res!2947706 (not (is-Cons!70791 (exprs!8240 ct1!250))))))

(assert (= (and start!709656 res!2947712) b!7271559))

(assert (= (and b!7271559 res!2947709) b!7271569))

(assert (= (and b!7271569 res!2947705) b!7271563))

(assert (= (and b!7271563 (not res!2947704)) b!7271570))

(assert (= (and b!7271570 (not res!2947706)) b!7271567))

(assert (= (and b!7271567 (not res!2947707)) b!7271558))

(assert (= (and b!7271558 (not res!2947710)) b!7271562))

(assert (= (and b!7271562 (not res!2947708)) b!7271560))

(assert (= (and b!7271560 (not res!2947711)) b!7271565))

(assert (= (and b!7271565 (not res!2947713)) b!7271561))

(assert (= start!709656 b!7271568))

(assert (= (and start!709656 (is-Cons!70792 s!7854)) b!7271566))

(assert (= start!709656 b!7271564))

(declare-fun m!7957398 () Bool)

(assert (=> b!7271559 m!7957398))

(declare-fun m!7957400 () Bool)

(assert (=> b!7271560 m!7957400))

(declare-fun m!7957402 () Bool)

(assert (=> b!7271560 m!7957402))

(declare-fun m!7957404 () Bool)

(assert (=> b!7271560 m!7957404))

(declare-fun m!7957406 () Bool)

(assert (=> b!7271560 m!7957406))

(assert (=> b!7271560 m!7957406))

(declare-fun m!7957408 () Bool)

(assert (=> b!7271562 m!7957408))

(declare-fun m!7957410 () Bool)

(assert (=> b!7271562 m!7957410))

(assert (=> b!7271565 m!7957400))

(declare-fun m!7957412 () Bool)

(assert (=> b!7271565 m!7957412))

(assert (=> b!7271565 m!7957406))

(declare-fun m!7957414 () Bool)

(assert (=> b!7271565 m!7957414))

(declare-fun m!7957416 () Bool)

(assert (=> b!7271565 m!7957416))

(declare-fun m!7957418 () Bool)

(assert (=> b!7271565 m!7957418))

(assert (=> b!7271565 m!7957406))

(assert (=> b!7271565 m!7957406))

(assert (=> b!7271565 m!7957406))

(declare-fun m!7957420 () Bool)

(assert (=> b!7271565 m!7957420))

(assert (=> b!7271565 m!7957406))

(declare-fun m!7957422 () Bool)

(assert (=> b!7271565 m!7957422))

(declare-fun m!7957424 () Bool)

(assert (=> b!7271561 m!7957424))

(declare-fun m!7957426 () Bool)

(assert (=> b!7271561 m!7957426))

(assert (=> b!7271561 m!7957406))

(declare-fun m!7957428 () Bool)

(assert (=> b!7271561 m!7957428))

(declare-fun m!7957430 () Bool)

(assert (=> b!7271561 m!7957430))

(assert (=> b!7271561 m!7957406))

(declare-fun m!7957432 () Bool)

(assert (=> start!709656 m!7957432))

(assert (=> start!709656 m!7957432))

(declare-fun m!7957434 () Bool)

(assert (=> start!709656 m!7957434))

(declare-fun m!7957436 () Bool)

(assert (=> start!709656 m!7957436))

(declare-fun m!7957438 () Bool)

(assert (=> start!709656 m!7957438))

(declare-fun m!7957440 () Bool)

(assert (=> b!7271563 m!7957440))

(declare-fun m!7957442 () Bool)

(assert (=> b!7271563 m!7957442))

(declare-fun m!7957444 () Bool)

(assert (=> b!7271563 m!7957444))

(assert (=> b!7271563 m!7957440))

(declare-fun m!7957446 () Bool)

(assert (=> b!7271563 m!7957446))

(declare-fun m!7957448 () Bool)

(assert (=> b!7271563 m!7957448))

(assert (=> b!7271563 m!7957440))

(assert (=> b!7271563 m!7957440))

(declare-fun m!7957450 () Bool)

(assert (=> b!7271563 m!7957450))

(declare-fun m!7957452 () Bool)

(assert (=> b!7271563 m!7957452))

(declare-fun m!7957454 () Bool)

(assert (=> b!7271563 m!7957454))

(declare-fun m!7957456 () Bool)

(assert (=> b!7271563 m!7957456))

(declare-fun m!7957458 () Bool)

(assert (=> b!7271563 m!7957458))

(declare-fun m!7957460 () Bool)

(assert (=> b!7271563 m!7957460))

(declare-fun m!7957462 () Bool)

(assert (=> b!7271567 m!7957462))

(declare-fun m!7957464 () Bool)

(assert (=> b!7271558 m!7957464))

(assert (=> b!7271558 m!7957444))

(declare-fun m!7957466 () Bool)

(assert (=> b!7271558 m!7957466))

(push 1)

(assert (not b!7271558))

(assert (not b!7271559))

(assert (not b!7271566))

(assert tp_is_empty!47065)

(assert (not b!7271561))

(assert (not b!7271562))

(assert (not b!7271568))

(assert (not start!709656))

(assert (not b!7271560))

(assert (not b!7271564))

(assert (not b!7271563))

(assert (not b!7271567))

(assert (not b!7271565))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2262967 () Bool)

(assert (=> d!2262967 (forall!17629 (++!16700 (exprs!8240 ct1!250) (exprs!8240 ct2!346)) lambda!448740)))

(declare-fun lt!2595204 () Unit!164218)

(declare-fun choose!56413 (List!70915 List!70915 Int) Unit!164218)

(assert (=> d!2262967 (= lt!2595204 (choose!56413 (exprs!8240 ct1!250) (exprs!8240 ct2!346) lambda!448740))))

(assert (=> d!2262967 (forall!17629 (exprs!8240 ct1!250) lambda!448740)))

(assert (=> d!2262967 (= (lemmaConcatPreservesForall!1557 (exprs!8240 ct1!250) (exprs!8240 ct2!346) lambda!448740) lt!2595204)))

(declare-fun bs!1911197 () Bool)

(assert (= bs!1911197 d!2262967))

(assert (=> bs!1911197 m!7957448))

(assert (=> bs!1911197 m!7957448))

(declare-fun m!7957538 () Bool)

(assert (=> bs!1911197 m!7957538))

(declare-fun m!7957540 () Bool)

(assert (=> bs!1911197 m!7957540))

(assert (=> bs!1911197 m!7957424))

(assert (=> b!7271563 d!2262967))

(declare-fun d!2262969 () Bool)

(declare-fun dynLambda!28938 (Int Context!15480) (Set Context!15480))

(assert (=> d!2262969 (= (flatMap!2913 lt!2595107 lambda!448741) (dynLambda!28938 lambda!448741 ct1!250))))

(declare-fun lt!2595207 () Unit!164218)

(declare-fun choose!56414 ((Set Context!15480) Context!15480 Int) Unit!164218)

(assert (=> d!2262969 (= lt!2595207 (choose!56414 lt!2595107 ct1!250 lambda!448741))))

(assert (=> d!2262969 (= lt!2595107 (set.insert ct1!250 (as set.empty (Set Context!15480))))))

(assert (=> d!2262969 (= (lemmaFlatMapOnSingletonSet!2313 lt!2595107 ct1!250 lambda!448741) lt!2595207)))

(declare-fun b_lambda!280365 () Bool)

(assert (=> (not b_lambda!280365) (not d!2262969)))

(declare-fun bs!1911198 () Bool)

(assert (= bs!1911198 d!2262969))

(assert (=> bs!1911198 m!7957442))

(declare-fun m!7957542 () Bool)

(assert (=> bs!1911198 m!7957542))

(declare-fun m!7957544 () Bool)

(assert (=> bs!1911198 m!7957544))

(assert (=> bs!1911198 m!7957460))

(assert (=> b!7271563 d!2262969))

(declare-fun b!7271625 () Bool)

(declare-fun e!4360533 () (Set Context!15480))

(declare-fun call!663310 () (Set Context!15480))

(assert (=> b!7271625 (= e!4360533 call!663310)))

(declare-fun b!7271626 () Bool)

(declare-fun e!4360534 () Bool)

(assert (=> b!7271626 (= e!4360534 (nullable!8000 (h!77239 (exprs!8240 lt!2595094))))))

(declare-fun bm!663305 () Bool)

(assert (=> bm!663305 (= call!663310 (derivationStepZipperDown!2734 (h!77239 (exprs!8240 lt!2595094)) (Context!15481 (t!384987 (exprs!8240 lt!2595094))) (h!77240 s!7854)))))

(declare-fun e!4360532 () (Set Context!15480))

(declare-fun b!7271627 () Bool)

(assert (=> b!7271627 (= e!4360532 (set.union call!663310 (derivationStepZipperUp!2570 (Context!15481 (t!384987 (exprs!8240 lt!2595094))) (h!77240 s!7854))))))

(declare-fun b!7271628 () Bool)

(assert (=> b!7271628 (= e!4360533 (as set.empty (Set Context!15480)))))

(declare-fun d!2262971 () Bool)

(declare-fun c!1353711 () Bool)

(assert (=> d!2262971 (= c!1353711 e!4360534)))

(declare-fun res!2947746 () Bool)

(assert (=> d!2262971 (=> (not res!2947746) (not e!4360534))))

(assert (=> d!2262971 (= res!2947746 (is-Cons!70791 (exprs!8240 lt!2595094)))))

(assert (=> d!2262971 (= (derivationStepZipperUp!2570 lt!2595094 (h!77240 s!7854)) e!4360532)))

(declare-fun b!7271624 () Bool)

(assert (=> b!7271624 (= e!4360532 e!4360533)))

(declare-fun c!1353710 () Bool)

(assert (=> b!7271624 (= c!1353710 (is-Cons!70791 (exprs!8240 lt!2595094)))))

(assert (= (and d!2262971 res!2947746) b!7271626))

(assert (= (and d!2262971 c!1353711) b!7271627))

(assert (= (and d!2262971 (not c!1353711)) b!7271624))

(assert (= (and b!7271624 c!1353710) b!7271625))

(assert (= (and b!7271624 (not c!1353710)) b!7271628))

(assert (= (or b!7271627 b!7271625) bm!663305))

(declare-fun m!7957546 () Bool)

(assert (=> b!7271626 m!7957546))

(declare-fun m!7957548 () Bool)

(assert (=> bm!663305 m!7957548))

(declare-fun m!7957550 () Bool)

(assert (=> b!7271627 m!7957550))

(assert (=> b!7271563 d!2262971))

(declare-fun b!7271630 () Bool)

(declare-fun e!4360536 () (Set Context!15480))

(declare-fun call!663311 () (Set Context!15480))

(assert (=> b!7271630 (= e!4360536 call!663311)))

(declare-fun b!7271631 () Bool)

(declare-fun e!4360537 () Bool)

(assert (=> b!7271631 (= e!4360537 (nullable!8000 (h!77239 (exprs!8240 ct1!250))))))

(declare-fun bm!663306 () Bool)

(assert (=> bm!663306 (= call!663311 (derivationStepZipperDown!2734 (h!77239 (exprs!8240 ct1!250)) (Context!15481 (t!384987 (exprs!8240 ct1!250))) (h!77240 s!7854)))))

(declare-fun b!7271632 () Bool)

(declare-fun e!4360535 () (Set Context!15480))

(assert (=> b!7271632 (= e!4360535 (set.union call!663311 (derivationStepZipperUp!2570 (Context!15481 (t!384987 (exprs!8240 ct1!250))) (h!77240 s!7854))))))

(declare-fun b!7271633 () Bool)

(assert (=> b!7271633 (= e!4360536 (as set.empty (Set Context!15480)))))

(declare-fun d!2262973 () Bool)

(declare-fun c!1353713 () Bool)

(assert (=> d!2262973 (= c!1353713 e!4360537)))

(declare-fun res!2947747 () Bool)

(assert (=> d!2262973 (=> (not res!2947747) (not e!4360537))))

(assert (=> d!2262973 (= res!2947747 (is-Cons!70791 (exprs!8240 ct1!250)))))

(assert (=> d!2262973 (= (derivationStepZipperUp!2570 ct1!250 (h!77240 s!7854)) e!4360535)))

(declare-fun b!7271629 () Bool)

(assert (=> b!7271629 (= e!4360535 e!4360536)))

(declare-fun c!1353712 () Bool)

(assert (=> b!7271629 (= c!1353712 (is-Cons!70791 (exprs!8240 ct1!250)))))

(assert (= (and d!2262973 res!2947747) b!7271631))

(assert (= (and d!2262973 c!1353713) b!7271632))

(assert (= (and d!2262973 (not c!1353713)) b!7271629))

(assert (= (and b!7271629 c!1353712) b!7271630))

(assert (= (and b!7271629 (not c!1353712)) b!7271633))

(assert (= (or b!7271632 b!7271630) bm!663306))

(assert (=> b!7271631 m!7957464))

(declare-fun m!7957552 () Bool)

(assert (=> bm!663306 m!7957552))

(declare-fun m!7957554 () Bool)

(assert (=> b!7271632 m!7957554))

(assert (=> b!7271563 d!2262973))

(declare-fun d!2262975 () Bool)

(assert (=> d!2262975 (= (flatMap!2913 lt!2595081 lambda!448741) (dynLambda!28938 lambda!448741 lt!2595094))))

(declare-fun lt!2595208 () Unit!164218)

(assert (=> d!2262975 (= lt!2595208 (choose!56414 lt!2595081 lt!2595094 lambda!448741))))

(assert (=> d!2262975 (= lt!2595081 (set.insert lt!2595094 (as set.empty (Set Context!15480))))))

(assert (=> d!2262975 (= (lemmaFlatMapOnSingletonSet!2313 lt!2595081 lt!2595094 lambda!448741) lt!2595208)))

(declare-fun b_lambda!280367 () Bool)

(assert (=> (not b_lambda!280367) (not d!2262975)))

(declare-fun bs!1911199 () Bool)

(assert (= bs!1911199 d!2262975))

(assert (=> bs!1911199 m!7957456))

(declare-fun m!7957556 () Bool)

(assert (=> bs!1911199 m!7957556))

(declare-fun m!7957558 () Bool)

(assert (=> bs!1911199 m!7957558))

(assert (=> bs!1911199 m!7957446))

(assert (=> b!7271563 d!2262975))

(declare-fun d!2262977 () Bool)

(declare-fun choose!56415 ((Set Context!15480) Int) (Set Context!15480))

(assert (=> d!2262977 (= (flatMap!2913 lt!2595081 lambda!448741) (choose!56415 lt!2595081 lambda!448741))))

(declare-fun bs!1911200 () Bool)

(assert (= bs!1911200 d!2262977))

(declare-fun m!7957560 () Bool)

(assert (=> bs!1911200 m!7957560))

(assert (=> b!7271563 d!2262977))

(declare-fun b!7271642 () Bool)

(declare-fun e!4360543 () List!70915)

(assert (=> b!7271642 (= e!4360543 (exprs!8240 ct2!346))))

(declare-fun d!2262979 () Bool)

(declare-fun e!4360542 () Bool)

(assert (=> d!2262979 e!4360542))

(declare-fun res!2947752 () Bool)

(assert (=> d!2262979 (=> (not res!2947752) (not e!4360542))))

(declare-fun lt!2595211 () List!70915)

(declare-fun content!14778 (List!70915) (Set Regex!18800))

(assert (=> d!2262979 (= res!2947752 (= (content!14778 lt!2595211) (set.union (content!14778 (exprs!8240 ct1!250)) (content!14778 (exprs!8240 ct2!346)))))))

(assert (=> d!2262979 (= lt!2595211 e!4360543)))

(declare-fun c!1353716 () Bool)

(assert (=> d!2262979 (= c!1353716 (is-Nil!70791 (exprs!8240 ct1!250)))))

(assert (=> d!2262979 (= (++!16700 (exprs!8240 ct1!250) (exprs!8240 ct2!346)) lt!2595211)))

(declare-fun b!7271644 () Bool)

(declare-fun res!2947753 () Bool)

(assert (=> b!7271644 (=> (not res!2947753) (not e!4360542))))

(declare-fun size!41826 (List!70915) Int)

(assert (=> b!7271644 (= res!2947753 (= (size!41826 lt!2595211) (+ (size!41826 (exprs!8240 ct1!250)) (size!41826 (exprs!8240 ct2!346)))))))

(declare-fun b!7271643 () Bool)

(assert (=> b!7271643 (= e!4360543 (Cons!70791 (h!77239 (exprs!8240 ct1!250)) (++!16700 (t!384987 (exprs!8240 ct1!250)) (exprs!8240 ct2!346))))))

(declare-fun b!7271645 () Bool)

(assert (=> b!7271645 (= e!4360542 (or (not (= (exprs!8240 ct2!346) Nil!70791)) (= lt!2595211 (exprs!8240 ct1!250))))))

(assert (= (and d!2262979 c!1353716) b!7271642))

(assert (= (and d!2262979 (not c!1353716)) b!7271643))

(assert (= (and d!2262979 res!2947752) b!7271644))

(assert (= (and b!7271644 res!2947753) b!7271645))

(declare-fun m!7957562 () Bool)

(assert (=> d!2262979 m!7957562))

(declare-fun m!7957564 () Bool)

(assert (=> d!2262979 m!7957564))

(declare-fun m!7957566 () Bool)

(assert (=> d!2262979 m!7957566))

(declare-fun m!7957568 () Bool)

(assert (=> b!7271644 m!7957568))

(declare-fun m!7957570 () Bool)

(assert (=> b!7271644 m!7957570))

(declare-fun m!7957572 () Bool)

(assert (=> b!7271644 m!7957572))

(declare-fun m!7957574 () Bool)

(assert (=> b!7271643 m!7957574))

(assert (=> b!7271563 d!2262979))

(declare-fun bs!1911201 () Bool)

(declare-fun d!2262981 () Bool)

(assert (= bs!1911201 (and d!2262981 b!7271563)))

(declare-fun lambda!448780 () Int)

(assert (=> bs!1911201 (= lambda!448780 lambda!448741)))

(assert (=> d!2262981 true))

(assert (=> d!2262981 (= (derivationStepZipper!3540 lt!2595081 (h!77240 s!7854)) (flatMap!2913 lt!2595081 lambda!448780))))

(declare-fun bs!1911202 () Bool)

(assert (= bs!1911202 d!2262981))

(declare-fun m!7957576 () Bool)

(assert (=> bs!1911202 m!7957576))

(assert (=> b!7271563 d!2262981))

(declare-fun d!2262983 () Bool)

(assert (=> d!2262983 (= (flatMap!2913 lt!2595107 lambda!448741) (choose!56415 lt!2595107 lambda!448741))))

(declare-fun bs!1911203 () Bool)

(assert (= bs!1911203 d!2262983))

(declare-fun m!7957578 () Bool)

(assert (=> bs!1911203 m!7957578))

(assert (=> b!7271563 d!2262983))

(declare-fun d!2262985 () Bool)

(declare-fun nullableFct!3159 (Regex!18800) Bool)

(assert (=> d!2262985 (= (nullable!8000 (h!77239 (exprs!8240 ct1!250))) (nullableFct!3159 (h!77239 (exprs!8240 ct1!250))))))

(declare-fun bs!1911204 () Bool)

(assert (= bs!1911204 d!2262985))

(declare-fun m!7957580 () Bool)

(assert (=> bs!1911204 m!7957580))

(assert (=> b!7271558 d!2262985))

(assert (=> b!7271558 d!2262973))

(declare-fun d!2262987 () Bool)

(assert (=> d!2262987 (= (tail!14503 (exprs!8240 ct1!250)) (t!384987 (exprs!8240 ct1!250)))))

(assert (=> b!7271558 d!2262987))

(declare-fun bs!1911205 () Bool)

(declare-fun d!2262989 () Bool)

(assert (= bs!1911205 (and d!2262989 b!7271563)))

(declare-fun lambda!448783 () Int)

(assert (=> bs!1911205 (not (= lambda!448783 lambda!448740))))

(assert (=> d!2262989 (= (nullableContext!290 ct1!250) (forall!17629 (exprs!8240 ct1!250) lambda!448783))))

(declare-fun bs!1911206 () Bool)

(assert (= bs!1911206 d!2262989))

(declare-fun m!7957582 () Bool)

(assert (=> bs!1911206 m!7957582))

(assert (=> b!7271559 d!2262989))

(declare-fun b!7271649 () Bool)

(declare-fun e!4360545 () (Set Context!15480))

(declare-fun call!663312 () (Set Context!15480))

(assert (=> b!7271649 (= e!4360545 call!663312)))

(declare-fun b!7271650 () Bool)

(declare-fun e!4360546 () Bool)

(assert (=> b!7271650 (= e!4360546 (nullable!8000 (h!77239 (exprs!8240 lt!2595098))))))

(declare-fun bm!663307 () Bool)

(assert (=> bm!663307 (= call!663312 (derivationStepZipperDown!2734 (h!77239 (exprs!8240 lt!2595098)) (Context!15481 (t!384987 (exprs!8240 lt!2595098))) (h!77240 s!7854)))))

(declare-fun e!4360544 () (Set Context!15480))

(declare-fun b!7271651 () Bool)

(assert (=> b!7271651 (= e!4360544 (set.union call!663312 (derivationStepZipperUp!2570 (Context!15481 (t!384987 (exprs!8240 lt!2595098))) (h!77240 s!7854))))))

(declare-fun b!7271652 () Bool)

(assert (=> b!7271652 (= e!4360545 (as set.empty (Set Context!15480)))))

(declare-fun d!2262991 () Bool)

(declare-fun c!1353721 () Bool)

(assert (=> d!2262991 (= c!1353721 e!4360546)))

(declare-fun res!2947754 () Bool)

(assert (=> d!2262991 (=> (not res!2947754) (not e!4360546))))

(assert (=> d!2262991 (= res!2947754 (is-Cons!70791 (exprs!8240 lt!2595098)))))

(assert (=> d!2262991 (= (derivationStepZipperUp!2570 lt!2595098 (h!77240 s!7854)) e!4360544)))

(declare-fun b!7271648 () Bool)

(assert (=> b!7271648 (= e!4360544 e!4360545)))

(declare-fun c!1353720 () Bool)

(assert (=> b!7271648 (= c!1353720 (is-Cons!70791 (exprs!8240 lt!2595098)))))

(assert (= (and d!2262991 res!2947754) b!7271650))

(assert (= (and d!2262991 c!1353721) b!7271651))

(assert (= (and d!2262991 (not c!1353721)) b!7271648))

(assert (= (and b!7271648 c!1353720) b!7271649))

(assert (= (and b!7271648 (not c!1353720)) b!7271652))

(assert (= (or b!7271651 b!7271649) bm!663307))

(declare-fun m!7957584 () Bool)

(assert (=> b!7271650 m!7957584))

(declare-fun m!7957586 () Bool)

(assert (=> bm!663307 m!7957586))

(declare-fun m!7957588 () Bool)

(assert (=> b!7271651 m!7957588))

(assert (=> b!7271565 d!2262991))

(declare-fun d!2262993 () Bool)

(declare-fun c!1353724 () Bool)

(declare-fun isEmpty!40718 (List!70916) Bool)

(assert (=> d!2262993 (= c!1353724 (isEmpty!40718 s!7854))))

(declare-fun e!4360549 () Bool)

(assert (=> d!2262993 (= (matchZipper!3704 lt!2595100 s!7854) e!4360549)))

(declare-fun b!7271657 () Bool)

(declare-fun nullableZipper!3006 ((Set Context!15480)) Bool)

(assert (=> b!7271657 (= e!4360549 (nullableZipper!3006 lt!2595100))))

(declare-fun b!7271658 () Bool)

(declare-fun head!15004 (List!70916) C!37874)

(declare-fun tail!14505 (List!70916) List!70916)

(assert (=> b!7271658 (= e!4360549 (matchZipper!3704 (derivationStepZipper!3540 lt!2595100 (head!15004 s!7854)) (tail!14505 s!7854)))))

(assert (= (and d!2262993 c!1353724) b!7271657))

(assert (= (and d!2262993 (not c!1353724)) b!7271658))

(declare-fun m!7957590 () Bool)

(assert (=> d!2262993 m!7957590))

(declare-fun m!7957592 () Bool)

(assert (=> b!7271657 m!7957592))

(declare-fun m!7957594 () Bool)

(assert (=> b!7271658 m!7957594))

(assert (=> b!7271658 m!7957594))

(declare-fun m!7957596 () Bool)

(assert (=> b!7271658 m!7957596))

(declare-fun m!7957598 () Bool)

(assert (=> b!7271658 m!7957598))

(assert (=> b!7271658 m!7957596))

(assert (=> b!7271658 m!7957598))

(declare-fun m!7957600 () Bool)

(assert (=> b!7271658 m!7957600))

(assert (=> b!7271565 d!2262993))

(declare-fun d!2262995 () Bool)

(assert (=> d!2262995 (forall!17629 (++!16700 lt!2595089 (exprs!8240 ct2!346)) lambda!448740)))

(declare-fun lt!2595212 () Unit!164218)

(assert (=> d!2262995 (= lt!2595212 (choose!56413 lt!2595089 (exprs!8240 ct2!346) lambda!448740))))

(assert (=> d!2262995 (forall!17629 lt!2595089 lambda!448740)))

(assert (=> d!2262995 (= (lemmaConcatPreservesForall!1557 lt!2595089 (exprs!8240 ct2!346) lambda!448740) lt!2595212)))

(declare-fun bs!1911207 () Bool)

(assert (= bs!1911207 d!2262995))

(assert (=> bs!1911207 m!7957402))

(assert (=> bs!1911207 m!7957402))

(declare-fun m!7957602 () Bool)

(assert (=> bs!1911207 m!7957602))

(declare-fun m!7957604 () Bool)

(assert (=> bs!1911207 m!7957604))

(declare-fun m!7957606 () Bool)

(assert (=> bs!1911207 m!7957606))

(assert (=> b!7271565 d!2262995))

(declare-fun d!2262997 () Bool)

(assert (=> d!2262997 (= (flatMap!2913 lt!2595100 lambda!448741) (dynLambda!28938 lambda!448741 lt!2595098))))

(declare-fun lt!2595213 () Unit!164218)

(assert (=> d!2262997 (= lt!2595213 (choose!56414 lt!2595100 lt!2595098 lambda!448741))))

(assert (=> d!2262997 (= lt!2595100 (set.insert lt!2595098 (as set.empty (Set Context!15480))))))

(assert (=> d!2262997 (= (lemmaFlatMapOnSingletonSet!2313 lt!2595100 lt!2595098 lambda!448741) lt!2595213)))

(declare-fun b_lambda!280369 () Bool)

(assert (=> (not b_lambda!280369) (not d!2262997)))

(declare-fun bs!1911208 () Bool)

(assert (= bs!1911208 d!2262997))

(assert (=> bs!1911208 m!7957422))

(declare-fun m!7957608 () Bool)

(assert (=> bs!1911208 m!7957608))

(declare-fun m!7957610 () Bool)

(assert (=> bs!1911208 m!7957610))

(assert (=> bs!1911208 m!7957420))

(assert (=> b!7271565 d!2262997))

(declare-fun bs!1911209 () Bool)

(declare-fun d!2262999 () Bool)

(assert (= bs!1911209 (and d!2262999 b!7271563)))

(declare-fun lambda!448786 () Int)

(assert (=> bs!1911209 (= lambda!448786 lambda!448740)))

(declare-fun bs!1911210 () Bool)

(assert (= bs!1911210 (and d!2262999 d!2262989)))

(assert (=> bs!1911210 (not (= lambda!448786 lambda!448783))))

(assert (=> d!2262999 (matchZipper!3704 (set.insert (Context!15481 (++!16700 (exprs!8240 lt!2595105) (exprs!8240 ct2!346))) (as set.empty (Set Context!15480))) s!7854)))

(declare-fun lt!2595219 () Unit!164218)

(assert (=> d!2262999 (= lt!2595219 (lemmaConcatPreservesForall!1557 (exprs!8240 lt!2595105) (exprs!8240 ct2!346) lambda!448786))))

(declare-fun lt!2595218 () Unit!164218)

(declare-fun choose!56416 (Context!15480 Context!15480 List!70916) Unit!164218)

(assert (=> d!2262999 (= lt!2595218 (choose!56416 lt!2595105 ct2!346 s!7854))))

(assert (=> d!2262999 (matchZipper!3704 (set.insert ct2!346 (as set.empty (Set Context!15480))) s!7854)))

(assert (=> d!2262999 (= (lemmaPrependingNullableCtxStillMatches!37 lt!2595105 ct2!346 s!7854) lt!2595218)))

(declare-fun bs!1911211 () Bool)

(assert (= bs!1911211 d!2262999))

(declare-fun m!7957612 () Bool)

(assert (=> bs!1911211 m!7957612))

(declare-fun m!7957614 () Bool)

(assert (=> bs!1911211 m!7957614))

(assert (=> bs!1911211 m!7957432))

(assert (=> bs!1911211 m!7957432))

(assert (=> bs!1911211 m!7957434))

(declare-fun m!7957616 () Bool)

(assert (=> bs!1911211 m!7957616))

(assert (=> bs!1911211 m!7957614))

(declare-fun m!7957618 () Bool)

(assert (=> bs!1911211 m!7957618))

(declare-fun m!7957620 () Bool)

(assert (=> bs!1911211 m!7957620))

(assert (=> b!7271565 d!2262999))

(declare-fun d!2263001 () Bool)

(declare-fun c!1353725 () Bool)

(assert (=> d!2263001 (= c!1353725 (isEmpty!40718 (t!384988 s!7854)))))

(declare-fun e!4360550 () Bool)

(assert (=> d!2263001 (= (matchZipper!3704 lt!2595078 (t!384988 s!7854)) e!4360550)))

(declare-fun b!7271659 () Bool)

(assert (=> b!7271659 (= e!4360550 (nullableZipper!3006 lt!2595078))))

(declare-fun b!7271660 () Bool)

(assert (=> b!7271660 (= e!4360550 (matchZipper!3704 (derivationStepZipper!3540 lt!2595078 (head!15004 (t!384988 s!7854))) (tail!14505 (t!384988 s!7854))))))

(assert (= (and d!2263001 c!1353725) b!7271659))

(assert (= (and d!2263001 (not c!1353725)) b!7271660))

(declare-fun m!7957622 () Bool)

(assert (=> d!2263001 m!7957622))

(declare-fun m!7957624 () Bool)

(assert (=> b!7271659 m!7957624))

(declare-fun m!7957626 () Bool)

(assert (=> b!7271660 m!7957626))

(assert (=> b!7271660 m!7957626))

(declare-fun m!7957628 () Bool)

(assert (=> b!7271660 m!7957628))

(declare-fun m!7957630 () Bool)

(assert (=> b!7271660 m!7957630))

(assert (=> b!7271660 m!7957628))

(assert (=> b!7271660 m!7957630))

(declare-fun m!7957632 () Bool)

(assert (=> b!7271660 m!7957632))

(assert (=> b!7271565 d!2263001))

(declare-fun d!2263003 () Bool)

(assert (=> d!2263003 (= (flatMap!2913 lt!2595100 lambda!448741) (choose!56415 lt!2595100 lambda!448741))))

(declare-fun bs!1911212 () Bool)

(assert (= bs!1911212 d!2263003))

(declare-fun m!7957634 () Bool)

(assert (=> bs!1911212 m!7957634))

(assert (=> b!7271565 d!2263003))

(assert (=> b!7271560 d!2262995))

(assert (=> b!7271560 d!2262991))

(declare-fun b!7271661 () Bool)

(declare-fun e!4360552 () List!70915)

(assert (=> b!7271661 (= e!4360552 (exprs!8240 ct2!346))))

(declare-fun d!2263005 () Bool)

(declare-fun e!4360551 () Bool)

(assert (=> d!2263005 e!4360551))

(declare-fun res!2947755 () Bool)

(assert (=> d!2263005 (=> (not res!2947755) (not e!4360551))))

(declare-fun lt!2595220 () List!70915)

(assert (=> d!2263005 (= res!2947755 (= (content!14778 lt!2595220) (set.union (content!14778 lt!2595089) (content!14778 (exprs!8240 ct2!346)))))))

(assert (=> d!2263005 (= lt!2595220 e!4360552)))

(declare-fun c!1353726 () Bool)

(assert (=> d!2263005 (= c!1353726 (is-Nil!70791 lt!2595089))))

(assert (=> d!2263005 (= (++!16700 lt!2595089 (exprs!8240 ct2!346)) lt!2595220)))

(declare-fun b!7271663 () Bool)

(declare-fun res!2947756 () Bool)

(assert (=> b!7271663 (=> (not res!2947756) (not e!4360551))))

(assert (=> b!7271663 (= res!2947756 (= (size!41826 lt!2595220) (+ (size!41826 lt!2595089) (size!41826 (exprs!8240 ct2!346)))))))

(declare-fun b!7271662 () Bool)

(assert (=> b!7271662 (= e!4360552 (Cons!70791 (h!77239 lt!2595089) (++!16700 (t!384987 lt!2595089) (exprs!8240 ct2!346))))))

(declare-fun b!7271664 () Bool)

(assert (=> b!7271664 (= e!4360551 (or (not (= (exprs!8240 ct2!346) Nil!70791)) (= lt!2595220 lt!2595089)))))

(assert (= (and d!2263005 c!1353726) b!7271661))

(assert (= (and d!2263005 (not c!1353726)) b!7271662))

(assert (= (and d!2263005 res!2947755) b!7271663))

(assert (= (and b!7271663 res!2947756) b!7271664))

(declare-fun m!7957636 () Bool)

(assert (=> d!2263005 m!7957636))

(declare-fun m!7957638 () Bool)

(assert (=> d!2263005 m!7957638))

(assert (=> d!2263005 m!7957566))

(declare-fun m!7957640 () Bool)

(assert (=> b!7271663 m!7957640))

(declare-fun m!7957642 () Bool)

(assert (=> b!7271663 m!7957642))

(assert (=> b!7271663 m!7957572))

(declare-fun m!7957644 () Bool)

(assert (=> b!7271662 m!7957644))

(assert (=> b!7271560 d!2263005))

(declare-fun bm!663320 () Bool)

(declare-fun call!663326 () List!70915)

(declare-fun call!663330 () List!70915)

(assert (=> bm!663320 (= call!663326 call!663330)))

(declare-fun b!7271687 () Bool)

(declare-fun c!1353740 () Bool)

(declare-fun e!4360569 () Bool)

(assert (=> b!7271687 (= c!1353740 e!4360569)))

(declare-fun res!2947759 () Bool)

(assert (=> b!7271687 (=> (not res!2947759) (not e!4360569))))

(assert (=> b!7271687 (= res!2947759 (is-Concat!27645 (h!77239 (exprs!8240 ct1!250))))))

(declare-fun e!4360566 () (Set Context!15480))

(declare-fun e!4360568 () (Set Context!15480))

(assert (=> b!7271687 (= e!4360566 e!4360568)))

(declare-fun bm!663321 () Bool)

(declare-fun call!663329 () (Set Context!15480))

(declare-fun call!663328 () (Set Context!15480))

(assert (=> bm!663321 (= call!663329 call!663328)))

(declare-fun b!7271688 () Bool)

(declare-fun e!4360565 () (Set Context!15480))

(assert (=> b!7271688 (= e!4360565 e!4360566)))

(declare-fun c!1353741 () Bool)

(assert (=> b!7271688 (= c!1353741 (is-Union!18800 (h!77239 (exprs!8240 ct1!250))))))

(declare-fun b!7271689 () Bool)

(declare-fun e!4360567 () (Set Context!15480))

(assert (=> b!7271689 (= e!4360567 call!663329)))

(declare-fun b!7271690 () Bool)

(declare-fun e!4360570 () (Set Context!15480))

(assert (=> b!7271690 (= e!4360570 call!663329)))

(declare-fun d!2263007 () Bool)

(declare-fun c!1353737 () Bool)

(assert (=> d!2263007 (= c!1353737 (and (is-ElementMatch!18800 (h!77239 (exprs!8240 ct1!250))) (= (c!1353698 (h!77239 (exprs!8240 ct1!250))) (h!77240 s!7854))))))

(assert (=> d!2263007 (= (derivationStepZipperDown!2734 (h!77239 (exprs!8240 ct1!250)) lt!2595098 (h!77240 s!7854)) e!4360565)))

(declare-fun b!7271691 () Bool)

(assert (=> b!7271691 (= e!4360565 (set.insert lt!2595098 (as set.empty (Set Context!15480))))))

(declare-fun b!7271692 () Bool)

(assert (=> b!7271692 (= e!4360567 (as set.empty (Set Context!15480)))))

(declare-fun b!7271693 () Bool)

(declare-fun call!663327 () (Set Context!15480))

(declare-fun call!663325 () (Set Context!15480))

(assert (=> b!7271693 (= e!4360566 (set.union call!663327 call!663325))))

(declare-fun c!1353738 () Bool)

(declare-fun bm!663322 () Bool)

(assert (=> bm!663322 (= call!663327 (derivationStepZipperDown!2734 (ite c!1353741 (regOne!38113 (h!77239 (exprs!8240 ct1!250))) (ite c!1353740 (regTwo!38112 (h!77239 (exprs!8240 ct1!250))) (ite c!1353738 (regOne!38112 (h!77239 (exprs!8240 ct1!250))) (reg!19129 (h!77239 (exprs!8240 ct1!250)))))) (ite (or c!1353741 c!1353740) lt!2595098 (Context!15481 call!663326)) (h!77240 s!7854)))))

(declare-fun bm!663323 () Bool)

(declare-fun $colon$colon!2974 (List!70915 Regex!18800) List!70915)

(assert (=> bm!663323 (= call!663330 ($colon$colon!2974 (exprs!8240 lt!2595098) (ite (or c!1353740 c!1353738) (regTwo!38112 (h!77239 (exprs!8240 ct1!250))) (h!77239 (exprs!8240 ct1!250)))))))

(declare-fun b!7271694 () Bool)

(declare-fun c!1353739 () Bool)

(assert (=> b!7271694 (= c!1353739 (is-Star!18800 (h!77239 (exprs!8240 ct1!250))))))

(assert (=> b!7271694 (= e!4360570 e!4360567)))

(declare-fun b!7271695 () Bool)

(assert (=> b!7271695 (= e!4360568 (set.union call!663325 call!663328))))

(declare-fun bm!663324 () Bool)

(assert (=> bm!663324 (= call!663325 (derivationStepZipperDown!2734 (ite c!1353741 (regTwo!38113 (h!77239 (exprs!8240 ct1!250))) (regOne!38112 (h!77239 (exprs!8240 ct1!250)))) (ite c!1353741 lt!2595098 (Context!15481 call!663330)) (h!77240 s!7854)))))

(declare-fun bm!663325 () Bool)

(assert (=> bm!663325 (= call!663328 call!663327)))

(declare-fun b!7271696 () Bool)

(assert (=> b!7271696 (= e!4360568 e!4360570)))

(assert (=> b!7271696 (= c!1353738 (is-Concat!27645 (h!77239 (exprs!8240 ct1!250))))))

(declare-fun b!7271697 () Bool)

(assert (=> b!7271697 (= e!4360569 (nullable!8000 (regOne!38112 (h!77239 (exprs!8240 ct1!250)))))))

(assert (= (and d!2263007 c!1353737) b!7271691))

(assert (= (and d!2263007 (not c!1353737)) b!7271688))

(assert (= (and b!7271688 c!1353741) b!7271693))

(assert (= (and b!7271688 (not c!1353741)) b!7271687))

(assert (= (and b!7271687 res!2947759) b!7271697))

(assert (= (and b!7271687 c!1353740) b!7271695))

(assert (= (and b!7271687 (not c!1353740)) b!7271696))

(assert (= (and b!7271696 c!1353738) b!7271690))

(assert (= (and b!7271696 (not c!1353738)) b!7271694))

(assert (= (and b!7271694 c!1353739) b!7271689))

(assert (= (and b!7271694 (not c!1353739)) b!7271692))

(assert (= (or b!7271690 b!7271689) bm!663320))

(assert (= (or b!7271690 b!7271689) bm!663321))

(assert (= (or b!7271695 bm!663320) bm!663323))

(assert (= (or b!7271695 bm!663321) bm!663325))

(assert (= (or b!7271693 bm!663325) bm!663322))

(assert (= (or b!7271693 b!7271695) bm!663324))

(declare-fun m!7957646 () Bool)

(assert (=> bm!663323 m!7957646))

(declare-fun m!7957648 () Bool)

(assert (=> bm!663324 m!7957648))

(declare-fun m!7957650 () Bool)

(assert (=> bm!663322 m!7957650))

(declare-fun m!7957652 () Bool)

(assert (=> b!7271697 m!7957652))

(assert (=> b!7271691 m!7957420))

(assert (=> b!7271560 d!2263007))

(declare-fun d!2263009 () Bool)

(declare-fun c!1353742 () Bool)

(assert (=> d!2263009 (= c!1353742 (isEmpty!40718 s!7854))))

(declare-fun e!4360571 () Bool)

(assert (=> d!2263009 (= (matchZipper!3704 (set.insert ct2!346 (as set.empty (Set Context!15480))) s!7854) e!4360571)))

(declare-fun b!7271698 () Bool)

(assert (=> b!7271698 (= e!4360571 (nullableZipper!3006 (set.insert ct2!346 (as set.empty (Set Context!15480)))))))

(declare-fun b!7271699 () Bool)

(assert (=> b!7271699 (= e!4360571 (matchZipper!3704 (derivationStepZipper!3540 (set.insert ct2!346 (as set.empty (Set Context!15480))) (head!15004 s!7854)) (tail!14505 s!7854)))))

(assert (= (and d!2263009 c!1353742) b!7271698))

(assert (= (and d!2263009 (not c!1353742)) b!7271699))

(assert (=> d!2263009 m!7957590))

(assert (=> b!7271698 m!7957432))

(declare-fun m!7957654 () Bool)

(assert (=> b!7271698 m!7957654))

(assert (=> b!7271699 m!7957594))

(assert (=> b!7271699 m!7957432))

(assert (=> b!7271699 m!7957594))

(declare-fun m!7957656 () Bool)

(assert (=> b!7271699 m!7957656))

(assert (=> b!7271699 m!7957598))

(assert (=> b!7271699 m!7957656))

(assert (=> b!7271699 m!7957598))

(declare-fun m!7957658 () Bool)

(assert (=> b!7271699 m!7957658))

(assert (=> start!709656 d!2263009))

(declare-fun bs!1911213 () Bool)

(declare-fun d!2263011 () Bool)

(assert (= bs!1911213 (and d!2263011 b!7271563)))

(declare-fun lambda!448789 () Int)

(assert (=> bs!1911213 (= lambda!448789 lambda!448740)))

(declare-fun bs!1911214 () Bool)

(assert (= bs!1911214 (and d!2263011 d!2262989)))

(assert (=> bs!1911214 (not (= lambda!448789 lambda!448783))))

(declare-fun bs!1911215 () Bool)

(assert (= bs!1911215 (and d!2263011 d!2262999)))

(assert (=> bs!1911215 (= lambda!448789 lambda!448786)))

(assert (=> d!2263011 (= (inv!90011 ct2!346) (forall!17629 (exprs!8240 ct2!346) lambda!448789))))

(declare-fun bs!1911216 () Bool)

(assert (= bs!1911216 d!2263011))

(declare-fun m!7957660 () Bool)

(assert (=> bs!1911216 m!7957660))

(assert (=> start!709656 d!2263011))

(declare-fun bs!1911217 () Bool)

(declare-fun d!2263013 () Bool)

(assert (= bs!1911217 (and d!2263013 b!7271563)))

(declare-fun lambda!448790 () Int)

(assert (=> bs!1911217 (= lambda!448790 lambda!448740)))

(declare-fun bs!1911218 () Bool)

(assert (= bs!1911218 (and d!2263013 d!2262989)))

(assert (=> bs!1911218 (not (= lambda!448790 lambda!448783))))

(declare-fun bs!1911219 () Bool)

(assert (= bs!1911219 (and d!2263013 d!2262999)))

(assert (=> bs!1911219 (= lambda!448790 lambda!448786)))

(declare-fun bs!1911220 () Bool)

(assert (= bs!1911220 (and d!2263013 d!2263011)))

(assert (=> bs!1911220 (= lambda!448790 lambda!448789)))

(assert (=> d!2263013 (= (inv!90011 ct1!250) (forall!17629 (exprs!8240 ct1!250) lambda!448790))))

(declare-fun bs!1911221 () Bool)

(assert (= bs!1911221 d!2263013))

(declare-fun m!7957662 () Bool)

(assert (=> bs!1911221 m!7957662))

(assert (=> start!709656 d!2263013))

(declare-fun d!2263015 () Bool)

(declare-fun c!1353743 () Bool)

(assert (=> d!2263015 (= c!1353743 (isEmpty!40718 (t!384988 s!7854)))))

(declare-fun e!4360572 () Bool)

(assert (=> d!2263015 (= (matchZipper!3704 lt!2595106 (t!384988 s!7854)) e!4360572)))

(declare-fun b!7271700 () Bool)

(assert (=> b!7271700 (= e!4360572 (nullableZipper!3006 lt!2595106))))

(declare-fun b!7271701 () Bool)

(assert (=> b!7271701 (= e!4360572 (matchZipper!3704 (derivationStepZipper!3540 lt!2595106 (head!15004 (t!384988 s!7854))) (tail!14505 (t!384988 s!7854))))))

(assert (= (and d!2263015 c!1353743) b!7271700))

(assert (= (and d!2263015 (not c!1353743)) b!7271701))

(assert (=> d!2263015 m!7957622))

(declare-fun m!7957664 () Bool)

(assert (=> b!7271700 m!7957664))

(assert (=> b!7271701 m!7957626))

(assert (=> b!7271701 m!7957626))

(declare-fun m!7957666 () Bool)

(assert (=> b!7271701 m!7957666))

(assert (=> b!7271701 m!7957630))

(assert (=> b!7271701 m!7957666))

(assert (=> b!7271701 m!7957630))

(declare-fun m!7957668 () Bool)

(assert (=> b!7271701 m!7957668))

(assert (=> b!7271561 d!2263015))

(declare-fun d!2263017 () Bool)

(declare-fun res!2947764 () Bool)

(declare-fun e!4360577 () Bool)

(assert (=> d!2263017 (=> res!2947764 e!4360577)))

(assert (=> d!2263017 (= res!2947764 (is-Nil!70791 (exprs!8240 ct1!250)))))

(assert (=> d!2263017 (= (forall!17629 (exprs!8240 ct1!250) lambda!448740) e!4360577)))

(declare-fun b!7271706 () Bool)

(declare-fun e!4360578 () Bool)

(assert (=> b!7271706 (= e!4360577 e!4360578)))

(declare-fun res!2947765 () Bool)

(assert (=> b!7271706 (=> (not res!2947765) (not e!4360578))))

(declare-fun dynLambda!28939 (Int Regex!18800) Bool)

(assert (=> b!7271706 (= res!2947765 (dynLambda!28939 lambda!448740 (h!77239 (exprs!8240 ct1!250))))))

(declare-fun b!7271707 () Bool)

(assert (=> b!7271707 (= e!4360578 (forall!17629 (t!384987 (exprs!8240 ct1!250)) lambda!448740))))

(assert (= (and d!2263017 (not res!2947764)) b!7271706))

(assert (= (and b!7271706 res!2947765) b!7271707))

(declare-fun b_lambda!280371 () Bool)

(assert (=> (not b_lambda!280371) (not b!7271706)))

(declare-fun m!7957670 () Bool)

(assert (=> b!7271706 m!7957670))

(declare-fun m!7957672 () Bool)

(assert (=> b!7271707 m!7957672))

(assert (=> b!7271561 d!2263017))

(assert (=> b!7271561 d!2262995))

(declare-fun d!2263019 () Bool)

(declare-fun c!1353744 () Bool)

(assert (=> d!2263019 (= c!1353744 (isEmpty!40718 (t!384988 s!7854)))))

(declare-fun e!4360579 () Bool)

(assert (=> d!2263019 (= (matchZipper!3704 lt!2595087 (t!384988 s!7854)) e!4360579)))

(declare-fun b!7271708 () Bool)

(assert (=> b!7271708 (= e!4360579 (nullableZipper!3006 lt!2595087))))

(declare-fun b!7271709 () Bool)

(assert (=> b!7271709 (= e!4360579 (matchZipper!3704 (derivationStepZipper!3540 lt!2595087 (head!15004 (t!384988 s!7854))) (tail!14505 (t!384988 s!7854))))))

(assert (= (and d!2263019 c!1353744) b!7271708))

(assert (= (and d!2263019 (not c!1353744)) b!7271709))

(assert (=> d!2263019 m!7957622))

(declare-fun m!7957674 () Bool)

(assert (=> b!7271708 m!7957674))

(assert (=> b!7271709 m!7957626))

(assert (=> b!7271709 m!7957626))

(declare-fun m!7957676 () Bool)

(assert (=> b!7271709 m!7957676))

(assert (=> b!7271709 m!7957630))

(assert (=> b!7271709 m!7957676))

(assert (=> b!7271709 m!7957630))

(declare-fun m!7957678 () Bool)

(assert (=> b!7271709 m!7957678))

(assert (=> b!7271561 d!2263019))

(declare-fun e!4360582 () Bool)

(declare-fun d!2263021 () Bool)

(assert (=> d!2263021 (= (matchZipper!3704 (set.union lt!2595087 lt!2595078) (t!384988 s!7854)) e!4360582)))

(declare-fun res!2947768 () Bool)

(assert (=> d!2263021 (=> res!2947768 e!4360582)))

(assert (=> d!2263021 (= res!2947768 (matchZipper!3704 lt!2595087 (t!384988 s!7854)))))

(declare-fun lt!2595223 () Unit!164218)

(declare-fun choose!56417 ((Set Context!15480) (Set Context!15480) List!70916) Unit!164218)

(assert (=> d!2263021 (= lt!2595223 (choose!56417 lt!2595087 lt!2595078 (t!384988 s!7854)))))

(assert (=> d!2263021 (= (lemmaZipperConcatMatchesSameAsBothZippers!1773 lt!2595087 lt!2595078 (t!384988 s!7854)) lt!2595223)))

(declare-fun b!7271712 () Bool)

(assert (=> b!7271712 (= e!4360582 (matchZipper!3704 lt!2595078 (t!384988 s!7854)))))

(assert (= (and d!2263021 (not res!2947768)) b!7271712))

(declare-fun m!7957680 () Bool)

(assert (=> d!2263021 m!7957680))

(assert (=> d!2263021 m!7957430))

(declare-fun m!7957682 () Bool)

(assert (=> d!2263021 m!7957682))

(assert (=> b!7271712 m!7957414))

(assert (=> b!7271561 d!2263021))

(declare-fun d!2263023 () Bool)

(assert (=> d!2263023 (= (isEmpty!40716 (exprs!8240 ct1!250)) (is-Nil!70791 (exprs!8240 ct1!250)))))

(assert (=> b!7271567 d!2263023))

(declare-fun bm!663326 () Bool)

(declare-fun call!663332 () List!70915)

(declare-fun call!663336 () List!70915)

(assert (=> bm!663326 (= call!663332 call!663336)))

(declare-fun b!7271713 () Bool)

(declare-fun c!1353748 () Bool)

(declare-fun e!4360587 () Bool)

(assert (=> b!7271713 (= c!1353748 e!4360587)))

(declare-fun res!2947769 () Bool)

(assert (=> b!7271713 (=> (not res!2947769) (not e!4360587))))

(assert (=> b!7271713 (= res!2947769 (is-Concat!27645 (h!77239 (exprs!8240 ct1!250))))))

(declare-fun e!4360584 () (Set Context!15480))

(declare-fun e!4360586 () (Set Context!15480))

(assert (=> b!7271713 (= e!4360584 e!4360586)))

(declare-fun bm!663327 () Bool)

(declare-fun call!663335 () (Set Context!15480))

(declare-fun call!663334 () (Set Context!15480))

(assert (=> bm!663327 (= call!663335 call!663334)))

(declare-fun b!7271714 () Bool)

(declare-fun e!4360583 () (Set Context!15480))

(assert (=> b!7271714 (= e!4360583 e!4360584)))

(declare-fun c!1353749 () Bool)

(assert (=> b!7271714 (= c!1353749 (is-Union!18800 (h!77239 (exprs!8240 ct1!250))))))

(declare-fun b!7271715 () Bool)

(declare-fun e!4360585 () (Set Context!15480))

(assert (=> b!7271715 (= e!4360585 call!663335)))

(declare-fun b!7271716 () Bool)

(declare-fun e!4360588 () (Set Context!15480))

(assert (=> b!7271716 (= e!4360588 call!663335)))

(declare-fun d!2263025 () Bool)

(declare-fun c!1353745 () Bool)

(assert (=> d!2263025 (= c!1353745 (and (is-ElementMatch!18800 (h!77239 (exprs!8240 ct1!250))) (= (c!1353698 (h!77239 (exprs!8240 ct1!250))) (h!77240 s!7854))))))

(assert (=> d!2263025 (= (derivationStepZipperDown!2734 (h!77239 (exprs!8240 ct1!250)) lt!2595105 (h!77240 s!7854)) e!4360583)))

(declare-fun b!7271717 () Bool)

(assert (=> b!7271717 (= e!4360583 (set.insert lt!2595105 (as set.empty (Set Context!15480))))))

(declare-fun b!7271718 () Bool)

(assert (=> b!7271718 (= e!4360585 (as set.empty (Set Context!15480)))))

(declare-fun b!7271719 () Bool)

(declare-fun call!663333 () (Set Context!15480))

(declare-fun call!663331 () (Set Context!15480))

(assert (=> b!7271719 (= e!4360584 (set.union call!663333 call!663331))))

(declare-fun bm!663328 () Bool)

(declare-fun c!1353746 () Bool)

(assert (=> bm!663328 (= call!663333 (derivationStepZipperDown!2734 (ite c!1353749 (regOne!38113 (h!77239 (exprs!8240 ct1!250))) (ite c!1353748 (regTwo!38112 (h!77239 (exprs!8240 ct1!250))) (ite c!1353746 (regOne!38112 (h!77239 (exprs!8240 ct1!250))) (reg!19129 (h!77239 (exprs!8240 ct1!250)))))) (ite (or c!1353749 c!1353748) lt!2595105 (Context!15481 call!663332)) (h!77240 s!7854)))))

(declare-fun bm!663329 () Bool)

(assert (=> bm!663329 (= call!663336 ($colon$colon!2974 (exprs!8240 lt!2595105) (ite (or c!1353748 c!1353746) (regTwo!38112 (h!77239 (exprs!8240 ct1!250))) (h!77239 (exprs!8240 ct1!250)))))))

(declare-fun b!7271720 () Bool)

(declare-fun c!1353747 () Bool)

(assert (=> b!7271720 (= c!1353747 (is-Star!18800 (h!77239 (exprs!8240 ct1!250))))))

(assert (=> b!7271720 (= e!4360588 e!4360585)))

(declare-fun b!7271721 () Bool)

(assert (=> b!7271721 (= e!4360586 (set.union call!663331 call!663334))))

(declare-fun bm!663330 () Bool)

(assert (=> bm!663330 (= call!663331 (derivationStepZipperDown!2734 (ite c!1353749 (regTwo!38113 (h!77239 (exprs!8240 ct1!250))) (regOne!38112 (h!77239 (exprs!8240 ct1!250)))) (ite c!1353749 lt!2595105 (Context!15481 call!663336)) (h!77240 s!7854)))))

(declare-fun bm!663331 () Bool)

(assert (=> bm!663331 (= call!663334 call!663333)))

(declare-fun b!7271722 () Bool)

(assert (=> b!7271722 (= e!4360586 e!4360588)))

(assert (=> b!7271722 (= c!1353746 (is-Concat!27645 (h!77239 (exprs!8240 ct1!250))))))

(declare-fun b!7271723 () Bool)

(assert (=> b!7271723 (= e!4360587 (nullable!8000 (regOne!38112 (h!77239 (exprs!8240 ct1!250)))))))

(assert (= (and d!2263025 c!1353745) b!7271717))

(assert (= (and d!2263025 (not c!1353745)) b!7271714))

(assert (= (and b!7271714 c!1353749) b!7271719))

(assert (= (and b!7271714 (not c!1353749)) b!7271713))

(assert (= (and b!7271713 res!2947769) b!7271723))

(assert (= (and b!7271713 c!1353748) b!7271721))

(assert (= (and b!7271713 (not c!1353748)) b!7271722))

(assert (= (and b!7271722 c!1353746) b!7271716))

(assert (= (and b!7271722 (not c!1353746)) b!7271720))

(assert (= (and b!7271720 c!1353747) b!7271715))

(assert (= (and b!7271720 (not c!1353747)) b!7271718))

(assert (= (or b!7271716 b!7271715) bm!663326))

(assert (= (or b!7271716 b!7271715) bm!663327))

(assert (= (or b!7271721 bm!663326) bm!663329))

(assert (= (or b!7271721 bm!663327) bm!663331))

(assert (= (or b!7271719 bm!663331) bm!663328))

(assert (= (or b!7271719 b!7271721) bm!663330))

(declare-fun m!7957684 () Bool)

(assert (=> bm!663329 m!7957684))

(declare-fun m!7957686 () Bool)

(assert (=> bm!663330 m!7957686))

(declare-fun m!7957688 () Bool)

(assert (=> bm!663328 m!7957688))

(assert (=> b!7271723 m!7957652))

(declare-fun m!7957690 () Bool)

(assert (=> b!7271717 m!7957690))

(assert (=> b!7271562 d!2263025))

(declare-fun b!7271725 () Bool)

(declare-fun e!4360590 () (Set Context!15480))

(declare-fun call!663337 () (Set Context!15480))

(assert (=> b!7271725 (= e!4360590 call!663337)))

(declare-fun b!7271726 () Bool)

(declare-fun e!4360591 () Bool)

(assert (=> b!7271726 (= e!4360591 (nullable!8000 (h!77239 (exprs!8240 lt!2595105))))))

(declare-fun bm!663332 () Bool)

(assert (=> bm!663332 (= call!663337 (derivationStepZipperDown!2734 (h!77239 (exprs!8240 lt!2595105)) (Context!15481 (t!384987 (exprs!8240 lt!2595105))) (h!77240 s!7854)))))

(declare-fun e!4360589 () (Set Context!15480))

(declare-fun b!7271727 () Bool)

(assert (=> b!7271727 (= e!4360589 (set.union call!663337 (derivationStepZipperUp!2570 (Context!15481 (t!384987 (exprs!8240 lt!2595105))) (h!77240 s!7854))))))

(declare-fun b!7271728 () Bool)

(assert (=> b!7271728 (= e!4360590 (as set.empty (Set Context!15480)))))

(declare-fun d!2263027 () Bool)

(declare-fun c!1353751 () Bool)

(assert (=> d!2263027 (= c!1353751 e!4360591)))

(declare-fun res!2947770 () Bool)

(assert (=> d!2263027 (=> (not res!2947770) (not e!4360591))))

(assert (=> d!2263027 (= res!2947770 (is-Cons!70791 (exprs!8240 lt!2595105)))))

(assert (=> d!2263027 (= (derivationStepZipperUp!2570 lt!2595105 (h!77240 s!7854)) e!4360589)))

(declare-fun b!7271724 () Bool)

(assert (=> b!7271724 (= e!4360589 e!4360590)))

(declare-fun c!1353750 () Bool)

(assert (=> b!7271724 (= c!1353750 (is-Cons!70791 (exprs!8240 lt!2595105)))))

(assert (= (and d!2263027 res!2947770) b!7271726))

(assert (= (and d!2263027 c!1353751) b!7271727))

(assert (= (and d!2263027 (not c!1353751)) b!7271724))

(assert (= (and b!7271724 c!1353750) b!7271725))

(assert (= (and b!7271724 (not c!1353750)) b!7271728))

(assert (= (or b!7271727 b!7271725) bm!663332))

(declare-fun m!7957692 () Bool)

(assert (=> b!7271726 m!7957692))

(declare-fun m!7957694 () Bool)

(assert (=> bm!663332 m!7957694))

(declare-fun m!7957696 () Bool)

(assert (=> b!7271727 m!7957696))

(assert (=> b!7271562 d!2263027))

(declare-fun b!7271733 () Bool)

(declare-fun e!4360594 () Bool)

(declare-fun tp!2041209 () Bool)

(declare-fun tp!2041210 () Bool)

(assert (=> b!7271733 (= e!4360594 (and tp!2041209 tp!2041210))))

(assert (=> b!7271568 (= tp!2041194 e!4360594)))

(assert (= (and b!7271568 (is-Cons!70791 (exprs!8240 ct2!346))) b!7271733))

(declare-fun b!7271734 () Bool)

(declare-fun e!4360595 () Bool)

(declare-fun tp!2041211 () Bool)

(declare-fun tp!2041212 () Bool)

(assert (=> b!7271734 (= e!4360595 (and tp!2041211 tp!2041212))))

(assert (=> b!7271564 (= tp!2041193 e!4360595)))

(assert (= (and b!7271564 (is-Cons!70791 (exprs!8240 ct1!250))) b!7271734))

(declare-fun b!7271739 () Bool)

(declare-fun e!4360598 () Bool)

(declare-fun tp!2041215 () Bool)

(assert (=> b!7271739 (= e!4360598 (and tp_is_empty!47065 tp!2041215))))

(assert (=> b!7271566 (= tp!2041195 e!4360598)))

(assert (= (and b!7271566 (is-Cons!70792 (t!384988 s!7854))) b!7271739))

(declare-fun b_lambda!280373 () Bool)

(assert (= b_lambda!280365 (or b!7271563 b_lambda!280373)))

(declare-fun bs!1911222 () Bool)

(declare-fun d!2263029 () Bool)

(assert (= bs!1911222 (and d!2263029 b!7271563)))

(assert (=> bs!1911222 (= (dynLambda!28938 lambda!448741 ct1!250) (derivationStepZipperUp!2570 ct1!250 (h!77240 s!7854)))))

(assert (=> bs!1911222 m!7957444))

(assert (=> d!2262969 d!2263029))

(declare-fun b_lambda!280375 () Bool)

(assert (= b_lambda!280371 (or b!7271563 b_lambda!280375)))

(declare-fun bs!1911223 () Bool)

(declare-fun d!2263031 () Bool)

(assert (= bs!1911223 (and d!2263031 b!7271563)))

(declare-fun validRegex!9587 (Regex!18800) Bool)

(assert (=> bs!1911223 (= (dynLambda!28939 lambda!448740 (h!77239 (exprs!8240 ct1!250))) (validRegex!9587 (h!77239 (exprs!8240 ct1!250))))))

(declare-fun m!7957698 () Bool)

(assert (=> bs!1911223 m!7957698))

(assert (=> b!7271706 d!2263031))

(declare-fun b_lambda!280377 () Bool)

(assert (= b_lambda!280367 (or b!7271563 b_lambda!280377)))

(declare-fun bs!1911224 () Bool)

(declare-fun d!2263033 () Bool)

(assert (= bs!1911224 (and d!2263033 b!7271563)))

(assert (=> bs!1911224 (= (dynLambda!28938 lambda!448741 lt!2595094) (derivationStepZipperUp!2570 lt!2595094 (h!77240 s!7854)))))

(assert (=> bs!1911224 m!7957450))

(assert (=> d!2262975 d!2263033))

(declare-fun b_lambda!280379 () Bool)

(assert (= b_lambda!280369 (or b!7271563 b_lambda!280379)))

(declare-fun bs!1911225 () Bool)

(declare-fun d!2263035 () Bool)

(assert (= bs!1911225 (and d!2263035 b!7271563)))

(assert (=> bs!1911225 (= (dynLambda!28938 lambda!448741 lt!2595098) (derivationStepZipperUp!2570 lt!2595098 (h!77240 s!7854)))))

(assert (=> bs!1911225 m!7957400))

(assert (=> d!2262997 d!2263035))

(push 1)

(assert (not bm!663323))

(assert (not b!7271734))

(assert (not d!2262993))

(assert (not b!7271659))

(assert (not bm!663307))

(assert (not d!2262995))

(assert (not b!7271699))

(assert (not d!2262981))

(assert (not d!2262977))

(assert (not b!7271707))

(assert (not b!7271733))

(assert (not b!7271632))

(assert (not bm!663305))

(assert (not d!2262985))

(assert (not b!7271660))

(assert (not b!7271651))

(assert (not d!2262999))

(assert (not b!7271643))

(assert (not bm!663332))

(assert (not b_lambda!280377))

(assert (not b!7271723))

(assert (not b!7271650))

(assert (not bs!1911223))

(assert (not b!7271631))

(assert (not bm!663328))

(assert (not d!2263009))

(assert (not b_lambda!280373))

(assert (not bm!663324))

(assert (not d!2263003))

(assert (not b!7271712))

(assert (not b!7271709))

(assert (not bs!1911225))

(assert (not b!7271662))

(assert (not bm!663329))

(assert (not b!7271726))

(assert tp_is_empty!47065)

(assert (not b!7271697))

(assert (not bm!663306))

(assert (not b!7271727))

(assert (not d!2262969))

(assert (not b!7271701))

(assert (not bs!1911222))

(assert (not bm!663322))

(assert (not d!2263015))

(assert (not d!2263005))

(assert (not d!2263019))

(assert (not d!2263013))

(assert (not b!7271627))

(assert (not d!2262967))

(assert (not b!7271657))

(assert (not d!2263001))

(assert (not b_lambda!280375))

(assert (not b!7271644))

(assert (not b!7271700))

(assert (not d!2262975))

(assert (not b!7271663))

(assert (not b!7271658))

(assert (not bm!663330))

(assert (not d!2262997))

(assert (not d!2263011))

(assert (not bs!1911224))

(assert (not d!2262989))

(assert (not d!2262979))

(assert (not b!7271739))

(assert (not d!2263021))

(assert (not d!2262983))

(assert (not b!7271708))

(assert (not b!7271626))

(assert (not b!7271698))

(assert (not b_lambda!280379))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

