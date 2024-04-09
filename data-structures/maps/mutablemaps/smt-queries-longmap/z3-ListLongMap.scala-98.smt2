; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!1556 () Bool)

(assert start!1556)

(declare-fun b_free!453 () Bool)

(declare-fun b_next!453 () Bool)

(assert (=> start!1556 (= b_free!453 (not b_next!453))))

(declare-fun tp!1905 () Bool)

(declare-fun b_and!785 () Bool)

(assert (=> start!1556 (= tp!1905 b_and!785)))

(declare-fun b!11504 () Bool)

(declare-fun e!6804 () Bool)

(declare-fun tp_is_empty!567 () Bool)

(declare-fun tp!1907 () Bool)

(assert (=> b!11504 (= e!6804 (and tp_is_empty!567 tp!1907))))

(declare-fun b!11505 () Bool)

(declare-fun res!9568 () Bool)

(declare-fun e!6805 () Bool)

(assert (=> b!11505 (=> (not res!9568) (not e!6805))))

(declare-datatypes ((B!394 0))(
  ( (B!395 (val!292 Int)) )
))
(declare-datatypes ((tuple2!366 0))(
  ( (tuple2!367 (_1!183 (_ BitVec 64)) (_2!183 B!394)) )
))
(declare-datatypes ((List!339 0))(
  ( (Nil!336) (Cons!335 (h!901 tuple2!366) (t!2660 List!339)) )
))
(declare-fun kvs!4 () List!339)

(declare-fun isEmpty!70 (List!339) Bool)

(assert (=> b!11505 (= res!9568 (not (isEmpty!70 kvs!4)))))

(declare-fun b!11506 () Bool)

(declare-fun e!6803 () Bool)

(assert (=> b!11506 (= e!6805 (not e!6803))))

(declare-fun res!9564 () Bool)

(assert (=> b!11506 (=> res!9564 e!6803)))

(declare-datatypes ((ListLongMap!347 0))(
  ( (ListLongMap!348 (toList!189 List!339)) )
))
(declare-fun lt!2957 () ListLongMap!347)

(declare-fun p!216 () Int)

(declare-fun forall!63 (List!339 Int) Bool)

(assert (=> b!11506 (= res!9564 (not (forall!63 (toList!189 lt!2957) p!216)))))

(declare-fun lt!2959 () List!339)

(declare-fun tail!57 (List!339) List!339)

(assert (=> b!11506 (= lt!2959 (tail!57 kvs!4))))

(declare-fun lm!227 () ListLongMap!347)

(declare-fun lt!2961 () tuple2!366)

(declare-fun +!30 (ListLongMap!347 tuple2!366) ListLongMap!347)

(assert (=> b!11506 (= lt!2957 (+!30 lm!227 lt!2961))))

(assert (=> b!11506 (forall!63 (toList!189 (+!30 lm!227 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961)))) p!216)))

(declare-datatypes ((Unit!247 0))(
  ( (Unit!248) )
))
(declare-fun lt!2958 () Unit!247)

(declare-fun addValidProp!18 (ListLongMap!347 Int (_ BitVec 64) B!394) Unit!247)

(assert (=> b!11506 (= lt!2958 (addValidProp!18 lm!227 p!216 (_1!183 lt!2961) (_2!183 lt!2961)))))

(declare-fun head!777 (List!339) tuple2!366)

(assert (=> b!11506 (= lt!2961 (head!777 kvs!4))))

(declare-fun b!11507 () Bool)

(declare-fun ++!5 (ListLongMap!347 List!339) ListLongMap!347)

(assert (=> b!11507 (= e!6803 (forall!63 (toList!189 (++!5 lm!227 kvs!4)) p!216))))

(assert (=> b!11507 (forall!63 (toList!189 (++!5 lt!2957 lt!2959)) p!216)))

(declare-fun lt!2960 () Unit!247)

(declare-fun insertAllValidProp!3 (ListLongMap!347 List!339 Int) Unit!247)

(assert (=> b!11507 (= lt!2960 (insertAllValidProp!3 lt!2957 lt!2959 p!216))))

(declare-fun res!9566 () Bool)

(assert (=> start!1556 (=> (not res!9566) (not e!6805))))

(assert (=> start!1556 (= res!9566 (forall!63 (toList!189 lm!227) p!216))))

(assert (=> start!1556 e!6805))

(declare-fun e!6806 () Bool)

(declare-fun inv!567 (ListLongMap!347) Bool)

(assert (=> start!1556 (and (inv!567 lm!227) e!6806)))

(assert (=> start!1556 tp!1905))

(assert (=> start!1556 e!6804))

(declare-fun b!11508 () Bool)

(declare-fun tp!1906 () Bool)

(assert (=> b!11508 (= e!6806 tp!1906)))

(declare-fun b!11509 () Bool)

(declare-fun res!9567 () Bool)

(assert (=> b!11509 (=> (not res!9567) (not e!6805))))

(assert (=> b!11509 (= res!9567 (forall!63 kvs!4 p!216))))

(declare-fun b!11510 () Bool)

(declare-fun res!9565 () Bool)

(assert (=> b!11510 (=> res!9565 e!6803)))

(assert (=> b!11510 (= res!9565 (not (forall!63 lt!2959 p!216)))))

(assert (= (and start!1556 res!9566) b!11509))

(assert (= (and b!11509 res!9567) b!11505))

(assert (= (and b!11505 res!9568) b!11506))

(assert (= (and b!11506 (not res!9564)) b!11510))

(assert (= (and b!11510 (not res!9565)) b!11507))

(assert (= start!1556 b!11508))

(get-info :version)

(assert (= (and start!1556 ((_ is Cons!335) kvs!4)) b!11504))

(declare-fun m!7863 () Bool)

(assert (=> b!11510 m!7863))

(declare-fun m!7865 () Bool)

(assert (=> b!11505 m!7865))

(declare-fun m!7867 () Bool)

(assert (=> start!1556 m!7867))

(declare-fun m!7869 () Bool)

(assert (=> start!1556 m!7869))

(declare-fun m!7871 () Bool)

(assert (=> b!11509 m!7871))

(declare-fun m!7873 () Bool)

(assert (=> b!11507 m!7873))

(declare-fun m!7875 () Bool)

(assert (=> b!11507 m!7875))

(declare-fun m!7877 () Bool)

(assert (=> b!11507 m!7877))

(declare-fun m!7879 () Bool)

(assert (=> b!11507 m!7879))

(declare-fun m!7881 () Bool)

(assert (=> b!11507 m!7881))

(declare-fun m!7883 () Bool)

(assert (=> b!11506 m!7883))

(declare-fun m!7885 () Bool)

(assert (=> b!11506 m!7885))

(declare-fun m!7887 () Bool)

(assert (=> b!11506 m!7887))

(declare-fun m!7889 () Bool)

(assert (=> b!11506 m!7889))

(declare-fun m!7891 () Bool)

(assert (=> b!11506 m!7891))

(declare-fun m!7893 () Bool)

(assert (=> b!11506 m!7893))

(declare-fun m!7895 () Bool)

(assert (=> b!11506 m!7895))

(check-sat tp_is_empty!567 (not b!11505) (not b!11506) b_and!785 (not b!11510) (not b!11507) (not b!11508) (not b!11509) (not b!11504) (not b_next!453) (not start!1556))
(check-sat b_and!785 (not b_next!453))
(get-model)

(declare-fun d!1493 () Bool)

(assert (=> d!1493 (= (isEmpty!70 kvs!4) ((_ is Nil!336) kvs!4))))

(assert (=> b!11505 d!1493))

(declare-fun d!1497 () Bool)

(declare-fun res!9588 () Bool)

(declare-fun e!6823 () Bool)

(assert (=> d!1497 (=> res!9588 e!6823)))

(assert (=> d!1497 (= res!9588 ((_ is Nil!336) lt!2959))))

(assert (=> d!1497 (= (forall!63 lt!2959 p!216) e!6823)))

(declare-fun b!11536 () Bool)

(declare-fun e!6824 () Bool)

(assert (=> b!11536 (= e!6823 e!6824)))

(declare-fun res!9589 () Bool)

(assert (=> b!11536 (=> (not res!9589) (not e!6824))))

(declare-fun dynLambda!73 (Int tuple2!366) Bool)

(assert (=> b!11536 (= res!9589 (dynLambda!73 p!216 (h!901 lt!2959)))))

(declare-fun b!11537 () Bool)

(assert (=> b!11537 (= e!6824 (forall!63 (t!2660 lt!2959) p!216))))

(assert (= (and d!1497 (not res!9588)) b!11536))

(assert (= (and b!11536 res!9589) b!11537))

(declare-fun b_lambda!707 () Bool)

(assert (=> (not b_lambda!707) (not b!11536)))

(declare-fun t!2663 () Bool)

(declare-fun tb!321 () Bool)

(assert (=> (and start!1556 (= p!216 p!216) t!2663) tb!321))

(declare-fun result!495 () Bool)

(assert (=> tb!321 (= result!495 true)))

(assert (=> b!11536 t!2663))

(declare-fun b_and!789 () Bool)

(assert (= b_and!785 (and (=> t!2663 result!495) b_and!789)))

(declare-fun m!7931 () Bool)

(assert (=> b!11536 m!7931))

(declare-fun m!7933 () Bool)

(assert (=> b!11537 m!7933))

(assert (=> b!11510 d!1497))

(declare-fun d!1503 () Bool)

(declare-fun res!9590 () Bool)

(declare-fun e!6825 () Bool)

(assert (=> d!1503 (=> res!9590 e!6825)))

(assert (=> d!1503 (= res!9590 ((_ is Nil!336) kvs!4))))

(assert (=> d!1503 (= (forall!63 kvs!4 p!216) e!6825)))

(declare-fun b!11538 () Bool)

(declare-fun e!6826 () Bool)

(assert (=> b!11538 (= e!6825 e!6826)))

(declare-fun res!9591 () Bool)

(assert (=> b!11538 (=> (not res!9591) (not e!6826))))

(assert (=> b!11538 (= res!9591 (dynLambda!73 p!216 (h!901 kvs!4)))))

(declare-fun b!11539 () Bool)

(assert (=> b!11539 (= e!6826 (forall!63 (t!2660 kvs!4) p!216))))

(assert (= (and d!1503 (not res!9590)) b!11538))

(assert (= (and b!11538 res!9591) b!11539))

(declare-fun b_lambda!709 () Bool)

(assert (=> (not b_lambda!709) (not b!11538)))

(declare-fun t!2665 () Bool)

(declare-fun tb!323 () Bool)

(assert (=> (and start!1556 (= p!216 p!216) t!2665) tb!323))

(declare-fun result!497 () Bool)

(assert (=> tb!323 (= result!497 true)))

(assert (=> b!11538 t!2665))

(declare-fun b_and!791 () Bool)

(assert (= b_and!789 (and (=> t!2665 result!497) b_and!791)))

(declare-fun m!7935 () Bool)

(assert (=> b!11538 m!7935))

(declare-fun m!7937 () Bool)

(assert (=> b!11539 m!7937))

(assert (=> b!11509 d!1503))

(declare-fun d!1505 () Bool)

(declare-fun c!968 () Bool)

(assert (=> d!1505 (= c!968 ((_ is Nil!336) kvs!4))))

(declare-fun e!6832 () ListLongMap!347)

(assert (=> d!1505 (= (++!5 lm!227 kvs!4) e!6832)))

(declare-fun b!11548 () Bool)

(assert (=> b!11548 (= e!6832 lm!227)))

(declare-fun b!11549 () Bool)

(assert (=> b!11549 (= e!6832 (++!5 (+!30 lm!227 (h!901 kvs!4)) (t!2660 kvs!4)))))

(assert (= (and d!1505 c!968) b!11548))

(assert (= (and d!1505 (not c!968)) b!11549))

(declare-fun m!7939 () Bool)

(assert (=> b!11549 m!7939))

(assert (=> b!11549 m!7939))

(declare-fun m!7941 () Bool)

(assert (=> b!11549 m!7941))

(assert (=> b!11507 d!1505))

(declare-fun d!1507 () Bool)

(declare-fun c!969 () Bool)

(assert (=> d!1507 (= c!969 ((_ is Nil!336) lt!2959))))

(declare-fun e!6833 () ListLongMap!347)

(assert (=> d!1507 (= (++!5 lt!2957 lt!2959) e!6833)))

(declare-fun b!11550 () Bool)

(assert (=> b!11550 (= e!6833 lt!2957)))

(declare-fun b!11551 () Bool)

(assert (=> b!11551 (= e!6833 (++!5 (+!30 lt!2957 (h!901 lt!2959)) (t!2660 lt!2959)))))

(assert (= (and d!1507 c!969) b!11550))

(assert (= (and d!1507 (not c!969)) b!11551))

(declare-fun m!7947 () Bool)

(assert (=> b!11551 m!7947))

(assert (=> b!11551 m!7947))

(declare-fun m!7949 () Bool)

(assert (=> b!11551 m!7949))

(assert (=> b!11507 d!1507))

(declare-fun d!1511 () Bool)

(declare-fun res!9595 () Bool)

(declare-fun e!6834 () Bool)

(assert (=> d!1511 (=> res!9595 e!6834)))

(assert (=> d!1511 (= res!9595 ((_ is Nil!336) (toList!189 (++!5 lm!227 kvs!4))))))

(assert (=> d!1511 (= (forall!63 (toList!189 (++!5 lm!227 kvs!4)) p!216) e!6834)))

(declare-fun b!11552 () Bool)

(declare-fun e!6835 () Bool)

(assert (=> b!11552 (= e!6834 e!6835)))

(declare-fun res!9596 () Bool)

(assert (=> b!11552 (=> (not res!9596) (not e!6835))))

(assert (=> b!11552 (= res!9596 (dynLambda!73 p!216 (h!901 (toList!189 (++!5 lm!227 kvs!4)))))))

(declare-fun b!11553 () Bool)

(assert (=> b!11553 (= e!6835 (forall!63 (t!2660 (toList!189 (++!5 lm!227 kvs!4))) p!216))))

(assert (= (and d!1511 (not res!9595)) b!11552))

(assert (= (and b!11552 res!9596) b!11553))

(declare-fun b_lambda!713 () Bool)

(assert (=> (not b_lambda!713) (not b!11552)))

(declare-fun t!2669 () Bool)

(declare-fun tb!327 () Bool)

(assert (=> (and start!1556 (= p!216 p!216) t!2669) tb!327))

(declare-fun result!501 () Bool)

(assert (=> tb!327 (= result!501 true)))

(assert (=> b!11552 t!2669))

(declare-fun b_and!795 () Bool)

(assert (= b_and!791 (and (=> t!2669 result!501) b_and!795)))

(declare-fun m!7951 () Bool)

(assert (=> b!11552 m!7951))

(declare-fun m!7953 () Bool)

(assert (=> b!11553 m!7953))

(assert (=> b!11507 d!1511))

(declare-fun d!1513 () Bool)

(assert (=> d!1513 (forall!63 (toList!189 (++!5 lt!2957 lt!2959)) p!216)))

(declare-fun lt!2998 () Unit!247)

(declare-fun choose!160 (ListLongMap!347 List!339 Int) Unit!247)

(assert (=> d!1513 (= lt!2998 (choose!160 lt!2957 lt!2959 p!216))))

(declare-fun e!6848 () Bool)

(assert (=> d!1513 e!6848))

(declare-fun res!9613 () Bool)

(assert (=> d!1513 (=> (not res!9613) (not e!6848))))

(assert (=> d!1513 (= res!9613 (forall!63 (toList!189 lt!2957) p!216))))

(assert (=> d!1513 (= (insertAllValidProp!3 lt!2957 lt!2959 p!216) lt!2998)))

(declare-fun b!11570 () Bool)

(assert (=> b!11570 (= e!6848 (forall!63 lt!2959 p!216))))

(assert (= (and d!1513 res!9613) b!11570))

(assert (=> d!1513 m!7879))

(assert (=> d!1513 m!7875))

(declare-fun m!7983 () Bool)

(assert (=> d!1513 m!7983))

(assert (=> d!1513 m!7889))

(assert (=> b!11570 m!7863))

(assert (=> b!11507 d!1513))

(declare-fun d!1523 () Bool)

(declare-fun res!9614 () Bool)

(declare-fun e!6849 () Bool)

(assert (=> d!1523 (=> res!9614 e!6849)))

(assert (=> d!1523 (= res!9614 ((_ is Nil!336) (toList!189 (++!5 lt!2957 lt!2959))))))

(assert (=> d!1523 (= (forall!63 (toList!189 (++!5 lt!2957 lt!2959)) p!216) e!6849)))

(declare-fun b!11571 () Bool)

(declare-fun e!6850 () Bool)

(assert (=> b!11571 (= e!6849 e!6850)))

(declare-fun res!9615 () Bool)

(assert (=> b!11571 (=> (not res!9615) (not e!6850))))

(assert (=> b!11571 (= res!9615 (dynLambda!73 p!216 (h!901 (toList!189 (++!5 lt!2957 lt!2959)))))))

(declare-fun b!11572 () Bool)

(assert (=> b!11572 (= e!6850 (forall!63 (t!2660 (toList!189 (++!5 lt!2957 lt!2959))) p!216))))

(assert (= (and d!1523 (not res!9614)) b!11571))

(assert (= (and b!11571 res!9615) b!11572))

(declare-fun b_lambda!717 () Bool)

(assert (=> (not b_lambda!717) (not b!11571)))

(declare-fun t!2673 () Bool)

(declare-fun tb!331 () Bool)

(assert (=> (and start!1556 (= p!216 p!216) t!2673) tb!331))

(declare-fun result!505 () Bool)

(assert (=> tb!331 (= result!505 true)))

(assert (=> b!11571 t!2673))

(declare-fun b_and!799 () Bool)

(assert (= b_and!795 (and (=> t!2673 result!505) b_and!799)))

(declare-fun m!7985 () Bool)

(assert (=> b!11571 m!7985))

(declare-fun m!7987 () Bool)

(assert (=> b!11572 m!7987))

(assert (=> b!11507 d!1523))

(declare-fun d!1525 () Bool)

(declare-fun res!9616 () Bool)

(declare-fun e!6851 () Bool)

(assert (=> d!1525 (=> res!9616 e!6851)))

(assert (=> d!1525 (= res!9616 ((_ is Nil!336) (toList!189 lm!227)))))

(assert (=> d!1525 (= (forall!63 (toList!189 lm!227) p!216) e!6851)))

(declare-fun b!11573 () Bool)

(declare-fun e!6852 () Bool)

(assert (=> b!11573 (= e!6851 e!6852)))

(declare-fun res!9617 () Bool)

(assert (=> b!11573 (=> (not res!9617) (not e!6852))))

(assert (=> b!11573 (= res!9617 (dynLambda!73 p!216 (h!901 (toList!189 lm!227))))))

(declare-fun b!11574 () Bool)

(assert (=> b!11574 (= e!6852 (forall!63 (t!2660 (toList!189 lm!227)) p!216))))

(assert (= (and d!1525 (not res!9616)) b!11573))

(assert (= (and b!11573 res!9617) b!11574))

(declare-fun b_lambda!719 () Bool)

(assert (=> (not b_lambda!719) (not b!11573)))

(declare-fun t!2675 () Bool)

(declare-fun tb!333 () Bool)

(assert (=> (and start!1556 (= p!216 p!216) t!2675) tb!333))

(declare-fun result!507 () Bool)

(assert (=> tb!333 (= result!507 true)))

(assert (=> b!11573 t!2675))

(declare-fun b_and!801 () Bool)

(assert (= b_and!799 (and (=> t!2675 result!507) b_and!801)))

(declare-fun m!7989 () Bool)

(assert (=> b!11573 m!7989))

(declare-fun m!7991 () Bool)

(assert (=> b!11574 m!7991))

(assert (=> start!1556 d!1525))

(declare-fun d!1527 () Bool)

(declare-fun isStrictlySorted!46 (List!339) Bool)

(assert (=> d!1527 (= (inv!567 lm!227) (isStrictlySorted!46 (toList!189 lm!227)))))

(declare-fun bs!438 () Bool)

(assert (= bs!438 d!1527))

(declare-fun m!7993 () Bool)

(assert (=> bs!438 m!7993))

(assert (=> start!1556 d!1527))

(declare-fun d!1529 () Bool)

(assert (=> d!1529 (= (tail!57 kvs!4) (t!2660 kvs!4))))

(assert (=> b!11506 d!1529))

(declare-fun d!1531 () Bool)

(assert (=> d!1531 (forall!63 (toList!189 (+!30 lm!227 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961)))) p!216)))

(declare-fun lt!3020 () Unit!247)

(declare-fun choose!162 (ListLongMap!347 Int (_ BitVec 64) B!394) Unit!247)

(assert (=> d!1531 (= lt!3020 (choose!162 lm!227 p!216 (_1!183 lt!2961) (_2!183 lt!2961)))))

(declare-fun e!6878 () Bool)

(assert (=> d!1531 e!6878))

(declare-fun res!9647 () Bool)

(assert (=> d!1531 (=> (not res!9647) (not e!6878))))

(assert (=> d!1531 (= res!9647 (forall!63 (toList!189 lm!227) p!216))))

(assert (=> d!1531 (= (addValidProp!18 lm!227 p!216 (_1!183 lt!2961) (_2!183 lt!2961)) lt!3020)))

(declare-fun b!11606 () Bool)

(assert (=> b!11606 (= e!6878 (dynLambda!73 p!216 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961))))))

(assert (= (and d!1531 res!9647) b!11606))

(declare-fun b_lambda!735 () Bool)

(assert (=> (not b_lambda!735) (not b!11606)))

(declare-fun t!2691 () Bool)

(declare-fun tb!349 () Bool)

(assert (=> (and start!1556 (= p!216 p!216) t!2691) tb!349))

(declare-fun result!523 () Bool)

(assert (=> tb!349 (= result!523 true)))

(assert (=> b!11606 t!2691))

(declare-fun b_and!817 () Bool)

(assert (= b_and!801 (and (=> t!2691 result!523) b_and!817)))

(assert (=> d!1531 m!7891))

(assert (=> d!1531 m!7893))

(declare-fun m!8047 () Bool)

(assert (=> d!1531 m!8047))

(assert (=> d!1531 m!7867))

(declare-fun m!8049 () Bool)

(assert (=> b!11606 m!8049))

(assert (=> b!11506 d!1531))

(declare-fun d!1555 () Bool)

(declare-fun e!6893 () Bool)

(assert (=> d!1555 e!6893))

(declare-fun res!9657 () Bool)

(assert (=> d!1555 (=> (not res!9657) (not e!6893))))

(declare-fun lt!3032 () ListLongMap!347)

(declare-fun contains!159 (ListLongMap!347 (_ BitVec 64)) Bool)

(assert (=> d!1555 (= res!9657 (contains!159 lt!3032 (_1!183 lt!2961)))))

(declare-fun lt!3030 () List!339)

(assert (=> d!1555 (= lt!3032 (ListLongMap!348 lt!3030))))

(declare-fun lt!3031 () Unit!247)

(declare-fun lt!3029 () Unit!247)

(assert (=> d!1555 (= lt!3031 lt!3029)))

(declare-datatypes ((Option!37 0))(
  ( (Some!36 (v!1351 B!394)) (None!35) )
))
(declare-fun getValueByKey!31 (List!339 (_ BitVec 64)) Option!37)

(assert (=> d!1555 (= (getValueByKey!31 lt!3030 (_1!183 lt!2961)) (Some!36 (_2!183 lt!2961)))))

(declare-fun lemmaContainsTupThenGetReturnValue!15 (List!339 (_ BitVec 64) B!394) Unit!247)

(assert (=> d!1555 (= lt!3029 (lemmaContainsTupThenGetReturnValue!15 lt!3030 (_1!183 lt!2961) (_2!183 lt!2961)))))

(declare-fun insertStrictlySorted!15 (List!339 (_ BitVec 64) B!394) List!339)

(assert (=> d!1555 (= lt!3030 (insertStrictlySorted!15 (toList!189 lm!227) (_1!183 lt!2961) (_2!183 lt!2961)))))

(assert (=> d!1555 (= (+!30 lm!227 lt!2961) lt!3032)))

(declare-fun b!11631 () Bool)

(declare-fun res!9656 () Bool)

(assert (=> b!11631 (=> (not res!9656) (not e!6893))))

(assert (=> b!11631 (= res!9656 (= (getValueByKey!31 (toList!189 lt!3032) (_1!183 lt!2961)) (Some!36 (_2!183 lt!2961))))))

(declare-fun b!11632 () Bool)

(declare-fun contains!160 (List!339 tuple2!366) Bool)

(assert (=> b!11632 (= e!6893 (contains!160 (toList!189 lt!3032) lt!2961))))

(assert (= (and d!1555 res!9657) b!11631))

(assert (= (and b!11631 res!9656) b!11632))

(declare-fun m!8077 () Bool)

(assert (=> d!1555 m!8077))

(declare-fun m!8079 () Bool)

(assert (=> d!1555 m!8079))

(declare-fun m!8081 () Bool)

(assert (=> d!1555 m!8081))

(declare-fun m!8083 () Bool)

(assert (=> d!1555 m!8083))

(declare-fun m!8085 () Bool)

(assert (=> b!11631 m!8085))

(declare-fun m!8087 () Bool)

(assert (=> b!11632 m!8087))

(assert (=> b!11506 d!1555))

(declare-fun d!1573 () Bool)

(assert (=> d!1573 (= (head!777 kvs!4) (h!901 kvs!4))))

(assert (=> b!11506 d!1573))

(declare-fun d!1575 () Bool)

(declare-fun res!9660 () Bool)

(declare-fun e!6896 () Bool)

(assert (=> d!1575 (=> res!9660 e!6896)))

(assert (=> d!1575 (= res!9660 ((_ is Nil!336) (toList!189 (+!30 lm!227 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961))))))))

(assert (=> d!1575 (= (forall!63 (toList!189 (+!30 lm!227 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961)))) p!216) e!6896)))

(declare-fun b!11635 () Bool)

(declare-fun e!6897 () Bool)

(assert (=> b!11635 (= e!6896 e!6897)))

(declare-fun res!9661 () Bool)

(assert (=> b!11635 (=> (not res!9661) (not e!6897))))

(assert (=> b!11635 (= res!9661 (dynLambda!73 p!216 (h!901 (toList!189 (+!30 lm!227 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961)))))))))

(declare-fun b!11636 () Bool)

(assert (=> b!11636 (= e!6897 (forall!63 (t!2660 (toList!189 (+!30 lm!227 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961))))) p!216))))

(assert (= (and d!1575 (not res!9660)) b!11635))

(assert (= (and b!11635 res!9661) b!11636))

(declare-fun b_lambda!741 () Bool)

(assert (=> (not b_lambda!741) (not b!11635)))

(declare-fun t!2697 () Bool)

(declare-fun tb!355 () Bool)

(assert (=> (and start!1556 (= p!216 p!216) t!2697) tb!355))

(declare-fun result!529 () Bool)

(assert (=> tb!355 (= result!529 true)))

(assert (=> b!11635 t!2697))

(declare-fun b_and!823 () Bool)

(assert (= b_and!817 (and (=> t!2697 result!529) b_and!823)))

(declare-fun m!8089 () Bool)

(assert (=> b!11635 m!8089))

(declare-fun m!8091 () Bool)

(assert (=> b!11636 m!8091))

(assert (=> b!11506 d!1575))

(declare-fun d!1577 () Bool)

(declare-fun e!6899 () Bool)

(assert (=> d!1577 e!6899))

(declare-fun res!9664 () Bool)

(assert (=> d!1577 (=> (not res!9664) (not e!6899))))

(declare-fun lt!3039 () ListLongMap!347)

(assert (=> d!1577 (= res!9664 (contains!159 lt!3039 (_1!183 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961)))))))

(declare-fun lt!3037 () List!339)

(assert (=> d!1577 (= lt!3039 (ListLongMap!348 lt!3037))))

(declare-fun lt!3038 () Unit!247)

(declare-fun lt!3035 () Unit!247)

(assert (=> d!1577 (= lt!3038 lt!3035)))

(assert (=> d!1577 (= (getValueByKey!31 lt!3037 (_1!183 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961)))) (Some!36 (_2!183 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961)))))))

(assert (=> d!1577 (= lt!3035 (lemmaContainsTupThenGetReturnValue!15 lt!3037 (_1!183 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961))) (_2!183 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961)))))))

(assert (=> d!1577 (= lt!3037 (insertStrictlySorted!15 (toList!189 lm!227) (_1!183 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961))) (_2!183 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961)))))))

(assert (=> d!1577 (= (+!30 lm!227 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961))) lt!3039)))

(declare-fun b!11638 () Bool)

(declare-fun res!9663 () Bool)

(assert (=> b!11638 (=> (not res!9663) (not e!6899))))

(assert (=> b!11638 (= res!9663 (= (getValueByKey!31 (toList!189 lt!3039) (_1!183 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961)))) (Some!36 (_2!183 (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961))))))))

(declare-fun b!11639 () Bool)

(assert (=> b!11639 (= e!6899 (contains!160 (toList!189 lt!3039) (tuple2!367 (_1!183 lt!2961) (_2!183 lt!2961))))))

(assert (= (and d!1577 res!9664) b!11638))

(assert (= (and b!11638 res!9663) b!11639))

(declare-fun m!8095 () Bool)

(assert (=> d!1577 m!8095))

(declare-fun m!8097 () Bool)

(assert (=> d!1577 m!8097))

(declare-fun m!8099 () Bool)

(assert (=> d!1577 m!8099))

(declare-fun m!8101 () Bool)

(assert (=> d!1577 m!8101))

(declare-fun m!8103 () Bool)

(assert (=> b!11638 m!8103))

(declare-fun m!8105 () Bool)

(assert (=> b!11639 m!8105))

(assert (=> b!11506 d!1577))

(declare-fun d!1581 () Bool)

(declare-fun res!9669 () Bool)

(declare-fun e!6904 () Bool)

(assert (=> d!1581 (=> res!9669 e!6904)))

(assert (=> d!1581 (= res!9669 ((_ is Nil!336) (toList!189 lt!2957)))))

(assert (=> d!1581 (= (forall!63 (toList!189 lt!2957) p!216) e!6904)))

(declare-fun b!11644 () Bool)

(declare-fun e!6905 () Bool)

(assert (=> b!11644 (= e!6904 e!6905)))

(declare-fun res!9670 () Bool)

(assert (=> b!11644 (=> (not res!9670) (not e!6905))))

(assert (=> b!11644 (= res!9670 (dynLambda!73 p!216 (h!901 (toList!189 lt!2957))))))

(declare-fun b!11645 () Bool)

(assert (=> b!11645 (= e!6905 (forall!63 (t!2660 (toList!189 lt!2957)) p!216))))

(assert (= (and d!1581 (not res!9669)) b!11644))

(assert (= (and b!11644 res!9670) b!11645))

(declare-fun b_lambda!745 () Bool)

(assert (=> (not b_lambda!745) (not b!11644)))

(declare-fun t!2701 () Bool)

(declare-fun tb!359 () Bool)

(assert (=> (and start!1556 (= p!216 p!216) t!2701) tb!359))

(declare-fun result!533 () Bool)

(assert (=> tb!359 (= result!533 true)))

(assert (=> b!11644 t!2701))

(declare-fun b_and!827 () Bool)

(assert (= b_and!823 (and (=> t!2701 result!533) b_and!827)))

(declare-fun m!8111 () Bool)

(assert (=> b!11644 m!8111))

(declare-fun m!8113 () Bool)

(assert (=> b!11645 m!8113))

(assert (=> b!11506 d!1581))

(declare-fun b!11653 () Bool)

(declare-fun e!6911 () Bool)

(declare-fun tp!1919 () Bool)

(assert (=> b!11653 (= e!6911 (and tp_is_empty!567 tp!1919))))

(assert (=> b!11504 (= tp!1907 e!6911)))

(assert (= (and b!11504 ((_ is Cons!335) (t!2660 kvs!4))) b!11653))

(declare-fun b!11658 () Bool)

(declare-fun e!6916 () Bool)

(declare-fun tp!1920 () Bool)

(assert (=> b!11658 (= e!6916 (and tp_is_empty!567 tp!1920))))

(assert (=> b!11508 (= tp!1906 e!6916)))

(assert (= (and b!11508 ((_ is Cons!335) (toList!189 lm!227))) b!11658))

(declare-fun b_lambda!753 () Bool)

(assert (= b_lambda!745 (or (and start!1556 b_free!453) b_lambda!753)))

(declare-fun b_lambda!755 () Bool)

(assert (= b_lambda!717 (or (and start!1556 b_free!453) b_lambda!755)))

(declare-fun b_lambda!757 () Bool)

(assert (= b_lambda!709 (or (and start!1556 b_free!453) b_lambda!757)))

(declare-fun b_lambda!759 () Bool)

(assert (= b_lambda!741 (or (and start!1556 b_free!453) b_lambda!759)))

(declare-fun b_lambda!761 () Bool)

(assert (= b_lambda!713 (or (and start!1556 b_free!453) b_lambda!761)))

(declare-fun b_lambda!763 () Bool)

(assert (= b_lambda!735 (or (and start!1556 b_free!453) b_lambda!763)))

(declare-fun b_lambda!765 () Bool)

(assert (= b_lambda!707 (or (and start!1556 b_free!453) b_lambda!765)))

(declare-fun b_lambda!767 () Bool)

(assert (= b_lambda!719 (or (and start!1556 b_free!453) b_lambda!767)))

(check-sat (not d!1555) (not b!11632) (not b_lambda!757) (not b!11572) (not b_next!453) (not b_lambda!761) (not b!11570) (not b!11551) (not d!1531) (not b!11539) (not b!11645) (not b_lambda!759) (not b!11537) (not b!11549) (not b_lambda!763) (not d!1527) (not b!11553) tp_is_empty!567 (not b!11639) (not b!11636) (not b_lambda!755) (not d!1577) (not b!11653) (not b!11574) (not b!11658) (not b_lambda!767) (not b!11638) (not d!1513) (not b_lambda!753) (not b!11631) b_and!827 (not b_lambda!765))
(check-sat b_and!827 (not b_next!453))
