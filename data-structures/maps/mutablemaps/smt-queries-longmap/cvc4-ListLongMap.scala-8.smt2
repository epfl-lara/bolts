; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!302 () Bool)

(assert start!302)

(declare-fun b_free!47 () Bool)

(declare-fun b_next!47 () Bool)

(assert (=> start!302 (= b_free!47 (not b_next!47))))

(declare-fun tp!179 () Bool)

(declare-fun b_and!125 () Bool)

(assert (=> start!302 (= tp!179 b_and!125)))

(declare-fun b!2189 () Bool)

(assert (=> b!2189 true))

(assert (=> b!2189 true))

(declare-fun order!11 () Int)

(declare-fun lambda!14 () Int)

(declare-fun order!9 () Int)

(declare-fun p!318 () Int)

(declare-fun dynLambda!19 (Int Int) Int)

(declare-fun dynLambda!20 (Int Int) Int)

(assert (=> b!2189 (< (dynLambda!19 order!9 p!318) (dynLambda!20 order!11 lambda!14))))

(declare-fun b!2185 () Bool)

(declare-fun res!4625 () Bool)

(declare-fun e!609 () Bool)

(assert (=> b!2185 (=> (not res!4625) (not e!609))))

(declare-datatypes ((B!282 0))(
  ( (B!283 (val!23 Int)) )
))
(declare-datatypes ((tuple2!46 0))(
  ( (tuple2!47 (_1!23 (_ BitVec 64)) (_2!23 B!282)) )
))
(declare-datatypes ((List!32 0))(
  ( (Nil!29) (Cons!28 (h!594 tuple2!46) (t!2105 List!32)) )
))
(declare-datatypes ((ListLongMap!51 0))(
  ( (ListLongMap!52 (toList!41 List!32)) )
))
(declare-fun lm!258 () ListLongMap!51)

(declare-fun isEmpty!33 (ListLongMap!51) Bool)

(assert (=> b!2185 (= res!4625 (not (isEmpty!33 lm!258)))))

(declare-fun b!2186 () Bool)

(declare-fun e!607 () Bool)

(declare-fun tp!178 () Bool)

(assert (=> b!2186 (= e!607 tp!178)))

(declare-fun b!2187 () Bool)

(declare-fun res!4622 () Bool)

(assert (=> b!2187 (=> (not res!4622) (not e!609))))

(declare-fun k!394 () (_ BitVec 64))

(declare-fun head!754 (List!32) tuple2!46)

(assert (=> b!2187 (= res!4622 (not (= (_1!23 (head!754 (toList!41 lm!258))) k!394)))))

(declare-fun b!2188 () Bool)

(declare-fun e!608 () Bool)

(assert (=> b!2188 (= e!609 e!608)))

(declare-fun res!4624 () Bool)

(assert (=> b!2188 (=> (not res!4624) (not e!608))))

(declare-fun lt!358 () ListLongMap!51)

(declare-fun forall!27 (List!32 Int) Bool)

(assert (=> b!2188 (= res!4624 (forall!27 (toList!41 lt!358) p!318))))

(declare-fun tail!46 (ListLongMap!51) ListLongMap!51)

(assert (=> b!2188 (= lt!358 (tail!46 lm!258))))

(declare-datatypes ((Option!9 0))(
  ( (Some!8 (v!1085 B!282)) (None!7) )
))
(declare-fun forall!28 (Option!9 Int) Bool)

(declare-fun getValueByKey!3 (List!32 (_ BitVec 64)) Option!9)

(assert (=> b!2189 (= e!608 (not (forall!28 (getValueByKey!3 (toList!41 lm!258) k!394) lambda!14)))))

(assert (=> b!2189 (forall!28 (getValueByKey!3 (toList!41 lt!358) k!394) lambda!14)))

(declare-datatypes ((Unit!17 0))(
  ( (Unit!18) )
))
(declare-fun lt!359 () Unit!17)

(declare-fun getForall!4 (ListLongMap!51 Int (_ BitVec 64)) Unit!17)

(assert (=> b!2189 (= lt!359 (getForall!4 lt!358 p!318 k!394))))

(declare-fun res!4623 () Bool)

(assert (=> start!302 (=> (not res!4623) (not e!609))))

(assert (=> start!302 (= res!4623 (forall!27 (toList!41 lm!258) p!318))))

(assert (=> start!302 e!609))

(declare-fun inv!73 (ListLongMap!51) Bool)

(assert (=> start!302 (and (inv!73 lm!258) e!607)))

(assert (=> start!302 tp!179))

(assert (=> start!302 true))

(assert (= (and start!302 res!4623) b!2185))

(assert (= (and b!2185 res!4625) b!2187))

(assert (= (and b!2187 res!4622) b!2188))

(assert (= (and b!2188 res!4624) b!2189))

(assert (= start!302 b!2186))

(declare-fun m!827 () Bool)

(assert (=> b!2185 m!827))

(declare-fun m!829 () Bool)

(assert (=> b!2187 m!829))

(declare-fun m!831 () Bool)

(assert (=> start!302 m!831))

(declare-fun m!833 () Bool)

(assert (=> start!302 m!833))

(declare-fun m!835 () Bool)

(assert (=> b!2189 m!835))

(declare-fun m!837 () Bool)

(assert (=> b!2189 m!837))

(declare-fun m!839 () Bool)

(assert (=> b!2189 m!839))

(assert (=> b!2189 m!835))

(declare-fun m!841 () Bool)

(assert (=> b!2189 m!841))

(assert (=> b!2189 m!841))

(declare-fun m!843 () Bool)

(assert (=> b!2189 m!843))

(declare-fun m!845 () Bool)

(assert (=> b!2188 m!845))

(declare-fun m!847 () Bool)

(assert (=> b!2188 m!847))

(push 1)

(assert (not b!2187))

(assert (not b!2186))

(assert (not start!302))

(assert (not b!2189))

(assert b_and!125)

(assert (not b!2188))

(assert (not b_next!47))

(assert (not b!2185))

(check-sat)

(pop 1)

(push 1)

(assert b_and!125)

(assert (not b_next!47))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!343 () Bool)

(declare-fun res!4628 () Bool)

(declare-fun e!612 () Bool)

(assert (=> d!343 (=> res!4628 e!612)))

(assert (=> d!343 (= res!4628 (not (is-Some!8 (getValueByKey!3 (toList!41 lm!258) k!394))))))

(assert (=> d!343 (= (forall!28 (getValueByKey!3 (toList!41 lm!258) k!394) lambda!14) e!612)))

(declare-fun b!2196 () Bool)

(declare-fun dynLambda!21 (Int B!282) Bool)

(assert (=> b!2196 (= e!612 (dynLambda!21 lambda!14 (v!1085 (getValueByKey!3 (toList!41 lm!258) k!394))))))

(assert (= (and d!343 (not res!4628)) b!2196))

(declare-fun b_lambda!157 () Bool)

(assert (=> (not b_lambda!157) (not b!2196)))

(declare-fun m!849 () Bool)

(assert (=> b!2196 m!849))

(assert (=> b!2189 d!343))

(declare-fun d!349 () Bool)

(declare-fun res!4629 () Bool)

(declare-fun e!613 () Bool)

(assert (=> d!349 (=> res!4629 e!613)))

(assert (=> d!349 (= res!4629 (not (is-Some!8 (getValueByKey!3 (toList!41 lt!358) k!394))))))

(assert (=> d!349 (= (forall!28 (getValueByKey!3 (toList!41 lt!358) k!394) lambda!14) e!613)))

(declare-fun b!2197 () Bool)

(assert (=> b!2197 (= e!613 (dynLambda!21 lambda!14 (v!1085 (getValueByKey!3 (toList!41 lt!358) k!394))))))

(assert (= (and d!349 (not res!4629)) b!2197))

(declare-fun b_lambda!159 () Bool)

(assert (=> (not b_lambda!159) (not b!2197)))

(declare-fun m!851 () Bool)

(assert (=> b!2197 m!851))

(assert (=> b!2189 d!349))

(declare-fun bs!76 () Bool)

(declare-fun d!351 () Bool)

(assert (= bs!76 (and d!351 b!2189)))

(declare-fun lambda!17 () Int)

(assert (=> bs!76 (= lambda!17 lambda!14)))

(assert (=> d!351 true))

(assert (=> d!351 true))

(assert (=> d!351 (< (dynLambda!19 order!9 p!318) (dynLambda!20 order!11 lambda!17))))

(assert (=> d!351 (forall!28 (getValueByKey!3 (toList!41 lt!358) k!394) lambda!17)))

(declare-fun lt!362 () Unit!17)

(declare-fun choose!132 (ListLongMap!51 Int (_ BitVec 64)) Unit!17)

(assert (=> d!351 (= lt!362 (choose!132 lt!358 p!318 k!394))))

(assert (=> d!351 (forall!27 (toList!41 lt!358) p!318)))

(assert (=> d!351 (= (getForall!4 lt!358 p!318 k!394) lt!362)))

(declare-fun bs!78 () Bool)

(assert (= bs!78 d!351))

(assert (=> bs!78 m!835))

(assert (=> bs!78 m!835))

(declare-fun m!869 () Bool)

(assert (=> bs!78 m!869))

(declare-fun m!871 () Bool)

(assert (=> bs!78 m!871))

(assert (=> bs!78 m!845))

(assert (=> b!2189 d!351))

(declare-fun b!2247 () Bool)

(declare-fun e!646 () Option!9)

(declare-fun e!647 () Option!9)

(assert (=> b!2247 (= e!646 e!647)))

(declare-fun c!131 () Bool)

(assert (=> b!2247 (= c!131 (and (is-Cons!28 (toList!41 lm!258)) (not (= (_1!23 (h!594 (toList!41 lm!258))) k!394))))))

(declare-fun b!2249 () Bool)

(assert (=> b!2249 (= e!647 None!7)))

(declare-fun b!2246 () Bool)

(assert (=> b!2246 (= e!646 (Some!8 (_2!23 (h!594 (toList!41 lm!258)))))))

(declare-fun d!369 () Bool)

(declare-fun c!130 () Bool)

(assert (=> d!369 (= c!130 (and (is-Cons!28 (toList!41 lm!258)) (= (_1!23 (h!594 (toList!41 lm!258))) k!394)))))

(assert (=> d!369 (= (getValueByKey!3 (toList!41 lm!258) k!394) e!646)))

(declare-fun b!2248 () Bool)

(assert (=> b!2248 (= e!647 (getValueByKey!3 (t!2105 (toList!41 lm!258)) k!394))))

(assert (= (and d!369 c!130) b!2246))

(assert (= (and d!369 (not c!130)) b!2247))

(assert (= (and b!2247 c!131) b!2248))

(assert (= (and b!2247 (not c!131)) b!2249))

(declare-fun m!877 () Bool)

(assert (=> b!2248 m!877))

(assert (=> b!2189 d!369))

(declare-fun b!2251 () Bool)

(declare-fun e!648 () Option!9)

(declare-fun e!649 () Option!9)

(assert (=> b!2251 (= e!648 e!649)))

(declare-fun c!133 () Bool)

(assert (=> b!2251 (= c!133 (and (is-Cons!28 (toList!41 lt!358)) (not (= (_1!23 (h!594 (toList!41 lt!358))) k!394))))))

(declare-fun b!2253 () Bool)

(assert (=> b!2253 (= e!649 None!7)))

(declare-fun b!2250 () Bool)

(assert (=> b!2250 (= e!648 (Some!8 (_2!23 (h!594 (toList!41 lt!358)))))))

(declare-fun d!375 () Bool)

(declare-fun c!132 () Bool)

(assert (=> d!375 (= c!132 (and (is-Cons!28 (toList!41 lt!358)) (= (_1!23 (h!594 (toList!41 lt!358))) k!394)))))

(assert (=> d!375 (= (getValueByKey!3 (toList!41 lt!358) k!394) e!648)))

(declare-fun b!2252 () Bool)

(assert (=> b!2252 (= e!649 (getValueByKey!3 (t!2105 (toList!41 lt!358)) k!394))))

(assert (= (and d!375 c!132) b!2250))

(assert (= (and d!375 (not c!132)) b!2251))

(assert (= (and b!2251 c!133) b!2252))

(assert (= (and b!2251 (not c!133)) b!2253))

(declare-fun m!879 () Bool)

(assert (=> b!2252 m!879))

(assert (=> b!2189 d!375))

(declare-fun d!377 () Bool)

(declare-fun res!4653 () Bool)

(declare-fun e!657 () Bool)

(assert (=> d!377 (=> res!4653 e!657)))

(assert (=> d!377 (= res!4653 (is-Nil!29 (toList!41 lm!258)))))

(assert (=> d!377 (= (forall!27 (toList!41 lm!258) p!318) e!657)))

(declare-fun b!2261 () Bool)

(declare-fun e!658 () Bool)

(assert (=> b!2261 (= e!657 e!658)))

(declare-fun res!4654 () Bool)

(assert (=> b!2261 (=> (not res!4654) (not e!658))))

(declare-fun dynLambda!26 (Int tuple2!46) Bool)

(assert (=> b!2261 (= res!4654 (dynLambda!26 p!318 (h!594 (toList!41 lm!258))))))

(declare-fun b!2262 () Bool)

(assert (=> b!2262 (= e!658 (forall!27 (t!2105 (toList!41 lm!258)) p!318))))

(assert (= (and d!377 (not res!4653)) b!2261))

(assert (= (and b!2261 res!4654) b!2262))

(declare-fun b_lambda!171 () Bool)

(assert (=> (not b_lambda!171) (not b!2261)))

(declare-fun t!2111 () Bool)

(declare-fun tb!77 () Bool)

(assert (=> (and start!302 (= p!318 p!318) t!2111) tb!77))

(declare-fun result!107 () Bool)

(assert (=> tb!77 (= result!107 true)))

(assert (=> b!2261 t!2111))

(declare-fun b_and!131 () Bool)

(assert (= b_and!125 (and (=> t!2111 result!107) b_and!131)))

(declare-fun m!883 () Bool)

(assert (=> b!2261 m!883))

(declare-fun m!885 () Bool)

(assert (=> b!2262 m!885))

(assert (=> start!302 d!377))

(declare-fun d!381 () Bool)

(declare-fun isStrictlySorted!14 (List!32) Bool)

(assert (=> d!381 (= (inv!73 lm!258) (isStrictlySorted!14 (toList!41 lm!258)))))

(declare-fun bs!80 () Bool)

(assert (= bs!80 d!381))

(declare-fun m!887 () Bool)

(assert (=> bs!80 m!887))

(assert (=> start!302 d!381))

(declare-fun d!383 () Bool)

(declare-fun res!4655 () Bool)

(declare-fun e!659 () Bool)

(assert (=> d!383 (=> res!4655 e!659)))

(assert (=> d!383 (= res!4655 (is-Nil!29 (toList!41 lt!358)))))

(assert (=> d!383 (= (forall!27 (toList!41 lt!358) p!318) e!659)))

(declare-fun b!2263 () Bool)

(declare-fun e!660 () Bool)

(assert (=> b!2263 (= e!659 e!660)))

(declare-fun res!4656 () Bool)

(assert (=> b!2263 (=> (not res!4656) (not e!660))))

(assert (=> b!2263 (= res!4656 (dynLambda!26 p!318 (h!594 (toList!41 lt!358))))))

(declare-fun b!2264 () Bool)

(assert (=> b!2264 (= e!660 (forall!27 (t!2105 (toList!41 lt!358)) p!318))))

(assert (= (and d!383 (not res!4655)) b!2263))

(assert (= (and b!2263 res!4656) b!2264))

(declare-fun b_lambda!173 () Bool)

(assert (=> (not b_lambda!173) (not b!2263)))

(declare-fun t!2113 () Bool)

(declare-fun tb!79 () Bool)

(assert (=> (and start!302 (= p!318 p!318) t!2113) tb!79))

(declare-fun result!109 () Bool)

(assert (=> tb!79 (= result!109 true)))

(assert (=> b!2263 t!2113))

(declare-fun b_and!133 () Bool)

(assert (= b_and!131 (and (=> t!2113 result!109) b_and!133)))

(declare-fun m!893 () Bool)

(assert (=> b!2263 m!893))

(declare-fun m!895 () Bool)

(assert (=> b!2264 m!895))

(assert (=> b!2188 d!383))

(declare-fun d!387 () Bool)

(declare-fun tail!49 (List!32) List!32)

(assert (=> d!387 (= (tail!46 lm!258) (ListLongMap!52 (tail!49 (toList!41 lm!258))))))

(declare-fun bs!84 () Bool)

(assert (= bs!84 d!387))

(declare-fun m!903 () Bool)

(assert (=> bs!84 m!903))

(assert (=> b!2188 d!387))

(declare-fun d!393 () Bool)

(declare-fun isEmpty!36 (List!32) Bool)

(assert (=> d!393 (= (isEmpty!33 lm!258) (isEmpty!36 (toList!41 lm!258)))))

(declare-fun bs!85 () Bool)

(assert (= bs!85 d!393))

(declare-fun m!913 () Bool)

(assert (=> bs!85 m!913))

(assert (=> b!2185 d!393))

(declare-fun d!401 () Bool)

(assert (=> d!401 (= (head!754 (toList!41 lm!258)) (h!594 (toList!41 lm!258)))))

(assert (=> b!2187 d!401))

(declare-fun b!2282 () Bool)

(declare-fun e!672 () Bool)

(declare-fun tp_is_empty!31 () Bool)

(declare-fun tp!182 () Bool)

(assert (=> b!2282 (= e!672 (and tp_is_empty!31 tp!182))))

(assert (=> b!2186 (= tp!178 e!672)))

(assert (= (and b!2186 (is-Cons!28 (toList!41 lm!258))) b!2282))

(declare-fun b_lambda!181 () Bool)

(assert (= b_lambda!159 (or b!2189 b_lambda!181)))

(declare-fun bs!88 () Bool)

(declare-fun d!409 () Bool)

(assert (= bs!88 (and d!409 b!2189)))

(assert (=> bs!88 (= (dynLambda!21 lambda!14 (v!1085 (getValueByKey!3 (toList!41 lt!358) k!394))) (dynLambda!26 p!318 (tuple2!47 k!394 (v!1085 (getValueByKey!3 (toList!41 lt!358) k!394)))))))

(declare-fun b_lambda!189 () Bool)

(assert (=> (not b_lambda!189) (not bs!88)))

(declare-fun t!2119 () Bool)

(declare-fun tb!85 () Bool)

(assert (=> (and start!302 (= p!318 p!318) t!2119) tb!85))

(declare-fun result!117 () Bool)

(assert (=> tb!85 (= result!117 true)))

(assert (=> bs!88 t!2119))

(declare-fun b_and!139 () Bool)

(assert (= b_and!133 (and (=> t!2119 result!117) b_and!139)))

(declare-fun m!923 () Bool)

(assert (=> bs!88 m!923))

(assert (=> b!2197 d!409))

(declare-fun b_lambda!183 () Bool)

(assert (= b_lambda!171 (or (and start!302 b_free!47) b_lambda!183)))

(declare-fun b_lambda!185 () Bool)

(assert (= b_lambda!157 (or b!2189 b_lambda!185)))

(declare-fun bs!91 () Bool)

(declare-fun d!411 () Bool)

(assert (= bs!91 (and d!411 b!2189)))

(assert (=> bs!91 (= (dynLambda!21 lambda!14 (v!1085 (getValueByKey!3 (toList!41 lm!258) k!394))) (dynLambda!26 p!318 (tuple2!47 k!394 (v!1085 (getValueByKey!3 (toList!41 lm!258) k!394)))))))

(declare-fun b_lambda!191 () Bool)

(assert (=> (not b_lambda!191) (not bs!91)))

(declare-fun t!2121 () Bool)

(declare-fun tb!87 () Bool)

(assert (=> (and start!302 (= p!318 p!318) t!2121) tb!87))

(declare-fun result!123 () Bool)

(assert (=> tb!87 (= result!123 true)))

(assert (=> bs!91 t!2121))

(declare-fun b_and!141 () Bool)

(assert (= b_and!139 (and (=> t!2121 result!123) b_and!141)))

(declare-fun m!929 () Bool)

(assert (=> bs!91 m!929))

(assert (=> b!2196 d!411))

(declare-fun b_lambda!187 () Bool)

(assert (= b_lambda!173 (or (and start!302 b_free!47) b_lambda!187)))

(push 1)

(assert (not d!393))

(assert (not b_lambda!181))

(assert (not b_lambda!189))

(assert (not b!2252))

(assert (not b!2262))

(assert (not b_lambda!191))

(assert b_and!141)

(assert tp_is_empty!31)

(assert (not b!2248))

(assert (not b!2282))

(assert (not b!2264))

(assert (not d!381))

(assert (not b_next!47))

(assert (not b_lambda!183))

(assert (not d!351))

(assert (not b_lambda!185))

(assert (not d!387))

(assert (not b_lambda!187))

(check-sat)

(pop 1)

(push 1)

(assert b_and!141)

(assert (not b_next!47))

(check-sat)

(get-model)

(pop 1)

(declare-fun b_lambda!221 () Bool)

(assert (= b_lambda!191 (or (and start!302 b_free!47) b_lambda!221)))

(declare-fun b_lambda!223 () Bool)

(assert (= b_lambda!189 (or (and start!302 b_free!47) b_lambda!223)))

(push 1)

(assert (not d!393))

(assert (not b_lambda!181))

(assert (not b_lambda!221))

(assert (not b!2252))

(assert (not b!2262))

(assert b_and!141)

(assert (not b!2248))

(assert (not b!2282))

(assert (not b!2264))

(assert (not d!381))

(assert (not b_next!47))

(assert (not b_lambda!183))

(assert (not d!351))

(assert (not b_lambda!185))

(assert (not d!387))

(assert (not b_lambda!187))

(assert tp_is_empty!31)

(assert (not b_lambda!223))

(check-sat)

(pop 1)

(push 1)

(assert b_and!141)

(assert (not b_next!47))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!423 () Bool)

(declare-fun res!4664 () Bool)

(declare-fun e!681 () Bool)

(assert (=> d!423 (=> res!4664 e!681)))

(assert (=> d!423 (= res!4664 (is-Nil!29 (t!2105 (toList!41 lt!358))))))

(assert (=> d!423 (= (forall!27 (t!2105 (toList!41 lt!358)) p!318) e!681)))

(declare-fun b!2295 () Bool)

(declare-fun e!682 () Bool)

(assert (=> b!2295 (= e!681 e!682)))

(declare-fun res!4665 () Bool)

(assert (=> b!2295 (=> (not res!4665) (not e!682))))

(assert (=> b!2295 (= res!4665 (dynLambda!26 p!318 (h!594 (t!2105 (toList!41 lt!358)))))))

(declare-fun b!2296 () Bool)

(assert (=> b!2296 (= e!682 (forall!27 (t!2105 (t!2105 (toList!41 lt!358))) p!318))))

(assert (= (and d!423 (not res!4664)) b!2295))

(assert (= (and b!2295 res!4665) b!2296))

(declare-fun b_lambda!231 () Bool)

(assert (=> (not b_lambda!231) (not b!2295)))

(declare-fun t!2133 () Bool)

(declare-fun tb!99 () Bool)

(assert (=> (and start!302 (= p!318 p!318) t!2133) tb!99))

(declare-fun result!135 () Bool)

(assert (=> tb!99 (= result!135 true)))

(assert (=> b!2295 t!2133))

(declare-fun b_and!153 () Bool)

(assert (= b_and!141 (and (=> t!2133 result!135) b_and!153)))

(declare-fun m!943 () Bool)

(assert (=> b!2295 m!943))

(declare-fun m!945 () Bool)

(assert (=> b!2296 m!945))

(assert (=> b!2264 d!423))

(declare-fun b!2298 () Bool)

(declare-fun e!683 () Option!9)

(declare-fun e!684 () Option!9)

(assert (=> b!2298 (= e!683 e!684)))

(declare-fun c!139 () Bool)

(assert (=> b!2298 (= c!139 (and (is-Cons!28 (t!2105 (toList!41 lm!258))) (not (= (_1!23 (h!594 (t!2105 (toList!41 lm!258)))) k!394))))))

(declare-fun b!2300 () Bool)

(assert (=> b!2300 (= e!684 None!7)))

(declare-fun b!2297 () Bool)

(assert (=> b!2297 (= e!683 (Some!8 (_2!23 (h!594 (t!2105 (toList!41 lm!258))))))))

(declare-fun d!427 () Bool)

(declare-fun c!138 () Bool)

(assert (=> d!427 (= c!138 (and (is-Cons!28 (t!2105 (toList!41 lm!258))) (= (_1!23 (h!594 (t!2105 (toList!41 lm!258)))) k!394)))))

(assert (=> d!427 (= (getValueByKey!3 (t!2105 (toList!41 lm!258)) k!394) e!683)))

(declare-fun b!2299 () Bool)

(assert (=> b!2299 (= e!684 (getValueByKey!3 (t!2105 (t!2105 (toList!41 lm!258))) k!394))))

(assert (= (and d!427 c!138) b!2297))

(assert (= (and d!427 (not c!138)) b!2298))

(assert (= (and b!2298 c!139) b!2299))

(assert (= (and b!2298 (not c!139)) b!2300))

(declare-fun m!947 () Bool)

(assert (=> b!2299 m!947))

(assert (=> b!2248 d!427))

(declare-fun b!2306 () Bool)

(declare-fun e!687 () Option!9)

(declare-fun e!688 () Option!9)

(assert (=> b!2306 (= e!687 e!688)))

(declare-fun c!143 () Bool)

(assert (=> b!2306 (= c!143 (and (is-Cons!28 (t!2105 (toList!41 lt!358))) (not (= (_1!23 (h!594 (t!2105 (toList!41 lt!358)))) k!394))))))

(declare-fun b!2308 () Bool)

(assert (=> b!2308 (= e!688 None!7)))

(declare-fun b!2305 () Bool)

(assert (=> b!2305 (= e!687 (Some!8 (_2!23 (h!594 (t!2105 (toList!41 lt!358))))))))

(declare-fun d!431 () Bool)

(declare-fun c!142 () Bool)

(assert (=> d!431 (= c!142 (and (is-Cons!28 (t!2105 (toList!41 lt!358))) (= (_1!23 (h!594 (t!2105 (toList!41 lt!358)))) k!394)))))

(assert (=> d!431 (= (getValueByKey!3 (t!2105 (toList!41 lt!358)) k!394) e!687)))

(declare-fun b!2307 () Bool)

(assert (=> b!2307 (= e!688 (getValueByKey!3 (t!2105 (t!2105 (toList!41 lt!358))) k!394))))

(assert (= (and d!431 c!142) b!2305))

(assert (= (and d!431 (not c!142)) b!2306))

(assert (= (and b!2306 c!143) b!2307))

(assert (= (and b!2306 (not c!143)) b!2308))

(declare-fun m!951 () Bool)

(assert (=> b!2307 m!951))

(assert (=> b!2252 d!431))

(declare-fun d!437 () Bool)

(assert (=> d!437 (= (tail!49 (toList!41 lm!258)) (t!2105 (toList!41 lm!258)))))

(assert (=> d!387 d!437))

(declare-fun d!443 () Bool)

(assert (=> d!443 (= (isEmpty!36 (toList!41 lm!258)) (is-Nil!29 (toList!41 lm!258)))))

(assert (=> d!393 d!443))

(declare-fun d!449 () Bool)

(declare-fun res!4678 () Bool)

(declare-fun e!703 () Bool)

(assert (=> d!449 (=> res!4678 e!703)))

(assert (=> d!449 (= res!4678 (or (is-Nil!29 (toList!41 lm!258)) (is-Nil!29 (t!2105 (toList!41 lm!258)))))))

(assert (=> d!449 (= (isStrictlySorted!14 (toList!41 lm!258)) e!703)))

(declare-fun b!2325 () Bool)

(declare-fun e!704 () Bool)

(assert (=> b!2325 (= e!703 e!704)))

(declare-fun res!4679 () Bool)

(assert (=> b!2325 (=> (not res!4679) (not e!704))))

(assert (=> b!2325 (= res!4679 (bvslt (_1!23 (h!594 (toList!41 lm!258))) (_1!23 (h!594 (t!2105 (toList!41 lm!258))))))))

(declare-fun b!2326 () Bool)

(assert (=> b!2326 (= e!704 (isStrictlySorted!14 (t!2105 (toList!41 lm!258))))))

(assert (= (and d!449 (not res!4678)) b!2325))

(assert (= (and b!2325 res!4679) b!2326))

(declare-fun m!971 () Bool)

(assert (=> b!2326 m!971))

(assert (=> d!381 d!449))

(declare-fun d!459 () Bool)

(declare-fun res!4680 () Bool)

(declare-fun e!705 () Bool)

(assert (=> d!459 (=> res!4680 e!705)))

(assert (=> d!459 (= res!4680 (not (is-Some!8 (getValueByKey!3 (toList!41 lt!358) k!394))))))

(assert (=> d!459 (= (forall!28 (getValueByKey!3 (toList!41 lt!358) k!394) lambda!17) e!705)))

(declare-fun b!2327 () Bool)

(assert (=> b!2327 (= e!705 (dynLambda!21 lambda!17 (v!1085 (getValueByKey!3 (toList!41 lt!358) k!394))))))

(assert (= (and d!459 (not res!4680)) b!2327))

(declare-fun b_lambda!243 () Bool)

(assert (=> (not b_lambda!243) (not b!2327)))

(declare-fun m!973 () Bool)

(assert (=> b!2327 m!973))

(assert (=> d!351 d!459))

(assert (=> d!351 d!375))

(declare-fun bs!102 () Bool)

(declare-fun d!461 () Bool)

(assert (= bs!102 (and d!461 b!2189)))

(declare-fun lambda!32 () Int)

(assert (=> bs!102 (= lambda!32 lambda!14)))

(declare-fun bs!103 () Bool)

(assert (= bs!103 (and d!461 d!351)))

(assert (=> bs!103 (= lambda!32 lambda!17)))

(assert (=> d!461 true))

(assert (=> d!461 true))

(assert (=> d!461 (< (dynLambda!19 order!9 p!318) (dynLambda!20 order!11 lambda!32))))

(assert (=> d!461 (forall!28 (getValueByKey!3 (toList!41 lt!358) k!394) lambda!32)))

(assert (=> d!461 true))

(declare-fun _$38!29 () Unit!17)

(assert (=> d!461 (= (choose!132 lt!358 p!318 k!394) _$38!29)))

(declare-fun bs!104 () Bool)

(assert (= bs!104 d!461))

(assert (=> bs!104 m!835))

(assert (=> bs!104 m!835))

(declare-fun m!981 () Bool)

(assert (=> bs!104 m!981))

(assert (=> d!351 d!461))

(assert (=> d!351 d!383))

(declare-fun d!471 () Bool)

(declare-fun res!4685 () Bool)

(declare-fun e!712 () Bool)

(assert (=> d!471 (=> res!4685 e!712)))

(assert (=> d!471 (= res!4685 (is-Nil!29 (t!2105 (toList!41 lm!258))))))

(assert (=> d!471 (= (forall!27 (t!2105 (toList!41 lm!258)) p!318) e!712)))

(declare-fun b!2336 () Bool)

(declare-fun e!713 () Bool)

(assert (=> b!2336 (= e!712 e!713)))

(declare-fun res!4686 () Bool)

(assert (=> b!2336 (=> (not res!4686) (not e!713))))

(assert (=> b!2336 (= res!4686 (dynLambda!26 p!318 (h!594 (t!2105 (toList!41 lm!258)))))))

(declare-fun b!2337 () Bool)

(assert (=> b!2337 (= e!713 (forall!27 (t!2105 (t!2105 (toList!41 lm!258))) p!318))))

(assert (= (and d!471 (not res!4685)) b!2336))

(assert (= (and b!2336 res!4686) b!2337))

(declare-fun b_lambda!245 () Bool)

(assert (=> (not b_lambda!245) (not b!2336)))

(declare-fun t!2141 () Bool)

(declare-fun tb!107 () Bool)

(assert (=> (and start!302 (= p!318 p!318) t!2141) tb!107))

(declare-fun result!143 () Bool)

(assert (=> tb!107 (= result!143 true)))

(assert (=> b!2336 t!2141))

(declare-fun b_and!161 () Bool)

(assert (= b_and!153 (and (=> t!2141 result!143) b_and!161)))

