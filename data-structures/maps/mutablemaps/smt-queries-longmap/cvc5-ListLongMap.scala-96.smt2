; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1452 () Bool)

(assert start!1452)

(declare-fun b_free!439 () Bool)

(declare-fun b_next!439 () Bool)

(assert (=> start!1452 (= b_free!439 (not b_next!439))))

(declare-fun tp!1819 () Bool)

(declare-fun b_and!699 () Bool)

(assert (=> start!1452 (= tp!1819 b_and!699)))

(declare-fun res!9319 () Bool)

(declare-fun e!6557 () Bool)

(assert (=> start!1452 (=> (not res!9319) (not e!6557))))

(declare-datatypes ((B!380 0))(
  ( (B!381 (val!285 Int)) )
))
(declare-datatypes ((tuple2!352 0))(
  ( (tuple2!353 (_1!176 (_ BitVec 64)) (_2!176 B!380)) )
))
(declare-datatypes ((List!332 0))(
  ( (Nil!329) (Cons!328 (h!894 tuple2!352) (t!2581 List!332)) )
))
(declare-datatypes ((ListLongMap!333 0))(
  ( (ListLongMap!334 (toList!182 List!332)) )
))
(declare-fun lm!227 () ListLongMap!333)

(declare-fun p!216 () Int)

(declare-fun forall!56 (List!332 Int) Bool)

(assert (=> start!1452 (= res!9319 (forall!56 (toList!182 lm!227) p!216))))

(assert (=> start!1452 e!6557))

(declare-fun e!6560 () Bool)

(declare-fun inv!550 (ListLongMap!333) Bool)

(assert (=> start!1452 (and (inv!550 lm!227) e!6560)))

(assert (=> start!1452 tp!1819))

(declare-fun e!6558 () Bool)

(assert (=> start!1452 e!6558))

(declare-fun b!11148 () Bool)

(declare-fun e!6559 () Bool)

(assert (=> b!11148 (= e!6557 (not e!6559))))

(declare-fun res!9316 () Bool)

(assert (=> b!11148 (=> (not res!9316) (not e!6559))))

(declare-fun lt!2765 () tuple2!352)

(declare-fun +!23 (ListLongMap!333 tuple2!352) ListLongMap!333)

(assert (=> b!11148 (= res!9316 (forall!56 (toList!182 (+!23 lm!227 lt!2765)) p!216))))

(assert (=> b!11148 (forall!56 (toList!182 (+!23 lm!227 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765)))) p!216)))

(declare-datatypes ((Unit!233 0))(
  ( (Unit!234) )
))
(declare-fun lt!2766 () Unit!233)

(declare-fun addValidProp!11 (ListLongMap!333 Int (_ BitVec 64) B!380) Unit!233)

(assert (=> b!11148 (= lt!2766 (addValidProp!11 lm!227 p!216 (_1!176 lt!2765) (_2!176 lt!2765)))))

(declare-fun kvs!4 () List!332)

(declare-fun head!770 (List!332) tuple2!352)

(assert (=> b!11148 (= lt!2765 (head!770 kvs!4))))

(declare-fun b!11149 () Bool)

(declare-fun tail!50 (List!332) List!332)

(assert (=> b!11149 (= e!6559 (forall!56 (tail!50 kvs!4) p!216))))

(declare-fun b!11150 () Bool)

(declare-fun res!9317 () Bool)

(assert (=> b!11150 (=> (not res!9317) (not e!6557))))

(declare-fun isEmpty!63 (List!332) Bool)

(assert (=> b!11150 (= res!9317 (not (isEmpty!63 kvs!4)))))

(declare-fun b!11151 () Bool)

(declare-fun res!9318 () Bool)

(assert (=> b!11151 (=> (not res!9318) (not e!6557))))

(assert (=> b!11151 (= res!9318 (forall!56 kvs!4 p!216))))

(declare-fun b!11152 () Bool)

(declare-fun tp!1818 () Bool)

(assert (=> b!11152 (= e!6560 tp!1818)))

(declare-fun b!11153 () Bool)

(declare-fun tp_is_empty!553 () Bool)

(declare-fun tp!1820 () Bool)

(assert (=> b!11153 (= e!6558 (and tp_is_empty!553 tp!1820))))

(assert (= (and start!1452 res!9319) b!11151))

(assert (= (and b!11151 res!9318) b!11150))

(assert (= (and b!11150 res!9317) b!11148))

(assert (= (and b!11148 res!9316) b!11149))

(assert (= start!1452 b!11152))

(assert (= (and start!1452 (is-Cons!328 kvs!4)) b!11153))

(declare-fun m!7361 () Bool)

(assert (=> start!1452 m!7361))

(declare-fun m!7363 () Bool)

(assert (=> start!1452 m!7363))

(declare-fun m!7365 () Bool)

(assert (=> b!11148 m!7365))

(declare-fun m!7367 () Bool)

(assert (=> b!11148 m!7367))

(declare-fun m!7369 () Bool)

(assert (=> b!11148 m!7369))

(declare-fun m!7371 () Bool)

(assert (=> b!11148 m!7371))

(declare-fun m!7373 () Bool)

(assert (=> b!11148 m!7373))

(declare-fun m!7375 () Bool)

(assert (=> b!11148 m!7375))

(declare-fun m!7377 () Bool)

(assert (=> b!11151 m!7377))

(declare-fun m!7379 () Bool)

(assert (=> b!11150 m!7379))

(declare-fun m!7381 () Bool)

(assert (=> b!11149 m!7381))

(assert (=> b!11149 m!7381))

(declare-fun m!7383 () Bool)

(assert (=> b!11149 m!7383))

(push 1)

(assert (not b!11150))

(assert tp_is_empty!553)

(assert (not b!11151))

(assert (not b!11152))

(assert (not b!11149))

(assert (not b!11148))

(assert (not start!1452))

(assert (not b_next!439))

(assert b_and!699)

(assert (not b!11153))

(check-sat)

(pop 1)

(push 1)

(assert b_and!699)

(assert (not b_next!439))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1335 () Bool)

(declare-fun res!9352 () Bool)

(declare-fun e!6593 () Bool)

(assert (=> d!1335 (=> res!9352 e!6593)))

(assert (=> d!1335 (= res!9352 (is-Nil!329 (tail!50 kvs!4)))))

(assert (=> d!1335 (= (forall!56 (tail!50 kvs!4) p!216) e!6593)))

(declare-fun b!11198 () Bool)

(declare-fun e!6594 () Bool)

(assert (=> b!11198 (= e!6593 e!6594)))

(declare-fun res!9353 () Bool)

(assert (=> b!11198 (=> (not res!9353) (not e!6594))))

(declare-fun dynLambda!67 (Int tuple2!352) Bool)

(assert (=> b!11198 (= res!9353 (dynLambda!67 p!216 (h!894 (tail!50 kvs!4))))))

(declare-fun b!11199 () Bool)

(assert (=> b!11199 (= e!6594 (forall!56 (t!2581 (tail!50 kvs!4)) p!216))))

(assert (= (and d!1335 (not res!9352)) b!11198))

(assert (= (and b!11198 res!9353) b!11199))

(declare-fun b_lambda!563 () Bool)

(assert (=> (not b_lambda!563) (not b!11198)))

(declare-fun t!2585 () Bool)

(declare-fun tb!249 () Bool)

(assert (=> (and start!1452 (= p!216 p!216) t!2585) tb!249))

(declare-fun result!411 () Bool)

(assert (=> tb!249 (= result!411 true)))

(assert (=> b!11198 t!2585))

(declare-fun b_and!705 () Bool)

(assert (= b_and!699 (and (=> t!2585 result!411) b_and!705)))

(declare-fun m!7433 () Bool)

(assert (=> b!11198 m!7433))

(declare-fun m!7435 () Bool)

(assert (=> b!11199 m!7435))

(assert (=> b!11149 d!1335))

(declare-fun d!1341 () Bool)

(assert (=> d!1341 (= (tail!50 kvs!4) (t!2581 kvs!4))))

(assert (=> b!11149 d!1341))

(declare-fun d!1343 () Bool)

(assert (=> d!1343 (= (isEmpty!63 kvs!4) (is-Nil!329 kvs!4))))

(assert (=> b!11150 d!1343))

(declare-fun d!1347 () Bool)

(declare-fun res!9362 () Bool)

(declare-fun e!6603 () Bool)

(assert (=> d!1347 (=> res!9362 e!6603)))

(assert (=> d!1347 (= res!9362 (is-Nil!329 kvs!4))))

(assert (=> d!1347 (= (forall!56 kvs!4 p!216) e!6603)))

(declare-fun b!11208 () Bool)

(declare-fun e!6604 () Bool)

(assert (=> b!11208 (= e!6603 e!6604)))

(declare-fun res!9363 () Bool)

(assert (=> b!11208 (=> (not res!9363) (not e!6604))))

(assert (=> b!11208 (= res!9363 (dynLambda!67 p!216 (h!894 kvs!4)))))

(declare-fun b!11209 () Bool)

(assert (=> b!11209 (= e!6604 (forall!56 (t!2581 kvs!4) p!216))))

(assert (= (and d!1347 (not res!9362)) b!11208))

(assert (= (and b!11208 res!9363) b!11209))

(declare-fun b_lambda!569 () Bool)

(assert (=> (not b_lambda!569) (not b!11208)))

(declare-fun t!2589 () Bool)

(declare-fun tb!253 () Bool)

(assert (=> (and start!1452 (= p!216 p!216) t!2589) tb!253))

(declare-fun result!415 () Bool)

(assert (=> tb!253 (= result!415 true)))

(assert (=> b!11208 t!2589))

(declare-fun b_and!709 () Bool)

(assert (= b_and!705 (and (=> t!2589 result!415) b_and!709)))

(declare-fun m!7441 () Bool)

(assert (=> b!11208 m!7441))

(declare-fun m!7445 () Bool)

(assert (=> b!11209 m!7445))

(assert (=> b!11151 d!1347))

(declare-fun d!1349 () Bool)

(declare-fun res!9364 () Bool)

(declare-fun e!6605 () Bool)

(assert (=> d!1349 (=> res!9364 e!6605)))

(assert (=> d!1349 (= res!9364 (is-Nil!329 (toList!182 lm!227)))))

(assert (=> d!1349 (= (forall!56 (toList!182 lm!227) p!216) e!6605)))

(declare-fun b!11210 () Bool)

(declare-fun e!6606 () Bool)

(assert (=> b!11210 (= e!6605 e!6606)))

(declare-fun res!9365 () Bool)

(assert (=> b!11210 (=> (not res!9365) (not e!6606))))

(assert (=> b!11210 (= res!9365 (dynLambda!67 p!216 (h!894 (toList!182 lm!227))))))

(declare-fun b!11211 () Bool)

(assert (=> b!11211 (= e!6606 (forall!56 (t!2581 (toList!182 lm!227)) p!216))))

(assert (= (and d!1349 (not res!9364)) b!11210))

(assert (= (and b!11210 res!9365) b!11211))

(declare-fun b_lambda!571 () Bool)

(assert (=> (not b_lambda!571) (not b!11210)))

(declare-fun t!2593 () Bool)

(declare-fun tb!257 () Bool)

(assert (=> (and start!1452 (= p!216 p!216) t!2593) tb!257))

(declare-fun result!419 () Bool)

(assert (=> tb!257 (= result!419 true)))

(assert (=> b!11210 t!2593))

(declare-fun b_and!713 () Bool)

(assert (= b_and!709 (and (=> t!2593 result!419) b_and!713)))

(declare-fun m!7449 () Bool)

(assert (=> b!11210 m!7449))

(declare-fun m!7451 () Bool)

(assert (=> b!11211 m!7451))

(assert (=> start!1452 d!1349))

(declare-fun d!1353 () Bool)

(declare-fun isStrictlySorted!42 (List!332) Bool)

(assert (=> d!1353 (= (inv!550 lm!227) (isStrictlySorted!42 (toList!182 lm!227)))))

(declare-fun bs!427 () Bool)

(assert (= bs!427 d!1353))

(declare-fun m!7463 () Bool)

(assert (=> bs!427 m!7463))

(assert (=> start!1452 d!1353))

(declare-fun d!1361 () Bool)

(declare-fun res!9370 () Bool)

(declare-fun e!6611 () Bool)

(assert (=> d!1361 (=> res!9370 e!6611)))

(assert (=> d!1361 (= res!9370 (is-Nil!329 (toList!182 (+!23 lm!227 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765))))))))

(assert (=> d!1361 (= (forall!56 (toList!182 (+!23 lm!227 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765)))) p!216) e!6611)))

(declare-fun b!11216 () Bool)

(declare-fun e!6612 () Bool)

(assert (=> b!11216 (= e!6611 e!6612)))

(declare-fun res!9371 () Bool)

(assert (=> b!11216 (=> (not res!9371) (not e!6612))))

(assert (=> b!11216 (= res!9371 (dynLambda!67 p!216 (h!894 (toList!182 (+!23 lm!227 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765)))))))))

(declare-fun b!11217 () Bool)

(assert (=> b!11217 (= e!6612 (forall!56 (t!2581 (toList!182 (+!23 lm!227 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765))))) p!216))))

(assert (= (and d!1361 (not res!9370)) b!11216))

(assert (= (and b!11216 res!9371) b!11217))

(declare-fun b_lambda!577 () Bool)

(assert (=> (not b_lambda!577) (not b!11216)))

(declare-fun t!2599 () Bool)

(declare-fun tb!263 () Bool)

(assert (=> (and start!1452 (= p!216 p!216) t!2599) tb!263))

(declare-fun result!425 () Bool)

(assert (=> tb!263 (= result!425 true)))

(assert (=> b!11216 t!2599))

(declare-fun b_and!719 () Bool)

(assert (= b_and!713 (and (=> t!2599 result!425) b_and!719)))

(declare-fun m!7465 () Bool)

(assert (=> b!11216 m!7465))

(declare-fun m!7467 () Bool)

(assert (=> b!11217 m!7467))

(assert (=> b!11148 d!1361))

(declare-fun d!1363 () Bool)

(assert (=> d!1363 (forall!56 (toList!182 (+!23 lm!227 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765)))) p!216)))

(declare-fun lt!2789 () Unit!233)

(declare-fun choose!154 (ListLongMap!333 Int (_ BitVec 64) B!380) Unit!233)

(assert (=> d!1363 (= lt!2789 (choose!154 lm!227 p!216 (_1!176 lt!2765) (_2!176 lt!2765)))))

(declare-fun e!6617 () Bool)

(assert (=> d!1363 e!6617))

(declare-fun res!9378 () Bool)

(assert (=> d!1363 (=> (not res!9378) (not e!6617))))

(assert (=> d!1363 (= res!9378 (forall!56 (toList!182 lm!227) p!216))))

(assert (=> d!1363 (= (addValidProp!11 lm!227 p!216 (_1!176 lt!2765) (_2!176 lt!2765)) lt!2789)))

(declare-fun b!11225 () Bool)

(assert (=> b!11225 (= e!6617 (dynLambda!67 p!216 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765))))))

(assert (= (and d!1363 res!9378) b!11225))

(declare-fun b_lambda!579 () Bool)

(assert (=> (not b_lambda!579) (not b!11225)))

(declare-fun t!2601 () Bool)

(declare-fun tb!265 () Bool)

(assert (=> (and start!1452 (= p!216 p!216) t!2601) tb!265))

(declare-fun result!427 () Bool)

(assert (=> tb!265 (= result!427 true)))

(assert (=> b!11225 t!2601))

(declare-fun b_and!721 () Bool)

(assert (= b_and!719 (and (=> t!2601 result!427) b_and!721)))

(assert (=> d!1363 m!7365))

(assert (=> d!1363 m!7371))

(declare-fun m!7469 () Bool)

(assert (=> d!1363 m!7469))

(assert (=> d!1363 m!7361))

(declare-fun m!7471 () Bool)

(assert (=> b!11225 m!7471))

(assert (=> b!11148 d!1363))

(declare-fun d!1365 () Bool)

(declare-fun e!6632 () Bool)

(assert (=> d!1365 e!6632))

(declare-fun res!9402 () Bool)

(assert (=> d!1365 (=> (not res!9402) (not e!6632))))

(declare-fun lt!2825 () ListLongMap!333)

(declare-fun contains!145 (ListLongMap!333 (_ BitVec 64)) Bool)

(assert (=> d!1365 (= res!9402 (contains!145 lt!2825 (_1!176 lt!2765)))))

(declare-fun lt!2827 () List!332)

(assert (=> d!1365 (= lt!2825 (ListLongMap!334 lt!2827))))

(declare-fun lt!2824 () Unit!233)

(declare-fun lt!2826 () Unit!233)

(assert (=> d!1365 (= lt!2824 lt!2826)))

(declare-datatypes ((Option!30 0))(
  ( (Some!29 (v!1344 B!380)) (None!28) )
))
(declare-fun getValueByKey!24 (List!332 (_ BitVec 64)) Option!30)

(assert (=> d!1365 (= (getValueByKey!24 lt!2827 (_1!176 lt!2765)) (Some!29 (_2!176 lt!2765)))))

(declare-fun lemmaContainsTupThenGetReturnValue!8 (List!332 (_ BitVec 64) B!380) Unit!233)

(assert (=> d!1365 (= lt!2826 (lemmaContainsTupThenGetReturnValue!8 lt!2827 (_1!176 lt!2765) (_2!176 lt!2765)))))

(declare-fun insertStrictlySorted!8 (List!332 (_ BitVec 64) B!380) List!332)

(assert (=> d!1365 (= lt!2827 (insertStrictlySorted!8 (toList!182 lm!227) (_1!176 lt!2765) (_2!176 lt!2765)))))

(assert (=> d!1365 (= (+!23 lm!227 lt!2765) lt!2825)))

(declare-fun b!11249 () Bool)

(declare-fun res!9401 () Bool)

(assert (=> b!11249 (=> (not res!9401) (not e!6632))))

(assert (=> b!11249 (= res!9401 (= (getValueByKey!24 (toList!182 lt!2825) (_1!176 lt!2765)) (Some!29 (_2!176 lt!2765))))))

(declare-fun b!11250 () Bool)

(declare-fun contains!146 (List!332 tuple2!352) Bool)

(assert (=> b!11250 (= e!6632 (contains!146 (toList!182 lt!2825) lt!2765))))

(assert (= (and d!1365 res!9402) b!11249))

(assert (= (and b!11249 res!9401) b!11250))

(declare-fun m!7529 () Bool)

(assert (=> d!1365 m!7529))

(declare-fun m!7531 () Bool)

(assert (=> d!1365 m!7531))

(declare-fun m!7533 () Bool)

(assert (=> d!1365 m!7533))

(declare-fun m!7535 () Bool)

(assert (=> d!1365 m!7535))

(declare-fun m!7537 () Bool)

(assert (=> b!11249 m!7537))

(declare-fun m!7539 () Bool)

(assert (=> b!11250 m!7539))

(assert (=> b!11148 d!1365))

(declare-fun d!1381 () Bool)

(assert (=> d!1381 (= (head!770 kvs!4) (h!894 kvs!4))))

(assert (=> b!11148 d!1381))

(declare-fun d!1383 () Bool)

(declare-fun e!6634 () Bool)

(assert (=> d!1383 e!6634))

(declare-fun res!9405 () Bool)

(assert (=> d!1383 (=> (not res!9405) (not e!6634))))

(declare-fun lt!2830 () ListLongMap!333)

(assert (=> d!1383 (= res!9405 (contains!145 lt!2830 (_1!176 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765)))))))

(declare-fun lt!2832 () List!332)

(assert (=> d!1383 (= lt!2830 (ListLongMap!334 lt!2832))))

(declare-fun lt!2829 () Unit!233)

(declare-fun lt!2831 () Unit!233)

(assert (=> d!1383 (= lt!2829 lt!2831)))

(assert (=> d!1383 (= (getValueByKey!24 lt!2832 (_1!176 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765)))) (Some!29 (_2!176 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765)))))))

(assert (=> d!1383 (= lt!2831 (lemmaContainsTupThenGetReturnValue!8 lt!2832 (_1!176 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765))) (_2!176 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765)))))))

(assert (=> d!1383 (= lt!2832 (insertStrictlySorted!8 (toList!182 lm!227) (_1!176 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765))) (_2!176 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765)))))))

(assert (=> d!1383 (= (+!23 lm!227 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765))) lt!2830)))

(declare-fun b!11252 () Bool)

(declare-fun res!9404 () Bool)

(assert (=> b!11252 (=> (not res!9404) (not e!6634))))

(assert (=> b!11252 (= res!9404 (= (getValueByKey!24 (toList!182 lt!2830) (_1!176 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765)))) (Some!29 (_2!176 (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765))))))))

(declare-fun b!11253 () Bool)

(assert (=> b!11253 (= e!6634 (contains!146 (toList!182 lt!2830) (tuple2!353 (_1!176 lt!2765) (_2!176 lt!2765))))))

(assert (= (and d!1383 res!9405) b!11252))

(assert (= (and b!11252 res!9404) b!11253))

(declare-fun m!7541 () Bool)

(assert (=> d!1383 m!7541))

(declare-fun m!7543 () Bool)

(assert (=> d!1383 m!7543))

(declare-fun m!7545 () Bool)

(assert (=> d!1383 m!7545))

(declare-fun m!7547 () Bool)

(assert (=> d!1383 m!7547))

(declare-fun m!7549 () Bool)

(assert (=> b!11252 m!7549))

(declare-fun m!7551 () Bool)

(assert (=> b!11253 m!7551))

(assert (=> b!11148 d!1383))

(declare-fun d!1385 () Bool)

(declare-fun res!9406 () Bool)

(declare-fun e!6635 () Bool)

(assert (=> d!1385 (=> res!9406 e!6635)))

(assert (=> d!1385 (= res!9406 (is-Nil!329 (toList!182 (+!23 lm!227 lt!2765))))))

(assert (=> d!1385 (= (forall!56 (toList!182 (+!23 lm!227 lt!2765)) p!216) e!6635)))

(declare-fun b!11254 () Bool)

(declare-fun e!6636 () Bool)

(assert (=> b!11254 (= e!6635 e!6636)))

(declare-fun res!9407 () Bool)

(assert (=> b!11254 (=> (not res!9407) (not e!6636))))

(assert (=> b!11254 (= res!9407 (dynLambda!67 p!216 (h!894 (toList!182 (+!23 lm!227 lt!2765)))))))

(declare-fun b!11255 () Bool)

(assert (=> b!11255 (= e!6636 (forall!56 (t!2581 (toList!182 (+!23 lm!227 lt!2765))) p!216))))

(assert (= (and d!1385 (not res!9406)) b!11254))

(assert (= (and b!11254 res!9407) b!11255))

(declare-fun b_lambda!587 () Bool)

(assert (=> (not b_lambda!587) (not b!11254)))

(declare-fun t!2609 () Bool)

(declare-fun tb!273 () Bool)

(assert (=> (and start!1452 (= p!216 p!216) t!2609) tb!273))

(declare-fun result!435 () Bool)

(assert (=> tb!273 (= result!435 true)))

(assert (=> b!11254 t!2609))

(declare-fun b_and!729 () Bool)

(assert (= b_and!721 (and (=> t!2609 result!435) b_and!729)))

(declare-fun m!7557 () Bool)

(assert (=> b!11254 m!7557))

(declare-fun m!7559 () Bool)

(assert (=> b!11255 m!7559))

(assert (=> b!11148 d!1385))

(declare-fun b!11262 () Bool)

(declare-fun e!6641 () Bool)

(declare-fun tp!1841 () Bool)

(assert (=> b!11262 (= e!6641 (and tp_is_empty!553 tp!1841))))

(assert (=> b!11152 (= tp!1818 e!6641)))

(assert (= (and b!11152 (is-Cons!328 (toList!182 lm!227))) b!11262))

(declare-fun b!11263 () Bool)

(declare-fun e!6642 () Bool)

(declare-fun tp!1842 () Bool)

(assert (=> b!11263 (= e!6642 (and tp_is_empty!553 tp!1842))))

(assert (=> b!11153 (= tp!1820 e!6642)))

(assert (= (and b!11153 (is-Cons!328 (t!2581 kvs!4))) b!11263))

(declare-fun b_lambda!591 () Bool)

(assert (= b_lambda!577 (or (and start!1452 b_free!439) b_lambda!591)))

(declare-fun b_lambda!593 () Bool)

(assert (= b_lambda!579 (or (and start!1452 b_free!439) b_lambda!593)))

(declare-fun b_lambda!595 () Bool)

(assert (= b_lambda!569 (or (and start!1452 b_free!439) b_lambda!595)))

(declare-fun b_lambda!597 () Bool)

(assert (= b_lambda!571 (or (and start!1452 b_free!439) b_lambda!597)))

(declare-fun b_lambda!599 () Bool)

(assert (= b_lambda!587 (or (and start!1452 b_free!439) b_lambda!599)))

(declare-fun b_lambda!601 () Bool)

(assert (= b_lambda!563 (or (and start!1452 b_free!439) b_lambda!601)))

(push 1)

