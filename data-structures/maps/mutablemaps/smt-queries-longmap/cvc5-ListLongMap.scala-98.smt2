; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1554 () Bool)

(assert start!1554)

(declare-fun b_free!451 () Bool)

(declare-fun b_next!451 () Bool)

(assert (=> start!1554 (= b_free!451 (not b_next!451))))

(declare-fun tp!1896 () Bool)

(declare-fun b_and!783 () Bool)

(assert (=> start!1554 (= tp!1896 b_and!783)))

(declare-fun res!9549 () Bool)

(declare-fun e!6793 () Bool)

(assert (=> start!1554 (=> (not res!9549) (not e!6793))))

(declare-datatypes ((B!392 0))(
  ( (B!393 (val!291 Int)) )
))
(declare-datatypes ((tuple2!364 0))(
  ( (tuple2!365 (_1!182 (_ BitVec 64)) (_2!182 B!392)) )
))
(declare-datatypes ((List!338 0))(
  ( (Nil!335) (Cons!334 (h!900 tuple2!364) (t!2659 List!338)) )
))
(declare-datatypes ((ListLongMap!345 0))(
  ( (ListLongMap!346 (toList!188 List!338)) )
))
(declare-fun lm!227 () ListLongMap!345)

(declare-fun p!216 () Int)

(declare-fun forall!62 (List!338 Int) Bool)

(assert (=> start!1554 (= res!9549 (forall!62 (toList!188 lm!227) p!216))))

(assert (=> start!1554 e!6793))

(declare-fun e!6794 () Bool)

(declare-fun inv!566 (ListLongMap!345) Bool)

(assert (=> start!1554 (and (inv!566 lm!227) e!6794)))

(assert (=> start!1554 tp!1896))

(declare-fun e!6792 () Bool)

(assert (=> start!1554 e!6792))

(declare-fun kvs!4 () List!338)

(declare-fun b!11483 () Bool)

(declare-fun e!6791 () Bool)

(declare-fun ++!4 (ListLongMap!345 List!338) ListLongMap!345)

(assert (=> b!11483 (= e!6791 (forall!62 (toList!188 (++!4 lm!227 kvs!4)) p!216))))

(declare-fun lt!2942 () ListLongMap!345)

(declare-fun lt!2946 () List!338)

(assert (=> b!11483 (forall!62 (toList!188 (++!4 lt!2942 lt!2946)) p!216)))

(declare-datatypes ((Unit!245 0))(
  ( (Unit!246) )
))
(declare-fun lt!2945 () Unit!245)

(declare-fun insertAllValidProp!2 (ListLongMap!345 List!338 Int) Unit!245)

(assert (=> b!11483 (= lt!2945 (insertAllValidProp!2 lt!2942 lt!2946 p!216))))

(declare-fun b!11484 () Bool)

(declare-fun tp!1897 () Bool)

(assert (=> b!11484 (= e!6794 tp!1897)))

(declare-fun b!11485 () Bool)

(assert (=> b!11485 (= e!6793 (not e!6791))))

(declare-fun res!9552 () Bool)

(assert (=> b!11485 (=> res!9552 e!6791)))

(assert (=> b!11485 (= res!9552 (not (forall!62 (toList!188 lt!2942) p!216)))))

(declare-fun tail!56 (List!338) List!338)

(assert (=> b!11485 (= lt!2946 (tail!56 kvs!4))))

(declare-fun lt!2943 () tuple2!364)

(declare-fun +!29 (ListLongMap!345 tuple2!364) ListLongMap!345)

(assert (=> b!11485 (= lt!2942 (+!29 lm!227 lt!2943))))

(assert (=> b!11485 (forall!62 (toList!188 (+!29 lm!227 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943)))) p!216)))

(declare-fun lt!2944 () Unit!245)

(declare-fun addValidProp!17 (ListLongMap!345 Int (_ BitVec 64) B!392) Unit!245)

(assert (=> b!11485 (= lt!2944 (addValidProp!17 lm!227 p!216 (_1!182 lt!2943) (_2!182 lt!2943)))))

(declare-fun head!776 (List!338) tuple2!364)

(assert (=> b!11485 (= lt!2943 (head!776 kvs!4))))

(declare-fun b!11486 () Bool)

(declare-fun res!9551 () Bool)

(assert (=> b!11486 (=> res!9551 e!6791)))

(assert (=> b!11486 (= res!9551 (not (forall!62 lt!2946 p!216)))))

(declare-fun b!11487 () Bool)

(declare-fun tp_is_empty!565 () Bool)

(declare-fun tp!1898 () Bool)

(assert (=> b!11487 (= e!6792 (and tp_is_empty!565 tp!1898))))

(declare-fun b!11488 () Bool)

(declare-fun res!9550 () Bool)

(assert (=> b!11488 (=> (not res!9550) (not e!6793))))

(declare-fun isEmpty!69 (List!338) Bool)

(assert (=> b!11488 (= res!9550 (not (isEmpty!69 kvs!4)))))

(declare-fun b!11489 () Bool)

(declare-fun res!9553 () Bool)

(assert (=> b!11489 (=> (not res!9553) (not e!6793))))

(assert (=> b!11489 (= res!9553 (forall!62 kvs!4 p!216))))

(assert (= (and start!1554 res!9549) b!11489))

(assert (= (and b!11489 res!9553) b!11488))

(assert (= (and b!11488 res!9550) b!11485))

(assert (= (and b!11485 (not res!9552)) b!11486))

(assert (= (and b!11486 (not res!9551)) b!11483))

(assert (= start!1554 b!11484))

(assert (= (and start!1554 (is-Cons!334 kvs!4)) b!11487))

(declare-fun m!7829 () Bool)

(assert (=> start!1554 m!7829))

(declare-fun m!7831 () Bool)

(assert (=> start!1554 m!7831))

(declare-fun m!7833 () Bool)

(assert (=> b!11486 m!7833))

(declare-fun m!7835 () Bool)

(assert (=> b!11483 m!7835))

(declare-fun m!7837 () Bool)

(assert (=> b!11483 m!7837))

(declare-fun m!7839 () Bool)

(assert (=> b!11483 m!7839))

(declare-fun m!7841 () Bool)

(assert (=> b!11483 m!7841))

(declare-fun m!7843 () Bool)

(assert (=> b!11483 m!7843))

(declare-fun m!7845 () Bool)

(assert (=> b!11488 m!7845))

(declare-fun m!7847 () Bool)

(assert (=> b!11489 m!7847))

(declare-fun m!7849 () Bool)

(assert (=> b!11485 m!7849))

(declare-fun m!7851 () Bool)

(assert (=> b!11485 m!7851))

(declare-fun m!7853 () Bool)

(assert (=> b!11485 m!7853))

(declare-fun m!7855 () Bool)

(assert (=> b!11485 m!7855))

(declare-fun m!7857 () Bool)

(assert (=> b!11485 m!7857))

(declare-fun m!7859 () Bool)

(assert (=> b!11485 m!7859))

(declare-fun m!7861 () Bool)

(assert (=> b!11485 m!7861))

(push 1)

(assert (not b!11484))

(assert b_and!783)

(assert (not b!11486))

(assert (not b!11487))

(assert (not b!11483))

(assert (not b!11488))

(assert (not b!11485))

(assert tp_is_empty!565)

(assert (not b!11489))

(assert (not b_next!451))

(assert (not start!1554))

(check-sat)

(pop 1)

(push 1)

(assert b_and!783)

(assert (not b_next!451))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1499 () Bool)

(assert (=> d!1499 (forall!62 (toList!188 (+!29 lm!227 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943)))) p!216)))

(declare-fun lt!2979 () Unit!245)

(declare-fun choose!159 (ListLongMap!345 Int (_ BitVec 64) B!392) Unit!245)

(assert (=> d!1499 (= lt!2979 (choose!159 lm!227 p!216 (_1!182 lt!2943) (_2!182 lt!2943)))))

(declare-fun e!6831 () Bool)

(assert (=> d!1499 e!6831))

(declare-fun res!9594 () Bool)

(assert (=> d!1499 (=> (not res!9594) (not e!6831))))

(assert (=> d!1499 (= res!9594 (forall!62 (toList!188 lm!227) p!216))))

(assert (=> d!1499 (= (addValidProp!17 lm!227 p!216 (_1!182 lt!2943) (_2!182 lt!2943)) lt!2979)))

(declare-fun b!11547 () Bool)

(declare-fun dynLambda!74 (Int tuple2!364) Bool)

(assert (=> b!11547 (= e!6831 (dynLambda!74 p!216 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943))))))

(assert (= (and d!1499 res!9594) b!11547))

(declare-fun b_lambda!711 () Bool)

(assert (=> (not b_lambda!711) (not b!11547)))

(declare-fun t!2667 () Bool)

(declare-fun tb!325 () Bool)

(assert (=> (and start!1554 (= p!216 p!216) t!2667) tb!325))

(declare-fun result!499 () Bool)

(assert (=> tb!325 (= result!499 true)))

(assert (=> b!11547 t!2667))

(declare-fun b_and!793 () Bool)

(assert (= b_and!783 (and (=> t!2667 result!499) b_and!793)))

(assert (=> d!1499 m!7857))

(assert (=> d!1499 m!7859))

(declare-fun m!7943 () Bool)

(assert (=> d!1499 m!7943))

(assert (=> d!1499 m!7829))

(declare-fun m!7945 () Bool)

(assert (=> b!11547 m!7945))

(assert (=> b!11485 d!1499))

(declare-fun d!1509 () Bool)

(declare-fun res!9605 () Bool)

(declare-fun e!6842 () Bool)

(assert (=> d!1509 (=> res!9605 e!6842)))

(assert (=> d!1509 (= res!9605 (is-Nil!335 (toList!188 (+!29 lm!227 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943))))))))

(assert (=> d!1509 (= (forall!62 (toList!188 (+!29 lm!227 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943)))) p!216) e!6842)))

(declare-fun b!11562 () Bool)

(declare-fun e!6843 () Bool)

(assert (=> b!11562 (= e!6842 e!6843)))

(declare-fun res!9606 () Bool)

(assert (=> b!11562 (=> (not res!9606) (not e!6843))))

(assert (=> b!11562 (= res!9606 (dynLambda!74 p!216 (h!900 (toList!188 (+!29 lm!227 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943)))))))))

(declare-fun b!11563 () Bool)

(assert (=> b!11563 (= e!6843 (forall!62 (t!2659 (toList!188 (+!29 lm!227 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943))))) p!216))))

(assert (= (and d!1509 (not res!9605)) b!11562))

(assert (= (and b!11562 res!9606) b!11563))

(declare-fun b_lambda!715 () Bool)

(assert (=> (not b_lambda!715) (not b!11562)))

(declare-fun t!2671 () Bool)

(declare-fun tb!329 () Bool)

(assert (=> (and start!1554 (= p!216 p!216) t!2671) tb!329))

(declare-fun result!503 () Bool)

(assert (=> tb!329 (= result!503 true)))

(assert (=> b!11562 t!2671))

(declare-fun b_and!797 () Bool)

(assert (= b_and!793 (and (=> t!2671 result!503) b_and!797)))

(declare-fun m!7955 () Bool)

(assert (=> b!11562 m!7955))

(declare-fun m!7957 () Bool)

(assert (=> b!11563 m!7957))

(assert (=> b!11485 d!1509))

(declare-fun d!1515 () Bool)

(assert (=> d!1515 (= (tail!56 kvs!4) (t!2659 kvs!4))))

(assert (=> b!11485 d!1515))

(declare-fun d!1517 () Bool)

(declare-fun e!6857 () Bool)

(assert (=> d!1517 e!6857))

(declare-fun res!9625 () Bool)

(assert (=> d!1517 (=> (not res!9625) (not e!6857))))

(declare-fun lt!3010 () ListLongMap!345)

(declare-fun contains!157 (ListLongMap!345 (_ BitVec 64)) Bool)

(assert (=> d!1517 (= res!9625 (contains!157 lt!3010 (_1!182 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943)))))))

(declare-fun lt!3009 () List!338)

(assert (=> d!1517 (= lt!3010 (ListLongMap!346 lt!3009))))

(declare-fun lt!3011 () Unit!245)

(declare-fun lt!3012 () Unit!245)

(assert (=> d!1517 (= lt!3011 lt!3012)))

(declare-datatypes ((Option!36 0))(
  ( (Some!35 (v!1350 B!392)) (None!34) )
))
(declare-fun getValueByKey!30 (List!338 (_ BitVec 64)) Option!36)

(assert (=> d!1517 (= (getValueByKey!30 lt!3009 (_1!182 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943)))) (Some!35 (_2!182 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!14 (List!338 (_ BitVec 64) B!392) Unit!245)

(assert (=> d!1517 (= lt!3012 (lemmaContainsTupThenGetReturnValue!14 lt!3009 (_1!182 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943))) (_2!182 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943)))))))

(declare-fun insertStrictlySorted!14 (List!338 (_ BitVec 64) B!392) List!338)

(assert (=> d!1517 (= lt!3009 (insertStrictlySorted!14 (toList!188 lm!227) (_1!182 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943))) (_2!182 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943)))))))

(assert (=> d!1517 (= (+!29 lm!227 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943))) lt!3010)))

(declare-fun b!11582 () Bool)

(declare-fun res!9624 () Bool)

(assert (=> b!11582 (=> (not res!9624) (not e!6857))))

(assert (=> b!11582 (= res!9624 (= (getValueByKey!30 (toList!188 lt!3010) (_1!182 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943)))) (Some!35 (_2!182 (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943))))))))

(declare-fun b!11583 () Bool)

(declare-fun contains!158 (List!338 tuple2!364) Bool)

(assert (=> b!11583 (= e!6857 (contains!158 (toList!188 lt!3010) (tuple2!365 (_1!182 lt!2943) (_2!182 lt!2943))))))

(assert (= (and d!1517 res!9625) b!11582))

(assert (= (and b!11582 res!9624) b!11583))

(declare-fun m!7995 () Bool)

(assert (=> d!1517 m!7995))

(declare-fun m!7997 () Bool)

(assert (=> d!1517 m!7997))

(declare-fun m!7999 () Bool)

(assert (=> d!1517 m!7999))

(declare-fun m!8001 () Bool)

(assert (=> d!1517 m!8001))

(declare-fun m!8003 () Bool)

(assert (=> b!11582 m!8003))

(declare-fun m!8005 () Bool)

(assert (=> b!11583 m!8005))

(assert (=> b!11485 d!1517))

(declare-fun d!1533 () Bool)

(declare-fun res!9627 () Bool)

(declare-fun e!6859 () Bool)

(assert (=> d!1533 (=> res!9627 e!6859)))

(assert (=> d!1533 (= res!9627 (is-Nil!335 (toList!188 lt!2942)))))

(assert (=> d!1533 (= (forall!62 (toList!188 lt!2942) p!216) e!6859)))

(declare-fun b!11585 () Bool)

(declare-fun e!6860 () Bool)

(assert (=> b!11585 (= e!6859 e!6860)))

(declare-fun res!9628 () Bool)

(assert (=> b!11585 (=> (not res!9628) (not e!6860))))

(assert (=> b!11585 (= res!9628 (dynLambda!74 p!216 (h!900 (toList!188 lt!2942))))))

(declare-fun b!11586 () Bool)

(assert (=> b!11586 (= e!6860 (forall!62 (t!2659 (toList!188 lt!2942)) p!216))))

(assert (= (and d!1533 (not res!9627)) b!11585))

(assert (= (and b!11585 res!9628) b!11586))

(declare-fun b_lambda!723 () Bool)

(assert (=> (not b_lambda!723) (not b!11585)))

(declare-fun t!2679 () Bool)

(declare-fun tb!337 () Bool)

(assert (=> (and start!1554 (= p!216 p!216) t!2679) tb!337))

(declare-fun result!511 () Bool)

(assert (=> tb!337 (= result!511 true)))

(assert (=> b!11585 t!2679))

(declare-fun b_and!805 () Bool)

(assert (= b_and!797 (and (=> t!2679 result!511) b_and!805)))

(declare-fun m!8007 () Bool)

(assert (=> b!11585 m!8007))

(declare-fun m!8011 () Bool)

(assert (=> b!11586 m!8011))

(assert (=> b!11485 d!1533))

(declare-fun d!1535 () Bool)

(assert (=> d!1535 (= (head!776 kvs!4) (h!900 kvs!4))))

(assert (=> b!11485 d!1535))

(declare-fun d!1539 () Bool)

(declare-fun e!6861 () Bool)

(assert (=> d!1539 e!6861))

(declare-fun res!9630 () Bool)

(assert (=> d!1539 (=> (not res!9630) (not e!6861))))

(declare-fun lt!3015 () ListLongMap!345)

(assert (=> d!1539 (= res!9630 (contains!157 lt!3015 (_1!182 lt!2943)))))

(declare-fun lt!3014 () List!338)

(assert (=> d!1539 (= lt!3015 (ListLongMap!346 lt!3014))))

(declare-fun lt!3016 () Unit!245)

(declare-fun lt!3017 () Unit!245)

(assert (=> d!1539 (= lt!3016 lt!3017)))

(assert (=> d!1539 (= (getValueByKey!30 lt!3014 (_1!182 lt!2943)) (Some!35 (_2!182 lt!2943)))))

(assert (=> d!1539 (= lt!3017 (lemmaContainsTupThenGetReturnValue!14 lt!3014 (_1!182 lt!2943) (_2!182 lt!2943)))))

(assert (=> d!1539 (= lt!3014 (insertStrictlySorted!14 (toList!188 lm!227) (_1!182 lt!2943) (_2!182 lt!2943)))))

(assert (=> d!1539 (= (+!29 lm!227 lt!2943) lt!3015)))

(declare-fun b!11587 () Bool)

(declare-fun res!9629 () Bool)

(assert (=> b!11587 (=> (not res!9629) (not e!6861))))

(assert (=> b!11587 (= res!9629 (= (getValueByKey!30 (toList!188 lt!3015) (_1!182 lt!2943)) (Some!35 (_2!182 lt!2943))))))

(declare-fun b!11588 () Bool)

(assert (=> b!11588 (= e!6861 (contains!158 (toList!188 lt!3015) lt!2943))))

(assert (= (and d!1539 res!9630) b!11587))

(assert (= (and b!11587 res!9629) b!11588))

(declare-fun m!8015 () Bool)

(assert (=> d!1539 m!8015))

(declare-fun m!8017 () Bool)

(assert (=> d!1539 m!8017))

(declare-fun m!8019 () Bool)

(assert (=> d!1539 m!8019))

(declare-fun m!8021 () Bool)

(assert (=> d!1539 m!8021))

(declare-fun m!8023 () Bool)

(assert (=> b!11587 m!8023))

(declare-fun m!8025 () Bool)

(assert (=> b!11588 m!8025))

(assert (=> b!11485 d!1539))

(declare-fun d!1543 () Bool)

(declare-fun res!9631 () Bool)

(declare-fun e!6862 () Bool)

(assert (=> d!1543 (=> res!9631 e!6862)))

(assert (=> d!1543 (= res!9631 (is-Nil!335 lt!2946))))

(assert (=> d!1543 (= (forall!62 lt!2946 p!216) e!6862)))

(declare-fun b!11589 () Bool)

(declare-fun e!6863 () Bool)

(assert (=> b!11589 (= e!6862 e!6863)))

(declare-fun res!9632 () Bool)

(assert (=> b!11589 (=> (not res!9632) (not e!6863))))

(assert (=> b!11589 (= res!9632 (dynLambda!74 p!216 (h!900 lt!2946)))))

(declare-fun b!11590 () Bool)

(assert (=> b!11590 (= e!6863 (forall!62 (t!2659 lt!2946) p!216))))

(assert (= (and d!1543 (not res!9631)) b!11589))

(assert (= (and b!11589 res!9632) b!11590))

(declare-fun b_lambda!725 () Bool)

(assert (=> (not b_lambda!725) (not b!11589)))

(declare-fun t!2681 () Bool)

(declare-fun tb!339 () Bool)

(assert (=> (and start!1554 (= p!216 p!216) t!2681) tb!339))

(declare-fun result!513 () Bool)

(assert (=> tb!339 (= result!513 true)))

(assert (=> b!11589 t!2681))

(declare-fun b_and!807 () Bool)

(assert (= b_and!805 (and (=> t!2681 result!513) b_and!807)))

(declare-fun m!8027 () Bool)

(assert (=> b!11589 m!8027))

(declare-fun m!8029 () Bool)

(assert (=> b!11590 m!8029))

(assert (=> b!11486 d!1543))

(declare-fun d!1545 () Bool)

(declare-fun res!9639 () Bool)

(declare-fun e!6870 () Bool)

(assert (=> d!1545 (=> res!9639 e!6870)))

(assert (=> d!1545 (= res!9639 (is-Nil!335 kvs!4))))

(assert (=> d!1545 (= (forall!62 kvs!4 p!216) e!6870)))

(declare-fun b!11598 () Bool)

(declare-fun e!6871 () Bool)

(assert (=> b!11598 (= e!6870 e!6871)))

(declare-fun res!9640 () Bool)

(assert (=> b!11598 (=> (not res!9640) (not e!6871))))

(assert (=> b!11598 (= res!9640 (dynLambda!74 p!216 (h!900 kvs!4)))))

(declare-fun b!11599 () Bool)

(assert (=> b!11599 (= e!6871 (forall!62 (t!2659 kvs!4) p!216))))

(assert (= (and d!1545 (not res!9639)) b!11598))

(assert (= (and b!11598 res!9640) b!11599))

(declare-fun b_lambda!727 () Bool)

(assert (=> (not b_lambda!727) (not b!11598)))

(declare-fun t!2683 () Bool)

(declare-fun tb!341 () Bool)

(assert (=> (and start!1554 (= p!216 p!216) t!2683) tb!341))

(declare-fun result!515 () Bool)

(assert (=> tb!341 (= result!515 true)))

(assert (=> b!11598 t!2683))

(declare-fun b_and!809 () Bool)

(assert (= b_and!807 (and (=> t!2683 result!515) b_and!809)))

(declare-fun m!8031 () Bool)

(assert (=> b!11598 m!8031))

(declare-fun m!8033 () Bool)

(assert (=> b!11599 m!8033))

(assert (=> b!11489 d!1545))

(declare-fun d!1547 () Bool)

(declare-fun res!9643 () Bool)

(declare-fun e!6874 () Bool)

(assert (=> d!1547 (=> res!9643 e!6874)))

(assert (=> d!1547 (= res!9643 (is-Nil!335 (toList!188 lm!227)))))

(assert (=> d!1547 (= (forall!62 (toList!188 lm!227) p!216) e!6874)))

(declare-fun b!11602 () Bool)

(declare-fun e!6875 () Bool)

(assert (=> b!11602 (= e!6874 e!6875)))

(declare-fun res!9644 () Bool)

(assert (=> b!11602 (=> (not res!9644) (not e!6875))))

(assert (=> b!11602 (= res!9644 (dynLambda!74 p!216 (h!900 (toList!188 lm!227))))))

(declare-fun b!11603 () Bool)

(assert (=> b!11603 (= e!6875 (forall!62 (t!2659 (toList!188 lm!227)) p!216))))

(assert (= (and d!1547 (not res!9643)) b!11602))

(assert (= (and b!11602 res!9644) b!11603))

(declare-fun b_lambda!731 () Bool)

(assert (=> (not b_lambda!731) (not b!11602)))

(declare-fun t!2687 () Bool)

(declare-fun tb!345 () Bool)

(assert (=> (and start!1554 (= p!216 p!216) t!2687) tb!345))

(declare-fun result!519 () Bool)

(assert (=> tb!345 (= result!519 true)))

(assert (=> b!11602 t!2687))

(declare-fun b_and!813 () Bool)

(assert (= b_and!809 (and (=> t!2687 result!519) b_and!813)))

(declare-fun m!8039 () Bool)

(assert (=> b!11602 m!8039))

(declare-fun m!8041 () Bool)

(assert (=> b!11603 m!8041))

(assert (=> start!1554 d!1547))

(declare-fun d!1551 () Bool)

(declare-fun isStrictlySorted!47 (List!338) Bool)

(assert (=> d!1551 (= (inv!566 lm!227) (isStrictlySorted!47 (toList!188 lm!227)))))

(declare-fun bs!439 () Bool)

(assert (= bs!439 d!1551))

(declare-fun m!8051 () Bool)

(assert (=> bs!439 m!8051))

(assert (=> start!1554 d!1551))

(declare-fun d!1557 () Bool)

(assert (=> d!1557 (= (isEmpty!69 kvs!4) (is-Nil!335 kvs!4))))

(assert (=> b!11488 d!1557))

(declare-fun d!1559 () Bool)

(declare-fun c!976 () Bool)

(assert (=> d!1559 (= c!976 (is-Nil!335 kvs!4))))

(declare-fun e!6887 () ListLongMap!345)

(assert (=> d!1559 (= (++!4 lm!227 kvs!4) e!6887)))

(declare-fun b!11621 () Bool)

(assert (=> b!11621 (= e!6887 lm!227)))

(declare-fun b!11622 () Bool)

(assert (=> b!11622 (= e!6887 (++!4 (+!29 lm!227 (h!900 kvs!4)) (t!2659 kvs!4)))))

(assert (= (and d!1559 c!976) b!11621))

(assert (= (and d!1559 (not c!976)) b!11622))

(declare-fun m!8065 () Bool)

(assert (=> b!11622 m!8065))

(assert (=> b!11622 m!8065))

(declare-fun m!8067 () Bool)

(assert (=> b!11622 m!8067))

(assert (=> b!11483 d!1559))

(declare-fun d!1567 () Bool)

(declare-fun res!9650 () Bool)

(declare-fun e!6888 () Bool)

(assert (=> d!1567 (=> res!9650 e!6888)))

(assert (=> d!1567 (= res!9650 (is-Nil!335 (toList!188 (++!4 lm!227 kvs!4))))))

(assert (=> d!1567 (= (forall!62 (toList!188 (++!4 lm!227 kvs!4)) p!216) e!6888)))

(declare-fun b!11623 () Bool)

(declare-fun e!6889 () Bool)

(assert (=> b!11623 (= e!6888 e!6889)))

(declare-fun res!9651 () Bool)

(assert (=> b!11623 (=> (not res!9651) (not e!6889))))

(assert (=> b!11623 (= res!9651 (dynLambda!74 p!216 (h!900 (toList!188 (++!4 lm!227 kvs!4)))))))

(declare-fun b!11624 () Bool)

(assert (=> b!11624 (= e!6889 (forall!62 (t!2659 (toList!188 (++!4 lm!227 kvs!4))) p!216))))

(assert (= (and d!1567 (not res!9650)) b!11623))

(assert (= (and b!11623 res!9651) b!11624))

(declare-fun b_lambda!739 () Bool)

(assert (=> (not b_lambda!739) (not b!11623)))

(declare-fun t!2695 () Bool)

(declare-fun tb!353 () Bool)

(assert (=> (and start!1554 (= p!216 p!216) t!2695) tb!353))

(declare-fun result!527 () Bool)

(assert (=> tb!353 (= result!527 true)))

(assert (=> b!11623 t!2695))

(declare-fun b_and!821 () Bool)

(assert (= b_and!813 (and (=> t!2695 result!527) b_and!821)))

(declare-fun m!8069 () Bool)

(assert (=> b!11623 m!8069))

(declare-fun m!8071 () Bool)

(assert (=> b!11624 m!8071))

(assert (=> b!11483 d!1567))

(declare-fun d!1569 () Bool)

(declare-fun c!977 () Bool)

(assert (=> d!1569 (= c!977 (is-Nil!335 lt!2946))))

(declare-fun e!6892 () ListLongMap!345)

(assert (=> d!1569 (= (++!4 lt!2942 lt!2946) e!6892)))

(declare-fun b!11629 () Bool)

(assert (=> b!11629 (= e!6892 lt!2942)))

(declare-fun b!11630 () Bool)

(assert (=> b!11630 (= e!6892 (++!4 (+!29 lt!2942 (h!900 lt!2946)) (t!2659 lt!2946)))))

(assert (= (and d!1569 c!977) b!11629))

