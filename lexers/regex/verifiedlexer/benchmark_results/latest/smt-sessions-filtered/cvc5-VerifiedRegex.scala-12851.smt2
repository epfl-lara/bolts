; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!709972 () Bool)

(assert start!709972)

(declare-fun b!7273097 () Bool)

(assert (=> b!7273097 true))

(declare-fun b!7273092 () Bool)

(declare-fun res!2948251 () Bool)

(declare-fun e!4361402 () Bool)

(assert (=> b!7273092 (=> (not res!2948251) (not e!4361402))))

(declare-datatypes ((C!37894 0))(
  ( (C!37895 (val!28895 Int)) )
))
(declare-datatypes ((Regex!18810 0))(
  ( (ElementMatch!18810 (c!1354168 C!37894)) (Concat!27655 (regOne!38132 Regex!18810) (regTwo!38132 Regex!18810)) (EmptyExpr!18810) (Star!18810 (reg!19139 Regex!18810)) (EmptyLang!18810) (Union!18810 (regOne!38133 Regex!18810) (regTwo!38133 Regex!18810)) )
))
(declare-datatypes ((List!70935 0))(
  ( (Nil!70811) (Cons!70811 (h!77259 Regex!18810) (t!385007 List!70935)) )
))
(declare-datatypes ((Context!15500 0))(
  ( (Context!15501 (exprs!8250 List!70935)) )
))
(declare-fun ct1!250 () Context!15500)

(declare-fun nullableContext!300 (Context!15500) Bool)

(assert (=> b!7273092 (= res!2948251 (nullableContext!300 ct1!250))))

(declare-fun b!7273093 () Bool)

(declare-fun res!2948250 () Bool)

(assert (=> b!7273093 (=> (not res!2948250) (not e!4361402))))

(declare-datatypes ((List!70936 0))(
  ( (Nil!70812) (Cons!70812 (h!77260 C!37894) (t!385008 List!70936)) )
))
(declare-fun s!7854 () List!70936)

(assert (=> b!7273093 (= res!2948250 (is-Cons!70812 s!7854))))

(declare-fun b!7273094 () Bool)

(declare-fun e!4361400 () Bool)

(declare-fun e!4361405 () Bool)

(assert (=> b!7273094 (= e!4361400 e!4361405)))

(declare-fun res!2948248 () Bool)

(assert (=> b!7273094 (=> res!2948248 e!4361405)))

(declare-fun lambda!449172 () Int)

(declare-fun forall!17639 (List!70935 Int) Bool)

(assert (=> b!7273094 (= res!2948248 (not (forall!17639 (exprs!8250 ct1!250) lambda!449172)))))

(declare-fun b!7273095 () Bool)

(declare-fun e!4361401 () Bool)

(declare-fun tp!2041395 () Bool)

(assert (=> b!7273095 (= e!4361401 tp!2041395)))

(declare-fun b!7273096 () Bool)

(declare-fun ct2!346 () Context!15500)

(assert (=> b!7273096 (= e!4361405 (forall!17639 (exprs!8250 ct2!346) lambda!449172))))

(assert (=> b!7273097 (= e!4361402 (not e!4361400))))

(declare-fun res!2948247 () Bool)

(assert (=> b!7273097 (=> res!2948247 e!4361400)))

(declare-fun lt!2596054 () (Set Context!15500))

(declare-fun lt!2596051 () (Set Context!15500))

(declare-fun derivationStepZipper!3550 ((Set Context!15500) C!37894) (Set Context!15500))

(assert (=> b!7273097 (= res!2948247 (not (= lt!2596054 (derivationStepZipper!3550 lt!2596051 (h!77260 s!7854)))))))

(declare-datatypes ((Unit!164238 0))(
  ( (Unit!164239) )
))
(declare-fun lt!2596057 () Unit!164238)

(declare-fun lemmaConcatPreservesForall!1567 (List!70935 List!70935 Int) Unit!164238)

(assert (=> b!7273097 (= lt!2596057 (lemmaConcatPreservesForall!1567 (exprs!8250 ct1!250) (exprs!8250 ct2!346) lambda!449172))))

(declare-fun lambda!449173 () Int)

(declare-fun lt!2596056 () Context!15500)

(declare-fun flatMap!2923 ((Set Context!15500) Int) (Set Context!15500))

(declare-fun derivationStepZipperUp!2580 (Context!15500 C!37894) (Set Context!15500))

(assert (=> b!7273097 (= (flatMap!2923 lt!2596051 lambda!449173) (derivationStepZipperUp!2580 lt!2596056 (h!77260 s!7854)))))

(declare-fun lt!2596049 () Unit!164238)

(declare-fun lemmaFlatMapOnSingletonSet!2323 ((Set Context!15500) Context!15500 Int) Unit!164238)

(assert (=> b!7273097 (= lt!2596049 (lemmaFlatMapOnSingletonSet!2323 lt!2596051 lt!2596056 lambda!449173))))

(assert (=> b!7273097 (= lt!2596051 (set.insert lt!2596056 (as set.empty (Set Context!15500))))))

(declare-fun lt!2596055 () Unit!164238)

(assert (=> b!7273097 (= lt!2596055 (lemmaConcatPreservesForall!1567 (exprs!8250 ct1!250) (exprs!8250 ct2!346) lambda!449172))))

(declare-fun lt!2596053 () Unit!164238)

(assert (=> b!7273097 (= lt!2596053 (lemmaConcatPreservesForall!1567 (exprs!8250 ct1!250) (exprs!8250 ct2!346) lambda!449172))))

(declare-fun lt!2596050 () (Set Context!15500))

(assert (=> b!7273097 (= (flatMap!2923 lt!2596050 lambda!449173) (derivationStepZipperUp!2580 ct1!250 (h!77260 s!7854)))))

(declare-fun lt!2596048 () Unit!164238)

(assert (=> b!7273097 (= lt!2596048 (lemmaFlatMapOnSingletonSet!2323 lt!2596050 ct1!250 lambda!449173))))

(assert (=> b!7273097 (= lt!2596050 (set.insert ct1!250 (as set.empty (Set Context!15500))))))

(assert (=> b!7273097 (= lt!2596054 (derivationStepZipperUp!2580 lt!2596056 (h!77260 s!7854)))))

(declare-fun ++!16710 (List!70935 List!70935) List!70935)

(assert (=> b!7273097 (= lt!2596056 (Context!15501 (++!16710 (exprs!8250 ct1!250) (exprs!8250 ct2!346))))))

(declare-fun lt!2596052 () Unit!164238)

(assert (=> b!7273097 (= lt!2596052 (lemmaConcatPreservesForall!1567 (exprs!8250 ct1!250) (exprs!8250 ct2!346) lambda!449172))))

(declare-fun b!7273098 () Bool)

(declare-fun res!2948246 () Bool)

(assert (=> b!7273098 (=> res!2948246 e!4361400)))

(assert (=> b!7273098 (= res!2948246 (is-Cons!70811 (exprs!8250 ct1!250)))))

(declare-fun res!2948249 () Bool)

(assert (=> start!709972 (=> (not res!2948249) (not e!4361402))))

(declare-fun matchZipper!3714 ((Set Context!15500) List!70936) Bool)

(assert (=> start!709972 (= res!2948249 (matchZipper!3714 (set.insert ct2!346 (as set.empty (Set Context!15500))) s!7854))))

(assert (=> start!709972 e!4361402))

(declare-fun inv!90036 (Context!15500) Bool)

(assert (=> start!709972 (and (inv!90036 ct2!346) e!4361401)))

(declare-fun e!4361404 () Bool)

(assert (=> start!709972 e!4361404))

(declare-fun e!4361403 () Bool)

(assert (=> start!709972 (and (inv!90036 ct1!250) e!4361403)))

(declare-fun b!7273099 () Bool)

(declare-fun tp!2041394 () Bool)

(assert (=> b!7273099 (= e!4361403 tp!2041394)))

(declare-fun b!7273100 () Bool)

(declare-fun tp_is_empty!47085 () Bool)

(declare-fun tp!2041393 () Bool)

(assert (=> b!7273100 (= e!4361404 (and tp_is_empty!47085 tp!2041393))))

(assert (= (and start!709972 res!2948249) b!7273092))

(assert (= (and b!7273092 res!2948251) b!7273093))

(assert (= (and b!7273093 res!2948250) b!7273097))

(assert (= (and b!7273097 (not res!2948247)) b!7273098))

(assert (= (and b!7273098 (not res!2948246)) b!7273094))

(assert (= (and b!7273094 (not res!2948248)) b!7273096))

(assert (= start!709972 b!7273095))

(assert (= (and start!709972 (is-Cons!70812 s!7854)) b!7273100))

(assert (= start!709972 b!7273099))

(declare-fun m!7959518 () Bool)

(assert (=> b!7273094 m!7959518))

(declare-fun m!7959520 () Bool)

(assert (=> b!7273092 m!7959520))

(declare-fun m!7959522 () Bool)

(assert (=> b!7273097 m!7959522))

(declare-fun m!7959524 () Bool)

(assert (=> b!7273097 m!7959524))

(assert (=> b!7273097 m!7959522))

(declare-fun m!7959526 () Bool)

(assert (=> b!7273097 m!7959526))

(declare-fun m!7959528 () Bool)

(assert (=> b!7273097 m!7959528))

(declare-fun m!7959530 () Bool)

(assert (=> b!7273097 m!7959530))

(assert (=> b!7273097 m!7959522))

(declare-fun m!7959532 () Bool)

(assert (=> b!7273097 m!7959532))

(declare-fun m!7959534 () Bool)

(assert (=> b!7273097 m!7959534))

(declare-fun m!7959536 () Bool)

(assert (=> b!7273097 m!7959536))

(declare-fun m!7959538 () Bool)

(assert (=> b!7273097 m!7959538))

(assert (=> b!7273097 m!7959522))

(declare-fun m!7959540 () Bool)

(assert (=> b!7273097 m!7959540))

(declare-fun m!7959542 () Bool)

(assert (=> b!7273097 m!7959542))

(declare-fun m!7959544 () Bool)

(assert (=> start!709972 m!7959544))

(assert (=> start!709972 m!7959544))

(declare-fun m!7959546 () Bool)

(assert (=> start!709972 m!7959546))

(declare-fun m!7959548 () Bool)

(assert (=> start!709972 m!7959548))

(declare-fun m!7959550 () Bool)

(assert (=> start!709972 m!7959550))

(declare-fun m!7959552 () Bool)

(assert (=> b!7273096 m!7959552))

(push 1)

(assert (not b!7273092))

(assert (not b!7273096))

(assert tp_is_empty!47085)

(assert (not b!7273099))

(assert (not b!7273094))

(assert (not b!7273095))

(assert (not start!709972))

(assert (not b!7273100))

(assert (not b!7273097))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2263616 () Bool)

(declare-fun res!2948274 () Bool)

(declare-fun e!4361428 () Bool)

(assert (=> d!2263616 (=> res!2948274 e!4361428)))

(assert (=> d!2263616 (= res!2948274 (is-Nil!70811 (exprs!8250 ct1!250)))))

(assert (=> d!2263616 (= (forall!17639 (exprs!8250 ct1!250) lambda!449172) e!4361428)))

(declare-fun b!7273136 () Bool)

(declare-fun e!4361429 () Bool)

(assert (=> b!7273136 (= e!4361428 e!4361429)))

(declare-fun res!2948275 () Bool)

(assert (=> b!7273136 (=> (not res!2948275) (not e!4361429))))

(declare-fun dynLambda!28951 (Int Regex!18810) Bool)

(assert (=> b!7273136 (= res!2948275 (dynLambda!28951 lambda!449172 (h!77259 (exprs!8250 ct1!250))))))

(declare-fun b!7273137 () Bool)

(assert (=> b!7273137 (= e!4361429 (forall!17639 (t!385007 (exprs!8250 ct1!250)) lambda!449172))))

(assert (= (and d!2263616 (not res!2948274)) b!7273136))

(assert (= (and b!7273136 res!2948275) b!7273137))

(declare-fun b_lambda!280533 () Bool)

(assert (=> (not b_lambda!280533) (not b!7273136)))

(declare-fun m!7959590 () Bool)

(assert (=> b!7273136 m!7959590))

(declare-fun m!7959592 () Bool)

(assert (=> b!7273137 m!7959592))

(assert (=> b!7273094 d!2263616))

(declare-fun bs!1911476 () Bool)

(declare-fun d!2263618 () Bool)

(assert (= bs!1911476 (and d!2263618 b!7273097)))

(declare-fun lambda!449192 () Int)

(assert (=> bs!1911476 (not (= lambda!449192 lambda!449172))))

(assert (=> d!2263618 (= (nullableContext!300 ct1!250) (forall!17639 (exprs!8250 ct1!250) lambda!449192))))

(declare-fun bs!1911477 () Bool)

(assert (= bs!1911477 d!2263618))

(declare-fun m!7959594 () Bool)

(assert (=> bs!1911477 m!7959594))

(assert (=> b!7273092 d!2263618))

(declare-fun d!2263620 () Bool)

(declare-fun c!1354177 () Bool)

(declare-fun isEmpty!40732 (List!70936) Bool)

(assert (=> d!2263620 (= c!1354177 (isEmpty!40732 s!7854))))

(declare-fun e!4361432 () Bool)

(assert (=> d!2263620 (= (matchZipper!3714 (set.insert ct2!346 (as set.empty (Set Context!15500))) s!7854) e!4361432)))

(declare-fun b!7273142 () Bool)

(declare-fun nullableZipper!3014 ((Set Context!15500)) Bool)

(assert (=> b!7273142 (= e!4361432 (nullableZipper!3014 (set.insert ct2!346 (as set.empty (Set Context!15500)))))))

(declare-fun b!7273143 () Bool)

(declare-fun head!15012 (List!70936) C!37894)

(declare-fun tail!14519 (List!70936) List!70936)

(assert (=> b!7273143 (= e!4361432 (matchZipper!3714 (derivationStepZipper!3550 (set.insert ct2!346 (as set.empty (Set Context!15500))) (head!15012 s!7854)) (tail!14519 s!7854)))))

(assert (= (and d!2263620 c!1354177) b!7273142))

(assert (= (and d!2263620 (not c!1354177)) b!7273143))

(declare-fun m!7959596 () Bool)

(assert (=> d!2263620 m!7959596))

(assert (=> b!7273142 m!7959544))

(declare-fun m!7959598 () Bool)

(assert (=> b!7273142 m!7959598))

(declare-fun m!7959600 () Bool)

(assert (=> b!7273143 m!7959600))

(assert (=> b!7273143 m!7959544))

(assert (=> b!7273143 m!7959600))

(declare-fun m!7959602 () Bool)

(assert (=> b!7273143 m!7959602))

(declare-fun m!7959604 () Bool)

(assert (=> b!7273143 m!7959604))

(assert (=> b!7273143 m!7959602))

(assert (=> b!7273143 m!7959604))

(declare-fun m!7959606 () Bool)

(assert (=> b!7273143 m!7959606))

(assert (=> start!709972 d!2263620))

(declare-fun bs!1911478 () Bool)

(declare-fun d!2263622 () Bool)

(assert (= bs!1911478 (and d!2263622 b!7273097)))

(declare-fun lambda!449195 () Int)

(assert (=> bs!1911478 (= lambda!449195 lambda!449172)))

(declare-fun bs!1911479 () Bool)

(assert (= bs!1911479 (and d!2263622 d!2263618)))

(assert (=> bs!1911479 (not (= lambda!449195 lambda!449192))))

(assert (=> d!2263622 (= (inv!90036 ct2!346) (forall!17639 (exprs!8250 ct2!346) lambda!449195))))

(declare-fun bs!1911480 () Bool)

(assert (= bs!1911480 d!2263622))

(declare-fun m!7959608 () Bool)

(assert (=> bs!1911480 m!7959608))

(assert (=> start!709972 d!2263622))

(declare-fun bs!1911481 () Bool)

(declare-fun d!2263624 () Bool)

(assert (= bs!1911481 (and d!2263624 b!7273097)))

(declare-fun lambda!449196 () Int)

(assert (=> bs!1911481 (= lambda!449196 lambda!449172)))

(declare-fun bs!1911482 () Bool)

(assert (= bs!1911482 (and d!2263624 d!2263618)))

(assert (=> bs!1911482 (not (= lambda!449196 lambda!449192))))

(declare-fun bs!1911483 () Bool)

(assert (= bs!1911483 (and d!2263624 d!2263622)))

(assert (=> bs!1911483 (= lambda!449196 lambda!449195)))

(assert (=> d!2263624 (= (inv!90036 ct1!250) (forall!17639 (exprs!8250 ct1!250) lambda!449196))))

(declare-fun bs!1911484 () Bool)

(assert (= bs!1911484 d!2263624))

(declare-fun m!7959610 () Bool)

(assert (=> bs!1911484 m!7959610))

(assert (=> start!709972 d!2263624))

(declare-fun b!7273154 () Bool)

(declare-fun e!4361439 () (Set Context!15500))

(assert (=> b!7273154 (= e!4361439 (as set.empty (Set Context!15500)))))

(declare-fun b!7273155 () Bool)

(declare-fun e!4361441 () (Set Context!15500))

(assert (=> b!7273155 (= e!4361441 e!4361439)))

(declare-fun c!1354183 () Bool)

(assert (=> b!7273155 (= c!1354183 (is-Cons!70811 (exprs!8250 ct1!250)))))

(declare-fun bm!663553 () Bool)

(declare-fun call!663558 () (Set Context!15500))

(declare-fun derivationStepZipperDown!2743 (Regex!18810 Context!15500 C!37894) (Set Context!15500))

(assert (=> bm!663553 (= call!663558 (derivationStepZipperDown!2743 (h!77259 (exprs!8250 ct1!250)) (Context!15501 (t!385007 (exprs!8250 ct1!250))) (h!77260 s!7854)))))

(declare-fun b!7273156 () Bool)

(declare-fun e!4361440 () Bool)

(declare-fun nullable!8009 (Regex!18810) Bool)

(assert (=> b!7273156 (= e!4361440 (nullable!8009 (h!77259 (exprs!8250 ct1!250))))))

(declare-fun b!7273157 () Bool)

(assert (=> b!7273157 (= e!4361441 (set.union call!663558 (derivationStepZipperUp!2580 (Context!15501 (t!385007 (exprs!8250 ct1!250))) (h!77260 s!7854))))))

(declare-fun d!2263626 () Bool)

(declare-fun c!1354182 () Bool)

(assert (=> d!2263626 (= c!1354182 e!4361440)))

(declare-fun res!2948278 () Bool)

(assert (=> d!2263626 (=> (not res!2948278) (not e!4361440))))

(assert (=> d!2263626 (= res!2948278 (is-Cons!70811 (exprs!8250 ct1!250)))))

(assert (=> d!2263626 (= (derivationStepZipperUp!2580 ct1!250 (h!77260 s!7854)) e!4361441)))

(declare-fun b!7273158 () Bool)

(assert (=> b!7273158 (= e!4361439 call!663558)))

(assert (= (and d!2263626 res!2948278) b!7273156))

(assert (= (and d!2263626 c!1354182) b!7273157))

(assert (= (and d!2263626 (not c!1354182)) b!7273155))

(assert (= (and b!7273155 c!1354183) b!7273158))

(assert (= (and b!7273155 (not c!1354183)) b!7273154))

(assert (= (or b!7273157 b!7273158) bm!663553))

(declare-fun m!7959612 () Bool)

(assert (=> bm!663553 m!7959612))

(declare-fun m!7959614 () Bool)

(assert (=> b!7273156 m!7959614))

(declare-fun m!7959616 () Bool)

(assert (=> b!7273157 m!7959616))

(assert (=> b!7273097 d!2263626))

(declare-fun d!2263628 () Bool)

(declare-fun choose!56440 ((Set Context!15500) Int) (Set Context!15500))

(assert (=> d!2263628 (= (flatMap!2923 lt!2596051 lambda!449173) (choose!56440 lt!2596051 lambda!449173))))

(declare-fun bs!1911485 () Bool)

(assert (= bs!1911485 d!2263628))

(declare-fun m!7959618 () Bool)

(assert (=> bs!1911485 m!7959618))

(assert (=> b!7273097 d!2263628))

(declare-fun d!2263630 () Bool)

(declare-fun dynLambda!28952 (Int Context!15500) (Set Context!15500))

(assert (=> d!2263630 (= (flatMap!2923 lt!2596050 lambda!449173) (dynLambda!28952 lambda!449173 ct1!250))))

(declare-fun lt!2596090 () Unit!164238)

(declare-fun choose!56441 ((Set Context!15500) Context!15500 Int) Unit!164238)

(assert (=> d!2263630 (= lt!2596090 (choose!56441 lt!2596050 ct1!250 lambda!449173))))

(assert (=> d!2263630 (= lt!2596050 (set.insert ct1!250 (as set.empty (Set Context!15500))))))

(assert (=> d!2263630 (= (lemmaFlatMapOnSingletonSet!2323 lt!2596050 ct1!250 lambda!449173) lt!2596090)))

(declare-fun b_lambda!280535 () Bool)

(assert (=> (not b_lambda!280535) (not d!2263630)))

(declare-fun bs!1911486 () Bool)

(assert (= bs!1911486 d!2263630))

(assert (=> bs!1911486 m!7959542))

(declare-fun m!7959620 () Bool)

(assert (=> bs!1911486 m!7959620))

(declare-fun m!7959622 () Bool)

(assert (=> bs!1911486 m!7959622))

(assert (=> bs!1911486 m!7959536))

(assert (=> b!7273097 d!2263630))

(declare-fun d!2263632 () Bool)

(assert (=> d!2263632 (forall!17639 (++!16710 (exprs!8250 ct1!250) (exprs!8250 ct2!346)) lambda!449172)))

(declare-fun lt!2596093 () Unit!164238)

(declare-fun choose!56442 (List!70935 List!70935 Int) Unit!164238)

(assert (=> d!2263632 (= lt!2596093 (choose!56442 (exprs!8250 ct1!250) (exprs!8250 ct2!346) lambda!449172))))

(assert (=> d!2263632 (forall!17639 (exprs!8250 ct1!250) lambda!449172)))

(assert (=> d!2263632 (= (lemmaConcatPreservesForall!1567 (exprs!8250 ct1!250) (exprs!8250 ct2!346) lambda!449172) lt!2596093)))

(declare-fun bs!1911487 () Bool)

(assert (= bs!1911487 d!2263632))

(assert (=> bs!1911487 m!7959538))

(assert (=> bs!1911487 m!7959538))

(declare-fun m!7959624 () Bool)

(assert (=> bs!1911487 m!7959624))

(declare-fun m!7959626 () Bool)

(assert (=> bs!1911487 m!7959626))

(assert (=> bs!1911487 m!7959518))

(assert (=> b!7273097 d!2263632))

(declare-fun b!7273159 () Bool)

(declare-fun e!4361442 () (Set Context!15500))

(assert (=> b!7273159 (= e!4361442 (as set.empty (Set Context!15500)))))

(declare-fun b!7273160 () Bool)

(declare-fun e!4361444 () (Set Context!15500))

(assert (=> b!7273160 (= e!4361444 e!4361442)))

(declare-fun c!1354185 () Bool)

(assert (=> b!7273160 (= c!1354185 (is-Cons!70811 (exprs!8250 lt!2596056)))))

(declare-fun bm!663554 () Bool)

(declare-fun call!663559 () (Set Context!15500))

(assert (=> bm!663554 (= call!663559 (derivationStepZipperDown!2743 (h!77259 (exprs!8250 lt!2596056)) (Context!15501 (t!385007 (exprs!8250 lt!2596056))) (h!77260 s!7854)))))

(declare-fun b!7273161 () Bool)

(declare-fun e!4361443 () Bool)

(assert (=> b!7273161 (= e!4361443 (nullable!8009 (h!77259 (exprs!8250 lt!2596056))))))

(declare-fun b!7273162 () Bool)

(assert (=> b!7273162 (= e!4361444 (set.union call!663559 (derivationStepZipperUp!2580 (Context!15501 (t!385007 (exprs!8250 lt!2596056))) (h!77260 s!7854))))))

(declare-fun d!2263636 () Bool)

(declare-fun c!1354184 () Bool)

(assert (=> d!2263636 (= c!1354184 e!4361443)))

(declare-fun res!2948279 () Bool)

(assert (=> d!2263636 (=> (not res!2948279) (not e!4361443))))

(assert (=> d!2263636 (= res!2948279 (is-Cons!70811 (exprs!8250 lt!2596056)))))

(assert (=> d!2263636 (= (derivationStepZipperUp!2580 lt!2596056 (h!77260 s!7854)) e!4361444)))

(declare-fun b!7273163 () Bool)

(assert (=> b!7273163 (= e!4361442 call!663559)))

(assert (= (and d!2263636 res!2948279) b!7273161))

(assert (= (and d!2263636 c!1354184) b!7273162))

(assert (= (and d!2263636 (not c!1354184)) b!7273160))

(assert (= (and b!7273160 c!1354185) b!7273163))

(assert (= (and b!7273160 (not c!1354185)) b!7273159))

(assert (= (or b!7273162 b!7273163) bm!663554))

(declare-fun m!7959628 () Bool)

(assert (=> bm!663554 m!7959628))

(declare-fun m!7959630 () Bool)

(assert (=> b!7273161 m!7959630))

(declare-fun m!7959632 () Bool)

(assert (=> b!7273162 m!7959632))

(assert (=> b!7273097 d!2263636))

(declare-fun d!2263638 () Bool)

(assert (=> d!2263638 (= (flatMap!2923 lt!2596050 lambda!449173) (choose!56440 lt!2596050 lambda!449173))))

(declare-fun bs!1911488 () Bool)

(assert (= bs!1911488 d!2263638))

(declare-fun m!7959634 () Bool)

(assert (=> bs!1911488 m!7959634))

(assert (=> b!7273097 d!2263638))

(declare-fun bs!1911489 () Bool)

(declare-fun d!2263640 () Bool)

(assert (= bs!1911489 (and d!2263640 b!7273097)))

(declare-fun lambda!449199 () Int)

(assert (=> bs!1911489 (= lambda!449199 lambda!449173)))

(assert (=> d!2263640 true))

(assert (=> d!2263640 (= (derivationStepZipper!3550 lt!2596051 (h!77260 s!7854)) (flatMap!2923 lt!2596051 lambda!449199))))

(declare-fun bs!1911490 () Bool)

(assert (= bs!1911490 d!2263640))

(declare-fun m!7959636 () Bool)

(assert (=> bs!1911490 m!7959636))

(assert (=> b!7273097 d!2263640))

(declare-fun d!2263642 () Bool)

(assert (=> d!2263642 (= (flatMap!2923 lt!2596051 lambda!449173) (dynLambda!28952 lambda!449173 lt!2596056))))

(declare-fun lt!2596094 () Unit!164238)

(assert (=> d!2263642 (= lt!2596094 (choose!56441 lt!2596051 lt!2596056 lambda!449173))))

(assert (=> d!2263642 (= lt!2596051 (set.insert lt!2596056 (as set.empty (Set Context!15500))))))

(assert (=> d!2263642 (= (lemmaFlatMapOnSingletonSet!2323 lt!2596051 lt!2596056 lambda!449173) lt!2596094)))

(declare-fun b_lambda!280537 () Bool)

(assert (=> (not b_lambda!280537) (not d!2263642)))

(declare-fun bs!1911491 () Bool)

(assert (= bs!1911491 d!2263642))

(assert (=> bs!1911491 m!7959532))

(declare-fun m!7959638 () Bool)

(assert (=> bs!1911491 m!7959638))

(declare-fun m!7959640 () Bool)

(assert (=> bs!1911491 m!7959640))

(assert (=> bs!1911491 m!7959534))

(assert (=> b!7273097 d!2263642))

(declare-fun b!7273178 () Bool)

(declare-fun e!4361451 () List!70935)

(assert (=> b!7273178 (= e!4361451 (exprs!8250 ct2!346))))

(declare-fun b!7273180 () Bool)

(declare-fun res!2948284 () Bool)

(declare-fun e!4361452 () Bool)

(assert (=> b!7273180 (=> (not res!2948284) (not e!4361452))))

(declare-fun lt!2596097 () List!70935)

(declare-fun size!41832 (List!70935) Int)

(assert (=> b!7273180 (= res!2948284 (= (size!41832 lt!2596097) (+ (size!41832 (exprs!8250 ct1!250)) (size!41832 (exprs!8250 ct2!346)))))))

(declare-fun b!7273181 () Bool)

(assert (=> b!7273181 (= e!4361452 (or (not (= (exprs!8250 ct2!346) Nil!70811)) (= lt!2596097 (exprs!8250 ct1!250))))))

(declare-fun d!2263644 () Bool)

(assert (=> d!2263644 e!4361452))

(declare-fun res!2948285 () Bool)

(assert (=> d!2263644 (=> (not res!2948285) (not e!4361452))))

(declare-fun content!14784 (List!70935) (Set Regex!18810))

(assert (=> d!2263644 (= res!2948285 (= (content!14784 lt!2596097) (set.union (content!14784 (exprs!8250 ct1!250)) (content!14784 (exprs!8250 ct2!346)))))))

(assert (=> d!2263644 (= lt!2596097 e!4361451)))

(declare-fun c!1354192 () Bool)

(assert (=> d!2263644 (= c!1354192 (is-Nil!70811 (exprs!8250 ct1!250)))))

(assert (=> d!2263644 (= (++!16710 (exprs!8250 ct1!250) (exprs!8250 ct2!346)) lt!2596097)))

(declare-fun b!7273179 () Bool)

(assert (=> b!7273179 (= e!4361451 (Cons!70811 (h!77259 (exprs!8250 ct1!250)) (++!16710 (t!385007 (exprs!8250 ct1!250)) (exprs!8250 ct2!346))))))

(assert (= (and d!2263644 c!1354192) b!7273178))

(assert (= (and d!2263644 (not c!1354192)) b!7273179))

(assert (= (and d!2263644 res!2948285) b!7273180))

(assert (= (and b!7273180 res!2948284) b!7273181))

(declare-fun m!7959642 () Bool)

(assert (=> b!7273180 m!7959642))

(declare-fun m!7959644 () Bool)

(assert (=> b!7273180 m!7959644))

(declare-fun m!7959646 () Bool)

(assert (=> b!7273180 m!7959646))

(declare-fun m!7959648 () Bool)

(assert (=> d!2263644 m!7959648))

(declare-fun m!7959650 () Bool)

(assert (=> d!2263644 m!7959650))

(declare-fun m!7959652 () Bool)

(assert (=> d!2263644 m!7959652))

(declare-fun m!7959654 () Bool)

(assert (=> b!7273179 m!7959654))

(assert (=> b!7273097 d!2263644))

(declare-fun d!2263646 () Bool)

(declare-fun res!2948286 () Bool)

(declare-fun e!4361453 () Bool)

(assert (=> d!2263646 (=> res!2948286 e!4361453)))

(assert (=> d!2263646 (= res!2948286 (is-Nil!70811 (exprs!8250 ct2!346)))))

(assert (=> d!2263646 (= (forall!17639 (exprs!8250 ct2!346) lambda!449172) e!4361453)))

(declare-fun b!7273182 () Bool)

(declare-fun e!4361454 () Bool)

(assert (=> b!7273182 (= e!4361453 e!4361454)))

(declare-fun res!2948287 () Bool)

(assert (=> b!7273182 (=> (not res!2948287) (not e!4361454))))

(assert (=> b!7273182 (= res!2948287 (dynLambda!28951 lambda!449172 (h!77259 (exprs!8250 ct2!346))))))

(declare-fun b!7273183 () Bool)

(assert (=> b!7273183 (= e!4361454 (forall!17639 (t!385007 (exprs!8250 ct2!346)) lambda!449172))))

(assert (= (and d!2263646 (not res!2948286)) b!7273182))

(assert (= (and b!7273182 res!2948287) b!7273183))

(declare-fun b_lambda!280539 () Bool)

(assert (=> (not b_lambda!280539) (not b!7273182)))

(declare-fun m!7959656 () Bool)

(assert (=> b!7273182 m!7959656))

(declare-fun m!7959658 () Bool)

(assert (=> b!7273183 m!7959658))

(assert (=> b!7273096 d!2263646))

(declare-fun b!7273188 () Bool)

(declare-fun e!4361457 () Bool)

(declare-fun tp!2041407 () Bool)

(assert (=> b!7273188 (= e!4361457 (and tp_is_empty!47085 tp!2041407))))

(assert (=> b!7273100 (= tp!2041393 e!4361457)))

(assert (= (and b!7273100 (is-Cons!70812 (t!385008 s!7854))) b!7273188))

(declare-fun b!7273195 () Bool)

(declare-fun e!4361461 () Bool)

(declare-fun tp!2041412 () Bool)

(declare-fun tp!2041413 () Bool)

(assert (=> b!7273195 (= e!4361461 (and tp!2041412 tp!2041413))))

(assert (=> b!7273095 (= tp!2041395 e!4361461)))

(assert (= (and b!7273095 (is-Cons!70811 (exprs!8250 ct2!346))) b!7273195))

(declare-fun b!7273196 () Bool)

(declare-fun e!4361462 () Bool)

(declare-fun tp!2041414 () Bool)

(declare-fun tp!2041415 () Bool)

(assert (=> b!7273196 (= e!4361462 (and tp!2041414 tp!2041415))))

(assert (=> b!7273099 (= tp!2041394 e!4361462)))

(assert (= (and b!7273099 (is-Cons!70811 (exprs!8250 ct1!250))) b!7273196))

(declare-fun b_lambda!280541 () Bool)

(assert (= b_lambda!280537 (or b!7273097 b_lambda!280541)))

(declare-fun bs!1911492 () Bool)

(declare-fun d!2263648 () Bool)

(assert (= bs!1911492 (and d!2263648 b!7273097)))

(assert (=> bs!1911492 (= (dynLambda!28952 lambda!449173 lt!2596056) (derivationStepZipperUp!2580 lt!2596056 (h!77260 s!7854)))))

(assert (=> bs!1911492 m!7959526))

(assert (=> d!2263642 d!2263648))

(declare-fun b_lambda!280543 () Bool)

(assert (= b_lambda!280535 (or b!7273097 b_lambda!280543)))

(declare-fun bs!1911493 () Bool)

(declare-fun d!2263650 () Bool)

(assert (= bs!1911493 (and d!2263650 b!7273097)))

(assert (=> bs!1911493 (= (dynLambda!28952 lambda!449173 ct1!250) (derivationStepZipperUp!2580 ct1!250 (h!77260 s!7854)))))

(assert (=> bs!1911493 m!7959530))

(assert (=> d!2263630 d!2263650))

(declare-fun b_lambda!280545 () Bool)

(assert (= b_lambda!280539 (or b!7273097 b_lambda!280545)))

(declare-fun bs!1911494 () Bool)

(declare-fun d!2263652 () Bool)

(assert (= bs!1911494 (and d!2263652 b!7273097)))

(declare-fun validRegex!9592 (Regex!18810) Bool)

(assert (=> bs!1911494 (= (dynLambda!28951 lambda!449172 (h!77259 (exprs!8250 ct2!346))) (validRegex!9592 (h!77259 (exprs!8250 ct2!346))))))

(declare-fun m!7959662 () Bool)

(assert (=> bs!1911494 m!7959662))

(assert (=> b!7273182 d!2263652))

(declare-fun b_lambda!280547 () Bool)

(assert (= b_lambda!280533 (or b!7273097 b_lambda!280547)))

(declare-fun bs!1911495 () Bool)

(declare-fun d!2263654 () Bool)

(assert (= bs!1911495 (and d!2263654 b!7273097)))

(assert (=> bs!1911495 (= (dynLambda!28951 lambda!449172 (h!77259 (exprs!8250 ct1!250))) (validRegex!9592 (h!77259 (exprs!8250 ct1!250))))))

(declare-fun m!7959665 () Bool)

(assert (=> bs!1911495 m!7959665))

(assert (=> b!7273136 d!2263654))

(push 1)

(assert (not b!7273156))

(assert (not b!7273157))

(assert (not d!2263630))

(assert (not b!7273180))

(assert (not bm!663553))

(assert (not d!2263640))

(assert (not b!7273195))

(assert (not bs!1911495))

(assert (not b!7273179))

(assert (not b!7273162))

(assert (not d!2263644))

(assert (not b!7273196))

(assert (not bs!1911494))

(assert (not d!2263642))

(assert (not bm!663554))

(assert (not d!2263624))

(assert (not d!2263628))

(assert (not b_lambda!280541))

(assert tp_is_empty!47085)

(assert (not d!2263622))

(assert (not d!2263632))

(assert (not b!7273188))

(assert (not b_lambda!280543))

(assert (not d!2263638))

(assert (not b_lambda!280547))

(assert (not b_lambda!280545))

(assert (not bs!1911493))

(assert (not d!2263618))

(assert (not b!7273161))

(assert (not d!2263620))

(assert (not b!7273137))

(assert (not b!7273143))

(assert (not b!7273142))

(assert (not b!7273183))

(assert (not bs!1911492))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

