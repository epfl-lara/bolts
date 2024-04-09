; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!133186 () Bool)

(assert start!133186)

(declare-fun b!1557835 () Bool)

(declare-fun e!867809 () Bool)

(declare-fun tp_is_empty!38419 () Bool)

(declare-fun tp!112585 () Bool)

(assert (=> b!1557835 (= e!867809 (and tp_is_empty!38419 tp!112585))))

(declare-fun res!1065582 () Bool)

(declare-fun e!867810 () Bool)

(assert (=> start!133186 (=> (not res!1065582) (not e!867810))))

(declare-datatypes ((B!2414 0))(
  ( (B!2415 (val!19293 Int)) )
))
(declare-datatypes ((tuple2!25102 0))(
  ( (tuple2!25103 (_1!12561 (_ BitVec 64)) (_2!12561 B!2414)) )
))
(declare-datatypes ((List!36473 0))(
  ( (Nil!36470) (Cons!36469 (h!37916 tuple2!25102) (t!51207 List!36473)) )
))
(declare-fun l!1292 () List!36473)

(declare-fun isStrictlySorted!964 (List!36473) Bool)

(assert (=> start!133186 (= res!1065582 (isStrictlySorted!964 l!1292))))

(assert (=> start!133186 e!867810))

(assert (=> start!133186 e!867809))

(assert (=> start!133186 true))

(assert (=> start!133186 tp_is_empty!38419))

(declare-fun b!1557833 () Bool)

(declare-fun res!1065580 () Bool)

(assert (=> b!1557833 (=> (not res!1065580) (not e!867810))))

(declare-fun otherKey!62 () (_ BitVec 64))

(declare-fun newKey!135 () (_ BitVec 64))

(assert (=> b!1557833 (= res!1065580 (and (not (= otherKey!62 newKey!135)) (or (not (is-Cons!36469 l!1292)) (= (_1!12561 (h!37916 l!1292)) otherKey!62))))))

(declare-fun b!1557832 () Bool)

(declare-fun res!1065581 () Bool)

(assert (=> b!1557832 (=> (not res!1065581) (not e!867810))))

(declare-fun containsKey!828 (List!36473 (_ BitVec 64)) Bool)

(assert (=> b!1557832 (= res!1065581 (containsKey!828 l!1292 otherKey!62))))

(declare-fun newValue!135 () B!2414)

(declare-fun b!1557834 () Bool)

(declare-fun insertStrictlySorted!566 (List!36473 (_ BitVec 64) B!2414) List!36473)

(assert (=> b!1557834 (= e!867810 (not (isStrictlySorted!964 (insertStrictlySorted!566 l!1292 newKey!135 newValue!135))))))

(assert (= (and start!133186 res!1065582) b!1557832))

(assert (= (and b!1557832 res!1065581) b!1557833))

(assert (= (and b!1557833 res!1065580) b!1557834))

(assert (= (and start!133186 (is-Cons!36469 l!1292)) b!1557835))

(declare-fun m!1434819 () Bool)

(assert (=> start!133186 m!1434819))

(declare-fun m!1434821 () Bool)

(assert (=> b!1557832 m!1434821))

(declare-fun m!1434823 () Bool)

(assert (=> b!1557834 m!1434823))

(assert (=> b!1557834 m!1434823))

(declare-fun m!1434825 () Bool)

(assert (=> b!1557834 m!1434825))

(push 1)

(assert (not b!1557832))

(assert (not start!133186))

(assert (not b!1557835))

(assert tp_is_empty!38419)

(assert (not b!1557834))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!162493 () Bool)

(declare-fun res!1065617 () Bool)

(declare-fun e!867839 () Bool)

(assert (=> d!162493 (=> res!1065617 e!867839)))

(assert (=> d!162493 (= res!1065617 (or (is-Nil!36470 (insertStrictlySorted!566 l!1292 newKey!135 newValue!135)) (is-Nil!36470 (t!51207 (insertStrictlySorted!566 l!1292 newKey!135 newValue!135)))))))

(assert (=> d!162493 (= (isStrictlySorted!964 (insertStrictlySorted!566 l!1292 newKey!135 newValue!135)) e!867839)))

(declare-fun b!1557876 () Bool)

(declare-fun e!867840 () Bool)

(assert (=> b!1557876 (= e!867839 e!867840)))

(declare-fun res!1065618 () Bool)

(assert (=> b!1557876 (=> (not res!1065618) (not e!867840))))

(assert (=> b!1557876 (= res!1065618 (bvslt (_1!12561 (h!37916 (insertStrictlySorted!566 l!1292 newKey!135 newValue!135))) (_1!12561 (h!37916 (t!51207 (insertStrictlySorted!566 l!1292 newKey!135 newValue!135))))))))

(declare-fun b!1557877 () Bool)

(assert (=> b!1557877 (= e!867840 (isStrictlySorted!964 (t!51207 (insertStrictlySorted!566 l!1292 newKey!135 newValue!135))))))

(assert (= (and d!162493 (not res!1065617)) b!1557876))

(assert (= (and b!1557876 res!1065618) b!1557877))

(declare-fun m!1434847 () Bool)

(assert (=> b!1557877 m!1434847))

(assert (=> b!1557834 d!162493))

(declare-fun b!1557960 () Bool)

(declare-fun c!144010 () Bool)

(declare-fun c!144013 () Bool)

(declare-fun e!867888 () List!36473)

(assert (=> b!1557960 (= e!867888 (ite c!144010 (t!51207 l!1292) (ite c!144013 (Cons!36469 (h!37916 l!1292) (t!51207 l!1292)) Nil!36470)))))

(declare-fun b!1557961 () Bool)

(declare-fun e!867889 () List!36473)

(declare-fun call!71744 () List!36473)

(assert (=> b!1557961 (= e!867889 call!71744)))

(declare-fun b!1557962 () Bool)

(declare-fun e!867890 () List!36473)

(declare-fun call!71743 () List!36473)

(assert (=> b!1557962 (= e!867890 call!71743)))

(declare-fun bm!71740 () Bool)

(declare-fun call!71745 () List!36473)

(declare-fun c!144011 () Bool)

(declare-fun $colon$colon!980 (List!36473 tuple2!25102) List!36473)

(assert (=> bm!71740 (= call!71745 ($colon$colon!980 e!867888 (ite c!144011 (h!37916 l!1292) (tuple2!25103 newKey!135 newValue!135))))))

(declare-fun c!144012 () Bool)

(assert (=> bm!71740 (= c!144012 c!144011)))

(declare-fun b!1557963 () Bool)

(declare-fun e!867891 () List!36473)

(assert (=> b!1557963 (= e!867891 e!867889)))

(assert (=> b!1557963 (= c!144010 (and (is-Cons!36469 l!1292) (= (_1!12561 (h!37916 l!1292)) newKey!135)))))

(declare-fun bm!71741 () Bool)

(assert (=> bm!71741 (= call!71743 call!71744)))

(declare-fun b!1557964 () Bool)

(assert (=> b!1557964 (= e!867890 call!71743)))

(declare-fun bm!71742 () Bool)

(assert (=> bm!71742 (= call!71744 call!71745)))

(declare-fun b!1557966 () Bool)

(assert (=> b!1557966 (= e!867891 call!71745)))

(declare-fun b!1557967 () Bool)

(declare-fun res!1065646 () Bool)

(declare-fun e!867892 () Bool)

(assert (=> b!1557967 (=> (not res!1065646) (not e!867892))))

(declare-fun lt!670684 () List!36473)

(assert (=> b!1557967 (= res!1065646 (containsKey!828 lt!670684 newKey!135))))

(declare-fun b!1557965 () Bool)

(declare-fun contains!10216 (List!36473 tuple2!25102) Bool)

(assert (=> b!1557965 (= e!867892 (contains!10216 lt!670684 (tuple2!25103 newKey!135 newValue!135)))))

(declare-fun d!162497 () Bool)

(assert (=> d!162497 e!867892))

(declare-fun res!1065645 () Bool)

(assert (=> d!162497 (=> (not res!1065645) (not e!867892))))

(assert (=> d!162497 (= res!1065645 (isStrictlySorted!964 lt!670684))))

(assert (=> d!162497 (= lt!670684 e!867891)))

(assert (=> d!162497 (= c!144011 (and (is-Cons!36469 l!1292) (bvslt (_1!12561 (h!37916 l!1292)) newKey!135)))))

(assert (=> d!162497 (isStrictlySorted!964 l!1292)))

(assert (=> d!162497 (= (insertStrictlySorted!566 l!1292 newKey!135 newValue!135) lt!670684)))

(declare-fun b!1557968 () Bool)

(assert (=> b!1557968 (= c!144013 (and (is-Cons!36469 l!1292) (bvsgt (_1!12561 (h!37916 l!1292)) newKey!135)))))

(assert (=> b!1557968 (= e!867889 e!867890)))

(declare-fun b!1557969 () Bool)

(assert (=> b!1557969 (= e!867888 (insertStrictlySorted!566 (t!51207 l!1292) newKey!135 newValue!135))))

(assert (= (and d!162497 c!144011) b!1557966))

(assert (= (and d!162497 (not c!144011)) b!1557963))

(assert (= (and b!1557963 c!144010) b!1557961))

(assert (= (and b!1557963 (not c!144010)) b!1557968))

(assert (= (and b!1557968 c!144013) b!1557962))

(assert (= (and b!1557968 (not c!144013)) b!1557964))

(assert (= (or b!1557962 b!1557964) bm!71741))

(assert (= (or b!1557961 bm!71741) bm!71742))

(assert (= (or b!1557966 bm!71742) bm!71740))

(assert (= (and bm!71740 c!144012) b!1557969))

(assert (= (and bm!71740 (not c!144012)) b!1557960))

(assert (= (and d!162497 res!1065645) b!1557967))

(assert (= (and b!1557967 res!1065646) b!1557965))

(declare-fun m!1434865 () Bool)

(assert (=> bm!71740 m!1434865))

(declare-fun m!1434867 () Bool)

(assert (=> d!162497 m!1434867))

(assert (=> d!162497 m!1434819))

(declare-fun m!1434869 () Bool)

(assert (=> b!1557967 m!1434869))

(declare-fun m!1434871 () Bool)

(assert (=> b!1557969 m!1434871))

(declare-fun m!1434873 () Bool)

(assert (=> b!1557965 m!1434873))

(assert (=> b!1557834 d!162497))

(declare-fun d!162505 () Bool)

(declare-fun res!1065649 () Bool)

(declare-fun e!867898 () Bool)

(assert (=> d!162505 (=> res!1065649 e!867898)))

(assert (=> d!162505 (= res!1065649 (or (is-Nil!36470 l!1292) (is-Nil!36470 (t!51207 l!1292))))))

(assert (=> d!162505 (= (isStrictlySorted!964 l!1292) e!867898)))

(declare-fun b!1557977 () Bool)

(declare-fun e!867899 () Bool)

(assert (=> b!1557977 (= e!867898 e!867899)))

(declare-fun res!1065650 () Bool)

(assert (=> b!1557977 (=> (not res!1065650) (not e!867899))))

(assert (=> b!1557977 (= res!1065650 (bvslt (_1!12561 (h!37916 l!1292)) (_1!12561 (h!37916 (t!51207 l!1292)))))))

(declare-fun b!1557978 () Bool)

(assert (=> b!1557978 (= e!867899 (isStrictlySorted!964 (t!51207 l!1292)))))

(assert (= (and d!162505 (not res!1065649)) b!1557977))

(assert (= (and b!1557977 res!1065650) b!1557978))

(declare-fun m!1434875 () Bool)

(assert (=> b!1557978 m!1434875))

(assert (=> start!133186 d!162505))

(declare-fun d!162507 () Bool)

(declare-fun res!1065659 () Bool)

(declare-fun e!867914 () Bool)

(assert (=> d!162507 (=> res!1065659 e!867914)))

(assert (=> d!162507 (= res!1065659 (and (is-Cons!36469 l!1292) (= (_1!12561 (h!37916 l!1292)) otherKey!62)))))

(assert (=> d!162507 (= (containsKey!828 l!1292 otherKey!62) e!867914)))

(declare-fun b!1558000 () Bool)

(declare-fun e!867915 () Bool)

(assert (=> b!1558000 (= e!867914 e!867915)))

(declare-fun res!1065660 () Bool)

(assert (=> b!1558000 (=> (not res!1065660) (not e!867915))))

(assert (=> b!1558000 (= res!1065660 (and (or (not (is-Cons!36469 l!1292)) (bvsle (_1!12561 (h!37916 l!1292)) otherKey!62)) (is-Cons!36469 l!1292) (bvslt (_1!12561 (h!37916 l!1292)) otherKey!62)))))

(declare-fun b!1558001 () Bool)

(assert (=> b!1558001 (= e!867915 (containsKey!828 (t!51207 l!1292) otherKey!62))))

(assert (= (and d!162507 (not res!1065659)) b!1558000))

(assert (= (and b!1558000 res!1065660) b!1558001))

(declare-fun m!1434889 () Bool)

(assert (=> b!1558001 m!1434889))

(assert (=> b!1557832 d!162507))

(declare-fun b!1558006 () Bool)

(declare-fun e!867918 () Bool)

(declare-fun tp!112600 () Bool)

(assert (=> b!1558006 (= e!867918 (and tp_is_empty!38419 tp!112600))))

(assert (=> b!1557835 (= tp!112585 e!867918)))

(assert (= (and b!1557835 (is-Cons!36469 (t!51207 l!1292))) b!1558006))

(push 1)

