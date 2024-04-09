; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138038 () Bool)

(assert start!138038)

(declare-fun b!1583868 () Bool)

(declare-fun res!1081969 () Bool)

(declare-fun e!884150 () Bool)

(assert (=> b!1583868 (=> (not res!1081969) (not e!884150))))

(declare-fun newKey!123 () (_ BitVec 64))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-datatypes ((B!2904 0))(
  ( (B!2905 (val!19814 Int)) )
))
(declare-datatypes ((tuple2!25960 0))(
  ( (tuple2!25961 (_1!12990 (_ BitVec 64)) (_2!12990 B!2904)) )
))
(declare-datatypes ((List!37095 0))(
  ( (Nil!37092) (Cons!37091 (h!38635 tuple2!25960) (t!52016 List!37095)) )
))
(declare-fun l!1251 () List!37095)

(assert (=> b!1583868 (= res!1081969 (and (not (= otherKey!56 newKey!123)) (not (is-Cons!37091 l!1251))))))

(declare-fun b!1583867 () Bool)

(declare-fun res!1081968 () Bool)

(assert (=> b!1583867 (=> (not res!1081968) (not e!884150))))

(declare-fun containsKey!991 (List!37095 (_ BitVec 64)) Bool)

(assert (=> b!1583867 (= res!1081968 (not (containsKey!991 l!1251 otherKey!56)))))

(declare-fun b!1583869 () Bool)

(declare-fun newValue!123 () B!2904)

(declare-fun isStrictlySorted!1157 (List!37095) Bool)

(declare-fun insertStrictlySorted!624 (List!37095 (_ BitVec 64) B!2904) List!37095)

(assert (=> b!1583869 (= e!884150 (not (isStrictlySorted!1157 (insertStrictlySorted!624 l!1251 newKey!123 newValue!123))))))

(declare-fun b!1583870 () Bool)

(declare-fun e!884151 () Bool)

(declare-fun tp_is_empty!39437 () Bool)

(declare-fun tp!115057 () Bool)

(assert (=> b!1583870 (= e!884151 (and tp_is_empty!39437 tp!115057))))

(declare-fun res!1081970 () Bool)

(assert (=> start!138038 (=> (not res!1081970) (not e!884150))))

(assert (=> start!138038 (= res!1081970 (isStrictlySorted!1157 l!1251))))

(assert (=> start!138038 e!884150))

(assert (=> start!138038 e!884151))

(assert (=> start!138038 true))

(assert (=> start!138038 tp_is_empty!39437))

(assert (= (and start!138038 res!1081970) b!1583867))

(assert (= (and b!1583867 res!1081968) b!1583868))

(assert (= (and b!1583868 res!1081969) b!1583869))

(assert (= (and start!138038 (is-Cons!37091 l!1251)) b!1583870))

(declare-fun m!1453491 () Bool)

(assert (=> b!1583867 m!1453491))

(declare-fun m!1453493 () Bool)

(assert (=> b!1583869 m!1453493))

(assert (=> b!1583869 m!1453493))

(declare-fun m!1453495 () Bool)

(assert (=> b!1583869 m!1453495))

(declare-fun m!1453497 () Bool)

(assert (=> start!138038 m!1453497))

(push 1)

(assert (not b!1583867))

(assert tp_is_empty!39437)

(assert (not b!1583870))

(assert (not start!138038))

(assert (not b!1583869))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167280 () Bool)

(declare-fun res!1081983 () Bool)

(declare-fun e!884164 () Bool)

(assert (=> d!167280 (=> res!1081983 e!884164)))

(assert (=> d!167280 (= res!1081983 (and (is-Cons!37091 l!1251) (= (_1!12990 (h!38635 l!1251)) otherKey!56)))))

(assert (=> d!167280 (= (containsKey!991 l!1251 otherKey!56) e!884164)))

(declare-fun b!1583883 () Bool)

(declare-fun e!884165 () Bool)

(assert (=> b!1583883 (= e!884164 e!884165)))

(declare-fun res!1081984 () Bool)

(assert (=> b!1583883 (=> (not res!1081984) (not e!884165))))

(assert (=> b!1583883 (= res!1081984 (and (or (not (is-Cons!37091 l!1251)) (bvsle (_1!12990 (h!38635 l!1251)) otherKey!56)) (is-Cons!37091 l!1251) (bvslt (_1!12990 (h!38635 l!1251)) otherKey!56)))))

(declare-fun b!1583884 () Bool)

(assert (=> b!1583884 (= e!884165 (containsKey!991 (t!52016 l!1251) otherKey!56))))

(assert (= (and d!167280 (not res!1081983)) b!1583883))

(assert (= (and b!1583883 res!1081984) b!1583884))

(declare-fun m!1453499 () Bool)

(assert (=> b!1583884 m!1453499))

(assert (=> b!1583867 d!167280))

(declare-fun d!167285 () Bool)

(declare-fun res!1081999 () Bool)

(declare-fun e!884180 () Bool)

(assert (=> d!167285 (=> res!1081999 e!884180)))

(assert (=> d!167285 (= res!1081999 (or (is-Nil!37092 (insertStrictlySorted!624 l!1251 newKey!123 newValue!123)) (is-Nil!37092 (t!52016 (insertStrictlySorted!624 l!1251 newKey!123 newValue!123)))))))

(assert (=> d!167285 (= (isStrictlySorted!1157 (insertStrictlySorted!624 l!1251 newKey!123 newValue!123)) e!884180)))

(declare-fun b!1583899 () Bool)

(declare-fun e!884181 () Bool)

(assert (=> b!1583899 (= e!884180 e!884181)))

(declare-fun res!1082000 () Bool)

(assert (=> b!1583899 (=> (not res!1082000) (not e!884181))))

(assert (=> b!1583899 (= res!1082000 (bvslt (_1!12990 (h!38635 (insertStrictlySorted!624 l!1251 newKey!123 newValue!123))) (_1!12990 (h!38635 (t!52016 (insertStrictlySorted!624 l!1251 newKey!123 newValue!123))))))))

(declare-fun b!1583900 () Bool)

(assert (=> b!1583900 (= e!884181 (isStrictlySorted!1157 (t!52016 (insertStrictlySorted!624 l!1251 newKey!123 newValue!123))))))

(assert (= (and d!167285 (not res!1081999)) b!1583899))

(assert (= (and b!1583899 res!1082000) b!1583900))

(declare-fun m!1453507 () Bool)

(assert (=> b!1583900 m!1453507))

(assert (=> b!1583869 d!167285))

(declare-fun b!1583973 () Bool)

(declare-fun e!884222 () List!37095)

(assert (=> b!1583973 (= e!884222 (insertStrictlySorted!624 (t!52016 l!1251) newKey!123 newValue!123))))

(declare-fun d!167293 () Bool)

(declare-fun e!884221 () Bool)

(assert (=> d!167293 e!884221))

(declare-fun res!1082017 () Bool)

(assert (=> d!167293 (=> (not res!1082017) (not e!884221))))

(declare-fun lt!677157 () List!37095)

(assert (=> d!167293 (= res!1082017 (isStrictlySorted!1157 lt!677157))))

(declare-fun e!884223 () List!37095)

(assert (=> d!167293 (= lt!677157 e!884223)))

(declare-fun c!146771 () Bool)

(assert (=> d!167293 (= c!146771 (and (is-Cons!37091 l!1251) (bvslt (_1!12990 (h!38635 l!1251)) newKey!123)))))

(assert (=> d!167293 (isStrictlySorted!1157 l!1251)))

(assert (=> d!167293 (= (insertStrictlySorted!624 l!1251 newKey!123 newValue!123) lt!677157)))

(declare-fun call!72534 () List!37095)

(declare-fun bm!72531 () Bool)

(declare-fun $colon$colon!1020 (List!37095 tuple2!25960) List!37095)

(assert (=> bm!72531 (= call!72534 ($colon$colon!1020 e!884222 (ite c!146771 (h!38635 l!1251) (tuple2!25961 newKey!123 newValue!123))))))

(declare-fun c!146768 () Bool)

(assert (=> bm!72531 (= c!146768 c!146771)))

(declare-fun b!1583974 () Bool)

(assert (=> b!1583974 (= e!884223 call!72534)))

(declare-fun b!1583975 () Bool)

(declare-fun res!1082018 () Bool)

(assert (=> b!1583975 (=> (not res!1082018) (not e!884221))))

(assert (=> b!1583975 (= res!1082018 (containsKey!991 lt!677157 newKey!123))))

(declare-fun b!1583976 () Bool)

(declare-fun c!146770 () Bool)

(assert (=> b!1583976 (= c!146770 (and (is-Cons!37091 l!1251) (bvsgt (_1!12990 (h!38635 l!1251)) newKey!123)))))

(declare-fun e!884220 () List!37095)

(declare-fun e!884219 () List!37095)

(assert (=> b!1583976 (= e!884220 e!884219)))

(declare-fun b!1583977 () Bool)

(declare-fun call!72536 () List!37095)

(assert (=> b!1583977 (= e!884219 call!72536)))

(declare-fun b!1583978 () Bool)

(declare-fun call!72535 () List!37095)

(assert (=> b!1583978 (= e!884220 call!72535)))

(declare-fun b!1583979 () Bool)

(assert (=> b!1583979 (= e!884223 e!884220)))

(declare-fun c!146769 () Bool)

(assert (=> b!1583979 (= c!146769 (and (is-Cons!37091 l!1251) (= (_1!12990 (h!38635 l!1251)) newKey!123)))))

(declare-fun bm!72532 () Bool)

(assert (=> bm!72532 (= call!72536 call!72535)))

(declare-fun b!1583980 () Bool)

(assert (=> b!1583980 (= e!884219 call!72536)))

(declare-fun b!1583981 () Bool)

(declare-fun contains!10542 (List!37095 tuple2!25960) Bool)

(assert (=> b!1583981 (= e!884221 (contains!10542 lt!677157 (tuple2!25961 newKey!123 newValue!123)))))

(declare-fun b!1583982 () Bool)

(assert (=> b!1583982 (= e!884222 (ite c!146769 (t!52016 l!1251) (ite c!146770 (Cons!37091 (h!38635 l!1251) (t!52016 l!1251)) Nil!37092)))))

(declare-fun bm!72533 () Bool)

(assert (=> bm!72533 (= call!72535 call!72534)))

(assert (= (and d!167293 c!146771) b!1583974))

(assert (= (and d!167293 (not c!146771)) b!1583979))

(assert (= (and b!1583979 c!146769) b!1583978))

(assert (= (and b!1583979 (not c!146769)) b!1583976))

(assert (= (and b!1583976 c!146770) b!1583977))

(assert (= (and b!1583976 (not c!146770)) b!1583980))

(assert (= (or b!1583977 b!1583980) bm!72532))

(assert (= (or b!1583978 bm!72532) bm!72533))

(assert (= (or b!1583974 bm!72533) bm!72531))

(assert (= (and bm!72531 c!146768) b!1583973))

(assert (= (and bm!72531 (not c!146768)) b!1583982))

(assert (= (and d!167293 res!1082017) b!1583975))

(assert (= (and b!1583975 res!1082018) b!1583981))

(declare-fun m!1453521 () Bool)

(assert (=> b!1583973 m!1453521))

(declare-fun m!1453523 () Bool)

(assert (=> bm!72531 m!1453523))

(declare-fun m!1453525 () Bool)

(assert (=> b!1583981 m!1453525))

(declare-fun m!1453527 () Bool)

(assert (=> d!167293 m!1453527))

(assert (=> d!167293 m!1453497))

(declare-fun m!1453529 () Bool)

(assert (=> b!1583975 m!1453529))

(assert (=> b!1583869 d!167293))

(declare-fun d!167299 () Bool)

(declare-fun res!1082023 () Bool)

(declare-fun e!884231 () Bool)

(assert (=> d!167299 (=> res!1082023 e!884231)))

(assert (=> d!167299 (= res!1082023 (or (is-Nil!37092 l!1251) (is-Nil!37092 (t!52016 l!1251))))))

(assert (=> d!167299 (= (isStrictlySorted!1157 l!1251) e!884231)))

(declare-fun b!1583995 () Bool)

(declare-fun e!884232 () Bool)

(assert (=> b!1583995 (= e!884231 e!884232)))

(declare-fun res!1082024 () Bool)

(assert (=> b!1583995 (=> (not res!1082024) (not e!884232))))

(assert (=> b!1583995 (= res!1082024 (bvslt (_1!12990 (h!38635 l!1251)) (_1!12990 (h!38635 (t!52016 l!1251)))))))

(declare-fun b!1583996 () Bool)

(assert (=> b!1583996 (= e!884232 (isStrictlySorted!1157 (t!52016 l!1251)))))

(assert (= (and d!167299 (not res!1082023)) b!1583995))

(assert (= (and b!1583995 res!1082024) b!1583996))

(declare-fun m!1453541 () Bool)

