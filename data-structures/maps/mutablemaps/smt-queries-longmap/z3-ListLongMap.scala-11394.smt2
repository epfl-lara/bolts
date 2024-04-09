; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!132594 () Bool)

(assert start!132594)

(declare-datatypes ((B!2242 0))(
  ( (B!2243 (val!19207 Int)) )
))
(declare-datatypes ((tuple2!24930 0))(
  ( (tuple2!24931 (_1!12475 (_ BitVec 64)) (_2!12475 B!2242)) )
))
(declare-datatypes ((List!36387 0))(
  ( (Nil!36384) (Cons!36383 (h!37830 tuple2!24930) (t!51115 List!36387)) )
))
(declare-datatypes ((ListLongMap!22551 0))(
  ( (ListLongMap!22552 (toList!11291 List!36387)) )
))
(declare-fun lm!249 () ListLongMap!22551)

(declare-fun b!1554072 () Bool)

(declare-fun lt!669884 () List!36387)

(declare-fun e!865362 () Bool)

(declare-fun a0!49 () (_ BitVec 64))

(declare-datatypes ((Option!829 0))(
  ( (Some!828 (v!22009 B!2242)) (None!827) )
))
(declare-fun getValueByKey!754 (List!36387 (_ BitVec 64)) Option!829)

(assert (=> b!1554072 (= e!865362 (= (getValueByKey!754 lt!669884 a0!49) (getValueByKey!754 (toList!11291 lm!249) a0!49)))))

(declare-fun res!1063702 () Bool)

(declare-fun e!865360 () Bool)

(assert (=> start!132594 (=> (not res!1063702) (not e!865360))))

(declare-fun contains!10166 (ListLongMap!22551 (_ BitVec 64)) Bool)

(assert (=> start!132594 (= res!1063702 (contains!10166 lm!249 a0!49))))

(assert (=> start!132594 e!865360))

(declare-fun e!865361 () Bool)

(declare-fun inv!57344 (ListLongMap!22551) Bool)

(assert (=> start!132594 (and (inv!57344 lm!249) e!865361)))

(assert (=> start!132594 true))

(declare-fun tp_is_empty!38253 () Bool)

(assert (=> start!132594 tp_is_empty!38253))

(declare-fun b!1554073 () Bool)

(declare-fun isStrictlySorted!900 (List!36387) Bool)

(assert (=> b!1554073 (= e!865360 (not (isStrictlySorted!900 (toList!11291 lm!249))))))

(assert (=> b!1554073 e!865362))

(declare-fun res!1063703 () Bool)

(assert (=> b!1554073 (=> (not res!1063703) (not e!865362))))

(declare-fun containsKey!772 (List!36387 (_ BitVec 64)) Bool)

(assert (=> b!1554073 (= res!1063703 (containsKey!772 lt!669884 a0!49))))

(declare-fun a!523 () (_ BitVec 64))

(declare-fun b!96 () B!2242)

(declare-fun insertStrictlySorted!514 (List!36387 (_ BitVec 64) B!2242) List!36387)

(assert (=> b!1554073 (= lt!669884 (insertStrictlySorted!514 (toList!11291 lm!249) a!523 b!96))))

(declare-datatypes ((Unit!51722 0))(
  ( (Unit!51723) )
))
(declare-fun lt!669883 () Unit!51722)

(declare-fun lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!11 (List!36387 (_ BitVec 64) B!2242 (_ BitVec 64)) Unit!51722)

(assert (=> b!1554073 (= lt!669883 (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!11 (toList!11291 lm!249) a!523 b!96 a0!49))))

(declare-fun b!1554074 () Bool)

(declare-fun res!1063704 () Bool)

(assert (=> b!1554074 (=> (not res!1063704) (not e!865360))))

(assert (=> b!1554074 (= res!1063704 (not (= a0!49 a!523)))))

(declare-fun b!1554075 () Bool)

(declare-fun res!1063701 () Bool)

(assert (=> b!1554075 (=> (not res!1063701) (not e!865360))))

(assert (=> b!1554075 (= res!1063701 (containsKey!772 (toList!11291 lm!249) a0!49))))

(declare-fun b!1554076 () Bool)

(declare-fun tp!112186 () Bool)

(assert (=> b!1554076 (= e!865361 tp!112186)))

(assert (= (and start!132594 res!1063702) b!1554074))

(assert (= (and b!1554074 res!1063704) b!1554075))

(assert (= (and b!1554075 res!1063701) b!1554073))

(assert (= (and b!1554073 res!1063703) b!1554072))

(assert (= start!132594 b!1554076))

(declare-fun m!1432569 () Bool)

(assert (=> b!1554072 m!1432569))

(declare-fun m!1432571 () Bool)

(assert (=> b!1554072 m!1432571))

(declare-fun m!1432573 () Bool)

(assert (=> start!132594 m!1432573))

(declare-fun m!1432575 () Bool)

(assert (=> start!132594 m!1432575))

(declare-fun m!1432577 () Bool)

(assert (=> b!1554073 m!1432577))

(declare-fun m!1432579 () Bool)

(assert (=> b!1554073 m!1432579))

(declare-fun m!1432581 () Bool)

(assert (=> b!1554073 m!1432581))

(declare-fun m!1432583 () Bool)

(assert (=> b!1554073 m!1432583))

(declare-fun m!1432585 () Bool)

(assert (=> b!1554075 m!1432585))

(check-sat (not b!1554072) (not b!1554073) (not start!132594) tp_is_empty!38253 (not b!1554075) (not b!1554076))
(check-sat)
(get-model)

(declare-fun d!161619 () Bool)

(declare-fun res!1063725 () Bool)

(declare-fun e!865384 () Bool)

(assert (=> d!161619 (=> res!1063725 e!865384)))

(get-info :version)

(assert (=> d!161619 (= res!1063725 (and ((_ is Cons!36383) (toList!11291 lm!249)) (= (_1!12475 (h!37830 (toList!11291 lm!249))) a0!49)))))

(assert (=> d!161619 (= (containsKey!772 (toList!11291 lm!249) a0!49) e!865384)))

(declare-fun b!1554108 () Bool)

(declare-fun e!865385 () Bool)

(assert (=> b!1554108 (= e!865384 e!865385)))

(declare-fun res!1063726 () Bool)

(assert (=> b!1554108 (=> (not res!1063726) (not e!865385))))

(assert (=> b!1554108 (= res!1063726 (and (or (not ((_ is Cons!36383) (toList!11291 lm!249))) (bvsle (_1!12475 (h!37830 (toList!11291 lm!249))) a0!49)) ((_ is Cons!36383) (toList!11291 lm!249)) (bvslt (_1!12475 (h!37830 (toList!11291 lm!249))) a0!49)))))

(declare-fun b!1554109 () Bool)

(assert (=> b!1554109 (= e!865385 (containsKey!772 (t!51115 (toList!11291 lm!249)) a0!49))))

(assert (= (and d!161619 (not res!1063725)) b!1554108))

(assert (= (and b!1554108 res!1063726) b!1554109))

(declare-fun m!1432605 () Bool)

(assert (=> b!1554109 m!1432605))

(assert (=> b!1554075 d!161619))

(declare-fun d!161625 () Bool)

(declare-fun res!1063737 () Bool)

(declare-fun e!865400 () Bool)

(assert (=> d!161625 (=> res!1063737 e!865400)))

(assert (=> d!161625 (= res!1063737 (or ((_ is Nil!36384) (toList!11291 lm!249)) ((_ is Nil!36384) (t!51115 (toList!11291 lm!249)))))))

(assert (=> d!161625 (= (isStrictlySorted!900 (toList!11291 lm!249)) e!865400)))

(declare-fun b!1554128 () Bool)

(declare-fun e!865401 () Bool)

(assert (=> b!1554128 (= e!865400 e!865401)))

(declare-fun res!1063738 () Bool)

(assert (=> b!1554128 (=> (not res!1063738) (not e!865401))))

(assert (=> b!1554128 (= res!1063738 (bvslt (_1!12475 (h!37830 (toList!11291 lm!249))) (_1!12475 (h!37830 (t!51115 (toList!11291 lm!249))))))))

(declare-fun b!1554129 () Bool)

(assert (=> b!1554129 (= e!865401 (isStrictlySorted!900 (t!51115 (toList!11291 lm!249))))))

(assert (= (and d!161625 (not res!1063737)) b!1554128))

(assert (= (and b!1554128 res!1063738) b!1554129))

(declare-fun m!1432613 () Bool)

(assert (=> b!1554129 m!1432613))

(assert (=> b!1554073 d!161625))

(declare-fun d!161633 () Bool)

(declare-fun res!1063743 () Bool)

(declare-fun e!865406 () Bool)

(assert (=> d!161633 (=> res!1063743 e!865406)))

(assert (=> d!161633 (= res!1063743 (and ((_ is Cons!36383) lt!669884) (= (_1!12475 (h!37830 lt!669884)) a0!49)))))

(assert (=> d!161633 (= (containsKey!772 lt!669884 a0!49) e!865406)))

(declare-fun b!1554134 () Bool)

(declare-fun e!865407 () Bool)

(assert (=> b!1554134 (= e!865406 e!865407)))

(declare-fun res!1063744 () Bool)

(assert (=> b!1554134 (=> (not res!1063744) (not e!865407))))

(assert (=> b!1554134 (= res!1063744 (and (or (not ((_ is Cons!36383) lt!669884)) (bvsle (_1!12475 (h!37830 lt!669884)) a0!49)) ((_ is Cons!36383) lt!669884) (bvslt (_1!12475 (h!37830 lt!669884)) a0!49)))))

(declare-fun b!1554135 () Bool)

(assert (=> b!1554135 (= e!865407 (containsKey!772 (t!51115 lt!669884) a0!49))))

(assert (= (and d!161633 (not res!1063743)) b!1554134))

(assert (= (and b!1554134 res!1063744) b!1554135))

(declare-fun m!1432615 () Bool)

(assert (=> b!1554135 m!1432615))

(assert (=> b!1554073 d!161633))

(declare-fun e!865452 () List!36387)

(declare-fun c!143319 () Bool)

(declare-fun call!71418 () List!36387)

(declare-fun bm!71413 () Bool)

(declare-fun $colon$colon!950 (List!36387 tuple2!24930) List!36387)

(assert (=> bm!71413 (= call!71418 ($colon$colon!950 e!865452 (ite c!143319 (h!37830 (toList!11291 lm!249)) (tuple2!24931 a!523 b!96))))))

(declare-fun c!143318 () Bool)

(assert (=> bm!71413 (= c!143318 c!143319)))

(declare-fun b!1554204 () Bool)

(declare-fun e!865448 () List!36387)

(assert (=> b!1554204 (= e!865448 call!71418)))

(declare-fun b!1554205 () Bool)

(declare-fun e!865450 () List!36387)

(declare-fun call!71417 () List!36387)

(assert (=> b!1554205 (= e!865450 call!71417)))

(declare-fun b!1554206 () Bool)

(declare-fun e!865449 () List!36387)

(declare-fun call!71416 () List!36387)

(assert (=> b!1554206 (= e!865449 call!71416)))

(declare-fun b!1554207 () Bool)

(declare-fun res!1063765 () Bool)

(declare-fun e!865451 () Bool)

(assert (=> b!1554207 (=> (not res!1063765) (not e!865451))))

(declare-fun lt!669897 () List!36387)

(assert (=> b!1554207 (= res!1063765 (containsKey!772 lt!669897 a!523))))

(declare-fun b!1554208 () Bool)

(declare-fun c!143321 () Bool)

(assert (=> b!1554208 (= c!143321 (and ((_ is Cons!36383) (toList!11291 lm!249)) (bvsgt (_1!12475 (h!37830 (toList!11291 lm!249))) a!523)))))

(assert (=> b!1554208 (= e!865450 e!865449)))

(declare-fun b!1554209 () Bool)

(assert (=> b!1554209 (= e!865452 (insertStrictlySorted!514 (t!51115 (toList!11291 lm!249)) a!523 b!96))))

(declare-fun c!143320 () Bool)

(declare-fun b!1554211 () Bool)

(assert (=> b!1554211 (= e!865452 (ite c!143320 (t!51115 (toList!11291 lm!249)) (ite c!143321 (Cons!36383 (h!37830 (toList!11291 lm!249)) (t!51115 (toList!11291 lm!249))) Nil!36384)))))

(declare-fun b!1554212 () Bool)

(assert (=> b!1554212 (= e!865448 e!865450)))

(assert (=> b!1554212 (= c!143320 (and ((_ is Cons!36383) (toList!11291 lm!249)) (= (_1!12475 (h!37830 (toList!11291 lm!249))) a!523)))))

(declare-fun bm!71414 () Bool)

(assert (=> bm!71414 (= call!71416 call!71417)))

(declare-fun b!1554213 () Bool)

(assert (=> b!1554213 (= e!865449 call!71416)))

(declare-fun bm!71415 () Bool)

(assert (=> bm!71415 (= call!71417 call!71418)))

(declare-fun d!161635 () Bool)

(assert (=> d!161635 e!865451))

(declare-fun res!1063766 () Bool)

(assert (=> d!161635 (=> (not res!1063766) (not e!865451))))

(assert (=> d!161635 (= res!1063766 (isStrictlySorted!900 lt!669897))))

(assert (=> d!161635 (= lt!669897 e!865448)))

(assert (=> d!161635 (= c!143319 (and ((_ is Cons!36383) (toList!11291 lm!249)) (bvslt (_1!12475 (h!37830 (toList!11291 lm!249))) a!523)))))

(assert (=> d!161635 (isStrictlySorted!900 (toList!11291 lm!249))))

(assert (=> d!161635 (= (insertStrictlySorted!514 (toList!11291 lm!249) a!523 b!96) lt!669897)))

(declare-fun b!1554210 () Bool)

(declare-fun contains!10169 (List!36387 tuple2!24930) Bool)

(assert (=> b!1554210 (= e!865451 (contains!10169 lt!669897 (tuple2!24931 a!523 b!96)))))

(assert (= (and d!161635 c!143319) b!1554204))

(assert (= (and d!161635 (not c!143319)) b!1554212))

(assert (= (and b!1554212 c!143320) b!1554205))

(assert (= (and b!1554212 (not c!143320)) b!1554208))

(assert (= (and b!1554208 c!143321) b!1554206))

(assert (= (and b!1554208 (not c!143321)) b!1554213))

(assert (= (or b!1554206 b!1554213) bm!71414))

(assert (= (or b!1554205 bm!71414) bm!71415))

(assert (= (or b!1554204 bm!71415) bm!71413))

(assert (= (and bm!71413 c!143318) b!1554209))

(assert (= (and bm!71413 (not c!143318)) b!1554211))

(assert (= (and d!161635 res!1063766) b!1554207))

(assert (= (and b!1554207 res!1063765) b!1554210))

(declare-fun m!1432625 () Bool)

(assert (=> d!161635 m!1432625))

(assert (=> d!161635 m!1432577))

(declare-fun m!1432627 () Bool)

(assert (=> b!1554207 m!1432627))

(declare-fun m!1432629 () Bool)

(assert (=> b!1554210 m!1432629))

(declare-fun m!1432631 () Bool)

(assert (=> b!1554209 m!1432631))

(declare-fun m!1432633 () Bool)

(assert (=> bm!71413 m!1432633))

(assert (=> b!1554073 d!161635))

(declare-fun d!161645 () Bool)

(declare-fun e!865474 () Bool)

(assert (=> d!161645 e!865474))

(declare-fun res!1063784 () Bool)

(assert (=> d!161645 (=> (not res!1063784) (not e!865474))))

(assert (=> d!161645 (= res!1063784 (= (containsKey!772 (insertStrictlySorted!514 (toList!11291 lm!249) a!523 b!96) a0!49) (containsKey!772 (toList!11291 lm!249) a0!49)))))

(declare-fun lt!669904 () Unit!51722)

(declare-fun choose!2054 (List!36387 (_ BitVec 64) B!2242 (_ BitVec 64)) Unit!51722)

(assert (=> d!161645 (= lt!669904 (choose!2054 (toList!11291 lm!249) a!523 b!96 a0!49))))

(declare-fun e!865473 () Bool)

(assert (=> d!161645 e!865473))

(declare-fun res!1063783 () Bool)

(assert (=> d!161645 (=> (not res!1063783) (not e!865473))))

(assert (=> d!161645 (= res!1063783 (isStrictlySorted!900 (toList!11291 lm!249)))))

(assert (=> d!161645 (= (lemmaInsertStrictlySortedDoesNotModifyOtherKeyValues!11 (toList!11291 lm!249) a!523 b!96 a0!49) lt!669904)))

(declare-fun b!1554246 () Bool)

(assert (=> b!1554246 (= e!865473 (not (= a!523 a0!49)))))

(declare-fun b!1554247 () Bool)

(assert (=> b!1554247 (= e!865474 (= (getValueByKey!754 (insertStrictlySorted!514 (toList!11291 lm!249) a!523 b!96) a0!49) (getValueByKey!754 (toList!11291 lm!249) a0!49)))))

(assert (= (and d!161645 res!1063783) b!1554246))

(assert (= (and d!161645 res!1063784) b!1554247))

(assert (=> d!161645 m!1432581))

(declare-fun m!1432655 () Bool)

(assert (=> d!161645 m!1432655))

(assert (=> d!161645 m!1432577))

(declare-fun m!1432657 () Bool)

(assert (=> d!161645 m!1432657))

(assert (=> d!161645 m!1432585))

(assert (=> d!161645 m!1432581))

(assert (=> b!1554247 m!1432581))

(assert (=> b!1554247 m!1432581))

(declare-fun m!1432659 () Bool)

(assert (=> b!1554247 m!1432659))

(assert (=> b!1554247 m!1432571))

(assert (=> b!1554073 d!161645))

(declare-fun d!161651 () Bool)

(declare-fun e!865492 () Bool)

(assert (=> d!161651 e!865492))

(declare-fun res!1063797 () Bool)

(assert (=> d!161651 (=> res!1063797 e!865492)))

(declare-fun lt!669925 () Bool)

(assert (=> d!161651 (= res!1063797 (not lt!669925))))

(declare-fun lt!669926 () Bool)

(assert (=> d!161651 (= lt!669925 lt!669926)))

(declare-fun lt!669927 () Unit!51722)

(declare-fun e!865491 () Unit!51722)

(assert (=> d!161651 (= lt!669927 e!865491)))

(declare-fun c!143334 () Bool)

(assert (=> d!161651 (= c!143334 lt!669926)))

(assert (=> d!161651 (= lt!669926 (containsKey!772 (toList!11291 lm!249) a0!49))))

(assert (=> d!161651 (= (contains!10166 lm!249 a0!49) lt!669925)))

(declare-fun b!1554268 () Bool)

(declare-fun lt!669928 () Unit!51722)

(assert (=> b!1554268 (= e!865491 lt!669928)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!513 (List!36387 (_ BitVec 64)) Unit!51722)

(assert (=> b!1554268 (= lt!669928 (lemmaContainsKeyImpliesGetValueByKeyDefined!513 (toList!11291 lm!249) a0!49))))

(declare-fun isDefined!562 (Option!829) Bool)

(assert (=> b!1554268 (isDefined!562 (getValueByKey!754 (toList!11291 lm!249) a0!49))))

(declare-fun b!1554269 () Bool)

(declare-fun Unit!51726 () Unit!51722)

(assert (=> b!1554269 (= e!865491 Unit!51726)))

(declare-fun b!1554270 () Bool)

(assert (=> b!1554270 (= e!865492 (isDefined!562 (getValueByKey!754 (toList!11291 lm!249) a0!49)))))

(assert (= (and d!161651 c!143334) b!1554268))

(assert (= (and d!161651 (not c!143334)) b!1554269))

(assert (= (and d!161651 (not res!1063797)) b!1554270))

(assert (=> d!161651 m!1432585))

(declare-fun m!1432673 () Bool)

(assert (=> b!1554268 m!1432673))

(assert (=> b!1554268 m!1432571))

(assert (=> b!1554268 m!1432571))

(declare-fun m!1432675 () Bool)

(assert (=> b!1554268 m!1432675))

(assert (=> b!1554270 m!1432571))

(assert (=> b!1554270 m!1432571))

(assert (=> b!1554270 m!1432675))

(assert (=> start!132594 d!161651))

(declare-fun d!161657 () Bool)

(assert (=> d!161657 (= (inv!57344 lm!249) (isStrictlySorted!900 (toList!11291 lm!249)))))

(declare-fun bs!44670 () Bool)

(assert (= bs!44670 d!161657))

(assert (=> bs!44670 m!1432577))

(assert (=> start!132594 d!161657))

(declare-fun b!1554301 () Bool)

(declare-fun e!865510 () Option!829)

(assert (=> b!1554301 (= e!865510 (getValueByKey!754 (t!51115 lt!669884) a0!49))))

(declare-fun b!1554302 () Bool)

(assert (=> b!1554302 (= e!865510 None!827)))

(declare-fun d!161661 () Bool)

(declare-fun c!143347 () Bool)

(assert (=> d!161661 (= c!143347 (and ((_ is Cons!36383) lt!669884) (= (_1!12475 (h!37830 lt!669884)) a0!49)))))

(declare-fun e!865509 () Option!829)

(assert (=> d!161661 (= (getValueByKey!754 lt!669884 a0!49) e!865509)))

(declare-fun b!1554300 () Bool)

(assert (=> b!1554300 (= e!865509 e!865510)))

(declare-fun c!143348 () Bool)

(assert (=> b!1554300 (= c!143348 (and ((_ is Cons!36383) lt!669884) (not (= (_1!12475 (h!37830 lt!669884)) a0!49))))))

(declare-fun b!1554299 () Bool)

(assert (=> b!1554299 (= e!865509 (Some!828 (_2!12475 (h!37830 lt!669884))))))

(assert (= (and d!161661 c!143347) b!1554299))

(assert (= (and d!161661 (not c!143347)) b!1554300))

(assert (= (and b!1554300 c!143348) b!1554301))

(assert (= (and b!1554300 (not c!143348)) b!1554302))

(declare-fun m!1432685 () Bool)

(assert (=> b!1554301 m!1432685))

(assert (=> b!1554072 d!161661))

(declare-fun b!1554313 () Bool)

(declare-fun e!865516 () Option!829)

(assert (=> b!1554313 (= e!865516 (getValueByKey!754 (t!51115 (toList!11291 lm!249)) a0!49))))

(declare-fun b!1554314 () Bool)

(assert (=> b!1554314 (= e!865516 None!827)))

(declare-fun d!161667 () Bool)

(declare-fun c!143351 () Bool)

(assert (=> d!161667 (= c!143351 (and ((_ is Cons!36383) (toList!11291 lm!249)) (= (_1!12475 (h!37830 (toList!11291 lm!249))) a0!49)))))

(declare-fun e!865514 () Option!829)

(assert (=> d!161667 (= (getValueByKey!754 (toList!11291 lm!249) a0!49) e!865514)))

(declare-fun b!1554312 () Bool)

(assert (=> b!1554312 (= e!865514 e!865516)))

(declare-fun c!143352 () Bool)

(assert (=> b!1554312 (= c!143352 (and ((_ is Cons!36383) (toList!11291 lm!249)) (not (= (_1!12475 (h!37830 (toList!11291 lm!249))) a0!49))))))

(declare-fun b!1554310 () Bool)

(assert (=> b!1554310 (= e!865514 (Some!828 (_2!12475 (h!37830 (toList!11291 lm!249)))))))

(assert (= (and d!161667 c!143351) b!1554310))

(assert (= (and d!161667 (not c!143351)) b!1554312))

(assert (= (and b!1554312 c!143352) b!1554313))

(assert (= (and b!1554312 (not c!143352)) b!1554314))

(declare-fun m!1432687 () Bool)

(assert (=> b!1554313 m!1432687))

(assert (=> b!1554072 d!161667))

(declare-fun b!1554326 () Bool)

(declare-fun e!865524 () Bool)

(declare-fun tp!112195 () Bool)

(assert (=> b!1554326 (= e!865524 (and tp_is_empty!38253 tp!112195))))

(assert (=> b!1554076 (= tp!112186 e!865524)))

(assert (= (and b!1554076 ((_ is Cons!36383) (toList!11291 lm!249))) b!1554326))

(check-sat (not bm!71413) (not b!1554313) (not b!1554326) (not d!161657) (not b!1554207) (not b!1554109) (not d!161645) (not b!1554301) tp_is_empty!38253 (not b!1554209) (not b!1554268) (not b!1554270) (not b!1554129) (not d!161635) (not b!1554247) (not d!161651) (not b!1554210) (not b!1554135))
(check-sat)
