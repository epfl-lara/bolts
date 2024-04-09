; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1454 () Bool)

(assert start!1454)

(declare-fun b_free!441 () Bool)

(declare-fun b_next!441 () Bool)

(assert (=> start!1454 (= b_free!441 (not b_next!441))))

(declare-fun tp!1829 () Bool)

(declare-fun b_and!701 () Bool)

(assert (=> start!1454 (= tp!1829 b_and!701)))

(declare-fun res!9330 () Bool)

(declare-fun e!6569 () Bool)

(assert (=> start!1454 (=> (not res!9330) (not e!6569))))

(declare-datatypes ((B!382 0))(
  ( (B!383 (val!286 Int)) )
))
(declare-datatypes ((tuple2!354 0))(
  ( (tuple2!355 (_1!177 (_ BitVec 64)) (_2!177 B!382)) )
))
(declare-datatypes ((List!333 0))(
  ( (Nil!330) (Cons!329 (h!895 tuple2!354) (t!2582 List!333)) )
))
(declare-datatypes ((ListLongMap!335 0))(
  ( (ListLongMap!336 (toList!183 List!333)) )
))
(declare-fun lm!227 () ListLongMap!335)

(declare-fun p!216 () Int)

(declare-fun forall!57 (List!333 Int) Bool)

(assert (=> start!1454 (= res!9330 (forall!57 (toList!183 lm!227) p!216))))

(assert (=> start!1454 e!6569))

(declare-fun e!6570 () Bool)

(declare-fun inv!551 (ListLongMap!335) Bool)

(assert (=> start!1454 (and (inv!551 lm!227) e!6570)))

(assert (=> start!1454 tp!1829))

(declare-fun e!6571 () Bool)

(assert (=> start!1454 e!6571))

(declare-fun b!11166 () Bool)

(declare-fun e!6572 () Bool)

(declare-fun kvs!4 () List!333)

(declare-fun tail!51 (List!333) List!333)

(assert (=> b!11166 (= e!6572 (forall!57 (tail!51 kvs!4) p!216))))

(declare-fun b!11167 () Bool)

(declare-fun res!9331 () Bool)

(assert (=> b!11167 (=> (not res!9331) (not e!6569))))

(assert (=> b!11167 (= res!9331 (forall!57 kvs!4 p!216))))

(declare-fun b!11168 () Bool)

(declare-fun res!9328 () Bool)

(assert (=> b!11168 (=> (not res!9328) (not e!6569))))

(declare-fun isEmpty!64 (List!333) Bool)

(assert (=> b!11168 (= res!9328 (not (isEmpty!64 kvs!4)))))

(declare-fun b!11169 () Bool)

(declare-fun tp_is_empty!555 () Bool)

(declare-fun tp!1827 () Bool)

(assert (=> b!11169 (= e!6571 (and tp_is_empty!555 tp!1827))))

(declare-fun b!11170 () Bool)

(declare-fun tp!1828 () Bool)

(assert (=> b!11170 (= e!6570 tp!1828)))

(declare-fun b!11171 () Bool)

(assert (=> b!11171 (= e!6569 (not e!6572))))

(declare-fun res!9329 () Bool)

(assert (=> b!11171 (=> (not res!9329) (not e!6572))))

(declare-fun lt!2771 () tuple2!354)

(declare-fun +!24 (ListLongMap!335 tuple2!354) ListLongMap!335)

(assert (=> b!11171 (= res!9329 (forall!57 (toList!183 (+!24 lm!227 lt!2771)) p!216))))

(assert (=> b!11171 (forall!57 (toList!183 (+!24 lm!227 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771)))) p!216)))

(declare-datatypes ((Unit!235 0))(
  ( (Unit!236) )
))
(declare-fun lt!2772 () Unit!235)

(declare-fun addValidProp!12 (ListLongMap!335 Int (_ BitVec 64) B!382) Unit!235)

(assert (=> b!11171 (= lt!2772 (addValidProp!12 lm!227 p!216 (_1!177 lt!2771) (_2!177 lt!2771)))))

(declare-fun head!771 (List!333) tuple2!354)

(assert (=> b!11171 (= lt!2771 (head!771 kvs!4))))

(assert (= (and start!1454 res!9330) b!11167))

(assert (= (and b!11167 res!9331) b!11168))

(assert (= (and b!11168 res!9328) b!11171))

(assert (= (and b!11171 res!9329) b!11166))

(assert (= start!1454 b!11170))

(get-info :version)

(assert (= (and start!1454 ((_ is Cons!329) kvs!4)) b!11169))

(declare-fun m!7385 () Bool)

(assert (=> b!11167 m!7385))

(declare-fun m!7387 () Bool)

(assert (=> b!11168 m!7387))

(declare-fun m!7389 () Bool)

(assert (=> b!11171 m!7389))

(declare-fun m!7391 () Bool)

(assert (=> b!11171 m!7391))

(declare-fun m!7393 () Bool)

(assert (=> b!11171 m!7393))

(declare-fun m!7395 () Bool)

(assert (=> b!11171 m!7395))

(declare-fun m!7397 () Bool)

(assert (=> b!11171 m!7397))

(declare-fun m!7399 () Bool)

(assert (=> b!11171 m!7399))

(declare-fun m!7401 () Bool)

(assert (=> b!11166 m!7401))

(assert (=> b!11166 m!7401))

(declare-fun m!7403 () Bool)

(assert (=> b!11166 m!7403))

(declare-fun m!7405 () Bool)

(assert (=> start!1454 m!7405))

(declare-fun m!7407 () Bool)

(assert (=> start!1454 m!7407))

(check-sat (not b!11170) (not b!11166) (not start!1454) (not b!11168) b_and!701 (not b!11167) (not b!11169) (not b_next!441) tp_is_empty!555 (not b!11171))
(check-sat b_and!701 (not b_next!441))
(get-model)

(declare-fun d!1333 () Bool)

(declare-fun res!9354 () Bool)

(declare-fun e!6595 () Bool)

(assert (=> d!1333 (=> res!9354 e!6595)))

(assert (=> d!1333 (= res!9354 ((_ is Nil!330) (toList!183 lm!227)))))

(assert (=> d!1333 (= (forall!57 (toList!183 lm!227) p!216) e!6595)))

(declare-fun b!11200 () Bool)

(declare-fun e!6596 () Bool)

(assert (=> b!11200 (= e!6595 e!6596)))

(declare-fun res!9355 () Bool)

(assert (=> b!11200 (=> (not res!9355) (not e!6596))))

(declare-fun dynLambda!68 (Int tuple2!354) Bool)

(assert (=> b!11200 (= res!9355 (dynLambda!68 p!216 (h!895 (toList!183 lm!227))))))

(declare-fun b!11201 () Bool)

(assert (=> b!11201 (= e!6596 (forall!57 (t!2582 (toList!183 lm!227)) p!216))))

(assert (= (and d!1333 (not res!9354)) b!11200))

(assert (= (and b!11200 res!9355) b!11201))

(declare-fun b_lambda!565 () Bool)

(assert (=> (not b_lambda!565) (not b!11200)))

(declare-fun t!2587 () Bool)

(declare-fun tb!251 () Bool)

(assert (=> (and start!1454 (= p!216 p!216) t!2587) tb!251))

(declare-fun result!413 () Bool)

(assert (=> tb!251 (= result!413 true)))

(assert (=> b!11200 t!2587))

(declare-fun b_and!707 () Bool)

(assert (= b_and!701 (and (=> t!2587 result!413) b_and!707)))

(declare-fun m!7437 () Bool)

(assert (=> b!11200 m!7437))

(declare-fun m!7439 () Bool)

(assert (=> b!11201 m!7439))

(assert (=> start!1454 d!1333))

(declare-fun d!1345 () Bool)

(declare-fun isStrictlySorted!41 (List!333) Bool)

(assert (=> d!1345 (= (inv!551 lm!227) (isStrictlySorted!41 (toList!183 lm!227)))))

(declare-fun bs!426 () Bool)

(assert (= bs!426 d!1345))

(declare-fun m!7453 () Bool)

(assert (=> bs!426 m!7453))

(assert (=> start!1454 d!1345))

(declare-fun d!1355 () Bool)

(declare-fun res!9368 () Bool)

(declare-fun e!6609 () Bool)

(assert (=> d!1355 (=> res!9368 e!6609)))

(assert (=> d!1355 (= res!9368 ((_ is Nil!330) (toList!183 (+!24 lm!227 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771))))))))

(assert (=> d!1355 (= (forall!57 (toList!183 (+!24 lm!227 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771)))) p!216) e!6609)))

(declare-fun b!11214 () Bool)

(declare-fun e!6610 () Bool)

(assert (=> b!11214 (= e!6609 e!6610)))

(declare-fun res!9369 () Bool)

(assert (=> b!11214 (=> (not res!9369) (not e!6610))))

(assert (=> b!11214 (= res!9369 (dynLambda!68 p!216 (h!895 (toList!183 (+!24 lm!227 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771)))))))))

(declare-fun b!11215 () Bool)

(assert (=> b!11215 (= e!6610 (forall!57 (t!2582 (toList!183 (+!24 lm!227 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771))))) p!216))))

(assert (= (and d!1355 (not res!9368)) b!11214))

(assert (= (and b!11214 res!9369) b!11215))

(declare-fun b_lambda!575 () Bool)

(assert (=> (not b_lambda!575) (not b!11214)))

(declare-fun t!2597 () Bool)

(declare-fun tb!261 () Bool)

(assert (=> (and start!1454 (= p!216 p!216) t!2597) tb!261))

(declare-fun result!423 () Bool)

(assert (=> tb!261 (= result!423 true)))

(assert (=> b!11214 t!2597))

(declare-fun b_and!717 () Bool)

(assert (= b_and!707 (and (=> t!2597 result!423) b_and!717)))

(declare-fun m!7459 () Bool)

(assert (=> b!11214 m!7459))

(declare-fun m!7461 () Bool)

(assert (=> b!11215 m!7461))

(assert (=> b!11171 d!1355))

(declare-fun d!1359 () Bool)

(declare-fun e!6620 () Bool)

(assert (=> d!1359 e!6620))

(declare-fun res!9383 () Bool)

(assert (=> d!1359 (=> (not res!9383) (not e!6620))))

(declare-fun lt!2801 () ListLongMap!335)

(declare-fun contains!143 (ListLongMap!335 (_ BitVec 64)) Bool)

(assert (=> d!1359 (= res!9383 (contains!143 lt!2801 (_1!177 lt!2771)))))

(declare-fun lt!2800 () List!333)

(assert (=> d!1359 (= lt!2801 (ListLongMap!336 lt!2800))))

(declare-fun lt!2799 () Unit!235)

(declare-fun lt!2798 () Unit!235)

(assert (=> d!1359 (= lt!2799 lt!2798)))

(declare-datatypes ((Option!29 0))(
  ( (Some!28 (v!1343 B!382)) (None!27) )
))
(declare-fun getValueByKey!23 (List!333 (_ BitVec 64)) Option!29)

(assert (=> d!1359 (= (getValueByKey!23 lt!2800 (_1!177 lt!2771)) (Some!28 (_2!177 lt!2771)))))

(declare-fun lemmaContainsTupThenGetReturnValue!7 (List!333 (_ BitVec 64) B!382) Unit!235)

(assert (=> d!1359 (= lt!2798 (lemmaContainsTupThenGetReturnValue!7 lt!2800 (_1!177 lt!2771) (_2!177 lt!2771)))))

(declare-fun insertStrictlySorted!7 (List!333 (_ BitVec 64) B!382) List!333)

(assert (=> d!1359 (= lt!2800 (insertStrictlySorted!7 (toList!183 lm!227) (_1!177 lt!2771) (_2!177 lt!2771)))))

(assert (=> d!1359 (= (+!24 lm!227 lt!2771) lt!2801)))

(declare-fun b!11228 () Bool)

(declare-fun res!9384 () Bool)

(assert (=> b!11228 (=> (not res!9384) (not e!6620))))

(assert (=> b!11228 (= res!9384 (= (getValueByKey!23 (toList!183 lt!2801) (_1!177 lt!2771)) (Some!28 (_2!177 lt!2771))))))

(declare-fun b!11229 () Bool)

(declare-fun contains!144 (List!333 tuple2!354) Bool)

(assert (=> b!11229 (= e!6620 (contains!144 (toList!183 lt!2801) lt!2771))))

(assert (= (and d!1359 res!9383) b!11228))

(assert (= (and b!11228 res!9384) b!11229))

(declare-fun m!7473 () Bool)

(assert (=> d!1359 m!7473))

(declare-fun m!7475 () Bool)

(assert (=> d!1359 m!7475))

(declare-fun m!7477 () Bool)

(assert (=> d!1359 m!7477))

(declare-fun m!7479 () Bool)

(assert (=> d!1359 m!7479))

(declare-fun m!7481 () Bool)

(assert (=> b!11228 m!7481))

(declare-fun m!7483 () Bool)

(assert (=> b!11229 m!7483))

(assert (=> b!11171 d!1359))

(declare-fun d!1367 () Bool)

(declare-fun e!6621 () Bool)

(assert (=> d!1367 e!6621))

(declare-fun res!9385 () Bool)

(assert (=> d!1367 (=> (not res!9385) (not e!6621))))

(declare-fun lt!2805 () ListLongMap!335)

(assert (=> d!1367 (= res!9385 (contains!143 lt!2805 (_1!177 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771)))))))

(declare-fun lt!2804 () List!333)

(assert (=> d!1367 (= lt!2805 (ListLongMap!336 lt!2804))))

(declare-fun lt!2803 () Unit!235)

(declare-fun lt!2802 () Unit!235)

(assert (=> d!1367 (= lt!2803 lt!2802)))

(assert (=> d!1367 (= (getValueByKey!23 lt!2804 (_1!177 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771)))) (Some!28 (_2!177 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771)))))))

(assert (=> d!1367 (= lt!2802 (lemmaContainsTupThenGetReturnValue!7 lt!2804 (_1!177 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771))) (_2!177 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771)))))))

(assert (=> d!1367 (= lt!2804 (insertStrictlySorted!7 (toList!183 lm!227) (_1!177 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771))) (_2!177 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771)))))))

(assert (=> d!1367 (= (+!24 lm!227 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771))) lt!2805)))

(declare-fun b!11232 () Bool)

(declare-fun res!9386 () Bool)

(assert (=> b!11232 (=> (not res!9386) (not e!6621))))

(assert (=> b!11232 (= res!9386 (= (getValueByKey!23 (toList!183 lt!2805) (_1!177 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771)))) (Some!28 (_2!177 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771))))))))

(declare-fun b!11233 () Bool)

(assert (=> b!11233 (= e!6621 (contains!144 (toList!183 lt!2805) (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771))))))

(assert (= (and d!1367 res!9385) b!11232))

(assert (= (and b!11232 res!9386) b!11233))

(declare-fun m!7485 () Bool)

(assert (=> d!1367 m!7485))

(declare-fun m!7487 () Bool)

(assert (=> d!1367 m!7487))

(declare-fun m!7489 () Bool)

(assert (=> d!1367 m!7489))

(declare-fun m!7491 () Bool)

(assert (=> d!1367 m!7491))

(declare-fun m!7493 () Bool)

(assert (=> b!11232 m!7493))

(declare-fun m!7495 () Bool)

(assert (=> b!11233 m!7495))

(assert (=> b!11171 d!1367))

(declare-fun d!1369 () Bool)

(declare-fun res!9387 () Bool)

(declare-fun e!6622 () Bool)

(assert (=> d!1369 (=> res!9387 e!6622)))

(assert (=> d!1369 (= res!9387 ((_ is Nil!330) (toList!183 (+!24 lm!227 lt!2771))))))

(assert (=> d!1369 (= (forall!57 (toList!183 (+!24 lm!227 lt!2771)) p!216) e!6622)))

(declare-fun b!11234 () Bool)

(declare-fun e!6623 () Bool)

(assert (=> b!11234 (= e!6622 e!6623)))

(declare-fun res!9388 () Bool)

(assert (=> b!11234 (=> (not res!9388) (not e!6623))))

(assert (=> b!11234 (= res!9388 (dynLambda!68 p!216 (h!895 (toList!183 (+!24 lm!227 lt!2771)))))))

(declare-fun b!11235 () Bool)

(assert (=> b!11235 (= e!6623 (forall!57 (t!2582 (toList!183 (+!24 lm!227 lt!2771))) p!216))))

(assert (= (and d!1369 (not res!9387)) b!11234))

(assert (= (and b!11234 res!9388) b!11235))

(declare-fun b_lambda!581 () Bool)

(assert (=> (not b_lambda!581) (not b!11234)))

(declare-fun t!2603 () Bool)

(declare-fun tb!267 () Bool)

(assert (=> (and start!1454 (= p!216 p!216) t!2603) tb!267))

(declare-fun result!429 () Bool)

(assert (=> tb!267 (= result!429 true)))

(assert (=> b!11234 t!2603))

(declare-fun b_and!723 () Bool)

(assert (= b_and!717 (and (=> t!2603 result!429) b_and!723)))

(declare-fun m!7497 () Bool)

(assert (=> b!11234 m!7497))

(declare-fun m!7499 () Bool)

(assert (=> b!11235 m!7499))

(assert (=> b!11171 d!1369))

(declare-fun d!1371 () Bool)

(assert (=> d!1371 (forall!57 (toList!183 (+!24 lm!227 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771)))) p!216)))

(declare-fun lt!2828 () Unit!235)

(declare-fun choose!155 (ListLongMap!335 Int (_ BitVec 64) B!382) Unit!235)

(assert (=> d!1371 (= lt!2828 (choose!155 lm!227 p!216 (_1!177 lt!2771) (_2!177 lt!2771)))))

(declare-fun e!6633 () Bool)

(assert (=> d!1371 e!6633))

(declare-fun res!9403 () Bool)

(assert (=> d!1371 (=> (not res!9403) (not e!6633))))

(assert (=> d!1371 (= res!9403 (forall!57 (toList!183 lm!227) p!216))))

(assert (=> d!1371 (= (addValidProp!12 lm!227 p!216 (_1!177 lt!2771) (_2!177 lt!2771)) lt!2828)))

(declare-fun b!11251 () Bool)

(assert (=> b!11251 (= e!6633 (dynLambda!68 p!216 (tuple2!355 (_1!177 lt!2771) (_2!177 lt!2771))))))

(assert (= (and d!1371 res!9403) b!11251))

(declare-fun b_lambda!585 () Bool)

(assert (=> (not b_lambda!585) (not b!11251)))

(declare-fun t!2607 () Bool)

(declare-fun tb!271 () Bool)

(assert (=> (and start!1454 (= p!216 p!216) t!2607) tb!271))

(declare-fun result!433 () Bool)

(assert (=> tb!271 (= result!433 true)))

(assert (=> b!11251 t!2607))

(declare-fun b_and!727 () Bool)

(assert (= b_and!723 (and (=> t!2607 result!433) b_and!727)))

(assert (=> d!1371 m!7397))

(assert (=> d!1371 m!7395))

(declare-fun m!7553 () Bool)

(assert (=> d!1371 m!7553))

(assert (=> d!1371 m!7405))

(declare-fun m!7555 () Bool)

(assert (=> b!11251 m!7555))

(assert (=> b!11171 d!1371))

(declare-fun d!1387 () Bool)

(assert (=> d!1387 (= (head!771 kvs!4) (h!895 kvs!4))))

(assert (=> b!11171 d!1387))

(declare-fun d!1389 () Bool)

(declare-fun res!9408 () Bool)

(declare-fun e!6637 () Bool)

(assert (=> d!1389 (=> res!9408 e!6637)))

(assert (=> d!1389 (= res!9408 ((_ is Nil!330) (tail!51 kvs!4)))))

(assert (=> d!1389 (= (forall!57 (tail!51 kvs!4) p!216) e!6637)))

(declare-fun b!11256 () Bool)

(declare-fun e!6638 () Bool)

(assert (=> b!11256 (= e!6637 e!6638)))

(declare-fun res!9409 () Bool)

(assert (=> b!11256 (=> (not res!9409) (not e!6638))))

(assert (=> b!11256 (= res!9409 (dynLambda!68 p!216 (h!895 (tail!51 kvs!4))))))

(declare-fun b!11258 () Bool)

(assert (=> b!11258 (= e!6638 (forall!57 (t!2582 (tail!51 kvs!4)) p!216))))

(assert (= (and d!1389 (not res!9408)) b!11256))

(assert (= (and b!11256 res!9409) b!11258))

(declare-fun b_lambda!589 () Bool)

(assert (=> (not b_lambda!589) (not b!11256)))

(declare-fun t!2611 () Bool)

(declare-fun tb!275 () Bool)

(assert (=> (and start!1454 (= p!216 p!216) t!2611) tb!275))

(declare-fun result!439 () Bool)

(assert (=> tb!275 (= result!439 true)))

(assert (=> b!11256 t!2611))

(declare-fun b_and!731 () Bool)

(assert (= b_and!727 (and (=> t!2611 result!439) b_and!731)))

(declare-fun m!7561 () Bool)

(assert (=> b!11256 m!7561))

(declare-fun m!7563 () Bool)

(assert (=> b!11258 m!7563))

(assert (=> b!11166 d!1389))

(declare-fun d!1391 () Bool)

(assert (=> d!1391 (= (tail!51 kvs!4) (t!2582 kvs!4))))

(assert (=> b!11166 d!1391))

(declare-fun d!1393 () Bool)

(declare-fun res!9410 () Bool)

(declare-fun e!6643 () Bool)

(assert (=> d!1393 (=> res!9410 e!6643)))

(assert (=> d!1393 (= res!9410 ((_ is Nil!330) kvs!4))))

(assert (=> d!1393 (= (forall!57 kvs!4 p!216) e!6643)))

(declare-fun b!11264 () Bool)

(declare-fun e!6644 () Bool)

(assert (=> b!11264 (= e!6643 e!6644)))

(declare-fun res!9411 () Bool)

(assert (=> b!11264 (=> (not res!9411) (not e!6644))))

(assert (=> b!11264 (= res!9411 (dynLambda!68 p!216 (h!895 kvs!4)))))

(declare-fun b!11265 () Bool)

(assert (=> b!11265 (= e!6644 (forall!57 (t!2582 kvs!4) p!216))))

(assert (= (and d!1393 (not res!9410)) b!11264))

(assert (= (and b!11264 res!9411) b!11265))

(declare-fun b_lambda!603 () Bool)

(assert (=> (not b_lambda!603) (not b!11264)))

(declare-fun t!2613 () Bool)

(declare-fun tb!277 () Bool)

(assert (=> (and start!1454 (= p!216 p!216) t!2613) tb!277))

(declare-fun result!441 () Bool)

(assert (=> tb!277 (= result!441 true)))

(assert (=> b!11264 t!2613))

(declare-fun b_and!733 () Bool)

(assert (= b_and!731 (and (=> t!2613 result!441) b_and!733)))

(declare-fun m!7565 () Bool)

(assert (=> b!11264 m!7565))

(declare-fun m!7567 () Bool)

(assert (=> b!11265 m!7567))

(assert (=> b!11167 d!1393))

(declare-fun d!1395 () Bool)

(assert (=> d!1395 (= (isEmpty!64 kvs!4) ((_ is Nil!330) kvs!4))))

(assert (=> b!11168 d!1395))

(declare-fun b!11273 () Bool)

(declare-fun e!6649 () Bool)

(declare-fun tp!1845 () Bool)

(assert (=> b!11273 (= e!6649 (and tp_is_empty!555 tp!1845))))

(assert (=> b!11169 (= tp!1827 e!6649)))

(assert (= (and b!11169 ((_ is Cons!329) (t!2582 kvs!4))) b!11273))

(declare-fun b!11274 () Bool)

(declare-fun e!6650 () Bool)

(declare-fun tp!1846 () Bool)

(assert (=> b!11274 (= e!6650 (and tp_is_empty!555 tp!1846))))

(assert (=> b!11170 (= tp!1828 e!6650)))

(assert (= (and b!11170 ((_ is Cons!329) (toList!183 lm!227))) b!11274))

(declare-fun b_lambda!605 () Bool)

(assert (= b_lambda!565 (or (and start!1454 b_free!441) b_lambda!605)))

(declare-fun b_lambda!607 () Bool)

(assert (= b_lambda!603 (or (and start!1454 b_free!441) b_lambda!607)))

(declare-fun b_lambda!609 () Bool)

(assert (= b_lambda!585 (or (and start!1454 b_free!441) b_lambda!609)))

(declare-fun b_lambda!611 () Bool)

(assert (= b_lambda!581 (or (and start!1454 b_free!441) b_lambda!611)))

(declare-fun b_lambda!613 () Bool)

(assert (= b_lambda!575 (or (and start!1454 b_free!441) b_lambda!613)))

(declare-fun b_lambda!615 () Bool)

(assert (= b_lambda!589 (or (and start!1454 b_free!441) b_lambda!615)))

(check-sat (not b!11273) (not b_lambda!605) (not d!1359) (not d!1345) (not b!11258) (not b!11228) (not d!1367) (not b_lambda!611) (not b_lambda!607) (not b!11229) (not b_lambda!613) (not b!11235) (not b_lambda!615) (not b!11232) b_and!733 (not d!1371) (not b!11265) (not b!11201) (not b!11215) (not b_next!441) (not b_lambda!609) tp_is_empty!555 (not b!11233) (not b!11274))
(check-sat b_and!733 (not b_next!441))
