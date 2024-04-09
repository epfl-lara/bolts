; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88658 () Bool)

(assert start!88658)

(declare-fun res!682970 () Bool)

(declare-fun e!573046 () Bool)

(assert (=> start!88658 (=> (not res!682970) (not e!573046))))

(declare-datatypes ((B!1658 0))(
  ( (B!1659 (val!11913 Int)) )
))
(declare-datatypes ((tuple2!15462 0))(
  ( (tuple2!15463 (_1!7741 (_ BitVec 64)) (_2!7741 B!1658)) )
))
(declare-datatypes ((List!21715 0))(
  ( (Nil!21712) (Cons!21711 (h!22909 tuple2!15462) (t!30724 List!21715)) )
))
(declare-fun l!996 () List!21715)

(declare-fun isStrictlySorted!662 (List!21715) Bool)

(assert (=> start!88658 (= res!682970 (isStrictlySorted!662 l!996))))

(assert (=> start!88658 e!573046))

(declare-fun e!573045 () Bool)

(assert (=> start!88658 e!573045))

(assert (=> start!88658 true))

(declare-fun tp_is_empty!23725 () Bool)

(assert (=> start!88658 tp_is_empty!23725))

(declare-fun b!1018373 () Bool)

(declare-fun res!682971 () Bool)

(assert (=> b!1018373 (=> (not res!682971) (not e!573046))))

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!527 (List!21715 (_ BitVec 64)) Bool)

(assert (=> b!1018373 (= res!682971 (containsKey!527 l!996 key!261))))

(declare-fun value!172 () B!1658)

(declare-fun b!1018374 () Bool)

(declare-fun lt!449535 () List!21715)

(assert (=> b!1018374 (= e!573046 (and (is-Cons!21711 l!996) (= (_1!7741 (h!22909 l!996)) key!261) (not (= lt!449535 (Cons!21711 (tuple2!15463 key!261 value!172) (t!30724 l!996))))))))

(declare-fun insertStrictlySorted!347 (List!21715 (_ BitVec 64) B!1658) List!21715)

(assert (=> b!1018374 (= lt!449535 (insertStrictlySorted!347 l!996 key!261 value!172))))

(declare-fun b!1018375 () Bool)

(declare-fun tp!71057 () Bool)

(assert (=> b!1018375 (= e!573045 (and tp_is_empty!23725 tp!71057))))

(assert (= (and start!88658 res!682970) b!1018373))

(assert (= (and b!1018373 res!682971) b!1018374))

(assert (= (and start!88658 (is-Cons!21711 l!996)) b!1018375))

(declare-fun m!939419 () Bool)

(assert (=> start!88658 m!939419))

(declare-fun m!939421 () Bool)

(assert (=> b!1018373 m!939421))

(declare-fun m!939423 () Bool)

(assert (=> b!1018374 m!939423))

(push 1)

(assert (not b!1018375))

(assert (not b!1018373))

(assert (not b!1018374))

(assert (not start!88658))

(assert tp_is_empty!23725)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bm!42973 () Bool)

(declare-fun call!42978 () List!21715)

(declare-fun call!42976 () List!21715)

(assert (=> bm!42973 (= call!42978 call!42976)))

(declare-fun b!1018458 () Bool)

(declare-fun e!573100 () List!21715)

(assert (=> b!1018458 (= e!573100 call!42978)))

(declare-fun b!1018459 () Bool)

(declare-fun res!683005 () Bool)

(declare-fun e!573099 () Bool)

(assert (=> b!1018459 (=> (not res!683005) (not e!573099))))

(declare-fun lt!449548 () List!21715)

(assert (=> b!1018459 (= res!683005 (containsKey!527 lt!449548 key!261))))

(declare-fun b!1018461 () Bool)

(declare-fun e!573097 () List!21715)

(assert (=> b!1018461 (= e!573097 call!42976)))

(declare-fun c!103116 () Bool)

(declare-fun b!1018462 () Bool)

(declare-fun c!103119 () Bool)

(declare-fun e!573101 () List!21715)

(assert (=> b!1018462 (= e!573101 (ite c!103119 (t!30724 l!996) (ite c!103116 (Cons!21711 (h!22909 l!996) (t!30724 l!996)) Nil!21712)))))

(declare-fun b!1018463 () Bool)

(assert (=> b!1018463 (= e!573101 (insertStrictlySorted!347 (t!30724 l!996) key!261 value!172))))

(declare-fun b!1018464 () Bool)

(declare-fun e!573098 () List!21715)

(assert (=> b!1018464 (= e!573098 e!573097)))

(assert (=> b!1018464 (= c!103119 (and (is-Cons!21711 l!996) (= (_1!7741 (h!22909 l!996)) key!261)))))

(declare-fun bm!42974 () Bool)

(declare-fun call!42977 () List!21715)

(assert (=> bm!42974 (= call!42976 call!42977)))

(declare-fun bm!42975 () Bool)

(declare-fun c!103118 () Bool)

(declare-fun $colon$colon!581 (List!21715 tuple2!15462) List!21715)

(assert (=> bm!42975 (= call!42977 ($colon$colon!581 e!573101 (ite c!103118 (h!22909 l!996) (tuple2!15463 key!261 value!172))))))

(declare-fun c!103117 () Bool)

(assert (=> bm!42975 (= c!103117 c!103118)))

(declare-fun b!1018465 () Bool)

(assert (=> b!1018465 (= e!573098 call!42977)))

(declare-fun b!1018460 () Bool)

(assert (=> b!1018460 (= c!103116 (and (is-Cons!21711 l!996) (bvsgt (_1!7741 (h!22909 l!996)) key!261)))))

(assert (=> b!1018460 (= e!573097 e!573100)))

(declare-fun d!121837 () Bool)

(assert (=> d!121837 e!573099))

(declare-fun res!683004 () Bool)

(assert (=> d!121837 (=> (not res!683004) (not e!573099))))

(assert (=> d!121837 (= res!683004 (isStrictlySorted!662 lt!449548))))

(assert (=> d!121837 (= lt!449548 e!573098)))

(assert (=> d!121837 (= c!103118 (and (is-Cons!21711 l!996) (bvslt (_1!7741 (h!22909 l!996)) key!261)))))

(assert (=> d!121837 (isStrictlySorted!662 l!996)))

(assert (=> d!121837 (= (insertStrictlySorted!347 l!996 key!261 value!172) lt!449548)))

(declare-fun b!1018466 () Bool)

(declare-fun contains!5910 (List!21715 tuple2!15462) Bool)

(assert (=> b!1018466 (= e!573099 (contains!5910 lt!449548 (tuple2!15463 key!261 value!172)))))

(declare-fun b!1018467 () Bool)

(assert (=> b!1018467 (= e!573100 call!42978)))

(assert (= (and d!121837 c!103118) b!1018465))

(assert (= (and d!121837 (not c!103118)) b!1018464))

(assert (= (and b!1018464 c!103119) b!1018461))

(assert (= (and b!1018464 (not c!103119)) b!1018460))

(assert (= (and b!1018460 c!103116) b!1018467))

(assert (= (and b!1018460 (not c!103116)) b!1018458))

(assert (= (or b!1018467 b!1018458) bm!42973))

(assert (= (or b!1018461 bm!42973) bm!42974))

(assert (= (or b!1018465 bm!42974) bm!42975))

(assert (= (and bm!42975 c!103117) b!1018463))

(assert (= (and bm!42975 (not c!103117)) b!1018462))

(assert (= (and d!121837 res!683004) b!1018459))

(assert (= (and b!1018459 res!683005) b!1018466))

(declare-fun m!939441 () Bool)

(assert (=> b!1018466 m!939441))

(declare-fun m!939443 () Bool)

(assert (=> b!1018463 m!939443))

(declare-fun m!939445 () Bool)

(assert (=> bm!42975 m!939445))

(declare-fun m!939447 () Bool)

(assert (=> b!1018459 m!939447))

(declare-fun m!939449 () Bool)

(assert (=> d!121837 m!939449))

(assert (=> d!121837 m!939419))

(assert (=> b!1018374 d!121837))

(declare-fun d!121845 () Bool)

(declare-fun res!683020 () Bool)

(declare-fun e!573119 () Bool)

(assert (=> d!121845 (=> res!683020 e!573119)))

(assert (=> d!121845 (= res!683020 (or (is-Nil!21712 l!996) (is-Nil!21712 (t!30724 l!996))))))

(assert (=> d!121845 (= (isStrictlySorted!662 l!996) e!573119)))

(declare-fun b!1018494 () Bool)

(declare-fun e!573120 () Bool)

(assert (=> b!1018494 (= e!573119 e!573120)))

(declare-fun res!683021 () Bool)

(assert (=> b!1018494 (=> (not res!683021) (not e!573120))))

(assert (=> b!1018494 (= res!683021 (bvslt (_1!7741 (h!22909 l!996)) (_1!7741 (h!22909 (t!30724 l!996)))))))

(declare-fun b!1018495 () Bool)

(assert (=> b!1018495 (= e!573120 (isStrictlySorted!662 (t!30724 l!996)))))

(assert (= (and d!121845 (not res!683020)) b!1018494))

(assert (= (and b!1018494 res!683021) b!1018495))

(declare-fun m!939461 () Bool)

(assert (=> b!1018495 m!939461))

(assert (=> start!88658 d!121845))

(declare-fun d!121849 () Bool)

(declare-fun res!683034 () Bool)

(declare-fun e!573138 () Bool)

(assert (=> d!121849 (=> res!683034 e!573138)))

(assert (=> d!121849 (= res!683034 (and (is-Cons!21711 l!996) (= (_1!7741 (h!22909 l!996)) key!261)))))

(assert (=> d!121849 (= (containsKey!527 l!996 key!261) e!573138)))

(declare-fun b!1018520 () Bool)

(declare-fun e!573139 () Bool)

(assert (=> b!1018520 (= e!573138 e!573139)))

(declare-fun res!683035 () Bool)

(assert (=> b!1018520 (=> (not res!683035) (not e!573139))))

(assert (=> b!1018520 (= res!683035 (and (or (not (is-Cons!21711 l!996)) (bvsle (_1!7741 (h!22909 l!996)) key!261)) (is-Cons!21711 l!996) (bvslt (_1!7741 (h!22909 l!996)) key!261)))))

(declare-fun b!1018521 () Bool)

(assert (=> b!1018521 (= e!573139 (containsKey!527 (t!30724 l!996) key!261))))

(assert (= (and d!121849 (not res!683034)) b!1018520))

(assert (= (and b!1018520 res!683035) b!1018521))

(declare-fun m!939475 () Bool)

(assert (=> b!1018521 m!939475))

(assert (=> b!1018373 d!121849))

(declare-fun b!1018529 () Bool)

(declare-fun e!573145 () Bool)

(declare-fun tp!71069 () Bool)

(assert (=> b!1018529 (= e!573145 (and tp_is_empty!23725 tp!71069))))

(assert (=> b!1018375 (= tp!71057 e!573145)))

(assert (= (and b!1018375 (is-Cons!21711 (t!30724 l!996))) b!1018529))

(push 1)

(assert (not b!1018529))

(assert (not bm!42975))

(assert tp_is_empty!23725)

(assert (not b!1018466))

(assert (not b!1018459))

(assert (not b!1018463))

(assert (not b!1018521))

(assert (not d!121837))

(assert (not b!1018495))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121853 () Bool)

(declare-fun res!683038 () Bool)

(declare-fun e!573149 () Bool)

(assert (=> d!121853 (=> res!683038 e!573149)))

(assert (=> d!121853 (= res!683038 (and (is-Cons!21711 (t!30724 l!996)) (= (_1!7741 (h!22909 (t!30724 l!996))) key!261)))))

(assert (=> d!121853 (= (containsKey!527 (t!30724 l!996) key!261) e!573149)))

(declare-fun b!1018535 () Bool)

(declare-fun e!573150 () Bool)

(assert (=> b!1018535 (= e!573149 e!573150)))

(declare-fun res!683039 () Bool)

(assert (=> b!1018535 (=> (not res!683039) (not e!573150))))

(assert (=> b!1018535 (= res!683039 (and (or (not (is-Cons!21711 (t!30724 l!996))) (bvsle (_1!7741 (h!22909 (t!30724 l!996))) key!261)) (is-Cons!21711 (t!30724 l!996)) (bvslt (_1!7741 (h!22909 (t!30724 l!996))) key!261)))))

(declare-fun b!1018536 () Bool)

(assert (=> b!1018536 (= e!573150 (containsKey!527 (t!30724 (t!30724 l!996)) key!261))))

(assert (= (and d!121853 (not res!683038)) b!1018535))

(assert (= (and b!1018535 res!683039) b!1018536))

(declare-fun m!939479 () Bool)

(assert (=> b!1018536 m!939479))

(assert (=> b!1018521 d!121853))

(declare-fun d!121855 () Bool)

(assert (=> d!121855 (= ($colon$colon!581 e!573101 (ite c!103118 (h!22909 l!996) (tuple2!15463 key!261 value!172))) (Cons!21711 (ite c!103118 (h!22909 l!996) (tuple2!15463 key!261 value!172)) e!573101))))

(assert (=> bm!42975 d!121855))

(declare-fun d!121857 () Bool)

(declare-fun res!683040 () Bool)

(declare-fun e!573151 () Bool)

(assert (=> d!121857 (=> res!683040 e!573151)))

(assert (=> d!121857 (= res!683040 (or (is-Nil!21712 (t!30724 l!996)) (is-Nil!21712 (t!30724 (t!30724 l!996)))))))

(assert (=> d!121857 (= (isStrictlySorted!662 (t!30724 l!996)) e!573151)))

(declare-fun b!1018537 () Bool)

(declare-fun e!573152 () Bool)

(assert (=> b!1018537 (= e!573151 e!573152)))

(declare-fun res!683041 () Bool)

(assert (=> b!1018537 (=> (not res!683041) (not e!573152))))

(assert (=> b!1018537 (= res!683041 (bvslt (_1!7741 (h!22909 (t!30724 l!996))) (_1!7741 (h!22909 (t!30724 (t!30724 l!996))))))))

(declare-fun b!1018538 () Bool)

(assert (=> b!1018538 (= e!573152 (isStrictlySorted!662 (t!30724 (t!30724 l!996))))))

(assert (= (and d!121857 (not res!683040)) b!1018537))

(assert (= (and b!1018537 res!683041) b!1018538))

(declare-fun m!939481 () Bool)

(assert (=> b!1018538 m!939481))

(assert (=> b!1018495 d!121857))

(declare-fun d!121859 () Bool)

(declare-fun res!683042 () Bool)

(declare-fun e!573153 () Bool)

(assert (=> d!121859 (=> res!683042 e!573153)))

(assert (=> d!121859 (= res!683042 (or (is-Nil!21712 lt!449548) (is-Nil!21712 (t!30724 lt!449548))))))

(assert (=> d!121859 (= (isStrictlySorted!662 lt!449548) e!573153)))

(declare-fun b!1018539 () Bool)

(declare-fun e!573154 () Bool)

(assert (=> b!1018539 (= e!573153 e!573154)))

(declare-fun res!683043 () Bool)

(assert (=> b!1018539 (=> (not res!683043) (not e!573154))))

(assert (=> b!1018539 (= res!683043 (bvslt (_1!7741 (h!22909 lt!449548)) (_1!7741 (h!22909 (t!30724 lt!449548)))))))

(declare-fun b!1018540 () Bool)

(assert (=> b!1018540 (= e!573154 (isStrictlySorted!662 (t!30724 lt!449548)))))

(assert (= (and d!121859 (not res!683042)) b!1018539))

(assert (= (and b!1018539 res!683043) b!1018540))

(declare-fun m!939483 () Bool)

(assert (=> b!1018540 m!939483))

(assert (=> d!121837 d!121859))

(assert (=> d!121837 d!121845))

(declare-fun d!121861 () Bool)

(declare-fun res!683044 () Bool)

(declare-fun e!573155 () Bool)

(assert (=> d!121861 (=> res!683044 e!573155)))

(assert (=> d!121861 (= res!683044 (and (is-Cons!21711 lt!449548) (= (_1!7741 (h!22909 lt!449548)) key!261)))))

(assert (=> d!121861 (= (containsKey!527 lt!449548 key!261) e!573155)))

(declare-fun b!1018541 () Bool)

(declare-fun e!573156 () Bool)

(assert (=> b!1018541 (= e!573155 e!573156)))

(declare-fun res!683045 () Bool)

(assert (=> b!1018541 (=> (not res!683045) (not e!573156))))

(assert (=> b!1018541 (= res!683045 (and (or (not (is-Cons!21711 lt!449548)) (bvsle (_1!7741 (h!22909 lt!449548)) key!261)) (is-Cons!21711 lt!449548) (bvslt (_1!7741 (h!22909 lt!449548)) key!261)))))

(declare-fun b!1018542 () Bool)

(assert (=> b!1018542 (= e!573156 (containsKey!527 (t!30724 lt!449548) key!261))))

(assert (= (and d!121861 (not res!683044)) b!1018541))

(assert (= (and b!1018541 res!683045) b!1018542))

(declare-fun m!939485 () Bool)

(assert (=> b!1018542 m!939485))

(assert (=> b!1018459 d!121861))

(declare-fun bm!42986 () Bool)

(declare-fun call!42991 () List!21715)

(declare-fun call!42989 () List!21715)

(assert (=> bm!42986 (= call!42991 call!42989)))

(declare-fun b!1018543 () Bool)

(declare-fun e!573160 () List!21715)

(assert (=> b!1018543 (= e!573160 call!42991)))

(declare-fun b!1018544 () Bool)

(declare-fun res!683047 () Bool)

(declare-fun e!573159 () Bool)

(assert (=> b!1018544 (=> (not res!683047) (not e!573159))))

(declare-fun lt!449551 () List!21715)

(assert (=> b!1018544 (= res!683047 (containsKey!527 lt!449551 key!261))))

(declare-fun b!1018546 () Bool)

(declare-fun e!573157 () List!21715)

(assert (=> b!1018546 (= e!573157 call!42989)))

(declare-fun e!573161 () List!21715)

(declare-fun b!1018547 () Bool)

(declare-fun c!103133 () Bool)

(declare-fun c!103130 () Bool)

(assert (=> b!1018547 (= e!573161 (ite c!103133 (t!30724 (t!30724 l!996)) (ite c!103130 (Cons!21711 (h!22909 (t!30724 l!996)) (t!30724 (t!30724 l!996))) Nil!21712)))))

(declare-fun b!1018548 () Bool)

(assert (=> b!1018548 (= e!573161 (insertStrictlySorted!347 (t!30724 (t!30724 l!996)) key!261 value!172))))

(declare-fun b!1018549 () Bool)

(declare-fun e!573158 () List!21715)

(assert (=> b!1018549 (= e!573158 e!573157)))

(assert (=> b!1018549 (= c!103133 (and (is-Cons!21711 (t!30724 l!996)) (= (_1!7741 (h!22909 (t!30724 l!996))) key!261)))))

(declare-fun bm!42987 () Bool)

(declare-fun call!42990 () List!21715)

(assert (=> bm!42987 (= call!42989 call!42990)))

(declare-fun c!103132 () Bool)

(declare-fun bm!42988 () Bool)

(assert (=> bm!42988 (= call!42990 ($colon$colon!581 e!573161 (ite c!103132 (h!22909 (t!30724 l!996)) (tuple2!15463 key!261 value!172))))))

(declare-fun c!103131 () Bool)

(assert (=> bm!42988 (= c!103131 c!103132)))

(declare-fun b!1018550 () Bool)

(assert (=> b!1018550 (= e!573158 call!42990)))

(declare-fun b!1018545 () Bool)

(assert (=> b!1018545 (= c!103130 (and (is-Cons!21711 (t!30724 l!996)) (bvsgt (_1!7741 (h!22909 (t!30724 l!996))) key!261)))))

(assert (=> b!1018545 (= e!573157 e!573160)))

(declare-fun d!121863 () Bool)

(assert (=> d!121863 e!573159))

(declare-fun res!683046 () Bool)

(assert (=> d!121863 (=> (not res!683046) (not e!573159))))

(assert (=> d!121863 (= res!683046 (isStrictlySorted!662 lt!449551))))

(assert (=> d!121863 (= lt!449551 e!573158)))

(assert (=> d!121863 (= c!103132 (and (is-Cons!21711 (t!30724 l!996)) (bvslt (_1!7741 (h!22909 (t!30724 l!996))) key!261)))))

(assert (=> d!121863 (isStrictlySorted!662 (t!30724 l!996))))

(assert (=> d!121863 (= (insertStrictlySorted!347 (t!30724 l!996) key!261 value!172) lt!449551)))

(declare-fun b!1018551 () Bool)

(assert (=> b!1018551 (= e!573159 (contains!5910 lt!449551 (tuple2!15463 key!261 value!172)))))

(declare-fun b!1018552 () Bool)

(assert (=> b!1018552 (= e!573160 call!42991)))

(assert (= (and d!121863 c!103132) b!1018550))

(assert (= (and d!121863 (not c!103132)) b!1018549))

(assert (= (and b!1018549 c!103133) b!1018546))

(assert (= (and b!1018549 (not c!103133)) b!1018545))

(assert (= (and b!1018545 c!103130) b!1018552))

(assert (= (and b!1018545 (not c!103130)) b!1018543))

(assert (= (or b!1018552 b!1018543) bm!42986))

(assert (= (or b!1018546 bm!42986) bm!42987))

(assert (= (or b!1018550 bm!42987) bm!42988))

(assert (= (and bm!42988 c!103131) b!1018548))

(assert (= (and bm!42988 (not c!103131)) b!1018547))

(assert (= (and d!121863 res!683046) b!1018544))

(assert (= (and b!1018544 res!683047) b!1018551))

(declare-fun m!939487 () Bool)

(assert (=> b!1018551 m!939487))

(declare-fun m!939489 () Bool)

(assert (=> b!1018548 m!939489))

(declare-fun m!939491 () Bool)

(assert (=> bm!42988 m!939491))

(declare-fun m!939493 () Bool)

(assert (=> b!1018544 m!939493))

(declare-fun m!939495 () Bool)

(assert (=> d!121863 m!939495))

(assert (=> d!121863 m!939461))

(assert (=> b!1018463 d!121863))

(declare-fun d!121865 () Bool)

(declare-fun lt!449554 () Bool)

(declare-fun content!490 (List!21715) (Set tuple2!15462))

(assert (=> d!121865 (= lt!449554 (set.member (tuple2!15463 key!261 value!172) (content!490 lt!449548)))))

(declare-fun e!573167 () Bool)

(assert (=> d!121865 (= lt!449554 e!573167)))

(declare-fun res!683052 () Bool)

(assert (=> d!121865 (=> (not res!683052) (not e!573167))))

(assert (=> d!121865 (= res!683052 (is-Cons!21711 lt!449548))))

(assert (=> d!121865 (= (contains!5910 lt!449548 (tuple2!15463 key!261 value!172)) lt!449554)))

(declare-fun b!1018557 () Bool)

(declare-fun e!573166 () Bool)

(assert (=> b!1018557 (= e!573167 e!573166)))

(declare-fun res!683053 () Bool)

(assert (=> b!1018557 (=> res!683053 e!573166)))

(assert (=> b!1018557 (= res!683053 (= (h!22909 lt!449548) (tuple2!15463 key!261 value!172)))))

(declare-fun b!1018558 () Bool)

(assert (=> b!1018558 (= e!573166 (contains!5910 (t!30724 lt!449548) (tuple2!15463 key!261 value!172)))))

(assert (= (and d!121865 res!683052) b!1018557))

(assert (= (and b!1018557 (not res!683053)) b!1018558))

(declare-fun m!939497 () Bool)

(assert (=> d!121865 m!939497))

(declare-fun m!939499 () Bool)

(assert (=> d!121865 m!939499))

(declare-fun m!939501 () Bool)

(assert (=> b!1018558 m!939501))

(assert (=> b!1018466 d!121865))

(declare-fun b!1018559 () Bool)

(declare-fun e!573168 () Bool)

(declare-fun tp!71073 () Bool)

(assert (=> b!1018559 (= e!573168 (and tp_is_empty!23725 tp!71073))))

(assert (=> b!1018529 (= tp!71069 e!573168)))

(assert (= (and b!1018529 (is-Cons!21711 (t!30724 (t!30724 l!996)))) b!1018559))

(push 1)

(assert (not b!1018559))

(assert (not d!121865))

(assert (not bm!42988))

(assert (not b!1018548))

(assert (not b!1018536))

(assert (not b!1018551))

(assert tp_is_empty!23725)

(assert (not b!1018540))

(assert (not b!1018538))

(assert (not b!1018544))

(assert (not b!1018542))

(assert (not b!1018558))

(assert (not d!121863))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

