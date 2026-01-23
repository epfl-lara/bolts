; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!707742 () Bool)

(assert start!707742)

(assert (=> start!707742 true))

(declare-fun b!7261595 () Bool)

(declare-fun e!4354443 () Bool)

(declare-fun tp!2039188 () Bool)

(assert (=> b!7261595 (= e!4354443 tp!2039188)))

(declare-fun b!7261596 () Bool)

(declare-fun e!4354445 () Bool)

(declare-fun tp_is_empty!46877 () Bool)

(declare-fun tp!2039187 () Bool)

(assert (=> b!7261596 (= e!4354445 (and tp_is_empty!46877 tp!2039187))))

(declare-fun b!7261593 () Bool)

(declare-fun e!4354444 () Bool)

(declare-datatypes ((C!37686 0))(
  ( (C!37687 (val!28791 Int)) )
))
(declare-datatypes ((Regex!18706 0))(
  ( (ElementMatch!18706 (c!1350946 C!37686)) (Concat!27551 (regOne!37924 Regex!18706) (regTwo!37924 Regex!18706)) (EmptyExpr!18706) (Star!18706 (reg!19035 Regex!18706)) (EmptyLang!18706) (Union!18706 (regOne!37925 Regex!18706) (regTwo!37925 Regex!18706)) )
))
(declare-datatypes ((List!70697 0))(
  ( (Nil!70573) (Cons!70573 (h!77021 Regex!18706) (t!384763 List!70697)) )
))
(declare-datatypes ((Context!15292 0))(
  ( (Context!15293 (exprs!8146 List!70697)) )
))
(declare-datatypes ((List!70698 0))(
  ( (Nil!70574) (Cons!70574 (h!77022 Context!15292) (t!384764 List!70698)) )
))
(declare-fun zl!1664 () List!70698)

(assert (=> b!7261593 (= e!4354444 (not (is-Cons!70574 zl!1664)))))

(declare-fun tp!2039189 () Bool)

(declare-fun b!7261594 () Bool)

(declare-fun e!4354446 () Bool)

(declare-fun inv!89776 (Context!15292) Bool)

(assert (=> b!7261594 (= e!4354446 (and (inv!89776 (h!77022 zl!1664)) e!4354443 tp!2039189))))

(declare-fun res!2944285 () Bool)

(assert (=> start!707742 (=> (not res!2944285) (not e!4354444))))

(declare-fun lambda!446700 () Int)

(declare-fun exists!4472 (List!70698 Int) Bool)

(assert (=> start!707742 (= res!2944285 (exists!4472 zl!1664 lambda!446700))))

(assert (=> start!707742 e!4354444))

(assert (=> start!707742 e!4354446))

(assert (=> start!707742 e!4354445))

(assert (= (and start!707742 res!2944285) b!7261593))

(assert (= b!7261594 b!7261595))

(assert (= (and start!707742 (is-Cons!70574 zl!1664)) b!7261594))

(declare-datatypes ((List!70699 0))(
  ( (Nil!70575) (Cons!70575 (h!77023 C!37686) (t!384765 List!70699)) )
))
(declare-fun s!7912 () List!70699)

(assert (= (and start!707742 (is-Cons!70575 s!7912)) b!7261596))

(declare-fun m!7946306 () Bool)

(assert (=> b!7261594 m!7946306))

(declare-fun m!7946308 () Bool)

(assert (=> start!707742 m!7946308))

(push 1)

(assert (not b!7261594))

(assert (not start!707742))

(assert tp_is_empty!46877)

(assert (not b!7261596))

(assert (not b!7261595))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259184 () Bool)

(declare-fun lambda!446708 () Int)

(declare-fun forall!17559 (List!70697 Int) Bool)

(assert (=> d!2259184 (= (inv!89776 (h!77022 zl!1664)) (forall!17559 (exprs!8146 (h!77022 zl!1664)) lambda!446708))))

(declare-fun bs!1909469 () Bool)

(assert (= bs!1909469 d!2259184))

(declare-fun m!7946314 () Bool)

(assert (=> bs!1909469 m!7946314))

(assert (=> b!7261594 d!2259184))

(declare-fun bs!1909472 () Bool)

(declare-fun d!2259186 () Bool)

(assert (= bs!1909472 (and d!2259186 start!707742)))

(declare-fun lambda!446712 () Int)

(assert (=> bs!1909472 (not (= lambda!446712 lambda!446700))))

(assert (=> d!2259186 true))

(declare-fun order!29059 () Int)

(declare-fun dynLambda!28834 (Int Int) Int)

(assert (=> d!2259186 (< (dynLambda!28834 order!29059 lambda!446700) (dynLambda!28834 order!29059 lambda!446712))))

(declare-fun forall!17560 (List!70698 Int) Bool)

(assert (=> d!2259186 (= (exists!4472 zl!1664 lambda!446700) (not (forall!17560 zl!1664 lambda!446712)))))

(declare-fun bs!1909473 () Bool)

(assert (= bs!1909473 d!2259186))

(declare-fun m!7946318 () Bool)

(assert (=> bs!1909473 m!7946318))

(assert (=> start!707742 d!2259186))

(declare-fun b!7261624 () Bool)

(declare-fun e!4354464 () Bool)

(declare-fun tp!2039203 () Bool)

(assert (=> b!7261624 (= e!4354464 tp!2039203)))

(declare-fun tp!2039204 () Bool)

(declare-fun b!7261623 () Bool)

(declare-fun e!4354463 () Bool)

(assert (=> b!7261623 (= e!4354463 (and (inv!89776 (h!77022 (t!384764 zl!1664))) e!4354464 tp!2039204))))

(assert (=> b!7261594 (= tp!2039189 e!4354463)))

(assert (= b!7261623 b!7261624))

(assert (= (and b!7261594 (is-Cons!70574 (t!384764 zl!1664))) b!7261623))

(declare-fun m!7946320 () Bool)

(assert (=> b!7261623 m!7946320))

(declare-fun b!7261629 () Bool)

(declare-fun e!4354467 () Bool)

(declare-fun tp!2039209 () Bool)

(declare-fun tp!2039210 () Bool)

(assert (=> b!7261629 (= e!4354467 (and tp!2039209 tp!2039210))))

(assert (=> b!7261595 (= tp!2039188 e!4354467)))

(assert (= (and b!7261595 (is-Cons!70573 (exprs!8146 (h!77022 zl!1664)))) b!7261629))

(declare-fun b!7261634 () Bool)

(declare-fun e!4354470 () Bool)

(declare-fun tp!2039213 () Bool)

(assert (=> b!7261634 (= e!4354470 (and tp_is_empty!46877 tp!2039213))))

(assert (=> b!7261596 (= tp!2039187 e!4354470)))

(assert (= (and b!7261596 (is-Cons!70575 (t!384765 s!7912))) b!7261634))

(push 1)

(assert (not b!7261634))

(assert (not d!2259186))

(assert (not b!7261623))

(assert tp_is_empty!46877)

(assert (not b!7261629))

(assert (not d!2259184))

(assert (not b!7261624))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2259190 () Bool)

(declare-fun res!2944293 () Bool)

(declare-fun e!4354487 () Bool)

(assert (=> d!2259190 (=> res!2944293 e!4354487)))

(assert (=> d!2259190 (= res!2944293 (is-Nil!70574 zl!1664))))

(assert (=> d!2259190 (= (forall!17560 zl!1664 lambda!446712) e!4354487)))

(declare-fun b!7261657 () Bool)

(declare-fun e!4354488 () Bool)

(assert (=> b!7261657 (= e!4354487 e!4354488)))

(declare-fun res!2944294 () Bool)

(assert (=> b!7261657 (=> (not res!2944294) (not e!4354488))))

(declare-fun dynLambda!28836 (Int Context!15292) Bool)

(assert (=> b!7261657 (= res!2944294 (dynLambda!28836 lambda!446712 (h!77022 zl!1664)))))

(declare-fun b!7261658 () Bool)

(assert (=> b!7261658 (= e!4354488 (forall!17560 (t!384764 zl!1664) lambda!446712))))

(assert (= (and d!2259190 (not res!2944293)) b!7261657))

(assert (= (and b!7261657 res!2944294) b!7261658))

(declare-fun b_lambda!279325 () Bool)

(assert (=> (not b_lambda!279325) (not b!7261657)))

(declare-fun m!7946326 () Bool)

(assert (=> b!7261657 m!7946326))

(declare-fun m!7946328 () Bool)

(assert (=> b!7261658 m!7946328))

(assert (=> d!2259186 d!2259190))

(declare-fun d!2259192 () Bool)

(declare-fun res!2944299 () Bool)

(declare-fun e!4354493 () Bool)

(assert (=> d!2259192 (=> res!2944299 e!4354493)))

(assert (=> d!2259192 (= res!2944299 (is-Nil!70573 (exprs!8146 (h!77022 zl!1664))))))

(assert (=> d!2259192 (= (forall!17559 (exprs!8146 (h!77022 zl!1664)) lambda!446708) e!4354493)))

(declare-fun b!7261663 () Bool)

(declare-fun e!4354494 () Bool)

(assert (=> b!7261663 (= e!4354493 e!4354494)))

(declare-fun res!2944300 () Bool)

(assert (=> b!7261663 (=> (not res!2944300) (not e!4354494))))

(declare-fun dynLambda!28837 (Int Regex!18706) Bool)

(assert (=> b!7261663 (= res!2944300 (dynLambda!28837 lambda!446708 (h!77021 (exprs!8146 (h!77022 zl!1664)))))))

(declare-fun b!7261664 () Bool)

(assert (=> b!7261664 (= e!4354494 (forall!17559 (t!384763 (exprs!8146 (h!77022 zl!1664))) lambda!446708))))

(assert (= (and d!2259192 (not res!2944299)) b!7261663))

(assert (= (and b!7261663 res!2944300) b!7261664))

(declare-fun b_lambda!279327 () Bool)

(assert (=> (not b_lambda!279327) (not b!7261663)))

(declare-fun m!7946330 () Bool)

(assert (=> b!7261663 m!7946330))

(declare-fun m!7946332 () Bool)

(assert (=> b!7261664 m!7946332))

(assert (=> d!2259184 d!2259192))

(declare-fun bs!1909475 () Bool)

(declare-fun d!2259194 () Bool)

(assert (= bs!1909475 (and d!2259194 d!2259184)))

(declare-fun lambda!446716 () Int)

(assert (=> bs!1909475 (= lambda!446716 lambda!446708)))

(assert (=> d!2259194 (= (inv!89776 (h!77022 (t!384764 zl!1664))) (forall!17559 (exprs!8146 (h!77022 (t!384764 zl!1664))) lambda!446716))))

(declare-fun bs!1909476 () Bool)

(assert (= bs!1909476 d!2259194))

(declare-fun m!7946334 () Bool)

(assert (=> bs!1909476 m!7946334))

(assert (=> b!7261623 d!2259194))

(declare-fun b!7261665 () Bool)

(declare-fun e!4354495 () Bool)

(declare-fun tp!2039229 () Bool)

(assert (=> b!7261665 (= e!4354495 (and tp_is_empty!46877 tp!2039229))))

(assert (=> b!7261634 (= tp!2039213 e!4354495)))

(assert (= (and b!7261634 (is-Cons!70575 (t!384765 (t!384765 s!7912)))) b!7261665))

(declare-fun b!7261666 () Bool)

(declare-fun e!4354496 () Bool)

(declare-fun tp!2039230 () Bool)

(declare-fun tp!2039231 () Bool)

(assert (=> b!7261666 (= e!4354496 (and tp!2039230 tp!2039231))))

(assert (=> b!7261624 (= tp!2039203 e!4354496)))

(assert (= (and b!7261624 (is-Cons!70573 (exprs!8146 (h!77022 (t!384764 zl!1664))))) b!7261666))

(declare-fun b!7261668 () Bool)

(declare-fun e!4354498 () Bool)

(declare-fun tp!2039232 () Bool)

(assert (=> b!7261668 (= e!4354498 tp!2039232)))

(declare-fun e!4354497 () Bool)

(declare-fun tp!2039233 () Bool)

(declare-fun b!7261667 () Bool)

(assert (=> b!7261667 (= e!4354497 (and (inv!89776 (h!77022 (t!384764 (t!384764 zl!1664)))) e!4354498 tp!2039233))))

(assert (=> b!7261623 (= tp!2039204 e!4354497)))

(assert (= b!7261667 b!7261668))

(assert (= (and b!7261623 (is-Cons!70574 (t!384764 (t!384764 zl!1664)))) b!7261667))

(declare-fun m!7946336 () Bool)

(assert (=> b!7261667 m!7946336))

(declare-fun e!4354501 () Bool)

(assert (=> b!7261629 (= tp!2039209 e!4354501)))

(declare-fun b!7261681 () Bool)

(declare-fun tp!2039248 () Bool)

(assert (=> b!7261681 (= e!4354501 tp!2039248)))

(declare-fun b!7261682 () Bool)

(declare-fun tp!2039245 () Bool)

(declare-fun tp!2039244 () Bool)

(assert (=> b!7261682 (= e!4354501 (and tp!2039245 tp!2039244))))

(declare-fun b!7261680 () Bool)

(declare-fun tp!2039247 () Bool)

(declare-fun tp!2039246 () Bool)

(assert (=> b!7261680 (= e!4354501 (and tp!2039247 tp!2039246))))

(declare-fun b!7261679 () Bool)

(assert (=> b!7261679 (= e!4354501 tp_is_empty!46877)))

(assert (= (and b!7261629 (is-ElementMatch!18706 (h!77021 (exprs!8146 (h!77022 zl!1664))))) b!7261679))

(assert (= (and b!7261629 (is-Concat!27551 (h!77021 (exprs!8146 (h!77022 zl!1664))))) b!7261680))

(assert (= (and b!7261629 (is-Star!18706 (h!77021 (exprs!8146 (h!77022 zl!1664))))) b!7261681))

(assert (= (and b!7261629 (is-Union!18706 (h!77021 (exprs!8146 (h!77022 zl!1664))))) b!7261682))

(declare-fun b!7261683 () Bool)

(declare-fun e!4354502 () Bool)

(declare-fun tp!2039249 () Bool)

(declare-fun tp!2039250 () Bool)

(assert (=> b!7261683 (= e!4354502 (and tp!2039249 tp!2039250))))

(assert (=> b!7261629 (= tp!2039210 e!4354502)))

(assert (= (and b!7261629 (is-Cons!70573 (t!384763 (exprs!8146 (h!77022 zl!1664))))) b!7261683))

(declare-fun b_lambda!279329 () Bool)

(assert (= b_lambda!279327 (or d!2259184 b_lambda!279329)))

(declare-fun bs!1909477 () Bool)

(declare-fun d!2259196 () Bool)

(assert (= bs!1909477 (and d!2259196 d!2259184)))

(declare-fun validRegex!9552 (Regex!18706) Bool)

(assert (=> bs!1909477 (= (dynLambda!28837 lambda!446708 (h!77021 (exprs!8146 (h!77022 zl!1664)))) (validRegex!9552 (h!77021 (exprs!8146 (h!77022 zl!1664)))))))

(declare-fun m!7946338 () Bool)

(assert (=> bs!1909477 m!7946338))

(assert (=> b!7261663 d!2259196))

(declare-fun b_lambda!279331 () Bool)

(assert (= b_lambda!279325 (or d!2259186 b_lambda!279331)))

(declare-fun bs!1909478 () Bool)

(declare-fun d!2259198 () Bool)

(assert (= bs!1909478 (and d!2259198 d!2259186)))

(assert (=> bs!1909478 (= (dynLambda!28836 lambda!446712 (h!77022 zl!1664)) (not (dynLambda!28836 lambda!446700 (h!77022 zl!1664))))))

(declare-fun b_lambda!279333 () Bool)

(assert (=> (not b_lambda!279333) (not bs!1909478)))

(declare-fun m!7946340 () Bool)

(assert (=> bs!1909478 m!7946340))

(assert (=> b!7261657 d!2259198))

(push 1)

(assert (not b_lambda!279329))

(assert (not b!7261658))

(assert (not b!7261667))

(assert (not b!7261681))

(assert (not b!7261680))

(assert tp_is_empty!46877)

(assert (not b!7261668))

(assert (not b!7261683))

(assert (not d!2259194))

(assert (not b_lambda!279333))

(assert (not bs!1909477))

(assert (not b!7261666))

(assert (not b!7261664))

(assert (not b!7261682))

(assert (not b_lambda!279331))

(assert (not b!7261665))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

