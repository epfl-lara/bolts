; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!136992 () Bool)

(assert start!136992)

(declare-fun res!1079066 () Bool)

(declare-fun e!880952 () Bool)

(assert (=> start!136992 (=> res!1079066 e!880952)))

(declare-datatypes ((B!2590 0))(
  ( (B!2591 (val!19657 Int)) )
))
(declare-datatypes ((tuple2!25580 0))(
  ( (tuple2!25581 (_1!12800 (_ BitVec 64)) (_2!12800 B!2590)) )
))
(declare-datatypes ((List!36938 0))(
  ( (Nil!36935) (Cons!36934 (h!38478 tuple2!25580) (t!51859 List!36938)) )
))
(declare-fun lt!676423 () List!36938)

(declare-fun isStrictlySorted!1036 (List!36938) Bool)

(assert (=> start!136992 (= res!1079066 (not (isStrictlySorted!1036 lt!676423)))))

(declare-datatypes ((ListLongMap!22931 0))(
  ( (ListLongMap!22932 (toList!11481 List!36938)) )
))
(declare-fun thiss!201 () ListLongMap!22931)

(declare-fun keyValue!4 () tuple2!25580)

(declare-fun insertStrictlySorted!608 (List!36938 (_ BitVec 64) B!2590) List!36938)

(assert (=> start!136992 (= lt!676423 (insertStrictlySorted!608 (toList!11481 thiss!201) (_1!12800 keyValue!4) (_2!12800 keyValue!4)))))

(assert (=> start!136992 e!880952))

(declare-fun e!880953 () Bool)

(declare-fun inv!58953 (ListLongMap!22931) Bool)

(assert (=> start!136992 (and (inv!58953 thiss!201) e!880953)))

(declare-fun tp_is_empty!39135 () Bool)

(assert (=> start!136992 tp_is_empty!39135))

(declare-fun b!1579197 () Bool)

(declare-fun res!1079065 () Bool)

(assert (=> b!1579197 (=> res!1079065 e!880952)))

(declare-fun containsKey!883 (List!36938 (_ BitVec 64)) Bool)

(assert (=> b!1579197 (= res!1079065 (not (containsKey!883 lt!676423 (_1!12800 keyValue!4))))))

(declare-fun b!1579198 () Bool)

(declare-fun contains!10466 (List!36938 tuple2!25580) Bool)

(assert (=> b!1579198 (= e!880952 (not (contains!10466 lt!676423 keyValue!4)))))

(declare-fun b!1579199 () Bool)

(declare-fun tp!114328 () Bool)

(assert (=> b!1579199 (= e!880953 tp!114328)))

(assert (= (and start!136992 (not res!1079066)) b!1579197))

(assert (= (and b!1579197 (not res!1079065)) b!1579198))

(assert (= start!136992 b!1579199))

(declare-fun m!1451097 () Bool)

(assert (=> start!136992 m!1451097))

(declare-fun m!1451099 () Bool)

(assert (=> start!136992 m!1451099))

(declare-fun m!1451101 () Bool)

(assert (=> start!136992 m!1451101))

(declare-fun m!1451103 () Bool)

(assert (=> b!1579197 m!1451103))

(declare-fun m!1451105 () Bool)

(assert (=> b!1579198 m!1451105))

(check-sat (not b!1579198) tp_is_empty!39135 (not start!136992) (not b!1579199) (not b!1579197))
(check-sat)
(get-model)

(declare-fun d!166185 () Bool)

(declare-fun lt!676431 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!827 (List!36938) (InoxSet tuple2!25580))

(assert (=> d!166185 (= lt!676431 (select (content!827 lt!676423) keyValue!4))))

(declare-fun e!880968 () Bool)

(assert (=> d!166185 (= lt!676431 e!880968)))

(declare-fun res!1079081 () Bool)

(assert (=> d!166185 (=> (not res!1079081) (not e!880968))))

(get-info :version)

(assert (=> d!166185 (= res!1079081 ((_ is Cons!36934) lt!676423))))

(assert (=> d!166185 (= (contains!10466 lt!676423 keyValue!4) lt!676431)))

(declare-fun b!1579217 () Bool)

(declare-fun e!880969 () Bool)

(assert (=> b!1579217 (= e!880968 e!880969)))

(declare-fun res!1079082 () Bool)

(assert (=> b!1579217 (=> res!1079082 e!880969)))

(assert (=> b!1579217 (= res!1079082 (= (h!38478 lt!676423) keyValue!4))))

(declare-fun b!1579218 () Bool)

(assert (=> b!1579218 (= e!880969 (contains!10466 (t!51859 lt!676423) keyValue!4))))

(assert (= (and d!166185 res!1079081) b!1579217))

(assert (= (and b!1579217 (not res!1079082)) b!1579218))

(declare-fun m!1451117 () Bool)

(assert (=> d!166185 m!1451117))

(declare-fun m!1451119 () Bool)

(assert (=> d!166185 m!1451119))

(declare-fun m!1451121 () Bool)

(assert (=> b!1579218 m!1451121))

(assert (=> b!1579198 d!166185))

(declare-fun d!166191 () Bool)

(declare-fun res!1079099 () Bool)

(declare-fun e!880986 () Bool)

(assert (=> d!166191 (=> res!1079099 e!880986)))

(assert (=> d!166191 (= res!1079099 (and ((_ is Cons!36934) lt!676423) (= (_1!12800 (h!38478 lt!676423)) (_1!12800 keyValue!4))))))

(assert (=> d!166191 (= (containsKey!883 lt!676423 (_1!12800 keyValue!4)) e!880986)))

(declare-fun b!1579235 () Bool)

(declare-fun e!880987 () Bool)

(assert (=> b!1579235 (= e!880986 e!880987)))

(declare-fun res!1079100 () Bool)

(assert (=> b!1579235 (=> (not res!1079100) (not e!880987))))

(assert (=> b!1579235 (= res!1079100 (and (or (not ((_ is Cons!36934) lt!676423)) (bvsle (_1!12800 (h!38478 lt!676423)) (_1!12800 keyValue!4))) ((_ is Cons!36934) lt!676423) (bvslt (_1!12800 (h!38478 lt!676423)) (_1!12800 keyValue!4))))))

(declare-fun b!1579236 () Bool)

(assert (=> b!1579236 (= e!880987 (containsKey!883 (t!51859 lt!676423) (_1!12800 keyValue!4)))))

(assert (= (and d!166191 (not res!1079099)) b!1579235))

(assert (= (and b!1579235 res!1079100) b!1579236))

(declare-fun m!1451131 () Bool)

(assert (=> b!1579236 m!1451131))

(assert (=> b!1579197 d!166191))

(declare-fun d!166197 () Bool)

(declare-fun res!1079113 () Bool)

(declare-fun e!881000 () Bool)

(assert (=> d!166197 (=> res!1079113 e!881000)))

(assert (=> d!166197 (= res!1079113 (or ((_ is Nil!36935) lt!676423) ((_ is Nil!36935) (t!51859 lt!676423))))))

(assert (=> d!166197 (= (isStrictlySorted!1036 lt!676423) e!881000)))

(declare-fun b!1579249 () Bool)

(declare-fun e!881001 () Bool)

(assert (=> b!1579249 (= e!881000 e!881001)))

(declare-fun res!1079114 () Bool)

(assert (=> b!1579249 (=> (not res!1079114) (not e!881001))))

(assert (=> b!1579249 (= res!1079114 (bvslt (_1!12800 (h!38478 lt!676423)) (_1!12800 (h!38478 (t!51859 lt!676423)))))))

(declare-fun b!1579250 () Bool)

(assert (=> b!1579250 (= e!881001 (isStrictlySorted!1036 (t!51859 lt!676423)))))

(assert (= (and d!166197 (not res!1079113)) b!1579249))

(assert (= (and b!1579249 res!1079114) b!1579250))

(declare-fun m!1451141 () Bool)

(assert (=> b!1579250 m!1451141))

(assert (=> start!136992 d!166197))

(declare-fun b!1579327 () Bool)

(declare-fun e!881047 () List!36938)

(declare-fun call!72418 () List!36938)

(assert (=> b!1579327 (= e!881047 call!72418)))

(declare-fun d!166203 () Bool)

(declare-fun e!881044 () Bool)

(assert (=> d!166203 e!881044))

(declare-fun res!1079135 () Bool)

(assert (=> d!166203 (=> (not res!1079135) (not e!881044))))

(declare-fun lt!676443 () List!36938)

(assert (=> d!166203 (= res!1079135 (isStrictlySorted!1036 lt!676443))))

(declare-fun e!881045 () List!36938)

(assert (=> d!166203 (= lt!676443 e!881045)))

(declare-fun c!146333 () Bool)

(assert (=> d!166203 (= c!146333 (and ((_ is Cons!36934) (toList!11481 thiss!201)) (bvslt (_1!12800 (h!38478 (toList!11481 thiss!201))) (_1!12800 keyValue!4))))))

(assert (=> d!166203 (isStrictlySorted!1036 (toList!11481 thiss!201))))

(assert (=> d!166203 (= (insertStrictlySorted!608 (toList!11481 thiss!201) (_1!12800 keyValue!4) (_2!12800 keyValue!4)) lt!676443)))

(declare-fun b!1579328 () Bool)

(declare-fun c!146336 () Bool)

(declare-fun e!881043 () List!36938)

(declare-fun c!146335 () Bool)

(assert (=> b!1579328 (= e!881043 (ite c!146336 (t!51859 (toList!11481 thiss!201)) (ite c!146335 (Cons!36934 (h!38478 (toList!11481 thiss!201)) (t!51859 (toList!11481 thiss!201))) Nil!36935)))))

(declare-fun bm!72414 () Bool)

(declare-fun call!72419 () List!36938)

(declare-fun call!72417 () List!36938)

(assert (=> bm!72414 (= call!72419 call!72417)))

(declare-fun b!1579329 () Bool)

(declare-fun res!1079136 () Bool)

(assert (=> b!1579329 (=> (not res!1079136) (not e!881044))))

(assert (=> b!1579329 (= res!1079136 (containsKey!883 lt!676443 (_1!12800 keyValue!4)))))

(declare-fun b!1579330 () Bool)

(assert (=> b!1579330 (= e!881043 (insertStrictlySorted!608 (t!51859 (toList!11481 thiss!201)) (_1!12800 keyValue!4) (_2!12800 keyValue!4)))))

(declare-fun b!1579331 () Bool)

(assert (=> b!1579331 (= e!881044 (contains!10466 lt!676443 (tuple2!25581 (_1!12800 keyValue!4) (_2!12800 keyValue!4))))))

(declare-fun b!1579332 () Bool)

(assert (=> b!1579332 (= e!881045 call!72417)))

(declare-fun bm!72415 () Bool)

(assert (=> bm!72415 (= call!72418 call!72419)))

(declare-fun b!1579333 () Bool)

(assert (=> b!1579333 (= c!146335 (and ((_ is Cons!36934) (toList!11481 thiss!201)) (bvsgt (_1!12800 (h!38478 (toList!11481 thiss!201))) (_1!12800 keyValue!4))))))

(declare-fun e!881046 () List!36938)

(assert (=> b!1579333 (= e!881046 e!881047)))

(declare-fun b!1579334 () Bool)

(assert (=> b!1579334 (= e!881046 call!72419)))

(declare-fun bm!72416 () Bool)

(declare-fun $colon$colon!1011 (List!36938 tuple2!25580) List!36938)

(assert (=> bm!72416 (= call!72417 ($colon$colon!1011 e!881043 (ite c!146333 (h!38478 (toList!11481 thiss!201)) (tuple2!25581 (_1!12800 keyValue!4) (_2!12800 keyValue!4)))))))

(declare-fun c!146334 () Bool)

(assert (=> bm!72416 (= c!146334 c!146333)))

(declare-fun b!1579335 () Bool)

(assert (=> b!1579335 (= e!881045 e!881046)))

(assert (=> b!1579335 (= c!146336 (and ((_ is Cons!36934) (toList!11481 thiss!201)) (= (_1!12800 (h!38478 (toList!11481 thiss!201))) (_1!12800 keyValue!4))))))

(declare-fun b!1579336 () Bool)

(assert (=> b!1579336 (= e!881047 call!72418)))

(assert (= (and d!166203 c!146333) b!1579332))

(assert (= (and d!166203 (not c!146333)) b!1579335))

(assert (= (and b!1579335 c!146336) b!1579334))

(assert (= (and b!1579335 (not c!146336)) b!1579333))

(assert (= (and b!1579333 c!146335) b!1579336))

(assert (= (and b!1579333 (not c!146335)) b!1579327))

(assert (= (or b!1579336 b!1579327) bm!72415))

(assert (= (or b!1579334 bm!72415) bm!72414))

(assert (= (or b!1579332 bm!72414) bm!72416))

(assert (= (and bm!72416 c!146334) b!1579330))

(assert (= (and bm!72416 (not c!146334)) b!1579328))

(assert (= (and d!166203 res!1079135) b!1579329))

(assert (= (and b!1579329 res!1079136) b!1579331))

(declare-fun m!1451157 () Bool)

(assert (=> d!166203 m!1451157))

(declare-fun m!1451159 () Bool)

(assert (=> d!166203 m!1451159))

(declare-fun m!1451161 () Bool)

(assert (=> b!1579331 m!1451161))

(declare-fun m!1451163 () Bool)

(assert (=> b!1579329 m!1451163))

(declare-fun m!1451165 () Bool)

(assert (=> bm!72416 m!1451165))

(declare-fun m!1451167 () Bool)

(assert (=> b!1579330 m!1451167))

(assert (=> start!136992 d!166203))

(declare-fun d!166211 () Bool)

(assert (=> d!166211 (= (inv!58953 thiss!201) (isStrictlySorted!1036 (toList!11481 thiss!201)))))

(declare-fun bs!45731 () Bool)

(assert (= bs!45731 d!166211))

(assert (=> bs!45731 m!1451159))

(assert (=> start!136992 d!166211))

(declare-fun b!1579357 () Bool)

(declare-fun e!881061 () Bool)

(declare-fun tp!114334 () Bool)

(assert (=> b!1579357 (= e!881061 (and tp_is_empty!39135 tp!114334))))

(assert (=> b!1579199 (= tp!114328 e!881061)))

(assert (= (and b!1579199 ((_ is Cons!36934) (toList!11481 thiss!201))) b!1579357))

(check-sat (not b!1579218) (not d!166211) (not b!1579236) (not b!1579250) (not b!1579331) (not b!1579329) tp_is_empty!39135 (not bm!72416) (not b!1579330) (not d!166185) (not b!1579357) (not d!166203))
(check-sat)
