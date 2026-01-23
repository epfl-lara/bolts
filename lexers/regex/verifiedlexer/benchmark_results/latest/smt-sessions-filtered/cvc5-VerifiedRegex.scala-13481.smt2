; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!727934 () Bool)

(assert start!727934)

(declare-fun b_free!134431 () Bool)

(declare-fun b_next!135221 () Bool)

(assert (=> start!727934 (= b_free!134431 (not b_next!135221))))

(declare-fun tp!2184257 () Bool)

(declare-fun b_and!352255 () Bool)

(assert (=> start!727934 (= tp!2184257 b_and!352255)))

(declare-fun b!7520216 () Bool)

(assert (=> b!7520216 true))

(declare-fun order!29753 () Int)

(declare-fun p!2194 () Int)

(declare-fun lambda!466376 () Int)

(declare-fun dynLambda!29875 (Int Int) Int)

(assert (=> b!7520216 (< (dynLambda!29875 order!29753 p!2194) (dynLambda!29875 order!29753 lambda!466376))))

(declare-fun b!7520212 () Bool)

(declare-fun e!4482951 () Bool)

(declare-datatypes ((B!3967 0))(
  ( (B!3968 (val!30359 Int)) )
))
(declare-datatypes ((List!72667 0))(
  ( (Nil!72543) (Cons!72543 (h!78991 B!3967) (t!387358 List!72667)) )
))
(declare-fun l!3837 () List!72667)

(declare-fun dynLambda!29876 (Int B!3967) Bool)

(assert (=> b!7520212 (= e!4482951 (dynLambda!29876 p!2194 (h!78991 l!3837)))))

(declare-fun b!7520213 () Bool)

(declare-fun res!3014382 () Bool)

(declare-fun e!4482950 () Bool)

(assert (=> b!7520213 (=> (not res!3014382) (not e!4482950))))

(assert (=> b!7520213 (= res!3014382 e!4482951)))

(declare-fun res!3014383 () Bool)

(assert (=> b!7520213 (=> res!3014383 e!4482951)))

(assert (=> b!7520213 (= res!3014383 (not (is-Cons!72543 l!3837)))))

(declare-fun b!7520214 () Bool)

(declare-fun e!4482948 () Bool)

(declare-fun tp_is_empty!49877 () Bool)

(declare-fun tp!2184258 () Bool)

(assert (=> b!7520214 (= e!4482948 (and tp_is_empty!49877 tp!2184258))))

(declare-fun b!7520215 () Bool)

(declare-fun res!3014385 () Bool)

(assert (=> b!7520215 (=> (not res!3014385) (not e!4482950))))

(assert (=> b!7520215 (= res!3014385 (is-Nil!72543 l!3837))))

(declare-fun b!7520217 () Bool)

(declare-fun e!4482949 () Bool)

(assert (=> b!7520217 (= e!4482949 (not (dynLambda!29876 p!2194 (h!78991 l!3837))))))

(declare-fun b!7520218 () Bool)

(declare-fun res!3014384 () Bool)

(assert (=> b!7520218 (=> (not res!3014384) (not e!4482950))))

(assert (=> b!7520218 (= res!3014384 e!4482949)))

(declare-fun res!3014381 () Bool)

(assert (=> b!7520218 (=> res!3014381 e!4482949)))

(assert (=> b!7520218 (= res!3014381 (not (is-Cons!72543 l!3837)))))

(declare-fun res!3014380 () Bool)

(assert (=> start!727934 (=> (not res!3014380) (not e!4482950))))

(declare-fun forall!18397 (List!72667 Int) Bool)

(assert (=> start!727934 (= res!3014380 (not (forall!18397 l!3837 p!2194)))))

(assert (=> start!727934 e!4482950))

(assert (=> start!727934 e!4482948))

(assert (=> start!727934 tp!2184257))

(declare-fun exists!4948 (List!72667 Int) Bool)

(assert (=> b!7520216 (= e!4482950 (not (exists!4948 l!3837 lambda!466376)))))

(assert (= (and start!727934 res!3014380) b!7520213))

(assert (= (and b!7520213 (not res!3014383)) b!7520212))

(assert (= (and b!7520213 res!3014382) b!7520218))

(assert (= (and b!7520218 (not res!3014381)) b!7520217))

(assert (= (and b!7520218 res!3014384) b!7520215))

(assert (= (and b!7520215 res!3014385) b!7520216))

(assert (= (and start!727934 (is-Cons!72543 l!3837)) b!7520214))

(declare-fun b_lambda!288771 () Bool)

(assert (=> (not b_lambda!288771) (not b!7520212)))

(declare-fun t!387357 () Bool)

(declare-fun tb!262571 () Bool)

(assert (=> (and start!727934 (= p!2194 p!2194) t!387357) tb!262571))

(declare-fun result!356428 () Bool)

(assert (=> tb!262571 (= result!356428 true)))

(assert (=> b!7520212 t!387357))

(declare-fun b_and!352257 () Bool)

(assert (= b_and!352255 (and (=> t!387357 result!356428) b_and!352257)))

(declare-fun b_lambda!288773 () Bool)

(assert (=> (not b_lambda!288773) (not b!7520217)))

(assert (=> b!7520217 t!387357))

(declare-fun b_and!352259 () Bool)

(assert (= b_and!352257 (and (=> t!387357 result!356428) b_and!352259)))

(declare-fun m!8099962 () Bool)

(assert (=> b!7520212 m!8099962))

(assert (=> b!7520217 m!8099962))

(declare-fun m!8099964 () Bool)

(assert (=> start!727934 m!8099964))

(declare-fun m!8099966 () Bool)

(assert (=> b!7520216 m!8099966))

(push 1)

(assert b_and!352259)

(assert tp_is_empty!49877)

(assert (not b_next!135221))

(assert (not b_lambda!288771))

(assert (not b!7520216))

(assert (not start!727934))

(assert (not b!7520214))

(assert (not b_lambda!288773))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352259)

(assert (not b_next!135221))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!288779 () Bool)

(assert (= b_lambda!288773 (or (and start!727934 b_free!134431) b_lambda!288779)))

(declare-fun b_lambda!288781 () Bool)

(assert (= b_lambda!288771 (or (and start!727934 b_free!134431) b_lambda!288781)))

(push 1)

(assert b_and!352259)

(assert (not b_lambda!288781))

(assert tp_is_empty!49877)

(assert (not b_next!135221))

(assert (not b!7520216))

(assert (not b_lambda!288779))

(assert (not b!7520214))

(assert (not start!727934))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352259)

(assert (not b_next!135221))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!2308858 () Bool)

(declare-fun res!3014408 () Bool)

(declare-fun e!4482970 () Bool)

(assert (=> d!2308858 (=> res!3014408 e!4482970)))

(assert (=> d!2308858 (= res!3014408 (is-Nil!72543 l!3837))))

(assert (=> d!2308858 (= (forall!18397 l!3837 p!2194) e!4482970)))

(declare-fun b!7520248 () Bool)

(declare-fun e!4482971 () Bool)

(assert (=> b!7520248 (= e!4482970 e!4482971)))

(declare-fun res!3014409 () Bool)

(assert (=> b!7520248 (=> (not res!3014409) (not e!4482971))))

(assert (=> b!7520248 (= res!3014409 (dynLambda!29876 p!2194 (h!78991 l!3837)))))

(declare-fun b!7520249 () Bool)

(assert (=> b!7520249 (= e!4482971 (forall!18397 (t!387358 l!3837) p!2194))))

(assert (= (and d!2308858 (not res!3014408)) b!7520248))

(assert (= (and b!7520248 res!3014409) b!7520249))

(declare-fun b_lambda!288787 () Bool)

(assert (=> (not b_lambda!288787) (not b!7520248)))

(assert (=> b!7520248 t!387357))

(declare-fun b_and!352267 () Bool)

(assert (= b_and!352259 (and (=> t!387357 result!356428) b_and!352267)))

(assert (=> b!7520248 m!8099962))

(declare-fun m!8099974 () Bool)

(assert (=> b!7520249 m!8099974))

(assert (=> start!727934 d!2308858))

(declare-fun bs!1939596 () Bool)

(declare-fun d!2308860 () Bool)

(assert (= bs!1939596 (and d!2308860 b!7520216)))

(declare-fun lambda!466382 () Int)

(assert (=> bs!1939596 (= (= lambda!466376 p!2194) (= lambda!466382 lambda!466376))))

(assert (=> d!2308860 true))

(assert (=> d!2308860 (< (dynLambda!29875 order!29753 lambda!466376) (dynLambda!29875 order!29753 lambda!466382))))

(assert (=> d!2308860 (= (exists!4948 l!3837 lambda!466376) (not (forall!18397 l!3837 lambda!466382)))))

(declare-fun bs!1939597 () Bool)

(assert (= bs!1939597 d!2308860))

(declare-fun m!8099976 () Bool)

(assert (=> bs!1939597 m!8099976))

(assert (=> b!7520216 d!2308860))

(declare-fun b!7520254 () Bool)

(declare-fun e!4482974 () Bool)

(declare-fun tp!2184267 () Bool)

(assert (=> b!7520254 (= e!4482974 (and tp_is_empty!49877 tp!2184267))))

(assert (=> b!7520214 (= tp!2184258 e!4482974)))

(assert (= (and b!7520214 (is-Cons!72543 (t!387358 l!3837))) b!7520254))

(declare-fun b_lambda!288789 () Bool)

(assert (= b_lambda!288787 (or (and start!727934 b_free!134431) (and d!2308860 (= lambda!466382 p!2194)) b_lambda!288789)))

(declare-fun bs!1939598 () Bool)

(declare-fun d!2308862 () Bool)

(assert (= bs!1939598 (and d!2308862 d!2308860)))

(assert (=> bs!1939598 (= (dynLambda!29876 lambda!466382 (h!78991 l!3837)) (not (dynLambda!29876 lambda!466376 (h!78991 l!3837))))))

(declare-fun b_lambda!288791 () Bool)

(assert (=> (not b_lambda!288791) (not bs!1939598)))

(declare-fun m!8099978 () Bool)

(assert (=> bs!1939598 m!8099978))

(assert (=> (and d!2308860 (= lambda!466382 p!2194) b!7520248) d!2308862))

(push 1)

(assert (not d!2308860))

(assert (not b_lambda!288781))

(assert tp_is_empty!49877)

(assert b_and!352267)

(assert (not b_lambda!288789))

(assert (not b_lambda!288779))

(assert (not b!7520254))

(assert (not b_lambda!288791))

(assert (not b!7520249))

(assert (not b_next!135221))

(check-sat)

(pop 1)

(push 1)

(assert b_and!352267)

(assert (not b_next!135221))

(check-sat)

(pop 1)

