; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2888 () Bool)

(assert start!2888)

(declare-fun b_free!575 () Bool)

(declare-fun b_next!575 () Bool)

(assert (=> start!2888 (= b_free!575 (not b_next!575))))

(declare-fun tp!2900 () Bool)

(declare-fun b_and!1195 () Bool)

(assert (=> start!2888 (= tp!2900 b_and!1195)))

(declare-fun res!12315 () Bool)

(declare-fun e!10266 () Bool)

(assert (=> start!2888 (=> (not res!12315) (not e!10266))))

(declare-datatypes ((B!696 0))(
  ( (B!697 (val!446 Int)) )
))
(declare-datatypes ((tuple2!674 0))(
  ( (tuple2!675 (_1!337 (_ BitVec 64)) (_2!337 B!696)) )
))
(declare-datatypes ((List!526 0))(
  ( (Nil!523) (Cons!522 (h!1088 tuple2!674) (t!3141 List!526)) )
))
(declare-datatypes ((ListLongMap!505 0))(
  ( (ListLongMap!506 (toList!268 List!526)) )
))
(declare-fun lm!221 () ListLongMap!505)

(declare-fun p!191 () Int)

(declare-fun forall!148 (List!526 Int) Bool)

(assert (=> start!2888 (= res!12315 (forall!148 (toList!268 lm!221) p!191))))

(assert (=> start!2888 e!10266))

(declare-fun e!10267 () Bool)

(declare-fun inv!898 (ListLongMap!505) Bool)

(assert (=> start!2888 (and (inv!898 lm!221) e!10267)))

(assert (=> start!2888 tp!2900))

(assert (=> start!2888 true))

(declare-fun b!16593 () Bool)

(declare-fun res!12316 () Bool)

(assert (=> b!16593 (=> (not res!12316) (not e!10266))))

(declare-fun isEmpty!167 (ListLongMap!505) Bool)

(assert (=> b!16593 (= res!12316 (isEmpty!167 lm!221))))

(declare-fun b!16594 () Bool)

(declare-fun a!507 () (_ BitVec 64))

(declare-fun -!35 (ListLongMap!505 (_ BitVec 64)) ListLongMap!505)

(assert (=> b!16594 (= e!10266 (not (forall!148 (toList!268 (-!35 lm!221 a!507)) p!191)))))

(declare-fun b!16595 () Bool)

(declare-fun tp!2899 () Bool)

(assert (=> b!16595 (= e!10267 tp!2899)))

(assert (= (and start!2888 res!12315) b!16593))

(assert (= (and b!16593 res!12316) b!16594))

(assert (= start!2888 b!16595))

(declare-fun m!11691 () Bool)

(assert (=> start!2888 m!11691))

(declare-fun m!11693 () Bool)

(assert (=> start!2888 m!11693))

(declare-fun m!11695 () Bool)

(assert (=> b!16593 m!11695))

(declare-fun m!11697 () Bool)

(assert (=> b!16594 m!11697))

(declare-fun m!11699 () Bool)

(assert (=> b!16594 m!11699))

(push 1)

(assert (not b!16594))

(assert (not start!2888))

(assert (not b_next!575))

(assert (not b!16593))

(assert (not b!16595))

(assert b_and!1195)

(check-sat)

(pop 1)

(push 1)

(assert b_and!1195)

(assert (not b_next!575))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3295 () Bool)

(declare-fun res!12329 () Bool)

(declare-fun e!10280 () Bool)

(assert (=> d!3295 (=> res!12329 e!10280)))

(assert (=> d!3295 (= res!12329 (is-Nil!523 (toList!268 (-!35 lm!221 a!507))))))

(assert (=> d!3295 (= (forall!148 (toList!268 (-!35 lm!221 a!507)) p!191) e!10280)))

(declare-fun b!16608 () Bool)

(declare-fun e!10281 () Bool)

(assert (=> b!16608 (= e!10280 e!10281)))

(declare-fun res!12330 () Bool)

(assert (=> b!16608 (=> (not res!12330) (not e!10281))))

(declare-fun dynLambda!129 (Int tuple2!674) Bool)

(assert (=> b!16608 (= res!12330 (dynLambda!129 p!191 (h!1088 (toList!268 (-!35 lm!221 a!507)))))))

(declare-fun b!16609 () Bool)

(assert (=> b!16609 (= e!10281 (forall!148 (t!3141 (toList!268 (-!35 lm!221 a!507))) p!191))))

(assert (= (and d!3295 (not res!12329)) b!16608))

(assert (= (and b!16608 res!12330) b!16609))

(declare-fun b_lambda!1391 () Bool)

(assert (=> (not b_lambda!1391) (not b!16608)))

(declare-fun t!3143 () Bool)

(declare-fun tb!603 () Bool)

(assert (=> (and start!2888 (= p!191 p!191) t!3143) tb!603))

(declare-fun result!975 () Bool)

(assert (=> tb!603 (= result!975 true)))

(assert (=> b!16608 t!3143))

(declare-fun b_and!1197 () Bool)

(assert (= b_and!1195 (and (=> t!3143 result!975) b_and!1197)))

(declare-fun m!11701 () Bool)

(assert (=> b!16608 m!11701))

(declare-fun m!11705 () Bool)

(assert (=> b!16609 m!11705))

(assert (=> b!16594 d!3295))

(declare-fun d!3301 () Bool)

(declare-fun lt!4082 () ListLongMap!505)

(declare-fun contains!197 (ListLongMap!505 (_ BitVec 64)) Bool)

(assert (=> d!3301 (not (contains!197 lt!4082 a!507))))

(declare-fun removeStrictlySorted!20 (List!526 (_ BitVec 64)) List!526)

(assert (=> d!3301 (= lt!4082 (ListLongMap!506 (removeStrictlySorted!20 (toList!268 lm!221) a!507)))))

(assert (=> d!3301 (= (-!35 lm!221 a!507) lt!4082)))

(declare-fun bs!788 () Bool)

(assert (= bs!788 d!3301))

(declare-fun m!11713 () Bool)

(assert (=> bs!788 m!11713))

(declare-fun m!11715 () Bool)

(assert (=> bs!788 m!11715))

(assert (=> b!16594 d!3301))

(declare-fun d!3307 () Bool)

(declare-fun isEmpty!169 (List!526) Bool)

(assert (=> d!3307 (= (isEmpty!167 lm!221) (isEmpty!169 (toList!268 lm!221)))))

(declare-fun bs!790 () Bool)

(assert (= bs!790 d!3307))

(declare-fun m!11721 () Bool)

(assert (=> bs!790 m!11721))

(assert (=> b!16593 d!3307))

(declare-fun d!3311 () Bool)

(declare-fun res!12335 () Bool)

(declare-fun e!10286 () Bool)

(assert (=> d!3311 (=> res!12335 e!10286)))

(assert (=> d!3311 (= res!12335 (is-Nil!523 (toList!268 lm!221)))))

(assert (=> d!3311 (= (forall!148 (toList!268 lm!221) p!191) e!10286)))

(declare-fun b!16614 () Bool)

(declare-fun e!10287 () Bool)

(assert (=> b!16614 (= e!10286 e!10287)))

(declare-fun res!12336 () Bool)

(assert (=> b!16614 (=> (not res!12336) (not e!10287))))

(assert (=> b!16614 (= res!12336 (dynLambda!129 p!191 (h!1088 (toList!268 lm!221))))))

(declare-fun b!16615 () Bool)

(assert (=> b!16615 (= e!10287 (forall!148 (t!3141 (toList!268 lm!221)) p!191))))

(assert (= (and d!3311 (not res!12335)) b!16614))

(assert (= (and b!16614 res!12336) b!16615))

(declare-fun b_lambda!1397 () Bool)

(assert (=> (not b_lambda!1397) (not b!16614)))

(declare-fun t!3149 () Bool)

(declare-fun tb!609 () Bool)

(assert (=> (and start!2888 (= p!191 p!191) t!3149) tb!609))

(declare-fun result!981 () Bool)

(assert (=> tb!609 (= result!981 true)))

(assert (=> b!16614 t!3149))

(declare-fun b_and!1203 () Bool)

(assert (= b_and!1197 (and (=> t!3149 result!981) b_and!1203)))

(declare-fun m!11729 () Bool)

(assert (=> b!16614 m!11729))

(declare-fun m!11731 () Bool)

(assert (=> b!16615 m!11731))

(assert (=> start!2888 d!3311))

(declare-fun d!3317 () Bool)

(declare-fun isStrictlySorted!165 (List!526) Bool)

(assert (=> d!3317 (= (inv!898 lm!221) (isStrictlySorted!165 (toList!268 lm!221)))))

(declare-fun bs!793 () Bool)

(assert (= bs!793 d!3317))

(declare-fun m!11737 () Bool)

(assert (=> bs!793 m!11737))

(assert (=> start!2888 d!3317))

(declare-fun b!16624 () Bool)

(declare-fun e!10294 () Bool)

(declare-fun tp_is_empty!835 () Bool)

(declare-fun tp!2903 () Bool)

(assert (=> b!16624 (= e!10294 (and tp_is_empty!835 tp!2903))))

(assert (=> b!16595 (= tp!2899 e!10294)))

(assert (= (and b!16595 (is-Cons!522 (toList!268 lm!221))) b!16624))

(declare-fun b_lambda!1403 () Bool)

(assert (= b_lambda!1397 (or (and start!2888 b_free!575) b_lambda!1403)))

(declare-fun b_lambda!1405 () Bool)

(assert (= b_lambda!1391 (or (and start!2888 b_free!575) b_lambda!1405)))

(push 1)

(assert b_and!1203)

(assert (not b_lambda!1405))

(assert (not b!16609))

(assert (not d!3317))

(assert (not b!16615))

(assert (not b!16624))

(assert (not b_lambda!1403))

(assert (not b_next!575))

(assert tp_is_empty!835)

(assert (not d!3307))

(assert (not d!3301))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1203)

(assert (not b_next!575))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3331 () Bool)

(declare-fun res!12349 () Bool)

(declare-fun e!10309 () Bool)

(assert (=> d!3331 (=> res!12349 e!10309)))

(assert (=> d!3331 (= res!12349 (is-Nil!523 (t!3141 (toList!268 lm!221))))))

(assert (=> d!3331 (= (forall!148 (t!3141 (toList!268 lm!221)) p!191) e!10309)))

(declare-fun b!16643 () Bool)

(declare-fun e!10310 () Bool)

(assert (=> b!16643 (= e!10309 e!10310)))

(declare-fun res!12350 () Bool)

(assert (=> b!16643 (=> (not res!12350) (not e!10310))))

(assert (=> b!16643 (= res!12350 (dynLambda!129 p!191 (h!1088 (t!3141 (toList!268 lm!221)))))))

(declare-fun b!16644 () Bool)

(assert (=> b!16644 (= e!10310 (forall!148 (t!3141 (t!3141 (toList!268 lm!221))) p!191))))

(assert (= (and d!3331 (not res!12349)) b!16643))

(assert (= (and b!16643 res!12350) b!16644))

(declare-fun b_lambda!1417 () Bool)

(assert (=> (not b_lambda!1417) (not b!16643)))

(declare-fun t!3157 () Bool)

(declare-fun tb!617 () Bool)

(assert (=> (and start!2888 (= p!191 p!191) t!3157) tb!617))

(declare-fun result!995 () Bool)

(assert (=> tb!617 (= result!995 true)))

(assert (=> b!16643 t!3157))

(declare-fun b_and!1211 () Bool)

(assert (= b_and!1203 (and (=> t!3157 result!995) b_and!1211)))

(declare-fun m!11755 () Bool)

(assert (=> b!16643 m!11755))

(declare-fun m!11757 () Bool)

(assert (=> b!16644 m!11757))

(assert (=> b!16615 d!3331))

(declare-fun d!3333 () Bool)

(declare-fun res!12351 () Bool)

(declare-fun e!10311 () Bool)

(assert (=> d!3333 (=> res!12351 e!10311)))

(assert (=> d!3333 (= res!12351 (is-Nil!523 (t!3141 (toList!268 (-!35 lm!221 a!507)))))))

(assert (=> d!3333 (= (forall!148 (t!3141 (toList!268 (-!35 lm!221 a!507))) p!191) e!10311)))

(declare-fun b!16645 () Bool)

(declare-fun e!10312 () Bool)

(assert (=> b!16645 (= e!10311 e!10312)))

(declare-fun res!12352 () Bool)

(assert (=> b!16645 (=> (not res!12352) (not e!10312))))

(assert (=> b!16645 (= res!12352 (dynLambda!129 p!191 (h!1088 (t!3141 (toList!268 (-!35 lm!221 a!507))))))))

(declare-fun b!16646 () Bool)

(assert (=> b!16646 (= e!10312 (forall!148 (t!3141 (t!3141 (toList!268 (-!35 lm!221 a!507)))) p!191))))

(assert (= (and d!3333 (not res!12351)) b!16645))

(assert (= (and b!16645 res!12352) b!16646))

(declare-fun b_lambda!1419 () Bool)

(assert (=> (not b_lambda!1419) (not b!16645)))

(declare-fun t!3159 () Bool)

(declare-fun tb!619 () Bool)

(assert (=> (and start!2888 (= p!191 p!191) t!3159) tb!619))

(declare-fun result!997 () Bool)

(assert (=> tb!619 (= result!997 true)))

(assert (=> b!16645 t!3159))

(declare-fun b_and!1213 () Bool)

(assert (= b_and!1211 (and (=> t!3159 result!997) b_and!1213)))

(declare-fun m!11759 () Bool)

(assert (=> b!16645 m!11759))

(declare-fun m!11761 () Bool)

(assert (=> b!16646 m!11761))

(assert (=> b!16609 d!3333))

(declare-fun d!3335 () Bool)

(declare-fun res!12361 () Bool)

(declare-fun e!10323 () Bool)

(assert (=> d!3335 (=> res!12361 e!10323)))

(assert (=> d!3335 (= res!12361 (or (is-Nil!523 (toList!268 lm!221)) (is-Nil!523 (t!3141 (toList!268 lm!221)))))))

(assert (=> d!3335 (= (isStrictlySorted!165 (toList!268 lm!221)) e!10323)))

(declare-fun b!16659 () Bool)

(declare-fun e!10324 () Bool)

(assert (=> b!16659 (= e!10323 e!10324)))

(declare-fun res!12362 () Bool)

(assert (=> b!16659 (=> (not res!12362) (not e!10324))))

(assert (=> b!16659 (= res!12362 (bvslt (_1!337 (h!1088 (toList!268 lm!221))) (_1!337 (h!1088 (t!3141 (toList!268 lm!221))))))))

(declare-fun b!16660 () Bool)

(assert (=> b!16660 (= e!10324 (isStrictlySorted!165 (t!3141 (toList!268 lm!221))))))

(assert (= (and d!3335 (not res!12361)) b!16659))

(assert (= (and b!16659 res!12362) b!16660))

(declare-fun m!11767 () Bool)

(assert (=> b!16660 m!11767))

(assert (=> d!3317 d!3335))

(declare-fun d!3341 () Bool)

(assert (=> d!3341 (= (isEmpty!169 (toList!268 lm!221)) (is-Nil!523 (toList!268 lm!221)))))

(assert (=> d!3307 d!3341))

(declare-fun d!3343 () Bool)

(declare-fun e!10342 () Bool)

(assert (=> d!3343 e!10342))

(declare-fun res!12370 () Bool)

(assert (=> d!3343 (=> res!12370 e!10342)))

(declare-fun lt!4120 () Bool)

(assert (=> d!3343 (= res!12370 (not lt!4120))))

(declare-fun lt!4119 () Bool)

(assert (=> d!3343 (= lt!4120 lt!4119)))

(declare-datatypes ((Unit!338 0))(
  ( (Unit!339) )
))
(declare-fun lt!4117 () Unit!338)

(declare-fun e!10341 () Unit!338)

(assert (=> d!3343 (= lt!4117 e!10341)))

(declare-fun c!1604 () Bool)

(assert (=> d!3343 (= c!1604 lt!4119)))

(declare-fun containsKey!22 (List!526 (_ BitVec 64)) Bool)

(assert (=> d!3343 (= lt!4119 (containsKey!22 (toList!268 lt!4082) a!507))))

(assert (=> d!3343 (= (contains!197 lt!4082 a!507) lt!4120)))

(declare-fun b!16686 () Bool)

(declare-fun lt!4118 () Unit!338)

(assert (=> b!16686 (= e!10341 lt!4118)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!19 (List!526 (_ BitVec 64)) Unit!338)

(assert (=> b!16686 (= lt!4118 (lemmaContainsKeyImpliesGetValueByKeyDefined!19 (toList!268 lt!4082) a!507))))

(declare-datatypes ((Option!64 0))(
  ( (Some!63 (v!1393 B!696)) (None!62) )
))
(declare-fun isDefined!20 (Option!64) Bool)

(declare-fun getValueByKey!58 (List!526 (_ BitVec 64)) Option!64)

(assert (=> b!16686 (isDefined!20 (getValueByKey!58 (toList!268 lt!4082) a!507))))

(declare-fun b!16687 () Bool)

(declare-fun Unit!340 () Unit!338)

(assert (=> b!16687 (= e!10341 Unit!340)))

(declare-fun b!16688 () Bool)

(assert (=> b!16688 (= e!10342 (isDefined!20 (getValueByKey!58 (toList!268 lt!4082) a!507)))))

(assert (= (and d!3343 c!1604) b!16686))

(assert (= (and d!3343 (not c!1604)) b!16687))

(assert (= (and d!3343 (not res!12370)) b!16688))

(declare-fun m!11777 () Bool)

(assert (=> d!3343 m!11777))

(declare-fun m!11779 () Bool)

(assert (=> b!16686 m!11779))

(declare-fun m!11781 () Bool)

(assert (=> b!16686 m!11781))

(assert (=> b!16686 m!11781))

(declare-fun m!11783 () Bool)

(assert (=> b!16686 m!11783))

(assert (=> b!16688 m!11781))

