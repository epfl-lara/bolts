; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!88742 () Bool)

(assert start!88742)

(declare-fun b!1018899 () Bool)

(declare-fun e!573411 () Bool)

(declare-datatypes ((B!1676 0))(
  ( (B!1677 (val!11922 Int)) )
))
(declare-datatypes ((tuple2!15480 0))(
  ( (tuple2!15481 (_1!7750 (_ BitVec 64)) (_2!7750 B!1676)) )
))
(declare-datatypes ((List!21724 0))(
  ( (Nil!21721) (Cons!21720 (h!22918 tuple2!15480) (t!30736 List!21724)) )
))
(declare-fun l!996 () List!21724)

(declare-fun key!261 () (_ BitVec 64))

(declare-fun containsKey!536 (List!21724 (_ BitVec 64)) Bool)

(assert (=> b!1018899 (= e!573411 (not (containsKey!536 (t!30736 l!996) key!261)))))

(declare-fun b!1018900 () Bool)

(declare-fun res!683236 () Bool)

(assert (=> b!1018900 (=> (not res!683236) (not e!573411))))

(declare-fun isStrictlySorted!671 (List!21724) Bool)

(assert (=> b!1018900 (= res!683236 (isStrictlySorted!671 (t!30736 l!996)))))

(declare-fun res!683235 () Bool)

(declare-fun e!573412 () Bool)

(assert (=> start!88742 (=> (not res!683235) (not e!573412))))

(assert (=> start!88742 (= res!683235 (isStrictlySorted!671 l!996))))

(assert (=> start!88742 e!573412))

(declare-fun e!573410 () Bool)

(assert (=> start!88742 e!573410))

(assert (=> start!88742 true))

(declare-fun tp_is_empty!23743 () Bool)

(assert (=> start!88742 tp_is_empty!23743))

(declare-fun b!1018901 () Bool)

(assert (=> b!1018901 (= e!573412 e!573411)))

(declare-fun res!683237 () Bool)

(assert (=> b!1018901 (=> (not res!683237) (not e!573411))))

(assert (=> b!1018901 (= res!683237 (and (is-Cons!21720 l!996) (bvslt (_1!7750 (h!22918 l!996)) key!261)))))

(declare-fun value!172 () B!1676)

(declare-fun lt!449592 () List!21724)

(declare-fun insertStrictlySorted!353 (List!21724 (_ BitVec 64) B!1676) List!21724)

(assert (=> b!1018901 (= lt!449592 (insertStrictlySorted!353 l!996 key!261 value!172))))

(declare-fun b!1018902 () Bool)

(declare-fun tp!71114 () Bool)

(assert (=> b!1018902 (= e!573410 (and tp_is_empty!23743 tp!71114))))

(declare-fun b!1018903 () Bool)

(declare-fun res!683238 () Bool)

(assert (=> b!1018903 (=> (not res!683238) (not e!573412))))

(assert (=> b!1018903 (= res!683238 (containsKey!536 l!996 key!261))))

(assert (= (and start!88742 res!683235) b!1018903))

(assert (= (and b!1018903 res!683238) b!1018901))

(assert (= (and b!1018901 res!683237) b!1018900))

(assert (= (and b!1018900 res!683236) b!1018899))

(assert (= (and start!88742 (is-Cons!21720 l!996)) b!1018902))

(declare-fun m!939653 () Bool)

(assert (=> b!1018901 m!939653))

(declare-fun m!939655 () Bool)

(assert (=> b!1018900 m!939655))

(declare-fun m!939657 () Bool)

(assert (=> start!88742 m!939657))

(declare-fun m!939659 () Bool)

(assert (=> b!1018903 m!939659))

(declare-fun m!939661 () Bool)

(assert (=> b!1018899 m!939661))

(push 1)

(assert (not b!1018900))

(assert (not b!1018901))

(assert (not b!1018899))

(assert tp_is_empty!23743)

(assert (not b!1018902))

(assert (not b!1018903))

(assert (not start!88742))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!121945 () Bool)

(declare-fun res!683275 () Bool)

(declare-fun e!573443 () Bool)

(assert (=> d!121945 (=> res!683275 e!573443)))

(assert (=> d!121945 (= res!683275 (or (is-Nil!21721 l!996) (is-Nil!21721 (t!30736 l!996))))))

(assert (=> d!121945 (= (isStrictlySorted!671 l!996) e!573443)))

(declare-fun b!1018946 () Bool)

(declare-fun e!573444 () Bool)

(assert (=> b!1018946 (= e!573443 e!573444)))

(declare-fun res!683276 () Bool)

(assert (=> b!1018946 (=> (not res!683276) (not e!573444))))

(assert (=> b!1018946 (= res!683276 (bvslt (_1!7750 (h!22918 l!996)) (_1!7750 (h!22918 (t!30736 l!996)))))))

(declare-fun b!1018947 () Bool)

(assert (=> b!1018947 (= e!573444 (isStrictlySorted!671 (t!30736 l!996)))))

(assert (= (and d!121945 (not res!683275)) b!1018946))

(assert (= (and b!1018946 res!683276) b!1018947))

(assert (=> b!1018947 m!939655))

(assert (=> start!88742 d!121945))

(declare-fun b!1019014 () Bool)

(declare-fun c!103213 () Bool)

(assert (=> b!1019014 (= c!103213 (and (is-Cons!21720 l!996) (bvsgt (_1!7750 (h!22918 l!996)) key!261)))))

(declare-fun e!573485 () List!21724)

(declare-fun e!573484 () List!21724)

(assert (=> b!1019014 (= e!573485 e!573484)))

(declare-fun b!1019015 () Bool)

(declare-fun call!43044 () List!21724)

(assert (=> b!1019015 (= e!573484 call!43044)))

(declare-fun b!1019016 () Bool)

(assert (=> b!1019016 (= e!573484 call!43044)))

(declare-fun e!573482 () Bool)

(declare-fun b!1019017 () Bool)

(declare-fun lt!449605 () List!21724)

(declare-fun contains!5915 (List!21724 tuple2!15480) Bool)

(assert (=> b!1019017 (= e!573482 (contains!5915 lt!449605 (tuple2!15481 key!261 value!172)))))

(declare-fun e!573481 () List!21724)

(declare-fun b!1019018 () Bool)

(assert (=> b!1019018 (= e!573481 (insertStrictlySorted!353 (t!30736 l!996) key!261 value!172))))

(declare-fun bm!43040 () Bool)

(declare-fun call!43045 () List!21724)

(assert (=> bm!43040 (= call!43044 call!43045)))

(declare-fun d!121951 () Bool)

(assert (=> d!121951 e!573482))

(declare-fun res!683295 () Bool)

(assert (=> d!121951 (=> (not res!683295) (not e!573482))))

(assert (=> d!121951 (= res!683295 (isStrictlySorted!671 lt!449605))))

(declare-fun e!573483 () List!21724)

(assert (=> d!121951 (= lt!449605 e!573483)))

(declare-fun c!103211 () Bool)

(assert (=> d!121951 (= c!103211 (and (is-Cons!21720 l!996) (bvslt (_1!7750 (h!22918 l!996)) key!261)))))

(assert (=> d!121951 (isStrictlySorted!671 l!996)))

(assert (=> d!121951 (= (insertStrictlySorted!353 l!996 key!261 value!172) lt!449605)))

(declare-fun bm!43041 () Bool)

(declare-fun call!43043 () List!21724)

(declare-fun $colon$colon!587 (List!21724 tuple2!15480) List!21724)

(assert (=> bm!43041 (= call!43043 ($colon$colon!587 e!573481 (ite c!103211 (h!22918 l!996) (tuple2!15481 key!261 value!172))))))

(declare-fun c!103214 () Bool)

(assert (=> bm!43041 (= c!103214 c!103211)))

(declare-fun b!1019019 () Bool)

(assert (=> b!1019019 (= e!573485 call!43045)))

(declare-fun bm!43042 () Bool)

(assert (=> bm!43042 (= call!43045 call!43043)))

(declare-fun b!1019020 () Bool)

(declare-fun c!103212 () Bool)

(assert (=> b!1019020 (= e!573481 (ite c!103212 (t!30736 l!996) (ite c!103213 (Cons!21720 (h!22918 l!996) (t!30736 l!996)) Nil!21721)))))

(declare-fun b!1019021 () Bool)

(assert (=> b!1019021 (= e!573483 e!573485)))

(assert (=> b!1019021 (= c!103212 (and (is-Cons!21720 l!996) (= (_1!7750 (h!22918 l!996)) key!261)))))

(declare-fun b!1019022 () Bool)

(declare-fun res!683296 () Bool)

(assert (=> b!1019022 (=> (not res!683296) (not e!573482))))

(assert (=> b!1019022 (= res!683296 (containsKey!536 lt!449605 key!261))))

(declare-fun b!1019023 () Bool)

(assert (=> b!1019023 (= e!573483 call!43043)))

(assert (= (and d!121951 c!103211) b!1019023))

(assert (= (and d!121951 (not c!103211)) b!1019021))

(assert (= (and b!1019021 c!103212) b!1019019))

(assert (= (and b!1019021 (not c!103212)) b!1019014))

(assert (= (and b!1019014 c!103213) b!1019015))

(assert (= (and b!1019014 (not c!103213)) b!1019016))

(assert (= (or b!1019015 b!1019016) bm!43040))

(assert (= (or b!1019019 bm!43040) bm!43042))

(assert (= (or b!1019023 bm!43042) bm!43041))

(assert (= (and bm!43041 c!103214) b!1019018))

(assert (= (and bm!43041 (not c!103214)) b!1019020))

(assert (= (and d!121951 res!683295) b!1019022))

(assert (= (and b!1019022 res!683296) b!1019017))

(declare-fun m!939685 () Bool)

(assert (=> b!1019018 m!939685))

(declare-fun m!939687 () Bool)

(assert (=> d!121951 m!939687))

(assert (=> d!121951 m!939657))

(declare-fun m!939689 () Bool)

(assert (=> b!1019022 m!939689))

(declare-fun m!939691 () Bool)

(assert (=> bm!43041 m!939691))

(declare-fun m!939693 () Bool)

(assert (=> b!1019017 m!939693))

(assert (=> b!1018901 d!121951))

(declare-fun d!121957 () Bool)

(declare-fun res!683311 () Bool)

(declare-fun e!573509 () Bool)

(assert (=> d!121957 (=> res!683311 e!573509)))

(assert (=> d!121957 (= res!683311 (and (is-Cons!21720 l!996) (= (_1!7750 (h!22918 l!996)) key!261)))))

(assert (=> d!121957 (= (containsKey!536 l!996 key!261) e!573509)))

(declare-fun b!1019059 () Bool)

(declare-fun e!573510 () Bool)

(assert (=> b!1019059 (= e!573509 e!573510)))

(declare-fun res!683312 () Bool)

(assert (=> b!1019059 (=> (not res!683312) (not e!573510))))

(assert (=> b!1019059 (= res!683312 (and (or (not (is-Cons!21720 l!996)) (bvsle (_1!7750 (h!22918 l!996)) key!261)) (is-Cons!21720 l!996) (bvslt (_1!7750 (h!22918 l!996)) key!261)))))

(declare-fun b!1019060 () Bool)

(assert (=> b!1019060 (= e!573510 (containsKey!536 (t!30736 l!996) key!261))))

(assert (= (and d!121957 (not res!683311)) b!1019059))

(assert (= (and b!1019059 res!683312) b!1019060))

(assert (=> b!1019060 m!939661))

(assert (=> b!1018903 d!121957))

(declare-fun d!121963 () Bool)

(declare-fun res!683313 () Bool)

(declare-fun e!573511 () Bool)

(assert (=> d!121963 (=> res!683313 e!573511)))

(assert (=> d!121963 (= res!683313 (and (is-Cons!21720 (t!30736 l!996)) (= (_1!7750 (h!22918 (t!30736 l!996))) key!261)))))

(assert (=> d!121963 (= (containsKey!536 (t!30736 l!996) key!261) e!573511)))

(declare-fun b!1019061 () Bool)

(declare-fun e!573512 () Bool)

(assert (=> b!1019061 (= e!573511 e!573512)))

(declare-fun res!683314 () Bool)

(assert (=> b!1019061 (=> (not res!683314) (not e!573512))))

(assert (=> b!1019061 (= res!683314 (and (or (not (is-Cons!21720 (t!30736 l!996))) (bvsle (_1!7750 (h!22918 (t!30736 l!996))) key!261)) (is-Cons!21720 (t!30736 l!996)) (bvslt (_1!7750 (h!22918 (t!30736 l!996))) key!261)))))

(declare-fun b!1019062 () Bool)

(assert (=> b!1019062 (= e!573512 (containsKey!536 (t!30736 (t!30736 l!996)) key!261))))

(assert (= (and d!121963 (not res!683313)) b!1019061))

(assert (= (and b!1019061 res!683314) b!1019062))

(declare-fun m!939717 () Bool)

(assert (=> b!1019062 m!939717))

(assert (=> b!1018899 d!121963))

(declare-fun d!121965 () Bool)

(declare-fun res!683317 () Bool)

(declare-fun e!573515 () Bool)

(assert (=> d!121965 (=> res!683317 e!573515)))

(assert (=> d!121965 (= res!683317 (or (is-Nil!21721 (t!30736 l!996)) (is-Nil!21721 (t!30736 (t!30736 l!996)))))))

(assert (=> d!121965 (= (isStrictlySorted!671 (t!30736 l!996)) e!573515)))

(declare-fun b!1019065 () Bool)

(declare-fun e!573516 () Bool)

(assert (=> b!1019065 (= e!573515 e!573516)))

(declare-fun res!683318 () Bool)

(assert (=> b!1019065 (=> (not res!683318) (not e!573516))))

(assert (=> b!1019065 (= res!683318 (bvslt (_1!7750 (h!22918 (t!30736 l!996))) (_1!7750 (h!22918 (t!30736 (t!30736 l!996))))))))

(declare-fun b!1019066 () Bool)

(assert (=> b!1019066 (= e!573516 (isStrictlySorted!671 (t!30736 (t!30736 l!996))))))

(assert (= (and d!121965 (not res!683317)) b!1019065))

(assert (= (and b!1019065 res!683318) b!1019066))

(declare-fun m!939719 () Bool)

(assert (=> b!1019066 m!939719))

(assert (=> b!1018900 d!121965))

(declare-fun b!1019071 () Bool)

(declare-fun e!573519 () Bool)

(declare-fun tp!71126 () Bool)

(assert (=> b!1019071 (= e!573519 (and tp_is_empty!23743 tp!71126))))

(assert (=> b!1018902 (= tp!71114 e!573519)))

(assert (= (and b!1018902 (is-Cons!21720 (t!30736 l!996))) b!1019071))

(push 1)

(assert (not b!1019018))

(assert (not b!1019066))

(assert (not d!121951))

(assert (not b!1019022))

(assert (not b!1018947))

(assert (not b!1019071))

(assert (not b!1019060))

(assert tp_is_empty!23743)

(assert (not bm!43041))

(assert (not b!1019017))

(assert (not b!1019062))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

