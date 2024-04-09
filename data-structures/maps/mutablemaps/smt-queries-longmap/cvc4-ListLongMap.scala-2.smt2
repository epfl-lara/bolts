; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!116 () Bool)

(assert start!116)

(declare-fun b_free!11 () Bool)

(declare-fun b_next!11 () Bool)

(assert (=> start!116 (= b_free!11 (not b_next!11))))

(declare-fun tp!26 () Bool)

(declare-fun b_and!23 () Bool)

(assert (=> start!116 (= tp!26 b_and!23)))

(declare-fun res!4322 () Bool)

(declare-fun e!252 () Bool)

(assert (=> start!116 (=> (not res!4322) (not e!252))))

(declare-datatypes ((B!246 0))(
  ( (B!247 (val!5 Int)) )
))
(declare-datatypes ((tuple2!10 0))(
  ( (tuple2!11 (_1!5 (_ BitVec 64)) (_2!5 B!246)) )
))
(declare-datatypes ((List!14 0))(
  ( (Nil!11) (Cons!10 (h!576 tuple2!10) (t!2021 List!14)) )
))
(declare-datatypes ((ListLongMap!15 0))(
  ( (ListLongMap!16 (toList!23 List!14)) )
))
(declare-fun lm!258 () ListLongMap!15)

(declare-fun p!318 () Int)

(declare-fun forall!10 (List!14 Int) Bool)

(assert (=> start!116 (= res!4322 (forall!10 (toList!23 lm!258) p!318))))

(assert (=> start!116 e!252))

(declare-fun e!251 () Bool)

(declare-fun inv!25 (ListLongMap!15) Bool)

(assert (=> start!116 (and (inv!25 lm!258) e!251)))

(assert (=> start!116 tp!26))

(declare-fun b!1699 () Bool)

(declare-fun res!4321 () Bool)

(assert (=> b!1699 (=> (not res!4321) (not e!252))))

(declare-fun isEmpty!12 (ListLongMap!15) Bool)

(assert (=> b!1699 (= res!4321 (not (isEmpty!12 lm!258)))))

(declare-fun b!1700 () Bool)

(assert (=> b!1700 (= e!252 (= (toList!23 lm!258) Nil!11))))

(declare-fun b!1701 () Bool)

(declare-fun tp!25 () Bool)

(assert (=> b!1701 (= e!251 tp!25)))

(assert (= (and start!116 res!4322) b!1699))

(assert (= (and b!1699 res!4321) b!1700))

(assert (= start!116 b!1701))

(declare-fun m!399 () Bool)

(assert (=> start!116 m!399))

(declare-fun m!401 () Bool)

(assert (=> start!116 m!401))

(declare-fun m!403 () Bool)

(assert (=> b!1699 m!403))

(push 1)

(assert (not b!1699))

(assert b_and!23)

(assert (not b!1701))

(assert (not start!116))

(assert (not b_next!11))

(check-sat)

(pop 1)

(push 1)

(assert b_and!23)

(assert (not b_next!11))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!123 () Bool)

(declare-fun res!4333 () Bool)

(declare-fun e!263 () Bool)

(assert (=> d!123 (=> res!4333 e!263)))

(assert (=> d!123 (= res!4333 (is-Nil!11 (toList!23 lm!258)))))

(assert (=> d!123 (= (forall!10 (toList!23 lm!258) p!318) e!263)))

(declare-fun b!1712 () Bool)

(declare-fun e!264 () Bool)

(assert (=> b!1712 (= e!263 e!264)))

(declare-fun res!4334 () Bool)

(assert (=> b!1712 (=> (not res!4334) (not e!264))))

(declare-fun dynLambda!3 (Int tuple2!10) Bool)

(assert (=> b!1712 (= res!4334 (dynLambda!3 p!318 (h!576 (toList!23 lm!258))))))

(declare-fun b!1713 () Bool)

(assert (=> b!1713 (= e!264 (forall!10 (t!2021 (toList!23 lm!258)) p!318))))

(assert (= (and d!123 (not res!4333)) b!1712))

(assert (= (and b!1712 res!4334) b!1713))

(declare-fun b_lambda!27 () Bool)

(assert (=> (not b_lambda!27) (not b!1712)))

(declare-fun t!2025 () Bool)

(declare-fun tb!9 () Bool)

(assert (=> (and start!116 (= p!318 p!318) t!2025) tb!9))

(declare-fun result!15 () Bool)

(assert (=> tb!9 (= result!15 true)))

(assert (=> b!1712 t!2025))

(declare-fun b_and!27 () Bool)

(assert (= b_and!23 (and (=> t!2025 result!15) b_and!27)))

(declare-fun m!411 () Bool)

(assert (=> b!1712 m!411))

(declare-fun m!413 () Bool)

(assert (=> b!1713 m!413))

(assert (=> start!116 d!123))

(declare-fun d!131 () Bool)

(declare-fun isStrictlySorted!1 (List!14) Bool)

(assert (=> d!131 (= (inv!25 lm!258) (isStrictlySorted!1 (toList!23 lm!258)))))

(declare-fun bs!32 () Bool)

(assert (= bs!32 d!131))

(declare-fun m!421 () Bool)

(assert (=> bs!32 m!421))

(assert (=> start!116 d!131))

(declare-fun d!137 () Bool)

(declare-fun isEmpty!14 (List!14) Bool)

(assert (=> d!137 (= (isEmpty!12 lm!258) (isEmpty!14 (toList!23 lm!258)))))

(declare-fun bs!35 () Bool)

(assert (= bs!35 d!137))

(declare-fun m!427 () Bool)

(assert (=> bs!35 m!427))

(assert (=> b!1699 d!137))

(declare-fun b!1734 () Bool)

(declare-fun e!279 () Bool)

(declare-fun tp_is_empty!9 () Bool)

(declare-fun tp!35 () Bool)

(assert (=> b!1734 (= e!279 (and tp_is_empty!9 tp!35))))

(assert (=> b!1701 (= tp!25 e!279)))

(assert (= (and b!1701 (is-Cons!10 (toList!23 lm!258))) b!1734))

(declare-fun b_lambda!35 () Bool)

(assert (= b_lambda!27 (or (and start!116 b_free!11) b_lambda!35)))

(push 1)

(assert (not d!137))

(assert (not d!131))

(assert (not b_lambda!35))

(assert (not b!1734))

(assert b_and!27)

(assert tp_is_empty!9)

(assert (not b!1713))

(assert (not b_next!11))

(check-sat)

(pop 1)

(push 1)

(assert b_and!27)

(assert (not b_next!11))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!151 () Bool)

(assert (=> d!151 (= (isEmpty!14 (toList!23 lm!258)) (is-Nil!11 (toList!23 lm!258)))))

(assert (=> d!137 d!151))

(declare-fun d!153 () Bool)

(declare-fun res!4361 () Bool)

(declare-fun e!302 () Bool)

(assert (=> d!153 (=> res!4361 e!302)))

(assert (=> d!153 (= res!4361 (or (is-Nil!11 (toList!23 lm!258)) (is-Nil!11 (t!2021 (toList!23 lm!258)))))))

(assert (=> d!153 (= (isStrictlySorted!1 (toList!23 lm!258)) e!302)))

(declare-fun b!1757 () Bool)

(declare-fun e!303 () Bool)

(assert (=> b!1757 (= e!302 e!303)))

(declare-fun res!4362 () Bool)

(assert (=> b!1757 (=> (not res!4362) (not e!303))))

(assert (=> b!1757 (= res!4362 (bvslt (_1!5 (h!576 (toList!23 lm!258))) (_1!5 (h!576 (t!2021 (toList!23 lm!258))))))))

(declare-fun b!1758 () Bool)

(assert (=> b!1758 (= e!303 (isStrictlySorted!1 (t!2021 (toList!23 lm!258))))))

(assert (= (and d!153 (not res!4361)) b!1757))

(assert (= (and b!1757 res!4362) b!1758))

(declare-fun m!441 () Bool)

(assert (=> b!1758 m!441))

(assert (=> d!131 d!153))

(declare-fun d!155 () Bool)

(declare-fun res!4363 () Bool)

(declare-fun e!304 () Bool)

(assert (