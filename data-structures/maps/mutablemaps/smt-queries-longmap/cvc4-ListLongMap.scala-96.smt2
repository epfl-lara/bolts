; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1456 () Bool)

(assert start!1456)

(declare-fun b_free!443 () Bool)

(declare-fun b_next!443 () Bool)

(assert (=> start!1456 (= b_free!443 (not b_next!443))))

(declare-fun tp!1838 () Bool)

(declare-fun b_and!703 () Bool)

(assert (=> start!1456 (= tp!1838 b_and!703)))

(declare-fun b!11184 () Bool)

(declare-fun res!9341 () Bool)

(declare-fun e!6582 () Bool)

(assert (=> b!11184 (=> (not res!9341) (not e!6582))))

(declare-datatypes ((B!384 0))(
  ( (B!385 (val!287 Int)) )
))
(declare-datatypes ((tuple2!356 0))(
  ( (tuple2!357 (_1!178 (_ BitVec 64)) (_2!178 B!384)) )
))
(declare-datatypes ((List!334 0))(
  ( (Nil!331) (Cons!330 (h!896 tuple2!356) (t!2583 List!334)) )
))
(declare-fun kvs!4 () List!334)

(declare-fun p!216 () Int)

(declare-fun forall!58 (List!334 Int) Bool)

(assert (=> b!11184 (= res!9341 (forall!58 kvs!4 p!216))))

(declare-fun b!11185 () Bool)

(declare-fun e!6583 () Bool)

(declare-fun tp!1836 () Bool)

(assert (=> b!11185 (= e!6583 tp!1836)))

(declare-fun b!11186 () Bool)

(declare-fun e!6584 () Bool)

(declare-fun tp_is_empty!557 () Bool)

(declare-fun tp!1837 () Bool)

(assert (=> b!11186 (= e!6584 (and tp_is_empty!557 tp!1837))))

(declare-fun b!11187 () Bool)

(declare-fun e!6581 () Bool)

(assert (=> b!11187 (= e!6582 (not e!6581))))

(declare-fun res!9343 () Bool)

(assert (=> b!11187 (=> (not res!9343) (not e!6581))))

(declare-datatypes ((ListLongMap!337 0))(
  ( (ListLongMap!338 (toList!184 List!334)) )
))
(declare-fun lm!227 () ListLongMap!337)

(declare-fun lt!2777 () tuple2!356)

(declare-fun +!25 (ListLongMap!337 tuple2!356) ListLongMap!337)

(assert (=> b!11187 (= res!9343 (forall!58 (toList!184 (+!25 lm!227 lt!2777)) p!216))))

(assert (=> b!11187 (forall!58 (toList!184 (+!25 lm!227 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777)))) p!216)))

(declare-datatypes ((Unit!237 0))(
  ( (Unit!238) )
))
(declare-fun lt!2778 () Unit!237)

(declare-fun addValidProp!13 (ListLongMap!337 Int (_ BitVec 64) B!384) Unit!237)

(assert (=> b!11187 (= lt!2778 (addValidProp!13 lm!227 p!216 (_1!178 lt!2777) (_2!178 lt!2777)))))

(declare-fun head!772 (List!334) tuple2!356)

(assert (=> b!11187 (= lt!2777 (head!772 kvs!4))))

(declare-fun res!9342 () Bool)

(assert (=> start!1456 (=> (not res!9342) (not e!6582))))

(assert (=> start!1456 (= res!9342 (forall!58 (toList!184 lm!227) p!216))))

(assert (=> start!1456 e!6582))

(declare-fun inv!552 (ListLongMap!337) Bool)

(assert (=> start!1456 (and (inv!552 lm!227) e!6583)))

(assert (=> start!1456 tp!1838))

(assert (=> start!1456 e!6584))

(declare-fun b!11188 () Bool)

(declare-fun tail!52 (List!334) List!334)

(assert (=> b!11188 (= e!6581 (forall!58 (tail!52 kvs!4) p!216))))

(declare-fun b!11189 () Bool)

(declare-fun res!9340 () Bool)

(assert (=> b!11189 (=> (not res!9340) (not e!6582))))

(declare-fun isEmpty!65 (List!334) Bool)

(assert (=> b!11189 (= res!9340 (not (isEmpty!65 kvs!4)))))

(assert (= (and start!1456 res!9342) b!11184))

(assert (= (and b!11184 res!9341) b!11189))

(assert (= (and b!11189 res!9340) b!11187))

(assert (= (and b!11187 res!9343) b!11188))

(assert (= start!1456 b!11185))

(assert (= (and start!1456 (is-Cons!330 kvs!4)) b!11186))

(declare-fun m!7409 () Bool)

(assert (=> b!11189 m!7409))

(declare-fun m!7411 () Bool)

(assert (=> b!11188 m!7411))

(assert (=> b!11188 m!7411))

(declare-fun m!7413 () Bool)

(assert (=> b!11188 m!7413))

(declare-fun m!7415 () Bool)

(assert (=> start!1456 m!7415))

(declare-fun m!7417 () Bool)

(assert (=> start!1456 m!7417))

(declare-fun m!7419 () Bool)

(assert (=> b!11184 m!7419))

(declare-fun m!7421 () Bool)

(assert (=> b!11187 m!7421))

(declare-fun m!7423 () Bool)

(assert (=> b!11187 m!7423))

(declare-fun m!7425 () Bool)

(assert (=> b!11187 m!7425))

(declare-fun m!7427 () Bool)

(assert (=> b!11187 m!7427))

(declare-fun m!7429 () Bool)

(assert (=> b!11187 m!7429))

(declare-fun m!7431 () Bool)

(assert (=> b!11187 m!7431))

(push 1)

(assert (not b!11186))

(assert (not b!11184))

(assert (not b_next!443))

(assert (not b!11185))

(assert (not b!11189))

(assert tp_is_empty!557)

(assert (not b!11187))

(assert (not b!11188))

(assert b_and!703)

(assert (not start!1456))

(check-sat)

(pop 1)

(push 1)

(assert b_and!703)

(assert (not b_next!443))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1337 () Bool)

(assert (=> d!1337 (= (isEmpty!65 kvs!4) (is-Nil!331 kvs!4))))

(assert (=> b!11189 d!1337))

(declare-fun d!1339 () Bool)

(declare-fun res!9360 () Bool)

(declare-fun e!6601 () Bool)

(assert (=> d!1339 (=> res!9360 e!6601)))

(assert (=> d!1339 (= res!9360 (is-Nil!331 kvs!4))))

(assert (=> d!1339 (= (forall!58 kvs!4 p!216) e!6601)))

(declare-fun b!11206 () Bool)

(declare-fun e!6602 () Bool)

(assert (=> b!11206 (= e!6601 e!6602)))

(declare-fun res!9361 () Bool)

(assert (=> b!11206 (=> (not res!9361) (not e!6602))))

(declare-fun dynLambda!69 (Int tuple2!356) Bool)

(assert (=> b!11206 (= res!9361 (dynLambda!69 p!216 (h!896 kvs!4)))))

(declare-fun b!11207 () Bool)

(assert (=> b!11207 (= e!6602 (forall!58 (t!2583 kvs!4) p!216))))

(assert (= (and d!1339 (not res!9360)) b!11206))

(assert (= (and b!11206 res!9361) b!11207))

(declare-fun b_lambda!567 () Bool)

(assert (=> (not b_lambda!567) (not b!11206)))

(declare-fun t!2591 () Bool)

(declare-fun tb!255 () Bool)

(assert (=> (and start!1456 (= p!216 p!216) t!2591) tb!255))

(declare-fun result!417 () Bool)

(assert (=> tb!255 (= result!417 true)))

(assert (=> b!11206 t!2591))

(declare-fun b_and!711 () Bool)

(assert (= b_and!703 (and (=> t!2591 result!417) b_and!711)))

(declare-fun m!7444 () Bool)

(assert (=> b!11206 m!7444))

(declare-fun m!7447 () Bool)

(assert (=> b!11207 m!7447))

(assert (=> b!11184 d!1339))

(declare-fun d!1351 () Bool)

(declare-fun res!9366 () Bool)

(declare-fun e!6607 () Bool)

(assert (=> d!1351 (=> res!9366 e!6607)))

(assert (=> d!1351 (= res!9366 (is-Nil!331 (toList!184 (+!25 lm!227 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777))))))))

(assert (=> d!1351 (= (forall!58 (toList!184 (+!25 lm!227 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777)))) p!216) e!6607)))

(declare-fun b!11212 () Bool)

(declare-fun e!6608 () Bool)

(assert (=> b!11212 (= e!6607 e!6608)))

(declare-fun res!9367 () Bool)

(assert (=> b!11212 (=> (not res!9367) (not e!6608))))

(assert (=> b!11212 (= res!9367 (dynLambda!69 p!216 (h!896 (toList!184 (+!25 lm!227 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777)))))))))

(declare-fun b!11213 () Bool)

(assert (=> b!11213 (= e!6608 (forall!58 (t!2583 (toList!184 (+!25 lm!227 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777))))) p!216))))

(assert (= (and d!1351 (not res!9366)) b!11212))

(assert (= (and b!11212 res!9367) b!11213))

(declare-fun b_lambda!573 () Bool)

(assert (=> (not b_lambda!573) (not b!11212)))

(declare-fun t!2595 () Bool)

(declare-fun tb!259 () Bool)

(assert (=> (and start!1456 (= p!216 p!216) t!2595) tb!259))

(declare-fun result!421 () Bool)

(assert (=> tb!259 (= result!421 true)))

(assert (=> b!11212 t!2595))

(declare-fun b_and!715 () Bool)

(assert (= b_and!711 (and (=> t!2595 result!421) b_and!715)))

(declare-fun m!7455 () Bool)

(assert (=> b!11212 m!7455))

(declare-fun m!7457 () Bool)

(assert (=> b!11213 m!7457))

(assert (=> b!11187 d!1351))

(declare-fun d!1357 () Bool)

(declare-fun e!6624 () Bool)

(assert (=> d!1357 e!6624))

(declare-fun res!9390 () Bool)

(assert (=> d!1357 (=> (not res!9390) (not e!6624))))

(declare-fun lt!2806 () ListLongMap!337)

(declare-fun contains!147 (ListLongMap!337 (_ BitVec 64)) Bool)

(assert (=> d!1357 (= res!9390 (contains!147 lt!2806 (_1!178 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777)))))))

(declare-fun lt!2807 () List!334)

(assert (=> d!1357 (= lt!2806 (ListLongMap!338 lt!2807))))

(declare-fun lt!2809 () Unit!237)

(declare-fun lt!2808 () Unit!237)

(assert (=> d!1357 (= lt!2809 lt!2808)))

(declare-datatypes ((Option!31 0))(
  ( (Some!30 (v!1345 B!384)) (None!29) )
))
(declare-fun getValueByKey!25 (List!334 (_ BitVec 64)) Option!31)

(assert (=> d!1357 (= (getValueByKey!25 lt!2807 (_1!178 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777)))) (Some!30 (_2!178 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!9 (List!334 (_ BitVec 64) B!384) Unit!237)

(assert (=> d!1357 (= lt!2808 (lemmaContainsTupThenGetReturnValue!9 lt!2807 (_1!178 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777))) (_2!178 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777)))))))

(declare-fun insertStrictlySorted!9 (List!334 (_ BitVec 64) B!384) List!334)

(assert (=> d!1357 (= lt!2807 (insertStrictlySorted!9 (toList!184 lm!227) (_1!178 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777))) (_2!178 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777)))))))

(assert (=> d!1357 (= (+!25 lm!227 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777))) lt!2806)))

(declare-fun b!11236 () Bool)

(declare-fun res!9389 () Bool)

(assert (=> b!11236 (=> (not res!9389) (not e!6624))))

(assert (=> b!11236 (= res!9389 (= (getValueByKey!25 (toList!184 lt!2806) (_1!178 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777)))) (Some!30 (_2!178 (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777))))))))

(declare-fun b!11237 () Bool)

(declare-fun contains!148 (List!334 tuple2!356) Bool)

(assert (=> b!11237 (= e!6624 (contains!148 (toList!184 lt!2806) (tuple2!357 (_1!178 lt!2777) (_2!178 lt!2777))))))

(assert (= (and d!1357 res!9390) b!11236))

(assert (= (and b!11236 res!9389) b!11237))

(declare-fun m!7501 () Bool)

(assert (=> d!1357 m!7501))

(declare-fun m!7503 () Bool)

(assert (=> d!1357 m!7503))

(declare-fun m!7505 () Bool)

(assert (=> d!1357 m!7505))

(declare-fun m!7507 () Bool)

(assert (=> d!1357 m!7507))

(declare-fun m!7509 () Bool)

(assert (=> b!11236 m!7509))

(declare-fun m!7511 () Bool)

(assert (=> b!11237 m!7511))

(assert (=> b!11187 d!1357))

(declare-fun d!1373 () Bool)

(declare-fun e!6625 () Bool)

(assert (=> d!1373 e!6625))

(declare-fun res!9392 () Bool)

(assert (=> d!1373 (=> (not res!9392) (not e!6625))))

(declare-fun lt!2810 () ListLongMap!337)

(assert (=> d!1373 (= res!9392 (contains!147 lt!2810 (_1!178 lt!2777)))))

(declare-fun lt!2811 () List!334)

(assert (=> d!1373 (= lt!2810 (ListLongMap!338 lt!2811))))

(declare-fun lt!2813 () Unit!237)

(declare-fun lt!2812 () Unit!237)

(assert (=> d!1373 (= lt!2813 lt!2812)))

(assert (=> d!1373 (= (getValueByKey!25 lt!2811 (_1!178 lt!2777)) (Some!30 (_2!178 lt!2777)))))

(assert (=> d!1373 (= lt!2812 (lemmaContainsTupThenGetReturnValue!9 lt!2811 (_1!178 lt!2777) (_2!178 lt!2777)))))

(assert (=> d!1373 (= lt!2811 (insertStrictlySorted!9 (toList!184 lm!227) (_1!178 lt!2777) (_2!178 lt!2777)))))

(assert (=> d!1373 (= (+!25 lm!227 lt!2777) lt!2810)))

(declare-fun b!11238 () Bool)

(declare-fun res!9391 () Bool)

(assert (=> b!11238 (=> (not res!9391) (not e!6625))))

(assert (=> b!11238 (= res!9391 (= (getValueByKey!25 (toList!184 lt!2810) (_1!178 lt!2777)) (Some!30 (_2!178 lt!2777))))))

