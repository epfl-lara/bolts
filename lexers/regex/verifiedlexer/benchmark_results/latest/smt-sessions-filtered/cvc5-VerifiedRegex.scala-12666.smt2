; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700988 () Bool)

(assert start!700988)

(declare-fun b!7228380 () Bool)

(assert (=> b!7228380 true))

(declare-fun b!7228381 () Bool)

(declare-fun res!2932739 () Bool)

(declare-fun e!4333100 () Bool)

(assert (=> b!7228381 (=> (not res!2932739) (not e!4333100))))

(declare-datatypes ((C!37154 0))(
  ( (C!37155 (val!28525 Int)) )
))
(declare-datatypes ((Regex!18440 0))(
  ( (ElementMatch!18440 (c!1341147 C!37154)) (Concat!27285 (regOne!37392 Regex!18440) (regTwo!37392 Regex!18440)) (EmptyExpr!18440) (Star!18440 (reg!18769 Regex!18440)) (EmptyLang!18440) (Union!18440 (regOne!37393 Regex!18440) (regTwo!37393 Regex!18440)) )
))
(declare-datatypes ((List!69978 0))(
  ( (Nil!69854) (Cons!69854 (h!76302 Regex!18440) (t!384009 List!69978)) )
))
(declare-fun l!7017 () List!69978)

(assert (=> b!7228381 (= res!2932739 (not (is-Nil!69854 l!7017)))))

(declare-fun res!2932740 () Bool)

(assert (=> b!7228380 (=> (not res!2932740) (not e!4333100))))

(declare-fun lambda!438772 () Int)

(declare-fun forall!17263 (List!69978 Int) Bool)

(assert (=> b!7228380 (= res!2932740 (forall!17263 l!7017 lambda!438772))))

(declare-fun res!2932741 () Bool)

(assert (=> start!700988 (=> (not res!2932741) (not e!4333100))))

(declare-fun a!1071 () Int)

(declare-fun b!25551 () Int)

(assert (=> start!700988 (= res!2932741 (>= a!1071 b!25551))))

(assert (=> start!700988 e!4333100))

(assert (=> start!700988 true))

(declare-fun e!4333101 () Bool)

(assert (=> start!700988 e!4333101))

(declare-fun b!7228382 () Bool)

(assert (=> b!7228382 (= e!4333100 (not (forall!17263 (t!384009 l!7017) lambda!438772)))))

(declare-fun b!7228383 () Bool)

(declare-fun tp!2032707 () Bool)

(declare-fun tp!2032708 () Bool)

(assert (=> b!7228383 (= e!4333101 (and tp!2032707 tp!2032708))))

(assert (= (and start!700988 res!2932741) b!7228380))

(assert (= (and b!7228380 res!2932740) b!7228381))

(assert (= (and b!7228381 res!2932739) b!7228382))

(assert (= (and start!700988 (is-Cons!69854 l!7017)) b!7228383))

(declare-fun m!7896942 () Bool)

(assert (=> b!7228380 m!7896942))

(declare-fun m!7896944 () Bool)

(assert (=> b!7228382 m!7896944))

(push 1)

(assert (not b!7228380))

(assert (not b!7228382))

(assert (not b!7228383))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2244899 () Bool)

(declare-fun res!2932755 () Bool)

(declare-fun e!4333112 () Bool)

(assert (=> d!2244899 (=> res!2932755 e!4333112)))

(assert (=> d!2244899 (= res!2932755 (is-Nil!69854 l!7017))))

(assert (=> d!2244899 (= (forall!17263 l!7017 lambda!438772) e!4333112)))

(declare-fun b!7228404 () Bool)

(declare-fun e!4333113 () Bool)

(assert (=> b!7228404 (= e!4333112 e!4333113)))

(declare-fun res!2932756 () Bool)

(assert (=> b!7228404 (=> (not res!2932756) (not e!4333113))))

(declare-fun dynLambda!28447 (Int Regex!18440) Bool)

(assert (=> b!7228404 (= res!2932756 (dynLambda!28447 lambda!438772 (h!76302 l!7017)))))

(declare-fun b!7228405 () Bool)

(assert (=> b!7228405 (= e!4333113 (forall!17263 (t!384009 l!7017) lambda!438772))))

(assert (= (and d!2244899 (not res!2932755)) b!7228404))

(assert (= (and b!7228404 res!2932756) b!7228405))

(declare-fun b_lambda!276783 () Bool)

(assert (=> (not b_lambda!276783) (not b!7228404)))

(declare-fun m!7896950 () Bool)

(assert (=> b!7228404 m!7896950))

(assert (=> b!7228405 m!7896944))

(assert (=> b!7228380 d!2244899))

(declare-fun d!2244903 () Bool)

(declare-fun res!2932757 () Bool)

(declare-fun e!4333114 () Bool)

(assert (=> d!2244903 (=> res!2932757 e!4333114)))

(assert (=> d!2244903 (= res!2932757 (is-Nil!69854 (t!384009 l!7017)))))

(assert (=> d!2244903 (= (forall!17263 (t!384009 l!7017) lambda!438772) e!4333114)))

(declare-fun b!7228406 () Bool)

(declare-fun e!4333115 () Bool)

(assert (=> b!7228406 (= e!4333114 e!4333115)))

(declare-fun res!2932758 () Bool)

(assert (=> b!7228406 (=> (not res!2932758) (not e!4333115))))

(assert (=> b!7228406 (= res!2932758 (dynLambda!28447 lambda!438772 (h!76302 (t!384009 l!7017))))))

(declare-fun b!7228407 () Bool)

(assert (=> b!7228407 (= e!4333115 (forall!17263 (t!384009 (t!384009 l!7017)) lambda!438772))))

(assert (= (and d!2244903 (not res!2932757)) b!7228406))

(assert (= (and b!7228406 res!2932758) b!7228407))

(declare-fun b_lambda!276785 () Bool)

(assert (=> (not b_lambda!276785) (not b!7228406)))

(declare-fun m!7896952 () Bool)

(assert (=> b!7228406 m!7896952))

(declare-fun m!7896954 () Bool)

(assert (=> b!7228407 m!7896954))

(assert (=> b!7228382 d!2244903))

(declare-fun b!7228424 () Bool)

(declare-fun e!4333122 () Bool)

(declare-fun tp!2032725 () Bool)

(assert (=> b!7228424 (= e!4333122 tp!2032725)))

(declare-fun b!7228423 () Bool)

(declare-fun tp!2032729 () Bool)

(declare-fun tp!2032727 () Bool)

(assert (=> b!7228423 (= e!4333122 (and tp!2032729 tp!2032727))))

(declare-fun b!7228425 () Bool)

(declare-fun tp!2032728 () Bool)

(declare-fun tp!2032726 () Bool)

(assert (=> b!7228425 (= e!4333122 (and tp!2032728 tp!2032726))))

(declare-fun b!7228422 () Bool)

(declare-fun tp_is_empty!46369 () Bool)

(assert (=> b!7228422 (= e!4333122 tp_is_empty!46369)))

(assert (=> b!7228383 (= tp!2032707 e!4333122)))

(assert (= (and b!7228383 (is-ElementMatch!18440 (h!76302 l!7017))) b!7228422))

(assert (= (and b!7228383 (is-Concat!27285 (h!76302 l!7017))) b!7228423))

(assert (= (and b!7228383 (is-Star!18440 (h!76302 l!7017))) b!7228424))

(assert (= (and b!7228383 (is-Union!18440 (h!76302 l!7017))) b!7228425))

(declare-fun b!7228430 () Bool)

(declare-fun e!4333125 () Bool)

(declare-fun tp!2032734 () Bool)

(declare-fun tp!2032735 () Bool)

(assert (=> b!7228430 (= e!4333125 (and tp!2032734 tp!2032735))))

(assert (=> b!7228383 (= tp!2032708 e!4333125)))

(assert (= (and b!7228383 (is-Cons!69854 (t!384009 l!7017))) b!7228430))

(declare-fun b_lambda!276787 () Bool)

(assert (= b_lambda!276783 (or b!7228380 b_lambda!276787)))

(declare-fun bs!1902179 () Bool)

(declare-fun d!2244905 () Bool)

(assert (= bs!1902179 (and d!2244905 b!7228380)))

(declare-fun regexDepth!426 (Regex!18440) Int)

(assert (=> bs!1902179 (= (dynLambda!28447 lambda!438772 (h!76302 l!7017)) (>= b!25551 (regexDepth!426 (h!76302 l!7017))))))

(declare-fun m!7896956 () Bool)

(assert (=> bs!1902179 m!7896956))

(assert (=> b!7228404 d!2244905))

(declare-fun b_lambda!276789 () Bool)

(assert (= b_lambda!276785 (or b!7228380 b_lambda!276789)))

(declare-fun bs!1902180 () Bool)

(declare-fun d!2244907 () Bool)

(assert (= bs!1902180 (and d!2244907 b!7228380)))

(assert (=> bs!1902180 (= (dynLambda!28447 lambda!438772 (h!76302 (t!384009 l!7017))) (>= b!25551 (regexDepth!426 (h!76302 (t!384009 l!7017)))))))

(declare-fun m!7896958 () Bool)

(assert (=> bs!1902180 m!7896958))

(assert (=> b!7228406 d!2244907))

(push 1)

(assert (not b!7228405))

(assert (not b!7228423))

(assert (not bs!1902180))

(assert (not b!7228407))

(assert (not b!7228425))

(assert (not b!7228424))

(assert (not b_lambda!276787))

(assert (not b_lambda!276789))

(assert (not bs!1902179))

(assert tp_is_empty!46369)

(assert (not b!7228430))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

