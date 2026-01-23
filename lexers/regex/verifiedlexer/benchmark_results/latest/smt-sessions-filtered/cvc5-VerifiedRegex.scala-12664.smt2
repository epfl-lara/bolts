; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700972 () Bool)

(assert start!700972)

(declare-fun res!2932717 () Bool)

(declare-fun e!4333064 () Bool)

(assert (=> start!700972 (=> (not res!2932717) (not e!4333064))))

(declare-datatypes ((C!37146 0))(
  ( (C!37147 (val!28521 Int)) )
))
(declare-datatypes ((Regex!18436 0))(
  ( (ElementMatch!18436 (c!1341143 C!37146)) (Concat!27281 (regOne!37384 Regex!18436) (regTwo!37384 Regex!18436)) (EmptyExpr!18436) (Star!18436 (reg!18765 Regex!18436)) (EmptyLang!18436) (Union!18436 (regOne!37385 Regex!18436) (regTwo!37385 Regex!18436)) )
))
(declare-datatypes ((List!69974 0))(
  ( (Nil!69850) (Cons!69850 (h!76298 Regex!18436) (t!384005 List!69974)) )
))
(declare-datatypes ((Context!14776 0))(
  ( (Context!14777 (exprs!7888 List!69974)) )
))
(declare-fun c!7037 () Context!14776)

(assert (=> start!700972 (= res!2932717 (not (is-Cons!69850 (exprs!7888 c!7037))))))

(assert (=> start!700972 e!4333064))

(declare-fun e!4333065 () Bool)

(declare-fun inv!89113 (Context!14776) Bool)

(assert (=> start!700972 (and (inv!89113 c!7037) e!4333065)))

(declare-fun b!7228336 () Bool)

(declare-fun lambda!438758 () Int)

(declare-fun forall!17261 (List!69974 Int) Bool)

(assert (=> b!7228336 (= e!4333064 (not (forall!17261 (exprs!7888 c!7037) lambda!438758)))))

(declare-fun b!7228337 () Bool)

(declare-fun tp!2032675 () Bool)

(assert (=> b!7228337 (= e!4333065 tp!2032675)))

(assert (= (and start!700972 res!2932717) b!7228336))

(assert (= start!700972 b!7228337))

(declare-fun m!7896920 () Bool)

(assert (=> start!700972 m!7896920))

(declare-fun m!7896922 () Bool)

(assert (=> b!7228336 m!7896922))

(push 1)

(assert (not start!700972))

(assert (not b!7228336))

(assert (not b!7228337))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1902170 () Bool)

(declare-fun d!2244887 () Bool)

(assert (= bs!1902170 (and d!2244887 b!7228336)))

(declare-fun lambda!438764 () Int)

(assert (=> bs!1902170 (not (= lambda!438764 lambda!438758))))

(assert (=> d!2244887 (= (inv!89113 c!7037) (forall!17261 (exprs!7888 c!7037) lambda!438764))))

(declare-fun bs!1902171 () Bool)

(assert (= bs!1902171 d!2244887))

(declare-fun m!7896928 () Bool)

(assert (=> bs!1902171 m!7896928))

(assert (=> start!700972 d!2244887))

(declare-fun d!2244889 () Bool)

(declare-fun res!2932725 () Bool)

(declare-fun e!4333076 () Bool)

(assert (=> d!2244889 (=> res!2932725 e!4333076)))

(assert (=> d!2244889 (= res!2932725 (is-Nil!69850 (exprs!7888 c!7037)))))

(assert (=> d!2244889 (= (forall!17261 (exprs!7888 c!7037) lambda!438758) e!4333076)))

(declare-fun b!7228348 () Bool)

(declare-fun e!4333077 () Bool)

(assert (=> b!7228348 (= e!4333076 e!4333077)))

(declare-fun res!2932726 () Bool)

(assert (=> b!7228348 (=> (not res!2932726) (not e!4333077))))

(declare-fun dynLambda!28446 (Int Regex!18436) Bool)

(assert (=> b!7228348 (= res!2932726 (dynLambda!28446 lambda!438758 (h!76298 (exprs!7888 c!7037))))))

(declare-fun b!7228349 () Bool)

(assert (=> b!7228349 (= e!4333077 (forall!17261 (t!384005 (exprs!7888 c!7037)) lambda!438758))))

(assert (= (and d!2244889 (not res!2932725)) b!7228348))

(assert (= (and b!7228348 res!2932726) b!7228349))

(declare-fun b_lambda!276775 () Bool)

(assert (=> (not b_lambda!276775) (not b!7228348)))

(declare-fun m!7896930 () Bool)

(assert (=> b!7228348 m!7896930))

(declare-fun m!7896932 () Bool)

(assert (=> b!7228349 m!7896932))

(assert (=> b!7228336 d!2244889))

(declare-fun b!7228354 () Bool)

(declare-fun e!4333080 () Bool)

(declare-fun tp!2032683 () Bool)

(declare-fun tp!2032684 () Bool)

(assert (=> b!7228354 (= e!4333080 (and tp!2032683 tp!2032684))))

(assert (=> b!7228337 (= tp!2032675 e!4333080)))

(assert (= (and b!7228337 (is-Cons!69850 (exprs!7888 c!7037))) b!7228354))

(declare-fun b_lambda!276777 () Bool)

(assert (= b_lambda!276775 (or b!7228336 b_lambda!276777)))

(declare-fun bs!1902172 () Bool)

(declare-fun d!2244893 () Bool)

(assert (= bs!1902172 (and d!2244893 b!7228336)))

(declare-fun regexDepth!425 (Regex!18436) Int)

(assert (=> bs!1902172 (= (dynLambda!28446 lambda!438758 (h!76298 (exprs!7888 c!7037))) (>= 0 (regexDepth!425 (h!76298 (exprs!7888 c!7037)))))))

(declare-fun m!7896934 () Bool)

(assert (=> bs!1902172 m!7896934))

(assert (=> b!7228348 d!2244893))

(push 1)

(assert (not b!7228354))

(assert (not b_lambda!276777))

(assert (not bs!1902172))

(assert (not d!2244887))

(assert (not b!7228349))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

