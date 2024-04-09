; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1254 () Bool)

(assert start!1254)

(declare-fun b_free!391 () Bool)

(declare-fun b_next!391 () Bool)

(assert (=> start!1254 (= b_free!391 (not b_next!391))))

(declare-fun tp!1531 () Bool)

(declare-fun b_and!549 () Bool)

(assert (=> start!1254 (= tp!1531 b_and!549)))

(declare-fun res!8909 () Bool)

(declare-fun e!6065 () Bool)

(assert (=> start!1254 (=> (not res!8909) (not e!6065))))

(declare-datatypes ((B!332 0))(
  ( (B!333 (val!261 Int)) )
))
(declare-datatypes ((tuple2!304 0))(
  ( (tuple2!305 (_1!152 (_ BitVec 64)) (_2!152 B!332)) )
))
(declare-datatypes ((List!308 0))(
  ( (Nil!305) (Cons!304 (h!870 tuple2!304) (t!2455 List!308)) )
))
(declare-datatypes ((ListLongMap!285 0))(
  ( (ListLongMap!286 (toList!158 List!308)) )
))
(declare-fun lm!227 () ListLongMap!285)

(declare-fun p!216 () Int)

(declare-fun forall!35 (List!308 Int) Bool)

(assert (=> start!1254 (= res!8909 (forall!35 (toList!158 lm!227) p!216))))

(assert (=> start!1254 e!6065))

(declare-fun e!6064 () Bool)

(declare-fun inv!486 (ListLongMap!285) Bool)

(assert (=> start!1254 (and (inv!486 lm!227) e!6064)))

(assert (=> start!1254 tp!1531))

(declare-fun e!6063 () Bool)

(assert (=> start!1254 e!6063))

(declare-fun b!10465 () Bool)

(declare-fun kvs!4 () List!308)

(assert (=> b!10465 (= e!6065 (= kvs!4 Nil!305))))

(declare-fun b!10466 () Bool)

(declare-fun tp_is_empty!505 () Bool)

(declare-fun tp!1532 () Bool)

(assert (=> b!10466 (= e!6063 (and tp_is_empty!505 tp!1532))))

(declare-fun b!10467 () Bool)

(declare-fun res!8910 () Bool)

(assert (=> b!10467 (=> (not res!8910) (not e!6065))))

(declare-fun isEmpty!45 (List!308) Bool)

(assert (=> b!10467 (= res!8910 (not (isEmpty!45 kvs!4)))))

(declare-fun b!10468 () Bool)

(declare-fun res!8911 () Bool)

(assert (=> b!10468 (=> (not res!8911) (not e!6065))))

(assert (=> b!10468 (= res!8911 (forall!35 kvs!4 p!216))))

(declare-fun b!10469 () Bool)

(declare-fun tp!1530 () Bool)

(assert (=> b!10469 (= e!6064 tp!1530)))

(assert (= (and start!1254 res!8909) b!10468))

(assert (= (and b!10468 res!8911) b!10467))

(assert (= (and b!10467 res!8910) b!10465))

(assert (= start!1254 b!10469))

(assert (= (and start!1254 (is-Cons!304 kvs!4)) b!10466))

(declare-fun m!6743 () Bool)

(assert (=> start!1254 m!6743))

(declare-fun m!6745 () Bool)

(assert (=> start!1254 m!6745))

(declare-fun m!6747 () Bool)

(assert (=> b!10467 m!6747))

(declare-fun m!6749 () Bool)

(assert (=> b!10468 m!6749))

(push 1)

(assert (not b_next!391))

(assert (not b!10469))

(assert (not b!10466))

(assert b_and!549)

(assert tp_is_empty!505)

(assert (not b!10468))

(assert (not start!1254))

(assert (not b!10467))

(check-sat)

(pop 1)

(push 1)

(assert b_and!549)

(assert (not b_next!391))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1115 () Bool)

(assert (=> d!1115 (= (isEmpty!45 kvs!4) (is-Nil!305 kvs!4))))

(assert (=> b!10467 d!1115))

(declare-fun d!1119 () Bool)

(declare-fun res!8946 () Bool)

(declare-fun e!6100 () Bool)

(assert (=> d!1119 (=> res!8946 e!6100)))

(assert (=> d!1119 (= res!8946 (is-Nil!305 (toList!158 lm!227)))))

(assert (=> d!1119 (= (forall!35 (toList!158 lm!227) p!216) e!6100)))

(declare-fun b!10516 () Bool)

(declare-fun e!6101 () Bool)

(assert (=> b!10516 (= e!6100 e!6101)))

(declare-fun res!8947 () Bool)

(assert (=> b!10516 (=> (not res!8947) (not e!6101))))

(declare-fun dynLambda!51 (Int tuple2!304) Bool)

(assert (=> b!10516 (= res!8947 (dynLambda!51 p!216 (h!870 (toList!158 lm!227))))))

(declare-fun b!10517 () Bool)

(assert (=> b!10517 (= e!6101 (forall!35 (t!2455 (toList!158 lm!227)) p!216))))

(assert (= (and d!1119 (not res!8946)) b!10516))

(assert (= (and b!10516 res!8947) b!10517))

(declare-fun b_lambda!363 () Bool)

(assert (=> (not b_lambda!363) (not b!10516)))

(declare-fun t!2463 () Bool)

(declare-fun tb!151 () Bool)

(assert (=> (and start!1254 (= p!216 p!216) t!2463) tb!151))

(declare-fun result!277 () Bool)

(assert (=> tb!151 (= result!277 true)))

(assert (=> b!10516 t!2463))

(declare-fun b_and!559 () Bool)

(assert (= b_and!549 (and (=> t!2463 result!277) b_and!559)))

(declare-fun m!6775 () Bool)

(assert (=> b!10516 m!6775))

(declare-fun m!6777 () Bool)

(assert (=> b!10517 m!6777))

(assert (=> start!1254 d!1119))

(declare-fun d!1125 () Bool)

(declare-fun isStrictlySorted!25 (List!308) Bool)

(assert (=> d!1125 (= (inv!486 lm!227) (isStrictlySorted!25 (toList!158 lm!227)))))

(declare-fun bs!384 () Bool)

(assert (= bs!384 d!1125))

(declare-fun m!6787 () Bool)

(assert (=> bs!384 m!6787))

(assert (=> start!1254 d!1125))

(declare-fun d!1131 () Bool)

(declare-fun res!8952 () Bool)

(declare-fun e!6106 () Bool)

(assert (=> d!1131 (=> res!8952 e!6106)))

(assert (=> d!1131 (= res!8952 (is-Nil!305 kvs!4))))

(assert (=> d!1131 (= (forall!35 kvs!4 p!216) e!6106)))

(declare-fun b!10522 () Bool)

(declare-fun e!6107 () Bool)

(assert (=> b!10522 (= e!6106 e!6107)))

(declare-fun res!8953 () Bool)

(assert (=> b!10522 (=> (not res!8953) (not e!6107))))

(assert (=> b!10522 (= res!8953 (dynLambda!51 p!216 (h!870 kvs!4)))))

(declare-fun b!10523 () Bool)

(assert (=> b!10523 (= e!6107 (forall!35 (t!2455 kvs!4) p!216))))

(assert (= (and d!1131 (not res!8952)) b!10522))

(assert (= (and b!10522 res!8953) b!10523))

(declare-fun b_lambda!369 () Bool)

(assert (=> (not b_lambda!369) (not b!10522)))

(declare-fun t!2469 () Bool)

(declare-fun tb!157 () Bool)

(assert (=> (and start!1254 (= p!216 p!216) t!2469) tb!157))

(declare-fun result!283 () Bool)

(assert (=> tb!157 (= result!283 true)))

(assert (=> b!10522 t!2469))

(declare-fun b_and!565 () Bool)

(assert (= b_and!559 (and (=> t!2469 result!283) b_and!565)))

(declare-fun m!6793 () Bool)

(assert (=> b!10522 m!6793))

(declare-fun m!6795 () Bool)

(assert (=> b!10523 m!6795))

(assert (=> b!10468 d!1131))

(declare-fun b!10536 () Bool)

(declare-fun e!6114 () Bool)

(declare-fun tp!1557 () Bool)

(assert (=> b!10536 (= e!6114 (and tp_is_empty!505 tp!1557))))

(assert (=> b!10466 (= tp!1532 e!6114)))

(assert (= (and b!10466 (is-Cons!304 (t!2455 kvs!4))) b!10536))

(declare-fun b!10538 () Bool)

(declare-fun e!6116 () Bool)

(declare-fun tp!1559 () Bool)

(assert (=> b!10538 (= e!6116 (and tp_is_empty!505 tp!1559))))

(assert (=> b!10469 (= tp!1530 e!6116)))

(assert (= (and b!10469 (is-Cons!304 (toList!158 lm!227))) b!10538))

(declare-fun b_lambda!371 () Bool)

(assert (= b_lambda!369 (or (and start!1254 b_free!391) b_lambda!371)))

(declare-fun b_lambda!375 () Bool)

(assert (= b_lambda!363 (or (and start!1254 b_free!391) b_lambda!375)))

(push 1)

