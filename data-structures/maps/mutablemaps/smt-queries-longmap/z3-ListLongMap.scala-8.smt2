; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!300 () Bool)

(assert start!300)

(declare-fun b_free!45 () Bool)

(declare-fun b_next!45 () Bool)

(assert (=> start!300 (= b_free!45 (not b_next!45))))

(declare-fun tp!172 () Bool)

(declare-fun b_and!123 () Bool)

(assert (=> start!300 (= tp!172 b_and!123)))

(declare-fun b!2166 () Bool)

(assert (=> b!2166 true))

(assert (=> b!2166 true))

(declare-fun order!7 () Int)

(declare-fun lambda!9 () Int)

(declare-fun order!5 () Int)

(declare-fun p!318 () Int)

(declare-fun dynLambda!17 (Int Int) Int)

(declare-fun dynLambda!18 (Int Int) Int)

(assert (=> b!2166 (< (dynLambda!17 order!5 p!318) (dynLambda!18 order!7 lambda!9))))

(declare-datatypes ((B!280 0))(
  ( (B!281 (val!22 Int)) )
))
(declare-datatypes ((tuple2!44 0))(
  ( (tuple2!45 (_1!22 (_ BitVec 64)) (_2!22 B!280)) )
))
(declare-datatypes ((List!31 0))(
  ( (Nil!28) (Cons!27 (h!593 tuple2!44) (t!2104 List!31)) )
))
(declare-datatypes ((ListLongMap!49 0))(
  ( (ListLongMap!50 (toList!40 List!31)) )
))
(declare-fun lm!258 () ListLongMap!49)

(declare-fun k0!394 () (_ BitVec 64))

(declare-fun e!600 () Bool)

(declare-datatypes ((Option!8 0))(
  ( (Some!7 (v!1080 B!280)) (None!6) )
))
(declare-fun forall!25 (Option!8 Int) Bool)

(declare-fun getValueByKey!2 (List!31 (_ BitVec 64)) Option!8)

(assert (=> b!2166 (= e!600 (not (forall!25 (getValueByKey!2 (toList!40 lm!258) k0!394) lambda!9)))))

(declare-fun lt!352 () ListLongMap!49)

(assert (=> b!2166 (forall!25 (getValueByKey!2 (toList!40 lt!352) k0!394) lambda!9)))

(declare-datatypes ((Unit!15 0))(
  ( (Unit!16) )
))
(declare-fun lt!353 () Unit!15)

(declare-fun getForall!3 (ListLongMap!49 Int (_ BitVec 64)) Unit!15)

(assert (=> b!2166 (= lt!353 (getForall!3 lt!352 p!318 k0!394))))

(declare-fun b!2167 () Bool)

(declare-fun res!4610 () Bool)

(declare-fun e!598 () Bool)

(assert (=> b!2167 (=> (not res!4610) (not e!598))))

(declare-fun isEmpty!32 (ListLongMap!49) Bool)

(assert (=> b!2167 (= res!4610 (not (isEmpty!32 lm!258)))))

(declare-fun b!2168 () Bool)

(declare-fun e!599 () Bool)

(declare-fun tp!173 () Bool)

(assert (=> b!2168 (= e!599 tp!173)))

(declare-fun res!4611 () Bool)

(assert (=> start!300 (=> (not res!4611) (not e!598))))

(declare-fun forall!26 (List!31 Int) Bool)

(assert (=> start!300 (= res!4611 (forall!26 (toList!40 lm!258) p!318))))

(assert (=> start!300 e!598))

(declare-fun inv!72 (ListLongMap!49) Bool)

(assert (=> start!300 (and (inv!72 lm!258) e!599)))

(assert (=> start!300 tp!172))

(assert (=> start!300 true))

(declare-fun b!2169 () Bool)

(assert (=> b!2169 (= e!598 e!600)))

(declare-fun res!4612 () Bool)

(assert (=> b!2169 (=> (not res!4612) (not e!600))))

(assert (=> b!2169 (= res!4612 (forall!26 (toList!40 lt!352) p!318))))

(declare-fun tail!45 (ListLongMap!49) ListLongMap!49)

(assert (=> b!2169 (= lt!352 (tail!45 lm!258))))

(declare-fun b!2170 () Bool)

(declare-fun res!4613 () Bool)

(assert (=> b!2170 (=> (not res!4613) (not e!598))))

(declare-fun head!753 (List!31) tuple2!44)

(assert (=> b!2170 (= res!4613 (not (= (_1!22 (head!753 (toList!40 lm!258))) k0!394)))))

(assert (= (and start!300 res!4611) b!2167))

(assert (= (and b!2167 res!4610) b!2170))

(assert (= (and b!2170 res!4613) b!2169))

(assert (= (and b!2169 res!4612) b!2166))

(assert (= start!300 b!2168))

(declare-fun m!805 () Bool)

(assert (=> b!2169 m!805))

(declare-fun m!807 () Bool)

(assert (=> b!2169 m!807))

(declare-fun m!809 () Bool)

(assert (=> b!2166 m!809))

(declare-fun m!811 () Bool)

(assert (=> b!2166 m!811))

(declare-fun m!813 () Bool)

(assert (=> b!2166 m!813))

(assert (=> b!2166 m!811))

(assert (=> b!2166 m!809))

(declare-fun m!815 () Bool)

(assert (=> b!2166 m!815))

(declare-fun m!817 () Bool)

(assert (=> b!2166 m!817))

(declare-fun m!819 () Bool)

(assert (=> b!2167 m!819))

(declare-fun m!821 () Bool)

(assert (=> start!300 m!821))

(declare-fun m!823 () Bool)

(assert (=> start!300 m!823))

(declare-fun m!825 () Bool)

(assert (=> b!2170 m!825))

(check-sat (not b!2167) (not b!2168) (not b!2166) (not b!2170) (not b_next!45) (not b!2169) (not start!300) b_and!123)
(check-sat b_and!123 (not b_next!45))
(get-model)

(declare-fun d!353 () Bool)

(assert (=> d!353 (= (head!753 (toList!40 lm!258)) (h!593 (toList!40 lm!258)))))

(assert (=> b!2170 d!353))

(declare-fun d!355 () Bool)

(declare-fun res!4640 () Bool)

(declare-fun e!624 () Bool)

(assert (=> d!355 (=> res!4640 e!624)))

(get-info :version)

(assert (=> d!355 (= res!4640 ((_ is Nil!28) (toList!40 lm!258)))))

(assert (=> d!355 (= (forall!26 (toList!40 lm!258) p!318) e!624)))

(declare-fun b!2208 () Bool)

(declare-fun e!625 () Bool)

(assert (=> b!2208 (= e!624 e!625)))

(declare-fun res!4641 () Bool)

(assert (=> b!2208 (=> (not res!4641) (not e!625))))

(declare-fun dynLambda!22 (Int tuple2!44) Bool)

(assert (=> b!2208 (= res!4641 (dynLambda!22 p!318 (h!593 (toList!40 lm!258))))))

(declare-fun b!2209 () Bool)

(assert (=> b!2209 (= e!625 (forall!26 (t!2104 (toList!40 lm!258)) p!318))))

(assert (= (and d!355 (not res!4640)) b!2208))

(assert (= (and b!2208 res!4641) b!2209))

(declare-fun b_lambda!163 () Bool)

(assert (=> (not b_lambda!163) (not b!2208)))

(declare-fun t!2109 () Bool)

(declare-fun tb!75 () Bool)

(assert (=> (and start!300 (= p!318 p!318) t!2109) tb!75))

(declare-fun result!105 () Bool)

(assert (=> tb!75 (= result!105 true)))

(assert (=> b!2208 t!2109))

(declare-fun b_and!129 () Bool)

(assert (= b_and!123 (and (=> t!2109 result!105) b_and!129)))

(declare-fun m!859 () Bool)

(assert (=> b!2208 m!859))

(declare-fun m!861 () Bool)

(assert (=> b!2209 m!861))

(assert (=> start!300 d!355))

(declare-fun d!361 () Bool)

(declare-fun isStrictlySorted!13 (List!31) Bool)

(assert (=> d!361 (= (inv!72 lm!258) (isStrictlySorted!13 (toList!40 lm!258)))))

(declare-fun bs!77 () Bool)

(assert (= bs!77 d!361))

(declare-fun m!865 () Bool)

(assert (=> bs!77 m!865))

(assert (=> start!300 d!361))

(declare-fun b!2240 () Bool)

(declare-fun e!643 () Option!8)

(assert (=> b!2240 (= e!643 (getValueByKey!2 (t!2104 (toList!40 lt!352)) k0!394))))

(declare-fun d!365 () Bool)

(declare-fun c!126 () Bool)

(assert (=> d!365 (= c!126 (and ((_ is Cons!27) (toList!40 lt!352)) (= (_1!22 (h!593 (toList!40 lt!352))) k0!394)))))

(declare-fun e!642 () Option!8)

(assert (=> d!365 (= (getValueByKey!2 (toList!40 lt!352) k0!394) e!642)))

(declare-fun b!2238 () Bool)

(assert (=> b!2238 (= e!642 (Some!7 (_2!22 (h!593 (toList!40 lt!352)))))))

(declare-fun b!2239 () Bool)

(assert (=> b!2239 (= e!642 e!643)))

(declare-fun c!127 () Bool)

(assert (=> b!2239 (= c!127 (and ((_ is Cons!27) (toList!40 lt!352)) (not (= (_1!22 (h!593 (toList!40 lt!352))) k0!394))))))

(declare-fun b!2241 () Bool)

(assert (=> b!2241 (= e!643 None!6)))

(assert (= (and d!365 c!126) b!2238))

(assert (= (and d!365 (not c!126)) b!2239))

(assert (= (and b!2239 c!127) b!2240))

(assert (= (and b!2239 (not c!127)) b!2241))

(declare-fun m!873 () Bool)

(assert (=> b!2240 m!873))

(assert (=> b!2166 d!365))

(declare-fun d!371 () Bool)

(declare-fun res!4648 () Bool)

(declare-fun e!652 () Bool)

(assert (=> d!371 (=> res!4648 e!652)))

(assert (=> d!371 (= res!4648 (not ((_ is Some!7) (getValueByKey!2 (toList!40 lm!258) k0!394))))))

(assert (=> d!371 (= (forall!25 (getValueByKey!2 (toList!40 lm!258) k0!394) lambda!9) e!652)))

(declare-fun b!2256 () Bool)

(declare-fun dynLambda!24 (Int B!280) Bool)

(assert (=> b!2256 (= e!652 (dynLambda!24 lambda!9 (v!1080 (getValueByKey!2 (toList!40 lm!258) k0!394))))))

(assert (= (and d!371 (not res!4648)) b!2256))

(declare-fun b_lambda!169 () Bool)

(assert (=> (not b_lambda!169) (not b!2256)))

(declare-fun m!881 () Bool)

(assert (=> b!2256 m!881))

(assert (=> b!2166 d!371))

(declare-fun bs!82 () Bool)

(declare-fun d!379 () Bool)

(assert (= bs!82 (and d!379 b!2166)))

(declare-fun lambda!23 () Int)

(assert (=> bs!82 (= lambda!23 lambda!9)))

(assert (=> d!379 true))

(assert (=> d!379 true))

(assert (=> d!379 (< (dynLambda!17 order!5 p!318) (dynLambda!18 order!7 lambda!23))))

(assert (=> d!379 (forall!25 (getValueByKey!2 (toList!40 lt!352) k0!394) lambda!23)))

(declare-fun lt!368 () Unit!15)

(declare-fun choose!133 (ListLongMap!49 Int (_ BitVec 64)) Unit!15)

(assert (=> d!379 (= lt!368 (choose!133 lt!352 p!318 k0!394))))

(assert (=> d!379 (forall!26 (toList!40 lt!352) p!318)))

(assert (=> d!379 (= (getForall!3 lt!352 p!318 k0!394) lt!368)))

(declare-fun bs!83 () Bool)

(assert (= bs!83 d!379))

(assert (=> bs!83 m!811))

(assert (=> bs!83 m!811))

(declare-fun m!899 () Bool)

(assert (=> bs!83 m!899))

(declare-fun m!901 () Bool)

(assert (=> bs!83 m!901))

(assert (=> bs!83 m!805))

(assert (=> b!2166 d!379))

(declare-fun d!391 () Bool)

(declare-fun res!4659 () Bool)

(declare-fun e!665 () Bool)

(assert (=> d!391 (=> res!4659 e!665)))

(assert (=> d!391 (= res!4659 (not ((_ is Some!7) (getValueByKey!2 (toList!40 lt!352) k0!394))))))

(assert (=> d!391 (= (forall!25 (getValueByKey!2 (toList!40 lt!352) k0!394) lambda!9) e!665)))

(declare-fun b!2271 () Bool)

(assert (=> b!2271 (= e!665 (dynLambda!24 lambda!9 (v!1080 (getValueByKey!2 (toList!40 lt!352) k0!394))))))

(assert (= (and d!391 (not res!4659)) b!2271))

(declare-fun b_lambda!177 () Bool)

(assert (=> (not b_lambda!177) (not b!2271)))

(declare-fun m!907 () Bool)

(assert (=> b!2271 m!907))

(assert (=> b!2166 d!391))

(declare-fun b!2274 () Bool)

(declare-fun e!667 () Option!8)

(assert (=> b!2274 (= e!667 (getValueByKey!2 (t!2104 (toList!40 lm!258)) k0!394))))

(declare-fun d!395 () Bool)

(declare-fun c!136 () Bool)

(assert (=> d!395 (= c!136 (and ((_ is Cons!27) (toList!40 lm!258)) (= (_1!22 (h!593 (toList!40 lm!258))) k0!394)))))

(declare-fun e!666 () Option!8)

(assert (=> d!395 (= (getValueByKey!2 (toList!40 lm!258) k0!394) e!666)))

(declare-fun b!2272 () Bool)

(assert (=> b!2272 (= e!666 (Some!7 (_2!22 (h!593 (toList!40 lm!258)))))))

(declare-fun b!2273 () Bool)

(assert (=> b!2273 (= e!666 e!667)))

(declare-fun c!137 () Bool)

(assert (=> b!2273 (= c!137 (and ((_ is Cons!27) (toList!40 lm!258)) (not (= (_1!22 (h!593 (toList!40 lm!258))) k0!394))))))

(declare-fun b!2275 () Bool)

(assert (=> b!2275 (= e!667 None!6)))

(assert (= (and d!395 c!136) b!2272))

(assert (= (and d!395 (not c!136)) b!2273))

(assert (= (and b!2273 c!137) b!2274))

(assert (= (and b!2273 (not c!137)) b!2275))

(declare-fun m!911 () Bool)

(assert (=> b!2274 m!911))

(assert (=> b!2166 d!395))

(declare-fun d!399 () Bool)

(declare-fun isEmpty!34 (List!31) Bool)

(assert (=> d!399 (= (isEmpty!32 lm!258) (isEmpty!34 (toList!40 lm!258)))))

(declare-fun bs!86 () Bool)

(assert (= bs!86 d!399))

(declare-fun m!915 () Bool)

(assert (=> bs!86 m!915))

(assert (=> b!2167 d!399))

(declare-fun d!403 () Bool)

(declare-fun res!4660 () Bool)

(declare-fun e!670 () Bool)

(assert (=> d!403 (=> res!4660 e!670)))

(assert (=> d!403 (= res!4660 ((_ is Nil!28) (toList!40 lt!352)))))

(assert (=> d!403 (= (forall!26 (toList!40 lt!352) p!318) e!670)))

(declare-fun b!2280 () Bool)

(declare-fun e!671 () Bool)

(assert (=> b!2280 (= e!670 e!671)))

(declare-fun res!4661 () Bool)

(assert (=> b!2280 (=> (not res!4661) (not e!671))))

(assert (=> b!2280 (= res!4661 (dynLambda!22 p!318 (h!593 (toList!40 lt!352))))))

(declare-fun b!2281 () Bool)

(assert (=> b!2281 (= e!671 (forall!26 (t!2104 (toList!40 lt!352)) p!318))))

(assert (= (and d!403 (not res!4660)) b!2280))

(assert (= (and b!2280 res!4661) b!2281))

(declare-fun b_lambda!179 () Bool)

(assert (=> (not b_lambda!179) (not b!2280)))

(declare-fun t!2117 () Bool)

(declare-fun tb!83 () Bool)

(assert (=> (and start!300 (= p!318 p!318) t!2117) tb!83))

(declare-fun result!115 () Bool)

(assert (=> tb!83 (= result!115 true)))

(assert (=> b!2280 t!2117))

(declare-fun b_and!137 () Bool)

(assert (= b_and!129 (and (=> t!2117 result!115) b_and!137)))

(declare-fun m!917 () Bool)

(assert (=> b!2280 m!917))

(declare-fun m!919 () Bool)

(assert (=> b!2281 m!919))

(assert (=> b!2169 d!403))

(declare-fun d!405 () Bool)

(declare-fun tail!48 (List!31) List!31)

(assert (=> d!405 (= (tail!45 lm!258) (ListLongMap!50 (tail!48 (toList!40 lm!258))))))

(declare-fun bs!89 () Bool)

(assert (= bs!89 d!405))

(declare-fun m!925 () Bool)

(assert (=> bs!89 m!925))

(assert (=> b!2169 d!405))

(declare-fun b!2291 () Bool)

(declare-fun e!677 () Bool)

(declare-fun tp_is_empty!33 () Bool)

(declare-fun tp!185 () Bool)

(assert (=> b!2291 (= e!677 (and tp_is_empty!33 tp!185))))

(assert (=> b!2168 (= tp!173 e!677)))

(assert (= (and b!2168 ((_ is Cons!27) (toList!40 lm!258))) b!2291))

(declare-fun b_lambda!193 () Bool)

(assert (= b_lambda!177 (or b!2166 b_lambda!193)))

(declare-fun bs!92 () Bool)

(declare-fun d!413 () Bool)

(assert (= bs!92 (and d!413 b!2166)))

(assert (=> bs!92 (= (dynLambda!24 lambda!9 (v!1080 (getValueByKey!2 (toList!40 lt!352) k0!394))) (dynLambda!22 p!318 (tuple2!45 k0!394 (v!1080 (getValueByKey!2 (toList!40 lt!352) k0!394)))))))

(declare-fun b_lambda!201 () Bool)

(assert (=> (not b_lambda!201) (not bs!92)))

(declare-fun t!2123 () Bool)

(declare-fun tb!89 () Bool)

(assert (=> (and start!300 (= p!318 p!318) t!2123) tb!89))

(declare-fun result!125 () Bool)

(assert (=> tb!89 (= result!125 true)))

(assert (=> bs!92 t!2123))

(declare-fun b_and!143 () Bool)

(assert (= b_and!137 (and (=> t!2123 result!125) b_and!143)))

(declare-fun m!931 () Bool)

(assert (=> bs!92 m!931))

(assert (=> b!2271 d!413))

(declare-fun b_lambda!195 () Bool)

(assert (= b_lambda!179 (or (and start!300 b_free!45) b_lambda!195)))

(declare-fun b_lambda!197 () Bool)

(assert (= b_lambda!169 (or b!2166 b_lambda!197)))

(declare-fun bs!93 () Bool)

(declare-fun d!415 () Bool)

(assert (= bs!93 (and d!415 b!2166)))

(assert (=> bs!93 (= (dynLambda!24 lambda!9 (v!1080 (getValueByKey!2 (toList!40 lm!258) k0!394))) (dynLambda!22 p!318 (tuple2!45 k0!394 (v!1080 (getValueByKey!2 (toList!40 lm!258) k0!394)))))))

(declare-fun b_lambda!211 () Bool)

(assert (=> (not b_lambda!211) (not bs!93)))

(declare-fun t!2125 () Bool)

(declare-fun tb!91 () Bool)

(assert (=> (and start!300 (= p!318 p!318) t!2125) tb!91))

(declare-fun result!127 () Bool)

(assert (=> tb!91 (= result!127 true)))

(assert (=> bs!93 t!2125))

(declare-fun b_and!145 () Bool)

(assert (= b_and!143 (and (=> t!2125 result!127) b_and!145)))

(declare-fun m!933 () Bool)

(assert (=> bs!93 m!933))

(assert (=> b!2256 d!415))

(declare-fun b_lambda!199 () Bool)

(assert (= b_lambda!163 (or (and start!300 b_free!45) b_lambda!199)))

(check-sat (not b_lambda!199) (not b_lambda!201) (not b_lambda!193) (not b!2274) (not d!361) (not b!2281) (not b!2291) (not b_next!45) (not b_lambda!197) (not b_lambda!195) (not d!379) (not b_lambda!211) (not b!2240) (not d!399) tp_is_empty!33 b_and!145 (not d!405) (not b!2209))
(check-sat b_and!145 (not b_next!45))
(get-model)

(declare-fun b_lambda!217 () Bool)

(assert (= b_lambda!201 (or (and start!300 b_free!45) b_lambda!217)))

(declare-fun b_lambda!219 () Bool)

(assert (= b_lambda!211 (or (and start!300 b_free!45) b_lambda!219)))

(check-sat (not b_lambda!199) (not b_lambda!217) (not b_lambda!193) (not b_lambda!219) (not b!2274) (not d!361) (not b!2281) (not b!2291) (not b_next!45) (not b_lambda!197) (not b_lambda!195) (not d!379) (not b!2240) (not d!399) tp_is_empty!33 b_and!145 (not d!405) (not b!2209))
(check-sat b_and!145 (not b_next!45))
(get-model)

(declare-fun b!2303 () Bool)

(declare-fun e!686 () Option!8)

(assert (=> b!2303 (= e!686 (getValueByKey!2 (t!2104 (t!2104 (toList!40 lm!258))) k0!394))))

(declare-fun d!429 () Bool)

(declare-fun c!140 () Bool)

(assert (=> d!429 (= c!140 (and ((_ is Cons!27) (t!2104 (toList!40 lm!258))) (= (_1!22 (h!593 (t!2104 (toList!40 lm!258)))) k0!394)))))

(declare-fun e!685 () Option!8)

(assert (=> d!429 (= (getValueByKey!2 (t!2104 (toList!40 lm!258)) k0!394) e!685)))

(declare-fun b!2301 () Bool)

(assert (=> b!2301 (= e!685 (Some!7 (_2!22 (h!593 (t!2104 (toList!40 lm!258))))))))

(declare-fun b!2302 () Bool)

(assert (=> b!2302 (= e!685 e!686)))

(declare-fun c!141 () Bool)

(assert (=> b!2302 (= c!141 (and ((_ is Cons!27) (t!2104 (toList!40 lm!258))) (not (= (_1!22 (h!593 (t!2104 (toList!40 lm!258)))) k0!394))))))

(declare-fun b!2304 () Bool)

(assert (=> b!2304 (= e!686 None!6)))

(assert (= (and d!429 c!140) b!2301))

(assert (= (and d!429 (not c!140)) b!2302))

(assert (= (and b!2302 c!141) b!2303))

(assert (= (and b!2302 (not c!141)) b!2304))

(declare-fun m!949 () Bool)

(assert (=> b!2303 m!949))

(assert (=> b!2274 d!429))

(declare-fun d!435 () Bool)

(declare-fun res!4666 () Bool)

(declare-fun e!689 () Bool)

(assert (=> d!435 (=> res!4666 e!689)))

(assert (=> d!435 (= res!4666 ((_ is Nil!28) (t!2104 (toList!40 lm!258))))))

(assert (=> d!435 (= (forall!26 (t!2104 (toList!40 lm!258)) p!318) e!689)))

(declare-fun b!2309 () Bool)

(declare-fun e!690 () Bool)

(assert (=> b!2309 (= e!689 e!690)))

(declare-fun res!4667 () Bool)

(assert (=> b!2309 (=> (not res!4667) (not e!690))))

(assert (=> b!2309 (= res!4667 (dynLambda!22 p!318 (h!593 (t!2104 (toList!40 lm!258)))))))

(declare-fun b!2310 () Bool)

(assert (=> b!2310 (= e!690 (forall!26 (t!2104 (t!2104 (toList!40 lm!258))) p!318))))

(assert (= (and d!435 (not res!4666)) b!2309))

(assert (= (and b!2309 res!4667) b!2310))

(declare-fun b_lambda!233 () Bool)

(assert (=> (not b_lambda!233) (not b!2309)))

(declare-fun t!2135 () Bool)

(declare-fun tb!101 () Bool)

(assert (=> (and start!300 (= p!318 p!318) t!2135) tb!101))

(declare-fun result!137 () Bool)

(assert (=> tb!101 (= result!137 true)))

(assert (=> b!2309 t!2135))

(declare-fun b_and!155 () Bool)

(assert (= b_and!145 (and (=> t!2135 result!137) b_and!155)))

(declare-fun m!953 () Bool)

(assert (=> b!2309 m!953))

(declare-fun m!955 () Bool)

(assert (=> b!2310 m!955))

(assert (=> b!2209 d!435))

(declare-fun d!441 () Bool)

(declare-fun res!4670 () Bool)

(declare-fun e!693 () Bool)

(assert (=> d!441 (=> res!4670 e!693)))

(assert (=> d!441 (= res!4670 ((_ is Nil!28) (t!2104 (toList!40 lt!352))))))

(assert (=> d!441 (= (forall!26 (t!2104 (toList!40 lt!352)) p!318) e!693)))

(declare-fun b!2313 () Bool)

(declare-fun e!694 () Bool)

(assert (=> b!2313 (= e!693 e!694)))

(declare-fun res!4671 () Bool)

(assert (=> b!2313 (=> (not res!4671) (not e!694))))

(assert (=> b!2313 (= res!4671 (dynLambda!22 p!318 (h!593 (t!2104 (toList!40 lt!352)))))))

(declare-fun b!2314 () Bool)

(assert (=> b!2314 (= e!694 (forall!26 (t!2104 (t!2104 (toList!40 lt!352))) p!318))))

(assert (= (and d!441 (not res!4670)) b!2313))

(assert (= (and b!2313 res!4671) b!2314))

(declare-fun b_lambda!237 () Bool)

(assert (=> (not b_lambda!237) (not b!2313)))

(declare-fun t!2139 () Bool)

(declare-fun tb!105 () Bool)

(assert (=> (and start!300 (= p!318 p!318) t!2139) tb!105))

(declare-fun result!141 () Bool)

(assert (=> tb!105 (= result!141 true)))

(assert (=> b!2313 t!2139))

(declare-fun b_and!159 () Bool)

(assert (= b_and!155 (and (=> t!2139 result!141) b_and!159)))

(declare-fun m!961 () Bool)

(assert (=> b!2313 m!961))

(declare-fun m!963 () Bool)

(assert (=> b!2314 m!963))

(assert (=> b!2281 d!441))

(declare-fun d!447 () Bool)

(assert (=> d!447 (= (isEmpty!34 (toList!40 lm!258)) ((_ is Nil!28) (toList!40 lm!258)))))

(assert (=> d!399 d!447))

(declare-fun b!2318 () Bool)

(declare-fun e!697 () Option!8)

(assert (=> b!2318 (= e!697 (getValueByKey!2 (t!2104 (t!2104 (toList!40 lt!352))) k0!394))))

(declare-fun d!453 () Bool)

(declare-fun c!144 () Bool)

(assert (=> d!453 (= c!144 (and ((_ is Cons!27) (t!2104 (toList!40 lt!352))) (= (_1!22 (h!593 (t!2104 (toList!40 lt!352)))) k0!394)))))

(declare-fun e!696 () Option!8)

(assert (=> d!453 (= (getValueByKey!2 (t!2104 (toList!40 lt!352)) k0!394) e!696)))

(declare-fun b!2316 () Bool)

(assert (=> b!2316 (= e!696 (Some!7 (_2!22 (h!593 (t!2104 (toList!40 lt!352))))))))

(declare-fun b!2317 () Bool)

(assert (=> b!2317 (= e!696 e!697)))

(declare-fun c!145 () Bool)

(assert (=> b!2317 (= c!145 (and ((_ is Cons!27) (t!2104 (toList!40 lt!352))) (not (= (_1!22 (h!593 (t!2104 (toList!40 lt!352)))) k0!394))))))

(declare-fun b!2319 () Bool)

(assert (=> b!2319 (= e!697 None!6)))

(assert (= (and d!453 c!144) b!2316))

(assert (= (and d!453 (not c!144)) b!2317))

(assert (= (and b!2317 c!145) b!2318))

(assert (= (and b!2317 (not c!145)) b!2319))

(declare-fun m!967 () Bool)

(assert (=> b!2318 m!967))

(assert (=> b!2240 d!453))

(declare-fun d!455 () Bool)

(declare-fun res!4673 () Bool)

(declare-fun e!698 () Bool)

(assert (=> d!455 (=> res!4673 e!698)))

(assert (=> d!455 (= res!4673 (not ((_ is Some!7) (getValueByKey!2 (toList!40 lt!352) k0!394))))))

(assert (=> d!455 (= (forall!25 (getValueByKey!2 (toList!40 lt!352) k0!394) lambda!23) e!698)))

(declare-fun b!2320 () Bool)

(assert (=> b!2320 (= e!698 (dynLambda!24 lambda!23 (v!1080 (getValueByKey!2 (toList!40 lt!352) k0!394))))))

(assert (= (and d!455 (not res!4673)) b!2320))

(declare-fun b_lambda!241 () Bool)

(assert (=> (not b_lambda!241) (not b!2320)))

(declare-fun m!969 () Bool)

(assert (=> b!2320 m!969))

(assert (=> d!379 d!455))

(assert (=> d!379 d!365))

(declare-fun bs!99 () Bool)

(declare-fun d!457 () Bool)

(assert (= bs!99 (and d!457 b!2166)))

(declare-fun lambda!29 () Int)

(assert (=> bs!99 (= lambda!29 lambda!9)))

(declare-fun bs!100 () Bool)

(assert (= bs!100 (and d!457 d!379)))

(assert (=> bs!100 (= lambda!29 lambda!23)))

(assert (=> d!457 true))

(assert (=> d!457 true))

(assert (=> d!457 (< (dynLambda!17 order!5 p!318) (dynLambda!18 order!7 lambda!29))))

(assert (=> d!457 (forall!25 (getValueByKey!2 (toList!40 lt!352) k0!394) lambda!29)))

(assert (=> d!457 true))

(declare-fun _$38!26 () Unit!15)

(assert (=> d!457 (= (choose!133 lt!352 p!318 k0!394) _$38!26)))

(declare-fun bs!101 () Bool)

(assert (= bs!101 d!457))

(assert (=> bs!101 m!811))

(assert (=> bs!101 m!811))

(declare-fun m!977 () Bool)

(assert (=> bs!101 m!977))

(assert (=> d!379 d!457))

(assert (=> d!379 d!403))

(declare-fun d!467 () Bool)

(assert (=> d!467 (= (tail!48 (toList!40 lm!258)) (t!2104 (toList!40 lm!258)))))

(assert (=> d!405 d!467))

(declare-fun d!469 () Bool)

(declare-fun res!4693 () Bool)

(declare-fun e!723 () Bool)

(assert (=> d!469 (=> res!4693 e!723)))

(assert (=> d!469 (= res!4693 (or ((_ is Nil!28) (toList!40 lm!258)) ((_ is Nil!28) (t!2104 (toList!40 lm!258)))))))

(assert (=> d!469 (= (isStrictlySorted!13 (toList!40 lm!258)) e!723)))

(declare-fun b!2349 () Bool)

(declare-fun e!724 () Bool)

(assert (=> b!2349 (= e!723 e!724)))

(declare-fun res!4694 () Bool)

(assert (=> b!2349 (=> (not res!4694) (not e!724))))

(assert (=> b!2349 (= res!4694 (bvslt (_1!22 (h!593 (toList!40 lm!258))) (_1!22 (h!593 (t!2104 (toList!40 lm!258))))))))

(declare-fun b!2350 () Bool)

(assert (=> b!2350 (= e!724 (isStrictlySorted!13 (t!2104 (toList!40 lm!258))))))

(assert (= (and d!469 (not res!4693)) b!2349))

(assert (= (and b!2349 res!4694) b!2350))

(declare-fun m!991 () Bool)

(assert (=> b!2350 m!991))

(assert (=> d!361 d!469))

(declare-fun b!2352 () Bool)

(declare-fun e!726 () Bool)

(declare-fun tp!191 () Bool)

(assert (=> b!2352 (= e!726 (and tp_is_empty!33 tp!191))))

(assert (=> b!2291 (= tp!185 e!726)))

(assert (= (and b!2291 ((_ is Cons!27) (t!2104 (toList!40 lm!258)))) b!2352))

(declare-fun b_lambda!259 () Bool)

(assert (= b_lambda!237 (or (and start!300 b_free!45) b_lambda!259)))

(declare-fun b_lambda!263 () Bool)

(assert (= b_lambda!233 (or (and start!300 b_free!45) b_lambda!263)))

(declare-fun b_lambda!265 () Bool)

(assert (= b_lambda!241 (or d!379 b_lambda!265)))

(declare-fun bs!107 () Bool)

(declare-fun d!479 () Bool)

(assert (= bs!107 (and d!479 d!379)))

(assert (=> bs!107 (= (dynLambda!24 lambda!23 (v!1080 (getValueByKey!2 (toList!40 lt!352) k0!394))) (dynLambda!22 p!318 (tuple2!45 k0!394 (v!1080 (getValueByKey!2 (toList!40 lt!352) k0!394)))))))

(declare-fun b_lambda!269 () Bool)

(assert (=> (not b_lambda!269) (not bs!107)))

(assert (=> bs!107 t!2123))

(declare-fun b_and!167 () Bool)

(assert (= b_and!159 (and (=> t!2123 result!125) b_and!167)))

(assert (=> bs!107 m!931))

(assert (=> b!2320 d!479))

(check-sat (not b!2310) (not d!457) (not b_lambda!263) (not b_lambda!219) b_and!167 (not b_next!45) (not b_lambda!259) (not b!2350) (not b_lambda!197) (not b_lambda!195) (not b!2318) (not b_lambda!199) (not b_lambda!217) (not b!2352) (not b!2303) (not b_lambda!193) tp_is_empty!33 (not b_lambda!265) (not b_lambda!269) (not b!2314))
(check-sat b_and!167 (not b_next!45))
