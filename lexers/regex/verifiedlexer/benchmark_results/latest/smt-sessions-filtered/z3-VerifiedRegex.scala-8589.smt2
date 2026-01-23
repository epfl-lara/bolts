; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!456868 () Bool)

(assert start!456868)

(declare-fun b!4589150 () Bool)

(declare-fun res!1918286 () Bool)

(declare-fun e!2862119 () Bool)

(assert (=> b!4589150 (=> (not res!1918286) (not e!2862119))))

(declare-datatypes ((K!12350 0))(
  ( (K!12351 (val!18151 Int)) )
))
(declare-datatypes ((V!12596 0))(
  ( (V!12597 (val!18152 Int)) )
))
(declare-datatypes ((tuple2!51570 0))(
  ( (tuple2!51571 (_1!29079 K!12350) (_2!29079 V!12596)) )
))
(declare-datatypes ((List!51104 0))(
  ( (Nil!50980) (Cons!50980 (h!56921 tuple2!51570) (t!358098 List!51104)) )
))
(declare-datatypes ((tuple2!51572 0))(
  ( (tuple2!51573 (_1!29080 (_ BitVec 64)) (_2!29080 List!51104)) )
))
(declare-datatypes ((List!51105 0))(
  ( (Nil!50981) (Cons!50981 (h!56922 tuple2!51572) (t!358099 List!51105)) )
))
(declare-datatypes ((ListLongMap!3207 0))(
  ( (ListLongMap!3208 (toList!4575 List!51105)) )
))
(declare-fun lm!1477 () ListLongMap!3207)

(declare-fun key!3287 () K!12350)

(declare-datatypes ((ListMap!3837 0))(
  ( (ListMap!3838 (toList!4576 List!51104)) )
))
(declare-fun contains!13884 (ListMap!3837 K!12350) Bool)

(declare-fun extractMap!1340 (List!51105) ListMap!3837)

(assert (=> b!4589150 (= res!1918286 (contains!13884 (extractMap!1340 (toList!4575 lm!1477)) key!3287))))

(declare-fun b!4589151 () Bool)

(declare-fun e!2862118 () Bool)

(declare-fun tp!1339889 () Bool)

(assert (=> b!4589151 (= e!2862118 tp!1339889)))

(declare-fun b!4589152 () Bool)

(declare-fun res!1918283 () Bool)

(assert (=> b!4589152 (=> (not res!1918283) (not e!2862119))))

(declare-datatypes ((Hashable!5679 0))(
  ( (HashableExt!5678 (__x!31382 Int)) )
))
(declare-fun hashF!1107 () Hashable!5679)

(declare-fun allKeysSameHashInMap!1391 (ListLongMap!3207 Hashable!5679) Bool)

(assert (=> b!4589152 (= res!1918283 (allKeysSameHashInMap!1391 lm!1477 hashF!1107))))

(declare-fun e!2862117 () Bool)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun b!4589153 () Bool)

(declare-fun lt!1752107 () List!51104)

(declare-datatypes ((Option!11345 0))(
  ( (None!11344) (Some!11344 (v!45244 List!51104)) )
))
(declare-fun getValueByKey!1265 (List!51105 (_ BitVec 64)) Option!11345)

(assert (=> b!4589153 (= e!2862117 (= (getValueByKey!1265 (toList!4575 lm!1477) hash!344) (Some!11344 lt!1752107)))))

(declare-fun b!4589154 () Bool)

(declare-fun e!2862116 () Bool)

(assert (=> b!4589154 (= e!2862116 (not e!2862117))))

(declare-fun res!1918285 () Bool)

(assert (=> b!4589154 (=> (not res!1918285) (not e!2862117))))

(declare-fun isStrictlySorted!518 (List!51105) Bool)

(assert (=> b!4589154 (= res!1918285 (isStrictlySorted!518 (toList!4575 lm!1477)))))

(declare-fun apply!12017 (ListLongMap!3207 (_ BitVec 64)) List!51104)

(assert (=> b!4589154 (= lt!1752107 (apply!12017 lm!1477 hash!344))))

(declare-fun lt!1752106 () (_ BitVec 64))

(declare-fun contains!13885 (ListLongMap!3207 (_ BitVec 64)) Bool)

(assert (=> b!4589154 (contains!13885 lm!1477 lt!1752106)))

(declare-datatypes ((Unit!107278 0))(
  ( (Unit!107279) )
))
(declare-fun lt!1752108 () Unit!107278)

(declare-fun lemmaInGenMapThenLongMapContainsHash!354 (ListLongMap!3207 K!12350 Hashable!5679) Unit!107278)

(assert (=> b!4589154 (= lt!1752108 (lemmaInGenMapThenLongMapContainsHash!354 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4589155 () Bool)

(assert (=> b!4589155 (= e!2862119 e!2862116)))

(declare-fun res!1918281 () Bool)

(assert (=> b!4589155 (=> (not res!1918281) (not e!2862116))))

(assert (=> b!4589155 (= res!1918281 (= lt!1752106 hash!344))))

(declare-fun hash!3147 (Hashable!5679 K!12350) (_ BitVec 64))

(assert (=> b!4589155 (= lt!1752106 (hash!3147 hashF!1107 key!3287))))

(declare-fun b!4589156 () Bool)

(declare-fun res!1918284 () Bool)

(assert (=> b!4589156 (=> (not res!1918284) (not e!2862116))))

(declare-fun newBucket!178 () List!51104)

(declare-fun allKeysSameHash!1136 (List!51104 (_ BitVec 64) Hashable!5679) Bool)

(assert (=> b!4589156 (= res!1918284 (allKeysSameHash!1136 newBucket!178 hash!344 hashF!1107))))

(declare-fun e!2862115 () Bool)

(declare-fun tp_is_empty!28415 () Bool)

(declare-fun b!4589149 () Bool)

(declare-fun tp!1339888 () Bool)

(declare-fun tp_is_empty!28413 () Bool)

(assert (=> b!4589149 (= e!2862115 (and tp_is_empty!28413 tp_is_empty!28415 tp!1339888))))

(declare-fun res!1918282 () Bool)

(assert (=> start!456868 (=> (not res!1918282) (not e!2862119))))

(declare-fun lambda!184415 () Int)

(declare-fun forall!10522 (List!51105 Int) Bool)

(assert (=> start!456868 (= res!1918282 (forall!10522 (toList!4575 lm!1477) lambda!184415))))

(assert (=> start!456868 e!2862119))

(assert (=> start!456868 true))

(declare-fun inv!66534 (ListLongMap!3207) Bool)

(assert (=> start!456868 (and (inv!66534 lm!1477) e!2862118)))

(assert (=> start!456868 tp_is_empty!28413))

(assert (=> start!456868 e!2862115))

(assert (= (and start!456868 res!1918282) b!4589152))

(assert (= (and b!4589152 res!1918283) b!4589150))

(assert (= (and b!4589150 res!1918286) b!4589155))

(assert (= (and b!4589155 res!1918281) b!4589156))

(assert (= (and b!4589156 res!1918284) b!4589154))

(assert (= (and b!4589154 res!1918285) b!4589153))

(assert (= start!456868 b!4589151))

(get-info :version)

(assert (= (and start!456868 ((_ is Cons!50980) newBucket!178)) b!4589149))

(declare-fun m!5412023 () Bool)

(assert (=> b!4589154 m!5412023))

(declare-fun m!5412025 () Bool)

(assert (=> b!4589154 m!5412025))

(declare-fun m!5412027 () Bool)

(assert (=> b!4589154 m!5412027))

(declare-fun m!5412029 () Bool)

(assert (=> b!4589154 m!5412029))

(declare-fun m!5412031 () Bool)

(assert (=> b!4589153 m!5412031))

(declare-fun m!5412033 () Bool)

(assert (=> b!4589152 m!5412033))

(declare-fun m!5412035 () Bool)

(assert (=> b!4589150 m!5412035))

(assert (=> b!4589150 m!5412035))

(declare-fun m!5412037 () Bool)

(assert (=> b!4589150 m!5412037))

(declare-fun m!5412039 () Bool)

(assert (=> start!456868 m!5412039))

(declare-fun m!5412041 () Bool)

(assert (=> start!456868 m!5412041))

(declare-fun m!5412043 () Bool)

(assert (=> b!4589156 m!5412043))

(declare-fun m!5412045 () Bool)

(assert (=> b!4589155 m!5412045))

(check-sat (not b!4589152) (not b!4589155) (not b!4589154) tp_is_empty!28415 (not start!456868) (not b!4589156) (not b!4589151) (not b!4589149) tp_is_empty!28413 (not b!4589150) (not b!4589153))
(check-sat)
(get-model)

(declare-fun d!1443384 () Bool)

(assert (=> d!1443384 true))

(assert (=> d!1443384 true))

(declare-fun lambda!184418 () Int)

(declare-fun forall!10524 (List!51104 Int) Bool)

(assert (=> d!1443384 (= (allKeysSameHash!1136 newBucket!178 hash!344 hashF!1107) (forall!10524 newBucket!178 lambda!184418))))

(declare-fun bs!1007482 () Bool)

(assert (= bs!1007482 d!1443384))

(declare-fun m!5412067 () Bool)

(assert (=> bs!1007482 m!5412067))

(assert (=> b!4589156 d!1443384))

(declare-fun b!4589261 () Bool)

(declare-fun e!2862185 () Bool)

(declare-datatypes ((List!51107 0))(
  ( (Nil!50983) (Cons!50983 (h!56926 K!12350) (t!358101 List!51107)) )
))
(declare-fun contains!13887 (List!51107 K!12350) Bool)

(declare-fun keys!17820 (ListMap!3837) List!51107)

(assert (=> b!4589261 (= e!2862185 (contains!13887 (keys!17820 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))

(declare-fun bm!320480 () Bool)

(declare-fun call!320485 () Bool)

(declare-fun e!2862188 () List!51107)

(assert (=> bm!320480 (= call!320485 (contains!13887 e!2862188 key!3287))))

(declare-fun c!785947 () Bool)

(declare-fun c!785946 () Bool)

(assert (=> bm!320480 (= c!785947 c!785946)))

(declare-fun b!4589262 () Bool)

(declare-fun getKeysList!551 (List!51104) List!51107)

(assert (=> b!4589262 (= e!2862188 (getKeysList!551 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))

(declare-fun b!4589263 () Bool)

(declare-fun e!2862186 () Unit!107278)

(declare-fun lt!1752173 () Unit!107278)

(assert (=> b!4589263 (= e!2862186 lt!1752173)))

(declare-fun lt!1752167 () Unit!107278)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1170 (List!51104 K!12350) Unit!107278)

(assert (=> b!4589263 (= lt!1752167 (lemmaContainsKeyImpliesGetValueByKeyDefined!1170 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))

(declare-datatypes ((Option!11347 0))(
  ( (None!11346) (Some!11346 (v!45246 V!12596)) )
))
(declare-fun isDefined!8614 (Option!11347) Bool)

(declare-fun getValueByKey!1267 (List!51104 K!12350) Option!11347)

(assert (=> b!4589263 (isDefined!8614 (getValueByKey!1267 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))

(declare-fun lt!1752169 () Unit!107278)

(assert (=> b!4589263 (= lt!1752169 lt!1752167)))

(declare-fun lemmaInListThenGetKeysListContains!547 (List!51104 K!12350) Unit!107278)

(assert (=> b!4589263 (= lt!1752173 (lemmaInListThenGetKeysListContains!547 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))

(assert (=> b!4589263 call!320485))

(declare-fun d!1443388 () Bool)

(declare-fun e!2862187 () Bool)

(assert (=> d!1443388 e!2862187))

(declare-fun res!1918319 () Bool)

(assert (=> d!1443388 (=> res!1918319 e!2862187)))

(declare-fun e!2862183 () Bool)

(assert (=> d!1443388 (= res!1918319 e!2862183)))

(declare-fun res!1918317 () Bool)

(assert (=> d!1443388 (=> (not res!1918317) (not e!2862183))))

(declare-fun lt!1752168 () Bool)

(assert (=> d!1443388 (= res!1918317 (not lt!1752168))))

(declare-fun lt!1752170 () Bool)

(assert (=> d!1443388 (= lt!1752168 lt!1752170)))

(declare-fun lt!1752171 () Unit!107278)

(assert (=> d!1443388 (= lt!1752171 e!2862186)))

(assert (=> d!1443388 (= c!785946 lt!1752170)))

(declare-fun containsKey!2075 (List!51104 K!12350) Bool)

(assert (=> d!1443388 (= lt!1752170 (containsKey!2075 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))

(assert (=> d!1443388 (= (contains!13884 (extractMap!1340 (toList!4575 lm!1477)) key!3287) lt!1752168)))

(declare-fun b!4589264 () Bool)

(assert (=> b!4589264 (= e!2862187 e!2862185)))

(declare-fun res!1918318 () Bool)

(assert (=> b!4589264 (=> (not res!1918318) (not e!2862185))))

(assert (=> b!4589264 (= res!1918318 (isDefined!8614 (getValueByKey!1267 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287)))))

(declare-fun b!4589265 () Bool)

(assert (=> b!4589265 false))

(declare-fun lt!1752172 () Unit!107278)

(declare-fun lt!1752174 () Unit!107278)

(assert (=> b!4589265 (= lt!1752172 lt!1752174)))

(assert (=> b!4589265 (containsKey!2075 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!550 (List!51104 K!12350) Unit!107278)

(assert (=> b!4589265 (= lt!1752174 (lemmaInGetKeysListThenContainsKey!550 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))

(declare-fun e!2862184 () Unit!107278)

(declare-fun Unit!107283 () Unit!107278)

(assert (=> b!4589265 (= e!2862184 Unit!107283)))

(declare-fun b!4589266 () Bool)

(assert (=> b!4589266 (= e!2862188 (keys!17820 (extractMap!1340 (toList!4575 lm!1477))))))

(declare-fun b!4589267 () Bool)

(declare-fun Unit!107284 () Unit!107278)

(assert (=> b!4589267 (= e!2862184 Unit!107284)))

(declare-fun b!4589268 () Bool)

(assert (=> b!4589268 (= e!2862186 e!2862184)))

(declare-fun c!785945 () Bool)

(assert (=> b!4589268 (= c!785945 call!320485)))

(declare-fun b!4589269 () Bool)

(assert (=> b!4589269 (= e!2862183 (not (contains!13887 (keys!17820 (extractMap!1340 (toList!4575 lm!1477))) key!3287)))))

(assert (= (and d!1443388 c!785946) b!4589263))

(assert (= (and d!1443388 (not c!785946)) b!4589268))

(assert (= (and b!4589268 c!785945) b!4589265))

(assert (= (and b!4589268 (not c!785945)) b!4589267))

(assert (= (or b!4589263 b!4589268) bm!320480))

(assert (= (and bm!320480 c!785947) b!4589262))

(assert (= (and bm!320480 (not c!785947)) b!4589266))

(assert (= (and d!1443388 res!1918317) b!4589269))

(assert (= (and d!1443388 (not res!1918319)) b!4589264))

(assert (= (and b!4589264 res!1918318) b!4589261))

(declare-fun m!5412109 () Bool)

(assert (=> b!4589263 m!5412109))

(declare-fun m!5412111 () Bool)

(assert (=> b!4589263 m!5412111))

(assert (=> b!4589263 m!5412111))

(declare-fun m!5412113 () Bool)

(assert (=> b!4589263 m!5412113))

(declare-fun m!5412115 () Bool)

(assert (=> b!4589263 m!5412115))

(assert (=> b!4589269 m!5412035))

(declare-fun m!5412117 () Bool)

(assert (=> b!4589269 m!5412117))

(assert (=> b!4589269 m!5412117))

(declare-fun m!5412119 () Bool)

(assert (=> b!4589269 m!5412119))

(declare-fun m!5412121 () Bool)

(assert (=> b!4589262 m!5412121))

(assert (=> b!4589266 m!5412035))

(assert (=> b!4589266 m!5412117))

(declare-fun m!5412123 () Bool)

(assert (=> b!4589265 m!5412123))

(declare-fun m!5412125 () Bool)

(assert (=> b!4589265 m!5412125))

(assert (=> b!4589264 m!5412111))

(assert (=> b!4589264 m!5412111))

(assert (=> b!4589264 m!5412113))

(declare-fun m!5412127 () Bool)

(assert (=> bm!320480 m!5412127))

(assert (=> d!1443388 m!5412123))

(assert (=> b!4589261 m!5412035))

(assert (=> b!4589261 m!5412117))

(assert (=> b!4589261 m!5412117))

(assert (=> b!4589261 m!5412119))

(assert (=> b!4589150 d!1443388))

(declare-fun bs!1007493 () Bool)

(declare-fun d!1443400 () Bool)

(assert (= bs!1007493 (and d!1443400 start!456868)))

(declare-fun lambda!184433 () Int)

(assert (=> bs!1007493 (= lambda!184433 lambda!184415)))

(declare-fun lt!1752177 () ListMap!3837)

(declare-fun invariantList!1103 (List!51104) Bool)

(assert (=> d!1443400 (invariantList!1103 (toList!4576 lt!1752177))))

(declare-fun e!2862191 () ListMap!3837)

(assert (=> d!1443400 (= lt!1752177 e!2862191)))

(declare-fun c!785950 () Bool)

(assert (=> d!1443400 (= c!785950 ((_ is Cons!50981) (toList!4575 lm!1477)))))

(assert (=> d!1443400 (forall!10522 (toList!4575 lm!1477) lambda!184433)))

(assert (=> d!1443400 (= (extractMap!1340 (toList!4575 lm!1477)) lt!1752177)))

(declare-fun b!4589274 () Bool)

(declare-fun addToMapMapFromBucket!793 (List!51104 ListMap!3837) ListMap!3837)

(assert (=> b!4589274 (= e!2862191 (addToMapMapFromBucket!793 (_2!29080 (h!56922 (toList!4575 lm!1477))) (extractMap!1340 (t!358099 (toList!4575 lm!1477)))))))

(declare-fun b!4589275 () Bool)

(assert (=> b!4589275 (= e!2862191 (ListMap!3838 Nil!50980))))

(assert (= (and d!1443400 c!785950) b!4589274))

(assert (= (and d!1443400 (not c!785950)) b!4589275))

(declare-fun m!5412129 () Bool)

(assert (=> d!1443400 m!5412129))

(declare-fun m!5412131 () Bool)

(assert (=> d!1443400 m!5412131))

(declare-fun m!5412133 () Bool)

(assert (=> b!4589274 m!5412133))

(assert (=> b!4589274 m!5412133))

(declare-fun m!5412135 () Bool)

(assert (=> b!4589274 m!5412135))

(assert (=> b!4589150 d!1443400))

(declare-fun d!1443402 () Bool)

(declare-fun hash!3149 (Hashable!5679 K!12350) (_ BitVec 64))

(assert (=> d!1443402 (= (hash!3147 hashF!1107 key!3287) (hash!3149 hashF!1107 key!3287))))

(declare-fun bs!1007494 () Bool)

(assert (= bs!1007494 d!1443402))

(declare-fun m!5412137 () Bool)

(assert (=> bs!1007494 m!5412137))

(assert (=> b!4589155 d!1443402))

(declare-fun d!1443404 () Bool)

(declare-fun res!1918324 () Bool)

(declare-fun e!2862196 () Bool)

(assert (=> d!1443404 (=> res!1918324 e!2862196)))

(assert (=> d!1443404 (= res!1918324 (or ((_ is Nil!50981) (toList!4575 lm!1477)) ((_ is Nil!50981) (t!358099 (toList!4575 lm!1477)))))))

(assert (=> d!1443404 (= (isStrictlySorted!518 (toList!4575 lm!1477)) e!2862196)))

(declare-fun b!4589280 () Bool)

(declare-fun e!2862197 () Bool)

(assert (=> b!4589280 (= e!2862196 e!2862197)))

(declare-fun res!1918325 () Bool)

(assert (=> b!4589280 (=> (not res!1918325) (not e!2862197))))

(assert (=> b!4589280 (= res!1918325 (bvslt (_1!29080 (h!56922 (toList!4575 lm!1477))) (_1!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))))))

(declare-fun b!4589281 () Bool)

(assert (=> b!4589281 (= e!2862197 (isStrictlySorted!518 (t!358099 (toList!4575 lm!1477))))))

(assert (= (and d!1443404 (not res!1918324)) b!4589280))

(assert (= (and b!4589280 res!1918325) b!4589281))

(declare-fun m!5412139 () Bool)

(assert (=> b!4589281 m!5412139))

(assert (=> b!4589154 d!1443404))

(declare-fun d!1443406 () Bool)

(declare-fun get!16838 (Option!11345) List!51104)

(assert (=> d!1443406 (= (apply!12017 lm!1477 hash!344) (get!16838 (getValueByKey!1265 (toList!4575 lm!1477) hash!344)))))

(declare-fun bs!1007495 () Bool)

(assert (= bs!1007495 d!1443406))

(assert (=> bs!1007495 m!5412031))

(assert (=> bs!1007495 m!5412031))

(declare-fun m!5412141 () Bool)

(assert (=> bs!1007495 m!5412141))

(assert (=> b!4589154 d!1443406))

(declare-fun d!1443408 () Bool)

(declare-fun e!2862203 () Bool)

(assert (=> d!1443408 e!2862203))

(declare-fun res!1918328 () Bool)

(assert (=> d!1443408 (=> res!1918328 e!2862203)))

(declare-fun lt!1752189 () Bool)

(assert (=> d!1443408 (= res!1918328 (not lt!1752189))))

(declare-fun lt!1752187 () Bool)

(assert (=> d!1443408 (= lt!1752189 lt!1752187)))

(declare-fun lt!1752186 () Unit!107278)

(declare-fun e!2862202 () Unit!107278)

(assert (=> d!1443408 (= lt!1752186 e!2862202)))

(declare-fun c!785953 () Bool)

(assert (=> d!1443408 (= c!785953 lt!1752187)))

(declare-fun containsKey!2076 (List!51105 (_ BitVec 64)) Bool)

(assert (=> d!1443408 (= lt!1752187 (containsKey!2076 (toList!4575 lm!1477) lt!1752106))))

(assert (=> d!1443408 (= (contains!13885 lm!1477 lt!1752106) lt!1752189)))

(declare-fun b!4589288 () Bool)

(declare-fun lt!1752188 () Unit!107278)

(assert (=> b!4589288 (= e!2862202 lt!1752188)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1171 (List!51105 (_ BitVec 64)) Unit!107278)

(assert (=> b!4589288 (= lt!1752188 (lemmaContainsKeyImpliesGetValueByKeyDefined!1171 (toList!4575 lm!1477) lt!1752106))))

(declare-fun isDefined!8615 (Option!11345) Bool)

(assert (=> b!4589288 (isDefined!8615 (getValueByKey!1265 (toList!4575 lm!1477) lt!1752106))))

(declare-fun b!4589289 () Bool)

(declare-fun Unit!107285 () Unit!107278)

(assert (=> b!4589289 (= e!2862202 Unit!107285)))

(declare-fun b!4589290 () Bool)

(assert (=> b!4589290 (= e!2862203 (isDefined!8615 (getValueByKey!1265 (toList!4575 lm!1477) lt!1752106)))))

(assert (= (and d!1443408 c!785953) b!4589288))

(assert (= (and d!1443408 (not c!785953)) b!4589289))

(assert (= (and d!1443408 (not res!1918328)) b!4589290))

(declare-fun m!5412143 () Bool)

(assert (=> d!1443408 m!5412143))

(declare-fun m!5412145 () Bool)

(assert (=> b!4589288 m!5412145))

(declare-fun m!5412147 () Bool)

(assert (=> b!4589288 m!5412147))

(assert (=> b!4589288 m!5412147))

(declare-fun m!5412149 () Bool)

(assert (=> b!4589288 m!5412149))

(assert (=> b!4589290 m!5412147))

(assert (=> b!4589290 m!5412147))

(assert (=> b!4589290 m!5412149))

(assert (=> b!4589154 d!1443408))

(declare-fun bs!1007496 () Bool)

(declare-fun d!1443410 () Bool)

(assert (= bs!1007496 (and d!1443410 start!456868)))

(declare-fun lambda!184436 () Int)

(assert (=> bs!1007496 (= lambda!184436 lambda!184415)))

(declare-fun bs!1007497 () Bool)

(assert (= bs!1007497 (and d!1443410 d!1443400)))

(assert (=> bs!1007497 (= lambda!184436 lambda!184433)))

(assert (=> d!1443410 (contains!13885 lm!1477 (hash!3147 hashF!1107 key!3287))))

(declare-fun lt!1752192 () Unit!107278)

(declare-fun choose!30610 (ListLongMap!3207 K!12350 Hashable!5679) Unit!107278)

(assert (=> d!1443410 (= lt!1752192 (choose!30610 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1443410 (forall!10522 (toList!4575 lm!1477) lambda!184436)))

(assert (=> d!1443410 (= (lemmaInGenMapThenLongMapContainsHash!354 lm!1477 key!3287 hashF!1107) lt!1752192)))

(declare-fun bs!1007498 () Bool)

(assert (= bs!1007498 d!1443410))

(assert (=> bs!1007498 m!5412045))

(assert (=> bs!1007498 m!5412045))

(declare-fun m!5412151 () Bool)

(assert (=> bs!1007498 m!5412151))

(declare-fun m!5412153 () Bool)

(assert (=> bs!1007498 m!5412153))

(declare-fun m!5412155 () Bool)

(assert (=> bs!1007498 m!5412155))

(assert (=> b!4589154 d!1443410))

(declare-fun b!4589299 () Bool)

(declare-fun e!2862208 () Option!11345)

(assert (=> b!4589299 (= e!2862208 (Some!11344 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))

(declare-fun d!1443412 () Bool)

(declare-fun c!785958 () Bool)

(assert (=> d!1443412 (= c!785958 (and ((_ is Cons!50981) (toList!4575 lm!1477)) (= (_1!29080 (h!56922 (toList!4575 lm!1477))) hash!344)))))

(assert (=> d!1443412 (= (getValueByKey!1265 (toList!4575 lm!1477) hash!344) e!2862208)))

(declare-fun b!4589300 () Bool)

(declare-fun e!2862209 () Option!11345)

(assert (=> b!4589300 (= e!2862208 e!2862209)))

(declare-fun c!785959 () Bool)

(assert (=> b!4589300 (= c!785959 (and ((_ is Cons!50981) (toList!4575 lm!1477)) (not (= (_1!29080 (h!56922 (toList!4575 lm!1477))) hash!344))))))

(declare-fun b!4589301 () Bool)

(assert (=> b!4589301 (= e!2862209 (getValueByKey!1265 (t!358099 (toList!4575 lm!1477)) hash!344))))

(declare-fun b!4589302 () Bool)

(assert (=> b!4589302 (= e!2862209 None!11344)))

(assert (= (and d!1443412 c!785958) b!4589299))

(assert (= (and d!1443412 (not c!785958)) b!4589300))

(assert (= (and b!4589300 c!785959) b!4589301))

(assert (= (and b!4589300 (not c!785959)) b!4589302))

(declare-fun m!5412157 () Bool)

(assert (=> b!4589301 m!5412157))

(assert (=> b!4589153 d!1443412))

(declare-fun d!1443414 () Bool)

(declare-fun res!1918333 () Bool)

(declare-fun e!2862214 () Bool)

(assert (=> d!1443414 (=> res!1918333 e!2862214)))

(assert (=> d!1443414 (= res!1918333 ((_ is Nil!50981) (toList!4575 lm!1477)))))

(assert (=> d!1443414 (= (forall!10522 (toList!4575 lm!1477) lambda!184415) e!2862214)))

(declare-fun b!4589307 () Bool)

(declare-fun e!2862215 () Bool)

(assert (=> b!4589307 (= e!2862214 e!2862215)))

(declare-fun res!1918334 () Bool)

(assert (=> b!4589307 (=> (not res!1918334) (not e!2862215))))

(declare-fun dynLambda!21350 (Int tuple2!51572) Bool)

(assert (=> b!4589307 (= res!1918334 (dynLambda!21350 lambda!184415 (h!56922 (toList!4575 lm!1477))))))

(declare-fun b!4589308 () Bool)

(assert (=> b!4589308 (= e!2862215 (forall!10522 (t!358099 (toList!4575 lm!1477)) lambda!184415))))

(assert (= (and d!1443414 (not res!1918333)) b!4589307))

(assert (= (and b!4589307 res!1918334) b!4589308))

(declare-fun b_lambda!168197 () Bool)

(assert (=> (not b_lambda!168197) (not b!4589307)))

(declare-fun m!5412159 () Bool)

(assert (=> b!4589307 m!5412159))

(declare-fun m!5412161 () Bool)

(assert (=> b!4589308 m!5412161))

(assert (=> start!456868 d!1443414))

(declare-fun d!1443416 () Bool)

(assert (=> d!1443416 (= (inv!66534 lm!1477) (isStrictlySorted!518 (toList!4575 lm!1477)))))

(declare-fun bs!1007499 () Bool)

(assert (= bs!1007499 d!1443416))

(assert (=> bs!1007499 m!5412023))

(assert (=> start!456868 d!1443416))

(declare-fun bs!1007500 () Bool)

(declare-fun d!1443418 () Bool)

(assert (= bs!1007500 (and d!1443418 start!456868)))

(declare-fun lambda!184439 () Int)

(assert (=> bs!1007500 (not (= lambda!184439 lambda!184415))))

(declare-fun bs!1007501 () Bool)

(assert (= bs!1007501 (and d!1443418 d!1443400)))

(assert (=> bs!1007501 (not (= lambda!184439 lambda!184433))))

(declare-fun bs!1007502 () Bool)

(assert (= bs!1007502 (and d!1443418 d!1443410)))

(assert (=> bs!1007502 (not (= lambda!184439 lambda!184436))))

(assert (=> d!1443418 true))

(assert (=> d!1443418 (= (allKeysSameHashInMap!1391 lm!1477 hashF!1107) (forall!10522 (toList!4575 lm!1477) lambda!184439))))

(declare-fun bs!1007503 () Bool)

(assert (= bs!1007503 d!1443418))

(declare-fun m!5412163 () Bool)

(assert (=> bs!1007503 m!5412163))

(assert (=> b!4589152 d!1443418))

(declare-fun b!4589315 () Bool)

(declare-fun e!2862218 () Bool)

(declare-fun tp!1339903 () Bool)

(declare-fun tp!1339904 () Bool)

(assert (=> b!4589315 (= e!2862218 (and tp!1339903 tp!1339904))))

(assert (=> b!4589151 (= tp!1339889 e!2862218)))

(assert (= (and b!4589151 ((_ is Cons!50981) (toList!4575 lm!1477))) b!4589315))

(declare-fun e!2862221 () Bool)

(declare-fun tp!1339907 () Bool)

(declare-fun b!4589320 () Bool)

(assert (=> b!4589320 (= e!2862221 (and tp_is_empty!28413 tp_is_empty!28415 tp!1339907))))

(assert (=> b!4589149 (= tp!1339888 e!2862221)))

(assert (= (and b!4589149 ((_ is Cons!50980) (t!358098 newBucket!178))) b!4589320))

(declare-fun b_lambda!168199 () Bool)

(assert (= b_lambda!168197 (or start!456868 b_lambda!168199)))

(declare-fun bs!1007504 () Bool)

(declare-fun d!1443420 () Bool)

(assert (= bs!1007504 (and d!1443420 start!456868)))

(declare-fun noDuplicateKeys!1280 (List!51104) Bool)

(assert (=> bs!1007504 (= (dynLambda!21350 lambda!184415 (h!56922 (toList!4575 lm!1477))) (noDuplicateKeys!1280 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))

(declare-fun m!5412165 () Bool)

(assert (=> bs!1007504 m!5412165))

(assert (=> b!4589307 d!1443420))

(check-sat (not b!4589290) (not b_lambda!168199) (not b!4589262) (not b!4589263) (not d!1443410) (not b!4589315) (not b!4589320) (not d!1443384) (not d!1443416) (not b!4589281) (not bm!320480) (not d!1443388) (not d!1443402) (not b!4589266) (not d!1443406) (not bs!1007504) (not b!4589308) (not b!4589264) tp_is_empty!28415 (not b!4589274) (not d!1443418) (not d!1443400) (not b!4589288) (not b!4589265) (not b!4589261) (not d!1443408) (not b!4589269) tp_is_empty!28413 (not b!4589301))
(check-sat)
(get-model)

(declare-fun d!1443478 () Bool)

(declare-fun res!1918403 () Bool)

(declare-fun e!2862298 () Bool)

(assert (=> d!1443478 (=> res!1918403 e!2862298)))

(assert (=> d!1443478 (= res!1918403 ((_ is Nil!50980) newBucket!178))))

(assert (=> d!1443478 (= (forall!10524 newBucket!178 lambda!184418) e!2862298)))

(declare-fun b!4589433 () Bool)

(declare-fun e!2862299 () Bool)

(assert (=> b!4589433 (= e!2862298 e!2862299)))

(declare-fun res!1918404 () Bool)

(assert (=> b!4589433 (=> (not res!1918404) (not e!2862299))))

(declare-fun dynLambda!21352 (Int tuple2!51570) Bool)

(assert (=> b!4589433 (= res!1918404 (dynLambda!21352 lambda!184418 (h!56921 newBucket!178)))))

(declare-fun b!4589434 () Bool)

(assert (=> b!4589434 (= e!2862299 (forall!10524 (t!358098 newBucket!178) lambda!184418))))

(assert (= (and d!1443478 (not res!1918403)) b!4589433))

(assert (= (and b!4589433 res!1918404) b!4589434))

(declare-fun b_lambda!168211 () Bool)

(assert (=> (not b_lambda!168211) (not b!4589433)))

(declare-fun m!5412281 () Bool)

(assert (=> b!4589433 m!5412281))

(declare-fun m!5412283 () Bool)

(assert (=> b!4589434 m!5412283))

(assert (=> d!1443384 d!1443478))

(declare-fun d!1443480 () Bool)

(declare-fun res!1918409 () Bool)

(declare-fun e!2862304 () Bool)

(assert (=> d!1443480 (=> res!1918409 e!2862304)))

(assert (=> d!1443480 (= res!1918409 (not ((_ is Cons!50980) (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(assert (=> d!1443480 (= (noDuplicateKeys!1280 (_2!29080 (h!56922 (toList!4575 lm!1477)))) e!2862304)))

(declare-fun b!4589439 () Bool)

(declare-fun e!2862305 () Bool)

(assert (=> b!4589439 (= e!2862304 e!2862305)))

(declare-fun res!1918410 () Bool)

(assert (=> b!4589439 (=> (not res!1918410) (not e!2862305))))

(declare-fun containsKey!2078 (List!51104 K!12350) Bool)

(assert (=> b!4589439 (= res!1918410 (not (containsKey!2078 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))))

(declare-fun b!4589440 () Bool)

(assert (=> b!4589440 (= e!2862305 (noDuplicateKeys!1280 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(assert (= (and d!1443480 (not res!1918409)) b!4589439))

(assert (= (and b!4589439 res!1918410) b!4589440))

(declare-fun m!5412285 () Bool)

(assert (=> b!4589439 m!5412285))

(declare-fun m!5412287 () Bool)

(assert (=> b!4589440 m!5412287))

(assert (=> bs!1007504 d!1443480))

(declare-fun d!1443482 () Bool)

(declare-fun res!1918415 () Bool)

(declare-fun e!2862310 () Bool)

(assert (=> d!1443482 (=> res!1918415 e!2862310)))

(assert (=> d!1443482 (= res!1918415 (and ((_ is Cons!50980) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (= (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) key!3287)))))

(assert (=> d!1443482 (= (containsKey!2075 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287) e!2862310)))

(declare-fun b!4589445 () Bool)

(declare-fun e!2862311 () Bool)

(assert (=> b!4589445 (= e!2862310 e!2862311)))

(declare-fun res!1918416 () Bool)

(assert (=> b!4589445 (=> (not res!1918416) (not e!2862311))))

(assert (=> b!4589445 (= res!1918416 ((_ is Cons!50980) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))

(declare-fun b!4589446 () Bool)

(assert (=> b!4589446 (= e!2862311 (containsKey!2075 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) key!3287))))

(assert (= (and d!1443482 (not res!1918415)) b!4589445))

(assert (= (and b!4589445 res!1918416) b!4589446))

(declare-fun m!5412289 () Bool)

(assert (=> b!4589446 m!5412289))

(assert (=> d!1443388 d!1443482))

(assert (=> d!1443416 d!1443404))

(declare-fun d!1443484 () Bool)

(declare-fun res!1918417 () Bool)

(declare-fun e!2862312 () Bool)

(assert (=> d!1443484 (=> res!1918417 e!2862312)))

(assert (=> d!1443484 (= res!1918417 (or ((_ is Nil!50981) (t!358099 (toList!4575 lm!1477))) ((_ is Nil!50981) (t!358099 (t!358099 (toList!4575 lm!1477))))))))

(assert (=> d!1443484 (= (isStrictlySorted!518 (t!358099 (toList!4575 lm!1477))) e!2862312)))

(declare-fun b!4589447 () Bool)

(declare-fun e!2862313 () Bool)

(assert (=> b!4589447 (= e!2862312 e!2862313)))

(declare-fun res!1918418 () Bool)

(assert (=> b!4589447 (=> (not res!1918418) (not e!2862313))))

(assert (=> b!4589447 (= res!1918418 (bvslt (_1!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) (_1!29080 (h!56922 (t!358099 (t!358099 (toList!4575 lm!1477)))))))))

(declare-fun b!4589448 () Bool)

(assert (=> b!4589448 (= e!2862313 (isStrictlySorted!518 (t!358099 (t!358099 (toList!4575 lm!1477)))))))

(assert (= (and d!1443484 (not res!1918417)) b!4589447))

(assert (= (and b!4589447 res!1918418) b!4589448))

(declare-fun m!5412291 () Bool)

(assert (=> b!4589448 m!5412291))

(assert (=> b!4589281 d!1443484))

(declare-fun d!1443486 () Bool)

(declare-fun e!2862315 () Bool)

(assert (=> d!1443486 e!2862315))

(declare-fun res!1918419 () Bool)

(assert (=> d!1443486 (=> res!1918419 e!2862315)))

(declare-fun lt!1752240 () Bool)

(assert (=> d!1443486 (= res!1918419 (not lt!1752240))))

(declare-fun lt!1752238 () Bool)

(assert (=> d!1443486 (= lt!1752240 lt!1752238)))

(declare-fun lt!1752237 () Unit!107278)

(declare-fun e!2862314 () Unit!107278)

(assert (=> d!1443486 (= lt!1752237 e!2862314)))

(declare-fun c!785980 () Bool)

(assert (=> d!1443486 (= c!785980 lt!1752238)))

(assert (=> d!1443486 (= lt!1752238 (containsKey!2076 (toList!4575 lm!1477) (hash!3147 hashF!1107 key!3287)))))

(assert (=> d!1443486 (= (contains!13885 lm!1477 (hash!3147 hashF!1107 key!3287)) lt!1752240)))

(declare-fun b!4589449 () Bool)

(declare-fun lt!1752239 () Unit!107278)

(assert (=> b!4589449 (= e!2862314 lt!1752239)))

(assert (=> b!4589449 (= lt!1752239 (lemmaContainsKeyImpliesGetValueByKeyDefined!1171 (toList!4575 lm!1477) (hash!3147 hashF!1107 key!3287)))))

(assert (=> b!4589449 (isDefined!8615 (getValueByKey!1265 (toList!4575 lm!1477) (hash!3147 hashF!1107 key!3287)))))

(declare-fun b!4589450 () Bool)

(declare-fun Unit!107302 () Unit!107278)

(assert (=> b!4589450 (= e!2862314 Unit!107302)))

(declare-fun b!4589451 () Bool)

(assert (=> b!4589451 (= e!2862315 (isDefined!8615 (getValueByKey!1265 (toList!4575 lm!1477) (hash!3147 hashF!1107 key!3287))))))

(assert (= (and d!1443486 c!785980) b!4589449))

(assert (= (and d!1443486 (not c!785980)) b!4589450))

(assert (= (and d!1443486 (not res!1918419)) b!4589451))

(assert (=> d!1443486 m!5412045))

(declare-fun m!5412293 () Bool)

(assert (=> d!1443486 m!5412293))

(assert (=> b!4589449 m!5412045))

(declare-fun m!5412295 () Bool)

(assert (=> b!4589449 m!5412295))

(assert (=> b!4589449 m!5412045))

(declare-fun m!5412297 () Bool)

(assert (=> b!4589449 m!5412297))

(assert (=> b!4589449 m!5412297))

(declare-fun m!5412299 () Bool)

(assert (=> b!4589449 m!5412299))

(assert (=> b!4589451 m!5412045))

(assert (=> b!4589451 m!5412297))

(assert (=> b!4589451 m!5412297))

(assert (=> b!4589451 m!5412299))

(assert (=> d!1443410 d!1443486))

(assert (=> d!1443410 d!1443402))

(declare-fun d!1443488 () Bool)

(assert (=> d!1443488 (contains!13885 lm!1477 (hash!3147 hashF!1107 key!3287))))

(assert (=> d!1443488 true))

(declare-fun _$27!1384 () Unit!107278)

(assert (=> d!1443488 (= (choose!30610 lm!1477 key!3287 hashF!1107) _$27!1384)))

(declare-fun bs!1007520 () Bool)

(assert (= bs!1007520 d!1443488))

(assert (=> bs!1007520 m!5412045))

(assert (=> bs!1007520 m!5412045))

(assert (=> bs!1007520 m!5412151))

(assert (=> d!1443410 d!1443488))

(declare-fun d!1443490 () Bool)

(declare-fun res!1918420 () Bool)

(declare-fun e!2862316 () Bool)

(assert (=> d!1443490 (=> res!1918420 e!2862316)))

(assert (=> d!1443490 (= res!1918420 ((_ is Nil!50981) (toList!4575 lm!1477)))))

(assert (=> d!1443490 (= (forall!10522 (toList!4575 lm!1477) lambda!184436) e!2862316)))

(declare-fun b!4589452 () Bool)

(declare-fun e!2862317 () Bool)

(assert (=> b!4589452 (= e!2862316 e!2862317)))

(declare-fun res!1918421 () Bool)

(assert (=> b!4589452 (=> (not res!1918421) (not e!2862317))))

(assert (=> b!4589452 (= res!1918421 (dynLambda!21350 lambda!184436 (h!56922 (toList!4575 lm!1477))))))

(declare-fun b!4589453 () Bool)

(assert (=> b!4589453 (= e!2862317 (forall!10522 (t!358099 (toList!4575 lm!1477)) lambda!184436))))

(assert (= (and d!1443490 (not res!1918420)) b!4589452))

(assert (= (and b!4589452 res!1918421) b!4589453))

(declare-fun b_lambda!168213 () Bool)

(assert (=> (not b_lambda!168213) (not b!4589452)))

(declare-fun m!5412301 () Bool)

(assert (=> b!4589452 m!5412301))

(declare-fun m!5412303 () Bool)

(assert (=> b!4589453 m!5412303))

(assert (=> d!1443410 d!1443490))

(declare-fun d!1443492 () Bool)

(assert (=> d!1443492 (isDefined!8614 (getValueByKey!1267 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))

(declare-fun lt!1752243 () Unit!107278)

(declare-fun choose!30616 (List!51104 K!12350) Unit!107278)

(assert (=> d!1443492 (= lt!1752243 (choose!30616 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))

(assert (=> d!1443492 (invariantList!1103 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))

(assert (=> d!1443492 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1170 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287) lt!1752243)))

(declare-fun bs!1007521 () Bool)

(assert (= bs!1007521 d!1443492))

(assert (=> bs!1007521 m!5412111))

(assert (=> bs!1007521 m!5412111))

(assert (=> bs!1007521 m!5412113))

(declare-fun m!5412305 () Bool)

(assert (=> bs!1007521 m!5412305))

(declare-fun m!5412307 () Bool)

(assert (=> bs!1007521 m!5412307))

(assert (=> b!4589263 d!1443492))

(declare-fun d!1443494 () Bool)

(declare-fun isEmpty!28834 (Option!11347) Bool)

(assert (=> d!1443494 (= (isDefined!8614 (getValueByKey!1267 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287)) (not (isEmpty!28834 (getValueByKey!1267 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))))

(declare-fun bs!1007522 () Bool)

(assert (= bs!1007522 d!1443494))

(assert (=> bs!1007522 m!5412111))

(declare-fun m!5412309 () Bool)

(assert (=> bs!1007522 m!5412309))

(assert (=> b!4589263 d!1443494))

(declare-fun b!4589462 () Bool)

(declare-fun e!2862322 () Option!11347)

(assert (=> b!4589462 (= e!2862322 (Some!11346 (_2!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(declare-fun b!4589463 () Bool)

(declare-fun e!2862323 () Option!11347)

(assert (=> b!4589463 (= e!2862322 e!2862323)))

(declare-fun c!785986 () Bool)

(assert (=> b!4589463 (= c!785986 (and ((_ is Cons!50980) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (not (= (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) key!3287))))))

(declare-fun b!4589464 () Bool)

(assert (=> b!4589464 (= e!2862323 (getValueByKey!1267 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) key!3287))))

(declare-fun b!4589465 () Bool)

(assert (=> b!4589465 (= e!2862323 None!11346)))

(declare-fun d!1443496 () Bool)

(declare-fun c!785985 () Bool)

(assert (=> d!1443496 (= c!785985 (and ((_ is Cons!50980) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (= (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) key!3287)))))

(assert (=> d!1443496 (= (getValueByKey!1267 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287) e!2862322)))

(assert (= (and d!1443496 c!785985) b!4589462))

(assert (= (and d!1443496 (not c!785985)) b!4589463))

(assert (= (and b!4589463 c!785986) b!4589464))

(assert (= (and b!4589463 (not c!785986)) b!4589465))

(declare-fun m!5412311 () Bool)

(assert (=> b!4589464 m!5412311))

(assert (=> b!4589263 d!1443496))

(declare-fun d!1443498 () Bool)

(assert (=> d!1443498 (contains!13887 (getKeysList!551 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) key!3287)))

(declare-fun lt!1752246 () Unit!107278)

(declare-fun choose!30617 (List!51104 K!12350) Unit!107278)

(assert (=> d!1443498 (= lt!1752246 (choose!30617 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))

(assert (=> d!1443498 (invariantList!1103 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))

(assert (=> d!1443498 (= (lemmaInListThenGetKeysListContains!547 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287) lt!1752246)))

(declare-fun bs!1007523 () Bool)

(assert (= bs!1007523 d!1443498))

(assert (=> bs!1007523 m!5412121))

(assert (=> bs!1007523 m!5412121))

(declare-fun m!5412313 () Bool)

(assert (=> bs!1007523 m!5412313))

(declare-fun m!5412315 () Bool)

(assert (=> bs!1007523 m!5412315))

(assert (=> bs!1007523 m!5412307))

(assert (=> b!4589263 d!1443498))

(declare-fun b!4589466 () Bool)

(declare-fun e!2862324 () Option!11345)

(assert (=> b!4589466 (= e!2862324 (Some!11344 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))))))

(declare-fun d!1443500 () Bool)

(declare-fun c!785987 () Bool)

(assert (=> d!1443500 (= c!785987 (and ((_ is Cons!50981) (t!358099 (toList!4575 lm!1477))) (= (_1!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) hash!344)))))

(assert (=> d!1443500 (= (getValueByKey!1265 (t!358099 (toList!4575 lm!1477)) hash!344) e!2862324)))

(declare-fun b!4589467 () Bool)

(declare-fun e!2862325 () Option!11345)

(assert (=> b!4589467 (= e!2862324 e!2862325)))

(declare-fun c!785988 () Bool)

(assert (=> b!4589467 (= c!785988 (and ((_ is Cons!50981) (t!358099 (toList!4575 lm!1477))) (not (= (_1!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) hash!344))))))

(declare-fun b!4589468 () Bool)

(assert (=> b!4589468 (= e!2862325 (getValueByKey!1265 (t!358099 (t!358099 (toList!4575 lm!1477))) hash!344))))

(declare-fun b!4589469 () Bool)

(assert (=> b!4589469 (= e!2862325 None!11344)))

(assert (= (and d!1443500 c!785987) b!4589466))

(assert (= (and d!1443500 (not c!785987)) b!4589467))

(assert (= (and b!4589467 c!785988) b!4589468))

(assert (= (and b!4589467 (not c!785988)) b!4589469))

(declare-fun m!5412317 () Bool)

(assert (=> b!4589468 m!5412317))

(assert (=> b!4589301 d!1443500))

(declare-fun d!1443502 () Bool)

(declare-fun res!1918422 () Bool)

(declare-fun e!2862326 () Bool)

(assert (=> d!1443502 (=> res!1918422 e!2862326)))

(assert (=> d!1443502 (= res!1918422 ((_ is Nil!50981) (toList!4575 lm!1477)))))

(assert (=> d!1443502 (= (forall!10522 (toList!4575 lm!1477) lambda!184439) e!2862326)))

(declare-fun b!4589470 () Bool)

(declare-fun e!2862327 () Bool)

(assert (=> b!4589470 (= e!2862326 e!2862327)))

(declare-fun res!1918423 () Bool)

(assert (=> b!4589470 (=> (not res!1918423) (not e!2862327))))

(assert (=> b!4589470 (= res!1918423 (dynLambda!21350 lambda!184439 (h!56922 (toList!4575 lm!1477))))))

(declare-fun b!4589471 () Bool)

(assert (=> b!4589471 (= e!2862327 (forall!10522 (t!358099 (toList!4575 lm!1477)) lambda!184439))))

(assert (= (and d!1443502 (not res!1918422)) b!4589470))

(assert (= (and b!4589470 res!1918423) b!4589471))

(declare-fun b_lambda!168215 () Bool)

(assert (=> (not b_lambda!168215) (not b!4589470)))

(declare-fun m!5412319 () Bool)

(assert (=> b!4589470 m!5412319))

(declare-fun m!5412321 () Bool)

(assert (=> b!4589471 m!5412321))

(assert (=> d!1443418 d!1443502))

(declare-fun b!4589503 () Bool)

(assert (=> b!4589503 true))

(declare-fun bs!1007524 () Bool)

(declare-fun b!4589505 () Bool)

(assert (= bs!1007524 (and b!4589505 b!4589503)))

(declare-fun lambda!184495 () Int)

(declare-fun lambda!184492 () Int)

(assert (=> bs!1007524 (= (= (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (= lambda!184495 lambda!184492))))

(assert (=> b!4589505 true))

(declare-fun bs!1007525 () Bool)

(declare-fun b!4589500 () Bool)

(assert (= bs!1007525 (and b!4589500 b!4589503)))

(declare-fun lambda!184496 () Int)

(assert (=> bs!1007525 (= (= (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (= lambda!184496 lambda!184492))))

(declare-fun bs!1007526 () Bool)

(assert (= bs!1007526 (and b!4589500 b!4589505)))

(assert (=> bs!1007526 (= (= (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (= lambda!184496 lambda!184495))))

(assert (=> b!4589500 true))

(declare-fun b!4589498 () Bool)

(declare-fun e!2862342 () Unit!107278)

(declare-fun Unit!107303 () Unit!107278)

(assert (=> b!4589498 (= e!2862342 Unit!107303)))

(declare-fun b!4589499 () Bool)

(declare-fun res!1918438 () Bool)

(declare-fun e!2862344 () Bool)

(assert (=> b!4589499 (=> (not res!1918438) (not e!2862344))))

(declare-fun lt!1752304 () List!51107)

(declare-fun length!448 (List!51107) Int)

(declare-fun length!449 (List!51104) Int)

(assert (=> b!4589499 (= res!1918438 (= (length!448 lt!1752304) (length!449 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))

(declare-fun res!1918437 () Bool)

(assert (=> b!4589500 (=> (not res!1918437) (not e!2862344))))

(declare-fun forall!10526 (List!51107 Int) Bool)

(assert (=> b!4589500 (= res!1918437 (forall!10526 lt!1752304 lambda!184496))))

(declare-fun b!4589501 () Bool)

(declare-fun e!2862343 () List!51107)

(assert (=> b!4589501 (= e!2862343 Nil!50983)))

(declare-fun b!4589502 () Bool)

(assert (=> b!4589502 false))

(declare-fun e!2862345 () Unit!107278)

(declare-fun Unit!107304 () Unit!107278)

(assert (=> b!4589502 (= e!2862345 Unit!107304)))

(assert (=> b!4589503 false))

(declare-fun lt!1752308 () Unit!107278)

(declare-fun forallContained!2784 (List!51107 Int K!12350) Unit!107278)

(assert (=> b!4589503 (= lt!1752308 (forallContained!2784 (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) lambda!184492 (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(declare-fun Unit!107305 () Unit!107278)

(assert (=> b!4589503 (= e!2862342 Unit!107305)))

(declare-fun d!1443504 () Bool)

(assert (=> d!1443504 e!2862344))

(declare-fun res!1918436 () Bool)

(assert (=> d!1443504 (=> (not res!1918436) (not e!2862344))))

(declare-fun noDuplicate!796 (List!51107) Bool)

(assert (=> d!1443504 (= res!1918436 (noDuplicate!796 lt!1752304))))

(assert (=> d!1443504 (= lt!1752304 e!2862343)))

(declare-fun c!785999 () Bool)

(assert (=> d!1443504 (= c!785999 ((_ is Cons!50980) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))

(assert (=> d!1443504 (invariantList!1103 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))

(assert (=> d!1443504 (= (getKeysList!551 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) lt!1752304)))

(declare-fun b!4589504 () Bool)

(declare-fun lambda!184497 () Int)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8602 (List!51107) (InoxSet K!12350))

(declare-fun map!11249 (List!51104 Int) List!51107)

(assert (=> b!4589504 (= e!2862344 (= (content!8602 lt!1752304) (content!8602 (map!11249 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) lambda!184497))))))

(assert (=> b!4589505 (= e!2862343 (Cons!50983 (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(declare-fun c!785998 () Bool)

(assert (=> b!4589505 (= c!785998 (containsKey!2075 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(declare-fun lt!1752307 () Unit!107278)

(assert (=> b!4589505 (= lt!1752307 e!2862345)))

(declare-fun c!785997 () Bool)

(assert (=> b!4589505 (= c!785997 (contains!13887 (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(declare-fun lt!1752305 () Unit!107278)

(assert (=> b!4589505 (= lt!1752305 e!2862342)))

(declare-fun lt!1752303 () List!51107)

(assert (=> b!4589505 (= lt!1752303 (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))

(declare-fun lt!1752309 () Unit!107278)

(declare-fun lemmaForallContainsAddHeadPreserves!216 (List!51104 List!51107 tuple2!51570) Unit!107278)

(assert (=> b!4589505 (= lt!1752309 (lemmaForallContainsAddHeadPreserves!216 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) lt!1752303 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))

(assert (=> b!4589505 (forall!10526 lt!1752303 lambda!184495)))

(declare-fun lt!1752306 () Unit!107278)

(assert (=> b!4589505 (= lt!1752306 lt!1752309)))

(declare-fun b!4589506 () Bool)

(declare-fun Unit!107306 () Unit!107278)

(assert (=> b!4589506 (= e!2862345 Unit!107306)))

(assert (= (and d!1443504 c!785999) b!4589505))

(assert (= (and d!1443504 (not c!785999)) b!4589501))

(assert (= (and b!4589505 c!785998) b!4589502))

(assert (= (and b!4589505 (not c!785998)) b!4589506))

(assert (= (and b!4589505 c!785997) b!4589503))

(assert (= (and b!4589505 (not c!785997)) b!4589498))

(assert (= (and d!1443504 res!1918436) b!4589499))

(assert (= (and b!4589499 res!1918438) b!4589500))

(assert (= (and b!4589500 res!1918437) b!4589504))

(declare-fun m!5412323 () Bool)

(assert (=> b!4589505 m!5412323))

(declare-fun m!5412325 () Bool)

(assert (=> b!4589505 m!5412325))

(declare-fun m!5412327 () Bool)

(assert (=> b!4589505 m!5412327))

(declare-fun m!5412329 () Bool)

(assert (=> b!4589505 m!5412329))

(assert (=> b!4589505 m!5412323))

(declare-fun m!5412331 () Bool)

(assert (=> b!4589505 m!5412331))

(declare-fun m!5412333 () Bool)

(assert (=> b!4589500 m!5412333))

(declare-fun m!5412335 () Bool)

(assert (=> b!4589499 m!5412335))

(declare-fun m!5412337 () Bool)

(assert (=> b!4589499 m!5412337))

(declare-fun m!5412339 () Bool)

(assert (=> b!4589504 m!5412339))

(declare-fun m!5412341 () Bool)

(assert (=> b!4589504 m!5412341))

(assert (=> b!4589504 m!5412341))

(declare-fun m!5412343 () Bool)

(assert (=> b!4589504 m!5412343))

(assert (=> b!4589503 m!5412323))

(assert (=> b!4589503 m!5412323))

(declare-fun m!5412345 () Bool)

(assert (=> b!4589503 m!5412345))

(declare-fun m!5412347 () Bool)

(assert (=> d!1443504 m!5412347))

(assert (=> d!1443504 m!5412307))

(assert (=> b!4589262 d!1443504))

(declare-fun d!1443506 () Bool)

(declare-fun lt!1752312 () Bool)

(assert (=> d!1443506 (= lt!1752312 (select (content!8602 e!2862188) key!3287))))

(declare-fun e!2862351 () Bool)

(assert (=> d!1443506 (= lt!1752312 e!2862351)))

(declare-fun res!1918444 () Bool)

(assert (=> d!1443506 (=> (not res!1918444) (not e!2862351))))

(assert (=> d!1443506 (= res!1918444 ((_ is Cons!50983) e!2862188))))

(assert (=> d!1443506 (= (contains!13887 e!2862188 key!3287) lt!1752312)))

(declare-fun b!4589515 () Bool)

(declare-fun e!2862350 () Bool)

(assert (=> b!4589515 (= e!2862351 e!2862350)))

(declare-fun res!1918443 () Bool)

(assert (=> b!4589515 (=> res!1918443 e!2862350)))

(assert (=> b!4589515 (= res!1918443 (= (h!56926 e!2862188) key!3287))))

(declare-fun b!4589516 () Bool)

(assert (=> b!4589516 (= e!2862350 (contains!13887 (t!358101 e!2862188) key!3287))))

(assert (= (and d!1443506 res!1918444) b!4589515))

(assert (= (and b!4589515 (not res!1918443)) b!4589516))

(declare-fun m!5412349 () Bool)

(assert (=> d!1443506 m!5412349))

(declare-fun m!5412351 () Bool)

(assert (=> d!1443506 m!5412351))

(declare-fun m!5412353 () Bool)

(assert (=> b!4589516 m!5412353))

(assert (=> bm!320480 d!1443506))

(declare-fun d!1443508 () Bool)

(declare-fun lt!1752313 () Bool)

(assert (=> d!1443508 (= lt!1752313 (select (content!8602 (keys!17820 (extractMap!1340 (toList!4575 lm!1477)))) key!3287))))

(declare-fun e!2862353 () Bool)

(assert (=> d!1443508 (= lt!1752313 e!2862353)))

(declare-fun res!1918446 () Bool)

(assert (=> d!1443508 (=> (not res!1918446) (not e!2862353))))

(assert (=> d!1443508 (= res!1918446 ((_ is Cons!50983) (keys!17820 (extractMap!1340 (toList!4575 lm!1477)))))))

(assert (=> d!1443508 (= (contains!13887 (keys!17820 (extractMap!1340 (toList!4575 lm!1477))) key!3287) lt!1752313)))

(declare-fun b!4589517 () Bool)

(declare-fun e!2862352 () Bool)

(assert (=> b!4589517 (= e!2862353 e!2862352)))

(declare-fun res!1918445 () Bool)

(assert (=> b!4589517 (=> res!1918445 e!2862352)))

(assert (=> b!4589517 (= res!1918445 (= (h!56926 (keys!17820 (extractMap!1340 (toList!4575 lm!1477)))) key!3287))))

(declare-fun b!4589518 () Bool)

(assert (=> b!4589518 (= e!2862352 (contains!13887 (t!358101 (keys!17820 (extractMap!1340 (toList!4575 lm!1477)))) key!3287))))

(assert (= (and d!1443508 res!1918446) b!4589517))

(assert (= (and b!4589517 (not res!1918445)) b!4589518))

(assert (=> d!1443508 m!5412117))

(declare-fun m!5412355 () Bool)

(assert (=> d!1443508 m!5412355))

(declare-fun m!5412357 () Bool)

(assert (=> d!1443508 m!5412357))

(declare-fun m!5412359 () Bool)

(assert (=> b!4589518 m!5412359))

(assert (=> b!4589261 d!1443508))

(declare-fun bs!1007537 () Bool)

(declare-fun b!4589535 () Bool)

(assert (= bs!1007537 (and b!4589535 b!4589503)))

(declare-fun lambda!184507 () Int)

(assert (=> bs!1007537 (= (= (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (= lambda!184507 lambda!184492))))

(declare-fun bs!1007538 () Bool)

(assert (= bs!1007538 (and b!4589535 b!4589505)))

(assert (=> bs!1007538 (= (= (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (= lambda!184507 lambda!184495))))

(declare-fun bs!1007539 () Bool)

(assert (= bs!1007539 (and b!4589535 b!4589500)))

(assert (=> bs!1007539 (= lambda!184507 lambda!184496)))

(assert (=> b!4589535 true))

(declare-fun bs!1007540 () Bool)

(declare-fun b!4589536 () Bool)

(assert (= bs!1007540 (and b!4589536 b!4589504)))

(declare-fun lambda!184508 () Int)

(assert (=> bs!1007540 (= lambda!184508 lambda!184497)))

(declare-fun d!1443510 () Bool)

(declare-fun e!2862360 () Bool)

(assert (=> d!1443510 e!2862360))

(declare-fun res!1918458 () Bool)

(assert (=> d!1443510 (=> (not res!1918458) (not e!2862360))))

(declare-fun lt!1752338 () List!51107)

(assert (=> d!1443510 (= res!1918458 (noDuplicate!796 lt!1752338))))

(assert (=> d!1443510 (= lt!1752338 (getKeysList!551 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))

(assert (=> d!1443510 (= (keys!17820 (extractMap!1340 (toList!4575 lm!1477))) lt!1752338)))

(declare-fun b!4589534 () Bool)

(declare-fun res!1918457 () Bool)

(assert (=> b!4589534 (=> (not res!1918457) (not e!2862360))))

(assert (=> b!4589534 (= res!1918457 (= (length!448 lt!1752338) (length!449 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))

(declare-fun res!1918456 () Bool)

(assert (=> b!4589535 (=> (not res!1918456) (not e!2862360))))

(assert (=> b!4589535 (= res!1918456 (forall!10526 lt!1752338 lambda!184507))))

(assert (=> b!4589536 (= e!2862360 (= (content!8602 lt!1752338) (content!8602 (map!11249 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) lambda!184508))))))

(assert (= (and d!1443510 res!1918458) b!4589534))

(assert (= (and b!4589534 res!1918457) b!4589535))

(assert (= (and b!4589535 res!1918456) b!4589536))

(declare-fun m!5412401 () Bool)

(assert (=> d!1443510 m!5412401))

(assert (=> d!1443510 m!5412121))

(declare-fun m!5412403 () Bool)

(assert (=> b!4589534 m!5412403))

(assert (=> b!4589534 m!5412337))

(declare-fun m!5412405 () Bool)

(assert (=> b!4589535 m!5412405))

(declare-fun m!5412407 () Bool)

(assert (=> b!4589536 m!5412407))

(declare-fun m!5412409 () Bool)

(assert (=> b!4589536 m!5412409))

(assert (=> b!4589536 m!5412409))

(declare-fun m!5412411 () Bool)

(assert (=> b!4589536 m!5412411))

(assert (=> b!4589261 d!1443510))

(declare-fun d!1443516 () Bool)

(assert (=> d!1443516 (= (get!16838 (getValueByKey!1265 (toList!4575 lm!1477) hash!344)) (v!45244 (getValueByKey!1265 (toList!4575 lm!1477) hash!344)))))

(assert (=> d!1443406 d!1443516))

(assert (=> d!1443406 d!1443412))

(declare-fun d!1443526 () Bool)

(declare-fun isEmpty!28835 (Option!11345) Bool)

(assert (=> d!1443526 (= (isDefined!8615 (getValueByKey!1265 (toList!4575 lm!1477) lt!1752106)) (not (isEmpty!28835 (getValueByKey!1265 (toList!4575 lm!1477) lt!1752106))))))

(declare-fun bs!1007546 () Bool)

(assert (= bs!1007546 d!1443526))

(assert (=> bs!1007546 m!5412147))

(declare-fun m!5412419 () Bool)

(assert (=> bs!1007546 m!5412419))

(assert (=> b!4589290 d!1443526))

(declare-fun b!4589542 () Bool)

(declare-fun e!2862364 () Option!11345)

(assert (=> b!4589542 (= e!2862364 (Some!11344 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))

(declare-fun d!1443528 () Bool)

(declare-fun c!786002 () Bool)

(assert (=> d!1443528 (= c!786002 (and ((_ is Cons!50981) (toList!4575 lm!1477)) (= (_1!29080 (h!56922 (toList!4575 lm!1477))) lt!1752106)))))

(assert (=> d!1443528 (= (getValueByKey!1265 (toList!4575 lm!1477) lt!1752106) e!2862364)))

(declare-fun b!4589543 () Bool)

(declare-fun e!2862365 () Option!11345)

(assert (=> b!4589543 (= e!2862364 e!2862365)))

(declare-fun c!786003 () Bool)

(assert (=> b!4589543 (= c!786003 (and ((_ is Cons!50981) (toList!4575 lm!1477)) (not (= (_1!29080 (h!56922 (toList!4575 lm!1477))) lt!1752106))))))

(declare-fun b!4589544 () Bool)

(assert (=> b!4589544 (= e!2862365 (getValueByKey!1265 (t!358099 (toList!4575 lm!1477)) lt!1752106))))

(declare-fun b!4589545 () Bool)

(assert (=> b!4589545 (= e!2862365 None!11344)))

(assert (= (and d!1443528 c!786002) b!4589542))

(assert (= (and d!1443528 (not c!786002)) b!4589543))

(assert (= (and b!4589543 c!786003) b!4589544))

(assert (= (and b!4589543 (not c!786003)) b!4589545))

(declare-fun m!5412421 () Bool)

(assert (=> b!4589544 m!5412421))

(assert (=> b!4589290 d!1443528))

(assert (=> b!4589266 d!1443510))

(assert (=> b!4589265 d!1443482))

(declare-fun d!1443530 () Bool)

(assert (=> d!1443530 (containsKey!2075 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287)))

(declare-fun lt!1752341 () Unit!107278)

(declare-fun choose!30618 (List!51104 K!12350) Unit!107278)

(assert (=> d!1443530 (= lt!1752341 (choose!30618 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))

(assert (=> d!1443530 (invariantList!1103 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))

(assert (=> d!1443530 (= (lemmaInGetKeysListThenContainsKey!550 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287) lt!1752341)))

(declare-fun bs!1007547 () Bool)

(assert (= bs!1007547 d!1443530))

(assert (=> bs!1007547 m!5412123))

(declare-fun m!5412423 () Bool)

(assert (=> bs!1007547 m!5412423))

(assert (=> bs!1007547 m!5412307))

(assert (=> b!4589265 d!1443530))

(declare-fun d!1443532 () Bool)

(assert (=> d!1443532 (isDefined!8615 (getValueByKey!1265 (toList!4575 lm!1477) lt!1752106))))

(declare-fun lt!1752344 () Unit!107278)

(declare-fun choose!30619 (List!51105 (_ BitVec 64)) Unit!107278)

(assert (=> d!1443532 (= lt!1752344 (choose!30619 (toList!4575 lm!1477) lt!1752106))))

(declare-fun e!2862368 () Bool)

(assert (=> d!1443532 e!2862368))

(declare-fun res!1918461 () Bool)

(assert (=> d!1443532 (=> (not res!1918461) (not e!2862368))))

(assert (=> d!1443532 (= res!1918461 (isStrictlySorted!518 (toList!4575 lm!1477)))))

(assert (=> d!1443532 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1171 (toList!4575 lm!1477) lt!1752106) lt!1752344)))

(declare-fun b!4589548 () Bool)

(assert (=> b!4589548 (= e!2862368 (containsKey!2076 (toList!4575 lm!1477) lt!1752106))))

(assert (= (and d!1443532 res!1918461) b!4589548))

(assert (=> d!1443532 m!5412147))

(assert (=> d!1443532 m!5412147))

(assert (=> d!1443532 m!5412149))

(declare-fun m!5412425 () Bool)

(assert (=> d!1443532 m!5412425))

(assert (=> d!1443532 m!5412023))

(assert (=> b!4589548 m!5412143))

(assert (=> b!4589288 d!1443532))

(assert (=> b!4589288 d!1443526))

(assert (=> b!4589288 d!1443528))

(declare-fun d!1443534 () Bool)

(declare-fun choose!30620 (Hashable!5679 K!12350) (_ BitVec 64))

(assert (=> d!1443534 (= (hash!3149 hashF!1107 key!3287) (choose!30620 hashF!1107 key!3287))))

(declare-fun bs!1007548 () Bool)

(assert (= bs!1007548 d!1443534))

(declare-fun m!5412427 () Bool)

(assert (=> bs!1007548 m!5412427))

(assert (=> d!1443402 d!1443534))

(assert (=> b!4589264 d!1443494))

(assert (=> b!4589264 d!1443496))

(declare-fun bs!1007549 () Bool)

(declare-fun b!4589560 () Bool)

(assert (= bs!1007549 (and b!4589560 d!1443384)))

(declare-fun lambda!184537 () Int)

(assert (=> bs!1007549 (not (= lambda!184537 lambda!184418))))

(assert (=> b!4589560 true))

(declare-fun bs!1007550 () Bool)

(declare-fun b!4589563 () Bool)

(assert (= bs!1007550 (and b!4589563 d!1443384)))

(declare-fun lambda!184538 () Int)

(assert (=> bs!1007550 (not (= lambda!184538 lambda!184418))))

(declare-fun bs!1007551 () Bool)

(assert (= bs!1007551 (and b!4589563 b!4589560)))

(assert (=> bs!1007551 (= lambda!184538 lambda!184537)))

(assert (=> b!4589563 true))

(declare-fun lambda!184539 () Int)

(assert (=> bs!1007550 (not (= lambda!184539 lambda!184418))))

(declare-fun lt!1752404 () ListMap!3837)

(assert (=> bs!1007551 (= (= lt!1752404 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184539 lambda!184537))))

(assert (=> b!4589563 (= (= lt!1752404 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184539 lambda!184538))))

(assert (=> b!4589563 true))

(declare-fun bs!1007552 () Bool)

(declare-fun d!1443536 () Bool)

(assert (= bs!1007552 (and d!1443536 d!1443384)))

(declare-fun lambda!184540 () Int)

(assert (=> bs!1007552 (not (= lambda!184540 lambda!184418))))

(declare-fun bs!1007553 () Bool)

(assert (= bs!1007553 (and d!1443536 b!4589560)))

(declare-fun lt!1752396 () ListMap!3837)

(assert (=> bs!1007553 (= (= lt!1752396 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184540 lambda!184537))))

(declare-fun bs!1007554 () Bool)

(assert (= bs!1007554 (and d!1443536 b!4589563)))

(assert (=> bs!1007554 (= (= lt!1752396 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184540 lambda!184538))))

(assert (=> bs!1007554 (= (= lt!1752396 lt!1752404) (= lambda!184540 lambda!184539))))

(assert (=> d!1443536 true))

(declare-fun b!4589559 () Bool)

(declare-fun e!2862377 () Bool)

(assert (=> b!4589559 (= e!2862377 (invariantList!1103 (toList!4576 lt!1752396)))))

(declare-fun bm!320496 () Bool)

(declare-fun call!320503 () Unit!107278)

(declare-fun lemmaContainsAllItsOwnKeys!420 (ListMap!3837) Unit!107278)

(assert (=> bm!320496 (= call!320503 (lemmaContainsAllItsOwnKeys!420 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))))))

(assert (=> d!1443536 e!2862377))

(declare-fun res!1918470 () Bool)

(assert (=> d!1443536 (=> (not res!1918470) (not e!2862377))))

(assert (=> d!1443536 (= res!1918470 (forall!10524 (_2!29080 (h!56922 (toList!4575 lm!1477))) lambda!184540))))

(declare-fun e!2862375 () ListMap!3837)

(assert (=> d!1443536 (= lt!1752396 e!2862375)))

(declare-fun c!786006 () Bool)

(assert (=> d!1443536 (= c!786006 ((_ is Nil!50980) (_2!29080 (h!56922 (toList!4575 lm!1477)))))))

(assert (=> d!1443536 (noDuplicateKeys!1280 (_2!29080 (h!56922 (toList!4575 lm!1477))))))

(assert (=> d!1443536 (= (addToMapMapFromBucket!793 (_2!29080 (h!56922 (toList!4575 lm!1477))) (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) lt!1752396)))

(assert (=> b!4589560 (= e!2862375 (extractMap!1340 (t!358099 (toList!4575 lm!1477))))))

(declare-fun lt!1752405 () Unit!107278)

(assert (=> b!4589560 (= lt!1752405 call!320503)))

(declare-fun call!320502 () Bool)

(assert (=> b!4589560 call!320502))

(declare-fun lt!1752397 () Unit!107278)

(assert (=> b!4589560 (= lt!1752397 lt!1752405)))

(declare-fun call!320501 () Bool)

(assert (=> b!4589560 call!320501))

(declare-fun lt!1752400 () Unit!107278)

(declare-fun Unit!107307 () Unit!107278)

(assert (=> b!4589560 (= lt!1752400 Unit!107307)))

(declare-fun b!4589561 () Bool)

(declare-fun e!2862376 () Bool)

(assert (=> b!4589561 (= e!2862376 (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) lambda!184539))))

(declare-fun b!4589562 () Bool)

(declare-fun res!1918468 () Bool)

(assert (=> b!4589562 (=> (not res!1918468) (not e!2862377))))

(assert (=> b!4589562 (= res!1918468 (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) lambda!184540))))

(assert (=> b!4589563 (= e!2862375 lt!1752404)))

(declare-fun lt!1752390 () ListMap!3837)

(declare-fun +!1722 (ListMap!3837 tuple2!51570) ListMap!3837)

(assert (=> b!4589563 (= lt!1752390 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(assert (=> b!4589563 (= lt!1752404 (addToMapMapFromBucket!793 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))) (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun lt!1752387 () Unit!107278)

(assert (=> b!4589563 (= lt!1752387 call!320503)))

(assert (=> b!4589563 call!320502))

(declare-fun lt!1752399 () Unit!107278)

(assert (=> b!4589563 (= lt!1752399 lt!1752387)))

(assert (=> b!4589563 call!320501))

(declare-fun lt!1752395 () Unit!107278)

(declare-fun Unit!107308 () Unit!107278)

(assert (=> b!4589563 (= lt!1752395 Unit!107308)))

(assert (=> b!4589563 (forall!10524 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))) lambda!184539)))

(declare-fun lt!1752392 () Unit!107278)

(declare-fun Unit!107309 () Unit!107278)

(assert (=> b!4589563 (= lt!1752392 Unit!107309)))

(declare-fun lt!1752389 () Unit!107278)

(declare-fun Unit!107310 () Unit!107278)

(assert (=> b!4589563 (= lt!1752389 Unit!107310)))

(declare-fun lt!1752402 () Unit!107278)

(declare-fun forallContained!2785 (List!51104 Int tuple2!51570) Unit!107278)

(assert (=> b!4589563 (= lt!1752402 (forallContained!2785 (toList!4576 lt!1752390) lambda!184539 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(assert (=> b!4589563 (contains!13884 lt!1752390 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(declare-fun lt!1752401 () Unit!107278)

(declare-fun Unit!107311 () Unit!107278)

(assert (=> b!4589563 (= lt!1752401 Unit!107311)))

(assert (=> b!4589563 (contains!13884 lt!1752404 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(declare-fun lt!1752398 () Unit!107278)

(declare-fun Unit!107312 () Unit!107278)

(assert (=> b!4589563 (= lt!1752398 Unit!107312)))

(assert (=> b!4589563 (forall!10524 (_2!29080 (h!56922 (toList!4575 lm!1477))) lambda!184539)))

(declare-fun lt!1752393 () Unit!107278)

(declare-fun Unit!107313 () Unit!107278)

(assert (=> b!4589563 (= lt!1752393 Unit!107313)))

(assert (=> b!4589563 (forall!10524 (toList!4576 lt!1752390) lambda!184539)))

(declare-fun lt!1752406 () Unit!107278)

(declare-fun Unit!107314 () Unit!107278)

(assert (=> b!4589563 (= lt!1752406 Unit!107314)))

(declare-fun lt!1752407 () Unit!107278)

(declare-fun Unit!107315 () Unit!107278)

(assert (=> b!4589563 (= lt!1752407 Unit!107315)))

(declare-fun lt!1752391 () Unit!107278)

(declare-fun addForallContainsKeyThenBeforeAdding!420 (ListMap!3837 ListMap!3837 K!12350 V!12596) Unit!107278)

(assert (=> b!4589563 (= lt!1752391 (addForallContainsKeyThenBeforeAdding!420 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) lt!1752404 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (_2!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> b!4589563 (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) lambda!184539)))

(declare-fun lt!1752388 () Unit!107278)

(assert (=> b!4589563 (= lt!1752388 lt!1752391)))

(assert (=> b!4589563 (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) lambda!184539)))

(declare-fun lt!1752394 () Unit!107278)

(declare-fun Unit!107316 () Unit!107278)

(assert (=> b!4589563 (= lt!1752394 Unit!107316)))

(declare-fun res!1918469 () Bool)

(assert (=> b!4589563 (= res!1918469 (forall!10524 (_2!29080 (h!56922 (toList!4575 lm!1477))) lambda!184539))))

(assert (=> b!4589563 (=> (not res!1918469) (not e!2862376))))

(assert (=> b!4589563 e!2862376))

(declare-fun lt!1752403 () Unit!107278)

(declare-fun Unit!107317 () Unit!107278)

(assert (=> b!4589563 (= lt!1752403 Unit!107317)))

(declare-fun bm!320497 () Bool)

(assert (=> bm!320497 (= call!320501 (forall!10524 (ite c!786006 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (toList!4576 lt!1752390)) (ite c!786006 lambda!184537 lambda!184539)))))

(declare-fun bm!320498 () Bool)

(assert (=> bm!320498 (= call!320502 (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (ite c!786006 lambda!184537 lambda!184538)))))

(assert (= (and d!1443536 c!786006) b!4589560))

(assert (= (and d!1443536 (not c!786006)) b!4589563))

(assert (= (and b!4589563 res!1918469) b!4589561))

(assert (= (or b!4589560 b!4589563) bm!320497))

(assert (= (or b!4589560 b!4589563) bm!320498))

(assert (= (or b!4589560 b!4589563) bm!320496))

(assert (= (and d!1443536 res!1918470) b!4589562))

(assert (= (and b!4589562 res!1918468) b!4589559))

(declare-fun m!5412429 () Bool)

(assert (=> d!1443536 m!5412429))

(assert (=> d!1443536 m!5412165))

(declare-fun m!5412431 () Bool)

(assert (=> b!4589559 m!5412431))

(declare-fun m!5412433 () Bool)

(assert (=> bm!320498 m!5412433))

(assert (=> bm!320496 m!5412133))

(declare-fun m!5412435 () Bool)

(assert (=> bm!320496 m!5412435))

(declare-fun m!5412437 () Bool)

(assert (=> b!4589562 m!5412437))

(declare-fun m!5412439 () Bool)

(assert (=> bm!320497 m!5412439))

(declare-fun m!5412441 () Bool)

(assert (=> b!4589561 m!5412441))

(declare-fun m!5412443 () Bool)

(assert (=> b!4589563 m!5412443))

(declare-fun m!5412445 () Bool)

(assert (=> b!4589563 m!5412445))

(assert (=> b!4589563 m!5412441))

(assert (=> b!4589563 m!5412443))

(declare-fun m!5412447 () Bool)

(assert (=> b!4589563 m!5412447))

(declare-fun m!5412449 () Bool)

(assert (=> b!4589563 m!5412449))

(assert (=> b!4589563 m!5412133))

(declare-fun m!5412451 () Bool)

(assert (=> b!4589563 m!5412451))

(assert (=> b!4589563 m!5412451))

(declare-fun m!5412453 () Bool)

(assert (=> b!4589563 m!5412453))

(assert (=> b!4589563 m!5412133))

(declare-fun m!5412455 () Bool)

(assert (=> b!4589563 m!5412455))

(declare-fun m!5412457 () Bool)

(assert (=> b!4589563 m!5412457))

(assert (=> b!4589563 m!5412441))

(declare-fun m!5412459 () Bool)

(assert (=> b!4589563 m!5412459))

(assert (=> b!4589274 d!1443536))

(declare-fun bs!1007555 () Bool)

(declare-fun d!1443538 () Bool)

(assert (= bs!1007555 (and d!1443538 start!456868)))

(declare-fun lambda!184541 () Int)

(assert (=> bs!1007555 (= lambda!184541 lambda!184415)))

(declare-fun bs!1007556 () Bool)

(assert (= bs!1007556 (and d!1443538 d!1443400)))

(assert (=> bs!1007556 (= lambda!184541 lambda!184433)))

(declare-fun bs!1007557 () Bool)

(assert (= bs!1007557 (and d!1443538 d!1443410)))

(assert (=> bs!1007557 (= lambda!184541 lambda!184436)))

(declare-fun bs!1007558 () Bool)

(assert (= bs!1007558 (and d!1443538 d!1443418)))

(assert (=> bs!1007558 (not (= lambda!184541 lambda!184439))))

(declare-fun lt!1752408 () ListMap!3837)

(assert (=> d!1443538 (invariantList!1103 (toList!4576 lt!1752408))))

(declare-fun e!2862378 () ListMap!3837)

(assert (=> d!1443538 (= lt!1752408 e!2862378)))

(declare-fun c!786007 () Bool)

(assert (=> d!1443538 (= c!786007 ((_ is Cons!50981) (t!358099 (toList!4575 lm!1477))))))

(assert (=> d!1443538 (forall!10522 (t!358099 (toList!4575 lm!1477)) lambda!184541)))

(assert (=> d!1443538 (= (extractMap!1340 (t!358099 (toList!4575 lm!1477))) lt!1752408)))

(declare-fun b!4589566 () Bool)

(assert (=> b!4589566 (= e!2862378 (addToMapMapFromBucket!793 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))))))

(declare-fun b!4589567 () Bool)

(assert (=> b!4589567 (= e!2862378 (ListMap!3838 Nil!50980))))

(assert (= (and d!1443538 c!786007) b!4589566))

(assert (= (and d!1443538 (not c!786007)) b!4589567))

(declare-fun m!5412461 () Bool)

(assert (=> d!1443538 m!5412461))

(declare-fun m!5412463 () Bool)

(assert (=> d!1443538 m!5412463))

(declare-fun m!5412465 () Bool)

(assert (=> b!4589566 m!5412465))

(assert (=> b!4589566 m!5412465))

(declare-fun m!5412467 () Bool)

(assert (=> b!4589566 m!5412467))

(assert (=> b!4589274 d!1443538))

(declare-fun d!1443540 () Bool)

(declare-fun noDuplicatedKeys!311 (List!51104) Bool)

(assert (=> d!1443540 (= (invariantList!1103 (toList!4576 lt!1752177)) (noDuplicatedKeys!311 (toList!4576 lt!1752177)))))

(declare-fun bs!1007559 () Bool)

(assert (= bs!1007559 d!1443540))

(declare-fun m!5412469 () Bool)

(assert (=> bs!1007559 m!5412469))

(assert (=> d!1443400 d!1443540))

(declare-fun d!1443542 () Bool)

(declare-fun res!1918471 () Bool)

(declare-fun e!2862379 () Bool)

(assert (=> d!1443542 (=> res!1918471 e!2862379)))

(assert (=> d!1443542 (= res!1918471 ((_ is Nil!50981) (toList!4575 lm!1477)))))

(assert (=> d!1443542 (= (forall!10522 (toList!4575 lm!1477) lambda!184433) e!2862379)))

(declare-fun b!4589568 () Bool)

(declare-fun e!2862380 () Bool)

(assert (=> b!4589568 (= e!2862379 e!2862380)))

(declare-fun res!1918472 () Bool)

(assert (=> b!4589568 (=> (not res!1918472) (not e!2862380))))

(assert (=> b!4589568 (= res!1918472 (dynLambda!21350 lambda!184433 (h!56922 (toList!4575 lm!1477))))))

(declare-fun b!4589569 () Bool)

(assert (=> b!4589569 (= e!2862380 (forall!10522 (t!358099 (toList!4575 lm!1477)) lambda!184433))))

(assert (= (and d!1443542 (not res!1918471)) b!4589568))

(assert (= (and b!4589568 res!1918472) b!4589569))

(declare-fun b_lambda!168227 () Bool)

(assert (=> (not b_lambda!168227) (not b!4589568)))

(declare-fun m!5412471 () Bool)

(assert (=> b!4589568 m!5412471))

(declare-fun m!5412473 () Bool)

(assert (=> b!4589569 m!5412473))

(assert (=> d!1443400 d!1443542))

(declare-fun d!1443544 () Bool)

(declare-fun res!1918473 () Bool)

(declare-fun e!2862381 () Bool)

(assert (=> d!1443544 (=> res!1918473 e!2862381)))

(assert (=> d!1443544 (= res!1918473 ((_ is Nil!50981) (t!358099 (toList!4575 lm!1477))))))

(assert (=> d!1443544 (= (forall!10522 (t!358099 (toList!4575 lm!1477)) lambda!184415) e!2862381)))

(declare-fun b!4589570 () Bool)

(declare-fun e!2862382 () Bool)

(assert (=> b!4589570 (= e!2862381 e!2862382)))

(declare-fun res!1918474 () Bool)

(assert (=> b!4589570 (=> (not res!1918474) (not e!2862382))))

(assert (=> b!4589570 (= res!1918474 (dynLambda!21350 lambda!184415 (h!56922 (t!358099 (toList!4575 lm!1477)))))))

(declare-fun b!4589571 () Bool)

(assert (=> b!4589571 (= e!2862382 (forall!10522 (t!358099 (t!358099 (toList!4575 lm!1477))) lambda!184415))))

(assert (= (and d!1443544 (not res!1918473)) b!4589570))

(assert (= (and b!4589570 res!1918474) b!4589571))

(declare-fun b_lambda!168229 () Bool)

(assert (=> (not b_lambda!168229) (not b!4589570)))

(declare-fun m!5412475 () Bool)

(assert (=> b!4589570 m!5412475))

(declare-fun m!5412477 () Bool)

(assert (=> b!4589571 m!5412477))

(assert (=> b!4589308 d!1443544))

(assert (=> b!4589269 d!1443508))

(assert (=> b!4589269 d!1443510))

(declare-fun d!1443546 () Bool)

(declare-fun res!1918479 () Bool)

(declare-fun e!2862387 () Bool)

(assert (=> d!1443546 (=> res!1918479 e!2862387)))

(assert (=> d!1443546 (= res!1918479 (and ((_ is Cons!50981) (toList!4575 lm!1477)) (= (_1!29080 (h!56922 (toList!4575 lm!1477))) lt!1752106)))))

(assert (=> d!1443546 (= (containsKey!2076 (toList!4575 lm!1477) lt!1752106) e!2862387)))

(declare-fun b!4589576 () Bool)

(declare-fun e!2862388 () Bool)

(assert (=> b!4589576 (= e!2862387 e!2862388)))

(declare-fun res!1918480 () Bool)

(assert (=> b!4589576 (=> (not res!1918480) (not e!2862388))))

(assert (=> b!4589576 (= res!1918480 (and (or (not ((_ is Cons!50981) (toList!4575 lm!1477))) (bvsle (_1!29080 (h!56922 (toList!4575 lm!1477))) lt!1752106)) ((_ is Cons!50981) (toList!4575 lm!1477)) (bvslt (_1!29080 (h!56922 (toList!4575 lm!1477))) lt!1752106)))))

(declare-fun b!4589577 () Bool)

(assert (=> b!4589577 (= e!2862388 (containsKey!2076 (t!358099 (toList!4575 lm!1477)) lt!1752106))))

(assert (= (and d!1443546 (not res!1918479)) b!4589576))

(assert (= (and b!4589576 res!1918480) b!4589577))

(declare-fun m!5412479 () Bool)

(assert (=> b!4589577 m!5412479))

(assert (=> d!1443408 d!1443546))

(declare-fun e!2862389 () Bool)

(declare-fun tp!1339912 () Bool)

(declare-fun b!4589578 () Bool)

(assert (=> b!4589578 (= e!2862389 (and tp_is_empty!28413 tp_is_empty!28415 tp!1339912))))

(assert (=> b!4589320 (= tp!1339907 e!2862389)))

(assert (= (and b!4589320 ((_ is Cons!50980) (t!358098 (t!358098 newBucket!178)))) b!4589578))

(declare-fun e!2862390 () Bool)

(declare-fun b!4589579 () Bool)

(declare-fun tp!1339913 () Bool)

(assert (=> b!4589579 (= e!2862390 (and tp_is_empty!28413 tp_is_empty!28415 tp!1339913))))

(assert (=> b!4589315 (= tp!1339903 e!2862390)))

(assert (= (and b!4589315 ((_ is Cons!50980) (_2!29080 (h!56922 (toList!4575 lm!1477))))) b!4589579))

(declare-fun b!4589580 () Bool)

(declare-fun e!2862391 () Bool)

(declare-fun tp!1339914 () Bool)

(declare-fun tp!1339915 () Bool)

(assert (=> b!4589580 (= e!2862391 (and tp!1339914 tp!1339915))))

(assert (=> b!4589315 (= tp!1339904 e!2862391)))

(assert (= (and b!4589315 ((_ is Cons!50981) (t!358099 (toList!4575 lm!1477)))) b!4589580))

(declare-fun b_lambda!168231 () Bool)

(assert (= b_lambda!168215 (or d!1443418 b_lambda!168231)))

(declare-fun bs!1007560 () Bool)

(declare-fun d!1443548 () Bool)

(assert (= bs!1007560 (and d!1443548 d!1443418)))

(assert (=> bs!1007560 (= (dynLambda!21350 lambda!184439 (h!56922 (toList!4575 lm!1477))) (allKeysSameHash!1136 (_2!29080 (h!56922 (toList!4575 lm!1477))) (_1!29080 (h!56922 (toList!4575 lm!1477))) hashF!1107))))

(declare-fun m!5412481 () Bool)

(assert (=> bs!1007560 m!5412481))

(assert (=> b!4589470 d!1443548))

(declare-fun b_lambda!168233 () Bool)

(assert (= b_lambda!168213 (or d!1443410 b_lambda!168233)))

(declare-fun bs!1007561 () Bool)

(declare-fun d!1443550 () Bool)

(assert (= bs!1007561 (and d!1443550 d!1443410)))

(assert (=> bs!1007561 (= (dynLambda!21350 lambda!184436 (h!56922 (toList!4575 lm!1477))) (noDuplicateKeys!1280 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))

(assert (=> bs!1007561 m!5412165))

(assert (=> b!4589452 d!1443550))

(declare-fun b_lambda!168235 () Bool)

(assert (= b_lambda!168229 (or start!456868 b_lambda!168235)))

(declare-fun bs!1007562 () Bool)

(declare-fun d!1443552 () Bool)

(assert (= bs!1007562 (and d!1443552 start!456868)))

(assert (=> bs!1007562 (= (dynLambda!21350 lambda!184415 (h!56922 (t!358099 (toList!4575 lm!1477)))) (noDuplicateKeys!1280 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))))))

(declare-fun m!5412483 () Bool)

(assert (=> bs!1007562 m!5412483))

(assert (=> b!4589570 d!1443552))

(declare-fun b_lambda!168237 () Bool)

(assert (= b_lambda!168227 (or d!1443400 b_lambda!168237)))

(declare-fun bs!1007563 () Bool)

(declare-fun d!1443554 () Bool)

(assert (= bs!1007563 (and d!1443554 d!1443400)))

(assert (=> bs!1007563 (= (dynLambda!21350 lambda!184433 (h!56922 (toList!4575 lm!1477))) (noDuplicateKeys!1280 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))

(assert (=> bs!1007563 m!5412165))

(assert (=> b!4589568 d!1443554))

(declare-fun b_lambda!168239 () Bool)

(assert (= b_lambda!168211 (or d!1443384 b_lambda!168239)))

(declare-fun bs!1007564 () Bool)

(declare-fun d!1443556 () Bool)

(assert (= bs!1007564 (and d!1443556 d!1443384)))

(assert (=> bs!1007564 (= (dynLambda!21352 lambda!184418 (h!56921 newBucket!178)) (= (hash!3147 hashF!1107 (_1!29079 (h!56921 newBucket!178))) hash!344))))

(declare-fun m!5412485 () Bool)

(assert (=> bs!1007564 m!5412485))

(assert (=> b!4589433 d!1443556))

(check-sat (not b_lambda!168231) (not d!1443494) (not b!4589464) (not d!1443536) (not b!4589569) (not b!4589571) (not b!4589439) (not d!1443492) (not b!4589580) (not b!4589548) (not d!1443538) (not b_lambda!168199) (not b_lambda!168235) (not b!4589453) (not b!4589536) (not b!4589499) (not b!4589468) (not b_lambda!168239) (not b!4589535) (not bs!1007560) (not b_lambda!168237) (not b!4589579) (not b!4589504) (not b!4589562) (not bm!320498) (not b_lambda!168233) (not d!1443504) (not b!4589563) (not b!4589500) (not b!4589451) (not bs!1007561) (not bm!320496) (not d!1443488) (not b!4589544) (not b!4589440) (not bm!320497) (not b!4589534) (not d!1443526) tp_is_empty!28415 (not b!4589518) (not d!1443506) (not b!4589577) (not b!4589449) (not b!4589516) (not b!4589503) (not b!4589561) (not d!1443540) (not d!1443508) (not d!1443510) (not d!1443532) (not b!4589446) (not b!4589434) (not b!4589505) (not bs!1007562) (not d!1443530) tp_is_empty!28413 (not b!4589448) (not b!4589566) (not d!1443498) (not b!4589559) (not bs!1007564) (not b!4589471) (not b!4589578) (not bs!1007563) (not d!1443534) (not d!1443486))
(check-sat)
(get-model)

(declare-fun d!1443630 () Bool)

(declare-fun res!1918543 () Bool)

(declare-fun e!2862462 () Bool)

(assert (=> d!1443630 (=> res!1918543 e!2862462)))

(assert (=> d!1443630 (= res!1918543 ((_ is Nil!50983) lt!1752304))))

(assert (=> d!1443630 (= (noDuplicate!796 lt!1752304) e!2862462)))

(declare-fun b!4589667 () Bool)

(declare-fun e!2862463 () Bool)

(assert (=> b!4589667 (= e!2862462 e!2862463)))

(declare-fun res!1918544 () Bool)

(assert (=> b!4589667 (=> (not res!1918544) (not e!2862463))))

(assert (=> b!4589667 (= res!1918544 (not (contains!13887 (t!358101 lt!1752304) (h!56926 lt!1752304))))))

(declare-fun b!4589668 () Bool)

(assert (=> b!4589668 (= e!2862463 (noDuplicate!796 (t!358101 lt!1752304)))))

(assert (= (and d!1443630 (not res!1918543)) b!4589667))

(assert (= (and b!4589667 res!1918544) b!4589668))

(declare-fun m!5412657 () Bool)

(assert (=> b!4589667 m!5412657))

(declare-fun m!5412659 () Bool)

(assert (=> b!4589668 m!5412659))

(assert (=> d!1443504 d!1443630))

(declare-fun d!1443638 () Bool)

(assert (=> d!1443638 (= (invariantList!1103 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (noDuplicatedKeys!311 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))

(declare-fun bs!1007627 () Bool)

(assert (= bs!1007627 d!1443638))

(declare-fun m!5412663 () Bool)

(assert (=> bs!1007627 m!5412663))

(assert (=> d!1443504 d!1443638))

(declare-fun bs!1007628 () Bool)

(declare-fun d!1443642 () Bool)

(assert (= bs!1007628 (and d!1443642 b!4589503)))

(declare-fun lambda!184557 () Int)

(assert (=> bs!1007628 (= (= (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (= lambda!184557 lambda!184492))))

(declare-fun bs!1007629 () Bool)

(assert (= bs!1007629 (and d!1443642 b!4589505)))

(assert (=> bs!1007629 (= lambda!184557 lambda!184495)))

(declare-fun bs!1007630 () Bool)

(assert (= bs!1007630 (and d!1443642 b!4589500)))

(assert (=> bs!1007630 (= (= (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (= lambda!184557 lambda!184496))))

(declare-fun bs!1007631 () Bool)

(assert (= bs!1007631 (and d!1443642 b!4589535)))

(assert (=> bs!1007631 (= (= (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (= lambda!184557 lambda!184507))))

(assert (=> d!1443642 true))

(assert (=> d!1443642 true))

(assert (=> d!1443642 (forall!10526 lt!1752303 lambda!184557)))

(declare-fun lt!1752446 () Unit!107278)

(declare-fun choose!30621 (List!51104 List!51107 tuple2!51570) Unit!107278)

(assert (=> d!1443642 (= lt!1752446 (choose!30621 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) lt!1752303 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))

(assert (=> d!1443642 (invariantList!1103 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))

(assert (=> d!1443642 (= (lemmaForallContainsAddHeadPreserves!216 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) lt!1752303 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) lt!1752446)))

(declare-fun bs!1007632 () Bool)

(assert (= bs!1007632 d!1443642))

(declare-fun m!5412673 () Bool)

(assert (=> bs!1007632 m!5412673))

(declare-fun m!5412675 () Bool)

(assert (=> bs!1007632 m!5412675))

(declare-fun m!5412677 () Bool)

(assert (=> bs!1007632 m!5412677))

(assert (=> b!4589505 d!1443642))

(declare-fun d!1443650 () Bool)

(declare-fun res!1918551 () Bool)

(declare-fun e!2862476 () Bool)

(assert (=> d!1443650 (=> res!1918551 e!2862476)))

(assert (=> d!1443650 (= res!1918551 ((_ is Nil!50983) lt!1752303))))

(assert (=> d!1443650 (= (forall!10526 lt!1752303 lambda!184495) e!2862476)))

(declare-fun b!4589689 () Bool)

(declare-fun e!2862477 () Bool)

(assert (=> b!4589689 (= e!2862476 e!2862477)))

(declare-fun res!1918552 () Bool)

(assert (=> b!4589689 (=> (not res!1918552) (not e!2862477))))

(declare-fun dynLambda!21354 (Int K!12350) Bool)

(assert (=> b!4589689 (= res!1918552 (dynLambda!21354 lambda!184495 (h!56926 lt!1752303)))))

(declare-fun b!4589690 () Bool)

(assert (=> b!4589690 (= e!2862477 (forall!10526 (t!358101 lt!1752303) lambda!184495))))

(assert (= (and d!1443650 (not res!1918551)) b!4589689))

(assert (= (and b!4589689 res!1918552) b!4589690))

(declare-fun b_lambda!168263 () Bool)

(assert (=> (not b_lambda!168263) (not b!4589689)))

(declare-fun m!5412679 () Bool)

(assert (=> b!4589689 m!5412679))

(declare-fun m!5412681 () Bool)

(assert (=> b!4589690 m!5412681))

(assert (=> b!4589505 d!1443650))

(declare-fun bs!1007633 () Bool)

(declare-fun b!4589696 () Bool)

(assert (= bs!1007633 (and b!4589696 b!4589505)))

(declare-fun lambda!184560 () Int)

(assert (=> bs!1007633 (= (= (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (= lambda!184560 lambda!184495))))

(declare-fun bs!1007634 () Bool)

(assert (= bs!1007634 (and b!4589696 b!4589535)))

(assert (=> bs!1007634 (= (= (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (= lambda!184560 lambda!184507))))

(declare-fun bs!1007635 () Bool)

(assert (= bs!1007635 (and b!4589696 d!1443642)))

(assert (=> bs!1007635 (= (= (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (= lambda!184560 lambda!184557))))

(declare-fun bs!1007636 () Bool)

(assert (= bs!1007636 (and b!4589696 b!4589500)))

(assert (=> bs!1007636 (= (= (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (= lambda!184560 lambda!184496))))

(declare-fun bs!1007637 () Bool)

(assert (= bs!1007637 (and b!4589696 b!4589503)))

(assert (=> bs!1007637 (= (= (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (= lambda!184560 lambda!184492))))

(assert (=> b!4589696 true))

(declare-fun bs!1007638 () Bool)

(declare-fun b!4589698 () Bool)

(assert (= bs!1007638 (and b!4589698 b!4589696)))

(declare-fun lambda!184561 () Int)

(assert (=> bs!1007638 (= (= (Cons!50980 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (= lambda!184561 lambda!184560))))

(declare-fun bs!1007640 () Bool)

(assert (= bs!1007640 (and b!4589698 b!4589505)))

(assert (=> bs!1007640 (= (= (Cons!50980 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (= lambda!184561 lambda!184495))))

(declare-fun bs!1007642 () Bool)

(assert (= bs!1007642 (and b!4589698 b!4589535)))

(assert (=> bs!1007642 (= (= (Cons!50980 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (= lambda!184561 lambda!184507))))

(declare-fun bs!1007644 () Bool)

(assert (= bs!1007644 (and b!4589698 d!1443642)))

(assert (=> bs!1007644 (= (= (Cons!50980 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (= lambda!184561 lambda!184557))))

(declare-fun bs!1007645 () Bool)

(assert (= bs!1007645 (and b!4589698 b!4589500)))

(assert (=> bs!1007645 (= (= (Cons!50980 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (= lambda!184561 lambda!184496))))

(declare-fun bs!1007647 () Bool)

(assert (= bs!1007647 (and b!4589698 b!4589503)))

(assert (=> bs!1007647 (= (= (Cons!50980 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (= lambda!184561 lambda!184492))))

(assert (=> b!4589698 true))

(declare-fun bs!1007650 () Bool)

(declare-fun b!4589693 () Bool)

(assert (= bs!1007650 (and b!4589693 b!4589698)))

(declare-fun lambda!184563 () Int)

(assert (=> bs!1007650 (= (= (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (Cons!50980 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))) (= lambda!184563 lambda!184561))))

(declare-fun bs!1007652 () Bool)

(assert (= bs!1007652 (and b!4589693 b!4589696)))

(assert (=> bs!1007652 (= (= (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (= lambda!184563 lambda!184560))))

(declare-fun bs!1007654 () Bool)

(assert (= bs!1007654 (and b!4589693 b!4589505)))

(assert (=> bs!1007654 (= (= (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (= lambda!184563 lambda!184495))))

(declare-fun bs!1007655 () Bool)

(assert (= bs!1007655 (and b!4589693 b!4589535)))

(assert (=> bs!1007655 (= (= (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (= lambda!184563 lambda!184507))))

(declare-fun bs!1007656 () Bool)

(assert (= bs!1007656 (and b!4589693 d!1443642)))

(assert (=> bs!1007656 (= (= (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (= lambda!184563 lambda!184557))))

(declare-fun bs!1007657 () Bool)

(assert (= bs!1007657 (and b!4589693 b!4589500)))

(assert (=> bs!1007657 (= (= (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (= lambda!184563 lambda!184496))))

(declare-fun bs!1007659 () Bool)

(assert (= bs!1007659 (and b!4589693 b!4589503)))

(assert (=> bs!1007659 (= lambda!184563 lambda!184492)))

(assert (=> b!4589693 true))

(declare-fun bs!1007660 () Bool)

(declare-fun b!4589697 () Bool)

(assert (= bs!1007660 (and b!4589697 b!4589504)))

(declare-fun lambda!184564 () Int)

(assert (=> bs!1007660 (= lambda!184564 lambda!184497)))

(declare-fun bs!1007661 () Bool)

(assert (= bs!1007661 (and b!4589697 b!4589536)))

(assert (=> bs!1007661 (= lambda!184564 lambda!184508)))

(declare-fun b!4589691 () Bool)

(declare-fun e!2862478 () Unit!107278)

(declare-fun Unit!107327 () Unit!107278)

(assert (=> b!4589691 (= e!2862478 Unit!107327)))

(declare-fun b!4589692 () Bool)

(declare-fun res!1918555 () Bool)

(declare-fun e!2862480 () Bool)

(assert (=> b!4589692 (=> (not res!1918555) (not e!2862480))))

(declare-fun lt!1752450 () List!51107)

(assert (=> b!4589692 (= res!1918555 (= (length!448 lt!1752450) (length!449 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(declare-fun res!1918554 () Bool)

(assert (=> b!4589693 (=> (not res!1918554) (not e!2862480))))

(assert (=> b!4589693 (= res!1918554 (forall!10526 lt!1752450 lambda!184563))))

(declare-fun b!4589694 () Bool)

(declare-fun e!2862479 () List!51107)

(assert (=> b!4589694 (= e!2862479 Nil!50983)))

(declare-fun b!4589695 () Bool)

(assert (=> b!4589695 false))

(declare-fun e!2862481 () Unit!107278)

(declare-fun Unit!107329 () Unit!107278)

(assert (=> b!4589695 (= e!2862481 Unit!107329)))

(assert (=> b!4589696 false))

(declare-fun lt!1752454 () Unit!107278)

(assert (=> b!4589696 (= lt!1752454 (forallContained!2784 (getKeysList!551 (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) lambda!184560 (_1!29079 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))))

(declare-fun Unit!107330 () Unit!107278)

(assert (=> b!4589696 (= e!2862478 Unit!107330)))

(declare-fun d!1443652 () Bool)

(assert (=> d!1443652 e!2862480))

(declare-fun res!1918553 () Bool)

(assert (=> d!1443652 (=> (not res!1918553) (not e!2862480))))

(assert (=> d!1443652 (= res!1918553 (noDuplicate!796 lt!1752450))))

(assert (=> d!1443652 (= lt!1752450 e!2862479)))

(declare-fun c!786027 () Bool)

(assert (=> d!1443652 (= c!786027 ((_ is Cons!50980) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))

(assert (=> d!1443652 (invariantList!1103 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))

(assert (=> d!1443652 (= (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) lt!1752450)))

(assert (=> b!4589697 (= e!2862480 (= (content!8602 lt!1752450) (content!8602 (map!11249 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) lambda!184564))))))

(assert (=> b!4589698 (= e!2862479 (Cons!50983 (_1!29079 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (getKeysList!551 (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))))

(declare-fun c!786026 () Bool)

(assert (=> b!4589698 (= c!786026 (containsKey!2075 (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (_1!29079 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))))

(declare-fun lt!1752453 () Unit!107278)

(assert (=> b!4589698 (= lt!1752453 e!2862481)))

(declare-fun c!786025 () Bool)

(assert (=> b!4589698 (= c!786025 (contains!13887 (getKeysList!551 (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (_1!29079 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))))

(declare-fun lt!1752451 () Unit!107278)

(assert (=> b!4589698 (= lt!1752451 e!2862478)))

(declare-fun lt!1752449 () List!51107)

(assert (=> b!4589698 (= lt!1752449 (getKeysList!551 (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(declare-fun lt!1752455 () Unit!107278)

(assert (=> b!4589698 (= lt!1752455 (lemmaForallContainsAddHeadPreserves!216 (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) lt!1752449 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(assert (=> b!4589698 (forall!10526 lt!1752449 lambda!184561)))

(declare-fun lt!1752452 () Unit!107278)

(assert (=> b!4589698 (= lt!1752452 lt!1752455)))

(declare-fun b!4589699 () Bool)

(declare-fun Unit!107332 () Unit!107278)

(assert (=> b!4589699 (= e!2862481 Unit!107332)))

(assert (= (and d!1443652 c!786027) b!4589698))

(assert (= (and d!1443652 (not c!786027)) b!4589694))

(assert (= (and b!4589698 c!786026) b!4589695))

(assert (= (and b!4589698 (not c!786026)) b!4589699))

(assert (= (and b!4589698 c!786025) b!4589696))

(assert (= (and b!4589698 (not c!786025)) b!4589691))

(assert (= (and d!1443652 res!1918553) b!4589692))

(assert (= (and b!4589692 res!1918555) b!4589693))

(assert (= (and b!4589693 res!1918554) b!4589697))

(declare-fun m!5412695 () Bool)

(assert (=> b!4589698 m!5412695))

(declare-fun m!5412697 () Bool)

(assert (=> b!4589698 m!5412697))

(declare-fun m!5412699 () Bool)

(assert (=> b!4589698 m!5412699))

(declare-fun m!5412701 () Bool)

(assert (=> b!4589698 m!5412701))

(assert (=> b!4589698 m!5412695))

(declare-fun m!5412703 () Bool)

(assert (=> b!4589698 m!5412703))

(declare-fun m!5412705 () Bool)

(assert (=> b!4589693 m!5412705))

(declare-fun m!5412707 () Bool)

(assert (=> b!4589692 m!5412707))

(declare-fun m!5412709 () Bool)

(assert (=> b!4589692 m!5412709))

(declare-fun m!5412711 () Bool)

(assert (=> b!4589697 m!5412711))

(declare-fun m!5412713 () Bool)

(assert (=> b!4589697 m!5412713))

(assert (=> b!4589697 m!5412713))

(declare-fun m!5412715 () Bool)

(assert (=> b!4589697 m!5412715))

(assert (=> b!4589696 m!5412695))

(assert (=> b!4589696 m!5412695))

(declare-fun m!5412717 () Bool)

(assert (=> b!4589696 m!5412717))

(declare-fun m!5412719 () Bool)

(assert (=> d!1443652 m!5412719))

(assert (=> d!1443652 m!5412677))

(assert (=> b!4589505 d!1443652))

(declare-fun d!1443660 () Bool)

(declare-fun lt!1752457 () Bool)

(assert (=> d!1443660 (= lt!1752457 (select (content!8602 (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(declare-fun e!2862485 () Bool)

(assert (=> d!1443660 (= lt!1752457 e!2862485)))

(declare-fun res!1918557 () Bool)

(assert (=> d!1443660 (=> (not res!1918557) (not e!2862485))))

(assert (=> d!1443660 (= res!1918557 ((_ is Cons!50983) (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(assert (=> d!1443660 (= (contains!13887 (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) lt!1752457)))

(declare-fun b!4589704 () Bool)

(declare-fun e!2862484 () Bool)

(assert (=> b!4589704 (= e!2862485 e!2862484)))

(declare-fun res!1918556 () Bool)

(assert (=> b!4589704 (=> res!1918556 e!2862484)))

(assert (=> b!4589704 (= res!1918556 (= (h!56926 (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(declare-fun b!4589705 () Bool)

(assert (=> b!4589705 (= e!2862484 (contains!13887 (t!358101 (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(assert (= (and d!1443660 res!1918557) b!4589704))

(assert (= (and b!4589704 (not res!1918556)) b!4589705))

(assert (=> d!1443660 m!5412323))

(declare-fun m!5412721 () Bool)

(assert (=> d!1443660 m!5412721))

(declare-fun m!5412723 () Bool)

(assert (=> d!1443660 m!5412723))

(declare-fun m!5412725 () Bool)

(assert (=> b!4589705 m!5412725))

(assert (=> b!4589505 d!1443660))

(declare-fun d!1443662 () Bool)

(declare-fun res!1918558 () Bool)

(declare-fun e!2862488 () Bool)

(assert (=> d!1443662 (=> res!1918558 e!2862488)))

(assert (=> d!1443662 (= res!1918558 (and ((_ is Cons!50980) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (= (_1!29079 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))))

(assert (=> d!1443662 (= (containsKey!2075 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) e!2862488)))

(declare-fun b!4589710 () Bool)

(declare-fun e!2862489 () Bool)

(assert (=> b!4589710 (= e!2862488 e!2862489)))

(declare-fun res!1918559 () Bool)

(assert (=> b!4589710 (=> (not res!1918559) (not e!2862489))))

(assert (=> b!4589710 (= res!1918559 ((_ is Cons!50980) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))

(declare-fun b!4589711 () Bool)

(assert (=> b!4589711 (= e!2862489 (containsKey!2075 (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(assert (= (and d!1443662 (not res!1918558)) b!4589710))

(assert (= (and b!4589710 res!1918559) b!4589711))

(declare-fun m!5412727 () Bool)

(assert (=> b!4589711 m!5412727))

(assert (=> b!4589505 d!1443662))

(declare-fun bs!1007662 () Bool)

(declare-fun b!4589713 () Bool)

(assert (= bs!1007662 (and b!4589713 b!4589563)))

(declare-fun lambda!184565 () Int)

(assert (=> bs!1007662 (= (= (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))) lt!1752404) (= lambda!184565 lambda!184539))))

(declare-fun bs!1007663 () Bool)

(assert (= bs!1007663 (and b!4589713 b!4589560)))

(assert (=> bs!1007663 (= (= (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))) (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184565 lambda!184537))))

(declare-fun bs!1007664 () Bool)

(assert (= bs!1007664 (and b!4589713 d!1443536)))

(assert (=> bs!1007664 (= (= (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))) lt!1752396) (= lambda!184565 lambda!184540))))

(declare-fun bs!1007665 () Bool)

(assert (= bs!1007665 (and b!4589713 d!1443384)))

(assert (=> bs!1007665 (not (= lambda!184565 lambda!184418))))

(assert (=> bs!1007662 (= (= (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))) (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184565 lambda!184538))))

(assert (=> b!4589713 true))

(declare-fun bs!1007666 () Bool)

(declare-fun b!4589716 () Bool)

(assert (= bs!1007666 (and b!4589716 b!4589563)))

(declare-fun lambda!184566 () Int)

(assert (=> bs!1007666 (= (= (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))) lt!1752404) (= lambda!184566 lambda!184539))))

(declare-fun bs!1007667 () Bool)

(assert (= bs!1007667 (and b!4589716 b!4589713)))

(assert (=> bs!1007667 (= lambda!184566 lambda!184565)))

(declare-fun bs!1007668 () Bool)

(assert (= bs!1007668 (and b!4589716 b!4589560)))

(assert (=> bs!1007668 (= (= (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))) (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184566 lambda!184537))))

(declare-fun bs!1007669 () Bool)

(assert (= bs!1007669 (and b!4589716 d!1443536)))

(assert (=> bs!1007669 (= (= (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))) lt!1752396) (= lambda!184566 lambda!184540))))

(declare-fun bs!1007670 () Bool)

(assert (= bs!1007670 (and b!4589716 d!1443384)))

(assert (=> bs!1007670 (not (= lambda!184566 lambda!184418))))

(assert (=> bs!1007666 (= (= (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))) (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184566 lambda!184538))))

(assert (=> b!4589716 true))

(declare-fun lambda!184567 () Int)

(declare-fun lt!1752477 () ListMap!3837)

(assert (=> bs!1007666 (= (= lt!1752477 lt!1752404) (= lambda!184567 lambda!184539))))

(assert (=> bs!1007667 (= (= lt!1752477 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184567 lambda!184565))))

(assert (=> b!4589716 (= (= lt!1752477 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184567 lambda!184566))))

(assert (=> bs!1007668 (= (= lt!1752477 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184567 lambda!184537))))

(assert (=> bs!1007669 (= (= lt!1752477 lt!1752396) (= lambda!184567 lambda!184540))))

(assert (=> bs!1007670 (not (= lambda!184567 lambda!184418))))

(assert (=> bs!1007666 (= (= lt!1752477 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184567 lambda!184538))))

(assert (=> b!4589716 true))

(declare-fun bs!1007672 () Bool)

(declare-fun d!1443664 () Bool)

(assert (= bs!1007672 (and d!1443664 b!4589716)))

(declare-fun lt!1752469 () ListMap!3837)

(declare-fun lambda!184568 () Int)

(assert (=> bs!1007672 (= (= lt!1752469 lt!1752477) (= lambda!184568 lambda!184567))))

(declare-fun bs!1007673 () Bool)

(assert (= bs!1007673 (and d!1443664 b!4589563)))

(assert (=> bs!1007673 (= (= lt!1752469 lt!1752404) (= lambda!184568 lambda!184539))))

(declare-fun bs!1007674 () Bool)

(assert (= bs!1007674 (and d!1443664 b!4589713)))

(assert (=> bs!1007674 (= (= lt!1752469 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184568 lambda!184565))))

(assert (=> bs!1007672 (= (= lt!1752469 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184568 lambda!184566))))

(declare-fun bs!1007675 () Bool)

(assert (= bs!1007675 (and d!1443664 b!4589560)))

(assert (=> bs!1007675 (= (= lt!1752469 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184568 lambda!184537))))

(declare-fun bs!1007676 () Bool)

(assert (= bs!1007676 (and d!1443664 d!1443536)))

(assert (=> bs!1007676 (= (= lt!1752469 lt!1752396) (= lambda!184568 lambda!184540))))

(declare-fun bs!1007677 () Bool)

(assert (= bs!1007677 (and d!1443664 d!1443384)))

(assert (=> bs!1007677 (not (= lambda!184568 lambda!184418))))

(assert (=> bs!1007673 (= (= lt!1752469 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184568 lambda!184538))))

(assert (=> d!1443664 true))

(declare-fun b!4589712 () Bool)

(declare-fun e!2862492 () Bool)

(assert (=> b!4589712 (= e!2862492 (invariantList!1103 (toList!4576 lt!1752469)))))

(declare-fun bm!320502 () Bool)

(declare-fun call!320509 () Unit!107278)

(assert (=> bm!320502 (= call!320509 (lemmaContainsAllItsOwnKeys!420 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))))))

(assert (=> d!1443664 e!2862492))

(declare-fun res!1918562 () Bool)

(assert (=> d!1443664 (=> (not res!1918562) (not e!2862492))))

(assert (=> d!1443664 (= res!1918562 (forall!10524 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) lambda!184568))))

(declare-fun e!2862490 () ListMap!3837)

(assert (=> d!1443664 (= lt!1752469 e!2862490)))

(declare-fun c!786032 () Bool)

(assert (=> d!1443664 (= c!786032 ((_ is Nil!50980) (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))))))

(assert (=> d!1443664 (noDuplicateKeys!1280 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))))))

(assert (=> d!1443664 (= (addToMapMapFromBucket!793 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) lt!1752469)))

(assert (=> b!4589713 (= e!2862490 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))))))

(declare-fun lt!1752478 () Unit!107278)

(assert (=> b!4589713 (= lt!1752478 call!320509)))

(declare-fun call!320508 () Bool)

(assert (=> b!4589713 call!320508))

(declare-fun lt!1752470 () Unit!107278)

(assert (=> b!4589713 (= lt!1752470 lt!1752478)))

(declare-fun call!320507 () Bool)

(assert (=> b!4589713 call!320507))

(declare-fun lt!1752473 () Unit!107278)

(declare-fun Unit!107333 () Unit!107278)

(assert (=> b!4589713 (= lt!1752473 Unit!107333)))

(declare-fun b!4589714 () Bool)

(declare-fun e!2862491 () Bool)

(assert (=> b!4589714 (= e!2862491 (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) lambda!184567))))

(declare-fun b!4589715 () Bool)

(declare-fun res!1918560 () Bool)

(assert (=> b!4589715 (=> (not res!1918560) (not e!2862492))))

(assert (=> b!4589715 (= res!1918560 (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) lambda!184568))))

(assert (=> b!4589716 (= e!2862490 lt!1752477)))

(declare-fun lt!1752463 () ListMap!3837)

(assert (=> b!4589716 (= lt!1752463 (+!1722 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))) (h!56921 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))))))))

(assert (=> b!4589716 (= lt!1752477 (addToMapMapFromBucket!793 (t!358098 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))) (+!1722 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))) (h!56921 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))))))))

(declare-fun lt!1752460 () Unit!107278)

(assert (=> b!4589716 (= lt!1752460 call!320509)))

(assert (=> b!4589716 call!320508))

(declare-fun lt!1752472 () Unit!107278)

(assert (=> b!4589716 (= lt!1752472 lt!1752460)))

(assert (=> b!4589716 call!320507))

(declare-fun lt!1752468 () Unit!107278)

(declare-fun Unit!107334 () Unit!107278)

(assert (=> b!4589716 (= lt!1752468 Unit!107334)))

(assert (=> b!4589716 (forall!10524 (t!358098 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))) lambda!184567)))

(declare-fun lt!1752465 () Unit!107278)

(declare-fun Unit!107335 () Unit!107278)

(assert (=> b!4589716 (= lt!1752465 Unit!107335)))

(declare-fun lt!1752462 () Unit!107278)

(declare-fun Unit!107336 () Unit!107278)

(assert (=> b!4589716 (= lt!1752462 Unit!107336)))

(declare-fun lt!1752475 () Unit!107278)

(assert (=> b!4589716 (= lt!1752475 (forallContained!2785 (toList!4576 lt!1752463) lambda!184567 (h!56921 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))))))))

(assert (=> b!4589716 (contains!13884 lt!1752463 (_1!29079 (h!56921 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))))))))

(declare-fun lt!1752474 () Unit!107278)

(declare-fun Unit!107337 () Unit!107278)

(assert (=> b!4589716 (= lt!1752474 Unit!107337)))

(assert (=> b!4589716 (contains!13884 lt!1752477 (_1!29079 (h!56921 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))))))))

(declare-fun lt!1752471 () Unit!107278)

(declare-fun Unit!107338 () Unit!107278)

(assert (=> b!4589716 (= lt!1752471 Unit!107338)))

(assert (=> b!4589716 (forall!10524 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) lambda!184567)))

(declare-fun lt!1752466 () Unit!107278)

(declare-fun Unit!107339 () Unit!107278)

(assert (=> b!4589716 (= lt!1752466 Unit!107339)))

(assert (=> b!4589716 (forall!10524 (toList!4576 lt!1752463) lambda!184567)))

(declare-fun lt!1752479 () Unit!107278)

(declare-fun Unit!107340 () Unit!107278)

(assert (=> b!4589716 (= lt!1752479 Unit!107340)))

(declare-fun lt!1752480 () Unit!107278)

(declare-fun Unit!107341 () Unit!107278)

(assert (=> b!4589716 (= lt!1752480 Unit!107341)))

(declare-fun lt!1752464 () Unit!107278)

(assert (=> b!4589716 (= lt!1752464 (addForallContainsKeyThenBeforeAdding!420 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))) lt!1752477 (_1!29079 (h!56921 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))))) (_2!29079 (h!56921 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))))))))

(assert (=> b!4589716 (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) lambda!184567)))

(declare-fun lt!1752461 () Unit!107278)

(assert (=> b!4589716 (= lt!1752461 lt!1752464)))

(assert (=> b!4589716 (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) lambda!184567)))

(declare-fun lt!1752467 () Unit!107278)

(declare-fun Unit!107342 () Unit!107278)

(assert (=> b!4589716 (= lt!1752467 Unit!107342)))

(declare-fun res!1918561 () Bool)

(assert (=> b!4589716 (= res!1918561 (forall!10524 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) lambda!184567))))

(assert (=> b!4589716 (=> (not res!1918561) (not e!2862491))))

(assert (=> b!4589716 e!2862491))

(declare-fun lt!1752476 () Unit!107278)

(declare-fun Unit!107343 () Unit!107278)

(assert (=> b!4589716 (= lt!1752476 Unit!107343)))

(declare-fun bm!320503 () Bool)

(assert (=> bm!320503 (= call!320507 (forall!10524 (ite c!786032 (toList!4576 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (toList!4576 lt!1752463)) (ite c!786032 lambda!184565 lambda!184567)))))

(declare-fun bm!320504 () Bool)

(assert (=> bm!320504 (= call!320508 (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (ite c!786032 lambda!184565 lambda!184566)))))

(assert (= (and d!1443664 c!786032) b!4589713))

(assert (= (and d!1443664 (not c!786032)) b!4589716))

(assert (= (and b!4589716 res!1918561) b!4589714))

(assert (= (or b!4589713 b!4589716) bm!320503))

(assert (= (or b!4589713 b!4589716) bm!320504))

(assert (= (or b!4589713 b!4589716) bm!320502))

(assert (= (and d!1443664 res!1918562) b!4589715))

(assert (= (and b!4589715 res!1918560) b!4589712))

(declare-fun m!5412755 () Bool)

(assert (=> d!1443664 m!5412755))

(assert (=> d!1443664 m!5412483))

(declare-fun m!5412757 () Bool)

(assert (=> b!4589712 m!5412757))

(declare-fun m!5412759 () Bool)

(assert (=> bm!320504 m!5412759))

(assert (=> bm!320502 m!5412465))

(declare-fun m!5412761 () Bool)

(assert (=> bm!320502 m!5412761))

(declare-fun m!5412763 () Bool)

(assert (=> b!4589715 m!5412763))

(declare-fun m!5412765 () Bool)

(assert (=> bm!320503 m!5412765))

(declare-fun m!5412769 () Bool)

(assert (=> b!4589714 m!5412769))

(declare-fun m!5412771 () Bool)

(assert (=> b!4589716 m!5412771))

(declare-fun m!5412775 () Bool)

(assert (=> b!4589716 m!5412775))

(assert (=> b!4589716 m!5412769))

(assert (=> b!4589716 m!5412771))

(declare-fun m!5412779 () Bool)

(assert (=> b!4589716 m!5412779))

(declare-fun m!5412781 () Bool)

(assert (=> b!4589716 m!5412781))

(assert (=> b!4589716 m!5412465))

(declare-fun m!5412783 () Bool)

(assert (=> b!4589716 m!5412783))

(assert (=> b!4589716 m!5412783))

(declare-fun m!5412785 () Bool)

(assert (=> b!4589716 m!5412785))

(assert (=> b!4589716 m!5412465))

(declare-fun m!5412787 () Bool)

(assert (=> b!4589716 m!5412787))

(declare-fun m!5412789 () Bool)

(assert (=> b!4589716 m!5412789))

(assert (=> b!4589716 m!5412769))

(declare-fun m!5412791 () Bool)

(assert (=> b!4589716 m!5412791))

(assert (=> b!4589566 d!1443664))

(declare-fun bs!1007678 () Bool)

(declare-fun d!1443682 () Bool)

(assert (= bs!1007678 (and d!1443682 d!1443418)))

(declare-fun lambda!184569 () Int)

(assert (=> bs!1007678 (not (= lambda!184569 lambda!184439))))

(declare-fun bs!1007679 () Bool)

(assert (= bs!1007679 (and d!1443682 d!1443538)))

(assert (=> bs!1007679 (= lambda!184569 lambda!184541)))

(declare-fun bs!1007680 () Bool)

(assert (= bs!1007680 (and d!1443682 d!1443410)))

(assert (=> bs!1007680 (= lambda!184569 lambda!184436)))

(declare-fun bs!1007681 () Bool)

(assert (= bs!1007681 (and d!1443682 start!456868)))

(assert (=> bs!1007681 (= lambda!184569 lambda!184415)))

(declare-fun bs!1007682 () Bool)

(assert (= bs!1007682 (and d!1443682 d!1443400)))

(assert (=> bs!1007682 (= lambda!184569 lambda!184433)))

(declare-fun lt!1752486 () ListMap!3837)

(assert (=> d!1443682 (invariantList!1103 (toList!4576 lt!1752486))))

(declare-fun e!2862507 () ListMap!3837)

(assert (=> d!1443682 (= lt!1752486 e!2862507)))

(declare-fun c!786034 () Bool)

(assert (=> d!1443682 (= c!786034 ((_ is Cons!50981) (t!358099 (t!358099 (toList!4575 lm!1477)))))))

(assert (=> d!1443682 (forall!10522 (t!358099 (t!358099 (toList!4575 lm!1477))) lambda!184569)))

(assert (=> d!1443682 (= (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477)))) lt!1752486)))

(declare-fun b!4589732 () Bool)

(assert (=> b!4589732 (= e!2862507 (addToMapMapFromBucket!793 (_2!29080 (h!56922 (t!358099 (t!358099 (toList!4575 lm!1477))))) (extractMap!1340 (t!358099 (t!358099 (t!358099 (toList!4575 lm!1477)))))))))

(declare-fun b!4589733 () Bool)

(assert (=> b!4589733 (= e!2862507 (ListMap!3838 Nil!50980))))

(assert (= (and d!1443682 c!786034) b!4589732))

(assert (= (and d!1443682 (not c!786034)) b!4589733))

(declare-fun m!5412797 () Bool)

(assert (=> d!1443682 m!5412797))

(declare-fun m!5412799 () Bool)

(assert (=> d!1443682 m!5412799))

(declare-fun m!5412801 () Bool)

(assert (=> b!4589732 m!5412801))

(assert (=> b!4589732 m!5412801))

(declare-fun m!5412803 () Bool)

(assert (=> b!4589732 m!5412803))

(assert (=> b!4589566 d!1443682))

(declare-fun d!1443686 () Bool)

(assert (=> d!1443686 true))

(assert (=> d!1443686 true))

(declare-fun res!1918582 () (_ BitVec 64))

(assert (=> d!1443686 (= (choose!30620 hashF!1107 key!3287) res!1918582)))

(assert (=> d!1443534 d!1443686))

(declare-fun d!1443688 () Bool)

(assert (=> d!1443688 (dynLambda!21354 lambda!184492 (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))

(declare-fun lt!1752490 () Unit!107278)

(declare-fun choose!30623 (List!51107 Int K!12350) Unit!107278)

(assert (=> d!1443688 (= lt!1752490 (choose!30623 (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) lambda!184492 (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(declare-fun e!2862519 () Bool)

(assert (=> d!1443688 e!2862519))

(declare-fun res!1918590 () Bool)

(assert (=> d!1443688 (=> (not res!1918590) (not e!2862519))))

(assert (=> d!1443688 (= res!1918590 (forall!10526 (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) lambda!184492))))

(assert (=> d!1443688 (= (forallContained!2784 (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) lambda!184492 (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) lt!1752490)))

(declare-fun b!4589748 () Bool)

(assert (=> b!4589748 (= e!2862519 (contains!13887 (getKeysList!551 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(assert (= (and d!1443688 res!1918590) b!4589748))

(declare-fun b_lambda!168275 () Bool)

(assert (=> (not b_lambda!168275) (not d!1443688)))

(declare-fun m!5412827 () Bool)

(assert (=> d!1443688 m!5412827))

(assert (=> d!1443688 m!5412323))

(declare-fun m!5412829 () Bool)

(assert (=> d!1443688 m!5412829))

(assert (=> d!1443688 m!5412323))

(declare-fun m!5412831 () Bool)

(assert (=> d!1443688 m!5412831))

(assert (=> b!4589748 m!5412323))

(assert (=> b!4589748 m!5412331))

(assert (=> b!4589503 d!1443688))

(assert (=> b!4589503 d!1443652))

(declare-fun d!1443702 () Bool)

(assert (=> d!1443702 (= (isEmpty!28834 (getValueByKey!1267 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287)) (not ((_ is Some!11346) (getValueByKey!1267 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))))

(assert (=> d!1443494 d!1443702))

(declare-fun d!1443704 () Bool)

(assert (=> d!1443704 (dynLambda!21352 lambda!184539 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))

(declare-fun lt!1752494 () Unit!107278)

(declare-fun choose!30624 (List!51104 Int tuple2!51570) Unit!107278)

(assert (=> d!1443704 (= lt!1752494 (choose!30624 (toList!4576 lt!1752390) lambda!184539 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(declare-fun e!2862527 () Bool)

(assert (=> d!1443704 e!2862527))

(declare-fun res!1918598 () Bool)

(assert (=> d!1443704 (=> (not res!1918598) (not e!2862527))))

(assert (=> d!1443704 (= res!1918598 (forall!10524 (toList!4576 lt!1752390) lambda!184539))))

(assert (=> d!1443704 (= (forallContained!2785 (toList!4576 lt!1752390) lambda!184539 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lt!1752494)))

(declare-fun b!4589756 () Bool)

(declare-fun contains!13888 (List!51104 tuple2!51570) Bool)

(assert (=> b!4589756 (= e!2862527 (contains!13888 (toList!4576 lt!1752390) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(assert (= (and d!1443704 res!1918598) b!4589756))

(declare-fun b_lambda!168279 () Bool)

(assert (=> (not b_lambda!168279) (not d!1443704)))

(declare-fun m!5412841 () Bool)

(assert (=> d!1443704 m!5412841))

(declare-fun m!5412843 () Bool)

(assert (=> d!1443704 m!5412843))

(assert (=> d!1443704 m!5412447))

(declare-fun m!5412845 () Bool)

(assert (=> b!4589756 m!5412845))

(assert (=> b!4589563 d!1443704))

(declare-fun b!4589757 () Bool)

(declare-fun e!2862530 () Bool)

(assert (=> b!4589757 (= e!2862530 (contains!13887 (keys!17820 lt!1752404) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun bm!320505 () Bool)

(declare-fun call!320510 () Bool)

(declare-fun e!2862533 () List!51107)

(assert (=> bm!320505 (= call!320510 (contains!13887 e!2862533 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun c!786040 () Bool)

(declare-fun c!786039 () Bool)

(assert (=> bm!320505 (= c!786040 c!786039)))

(declare-fun b!4589758 () Bool)

(assert (=> b!4589758 (= e!2862533 (getKeysList!551 (toList!4576 lt!1752404)))))

(declare-fun b!4589759 () Bool)

(declare-fun e!2862531 () Unit!107278)

(declare-fun lt!1752501 () Unit!107278)

(assert (=> b!4589759 (= e!2862531 lt!1752501)))

(declare-fun lt!1752495 () Unit!107278)

(assert (=> b!4589759 (= lt!1752495 (lemmaContainsKeyImpliesGetValueByKeyDefined!1170 (toList!4576 lt!1752404) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> b!4589759 (isDefined!8614 (getValueByKey!1267 (toList!4576 lt!1752404) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun lt!1752497 () Unit!107278)

(assert (=> b!4589759 (= lt!1752497 lt!1752495)))

(assert (=> b!4589759 (= lt!1752501 (lemmaInListThenGetKeysListContains!547 (toList!4576 lt!1752404) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> b!4589759 call!320510))

(declare-fun d!1443714 () Bool)

(declare-fun e!2862532 () Bool)

(assert (=> d!1443714 e!2862532))

(declare-fun res!1918601 () Bool)

(assert (=> d!1443714 (=> res!1918601 e!2862532)))

(declare-fun e!2862528 () Bool)

(assert (=> d!1443714 (= res!1918601 e!2862528)))

(declare-fun res!1918599 () Bool)

(assert (=> d!1443714 (=> (not res!1918599) (not e!2862528))))

(declare-fun lt!1752496 () Bool)

(assert (=> d!1443714 (= res!1918599 (not lt!1752496))))

(declare-fun lt!1752498 () Bool)

(assert (=> d!1443714 (= lt!1752496 lt!1752498)))

(declare-fun lt!1752499 () Unit!107278)

(assert (=> d!1443714 (= lt!1752499 e!2862531)))

(assert (=> d!1443714 (= c!786039 lt!1752498)))

(assert (=> d!1443714 (= lt!1752498 (containsKey!2075 (toList!4576 lt!1752404) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> d!1443714 (= (contains!13884 lt!1752404 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) lt!1752496)))

(declare-fun b!4589760 () Bool)

(assert (=> b!4589760 (= e!2862532 e!2862530)))

(declare-fun res!1918600 () Bool)

(assert (=> b!4589760 (=> (not res!1918600) (not e!2862530))))

(assert (=> b!4589760 (= res!1918600 (isDefined!8614 (getValueByKey!1267 (toList!4576 lt!1752404) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))))

(declare-fun b!4589761 () Bool)

(assert (=> b!4589761 false))

(declare-fun lt!1752500 () Unit!107278)

(declare-fun lt!1752502 () Unit!107278)

(assert (=> b!4589761 (= lt!1752500 lt!1752502)))

(assert (=> b!4589761 (containsKey!2075 (toList!4576 lt!1752404) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(assert (=> b!4589761 (= lt!1752502 (lemmaInGetKeysListThenContainsKey!550 (toList!4576 lt!1752404) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun e!2862529 () Unit!107278)

(declare-fun Unit!107348 () Unit!107278)

(assert (=> b!4589761 (= e!2862529 Unit!107348)))

(declare-fun b!4589762 () Bool)

(assert (=> b!4589762 (= e!2862533 (keys!17820 lt!1752404))))

(declare-fun b!4589763 () Bool)

(declare-fun Unit!107349 () Unit!107278)

(assert (=> b!4589763 (= e!2862529 Unit!107349)))

(declare-fun b!4589764 () Bool)

(assert (=> b!4589764 (= e!2862531 e!2862529)))

(declare-fun c!786038 () Bool)

(assert (=> b!4589764 (= c!786038 call!320510)))

(declare-fun b!4589765 () Bool)

(assert (=> b!4589765 (= e!2862528 (not (contains!13887 (keys!17820 lt!1752404) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))))

(assert (= (and d!1443714 c!786039) b!4589759))

(assert (= (and d!1443714 (not c!786039)) b!4589764))

(assert (= (and b!4589764 c!786038) b!4589761))

(assert (= (and b!4589764 (not c!786038)) b!4589763))

(assert (= (or b!4589759 b!4589764) bm!320505))

(assert (= (and bm!320505 c!786040) b!4589758))

(assert (= (and bm!320505 (not c!786040)) b!4589762))

(assert (= (and d!1443714 res!1918599) b!4589765))

(assert (= (and d!1443714 (not res!1918601)) b!4589760))

(assert (= (and b!4589760 res!1918600) b!4589757))

(declare-fun m!5412847 () Bool)

(assert (=> b!4589759 m!5412847))

(declare-fun m!5412849 () Bool)

(assert (=> b!4589759 m!5412849))

(assert (=> b!4589759 m!5412849))

(declare-fun m!5412851 () Bool)

(assert (=> b!4589759 m!5412851))

(declare-fun m!5412853 () Bool)

(assert (=> b!4589759 m!5412853))

(declare-fun m!5412855 () Bool)

(assert (=> b!4589765 m!5412855))

(assert (=> b!4589765 m!5412855))

(declare-fun m!5412857 () Bool)

(assert (=> b!4589765 m!5412857))

(declare-fun m!5412859 () Bool)

(assert (=> b!4589758 m!5412859))

(assert (=> b!4589762 m!5412855))

(declare-fun m!5412861 () Bool)

(assert (=> b!4589761 m!5412861))

(declare-fun m!5412863 () Bool)

(assert (=> b!4589761 m!5412863))

(assert (=> b!4589760 m!5412849))

(assert (=> b!4589760 m!5412849))

(assert (=> b!4589760 m!5412851))

(declare-fun m!5412867 () Bool)

(assert (=> bm!320505 m!5412867))

(assert (=> d!1443714 m!5412861))

(assert (=> b!4589757 m!5412855))

(assert (=> b!4589757 m!5412855))

(assert (=> b!4589757 m!5412857))

(assert (=> b!4589563 d!1443714))

(declare-fun d!1443716 () Bool)

(declare-fun res!1918605 () Bool)

(declare-fun e!2862537 () Bool)

(assert (=> d!1443716 (=> res!1918605 e!2862537)))

(assert (=> d!1443716 (= res!1918605 ((_ is Nil!50980) (toList!4576 lt!1752390)))))

(assert (=> d!1443716 (= (forall!10524 (toList!4576 lt!1752390) lambda!184539) e!2862537)))

(declare-fun b!4589769 () Bool)

(declare-fun e!2862538 () Bool)

(assert (=> b!4589769 (= e!2862537 e!2862538)))

(declare-fun res!1918606 () Bool)

(assert (=> b!4589769 (=> (not res!1918606) (not e!2862538))))

(assert (=> b!4589769 (= res!1918606 (dynLambda!21352 lambda!184539 (h!56921 (toList!4576 lt!1752390))))))

(declare-fun b!4589770 () Bool)

(assert (=> b!4589770 (= e!2862538 (forall!10524 (t!358098 (toList!4576 lt!1752390)) lambda!184539))))

(assert (= (and d!1443716 (not res!1918605)) b!4589769))

(assert (= (and b!4589769 res!1918606) b!4589770))

(declare-fun b_lambda!168283 () Bool)

(assert (=> (not b_lambda!168283) (not b!4589769)))

(declare-fun m!5412873 () Bool)

(assert (=> b!4589769 m!5412873))

(declare-fun m!5412875 () Bool)

(assert (=> b!4589770 m!5412875))

(assert (=> b!4589563 d!1443716))

(declare-fun d!1443720 () Bool)

(declare-fun res!1918609 () Bool)

(declare-fun e!2862541 () Bool)

(assert (=> d!1443720 (=> res!1918609 e!2862541)))

(assert (=> d!1443720 (= res!1918609 ((_ is Nil!50980) (_2!29080 (h!56922 (toList!4575 lm!1477)))))))

(assert (=> d!1443720 (= (forall!10524 (_2!29080 (h!56922 (toList!4575 lm!1477))) lambda!184539) e!2862541)))

(declare-fun b!4589773 () Bool)

(declare-fun e!2862542 () Bool)

(assert (=> b!4589773 (= e!2862541 e!2862542)))

(declare-fun res!1918610 () Bool)

(assert (=> b!4589773 (=> (not res!1918610) (not e!2862542))))

(assert (=> b!4589773 (= res!1918610 (dynLambda!21352 lambda!184539 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(declare-fun b!4589774 () Bool)

(assert (=> b!4589774 (= e!2862542 (forall!10524 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))) lambda!184539))))

(assert (= (and d!1443720 (not res!1918609)) b!4589773))

(assert (= (and b!4589773 res!1918610) b!4589774))

(declare-fun b_lambda!168287 () Bool)

(assert (=> (not b_lambda!168287) (not b!4589773)))

(assert (=> b!4589773 m!5412841))

(assert (=> b!4589774 m!5412445))

(assert (=> b!4589563 d!1443720))

(declare-fun bs!1007685 () Bool)

(declare-fun b!4589787 () Bool)

(assert (= bs!1007685 (and b!4589787 b!4589716)))

(declare-fun lambda!184570 () Int)

(assert (=> bs!1007685 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lt!1752477) (= lambda!184570 lambda!184567))))

(declare-fun bs!1007686 () Bool)

(assert (= bs!1007686 (and b!4589787 b!4589713)))

(assert (=> bs!1007686 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184570 lambda!184565))))

(assert (=> bs!1007685 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184570 lambda!184566))))

(declare-fun bs!1007687 () Bool)

(assert (= bs!1007687 (and b!4589787 b!4589560)))

(assert (=> bs!1007687 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184570 lambda!184537))))

(declare-fun bs!1007688 () Bool)

(assert (= bs!1007688 (and b!4589787 d!1443536)))

(assert (=> bs!1007688 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lt!1752396) (= lambda!184570 lambda!184540))))

(declare-fun bs!1007689 () Bool)

(assert (= bs!1007689 (and b!4589787 d!1443664)))

(assert (=> bs!1007689 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lt!1752469) (= lambda!184570 lambda!184568))))

(declare-fun bs!1007690 () Bool)

(assert (= bs!1007690 (and b!4589787 b!4589563)))

(assert (=> bs!1007690 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lt!1752404) (= lambda!184570 lambda!184539))))

(declare-fun bs!1007691 () Bool)

(assert (= bs!1007691 (and b!4589787 d!1443384)))

(assert (=> bs!1007691 (not (= lambda!184570 lambda!184418))))

(assert (=> bs!1007690 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184570 lambda!184538))))

(assert (=> b!4589787 true))

(declare-fun bs!1007692 () Bool)

(declare-fun b!4589790 () Bool)

(assert (= bs!1007692 (and b!4589790 b!4589787)))

(declare-fun lambda!184571 () Int)

(assert (=> bs!1007692 (= lambda!184571 lambda!184570)))

(declare-fun bs!1007693 () Bool)

(assert (= bs!1007693 (and b!4589790 b!4589716)))

(assert (=> bs!1007693 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lt!1752477) (= lambda!184571 lambda!184567))))

(declare-fun bs!1007694 () Bool)

(assert (= bs!1007694 (and b!4589790 b!4589713)))

(assert (=> bs!1007694 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184571 lambda!184565))))

(assert (=> bs!1007693 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184571 lambda!184566))))

(declare-fun bs!1007695 () Bool)

(assert (= bs!1007695 (and b!4589790 b!4589560)))

(assert (=> bs!1007695 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184571 lambda!184537))))

(declare-fun bs!1007696 () Bool)

(assert (= bs!1007696 (and b!4589790 d!1443536)))

(assert (=> bs!1007696 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lt!1752396) (= lambda!184571 lambda!184540))))

(declare-fun bs!1007697 () Bool)

(assert (= bs!1007697 (and b!4589790 d!1443664)))

(assert (=> bs!1007697 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lt!1752469) (= lambda!184571 lambda!184568))))

(declare-fun bs!1007698 () Bool)

(assert (= bs!1007698 (and b!4589790 b!4589563)))

(assert (=> bs!1007698 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lt!1752404) (= lambda!184571 lambda!184539))))

(declare-fun bs!1007699 () Bool)

(assert (= bs!1007699 (and b!4589790 d!1443384)))

(assert (=> bs!1007699 (not (= lambda!184571 lambda!184418))))

(assert (=> bs!1007698 (= (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184571 lambda!184538))))

(assert (=> b!4589790 true))

(declare-fun lambda!184572 () Int)

(declare-fun lt!1752531 () ListMap!3837)

(assert (=> bs!1007692 (= (= lt!1752531 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (= lambda!184572 lambda!184570))))

(assert (=> bs!1007693 (= (= lt!1752531 lt!1752477) (= lambda!184572 lambda!184567))))

(assert (=> bs!1007694 (= (= lt!1752531 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184572 lambda!184565))))

(assert (=> b!4589790 (= (= lt!1752531 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (= lambda!184572 lambda!184571))))

(assert (=> bs!1007693 (= (= lt!1752531 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184572 lambda!184566))))

(assert (=> bs!1007695 (= (= lt!1752531 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184572 lambda!184537))))

(assert (=> bs!1007696 (= (= lt!1752531 lt!1752396) (= lambda!184572 lambda!184540))))

(assert (=> bs!1007697 (= (= lt!1752531 lt!1752469) (= lambda!184572 lambda!184568))))

(assert (=> bs!1007698 (= (= lt!1752531 lt!1752404) (= lambda!184572 lambda!184539))))

(assert (=> bs!1007699 (not (= lambda!184572 lambda!184418))))

(assert (=> bs!1007698 (= (= lt!1752531 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184572 lambda!184538))))

(assert (=> b!4589790 true))

(declare-fun bs!1007700 () Bool)

(declare-fun d!1443724 () Bool)

(assert (= bs!1007700 (and d!1443724 b!4589716)))

(declare-fun lambda!184573 () Int)

(declare-fun lt!1752520 () ListMap!3837)

(assert (=> bs!1007700 (= (= lt!1752520 lt!1752477) (= lambda!184573 lambda!184567))))

(declare-fun bs!1007701 () Bool)

(assert (= bs!1007701 (and d!1443724 b!4589713)))

(assert (=> bs!1007701 (= (= lt!1752520 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184573 lambda!184565))))

(declare-fun bs!1007702 () Bool)

(assert (= bs!1007702 (and d!1443724 b!4589790)))

(assert (=> bs!1007702 (= (= lt!1752520 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (= lambda!184573 lambda!184571))))

(assert (=> bs!1007700 (= (= lt!1752520 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184573 lambda!184566))))

(declare-fun bs!1007703 () Bool)

(assert (= bs!1007703 (and d!1443724 b!4589560)))

(assert (=> bs!1007703 (= (= lt!1752520 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184573 lambda!184537))))

(declare-fun bs!1007704 () Bool)

(assert (= bs!1007704 (and d!1443724 d!1443536)))

(assert (=> bs!1007704 (= (= lt!1752520 lt!1752396) (= lambda!184573 lambda!184540))))

(declare-fun bs!1007705 () Bool)

(assert (= bs!1007705 (and d!1443724 b!4589787)))

(assert (=> bs!1007705 (= (= lt!1752520 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (= lambda!184573 lambda!184570))))

(assert (=> bs!1007702 (= (= lt!1752520 lt!1752531) (= lambda!184573 lambda!184572))))

(declare-fun bs!1007706 () Bool)

(assert (= bs!1007706 (and d!1443724 d!1443664)))

(assert (=> bs!1007706 (= (= lt!1752520 lt!1752469) (= lambda!184573 lambda!184568))))

(declare-fun bs!1007707 () Bool)

(assert (= bs!1007707 (and d!1443724 b!4589563)))

(assert (=> bs!1007707 (= (= lt!1752520 lt!1752404) (= lambda!184573 lambda!184539))))

(declare-fun bs!1007708 () Bool)

(assert (= bs!1007708 (and d!1443724 d!1443384)))

(assert (=> bs!1007708 (not (= lambda!184573 lambda!184418))))

(assert (=> bs!1007707 (= (= lt!1752520 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184573 lambda!184538))))

(assert (=> d!1443724 true))

(declare-fun b!4589786 () Bool)

(declare-fun e!2862553 () Bool)

(assert (=> b!4589786 (= e!2862553 (invariantList!1103 (toList!4576 lt!1752520)))))

(declare-fun bm!320507 () Bool)

(declare-fun call!320514 () Unit!107278)

(assert (=> bm!320507 (= call!320514 (lemmaContainsAllItsOwnKeys!420 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> d!1443724 e!2862553))

(declare-fun res!1918618 () Bool)

(assert (=> d!1443724 (=> (not res!1918618) (not e!2862553))))

(assert (=> d!1443724 (= res!1918618 (forall!10524 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))) lambda!184573))))

(declare-fun e!2862551 () ListMap!3837)

(assert (=> d!1443724 (= lt!1752520 e!2862551)))

(declare-fun c!786041 () Bool)

(assert (=> d!1443724 (= c!786041 ((_ is Nil!50980) (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(assert (=> d!1443724 (noDuplicateKeys!1280 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))

(assert (=> d!1443724 (= (addToMapMapFromBucket!793 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))) (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) lt!1752520)))

(assert (=> b!4589787 (= e!2862551 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(declare-fun lt!1752532 () Unit!107278)

(assert (=> b!4589787 (= lt!1752532 call!320514)))

(declare-fun call!320513 () Bool)

(assert (=> b!4589787 call!320513))

(declare-fun lt!1752521 () Unit!107278)

(assert (=> b!4589787 (= lt!1752521 lt!1752532)))

(declare-fun call!320512 () Bool)

(assert (=> b!4589787 call!320512))

(declare-fun lt!1752524 () Unit!107278)

(declare-fun Unit!107350 () Unit!107278)

(assert (=> b!4589787 (= lt!1752524 Unit!107350)))

(declare-fun b!4589788 () Bool)

(declare-fun e!2862552 () Bool)

(assert (=> b!4589788 (= e!2862552 (forall!10524 (toList!4576 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) lambda!184572))))

(declare-fun b!4589789 () Bool)

(declare-fun res!1918614 () Bool)

(assert (=> b!4589789 (=> (not res!1918614) (not e!2862553))))

(assert (=> b!4589789 (= res!1918614 (forall!10524 (toList!4576 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) lambda!184573))))

(assert (=> b!4589790 (= e!2862551 lt!1752531)))

(declare-fun lt!1752510 () ListMap!3837)

(assert (=> b!4589790 (= lt!1752510 (+!1722 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (h!56921 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> b!4589790 (= lt!1752531 (addToMapMapFromBucket!793 (t!358098 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (+!1722 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (h!56921 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))))

(declare-fun lt!1752506 () Unit!107278)

(assert (=> b!4589790 (= lt!1752506 call!320514)))

(assert (=> b!4589790 call!320513))

(declare-fun lt!1752523 () Unit!107278)

(assert (=> b!4589790 (= lt!1752523 lt!1752506)))

(assert (=> b!4589790 call!320512))

(declare-fun lt!1752519 () Unit!107278)

(declare-fun Unit!107351 () Unit!107278)

(assert (=> b!4589790 (= lt!1752519 Unit!107351)))

(assert (=> b!4589790 (forall!10524 (t!358098 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lambda!184572)))

(declare-fun lt!1752514 () Unit!107278)

(declare-fun Unit!107352 () Unit!107278)

(assert (=> b!4589790 (= lt!1752514 Unit!107352)))

(declare-fun lt!1752508 () Unit!107278)

(declare-fun Unit!107353 () Unit!107278)

(assert (=> b!4589790 (= lt!1752508 Unit!107353)))

(declare-fun lt!1752527 () Unit!107278)

(assert (=> b!4589790 (= lt!1752527 (forallContained!2785 (toList!4576 lt!1752510) lambda!184572 (h!56921 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> b!4589790 (contains!13884 lt!1752510 (_1!29079 (h!56921 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun lt!1752526 () Unit!107278)

(declare-fun Unit!107354 () Unit!107278)

(assert (=> b!4589790 (= lt!1752526 Unit!107354)))

(assert (=> b!4589790 (contains!13884 lt!1752531 (_1!29079 (h!56921 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun lt!1752522 () Unit!107278)

(declare-fun Unit!107355 () Unit!107278)

(assert (=> b!4589790 (= lt!1752522 Unit!107355)))

(assert (=> b!4589790 (forall!10524 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))) lambda!184572)))

(declare-fun lt!1752516 () Unit!107278)

(declare-fun Unit!107356 () Unit!107278)

(assert (=> b!4589790 (= lt!1752516 Unit!107356)))

(assert (=> b!4589790 (forall!10524 (toList!4576 lt!1752510) lambda!184572)))

(declare-fun lt!1752533 () Unit!107278)

(declare-fun Unit!107357 () Unit!107278)

(assert (=> b!4589790 (= lt!1752533 Unit!107357)))

(declare-fun lt!1752534 () Unit!107278)

(declare-fun Unit!107358 () Unit!107278)

(assert (=> b!4589790 (= lt!1752534 Unit!107358)))

(declare-fun lt!1752512 () Unit!107278)

(assert (=> b!4589790 (= lt!1752512 (addForallContainsKeyThenBeforeAdding!420 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lt!1752531 (_1!29079 (h!56921 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (_2!29079 (h!56921 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))))

(assert (=> b!4589790 (forall!10524 (toList!4576 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) lambda!184572)))

(declare-fun lt!1752507 () Unit!107278)

(assert (=> b!4589790 (= lt!1752507 lt!1752512)))

(assert (=> b!4589790 (forall!10524 (toList!4576 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) lambda!184572)))

(declare-fun lt!1752518 () Unit!107278)

(declare-fun Unit!107359 () Unit!107278)

(assert (=> b!4589790 (= lt!1752518 Unit!107359)))

(declare-fun res!1918617 () Bool)

(assert (=> b!4589790 (= res!1918617 (forall!10524 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))) lambda!184572))))

(assert (=> b!4589790 (=> (not res!1918617) (not e!2862552))))

(assert (=> b!4589790 e!2862552))

(declare-fun lt!1752529 () Unit!107278)

(declare-fun Unit!107360 () Unit!107278)

(assert (=> b!4589790 (= lt!1752529 Unit!107360)))

(declare-fun bm!320508 () Bool)

(assert (=> bm!320508 (= call!320512 (forall!10524 (ite c!786041 (toList!4576 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (toList!4576 lt!1752510)) (ite c!786041 lambda!184570 lambda!184572)))))

(declare-fun bm!320509 () Bool)

(assert (=> bm!320509 (= call!320513 (forall!10524 (toList!4576 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (ite c!786041 lambda!184570 lambda!184571)))))

(assert (= (and d!1443724 c!786041) b!4589787))

(assert (= (and d!1443724 (not c!786041)) b!4589790))

(assert (= (and b!4589790 res!1918617) b!4589788))

(assert (= (or b!4589787 b!4589790) bm!320508))

(assert (= (or b!4589787 b!4589790) bm!320509))

(assert (= (or b!4589787 b!4589790) bm!320507))

(assert (= (and d!1443724 res!1918618) b!4589789))

(assert (= (and b!4589789 res!1918614) b!4589786))

(declare-fun m!5412901 () Bool)

(assert (=> d!1443724 m!5412901))

(assert (=> d!1443724 m!5412287))

(declare-fun m!5412903 () Bool)

(assert (=> b!4589786 m!5412903))

(declare-fun m!5412905 () Bool)

(assert (=> bm!320509 m!5412905))

(assert (=> bm!320507 m!5412451))

(declare-fun m!5412907 () Bool)

(assert (=> bm!320507 m!5412907))

(declare-fun m!5412909 () Bool)

(assert (=> b!4589789 m!5412909))

(declare-fun m!5412911 () Bool)

(assert (=> bm!320508 m!5412911))

(declare-fun m!5412913 () Bool)

(assert (=> b!4589788 m!5412913))

(declare-fun m!5412915 () Bool)

(assert (=> b!4589790 m!5412915))

(declare-fun m!5412917 () Bool)

(assert (=> b!4589790 m!5412917))

(assert (=> b!4589790 m!5412913))

(assert (=> b!4589790 m!5412915))

(declare-fun m!5412919 () Bool)

(assert (=> b!4589790 m!5412919))

(declare-fun m!5412921 () Bool)

(assert (=> b!4589790 m!5412921))

(assert (=> b!4589790 m!5412451))

(declare-fun m!5412923 () Bool)

(assert (=> b!4589790 m!5412923))

(assert (=> b!4589790 m!5412923))

(declare-fun m!5412925 () Bool)

(assert (=> b!4589790 m!5412925))

(assert (=> b!4589790 m!5412451))

(declare-fun m!5412927 () Bool)

(assert (=> b!4589790 m!5412927))

(declare-fun m!5412929 () Bool)

(assert (=> b!4589790 m!5412929))

(assert (=> b!4589790 m!5412913))

(declare-fun m!5412931 () Bool)

(assert (=> b!4589790 m!5412931))

(assert (=> b!4589563 d!1443724))

(declare-fun d!1443730 () Bool)

(declare-fun e!2862559 () Bool)

(assert (=> d!1443730 e!2862559))

(declare-fun res!1918627 () Bool)

(assert (=> d!1443730 (=> (not res!1918627) (not e!2862559))))

(declare-fun lt!1752568 () ListMap!3837)

(assert (=> d!1443730 (= res!1918627 (contains!13884 lt!1752568 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun lt!1752570 () List!51104)

(assert (=> d!1443730 (= lt!1752568 (ListMap!3838 lt!1752570))))

(declare-fun lt!1752569 () Unit!107278)

(declare-fun lt!1752567 () Unit!107278)

(assert (=> d!1443730 (= lt!1752569 lt!1752567)))

(assert (=> d!1443730 (= (getValueByKey!1267 lt!1752570 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (Some!11346 (_2!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!787 (List!51104 K!12350 V!12596) Unit!107278)

(assert (=> d!1443730 (= lt!1752567 (lemmaContainsTupThenGetReturnValue!787 lt!1752570 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (_2!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun insertNoDuplicatedKeys!313 (List!51104 K!12350 V!12596) List!51104)

(assert (=> d!1443730 (= lt!1752570 (insertNoDuplicatedKeys!313 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (_2!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> d!1443730 (= (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lt!1752568)))

(declare-fun b!4589801 () Bool)

(declare-fun res!1918626 () Bool)

(assert (=> b!4589801 (=> (not res!1918626) (not e!2862559))))

(assert (=> b!4589801 (= res!1918626 (= (getValueByKey!1267 (toList!4576 lt!1752568) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (Some!11346 (_2!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))))

(declare-fun b!4589802 () Bool)

(assert (=> b!4589802 (= e!2862559 (contains!13888 (toList!4576 lt!1752568) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(assert (= (and d!1443730 res!1918627) b!4589801))

(assert (= (and b!4589801 res!1918626) b!4589802))

(declare-fun m!5412941 () Bool)

(assert (=> d!1443730 m!5412941))

(declare-fun m!5412943 () Bool)

(assert (=> d!1443730 m!5412943))

(declare-fun m!5412945 () Bool)

(assert (=> d!1443730 m!5412945))

(declare-fun m!5412947 () Bool)

(assert (=> d!1443730 m!5412947))

(declare-fun m!5412949 () Bool)

(assert (=> b!4589801 m!5412949))

(declare-fun m!5412951 () Bool)

(assert (=> b!4589802 m!5412951))

(assert (=> b!4589563 d!1443730))

(declare-fun bs!1007752 () Bool)

(declare-fun d!1443734 () Bool)

(assert (= bs!1007752 (and d!1443734 d!1443724)))

(declare-fun lambda!184587 () Int)

(assert (=> bs!1007752 (= (= lt!1752404 lt!1752520) (= lambda!184587 lambda!184573))))

(declare-fun bs!1007753 () Bool)

(assert (= bs!1007753 (and d!1443734 b!4589716)))

(assert (=> bs!1007753 (= (= lt!1752404 lt!1752477) (= lambda!184587 lambda!184567))))

(declare-fun bs!1007754 () Bool)

(assert (= bs!1007754 (and d!1443734 b!4589713)))

(assert (=> bs!1007754 (= (= lt!1752404 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184587 lambda!184565))))

(declare-fun bs!1007755 () Bool)

(assert (= bs!1007755 (and d!1443734 b!4589790)))

(assert (=> bs!1007755 (= (= lt!1752404 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (= lambda!184587 lambda!184571))))

(assert (=> bs!1007753 (= (= lt!1752404 (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184587 lambda!184566))))

(declare-fun bs!1007756 () Bool)

(assert (= bs!1007756 (and d!1443734 b!4589560)))

(assert (=> bs!1007756 (= (= lt!1752404 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184587 lambda!184537))))

(declare-fun bs!1007757 () Bool)

(assert (= bs!1007757 (and d!1443734 d!1443536)))

(assert (=> bs!1007757 (= (= lt!1752404 lt!1752396) (= lambda!184587 lambda!184540))))

(declare-fun bs!1007758 () Bool)

(assert (= bs!1007758 (and d!1443734 b!4589787)))

(assert (=> bs!1007758 (= (= lt!1752404 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (= lambda!184587 lambda!184570))))

(assert (=> bs!1007755 (= (= lt!1752404 lt!1752531) (= lambda!184587 lambda!184572))))

(declare-fun bs!1007759 () Bool)

(assert (= bs!1007759 (and d!1443734 d!1443664)))

(assert (=> bs!1007759 (= (= lt!1752404 lt!1752469) (= lambda!184587 lambda!184568))))

(declare-fun bs!1007760 () Bool)

(assert (= bs!1007760 (and d!1443734 b!4589563)))

(assert (=> bs!1007760 (= lambda!184587 lambda!184539)))

(declare-fun bs!1007761 () Bool)

(assert (= bs!1007761 (and d!1443734 d!1443384)))

(assert (=> bs!1007761 (not (= lambda!184587 lambda!184418))))

(assert (=> bs!1007760 (= (= lt!1752404 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (= lambda!184587 lambda!184538))))

(assert (=> d!1443734 true))

(assert (=> d!1443734 (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) lambda!184587)))

(declare-fun lt!1752581 () Unit!107278)

(declare-fun choose!30626 (ListMap!3837 ListMap!3837 K!12350 V!12596) Unit!107278)

(assert (=> d!1443734 (= lt!1752581 (choose!30626 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) lt!1752404 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (_2!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> d!1443734 (forall!10524 (toList!4576 (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (tuple2!51571 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (_2!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))) lambda!184587)))

(assert (=> d!1443734 (= (addForallContainsKeyThenBeforeAdding!420 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) lt!1752404 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (_2!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) lt!1752581)))

(declare-fun bs!1007762 () Bool)

(assert (= bs!1007762 d!1443734))

(declare-fun m!5413005 () Bool)

(assert (=> bs!1007762 m!5413005))

(assert (=> bs!1007762 m!5412133))

(declare-fun m!5413007 () Bool)

(assert (=> bs!1007762 m!5413007))

(assert (=> bs!1007762 m!5412133))

(declare-fun m!5413009 () Bool)

(assert (=> bs!1007762 m!5413009))

(declare-fun m!5413011 () Bool)

(assert (=> bs!1007762 m!5413011))

(assert (=> b!4589563 d!1443734))

(declare-fun d!1443740 () Bool)

(declare-fun res!1918631 () Bool)

(declare-fun e!2862566 () Bool)

(assert (=> d!1443740 (=> res!1918631 e!2862566)))

(assert (=> d!1443740 (= res!1918631 ((_ is Nil!50980) (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(assert (=> d!1443740 (= (forall!10524 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))) lambda!184539) e!2862566)))

(declare-fun b!4589813 () Bool)

(declare-fun e!2862567 () Bool)

(assert (=> b!4589813 (= e!2862566 e!2862567)))

(declare-fun res!1918632 () Bool)

(assert (=> b!4589813 (=> (not res!1918632) (not e!2862567))))

(assert (=> b!4589813 (= res!1918632 (dynLambda!21352 lambda!184539 (h!56921 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun b!4589814 () Bool)

(assert (=> b!4589814 (= e!2862567 (forall!10524 (t!358098 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))) lambda!184539))))

(assert (= (and d!1443740 (not res!1918631)) b!4589813))

(assert (= (and b!4589813 res!1918632) b!4589814))

(declare-fun b_lambda!168291 () Bool)

(assert (=> (not b_lambda!168291) (not b!4589813)))

(declare-fun m!5413013 () Bool)

(assert (=> b!4589813 m!5413013))

(declare-fun m!5413015 () Bool)

(assert (=> b!4589814 m!5413015))

(assert (=> b!4589563 d!1443740))

(declare-fun d!1443742 () Bool)

(declare-fun res!1918633 () Bool)

(declare-fun e!2862568 () Bool)

(assert (=> d!1443742 (=> res!1918633 e!2862568)))

(assert (=> d!1443742 (= res!1918633 ((_ is Nil!50980) (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477))))))))

(assert (=> d!1443742 (= (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) lambda!184539) e!2862568)))

(declare-fun b!4589815 () Bool)

(declare-fun e!2862569 () Bool)

(assert (=> b!4589815 (= e!2862568 e!2862569)))

(declare-fun res!1918634 () Bool)

(assert (=> b!4589815 (=> (not res!1918634) (not e!2862569))))

(assert (=> b!4589815 (= res!1918634 (dynLambda!21352 lambda!184539 (h!56921 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))))))))

(declare-fun b!4589816 () Bool)

(assert (=> b!4589816 (= e!2862569 (forall!10524 (t!358098 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477))))) lambda!184539))))

(assert (= (and d!1443742 (not res!1918633)) b!4589815))

(assert (= (and b!4589815 res!1918634) b!4589816))

(declare-fun b_lambda!168293 () Bool)

(assert (=> (not b_lambda!168293) (not b!4589815)))

(declare-fun m!5413017 () Bool)

(assert (=> b!4589815 m!5413017))

(declare-fun m!5413019 () Bool)

(assert (=> b!4589816 m!5413019))

(assert (=> b!4589563 d!1443742))

(declare-fun b!4589817 () Bool)

(declare-fun e!2862572 () Bool)

(assert (=> b!4589817 (= e!2862572 (contains!13887 (keys!17820 lt!1752390) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun bm!320514 () Bool)

(declare-fun call!320519 () Bool)

(declare-fun e!2862575 () List!51107)

(assert (=> bm!320514 (= call!320519 (contains!13887 e!2862575 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun c!786051 () Bool)

(declare-fun c!786050 () Bool)

(assert (=> bm!320514 (= c!786051 c!786050)))

(declare-fun b!4589818 () Bool)

(assert (=> b!4589818 (= e!2862575 (getKeysList!551 (toList!4576 lt!1752390)))))

(declare-fun b!4589819 () Bool)

(declare-fun e!2862573 () Unit!107278)

(declare-fun lt!1752596 () Unit!107278)

(assert (=> b!4589819 (= e!2862573 lt!1752596)))

(declare-fun lt!1752590 () Unit!107278)

(assert (=> b!4589819 (= lt!1752590 (lemmaContainsKeyImpliesGetValueByKeyDefined!1170 (toList!4576 lt!1752390) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> b!4589819 (isDefined!8614 (getValueByKey!1267 (toList!4576 lt!1752390) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun lt!1752592 () Unit!107278)

(assert (=> b!4589819 (= lt!1752592 lt!1752590)))

(assert (=> b!4589819 (= lt!1752596 (lemmaInListThenGetKeysListContains!547 (toList!4576 lt!1752390) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> b!4589819 call!320519))

(declare-fun d!1443744 () Bool)

(declare-fun e!2862574 () Bool)

(assert (=> d!1443744 e!2862574))

(declare-fun res!1918637 () Bool)

(assert (=> d!1443744 (=> res!1918637 e!2862574)))

(declare-fun e!2862570 () Bool)

(assert (=> d!1443744 (= res!1918637 e!2862570)))

(declare-fun res!1918635 () Bool)

(assert (=> d!1443744 (=> (not res!1918635) (not e!2862570))))

(declare-fun lt!1752591 () Bool)

(assert (=> d!1443744 (= res!1918635 (not lt!1752591))))

(declare-fun lt!1752593 () Bool)

(assert (=> d!1443744 (= lt!1752591 lt!1752593)))

(declare-fun lt!1752594 () Unit!107278)

(assert (=> d!1443744 (= lt!1752594 e!2862573)))

(assert (=> d!1443744 (= c!786050 lt!1752593)))

(assert (=> d!1443744 (= lt!1752593 (containsKey!2075 (toList!4576 lt!1752390) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> d!1443744 (= (contains!13884 lt!1752390 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) lt!1752591)))

(declare-fun b!4589820 () Bool)

(assert (=> b!4589820 (= e!2862574 e!2862572)))

(declare-fun res!1918636 () Bool)

(assert (=> b!4589820 (=> (not res!1918636) (not e!2862572))))

(assert (=> b!4589820 (= res!1918636 (isDefined!8614 (getValueByKey!1267 (toList!4576 lt!1752390) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))))

(declare-fun b!4589821 () Bool)

(assert (=> b!4589821 false))

(declare-fun lt!1752595 () Unit!107278)

(declare-fun lt!1752597 () Unit!107278)

(assert (=> b!4589821 (= lt!1752595 lt!1752597)))

(assert (=> b!4589821 (containsKey!2075 (toList!4576 lt!1752390) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(assert (=> b!4589821 (= lt!1752597 (lemmaInGetKeysListThenContainsKey!550 (toList!4576 lt!1752390) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun e!2862571 () Unit!107278)

(declare-fun Unit!107361 () Unit!107278)

(assert (=> b!4589821 (= e!2862571 Unit!107361)))

(declare-fun b!4589822 () Bool)

(assert (=> b!4589822 (= e!2862575 (keys!17820 lt!1752390))))

(declare-fun b!4589823 () Bool)

(declare-fun Unit!107362 () Unit!107278)

(assert (=> b!4589823 (= e!2862571 Unit!107362)))

(declare-fun b!4589824 () Bool)

(assert (=> b!4589824 (= e!2862573 e!2862571)))

(declare-fun c!786049 () Bool)

(assert (=> b!4589824 (= c!786049 call!320519)))

(declare-fun b!4589825 () Bool)

(assert (=> b!4589825 (= e!2862570 (not (contains!13887 (keys!17820 lt!1752390) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))))

(assert (= (and d!1443744 c!786050) b!4589819))

(assert (= (and d!1443744 (not c!786050)) b!4589824))

(assert (= (and b!4589824 c!786049) b!4589821))

(assert (= (and b!4589824 (not c!786049)) b!4589823))

(assert (= (or b!4589819 b!4589824) bm!320514))

(assert (= (and bm!320514 c!786051) b!4589818))

(assert (= (and bm!320514 (not c!786051)) b!4589822))

(assert (= (and d!1443744 res!1918635) b!4589825))

(assert (= (and d!1443744 (not res!1918637)) b!4589820))

(assert (= (and b!4589820 res!1918636) b!4589817))

(declare-fun m!5413021 () Bool)

(assert (=> b!4589819 m!5413021))

(declare-fun m!5413023 () Bool)

(assert (=> b!4589819 m!5413023))

(assert (=> b!4589819 m!5413023))

(declare-fun m!5413025 () Bool)

(assert (=> b!4589819 m!5413025))

(declare-fun m!5413027 () Bool)

(assert (=> b!4589819 m!5413027))

(declare-fun m!5413029 () Bool)

(assert (=> b!4589825 m!5413029))

(assert (=> b!4589825 m!5413029))

(declare-fun m!5413031 () Bool)

(assert (=> b!4589825 m!5413031))

(declare-fun m!5413033 () Bool)

(assert (=> b!4589818 m!5413033))

(assert (=> b!4589822 m!5413029))

(declare-fun m!5413035 () Bool)

(assert (=> b!4589821 m!5413035))

(declare-fun m!5413037 () Bool)

(assert (=> b!4589821 m!5413037))

(assert (=> b!4589820 m!5413023))

(assert (=> b!4589820 m!5413023))

(assert (=> b!4589820 m!5413025))

(declare-fun m!5413039 () Bool)

(assert (=> bm!320514 m!5413039))

(assert (=> d!1443744 m!5413035))

(assert (=> b!4589817 m!5413029))

(assert (=> b!4589817 m!5413029))

(assert (=> b!4589817 m!5413031))

(assert (=> b!4589563 d!1443744))

(assert (=> b!4589561 d!1443742))

(declare-fun b!4589830 () Bool)

(declare-fun e!2862578 () Option!11345)

(assert (=> b!4589830 (= e!2862578 (Some!11344 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))))))

(declare-fun d!1443746 () Bool)

(declare-fun c!786052 () Bool)

(assert (=> d!1443746 (= c!786052 (and ((_ is Cons!50981) (t!358099 (toList!4575 lm!1477))) (= (_1!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) lt!1752106)))))

(assert (=> d!1443746 (= (getValueByKey!1265 (t!358099 (toList!4575 lm!1477)) lt!1752106) e!2862578)))

(declare-fun b!4589831 () Bool)

(declare-fun e!2862579 () Option!11345)

(assert (=> b!4589831 (= e!2862578 e!2862579)))

(declare-fun c!786053 () Bool)

(assert (=> b!4589831 (= c!786053 (and ((_ is Cons!50981) (t!358099 (toList!4575 lm!1477))) (not (= (_1!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) lt!1752106))))))

(declare-fun b!4589832 () Bool)

(assert (=> b!4589832 (= e!2862579 (getValueByKey!1265 (t!358099 (t!358099 (toList!4575 lm!1477))) lt!1752106))))

(declare-fun b!4589833 () Bool)

(assert (=> b!4589833 (= e!2862579 None!11344)))

(assert (= (and d!1443746 c!786052) b!4589830))

(assert (= (and d!1443746 (not c!786052)) b!4589831))

(assert (= (and b!4589831 c!786053) b!4589832))

(assert (= (and b!4589831 (not c!786053)) b!4589833))

(declare-fun m!5413041 () Bool)

(assert (=> b!4589832 m!5413041))

(assert (=> b!4589544 d!1443746))

(declare-fun d!1443748 () Bool)

(declare-fun res!1918642 () Bool)

(declare-fun e!2862580 () Bool)

(assert (=> d!1443748 (=> res!1918642 e!2862580)))

(assert (=> d!1443748 (= res!1918642 ((_ is Nil!50983) lt!1752338))))

(assert (=> d!1443748 (= (noDuplicate!796 lt!1752338) e!2862580)))

(declare-fun b!4589834 () Bool)

(declare-fun e!2862581 () Bool)

(assert (=> b!4589834 (= e!2862580 e!2862581)))

(declare-fun res!1918643 () Bool)

(assert (=> b!4589834 (=> (not res!1918643) (not e!2862581))))

(assert (=> b!4589834 (= res!1918643 (not (contains!13887 (t!358101 lt!1752338) (h!56926 lt!1752338))))))

(declare-fun b!4589835 () Bool)

(assert (=> b!4589835 (= e!2862581 (noDuplicate!796 (t!358101 lt!1752338)))))

(assert (= (and d!1443748 (not res!1918642)) b!4589834))

(assert (= (and b!4589834 res!1918643) b!4589835))

(declare-fun m!5413043 () Bool)

(assert (=> b!4589834 m!5413043))

(declare-fun m!5413045 () Bool)

(assert (=> b!4589835 m!5413045))

(assert (=> d!1443510 d!1443748))

(assert (=> d!1443510 d!1443504))

(declare-fun d!1443750 () Bool)

(declare-fun lt!1752598 () Bool)

(assert (=> d!1443750 (= lt!1752598 (select (content!8602 (getKeysList!551 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) key!3287))))

(declare-fun e!2862583 () Bool)

(assert (=> d!1443750 (= lt!1752598 e!2862583)))

(declare-fun res!1918645 () Bool)

(assert (=> d!1443750 (=> (not res!1918645) (not e!2862583))))

(assert (=> d!1443750 (= res!1918645 ((_ is Cons!50983) (getKeysList!551 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))

(assert (=> d!1443750 (= (contains!13887 (getKeysList!551 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) key!3287) lt!1752598)))

(declare-fun b!4589836 () Bool)

(declare-fun e!2862582 () Bool)

(assert (=> b!4589836 (= e!2862583 e!2862582)))

(declare-fun res!1918644 () Bool)

(assert (=> b!4589836 (=> res!1918644 e!2862582)))

(assert (=> b!4589836 (= res!1918644 (= (h!56926 (getKeysList!551 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) key!3287))))

(declare-fun b!4589837 () Bool)

(assert (=> b!4589837 (= e!2862582 (contains!13887 (t!358101 (getKeysList!551 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) key!3287))))

(assert (= (and d!1443750 res!1918645) b!4589836))

(assert (= (and b!4589836 (not res!1918644)) b!4589837))

(assert (=> d!1443750 m!5412121))

(declare-fun m!5413047 () Bool)

(assert (=> d!1443750 m!5413047))

(declare-fun m!5413049 () Bool)

(assert (=> d!1443750 m!5413049))

(declare-fun m!5413051 () Bool)

(assert (=> b!4589837 m!5413051))

(assert (=> d!1443498 d!1443750))

(assert (=> d!1443498 d!1443504))

(declare-fun d!1443752 () Bool)

(assert (=> d!1443752 (contains!13887 (getKeysList!551 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) key!3287)))

(assert (=> d!1443752 true))

(declare-fun _$14!1422 () Unit!107278)

(assert (=> d!1443752 (= (choose!30617 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287) _$14!1422)))

(declare-fun bs!1007763 () Bool)

(assert (= bs!1007763 d!1443752))

(assert (=> bs!1007763 m!5412121))

(assert (=> bs!1007763 m!5412121))

(assert (=> bs!1007763 m!5412313))

(assert (=> d!1443498 d!1443752))

(assert (=> d!1443498 d!1443638))

(declare-fun b!4589846 () Bool)

(declare-fun e!2862591 () Option!11345)

(assert (=> b!4589846 (= e!2862591 (Some!11344 (_2!29080 (h!56922 (t!358099 (t!358099 (toList!4575 lm!1477)))))))))

(declare-fun d!1443756 () Bool)

(declare-fun c!786054 () Bool)

(assert (=> d!1443756 (= c!786054 (and ((_ is Cons!50981) (t!358099 (t!358099 (toList!4575 lm!1477)))) (= (_1!29080 (h!56922 (t!358099 (t!358099 (toList!4575 lm!1477))))) hash!344)))))

(assert (=> d!1443756 (= (getValueByKey!1265 (t!358099 (t!358099 (toList!4575 lm!1477))) hash!344) e!2862591)))

(declare-fun b!4589847 () Bool)

(declare-fun e!2862592 () Option!11345)

(assert (=> b!4589847 (= e!2862591 e!2862592)))

(declare-fun c!786055 () Bool)

(assert (=> b!4589847 (= c!786055 (and ((_ is Cons!50981) (t!358099 (t!358099 (toList!4575 lm!1477)))) (not (= (_1!29080 (h!56922 (t!358099 (t!358099 (toList!4575 lm!1477))))) hash!344))))))

(declare-fun b!4589848 () Bool)

(assert (=> b!4589848 (= e!2862592 (getValueByKey!1265 (t!358099 (t!358099 (t!358099 (toList!4575 lm!1477)))) hash!344))))

(declare-fun b!4589849 () Bool)

(assert (=> b!4589849 (= e!2862592 None!11344)))

(assert (= (and d!1443756 c!786054) b!4589846))

(assert (= (and d!1443756 (not c!786054)) b!4589847))

(assert (= (and b!4589847 c!786055) b!4589848))

(assert (= (and b!4589847 (not c!786055)) b!4589849))

(declare-fun m!5413069 () Bool)

(assert (=> b!4589848 m!5413069))

(assert (=> b!4589468 d!1443756))

(declare-fun bs!1007768 () Bool)

(declare-fun d!1443760 () Bool)

(assert (= bs!1007768 (and d!1443760 d!1443724)))

(declare-fun lambda!184588 () Int)

(assert (=> bs!1007768 (not (= lambda!184588 lambda!184573))))

(declare-fun bs!1007770 () Bool)

(assert (= bs!1007770 (and d!1443760 b!4589716)))

(assert (=> bs!1007770 (not (= lambda!184588 lambda!184567))))

(declare-fun bs!1007772 () Bool)

(assert (= bs!1007772 (and d!1443760 b!4589713)))

(assert (=> bs!1007772 (not (= lambda!184588 lambda!184565))))

(declare-fun bs!1007774 () Bool)

(assert (= bs!1007774 (and d!1443760 b!4589790)))

(assert (=> bs!1007774 (not (= lambda!184588 lambda!184571))))

(assert (=> bs!1007770 (not (= lambda!184588 lambda!184566))))

(declare-fun bs!1007776 () Bool)

(assert (= bs!1007776 (and d!1443760 d!1443734)))

(assert (=> bs!1007776 (not (= lambda!184588 lambda!184587))))

(declare-fun bs!1007779 () Bool)

(assert (= bs!1007779 (and d!1443760 b!4589560)))

(assert (=> bs!1007779 (not (= lambda!184588 lambda!184537))))

(declare-fun bs!1007780 () Bool)

(assert (= bs!1007780 (and d!1443760 d!1443536)))

(assert (=> bs!1007780 (not (= lambda!184588 lambda!184540))))

(declare-fun bs!1007782 () Bool)

(assert (= bs!1007782 (and d!1443760 b!4589787)))

(assert (=> bs!1007782 (not (= lambda!184588 lambda!184570))))

(assert (=> bs!1007774 (not (= lambda!184588 lambda!184572))))

(declare-fun bs!1007784 () Bool)

(assert (= bs!1007784 (and d!1443760 d!1443664)))

(assert (=> bs!1007784 (not (= lambda!184588 lambda!184568))))

(declare-fun bs!1007785 () Bool)

(assert (= bs!1007785 (and d!1443760 b!4589563)))

(assert (=> bs!1007785 (not (= lambda!184588 lambda!184539))))

(declare-fun bs!1007787 () Bool)

(assert (= bs!1007787 (and d!1443760 d!1443384)))

(assert (=> bs!1007787 (= (= (_1!29080 (h!56922 (toList!4575 lm!1477))) hash!344) (= lambda!184588 lambda!184418))))

(assert (=> bs!1007785 (not (= lambda!184588 lambda!184538))))

(assert (=> d!1443760 true))

(assert (=> d!1443760 true))

(assert (=> d!1443760 (= (allKeysSameHash!1136 (_2!29080 (h!56922 (toList!4575 lm!1477))) (_1!29080 (h!56922 (toList!4575 lm!1477))) hashF!1107) (forall!10524 (_2!29080 (h!56922 (toList!4575 lm!1477))) lambda!184588))))

(declare-fun bs!1007791 () Bool)

(assert (= bs!1007791 d!1443760))

(declare-fun m!5413089 () Bool)

(assert (=> bs!1007791 m!5413089))

(assert (=> bs!1007560 d!1443760))

(declare-fun bs!1007794 () Bool)

(declare-fun d!1443792 () Bool)

(assert (= bs!1007794 (and d!1443792 d!1443724)))

(declare-fun lambda!184591 () Int)

(assert (=> bs!1007794 (= (= (extractMap!1340 (t!358099 (toList!4575 lm!1477))) lt!1752520) (= lambda!184591 lambda!184573))))

(declare-fun bs!1007795 () Bool)

(assert (= bs!1007795 (and d!1443792 b!4589716)))

(assert (=> bs!1007795 (= (= (extractMap!1340 (t!358099 (toList!4575 lm!1477))) lt!1752477) (= lambda!184591 lambda!184567))))

(declare-fun bs!1007796 () Bool)

(assert (= bs!1007796 (and d!1443792 b!4589713)))

(assert (=> bs!1007796 (= (= (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184591 lambda!184565))))

(declare-fun bs!1007797 () Bool)

(assert (= bs!1007797 (and d!1443792 b!4589790)))

(assert (=> bs!1007797 (= (= (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (= lambda!184591 lambda!184571))))

(assert (=> bs!1007795 (= (= (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (extractMap!1340 (t!358099 (t!358099 (toList!4575 lm!1477))))) (= lambda!184591 lambda!184566))))

(declare-fun bs!1007798 () Bool)

(assert (= bs!1007798 (and d!1443792 d!1443734)))

(assert (=> bs!1007798 (= (= (extractMap!1340 (t!358099 (toList!4575 lm!1477))) lt!1752404) (= lambda!184591 lambda!184587))))

(declare-fun bs!1007799 () Bool)

(assert (= bs!1007799 (and d!1443792 b!4589560)))

(assert (=> bs!1007799 (= lambda!184591 lambda!184537)))

(declare-fun bs!1007800 () Bool)

(assert (= bs!1007800 (and d!1443792 d!1443536)))

(assert (=> bs!1007800 (= (= (extractMap!1340 (t!358099 (toList!4575 lm!1477))) lt!1752396) (= lambda!184591 lambda!184540))))

(declare-fun bs!1007801 () Bool)

(assert (= bs!1007801 (and d!1443792 b!4589787)))

(assert (=> bs!1007801 (= (= (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (+!1722 (extractMap!1340 (t!358099 (toList!4575 lm!1477))) (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (= lambda!184591 lambda!184570))))

(assert (=> bs!1007797 (= (= (extractMap!1340 (t!358099 (toList!4575 lm!1477))) lt!1752531) (= lambda!184591 lambda!184572))))

(declare-fun bs!1007802 () Bool)

(assert (= bs!1007802 (and d!1443792 d!1443664)))

(assert (=> bs!1007802 (= (= (extractMap!1340 (t!358099 (toList!4575 lm!1477))) lt!1752469) (= lambda!184591 lambda!184568))))

(declare-fun bs!1007803 () Bool)

(assert (= bs!1007803 (and d!1443792 b!4589563)))

(assert (=> bs!1007803 (= (= (extractMap!1340 (t!358099 (toList!4575 lm!1477))) lt!1752404) (= lambda!184591 lambda!184539))))

(declare-fun bs!1007804 () Bool)

(assert (= bs!1007804 (and d!1443792 d!1443384)))

(assert (=> bs!1007804 (not (= lambda!184591 lambda!184418))))

(declare-fun bs!1007805 () Bool)

(assert (= bs!1007805 (and d!1443792 d!1443760)))

(assert (=> bs!1007805 (not (= lambda!184591 lambda!184588))))

(assert (=> bs!1007803 (= lambda!184591 lambda!184538)))

(assert (=> d!1443792 true))

(assert (=> d!1443792 (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) lambda!184591)))

(declare-fun lt!1752605 () Unit!107278)

(declare-fun choose!30629 (ListMap!3837) Unit!107278)

(assert (=> d!1443792 (= lt!1752605 (choose!30629 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))))))

(assert (=> d!1443792 (= (lemmaContainsAllItsOwnKeys!420 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) lt!1752605)))

(declare-fun bs!1007806 () Bool)

(assert (= bs!1007806 d!1443792))

(declare-fun m!5413095 () Bool)

(assert (=> bs!1007806 m!5413095))

(assert (=> bs!1007806 m!5412133))

(declare-fun m!5413097 () Bool)

(assert (=> bs!1007806 m!5413097))

(assert (=> bm!320496 d!1443792))

(declare-fun d!1443798 () Bool)

(declare-fun size!35953 (List!51107) Int)

(assert (=> d!1443798 (= (length!448 lt!1752338) (size!35953 lt!1752338))))

(declare-fun bs!1007807 () Bool)

(assert (= bs!1007807 d!1443798))

(declare-fun m!5413099 () Bool)

(assert (=> bs!1007807 m!5413099))

(assert (=> b!4589534 d!1443798))

(declare-fun d!1443800 () Bool)

(declare-fun size!35954 (List!51104) Int)

(assert (=> d!1443800 (= (length!449 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (size!35954 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))

(declare-fun bs!1007808 () Bool)

(assert (= bs!1007808 d!1443800))

(declare-fun m!5413101 () Bool)

(assert (=> bs!1007808 m!5413101))

(assert (=> b!4589534 d!1443800))

(declare-fun d!1443802 () Bool)

(declare-fun res!1918650 () Bool)

(declare-fun e!2862593 () Bool)

(assert (=> d!1443802 (=> res!1918650 e!2862593)))

(assert (=> d!1443802 (= res!1918650 (not ((_ is Cons!50980) (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))))))))

(assert (=> d!1443802 (= (noDuplicateKeys!1280 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))) e!2862593)))

(declare-fun b!4589850 () Bool)

(declare-fun e!2862594 () Bool)

(assert (=> b!4589850 (= e!2862593 e!2862594)))

(declare-fun res!1918651 () Bool)

(assert (=> b!4589850 (=> (not res!1918651) (not e!2862594))))

(assert (=> b!4589850 (= res!1918651 (not (containsKey!2078 (t!358098 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))) (_1!29079 (h!56921 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))))))))))

(declare-fun b!4589851 () Bool)

(assert (=> b!4589851 (= e!2862594 (noDuplicateKeys!1280 (t!358098 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))))))))

(assert (= (and d!1443802 (not res!1918650)) b!4589850))

(assert (= (and b!4589850 res!1918651) b!4589851))

(declare-fun m!5413103 () Bool)

(assert (=> b!4589850 m!5413103))

(declare-fun m!5413105 () Bool)

(assert (=> b!4589851 m!5413105))

(assert (=> bs!1007562 d!1443802))

(declare-fun d!1443804 () Bool)

(assert (=> d!1443804 (= (isEmpty!28835 (getValueByKey!1265 (toList!4575 lm!1477) lt!1752106)) (not ((_ is Some!11344) (getValueByKey!1265 (toList!4575 lm!1477) lt!1752106))))))

(assert (=> d!1443526 d!1443804))

(declare-fun d!1443806 () Bool)

(declare-fun res!1918656 () Bool)

(declare-fun e!2862599 () Bool)

(assert (=> d!1443806 (=> res!1918656 e!2862599)))

(assert (=> d!1443806 (= res!1918656 (and ((_ is Cons!50980) (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (= (_1!29079 (h!56921 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))))

(assert (=> d!1443806 (= (containsKey!2078 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) e!2862599)))

(declare-fun b!4589856 () Bool)

(declare-fun e!2862600 () Bool)

(assert (=> b!4589856 (= e!2862599 e!2862600)))

(declare-fun res!1918657 () Bool)

(assert (=> b!4589856 (=> (not res!1918657) (not e!2862600))))

(assert (=> b!4589856 (= res!1918657 ((_ is Cons!50980) (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(declare-fun b!4589857 () Bool)

(assert (=> b!4589857 (= e!2862600 (containsKey!2078 (t!358098 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (= (and d!1443806 (not res!1918656)) b!4589856))

(assert (= (and b!4589856 res!1918657) b!4589857))

(declare-fun m!5413107 () Bool)

(assert (=> b!4589857 m!5413107))

(assert (=> b!4589439 d!1443806))

(declare-fun d!1443808 () Bool)

(declare-fun res!1918658 () Bool)

(declare-fun e!2862601 () Bool)

(assert (=> d!1443808 (=> res!1918658 e!2862601)))

(assert (=> d!1443808 (= res!1918658 ((_ is Nil!50980) (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477))))))))

(assert (=> d!1443808 (= (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (ite c!786006 lambda!184537 lambda!184538)) e!2862601)))

(declare-fun b!4589858 () Bool)

(declare-fun e!2862602 () Bool)

(assert (=> b!4589858 (= e!2862601 e!2862602)))

(declare-fun res!1918659 () Bool)

(assert (=> b!4589858 (=> (not res!1918659) (not e!2862602))))

(assert (=> b!4589858 (= res!1918659 (dynLambda!21352 (ite c!786006 lambda!184537 lambda!184538) (h!56921 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))))))))

(declare-fun b!4589859 () Bool)

(assert (=> b!4589859 (= e!2862602 (forall!10524 (t!358098 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477))))) (ite c!786006 lambda!184537 lambda!184538)))))

(assert (= (and d!1443808 (not res!1918658)) b!4589858))

(assert (= (and b!4589858 res!1918659) b!4589859))

(declare-fun b_lambda!168335 () Bool)

(assert (=> (not b_lambda!168335) (not b!4589858)))

(declare-fun m!5413109 () Bool)

(assert (=> b!4589858 m!5413109))

(declare-fun m!5413111 () Bool)

(assert (=> b!4589859 m!5413111))

(assert (=> bm!320498 d!1443808))

(declare-fun d!1443810 () Bool)

(declare-fun res!1918660 () Bool)

(declare-fun e!2862603 () Bool)

(assert (=> d!1443810 (=> res!1918660 e!2862603)))

(assert (=> d!1443810 (= res!1918660 ((_ is Nil!50983) lt!1752304))))

(assert (=> d!1443810 (= (forall!10526 lt!1752304 lambda!184496) e!2862603)))

(declare-fun b!4589860 () Bool)

(declare-fun e!2862604 () Bool)

(assert (=> b!4589860 (= e!2862603 e!2862604)))

(declare-fun res!1918661 () Bool)

(assert (=> b!4589860 (=> (not res!1918661) (not e!2862604))))

(assert (=> b!4589860 (= res!1918661 (dynLambda!21354 lambda!184496 (h!56926 lt!1752304)))))

(declare-fun b!4589861 () Bool)

(assert (=> b!4589861 (= e!2862604 (forall!10526 (t!358101 lt!1752304) lambda!184496))))

(assert (= (and d!1443810 (not res!1918660)) b!4589860))

(assert (= (and b!4589860 res!1918661) b!4589861))

(declare-fun b_lambda!168337 () Bool)

(assert (=> (not b_lambda!168337) (not b!4589860)))

(declare-fun m!5413113 () Bool)

(assert (=> b!4589860 m!5413113))

(declare-fun m!5413115 () Bool)

(assert (=> b!4589861 m!5413115))

(assert (=> b!4589500 d!1443810))

(declare-fun d!1443812 () Bool)

(declare-fun c!786058 () Bool)

(assert (=> d!1443812 (= c!786058 ((_ is Nil!50983) lt!1752338))))

(declare-fun e!2862607 () (InoxSet K!12350))

(assert (=> d!1443812 (= (content!8602 lt!1752338) e!2862607)))

(declare-fun b!4589866 () Bool)

(assert (=> b!4589866 (= e!2862607 ((as const (Array K!12350 Bool)) false))))

(declare-fun b!4589867 () Bool)

(assert (=> b!4589867 (= e!2862607 ((_ map or) (store ((as const (Array K!12350 Bool)) false) (h!56926 lt!1752338) true) (content!8602 (t!358101 lt!1752338))))))

(assert (= (and d!1443812 c!786058) b!4589866))

(assert (= (and d!1443812 (not c!786058)) b!4589867))

(declare-fun m!5413117 () Bool)

(assert (=> b!4589867 m!5413117))

(declare-fun m!5413119 () Bool)

(assert (=> b!4589867 m!5413119))

(assert (=> b!4589536 d!1443812))

(declare-fun d!1443814 () Bool)

(declare-fun c!786059 () Bool)

(assert (=> d!1443814 (= c!786059 ((_ is Nil!50983) (map!11249 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) lambda!184508)))))

(declare-fun e!2862608 () (InoxSet K!12350))

(assert (=> d!1443814 (= (content!8602 (map!11249 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) lambda!184508)) e!2862608)))

(declare-fun b!4589868 () Bool)

(assert (=> b!4589868 (= e!2862608 ((as const (Array K!12350 Bool)) false))))

(declare-fun b!4589869 () Bool)

(assert (=> b!4589869 (= e!2862608 ((_ map or) (store ((as const (Array K!12350 Bool)) false) (h!56926 (map!11249 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) lambda!184508)) true) (content!8602 (t!358101 (map!11249 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) lambda!184508)))))))

(assert (= (and d!1443814 c!786059) b!4589868))

(assert (= (and d!1443814 (not c!786059)) b!4589869))

(declare-fun m!5413121 () Bool)

(assert (=> b!4589869 m!5413121))

(declare-fun m!5413123 () Bool)

(assert (=> b!4589869 m!5413123))

(assert (=> b!4589536 d!1443814))

(declare-fun d!1443816 () Bool)

(declare-fun lt!1752608 () List!51107)

(assert (=> d!1443816 (= (size!35953 lt!1752608) (size!35954 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))

(declare-fun e!2862611 () List!51107)

(assert (=> d!1443816 (= lt!1752608 e!2862611)))

(declare-fun c!786062 () Bool)

(assert (=> d!1443816 (= c!786062 ((_ is Nil!50980) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))

(assert (=> d!1443816 (= (map!11249 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) lambda!184508) lt!1752608)))

(declare-fun b!4589874 () Bool)

(assert (=> b!4589874 (= e!2862611 Nil!50983)))

(declare-fun b!4589875 () Bool)

(declare-fun $colon$colon!1032 (List!51107 K!12350) List!51107)

(declare-fun dynLambda!21356 (Int tuple2!51570) K!12350)

(assert (=> b!4589875 (= e!2862611 ($colon$colon!1032 (map!11249 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) lambda!184508) (dynLambda!21356 lambda!184508 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(assert (= (and d!1443816 c!786062) b!4589874))

(assert (= (and d!1443816 (not c!786062)) b!4589875))

(declare-fun b_lambda!168339 () Bool)

(assert (=> (not b_lambda!168339) (not b!4589875)))

(declare-fun m!5413125 () Bool)

(assert (=> d!1443816 m!5413125))

(assert (=> d!1443816 m!5413101))

(declare-fun m!5413127 () Bool)

(assert (=> b!4589875 m!5413127))

(declare-fun m!5413129 () Bool)

(assert (=> b!4589875 m!5413129))

(assert (=> b!4589875 m!5413127))

(assert (=> b!4589875 m!5413129))

(declare-fun m!5413131 () Bool)

(assert (=> b!4589875 m!5413131))

(assert (=> b!4589536 d!1443816))

(declare-fun d!1443818 () Bool)

(assert (=> d!1443818 (= (isDefined!8615 (getValueByKey!1265 (toList!4575 lm!1477) (hash!3147 hashF!1107 key!3287))) (not (isEmpty!28835 (getValueByKey!1265 (toList!4575 lm!1477) (hash!3147 hashF!1107 key!3287)))))))

(declare-fun bs!1007809 () Bool)

(assert (= bs!1007809 d!1443818))

(assert (=> bs!1007809 m!5412297))

(declare-fun m!5413133 () Bool)

(assert (=> bs!1007809 m!5413133))

(assert (=> b!4589451 d!1443818))

(declare-fun b!4589876 () Bool)

(declare-fun e!2862612 () Option!11345)

(assert (=> b!4589876 (= e!2862612 (Some!11344 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))

(declare-fun d!1443820 () Bool)

(declare-fun c!786063 () Bool)

(assert (=> d!1443820 (= c!786063 (and ((_ is Cons!50981) (toList!4575 lm!1477)) (= (_1!29080 (h!56922 (toList!4575 lm!1477))) (hash!3147 hashF!1107 key!3287))))))

(assert (=> d!1443820 (= (getValueByKey!1265 (toList!4575 lm!1477) (hash!3147 hashF!1107 key!3287)) e!2862612)))

(declare-fun b!4589877 () Bool)

(declare-fun e!2862613 () Option!11345)

(assert (=> b!4589877 (= e!2862612 e!2862613)))

(declare-fun c!786064 () Bool)

(assert (=> b!4589877 (= c!786064 (and ((_ is Cons!50981) (toList!4575 lm!1477)) (not (= (_1!29080 (h!56922 (toList!4575 lm!1477))) (hash!3147 hashF!1107 key!3287)))))))

(declare-fun b!4589878 () Bool)

(assert (=> b!4589878 (= e!2862613 (getValueByKey!1265 (t!358099 (toList!4575 lm!1477)) (hash!3147 hashF!1107 key!3287)))))

(declare-fun b!4589879 () Bool)

(assert (=> b!4589879 (= e!2862613 None!11344)))

(assert (= (and d!1443820 c!786063) b!4589876))

(assert (= (and d!1443820 (not c!786063)) b!4589877))

(assert (= (and b!4589877 c!786064) b!4589878))

(assert (= (and b!4589877 (not c!786064)) b!4589879))

(assert (=> b!4589878 m!5412045))

(declare-fun m!5413135 () Bool)

(assert (=> b!4589878 m!5413135))

(assert (=> b!4589451 d!1443820))

(declare-fun d!1443822 () Bool)

(assert (=> d!1443822 (= (invariantList!1103 (toList!4576 lt!1752396)) (noDuplicatedKeys!311 (toList!4576 lt!1752396)))))

(declare-fun bs!1007810 () Bool)

(assert (= bs!1007810 d!1443822))

(declare-fun m!5413137 () Bool)

(assert (=> bs!1007810 m!5413137))

(assert (=> b!4589559 d!1443822))

(assert (=> d!1443532 d!1443526))

(assert (=> d!1443532 d!1443528))

(declare-fun d!1443824 () Bool)

(assert (=> d!1443824 (isDefined!8615 (getValueByKey!1265 (toList!4575 lm!1477) lt!1752106))))

(assert (=> d!1443824 true))

(declare-fun _$13!1591 () Unit!107278)

(assert (=> d!1443824 (= (choose!30619 (toList!4575 lm!1477) lt!1752106) _$13!1591)))

(declare-fun bs!1007811 () Bool)

(assert (= bs!1007811 d!1443824))

(assert (=> bs!1007811 m!5412147))

(assert (=> bs!1007811 m!5412147))

(assert (=> bs!1007811 m!5412149))

(assert (=> d!1443532 d!1443824))

(assert (=> d!1443532 d!1443404))

(declare-fun d!1443826 () Bool)

(declare-fun lt!1752609 () Bool)

(assert (=> d!1443826 (= lt!1752609 (select (content!8602 (t!358101 (keys!17820 (extractMap!1340 (toList!4575 lm!1477))))) key!3287))))

(declare-fun e!2862615 () Bool)

(assert (=> d!1443826 (= lt!1752609 e!2862615)))

(declare-fun res!1918663 () Bool)

(assert (=> d!1443826 (=> (not res!1918663) (not e!2862615))))

(assert (=> d!1443826 (= res!1918663 ((_ is Cons!50983) (t!358101 (keys!17820 (extractMap!1340 (toList!4575 lm!1477))))))))

(assert (=> d!1443826 (= (contains!13887 (t!358101 (keys!17820 (extractMap!1340 (toList!4575 lm!1477)))) key!3287) lt!1752609)))

(declare-fun b!4589880 () Bool)

(declare-fun e!2862614 () Bool)

(assert (=> b!4589880 (= e!2862615 e!2862614)))

(declare-fun res!1918662 () Bool)

(assert (=> b!4589880 (=> res!1918662 e!2862614)))

(assert (=> b!4589880 (= res!1918662 (= (h!56926 (t!358101 (keys!17820 (extractMap!1340 (toList!4575 lm!1477))))) key!3287))))

(declare-fun b!4589881 () Bool)

(assert (=> b!4589881 (= e!2862614 (contains!13887 (t!358101 (t!358101 (keys!17820 (extractMap!1340 (toList!4575 lm!1477))))) key!3287))))

(assert (= (and d!1443826 res!1918663) b!4589880))

(assert (= (and b!4589880 (not res!1918662)) b!4589881))

(declare-fun m!5413139 () Bool)

(assert (=> d!1443826 m!5413139))

(declare-fun m!5413141 () Bool)

(assert (=> d!1443826 m!5413141))

(declare-fun m!5413143 () Bool)

(assert (=> b!4589881 m!5413143))

(assert (=> b!4589518 d!1443826))

(declare-fun b!4589882 () Bool)

(declare-fun e!2862616 () Option!11347)

(assert (=> b!4589882 (= e!2862616 (Some!11346 (_2!29079 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))))

(declare-fun b!4589883 () Bool)

(declare-fun e!2862617 () Option!11347)

(assert (=> b!4589883 (= e!2862616 e!2862617)))

(declare-fun c!786066 () Bool)

(assert (=> b!4589883 (= c!786066 (and ((_ is Cons!50980) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (not (= (_1!29079 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) key!3287))))))

(declare-fun b!4589884 () Bool)

(assert (=> b!4589884 (= e!2862617 (getValueByKey!1267 (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) key!3287))))

(declare-fun b!4589885 () Bool)

(assert (=> b!4589885 (= e!2862617 None!11346)))

(declare-fun d!1443828 () Bool)

(declare-fun c!786065 () Bool)

(assert (=> d!1443828 (= c!786065 (and ((_ is Cons!50980) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (= (_1!29079 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) key!3287)))))

(assert (=> d!1443828 (= (getValueByKey!1267 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) key!3287) e!2862616)))

(assert (= (and d!1443828 c!786065) b!4589882))

(assert (= (and d!1443828 (not c!786065)) b!4589883))

(assert (= (and b!4589883 c!786066) b!4589884))

(assert (= (and b!4589883 (not c!786066)) b!4589885))

(declare-fun m!5413145 () Bool)

(assert (=> b!4589884 m!5413145))

(assert (=> b!4589464 d!1443828))

(declare-fun d!1443830 () Bool)

(declare-fun c!786067 () Bool)

(assert (=> d!1443830 (= c!786067 ((_ is Nil!50983) lt!1752304))))

(declare-fun e!2862618 () (InoxSet K!12350))

(assert (=> d!1443830 (= (content!8602 lt!1752304) e!2862618)))

(declare-fun b!4589886 () Bool)

(assert (=> b!4589886 (= e!2862618 ((as const (Array K!12350 Bool)) false))))

(declare-fun b!4589887 () Bool)

(assert (=> b!4589887 (= e!2862618 ((_ map or) (store ((as const (Array K!12350 Bool)) false) (h!56926 lt!1752304) true) (content!8602 (t!358101 lt!1752304))))))

(assert (= (and d!1443830 c!786067) b!4589886))

(assert (= (and d!1443830 (not c!786067)) b!4589887))

(declare-fun m!5413147 () Bool)

(assert (=> b!4589887 m!5413147))

(declare-fun m!5413149 () Bool)

(assert (=> b!4589887 m!5413149))

(assert (=> b!4589504 d!1443830))

(declare-fun d!1443832 () Bool)

(declare-fun c!786068 () Bool)

(assert (=> d!1443832 (= c!786068 ((_ is Nil!50983) (map!11249 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) lambda!184497)))))

(declare-fun e!2862619 () (InoxSet K!12350))

(assert (=> d!1443832 (= (content!8602 (map!11249 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) lambda!184497)) e!2862619)))

(declare-fun b!4589888 () Bool)

(assert (=> b!4589888 (= e!2862619 ((as const (Array K!12350 Bool)) false))))

(declare-fun b!4589889 () Bool)

(assert (=> b!4589889 (= e!2862619 ((_ map or) (store ((as const (Array K!12350 Bool)) false) (h!56926 (map!11249 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) lambda!184497)) true) (content!8602 (t!358101 (map!11249 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) lambda!184497)))))))

(assert (= (and d!1443832 c!786068) b!4589888))

(assert (= (and d!1443832 (not c!786068)) b!4589889))

(declare-fun m!5413151 () Bool)

(assert (=> b!4589889 m!5413151))

(declare-fun m!5413153 () Bool)

(assert (=> b!4589889 m!5413153))

(assert (=> b!4589504 d!1443832))

(declare-fun d!1443834 () Bool)

(declare-fun lt!1752610 () List!51107)

(assert (=> d!1443834 (= (size!35953 lt!1752610) (size!35954 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))

(declare-fun e!2862620 () List!51107)

(assert (=> d!1443834 (= lt!1752610 e!2862620)))

(declare-fun c!786069 () Bool)

(assert (=> d!1443834 (= c!786069 ((_ is Nil!50980) (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))

(assert (=> d!1443834 (= (map!11249 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) lambda!184497) lt!1752610)))

(declare-fun b!4589890 () Bool)

(assert (=> b!4589890 (= e!2862620 Nil!50983)))

(declare-fun b!4589891 () Bool)

(assert (=> b!4589891 (= e!2862620 ($colon$colon!1032 (map!11249 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) lambda!184497) (dynLambda!21356 lambda!184497 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(assert (= (and d!1443834 c!786069) b!4589890))

(assert (= (and d!1443834 (not c!786069)) b!4589891))

(declare-fun b_lambda!168341 () Bool)

(assert (=> (not b_lambda!168341) (not b!4589891)))

(declare-fun m!5413155 () Bool)

(assert (=> d!1443834 m!5413155))

(assert (=> d!1443834 m!5413101))

(declare-fun m!5413157 () Bool)

(assert (=> b!4589891 m!5413157))

(declare-fun m!5413159 () Bool)

(assert (=> b!4589891 m!5413159))

(assert (=> b!4589891 m!5413157))

(assert (=> b!4589891 m!5413159))

(declare-fun m!5413161 () Bool)

(assert (=> b!4589891 m!5413161))

(assert (=> b!4589504 d!1443834))

(declare-fun d!1443836 () Bool)

(assert (=> d!1443836 (isDefined!8615 (getValueByKey!1265 (toList!4575 lm!1477) (hash!3147 hashF!1107 key!3287)))))

(declare-fun lt!1752611 () Unit!107278)

(assert (=> d!1443836 (= lt!1752611 (choose!30619 (toList!4575 lm!1477) (hash!3147 hashF!1107 key!3287)))))

(declare-fun e!2862621 () Bool)

(assert (=> d!1443836 e!2862621))

(declare-fun res!1918664 () Bool)

(assert (=> d!1443836 (=> (not res!1918664) (not e!2862621))))

(assert (=> d!1443836 (= res!1918664 (isStrictlySorted!518 (toList!4575 lm!1477)))))

(assert (=> d!1443836 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!1171 (toList!4575 lm!1477) (hash!3147 hashF!1107 key!3287)) lt!1752611)))

(declare-fun b!4589892 () Bool)

(assert (=> b!4589892 (= e!2862621 (containsKey!2076 (toList!4575 lm!1477) (hash!3147 hashF!1107 key!3287)))))

(assert (= (and d!1443836 res!1918664) b!4589892))

(assert (=> d!1443836 m!5412045))

(assert (=> d!1443836 m!5412297))

(assert (=> d!1443836 m!5412297))

(assert (=> d!1443836 m!5412299))

(assert (=> d!1443836 m!5412045))

(declare-fun m!5413163 () Bool)

(assert (=> d!1443836 m!5413163))

(assert (=> d!1443836 m!5412023))

(assert (=> b!4589892 m!5412045))

(assert (=> b!4589892 m!5412293))

(assert (=> b!4589449 d!1443836))

(assert (=> b!4589449 d!1443818))

(assert (=> b!4589449 d!1443820))

(declare-fun d!1443838 () Bool)

(declare-fun res!1918665 () Bool)

(declare-fun e!2862622 () Bool)

(assert (=> d!1443838 (=> res!1918665 e!2862622)))

(assert (=> d!1443838 (= res!1918665 (and ((_ is Cons!50980) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (= (_1!29079 (h!56921 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) key!3287)))))

(assert (=> d!1443838 (= (containsKey!2075 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) key!3287) e!2862622)))

(declare-fun b!4589893 () Bool)

(declare-fun e!2862623 () Bool)

(assert (=> b!4589893 (= e!2862622 e!2862623)))

(declare-fun res!1918666 () Bool)

(assert (=> b!4589893 (=> (not res!1918666) (not e!2862623))))

(assert (=> b!4589893 (= res!1918666 ((_ is Cons!50980) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))

(declare-fun b!4589894 () Bool)

(assert (=> b!4589894 (= e!2862623 (containsKey!2075 (t!358098 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) key!3287))))

(assert (= (and d!1443838 (not res!1918665)) b!4589893))

(assert (= (and b!4589893 res!1918666) b!4589894))

(declare-fun m!5413165 () Bool)

(assert (=> b!4589894 m!5413165))

(assert (=> b!4589446 d!1443838))

(declare-fun d!1443840 () Bool)

(assert (=> d!1443840 (= (hash!3147 hashF!1107 (_1!29079 (h!56921 newBucket!178))) (hash!3149 hashF!1107 (_1!29079 (h!56921 newBucket!178))))))

(declare-fun bs!1007812 () Bool)

(assert (= bs!1007812 d!1443840))

(declare-fun m!5413167 () Bool)

(assert (=> bs!1007812 m!5413167))

(assert (=> bs!1007564 d!1443840))

(declare-fun d!1443842 () Bool)

(declare-fun res!1918667 () Bool)

(declare-fun e!2862624 () Bool)

(assert (=> d!1443842 (=> res!1918667 e!2862624)))

(assert (=> d!1443842 (= res!1918667 (and ((_ is Cons!50981) (t!358099 (toList!4575 lm!1477))) (= (_1!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) lt!1752106)))))

(assert (=> d!1443842 (= (containsKey!2076 (t!358099 (toList!4575 lm!1477)) lt!1752106) e!2862624)))

(declare-fun b!4589895 () Bool)

(declare-fun e!2862625 () Bool)

(assert (=> b!4589895 (= e!2862624 e!2862625)))

(declare-fun res!1918668 () Bool)

(assert (=> b!4589895 (=> (not res!1918668) (not e!2862625))))

(assert (=> b!4589895 (= res!1918668 (and (or (not ((_ is Cons!50981) (t!358099 (toList!4575 lm!1477)))) (bvsle (_1!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) lt!1752106)) ((_ is Cons!50981) (t!358099 (toList!4575 lm!1477))) (bvslt (_1!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) lt!1752106)))))

(declare-fun b!4589896 () Bool)

(assert (=> b!4589896 (= e!2862625 (containsKey!2076 (t!358099 (t!358099 (toList!4575 lm!1477))) lt!1752106))))

(assert (= (and d!1443842 (not res!1918667)) b!4589895))

(assert (= (and b!4589895 res!1918668) b!4589896))

(declare-fun m!5413169 () Bool)

(assert (=> b!4589896 m!5413169))

(assert (=> b!4589577 d!1443842))

(declare-fun d!1443844 () Bool)

(declare-fun res!1918669 () Bool)

(declare-fun e!2862626 () Bool)

(assert (=> d!1443844 (=> res!1918669 e!2862626)))

(assert (=> d!1443844 (= res!1918669 ((_ is Nil!50981) (t!358099 (toList!4575 lm!1477))))))

(assert (=> d!1443844 (= (forall!10522 (t!358099 (toList!4575 lm!1477)) lambda!184436) e!2862626)))

(declare-fun b!4589897 () Bool)

(declare-fun e!2862627 () Bool)

(assert (=> b!4589897 (= e!2862626 e!2862627)))

(declare-fun res!1918670 () Bool)

(assert (=> b!4589897 (=> (not res!1918670) (not e!2862627))))

(assert (=> b!4589897 (= res!1918670 (dynLambda!21350 lambda!184436 (h!56922 (t!358099 (toList!4575 lm!1477)))))))

(declare-fun b!4589898 () Bool)

(assert (=> b!4589898 (= e!2862627 (forall!10522 (t!358099 (t!358099 (toList!4575 lm!1477))) lambda!184436))))

(assert (= (and d!1443844 (not res!1918669)) b!4589897))

(assert (= (and b!4589897 res!1918670) b!4589898))

(declare-fun b_lambda!168343 () Bool)

(assert (=> (not b_lambda!168343) (not b!4589897)))

(declare-fun m!5413171 () Bool)

(assert (=> b!4589897 m!5413171))

(declare-fun m!5413173 () Bool)

(assert (=> b!4589898 m!5413173))

(assert (=> b!4589453 d!1443844))

(declare-fun d!1443846 () Bool)

(declare-fun res!1918671 () Bool)

(declare-fun e!2862628 () Bool)

(assert (=> d!1443846 (=> res!1918671 e!2862628)))

(assert (=> d!1443846 (= res!1918671 (or ((_ is Nil!50981) (t!358099 (t!358099 (toList!4575 lm!1477)))) ((_ is Nil!50981) (t!358099 (t!358099 (t!358099 (toList!4575 lm!1477)))))))))

(assert (=> d!1443846 (= (isStrictlySorted!518 (t!358099 (t!358099 (toList!4575 lm!1477)))) e!2862628)))

(declare-fun b!4589899 () Bool)

(declare-fun e!2862629 () Bool)

(assert (=> b!4589899 (= e!2862628 e!2862629)))

(declare-fun res!1918672 () Bool)

(assert (=> b!4589899 (=> (not res!1918672) (not e!2862629))))

(assert (=> b!4589899 (= res!1918672 (bvslt (_1!29080 (h!56922 (t!358099 (t!358099 (toList!4575 lm!1477))))) (_1!29080 (h!56922 (t!358099 (t!358099 (t!358099 (toList!4575 lm!1477))))))))))

(declare-fun b!4589900 () Bool)

(assert (=> b!4589900 (= e!2862629 (isStrictlySorted!518 (t!358099 (t!358099 (t!358099 (toList!4575 lm!1477))))))))

(assert (= (and d!1443846 (not res!1918671)) b!4589899))

(assert (= (and b!4589899 res!1918672) b!4589900))

(declare-fun m!5413175 () Bool)

(assert (=> b!4589900 m!5413175))

(assert (=> b!4589448 d!1443846))

(assert (=> bs!1007561 d!1443480))

(declare-fun d!1443848 () Bool)

(declare-fun res!1918673 () Bool)

(declare-fun e!2862630 () Bool)

(assert (=> d!1443848 (=> res!1918673 e!2862630)))

(assert (=> d!1443848 (= res!1918673 ((_ is Nil!50980) (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477))))))))

(assert (=> d!1443848 (= (forall!10524 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) lambda!184540) e!2862630)))

(declare-fun b!4589901 () Bool)

(declare-fun e!2862631 () Bool)

(assert (=> b!4589901 (= e!2862630 e!2862631)))

(declare-fun res!1918674 () Bool)

(assert (=> b!4589901 (=> (not res!1918674) (not e!2862631))))

(assert (=> b!4589901 (= res!1918674 (dynLambda!21352 lambda!184540 (h!56921 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))))))))

(declare-fun b!4589902 () Bool)

(assert (=> b!4589902 (= e!2862631 (forall!10524 (t!358098 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477))))) lambda!184540))))

(assert (= (and d!1443848 (not res!1918673)) b!4589901))

(assert (= (and b!4589901 res!1918674) b!4589902))

(declare-fun b_lambda!168345 () Bool)

(assert (=> (not b_lambda!168345) (not b!4589901)))

(declare-fun m!5413177 () Bool)

(assert (=> b!4589901 m!5413177))

(declare-fun m!5413179 () Bool)

(assert (=> b!4589902 m!5413179))

(assert (=> b!4589562 d!1443848))

(declare-fun d!1443850 () Bool)

(declare-fun res!1918675 () Bool)

(declare-fun e!2862632 () Bool)

(assert (=> d!1443850 (=> res!1918675 e!2862632)))

(assert (=> d!1443850 (= res!1918675 ((_ is Nil!50981) (t!358099 (t!358099 (toList!4575 lm!1477)))))))

(assert (=> d!1443850 (= (forall!10522 (t!358099 (t!358099 (toList!4575 lm!1477))) lambda!184415) e!2862632)))

(declare-fun b!4589903 () Bool)

(declare-fun e!2862633 () Bool)

(assert (=> b!4589903 (= e!2862632 e!2862633)))

(declare-fun res!1918676 () Bool)

(assert (=> b!4589903 (=> (not res!1918676) (not e!2862633))))

(assert (=> b!4589903 (= res!1918676 (dynLambda!21350 lambda!184415 (h!56922 (t!358099 (t!358099 (toList!4575 lm!1477))))))))

(declare-fun b!4589904 () Bool)

(assert (=> b!4589904 (= e!2862633 (forall!10522 (t!358099 (t!358099 (t!358099 (toList!4575 lm!1477)))) lambda!184415))))

(assert (= (and d!1443850 (not res!1918675)) b!4589903))

(assert (= (and b!4589903 res!1918676) b!4589904))

(declare-fun b_lambda!168347 () Bool)

(assert (=> (not b_lambda!168347) (not b!4589903)))

(declare-fun m!5413181 () Bool)

(assert (=> b!4589903 m!5413181))

(declare-fun m!5413183 () Bool)

(assert (=> b!4589904 m!5413183))

(assert (=> b!4589571 d!1443850))

(declare-fun d!1443852 () Bool)

(declare-fun c!786070 () Bool)

(assert (=> d!1443852 (= c!786070 ((_ is Nil!50983) e!2862188))))

(declare-fun e!2862634 () (InoxSet K!12350))

(assert (=> d!1443852 (= (content!8602 e!2862188) e!2862634)))

(declare-fun b!4589905 () Bool)

(assert (=> b!4589905 (= e!2862634 ((as const (Array K!12350 Bool)) false))))

(declare-fun b!4589906 () Bool)

(assert (=> b!4589906 (= e!2862634 ((_ map or) (store ((as const (Array K!12350 Bool)) false) (h!56926 e!2862188) true) (content!8602 (t!358101 e!2862188))))))

(assert (= (and d!1443852 c!786070) b!4589905))

(assert (= (and d!1443852 (not c!786070)) b!4589906))

(declare-fun m!5413185 () Bool)

(assert (=> b!4589906 m!5413185))

(declare-fun m!5413187 () Bool)

(assert (=> b!4589906 m!5413187))

(assert (=> d!1443506 d!1443852))

(declare-fun d!1443854 () Bool)

(declare-fun res!1918677 () Bool)

(declare-fun e!2862635 () Bool)

(assert (=> d!1443854 (=> res!1918677 e!2862635)))

(assert (=> d!1443854 (= res!1918677 ((_ is Nil!50980) (t!358098 newBucket!178)))))

(assert (=> d!1443854 (= (forall!10524 (t!358098 newBucket!178) lambda!184418) e!2862635)))

(declare-fun b!4589907 () Bool)

(declare-fun e!2862636 () Bool)

(assert (=> b!4589907 (= e!2862635 e!2862636)))

(declare-fun res!1918678 () Bool)

(assert (=> b!4589907 (=> (not res!1918678) (not e!2862636))))

(assert (=> b!4589907 (= res!1918678 (dynLambda!21352 lambda!184418 (h!56921 (t!358098 newBucket!178))))))

(declare-fun b!4589908 () Bool)

(assert (=> b!4589908 (= e!2862636 (forall!10524 (t!358098 (t!358098 newBucket!178)) lambda!184418))))

(assert (= (and d!1443854 (not res!1918677)) b!4589907))

(assert (= (and b!4589907 res!1918678) b!4589908))

(declare-fun b_lambda!168349 () Bool)

(assert (=> (not b_lambda!168349) (not b!4589907)))

(declare-fun m!5413189 () Bool)

(assert (=> b!4589907 m!5413189))

(declare-fun m!5413191 () Bool)

(assert (=> b!4589908 m!5413191))

(assert (=> b!4589434 d!1443854))

(declare-fun d!1443856 () Bool)

(declare-fun res!1918679 () Bool)

(declare-fun e!2862637 () Bool)

(assert (=> d!1443856 (=> res!1918679 e!2862637)))

(assert (=> d!1443856 (= res!1918679 (not ((_ is Cons!50980) (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> d!1443856 (= (noDuplicateKeys!1280 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))) e!2862637)))

(declare-fun b!4589909 () Bool)

(declare-fun e!2862638 () Bool)

(assert (=> b!4589909 (= e!2862637 e!2862638)))

(declare-fun res!1918680 () Bool)

(assert (=> b!4589909 (=> (not res!1918680) (not e!2862638))))

(assert (=> b!4589909 (= res!1918680 (not (containsKey!2078 (t!358098 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (_1!29079 (h!56921 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))))

(declare-fun b!4589910 () Bool)

(assert (=> b!4589910 (= e!2862638 (noDuplicateKeys!1280 (t!358098 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (= (and d!1443856 (not res!1918679)) b!4589909))

(assert (= (and b!4589909 res!1918680) b!4589910))

(declare-fun m!5413193 () Bool)

(assert (=> b!4589909 m!5413193))

(declare-fun m!5413195 () Bool)

(assert (=> b!4589910 m!5413195))

(assert (=> b!4589440 d!1443856))

(declare-fun d!1443858 () Bool)

(declare-fun res!1918681 () Bool)

(declare-fun e!2862639 () Bool)

(assert (=> d!1443858 (=> res!1918681 e!2862639)))

(assert (=> d!1443858 (= res!1918681 ((_ is Nil!50981) (t!358099 (toList!4575 lm!1477))))))

(assert (=> d!1443858 (= (forall!10522 (t!358099 (toList!4575 lm!1477)) lambda!184433) e!2862639)))

(declare-fun b!4589911 () Bool)

(declare-fun e!2862640 () Bool)

(assert (=> b!4589911 (= e!2862639 e!2862640)))

(declare-fun res!1918682 () Bool)

(assert (=> b!4589911 (=> (not res!1918682) (not e!2862640))))

(assert (=> b!4589911 (= res!1918682 (dynLambda!21350 lambda!184433 (h!56922 (t!358099 (toList!4575 lm!1477)))))))

(declare-fun b!4589912 () Bool)

(assert (=> b!4589912 (= e!2862640 (forall!10522 (t!358099 (t!358099 (toList!4575 lm!1477))) lambda!184433))))

(assert (= (and d!1443858 (not res!1918681)) b!4589911))

(assert (= (and b!4589911 res!1918682) b!4589912))

(declare-fun b_lambda!168351 () Bool)

(assert (=> (not b_lambda!168351) (not b!4589911)))

(declare-fun m!5413197 () Bool)

(assert (=> b!4589911 m!5413197))

(declare-fun m!5413199 () Bool)

(assert (=> b!4589912 m!5413199))

(assert (=> b!4589569 d!1443858))

(declare-fun d!1443860 () Bool)

(declare-fun res!1918683 () Bool)

(declare-fun e!2862641 () Bool)

(assert (=> d!1443860 (=> res!1918683 e!2862641)))

(assert (=> d!1443860 (= res!1918683 (and ((_ is Cons!50981) (toList!4575 lm!1477)) (= (_1!29080 (h!56922 (toList!4575 lm!1477))) (hash!3147 hashF!1107 key!3287))))))

(assert (=> d!1443860 (= (containsKey!2076 (toList!4575 lm!1477) (hash!3147 hashF!1107 key!3287)) e!2862641)))

(declare-fun b!4589913 () Bool)

(declare-fun e!2862642 () Bool)

(assert (=> b!4589913 (= e!2862641 e!2862642)))

(declare-fun res!1918684 () Bool)

(assert (=> b!4589913 (=> (not res!1918684) (not e!2862642))))

(assert (=> b!4589913 (= res!1918684 (and (or (not ((_ is Cons!50981) (toList!4575 lm!1477))) (bvsle (_1!29080 (h!56922 (toList!4575 lm!1477))) (hash!3147 hashF!1107 key!3287))) ((_ is Cons!50981) (toList!4575 lm!1477)) (bvslt (_1!29080 (h!56922 (toList!4575 lm!1477))) (hash!3147 hashF!1107 key!3287))))))

(declare-fun b!4589914 () Bool)

(assert (=> b!4589914 (= e!2862642 (containsKey!2076 (t!358099 (toList!4575 lm!1477)) (hash!3147 hashF!1107 key!3287)))))

(assert (= (and d!1443860 (not res!1918683)) b!4589913))

(assert (= (and b!4589913 res!1918684) b!4589914))

(assert (=> b!4589914 m!5412045))

(declare-fun m!5413201 () Bool)

(assert (=> b!4589914 m!5413201))

(assert (=> d!1443486 d!1443860))

(assert (=> d!1443488 d!1443486))

(assert (=> d!1443488 d!1443402))

(declare-fun d!1443862 () Bool)

(declare-fun res!1918685 () Bool)

(declare-fun e!2862643 () Bool)

(assert (=> d!1443862 (=> res!1918685 e!2862643)))

(assert (=> d!1443862 (= res!1918685 ((_ is Nil!50980) (_2!29080 (h!56922 (toList!4575 lm!1477)))))))

(assert (=> d!1443862 (= (forall!10524 (_2!29080 (h!56922 (toList!4575 lm!1477))) lambda!184540) e!2862643)))

(declare-fun b!4589915 () Bool)

(declare-fun e!2862644 () Bool)

(assert (=> b!4589915 (= e!2862643 e!2862644)))

(declare-fun res!1918686 () Bool)

(assert (=> b!4589915 (=> (not res!1918686) (not e!2862644))))

(assert (=> b!4589915 (= res!1918686 (dynLambda!21352 lambda!184540 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))

(declare-fun b!4589916 () Bool)

(assert (=> b!4589916 (= e!2862644 (forall!10524 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))) lambda!184540))))

(assert (= (and d!1443862 (not res!1918685)) b!4589915))

(assert (= (and b!4589915 res!1918686) b!4589916))

(declare-fun b_lambda!168353 () Bool)

(assert (=> (not b_lambda!168353) (not b!4589915)))

(declare-fun m!5413203 () Bool)

(assert (=> b!4589915 m!5413203))

(declare-fun m!5413205 () Bool)

(assert (=> b!4589916 m!5413205))

(assert (=> d!1443536 d!1443862))

(assert (=> d!1443536 d!1443480))

(assert (=> d!1443530 d!1443482))

(declare-fun d!1443864 () Bool)

(assert (=> d!1443864 (containsKey!2075 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287)))

(assert (=> d!1443864 true))

(declare-fun _$15!807 () Unit!107278)

(assert (=> d!1443864 (= (choose!30618 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287) _$15!807)))

(declare-fun bs!1007813 () Bool)

(assert (= bs!1007813 d!1443864))

(assert (=> bs!1007813 m!5412123))

(assert (=> d!1443530 d!1443864))

(assert (=> d!1443530 d!1443638))

(declare-fun d!1443866 () Bool)

(declare-fun res!1918687 () Bool)

(declare-fun e!2862645 () Bool)

(assert (=> d!1443866 (=> res!1918687 e!2862645)))

(assert (=> d!1443866 (= res!1918687 ((_ is Nil!50980) (ite c!786006 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (toList!4576 lt!1752390))))))

(assert (=> d!1443866 (= (forall!10524 (ite c!786006 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (toList!4576 lt!1752390)) (ite c!786006 lambda!184537 lambda!184539)) e!2862645)))

(declare-fun b!4589917 () Bool)

(declare-fun e!2862646 () Bool)

(assert (=> b!4589917 (= e!2862645 e!2862646)))

(declare-fun res!1918688 () Bool)

(assert (=> b!4589917 (=> (not res!1918688) (not e!2862646))))

(assert (=> b!4589917 (= res!1918688 (dynLambda!21352 (ite c!786006 lambda!184537 lambda!184539) (h!56921 (ite c!786006 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (toList!4576 lt!1752390)))))))

(declare-fun b!4589918 () Bool)

(assert (=> b!4589918 (= e!2862646 (forall!10524 (t!358098 (ite c!786006 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))) (toList!4576 lt!1752390))) (ite c!786006 lambda!184537 lambda!184539)))))

(assert (= (and d!1443866 (not res!1918687)) b!4589917))

(assert (= (and b!4589917 res!1918688) b!4589918))

(declare-fun b_lambda!168355 () Bool)

(assert (=> (not b_lambda!168355) (not b!4589917)))

(declare-fun m!5413207 () Bool)

(assert (=> b!4589917 m!5413207))

(declare-fun m!5413209 () Bool)

(assert (=> b!4589918 m!5413209))

(assert (=> bm!320497 d!1443866))

(declare-fun d!1443868 () Bool)

(declare-fun lt!1752612 () Bool)

(assert (=> d!1443868 (= lt!1752612 (select (content!8602 (t!358101 e!2862188)) key!3287))))

(declare-fun e!2862648 () Bool)

(assert (=> d!1443868 (= lt!1752612 e!2862648)))

(declare-fun res!1918690 () Bool)

(assert (=> d!1443868 (=> (not res!1918690) (not e!2862648))))

(assert (=> d!1443868 (= res!1918690 ((_ is Cons!50983) (t!358101 e!2862188)))))

(assert (=> d!1443868 (= (contains!13887 (t!358101 e!2862188) key!3287) lt!1752612)))

(declare-fun b!4589919 () Bool)

(declare-fun e!2862647 () Bool)

(assert (=> b!4589919 (= e!2862648 e!2862647)))

(declare-fun res!1918689 () Bool)

(assert (=> b!4589919 (=> res!1918689 e!2862647)))

(assert (=> b!4589919 (= res!1918689 (= (h!56926 (t!358101 e!2862188)) key!3287))))

(declare-fun b!4589920 () Bool)

(assert (=> b!4589920 (= e!2862647 (contains!13887 (t!358101 (t!358101 e!2862188)) key!3287))))

(assert (= (and d!1443868 res!1918690) b!4589919))

(assert (= (and b!4589919 (not res!1918689)) b!4589920))

(assert (=> d!1443868 m!5413187))

(declare-fun m!5413211 () Bool)

(assert (=> d!1443868 m!5413211))

(declare-fun m!5413213 () Bool)

(assert (=> b!4589920 m!5413213))

(assert (=> b!4589516 d!1443868))

(declare-fun d!1443870 () Bool)

(declare-fun res!1918695 () Bool)

(declare-fun e!2862653 () Bool)

(assert (=> d!1443870 (=> res!1918695 e!2862653)))

(assert (=> d!1443870 (= res!1918695 (or ((_ is Nil!50980) (toList!4576 lt!1752177)) ((_ is Nil!50980) (t!358098 (toList!4576 lt!1752177)))))))

(assert (=> d!1443870 (= (noDuplicatedKeys!311 (toList!4576 lt!1752177)) e!2862653)))

(declare-fun b!4589925 () Bool)

(declare-fun e!2862654 () Bool)

(assert (=> b!4589925 (= e!2862653 e!2862654)))

(declare-fun res!1918696 () Bool)

(assert (=> b!4589925 (=> (not res!1918696) (not e!2862654))))

(assert (=> b!4589925 (= res!1918696 (not (containsKey!2075 (t!358098 (toList!4576 lt!1752177)) (_1!29079 (h!56921 (toList!4576 lt!1752177))))))))

(declare-fun b!4589926 () Bool)

(assert (=> b!4589926 (= e!2862654 (noDuplicatedKeys!311 (t!358098 (toList!4576 lt!1752177))))))

(assert (= (and d!1443870 (not res!1918695)) b!4589925))

(assert (= (and b!4589925 res!1918696) b!4589926))

(declare-fun m!5413215 () Bool)

(assert (=> b!4589925 m!5413215))

(declare-fun m!5413217 () Bool)

(assert (=> b!4589926 m!5413217))

(assert (=> d!1443540 d!1443870))

(declare-fun d!1443872 () Bool)

(assert (=> d!1443872 (= (invariantList!1103 (toList!4576 lt!1752408)) (noDuplicatedKeys!311 (toList!4576 lt!1752408)))))

(declare-fun bs!1007814 () Bool)

(assert (= bs!1007814 d!1443872))

(declare-fun m!5413219 () Bool)

(assert (=> bs!1007814 m!5413219))

(assert (=> d!1443538 d!1443872))

(declare-fun d!1443874 () Bool)

(declare-fun res!1918697 () Bool)

(declare-fun e!2862655 () Bool)

(assert (=> d!1443874 (=> res!1918697 e!2862655)))

(assert (=> d!1443874 (= res!1918697 ((_ is Nil!50981) (t!358099 (toList!4575 lm!1477))))))

(assert (=> d!1443874 (= (forall!10522 (t!358099 (toList!4575 lm!1477)) lambda!184541) e!2862655)))

(declare-fun b!4589927 () Bool)

(declare-fun e!2862656 () Bool)

(assert (=> b!4589927 (= e!2862655 e!2862656)))

(declare-fun res!1918698 () Bool)

(assert (=> b!4589927 (=> (not res!1918698) (not e!2862656))))

(assert (=> b!4589927 (= res!1918698 (dynLambda!21350 lambda!184541 (h!56922 (t!358099 (toList!4575 lm!1477)))))))

(declare-fun b!4589928 () Bool)

(assert (=> b!4589928 (= e!2862656 (forall!10522 (t!358099 (t!358099 (toList!4575 lm!1477))) lambda!184541))))

(assert (= (and d!1443874 (not res!1918697)) b!4589927))

(assert (= (and b!4589927 res!1918698) b!4589928))

(declare-fun b_lambda!168357 () Bool)

(assert (=> (not b_lambda!168357) (not b!4589927)))

(declare-fun m!5413221 () Bool)

(assert (=> b!4589927 m!5413221))

(declare-fun m!5413223 () Bool)

(assert (=> b!4589928 m!5413223))

(assert (=> d!1443538 d!1443874))

(assert (=> b!4589548 d!1443546))

(declare-fun d!1443876 () Bool)

(declare-fun c!786071 () Bool)

(assert (=> d!1443876 (= c!786071 ((_ is Nil!50983) (keys!17820 (extractMap!1340 (toList!4575 lm!1477)))))))

(declare-fun e!2862657 () (InoxSet K!12350))

(assert (=> d!1443876 (= (content!8602 (keys!17820 (extractMap!1340 (toList!4575 lm!1477)))) e!2862657)))

(declare-fun b!4589929 () Bool)

(assert (=> b!4589929 (= e!2862657 ((as const (Array K!12350 Bool)) false))))

(declare-fun b!4589930 () Bool)

(assert (=> b!4589930 (= e!2862657 ((_ map or) (store ((as const (Array K!12350 Bool)) false) (h!56926 (keys!17820 (extractMap!1340 (toList!4575 lm!1477)))) true) (content!8602 (t!358101 (keys!17820 (extractMap!1340 (toList!4575 lm!1477)))))))))

(assert (= (and d!1443876 c!786071) b!4589929))

(assert (= (and d!1443876 (not c!786071)) b!4589930))

(declare-fun m!5413225 () Bool)

(assert (=> b!4589930 m!5413225))

(assert (=> b!4589930 m!5413139))

(assert (=> d!1443508 d!1443876))

(assert (=> d!1443492 d!1443494))

(assert (=> d!1443492 d!1443496))

(declare-fun d!1443878 () Bool)

(assert (=> d!1443878 (isDefined!8614 (getValueByKey!1267 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287))))

(assert (=> d!1443878 true))

(declare-fun _$29!716 () Unit!107278)

(assert (=> d!1443878 (= (choose!30616 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) key!3287) _$29!716)))

(declare-fun bs!1007815 () Bool)

(assert (= bs!1007815 d!1443878))

(assert (=> bs!1007815 m!5412111))

(assert (=> bs!1007815 m!5412111))

(assert (=> bs!1007815 m!5412113))

(assert (=> d!1443492 d!1443878))

(assert (=> d!1443492 d!1443638))

(declare-fun d!1443880 () Bool)

(assert (=> d!1443880 (= (length!448 lt!1752304) (size!35953 lt!1752304))))

(declare-fun bs!1007816 () Bool)

(assert (= bs!1007816 d!1443880))

(declare-fun m!5413227 () Bool)

(assert (=> bs!1007816 m!5413227))

(assert (=> b!4589499 d!1443880))

(assert (=> b!4589499 d!1443800))

(declare-fun d!1443882 () Bool)

(declare-fun res!1918699 () Bool)

(declare-fun e!2862658 () Bool)

(assert (=> d!1443882 (=> res!1918699 e!2862658)))

(assert (=> d!1443882 (= res!1918699 ((_ is Nil!50981) (t!358099 (toList!4575 lm!1477))))))

(assert (=> d!1443882 (= (forall!10522 (t!358099 (toList!4575 lm!1477)) lambda!184439) e!2862658)))

(declare-fun b!4589931 () Bool)

(declare-fun e!2862659 () Bool)

(assert (=> b!4589931 (= e!2862658 e!2862659)))

(declare-fun res!1918700 () Bool)

(assert (=> b!4589931 (=> (not res!1918700) (not e!2862659))))

(assert (=> b!4589931 (= res!1918700 (dynLambda!21350 lambda!184439 (h!56922 (t!358099 (toList!4575 lm!1477)))))))

(declare-fun b!4589932 () Bool)

(assert (=> b!4589932 (= e!2862659 (forall!10522 (t!358099 (t!358099 (toList!4575 lm!1477))) lambda!184439))))

(assert (= (and d!1443882 (not res!1918699)) b!4589931))

(assert (= (and b!4589931 res!1918700) b!4589932))

(declare-fun b_lambda!168359 () Bool)

(assert (=> (not b_lambda!168359) (not b!4589931)))

(declare-fun m!5413229 () Bool)

(assert (=> b!4589931 m!5413229))

(declare-fun m!5413231 () Bool)

(assert (=> b!4589932 m!5413231))

(assert (=> b!4589471 d!1443882))

(assert (=> bs!1007563 d!1443480))

(declare-fun d!1443884 () Bool)

(declare-fun res!1918701 () Bool)

(declare-fun e!2862660 () Bool)

(assert (=> d!1443884 (=> res!1918701 e!2862660)))

(assert (=> d!1443884 (= res!1918701 ((_ is Nil!50983) lt!1752338))))

(assert (=> d!1443884 (= (forall!10526 lt!1752338 lambda!184507) e!2862660)))

(declare-fun b!4589933 () Bool)

(declare-fun e!2862661 () Bool)

(assert (=> b!4589933 (= e!2862660 e!2862661)))

(declare-fun res!1918702 () Bool)

(assert (=> b!4589933 (=> (not res!1918702) (not e!2862661))))

(assert (=> b!4589933 (= res!1918702 (dynLambda!21354 lambda!184507 (h!56926 lt!1752338)))))

(declare-fun b!4589934 () Bool)

(assert (=> b!4589934 (= e!2862661 (forall!10526 (t!358101 lt!1752338) lambda!184507))))

(assert (= (and d!1443884 (not res!1918701)) b!4589933))

(assert (= (and b!4589933 res!1918702) b!4589934))

(declare-fun b_lambda!168361 () Bool)

(assert (=> (not b_lambda!168361) (not b!4589933)))

(declare-fun m!5413233 () Bool)

(assert (=> b!4589933 m!5413233))

(declare-fun m!5413235 () Bool)

(assert (=> b!4589934 m!5413235))

(assert (=> b!4589535 d!1443884))

(declare-fun e!2862662 () Bool)

(declare-fun b!4589935 () Bool)

(declare-fun tp!1339921 () Bool)

(assert (=> b!4589935 (= e!2862662 (and tp_is_empty!28413 tp_is_empty!28415 tp!1339921))))

(assert (=> b!4589579 (= tp!1339913 e!2862662)))

(assert (= (and b!4589579 ((_ is Cons!50980) (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) b!4589935))

(declare-fun tp!1339922 () Bool)

(declare-fun e!2862663 () Bool)

(declare-fun b!4589936 () Bool)

(assert (=> b!4589936 (= e!2862663 (and tp_is_empty!28413 tp_is_empty!28415 tp!1339922))))

(assert (=> b!4589580 (= tp!1339914 e!2862663)))

(assert (= (and b!4589580 ((_ is Cons!50980) (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))))) b!4589936))

(declare-fun b!4589937 () Bool)

(declare-fun e!2862664 () Bool)

(declare-fun tp!1339923 () Bool)

(declare-fun tp!1339924 () Bool)

(assert (=> b!4589937 (= e!2862664 (and tp!1339923 tp!1339924))))

(assert (=> b!4589580 (= tp!1339915 e!2862664)))

(assert (= (and b!4589580 ((_ is Cons!50981) (t!358099 (t!358099 (toList!4575 lm!1477))))) b!4589937))

(declare-fun b!4589938 () Bool)

(declare-fun tp!1339925 () Bool)

(declare-fun e!2862665 () Bool)

(assert (=> b!4589938 (= e!2862665 (and tp_is_empty!28413 tp_is_empty!28415 tp!1339925))))

(assert (=> b!4589578 (= tp!1339912 e!2862665)))

(assert (= (and b!4589578 ((_ is Cons!50980) (t!358098 (t!358098 (t!358098 newBucket!178))))) b!4589938))

(declare-fun b_lambda!168363 () Bool)

(assert (= b_lambda!168293 (or b!4589563 b_lambda!168363)))

(declare-fun bs!1007817 () Bool)

(declare-fun d!1443886 () Bool)

(assert (= bs!1007817 (and d!1443886 b!4589563)))

(assert (=> bs!1007817 (= (dynLambda!21352 lambda!184539 (h!56921 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))))) (contains!13884 lt!1752404 (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477))))))))))

(declare-fun m!5413237 () Bool)

(assert (=> bs!1007817 m!5413237))

(assert (=> b!4589815 d!1443886))

(declare-fun b_lambda!168365 () Bool)

(assert (= b_lambda!168359 (or d!1443418 b_lambda!168365)))

(declare-fun bs!1007818 () Bool)

(declare-fun d!1443888 () Bool)

(assert (= bs!1007818 (and d!1443888 d!1443418)))

(assert (=> bs!1007818 (= (dynLambda!21350 lambda!184439 (h!56922 (t!358099 (toList!4575 lm!1477)))) (allKeysSameHash!1136 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) (_1!29080 (h!56922 (t!358099 (toList!4575 lm!1477)))) hashF!1107))))

(declare-fun m!5413239 () Bool)

(assert (=> bs!1007818 m!5413239))

(assert (=> b!4589931 d!1443888))

(declare-fun b_lambda!168367 () Bool)

(assert (= b_lambda!168361 (or b!4589535 b_lambda!168367)))

(declare-fun bs!1007819 () Bool)

(declare-fun d!1443890 () Bool)

(assert (= bs!1007819 (and d!1443890 b!4589535)))

(assert (=> bs!1007819 (= (dynLambda!21354 lambda!184507 (h!56926 lt!1752338)) (containsKey!2075 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) (h!56926 lt!1752338)))))

(declare-fun m!5413241 () Bool)

(assert (=> bs!1007819 m!5413241))

(assert (=> b!4589933 d!1443890))

(declare-fun b_lambda!168369 () Bool)

(assert (= b_lambda!168283 (or b!4589563 b_lambda!168369)))

(declare-fun bs!1007820 () Bool)

(declare-fun d!1443892 () Bool)

(assert (= bs!1007820 (and d!1443892 b!4589563)))

(assert (=> bs!1007820 (= (dynLambda!21352 lambda!184539 (h!56921 (toList!4576 lt!1752390))) (contains!13884 lt!1752404 (_1!29079 (h!56921 (toList!4576 lt!1752390)))))))

(declare-fun m!5413243 () Bool)

(assert (=> bs!1007820 m!5413243))

(assert (=> b!4589769 d!1443892))

(declare-fun b_lambda!168371 () Bool)

(assert (= b_lambda!168337 (or b!4589500 b_lambda!168371)))

(declare-fun bs!1007821 () Bool)

(declare-fun d!1443894 () Bool)

(assert (= bs!1007821 (and d!1443894 b!4589500)))

(assert (=> bs!1007821 (= (dynLambda!21354 lambda!184496 (h!56926 lt!1752304)) (containsKey!2075 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))) (h!56926 lt!1752304)))))

(declare-fun m!5413245 () Bool)

(assert (=> bs!1007821 m!5413245))

(assert (=> b!4589860 d!1443894))

(declare-fun b_lambda!168373 () Bool)

(assert (= b_lambda!168275 (or b!4589503 b_lambda!168373)))

(declare-fun bs!1007822 () Bool)

(declare-fun d!1443896 () Bool)

(assert (= bs!1007822 (and d!1443896 b!4589503)))

(assert (=> bs!1007822 (= (dynLambda!21354 lambda!184492 (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))) (containsKey!2075 (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))))))))

(assert (=> bs!1007822 m!5412329))

(assert (=> d!1443688 d!1443896))

(declare-fun b_lambda!168375 () Bool)

(assert (= b_lambda!168263 (or b!4589505 b_lambda!168375)))

(declare-fun bs!1007823 () Bool)

(declare-fun d!1443898 () Bool)

(assert (= bs!1007823 (and d!1443898 b!4589505)))

(assert (=> bs!1007823 (= (dynLambda!21354 lambda!184495 (h!56926 lt!1752303)) (containsKey!2075 (Cons!50980 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477)))) (t!358098 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (h!56926 lt!1752303)))))

(declare-fun m!5413247 () Bool)

(assert (=> bs!1007823 m!5413247))

(assert (=> b!4589689 d!1443898))

(declare-fun b_lambda!168377 () Bool)

(assert (= b_lambda!168349 (or d!1443384 b_lambda!168377)))

(declare-fun bs!1007824 () Bool)

(declare-fun d!1443900 () Bool)

(assert (= bs!1007824 (and d!1443900 d!1443384)))

(assert (=> bs!1007824 (= (dynLambda!21352 lambda!184418 (h!56921 (t!358098 newBucket!178))) (= (hash!3147 hashF!1107 (_1!29079 (h!56921 (t!358098 newBucket!178)))) hash!344))))

(declare-fun m!5413249 () Bool)

(assert (=> bs!1007824 m!5413249))

(assert (=> b!4589907 d!1443900))

(declare-fun b_lambda!168379 () Bool)

(assert (= b_lambda!168345 (or d!1443536 b_lambda!168379)))

(declare-fun bs!1007825 () Bool)

(declare-fun d!1443902 () Bool)

(assert (= bs!1007825 (and d!1443902 d!1443536)))

(assert (=> bs!1007825 (= (dynLambda!21352 lambda!184540 (h!56921 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477)))))) (contains!13884 lt!1752396 (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (t!358099 (toList!4575 lm!1477))))))))))

(declare-fun m!5413251 () Bool)

(assert (=> bs!1007825 m!5413251))

(assert (=> b!4589901 d!1443902))

(declare-fun b_lambda!168381 () Bool)

(assert (= b_lambda!168351 (or d!1443400 b_lambda!168381)))

(declare-fun bs!1007826 () Bool)

(declare-fun d!1443904 () Bool)

(assert (= bs!1007826 (and d!1443904 d!1443400)))

(assert (=> bs!1007826 (= (dynLambda!21350 lambda!184433 (h!56922 (t!358099 (toList!4575 lm!1477)))) (noDuplicateKeys!1280 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))))))

(assert (=> bs!1007826 m!5412483))

(assert (=> b!4589911 d!1443904))

(declare-fun b_lambda!168383 () Bool)

(assert (= b_lambda!168339 (or b!4589536 b_lambda!168383)))

(declare-fun bs!1007827 () Bool)

(declare-fun d!1443906 () Bool)

(assert (= bs!1007827 (and d!1443906 b!4589536)))

(assert (=> bs!1007827 (= (dynLambda!21356 lambda!184508 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))

(assert (=> b!4589875 d!1443906))

(declare-fun b_lambda!168385 () Bool)

(assert (= b_lambda!168343 (or d!1443410 b_lambda!168385)))

(declare-fun bs!1007828 () Bool)

(declare-fun d!1443908 () Bool)

(assert (= bs!1007828 (and d!1443908 d!1443410)))

(assert (=> bs!1007828 (= (dynLambda!21350 lambda!184436 (h!56922 (t!358099 (toList!4575 lm!1477)))) (noDuplicateKeys!1280 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))))))

(assert (=> bs!1007828 m!5412483))

(assert (=> b!4589897 d!1443908))

(declare-fun b_lambda!168387 () Bool)

(assert (= b_lambda!168291 (or b!4589563 b_lambda!168387)))

(declare-fun bs!1007829 () Bool)

(declare-fun d!1443910 () Bool)

(assert (= bs!1007829 (and d!1443910 b!4589563)))

(assert (=> bs!1007829 (= (dynLambda!21352 lambda!184539 (h!56921 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477)))))) (contains!13884 lt!1752404 (_1!29079 (h!56921 (t!358098 (_2!29080 (h!56922 (toList!4575 lm!1477))))))))))

(declare-fun m!5413253 () Bool)

(assert (=> bs!1007829 m!5413253))

(assert (=> b!4589813 d!1443910))

(declare-fun b_lambda!168389 () Bool)

(assert (= b_lambda!168341 (or b!4589504 b_lambda!168389)))

(declare-fun bs!1007830 () Bool)

(declare-fun d!1443912 () Bool)

(assert (= bs!1007830 (and d!1443912 b!4589504)))

(assert (=> bs!1007830 (= (dynLambda!21356 lambda!184497 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))) (_1!29079 (h!56921 (toList!4576 (extractMap!1340 (toList!4575 lm!1477))))))))

(assert (=> b!4589891 d!1443912))

(declare-fun b_lambda!168391 () Bool)

(assert (= b_lambda!168279 (or b!4589563 b_lambda!168391)))

(declare-fun bs!1007831 () Bool)

(declare-fun d!1443914 () Bool)

(assert (= bs!1007831 (and d!1443914 b!4589563)))

(assert (=> bs!1007831 (= (dynLambda!21352 lambda!184539 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (contains!13884 lt!1752404 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(assert (=> bs!1007831 m!5412449))

(assert (=> d!1443704 d!1443914))

(declare-fun b_lambda!168393 () Bool)

(assert (= b_lambda!168347 (or start!456868 b_lambda!168393)))

(declare-fun bs!1007832 () Bool)

(declare-fun d!1443916 () Bool)

(assert (= bs!1007832 (and d!1443916 start!456868)))

(assert (=> bs!1007832 (= (dynLambda!21350 lambda!184415 (h!56922 (t!358099 (t!358099 (toList!4575 lm!1477))))) (noDuplicateKeys!1280 (_2!29080 (h!56922 (t!358099 (t!358099 (toList!4575 lm!1477)))))))))

(declare-fun m!5413255 () Bool)

(assert (=> bs!1007832 m!5413255))

(assert (=> b!4589903 d!1443916))

(declare-fun b_lambda!168395 () Bool)

(assert (= b_lambda!168353 (or d!1443536 b_lambda!168395)))

(declare-fun bs!1007833 () Bool)

(declare-fun d!1443918 () Bool)

(assert (= bs!1007833 (and d!1443918 d!1443536)))

(assert (=> bs!1007833 (= (dynLambda!21352 lambda!184540 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477))))) (contains!13884 lt!1752396 (_1!29079 (h!56921 (_2!29080 (h!56922 (toList!4575 lm!1477)))))))))

(declare-fun m!5413257 () Bool)

(assert (=> bs!1007833 m!5413257))

(assert (=> b!4589915 d!1443918))

(declare-fun b_lambda!168397 () Bool)

(assert (= b_lambda!168287 (or b!4589563 b_lambda!168397)))

(assert (=> b!4589773 d!1443914))

(declare-fun b_lambda!168399 () Bool)

(assert (= b_lambda!168357 (or d!1443538 b_lambda!168399)))

(declare-fun bs!1007834 () Bool)

(declare-fun d!1443920 () Bool)

(assert (= bs!1007834 (and d!1443920 d!1443538)))

(assert (=> bs!1007834 (= (dynLambda!21350 lambda!184541 (h!56922 (t!358099 (toList!4575 lm!1477)))) (noDuplicateKeys!1280 (_2!29080 (h!56922 (t!358099 (toList!4575 lm!1477))))))))

(assert (=> bs!1007834 m!5412483))

(assert (=> b!4589927 d!1443920))

(check-sat (not b!4589693) (not b!4589928) (not b!4589934) (not b!4589668) (not bs!1007817) (not b_lambda!168369) (not b!4589906) (not b_lambda!168391) (not b!4589819) (not b!4589825) (not b!4589716) (not b_lambda!168387) (not b_lambda!168199) (not b!4589692) (not d!1443840) (not b_lambda!168235) (not b!4589757) (not d!1443836) (not b!4589667) (not b!4589912) (not b!4589850) (not b!4589878) (not b_lambda!168239) (not b_lambda!168365) (not b!4589818) (not b!4589889) (not b_lambda!168379) (not b!4589765) (not b!4589760) (not b!4589696) (not b_lambda!168381) (not b!4589790) (not bs!1007819) (not b!4589932) (not b!4589920) (not d!1443800) (not b!4589732) (not b_lambda!168395) (not b!4589758) (not b!4589892) (not d!1443704) (not b_lambda!168237) (not b!4589851) (not b!4589898) (not b_lambda!168231) (not d!1443868) (not b!4589925) (not b!4589875) (not b_lambda!168363) (not b!4589891) (not d!1443834) (not d!1443760) (not b!4589711) (not b_lambda!168389) (not b_lambda!168385) (not b!4589802) (not b_lambda!168393) (not bs!1007824) (not b!4589835) (not b!4589936) (not b!4589834) (not b_lambda!168377) (not bs!1007821) (not b_lambda!168233) (not bm!320502) (not bm!320514) (not d!1443826) (not b!4589837) (not b!4589937) (not b!4589884) (not bs!1007834) (not bs!1007833) (not d!1443638) (not bs!1007825) (not d!1443664) (not bs!1007826) (not bs!1007828) (not b!4589916) (not d!1443798) (not b!4589761) (not b!4589894) (not d!1443682) (not b!4589814) (not b!4589867) (not b!4589690) tp_is_empty!28415 (not b!4589705) (not b!4589857) (not bs!1007831) (not b!4589789) (not d!1443880) (not b_lambda!168355) (not d!1443660) (not b!4589848) (not b!4589786) (not bm!320503) (not d!1443816) (not b!4589817) (not b!4589914) (not d!1443730) (not b!4589816) (not d!1443642) (not b!4589910) (not d!1443688) (not b!4589788) (not d!1443878) (not b!4589909) (not b!4589935) (not bs!1007818) (not bm!320504) (not b!4589938) (not b!4589801) (not b_lambda!168397) (not b!4589887) (not d!1443864) (not b!4589698) (not b!4589902) (not b!4589832) (not b_lambda!168373) (not d!1443752) (not d!1443652) (not d!1443822) (not bm!320505) (not bm!320508) (not b!4589926) (not b!4589820) (not d!1443744) (not d!1443714) (not d!1443818) (not bs!1007832) (not b!4589697) (not b!4589861) (not d!1443750) (not d!1443724) (not b!4589930) (not d!1443824) tp_is_empty!28413 (not d!1443872) (not b!4589908) (not bs!1007820) (not d!1443792) (not b!4589756) (not b!4589900) (not b!4589715) (not b!4589712) (not bs!1007823) (not b_lambda!168399) (not b!4589774) (not bm!320507) (not bs!1007829) (not b!4589762) (not b!4589859) (not b!4589896) (not bm!320509) (not d!1443734) (not bs!1007822) (not b!4589881) (not b!4589822) (not b_lambda!168375) (not b!4589918) (not b!4589748) (not b!4589821) (not b_lambda!168371) (not b!4589759) (not b_lambda!168383) (not b!4589714) (not b_lambda!168367) (not b!4589869) (not b!4589770) (not b!4589904) (not b_lambda!168335))
(check-sat)
