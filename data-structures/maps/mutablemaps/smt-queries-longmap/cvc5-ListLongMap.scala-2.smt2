; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!112 () Bool)

(assert start!112)

(declare-fun b_free!7 () Bool)

(declare-fun b_next!7 () Bool)

(assert (=> start!112 (= b_free!7 (not b_next!7))))

(declare-fun tp!13 () Bool)

(declare-fun b_and!19 () Bool)

(assert (=> start!112 (= tp!13 b_and!19)))

(declare-fun res!4310 () Bool)

(declare-fun e!240 () Bool)

(assert (=> start!112 (=> (not res!4310) (not e!240))))

(declare-datatypes ((B!242 0))(
  ( (B!243 (val!3 Int)) )
))
(declare-datatypes ((tuple2!6 0))(
  ( (tuple2!7 (_1!3 (_ BitVec 64)) (_2!3 B!242)) )
))
(declare-datatypes ((List!12 0))(
  ( (Nil!9) (Cons!8 (h!574 tuple2!6) (t!2019 List!12)) )
))
(declare-datatypes ((ListLongMap!11 0))(
  ( (ListLongMap!12 (toList!21 List!12)) )
))
(declare-fun lm!258 () ListLongMap!11)

(declare-fun p!318 () Int)

(declare-fun forall!8 (List!12 Int) Bool)

(assert (=> start!112 (= res!4310 (forall!8 (toList!21 lm!258) p!318))))

(assert (=> start!112 e!240))

(declare-fun e!239 () Bool)

(declare-fun inv!23 (ListLongMap!11) Bool)

(assert (=> start!112 (and (inv!23 lm!258) e!239)))

(assert (=> start!112 tp!13))

(declare-fun b!1681 () Bool)

(declare-fun res!4309 () Bool)

(assert (=> b!1681 (=> (not res!4309) (not e!240))))

(declare-fun isEmpty!10 (ListLongMap!11) Bool)

(assert (=> b!1681 (= res!4309 (not (isEmpty!10 lm!258)))))

(declare-fun b!1682 () Bool)

(assert (=> b!1682 (= e!240 (= (toList!21 lm!258) Nil!9))))

(declare-fun b!1683 () Bool)

(declare-fun tp!14 () Bool)

(assert (=> b!1683 (= e!239 tp!14)))

(assert (= (and start!112 res!4310) b!1681))

(assert (= (and b!1681 res!4309) b!1682))

(assert (= start!112 b!1683))

(declare-fun m!387 () Bool)

(assert (=> start!112 m!387))

(declare-fun m!389 () Bool)

(assert (=> start!112 m!389))

(declare-fun m!391 () Bool)

(assert (=> b!1681 m!391))

(push 1)

(assert (not b_next!7))

(assert (not b!1681))

(assert b_and!19)

(assert (not start!112))

(assert (not b!1683))

(check-sat)

(pop 1)

(push 1)

(assert b_and!19)

(assert (not b_next!7))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!125 () Bool)

(declare-fun isEmpty!13 (List!12) Bool)

(assert (=> d!125 (= (isEmpty!10 lm!258) (isEmpty!13 (toList!21 lm!258)))))

(declare-fun bs!30 () Bool)

(assert (= bs!30 d!125))

(declare-fun m!405 () Bool)

(assert (=> bs!30 m!405))

(assert (=> b!1681 d!125))

(declare-fun d!127 () Bool)

(declare-fun res!4339 () Bool)

(declare-fun e!269 () Bool)

(assert (=> d!127 (=> res!4339 e!269)))

(assert (=> d!127 (= res!4339 (is-Nil!9 (toList!21 lm!258)))))

(assert (=> d!127 (= (forall!8 (toList!21 lm!258) p!318) e!269)))

(declare-fun b!1718 () Bool)

(declare-fun e!270 () Bool)

(assert (=> b!1718 (= e!269 e!270)))

(declare-fun res!4340 () Bool)

(assert (=> b!1718 (=> (not res!4340) (not e!270))))

(declare-fun dynLambda!4 (Int tuple2!6) Bool)

(assert (=> b!1718 (= res!4340 (dynLambda!4 p!318 (h!574 (toList!21 lm!258))))))

(declare-fun b!1719 () Bool)

(assert (=> b!1719 (= e!270 (forall!8 (t!2019 (toList!21 lm!258)) p!318))))

(assert (= (and d!127 (not res!4339)) b!1718))

(assert (= (and b!1718 res!4340) b!1719))

(declare-fun b_lambda!29 () Bool)

(assert (=> (not b_lambda!29) (not b!1718)))

(declare-fun t!2027 () Bool)

(declare-fun tb!11 () Bool)

(assert (=> (and start!112 (= p!318 p!318) t!2027) tb!11))

(declare-fun result!17 () Bool)

(assert (=> tb!11 (= result!17 true)))

(assert (=> b!1718 t!2027))

(declare-fun b_and!29 () Bool)

(assert (= b_and!19 (and (=> t!2027 result!17) b_and!29)))

(declare-fun m!417 () Bool)

(assert (=> b!1718 m!417))

(declare-fun m!419 () Bool)

(assert (=> b!1719 m!419))

(assert (=> start!112 d!127))

(declare-fun d!135 () Bool)

(declare-fun isStrictlySorted!2 (List!12) Bool)

(assert (=> d!135 (= (inv!23 lm!258) (isStrictlySorted!2 (toList!21 lm!258)))))

(declare-fun bs!34 () Bool)

(assert (= bs!34 d!135))

(declare-fun m!425 () Bool)

(assert (=> bs!34 m!425))

(assert (=> start!112 d!135))

(declare-fun b!1733 () Bool)

(declare-fun e!277 () Bool)

(declare-fun tp_is_empty!11 () Bool)

(declare-fun tp!33 () Bool)

(assert (=> b!1733 (= e!277 (and tp_is_empty!11 tp!33))))

(assert (=> b!1683 (= tp!14 e!277)))

(assert (= (and b!1683 (is-Cons!8 (toList!21 lm!258))) b!1733))

(declare-fun b_lambda!32 () Bool)

(assert (= b_lambda!29 (or (and start!112 b_free!7) b_lambda!32)))

(push 1)

(assert (not d!125))

(assert (not b_next!7))

(assert (not d!135))

(assert (not b!1733))

(assert b_and!29)

(assert (not b_lambda!32))

(assert tp_is_empty!11)

(assert (not b!1719))

(check-sat)

(pop 1)

(push 1)

(assert b_and!29)

(assert (not b_next!7))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!139 () Bool)

(declare-fun res!4341 () Bool)

(declare-fun e!280 () Bool)

(assert (=> d!139 (=> res!4341 e!280)))

(assert (=> d!139 (= res!4341 (is-Nil!9 (t!2019 (toList!21 lm!258))))))

(assert (=> d!139 (= (forall!8 (t!2019 (toList!21 lm!258)) p!318) e!280)))

(declare-fun b!1735 () Bool)

(declare-fun e!281 () Bool)

(assert (=> b!1735 (= e!280 e!281)))

(declare-fun res!4342 () Bool)

(assert (=> b!1735 (=> (not res!4342) (not e!281))))

(assert (=> b!1735 (= res!4342 (dynLambda!4 p!318 (h!574 (t!2019 (toList!21 lm!258)))))))

(declare-fun b!1736 () Bool)

(assert (=> b!1736 (= e!281 (forall!8 (t!2019 (t!2019 (toList!21 lm!258))) p!318))))

(assert (= (and d!139 (not res!4341)) b!1735))

(assert (= (and b!1735 res!4342) b!1736))

(declare-fun b_lambda!37 () Bool)

(assert (=> (not b_lambda!37) (not b!1735)))

(declare-fun t!2029 () Bool)

(declare-fun tb!13 () Bool)

(assert (=> (and start!112 (= p!318 p!318) t!2029) tb!13))

(declare-fun result!25 () Bool)

(assert (=> tb!13 (= result!25 true)))

(assert (=> b!1735 t!2029))

(declare-fun b_and!31 () Bool)

(assert (= b_and!29 (and (=> t!2029 result!25) b_and!31)))

(declare-fun m!429 () Bool)

(assert (=> b!1735 m!429))

(declare-fun m!431 () Bool)

(assert (=> b!1736 m!431))

(assert (=> b!1719 d!139))

(declare-fun d!143 () Bool)

(assert (=> d!143 (= (isEmpty!13 (toList!21 lm!258)) (is-Nil!9 (toList!21 lm!258)))))

(assert (=> d!125 d!143))

(declare-fun d!149 () Bool)

(declare-fun res!4355 () Bool)

(declare-fun e!295 () Bool)

(assert (=> d!149 (=> res!4355 e!295)))

(assert (=> d!149 (= res!4355 (or (is-Nil!9 (toList!21 lm!258)) (is-Nil!9 (t!2019 (toList!21 lm!258)))))))

(assert (=> d!149 (= (isStrictlySorted!2 (toList!21 lm!258)) e!295)))

(declare-fun b!1750 () Bool)

(declare-fun e!296 () Bool)

(assert (=> b!1750 (= e!295 e!296)))

(declare-fun res!4356 () Bool)

(assert (=> b!1750 (=> (not res!4356) (not e!296))))

(assert (=> b!1750 (= res!4356 (bvslt (_1!3 (h!574 (toList!21 lm!258))) (_1!3 (h!574 (t!2019 (toList!21 lm!258))))))))

(declare-fun b!1751 () Bool)

(assert (=> b!1751 (= e!296 (isStrictlySorted!2 (t!2019 (toList!21 lm!258))))))

(assert (= (and d!149 (not res!4355)) b!1750))

(assert (= (and b!1750 res!4356) b!1751))

(declare-fun m!439 () Bool)

(assert (=> b!1751 m!439))

(assert (=> d!135 d!149))

(declare-fun b!1754 () Bool)

(declare-fun e!299 () Bool)

(declare-fun tp!37 () Bool)

