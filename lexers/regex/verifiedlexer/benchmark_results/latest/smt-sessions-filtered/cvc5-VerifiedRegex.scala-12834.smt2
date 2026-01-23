; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!708896 () Bool)

(assert start!708896)

(declare-fun b!7267460 () Bool)

(assert (=> b!7267460 true))

(declare-fun b!7267450 () Bool)

(declare-fun res!2946296 () Bool)

(declare-fun e!4358103 () Bool)

(assert (=> b!7267450 (=> res!2946296 e!4358103)))

(declare-datatypes ((C!37826 0))(
  ( (C!37827 (val!28861 Int)) )
))
(declare-datatypes ((Regex!18776 0))(
  ( (ElementMatch!18776 (c!1352424 C!37826)) (Concat!27621 (regOne!38064 Regex!18776) (regTwo!38064 Regex!18776)) (EmptyExpr!18776) (Star!18776 (reg!19105 Regex!18776)) (EmptyLang!18776) (Union!18776 (regOne!38065 Regex!18776) (regTwo!38065 Regex!18776)) )
))
(declare-datatypes ((List!70867 0))(
  ( (Nil!70743) (Cons!70743 (h!77191 Regex!18776) (t!384937 List!70867)) )
))
(declare-datatypes ((Context!15432 0))(
  ( (Context!15433 (exprs!8216 List!70867)) )
))
(declare-fun lt!2592951 () (Set Context!15432))

(declare-datatypes ((List!70868 0))(
  ( (Nil!70744) (Cons!70744 (h!77192 C!37826) (t!384938 List!70868)) )
))
(declare-fun s!7854 () List!70868)

(declare-fun lt!2592949 () Context!15432)

(declare-fun ct1!250 () Context!15432)

(declare-fun derivationStepZipperDown!2710 (Regex!18776 Context!15432 C!37826) (Set Context!15432))

(declare-fun derivationStepZipperUp!2546 (Context!15432 C!37826) (Set Context!15432))

(assert (=> b!7267450 (= res!2946296 (not (= lt!2592951 (set.union (derivationStepZipperDown!2710 (h!77191 (exprs!8216 ct1!250)) lt!2592949 (h!77192 s!7854)) (derivationStepZipperUp!2546 lt!2592949 (h!77192 s!7854))))))))

(declare-fun b!7267451 () Bool)

(declare-fun e!4358107 () Bool)

(assert (=> b!7267451 (= e!4358103 e!4358107)))

(declare-fun res!2946298 () Bool)

(assert (=> b!7267451 (=> res!2946298 e!4358107)))

(declare-fun lt!2592945 () Context!15432)

(declare-fun lt!2592957 () (Set Context!15432))

(assert (=> b!7267451 (= res!2946298 (not (= lt!2592957 (set.union (derivationStepZipperDown!2710 (h!77191 (exprs!8216 ct1!250)) lt!2592945 (h!77192 s!7854)) (derivationStepZipperUp!2546 lt!2592945 (h!77192 s!7854))))))))

(declare-fun lt!2592942 () List!70867)

(declare-fun ct2!346 () Context!15432)

(declare-fun ++!16676 (List!70867 List!70867) List!70867)

(assert (=> b!7267451 (= lt!2592945 (Context!15433 (++!16676 lt!2592942 (exprs!8216 ct2!346))))))

(declare-fun lambda!447716 () Int)

(declare-datatypes ((Unit!164170 0))(
  ( (Unit!164171) )
))
(declare-fun lt!2592952 () Unit!164170)

(declare-fun lemmaConcatPreservesForall!1533 (List!70867 List!70867 Int) Unit!164170)

(assert (=> b!7267451 (= lt!2592952 (lemmaConcatPreservesForall!1533 lt!2592942 (exprs!8216 ct2!346) lambda!447716))))

(declare-fun lt!2592959 () Unit!164170)

(assert (=> b!7267451 (= lt!2592959 (lemmaConcatPreservesForall!1533 lt!2592942 (exprs!8216 ct2!346) lambda!447716))))

(declare-fun b!7267452 () Bool)

(declare-fun e!4358102 () Bool)

(declare-fun tp!2040666 () Bool)

(assert (=> b!7267452 (= e!4358102 tp!2040666)))

(declare-fun b!7267453 () Bool)

(declare-fun e!4358105 () Bool)

(assert (=> b!7267453 (= e!4358105 e!4358103)))

(declare-fun res!2946303 () Bool)

(assert (=> b!7267453 (=> res!2946303 e!4358103)))

(declare-fun nullable!7976 (Regex!18776) Bool)

(assert (=> b!7267453 (= res!2946303 (not (nullable!7976 (h!77191 (exprs!8216 ct1!250)))))))

(assert (=> b!7267453 (= lt!2592951 (derivationStepZipperUp!2546 ct1!250 (h!77192 s!7854)))))

(assert (=> b!7267453 (= lt!2592949 (Context!15433 lt!2592942))))

(declare-fun tail!14459 (List!70867) List!70867)

(assert (=> b!7267453 (= lt!2592942 (tail!14459 (exprs!8216 ct1!250)))))

(declare-fun b!7267454 () Bool)

(declare-fun res!2946304 () Bool)

(assert (=> b!7267454 (=> res!2946304 e!4358105)))

(declare-fun isEmpty!40671 (List!70867) Bool)

(assert (=> b!7267454 (= res!2946304 (isEmpty!40671 (exprs!8216 ct1!250)))))

(declare-fun b!7267455 () Bool)

(declare-fun res!2946301 () Bool)

(declare-fun e!4358106 () Bool)

(assert (=> b!7267455 (=> (not res!2946301) (not e!4358106))))

(assert (=> b!7267455 (= res!2946301 (is-Cons!70744 s!7854))))

(declare-fun b!7267456 () Bool)

(declare-fun res!2946302 () Bool)

(assert (=> b!7267456 (=> res!2946302 e!4358105)))

(assert (=> b!7267456 (= res!2946302 (not (is-Cons!70743 (exprs!8216 ct1!250))))))

(declare-fun b!7267457 () Bool)

(declare-fun e!4358104 () Bool)

(declare-fun tp!2040665 () Bool)

(assert (=> b!7267457 (= e!4358104 tp!2040665)))

(declare-fun b!7267458 () Bool)

(declare-fun forall!17607 (List!70867 Int) Bool)

(assert (=> b!7267458 (= e!4358107 (forall!17607 lt!2592942 lambda!447716))))

(declare-fun lt!2592943 () Unit!164170)

(assert (=> b!7267458 (= lt!2592943 (lemmaConcatPreservesForall!1533 lt!2592942 (exprs!8216 ct2!346) lambda!447716))))

(declare-fun matchZipper!3680 ((Set Context!15432) List!70868) Bool)

(assert (=> b!7267458 (matchZipper!3680 (set.insert lt!2592945 (as set.empty (Set Context!15432))) s!7854)))

(declare-fun lt!2592946 () Unit!164170)

(assert (=> b!7267458 (= lt!2592946 (lemmaConcatPreservesForall!1533 lt!2592942 (exprs!8216 ct2!346) lambda!447716))))

(declare-fun lt!2592948 () Unit!164170)

(declare-fun lemmaPrependingNullableCtxStillMatches!13 (Context!15432 Context!15432 List!70868) Unit!164170)

(assert (=> b!7267458 (= lt!2592948 (lemmaPrependingNullableCtxStillMatches!13 lt!2592949 ct2!346 s!7854))))

(assert (=> b!7267460 (= e!4358106 (not e!4358105))))

(declare-fun res!2946297 () Bool)

(assert (=> b!7267460 (=> res!2946297 e!4358105)))

(declare-fun lt!2592960 () (Set Context!15432))

(declare-fun derivationStepZipper!3516 ((Set Context!15432) C!37826) (Set Context!15432))

(assert (=> b!7267460 (= res!2946297 (not (= lt!2592957 (derivationStepZipper!3516 lt!2592960 (h!77192 s!7854)))))))

(declare-fun lt!2592955 () Unit!164170)

(assert (=> b!7267460 (= lt!2592955 (lemmaConcatPreservesForall!1533 (exprs!8216 ct1!250) (exprs!8216 ct2!346) lambda!447716))))

(declare-fun lambda!447717 () Int)

(declare-fun lt!2592954 () Context!15432)

(declare-fun flatMap!2889 ((Set Context!15432) Int) (Set Context!15432))

(assert (=> b!7267460 (= (flatMap!2889 lt!2592960 lambda!447717) (derivationStepZipperUp!2546 lt!2592954 (h!77192 s!7854)))))

(declare-fun lt!2592958 () Unit!164170)

(declare-fun lemmaFlatMapOnSingletonSet!2289 ((Set Context!15432) Context!15432 Int) Unit!164170)

(assert (=> b!7267460 (= lt!2592958 (lemmaFlatMapOnSingletonSet!2289 lt!2592960 lt!2592954 lambda!447717))))

(assert (=> b!7267460 (= lt!2592960 (set.insert lt!2592954 (as set.empty (Set Context!15432))))))

(declare-fun lt!2592944 () Unit!164170)

(assert (=> b!7267460 (= lt!2592944 (lemmaConcatPreservesForall!1533 (exprs!8216 ct1!250) (exprs!8216 ct2!346) lambda!447716))))

(declare-fun lt!2592956 () Unit!164170)

(assert (=> b!7267460 (= lt!2592956 (lemmaConcatPreservesForall!1533 (exprs!8216 ct1!250) (exprs!8216 ct2!346) lambda!447716))))

(declare-fun lt!2592950 () (Set Context!15432))

(assert (=> b!7267460 (= (flatMap!2889 lt!2592950 lambda!447717) (derivationStepZipperUp!2546 ct1!250 (h!77192 s!7854)))))

(declare-fun lt!2592947 () Unit!164170)

(assert (=> b!7267460 (= lt!2592947 (lemmaFlatMapOnSingletonSet!2289 lt!2592950 ct1!250 lambda!447717))))

(assert (=> b!7267460 (= lt!2592950 (set.insert ct1!250 (as set.empty (Set Context!15432))))))

(assert (=> b!7267460 (= lt!2592957 (derivationStepZipperUp!2546 lt!2592954 (h!77192 s!7854)))))

(assert (=> b!7267460 (= lt!2592954 (Context!15433 (++!16676 (exprs!8216 ct1!250) (exprs!8216 ct2!346))))))

(declare-fun lt!2592953 () Unit!164170)

(assert (=> b!7267460 (= lt!2592953 (lemmaConcatPreservesForall!1533 (exprs!8216 ct1!250) (exprs!8216 ct2!346) lambda!447716))))

(declare-fun b!7267461 () Bool)

(declare-fun e!4358108 () Bool)

(declare-fun tp_is_empty!47017 () Bool)

(declare-fun tp!2040667 () Bool)

(assert (=> b!7267461 (= e!4358108 (and tp_is_empty!47017 tp!2040667))))

(declare-fun b!7267459 () Bool)

(declare-fun res!2946299 () Bool)

(assert (=> b!7267459 (=> (not res!2946299) (not e!4358106))))

(declare-fun nullableContext!266 (Context!15432) Bool)

(assert (=> b!7267459 (= res!2946299 (nullableContext!266 ct1!250))))

(declare-fun res!2946300 () Bool)

(assert (=> start!708896 (=> (not res!2946300) (not e!4358106))))

(assert (=> start!708896 (= res!2946300 (matchZipper!3680 (set.insert ct2!346 (as set.empty (Set Context!15432))) s!7854))))

(assert (=> start!708896 e!4358106))

(declare-fun inv!89951 (Context!15432) Bool)

(assert (=> start!708896 (and (inv!89951 ct2!346) e!4358104)))

(assert (=> start!708896 e!4358108))

(assert (=> start!708896 (and (inv!89951 ct1!250) e!4358102)))

(assert (= (and start!708896 res!2946300) b!7267459))

(assert (= (and b!7267459 res!2946299) b!7267455))

(assert (= (and b!7267455 res!2946301) b!7267460))

(assert (= (and b!7267460 (not res!2946297)) b!7267456))

(assert (= (and b!7267456 (not res!2946302)) b!7267454))

(assert (= (and b!7267454 (not res!2946304)) b!7267453))

(assert (= (and b!7267453 (not res!2946303)) b!7267450))

(assert (= (and b!7267450 (not res!2946296)) b!7267451))

(assert (= (and b!7267451 (not res!2946298)) b!7267458))

(assert (= start!708896 b!7267457))

(assert (= (and start!708896 (is-Cons!70744 s!7854)) b!7267461))

(assert (= start!708896 b!7267452))

(declare-fun m!7952270 () Bool)

(assert (=> b!7267460 m!7952270))

(declare-fun m!7952272 () Bool)

(assert (=> b!7267460 m!7952272))

(declare-fun m!7952274 () Bool)

(assert (=> b!7267460 m!7952274))

(declare-fun m!7952276 () Bool)

(assert (=> b!7267460 m!7952276))

(declare-fun m!7952278 () Bool)

(assert (=> b!7267460 m!7952278))

(declare-fun m!7952280 () Bool)

(assert (=> b!7267460 m!7952280))

(declare-fun m!7952282 () Bool)

(assert (=> b!7267460 m!7952282))

(assert (=> b!7267460 m!7952274))

(assert (=> b!7267460 m!7952274))

(declare-fun m!7952284 () Bool)

(assert (=> b!7267460 m!7952284))

(declare-fun m!7952286 () Bool)

(assert (=> b!7267460 m!7952286))

(assert (=> b!7267460 m!7952274))

(declare-fun m!7952288 () Bool)

(assert (=> b!7267460 m!7952288))

(declare-fun m!7952290 () Bool)

(assert (=> b!7267460 m!7952290))

(declare-fun m!7952292 () Bool)

(assert (=> b!7267453 m!7952292))

(assert (=> b!7267453 m!7952276))

(declare-fun m!7952294 () Bool)

(assert (=> b!7267453 m!7952294))

(declare-fun m!7952296 () Bool)

(assert (=> b!7267454 m!7952296))

(declare-fun m!7952298 () Bool)

(assert (=> b!7267450 m!7952298))

(declare-fun m!7952300 () Bool)

(assert (=> b!7267450 m!7952300))

(declare-fun m!7952302 () Bool)

(assert (=> b!7267458 m!7952302))

(declare-fun m!7952304 () Bool)

(assert (=> b!7267458 m!7952304))

(assert (=> b!7267458 m!7952302))

(declare-fun m!7952306 () Bool)

(assert (=> b!7267458 m!7952306))

(declare-fun m!7952308 () Bool)

(assert (=> b!7267458 m!7952308))

(declare-fun m!7952310 () Bool)

(assert (=> b!7267458 m!7952310))

(assert (=> b!7267458 m!7952310))

(declare-fun m!7952312 () Bool)

(assert (=> b!7267459 m!7952312))

(declare-fun m!7952314 () Bool)

(assert (=> start!708896 m!7952314))

(assert (=> start!708896 m!7952314))

(declare-fun m!7952316 () Bool)

(assert (=> start!708896 m!7952316))

(declare-fun m!7952318 () Bool)

(assert (=> start!708896 m!7952318))

(declare-fun m!7952320 () Bool)

(assert (=> start!708896 m!7952320))

(declare-fun m!7952322 () Bool)

(assert (=> b!7267451 m!7952322))

(assert (=> b!7267451 m!7952310))

(declare-fun m!7952324 () Bool)

(assert (=> b!7267451 m!7952324))

(assert (=> b!7267451 m!7952310))

(declare-fun m!7952326 () Bool)

(assert (=> b!7267451 m!7952326))

(push 1)

(assert (not b!7267457))

(assert (not b!7267452))

(assert (not start!708896))

(assert (not b!7267454))

(assert (not b!7267458))

(assert tp_is_empty!47017)

(assert (not b!7267451))

(assert (not b!7267460))

(assert (not b!7267450))

(assert (not b!7267459))

(assert (not b!7267461))

(assert (not b!7267453))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1910465 () Bool)

(declare-fun d!2261279 () Bool)

(assert (= bs!1910465 (and d!2261279 b!7267460)))

(declare-fun lambda!447744 () Int)

(assert (=> bs!1910465 (not (= lambda!447744 lambda!447716))))

(assert (=> d!2261279 (= (nullableContext!266 ct1!250) (forall!17607 (exprs!8216 ct1!250) lambda!447744))))

(declare-fun bs!1910466 () Bool)

(assert (= bs!1910466 d!2261279))

(declare-fun m!7952386 () Bool)

(assert (=> bs!1910466 m!7952386))

(assert (=> b!7267459 d!2261279))

(declare-fun d!2261281 () Bool)

(declare-fun nullableFct!3139 (Regex!18776) Bool)

(assert (=> d!2261281 (= (nullable!7976 (h!77191 (exprs!8216 ct1!250))) (nullableFct!3139 (h!77191 (exprs!8216 ct1!250))))))

(declare-fun bs!1910467 () Bool)

(assert (= bs!1910467 d!2261281))

(declare-fun m!7952388 () Bool)

(assert (=> bs!1910467 m!7952388))

(assert (=> b!7267453 d!2261281))

(declare-fun b!7267512 () Bool)

(declare-fun e!4358138 () Bool)

(assert (=> b!7267512 (= e!4358138 (nullable!7976 (h!77191 (exprs!8216 ct1!250))))))

(declare-fun b!7267513 () Bool)

(declare-fun e!4358136 () (Set Context!15432))

(declare-fun call!662504 () (Set Context!15432))

(assert (=> b!7267513 (= e!4358136 call!662504)))

(declare-fun bm!662499 () Bool)

(assert (=> bm!662499 (= call!662504 (derivationStepZipperDown!2710 (h!77191 (exprs!8216 ct1!250)) (Context!15433 (t!384937 (exprs!8216 ct1!250))) (h!77192 s!7854)))))

(declare-fun b!7267515 () Bool)

(declare-fun e!4358137 () (Set Context!15432))

(assert (=> b!7267515 (= e!4358137 (set.union call!662504 (derivationStepZipperUp!2546 (Context!15433 (t!384937 (exprs!8216 ct1!250))) (h!77192 s!7854))))))

(declare-fun b!7267516 () Bool)

(assert (=> b!7267516 (= e!4358136 (as set.empty (Set Context!15432)))))

(declare-fun b!7267514 () Bool)

(assert (=> b!7267514 (= e!4358137 e!4358136)))

(declare-fun c!1352436 () Bool)

(assert (=> b!7267514 (= c!1352436 (is-Cons!70743 (exprs!8216 ct1!250)))))

(declare-fun d!2261283 () Bool)

(declare-fun c!1352435 () Bool)

(assert (=> d!2261283 (= c!1352435 e!4358138)))

(declare-fun res!2946334 () Bool)

(assert (=> d!2261283 (=> (not res!2946334) (not e!4358138))))

(assert (=> d!2261283 (= res!2946334 (is-Cons!70743 (exprs!8216 ct1!250)))))

(assert (=> d!2261283 (= (derivationStepZipperUp!2546 ct1!250 (h!77192 s!7854)) e!4358137)))

(assert (= (and d!2261283 res!2946334) b!7267512))

(assert (= (and d!2261283 c!1352435) b!7267515))

(assert (= (and d!2261283 (not c!1352435)) b!7267514))

(assert (= (and b!7267514 c!1352436) b!7267513))

(assert (= (and b!7267514 (not c!1352436)) b!7267516))

(assert (= (or b!7267515 b!7267513) bm!662499))

(assert (=> b!7267512 m!7952292))

(declare-fun m!7952390 () Bool)

(assert (=> bm!662499 m!7952390))

(declare-fun m!7952392 () Bool)

(assert (=> b!7267515 m!7952392))

(assert (=> b!7267453 d!2261283))

(declare-fun d!2261285 () Bool)

(assert (=> d!2261285 (= (tail!14459 (exprs!8216 ct1!250)) (t!384937 (exprs!8216 ct1!250)))))

(assert (=> b!7267453 d!2261285))

(declare-fun d!2261287 () Bool)

(assert (=> d!2261287 (forall!17607 (++!16676 lt!2592942 (exprs!8216 ct2!346)) lambda!447716)))

(declare-fun lt!2593020 () Unit!164170)

(declare-fun choose!56333 (List!70867 List!70867 Int) Unit!164170)

(assert (=> d!2261287 (= lt!2593020 (choose!56333 lt!2592942 (exprs!8216 ct2!346) lambda!447716))))

(assert (=> d!2261287 (forall!17607 lt!2592942 lambda!447716)))

(assert (=> d!2261287 (= (lemmaConcatPreservesForall!1533 lt!2592942 (exprs!8216 ct2!346) lambda!447716) lt!2593020)))

(declare-fun bs!1910468 () Bool)

(assert (= bs!1910468 d!2261287))

(assert (=> bs!1910468 m!7952326))

(assert (=> bs!1910468 m!7952326))

(declare-fun m!7952394 () Bool)

(assert (=> bs!1910468 m!7952394))

(declare-fun m!7952396 () Bool)

(assert (=> bs!1910468 m!7952396))

(assert (=> bs!1910468 m!7952306))

(assert (=> b!7267458 d!2261287))

(declare-fun bs!1910469 () Bool)

(declare-fun d!2261289 () Bool)

(assert (= bs!1910469 (and d!2261289 b!7267460)))

(declare-fun lambda!447747 () Int)

(assert (=> bs!1910469 (= lambda!447747 lambda!447716)))

(declare-fun bs!1910470 () Bool)

(assert (= bs!1910470 (and d!2261289 d!2261279)))

(assert (=> bs!1910470 (not (= lambda!447747 lambda!447744))))

(assert (=> d!2261289 (matchZipper!3680 (set.insert (Context!15433 (++!16676 (exprs!8216 lt!2592949) (exprs!8216 ct2!346))) (as set.empty (Set Context!15432))) s!7854)))

(declare-fun lt!2593026 () Unit!164170)

(assert (=> d!2261289 (= lt!2593026 (lemmaConcatPreservesForall!1533 (exprs!8216 lt!2592949) (exprs!8216 ct2!346) lambda!447747))))

(declare-fun lt!2593025 () Unit!164170)

(declare-fun choose!56334 (Context!15432 Context!15432 List!70868) Unit!164170)

(assert (=> d!2261289 (= lt!2593025 (choose!56334 lt!2592949 ct2!346 s!7854))))

(assert (=> d!2261289 (matchZipper!3680 (set.insert ct2!346 (as set.empty (Set Context!15432))) s!7854)))

(assert (=> d!2261289 (= (lemmaPrependingNullableCtxStillMatches!13 lt!2592949 ct2!346 s!7854) lt!2593025)))

(declare-fun bs!1910471 () Bool)

(assert (= bs!1910471 d!2261289))

(assert (=> bs!1910471 m!7952314))

(assert (=> bs!1910471 m!7952316))

(declare-fun m!7952398 () Bool)

(assert (=> bs!1910471 m!7952398))

(declare-fun m!7952400 () Bool)

(assert (=> bs!1910471 m!7952400))

(declare-fun m!7952402 () Bool)

(assert (=> bs!1910471 m!7952402))

(assert (=> bs!1910471 m!7952314))

(assert (=> bs!1910471 m!7952398))

(declare-fun m!7952404 () Bool)

(assert (=> bs!1910471 m!7952404))

(declare-fun m!7952406 () Bool)

(assert (=> bs!1910471 m!7952406))

(assert (=> b!7267458 d!2261289))

(declare-fun d!2261291 () Bool)

(declare-fun c!1352439 () Bool)

(declare-fun isEmpty!40673 (List!70868) Bool)

(assert (=> d!2261291 (= c!1352439 (isEmpty!40673 s!7854))))

(declare-fun e!4358141 () Bool)

(assert (=> d!2261291 (= (matchZipper!3680 (set.insert lt!2592945 (as set.empty (Set Context!15432))) s!7854) e!4358141)))

(declare-fun b!7267521 () Bool)

(declare-fun nullableZipper!2985 ((Set Context!15432)) Bool)

(assert (=> b!7267521 (= e!4358141 (nullableZipper!2985 (set.insert lt!2592945 (as set.empty (Set Context!15432)))))))

(declare-fun b!7267522 () Bool)

(declare-fun head!14984 (List!70868) C!37826)

(declare-fun tail!14461 (List!70868) List!70868)

(assert (=> b!7267522 (= e!4358141 (matchZipper!3680 (derivationStepZipper!3516 (set.insert lt!2592945 (as set.empty (Set Context!15432))) (head!14984 s!7854)) (tail!14461 s!7854)))))

(assert (= (and d!2261291 c!1352439) b!7267521))

(assert (= (and d!2261291 (not c!1352439)) b!7267522))

(declare-fun m!7952408 () Bool)

(assert (=> d!2261291 m!7952408))

(assert (=> b!7267521 m!7952302))

(declare-fun m!7952410 () Bool)

(assert (=> b!7267521 m!7952410))

(declare-fun m!7952412 () Bool)

(assert (=> b!7267522 m!7952412))

(assert (=> b!7267522 m!7952302))

(assert (=> b!7267522 m!7952412))

(declare-fun m!7952414 () Bool)

(assert (=> b!7267522 m!7952414))

(declare-fun m!7952416 () Bool)

(assert (=> b!7267522 m!7952416))

(assert (=> b!7267522 m!7952414))

(assert (=> b!7267522 m!7952416))

(declare-fun m!7952418 () Bool)

(assert (=> b!7267522 m!7952418))

(assert (=> b!7267458 d!2261291))

(declare-fun d!2261293 () Bool)

(declare-fun res!2946339 () Bool)

(declare-fun e!4358146 () Bool)

(assert (=> d!2261293 (=> res!2946339 e!4358146)))

(assert (=> d!2261293 (= res!2946339 (is-Nil!70743 lt!2592942))))

(assert (=> d!2261293 (= (forall!17607 lt!2592942 lambda!447716) e!4358146)))

(declare-fun b!7267527 () Bool)

(declare-fun e!4358147 () Bool)

(assert (=> b!7267527 (= e!4358146 e!4358147)))

(declare-fun res!2946340 () Bool)

(assert (=> b!7267527 (=> (not res!2946340) (not e!4358147))))

(declare-fun dynLambda!28896 (Int Regex!18776) Bool)

(assert (=> b!7267527 (= res!2946340 (dynLambda!28896 lambda!447716 (h!77191 lt!2592942)))))

(declare-fun b!7267528 () Bool)

(assert (=> b!7267528 (= e!4358147 (forall!17607 (t!384937 lt!2592942) lambda!447716))))

(assert (= (and d!2261293 (not res!2946339)) b!7267527))

(assert (= (and b!7267527 res!2946340) b!7267528))

(declare-fun b_lambda!279933 () Bool)

(assert (=> (not b_lambda!279933) (not b!7267527)))

(declare-fun m!7952420 () Bool)

(assert (=> b!7267527 m!7952420))

(declare-fun m!7952422 () Bool)

(assert (=> b!7267528 m!7952422))

(assert (=> b!7267458 d!2261293))

(declare-fun d!2261297 () Bool)

(declare-fun dynLambda!28897 (Int Context!15432) (Set Context!15432))

(assert (=> d!2261297 (= (flatMap!2889 lt!2592950 lambda!447717) (dynLambda!28897 lambda!447717 ct1!250))))

(declare-fun lt!2593029 () Unit!164170)

(declare-fun choose!56335 ((Set Context!15432) Context!15432 Int) Unit!164170)

(assert (=> d!2261297 (= lt!2593029 (choose!56335 lt!2592950 ct1!250 lambda!447717))))

(assert (=> d!2261297 (= lt!2592950 (set.insert ct1!250 (as set.empty (Set Context!15432))))))

(assert (=> d!2261297 (= (lemmaFlatMapOnSingletonSet!2289 lt!2592950 ct1!250 lambda!447717) lt!2593029)))

(declare-fun b_lambda!279935 () Bool)

(assert (=> (not b_lambda!279935) (not d!2261297)))

(declare-fun bs!1910472 () Bool)

(assert (= bs!1910472 d!2261297))

(assert (=> bs!1910472 m!7952272))

(declare-fun m!7952424 () Bool)

(assert (=> bs!1910472 m!7952424))

(declare-fun m!7952426 () Bool)

(assert (=> bs!1910472 m!7952426))

(assert (=> bs!1910472 m!7952284))

(assert (=> b!7267460 d!2261297))

(declare-fun d!2261299 () Bool)

(declare-fun choose!56336 ((Set Context!15432) Int) (Set Context!15432))

(assert (=> d!2261299 (= (flatMap!2889 lt!2592950 lambda!447717) (choose!56336 lt!2592950 lambda!447717))))

(declare-fun bs!1910473 () Bool)

(assert (= bs!1910473 d!2261299))

(declare-fun m!7952428 () Bool)

(assert (=> bs!1910473 m!7952428))

(assert (=> b!7267460 d!2261299))

(assert (=> b!7267460 d!2261283))

(declare-fun e!4358159 () Bool)

(declare-fun lt!2593032 () List!70867)

(declare-fun b!7267550 () Bool)

(assert (=> b!7267550 (= e!4358159 (or (not (= (exprs!8216 ct2!346) Nil!70743)) (= lt!2593032 (exprs!8216 ct1!250))))))

(declare-fun d!2261301 () Bool)

(assert (=> d!2261301 e!4358159))

(declare-fun res!2946348 () Bool)

(assert (=> d!2261301 (=> (not res!2946348) (not e!4358159))))

(declare-fun content!14757 (List!70867) (Set Regex!18776))

(assert (=> d!2261301 (= res!2946348 (= (content!14757 lt!2593032) (set.union (content!14757 (exprs!8216 ct1!250)) (content!14757 (exprs!8216 ct2!346)))))))

(declare-fun e!4358158 () List!70867)

(assert (=> d!2261301 (= lt!2593032 e!4358158)))

(declare-fun c!1352446 () Bool)

(assert (=> d!2261301 (= c!1352446 (is-Nil!70743 (exprs!8216 ct1!250)))))

(assert (=> d!2261301 (= (++!16676 (exprs!8216 ct1!250) (exprs!8216 ct2!346)) lt!2593032)))

(declare-fun b!7267547 () Bool)

(assert (=> b!7267547 (= e!4358158 (exprs!8216 ct2!346))))

(declare-fun b!7267548 () Bool)

(assert (=> b!7267548 (= e!4358158 (Cons!70743 (h!77191 (exprs!8216 ct1!250)) (++!16676 (t!384937 (exprs!8216 ct1!250)) (exprs!8216 ct2!346))))))

(declare-fun b!7267549 () Bool)

(declare-fun res!2946347 () Bool)

(assert (=> b!7267549 (=> (not res!2946347) (not e!4358159))))

(declare-fun size!41805 (List!70867) Int)

(assert (=> b!7267549 (= res!2946347 (= (size!41805 lt!2593032) (+ (size!41805 (exprs!8216 ct1!250)) (size!41805 (exprs!8216 ct2!346)))))))

(assert (= (and d!2261301 c!1352446) b!7267547))

(assert (= (and d!2261301 (not c!1352446)) b!7267548))

(assert (= (and d!2261301 res!2946348) b!7267549))

(assert (= (and b!7267549 res!2946347) b!7267550))

(declare-fun m!7952430 () Bool)

(assert (=> d!2261301 m!7952430))

(declare-fun m!7952432 () Bool)

(assert (=> d!2261301 m!7952432))

(declare-fun m!7952434 () Bool)

(assert (=> d!2261301 m!7952434))

(declare-fun m!7952436 () Bool)

(assert (=> b!7267548 m!7952436))

(declare-fun m!7952438 () Bool)

(assert (=> b!7267549 m!7952438))

(declare-fun m!7952440 () Bool)

(assert (=> b!7267549 m!7952440))

(declare-fun m!7952442 () Bool)

(assert (=> b!7267549 m!7952442))

(assert (=> b!7267460 d!2261301))

(declare-fun d!2261303 () Bool)

(assert (=> d!2261303 (= (flatMap!2889 lt!2592960 lambda!447717) (choose!56336 lt!2592960 lambda!447717))))

(declare-fun bs!1910474 () Bool)

(assert (= bs!1910474 d!2261303))

(declare-fun m!7952444 () Bool)

(assert (=> bs!1910474 m!7952444))

(assert (=> b!7267460 d!2261303))

(declare-fun d!2261305 () Bool)

(assert (=> d!2261305 (forall!17607 (++!16676 (exprs!8216 ct1!250) (exprs!8216 ct2!346)) lambda!447716)))

(declare-fun lt!2593033 () Unit!164170)

(assert (=> d!2261305 (= lt!2593033 (choose!56333 (exprs!8216 ct1!250) (exprs!8216 ct2!346) lambda!447716))))

(assert (=> d!2261305 (forall!17607 (exprs!8216 ct1!250) lambda!447716)))

(assert (=> d!2261305 (= (lemmaConcatPreservesForall!1533 (exprs!8216 ct1!250) (exprs!8216 ct2!346) lambda!447716) lt!2593033)))

(declare-fun bs!1910475 () Bool)

(assert (= bs!1910475 d!2261305))

(assert (=> bs!1910475 m!7952286))

(assert (=> bs!1910475 m!7952286))

(declare-fun m!7952446 () Bool)

(assert (=> bs!1910475 m!7952446))

(declare-fun m!7952448 () Bool)

(assert (=> bs!1910475 m!7952448))

(declare-fun m!7952450 () Bool)

(assert (=> bs!1910475 m!7952450))

(assert (=> b!7267460 d!2261305))

(declare-fun b!7267551 () Bool)

(declare-fun e!4358162 () Bool)

(assert (=> b!7267551 (= e!4358162 (nullable!7976 (h!77191 (exprs!8216 lt!2592954))))))

(declare-fun b!7267552 () Bool)

(declare-fun e!4358160 () (Set Context!15432))

(declare-fun call!662507 () (Set Context!15432))

(assert (=> b!7267552 (= e!4358160 call!662507)))

(declare-fun bm!662502 () Bool)

(assert (=> bm!662502 (= call!662507 (derivationStepZipperDown!2710 (h!77191 (exprs!8216 lt!2592954)) (Context!15433 (t!384937 (exprs!8216 lt!2592954))) (h!77192 s!7854)))))

(declare-fun e!4358161 () (Set Context!15432))

(declare-fun b!7267554 () Bool)

(assert (=> b!7267554 (= e!4358161 (set.union call!662507 (derivationStepZipperUp!2546 (Context!15433 (t!384937 (exprs!8216 lt!2592954))) (h!77192 s!7854))))))

(declare-fun b!7267555 () Bool)

(assert (=> b!7267555 (= e!4358160 (as set.empty (Set Context!15432)))))

(declare-fun b!7267553 () Bool)

(assert (=> b!7267553 (= e!4358161 e!4358160)))

(declare-fun c!1352448 () Bool)

(assert (=> b!7267553 (= c!1352448 (is-Cons!70743 (exprs!8216 lt!2592954)))))

(declare-fun d!2261307 () Bool)

(declare-fun c!1352447 () Bool)

(assert (=> d!2261307 (= c!1352447 e!4358162)))

(declare-fun res!2946349 () Bool)

(assert (=> d!2261307 (=> (not res!2946349) (not e!4358162))))

(assert (=> d!2261307 (= res!2946349 (is-Cons!70743 (exprs!8216 lt!2592954)))))

(assert (=> d!2261307 (= (derivationStepZipperUp!2546 lt!2592954 (h!77192 s!7854)) e!4358161)))

(assert (= (and d!2261307 res!2946349) b!7267551))

(assert (= (and d!2261307 c!1352447) b!7267554))

(assert (= (and d!2261307 (not c!1352447)) b!7267553))

(assert (= (and b!7267553 c!1352448) b!7267552))

(assert (= (and b!7267553 (not c!1352448)) b!7267555))

(assert (= (or b!7267554 b!7267552) bm!662502))

(declare-fun m!7952452 () Bool)

(assert (=> b!7267551 m!7952452))

(declare-fun m!7952454 () Bool)

(assert (=> bm!662502 m!7952454))

(declare-fun m!7952456 () Bool)

(assert (=> b!7267554 m!7952456))

(assert (=> b!7267460 d!2261307))

(declare-fun d!2261309 () Bool)

(assert (=> d!2261309 (= (flatMap!2889 lt!2592960 lambda!447717) (dynLambda!28897 lambda!447717 lt!2592954))))

(declare-fun lt!2593034 () Unit!164170)

(assert (=> d!2261309 (= lt!2593034 (choose!56335 lt!2592960 lt!2592954 lambda!447717))))

(assert (=> d!2261309 (= lt!2592960 (set.insert lt!2592954 (as set.empty (Set Context!15432))))))

(assert (=> d!2261309 (= (lemmaFlatMapOnSingletonSet!2289 lt!2592960 lt!2592954 lambda!447717) lt!2593034)))

(declare-fun b_lambda!279937 () Bool)

(assert (=> (not b_lambda!279937) (not d!2261309)))

(declare-fun bs!1910476 () Bool)

(assert (= bs!1910476 d!2261309))

(assert (=> bs!1910476 m!7952280))

(declare-fun m!7952458 () Bool)

(assert (=> bs!1910476 m!7952458))

(declare-fun m!7952460 () Bool)

(assert (=> bs!1910476 m!7952460))

(assert (=> bs!1910476 m!7952288))

(assert (=> b!7267460 d!2261309))

(declare-fun bs!1910477 () Bool)

(declare-fun d!2261311 () Bool)

(assert (= bs!1910477 (and d!2261311 b!7267460)))

(declare-fun lambda!447750 () Int)

(assert (=> bs!1910477 (= lambda!447750 lambda!447717)))

(assert (=> d!2261311 true))

(assert (=> d!2261311 (= (derivationStepZipper!3516 lt!2592960 (h!77192 s!7854)) (flatMap!2889 lt!2592960 lambda!447750))))

(declare-fun bs!1910478 () Bool)

(assert (= bs!1910478 d!2261311))

(declare-fun m!7952462 () Bool)

(assert (=> bs!1910478 m!7952462))

(assert (=> b!7267460 d!2261311))

(declare-fun d!2261313 () Bool)

(assert (=> d!2261313 (= (isEmpty!40671 (exprs!8216 ct1!250)) (is-Nil!70743 (exprs!8216 ct1!250)))))

(assert (=> b!7267454 d!2261313))

(assert (=> b!7267451 d!2261287))

(declare-fun call!662526 () List!70867)

(declare-fun bm!662516 () Bool)

(declare-fun c!1352466 () Bool)

(declare-fun call!662522 () (Set Context!15432))

(declare-fun c!1352465 () Bool)

(declare-fun c!1352467 () Bool)

(assert (=> bm!662516 (= call!662522 (derivationStepZipperDown!2710 (ite c!1352465 (regTwo!38065 (h!77191 (exprs!8216 ct1!250))) (ite c!1352467 (regTwo!38064 (h!77191 (exprs!8216 ct1!250))) (ite c!1352466 (regOne!38064 (h!77191 (exprs!8216 ct1!250))) (reg!19105 (h!77191 (exprs!8216 ct1!250)))))) (ite (or c!1352465 c!1352467) lt!2592945 (Context!15433 call!662526)) (h!77192 s!7854)))))

(declare-fun b!7267585 () Bool)

(declare-fun e!4358181 () Bool)

(assert (=> b!7267585 (= e!4358181 (nullable!7976 (regOne!38064 (h!77191 (exprs!8216 ct1!250)))))))

(declare-fun call!662524 () List!70867)

(declare-fun bm!662517 () Bool)

(declare-fun $colon$colon!2954 (List!70867 Regex!18776) List!70867)

(assert (=> bm!662517 (= call!662524 ($colon$colon!2954 (exprs!8216 lt!2592945) (ite (or c!1352467 c!1352466) (regTwo!38064 (h!77191 (exprs!8216 ct1!250))) (h!77191 (exprs!8216 ct1!250)))))))

(declare-fun bm!662518 () Bool)

(declare-fun call!662525 () (Set Context!15432))

(declare-fun call!662523 () (Set Context!15432))

(assert (=> bm!662518 (= call!662525 call!662523)))

(declare-fun b!7267587 () Bool)

(declare-fun e!4358178 () (Set Context!15432))

(assert (=> b!7267587 (= e!4358178 call!662525)))

(declare-fun b!7267588 () Bool)

(declare-fun e!4358182 () (Set Context!15432))

(declare-fun e!4358179 () (Set Context!15432))

(assert (=> b!7267588 (= e!4358182 e!4358179)))

(assert (=> b!7267588 (= c!1352466 (is-Concat!27621 (h!77191 (exprs!8216 ct1!250))))))

(declare-fun b!7267589 () Bool)

(assert (=> b!7267589 (= c!1352467 e!4358181)))

(declare-fun res!2946353 () Bool)

(assert (=> b!7267589 (=> (not res!2946353) (not e!4358181))))

(assert (=> b!7267589 (= res!2946353 (is-Concat!27621 (h!77191 (exprs!8216 ct1!250))))))

(declare-fun e!4358180 () (Set Context!15432))

(assert (=> b!7267589 (= e!4358180 e!4358182)))

(declare-fun bm!662519 () Bool)

(assert (=> bm!662519 (= call!662523 call!662522)))

(declare-fun b!7267590 () Bool)

(declare-fun e!4358183 () (Set Context!15432))

(assert (=> b!7267590 (= e!4358183 (set.insert lt!2592945 (as set.empty (Set Context!15432))))))

(declare-fun b!7267591 () Bool)

(declare-fun call!662521 () (Set Context!15432))

(assert (=> b!7267591 (= e!4358182 (set.union call!662521 call!662523))))

(declare-fun d!2261315 () Bool)

(declare-fun c!1352464 () Bool)

(assert (=> d!2261315 (= c!1352464 (and (is-ElementMatch!18776 (h!77191 (exprs!8216 ct1!250))) (= (c!1352424 (h!77191 (exprs!8216 ct1!250))) (h!77192 s!7854))))))

(assert (=> d!2261315 (= (derivationStepZipperDown!2710 (h!77191 (exprs!8216 ct1!250)) lt!2592945 (h!77192 s!7854)) e!4358183)))

(declare-fun b!7267586 () Bool)

(assert (=> b!7267586 (= e!4358178 (as set.empty (Set Context!15432)))))

(declare-fun bm!662520 () Bool)

(assert (=> bm!662520 (= call!662521 (derivationStepZipperDown!2710 (ite c!1352465 (regOne!38065 (h!77191 (exprs!8216 ct1!250))) (regOne!38064 (h!77191 (exprs!8216 ct1!250)))) (ite c!1352465 lt!2592945 (Context!15433 call!662524)) (h!77192 s!7854)))))

(declare-fun bm!662521 () Bool)

(assert (=> bm!662521 (= call!662526 call!662524)))

(declare-fun b!7267592 () Bool)

(declare-fun c!1352463 () Bool)

(assert (=> b!7267592 (= c!1352463 (is-Star!18776 (h!77191 (exprs!8216 ct1!250))))))

(assert (=> b!7267592 (= e!4358179 e!4358178)))

(declare-fun b!7267593 () Bool)

(assert (=> b!7267593 (= e!4358179 call!662525)))

(declare-fun b!7267594 () Bool)

(assert (=> b!7267594 (= e!4358183 e!4358180)))

(assert (=> b!7267594 (= c!1352465 (is-Union!18776 (h!77191 (exprs!8216 ct1!250))))))

(declare-fun b!7267595 () Bool)

(assert (=> b!7267595 (= e!4358180 (set.union call!662521 call!662522))))

(assert (= (and d!2261315 c!1352464) b!7267590))

(assert (= (and d!2261315 (not c!1352464)) b!7267594))

(assert (= (and b!7267594 c!1352465) b!7267595))

(assert (= (and b!7267594 (not c!1352465)) b!7267589))

(assert (= (and b!7267589 res!2946353) b!7267585))

(assert (= (and b!7267589 c!1352467) b!7267591))

(assert (= (and b!7267589 (not c!1352467)) b!7267588))

(assert (= (and b!7267588 c!1352466) b!7267593))

(assert (= (and b!7267588 (not c!1352466)) b!7267592))

(assert (= (and b!7267592 c!1352463) b!7267587))

(assert (= (and b!7267592 (not c!1352463)) b!7267586))

(assert (= (or b!7267593 b!7267587) bm!662521))

(assert (= (or b!7267593 b!7267587) bm!662518))

(assert (= (or b!7267591 bm!662521) bm!662517))

(assert (= (or b!7267591 bm!662518) bm!662519))

(assert (= (or b!7267595 b!7267591) bm!662520))

(assert (= (or b!7267595 bm!662519) bm!662516))

(declare-fun m!7952474 () Bool)

(assert (=> bm!662517 m!7952474))

(assert (=> b!7267590 m!7952302))

(declare-fun m!7952476 () Bool)

(assert (=> b!7267585 m!7952476))

(declare-fun m!7952478 () Bool)

(assert (=> bm!662516 m!7952478))

(declare-fun m!7952480 () Bool)

(assert (=> bm!662520 m!7952480))

(assert (=> b!7267451 d!2261315))

(declare-fun b!7267596 () Bool)

(declare-fun e!4358186 () Bool)

(assert (=> b!7267596 (= e!4358186 (nullable!7976 (h!77191 (exprs!8216 lt!2592945))))))

(declare-fun b!7267597 () Bool)

(declare-fun e!4358184 () (Set Context!15432))

(declare-fun call!662527 () (Set Context!15432))

(assert (=> b!7267597 (= e!4358184 call!662527)))

(declare-fun bm!662522 () Bool)

(assert (=> bm!662522 (= call!662527 (derivationStepZipperDown!2710 (h!77191 (exprs!8216 lt!2592945)) (Context!15433 (t!384937 (exprs!8216 lt!2592945))) (h!77192 s!7854)))))

(declare-fun b!7267599 () Bool)

(declare-fun e!4358185 () (Set Context!15432))

(assert (=> b!7267599 (= e!4358185 (set.union call!662527 (derivationStepZipperUp!2546 (Context!15433 (t!384937 (exprs!8216 lt!2592945))) (h!77192 s!7854))))))

(declare-fun b!7267600 () Bool)

(assert (=> b!7267600 (= e!4358184 (as set.empty (Set Context!15432)))))

(declare-fun b!7267598 () Bool)

(assert (=> b!7267598 (= e!4358185 e!4358184)))

(declare-fun c!1352469 () Bool)

(assert (=> b!7267598 (= c!1352469 (is-Cons!70743 (exprs!8216 lt!2592945)))))

(declare-fun d!2261321 () Bool)

(declare-fun c!1352468 () Bool)

(assert (=> d!2261321 (= c!1352468 e!4358186)))

(declare-fun res!2946354 () Bool)

(assert (=> d!2261321 (=> (not res!2946354) (not e!4358186))))

(assert (=> d!2261321 (= res!2946354 (is-Cons!70743 (exprs!8216 lt!2592945)))))

(assert (=> d!2261321 (= (derivationStepZipperUp!2546 lt!2592945 (h!77192 s!7854)) e!4358185)))

(assert (= (and d!2261321 res!2946354) b!7267596))

(assert (= (and d!2261321 c!1352468) b!7267599))

(assert (= (and d!2261321 (not c!1352468)) b!7267598))

(assert (= (and b!7267598 c!1352469) b!7267597))

(assert (= (and b!7267598 (not c!1352469)) b!7267600))

(assert (= (or b!7267599 b!7267597) bm!662522))

(declare-fun m!7952482 () Bool)

(assert (=> b!7267596 m!7952482))

(declare-fun m!7952484 () Bool)

(assert (=> bm!662522 m!7952484))

(declare-fun m!7952486 () Bool)

(assert (=> b!7267599 m!7952486))

(assert (=> b!7267451 d!2261321))

(declare-fun b!7267604 () Bool)

(declare-fun lt!2593038 () List!70867)

(declare-fun e!4358188 () Bool)

(assert (=> b!7267604 (= e!4358188 (or (not (= (exprs!8216 ct2!346) Nil!70743)) (= lt!2593038 lt!2592942)))))

(declare-fun d!2261323 () Bool)

(assert (=> d!2261323 e!4358188))

(declare-fun res!2946356 () Bool)

(assert (=> d!2261323 (=> (not res!2946356) (not e!4358188))))

(assert (=> d!2261323 (= res!2946356 (= (content!14757 lt!2593038) (set.union (content!14757 lt!2592942) (content!14757 (exprs!8216 ct2!346)))))))

(declare-fun e!4358187 () List!70867)

(assert (=> d!2261323 (= lt!2593038 e!4358187)))

(declare-fun c!1352470 () Bool)

(assert (=> d!2261323 (= c!1352470 (is-Nil!70743 lt!2592942))))

(assert (=> d!2261323 (= (++!16676 lt!2592942 (exprs!8216 ct2!346)) lt!2593038)))

(declare-fun b!7267601 () Bool)

(assert (=> b!7267601 (= e!4358187 (exprs!8216 ct2!346))))

(declare-fun b!7267602 () Bool)

(assert (=> b!7267602 (= e!4358187 (Cons!70743 (h!77191 lt!2592942) (++!16676 (t!384937 lt!2592942) (exprs!8216 ct2!346))))))

(declare-fun b!7267603 () Bool)

(declare-fun res!2946355 () Bool)

(assert (=> b!7267603 (=> (not res!2946355) (not e!4358188))))

(assert (=> b!7267603 (= res!2946355 (= (size!41805 lt!2593038) (+ (size!41805 lt!2592942) (size!41805 (exprs!8216 ct2!346)))))))

(assert (= (and d!2261323 c!1352470) b!7267601))

(assert (= (and d!2261323 (not c!1352470)) b!7267602))

(assert (= (and d!2261323 res!2946356) b!7267603))

(assert (= (and b!7267603 res!2946355) b!7267604))

(declare-fun m!7952488 () Bool)

(assert (=> d!2261323 m!7952488))

(declare-fun m!7952490 () Bool)

(assert (=> d!2261323 m!7952490))

(assert (=> d!2261323 m!7952434))

(declare-fun m!7952492 () Bool)

(assert (=> b!7267602 m!7952492))

(declare-fun m!7952494 () Bool)

(assert (=> b!7267603 m!7952494))

(declare-fun m!7952496 () Bool)

(assert (=> b!7267603 m!7952496))

(assert (=> b!7267603 m!7952442))

(assert (=> b!7267451 d!2261323))

(declare-fun bm!662523 () Bool)

(declare-fun call!662533 () List!70867)

(declare-fun call!662529 () (Set Context!15432))

(declare-fun c!1352474 () Bool)

(declare-fun c!1352473 () Bool)

(declare-fun c!1352475 () Bool)

(assert (=> bm!662523 (= call!662529 (derivationStepZipperDown!2710 (ite c!1352473 (regTwo!38065 (h!77191 (exprs!8216 ct1!250))) (ite c!1352475 (regTwo!38064 (h!77191 (exprs!8216 ct1!250))) (ite c!1352474 (regOne!38064 (h!77191 (exprs!8216 ct1!250))) (reg!19105 (h!77191 (exprs!8216 ct1!250)))))) (ite (or c!1352473 c!1352475) lt!2592949 (Context!15433 call!662533)) (h!77192 s!7854)))))

(declare-fun b!7267605 () Bool)

(declare-fun e!4358192 () Bool)

(assert (=> b!7267605 (= e!4358192 (nullable!7976 (regOne!38064 (h!77191 (exprs!8216 ct1!250)))))))

(declare-fun call!662531 () List!70867)

(declare-fun bm!662524 () Bool)

(assert (=> bm!662524 (= call!662531 ($colon$colon!2954 (exprs!8216 lt!2592949) (ite (or c!1352475 c!1352474) (regTwo!38064 (h!77191 (exprs!8216 ct1!250))) (h!77191 (exprs!8216 ct1!250)))))))

(declare-fun bm!662525 () Bool)

(declare-fun call!662532 () (Set Context!15432))

(declare-fun call!662530 () (Set Context!15432))

(assert (=> bm!662525 (= call!662532 call!662530)))

(declare-fun b!7267607 () Bool)

(declare-fun e!4358189 () (Set Context!15432))

(assert (=> b!7267607 (= e!4358189 call!662532)))

(declare-fun b!7267608 () Bool)

(declare-fun e!4358193 () (Set Context!15432))

(declare-fun e!4358190 () (Set Context!15432))

(assert (=> b!7267608 (= e!4358193 e!4358190)))

(assert (=> b!7267608 (= c!1352474 (is-Concat!27621 (h!77191 (exprs!8216 ct1!250))))))

(declare-fun b!7267609 () Bool)

(assert (=> b!7267609 (= c!1352475 e!4358192)))

(declare-fun res!2946357 () Bool)

(assert (=> b!7267609 (=> (not res!2946357) (not e!4358192))))

(assert (=> b!7267609 (= res!2946357 (is-Concat!27621 (h!77191 (exprs!8216 ct1!250))))))

(declare-fun e!4358191 () (Set Context!15432))

(assert (=> b!7267609 (= e!4358191 e!4358193)))

(declare-fun bm!662526 () Bool)

(assert (=> bm!662526 (= call!662530 call!662529)))

(declare-fun b!7267610 () Bool)

(declare-fun e!4358194 () (Set Context!15432))

(assert (=> b!7267610 (= e!4358194 (set.insert lt!2592949 (as set.empty (Set Context!15432))))))

(declare-fun b!7267611 () Bool)

(declare-fun call!662528 () (Set Context!15432))

(assert (=> b!7267611 (= e!4358193 (set.union call!662528 call!662530))))

(declare-fun d!2261325 () Bool)

(declare-fun c!1352472 () Bool)

(assert (=> d!2261325 (= c!1352472 (and (is-ElementMatch!18776 (h!77191 (exprs!8216 ct1!250))) (= (c!1352424 (h!77191 (exprs!8216 ct1!250))) (h!77192 s!7854))))))

(assert (=> d!2261325 (= (derivationStepZipperDown!2710 (h!77191 (exprs!8216 ct1!250)) lt!2592949 (h!77192 s!7854)) e!4358194)))

(declare-fun b!7267606 () Bool)

(assert (=> b!7267606 (= e!4358189 (as set.empty (Set Context!15432)))))

(declare-fun bm!662527 () Bool)

(assert (=> bm!662527 (= call!662528 (derivationStepZipperDown!2710 (ite c!1352473 (regOne!38065 (h!77191 (exprs!8216 ct1!250))) (regOne!38064 (h!77191 (exprs!8216 ct1!250)))) (ite c!1352473 lt!2592949 (Context!15433 call!662531)) (h!77192 s!7854)))))

(declare-fun bm!662528 () Bool)

(assert (=> bm!662528 (= call!662533 call!662531)))

(declare-fun b!7267612 () Bool)

(declare-fun c!1352471 () Bool)

(assert (=> b!7267612 (= c!1352471 (is-Star!18776 (h!77191 (exprs!8216 ct1!250))))))

(assert (=> b!7267612 (= e!4358190 e!4358189)))

(declare-fun b!7267613 () Bool)

(assert (=> b!7267613 (= e!4358190 call!662532)))

(declare-fun b!7267614 () Bool)

(assert (=> b!7267614 (= e!4358194 e!4358191)))

(assert (=> b!7267614 (= c!1352473 (is-Union!18776 (h!77191 (exprs!8216 ct1!250))))))

(declare-fun b!7267615 () Bool)

(assert (=> b!7267615 (= e!4358191 (set.union call!662528 call!662529))))

(assert (= (and d!2261325 c!1352472) b!7267610))

(assert (= (and d!2261325 (not c!1352472)) b!7267614))

(assert (= (and b!7267614 c!1352473) b!7267615))

(assert (= (and b!7267614 (not c!1352473)) b!7267609))

(assert (= (and b!7267609 res!2946357) b!7267605))

(assert (= (and b!7267609 c!1352475) b!7267611))

(assert (= (and b!7267609 (not c!1352475)) b!7267608))

(assert (= (and b!7267608 c!1352474) b!7267613))

(assert (= (and b!7267608 (not c!1352474)) b!7267612))

(assert (= (and b!7267612 c!1352471) b!7267607))

(assert (= (and b!7267612 (not c!1352471)) b!7267606))

(assert (= (or b!7267613 b!7267607) bm!662528))

(assert (= (or b!7267613 b!7267607) bm!662525))

(assert (= (or b!7267611 bm!662528) bm!662524))

(assert (= (or b!7267611 bm!662525) bm!662526))

(assert (= (or b!7267615 b!7267611) bm!662527))

(assert (= (or b!7267615 bm!662526) bm!662523))

(declare-fun m!7952498 () Bool)

(assert (=> bm!662524 m!7952498))

(declare-fun m!7952500 () Bool)

(assert (=> b!7267610 m!7952500))

(assert (=> b!7267605 m!7952476))

(declare-fun m!7952502 () Bool)

(assert (=> bm!662523 m!7952502))

(declare-fun m!7952504 () Bool)

(assert (=> bm!662527 m!7952504))

(assert (=> b!7267450 d!2261325))

(declare-fun b!7267618 () Bool)

(declare-fun e!4358197 () Bool)

(assert (=> b!7267618 (= e!4358197 (nullable!7976 (h!77191 (exprs!8216 lt!2592949))))))

(declare-fun b!7267619 () Bool)

(declare-fun e!4358195 () (Set Context!15432))

(declare-fun call!662534 () (Set Context!15432))

(assert (=> b!7267619 (= e!4358195 call!662534)))

(declare-fun bm!662529 () Bool)

(assert (=> bm!662529 (= call!662534 (derivationStepZipperDown!2710 (h!77191 (exprs!8216 lt!2592949)) (Context!15433 (t!384937 (exprs!8216 lt!2592949))) (h!77192 s!7854)))))

(declare-fun b!7267621 () Bool)

(declare-fun e!4358196 () (Set Context!15432))

(assert (=> b!7267621 (= e!4358196 (set.union call!662534 (derivationStepZipperUp!2546 (Context!15433 (t!384937 (exprs!8216 lt!2592949))) (h!77192 s!7854))))))

(declare-fun b!7267622 () Bool)

(assert (=> b!7267622 (= e!4358195 (as set.empty (Set Context!15432)))))

(declare-fun b!7267620 () Bool)

(assert (=> b!7267620 (= e!4358196 e!4358195)))

(declare-fun c!1352477 () Bool)

(assert (=> b!7267620 (= c!1352477 (is-Cons!70743 (exprs!8216 lt!2592949)))))

(declare-fun d!2261327 () Bool)

(declare-fun c!1352476 () Bool)

(assert (=> d!2261327 (= c!1352476 e!4358197)))

(declare-fun res!2946358 () Bool)

(assert (=> d!2261327 (=> (not res!2946358) (not e!4358197))))

(assert (=> d!2261327 (= res!2946358 (is-Cons!70743 (exprs!8216 lt!2592949)))))

(assert (=> d!2261327 (= (derivationStepZipperUp!2546 lt!2592949 (h!77192 s!7854)) e!4358196)))

(assert (= (and d!2261327 res!2946358) b!7267618))

(assert (= (and d!2261327 c!1352476) b!7267621))

(assert (= (and d!2261327 (not c!1352476)) b!7267620))

(assert (= (and b!7267620 c!1352477) b!7267619))

(assert (= (and b!7267620 (not c!1352477)) b!7267622))

(assert (= (or b!7267621 b!7267619) bm!662529))

(declare-fun m!7952506 () Bool)

(assert (=> b!7267618 m!7952506))

(declare-fun m!7952508 () Bool)

(assert (=> bm!662529 m!7952508))

(declare-fun m!7952510 () Bool)

(assert (=> b!7267621 m!7952510))

(assert (=> b!7267450 d!2261327))

(declare-fun d!2261329 () Bool)

(declare-fun c!1352480 () Bool)

(assert (=> d!2261329 (= c!1352480 (isEmpty!40673 s!7854))))

(declare-fun e!4358200 () Bool)

(assert (=> d!2261329 (= (matchZipper!3680 (set.insert ct2!346 (as set.empty (Set Context!15432))) s!7854) e!4358200)))

(declare-fun b!7267625 () Bool)

(assert (=> b!7267625 (= e!4358200 (nullableZipper!2985 (set.insert ct2!346 (as set.empty (Set Context!15432)))))))

(declare-fun b!7267626 () Bool)

(assert (=> b!7267626 (= e!4358200 (matchZipper!3680 (derivationStepZipper!3516 (set.insert ct2!346 (as set.empty (Set Context!15432))) (head!14984 s!7854)) (tail!14461 s!7854)))))

(assert (= (and d!2261329 c!1352480) b!7267625))

(assert (= (and d!2261329 (not c!1352480)) b!7267626))

(assert (=> d!2261329 m!7952408))

(assert (=> b!7267625 m!7952314))

(declare-fun m!7952512 () Bool)

(assert (=> b!7267625 m!7952512))

(assert (=> b!7267626 m!7952412))

(assert (=> b!7267626 m!7952314))

(assert (=> b!7267626 m!7952412))

(declare-fun m!7952514 () Bool)

(assert (=> b!7267626 m!7952514))

(assert (=> b!7267626 m!7952416))

(assert (=> b!7267626 m!7952514))

(assert (=> b!7267626 m!7952416))

(declare-fun m!7952516 () Bool)

(assert (=> b!7267626 m!7952516))

(assert (=> start!708896 d!2261329))

(declare-fun bs!1910480 () Bool)

(declare-fun d!2261331 () Bool)

(assert (= bs!1910480 (and d!2261331 b!7267460)))

(declare-fun lambda!447753 () Int)

(assert (=> bs!1910480 (= lambda!447753 lambda!447716)))

(declare-fun bs!1910481 () Bool)

(assert (= bs!1910481 (and d!2261331 d!2261279)))

(assert (=> bs!1910481 (not (= lambda!447753 lambda!447744))))

(declare-fun bs!1910482 () Bool)

(assert (= bs!1910482 (and d!2261331 d!2261289)))

(assert (=> bs!1910482 (= lambda!447753 lambda!447747)))

(assert (=> d!2261331 (= (inv!89951 ct2!346) (forall!17607 (exprs!8216 ct2!346) lambda!447753))))

(declare-fun bs!1910483 () Bool)

(assert (= bs!1910483 d!2261331))

(declare-fun m!7952518 () Bool)

(assert (=> bs!1910483 m!7952518))

(assert (=> start!708896 d!2261331))

(declare-fun bs!1910484 () Bool)

(declare-fun d!2261333 () Bool)

(assert (= bs!1910484 (and d!2261333 b!7267460)))

(declare-fun lambda!447754 () Int)

(assert (=> bs!1910484 (= lambda!447754 lambda!447716)))

(declare-fun bs!1910485 () Bool)

(assert (= bs!1910485 (and d!2261333 d!2261279)))

(assert (=> bs!1910485 (not (= lambda!447754 lambda!447744))))

(declare-fun bs!1910486 () Bool)

(assert (= bs!1910486 (and d!2261333 d!2261289)))

(assert (=> bs!1910486 (= lambda!447754 lambda!447747)))

(declare-fun bs!1910487 () Bool)

(assert (= bs!1910487 (and d!2261333 d!2261331)))

(assert (=> bs!1910487 (= lambda!447754 lambda!447753)))

(assert (=> d!2261333 (= (inv!89951 ct1!250) (forall!17607 (exprs!8216 ct1!250) lambda!447754))))

(declare-fun bs!1910488 () Bool)

(assert (= bs!1910488 d!2261333))

(declare-fun m!7952520 () Bool)

(assert (=> bs!1910488 m!7952520))

(assert (=> start!708896 d!2261333))

(declare-fun b!7267635 () Bool)

(declare-fun e!4358205 () Bool)

(declare-fun tp!2040679 () Bool)

(assert (=> b!7267635 (= e!4358205 (and tp_is_empty!47017 tp!2040679))))

(assert (=> b!7267461 (= tp!2040667 e!4358205)))

(assert (= (and b!7267461 (is-Cons!70744 (t!384938 s!7854))) b!7267635))

(declare-fun b!7267640 () Bool)

(declare-fun e!4358208 () Bool)

(declare-fun tp!2040684 () Bool)

(declare-fun tp!2040685 () Bool)

(assert (=> b!7267640 (= e!4358208 (and tp!2040684 tp!2040685))))

(assert (=> b!7267452 (= tp!2040666 e!4358208)))

(assert (= (and b!7267452 (is-Cons!70743 (exprs!8216 ct1!250))) b!7267640))

(declare-fun b!7267641 () Bool)

(declare-fun e!4358209 () Bool)

(declare-fun tp!2040686 () Bool)

(declare-fun tp!2040687 () Bool)

(assert (=> b!7267641 (= e!4358209 (and tp!2040686 tp!2040687))))

(assert (=> b!7267457 (= tp!2040665 e!4358209)))

(assert (= (and b!7267457 (is-Cons!70743 (exprs!8216 ct2!346))) b!7267641))

(declare-fun b_lambda!279939 () Bool)

(assert (= b_lambda!279935 (or b!7267460 b_lambda!279939)))

(declare-fun bs!1910489 () Bool)

(declare-fun d!2261335 () Bool)

(assert (= bs!1910489 (and d!2261335 b!7267460)))

(assert (=> bs!1910489 (= (dynLambda!28897 lambda!447717 ct1!250) (derivationStepZipperUp!2546 ct1!250 (h!77192 s!7854)))))

(assert (=> bs!1910489 m!7952276))

(assert (=> d!2261297 d!2261335))

(declare-fun b_lambda!279941 () Bool)

(assert (= b_lambda!279933 (or b!7267460 b_lambda!279941)))

(declare-fun bs!1910490 () Bool)

(declare-fun d!2261337 () Bool)

(assert (= bs!1910490 (and d!2261337 b!7267460)))

(declare-fun validRegex!9575 (Regex!18776) Bool)

(assert (=> bs!1910490 (= (dynLambda!28896 lambda!447716 (h!77191 lt!2592942)) (validRegex!9575 (h!77191 lt!2592942)))))

(declare-fun m!7952522 () Bool)

(assert (=> bs!1910490 m!7952522))

(assert (=> b!7267527 d!2261337))

(declare-fun b_lambda!279943 () Bool)

(assert (= b_lambda!279937 (or b!7267460 b_lambda!279943)))

(declare-fun bs!1910491 () Bool)

(declare-fun d!2261339 () Bool)

(assert (= bs!1910491 (and d!2261339 b!7267460)))

(assert (=> bs!1910491 (= (dynLambda!28897 lambda!447717 lt!2592954) (derivationStepZipperUp!2546 lt!2592954 (h!77192 s!7854)))))

(assert (=> bs!1910491 m!7952270))

(assert (=> d!2261309 d!2261339))

(push 1)

(assert (not bm!662499))

(assert (not d!2261331))

(assert (not b!7267551))

(assert (not d!2261323))

(assert (not bs!1910491))

(assert (not b!7267618))

(assert (not d!2261333))

(assert (not bs!1910490))

(assert (not b_lambda!279941))

(assert (not b!7267640))

(assert (not b!7267599))

(assert (not b!7267626))

(assert (not b_lambda!279943))

(assert (not bm!662517))

(assert (not d!2261279))

(assert (not d!2261297))

(assert (not b!7267521))

(assert (not d!2261305))

(assert (not d!2261281))

(assert (not bm!662522))

(assert (not b!7267596))

(assert (not d!2261287))

(assert (not b!7267602))

(assert (not b!7267625))

(assert (not d!2261311))

(assert (not b_lambda!279939))

(assert (not b!7267512))

(assert (not b!7267549))

(assert (not bm!662502))

(assert (not d!2261291))

(assert (not b!7267621))

(assert (not bm!662520))

(assert (not b!7267522))

(assert (not bm!662523))

(assert (not d!2261329))

(assert (not d!2261289))

(assert (not b!7267635))

(assert (not d!2261303))

(assert (not bm!662529))

(assert (not b!7267585))

(assert (not bs!1910489))

(assert (not bm!662516))

(assert (not d!2261299))

(assert (not b!7267605))

(assert (not bm!662527))

(assert tp_is_empty!47017)

(assert (not b!7267515))

(assert (not d!2261309))

(assert (not b!7267528))

(assert (not b!7267603))

(assert (not bm!662524))

(assert (not b!7267641))

(assert (not d!2261301))

(assert (not b!7267554))

(assert (not b!7267548))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

