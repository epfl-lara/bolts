; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1426 () Bool)

(assert start!1426)

(declare-fun b_free!437 () Bool)

(declare-fun b_next!437 () Bool)

(assert (=> start!1426 (= b_free!437 (not b_next!437))))

(declare-fun tp!1799 () Bool)

(declare-fun b_and!683 () Bool)

(assert (=> start!1426 (= tp!1799 b_and!683)))

(declare-fun b!11090 () Bool)

(declare-fun e!6512 () Bool)

(declare-fun p!216 () Int)

(declare-datatypes ((B!378 0))(
  ( (B!379 (val!284 Int)) )
))
(declare-datatypes ((tuple2!350 0))(
  ( (tuple2!351 (_1!175 (_ BitVec 64)) (_2!175 B!378)) )
))
(declare-datatypes ((List!331 0))(
  ( (Nil!328) (Cons!327 (h!893 tuple2!350) (t!2568 List!331)) )
))
(declare-fun kvs!4 () List!331)

(declare-fun dynLambda!66 (Int tuple2!350) Bool)

(declare-fun head!769 (List!331) tuple2!350)

(assert (=> b!11090 (= e!6512 (not (dynLambda!66 p!216 (head!769 kvs!4))))))

(declare-fun b!11091 () Bool)

(declare-fun e!6511 () Bool)

(declare-fun tp_is_empty!551 () Bool)

(declare-fun tp!1797 () Bool)

(assert (=> b!11091 (= e!6511 (and tp_is_empty!551 tp!1797))))

(declare-fun b!11092 () Bool)

(declare-fun res!9282 () Bool)

(assert (=> b!11092 (=> (not res!9282) (not e!6512))))

(declare-fun isEmpty!62 (List!331) Bool)

(assert (=> b!11092 (= res!9282 (not (isEmpty!62 kvs!4)))))

(declare-fun b!11093 () Bool)

(declare-fun res!9281 () Bool)

(assert (=> b!11093 (=> (not res!9281) (not e!6512))))

(declare-fun forall!55 (List!331 Int) Bool)

(assert (=> b!11093 (= res!9281 (forall!55 kvs!4 p!216))))

(declare-fun res!9283 () Bool)

(assert (=> start!1426 (=> (not res!9283) (not e!6512))))

(declare-datatypes ((ListLongMap!331 0))(
  ( (ListLongMap!332 (toList!181 List!331)) )
))
(declare-fun lm!227 () ListLongMap!331)

(assert (=> start!1426 (= res!9283 (forall!55 (toList!181 lm!227) p!216))))

(assert (=> start!1426 e!6512))

(declare-fun e!6510 () Bool)

(declare-fun inv!544 (ListLongMap!331) Bool)

(assert (=> start!1426 (and (inv!544 lm!227) e!6510)))

(assert (=> start!1426 tp!1799))

(assert (=> start!1426 e!6511))

(declare-fun b!11089 () Bool)

(declare-fun tp!1798 () Bool)

(assert (=> b!11089 (= e!6510 tp!1798)))

(assert (= (and start!1426 res!9283) b!11093))

(assert (= (and b!11093 res!9281) b!11092))

(assert (= (and b!11092 res!9282) b!11090))

(assert (= start!1426 b!11089))

(assert (= (and start!1426 (is-Cons!327 kvs!4)) b!11091))

(declare-fun b_lambda!531 () Bool)

(assert (=> (not b_lambda!531) (not b!11090)))

(declare-fun t!2567 () Bool)

(declare-fun tb!235 () Bool)

(assert (=> (and start!1426 (= p!216 p!216) t!2567) tb!235))

(declare-fun result!391 () Bool)

(assert (=> tb!235 (= result!391 true)))

(assert (=> b!11090 t!2567))

(declare-fun b_and!685 () Bool)

(assert (= b_and!683 (and (=> t!2567 result!391) b_and!685)))

(declare-fun m!7319 () Bool)

(assert (=> b!11090 m!7319))

(assert (=> b!11090 m!7319))

(declare-fun m!7321 () Bool)

(assert (=> b!11090 m!7321))

(declare-fun m!7323 () Bool)

(assert (=> b!11092 m!7323))

(declare-fun m!7325 () Bool)

(assert (=> b!11093 m!7325))

(declare-fun m!7327 () Bool)

(assert (=> start!1426 m!7327))

(declare-fun m!7329 () Bool)

(assert (=> start!1426 m!7329))

(push 1)

(assert (not b_next!437))

(assert (not b!11090))

(assert (not b!11093))

(assert b_and!685)

(assert (not b!11091))

(assert (not b!11089))

(assert (not b!11092))

(assert tp_is_empty!551)

(assert (not start!1426))

(assert (not b_lambda!531))

(check-sat)

(pop 1)

(push 1)

(assert b_and!685)

(assert (not b_next!437))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!537 () Bool)

(assert (= b_lambda!531 (or (and start!1426 b_free!437) b_lambda!537)))

(push 1)

(assert (not b_next!437))

(assert (not b!11093))

(assert b_and!685)

(assert (not b!11091))

(assert (not b!11089))

(assert (not start!1426))

(assert (not b!11092))

(assert tp_is_empty!551)

(assert (not b_lambda!537))

(assert (not b!11090))

(check-sat)

(pop 1)

(push 1)

(assert b_and!685)

(assert (not b_next!437))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1311 () Bool)

(declare-fun res!9302 () Bool)

(declare-fun e!6531 () Bool)

(assert (=> d!1311 (=> res!9302 e!6531)))

(assert (=> d!1311 (= res!9302 (is-Nil!328 kvs!4))))

(assert (=> d!1311 (= (forall!55 kvs!4 p!216) e!6531)))

(declare-fun b!11112 () Bool)

(declare-fun e!6532 () Bool)

(assert (=> b!11112 (= e!6531 e!6532)))

(declare-fun res!9303 () Bool)

(assert (=> b!11112 (=> (not res!9303) (not e!6532))))

(assert (=> b!11112 (= res!9303 (dynLambda!66 p!216 (h!893 kvs!4)))))

(declare-fun b!11113 () Bool)

(assert (=> b!11113 (= e!6532 (forall!55 (t!2568 kvs!4) p!216))))

(assert (= (and d!1311 (not res!9302)) b!11112))

(assert (= (and b!11112 res!9303) b!11113))

(declare-fun b_lambda!545 () Bool)

(assert (=> (not b_lambda!545) (not b!11112)))

(declare-fun t!2576 () Bool)

(declare-fun tb!243 () Bool)

(assert (=> (and start!1426 (= p!216 p!216) t!2576) tb!243))

(declare-fun result!399 () Bool)

(assert (=> tb!243 (= result!399 true)))

(assert (=> b!11112 t!2576))

(declare-fun b_and!693 () Bool)

(assert (= b_and!685 (and (=> t!2576 result!399) b_and!693)))

(declare-fun m!7345 () Bool)

(assert (=> b!11112 m!7345))

(declare-fun m!7347 () Bool)

(assert (=> b!11113 m!7347))

(assert (=> b!11093 d!1311))

(declare-fun d!1321 () Bool)

(assert (=> d!1321 (= (head!769 kvs!4) (h!893 kvs!4))))

(assert (=> b!11090 d!1321))

(declare-fun d!1325 () Bool)

(assert (=> d!1325 (= (isEmpty!62 kvs!4) (is-Nil!328 kvs!4))))

(assert (=> b!11092 d!1325))

(declare-fun d!1327 () Bool)

(declare-fun res!9306 () Bool)

(declare-fun e!6541 () Bool)

(assert (=> d!1327 (=> res!9306 e!6541)))

(assert (=> d!1327 (= res!9306 (is-Nil!328 (toList!181 lm!227)))))

(assert (=> d!1327 (= (forall!55 (toList!181 lm!227) p!216) e!6541)))

(declare-fun b!11126 () Bool)

(declare-fun e!6542 () Bool)

(assert (=> b!11126 (= e!6541 e!6542)))

(declare-fun res!9307 () Bool)

(assert (=> b!11126 (=> (not res!9307) (not e!6542))))

