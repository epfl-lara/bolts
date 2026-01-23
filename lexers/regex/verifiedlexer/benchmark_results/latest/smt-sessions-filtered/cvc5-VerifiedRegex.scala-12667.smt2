; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700996 () Bool)

(assert start!700996)

(declare-fun b!7228460 () Bool)

(assert (=> b!7228460 true))

(declare-fun res!2932771 () Bool)

(declare-fun e!4333141 () Bool)

(assert (=> start!700996 (=> (not res!2932771) (not e!4333141))))

(declare-fun a!1071 () Int)

(declare-fun b!25551 () Int)

(assert (=> start!700996 (= res!2932771 (>= a!1071 b!25551))))

(assert (=> start!700996 e!4333141))

(assert (=> start!700996 true))

(declare-fun e!4333140 () Bool)

(assert (=> start!700996 e!4333140))

(declare-fun res!2932772 () Bool)

(assert (=> b!7228460 (=> (not res!2932772) (not e!4333141))))

(declare-datatypes ((C!37158 0))(
  ( (C!37159 (val!28527 Int)) )
))
(declare-datatypes ((Regex!18442 0))(
  ( (ElementMatch!18442 (c!1341149 C!37158)) (Concat!27287 (regOne!37396 Regex!18442) (regTwo!37396 Regex!18442)) (EmptyExpr!18442) (Star!18442 (reg!18771 Regex!18442)) (EmptyLang!18442) (Union!18442 (regOne!37397 Regex!18442) (regTwo!37397 Regex!18442)) )
))
(declare-datatypes ((List!69980 0))(
  ( (Nil!69856) (Cons!69856 (h!76304 Regex!18442) (t!384011 List!69980)) )
))
(declare-fun l!7017 () List!69980)

(declare-fun lambda!438780 () Int)

(declare-fun forall!17265 (List!69980 Int) Bool)

(assert (=> b!7228460 (= res!2932772 (forall!17265 l!7017 lambda!438780))))

(declare-fun b!7228461 () Bool)

(declare-fun ListPrimitiveSize!415 (List!69980) Int)

(assert (=> b!7228461 (= e!4333141 (< (ListPrimitiveSize!415 l!7017) 0))))

(declare-fun b!7228462 () Bool)

(declare-fun tp!2032762 () Bool)

(declare-fun tp!2032761 () Bool)

(assert (=> b!7228462 (= e!4333140 (and tp!2032762 tp!2032761))))

(assert (= (and start!700996 res!2932771) b!7228460))

(assert (= (and b!7228460 res!2932772) b!7228461))

(assert (= (and start!700996 (is-Cons!69856 l!7017)) b!7228462))

(declare-fun m!7896970 () Bool)

(assert (=> b!7228460 m!7896970))

(declare-fun m!7896972 () Bool)

(assert (=> b!7228461 m!7896972))

(push 1)

(assert (not b!7228461))

(assert (not b!7228460))

(assert (not b!7228462))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2244916 () Bool)

(declare-fun lt!2572486 () Int)

(assert (=> d!2244916 (>= lt!2572486 0)))

(declare-fun e!4333150 () Int)

(assert (=> d!2244916 (= lt!2572486 e!4333150)))

(declare-fun c!1341153 () Bool)

(assert (=> d!2244916 (= c!1341153 (is-Nil!69856 l!7017))))

(assert (=> d!2244916 (= (ListPrimitiveSize!415 l!7017) lt!2572486)))

(declare-fun b!7228480 () Bool)

(assert (=> b!7228480 (= e!4333150 0)))

(declare-fun b!7228481 () Bool)

(assert (=> b!7228481 (= e!4333150 (+ 1 (ListPrimitiveSize!415 (t!384011 l!7017))))))

(assert (= (and d!2244916 c!1341153) b!7228480))

(assert (= (and d!2244916 (not c!1341153)) b!7228481))

(declare-fun m!7896978 () Bool)

(assert (=> b!7228481 m!7896978))

(assert (=> b!7228461 d!2244916))

(declare-fun d!2244918 () Bool)

(declare-fun res!2932783 () Bool)

(declare-fun e!4333155 () Bool)

(assert (=> d!2244918 (=> res!2932783 e!4333155)))

(assert (=> d!2244918 (= res!2932783 (is-Nil!69856 l!7017))))

(assert (=> d!2244918 (= (forall!17265 l!7017 lambda!438780) e!4333155)))

(declare-fun b!7228486 () Bool)

(declare-fun e!4333156 () Bool)

(assert (=> b!7228486 (= e!4333155 e!4333156)))

(declare-fun res!2932784 () Bool)

(assert (=> b!7228486 (=> (not res!2932784) (not e!4333156))))

(declare-fun dynLambda!28449 (Int Regex!18442) Bool)

(assert (=> b!7228486 (= res!2932784 (dynLambda!28449 lambda!438780 (h!76304 l!7017)))))

(declare-fun b!7228487 () Bool)

(assert (=> b!7228487 (= e!4333156 (forall!17265 (t!384011 l!7017) lambda!438780))))

(assert (= (and d!2244918 (not res!2932783)) b!7228486))

(assert (= (and b!7228486 res!2932784) b!7228487))

(declare-fun b_lambda!276799 () Bool)

(assert (=> (not b_lambda!276799) (not b!7228486)))

(declare-fun m!7896980 () Bool)

(assert (=> b!7228486 m!7896980))

(declare-fun m!7896982 () Bool)

(assert (=> b!7228487 m!7896982))

(assert (=> b!7228460 d!2244918))

(declare-fun e!4333159 () Bool)

(assert (=> b!7228462 (= tp!2032762 e!4333159)))

(declare-fun b!7228501 () Bool)

(declare-fun tp!2032780 () Bool)

(declare-fun tp!2032782 () Bool)

(assert (=> b!7228501 (= e!4333159 (and tp!2032780 tp!2032782))))

(declare-fun b!7228500 () Bool)

(declare-fun tp!2032783 () Bool)

(assert (=> b!7228500 (= e!4333159 tp!2032783)))

(declare-fun b!7228499 () Bool)

(declare-fun tp!2032781 () Bool)

(declare-fun tp!2032779 () Bool)

(assert (=> b!7228499 (= e!4333159 (and tp!2032781 tp!2032779))))

(declare-fun b!7228498 () Bool)

(declare-fun tp_is_empty!46373 () Bool)

(assert (=> b!7228498 (= e!4333159 tp_is_empty!46373)))

(assert (= (and b!7228462 (is-ElementMatch!18442 (h!76304 l!7017))) b!7228498))

(assert (= (and b!7228462 (is-Concat!27287 (h!76304 l!7017))) b!7228499))

(assert (= (and b!7228462 (is-Star!18442 (h!76304 l!7017))) b!7228500))

(assert (= (and b!7228462 (is-Union!18442 (h!76304 l!7017))) b!7228501))

(declare-fun b!7228506 () Bool)

(declare-fun e!4333162 () Bool)

(declare-fun tp!2032788 () Bool)

(declare-fun tp!2032789 () Bool)

(assert (=> b!7228506 (= e!4333162 (and tp!2032788 tp!2032789))))

(assert (=> b!7228462 (= tp!2032761 e!4333162)))

(assert (= (and b!7228462 (is-Cons!69856 (t!384011 l!7017))) b!7228506))

(declare-fun b_lambda!276801 () Bool)

(assert (= b_lambda!276799 (or b!7228460 b_lambda!276801)))

(declare-fun bs!1902185 () Bool)

(declare-fun d!2244920 () Bool)

(assert (= bs!1902185 (and d!2244920 b!7228460)))

(declare-fun regexDepth!428 (Regex!18442) Int)

(assert (=> bs!1902185 (= (dynLambda!28449 lambda!438780 (h!76304 l!7017)) (>= b!25551 (regexDepth!428 (h!76304 l!7017))))))

(declare-fun m!7896984 () Bool)

(assert (=> bs!1902185 m!7896984))

(assert (=> b!7228486 d!2244920))

(push 1)

(assert tp_is_empty!46373)

(assert (not b!7228501))

(assert (not b!7228481))

(assert (not b!7228500))

(assert (not b!7228506))

(assert (not b!7228499))

(assert (not b_lambda!276801))

(assert (not b!7228487))

(assert (not bs!1902185))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

