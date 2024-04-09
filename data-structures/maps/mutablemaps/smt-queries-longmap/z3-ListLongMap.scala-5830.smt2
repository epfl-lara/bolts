; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75232 () Bool)

(assert start!75232)

(declare-fun b!885868 () Bool)

(declare-fun res!601619 () Bool)

(declare-fun e!493109 () Bool)

(assert (=> b!885868 (=> (not res!601619) (not e!493109))))

(declare-datatypes ((B!1300 0))(
  ( (B!1301 (val!8956 Int)) )
))
(declare-datatypes ((tuple2!11932 0))(
  ( (tuple2!11933 (_1!5976 (_ BitVec 64)) (_2!5976 B!1300)) )
))
(declare-datatypes ((List!17756 0))(
  ( (Nil!17753) (Cons!17752 (h!18883 tuple2!11932) (t!25041 List!17756)) )
))
(declare-fun l!906 () List!17756)

(declare-fun key1!49 () (_ BitVec 64))

(get-info :version)

(assert (=> b!885868 (= res!601619 (and ((_ is Cons!17752) l!906) (bvslt (_1!5976 (h!18883 l!906)) key1!49)))))

(declare-fun b!885871 () Bool)

(declare-fun e!493108 () Bool)

(declare-fun tp_is_empty!17811 () Bool)

(declare-fun tp!54369 () Bool)

(assert (=> b!885871 (= e!493108 (and tp_is_empty!17811 tp!54369))))

(declare-fun res!601617 () Bool)

(assert (=> start!75232 (=> (not res!601617) (not e!493109))))

(declare-fun isStrictlySorted!486 (List!17756) Bool)

(assert (=> start!75232 (= res!601617 (isStrictlySorted!486 l!906))))

(assert (=> start!75232 e!493109))

(assert (=> start!75232 e!493108))

(assert (=> start!75232 true))

(assert (=> start!75232 tp_is_empty!17811))

(declare-fun v2!16 () B!1300)

(declare-fun v1!38 () B!1300)

(declare-fun b!885870 () Bool)

(declare-fun insertStrictlySorted!298 (List!17756 (_ BitVec 64) B!1300) List!17756)

(assert (=> b!885870 (= e!493109 (not (= (insertStrictlySorted!298 (insertStrictlySorted!298 l!906 key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!298 l!906 key1!49 v2!16))))))

(assert (=> b!885870 (= (insertStrictlySorted!298 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!298 (t!25041 l!906) key1!49 v2!16))))

(declare-datatypes ((Unit!30207 0))(
  ( (Unit!30208) )
))
(declare-fun lt!401016 () Unit!30207)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!14 (List!17756 (_ BitVec 64) B!1300 B!1300) Unit!30207)

(assert (=> b!885870 (= lt!401016 (lemmaInsertStrictlySortedErasesIfSameKey!14 (t!25041 l!906) key1!49 v1!38 v2!16))))

(declare-fun b!885869 () Bool)

(declare-fun res!601618 () Bool)

(assert (=> b!885869 (=> (not res!601618) (not e!493109))))

(assert (=> b!885869 (= res!601618 (isStrictlySorted!486 (t!25041 l!906)))))

(assert (= (and start!75232 res!601617) b!885868))

(assert (= (and b!885868 res!601619) b!885869))

(assert (= (and b!885869 res!601618) b!885870))

(assert (= (and start!75232 ((_ is Cons!17752) l!906)) b!885871))

(declare-fun m!825893 () Bool)

(assert (=> start!75232 m!825893))

(declare-fun m!825895 () Bool)

(assert (=> b!885870 m!825895))

(declare-fun m!825897 () Bool)

(assert (=> b!885870 m!825897))

(declare-fun m!825899 () Bool)

(assert (=> b!885870 m!825899))

(declare-fun m!825901 () Bool)

(assert (=> b!885870 m!825901))

(declare-fun m!825903 () Bool)

(assert (=> b!885870 m!825903))

(assert (=> b!885870 m!825901))

(declare-fun m!825905 () Bool)

(assert (=> b!885870 m!825905))

(assert (=> b!885870 m!825895))

(declare-fun m!825907 () Bool)

(assert (=> b!885870 m!825907))

(declare-fun m!825909 () Bool)

(assert (=> b!885869 m!825909))

(check-sat (not b!885870) (not b!885869) (not start!75232) tp_is_empty!17811 (not b!885871))
(check-sat)
(get-model)

(declare-fun d!109419 () Bool)

(declare-fun res!601633 () Bool)

(declare-fun e!493120 () Bool)

(assert (=> d!109419 (=> res!601633 e!493120)))

(assert (=> d!109419 (= res!601633 (or ((_ is Nil!17753) l!906) ((_ is Nil!17753) (t!25041 l!906))))))

(assert (=> d!109419 (= (isStrictlySorted!486 l!906) e!493120)))

(declare-fun b!885888 () Bool)

(declare-fun e!493121 () Bool)

(assert (=> b!885888 (= e!493120 e!493121)))

(declare-fun res!601634 () Bool)

(assert (=> b!885888 (=> (not res!601634) (not e!493121))))

(assert (=> b!885888 (= res!601634 (bvslt (_1!5976 (h!18883 l!906)) (_1!5976 (h!18883 (t!25041 l!906)))))))

(declare-fun b!885889 () Bool)

(assert (=> b!885889 (= e!493121 (isStrictlySorted!486 (t!25041 l!906)))))

(assert (= (and d!109419 (not res!601633)) b!885888))

(assert (= (and b!885888 res!601634) b!885889))

(assert (=> b!885889 m!825909))

(assert (=> start!75232 d!109419))

(declare-fun d!109423 () Bool)

(declare-fun res!601635 () Bool)

(declare-fun e!493122 () Bool)

(assert (=> d!109423 (=> res!601635 e!493122)))

(assert (=> d!109423 (= res!601635 (or ((_ is Nil!17753) (t!25041 l!906)) ((_ is Nil!17753) (t!25041 (t!25041 l!906)))))))

(assert (=> d!109423 (= (isStrictlySorted!486 (t!25041 l!906)) e!493122)))

(declare-fun b!885890 () Bool)

(declare-fun e!493123 () Bool)

(assert (=> b!885890 (= e!493122 e!493123)))

(declare-fun res!601636 () Bool)

(assert (=> b!885890 (=> (not res!601636) (not e!493123))))

(assert (=> b!885890 (= res!601636 (bvslt (_1!5976 (h!18883 (t!25041 l!906))) (_1!5976 (h!18883 (t!25041 (t!25041 l!906))))))))

(declare-fun b!885891 () Bool)

(assert (=> b!885891 (= e!493123 (isStrictlySorted!486 (t!25041 (t!25041 l!906))))))

(assert (= (and d!109423 (not res!601635)) b!885890))

(assert (= (and b!885890 res!601636) b!885891))

(declare-fun m!825929 () Bool)

(assert (=> b!885891 m!825929))

(assert (=> b!885869 d!109423))

(declare-fun d!109425 () Bool)

(assert (=> d!109425 (= (insertStrictlySorted!298 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!298 (t!25041 l!906) key1!49 v2!16))))

(declare-fun lt!401024 () Unit!30207)

(declare-fun choose!1459 (List!17756 (_ BitVec 64) B!1300 B!1300) Unit!30207)

(assert (=> d!109425 (= lt!401024 (choose!1459 (t!25041 l!906) key1!49 v1!38 v2!16))))

(assert (=> d!109425 (isStrictlySorted!486 (t!25041 l!906))))

(assert (=> d!109425 (= (lemmaInsertStrictlySortedErasesIfSameKey!14 (t!25041 l!906) key1!49 v1!38 v2!16) lt!401024)))

(declare-fun bs!24842 () Bool)

(assert (= bs!24842 d!109425))

(declare-fun m!825933 () Bool)

(assert (=> bs!24842 m!825933))

(assert (=> bs!24842 m!825895))

(assert (=> bs!24842 m!825897))

(assert (=> bs!24842 m!825909))

(assert (=> bs!24842 m!825905))

(assert (=> bs!24842 m!825895))

(assert (=> b!885870 d!109425))

(declare-fun e!493192 () List!17756)

(declare-fun c!93334 () Bool)

(declare-fun b!886012 () Bool)

(declare-fun c!93335 () Bool)

(assert (=> b!886012 (= e!493192 (ite c!93335 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)) (ite c!93334 (Cons!17752 (h!18883 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)) (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))) Nil!17753)))))

(declare-fun b!886013 () Bool)

(assert (=> b!886013 (= c!93334 (and ((_ is Cons!17752) (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)) (bvsgt (_1!5976 (h!18883 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))) key1!49)))))

(declare-fun e!493191 () List!17756)

(declare-fun e!493193 () List!17756)

(assert (=> b!886013 (= e!493191 e!493193)))

(declare-fun c!93333 () Bool)

(declare-fun bm!39176 () Bool)

(declare-fun call!39179 () List!17756)

(declare-fun $colon$colon!548 (List!17756 tuple2!11932) List!17756)

(assert (=> bm!39176 (= call!39179 ($colon$colon!548 e!493192 (ite c!93333 (h!18883 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)) (tuple2!11933 key1!49 v2!16))))))

(declare-fun c!93336 () Bool)

(assert (=> bm!39176 (= c!93336 c!93333)))

(declare-fun b!886014 () Bool)

(declare-fun call!39180 () List!17756)

(assert (=> b!886014 (= e!493193 call!39180)))

(declare-fun b!886015 () Bool)

(declare-fun e!493194 () List!17756)

(assert (=> b!886015 (= e!493194 e!493191)))

(assert (=> b!886015 (= c!93335 (and ((_ is Cons!17752) (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)) (= (_1!5976 (h!18883 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))) key1!49)))))

(declare-fun b!886016 () Bool)

(assert (=> b!886016 (= e!493193 call!39180)))

(declare-fun b!886017 () Bool)

(assert (=> b!886017 (= e!493192 (insertStrictlySorted!298 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)) key1!49 v2!16))))

(declare-fun b!886018 () Bool)

(assert (=> b!886018 (= e!493194 call!39179)))

(declare-fun d!109431 () Bool)

(declare-fun e!493195 () Bool)

(assert (=> d!109431 e!493195))

(declare-fun res!601671 () Bool)

(assert (=> d!109431 (=> (not res!601671) (not e!493195))))

(declare-fun lt!401039 () List!17756)

(assert (=> d!109431 (= res!601671 (isStrictlySorted!486 lt!401039))))

(assert (=> d!109431 (= lt!401039 e!493194)))

(assert (=> d!109431 (= c!93333 (and ((_ is Cons!17752) (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)) (bvslt (_1!5976 (h!18883 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))) key1!49)))))

(assert (=> d!109431 (isStrictlySorted!486 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))))

(assert (=> d!109431 (= (insertStrictlySorted!298 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38) key1!49 v2!16) lt!401039)))

(declare-fun b!886011 () Bool)

(declare-fun call!39181 () List!17756)

(assert (=> b!886011 (= e!493191 call!39181)))

(declare-fun b!886019 () Bool)

(declare-fun res!601672 () Bool)

(assert (=> b!886019 (=> (not res!601672) (not e!493195))))

(declare-fun containsKey!413 (List!17756 (_ BitVec 64)) Bool)

(assert (=> b!886019 (= res!601672 (containsKey!413 lt!401039 key1!49))))

(declare-fun b!886020 () Bool)

(declare-fun contains!4292 (List!17756 tuple2!11932) Bool)

(assert (=> b!886020 (= e!493195 (contains!4292 lt!401039 (tuple2!11933 key1!49 v2!16)))))

(declare-fun bm!39177 () Bool)

(assert (=> bm!39177 (= call!39180 call!39181)))

(declare-fun bm!39178 () Bool)

(assert (=> bm!39178 (= call!39181 call!39179)))

(assert (= (and d!109431 c!93333) b!886018))

(assert (= (and d!109431 (not c!93333)) b!886015))

(assert (= (and b!886015 c!93335) b!886011))

(assert (= (and b!886015 (not c!93335)) b!886013))

(assert (= (and b!886013 c!93334) b!886016))

(assert (= (and b!886013 (not c!93334)) b!886014))

(assert (= (or b!886016 b!886014) bm!39177))

(assert (= (or b!886011 bm!39177) bm!39178))

(assert (= (or b!886018 bm!39178) bm!39176))

(assert (= (and bm!39176 c!93336) b!886017))

(assert (= (and bm!39176 (not c!93336)) b!886012))

(assert (= (and d!109431 res!601671) b!886019))

(assert (= (and b!886019 res!601672) b!886020))

(declare-fun m!826001 () Bool)

(assert (=> b!886017 m!826001))

(declare-fun m!826003 () Bool)

(assert (=> bm!39176 m!826003))

(declare-fun m!826005 () Bool)

(assert (=> b!886019 m!826005))

(declare-fun m!826007 () Bool)

(assert (=> d!109431 m!826007))

(assert (=> d!109431 m!825895))

(declare-fun m!826009 () Bool)

(assert (=> d!109431 m!826009))

(declare-fun m!826011 () Bool)

(assert (=> b!886020 m!826011))

(assert (=> b!885870 d!109431))

(declare-fun c!93344 () Bool)

(declare-fun b!886034 () Bool)

(declare-fun e!493203 () List!17756)

(declare-fun c!93345 () Bool)

(assert (=> b!886034 (= e!493203 (ite c!93345 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38)) (ite c!93344 (Cons!17752 (h!18883 (insertStrictlySorted!298 l!906 key1!49 v1!38)) (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38))) Nil!17753)))))

(declare-fun b!886035 () Bool)

(assert (=> b!886035 (= c!93344 (and ((_ is Cons!17752) (insertStrictlySorted!298 l!906 key1!49 v1!38)) (bvsgt (_1!5976 (h!18883 (insertStrictlySorted!298 l!906 key1!49 v1!38))) key1!49)))))

(declare-fun e!493202 () List!17756)

(declare-fun e!493204 () List!17756)

(assert (=> b!886035 (= e!493202 e!493204)))

(declare-fun bm!39181 () Bool)

(declare-fun call!39184 () List!17756)

(declare-fun c!93343 () Bool)

(assert (=> bm!39181 (= call!39184 ($colon$colon!548 e!493203 (ite c!93343 (h!18883 (insertStrictlySorted!298 l!906 key1!49 v1!38)) (tuple2!11933 key1!49 v2!16))))))

(declare-fun c!93346 () Bool)

(assert (=> bm!39181 (= c!93346 c!93343)))

(declare-fun b!886036 () Bool)

(declare-fun call!39185 () List!17756)

(assert (=> b!886036 (= e!493204 call!39185)))

(declare-fun b!886037 () Bool)

(declare-fun e!493205 () List!17756)

(assert (=> b!886037 (= e!493205 e!493202)))

(assert (=> b!886037 (= c!93345 (and ((_ is Cons!17752) (insertStrictlySorted!298 l!906 key1!49 v1!38)) (= (_1!5976 (h!18883 (insertStrictlySorted!298 l!906 key1!49 v1!38))) key1!49)))))

(declare-fun b!886038 () Bool)

(assert (=> b!886038 (= e!493204 call!39185)))

(declare-fun b!886039 () Bool)

(assert (=> b!886039 (= e!493203 (insertStrictlySorted!298 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38)) key1!49 v2!16))))

(declare-fun b!886040 () Bool)

(assert (=> b!886040 (= e!493205 call!39184)))

(declare-fun d!109451 () Bool)

(declare-fun e!493206 () Bool)

(assert (=> d!109451 e!493206))

(declare-fun res!601673 () Bool)

(assert (=> d!109451 (=> (not res!601673) (not e!493206))))

(declare-fun lt!401042 () List!17756)

(assert (=> d!109451 (= res!601673 (isStrictlySorted!486 lt!401042))))

(assert (=> d!109451 (= lt!401042 e!493205)))

(assert (=> d!109451 (= c!93343 (and ((_ is Cons!17752) (insertStrictlySorted!298 l!906 key1!49 v1!38)) (bvslt (_1!5976 (h!18883 (insertStrictlySorted!298 l!906 key1!49 v1!38))) key1!49)))))

(assert (=> d!109451 (isStrictlySorted!486 (insertStrictlySorted!298 l!906 key1!49 v1!38))))

(assert (=> d!109451 (= (insertStrictlySorted!298 (insertStrictlySorted!298 l!906 key1!49 v1!38) key1!49 v2!16) lt!401042)))

(declare-fun b!886033 () Bool)

(declare-fun call!39186 () List!17756)

(assert (=> b!886033 (= e!493202 call!39186)))

(declare-fun b!886041 () Bool)

(declare-fun res!601674 () Bool)

(assert (=> b!886041 (=> (not res!601674) (not e!493206))))

(assert (=> b!886041 (= res!601674 (containsKey!413 lt!401042 key1!49))))

(declare-fun b!886042 () Bool)

(assert (=> b!886042 (= e!493206 (contains!4292 lt!401042 (tuple2!11933 key1!49 v2!16)))))

(declare-fun bm!39182 () Bool)

(assert (=> bm!39182 (= call!39185 call!39186)))

(declare-fun bm!39183 () Bool)

(assert (=> bm!39183 (= call!39186 call!39184)))

(assert (= (and d!109451 c!93343) b!886040))

(assert (= (and d!109451 (not c!93343)) b!886037))

(assert (= (and b!886037 c!93345) b!886033))

(assert (= (and b!886037 (not c!93345)) b!886035))

(assert (= (and b!886035 c!93344) b!886038))

(assert (= (and b!886035 (not c!93344)) b!886036))

(assert (= (or b!886038 b!886036) bm!39182))

(assert (= (or b!886033 bm!39182) bm!39183))

(assert (= (or b!886040 bm!39183) bm!39181))

(assert (= (and bm!39181 c!93346) b!886039))

(assert (= (and bm!39181 (not c!93346)) b!886034))

(assert (= (and d!109451 res!601673) b!886041))

(assert (= (and b!886041 res!601674) b!886042))

(declare-fun m!826013 () Bool)

(assert (=> b!886039 m!826013))

(declare-fun m!826015 () Bool)

(assert (=> bm!39181 m!826015))

(declare-fun m!826017 () Bool)

(assert (=> b!886041 m!826017))

(declare-fun m!826019 () Bool)

(assert (=> d!109451 m!826019))

(assert (=> d!109451 m!825901))

(declare-fun m!826021 () Bool)

(assert (=> d!109451 m!826021))

(declare-fun m!826023 () Bool)

(assert (=> b!886042 m!826023))

(assert (=> b!885870 d!109451))

(declare-fun b!886048 () Bool)

(declare-fun e!493210 () List!17756)

(declare-fun c!93350 () Bool)

(declare-fun c!93351 () Bool)

(assert (=> b!886048 (= e!493210 (ite c!93351 (t!25041 (t!25041 l!906)) (ite c!93350 (Cons!17752 (h!18883 (t!25041 l!906)) (t!25041 (t!25041 l!906))) Nil!17753)))))

(declare-fun b!886049 () Bool)

(assert (=> b!886049 (= c!93350 (and ((_ is Cons!17752) (t!25041 l!906)) (bvsgt (_1!5976 (h!18883 (t!25041 l!906))) key1!49)))))

(declare-fun e!493209 () List!17756)

(declare-fun e!493211 () List!17756)

(assert (=> b!886049 (= e!493209 e!493211)))

(declare-fun c!93349 () Bool)

(declare-fun bm!39188 () Bool)

(declare-fun call!39191 () List!17756)

(assert (=> bm!39188 (= call!39191 ($colon$colon!548 e!493210 (ite c!93349 (h!18883 (t!25041 l!906)) (tuple2!11933 key1!49 v2!16))))))

(declare-fun c!93352 () Bool)

(assert (=> bm!39188 (= c!93352 c!93349)))

(declare-fun b!886050 () Bool)

(declare-fun call!39192 () List!17756)

(assert (=> b!886050 (= e!493211 call!39192)))

(declare-fun b!886051 () Bool)

(declare-fun e!493212 () List!17756)

(assert (=> b!886051 (= e!493212 e!493209)))

(assert (=> b!886051 (= c!93351 (and ((_ is Cons!17752) (t!25041 l!906)) (= (_1!5976 (h!18883 (t!25041 l!906))) key1!49)))))

(declare-fun b!886052 () Bool)

(assert (=> b!886052 (= e!493211 call!39192)))

(declare-fun b!886053 () Bool)

(assert (=> b!886053 (= e!493210 (insertStrictlySorted!298 (t!25041 (t!25041 l!906)) key1!49 v2!16))))

(declare-fun b!886054 () Bool)

(assert (=> b!886054 (= e!493212 call!39191)))

(declare-fun d!109453 () Bool)

(declare-fun e!493213 () Bool)

(assert (=> d!109453 e!493213))

(declare-fun res!601675 () Bool)

(assert (=> d!109453 (=> (not res!601675) (not e!493213))))

(declare-fun lt!401043 () List!17756)

(assert (=> d!109453 (= res!601675 (isStrictlySorted!486 lt!401043))))

(assert (=> d!109453 (= lt!401043 e!493212)))

(assert (=> d!109453 (= c!93349 (and ((_ is Cons!17752) (t!25041 l!906)) (bvslt (_1!5976 (h!18883 (t!25041 l!906))) key1!49)))))

(assert (=> d!109453 (isStrictlySorted!486 (t!25041 l!906))))

(assert (=> d!109453 (= (insertStrictlySorted!298 (t!25041 l!906) key1!49 v2!16) lt!401043)))

(declare-fun b!886047 () Bool)

(declare-fun call!39193 () List!17756)

(assert (=> b!886047 (= e!493209 call!39193)))

(declare-fun b!886055 () Bool)

(declare-fun res!601676 () Bool)

(assert (=> b!886055 (=> (not res!601676) (not e!493213))))

(assert (=> b!886055 (= res!601676 (containsKey!413 lt!401043 key1!49))))

(declare-fun b!886056 () Bool)

(assert (=> b!886056 (= e!493213 (contains!4292 lt!401043 (tuple2!11933 key1!49 v2!16)))))

(declare-fun bm!39189 () Bool)

(assert (=> bm!39189 (= call!39192 call!39193)))

(declare-fun bm!39190 () Bool)

(assert (=> bm!39190 (= call!39193 call!39191)))

(assert (= (and d!109453 c!93349) b!886054))

(assert (= (and d!109453 (not c!93349)) b!886051))

(assert (= (and b!886051 c!93351) b!886047))

(assert (= (and b!886051 (not c!93351)) b!886049))

(assert (= (and b!886049 c!93350) b!886052))

(assert (= (and b!886049 (not c!93350)) b!886050))

(assert (= (or b!886052 b!886050) bm!39189))

(assert (= (or b!886047 bm!39189) bm!39190))

(assert (= (or b!886054 bm!39190) bm!39188))

(assert (= (and bm!39188 c!93352) b!886053))

(assert (= (and bm!39188 (not c!93352)) b!886048))

(assert (= (and d!109453 res!601675) b!886055))

(assert (= (and b!886055 res!601676) b!886056))

(declare-fun m!826025 () Bool)

(assert (=> b!886053 m!826025))

(declare-fun m!826027 () Bool)

(assert (=> bm!39188 m!826027))

(declare-fun m!826029 () Bool)

(assert (=> b!886055 m!826029))

(declare-fun m!826031 () Bool)

(assert (=> d!109453 m!826031))

(assert (=> d!109453 m!825909))

(declare-fun m!826033 () Bool)

(assert (=> b!886056 m!826033))

(assert (=> b!885870 d!109453))

(declare-fun c!93354 () Bool)

(declare-fun e!493217 () List!17756)

(declare-fun c!93355 () Bool)

(declare-fun b!886062 () Bool)

(assert (=> b!886062 (= e!493217 (ite c!93355 (t!25041 (t!25041 l!906)) (ite c!93354 (Cons!17752 (h!18883 (t!25041 l!906)) (t!25041 (t!25041 l!906))) Nil!17753)))))

(declare-fun b!886063 () Bool)

(assert (=> b!886063 (= c!93354 (and ((_ is Cons!17752) (t!25041 l!906)) (bvsgt (_1!5976 (h!18883 (t!25041 l!906))) key1!49)))))

(declare-fun e!493216 () List!17756)

(declare-fun e!493218 () List!17756)

(assert (=> b!886063 (= e!493216 e!493218)))

(declare-fun bm!39191 () Bool)

(declare-fun c!93353 () Bool)

(declare-fun call!39194 () List!17756)

(assert (=> bm!39191 (= call!39194 ($colon$colon!548 e!493217 (ite c!93353 (h!18883 (t!25041 l!906)) (tuple2!11933 key1!49 v1!38))))))

(declare-fun c!93356 () Bool)

(assert (=> bm!39191 (= c!93356 c!93353)))

(declare-fun b!886064 () Bool)

(declare-fun call!39195 () List!17756)

(assert (=> b!886064 (= e!493218 call!39195)))

(declare-fun b!886065 () Bool)

(declare-fun e!493219 () List!17756)

(assert (=> b!886065 (= e!493219 e!493216)))

(assert (=> b!886065 (= c!93355 (and ((_ is Cons!17752) (t!25041 l!906)) (= (_1!5976 (h!18883 (t!25041 l!906))) key1!49)))))

(declare-fun b!886066 () Bool)

(assert (=> b!886066 (= e!493218 call!39195)))

(declare-fun b!886067 () Bool)

(assert (=> b!886067 (= e!493217 (insertStrictlySorted!298 (t!25041 (t!25041 l!906)) key1!49 v1!38))))

(declare-fun b!886068 () Bool)

(assert (=> b!886068 (= e!493219 call!39194)))

(declare-fun d!109455 () Bool)

(declare-fun e!493220 () Bool)

(assert (=> d!109455 e!493220))

(declare-fun res!601681 () Bool)

(assert (=> d!109455 (=> (not res!601681) (not e!493220))))

(declare-fun lt!401044 () List!17756)

(assert (=> d!109455 (= res!601681 (isStrictlySorted!486 lt!401044))))

(assert (=> d!109455 (= lt!401044 e!493219)))

(assert (=> d!109455 (= c!93353 (and ((_ is Cons!17752) (t!25041 l!906)) (bvslt (_1!5976 (h!18883 (t!25041 l!906))) key1!49)))))

(assert (=> d!109455 (isStrictlySorted!486 (t!25041 l!906))))

(assert (=> d!109455 (= (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38) lt!401044)))

(declare-fun b!886061 () Bool)

(declare-fun call!39196 () List!17756)

(assert (=> b!886061 (= e!493216 call!39196)))

(declare-fun b!886069 () Bool)

(declare-fun res!601682 () Bool)

(assert (=> b!886069 (=> (not res!601682) (not e!493220))))

(assert (=> b!886069 (= res!601682 (containsKey!413 lt!401044 key1!49))))

(declare-fun b!886070 () Bool)

(assert (=> b!886070 (= e!493220 (contains!4292 lt!401044 (tuple2!11933 key1!49 v1!38)))))

(declare-fun bm!39192 () Bool)

(assert (=> bm!39192 (= call!39195 call!39196)))

(declare-fun bm!39193 () Bool)

(assert (=> bm!39193 (= call!39196 call!39194)))

(assert (= (and d!109455 c!93353) b!886068))

(assert (= (and d!109455 (not c!93353)) b!886065))

(assert (= (and b!886065 c!93355) b!886061))

(assert (= (and b!886065 (not c!93355)) b!886063))

(assert (= (and b!886063 c!93354) b!886066))

(assert (= (and b!886063 (not c!93354)) b!886064))

(assert (= (or b!886066 b!886064) bm!39192))

(assert (= (or b!886061 bm!39192) bm!39193))

(assert (= (or b!886068 bm!39193) bm!39191))

(assert (= (and bm!39191 c!93356) b!886067))

(assert (= (and bm!39191 (not c!93356)) b!886062))

(assert (= (and d!109455 res!601681) b!886069))

(assert (= (and b!886069 res!601682) b!886070))

(declare-fun m!826035 () Bool)

(assert (=> b!886067 m!826035))

(declare-fun m!826037 () Bool)

(assert (=> bm!39191 m!826037))

(declare-fun m!826039 () Bool)

(assert (=> b!886069 m!826039))

(declare-fun m!826041 () Bool)

(assert (=> d!109455 m!826041))

(assert (=> d!109455 m!825909))

(declare-fun m!826043 () Bool)

(assert (=> b!886070 m!826043))

(assert (=> b!885870 d!109455))

(declare-fun c!93358 () Bool)

(declare-fun e!493222 () List!17756)

(declare-fun c!93359 () Bool)

(declare-fun b!886072 () Bool)

(assert (=> b!886072 (= e!493222 (ite c!93359 (t!25041 l!906) (ite c!93358 (Cons!17752 (h!18883 l!906) (t!25041 l!906)) Nil!17753)))))

(declare-fun b!886073 () Bool)

(assert (=> b!886073 (= c!93358 (and ((_ is Cons!17752) l!906) (bvsgt (_1!5976 (h!18883 l!906)) key1!49)))))

(declare-fun e!493221 () List!17756)

(declare-fun e!493223 () List!17756)

(assert (=> b!886073 (= e!493221 e!493223)))

(declare-fun bm!39194 () Bool)

(declare-fun call!39197 () List!17756)

(declare-fun c!93357 () Bool)

(assert (=> bm!39194 (= call!39197 ($colon$colon!548 e!493222 (ite c!93357 (h!18883 l!906) (tuple2!11933 key1!49 v2!16))))))

(declare-fun c!93360 () Bool)

(assert (=> bm!39194 (= c!93360 c!93357)))

(declare-fun b!886074 () Bool)

(declare-fun call!39198 () List!17756)

(assert (=> b!886074 (= e!493223 call!39198)))

(declare-fun b!886075 () Bool)

(declare-fun e!493224 () List!17756)

(assert (=> b!886075 (= e!493224 e!493221)))

(assert (=> b!886075 (= c!93359 (and ((_ is Cons!17752) l!906) (= (_1!5976 (h!18883 l!906)) key1!49)))))

(declare-fun b!886076 () Bool)

(assert (=> b!886076 (= e!493223 call!39198)))

(declare-fun b!886077 () Bool)

(assert (=> b!886077 (= e!493222 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v2!16))))

(declare-fun b!886078 () Bool)

(assert (=> b!886078 (= e!493224 call!39197)))

(declare-fun d!109457 () Bool)

(declare-fun e!493225 () Bool)

(assert (=> d!109457 e!493225))

(declare-fun res!601683 () Bool)

(assert (=> d!109457 (=> (not res!601683) (not e!493225))))

(declare-fun lt!401045 () List!17756)

(assert (=> d!109457 (= res!601683 (isStrictlySorted!486 lt!401045))))

(assert (=> d!109457 (= lt!401045 e!493224)))

(assert (=> d!109457 (= c!93357 (and ((_ is Cons!17752) l!906) (bvslt (_1!5976 (h!18883 l!906)) key1!49)))))

(assert (=> d!109457 (isStrictlySorted!486 l!906)))

(assert (=> d!109457 (= (insertStrictlySorted!298 l!906 key1!49 v2!16) lt!401045)))

(declare-fun b!886071 () Bool)

(declare-fun call!39199 () List!17756)

(assert (=> b!886071 (= e!493221 call!39199)))

(declare-fun b!886079 () Bool)

(declare-fun res!601684 () Bool)

(assert (=> b!886079 (=> (not res!601684) (not e!493225))))

(assert (=> b!886079 (= res!601684 (containsKey!413 lt!401045 key1!49))))

(declare-fun b!886080 () Bool)

(assert (=> b!886080 (= e!493225 (contains!4292 lt!401045 (tuple2!11933 key1!49 v2!16)))))

(declare-fun bm!39195 () Bool)

(assert (=> bm!39195 (= call!39198 call!39199)))

(declare-fun bm!39196 () Bool)

(assert (=> bm!39196 (= call!39199 call!39197)))

(assert (= (and d!109457 c!93357) b!886078))

(assert (= (and d!109457 (not c!93357)) b!886075))

(assert (= (and b!886075 c!93359) b!886071))

(assert (= (and b!886075 (not c!93359)) b!886073))

(assert (= (and b!886073 c!93358) b!886076))

(assert (= (and b!886073 (not c!93358)) b!886074))

(assert (= (or b!886076 b!886074) bm!39195))

(assert (= (or b!886071 bm!39195) bm!39196))

(assert (= (or b!886078 bm!39196) bm!39194))

(assert (= (and bm!39194 c!93360) b!886077))

(assert (= (and bm!39194 (not c!93360)) b!886072))

(assert (= (and d!109457 res!601683) b!886079))

(assert (= (and b!886079 res!601684) b!886080))

(assert (=> b!886077 m!825905))

(declare-fun m!826045 () Bool)

(assert (=> bm!39194 m!826045))

(declare-fun m!826047 () Bool)

(assert (=> b!886079 m!826047))

(declare-fun m!826049 () Bool)

(assert (=> d!109457 m!826049))

(assert (=> d!109457 m!825893))

(declare-fun m!826051 () Bool)

(assert (=> b!886080 m!826051))

(assert (=> b!885870 d!109457))

(declare-fun b!886082 () Bool)

(declare-fun c!93362 () Bool)

(declare-fun c!93363 () Bool)

(declare-fun e!493227 () List!17756)

(assert (=> b!886082 (= e!493227 (ite c!93363 (t!25041 l!906) (ite c!93362 (Cons!17752 (h!18883 l!906) (t!25041 l!906)) Nil!17753)))))

(declare-fun b!886083 () Bool)

(assert (=> b!886083 (= c!93362 (and ((_ is Cons!17752) l!906) (bvsgt (_1!5976 (h!18883 l!906)) key1!49)))))

(declare-fun e!493226 () List!17756)

(declare-fun e!493228 () List!17756)

(assert (=> b!886083 (= e!493226 e!493228)))

(declare-fun c!93361 () Bool)

(declare-fun bm!39197 () Bool)

(declare-fun call!39200 () List!17756)

(assert (=> bm!39197 (= call!39200 ($colon$colon!548 e!493227 (ite c!93361 (h!18883 l!906) (tuple2!11933 key1!49 v1!38))))))

(declare-fun c!93364 () Bool)

(assert (=> bm!39197 (= c!93364 c!93361)))

(declare-fun b!886084 () Bool)

(declare-fun call!39201 () List!17756)

(assert (=> b!886084 (= e!493228 call!39201)))

(declare-fun b!886085 () Bool)

(declare-fun e!493229 () List!17756)

(assert (=> b!886085 (= e!493229 e!493226)))

(assert (=> b!886085 (= c!93363 (and ((_ is Cons!17752) l!906) (= (_1!5976 (h!18883 l!906)) key1!49)))))

(declare-fun b!886086 () Bool)

(assert (=> b!886086 (= e!493228 call!39201)))

(declare-fun b!886087 () Bool)

(assert (=> b!886087 (= e!493227 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))))

(declare-fun b!886088 () Bool)

(assert (=> b!886088 (= e!493229 call!39200)))

(declare-fun d!109459 () Bool)

(declare-fun e!493230 () Bool)

(assert (=> d!109459 e!493230))

(declare-fun res!601685 () Bool)

(assert (=> d!109459 (=> (not res!601685) (not e!493230))))

(declare-fun lt!401046 () List!17756)

(assert (=> d!109459 (= res!601685 (isStrictlySorted!486 lt!401046))))

(assert (=> d!109459 (= lt!401046 e!493229)))

(assert (=> d!109459 (= c!93361 (and ((_ is Cons!17752) l!906) (bvslt (_1!5976 (h!18883 l!906)) key1!49)))))

(assert (=> d!109459 (isStrictlySorted!486 l!906)))

(assert (=> d!109459 (= (insertStrictlySorted!298 l!906 key1!49 v1!38) lt!401046)))

(declare-fun b!886081 () Bool)

(declare-fun call!39202 () List!17756)

(assert (=> b!886081 (= e!493226 call!39202)))

(declare-fun b!886089 () Bool)

(declare-fun res!601686 () Bool)

(assert (=> b!886089 (=> (not res!601686) (not e!493230))))

(assert (=> b!886089 (= res!601686 (containsKey!413 lt!401046 key1!49))))

(declare-fun b!886090 () Bool)

(assert (=> b!886090 (= e!493230 (contains!4292 lt!401046 (tuple2!11933 key1!49 v1!38)))))

(declare-fun bm!39198 () Bool)

(assert (=> bm!39198 (= call!39201 call!39202)))

(declare-fun bm!39199 () Bool)

(assert (=> bm!39199 (= call!39202 call!39200)))

(assert (= (and d!109459 c!93361) b!886088))

(assert (= (and d!109459 (not c!93361)) b!886085))

(assert (= (and b!886085 c!93363) b!886081))

(assert (= (and b!886085 (not c!93363)) b!886083))

(assert (= (and b!886083 c!93362) b!886086))

(assert (= (and b!886083 (not c!93362)) b!886084))

(assert (= (or b!886086 b!886084) bm!39198))

(assert (= (or b!886081 bm!39198) bm!39199))

(assert (= (or b!886088 bm!39199) bm!39197))

(assert (= (and bm!39197 c!93364) b!886087))

(assert (= (and bm!39197 (not c!93364)) b!886082))

(assert (= (and d!109459 res!601685) b!886089))

(assert (= (and b!886089 res!601686) b!886090))

(assert (=> b!886087 m!825895))

(declare-fun m!826053 () Bool)

(assert (=> bm!39197 m!826053))

(declare-fun m!826055 () Bool)

(assert (=> b!886089 m!826055))

(declare-fun m!826057 () Bool)

(assert (=> d!109459 m!826057))

(assert (=> d!109459 m!825893))

(declare-fun m!826059 () Bool)

(assert (=> b!886090 m!826059))

(assert (=> b!885870 d!109459))

(declare-fun b!886105 () Bool)

(declare-fun e!493238 () Bool)

(declare-fun tp!54378 () Bool)

(assert (=> b!886105 (= e!493238 (and tp_is_empty!17811 tp!54378))))

(assert (=> b!885871 (= tp!54369 e!493238)))

(assert (= (and b!885871 ((_ is Cons!17752) (t!25041 l!906))) b!886105))

(check-sat (not b!886019) (not b!886039) (not bm!39194) (not d!109451) (not b!886105) (not d!109455) (not b!886017) (not b!886056) (not b!886041) tp_is_empty!17811 (not d!109425) (not b!886067) (not b!886079) (not bm!39197) (not b!886080) (not b!886090) (not d!109453) (not bm!39188) (not b!886055) (not b!886042) (not b!886070) (not b!886053) (not b!885889) (not b!886087) (not bm!39176) (not b!886089) (not bm!39191) (not b!886077) (not b!885891) (not d!109431) (not b!886069) (not d!109457) (not bm!39181) (not d!109459) (not b!886020))
(check-sat)
(get-model)

(declare-fun d!109473 () Bool)

(declare-fun res!601701 () Bool)

(declare-fun e!493269 () Bool)

(assert (=> d!109473 (=> res!601701 e!493269)))

(assert (=> d!109473 (= res!601701 (or ((_ is Nil!17753) lt!401046) ((_ is Nil!17753) (t!25041 lt!401046))))))

(assert (=> d!109473 (= (isStrictlySorted!486 lt!401046) e!493269)))

(declare-fun b!886163 () Bool)

(declare-fun e!493270 () Bool)

(assert (=> b!886163 (= e!493269 e!493270)))

(declare-fun res!601702 () Bool)

(assert (=> b!886163 (=> (not res!601702) (not e!493270))))

(assert (=> b!886163 (= res!601702 (bvslt (_1!5976 (h!18883 lt!401046)) (_1!5976 (h!18883 (t!25041 lt!401046)))))))

(declare-fun b!886164 () Bool)

(assert (=> b!886164 (= e!493270 (isStrictlySorted!486 (t!25041 lt!401046)))))

(assert (= (and d!109473 (not res!601701)) b!886163))

(assert (= (and b!886163 res!601702) b!886164))

(declare-fun m!826121 () Bool)

(assert (=> b!886164 m!826121))

(assert (=> d!109459 d!109473))

(assert (=> d!109459 d!109419))

(declare-fun c!93391 () Bool)

(declare-fun c!93390 () Bool)

(declare-fun b!886166 () Bool)

(declare-fun e!493272 () List!17756)

(assert (=> b!886166 (= e!493272 (ite c!93391 (t!25041 (t!25041 (t!25041 l!906))) (ite c!93390 (Cons!17752 (h!18883 (t!25041 (t!25041 l!906))) (t!25041 (t!25041 (t!25041 l!906)))) Nil!17753)))))

(declare-fun b!886167 () Bool)

(assert (=> b!886167 (= c!93390 (and ((_ is Cons!17752) (t!25041 (t!25041 l!906))) (bvsgt (_1!5976 (h!18883 (t!25041 (t!25041 l!906)))) key1!49)))))

(declare-fun e!493271 () List!17756)

(declare-fun e!493273 () List!17756)

(assert (=> b!886167 (= e!493271 e!493273)))

(declare-fun call!39221 () List!17756)

(declare-fun bm!39218 () Bool)

(declare-fun c!93389 () Bool)

(assert (=> bm!39218 (= call!39221 ($colon$colon!548 e!493272 (ite c!93389 (h!18883 (t!25041 (t!25041 l!906))) (tuple2!11933 key1!49 v2!16))))))

(declare-fun c!93392 () Bool)

(assert (=> bm!39218 (= c!93392 c!93389)))

(declare-fun b!886168 () Bool)

(declare-fun call!39222 () List!17756)

(assert (=> b!886168 (= e!493273 call!39222)))

(declare-fun b!886169 () Bool)

(declare-fun e!493274 () List!17756)

(assert (=> b!886169 (= e!493274 e!493271)))

(assert (=> b!886169 (= c!93391 (and ((_ is Cons!17752) (t!25041 (t!25041 l!906))) (= (_1!5976 (h!18883 (t!25041 (t!25041 l!906)))) key1!49)))))

(declare-fun b!886170 () Bool)

(assert (=> b!886170 (= e!493273 call!39222)))

(declare-fun b!886171 () Bool)

(assert (=> b!886171 (= e!493272 (insertStrictlySorted!298 (t!25041 (t!25041 (t!25041 l!906))) key1!49 v2!16))))

(declare-fun b!886172 () Bool)

(assert (=> b!886172 (= e!493274 call!39221)))

(declare-fun d!109475 () Bool)

(declare-fun e!493275 () Bool)

(assert (=> d!109475 e!493275))

(declare-fun res!601703 () Bool)

(assert (=> d!109475 (=> (not res!601703) (not e!493275))))

(declare-fun lt!401053 () List!17756)

(assert (=> d!109475 (= res!601703 (isStrictlySorted!486 lt!401053))))

(assert (=> d!109475 (= lt!401053 e!493274)))

(assert (=> d!109475 (= c!93389 (and ((_ is Cons!17752) (t!25041 (t!25041 l!906))) (bvslt (_1!5976 (h!18883 (t!25041 (t!25041 l!906)))) key1!49)))))

(assert (=> d!109475 (isStrictlySorted!486 (t!25041 (t!25041 l!906)))))

(assert (=> d!109475 (= (insertStrictlySorted!298 (t!25041 (t!25041 l!906)) key1!49 v2!16) lt!401053)))

(declare-fun b!886165 () Bool)

(declare-fun call!39223 () List!17756)

(assert (=> b!886165 (= e!493271 call!39223)))

(declare-fun b!886173 () Bool)

(declare-fun res!601704 () Bool)

(assert (=> b!886173 (=> (not res!601704) (not e!493275))))

(assert (=> b!886173 (= res!601704 (containsKey!413 lt!401053 key1!49))))

(declare-fun b!886174 () Bool)

(assert (=> b!886174 (= e!493275 (contains!4292 lt!401053 (tuple2!11933 key1!49 v2!16)))))

(declare-fun bm!39219 () Bool)

(assert (=> bm!39219 (= call!39222 call!39223)))

(declare-fun bm!39220 () Bool)

(assert (=> bm!39220 (= call!39223 call!39221)))

(assert (= (and d!109475 c!93389) b!886172))

(assert (= (and d!109475 (not c!93389)) b!886169))

(assert (= (and b!886169 c!93391) b!886165))

(assert (= (and b!886169 (not c!93391)) b!886167))

(assert (= (and b!886167 c!93390) b!886170))

(assert (= (and b!886167 (not c!93390)) b!886168))

(assert (= (or b!886170 b!886168) bm!39219))

(assert (= (or b!886165 bm!39219) bm!39220))

(assert (= (or b!886172 bm!39220) bm!39218))

(assert (= (and bm!39218 c!93392) b!886171))

(assert (= (and bm!39218 (not c!93392)) b!886166))

(assert (= (and d!109475 res!601703) b!886173))

(assert (= (and b!886173 res!601704) b!886174))

(declare-fun m!826123 () Bool)

(assert (=> b!886171 m!826123))

(declare-fun m!826125 () Bool)

(assert (=> bm!39218 m!826125))

(declare-fun m!826127 () Bool)

(assert (=> b!886173 m!826127))

(declare-fun m!826129 () Bool)

(assert (=> d!109475 m!826129))

(assert (=> d!109475 m!825929))

(declare-fun m!826131 () Bool)

(assert (=> b!886174 m!826131))

(assert (=> b!886053 d!109475))

(declare-fun d!109477 () Bool)

(declare-fun res!601705 () Bool)

(declare-fun e!493276 () Bool)

(assert (=> d!109477 (=> res!601705 e!493276)))

(assert (=> d!109477 (= res!601705 (or ((_ is Nil!17753) (t!25041 (t!25041 l!906))) ((_ is Nil!17753) (t!25041 (t!25041 (t!25041 l!906))))))))

(assert (=> d!109477 (= (isStrictlySorted!486 (t!25041 (t!25041 l!906))) e!493276)))

(declare-fun b!886175 () Bool)

(declare-fun e!493277 () Bool)

(assert (=> b!886175 (= e!493276 e!493277)))

(declare-fun res!601706 () Bool)

(assert (=> b!886175 (=> (not res!601706) (not e!493277))))

(assert (=> b!886175 (= res!601706 (bvslt (_1!5976 (h!18883 (t!25041 (t!25041 l!906)))) (_1!5976 (h!18883 (t!25041 (t!25041 (t!25041 l!906)))))))))

(declare-fun b!886176 () Bool)

(assert (=> b!886176 (= e!493277 (isStrictlySorted!486 (t!25041 (t!25041 (t!25041 l!906)))))))

(assert (= (and d!109477 (not res!601705)) b!886175))

(assert (= (and b!886175 res!601706) b!886176))

(declare-fun m!826133 () Bool)

(assert (=> b!886176 m!826133))

(assert (=> b!885891 d!109477))

(declare-fun d!109479 () Bool)

(assert (=> d!109479 (= ($colon$colon!548 e!493203 (ite c!93343 (h!18883 (insertStrictlySorted!298 l!906 key1!49 v1!38)) (tuple2!11933 key1!49 v2!16))) (Cons!17752 (ite c!93343 (h!18883 (insertStrictlySorted!298 l!906 key1!49 v1!38)) (tuple2!11933 key1!49 v2!16)) e!493203))))

(assert (=> bm!39181 d!109479))

(declare-fun d!109481 () Bool)

(assert (=> d!109481 (= ($colon$colon!548 e!493222 (ite c!93357 (h!18883 l!906) (tuple2!11933 key1!49 v2!16))) (Cons!17752 (ite c!93357 (h!18883 l!906) (tuple2!11933 key1!49 v2!16)) e!493222))))

(assert (=> bm!39194 d!109481))

(assert (=> b!886087 d!109455))

(declare-fun d!109483 () Bool)

(declare-fun res!601711 () Bool)

(declare-fun e!493282 () Bool)

(assert (=> d!109483 (=> res!601711 e!493282)))

(assert (=> d!109483 (= res!601711 (and ((_ is Cons!17752) lt!401043) (= (_1!5976 (h!18883 lt!401043)) key1!49)))))

(assert (=> d!109483 (= (containsKey!413 lt!401043 key1!49) e!493282)))

(declare-fun b!886181 () Bool)

(declare-fun e!493283 () Bool)

(assert (=> b!886181 (= e!493282 e!493283)))

(declare-fun res!601712 () Bool)

(assert (=> b!886181 (=> (not res!601712) (not e!493283))))

(assert (=> b!886181 (= res!601712 (and (or (not ((_ is Cons!17752) lt!401043)) (bvsle (_1!5976 (h!18883 lt!401043)) key1!49)) ((_ is Cons!17752) lt!401043) (bvslt (_1!5976 (h!18883 lt!401043)) key1!49)))))

(declare-fun b!886182 () Bool)

(assert (=> b!886182 (= e!493283 (containsKey!413 (t!25041 lt!401043) key1!49))))

(assert (= (and d!109483 (not res!601711)) b!886181))

(assert (= (and b!886181 res!601712) b!886182))

(declare-fun m!826135 () Bool)

(assert (=> b!886182 m!826135))

(assert (=> b!886055 d!109483))

(declare-fun lt!401059 () Bool)

(declare-fun d!109487 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!397 (List!17756) (InoxSet tuple2!11932))

(assert (=> d!109487 (= lt!401059 (select (content!397 lt!401043) (tuple2!11933 key1!49 v2!16)))))

(declare-fun e!493294 () Bool)

(assert (=> d!109487 (= lt!401059 e!493294)))

(declare-fun res!601723 () Bool)

(assert (=> d!109487 (=> (not res!601723) (not e!493294))))

(assert (=> d!109487 (= res!601723 ((_ is Cons!17752) lt!401043))))

(assert (=> d!109487 (= (contains!4292 lt!401043 (tuple2!11933 key1!49 v2!16)) lt!401059)))

(declare-fun b!886193 () Bool)

(declare-fun e!493295 () Bool)

(assert (=> b!886193 (= e!493294 e!493295)))

(declare-fun res!601724 () Bool)

(assert (=> b!886193 (=> res!601724 e!493295)))

(assert (=> b!886193 (= res!601724 (= (h!18883 lt!401043) (tuple2!11933 key1!49 v2!16)))))

(declare-fun b!886194 () Bool)

(assert (=> b!886194 (= e!493295 (contains!4292 (t!25041 lt!401043) (tuple2!11933 key1!49 v2!16)))))

(assert (= (and d!109487 res!601723) b!886193))

(assert (= (and b!886193 (not res!601724)) b!886194))

(declare-fun m!826143 () Bool)

(assert (=> d!109487 m!826143))

(declare-fun m!826145 () Bool)

(assert (=> d!109487 m!826145))

(declare-fun m!826147 () Bool)

(assert (=> b!886194 m!826147))

(assert (=> b!886056 d!109487))

(declare-fun d!109491 () Bool)

(assert (=> d!109491 (= ($colon$colon!548 e!493217 (ite c!93353 (h!18883 (t!25041 l!906)) (tuple2!11933 key1!49 v1!38))) (Cons!17752 (ite c!93353 (h!18883 (t!25041 l!906)) (tuple2!11933 key1!49 v1!38)) e!493217))))

(assert (=> bm!39191 d!109491))

(declare-fun d!109493 () Bool)

(declare-fun res!601727 () Bool)

(declare-fun e!493298 () Bool)

(assert (=> d!109493 (=> res!601727 e!493298)))

(assert (=> d!109493 (= res!601727 (or ((_ is Nil!17753) lt!401042) ((_ is Nil!17753) (t!25041 lt!401042))))))

(assert (=> d!109493 (= (isStrictlySorted!486 lt!401042) e!493298)))

(declare-fun b!886197 () Bool)

(declare-fun e!493299 () Bool)

(assert (=> b!886197 (= e!493298 e!493299)))

(declare-fun res!601728 () Bool)

(assert (=> b!886197 (=> (not res!601728) (not e!493299))))

(assert (=> b!886197 (= res!601728 (bvslt (_1!5976 (h!18883 lt!401042)) (_1!5976 (h!18883 (t!25041 lt!401042)))))))

(declare-fun b!886198 () Bool)

(assert (=> b!886198 (= e!493299 (isStrictlySorted!486 (t!25041 lt!401042)))))

(assert (= (and d!109493 (not res!601727)) b!886197))

(assert (= (and b!886197 res!601728) b!886198))

(declare-fun m!826155 () Bool)

(assert (=> b!886198 m!826155))

(assert (=> d!109451 d!109493))

(declare-fun d!109497 () Bool)

(declare-fun res!601731 () Bool)

(declare-fun e!493302 () Bool)

(assert (=> d!109497 (=> res!601731 e!493302)))

(assert (=> d!109497 (= res!601731 (or ((_ is Nil!17753) (insertStrictlySorted!298 l!906 key1!49 v1!38)) ((_ is Nil!17753) (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38)))))))

(assert (=> d!109497 (= (isStrictlySorted!486 (insertStrictlySorted!298 l!906 key1!49 v1!38)) e!493302)))

(declare-fun b!886201 () Bool)

(declare-fun e!493303 () Bool)

(assert (=> b!886201 (= e!493302 e!493303)))

(declare-fun res!601732 () Bool)

(assert (=> b!886201 (=> (not res!601732) (not e!493303))))

(assert (=> b!886201 (= res!601732 (bvslt (_1!5976 (h!18883 (insertStrictlySorted!298 l!906 key1!49 v1!38))) (_1!5976 (h!18883 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38))))))))

(declare-fun b!886202 () Bool)

(assert (=> b!886202 (= e!493303 (isStrictlySorted!486 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38))))))

(assert (= (and d!109497 (not res!601731)) b!886201))

(assert (= (and b!886201 res!601732) b!886202))

(declare-fun m!826159 () Bool)

(assert (=> b!886202 m!826159))

(assert (=> d!109451 d!109497))

(declare-fun d!109501 () Bool)

(declare-fun res!601733 () Bool)

(declare-fun e!493304 () Bool)

(assert (=> d!109501 (=> res!601733 e!493304)))

(assert (=> d!109501 (= res!601733 (and ((_ is Cons!17752) lt!401039) (= (_1!5976 (h!18883 lt!401039)) key1!49)))))

(assert (=> d!109501 (= (containsKey!413 lt!401039 key1!49) e!493304)))

(declare-fun b!886203 () Bool)

(declare-fun e!493305 () Bool)

(assert (=> b!886203 (= e!493304 e!493305)))

(declare-fun res!601734 () Bool)

(assert (=> b!886203 (=> (not res!601734) (not e!493305))))

(assert (=> b!886203 (= res!601734 (and (or (not ((_ is Cons!17752) lt!401039)) (bvsle (_1!5976 (h!18883 lt!401039)) key1!49)) ((_ is Cons!17752) lt!401039) (bvslt (_1!5976 (h!18883 lt!401039)) key1!49)))))

(declare-fun b!886204 () Bool)

(assert (=> b!886204 (= e!493305 (containsKey!413 (t!25041 lt!401039) key1!49))))

(assert (= (and d!109501 (not res!601733)) b!886203))

(assert (= (and b!886203 res!601734) b!886204))

(declare-fun m!826161 () Bool)

(assert (=> b!886204 m!826161))

(assert (=> b!886019 d!109501))

(declare-fun d!109503 () Bool)

(declare-fun lt!401061 () Bool)

(assert (=> d!109503 (= lt!401061 (select (content!397 lt!401039) (tuple2!11933 key1!49 v2!16)))))

(declare-fun e!493306 () Bool)

(assert (=> d!109503 (= lt!401061 e!493306)))

(declare-fun res!601735 () Bool)

(assert (=> d!109503 (=> (not res!601735) (not e!493306))))

(assert (=> d!109503 (= res!601735 ((_ is Cons!17752) lt!401039))))

(assert (=> d!109503 (= (contains!4292 lt!401039 (tuple2!11933 key1!49 v2!16)) lt!401061)))

(declare-fun b!886205 () Bool)

(declare-fun e!493307 () Bool)

(assert (=> b!886205 (= e!493306 e!493307)))

(declare-fun res!601736 () Bool)

(assert (=> b!886205 (=> res!601736 e!493307)))

(assert (=> b!886205 (= res!601736 (= (h!18883 lt!401039) (tuple2!11933 key1!49 v2!16)))))

(declare-fun b!886206 () Bool)

(assert (=> b!886206 (= e!493307 (contains!4292 (t!25041 lt!401039) (tuple2!11933 key1!49 v2!16)))))

(assert (= (and d!109503 res!601735) b!886205))

(assert (= (and b!886205 (not res!601736)) b!886206))

(declare-fun m!826163 () Bool)

(assert (=> d!109503 m!826163))

(declare-fun m!826165 () Bool)

(assert (=> d!109503 m!826165))

(declare-fun m!826167 () Bool)

(assert (=> b!886206 m!826167))

(assert (=> b!886020 d!109503))

(declare-fun d!109509 () Bool)

(assert (=> d!109509 (= ($colon$colon!548 e!493210 (ite c!93349 (h!18883 (t!25041 l!906)) (tuple2!11933 key1!49 v2!16))) (Cons!17752 (ite c!93349 (h!18883 (t!25041 l!906)) (tuple2!11933 key1!49 v2!16)) e!493210))))

(assert (=> bm!39188 d!109509))

(declare-fun d!109511 () Bool)

(declare-fun res!601739 () Bool)

(declare-fun e!493313 () Bool)

(assert (=> d!109511 (=> res!601739 e!493313)))

(assert (=> d!109511 (= res!601739 (or ((_ is Nil!17753) lt!401043) ((_ is Nil!17753) (t!25041 lt!401043))))))

(assert (=> d!109511 (= (isStrictlySorted!486 lt!401043) e!493313)))

(declare-fun b!886217 () Bool)

(declare-fun e!493314 () Bool)

(assert (=> b!886217 (= e!493313 e!493314)))

(declare-fun res!601740 () Bool)

(assert (=> b!886217 (=> (not res!601740) (not e!493314))))

(assert (=> b!886217 (= res!601740 (bvslt (_1!5976 (h!18883 lt!401043)) (_1!5976 (h!18883 (t!25041 lt!401043)))))))

(declare-fun b!886218 () Bool)

(assert (=> b!886218 (= e!493314 (isStrictlySorted!486 (t!25041 lt!401043)))))

(assert (= (and d!109511 (not res!601739)) b!886217))

(assert (= (and b!886217 res!601740) b!886218))

(declare-fun m!826169 () Bool)

(assert (=> b!886218 m!826169))

(assert (=> d!109453 d!109511))

(assert (=> d!109453 d!109423))

(declare-fun d!109513 () Bool)

(assert (=> d!109513 (= ($colon$colon!548 e!493227 (ite c!93361 (h!18883 l!906) (tuple2!11933 key1!49 v1!38))) (Cons!17752 (ite c!93361 (h!18883 l!906) (tuple2!11933 key1!49 v1!38)) e!493227))))

(assert (=> bm!39197 d!109513))

(declare-fun d!109515 () Bool)

(declare-fun res!601741 () Bool)

(declare-fun e!493315 () Bool)

(assert (=> d!109515 (=> res!601741 e!493315)))

(assert (=> d!109515 (= res!601741 (and ((_ is Cons!17752) lt!401044) (= (_1!5976 (h!18883 lt!401044)) key1!49)))))

(assert (=> d!109515 (= (containsKey!413 lt!401044 key1!49) e!493315)))

(declare-fun b!886219 () Bool)

(declare-fun e!493316 () Bool)

(assert (=> b!886219 (= e!493315 e!493316)))

(declare-fun res!601742 () Bool)

(assert (=> b!886219 (=> (not res!601742) (not e!493316))))

(assert (=> b!886219 (= res!601742 (and (or (not ((_ is Cons!17752) lt!401044)) (bvsle (_1!5976 (h!18883 lt!401044)) key1!49)) ((_ is Cons!17752) lt!401044) (bvslt (_1!5976 (h!18883 lt!401044)) key1!49)))))

(declare-fun b!886220 () Bool)

(assert (=> b!886220 (= e!493316 (containsKey!413 (t!25041 lt!401044) key1!49))))

(assert (= (and d!109515 (not res!601741)) b!886219))

(assert (= (and b!886219 res!601742) b!886220))

(declare-fun m!826177 () Bool)

(assert (=> b!886220 m!826177))

(assert (=> b!886069 d!109515))

(declare-fun d!109517 () Bool)

(assert (=> d!109517 (= ($colon$colon!548 e!493192 (ite c!93333 (h!18883 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)) (tuple2!11933 key1!49 v2!16))) (Cons!17752 (ite c!93333 (h!18883 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)) (tuple2!11933 key1!49 v2!16)) e!493192))))

(assert (=> bm!39176 d!109517))

(declare-fun d!109521 () Bool)

(declare-fun lt!401063 () Bool)

(assert (=> d!109521 (= lt!401063 (select (content!397 lt!401044) (tuple2!11933 key1!49 v1!38)))))

(declare-fun e!493317 () Bool)

(assert (=> d!109521 (= lt!401063 e!493317)))

(declare-fun res!601743 () Bool)

(assert (=> d!109521 (=> (not res!601743) (not e!493317))))

(assert (=> d!109521 (= res!601743 ((_ is Cons!17752) lt!401044))))

(assert (=> d!109521 (= (contains!4292 lt!401044 (tuple2!11933 key1!49 v1!38)) lt!401063)))

(declare-fun b!886221 () Bool)

(declare-fun e!493318 () Bool)

(assert (=> b!886221 (= e!493317 e!493318)))

(declare-fun res!601744 () Bool)

(assert (=> b!886221 (=> res!601744 e!493318)))

(assert (=> b!886221 (= res!601744 (= (h!18883 lt!401044) (tuple2!11933 key1!49 v1!38)))))

(declare-fun b!886222 () Bool)

(assert (=> b!886222 (= e!493318 (contains!4292 (t!25041 lt!401044) (tuple2!11933 key1!49 v1!38)))))

(assert (= (and d!109521 res!601743) b!886221))

(assert (= (and b!886221 (not res!601744)) b!886222))

(declare-fun m!826185 () Bool)

(assert (=> d!109521 m!826185))

(declare-fun m!826187 () Bool)

(assert (=> d!109521 m!826187))

(declare-fun m!826189 () Bool)

(assert (=> b!886222 m!826189))

(assert (=> b!886070 d!109521))

(assert (=> d!109425 d!109431))

(assert (=> d!109425 d!109423))

(assert (=> d!109425 d!109453))

(assert (=> d!109425 d!109455))

(declare-fun d!109523 () Bool)

(assert (=> d!109523 (= (insertStrictlySorted!298 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38) key1!49 v2!16) (insertStrictlySorted!298 (t!25041 l!906) key1!49 v2!16))))

(assert (=> d!109523 true))

(declare-fun _$8!133 () Unit!30207)

(assert (=> d!109523 (= (choose!1459 (t!25041 l!906) key1!49 v1!38 v2!16) _$8!133)))

(declare-fun bs!24844 () Bool)

(assert (= bs!24844 d!109523))

(assert (=> bs!24844 m!825895))

(assert (=> bs!24844 m!825895))

(assert (=> bs!24844 m!825897))

(assert (=> bs!24844 m!825905))

(assert (=> d!109425 d!109523))

(declare-fun c!93399 () Bool)

(declare-fun c!93398 () Bool)

(declare-fun e!493324 () List!17756)

(declare-fun b!886228 () Bool)

(assert (=> b!886228 (= e!493324 (ite c!93399 (t!25041 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))) (ite c!93398 (Cons!17752 (h!18883 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))) (t!25041 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)))) Nil!17753)))))

(declare-fun b!886229 () Bool)

(assert (=> b!886229 (= c!93398 (and ((_ is Cons!17752) (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))) (bvsgt (_1!5976 (h!18883 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)))) key1!49)))))

(declare-fun e!493323 () List!17756)

(declare-fun e!493325 () List!17756)

(assert (=> b!886229 (= e!493323 e!493325)))

(declare-fun bm!39224 () Bool)

(declare-fun call!39227 () List!17756)

(declare-fun c!93397 () Bool)

(assert (=> bm!39224 (= call!39227 ($colon$colon!548 e!493324 (ite c!93397 (h!18883 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))) (tuple2!11933 key1!49 v2!16))))))

(declare-fun c!93400 () Bool)

(assert (=> bm!39224 (= c!93400 c!93397)))

(declare-fun b!886230 () Bool)

(declare-fun call!39228 () List!17756)

(assert (=> b!886230 (= e!493325 call!39228)))

(declare-fun b!886231 () Bool)

(declare-fun e!493326 () List!17756)

(assert (=> b!886231 (= e!493326 e!493323)))

(assert (=> b!886231 (= c!93399 (and ((_ is Cons!17752) (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))) (= (_1!5976 (h!18883 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)))) key1!49)))))

(declare-fun b!886232 () Bool)

(assert (=> b!886232 (= e!493325 call!39228)))

(declare-fun b!886233 () Bool)

(assert (=> b!886233 (= e!493324 (insertStrictlySorted!298 (t!25041 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))) key1!49 v2!16))))

(declare-fun b!886234 () Bool)

(assert (=> b!886234 (= e!493326 call!39227)))

(declare-fun d!109525 () Bool)

(declare-fun e!493327 () Bool)

(assert (=> d!109525 e!493327))

(declare-fun res!601749 () Bool)

(assert (=> d!109525 (=> (not res!601749) (not e!493327))))

(declare-fun lt!401064 () List!17756)

(assert (=> d!109525 (= res!601749 (isStrictlySorted!486 lt!401064))))

(assert (=> d!109525 (= lt!401064 e!493326)))

(assert (=> d!109525 (= c!93397 (and ((_ is Cons!17752) (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))) (bvslt (_1!5976 (h!18883 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)))) key1!49)))))

(assert (=> d!109525 (isStrictlySorted!486 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)))))

(assert (=> d!109525 (= (insertStrictlySorted!298 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)) key1!49 v2!16) lt!401064)))

(declare-fun b!886227 () Bool)

(declare-fun call!39229 () List!17756)

(assert (=> b!886227 (= e!493323 call!39229)))

(declare-fun b!886235 () Bool)

(declare-fun res!601750 () Bool)

(assert (=> b!886235 (=> (not res!601750) (not e!493327))))

(assert (=> b!886235 (= res!601750 (containsKey!413 lt!401064 key1!49))))

(declare-fun b!886236 () Bool)

(assert (=> b!886236 (= e!493327 (contains!4292 lt!401064 (tuple2!11933 key1!49 v2!16)))))

(declare-fun bm!39225 () Bool)

(assert (=> bm!39225 (= call!39228 call!39229)))

(declare-fun bm!39226 () Bool)

(assert (=> bm!39226 (= call!39229 call!39227)))

(assert (= (and d!109525 c!93397) b!886234))

(assert (= (and d!109525 (not c!93397)) b!886231))

(assert (= (and b!886231 c!93399) b!886227))

(assert (= (and b!886231 (not c!93399)) b!886229))

(assert (= (and b!886229 c!93398) b!886232))

(assert (= (and b!886229 (not c!93398)) b!886230))

(assert (= (or b!886232 b!886230) bm!39225))

(assert (= (or b!886227 bm!39225) bm!39226))

(assert (= (or b!886234 bm!39226) bm!39224))

(assert (= (and bm!39224 c!93400) b!886233))

(assert (= (and bm!39224 (not c!93400)) b!886228))

(assert (= (and d!109525 res!601749) b!886235))

(assert (= (and b!886235 res!601750) b!886236))

(declare-fun m!826199 () Bool)

(assert (=> b!886233 m!826199))

(declare-fun m!826201 () Bool)

(assert (=> bm!39224 m!826201))

(declare-fun m!826203 () Bool)

(assert (=> b!886235 m!826203))

(declare-fun m!826205 () Bool)

(assert (=> d!109525 m!826205))

(declare-fun m!826207 () Bool)

(assert (=> d!109525 m!826207))

(declare-fun m!826211 () Bool)

(assert (=> b!886236 m!826211))

(assert (=> b!886017 d!109525))

(assert (=> b!885889 d!109423))

(declare-fun d!109533 () Bool)

(declare-fun res!601759 () Bool)

(declare-fun e!493336 () Bool)

(assert (=> d!109533 (=> res!601759 e!493336)))

(assert (=> d!109533 (= res!601759 (or ((_ is Nil!17753) lt!401039) ((_ is Nil!17753) (t!25041 lt!401039))))))

(assert (=> d!109533 (= (isStrictlySorted!486 lt!401039) e!493336)))

(declare-fun b!886245 () Bool)

(declare-fun e!493337 () Bool)

(assert (=> b!886245 (= e!493336 e!493337)))

(declare-fun res!601760 () Bool)

(assert (=> b!886245 (=> (not res!601760) (not e!493337))))

(assert (=> b!886245 (= res!601760 (bvslt (_1!5976 (h!18883 lt!401039)) (_1!5976 (h!18883 (t!25041 lt!401039)))))))

(declare-fun b!886246 () Bool)

(assert (=> b!886246 (= e!493337 (isStrictlySorted!486 (t!25041 lt!401039)))))

(assert (= (and d!109533 (not res!601759)) b!886245))

(assert (= (and b!886245 res!601760) b!886246))

(declare-fun m!826215 () Bool)

(assert (=> b!886246 m!826215))

(assert (=> d!109431 d!109533))

(declare-fun d!109537 () Bool)

(declare-fun res!601763 () Bool)

(declare-fun e!493340 () Bool)

(assert (=> d!109537 (=> res!601763 e!493340)))

(assert (=> d!109537 (= res!601763 (or ((_ is Nil!17753) (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)) ((_ is Nil!17753) (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)))))))

(assert (=> d!109537 (= (isStrictlySorted!486 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38)) e!493340)))

(declare-fun b!886249 () Bool)

(declare-fun e!493341 () Bool)

(assert (=> b!886249 (= e!493340 e!493341)))

(declare-fun res!601764 () Bool)

(assert (=> b!886249 (=> (not res!601764) (not e!493341))))

(assert (=> b!886249 (= res!601764 (bvslt (_1!5976 (h!18883 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))) (_1!5976 (h!18883 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))))))))

(declare-fun b!886250 () Bool)

(assert (=> b!886250 (= e!493341 (isStrictlySorted!486 (t!25041 (insertStrictlySorted!298 (t!25041 l!906) key1!49 v1!38))))))

(assert (= (and d!109537 (not res!601763)) b!886249))

(assert (= (and b!886249 res!601764) b!886250))

(assert (=> b!886250 m!826207))

(assert (=> d!109431 d!109537))

(declare-fun d!109541 () Bool)

(declare-fun res!601767 () Bool)

(declare-fun e!493344 () Bool)

(assert (=> d!109541 (=> res!601767 e!493344)))

(assert (=> d!109541 (= res!601767 (and ((_ is Cons!17752) lt!401046) (= (_1!5976 (h!18883 lt!401046)) key1!49)))))

(assert (=> d!109541 (= (containsKey!413 lt!401046 key1!49) e!493344)))

(declare-fun b!886253 () Bool)

(declare-fun e!493345 () Bool)

(assert (=> b!886253 (= e!493344 e!493345)))

(declare-fun res!601768 () Bool)

(assert (=> b!886253 (=> (not res!601768) (not e!493345))))

(assert (=> b!886253 (= res!601768 (and (or (not ((_ is Cons!17752) lt!401046)) (bvsle (_1!5976 (h!18883 lt!401046)) key1!49)) ((_ is Cons!17752) lt!401046) (bvslt (_1!5976 (h!18883 lt!401046)) key1!49)))))

(declare-fun b!886254 () Bool)

(assert (=> b!886254 (= e!493345 (containsKey!413 (t!25041 lt!401046) key1!49))))

(assert (= (and d!109541 (not res!601767)) b!886253))

(assert (= (and b!886253 res!601768) b!886254))

(declare-fun m!826221 () Bool)

(assert (=> b!886254 m!826221))

(assert (=> b!886089 d!109541))

(declare-fun d!109545 () Bool)

(declare-fun res!601771 () Bool)

(declare-fun e!493348 () Bool)

(assert (=> d!109545 (=> res!601771 e!493348)))

(assert (=> d!109545 (= res!601771 (or ((_ is Nil!17753) lt!401045) ((_ is Nil!17753) (t!25041 lt!401045))))))

(assert (=> d!109545 (= (isStrictlySorted!486 lt!401045) e!493348)))

(declare-fun b!886257 () Bool)

(declare-fun e!493349 () Bool)

(assert (=> b!886257 (= e!493348 e!493349)))

(declare-fun res!601772 () Bool)

(assert (=> b!886257 (=> (not res!601772) (not e!493349))))

(assert (=> b!886257 (= res!601772 (bvslt (_1!5976 (h!18883 lt!401045)) (_1!5976 (h!18883 (t!25041 lt!401045)))))))

(declare-fun b!886258 () Bool)

(assert (=> b!886258 (= e!493349 (isStrictlySorted!486 (t!25041 lt!401045)))))

(assert (= (and d!109545 (not res!601771)) b!886257))

(assert (= (and b!886257 res!601772) b!886258))

(declare-fun m!826225 () Bool)

(assert (=> b!886258 m!826225))

(assert (=> d!109457 d!109545))

(assert (=> d!109457 d!109419))

(declare-fun d!109549 () Bool)

(declare-fun lt!401066 () Bool)

(assert (=> d!109549 (= lt!401066 (select (content!397 lt!401046) (tuple2!11933 key1!49 v1!38)))))

(declare-fun e!493352 () Bool)

(assert (=> d!109549 (= lt!401066 e!493352)))

(declare-fun res!601775 () Bool)

(assert (=> d!109549 (=> (not res!601775) (not e!493352))))

(assert (=> d!109549 (= res!601775 ((_ is Cons!17752) lt!401046))))

(assert (=> d!109549 (= (contains!4292 lt!401046 (tuple2!11933 key1!49 v1!38)) lt!401066)))

(declare-fun b!886261 () Bool)

(declare-fun e!493353 () Bool)

(assert (=> b!886261 (= e!493352 e!493353)))

(declare-fun res!601776 () Bool)

(assert (=> b!886261 (=> res!601776 e!493353)))

(assert (=> b!886261 (= res!601776 (= (h!18883 lt!401046) (tuple2!11933 key1!49 v1!38)))))

(declare-fun b!886262 () Bool)

(assert (=> b!886262 (= e!493353 (contains!4292 (t!25041 lt!401046) (tuple2!11933 key1!49 v1!38)))))

(assert (= (and d!109549 res!601775) b!886261))

(assert (= (and b!886261 (not res!601776)) b!886262))

(declare-fun m!826229 () Bool)

(assert (=> d!109549 m!826229))

(declare-fun m!826231 () Bool)

(assert (=> d!109549 m!826231))

(declare-fun m!826233 () Bool)

(assert (=> b!886262 m!826233))

(assert (=> b!886090 d!109549))

(declare-fun b!886266 () Bool)

(declare-fun c!93402 () Bool)

(declare-fun e!493357 () List!17756)

(declare-fun c!93403 () Bool)

(assert (=> b!886266 (= e!493357 (ite c!93403 (t!25041 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38))) (ite c!93402 (Cons!17752 (h!18883 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38))) (t!25041 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38)))) Nil!17753)))))

(declare-fun b!886267 () Bool)

(assert (=> b!886267 (= c!93402 (and ((_ is Cons!17752) (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38))) (bvsgt (_1!5976 (h!18883 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38)))) key1!49)))))

(declare-fun e!493356 () List!17756)

(declare-fun e!493358 () List!17756)

(assert (=> b!886267 (= e!493356 e!493358)))

(declare-fun call!39230 () List!17756)

(declare-fun c!93401 () Bool)

(declare-fun bm!39227 () Bool)

(assert (=> bm!39227 (= call!39230 ($colon$colon!548 e!493357 (ite c!93401 (h!18883 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38))) (tuple2!11933 key1!49 v2!16))))))

(declare-fun c!93404 () Bool)

(assert (=> bm!39227 (= c!93404 c!93401)))

(declare-fun b!886268 () Bool)

(declare-fun call!39231 () List!17756)

(assert (=> b!886268 (= e!493358 call!39231)))

(declare-fun b!886269 () Bool)

(declare-fun e!493359 () List!17756)

(assert (=> b!886269 (= e!493359 e!493356)))

(assert (=> b!886269 (= c!93403 (and ((_ is Cons!17752) (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38))) (= (_1!5976 (h!18883 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38)))) key1!49)))))

(declare-fun b!886270 () Bool)

(assert (=> b!886270 (= e!493358 call!39231)))

(declare-fun b!886271 () Bool)

(assert (=> b!886271 (= e!493357 (insertStrictlySorted!298 (t!25041 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38))) key1!49 v2!16))))

(declare-fun b!886272 () Bool)

(assert (=> b!886272 (= e!493359 call!39230)))

(declare-fun d!109553 () Bool)

(declare-fun e!493360 () Bool)

(assert (=> d!109553 e!493360))

(declare-fun res!601779 () Bool)

(assert (=> d!109553 (=> (not res!601779) (not e!493360))))

(declare-fun lt!401067 () List!17756)

(assert (=> d!109553 (= res!601779 (isStrictlySorted!486 lt!401067))))

(assert (=> d!109553 (= lt!401067 e!493359)))

(assert (=> d!109553 (= c!93401 (and ((_ is Cons!17752) (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38))) (bvslt (_1!5976 (h!18883 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38)))) key1!49)))))

(assert (=> d!109553 (isStrictlySorted!486 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38)))))

(assert (=> d!109553 (= (insertStrictlySorted!298 (t!25041 (insertStrictlySorted!298 l!906 key1!49 v1!38)) key1!49 v2!16) lt!401067)))

(declare-fun b!886265 () Bool)

(declare-fun call!39232 () List!17756)

(assert (=> b!886265 (= e!493356 call!39232)))

(declare-fun b!886273 () Bool)

(declare-fun res!601780 () Bool)

(assert (=> b!886273 (=> (not res!601780) (not e!493360))))

(assert (=> b!886273 (= res!601780 (containsKey!413 lt!401067 key1!49))))

(declare-fun b!886274 () Bool)

(assert (=> b!886274 (= e!493360 (contains!4292 lt!401067 (tuple2!11933 key1!49 v2!16)))))

(declare-fun bm!39228 () Bool)

(assert (=> bm!39228 (= call!39231 call!39232)))

(declare-fun bm!39229 () Bool)

(assert (=> bm!39229 (= call!39232 call!39230)))

(assert (= (and d!109553 c!93401) b!886272))

(assert (= (and d!109553 (not c!93401)) b!886269))

(assert (= (and b!886269 c!93403) b!886265))

(assert (= (and b!886269 (not c!93403)) b!886267))

(assert (= (and b!886267 c!93402) b!886270))

(assert (= (and b!886267 (not c!93402)) b!886268))

(assert (= (or b!886270 b!886268) bm!39228))

(assert (= (or b!886265 bm!39228) bm!39229))

(assert (= (or b!886272 bm!39229) bm!39227))

(assert (= (and bm!39227 c!93404) b!886271))

(assert (= (and bm!39227 (not c!93404)) b!886266))

(assert (= (and d!109553 res!601779) b!886273))

(assert (= (and b!886273 res!601780) b!886274))

(declare-fun m!826245 () Bool)

(assert (=> b!886271 m!826245))

(declare-fun m!826247 () Bool)

(assert (=> bm!39227 m!826247))

(declare-fun m!826249 () Bool)

(assert (=> b!886273 m!826249))

(declare-fun m!826251 () Bool)

(assert (=> d!109553 m!826251))

(assert (=> d!109553 m!826159))

(declare-fun m!826253 () Bool)

(assert (=> b!886274 m!826253))

(assert (=> b!886039 d!109553))

(assert (=> b!886077 d!109453))

(declare-fun d!109561 () Bool)

(declare-fun res!601787 () Bool)

(declare-fun e!493370 () Bool)

(assert (=> d!109561 (=> res!601787 e!493370)))

(assert (=> d!109561 (= res!601787 (or ((_ is Nil!17753) lt!401044) ((_ is Nil!17753) (t!25041 lt!401044))))))

(assert (=> d!109561 (= (isStrictlySorted!486 lt!401044) e!493370)))

(declare-fun b!886289 () Bool)

(declare-fun e!493371 () Bool)

(assert (=> b!886289 (= e!493370 e!493371)))

(declare-fun res!601788 () Bool)

(assert (=> b!886289 (=> (not res!601788) (not e!493371))))

(assert (=> b!886289 (= res!601788 (bvslt (_1!5976 (h!18883 lt!401044)) (_1!5976 (h!18883 (t!25041 lt!401044)))))))

(declare-fun b!886290 () Bool)

(assert (=> b!886290 (= e!493371 (isStrictlySorted!486 (t!25041 lt!401044)))))

(assert (= (and d!109561 (not res!601787)) b!886289))

(assert (= (and b!886289 res!601788) b!886290))

(declare-fun m!826255 () Bool)

(assert (=> b!886290 m!826255))

(assert (=> d!109455 d!109561))

(assert (=> d!109455 d!109423))

(declare-fun d!109563 () Bool)

(declare-fun res!601789 () Bool)

(declare-fun e!493372 () Bool)

(assert (=> d!109563 (=> res!601789 e!493372)))

(assert (=> d!109563 (= res!601789 (and ((_ is Cons!17752) lt!401042) (= (_1!5976 (h!18883 lt!401042)) key1!49)))))

(assert (=> d!109563 (= (containsKey!413 lt!401042 key1!49) e!493372)))

(declare-fun b!886291 () Bool)

(declare-fun e!493373 () Bool)

(assert (=> b!886291 (= e!493372 e!493373)))

(declare-fun res!601790 () Bool)

(assert (=> b!886291 (=> (not res!601790) (not e!493373))))

(assert (=> b!886291 (= res!601790 (and (or (not ((_ is Cons!17752) lt!401042)) (bvsle (_1!5976 (h!18883 lt!401042)) key1!49)) ((_ is Cons!17752) lt!401042) (bvslt (_1!5976 (h!18883 lt!401042)) key1!49)))))

(declare-fun b!886292 () Bool)

(assert (=> b!886292 (= e!493373 (containsKey!413 (t!25041 lt!401042) key1!49))))

(assert (= (and d!109563 (not res!601789)) b!886291))

(assert (= (and b!886291 res!601790) b!886292))

(declare-fun m!826257 () Bool)

(assert (=> b!886292 m!826257))

(assert (=> b!886041 d!109563))

(declare-fun d!109565 () Bool)

(declare-fun res!601791 () Bool)

(declare-fun e!493374 () Bool)

(assert (=> d!109565 (=> res!601791 e!493374)))

(assert (=> d!109565 (= res!601791 (and ((_ is Cons!17752) lt!401045) (= (_1!5976 (h!18883 lt!401045)) key1!49)))))

(assert (=> d!109565 (= (containsKey!413 lt!401045 key1!49) e!493374)))

(declare-fun b!886293 () Bool)

(declare-fun e!493375 () Bool)

(assert (=> b!886293 (= e!493374 e!493375)))

(declare-fun res!601792 () Bool)

(assert (=> b!886293 (=> (not res!601792) (not e!493375))))

(assert (=> b!886293 (= res!601792 (and (or (not ((_ is Cons!17752) lt!401045)) (bvsle (_1!5976 (h!18883 lt!401045)) key1!49)) ((_ is Cons!17752) lt!401045) (bvslt (_1!5976 (h!18883 lt!401045)) key1!49)))))

(declare-fun b!886294 () Bool)

(assert (=> b!886294 (= e!493375 (containsKey!413 (t!25041 lt!401045) key1!49))))

(assert (= (and d!109565 (not res!601791)) b!886293))

(assert (= (and b!886293 res!601792) b!886294))

(declare-fun m!826271 () Bool)

(assert (=> b!886294 m!826271))

(assert (=> b!886079 d!109565))

(declare-fun e!493382 () List!17756)

(declare-fun c!93415 () Bool)

(declare-fun c!93414 () Bool)

(declare-fun b!886306 () Bool)

(assert (=> b!886306 (= e!493382 (ite c!93415 (t!25041 (t!25041 (t!25041 l!906))) (ite c!93414 (Cons!17752 (h!18883 (t!25041 (t!25041 l!906))) (t!25041 (t!25041 (t!25041 l!906)))) Nil!17753)))))

(declare-fun b!886307 () Bool)

(assert (=> b!886307 (= c!93414 (and ((_ is Cons!17752) (t!25041 (t!25041 l!906))) (bvsgt (_1!5976 (h!18883 (t!25041 (t!25041 l!906)))) key1!49)))))

(declare-fun e!493381 () List!17756)

(declare-fun e!493383 () List!17756)

(assert (=> b!886307 (= e!493381 e!493383)))

(declare-fun c!93413 () Bool)

(declare-fun call!39239 () List!17756)

(declare-fun bm!39236 () Bool)

(assert (=> bm!39236 (= call!39239 ($colon$colon!548 e!493382 (ite c!93413 (h!18883 (t!25041 (t!25041 l!906))) (tuple2!11933 key1!49 v1!38))))))

(declare-fun c!93416 () Bool)

(assert (=> bm!39236 (= c!93416 c!93413)))

(declare-fun b!886308 () Bool)

(declare-fun call!39240 () List!17756)

(assert (=> b!886308 (= e!493383 call!39240)))

(declare-fun b!886309 () Bool)

(declare-fun e!493384 () List!17756)

(assert (=> b!886309 (= e!493384 e!493381)))

(assert (=> b!886309 (= c!93415 (and ((_ is Cons!17752) (t!25041 (t!25041 l!906))) (= (_1!5976 (h!18883 (t!25041 (t!25041 l!906)))) key1!49)))))

(declare-fun b!886310 () Bool)

(assert (=> b!886310 (= e!493383 call!39240)))

(declare-fun b!886311 () Bool)

(assert (=> b!886311 (= e!493382 (insertStrictlySorted!298 (t!25041 (t!25041 (t!25041 l!906))) key1!49 v1!38))))

(declare-fun b!886312 () Bool)

(assert (=> b!886312 (= e!493384 call!39239)))

(declare-fun d!109569 () Bool)

(declare-fun e!493385 () Bool)

(assert (=> d!109569 e!493385))

(declare-fun res!601795 () Bool)

(assert (=> d!109569 (=> (not res!601795) (not e!493385))))

(declare-fun lt!401071 () List!17756)

(assert (=> d!109569 (= res!601795 (isStrictlySorted!486 lt!401071))))

(assert (=> d!109569 (= lt!401071 e!493384)))

(assert (=> d!109569 (= c!93413 (and ((_ is Cons!17752) (t!25041 (t!25041 l!906))) (bvslt (_1!5976 (h!18883 (t!25041 (t!25041 l!906)))) key1!49)))))

(assert (=> d!109569 (isStrictlySorted!486 (t!25041 (t!25041 l!906)))))

(assert (=> d!109569 (= (insertStrictlySorted!298 (t!25041 (t!25041 l!906)) key1!49 v1!38) lt!401071)))

(declare-fun b!886305 () Bool)

(declare-fun call!39241 () List!17756)

(assert (=> b!886305 (= e!493381 call!39241)))

(declare-fun b!886313 () Bool)

(declare-fun res!601796 () Bool)

(assert (=> b!886313 (=> (not res!601796) (not e!493385))))

(assert (=> b!886313 (= res!601796 (containsKey!413 lt!401071 key1!49))))

(declare-fun b!886314 () Bool)

(assert (=> b!886314 (= e!493385 (contains!4292 lt!401071 (tuple2!11933 key1!49 v1!38)))))

(declare-fun bm!39237 () Bool)

(assert (=> bm!39237 (= call!39240 call!39241)))

(declare-fun bm!39238 () Bool)

(assert (=> bm!39238 (= call!39241 call!39239)))

(assert (= (and d!109569 c!93413) b!886312))

(assert (= (and d!109569 (not c!93413)) b!886309))

(assert (= (and b!886309 c!93415) b!886305))

(assert (= (and b!886309 (not c!93415)) b!886307))

(assert (= (and b!886307 c!93414) b!886310))

(assert (= (and b!886307 (not c!93414)) b!886308))

(assert (= (or b!886310 b!886308) bm!39237))

(assert (= (or b!886305 bm!39237) bm!39238))

(assert (= (or b!886312 bm!39238) bm!39236))

(assert (= (and bm!39236 c!93416) b!886311))

(assert (= (and bm!39236 (not c!93416)) b!886306))

(assert (= (and d!109569 res!601795) b!886313))

(assert (= (and b!886313 res!601796) b!886314))

(declare-fun m!826279 () Bool)

(assert (=> b!886311 m!826279))

(declare-fun m!826285 () Bool)

(assert (=> bm!39236 m!826285))

(declare-fun m!826287 () Bool)

(assert (=> b!886313 m!826287))

(declare-fun m!826289 () Bool)

(assert (=> d!109569 m!826289))

(assert (=> d!109569 m!825929))

(declare-fun m!826291 () Bool)

(assert (=> b!886314 m!826291))

(assert (=> b!886067 d!109569))

(declare-fun lt!401072 () Bool)

(declare-fun d!109573 () Bool)

(assert (=> d!109573 (= lt!401072 (select (content!397 lt!401042) (tuple2!11933 key1!49 v2!16)))))

(declare-fun e!493386 () Bool)

(assert (=> d!109573 (= lt!401072 e!493386)))

(declare-fun res!601797 () Bool)

(assert (=> d!109573 (=> (not res!601797) (not e!493386))))

(assert (=> d!109573 (= res!601797 ((_ is Cons!17752) lt!401042))))

(assert (=> d!109573 (= (contains!4292 lt!401042 (tuple2!11933 key1!49 v2!16)) lt!401072)))

(declare-fun b!886315 () Bool)

(declare-fun e!493387 () Bool)

(assert (=> b!886315 (= e!493386 e!493387)))

(declare-fun res!601798 () Bool)

(assert (=> b!886315 (=> res!601798 e!493387)))

(assert (=> b!886315 (= res!601798 (= (h!18883 lt!401042) (tuple2!11933 key1!49 v2!16)))))

(declare-fun b!886316 () Bool)

(assert (=> b!886316 (= e!493387 (contains!4292 (t!25041 lt!401042) (tuple2!11933 key1!49 v2!16)))))

(assert (= (and d!109573 res!601797) b!886315))

(assert (= (and b!886315 (not res!601798)) b!886316))

(declare-fun m!826293 () Bool)

(assert (=> d!109573 m!826293))

(declare-fun m!826295 () Bool)

(assert (=> d!109573 m!826295))

(declare-fun m!826297 () Bool)

(assert (=> b!886316 m!826297))

(assert (=> b!886042 d!109573))

(declare-fun lt!401074 () Bool)

(declare-fun d!109577 () Bool)

(assert (=> d!109577 (= lt!401074 (select (content!397 lt!401045) (tuple2!11933 key1!49 v2!16)))))

(declare-fun e!493393 () Bool)

(assert (=> d!109577 (= lt!401074 e!493393)))

(declare-fun res!601801 () Bool)

(assert (=> d!109577 (=> (not res!601801) (not e!493393))))

(assert (=> d!109577 (= res!601801 ((_ is Cons!17752) lt!401045))))

(assert (=> d!109577 (= (contains!4292 lt!401045 (tuple2!11933 key1!49 v2!16)) lt!401074)))

(declare-fun b!886327 () Bool)

(declare-fun e!493394 () Bool)

(assert (=> b!886327 (= e!493393 e!493394)))

(declare-fun res!601802 () Bool)

(assert (=> b!886327 (=> res!601802 e!493394)))

(assert (=> b!886327 (= res!601802 (= (h!18883 lt!401045) (tuple2!11933 key1!49 v2!16)))))

(declare-fun b!886328 () Bool)

(assert (=> b!886328 (= e!493394 (contains!4292 (t!25041 lt!401045) (tuple2!11933 key1!49 v2!16)))))

(assert (= (and d!109577 res!601801) b!886327))

(assert (= (and b!886327 (not res!601802)) b!886328))

(declare-fun m!826299 () Bool)

(assert (=> d!109577 m!826299))

(declare-fun m!826301 () Bool)

(assert (=> d!109577 m!826301))

(declare-fun m!826303 () Bool)

(assert (=> b!886328 m!826303))

(assert (=> b!886080 d!109577))

(declare-fun b!886329 () Bool)

(declare-fun e!493395 () Bool)

(declare-fun tp!54382 () Bool)

(assert (=> b!886329 (= e!493395 (and tp_is_empty!17811 tp!54382))))

(assert (=> b!886105 (= tp!54378 e!493395)))

(assert (= (and b!886105 ((_ is Cons!17752) (t!25041 (t!25041 l!906)))) b!886329))

(check-sat (not d!109569) (not b!886182) (not d!109577) (not b!886328) (not b!886222) (not d!109487) (not d!109553) (not b!886206) (not b!886292) (not b!886173) (not b!886273) (not b!886171) (not b!886271) (not d!109573) (not bm!39227) (not b!886176) (not b!886198) (not b!886174) (not d!109525) (not b!886236) (not d!109549) (not b!886220) (not b!886329) (not b!886316) (not b!886218) tp_is_empty!17811 (not b!886311) (not b!886258) (not b!886194) (not b!886290) (not bm!39224) (not d!109521) (not b!886164) (not d!109475) (not d!109523) (not b!886294) (not b!886246) (not b!886254) (not b!886262) (not b!886202) (not b!886314) (not b!886235) (not b!886274) (not b!886204) (not bm!39236) (not b!886233) (not b!886313) (not d!109503) (not b!886250) (not bm!39218))
(check-sat)
