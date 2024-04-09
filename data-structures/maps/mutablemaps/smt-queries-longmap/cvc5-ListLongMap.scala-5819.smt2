; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75074 () Bool)

(assert start!75074)

(declare-fun res!601190 () Bool)

(declare-fun e!492494 () Bool)

(assert (=> start!75074 (=> (not res!601190) (not e!492494))))

(declare-datatypes ((B!1232 0))(
  ( (B!1233 (val!8922 Int)) )
))
(declare-datatypes ((tuple2!11864 0))(
  ( (tuple2!11865 (_1!5942 (_ BitVec 64)) (_2!5942 B!1232)) )
))
(declare-datatypes ((List!17722 0))(
  ( (Nil!17719) (Cons!17718 (h!18849 tuple2!11864) (t!25007 List!17722)) )
))
(declare-datatypes ((ListLongMap!10647 0))(
  ( (ListLongMap!10648 (toList!5339 List!17722)) )
))
(declare-fun lm!210 () ListLongMap!10647)

(declare-fun isStrictlySorted!461 (List!17722) Bool)

(assert (=> start!75074 (= res!601190 (isStrictlySorted!461 (toList!5339 lm!210)))))

(assert (=> start!75074 e!492494))

(declare-fun e!492493 () Bool)

(declare-fun inv!29369 (ListLongMap!10647) Bool)

(assert (=> start!75074 (and (inv!29369 lm!210) e!492493)))

(assert (=> start!75074 true))

(declare-fun tp_is_empty!17743 () Bool)

(assert (=> start!75074 tp_is_empty!17743))

(declare-fun a!500 () (_ BitVec 64))

(declare-fun lt!400829 () tuple2!11864)

(declare-fun b1!76 () B!1232)

(declare-fun b!884871 () Bool)

(declare-fun +!2536 (ListLongMap!10647 tuple2!11864) ListLongMap!10647)

(assert (=> b!884871 (= e!492494 (not (= (+!2536 lm!210 lt!400829) (+!2536 (+!2536 lm!210 (tuple2!11865 a!500 b1!76)) lt!400829))))))

(declare-fun b2!54 () B!1232)

(assert (=> b!884871 (= lt!400829 (tuple2!11865 a!500 b2!54))))

(declare-fun insertStrictlySorted!282 (List!17722 (_ BitVec 64) B!1232) List!17722)

(assert (=> b!884871 (= (insertStrictlySorted!282 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76) a!500 b2!54) (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b2!54))))

(declare-datatypes ((Unit!30181 0))(
  ( (Unit!30182) )
))
(declare-fun lt!400830 () Unit!30181)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!1 (List!17722 (_ BitVec 64) B!1232 B!1232) Unit!30181)

(assert (=> b!884871 (= lt!400830 (lemmaInsertStrictlySortedErasesIfSameKey!1 (toList!5339 lm!210) a!500 b1!76 b2!54))))

(declare-fun b!884872 () Bool)

(declare-fun tp!54213 () Bool)

(assert (=> b!884872 (= e!492493 tp!54213)))

(assert (= (and start!75074 res!601190) b!884871))

(assert (= start!75074 b!884872))

(declare-fun m!825209 () Bool)

(assert (=> start!75074 m!825209))

(declare-fun m!825211 () Bool)

(assert (=> start!75074 m!825211))

(declare-fun m!825213 () Bool)

(assert (=> b!884871 m!825213))

(declare-fun m!825215 () Bool)

(assert (=> b!884871 m!825215))

(declare-fun m!825217 () Bool)

(assert (=> b!884871 m!825217))

(declare-fun m!825219 () Bool)

(assert (=> b!884871 m!825219))

(assert (=> b!884871 m!825217))

(assert (=> b!884871 m!825213))

(declare-fun m!825221 () Bool)

(assert (=> b!884871 m!825221))

(declare-fun m!825223 () Bool)

(assert (=> b!884871 m!825223))

(declare-fun m!825225 () Bool)

(assert (=> b!884871 m!825225))

(push 1)

(assert (not b!884871))

(assert (not start!75074))

(assert (not b!884872))

(assert tp_is_empty!17743)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun b!884949 () Bool)

(declare-fun e!492548 () Bool)

(declare-fun lt!400849 () List!17722)

(declare-fun contains!4279 (List!17722 tuple2!11864) Bool)

(assert (=> b!884949 (= e!492548 (contains!4279 lt!400849 (tuple2!11865 a!500 b2!54)))))

(declare-fun bm!39034 () Bool)

(declare-fun call!39038 () List!17722)

(declare-fun call!39039 () List!17722)

(assert (=> bm!39034 (= call!39038 call!39039)))

(declare-fun b!884950 () Bool)

(declare-fun c!93128 () Bool)

(declare-fun c!93127 () Bool)

(declare-fun e!492546 () List!17722)

(assert (=> b!884950 (= e!492546 (ite c!93127 (t!25007 (toList!5339 lm!210)) (ite c!93128 (Cons!17718 (h!18849 (toList!5339 lm!210)) (t!25007 (toList!5339 lm!210))) Nil!17719)))))

(declare-fun bm!39035 () Bool)

(declare-fun call!39037 () List!17722)

(assert (=> bm!39035 (= call!39039 call!39037)))

(declare-fun b!884951 () Bool)

(declare-fun e!492549 () List!17722)

(assert (=> b!884951 (= e!492549 call!39039)))

(declare-fun c!93129 () Bool)

(declare-fun bm!39036 () Bool)

(declare-fun $colon$colon!538 (List!17722 tuple2!11864) List!17722)

(assert (=> bm!39036 (= call!39037 ($colon$colon!538 e!492546 (ite c!93129 (h!18849 (toList!5339 lm!210)) (tuple2!11865 a!500 b2!54))))))

(declare-fun c!93126 () Bool)

(assert (=> bm!39036 (= c!93126 c!93129)))

(declare-fun b!884952 () Bool)

(assert (=> b!884952 (= c!93128 (and (is-Cons!17718 (toList!5339 lm!210)) (bvsgt (_1!5942 (h!18849 (toList!5339 lm!210))) a!500)))))

(declare-fun e!492545 () List!17722)

(assert (=> b!884952 (= e!492549 e!492545)))

(declare-fun b!884953 () Bool)

(declare-fun res!601217 () Bool)

(assert (=> b!884953 (=> (not res!601217) (not e!492548))))

(declare-fun containsKey!403 (List!17722 (_ BitVec 64)) Bool)

(assert (=> b!884953 (= res!601217 (containsKey!403 lt!400849 a!500))))

(declare-fun b!884954 () Bool)

(declare-fun e!492547 () List!17722)

(assert (=> b!884954 (= e!492547 call!39037)))

(declare-fun b!884955 () Bool)

(assert (=> b!884955 (= e!492545 call!39038)))

(declare-fun b!884956 () Bool)

(assert (=> b!884956 (= e!492547 e!492549)))

(assert (=> b!884956 (= c!93127 (and (is-Cons!17718 (toList!5339 lm!210)) (= (_1!5942 (h!18849 (toList!5339 lm!210))) a!500)))))

(declare-fun b!884957 () Bool)

(assert (=> b!884957 (= e!492546 (insertStrictlySorted!282 (t!25007 (toList!5339 lm!210)) a!500 b2!54))))

(declare-fun d!109231 () Bool)

(assert (=> d!109231 e!492548))

(declare-fun res!601218 () Bool)

(assert (=> d!109231 (=> (not res!601218) (not e!492548))))

(assert (=> d!109231 (= res!601218 (isStrictlySorted!461 lt!400849))))

(assert (=> d!109231 (= lt!400849 e!492547)))

(assert (=> d!109231 (= c!93129 (and (is-Cons!17718 (toList!5339 lm!210)) (bvslt (_1!5942 (h!18849 (toList!5339 lm!210))) a!500)))))

(assert (=> d!109231 (isStrictlySorted!461 (toList!5339 lm!210))))

(assert (=> d!109231 (= (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b2!54) lt!400849)))

(declare-fun b!884958 () Bool)

(assert (=> b!884958 (= e!492545 call!39038)))

(assert (= (and d!109231 c!93129) b!884954))

(assert (= (and d!109231 (not c!93129)) b!884956))

(assert (= (and b!884956 c!93127) b!884951))

(assert (= (and b!884956 (not c!93127)) b!884952))

(assert (= (and b!884952 c!93128) b!884958))

(assert (= (and b!884952 (not c!93128)) b!884955))

(assert (= (or b!884958 b!884955) bm!39034))

(assert (= (or b!884951 bm!39034) bm!39035))

(assert (= (or b!884954 bm!39035) bm!39036))

(assert (= (and bm!39036 c!93126) b!884957))

(assert (= (and bm!39036 (not c!93126)) b!884950))

(assert (= (and d!109231 res!601218) b!884953))

(assert (= (and b!884953 res!601217) b!884949))

(declare-fun m!825267 () Bool)

(assert (=> b!884953 m!825267))

(declare-fun m!825269 () Bool)

(assert (=> b!884957 m!825269))

(declare-fun m!825271 () Bool)

(assert (=> b!884949 m!825271))

(declare-fun m!825273 () Bool)

(assert (=> bm!39036 m!825273))

(declare-fun m!825275 () Bool)

(assert (=> d!109231 m!825275))

(assert (=> d!109231 m!825209))

(assert (=> b!884871 d!109231))

(declare-fun d!109243 () Bool)

(declare-fun e!492566 () Bool)

(assert (=> d!109243 e!492566))

(declare-fun res!601232 () Bool)

(assert (=> d!109243 (=> (not res!601232) (not e!492566))))

(declare-fun lt!400860 () ListLongMap!10647)

(declare-fun contains!4282 (ListLongMap!10647 (_ BitVec 64)) Bool)

(assert (=> d!109243 (= res!601232 (contains!4282 lt!400860 (_1!5942 lt!400829)))))

(declare-fun lt!400862 () List!17722)

(assert (=> d!109243 (= lt!400860 (ListLongMap!10648 lt!400862))))

(declare-fun lt!400861 () Unit!30181)

(declare-fun lt!400863 () Unit!30181)

(assert (=> d!109243 (= lt!400861 lt!400863)))

(declare-datatypes ((Option!434 0))(
  ( (Some!433 (v!11389 B!1232)) (None!432) )
))
(declare-fun getValueByKey!428 (List!17722 (_ BitVec 64)) Option!434)

(assert (=> d!109243 (= (getValueByKey!428 lt!400862 (_1!5942 lt!400829)) (Some!433 (_2!5942 lt!400829)))))

(declare-fun lemmaContainsTupThenGetReturnValue!244 (List!17722 (_ BitVec 64) B!1232) Unit!30181)

(assert (=> d!109243 (= lt!400863 (lemmaContainsTupThenGetReturnValue!244 lt!400862 (_1!5942 lt!400829) (_2!5942 lt!400829)))))

(assert (=> d!109243 (= lt!400862 (insertStrictlySorted!282 (toList!5339 (+!2536 lm!210 (tuple2!11865 a!500 b1!76))) (_1!5942 lt!400829) (_2!5942 lt!400829)))))

(assert (=> d!109243 (= (+!2536 (+!2536 lm!210 (tuple2!11865 a!500 b1!76)) lt!400829) lt!400860)))

(declare-fun b!884991 () Bool)

(declare-fun res!601231 () Bool)

(assert (=> b!884991 (=> (not res!601231) (not e!492566))))

(assert (=> b!884991 (= res!601231 (= (getValueByKey!428 (toList!5339 lt!400860) (_1!5942 lt!400829)) (Some!433 (_2!5942 lt!400829))))))

(declare-fun b!884992 () Bool)

(assert (=> b!884992 (= e!492566 (contains!4279 (toList!5339 lt!400860) lt!400829))))

(assert (= (and d!109243 res!601232) b!884991))

(assert (= (and b!884991 res!601231) b!884992))

(declare-fun m!825297 () Bool)

(assert (=> d!109243 m!825297))

(declare-fun m!825299 () Bool)

(assert (=> d!109243 m!825299))

(declare-fun m!825301 () Bool)

(assert (=> d!109243 m!825301))

(declare-fun m!825303 () Bool)

(assert (=> d!109243 m!825303))

(declare-fun m!825305 () Bool)

(assert (=> b!884991 m!825305))

(declare-fun m!825307 () Bool)

(assert (=> b!884992 m!825307))

(assert (=> b!884871 d!109243))

(declare-fun d!109249 () Bool)

(declare-fun e!492567 () Bool)

(assert (=> d!109249 e!492567))

(declare-fun res!601234 () Bool)

(assert (=> d!109249 (=> (not res!601234) (not e!492567))))

(declare-fun lt!400868 () ListLongMap!10647)

(assert (=> d!109249 (= res!601234 (contains!4282 lt!400868 (_1!5942 (tuple2!11865 a!500 b1!76))))))

(declare-fun lt!400870 () List!17722)

(assert (=> d!109249 (= lt!400868 (ListLongMap!10648 lt!400870))))

(declare-fun lt!400869 () Unit!30181)

(declare-fun lt!400871 () Unit!30181)

(assert (=> d!109249 (= lt!400869 lt!400871)))

(assert (=> d!109249 (= (getValueByKey!428 lt!400870 (_1!5942 (tuple2!11865 a!500 b1!76))) (Some!433 (_2!5942 (tuple2!11865 a!500 b1!76))))))

(assert (=> d!109249 (= lt!400871 (lemmaContainsTupThenGetReturnValue!244 lt!400870 (_1!5942 (tuple2!11865 a!500 b1!76)) (_2!5942 (tuple2!11865 a!500 b1!76))))))

(assert (=> d!109249 (= lt!400870 (insertStrictlySorted!282 (toList!5339 lm!210) (_1!5942 (tuple2!11865 a!500 b1!76)) (_2!5942 (tuple2!11865 a!500 b1!76))))))

(assert (=> d!109249 (= (+!2536 lm!210 (tuple2!11865 a!500 b1!76)) lt!400868)))

(declare-fun b!884993 () Bool)

(declare-fun res!601233 () Bool)

(assert (=> b!884993 (=> (not res!601233) (not e!492567))))

(assert (=> b!884993 (= res!601233 (= (getValueByKey!428 (toList!5339 lt!400868) (_1!5942 (tuple2!11865 a!500 b1!76))) (Some!433 (_2!5942 (tuple2!11865 a!500 b1!76)))))))

(declare-fun b!884994 () Bool)

(assert (=> b!884994 (= e!492567 (contains!4279 (toList!5339 lt!400868) (tuple2!11865 a!500 b1!76)))))

(assert (= (and d!109249 res!601234) b!884993))

(assert (= (and b!884993 res!601233) b!884994))

(declare-fun m!825309 () Bool)

(assert (=> d!109249 m!825309))

(declare-fun m!825311 () Bool)

(assert (=> d!109249 m!825311))

(declare-fun m!825313 () Bool)

(assert (=> d!109249 m!825313))

(declare-fun m!825315 () Bool)

(assert (=> d!109249 m!825315))

(declare-fun m!825317 () Bool)

(assert (=> b!884993 m!825317))

(declare-fun m!825319 () Bool)

(assert (=> b!884994 m!825319))

(assert (=> b!884871 d!109249))

(declare-fun d!109251 () Bool)

(assert (=> d!109251 (= (insertStrictlySorted!282 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76) a!500 b2!54) (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b2!54))))

(declare-fun lt!400894 () Unit!30181)

(declare-fun choose!1453 (List!17722 (_ BitVec 64) B!1232 B!1232) Unit!30181)

(assert (=> d!109251 (= lt!400894 (choose!1453 (toList!5339 lm!210) a!500 b1!76 b2!54))))

(assert (=> d!109251 (isStrictlySorted!461 (toList!5339 lm!210))))

(assert (=> d!109251 (= (lemmaInsertStrictlySortedErasesIfSameKey!1 (toList!5339 lm!210) a!500 b1!76 b2!54) lt!400894)))

(declare-fun bs!24801 () Bool)

(assert (= bs!24801 d!109251))

(assert (=> bs!24801 m!825225))

(assert (=> bs!24801 m!825217))

(declare-fun m!825337 () Bool)

(assert (=> bs!24801 m!825337))

(assert (=> bs!24801 m!825209))

(assert (=> bs!24801 m!825217))

(assert (=> bs!24801 m!825219))

(assert (=> b!884871 d!109251))

(declare-fun d!109255 () Bool)

(declare-fun e!492574 () Bool)

(assert (=> d!109255 e!492574))

(declare-fun res!601248 () Bool)

(assert (=> d!109255 (=> (not res!601248) (not e!492574))))

(declare-fun lt!400895 () ListLongMap!10647)

(assert (=> d!109255 (= res!601248 (contains!4282 lt!400895 (_1!5942 lt!400829)))))

(declare-fun lt!400897 () List!17722)

(assert (=> d!109255 (= lt!400895 (ListLongMap!10648 lt!400897))))

(declare-fun lt!400896 () Unit!30181)

(declare-fun lt!400898 () Unit!30181)

(assert (=> d!109255 (= lt!400896 lt!400898)))

(assert (=> d!109255 (= (getValueByKey!428 lt!400897 (_1!5942 lt!400829)) (Some!433 (_2!5942 lt!400829)))))

(assert (=> d!109255 (= lt!400898 (lemmaContainsTupThenGetReturnValue!244 lt!400897 (_1!5942 lt!400829) (_2!5942 lt!400829)))))

(assert (=> d!109255 (= lt!400897 (insertStrictlySorted!282 (toList!5339 lm!210) (_1!5942 lt!400829) (_2!5942 lt!400829)))))

(assert (=> d!109255 (= (+!2536 lm!210 lt!400829) lt!400895)))

(declare-fun b!885007 () Bool)

(declare-fun res!601247 () Bool)

(assert (=> b!885007 (=> (not res!601247) (not e!492574))))

(assert (=> b!885007 (= res!601247 (= (getValueByKey!428 (toList!5339 lt!400895) (_1!5942 lt!400829)) (Some!433 (_2!5942 lt!400829))))))

(declare-fun b!885008 () Bool)

(assert (=> b!885008 (= e!492574 (contains!4279 (toList!5339 lt!400895) lt!400829))))

(assert (= (and d!109255 res!601248) b!885007))

(assert (= (and b!885007 res!601247) b!885008))

(declare-fun m!825347 () Bool)

(assert (=> d!109255 m!825347))

(declare-fun m!825349 () Bool)

(assert (=> d!109255 m!825349))

(declare-fun m!825351 () Bool)

(assert (=> d!109255 m!825351))

(declare-fun m!825353 () Bool)

(assert (=> d!109255 m!825353))

(declare-fun m!825355 () Bool)

(assert (=> b!885007 m!825355))

(declare-fun m!825357 () Bool)

(assert (=> b!885008 m!825357))

(assert (=> b!884871 d!109255))

(declare-fun e!492578 () Bool)

(declare-fun b!885009 () Bool)

(declare-fun lt!400899 () List!17722)

(assert (=> b!885009 (= e!492578 (contains!4279 lt!400899 (tuple2!11865 a!500 b1!76)))))

(declare-fun bm!39047 () Bool)

(declare-fun call!39051 () List!17722)

(declare-fun call!39052 () List!17722)

(assert (=> bm!39047 (= call!39051 call!39052)))

(declare-fun c!93141 () Bool)

(declare-fun c!93142 () Bool)

(declare-fun e!492576 () List!17722)

(declare-fun b!885010 () Bool)

(assert (=> b!885010 (= e!492576 (ite c!93141 (t!25007 (toList!5339 lm!210)) (ite c!93142 (Cons!17718 (h!18849 (toList!5339 lm!210)) (t!25007 (toList!5339 lm!210))) Nil!17719)))))

(declare-fun bm!39048 () Bool)

(declare-fun call!39050 () List!17722)

(assert (=> bm!39048 (= call!39052 call!39050)))

(declare-fun b!885011 () Bool)

(declare-fun e!492579 () List!17722)

(assert (=> b!885011 (= e!492579 call!39052)))

(declare-fun c!93143 () Bool)

(declare-fun bm!39049 () Bool)

(assert (=> bm!39049 (= call!39050 ($colon$colon!538 e!492576 (ite c!93143 (h!18849 (toList!5339 lm!210)) (tuple2!11865 a!500 b1!76))))))

(declare-fun c!93140 () Bool)

(assert (=> bm!39049 (= c!93140 c!93143)))

(declare-fun b!885012 () Bool)

(assert (=> b!885012 (= c!93142 (and (is-Cons!17718 (toList!5339 lm!210)) (bvsgt (_1!5942 (h!18849 (toList!5339 lm!210))) a!500)))))

(declare-fun e!492575 () List!17722)

(assert (=> b!885012 (= e!492579 e!492575)))

(declare-fun b!885013 () Bool)

(declare-fun res!601249 () Bool)

(assert (=> b!885013 (=> (not res!601249) (not e!492578))))

(assert (=> b!885013 (= res!601249 (containsKey!403 lt!400899 a!500))))

(declare-fun b!885014 () Bool)

(declare-fun e!492577 () List!17722)

(assert (=> b!885014 (= e!492577 call!39050)))

(declare-fun b!885015 () Bool)

(assert (=> b!885015 (= e!492575 call!39051)))

(declare-fun b!885016 () Bool)

(assert (=> b!885016 (= e!492577 e!492579)))

(assert (=> b!885016 (= c!93141 (and (is-Cons!17718 (toList!5339 lm!210)) (= (_1!5942 (h!18849 (toList!5339 lm!210))) a!500)))))

(declare-fun b!885017 () Bool)

(assert (=> b!885017 (= e!492576 (insertStrictlySorted!282 (t!25007 (toList!5339 lm!210)) a!500 b1!76))))

(declare-fun d!109259 () Bool)

(assert (=> d!109259 e!492578))

(declare-fun res!601250 () Bool)

(assert (=> d!109259 (=> (not res!601250) (not e!492578))))

(assert (=> d!109259 (= res!601250 (isStrictlySorted!461 lt!400899))))

(assert (=> d!109259 (= lt!400899 e!492577)))

(assert (=> d!109259 (= c!93143 (and (is-Cons!17718 (toList!5339 lm!210)) (bvslt (_1!5942 (h!18849 (toList!5339 lm!210))) a!500)))))

(assert (=> d!109259 (isStrictlySorted!461 (toList!5339 lm!210))))

(assert (=> d!109259 (= (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76) lt!400899)))

(declare-fun b!885018 () Bool)

(assert (=> b!885018 (= e!492575 call!39051)))

(assert (= (and d!109259 c!93143) b!885014))

(assert (= (and d!109259 (not c!93143)) b!885016))

(assert (= (and b!885016 c!93141) b!885011))

(assert (= (and b!885016 (not c!93141)) b!885012))

(assert (= (and b!885012 c!93142) b!885018))

(assert (= (and b!885012 (not c!93142)) b!885015))

(assert (= (or b!885018 b!885015) bm!39047))

(assert (= (or b!885011 bm!39047) bm!39048))

(assert (= (or b!885014 bm!39048) bm!39049))

(assert (= (and bm!39049 c!93140) b!885017))

(assert (= (and bm!39049 (not c!93140)) b!885010))

(assert (= (and d!109259 res!601250) b!885013))

(assert (= (and b!885013 res!601249) b!885009))

(declare-fun m!825359 () Bool)

(assert (=> b!885013 m!825359))

(declare-fun m!825361 () Bool)

(assert (=> b!885017 m!825361))

(declare-fun m!825363 () Bool)

(assert (=> b!885009 m!825363))

(declare-fun m!825365 () Bool)

(assert (=> bm!39049 m!825365))

(declare-fun m!825367 () Bool)

(assert (=> d!109259 m!825367))

(assert (=> d!109259 m!825209))

(assert (=> b!884871 d!109259))

(declare-fun lt!400902 () List!17722)

(declare-fun e!492583 () Bool)

(declare-fun b!885019 () Bool)

(assert (=> b!885019 (= e!492583 (contains!4279 lt!400902 (tuple2!11865 a!500 b2!54)))))

(declare-fun bm!39050 () Bool)

(declare-fun call!39054 () List!17722)

(declare-fun call!39055 () List!17722)

(assert (=> bm!39050 (= call!39054 call!39055)))

(declare-fun b!885020 () Bool)

(declare-fun e!492581 () List!17722)

(declare-fun c!93145 () Bool)

(declare-fun c!93146 () Bool)

(assert (=> b!885020 (= e!492581 (ite c!93145 (t!25007 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76)) (ite c!93146 (Cons!17718 (h!18849 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76)) (t!25007 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76))) Nil!17719)))))

(declare-fun bm!39051 () Bool)

(declare-fun call!39053 () List!17722)

(assert (=> bm!39051 (= call!39055 call!39053)))

(declare-fun b!885021 () Bool)

(declare-fun e!492584 () List!17722)

(assert (=> b!885021 (= e!492584 call!39055)))

(declare-fun bm!39052 () Bool)

(declare-fun c!93147 () Bool)

(assert (=> bm!39052 (= call!39053 ($colon$colon!538 e!492581 (ite c!93147 (h!18849 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76)) (tuple2!11865 a!500 b2!54))))))

(declare-fun c!93144 () Bool)

(assert (=> bm!39052 (= c!93144 c!93147)))

(declare-fun b!885022 () Bool)

(assert (=> b!885022 (= c!93146 (and (is-Cons!17718 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76)) (bvsgt (_1!5942 (h!18849 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76))) a!500)))))

(declare-fun e!492580 () List!17722)

(assert (=> b!885022 (= e!492584 e!492580)))

(declare-fun b!885023 () Bool)

(declare-fun res!601251 () Bool)

(assert (=> b!885023 (=> (not res!601251) (not e!492583))))

(assert (=> b!885023 (= res!601251 (containsKey!403 lt!400902 a!500))))

(declare-fun b!885024 () Bool)

(declare-fun e!492582 () List!17722)

(assert (=> b!885024 (= e!492582 call!39053)))

(declare-fun b!885025 () Bool)

(assert (=> b!885025 (= e!492580 call!39054)))

(declare-fun b!885026 () Bool)

(assert (=> b!885026 (= e!492582 e!492584)))

(assert (=> b!885026 (= c!93145 (and (is-Cons!17718 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76)) (= (_1!5942 (h!18849 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76))) a!500)))))

(declare-fun b!885027 () Bool)

(assert (=> b!885027 (= e!492581 (insertStrictlySorted!282 (t!25007 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76)) a!500 b2!54))))

(declare-fun d!109261 () Bool)

(assert (=> d!109261 e!492583))

(declare-fun res!601252 () Bool)

(assert (=> d!109261 (=> (not res!601252) (not e!492583))))

(assert (=> d!109261 (= res!601252 (isStrictlySorted!461 lt!400902))))

(assert (=> d!109261 (= lt!400902 e!492582)))

(assert (=> d!109261 (= c!93147 (and (is-Cons!17718 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76)) (bvslt (_1!5942 (h!18849 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76))) a!500)))))

(assert (=> d!109261 (isStrictlySorted!461 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76))))

(assert (=> d!109261 (= (insertStrictlySorted!282 (insertStrictlySorted!282 (toList!5339 lm!210) a!500 b1!76) a!500 b2!54) lt!400902)))

(declare-fun b!885028 () Bool)

(assert (=> b!885028 (= e!492580 call!39054)))

(assert (= (and d!109261 c!93147) b!885024))

(assert (= (and d!109261 (not c!93147)) b!885026))

(assert (= (and b!885026 c!93145) b!885021))

(assert (= (and b!885026 (not c!93145)) b!885022))

(assert (= (and b!885022 c!93146) b!885028))

(assert (= (and b!885022 (not c!93146)) b!885025))

(assert (= (or b!885028 b!885025) bm!39050))

(assert (= (or b!885021 bm!39050) bm!39051))

(assert (= (or b!885024 bm!39051) bm!39052))

(assert (= (and bm!39052 c!93144) b!885027))

(assert (= (and bm!39052 (not c!93144)) b!885020))

(assert (= (and d!109261 res!601252) b!885023))

(assert (= (and b!885023 res!601251) b!885019))

(declare-fun m!825371 () Bool)

(assert (=> b!885023 m!825371))

(declare-fun m!825373 () Bool)

(assert (=> b!885027 m!825373))

(declare-fun m!825375 () Bool)

(assert (=> b!885019 m!825375))

(declare-fun m!825377 () Bool)

(assert (=> bm!39052 m!825377))

(declare-fun m!825379 () Bool)

(assert (=> d!109261 m!825379))

(assert (=> d!109261 m!825217))

(declare-fun m!825381 () Bool)

(assert (=> d!109261 m!825381))

(assert (=> b!884871 d!109261))

(declare-fun d!109265 () Bool)

(declare-fun res!601268 () Bool)

(declare-fun e!492607 () Bool)

(assert (=> d!109265 (=> res!601268 e!492607)))

(assert (=> d!109265 (= res!601268 (or (is-Nil!17719 (toList!5339 lm!210)) (is-Nil!17719 (t!25007 (toList!5339 lm!210)))))))

(assert (=> d!109265 (= (isStrictlySorted!461 (toList!5339 lm!210)) e!492607)))

(declare-fun b!885067 () Bool)

(declare-fun e!492608 () Bool)

(assert (=> b!885067 (= e!492607 e!492608)))

(declare-fun res!601270 () Bool)

(assert (=> b!885067 (=> (not res!601270) (not e!492608))))

(assert (=> b!885067 (= res!601270 (bvslt (_1!5942 (h!18849 (toList!5339 lm!210))) (_1!5942 (h!18849 (t!25007 (toList!5339 lm!210))))))))

(declare-fun b!885068 () Bool)

(assert (=> b!885068 (= e!492608 (isStrictlySorted!461 (t!25007 (toList!5339 lm!210))))))

(assert (= (and d!109265 (not res!601268)) b!885067))

(assert (= (and b!885067 res!601270) b!885068))

(declare-fun m!825441 () Bool)

(assert (=> b!885068 m!825441))

(assert (=> start!75074 d!109265))

(declare-fun d!109279 () Bool)

(assert (=> d!109279 (= (inv!29369 lm!210) (isStrictlySorted!461 (toList!5339 lm!210)))))

(declare-fun bs!24804 () Bool)

(assert (= bs!24804 d!109279))

(assert (=> bs!24804 m!825209))

(assert (=> start!75074 d!109279))

(declare-fun b!885092 () Bool)

(declare-fun e!492620 () Bool)

(declare-fun tp!54225 () Bool)

(assert (=> b!885092 (= e!492620 (and tp_is_empty!17743 tp!54225))))

(assert (=> b!884872 (= tp!54213 e!492620)))

(assert (= (and b!884872 (is-Cons!17718 (toList!5339 lm!210))) b!885092))

(push 1)

