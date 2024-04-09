; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1502 () Bool)

(assert start!1502)

(declare-fun b_free!447 () Bool)

(declare-fun b_next!447 () Bool)

(assert (=> start!1502 (= b_free!447 (not b_next!447))))

(declare-fun tp!1866 () Bool)

(declare-fun b_and!743 () Bool)

(assert (=> start!1502 (= tp!1866 b_and!743)))

(declare-fun b!11321 () Bool)

(declare-fun e!6680 () Bool)

(declare-fun tp!1868 () Bool)

(assert (=> b!11321 (= e!6680 tp!1868)))

(declare-fun res!9446 () Bool)

(declare-fun e!6683 () Bool)

(assert (=> start!1502 (=> (not res!9446) (not e!6683))))

(declare-datatypes ((B!388 0))(
  ( (B!389 (val!289 Int)) )
))
(declare-datatypes ((tuple2!360 0))(
  ( (tuple2!361 (_1!180 (_ BitVec 64)) (_2!180 B!388)) )
))
(declare-datatypes ((List!336 0))(
  ( (Nil!333) (Cons!332 (h!898 tuple2!360) (t!2621 List!336)) )
))
(declare-datatypes ((ListLongMap!341 0))(
  ( (ListLongMap!342 (toList!186 List!336)) )
))
(declare-fun lm!227 () ListLongMap!341)

(declare-fun p!216 () Int)

(declare-fun forall!60 (List!336 Int) Bool)

(assert (=> start!1502 (= res!9446 (forall!60 (toList!186 lm!227) p!216))))

(assert (=> start!1502 e!6683))

(declare-fun inv!559 (ListLongMap!341) Bool)

(assert (=> start!1502 (and (inv!559 lm!227) e!6680)))

(assert (=> start!1502 tp!1866))

(declare-fun e!6681 () Bool)

(assert (=> start!1502 e!6681))

(declare-fun b!11322 () Bool)

(declare-fun res!9445 () Bool)

(assert (=> b!11322 (=> (not res!9445) (not e!6683))))

(declare-fun kvs!4 () List!336)

(assert (=> b!11322 (= res!9445 (forall!60 kvs!4 p!216))))

(declare-fun b!11323 () Bool)

(declare-fun e!6682 () Bool)

(assert (=> b!11323 (= e!6683 (not e!6682))))

(declare-fun res!9448 () Bool)

(assert (=> b!11323 (=> res!9448 e!6682)))

(declare-fun lt!2851 () tuple2!360)

(declare-fun +!27 (ListLongMap!341 tuple2!360) ListLongMap!341)

(assert (=> b!11323 (= res!9448 (not (forall!60 (toList!186 (+!27 lm!227 lt!2851)) p!216)))))

(declare-fun lt!2852 () List!336)

(declare-fun tail!54 (List!336) List!336)

(assert (=> b!11323 (= lt!2852 (tail!54 kvs!4))))

(assert (=> b!11323 (forall!60 (toList!186 (+!27 lm!227 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851)))) p!216)))

(declare-datatypes ((Unit!241 0))(
  ( (Unit!242) )
))
(declare-fun lt!2853 () Unit!241)

(declare-fun addValidProp!15 (ListLongMap!341 Int (_ BitVec 64) B!388) Unit!241)

(assert (=> b!11323 (= lt!2853 (addValidProp!15 lm!227 p!216 (_1!180 lt!2851) (_2!180 lt!2851)))))

(declare-fun head!774 (List!336) tuple2!360)

(assert (=> b!11323 (= lt!2851 (head!774 kvs!4))))

(declare-fun b!11324 () Bool)

(declare-fun ListPrimitiveSize!11 (List!336) Int)

(assert (=> b!11324 (= e!6682 (< (ListPrimitiveSize!11 lt!2852) (ListPrimitiveSize!11 kvs!4)))))

(declare-fun b!11325 () Bool)

(declare-fun tp_is_empty!561 () Bool)

(declare-fun tp!1867 () Bool)

(assert (=> b!11325 (= e!6681 (and tp_is_empty!561 tp!1867))))

(declare-fun b!11326 () Bool)

(declare-fun res!9447 () Bool)

(assert (=> b!11326 (=> res!9447 e!6682)))

(assert (=> b!11326 (= res!9447 (not (forall!60 lt!2852 p!216)))))

(declare-fun b!11327 () Bool)

(declare-fun res!9444 () Bool)

(assert (=> b!11327 (=> (not res!9444) (not e!6683))))

(declare-fun isEmpty!67 (List!336) Bool)

(assert (=> b!11327 (= res!9444 (not (isEmpty!67 kvs!4)))))

(assert (= (and start!1502 res!9446) b!11322))

(assert (= (and b!11322 res!9445) b!11327))

(assert (= (and b!11327 res!9444) b!11323))

(assert (= (and b!11323 (not res!9448)) b!11326))

(assert (= (and b!11326 (not res!9447)) b!11324))

(assert (= start!1502 b!11321))

(get-info :version)

(assert (= (and start!1502 ((_ is Cons!332) kvs!4)) b!11325))

(declare-fun m!7611 () Bool)

(assert (=> b!11326 m!7611))

(declare-fun m!7613 () Bool)

(assert (=> b!11324 m!7613))

(declare-fun m!7615 () Bool)

(assert (=> b!11324 m!7615))

(declare-fun m!7617 () Bool)

(assert (=> b!11323 m!7617))

(declare-fun m!7619 () Bool)

(assert (=> b!11323 m!7619))

(declare-fun m!7621 () Bool)

(assert (=> b!11323 m!7621))

(declare-fun m!7623 () Bool)

(assert (=> b!11323 m!7623))

(declare-fun m!7625 () Bool)

(assert (=> b!11323 m!7625))

(declare-fun m!7627 () Bool)

(assert (=> b!11323 m!7627))

(declare-fun m!7629 () Bool)

(assert (=> b!11323 m!7629))

(declare-fun m!7631 () Bool)

(assert (=> start!1502 m!7631))

(declare-fun m!7633 () Bool)

(assert (=> start!1502 m!7633))

(declare-fun m!7635 () Bool)

(assert (=> b!11322 m!7635))

(declare-fun m!7637 () Bool)

(assert (=> b!11327 m!7637))

(check-sat (not b!11325) (not b!11326) (not b!11321) b_and!743 (not b!11327) (not b_next!447) (not b!11323) (not start!1502) tp_is_empty!561 (not b!11324) (not b!11322))
(check-sat b_and!743 (not b_next!447))
(get-model)

(declare-fun d!1407 () Bool)

(declare-fun lt!2865 () Int)

(assert (=> d!1407 (>= lt!2865 0)))

(declare-fun e!6698 () Int)

(assert (=> d!1407 (= lt!2865 e!6698)))

(declare-fun c!956 () Bool)

(assert (=> d!1407 (= c!956 ((_ is Nil!333) lt!2852))))

(assert (=> d!1407 (= (ListPrimitiveSize!11 lt!2852) lt!2865)))

(declare-fun b!11353 () Bool)

(assert (=> b!11353 (= e!6698 0)))

(declare-fun b!11354 () Bool)

(assert (=> b!11354 (= e!6698 (+ 1 (ListPrimitiveSize!11 (t!2621 lt!2852))))))

(assert (= (and d!1407 c!956) b!11353))

(assert (= (and d!1407 (not c!956)) b!11354))

(declare-fun m!7667 () Bool)

(assert (=> b!11354 m!7667))

(assert (=> b!11324 d!1407))

(declare-fun d!1413 () Bool)

(declare-fun lt!2866 () Int)

(assert (=> d!1413 (>= lt!2866 0)))

(declare-fun e!6703 () Int)

(assert (=> d!1413 (= lt!2866 e!6703)))

(declare-fun c!957 () Bool)

(assert (=> d!1413 (= c!957 ((_ is Nil!333) kvs!4))))

(assert (=> d!1413 (= (ListPrimitiveSize!11 kvs!4) lt!2866)))

(declare-fun b!11359 () Bool)

(assert (=> b!11359 (= e!6703 0)))

(declare-fun b!11360 () Bool)

(assert (=> b!11360 (= e!6703 (+ 1 (ListPrimitiveSize!11 (t!2621 kvs!4))))))

(assert (= (and d!1413 c!957) b!11359))

(assert (= (and d!1413 (not c!957)) b!11360))

(declare-fun m!7669 () Bool)

(assert (=> b!11360 m!7669))

(assert (=> b!11324 d!1413))

(declare-fun d!1415 () Bool)

(declare-fun res!9480 () Bool)

(declare-fun e!6716 () Bool)

(assert (=> d!1415 (=> res!9480 e!6716)))

(assert (=> d!1415 (= res!9480 ((_ is Nil!333) (toList!186 (+!27 lm!227 lt!2851))))))

(assert (=> d!1415 (= (forall!60 (toList!186 (+!27 lm!227 lt!2851)) p!216) e!6716)))

(declare-fun b!11373 () Bool)

(declare-fun e!6717 () Bool)

(assert (=> b!11373 (= e!6716 e!6717)))

(declare-fun res!9481 () Bool)

(assert (=> b!11373 (=> (not res!9481) (not e!6717))))

(declare-fun dynLambda!71 (Int tuple2!360) Bool)

(assert (=> b!11373 (= res!9481 (dynLambda!71 p!216 (h!898 (toList!186 (+!27 lm!227 lt!2851)))))))

(declare-fun b!11374 () Bool)

(assert (=> b!11374 (= e!6717 (forall!60 (t!2621 (toList!186 (+!27 lm!227 lt!2851))) p!216))))

(assert (= (and d!1415 (not res!9480)) b!11373))

(assert (= (and b!11373 res!9481) b!11374))

(declare-fun b_lambda!637 () Bool)

(assert (=> (not b_lambda!637) (not b!11373)))

(declare-fun t!2626 () Bool)

(declare-fun tb!287 () Bool)

(assert (=> (and start!1502 (= p!216 p!216) t!2626) tb!287))

(declare-fun result!455 () Bool)

(assert (=> tb!287 (= result!455 true)))

(assert (=> b!11373 t!2626))

(declare-fun b_and!749 () Bool)

(assert (= b_and!743 (and (=> t!2626 result!455) b_and!749)))

(declare-fun m!7675 () Bool)

(assert (=> b!11373 m!7675))

(declare-fun m!7677 () Bool)

(assert (=> b!11374 m!7677))

(assert (=> b!11323 d!1415))

(declare-fun d!1419 () Bool)

(assert (=> d!1419 (forall!60 (toList!186 (+!27 lm!227 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851)))) p!216)))

(declare-fun lt!2877 () Unit!241)

(declare-fun choose!156 (ListLongMap!341 Int (_ BitVec 64) B!388) Unit!241)

(assert (=> d!1419 (= lt!2877 (choose!156 lm!227 p!216 (_1!180 lt!2851) (_2!180 lt!2851)))))

(declare-fun e!6724 () Bool)

(assert (=> d!1419 e!6724))

(declare-fun res!9490 () Bool)

(assert (=> d!1419 (=> (not res!9490) (not e!6724))))

(assert (=> d!1419 (= res!9490 (forall!60 (toList!186 lm!227) p!216))))

(assert (=> d!1419 (= (addValidProp!15 lm!227 p!216 (_1!180 lt!2851) (_2!180 lt!2851)) lt!2877)))

(declare-fun b!11384 () Bool)

(assert (=> b!11384 (= e!6724 (dynLambda!71 p!216 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851))))))

(assert (= (and d!1419 res!9490) b!11384))

(declare-fun b_lambda!643 () Bool)

(assert (=> (not b_lambda!643) (not b!11384)))

(declare-fun t!2632 () Bool)

(declare-fun tb!293 () Bool)

(assert (=> (and start!1502 (= p!216 p!216) t!2632) tb!293))

(declare-fun result!461 () Bool)

(assert (=> tb!293 (= result!461 true)))

(assert (=> b!11384 t!2632))

(declare-fun b_and!755 () Bool)

(assert (= b_and!749 (and (=> t!2632 result!461) b_and!755)))

(assert (=> d!1419 m!7619))

(assert (=> d!1419 m!7621))

(declare-fun m!7689 () Bool)

(assert (=> d!1419 m!7689))

(assert (=> d!1419 m!7631))

(declare-fun m!7691 () Bool)

(assert (=> b!11384 m!7691))

(assert (=> b!11323 d!1419))

(declare-fun d!1427 () Bool)

(assert (=> d!1427 (= (tail!54 kvs!4) (t!2621 kvs!4))))

(assert (=> b!11323 d!1427))

(declare-fun d!1429 () Bool)

(assert (=> d!1429 (= (head!774 kvs!4) (h!898 kvs!4))))

(assert (=> b!11323 d!1429))

(declare-fun d!1431 () Bool)

(declare-fun e!6735 () Bool)

(assert (=> d!1431 e!6735))

(declare-fun res!9506 () Bool)

(assert (=> d!1431 (=> (not res!9506) (not e!6735))))

(declare-fun lt!2901 () ListLongMap!341)

(declare-fun contains!151 (ListLongMap!341 (_ BitVec 64)) Bool)

(assert (=> d!1431 (= res!9506 (contains!151 lt!2901 (_1!180 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851)))))))

(declare-fun lt!2900 () List!336)

(assert (=> d!1431 (= lt!2901 (ListLongMap!342 lt!2900))))

(declare-fun lt!2903 () Unit!241)

(declare-fun lt!2902 () Unit!241)

(assert (=> d!1431 (= lt!2903 lt!2902)))

(declare-datatypes ((Option!33 0))(
  ( (Some!32 (v!1347 B!388)) (None!31) )
))
(declare-fun getValueByKey!27 (List!336 (_ BitVec 64)) Option!33)

(assert (=> d!1431 (= (getValueByKey!27 lt!2900 (_1!180 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851)))) (Some!32 (_2!180 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!11 (List!336 (_ BitVec 64) B!388) Unit!241)

(assert (=> d!1431 (= lt!2902 (lemmaContainsTupThenGetReturnValue!11 lt!2900 (_1!180 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851))) (_2!180 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851)))))))

(declare-fun insertStrictlySorted!11 (List!336 (_ BitVec 64) B!388) List!336)

(assert (=> d!1431 (= lt!2900 (insertStrictlySorted!11 (toList!186 lm!227) (_1!180 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851))) (_2!180 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851)))))))

(assert (=> d!1431 (= (+!27 lm!227 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851))) lt!2901)))

(declare-fun b!11401 () Bool)

(declare-fun res!9505 () Bool)

(assert (=> b!11401 (=> (not res!9505) (not e!6735))))

(assert (=> b!11401 (= res!9505 (= (getValueByKey!27 (toList!186 lt!2901) (_1!180 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851)))) (Some!32 (_2!180 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851))))))))

(declare-fun b!11402 () Bool)

(declare-fun contains!152 (List!336 tuple2!360) Bool)

(assert (=> b!11402 (= e!6735 (contains!152 (toList!186 lt!2901) (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851))))))

(assert (= (and d!1431 res!9506) b!11401))

(assert (= (and b!11401 res!9505) b!11402))

(declare-fun m!7721 () Bool)

(assert (=> d!1431 m!7721))

(declare-fun m!7725 () Bool)

(assert (=> d!1431 m!7725))

(declare-fun m!7729 () Bool)

(assert (=> d!1431 m!7729))

(declare-fun m!7731 () Bool)

(assert (=> d!1431 m!7731))

(declare-fun m!7733 () Bool)

(assert (=> b!11401 m!7733))

(declare-fun m!7735 () Bool)

(assert (=> b!11402 m!7735))

(assert (=> b!11323 d!1431))

(declare-fun d!1443 () Bool)

(declare-fun res!9511 () Bool)

(declare-fun e!6738 () Bool)

(assert (=> d!1443 (=> res!9511 e!6738)))

(assert (=> d!1443 (= res!9511 ((_ is Nil!333) (toList!186 (+!27 lm!227 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851))))))))

(assert (=> d!1443 (= (forall!60 (toList!186 (+!27 lm!227 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851)))) p!216) e!6738)))

(declare-fun b!11407 () Bool)

(declare-fun e!6739 () Bool)

(assert (=> b!11407 (= e!6738 e!6739)))

(declare-fun res!9512 () Bool)

(assert (=> b!11407 (=> (not res!9512) (not e!6739))))

(assert (=> b!11407 (= res!9512 (dynLambda!71 p!216 (h!898 (toList!186 (+!27 lm!227 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851)))))))))

(declare-fun b!11408 () Bool)

(assert (=> b!11408 (= e!6739 (forall!60 (t!2621 (toList!186 (+!27 lm!227 (tuple2!361 (_1!180 lt!2851) (_2!180 lt!2851))))) p!216))))

(assert (= (and d!1443 (not res!9511)) b!11407))

(assert (= (and b!11407 res!9512) b!11408))

(declare-fun b_lambda!649 () Bool)

(assert (=> (not b_lambda!649) (not b!11407)))

(declare-fun t!2638 () Bool)

(declare-fun tb!299 () Bool)

(assert (=> (and start!1502 (= p!216 p!216) t!2638) tb!299))

(declare-fun result!467 () Bool)

(assert (=> tb!299 (= result!467 true)))

(assert (=> b!11407 t!2638))

(declare-fun b_and!761 () Bool)

(assert (= b_and!755 (and (=> t!2638 result!467) b_and!761)))

(declare-fun m!7737 () Bool)

(assert (=> b!11407 m!7737))

(declare-fun m!7739 () Bool)

(assert (=> b!11408 m!7739))

(assert (=> b!11323 d!1443))

(declare-fun d!1447 () Bool)

(declare-fun e!6742 () Bool)

(assert (=> d!1447 e!6742))

(declare-fun res!9516 () Bool)

(assert (=> d!1447 (=> (not res!9516) (not e!6742))))

(declare-fun lt!2913 () ListLongMap!341)

(assert (=> d!1447 (= res!9516 (contains!151 lt!2913 (_1!180 lt!2851)))))

(declare-fun lt!2912 () List!336)

(assert (=> d!1447 (= lt!2913 (ListLongMap!342 lt!2912))))

(declare-fun lt!2915 () Unit!241)

(declare-fun lt!2914 () Unit!241)

(assert (=> d!1447 (= lt!2915 lt!2914)))

(assert (=> d!1447 (= (getValueByKey!27 lt!2912 (_1!180 lt!2851)) (Some!32 (_2!180 lt!2851)))))

(assert (=> d!1447 (= lt!2914 (lemmaContainsTupThenGetReturnValue!11 lt!2912 (_1!180 lt!2851) (_2!180 lt!2851)))))

(assert (=> d!1447 (= lt!2912 (insertStrictlySorted!11 (toList!186 lm!227) (_1!180 lt!2851) (_2!180 lt!2851)))))

(assert (=> d!1447 (= (+!27 lm!227 lt!2851) lt!2913)))

(declare-fun b!11411 () Bool)

(declare-fun res!9515 () Bool)

(assert (=> b!11411 (=> (not res!9515) (not e!6742))))

(assert (=> b!11411 (= res!9515 (= (getValueByKey!27 (toList!186 lt!2913) (_1!180 lt!2851)) (Some!32 (_2!180 lt!2851))))))

(declare-fun b!11412 () Bool)

(assert (=> b!11412 (= e!6742 (contains!152 (toList!186 lt!2913) lt!2851))))

(assert (= (and d!1447 res!9516) b!11411))

(assert (= (and b!11411 res!9515) b!11412))

(declare-fun m!7745 () Bool)

(assert (=> d!1447 m!7745))

(declare-fun m!7747 () Bool)

(assert (=> d!1447 m!7747))

(declare-fun m!7749 () Bool)

(assert (=> d!1447 m!7749))

(declare-fun m!7751 () Bool)

(assert (=> d!1447 m!7751))

(declare-fun m!7753 () Bool)

(assert (=> b!11411 m!7753))

(declare-fun m!7755 () Bool)

(assert (=> b!11412 m!7755))

(assert (=> b!11323 d!1447))

(declare-fun d!1451 () Bool)

(declare-fun res!9521 () Bool)

(declare-fun e!6746 () Bool)

(assert (=> d!1451 (=> res!9521 e!6746)))

(assert (=> d!1451 (= res!9521 ((_ is Nil!333) (toList!186 lm!227)))))

(assert (=> d!1451 (= (forall!60 (toList!186 lm!227) p!216) e!6746)))

(declare-fun b!11417 () Bool)

(declare-fun e!6747 () Bool)

(assert (=> b!11417 (= e!6746 e!6747)))

(declare-fun res!9522 () Bool)

(assert (=> b!11417 (=> (not res!9522) (not e!6747))))

(assert (=> b!11417 (= res!9522 (dynLambda!71 p!216 (h!898 (toList!186 lm!227))))))

(declare-fun b!11418 () Bool)

(assert (=> b!11418 (= e!6747 (forall!60 (t!2621 (toList!186 lm!227)) p!216))))

(assert (= (and d!1451 (not res!9521)) b!11417))

(assert (= (and b!11417 res!9522) b!11418))

(declare-fun b_lambda!655 () Bool)

(assert (=> (not b_lambda!655) (not b!11417)))

(declare-fun t!2644 () Bool)

(declare-fun tb!305 () Bool)

(assert (=> (and start!1502 (= p!216 p!216) t!2644) tb!305))

(declare-fun result!473 () Bool)

(assert (=> tb!305 (= result!473 true)))

(assert (=> b!11417 t!2644))

(declare-fun b_and!767 () Bool)

(assert (= b_and!761 (and (=> t!2644 result!473) b_and!767)))

(declare-fun m!7773 () Bool)

(assert (=> b!11417 m!7773))

(declare-fun m!7775 () Bool)

(assert (=> b!11418 m!7775))

(assert (=> start!1502 d!1451))

(declare-fun d!1457 () Bool)

(declare-fun isStrictlySorted!44 (List!336) Bool)

(assert (=> d!1457 (= (inv!559 lm!227) (isStrictlySorted!44 (toList!186 lm!227)))))

(declare-fun bs!433 () Bool)

(assert (= bs!433 d!1457))

(declare-fun m!7789 () Bool)

(assert (=> bs!433 m!7789))

(assert (=> start!1502 d!1457))

(declare-fun d!1467 () Bool)

(declare-fun res!9531 () Bool)

(declare-fun e!6755 () Bool)

(assert (=> d!1467 (=> res!9531 e!6755)))

(assert (=> d!1467 (= res!9531 ((_ is Nil!333) kvs!4))))

(assert (=> d!1467 (= (forall!60 kvs!4 p!216) e!6755)))

(declare-fun b!11427 () Bool)

(declare-fun e!6756 () Bool)

(assert (=> b!11427 (= e!6755 e!6756)))

(declare-fun res!9532 () Bool)

(assert (=> b!11427 (=> (not res!9532) (not e!6756))))

(assert (=> b!11427 (= res!9532 (dynLambda!71 p!216 (h!898 kvs!4)))))

(declare-fun b!11428 () Bool)

(assert (=> b!11428 (= e!6756 (forall!60 (t!2621 kvs!4) p!216))))

(assert (= (and d!1467 (not res!9531)) b!11427))

(assert (= (and b!11427 res!9532) b!11428))

(declare-fun b_lambda!663 () Bool)

(assert (=> (not b_lambda!663) (not b!11427)))

(declare-fun t!2652 () Bool)

(declare-fun tb!313 () Bool)

(assert (=> (and start!1502 (= p!216 p!216) t!2652) tb!313))

(declare-fun result!481 () Bool)

(assert (=> tb!313 (= result!481 true)))

(assert (=> b!11427 t!2652))

(declare-fun b_and!775 () Bool)

(assert (= b_and!767 (and (=> t!2652 result!481) b_and!775)))

(declare-fun m!7803 () Bool)

(assert (=> b!11427 m!7803))

(declare-fun m!7805 () Bool)

(assert (=> b!11428 m!7805))

(assert (=> b!11322 d!1467))

(declare-fun d!1471 () Bool)

(assert (=> d!1471 (= (isEmpty!67 kvs!4) ((_ is Nil!333) kvs!4))))

(assert (=> b!11327 d!1471))

(declare-fun d!1477 () Bool)

(declare-fun res!9535 () Bool)

(declare-fun e!6759 () Bool)

(assert (=> d!1477 (=> res!9535 e!6759)))

(assert (=> d!1477 (= res!9535 ((_ is Nil!333) lt!2852))))

(assert (=> d!1477 (= (forall!60 lt!2852 p!216) e!6759)))

(declare-fun b!11431 () Bool)

(declare-fun e!6760 () Bool)

(assert (=> b!11431 (= e!6759 e!6760)))

(declare-fun res!9536 () Bool)

(assert (=> b!11431 (=> (not res!9536) (not e!6760))))

(assert (=> b!11431 (= res!9536 (dynLambda!71 p!216 (h!898 lt!2852)))))

(declare-fun b!11432 () Bool)

(assert (=> b!11432 (= e!6760 (forall!60 (t!2621 lt!2852) p!216))))

(assert (= (and d!1477 (not res!9535)) b!11431))

(assert (= (and b!11431 res!9536) b!11432))

(declare-fun b_lambda!667 () Bool)

(assert (=> (not b_lambda!667) (not b!11431)))

(declare-fun t!2656 () Bool)

(declare-fun tb!317 () Bool)

(assert (=> (and start!1502 (= p!216 p!216) t!2656) tb!317))

(declare-fun result!485 () Bool)

(assert (=> tb!317 (= result!485 true)))

(assert (=> b!11431 t!2656))

(declare-fun b_and!779 () Bool)

(assert (= b_and!775 (and (=> t!2656 result!485) b_and!779)))

(declare-fun m!7813 () Bool)

(assert (=> b!11431 m!7813))

(declare-fun m!7815 () Bool)

(assert (=> b!11432 m!7815))

(assert (=> b!11326 d!1477))

(declare-fun b!11445 () Bool)

(declare-fun e!6767 () Bool)

(declare-fun tp!1880 () Bool)

(assert (=> b!11445 (= e!6767 (and tp_is_empty!561 tp!1880))))

(assert (=> b!11321 (= tp!1868 e!6767)))

(assert (= (and b!11321 ((_ is Cons!332) (toList!186 lm!227))) b!11445))

(declare-fun b!11446 () Bool)

(declare-fun e!6768 () Bool)

(declare-fun tp!1881 () Bool)

(assert (=> b!11446 (= e!6768 (and tp_is_empty!561 tp!1881))))

(assert (=> b!11325 (= tp!1867 e!6768)))

(assert (= (and b!11325 ((_ is Cons!332) (t!2621 kvs!4))) b!11446))

(declare-fun b_lambda!669 () Bool)

(assert (= b_lambda!655 (or (and start!1502 b_free!447) b_lambda!669)))

(declare-fun b_lambda!671 () Bool)

(assert (= b_lambda!649 (or (and start!1502 b_free!447) b_lambda!671)))

(declare-fun b_lambda!673 () Bool)

(assert (= b_lambda!637 (or (and start!1502 b_free!447) b_lambda!673)))

(declare-fun b_lambda!675 () Bool)

(assert (= b_lambda!643 (or (and start!1502 b_free!447) b_lambda!675)))

(declare-fun b_lambda!677 () Bool)

(assert (= b_lambda!663 (or (and start!1502 b_free!447) b_lambda!677)))

(declare-fun b_lambda!679 () Bool)

(assert (= b_lambda!667 (or (and start!1502 b_free!447) b_lambda!679)))

(check-sat (not b!11408) (not b_lambda!673) (not b_lambda!679) (not b!11418) (not b!11401) (not d!1431) (not b_lambda!677) (not b!11402) (not b!11360) (not b!11428) (not b_lambda!671) (not b_lambda!675) (not b!11412) (not b_next!447) (not b!11411) (not b!11446) (not b!11354) (not b_lambda!669) (not d!1457) (not b!11374) (not d!1419) (not b!11445) b_and!779 (not b!11432) tp_is_empty!561 (not d!1447))
(check-sat b_and!779 (not b_next!447))
