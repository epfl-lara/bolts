; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1258 () Bool)

(assert start!1258)

(declare-fun b_free!395 () Bool)

(declare-fun b_next!395 () Bool)

(assert (=> start!1258 (= b_free!395 (not b_next!395))))

(declare-fun tp!1549 () Bool)

(declare-fun b_and!553 () Bool)

(assert (=> start!1258 (= tp!1549 b_and!553)))

(declare-fun b!10495 () Bool)

(declare-fun res!8928 () Bool)

(declare-fun e!6081 () Bool)

(assert (=> b!10495 (=> (not res!8928) (not e!6081))))

(declare-datatypes ((B!336 0))(
  ( (B!337 (val!263 Int)) )
))
(declare-datatypes ((tuple2!308 0))(
  ( (tuple2!309 (_1!154 (_ BitVec 64)) (_2!154 B!336)) )
))
(declare-datatypes ((List!310 0))(
  ( (Nil!307) (Cons!306 (h!872 tuple2!308) (t!2457 List!310)) )
))
(declare-fun kvs!4 () List!310)

(declare-fun p!216 () Int)

(declare-fun forall!37 (List!310 Int) Bool)

(assert (=> b!10495 (= res!8928 (forall!37 kvs!4 p!216))))

(declare-fun b!10496 () Bool)

(declare-fun e!6083 () Bool)

(declare-fun tp_is_empty!509 () Bool)

(declare-fun tp!1548 () Bool)

(assert (=> b!10496 (= e!6083 (and tp_is_empty!509 tp!1548))))

(declare-fun b!10498 () Bool)

(declare-fun e!6082 () Bool)

(declare-fun tp!1550 () Bool)

(assert (=> b!10498 (= e!6082 tp!1550)))

(declare-fun b!10499 () Bool)

(assert (=> b!10499 (= e!6081 (= kvs!4 Nil!307))))

(declare-fun res!8927 () Bool)

(assert (=> start!1258 (=> (not res!8927) (not e!6081))))

(declare-datatypes ((ListLongMap!289 0))(
  ( (ListLongMap!290 (toList!160 List!310)) )
))
(declare-fun lm!227 () ListLongMap!289)

(assert (=> start!1258 (= res!8927 (forall!37 (toList!160 lm!227) p!216))))

(assert (=> start!1258 e!6081))

(declare-fun inv!488 (ListLongMap!289) Bool)

(assert (=> start!1258 (and (inv!488 lm!227) e!6082)))

(assert (=> start!1258 tp!1549))

(assert (=> start!1258 e!6083))

(declare-fun b!10497 () Bool)

(declare-fun res!8929 () Bool)

(assert (=> b!10497 (=> (not res!8929) (not e!6081))))

(declare-fun isEmpty!47 (List!310) Bool)

(assert (=> b!10497 (= res!8929 (not (isEmpty!47 kvs!4)))))

(assert (= (and start!1258 res!8927) b!10495))

(assert (= (and b!10495 res!8928) b!10497))

(assert (= (and b!10497 res!8929) b!10499))

(assert (= start!1258 b!10498))

(assert (= (and start!1258 (is-Cons!306 kvs!4)) b!10496))

(declare-fun m!6759 () Bool)

(assert (=> b!10495 m!6759))

(declare-fun m!6761 () Bool)

(assert (=> start!1258 m!6761))

(declare-fun m!6763 () Bool)

(assert (=> start!1258 m!6763))

(declare-fun m!6765 () Bool)

(assert (=> b!10497 m!6765))

(push 1)

(assert (not b!10498))

(assert (not b_next!395))

(assert tp_is_empty!509)

(assert (not b!10495))

(assert b_and!553)

(assert (not b!10496))

(assert (not start!1258))

(assert (not b!10497))

(check-sat)

(pop 1)

(push 1)

(assert b_and!553)

(assert (not b_next!395))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1113 () Bool)

(declare-fun res!8942 () Bool)

(declare-fun e!6096 () Bool)

(assert (=> d!1113 (=> res!8942 e!6096)))

(assert (=> d!1113 (= res!8942 (is-Nil!307 kvs!4))))

(assert (=> d!1113 (= (forall!37 kvs!4 p!216) e!6096)))

(declare-fun b!10512 () Bool)

(declare-fun e!6097 () Bool)

(assert (=> b!10512 (= e!6096 e!6097)))

(declare-fun res!8943 () Bool)

(assert (=> b!10512 (=> (not res!8943) (not e!6097))))

(declare-fun dynLambda!50 (Int tuple2!308) Bool)

(assert (=> b!10512 (= res!8943 (dynLambda!50 p!216 (h!872 kvs!4)))))

(declare-fun b!10513 () Bool)

(assert (=> b!10513 (= e!6097 (forall!37 (t!2457 kvs!4) p!216))))

(assert (= (and d!1113 (not res!8942)) b!10512))

(assert (= (and b!10512 res!8943) b!10513))

(declare-fun b_lambda!359 () Bool)

(assert (=> (not b_lambda!359) (not b!10512)))

(declare-fun t!2459 () Bool)

(declare-fun tb!147 () Bool)

(assert (=> (and start!1258 (= p!216 p!216) t!2459) tb!147))

(declare-fun result!273 () Bool)

(assert (=> tb!147 (= result!273 true)))

(assert (=> b!10512 t!2459))

(declare-fun b_and!555 () Bool)

(assert (= b_and!553 (and (=> t!2459 result!273) b_and!555)))

(declare-fun m!6767 () Bool)

(assert (=> b!10512 m!6767))

(declare-fun m!6769 () Bool)

(assert (=> b!10513 m!6769))

(assert (=> b!10495 d!1113))

(declare-fun d!1121 () Bool)

(declare-fun res!8948 () Bool)

(declare-fun e!6102 () Bool)

(assert (=> d!1121 (=> res!8948 e!6102)))

(assert (=> d!1121 (= res!8948 (is-Nil!307 (toList!160 lm!227)))))

(assert (=> d!1121 (= (forall!37 (toList!160 lm!227) p!216) e!6102)))

(declare-fun b!10518 () Bool)

(declare-fun e!6103 () Bool)

(assert (=> b!10518 (= e!6102 e!6103)))

(declare-fun res!8949 () Bool)

(assert (=> b!10518 (=> (not res!8949) (not e!6103))))

(assert (=> b!10518 (= res!8949 (dynLambda!50 p!216 (h!872 (toList!160 lm!227))))))

(declare-fun b!10519 () Bool)

(assert (=> b!10519 (= e!6103 (forall!37 (t!2457 (toList!160 lm!227)) p!216))))

(assert (= (and d!1121 (not res!8948)) b!10518))

(assert (= (and b!10518 res!8949) b!10519))

(declare-fun b_lambda!365 () Bool)

(assert (=> (not b_lambda!365) (not b!10518)))

(declare-fun t!2465 () Bool)

(declare-fun tb!153 () Bool)

(assert (=> (and start!1258 (= p!216 p!216) t!2465) tb!153))

(declare-fun result!279 () Bool)

(assert (=> tb!153 (= result!279 true)))

(assert (=> b!10518 t!2465))

(declare-fun b_and!561 () Bool)

(assert (= b_and!555 (and (=> t!2465 result!279) b_and!561)))

(declare-fun m!6779 () Bool)

(assert (=> b!10518 m!6779))

(declare-fun m!6781 () Bool)

(assert (=> b!10519 m!6781))

(assert (=> start!1258 d!1121))

(declare-fun d!1127 () Bool)

(declare-fun isStrictlySorted!27 (List!310) Bool)

(assert (=> d!1127 (= (inv!488 lm!227) (isStrictlySorted!27 (toList!160 lm!227)))))

(declare-fun bs!385 () Bool)

(assert (= bs!385 d!1127))

(declare-fun m!6789 () Bool)

(assert (=> bs!385 m!6789))

(assert (=> start!1258 d!1127))

(declare-fun d!1133 () Bool)

(assert (=> d!1133 (= (isEmpty!47 kvs!4) (is-Nil!307 kvs!4))))

(assert (=> b!10497 d!1133))

(declare-fun b!10537 () Bool)

(declare-fun e!6115 () Bool)

(declare-fun tp!1558 () Bool)

(assert (=> b!10537 (= e!6115 (and tp_is_empty!509 tp!1558))))

(assert (=> b!10496 (= tp!1548 e!6115)))

(assert (= (and b!10496 (is-Cons!306 (t!2457 kvs!4))) b!10537))

(declare-fun b!10539 () Bool)

(declare-fun e!6117 () Bool)

(declare-fun tp!1560 () Bool)

(assert (=> b!10539 (= e!6117 (and tp_is_empty!509 tp!1560))))

(assert (=> b!10498 (= tp!1550 e!6117)))

(assert (= (and b!10498 (is-Cons!306 (toList!160 lm!227))) b!10539))

