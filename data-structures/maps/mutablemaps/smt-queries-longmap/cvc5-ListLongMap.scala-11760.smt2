; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!138034 () Bool)

(assert start!138034)

(declare-fun b!1583844 () Bool)

(declare-fun res!1081951 () Bool)

(declare-fun e!884139 () Bool)

(assert (=> b!1583844 (=> (not res!1081951) (not e!884139))))

(declare-fun newKey!123 () (_ BitVec 64))

(declare-fun otherKey!56 () (_ BitVec 64))

(declare-datatypes ((B!2900 0))(
  ( (B!2901 (val!19812 Int)) )
))
(declare-datatypes ((tuple2!25956 0))(
  ( (tuple2!25957 (_1!12988 (_ BitVec 64)) (_2!12988 B!2900)) )
))
(declare-datatypes ((List!37093 0))(
  ( (Nil!37090) (Cons!37089 (h!38633 tuple2!25956) (t!52014 List!37093)) )
))
(declare-fun l!1251 () List!37093)

(assert (=> b!1583844 (= res!1081951 (and (not (= otherKey!56 newKey!123)) (not (is-Cons!37089 l!1251))))))

(declare-fun b!1583846 () Bool)

(declare-fun e!884138 () Bool)

(declare-fun tp_is_empty!39433 () Bool)

(declare-fun tp!115051 () Bool)

(assert (=> b!1583846 (= e!884138 (and tp_is_empty!39433 tp!115051))))

(declare-fun b!1583843 () Bool)

(declare-fun res!1081950 () Bool)

(assert (=> b!1583843 (=> (not res!1081950) (not e!884139))))

(declare-fun containsKey!989 (List!37093 (_ BitVec 64)) Bool)

(assert (=> b!1583843 (= res!1081950 (not (containsKey!989 l!1251 otherKey!56)))))

(declare-fun res!1081952 () Bool)

(assert (=> start!138034 (=> (not res!1081952) (not e!884139))))

(declare-fun isStrictlySorted!1155 (List!37093) Bool)

(assert (=> start!138034 (= res!1081952 (isStrictlySorted!1155 l!1251))))

(assert (=> start!138034 e!884139))

(assert (=> start!138034 e!884138))

(assert (=> start!138034 true))

(assert (=> start!138034 tp_is_empty!39433))

(declare-fun b!1583845 () Bool)

(declare-fun newValue!123 () B!2900)

(declare-fun insertStrictlySorted!622 (List!37093 (_ BitVec 64) B!2900) List!37093)

(assert (=> b!1583845 (= e!884139 (not (isStrictlySorted!1155 (insertStrictlySorted!622 l!1251 newKey!123 newValue!123))))))

(assert (= (and start!138034 res!1081952) b!1583843))

(assert (= (and b!1583843 res!1081950) b!1583844))

(assert (= (and b!1583844 res!1081951) b!1583845))

(assert (= (and start!138034 (is-Cons!37089 l!1251)) b!1583846))

(declare-fun m!1453475 () Bool)

(assert (=> b!1583843 m!1453475))

(declare-fun m!1453477 () Bool)

(assert (=> start!138034 m!1453477))

(declare-fun m!1453479 () Bool)

(assert (=> b!1583845 m!1453479))

(assert (=> b!1583845 m!1453479))

(declare-fun m!1453481 () Bool)

(assert (=> b!1583845 m!1453481))

(push 1)

(assert (not start!138034))

(assert tp_is_empty!39433)

(assert (not b!1583846))

(assert (not b!1583845))

(assert (not b!1583843))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!167283 () Bool)

(declare-fun res!1081987 () Bool)

(declare-fun e!884168 () Bool)

(assert (=> d!167283 (=> res!1081987 e!884168)))

(assert (=> d!167283 (= res!1081987 (or (is-Nil!37090 l!1251) (is-Nil!37090 (t!52014 l!1251))))))

(assert (=> d!167283 (= (isStrictlySorted!1155 l!1251) e!884168)))

(declare-fun b!1583887 () Bool)

(declare-fun e!884169 () Bool)

(assert (=> b!1583887 (= e!884168 e!884169)))

(declare-fun res!1081988 () Bool)

(assert (=> b!1583887 (=> (not res!1081988) (not e!884169))))

(assert (=> b!1583887 (= res!1081988 (bvslt (_1!12988 (h!38633 l!1251)) (_1!12988 (h!38633 (t!52014 l!1251)))))))

(declare-fun b!1583888 () Bool)

(assert (=> b!1583888 (= e!884169 (isStrictlySorted!1155 (t!52014 l!1251)))))

(assert (= (and d!167283 (not res!1081987)) b!1583887))

(assert (= (and b!1583887 res!1081988) b!1583888))

(declare-fun m!1453503 () Bool)

(assert (=> b!1583888 m!1453503))

(assert (=> start!138034 d!167283))

(declare-fun d!167289 () Bool)

(declare-fun res!1081989 () Bool)

(declare-fun e!884170 () Bool)

(assert (=> d!167289 (=> res!1081989 e!884170)))

(assert (=> d!167289 (= res!1081989 (or (is-Nil!37090 (insertStrictlySorted!622 l!1251 newKey!123 newValue!123)) (is-Nil!37090 (t!52014 (insertStrictlySorted!622 l!1251 newKey!123 newValue!123)))))))

(assert (=> d!167289 (= (isStrictlySorted!1155 (insertStrictlySorted!622 l!1251 newKey!123 newValue!123)) e!884170)))

(declare-fun b!1583889 () Bool)

(declare-fun e!884171 () Bool)

(assert (=> b!1583889 (= e!884170 e!884171)))

(declare-fun res!1081990 () Bool)

(assert (=> b!1583889 (=> (not res!1081990) (not e!884171))))

(assert (=> b!1583889 (= res!1081990 (bvslt (_1!12988 (h!38633 (insertStrictlySorted!622 l!1251 newKey!123 newValue!123))) (_1!12988 (h!38633 (t!52014 (insertStrictlySorted!622 l!1251 newKey!123 newValue!123))))))))

(declare-fun b!1583890 () Bool)

(assert (=> b!1583890 (= e!884171 (isStrictlySorted!1155 (t!52014 (insertStrictlySorted!622 l!1251 newKey!123 newValue!123))))))

(assert (= (and d!167289 (not res!1081989)) b!1583889))

(assert (= (and b!1583889 res!1081990) b!1583890))

(declare-fun m!1453505 () Bool)

(assert (=> b!1583890 m!1453505))

(assert (=> b!1583845 d!167289))

(declare-fun bm!72528 () Bool)

(declare-fun c!146767 () Bool)

(declare-fun e!884215 () List!37093)

(declare-fun call!72532 () List!37093)

(declare-fun $colon$colon!1019 (List!37093 tuple2!25956) List!37093)

(assert (=> bm!72528 (= call!72532 ($colon$colon!1019 e!884215 (ite c!146767 (h!38633 l!1251) (tuple2!25957 newKey!123 newValue!123))))))

(declare-fun c!146766 () Bool)

(assert (=> bm!72528 (= c!146766 c!146767)))

(declare-fun b!1583963 () Bool)

(declare-fun e!884217 () List!37093)

(declare-fun call!72533 () List!37093)

(assert (=> b!1583963 (= e!884217 call!72533)))

(declare-fun b!1583964 () Bool)

(declare-fun c!146764 () Bool)

(assert (=> b!1583964 (= c!146764 (and (is-Cons!37089 l!1251) (bvsgt (_1!12988 (h!38633 l!1251)) newKey!123)))))

(declare-fun e!884216 () List!37093)

(assert (=> b!1583964 (= e!884216 e!884217)))

(declare-fun b!1583965 () Bool)

(assert (=> b!1583965 (= e!884217 call!72533)))

(declare-fun b!1583966 () Bool)

(declare-fun res!1082015 () Bool)

(declare-fun e!884218 () Bool)

(assert (=> b!1583966 (=> (not res!1082015) (not e!884218))))

(declare-fun lt!677156 () List!37093)

(assert (=> b!1583966 (= res!1082015 (containsKey!989 lt!677156 newKey!123))))

(declare-fun bm!72529 () Bool)

(declare-fun call!72531 () List!37093)

(assert (=> bm!72529 (= call!72531 call!72532)))

(declare-fun b!1583968 () Bool)

(declare-fun contains!10540 (List!37093 tuple2!25956) Bool)

(assert (=> b!1583968 (= e!884218 (contains!10540 lt!677156 (tuple2!25957 newKey!123 newValue!123)))))

(declare-fun b!1583969 () Bool)

(assert (=> b!1583969 (= e!884216 call!72531)))

(declare-fun b!1583970 () Bool)

(assert (=> b!1583970 (= e!884215 (insertStrictlySorted!622 (t!52014 l!1251) newKey!123 newValue!123))))

(declare-fun b!1583971 () Bool)

(declare-fun e!884214 () List!37093)

(assert (=> b!1583971 (= e!884214 e!884216)))

(declare-fun c!146765 () Bool)

(assert (=> b!1583971 (= c!146765 (and (is-Cons!37089 l!1251) (= (_1!12988 (h!38633 l!1251)) newKey!123)))))

(declare-fun bm!72530 () Bool)

(assert (=> bm!72530 (= call!72533 call!72531)))

(declare-fun b!1583972 () Bool)

(assert (=> b!1583972 (= e!884214 call!72532)))

(declare-fun d!167291 () Bool)

(assert (=> d!167291 e!884218))

(declare-fun res!1082016 () Bool)

(assert (=> d!167291 (=> (not res!1082016) (not e!884218))))

(assert (=> d!167291 (= res!1082016 (isStrictlySorted!1155 lt!677156))))

(assert (=> d!167291 (= lt!677156 e!884214)))

(assert (=> d!167291 (= c!146767 (and (is-Cons!37089 l!1251) (bvslt (_1!12988 (h!38633 l!1251)) newKey!123)))))

(assert (=> d!167291 (isStrictlySorted!1155 l!1251)))

(assert (=> d!167291 (= (insertStrictlySorted!622 l!1251 newKey!123 newValue!123) lt!677156)))

(declare-fun b!1583967 () Bool)

(assert (=> b!1583967 (= e!884215 (ite c!146765 (t!52014 l!1251) (ite c!146764 (Cons!37089 (h!38633 l!1251) (t!52014 l!1251)) Nil!37090)))))

(assert (= (and d!167291 c!146767) b!1583972))

(assert (= (and d!167291 (not c!146767)) b!1583971))

(assert (= (and b!1583971 c!146765) b!1583969))

(assert (= (and b!1583971 (not c!146765)) b!1583964))

(assert (= (and b!1583964 c!146764) b!1583963))

(assert (= (and b!1583964 (not c!146764)) b!1583965))

(assert (= (or b!1583963 b!1583965) bm!72530))

(assert (= (or b!1583969 bm!72530) bm!72529))

(assert (= (or b!1583972 bm!72529) bm!72528))

(assert (= (and bm!72528 c!146766) b!1583970))

(assert (= (and bm!72528 (not c!146766)) b!1583967))

(assert (= (and d!167291 res!1082016) b!1583966))

(assert (= (and b!1583966 res!1082015) b!1583968))

(declare-fun m!1453511 () Bool)

(assert (=> b!1583968 m!1453511))

(declare-fun m!1453513 () Bool)

(assert (=> d!167291 m!1453513))

(assert (=> d!167291 m!1453477))

(declare-fun m!1453515 () Bool)

(assert (=> bm!72528 m!1453515))

(declare-fun m!1453517 () Bool)

(assert (=> b!1583970 m!1453517))

(declare-fun m!1453519 () Bool)

(assert (=> b!1583966 m!1453519))

(assert (=> b!1583845 d!167291))

(declare-fun d!167297 () Bool)

(declare-fun res!1082029 () Bool)

(declare-fun e!884243 () Bool)

(assert (=> d!167297 (=> res!1082029 e!884243)))

(assert (=> d!167297 (= res!1082029 (and (is-Cons!37089 l!1251) (= (_1!12988 (h!38633 l!1251)) otherKey!56)))))

(assert (=> d!167297 (= (containsKey!989 l!1251 otherKey!56) e!884243)))

(declare-fun b!1584011 () Bool)

(declare-fun e!884244 () Bool)

(assert (=> b!1584011 (= e!884243 e!884244)))

(declare-fun res!1082030 () Bool)

(assert (=> b!1584011 (=> (not res!1082030) (not e!884244))))

(assert (=> b!1584011 (= res!1082030 (and (or (not (is-Cons!37089 l!1251)) (bvsle (_1!12988 (h!38633 l!1251)) otherKey!56)) (is-Cons!37089 l!1251) (bvslt (_1!12988 (h!38633 l!1251)) otherKey!56)))))

(declare-fun b!1584012 () Bool)

(assert (=> b!1584012 (= e!884244 (containsKey!989 (t!52014 l!1251) otherKey!56))))

(assert (= (and d!167297 (not res!1082029)) b!1584011))

(assert (= (and b!1584011 res!1082030) b!1584012))

(declare-fun m!1453545 () Bool)

(assert (=> b!1584012 m!1453545))

(assert (=> b!1583843 d!167297))

(declare-fun b!1584017 () Bool)

(declare-fun e!884247 () Bool)

(declare-fun tp!115066 () Bool)

(assert (=> b!1584017 (= e!884247 (and tp_is_empty!39433 tp!115066))))

(assert (=> b!1583846 (= tp!115051 e!884247)))

(assert (= (and b!1583846 (is-Cons!37089 (t!52014 l!1251))) b!1584017))

(push 1)

