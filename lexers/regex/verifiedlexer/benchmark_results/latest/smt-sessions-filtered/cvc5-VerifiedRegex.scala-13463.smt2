; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727624 () Bool)

(assert start!727624)

(declare-fun b_free!134391 () Bool)

(declare-fun b_next!135181 () Bool)

(assert (=> start!727624 (= b_free!134391 (not b_next!135181))))

(declare-fun tp!2179930 () Bool)

(declare-fun b_and!352087 () Bool)

(assert (=> start!727624 (= tp!2179930 b_and!352087)))

(declare-fun b!7510104 () Bool)

(declare-fun e!4478258 () Bool)

(declare-datatypes ((B!3927 0))(
  ( (B!3928 (val!30323 Int)) )
))
(declare-datatypes ((List!72617 0))(
  ( (Nil!72493) (Cons!72493 (h!78941 B!3927) (t!387244 List!72617)) )
))
(declare-fun l!2942 () List!72617)

(assert (=> b!7510104 (= e!4478258 (not (is-Cons!72493 l!2942)))))

(declare-fun b!7510102 () Bool)

(declare-fun res!3013022 () Bool)

(assert (=> b!7510102 (=> (not res!3013022) (not e!4478258))))

(declare-fun e!4478259 () Bool)

(assert (=> b!7510102 (= res!3013022 e!4478259)))

(declare-fun res!3013020 () Bool)

(assert (=> b!7510102 (=> res!3013020 e!4478259)))

(assert (=> b!7510102 (= res!3013020 (not (is-Cons!72493 l!2942)))))

(declare-fun res!3013021 () Bool)

(assert (=> start!727624 (=> (not res!3013021) (not e!4478258))))

(declare-fun p!1842 () Int)

(declare-fun exists!4928 (List!72617 Int) Bool)

(assert (=> start!727624 (= res!3013021 (exists!4928 l!2942 p!1842))))

(assert (=> start!727624 e!4478258))

(declare-fun e!4478257 () Bool)

(assert (=> start!727624 e!4478257))

(assert (=> start!727624 tp!2179930))

(declare-fun b!7510105 () Bool)

(declare-fun tp_is_empty!49819 () Bool)

(declare-fun tp!2179929 () Bool)

(assert (=> b!7510105 (= e!4478257 (and tp_is_empty!49819 tp!2179929))))

(declare-fun b!7510103 () Bool)

(declare-fun dynLambda!29832 (Int B!3927) Bool)

(assert (=> b!7510103 (= e!4478259 (not (dynLambda!29832 p!1842 (h!78941 l!2942))))))

(assert (= (and start!727624 res!3013021) b!7510102))

(assert (= (and b!7510102 (not res!3013020)) b!7510103))

(assert (= (and b!7510102 res!3013022) b!7510104))

(assert (= (and start!727624 (is-Cons!72493 l!2942)) b!7510105))

(declare-fun b_lambda!288097 () Bool)

(assert (=> (not b_lambda!288097) (not b!7510103)))

(declare-fun t!387243 () Bool)

(declare-fun tb!262507 () Bool)

(assert (=> (and start!727624 (= p!1842 p!1842) t!387243) tb!262507))

(declare-fun result!356294 () Bool)

(assert (=> tb!262507 (= result!356294 true)))

(assert (=> b!7510103 t!387243))

(declare-fun b_and!352089 () Bool)

(assert (= b_and!352087 (and (=> t!387243 result!356294) b_and!352089)))

(declare-fun m!8093986 () Bool)

(assert (=> start!727624 m!8093986))

(declare-fun m!8093988 () Bool)

(assert (=> b!7510103 m!8093988))

(push 1)

(assert (not b_lambda!288097))

(assert (not b_next!135181))

(assert tp_is_empty!49819)

(assert (not start!727624))

(assert b_and!352089)

(assert (not b!7510105))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352089)

(assert (not b_next!135181))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!288101 () Bool)

(assert (= b_lambda!288097 (or (and start!727624 b_free!134391) b_lambda!288101)))

(push 1)

(assert (not b_next!135181))

(assert tp_is_empty!49819)

(assert (not start!727624))

(assert b_and!352089)

(assert (not b_lambda!288101))

(assert (not b!7510105))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352089)

(assert (not b_next!135181))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2306260 () Bool)

(assert (=> d!2306260 true))

(declare-fun order!29717 () Int)

(declare-fun lambda!466164 () Int)

(declare-fun dynLambda!29834 (Int Int) Int)

(assert (=> d!2306260 (< (dynLambda!29834 order!29717 p!1842) (dynLambda!29834 order!29717 lambda!466164))))

(declare-fun forall!18372 (List!72617 Int) Bool)

(assert (=> d!2306260 (= (exists!4928 l!2942 p!1842) (not (forall!18372 l!2942 lambda!466164)))))

(declare-fun bs!1939108 () Bool)

(assert (= bs!1939108 d!2306260))

(declare-fun m!8093994 () Bool)

(assert (=> bs!1939108 m!8093994))

(assert (=> start!727624 d!2306260))

(declare-fun b!7510124 () Bool)

(declare-fun e!4478271 () Bool)

(declare-fun tp!2179939 () Bool)

(assert (=> b!7510124 (= e!4478271 (and tp_is_empty!49819 tp!2179939))))

(assert (=> b!7510105 (= tp!2179929 e!4478271)))

(assert (= (and b!7510105 (is-Cons!72493 (t!387244 l!2942))) b!7510124))

(push 1)

(assert (not d!2306260))

(assert (not b!7510124))

(assert (not b_next!135181))

(assert tp_is_empty!49819)

(assert b_and!352089)

(assert (not b_lambda!288101))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352089)

(assert (not b_next!135181))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2306264 () Bool)

(declare-fun res!3013036 () Bool)

(declare-fun e!4478279 () Bool)

(assert (=> d!2306264 (=> res!3013036 e!4478279)))

(assert (=> d!2306264 (= res!3013036 (is-Nil!72493 l!2942))))

(assert (=> d!2306264 (= (forall!18372 l!2942 lambda!466164) e!4478279)))

(declare-fun b!7510136 () Bool)

(declare-fun e!4478280 () Bool)

(assert (=> b!7510136 (= e!4478279 e!4478280)))

(declare-fun res!3013037 () Bool)

(assert (=> b!7510136 (=> (not res!3013037) (not e!4478280))))

(assert (=> b!7510136 (= res!3013037 (dynLambda!29832 lambda!466164 (h!78941 l!2942)))))

(declare-fun b!7510137 () Bool)

(assert (=> b!7510137 (= e!4478280 (forall!18372 (t!387244 l!2942) lambda!466164))))

(assert (= (and d!2306264 (not res!3013036)) b!7510136))

(assert (= (and b!7510136 res!3013037) b!7510137))

(declare-fun b_lambda!288105 () Bool)

(assert (=> (not b_lambda!288105) (not b!7510136)))

(declare-fun m!8093998 () Bool)

(assert (=> b!7510136 m!8093998))

(declare-fun m!8094000 () Bool)

(assert (=> b!7510137 m!8094000))

(assert (=> d!2306260 d!2306264))

(declare-fun b!7510138 () Bool)

(declare-fun e!4478281 () Bool)

(declare-fun tp!2179943 () Bool)

(assert (=> b!7510138 (= e!4478281 (and tp_is_empty!49819 tp!2179943))))

(assert (=> b!7510124 (= tp!2179939 e!4478281)))

(assert (= (and b!7510124 (is-Cons!72493 (t!387244 (t!387244 l!2942)))) b!7510138))

(declare-fun b_lambda!288107 () Bool)

(assert (= b_lambda!288101 (or (and d!2306260 (= lambda!466164 p!1842)) b_lambda!288107)))

(declare-fun bs!1939110 () Bool)

(declare-fun d!2306266 () Bool)

(assert (= bs!1939110 (and d!2306266 d!2306260)))

(assert (=> bs!1939110 (= (dynLambda!29832 lambda!466164 (h!78941 l!2942)) (not (dynLambda!29832 p!1842 (h!78941 l!2942))))))

(declare-fun b_lambda!288111 () Bool)

(assert (=> (not b_lambda!288111) (not bs!1939110)))

(assert (=> bs!1939110 t!387243))

(declare-fun b_and!352095 () Bool)

(assert (= b_and!352089 (and (=> t!387243 result!356294) b_and!352095)))

(assert (=> bs!1939110 m!8093988))

(assert (=> (and d!2306260 (= lambda!466164 p!1842) b!7510103) d!2306266))

(declare-fun b_lambda!288109 () Bool)

(assert (= b_lambda!288105 (or d!2306260 b_lambda!288109)))

(declare-fun bs!1939111 () Bool)

(declare-fun d!2306268 () Bool)

(assert (= bs!1939111 (and d!2306268 d!2306260)))

(assert (=> bs!1939111 (= (dynLambda!29832 lambda!466164 (h!78941 l!2942)) (not (dynLambda!29832 p!1842 (h!78941 l!2942))))))

(declare-fun b_lambda!288113 () Bool)

(assert (=> (not b_lambda!288113) (not bs!1939111)))

(assert (=> bs!1939111 t!387243))

(declare-fun b_and!352097 () Bool)

(assert (= b_and!352095 (and (=> t!387243 result!356294) b_and!352097)))

(assert (=> bs!1939111 m!8093988))

(assert (=> b!7510136 d!2306268))

(push 1)

(assert (not b_lambda!288113))

(assert (not b_lambda!288111))

(assert (not b_next!135181))

(assert tp_is_empty!49819)

(assert (not b_lambda!288107))

(assert (not b_lambda!288109))

(assert b_and!352097)

(assert (not b!7510138))

(assert (not b!7510137))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352097)

(assert (not b_next!135181))

(check-sat)

(pop 1)

