; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1398 () Bool)

(assert start!1398)

(declare-fun b_free!427 () Bool)

(declare-fun b_next!427 () Bool)

(assert (=> start!1398 (= b_free!427 (not b_next!427))))

(declare-fun tp!1740 () Bool)

(declare-fun b_and!657 () Bool)

(assert (=> start!1398 (= tp!1740 b_and!657)))

(declare-fun b!10963 () Bool)

(declare-fun e!6422 () Bool)

(declare-fun tp!1742 () Bool)

(assert (=> b!10963 (= e!6422 tp!1742)))

(declare-fun b!10964 () Bool)

(declare-fun e!6421 () Bool)

(declare-fun tp_is_empty!541 () Bool)

(declare-fun tp!1741 () Bool)

(assert (=> b!10964 (= e!6421 (and tp_is_empty!541 tp!1741))))

(declare-fun b!10962 () Bool)

(declare-fun e!6420 () Bool)

(declare-datatypes ((B!368 0))(
  ( (B!369 (val!279 Int)) )
))
(declare-datatypes ((tuple2!340 0))(
  ( (tuple2!341 (_1!170 (_ BitVec 64)) (_2!170 B!368)) )
))
(declare-datatypes ((List!326 0))(
  ( (Nil!323) (Cons!322 (h!888 tuple2!340) (t!2545 List!326)) )
))
(declare-fun kvs!4 () List!326)

(declare-fun ListPrimitiveSize!7 (List!326) Int)

(assert (=> b!10962 (= e!6420 (< (ListPrimitiveSize!7 kvs!4) 0))))

(declare-fun res!9220 () Bool)

(assert (=> start!1398 (=> (not res!9220) (not e!6420))))

(declare-datatypes ((ListLongMap!321 0))(
  ( (ListLongMap!322 (toList!176 List!326)) )
))
(declare-fun lm!227 () ListLongMap!321)

(declare-fun p!216 () Int)

(declare-fun forall!50 (List!326 Int) Bool)

(assert (=> start!1398 (= res!9220 (forall!50 (toList!176 lm!227) p!216))))

(assert (=> start!1398 e!6420))

(declare-fun inv!534 (ListLongMap!321) Bool)

(assert (=> start!1398 (and (inv!534 lm!227) e!6422)))

(assert (=> start!1398 tp!1740))

(assert (=> start!1398 e!6421))

(declare-fun b!10961 () Bool)

(declare-fun res!9219 () Bool)

(assert (=> b!10961 (=> (not res!9219) (not e!6420))))

(assert (=> b!10961 (= res!9219 (forall!50 kvs!4 p!216))))

(assert (= (and start!1398 res!9220) b!10961))

(assert (= (and b!10961 res!9219) b!10962))

(assert (= start!1398 b!10963))

(assert (= (and start!1398 (is-Cons!322 kvs!4)) b!10964))

(declare-fun m!7235 () Bool)

(assert (=> b!10962 m!7235))

(declare-fun m!7237 () Bool)

(assert (=> start!1398 m!7237))

(declare-fun m!7239 () Bool)

(assert (=> start!1398 m!7239))

(declare-fun m!7241 () Bool)

(assert (=> b!10961 m!7241))

(push 1)

(assert (not b!10964))

(assert (not start!1398))

(assert (not b!10962))

(assert b_and!657)

(assert (not b_next!427))

(assert tp_is_empty!541)

(assert (not b!10963))

(assert (not b!10961))

(check-sat)

(pop 1)

(push 1)

(assert b_and!657)

(assert (not b_next!427))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1277 () Bool)

(declare-fun res!9241 () Bool)

(declare-fun e!6449 () Bool)

(assert (=> d!1277 (=> res!9241 e!6449)))

(assert (=> d!1277 (= res!9241 (is-Nil!323 kvs!4))))

(assert (=> d!1277 (= (forall!50 kvs!4 p!216) e!6449)))

(declare-fun b!10997 () Bool)

(declare-fun e!6450 () Bool)

(assert (=> b!10997 (= e!6449 e!6450)))

(declare-fun res!9242 () Bool)

(assert (=> b!10997 (=> (not res!9242) (not e!6450))))

(declare-fun dynLambda!61 (Int tuple2!340) Bool)

(assert (=> b!10997 (= res!9242 (dynLambda!61 p!216 (h!888 kvs!4)))))

(declare-fun b!10998 () Bool)

(assert (=> b!10998 (= e!6450 (forall!50 (t!2545 kvs!4) p!216))))

(assert (= (and d!1277 (not res!9241)) b!10997))

(assert (= (and b!10997 res!9242) b!10998))

(declare-fun b_lambda!504 () Bool)

(assert (=> (not b_lambda!504) (not b!10997)))

(declare-fun t!2551 () Bool)

(declare-fun tb!221 () Bool)

(assert (=> (and start!1398 (= p!216 p!216) t!2551) tb!221))

(declare-fun result!371 () Bool)

(assert (=> tb!221 (= result!371 true)))

(assert (=> b!10997 t!2551))

(declare-fun b_and!665 () Bool)

(assert (= b_and!657 (and (=> t!2551 result!371) b_and!665)))

(declare-fun m!7261 () Bool)

(assert (=> b!10997 m!7261))

(declare-fun m!7264 () Bool)

(assert (=> b!10998 m!7264))

(assert (=> b!10961 d!1277))

(declare-fun d!1281 () Bool)

(declare-fun lt!2756 () Int)

(assert (=> d!1281 (>= lt!2756 0)))

(declare-fun e!6457 () Int)

(assert (=> d!1281 (= lt!2756 e!6457)))

(declare-fun c!949 () Bool)

(assert (=> d!1281 (= c!949 (is-Nil!323 kvs!4))))

(assert (=> d!1281 (= (ListPrimitiveSize!7 kvs!4) lt!2756)))

(declare-fun b!11009 () Bool)

(assert (=> b!11009 (= e!6457 0)))

(declare-fun b!11011 () Bool)

(assert (=> b!11011 (= e!6457 (+ 1 (ListPrimitiveSize!7 (t!2545 kvs!4))))))

(assert (= (and d!1281 c!949) b!11009))

(assert (= (and d!1281 (not c!949)) b!11011))

(declare-fun m!7268 () Bool)

(assert (=> b!11011 m!7268))

(assert (=> b!10962 d!1281))

(declare-fun d!1287 () Bool)

(declare-fun res!9250 () Bool)

(declare-fun e!6464 () Bool)

(assert (=> d!1287 (=> res!9250 e!6464)))

(assert (=> d!1287 (= res!9250 (is-Nil!323 (toList!176 lm!227)))))

(assert (=> d!1287 (= (forall!50 (toList!176 lm!227) p!216) e!6464)))

(declare-fun b!11018 () Bool)

(declare-fun e!6466 () Bool)

(assert (=> b!11018 (= e!6464 e!6466)))

(declare-fun res!9252 () Bool)

(assert (=> b!11018 (=> (not res!9252) (not e!6466))))

(assert (=> b!11018 (= res!9252 (dynLambda!61 p!216 (h!888 (toList!176 lm!227))))))

(declare-fun b!11020 () Bool)

(assert (=> b!11020 (= e!6466 (forall!50 (t!2545 (toList!176 lm!227)) p!216))))

(assert (= (and d!1287 (not res!9250)) b!11018))

(assert (= (and b!11018 res!9252) b!11020))

(declare-fun b_lambda!508 () Bool)

(assert (=> (not b_lambda!508) (not b!11018)))

(declare-fun t!2554 () Bool)

(declare-fun tb!224 () Bool)

(assert (=> (and start!1398 (= p!216 p!216) t!2554) tb!224))

(declare-fun result!375 () Bool)

(assert (=> tb!224 (= result!375 true)))

(assert (=> b!11018 t!2554))

(declare-fun b_and!669 () Bool)

(assert (= b_and!665 (and (=> t!2554 result!375) b_and!669)))

(declare-fun m!7273 () Bool)

(assert (=> b!11018 m!7273))

(declare-fun m!7277 () Bool)

(assert (=> b!11020 m!7277))

(assert (=> start!1398 d!1287))

(declare-fun d!1291 () Bool)

(declare-fun isStrictlySorted!36 (List!326) Bool)

(assert (=> d!1291 (= (inv!534 lm!227) (isStrictlySorted!36 (toList!176 lm!227)))))

(declare-fun bs!414 () Bool)

(assert (= bs!414 d!1291))

(declare-fun m!7280 () Bool)

(assert (=> bs!414 m!7280))

(assert (=> start!1398 d!1291))

(declare-fun b!11031 () Bool)

(declare-fun e!6473 () Bool)

(declare-fun tp!1765 () Bool)

(assert (=> b!11031 (= e!6473 (and tp_is_empty!541 tp!1765))))

(assert (=> b!10964 (= tp!1741 e!6473)))

(assert (= (and b!10964 (is-Cons!322 (t!2545 kvs!4))) b!11031))

(declare-fun b!11033 () Bool)

(declare-fun e!6475 () Bool)

(declare-fun tp!1767 () Bool)

(assert (=> b!11033 (= e!6475 (and tp_is_empty!541 tp!1767))))

(assert (=> b!10963 (= tp!1742 e!6475)))

(assert (= (and b!10963 (is-Cons!322 (toList!176 lm!227))) b!11033))

(declare-fun b_lambda!515 () Bool)

(assert (= b_lambda!508 (or (and start!1398 b_free!427) b_lambda!515)))

(declare-fun b_lambda!519 () Bool)

(assert (= b_lambda!504 (or (and start!1398 b_free!427) b_lambda!519)))

(push 1)

(assert b_and!669)

(assert (not b!11011))

(assert (not b_next!427))

(assert (not b!10998))

(assert (not b!11020))

(assert (not b_lambda!519))

(assert (not b!11031))

(assert (not b_lambda!515))

(assert tp_is_empty!541)

(assert (not b!11033))

(assert (not d!1291))

(check-sat)

(pop 1)

(push 1)

(assert b_and!669)

(assert (not b_next!427))

(check-sat)

(pop 1)

