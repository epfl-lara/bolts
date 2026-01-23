; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!710060 () Bool)

(assert start!710060)

(declare-fun b!7273446 () Bool)

(assert (=> b!7273446 true))

(declare-fun e!4361617 () Bool)

(declare-fun e!4361621 () Bool)

(assert (=> b!7273446 (= e!4361617 (not e!4361621))))

(declare-fun res!2948391 () Bool)

(assert (=> b!7273446 (=> res!2948391 e!4361621)))

(declare-datatypes ((C!37902 0))(
  ( (C!37903 (val!28899 Int)) )
))
(declare-datatypes ((List!70943 0))(
  ( (Nil!70819) (Cons!70819 (h!77267 C!37902) (t!385015 List!70943)) )
))
(declare-fun s!7854 () List!70943)

(declare-datatypes ((Regex!18814 0))(
  ( (ElementMatch!18814 (c!1354258 C!37902)) (Concat!27659 (regOne!38140 Regex!18814) (regTwo!38140 Regex!18814)) (EmptyExpr!18814) (Star!18814 (reg!19143 Regex!18814)) (EmptyLang!18814) (Union!18814 (regOne!38141 Regex!18814) (regTwo!38141 Regex!18814)) )
))
(declare-datatypes ((List!70944 0))(
  ( (Nil!70820) (Cons!70820 (h!77268 Regex!18814) (t!385016 List!70944)) )
))
(declare-datatypes ((Context!15508 0))(
  ( (Context!15509 (exprs!8254 List!70944)) )
))
(declare-fun lt!2596226 () (Set Context!15508))

(declare-fun lt!2596220 () (Set Context!15508))

(declare-fun derivationStepZipper!3554 ((Set Context!15508) C!37902) (Set Context!15508))

(assert (=> b!7273446 (= res!2948391 (not (= lt!2596220 (derivationStepZipper!3554 lt!2596226 (h!77267 s!7854)))))))

(declare-fun lambda!449282 () Int)

(declare-fun ct1!250 () Context!15508)

(declare-datatypes ((Unit!164246 0))(
  ( (Unit!164247) )
))
(declare-fun lt!2596225 () Unit!164246)

(declare-fun ct2!346 () Context!15508)

(declare-fun lemmaConcatPreservesForall!1571 (List!70944 List!70944 Int) Unit!164246)

(assert (=> b!7273446 (= lt!2596225 (lemmaConcatPreservesForall!1571 (exprs!8254 ct1!250) (exprs!8254 ct2!346) lambda!449282))))

(declare-fun lambda!449283 () Int)

(declare-fun lt!2596224 () Context!15508)

(declare-fun flatMap!2927 ((Set Context!15508) Int) (Set Context!15508))

(declare-fun derivationStepZipperUp!2584 (Context!15508 C!37902) (Set Context!15508))

(assert (=> b!7273446 (= (flatMap!2927 lt!2596226 lambda!449283) (derivationStepZipperUp!2584 lt!2596224 (h!77267 s!7854)))))

(declare-fun lt!2596218 () Unit!164246)

(declare-fun lemmaFlatMapOnSingletonSet!2327 ((Set Context!15508) Context!15508 Int) Unit!164246)

(assert (=> b!7273446 (= lt!2596218 (lemmaFlatMapOnSingletonSet!2327 lt!2596226 lt!2596224 lambda!449283))))

(assert (=> b!7273446 (= lt!2596226 (set.insert lt!2596224 (as set.empty (Set Context!15508))))))

(declare-fun lt!2596217 () Unit!164246)

(assert (=> b!7273446 (= lt!2596217 (lemmaConcatPreservesForall!1571 (exprs!8254 ct1!250) (exprs!8254 ct2!346) lambda!449282))))

(declare-fun lt!2596223 () Unit!164246)

(assert (=> b!7273446 (= lt!2596223 (lemmaConcatPreservesForall!1571 (exprs!8254 ct1!250) (exprs!8254 ct2!346) lambda!449282))))

(declare-fun lt!2596222 () (Set Context!15508))

(assert (=> b!7273446 (= (flatMap!2927 lt!2596222 lambda!449283) (derivationStepZipperUp!2584 ct1!250 (h!77267 s!7854)))))

(declare-fun lt!2596219 () Unit!164246)

(assert (=> b!7273446 (= lt!2596219 (lemmaFlatMapOnSingletonSet!2327 lt!2596222 ct1!250 lambda!449283))))

(assert (=> b!7273446 (= lt!2596222 (set.insert ct1!250 (as set.empty (Set Context!15508))))))

(assert (=> b!7273446 (= lt!2596220 (derivationStepZipperUp!2584 lt!2596224 (h!77267 s!7854)))))

(declare-fun ++!16714 (List!70944 List!70944) List!70944)

(assert (=> b!7273446 (= lt!2596224 (Context!15509 (++!16714 (exprs!8254 ct1!250) (exprs!8254 ct2!346))))))

(declare-fun lt!2596216 () Unit!164246)

(assert (=> b!7273446 (= lt!2596216 (lemmaConcatPreservesForall!1571 (exprs!8254 ct1!250) (exprs!8254 ct2!346) lambda!449282))))

(declare-fun b!7273447 () Bool)

(declare-fun res!2948393 () Bool)

(assert (=> b!7273447 (=> (not res!2948393) (not e!4361617))))

(assert (=> b!7273447 (= res!2948393 (is-Cons!70819 s!7854))))

(declare-fun b!7273448 () Bool)

(declare-fun e!4361622 () Bool)

(assert (=> b!7273448 (= e!4361621 e!4361622)))

(declare-fun res!2948390 () Bool)

(assert (=> b!7273448 (=> res!2948390 e!4361622)))

(declare-fun matchZipper!3718 ((Set Context!15508) List!70943) Bool)

(assert (=> b!7273448 (= res!2948390 (not (matchZipper!3718 lt!2596226 s!7854)))))

(declare-fun lt!2596221 () Unit!164246)

(assert (=> b!7273448 (= lt!2596221 (lemmaConcatPreservesForall!1571 (exprs!8254 ct1!250) (exprs!8254 ct2!346) lambda!449282))))

(declare-fun b!7273449 () Bool)

(declare-fun e!4361620 () Bool)

(declare-fun tp!2041473 () Bool)

(assert (=> b!7273449 (= e!4361620 tp!2041473)))

(declare-fun b!7273450 () Bool)

(declare-fun e!4361618 () Bool)

(declare-fun tp!2041475 () Bool)

(assert (=> b!7273450 (= e!4361618 tp!2041475)))

(declare-fun res!2948392 () Bool)

(assert (=> start!710060 (=> (not res!2948392) (not e!4361617))))

(assert (=> start!710060 (= res!2948392 (matchZipper!3718 (set.insert ct2!346 (as set.empty (Set Context!15508))) s!7854))))

(assert (=> start!710060 e!4361617))

(declare-fun inv!90046 (Context!15508) Bool)

(assert (=> start!710060 (and (inv!90046 ct2!346) e!4361618)))

(declare-fun e!4361619 () Bool)

(assert (=> start!710060 e!4361619))

(assert (=> start!710060 (and (inv!90046 ct1!250) e!4361620)))

(declare-fun b!7273451 () Bool)

(declare-fun tp_is_empty!47093 () Bool)

(declare-fun tp!2041474 () Bool)

(assert (=> b!7273451 (= e!4361619 (and tp_is_empty!47093 tp!2041474))))

(declare-fun b!7273452 () Bool)

(declare-fun res!2948389 () Bool)

(assert (=> b!7273452 (=> res!2948389 e!4361621)))

(assert (=> b!7273452 (= res!2948389 (is-Cons!70820 (exprs!8254 ct1!250)))))

(declare-fun b!7273453 () Bool)

(declare-fun e!4361616 () Bool)

(assert (=> b!7273453 (= e!4361622 e!4361616)))

(declare-fun res!2948394 () Bool)

(assert (=> b!7273453 (=> res!2948394 e!4361616)))

(declare-fun forall!17643 (List!70944 Int) Bool)

(assert (=> b!7273453 (= res!2948394 (not (forall!17643 (exprs!8254 ct1!250) lambda!449282)))))

(declare-fun b!7273454 () Bool)

(declare-fun res!2948388 () Bool)

(assert (=> b!7273454 (=> (not res!2948388) (not e!4361617))))

(declare-fun nullableContext!304 (Context!15508) Bool)

(assert (=> b!7273454 (= res!2948388 (nullableContext!304 ct1!250))))

(declare-fun b!7273455 () Bool)

(assert (=> b!7273455 (= e!4361616 (forall!17643 (exprs!8254 ct2!346) lambda!449282))))

(assert (= (and start!710060 res!2948392) b!7273454))

(assert (= (and b!7273454 res!2948388) b!7273447))

(assert (= (and b!7273447 res!2948393) b!7273446))

(assert (= (and b!7273446 (not res!2948391)) b!7273452))

(assert (= (and b!7273452 (not res!2948389)) b!7273448))

(assert (= (and b!7273448 (not res!2948390)) b!7273453))

(assert (= (and b!7273453 (not res!2948394)) b!7273455))

(assert (= start!710060 b!7273450))

(assert (= (and start!710060 (is-Cons!70819 s!7854)) b!7273451))

(assert (= start!710060 b!7273449))

(declare-fun m!7959958 () Bool)

(assert (=> start!710060 m!7959958))

(assert (=> start!710060 m!7959958))

(declare-fun m!7959960 () Bool)

(assert (=> start!710060 m!7959960))

(declare-fun m!7959962 () Bool)

(assert (=> start!710060 m!7959962))

(declare-fun m!7959964 () Bool)

(assert (=> start!710060 m!7959964))

(declare-fun m!7959966 () Bool)

(assert (=> b!7273454 m!7959966))

(declare-fun m!7959968 () Bool)

(assert (=> b!7273453 m!7959968))

(declare-fun m!7959970 () Bool)

(assert (=> b!7273448 m!7959970))

(declare-fun m!7959972 () Bool)

(assert (=> b!7273448 m!7959972))

(assert (=> b!7273446 m!7959972))

(declare-fun m!7959974 () Bool)

(assert (=> b!7273446 m!7959974))

(declare-fun m!7959976 () Bool)

(assert (=> b!7273446 m!7959976))

(declare-fun m!7959978 () Bool)

(assert (=> b!7273446 m!7959978))

(declare-fun m!7959980 () Bool)

(assert (=> b!7273446 m!7959980))

(assert (=> b!7273446 m!7959972))

(declare-fun m!7959982 () Bool)

(assert (=> b!7273446 m!7959982))

(declare-fun m!7959984 () Bool)

(assert (=> b!7273446 m!7959984))

(declare-fun m!7959986 () Bool)

(assert (=> b!7273446 m!7959986))

(assert (=> b!7273446 m!7959972))

(declare-fun m!7959988 () Bool)

(assert (=> b!7273446 m!7959988))

(declare-fun m!7959990 () Bool)

(assert (=> b!7273446 m!7959990))

(declare-fun m!7959992 () Bool)

(assert (=> b!7273446 m!7959992))

(assert (=> b!7273446 m!7959972))

(declare-fun m!7959994 () Bool)

(assert (=> b!7273455 m!7959994))

(push 1)

(assert (not b!7273451))

(assert (not b!7273450))

(assert (not b!7273453))

(assert (not b!7273455))

(assert (not b!7273449))

(assert (not b!7273454))

(assert (not b!7273446))

(assert tp_is_empty!47093)

(assert (not start!710060))

(assert (not b!7273448))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2263766 () Bool)

(declare-fun res!2948420 () Bool)

(declare-fun e!4361648 () Bool)

(assert (=> d!2263766 (=> res!2948420 e!4361648)))

(assert (=> d!2263766 (= res!2948420 (is-Nil!70820 (exprs!8254 ct2!346)))))

(assert (=> d!2263766 (= (forall!17643 (exprs!8254 ct2!346) lambda!449282) e!4361648)))

(declare-fun b!7273494 () Bool)

(declare-fun e!4361649 () Bool)

(assert (=> b!7273494 (= e!4361648 e!4361649)))

(declare-fun res!2948421 () Bool)

(assert (=> b!7273494 (=> (not res!2948421) (not e!4361649))))

(declare-fun dynLambda!28957 (Int Regex!18814) Bool)

(assert (=> b!7273494 (= res!2948421 (dynLambda!28957 lambda!449282 (h!77268 (exprs!8254 ct2!346))))))

(declare-fun b!7273495 () Bool)

(assert (=> b!7273495 (= e!4361649 (forall!17643 (t!385016 (exprs!8254 ct2!346)) lambda!449282))))

(assert (= (and d!2263766 (not res!2948420)) b!7273494))

(assert (= (and b!7273494 res!2948421) b!7273495))

(declare-fun b_lambda!280589 () Bool)

(assert (=> (not b_lambda!280589) (not b!7273494)))

(declare-fun m!7960034 () Bool)

(assert (=> b!7273494 m!7960034))

(declare-fun m!7960036 () Bool)

(assert (=> b!7273495 m!7960036))

(assert (=> b!7273455 d!2263766))

(declare-fun d!2263768 () Bool)

(declare-fun c!1354266 () Bool)

(declare-fun isEmpty!40736 (List!70943) Bool)

(assert (=> d!2263768 (= c!1354266 (isEmpty!40736 s!7854))))

(declare-fun e!4361652 () Bool)

(assert (=> d!2263768 (= (matchZipper!3718 (set.insert ct2!346 (as set.empty (Set Context!15508))) s!7854) e!4361652)))

(declare-fun b!7273500 () Bool)

(declare-fun nullableZipper!3018 ((Set Context!15508)) Bool)

(assert (=> b!7273500 (= e!4361652 (nullableZipper!3018 (set.insert ct2!346 (as set.empty (Set Context!15508)))))))

(declare-fun b!7273501 () Bool)

(declare-fun head!15016 (List!70943) C!37902)

(declare-fun tail!14523 (List!70943) List!70943)

(assert (=> b!7273501 (= e!4361652 (matchZipper!3718 (derivationStepZipper!3554 (set.insert ct2!346 (as set.empty (Set Context!15508))) (head!15016 s!7854)) (tail!14523 s!7854)))))

(assert (= (and d!2263768 c!1354266) b!7273500))

(assert (= (and d!2263768 (not c!1354266)) b!7273501))

(declare-fun m!7960038 () Bool)

(assert (=> d!2263768 m!7960038))

(assert (=> b!7273500 m!7959958))

(declare-fun m!7960040 () Bool)

(assert (=> b!7273500 m!7960040))

(declare-fun m!7960042 () Bool)

(assert (=> b!7273501 m!7960042))

(assert (=> b!7273501 m!7959958))

(assert (=> b!7273501 m!7960042))

(declare-fun m!7960044 () Bool)

(assert (=> b!7273501 m!7960044))

(declare-fun m!7960046 () Bool)

(assert (=> b!7273501 m!7960046))

(assert (=> b!7273501 m!7960044))

(assert (=> b!7273501 m!7960046))

(declare-fun m!7960048 () Bool)

(assert (=> b!7273501 m!7960048))

(assert (=> start!710060 d!2263768))

(declare-fun bs!1911558 () Bool)

(declare-fun d!2263770 () Bool)

(assert (= bs!1911558 (and d!2263770 b!7273446)))

(declare-fun lambda!449304 () Int)

(assert (=> bs!1911558 (= lambda!449304 lambda!449282)))

(assert (=> d!2263770 (= (inv!90046 ct2!346) (forall!17643 (exprs!8254 ct2!346) lambda!449304))))

(declare-fun bs!1911559 () Bool)

(assert (= bs!1911559 d!2263770))

(declare-fun m!7960050 () Bool)

(assert (=> bs!1911559 m!7960050))

(assert (=> start!710060 d!2263770))

(declare-fun bs!1911560 () Bool)

(declare-fun d!2263774 () Bool)

(assert (= bs!1911560 (and d!2263774 b!7273446)))

(declare-fun lambda!449305 () Int)

(assert (=> bs!1911560 (= lambda!449305 lambda!449282)))

(declare-fun bs!1911561 () Bool)

(assert (= bs!1911561 (and d!2263774 d!2263770)))

(assert (=> bs!1911561 (= lambda!449305 lambda!449304)))

(assert (=> d!2263774 (= (inv!90046 ct1!250) (forall!17643 (exprs!8254 ct1!250) lambda!449305))))

(declare-fun bs!1911562 () Bool)

(assert (= bs!1911562 d!2263774))

(declare-fun m!7960052 () Bool)

(assert (=> bs!1911562 m!7960052))

(assert (=> start!710060 d!2263774))

(declare-fun bm!663569 () Bool)

(declare-fun call!663574 () (Set Context!15508))

(declare-fun derivationStepZipperDown!2745 (Regex!18814 Context!15508 C!37902) (Set Context!15508))

(assert (=> bm!663569 (= call!663574 (derivationStepZipperDown!2745 (h!77268 (exprs!8254 lt!2596224)) (Context!15509 (t!385016 (exprs!8254 lt!2596224))) (h!77267 s!7854)))))

(declare-fun b!7273518 () Bool)

(declare-fun e!4361667 () (Set Context!15508))

(assert (=> b!7273518 (= e!4361667 call!663574)))

(declare-fun b!7273519 () Bool)

(assert (=> b!7273519 (= e!4361667 (as set.empty (Set Context!15508)))))

(declare-fun b!7273520 () Bool)

(declare-fun e!4361665 () Bool)

(declare-fun nullable!8012 (Regex!18814) Bool)

(assert (=> b!7273520 (= e!4361665 (nullable!8012 (h!77268 (exprs!8254 lt!2596224))))))

(declare-fun b!7273521 () Bool)

(declare-fun e!4361666 () (Set Context!15508))

(assert (=> b!7273521 (= e!4361666 e!4361667)))

(declare-fun c!1354271 () Bool)

(assert (=> b!7273521 (= c!1354271 (is-Cons!70820 (exprs!8254 lt!2596224)))))

(declare-fun d!2263776 () Bool)

(declare-fun c!1354272 () Bool)

(assert (=> d!2263776 (= c!1354272 e!4361665)))

(declare-fun res!2948430 () Bool)

(assert (=> d!2263776 (=> (not res!2948430) (not e!4361665))))

(assert (=> d!2263776 (= res!2948430 (is-Cons!70820 (exprs!8254 lt!2596224)))))

(assert (=> d!2263776 (= (derivationStepZipperUp!2584 lt!2596224 (h!77267 s!7854)) e!4361666)))

(declare-fun b!7273522 () Bool)

(assert (=> b!7273522 (= e!4361666 (set.union call!663574 (derivationStepZipperUp!2584 (Context!15509 (t!385016 (exprs!8254 lt!2596224))) (h!77267 s!7854))))))

(assert (= (and d!2263776 res!2948430) b!7273520))

(assert (= (and d!2263776 c!1354272) b!7273522))

(assert (= (and d!2263776 (not c!1354272)) b!7273521))

(assert (= (and b!7273521 c!1354271) b!7273518))

(assert (= (and b!7273521 (not c!1354271)) b!7273519))

(assert (= (or b!7273522 b!7273518) bm!663569))

(declare-fun m!7960058 () Bool)

(assert (=> bm!663569 m!7960058))

(declare-fun m!7960060 () Bool)

(assert (=> b!7273520 m!7960060))

(declare-fun m!7960062 () Bool)

(assert (=> b!7273522 m!7960062))

(assert (=> b!7273446 d!2263776))

(declare-fun d!2263780 () Bool)

(declare-fun dynLambda!28958 (Int Context!15508) (Set Context!15508))

(assert (=> d!2263780 (= (flatMap!2927 lt!2596226 lambda!449283) (dynLambda!28958 lambda!449283 lt!2596224))))

(declare-fun lt!2596262 () Unit!164246)

(declare-fun choose!56449 ((Set Context!15508) Context!15508 Int) Unit!164246)

(assert (=> d!2263780 (= lt!2596262 (choose!56449 lt!2596226 lt!2596224 lambda!449283))))

(assert (=> d!2263780 (= lt!2596226 (set.insert lt!2596224 (as set.empty (Set Context!15508))))))

(assert (=> d!2263780 (= (lemmaFlatMapOnSingletonSet!2327 lt!2596226 lt!2596224 lambda!449283) lt!2596262)))

(declare-fun b_lambda!280593 () Bool)

(assert (=> (not b_lambda!280593) (not d!2263780)))

(declare-fun bs!1911563 () Bool)

(assert (= bs!1911563 d!2263780))

(assert (=> bs!1911563 m!7959990))

(declare-fun m!7960064 () Bool)

(assert (=> bs!1911563 m!7960064))

(declare-fun m!7960066 () Bool)

(assert (=> bs!1911563 m!7960066))

(assert (=> bs!1911563 m!7959974))

(assert (=> b!7273446 d!2263780))

(declare-fun bs!1911564 () Bool)

(declare-fun d!2263782 () Bool)

(assert (= bs!1911564 (and d!2263782 b!7273446)))

(declare-fun lambda!449308 () Int)

(assert (=> bs!1911564 (= lambda!449308 lambda!449283)))

(assert (=> d!2263782 true))

(assert (=> d!2263782 (= (derivationStepZipper!3554 lt!2596226 (h!77267 s!7854)) (flatMap!2927 lt!2596226 lambda!449308))))

(declare-fun bs!1911565 () Bool)

(assert (= bs!1911565 d!2263782))

(declare-fun m!7960068 () Bool)

(assert (=> bs!1911565 m!7960068))

(assert (=> b!7273446 d!2263782))

(declare-fun d!2263784 () Bool)

(declare-fun e!4361675 () Bool)

(assert (=> d!2263784 e!4361675))

(declare-fun res!2948436 () Bool)

(assert (=> d!2263784 (=> (not res!2948436) (not e!4361675))))

(declare-fun lt!2596265 () List!70944)

(declare-fun content!14786 (List!70944) (Set Regex!18814))

(assert (=> d!2263784 (= res!2948436 (= (content!14786 lt!2596265) (set.union (content!14786 (exprs!8254 ct1!250)) (content!14786 (exprs!8254 ct2!346)))))))

(declare-fun e!4361674 () List!70944)

(assert (=> d!2263784 (= lt!2596265 e!4361674)))

(declare-fun c!1354279 () Bool)

(assert (=> d!2263784 (= c!1354279 (is-Nil!70820 (exprs!8254 ct1!250)))))

(assert (=> d!2263784 (= (++!16714 (exprs!8254 ct1!250) (exprs!8254 ct2!346)) lt!2596265)))

(declare-fun b!7273539 () Bool)

(declare-fun res!2948435 () Bool)

(assert (=> b!7273539 (=> (not res!2948435) (not e!4361675))))

(declare-fun size!41834 (List!70944) Int)

(assert (=> b!7273539 (= res!2948435 (= (size!41834 lt!2596265) (+ (size!41834 (exprs!8254 ct1!250)) (size!41834 (exprs!8254 ct2!346)))))))

(declare-fun b!7273538 () Bool)

(assert (=> b!7273538 (= e!4361674 (Cons!70820 (h!77268 (exprs!8254 ct1!250)) (++!16714 (t!385016 (exprs!8254 ct1!250)) (exprs!8254 ct2!346))))))

(declare-fun b!7273540 () Bool)

(assert (=> b!7273540 (= e!4361675 (or (not (= (exprs!8254 ct2!346) Nil!70820)) (= lt!2596265 (exprs!8254 ct1!250))))))

(declare-fun b!7273537 () Bool)

(assert (=> b!7273537 (= e!4361674 (exprs!8254 ct2!346))))

(assert (= (and d!2263784 c!1354279) b!7273537))

(assert (= (and d!2263784 (not c!1354279)) b!7273538))

(assert (= (and d!2263784 res!2948436) b!7273539))

(assert (= (and b!7273539 res!2948435) b!7273540))

(declare-fun m!7960070 () Bool)

(assert (=> d!2263784 m!7960070))

(declare-fun m!7960072 () Bool)

(assert (=> d!2263784 m!7960072))

(declare-fun m!7960074 () Bool)

(assert (=> d!2263784 m!7960074))

(declare-fun m!7960076 () Bool)

(assert (=> b!7273539 m!7960076))

(declare-fun m!7960078 () Bool)

(assert (=> b!7273539 m!7960078))

(declare-fun m!7960080 () Bool)

(assert (=> b!7273539 m!7960080))

(declare-fun m!7960082 () Bool)

(assert (=> b!7273538 m!7960082))

(assert (=> b!7273446 d!2263784))

(declare-fun d!2263786 () Bool)

(declare-fun choose!56450 ((Set Context!15508) Int) (Set Context!15508))

(assert (=> d!2263786 (= (flatMap!2927 lt!2596226 lambda!449283) (choose!56450 lt!2596226 lambda!449283))))

(declare-fun bs!1911566 () Bool)

(assert (= bs!1911566 d!2263786))

(declare-fun m!7960092 () Bool)

(assert (=> bs!1911566 m!7960092))

(assert (=> b!7273446 d!2263786))

(declare-fun d!2263788 () Bool)

(assert (=> d!2263788 (forall!17643 (++!16714 (exprs!8254 ct1!250) (exprs!8254 ct2!346)) lambda!449282)))

(declare-fun lt!2596268 () Unit!164246)

(declare-fun choose!56451 (List!70944 List!70944 Int) Unit!164246)

(assert (=> d!2263788 (= lt!2596268 (choose!56451 (exprs!8254 ct1!250) (exprs!8254 ct2!346) lambda!449282))))

(assert (=> d!2263788 (forall!17643 (exprs!8254 ct1!250) lambda!449282)))

(assert (=> d!2263788 (= (lemmaConcatPreservesForall!1571 (exprs!8254 ct1!250) (exprs!8254 ct2!346) lambda!449282) lt!2596268)))

(declare-fun bs!1911567 () Bool)

(assert (= bs!1911567 d!2263788))

(assert (=> bs!1911567 m!7959992))

(assert (=> bs!1911567 m!7959992))

(declare-fun m!7960098 () Bool)

(assert (=> bs!1911567 m!7960098))

(declare-fun m!7960100 () Bool)

(assert (=> bs!1911567 m!7960100))

(assert (=> bs!1911567 m!7959968))

(assert (=> b!7273446 d!2263788))

(declare-fun d!2263792 () Bool)

(assert (=> d!2263792 (= (flatMap!2927 lt!2596222 lambda!449283) (choose!56450 lt!2596222 lambda!449283))))

(declare-fun bs!1911568 () Bool)

(assert (= bs!1911568 d!2263792))

(declare-fun m!7960102 () Bool)

(assert (=> bs!1911568 m!7960102))

(assert (=> b!7273446 d!2263792))

(declare-fun d!2263794 () Bool)

(assert (=> d!2263794 (= (flatMap!2927 lt!2596222 lambda!449283) (dynLambda!28958 lambda!449283 ct1!250))))

(declare-fun lt!2596269 () Unit!164246)

(assert (=> d!2263794 (= lt!2596269 (choose!56449 lt!2596222 ct1!250 lambda!449283))))

(assert (=> d!2263794 (= lt!2596222 (set.insert ct1!250 (as set.empty (Set Context!15508))))))

(assert (=> d!2263794 (= (lemmaFlatMapOnSingletonSet!2327 lt!2596222 ct1!250 lambda!449283) lt!2596269)))

(declare-fun b_lambda!280595 () Bool)

(assert (=> (not b_lambda!280595) (not d!2263794)))

(declare-fun bs!1911569 () Bool)

(assert (= bs!1911569 d!2263794))

(assert (=> bs!1911569 m!7959988))

(declare-fun m!7960104 () Bool)

(assert (=> bs!1911569 m!7960104))

(declare-fun m!7960106 () Bool)

(assert (=> bs!1911569 m!7960106))

(assert (=> bs!1911569 m!7959984))

(assert (=> b!7273446 d!2263794))

(declare-fun bm!663570 () Bool)

(declare-fun call!663575 () (Set Context!15508))

(assert (=> bm!663570 (= call!663575 (derivationStepZipperDown!2745 (h!77268 (exprs!8254 ct1!250)) (Context!15509 (t!385016 (exprs!8254 ct1!250))) (h!77267 s!7854)))))

(declare-fun b!7273543 () Bool)

(declare-fun e!4361679 () (Set Context!15508))

(assert (=> b!7273543 (= e!4361679 call!663575)))

(declare-fun b!7273544 () Bool)

(assert (=> b!7273544 (= e!4361679 (as set.empty (Set Context!15508)))))

(declare-fun b!7273545 () Bool)

(declare-fun e!4361677 () Bool)

(assert (=> b!7273545 (= e!4361677 (nullable!8012 (h!77268 (exprs!8254 ct1!250))))))

(declare-fun b!7273546 () Bool)

(declare-fun e!4361678 () (Set Context!15508))

(assert (=> b!7273546 (= e!4361678 e!4361679)))

(declare-fun c!1354281 () Bool)

(assert (=> b!7273546 (= c!1354281 (is-Cons!70820 (exprs!8254 ct1!250)))))

(declare-fun d!2263796 () Bool)

(declare-fun c!1354282 () Bool)

(assert (=> d!2263796 (= c!1354282 e!4361677)))

(declare-fun res!2948437 () Bool)

(assert (=> d!2263796 (=> (not res!2948437) (not e!4361677))))

(assert (=> d!2263796 (= res!2948437 (is-Cons!70820 (exprs!8254 ct1!250)))))

(assert (=> d!2263796 (= (derivationStepZipperUp!2584 ct1!250 (h!77267 s!7854)) e!4361678)))

(declare-fun b!7273547 () Bool)

(assert (=> b!7273547 (= e!4361678 (set.union call!663575 (derivationStepZipperUp!2584 (Context!15509 (t!385016 (exprs!8254 ct1!250))) (h!77267 s!7854))))))

(assert (= (and d!2263796 res!2948437) b!7273545))

(assert (= (and d!2263796 c!1354282) b!7273547))

(assert (= (and d!2263796 (not c!1354282)) b!7273546))

(assert (= (and b!7273546 c!1354281) b!7273543))

(assert (= (and b!7273546 (not c!1354281)) b!7273544))

(assert (= (or b!7273547 b!7273543) bm!663570))

(declare-fun m!7960108 () Bool)

(assert (=> bm!663570 m!7960108))

(declare-fun m!7960110 () Bool)

(assert (=> b!7273545 m!7960110))

(declare-fun m!7960112 () Bool)

(assert (=> b!7273547 m!7960112))

(assert (=> b!7273446 d!2263796))

(declare-fun d!2263798 () Bool)

(declare-fun res!2948438 () Bool)

(declare-fun e!4361680 () Bool)

(assert (=> d!2263798 (=> res!2948438 e!4361680)))

(assert (=> d!2263798 (= res!2948438 (is-Nil!70820 (exprs!8254 ct1!250)))))

(assert (=> d!2263798 (= (forall!17643 (exprs!8254 ct1!250) lambda!449282) e!4361680)))

(declare-fun b!7273548 () Bool)

(declare-fun e!4361681 () Bool)

(assert (=> b!7273548 (= e!4361680 e!4361681)))

(declare-fun res!2948439 () Bool)

(assert (=> b!7273548 (=> (not res!2948439) (not e!4361681))))

(assert (=> b!7273548 (= res!2948439 (dynLambda!28957 lambda!449282 (h!77268 (exprs!8254 ct1!250))))))

(declare-fun b!7273549 () Bool)

(assert (=> b!7273549 (= e!4361681 (forall!17643 (t!385016 (exprs!8254 ct1!250)) lambda!449282))))

(assert (= (and d!2263798 (not res!2948438)) b!7273548))

(assert (= (and b!7273548 res!2948439) b!7273549))

(declare-fun b_lambda!280597 () Bool)

(assert (=> (not b_lambda!280597) (not b!7273548)))

(declare-fun m!7960114 () Bool)

(assert (=> b!7273548 m!7960114))

(declare-fun m!7960116 () Bool)

(assert (=> b!7273549 m!7960116))

(assert (=> b!7273453 d!2263798))

(declare-fun bs!1911570 () Bool)

(declare-fun d!2263800 () Bool)

(assert (= bs!1911570 (and d!2263800 b!7273446)))

(declare-fun lambda!449311 () Int)

(assert (=> bs!1911570 (not (= lambda!449311 lambda!449282))))

(declare-fun bs!1911571 () Bool)

(assert (= bs!1911571 (and d!2263800 d!2263770)))

(assert (=> bs!1911571 (not (= lambda!449311 lambda!449304))))

(declare-fun bs!1911572 () Bool)

(assert (= bs!1911572 (and d!2263800 d!2263774)))

(assert (=> bs!1911572 (not (= lambda!449311 lambda!449305))))

(assert (=> d!2263800 (= (nullableContext!304 ct1!250) (forall!17643 (exprs!8254 ct1!250) lambda!449311))))

(declare-fun bs!1911573 () Bool)

(assert (= bs!1911573 d!2263800))

(declare-fun m!7960118 () Bool)

(assert (=> bs!1911573 m!7960118))

(assert (=> b!7273454 d!2263800))

(declare-fun d!2263802 () Bool)

(declare-fun c!1354284 () Bool)

(assert (=> d!2263802 (= c!1354284 (isEmpty!40736 s!7854))))

(declare-fun e!4361682 () Bool)

(assert (=> d!2263802 (= (matchZipper!3718 lt!2596226 s!7854) e!4361682)))

(declare-fun b!7273550 () Bool)

(assert (=> b!7273550 (= e!4361682 (nullableZipper!3018 lt!2596226))))

(declare-fun b!7273551 () Bool)

(assert (=> b!7273551 (= e!4361682 (matchZipper!3718 (derivationStepZipper!3554 lt!2596226 (head!15016 s!7854)) (tail!14523 s!7854)))))

(assert (= (and d!2263802 c!1354284) b!7273550))

(assert (= (and d!2263802 (not c!1354284)) b!7273551))

(assert (=> d!2263802 m!7960038))

(declare-fun m!7960120 () Bool)

(assert (=> b!7273550 m!7960120))

(assert (=> b!7273551 m!7960042))

(assert (=> b!7273551 m!7960042))

(declare-fun m!7960122 () Bool)

(assert (=> b!7273551 m!7960122))

(assert (=> b!7273551 m!7960046))

(assert (=> b!7273551 m!7960122))

(assert (=> b!7273551 m!7960046))

(declare-fun m!7960124 () Bool)

(assert (=> b!7273551 m!7960124))

(assert (=> b!7273448 d!2263802))

(assert (=> b!7273448 d!2263788))

(declare-fun b!7273556 () Bool)

(declare-fun e!4361685 () Bool)

(declare-fun tp!2041489 () Bool)

(declare-fun tp!2041490 () Bool)

(assert (=> b!7273556 (= e!4361685 (and tp!2041489 tp!2041490))))

(assert (=> b!7273450 (= tp!2041475 e!4361685)))

(assert (= (and b!7273450 (is-Cons!70820 (exprs!8254 ct2!346))) b!7273556))

(declare-fun b!7273561 () Bool)

(declare-fun e!4361688 () Bool)

(declare-fun tp!2041493 () Bool)

(assert (=> b!7273561 (= e!4361688 (and tp_is_empty!47093 tp!2041493))))

(assert (=> b!7273451 (= tp!2041474 e!4361688)))

(assert (= (and b!7273451 (is-Cons!70819 (t!385015 s!7854))) b!7273561))

(declare-fun b!7273562 () Bool)

(declare-fun e!4361689 () Bool)

(declare-fun tp!2041494 () Bool)

(declare-fun tp!2041495 () Bool)

(assert (=> b!7273562 (= e!4361689 (and tp!2041494 tp!2041495))))

(assert (=> b!7273449 (= tp!2041473 e!4361689)))

(assert (= (and b!7273449 (is-Cons!70820 (exprs!8254 ct1!250))) b!7273562))

(declare-fun b_lambda!280599 () Bool)

(assert (= b_lambda!280595 (or b!7273446 b_lambda!280599)))

(declare-fun bs!1911575 () Bool)

(declare-fun d!2263806 () Bool)

(assert (= bs!1911575 (and d!2263806 b!7273446)))

(assert (=> bs!1911575 (= (dynLambda!28958 lambda!449283 ct1!250) (derivationStepZipperUp!2584 ct1!250 (h!77267 s!7854)))))

(assert (=> bs!1911575 m!7959976))

(assert (=> d!2263794 d!2263806))

(declare-fun b_lambda!280601 () Bool)

(assert (= b_lambda!280597 (or b!7273446 b_lambda!280601)))

(declare-fun bs!1911576 () Bool)

(declare-fun d!2263808 () Bool)

(assert (= bs!1911576 (and d!2263808 b!7273446)))

(declare-fun validRegex!9594 (Regex!18814) Bool)

(assert (=> bs!1911576 (= (dynLambda!28957 lambda!449282 (h!77268 (exprs!8254 ct1!250))) (validRegex!9594 (h!77268 (exprs!8254 ct1!250))))))

(declare-fun m!7960130 () Bool)

(assert (=> bs!1911576 m!7960130))

(assert (=> b!7273548 d!2263808))

(declare-fun b_lambda!280603 () Bool)

(assert (= b_lambda!280589 (or b!7273446 b_lambda!280603)))

(declare-fun bs!1911577 () Bool)

(declare-fun d!2263810 () Bool)

(assert (= bs!1911577 (and d!2263810 b!7273446)))

(assert (=> bs!1911577 (= (dynLambda!28957 lambda!449282 (h!77268 (exprs!8254 ct2!346))) (validRegex!9594 (h!77268 (exprs!8254 ct2!346))))))

(declare-fun m!7960132 () Bool)

(assert (=> bs!1911577 m!7960132))

(assert (=> b!7273494 d!2263810))

(declare-fun b_lambda!280605 () Bool)

(assert (= b_lambda!280593 (or b!7273446 b_lambda!280605)))

(declare-fun bs!1911578 () Bool)

(declare-fun d!2263812 () Bool)

(assert (= bs!1911578 (and d!2263812 b!7273446)))

(assert (=> bs!1911578 (= (dynLambda!28958 lambda!449283 lt!2596224) (derivationStepZipperUp!2584 lt!2596224 (h!77267 s!7854)))))

(assert (=> bs!1911578 m!7959986))

(assert (=> d!2263780 d!2263812))

(push 1)

(assert (not b!7273538))

(assert (not b!7273520))

(assert (not d!2263788))

(assert (not d!2263800))

(assert (not b_lambda!280603))

(assert (not bm!663569))

(assert (not b!7273549))

(assert (not b!7273539))

(assert (not b!7273501))

(assert (not d!2263802))

(assert (not b_lambda!280601))

(assert (not b!7273562))

(assert (not d!2263768))

(assert (not b_lambda!280599))

(assert (not d!2263784))

(assert (not d!2263786))

(assert (not b!7273495))

(assert (not bs!1911575))

(assert (not bm!663570))

(assert (not d!2263774))

(assert (not b_lambda!280605))

(assert (not b!7273522))

(assert (not b!7273550))

(assert (not b!7273545))

(assert (not d!2263770))

(assert (not bs!1911577))

(assert (not bs!1911576))

(assert (not d!2263780))

(assert (not b!7273547))

(assert (not bs!1911578))

(assert (not b!7273500))

(assert (not d!2263782))

(assert (not b!7273556))

(assert (not b!7273551))

(assert (not d!2263794))

(assert (not d!2263792))

(assert (not b!7273561))

(assert tp_is_empty!47093)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

