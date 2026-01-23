; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709412 () Bool)

(assert start!709412)

(declare-fun b!7270080 () Bool)

(assert (=> b!7270080 true))

(declare-fun b!7270068 () Bool)

(declare-fun e!4359612 () Bool)

(declare-fun e!4359613 () Bool)

(assert (=> b!7270068 (= e!4359612 e!4359613)))

(declare-fun res!2947222 () Bool)

(assert (=> b!7270068 (=> res!2947222 e!4359613)))

(declare-datatypes ((C!37862 0))(
  ( (C!37863 (val!28879 Int)) )
))
(declare-datatypes ((Regex!18794 0))(
  ( (ElementMatch!18794 (c!1353224 C!37862)) (Concat!27639 (regOne!38100 Regex!18794) (regTwo!38100 Regex!18794)) (EmptyExpr!18794) (Star!18794 (reg!19123 Regex!18794)) (EmptyLang!18794) (Union!18794 (regOne!38101 Regex!18794) (regTwo!38101 Regex!18794)) )
))
(declare-datatypes ((List!70903 0))(
  ( (Nil!70779) (Cons!70779 (h!77227 Regex!18794) (t!384973 List!70903)) )
))
(declare-datatypes ((Context!15468 0))(
  ( (Context!15469 (exprs!8234 List!70903)) )
))
(declare-fun ct1!250 () Context!15468)

(declare-fun nullable!7994 (Regex!18794) Bool)

(assert (=> b!7270068 (= res!2947222 (not (nullable!7994 (h!77227 (exprs!8234 ct1!250)))))))

(declare-fun lt!2594449 () (Set Context!15468))

(declare-datatypes ((List!70904 0))(
  ( (Nil!70780) (Cons!70780 (h!77228 C!37862) (t!384974 List!70904)) )
))
(declare-fun s!7854 () List!70904)

(declare-fun derivationStepZipperUp!2564 (Context!15468 C!37862) (Set Context!15468))

(assert (=> b!7270068 (= lt!2594449 (derivationStepZipperUp!2564 ct1!250 (h!77228 s!7854)))))

(declare-fun lt!2594444 () Context!15468)

(declare-fun lt!2594448 () List!70903)

(assert (=> b!7270068 (= lt!2594444 (Context!15469 lt!2594448))))

(declare-fun tail!14491 (List!70903) List!70903)

(assert (=> b!7270068 (= lt!2594448 (tail!14491 (exprs!8234 ct1!250)))))

(declare-fun b!7270069 () Bool)

(declare-fun e!4359610 () Bool)

(declare-fun tp!2041004 () Bool)

(assert (=> b!7270069 (= e!4359610 tp!2041004)))

(declare-fun b!7270070 () Bool)

(declare-fun res!2947220 () Bool)

(declare-fun e!4359617 () Bool)

(assert (=> b!7270070 (=> (not res!2947220) (not e!4359617))))

(declare-fun nullableContext!284 (Context!15468) Bool)

(assert (=> b!7270070 (= res!2947220 (nullableContext!284 ct1!250))))

(declare-fun b!7270071 () Bool)

(declare-fun res!2947228 () Bool)

(assert (=> b!7270071 (=> res!2947228 e!4359612)))

(declare-fun isEmpty!40704 (List!70903) Bool)

(assert (=> b!7270071 (= res!2947228 (isEmpty!40704 (exprs!8234 ct1!250)))))

(declare-fun b!7270072 () Bool)

(declare-fun e!4359615 () Bool)

(declare-fun tp!2041005 () Bool)

(assert (=> b!7270072 (= e!4359615 tp!2041005)))

(declare-fun b!7270073 () Bool)

(declare-fun res!2947223 () Bool)

(assert (=> b!7270073 (=> (not res!2947223) (not e!4359617))))

(assert (=> b!7270073 (= res!2947223 (is-Cons!70780 s!7854))))

(declare-fun b!7270074 () Bool)

(declare-fun e!4359616 () Bool)

(declare-fun e!4359614 () Bool)

(assert (=> b!7270074 (= e!4359616 e!4359614)))

(declare-fun res!2947221 () Bool)

(assert (=> b!7270074 (=> res!2947221 e!4359614)))

(declare-fun lt!2594450 () (Set Context!15468))

(declare-fun matchZipper!3698 ((Set Context!15468) List!70904) Bool)

(assert (=> b!7270074 (= res!2947221 (not (matchZipper!3698 lt!2594450 (t!384974 s!7854))))))

(declare-datatypes ((Unit!164206 0))(
  ( (Unit!164207) )
))
(declare-fun lt!2594442 () Unit!164206)

(declare-fun ct2!346 () Context!15468)

(declare-fun lambda!448434 () Int)

(declare-fun lemmaConcatPreservesForall!1551 (List!70903 List!70903 Int) Unit!164206)

(assert (=> b!7270074 (= lt!2594442 (lemmaConcatPreservesForall!1551 lt!2594448 (exprs!8234 ct2!346) lambda!448434))))

(declare-fun lambda!448435 () Int)

(declare-fun lt!2594438 () (Set Context!15468))

(declare-fun lt!2594436 () Context!15468)

(declare-fun flatMap!2907 ((Set Context!15468) Int) (Set Context!15468))

(assert (=> b!7270074 (= (flatMap!2907 lt!2594438 lambda!448435) (derivationStepZipperUp!2564 lt!2594436 (h!77228 s!7854)))))

(declare-fun lt!2594443 () Unit!164206)

(declare-fun lemmaFlatMapOnSingletonSet!2307 ((Set Context!15468) Context!15468 Int) Unit!164206)

(assert (=> b!7270074 (= lt!2594443 (lemmaFlatMapOnSingletonSet!2307 lt!2594438 lt!2594436 lambda!448435))))

(declare-fun lt!2594459 () Unit!164206)

(assert (=> b!7270074 (= lt!2594459 (lemmaConcatPreservesForall!1551 lt!2594448 (exprs!8234 ct2!346) lambda!448434))))

(declare-fun lt!2594456 () Unit!164206)

(assert (=> b!7270074 (= lt!2594456 (lemmaConcatPreservesForall!1551 lt!2594448 (exprs!8234 ct2!346) lambda!448434))))

(declare-fun lt!2594441 () Unit!164206)

(assert (=> b!7270074 (= lt!2594441 (lemmaConcatPreservesForall!1551 lt!2594448 (exprs!8234 ct2!346) lambda!448434))))

(assert (=> b!7270074 (matchZipper!3698 lt!2594438 s!7854)))

(assert (=> b!7270074 (= lt!2594438 (set.insert lt!2594436 (as set.empty (Set Context!15468))))))

(declare-fun lt!2594455 () Unit!164206)

(assert (=> b!7270074 (= lt!2594455 (lemmaConcatPreservesForall!1551 lt!2594448 (exprs!8234 ct2!346) lambda!448434))))

(declare-fun lt!2594462 () Unit!164206)

(declare-fun lemmaPrependingNullableCtxStillMatches!31 (Context!15468 Context!15468 List!70904) Unit!164206)

(assert (=> b!7270074 (= lt!2594462 (lemmaPrependingNullableCtxStillMatches!31 lt!2594444 ct2!346 s!7854))))

(declare-fun res!2947225 () Bool)

(assert (=> start!709412 (=> (not res!2947225) (not e!4359617))))

(assert (=> start!709412 (= res!2947225 (matchZipper!3698 (set.insert ct2!346 (as set.empty (Set Context!15468))) s!7854))))

(assert (=> start!709412 e!4359617))

(declare-fun inv!89996 (Context!15468) Bool)

(assert (=> start!709412 (and (inv!89996 ct2!346) e!4359615)))

(declare-fun e!4359611 () Bool)

(assert (=> start!709412 e!4359611))

(assert (=> start!709412 (and (inv!89996 ct1!250) e!4359610)))

(declare-fun b!7270075 () Bool)

(declare-fun tp_is_empty!47053 () Bool)

(declare-fun tp!2041003 () Bool)

(assert (=> b!7270075 (= e!4359611 (and tp_is_empty!47053 tp!2041003))))

(declare-fun b!7270076 () Bool)

(assert (=> b!7270076 (= e!4359613 e!4359616)))

(declare-fun res!2947227 () Bool)

(assert (=> b!7270076 (=> res!2947227 e!4359616)))

(declare-fun lt!2594446 () (Set Context!15468))

(declare-fun lt!2594457 () (Set Context!15468))

(assert (=> b!7270076 (= res!2947227 (not (= lt!2594446 (set.union lt!2594457 lt!2594450))))))

(assert (=> b!7270076 (= lt!2594450 (derivationStepZipperUp!2564 lt!2594436 (h!77228 s!7854)))))

(declare-fun derivationStepZipperDown!2728 (Regex!18794 Context!15468 C!37862) (Set Context!15468))

(assert (=> b!7270076 (= lt!2594457 (derivationStepZipperDown!2728 (h!77227 (exprs!8234 ct1!250)) lt!2594436 (h!77228 s!7854)))))

(declare-fun ++!16694 (List!70903 List!70903) List!70903)

(assert (=> b!7270076 (= lt!2594436 (Context!15469 (++!16694 lt!2594448 (exprs!8234 ct2!346))))))

(declare-fun lt!2594453 () Unit!164206)

(assert (=> b!7270076 (= lt!2594453 (lemmaConcatPreservesForall!1551 lt!2594448 (exprs!8234 ct2!346) lambda!448434))))

(declare-fun lt!2594452 () Unit!164206)

(assert (=> b!7270076 (= lt!2594452 (lemmaConcatPreservesForall!1551 lt!2594448 (exprs!8234 ct2!346) lambda!448434))))

(declare-fun b!7270077 () Bool)

(declare-fun forall!17623 (List!70903 Int) Bool)

(assert (=> b!7270077 (= e!4359614 (forall!17623 lt!2594448 lambda!448434))))

(declare-fun lt!2594447 () Unit!164206)

(assert (=> b!7270077 (= lt!2594447 (lemmaConcatPreservesForall!1551 lt!2594448 (exprs!8234 ct2!346) lambda!448434))))

(declare-fun b!7270078 () Bool)

(declare-fun res!2947224 () Bool)

(assert (=> b!7270078 (=> res!2947224 e!4359613)))

(assert (=> b!7270078 (= res!2947224 (not (= lt!2594449 (set.union (derivationStepZipperDown!2728 (h!77227 (exprs!8234 ct1!250)) lt!2594444 (h!77228 s!7854)) (derivationStepZipperUp!2564 lt!2594444 (h!77228 s!7854))))))))

(declare-fun b!7270079 () Bool)

(declare-fun res!2947229 () Bool)

(assert (=> b!7270079 (=> res!2947229 e!4359612)))

(assert (=> b!7270079 (= res!2947229 (not (is-Cons!70779 (exprs!8234 ct1!250))))))

(assert (=> b!7270080 (= e!4359617 (not e!4359612))))

(declare-fun res!2947226 () Bool)

(assert (=> b!7270080 (=> res!2947226 e!4359612)))

(declare-fun lt!2594451 () (Set Context!15468))

(declare-fun derivationStepZipper!3534 ((Set Context!15468) C!37862) (Set Context!15468))

(assert (=> b!7270080 (= res!2947226 (not (= lt!2594446 (derivationStepZipper!3534 lt!2594451 (h!77228 s!7854)))))))

(declare-fun lt!2594437 () Unit!164206)

(assert (=> b!7270080 (= lt!2594437 (lemmaConcatPreservesForall!1551 (exprs!8234 ct1!250) (exprs!8234 ct2!346) lambda!448434))))

(declare-fun lt!2594460 () Context!15468)

(assert (=> b!7270080 (= (flatMap!2907 lt!2594451 lambda!448435) (derivationStepZipperUp!2564 lt!2594460 (h!77228 s!7854)))))

(declare-fun lt!2594439 () Unit!164206)

(assert (=> b!7270080 (= lt!2594439 (lemmaFlatMapOnSingletonSet!2307 lt!2594451 lt!2594460 lambda!448435))))

(assert (=> b!7270080 (= lt!2594451 (set.insert lt!2594460 (as set.empty (Set Context!15468))))))

(declare-fun lt!2594445 () Unit!164206)

(assert (=> b!7270080 (= lt!2594445 (lemmaConcatPreservesForall!1551 (exprs!8234 ct1!250) (exprs!8234 ct2!346) lambda!448434))))

(declare-fun lt!2594440 () Unit!164206)

(assert (=> b!7270080 (= lt!2594440 (lemmaConcatPreservesForall!1551 (exprs!8234 ct1!250) (exprs!8234 ct2!346) lambda!448434))))

(declare-fun lt!2594458 () (Set Context!15468))

(assert (=> b!7270080 (= (flatMap!2907 lt!2594458 lambda!448435) (derivationStepZipperUp!2564 ct1!250 (h!77228 s!7854)))))

(declare-fun lt!2594454 () Unit!164206)

(assert (=> b!7270080 (= lt!2594454 (lemmaFlatMapOnSingletonSet!2307 lt!2594458 ct1!250 lambda!448435))))

(assert (=> b!7270080 (= lt!2594458 (set.insert ct1!250 (as set.empty (Set Context!15468))))))

(assert (=> b!7270080 (= lt!2594446 (derivationStepZipperUp!2564 lt!2594460 (h!77228 s!7854)))))

(assert (=> b!7270080 (= lt!2594460 (Context!15469 (++!16694 (exprs!8234 ct1!250) (exprs!8234 ct2!346))))))

(declare-fun lt!2594461 () Unit!164206)

(assert (=> b!7270080 (= lt!2594461 (lemmaConcatPreservesForall!1551 (exprs!8234 ct1!250) (exprs!8234 ct2!346) lambda!448434))))

(assert (= (and start!709412 res!2947225) b!7270070))

(assert (= (and b!7270070 res!2947220) b!7270073))

(assert (= (and b!7270073 res!2947223) b!7270080))

(assert (= (and b!7270080 (not res!2947226)) b!7270079))

(assert (= (and b!7270079 (not res!2947229)) b!7270071))

(assert (= (and b!7270071 (not res!2947228)) b!7270068))

(assert (= (and b!7270068 (not res!2947222)) b!7270078))

(assert (= (and b!7270078 (not res!2947224)) b!7270076))

(assert (= (and b!7270076 (not res!2947227)) b!7270074))

(assert (= (and b!7270074 (not res!2947221)) b!7270077))

(assert (= start!709412 b!7270072))

(assert (= (and start!709412 (is-Cons!70780 s!7854)) b!7270075))

(assert (= start!709412 b!7270069))

(declare-fun m!7955558 () Bool)

(assert (=> b!7270078 m!7955558))

(declare-fun m!7955560 () Bool)

(assert (=> b!7270078 m!7955560))

(declare-fun m!7955562 () Bool)

(assert (=> b!7270076 m!7955562))

(declare-fun m!7955564 () Bool)

(assert (=> b!7270076 m!7955564))

(declare-fun m!7955566 () Bool)

(assert (=> b!7270076 m!7955566))

(declare-fun m!7955568 () Bool)

(assert (=> b!7270076 m!7955568))

(assert (=> b!7270076 m!7955564))

(declare-fun m!7955570 () Bool)

(assert (=> start!709412 m!7955570))

(assert (=> start!709412 m!7955570))

(declare-fun m!7955572 () Bool)

(assert (=> start!709412 m!7955572))

(declare-fun m!7955574 () Bool)

(assert (=> start!709412 m!7955574))

(declare-fun m!7955576 () Bool)

(assert (=> start!709412 m!7955576))

(declare-fun m!7955578 () Bool)

(assert (=> b!7270080 m!7955578))

(declare-fun m!7955580 () Bool)

(assert (=> b!7270080 m!7955580))

(declare-fun m!7955582 () Bool)

(assert (=> b!7270080 m!7955582))

(declare-fun m!7955584 () Bool)

(assert (=> b!7270080 m!7955584))

(declare-fun m!7955586 () Bool)

(assert (=> b!7270080 m!7955586))

(declare-fun m!7955588 () Bool)

(assert (=> b!7270080 m!7955588))

(assert (=> b!7270080 m!7955586))

(declare-fun m!7955590 () Bool)

(assert (=> b!7270080 m!7955590))

(declare-fun m!7955592 () Bool)

(assert (=> b!7270080 m!7955592))

(declare-fun m!7955594 () Bool)

(assert (=> b!7270080 m!7955594))

(assert (=> b!7270080 m!7955586))

(assert (=> b!7270080 m!7955586))

(declare-fun m!7955596 () Bool)

(assert (=> b!7270080 m!7955596))

(declare-fun m!7955598 () Bool)

(assert (=> b!7270080 m!7955598))

(declare-fun m!7955600 () Bool)

(assert (=> b!7270071 m!7955600))

(declare-fun m!7955602 () Bool)

(assert (=> b!7270068 m!7955602))

(assert (=> b!7270068 m!7955584))

(declare-fun m!7955604 () Bool)

(assert (=> b!7270068 m!7955604))

(declare-fun m!7955606 () Bool)

(assert (=> b!7270070 m!7955606))

(declare-fun m!7955608 () Bool)

(assert (=> b!7270077 m!7955608))

(assert (=> b!7270077 m!7955564))

(assert (=> b!7270074 m!7955564))

(assert (=> b!7270074 m!7955564))

(declare-fun m!7955610 () Bool)

(assert (=> b!7270074 m!7955610))

(declare-fun m!7955612 () Bool)

(assert (=> b!7270074 m!7955612))

(declare-fun m!7955614 () Bool)

(assert (=> b!7270074 m!7955614))

(assert (=> b!7270074 m!7955564))

(declare-fun m!7955616 () Bool)

(assert (=> b!7270074 m!7955616))

(assert (=> b!7270074 m!7955564))

(declare-fun m!7955618 () Bool)

(assert (=> b!7270074 m!7955618))

(declare-fun m!7955620 () Bool)

(assert (=> b!7270074 m!7955620))

(assert (=> b!7270074 m!7955564))

(assert (=> b!7270074 m!7955562))

(push 1)

(assert (not b!7270070))

(assert (not b!7270078))

(assert (not b!7270080))

(assert (not b!7270076))

(assert tp_is_empty!47053)

(assert (not b!7270077))

(assert (not b!7270071))

(assert (not b!7270069))

(assert (not b!7270072))

(assert (not start!709412))

(assert (not b!7270074))

(assert (not b!7270068))

(assert (not b!7270075))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2262272 () Bool)

(declare-fun res!2947264 () Bool)

(declare-fun e!4359646 () Bool)

(assert (=> d!2262272 (=> res!2947264 e!4359646)))

(assert (=> d!2262272 (= res!2947264 (is-Nil!70779 lt!2594448))))

(assert (=> d!2262272 (= (forall!17623 lt!2594448 lambda!448434) e!4359646)))

(declare-fun b!7270128 () Bool)

(declare-fun e!4359647 () Bool)

(assert (=> b!7270128 (= e!4359646 e!4359647)))

(declare-fun res!2947265 () Bool)

(assert (=> b!7270128 (=> (not res!2947265) (not e!4359647))))

(declare-fun dynLambda!28926 (Int Regex!18794) Bool)

(assert (=> b!7270128 (= res!2947265 (dynLambda!28926 lambda!448434 (h!77227 lt!2594448)))))

(declare-fun b!7270129 () Bool)

(assert (=> b!7270129 (= e!4359647 (forall!17623 (t!384973 lt!2594448) lambda!448434))))

(assert (= (and d!2262272 (not res!2947264)) b!7270128))

(assert (= (and b!7270128 res!2947265) b!7270129))

(declare-fun b_lambda!280189 () Bool)

(assert (=> (not b_lambda!280189) (not b!7270128)))

(declare-fun m!7955686 () Bool)

(assert (=> b!7270128 m!7955686))

(declare-fun m!7955688 () Bool)

(assert (=> b!7270129 m!7955688))

(assert (=> b!7270077 d!2262272))

(declare-fun d!2262274 () Bool)

(assert (=> d!2262274 (forall!17623 (++!16694 lt!2594448 (exprs!8234 ct2!346)) lambda!448434)))

(declare-fun lt!2594546 () Unit!164206)

(declare-fun choose!56390 (List!70903 List!70903 Int) Unit!164206)

(assert (=> d!2262274 (= lt!2594546 (choose!56390 lt!2594448 (exprs!8234 ct2!346) lambda!448434))))

(assert (=> d!2262274 (forall!17623 lt!2594448 lambda!448434)))

(assert (=> d!2262274 (= (lemmaConcatPreservesForall!1551 lt!2594448 (exprs!8234 ct2!346) lambda!448434) lt!2594546)))

(declare-fun bs!1910931 () Bool)

(assert (= bs!1910931 d!2262274))

(assert (=> bs!1910931 m!7955568))

(assert (=> bs!1910931 m!7955568))

(declare-fun m!7955690 () Bool)

(assert (=> bs!1910931 m!7955690))

(declare-fun m!7955692 () Bool)

(assert (=> bs!1910931 m!7955692))

(assert (=> bs!1910931 m!7955608))

(assert (=> b!7270077 d!2262274))

(declare-fun b!7270162 () Bool)

(declare-fun e!4359671 () (Set Context!15468))

(declare-fun call!662995 () (Set Context!15468))

(assert (=> b!7270162 (= e!4359671 call!662995)))

(declare-fun c!1353246 () Bool)

(declare-fun c!1353249 () Bool)

(declare-fun call!662994 () (Set Context!15468))

(declare-fun bm!662989 () Bool)

(declare-fun call!662996 () List!70903)

(declare-fun c!1353247 () Bool)

(assert (=> bm!662989 (= call!662994 (derivationStepZipperDown!2728 (ite c!1353247 (regTwo!38101 (h!77227 (exprs!8234 ct1!250))) (ite c!1353249 (regTwo!38100 (h!77227 (exprs!8234 ct1!250))) (ite c!1353246 (regOne!38100 (h!77227 (exprs!8234 ct1!250))) (reg!19123 (h!77227 (exprs!8234 ct1!250)))))) (ite (or c!1353247 c!1353249) lt!2594444 (Context!15469 call!662996)) (h!77228 s!7854)))))

(declare-fun d!2262278 () Bool)

(declare-fun c!1353248 () Bool)

(assert (=> d!2262278 (= c!1353248 (and (is-ElementMatch!18794 (h!77227 (exprs!8234 ct1!250))) (= (c!1353224 (h!77227 (exprs!8234 ct1!250))) (h!77228 s!7854))))))

(declare-fun e!4359668 () (Set Context!15468))

(assert (=> d!2262278 (= (derivationStepZipperDown!2728 (h!77227 (exprs!8234 ct1!250)) lt!2594444 (h!77228 s!7854)) e!4359668)))

(declare-fun bm!662990 () Bool)

(declare-fun call!662998 () List!70903)

(declare-fun $colon$colon!2968 (List!70903 Regex!18794) List!70903)

(assert (=> bm!662990 (= call!662998 ($colon$colon!2968 (exprs!8234 lt!2594444) (ite (or c!1353249 c!1353246) (regTwo!38100 (h!77227 (exprs!8234 ct1!250))) (h!77227 (exprs!8234 ct1!250)))))))

(declare-fun b!7270163 () Bool)

(declare-fun e!4359666 () (Set Context!15468))

(assert (=> b!7270163 (= e!4359666 e!4359671)))

(assert (=> b!7270163 (= c!1353246 (is-Concat!27639 (h!77227 (exprs!8234 ct1!250))))))

(declare-fun b!7270164 () Bool)

(declare-fun e!4359670 () Bool)

(assert (=> b!7270164 (= c!1353249 e!4359670)))

(declare-fun res!2947270 () Bool)

(assert (=> b!7270164 (=> (not res!2947270) (not e!4359670))))

(assert (=> b!7270164 (= res!2947270 (is-Concat!27639 (h!77227 (exprs!8234 ct1!250))))))

(declare-fun e!4359667 () (Set Context!15468))

(assert (=> b!7270164 (= e!4359667 e!4359666)))

(declare-fun bm!662991 () Bool)

(declare-fun call!662997 () (Set Context!15468))

(assert (=> bm!662991 (= call!662995 call!662997)))

(declare-fun b!7270165 () Bool)

(declare-fun e!4359669 () (Set Context!15468))

(assert (=> b!7270165 (= e!4359669 (as set.empty (Set Context!15468)))))

(declare-fun bm!662992 () Bool)

(assert (=> bm!662992 (= call!662997 call!662994)))

(declare-fun b!7270166 () Bool)

(assert (=> b!7270166 (= e!4359668 e!4359667)))

(assert (=> b!7270166 (= c!1353247 (is-Union!18794 (h!77227 (exprs!8234 ct1!250))))))

(declare-fun b!7270167 () Bool)

(assert (=> b!7270167 (= e!4359668 (set.insert lt!2594444 (as set.empty (Set Context!15468))))))

(declare-fun bm!662993 () Bool)

(assert (=> bm!662993 (= call!662996 call!662998)))

(declare-fun b!7270168 () Bool)

(assert (=> b!7270168 (= e!4359669 call!662995)))

(declare-fun b!7270169 () Bool)

(assert (=> b!7270169 (= e!4359670 (nullable!7994 (regOne!38100 (h!77227 (exprs!8234 ct1!250)))))))

(declare-fun b!7270170 () Bool)

(declare-fun call!662999 () (Set Context!15468))

(assert (=> b!7270170 (= e!4359666 (set.union call!662999 call!662997))))

(declare-fun b!7270171 () Bool)

(declare-fun c!1353250 () Bool)

(assert (=> b!7270171 (= c!1353250 (is-Star!18794 (h!77227 (exprs!8234 ct1!250))))))

(assert (=> b!7270171 (= e!4359671 e!4359669)))

(declare-fun bm!662994 () Bool)

(assert (=> bm!662994 (= call!662999 (derivationStepZipperDown!2728 (ite c!1353247 (regOne!38101 (h!77227 (exprs!8234 ct1!250))) (regOne!38100 (h!77227 (exprs!8234 ct1!250)))) (ite c!1353247 lt!2594444 (Context!15469 call!662998)) (h!77228 s!7854)))))

(declare-fun b!7270172 () Bool)

(assert (=> b!7270172 (= e!4359667 (set.union call!662999 call!662994))))

(assert (= (and d!2262278 c!1353248) b!7270167))

(assert (= (and d!2262278 (not c!1353248)) b!7270166))

(assert (= (and b!7270166 c!1353247) b!7270172))

(assert (= (and b!7270166 (not c!1353247)) b!7270164))

(assert (= (and b!7270164 res!2947270) b!7270169))

(assert (= (and b!7270164 c!1353249) b!7270170))

(assert (= (and b!7270164 (not c!1353249)) b!7270163))

(assert (= (and b!7270163 c!1353246) b!7270162))

(assert (= (and b!7270163 (not c!1353246)) b!7270171))

(assert (= (and b!7270171 c!1353250) b!7270168))

(assert (= (and b!7270171 (not c!1353250)) b!7270165))

(assert (= (or b!7270162 b!7270168) bm!662993))

(assert (= (or b!7270162 b!7270168) bm!662991))

(assert (= (or b!7270170 bm!662993) bm!662990))

(assert (= (or b!7270170 bm!662991) bm!662992))

(assert (= (or b!7270172 b!7270170) bm!662994))

(assert (= (or b!7270172 bm!662992) bm!662989))

(declare-fun m!7955698 () Bool)

(assert (=> bm!662994 m!7955698))

(declare-fun m!7955700 () Bool)

(assert (=> b!7270169 m!7955700))

(declare-fun m!7955702 () Bool)

(assert (=> bm!662989 m!7955702))

(declare-fun m!7955704 () Bool)

(assert (=> b!7270167 m!7955704))

(declare-fun m!7955706 () Bool)

(assert (=> bm!662990 m!7955706))

(assert (=> b!7270078 d!2262278))

(declare-fun d!2262282 () Bool)

(declare-fun c!1353257 () Bool)

(declare-fun e!4359681 () Bool)

(assert (=> d!2262282 (= c!1353257 e!4359681)))

(declare-fun res!2947274 () Bool)

(assert (=> d!2262282 (=> (not res!2947274) (not e!4359681))))

(assert (=> d!2262282 (= res!2947274 (is-Cons!70779 (exprs!8234 lt!2594444)))))

(declare-fun e!4359682 () (Set Context!15468))

(assert (=> d!2262282 (= (derivationStepZipperUp!2564 lt!2594444 (h!77228 s!7854)) e!4359682)))

(declare-fun b!7270188 () Bool)

(assert (=> b!7270188 (= e!4359681 (nullable!7994 (h!77227 (exprs!8234 lt!2594444))))))

(declare-fun bm!663000 () Bool)

(declare-fun call!663005 () (Set Context!15468))

(assert (=> bm!663000 (= call!663005 (derivationStepZipperDown!2728 (h!77227 (exprs!8234 lt!2594444)) (Context!15469 (t!384973 (exprs!8234 lt!2594444))) (h!77228 s!7854)))))

(declare-fun b!7270189 () Bool)

(declare-fun e!4359683 () (Set Context!15468))

(assert (=> b!7270189 (= e!4359682 e!4359683)))

(declare-fun c!1353258 () Bool)

(assert (=> b!7270189 (= c!1353258 (is-Cons!70779 (exprs!8234 lt!2594444)))))

(declare-fun b!7270190 () Bool)

(assert (=> b!7270190 (= e!4359682 (set.union call!663005 (derivationStepZipperUp!2564 (Context!15469 (t!384973 (exprs!8234 lt!2594444))) (h!77228 s!7854))))))

(declare-fun b!7270191 () Bool)

(assert (=> b!7270191 (= e!4359683 (as set.empty (Set Context!15468)))))

(declare-fun b!7270192 () Bool)

(assert (=> b!7270192 (= e!4359683 call!663005)))

(assert (= (and d!2262282 res!2947274) b!7270188))

(assert (= (and d!2262282 c!1353257) b!7270190))

(assert (= (and d!2262282 (not c!1353257)) b!7270189))

(assert (= (and b!7270189 c!1353258) b!7270192))

(assert (= (and b!7270189 (not c!1353258)) b!7270191))

(assert (= (or b!7270190 b!7270192) bm!663000))

(declare-fun m!7955708 () Bool)

(assert (=> b!7270188 m!7955708))

(declare-fun m!7955710 () Bool)

(assert (=> bm!663000 m!7955710))

(declare-fun m!7955712 () Bool)

(assert (=> b!7270190 m!7955712))

(assert (=> b!7270078 d!2262282))

(declare-fun d!2262284 () Bool)

(declare-fun nullableFct!3153 (Regex!18794) Bool)

(assert (=> d!2262284 (= (nullable!7994 (h!77227 (exprs!8234 ct1!250))) (nullableFct!3153 (h!77227 (exprs!8234 ct1!250))))))

(declare-fun bs!1910933 () Bool)

(assert (= bs!1910933 d!2262284))

(declare-fun m!7955720 () Bool)

(assert (=> bs!1910933 m!7955720))

(assert (=> b!7270068 d!2262284))

(declare-fun d!2262288 () Bool)

(declare-fun c!1353259 () Bool)

(declare-fun e!4359684 () Bool)

(assert (=> d!2262288 (= c!1353259 e!4359684)))

(declare-fun res!2947275 () Bool)

(assert (=> d!2262288 (=> (not res!2947275) (not e!4359684))))

(assert (=> d!2262288 (= res!2947275 (is-Cons!70779 (exprs!8234 ct1!250)))))

(declare-fun e!4359685 () (Set Context!15468))

(assert (=> d!2262288 (= (derivationStepZipperUp!2564 ct1!250 (h!77228 s!7854)) e!4359685)))

(declare-fun b!7270193 () Bool)

(assert (=> b!7270193 (= e!4359684 (nullable!7994 (h!77227 (exprs!8234 ct1!250))))))

(declare-fun bm!663001 () Bool)

(declare-fun call!663006 () (Set Context!15468))

(assert (=> bm!663001 (= call!663006 (derivationStepZipperDown!2728 (h!77227 (exprs!8234 ct1!250)) (Context!15469 (t!384973 (exprs!8234 ct1!250))) (h!77228 s!7854)))))

(declare-fun b!7270194 () Bool)

(declare-fun e!4359686 () (Set Context!15468))

(assert (=> b!7270194 (= e!4359685 e!4359686)))

(declare-fun c!1353260 () Bool)

(assert (=> b!7270194 (= c!1353260 (is-Cons!70779 (exprs!8234 ct1!250)))))

(declare-fun b!7270195 () Bool)

(assert (=> b!7270195 (= e!4359685 (set.union call!663006 (derivationStepZipperUp!2564 (Context!15469 (t!384973 (exprs!8234 ct1!250))) (h!77228 s!7854))))))

(declare-fun b!7270196 () Bool)

(assert (=> b!7270196 (= e!4359686 (as set.empty (Set Context!15468)))))

(declare-fun b!7270197 () Bool)

(assert (=> b!7270197 (= e!4359686 call!663006)))

(assert (= (and d!2262288 res!2947275) b!7270193))

(assert (= (and d!2262288 c!1353259) b!7270195))

(assert (= (and d!2262288 (not c!1353259)) b!7270194))

(assert (= (and b!7270194 c!1353260) b!7270197))

(assert (= (and b!7270194 (not c!1353260)) b!7270196))

(assert (= (or b!7270195 b!7270197) bm!663001))

(assert (=> b!7270193 m!7955602))

(declare-fun m!7955722 () Bool)

(assert (=> bm!663001 m!7955722))

(declare-fun m!7955724 () Bool)

(assert (=> b!7270195 m!7955724))

(assert (=> b!7270068 d!2262288))

(declare-fun d!2262290 () Bool)

(assert (=> d!2262290 (= (tail!14491 (exprs!8234 ct1!250)) (t!384973 (exprs!8234 ct1!250)))))

(assert (=> b!7270068 d!2262290))

(declare-fun d!2262292 () Bool)

(declare-fun c!1353263 () Bool)

(declare-fun isEmpty!40706 (List!70904) Bool)

(assert (=> d!2262292 (= c!1353263 (isEmpty!40706 s!7854))))

(declare-fun e!4359689 () Bool)

(assert (=> d!2262292 (= (matchZipper!3698 lt!2594438 s!7854) e!4359689)))

(declare-fun b!7270202 () Bool)

(declare-fun nullableZipper!3000 ((Set Context!15468)) Bool)

(assert (=> b!7270202 (= e!4359689 (nullableZipper!3000 lt!2594438))))

(declare-fun b!7270203 () Bool)

(declare-fun head!14998 (List!70904) C!37862)

(declare-fun tail!14493 (List!70904) List!70904)

(assert (=> b!7270203 (= e!4359689 (matchZipper!3698 (derivationStepZipper!3534 lt!2594438 (head!14998 s!7854)) (tail!14493 s!7854)))))

(assert (= (and d!2262292 c!1353263) b!7270202))

(assert (= (and d!2262292 (not c!1353263)) b!7270203))

(declare-fun m!7955726 () Bool)

(assert (=> d!2262292 m!7955726))

(declare-fun m!7955728 () Bool)

(assert (=> b!7270202 m!7955728))

(declare-fun m!7955730 () Bool)

(assert (=> b!7270203 m!7955730))

(assert (=> b!7270203 m!7955730))

(declare-fun m!7955732 () Bool)

(assert (=> b!7270203 m!7955732))

(declare-fun m!7955734 () Bool)

(assert (=> b!7270203 m!7955734))

(assert (=> b!7270203 m!7955732))

(assert (=> b!7270203 m!7955734))

(declare-fun m!7955736 () Bool)

(assert (=> b!7270203 m!7955736))

(assert (=> b!7270074 d!2262292))

(declare-fun d!2262294 () Bool)

(declare-fun c!1353264 () Bool)

(assert (=> d!2262294 (= c!1353264 (isEmpty!40706 (t!384974 s!7854)))))

(declare-fun e!4359690 () Bool)

(assert (=> d!2262294 (= (matchZipper!3698 lt!2594450 (t!384974 s!7854)) e!4359690)))

(declare-fun b!7270204 () Bool)

(assert (=> b!7270204 (= e!4359690 (nullableZipper!3000 lt!2594450))))

(declare-fun b!7270205 () Bool)

(assert (=> b!7270205 (= e!4359690 (matchZipper!3698 (derivationStepZipper!3534 lt!2594450 (head!14998 (t!384974 s!7854))) (tail!14493 (t!384974 s!7854))))))

(assert (= (and d!2262294 c!1353264) b!7270204))

(assert (= (and d!2262294 (not c!1353264)) b!7270205))

(declare-fun m!7955738 () Bool)

(assert (=> d!2262294 m!7955738))

(declare-fun m!7955740 () Bool)

(assert (=> b!7270204 m!7955740))

(declare-fun m!7955742 () Bool)

(assert (=> b!7270205 m!7955742))

(assert (=> b!7270205 m!7955742))

(declare-fun m!7955744 () Bool)

(assert (=> b!7270205 m!7955744))

(declare-fun m!7955746 () Bool)

(assert (=> b!7270205 m!7955746))

(assert (=> b!7270205 m!7955744))

(assert (=> b!7270205 m!7955746))

(declare-fun m!7955748 () Bool)

(assert (=> b!7270205 m!7955748))

(assert (=> b!7270074 d!2262294))

(declare-fun d!2262296 () Bool)

(declare-fun dynLambda!28927 (Int Context!15468) (Set Context!15468))

(assert (=> d!2262296 (= (flatMap!2907 lt!2594438 lambda!448435) (dynLambda!28927 lambda!448435 lt!2594436))))

(declare-fun lt!2594555 () Unit!164206)

(declare-fun choose!56391 ((Set Context!15468) Context!15468 Int) Unit!164206)

(assert (=> d!2262296 (= lt!2594555 (choose!56391 lt!2594438 lt!2594436 lambda!448435))))

(assert (=> d!2262296 (= lt!2594438 (set.insert lt!2594436 (as set.empty (Set Context!15468))))))

(assert (=> d!2262296 (= (lemmaFlatMapOnSingletonSet!2307 lt!2594438 lt!2594436 lambda!448435) lt!2594555)))

(declare-fun b_lambda!280193 () Bool)

(assert (=> (not b_lambda!280193) (not d!2262296)))

(declare-fun bs!1910935 () Bool)

(assert (= bs!1910935 d!2262296))

(assert (=> bs!1910935 m!7955616))

(declare-fun m!7955754 () Bool)

(assert (=> bs!1910935 m!7955754))

(declare-fun m!7955756 () Bool)

(assert (=> bs!1910935 m!7955756))

(assert (=> bs!1910935 m!7955610))

(assert (=> b!7270074 d!2262296))

(declare-fun bs!1910936 () Bool)

(declare-fun d!2262300 () Bool)

(assert (= bs!1910936 (and d!2262300 b!7270080)))

(declare-fun lambda!448472 () Int)

(assert (=> bs!1910936 (= lambda!448472 lambda!448434)))

(assert (=> d!2262300 (matchZipper!3698 (set.insert (Context!15469 (++!16694 (exprs!8234 lt!2594444) (exprs!8234 ct2!346))) (as set.empty (Set Context!15468))) s!7854)))

(declare-fun lt!2594561 () Unit!164206)

(assert (=> d!2262300 (= lt!2594561 (lemmaConcatPreservesForall!1551 (exprs!8234 lt!2594444) (exprs!8234 ct2!346) lambda!448472))))

(declare-fun lt!2594560 () Unit!164206)

(declare-fun choose!56392 (Context!15468 Context!15468 List!70904) Unit!164206)

(assert (=> d!2262300 (= lt!2594560 (choose!56392 lt!2594444 ct2!346 s!7854))))

(assert (=> d!2262300 (matchZipper!3698 (set.insert ct2!346 (as set.empty (Set Context!15468))) s!7854)))

(assert (=> d!2262300 (= (lemmaPrependingNullableCtxStillMatches!31 lt!2594444 ct2!346 s!7854) lt!2594560)))

(declare-fun bs!1910937 () Bool)

(assert (= bs!1910937 d!2262300))

(declare-fun m!7955758 () Bool)

(assert (=> bs!1910937 m!7955758))

(declare-fun m!7955760 () Bool)

(assert (=> bs!1910937 m!7955760))

(declare-fun m!7955762 () Bool)

(assert (=> bs!1910937 m!7955762))

(assert (=> bs!1910937 m!7955758))

(declare-fun m!7955764 () Bool)

(assert (=> bs!1910937 m!7955764))

(assert (=> bs!1910937 m!7955570))

(assert (=> bs!1910937 m!7955570))

(assert (=> bs!1910937 m!7955572))

(declare-fun m!7955766 () Bool)

(assert (=> bs!1910937 m!7955766))

(assert (=> b!7270074 d!2262300))

(assert (=> b!7270074 d!2262274))

(declare-fun d!2262302 () Bool)

(declare-fun c!1353265 () Bool)

(declare-fun e!4359691 () Bool)

(assert (=> d!2262302 (= c!1353265 e!4359691)))

(declare-fun res!2947276 () Bool)

(assert (=> d!2262302 (=> (not res!2947276) (not e!4359691))))

(assert (=> d!2262302 (= res!2947276 (is-Cons!70779 (exprs!8234 lt!2594436)))))

(declare-fun e!4359692 () (Set Context!15468))

(assert (=> d!2262302 (= (derivationStepZipperUp!2564 lt!2594436 (h!77228 s!7854)) e!4359692)))

(declare-fun b!7270206 () Bool)

(assert (=> b!7270206 (= e!4359691 (nullable!7994 (h!77227 (exprs!8234 lt!2594436))))))

(declare-fun bm!663002 () Bool)

(declare-fun call!663007 () (Set Context!15468))

(assert (=> bm!663002 (= call!663007 (derivationStepZipperDown!2728 (h!77227 (exprs!8234 lt!2594436)) (Context!15469 (t!384973 (exprs!8234 lt!2594436))) (h!77228 s!7854)))))

(declare-fun b!7270207 () Bool)

(declare-fun e!4359693 () (Set Context!15468))

(assert (=> b!7270207 (= e!4359692 e!4359693)))

(declare-fun c!1353266 () Bool)

(assert (=> b!7270207 (= c!1353266 (is-Cons!70779 (exprs!8234 lt!2594436)))))

(declare-fun b!7270208 () Bool)

(assert (=> b!7270208 (= e!4359692 (set.union call!663007 (derivationStepZipperUp!2564 (Context!15469 (t!384973 (exprs!8234 lt!2594436))) (h!77228 s!7854))))))

(declare-fun b!7270209 () Bool)

(assert (=> b!7270209 (= e!4359693 (as set.empty (Set Context!15468)))))

(declare-fun b!7270210 () Bool)

(assert (=> b!7270210 (= e!4359693 call!663007)))

(assert (= (and d!2262302 res!2947276) b!7270206))

(assert (= (and d!2262302 c!1353265) b!7270208))

(assert (= (and d!2262302 (not c!1353265)) b!7270207))

(assert (= (and b!7270207 c!1353266) b!7270210))

(assert (= (and b!7270207 (not c!1353266)) b!7270209))

(assert (= (or b!7270208 b!7270210) bm!663002))

(declare-fun m!7955768 () Bool)

(assert (=> b!7270206 m!7955768))

(declare-fun m!7955770 () Bool)

(assert (=> bm!663002 m!7955770))

(declare-fun m!7955772 () Bool)

(assert (=> b!7270208 m!7955772))

(assert (=> b!7270074 d!2262302))

(declare-fun d!2262304 () Bool)

(declare-fun choose!56393 ((Set Context!15468) Int) (Set Context!15468))

(assert (=> d!2262304 (= (flatMap!2907 lt!2594438 lambda!448435) (choose!56393 lt!2594438 lambda!448435))))

(declare-fun bs!1910938 () Bool)

(assert (= bs!1910938 d!2262304))

(declare-fun m!7955774 () Bool)

(assert (=> bs!1910938 m!7955774))

(assert (=> b!7270074 d!2262304))

(declare-fun d!2262306 () Bool)

(declare-fun c!1353267 () Bool)

(declare-fun e!4359694 () Bool)

(assert (=> d!2262306 (= c!1353267 e!4359694)))

(declare-fun res!2947277 () Bool)

(assert (=> d!2262306 (=> (not res!2947277) (not e!4359694))))

(assert (=> d!2262306 (= res!2947277 (is-Cons!70779 (exprs!8234 lt!2594460)))))

(declare-fun e!4359695 () (Set Context!15468))

(assert (=> d!2262306 (= (derivationStepZipperUp!2564 lt!2594460 (h!77228 s!7854)) e!4359695)))

(declare-fun b!7270211 () Bool)

(assert (=> b!7270211 (= e!4359694 (nullable!7994 (h!77227 (exprs!8234 lt!2594460))))))

(declare-fun bm!663003 () Bool)

(declare-fun call!663008 () (Set Context!15468))

(assert (=> bm!663003 (= call!663008 (derivationStepZipperDown!2728 (h!77227 (exprs!8234 lt!2594460)) (Context!15469 (t!384973 (exprs!8234 lt!2594460))) (h!77228 s!7854)))))

(declare-fun b!7270212 () Bool)

(declare-fun e!4359696 () (Set Context!15468))

(assert (=> b!7270212 (= e!4359695 e!4359696)))

(declare-fun c!1353268 () Bool)

(assert (=> b!7270212 (= c!1353268 (is-Cons!70779 (exprs!8234 lt!2594460)))))

(declare-fun b!7270213 () Bool)

(assert (=> b!7270213 (= e!4359695 (set.union call!663008 (derivationStepZipperUp!2564 (Context!15469 (t!384973 (exprs!8234 lt!2594460))) (h!77228 s!7854))))))

(declare-fun b!7270214 () Bool)

(assert (=> b!7270214 (= e!4359696 (as set.empty (Set Context!15468)))))

(declare-fun b!7270215 () Bool)

(assert (=> b!7270215 (= e!4359696 call!663008)))

(assert (= (and d!2262306 res!2947277) b!7270211))

(assert (= (and d!2262306 c!1353267) b!7270213))

(assert (= (and d!2262306 (not c!1353267)) b!7270212))

(assert (= (and b!7270212 c!1353268) b!7270215))

(assert (= (and b!7270212 (not c!1353268)) b!7270214))

(assert (= (or b!7270213 b!7270215) bm!663003))

(declare-fun m!7955776 () Bool)

(assert (=> b!7270211 m!7955776))

(declare-fun m!7955778 () Bool)

(assert (=> bm!663003 m!7955778))

(declare-fun m!7955780 () Bool)

(assert (=> b!7270213 m!7955780))

(assert (=> b!7270080 d!2262306))

(assert (=> b!7270080 d!2262288))

(declare-fun d!2262308 () Bool)

(assert (=> d!2262308 (forall!17623 (++!16694 (exprs!8234 ct1!250) (exprs!8234 ct2!346)) lambda!448434)))

(declare-fun lt!2594562 () Unit!164206)

(assert (=> d!2262308 (= lt!2594562 (choose!56390 (exprs!8234 ct1!250) (exprs!8234 ct2!346) lambda!448434))))

(assert (=> d!2262308 (forall!17623 (exprs!8234 ct1!250) lambda!448434)))

(assert (=> d!2262308 (= (lemmaConcatPreservesForall!1551 (exprs!8234 ct1!250) (exprs!8234 ct2!346) lambda!448434) lt!2594562)))

(declare-fun bs!1910939 () Bool)

(assert (= bs!1910939 d!2262308))

(assert (=> bs!1910939 m!7955596))

(assert (=> bs!1910939 m!7955596))

(declare-fun m!7955782 () Bool)

(assert (=> bs!1910939 m!7955782))

(declare-fun m!7955784 () Bool)

(assert (=> bs!1910939 m!7955784))

(declare-fun m!7955786 () Bool)

(assert (=> bs!1910939 m!7955786))

(assert (=> b!7270080 d!2262308))

(declare-fun d!2262310 () Bool)

(declare-fun e!4359701 () Bool)

(assert (=> d!2262310 e!4359701))

(declare-fun res!2947283 () Bool)

(assert (=> d!2262310 (=> (not res!2947283) (not e!4359701))))

(declare-fun lt!2594571 () List!70903)

(declare-fun content!14772 (List!70903) (Set Regex!18794))

(assert (=> d!2262310 (= res!2947283 (= (content!14772 lt!2594571) (set.union (content!14772 (exprs!8234 ct1!250)) (content!14772 (exprs!8234 ct2!346)))))))

(declare-fun e!4359702 () List!70903)

(assert (=> d!2262310 (= lt!2594571 e!4359702)))

(declare-fun c!1353271 () Bool)

(assert (=> d!2262310 (= c!1353271 (is-Nil!70779 (exprs!8234 ct1!250)))))

(assert (=> d!2262310 (= (++!16694 (exprs!8234 ct1!250) (exprs!8234 ct2!346)) lt!2594571)))

(declare-fun b!7270227 () Bool)

(assert (=> b!7270227 (= e!4359701 (or (not (= (exprs!8234 ct2!346) Nil!70779)) (= lt!2594571 (exprs!8234 ct1!250))))))

(declare-fun b!7270224 () Bool)

(assert (=> b!7270224 (= e!4359702 (exprs!8234 ct2!346))))

(declare-fun b!7270225 () Bool)

(assert (=> b!7270225 (= e!4359702 (Cons!70779 (h!77227 (exprs!8234 ct1!250)) (++!16694 (t!384973 (exprs!8234 ct1!250)) (exprs!8234 ct2!346))))))

(declare-fun b!7270226 () Bool)

(declare-fun res!2947282 () Bool)

(assert (=> b!7270226 (=> (not res!2947282) (not e!4359701))))

(declare-fun size!41820 (List!70903) Int)

(assert (=> b!7270226 (= res!2947282 (= (size!41820 lt!2594571) (+ (size!41820 (exprs!8234 ct1!250)) (size!41820 (exprs!8234 ct2!346)))))))

(assert (= (and d!2262310 c!1353271) b!7270224))

(assert (= (and d!2262310 (not c!1353271)) b!7270225))

(assert (= (and d!2262310 res!2947283) b!7270226))

(assert (= (and b!7270226 res!2947282) b!7270227))

(declare-fun m!7955788 () Bool)

(assert (=> d!2262310 m!7955788))

(declare-fun m!7955790 () Bool)

(assert (=> d!2262310 m!7955790))

(declare-fun m!7955792 () Bool)

(assert (=> d!2262310 m!7955792))

(declare-fun m!7955794 () Bool)

(assert (=> b!7270225 m!7955794))

(declare-fun m!7955796 () Bool)

(assert (=> b!7270226 m!7955796))

(declare-fun m!7955798 () Bool)

(assert (=> b!7270226 m!7955798))

(declare-fun m!7955800 () Bool)

(assert (=> b!7270226 m!7955800))

(assert (=> b!7270080 d!2262310))

(declare-fun bs!1910942 () Bool)

(declare-fun d!2262312 () Bool)

(assert (= bs!1910942 (and d!2262312 b!7270080)))

(declare-fun lambda!448478 () Int)

(assert (=> bs!1910942 (= lambda!448478 lambda!448435)))

(assert (=> d!2262312 true))

(assert (=> d!2262312 (= (derivationStepZipper!3534 lt!2594451 (h!77228 s!7854)) (flatMap!2907 lt!2594451 lambda!448478))))

(declare-fun bs!1910943 () Bool)

(assert (= bs!1910943 d!2262312))

(declare-fun m!7955812 () Bool)

(assert (=> bs!1910943 m!7955812))

(assert (=> b!7270080 d!2262312))

(declare-fun d!2262316 () Bool)

(assert (=> d!2262316 (= (flatMap!2907 lt!2594451 lambda!448435) (dynLambda!28927 lambda!448435 lt!2594460))))

(declare-fun lt!2594572 () Unit!164206)

(assert (=> d!2262316 (= lt!2594572 (choose!56391 lt!2594451 lt!2594460 lambda!448435))))

(assert (=> d!2262316 (= lt!2594451 (set.insert lt!2594460 (as set.empty (Set Context!15468))))))

(assert (=> d!2262316 (= (lemmaFlatMapOnSingletonSet!2307 lt!2594451 lt!2594460 lambda!448435) lt!2594572)))

(declare-fun b_lambda!280195 () Bool)

(assert (=> (not b_lambda!280195) (not d!2262316)))

(declare-fun bs!1910944 () Bool)

(assert (= bs!1910944 d!2262316))

(assert (=> bs!1910944 m!7955582))

(declare-fun m!7955814 () Bool)

(assert (=> bs!1910944 m!7955814))

(declare-fun m!7955816 () Bool)

(assert (=> bs!1910944 m!7955816))

(assert (=> bs!1910944 m!7955580))

(assert (=> b!7270080 d!2262316))

(declare-fun d!2262318 () Bool)

(assert (=> d!2262318 (= (flatMap!2907 lt!2594451 lambda!448435) (choose!56393 lt!2594451 lambda!448435))))

(declare-fun bs!1910945 () Bool)

(assert (= bs!1910945 d!2262318))

(declare-fun m!7955818 () Bool)

(assert (=> bs!1910945 m!7955818))

(assert (=> b!7270080 d!2262318))

(declare-fun d!2262320 () Bool)

(assert (=> d!2262320 (= (flatMap!2907 lt!2594458 lambda!448435) (dynLambda!28927 lambda!448435 ct1!250))))

(declare-fun lt!2594573 () Unit!164206)

(assert (=> d!2262320 (= lt!2594573 (choose!56391 lt!2594458 ct1!250 lambda!448435))))

(assert (=> d!2262320 (= lt!2594458 (set.insert ct1!250 (as set.empty (Set Context!15468))))))

(assert (=> d!2262320 (= (lemmaFlatMapOnSingletonSet!2307 lt!2594458 ct1!250 lambda!448435) lt!2594573)))

(declare-fun b_lambda!280197 () Bool)

(assert (=> (not b_lambda!280197) (not d!2262320)))

(declare-fun bs!1910946 () Bool)

(assert (= bs!1910946 d!2262320))

(assert (=> bs!1910946 m!7955598))

(declare-fun m!7955820 () Bool)

(assert (=> bs!1910946 m!7955820))

(declare-fun m!7955822 () Bool)

(assert (=> bs!1910946 m!7955822))

(assert (=> bs!1910946 m!7955594))

(assert (=> b!7270080 d!2262320))

(declare-fun d!2262322 () Bool)

(assert (=> d!2262322 (= (flatMap!2907 lt!2594458 lambda!448435) (choose!56393 lt!2594458 lambda!448435))))

(declare-fun bs!1910947 () Bool)

(assert (= bs!1910947 d!2262322))

(declare-fun m!7955824 () Bool)

(assert (=> bs!1910947 m!7955824))

(assert (=> b!7270080 d!2262322))

(declare-fun d!2262324 () Bool)

(declare-fun c!1353274 () Bool)

(assert (=> d!2262324 (= c!1353274 (isEmpty!40706 s!7854))))

(declare-fun e!4359703 () Bool)

(assert (=> d!2262324 (= (matchZipper!3698 (set.insert ct2!346 (as set.empty (Set Context!15468))) s!7854) e!4359703)))

(declare-fun b!7270230 () Bool)

(assert (=> b!7270230 (= e!4359703 (nullableZipper!3000 (set.insert ct2!346 (as set.empty (Set Context!15468)))))))

(declare-fun b!7270231 () Bool)

(assert (=> b!7270231 (= e!4359703 (matchZipper!3698 (derivationStepZipper!3534 (set.insert ct2!346 (as set.empty (Set Context!15468))) (head!14998 s!7854)) (tail!14493 s!7854)))))

(assert (= (and d!2262324 c!1353274) b!7270230))

(assert (= (and d!2262324 (not c!1353274)) b!7270231))

(assert (=> d!2262324 m!7955726))

(assert (=> b!7270230 m!7955570))

(declare-fun m!7955826 () Bool)

(assert (=> b!7270230 m!7955826))

(assert (=> b!7270231 m!7955730))

(assert (=> b!7270231 m!7955570))

(assert (=> b!7270231 m!7955730))

(declare-fun m!7955828 () Bool)

(assert (=> b!7270231 m!7955828))

(assert (=> b!7270231 m!7955734))

(assert (=> b!7270231 m!7955828))

(assert (=> b!7270231 m!7955734))

(declare-fun m!7955830 () Bool)

(assert (=> b!7270231 m!7955830))

(assert (=> start!709412 d!2262324))

(declare-fun bs!1910948 () Bool)

(declare-fun d!2262326 () Bool)

(assert (= bs!1910948 (and d!2262326 b!7270080)))

(declare-fun lambda!448481 () Int)

(assert (=> bs!1910948 (= lambda!448481 lambda!448434)))

(declare-fun bs!1910949 () Bool)

(assert (= bs!1910949 (and d!2262326 d!2262300)))

(assert (=> bs!1910949 (= lambda!448481 lambda!448472)))

(assert (=> d!2262326 (= (inv!89996 ct2!346) (forall!17623 (exprs!8234 ct2!346) lambda!448481))))

(declare-fun bs!1910950 () Bool)

(assert (= bs!1910950 d!2262326))

(declare-fun m!7955832 () Bool)

(assert (=> bs!1910950 m!7955832))

(assert (=> start!709412 d!2262326))

(declare-fun bs!1910951 () Bool)

(declare-fun d!2262328 () Bool)

(assert (= bs!1910951 (and d!2262328 b!7270080)))

(declare-fun lambda!448482 () Int)

(assert (=> bs!1910951 (= lambda!448482 lambda!448434)))

(declare-fun bs!1910952 () Bool)

(assert (= bs!1910952 (and d!2262328 d!2262300)))

(assert (=> bs!1910952 (= lambda!448482 lambda!448472)))

(declare-fun bs!1910953 () Bool)

(assert (= bs!1910953 (and d!2262328 d!2262326)))

(assert (=> bs!1910953 (= lambda!448482 lambda!448481)))

(assert (=> d!2262328 (= (inv!89996 ct1!250) (forall!17623 (exprs!8234 ct1!250) lambda!448482))))

(declare-fun bs!1910954 () Bool)

(assert (= bs!1910954 d!2262328))

(declare-fun m!7955834 () Bool)

(assert (=> bs!1910954 m!7955834))

(assert (=> start!709412 d!2262328))

(declare-fun bs!1910955 () Bool)

(declare-fun d!2262330 () Bool)

(assert (= bs!1910955 (and d!2262330 b!7270080)))

(declare-fun lambda!448485 () Int)

(assert (=> bs!1910955 (not (= lambda!448485 lambda!448434))))

(declare-fun bs!1910956 () Bool)

(assert (= bs!1910956 (and d!2262330 d!2262300)))

(assert (=> bs!1910956 (not (= lambda!448485 lambda!448472))))

(declare-fun bs!1910957 () Bool)

(assert (= bs!1910957 (and d!2262330 d!2262326)))

(assert (=> bs!1910957 (not (= lambda!448485 lambda!448481))))

(declare-fun bs!1910958 () Bool)

(assert (= bs!1910958 (and d!2262330 d!2262328)))

(assert (=> bs!1910958 (not (= lambda!448485 lambda!448482))))

(assert (=> d!2262330 (= (nullableContext!284 ct1!250) (forall!17623 (exprs!8234 ct1!250) lambda!448485))))

(declare-fun bs!1910959 () Bool)

(assert (= bs!1910959 d!2262330))

(declare-fun m!7955836 () Bool)

(assert (=> bs!1910959 m!7955836))

(assert (=> b!7270070 d!2262330))

(declare-fun d!2262332 () Bool)

(assert (=> d!2262332 (= (isEmpty!40704 (exprs!8234 ct1!250)) (is-Nil!70779 (exprs!8234 ct1!250)))))

(assert (=> b!7270071 d!2262332))

(assert (=> b!7270076 d!2262274))

(assert (=> b!7270076 d!2262302))

(declare-fun d!2262334 () Bool)

(declare-fun e!4359706 () Bool)

(assert (=> d!2262334 e!4359706))

(declare-fun res!2947285 () Bool)

(assert (=> d!2262334 (=> (not res!2947285) (not e!4359706))))

(declare-fun lt!2594574 () List!70903)

(assert (=> d!2262334 (= res!2947285 (= (content!14772 lt!2594574) (set.union (content!14772 lt!2594448) (content!14772 (exprs!8234 ct2!346)))))))

(declare-fun e!4359707 () List!70903)

(assert (=> d!2262334 (= lt!2594574 e!4359707)))

(declare-fun c!1353278 () Bool)

(assert (=> d!2262334 (= c!1353278 (is-Nil!70779 lt!2594448))))

(assert (=> d!2262334 (= (++!16694 lt!2594448 (exprs!8234 ct2!346)) lt!2594574)))

(declare-fun b!7270239 () Bool)

(assert (=> b!7270239 (= e!4359706 (or (not (= (exprs!8234 ct2!346) Nil!70779)) (= lt!2594574 lt!2594448)))))

(declare-fun b!7270236 () Bool)

(assert (=> b!7270236 (= e!4359707 (exprs!8234 ct2!346))))

(declare-fun b!7270237 () Bool)

(assert (=> b!7270237 (= e!4359707 (Cons!70779 (h!77227 lt!2594448) (++!16694 (t!384973 lt!2594448) (exprs!8234 ct2!346))))))

(declare-fun b!7270238 () Bool)

(declare-fun res!2947284 () Bool)

(assert (=> b!7270238 (=> (not res!2947284) (not e!4359706))))

(assert (=> b!7270238 (= res!2947284 (= (size!41820 lt!2594574) (+ (size!41820 lt!2594448) (size!41820 (exprs!8234 ct2!346)))))))

(assert (= (and d!2262334 c!1353278) b!7270236))

(assert (= (and d!2262334 (not c!1353278)) b!7270237))

(assert (= (and d!2262334 res!2947285) b!7270238))

(assert (= (and b!7270238 res!2947284) b!7270239))

(declare-fun m!7955838 () Bool)

(assert (=> d!2262334 m!7955838))

(declare-fun m!7955840 () Bool)

(assert (=> d!2262334 m!7955840))

(assert (=> d!2262334 m!7955792))

(declare-fun m!7955842 () Bool)

(assert (=> b!7270237 m!7955842))

(declare-fun m!7955844 () Bool)

(assert (=> b!7270238 m!7955844))

(declare-fun m!7955846 () Bool)

(assert (=> b!7270238 m!7955846))

(assert (=> b!7270238 m!7955800))

(assert (=> b!7270076 d!2262334))

(declare-fun b!7270240 () Bool)

(declare-fun e!4359713 () (Set Context!15468))

(declare-fun call!663010 () (Set Context!15468))

(assert (=> b!7270240 (= e!4359713 call!663010)))

(declare-fun c!1353279 () Bool)

(declare-fun c!1353282 () Bool)

(declare-fun c!1353280 () Bool)

(declare-fun bm!663004 () Bool)

(declare-fun call!663009 () (Set Context!15468))

(declare-fun call!663011 () List!70903)

(assert (=> bm!663004 (= call!663009 (derivationStepZipperDown!2728 (ite c!1353280 (regTwo!38101 (h!77227 (exprs!8234 ct1!250))) (ite c!1353282 (regTwo!38100 (h!77227 (exprs!8234 ct1!250))) (ite c!1353279 (regOne!38100 (h!77227 (exprs!8234 ct1!250))) (reg!19123 (h!77227 (exprs!8234 ct1!250)))))) (ite (or c!1353280 c!1353282) lt!2594436 (Context!15469 call!663011)) (h!77228 s!7854)))))

(declare-fun d!2262336 () Bool)

(declare-fun c!1353281 () Bool)

(assert (=> d!2262336 (= c!1353281 (and (is-ElementMatch!18794 (h!77227 (exprs!8234 ct1!250))) (= (c!1353224 (h!77227 (exprs!8234 ct1!250))) (h!77228 s!7854))))))

(declare-fun e!4359710 () (Set Context!15468))

(assert (=> d!2262336 (= (derivationStepZipperDown!2728 (h!77227 (exprs!8234 ct1!250)) lt!2594436 (h!77228 s!7854)) e!4359710)))

(declare-fun call!663013 () List!70903)

(declare-fun bm!663005 () Bool)

(assert (=> bm!663005 (= call!663013 ($colon$colon!2968 (exprs!8234 lt!2594436) (ite (or c!1353282 c!1353279) (regTwo!38100 (h!77227 (exprs!8234 ct1!250))) (h!77227 (exprs!8234 ct1!250)))))))

(declare-fun b!7270241 () Bool)

(declare-fun e!4359708 () (Set Context!15468))

(assert (=> b!7270241 (= e!4359708 e!4359713)))

(assert (=> b!7270241 (= c!1353279 (is-Concat!27639 (h!77227 (exprs!8234 ct1!250))))))

(declare-fun b!7270242 () Bool)

(declare-fun e!4359712 () Bool)

(assert (=> b!7270242 (= c!1353282 e!4359712)))

(declare-fun res!2947286 () Bool)

(assert (=> b!7270242 (=> (not res!2947286) (not e!4359712))))

(assert (=> b!7270242 (= res!2947286 (is-Concat!27639 (h!77227 (exprs!8234 ct1!250))))))

(declare-fun e!4359709 () (Set Context!15468))

(assert (=> b!7270242 (= e!4359709 e!4359708)))

(declare-fun bm!663006 () Bool)

(declare-fun call!663012 () (Set Context!15468))

(assert (=> bm!663006 (= call!663010 call!663012)))

(declare-fun b!7270243 () Bool)

(declare-fun e!4359711 () (Set Context!15468))

(assert (=> b!7270243 (= e!4359711 (as set.empty (Set Context!15468)))))

(declare-fun bm!663007 () Bool)

(assert (=> bm!663007 (= call!663012 call!663009)))

(declare-fun b!7270244 () Bool)

(assert (=> b!7270244 (= e!4359710 e!4359709)))

(assert (=> b!7270244 (= c!1353280 (is-Union!18794 (h!77227 (exprs!8234 ct1!250))))))

(declare-fun b!7270245 () Bool)

(assert (=> b!7270245 (= e!4359710 (set.insert lt!2594436 (as set.empty (Set Context!15468))))))

(declare-fun bm!663008 () Bool)

(assert (=> bm!663008 (= call!663011 call!663013)))

(declare-fun b!7270246 () Bool)

(assert (=> b!7270246 (= e!4359711 call!663010)))

(declare-fun b!7270247 () Bool)

(assert (=> b!7270247 (= e!4359712 (nullable!7994 (regOne!38100 (h!77227 (exprs!8234 ct1!250)))))))

(declare-fun b!7270248 () Bool)

(declare-fun call!663014 () (Set Context!15468))

(assert (=> b!7270248 (= e!4359708 (set.union call!663014 call!663012))))

(declare-fun b!7270249 () Bool)

(declare-fun c!1353283 () Bool)

(assert (=> b!7270249 (= c!1353283 (is-Star!18794 (h!77227 (exprs!8234 ct1!250))))))

(assert (=> b!7270249 (= e!4359713 e!4359711)))

(declare-fun bm!663009 () Bool)

(assert (=> bm!663009 (= call!663014 (derivationStepZipperDown!2728 (ite c!1353280 (regOne!38101 (h!77227 (exprs!8234 ct1!250))) (regOne!38100 (h!77227 (exprs!8234 ct1!250)))) (ite c!1353280 lt!2594436 (Context!15469 call!663013)) (h!77228 s!7854)))))

(declare-fun b!7270250 () Bool)

(assert (=> b!7270250 (= e!4359709 (set.union call!663014 call!663009))))

(assert (= (and d!2262336 c!1353281) b!7270245))

(assert (= (and d!2262336 (not c!1353281)) b!7270244))

(assert (= (and b!7270244 c!1353280) b!7270250))

(assert (= (and b!7270244 (not c!1353280)) b!7270242))

(assert (= (and b!7270242 res!2947286) b!7270247))

(assert (= (and b!7270242 c!1353282) b!7270248))

(assert (= (and b!7270242 (not c!1353282)) b!7270241))

(assert (= (and b!7270241 c!1353279) b!7270240))

(assert (= (and b!7270241 (not c!1353279)) b!7270249))

(assert (= (and b!7270249 c!1353283) b!7270246))

(assert (= (and b!7270249 (not c!1353283)) b!7270243))

(assert (= (or b!7270240 b!7270246) bm!663008))

(assert (= (or b!7270240 b!7270246) bm!663006))

(assert (= (or b!7270248 bm!663008) bm!663005))

(assert (= (or b!7270248 bm!663006) bm!663007))

(assert (= (or b!7270250 b!7270248) bm!663009))

(assert (= (or b!7270250 bm!663007) bm!663004))

(declare-fun m!7955848 () Bool)

(assert (=> bm!663009 m!7955848))

(assert (=> b!7270247 m!7955700))

(declare-fun m!7955852 () Bool)

(assert (=> bm!663004 m!7955852))

(assert (=> b!7270245 m!7955610))

(declare-fun m!7955858 () Bool)

(assert (=> bm!663005 m!7955858))

(assert (=> b!7270076 d!2262336))

(declare-fun b!7270257 () Bool)

(declare-fun e!4359717 () Bool)

(declare-fun tp!2041019 () Bool)

(declare-fun tp!2041020 () Bool)

(assert (=> b!7270257 (= e!4359717 (and tp!2041019 tp!2041020))))

(assert (=> b!7270072 (= tp!2041005 e!4359717)))

(assert (= (and b!7270072 (is-Cons!70779 (exprs!8234 ct2!346))) b!7270257))

(declare-fun b!7270258 () Bool)

(declare-fun e!4359718 () Bool)

(declare-fun tp!2041021 () Bool)

(declare-fun tp!2041022 () Bool)

(assert (=> b!7270258 (= e!4359718 (and tp!2041021 tp!2041022))))

(assert (=> b!7270069 (= tp!2041004 e!4359718)))

(assert (= (and b!7270069 (is-Cons!70779 (exprs!8234 ct1!250))) b!7270258))

(declare-fun b!7270263 () Bool)

(declare-fun e!4359721 () Bool)

(declare-fun tp!2041025 () Bool)

(assert (=> b!7270263 (= e!4359721 (and tp_is_empty!47053 tp!2041025))))

(assert (=> b!7270075 (= tp!2041003 e!4359721)))

(assert (= (and b!7270075 (is-Cons!70780 (t!384974 s!7854))) b!7270263))

(declare-fun b_lambda!280199 () Bool)

(assert (= b_lambda!280189 (or b!7270080 b_lambda!280199)))

(declare-fun bs!1910960 () Bool)

(declare-fun d!2262340 () Bool)

(assert (= bs!1910960 (and d!2262340 b!7270080)))

(declare-fun validRegex!9583 (Regex!18794) Bool)

(assert (=> bs!1910960 (= (dynLambda!28926 lambda!448434 (h!77227 lt!2594448)) (validRegex!9583 (h!77227 lt!2594448)))))

(declare-fun m!7955866 () Bool)

(assert (=> bs!1910960 m!7955866))

(assert (=> b!7270128 d!2262340))

(declare-fun b_lambda!280201 () Bool)

(assert (= b_lambda!280195 (or b!7270080 b_lambda!280201)))

(declare-fun bs!1910961 () Bool)

(declare-fun d!2262342 () Bool)

(assert (= bs!1910961 (and d!2262342 b!7270080)))

(assert (=> bs!1910961 (= (dynLambda!28927 lambda!448435 lt!2594460) (derivationStepZipperUp!2564 lt!2594460 (h!77228 s!7854)))))

(assert (=> bs!1910961 m!7955578))

(assert (=> d!2262316 d!2262342))

(declare-fun b_lambda!280203 () Bool)

(assert (= b_lambda!280193 (or b!7270080 b_lambda!280203)))

(declare-fun bs!1910962 () Bool)

(declare-fun d!2262344 () Bool)

(assert (= bs!1910962 (and d!2262344 b!7270080)))

(assert (=> bs!1910962 (= (dynLambda!28927 lambda!448435 lt!2594436) (derivationStepZipperUp!2564 lt!2594436 (h!77228 s!7854)))))

(assert (=> bs!1910962 m!7955562))

(assert (=> d!2262296 d!2262344))

(declare-fun b_lambda!280205 () Bool)

(assert (= b_lambda!280197 (or b!7270080 b_lambda!280205)))

(declare-fun bs!1910964 () Bool)

(declare-fun d!2262346 () Bool)

(assert (= bs!1910964 (and d!2262346 b!7270080)))

(assert (=> bs!1910964 (= (dynLambda!28927 lambda!448435 ct1!250) (derivationStepZipperUp!2564 ct1!250 (h!77228 s!7854)))))

(assert (=> bs!1910964 m!7955584))

(assert (=> d!2262320 d!2262346))

(push 1)

(assert (not d!2262284))

(assert (not b!7270190))

(assert (not b!7270205))

(assert (not bm!663000))

(assert (not bm!662989))

(assert (not d!2262328))

(assert (not bm!662990))

(assert (not b!7270188))

(assert (not b!7270208))

(assert (not d!2262330))

(assert (not d!2262312))

(assert (not d!2262294))

(assert (not d!2262296))

(assert (not d!2262318))

(assert (not b!7270169))

(assert (not b!7270195))

(assert (not d!2262334))

(assert (not bs!1910960))

(assert (not b!7270129))

(assert (not bm!663003))

(assert (not b!7270247))

(assert (not b!7270203))

(assert (not d!2262322))

(assert (not bm!663001))

(assert (not b!7270238))

(assert tp_is_empty!47053)

(assert (not b!7270193))

(assert (not b!7270202))

(assert (not d!2262308))

(assert (not b_lambda!280199))

(assert (not b_lambda!280203))

(assert (not d!2262324))

(assert (not b!7270226))

(assert (not d!2262300))

(assert (not bm!663002))

(assert (not bs!1910962))

(assert (not d!2262304))

(assert (not b!7270206))

(assert (not b!7270213))

(assert (not b!7270225))

(assert (not d!2262316))

(assert (not bm!662994))

(assert (not b!7270231))

(assert (not bm!663005))

(assert (not d!2262274))

(assert (not b!7270204))

(assert (not d!2262310))

(assert (not b!7270257))

(assert (not b_lambda!280205))

(assert (not bs!1910961))

(assert (not bm!663009))

(assert (not b_lambda!280201))

(assert (not b!7270230))

(assert (not b!7270263))

(assert (not bs!1910964))

(assert (not bm!663004))

(assert (not b!7270237))

(assert (not d!2262292))

(assert (not b!7270211))

(assert (not d!2262326))

(assert (not b!7270258))

(assert (not d!2262320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

