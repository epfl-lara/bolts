; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!437322 () Bool)

(assert start!437322)

(declare-fun res!1849351 () Bool)

(declare-fun e!2777209 () Bool)

(assert (=> start!437322 (=> (not res!1849351) (not e!2777209))))

(declare-datatypes ((K!11548 0))(
  ( (K!11549 (val!17509 Int)) )
))
(declare-datatypes ((V!11794 0))(
  ( (V!11795 (val!17510 Int)) )
))
(declare-datatypes ((tuple2!50318 0))(
  ( (tuple2!50319 (_1!28453 K!11548) (_2!28453 V!11794)) )
))
(declare-datatypes ((List!50274 0))(
  ( (Nil!50150) (Cons!50150 (h!55895 tuple2!50318) (t!357224 List!50274)) )
))
(declare-fun l!12755 () List!50274)

(declare-fun noDuplicateKeys!977 (List!50274) Bool)

(assert (=> start!437322 (= res!1849351 (noDuplicateKeys!977 l!12755))))

(assert (=> start!437322 e!2777209))

(declare-fun e!2777206 () Bool)

(assert (=> start!437322 e!2777206))

(declare-fun tp_is_empty!27129 () Bool)

(assert (=> start!437322 tp_is_empty!27129))

(declare-datatypes ((ListMap!3195 0))(
  ( (ListMap!3196 (toList!3949 List!50274)) )
))
(declare-fun acc!957 () ListMap!3195)

(declare-fun e!2777207 () Bool)

(declare-fun inv!65733 (ListMap!3195) Bool)

(assert (=> start!437322 (and (inv!65733 acc!957) e!2777207)))

(declare-fun b!4459980 () Bool)

(declare-fun tp_is_empty!27131 () Bool)

(declare-fun tp!1335617 () Bool)

(assert (=> b!4459980 (= e!2777206 (and tp_is_empty!27129 tp_is_empty!27131 tp!1335617))))

(declare-fun b!4459981 () Bool)

(declare-fun e!2777208 () Bool)

(assert (=> b!4459981 (= e!2777208 (not (noDuplicateKeys!977 (t!357224 l!12755))))))

(declare-fun b!4459982 () Bool)

(declare-fun tp!1335616 () Bool)

(assert (=> b!4459982 (= e!2777207 tp!1335616)))

(declare-fun b!4459983 () Bool)

(declare-fun res!1849354 () Bool)

(assert (=> b!4459983 (=> (not res!1849354) (not e!2777209))))

(declare-fun key!4289 () K!11548)

(declare-fun containsKey!1379 (List!50274 K!11548) Bool)

(assert (=> b!4459983 (= res!1849354 (not (containsKey!1379 l!12755 key!4289)))))

(declare-fun b!4459984 () Bool)

(declare-fun res!1849352 () Bool)

(assert (=> b!4459984 (=> (not res!1849352) (not e!2777209))))

(declare-fun contains!12648 (ListMap!3195 K!11548) Bool)

(declare-fun addToMapMapFromBucket!556 (List!50274 ListMap!3195) ListMap!3195)

(assert (=> b!4459984 (= res!1849352 (contains!12648 (addToMapMapFromBucket!556 l!12755 acc!957) key!4289))))

(declare-fun b!4459985 () Bool)

(assert (=> b!4459985 (= e!2777209 e!2777208)))

(declare-fun res!1849353 () Bool)

(assert (=> b!4459985 (=> (not res!1849353) (not e!2777208))))

(assert (=> b!4459985 (= res!1849353 (not (= (_1!28453 (h!55895 l!12755)) key!4289)))))

(declare-fun lt!1651087 () ListMap!3195)

(declare-fun +!1330 (ListMap!3195 tuple2!50318) ListMap!3195)

(assert (=> b!4459985 (= lt!1651087 (+!1330 acc!957 (h!55895 l!12755)))))

(declare-fun b!4459986 () Bool)

(declare-fun res!1849350 () Bool)

(assert (=> b!4459986 (=> (not res!1849350) (not e!2777209))))

(assert (=> b!4459986 (= res!1849350 (is-Cons!50150 l!12755))))

(assert (= (and start!437322 res!1849351) b!4459983))

(assert (= (and b!4459983 res!1849354) b!4459984))

(assert (= (and b!4459984 res!1849352) b!4459986))

(assert (= (and b!4459986 res!1849350) b!4459985))

(assert (= (and b!4459985 res!1849353) b!4459981))

(assert (= (and start!437322 (is-Cons!50150 l!12755)) b!4459980))

(assert (= start!437322 b!4459982))

(declare-fun m!5162891 () Bool)

(assert (=> b!4459985 m!5162891))

(declare-fun m!5162893 () Bool)

(assert (=> b!4459981 m!5162893))

(declare-fun m!5162895 () Bool)

(assert (=> b!4459983 m!5162895))

(declare-fun m!5162897 () Bool)

(assert (=> start!437322 m!5162897))

(declare-fun m!5162899 () Bool)

(assert (=> start!437322 m!5162899))

(declare-fun m!5162901 () Bool)

(assert (=> b!4459984 m!5162901))

(assert (=> b!4459984 m!5162901))

(declare-fun m!5162903 () Bool)

(assert (=> b!4459984 m!5162903))

(push 1)

(assert (not b!4459980))

(assert tp_is_empty!27131)

(assert (not b!4459982))

(assert tp_is_empty!27129)

(assert (not b!4459983))

(assert (not b!4459981))

(assert (not start!437322))

(assert (not b!4459984))

(assert (not b!4459985))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1360052 () Bool)

(declare-fun res!1849376 () Bool)

(declare-fun e!2777228 () Bool)

(assert (=> d!1360052 (=> res!1849376 e!2777228)))

(assert (=> d!1360052 (= res!1849376 (and (is-Cons!50150 l!12755) (= (_1!28453 (h!55895 l!12755)) key!4289)))))

(assert (=> d!1360052 (= (containsKey!1379 l!12755 key!4289) e!2777228)))

(declare-fun b!4460012 () Bool)

(declare-fun e!2777229 () Bool)

(assert (=> b!4460012 (= e!2777228 e!2777229)))

(declare-fun res!1849377 () Bool)

(assert (=> b!4460012 (=> (not res!1849377) (not e!2777229))))

(assert (=> b!4460012 (= res!1849377 (is-Cons!50150 l!12755))))

(declare-fun b!4460013 () Bool)

(assert (=> b!4460013 (= e!2777229 (containsKey!1379 (t!357224 l!12755) key!4289))))

(assert (= (and d!1360052 (not res!1849376)) b!4460012))

(assert (= (and b!4460012 res!1849377) b!4460013))

(declare-fun m!5162919 () Bool)

(assert (=> b!4460013 m!5162919))

(assert (=> b!4459983 d!1360052))

(declare-fun d!1360056 () Bool)

(declare-fun res!1849386 () Bool)

(declare-fun e!2777238 () Bool)

(assert (=> d!1360056 (=> res!1849386 e!2777238)))

(assert (=> d!1360056 (= res!1849386 (not (is-Cons!50150 (t!357224 l!12755))))))

(assert (=> d!1360056 (= (noDuplicateKeys!977 (t!357224 l!12755)) e!2777238)))

(declare-fun b!4460024 () Bool)

(declare-fun e!2777239 () Bool)

(assert (=> b!4460024 (= e!2777238 e!2777239)))

(declare-fun res!1849387 () Bool)

(assert (=> b!4460024 (=> (not res!1849387) (not e!2777239))))

(assert (=> b!4460024 (= res!1849387 (not (containsKey!1379 (t!357224 (t!357224 l!12755)) (_1!28453 (h!55895 (t!357224 l!12755))))))))

(declare-fun b!4460025 () Bool)

(assert (=> b!4460025 (= e!2777239 (noDuplicateKeys!977 (t!357224 (t!357224 l!12755))))))

(assert (= (and d!1360056 (not res!1849386)) b!4460024))

(assert (= (and b!4460024 res!1849387) b!4460025))

(declare-fun m!5162923 () Bool)

(assert (=> b!4460024 m!5162923))

(declare-fun m!5162925 () Bool)

(assert (=> b!4460025 m!5162925))

(assert (=> b!4459981 d!1360056))

(declare-fun d!1360060 () Bool)

(declare-fun e!2777248 () Bool)

(assert (=> d!1360060 e!2777248))

(declare-fun res!1849399 () Bool)

(assert (=> d!1360060 (=> (not res!1849399) (not e!2777248))))

(declare-fun lt!1651101 () ListMap!3195)

(assert (=> d!1360060 (= res!1849399 (contains!12648 lt!1651101 (_1!28453 (h!55895 l!12755))))))

(declare-fun lt!1651102 () List!50274)

(assert (=> d!1360060 (= lt!1651101 (ListMap!3196 lt!1651102))))

(declare-datatypes ((Unit!86613 0))(
  ( (Unit!86614) )
))
(declare-fun lt!1651100 () Unit!86613)

(declare-fun lt!1651099 () Unit!86613)

(assert (=> d!1360060 (= lt!1651100 lt!1651099)))

(declare-datatypes ((Option!10878 0))(
  ( (None!10877) (Some!10877 (v!44135 V!11794)) )
))
(declare-fun getValueByKey!864 (List!50274 K!11548) Option!10878)

(assert (=> d!1360060 (= (getValueByKey!864 lt!1651102 (_1!28453 (h!55895 l!12755))) (Some!10877 (_2!28453 (h!55895 l!12755))))))

(declare-fun lemmaContainsTupThenGetReturnValue!559 (List!50274 K!11548 V!11794) Unit!86613)

(assert (=> d!1360060 (= lt!1651099 (lemmaContainsTupThenGetReturnValue!559 lt!1651102 (_1!28453 (h!55895 l!12755)) (_2!28453 (h!55895 l!12755))))))

(declare-fun insertNoDuplicatedKeys!253 (List!50274 K!11548 V!11794) List!50274)

(assert (=> d!1360060 (= lt!1651102 (insertNoDuplicatedKeys!253 (toList!3949 acc!957) (_1!28453 (h!55895 l!12755)) (_2!28453 (h!55895 l!12755))))))

(assert (=> d!1360060 (= (+!1330 acc!957 (h!55895 l!12755)) lt!1651101)))

(declare-fun b!4460036 () Bool)

(declare-fun res!1849398 () Bool)

(assert (=> b!4460036 (=> (not res!1849398) (not e!2777248))))

(assert (=> b!4460036 (= res!1849398 (= (getValueByKey!864 (toList!3949 lt!1651101) (_1!28453 (h!55895 l!12755))) (Some!10877 (_2!28453 (h!55895 l!12755)))))))

(declare-fun b!4460037 () Bool)

(declare-fun contains!12650 (List!50274 tuple2!50318) Bool)

(assert (=> b!4460037 (= e!2777248 (contains!12650 (toList!3949 lt!1651101) (h!55895 l!12755)))))

(assert (= (and d!1360060 res!1849399) b!4460036))

(assert (= (and b!4460036 res!1849398) b!4460037))

(declare-fun m!5162931 () Bool)

(assert (=> d!1360060 m!5162931))

(declare-fun m!5162933 () Bool)

(assert (=> d!1360060 m!5162933))

(declare-fun m!5162935 () Bool)

(assert (=> d!1360060 m!5162935))

(declare-fun m!5162937 () Bool)

(assert (=> d!1360060 m!5162937))

(declare-fun m!5162939 () Bool)

(assert (=> b!4460036 m!5162939))

(declare-fun m!5162941 () Bool)

(assert (=> b!4460037 m!5162941))

(assert (=> b!4459985 d!1360060))

(declare-fun d!1360066 () Bool)

(declare-fun res!1849400 () Bool)

(declare-fun e!2777249 () Bool)

(assert (=> d!1360066 (=> res!1849400 e!2777249)))

(assert (=> d!1360066 (= res!1849400 (not (is-Cons!50150 l!12755)))))

(assert (=> d!1360066 (= (noDuplicateKeys!977 l!12755) e!2777249)))

(declare-fun b!4460038 () Bool)

(declare-fun e!2777250 () Bool)

(assert (=> b!4460038 (= e!2777249 e!2777250)))

(declare-fun res!1849401 () Bool)

(assert (=> b!4460038 (=> (not res!1849401) (not e!2777250))))

(assert (=> b!4460038 (= res!1849401 (not (containsKey!1379 (t!357224 l!12755) (_1!28453 (h!55895 l!12755)))))))

(declare-fun b!4460039 () Bool)

(assert (=> b!4460039 (= e!2777250 (noDuplicateKeys!977 (t!357224 l!12755)))))

(assert (= (and d!1360066 (not res!1849400)) b!4460038))

(assert (= (and b!4460038 res!1849401) b!4460039))

(declare-fun m!5162943 () Bool)

(assert (=> b!4460038 m!5162943))

(assert (=> b!4460039 m!5162893))

(assert (=> start!437322 d!1360066))

(declare-fun d!1360068 () Bool)

(declare-fun invariantList!899 (List!50274) Bool)

(assert (=> d!1360068 (= (inv!65733 acc!957) (invariantList!899 (toList!3949 acc!957)))))

(declare-fun bs!791392 () Bool)

(assert (= bs!791392 d!1360068))

(declare-fun m!5162945 () Bool)

(assert (=> bs!791392 m!5162945))

(assert (=> start!437322 d!1360068))

(declare-fun d!1360070 () Bool)

(declare-fun e!2777283 () Bool)

(assert (=> d!1360070 e!2777283))

(declare-fun res!1849424 () Bool)

(assert (=> d!1360070 (=> res!1849424 e!2777283)))

(declare-fun e!2777284 () Bool)

(assert (=> d!1360070 (= res!1849424 e!2777284)))

(declare-fun res!1849422 () Bool)

(assert (=> d!1360070 (=> (not res!1849422) (not e!2777284))))

(declare-fun lt!1651147 () Bool)

(assert (=> d!1360070 (= res!1849422 (not lt!1651147))))

(declare-fun lt!1651154 () Bool)

(assert (=> d!1360070 (= lt!1651147 lt!1651154)))

(declare-fun lt!1651148 () Unit!86613)

(declare-fun e!2777285 () Unit!86613)

(assert (=> d!1360070 (= lt!1651148 e!2777285)))

(declare-fun c!759078 () Bool)

(assert (=> d!1360070 (= c!759078 lt!1651154)))

(declare-fun containsKey!1381 (List!50274 K!11548) Bool)

(assert (=> d!1360070 (= lt!1651154 (containsKey!1381 (toList!3949 (addToMapMapFromBucket!556 l!12755 acc!957)) key!4289))))

(assert (=> d!1360070 (= (contains!12648 (addToMapMapFromBucket!556 l!12755 acc!957) key!4289) lt!1651147)))

(declare-fun b!4460084 () Bool)

(declare-datatypes ((List!50276 0))(
  ( (Nil!50152) (Cons!50152 (h!55897 K!11548) (t!357226 List!50276)) )
))
(declare-fun e!2777281 () List!50276)

(declare-fun getKeysList!346 (List!50274) List!50276)

(assert (=> b!4460084 (= e!2777281 (getKeysList!346 (toList!3949 (addToMapMapFromBucket!556 l!12755 acc!957))))))

(declare-fun b!4460085 () Bool)

(assert (=> b!4460085 false))

(declare-fun lt!1651149 () Unit!86613)

(declare-fun lt!1651152 () Unit!86613)

(assert (=> b!4460085 (= lt!1651149 lt!1651152)))

(assert (=> b!4460085 (containsKey!1381 (toList!3949 (addToMapMapFromBucket!556 l!12755 acc!957)) key!4289)))

(declare-fun lemmaInGetKeysListThenContainsKey!345 (List!50274 K!11548) Unit!86613)

(assert (=> b!4460085 (= lt!1651152 (lemmaInGetKeysListThenContainsKey!345 (toList!3949 (addToMapMapFromBucket!556 l!12755 acc!957)) key!4289))))

(declare-fun e!2777282 () Unit!86613)

(declare-fun Unit!86615 () Unit!86613)

(assert (=> b!4460085 (= e!2777282 Unit!86615)))

(declare-fun b!4460086 () Bool)

(declare-fun lt!1651150 () Unit!86613)

(assert (=> b!4460086 (= e!2777285 lt!1651150)))

(declare-fun lt!1651151 () Unit!86613)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!769 (List!50274 K!11548) Unit!86613)

(assert (=> b!4460086 (= lt!1651151 (lemmaContainsKeyImpliesGetValueByKeyDefined!769 (toList!3949 (addToMapMapFromBucket!556 l!12755 acc!957)) key!4289))))

(declare-fun isDefined!8166 (Option!10878) Bool)

(assert (=> b!4460086 (isDefined!8166 (getValueByKey!864 (toList!3949 (addToMapMapFromBucket!556 l!12755 acc!957)) key!4289))))

(declare-fun lt!1651153 () Unit!86613)

(assert (=> b!4460086 (= lt!1651153 lt!1651151)))

(declare-fun lemmaInListThenGetKeysListContains!342 (List!50274 K!11548) Unit!86613)

(assert (=> b!4460086 (= lt!1651150 (lemmaInListThenGetKeysListContains!342 (toList!3949 (addToMapMapFromBucket!556 l!12755 acc!957)) key!4289))))

(declare-fun call!310467 () Bool)

(assert (=> b!4460086 call!310467))

(declare-fun bm!310462 () Bool)

(declare-fun contains!12651 (List!50276 K!11548) Bool)

(assert (=> bm!310462 (= call!310467 (contains!12651 e!2777281 key!4289))))

(declare-fun c!759079 () Bool)

(assert (=> bm!310462 (= c!759079 c!759078)))

(declare-fun b!4460087 () Bool)

(assert (=> b!4460087 (= e!2777285 e!2777282)))

(declare-fun c!759077 () Bool)

(assert (=> b!4460087 (= c!759077 call!310467)))

(declare-fun b!4460088 () Bool)

(declare-fun keys!17273 (ListMap!3195) List!50276)

(assert (=> b!4460088 (= e!2777284 (not (contains!12651 (keys!17273 (addToMapMapFromBucket!556 l!12755 acc!957)) key!4289)))))

(declare-fun b!4460089 () Bool)

(assert (=> b!4460089 (= e!2777281 (keys!17273 (addToMapMapFromBucket!556 l!12755 acc!957)))))

(declare-fun b!4460090 () Bool)

(declare-fun e!2777280 () Bool)

(assert (=> b!4460090 (= e!2777283 e!2777280)))

(declare-fun res!1849423 () Bool)

(assert (=> b!4460090 (=> (not res!1849423) (not e!2777280))))

(assert (=> b!4460090 (= res!1849423 (isDefined!8166 (getValueByKey!864 (toList!3949 (addToMapMapFromBucket!556 l!12755 acc!957)) key!4289)))))

(declare-fun b!4460091 () Bool)

(assert (=> b!4460091 (= e!2777280 (contains!12651 (keys!17273 (addToMapMapFromBucket!556 l!12755 acc!957)) key!4289))))

(declare-fun b!4460092 () Bool)

(declare-fun Unit!86616 () Unit!86613)

(assert (=> b!4460092 (= e!2777282 Unit!86616)))

(assert (= (and d!1360070 c!759078) b!4460086))

(assert (= (and d!1360070 (not c!759078)) b!4460087))

(assert (= (and b!4460087 c!759077) b!4460085))

(assert (= (and b!4460087 (not c!759077)) b!4460092))

(assert (= (or b!4460086 b!4460087) bm!310462))

(assert (= (and bm!310462 c!759079) b!4460084))

(assert (= (and bm!310462 (not c!759079)) b!4460089))

(assert (= (and d!1360070 res!1849422) b!4460088))

(assert (= (and d!1360070 (not res!1849424)) b!4460090))

(assert (= (and b!4460090 res!1849423) b!4460091))

(declare-fun m!5162963 () Bool)

(assert (=> bm!310462 m!5162963))

(declare-fun m!5162965 () Bool)

(assert (=> d!1360070 m!5162965))

(assert (=> b!4460088 m!5162901))

(declare-fun m!5162967 () Bool)

(assert (=> b!4460088 m!5162967))

(assert (=> b!4460088 m!5162967))

(declare-fun m!5162969 () Bool)

(assert (=> b!4460088 m!5162969))

(assert (=> b!4460089 m!5162901))

(assert (=> b!4460089 m!5162967))

(assert (=> b!4460091 m!5162901))

(assert (=> b!4460091 m!5162967))

(assert (=> b!4460091 m!5162967))

(assert (=> b!4460091 m!5162969))

(assert (=> b!4460085 m!5162965))

(declare-fun m!5162971 () Bool)

(assert (=> b!4460085 m!5162971))

(declare-fun m!5162973 () Bool)

(assert (=> b!4460084 m!5162973))

(declare-fun m!5162975 () Bool)

(assert (=> b!4460086 m!5162975))

(declare-fun m!5162977 () Bool)

(assert (=> b!4460086 m!5162977))

(assert (=> b!4460086 m!5162977))

(declare-fun m!5162979 () Bool)

(assert (=> b!4460086 m!5162979))

(declare-fun m!5162981 () Bool)

(assert (=> b!4460086 m!5162981))

(assert (=> b!4460090 m!5162977))

(assert (=> b!4460090 m!5162977))

(assert (=> b!4460090 m!5162979))

(assert (=> b!4459984 d!1360070))

(declare-fun b!4460118 () Bool)

(assert (=> b!4460118 true))

(declare-fun bs!791393 () Bool)

(declare-fun b!4460117 () Bool)

(assert (= bs!791393 (and b!4460117 b!4460118)))

(declare-fun lambda!161465 () Int)

(declare-fun lambda!161464 () Int)

(assert (=> bs!791393 (= lambda!161465 lambda!161464)))

(assert (=> b!4460117 true))

(declare-fun lt!1651223 () ListMap!3195)

(declare-fun lambda!161466 () Int)

(assert (=> bs!791393 (= (= lt!1651223 acc!957) (= lambda!161466 lambda!161464))))

(assert (=> b!4460117 (= (= lt!1651223 acc!957) (= lambda!161466 lambda!161465))))

(assert (=> b!4460117 true))

(declare-fun bs!791394 () Bool)

(declare-fun d!1360076 () Bool)

(assert (= bs!791394 (and d!1360076 b!4460118)))

(declare-fun lambda!161467 () Int)

(declare-fun lt!1651225 () ListMap!3195)

(assert (=> bs!791394 (= (= lt!1651225 acc!957) (= lambda!161467 lambda!161464))))

(declare-fun bs!791395 () Bool)

(assert (= bs!791395 (and d!1360076 b!4460117)))

(assert (=> bs!791395 (= (= lt!1651225 acc!957) (= lambda!161467 lambda!161465))))

(assert (=> bs!791395 (= (= lt!1651225 lt!1651223) (= lambda!161467 lambda!161466))))

(assert (=> d!1360076 true))

(declare-fun b!4460116 () Bool)

(declare-fun res!1849436 () Bool)

(declare-fun e!2777300 () Bool)

(assert (=> b!4460116 (=> (not res!1849436) (not e!2777300))))

(declare-fun forall!9908 (List!50274 Int) Bool)

(assert (=> b!4460116 (= res!1849436 (forall!9908 (toList!3949 acc!957) lambda!161467))))

(declare-fun e!2777302 () ListMap!3195)

(assert (=> b!4460117 (= e!2777302 lt!1651223)))

(declare-fun lt!1651212 () ListMap!3195)

(assert (=> b!4460117 (= lt!1651212 (+!1330 acc!957 (h!55895 l!12755)))))

(assert (=> b!4460117 (= lt!1651223 (addToMapMapFromBucket!556 (t!357224 l!12755) (+!1330 acc!957 (h!55895 l!12755))))))

(declare-fun lt!1651229 () Unit!86613)

(declare-fun call!310477 () Unit!86613)

(assert (=> b!4460117 (= lt!1651229 call!310477)))

(declare-fun call!310476 () Bool)

(assert (=> b!4460117 call!310476))

(declare-fun lt!1651219 () Unit!86613)

(assert (=> b!4460117 (= lt!1651219 lt!1651229)))

(assert (=> b!4460117 (forall!9908 (toList!3949 lt!1651212) lambda!161466)))

(declare-fun lt!1651227 () Unit!86613)

(declare-fun Unit!86617 () Unit!86613)

(assert (=> b!4460117 (= lt!1651227 Unit!86617)))

(assert (=> b!4460117 (forall!9908 (t!357224 l!12755) lambda!161466)))

(declare-fun lt!1651220 () Unit!86613)

(declare-fun Unit!86618 () Unit!86613)

(assert (=> b!4460117 (= lt!1651220 Unit!86618)))

(declare-fun lt!1651217 () Unit!86613)

(declare-fun Unit!86619 () Unit!86613)

(assert (=> b!4460117 (= lt!1651217 Unit!86619)))

(declare-fun lt!1651215 () Unit!86613)

(declare-fun forallContained!2197 (List!50274 Int tuple2!50318) Unit!86613)

(assert (=> b!4460117 (= lt!1651215 (forallContained!2197 (toList!3949 lt!1651212) lambda!161466 (h!55895 l!12755)))))

(assert (=> b!4460117 (contains!12648 lt!1651212 (_1!28453 (h!55895 l!12755)))))

(declare-fun lt!1651211 () Unit!86613)

(declare-fun Unit!86620 () Unit!86613)

(assert (=> b!4460117 (= lt!1651211 Unit!86620)))

(assert (=> b!4460117 (contains!12648 lt!1651223 (_1!28453 (h!55895 l!12755)))))

(declare-fun lt!1651230 () Unit!86613)

(declare-fun Unit!86621 () Unit!86613)

(assert (=> b!4460117 (= lt!1651230 Unit!86621)))

(assert (=> b!4460117 (forall!9908 l!12755 lambda!161466)))

(declare-fun lt!1651213 () Unit!86613)

(declare-fun Unit!86622 () Unit!86613)

(assert (=> b!4460117 (= lt!1651213 Unit!86622)))

(assert (=> b!4460117 (forall!9908 (toList!3949 lt!1651212) lambda!161466)))

(declare-fun lt!1651214 () Unit!86613)

(declare-fun Unit!86625 () Unit!86613)

(assert (=> b!4460117 (= lt!1651214 Unit!86625)))

(declare-fun lt!1651231 () Unit!86613)

(declare-fun Unit!86626 () Unit!86613)

(assert (=> b!4460117 (= lt!1651231 Unit!86626)))

(declare-fun lt!1651224 () Unit!86613)

(declare-fun addForallContainsKeyThenBeforeAdding!246 (ListMap!3195 ListMap!3195 K!11548 V!11794) Unit!86613)

(assert (=> b!4460117 (= lt!1651224 (addForallContainsKeyThenBeforeAdding!246 acc!957 lt!1651223 (_1!28453 (h!55895 l!12755)) (_2!28453 (h!55895 l!12755))))))

(assert (=> b!4460117 (forall!9908 (toList!3949 acc!957) lambda!161466)))

(declare-fun lt!1651216 () Unit!86613)

(assert (=> b!4460117 (= lt!1651216 lt!1651224)))

(assert (=> b!4460117 (forall!9908 (toList!3949 acc!957) lambda!161466)))

(declare-fun lt!1651222 () Unit!86613)

(declare-fun Unit!86627 () Unit!86613)

(assert (=> b!4460117 (= lt!1651222 Unit!86627)))

(declare-fun res!1849434 () Bool)

(declare-fun call!310475 () Bool)

(assert (=> b!4460117 (= res!1849434 call!310475)))

(declare-fun e!2777301 () Bool)

(assert (=> b!4460117 (=> (not res!1849434) (not e!2777301))))

(assert (=> b!4460117 e!2777301))

(declare-fun lt!1651228 () Unit!86613)

(declare-fun Unit!86628 () Unit!86613)

(assert (=> b!4460117 (= lt!1651228 Unit!86628)))

(declare-fun bm!310470 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!247 (ListMap!3195) Unit!86613)

(assert (=> bm!310470 (= call!310477 (lemmaContainsAllItsOwnKeys!247 acc!957))))

(declare-fun bm!310471 () Bool)

(declare-fun c!759087 () Bool)

(assert (=> bm!310471 (= call!310475 (forall!9908 (ite c!759087 (toList!3949 acc!957) l!12755) (ite c!759087 lambda!161464 lambda!161466)))))

(assert (=> d!1360076 e!2777300))

(declare-fun res!1849435 () Bool)

(assert (=> d!1360076 (=> (not res!1849435) (not e!2777300))))

(assert (=> d!1360076 (= res!1849435 (forall!9908 l!12755 lambda!161467))))

(assert (=> d!1360076 (= lt!1651225 e!2777302)))

(assert (=> d!1360076 (= c!759087 (is-Nil!50150 l!12755))))

(assert (=> d!1360076 (noDuplicateKeys!977 l!12755)))

(assert (=> d!1360076 (= (addToMapMapFromBucket!556 l!12755 acc!957) lt!1651225)))

(assert (=> b!4460118 (= e!2777302 acc!957)))

(declare-fun lt!1651226 () Unit!86613)

(assert (=> b!4460118 (= lt!1651226 call!310477)))

(assert (=> b!4460118 call!310476))

(declare-fun lt!1651221 () Unit!86613)

(assert (=> b!4460118 (= lt!1651221 lt!1651226)))

(assert (=> b!4460118 call!310475))

(declare-fun lt!1651218 () Unit!86613)

(declare-fun Unit!86629 () Unit!86613)

(assert (=> b!4460118 (= lt!1651218 Unit!86629)))

(declare-fun b!4460119 () Bool)

(assert (=> b!4460119 (= e!2777300 (invariantList!899 (toList!3949 lt!1651225)))))

(declare-fun b!4460120 () Bool)

(assert (=> b!4460120 (= e!2777301 (forall!9908 (toList!3949 acc!957) lambda!161466))))

(declare-fun bm!310472 () Bool)

(assert (=> bm!310472 (= call!310476 (forall!9908 (toList!3949 acc!957) (ite c!759087 lambda!161464 lambda!161465)))))

(assert (= (and d!1360076 c!759087) b!4460118))

(assert (= (and d!1360076 (not c!759087)) b!4460117))

(assert (= (and b!4460117 res!1849434) b!4460120))

(assert (= (or b!4460118 b!4460117) bm!310472))

(assert (= (or b!4460118 b!4460117) bm!310471))

(assert (= (or b!4460118 b!4460117) bm!310470))

(assert (= (and d!1360076 res!1849435) b!4460116))

(assert (= (and b!4460116 res!1849436) b!4460119))

(declare-fun m!5163003 () Bool)

(assert (=> bm!310471 m!5163003))

(declare-fun m!5163005 () Bool)

(assert (=> bm!310472 m!5163005))

(declare-fun m!5163007 () Bool)

(assert (=> bm!310470 m!5163007))

(declare-fun m!5163009 () Bool)

(assert (=> d!1360076 m!5163009))

(assert (=> d!1360076 m!5162897))

(declare-fun m!5163011 () Bool)

(assert (=> b!4460119 m!5163011))

(declare-fun m!5163013 () Bool)

(assert (=> b!4460116 m!5163013))

(declare-fun m!5163015 () Bool)

(assert (=> b!4460120 m!5163015))

(declare-fun m!5163017 () Bool)

(assert (=> b!4460117 m!5163017))

(assert (=> b!4460117 m!5162891))

(declare-fun m!5163019 () Bool)

(assert (=> b!4460117 m!5163019))

(declare-fun m!5163021 () Bool)

(assert (=> b!4460117 m!5163021))

(declare-fun m!5163023 () Bool)

(assert (=> b!4460117 m!5163023))

(declare-fun m!5163025 () Bool)

(assert (=> b!4460117 m!5163025))

(declare-fun m!5163027 () Bool)

(assert (=> b!4460117 m!5163027))

(assert (=> b!4460117 m!5163015))

(assert (=> b!4460117 m!5162891))

(assert (=> b!4460117 m!5163025))

(declare-fun m!5163029 () Bool)

(assert (=> b!4460117 m!5163029))

(declare-fun m!5163031 () Bool)

(assert (=> b!4460117 m!5163031))

(assert (=> b!4460117 m!5163015))

(assert (=> b!4459984 d!1360076))

(declare-fun b!4460127 () Bool)

(declare-fun e!2777305 () Bool)

(declare-fun tp!1335626 () Bool)

(assert (=> b!4460127 (= e!2777305 (and tp_is_empty!27129 tp_is_empty!27131 tp!1335626))))

(assert (=> b!4459982 (= tp!1335616 e!2777305)))

(assert (= (and b!4459982 (is-Cons!50150 (toList!3949 acc!957))) b!4460127))

(declare-fun tp!1335627 () Bool)

(declare-fun e!2777306 () Bool)

(declare-fun b!4460128 () Bool)

(assert (=> b!4460128 (= e!2777306 (and tp_is_empty!27129 tp_is_empty!27131 tp!1335627))))

(assert (=> b!4459980 (= tp!1335617 e!2777306)))

(assert (= (and b!4459980 (is-Cons!50150 (t!357224 l!12755))) b!4460128))

(push 1)

(assert (not b!4460089))

(assert (not b!4460120))

(assert (not bm!310471))

(assert (not b!4460013))

(assert (not b!4460025))

(assert (not d!1360060))

(assert (not b!4460037))

(assert tp_is_empty!27131)

(assert (not b!4460036))

(assert (not b!4460086))

(assert (not b!4460085))

(assert (not d!1360070))

(assert (not b!4460038))

(assert (not b!4460119))

(assert (not b!4460127))

(assert (not bm!310472))

(assert (not b!4460116))

(assert (not b!4460090))

(assert (not b!4460084))

(assert (not b!4460039))

(assert (not b!4460128))

(assert (not b!4460117))

(assert (not b!4460091))

(assert (not b!4460024))

(assert tp_is_empty!27129)

(assert (not d!1360068))

(assert (not bm!310470))

(assert (not bm!310462))

(assert (not d!1360076))

(assert (not b!4460088))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

