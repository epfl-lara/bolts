; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!700802 () Bool)

(assert start!700802)

(declare-fun res!2932353 () Bool)

(declare-fun e!4332128 () Bool)

(assert (=> start!700802 (=> (not res!2932353) (not e!4332128))))

(declare-datatypes ((C!37106 0))(
  ( (C!37107 (val!28501 Int)) )
))
(declare-datatypes ((Regex!18416 0))(
  ( (ElementMatch!18416 (c!1340672 C!37106)) (Concat!27261 (regOne!37344 Regex!18416) (regTwo!37344 Regex!18416)) (EmptyExpr!18416) (Star!18416 (reg!18745 Regex!18416)) (EmptyLang!18416) (Union!18416 (regOne!37345 Regex!18416) (regTwo!37345 Regex!18416)) )
))
(declare-datatypes ((List!69952 0))(
  ( (Nil!69828) (Cons!69828 (h!76276 Regex!18416) (t!383983 List!69952)) )
))
(declare-datatypes ((Context!14736 0))(
  ( (Context!14737 (exprs!7868 List!69952)) )
))
(declare-datatypes ((List!69953 0))(
  ( (Nil!69829) (Cons!69829 (h!76277 Context!14736) (t!383984 List!69953)) )
))
(declare-fun zl!166 () List!69953)

(assert (=> start!700802 (= res!2932353 (not (is-Cons!69829 zl!166)))))

(assert (=> start!700802 e!4332128))

(declare-fun e!4332127 () Bool)

(assert (=> start!700802 e!4332127))

(declare-fun b!7226836 () Bool)

(declare-fun lambda!438604 () Int)

(declare-fun forall!17242 (List!69953 Int) Bool)

(assert (=> b!7226836 (= e!4332128 (not (forall!17242 zl!166 lambda!438604)))))

(declare-fun b!7226838 () Bool)

(declare-fun e!4332126 () Bool)

(declare-fun tp!2032435 () Bool)

(assert (=> b!7226838 (= e!4332126 tp!2032435)))

(declare-fun b!7226837 () Bool)

(declare-fun tp!2032436 () Bool)

(declare-fun inv!89063 (Context!14736) Bool)

(assert (=> b!7226837 (= e!4332127 (and (inv!89063 (h!76277 zl!166)) e!4332126 tp!2032436))))

(assert (= (and start!700802 res!2932353) b!7226836))

(assert (= b!7226837 b!7226838))

(assert (= (and start!700802 (is-Cons!69829 zl!166)) b!7226837))

(declare-fun m!7896138 () Bool)

(assert (=> b!7226836 m!7896138))

(declare-fun m!7896140 () Bool)

(assert (=> b!7226837 m!7896140))

(push 1)

(assert (not b!7226836))

(assert (not b!7226837))

(assert (not b!7226838))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2244629 () Bool)

(declare-fun res!2932361 () Bool)

(declare-fun e!4332142 () Bool)

(assert (=> d!2244629 (=> res!2932361 e!4332142)))

(assert (=> d!2244629 (= res!2932361 (is-Nil!69829 zl!166))))

(assert (=> d!2244629 (= (forall!17242 zl!166 lambda!438604) e!4332142)))

(declare-fun b!7226852 () Bool)

(declare-fun e!4332143 () Bool)

(assert (=> b!7226852 (= e!4332142 e!4332143)))

(declare-fun res!2932362 () Bool)

(assert (=> b!7226852 (=> (not res!2932362) (not e!4332143))))

(declare-fun dynLambda!28439 (Int Context!14736) Bool)

(assert (=> b!7226852 (= res!2932362 (dynLambda!28439 lambda!438604 (h!76277 zl!166)))))

(declare-fun b!7226853 () Bool)

(assert (=> b!7226853 (= e!4332143 (forall!17242 (t!383984 zl!166) lambda!438604))))

(assert (= (and d!2244629 (not res!2932361)) b!7226852))

(assert (= (and b!7226852 res!2932362) b!7226853))

(declare-fun b_lambda!276695 () Bool)

(assert (=> (not b_lambda!276695) (not b!7226852)))

(declare-fun m!7896146 () Bool)

(assert (=> b!7226852 m!7896146))

(declare-fun m!7896148 () Bool)

(assert (=> b!7226853 m!7896148))

(assert (=> b!7226836 d!2244629))

(declare-fun d!2244631 () Bool)

(declare-fun lambda!438610 () Int)

(declare-fun forall!17244 (List!69952 Int) Bool)

(assert (=> d!2244631 (= (inv!89063 (h!76277 zl!166)) (forall!17244 (exprs!7868 (h!76277 zl!166)) lambda!438610))))

(declare-fun bs!1902022 () Bool)

(assert (= bs!1902022 d!2244631))

(declare-fun m!7896150 () Bool)

(assert (=> bs!1902022 m!7896150))

(assert (=> b!7226837 d!2244631))

(declare-fun b!7226858 () Bool)

(declare-fun e!4332146 () Bool)

(declare-fun tp!2032447 () Bool)

(declare-fun tp!2032448 () Bool)

(assert (=> b!7226858 (= e!4332146 (and tp!2032447 tp!2032448))))

(assert (=> b!7226838 (= tp!2032435 e!4332146)))

(assert (= (and b!7226838 (is-Cons!69828 (exprs!7868 (h!76277 zl!166)))) b!7226858))

(declare-fun b!7226866 () Bool)

(declare-fun e!4332152 () Bool)

(declare-fun tp!2032453 () Bool)

(assert (=> b!7226866 (= e!4332152 tp!2032453)))

(declare-fun b!7226865 () Bool)

(declare-fun tp!2032454 () Bool)

(declare-fun e!4332151 () Bool)

(assert (=> b!7226865 (= e!4332151 (and (inv!89063 (h!76277 (t!383984 zl!166))) e!4332152 tp!2032454))))

(assert (=> b!7226837 (= tp!2032436 e!4332151)))

(assert (= b!7226865 b!7226866))

(assert (= (and b!7226837 (is-Cons!69829 (t!383984 zl!166))) b!7226865))

(declare-fun m!7896152 () Bool)

(assert (=> b!7226865 m!7896152))

(declare-fun b_lambda!276697 () Bool)

(assert (= b_lambda!276695 (or b!7226836 b_lambda!276697)))

(declare-fun bs!1902023 () Bool)

(declare-fun d!2244635 () Bool)

(assert (= bs!1902023 (and d!2244635 b!7226836)))

(declare-fun contextDepth!328 (Context!14736) Int)

(assert (=> bs!1902023 (= (dynLambda!28439 lambda!438604 (h!76277 zl!166)) (>= 0 (contextDepth!328 (h!76277 zl!166))))))

(declare-fun m!7896154 () Bool)

(assert (=> bs!1902023 m!7896154))

(assert (=> b!7226852 d!2244635))

(push 1)

(assert (not d!2244631))

(assert (not b!7226865))

(assert (not b!7226858))

(assert (not b!7226866))

(assert (not b!7226853))

(assert (not b_lambda!276697))

(assert (not bs!1902023))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

