; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2776 () Bool)

(assert start!2776)

(declare-fun b_free!565 () Bool)

(declare-fun b_next!565 () Bool)

(assert (=> start!2776 (= b_free!565 (not b_next!565))))

(declare-fun tp!2855 () Bool)

(declare-fun b_and!1113 () Bool)

(assert (=> start!2776 (= tp!2855 b_and!1113)))

(declare-fun res!12076 () Bool)

(declare-fun e!9938 () Bool)

(assert (=> start!2776 (=> (not res!12076) (not e!9938))))

(declare-datatypes ((B!686 0))(
  ( (B!687 (val!441 Int)) )
))
(declare-datatypes ((tuple2!664 0))(
  ( (tuple2!665 (_1!332 (_ BitVec 64)) (_2!332 B!686)) )
))
(declare-datatypes ((List!521 0))(
  ( (Nil!518) (Cons!517 (h!1083 tuple2!664) (t!3061 List!521)) )
))
(declare-datatypes ((ListLongMap!495 0))(
  ( (ListLongMap!496 (toList!263 List!521)) )
))
(declare-fun lm!221 () ListLongMap!495)

(declare-fun p!191 () Int)

(declare-fun forall!143 (List!521 Int) Bool)

(assert (=> start!2776 (= res!12076 (forall!143 (toList!263 lm!221) p!191))))

(assert (=> start!2776 e!9938))

(declare-fun e!9940 () Bool)

(declare-fun inv!888 (ListLongMap!495) Bool)

(assert (=> start!2776 (and (inv!888 lm!221) e!9940)))

(assert (=> start!2776 tp!2855))

(assert (=> start!2776 true))

(declare-fun b!16172 () Bool)

(declare-fun res!12075 () Bool)

(assert (=> b!16172 (=> (not res!12075) (not e!9938))))

(declare-fun isEmpty!156 (ListLongMap!495) Bool)

(assert (=> b!16172 (= res!12075 (not (isEmpty!156 lm!221)))))

(declare-fun b!16173 () Bool)

(declare-fun e!9939 () Bool)

(assert (=> b!16173 (= e!9938 e!9939)))

(declare-fun res!12074 () Bool)

(assert (=> b!16173 (=> (not res!12074) (not e!9939))))

(declare-fun lt!3965 () ListLongMap!495)

(assert (=> b!16173 (= res!12074 (forall!143 (toList!263 lt!3965) p!191))))

(declare-fun tail!80 (ListLongMap!495) ListLongMap!495)

(assert (=> b!16173 (= lt!3965 (tail!80 lm!221))))

(declare-fun b!16175 () Bool)

(declare-fun tp!2854 () Bool)

(assert (=> b!16175 (= e!9940 tp!2854)))

(declare-fun a!507 () (_ BitVec 64))

(declare-fun b!16174 () Bool)

(declare-fun -!30 (ListLongMap!495 (_ BitVec 64)) ListLongMap!495)

(assert (=> b!16174 (= e!9939 (not (forall!143 (toList!263 (-!30 lm!221 a!507)) p!191)))))

(assert (=> b!16174 (forall!143 (toList!263 (-!30 lt!3965 a!507)) p!191)))

(declare-datatypes ((Unit!320 0))(
  ( (Unit!321) )
))
(declare-fun lt!3966 () Unit!320)

(declare-fun removeValidProp!20 (ListLongMap!495 Int (_ BitVec 64)) Unit!320)

(assert (=> b!16174 (= lt!3966 (removeValidProp!20 lt!3965 p!191 a!507))))

(assert (= (and start!2776 res!12076) b!16172))

(assert (= (and b!16172 res!12075) b!16173))

(assert (= (and b!16173 res!12074) b!16174))

(assert (= start!2776 b!16175))

(declare-fun m!11167 () Bool)

(assert (=> start!2776 m!11167))

(declare-fun m!11169 () Bool)

(assert (=> start!2776 m!11169))

(declare-fun m!11171 () Bool)

(assert (=> b!16172 m!11171))

(declare-fun m!11173 () Bool)

(assert (=> b!16173 m!11173))

(declare-fun m!11175 () Bool)

(assert (=> b!16173 m!11175))

(declare-fun m!11177 () Bool)

(assert (=> b!16174 m!11177))

(declare-fun m!11179 () Bool)

(assert (=> b!16174 m!11179))

(declare-fun m!11181 () Bool)

(assert (=> b!16174 m!11181))

(declare-fun m!11183 () Bool)

(assert (=> b!16174 m!11183))

(declare-fun m!11185 () Bool)

(assert (=> b!16174 m!11185))

(push 1)

(assert (not b!16175))

(assert (not b!16173))

(assert (not start!2776))

(assert b_and!1113)

(assert (not b!16172))

(assert (not b!16174))

(assert (not b_next!565))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1113)

(assert (not b_next!565))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3031 () Bool)

(declare-fun res!12099 () Bool)

(declare-fun e!9963 () Bool)

(assert (=> d!3031 (=> res!12099 e!9963)))

(assert (=> d!3031 (= res!12099 (is-Nil!518 (toList!263 lm!221)))))

(assert (=> d!3031 (= (forall!143 (toList!263 lm!221) p!191) e!9963)))

(declare-fun b!16204 () Bool)

(declare-fun e!9964 () Bool)

(assert (=> b!16204 (= e!9963 e!9964)))

(declare-fun res!12100 () Bool)

(assert (=> b!16204 (=> (not res!12100) (not e!9964))))

(declare-fun dynLambda!126 (Int tuple2!664) Bool)

(assert (=> b!16204 (= res!12100 (dynLambda!126 p!191 (h!1083 (toList!263 lm!221))))))

(declare-fun b!16205 () Bool)

(assert (=> b!16205 (= e!9964 (forall!143 (t!3061 (toList!263 lm!221)) p!191))))

(assert (= (and d!3031 (not res!12099)) b!16204))

(assert (= (and b!16204 res!12100) b!16205))

(declare-fun b_lambda!1247 () Bool)

(assert (=> (not b_lambda!1247) (not b!16204)))

(declare-fun t!3065 () Bool)

(declare-fun tb!531 () Bool)

(assert (=> (and start!2776 (= p!191 p!191) t!3065) tb!531))

(declare-fun result!897 () Bool)

(assert (=> tb!531 (= result!897 true)))

(assert (=> b!16204 t!3065))

(declare-fun b_and!1119 () Bool)

(assert (= b_and!1113 (and (=> t!3065 result!897) b_and!1119)))

(declare-fun m!11229 () Bool)

(assert (=> b!16204 m!11229))

(declare-fun m!11231 () Bool)

(assert (=> b!16205 m!11231))

(assert (=> start!2776 d!3031))

(declare-fun d!3037 () Bool)

(declare-fun isStrictlySorted!161 (List!521) Bool)

(assert (=> d!3037 (= (inv!888 lm!221) (isStrictlySorted!161 (toList!263 lm!221)))))

(declare-fun bs!759 () Bool)

(assert (= bs!759 d!3037))

(declare-fun m!11237 () Bool)

(assert (=> bs!759 m!11237))

(assert (=> start!2776 d!3037))

(declare-fun d!3041 () Bool)

(declare-fun lt!3984 () ListLongMap!495)

(declare-fun contains!194 (ListLongMap!495 (_ BitVec 64)) Bool)

(assert (=> d!3041 (not (contains!194 lt!3984 a!507))))

(declare-fun removeStrictlySorted!17 (List!521 (_ BitVec 64)) List!521)

(assert (=> d!3041 (= lt!3984 (ListLongMap!496 (removeStrictlySorted!17 (toList!263 lm!221) a!507)))))

(assert (=> d!3041 (= (-!30 lm!221 a!507) lt!3984)))

(declare-fun bs!762 () Bool)

(assert (= bs!762 d!3041))

(declare-fun m!11249 () Bool)

(assert (=> bs!762 m!11249))

(declare-fun m!11251 () Bool)

(assert (=> bs!762 m!11251))

(assert (=> b!16174 d!3041))

(declare-fun d!3049 () Bool)

(declare-fun res!12113 () Bool)

(declare-fun e!9977 () Bool)

(assert (=> d!3049 (=> res!12113 e!9977)))

(assert (=> d!3049 (= res!12113 (is-Nil!518 (toList!263 (-!30 lm!221 a!507))))))

(assert (=> d!3049 (= (forall!143 (toList!263 (-!30 lm!221 a!507)) p!191) e!9977)))

(declare-fun b!16218 () Bool)

(declare-fun e!9978 () Bool)

(assert (=> b!16218 (= e!9977 e!9978)))

(declare-fun res!12114 () Bool)

(assert (=> b!16218 (=> (not res!12114) (not e!9978))))

(assert (=> b!16218 (= res!12114 (dynLambda!126 p!191 (h!1083 (toList!263 (-!30 lm!221 a!507)))))))

(declare-fun b!16219 () Bool)

(assert (=> b!16219 (= e!9978 (forall!143 (t!3061 (toList!263 (-!30 lm!221 a!507))) p!191))))

(assert (= (and d!3049 (not res!12113)) b!16218))

(assert (= (and b!16218 res!12114) b!16219))

(declare-fun b_lambda!1253 () Bool)

(assert (=> (not b_lambda!1253) (not b!16218)))

(declare-fun t!3071 () Bool)

(declare-fun tb!537 () Bool)

(assert (=> (and start!2776 (= p!191 p!191) t!3071) tb!537))

(declare-fun result!903 () Bool)

(assert (=> tb!537 (= result!903 true)))

(assert (=> b!16218 t!3071))

(declare-fun b_and!1125 () Bool)

(assert (= b_and!1119 (and (=> t!3071 result!903) b_and!1125)))

(declare-fun m!11253 () Bool)

(assert (=> b!16218 m!11253))

(declare-fun m!11257 () Bool)

(assert (=> b!16219 m!11257))

(assert (=> b!16174 d!3049))

(declare-fun d!3051 () Bool)

(declare-fun res!12115 () Bool)

(declare-fun e!9979 () Bool)

(assert (=> d!3051 (=> res!12115 e!9979)))

(assert (=> d!3051 (= res!12115 (is-Nil!518 (toList!263 (-!30 lt!3965 a!507))))))

(assert (=> d!3051 (= (forall!143 (toList!263 (-!30 lt!3965 a!507)) p!191) e!9979)))

(declare-fun b!16220 () Bool)

(declare-fun e!9980 () Bool)

(assert (=> b!16220 (= e!9979 e!9980)))

(declare-fun res!12116 () Bool)

(assert (=> b!16220 (=> (not res!12116) (not e!9980))))

(assert (=> b!16220 (= res!12116 (dynLambda!126 p!191 (h!1083 (toList!263 (-!30 lt!3965 a!507)))))))

(declare-fun b!16221 () Bool)

(assert (=> b!16221 (= e!9980 (forall!143 (t!3061 (toList!263 (-!30 lt!3965 a!507))) p!191))))

(assert (= (and d!3051 (not res!12115)) b!16220))

(assert (= (and b!16220 res!12116) b!16221))

(declare-fun b_lambda!1255 () Bool)

(assert (=> (not b_lambda!1255) (not b!16220)))

(declare-fun t!3073 () Bool)

(declare-fun tb!539 () Bool)

(assert (=> (and start!2776 (= p!191 p!191) t!3073) tb!539))

(declare-fun result!905 () Bool)

(assert (=> tb!539 (= result!905 true)))

(assert (=> b!16220 t!3073))

(declare-fun b_and!1127 () Bool)

(assert (= b_and!1125 (and (=> t!3073 result!905) b_and!1127)))

(declare-fun m!11265 () Bool)

(assert (=> b!16220 m!11265))

(declare-fun m!11267 () Bool)

(assert (=> b!16221 m!11267))

(assert (=> b!16174 d!3051))

(declare-fun d!3057 () Bool)

(assert (=> d!3057 (forall!143 (toList!263 (-!30 lt!3965 a!507)) p!191)))

(declare-fun lt!3997 () Unit!320)

(declare-fun choose!185 (ListLongMap!495 Int (_ BitVec 64)) Unit!320)

(assert (=> d!3057 (= lt!3997 (choose!185 lt!3965 p!191 a!507))))

(assert (=> d!3057 (forall!143 (toList!263 lt!3965) p!191)))

(assert (=> d!3057 (= (removeValidProp!20 lt!3965 p!191 a!507) lt!3997)))

(declare-fun bs!768 () Bool)

(assert (= bs!768 d!3057))

(assert (=> bs!768 m!11179))

(assert (=> bs!768 m!11185))

(declare-fun m!11289 () Bool)

(assert (=> bs!768 m!11289))

(assert (=> bs!768 m!11173))

(assert (=> b!16174 d!3057))

(declare-fun d!3071 () Bool)

(declare-fun lt!3999 () ListLongMap!495)

(assert (=> d!3071 (not (contains!194 lt!3999 a!507))))

(assert (=> d!3071 (= lt!3999 (ListLongMap!496 (removeStrictlySorted!17 (toList!263 lt!3965) a!507)))))

(assert (=> d!3071 (= (-!30 lt!3965 a!507) lt!3999)))

(declare-fun bs!770 () Bool)

(assert (= bs!770 d!3071))

(declare-fun m!11293 () Bool)

(assert (=> bs!770 m!11293))

(declare-fun m!11295 () Bool)

(assert (=> bs!770 m!11295))

(assert (=> b!16174 d!3071))

(declare-fun d!3075 () Bool)

(declare-fun res!12125 () Bool)

(declare-fun e!9989 () Bool)

(assert (=> d!3075 (=> res!12125 e!9989)))

(assert (=> d!3075 (= res!12125 (is-Nil!518 (toList!263 lt!3965)))))

(assert (=> d!3075 (= (forall!143 (toList!263 lt!3965) p!191) e!9989)))

(declare-fun b!16230 () Bool)

(declare-fun e!9990 () Bool)

(assert (=> b!16230 (= e!9989 e!9990)))

(declare-fun res!12126 () Bool)

(assert (=> b!16230 (=> (not res!12126) (not e!9990))))

(assert (=> b!16230 (= res!12126 (dynLambda!126 p!191 (h!1083 (toList!263 lt!3965))))))

(declare-fun b!16231 () Bool)

(assert (=> b!16231 (= e!9990 (forall!143 (t!3061 (toList!263 lt!3965)) p!191))))

(assert (= (and d!3075 (not res!12125)) b!16230))

(assert (= (and b!16230 res!12126) b!16231))

(declare-fun b_lambda!1265 () Bool)

(assert (=> (not b_lambda!1265) (not b!16230)))

(declare-fun t!3083 () Bool)

(declare-fun tb!549 () Bool)

(assert (=> (and start!2776 (= p!191 p!191) t!3083) tb!549))

(declare-fun result!915 () Bool)

(assert (=> tb!549 (= result!915 true)))

(assert (=> b!16230 t!3083))

(declare-fun b_and!1137 () Bool)

(assert (= b_and!1127 (and (=> t!3083 result!915) b_and!1137)))

(declare-fun m!11303 () Bool)

(assert (=> b!16230 m!11303))

(declare-fun m!11305 () Bool)

(assert (=> b!16231 m!11305))

(assert (=> b!16173 d!3075))

(declare-fun d!3081 () Bool)

(declare-fun tail!84 (List!521) List!521)

(assert (=> d!3081 (= (tail!80 lm!221) (ListLongMap!496 (tail!84 (toList!263 lm!221))))))

(declare-fun bs!772 () Bool)

(assert (= bs!772 d!3081))

(declare-fun m!11315 () Bool)

(assert (=> bs!772 m!11315))

(assert (=> b!16173 d!3081))

(declare-fun d!3087 () Bool)

(declare-fun isEmpty!161 (List!521) Bool)

(assert (=> d!3087 (= (isEmpty!156 lm!221) (isEmpty!161 (toList!263 lm!221)))))

(declare-fun bs!775 () Bool)

(assert (= bs!775 d!3087))

(declare-fun m!11321 () Bool)

(assert (=> bs!775 m!11321))

(assert (=> b!16172 d!3087))

(declare-fun b!16250 () Bool)

(declare-fun e!10003 () Bool)

(declare-fun tp_is_empty!833 () Bool)

(declare-fun tp!2876 () Bool)

(assert (=> b!16250 (= e!10003 (and tp_is_empty!833 tp!2876))))

(assert (=> b!16175 (= tp!2854 e!10003)))

(assert (= (and b!16175 (is-Cons!517 (toList!263 lm!221))) b!16250))

(declare-fun b_lambda!1287 () Bool)

(assert (= b_lambda!1247 (or (and start!2776 b_free!565) b_lambda!1287)))

(declare-fun b_lambda!1289 () Bool)

(assert (= b_lambda!1265 (or (and start!2776 b_free!565) b_lambda!1289)))

(declare-fun b_lambda!1291 () Bool)

(assert (= b_lambda!1255 (or (and start!2776 b_free!565) b_lambda!1291)))

(declare-fun b_lambda!1293 () Bool)

(assert (= b_lambda!1253 (or (and start!2776 b_free!565) b_lambda!1293)))

(push 1)

(assert (not d!3071))

(assert b_and!1137)

(assert (not b!16231))

(assert (not b!16205))

(assert (not b_lambda!1291))

(assert (not d!3037))

(assert (not d!3081))

(assert (not d!3087))

(assert (not b_lambda!1287))

(assert (not b_next!565))

(assert (not b_lambda!1293))

(assert (not b!16219))

(assert tp_is_empty!833)

(assert (not b!16250))

(assert (not d!3041))

(assert (not d!3057))

(assert (not b_lambda!1289))

(assert (not b!16221))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1137)

(assert (not b_next!565))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3091 () Bool)

(assert (=> d!3091 (= (isEmpty!161 (toList!263 lm!221)) (is-Nil!518 (toList!263 lm!221)))))

(assert (=> d!3087 d!3091))

(declare-fun d!3093 () Bool)

(assert (=> d!3093 (= (tail!84 (toList!263 lm!221)) (t!3061 (toList!263 lm!221)))))

(assert (=> d!3081 d!3093))

(declare-fun d!3095 () Bool)

(declare-fun e!10014 () Bool)

(assert (=> d!3095 e!10014))

(declare-fun res!12136 () Bool)

(assert (=> d!3095 (=> res!12136 e!10014)))

(declare-fun lt!4020 () Bool)

(assert (=> d!3095 (= res!12136 (not lt!4020))))

(declare-fun lt!4021 () Bool)

(assert (=> d!3095 (= lt!4020 lt!4021)))

(declare-fun lt!4023 () Unit!320)

(declare-fun e!10015 () Unit!320)

(assert (=> d!3095 (= lt!4023 e!10015)))

(declare-fun c!1526 () Bool)

(assert (=> d!3095 (= c!1526 lt!4021)))

(declare-fun containsKey!18 (List!521 (_ BitVec 64)) Bool)

(assert (=> d!3095 (= lt!4021 (containsKey!18 (toList!263 lt!3999) a!507))))

(assert (=> d!3095 (= (contains!194 lt!3999 a!507) lt!4020)))

(declare-fun b!16266 () Bool)

(declare-fun lt!4022 () Unit!320)

(assert (=> b!16266 (= e!10015 lt!4022)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!15 (List!521 (_ BitVec 64)) Unit!320)

(assert (=> b!16266 (= lt!4022 (lemmaContainsKeyImpliesGetValueByKeyDefined!15 (toList!263 lt!3999) a!507))))

(declare-datatypes ((Option!60 0))(
  ( (Some!59 (v!1389 B!686)) (None!58) )
))
(declare-fun isDefined!16 (Option!60) Bool)

(declare-fun getValueByKey!54 (List!521 (_ BitVec 64)) Option!60)

(assert (=> b!16266 (isDefined!16 (getValueByKey!54 (toList!263 lt!3999) a!507))))

(declare-fun b!16267 () Bool)

(declare-fun Unit!327 () Unit!320)

(assert (=> b!16267 (= e!10015 Unit!327)))

(declare-fun b!16268 () Bool)

(assert (=> b!16268 (= e!10014 (isDefined!16 (getValueByKey!54 (toList!263 lt!3999) a!507)))))

(assert (= (and d!3095 c!1526) b!16266))

(assert (= (and d!3095 (not c!1526)) b!16267))

(assert (= (and d!3095 (not res!12136)) b!16268))

(declare-fun m!11331 () Bool)

(assert (=> d!3095 m!11331))

(declare-fun m!11333 () Bool)

(assert (=> b!16266 m!11333))

(declare-fun m!11335 () Bool)

(assert (=> b!16266 m!11335))

(assert (=> b!16266 m!11335))

(declare-fun m!11337 () Bool)

(assert (=> b!16266 m!11337))

(assert (=> b!16268 m!11335))

(assert (=> b!16268 m!11335))

(assert (=> b!16268 m!11337))

(assert (=> d!3071 d!3095))

(declare-fun d!3099 () Bool)

(declare-fun e!10038 () Bool)

(assert (=> d!3099 e!10038))

(declare-fun res!12148 () Bool)

(assert (=> d!3099 (=> (not res!12148) (not e!10038))))

(declare-fun lt!4029 () List!521)

(assert (=> d!3099 (= res!12148 (isStrictlySorted!161 lt!4029))))

(declare-fun e!10039 () List!521)

(assert (=> d!3099 (= lt!4029 e!10039)))

(declare-fun c!1537 () Bool)

(assert (=> d!3099 (= c!1537 (and (is-Cons!517 (toList!263 lt!3965)) (= (_1!332 (h!1083 (toList!263 lt!3965))) a!507)))))

(assert (=> d!3099 (isStrictlySorted!161 (toList!263 lt!3965))))

(assert (=> d!3099 (= (removeStrictlySorted!17 (toList!263 lt!3965) a!507) lt!4029)))

(declare-fun b!16300 () Bool)

(assert (=> b!16300 (= e!10038 (not (containsKey!18 lt!4029 a!507)))))

(declare-fun b!16301 () Bool)

(declare-fun e!10037 () List!521)

(declare-fun $colon$colon!25 (List!521 tuple2!664) List!521)

(assert (=> b!16301 (= e!10037 ($colon$colon!25 (removeStrictlySorted!17 (t!3061 (toList!263 lt!3965)) a!507) (h!1083 (toList!263 lt!3965))))))

(declare-fun b!16302 () Bool)

(assert (=> b!16302 (= e!10039 (t!3061 (toList!263 lt!3965)))))

(declare-fun b!16303 () Bool)

(assert (=> b!16303 (= e!10037 Nil!518)))

(declare-fun b!16304 () Bool)

(assert (=> b!16304 (= e!10039 e!10037)))

(declare-fun c!1538 () Bool)

(assert (=> b!16304 (= c!1538 (and (is-Cons!517 (toList!263 lt!3965)) (not (= (_1!332 (h!1083 (toList!263 lt!3965))) a!507))))))

(assert (= (and d!3099 c!1537) b!16302))

(assert (= (and d!3099 (not c!1537)) b!16304))

(assert (= (and b!16304 c!1538) b!16301))

(assert (= (and b!16304 (not c!1538)) b!16303))

(assert (= (and d!3099 res!12148) b!16300))

(declare-fun m!11359 () Bool)

(assert (=> d!3099 m!11359))

(declare-fun m!11361 () Bool)

(assert (=> d!3099 m!11361))

(declare-fun m!11363 () Bool)

(assert (=> b!16300 m!11363))

(declare-fun m!11365 () Bool)

(assert (=> b!16301 m!11365))

(assert (=> b!16301 m!11365))

(declare-fun m!11367 () Bool)

(assert (=> b!16301 m!11367))

(assert (=> d!3071 d!3099))

(declare-fun d!3117 () Bool)

(declare-fun res!12149 () Bool)

(declare-fun e!10040 () Bool)

(assert (=> d!3117 (=> res!12149 e!10040)))

(assert (=> d!3117 (= res!12149 (is-Nil!518 (t!3061 (toList!263 lt!3965))))))

(assert (=> d!3117 (= (forall!143 (t!3061 (toList!263 lt!3965)) p!191) e!10040)))

(declare-fun b!16305 () Bool)

(declare-fun e!10041 () Bool)

(assert (=> b!16305 (= e!10040 e!10041)))

(declare-fun res!12150 () Bool)

(assert (=> b!16305 (=> (not res!12150) (not e!10041))))

(assert (=> b!16305 (= res!12150 (dynLambda!126 p!191 (h!1083 (t!3061 (toList!263 lt!3965)))))))

(declare-fun b!16306 () Bool)

(assert (=> b!16306 (= e!10041 (forall!143 (t!3061 (t!3061 (toList!263 lt!3965))) p!191))))

(assert (= (and d!3117 (not res!12149)) b!16305))

(assert (= (and b!16305 res!12150) b!16306))

(declare-fun b_lambda!1301 () Bool)

(assert (=> (not b_lambda!1301) (not b!16305)))

(declare-fun t!3095 () Bool)

(declare-fun tb!561 () Bool)

(assert (=> (and start!2776 (= p!191 p!191) t!3095) tb!561))

(declare-fun result!933 () Bool)

(assert (=> tb!561 (= result!933 true)))

(assert (=> b!16305 t!3095))

(declare-fun b_and!1149 () Bool)

(assert (= b_and!1137 (and (=> t!3095 result!933) b_and!1149)))

(declare-fun m!11369 () Bool)

(assert (=> b!16305 m!11369))

(declare-fun m!11371 () Bool)

(assert (=> b!16306 m!11371))

(assert (=> b!16231 d!3117))

(declare-fun d!3119 () Bool)

(declare-fun res!12155 () Bool)

(declare-fun e!10048 () Bool)

(assert (=> d!3119 (=> res!12155 e!10048)))

(assert (=> d!3119 (= res!12155 (or (is-Nil!518 (toList!263 lm!221)) (is-Nil!518 (t!3061 (toList!263 lm!221)))))))

(assert (=> d!3119 (= (isStrictlySorted!161 (toList!263 lm!221)) e!10048)))

(declare-fun b!16315 () Bool)

(declare-fun e!10049 () Bool)

(assert (=> b!16315 (= e!10048 e!10049)))

(declare-fun res!12156 () Bool)

(assert (=> b!16315 (=> (not res!12156) (not e!10049))))

(assert (=> b!16315 (= res!12156 (bvslt (_1!332 (h!1083 (toList!263 lm!221))) (_1!332 (h!1083 (t!3061 (toList!263 lm!221))))))))

(declare-fun b!16316 () Bool)

(assert (=> b!16316 (= e!10049 (isStrictlySorted!161 (t!3061 (toList!263 lm!221))))))

(assert (= (and d!3119 (not res!12155)) b!16315))

(assert (= (and b!16315 res!12156) b!16316))

(declare-fun m!11373 () Bool)

(assert (=> b!16316 m!11373))

(assert (=> d!3037 d!3119))

(declare-fun d!3123 () Bool)

(declare-fun res!12159 () Bool)

(declare-fun e!10052 () Bool)

(assert (=> d!3123 (=> res!12159 e!10052)))

(assert (=> d!3123 (= res!12159 (is-Nil!518 (t!3061 (toList!263 lm!221))))))

(assert (=> d!3123 (= (forall!143 (t!3061 (toList!263 lm!221)) p!191) e!10052)))

(declare-fun b!16319 () Bool)

(declare-fun e!10053 () Bool)

(assert (=> b!16319 (= e!10052 e!10053)))

(declare-fun res!12160 () Bool)

(assert (=> b!16319 (=> (not res!12160) (not e!10053))))

(assert (=> b!16319 (= res!12160 (dynLambda!126 p!191 (h!1083 (t!3061 (toList!263 lm!221)))))))

(declare-fun b!16320 () Bool)

(assert (=> b!16320 (= e!10053 (forall!143 (t!3061 (t!3061 (toList!263 lm!221))) p!191))))

(assert (= (and d!3123 (not res!12159)) b!16319))

(assert (= (and b!16319 res!12160) b!16320))

(declare-fun b_lambda!1303 () Bool)

(assert (=> (not b_lambda!1303) (not b!16319)))

(declare-fun t!3097 () Bool)

(declare-fun tb!563 () Bool)

(assert (=> (and start!2776 (= p!191 p!191) t!3097) tb!563))

(declare-fun result!935 () Bool)

(assert (=> tb!563 (= result!935 true)))

(assert (=> b!16319 t!3097))

(declare-fun b_and!1151 () Bool)

(assert (= b_and!1149 (and (=> t!3097 result!935) b_and!1151)))

(declare-fun m!11375 () Bool)

(assert (=> b!16319 m!11375))

(declare-fun m!11377 () Bool)

(assert (=> b!16320 m!11377))

(assert (=> b!16205 d!3123))

(declare-fun d!3125 () Bool)

(declare-fun e!10058 () Bool)

(assert (=> d!3125 e!10058))

(declare-fun res!12165 () Bool)

(assert (=> d!3125 (=> res!12165 e!10058)))

(declare-fun lt!4038 () Bool)

(assert (=> d!3125 (= res!12165 (not lt!4038))))

(declare-fun lt!4039 () Bool)

(assert (=> d!3125 (= lt!4038 lt!4039)))

(declare-fun lt!4041 () Unit!320)

(declare-fun e!10059 () Unit!320)

(assert (=> d!3125 (= lt!4041 e!10059)))

(declare-fun c!1541 () Bool)

(assert (=> d!3125 (= c!1541 lt!4039)))

(assert (=> d!3125 (= lt!4039 (containsKey!18 (toList!263 lt!3984) a!507))))

(assert (=> d!3125 (= (contains!194 lt!3984 a!507) lt!4038)))

(declare-fun b!16325 () Bool)

(declare-fun lt!4040 () Unit!320)

(assert (=> b!16325 (= e!10059 lt!4040)))

(assert (=> b!16325 (= lt!4040 (lemmaContainsKeyImpliesGetValueByKeyDefined!15 (toList!263 lt!3984) a!507))))

(assert (=> b!16325 (isDefined!16 (getValueByKey!54 (toList!263 lt!3984) a!507))))

(declare-fun b!16326 () Bool)

(declare-fun Unit!329 () Unit!320)

(assert (=> b!16326 (= e!10059 Unit!329)))

(declare-fun b!16327 () Bool)

(assert (=> b!16327 (= e!10058 (isDefined!16 (getValueByKey!54 (toList!263 lt!3984) a!507)))))

(assert (= (and d!3125 c!1541) b!16325))

(assert (= (and d!3125 (not c!1541)) b!16326))

(assert (= (and d!3125 (not res!12165)) b!16327))

(declare-fun m!11379 () Bool)

(assert (=> d!3125 m!11379))

(declare-fun m!11381 () Bool)

(assert (=> b!16325 m!11381))

(declare-fun m!11383 () Bool)

(assert (=> b!16325 m!11383))

(assert (=> b!16325 m!11383))

(declare-fun m!11385 () Bool)

(assert (=> b!16325 m!11385))

(assert (=> b!16327 m!11383))

(assert (=> b!16327 m!11383))

(assert (=> b!16327 m!11385))

(assert (=> d!3041 d!3125))

(declare-fun d!3127 () Bool)

(declare-fun e!10065 () Bool)

(assert (=> d!3127 e!10065))

(declare-fun res!12169 () Bool)

(assert (=> d!3127 (=> (not res!12169) (not e!10065))))

(declare-fun lt!4046 () List!521)

(assert (=> d!3127 (= res!12169 (isStrictlySorted!161 lt!4046))))

(declare-fun e!10066 () List!521)

(assert (=> d!3127 (= lt!4046 e!10066)))

(declare-fun c!1543 () Bool)

(assert (=> d!3127 (= c!1543 (and (is-Cons!517 (toList!263 lm!221)) (= (_1!332 (h!1083 (toList!263 lm!221))) a!507)))))

(assert (=> d!3127 (isStrictlySorted!161 (toList!263 lm!221))))

(assert (=> d!3127 (= (removeStrictlySorted!17 (toList!263 lm!221) a!507) lt!4046)))

(declare-fun b!16333 () Bool)

(assert (=> b!16333 (= e!10065 (not (containsKey!18 lt!4046 a!507)))))

(declare-fun b!16334 () Bool)

(declare-fun e!10064 () List!521)

(assert (=> b!16334 (= e!10064 ($colon$colon!25 (removeStrictlySorted!17 (t!3061 (toList!263 lm!221)) a!507) (h!1083 (toList!263 lm!221))))))

(declare-fun b!16335 () Bool)

(assert (=> b!16335 (= e!10066 (t!3061 (toList!263 lm!221)))))

(declare-fun b!16336 () Bool)

(assert (=> b!16336 (= e!10064 Nil!518)))

(declare-fun b!16337 () Bool)

(assert (=> b!16337 (= e!10066 e!10064)))

(declare-fun c!1544 () Bool)

(assert (=> b!16337 (= c!1544 (and (is-Cons!517 (toList!263 lm!221)) (not (= (_1!332 (h!1083 (toList!263 lm!221))) a!507))))))

(assert (= (and d!3127 c!1543) b!16335))

(assert (= (and d!3127 (not c!1543)) b!16337))

(assert (= (and b!16337 c!1544) b!16334))

(assert (= (and b!16337 (not c!1544)) b!16336))

(assert (= (and d!3127 res!12169) b!16333))

(declare-fun m!11397 () Bool)

(assert (=> d!3127 m!11397))

(assert (=> d!3127 m!11237))

(declare-fun m!11399 () Bool)

(assert (=> b!16333 m!11399))

(declare-fun m!11401 () Bool)

(assert (=> b!16334 m!11401))

(assert (=> b!16334 m!11401))

(declare-fun m!11403 () Bool)

(assert (=> b!16334 m!11403))

(assert (=> d!3041 d!3127))

(declare-fun d!3133 () Bool)

(declare-fun res!12172 () Bool)

(declare-fun e!10069 () Bool)

(assert (=> d!3133 (=> res!12172 e!10069)))

(assert (=> d!3133 (= res!12172 (is-Nil!518 (t!3061 (toList!263 (-!30 lt!3965 a!507)))))))

(assert (=> d!3133 (= (forall!143 (t!3061 (toList!263 (-!30 lt!3965 a!507))) p!191) e!10069)))

(declare-fun b!16340 () Bool)

(declare-fun e!10070 () Bool)

(assert (=> b!16340 (= e!10069 e!10070)))

(declare-fun res!12173 () Bool)

(assert (=> b!16340 (=> (not res!12173) (not e!10070))))

(assert (=> b!16340 (= res!12173 (dynLambda!126 p!191 (h!1083 (t!3061 (toList!263 (-!30 lt!3965 a!507))))))))

(declare-fun b!16341 () Bool)

(assert (=> b!16341 (= e!10070 (forall!143 (t!3061 (t!3061 (toList!263 (-!30 lt!3965 a!507)))) p!191))))

(assert (= (and d!3133 (not res!12172)) b!16340))

(assert (= (and b!16340 res!12173) b!16341))

(declare-fun b_lambda!1307 () Bool)

(assert (=> (not b_lambda!1307) (not b!16340)))

(declare-fun t!3101 () Bool)

(declare-fun tb!567 () Bool)

(assert (=> (and start!2776 (= p!191 p!191) t!3101) tb!567))

(declare-fun result!939 () Bool)

(assert (=> tb!567 (= result!939 true)))

(assert (=> b!16340 t!3101))

(declare-fun b_and!1155 () Bool)

(assert (= b_and!1151 (and (=> t!3101 result!939) b_and!1155)))

(declare-fun m!11409 () Bool)

(assert (=> b!16340 m!11409))

(declare-fun m!11413 () Bool)

(assert (=> b!16341 m!11413))

(assert (=> b!16221 d!3133))

(declare-fun d!3137 () Bool)

(declare-fun res!12175 () Bool)

(declare-fun e!10073 () Bool)

(assert (=> d!3137 (=> res!12175 e!10073)))

(assert (=> d!3137 (= res!12175 (is-Nil!518 (t!3061 (toList!263 (-!30 lm!221 a!507)))))))

(assert (=> d!3137 (= (forall!143 (t!3061 (toList!263 (-!30 lm!221 a!507))) p!191) e!10073)))

(declare-fun b!16345 () Bool)

(declare-fun e!10074 () Bool)

(assert (=> b!16345 (= e!10073 e!10074)))

(declare-fun res!12176 () Bool)

(assert (=> b!16345 (=> (not res!12176) (not e!10074))))

(assert (=> b!16345 (= res!12176 (dynLambda!126 p!191 (h!1083 (t!3061 (toList!263 (-!30 lm!221 a!507))))))))

(declare-fun b!16346 () Bool)

(assert (=> b!16346 (= e!10074 (forall!143 (t!3061 (t!3061 (toList!263 (-!30 lm!221 a!507)))) p!191))))

(assert (= (and d!3137 (not res!12175)) b!16345))

(assert (= (and b!16345 res!12176) b!16346))

(declare-fun b_lambda!1309 () Bool)

(assert (=> (not b_lambda!1309) (not b!16345)))

(declare-fun t!3103 () Bool)

(declare-fun tb!569 () Bool)

(assert (=> (and start!2776 (= p!191 p!191) t!3103) tb!569))

(declare-fun result!941 () Bool)

(assert (=> tb!569 (= result!941 true)))

(assert (=> b!16345 t!3103))

(declare-fun b_and!1157 () Bool)

(assert (= b_and!1155 (and (=> t!3103 result!941) b_and!1157)))

(declare-fun m!11423 () Bool)

(assert (=> b!16345 m!11423))

(declare-fun m!11429 () Bool)

(assert (=> b!16346 m!11429))

(assert (=> b!16219 d!3137))

(assert (=> d!3057 d!3051))

(assert (=> d!3057 d!3071))

(declare-fun d!3141 () Bool)

(assert (=> d!3141 (forall!143 (toList!263 (-!30 lt!3965 a!507)) p!191)))

(assert (=> d!3141 true))

(declare-fun _$31!23 () Unit!320)

(assert (=> d!3141 (= (choose!185 lt!3965 p!191 a!507) _$31!23)))

(declare-fun bs!778 () Bool)

(assert (= bs!778 d!3141))

(assert (=> bs!778 m!11179))

(assert (=> bs!778 m!11185))

(assert (=> d!3057 d!3141))

(assert (=> d!3057 d!3075))

(declare-fun b!16365 () Bool)

(declare-fun e!10087 () Bool)

(declare-fun tp!2878 () Bool)

(assert (=> b!16365 (= e!10087 (and tp_is_empty!833 tp!2878))))

(assert (=> b!16250 (= tp!2876 e!10087)))

(assert (= (and b!16250 (is-Cons!517 (t!3061 (toList!263 lm!221)))) b!16365))

(declare-fun b_lambda!1321 () Bool)

(assert (= b_lambda!1309 (or (and start!2776 b_free!565) b_lambda!1321)))

(declare-fun b_lambda!1323 () Bool)

(assert (= b_lambda!1307 (or (and start!2776 b_free!565) b_lambda!1323)))

(declare-fun b_lambda!1325 () Bool)

(assert (= b_lambda!1301 (or (and start!2776 b_free!565) b_lambda!1325)))

(declare-fun b_lambda!1327 () Bool)

(assert (= b_lambda!1303 (or (and start!2776 b_free!565) b_lambda!1327)))

(push 1)

(assert (not b!16334))

(assert (not b_lambda!1321))

(assert (not d!3125))

(assert (not b!16341))

(assert (not b!16333))

(assert (not b!16365))

(assert (not b_lambda!1291))

(assert (not b_lambda!1289))

(assert (not b!16325))

(assert (not b!16301))

(assert (not b!16268))

(assert (not d!3141))

(assert (not b!16266))

(assert (not b!16320))

(assert (not d!3099))

(assert (not b_lambda!1293))

(assert (not b_lambda!1325))

(assert (not d!3095))

(assert (not d!3127))

(assert (not b!16306))

(assert b_and!1157)

(assert tp_is_empty!833)

(assert (not b_lambda!1323))

(assert (not b!16300))

(assert (not b!16346))

(assert (not b!16316))

(assert (not b_lambda!1327))

(assert (not b_lambda!1287))

(assert (not b_next!565))

(assert (not b!16327))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1157)

(assert (not b_next!565))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3165 () Bool)

(assert (=> d!3165 (isDefined!16 (getValueByKey!54 (toList!263 lt!3999) a!507))))

(declare-fun lt!4062 () Unit!320)

(declare-fun choose!187 (List!521 (_ BitVec 64)) Unit!320)

(assert (=> d!3165 (= lt!4062 (choose!187 (toList!263 lt!3999) a!507))))

(declare-fun e!10121 () Bool)

(assert (=> d!3165 e!10121))

(declare-fun res!12209 () Bool)

(assert (=> d!3165 (=> (not res!12209) (not e!10121))))

(assert (=> d!3165 (= res!12209 (isStrictlySorted!161 (toList!263 lt!3999)))))

(assert (=> d!3165 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!15 (toList!263 lt!3999) a!507) lt!4062)))

(declare-fun b!16404 () Bool)

(assert (=> b!16404 (= e!10121 (containsKey!18 (toList!263 lt!3999) a!507))))

(assert (= (and d!3165 res!12209) b!16404))

(assert (=> d!3165 m!11335))

(assert (=> d!3165 m!11335))

(assert (=> d!3165 m!11337))

(declare-fun m!11489 () Bool)

(assert (=> d!3165 m!11489))

(declare-fun m!11491 () Bool)

(assert (=> d!3165 m!11491))

(assert (=> b!16404 m!11331))

(assert (=> b!16266 d!3165))

(declare-fun d!3173 () Bool)

(declare-fun isEmpty!162 (Option!60) Bool)

(assert (=> d!3173 (= (isDefined!16 (getValueByKey!54 (toList!263 lt!3999) a!507)) (not (isEmpty!162 (getValueByKey!54 (toList!263 lt!3999) a!507))))))

(declare-fun bs!780 () Bool)

(assert (= bs!780 d!3173))

(assert (=> bs!780 m!11335))

(declare-fun m!11493 () Bool)

(assert (=> bs!780 m!11493))

(assert (=> b!16266 d!3173))

(declare-fun b!16438 () Bool)

(declare-fun e!10142 () Option!60)

(assert (=> b!16438 (= e!10142 (getValueByKey!54 (t!3061 (toList!263 lt!3999)) a!507))))

(declare-fun b!16437 () Bool)

(declare-fun e!10141 () Option!60)

(assert (=> b!16437 (= e!10141 e!10142)))

(declare-fun c!1570 () Bool)

(assert (=> b!16437 (= c!1570 (and (is-Cons!517 (toList!263 lt!3999)) (not (= (_1!332 (h!1083 (toList!263 lt!3999))) a!507))))))

(declare-fun b!16439 () Bool)

(assert (=> b!16439 (= e!10142 None!58)))

(declare-fun b!16436 () Bool)

(assert (=> b!16436 (= e!10141 (Some!59 (_2!332 (h!1083 (toList!263 lt!3999)))))))

(declare-fun d!3175 () Bool)

(declare-fun c!1569 () Bool)

(assert (=> d!3175 (= c!1569 (and (is-Cons!517 (toList!263 lt!3999)) (= (_1!332 (h!1083 (toList!263 lt!3999))) a!507)))))

(assert (=> d!3175 (= (getValueByKey!54 (toList!263 lt!3999) a!507) e!10141)))

(assert (= (and d!3175 c!1569) b!16436))

(assert (= (and d!3175 (not c!1569)) b!16437))

(assert (= (and b!16437 c!1570) b!16438))

(assert (= (and b!16437 (not c!1570)) b!16439))

(declare-fun m!11503 () Bool)

(assert (=> b!16438 m!11503))

(assert (=> b!16266 d!3175))

(declare-fun d!3187 () Bool)

(declare-fun res!12217 () Bool)

(declare-fun e!10143 () Bool)

(assert (=> d!3187 (=> res!12217 e!10143)))

(assert (=> d!3187 (= res!12217 (or (is-Nil!518 (t!3061 (toList!263 lm!221))) (is-Nil!518 (t!3061 (t!3061 (toList!263 lm!221))))))))

(assert (=> d!3187 (= (isStrictlySorted!161 (t!3061 (toList!263 lm!221))) e!10143)))

(declare-fun b!16440 () Bool)

(declare-fun e!10144 () Bool)

(assert (=> b!16440 (= e!10143 e!10144)))

(declare-fun res!12218 () Bool)

(assert (=> b!16440 (=> (not res!12218) (not e!10144))))

(assert (=> b!16440 (= res!12218 (bvslt (_1!332 (h!1083 (t!3061 (toList!263 lm!221)))) (_1!332 (h!1083 (t!3061 (t!3061 (toList!263 lm!221)))))))))

(declare-fun b!16441 () Bool)

(assert (=> b!16441 (= e!10144 (isStrictlySorted!161 (t!3061 (t!3061 (toList!263 lm!221)))))))

(assert (= (and d!3187 (not res!12217)) b!16440))

(assert (= (and b!16440 res!12218) b!16441))

(declare-fun m!11513 () Bool)

(assert (=> b!16441 m!11513))

(assert (=> b!16316 d!3187))

(declare-fun d!3191 () Bool)

(assert (=> d!3191 (= ($colon$colon!25 (removeStrictlySorted!17 (t!3061 (toList!263 lm!221)) a!507) (h!1083 (toList!263 lm!221))) (Cons!517 (h!1083 (toList!263 lm!221)) (removeStrictlySorted!17 (t!3061 (toList!263 lm!221)) a!507)))))

(assert (=> b!16334 d!3191))

(declare-fun d!3193 () Bool)

(declare-fun e!10146 () Bool)

(assert (=> d!3193 e!10146))

(declare-fun res!12219 () Bool)

(assert (=> d!3193 (=> (not res!12219) (not e!10146))))

(declare-fun lt!4064 () List!521)

(assert (=> d!3193 (= res!12219 (isStrictlySorted!161 lt!4064))))

(declare-fun e!10147 () List!521)

(assert (=> d!3193 (= lt!4064 e!10147)))

(declare-fun c!1571 () Bool)

(assert (=> d!3193 (= c!1571 (and (is-Cons!517 (t!3061 (toList!263 lm!221))) (= (_1!332 (h!1083 (t!3061 (toList!263 lm!221)))) a!507)))))

(assert (=> d!3193 (isStrictlySorted!161 (t!3061 (toList!263 lm!221)))))

(assert (=> d!3193 (= (removeStrictlySorted!17 (t!3061 (toList!263 lm!221)) a!507) lt!4064)))

(declare-fun b!16442 () Bool)

(assert (=> b!16442 (= e!10146 (not (containsKey!18 lt!4064 a!507)))))

(declare-fun b!16443 () Bool)

(declare-fun e!10145 () List!521)

(assert (=> b!16443 (= e!10145 ($colon$colon!25 (removeStrictlySorted!17 (t!3061 (t!3061 (toList!263 lm!221))) a!507) (h!1083 (t!3061 (toList!263 lm!221)))))))

(declare-fun b!16444 () Bool)

(assert (=> b!16444 (= e!10147 (t!3061 (t!3061 (toList!263 lm!221))))))

(declare-fun b!16445 () Bool)

(assert (=> b!16445 (= e!10145 Nil!518)))

(declare-fun b!16446 () Bool)

(assert (=> b!16446 (= e!10147 e!10145)))

(declare-fun c!1572 () Bool)

(assert (=> b!16446 (= c!1572 (and (is-Cons!517 (t!3061 (toList!263 lm!221))) (not (= (_1!332 (h!1083 (t!3061 (toList!263 lm!221)))) a!507))))))

(assert (= (and d!3193 c!1571) b!16444))

(assert (= (and d!3193 (not c!1571)) b!16446))

(assert (= (and b!16446 c!1572) b!16443))

(assert (= (and b!16446 (not c!1572)) b!16445))

(assert (= (and d!3193 res!12219) b!16442))

(declare-fun m!11515 () Bool)

(assert (=> d!3193 m!11515))

(assert (=> d!3193 m!11373))

(declare-fun m!11517 () Bool)

(assert (=> b!16442 m!11517))

(declare-fun m!11519 () Bool)

(assert (=> b!16443 m!11519))

(assert (=> b!16443 m!11519))

(declare-fun m!11521 () Bool)

(assert (=> b!16443 m!11521))

(assert (=> b!16334 d!3193))

(declare-fun d!3195 () Bool)

(declare-fun res!12222 () Bool)

(declare-fun e!10150 () Bool)

(assert (=> d!3195 (=> res!12222 e!10150)))

(assert (=> d!3195 (= res!12222 (is-Nil!518 (t!3061 (t!3061 (toList!263 (-!30 lm!221 a!507))))))))

(assert (=> d!3195 (= (forall!143 (t!3061 (t!3061 (toList!263 (-!30 lm!221 a!507)))) p!191) e!10150)))

(declare-fun b!16449 () Bool)

(declare-fun e!10151 () Bool)

(assert (=> b!16449 (= e!10150 e!10151)))

(declare-fun res!12223 () Bool)

(assert (=> b!16449 (=> (not res!12223) (not e!10151))))

(assert (=> b!16449 (= res!12223 (dynLambda!126 p!191 (h!1083 (t!3061 (t!3061 (toList!263 (-!30 lm!221 a!507)))))))))

(declare-fun b!16450 () Bool)

(assert (=> b!16450 (= e!10151 (forall!143 (t!3061 (t!3061 (t!3061 (toList!263 (-!30 lm!221 a!507))))) p!191))))

(assert (= (and d!3195 (not res!12222)) b!16449))

(assert (= (and b!16449 res!12223) b!16450))

(declare-fun b_lambda!1345 () Bool)

(assert (=> (not b_lambda!1345) (not b!16449)))

(declare-fun t!3117 () Bool)

(declare-fun tb!581 () Bool)

(assert (=> (and start!2776 (= p!191 p!191) t!3117) tb!581))

(declare-fun result!953 () Bool)

(assert (=> tb!581 (= result!953 true)))

(assert (=> b!16449 t!3117))

(declare-fun b_and!1169 () Bool)

(assert (= b_and!1157 (and (=> t!3117 result!953) b_and!1169)))

(declare-fun m!11525 () Bool)

(assert (=> b!16449 m!11525))

(declare-fun m!11529 () Bool)

(assert (=> b!16450 m!11529))

(assert (=> b!16346 d!3195))

(declare-fun d!3197 () Bool)

(declare-fun res!12237 () Bool)

(declare-fun e!10169 () Bool)

(assert (=> d!3197 (=> res!12237 e!10169)))

(assert (=> d!3197 (= res!12237 (and (is-Cons!517 lt!4046) (= (_1!332 (h!1083 lt!4046)) a!507)))))

(assert (=> d!3197 (= (containsKey!18 lt!4046 a!507) e!10169)))

(declare-fun b!16472 () Bool)

(declare-fun e!10170 () Bool)

(assert (=> b!16472 (= e!10169 e!10170)))

(declare-fun res!12238 () Bool)

(assert (=> b!16472 (=> (not res!12238) (not e!10170))))

(assert (=> b!16472 (= res!12238 (and (or (not (is-Cons!517 lt!4046)) (bvsle (_1!332 (h!1083 lt!4046)) a!507)) (is-Cons!517 lt!4046) (bvslt (_1!332 (h!1083 lt!4046)) a!507)))))

(declare-fun b!16473 () Bool)

(assert (=> b!16473 (= e!10170 (containsKey!18 (t!3061 lt!4046) a!507))))

(assert (= (and d!3197 (not res!12237)) b!16472))

(assert (= (and b!16472 res!12238) b!16473))

(declare-fun m!11549 () Bool)

(assert (=> b!16473 m!11549))

(assert (=> b!16333 d!3197))

(declare-fun d!3215 () Bool)

(declare-fun res!12239 () Bool)

(declare-fun e!10171 () Bool)

(assert (=> d!3215 (=> res!12239 e!10171)))

(assert (=> d!3215 (= res!12239 (and (is-Cons!517 (toList!263 lt!3999)) (= (_1!332 (h!1083 (toList!263 lt!3999))) a!507)))))

(assert (=> d!3215 (= (containsKey!18 (toList!263 lt!3999) a!507) e!10171)))

(declare-fun b!16474 () Bool)

(declare-fun e!10172 () Bool)

(assert (=> b!16474 (= e!10171 e!10172)))

(declare-fun res!12240 () Bool)

(assert (=> b!16474 (=> (not res!12240) (not e!10172))))

(assert (=> b!16474 (= res!12240 (and (or (not (is-Cons!517 (toList!263 lt!3999))) (bvsle (_1!332 (h!1083 (toList!263 lt!3999))) a!507)) (is-Cons!517 (toList!263 lt!3999)) (bvslt (_1!332 (h!1083 (toList!263 lt!3999))) a!507)))))

(declare-fun b!16475 () Bool)

(assert (=> b!16475 (= e!10172 (containsKey!18 (t!3061 (toList!263 lt!3999)) a!507))))

(assert (= (and d!3215 (not res!12239)) b!16474))

(assert (= (and b!16474 res!12240) b!16475))

(declare-fun m!11557 () Bool)

(assert (=> b!16475 m!11557))

(assert (=> d!3095 d!3215))

(assert (=> b!16268 d!3173))

(assert (=> b!16268 d!3175))

(declare-fun d!3219 () Bool)

(assert (=> d!3219 (isDefined!16 (getValueByKey!54 (toList!263 lt!3984) a!507))))

(declare-fun lt!4070 () Unit!320)

(assert (=> d!3219 (= lt!4070 (choose!187 (toList!263 lt!3984) a!507))))

(declare-fun e!10175 () Bool)

(assert (=> d!3219 e!10175))

(declare-fun res!12243 () Bool)

(assert (=> d!3219 (=> (not res!12243) (not e!10175))))

(assert (=> d!3219 (= res!12243 (isStrictlySorted!161 (toList!263 lt!3984)))))

(assert (=> d!3219 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!15 (toList!263 lt!3984) a!507) lt!4070)))

(declare-fun b!16478 () Bool)

(assert (=> b!16478 (= e!10175 (containsKey!18 (toList!263 lt!3984) a!507))))

(assert (= (and d!3219 res!12243) b!16478))

(assert (=> d!3219 m!11383))

(assert (=> d!3219 m!11383))

(assert (=> d!3219 m!11385))

(declare-fun m!11563 () Bool)

(assert (=> d!3219 m!11563))

(declare-fun m!11565 () Bool)

(assert (=> d!3219 m!11565))

(assert (=> b!16478 m!11379))

(assert (=> b!16325 d!3219))

(declare-fun d!3223 () Bool)

(assert (=> d!3223 (= (isDefined!16 (getValueByKey!54 (toList!263 lt!3984) a!507)) (not (isEmpty!162 (getValueByKey!54 (toList!263 lt!3984) a!507))))))

(declare-fun bs!782 () Bool)

(assert (= bs!782 d!3223))

(assert (=> bs!782 m!11383))

(declare-fun m!11567 () Bool)

(assert (=> bs!782 m!11567))

(assert (=> b!16325 d!3223))

(declare-fun b!16483 () Bool)

(declare-fun e!10179 () Option!60)

(assert (=> b!16483 (= e!10179 (getValueByKey!54 (t!3061 (toList!263 lt!3984)) a!507))))

(declare-fun b!16482 () Bool)

(declare-fun e!10178 () Option!60)

(assert (=> b!16482 (= e!10178 e!10179)))

(declare-fun c!1578 () Bool)

(assert (=> b!16482 (= c!1578 (and (is-Cons!517 (toList!263 lt!3984)) (not (= (_1!332 (h!1083 (toList!263 lt!3984))) a!507))))))

(declare-fun b!16484 () Bool)

(assert (=> b!16484 (= e!10179 None!58)))

(declare-fun b!16481 () Bool)

(assert (=> b!16481 (= e!10178 (Some!59 (_2!332 (h!1083 (toList!263 lt!3984)))))))

(declare-fun d!3225 () Bool)

(declare-fun c!1577 () Bool)

(assert (=> d!3225 (= c!1577 (and (is-Cons!517 (toList!263 lt!3984)) (= (_1!332 (h!1083 (toList!263 lt!3984))) a!507)))))

(assert (=> d!3225 (= (getValueByKey!54 (toList!263 lt!3984) a!507) e!10178)))

(assert (= (and d!3225 c!1577) b!16481))

(assert (= (and d!3225 (not c!1577)) b!16482))

(assert (= (and b!16482 c!1578) b!16483))

(assert (= (and b!16482 (not c!1578)) b!16484))

(declare-fun m!11573 () Bool)

(assert (=> b!16483 m!11573))

(assert (=> b!16325 d!3225))

(declare-fun d!3229 () Bool)

(declare-fun res!12248 () Bool)

(declare-fun e!10182 () Bool)

(assert (=> d!3229 (=> res!12248 e!10182)))

(assert (=> d!3229 (= res!12248 (and (is-Cons!517 lt!4029) (= (_1!332 (h!1083 lt!4029)) a!507)))))

(assert (=> d!3229 (= (containsKey!18 lt!4029 a!507) e!10182)))

(declare-fun b!16487 () Bool)

(declare-fun e!10183 () Bool)

(assert (=> b!16487 (= e!10182 e!10183)))

(declare-fun res!12249 () Bool)

(assert (=> b!16487 (=> (not res!12249) (not e!10183))))

(assert (=> b!16487 (= res!12249 (and (or (not (is-Cons!517 lt!4029)) (bvsle (_1!332 (h!1083 lt!4029)) a!507)) (is-Cons!517 lt!4029) (bvslt (_1!332 (h!1083 lt!4029)) a!507)))))

(declare-fun b!16488 () Bool)

(assert (=> b!16488 (= e!10183 (containsKey!18 (t!3061 lt!4029) a!507))))

(assert (= (and d!3229 (not res!12248)) b!16487))

(assert (= (and b!16487 res!12249) b!16488))

(declare-fun m!11577 () Bool)

(assert (=> b!16488 m!11577))

(assert (=> b!16300 d!3229))

(declare-fun d!3231 () Bool)

(assert (=> d!3231 (= ($colon$colon!25 (removeStrictlySorted!17 (t!3061 (toList!263 lt!3965)) a!507) (h!1083 (toList!263 lt!3965))) (Cons!517 (h!1083 (toList!263 lt!3965)) (removeStrictlySorted!17 (t!3061 (toList!263 lt!3965)) a!507)))))

(assert (=> b!16301 d!3231))

(declare-fun d!3233 () Bool)

(declare-fun e!10186 () Bool)

(assert (=> d!3233 e!10186))

(declare-fun res!12250 () Bool)

(assert (=> d!3233 (=> (not res!12250) (not e!10186))))

(declare-fun lt!4071 () List!521)

(assert (=> d!3233 (= res!12250 (isStrictlySorted!161 lt!4071))))

(declare-fun e!10187 () List!521)

(assert (=> d!3233 (= lt!4071 e!10187)))

(declare-fun c!1579 () Bool)

(assert (=> d!3233 (= c!1579 (and (is-Cons!517 (t!3061 (toList!263 lt!3965))) (= (_1!332 (h!1083 (t!3061 (toList!263 lt!3965)))) a!507)))))

(assert (=> d!3233 (isStrictlySorted!161 (t!3061 (toList!263 lt!3965)))))

(assert (=> d!3233 (= (removeStrictlySorted!17 (t!3061 (toList!263 lt!3965)) a!507) lt!4071)))

(declare-fun b!16490 () Bool)

(assert (=> b!16490 (= e!10186 (not (containsKey!18 lt!4071 a!507)))))

(declare-fun b!16491 () Bool)

(declare-fun e!10185 () List!521)

(assert (=> b!16491 (= e!10185 ($colon$colon!25 (removeStrictlySorted!17 (t!3061 (t!3061 (toList!263 lt!3965))) a!507) (h!1083 (t!3061 (toList!263 lt!3965)))))))

(declare-fun b!16492 () Bool)

(assert (=> b!16492 (= e!10187 (t!3061 (t!3061 (toList!263 lt!3965))))))

(declare-fun b!16493 () Bool)

(assert (=> b!16493 (= e!10185 Nil!518)))

(declare-fun b!16494 () Bool)

(assert (=> b!16494 (= e!10187 e!10185)))

(declare-fun c!1580 () Bool)

(assert (=> b!16494 (= c!1580 (and (is-Cons!517 (t!3061 (toList!263 lt!3965))) (not (= (_1!332 (h!1083 (t!3061 (toList!263 lt!3965)))) a!507))))))

(assert (= (and d!3233 c!1579) b!16492))

(assert (= (and d!3233 (not c!1579)) b!16494))

(assert (= (and b!16494 c!1580) b!16491))

(assert (= (and b!16494 (not c!1580)) b!16493))

(assert (= (and d!3233 res!12250) b!16490))

(declare-fun m!11579 () Bool)

(assert (=> d!3233 m!11579))

(declare-fun m!11581 () Bool)

(assert (=> d!3233 m!11581))

(declare-fun m!11583 () Bool)

(assert (=> b!16490 m!11583))

(declare-fun m!11585 () Bool)

(assert (=> b!16491 m!11585))

(assert (=> b!16491 m!11585))

(declare-fun m!11587 () Bool)

(assert (=> b!16491 m!11587))

(assert (=> b!16301 d!3233))

(declare-fun d!3235 () Bool)

(declare-fun res!12251 () Bool)

(declare-fun e!10188 () Bool)

(assert (=> d!3235 (=> res!12251 e!10188)))

(assert (=> d!3235 (= res!12251 (or (is-Nil!518 lt!4029) (is-Nil!518 (t!3061 lt!4029))))))

(assert (=> d!3235 (= (isStrictlySorted!161 lt!4029) e!10188)))

(declare-fun b!16495 () Bool)

(declare-fun e!10189 () Bool)

(assert (=> b!16495 (= e!10188 e!10189)))

(declare-fun res!12252 () Bool)

(assert (=> b!16495 (=> (not res!12252) (not e!10189))))

(assert (=> b!16495 (= res!12252 (bvslt (_1!332 (h!1083 lt!4029)) (_1!332 (h!1083 (t!3061 lt!4029)))))))

(declare-fun b!16496 () Bool)

(assert (=> b!16496 (= e!10189 (isStrictlySorted!161 (t!3061 lt!4029)))))

(assert (= (and d!3235 (not res!12251)) b!16495))

(assert (= (and b!16495 res!12252) b!16496))

(declare-fun m!11589 () Bool)

(assert (=> b!16496 m!11589))

(assert (=> d!3099 d!3235))

(declare-fun d!3237 () Bool)

(declare-fun res!12253 () Bool)

(declare-fun e!10190 () Bool)

(assert (=> d!3237 (=> res!12253 e!10190)))

(assert (=> d!3237 (= res!12253 (or (is-Nil!518 (toList!263 lt!3965)) (is-Nil!518 (t!3061 (toList!263 lt!3965)))))))

(assert (=> d!3237 (= (isStrictlySorted!161 (toList!263 lt!3965)) e!10190)))

(declare-fun b!16497 () Bool)

(declare-fun e!10191 () Bool)

(assert (=> b!16497 (= e!10190 e!10191)))

(declare-fun res!12254 () Bool)

(assert (=> b!16497 (=> (not res!12254) (not e!10191))))

(assert (=> b!16497 (= res!12254 (bvslt (_1!332 (h!1083 (toList!263 lt!3965))) (_1!332 (h!1083 (t!3061 (toList!263 lt!3965))))))))

(declare-fun b!16498 () Bool)

(assert (=> b!16498 (= e!10191 (isStrictlySorted!161 (t!3061 (toList!263 lt!3965))))))

(assert (= (and d!3237 (not res!12253)) b!16497))

(assert (= (and b!16497 res!12254) b!16498))

(assert (=> b!16498 m!11581))

(assert (=> d!3099 d!3237))

(assert (=> b!16327 d!3223))

(assert (=> b!16327 d!3225))

(declare-fun d!3239 () Bool)

(declare-fun res!12255 () Bool)

(declare-fun e!10192 () Bool)

(assert (=> d!3239 (=> res!12255 e!10192)))

(assert (=> d!3239 (= res!12255 (is-Nil!518 (t!3061 (t!3061 (toList!263 (-!30 lt!3965 a!507))))))))

(assert (=> d!3239 (= (forall!143 (t!3061 (t!3061 (toList!263 (-!30 lt!3965 a!507)))) p!191) e!10192)))

(declare-fun b!16499 () Bool)

(declare-fun e!10193 () Bool)

(assert (=> b!16499 (= e!10192 e!10193)))

(declare-fun res!12256 () Bool)

(assert (=> b!16499 (=> (not res!12256) (not e!10193))))

(assert (=> b!16499 (= res!12256 (dynLambda!126 p!191 (h!1083 (t!3061 (t!3061 (toList!263 (-!30 lt!3965 a!507)))))))))

(declare-fun b!16500 () Bool)

(assert (=> b!16500 (= e!10193 (forall!143 (t!3061 (t!3061 (t!3061 (toList!263 (-!30 lt!3965 a!507))))) p!191))))

(assert (= (and d!3239 (not res!12255)) b!16499))

(assert (= (and b!16499 res!12256) b!16500))

(declare-fun b_lambda!1361 () Bool)

(assert (=> (not b_lambda!1361) (not b!16499)))

(declare-fun t!3125 () Bool)

(declare-fun tb!589 () Bool)

(assert (=> (and start!2776 (= p!191 p!191) t!3125) tb!589))

(declare-fun result!961 () Bool)

(assert (=> tb!589 (= result!961 true)))

(assert (=> b!16499 t!3125))

(declare-fun b_and!1177 () Bool)

(assert (= b_and!1169 (and (=> t!3125 result!961) b_and!1177)))

(declare-fun m!11591 () Bool)

(assert (=> b!16499 m!11591))

(declare-fun m!11593 () Bool)

(assert (=> b!16500 m!11593))

(assert (=> b!16341 d!3239))

(declare-fun d!3241 () Bool)

(declare-fun res!12257 () Bool)

(declare-fun e!10194 () Bool)

(assert (=> d!3241 (=> res!12257 e!10194)))

(assert (=> d!3241 (= res!12257 (and (is-Cons!517 (toList!263 lt!3984)) (= (_1!332 (h!1083 (toList!263 lt!3984))) a!507)))))

(assert (=> d!3241 (= (containsKey!18 (toList!263 lt!3984) a!507) e!10194)))

(declare-fun b!16501 () Bool)

(declare-fun e!10195 () Bool)

(assert (=> b!16501 (= e!10194 e!10195)))

(declare-fun res!12258 () Bool)

(assert (=> b!16501 (=> (not res!12258) (not e!10195))))

(assert (=> b!16501 (= res!12258 (and (or (not (is-Cons!517 (toList!263 lt!3984))) (bvsle (_1!332 (h!1083 (toList!263 lt!3984))) a!507)) (is-Cons!517 (toList!263 lt!3984)) (bvslt (_1!332 (h!1083 (toList!263 lt!3984))) a!507)))))

(declare-fun b!16502 () Bool)

(assert (=> b!16502 (= e!10195 (containsKey!18 (t!3061 (toList!263 lt!3984)) a!507))))

(assert (= (and d!3241 (not res!12257)) b!16501))

(assert (= (and b!16501 res!12258) b!16502))

(declare-fun m!11595 () Bool)

(assert (=> b!16502 m!11595))

(assert (=> d!3125 d!3241))

(assert (=> d!3141 d!3051))

(assert (=> d!3141 d!3071))

(declare-fun d!3243 () Bool)

(declare-fun res!12259 () Bool)

(declare-fun e!10196 () Bool)

(assert (=> d!3243 (=> res!12259 e!10196)))

(assert (=> d!3243 (= res!12259 (is-Nil!518 (t!3061 (t!3061 (toList!263 lm!221)))))))

(assert (=> d!3243 (= (forall!143 (t!3061 (t!3061 (toList!263 lm!221))) p!191) e!10196)))

(declare-fun b!16503 () Bool)

(declare-fun e!10197 () Bool)

(assert (=> b!16503 (= e!10196 e!10197)))

(declare-fun res!12260 () Bool)

(assert (=> b!16503 (=> (not res!12260) (not e!10197))))

(assert (=> b!16503 (= res!12260 (dynLambda!126 p!191 (h!1083 (t!3061 (t!3061 (toList!263 lm!221))))))))

(declare-fun b!16504 () Bool)

(assert (=> b!16504 (= e!10197 (forall!143 (t!3061 (t!3061 (t!3061 (toList!263 lm!221)))) p!191))))

(assert (= (and d!3243 (not res!12259)) b!16503))

(assert (= (and b!16503 res!12260) b!16504))

(declare-fun b_lambda!1363 () Bool)

(assert (=> (not b_lambda!1363) (not b!16503)))

(declare-fun t!3127 () Bool)

(declare-fun tb!591 () Bool)

(assert (=> (and start!2776 (= p!191 p!191) t!3127) tb!591))

(declare-fun result!963 () Bool)

(assert (=> tb!591 (= result!963 true)))

(assert (=> b!16503 t!3127))

(declare-fun b_and!1179 () Bool)

(assert (= b_and!1177 (and (=> t!3127 result!963) b_and!1179)))

(declare-fun m!11597 () Bool)

(assert (=> b!16503 m!11597))

(declare-fun m!11599 () Bool)

(assert (=> b!16504 m!11599))

(assert (=> b!16320 d!3243))

(declare-fun d!3245 () Bool)

(declare-fun res!12261 () Bool)

(declare-fun e!10198 () Bool)

(assert (=> d!3245 (=> res!12261 e!10198)))

(assert (=> d!3245 (= res!12261 (or (is-Nil!518 lt!4046) (is-Nil!518 (t!3061 lt!4046))))))

(assert (=> d!3245 (= (isStrictlySorted!161 lt!4046) e!10198)))

(declare-fun b!16505 () Bool)

(declare-fun e!10199 () Bool)

(assert (=> b!16505 (= e!10198 e!10199)))

(declare-fun res!12262 () Bool)

(assert (=> b!16505 (=> (not res!12262) (not e!10199))))

(assert (=> b!16505 (= res!12262 (bvslt (_1!332 (h!1083 lt!4046)) (_1!332 (h!1083 (t!3061 lt!4046)))))))

(declare-fun b!16506 () Bool)

(assert (=> b!16506 (= e!10199 (isStrictlySorted!161 (t!3061 lt!4046)))))

(assert (= (and d!3245 (not res!12261)) b!16505))

(assert (= (and b!16505 res!12262) b!16506))

(declare-fun m!11601 () Bool)

(assert (=> b!16506 m!11601))

(assert (=> d!3127 d!3245))

(assert (=> d!3127 d!3119))

(declare-fun d!3247 () Bool)

(declare-fun res!12263 () Bool)

(declare-fun e!10200 () Bool)

(assert (=> d!3247 (=> res!12263 e!10200)))

(assert (=> d!3247 (= res!12263 (is-Nil!518 (t!3061 (t!3061 (toList!263 lt!3965)))))))

(assert (=> d!3247 (= (forall!143 (t!3061 (t!3061 (toList!263 lt!3965))) p!191) e!10200)))

(declare-fun b!16507 () Bool)

(declare-fun e!10201 () Bool)

(assert (=> b!16507 (= e!10200 e!10201)))

(declare-fun res!12264 () Bool)

(assert (=> b!16507 (=> (not res!12264) (not e!10201))))

(assert (=> b!16507 (= res!12264 (dynLambda!126 p!191 (h!1083 (t!3061 (t!3061 (toList!263 lt!3965))))))))

(declare-fun b!16508 () Bool)

(assert (=> b!16508 (= e!10201 (forall!143 (t!3061 (t!3061 (t!3061 (toList!263 lt!3965)))) p!191))))

(assert (= (and d!3247 (not res!12263)) b!16507))

(assert (= (and b!16507 res!12264) b!16508))

(declare-fun b_lambda!1365 () Bool)

(assert (=> (not b_lambda!1365) (not b!16507)))

(declare-fun t!3129 () Bool)

(declare-fun tb!593 () Bool)

(assert (=> (and start!2776 (= p!191 p!191) t!3129) tb!593))

(declare-fun result!965 () Bool)

(assert (=> tb!593 (= result!965 true)))

(assert (=> b!16507 t!3129))

(declare-fun b_and!1181 () Bool)

(assert (= b_and!1179 (and (=> t!3129 result!965) b_and!1181)))

(declare-fun m!11603 () Bool)

(assert (=> b!16507 m!11603))

(declare-fun m!11605 () Bool)

(assert (=> b!16508 m!11605))

(assert (=> b!16306 d!3247))

(declare-fun b!16509 () Bool)

(declare-fun e!10202 () Bool)

(declare-fun tp!2881 () Bool)

(assert (=> b!16509 (= e!10202 (and tp_is_empty!833 tp!2881))))

(assert (=> b!16365 (= tp!2878 e!10202)))

(assert (= (and b!16365 (is-Cons!517 (t!3061 (t!3061 (toList!263 lm!221))))) b!16509))

(declare-fun b_lambda!1367 () Bool)

(assert (= b_lambda!1363 (or (and start!2776 b_free!565) b_lambda!1367)))

(declare-fun b_lambda!1369 () Bool)

(assert (= b_lambda!1345 (or (and start!2776 b_free!565) b_lambda!1369)))

(declare-fun b_lambda!1371 () Bool)

(assert (= b_lambda!1361 (or (and start!2776 b_free!565) b_lambda!1371)))

(declare-fun b_lambda!1373 () Bool)

(assert (= b_lambda!1365 (or (and start!2776 b_free!565) b_lambda!1373)))

(push 1)

