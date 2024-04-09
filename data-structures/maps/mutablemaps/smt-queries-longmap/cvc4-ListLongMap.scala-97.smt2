; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1504 () Bool)

(assert start!1504)

(declare-fun b_free!449 () Bool)

(declare-fun b_next!449 () Bool)

(assert (=> start!1504 (= b_free!449 (not b_next!449))))

(declare-fun tp!1875 () Bool)

(declare-fun b_and!745 () Bool)

(assert (=> start!1504 (= tp!1875 b_and!745)))

(declare-fun res!9461 () Bool)

(declare-fun e!6695 () Bool)

(assert (=> start!1504 (=> (not res!9461) (not e!6695))))

(declare-datatypes ((B!390 0))(
  ( (B!391 (val!290 Int)) )
))
(declare-datatypes ((tuple2!362 0))(
  ( (tuple2!363 (_1!181 (_ BitVec 64)) (_2!181 B!390)) )
))
(declare-datatypes ((List!337 0))(
  ( (Nil!334) (Cons!333 (h!899 tuple2!362) (t!2622 List!337)) )
))
(declare-datatypes ((ListLongMap!343 0))(
  ( (ListLongMap!344 (toList!187 List!337)) )
))
(declare-fun lm!227 () ListLongMap!343)

(declare-fun p!216 () Int)

(declare-fun forall!61 (List!337 Int) Bool)

(assert (=> start!1504 (= res!9461 (forall!61 (toList!187 lm!227) p!216))))

(assert (=> start!1504 e!6695))

(declare-fun e!6694 () Bool)

(declare-fun inv!560 (ListLongMap!343) Bool)

(assert (=> start!1504 (and (inv!560 lm!227) e!6694)))

(assert (=> start!1504 tp!1875))

(declare-fun e!6692 () Bool)

(assert (=> start!1504 e!6692))

(declare-fun b!11342 () Bool)

(declare-fun e!6693 () Bool)

(declare-fun lt!2862 () List!337)

(declare-fun kvs!4 () List!337)

(declare-fun ListPrimitiveSize!12 (List!337) Int)

(assert (=> b!11342 (= e!6693 (< (ListPrimitiveSize!12 lt!2862) (ListPrimitiveSize!12 kvs!4)))))

(declare-fun b!11343 () Bool)

(declare-fun res!9459 () Bool)

(assert (=> b!11343 (=> res!9459 e!6693)))

(assert (=> b!11343 (= res!9459 (not (forall!61 lt!2862 p!216)))))

(declare-fun b!11344 () Bool)

(assert (=> b!11344 (= e!6695 (not e!6693))))

(declare-fun res!9462 () Bool)

(assert (=> b!11344 (=> res!9462 e!6693)))

(declare-fun lt!2861 () tuple2!362)

(declare-fun +!28 (ListLongMap!343 tuple2!362) ListLongMap!343)

(assert (=> b!11344 (= res!9462 (not (forall!61 (toList!187 (+!28 lm!227 lt!2861)) p!216)))))

(declare-fun tail!55 (List!337) List!337)

(assert (=> b!11344 (= lt!2862 (tail!55 kvs!4))))

(assert (=> b!11344 (forall!61 (toList!187 (+!28 lm!227 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861)))) p!216)))

(declare-datatypes ((Unit!243 0))(
  ( (Unit!244) )
))
(declare-fun lt!2860 () Unit!243)

(declare-fun addValidProp!16 (ListLongMap!343 Int (_ BitVec 64) B!390) Unit!243)

(assert (=> b!11344 (= lt!2860 (addValidProp!16 lm!227 p!216 (_1!181 lt!2861) (_2!181 lt!2861)))))

(declare-fun head!775 (List!337) tuple2!362)

(assert (=> b!11344 (= lt!2861 (head!775 kvs!4))))

(declare-fun b!11345 () Bool)

(declare-fun res!9460 () Bool)

(assert (=> b!11345 (=> (not res!9460) (not e!6695))))

(declare-fun isEmpty!68 (List!337) Bool)

(assert (=> b!11345 (= res!9460 (not (isEmpty!68 kvs!4)))))

(declare-fun b!11346 () Bool)

(declare-fun res!9463 () Bool)

(assert (=> b!11346 (=> (not res!9463) (not e!6695))))

(assert (=> b!11346 (= res!9463 (forall!61 kvs!4 p!216))))

(declare-fun b!11347 () Bool)

(declare-fun tp!1877 () Bool)

(assert (=> b!11347 (= e!6694 tp!1877)))

(declare-fun b!11348 () Bool)

(declare-fun tp_is_empty!563 () Bool)

(declare-fun tp!1876 () Bool)

(assert (=> b!11348 (= e!6692 (and tp_is_empty!563 tp!1876))))

(assert (= (and start!1504 res!9461) b!11346))

(assert (= (and b!11346 res!9463) b!11345))

(assert (= (and b!11345 res!9460) b!11344))

(assert (= (and b!11344 (not res!9462)) b!11343))

(assert (= (and b!11343 (not res!9459)) b!11342))

(assert (= start!1504 b!11347))

(assert (= (and start!1504 (is-Cons!333 kvs!4)) b!11348))

(declare-fun m!7639 () Bool)

(assert (=> b!11345 m!7639))

(declare-fun m!7641 () Bool)

(assert (=> b!11344 m!7641))

(declare-fun m!7643 () Bool)

(assert (=> b!11344 m!7643))

(declare-fun m!7645 () Bool)

(assert (=> b!11344 m!7645))

(declare-fun m!7647 () Bool)

(assert (=> b!11344 m!7647))

(declare-fun m!7649 () Bool)

(assert (=> b!11344 m!7649))

(declare-fun m!7651 () Bool)

(assert (=> b!11344 m!7651))

(declare-fun m!7653 () Bool)

(assert (=> b!11344 m!7653))

(declare-fun m!7655 () Bool)

(assert (=> start!1504 m!7655))

(declare-fun m!7657 () Bool)

(assert (=> start!1504 m!7657))

(declare-fun m!7659 () Bool)

(assert (=> b!11342 m!7659))

(declare-fun m!7661 () Bool)

(assert (=> b!11342 m!7661))

(declare-fun m!7663 () Bool)

(assert (=> b!11343 m!7663))

(declare-fun m!7665 () Bool)

(assert (=> b!11346 m!7665))

(push 1)

(assert (not b!11348))

(assert (not start!1504))

(assert (not b_next!449))

(assert (not b!11347))

(assert b_and!745)

(assert (not b!11345))

(assert (not b!11346))

(assert (not b!11342))

(assert (not b!11343))

(assert (not b!11344))

(assert tp_is_empty!563)

(check-sat)

(pop 1)

(push 1)

(assert b_and!745)

(assert (not b_next!449))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1409 () Bool)

(declare-fun res!9478 () Bool)

(declare-fun e!6714 () Bool)

(assert (=> d!1409 (=> res!9478 e!6714)))

(assert (=> d!1409 (= res!9478 (is-Nil!334 (toList!187 lm!227)))))

(assert (=> d!1409 (= (forall!61 (toList!187 lm!227) p!216) e!6714)))

(declare-fun b!11371 () Bool)

(declare-fun e!6715 () Bool)

(assert (=> b!11371 (= e!6714 e!6715)))

(declare-fun res!9479 () Bool)

(assert (=> b!11371 (=> (not res!9479) (not e!6715))))

(declare-fun dynLambda!72 (Int tuple2!362) Bool)

(assert (=> b!11371 (= res!9479 (dynLambda!72 p!216 (h!899 (toList!187 lm!227))))))

(declare-fun b!11372 () Bool)

(assert (=> b!11372 (= e!6715 (forall!61 (t!2622 (toList!187 lm!227)) p!216))))

(assert (= (and d!1409 (not res!9478)) b!11371))

(assert (= (and b!11371 res!9479) b!11372))

(declare-fun b_lambda!639 () Bool)

(assert (=> (not b_lambda!639) (not b!11371)))

(declare-fun t!2628 () Bool)

(declare-fun tb!289 () Bool)

(assert (=> (and start!1504 (= p!216 p!216) t!2628) tb!289))

(declare-fun result!457 () Bool)

(assert (=> tb!289 (= result!457 true)))

(assert (=> b!11371 t!2628))

(declare-fun b_and!751 () Bool)

(assert (= b_and!745 (and (=> t!2628 result!457) b_and!751)))

(declare-fun m!7679 () Bool)

(assert (=> b!11371 m!7679))

(declare-fun m!7681 () Bool)

(assert (=> b!11372 m!7681))

(assert (=> start!1504 d!1409))

(declare-fun d!1421 () Bool)

(declare-fun isStrictlySorted!43 (List!337) Bool)

(assert (=> d!1421 (= (inv!560 lm!227) (isStrictlySorted!43 (toList!187 lm!227)))))

(declare-fun bs!432 () Bool)

(assert (= bs!432 d!1421))

(declare-fun m!7683 () Bool)

(assert (=> bs!432 m!7683))

(assert (=> start!1504 d!1421))

(declare-fun d!1423 () Bool)

(declare-fun res!9482 () Bool)

(declare-fun e!6718 () Bool)

(assert (=> d!1423 (=> res!9482 e!6718)))

(assert (=> d!1423 (= res!9482 (is-Nil!334 (toList!187 (+!28 lm!227 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861))))))))

(assert (=> d!1423 (= (forall!61 (toList!187 (+!28 lm!227 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861)))) p!216) e!6718)))

(declare-fun b!11375 () Bool)

(declare-fun e!6719 () Bool)

(assert (=> b!11375 (= e!6718 e!6719)))

(declare-fun res!9483 () Bool)

(assert (=> b!11375 (=> (not res!9483) (not e!6719))))

(assert (=> b!11375 (= res!9483 (dynLambda!72 p!216 (h!899 (toList!187 (+!28 lm!227 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861)))))))))

(declare-fun b!11376 () Bool)

(assert (=> b!11376 (= e!6719 (forall!61 (t!2622 (toList!187 (+!28 lm!227 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861))))) p!216))))

(assert (= (and d!1423 (not res!9482)) b!11375))

(assert (= (and b!11375 res!9483) b!11376))

(declare-fun b_lambda!641 () Bool)

(assert (=> (not b_lambda!641) (not b!11375)))

(declare-fun t!2630 () Bool)

(declare-fun tb!291 () Bool)

(assert (=> (and start!1504 (= p!216 p!216) t!2630) tb!291))

(declare-fun result!459 () Bool)

(assert (=> tb!291 (= result!459 true)))

(assert (=> b!11375 t!2630))

(declare-fun b_and!753 () Bool)

(assert (= b_and!751 (and (=> t!2630 result!459) b_and!753)))

(declare-fun m!7685 () Bool)

(assert (=> b!11375 m!7685))

(declare-fun m!7687 () Bool)

(assert (=> b!11376 m!7687))

(assert (=> b!11344 d!1423))

(declare-fun d!1425 () Bool)

(assert (=> d!1425 (forall!61 (toList!187 (+!28 lm!227 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861)))) p!216)))

(declare-fun lt!2884 () Unit!243)

(declare-fun choose!158 (ListLongMap!343 Int (_ BitVec 64) B!390) Unit!243)

(assert (=> d!1425 (= lt!2884 (choose!158 lm!227 p!216 (_1!181 lt!2861) (_2!181 lt!2861)))))

(declare-fun e!6728 () Bool)

(assert (=> d!1425 e!6728))

(declare-fun res!9495 () Bool)

(assert (=> d!1425 (=> (not res!9495) (not e!6728))))

(assert (=> d!1425 (= res!9495 (forall!61 (toList!187 lm!227) p!216))))

(assert (=> d!1425 (= (addValidProp!16 lm!227 p!216 (_1!181 lt!2861) (_2!181 lt!2861)) lt!2884)))

(declare-fun b!11390 () Bool)

(assert (=> b!11390 (= e!6728 (dynLambda!72 p!216 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861))))))

(assert (= (and d!1425 res!9495) b!11390))

(declare-fun b_lambda!645 () Bool)

(assert (=> (not b_lambda!645) (not b!11390)))

(declare-fun t!2634 () Bool)

(declare-fun tb!295 () Bool)

(assert (=> (and start!1504 (= p!216 p!216) t!2634) tb!295))

(declare-fun result!463 () Bool)

(assert (=> tb!295 (= result!463 true)))

(assert (=> b!11390 t!2634))

(declare-fun b_and!757 () Bool)

(assert (= b_and!753 (and (=> t!2634 result!463) b_and!757)))

(assert (=> d!1425 m!7645))

(assert (=> d!1425 m!7647))

(declare-fun m!7705 () Bool)

(assert (=> d!1425 m!7705))

(assert (=> d!1425 m!7655))

(declare-fun m!7707 () Bool)

(assert (=> b!11390 m!7707))

(assert (=> b!11344 d!1425))

(declare-fun d!1435 () Bool)

(declare-fun e!6745 () Bool)

(assert (=> d!1435 e!6745))

(declare-fun res!9520 () Bool)

(assert (=> d!1435 (=> (not res!9520) (not e!6745))))

(declare-fun lt!2919 () ListLongMap!343)

(declare-fun contains!153 (ListLongMap!343 (_ BitVec 64)) Bool)

(assert (=> d!1435 (= res!9520 (contains!153 lt!2919 (_1!181 lt!2861)))))

(declare-fun lt!2918 () List!337)

(assert (=> d!1435 (= lt!2919 (ListLongMap!344 lt!2918))))

(declare-fun lt!2916 () Unit!243)

(declare-fun lt!2917 () Unit!243)

(assert (=> d!1435 (= lt!2916 lt!2917)))

(declare-datatypes ((Option!34 0))(
  ( (Some!33 (v!1348 B!390)) (None!32) )
))
(declare-fun getValueByKey!28 (List!337 (_ BitVec 64)) Option!34)

(assert (=> d!1435 (= (getValueByKey!28 lt!2918 (_1!181 lt!2861)) (Some!33 (_2!181 lt!2861)))))

(declare-fun lemmaContainsTupThenGetReturnValue!12 (List!337 (_ BitVec 64) B!390) Unit!243)

(assert (=> d!1435 (= lt!2917 (lemmaContainsTupThenGetReturnValue!12 lt!2918 (_1!181 lt!2861) (_2!181 lt!2861)))))

(declare-fun insertStrictlySorted!12 (List!337 (_ BitVec 64) B!390) List!337)

(assert (=> d!1435 (= lt!2918 (insertStrictlySorted!12 (toList!187 lm!227) (_1!181 lt!2861) (_2!181 lt!2861)))))

(assert (=> d!1435 (= (+!28 lm!227 lt!2861) lt!2919)))

(declare-fun b!11415 () Bool)

(declare-fun res!9519 () Bool)

(assert (=> b!11415 (=> (not res!9519) (not e!6745))))

(assert (=> b!11415 (= res!9519 (= (getValueByKey!28 (toList!187 lt!2919) (_1!181 lt!2861)) (Some!33 (_2!181 lt!2861))))))

(declare-fun b!11416 () Bool)

(declare-fun contains!154 (List!337 tuple2!362) Bool)

(assert (=> b!11416 (= e!6745 (contains!154 (toList!187 lt!2919) lt!2861))))

(assert (= (and d!1435 res!9520) b!11415))

(assert (= (and b!11415 res!9519) b!11416))

(declare-fun m!7757 () Bool)

(assert (=> d!1435 m!7757))

(declare-fun m!7761 () Bool)

(assert (=> d!1435 m!7761))

(declare-fun m!7763 () Bool)

(assert (=> d!1435 m!7763))

(declare-fun m!7767 () Bool)

(assert (=> d!1435 m!7767))

(declare-fun m!7769 () Bool)

(assert (=> b!11415 m!7769))

(declare-fun m!7771 () Bool)

(assert (=> b!11416 m!7771))

(assert (=> b!11344 d!1435))

(declare-fun d!1455 () Bool)

(declare-fun res!9525 () Bool)

(declare-fun e!6750 () Bool)

(assert (=> d!1455 (=> res!9525 e!6750)))

(assert (=> d!1455 (= res!9525 (is-Nil!334 (toList!187 (+!28 lm!227 lt!2861))))))

(assert (=> d!1455 (= (forall!61 (toList!187 (+!28 lm!227 lt!2861)) p!216) e!6750)))

(declare-fun b!11421 () Bool)

(declare-fun e!6751 () Bool)

(assert (=> b!11421 (= e!6750 e!6751)))

(declare-fun res!9526 () Bool)

(assert (=> b!11421 (=> (not res!9526) (not e!6751))))

(assert (=> b!11421 (= res!9526 (dynLambda!72 p!216 (h!899 (toList!187 (+!28 lm!227 lt!2861)))))))

(declare-fun b!11422 () Bool)

(assert (=> b!11422 (= e!6751 (forall!61 (t!2622 (toList!187 (+!28 lm!227 lt!2861))) p!216))))

(assert (= (and d!1455 (not res!9525)) b!11421))

(assert (= (and b!11421 res!9526) b!11422))

(declare-fun b_lambda!659 () Bool)

(assert (=> (not b_lambda!659) (not b!11421)))

(declare-fun t!2648 () Bool)

(declare-fun tb!309 () Bool)

(assert (=> (and start!1504 (= p!216 p!216) t!2648) tb!309))

(declare-fun result!477 () Bool)

(assert (=> tb!309 (= result!477 true)))

(assert (=> b!11421 t!2648))

(declare-fun b_and!771 () Bool)

(assert (= b_and!757 (and (=> t!2648 result!477) b_and!771)))

(declare-fun m!7781 () Bool)

(assert (=> b!11421 m!7781))

(declare-fun m!7783 () Bool)

(assert (=> b!11422 m!7783))

(assert (=> b!11344 d!1455))

(declare-fun d!1461 () Bool)

(assert (=> d!1461 (= (tail!55 kvs!4) (t!2622 kvs!4))))

(assert (=> b!11344 d!1461))

(declare-fun d!1463 () Bool)

(declare-fun e!6754 () Bool)

(assert (=> d!1463 e!6754))

(declare-fun res!9530 () Bool)

(assert (=> d!1463 (=> (not res!9530) (not e!6754))))

(declare-fun lt!2923 () ListLongMap!343)

(assert (=> d!1463 (= res!9530 (contains!153 lt!2923 (_1!181 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861)))))))

(declare-fun lt!2922 () List!337)

(assert (=> d!1463 (= lt!2923 (ListLongMap!344 lt!2922))))

(declare-fun lt!2920 () Unit!243)

(declare-fun lt!2921 () Unit!243)

(assert (=> d!1463 (= lt!2920 lt!2921)))

(assert (=> d!1463 (= (getValueByKey!28 lt!2922 (_1!181 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861)))) (Some!33 (_2!181 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861)))))))

(assert (=> d!1463 (= lt!2921 (lemmaContainsTupThenGetReturnValue!12 lt!2922 (_1!181 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861))) (_2!181 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861)))))))

(assert (=> d!1463 (= lt!2922 (insertStrictlySorted!12 (toList!187 lm!227) (_1!181 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861))) (_2!181 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861)))))))

(assert (=> d!1463 (= (+!28 lm!227 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861))) lt!2923)))

(declare-fun b!11425 () Bool)

(declare-fun res!9529 () Bool)

(assert (=> b!11425 (=> (not res!9529) (not e!6754))))

(assert (=> b!11425 (= res!9529 (= (getValueByKey!28 (toList!187 lt!2923) (_1!181 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861)))) (Some!33 (_2!181 (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861))))))))

(declare-fun b!11426 () Bool)

(assert (=> b!11426 (= e!6754 (contains!154 (toList!187 lt!2923) (tuple2!363 (_1!181 lt!2861) (_2!181 lt!2861))))))

(assert (= (and d!1463 res!9530) b!11425))

(assert (= (and b!11425 res!9529) b!11426))

(declare-fun m!7791 () Bool)

(assert (=> d!1463 m!7791))

(declare-fun m!7793 () Bool)

(assert (=> d!1463 m!7793))

(declare-fun m!7795 () Bool)

(assert (=> d!1463 m!7795))

(declare-fun m!7797 () Bool)

(assert (=> d!1463 m!7797))

(declare-fun m!7799 () Bool)

(assert (=> b!11425 m!7799))

(declare-fun m!7801 () Bool)

(assert (=> b!11426 m!7801))

(assert (=> b!11344 d!1463))

(declare-fun d!1469 () Bool)

(assert (=> d!1469 (= (head!775 kvs!4) (h!899 kvs!4))))

(assert (=> b!11344 d!1469))

(declare-fun d!1473 () Bool)

(declare-fun res!9533 () Bool)

(declare-fun e!6757 () Bool)

(assert (=> d!1473 (=> res!9533 e!6757)))

(assert (=> d!1473 (= res!9533 (is-Nil!334 lt!2862))))

(assert (=> d!1473 (= (forall!61 lt!2862 p!216) e!6757)))

