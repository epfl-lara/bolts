; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758252 () Bool)

(assert start!758252)

(declare-fun b!8051239 () Bool)

(declare-fun res!3183458 () Bool)

(declare-fun e!4744082 () Bool)

(assert (=> b!8051239 (=> (not res!3183458) (not e!4744082))))

(declare-datatypes ((V!23042 0))(
  ( (V!23043 (val!32903 Int)) )
))
(declare-fun value!3131 () V!23042)

(declare-datatypes ((K!22788 0))(
  ( (K!22789 (val!32904 Int)) )
))
(declare-datatypes ((tuple2!70868 0))(
  ( (tuple2!70869 (_1!38737 K!22788) (_2!38737 V!23042)) )
))
(declare-datatypes ((List!75652 0))(
  ( (Nil!75526) (Cons!75526 (h!81974 tuple2!70868) (t!391424 List!75652)) )
))
(declare-datatypes ((ListMap!7271 0))(
  ( (ListMap!7272 (toList!11910 List!75652)) )
))
(declare-fun acc!1298 () ListMap!7271)

(declare-fun key!6222 () K!22788)

(declare-fun apply!14423 (ListMap!7271 K!22788) V!23042)

(assert (=> b!8051239 (= res!3183458 (= (apply!14423 acc!1298 key!6222) value!3131))))

(declare-fun b!8051240 () Bool)

(declare-fun e!4744086 () Bool)

(declare-fun tp!2413640 () Bool)

(assert (=> b!8051240 (= e!4744086 tp!2413640)))

(declare-fun b!8051241 () Bool)

(declare-fun e!4744081 () Bool)

(declare-fun e!4744083 () Bool)

(assert (=> b!8051241 (= e!4744081 e!4744083)))

(declare-fun res!3183456 () Bool)

(assert (=> b!8051241 (=> (not res!3183456) (not e!4744083))))

(declare-fun l!14636 () List!75652)

(declare-fun containsKey!4833 (List!75652 K!22788) Bool)

(assert (=> b!8051241 (= res!3183456 (containsKey!4833 l!14636 key!6222))))

(declare-fun b!8051242 () Bool)

(declare-fun res!3183454 () Bool)

(declare-fun e!4744080 () Bool)

(assert (=> b!8051242 (=> (not res!3183454) (not e!4744080))))

(get-info :version)

(assert (=> b!8051242 (= res!3183454 (not ((_ is Nil!75526) l!14636)))))

(declare-fun b!8051243 () Bool)

(declare-fun e!4744087 () Bool)

(assert (=> b!8051243 (= e!4744087 e!4744080)))

(declare-fun res!3183461 () Bool)

(assert (=> b!8051243 (=> (not res!3183461) (not e!4744080))))

(assert (=> b!8051243 (= res!3183461 e!4744081)))

(declare-fun res!3183453 () Bool)

(assert (=> b!8051243 (=> res!3183453 e!4744081)))

(assert (=> b!8051243 (= res!3183453 e!4744082)))

(declare-fun res!3183459 () Bool)

(assert (=> b!8051243 (=> (not res!3183459) (not e!4744082))))

(declare-fun lt!2725130 () Bool)

(assert (=> b!8051243 (= res!3183459 lt!2725130)))

(declare-fun contains!21179 (ListMap!7271 K!22788) Bool)

(assert (=> b!8051243 (= lt!2725130 (contains!21179 acc!1298 key!6222))))

(declare-fun b!8051244 () Bool)

(declare-fun e!4744088 () Bool)

(assert (=> b!8051244 (= e!4744080 e!4744088)))

(declare-fun res!3183457 () Bool)

(assert (=> b!8051244 (=> (not res!3183457) (not e!4744088))))

(assert (=> b!8051244 (= res!3183457 (= (_1!38737 (h!81974 l!14636)) key!6222))))

(declare-fun lt!2725132 () ListMap!7271)

(declare-fun addToMapMapFromBucket!1977 (List!75652 ListMap!7271) ListMap!7271)

(declare-fun +!2661 (ListMap!7271 tuple2!70868) ListMap!7271)

(assert (=> b!8051244 (= lt!2725132 (addToMapMapFromBucket!1977 (t!391424 l!14636) (+!2661 acc!1298 (h!81974 l!14636))))))

(declare-fun b!8051245 () Bool)

(declare-fun e!4744085 () Bool)

(assert (=> b!8051245 (= e!4744088 (not e!4744085))))

(declare-fun res!3183451 () Bool)

(assert (=> b!8051245 (=> res!3183451 e!4744085)))

(assert (=> b!8051245 (= res!3183451 (not (= (_2!38737 (h!81974 l!14636)) value!3131)))))

(declare-fun contains!21180 (List!75652 tuple2!70868) Bool)

(assert (=> b!8051245 (not (contains!21180 (t!391424 l!14636) (tuple2!70869 key!6222 value!3131)))))

(declare-datatypes ((Unit!171511 0))(
  ( (Unit!171512) )
))
(declare-fun lt!2725131 () Unit!171511)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!16 (List!75652 K!22788 V!23042) Unit!171511)

(assert (=> b!8051245 (= lt!2725131 (lemmaNotContainsKeyThenCannotContainPair!16 (t!391424 l!14636) key!6222 value!3131))))

(declare-fun b!8051247 () Bool)

(assert (=> b!8051247 (= e!4744082 (not (containsKey!4833 l!14636 key!6222)))))

(declare-fun b!8051248 () Bool)

(declare-fun res!3183452 () Bool)

(assert (=> b!8051248 (=> (not res!3183452) (not e!4744083))))

(assert (=> b!8051248 (= res!3183452 (contains!21180 l!14636 (tuple2!70869 key!6222 value!3131)))))

(declare-fun b!8051249 () Bool)

(declare-fun e!4744084 () Bool)

(declare-fun tp!2413641 () Bool)

(declare-fun tp_is_empty!54861 () Bool)

(declare-fun tp_is_empty!54859 () Bool)

(assert (=> b!8051249 (= e!4744084 (and tp_is_empty!54859 tp_is_empty!54861 tp!2413641))))

(declare-fun b!8051250 () Bool)

(declare-fun noDuplicateKeys!2696 (List!75652) Bool)

(assert (=> b!8051250 (= e!4744085 (noDuplicateKeys!2696 (t!391424 l!14636)))))

(declare-fun b!8051251 () Bool)

(declare-fun res!3183460 () Bool)

(assert (=> b!8051251 (=> (not res!3183460) (not e!4744087))))

(assert (=> b!8051251 (= res!3183460 (contains!21179 (addToMapMapFromBucket!1977 l!14636 acc!1298) key!6222))))

(declare-fun b!8051246 () Bool)

(assert (=> b!8051246 (= e!4744083 (not lt!2725130))))

(declare-fun res!3183455 () Bool)

(assert (=> start!758252 (=> (not res!3183455) (not e!4744087))))

(assert (=> start!758252 (= res!3183455 (noDuplicateKeys!2696 l!14636))))

(assert (=> start!758252 e!4744087))

(assert (=> start!758252 e!4744084))

(declare-fun inv!97277 (ListMap!7271) Bool)

(assert (=> start!758252 (and (inv!97277 acc!1298) e!4744086)))

(assert (=> start!758252 tp_is_empty!54859))

(assert (=> start!758252 tp_is_empty!54861))

(assert (= (and start!758252 res!3183455) b!8051251))

(assert (= (and b!8051251 res!3183460) b!8051243))

(assert (= (and b!8051243 res!3183459) b!8051239))

(assert (= (and b!8051239 res!3183458) b!8051247))

(assert (= (and b!8051243 (not res!3183453)) b!8051241))

(assert (= (and b!8051241 res!3183456) b!8051248))

(assert (= (and b!8051248 res!3183452) b!8051246))

(assert (= (and b!8051243 res!3183461) b!8051242))

(assert (= (and b!8051242 res!3183454) b!8051244))

(assert (= (and b!8051244 res!3183457) b!8051245))

(assert (= (and b!8051245 (not res!3183451)) b!8051250))

(assert (= (and start!758252 ((_ is Cons!75526) l!14636)) b!8051249))

(assert (= start!758252 b!8051240))

(declare-fun m!8402216 () Bool)

(assert (=> b!8051250 m!8402216))

(declare-fun m!8402218 () Bool)

(assert (=> b!8051241 m!8402218))

(declare-fun m!8402220 () Bool)

(assert (=> b!8051251 m!8402220))

(assert (=> b!8051251 m!8402220))

(declare-fun m!8402222 () Bool)

(assert (=> b!8051251 m!8402222))

(declare-fun m!8402224 () Bool)

(assert (=> b!8051239 m!8402224))

(assert (=> b!8051247 m!8402218))

(declare-fun m!8402226 () Bool)

(assert (=> b!8051244 m!8402226))

(assert (=> b!8051244 m!8402226))

(declare-fun m!8402228 () Bool)

(assert (=> b!8051244 m!8402228))

(declare-fun m!8402230 () Bool)

(assert (=> start!758252 m!8402230))

(declare-fun m!8402232 () Bool)

(assert (=> start!758252 m!8402232))

(declare-fun m!8402234 () Bool)

(assert (=> b!8051245 m!8402234))

(declare-fun m!8402236 () Bool)

(assert (=> b!8051245 m!8402236))

(declare-fun m!8402238 () Bool)

(assert (=> b!8051243 m!8402238))

(declare-fun m!8402240 () Bool)

(assert (=> b!8051248 m!8402240))

(check-sat (not b!8051245) (not b!8051239) (not b!8051240) tp_is_empty!54861 (not b!8051251) tp_is_empty!54859 (not start!758252) (not b!8051241) (not b!8051249) (not b!8051248) (not b!8051250) (not b!8051244) (not b!8051243) (not b!8051247))
(check-sat)
(get-model)

(declare-fun d!2397240 () Bool)

(declare-fun res!3183470 () Bool)

(declare-fun e!4744097 () Bool)

(assert (=> d!2397240 (=> res!3183470 e!4744097)))

(assert (=> d!2397240 (= res!3183470 (and ((_ is Cons!75526) l!14636) (= (_1!38737 (h!81974 l!14636)) key!6222)))))

(assert (=> d!2397240 (= (containsKey!4833 l!14636 key!6222) e!4744097)))

(declare-fun b!8051260 () Bool)

(declare-fun e!4744098 () Bool)

(assert (=> b!8051260 (= e!4744097 e!4744098)))

(declare-fun res!3183471 () Bool)

(assert (=> b!8051260 (=> (not res!3183471) (not e!4744098))))

(assert (=> b!8051260 (= res!3183471 ((_ is Cons!75526) l!14636))))

(declare-fun b!8051261 () Bool)

(assert (=> b!8051261 (= e!4744098 (containsKey!4833 (t!391424 l!14636) key!6222))))

(assert (= (and d!2397240 (not res!3183470)) b!8051260))

(assert (= (and b!8051260 res!3183471) b!8051261))

(declare-fun m!8402242 () Bool)

(assert (=> b!8051261 m!8402242))

(assert (=> b!8051247 d!2397240))

(assert (=> b!8051241 d!2397240))

(declare-fun b!8051309 () Bool)

(declare-datatypes ((List!75654 0))(
  ( (Nil!75528) (Cons!75528 (h!81976 K!22788) (t!391426 List!75654)) )
))
(declare-fun e!4744132 () List!75654)

(declare-fun getKeysList!1233 (List!75652) List!75654)

(assert (=> b!8051309 (= e!4744132 (getKeysList!1233 (toList!11910 acc!1298)))))

(declare-fun b!8051310 () Bool)

(assert (=> b!8051310 false))

(declare-fun lt!2725177 () Unit!171511)

(declare-fun lt!2725180 () Unit!171511)

(assert (=> b!8051310 (= lt!2725177 lt!2725180)))

(declare-fun containsKey!4835 (List!75652 K!22788) Bool)

(assert (=> b!8051310 (containsKey!4835 (toList!11910 acc!1298) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1233 (List!75652 K!22788) Unit!171511)

(assert (=> b!8051310 (= lt!2725180 (lemmaInGetKeysListThenContainsKey!1233 (toList!11910 acc!1298) key!6222))))

(declare-fun e!4744135 () Unit!171511)

(declare-fun Unit!171516 () Unit!171511)

(assert (=> b!8051310 (= e!4744135 Unit!171516)))

(declare-fun bm!746960 () Bool)

(declare-fun call!746965 () Bool)

(declare-fun contains!21182 (List!75654 K!22788) Bool)

(assert (=> bm!746960 (= call!746965 (contains!21182 e!4744132 key!6222))))

(declare-fun c!1475878 () Bool)

(declare-fun c!1475877 () Bool)

(assert (=> bm!746960 (= c!1475878 c!1475877)))

(declare-fun b!8051311 () Bool)

(declare-fun e!4744136 () Bool)

(declare-fun keys!30818 (ListMap!7271) List!75654)

(assert (=> b!8051311 (= e!4744136 (contains!21182 (keys!30818 acc!1298) key!6222))))

(declare-fun b!8051312 () Bool)

(declare-fun e!4744133 () Bool)

(assert (=> b!8051312 (= e!4744133 (not (contains!21182 (keys!30818 acc!1298) key!6222)))))

(declare-fun b!8051313 () Bool)

(declare-fun e!4744134 () Unit!171511)

(assert (=> b!8051313 (= e!4744134 e!4744135)))

(declare-fun c!1475879 () Bool)

(assert (=> b!8051313 (= c!1475879 call!746965)))

(declare-fun b!8051314 () Bool)

(declare-fun e!4744131 () Bool)

(assert (=> b!8051314 (= e!4744131 e!4744136)))

(declare-fun res!3183489 () Bool)

(assert (=> b!8051314 (=> (not res!3183489) (not e!4744136))))

(declare-datatypes ((Option!17990 0))(
  ( (None!17989) (Some!17989 (v!55288 V!23042)) )
))
(declare-fun isDefined!14523 (Option!17990) Bool)

(declare-fun getValueByKey!2774 (List!75652 K!22788) Option!17990)

(assert (=> b!8051314 (= res!3183489 (isDefined!14523 (getValueByKey!2774 (toList!11910 acc!1298) key!6222)))))

(declare-fun d!2397244 () Bool)

(assert (=> d!2397244 e!4744131))

(declare-fun res!3183491 () Bool)

(assert (=> d!2397244 (=> res!3183491 e!4744131)))

(assert (=> d!2397244 (= res!3183491 e!4744133)))

(declare-fun res!3183490 () Bool)

(assert (=> d!2397244 (=> (not res!3183490) (not e!4744133))))

(declare-fun lt!2725178 () Bool)

(assert (=> d!2397244 (= res!3183490 (not lt!2725178))))

(declare-fun lt!2725179 () Bool)

(assert (=> d!2397244 (= lt!2725178 lt!2725179)))

(declare-fun lt!2725174 () Unit!171511)

(assert (=> d!2397244 (= lt!2725174 e!4744134)))

(assert (=> d!2397244 (= c!1475877 lt!2725179)))

(assert (=> d!2397244 (= lt!2725179 (containsKey!4835 (toList!11910 acc!1298) key!6222))))

(assert (=> d!2397244 (= (contains!21179 acc!1298 key!6222) lt!2725178)))

(declare-fun b!8051315 () Bool)

(declare-fun Unit!171518 () Unit!171511)

(assert (=> b!8051315 (= e!4744135 Unit!171518)))

(declare-fun b!8051316 () Bool)

(assert (=> b!8051316 (= e!4744132 (keys!30818 acc!1298))))

(declare-fun b!8051317 () Bool)

(declare-fun lt!2725175 () Unit!171511)

(assert (=> b!8051317 (= e!4744134 lt!2725175)))

(declare-fun lt!2725173 () Unit!171511)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2545 (List!75652 K!22788) Unit!171511)

(assert (=> b!8051317 (= lt!2725173 (lemmaContainsKeyImpliesGetValueByKeyDefined!2545 (toList!11910 acc!1298) key!6222))))

(assert (=> b!8051317 (isDefined!14523 (getValueByKey!2774 (toList!11910 acc!1298) key!6222))))

(declare-fun lt!2725176 () Unit!171511)

(assert (=> b!8051317 (= lt!2725176 lt!2725173)))

(declare-fun lemmaInListThenGetKeysListContains!1228 (List!75652 K!22788) Unit!171511)

(assert (=> b!8051317 (= lt!2725175 (lemmaInListThenGetKeysListContains!1228 (toList!11910 acc!1298) key!6222))))

(assert (=> b!8051317 call!746965))

(assert (= (and d!2397244 c!1475877) b!8051317))

(assert (= (and d!2397244 (not c!1475877)) b!8051313))

(assert (= (and b!8051313 c!1475879) b!8051310))

(assert (= (and b!8051313 (not c!1475879)) b!8051315))

(assert (= (or b!8051317 b!8051313) bm!746960))

(assert (= (and bm!746960 c!1475878) b!8051309))

(assert (= (and bm!746960 (not c!1475878)) b!8051316))

(assert (= (and d!2397244 res!3183490) b!8051312))

(assert (= (and d!2397244 (not res!3183491)) b!8051314))

(assert (= (and b!8051314 res!3183489) b!8051311))

(declare-fun m!8402266 () Bool)

(assert (=> b!8051312 m!8402266))

(assert (=> b!8051312 m!8402266))

(declare-fun m!8402268 () Bool)

(assert (=> b!8051312 m!8402268))

(declare-fun m!8402270 () Bool)

(assert (=> d!2397244 m!8402270))

(declare-fun m!8402272 () Bool)

(assert (=> bm!746960 m!8402272))

(assert (=> b!8051310 m!8402270))

(declare-fun m!8402274 () Bool)

(assert (=> b!8051310 m!8402274))

(assert (=> b!8051311 m!8402266))

(assert (=> b!8051311 m!8402266))

(assert (=> b!8051311 m!8402268))

(assert (=> b!8051316 m!8402266))

(declare-fun m!8402276 () Bool)

(assert (=> b!8051317 m!8402276))

(declare-fun m!8402278 () Bool)

(assert (=> b!8051317 m!8402278))

(assert (=> b!8051317 m!8402278))

(declare-fun m!8402280 () Bool)

(assert (=> b!8051317 m!8402280))

(declare-fun m!8402282 () Bool)

(assert (=> b!8051317 m!8402282))

(assert (=> b!8051314 m!8402278))

(assert (=> b!8051314 m!8402278))

(assert (=> b!8051314 m!8402280))

(declare-fun m!8402284 () Bool)

(assert (=> b!8051309 m!8402284))

(assert (=> b!8051243 d!2397244))

(declare-fun d!2397250 () Bool)

(declare-fun lt!2725187 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16098 (List!75652) (InoxSet tuple2!70868))

(assert (=> d!2397250 (= lt!2725187 (select (content!16098 l!14636) (tuple2!70869 key!6222 value!3131)))))

(declare-fun e!4744149 () Bool)

(assert (=> d!2397250 (= lt!2725187 e!4744149)))

(declare-fun res!3183504 () Bool)

(assert (=> d!2397250 (=> (not res!3183504) (not e!4744149))))

(assert (=> d!2397250 (= res!3183504 ((_ is Cons!75526) l!14636))))

(assert (=> d!2397250 (= (contains!21180 l!14636 (tuple2!70869 key!6222 value!3131)) lt!2725187)))

(declare-fun b!8051330 () Bool)

(declare-fun e!4744150 () Bool)

(assert (=> b!8051330 (= e!4744149 e!4744150)))

(declare-fun res!3183505 () Bool)

(assert (=> b!8051330 (=> res!3183505 e!4744150)))

(assert (=> b!8051330 (= res!3183505 (= (h!81974 l!14636) (tuple2!70869 key!6222 value!3131)))))

(declare-fun b!8051331 () Bool)

(assert (=> b!8051331 (= e!4744150 (contains!21180 (t!391424 l!14636) (tuple2!70869 key!6222 value!3131)))))

(assert (= (and d!2397250 res!3183504) b!8051330))

(assert (= (and b!8051330 (not res!3183505)) b!8051331))

(declare-fun m!8402296 () Bool)

(assert (=> d!2397250 m!8402296))

(declare-fun m!8402298 () Bool)

(assert (=> d!2397250 m!8402298))

(assert (=> b!8051331 m!8402234))

(assert (=> b!8051248 d!2397250))

(declare-fun d!2397256 () Bool)

(declare-fun get!27202 (Option!17990) V!23042)

(assert (=> d!2397256 (= (apply!14423 acc!1298 key!6222) (get!27202 (getValueByKey!2774 (toList!11910 acc!1298) key!6222)))))

(declare-fun bs!1971992 () Bool)

(assert (= bs!1971992 d!2397256))

(assert (=> bs!1971992 m!8402278))

(assert (=> bs!1971992 m!8402278))

(declare-fun m!8402302 () Bool)

(assert (=> bs!1971992 m!8402302))

(assert (=> b!8051239 d!2397256))

(declare-fun d!2397260 () Bool)

(declare-fun res!3183513 () Bool)

(declare-fun e!4744161 () Bool)

(assert (=> d!2397260 (=> res!3183513 e!4744161)))

(assert (=> d!2397260 (= res!3183513 (not ((_ is Cons!75526) (t!391424 l!14636))))))

(assert (=> d!2397260 (= (noDuplicateKeys!2696 (t!391424 l!14636)) e!4744161)))

(declare-fun b!8051345 () Bool)

(declare-fun e!4744162 () Bool)

(assert (=> b!8051345 (= e!4744161 e!4744162)))

(declare-fun res!3183514 () Bool)

(assert (=> b!8051345 (=> (not res!3183514) (not e!4744162))))

(assert (=> b!8051345 (= res!3183514 (not (containsKey!4833 (t!391424 (t!391424 l!14636)) (_1!38737 (h!81974 (t!391424 l!14636))))))))

(declare-fun b!8051346 () Bool)

(assert (=> b!8051346 (= e!4744162 (noDuplicateKeys!2696 (t!391424 (t!391424 l!14636))))))

(assert (= (and d!2397260 (not res!3183513)) b!8051345))

(assert (= (and b!8051345 res!3183514) b!8051346))

(declare-fun m!8402324 () Bool)

(assert (=> b!8051345 m!8402324))

(declare-fun m!8402326 () Bool)

(assert (=> b!8051346 m!8402326))

(assert (=> b!8051250 d!2397260))

(declare-fun b!8051385 () Bool)

(assert (=> b!8051385 true))

(declare-fun bs!1972008 () Bool)

(declare-fun b!8051387 () Bool)

(assert (= bs!1972008 (and b!8051387 b!8051385)))

(declare-fun lambda!473293 () Int)

(declare-fun lambda!473292 () Int)

(assert (=> bs!1972008 (= lambda!473293 lambda!473292)))

(assert (=> b!8051387 true))

(declare-fun lambda!473294 () Int)

(declare-fun lt!2725351 () ListMap!7271)

(assert (=> bs!1972008 (= (= lt!2725351 (+!2661 acc!1298 (h!81974 l!14636))) (= lambda!473294 lambda!473292))))

(assert (=> b!8051387 (= (= lt!2725351 (+!2661 acc!1298 (h!81974 l!14636))) (= lambda!473294 lambda!473293))))

(assert (=> b!8051387 true))

(declare-fun bs!1972010 () Bool)

(declare-fun d!2397264 () Bool)

(assert (= bs!1972010 (and d!2397264 b!8051385)))

(declare-fun lt!2725355 () ListMap!7271)

(declare-fun lambda!473295 () Int)

(assert (=> bs!1972010 (= (= lt!2725355 (+!2661 acc!1298 (h!81974 l!14636))) (= lambda!473295 lambda!473292))))

(declare-fun bs!1972011 () Bool)

(assert (= bs!1972011 (and d!2397264 b!8051387)))

(assert (=> bs!1972011 (= (= lt!2725355 (+!2661 acc!1298 (h!81974 l!14636))) (= lambda!473295 lambda!473293))))

(assert (=> bs!1972011 (= (= lt!2725355 lt!2725351) (= lambda!473295 lambda!473294))))

(assert (=> d!2397264 true))

(declare-fun e!4744185 () ListMap!7271)

(assert (=> b!8051385 (= e!4744185 (+!2661 acc!1298 (h!81974 l!14636)))))

(declare-fun lt!2725353 () Unit!171511)

(declare-fun call!746986 () Unit!171511)

(assert (=> b!8051385 (= lt!2725353 call!746986)))

(declare-fun call!746985 () Bool)

(assert (=> b!8051385 call!746985))

(declare-fun lt!2725335 () Unit!171511)

(assert (=> b!8051385 (= lt!2725335 lt!2725353)))

(declare-fun call!746987 () Bool)

(assert (=> b!8051385 call!746987))

(declare-fun lt!2725349 () Unit!171511)

(declare-fun Unit!171528 () Unit!171511)

(assert (=> b!8051385 (= lt!2725349 Unit!171528)))

(declare-fun c!1475889 () Bool)

(declare-fun bm!746980 () Bool)

(declare-fun forall!18494 (List!75652 Int) Bool)

(assert (=> bm!746980 (= call!746985 (forall!18494 (ite c!1475889 (toList!11910 (+!2661 acc!1298 (h!81974 l!14636))) (t!391424 l!14636)) (ite c!1475889 lambda!473292 lambda!473294)))))

(declare-fun e!4744186 () Bool)

(assert (=> d!2397264 e!4744186))

(declare-fun res!3183537 () Bool)

(assert (=> d!2397264 (=> (not res!3183537) (not e!4744186))))

(assert (=> d!2397264 (= res!3183537 (forall!18494 (t!391424 l!14636) lambda!473295))))

(assert (=> d!2397264 (= lt!2725355 e!4744185)))

(assert (=> d!2397264 (= c!1475889 ((_ is Nil!75526) (t!391424 l!14636)))))

(assert (=> d!2397264 (noDuplicateKeys!2696 (t!391424 l!14636))))

(assert (=> d!2397264 (= (addToMapMapFromBucket!1977 (t!391424 l!14636) (+!2661 acc!1298 (h!81974 l!14636))) lt!2725355)))

(declare-fun b!8051386 () Bool)

(declare-fun res!3183538 () Bool)

(assert (=> b!8051386 (=> (not res!3183538) (not e!4744186))))

(assert (=> b!8051386 (= res!3183538 (forall!18494 (toList!11910 (+!2661 acc!1298 (h!81974 l!14636))) lambda!473295))))

(assert (=> b!8051387 (= e!4744185 lt!2725351)))

(declare-fun lt!2725337 () ListMap!7271)

(assert (=> b!8051387 (= lt!2725337 (+!2661 (+!2661 acc!1298 (h!81974 l!14636)) (h!81974 (t!391424 l!14636))))))

(assert (=> b!8051387 (= lt!2725351 (addToMapMapFromBucket!1977 (t!391424 (t!391424 l!14636)) (+!2661 (+!2661 acc!1298 (h!81974 l!14636)) (h!81974 (t!391424 l!14636)))))))

(declare-fun lt!2725357 () Unit!171511)

(assert (=> b!8051387 (= lt!2725357 call!746986)))

(assert (=> b!8051387 (forall!18494 (toList!11910 (+!2661 acc!1298 (h!81974 l!14636))) lambda!473293)))

(declare-fun lt!2725342 () Unit!171511)

(assert (=> b!8051387 (= lt!2725342 lt!2725357)))

(assert (=> b!8051387 (forall!18494 (toList!11910 lt!2725337) lambda!473294)))

(declare-fun lt!2725333 () Unit!171511)

(declare-fun Unit!171531 () Unit!171511)

(assert (=> b!8051387 (= lt!2725333 Unit!171531)))

(assert (=> b!8051387 (forall!18494 (t!391424 (t!391424 l!14636)) lambda!473294)))

(declare-fun lt!2725339 () Unit!171511)

(declare-fun Unit!171532 () Unit!171511)

(assert (=> b!8051387 (= lt!2725339 Unit!171532)))

(declare-fun lt!2725347 () Unit!171511)

(declare-fun Unit!171533 () Unit!171511)

(assert (=> b!8051387 (= lt!2725347 Unit!171533)))

(declare-fun lt!2725356 () Unit!171511)

(declare-fun forallContained!4648 (List!75652 Int tuple2!70868) Unit!171511)

(assert (=> b!8051387 (= lt!2725356 (forallContained!4648 (toList!11910 lt!2725337) lambda!473294 (h!81974 (t!391424 l!14636))))))

(assert (=> b!8051387 (contains!21179 lt!2725337 (_1!38737 (h!81974 (t!391424 l!14636))))))

(declare-fun lt!2725354 () Unit!171511)

(declare-fun Unit!171534 () Unit!171511)

(assert (=> b!8051387 (= lt!2725354 Unit!171534)))

(assert (=> b!8051387 (contains!21179 lt!2725351 (_1!38737 (h!81974 (t!391424 l!14636))))))

(declare-fun lt!2725341 () Unit!171511)

(declare-fun Unit!171535 () Unit!171511)

(assert (=> b!8051387 (= lt!2725341 Unit!171535)))

(assert (=> b!8051387 call!746985))

(declare-fun lt!2725334 () Unit!171511)

(declare-fun Unit!171536 () Unit!171511)

(assert (=> b!8051387 (= lt!2725334 Unit!171536)))

(assert (=> b!8051387 (forall!18494 (toList!11910 lt!2725337) lambda!473294)))

(declare-fun lt!2725336 () Unit!171511)

(declare-fun Unit!171537 () Unit!171511)

(assert (=> b!8051387 (= lt!2725336 Unit!171537)))

(declare-fun lt!2725348 () Unit!171511)

(declare-fun Unit!171538 () Unit!171511)

(assert (=> b!8051387 (= lt!2725348 Unit!171538)))

(declare-fun lt!2725346 () Unit!171511)

(declare-fun addForallContainsKeyThenBeforeAdding!1075 (ListMap!7271 ListMap!7271 K!22788 V!23042) Unit!171511)

(assert (=> b!8051387 (= lt!2725346 (addForallContainsKeyThenBeforeAdding!1075 (+!2661 acc!1298 (h!81974 l!14636)) lt!2725351 (_1!38737 (h!81974 (t!391424 l!14636))) (_2!38737 (h!81974 (t!391424 l!14636)))))))

(assert (=> b!8051387 (forall!18494 (toList!11910 (+!2661 acc!1298 (h!81974 l!14636))) lambda!473294)))

(declare-fun lt!2725350 () Unit!171511)

(assert (=> b!8051387 (= lt!2725350 lt!2725346)))

(assert (=> b!8051387 (forall!18494 (toList!11910 (+!2661 acc!1298 (h!81974 l!14636))) lambda!473294)))

(declare-fun lt!2725352 () Unit!171511)

(declare-fun Unit!171539 () Unit!171511)

(assert (=> b!8051387 (= lt!2725352 Unit!171539)))

(declare-fun res!3183541 () Bool)

(assert (=> b!8051387 (= res!3183541 (forall!18494 (t!391424 l!14636) lambda!473294))))

(declare-fun e!4744184 () Bool)

(assert (=> b!8051387 (=> (not res!3183541) (not e!4744184))))

(assert (=> b!8051387 e!4744184))

(declare-fun lt!2725343 () Unit!171511)

(declare-fun Unit!171540 () Unit!171511)

(assert (=> b!8051387 (= lt!2725343 Unit!171540)))

(declare-fun bm!746981 () Bool)

(assert (=> bm!746981 (= call!746987 (forall!18494 (toList!11910 (+!2661 acc!1298 (h!81974 l!14636))) (ite c!1475889 lambda!473292 lambda!473294)))))

(declare-fun b!8051388 () Bool)

(assert (=> b!8051388 (= e!4744184 call!746987)))

(declare-fun b!8051389 () Bool)

(declare-fun invariantList!1925 (List!75652) Bool)

(assert (=> b!8051389 (= e!4744186 (invariantList!1925 (toList!11910 lt!2725355)))))

(declare-fun bm!746982 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!1077 (ListMap!7271) Unit!171511)

(assert (=> bm!746982 (= call!746986 (lemmaContainsAllItsOwnKeys!1077 (+!2661 acc!1298 (h!81974 l!14636))))))

(assert (= (and d!2397264 c!1475889) b!8051385))

(assert (= (and d!2397264 (not c!1475889)) b!8051387))

(assert (= (and b!8051387 res!3183541) b!8051388))

(assert (= (or b!8051385 b!8051387) bm!746980))

(assert (= (or b!8051385 b!8051388) bm!746981))

(assert (= (or b!8051385 b!8051387) bm!746982))

(assert (= (and d!2397264 res!3183537) b!8051386))

(assert (= (and b!8051386 res!3183538) b!8051389))

(declare-fun m!8402408 () Bool)

(assert (=> d!2397264 m!8402408))

(assert (=> d!2397264 m!8402216))

(declare-fun m!8402410 () Bool)

(assert (=> b!8051386 m!8402410))

(declare-fun m!8402412 () Bool)

(assert (=> b!8051389 m!8402412))

(assert (=> bm!746982 m!8402226))

(declare-fun m!8402414 () Bool)

(assert (=> bm!746982 m!8402414))

(declare-fun m!8402416 () Bool)

(assert (=> bm!746980 m!8402416))

(declare-fun m!8402418 () Bool)

(assert (=> bm!746981 m!8402418))

(assert (=> b!8051387 m!8402226))

(declare-fun m!8402420 () Bool)

(assert (=> b!8051387 m!8402420))

(declare-fun m!8402422 () Bool)

(assert (=> b!8051387 m!8402422))

(assert (=> b!8051387 m!8402420))

(declare-fun m!8402424 () Bool)

(assert (=> b!8051387 m!8402424))

(declare-fun m!8402426 () Bool)

(assert (=> b!8051387 m!8402426))

(declare-fun m!8402428 () Bool)

(assert (=> b!8051387 m!8402428))

(declare-fun m!8402430 () Bool)

(assert (=> b!8051387 m!8402430))

(declare-fun m!8402434 () Bool)

(assert (=> b!8051387 m!8402434))

(declare-fun m!8402436 () Bool)

(assert (=> b!8051387 m!8402436))

(assert (=> b!8051387 m!8402430))

(assert (=> b!8051387 m!8402226))

(declare-fun m!8402438 () Bool)

(assert (=> b!8051387 m!8402438))

(assert (=> b!8051387 m!8402434))

(declare-fun m!8402440 () Bool)

(assert (=> b!8051387 m!8402440))

(declare-fun m!8402442 () Bool)

(assert (=> b!8051387 m!8402442))

(assert (=> b!8051244 d!2397264))

(declare-fun d!2397278 () Bool)

(declare-fun e!4744201 () Bool)

(assert (=> d!2397278 e!4744201))

(declare-fun res!3183554 () Bool)

(assert (=> d!2397278 (=> (not res!3183554) (not e!4744201))))

(declare-fun lt!2725366 () ListMap!7271)

(assert (=> d!2397278 (= res!3183554 (contains!21179 lt!2725366 (_1!38737 (h!81974 l!14636))))))

(declare-fun lt!2725368 () List!75652)

(assert (=> d!2397278 (= lt!2725366 (ListMap!7272 lt!2725368))))

(declare-fun lt!2725369 () Unit!171511)

(declare-fun lt!2725367 () Unit!171511)

(assert (=> d!2397278 (= lt!2725369 lt!2725367)))

(assert (=> d!2397278 (= (getValueByKey!2774 lt!2725368 (_1!38737 (h!81974 l!14636))) (Some!17989 (_2!38737 (h!81974 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1266 (List!75652 K!22788 V!23042) Unit!171511)

(assert (=> d!2397278 (= lt!2725367 (lemmaContainsTupThenGetReturnValue!1266 lt!2725368 (_1!38737 (h!81974 l!14636)) (_2!38737 (h!81974 l!14636))))))

(declare-fun insertNoDuplicatedKeys!774 (List!75652 K!22788 V!23042) List!75652)

(assert (=> d!2397278 (= lt!2725368 (insertNoDuplicatedKeys!774 (toList!11910 acc!1298) (_1!38737 (h!81974 l!14636)) (_2!38737 (h!81974 l!14636))))))

(assert (=> d!2397278 (= (+!2661 acc!1298 (h!81974 l!14636)) lt!2725366)))

(declare-fun b!8051410 () Bool)

(declare-fun res!3183555 () Bool)

(assert (=> b!8051410 (=> (not res!3183555) (not e!4744201))))

(assert (=> b!8051410 (= res!3183555 (= (getValueByKey!2774 (toList!11910 lt!2725366) (_1!38737 (h!81974 l!14636))) (Some!17989 (_2!38737 (h!81974 l!14636)))))))

(declare-fun b!8051411 () Bool)

(assert (=> b!8051411 (= e!4744201 (contains!21180 (toList!11910 lt!2725366) (h!81974 l!14636)))))

(assert (= (and d!2397278 res!3183554) b!8051410))

(assert (= (and b!8051410 res!3183555) b!8051411))

(declare-fun m!8402444 () Bool)

(assert (=> d!2397278 m!8402444))

(declare-fun m!8402446 () Bool)

(assert (=> d!2397278 m!8402446))

(declare-fun m!8402448 () Bool)

(assert (=> d!2397278 m!8402448))

(declare-fun m!8402450 () Bool)

(assert (=> d!2397278 m!8402450))

(declare-fun m!8402452 () Bool)

(assert (=> b!8051410 m!8402452))

(declare-fun m!8402454 () Bool)

(assert (=> b!8051411 m!8402454))

(assert (=> b!8051244 d!2397278))

(declare-fun b!8051412 () Bool)

(declare-fun e!4744203 () List!75654)

(assert (=> b!8051412 (= e!4744203 (getKeysList!1233 (toList!11910 (addToMapMapFromBucket!1977 l!14636 acc!1298))))))

(declare-fun b!8051413 () Bool)

(assert (=> b!8051413 false))

(declare-fun lt!2725374 () Unit!171511)

(declare-fun lt!2725377 () Unit!171511)

(assert (=> b!8051413 (= lt!2725374 lt!2725377)))

(assert (=> b!8051413 (containsKey!4835 (toList!11910 (addToMapMapFromBucket!1977 l!14636 acc!1298)) key!6222)))

(assert (=> b!8051413 (= lt!2725377 (lemmaInGetKeysListThenContainsKey!1233 (toList!11910 (addToMapMapFromBucket!1977 l!14636 acc!1298)) key!6222))))

(declare-fun e!4744206 () Unit!171511)

(declare-fun Unit!171545 () Unit!171511)

(assert (=> b!8051413 (= e!4744206 Unit!171545)))

(declare-fun bm!746983 () Bool)

(declare-fun call!746988 () Bool)

(assert (=> bm!746983 (= call!746988 (contains!21182 e!4744203 key!6222))))

(declare-fun c!1475891 () Bool)

(declare-fun c!1475890 () Bool)

(assert (=> bm!746983 (= c!1475891 c!1475890)))

(declare-fun b!8051414 () Bool)

(declare-fun e!4744207 () Bool)

(assert (=> b!8051414 (= e!4744207 (contains!21182 (keys!30818 (addToMapMapFromBucket!1977 l!14636 acc!1298)) key!6222))))

(declare-fun b!8051415 () Bool)

(declare-fun e!4744204 () Bool)

(assert (=> b!8051415 (= e!4744204 (not (contains!21182 (keys!30818 (addToMapMapFromBucket!1977 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8051416 () Bool)

(declare-fun e!4744205 () Unit!171511)

(assert (=> b!8051416 (= e!4744205 e!4744206)))

(declare-fun c!1475892 () Bool)

(assert (=> b!8051416 (= c!1475892 call!746988)))

(declare-fun b!8051417 () Bool)

(declare-fun e!4744202 () Bool)

(assert (=> b!8051417 (= e!4744202 e!4744207)))

(declare-fun res!3183556 () Bool)

(assert (=> b!8051417 (=> (not res!3183556) (not e!4744207))))

(assert (=> b!8051417 (= res!3183556 (isDefined!14523 (getValueByKey!2774 (toList!11910 (addToMapMapFromBucket!1977 l!14636 acc!1298)) key!6222)))))

(declare-fun d!2397280 () Bool)

(assert (=> d!2397280 e!4744202))

(declare-fun res!3183558 () Bool)

(assert (=> d!2397280 (=> res!3183558 e!4744202)))

(assert (=> d!2397280 (= res!3183558 e!4744204)))

(declare-fun res!3183557 () Bool)

(assert (=> d!2397280 (=> (not res!3183557) (not e!4744204))))

(declare-fun lt!2725375 () Bool)

(assert (=> d!2397280 (= res!3183557 (not lt!2725375))))

(declare-fun lt!2725376 () Bool)

(assert (=> d!2397280 (= lt!2725375 lt!2725376)))

(declare-fun lt!2725371 () Unit!171511)

(assert (=> d!2397280 (= lt!2725371 e!4744205)))

(assert (=> d!2397280 (= c!1475890 lt!2725376)))

(assert (=> d!2397280 (= lt!2725376 (containsKey!4835 (toList!11910 (addToMapMapFromBucket!1977 l!14636 acc!1298)) key!6222))))

(assert (=> d!2397280 (= (contains!21179 (addToMapMapFromBucket!1977 l!14636 acc!1298) key!6222) lt!2725375)))

(declare-fun b!8051418 () Bool)

(declare-fun Unit!171552 () Unit!171511)

(assert (=> b!8051418 (= e!4744206 Unit!171552)))

(declare-fun b!8051419 () Bool)

(assert (=> b!8051419 (= e!4744203 (keys!30818 (addToMapMapFromBucket!1977 l!14636 acc!1298)))))

(declare-fun b!8051420 () Bool)

(declare-fun lt!2725372 () Unit!171511)

(assert (=> b!8051420 (= e!4744205 lt!2725372)))

(declare-fun lt!2725370 () Unit!171511)

(assert (=> b!8051420 (= lt!2725370 (lemmaContainsKeyImpliesGetValueByKeyDefined!2545 (toList!11910 (addToMapMapFromBucket!1977 l!14636 acc!1298)) key!6222))))

(assert (=> b!8051420 (isDefined!14523 (getValueByKey!2774 (toList!11910 (addToMapMapFromBucket!1977 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2725373 () Unit!171511)

(assert (=> b!8051420 (= lt!2725373 lt!2725370)))

(assert (=> b!8051420 (= lt!2725372 (lemmaInListThenGetKeysListContains!1228 (toList!11910 (addToMapMapFromBucket!1977 l!14636 acc!1298)) key!6222))))

(assert (=> b!8051420 call!746988))

(assert (= (and d!2397280 c!1475890) b!8051420))

(assert (= (and d!2397280 (not c!1475890)) b!8051416))

(assert (= (and b!8051416 c!1475892) b!8051413))

(assert (= (and b!8051416 (not c!1475892)) b!8051418))

(assert (= (or b!8051420 b!8051416) bm!746983))

(assert (= (and bm!746983 c!1475891) b!8051412))

(assert (= (and bm!746983 (not c!1475891)) b!8051419))

(assert (= (and d!2397280 res!3183557) b!8051415))

(assert (= (and d!2397280 (not res!3183558)) b!8051417))

(assert (= (and b!8051417 res!3183556) b!8051414))

(assert (=> b!8051415 m!8402220))

(declare-fun m!8402456 () Bool)

(assert (=> b!8051415 m!8402456))

(assert (=> b!8051415 m!8402456))

(declare-fun m!8402458 () Bool)

(assert (=> b!8051415 m!8402458))

(declare-fun m!8402460 () Bool)

(assert (=> d!2397280 m!8402460))

(declare-fun m!8402462 () Bool)

(assert (=> bm!746983 m!8402462))

(assert (=> b!8051413 m!8402460))

(declare-fun m!8402464 () Bool)

(assert (=> b!8051413 m!8402464))

(assert (=> b!8051414 m!8402220))

(assert (=> b!8051414 m!8402456))

(assert (=> b!8051414 m!8402456))

(assert (=> b!8051414 m!8402458))

(assert (=> b!8051419 m!8402220))

(assert (=> b!8051419 m!8402456))

(declare-fun m!8402466 () Bool)

(assert (=> b!8051420 m!8402466))

(declare-fun m!8402468 () Bool)

(assert (=> b!8051420 m!8402468))

(assert (=> b!8051420 m!8402468))

(declare-fun m!8402470 () Bool)

(assert (=> b!8051420 m!8402470))

(declare-fun m!8402472 () Bool)

(assert (=> b!8051420 m!8402472))

(assert (=> b!8051417 m!8402468))

(assert (=> b!8051417 m!8402468))

(assert (=> b!8051417 m!8402470))

(declare-fun m!8402474 () Bool)

(assert (=> b!8051412 m!8402474))

(assert (=> b!8051251 d!2397280))

(declare-fun bs!1972013 () Bool)

(declare-fun b!8051421 () Bool)

(assert (= bs!1972013 (and b!8051421 b!8051385)))

(declare-fun lambda!473296 () Int)

(assert (=> bs!1972013 (= (= acc!1298 (+!2661 acc!1298 (h!81974 l!14636))) (= lambda!473296 lambda!473292))))

(declare-fun bs!1972014 () Bool)

(assert (= bs!1972014 (and b!8051421 b!8051387)))

(assert (=> bs!1972014 (= (= acc!1298 (+!2661 acc!1298 (h!81974 l!14636))) (= lambda!473296 lambda!473293))))

(assert (=> bs!1972014 (= (= acc!1298 lt!2725351) (= lambda!473296 lambda!473294))))

(declare-fun bs!1972015 () Bool)

(assert (= bs!1972015 (and b!8051421 d!2397264)))

(assert (=> bs!1972015 (= (= acc!1298 lt!2725355) (= lambda!473296 lambda!473295))))

(assert (=> b!8051421 true))

(declare-fun bs!1972016 () Bool)

(declare-fun b!8051423 () Bool)

(assert (= bs!1972016 (and b!8051423 d!2397264)))

(declare-fun lambda!473297 () Int)

(assert (=> bs!1972016 (= (= acc!1298 lt!2725355) (= lambda!473297 lambda!473295))))

(declare-fun bs!1972017 () Bool)

(assert (= bs!1972017 (and b!8051423 b!8051385)))

(assert (=> bs!1972017 (= (= acc!1298 (+!2661 acc!1298 (h!81974 l!14636))) (= lambda!473297 lambda!473292))))

(declare-fun bs!1972018 () Bool)

(assert (= bs!1972018 (and b!8051423 b!8051387)))

(assert (=> bs!1972018 (= (= acc!1298 lt!2725351) (= lambda!473297 lambda!473294))))

(declare-fun bs!1972019 () Bool)

(assert (= bs!1972019 (and b!8051423 b!8051421)))

(assert (=> bs!1972019 (= lambda!473297 lambda!473296)))

(assert (=> bs!1972018 (= (= acc!1298 (+!2661 acc!1298 (h!81974 l!14636))) (= lambda!473297 lambda!473293))))

(assert (=> b!8051423 true))

(declare-fun lt!2725392 () ListMap!7271)

(declare-fun lambda!473298 () Int)

(assert (=> bs!1972016 (= (= lt!2725392 lt!2725355) (= lambda!473298 lambda!473295))))

(assert (=> bs!1972017 (= (= lt!2725392 (+!2661 acc!1298 (h!81974 l!14636))) (= lambda!473298 lambda!473292))))

(assert (=> bs!1972018 (= (= lt!2725392 lt!2725351) (= lambda!473298 lambda!473294))))

(assert (=> bs!1972019 (= (= lt!2725392 acc!1298) (= lambda!473298 lambda!473296))))

(assert (=> bs!1972018 (= (= lt!2725392 (+!2661 acc!1298 (h!81974 l!14636))) (= lambda!473298 lambda!473293))))

(assert (=> b!8051423 (= (= lt!2725392 acc!1298) (= lambda!473298 lambda!473297))))

(assert (=> b!8051423 true))

(declare-fun bs!1972020 () Bool)

(declare-fun d!2397282 () Bool)

(assert (= bs!1972020 (and d!2397282 d!2397264)))

(declare-fun lambda!473299 () Int)

(declare-fun lt!2725396 () ListMap!7271)

(assert (=> bs!1972020 (= (= lt!2725396 lt!2725355) (= lambda!473299 lambda!473295))))

(declare-fun bs!1972021 () Bool)

(assert (= bs!1972021 (and d!2397282 b!8051385)))

(assert (=> bs!1972021 (= (= lt!2725396 (+!2661 acc!1298 (h!81974 l!14636))) (= lambda!473299 lambda!473292))))

(declare-fun bs!1972022 () Bool)

(assert (= bs!1972022 (and d!2397282 b!8051387)))

(assert (=> bs!1972022 (= (= lt!2725396 lt!2725351) (= lambda!473299 lambda!473294))))

(declare-fun bs!1972023 () Bool)

(assert (= bs!1972023 (and d!2397282 b!8051421)))

(assert (=> bs!1972023 (= (= lt!2725396 acc!1298) (= lambda!473299 lambda!473296))))

(declare-fun bs!1972024 () Bool)

(assert (= bs!1972024 (and d!2397282 b!8051423)))

(assert (=> bs!1972024 (= (= lt!2725396 lt!2725392) (= lambda!473299 lambda!473298))))

(assert (=> bs!1972022 (= (= lt!2725396 (+!2661 acc!1298 (h!81974 l!14636))) (= lambda!473299 lambda!473293))))

(assert (=> bs!1972024 (= (= lt!2725396 acc!1298) (= lambda!473299 lambda!473297))))

(assert (=> d!2397282 true))

(declare-fun e!4744209 () ListMap!7271)

(assert (=> b!8051421 (= e!4744209 acc!1298)))

(declare-fun lt!2725394 () Unit!171511)

(declare-fun call!746990 () Unit!171511)

(assert (=> b!8051421 (= lt!2725394 call!746990)))

(declare-fun call!746989 () Bool)

(assert (=> b!8051421 call!746989))

(declare-fun lt!2725380 () Unit!171511)

(assert (=> b!8051421 (= lt!2725380 lt!2725394)))

(declare-fun call!746991 () Bool)

(assert (=> b!8051421 call!746991))

(declare-fun lt!2725390 () Unit!171511)

(declare-fun Unit!171554 () Unit!171511)

(assert (=> b!8051421 (= lt!2725390 Unit!171554)))

(declare-fun bm!746984 () Bool)

(declare-fun c!1475893 () Bool)

(assert (=> bm!746984 (= call!746989 (forall!18494 (ite c!1475893 (toList!11910 acc!1298) l!14636) (ite c!1475893 lambda!473296 lambda!473298)))))

(declare-fun e!4744210 () Bool)

(assert (=> d!2397282 e!4744210))

(declare-fun res!3183559 () Bool)

(assert (=> d!2397282 (=> (not res!3183559) (not e!4744210))))

(assert (=> d!2397282 (= res!3183559 (forall!18494 l!14636 lambda!473299))))

(assert (=> d!2397282 (= lt!2725396 e!4744209)))

(assert (=> d!2397282 (= c!1475893 ((_ is Nil!75526) l!14636))))

(assert (=> d!2397282 (noDuplicateKeys!2696 l!14636)))

(assert (=> d!2397282 (= (addToMapMapFromBucket!1977 l!14636 acc!1298) lt!2725396)))

(declare-fun b!8051422 () Bool)

(declare-fun res!3183560 () Bool)

(assert (=> b!8051422 (=> (not res!3183560) (not e!4744210))))

(assert (=> b!8051422 (= res!3183560 (forall!18494 (toList!11910 acc!1298) lambda!473299))))

(assert (=> b!8051423 (= e!4744209 lt!2725392)))

(declare-fun lt!2725382 () ListMap!7271)

(assert (=> b!8051423 (= lt!2725382 (+!2661 acc!1298 (h!81974 l!14636)))))

(assert (=> b!8051423 (= lt!2725392 (addToMapMapFromBucket!1977 (t!391424 l!14636) (+!2661 acc!1298 (h!81974 l!14636))))))

(declare-fun lt!2725398 () Unit!171511)

(assert (=> b!8051423 (= lt!2725398 call!746990)))

(assert (=> b!8051423 (forall!18494 (toList!11910 acc!1298) lambda!473297)))

(declare-fun lt!2725385 () Unit!171511)

(assert (=> b!8051423 (= lt!2725385 lt!2725398)))

(assert (=> b!8051423 (forall!18494 (toList!11910 lt!2725382) lambda!473298)))

(declare-fun lt!2725378 () Unit!171511)

(declare-fun Unit!171555 () Unit!171511)

(assert (=> b!8051423 (= lt!2725378 Unit!171555)))

(assert (=> b!8051423 (forall!18494 (t!391424 l!14636) lambda!473298)))

(declare-fun lt!2725383 () Unit!171511)

(declare-fun Unit!171556 () Unit!171511)

(assert (=> b!8051423 (= lt!2725383 Unit!171556)))

(declare-fun lt!2725388 () Unit!171511)

(declare-fun Unit!171557 () Unit!171511)

(assert (=> b!8051423 (= lt!2725388 Unit!171557)))

(declare-fun lt!2725397 () Unit!171511)

(assert (=> b!8051423 (= lt!2725397 (forallContained!4648 (toList!11910 lt!2725382) lambda!473298 (h!81974 l!14636)))))

(assert (=> b!8051423 (contains!21179 lt!2725382 (_1!38737 (h!81974 l!14636)))))

(declare-fun lt!2725395 () Unit!171511)

(declare-fun Unit!171558 () Unit!171511)

(assert (=> b!8051423 (= lt!2725395 Unit!171558)))

(assert (=> b!8051423 (contains!21179 lt!2725392 (_1!38737 (h!81974 l!14636)))))

(declare-fun lt!2725384 () Unit!171511)

(declare-fun Unit!171559 () Unit!171511)

(assert (=> b!8051423 (= lt!2725384 Unit!171559)))

(assert (=> b!8051423 call!746989))

(declare-fun lt!2725379 () Unit!171511)

(declare-fun Unit!171560 () Unit!171511)

(assert (=> b!8051423 (= lt!2725379 Unit!171560)))

(assert (=> b!8051423 (forall!18494 (toList!11910 lt!2725382) lambda!473298)))

(declare-fun lt!2725381 () Unit!171511)

(declare-fun Unit!171561 () Unit!171511)

(assert (=> b!8051423 (= lt!2725381 Unit!171561)))

(declare-fun lt!2725389 () Unit!171511)

(declare-fun Unit!171562 () Unit!171511)

(assert (=> b!8051423 (= lt!2725389 Unit!171562)))

(declare-fun lt!2725387 () Unit!171511)

(assert (=> b!8051423 (= lt!2725387 (addForallContainsKeyThenBeforeAdding!1075 acc!1298 lt!2725392 (_1!38737 (h!81974 l!14636)) (_2!38737 (h!81974 l!14636))))))

(assert (=> b!8051423 (forall!18494 (toList!11910 acc!1298) lambda!473298)))

(declare-fun lt!2725391 () Unit!171511)

(assert (=> b!8051423 (= lt!2725391 lt!2725387)))

(assert (=> b!8051423 (forall!18494 (toList!11910 acc!1298) lambda!473298)))

(declare-fun lt!2725393 () Unit!171511)

(declare-fun Unit!171563 () Unit!171511)

(assert (=> b!8051423 (= lt!2725393 Unit!171563)))

(declare-fun res!3183561 () Bool)

(assert (=> b!8051423 (= res!3183561 (forall!18494 l!14636 lambda!473298))))

(declare-fun e!4744208 () Bool)

(assert (=> b!8051423 (=> (not res!3183561) (not e!4744208))))

(assert (=> b!8051423 e!4744208))

(declare-fun lt!2725386 () Unit!171511)

(declare-fun Unit!171564 () Unit!171511)

(assert (=> b!8051423 (= lt!2725386 Unit!171564)))

(declare-fun bm!746985 () Bool)

(assert (=> bm!746985 (= call!746991 (forall!18494 (toList!11910 acc!1298) (ite c!1475893 lambda!473296 lambda!473298)))))

(declare-fun b!8051424 () Bool)

(assert (=> b!8051424 (= e!4744208 call!746991)))

(declare-fun b!8051425 () Bool)

(assert (=> b!8051425 (= e!4744210 (invariantList!1925 (toList!11910 lt!2725396)))))

(declare-fun bm!746986 () Bool)

(assert (=> bm!746986 (= call!746990 (lemmaContainsAllItsOwnKeys!1077 acc!1298))))

(assert (= (and d!2397282 c!1475893) b!8051421))

(assert (= (and d!2397282 (not c!1475893)) b!8051423))

(assert (= (and b!8051423 res!3183561) b!8051424))

(assert (= (or b!8051421 b!8051423) bm!746984))

(assert (= (or b!8051421 b!8051424) bm!746985))

(assert (= (or b!8051421 b!8051423) bm!746986))

(assert (= (and d!2397282 res!3183559) b!8051422))

(assert (= (and b!8051422 res!3183560) b!8051425))

(declare-fun m!8402476 () Bool)

(assert (=> d!2397282 m!8402476))

(assert (=> d!2397282 m!8402230))

(declare-fun m!8402478 () Bool)

(assert (=> b!8051422 m!8402478))

(declare-fun m!8402480 () Bool)

(assert (=> b!8051425 m!8402480))

(declare-fun m!8402482 () Bool)

(assert (=> bm!746986 m!8402482))

(declare-fun m!8402484 () Bool)

(assert (=> bm!746984 m!8402484))

(declare-fun m!8402486 () Bool)

(assert (=> bm!746985 m!8402486))

(assert (=> b!8051423 m!8402226))

(declare-fun m!8402488 () Bool)

(assert (=> b!8051423 m!8402488))

(assert (=> b!8051423 m!8402226))

(assert (=> b!8051423 m!8402228))

(declare-fun m!8402490 () Bool)

(assert (=> b!8051423 m!8402490))

(declare-fun m!8402492 () Bool)

(assert (=> b!8051423 m!8402492))

(declare-fun m!8402494 () Bool)

(assert (=> b!8051423 m!8402494))

(declare-fun m!8402496 () Bool)

(assert (=> b!8051423 m!8402496))

(declare-fun m!8402498 () Bool)

(assert (=> b!8051423 m!8402498))

(assert (=> b!8051423 m!8402494))

(declare-fun m!8402500 () Bool)

(assert (=> b!8051423 m!8402500))

(assert (=> b!8051423 m!8402496))

(declare-fun m!8402502 () Bool)

(assert (=> b!8051423 m!8402502))

(declare-fun m!8402504 () Bool)

(assert (=> b!8051423 m!8402504))

(assert (=> b!8051251 d!2397282))

(declare-fun d!2397284 () Bool)

(declare-fun res!3183562 () Bool)

(declare-fun e!4744211 () Bool)

(assert (=> d!2397284 (=> res!3183562 e!4744211)))

(assert (=> d!2397284 (= res!3183562 (not ((_ is Cons!75526) l!14636)))))

(assert (=> d!2397284 (= (noDuplicateKeys!2696 l!14636) e!4744211)))

(declare-fun b!8051426 () Bool)

(declare-fun e!4744212 () Bool)

(assert (=> b!8051426 (= e!4744211 e!4744212)))

(declare-fun res!3183563 () Bool)

(assert (=> b!8051426 (=> (not res!3183563) (not e!4744212))))

(assert (=> b!8051426 (= res!3183563 (not (containsKey!4833 (t!391424 l!14636) (_1!38737 (h!81974 l!14636)))))))

(declare-fun b!8051427 () Bool)

(assert (=> b!8051427 (= e!4744212 (noDuplicateKeys!2696 (t!391424 l!14636)))))

(assert (= (and d!2397284 (not res!3183562)) b!8051426))

(assert (= (and b!8051426 res!3183563) b!8051427))

(declare-fun m!8402506 () Bool)

(assert (=> b!8051426 m!8402506))

(assert (=> b!8051427 m!8402216))

(assert (=> start!758252 d!2397284))

(declare-fun d!2397286 () Bool)

(assert (=> d!2397286 (= (inv!97277 acc!1298) (invariantList!1925 (toList!11910 acc!1298)))))

(declare-fun bs!1972025 () Bool)

(assert (= bs!1972025 d!2397286))

(declare-fun m!8402508 () Bool)

(assert (=> bs!1972025 m!8402508))

(assert (=> start!758252 d!2397286))

(declare-fun d!2397288 () Bool)

(declare-fun lt!2725399 () Bool)

(assert (=> d!2397288 (= lt!2725399 (select (content!16098 (t!391424 l!14636)) (tuple2!70869 key!6222 value!3131)))))

(declare-fun e!4744213 () Bool)

(assert (=> d!2397288 (= lt!2725399 e!4744213)))

(declare-fun res!3183564 () Bool)

(assert (=> d!2397288 (=> (not res!3183564) (not e!4744213))))

(assert (=> d!2397288 (= res!3183564 ((_ is Cons!75526) (t!391424 l!14636)))))

(assert (=> d!2397288 (= (contains!21180 (t!391424 l!14636) (tuple2!70869 key!6222 value!3131)) lt!2725399)))

(declare-fun b!8051428 () Bool)

(declare-fun e!4744214 () Bool)

(assert (=> b!8051428 (= e!4744213 e!4744214)))

(declare-fun res!3183565 () Bool)

(assert (=> b!8051428 (=> res!3183565 e!4744214)))

(assert (=> b!8051428 (= res!3183565 (= (h!81974 (t!391424 l!14636)) (tuple2!70869 key!6222 value!3131)))))

(declare-fun b!8051429 () Bool)

(assert (=> b!8051429 (= e!4744214 (contains!21180 (t!391424 (t!391424 l!14636)) (tuple2!70869 key!6222 value!3131)))))

(assert (= (and d!2397288 res!3183564) b!8051428))

(assert (= (and b!8051428 (not res!3183565)) b!8051429))

(declare-fun m!8402510 () Bool)

(assert (=> d!2397288 m!8402510))

(declare-fun m!8402512 () Bool)

(assert (=> d!2397288 m!8402512))

(declare-fun m!8402514 () Bool)

(assert (=> b!8051429 m!8402514))

(assert (=> b!8051245 d!2397288))

(declare-fun d!2397290 () Bool)

(assert (=> d!2397290 (not (contains!21180 (t!391424 l!14636) (tuple2!70869 key!6222 value!3131)))))

(declare-fun lt!2725402 () Unit!171511)

(declare-fun choose!60494 (List!75652 K!22788 V!23042) Unit!171511)

(assert (=> d!2397290 (= lt!2725402 (choose!60494 (t!391424 l!14636) key!6222 value!3131))))

(assert (=> d!2397290 (not (containsKey!4833 (t!391424 l!14636) key!6222))))

(assert (=> d!2397290 (= (lemmaNotContainsKeyThenCannotContainPair!16 (t!391424 l!14636) key!6222 value!3131) lt!2725402)))

(declare-fun bs!1972026 () Bool)

(assert (= bs!1972026 d!2397290))

(assert (=> bs!1972026 m!8402234))

(declare-fun m!8402516 () Bool)

(assert (=> bs!1972026 m!8402516))

(assert (=> bs!1972026 m!8402242))

(assert (=> b!8051245 d!2397290))

(declare-fun b!8051434 () Bool)

(declare-fun e!4744217 () Bool)

(declare-fun tp!2413648 () Bool)

(assert (=> b!8051434 (= e!4744217 (and tp_is_empty!54859 tp_is_empty!54861 tp!2413648))))

(assert (=> b!8051249 (= tp!2413641 e!4744217)))

(assert (= (and b!8051249 ((_ is Cons!75526) (t!391424 l!14636))) b!8051434))

(declare-fun e!4744218 () Bool)

(declare-fun tp!2413649 () Bool)

(declare-fun b!8051435 () Bool)

(assert (=> b!8051435 (= e!4744218 (and tp_is_empty!54859 tp_is_empty!54861 tp!2413649))))

(assert (=> b!8051240 (= tp!2413640 e!4744218)))

(assert (= (and b!8051240 ((_ is Cons!75526) (toList!11910 acc!1298))) b!8051435))

(check-sat (not b!8051414) (not bm!746982) (not d!2397288) tp_is_empty!54861 (not b!8051419) (not d!2397264) (not b!8051422) (not b!8051413) (not b!8051427) (not d!2397256) (not b!8051389) (not d!2397282) (not b!8051312) (not b!8051425) (not b!8051314) (not d!2397280) (not b!8051426) (not d!2397278) (not b!8051311) (not b!8051261) (not b!8051415) (not b!8051423) (not b!8051331) (not d!2397290) (not bm!746985) (not bm!746980) (not d!2397244) (not b!8051317) (not b!8051435) (not bm!746983) (not bm!746986) (not bm!746981) (not b!8051387) (not b!8051412) (not d!2397286) (not b!8051310) (not b!8051386) (not bm!746960) (not b!8051410) (not b!8051417) (not b!8051420) (not b!8051316) (not b!8051411) (not d!2397250) tp_is_empty!54859 (not b!8051346) (not b!8051345) (not b!8051429) (not bm!746984) (not b!8051434) (not b!8051309))
(check-sat)
