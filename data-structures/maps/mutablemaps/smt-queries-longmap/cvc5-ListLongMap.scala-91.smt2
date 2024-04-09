; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!1308 () Bool)

(assert start!1308)

(declare-fun b_free!409 () Bool)

(declare-fun b_next!409 () Bool)

(assert (=> start!1308 (= b_free!409 (not b_next!409))))

(declare-fun tp!1635 () Bool)

(declare-fun b_and!591 () Bool)

(assert (=> start!1308 (= tp!1635 b_and!591)))

(declare-fun b!10657 () Bool)

(declare-fun e!6209 () Bool)

(declare-fun tp_is_empty!523 () Bool)

(declare-fun tp!1637 () Bool)

(assert (=> b!10657 (= e!6209 (and tp_is_empty!523 tp!1637))))

(declare-fun res!9011 () Bool)

(declare-fun e!6207 () Bool)

(assert (=> start!1308 (=> (not res!9011) (not e!6207))))

(declare-datatypes ((B!350 0))(
  ( (B!351 (val!270 Int)) )
))
(declare-datatypes ((tuple2!322 0))(
  ( (tuple2!323 (_1!161 (_ BitVec 64)) (_2!161 B!350)) )
))
(declare-datatypes ((List!317 0))(
  ( (Nil!314) (Cons!313 (h!879 tuple2!322) (t!2488 List!317)) )
))
(declare-datatypes ((ListLongMap!303 0))(
  ( (ListLongMap!304 (toList!167 List!317)) )
))
(declare-fun lm!227 () ListLongMap!303)

(declare-fun p!216 () Int)

(declare-fun forall!41 (List!317 Int) Bool)

(assert (=> start!1308 (= res!9011 (forall!41 (toList!167 lm!227) p!216))))

(assert (=> start!1308 e!6207))

(declare-fun e!6208 () Bool)

(declare-fun inv!510 (ListLongMap!303) Bool)

(assert (=> start!1308 (and (inv!510 lm!227) e!6208)))

(assert (=> start!1308 tp!1635))

(assert (=> start!1308 e!6209))

(declare-fun b!10658 () Bool)

(declare-fun res!9013 () Bool)

(assert (=> b!10658 (=> (not res!9013) (not e!6207))))

(declare-fun kvs!4 () List!317)

(assert (=> b!10658 (= res!9013 (forall!41 kvs!4 p!216))))

(declare-fun b!10659 () Bool)

(assert (=> b!10659 (= e!6207 (not (not (= kvs!4 Nil!314))))))

(declare-fun lt!2592 () tuple2!322)

(declare-fun +!14 (ListLongMap!303 tuple2!322) ListLongMap!303)

(assert (=> b!10659 (forall!41 (toList!167 (+!14 lm!227 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592)))) p!216)))

(declare-datatypes ((Unit!215 0))(
  ( (Unit!216) )
))
(declare-fun lt!2591 () Unit!215)

(declare-fun addValidProp!2 (ListLongMap!303 Int (_ BitVec 64) B!350) Unit!215)

(assert (=> b!10659 (= lt!2591 (addValidProp!2 lm!227 p!216 (_1!161 lt!2592) (_2!161 lt!2592)))))

(declare-fun head!758 (List!317) tuple2!322)

(assert (=> b!10659 (= lt!2592 (head!758 kvs!4))))

(declare-fun b!10660 () Bool)

(declare-fun tp!1636 () Bool)

(assert (=> b!10660 (= e!6208 tp!1636)))

(declare-fun b!10661 () Bool)

(declare-fun res!9012 () Bool)

(assert (=> b!10661 (=> (not res!9012) (not e!6207))))

(declare-fun isEmpty!51 (List!317) Bool)

(assert (=> b!10661 (= res!9012 (not (isEmpty!51 kvs!4)))))

(assert (= (and start!1308 res!9011) b!10658))

(assert (= (and b!10658 res!9013) b!10661))

(assert (= (and b!10661 res!9012) b!10659))

(assert (= start!1308 b!10660))

(assert (= (and start!1308 (is-Cons!313 kvs!4)) b!10657))

(declare-fun m!6857 () Bool)

(assert (=> start!1308 m!6857))

(declare-fun m!6859 () Bool)

(assert (=> start!1308 m!6859))

(declare-fun m!6861 () Bool)

(assert (=> b!10658 m!6861))

(declare-fun m!6863 () Bool)

(assert (=> b!10659 m!6863))

(declare-fun m!6865 () Bool)

(assert (=> b!10659 m!6865))

(declare-fun m!6867 () Bool)

(assert (=> b!10659 m!6867))

(declare-fun m!6869 () Bool)

(assert (=> b!10659 m!6869))

(declare-fun m!6871 () Bool)

(assert (=> b!10661 m!6871))

(push 1)

(assert (not b!10658))

(assert (not b!10659))

(assert b_and!591)

(assert tp_is_empty!523)

(assert (not start!1308))

(assert (not b!10657))

(assert (not b_next!409))

(assert (not b!10661))

(assert (not b!10660))

(check-sat)

(pop 1)

(push 1)

(assert b_and!591)

(assert (not b_next!409))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1167 () Bool)

(declare-fun res!9040 () Bool)

(declare-fun e!6236 () Bool)

(assert (=> d!1167 (=> res!9040 e!6236)))

(assert (=> d!1167 (= res!9040 (is-Nil!314 (toList!167 (+!14 lm!227 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592))))))))

(assert (=> d!1167 (= (forall!41 (toList!167 (+!14 lm!227 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592)))) p!216) e!6236)))

(declare-fun b!10700 () Bool)

(declare-fun e!6237 () Bool)

(assert (=> b!10700 (= e!6236 e!6237)))

(declare-fun res!9041 () Bool)

(assert (=> b!10700 (=> (not res!9041) (not e!6237))))

(declare-fun dynLambda!55 (Int tuple2!322) Bool)

(assert (=> b!10700 (= res!9041 (dynLambda!55 p!216 (h!879 (toList!167 (+!14 lm!227 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592)))))))))

(declare-fun b!10701 () Bool)

(assert (=> b!10701 (= e!6237 (forall!41 (t!2488 (toList!167 (+!14 lm!227 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592))))) p!216))))

(assert (= (and d!1167 (not res!9040)) b!10700))

(assert (= (and b!10700 res!9041) b!10701))

(declare-fun b_lambda!407 () Bool)

(assert (=> (not b_lambda!407) (not b!10700)))

(declare-fun t!2492 () Bool)

(declare-fun tb!171 () Bool)

(assert (=> (and start!1308 (= p!216 p!216) t!2492) tb!171))

(declare-fun result!309 () Bool)

(assert (=> tb!171 (= result!309 true)))

(assert (=> b!10700 t!2492))

(declare-fun b_and!597 () Bool)

(assert (= b_and!591 (and (=> t!2492 result!309) b_and!597)))

(declare-fun m!6905 () Bool)

(assert (=> b!10700 m!6905))

(declare-fun m!6907 () Bool)

(assert (=> b!10701 m!6907))

(assert (=> b!10659 d!1167))

(declare-fun d!1171 () Bool)

(declare-fun e!6254 () Bool)

(assert (=> d!1171 e!6254))

(declare-fun res!9061 () Bool)

(assert (=> d!1171 (=> (not res!9061) (not e!6254))))

(declare-fun lt!2613 () ListLongMap!303)

(declare-fun contains!132 (ListLongMap!303 (_ BitVec 64)) Bool)

(assert (=> d!1171 (= res!9061 (contains!132 lt!2613 (_1!161 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592)))))))

(declare-fun lt!2615 () List!317)

(assert (=> d!1171 (= lt!2613 (ListLongMap!304 lt!2615))))

(declare-fun lt!2616 () Unit!215)

(declare-fun lt!2614 () Unit!215)

(assert (=> d!1171 (= lt!2616 lt!2614)))

(declare-datatypes ((Option!23 0))(
  ( (Some!22 (v!1337 B!350)) (None!21) )
))
(declare-fun getValueByKey!17 (List!317 (_ BitVec 64)) Option!23)

(assert (=> d!1171 (= (getValueByKey!17 lt!2615 (_1!161 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592)))) (Some!22 (_2!161 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592)))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1 (List!317 (_ BitVec 64) B!350) Unit!215)

(assert (=> d!1171 (= lt!2614 (lemmaContainsTupThenGetReturnValue!1 lt!2615 (_1!161 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592))) (_2!161 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592)))))))

(declare-fun insertStrictlySorted!1 (List!317 (_ BitVec 64) B!350) List!317)

(assert (=> d!1171 (= lt!2615 (insertStrictlySorted!1 (toList!167 lm!227) (_1!161 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592))) (_2!161 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592)))))))

(assert (=> d!1171 (= (+!14 lm!227 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592))) lt!2613)))

(declare-fun b!10720 () Bool)

(declare-fun res!9060 () Bool)

(assert (=> b!10720 (=> (not res!9060) (not e!6254))))

(assert (=> b!10720 (= res!9060 (= (getValueByKey!17 (toList!167 lt!2613) (_1!161 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592)))) (Some!22 (_2!161 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592))))))))

(declare-fun b!10721 () Bool)

(declare-fun contains!133 (List!317 tuple2!322) Bool)

(assert (=> b!10721 (= e!6254 (contains!133 (toList!167 lt!2613) (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592))))))

(assert (= (and d!1171 res!9061) b!10720))

(assert (= (and b!10720 res!9060) b!10721))

(declare-fun m!6931 () Bool)

(assert (=> d!1171 m!6931))

(declare-fun m!6933 () Bool)

(assert (=> d!1171 m!6933))

(declare-fun m!6935 () Bool)

(assert (=> d!1171 m!6935))

(declare-fun m!6937 () Bool)

(assert (=> d!1171 m!6937))

(declare-fun m!6939 () Bool)

(assert (=> b!10720 m!6939))

(declare-fun m!6941 () Bool)

(assert (=> b!10721 m!6941))

(assert (=> b!10659 d!1171))

(declare-fun d!1191 () Bool)

(assert (=> d!1191 (forall!41 (toList!167 (+!14 lm!227 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592)))) p!216)))

(declare-fun lt!2639 () Unit!215)

(declare-fun choose!148 (ListLongMap!303 Int (_ BitVec 64) B!350) Unit!215)

(assert (=> d!1191 (= lt!2639 (choose!148 lm!227 p!216 (_1!161 lt!2592) (_2!161 lt!2592)))))

(declare-fun e!6262 () Bool)

(assert (=> d!1191 e!6262))

(declare-fun res!9074 () Bool)

(assert (=> d!1191 (=> (not res!9074) (not e!6262))))

(assert (=> d!1191 (= res!9074 (forall!41 (toList!167 lm!227) p!216))))

(assert (=> d!1191 (= (addValidProp!2 lm!227 p!216 (_1!161 lt!2592) (_2!161 lt!2592)) lt!2639)))

(declare-fun b!10735 () Bool)

(assert (=> b!10735 (= e!6262 (dynLambda!55 p!216 (tuple2!323 (_1!161 lt!2592) (_2!161 lt!2592))))))

(assert (= (and d!1191 res!9074) b!10735))

(declare-fun b_lambda!419 () Bool)

(assert (=> (not b_lambda!419) (not b!10735)))

(declare-fun t!2504 () Bool)

(declare-fun tb!183 () Bool)

(assert (=> (and start!1308 (= p!216 p!216) t!2504) tb!183))

(declare-fun result!321 () Bool)

(assert (=> tb!183 (= result!321 true)))

(assert (=> b!10735 t!2504))

(declare-fun b_and!609 () Bool)

(assert (= b_and!597 (and (=> t!2504 result!321) b_and!609)))

(assert (=> d!1191 m!6863))

(assert (=> d!1191 m!6865))

(declare-fun m!6955 () Bool)

(assert (=> d!1191 m!6955))

(assert (=> d!1191 m!6857))

(declare-fun m!6957 () Bool)

(assert (=> b!10735 m!6957))

(assert (=> b!10659 d!1191))

(declare-fun d!1195 () Bool)

(assert (=> d!1195 (= (head!758 kvs!4) (h!879 kvs!4))))

(assert (=> b!10659 d!1195))

(declare-fun d!1199 () Bool)

(declare-fun res!9077 () Bool)

(declare-fun e!6264 () Bool)

(assert (=> d!1199 (=> res!9077 e!6264)))

(assert (=> d!1199 (= res!9077 (is-Nil!314 (toList!167 lm!227)))))

(assert (=> d!1199 (= (forall!41 (toList!167 lm!227) p!216) e!6264)))

(declare-fun b!10738 () Bool)

(declare-fun e!6265 () Bool)

(assert (=> b!10738 (= e!6264 e!6265)))

(declare-fun res!9078 () Bool)

(assert (=> b!10738 (=> (not res!9078) (not e!6265))))

(assert (=> b!10738 (= res!9078 (dynLambda!55 p!216 (h!879 (toList!167 lm!227))))))

(declare-fun b!10739 () Bool)

(assert (=> b!10739 (= e!6265 (forall!41 (t!2488 (toList!167 lm!227)) p!216))))

(assert (= (and d!1199 (not res!9077)) b!10738))

(assert (= (and b!10738 res!9078) b!10739))

(declare-fun b_lambda!421 () Bool)

(assert (=> (not b_lambda!421) (not b!10738)))

(declare-fun t!2506 () Bool)

(declare-fun tb!185 () Bool)

(assert (=> (and start!1308 (= p!216 p!216) t!2506) tb!185))

(declare-fun result!323 () Bool)

(assert (=> tb!185 (= result!323 true)))

(assert (=> b!10738 t!2506))

(declare-fun b_and!611 () Bool)

(assert (= b_and!609 (and (=> t!2506 result!323) b_and!611)))

(declare-fun m!6971 () Bool)

(assert (=> b!10738 m!6971))

(declare-fun m!6973 () Bool)

(assert (=> b!10739 m!6973))

(assert (=> start!1308 d!1199))

(declare-fun d!1201 () Bool)

(declare-fun isStrictlySorted!32 (List!317) Bool)

(assert (=> d!1201 (= (inv!510 lm!227) (isStrictlySorted!32 (toList!167 lm!227)))))

(declare-fun bs!400 () Bool)

(assert (= bs!400 d!1201))

(declare-fun m!6975 () Bool)

(assert (=> bs!400 m!6975))

(assert (=> start!1308 d!1201))

(declare-fun d!1203 () Bool)

(declare-fun res!9079 () Bool)

(declare-fun e!6266 () Bool)

(assert (=> d!1203 (=> res!9079 e!6266)))

(assert (=> d!1203 (= res!9079 (is-Nil!314 kvs!4))))

(assert (=> d!1203 (= (forall!41 kvs!4 p!216) e!6266)))

(declare-fun b!10740 () Bool)

(declare-fun e!6267 () Bool)

(assert (=> b!10740 (= e!6266 e!6267)))

(declare-fun res!9080 () Bool)

(assert (=> b!10740 (=> (not res!9080) (not e!6267))))

(assert (=> b!10740 (= res!9080 (dynLambda!55 p!216 (h!879 kvs!4)))))

(declare-fun b!10741 () Bool)

(assert (=> b!10741 (= e!6267 (forall!41 (t!2488 kvs!4) p!216))))

(assert (= (and d!1203 (not res!9079)) b!10740))

(assert (= (and b!10740 res!9080) b!10741))

(declare-fun b_lambda!423 () Bool)

(assert (=> (not b_lambda!423) (not b!10740)))

(declare-fun t!2508 () Bool)

(declare-fun tb!187 () Bool)

(assert (=> (and start!1308 (= p!216 p!216) t!2508) tb!187))

(declare-fun result!325 () Bool)

(assert (=> tb!187 (= result!325 true)))

(assert (=> b!10740 t!2508))

(declare-fun b_and!613 () Bool)

(assert (= b_and!611 (and (=> t!2508 result!325) b_and!613)))

(declare-fun m!6977 () Bool)

(assert (=> b!10740 m!6977))

(declare-fun m!6979 () Bool)

(assert (=> b!10741 m!6979))

(assert (=> b!10658 d!1203))

(declare-fun d!1205 () Bool)

(assert (=> d!1205 (= (isEmpty!51 kvs!4) (is-Nil!314 kvs!4))))

(assert (=> b!10661 d!1205))

(declare-fun b!10753 () Bool)

(declare-fun e!6275 () Bool)

(declare-fun tp!1658 () Bool)

(assert (=> b!10753 (= e!6275 (and tp_is_empty!523 tp!1658))))

(assert (=> b!10657 (= tp!1637 e!6275)))

(assert (= (and b!10657 (is-Cons!313 (t!2488 kvs!4))) b!10753))

(declare-fun b!10754 () Bool)

(declare-fun e!6276 () Bool)

(declare-fun tp!1659 () Bool)

(assert (=> b!10754 (= e!6276 (and tp_is_empty!523 tp!1659))))

(assert (=> b!10660 (= tp!1636 e!6276)))

(assert (= (and b!10660 (is-Cons!313 (toList!167 lm!227))) b!10754))

(declare-fun b_lambda!427 () Bool)

(assert (= b_lambda!419 (or (and start!1308 b_free!409) b_lambda!427)))

(declare-fun b_lambda!429 () Bool)

(assert (= b_lambda!423 (or (and start!1308 b_free!409) b_lambda!429)))

(declare-fun b_lambda!431 () Bool)

(assert (= b_lambda!421 (or (and start!1308 b_free!409) b_lambda!431)))

(declare-fun b_lambda!433 () Bool)

(assert (= b_lambda!407 (or (and start!1308 b_free!409) b_lambda!433)))

(push 1)

(assert (not b!10741))

(assert (not b_lambda!433))

(assert (not b!10720))

(assert (not b!10753))

(assert (not d!1171))

(assert tp_is_empty!523)

(assert (not d!1191))

(assert b_and!613)

(assert (not b!10721))

(assert (not b!10754))

(assert (not b_lambda!429))

(assert (not b!10739))

(assert (not b_next!409))

(assert (not b_lambda!427))

(assert (not b_lambda!431))

(assert (not b!10701))

(assert (not d!1201))

(check-sat)

(pop 1)

(push 1)

