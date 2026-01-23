; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!758640 () Bool)

(assert start!758640)

(declare-fun b!8054183 () Bool)

(declare-fun res!3185294 () Bool)

(declare-fun e!4746051 () Bool)

(assert (=> b!8054183 (=> res!3185294 e!4746051)))

(declare-fun e!4746052 () Bool)

(assert (=> b!8054183 (= res!3185294 e!4746052)))

(declare-fun res!3185295 () Bool)

(assert (=> b!8054183 (=> (not res!3185295) (not e!4746052))))

(declare-datatypes ((V!23087 0))(
  ( (V!23088 (val!32939 Int)) )
))
(declare-fun lt!2727966 () V!23087)

(declare-fun value!3131 () V!23087)

(assert (=> b!8054183 (= res!3185295 (= lt!2727966 value!3131))))

(declare-fun b!8054184 () Bool)

(declare-fun e!4746060 () Bool)

(declare-fun e!4746053 () Bool)

(assert (=> b!8054184 (= e!4746060 e!4746053)))

(declare-fun res!3185303 () Bool)

(assert (=> b!8054184 (=> (not res!3185303) (not e!4746053))))

(declare-fun e!4746054 () Bool)

(assert (=> b!8054184 (= res!3185303 e!4746054)))

(declare-fun res!3185293 () Bool)

(assert (=> b!8054184 (=> res!3185293 e!4746054)))

(declare-fun e!4746058 () Bool)

(assert (=> b!8054184 (= res!3185293 e!4746058)))

(declare-fun res!3185300 () Bool)

(assert (=> b!8054184 (=> (not res!3185300) (not e!4746058))))

(declare-fun lt!2727969 () Bool)

(assert (=> b!8054184 (= res!3185300 (not lt!2727969))))

(declare-fun lt!2727964 () Bool)

(assert (=> b!8054184 (= lt!2727969 (not lt!2727964))))

(declare-datatypes ((K!22833 0))(
  ( (K!22834 (val!32940 Int)) )
))
(declare-datatypes ((tuple2!70904 0))(
  ( (tuple2!70905 (_1!38755 K!22833) (_2!38755 V!23087)) )
))
(declare-datatypes ((List!75684 0))(
  ( (Nil!75558) (Cons!75558 (h!82006 tuple2!70904) (t!391456 List!75684)) )
))
(declare-datatypes ((ListMap!7307 0))(
  ( (ListMap!7308 (toList!11928 List!75684)) )
))
(declare-fun acc!1298 () ListMap!7307)

(declare-fun key!6222 () K!22833)

(declare-fun contains!21229 (ListMap!7307 K!22833) Bool)

(assert (=> b!8054184 (= lt!2727964 (contains!21229 acc!1298 key!6222))))

(declare-fun b!8054185 () Bool)

(declare-fun res!3185289 () Bool)

(assert (=> b!8054185 (=> (not res!3185289) (not e!4746060))))

(declare-fun l!14636 () List!75684)

(declare-fun addToMapMapFromBucket!1995 (List!75684 ListMap!7307) ListMap!7307)

(assert (=> b!8054185 (= res!3185289 (contains!21229 (addToMapMapFromBucket!1995 l!14636 acc!1298) key!6222))))

(declare-fun b!8054186 () Bool)

(declare-fun e!4746059 () Bool)

(assert (=> b!8054186 (= e!4746053 e!4746059)))

(declare-fun res!3185291 () Bool)

(assert (=> b!8054186 (=> (not res!3185291) (not e!4746059))))

(assert (=> b!8054186 (= res!3185291 (and (not (= (_1!38755 (h!82006 l!14636)) key!6222)) (not lt!2727969)))))

(declare-fun lt!2727963 () ListMap!7307)

(declare-fun lt!2727968 () ListMap!7307)

(assert (=> b!8054186 (= lt!2727963 (addToMapMapFromBucket!1995 (t!391456 l!14636) lt!2727968))))

(declare-fun +!2679 (ListMap!7307 tuple2!70904) ListMap!7307)

(assert (=> b!8054186 (= lt!2727968 (+!2679 acc!1298 (h!82006 l!14636)))))

(declare-fun b!8054187 () Bool)

(declare-fun e!4746055 () Bool)

(declare-fun tp_is_empty!54931 () Bool)

(declare-fun tp_is_empty!54933 () Bool)

(declare-fun tp!2413808 () Bool)

(assert (=> b!8054187 (= e!4746055 (and tp_is_empty!54931 tp_is_empty!54933 tp!2413808))))

(declare-fun res!3185297 () Bool)

(assert (=> start!758640 (=> (not res!3185297) (not e!4746060))))

(declare-fun noDuplicateKeys!2714 (List!75684) Bool)

(assert (=> start!758640 (= res!3185297 (noDuplicateKeys!2714 l!14636))))

(assert (=> start!758640 e!4746060))

(assert (=> start!758640 e!4746055))

(declare-fun e!4746057 () Bool)

(declare-fun inv!97322 (ListMap!7307) Bool)

(assert (=> start!758640 (and (inv!97322 acc!1298) e!4746057)))

(assert (=> start!758640 tp_is_empty!54931))

(assert (=> start!758640 tp_is_empty!54933))

(declare-fun b!8054188 () Bool)

(declare-fun e!4746050 () Bool)

(assert (=> b!8054188 (= e!4746050 false)))

(declare-fun lt!2727961 () Bool)

(declare-fun lt!2727962 () tuple2!70904)

(declare-fun contains!21230 (List!75684 tuple2!70904) Bool)

(assert (=> b!8054188 (= lt!2727961 (contains!21230 (t!391456 l!14636) lt!2727962))))

(declare-fun b!8054189 () Bool)

(declare-fun containsKey!4865 (List!75684 K!22833) Bool)

(assert (=> b!8054189 (= e!4746058 (not (containsKey!4865 l!14636 key!6222)))))

(declare-fun b!8054190 () Bool)

(declare-fun e!4746056 () Bool)

(assert (=> b!8054190 (= e!4746056 (not lt!2727964))))

(declare-fun b!8054191 () Bool)

(declare-fun res!3185301 () Bool)

(assert (=> b!8054191 (=> (not res!3185301) (not e!4746056))))

(assert (=> b!8054191 (= res!3185301 (contains!21230 l!14636 (tuple2!70905 key!6222 value!3131)))))

(declare-fun b!8054192 () Bool)

(declare-fun res!3185299 () Bool)

(assert (=> b!8054192 (=> (not res!3185299) (not e!4746058))))

(declare-fun apply!14441 (ListMap!7307 K!22833) V!23087)

(assert (=> b!8054192 (= res!3185299 (= (apply!14441 acc!1298 key!6222) value!3131))))

(declare-fun b!8054193 () Bool)

(assert (=> b!8054193 (= e!4746054 e!4746056)))

(declare-fun res!3185298 () Bool)

(assert (=> b!8054193 (=> (not res!3185298) (not e!4746056))))

(assert (=> b!8054193 (= res!3185298 (containsKey!4865 l!14636 key!6222))))

(declare-fun b!8054194 () Bool)

(assert (=> b!8054194 (= e!4746051 e!4746050)))

(declare-fun res!3185290 () Bool)

(assert (=> b!8054194 (=> (not res!3185290) (not e!4746050))))

(assert (=> b!8054194 (= res!3185290 (containsKey!4865 (t!391456 l!14636) key!6222))))

(declare-fun b!8054195 () Bool)

(declare-fun res!3185296 () Bool)

(assert (=> b!8054195 (=> res!3185296 e!4746051)))

(assert (=> b!8054195 (= res!3185296 (not (contains!21229 lt!2727963 key!6222)))))

(declare-fun b!8054196 () Bool)

(declare-fun res!3185302 () Bool)

(assert (=> b!8054196 (=> (not res!3185302) (not e!4746053))))

(get-info :version)

(assert (=> b!8054196 (= res!3185302 (not ((_ is Nil!75558) l!14636)))))

(declare-fun b!8054197 () Bool)

(declare-fun tp!2413809 () Bool)

(assert (=> b!8054197 (= e!4746057 tp!2413809)))

(declare-fun b!8054198 () Bool)

(assert (=> b!8054198 (= e!4746059 (not e!4746051))))

(declare-fun res!3185292 () Bool)

(assert (=> b!8054198 (=> res!3185292 e!4746051)))

(assert (=> b!8054198 (= res!3185292 (not (noDuplicateKeys!2714 (t!391456 l!14636))))))

(assert (=> b!8054198 (not (contains!21230 l!14636 lt!2727962))))

(assert (=> b!8054198 (= lt!2727962 (tuple2!70905 key!6222 value!3131))))

(declare-datatypes ((Unit!172051 0))(
  ( (Unit!172052) )
))
(declare-fun lt!2727965 () Unit!172051)

(declare-fun lemmaNotContainsKeyThenCannotContainPair!30 (List!75684 K!22833 V!23087) Unit!172051)

(assert (=> b!8054198 (= lt!2727965 (lemmaNotContainsKeyThenCannotContainPair!30 l!14636 key!6222 value!3131))))

(assert (=> b!8054198 (= lt!2727966 (apply!14441 acc!1298 key!6222))))

(assert (=> b!8054198 (= lt!2727966 (apply!14441 lt!2727968 key!6222))))

(declare-fun lt!2727967 () Unit!172051)

(declare-fun addApplyDifferent!21 (ListMap!7307 K!22833 V!23087 K!22833) Unit!172051)

(assert (=> b!8054198 (= lt!2727967 (addApplyDifferent!21 acc!1298 (_1!38755 (h!82006 l!14636)) (_2!38755 (h!82006 l!14636)) key!6222))))

(assert (=> b!8054198 (contains!21229 lt!2727968 key!6222)))

(declare-fun lt!2727970 () Unit!172051)

(declare-fun addStillContains!47 (ListMap!7307 K!22833 V!23087 K!22833) Unit!172051)

(assert (=> b!8054198 (= lt!2727970 (addStillContains!47 acc!1298 (_1!38755 (h!82006 l!14636)) (_2!38755 (h!82006 l!14636)) key!6222))))

(declare-fun b!8054199 () Bool)

(assert (=> b!8054199 (= e!4746052 (not (containsKey!4865 (t!391456 l!14636) key!6222)))))

(assert (= (and start!758640 res!3185297) b!8054185))

(assert (= (and b!8054185 res!3185289) b!8054184))

(assert (= (and b!8054184 res!3185300) b!8054192))

(assert (= (and b!8054192 res!3185299) b!8054189))

(assert (= (and b!8054184 (not res!3185293)) b!8054193))

(assert (= (and b!8054193 res!3185298) b!8054191))

(assert (= (and b!8054191 res!3185301) b!8054190))

(assert (= (and b!8054184 res!3185303) b!8054196))

(assert (= (and b!8054196 res!3185302) b!8054186))

(assert (= (and b!8054186 res!3185291) b!8054198))

(assert (= (and b!8054198 (not res!3185292)) b!8054195))

(assert (= (and b!8054195 (not res!3185296)) b!8054183))

(assert (= (and b!8054183 res!3185295) b!8054199))

(assert (= (and b!8054183 (not res!3185294)) b!8054194))

(assert (= (and b!8054194 res!3185290) b!8054188))

(assert (= (and start!758640 ((_ is Cons!75558) l!14636)) b!8054187))

(assert (= start!758640 b!8054197))

(declare-fun m!8406506 () Bool)

(assert (=> b!8054198 m!8406506))

(declare-fun m!8406508 () Bool)

(assert (=> b!8054198 m!8406508))

(declare-fun m!8406510 () Bool)

(assert (=> b!8054198 m!8406510))

(declare-fun m!8406512 () Bool)

(assert (=> b!8054198 m!8406512))

(declare-fun m!8406514 () Bool)

(assert (=> b!8054198 m!8406514))

(declare-fun m!8406516 () Bool)

(assert (=> b!8054198 m!8406516))

(declare-fun m!8406518 () Bool)

(assert (=> b!8054198 m!8406518))

(declare-fun m!8406520 () Bool)

(assert (=> b!8054198 m!8406520))

(declare-fun m!8406522 () Bool)

(assert (=> b!8054189 m!8406522))

(assert (=> b!8054193 m!8406522))

(declare-fun m!8406524 () Bool)

(assert (=> b!8054185 m!8406524))

(assert (=> b!8054185 m!8406524))

(declare-fun m!8406526 () Bool)

(assert (=> b!8054185 m!8406526))

(declare-fun m!8406528 () Bool)

(assert (=> start!758640 m!8406528))

(declare-fun m!8406530 () Bool)

(assert (=> start!758640 m!8406530))

(declare-fun m!8406532 () Bool)

(assert (=> b!8054195 m!8406532))

(declare-fun m!8406534 () Bool)

(assert (=> b!8054199 m!8406534))

(declare-fun m!8406536 () Bool)

(assert (=> b!8054184 m!8406536))

(declare-fun m!8406538 () Bool)

(assert (=> b!8054186 m!8406538))

(declare-fun m!8406540 () Bool)

(assert (=> b!8054186 m!8406540))

(assert (=> b!8054194 m!8406534))

(assert (=> b!8054192 m!8406514))

(declare-fun m!8406542 () Bool)

(assert (=> b!8054191 m!8406542))

(declare-fun m!8406544 () Bool)

(assert (=> b!8054188 m!8406544))

(check-sat (not b!8054187) (not b!8054186) (not b!8054197) (not b!8054191) (not b!8054189) (not b!8054198) (not start!758640) tp_is_empty!54931 (not b!8054199) (not b!8054192) tp_is_empty!54933 (not b!8054188) (not b!8054184) (not b!8054195) (not b!8054193) (not b!8054185) (not b!8054194))
(check-sat)
(get-model)

(declare-fun d!2398129 () Bool)

(declare-fun lt!2727975 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!16114 (List!75684) (InoxSet tuple2!70904))

(assert (=> d!2398129 (= lt!2727975 (select (content!16114 l!14636) (tuple2!70905 key!6222 value!3131)))))

(declare-fun e!4746070 () Bool)

(assert (=> d!2398129 (= lt!2727975 e!4746070)))

(declare-fun res!3185313 () Bool)

(assert (=> d!2398129 (=> (not res!3185313) (not e!4746070))))

(assert (=> d!2398129 (= res!3185313 ((_ is Cons!75558) l!14636))))

(assert (=> d!2398129 (= (contains!21230 l!14636 (tuple2!70905 key!6222 value!3131)) lt!2727975)))

(declare-fun b!8054208 () Bool)

(declare-fun e!4746069 () Bool)

(assert (=> b!8054208 (= e!4746070 e!4746069)))

(declare-fun res!3185312 () Bool)

(assert (=> b!8054208 (=> res!3185312 e!4746069)))

(assert (=> b!8054208 (= res!3185312 (= (h!82006 l!14636) (tuple2!70905 key!6222 value!3131)))))

(declare-fun b!8054209 () Bool)

(assert (=> b!8054209 (= e!4746069 (contains!21230 (t!391456 l!14636) (tuple2!70905 key!6222 value!3131)))))

(assert (= (and d!2398129 res!3185313) b!8054208))

(assert (= (and b!8054208 (not res!3185312)) b!8054209))

(declare-fun m!8406546 () Bool)

(assert (=> d!2398129 m!8406546))

(declare-fun m!8406548 () Bool)

(assert (=> d!2398129 m!8406548))

(declare-fun m!8406550 () Bool)

(assert (=> b!8054209 m!8406550))

(assert (=> b!8054191 d!2398129))

(declare-fun d!2398133 () Bool)

(declare-fun res!3185320 () Bool)

(declare-fun e!4746077 () Bool)

(assert (=> d!2398133 (=> res!3185320 e!4746077)))

(assert (=> d!2398133 (= res!3185320 (not ((_ is Cons!75558) l!14636)))))

(assert (=> d!2398133 (= (noDuplicateKeys!2714 l!14636) e!4746077)))

(declare-fun b!8054216 () Bool)

(declare-fun e!4746078 () Bool)

(assert (=> b!8054216 (= e!4746077 e!4746078)))

(declare-fun res!3185321 () Bool)

(assert (=> b!8054216 (=> (not res!3185321) (not e!4746078))))

(assert (=> b!8054216 (= res!3185321 (not (containsKey!4865 (t!391456 l!14636) (_1!38755 (h!82006 l!14636)))))))

(declare-fun b!8054217 () Bool)

(assert (=> b!8054217 (= e!4746078 (noDuplicateKeys!2714 (t!391456 l!14636)))))

(assert (= (and d!2398133 (not res!3185320)) b!8054216))

(assert (= (and b!8054216 res!3185321) b!8054217))

(declare-fun m!8406558 () Bool)

(assert (=> b!8054216 m!8406558))

(assert (=> b!8054217 m!8406520))

(assert (=> start!758640 d!2398133))

(declare-fun d!2398137 () Bool)

(declare-fun invariantList!1939 (List!75684) Bool)

(assert (=> d!2398137 (= (inv!97322 acc!1298) (invariantList!1939 (toList!11928 acc!1298)))))

(declare-fun bs!1972863 () Bool)

(assert (= bs!1972863 d!2398137))

(declare-fun m!8406560 () Bool)

(assert (=> bs!1972863 m!8406560))

(assert (=> start!758640 d!2398137))

(declare-fun d!2398139 () Bool)

(declare-fun res!3185326 () Bool)

(declare-fun e!4746083 () Bool)

(assert (=> d!2398139 (=> res!3185326 e!4746083)))

(assert (=> d!2398139 (= res!3185326 (and ((_ is Cons!75558) l!14636) (= (_1!38755 (h!82006 l!14636)) key!6222)))))

(assert (=> d!2398139 (= (containsKey!4865 l!14636 key!6222) e!4746083)))

(declare-fun b!8054222 () Bool)

(declare-fun e!4746084 () Bool)

(assert (=> b!8054222 (= e!4746083 e!4746084)))

(declare-fun res!3185327 () Bool)

(assert (=> b!8054222 (=> (not res!3185327) (not e!4746084))))

(assert (=> b!8054222 (= res!3185327 ((_ is Cons!75558) l!14636))))

(declare-fun b!8054223 () Bool)

(assert (=> b!8054223 (= e!4746084 (containsKey!4865 (t!391456 l!14636) key!6222))))

(assert (= (and d!2398139 (not res!3185326)) b!8054222))

(assert (= (and b!8054222 res!3185327) b!8054223))

(assert (=> b!8054223 m!8406534))

(assert (=> b!8054189 d!2398139))

(assert (=> b!8054193 d!2398139))

(declare-fun d!2398141 () Bool)

(declare-datatypes ((Option!18004 0))(
  ( (None!18003) (Some!18003 (v!55334 V!23087)) )
))
(declare-fun get!27225 (Option!18004) V!23087)

(declare-fun getValueByKey!2788 (List!75684 K!22833) Option!18004)

(assert (=> d!2398141 (= (apply!14441 acc!1298 key!6222) (get!27225 (getValueByKey!2788 (toList!11928 acc!1298) key!6222)))))

(declare-fun bs!1972864 () Bool)

(assert (= bs!1972864 d!2398141))

(declare-fun m!8406562 () Bool)

(assert (=> bs!1972864 m!8406562))

(assert (=> bs!1972864 m!8406562))

(declare-fun m!8406564 () Bool)

(assert (=> bs!1972864 m!8406564))

(assert (=> b!8054192 d!2398141))

(declare-fun b!8054269 () Bool)

(declare-fun e!4746120 () Bool)

(declare-datatypes ((List!75686 0))(
  ( (Nil!75560) (Cons!75560 (h!82008 K!22833) (t!391458 List!75686)) )
))
(declare-fun contains!21232 (List!75686 K!22833) Bool)

(declare-fun keys!30850 (ListMap!7307) List!75686)

(assert (=> b!8054269 (= e!4746120 (not (contains!21232 (keys!30850 (addToMapMapFromBucket!1995 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8054270 () Bool)

(declare-fun e!4746116 () List!75686)

(assert (=> b!8054270 (= e!4746116 (keys!30850 (addToMapMapFromBucket!1995 l!14636 acc!1298)))))

(declare-fun d!2398143 () Bool)

(declare-fun e!4746118 () Bool)

(assert (=> d!2398143 e!4746118))

(declare-fun res!3185344 () Bool)

(assert (=> d!2398143 (=> res!3185344 e!4746118)))

(assert (=> d!2398143 (= res!3185344 e!4746120)))

(declare-fun res!3185343 () Bool)

(assert (=> d!2398143 (=> (not res!3185343) (not e!4746120))))

(declare-fun lt!2728024 () Bool)

(assert (=> d!2398143 (= res!3185343 (not lt!2728024))))

(declare-fun lt!2728022 () Bool)

(assert (=> d!2398143 (= lt!2728024 lt!2728022)))

(declare-fun lt!2728018 () Unit!172051)

(declare-fun e!4746119 () Unit!172051)

(assert (=> d!2398143 (= lt!2728018 e!4746119)))

(declare-fun c!1476310 () Bool)

(assert (=> d!2398143 (= c!1476310 lt!2728022)))

(declare-fun containsKey!4867 (List!75684 K!22833) Bool)

(assert (=> d!2398143 (= lt!2728022 (containsKey!4867 (toList!11928 (addToMapMapFromBucket!1995 l!14636 acc!1298)) key!6222))))

(assert (=> d!2398143 (= (contains!21229 (addToMapMapFromBucket!1995 l!14636 acc!1298) key!6222) lt!2728024)))

(declare-fun bm!747250 () Bool)

(declare-fun call!747255 () Bool)

(assert (=> bm!747250 (= call!747255 (contains!21232 e!4746116 key!6222))))

(declare-fun c!1476309 () Bool)

(assert (=> bm!747250 (= c!1476309 c!1476310)))

(declare-fun b!8054271 () Bool)

(assert (=> b!8054271 false))

(declare-fun lt!2728017 () Unit!172051)

(declare-fun lt!2728021 () Unit!172051)

(assert (=> b!8054271 (= lt!2728017 lt!2728021)))

(assert (=> b!8054271 (containsKey!4867 (toList!11928 (addToMapMapFromBucket!1995 l!14636 acc!1298)) key!6222)))

(declare-fun lemmaInGetKeysListThenContainsKey!1247 (List!75684 K!22833) Unit!172051)

(assert (=> b!8054271 (= lt!2728021 (lemmaInGetKeysListThenContainsKey!1247 (toList!11928 (addToMapMapFromBucket!1995 l!14636 acc!1298)) key!6222))))

(declare-fun e!4746117 () Unit!172051)

(declare-fun Unit!172066 () Unit!172051)

(assert (=> b!8054271 (= e!4746117 Unit!172066)))

(declare-fun b!8054272 () Bool)

(declare-fun getKeysList!1247 (List!75684) List!75686)

(assert (=> b!8054272 (= e!4746116 (getKeysList!1247 (toList!11928 (addToMapMapFromBucket!1995 l!14636 acc!1298))))))

(declare-fun b!8054273 () Bool)

(declare-fun Unit!172067 () Unit!172051)

(assert (=> b!8054273 (= e!4746117 Unit!172067)))

(declare-fun e!4746115 () Bool)

(declare-fun b!8054274 () Bool)

(assert (=> b!8054274 (= e!4746115 (contains!21232 (keys!30850 (addToMapMapFromBucket!1995 l!14636 acc!1298)) key!6222))))

(declare-fun b!8054275 () Bool)

(declare-fun lt!2728023 () Unit!172051)

(assert (=> b!8054275 (= e!4746119 lt!2728023)))

(declare-fun lt!2728019 () Unit!172051)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2559 (List!75684 K!22833) Unit!172051)

(assert (=> b!8054275 (= lt!2728019 (lemmaContainsKeyImpliesGetValueByKeyDefined!2559 (toList!11928 (addToMapMapFromBucket!1995 l!14636 acc!1298)) key!6222))))

(declare-fun isDefined!14537 (Option!18004) Bool)

(assert (=> b!8054275 (isDefined!14537 (getValueByKey!2788 (toList!11928 (addToMapMapFromBucket!1995 l!14636 acc!1298)) key!6222))))

(declare-fun lt!2728020 () Unit!172051)

(assert (=> b!8054275 (= lt!2728020 lt!2728019)))

(declare-fun lemmaInListThenGetKeysListContains!1242 (List!75684 K!22833) Unit!172051)

(assert (=> b!8054275 (= lt!2728023 (lemmaInListThenGetKeysListContains!1242 (toList!11928 (addToMapMapFromBucket!1995 l!14636 acc!1298)) key!6222))))

(assert (=> b!8054275 call!747255))

(declare-fun b!8054276 () Bool)

(assert (=> b!8054276 (= e!4746118 e!4746115)))

(declare-fun res!3185345 () Bool)

(assert (=> b!8054276 (=> (not res!3185345) (not e!4746115))))

(assert (=> b!8054276 (= res!3185345 (isDefined!14537 (getValueByKey!2788 (toList!11928 (addToMapMapFromBucket!1995 l!14636 acc!1298)) key!6222)))))

(declare-fun b!8054277 () Bool)

(assert (=> b!8054277 (= e!4746119 e!4746117)))

(declare-fun c!1476311 () Bool)

(assert (=> b!8054277 (= c!1476311 call!747255)))

(assert (= (and d!2398143 c!1476310) b!8054275))

(assert (= (and d!2398143 (not c!1476310)) b!8054277))

(assert (= (and b!8054277 c!1476311) b!8054271))

(assert (= (and b!8054277 (not c!1476311)) b!8054273))

(assert (= (or b!8054275 b!8054277) bm!747250))

(assert (= (and bm!747250 c!1476309) b!8054272))

(assert (= (and bm!747250 (not c!1476309)) b!8054270))

(assert (= (and d!2398143 res!3185343) b!8054269))

(assert (= (and d!2398143 (not res!3185344)) b!8054276))

(assert (= (and b!8054276 res!3185345) b!8054274))

(declare-fun m!8406586 () Bool)

(assert (=> d!2398143 m!8406586))

(assert (=> b!8054270 m!8406524))

(declare-fun m!8406588 () Bool)

(assert (=> b!8054270 m!8406588))

(assert (=> b!8054269 m!8406524))

(assert (=> b!8054269 m!8406588))

(assert (=> b!8054269 m!8406588))

(declare-fun m!8406590 () Bool)

(assert (=> b!8054269 m!8406590))

(declare-fun m!8406592 () Bool)

(assert (=> b!8054275 m!8406592))

(declare-fun m!8406594 () Bool)

(assert (=> b!8054275 m!8406594))

(assert (=> b!8054275 m!8406594))

(declare-fun m!8406596 () Bool)

(assert (=> b!8054275 m!8406596))

(declare-fun m!8406598 () Bool)

(assert (=> b!8054275 m!8406598))

(declare-fun m!8406600 () Bool)

(assert (=> bm!747250 m!8406600))

(assert (=> b!8054271 m!8406586))

(declare-fun m!8406602 () Bool)

(assert (=> b!8054271 m!8406602))

(declare-fun m!8406604 () Bool)

(assert (=> b!8054272 m!8406604))

(assert (=> b!8054276 m!8406594))

(assert (=> b!8054276 m!8406594))

(assert (=> b!8054276 m!8406596))

(assert (=> b!8054274 m!8406524))

(assert (=> b!8054274 m!8406588))

(assert (=> b!8054274 m!8406588))

(assert (=> b!8054274 m!8406590))

(assert (=> b!8054185 d!2398143))

(declare-fun b!8054334 () Bool)

(assert (=> b!8054334 true))

(declare-fun bs!1972871 () Bool)

(declare-fun b!8054337 () Bool)

(assert (= bs!1972871 (and b!8054337 b!8054334)))

(declare-fun lambda!473901 () Int)

(declare-fun lambda!473900 () Int)

(assert (=> bs!1972871 (= lambda!473901 lambda!473900)))

(assert (=> b!8054337 true))

(declare-fun lt!2728168 () ListMap!7307)

(declare-fun lambda!473902 () Int)

(assert (=> bs!1972871 (= (= lt!2728168 acc!1298) (= lambda!473902 lambda!473900))))

(assert (=> b!8054337 (= (= lt!2728168 acc!1298) (= lambda!473902 lambda!473901))))

(assert (=> b!8054337 true))

(declare-fun bs!1972873 () Bool)

(declare-fun d!2398147 () Bool)

(assert (= bs!1972873 (and d!2398147 b!8054334)))

(declare-fun lambda!473903 () Int)

(declare-fun lt!2728159 () ListMap!7307)

(assert (=> bs!1972873 (= (= lt!2728159 acc!1298) (= lambda!473903 lambda!473900))))

(declare-fun bs!1972874 () Bool)

(assert (= bs!1972874 (and d!2398147 b!8054337)))

(assert (=> bs!1972874 (= (= lt!2728159 acc!1298) (= lambda!473903 lambda!473901))))

(assert (=> bs!1972874 (= (= lt!2728159 lt!2728168) (= lambda!473903 lambda!473902))))

(assert (=> d!2398147 true))

(declare-fun c!1476320 () Bool)

(declare-fun lt!2728172 () ListMap!7307)

(declare-fun call!747272 () Bool)

(declare-fun bm!747267 () Bool)

(declare-fun forall!18510 (List!75684 Int) Bool)

(assert (=> bm!747267 (= call!747272 (forall!18510 (ite c!1476320 (toList!11928 acc!1298) (toList!11928 lt!2728172)) (ite c!1476320 lambda!473900 lambda!473902)))))

(declare-fun bm!747268 () Bool)

(declare-fun call!747274 () Unit!172051)

(declare-fun lemmaContainsAllItsOwnKeys!1091 (ListMap!7307) Unit!172051)

(assert (=> bm!747268 (= call!747274 (lemmaContainsAllItsOwnKeys!1091 acc!1298))))

(declare-fun b!8054333 () Bool)

(declare-fun res!3185384 () Bool)

(declare-fun e!4746157 () Bool)

(assert (=> b!8054333 (=> (not res!3185384) (not e!4746157))))

(assert (=> b!8054333 (= res!3185384 (forall!18510 (toList!11928 acc!1298) lambda!473903))))

(declare-fun call!747273 () Bool)

(declare-fun bm!747269 () Bool)

(assert (=> bm!747269 (= call!747273 (forall!18510 (toList!11928 acc!1298) (ite c!1476320 lambda!473900 lambda!473902)))))

(declare-fun b!8054335 () Bool)

(declare-fun e!4746158 () Bool)

(assert (=> b!8054335 (= e!4746158 (forall!18510 (toList!11928 acc!1298) lambda!473902))))

(declare-fun b!8054336 () Bool)

(assert (=> b!8054336 (= e!4746157 (invariantList!1939 (toList!11928 lt!2728159)))))

(declare-fun e!4746159 () ListMap!7307)

(assert (=> b!8054337 (= e!4746159 lt!2728168)))

(assert (=> b!8054337 (= lt!2728172 (+!2679 acc!1298 (h!82006 l!14636)))))

(assert (=> b!8054337 (= lt!2728168 (addToMapMapFromBucket!1995 (t!391456 l!14636) (+!2679 acc!1298 (h!82006 l!14636))))))

(declare-fun lt!2728160 () Unit!172051)

(assert (=> b!8054337 (= lt!2728160 call!747274)))

(assert (=> b!8054337 (forall!18510 (toList!11928 acc!1298) lambda!473901)))

(declare-fun lt!2728165 () Unit!172051)

(assert (=> b!8054337 (= lt!2728165 lt!2728160)))

(assert (=> b!8054337 call!747272))

(declare-fun lt!2728154 () Unit!172051)

(declare-fun Unit!172070 () Unit!172051)

(assert (=> b!8054337 (= lt!2728154 Unit!172070)))

(assert (=> b!8054337 (forall!18510 (t!391456 l!14636) lambda!473902)))

(declare-fun lt!2728161 () Unit!172051)

(declare-fun Unit!172071 () Unit!172051)

(assert (=> b!8054337 (= lt!2728161 Unit!172071)))

(declare-fun lt!2728164 () Unit!172051)

(declare-fun Unit!172072 () Unit!172051)

(assert (=> b!8054337 (= lt!2728164 Unit!172072)))

(declare-fun lt!2728156 () Unit!172051)

(declare-fun forallContained!4664 (List!75684 Int tuple2!70904) Unit!172051)

(assert (=> b!8054337 (= lt!2728156 (forallContained!4664 (toList!11928 lt!2728172) lambda!473902 (h!82006 l!14636)))))

(assert (=> b!8054337 (contains!21229 lt!2728172 (_1!38755 (h!82006 l!14636)))))

(declare-fun lt!2728155 () Unit!172051)

(declare-fun Unit!172073 () Unit!172051)

(assert (=> b!8054337 (= lt!2728155 Unit!172073)))

(assert (=> b!8054337 (contains!21229 lt!2728168 (_1!38755 (h!82006 l!14636)))))

(declare-fun lt!2728166 () Unit!172051)

(declare-fun Unit!172074 () Unit!172051)

(assert (=> b!8054337 (= lt!2728166 Unit!172074)))

(assert (=> b!8054337 (forall!18510 l!14636 lambda!473902)))

(declare-fun lt!2728169 () Unit!172051)

(declare-fun Unit!172075 () Unit!172051)

(assert (=> b!8054337 (= lt!2728169 Unit!172075)))

(assert (=> b!8054337 (forall!18510 (toList!11928 lt!2728172) lambda!473902)))

(declare-fun lt!2728171 () Unit!172051)

(declare-fun Unit!172076 () Unit!172051)

(assert (=> b!8054337 (= lt!2728171 Unit!172076)))

(declare-fun lt!2728162 () Unit!172051)

(declare-fun Unit!172077 () Unit!172051)

(assert (=> b!8054337 (= lt!2728162 Unit!172077)))

(declare-fun lt!2728158 () Unit!172051)

(declare-fun addForallContainsKeyThenBeforeAdding!1089 (ListMap!7307 ListMap!7307 K!22833 V!23087) Unit!172051)

(assert (=> b!8054337 (= lt!2728158 (addForallContainsKeyThenBeforeAdding!1089 acc!1298 lt!2728168 (_1!38755 (h!82006 l!14636)) (_2!38755 (h!82006 l!14636))))))

(assert (=> b!8054337 call!747273))

(declare-fun lt!2728163 () Unit!172051)

(assert (=> b!8054337 (= lt!2728163 lt!2728158)))

(assert (=> b!8054337 (forall!18510 (toList!11928 acc!1298) lambda!473902)))

(declare-fun lt!2728153 () Unit!172051)

(declare-fun Unit!172078 () Unit!172051)

(assert (=> b!8054337 (= lt!2728153 Unit!172078)))

(declare-fun res!3185383 () Bool)

(assert (=> b!8054337 (= res!3185383 (forall!18510 l!14636 lambda!473902))))

(assert (=> b!8054337 (=> (not res!3185383) (not e!4746158))))

(assert (=> b!8054337 e!4746158))

(declare-fun lt!2728167 () Unit!172051)

(declare-fun Unit!172079 () Unit!172051)

(assert (=> b!8054337 (= lt!2728167 Unit!172079)))

(assert (=> d!2398147 e!4746157))

(declare-fun res!3185382 () Bool)

(assert (=> d!2398147 (=> (not res!3185382) (not e!4746157))))

(assert (=> d!2398147 (= res!3185382 (forall!18510 l!14636 lambda!473903))))

(assert (=> d!2398147 (= lt!2728159 e!4746159)))

(assert (=> d!2398147 (= c!1476320 ((_ is Nil!75558) l!14636))))

(assert (=> d!2398147 (noDuplicateKeys!2714 l!14636)))

(assert (=> d!2398147 (= (addToMapMapFromBucket!1995 l!14636 acc!1298) lt!2728159)))

(assert (=> b!8054334 (= e!4746159 acc!1298)))

(declare-fun lt!2728157 () Unit!172051)

(assert (=> b!8054334 (= lt!2728157 call!747274)))

(assert (=> b!8054334 call!747272))

(declare-fun lt!2728170 () Unit!172051)

(assert (=> b!8054334 (= lt!2728170 lt!2728157)))

(assert (=> b!8054334 call!747273))

(declare-fun lt!2728173 () Unit!172051)

(declare-fun Unit!172080 () Unit!172051)

(assert (=> b!8054334 (= lt!2728173 Unit!172080)))

(assert (= (and d!2398147 c!1476320) b!8054334))

(assert (= (and d!2398147 (not c!1476320)) b!8054337))

(assert (= (and b!8054337 res!3185383) b!8054335))

(assert (= (or b!8054334 b!8054337) bm!747269))

(assert (= (or b!8054334 b!8054337) bm!747267))

(assert (= (or b!8054334 b!8054337) bm!747268))

(assert (= (and d!2398147 res!3185382) b!8054333))

(assert (= (and b!8054333 res!3185384) b!8054336))

(declare-fun m!8406714 () Bool)

(assert (=> b!8054337 m!8406714))

(assert (=> b!8054337 m!8406540))

(declare-fun m!8406716 () Bool)

(assert (=> b!8054337 m!8406716))

(declare-fun m!8406718 () Bool)

(assert (=> b!8054337 m!8406718))

(declare-fun m!8406720 () Bool)

(assert (=> b!8054337 m!8406720))

(declare-fun m!8406722 () Bool)

(assert (=> b!8054337 m!8406722))

(assert (=> b!8054337 m!8406540))

(assert (=> b!8054337 m!8406720))

(declare-fun m!8406724 () Bool)

(assert (=> b!8054337 m!8406724))

(declare-fun m!8406726 () Bool)

(assert (=> b!8054337 m!8406726))

(declare-fun m!8406728 () Bool)

(assert (=> b!8054337 m!8406728))

(declare-fun m!8406730 () Bool)

(assert (=> b!8054337 m!8406730))

(declare-fun m!8406732 () Bool)

(assert (=> b!8054337 m!8406732))

(declare-fun m!8406734 () Bool)

(assert (=> b!8054333 m!8406734))

(declare-fun m!8406736 () Bool)

(assert (=> bm!747267 m!8406736))

(declare-fun m!8406738 () Bool)

(assert (=> d!2398147 m!8406738))

(assert (=> d!2398147 m!8406528))

(declare-fun m!8406740 () Bool)

(assert (=> bm!747269 m!8406740))

(assert (=> b!8054335 m!8406728))

(declare-fun m!8406742 () Bool)

(assert (=> b!8054336 m!8406742))

(declare-fun m!8406744 () Bool)

(assert (=> bm!747268 m!8406744))

(assert (=> b!8054185 d!2398147))

(declare-fun b!8054355 () Bool)

(declare-fun e!4746176 () Bool)

(assert (=> b!8054355 (= e!4746176 (not (contains!21232 (keys!30850 acc!1298) key!6222)))))

(declare-fun b!8054356 () Bool)

(declare-fun e!4746172 () List!75686)

(assert (=> b!8054356 (= e!4746172 (keys!30850 acc!1298))))

(declare-fun d!2398173 () Bool)

(declare-fun e!4746174 () Bool)

(assert (=> d!2398173 e!4746174))

(declare-fun res!3185394 () Bool)

(assert (=> d!2398173 (=> res!3185394 e!4746174)))

(assert (=> d!2398173 (= res!3185394 e!4746176)))

(declare-fun res!3185393 () Bool)

(assert (=> d!2398173 (=> (not res!3185393) (not e!4746176))))

(declare-fun lt!2728193 () Bool)

(assert (=> d!2398173 (= res!3185393 (not lt!2728193))))

(declare-fun lt!2728191 () Bool)

(assert (=> d!2398173 (= lt!2728193 lt!2728191)))

(declare-fun lt!2728187 () Unit!172051)

(declare-fun e!4746175 () Unit!172051)

(assert (=> d!2398173 (= lt!2728187 e!4746175)))

(declare-fun c!1476325 () Bool)

(assert (=> d!2398173 (= c!1476325 lt!2728191)))

(assert (=> d!2398173 (= lt!2728191 (containsKey!4867 (toList!11928 acc!1298) key!6222))))

(assert (=> d!2398173 (= (contains!21229 acc!1298 key!6222) lt!2728193)))

(declare-fun bm!747271 () Bool)

(declare-fun call!747276 () Bool)

(assert (=> bm!747271 (= call!747276 (contains!21232 e!4746172 key!6222))))

(declare-fun c!1476324 () Bool)

(assert (=> bm!747271 (= c!1476324 c!1476325)))

(declare-fun b!8054357 () Bool)

(assert (=> b!8054357 false))

(declare-fun lt!2728186 () Unit!172051)

(declare-fun lt!2728190 () Unit!172051)

(assert (=> b!8054357 (= lt!2728186 lt!2728190)))

(assert (=> b!8054357 (containsKey!4867 (toList!11928 acc!1298) key!6222)))

(assert (=> b!8054357 (= lt!2728190 (lemmaInGetKeysListThenContainsKey!1247 (toList!11928 acc!1298) key!6222))))

(declare-fun e!4746173 () Unit!172051)

(declare-fun Unit!172081 () Unit!172051)

(assert (=> b!8054357 (= e!4746173 Unit!172081)))

(declare-fun b!8054358 () Bool)

(assert (=> b!8054358 (= e!4746172 (getKeysList!1247 (toList!11928 acc!1298)))))

(declare-fun b!8054359 () Bool)

(declare-fun Unit!172082 () Unit!172051)

(assert (=> b!8054359 (= e!4746173 Unit!172082)))

(declare-fun b!8054360 () Bool)

(declare-fun e!4746171 () Bool)

(assert (=> b!8054360 (= e!4746171 (contains!21232 (keys!30850 acc!1298) key!6222))))

(declare-fun b!8054361 () Bool)

(declare-fun lt!2728192 () Unit!172051)

(assert (=> b!8054361 (= e!4746175 lt!2728192)))

(declare-fun lt!2728188 () Unit!172051)

(assert (=> b!8054361 (= lt!2728188 (lemmaContainsKeyImpliesGetValueByKeyDefined!2559 (toList!11928 acc!1298) key!6222))))

(assert (=> b!8054361 (isDefined!14537 (getValueByKey!2788 (toList!11928 acc!1298) key!6222))))

(declare-fun lt!2728189 () Unit!172051)

(assert (=> b!8054361 (= lt!2728189 lt!2728188)))

(assert (=> b!8054361 (= lt!2728192 (lemmaInListThenGetKeysListContains!1242 (toList!11928 acc!1298) key!6222))))

(assert (=> b!8054361 call!747276))

(declare-fun b!8054362 () Bool)

(assert (=> b!8054362 (= e!4746174 e!4746171)))

(declare-fun res!3185395 () Bool)

(assert (=> b!8054362 (=> (not res!3185395) (not e!4746171))))

(assert (=> b!8054362 (= res!3185395 (isDefined!14537 (getValueByKey!2788 (toList!11928 acc!1298) key!6222)))))

(declare-fun b!8054363 () Bool)

(assert (=> b!8054363 (= e!4746175 e!4746173)))

(declare-fun c!1476326 () Bool)

(assert (=> b!8054363 (= c!1476326 call!747276)))

(assert (= (and d!2398173 c!1476325) b!8054361))

(assert (= (and d!2398173 (not c!1476325)) b!8054363))

(assert (= (and b!8054363 c!1476326) b!8054357))

(assert (= (and b!8054363 (not c!1476326)) b!8054359))

(assert (= (or b!8054361 b!8054363) bm!747271))

(assert (= (and bm!747271 c!1476324) b!8054358))

(assert (= (and bm!747271 (not c!1476324)) b!8054356))

(assert (= (and d!2398173 res!3185393) b!8054355))

(assert (= (and d!2398173 (not res!3185394)) b!8054362))

(assert (= (and b!8054362 res!3185395) b!8054360))

(declare-fun m!8406746 () Bool)

(assert (=> d!2398173 m!8406746))

(declare-fun m!8406750 () Bool)

(assert (=> b!8054356 m!8406750))

(assert (=> b!8054355 m!8406750))

(assert (=> b!8054355 m!8406750))

(declare-fun m!8406752 () Bool)

(assert (=> b!8054355 m!8406752))

(declare-fun m!8406754 () Bool)

(assert (=> b!8054361 m!8406754))

(assert (=> b!8054361 m!8406562))

(assert (=> b!8054361 m!8406562))

(declare-fun m!8406756 () Bool)

(assert (=> b!8054361 m!8406756))

(declare-fun m!8406758 () Bool)

(assert (=> b!8054361 m!8406758))

(declare-fun m!8406760 () Bool)

(assert (=> bm!747271 m!8406760))

(assert (=> b!8054357 m!8406746))

(declare-fun m!8406762 () Bool)

(assert (=> b!8054357 m!8406762))

(declare-fun m!8406764 () Bool)

(assert (=> b!8054358 m!8406764))

(assert (=> b!8054362 m!8406562))

(assert (=> b!8054362 m!8406562))

(assert (=> b!8054362 m!8406756))

(assert (=> b!8054360 m!8406750))

(assert (=> b!8054360 m!8406750))

(assert (=> b!8054360 m!8406752))

(assert (=> b!8054184 d!2398173))

(declare-fun b!8054366 () Bool)

(declare-fun e!4746184 () Bool)

(assert (=> b!8054366 (= e!4746184 (not (contains!21232 (keys!30850 lt!2727963) key!6222)))))

(declare-fun b!8054367 () Bool)

(declare-fun e!4746180 () List!75686)

(assert (=> b!8054367 (= e!4746180 (keys!30850 lt!2727963))))

(declare-fun d!2398177 () Bool)

(declare-fun e!4746182 () Bool)

(assert (=> d!2398177 e!4746182))

(declare-fun res!3185399 () Bool)

(assert (=> d!2398177 (=> res!3185399 e!4746182)))

(assert (=> d!2398177 (= res!3185399 e!4746184)))

(declare-fun res!3185398 () Bool)

(assert (=> d!2398177 (=> (not res!3185398) (not e!4746184))))

(declare-fun lt!2728204 () Bool)

(assert (=> d!2398177 (= res!3185398 (not lt!2728204))))

(declare-fun lt!2728202 () Bool)

(assert (=> d!2398177 (= lt!2728204 lt!2728202)))

(declare-fun lt!2728198 () Unit!172051)

(declare-fun e!4746183 () Unit!172051)

(assert (=> d!2398177 (= lt!2728198 e!4746183)))

(declare-fun c!1476328 () Bool)

(assert (=> d!2398177 (= c!1476328 lt!2728202)))

(assert (=> d!2398177 (= lt!2728202 (containsKey!4867 (toList!11928 lt!2727963) key!6222))))

(assert (=> d!2398177 (= (contains!21229 lt!2727963 key!6222) lt!2728204)))

(declare-fun bm!747272 () Bool)

(declare-fun call!747277 () Bool)

(assert (=> bm!747272 (= call!747277 (contains!21232 e!4746180 key!6222))))

(declare-fun c!1476327 () Bool)

(assert (=> bm!747272 (= c!1476327 c!1476328)))

(declare-fun b!8054368 () Bool)

(assert (=> b!8054368 false))

(declare-fun lt!2728197 () Unit!172051)

(declare-fun lt!2728201 () Unit!172051)

(assert (=> b!8054368 (= lt!2728197 lt!2728201)))

(assert (=> b!8054368 (containsKey!4867 (toList!11928 lt!2727963) key!6222)))

(assert (=> b!8054368 (= lt!2728201 (lemmaInGetKeysListThenContainsKey!1247 (toList!11928 lt!2727963) key!6222))))

(declare-fun e!4746181 () Unit!172051)

(declare-fun Unit!172085 () Unit!172051)

(assert (=> b!8054368 (= e!4746181 Unit!172085)))

(declare-fun b!8054369 () Bool)

(assert (=> b!8054369 (= e!4746180 (getKeysList!1247 (toList!11928 lt!2727963)))))

(declare-fun b!8054370 () Bool)

(declare-fun Unit!172086 () Unit!172051)

(assert (=> b!8054370 (= e!4746181 Unit!172086)))

(declare-fun b!8054371 () Bool)

(declare-fun e!4746179 () Bool)

(assert (=> b!8054371 (= e!4746179 (contains!21232 (keys!30850 lt!2727963) key!6222))))

(declare-fun b!8054372 () Bool)

(declare-fun lt!2728203 () Unit!172051)

(assert (=> b!8054372 (= e!4746183 lt!2728203)))

(declare-fun lt!2728199 () Unit!172051)

(assert (=> b!8054372 (= lt!2728199 (lemmaContainsKeyImpliesGetValueByKeyDefined!2559 (toList!11928 lt!2727963) key!6222))))

(assert (=> b!8054372 (isDefined!14537 (getValueByKey!2788 (toList!11928 lt!2727963) key!6222))))

(declare-fun lt!2728200 () Unit!172051)

(assert (=> b!8054372 (= lt!2728200 lt!2728199)))

(assert (=> b!8054372 (= lt!2728203 (lemmaInListThenGetKeysListContains!1242 (toList!11928 lt!2727963) key!6222))))

(assert (=> b!8054372 call!747277))

(declare-fun b!8054373 () Bool)

(assert (=> b!8054373 (= e!4746182 e!4746179)))

(declare-fun res!3185400 () Bool)

(assert (=> b!8054373 (=> (not res!3185400) (not e!4746179))))

(assert (=> b!8054373 (= res!3185400 (isDefined!14537 (getValueByKey!2788 (toList!11928 lt!2727963) key!6222)))))

(declare-fun b!8054374 () Bool)

(assert (=> b!8054374 (= e!4746183 e!4746181)))

(declare-fun c!1476329 () Bool)

(assert (=> b!8054374 (= c!1476329 call!747277)))

(assert (= (and d!2398177 c!1476328) b!8054372))

(assert (= (and d!2398177 (not c!1476328)) b!8054374))

(assert (= (and b!8054374 c!1476329) b!8054368))

(assert (= (and b!8054374 (not c!1476329)) b!8054370))

(assert (= (or b!8054372 b!8054374) bm!747272))

(assert (= (and bm!747272 c!1476327) b!8054369))

(assert (= (and bm!747272 (not c!1476327)) b!8054367))

(assert (= (and d!2398177 res!3185398) b!8054366))

(assert (= (and d!2398177 (not res!3185399)) b!8054373))

(assert (= (and b!8054373 res!3185400) b!8054371))

(declare-fun m!8406776 () Bool)

(assert (=> d!2398177 m!8406776))

(declare-fun m!8406778 () Bool)

(assert (=> b!8054367 m!8406778))

(assert (=> b!8054366 m!8406778))

(assert (=> b!8054366 m!8406778))

(declare-fun m!8406780 () Bool)

(assert (=> b!8054366 m!8406780))

(declare-fun m!8406782 () Bool)

(assert (=> b!8054372 m!8406782))

(declare-fun m!8406784 () Bool)

(assert (=> b!8054372 m!8406784))

(assert (=> b!8054372 m!8406784))

(declare-fun m!8406786 () Bool)

(assert (=> b!8054372 m!8406786))

(declare-fun m!8406788 () Bool)

(assert (=> b!8054372 m!8406788))

(declare-fun m!8406790 () Bool)

(assert (=> bm!747272 m!8406790))

(assert (=> b!8054368 m!8406776))

(declare-fun m!8406792 () Bool)

(assert (=> b!8054368 m!8406792))

(declare-fun m!8406794 () Bool)

(assert (=> b!8054369 m!8406794))

(assert (=> b!8054373 m!8406784))

(assert (=> b!8054373 m!8406784))

(assert (=> b!8054373 m!8406786))

(assert (=> b!8054371 m!8406778))

(assert (=> b!8054371 m!8406778))

(assert (=> b!8054371 m!8406780))

(assert (=> b!8054195 d!2398177))

(declare-fun d!2398183 () Bool)

(declare-fun res!3185406 () Bool)

(declare-fun e!4746193 () Bool)

(assert (=> d!2398183 (=> res!3185406 e!4746193)))

(assert (=> d!2398183 (= res!3185406 (and ((_ is Cons!75558) (t!391456 l!14636)) (= (_1!38755 (h!82006 (t!391456 l!14636))) key!6222)))))

(assert (=> d!2398183 (= (containsKey!4865 (t!391456 l!14636) key!6222) e!4746193)))

(declare-fun b!8054386 () Bool)

(declare-fun e!4746194 () Bool)

(assert (=> b!8054386 (= e!4746193 e!4746194)))

(declare-fun res!3185407 () Bool)

(assert (=> b!8054386 (=> (not res!3185407) (not e!4746194))))

(assert (=> b!8054386 (= res!3185407 ((_ is Cons!75558) (t!391456 l!14636)))))

(declare-fun b!8054387 () Bool)

(assert (=> b!8054387 (= e!4746194 (containsKey!4865 (t!391456 (t!391456 l!14636)) key!6222))))

(assert (= (and d!2398183 (not res!3185406)) b!8054386))

(assert (= (and b!8054386 res!3185407) b!8054387))

(declare-fun m!8406804 () Bool)

(assert (=> b!8054387 m!8406804))

(assert (=> b!8054194 d!2398183))

(declare-fun d!2398185 () Bool)

(declare-fun lt!2728214 () Bool)

(assert (=> d!2398185 (= lt!2728214 (select (content!16114 (t!391456 l!14636)) lt!2727962))))

(declare-fun e!4746196 () Bool)

(assert (=> d!2398185 (= lt!2728214 e!4746196)))

(declare-fun res!3185409 () Bool)

(assert (=> d!2398185 (=> (not res!3185409) (not e!4746196))))

(assert (=> d!2398185 (= res!3185409 ((_ is Cons!75558) (t!391456 l!14636)))))

(assert (=> d!2398185 (= (contains!21230 (t!391456 l!14636) lt!2727962) lt!2728214)))

(declare-fun b!8054388 () Bool)

(declare-fun e!4746195 () Bool)

(assert (=> b!8054388 (= e!4746196 e!4746195)))

(declare-fun res!3185408 () Bool)

(assert (=> b!8054388 (=> res!3185408 e!4746195)))

(assert (=> b!8054388 (= res!3185408 (= (h!82006 (t!391456 l!14636)) lt!2727962))))

(declare-fun b!8054389 () Bool)

(assert (=> b!8054389 (= e!4746195 (contains!21230 (t!391456 (t!391456 l!14636)) lt!2727962))))

(assert (= (and d!2398185 res!3185409) b!8054388))

(assert (= (and b!8054388 (not res!3185408)) b!8054389))

(declare-fun m!8406818 () Bool)

(assert (=> d!2398185 m!8406818))

(declare-fun m!8406820 () Bool)

(assert (=> d!2398185 m!8406820))

(declare-fun m!8406822 () Bool)

(assert (=> b!8054389 m!8406822))

(assert (=> b!8054188 d!2398185))

(assert (=> b!8054199 d!2398183))

(assert (=> b!8054198 d!2398141))

(declare-fun d!2398189 () Bool)

(declare-fun lt!2728236 () Bool)

(assert (=> d!2398189 (= lt!2728236 (select (content!16114 l!14636) lt!2727962))))

(declare-fun e!4746201 () Bool)

(assert (=> d!2398189 (= lt!2728236 e!4746201)))

(declare-fun res!3185414 () Bool)

(assert (=> d!2398189 (=> (not res!3185414) (not e!4746201))))

(assert (=> d!2398189 (= res!3185414 ((_ is Cons!75558) l!14636))))

(assert (=> d!2398189 (= (contains!21230 l!14636 lt!2727962) lt!2728236)))

(declare-fun b!8054395 () Bool)

(declare-fun e!4746200 () Bool)

(assert (=> b!8054395 (= e!4746201 e!4746200)))

(declare-fun res!3185413 () Bool)

(assert (=> b!8054395 (=> res!3185413 e!4746200)))

(assert (=> b!8054395 (= res!3185413 (= (h!82006 l!14636) lt!2727962))))

(declare-fun b!8054396 () Bool)

(assert (=> b!8054396 (= e!4746200 (contains!21230 (t!391456 l!14636) lt!2727962))))

(assert (= (and d!2398189 res!3185414) b!8054395))

(assert (= (and b!8054395 (not res!3185413)) b!8054396))

(assert (=> d!2398189 m!8406546))

(declare-fun m!8406824 () Bool)

(assert (=> d!2398189 m!8406824))

(assert (=> b!8054396 m!8406544))

(assert (=> b!8054198 d!2398189))

(declare-fun b!8054397 () Bool)

(declare-fun e!4746207 () Bool)

(assert (=> b!8054397 (= e!4746207 (not (contains!21232 (keys!30850 lt!2727968) key!6222)))))

(declare-fun b!8054398 () Bool)

(declare-fun e!4746203 () List!75686)

(assert (=> b!8054398 (= e!4746203 (keys!30850 lt!2727968))))

(declare-fun d!2398191 () Bool)

(declare-fun e!4746205 () Bool)

(assert (=> d!2398191 e!4746205))

(declare-fun res!3185416 () Bool)

(assert (=> d!2398191 (=> res!3185416 e!4746205)))

(assert (=> d!2398191 (= res!3185416 e!4746207)))

(declare-fun res!3185415 () Bool)

(assert (=> d!2398191 (=> (not res!3185415) (not e!4746207))))

(declare-fun lt!2728244 () Bool)

(assert (=> d!2398191 (= res!3185415 (not lt!2728244))))

(declare-fun lt!2728242 () Bool)

(assert (=> d!2398191 (= lt!2728244 lt!2728242)))

(declare-fun lt!2728238 () Unit!172051)

(declare-fun e!4746206 () Unit!172051)

(assert (=> d!2398191 (= lt!2728238 e!4746206)))

(declare-fun c!1476335 () Bool)

(assert (=> d!2398191 (= c!1476335 lt!2728242)))

(assert (=> d!2398191 (= lt!2728242 (containsKey!4867 (toList!11928 lt!2727968) key!6222))))

(assert (=> d!2398191 (= (contains!21229 lt!2727968 key!6222) lt!2728244)))

(declare-fun bm!747277 () Bool)

(declare-fun call!747282 () Bool)

(assert (=> bm!747277 (= call!747282 (contains!21232 e!4746203 key!6222))))

(declare-fun c!1476334 () Bool)

(assert (=> bm!747277 (= c!1476334 c!1476335)))

(declare-fun b!8054399 () Bool)

(assert (=> b!8054399 false))

(declare-fun lt!2728237 () Unit!172051)

(declare-fun lt!2728241 () Unit!172051)

(assert (=> b!8054399 (= lt!2728237 lt!2728241)))

(assert (=> b!8054399 (containsKey!4867 (toList!11928 lt!2727968) key!6222)))

(assert (=> b!8054399 (= lt!2728241 (lemmaInGetKeysListThenContainsKey!1247 (toList!11928 lt!2727968) key!6222))))

(declare-fun e!4746204 () Unit!172051)

(declare-fun Unit!172089 () Unit!172051)

(assert (=> b!8054399 (= e!4746204 Unit!172089)))

(declare-fun b!8054400 () Bool)

(assert (=> b!8054400 (= e!4746203 (getKeysList!1247 (toList!11928 lt!2727968)))))

(declare-fun b!8054401 () Bool)

(declare-fun Unit!172090 () Unit!172051)

(assert (=> b!8054401 (= e!4746204 Unit!172090)))

(declare-fun b!8054402 () Bool)

(declare-fun e!4746202 () Bool)

(assert (=> b!8054402 (= e!4746202 (contains!21232 (keys!30850 lt!2727968) key!6222))))

(declare-fun b!8054403 () Bool)

(declare-fun lt!2728243 () Unit!172051)

(assert (=> b!8054403 (= e!4746206 lt!2728243)))

(declare-fun lt!2728239 () Unit!172051)

(assert (=> b!8054403 (= lt!2728239 (lemmaContainsKeyImpliesGetValueByKeyDefined!2559 (toList!11928 lt!2727968) key!6222))))

(assert (=> b!8054403 (isDefined!14537 (getValueByKey!2788 (toList!11928 lt!2727968) key!6222))))

(declare-fun lt!2728240 () Unit!172051)

(assert (=> b!8054403 (= lt!2728240 lt!2728239)))

(assert (=> b!8054403 (= lt!2728243 (lemmaInListThenGetKeysListContains!1242 (toList!11928 lt!2727968) key!6222))))

(assert (=> b!8054403 call!747282))

(declare-fun b!8054404 () Bool)

(assert (=> b!8054404 (= e!4746205 e!4746202)))

(declare-fun res!3185417 () Bool)

(assert (=> b!8054404 (=> (not res!3185417) (not e!4746202))))

(assert (=> b!8054404 (= res!3185417 (isDefined!14537 (getValueByKey!2788 (toList!11928 lt!2727968) key!6222)))))

(declare-fun b!8054405 () Bool)

(assert (=> b!8054405 (= e!4746206 e!4746204)))

(declare-fun c!1476336 () Bool)

(assert (=> b!8054405 (= c!1476336 call!747282)))

(assert (= (and d!2398191 c!1476335) b!8054403))

(assert (= (and d!2398191 (not c!1476335)) b!8054405))

(assert (= (and b!8054405 c!1476336) b!8054399))

(assert (= (and b!8054405 (not c!1476336)) b!8054401))

(assert (= (or b!8054403 b!8054405) bm!747277))

(assert (= (and bm!747277 c!1476334) b!8054400))

(assert (= (and bm!747277 (not c!1476334)) b!8054398))

(assert (= (and d!2398191 res!3185415) b!8054397))

(assert (= (and d!2398191 (not res!3185416)) b!8054404))

(assert (= (and b!8054404 res!3185417) b!8054402))

(declare-fun m!8406826 () Bool)

(assert (=> d!2398191 m!8406826))

(declare-fun m!8406828 () Bool)

(assert (=> b!8054398 m!8406828))

(assert (=> b!8054397 m!8406828))

(assert (=> b!8054397 m!8406828))

(declare-fun m!8406830 () Bool)

(assert (=> b!8054397 m!8406830))

(declare-fun m!8406832 () Bool)

(assert (=> b!8054403 m!8406832))

(declare-fun m!8406834 () Bool)

(assert (=> b!8054403 m!8406834))

(assert (=> b!8054403 m!8406834))

(declare-fun m!8406836 () Bool)

(assert (=> b!8054403 m!8406836))

(declare-fun m!8406838 () Bool)

(assert (=> b!8054403 m!8406838))

(declare-fun m!8406840 () Bool)

(assert (=> bm!747277 m!8406840))

(assert (=> b!8054399 m!8406826))

(declare-fun m!8406842 () Bool)

(assert (=> b!8054399 m!8406842))

(declare-fun m!8406844 () Bool)

(assert (=> b!8054400 m!8406844))

(assert (=> b!8054404 m!8406834))

(assert (=> b!8054404 m!8406834))

(assert (=> b!8054404 m!8406836))

(assert (=> b!8054402 m!8406828))

(assert (=> b!8054402 m!8406828))

(assert (=> b!8054402 m!8406830))

(assert (=> b!8054198 d!2398191))

(declare-fun d!2398193 () Bool)

(assert (=> d!2398193 (= (apply!14441 (+!2679 acc!1298 (tuple2!70905 (_1!38755 (h!82006 l!14636)) (_2!38755 (h!82006 l!14636)))) key!6222) (apply!14441 acc!1298 key!6222))))

(declare-fun lt!2728247 () Unit!172051)

(declare-fun choose!60534 (ListMap!7307 K!22833 V!23087 K!22833) Unit!172051)

(assert (=> d!2398193 (= lt!2728247 (choose!60534 acc!1298 (_1!38755 (h!82006 l!14636)) (_2!38755 (h!82006 l!14636)) key!6222))))

(declare-fun e!4746216 () Bool)

(assert (=> d!2398193 e!4746216))

(declare-fun res!3185422 () Bool)

(assert (=> d!2398193 (=> (not res!3185422) (not e!4746216))))

(assert (=> d!2398193 (= res!3185422 (contains!21229 acc!1298 key!6222))))

(assert (=> d!2398193 (= (addApplyDifferent!21 acc!1298 (_1!38755 (h!82006 l!14636)) (_2!38755 (h!82006 l!14636)) key!6222) lt!2728247)))

(declare-fun b!8054417 () Bool)

(assert (=> b!8054417 (= e!4746216 (not (= key!6222 (_1!38755 (h!82006 l!14636)))))))

(assert (= (and d!2398193 res!3185422) b!8054417))

(declare-fun m!8406878 () Bool)

(assert (=> d!2398193 m!8406878))

(assert (=> d!2398193 m!8406514))

(assert (=> d!2398193 m!8406536))

(declare-fun m!8406880 () Bool)

(assert (=> d!2398193 m!8406880))

(assert (=> d!2398193 m!8406880))

(declare-fun m!8406882 () Bool)

(assert (=> d!2398193 m!8406882))

(assert (=> b!8054198 d!2398193))

(declare-fun d!2398197 () Bool)

(assert (=> d!2398197 (contains!21229 (+!2679 acc!1298 (tuple2!70905 (_1!38755 (h!82006 l!14636)) (_2!38755 (h!82006 l!14636)))) key!6222)))

(declare-fun lt!2728250 () Unit!172051)

(declare-fun choose!60535 (ListMap!7307 K!22833 V!23087 K!22833) Unit!172051)

(assert (=> d!2398197 (= lt!2728250 (choose!60535 acc!1298 (_1!38755 (h!82006 l!14636)) (_2!38755 (h!82006 l!14636)) key!6222))))

(assert (=> d!2398197 (contains!21229 acc!1298 key!6222)))

(assert (=> d!2398197 (= (addStillContains!47 acc!1298 (_1!38755 (h!82006 l!14636)) (_2!38755 (h!82006 l!14636)) key!6222) lt!2728250)))

(declare-fun bs!1972888 () Bool)

(assert (= bs!1972888 d!2398197))

(assert (=> bs!1972888 m!8406880))

(assert (=> bs!1972888 m!8406880))

(declare-fun m!8406884 () Bool)

(assert (=> bs!1972888 m!8406884))

(declare-fun m!8406886 () Bool)

(assert (=> bs!1972888 m!8406886))

(assert (=> bs!1972888 m!8406536))

(assert (=> b!8054198 d!2398197))

(declare-fun d!2398199 () Bool)

(assert (=> d!2398199 (= (apply!14441 lt!2727968 key!6222) (get!27225 (getValueByKey!2788 (toList!11928 lt!2727968) key!6222)))))

(declare-fun bs!1972889 () Bool)

(assert (= bs!1972889 d!2398199))

(assert (=> bs!1972889 m!8406834))

(assert (=> bs!1972889 m!8406834))

(declare-fun m!8406888 () Bool)

(assert (=> bs!1972889 m!8406888))

(assert (=> b!8054198 d!2398199))

(declare-fun d!2398201 () Bool)

(assert (=> d!2398201 (not (contains!21230 l!14636 (tuple2!70905 key!6222 value!3131)))))

(declare-fun lt!2728253 () Unit!172051)

(declare-fun choose!60536 (List!75684 K!22833 V!23087) Unit!172051)

(assert (=> d!2398201 (= lt!2728253 (choose!60536 l!14636 key!6222 value!3131))))

(assert (=> d!2398201 (not (containsKey!4865 l!14636 key!6222))))

(assert (=> d!2398201 (= (lemmaNotContainsKeyThenCannotContainPair!30 l!14636 key!6222 value!3131) lt!2728253)))

(declare-fun bs!1972890 () Bool)

(assert (= bs!1972890 d!2398201))

(assert (=> bs!1972890 m!8406542))

(declare-fun m!8406890 () Bool)

(assert (=> bs!1972890 m!8406890))

(assert (=> bs!1972890 m!8406522))

(assert (=> b!8054198 d!2398201))

(declare-fun d!2398203 () Bool)

(declare-fun res!3185423 () Bool)

(declare-fun e!4746217 () Bool)

(assert (=> d!2398203 (=> res!3185423 e!4746217)))

(assert (=> d!2398203 (= res!3185423 (not ((_ is Cons!75558) (t!391456 l!14636))))))

(assert (=> d!2398203 (= (noDuplicateKeys!2714 (t!391456 l!14636)) e!4746217)))

(declare-fun b!8054419 () Bool)

(declare-fun e!4746218 () Bool)

(assert (=> b!8054419 (= e!4746217 e!4746218)))

(declare-fun res!3185424 () Bool)

(assert (=> b!8054419 (=> (not res!3185424) (not e!4746218))))

(assert (=> b!8054419 (= res!3185424 (not (containsKey!4865 (t!391456 (t!391456 l!14636)) (_1!38755 (h!82006 (t!391456 l!14636))))))))

(declare-fun b!8054420 () Bool)

(assert (=> b!8054420 (= e!4746218 (noDuplicateKeys!2714 (t!391456 (t!391456 l!14636))))))

(assert (= (and d!2398203 (not res!3185423)) b!8054419))

(assert (= (and b!8054419 res!3185424) b!8054420))

(declare-fun m!8406892 () Bool)

(assert (=> b!8054419 m!8406892))

(declare-fun m!8406894 () Bool)

(assert (=> b!8054420 m!8406894))

(assert (=> b!8054198 d!2398203))

(declare-fun bs!1972891 () Bool)

(declare-fun b!8054422 () Bool)

(assert (= bs!1972891 (and b!8054422 b!8054334)))

(declare-fun lambda!473908 () Int)

(assert (=> bs!1972891 (= (= lt!2727968 acc!1298) (= lambda!473908 lambda!473900))))

(declare-fun bs!1972892 () Bool)

(assert (= bs!1972892 (and b!8054422 b!8054337)))

(assert (=> bs!1972892 (= (= lt!2727968 acc!1298) (= lambda!473908 lambda!473901))))

(assert (=> bs!1972892 (= (= lt!2727968 lt!2728168) (= lambda!473908 lambda!473902))))

(declare-fun bs!1972893 () Bool)

(assert (= bs!1972893 (and b!8054422 d!2398147)))

(assert (=> bs!1972893 (= (= lt!2727968 lt!2728159) (= lambda!473908 lambda!473903))))

(assert (=> b!8054422 true))

(declare-fun bs!1972894 () Bool)

(declare-fun b!8054425 () Bool)

(assert (= bs!1972894 (and b!8054425 b!8054334)))

(declare-fun lambda!473909 () Int)

(assert (=> bs!1972894 (= (= lt!2727968 acc!1298) (= lambda!473909 lambda!473900))))

(declare-fun bs!1972895 () Bool)

(assert (= bs!1972895 (and b!8054425 d!2398147)))

(assert (=> bs!1972895 (= (= lt!2727968 lt!2728159) (= lambda!473909 lambda!473903))))

(declare-fun bs!1972896 () Bool)

(assert (= bs!1972896 (and b!8054425 b!8054422)))

(assert (=> bs!1972896 (= lambda!473909 lambda!473908)))

(declare-fun bs!1972897 () Bool)

(assert (= bs!1972897 (and b!8054425 b!8054337)))

(assert (=> bs!1972897 (= (= lt!2727968 acc!1298) (= lambda!473909 lambda!473901))))

(assert (=> bs!1972897 (= (= lt!2727968 lt!2728168) (= lambda!473909 lambda!473902))))

(assert (=> b!8054425 true))

(declare-fun lt!2728269 () ListMap!7307)

(declare-fun lambda!473910 () Int)

(assert (=> bs!1972894 (= (= lt!2728269 acc!1298) (= lambda!473910 lambda!473900))))

(assert (=> bs!1972895 (= (= lt!2728269 lt!2728159) (= lambda!473910 lambda!473903))))

(assert (=> bs!1972896 (= (= lt!2728269 lt!2727968) (= lambda!473910 lambda!473908))))

(assert (=> b!8054425 (= (= lt!2728269 lt!2727968) (= lambda!473910 lambda!473909))))

(assert (=> bs!1972897 (= (= lt!2728269 acc!1298) (= lambda!473910 lambda!473901))))

(assert (=> bs!1972897 (= (= lt!2728269 lt!2728168) (= lambda!473910 lambda!473902))))

(assert (=> b!8054425 true))

(declare-fun bs!1972898 () Bool)

(declare-fun d!2398205 () Bool)

(assert (= bs!1972898 (and d!2398205 b!8054425)))

(declare-fun lambda!473911 () Int)

(declare-fun lt!2728260 () ListMap!7307)

(assert (=> bs!1972898 (= (= lt!2728260 lt!2728269) (= lambda!473911 lambda!473910))))

(declare-fun bs!1972899 () Bool)

(assert (= bs!1972899 (and d!2398205 b!8054334)))

(assert (=> bs!1972899 (= (= lt!2728260 acc!1298) (= lambda!473911 lambda!473900))))

(declare-fun bs!1972900 () Bool)

(assert (= bs!1972900 (and d!2398205 d!2398147)))

(assert (=> bs!1972900 (= (= lt!2728260 lt!2728159) (= lambda!473911 lambda!473903))))

(declare-fun bs!1972901 () Bool)

(assert (= bs!1972901 (and d!2398205 b!8054422)))

(assert (=> bs!1972901 (= (= lt!2728260 lt!2727968) (= lambda!473911 lambda!473908))))

(assert (=> bs!1972898 (= (= lt!2728260 lt!2727968) (= lambda!473911 lambda!473909))))

(declare-fun bs!1972902 () Bool)

(assert (= bs!1972902 (and d!2398205 b!8054337)))

(assert (=> bs!1972902 (= (= lt!2728260 acc!1298) (= lambda!473911 lambda!473901))))

(assert (=> bs!1972902 (= (= lt!2728260 lt!2728168) (= lambda!473911 lambda!473902))))

(assert (=> d!2398205 true))

(declare-fun c!1476337 () Bool)

(declare-fun call!747283 () Bool)

(declare-fun bm!747278 () Bool)

(declare-fun lt!2728273 () ListMap!7307)

(assert (=> bm!747278 (= call!747283 (forall!18510 (ite c!1476337 (toList!11928 lt!2727968) (toList!11928 lt!2728273)) (ite c!1476337 lambda!473908 lambda!473910)))))

(declare-fun bm!747279 () Bool)

(declare-fun call!747285 () Unit!172051)

(assert (=> bm!747279 (= call!747285 (lemmaContainsAllItsOwnKeys!1091 lt!2727968))))

(declare-fun b!8054421 () Bool)

(declare-fun res!3185427 () Bool)

(declare-fun e!4746219 () Bool)

(assert (=> b!8054421 (=> (not res!3185427) (not e!4746219))))

(assert (=> b!8054421 (= res!3185427 (forall!18510 (toList!11928 lt!2727968) lambda!473911))))

(declare-fun call!747284 () Bool)

(declare-fun bm!747280 () Bool)

(assert (=> bm!747280 (= call!747284 (forall!18510 (toList!11928 lt!2727968) (ite c!1476337 lambda!473908 lambda!473910)))))

(declare-fun b!8054423 () Bool)

(declare-fun e!4746220 () Bool)

(assert (=> b!8054423 (= e!4746220 (forall!18510 (toList!11928 lt!2727968) lambda!473910))))

(declare-fun b!8054424 () Bool)

(assert (=> b!8054424 (= e!4746219 (invariantList!1939 (toList!11928 lt!2728260)))))

(declare-fun e!4746221 () ListMap!7307)

(assert (=> b!8054425 (= e!4746221 lt!2728269)))

(assert (=> b!8054425 (= lt!2728273 (+!2679 lt!2727968 (h!82006 (t!391456 l!14636))))))

(assert (=> b!8054425 (= lt!2728269 (addToMapMapFromBucket!1995 (t!391456 (t!391456 l!14636)) (+!2679 lt!2727968 (h!82006 (t!391456 l!14636)))))))

(declare-fun lt!2728261 () Unit!172051)

(assert (=> b!8054425 (= lt!2728261 call!747285)))

(assert (=> b!8054425 (forall!18510 (toList!11928 lt!2727968) lambda!473909)))

(declare-fun lt!2728266 () Unit!172051)

(assert (=> b!8054425 (= lt!2728266 lt!2728261)))

(assert (=> b!8054425 call!747283))

(declare-fun lt!2728255 () Unit!172051)

(declare-fun Unit!172102 () Unit!172051)

(assert (=> b!8054425 (= lt!2728255 Unit!172102)))

(assert (=> b!8054425 (forall!18510 (t!391456 (t!391456 l!14636)) lambda!473910)))

(declare-fun lt!2728262 () Unit!172051)

(declare-fun Unit!172103 () Unit!172051)

(assert (=> b!8054425 (= lt!2728262 Unit!172103)))

(declare-fun lt!2728265 () Unit!172051)

(declare-fun Unit!172104 () Unit!172051)

(assert (=> b!8054425 (= lt!2728265 Unit!172104)))

(declare-fun lt!2728257 () Unit!172051)

(assert (=> b!8054425 (= lt!2728257 (forallContained!4664 (toList!11928 lt!2728273) lambda!473910 (h!82006 (t!391456 l!14636))))))

(assert (=> b!8054425 (contains!21229 lt!2728273 (_1!38755 (h!82006 (t!391456 l!14636))))))

(declare-fun lt!2728256 () Unit!172051)

(declare-fun Unit!172105 () Unit!172051)

(assert (=> b!8054425 (= lt!2728256 Unit!172105)))

(assert (=> b!8054425 (contains!21229 lt!2728269 (_1!38755 (h!82006 (t!391456 l!14636))))))

(declare-fun lt!2728267 () Unit!172051)

(declare-fun Unit!172106 () Unit!172051)

(assert (=> b!8054425 (= lt!2728267 Unit!172106)))

(assert (=> b!8054425 (forall!18510 (t!391456 l!14636) lambda!473910)))

(declare-fun lt!2728270 () Unit!172051)

(declare-fun Unit!172107 () Unit!172051)

(assert (=> b!8054425 (= lt!2728270 Unit!172107)))

(assert (=> b!8054425 (forall!18510 (toList!11928 lt!2728273) lambda!473910)))

(declare-fun lt!2728272 () Unit!172051)

(declare-fun Unit!172108 () Unit!172051)

(assert (=> b!8054425 (= lt!2728272 Unit!172108)))

(declare-fun lt!2728263 () Unit!172051)

(declare-fun Unit!172109 () Unit!172051)

(assert (=> b!8054425 (= lt!2728263 Unit!172109)))

(declare-fun lt!2728259 () Unit!172051)

(assert (=> b!8054425 (= lt!2728259 (addForallContainsKeyThenBeforeAdding!1089 lt!2727968 lt!2728269 (_1!38755 (h!82006 (t!391456 l!14636))) (_2!38755 (h!82006 (t!391456 l!14636)))))))

(assert (=> b!8054425 call!747284))

(declare-fun lt!2728264 () Unit!172051)

(assert (=> b!8054425 (= lt!2728264 lt!2728259)))

(assert (=> b!8054425 (forall!18510 (toList!11928 lt!2727968) lambda!473910)))

(declare-fun lt!2728254 () Unit!172051)

(declare-fun Unit!172110 () Unit!172051)

(assert (=> b!8054425 (= lt!2728254 Unit!172110)))

(declare-fun res!3185426 () Bool)

(assert (=> b!8054425 (= res!3185426 (forall!18510 (t!391456 l!14636) lambda!473910))))

(assert (=> b!8054425 (=> (not res!3185426) (not e!4746220))))

(assert (=> b!8054425 e!4746220))

(declare-fun lt!2728268 () Unit!172051)

(declare-fun Unit!172111 () Unit!172051)

(assert (=> b!8054425 (= lt!2728268 Unit!172111)))

(assert (=> d!2398205 e!4746219))

(declare-fun res!3185425 () Bool)

(assert (=> d!2398205 (=> (not res!3185425) (not e!4746219))))

(assert (=> d!2398205 (= res!3185425 (forall!18510 (t!391456 l!14636) lambda!473911))))

(assert (=> d!2398205 (= lt!2728260 e!4746221)))

(assert (=> d!2398205 (= c!1476337 ((_ is Nil!75558) (t!391456 l!14636)))))

(assert (=> d!2398205 (noDuplicateKeys!2714 (t!391456 l!14636))))

(assert (=> d!2398205 (= (addToMapMapFromBucket!1995 (t!391456 l!14636) lt!2727968) lt!2728260)))

(assert (=> b!8054422 (= e!4746221 lt!2727968)))

(declare-fun lt!2728258 () Unit!172051)

(assert (=> b!8054422 (= lt!2728258 call!747285)))

(assert (=> b!8054422 call!747283))

(declare-fun lt!2728271 () Unit!172051)

(assert (=> b!8054422 (= lt!2728271 lt!2728258)))

(assert (=> b!8054422 call!747284))

(declare-fun lt!2728274 () Unit!172051)

(declare-fun Unit!172112 () Unit!172051)

(assert (=> b!8054422 (= lt!2728274 Unit!172112)))

(assert (= (and d!2398205 c!1476337) b!8054422))

(assert (= (and d!2398205 (not c!1476337)) b!8054425))

(assert (= (and b!8054425 res!3185426) b!8054423))

(assert (= (or b!8054422 b!8054425) bm!747280))

(assert (= (or b!8054422 b!8054425) bm!747278))

(assert (= (or b!8054422 b!8054425) bm!747279))

(assert (= (and d!2398205 res!3185425) b!8054421))

(assert (= (and b!8054421 res!3185427) b!8054424))

(declare-fun m!8406896 () Bool)

(assert (=> b!8054425 m!8406896))

(declare-fun m!8406898 () Bool)

(assert (=> b!8054425 m!8406898))

(declare-fun m!8406900 () Bool)

(assert (=> b!8054425 m!8406900))

(declare-fun m!8406902 () Bool)

(assert (=> b!8054425 m!8406902))

(declare-fun m!8406904 () Bool)

(assert (=> b!8054425 m!8406904))

(declare-fun m!8406906 () Bool)

(assert (=> b!8054425 m!8406906))

(assert (=> b!8054425 m!8406898))

(assert (=> b!8054425 m!8406904))

(declare-fun m!8406908 () Bool)

(assert (=> b!8054425 m!8406908))

(declare-fun m!8406910 () Bool)

(assert (=> b!8054425 m!8406910))

(declare-fun m!8406912 () Bool)

(assert (=> b!8054425 m!8406912))

(declare-fun m!8406914 () Bool)

(assert (=> b!8054425 m!8406914))

(declare-fun m!8406916 () Bool)

(assert (=> b!8054425 m!8406916))

(declare-fun m!8406918 () Bool)

(assert (=> b!8054421 m!8406918))

(declare-fun m!8406920 () Bool)

(assert (=> bm!747278 m!8406920))

(declare-fun m!8406922 () Bool)

(assert (=> d!2398205 m!8406922))

(assert (=> d!2398205 m!8406520))

(declare-fun m!8406924 () Bool)

(assert (=> bm!747280 m!8406924))

(assert (=> b!8054423 m!8406912))

(declare-fun m!8406926 () Bool)

(assert (=> b!8054424 m!8406926))

(declare-fun m!8406928 () Bool)

(assert (=> bm!747279 m!8406928))

(assert (=> b!8054186 d!2398205))

(declare-fun d!2398207 () Bool)

(declare-fun e!4746224 () Bool)

(assert (=> d!2398207 e!4746224))

(declare-fun res!3185433 () Bool)

(assert (=> d!2398207 (=> (not res!3185433) (not e!4746224))))

(declare-fun lt!2728286 () ListMap!7307)

(assert (=> d!2398207 (= res!3185433 (contains!21229 lt!2728286 (_1!38755 (h!82006 l!14636))))))

(declare-fun lt!2728283 () List!75684)

(assert (=> d!2398207 (= lt!2728286 (ListMap!7308 lt!2728283))))

(declare-fun lt!2728284 () Unit!172051)

(declare-fun lt!2728285 () Unit!172051)

(assert (=> d!2398207 (= lt!2728284 lt!2728285)))

(assert (=> d!2398207 (= (getValueByKey!2788 lt!2728283 (_1!38755 (h!82006 l!14636))) (Some!18003 (_2!38755 (h!82006 l!14636))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1281 (List!75684 K!22833 V!23087) Unit!172051)

(assert (=> d!2398207 (= lt!2728285 (lemmaContainsTupThenGetReturnValue!1281 lt!2728283 (_1!38755 (h!82006 l!14636)) (_2!38755 (h!82006 l!14636))))))

(declare-fun insertNoDuplicatedKeys!789 (List!75684 K!22833 V!23087) List!75684)

(assert (=> d!2398207 (= lt!2728283 (insertNoDuplicatedKeys!789 (toList!11928 acc!1298) (_1!38755 (h!82006 l!14636)) (_2!38755 (h!82006 l!14636))))))

(assert (=> d!2398207 (= (+!2679 acc!1298 (h!82006 l!14636)) lt!2728286)))

(declare-fun b!8054430 () Bool)

(declare-fun res!3185432 () Bool)

(assert (=> b!8054430 (=> (not res!3185432) (not e!4746224))))

(assert (=> b!8054430 (= res!3185432 (= (getValueByKey!2788 (toList!11928 lt!2728286) (_1!38755 (h!82006 l!14636))) (Some!18003 (_2!38755 (h!82006 l!14636)))))))

(declare-fun b!8054431 () Bool)

(assert (=> b!8054431 (= e!4746224 (contains!21230 (toList!11928 lt!2728286) (h!82006 l!14636)))))

(assert (= (and d!2398207 res!3185433) b!8054430))

(assert (= (and b!8054430 res!3185432) b!8054431))

(declare-fun m!8406930 () Bool)

(assert (=> d!2398207 m!8406930))

(declare-fun m!8406932 () Bool)

(assert (=> d!2398207 m!8406932))

(declare-fun m!8406934 () Bool)

(assert (=> d!2398207 m!8406934))

(declare-fun m!8406936 () Bool)

(assert (=> d!2398207 m!8406936))

(declare-fun m!8406938 () Bool)

(assert (=> b!8054430 m!8406938))

(declare-fun m!8406940 () Bool)

(assert (=> b!8054431 m!8406940))

(assert (=> b!8054186 d!2398207))

(declare-fun b!8054436 () Bool)

(declare-fun e!4746227 () Bool)

(declare-fun tp!2413816 () Bool)

(assert (=> b!8054436 (= e!4746227 (and tp_is_empty!54931 tp_is_empty!54933 tp!2413816))))

(assert (=> b!8054187 (= tp!2413808 e!4746227)))

(assert (= (and b!8054187 ((_ is Cons!75558) (t!391456 l!14636))) b!8054436))

(declare-fun b!8054437 () Bool)

(declare-fun e!4746228 () Bool)

(declare-fun tp!2413817 () Bool)

(assert (=> b!8054437 (= e!4746228 (and tp_is_empty!54931 tp_is_empty!54933 tp!2413817))))

(assert (=> b!8054197 (= tp!2413809 e!4746228)))

(assert (= (and b!8054197 ((_ is Cons!75558) (toList!11928 acc!1298))) b!8054437))

(check-sat (not b!8054404) (not d!2398173) (not b!8054337) (not d!2398197) (not b!8054400) (not b!8054335) (not b!8054209) (not bm!747280) (not d!2398129) (not b!8054402) (not b!8054355) (not b!8054421) (not b!8054425) (not b!8054419) (not b!8054357) (not b!8054437) (not b!8054372) (not b!8054389) (not b!8054420) (not bm!747278) (not d!2398207) (not d!2398141) (not bm!747250) (not d!2398193) (not b!8054362) (not b!8054424) (not b!8054360) (not b!8054367) (not d!2398177) (not b!8054275) (not b!8054430) (not b!8054368) (not b!8054373) (not b!8054336) (not b!8054216) (not b!8054403) (not bm!747271) (not b!8054387) (not b!8054369) (not d!2398143) tp_is_empty!54931 (not d!2398205) (not bm!747277) (not bm!747269) (not b!8054272) (not bm!747267) (not b!8054361) (not b!8054396) (not b!8054398) (not bm!747268) (not b!8054269) (not b!8054333) (not b!8054366) (not b!8054399) (not d!2398189) (not b!8054423) (not b!8054274) (not bm!747279) (not d!2398191) (not d!2398201) (not b!8054436) (not b!8054356) (not b!8054270) (not b!8054223) (not b!8054276) (not b!8054397) (not b!8054217) tp_is_empty!54933 (not b!8054358) (not d!2398185) (not d!2398147) (not b!8054371) (not d!2398199) (not bm!747272) (not b!8054271) (not b!8054431) (not d!2398137))
(check-sat)
