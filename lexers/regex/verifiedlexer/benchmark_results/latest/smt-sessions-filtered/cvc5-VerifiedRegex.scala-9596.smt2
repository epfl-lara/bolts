; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!504722 () Bool)

(assert start!504722)

(declare-fun b!4845992 () Bool)

(declare-fun res!2067169 () Bool)

(declare-fun e!3028859 () Bool)

(assert (=> b!4845992 (=> (not res!2067169) (not e!3028859))))

(declare-datatypes ((K!17267 0))(
  ( (K!17268 (val!22119 Int)) )
))
(declare-datatypes ((V!17513 0))(
  ( (V!17514 (val!22120 Int)) )
))
(declare-datatypes ((tuple2!59110 0))(
  ( (tuple2!59111 (_1!32849 K!17267) (_2!32849 V!17513)) )
))
(declare-datatypes ((List!55612 0))(
  ( (Nil!55488) (Cons!55488 (h!61925 tuple2!59110) (t!363108 List!55612)) )
))
(declare-datatypes ((tuple2!59112 0))(
  ( (tuple2!59113 (_1!32850 (_ BitVec 64)) (_2!32850 List!55612)) )
))
(declare-datatypes ((List!55613 0))(
  ( (Nil!55489) (Cons!55489 (h!61926 tuple2!59112) (t!363109 List!55613)) )
))
(declare-datatypes ((ListLongMap!6393 0))(
  ( (ListLongMap!6394 (toList!7825 List!55613)) )
))
(declare-fun lm!2837 () ListLongMap!6393)

(declare-fun key!6928 () K!17267)

(declare-fun containsKeyBiggerList!763 (List!55613 K!17267) Bool)

(assert (=> b!4845992 (= res!2067169 (containsKeyBiggerList!763 (toList!7825 lm!2837) key!6928))))

(declare-fun b!4845993 () Bool)

(declare-fun res!2067168 () Bool)

(assert (=> b!4845993 (=> (not res!2067168) (not e!3028859))))

(declare-datatypes ((Hashable!7465 0))(
  ( (HashableExt!7464 (__x!33740 Int)) )
))
(declare-fun hashF!1793 () Hashable!7465)

(declare-fun allKeysSameHashInMap!2781 (ListLongMap!6393 Hashable!7465) Bool)

(assert (=> b!4845993 (= res!2067168 (allKeysSameHashInMap!2781 lm!2837 hashF!1793))))

(declare-fun b!4845994 () Bool)

(declare-fun e!3028860 () Bool)

(declare-fun tp!1364415 () Bool)

(assert (=> b!4845994 (= e!3028860 tp!1364415)))

(declare-fun b!4845995 () Bool)

(declare-fun size!36641 (List!55613) Int)

(assert (=> b!4845995 (= e!3028859 (< (size!36641 (toList!7825 lm!2837)) 0))))

(declare-fun res!2067171 () Bool)

(assert (=> start!504722 (=> (not res!2067171) (not e!3028859))))

(declare-fun lambda!242267 () Int)

(declare-fun forall!12918 (List!55613 Int) Bool)

(assert (=> start!504722 (= res!2067171 (forall!12918 (toList!7825 lm!2837) lambda!242267))))

(assert (=> start!504722 e!3028859))

(declare-fun inv!71154 (ListLongMap!6393) Bool)

(assert (=> start!504722 (and (inv!71154 lm!2837) e!3028860)))

(assert (=> start!504722 true))

(declare-fun tp_is_empty!35105 () Bool)

(assert (=> start!504722 tp_is_empty!35105))

(declare-fun b!4845996 () Bool)

(declare-fun res!2067170 () Bool)

(assert (=> b!4845996 (=> (not res!2067170) (not e!3028859))))

(declare-fun containsKey!4651 (List!55612 K!17267) Bool)

(declare-fun head!10405 (List!55613) tuple2!59112)

(assert (=> b!4845996 (= res!2067170 (not (containsKey!4651 (_2!32850 (head!10405 (toList!7825 lm!2837))) key!6928)))))

(assert (= (and start!504722 res!2067171) b!4845993))

(assert (= (and b!4845993 res!2067168) b!4845992))

(assert (= (and b!4845992 res!2067169) b!4845996))

(assert (= (and b!4845996 res!2067170) b!4845995))

(assert (= start!504722 b!4845994))

(declare-fun m!5843956 () Bool)

(assert (=> b!4845993 m!5843956))

(declare-fun m!5843958 () Bool)

(assert (=> b!4845992 m!5843958))

(declare-fun m!5843960 () Bool)

(assert (=> b!4845996 m!5843960))

(declare-fun m!5843962 () Bool)

(assert (=> b!4845996 m!5843962))

(declare-fun m!5843964 () Bool)

(assert (=> b!4845995 m!5843964))

(declare-fun m!5843966 () Bool)

(assert (=> start!504722 m!5843966))

(declare-fun m!5843968 () Bool)

(assert (=> start!504722 m!5843968))

(push 1)

(assert tp_is_empty!35105)

(assert (not start!504722))

(assert (not b!4845995))

(assert (not b!4845996))

(assert (not b!4845994))

(assert (not b!4845993))

(assert (not b!4845992))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1172297 () Bool)

(declare-fun d!1554611 () Bool)

(assert (= bs!1172297 (and d!1554611 start!504722)))

(declare-fun lambda!242273 () Int)

(assert (=> bs!1172297 (not (= lambda!242273 lambda!242267))))

(assert (=> d!1554611 true))

(assert (=> d!1554611 (= (allKeysSameHashInMap!2781 lm!2837 hashF!1793) (forall!12918 (toList!7825 lm!2837) lambda!242273))))

(declare-fun bs!1172298 () Bool)

(assert (= bs!1172298 d!1554611))

(declare-fun m!5843984 () Bool)

(assert (=> bs!1172298 m!5843984))

(assert (=> b!4845993 d!1554611))

(declare-fun d!1554613 () Bool)

(declare-fun lt!1987932 () Int)

(assert (=> d!1554613 (>= lt!1987932 0)))

(declare-fun e!3028869 () Int)

(assert (=> d!1554613 (= lt!1987932 e!3028869)))

(declare-fun c!824975 () Bool)

(assert (=> d!1554613 (= c!824975 (is-Nil!55489 (toList!7825 lm!2837)))))

(assert (=> d!1554613 (= (size!36641 (toList!7825 lm!2837)) lt!1987932)))

(declare-fun b!4846018 () Bool)

(assert (=> b!4846018 (= e!3028869 0)))

(declare-fun b!4846019 () Bool)

(assert (=> b!4846019 (= e!3028869 (+ 1 (size!36641 (t!363109 (toList!7825 lm!2837)))))))

(assert (= (and d!1554613 c!824975) b!4846018))

(assert (= (and d!1554613 (not c!824975)) b!4846019))

(declare-fun m!5843986 () Bool)

(assert (=> b!4846019 m!5843986))

(assert (=> b!4845995 d!1554613))

(declare-fun d!1554615 () Bool)

(declare-fun res!2067188 () Bool)

(declare-fun e!3028874 () Bool)

(assert (=> d!1554615 (=> res!2067188 e!3028874)))

(assert (=> d!1554615 (= res!2067188 (and (is-Cons!55488 (_2!32850 (head!10405 (toList!7825 lm!2837)))) (= (_1!32849 (h!61925 (_2!32850 (head!10405 (toList!7825 lm!2837))))) key!6928)))))

(assert (=> d!1554615 (= (containsKey!4651 (_2!32850 (head!10405 (toList!7825 lm!2837))) key!6928) e!3028874)))

(declare-fun b!4846024 () Bool)

(declare-fun e!3028875 () Bool)

(assert (=> b!4846024 (= e!3028874 e!3028875)))

(declare-fun res!2067189 () Bool)

(assert (=> b!4846024 (=> (not res!2067189) (not e!3028875))))

(assert (=> b!4846024 (= res!2067189 (is-Cons!55488 (_2!32850 (head!10405 (toList!7825 lm!2837)))))))

(declare-fun b!4846025 () Bool)

(assert (=> b!4846025 (= e!3028875 (containsKey!4651 (t!363108 (_2!32850 (head!10405 (toList!7825 lm!2837)))) key!6928))))

(assert (= (and d!1554615 (not res!2067188)) b!4846024))

(assert (= (and b!4846024 res!2067189) b!4846025))

(declare-fun m!5843988 () Bool)

(assert (=> b!4846025 m!5843988))

(assert (=> b!4845996 d!1554615))

(declare-fun d!1554617 () Bool)

(assert (=> d!1554617 (= (head!10405 (toList!7825 lm!2837)) (h!61926 (toList!7825 lm!2837)))))

(assert (=> b!4845996 d!1554617))

(declare-fun d!1554619 () Bool)

(declare-fun res!2067198 () Bool)

(declare-fun e!3028882 () Bool)

(assert (=> d!1554619 (=> res!2067198 e!3028882)))

(declare-fun e!3028883 () Bool)

(assert (=> d!1554619 (= res!2067198 e!3028883)))

(declare-fun res!2067196 () Bool)

(assert (=> d!1554619 (=> (not res!2067196) (not e!3028883))))

(assert (=> d!1554619 (= res!2067196 (is-Cons!55489 (toList!7825 lm!2837)))))

(assert (=> d!1554619 (= (containsKeyBiggerList!763 (toList!7825 lm!2837) key!6928) e!3028882)))

(declare-fun b!4846032 () Bool)

(assert (=> b!4846032 (= e!3028883 (containsKey!4651 (_2!32850 (h!61926 (toList!7825 lm!2837))) key!6928))))

(declare-fun b!4846033 () Bool)

(declare-fun e!3028884 () Bool)

(assert (=> b!4846033 (= e!3028882 e!3028884)))

(declare-fun res!2067197 () Bool)

(assert (=> b!4846033 (=> (not res!2067197) (not e!3028884))))

(assert (=> b!4846033 (= res!2067197 (is-Cons!55489 (toList!7825 lm!2837)))))

(declare-fun b!4846034 () Bool)

(assert (=> b!4846034 (= e!3028884 (containsKeyBiggerList!763 (t!363109 (toList!7825 lm!2837)) key!6928))))

(assert (= (and d!1554619 res!2067196) b!4846032))

(assert (= (and d!1554619 (not res!2067198)) b!4846033))

(assert (= (and b!4846033 res!2067197) b!4846034))

(declare-fun m!5843990 () Bool)

(assert (=> b!4846032 m!5843990))

(declare-fun m!5843992 () Bool)

(assert (=> b!4846034 m!5843992))

(assert (=> b!4845992 d!1554619))

(declare-fun d!1554623 () Bool)

(declare-fun res!2067203 () Bool)

(declare-fun e!3028889 () Bool)

(assert (=> d!1554623 (=> res!2067203 e!3028889)))

(assert (=> d!1554623 (= res!2067203 (is-Nil!55489 (toList!7825 lm!2837)))))

(assert (=> d!1554623 (= (forall!12918 (toList!7825 lm!2837) lambda!242267) e!3028889)))

(declare-fun b!4846039 () Bool)

(declare-fun e!3028890 () Bool)

(assert (=> b!4846039 (= e!3028889 e!3028890)))

(declare-fun res!2067204 () Bool)

(assert (=> b!4846039 (=> (not res!2067204) (not e!3028890))))

(declare-fun dynLambda!22341 (Int tuple2!59112) Bool)

(assert (=> b!4846039 (= res!2067204 (dynLambda!22341 lambda!242267 (h!61926 (toList!7825 lm!2837))))))

(declare-fun b!4846040 () Bool)

(assert (=> b!4846040 (= e!3028890 (forall!12918 (t!363109 (toList!7825 lm!2837)) lambda!242267))))

(assert (= (and d!1554623 (not res!2067203)) b!4846039))

(assert (= (and b!4846039 res!2067204) b!4846040))

(declare-fun b_lambda!192347 () Bool)

(assert (=> (not b_lambda!192347) (not b!4846039)))

(declare-fun m!5843994 () Bool)

(assert (=> b!4846039 m!5843994))

(declare-fun m!5843996 () Bool)

(assert (=> b!4846040 m!5843996))

(assert (=> start!504722 d!1554623))

(declare-fun d!1554625 () Bool)

(declare-fun isStrictlySorted!1064 (List!55613) Bool)

(assert (=> d!1554625 (= (inv!71154 lm!2837) (isStrictlySorted!1064 (toList!7825 lm!2837)))))

(declare-fun bs!1172299 () Bool)

(assert (= bs!1172299 d!1554625))

(declare-fun m!5843998 () Bool)

(assert (=> bs!1172299 m!5843998))

(assert (=> start!504722 d!1554625))

(declare-fun b!4846047 () Bool)

(declare-fun e!3028893 () Bool)

(declare-fun tp!1364423 () Bool)

(declare-fun tp!1364424 () Bool)

(assert (=> b!4846047 (= e!3028893 (and tp!1364423 tp!1364424))))

(assert (=> b!4845994 (= tp!1364415 e!3028893)))

(assert (= (and b!4845994 (is-Cons!55489 (toList!7825 lm!2837))) b!4846047))

(declare-fun b_lambda!192349 () Bool)

(assert (= b_lambda!192347 (or start!504722 b_lambda!192349)))

(declare-fun bs!1172301 () Bool)

(declare-fun d!1554627 () Bool)

(assert (= bs!1172301 (and d!1554627 start!504722)))

(declare-fun noDuplicateKeys!2574 (List!55612) Bool)

(assert (=> bs!1172301 (= (dynLambda!22341 lambda!242267 (h!61926 (toList!7825 lm!2837))) (noDuplicateKeys!2574 (_2!32850 (h!61926 (toList!7825 lm!2837)))))))

(declare-fun m!5844000 () Bool)

(assert (=> bs!1172301 m!5844000))

(assert (=> b!4846039 d!1554627))

(push 1)

(assert (not b!4846019))

(assert (not b!4846034))

(assert (not b_lambda!192349))

(assert (not b!4846032))

(assert (not b!4846047))

(assert (not b!4846040))

(assert (not d!1554625))

(assert (not d!1554611))

(assert (not b!4846025))

(assert (not bs!1172301))

(assert tp_is_empty!35105)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

