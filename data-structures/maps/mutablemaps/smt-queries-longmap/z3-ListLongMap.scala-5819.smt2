; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!75076 () Bool)

(assert start!75076)

(declare-fun res!601193 () Bool)

(declare-fun e!492499 () Bool)

(assert (=> start!75076 (=> (not res!601193) (not e!492499))))

(declare-datatypes ((B!1234 0))(
  ( (B!1235 (val!8923 Int)) )
))
(declare-datatypes ((tuple2!11866 0))(
  ( (tuple2!11867 (_1!5943 (_ BitVec 64)) (_2!5943 B!1234)) )
))
(declare-datatypes ((List!17723 0))(
  ( (Nil!17720) (Cons!17719 (h!18850 tuple2!11866) (t!25008 List!17723)) )
))
(declare-datatypes ((ListLongMap!10649 0))(
  ( (ListLongMap!10650 (toList!5340 List!17723)) )
))
(declare-fun lm!210 () ListLongMap!10649)

(declare-fun isStrictlySorted!462 (List!17723) Bool)

(assert (=> start!75076 (= res!601193 (isStrictlySorted!462 (toList!5340 lm!210)))))

(assert (=> start!75076 e!492499))

(declare-fun e!492500 () Bool)

(declare-fun inv!29370 (ListLongMap!10649) Bool)

(assert (=> start!75076 (and (inv!29370 lm!210) e!492500)))

(assert (=> start!75076 true))

(declare-fun tp_is_empty!17745 () Bool)

(assert (=> start!75076 tp_is_empty!17745))

(declare-fun b!884877 () Bool)

(declare-fun a!500 () (_ BitVec 64))

(declare-fun lt!400836 () tuple2!11866)

(declare-fun b1!76 () B!1234)

(declare-fun +!2537 (ListLongMap!10649 tuple2!11866) ListLongMap!10649)

(assert (=> b!884877 (= e!492499 (not (= (+!2537 lm!210 lt!400836) (+!2537 (+!2537 lm!210 (tuple2!11867 a!500 b1!76)) lt!400836))))))

(declare-fun b2!54 () B!1234)

(assert (=> b!884877 (= lt!400836 (tuple2!11867 a!500 b2!54))))

(declare-fun insertStrictlySorted!283 (List!17723 (_ BitVec 64) B!1234) List!17723)

(assert (=> b!884877 (= (insertStrictlySorted!283 (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76) a!500 b2!54) (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b2!54))))

(declare-datatypes ((Unit!30183 0))(
  ( (Unit!30184) )
))
(declare-fun lt!400835 () Unit!30183)

(declare-fun lemmaInsertStrictlySortedErasesIfSameKey!2 (List!17723 (_ BitVec 64) B!1234 B!1234) Unit!30183)

(assert (=> b!884877 (= lt!400835 (lemmaInsertStrictlySortedErasesIfSameKey!2 (toList!5340 lm!210) a!500 b1!76 b2!54))))

(declare-fun b!884878 () Bool)

(declare-fun tp!54216 () Bool)

(assert (=> b!884878 (= e!492500 tp!54216)))

(assert (= (and start!75076 res!601193) b!884877))

(assert (= start!75076 b!884878))

(declare-fun m!825227 () Bool)

(assert (=> start!75076 m!825227))

(declare-fun m!825229 () Bool)

(assert (=> start!75076 m!825229))

(declare-fun m!825231 () Bool)

(assert (=> b!884877 m!825231))

(declare-fun m!825233 () Bool)

(assert (=> b!884877 m!825233))

(declare-fun m!825235 () Bool)

(assert (=> b!884877 m!825235))

(declare-fun m!825237 () Bool)

(assert (=> b!884877 m!825237))

(declare-fun m!825239 () Bool)

(assert (=> b!884877 m!825239))

(declare-fun m!825241 () Bool)

(assert (=> b!884877 m!825241))

(assert (=> b!884877 m!825237))

(declare-fun m!825243 () Bool)

(assert (=> b!884877 m!825243))

(assert (=> b!884877 m!825233))

(check-sat (not start!75076) (not b!884877) (not b!884878) tp_is_empty!17745)
(check-sat)
(get-model)

(declare-fun d!109233 () Bool)

(declare-fun res!601207 () Bool)

(declare-fun e!492517 () Bool)

(assert (=> d!109233 (=> res!601207 e!492517)))

(get-info :version)

(assert (=> d!109233 (= res!601207 (or ((_ is Nil!17720) (toList!5340 lm!210)) ((_ is Nil!17720) (t!25008 (toList!5340 lm!210)))))))

(assert (=> d!109233 (= (isStrictlySorted!462 (toList!5340 lm!210)) e!492517)))

(declare-fun b!884895 () Bool)

(declare-fun e!492518 () Bool)

(assert (=> b!884895 (= e!492517 e!492518)))

(declare-fun res!601208 () Bool)

(assert (=> b!884895 (=> (not res!601208) (not e!492518))))

(assert (=> b!884895 (= res!601208 (bvslt (_1!5943 (h!18850 (toList!5340 lm!210))) (_1!5943 (h!18850 (t!25008 (toList!5340 lm!210))))))))

(declare-fun b!884896 () Bool)

(assert (=> b!884896 (= e!492518 (isStrictlySorted!462 (t!25008 (toList!5340 lm!210))))))

(assert (= (and d!109233 (not res!601207)) b!884895))

(assert (= (and b!884895 res!601208) b!884896))

(declare-fun m!825265 () Bool)

(assert (=> b!884896 m!825265))

(assert (=> start!75076 d!109233))

(declare-fun d!109239 () Bool)

(assert (=> d!109239 (= (inv!29370 lm!210) (isStrictlySorted!462 (toList!5340 lm!210)))))

(declare-fun bs!24800 () Bool)

(assert (= bs!24800 d!109239))

(assert (=> bs!24800 m!825227))

(assert (=> start!75076 d!109239))

(declare-fun d!109241 () Bool)

(declare-fun e!492561 () Bool)

(assert (=> d!109241 e!492561))

(declare-fun res!601226 () Bool)

(assert (=> d!109241 (=> (not res!601226) (not e!492561))))

(declare-fun lt!400851 () List!17723)

(assert (=> d!109241 (= res!601226 (isStrictlySorted!462 lt!400851))))

(declare-fun e!492560 () List!17723)

(assert (=> d!109241 (= lt!400851 e!492560)))

(declare-fun c!93138 () Bool)

(assert (=> d!109241 (= c!93138 (and ((_ is Cons!17719) (toList!5340 lm!210)) (bvslt (_1!5943 (h!18850 (toList!5340 lm!210))) a!500)))))

(assert (=> d!109241 (isStrictlySorted!462 (toList!5340 lm!210))))

(assert (=> d!109241 (= (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b2!54) lt!400851)))

(declare-fun e!492562 () List!17723)

(declare-fun bm!39044 () Bool)

(declare-fun call!39049 () List!17723)

(declare-fun $colon$colon!539 (List!17723 tuple2!11866) List!17723)

(assert (=> bm!39044 (= call!39049 ($colon$colon!539 e!492562 (ite c!93138 (h!18850 (toList!5340 lm!210)) (tuple2!11867 a!500 b2!54))))))

(declare-fun c!93139 () Bool)

(assert (=> bm!39044 (= c!93139 c!93138)))

(declare-fun b!884977 () Bool)

(declare-fun e!492559 () List!17723)

(declare-fun call!39047 () List!17723)

(assert (=> b!884977 (= e!492559 call!39047)))

(declare-fun b!884978 () Bool)

(declare-fun e!492563 () List!17723)

(declare-fun call!39048 () List!17723)

(assert (=> b!884978 (= e!492563 call!39048)))

(declare-fun b!884979 () Bool)

(assert (=> b!884979 (= e!492560 call!39049)))

(declare-fun b!884980 () Bool)

(declare-fun contains!4281 (List!17723 tuple2!11866) Bool)

(assert (=> b!884980 (= e!492561 (contains!4281 lt!400851 (tuple2!11867 a!500 b2!54)))))

(declare-fun b!884981 () Bool)

(declare-fun res!601225 () Bool)

(assert (=> b!884981 (=> (not res!601225) (not e!492561))))

(declare-fun containsKey!404 (List!17723 (_ BitVec 64)) Bool)

(assert (=> b!884981 (= res!601225 (containsKey!404 lt!400851 a!500))))

(declare-fun bm!39045 () Bool)

(assert (=> bm!39045 (= call!39048 call!39047)))

(declare-fun bm!39046 () Bool)

(assert (=> bm!39046 (= call!39047 call!39049)))

(declare-fun b!884982 () Bool)

(assert (=> b!884982 (= e!492562 (insertStrictlySorted!283 (t!25008 (toList!5340 lm!210)) a!500 b2!54))))

(declare-fun b!884983 () Bool)

(assert (=> b!884983 (= e!492560 e!492559)))

(declare-fun c!93136 () Bool)

(assert (=> b!884983 (= c!93136 (and ((_ is Cons!17719) (toList!5340 lm!210)) (= (_1!5943 (h!18850 (toList!5340 lm!210))) a!500)))))

(declare-fun b!884984 () Bool)

(declare-fun c!93137 () Bool)

(assert (=> b!884984 (= c!93137 (and ((_ is Cons!17719) (toList!5340 lm!210)) (bvsgt (_1!5943 (h!18850 (toList!5340 lm!210))) a!500)))))

(assert (=> b!884984 (= e!492559 e!492563)))

(declare-fun b!884985 () Bool)

(assert (=> b!884985 (= e!492563 call!39048)))

(declare-fun b!884986 () Bool)

(assert (=> b!884986 (= e!492562 (ite c!93136 (t!25008 (toList!5340 lm!210)) (ite c!93137 (Cons!17719 (h!18850 (toList!5340 lm!210)) (t!25008 (toList!5340 lm!210))) Nil!17720)))))

(assert (= (and d!109241 c!93138) b!884979))

(assert (= (and d!109241 (not c!93138)) b!884983))

(assert (= (and b!884983 c!93136) b!884977))

(assert (= (and b!884983 (not c!93136)) b!884984))

(assert (= (and b!884984 c!93137) b!884978))

(assert (= (and b!884984 (not c!93137)) b!884985))

(assert (= (or b!884978 b!884985) bm!39045))

(assert (= (or b!884977 bm!39045) bm!39046))

(assert (= (or b!884979 bm!39046) bm!39044))

(assert (= (and bm!39044 c!93139) b!884982))

(assert (= (and bm!39044 (not c!93139)) b!884986))

(assert (= (and d!109241 res!601226) b!884981))

(assert (= (and b!884981 res!601225) b!884980))

(declare-fun m!825287 () Bool)

(assert (=> bm!39044 m!825287))

(declare-fun m!825289 () Bool)

(assert (=> b!884982 m!825289))

(declare-fun m!825291 () Bool)

(assert (=> b!884980 m!825291))

(declare-fun m!825293 () Bool)

(assert (=> d!109241 m!825293))

(assert (=> d!109241 m!825227))

(declare-fun m!825295 () Bool)

(assert (=> b!884981 m!825295))

(assert (=> b!884877 d!109241))

(declare-fun d!109247 () Bool)

(declare-fun e!492573 () Bool)

(assert (=> d!109247 e!492573))

(declare-fun res!601245 () Bool)

(assert (=> d!109247 (=> (not res!601245) (not e!492573))))

(declare-fun lt!400892 () ListLongMap!10649)

(declare-fun contains!4283 (ListLongMap!10649 (_ BitVec 64)) Bool)

(assert (=> d!109247 (= res!601245 (contains!4283 lt!400892 (_1!5943 (tuple2!11867 a!500 b1!76))))))

(declare-fun lt!400891 () List!17723)

(assert (=> d!109247 (= lt!400892 (ListLongMap!10650 lt!400891))))

(declare-fun lt!400890 () Unit!30183)

(declare-fun lt!400893 () Unit!30183)

(assert (=> d!109247 (= lt!400890 lt!400893)))

(declare-datatypes ((Option!435 0))(
  ( (Some!434 (v!11390 B!1234)) (None!433) )
))
(declare-fun getValueByKey!429 (List!17723 (_ BitVec 64)) Option!435)

(assert (=> d!109247 (= (getValueByKey!429 lt!400891 (_1!5943 (tuple2!11867 a!500 b1!76))) (Some!434 (_2!5943 (tuple2!11867 a!500 b1!76))))))

(declare-fun lemmaContainsTupThenGetReturnValue!245 (List!17723 (_ BitVec 64) B!1234) Unit!30183)

(assert (=> d!109247 (= lt!400893 (lemmaContainsTupThenGetReturnValue!245 lt!400891 (_1!5943 (tuple2!11867 a!500 b1!76)) (_2!5943 (tuple2!11867 a!500 b1!76))))))

(assert (=> d!109247 (= lt!400891 (insertStrictlySorted!283 (toList!5340 lm!210) (_1!5943 (tuple2!11867 a!500 b1!76)) (_2!5943 (tuple2!11867 a!500 b1!76))))))

(assert (=> d!109247 (= (+!2537 lm!210 (tuple2!11867 a!500 b1!76)) lt!400892)))

(declare-fun b!885005 () Bool)

(declare-fun res!601246 () Bool)

(assert (=> b!885005 (=> (not res!601246) (not e!492573))))

(assert (=> b!885005 (= res!601246 (= (getValueByKey!429 (toList!5340 lt!400892) (_1!5943 (tuple2!11867 a!500 b1!76))) (Some!434 (_2!5943 (tuple2!11867 a!500 b1!76)))))))

(declare-fun b!885006 () Bool)

(assert (=> b!885006 (= e!492573 (contains!4281 (toList!5340 lt!400892) (tuple2!11867 a!500 b1!76)))))

(assert (= (and d!109247 res!601245) b!885005))

(assert (= (and b!885005 res!601246) b!885006))

(declare-fun m!825333 () Bool)

(assert (=> d!109247 m!825333))

(declare-fun m!825335 () Bool)

(assert (=> d!109247 m!825335))

(declare-fun m!825339 () Bool)

(assert (=> d!109247 m!825339))

(declare-fun m!825341 () Bool)

(assert (=> d!109247 m!825341))

(declare-fun m!825343 () Bool)

(assert (=> b!885005 m!825343))

(declare-fun m!825345 () Bool)

(assert (=> b!885006 m!825345))

(assert (=> b!884877 d!109247))

(declare-fun d!109257 () Bool)

(assert (=> d!109257 (= (insertStrictlySorted!283 (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76) a!500 b2!54) (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b2!54))))

(declare-fun lt!400907 () Unit!30183)

(declare-fun choose!1452 (List!17723 (_ BitVec 64) B!1234 B!1234) Unit!30183)

(assert (=> d!109257 (= lt!400907 (choose!1452 (toList!5340 lm!210) a!500 b1!76 b2!54))))

(assert (=> d!109257 (isStrictlySorted!462 (toList!5340 lm!210))))

(assert (=> d!109257 (= (lemmaInsertStrictlySortedErasesIfSameKey!2 (toList!5340 lm!210) a!500 b1!76 b2!54) lt!400907)))

(declare-fun bs!24803 () Bool)

(assert (= bs!24803 d!109257))

(assert (=> bs!24803 m!825233))

(assert (=> bs!24803 m!825241))

(declare-fun m!825393 () Bool)

(assert (=> bs!24803 m!825393))

(assert (=> bs!24803 m!825233))

(assert (=> bs!24803 m!825235))

(assert (=> bs!24803 m!825227))

(assert (=> b!884877 d!109257))

(declare-fun d!109269 () Bool)

(declare-fun e!492595 () Bool)

(assert (=> d!109269 e!492595))

(declare-fun res!601257 () Bool)

(assert (=> d!109269 (=> (not res!601257) (not e!492595))))

(declare-fun lt!400911 () ListLongMap!10649)

(assert (=> d!109269 (= res!601257 (contains!4283 lt!400911 (_1!5943 lt!400836)))))

(declare-fun lt!400910 () List!17723)

(assert (=> d!109269 (= lt!400911 (ListLongMap!10650 lt!400910))))

(declare-fun lt!400909 () Unit!30183)

(declare-fun lt!400912 () Unit!30183)

(assert (=> d!109269 (= lt!400909 lt!400912)))

(assert (=> d!109269 (= (getValueByKey!429 lt!400910 (_1!5943 lt!400836)) (Some!434 (_2!5943 lt!400836)))))

(assert (=> d!109269 (= lt!400912 (lemmaContainsTupThenGetReturnValue!245 lt!400910 (_1!5943 lt!400836) (_2!5943 lt!400836)))))

(assert (=> d!109269 (= lt!400910 (insertStrictlySorted!283 (toList!5340 lm!210) (_1!5943 lt!400836) (_2!5943 lt!400836)))))

(assert (=> d!109269 (= (+!2537 lm!210 lt!400836) lt!400911)))

(declare-fun b!885049 () Bool)

(declare-fun res!601258 () Bool)

(assert (=> b!885049 (=> (not res!601258) (not e!492595))))

(assert (=> b!885049 (= res!601258 (= (getValueByKey!429 (toList!5340 lt!400911) (_1!5943 lt!400836)) (Some!434 (_2!5943 lt!400836))))))

(declare-fun b!885050 () Bool)

(assert (=> b!885050 (= e!492595 (contains!4281 (toList!5340 lt!400911) lt!400836))))

(assert (= (and d!109269 res!601257) b!885049))

(assert (= (and b!885049 res!601258) b!885050))

(declare-fun m!825395 () Bool)

(assert (=> d!109269 m!825395))

(declare-fun m!825397 () Bool)

(assert (=> d!109269 m!825397))

(declare-fun m!825399 () Bool)

(assert (=> d!109269 m!825399))

(declare-fun m!825401 () Bool)

(assert (=> d!109269 m!825401))

(declare-fun m!825403 () Bool)

(assert (=> b!885049 m!825403))

(declare-fun m!825405 () Bool)

(assert (=> b!885050 m!825405))

(assert (=> b!884877 d!109269))

(declare-fun d!109271 () Bool)

(declare-fun e!492602 () Bool)

(assert (=> d!109271 e!492602))

(declare-fun res!601264 () Bool)

(assert (=> d!109271 (=> (not res!601264) (not e!492602))))

(declare-fun lt!400913 () List!17723)

(assert (=> d!109271 (= res!601264 (isStrictlySorted!462 lt!400913))))

(declare-fun e!492601 () List!17723)

(assert (=> d!109271 (= lt!400913 e!492601)))

(declare-fun c!93158 () Bool)

(assert (=> d!109271 (= c!93158 (and ((_ is Cons!17719) (toList!5340 lm!210)) (bvslt (_1!5943 (h!18850 (toList!5340 lm!210))) a!500)))))

(assert (=> d!109271 (isStrictlySorted!462 (toList!5340 lm!210))))

(assert (=> d!109271 (= (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76) lt!400913)))

(declare-fun call!39064 () List!17723)

(declare-fun e!492603 () List!17723)

(declare-fun bm!39059 () Bool)

(assert (=> bm!39059 (= call!39064 ($colon$colon!539 e!492603 (ite c!93158 (h!18850 (toList!5340 lm!210)) (tuple2!11867 a!500 b1!76))))))

(declare-fun c!93159 () Bool)

(assert (=> bm!39059 (= c!93159 c!93158)))

(declare-fun b!885055 () Bool)

(declare-fun e!492600 () List!17723)

(declare-fun call!39062 () List!17723)

(assert (=> b!885055 (= e!492600 call!39062)))

(declare-fun b!885056 () Bool)

(declare-fun e!492604 () List!17723)

(declare-fun call!39063 () List!17723)

(assert (=> b!885056 (= e!492604 call!39063)))

(declare-fun b!885057 () Bool)

(assert (=> b!885057 (= e!492601 call!39064)))

(declare-fun b!885058 () Bool)

(assert (=> b!885058 (= e!492602 (contains!4281 lt!400913 (tuple2!11867 a!500 b1!76)))))

(declare-fun b!885059 () Bool)

(declare-fun res!601263 () Bool)

(assert (=> b!885059 (=> (not res!601263) (not e!492602))))

(assert (=> b!885059 (= res!601263 (containsKey!404 lt!400913 a!500))))

(declare-fun bm!39060 () Bool)

(assert (=> bm!39060 (= call!39063 call!39062)))

(declare-fun bm!39061 () Bool)

(assert (=> bm!39061 (= call!39062 call!39064)))

(declare-fun b!885060 () Bool)

(assert (=> b!885060 (= e!492603 (insertStrictlySorted!283 (t!25008 (toList!5340 lm!210)) a!500 b1!76))))

(declare-fun b!885061 () Bool)

(assert (=> b!885061 (= e!492601 e!492600)))

(declare-fun c!93156 () Bool)

(assert (=> b!885061 (= c!93156 (and ((_ is Cons!17719) (toList!5340 lm!210)) (= (_1!5943 (h!18850 (toList!5340 lm!210))) a!500)))))

(declare-fun b!885062 () Bool)

(declare-fun c!93157 () Bool)

(assert (=> b!885062 (= c!93157 (and ((_ is Cons!17719) (toList!5340 lm!210)) (bvsgt (_1!5943 (h!18850 (toList!5340 lm!210))) a!500)))))

(assert (=> b!885062 (= e!492600 e!492604)))

(declare-fun b!885063 () Bool)

(assert (=> b!885063 (= e!492604 call!39063)))

(declare-fun b!885064 () Bool)

(assert (=> b!885064 (= e!492603 (ite c!93156 (t!25008 (toList!5340 lm!210)) (ite c!93157 (Cons!17719 (h!18850 (toList!5340 lm!210)) (t!25008 (toList!5340 lm!210))) Nil!17720)))))

(assert (= (and d!109271 c!93158) b!885057))

(assert (= (and d!109271 (not c!93158)) b!885061))

(assert (= (and b!885061 c!93156) b!885055))

(assert (= (and b!885061 (not c!93156)) b!885062))

(assert (= (and b!885062 c!93157) b!885056))

(assert (= (and b!885062 (not c!93157)) b!885063))

(assert (= (or b!885056 b!885063) bm!39060))

(assert (= (or b!885055 bm!39060) bm!39061))

(assert (= (or b!885057 bm!39061) bm!39059))

(assert (= (and bm!39059 c!93159) b!885060))

(assert (= (and bm!39059 (not c!93159)) b!885064))

(assert (= (and d!109271 res!601264) b!885059))

(assert (= (and b!885059 res!601263) b!885058))

(declare-fun m!825431 () Bool)

(assert (=> bm!39059 m!825431))

(declare-fun m!825433 () Bool)

(assert (=> b!885060 m!825433))

(declare-fun m!825435 () Bool)

(assert (=> b!885058 m!825435))

(declare-fun m!825437 () Bool)

(assert (=> d!109271 m!825437))

(assert (=> d!109271 m!825227))

(declare-fun m!825439 () Bool)

(assert (=> b!885059 m!825439))

(assert (=> b!884877 d!109271))

(declare-fun d!109277 () Bool)

(declare-fun e!492611 () Bool)

(assert (=> d!109277 e!492611))

(declare-fun res!601272 () Bool)

(assert (=> d!109277 (=> (not res!601272) (not e!492611))))

(declare-fun lt!400922 () List!17723)

(assert (=> d!109277 (= res!601272 (isStrictlySorted!462 lt!400922))))

(declare-fun e!492610 () List!17723)

(assert (=> d!109277 (= lt!400922 e!492610)))

(declare-fun c!93162 () Bool)

(assert (=> d!109277 (= c!93162 (and ((_ is Cons!17719) (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76)) (bvslt (_1!5943 (h!18850 (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76))) a!500)))))

(assert (=> d!109277 (isStrictlySorted!462 (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76))))

(assert (=> d!109277 (= (insertStrictlySorted!283 (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76) a!500 b2!54) lt!400922)))

(declare-fun call!39067 () List!17723)

(declare-fun bm!39062 () Bool)

(declare-fun e!492612 () List!17723)

(assert (=> bm!39062 (= call!39067 ($colon$colon!539 e!492612 (ite c!93162 (h!18850 (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76)) (tuple2!11867 a!500 b2!54))))))

(declare-fun c!93163 () Bool)

(assert (=> bm!39062 (= c!93163 c!93162)))

(declare-fun b!885071 () Bool)

(declare-fun e!492609 () List!17723)

(declare-fun call!39065 () List!17723)

(assert (=> b!885071 (= e!492609 call!39065)))

(declare-fun b!885072 () Bool)

(declare-fun e!492613 () List!17723)

(declare-fun call!39066 () List!17723)

(assert (=> b!885072 (= e!492613 call!39066)))

(declare-fun b!885073 () Bool)

(assert (=> b!885073 (= e!492610 call!39067)))

(declare-fun b!885074 () Bool)

(assert (=> b!885074 (= e!492611 (contains!4281 lt!400922 (tuple2!11867 a!500 b2!54)))))

(declare-fun b!885075 () Bool)

(declare-fun res!601271 () Bool)

(assert (=> b!885075 (=> (not res!601271) (not e!492611))))

(assert (=> b!885075 (= res!601271 (containsKey!404 lt!400922 a!500))))

(declare-fun bm!39063 () Bool)

(assert (=> bm!39063 (= call!39066 call!39065)))

(declare-fun bm!39064 () Bool)

(assert (=> bm!39064 (= call!39065 call!39067)))

(declare-fun b!885076 () Bool)

(assert (=> b!885076 (= e!492612 (insertStrictlySorted!283 (t!25008 (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76)) a!500 b2!54))))

(declare-fun b!885077 () Bool)

(assert (=> b!885077 (= e!492610 e!492609)))

(declare-fun c!93160 () Bool)

(assert (=> b!885077 (= c!93160 (and ((_ is Cons!17719) (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76)) (= (_1!5943 (h!18850 (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76))) a!500)))))

(declare-fun b!885078 () Bool)

(declare-fun c!93161 () Bool)

(assert (=> b!885078 (= c!93161 (and ((_ is Cons!17719) (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76)) (bvsgt (_1!5943 (h!18850 (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76))) a!500)))))

(assert (=> b!885078 (= e!492609 e!492613)))

(declare-fun b!885079 () Bool)

(assert (=> b!885079 (= e!492613 call!39066)))

(declare-fun b!885080 () Bool)

(assert (=> b!885080 (= e!492612 (ite c!93160 (t!25008 (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76)) (ite c!93161 (Cons!17719 (h!18850 (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76)) (t!25008 (insertStrictlySorted!283 (toList!5340 lm!210) a!500 b1!76))) Nil!17720)))))

(assert (= (and d!109277 c!93162) b!885073))

(assert (= (and d!109277 (not c!93162)) b!885077))

(assert (= (and b!885077 c!93160) b!885071))

(assert (= (and b!885077 (not c!93160)) b!885078))

(assert (= (and b!885078 c!93161) b!885072))

(assert (= (and b!885078 (not c!93161)) b!885079))

(assert (= (or b!885072 b!885079) bm!39063))

(assert (= (or b!885071 bm!39063) bm!39064))

(assert (= (or b!885073 bm!39064) bm!39062))

(assert (= (and bm!39062 c!93163) b!885076))

(assert (= (and bm!39062 (not c!93163)) b!885080))

(assert (= (and d!109277 res!601272) b!885075))

(assert (= (and b!885075 res!601271) b!885074))

(declare-fun m!825455 () Bool)

(assert (=> bm!39062 m!825455))

(declare-fun m!825457 () Bool)

(assert (=> b!885076 m!825457))

(declare-fun m!825459 () Bool)

(assert (=> b!885074 m!825459))

(declare-fun m!825461 () Bool)

(assert (=> d!109277 m!825461))

(assert (=> d!109277 m!825233))

(declare-fun m!825463 () Bool)

(assert (=> d!109277 m!825463))

(declare-fun m!825465 () Bool)

(assert (=> b!885075 m!825465))

(assert (=> b!884877 d!109277))

(declare-fun d!109281 () Bool)

(declare-fun e!492619 () Bool)

(assert (=> d!109281 e!492619))

(declare-fun res!601273 () Bool)

(assert (=> d!109281 (=> (not res!601273) (not e!492619))))

(declare-fun lt!400925 () ListLongMap!10649)

(assert (=> d!109281 (= res!601273 (contains!4283 lt!400925 (_1!5943 lt!400836)))))

(declare-fun lt!400924 () List!17723)

(assert (=> d!109281 (= lt!400925 (ListLongMap!10650 lt!400924))))

(declare-fun lt!400923 () Unit!30183)

(declare-fun lt!400926 () Unit!30183)

(assert (=> d!109281 (= lt!400923 lt!400926)))

(assert (=> d!109281 (= (getValueByKey!429 lt!400924 (_1!5943 lt!400836)) (Some!434 (_2!5943 lt!400836)))))

(assert (=> d!109281 (= lt!400926 (lemmaContainsTupThenGetReturnValue!245 lt!400924 (_1!5943 lt!400836) (_2!5943 lt!400836)))))

(assert (=> d!109281 (= lt!400924 (insertStrictlySorted!283 (toList!5340 (+!2537 lm!210 (tuple2!11867 a!500 b1!76))) (_1!5943 lt!400836) (_2!5943 lt!400836)))))

(assert (=> d!109281 (= (+!2537 (+!2537 lm!210 (tuple2!11867 a!500 b1!76)) lt!400836) lt!400925)))

(declare-fun b!885090 () Bool)

(declare-fun res!601274 () Bool)

(assert (=> b!885090 (=> (not res!601274) (not e!492619))))

(assert (=> b!885090 (= res!601274 (= (getValueByKey!429 (toList!5340 lt!400925) (_1!5943 lt!400836)) (Some!434 (_2!5943 lt!400836))))))

(declare-fun b!885091 () Bool)

(assert (=> b!885091 (= e!492619 (contains!4281 (toList!5340 lt!400925) lt!400836))))

(assert (= (and d!109281 res!601273) b!885090))

(assert (= (and b!885090 res!601274) b!885091))

(declare-fun m!825467 () Bool)

(assert (=> d!109281 m!825467))

(declare-fun m!825469 () Bool)

(assert (=> d!109281 m!825469))

(declare-fun m!825471 () Bool)

(assert (=> d!109281 m!825471))

(declare-fun m!825473 () Bool)

(assert (=> d!109281 m!825473))

(declare-fun m!825475 () Bool)

(assert (=> b!885090 m!825475))

(declare-fun m!825477 () Bool)

(assert (=> b!885091 m!825477))

(assert (=> b!884877 d!109281))

(declare-fun b!885097 () Bool)

(declare-fun e!492623 () Bool)

(declare-fun tp!54228 () Bool)

(assert (=> b!885097 (= e!492623 (and tp_is_empty!17745 tp!54228))))

(assert (=> b!884878 (= tp!54216 e!492623)))

(assert (= (and b!884878 ((_ is Cons!17719) (toList!5340 lm!210))) b!885097))

(check-sat (not b!885050) (not d!109271) (not d!109257) (not b!884982) (not b!885091) (not d!109239) (not b!885076) (not b!885049) (not b!884896) (not b!885060) (not bm!39044) (not d!109277) (not bm!39059) (not b!884980) (not b!885006) (not bm!39062) (not b!885074) (not d!109241) (not d!109269) (not b!885090) (not b!885058) (not d!109247) (not b!885005) (not b!885075) (not d!109281) (not b!885097) (not b!885059) (not b!884981) tp_is_empty!17745)
(check-sat)
