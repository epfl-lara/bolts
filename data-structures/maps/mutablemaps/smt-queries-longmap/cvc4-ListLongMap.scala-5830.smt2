; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!75234 () Bool)

(assert start!75234)

(declare-fun b!885880 () Bool)

(declare-fun res!601627 () Bool)

(declare-fun e!493114 () Bool)

(assert (=> b!885880 (=> (not res!601627) (not e!493114))))

(declare-datatypes ((B!1302 0))(
  ( (B!1303 (val!8957 Int)) )
))
(declare-datatypes ((tuple2!11934 0))(
  ( (tuple2!11935 (_1!5977 (_ BitVec 64)) (_2!5977 B!1302)) )
))
(declare-datatypes ((List!17757 0))(
  ( (Nil!17754) (Cons!17753 (h!18884 tuple2!11934) (t!25042 List!17757)) )
))
(declare-fun l!906 () List!17757)

(declare-fun key1!49 () (_ BitVec 64))

(assert (=> b!885880 (= res!601627 (and (is-Cons!17753 l!906) (bvslt (_1!5977 (h!18884 l!906)) key1!49)))))

(declare-fun b!885883 () Bool)

(declare-fun e!493115 () Bool)

(declare-fun tp_is_empty!17813 () Bool)

(declare-fun tp!54372 () Bool)

(assert (=> b!885883 (= e!493115 (and tp_is_empty!17813 tp!54372))))

(declare-fun v2!16 () B!1302)

(declare-fun b!885882 () Bool)

(declare-fun v1!38 () B!1302)

(declare-fun insertStrictlySorted!299 (List!17757 (_ BitVec 64) B!1302) List!17757)

(assert (=> b!885882 (= e!493114 (not (= (insertStrictlySorted!299 (insertStrictlySorted!299 l!906 key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!299 l!906 key1!49 v2!16))))))

(assert (=> b!885882 (= (insertStrictlySorted!299 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!299 (t!25042 l!906) key1!49 v2!16))))

(declare-datatypes ((Unit!30209 0))(
  ( (Unit!30210) )
))
(declare-fun lt!401019 () Unit!30209)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!15 (List!17757 (_ BitVec 64) B!1302 B!1302) Unit!30209)

(assert (=> b!885882 (= lt!401019 (lemmaInsertStrictlySortedErasesIfSameKey!15 (t!25042 l!906) key1!49 v1!38 v2!16))))

(declare-fun b!885881 () Bool)

(declare-fun res!601628 () Bool)

(assert (=> b!885881 (=> (not res!601628) (not e!493114))))

(declare-fun isStrictlySorted!487 (List!17757) Bool)

(assert (=> b!885881 (= res!601628 (isStrictlySorted!487 (t!25042 l!906)))))

(declare-fun res!601626 () Bool)

(assert (=> start!75234 (=> (not res!601626) (not e!493114))))

(assert (=> start!75234 (= res!601626 (isStrictlySorted!487 l!906))))

(assert (=> start!75234 e!493114))

(assert (=> start!75234 e!493115))

(assert (=> start!75234 true))

(assert (=> start!75234 tp_is_empty!17813))

(assert (= (and start!75234 res!601626) b!885880))

(assert (= (and b!885880 res!601627) b!885881))

(assert (= (and b!885881 res!601628) b!885882))

(assert (= (and start!75234 (is-Cons!17753 l!906)) b!885883))

(declare-fun m!825911 () Bool)

(assert (=> b!885882 m!825911))

(declare-fun m!825913 () Bool)

(assert (=> b!885882 m!825913))

(declare-fun m!825915 () Bool)

(assert (=> b!885882 m!825915))

(declare-fun m!825917 () Bool)

(assert (=> b!885882 m!825917))

(declare-fun m!825919 () Bool)

(assert (=> b!885882 m!825919))

(assert (=> b!885882 m!825917))

(declare-fun m!825921 () Bool)

(assert (=> b!885882 m!825921))

(assert (=> b!885882 m!825911))

(declare-fun m!825923 () Bool)

(assert (=> b!885882 m!825923))

(declare-fun m!825925 () Bool)

(assert (=> b!885881 m!825925))

(declare-fun m!825927 () Bool)

(assert (=> start!75234 m!825927))

(push 1)

(assert (not start!75234))

(assert (not b!885882))

(assert (not b!885883))

(assert tp_is_empty!17813)

(assert (not b!885881))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!109433 () Bool)

(declare-fun res!601647 () Bool)

(declare-fun e!493134 () Bool)

(assert (=> d!109433 (=> res!601647 e!493134)))

(assert (=> d!109433 (= res!601647 (or (is-Nil!17754 (t!25042 l!906)) (is-Nil!17754 (t!25042 (t!25042 l!906)))))))

(assert (=> d!109433 (= (isStrictlySorted!487 (t!25042 l!906)) e!493134)))

(declare-fun b!885902 () Bool)

(declare-fun e!493135 () Bool)

(assert (=> b!885902 (= e!493134 e!493135)))

(declare-fun res!601648 () Bool)

(assert (=> b!885902 (=> (not res!601648) (not e!493135))))

(assert (=> b!885902 (= res!601648 (bvslt (_1!5977 (h!18884 (t!25042 l!906))) (_1!5977 (h!18884 (t!25042 (t!25042 l!906))))))))

(declare-fun b!885903 () Bool)

(assert (=> b!885903 (= e!493135 (isStrictlySorted!487 (t!25042 (t!25042 l!906))))))

(assert (= (and d!109433 (not res!601647)) b!885902))

(assert (= (and b!885902 res!601648) b!885903))

(declare-fun m!825937 () Bool)

(assert (=> b!885903 m!825937))

(assert (=> b!885881 d!109433))

(declare-fun d!109435 () Bool)

(assert (=> d!109435 (= (insertStrictlySorted!299 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!299 (t!25042 l!906) key1!49 v2!16))))

(declare-fun lt!401030 () Unit!30209)

(declare-fun choose!1460 (List!17757 (_ BitVec 64) B!1302 B!1302) Unit!30209)

(assert (=> d!109435 (= lt!401030 (choose!1460 (t!25042 l!906) key1!49 v1!38 v2!16))))

(assert (=> d!109435 (isStrictlySorted!487 (t!25042 l!906))))

(assert (=> d!109435 (= (lemmaInsertStrictlySortedErasesIfSameKey!15 (t!25042 l!906) key1!49 v1!38 v2!16) lt!401030)))

(declare-fun bs!24843 () Bool)

(assert (= bs!24843 d!109435))

(assert (=> bs!24843 m!825911))

(declare-fun m!825939 () Bool)

(assert (=> bs!24843 m!825939))

(assert (=> bs!24843 m!825911))

(assert (=> bs!24843 m!825913))

(assert (=> bs!24843 m!825921))

(assert (=> bs!24843 m!825925))

(assert (=> b!885882 d!109435))

(declare-fun b!886091 () Bool)

(declare-fun e!493231 () List!17757)

(declare-fun call!39204 () List!17757)

(assert (=> b!886091 (= e!493231 call!39204)))

(declare-fun b!886092 () Bool)

(declare-fun e!493235 () List!17757)

(assert (=> b!886092 (= e!493235 (insertStrictlySorted!299 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)) key1!49 v2!16))))

(declare-fun bm!39200 () Bool)

(declare-fun call!39203 () List!17757)

(declare-fun call!39205 () List!17757)

(assert (=> bm!39200 (= call!39203 call!39205)))

(declare-fun bm!39201 () Bool)

(assert (=> bm!39201 (= call!39204 call!39203)))

(declare-fun d!109437 () Bool)

(declare-fun e!493234 () Bool)

(assert (=> d!109437 e!493234))

(declare-fun res!601687 () Bool)

(assert (=> d!109437 (=> (not res!601687) (not e!493234))))

(declare-fun lt!401047 () List!17757)

(assert (=> d!109437 (= res!601687 (isStrictlySorted!487 lt!401047))))

(declare-fun e!493232 () List!17757)

(assert (=> d!109437 (= lt!401047 e!493232)))

(declare-fun c!93368 () Bool)

(assert (=> d!109437 (= c!93368 (and (is-Cons!17753 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)) (bvslt (_1!5977 (h!18884 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))) key1!49)))))

(assert (=> d!109437 (isStrictlySorted!487 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))))

(assert (=> d!109437 (= (insertStrictlySorted!299 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38) key1!49 v2!16) lt!401047)))

(declare-fun b!886093 () Bool)

(assert (=> b!886093 (= e!493232 call!39205)))

(declare-fun bm!39202 () Bool)

(declare-fun $colon$colon!549 (List!17757 tuple2!11934) List!17757)

(assert (=> bm!39202 (= call!39205 ($colon$colon!549 e!493235 (ite c!93368 (h!18884 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)) (tuple2!11935 key1!49 v2!16))))))

(declare-fun c!93366 () Bool)

(assert (=> bm!39202 (= c!93366 c!93368)))

(declare-fun b!886094 () Bool)

(declare-fun e!493233 () List!17757)

(assert (=> b!886094 (= e!493233 call!39203)))

(declare-fun b!886095 () Bool)

(declare-fun contains!4293 (List!17757 tuple2!11934) Bool)

(assert (=> b!886095 (= e!493234 (contains!4293 lt!401047 (tuple2!11935 key1!49 v2!16)))))

(declare-fun c!93367 () Bool)

(declare-fun b!886096 () Bool)

(assert (=> b!886096 (= c!93367 (and (is-Cons!17753 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)) (bvsgt (_1!5977 (h!18884 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))) key1!49)))))

(assert (=> b!886096 (= e!493233 e!493231)))

(declare-fun b!886097 () Bool)

(declare-fun res!601688 () Bool)

(assert (=> b!886097 (=> (not res!601688) (not e!493234))))

(declare-fun containsKey!414 (List!17757 (_ BitVec 64)) Bool)

(assert (=> b!886097 (= res!601688 (containsKey!414 lt!401047 key1!49))))

(declare-fun b!886098 () Bool)

(assert (=> b!886098 (= e!493231 call!39204)))

(declare-fun c!93365 () Bool)

(declare-fun b!886099 () Bool)

(assert (=> b!886099 (= e!493235 (ite c!93365 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)) (ite c!93367 (Cons!17753 (h!18884 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)) (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))) Nil!17754)))))

(declare-fun b!886100 () Bool)

(assert (=> b!886100 (= e!493232 e!493233)))

(assert (=> b!886100 (= c!93365 (and (is-Cons!17753 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)) (= (_1!5977 (h!18884 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))) key1!49)))))

(assert (= (and d!109437 c!93368) b!886093))

(assert (= (and d!109437 (not c!93368)) b!886100))

(assert (= (and b!886100 c!93365) b!886094))

(assert (= (and b!886100 (not c!93365)) b!886096))

(assert (= (and b!886096 c!93367) b!886091))

(assert (= (and b!886096 (not c!93367)) b!886098))

(assert (= (or b!886091 b!886098) bm!39201))

(assert (= (or b!886094 bm!39201) bm!39200))

(assert (= (or b!886093 bm!39200) bm!39202))

(assert (= (and bm!39202 c!93366) b!886092))

(assert (= (and bm!39202 (not c!93366)) b!886099))

(assert (= (and d!109437 res!601687) b!886097))

(assert (= (and b!886097 res!601688) b!886095))

(declare-fun m!826061 () Bool)

(assert (=> b!886097 m!826061))

(declare-fun m!826063 () Bool)

(assert (=> b!886092 m!826063))

(declare-fun m!826065 () Bool)

(assert (=> bm!39202 m!826065))

(declare-fun m!826067 () Bool)

(assert (=> d!109437 m!826067))

(assert (=> d!109437 m!825911))

(declare-fun m!826069 () Bool)

(assert (=> d!109437 m!826069))

(declare-fun m!826071 () Bool)

(assert (=> b!886095 m!826071))

(assert (=> b!885882 d!109437))

(declare-fun b!886106 () Bool)

(declare-fun e!493239 () List!17757)

(declare-fun call!39207 () List!17757)

(assert (=> b!886106 (= e!493239 call!39207)))

(declare-fun b!886107 () Bool)

(declare-fun e!493243 () List!17757)

(assert (=> b!886107 (= e!493243 (insertStrictlySorted!299 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38)) key1!49 v2!16))))

(declare-fun bm!39203 () Bool)

(declare-fun call!39206 () List!17757)

(declare-fun call!39208 () List!17757)

(assert (=> bm!39203 (= call!39206 call!39208)))

(declare-fun bm!39204 () Bool)

(assert (=> bm!39204 (= call!39207 call!39206)))

(declare-fun d!109461 () Bool)

(declare-fun e!493242 () Bool)

(assert (=> d!109461 e!493242))

(declare-fun res!601689 () Bool)

(assert (=> d!109461 (=> (not res!601689) (not e!493242))))

(declare-fun lt!401048 () List!17757)

(assert (=> d!109461 (= res!601689 (isStrictlySorted!487 lt!401048))))

(declare-fun e!493240 () List!17757)

(assert (=> d!109461 (= lt!401048 e!493240)))

(declare-fun c!93372 () Bool)

(assert (=> d!109461 (= c!93372 (and (is-Cons!17753 (insertStrictlySorted!299 l!906 key1!49 v1!38)) (bvslt (_1!5977 (h!18884 (insertStrictlySorted!299 l!906 key1!49 v1!38))) key1!49)))))

(assert (=> d!109461 (isStrictlySorted!487 (insertStrictlySorted!299 l!906 key1!49 v1!38))))

(assert (=> d!109461 (= (insertStrictlySorted!299 (insertStrictlySorted!299 l!906 key1!49 v1!38) key1!49 v2!16) lt!401048)))

(declare-fun b!886108 () Bool)

(assert (=> b!886108 (= e!493240 call!39208)))

(declare-fun bm!39205 () Bool)

(assert (=> bm!39205 (= call!39208 ($colon$colon!549 e!493243 (ite c!93372 (h!18884 (insertStrictlySorted!299 l!906 key1!49 v1!38)) (tuple2!11935 key1!49 v2!16))))))

(declare-fun c!93370 () Bool)

(assert (=> bm!39205 (= c!93370 c!93372)))

(declare-fun b!886109 () Bool)

(declare-fun e!493241 () List!17757)

(assert (=> b!886109 (= e!493241 call!39206)))

(declare-fun b!886110 () Bool)

(assert (=> b!886110 (= e!493242 (contains!4293 lt!401048 (tuple2!11935 key1!49 v2!16)))))

(declare-fun c!93371 () Bool)

(declare-fun b!886111 () Bool)

(assert (=> b!886111 (= c!93371 (and (is-Cons!17753 (insertStrictlySorted!299 l!906 key1!49 v1!38)) (bvsgt (_1!5977 (h!18884 (insertStrictlySorted!299 l!906 key1!49 v1!38))) key1!49)))))

(assert (=> b!886111 (= e!493241 e!493239)))

(declare-fun b!886112 () Bool)

(declare-fun res!601690 () Bool)

(assert (=> b!886112 (=> (not res!601690) (not e!493242))))

(assert (=> b!886112 (= res!601690 (containsKey!414 lt!401048 key1!49))))

(declare-fun b!886113 () Bool)

(assert (=> b!886113 (= e!493239 call!39207)))

(declare-fun b!886114 () Bool)

(declare-fun c!93369 () Bool)

(assert (=> b!886114 (= e!493243 (ite c!93369 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38)) (ite c!93371 (Cons!17753 (h!18884 (insertStrictlySorted!299 l!906 key1!49 v1!38)) (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38))) Nil!17754)))))

(declare-fun b!886115 () Bool)

(assert (=> b!886115 (= e!493240 e!493241)))

(assert (=> b!886115 (= c!93369 (and (is-Cons!17753 (insertStrictlySorted!299 l!906 key1!49 v1!38)) (= (_1!5977 (h!18884 (insertStrictlySorted!299 l!906 key1!49 v1!38))) key1!49)))))

(assert (= (and d!109461 c!93372) b!886108))

(assert (= (and d!109461 (not c!93372)) b!886115))

(assert (= (and b!886115 c!93369) b!886109))

(assert (= (and b!886115 (not c!93369)) b!886111))

(assert (= (and b!886111 c!93371) b!886106))

(assert (= (and b!886111 (not c!93371)) b!886113))

(assert (= (or b!886106 b!886113) bm!39204))

(assert (= (or b!886109 bm!39204) bm!39203))

(assert (= (or b!886108 bm!39203) bm!39205))

(assert (= (and bm!39205 c!93370) b!886107))

(assert (= (and bm!39205 (not c!93370)) b!886114))

(assert (= (and d!109461 res!601689) b!886112))

(assert (= (and b!886112 res!601690) b!886110))

(declare-fun m!826073 () Bool)

(assert (=> b!886112 m!826073))

(declare-fun m!826075 () Bool)

(assert (=> b!886107 m!826075))

(declare-fun m!826077 () Bool)

(assert (=> bm!39205 m!826077))

(declare-fun m!826079 () Bool)

(assert (=> d!109461 m!826079))

(assert (=> d!109461 m!825917))

(declare-fun m!826081 () Bool)

(assert (=> d!109461 m!826081))

(declare-fun m!826083 () Bool)

(assert (=> b!886110 m!826083))

(assert (=> b!885882 d!109461))

(declare-fun b!886116 () Bool)

(declare-fun e!493244 () List!17757)

(declare-fun call!39210 () List!17757)

(assert (=> b!886116 (= e!493244 call!39210)))

(declare-fun b!886117 () Bool)

(declare-fun e!493248 () List!17757)

(assert (=> b!886117 (= e!493248 (insertStrictlySorted!299 (t!25042 (t!25042 l!906)) key1!49 v2!16))))

(declare-fun bm!39206 () Bool)

(declare-fun call!39209 () List!17757)

(declare-fun call!39211 () List!17757)

(assert (=> bm!39206 (= call!39209 call!39211)))

(declare-fun bm!39207 () Bool)

(assert (=> bm!39207 (= call!39210 call!39209)))

(declare-fun d!109463 () Bool)

(declare-fun e!493247 () Bool)

(assert (=> d!109463 e!493247))

(declare-fun res!601691 () Bool)

(assert (=> d!109463 (=> (not res!601691) (not e!493247))))

(declare-fun lt!401049 () List!17757)

(assert (=> d!109463 (= res!601691 (isStrictlySorted!487 lt!401049))))

(declare-fun e!493245 () List!17757)

(assert (=> d!109463 (= lt!401049 e!493245)))

(declare-fun c!93376 () Bool)

(assert (=> d!109463 (= c!93376 (and (is-Cons!17753 (t!25042 l!906)) (bvslt (_1!5977 (h!18884 (t!25042 l!906))) key1!49)))))

(assert (=> d!109463 (isStrictlySorted!487 (t!25042 l!906))))

(assert (=> d!109463 (= (insertStrictlySorted!299 (t!25042 l!906) key1!49 v2!16) lt!401049)))

(declare-fun b!886118 () Bool)

(assert (=> b!886118 (= e!493245 call!39211)))

(declare-fun bm!39208 () Bool)

(assert (=> bm!39208 (= call!39211 ($colon$colon!549 e!493248 (ite c!93376 (h!18884 (t!25042 l!906)) (tuple2!11935 key1!49 v2!16))))))

(declare-fun c!93374 () Bool)

(assert (=> bm!39208 (= c!93374 c!93376)))

(declare-fun b!886119 () Bool)

(declare-fun e!493246 () List!17757)

(assert (=> b!886119 (= e!493246 call!39209)))

(declare-fun b!886120 () Bool)

(assert (=> b!886120 (= e!493247 (contains!4293 lt!401049 (tuple2!11935 key1!49 v2!16)))))

(declare-fun b!886121 () Bool)

(declare-fun c!93375 () Bool)

(assert (=> b!886121 (= c!93375 (and (is-Cons!17753 (t!25042 l!906)) (bvsgt (_1!5977 (h!18884 (t!25042 l!906))) key1!49)))))

(assert (=> b!886121 (= e!493246 e!493244)))

(declare-fun b!886122 () Bool)

(declare-fun res!601692 () Bool)

(assert (=> b!886122 (=> (not res!601692) (not e!493247))))

(assert (=> b!886122 (= res!601692 (containsKey!414 lt!401049 key1!49))))

(declare-fun b!886123 () Bool)

(assert (=> b!886123 (= e!493244 call!39210)))

(declare-fun b!886124 () Bool)

(declare-fun c!93373 () Bool)

(assert (=> b!886124 (= e!493248 (ite c!93373 (t!25042 (t!25042 l!906)) (ite c!93375 (Cons!17753 (h!18884 (t!25042 l!906)) (t!25042 (t!25042 l!906))) Nil!17754)))))

(declare-fun b!886125 () Bool)

(assert (=> b!886125 (= e!493245 e!493246)))

(assert (=> b!886125 (= c!93373 (and (is-Cons!17753 (t!25042 l!906)) (= (_1!5977 (h!18884 (t!25042 l!906))) key1!49)))))

(assert (= (and d!109463 c!93376) b!886118))

(assert (= (and d!109463 (not c!93376)) b!886125))

(assert (= (and b!886125 c!93373) b!886119))

(assert (= (and b!886125 (not c!93373)) b!886121))

(assert (= (and b!886121 c!93375) b!886116))

(assert (= (and b!886121 (not c!93375)) b!886123))

(assert (= (or b!886116 b!886123) bm!39207))

(assert (= (or b!886119 bm!39207) bm!39206))

(assert (= (or b!886118 bm!39206) bm!39208))

(assert (= (and bm!39208 c!93374) b!886117))

(assert (= (and bm!39208 (not c!93374)) b!886124))

(assert (= (and d!109463 res!601691) b!886122))

(assert (= (and b!886122 res!601692) b!886120))

(declare-fun m!826085 () Bool)

(assert (=> b!886122 m!826085))

(declare-fun m!826087 () Bool)

(assert (=> b!886117 m!826087))

(declare-fun m!826089 () Bool)

(assert (=> bm!39208 m!826089))

(declare-fun m!826091 () Bool)

(assert (=> d!109463 m!826091))

(assert (=> d!109463 m!825925))

(declare-fun m!826093 () Bool)

(assert (=> b!886120 m!826093))

(assert (=> b!885882 d!109463))

(declare-fun b!886126 () Bool)

(declare-fun e!493249 () List!17757)

(declare-fun call!39213 () List!17757)

(assert (=> b!886126 (= e!493249 call!39213)))

(declare-fun e!493253 () List!17757)

(declare-fun b!886127 () Bool)

(assert (=> b!886127 (= e!493253 (insertStrictlySorted!299 (t!25042 (t!25042 l!906)) key1!49 v1!38))))

(declare-fun bm!39209 () Bool)

(declare-fun call!39212 () List!17757)

(declare-fun call!39214 () List!17757)

(assert (=> bm!39209 (= call!39212 call!39214)))

(declare-fun bm!39210 () Bool)

(assert (=> bm!39210 (= call!39213 call!39212)))

(declare-fun d!109465 () Bool)

(declare-fun e!493252 () Bool)

(assert (=> d!109465 e!493252))

(declare-fun res!601693 () Bool)

(assert (=> d!109465 (=> (not res!601693) (not e!493252))))

(declare-fun lt!401050 () List!17757)

(assert (=> d!109465 (= res!601693 (isStrictlySorted!487 lt!401050))))

(declare-fun e!493250 () List!17757)

(assert (=> d!109465 (= lt!401050 e!493250)))

(declare-fun c!93380 () Bool)

(assert (=> d!109465 (= c!93380 (and (is-Cons!17753 (t!25042 l!906)) (bvslt (_1!5977 (h!18884 (t!25042 l!906))) key1!49)))))

(assert (=> d!109465 (isStrictlySorted!487 (t!25042 l!906))))

(assert (=> d!109465 (= (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38) lt!401050)))

(declare-fun b!886128 () Bool)

(assert (=> b!886128 (= e!493250 call!39214)))

(declare-fun bm!39211 () Bool)

(assert (=> bm!39211 (= call!39214 ($colon$colon!549 e!493253 (ite c!93380 (h!18884 (t!25042 l!906)) (tuple2!11935 key1!49 v1!38))))))

(declare-fun c!93378 () Bool)

(assert (=> bm!39211 (= c!93378 c!93380)))

(declare-fun b!886129 () Bool)

(declare-fun e!493251 () List!17757)

(assert (=> b!886129 (= e!493251 call!39212)))

(declare-fun b!886130 () Bool)

(assert (=> b!886130 (= e!493252 (contains!4293 lt!401050 (tuple2!11935 key1!49 v1!38)))))

(declare-fun b!886131 () Bool)

(declare-fun c!93379 () Bool)

(assert (=> b!886131 (= c!93379 (and (is-Cons!17753 (t!25042 l!906)) (bvsgt (_1!5977 (h!18884 (t!25042 l!906))) key1!49)))))

(assert (=> b!886131 (= e!493251 e!493249)))

(declare-fun b!886132 () Bool)

(declare-fun res!601694 () Bool)

(assert (=> b!886132 (=> (not res!601694) (not e!493252))))

(assert (=> b!886132 (= res!601694 (containsKey!414 lt!401050 key1!49))))

(declare-fun b!886133 () Bool)

(assert (=> b!886133 (= e!493249 call!39213)))

(declare-fun c!93377 () Bool)

(declare-fun b!886134 () Bool)

(assert (=> b!886134 (= e!493253 (ite c!93377 (t!25042 (t!25042 l!906)) (ite c!93379 (Cons!17753 (h!18884 (t!25042 l!906)) (t!25042 (t!25042 l!906))) Nil!17754)))))

(declare-fun b!886135 () Bool)

(assert (=> b!886135 (= e!493250 e!493251)))

(assert (=> b!886135 (= c!93377 (and (is-Cons!17753 (t!25042 l!906)) (= (_1!5977 (h!18884 (t!25042 l!906))) key1!49)))))

(assert (= (and d!109465 c!93380) b!886128))

(assert (= (and d!109465 (not c!93380)) b!886135))

(assert (= (and b!886135 c!93377) b!886129))

(assert (= (and b!886135 (not c!93377)) b!886131))

(assert (= (and b!886131 c!93379) b!886126))

(assert (= (and b!886131 (not c!93379)) b!886133))

(assert (= (or b!886126 b!886133) bm!39210))

(assert (= (or b!886129 bm!39210) bm!39209))

(assert (= (or b!886128 bm!39209) bm!39211))

(assert (= (and bm!39211 c!93378) b!886127))

(assert (= (and bm!39211 (not c!93378)) b!886134))

(assert (= (and d!109465 res!601693) b!886132))

(assert (= (and b!886132 res!601694) b!886130))

(declare-fun m!826095 () Bool)

(assert (=> b!886132 m!826095))

(declare-fun m!826097 () Bool)

(assert (=> b!886127 m!826097))

(declare-fun m!826099 () Bool)

(assert (=> bm!39211 m!826099))

(declare-fun m!826101 () Bool)

(assert (=> d!109465 m!826101))

(assert (=> d!109465 m!825925))

(declare-fun m!826103 () Bool)

(assert (=> b!886130 m!826103))

(assert (=> b!885882 d!109465))

(declare-fun b!886136 () Bool)

(declare-fun e!493254 () List!17757)

(declare-fun call!39216 () List!17757)

(assert (=> b!886136 (= e!493254 call!39216)))

(declare-fun e!493258 () List!17757)

(declare-fun b!886137 () Bool)

(assert (=> b!886137 (= e!493258 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v2!16))))

(declare-fun bm!39212 () Bool)

(declare-fun call!39215 () List!17757)

(declare-fun call!39217 () List!17757)

(assert (=> bm!39212 (= call!39215 call!39217)))

(declare-fun bm!39213 () Bool)

(assert (=> bm!39213 (= call!39216 call!39215)))

(declare-fun d!109467 () Bool)

(declare-fun e!493257 () Bool)

(assert (=> d!109467 e!493257))

(declare-fun res!601695 () Bool)

(assert (=> d!109467 (=> (not res!601695) (not e!493257))))

(declare-fun lt!401051 () List!17757)

(assert (=> d!109467 (= res!601695 (isStrictlySorted!487 lt!401051))))

(declare-fun e!493255 () List!17757)

(assert (=> d!109467 (= lt!401051 e!493255)))

(declare-fun c!93384 () Bool)

(assert (=> d!109467 (= c!93384 (and (is-Cons!17753 l!906) (bvslt (_1!5977 (h!18884 l!906)) key1!49)))))

(assert (=> d!109467 (isStrictlySorted!487 l!906)))

(assert (=> d!109467 (= (insertStrictlySorted!299 l!906 key1!49 v2!16) lt!401051)))

(declare-fun b!886138 () Bool)

(assert (=> b!886138 (= e!493255 call!39217)))

(declare-fun bm!39214 () Bool)

(assert (=> bm!39214 (= call!39217 ($colon$colon!549 e!493258 (ite c!93384 (h!18884 l!906) (tuple2!11935 key1!49 v2!16))))))

(declare-fun c!93382 () Bool)

(assert (=> bm!39214 (= c!93382 c!93384)))

(declare-fun b!886139 () Bool)

(declare-fun e!493256 () List!17757)

(assert (=> b!886139 (= e!493256 call!39215)))

(declare-fun b!886140 () Bool)

(assert (=> b!886140 (= e!493257 (contains!4293 lt!401051 (tuple2!11935 key1!49 v2!16)))))

(declare-fun b!886141 () Bool)

(declare-fun c!93383 () Bool)

(assert (=> b!886141 (= c!93383 (and (is-Cons!17753 l!906) (bvsgt (_1!5977 (h!18884 l!906)) key1!49)))))

(assert (=> b!886141 (= e!493256 e!493254)))

(declare-fun b!886142 () Bool)

(declare-fun res!601696 () Bool)

(assert (=> b!886142 (=> (not res!601696) (not e!493257))))

(assert (=> b!886142 (= res!601696 (containsKey!414 lt!401051 key1!49))))

(declare-fun b!886143 () Bool)

(assert (=> b!886143 (= e!493254 call!39216)))

(declare-fun b!886144 () Bool)

(declare-fun c!93381 () Bool)

(assert (=> b!886144 (= e!493258 (ite c!93381 (t!25042 l!906) (ite c!93383 (Cons!17753 (h!18884 l!906) (t!25042 l!906)) Nil!17754)))))

(declare-fun b!886145 () Bool)

(assert (=> b!886145 (= e!493255 e!493256)))

(assert (=> b!886145 (= c!93381 (and (is-Cons!17753 l!906) (= (_1!5977 (h!18884 l!906)) key1!49)))))

(assert (= (and d!109467 c!93384) b!886138))

(assert (= (and d!109467 (not c!93384)) b!886145))

(assert (= (and b!886145 c!93381) b!886139))

(assert (= (and b!886145 (not c!93381)) b!886141))

(assert (= (and b!886141 c!93383) b!886136))

(assert (= (and b!886141 (not c!93383)) b!886143))

(assert (= (or b!886136 b!886143) bm!39213))

(assert (= (or b!886139 bm!39213) bm!39212))

(assert (= (or b!886138 bm!39212) bm!39214))

(assert (= (and bm!39214 c!93382) b!886137))

(assert (= (and bm!39214 (not c!93382)) b!886144))

(assert (= (and d!109467 res!601695) b!886142))

(assert (= (and b!886142 res!601696) b!886140))

(declare-fun m!826105 () Bool)

(assert (=> b!886142 m!826105))

(assert (=> b!886137 m!825921))

(declare-fun m!826107 () Bool)

(assert (=> bm!39214 m!826107))

(declare-fun m!826109 () Bool)

(assert (=> d!109467 m!826109))

(assert (=> d!109467 m!825927))

(declare-fun m!826111 () Bool)

(assert (=> b!886140 m!826111))

(assert (=> b!885882 d!109467))

(declare-fun b!886146 () Bool)

(declare-fun e!493259 () List!17757)

(declare-fun call!39219 () List!17757)

(assert (=> b!886146 (= e!493259 call!39219)))

(declare-fun e!493263 () List!17757)

(declare-fun b!886147 () Bool)

(assert (=> b!886147 (= e!493263 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))))

(declare-fun bm!39215 () Bool)

(declare-fun call!39218 () List!17757)

(declare-fun call!39220 () List!17757)

(assert (=> bm!39215 (= call!39218 call!39220)))

(declare-fun bm!39216 () Bool)

(assert (=> bm!39216 (= call!39219 call!39218)))

(declare-fun d!109469 () Bool)

(declare-fun e!493262 () Bool)

(assert (=> d!109469 e!493262))

(declare-fun res!601697 () Bool)

(assert (=> d!109469 (=> (not res!601697) (not e!493262))))

(declare-fun lt!401052 () List!17757)

(assert (=> d!109469 (= res!601697 (isStrictlySorted!487 lt!401052))))

(declare-fun e!493260 () List!17757)

(assert (=> d!109469 (= lt!401052 e!493260)))

(declare-fun c!93388 () Bool)

(assert (=> d!109469 (= c!93388 (and (is-Cons!17753 l!906) (bvslt (_1!5977 (h!18884 l!906)) key1!49)))))

(assert (=> d!109469 (isStrictlySorted!487 l!906)))

(assert (=> d!109469 (= (insertStrictlySorted!299 l!906 key1!49 v1!38) lt!401052)))

(declare-fun b!886148 () Bool)

(assert (=> b!886148 (= e!493260 call!39220)))

(declare-fun bm!39217 () Bool)

(assert (=> bm!39217 (= call!39220 ($colon$colon!549 e!493263 (ite c!93388 (h!18884 l!906) (tuple2!11935 key1!49 v1!38))))))

(declare-fun c!93386 () Bool)

(assert (=> bm!39217 (= c!93386 c!93388)))

(declare-fun b!886149 () Bool)

(declare-fun e!493261 () List!17757)

(assert (=> b!886149 (= e!493261 call!39218)))

(declare-fun b!886150 () Bool)

(assert (=> b!886150 (= e!493262 (contains!4293 lt!401052 (tuple2!11935 key1!49 v1!38)))))

(declare-fun b!886151 () Bool)

(declare-fun c!93387 () Bool)

(assert (=> b!886151 (= c!93387 (and (is-Cons!17753 l!906) (bvsgt (_1!5977 (h!18884 l!906)) key1!49)))))

(assert (=> b!886151 (= e!493261 e!493259)))

(declare-fun b!886152 () Bool)

(declare-fun res!601698 () Bool)

(assert (=> b!886152 (=> (not res!601698) (not e!493262))))

(assert (=> b!886152 (= res!601698 (containsKey!414 lt!401052 key1!49))))

(declare-fun b!886153 () Bool)

(assert (=> b!886153 (= e!493259 call!39219)))

(declare-fun c!93385 () Bool)

(declare-fun b!886154 () Bool)

(assert (=> b!886154 (= e!493263 (ite c!93385 (t!25042 l!906) (ite c!93387 (Cons!17753 (h!18884 l!906) (t!25042 l!906)) Nil!17754)))))

(declare-fun b!886155 () Bool)

(assert (=> b!886155 (= e!493260 e!493261)))

(assert (=> b!886155 (= c!93385 (and (is-Cons!17753 l!906) (= (_1!5977 (h!18884 l!906)) key1!49)))))

(assert (= (and d!109469 c!93388) b!886148))

(assert (= (and d!109469 (not c!93388)) b!886155))

(assert (= (and b!886155 c!93385) b!886149))

(assert (= (and b!886155 (not c!93385)) b!886151))

(assert (= (and b!886151 c!93387) b!886146))

(assert (= (and b!886151 (not c!93387)) b!886153))

(assert (= (or b!886146 b!886153) bm!39216))

(assert (= (or b!886149 bm!39216) bm!39215))

(assert (= (or b!886148 bm!39215) bm!39217))

(assert (= (and bm!39217 c!93386) b!886147))

(assert (= (and bm!39217 (not c!93386)) b!886154))

(assert (= (and d!109469 res!601697) b!886152))

(assert (= (and b!886152 res!601698) b!886150))

(declare-fun m!826113 () Bool)

(assert (=> b!886152 m!826113))

(assert (=> b!886147 m!825911))

(declare-fun m!826115 () Bool)

(assert (=> bm!39217 m!826115))

(declare-fun m!826117 () Bool)

(assert (=> d!109469 m!826117))

(assert (=> d!109469 m!825927))

(declare-fun m!826119 () Bool)

(assert (=> b!886150 m!826119))

(assert (=> b!885882 d!109469))

(declare-fun d!109471 () Bool)

(declare-fun res!601699 () Bool)

(declare-fun e!493264 () Bool)

(assert (=> d!109471 (=> res!601699 e!493264)))

(assert (=> d!109471 (= res!601699 (or (is-Nil!17754 l!906) (is-Nil!17754 (t!25042 l!906))))))

(assert (=> d!109471 (= (isStrictlySorted!487 l!906) e!493264)))

(declare-fun b!886156 () Bool)

(declare-fun e!493265 () Bool)

(assert (=> b!886156 (= e!493264 e!493265)))

(declare-fun res!601700 () Bool)

(assert (=> b!886156 (=> (not res!601700) (not e!493265))))

(assert (=> b!886156 (= res!601700 (bvslt (_1!5977 (h!18884 l!906)) (_1!5977 (h!18884 (t!25042 l!906)))))))

(declare-fun b!886157 () Bool)

(assert (=> b!886157 (= e!493265 (isStrictlySorted!487 (t!25042 l!906)))))

(assert (= (and d!109471 (not res!601699)) b!886156))

(assert (= (and b!886156 res!601700) b!886157))

(assert (=> b!886157 m!825925))

(assert (=> start!75234 d!109471))

(declare-fun b!886162 () Bool)

(declare-fun e!493268 () Bool)

(declare-fun tp!54381 () Bool)

(assert (=> b!886162 (= e!493268 (and tp_is_empty!17813 tp!54381))))

(assert (=> b!885883 (= tp!54372 e!493268)))

(assert (= (and b!885883 (is-Cons!17753 (t!25042 l!906))) b!886162))

(push 1)

(assert (not b!886120))

(assert (not d!109463))

(assert (not b!886110))

(assert (not b!886140))

(assert (not b!886122))

(assert (not b!886092))

(assert (not d!109435))

(assert (not b!886142))

(assert tp_is_empty!17813)

(assert (not bm!39211))

(assert (not b!886130))

(assert (not b!886117))

(assert (not bm!39208))

(assert (not d!109465))

(assert (not b!886152))

(assert (not bm!39205))

(assert (not d!109461))

(assert (not b!886150))

(assert (not b!886132))

(assert (not bm!39214))

(assert (not b!886097))

(assert (not d!109469))

(assert (not b!886147))

(assert (not b!886157))

(assert (not b!886127))

(assert (not b!886095))

(assert (not b!885903))

(assert (not b!886162))

(assert (not bm!39202))

(assert (not bm!39217))

(assert (not b!886107))

(assert (not d!109467))

(assert (not b!886137))

(assert (not d!109437))

(assert (not b!886112))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(assert (=> b!886137 d!109463))

(assert (=> d!109435 d!109437))

(assert (=> d!109435 d!109433))

(assert (=> d!109435 d!109463))

(assert (=> d!109435 d!109465))

(declare-fun d!109601 () Bool)

(assert (=> d!109601 (= (insertStrictlySorted!299 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!299 (t!25042 l!906) key1!49 v2!16))))

(assert (=> d!109601 true))

(declare-fun _$8!139 () Unit!30209)

(assert (=> d!109601 (= (choose!1460 (t!25042 l!906) key1!49 v1!38 v2!16) _$8!139)))

(declare-fun bs!24846 () Bool)

(assert (= bs!24846 d!109601))

(assert (=> bs!24846 m!825911))

(assert (=> bs!24846 m!825911))

(assert (=> bs!24846 m!825913))

(assert (=> bs!24846 m!825921))

(assert (=> d!109435 d!109601))

(declare-fun d!109603 () Bool)

(assert (=> d!109603 (= ($colon$colon!549 e!493263 (ite c!93388 (h!18884 l!906) (tuple2!11935 key1!49 v1!38))) (Cons!17753 (ite c!93388 (h!18884 l!906) (tuple2!11935 key1!49 v1!38)) e!493263))))

(assert (=> bm!39217 d!109603))

(declare-fun d!109605 () Bool)

(declare-fun res!601817 () Bool)

(declare-fun e!493411 () Bool)

(assert (=> d!109605 (=> res!601817 e!493411)))

(assert (=> d!109605 (= res!601817 (or (is-Nil!17754 lt!401047) (is-Nil!17754 (t!25042 lt!401047))))))

(assert (=> d!109605 (= (isStrictlySorted!487 lt!401047) e!493411)))

(declare-fun b!886345 () Bool)

(declare-fun e!493412 () Bool)

(assert (=> b!886345 (= e!493411 e!493412)))

(declare-fun res!601818 () Bool)

(assert (=> b!886345 (=> (not res!601818) (not e!493412))))

(assert (=> b!886345 (= res!601818 (bvslt (_1!5977 (h!18884 lt!401047)) (_1!5977 (h!18884 (t!25042 lt!401047)))))))

(declare-fun b!886346 () Bool)

(assert (=> b!886346 (= e!493412 (isStrictlySorted!487 (t!25042 lt!401047)))))

(assert (= (and d!109605 (not res!601817)) b!886345))

(assert (= (and b!886345 res!601818) b!886346))

(declare-fun m!826333 () Bool)

(assert (=> b!886346 m!826333))

(assert (=> d!109437 d!109605))

(declare-fun d!109607 () Bool)

(declare-fun res!601819 () Bool)

(declare-fun e!493413 () Bool)

(assert (=> d!109607 (=> res!601819 e!493413)))

(assert (=> d!109607 (= res!601819 (or (is-Nil!17754 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)) (is-Nil!17754 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)))))))

(assert (=> d!109607 (= (isStrictlySorted!487 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)) e!493413)))

(declare-fun b!886347 () Bool)

(declare-fun e!493414 () Bool)

(assert (=> b!886347 (= e!493413 e!493414)))

(declare-fun res!601820 () Bool)

(assert (=> b!886347 (=> (not res!601820) (not e!493414))))

(assert (=> b!886347 (= res!601820 (bvslt (_1!5977 (h!18884 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))) (_1!5977 (h!18884 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))))))))

(declare-fun b!886348 () Bool)

(assert (=> b!886348 (= e!493414 (isStrictlySorted!487 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))))))

(assert (= (and d!109607 (not res!601819)) b!886347))

(assert (= (and b!886347 res!601820) b!886348))

(declare-fun m!826335 () Bool)

(assert (=> b!886348 m!826335))

(assert (=> d!109437 d!109607))

(assert (=> b!886157 d!109433))

(declare-fun lt!401079 () Bool)

(declare-fun d!109609 () Bool)

(declare-fun content!398 (List!17757) (Set tuple2!11934))

(assert (=> d!109609 (= lt!401079 (member (tuple2!11935 key1!49 v1!38) (content!398 lt!401052)))))

(declare-fun e!493419 () Bool)

(assert (=> d!109609 (= lt!401079 e!493419)))

(declare-fun res!601826 () Bool)

(assert (=> d!109609 (=> (not res!601826) (not e!493419))))

(assert (=> d!109609 (= res!601826 (is-Cons!17753 lt!401052))))

(assert (=> d!109609 (= (contains!4293 lt!401052 (tuple2!11935 key1!49 v1!38)) lt!401079)))

(declare-fun b!886353 () Bool)

(declare-fun e!493420 () Bool)

(assert (=> b!886353 (= e!493419 e!493420)))

(declare-fun res!601825 () Bool)

(assert (=> b!886353 (=> res!601825 e!493420)))

(assert (=> b!886353 (= res!601825 (= (h!18884 lt!401052) (tuple2!11935 key1!49 v1!38)))))

(declare-fun b!886354 () Bool)

(assert (=> b!886354 (= e!493420 (contains!4293 (t!25042 lt!401052) (tuple2!11935 key1!49 v1!38)))))

(assert (= (and d!109609 res!601826) b!886353))

(assert (= (and b!886353 (not res!601825)) b!886354))

(declare-fun m!826337 () Bool)

(assert (=> d!109609 m!826337))

(declare-fun m!826339 () Bool)

(assert (=> d!109609 m!826339))

(declare-fun m!826341 () Bool)

(assert (=> b!886354 m!826341))

(assert (=> b!886150 d!109609))

(declare-fun b!886355 () Bool)

(declare-fun e!493421 () List!17757)

(declare-fun call!39246 () List!17757)

(assert (=> b!886355 (= e!493421 call!39246)))

(declare-fun b!886356 () Bool)

(declare-fun e!493425 () List!17757)

(assert (=> b!886356 (= e!493425 (insertStrictlySorted!299 (t!25042 (t!25042 (t!25042 l!906))) key1!49 v1!38))))

(declare-fun bm!39242 () Bool)

(declare-fun call!39245 () List!17757)

(declare-fun call!39247 () List!17757)

(assert (=> bm!39242 (= call!39245 call!39247)))

(declare-fun bm!39243 () Bool)

(assert (=> bm!39243 (= call!39246 call!39245)))

(declare-fun d!109611 () Bool)

(declare-fun e!493424 () Bool)

(assert (=> d!109611 e!493424))

(declare-fun res!601827 () Bool)

(assert (=> d!109611 (=> (not res!601827) (not e!493424))))

(declare-fun lt!401080 () List!17757)

(assert (=> d!109611 (= res!601827 (isStrictlySorted!487 lt!401080))))

(declare-fun e!493422 () List!17757)

(assert (=> d!109611 (= lt!401080 e!493422)))

(declare-fun c!93424 () Bool)

(assert (=> d!109611 (= c!93424 (and (is-Cons!17753 (t!25042 (t!25042 l!906))) (bvslt (_1!5977 (h!18884 (t!25042 (t!25042 l!906)))) key1!49)))))

(assert (=> d!109611 (isStrictlySorted!487 (t!25042 (t!25042 l!906)))))

(assert (=> d!109611 (= (insertStrictlySorted!299 (t!25042 (t!25042 l!906)) key1!49 v1!38) lt!401080)))

(declare-fun b!886357 () Bool)

(assert (=> b!886357 (= e!493422 call!39247)))

(declare-fun bm!39244 () Bool)

(assert (=> bm!39244 (= call!39247 ($colon$colon!549 e!493425 (ite c!93424 (h!18884 (t!25042 (t!25042 l!906))) (tuple2!11935 key1!49 v1!38))))))

(declare-fun c!93422 () Bool)

(assert (=> bm!39244 (= c!93422 c!93424)))

(declare-fun b!886358 () Bool)

(declare-fun e!493423 () List!17757)

(assert (=> b!886358 (= e!493423 call!39245)))

(declare-fun b!886359 () Bool)

(assert (=> b!886359 (= e!493424 (contains!4293 lt!401080 (tuple2!11935 key1!49 v1!38)))))

(declare-fun b!886360 () Bool)

(declare-fun c!93423 () Bool)

(assert (=> b!886360 (= c!93423 (and (is-Cons!17753 (t!25042 (t!25042 l!906))) (bvsgt (_1!5977 (h!18884 (t!25042 (t!25042 l!906)))) key1!49)))))

(assert (=> b!886360 (= e!493423 e!493421)))

(declare-fun b!886361 () Bool)

(declare-fun res!601828 () Bool)

(assert (=> b!886361 (=> (not res!601828) (not e!493424))))

(assert (=> b!886361 (= res!601828 (containsKey!414 lt!401080 key1!49))))

(declare-fun b!886362 () Bool)

(assert (=> b!886362 (= e!493421 call!39246)))

(declare-fun b!886363 () Bool)

(declare-fun c!93421 () Bool)

(assert (=> b!886363 (= e!493425 (ite c!93421 (t!25042 (t!25042 (t!25042 l!906))) (ite c!93423 (Cons!17753 (h!18884 (t!25042 (t!25042 l!906))) (t!25042 (t!25042 (t!25042 l!906)))) Nil!17754)))))

(declare-fun b!886364 () Bool)

(assert (=> b!886364 (= e!493422 e!493423)))

(assert (=> b!886364 (= c!93421 (and (is-Cons!17753 (t!25042 (t!25042 l!906))) (= (_1!5977 (h!18884 (t!25042 (t!25042 l!906)))) key1!49)))))

(assert (= (and d!109611 c!93424) b!886357))

(assert (= (and d!109611 (not c!93424)) b!886364))

(assert (= (and b!886364 c!93421) b!886358))

(assert (= (and b!886364 (not c!93421)) b!886360))

(assert (= (and b!886360 c!93423) b!886355))

(assert (= (and b!886360 (not c!93423)) b!886362))

(assert (= (or b!886355 b!886362) bm!39243))

(assert (= (or b!886358 bm!39243) bm!39242))

(assert (= (or b!886357 bm!39242) bm!39244))

(assert (= (and bm!39244 c!93422) b!886356))

(assert (= (and bm!39244 (not c!93422)) b!886363))

(assert (= (and d!109611 res!601827) b!886361))

(assert (= (and b!886361 res!601828) b!886359))

(declare-fun m!826343 () Bool)

(assert (=> b!886361 m!826343))

(declare-fun m!826345 () Bool)

(assert (=> b!886356 m!826345))

(declare-fun m!826347 () Bool)

(assert (=> bm!39244 m!826347))

(declare-fun m!826349 () Bool)

(assert (=> d!109611 m!826349))

(assert (=> d!109611 m!825937))

(declare-fun m!826351 () Bool)

(assert (=> b!886359 m!826351))

(assert (=> b!886127 d!109611))

(declare-fun d!109613 () Bool)

(assert (=> d!109613 (= ($colon$colon!549 e!493258 (ite c!93384 (h!18884 l!906) (tuple2!11935 key1!49 v2!16))) (Cons!17753 (ite c!93384 (h!18884 l!906) (tuple2!11935 key1!49 v2!16)) e!493258))))

(assert (=> bm!39214 d!109613))

(declare-fun b!886365 () Bool)

(declare-fun e!493426 () List!17757)

(declare-fun call!39249 () List!17757)

(assert (=> b!886365 (= e!493426 call!39249)))

(declare-fun e!493430 () List!17757)

(declare-fun b!886366 () Bool)

(assert (=> b!886366 (= e!493430 (insertStrictlySorted!299 (t!25042 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))) key1!49 v2!16))))

(declare-fun bm!39245 () Bool)

(declare-fun call!39248 () List!17757)

(declare-fun call!39250 () List!17757)

(assert (=> bm!39245 (= call!39248 call!39250)))

(declare-fun bm!39246 () Bool)

(assert (=> bm!39246 (= call!39249 call!39248)))

(declare-fun d!109615 () Bool)

(declare-fun e!493429 () Bool)

(assert (=> d!109615 e!493429))

(declare-fun res!601829 () Bool)

(assert (=> d!109615 (=> (not res!601829) (not e!493429))))

(declare-fun lt!401081 () List!17757)

(assert (=> d!109615 (= res!601829 (isStrictlySorted!487 lt!401081))))

(declare-fun e!493427 () List!17757)

(assert (=> d!109615 (= lt!401081 e!493427)))

(declare-fun c!93428 () Bool)

(assert (=> d!109615 (= c!93428 (and (is-Cons!17753 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))) (bvslt (_1!5977 (h!18884 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)))) key1!49)))))

(assert (=> d!109615 (isStrictlySorted!487 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)))))

(assert (=> d!109615 (= (insertStrictlySorted!299 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)) key1!49 v2!16) lt!401081)))

(declare-fun b!886367 () Bool)

(assert (=> b!886367 (= e!493427 call!39250)))

(declare-fun bm!39247 () Bool)

(assert (=> bm!39247 (= call!39250 ($colon$colon!549 e!493430 (ite c!93428 (h!18884 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))) (tuple2!11935 key1!49 v2!16))))))

(declare-fun c!93426 () Bool)

(assert (=> bm!39247 (= c!93426 c!93428)))

(declare-fun b!886368 () Bool)

(declare-fun e!493428 () List!17757)

(assert (=> b!886368 (= e!493428 call!39248)))

(declare-fun b!886369 () Bool)

(assert (=> b!886369 (= e!493429 (contains!4293 lt!401081 (tuple2!11935 key1!49 v2!16)))))

(declare-fun c!93427 () Bool)

(declare-fun b!886370 () Bool)

(assert (=> b!886370 (= c!93427 (and (is-Cons!17753 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))) (bvsgt (_1!5977 (h!18884 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)))) key1!49)))))

(assert (=> b!886370 (= e!493428 e!493426)))

(declare-fun b!886371 () Bool)

(declare-fun res!601830 () Bool)

(assert (=> b!886371 (=> (not res!601830) (not e!493429))))

(assert (=> b!886371 (= res!601830 (containsKey!414 lt!401081 key1!49))))

(declare-fun b!886372 () Bool)

(assert (=> b!886372 (= e!493426 call!39249)))

(declare-fun c!93425 () Bool)

(declare-fun b!886373 () Bool)

(assert (=> b!886373 (= e!493430 (ite c!93425 (t!25042 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))) (ite c!93427 (Cons!17753 (h!18884 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))) (t!25042 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)))) Nil!17754)))))

(declare-fun b!886374 () Bool)

(assert (=> b!886374 (= e!493427 e!493428)))

(assert (=> b!886374 (= c!93425 (and (is-Cons!17753 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38))) (= (_1!5977 (h!18884 (t!25042 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)))) key1!49)))))

(assert (= (and d!109615 c!93428) b!886367))

(assert (= (and d!109615 (not c!93428)) b!886374))

(assert (= (and b!886374 c!93425) b!886368))

(assert (= (and b!886374 (not c!93425)) b!886370))

(assert (= (and b!886370 c!93427) b!886365))

(assert (= (and b!886370 (not c!93427)) b!886372))

(assert (= (or b!886365 b!886372) bm!39246))

(assert (= (or b!886368 bm!39246) bm!39245))

(assert (= (or b!886367 bm!39245) bm!39247))

(assert (= (and bm!39247 c!93426) b!886366))

(assert (= (and bm!39247 (not c!93426)) b!886373))

(assert (= (and d!109615 res!601829) b!886371))

(assert (= (and b!886371 res!601830) b!886369))

(declare-fun m!826353 () Bool)

(assert (=> b!886371 m!826353))

(declare-fun m!826355 () Bool)

(assert (=> b!886366 m!826355))

(declare-fun m!826357 () Bool)

(assert (=> bm!39247 m!826357))

(declare-fun m!826359 () Bool)

(assert (=> d!109615 m!826359))

(assert (=> d!109615 m!826335))

(declare-fun m!826361 () Bool)

(assert (=> b!886369 m!826361))

(assert (=> b!886092 d!109615))

(declare-fun d!109617 () Bool)

(declare-fun res!601835 () Bool)

(declare-fun e!493435 () Bool)

(assert (=> d!109617 (=> res!601835 e!493435)))

(assert (=> d!109617 (= res!601835 (and (is-Cons!17753 lt!401052) (= (_1!5977 (h!18884 lt!401052)) key1!49)))))

(assert (=> d!109617 (= (containsKey!414 lt!401052 key1!49) e!493435)))

(declare-fun b!886379 () Bool)

(declare-fun e!493436 () Bool)

(assert (=> b!886379 (= e!493435 e!493436)))

(declare-fun res!601836 () Bool)

(assert (=> b!886379 (=> (not res!601836) (not e!493436))))

(assert (=> b!886379 (= res!601836 (and (or (not (is-Cons!17753 lt!401052)) (bvsle (_1!5977 (h!18884 lt!401052)) key1!49)) (is-Cons!17753 lt!401052) (bvslt (_1!5977 (h!18884 lt!401052)) key1!49)))))

(declare-fun b!886380 () Bool)

(assert (=> b!886380 (= e!493436 (containsKey!414 (t!25042 lt!401052) key1!49))))

(assert (= (and d!109617 (not res!601835)) b!886379))

(assert (= (and b!886379 res!601836) b!886380))

(declare-fun m!826363 () Bool)

(assert (=> b!886380 m!826363))

(assert (=> b!886152 d!109617))

(declare-fun d!109619 () Bool)

(declare-fun res!601837 () Bool)

(declare-fun e!493437 () Bool)

(assert (=> d!109619 (=> res!601837 e!493437)))

(assert (=> d!109619 (= res!601837 (or (is-Nil!17754 lt!401051) (is-Nil!17754 (t!25042 lt!401051))))))

(assert (=> d!109619 (= (isStrictlySorted!487 lt!401051) e!493437)))

(declare-fun b!886381 () Bool)

(declare-fun e!493438 () Bool)

(assert (=> b!886381 (= e!493437 e!493438)))

(declare-fun res!601838 () Bool)

(assert (=> b!886381 (=> (not res!601838) (not e!493438))))

(assert (=> b!886381 (= res!601838 (bvslt (_1!5977 (h!18884 lt!401051)) (_1!5977 (h!18884 (t!25042 lt!401051)))))))

(declare-fun b!886382 () Bool)

(assert (=> b!886382 (= e!493438 (isStrictlySorted!487 (t!25042 lt!401051)))))

(assert (= (and d!109619 (not res!601837)) b!886381))

(assert (= (and b!886381 res!601838) b!886382))

(declare-fun m!826365 () Bool)

(assert (=> b!886382 m!826365))

(assert (=> d!109467 d!109619))

(assert (=> d!109467 d!109471))

(declare-fun d!109621 () Bool)

(declare-fun res!601839 () Bool)

(declare-fun e!493439 () Bool)

(assert (=> d!109621 (=> res!601839 e!493439)))

(assert (=> d!109621 (= res!601839 (or (is-Nil!17754 (t!25042 (t!25042 l!906))) (is-Nil!17754 (t!25042 (t!25042 (t!25042 l!906))))))))

(assert (=> d!109621 (= (isStrictlySorted!487 (t!25042 (t!25042 l!906))) e!493439)))

(declare-fun b!886383 () Bool)

(declare-fun e!493440 () Bool)

(assert (=> b!886383 (= e!493439 e!493440)))

(declare-fun res!601840 () Bool)

(assert (=> b!886383 (=> (not res!601840) (not e!493440))))

(assert (=> b!886383 (= res!601840 (bvslt (_1!5977 (h!18884 (t!25042 (t!25042 l!906)))) (_1!5977 (h!18884 (t!25042 (t!25042 (t!25042 l!906)))))))))

(declare-fun b!886384 () Bool)

(assert (=> b!886384 (= e!493440 (isStrictlySorted!487 (t!25042 (t!25042 (t!25042 l!906)))))))

(assert (= (and d!109621 (not res!601839)) b!886383))

(assert (= (and b!886383 res!601840) b!886384))

(declare-fun m!826367 () Bool)

(assert (=> b!886384 m!826367))

(assert (=> b!885903 d!109621))

(assert (=> b!886147 d!109465))

(declare-fun d!109623 () Bool)

(declare-fun res!601841 () Bool)

(declare-fun e!493441 () Bool)

(assert (=> d!109623 (=> res!601841 e!493441)))

(assert (=> d!109623 (= res!601841 (or (is-Nil!17754 lt!401052) (is-Nil!17754 (t!25042 lt!401052))))))

(assert (=> d!109623 (= (isStrictlySorted!487 lt!401052) e!493441)))

(declare-fun b!886385 () Bool)

(declare-fun e!493442 () Bool)

(assert (=> b!886385 (= e!493441 e!493442)))

(declare-fun res!601842 () Bool)

(assert (=> b!886385 (=> (not res!601842) (not e!493442))))

(assert (=> b!886385 (= res!601842 (bvslt (_1!5977 (h!18884 lt!401052)) (_1!5977 (h!18884 (t!25042 lt!401052)))))))

(declare-fun b!886386 () Bool)

(assert (=> b!886386 (= e!493442 (isStrictlySorted!487 (t!25042 lt!401052)))))

(assert (= (and d!109623 (not res!601841)) b!886385))

(assert (= (and b!886385 res!601842) b!886386))

(declare-fun m!826369 () Bool)

(assert (=> b!886386 m!826369))

(assert (=> d!109469 d!109623))

(assert (=> d!109469 d!109471))

(declare-fun d!109625 () Bool)

(declare-fun res!601843 () Bool)

(declare-fun e!493443 () Bool)

(assert (=> d!109625 (=> res!601843 e!493443)))

(assert (=> d!109625 (= res!601843 (and (is-Cons!17753 lt!401050) (= (_1!5977 (h!18884 lt!401050)) key1!49)))))

(assert (=> d!109625 (= (containsKey!414 lt!401050 key1!49) e!493443)))

(declare-fun b!886387 () Bool)

(declare-fun e!493444 () Bool)

(assert (=> b!886387 (= e!493443 e!493444)))

(declare-fun res!601844 () Bool)

(assert (=> b!886387 (=> (not res!601844) (not e!493444))))

(assert (=> b!886387 (= res!601844 (and (or (not (is-Cons!17753 lt!401050)) (bvsle (_1!5977 (h!18884 lt!401050)) key1!49)) (is-Cons!17753 lt!401050) (bvslt (_1!5977 (h!18884 lt!401050)) key1!49)))))

(declare-fun b!886388 () Bool)

(assert (=> b!886388 (= e!493444 (containsKey!414 (t!25042 lt!401050) key1!49))))

(assert (= (and d!109625 (not res!601843)) b!886387))

(assert (= (and b!886387 res!601844) b!886388))

(declare-fun m!826371 () Bool)

(assert (=> b!886388 m!826371))

(assert (=> b!886132 d!109625))

(declare-fun d!109627 () Bool)

(declare-fun lt!401082 () Bool)

(assert (=> d!109627 (= lt!401082 (member (tuple2!11935 key1!49 v2!16) (content!398 lt!401049)))))

(declare-fun e!493445 () Bool)

(assert (=> d!109627 (= lt!401082 e!493445)))

(declare-fun res!601846 () Bool)

(assert (=> d!109627 (=> (not res!601846) (not e!493445))))

(assert (=> d!109627 (= res!601846 (is-Cons!17753 lt!401049))))

(assert (=> d!109627 (= (contains!4293 lt!401049 (tuple2!11935 key1!49 v2!16)) lt!401082)))

(declare-fun b!886389 () Bool)

(declare-fun e!493446 () Bool)

(assert (=> b!886389 (= e!493445 e!493446)))

(declare-fun res!601845 () Bool)

(assert (=> b!886389 (=> res!601845 e!493446)))

(assert (=> b!886389 (= res!601845 (= (h!18884 lt!401049) (tuple2!11935 key1!49 v2!16)))))

(declare-fun b!886390 () Bool)

(assert (=> b!886390 (= e!493446 (contains!4293 (t!25042 lt!401049) (tuple2!11935 key1!49 v2!16)))))

(assert (= (and d!109627 res!601846) b!886389))

(assert (= (and b!886389 (not res!601845)) b!886390))

(declare-fun m!826373 () Bool)

(assert (=> d!109627 m!826373))

(declare-fun m!826375 () Bool)

(assert (=> d!109627 m!826375))

(declare-fun m!826377 () Bool)

(assert (=> b!886390 m!826377))

(assert (=> b!886120 d!109627))

(declare-fun lt!401083 () Bool)

(declare-fun d!109629 () Bool)

(assert (=> d!109629 (= lt!401083 (member (tuple2!11935 key1!49 v2!16) (content!398 lt!401048)))))

(declare-fun e!493447 () Bool)

(assert (=> d!109629 (= lt!401083 e!493447)))

(declare-fun res!601848 () Bool)

(assert (=> d!109629 (=> (not res!601848) (not e!493447))))

(assert (=> d!109629 (= res!601848 (is-Cons!17753 lt!401048))))

(assert (=> d!109629 (= (contains!4293 lt!401048 (tuple2!11935 key1!49 v2!16)) lt!401083)))

(declare-fun b!886391 () Bool)

(declare-fun e!493448 () Bool)

(assert (=> b!886391 (= e!493447 e!493448)))

(declare-fun res!601847 () Bool)

(assert (=> b!886391 (=> res!601847 e!493448)))

(assert (=> b!886391 (= res!601847 (= (h!18884 lt!401048) (tuple2!11935 key1!49 v2!16)))))

(declare-fun b!886392 () Bool)

(assert (=> b!886392 (= e!493448 (contains!4293 (t!25042 lt!401048) (tuple2!11935 key1!49 v2!16)))))

(assert (= (and d!109629 res!601848) b!886391))

(assert (= (and b!886391 (not res!601847)) b!886392))

(declare-fun m!826379 () Bool)

(assert (=> d!109629 m!826379))

(declare-fun m!826381 () Bool)

(assert (=> d!109629 m!826381))

(declare-fun m!826383 () Bool)

(assert (=> b!886392 m!826383))

(assert (=> b!886110 d!109629))

(declare-fun d!109631 () Bool)

(declare-fun res!601849 () Bool)

(declare-fun e!493449 () Bool)

(assert (=> d!109631 (=> res!601849 e!493449)))

(assert (=> d!109631 (= res!601849 (and (is-Cons!17753 lt!401047) (= (_1!5977 (h!18884 lt!401047)) key1!49)))))

(assert (=> d!109631 (= (containsKey!414 lt!401047 key1!49) e!493449)))

(declare-fun b!886393 () Bool)

(declare-fun e!493450 () Bool)

(assert (=> b!886393 (= e!493449 e!493450)))

(declare-fun res!601850 () Bool)

(assert (=> b!886393 (=> (not res!601850) (not e!493450))))

(assert (=> b!886393 (= res!601850 (and (or (not (is-Cons!17753 lt!401047)) (bvsle (_1!5977 (h!18884 lt!401047)) key1!49)) (is-Cons!17753 lt!401047) (bvslt (_1!5977 (h!18884 lt!401047)) key1!49)))))

(declare-fun b!886394 () Bool)

(assert (=> b!886394 (= e!493450 (containsKey!414 (t!25042 lt!401047) key1!49))))

(assert (= (and d!109631 (not res!601849)) b!886393))

(assert (= (and b!886393 res!601850) b!886394))

(declare-fun m!826385 () Bool)

(assert (=> b!886394 m!826385))

(assert (=> b!886097 d!109631))

(declare-fun d!109633 () Bool)

(declare-fun res!601851 () Bool)

(declare-fun e!493451 () Bool)

(assert (=> d!109633 (=> res!601851 e!493451)))

(assert (=> d!109633 (= res!601851 (and (is-Cons!17753 lt!401049) (= (_1!5977 (h!18884 lt!401049)) key1!49)))))

(assert (=> d!109633 (= (containsKey!414 lt!401049 key1!49) e!493451)))

(declare-fun b!886395 () Bool)

(declare-fun e!493452 () Bool)

(assert (=> b!886395 (= e!493451 e!493452)))

(declare-fun res!601852 () Bool)

(assert (=> b!886395 (=> (not res!601852) (not e!493452))))

(assert (=> b!886395 (= res!601852 (and (or (not (is-Cons!17753 lt!401049)) (bvsle (_1!5977 (h!18884 lt!401049)) key1!49)) (is-Cons!17753 lt!401049) (bvslt (_1!5977 (h!18884 lt!401049)) key1!49)))))

(declare-fun b!886396 () Bool)

(assert (=> b!886396 (= e!493452 (containsKey!414 (t!25042 lt!401049) key1!49))))

(assert (= (and d!109633 (not res!601851)) b!886395))

(assert (= (and b!886395 res!601852) b!886396))

(declare-fun m!826387 () Bool)

(assert (=> b!886396 m!826387))

(assert (=> b!886122 d!109633))

(declare-fun d!109635 () Bool)

(declare-fun res!601853 () Bool)

(declare-fun e!493453 () Bool)

(assert (=> d!109635 (=> res!601853 e!493453)))

(assert (=> d!109635 (= res!601853 (and (is-Cons!17753 lt!401048) (= (_1!5977 (h!18884 lt!401048)) key1!49)))))

(assert (=> d!109635 (= (containsKey!414 lt!401048 key1!49) e!493453)))

(declare-fun b!886397 () Bool)

(declare-fun e!493454 () Bool)

(assert (=> b!886397 (= e!493453 e!493454)))

(declare-fun res!601854 () Bool)

(assert (=> b!886397 (=> (not res!601854) (not e!493454))))

(assert (=> b!886397 (= res!601854 (and (or (not (is-Cons!17753 lt!401048)) (bvsle (_1!5977 (h!18884 lt!401048)) key1!49)) (is-Cons!17753 lt!401048) (bvslt (_1!5977 (h!18884 lt!401048)) key1!49)))))

(declare-fun b!886398 () Bool)

(assert (=> b!886398 (= e!493454 (containsKey!414 (t!25042 lt!401048) key1!49))))

(assert (= (and d!109635 (not res!601853)) b!886397))

(assert (= (and b!886397 res!601854) b!886398))

(declare-fun m!826389 () Bool)

(assert (=> b!886398 m!826389))

(assert (=> b!886112 d!109635))

(declare-fun b!886399 () Bool)

(declare-fun e!493455 () List!17757)

(declare-fun call!39252 () List!17757)

(assert (=> b!886399 (= e!493455 call!39252)))

(declare-fun b!886400 () Bool)

(declare-fun e!493459 () List!17757)

(assert (=> b!886400 (= e!493459 (insertStrictlySorted!299 (t!25042 (t!25042 (t!25042 l!906))) key1!49 v2!16))))

(declare-fun bm!39248 () Bool)

(declare-fun call!39251 () List!17757)

(declare-fun call!39253 () List!17757)

(assert (=> bm!39248 (= call!39251 call!39253)))

(declare-fun bm!39249 () Bool)

(assert (=> bm!39249 (= call!39252 call!39251)))

(declare-fun d!109637 () Bool)

(declare-fun e!493458 () Bool)

(assert (=> d!109637 e!493458))

(declare-fun res!601855 () Bool)

(assert (=> d!109637 (=> (not res!601855) (not e!493458))))

(declare-fun lt!401084 () List!17757)

(assert (=> d!109637 (= res!601855 (isStrictlySorted!487 lt!401084))))

(declare-fun e!493456 () List!17757)

(assert (=> d!109637 (= lt!401084 e!493456)))

(declare-fun c!93432 () Bool)

(assert (=> d!109637 (= c!93432 (and (is-Cons!17753 (t!25042 (t!25042 l!906))) (bvslt (_1!5977 (h!18884 (t!25042 (t!25042 l!906)))) key1!49)))))

(assert (=> d!109637 (isStrictlySorted!487 (t!25042 (t!25042 l!906)))))

(assert (=> d!109637 (= (insertStrictlySorted!299 (t!25042 (t!25042 l!906)) key1!49 v2!16) lt!401084)))

(declare-fun b!886401 () Bool)

(assert (=> b!886401 (= e!493456 call!39253)))

(declare-fun bm!39250 () Bool)

(assert (=> bm!39250 (= call!39253 ($colon$colon!549 e!493459 (ite c!93432 (h!18884 (t!25042 (t!25042 l!906))) (tuple2!11935 key1!49 v2!16))))))

(declare-fun c!93430 () Bool)

(assert (=> bm!39250 (= c!93430 c!93432)))

(declare-fun b!886402 () Bool)

(declare-fun e!493457 () List!17757)

(assert (=> b!886402 (= e!493457 call!39251)))

(declare-fun b!886403 () Bool)

(assert (=> b!886403 (= e!493458 (contains!4293 lt!401084 (tuple2!11935 key1!49 v2!16)))))

(declare-fun b!886404 () Bool)

(declare-fun c!93431 () Bool)

(assert (=> b!886404 (= c!93431 (and (is-Cons!17753 (t!25042 (t!25042 l!906))) (bvsgt (_1!5977 (h!18884 (t!25042 (t!25042 l!906)))) key1!49)))))

(assert (=> b!886404 (= e!493457 e!493455)))

(declare-fun b!886405 () Bool)

(declare-fun res!601856 () Bool)

(assert (=> b!886405 (=> (not res!601856) (not e!493458))))

(assert (=> b!886405 (= res!601856 (containsKey!414 lt!401084 key1!49))))

(declare-fun b!886406 () Bool)

(assert (=> b!886406 (= e!493455 call!39252)))

(declare-fun c!93429 () Bool)

(declare-fun b!886407 () Bool)

(assert (=> b!886407 (= e!493459 (ite c!93429 (t!25042 (t!25042 (t!25042 l!906))) (ite c!93431 (Cons!17753 (h!18884 (t!25042 (t!25042 l!906))) (t!25042 (t!25042 (t!25042 l!906)))) Nil!17754)))))

(declare-fun b!886408 () Bool)

(assert (=> b!886408 (= e!493456 e!493457)))

(assert (=> b!886408 (= c!93429 (and (is-Cons!17753 (t!25042 (t!25042 l!906))) (= (_1!5977 (h!18884 (t!25042 (t!25042 l!906)))) key1!49)))))

(assert (= (and d!109637 c!93432) b!886401))

(assert (= (and d!109637 (not c!93432)) b!886408))

(assert (= (and b!886408 c!93429) b!886402))

(assert (= (and b!886408 (not c!93429)) b!886404))

(assert (= (and b!886404 c!93431) b!886399))

(assert (= (and b!886404 (not c!93431)) b!886406))

(assert (= (or b!886399 b!886406) bm!39249))

(assert (= (or b!886402 bm!39249) bm!39248))

(assert (= (or b!886401 bm!39248) bm!39250))

(assert (= (and bm!39250 c!93430) b!886400))

(assert (= (and bm!39250 (not c!93430)) b!886407))

(assert (= (and d!109637 res!601855) b!886405))

(assert (= (and b!886405 res!601856) b!886403))

(declare-fun m!826391 () Bool)

(assert (=> b!886405 m!826391))

(declare-fun m!826393 () Bool)

(assert (=> b!886400 m!826393))

(declare-fun m!826395 () Bool)

(assert (=> bm!39250 m!826395))

(declare-fun m!826397 () Bool)

(assert (=> d!109637 m!826397))

(assert (=> d!109637 m!825937))

(declare-fun m!826399 () Bool)

(assert (=> b!886403 m!826399))

(assert (=> b!886117 d!109637))

(declare-fun lt!401085 () Bool)

(declare-fun d!109639 () Bool)

(assert (=> d!109639 (= lt!401085 (member (tuple2!11935 key1!49 v2!16) (content!398 lt!401051)))))

(declare-fun e!493460 () Bool)

(assert (=> d!109639 (= lt!401085 e!493460)))

(declare-fun res!601858 () Bool)

(assert (=> d!109639 (=> (not res!601858) (not e!493460))))

(assert (=> d!109639 (= res!601858 (is-Cons!17753 lt!401051))))

(assert (=> d!109639 (= (contains!4293 lt!401051 (tuple2!11935 key1!49 v2!16)) lt!401085)))

(declare-fun b!886409 () Bool)

(declare-fun e!493461 () Bool)

(assert (=> b!886409 (= e!493460 e!493461)))

(declare-fun res!601857 () Bool)

(assert (=> b!886409 (=> res!601857 e!493461)))

(assert (=> b!886409 (= res!601857 (= (h!18884 lt!401051) (tuple2!11935 key1!49 v2!16)))))

(declare-fun b!886410 () Bool)

(assert (=> b!886410 (= e!493461 (contains!4293 (t!25042 lt!401051) (tuple2!11935 key1!49 v2!16)))))

(assert (= (and d!109639 res!601858) b!886409))

(assert (= (and b!886409 (not res!601857)) b!886410))

(declare-fun m!826401 () Bool)

(assert (=> d!109639 m!826401))

(declare-fun m!826403 () Bool)

(assert (=> d!109639 m!826403))

(declare-fun m!826405 () Bool)

(assert (=> b!886410 m!826405))

(assert (=> b!886140 d!109639))

(declare-fun b!886411 () Bool)

(declare-fun e!493462 () List!17757)

(declare-fun call!39255 () List!17757)

(assert (=> b!886411 (= e!493462 call!39255)))

(declare-fun b!886412 () Bool)

(declare-fun e!493466 () List!17757)

(assert (=> b!886412 (= e!493466 (insertStrictlySorted!299 (t!25042 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38))) key1!49 v2!16))))

(declare-fun bm!39251 () Bool)

(declare-fun call!39254 () List!17757)

(declare-fun call!39256 () List!17757)

(assert (=> bm!39251 (= call!39254 call!39256)))

(declare-fun bm!39252 () Bool)

(assert (=> bm!39252 (= call!39255 call!39254)))

(declare-fun d!109641 () Bool)

(declare-fun e!493465 () Bool)

(assert (=> d!109641 e!493465))

(declare-fun res!601859 () Bool)

(assert (=> d!109641 (=> (not res!601859) (not e!493465))))

(declare-fun lt!401086 () List!17757)

(assert (=> d!109641 (= res!601859 (isStrictlySorted!487 lt!401086))))

(declare-fun e!493463 () List!17757)

(assert (=> d!109641 (= lt!401086 e!493463)))

(declare-fun c!93436 () Bool)

(assert (=> d!109641 (= c!93436 (and (is-Cons!17753 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38))) (bvslt (_1!5977 (h!18884 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38)))) key1!49)))))

(assert (=> d!109641 (isStrictlySorted!487 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38)))))

(assert (=> d!109641 (= (insertStrictlySorted!299 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38)) key1!49 v2!16) lt!401086)))

(declare-fun b!886413 () Bool)

(assert (=> b!886413 (= e!493463 call!39256)))

(declare-fun bm!39253 () Bool)

(assert (=> bm!39253 (= call!39256 ($colon$colon!549 e!493466 (ite c!93436 (h!18884 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38))) (tuple2!11935 key1!49 v2!16))))))

(declare-fun c!93434 () Bool)

(assert (=> bm!39253 (= c!93434 c!93436)))

(declare-fun b!886414 () Bool)

(declare-fun e!493464 () List!17757)

(assert (=> b!886414 (= e!493464 call!39254)))

(declare-fun b!886415 () Bool)

(assert (=> b!886415 (= e!493465 (contains!4293 lt!401086 (tuple2!11935 key1!49 v2!16)))))

(declare-fun c!93435 () Bool)

(declare-fun b!886416 () Bool)

(assert (=> b!886416 (= c!93435 (and (is-Cons!17753 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38))) (bvsgt (_1!5977 (h!18884 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38)))) key1!49)))))

(assert (=> b!886416 (= e!493464 e!493462)))

(declare-fun b!886417 () Bool)

(declare-fun res!601860 () Bool)

(assert (=> b!886417 (=> (not res!601860) (not e!493465))))

(assert (=> b!886417 (= res!601860 (containsKey!414 lt!401086 key1!49))))

(declare-fun b!886418 () Bool)

(assert (=> b!886418 (= e!493462 call!39255)))

(declare-fun b!886419 () Bool)

(declare-fun c!93433 () Bool)

(assert (=> b!886419 (= e!493466 (ite c!93433 (t!25042 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38))) (ite c!93435 (Cons!17753 (h!18884 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38))) (t!25042 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38)))) Nil!17754)))))

(declare-fun b!886420 () Bool)

(assert (=> b!886420 (= e!493463 e!493464)))

(assert (=> b!886420 (= c!93433 (and (is-Cons!17753 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38))) (= (_1!5977 (h!18884 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38)))) key1!49)))))

(assert (= (and d!109641 c!93436) b!886413))

(assert (= (and d!109641 (not c!93436)) b!886420))

(assert (= (and b!886420 c!93433) b!886414))

(assert (= (and b!886420 (not c!93433)) b!886416))

(assert (= (and b!886416 c!93435) b!886411))

(assert (= (and b!886416 (not c!93435)) b!886418))

(assert (= (or b!886411 b!886418) bm!39252))

(assert (= (or b!886414 bm!39252) bm!39251))

(assert (= (or b!886413 bm!39251) bm!39253))

(assert (= (and bm!39253 c!93434) b!886412))

(assert (= (and bm!39253 (not c!93434)) b!886419))

(assert (= (and d!109641 res!601859) b!886417))

(assert (= (and b!886417 res!601860) b!886415))

(declare-fun m!826407 () Bool)

(assert (=> b!886417 m!826407))

(declare-fun m!826409 () Bool)

(assert (=> b!886412 m!826409))

(declare-fun m!826411 () Bool)

(assert (=> bm!39253 m!826411))

(declare-fun m!826413 () Bool)

(assert (=> d!109641 m!826413))

(declare-fun m!826415 () Bool)

(assert (=> d!109641 m!826415))

(declare-fun m!826417 () Bool)

(assert (=> b!886415 m!826417))

(assert (=> b!886107 d!109641))

(declare-fun d!109643 () Bool)

(assert (=> d!109643 (= ($colon$colon!549 e!493253 (ite c!93380 (h!18884 (t!25042 l!906)) (tuple2!11935 key1!49 v1!38))) (Cons!17753 (ite c!93380 (h!18884 (t!25042 l!906)) (tuple2!11935 key1!49 v1!38)) e!493253))))

(assert (=> bm!39211 d!109643))

(declare-fun d!109645 () Bool)

(declare-fun res!601861 () Bool)

(declare-fun e!493467 () Bool)

(assert (=> d!109645 (=> res!601861 e!493467)))

(assert (=> d!109645 (= res!601861 (or (is-Nil!17754 lt!401050) (is-Nil!17754 (t!25042 lt!401050))))))

(assert (=> d!109645 (= (isStrictlySorted!487 lt!401050) e!493467)))

(declare-fun b!886421 () Bool)

(declare-fun e!493468 () Bool)

(assert (=> b!886421 (= e!493467 e!493468)))

(declare-fun res!601862 () Bool)

(assert (=> b!886421 (=> (not res!601862) (not e!493468))))

(assert (=> b!886421 (= res!601862 (bvslt (_1!5977 (h!18884 lt!401050)) (_1!5977 (h!18884 (t!25042 lt!401050)))))))

(declare-fun b!886422 () Bool)

(assert (=> b!886422 (= e!493468 (isStrictlySorted!487 (t!25042 lt!401050)))))

(assert (= (and d!109645 (not res!601861)) b!886421))

(assert (= (and b!886421 res!601862) b!886422))

(declare-fun m!826419 () Bool)

(assert (=> b!886422 m!826419))

(assert (=> d!109465 d!109645))

(assert (=> d!109465 d!109433))

(declare-fun d!109647 () Bool)

(declare-fun res!601863 () Bool)

(declare-fun e!493469 () Bool)

(assert (=> d!109647 (=> res!601863 e!493469)))

(assert (=> d!109647 (= res!601863 (or (is-Nil!17754 lt!401048) (is-Nil!17754 (t!25042 lt!401048))))))

(assert (=> d!109647 (= (isStrictlySorted!487 lt!401048) e!493469)))

(declare-fun b!886423 () Bool)

(declare-fun e!493470 () Bool)

(assert (=> b!886423 (= e!493469 e!493470)))

(declare-fun res!601864 () Bool)

(assert (=> b!886423 (=> (not res!601864) (not e!493470))))

(assert (=> b!886423 (= res!601864 (bvslt (_1!5977 (h!18884 lt!401048)) (_1!5977 (h!18884 (t!25042 lt!401048)))))))

(declare-fun b!886424 () Bool)

(assert (=> b!886424 (= e!493470 (isStrictlySorted!487 (t!25042 lt!401048)))))

(assert (= (and d!109647 (not res!601863)) b!886423))

(assert (= (and b!886423 res!601864) b!886424))

(declare-fun m!826421 () Bool)

(assert (=> b!886424 m!826421))

(assert (=> d!109461 d!109647))

(declare-fun d!109649 () Bool)

(declare-fun res!601865 () Bool)

(declare-fun e!493471 () Bool)

(assert (=> d!109649 (=> res!601865 e!493471)))

(assert (=> d!109649 (= res!601865 (or (is-Nil!17754 (insertStrictlySorted!299 l!906 key1!49 v1!38)) (is-Nil!17754 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38)))))))

(assert (=> d!109649 (= (isStrictlySorted!487 (insertStrictlySorted!299 l!906 key1!49 v1!38)) e!493471)))

(declare-fun b!886425 () Bool)

(declare-fun e!493472 () Bool)

(assert (=> b!886425 (= e!493471 e!493472)))

(declare-fun res!601866 () Bool)

(assert (=> b!886425 (=> (not res!601866) (not e!493472))))

(assert (=> b!886425 (= res!601866 (bvslt (_1!5977 (h!18884 (insertStrictlySorted!299 l!906 key1!49 v1!38))) (_1!5977 (h!18884 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38))))))))

(declare-fun b!886426 () Bool)

(assert (=> b!886426 (= e!493472 (isStrictlySorted!487 (t!25042 (insertStrictlySorted!299 l!906 key1!49 v1!38))))))

(assert (= (and d!109649 (not res!601865)) b!886425))

(assert (= (and b!886425 res!601866) b!886426))

(assert (=> b!886426 m!826415))

(assert (=> d!109461 d!109649))

(declare-fun d!109651 () Bool)

(declare-fun res!601867 () Bool)

(declare-fun e!493473 () Bool)

(assert (=> d!109651 (=> res!601867 e!493473)))

(assert (=> d!109651 (= res!601867 (and (is-Cons!17753 lt!401051) (= (_1!5977 (h!18884 lt!401051)) key1!49)))))

(assert (=> d!109651 (= (containsKey!414 lt!401051 key1!49) e!493473)))

(declare-fun b!886427 () Bool)

(declare-fun e!493474 () Bool)

(assert (=> b!886427 (= e!493473 e!493474)))

(declare-fun res!601868 () Bool)

(assert (=> b!886427 (=> (not res!601868) (not e!493474))))

(assert (=> b!886427 (= res!601868 (and (or (not (is-Cons!17753 lt!401051)) (bvsle (_1!5977 (h!18884 lt!401051)) key1!49)) (is-Cons!17753 lt!401051) (bvslt (_1!5977 (h!18884 lt!401051)) key1!49)))))

(declare-fun b!886428 () Bool)

(assert (=> b!886428 (= e!493474 (containsKey!414 (t!25042 lt!401051) key1!49))))

(assert (= (and d!109651 (not res!601867)) b!886427))

(assert (= (and b!886427 res!601868) b!886428))

(declare-fun m!826423 () Bool)

(assert (=> b!886428 m!826423))

(assert (=> b!886142 d!109651))

(declare-fun d!109653 () Bool)

(assert (=> d!109653 (= ($colon$colon!549 e!493235 (ite c!93368 (h!18884 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)) (tuple2!11935 key1!49 v2!16))) (Cons!17753 (ite c!93368 (h!18884 (insertStrictlySorted!299 (t!25042 l!906) key1!49 v1!38)) (tuple2!11935 key1!49 v2!16)) e!493235))))

(assert (=> bm!39202 d!109653))

(declare-fun d!109655 () Bool)

(declare-fun lt!401087 () Bool)

(assert (=> d!109655 (= lt!401087 (member (tuple2!11935 key1!49 v1!38) (content!398 lt!401050)))))

(declare-fun e!493475 () Bool)

(assert (=> d!109655 (= lt!401087 e!493475)))

(declare-fun res!601870 () Bool)

(assert (=> d!109655 (=> (not res!601870) (not e!493475))))

(assert (=> d!109655 (= res!601870 (is-Cons!17753 lt!401050))))

(assert (=> d!109655 (= (contains!4293 lt!401050 (tuple2!11935 key1!49 v1!38)) lt!401087)))

(declare-fun b!886429 () Bool)

(declare-fun e!493476 () Bool)

(assert (=> b!886429 (= e!493475 e!493476)))

(declare-fun res!601869 () Bool)

(assert (=> b!886429 (=> res!601869 e!493476)))

(assert (=> b!886429 (= res!601869 (= (h!18884 lt!401050) (tuple2!11935 key1!49 v1!38)))))

(declare-fun b!886430 () Bool)

(assert (=> b!886430 (= e!493476 (contains!4293 (t!25042 lt!401050) (tuple2!11935 key1!49 v1!38)))))

(assert (= (and d!109655 res!601870) b!886429))

(assert (= (and b!886429 (not res!601869)) b!886430))

(declare-fun m!826425 () Bool)

(assert (=> d!109655 m!826425))

(declare-fun m!826427 () Bool)

(assert (=> d!109655 m!826427))

(declare-fun m!826429 () Bool)

(assert (=> b!886430 m!826429))

(assert (=> b!886130 d!109655))

(declare-fun d!109657 () Bool)

(assert (=> d!109657 (= ($colon$colon!549 e!493248 (ite c!93376 (h!18884 (t!25042 l!906)) (tuple2!11935 key1!49 v2!16))) (Cons!17753 (ite c!93376 (h!18884 (t!25042 l!906)) (tuple2!11935 key1!49 v2!16)) e!493248))))

(assert (=> bm!39208 d!109657))

(declare-fun d!109659 () Bool)

(declare-fun res!601871 () Bool)

(declare-fun e!493477 () Bool)

(assert (=> d!109659 (=> res!601871 e!493477)))

(assert (=> d!109659 (= res!601871 (or (is-Nil!17754 lt!401049) (is-Nil!17754 (t!25042 lt!401049))))))

(assert (=> d!109659 (= (isStrictlySorted!487 lt!401049) e!493477)))

(declare-fun b!886431 () Bool)

(declare-fun e!493478 () Bool)

(assert (=> b!886431 (= e!493477 e!493478)))

(declare-fun res!601872 () Bool)

(assert (=> b!886431 (=> (not res!601872) (not e!493478))))

(assert (=> b!886431 (= res!601872 (bvslt (_1!5977 (h!18884 lt!401049)) (_1!5977 (h!18884 (t!25042 lt!401049)))))))

(declare-fun b!886432 () Bool)

(assert (=> b!886432 (= e!493478 (isStrictlySorted!487 (t!25042 lt!401049)))))

(assert (= (and d!109659 (not res!601871)) b!886431))

(assert (= (and b!886431 res!601872) b!886432))

(declare-fun m!826431 () Bool)

(assert (=> b!886432 m!826431))

(assert (=> d!109463 d!109659))

(assert (=> d!109463 d!109433))

(declare-fun d!109661 () Bool)

(assert (=> d!109661 (= ($colon$colon!549 e!493243 (ite c!93372 (h!18884 (insertStrictlySorted!299 l!906 key1!49 v1!38)) (tuple2!11935 key1!49 v2!16))) (Cons!17753 (ite c!93372 (h!18884 (insertStrictlySorted!299 l!906 key1!49 v1!38)) (tuple2!11935 key1!49 v2!16)) e!493243))))

(assert (=> bm!39205 d!109661))

(declare-fun lt!401088 () Bool)

(declare-fun d!109663 () Bool)

(assert (=> d!109663 (= lt!401088 (member (tuple2!11935 key1!49 v2!16) (content!398 lt!401047)))))

(declare-fun e!493479 () Bool)

(assert (=> d!109663 (= lt!401088 e!493479)))

(declare-fun res!601874 () Bool)

(assert (=> d!109663 (=> (not res!601874) (not e!493479))))

(assert (=> d!109663 (= res!601874 (is-Cons!17753 lt!401047))))

(assert (=> d!109663 (= (contains!4293 lt!401047 (tuple2!11935 key1!49 v2!16)) lt!401088)))

(declare-fun b!886433 () Bool)

(declare-fun e!493480 () Bool)

(assert (=> b!886433 (= e!493479 e!493480)))

(declare-fun res!601873 () Bool)

(assert (=> b!886433 (=> res!601873 e!493480)))

(assert (=> b!886433 (= res!601873 (= (h!18884 lt!401047) (tuple2!11935 key1!49 v2!16)))))

(declare-fun b!886434 () Bool)

(assert (=> b!886434 (= e!493480 (contains!4293 (t!25042 lt!401047) (tuple2!11935 key1!49 v2!16)))))

(assert (= (and d!109663 res!601874) b!886433))

(assert (= (and b!886433 (not res!601873)) b!886434))

(declare-fun m!826433 () Bool)

(assert (=> d!109663 m!826433))

(declare-fun m!826435 () Bool)

(assert (=> d!109663 m!826435))

(declare-fun m!826437 () Bool)

(assert (=> b!886434 m!826437))

(assert (=> b!886095 d!109663))

(declare-fun b!886435 () Bool)

(declare-fun e!493481 () Bool)

(declare-fun tp!54384 () Bool)

(assert (=> b!886435 (= e!493481 (and tp_is_empty!17813 tp!54384))))

(assert (=> b!886162 (= tp!54381 e!493481)))

(assert (= (and b!886162 (is-Cons!17753 (t!25042 (t!25042 l!906)))) b!886435))

(push 1)

(assert (not d!109639))

(assert (not b!886369))

(assert (not b!886384))

(assert (not bm!39247))

(assert (not b!886424))

(assert (not b!886354))

(assert (not b!886348))

(assert (not d!109655))

(assert (not d!109611))

(assert (not b!886417))

(assert (not d!109637))

(assert (not b!886366))

(assert (not b!886382))

(assert (not b!886422))

(assert (not b!886356))

(assert (not b!886415))

(assert (not b!886346))

(assert (not d!109601))

(assert (not b!886388))

(assert (not b!886430))

(assert (not b!886412))

(assert (not b!886398))

(assert (not b!886361))

(assert (not d!109629))

(assert tp_is_empty!17813)

(assert (not bm!39253))

(assert (not bm!39244))

(assert (not b!886435))

(assert (not b!886400))

(assert (not b!886426))

(assert (not b!886410))

(assert (not b!886359))

(assert (not b!886390))

(assert (not b!886432))

(assert (not b!886396))

(assert (not b!886428))

(assert (not b!886403))

(assert (not b!886392))

(assert (not b!886386))

(assert (not b!886405))

(assert (not d!109609))

(assert (not d!109627))

(assert (not b!886380))

(assert (not d!109663))

(assert (not b!886434))

(assert (not b!886394))

(assert (not bm!39250))

(assert (not d!109615))

(assert (not d!109641))

(assert (not b!886371))

(check-sat)

(pop 1)

(push 1)

(check-sat)

