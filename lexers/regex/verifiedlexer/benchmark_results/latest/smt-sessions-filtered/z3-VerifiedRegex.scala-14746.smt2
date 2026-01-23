; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758912 () Bool)

(assert start!758912)

(declare-fun b!8056148 () Bool)

(declare-fun e!4747402 () Bool)

(declare-fun e!4747399 () Bool)

(assert (=> b!8056148 (= e!4747402 (not e!4747399))))

(declare-fun res!3186543 () Bool)

(assert (=> b!8056148 (=> res!3186543 e!4747399)))

(declare-datatypes ((K!22863 0))(
  ( (K!22864 (val!32963 Int)) )
))
(declare-datatypes ((V!23117 0))(
  ( (V!23118 (val!32964 Int)) )
))
(declare-datatypes ((tuple2!70928 0))(
  ( (tuple2!70929 (_1!38767 K!22863) (_2!38767 V!23117)) )
))
(declare-datatypes ((List!75708 0))(
  ( (Nil!75582) (Cons!75582 (h!82030 tuple2!70928) (t!391480 List!75708)) )
))
(declare-fun l!14636 () List!75708)

(declare-fun noDuplicateKeys!2726 (List!75708) Bool)

(assert (=> b!8056148 (= res!3186543 (not (noDuplicateKeys!2726 (t!391480 l!14636))))))

(declare-datatypes ((ListMap!7331 0))(
  ( (ListMap!7332 (toList!11940 List!75708)) )
))
(declare-fun lt!2730047 () ListMap!7331)

(declare-fun key!6222 () K!22863)

(declare-fun contains!21265 (ListMap!7331 K!22863) Bool)

(assert (=> b!8056148 (not (contains!21265 lt!2730047 key!6222))))

(declare-fun acc!1298 () ListMap!7331)

(declare-datatypes ((Unit!172430 0))(
  ( (Unit!172431) )
))
(declare-fun lt!2730049 () Unit!172430)

(declare-fun addStillNotContains!19 (ListMap!7331 K!22863 V!23117 K!22863) Unit!172430)

(assert (=> b!8056148 (= lt!2730049 (addStillNotContains!19 acc!1298 (_1!38767 (h!82030 l!14636)) (_2!38767 (h!82030 l!14636)) key!6222))))

(declare-fun b!8056149 () Bool)

(declare-fun ListPrimitiveSize!554 (List!75708) Int)

(assert (=> b!8056149 (= e!4747399 (< (ListPrimitiveSize!554 (t!391480 l!14636)) (ListPrimitiveSize!554 l!14636)))))

(declare-fun b!8056150 () Bool)

(declare-fun e!4747396 () Bool)

(declare-fun lt!2730048 () Bool)

(assert (=> b!8056150 (= e!4747396 (not lt!2730048))))

(declare-fun b!8056151 () Bool)

(declare-fun e!4747401 () Bool)

(declare-fun e!4747400 () Bool)

(assert (=> b!8056151 (= e!4747401 e!4747400)))

(declare-fun res!3186546 () Bool)

(assert (=> b!8056151 (=> (not res!3186546) (not e!4747400))))

(declare-fun e!4747404 () Bool)

(assert (=> b!8056151 (= res!3186546 e!4747404)))

(declare-fun res!3186548 () Bool)

(assert (=> b!8056151 (=> res!3186548 e!4747404)))

(declare-fun e!4747403 () Bool)

(assert (=> b!8056151 (= res!3186548 e!4747403)))

(declare-fun res!3186545 () Bool)

(assert (=> b!8056151 (=> (not res!3186545) (not e!4747403))))

(assert (=> b!8056151 (= res!3186545 lt!2730048)))

(assert (=> b!8056151 (= lt!2730048 (contains!21265 acc!1298 key!6222))))

(declare-fun b!8056152 () Bool)

(declare-fun res!3186540 () Bool)

(assert (=> b!8056152 (=> (not res!3186540) (not e!4747396))))

(declare-fun value!3131 () V!23117)

(declare-fun contains!21266 (List!75708 tuple2!70928) Bool)

(assert (=> b!8056152 (= res!3186540 (contains!21266 l!14636 (tuple2!70929 key!6222 value!3131)))))

(declare-fun e!4747397 () Bool)

(declare-fun tp!2413928 () Bool)

(declare-fun b!8056153 () Bool)

(declare-fun tp_is_empty!54979 () Bool)

(declare-fun tp_is_empty!54981 () Bool)

(assert (=> b!8056153 (= e!4747397 (and tp_is_empty!54979 tp_is_empty!54981 tp!2413928))))

(declare-fun b!8056154 () Bool)

(declare-fun res!3186536 () Bool)

(assert (=> b!8056154 (=> res!3186536 e!4747399)))

(declare-fun lt!2730050 () ListMap!7331)

(assert (=> b!8056154 (= res!3186536 (not (contains!21265 lt!2730050 key!6222)))))

(declare-fun b!8056155 () Bool)

(declare-fun res!3186542 () Bool)

(assert (=> b!8056155 (=> (not res!3186542) (not e!4747401))))

(declare-fun addToMapMapFromBucket!2007 (List!75708 ListMap!7331) ListMap!7331)

(assert (=> b!8056155 (= res!3186542 (contains!21265 (addToMapMapFromBucket!2007 l!14636 acc!1298) key!6222))))

(declare-fun b!8056156 () Bool)

(assert (=> b!8056156 (= e!4747400 e!4747402)))

(declare-fun res!3186544 () Bool)

(assert (=> b!8056156 (=> (not res!3186544) (not e!4747402))))

(assert (=> b!8056156 (= res!3186544 (and (not (= (_1!38767 (h!82030 l!14636)) key!6222)) (not lt!2730048)))))

(assert (=> b!8056156 (= lt!2730050 (addToMapMapFromBucket!2007 (t!391480 l!14636) lt!2730047))))

(declare-fun +!2691 (ListMap!7331 tuple2!70928) ListMap!7331)

(assert (=> b!8056156 (= lt!2730047 (+!2691 acc!1298 (h!82030 l!14636)))))

(declare-fun b!8056157 () Bool)

(declare-fun res!3186547 () Bool)

(assert (=> b!8056157 (=> res!3186547 e!4747399)))

(declare-fun containsKey!4889 (List!75708 K!22863) Bool)

(assert (=> b!8056157 (= res!3186547 (not (containsKey!4889 (t!391480 l!14636) key!6222)))))

(declare-fun b!8056158 () Bool)

(declare-fun res!3186541 () Bool)

(assert (=> b!8056158 (=> (not res!3186541) (not e!4747402))))

(assert (=> b!8056158 (= res!3186541 (contains!21266 (t!391480 l!14636) (tuple2!70929 key!6222 value!3131)))))

(declare-fun b!8056159 () Bool)

(declare-fun res!3186539 () Bool)

(assert (=> b!8056159 (=> (not res!3186539) (not e!4747403))))

(declare-fun apply!14453 (ListMap!7331 K!22863) V!23117)

(assert (=> b!8056159 (= res!3186539 (= (apply!14453 acc!1298 key!6222) value!3131))))

(declare-fun res!3186537 () Bool)

(assert (=> start!758912 (=> (not res!3186537) (not e!4747401))))

(assert (=> start!758912 (= res!3186537 (noDuplicateKeys!2726 l!14636))))

(assert (=> start!758912 e!4747401))

(assert (=> start!758912 e!4747397))

(declare-fun e!4747398 () Bool)

(declare-fun inv!97352 (ListMap!7331) Bool)

(assert (=> start!758912 (and (inv!97352 acc!1298) e!4747398)))

(assert (=> start!758912 tp_is_empty!54979))

(assert (=> start!758912 tp_is_empty!54981))

(declare-fun b!8056160 () Bool)

(declare-fun res!3186549 () Bool)

(assert (=> b!8056160 (=> (not res!3186549) (not e!4747400))))

(get-info :version)

(assert (=> b!8056160 (= res!3186549 (not ((_ is Nil!75582) l!14636)))))

(declare-fun b!8056161 () Bool)

(assert (=> b!8056161 (= e!4747403 (not (containsKey!4889 l!14636 key!6222)))))

(declare-fun b!8056162 () Bool)

(assert (=> b!8056162 (= e!4747404 e!4747396)))

(declare-fun res!3186538 () Bool)

(assert (=> b!8056162 (=> (not res!3186538) (not e!4747396))))

(assert (=> b!8056162 (= res!3186538 (containsKey!4889 l!14636 key!6222))))

(declare-fun b!8056163 () Bool)

(declare-fun tp!2413929 () Bool)

(assert (=> b!8056163 (= e!4747398 tp!2413929)))

(assert (= (and start!758912 res!3186537) b!8056155))

(assert (= (and b!8056155 res!3186542) b!8056151))

(assert (= (and b!8056151 res!3186545) b!8056159))

(assert (= (and b!8056159 res!3186539) b!8056161))

(assert (= (and b!8056151 (not res!3186548)) b!8056162))

(assert (= (and b!8056162 res!3186538) b!8056152))

(assert (= (and b!8056152 res!3186540) b!8056150))

(assert (= (and b!8056151 res!3186546) b!8056160))

(assert (= (and b!8056160 res!3186549) b!8056156))

(assert (= (and b!8056156 res!3186544) b!8056158))

(assert (= (and b!8056158 res!3186541) b!8056148))

(assert (= (and b!8056148 (not res!3186543)) b!8056154))

(assert (= (and b!8056154 (not res!3186536)) b!8056157))

(assert (= (and b!8056157 (not res!3186547)) b!8056149))

(assert (= (and start!758912 ((_ is Cons!75582) l!14636)) b!8056153))

(assert (= start!758912 b!8056163))

(declare-fun m!8409214 () Bool)

(assert (=> b!8056151 m!8409214))

(declare-fun m!8409216 () Bool)

(assert (=> b!8056161 m!8409216))

(declare-fun m!8409218 () Bool)

(assert (=> b!8056159 m!8409218))

(declare-fun m!8409220 () Bool)

(assert (=> b!8056148 m!8409220))

(declare-fun m!8409222 () Bool)

(assert (=> b!8056148 m!8409222))

(declare-fun m!8409224 () Bool)

(assert (=> b!8056148 m!8409224))

(declare-fun m!8409226 () Bool)

(assert (=> b!8056149 m!8409226))

(declare-fun m!8409228 () Bool)

(assert (=> b!8056149 m!8409228))

(declare-fun m!8409230 () Bool)

(assert (=> b!8056155 m!8409230))

(assert (=> b!8056155 m!8409230))

(declare-fun m!8409232 () Bool)

(assert (=> b!8056155 m!8409232))

(declare-fun m!8409234 () Bool)

(assert (=> b!8056158 m!8409234))

(declare-fun m!8409236 () Bool)

(assert (=> b!8056154 m!8409236))

(declare-fun m!8409238 () Bool)

(assert (=> b!8056157 m!8409238))

(declare-fun m!8409240 () Bool)

(assert (=> b!8056156 m!8409240))

(declare-fun m!8409242 () Bool)

(assert (=> b!8056156 m!8409242))

(declare-fun m!8409244 () Bool)

(assert (=> b!8056152 m!8409244))

(declare-fun m!8409246 () Bool)

(assert (=> start!758912 m!8409246))

(declare-fun m!8409248 () Bool)

(assert (=> start!758912 m!8409248))

(assert (=> b!8056162 m!8409216))

(check-sat (not b!8056154) (not b!8056153) (not b!8056162) (not b!8056149) (not b!8056161) (not b!8056155) (not b!8056163) (not b!8056156) (not b!8056157) (not start!758912) tp_is_empty!54981 (not b!8056159) (not b!8056152) (not b!8056151) (not b!8056158) (not b!8056148) tp_is_empty!54979)
(check-sat)
(get-model)

(declare-fun d!2398579 () Bool)

(declare-fun res!3186564 () Bool)

(declare-fun e!4747419 () Bool)

(assert (=> d!2398579 (=> res!3186564 e!4747419)))

(assert (=> d!2398579 (= res!3186564 (not ((_ is Cons!75582) (t!391480 l!14636))))))

(assert (=> d!2398579 (= (noDuplicateKeys!2726 (t!391480 l!14636)) e!4747419)))

(declare-fun b!8056178 () Bool)

(declare-fun e!4747420 () Bool)

(assert (=> b!8056178 (= e!4747419 e!4747420)))

(declare-fun res!3186565 () Bool)

(assert (=> b!8056178 (=> (not res!3186565) (not e!4747420))))

(assert (=> b!8056178 (= res!3186565 (not (containsKey!4889 (t!391480 (t!391480 l!14636)) (_1!38767 (h!82030 (t!391480 l!14636))))))))

(declare-fun b!8056179 () Bool)

(assert (=> b!8056179 (= e!4747420 (noDuplicateKeys!2726 (t!391480 (t!391480 l!14636))))))

(assert (= (and d!2398579 (not res!3186564)) b!8056178))

(assert (= (and b!8056178 res!3186565) b!8056179))

(declare-fun m!8409258 () Bool)

(assert (=> b!8056178 m!8409258))

(declare-fun m!8409260 () Bool)

(assert (=> b!8056179 m!8409260))

(assert (=> b!8056148 d!2398579))

(declare-fun b!8056227 () Bool)

(declare-fun e!4747453 () Bool)

(declare-fun e!4747457 () Bool)

(assert (=> b!8056227 (= e!4747453 e!4747457)))

(declare-fun res!3186583 () Bool)

(assert (=> b!8056227 (=> (not res!3186583) (not e!4747457))))

(declare-datatypes ((Option!18016 0))(
  ( (None!18015) (Some!18015 (v!55362 V!23117)) )
))
(declare-fun isDefined!14549 (Option!18016) Bool)

(declare-fun getValueByKey!2800 (List!75708 K!22863) Option!18016)

(assert (=> b!8056227 (= res!3186583 (isDefined!14549 (getValueByKey!2800 (toList!11940 lt!2730047) key!6222)))))

(declare-fun b!8056228 () Bool)

(assert (=> b!8056228 false))

(declare-fun lt!2730094 () Unit!172430)

(declare-fun lt!2730093 () Unit!172430)

(assert (=> b!8056228 (= lt!2730094 lt!2730093)))

(declare-fun containsKey!4891 (List!75708 K!22863) Bool)

(assert (=> b!8056228 (containsKey!4891 (toList!11940 lt!2730047) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1259 (List!75708 K!22863) Unit!172430)

(assert (=> b!8056228 (= lt!2730093 (lemmaInGetKeysListThenContainsKey!1259 (toList!11940 lt!2730047) key!6222))))

(declare-fun e!4747455 () Unit!172430)

(declare-fun Unit!172445 () Unit!172430)

(assert (=> b!8056228 (= e!4747455 Unit!172445)))

(declare-fun d!2398585 () Bool)

(assert (=> d!2398585 e!4747453))

(declare-fun res!3186585 () Bool)

(assert (=> d!2398585 (=> res!3186585 e!4747453)))

(declare-fun e!4747454 () Bool)

(assert (=> d!2398585 (= res!3186585 e!4747454)))

(declare-fun res!3186584 () Bool)

(assert (=> d!2398585 (=> (not res!3186584) (not e!4747454))))

(declare-fun lt!2730091 () Bool)

(assert (=> d!2398585 (= res!3186584 (not lt!2730091))))

(declare-fun lt!2730095 () Bool)

(assert (=> d!2398585 (= lt!2730091 lt!2730095)))

(declare-fun lt!2730097 () Unit!172430)

(declare-fun e!4747456 () Unit!172430)

(assert (=> d!2398585 (= lt!2730097 e!4747456)))

(declare-fun c!1476575 () Bool)

(assert (=> d!2398585 (= c!1476575 lt!2730095)))

(assert (=> d!2398585 (= lt!2730095 (containsKey!4891 (toList!11940 lt!2730047) key!6222))))

(assert (=> d!2398585 (= (contains!21265 lt!2730047 key!6222) lt!2730091)))

(declare-fun b!8056229 () Bool)

(declare-fun lt!2730096 () Unit!172430)

(assert (=> b!8056229 (= e!4747456 lt!2730096)))

(declare-fun lt!2730098 () Unit!172430)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2571 (List!75708 K!22863) Unit!172430)

(assert (=> b!8056229 (= lt!2730098 (lemmaContainsKeyImpliesGetValueByKeyDefined!2571 (toList!11940 lt!2730047) key!6222))))

(assert (=> b!8056229 (isDefined!14549 (getValueByKey!2800 (toList!11940 lt!2730047) key!6222))))

(declare-fun lt!2730092 () Unit!172430)

(assert (=> b!8056229 (= lt!2730092 lt!2730098)))

(declare-fun lemmaInListThenGetKeysListContains!1254 (List!75708 K!22863) Unit!172430)

(assert (=> b!8056229 (= lt!2730096 (lemmaInListThenGetKeysListContains!1254 (toList!11940 lt!2730047) key!6222))))

(declare-fun call!747469 () Bool)

(assert (=> b!8056229 call!747469))

(declare-fun b!8056230 () Bool)

(declare-datatypes ((List!75710 0))(
  ( (Nil!75584) (Cons!75584 (h!82032 K!22863) (t!391482 List!75710)) )
))
(declare-fun contains!21268 (List!75710 K!22863) Bool)

(declare-fun keys!30874 (ListMap!7331) List!75710)

(assert (=> b!8056230 (= e!4747454 (not (contains!21268 (keys!30874 lt!2730047) key!6222)))))

(declare-fun b!8056231 () Bool)

(assert (=> b!8056231 (= e!4747457 (contains!21268 (keys!30874 lt!2730047) key!6222))))

(declare-fun bm!747464 () Bool)

(declare-fun e!4747458 () List!75710)

(assert (=> bm!747464 (= call!747469 (contains!21268 e!4747458 key!6222))))

(declare-fun c!1476576 () Bool)

(assert (=> bm!747464 (= c!1476576 c!1476575)))

(declare-fun b!8056232 () Bool)

(assert (=> b!8056232 (= e!4747458 (keys!30874 lt!2730047))))

(declare-fun b!8056233 () Bool)

(assert (=> b!8056233 (= e!4747456 e!4747455)))

(declare-fun c!1476577 () Bool)

(assert (=> b!8056233 (= c!1476577 call!747469)))

(declare-fun b!8056234 () Bool)

(declare-fun getKeysList!1259 (List!75708) List!75710)

(assert (=> b!8056234 (= e!4747458 (getKeysList!1259 (toList!11940 lt!2730047)))))

(declare-fun b!8056235 () Bool)

(declare-fun Unit!172446 () Unit!172430)

(assert (=> b!8056235 (= e!4747455 Unit!172446)))

(assert (= (and d!2398585 c!1476575) b!8056229))

(assert (= (and d!2398585 (not c!1476575)) b!8056233))

(assert (= (and b!8056233 c!1476577) b!8056228))

(assert (= (and b!8056233 (not c!1476577)) b!8056235))

(assert (= (or b!8056229 b!8056233) bm!747464))

(assert (= (and bm!747464 c!1476576) b!8056234))

(assert (= (and bm!747464 (not c!1476576)) b!8056232))

(assert (= (and d!2398585 res!3186584) b!8056230))

(assert (= (and d!2398585 (not res!3186585)) b!8056227))

(assert (= (and b!8056227 res!3186583) b!8056231))

(declare-fun m!8409284 () Bool)

(assert (=> d!2398585 m!8409284))

(declare-fun m!8409286 () Bool)

(assert (=> b!8056232 m!8409286))

(declare-fun m!8409288 () Bool)

(assert (=> bm!747464 m!8409288))

(assert (=> b!8056228 m!8409284))

(declare-fun m!8409290 () Bool)

(assert (=> b!8056228 m!8409290))

(assert (=> b!8056230 m!8409286))

(assert (=> b!8056230 m!8409286))

(declare-fun m!8409292 () Bool)

(assert (=> b!8056230 m!8409292))

(assert (=> b!8056231 m!8409286))

(assert (=> b!8056231 m!8409286))

(assert (=> b!8056231 m!8409292))

(declare-fun m!8409294 () Bool)

(assert (=> b!8056229 m!8409294))

(declare-fun m!8409296 () Bool)

(assert (=> b!8056229 m!8409296))

(assert (=> b!8056229 m!8409296))

(declare-fun m!8409298 () Bool)

(assert (=> b!8056229 m!8409298))

(declare-fun m!8409300 () Bool)

(assert (=> b!8056229 m!8409300))

(assert (=> b!8056227 m!8409296))

(assert (=> b!8056227 m!8409296))

(assert (=> b!8056227 m!8409298))

(declare-fun m!8409302 () Bool)

(assert (=> b!8056234 m!8409302))

(assert (=> b!8056148 d!2398585))

(declare-fun d!2398591 () Bool)

(assert (=> d!2398591 (not (contains!21265 (+!2691 acc!1298 (tuple2!70929 (_1!38767 (h!82030 l!14636)) (_2!38767 (h!82030 l!14636)))) key!6222))))

(declare-fun lt!2730101 () Unit!172430)

(declare-fun choose!60556 (ListMap!7331 K!22863 V!23117 K!22863) Unit!172430)

(assert (=> d!2398591 (= lt!2730101 (choose!60556 acc!1298 (_1!38767 (h!82030 l!14636)) (_2!38767 (h!82030 l!14636)) key!6222))))

(declare-fun e!4747461 () Bool)

(assert (=> d!2398591 e!4747461))

(declare-fun res!3186588 () Bool)

(assert (=> d!2398591 (=> (not res!3186588) (not e!4747461))))

(assert (=> d!2398591 (= res!3186588 (not (contains!21265 acc!1298 key!6222)))))

(assert (=> d!2398591 (= (addStillNotContains!19 acc!1298 (_1!38767 (h!82030 l!14636)) (_2!38767 (h!82030 l!14636)) key!6222) lt!2730101)))

(declare-fun b!8056239 () Bool)

(assert (=> b!8056239 (= e!4747461 (not (= (_1!38767 (h!82030 l!14636)) key!6222)))))

(assert (= (and d!2398591 res!3186588) b!8056239))

(declare-fun m!8409304 () Bool)

(assert (=> d!2398591 m!8409304))

(assert (=> d!2398591 m!8409304))

(declare-fun m!8409306 () Bool)

(assert (=> d!2398591 m!8409306))

(declare-fun m!8409308 () Bool)

(assert (=> d!2398591 m!8409308))

(assert (=> d!2398591 m!8409214))

(assert (=> b!8056148 d!2398591))

(declare-fun d!2398593 () Bool)

(declare-fun get!27243 (Option!18016) V!23117)

(assert (=> d!2398593 (= (apply!14453 acc!1298 key!6222) (get!27243 (getValueByKey!2800 (toList!11940 acc!1298) key!6222)))))

(declare-fun bs!1973105 () Bool)

(assert (= bs!1973105 d!2398593))

(declare-fun m!8409310 () Bool)

(assert (=> bs!1973105 m!8409310))

(assert (=> bs!1973105 m!8409310))

(declare-fun m!8409312 () Bool)

(assert (=> bs!1973105 m!8409312))

(assert (=> b!8056159 d!2398593))

(declare-fun d!2398595 () Bool)

(declare-fun lt!2730104 () Int)

(assert (=> d!2398595 (>= lt!2730104 0)))

(declare-fun e!4747464 () Int)

(assert (=> d!2398595 (= lt!2730104 e!4747464)))

(declare-fun c!1476580 () Bool)

(assert (=> d!2398595 (= c!1476580 ((_ is Nil!75582) (t!391480 l!14636)))))

(assert (=> d!2398595 (= (ListPrimitiveSize!554 (t!391480 l!14636)) lt!2730104)))

(declare-fun b!8056244 () Bool)

(assert (=> b!8056244 (= e!4747464 0)))

(declare-fun b!8056245 () Bool)

(assert (=> b!8056245 (= e!4747464 (+ 1 (ListPrimitiveSize!554 (t!391480 (t!391480 l!14636)))))))

(assert (= (and d!2398595 c!1476580) b!8056244))

(assert (= (and d!2398595 (not c!1476580)) b!8056245))

(declare-fun m!8409314 () Bool)

(assert (=> b!8056245 m!8409314))

(assert (=> b!8056149 d!2398595))

(declare-fun d!2398597 () Bool)

(declare-fun lt!2730105 () Int)

(assert (=> d!2398597 (>= lt!2730105 0)))

(declare-fun e!4747465 () Int)

(assert (=> d!2398597 (= lt!2730105 e!4747465)))

(declare-fun c!1476581 () Bool)

(assert (=> d!2398597 (= c!1476581 ((_ is Nil!75582) l!14636))))

(assert (=> d!2398597 (= (ListPrimitiveSize!554 l!14636) lt!2730105)))

(declare-fun b!8056246 () Bool)

(assert (=> b!8056246 (= e!4747465 0)))

(declare-fun b!8056247 () Bool)

(assert (=> b!8056247 (= e!4747465 (+ 1 (ListPrimitiveSize!554 (t!391480 l!14636))))))

(assert (= (and d!2398597 c!1476581) b!8056246))

(assert (= (and d!2398597 (not c!1476581)) b!8056247))

(assert (=> b!8056247 m!8409226))

(assert (=> b!8056149 d!2398597))

(declare-fun b!8056344 () Bool)

(assert (=> b!8056344 true))

(declare-fun bs!1973121 () Bool)

(declare-fun b!8056343 () Bool)

(assert (= bs!1973121 (and b!8056343 b!8056344)))

(declare-fun lambda!474337 () Int)

(declare-fun lambda!474336 () Int)

(assert (=> bs!1973121 (= lambda!474337 lambda!474336)))

(assert (=> b!8056343 true))

(declare-fun lambda!474338 () Int)

(declare-fun lt!2730287 () ListMap!7331)

(assert (=> bs!1973121 (= (= lt!2730287 lt!2730047) (= lambda!474338 lambda!474336))))

(assert (=> b!8056343 (= (= lt!2730287 lt!2730047) (= lambda!474338 lambda!474337))))

(assert (=> b!8056343 true))

(declare-fun bs!1973122 () Bool)

(declare-fun d!2398599 () Bool)

(assert (= bs!1973122 (and d!2398599 b!8056344)))

(declare-fun lt!2730281 () ListMap!7331)

(declare-fun lambda!474339 () Int)

(assert (=> bs!1973122 (= (= lt!2730281 lt!2730047) (= lambda!474339 lambda!474336))))

(declare-fun bs!1973123 () Bool)

(assert (= bs!1973123 (and d!2398599 b!8056343)))

(assert (=> bs!1973123 (= (= lt!2730281 lt!2730047) (= lambda!474339 lambda!474337))))

(assert (=> bs!1973123 (= (= lt!2730281 lt!2730287) (= lambda!474339 lambda!474338))))

(assert (=> d!2398599 true))

(declare-fun e!4747528 () Bool)

(assert (=> d!2398599 e!4747528))

(declare-fun res!3186637 () Bool)

(assert (=> d!2398599 (=> (not res!3186637) (not e!4747528))))

(declare-fun forall!18522 (List!75708 Int) Bool)

(assert (=> d!2398599 (= res!3186637 (forall!18522 (t!391480 l!14636) lambda!474339))))

(declare-fun e!4747529 () ListMap!7331)

(assert (=> d!2398599 (= lt!2730281 e!4747529)))

(declare-fun c!1476601 () Bool)

(assert (=> d!2398599 (= c!1476601 ((_ is Nil!75582) (t!391480 l!14636)))))

(assert (=> d!2398599 (noDuplicateKeys!2726 (t!391480 l!14636))))

(assert (=> d!2398599 (= (addToMapMapFromBucket!2007 (t!391480 l!14636) lt!2730047) lt!2730281)))

(assert (=> b!8056343 (= e!4747529 lt!2730287)))

(declare-fun lt!2730290 () ListMap!7331)

(assert (=> b!8056343 (= lt!2730290 (+!2691 lt!2730047 (h!82030 (t!391480 l!14636))))))

(assert (=> b!8056343 (= lt!2730287 (addToMapMapFromBucket!2007 (t!391480 (t!391480 l!14636)) (+!2691 lt!2730047 (h!82030 (t!391480 l!14636)))))))

(declare-fun lt!2730293 () Unit!172430)

(declare-fun call!747491 () Unit!172430)

(assert (=> b!8056343 (= lt!2730293 call!747491)))

(assert (=> b!8056343 (forall!18522 (toList!11940 lt!2730047) lambda!474337)))

(declare-fun lt!2730288 () Unit!172430)

(assert (=> b!8056343 (= lt!2730288 lt!2730293)))

(assert (=> b!8056343 (forall!18522 (toList!11940 lt!2730290) lambda!474338)))

(declare-fun lt!2730298 () Unit!172430)

(declare-fun Unit!172449 () Unit!172430)

(assert (=> b!8056343 (= lt!2730298 Unit!172449)))

(assert (=> b!8056343 (forall!18522 (t!391480 (t!391480 l!14636)) lambda!474338)))

(declare-fun lt!2730282 () Unit!172430)

(declare-fun Unit!172450 () Unit!172430)

(assert (=> b!8056343 (= lt!2730282 Unit!172450)))

(declare-fun lt!2730279 () Unit!172430)

(declare-fun Unit!172451 () Unit!172430)

(assert (=> b!8056343 (= lt!2730279 Unit!172451)))

(declare-fun lt!2730292 () Unit!172430)

(declare-fun forallContained!4676 (List!75708 Int tuple2!70928) Unit!172430)

(assert (=> b!8056343 (= lt!2730292 (forallContained!4676 (toList!11940 lt!2730290) lambda!474338 (h!82030 (t!391480 l!14636))))))

(assert (=> b!8056343 (contains!21265 lt!2730290 (_1!38767 (h!82030 (t!391480 l!14636))))))

(declare-fun lt!2730289 () Unit!172430)

(declare-fun Unit!172452 () Unit!172430)

(assert (=> b!8056343 (= lt!2730289 Unit!172452)))

(assert (=> b!8056343 (contains!21265 lt!2730287 (_1!38767 (h!82030 (t!391480 l!14636))))))

(declare-fun lt!2730286 () Unit!172430)

(declare-fun Unit!172453 () Unit!172430)

(assert (=> b!8056343 (= lt!2730286 Unit!172453)))

(assert (=> b!8056343 (forall!18522 (t!391480 l!14636) lambda!474338)))

(declare-fun lt!2730284 () Unit!172430)

(declare-fun Unit!172454 () Unit!172430)

(assert (=> b!8056343 (= lt!2730284 Unit!172454)))

(declare-fun call!747492 () Bool)

(assert (=> b!8056343 call!747492))

(declare-fun lt!2730285 () Unit!172430)

(declare-fun Unit!172455 () Unit!172430)

(assert (=> b!8056343 (= lt!2730285 Unit!172455)))

(declare-fun lt!2730297 () Unit!172430)

(declare-fun Unit!172456 () Unit!172430)

(assert (=> b!8056343 (= lt!2730297 Unit!172456)))

(declare-fun lt!2730283 () Unit!172430)

(declare-fun addForallContainsKeyThenBeforeAdding!1101 (ListMap!7331 ListMap!7331 K!22863 V!23117) Unit!172430)

(assert (=> b!8056343 (= lt!2730283 (addForallContainsKeyThenBeforeAdding!1101 lt!2730047 lt!2730287 (_1!38767 (h!82030 (t!391480 l!14636))) (_2!38767 (h!82030 (t!391480 l!14636)))))))

(assert (=> b!8056343 (forall!18522 (toList!11940 lt!2730047) lambda!474338)))

(declare-fun lt!2730295 () Unit!172430)

(assert (=> b!8056343 (= lt!2730295 lt!2730283)))

(assert (=> b!8056343 (forall!18522 (toList!11940 lt!2730047) lambda!474338)))

(declare-fun lt!2730280 () Unit!172430)

(declare-fun Unit!172457 () Unit!172430)

(assert (=> b!8056343 (= lt!2730280 Unit!172457)))

(declare-fun res!3186639 () Bool)

(declare-fun call!747493 () Bool)

(assert (=> b!8056343 (= res!3186639 call!747493)))

(declare-fun e!4747530 () Bool)

(assert (=> b!8056343 (=> (not res!3186639) (not e!4747530))))

(assert (=> b!8056343 e!4747530))

(declare-fun lt!2730299 () Unit!172430)

(declare-fun Unit!172458 () Unit!172430)

(assert (=> b!8056343 (= lt!2730299 Unit!172458)))

(declare-fun bm!747486 () Bool)

(assert (=> bm!747486 (= call!747492 (forall!18522 (ite c!1476601 (toList!11940 lt!2730047) (toList!11940 lt!2730290)) (ite c!1476601 lambda!474336 lambda!474338)))))

(declare-fun bm!747487 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1103 (ListMap!7331) Unit!172430)

(assert (=> bm!747487 (= call!747491 (lemmaContainsAllItsOwnKeys!1103 lt!2730047))))

(assert (=> b!8056344 (= e!4747529 lt!2730047)))

(declare-fun lt!2730296 () Unit!172430)

(assert (=> b!8056344 (= lt!2730296 call!747491)))

(assert (=> b!8056344 call!747492))

(declare-fun lt!2730291 () Unit!172430)

(assert (=> b!8056344 (= lt!2730291 lt!2730296)))

(assert (=> b!8056344 call!747493))

(declare-fun lt!2730294 () Unit!172430)

(declare-fun Unit!172459 () Unit!172430)

(assert (=> b!8056344 (= lt!2730294 Unit!172459)))

(declare-fun b!8056345 () Bool)

(declare-fun invariantList!1951 (List!75708) Bool)

(assert (=> b!8056345 (= e!4747528 (invariantList!1951 (toList!11940 lt!2730281)))))

(declare-fun bm!747488 () Bool)

(assert (=> bm!747488 (= call!747493 (forall!18522 (ite c!1476601 (toList!11940 lt!2730047) (t!391480 l!14636)) (ite c!1476601 lambda!474336 lambda!474338)))))

(declare-fun b!8056346 () Bool)

(assert (=> b!8056346 (= e!4747530 (forall!18522 (toList!11940 lt!2730047) lambda!474338))))

(declare-fun b!8056347 () Bool)

(declare-fun res!3186638 () Bool)

(assert (=> b!8056347 (=> (not res!3186638) (not e!4747528))))

(assert (=> b!8056347 (= res!3186638 (forall!18522 (toList!11940 lt!2730047) lambda!474339))))

(assert (= (and d!2398599 c!1476601) b!8056344))

(assert (= (and d!2398599 (not c!1476601)) b!8056343))

(assert (= (and b!8056343 res!3186639) b!8056346))

(assert (= (or b!8056344 b!8056343) bm!747488))

(assert (= (or b!8056344 b!8056343) bm!747486))

(assert (= (or b!8056344 b!8056343) bm!747487))

(assert (= (and d!2398599 res!3186637) b!8056347))

(assert (= (and b!8056347 res!3186638) b!8056345))

(declare-fun m!8409474 () Bool)

(assert (=> bm!747487 m!8409474))

(declare-fun m!8409476 () Bool)

(assert (=> b!8056345 m!8409476))

(declare-fun m!8409478 () Bool)

(assert (=> b!8056346 m!8409478))

(declare-fun m!8409480 () Bool)

(assert (=> d!2398599 m!8409480))

(assert (=> d!2398599 m!8409220))

(declare-fun m!8409482 () Bool)

(assert (=> bm!747488 m!8409482))

(declare-fun m!8409484 () Bool)

(assert (=> b!8056347 m!8409484))

(declare-fun m!8409486 () Bool)

(assert (=> bm!747486 m!8409486))

(declare-fun m!8409488 () Bool)

(assert (=> b!8056343 m!8409488))

(declare-fun m!8409490 () Bool)

(assert (=> b!8056343 m!8409490))

(declare-fun m!8409492 () Bool)

(assert (=> b!8056343 m!8409492))

(declare-fun m!8409494 () Bool)

(assert (=> b!8056343 m!8409494))

(declare-fun m!8409496 () Bool)

(assert (=> b!8056343 m!8409496))

(declare-fun m!8409498 () Bool)

(assert (=> b!8056343 m!8409498))

(declare-fun m!8409500 () Bool)

(assert (=> b!8056343 m!8409500))

(assert (=> b!8056343 m!8409490))

(declare-fun m!8409502 () Bool)

(assert (=> b!8056343 m!8409502))

(declare-fun m!8409504 () Bool)

(assert (=> b!8056343 m!8409504))

(assert (=> b!8056343 m!8409478))

(declare-fun m!8409506 () Bool)

(assert (=> b!8056343 m!8409506))

(assert (=> b!8056343 m!8409478))

(assert (=> b!8056156 d!2398599))

(declare-fun d!2398625 () Bool)

(declare-fun e!4747533 () Bool)

(assert (=> d!2398625 e!4747533))

(declare-fun res!3186645 () Bool)

(assert (=> d!2398625 (=> (not res!3186645) (not e!4747533))))

(declare-fun lt!2730308 () ListMap!7331)

(assert (=> d!2398625 (= res!3186645 (contains!21265 lt!2730308 (_1!38767 (h!82030 l!14636))))))

(declare-fun lt!2730310 () List!75708)

(assert (=> d!2398625 (= lt!2730308 (ListMap!7332 lt!2730310))))

(declare-fun lt!2730311 () Unit!172430)

(declare-fun lt!2730309 () Unit!172430)

(assert (=> d!2398625 (= lt!2730311 lt!2730309)))

(assert (=> d!2398625 (= (getValueByKey!2800 lt!2730310 (_1!38767 (h!82030 l!14636))) (Some!18015 (_2!38767 (h!82030 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1292 (List!75708 K!22863 V!23117) Unit!172430)

(assert (=> d!2398625 (= lt!2730309 (lemmaContainsTupThenGetReturnValue!1292 lt!2730310 (_1!38767 (h!82030 l!14636)) (_2!38767 (h!82030 l!14636))))))

(declare-fun insertNoDuplicatedKeys!800 (List!75708 K!22863 V!23117) List!75708)

(assert (=> d!2398625 (= lt!2730310 (insertNoDuplicatedKeys!800 (toList!11940 acc!1298) (_1!38767 (h!82030 l!14636)) (_2!38767 (h!82030 l!14636))))))

(assert (=> d!2398625 (= (+!2691 acc!1298 (h!82030 l!14636)) lt!2730308)))

(declare-fun b!8056354 () Bool)

(declare-fun res!3186644 () Bool)

(assert (=> b!8056354 (=> (not res!3186644) (not e!4747533))))

(assert (=> b!8056354 (= res!3186644 (= (getValueByKey!2800 (toList!11940 lt!2730308) (_1!38767 (h!82030 l!14636))) (Some!18015 (_2!38767 (h!82030 l!14636)))))))

(declare-fun b!8056355 () Bool)

(assert (=> b!8056355 (= e!4747533 (contains!21266 (toList!11940 lt!2730308) (h!82030 l!14636)))))

(assert (= (and d!2398625 res!3186645) b!8056354))

(assert (= (and b!8056354 res!3186644) b!8056355))

(declare-fun m!8409508 () Bool)

(assert (=> d!2398625 m!8409508))

(declare-fun m!8409510 () Bool)

(assert (=> d!2398625 m!8409510))

(declare-fun m!8409512 () Bool)

(assert (=> d!2398625 m!8409512))

(declare-fun m!8409514 () Bool)

(assert (=> d!2398625 m!8409514))

(declare-fun m!8409516 () Bool)

(assert (=> b!8056354 m!8409516))

(declare-fun m!8409518 () Bool)

(assert (=> b!8056355 m!8409518))

(assert (=> b!8056156 d!2398625))

(declare-fun d!2398627 () Bool)

(declare-fun res!3186650 () Bool)

(declare-fun e!4747538 () Bool)

(assert (=> d!2398627 (=> res!3186650 e!4747538)))

(assert (=> d!2398627 (= res!3186650 (and ((_ is Cons!75582) (t!391480 l!14636)) (= (_1!38767 (h!82030 (t!391480 l!14636))) key!6222)))))

(assert (=> d!2398627 (= (containsKey!4889 (t!391480 l!14636) key!6222) e!4747538)))

(declare-fun b!8056360 () Bool)

(declare-fun e!4747539 () Bool)

(assert (=> b!8056360 (= e!4747538 e!4747539)))

(declare-fun res!3186651 () Bool)

(assert (=> b!8056360 (=> (not res!3186651) (not e!4747539))))

(assert (=> b!8056360 (= res!3186651 ((_ is Cons!75582) (t!391480 l!14636)))))

(declare-fun b!8056361 () Bool)

(assert (=> b!8056361 (= e!4747539 (containsKey!4889 (t!391480 (t!391480 l!14636)) key!6222))))

(assert (= (and d!2398627 (not res!3186650)) b!8056360))

(assert (= (and b!8056360 res!3186651) b!8056361))

(declare-fun m!8409520 () Bool)

(assert (=> b!8056361 m!8409520))

(assert (=> b!8056157 d!2398627))

(declare-fun lt!2730314 () Bool)

(declare-fun d!2398629 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16126 (List!75708) (InoxSet tuple2!70928))

(assert (=> d!2398629 (= lt!2730314 (select (content!16126 (t!391480 l!14636)) (tuple2!70929 key!6222 value!3131)))))

(declare-fun e!4747544 () Bool)

(assert (=> d!2398629 (= lt!2730314 e!4747544)))

(declare-fun res!3186656 () Bool)

(assert (=> d!2398629 (=> (not res!3186656) (not e!4747544))))

(assert (=> d!2398629 (= res!3186656 ((_ is Cons!75582) (t!391480 l!14636)))))

(assert (=> d!2398629 (= (contains!21266 (t!391480 l!14636) (tuple2!70929 key!6222 value!3131)) lt!2730314)))

(declare-fun b!8056366 () Bool)

(declare-fun e!4747545 () Bool)

(assert (=> b!8056366 (= e!4747544 e!4747545)))

(declare-fun res!3186657 () Bool)

(assert (=> b!8056366 (=> res!3186657 e!4747545)))

(assert (=> b!8056366 (= res!3186657 (= (h!82030 (t!391480 l!14636)) (tuple2!70929 key!6222 value!3131)))))

(declare-fun b!8056367 () Bool)

(assert (=> b!8056367 (= e!4747545 (contains!21266 (t!391480 (t!391480 l!14636)) (tuple2!70929 key!6222 value!3131)))))

(assert (= (and d!2398629 res!3186656) b!8056366))

(assert (= (and b!8056366 (not res!3186657)) b!8056367))

(declare-fun m!8409522 () Bool)

(assert (=> d!2398629 m!8409522))

(declare-fun m!8409524 () Bool)

(assert (=> d!2398629 m!8409524))

(declare-fun m!8409526 () Bool)

(assert (=> b!8056367 m!8409526))

(assert (=> b!8056158 d!2398629))

(declare-fun b!8056368 () Bool)

(declare-fun e!4747546 () Bool)

(declare-fun e!4747550 () Bool)

(assert (=> b!8056368 (= e!4747546 e!4747550)))

(declare-fun res!3186658 () Bool)

(assert (=> b!8056368 (=> (not res!3186658) (not e!4747550))))

(assert (=> b!8056368 (= res!3186658 (isDefined!14549 (getValueByKey!2800 (toList!11940 lt!2730050) key!6222)))))

(declare-fun b!8056369 () Bool)

(assert (=> b!8056369 false))

(declare-fun lt!2730318 () Unit!172430)

(declare-fun lt!2730317 () Unit!172430)

(assert (=> b!8056369 (= lt!2730318 lt!2730317)))

(assert (=> b!8056369 (containsKey!4891 (toList!11940 lt!2730050) key!6222)))

(assert (=> b!8056369 (= lt!2730317 (lemmaInGetKeysListThenContainsKey!1259 (toList!11940 lt!2730050) key!6222))))

(declare-fun e!4747548 () Unit!172430)

(declare-fun Unit!172471 () Unit!172430)

(assert (=> b!8056369 (= e!4747548 Unit!172471)))

(declare-fun d!2398631 () Bool)

(assert (=> d!2398631 e!4747546))

(declare-fun res!3186660 () Bool)

(assert (=> d!2398631 (=> res!3186660 e!4747546)))

(declare-fun e!4747547 () Bool)

(assert (=> d!2398631 (= res!3186660 e!4747547)))

(declare-fun res!3186659 () Bool)

(assert (=> d!2398631 (=> (not res!3186659) (not e!4747547))))

(declare-fun lt!2730315 () Bool)

(assert (=> d!2398631 (= res!3186659 (not lt!2730315))))

(declare-fun lt!2730319 () Bool)

(assert (=> d!2398631 (= lt!2730315 lt!2730319)))

(declare-fun lt!2730321 () Unit!172430)

(declare-fun e!4747549 () Unit!172430)

(assert (=> d!2398631 (= lt!2730321 e!4747549)))

(declare-fun c!1476602 () Bool)

(assert (=> d!2398631 (= c!1476602 lt!2730319)))

(assert (=> d!2398631 (= lt!2730319 (containsKey!4891 (toList!11940 lt!2730050) key!6222))))

(assert (=> d!2398631 (= (contains!21265 lt!2730050 key!6222) lt!2730315)))

(declare-fun b!8056370 () Bool)

(declare-fun lt!2730320 () Unit!172430)

(assert (=> b!8056370 (= e!4747549 lt!2730320)))

(declare-fun lt!2730322 () Unit!172430)

(assert (=> b!8056370 (= lt!2730322 (lemmaContainsKeyImpliesGetValueByKeyDefined!2571 (toList!11940 lt!2730050) key!6222))))

(assert (=> b!8056370 (isDefined!14549 (getValueByKey!2800 (toList!11940 lt!2730050) key!6222))))

(declare-fun lt!2730316 () Unit!172430)

(assert (=> b!8056370 (= lt!2730316 lt!2730322)))

(assert (=> b!8056370 (= lt!2730320 (lemmaInListThenGetKeysListContains!1254 (toList!11940 lt!2730050) key!6222))))

(declare-fun call!747494 () Bool)

(assert (=> b!8056370 call!747494))

(declare-fun b!8056371 () Bool)

(assert (=> b!8056371 (= e!4747547 (not (contains!21268 (keys!30874 lt!2730050) key!6222)))))

(declare-fun b!8056372 () Bool)

(assert (=> b!8056372 (= e!4747550 (contains!21268 (keys!30874 lt!2730050) key!6222))))

(declare-fun bm!747489 () Bool)

(declare-fun e!4747551 () List!75710)

(assert (=> bm!747489 (= call!747494 (contains!21268 e!4747551 key!6222))))

(declare-fun c!1476603 () Bool)

(assert (=> bm!747489 (= c!1476603 c!1476602)))

(declare-fun b!8056373 () Bool)

(assert (=> b!8056373 (= e!4747551 (keys!30874 lt!2730050))))

(declare-fun b!8056374 () Bool)

(assert (=> b!8056374 (= e!4747549 e!4747548)))

(declare-fun c!1476604 () Bool)

(assert (=> b!8056374 (= c!1476604 call!747494)))

(declare-fun b!8056375 () Bool)

(assert (=> b!8056375 (= e!4747551 (getKeysList!1259 (toList!11940 lt!2730050)))))

(declare-fun b!8056376 () Bool)

(declare-fun Unit!172472 () Unit!172430)

(assert (=> b!8056376 (= e!4747548 Unit!172472)))

(assert (= (and d!2398631 c!1476602) b!8056370))

(assert (= (and d!2398631 (not c!1476602)) b!8056374))

(assert (= (and b!8056374 c!1476604) b!8056369))

(assert (= (and b!8056374 (not c!1476604)) b!8056376))

(assert (= (or b!8056370 b!8056374) bm!747489))

(assert (= (and bm!747489 c!1476603) b!8056375))

(assert (= (and bm!747489 (not c!1476603)) b!8056373))

(assert (= (and d!2398631 res!3186659) b!8056371))

(assert (= (and d!2398631 (not res!3186660)) b!8056368))

(assert (= (and b!8056368 res!3186658) b!8056372))

(declare-fun m!8409528 () Bool)

(assert (=> d!2398631 m!8409528))

(declare-fun m!8409530 () Bool)

(assert (=> b!8056373 m!8409530))

(declare-fun m!8409532 () Bool)

(assert (=> bm!747489 m!8409532))

(assert (=> b!8056369 m!8409528))

(declare-fun m!8409534 () Bool)

(assert (=> b!8056369 m!8409534))

(assert (=> b!8056371 m!8409530))

(assert (=> b!8056371 m!8409530))

(declare-fun m!8409536 () Bool)

(assert (=> b!8056371 m!8409536))

(assert (=> b!8056372 m!8409530))

(assert (=> b!8056372 m!8409530))

(assert (=> b!8056372 m!8409536))

(declare-fun m!8409538 () Bool)

(assert (=> b!8056370 m!8409538))

(declare-fun m!8409540 () Bool)

(assert (=> b!8056370 m!8409540))

(assert (=> b!8056370 m!8409540))

(declare-fun m!8409542 () Bool)

(assert (=> b!8056370 m!8409542))

(declare-fun m!8409544 () Bool)

(assert (=> b!8056370 m!8409544))

(assert (=> b!8056368 m!8409540))

(assert (=> b!8056368 m!8409540))

(assert (=> b!8056368 m!8409542))

(declare-fun m!8409546 () Bool)

(assert (=> b!8056375 m!8409546))

(assert (=> b!8056154 d!2398631))

(declare-fun b!8056377 () Bool)

(declare-fun e!4747552 () Bool)

(declare-fun e!4747556 () Bool)

(assert (=> b!8056377 (= e!4747552 e!4747556)))

(declare-fun res!3186661 () Bool)

(assert (=> b!8056377 (=> (not res!3186661) (not e!4747556))))

(assert (=> b!8056377 (= res!3186661 (isDefined!14549 (getValueByKey!2800 (toList!11940 (addToMapMapFromBucket!2007 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8056378 () Bool)

(assert (=> b!8056378 false))

(declare-fun lt!2730326 () Unit!172430)

(declare-fun lt!2730325 () Unit!172430)

(assert (=> b!8056378 (= lt!2730326 lt!2730325)))

(assert (=> b!8056378 (containsKey!4891 (toList!11940 (addToMapMapFromBucket!2007 l!14636 acc!1298)) key!6222)))

(assert (=> b!8056378 (= lt!2730325 (lemmaInGetKeysListThenContainsKey!1259 (toList!11940 (addToMapMapFromBucket!2007 l!14636 acc!1298)) key!6222))))

(declare-fun e!4747554 () Unit!172430)

(declare-fun Unit!172473 () Unit!172430)

(assert (=> b!8056378 (= e!4747554 Unit!172473)))

(declare-fun d!2398633 () Bool)

(assert (=> d!2398633 e!4747552))

(declare-fun res!3186663 () Bool)

(assert (=> d!2398633 (=> res!3186663 e!4747552)))

(declare-fun e!4747553 () Bool)

(assert (=> d!2398633 (= res!3186663 e!4747553)))

(declare-fun res!3186662 () Bool)

(assert (=> d!2398633 (=> (not res!3186662) (not e!4747553))))

(declare-fun lt!2730323 () Bool)

(assert (=> d!2398633 (= res!3186662 (not lt!2730323))))

(declare-fun lt!2730327 () Bool)

(assert (=> d!2398633 (= lt!2730323 lt!2730327)))

(declare-fun lt!2730329 () Unit!172430)

(declare-fun e!4747555 () Unit!172430)

(assert (=> d!2398633 (= lt!2730329 e!4747555)))

(declare-fun c!1476605 () Bool)

(assert (=> d!2398633 (= c!1476605 lt!2730327)))

(assert (=> d!2398633 (= lt!2730327 (containsKey!4891 (toList!11940 (addToMapMapFromBucket!2007 l!14636 acc!1298)) key!6222))))

(assert (=> d!2398633 (= (contains!21265 (addToMapMapFromBucket!2007 l!14636 acc!1298) key!6222) lt!2730323)))

(declare-fun b!8056379 () Bool)

(declare-fun lt!2730328 () Unit!172430)

(assert (=> b!8056379 (= e!4747555 lt!2730328)))

(declare-fun lt!2730330 () Unit!172430)

(assert (=> b!8056379 (= lt!2730330 (lemmaContainsKeyImpliesGetValueByKeyDefined!2571 (toList!11940 (addToMapMapFromBucket!2007 l!14636 acc!1298)) key!6222))))

(assert (=> b!8056379 (isDefined!14549 (getValueByKey!2800 (toList!11940 (addToMapMapFromBucket!2007 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2730324 () Unit!172430)

(assert (=> b!8056379 (= lt!2730324 lt!2730330)))

(assert (=> b!8056379 (= lt!2730328 (lemmaInListThenGetKeysListContains!1254 (toList!11940 (addToMapMapFromBucket!2007 l!14636 acc!1298)) key!6222))))

(declare-fun call!747495 () Bool)

(assert (=> b!8056379 call!747495))

(declare-fun b!8056380 () Bool)

(assert (=> b!8056380 (= e!4747553 (not (contains!21268 (keys!30874 (addToMapMapFromBucket!2007 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8056381 () Bool)

(assert (=> b!8056381 (= e!4747556 (contains!21268 (keys!30874 (addToMapMapFromBucket!2007 l!14636 acc!1298)) key!6222))))

(declare-fun bm!747490 () Bool)

(declare-fun e!4747557 () List!75710)

(assert (=> bm!747490 (= call!747495 (contains!21268 e!4747557 key!6222))))

(declare-fun c!1476606 () Bool)

(assert (=> bm!747490 (= c!1476606 c!1476605)))

(declare-fun b!8056382 () Bool)

(assert (=> b!8056382 (= e!4747557 (keys!30874 (addToMapMapFromBucket!2007 l!14636 acc!1298)))))

(declare-fun b!8056383 () Bool)

(assert (=> b!8056383 (= e!4747555 e!4747554)))

(declare-fun c!1476607 () Bool)

(assert (=> b!8056383 (= c!1476607 call!747495)))

(declare-fun b!8056384 () Bool)

(assert (=> b!8056384 (= e!4747557 (getKeysList!1259 (toList!11940 (addToMapMapFromBucket!2007 l!14636 acc!1298))))))

(declare-fun b!8056385 () Bool)

(declare-fun Unit!172474 () Unit!172430)

(assert (=> b!8056385 (= e!4747554 Unit!172474)))

(assert (= (and d!2398633 c!1476605) b!8056379))

(assert (= (and d!2398633 (not c!1476605)) b!8056383))

(assert (= (and b!8056383 c!1476607) b!8056378))

(assert (= (and b!8056383 (not c!1476607)) b!8056385))

(assert (= (or b!8056379 b!8056383) bm!747490))

(assert (= (and bm!747490 c!1476606) b!8056384))

(assert (= (and bm!747490 (not c!1476606)) b!8056382))

(assert (= (and d!2398633 res!3186662) b!8056380))

(assert (= (and d!2398633 (not res!3186663)) b!8056377))

(assert (= (and b!8056377 res!3186661) b!8056381))

(declare-fun m!8409548 () Bool)

(assert (=> d!2398633 m!8409548))

(assert (=> b!8056382 m!8409230))

(declare-fun m!8409550 () Bool)

(assert (=> b!8056382 m!8409550))

(declare-fun m!8409552 () Bool)

(assert (=> bm!747490 m!8409552))

(assert (=> b!8056378 m!8409548))

(declare-fun m!8409554 () Bool)

(assert (=> b!8056378 m!8409554))

(assert (=> b!8056380 m!8409230))

(assert (=> b!8056380 m!8409550))

(assert (=> b!8056380 m!8409550))

(declare-fun m!8409556 () Bool)

(assert (=> b!8056380 m!8409556))

(assert (=> b!8056381 m!8409230))

(assert (=> b!8056381 m!8409550))

(assert (=> b!8056381 m!8409550))

(assert (=> b!8056381 m!8409556))

(declare-fun m!8409558 () Bool)

(assert (=> b!8056379 m!8409558))

(declare-fun m!8409560 () Bool)

(assert (=> b!8056379 m!8409560))

(assert (=> b!8056379 m!8409560))

(declare-fun m!8409562 () Bool)

(assert (=> b!8056379 m!8409562))

(declare-fun m!8409564 () Bool)

(assert (=> b!8056379 m!8409564))

(assert (=> b!8056377 m!8409560))

(assert (=> b!8056377 m!8409560))

(assert (=> b!8056377 m!8409562))

(declare-fun m!8409566 () Bool)

(assert (=> b!8056384 m!8409566))

(assert (=> b!8056155 d!2398633))

(declare-fun bs!1973124 () Bool)

(declare-fun b!8056387 () Bool)

(assert (= bs!1973124 (and b!8056387 b!8056344)))

(declare-fun lambda!474340 () Int)

(assert (=> bs!1973124 (= (= acc!1298 lt!2730047) (= lambda!474340 lambda!474336))))

(declare-fun bs!1973125 () Bool)

(assert (= bs!1973125 (and b!8056387 b!8056343)))

(assert (=> bs!1973125 (= (= acc!1298 lt!2730047) (= lambda!474340 lambda!474337))))

(assert (=> bs!1973125 (= (= acc!1298 lt!2730287) (= lambda!474340 lambda!474338))))

(declare-fun bs!1973126 () Bool)

(assert (= bs!1973126 (and b!8056387 d!2398599)))

(assert (=> bs!1973126 (= (= acc!1298 lt!2730281) (= lambda!474340 lambda!474339))))

(assert (=> b!8056387 true))

(declare-fun bs!1973127 () Bool)

(declare-fun b!8056386 () Bool)

(assert (= bs!1973127 (and b!8056386 d!2398599)))

(declare-fun lambda!474341 () Int)

(assert (=> bs!1973127 (= (= acc!1298 lt!2730281) (= lambda!474341 lambda!474339))))

(declare-fun bs!1973128 () Bool)

(assert (= bs!1973128 (and b!8056386 b!8056387)))

(assert (=> bs!1973128 (= lambda!474341 lambda!474340)))

(declare-fun bs!1973129 () Bool)

(assert (= bs!1973129 (and b!8056386 b!8056344)))

(assert (=> bs!1973129 (= (= acc!1298 lt!2730047) (= lambda!474341 lambda!474336))))

(declare-fun bs!1973130 () Bool)

(assert (= bs!1973130 (and b!8056386 b!8056343)))

(assert (=> bs!1973130 (= (= acc!1298 lt!2730287) (= lambda!474341 lambda!474338))))

(assert (=> bs!1973130 (= (= acc!1298 lt!2730047) (= lambda!474341 lambda!474337))))

(assert (=> b!8056386 true))

(declare-fun lt!2730339 () ListMap!7331)

(declare-fun lambda!474342 () Int)

(assert (=> bs!1973127 (= (= lt!2730339 lt!2730281) (= lambda!474342 lambda!474339))))

(assert (=> bs!1973128 (= (= lt!2730339 acc!1298) (= lambda!474342 lambda!474340))))

(assert (=> bs!1973129 (= (= lt!2730339 lt!2730047) (= lambda!474342 lambda!474336))))

(assert (=> bs!1973130 (= (= lt!2730339 lt!2730287) (= lambda!474342 lambda!474338))))

(assert (=> bs!1973130 (= (= lt!2730339 lt!2730047) (= lambda!474342 lambda!474337))))

(assert (=> b!8056386 (= (= lt!2730339 acc!1298) (= lambda!474342 lambda!474341))))

(assert (=> b!8056386 true))

(declare-fun bs!1973131 () Bool)

(declare-fun d!2398635 () Bool)

(assert (= bs!1973131 (and d!2398635 d!2398599)))

(declare-fun lt!2730333 () ListMap!7331)

(declare-fun lambda!474343 () Int)

(assert (=> bs!1973131 (= (= lt!2730333 lt!2730281) (= lambda!474343 lambda!474339))))

(declare-fun bs!1973132 () Bool)

(assert (= bs!1973132 (and d!2398635 b!8056387)))

(assert (=> bs!1973132 (= (= lt!2730333 acc!1298) (= lambda!474343 lambda!474340))))

(declare-fun bs!1973133 () Bool)

(assert (= bs!1973133 (and d!2398635 b!8056344)))

(assert (=> bs!1973133 (= (= lt!2730333 lt!2730047) (= lambda!474343 lambda!474336))))

(declare-fun bs!1973134 () Bool)

(assert (= bs!1973134 (and d!2398635 b!8056343)))

(assert (=> bs!1973134 (= (= lt!2730333 lt!2730287) (= lambda!474343 lambda!474338))))

(declare-fun bs!1973135 () Bool)

(assert (= bs!1973135 (and d!2398635 b!8056386)))

(assert (=> bs!1973135 (= (= lt!2730333 lt!2730339) (= lambda!474343 lambda!474342))))

(assert (=> bs!1973134 (= (= lt!2730333 lt!2730047) (= lambda!474343 lambda!474337))))

(assert (=> bs!1973135 (= (= lt!2730333 acc!1298) (= lambda!474343 lambda!474341))))

(assert (=> d!2398635 true))

(declare-fun e!4747558 () Bool)

(assert (=> d!2398635 e!4747558))

(declare-fun res!3186664 () Bool)

(assert (=> d!2398635 (=> (not res!3186664) (not e!4747558))))

(assert (=> d!2398635 (= res!3186664 (forall!18522 l!14636 lambda!474343))))

(declare-fun e!4747559 () ListMap!7331)

(assert (=> d!2398635 (= lt!2730333 e!4747559)))

(declare-fun c!1476608 () Bool)

(assert (=> d!2398635 (= c!1476608 ((_ is Nil!75582) l!14636))))

(assert (=> d!2398635 (noDuplicateKeys!2726 l!14636)))

(assert (=> d!2398635 (= (addToMapMapFromBucket!2007 l!14636 acc!1298) lt!2730333)))

(assert (=> b!8056386 (= e!4747559 lt!2730339)))

(declare-fun lt!2730342 () ListMap!7331)

(assert (=> b!8056386 (= lt!2730342 (+!2691 acc!1298 (h!82030 l!14636)))))

(assert (=> b!8056386 (= lt!2730339 (addToMapMapFromBucket!2007 (t!391480 l!14636) (+!2691 acc!1298 (h!82030 l!14636))))))

(declare-fun lt!2730345 () Unit!172430)

(declare-fun call!747496 () Unit!172430)

(assert (=> b!8056386 (= lt!2730345 call!747496)))

(assert (=> b!8056386 (forall!18522 (toList!11940 acc!1298) lambda!474341)))

(declare-fun lt!2730340 () Unit!172430)

(assert (=> b!8056386 (= lt!2730340 lt!2730345)))

(assert (=> b!8056386 (forall!18522 (toList!11940 lt!2730342) lambda!474342)))

(declare-fun lt!2730350 () Unit!172430)

(declare-fun Unit!172477 () Unit!172430)

(assert (=> b!8056386 (= lt!2730350 Unit!172477)))

(assert (=> b!8056386 (forall!18522 (t!391480 l!14636) lambda!474342)))

(declare-fun lt!2730334 () Unit!172430)

(declare-fun Unit!172478 () Unit!172430)

(assert (=> b!8056386 (= lt!2730334 Unit!172478)))

(declare-fun lt!2730331 () Unit!172430)

(declare-fun Unit!172479 () Unit!172430)

(assert (=> b!8056386 (= lt!2730331 Unit!172479)))

(declare-fun lt!2730344 () Unit!172430)

(assert (=> b!8056386 (= lt!2730344 (forallContained!4676 (toList!11940 lt!2730342) lambda!474342 (h!82030 l!14636)))))

(assert (=> b!8056386 (contains!21265 lt!2730342 (_1!38767 (h!82030 l!14636)))))

(declare-fun lt!2730341 () Unit!172430)

(declare-fun Unit!172481 () Unit!172430)

(assert (=> b!8056386 (= lt!2730341 Unit!172481)))

(assert (=> b!8056386 (contains!21265 lt!2730339 (_1!38767 (h!82030 l!14636)))))

(declare-fun lt!2730338 () Unit!172430)

(declare-fun Unit!172482 () Unit!172430)

(assert (=> b!8056386 (= lt!2730338 Unit!172482)))

(assert (=> b!8056386 (forall!18522 l!14636 lambda!474342)))

(declare-fun lt!2730336 () Unit!172430)

(declare-fun Unit!172484 () Unit!172430)

(assert (=> b!8056386 (= lt!2730336 Unit!172484)))

(declare-fun call!747497 () Bool)

(assert (=> b!8056386 call!747497))

(declare-fun lt!2730337 () Unit!172430)

(declare-fun Unit!172485 () Unit!172430)

(assert (=> b!8056386 (= lt!2730337 Unit!172485)))

(declare-fun lt!2730349 () Unit!172430)

(declare-fun Unit!172486 () Unit!172430)

(assert (=> b!8056386 (= lt!2730349 Unit!172486)))

(declare-fun lt!2730335 () Unit!172430)

(assert (=> b!8056386 (= lt!2730335 (addForallContainsKeyThenBeforeAdding!1101 acc!1298 lt!2730339 (_1!38767 (h!82030 l!14636)) (_2!38767 (h!82030 l!14636))))))

(assert (=> b!8056386 (forall!18522 (toList!11940 acc!1298) lambda!474342)))

(declare-fun lt!2730347 () Unit!172430)

(assert (=> b!8056386 (= lt!2730347 lt!2730335)))

(assert (=> b!8056386 (forall!18522 (toList!11940 acc!1298) lambda!474342)))

(declare-fun lt!2730332 () Unit!172430)

(declare-fun Unit!172487 () Unit!172430)

(assert (=> b!8056386 (= lt!2730332 Unit!172487)))

(declare-fun res!3186666 () Bool)

(declare-fun call!747498 () Bool)

(assert (=> b!8056386 (= res!3186666 call!747498)))

(declare-fun e!4747560 () Bool)

(assert (=> b!8056386 (=> (not res!3186666) (not e!4747560))))

(assert (=> b!8056386 e!4747560))

(declare-fun lt!2730351 () Unit!172430)

(declare-fun Unit!172488 () Unit!172430)

(assert (=> b!8056386 (= lt!2730351 Unit!172488)))

(declare-fun bm!747491 () Bool)

(assert (=> bm!747491 (= call!747497 (forall!18522 (ite c!1476608 (toList!11940 acc!1298) (toList!11940 lt!2730342)) (ite c!1476608 lambda!474340 lambda!474342)))))

(declare-fun bm!747492 () Bool)

(assert (=> bm!747492 (= call!747496 (lemmaContainsAllItsOwnKeys!1103 acc!1298))))

(assert (=> b!8056387 (= e!4747559 acc!1298)))

(declare-fun lt!2730348 () Unit!172430)

(assert (=> b!8056387 (= lt!2730348 call!747496)))

(assert (=> b!8056387 call!747497))

(declare-fun lt!2730343 () Unit!172430)

(assert (=> b!8056387 (= lt!2730343 lt!2730348)))

(assert (=> b!8056387 call!747498))

(declare-fun lt!2730346 () Unit!172430)

(declare-fun Unit!172489 () Unit!172430)

(assert (=> b!8056387 (= lt!2730346 Unit!172489)))

(declare-fun b!8056388 () Bool)

(assert (=> b!8056388 (= e!4747558 (invariantList!1951 (toList!11940 lt!2730333)))))

(declare-fun bm!747493 () Bool)

(assert (=> bm!747493 (= call!747498 (forall!18522 (ite c!1476608 (toList!11940 acc!1298) l!14636) (ite c!1476608 lambda!474340 lambda!474342)))))

(declare-fun b!8056389 () Bool)

(assert (=> b!8056389 (= e!4747560 (forall!18522 (toList!11940 acc!1298) lambda!474342))))

(declare-fun b!8056390 () Bool)

(declare-fun res!3186665 () Bool)

(assert (=> b!8056390 (=> (not res!3186665) (not e!4747558))))

(assert (=> b!8056390 (= res!3186665 (forall!18522 (toList!11940 acc!1298) lambda!474343))))

(assert (= (and d!2398635 c!1476608) b!8056387))

(assert (= (and d!2398635 (not c!1476608)) b!8056386))

(assert (= (and b!8056386 res!3186666) b!8056389))

(assert (= (or b!8056387 b!8056386) bm!747493))

(assert (= (or b!8056387 b!8056386) bm!747491))

(assert (= (or b!8056387 b!8056386) bm!747492))

(assert (= (and d!2398635 res!3186664) b!8056390))

(assert (= (and b!8056390 res!3186665) b!8056388))

(declare-fun m!8409568 () Bool)

(assert (=> bm!747492 m!8409568))

(declare-fun m!8409570 () Bool)

(assert (=> b!8056388 m!8409570))

(declare-fun m!8409572 () Bool)

(assert (=> b!8056389 m!8409572))

(declare-fun m!8409574 () Bool)

(assert (=> d!2398635 m!8409574))

(assert (=> d!2398635 m!8409246))

(declare-fun m!8409576 () Bool)

(assert (=> bm!747493 m!8409576))

(declare-fun m!8409578 () Bool)

(assert (=> b!8056390 m!8409578))

(declare-fun m!8409580 () Bool)

(assert (=> bm!747491 m!8409580))

(declare-fun m!8409582 () Bool)

(assert (=> b!8056386 m!8409582))

(assert (=> b!8056386 m!8409242))

(declare-fun m!8409584 () Bool)

(assert (=> b!8056386 m!8409584))

(declare-fun m!8409586 () Bool)

(assert (=> b!8056386 m!8409586))

(declare-fun m!8409588 () Bool)

(assert (=> b!8056386 m!8409588))

(declare-fun m!8409590 () Bool)

(assert (=> b!8056386 m!8409590))

(declare-fun m!8409592 () Bool)

(assert (=> b!8056386 m!8409592))

(assert (=> b!8056386 m!8409242))

(declare-fun m!8409594 () Bool)

(assert (=> b!8056386 m!8409594))

(declare-fun m!8409596 () Bool)

(assert (=> b!8056386 m!8409596))

(assert (=> b!8056386 m!8409572))

(declare-fun m!8409598 () Bool)

(assert (=> b!8056386 m!8409598))

(assert (=> b!8056386 m!8409572))

(assert (=> b!8056155 d!2398635))

(declare-fun d!2398637 () Bool)

(declare-fun res!3186667 () Bool)

(declare-fun e!4747561 () Bool)

(assert (=> d!2398637 (=> res!3186667 e!4747561)))

(assert (=> d!2398637 (= res!3186667 (and ((_ is Cons!75582) l!14636) (= (_1!38767 (h!82030 l!14636)) key!6222)))))

(assert (=> d!2398637 (= (containsKey!4889 l!14636 key!6222) e!4747561)))

(declare-fun b!8056391 () Bool)

(declare-fun e!4747562 () Bool)

(assert (=> b!8056391 (= e!4747561 e!4747562)))

(declare-fun res!3186668 () Bool)

(assert (=> b!8056391 (=> (not res!3186668) (not e!4747562))))

(assert (=> b!8056391 (= res!3186668 ((_ is Cons!75582) l!14636))))

(declare-fun b!8056392 () Bool)

(assert (=> b!8056392 (= e!4747562 (containsKey!4889 (t!391480 l!14636) key!6222))))

(assert (= (and d!2398637 (not res!3186667)) b!8056391))

(assert (= (and b!8056391 res!3186668) b!8056392))

(assert (=> b!8056392 m!8409238))

(assert (=> b!8056161 d!2398637))

(assert (=> b!8056162 d!2398637))

(declare-fun b!8056393 () Bool)

(declare-fun e!4747563 () Bool)

(declare-fun e!4747567 () Bool)

(assert (=> b!8056393 (= e!4747563 e!4747567)))

(declare-fun res!3186669 () Bool)

(assert (=> b!8056393 (=> (not res!3186669) (not e!4747567))))

(assert (=> b!8056393 (= res!3186669 (isDefined!14549 (getValueByKey!2800 (toList!11940 acc!1298) key!6222)))))

(declare-fun b!8056394 () Bool)

(assert (=> b!8056394 false))

(declare-fun lt!2730355 () Unit!172430)

(declare-fun lt!2730354 () Unit!172430)

(assert (=> b!8056394 (= lt!2730355 lt!2730354)))

(assert (=> b!8056394 (containsKey!4891 (toList!11940 acc!1298) key!6222)))

(assert (=> b!8056394 (= lt!2730354 (lemmaInGetKeysListThenContainsKey!1259 (toList!11940 acc!1298) key!6222))))

(declare-fun e!4747565 () Unit!172430)

(declare-fun Unit!172490 () Unit!172430)

(assert (=> b!8056394 (= e!4747565 Unit!172490)))

(declare-fun d!2398639 () Bool)

(assert (=> d!2398639 e!4747563))

(declare-fun res!3186671 () Bool)

(assert (=> d!2398639 (=> res!3186671 e!4747563)))

(declare-fun e!4747564 () Bool)

(assert (=> d!2398639 (= res!3186671 e!4747564)))

(declare-fun res!3186670 () Bool)

(assert (=> d!2398639 (=> (not res!3186670) (not e!4747564))))

(declare-fun lt!2730352 () Bool)

(assert (=> d!2398639 (= res!3186670 (not lt!2730352))))

(declare-fun lt!2730356 () Bool)

(assert (=> d!2398639 (= lt!2730352 lt!2730356)))

(declare-fun lt!2730358 () Unit!172430)

(declare-fun e!4747566 () Unit!172430)

(assert (=> d!2398639 (= lt!2730358 e!4747566)))

(declare-fun c!1476609 () Bool)

(assert (=> d!2398639 (= c!1476609 lt!2730356)))

(assert (=> d!2398639 (= lt!2730356 (containsKey!4891 (toList!11940 acc!1298) key!6222))))

(assert (=> d!2398639 (= (contains!21265 acc!1298 key!6222) lt!2730352)))

(declare-fun b!8056395 () Bool)

(declare-fun lt!2730357 () Unit!172430)

(assert (=> b!8056395 (= e!4747566 lt!2730357)))

(declare-fun lt!2730359 () Unit!172430)

(assert (=> b!8056395 (= lt!2730359 (lemmaContainsKeyImpliesGetValueByKeyDefined!2571 (toList!11940 acc!1298) key!6222))))

(assert (=> b!8056395 (isDefined!14549 (getValueByKey!2800 (toList!11940 acc!1298) key!6222))))

(declare-fun lt!2730353 () Unit!172430)

(assert (=> b!8056395 (= lt!2730353 lt!2730359)))

(assert (=> b!8056395 (= lt!2730357 (lemmaInListThenGetKeysListContains!1254 (toList!11940 acc!1298) key!6222))))

(declare-fun call!747499 () Bool)

(assert (=> b!8056395 call!747499))

(declare-fun b!8056396 () Bool)

(assert (=> b!8056396 (= e!4747564 (not (contains!21268 (keys!30874 acc!1298) key!6222)))))

(declare-fun b!8056397 () Bool)

(assert (=> b!8056397 (= e!4747567 (contains!21268 (keys!30874 acc!1298) key!6222))))

(declare-fun bm!747494 () Bool)

(declare-fun e!4747568 () List!75710)

(assert (=> bm!747494 (= call!747499 (contains!21268 e!4747568 key!6222))))

(declare-fun c!1476610 () Bool)

(assert (=> bm!747494 (= c!1476610 c!1476609)))

(declare-fun b!8056398 () Bool)

(assert (=> b!8056398 (= e!4747568 (keys!30874 acc!1298))))

(declare-fun b!8056399 () Bool)

(assert (=> b!8056399 (= e!4747566 e!4747565)))

(declare-fun c!1476611 () Bool)

(assert (=> b!8056399 (= c!1476611 call!747499)))

(declare-fun b!8056400 () Bool)

(assert (=> b!8056400 (= e!4747568 (getKeysList!1259 (toList!11940 acc!1298)))))

(declare-fun b!8056401 () Bool)

(declare-fun Unit!172491 () Unit!172430)

(assert (=> b!8056401 (= e!4747565 Unit!172491)))

(assert (= (and d!2398639 c!1476609) b!8056395))

(assert (= (and d!2398639 (not c!1476609)) b!8056399))

(assert (= (and b!8056399 c!1476611) b!8056394))

(assert (= (and b!8056399 (not c!1476611)) b!8056401))

(assert (= (or b!8056395 b!8056399) bm!747494))

(assert (= (and bm!747494 c!1476610) b!8056400))

(assert (= (and bm!747494 (not c!1476610)) b!8056398))

(assert (= (and d!2398639 res!3186670) b!8056396))

(assert (= (and d!2398639 (not res!3186671)) b!8056393))

(assert (= (and b!8056393 res!3186669) b!8056397))

(declare-fun m!8409600 () Bool)

(assert (=> d!2398639 m!8409600))

(declare-fun m!8409602 () Bool)

(assert (=> b!8056398 m!8409602))

(declare-fun m!8409604 () Bool)

(assert (=> bm!747494 m!8409604))

(assert (=> b!8056394 m!8409600))

(declare-fun m!8409606 () Bool)

(assert (=> b!8056394 m!8409606))

(assert (=> b!8056396 m!8409602))

(assert (=> b!8056396 m!8409602))

(declare-fun m!8409608 () Bool)

(assert (=> b!8056396 m!8409608))

(assert (=> b!8056397 m!8409602))

(assert (=> b!8056397 m!8409602))

(assert (=> b!8056397 m!8409608))

(declare-fun m!8409610 () Bool)

(assert (=> b!8056395 m!8409610))

(assert (=> b!8056395 m!8409310))

(assert (=> b!8056395 m!8409310))

(declare-fun m!8409612 () Bool)

(assert (=> b!8056395 m!8409612))

(declare-fun m!8409614 () Bool)

(assert (=> b!8056395 m!8409614))

(assert (=> b!8056393 m!8409310))

(assert (=> b!8056393 m!8409310))

(assert (=> b!8056393 m!8409612))

(declare-fun m!8409616 () Bool)

(assert (=> b!8056400 m!8409616))

(assert (=> b!8056151 d!2398639))

(declare-fun d!2398641 () Bool)

(declare-fun res!3186672 () Bool)

(declare-fun e!4747569 () Bool)

(assert (=> d!2398641 (=> res!3186672 e!4747569)))

(assert (=> d!2398641 (= res!3186672 (not ((_ is Cons!75582) l!14636)))))

(assert (=> d!2398641 (= (noDuplicateKeys!2726 l!14636) e!4747569)))

(declare-fun b!8056402 () Bool)

(declare-fun e!4747570 () Bool)

(assert (=> b!8056402 (= e!4747569 e!4747570)))

(declare-fun res!3186673 () Bool)

(assert (=> b!8056402 (=> (not res!3186673) (not e!4747570))))

(assert (=> b!8056402 (= res!3186673 (not (containsKey!4889 (t!391480 l!14636) (_1!38767 (h!82030 l!14636)))))))

(declare-fun b!8056403 () Bool)

(assert (=> b!8056403 (= e!4747570 (noDuplicateKeys!2726 (t!391480 l!14636)))))

(assert (= (and d!2398641 (not res!3186672)) b!8056402))

(assert (= (and b!8056402 res!3186673) b!8056403))

(declare-fun m!8409618 () Bool)

(assert (=> b!8056402 m!8409618))

(assert (=> b!8056403 m!8409220))

(assert (=> start!758912 d!2398641))

(declare-fun d!2398643 () Bool)

(assert (=> d!2398643 (= (inv!97352 acc!1298) (invariantList!1951 (toList!11940 acc!1298)))))

(declare-fun bs!1973136 () Bool)

(assert (= bs!1973136 d!2398643))

(declare-fun m!8409620 () Bool)

(assert (=> bs!1973136 m!8409620))

(assert (=> start!758912 d!2398643))

(declare-fun d!2398645 () Bool)

(declare-fun lt!2730360 () Bool)

(assert (=> d!2398645 (= lt!2730360 (select (content!16126 l!14636) (tuple2!70929 key!6222 value!3131)))))

(declare-fun e!4747571 () Bool)

(assert (=> d!2398645 (= lt!2730360 e!4747571)))

(declare-fun res!3186674 () Bool)

(assert (=> d!2398645 (=> (not res!3186674) (not e!4747571))))

(assert (=> d!2398645 (= res!3186674 ((_ is Cons!75582) l!14636))))

(assert (=> d!2398645 (= (contains!21266 l!14636 (tuple2!70929 key!6222 value!3131)) lt!2730360)))

(declare-fun b!8056404 () Bool)

(declare-fun e!4747572 () Bool)

(assert (=> b!8056404 (= e!4747571 e!4747572)))

(declare-fun res!3186675 () Bool)

(assert (=> b!8056404 (=> res!3186675 e!4747572)))

(assert (=> b!8056404 (= res!3186675 (= (h!82030 l!14636) (tuple2!70929 key!6222 value!3131)))))

(declare-fun b!8056405 () Bool)

(assert (=> b!8056405 (= e!4747572 (contains!21266 (t!391480 l!14636) (tuple2!70929 key!6222 value!3131)))))

(assert (= (and d!2398645 res!3186674) b!8056404))

(assert (= (and b!8056404 (not res!3186675)) b!8056405))

(declare-fun m!8409622 () Bool)

(assert (=> d!2398645 m!8409622))

(declare-fun m!8409624 () Bool)

(assert (=> d!2398645 m!8409624))

(assert (=> b!8056405 m!8409234))

(assert (=> b!8056152 d!2398645))

(declare-fun tp!2413936 () Bool)

(declare-fun e!4747575 () Bool)

(declare-fun b!8056410 () Bool)

(assert (=> b!8056410 (= e!4747575 (and tp_is_empty!54979 tp_is_empty!54981 tp!2413936))))

(assert (=> b!8056153 (= tp!2413928 e!4747575)))

(assert (= (and b!8056153 ((_ is Cons!75582) (t!391480 l!14636))) b!8056410))

(declare-fun tp!2413937 () Bool)

(declare-fun b!8056411 () Bool)

(declare-fun e!4747576 () Bool)

(assert (=> b!8056411 (= e!4747576 (and tp_is_empty!54979 tp_is_empty!54981 tp!2413937))))

(assert (=> b!8056163 (= tp!2413929 e!4747576)))

(assert (= (and b!8056163 ((_ is Cons!75582) (toList!11940 acc!1298))) b!8056411))

(check-sat (not b!8056390) (not b!8056394) (not b!8056375) (not bm!747464) (not d!2398643) (not b!8056367) (not b!8056380) (not d!2398631) (not b!8056234) (not b!8056245) (not b!8056379) tp_is_empty!54981 (not b!8056397) (not d!2398639) (not bm!747492) (not bm!747487) (not b!8056355) (not b!8056396) (not b!8056231) (not d!2398593) (not d!2398591) (not b!8056382) (not b!8056403) (not d!2398635) (not b!8056393) (not b!8056377) (not b!8056354) (not b!8056402) (not b!8056398) (not b!8056345) (not bm!747486) (not bm!747493) (not b!8056247) (not b!8056178) (not b!8056389) (not b!8056400) (not b!8056392) (not d!2398629) (not d!2398625) (not b!8056384) (not b!8056227) (not b!8056179) (not b!8056229) (not d!2398633) (not b!8056230) tp_is_empty!54979 (not d!2398585) (not b!8056372) (not b!8056405) (not bm!747494) (not b!8056381) (not b!8056410) (not b!8056395) (not b!8056411) (not b!8056343) (not b!8056386) (not d!2398599) (not b!8056347) (not bm!747491) (not b!8056346) (not b!8056388) (not b!8056228) (not b!8056368) (not bm!747488) (not b!8056373) (not b!8056370) (not b!8056378) (not b!8056361) (not bm!747490) (not b!8056371) (not bm!747489) (not d!2398645) (not b!8056369) (not b!8056232))
(check-sat)
