; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!437352 () Bool)

(assert start!437352)

(declare-fun tp_is_empty!27141 () Bool)

(declare-fun tp_is_empty!27143 () Bool)

(declare-fun b!4460188 () Bool)

(declare-fun tp!1335642 () Bool)

(declare-fun e!2777339 () Bool)

(assert (=> b!4460188 (= e!2777339 (and tp_is_empty!27141 tp_is_empty!27143 tp!1335642))))

(declare-fun b!4460189 () Bool)

(declare-fun e!2777338 () Bool)

(declare-fun tp!1335643 () Bool)

(assert (=> b!4460189 (= e!2777338 tp!1335643)))

(declare-fun b!4460190 () Bool)

(declare-fun e!2777341 () Bool)

(declare-fun e!2777340 () Bool)

(assert (=> b!4460190 (= e!2777341 e!2777340)))

(declare-fun res!1849481 () Bool)

(assert (=> b!4460190 (=> (not res!1849481) (not e!2777340))))

(declare-datatypes ((K!11555 0))(
  ( (K!11556 (val!17515 Int)) )
))
(declare-datatypes ((V!11801 0))(
  ( (V!11802 (val!17516 Int)) )
))
(declare-datatypes ((tuple2!50324 0))(
  ( (tuple2!50325 (_1!28456 K!11555) (_2!28456 V!11801)) )
))
(declare-datatypes ((List!50279 0))(
  ( (Nil!50155) (Cons!50155 (h!55900 tuple2!50324) (t!357229 List!50279)) )
))
(declare-fun l!12755 () List!50279)

(declare-fun key!4289 () K!11555)

(assert (=> b!4460190 (= res!1849481 (not (= (_1!28456 (h!55900 l!12755)) key!4289)))))

(declare-datatypes ((ListMap!3201 0))(
  ( (ListMap!3202 (toList!3952 List!50279)) )
))
(declare-fun lt!1651294 () ListMap!3201)

(declare-fun acc!957 () ListMap!3201)

(declare-fun +!1333 (ListMap!3201 tuple2!50324) ListMap!3201)

(assert (=> b!4460190 (= lt!1651294 (+!1333 acc!957 (h!55900 l!12755)))))

(declare-fun b!4460191 () Bool)

(declare-fun res!1849476 () Bool)

(assert (=> b!4460191 (=> (not res!1849476) (not e!2777341))))

(declare-fun containsKey!1384 (List!50279 K!11555) Bool)

(assert (=> b!4460191 (= res!1849476 (not (containsKey!1384 l!12755 key!4289)))))

(declare-fun b!4460192 () Bool)

(declare-fun res!1849479 () Bool)

(assert (=> b!4460192 (=> (not res!1849479) (not e!2777341))))

(declare-fun contains!12655 (ListMap!3201 K!11555) Bool)

(declare-fun addToMapMapFromBucket!559 (List!50279 ListMap!3201) ListMap!3201)

(assert (=> b!4460192 (= res!1849479 (contains!12655 (addToMapMapFromBucket!559 l!12755 acc!957) key!4289))))

(declare-fun res!1849480 () Bool)

(assert (=> start!437352 (=> (not res!1849480) (not e!2777341))))

(declare-fun noDuplicateKeys!980 (List!50279) Bool)

(assert (=> start!437352 (= res!1849480 (noDuplicateKeys!980 l!12755))))

(assert (=> start!437352 e!2777341))

(assert (=> start!437352 e!2777339))

(assert (=> start!437352 tp_is_empty!27141))

(declare-fun inv!65739 (ListMap!3201) Bool)

(assert (=> start!437352 (and (inv!65739 acc!957) e!2777338)))

(declare-fun b!4460193 () Bool)

(declare-fun res!1849477 () Bool)

(assert (=> b!4460193 (=> (not res!1849477) (not e!2777341))))

(get-info :version)

(assert (=> b!4460193 (= res!1849477 ((_ is Cons!50155) l!12755))))

(declare-fun b!4460194 () Bool)

(assert (=> b!4460194 (= e!2777340 (containsKey!1384 (t!357229 l!12755) key!4289))))

(declare-fun b!4460195 () Bool)

(declare-fun res!1849478 () Bool)

(assert (=> b!4460195 (=> (not res!1849478) (not e!2777340))))

(assert (=> b!4460195 (= res!1849478 (noDuplicateKeys!980 (t!357229 l!12755)))))

(assert (= (and start!437352 res!1849480) b!4460191))

(assert (= (and b!4460191 res!1849476) b!4460192))

(assert (= (and b!4460192 res!1849479) b!4460193))

(assert (= (and b!4460193 res!1849477) b!4460190))

(assert (= (and b!4460190 res!1849481) b!4460195))

(assert (= (and b!4460195 res!1849478) b!4460194))

(assert (= (and start!437352 ((_ is Cons!50155) l!12755)) b!4460188))

(assert (= start!437352 b!4460189))

(declare-fun m!5163077 () Bool)

(assert (=> b!4460191 m!5163077))

(declare-fun m!5163079 () Bool)

(assert (=> b!4460195 m!5163079))

(declare-fun m!5163081 () Bool)

(assert (=> start!437352 m!5163081))

(declare-fun m!5163083 () Bool)

(assert (=> start!437352 m!5163083))

(declare-fun m!5163085 () Bool)

(assert (=> b!4460194 m!5163085))

(declare-fun m!5163087 () Bool)

(assert (=> b!4460190 m!5163087))

(declare-fun m!5163089 () Bool)

(assert (=> b!4460192 m!5163089))

(assert (=> b!4460192 m!5163089))

(declare-fun m!5163091 () Bool)

(assert (=> b!4460192 m!5163091))

(check-sat (not b!4460192) tp_is_empty!27141 tp_is_empty!27143 (not b!4460191) (not b!4460190) (not b!4460195) (not b!4460189) (not b!4460188) (not b!4460194) (not start!437352))
(check-sat)
(get-model)

(declare-fun d!1360083 () Bool)

(declare-fun res!1849486 () Bool)

(declare-fun e!2777346 () Bool)

(assert (=> d!1360083 (=> res!1849486 e!2777346)))

(assert (=> d!1360083 (= res!1849486 (not ((_ is Cons!50155) (t!357229 l!12755))))))

(assert (=> d!1360083 (= (noDuplicateKeys!980 (t!357229 l!12755)) e!2777346)))

(declare-fun b!4460200 () Bool)

(declare-fun e!2777347 () Bool)

(assert (=> b!4460200 (= e!2777346 e!2777347)))

(declare-fun res!1849487 () Bool)

(assert (=> b!4460200 (=> (not res!1849487) (not e!2777347))))

(assert (=> b!4460200 (= res!1849487 (not (containsKey!1384 (t!357229 (t!357229 l!12755)) (_1!28456 (h!55900 (t!357229 l!12755))))))))

(declare-fun b!4460201 () Bool)

(assert (=> b!4460201 (= e!2777347 (noDuplicateKeys!980 (t!357229 (t!357229 l!12755))))))

(assert (= (and d!1360083 (not res!1849486)) b!4460200))

(assert (= (and b!4460200 res!1849487) b!4460201))

(declare-fun m!5163093 () Bool)

(assert (=> b!4460200 m!5163093))

(declare-fun m!5163095 () Bool)

(assert (=> b!4460201 m!5163095))

(assert (=> b!4460195 d!1360083))

(declare-fun d!1360085 () Bool)

(declare-fun res!1849492 () Bool)

(declare-fun e!2777352 () Bool)

(assert (=> d!1360085 (=> res!1849492 e!2777352)))

(assert (=> d!1360085 (= res!1849492 (and ((_ is Cons!50155) (t!357229 l!12755)) (= (_1!28456 (h!55900 (t!357229 l!12755))) key!4289)))))

(assert (=> d!1360085 (= (containsKey!1384 (t!357229 l!12755) key!4289) e!2777352)))

(declare-fun b!4460206 () Bool)

(declare-fun e!2777353 () Bool)

(assert (=> b!4460206 (= e!2777352 e!2777353)))

(declare-fun res!1849493 () Bool)

(assert (=> b!4460206 (=> (not res!1849493) (not e!2777353))))

(assert (=> b!4460206 (= res!1849493 ((_ is Cons!50155) (t!357229 l!12755)))))

(declare-fun b!4460207 () Bool)

(assert (=> b!4460207 (= e!2777353 (containsKey!1384 (t!357229 (t!357229 l!12755)) key!4289))))

(assert (= (and d!1360085 (not res!1849492)) b!4460206))

(assert (= (and b!4460206 res!1849493) b!4460207))

(declare-fun m!5163097 () Bool)

(assert (=> b!4460207 m!5163097))

(assert (=> b!4460194 d!1360085))

(declare-fun d!1360087 () Bool)

(declare-fun res!1849494 () Bool)

(declare-fun e!2777354 () Bool)

(assert (=> d!1360087 (=> res!1849494 e!2777354)))

(assert (=> d!1360087 (= res!1849494 (and ((_ is Cons!50155) l!12755) (= (_1!28456 (h!55900 l!12755)) key!4289)))))

(assert (=> d!1360087 (= (containsKey!1384 l!12755 key!4289) e!2777354)))

(declare-fun b!4460208 () Bool)

(declare-fun e!2777355 () Bool)

(assert (=> b!4460208 (= e!2777354 e!2777355)))

(declare-fun res!1849495 () Bool)

(assert (=> b!4460208 (=> (not res!1849495) (not e!2777355))))

(assert (=> b!4460208 (= res!1849495 ((_ is Cons!50155) l!12755))))

(declare-fun b!4460209 () Bool)

(assert (=> b!4460209 (= e!2777355 (containsKey!1384 (t!357229 l!12755) key!4289))))

(assert (= (and d!1360087 (not res!1849494)) b!4460208))

(assert (= (and b!4460208 res!1849495) b!4460209))

(assert (=> b!4460209 m!5163085))

(assert (=> b!4460191 d!1360087))

(declare-fun d!1360089 () Bool)

(declare-fun e!2777362 () Bool)

(assert (=> d!1360089 e!2777362))

(declare-fun res!1849500 () Bool)

(assert (=> d!1360089 (=> (not res!1849500) (not e!2777362))))

(declare-fun lt!1651321 () ListMap!3201)

(assert (=> d!1360089 (= res!1849500 (contains!12655 lt!1651321 (_1!28456 (h!55900 l!12755))))))

(declare-fun lt!1651319 () List!50279)

(assert (=> d!1360089 (= lt!1651321 (ListMap!3202 lt!1651319))))

(declare-datatypes ((Unit!86647 0))(
  ( (Unit!86648) )
))
(declare-fun lt!1651320 () Unit!86647)

(declare-fun lt!1651322 () Unit!86647)

(assert (=> d!1360089 (= lt!1651320 lt!1651322)))

(declare-datatypes ((Option!10881 0))(
  ( (None!10880) (Some!10880 (v!44138 V!11801)) )
))
(declare-fun getValueByKey!867 (List!50279 K!11555) Option!10881)

(assert (=> d!1360089 (= (getValueByKey!867 lt!1651319 (_1!28456 (h!55900 l!12755))) (Some!10880 (_2!28456 (h!55900 l!12755))))))

(declare-fun lemmaContainsTupThenGetReturnValue!561 (List!50279 K!11555 V!11801) Unit!86647)

(assert (=> d!1360089 (= lt!1651322 (lemmaContainsTupThenGetReturnValue!561 lt!1651319 (_1!28456 (h!55900 l!12755)) (_2!28456 (h!55900 l!12755))))))

(declare-fun insertNoDuplicatedKeys!255 (List!50279 K!11555 V!11801) List!50279)

(assert (=> d!1360089 (= lt!1651319 (insertNoDuplicatedKeys!255 (toList!3952 acc!957) (_1!28456 (h!55900 l!12755)) (_2!28456 (h!55900 l!12755))))))

(assert (=> d!1360089 (= (+!1333 acc!957 (h!55900 l!12755)) lt!1651321)))

(declare-fun b!4460222 () Bool)

(declare-fun res!1849501 () Bool)

(assert (=> b!4460222 (=> (not res!1849501) (not e!2777362))))

(assert (=> b!4460222 (= res!1849501 (= (getValueByKey!867 (toList!3952 lt!1651321) (_1!28456 (h!55900 l!12755))) (Some!10880 (_2!28456 (h!55900 l!12755)))))))

(declare-fun b!4460223 () Bool)

(declare-fun contains!12657 (List!50279 tuple2!50324) Bool)

(assert (=> b!4460223 (= e!2777362 (contains!12657 (toList!3952 lt!1651321) (h!55900 l!12755)))))

(assert (= (and d!1360089 res!1849500) b!4460222))

(assert (= (and b!4460222 res!1849501) b!4460223))

(declare-fun m!5163099 () Bool)

(assert (=> d!1360089 m!5163099))

(declare-fun m!5163101 () Bool)

(assert (=> d!1360089 m!5163101))

(declare-fun m!5163103 () Bool)

(assert (=> d!1360089 m!5163103))

(declare-fun m!5163105 () Bool)

(assert (=> d!1360089 m!5163105))

(declare-fun m!5163107 () Bool)

(assert (=> b!4460222 m!5163107))

(declare-fun m!5163109 () Bool)

(assert (=> b!4460223 m!5163109))

(assert (=> b!4460190 d!1360089))

(declare-fun b!4460261 () Bool)

(declare-fun e!2777394 () Bool)

(declare-datatypes ((List!50281 0))(
  ( (Nil!50157) (Cons!50157 (h!55902 K!11555) (t!357231 List!50281)) )
))
(declare-fun contains!12658 (List!50281 K!11555) Bool)

(declare-fun keys!17278 (ListMap!3201) List!50281)

(assert (=> b!4460261 (= e!2777394 (not (contains!12658 (keys!17278 (addToMapMapFromBucket!559 l!12755 acc!957)) key!4289)))))

(declare-fun b!4460262 () Bool)

(declare-fun e!2777391 () Unit!86647)

(declare-fun lt!1651352 () Unit!86647)

(assert (=> b!4460262 (= e!2777391 lt!1651352)))

(declare-fun lt!1651351 () Unit!86647)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!772 (List!50279 K!11555) Unit!86647)

(assert (=> b!4460262 (= lt!1651351 (lemmaContainsKeyImpliesGetValueByKeyDefined!772 (toList!3952 (addToMapMapFromBucket!559 l!12755 acc!957)) key!4289))))

(declare-fun isDefined!8169 (Option!10881) Bool)

(assert (=> b!4460262 (isDefined!8169 (getValueByKey!867 (toList!3952 (addToMapMapFromBucket!559 l!12755 acc!957)) key!4289))))

(declare-fun lt!1651349 () Unit!86647)

(assert (=> b!4460262 (= lt!1651349 lt!1651351)))

(declare-fun lemmaInListThenGetKeysListContains!345 (List!50279 K!11555) Unit!86647)

(assert (=> b!4460262 (= lt!1651352 (lemmaInListThenGetKeysListContains!345 (toList!3952 (addToMapMapFromBucket!559 l!12755 acc!957)) key!4289))))

(declare-fun call!310492 () Bool)

(assert (=> b!4460262 call!310492))

(declare-fun b!4460263 () Bool)

(declare-fun e!2777392 () Unit!86647)

(declare-fun Unit!86650 () Unit!86647)

(assert (=> b!4460263 (= e!2777392 Unit!86650)))

(declare-fun b!4460264 () Bool)

(declare-fun e!2777390 () Bool)

(assert (=> b!4460264 (= e!2777390 (contains!12658 (keys!17278 (addToMapMapFromBucket!559 l!12755 acc!957)) key!4289))))

(declare-fun b!4460265 () Bool)

(declare-fun e!2777389 () List!50281)

(assert (=> b!4460265 (= e!2777389 (keys!17278 (addToMapMapFromBucket!559 l!12755 acc!957)))))

(declare-fun b!4460266 () Bool)

(assert (=> b!4460266 (= e!2777391 e!2777392)))

(declare-fun c!759105 () Bool)

(assert (=> b!4460266 (= c!759105 call!310492)))

(declare-fun b!4460267 () Bool)

(declare-fun getKeysList!349 (List!50279) List!50281)

(assert (=> b!4460267 (= e!2777389 (getKeysList!349 (toList!3952 (addToMapMapFromBucket!559 l!12755 acc!957))))))

(declare-fun d!1360091 () Bool)

(declare-fun e!2777393 () Bool)

(assert (=> d!1360091 e!2777393))

(declare-fun res!1849519 () Bool)

(assert (=> d!1360091 (=> res!1849519 e!2777393)))

(assert (=> d!1360091 (= res!1849519 e!2777394)))

(declare-fun res!1849517 () Bool)

(assert (=> d!1360091 (=> (not res!1849517) (not e!2777394))))

(declare-fun lt!1651354 () Bool)

(assert (=> d!1360091 (= res!1849517 (not lt!1651354))))

(declare-fun lt!1651348 () Bool)

(assert (=> d!1360091 (= lt!1651354 lt!1651348)))

(declare-fun lt!1651353 () Unit!86647)

(assert (=> d!1360091 (= lt!1651353 e!2777391)))

(declare-fun c!759106 () Bool)

(assert (=> d!1360091 (= c!759106 lt!1651348)))

(declare-fun containsKey!1386 (List!50279 K!11555) Bool)

(assert (=> d!1360091 (= lt!1651348 (containsKey!1386 (toList!3952 (addToMapMapFromBucket!559 l!12755 acc!957)) key!4289))))

(assert (=> d!1360091 (= (contains!12655 (addToMapMapFromBucket!559 l!12755 acc!957) key!4289) lt!1651354)))

(declare-fun b!4460268 () Bool)

(assert (=> b!4460268 (= e!2777393 e!2777390)))

(declare-fun res!1849518 () Bool)

(assert (=> b!4460268 (=> (not res!1849518) (not e!2777390))))

(assert (=> b!4460268 (= res!1849518 (isDefined!8169 (getValueByKey!867 (toList!3952 (addToMapMapFromBucket!559 l!12755 acc!957)) key!4289)))))

(declare-fun b!4460269 () Bool)

(assert (=> b!4460269 false))

(declare-fun lt!1651347 () Unit!86647)

(declare-fun lt!1651350 () Unit!86647)

(assert (=> b!4460269 (= lt!1651347 lt!1651350)))

(assert (=> b!4460269 (containsKey!1386 (toList!3952 (addToMapMapFromBucket!559 l!12755 acc!957)) key!4289)))

(declare-fun lemmaInGetKeysListThenContainsKey!348 (List!50279 K!11555) Unit!86647)

(assert (=> b!4460269 (= lt!1651350 (lemmaInGetKeysListThenContainsKey!348 (toList!3952 (addToMapMapFromBucket!559 l!12755 acc!957)) key!4289))))

(declare-fun Unit!86659 () Unit!86647)

(assert (=> b!4460269 (= e!2777392 Unit!86659)))

(declare-fun bm!310487 () Bool)

(assert (=> bm!310487 (= call!310492 (contains!12658 e!2777389 key!4289))))

(declare-fun c!759104 () Bool)

(assert (=> bm!310487 (= c!759104 c!759106)))

(assert (= (and d!1360091 c!759106) b!4460262))

(assert (= (and d!1360091 (not c!759106)) b!4460266))

(assert (= (and b!4460266 c!759105) b!4460269))

(assert (= (and b!4460266 (not c!759105)) b!4460263))

(assert (= (or b!4460262 b!4460266) bm!310487))

(assert (= (and bm!310487 c!759104) b!4460267))

(assert (= (and bm!310487 (not c!759104)) b!4460265))

(assert (= (and d!1360091 res!1849517) b!4460261))

(assert (= (and d!1360091 (not res!1849519)) b!4460268))

(assert (= (and b!4460268 res!1849518) b!4460264))

(declare-fun m!5163131 () Bool)

(assert (=> b!4460262 m!5163131))

(declare-fun m!5163133 () Bool)

(assert (=> b!4460262 m!5163133))

(assert (=> b!4460262 m!5163133))

(declare-fun m!5163135 () Bool)

(assert (=> b!4460262 m!5163135))

(declare-fun m!5163137 () Bool)

(assert (=> b!4460262 m!5163137))

(assert (=> b!4460261 m!5163089))

(declare-fun m!5163139 () Bool)

(assert (=> b!4460261 m!5163139))

(assert (=> b!4460261 m!5163139))

(declare-fun m!5163141 () Bool)

(assert (=> b!4460261 m!5163141))

(declare-fun m!5163143 () Bool)

(assert (=> b!4460269 m!5163143))

(declare-fun m!5163145 () Bool)

(assert (=> b!4460269 m!5163145))

(declare-fun m!5163147 () Bool)

(assert (=> b!4460267 m!5163147))

(assert (=> b!4460265 m!5163089))

(assert (=> b!4460265 m!5163139))

(assert (=> d!1360091 m!5163143))

(declare-fun m!5163149 () Bool)

(assert (=> bm!310487 m!5163149))

(assert (=> b!4460268 m!5163133))

(assert (=> b!4460268 m!5163133))

(assert (=> b!4460268 m!5163135))

(assert (=> b!4460264 m!5163089))

(assert (=> b!4460264 m!5163139))

(assert (=> b!4460264 m!5163139))

(assert (=> b!4460264 m!5163141))

(assert (=> b!4460192 d!1360091))

(declare-fun b!4460325 () Bool)

(assert (=> b!4460325 true))

(declare-fun bs!791405 () Bool)

(declare-fun b!4460328 () Bool)

(assert (= bs!791405 (and b!4460328 b!4460325)))

(declare-fun lambda!161561 () Int)

(declare-fun lambda!161560 () Int)

(assert (=> bs!791405 (= lambda!161561 lambda!161560)))

(assert (=> b!4460328 true))

(declare-fun lambda!161562 () Int)

(declare-fun lt!1651482 () ListMap!3201)

(assert (=> bs!791405 (= (= lt!1651482 acc!957) (= lambda!161562 lambda!161560))))

(assert (=> b!4460328 (= (= lt!1651482 acc!957) (= lambda!161562 lambda!161561))))

(assert (=> b!4460328 true))

(declare-fun bs!791406 () Bool)

(declare-fun d!1360095 () Bool)

(assert (= bs!791406 (and d!1360095 b!4460325)))

(declare-fun lambda!161563 () Int)

(declare-fun lt!1651485 () ListMap!3201)

(assert (=> bs!791406 (= (= lt!1651485 acc!957) (= lambda!161563 lambda!161560))))

(declare-fun bs!791407 () Bool)

(assert (= bs!791407 (and d!1360095 b!4460328)))

(assert (=> bs!791407 (= (= lt!1651485 acc!957) (= lambda!161563 lambda!161561))))

(assert (=> bs!791407 (= (= lt!1651485 lt!1651482) (= lambda!161563 lambda!161562))))

(assert (=> d!1360095 true))

(declare-fun e!2777434 () ListMap!3201)

(assert (=> b!4460325 (= e!2777434 acc!957)))

(declare-fun lt!1651472 () Unit!86647)

(declare-fun call!310508 () Unit!86647)

(assert (=> b!4460325 (= lt!1651472 call!310508)))

(declare-fun call!310509 () Bool)

(assert (=> b!4460325 call!310509))

(declare-fun lt!1651487 () Unit!86647)

(assert (=> b!4460325 (= lt!1651487 lt!1651472)))

(declare-fun call!310510 () Bool)

(assert (=> b!4460325 call!310510))

(declare-fun lt!1651486 () Unit!86647)

(declare-fun Unit!86662 () Unit!86647)

(assert (=> b!4460325 (= lt!1651486 Unit!86662)))

(declare-fun e!2777435 () Bool)

(assert (=> d!1360095 e!2777435))

(declare-fun res!1849559 () Bool)

(assert (=> d!1360095 (=> (not res!1849559) (not e!2777435))))

(declare-fun forall!9911 (List!50279 Int) Bool)

(assert (=> d!1360095 (= res!1849559 (forall!9911 l!12755 lambda!161563))))

(assert (=> d!1360095 (= lt!1651485 e!2777434)))

(declare-fun c!759112 () Bool)

(assert (=> d!1360095 (= c!759112 ((_ is Nil!50155) l!12755))))

(assert (=> d!1360095 (noDuplicateKeys!980 l!12755)))

(assert (=> d!1360095 (= (addToMapMapFromBucket!559 l!12755 acc!957) lt!1651485)))

(declare-fun bm!310503 () Bool)

(assert (=> bm!310503 (= call!310510 (forall!9911 (toList!3952 acc!957) (ite c!759112 lambda!161560 lambda!161561)))))

(declare-fun bm!310504 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!250 (ListMap!3201) Unit!86647)

(assert (=> bm!310504 (= call!310508 (lemmaContainsAllItsOwnKeys!250 acc!957))))

(declare-fun b!4460326 () Bool)

(declare-fun invariantList!902 (List!50279) Bool)

(assert (=> b!4460326 (= e!2777435 (invariantList!902 (toList!3952 lt!1651485)))))

(declare-fun bm!310505 () Bool)

(assert (=> bm!310505 (= call!310509 (forall!9911 (toList!3952 acc!957) (ite c!759112 lambda!161560 lambda!161562)))))

(declare-fun b!4460327 () Bool)

(declare-fun res!1849557 () Bool)

(assert (=> b!4460327 (=> (not res!1849557) (not e!2777435))))

(assert (=> b!4460327 (= res!1849557 (forall!9911 (toList!3952 acc!957) lambda!161563))))

(assert (=> b!4460328 (= e!2777434 lt!1651482)))

(declare-fun lt!1651480 () ListMap!3201)

(assert (=> b!4460328 (= lt!1651480 (+!1333 acc!957 (h!55900 l!12755)))))

(assert (=> b!4460328 (= lt!1651482 (addToMapMapFromBucket!559 (t!357229 l!12755) (+!1333 acc!957 (h!55900 l!12755))))))

(declare-fun lt!1651475 () Unit!86647)

(assert (=> b!4460328 (= lt!1651475 call!310508)))

(assert (=> b!4460328 call!310510))

(declare-fun lt!1651490 () Unit!86647)

(assert (=> b!4460328 (= lt!1651490 lt!1651475)))

(assert (=> b!4460328 (forall!9911 (toList!3952 lt!1651480) lambda!161562)))

(declare-fun lt!1651478 () Unit!86647)

(declare-fun Unit!86663 () Unit!86647)

(assert (=> b!4460328 (= lt!1651478 Unit!86663)))

(assert (=> b!4460328 (forall!9911 (t!357229 l!12755) lambda!161562)))

(declare-fun lt!1651492 () Unit!86647)

(declare-fun Unit!86664 () Unit!86647)

(assert (=> b!4460328 (= lt!1651492 Unit!86664)))

(declare-fun lt!1651479 () Unit!86647)

(declare-fun Unit!86665 () Unit!86647)

(assert (=> b!4460328 (= lt!1651479 Unit!86665)))

(declare-fun lt!1651474 () Unit!86647)

(declare-fun forallContained!2200 (List!50279 Int tuple2!50324) Unit!86647)

(assert (=> b!4460328 (= lt!1651474 (forallContained!2200 (toList!3952 lt!1651480) lambda!161562 (h!55900 l!12755)))))

(assert (=> b!4460328 (contains!12655 lt!1651480 (_1!28456 (h!55900 l!12755)))))

(declare-fun lt!1651481 () Unit!86647)

(declare-fun Unit!86666 () Unit!86647)

(assert (=> b!4460328 (= lt!1651481 Unit!86666)))

(assert (=> b!4460328 (contains!12655 lt!1651482 (_1!28456 (h!55900 l!12755)))))

(declare-fun lt!1651484 () Unit!86647)

(declare-fun Unit!86667 () Unit!86647)

(assert (=> b!4460328 (= lt!1651484 Unit!86667)))

(assert (=> b!4460328 (forall!9911 l!12755 lambda!161562)))

(declare-fun lt!1651491 () Unit!86647)

(declare-fun Unit!86668 () Unit!86647)

(assert (=> b!4460328 (= lt!1651491 Unit!86668)))

(assert (=> b!4460328 (forall!9911 (toList!3952 lt!1651480) lambda!161562)))

(declare-fun lt!1651477 () Unit!86647)

(declare-fun Unit!86669 () Unit!86647)

(assert (=> b!4460328 (= lt!1651477 Unit!86669)))

(declare-fun lt!1651489 () Unit!86647)

(declare-fun Unit!86670 () Unit!86647)

(assert (=> b!4460328 (= lt!1651489 Unit!86670)))

(declare-fun lt!1651473 () Unit!86647)

(declare-fun addForallContainsKeyThenBeforeAdding!249 (ListMap!3201 ListMap!3201 K!11555 V!11801) Unit!86647)

(assert (=> b!4460328 (= lt!1651473 (addForallContainsKeyThenBeforeAdding!249 acc!957 lt!1651482 (_1!28456 (h!55900 l!12755)) (_2!28456 (h!55900 l!12755))))))

(assert (=> b!4460328 (forall!9911 (toList!3952 acc!957) lambda!161562)))

(declare-fun lt!1651488 () Unit!86647)

(assert (=> b!4460328 (= lt!1651488 lt!1651473)))

(assert (=> b!4460328 (forall!9911 (toList!3952 acc!957) lambda!161562)))

(declare-fun lt!1651483 () Unit!86647)

(declare-fun Unit!86671 () Unit!86647)

(assert (=> b!4460328 (= lt!1651483 Unit!86671)))

(declare-fun res!1849558 () Bool)

(assert (=> b!4460328 (= res!1849558 (forall!9911 l!12755 lambda!161562))))

(declare-fun e!2777433 () Bool)

(assert (=> b!4460328 (=> (not res!1849558) (not e!2777433))))

(assert (=> b!4460328 e!2777433))

(declare-fun lt!1651476 () Unit!86647)

(declare-fun Unit!86672 () Unit!86647)

(assert (=> b!4460328 (= lt!1651476 Unit!86672)))

(declare-fun b!4460329 () Bool)

(assert (=> b!4460329 (= e!2777433 call!310509)))

(assert (= (and d!1360095 c!759112) b!4460325))

(assert (= (and d!1360095 (not c!759112)) b!4460328))

(assert (= (and b!4460328 res!1849558) b!4460329))

(assert (= (or b!4460325 b!4460329) bm!310505))

(assert (= (or b!4460325 b!4460328) bm!310503))

(assert (= (or b!4460325 b!4460328) bm!310504))

(assert (= (and d!1360095 res!1849559) b!4460327))

(assert (= (and b!4460327 res!1849557) b!4460326))

(declare-fun m!5163203 () Bool)

(assert (=> bm!310504 m!5163203))

(declare-fun m!5163205 () Bool)

(assert (=> b!4460327 m!5163205))

(declare-fun m!5163207 () Bool)

(assert (=> bm!310503 m!5163207))

(declare-fun m!5163209 () Bool)

(assert (=> bm!310505 m!5163209))

(declare-fun m!5163211 () Bool)

(assert (=> d!1360095 m!5163211))

(assert (=> d!1360095 m!5163081))

(declare-fun m!5163213 () Bool)

(assert (=> b!4460326 m!5163213))

(assert (=> b!4460328 m!5163087))

(declare-fun m!5163215 () Bool)

(assert (=> b!4460328 m!5163215))

(declare-fun m!5163217 () Bool)

(assert (=> b!4460328 m!5163217))

(assert (=> b!4460328 m!5163087))

(declare-fun m!5163219 () Bool)

(assert (=> b!4460328 m!5163219))

(declare-fun m!5163221 () Bool)

(assert (=> b!4460328 m!5163221))

(declare-fun m!5163223 () Bool)

(assert (=> b!4460328 m!5163223))

(assert (=> b!4460328 m!5163217))

(assert (=> b!4460328 m!5163221))

(declare-fun m!5163225 () Bool)

(assert (=> b!4460328 m!5163225))

(declare-fun m!5163227 () Bool)

(assert (=> b!4460328 m!5163227))

(declare-fun m!5163229 () Bool)

(assert (=> b!4460328 m!5163229))

(assert (=> b!4460328 m!5163227))

(declare-fun m!5163231 () Bool)

(assert (=> b!4460328 m!5163231))

(assert (=> b!4460192 d!1360095))

(declare-fun d!1360109 () Bool)

(declare-fun res!1849560 () Bool)

(declare-fun e!2777436 () Bool)

(assert (=> d!1360109 (=> res!1849560 e!2777436)))

(assert (=> d!1360109 (= res!1849560 (not ((_ is Cons!50155) l!12755)))))

(assert (=> d!1360109 (= (noDuplicateKeys!980 l!12755) e!2777436)))

(declare-fun b!4460332 () Bool)

(declare-fun e!2777437 () Bool)

(assert (=> b!4460332 (= e!2777436 e!2777437)))

(declare-fun res!1849561 () Bool)

(assert (=> b!4460332 (=> (not res!1849561) (not e!2777437))))

(assert (=> b!4460332 (= res!1849561 (not (containsKey!1384 (t!357229 l!12755) (_1!28456 (h!55900 l!12755)))))))

(declare-fun b!4460333 () Bool)

(assert (=> b!4460333 (= e!2777437 (noDuplicateKeys!980 (t!357229 l!12755)))))

(assert (= (and d!1360109 (not res!1849560)) b!4460332))

(assert (= (and b!4460332 res!1849561) b!4460333))

(declare-fun m!5163233 () Bool)

(assert (=> b!4460332 m!5163233))

(assert (=> b!4460333 m!5163079))

(assert (=> start!437352 d!1360109))

(declare-fun d!1360111 () Bool)

(assert (=> d!1360111 (= (inv!65739 acc!957) (invariantList!902 (toList!3952 acc!957)))))

(declare-fun bs!791408 () Bool)

(assert (= bs!791408 d!1360111))

(declare-fun m!5163235 () Bool)

(assert (=> bs!791408 m!5163235))

(assert (=> start!437352 d!1360111))

(declare-fun b!4460338 () Bool)

(declare-fun tp!1335650 () Bool)

(declare-fun e!2777440 () Bool)

(assert (=> b!4460338 (= e!2777440 (and tp_is_empty!27141 tp_is_empty!27143 tp!1335650))))

(assert (=> b!4460188 (= tp!1335642 e!2777440)))

(assert (= (and b!4460188 ((_ is Cons!50155) (t!357229 l!12755))) b!4460338))

(declare-fun e!2777441 () Bool)

(declare-fun b!4460339 () Bool)

(declare-fun tp!1335651 () Bool)

(assert (=> b!4460339 (= e!2777441 (and tp_is_empty!27141 tp_is_empty!27143 tp!1335651))))

(assert (=> b!4460189 (= tp!1335643 e!2777441)))

(assert (= (and b!4460189 ((_ is Cons!50155) (toList!3952 acc!957))) b!4460339))

(check-sat (not bm!310505) (not b!4460327) (not b!4460338) (not d!1360111) (not bm!310487) (not bm!310504) (not b!4460207) (not d!1360089) (not d!1360091) (not d!1360095) (not b!4460222) (not b!4460261) (not b!4460267) (not b!4460339) tp_is_empty!27141 (not b!4460223) (not b!4460333) (not b!4460269) (not bm!310503) (not b!4460201) (not b!4460332) tp_is_empty!27143 (not b!4460209) (not b!4460328) (not b!4460262) (not b!4460265) (not b!4460326) (not b!4460200) (not b!4460268) (not b!4460264))
(check-sat)
