; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!239856 () Bool)

(assert start!239856)

(declare-fun b_free!70569 () Bool)

(declare-fun b_next!71273 () Bool)

(assert (=> start!239856 (= b_free!70569 (not b_next!71273))))

(declare-fun tp!783392 () Bool)

(declare-fun b_and!185561 () Bool)

(assert (=> start!239856 (= tp!783392 b_and!185561)))

(declare-fun res!1042691 () Bool)

(declare-fun e!1560552 () Bool)

(assert (=> start!239856 (=> (not res!1042691) (not e!1560552))))

(declare-datatypes ((B!1867 0))(
  ( (B!1868 (val!8563 Int)) )
))
(declare-datatypes ((List!28720 0))(
  ( (Nil!28620) (Cons!28620 (h!34021 B!1867) (t!208695 List!28720)) )
))
(declare-fun l!3055 () List!28720)

(declare-fun p!1945 () Int)

(declare-fun forall!5872 (List!28720 Int) Bool)

(assert (=> start!239856 (= res!1042691 (not (forall!5872 l!3055 p!1945)))))

(assert (=> start!239856 e!1560552))

(declare-fun e!1560551 () Bool)

(assert (=> start!239856 e!1560551))

(assert (=> start!239856 tp!783392))

(declare-fun b!2460549 () Bool)

(declare-fun ListPrimitiveSize!162 (List!28720) Int)

(assert (=> b!2460549 (= e!1560552 (< (ListPrimitiveSize!162 l!3055) 0))))

(declare-fun b!2460550 () Bool)

(declare-fun tp_is_empty!11897 () Bool)

(declare-fun tp!783393 () Bool)

(assert (=> b!2460550 (= e!1560551 (and tp_is_empty!11897 tp!783393))))

(assert (= (and start!239856 res!1042691) b!2460549))

(assert (= (and start!239856 (is-Cons!28620 l!3055)) b!2460550))

(declare-fun m!2829927 () Bool)

(assert (=> start!239856 m!2829927))

(declare-fun m!2829929 () Bool)

(assert (=> b!2460549 m!2829929))

(push 1)

(assert (not start!239856))

(assert tp_is_empty!11897)

(assert (not b!2460549))

(assert (not b_next!71273))

(assert (not b!2460550))

(assert b_and!185561)

(check-sat)

(pop 1)

(push 1)

(assert b_and!185561)

(assert (not b_next!71273))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!708304 () Bool)

(declare-fun lt!880987 () Int)

(assert (=> d!708304 (>= lt!880987 0)))

(declare-fun e!1560561 () Int)

(assert (=> d!708304 (= lt!880987 e!1560561)))

(declare-fun c!392724 () Bool)

(assert (=> d!708304 (= c!392724 (is-Nil!28620 l!3055))))

(assert (=> d!708304 (= (ListPrimitiveSize!162 l!3055) lt!880987)))

(declare-fun b!2460561 () Bool)

(assert (=> b!2460561 (= e!1560561 0)))

(declare-fun b!2460562 () Bool)

(assert (=> b!2460562 (= e!1560561 (+ 1 (ListPrimitiveSize!162 (t!208695 l!3055))))))

(assert (= (and d!708304 c!392724) b!2460561))

(assert (= (and d!708304 (not c!392724)) b!2460562))

(declare-fun m!2829935 () Bool)

(assert (=> b!2460562 m!2829935))

(assert (=> b!2460549 d!708304))

(declare-fun d!708308 () Bool)

(declare-fun res!1042699 () Bool)

(declare-fun e!1560569 () Bool)

(assert (=> d!708308 (=> res!1042699 e!1560569)))

(assert (=> d!708308 (= res!1042699 (is-Nil!28620 l!3055))))

(assert (=> d!708308 (= (forall!5872 l!3055 p!1945) e!1560569)))

(declare-fun b!2460573 () Bool)

(declare-fun e!1560570 () Bool)

(assert (=> b!2460573 (= e!1560569 e!1560570)))

(declare-fun res!1042700 () Bool)

(assert (=> b!2460573 (=> (not res!1042700) (not e!1560570))))

(declare-fun dynLambda!12277 (Int B!1867) Bool)

(assert (=> b!2460573 (= res!1042700 (dynLambda!12277 p!1945 (h!34021 l!3055)))))

(declare-fun b!2460574 () Bool)

(assert (=> b!2460574 (= e!1560570 (forall!5872 (t!208695 l!3055) p!1945))))

(assert (= (and d!708308 (not res!1042699)) b!2460573))

(assert (= (and b!2460573 res!1042700) b!2460574))

(declare-fun b_lambda!75231 () Bool)

(assert (=> (not b_lambda!75231) (not b!2460573)))

(declare-fun t!208698 () Bool)

(declare-fun tb!138837 () Bool)

(assert (=> (and start!239856 (= p!1945 p!1945) t!208698) tb!138837))

(declare-fun result!171372 () Bool)

(assert (=> tb!138837 (= result!171372 true)))

(assert (=> b!2460573 t!208698))

(declare-fun b_and!185565 () Bool)

(assert (= b_and!185561 (and (=> t!208698 result!171372) b_and!185565)))

(declare-fun m!2829939 () Bool)

(assert (=> b!2460573 m!2829939))

(declare-fun m!2829941 () Bool)

(assert (=> b!2460574 m!2829941))

(assert (=> start!239856 d!708308))

(declare-fun b!2460581 () Bool)

(declare-fun e!1560575 () Bool)

(declare-fun tp!783402 () Bool)

(assert (=> b!2460581 (= e!1560575 (and tp_is_empty!11897 tp!783402))))

(assert (=> b!2460550 (= tp!783393 e!1560575)))

(assert (= (and b!2460550 (is-Cons!28620 (t!208695 l!3055))) b!2460581))

(declare-fun b_lambda!75233 () Bool)

(assert (= b_lambda!75231 (or (and start!239856 b_free!70569) b_lambda!75233)))

(push 1)

(assert tp_is_empty!11897)

(assert (not b!2460581))

(assert b_and!185565)

(assert (not b_lambda!75233))

(assert (not b!2460574))

(assert (not b_next!71273))

(assert (not b!2460562))

(check-sat)

(pop 1)

(push 1)

(assert b_and!185565)

(assert (not b_next!71273))

(check-sat)

(pop 1)

