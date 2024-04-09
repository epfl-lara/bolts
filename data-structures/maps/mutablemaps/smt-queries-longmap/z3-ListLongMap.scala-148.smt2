; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!2778 () Bool)

(assert start!2778)

(declare-fun b_free!567 () Bool)

(declare-fun b_next!567 () Bool)

(assert (=> start!2778 (= b_free!567 (not b_next!567))))

(declare-fun tp!2861 () Bool)

(declare-fun b_and!1115 () Bool)

(assert (=> start!2778 (= tp!2861 b_and!1115)))

(declare-fun p!191 () Int)

(declare-fun b!16186 () Bool)

(declare-datatypes ((B!688 0))(
  ( (B!689 (val!442 Int)) )
))
(declare-datatypes ((tuple2!666 0))(
  ( (tuple2!667 (_1!333 (_ BitVec 64)) (_2!333 B!688)) )
))
(declare-datatypes ((List!522 0))(
  ( (Nil!519) (Cons!518 (h!1084 tuple2!666) (t!3062 List!522)) )
))
(declare-datatypes ((ListLongMap!497 0))(
  ( (ListLongMap!498 (toList!264 List!522)) )
))
(declare-fun lm!221 () ListLongMap!497)

(declare-fun a!507 () (_ BitVec 64))

(declare-fun e!9947 () Bool)

(declare-fun forall!144 (List!522 Int) Bool)

(declare-fun -!31 (ListLongMap!497 (_ BitVec 64)) ListLongMap!497)

(assert (=> b!16186 (= e!9947 (not (forall!144 (toList!264 (-!31 lm!221 a!507)) p!191)))))

(declare-fun lt!3971 () ListLongMap!497)

(assert (=> b!16186 (forall!144 (toList!264 (-!31 lt!3971 a!507)) p!191)))

(declare-datatypes ((Unit!322 0))(
  ( (Unit!323) )
))
(declare-fun lt!3972 () Unit!322)

(declare-fun removeValidProp!21 (ListLongMap!497 Int (_ BitVec 64)) Unit!322)

(assert (=> b!16186 (= lt!3972 (removeValidProp!21 lt!3971 p!191 a!507))))

(declare-fun b!16185 () Bool)

(declare-fun e!9948 () Bool)

(assert (=> b!16185 (= e!9948 e!9947)))

(declare-fun res!12085 () Bool)

(assert (=> b!16185 (=> (not res!12085) (not e!9947))))

(assert (=> b!16185 (= res!12085 (forall!144 (toList!264 lt!3971) p!191))))

(declare-fun tail!81 (ListLongMap!497) ListLongMap!497)

(assert (=> b!16185 (= lt!3971 (tail!81 lm!221))))

(declare-fun b!16184 () Bool)

(declare-fun res!12084 () Bool)

(assert (=> b!16184 (=> (not res!12084) (not e!9948))))

(declare-fun isEmpty!157 (ListLongMap!497) Bool)

(assert (=> b!16184 (= res!12084 (not (isEmpty!157 lm!221)))))

(declare-fun res!12083 () Bool)

(assert (=> start!2778 (=> (not res!12083) (not e!9948))))

(assert (=> start!2778 (= res!12083 (forall!144 (toList!264 lm!221) p!191))))

(assert (=> start!2778 e!9948))

(declare-fun e!9949 () Bool)

(declare-fun inv!889 (ListLongMap!497) Bool)

(assert (=> start!2778 (and (inv!889 lm!221) e!9949)))

(assert (=> start!2778 tp!2861))

(assert (=> start!2778 true))

(declare-fun b!16187 () Bool)

(declare-fun tp!2860 () Bool)

(assert (=> b!16187 (= e!9949 tp!2860)))

(assert (= (and start!2778 res!12083) b!16184))

(assert (= (and b!16184 res!12084) b!16185))

(assert (= (and b!16185 res!12085) b!16186))

(assert (= start!2778 b!16187))

(declare-fun m!11187 () Bool)

(assert (=> b!16186 m!11187))

(declare-fun m!11189 () Bool)

(assert (=> b!16186 m!11189))

(declare-fun m!11191 () Bool)

(assert (=> b!16186 m!11191))

(declare-fun m!11193 () Bool)

(assert (=> b!16186 m!11193))

(declare-fun m!11195 () Bool)

(assert (=> b!16186 m!11195))

(declare-fun m!11197 () Bool)

(assert (=> b!16185 m!11197))

(declare-fun m!11199 () Bool)

(assert (=> b!16185 m!11199))

(declare-fun m!11201 () Bool)

(assert (=> b!16184 m!11201))

(declare-fun m!11203 () Bool)

(assert (=> start!2778 m!11203))

(declare-fun m!11205 () Bool)

(assert (=> start!2778 m!11205))

(check-sat (not b!16186) (not start!2778) (not b!16185) (not b_next!567) (not b!16184) b_and!1115 (not b!16187))
(check-sat b_and!1115 (not b_next!567))
(get-model)

(declare-fun d!3033 () Bool)

(declare-fun lt!3981 () ListLongMap!497)

(declare-fun contains!193 (ListLongMap!497 (_ BitVec 64)) Bool)

(assert (=> d!3033 (not (contains!193 lt!3981 a!507))))

(declare-fun removeStrictlySorted!16 (List!522 (_ BitVec 64)) List!522)

(assert (=> d!3033 (= lt!3981 (ListLongMap!498 (removeStrictlySorted!16 (toList!264 lm!221) a!507)))))

(assert (=> d!3033 (= (-!31 lm!221 a!507) lt!3981)))

(declare-fun bs!760 () Bool)

(assert (= bs!760 d!3033))

(declare-fun m!11239 () Bool)

(assert (=> bs!760 m!11239))

(declare-fun m!11241 () Bool)

(assert (=> bs!760 m!11241))

(assert (=> b!16186 d!3033))

(declare-fun d!3043 () Bool)

(declare-fun res!12111 () Bool)

(declare-fun e!9975 () Bool)

(assert (=> d!3043 (=> res!12111 e!9975)))

(get-info :version)

(assert (=> d!3043 (= res!12111 ((_ is Nil!519) (toList!264 (-!31 lm!221 a!507))))))

(assert (=> d!3043 (= (forall!144 (toList!264 (-!31 lm!221 a!507)) p!191) e!9975)))

(declare-fun b!16216 () Bool)

(declare-fun e!9976 () Bool)

(assert (=> b!16216 (= e!9975 e!9976)))

(declare-fun res!12112 () Bool)

(assert (=> b!16216 (=> (not res!12112) (not e!9976))))

(declare-fun dynLambda!128 (Int tuple2!666) Bool)

(assert (=> b!16216 (= res!12112 (dynLambda!128 p!191 (h!1084 (toList!264 (-!31 lm!221 a!507)))))))

(declare-fun b!16217 () Bool)

(assert (=> b!16217 (= e!9976 (forall!144 (t!3062 (toList!264 (-!31 lm!221 a!507))) p!191))))

(assert (= (and d!3043 (not res!12111)) b!16216))

(assert (= (and b!16216 res!12112) b!16217))

(declare-fun b_lambda!1251 () Bool)

(assert (=> (not b_lambda!1251) (not b!16216)))

(declare-fun t!3069 () Bool)

(declare-fun tb!535 () Bool)

(assert (=> (and start!2778 (= p!191 p!191) t!3069) tb!535))

(declare-fun result!901 () Bool)

(assert (=> tb!535 (= result!901 true)))

(assert (=> b!16216 t!3069))

(declare-fun b_and!1123 () Bool)

(assert (= b_and!1115 (and (=> t!3069 result!901) b_and!1123)))

(declare-fun m!11245 () Bool)

(assert (=> b!16216 m!11245))

(declare-fun m!11247 () Bool)

(assert (=> b!16217 m!11247))

(assert (=> b!16186 d!3043))

(declare-fun d!3047 () Bool)

(assert (=> d!3047 (forall!144 (toList!264 (-!31 lt!3971 a!507)) p!191)))

(declare-fun lt!3991 () Unit!322)

(declare-fun choose!184 (ListLongMap!497 Int (_ BitVec 64)) Unit!322)

(assert (=> d!3047 (= lt!3991 (choose!184 lt!3971 p!191 a!507))))

(assert (=> d!3047 (forall!144 (toList!264 lt!3971) p!191)))

(assert (=> d!3047 (= (removeValidProp!21 lt!3971 p!191 a!507) lt!3991)))

(declare-fun bs!765 () Bool)

(assert (= bs!765 d!3047))

(assert (=> bs!765 m!11191))

(assert (=> bs!765 m!11189))

(declare-fun m!11273 () Bool)

(assert (=> bs!765 m!11273))

(assert (=> bs!765 m!11197))

(assert (=> b!16186 d!3047))

(declare-fun d!3061 () Bool)

(declare-fun res!12119 () Bool)

(declare-fun e!9983 () Bool)

(assert (=> d!3061 (=> res!12119 e!9983)))

(assert (=> d!3061 (= res!12119 ((_ is Nil!519) (toList!264 (-!31 lt!3971 a!507))))))

(assert (=> d!3061 (= (forall!144 (toList!264 (-!31 lt!3971 a!507)) p!191) e!9983)))

(declare-fun b!16224 () Bool)

(declare-fun e!9984 () Bool)

(assert (=> b!16224 (= e!9983 e!9984)))

(declare-fun res!12120 () Bool)

(assert (=> b!16224 (=> (not res!12120) (not e!9984))))

(assert (=> b!16224 (= res!12120 (dynLambda!128 p!191 (h!1084 (toList!264 (-!31 lt!3971 a!507)))))))

(declare-fun b!16225 () Bool)

(assert (=> b!16225 (= e!9984 (forall!144 (t!3062 (toList!264 (-!31 lt!3971 a!507))) p!191))))

(assert (= (and d!3061 (not res!12119)) b!16224))

(assert (= (and b!16224 res!12120) b!16225))

(declare-fun b_lambda!1259 () Bool)

(assert (=> (not b_lambda!1259) (not b!16224)))

(declare-fun t!3077 () Bool)

(declare-fun tb!543 () Bool)

(assert (=> (and start!2778 (= p!191 p!191) t!3077) tb!543))

(declare-fun result!909 () Bool)

(assert (=> tb!543 (= result!909 true)))

(assert (=> b!16224 t!3077))

(declare-fun b_and!1131 () Bool)

(assert (= b_and!1123 (and (=> t!3077 result!909) b_and!1131)))

(declare-fun m!11275 () Bool)

(assert (=> b!16224 m!11275))

(declare-fun m!11277 () Bool)

(assert (=> b!16225 m!11277))

(assert (=> b!16186 d!3061))

(declare-fun d!3063 () Bool)

(declare-fun lt!3992 () ListLongMap!497)

(assert (=> d!3063 (not (contains!193 lt!3992 a!507))))

(assert (=> d!3063 (= lt!3992 (ListLongMap!498 (removeStrictlySorted!16 (toList!264 lt!3971) a!507)))))

(assert (=> d!3063 (= (-!31 lt!3971 a!507) lt!3992)))

(declare-fun bs!766 () Bool)

(assert (= bs!766 d!3063))

(declare-fun m!11279 () Bool)

(assert (=> bs!766 m!11279))

(declare-fun m!11281 () Bool)

(assert (=> bs!766 m!11281))

(assert (=> b!16186 d!3063))

(declare-fun d!3065 () Bool)

(declare-fun res!12121 () Bool)

(declare-fun e!9985 () Bool)

(assert (=> d!3065 (=> res!12121 e!9985)))

(assert (=> d!3065 (= res!12121 ((_ is Nil!519) (toList!264 lt!3971)))))

(assert (=> d!3065 (= (forall!144 (toList!264 lt!3971) p!191) e!9985)))

(declare-fun b!16226 () Bool)

(declare-fun e!9986 () Bool)

(assert (=> b!16226 (= e!9985 e!9986)))

(declare-fun res!12122 () Bool)

(assert (=> b!16226 (=> (not res!12122) (not e!9986))))

(assert (=> b!16226 (= res!12122 (dynLambda!128 p!191 (h!1084 (toList!264 lt!3971))))))

(declare-fun b!16227 () Bool)

(assert (=> b!16227 (= e!9986 (forall!144 (t!3062 (toList!264 lt!3971)) p!191))))

(assert (= (and d!3065 (not res!12121)) b!16226))

(assert (= (and b!16226 res!12122) b!16227))

(declare-fun b_lambda!1261 () Bool)

(assert (=> (not b_lambda!1261) (not b!16226)))

(declare-fun t!3079 () Bool)

(declare-fun tb!545 () Bool)

(assert (=> (and start!2778 (= p!191 p!191) t!3079) tb!545))

(declare-fun result!911 () Bool)

(assert (=> tb!545 (= result!911 true)))

(assert (=> b!16226 t!3079))

(declare-fun b_and!1133 () Bool)

(assert (= b_and!1131 (and (=> t!3079 result!911) b_and!1133)))

(declare-fun m!11283 () Bool)

(assert (=> b!16226 m!11283))

(declare-fun m!11285 () Bool)

(assert (=> b!16227 m!11285))

(assert (=> b!16185 d!3065))

(declare-fun d!3067 () Bool)

(declare-fun tail!83 (List!522) List!522)

(assert (=> d!3067 (= (tail!81 lm!221) (ListLongMap!498 (tail!83 (toList!264 lm!221))))))

(declare-fun bs!767 () Bool)

(assert (= bs!767 d!3067))

(declare-fun m!11287 () Bool)

(assert (=> bs!767 m!11287))

(assert (=> b!16185 d!3067))

(declare-fun d!3069 () Bool)

(declare-fun isEmpty!160 (List!522) Bool)

(assert (=> d!3069 (= (isEmpty!157 lm!221) (isEmpty!160 (toList!264 lm!221)))))

(declare-fun bs!771 () Bool)

(assert (= bs!771 d!3069))

(declare-fun m!11299 () Bool)

(assert (=> bs!771 m!11299))

(assert (=> b!16184 d!3069))

(declare-fun d!3077 () Bool)

(declare-fun res!12127 () Bool)

(declare-fun e!9991 () Bool)

(assert (=> d!3077 (=> res!12127 e!9991)))

(assert (=> d!3077 (= res!12127 ((_ is Nil!519) (toList!264 lm!221)))))

(assert (=> d!3077 (= (forall!144 (toList!264 lm!221) p!191) e!9991)))

(declare-fun b!16232 () Bool)

(declare-fun e!9993 () Bool)

(assert (=> b!16232 (= e!9991 e!9993)))

(declare-fun res!12129 () Bool)

(assert (=> b!16232 (=> (not res!12129) (not e!9993))))

(assert (=> b!16232 (= res!12129 (dynLambda!128 p!191 (h!1084 (toList!264 lm!221))))))

(declare-fun b!16234 () Bool)

(assert (=> b!16234 (= e!9993 (forall!144 (t!3062 (toList!264 lm!221)) p!191))))

(assert (= (and d!3077 (not res!12127)) b!16232))

(assert (= (and b!16232 res!12129) b!16234))

(declare-fun b_lambda!1269 () Bool)

(assert (=> (not b_lambda!1269) (not b!16232)))

(declare-fun t!3087 () Bool)

(declare-fun tb!553 () Bool)

(assert (=> (and start!2778 (= p!191 p!191) t!3087) tb!553))

(declare-fun result!919 () Bool)

(assert (=> tb!553 (= result!919 true)))

(assert (=> b!16232 t!3087))

(declare-fun b_and!1141 () Bool)

(assert (= b_and!1133 (and (=> t!3087 result!919) b_and!1141)))

(declare-fun m!11311 () Bool)

(assert (=> b!16232 m!11311))

(declare-fun m!11313 () Bool)

(assert (=> b!16234 m!11313))

(assert (=> start!2778 d!3077))

(declare-fun d!3085 () Bool)

(declare-fun isStrictlySorted!163 (List!522) Bool)

(assert (=> d!3085 (= (inv!889 lm!221) (isStrictlySorted!163 (toList!264 lm!221)))))

(declare-fun bs!773 () Bool)

(assert (= bs!773 d!3085))

(declare-fun m!11317 () Bool)

(assert (=> bs!773 m!11317))

(assert (=> start!2778 d!3085))

(declare-fun b!16245 () Bool)

(declare-fun e!9999 () Bool)

(declare-fun tp_is_empty!829 () Bool)

(declare-fun tp!2872 () Bool)

(assert (=> b!16245 (= e!9999 (and tp_is_empty!829 tp!2872))))

(assert (=> b!16187 (= tp!2860 e!9999)))

(assert (= (and b!16187 ((_ is Cons!518) (toList!264 lm!221))) b!16245))

(declare-fun b_lambda!1271 () Bool)

(assert (= b_lambda!1251 (or (and start!2778 b_free!567) b_lambda!1271)))

(declare-fun b_lambda!1273 () Bool)

(assert (= b_lambda!1269 (or (and start!2778 b_free!567) b_lambda!1273)))

(declare-fun b_lambda!1275 () Bool)

(assert (= b_lambda!1261 (or (and start!2778 b_free!567) b_lambda!1275)))

(declare-fun b_lambda!1277 () Bool)

(assert (= b_lambda!1259 (or (and start!2778 b_free!567) b_lambda!1277)))

(check-sat (not d!3033) (not b_next!567) (not b!16225) (not b_lambda!1271) (not d!3069) (not b_lambda!1275) (not b!16245) (not b!16227) (not d!3063) (not b!16217) (not d!3085) (not b!16234) (not b_lambda!1277) tp_is_empty!829 b_and!1141 (not d!3067) (not d!3047) (not b_lambda!1273))
(check-sat b_and!1141 (not b_next!567))
(get-model)

(declare-fun d!3089 () Bool)

(declare-fun e!10008 () Bool)

(assert (=> d!3089 e!10008))

(declare-fun res!12133 () Bool)

(assert (=> d!3089 (=> res!12133 e!10008)))

(declare-fun lt!4011 () Bool)

(assert (=> d!3089 (= res!12133 (not lt!4011))))

(declare-fun lt!4010 () Bool)

(assert (=> d!3089 (= lt!4011 lt!4010)))

(declare-fun lt!4009 () Unit!322)

(declare-fun e!10009 () Unit!322)

(assert (=> d!3089 (= lt!4009 e!10009)))

(declare-fun c!1523 () Bool)

(assert (=> d!3089 (= c!1523 lt!4010)))

(declare-fun containsKey!17 (List!522 (_ BitVec 64)) Bool)

(assert (=> d!3089 (= lt!4010 (containsKey!17 (toList!264 lt!3981) a!507))))

(assert (=> d!3089 (= (contains!193 lt!3981 a!507) lt!4011)))

(declare-fun b!16257 () Bool)

(declare-fun lt!4008 () Unit!322)

(assert (=> b!16257 (= e!10009 lt!4008)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!14 (List!522 (_ BitVec 64)) Unit!322)

(assert (=> b!16257 (= lt!4008 (lemmaContainsKeyImpliesGetValueByKeyDefined!14 (toList!264 lt!3981) a!507))))

(declare-datatypes ((Option!59 0))(
  ( (Some!58 (v!1388 B!688)) (None!57) )
))
(declare-fun isDefined!15 (Option!59) Bool)

(declare-fun getValueByKey!53 (List!522 (_ BitVec 64)) Option!59)

(assert (=> b!16257 (isDefined!15 (getValueByKey!53 (toList!264 lt!3981) a!507))))

(declare-fun b!16258 () Bool)

(declare-fun Unit!326 () Unit!322)

(assert (=> b!16258 (= e!10009 Unit!326)))

(declare-fun b!16259 () Bool)

(assert (=> b!16259 (= e!10008 (isDefined!15 (getValueByKey!53 (toList!264 lt!3981) a!507)))))

(assert (= (and d!3089 c!1523) b!16257))

(assert (= (and d!3089 (not c!1523)) b!16258))

(assert (= (and d!3089 (not res!12133)) b!16259))

(declare-fun m!11323 () Bool)

(assert (=> d!3089 m!11323))

(declare-fun m!11325 () Bool)

(assert (=> b!16257 m!11325))

(declare-fun m!11327 () Bool)

(assert (=> b!16257 m!11327))

(assert (=> b!16257 m!11327))

(declare-fun m!11329 () Bool)

(assert (=> b!16257 m!11329))

(assert (=> b!16259 m!11327))

(assert (=> b!16259 m!11327))

(assert (=> b!16259 m!11329))

(assert (=> d!3033 d!3089))

(declare-fun b!16281 () Bool)

(declare-fun e!10024 () List!522)

(assert (=> b!16281 (= e!10024 Nil!519)))

(declare-fun b!16282 () Bool)

(declare-fun e!10025 () List!522)

(assert (=> b!16282 (= e!10025 e!10024)))

(declare-fun c!1532 () Bool)

(assert (=> b!16282 (= c!1532 (and ((_ is Cons!518) (toList!264 lm!221)) (not (= (_1!333 (h!1084 (toList!264 lm!221))) a!507))))))

(declare-fun d!3097 () Bool)

(declare-fun e!10026 () Bool)

(assert (=> d!3097 e!10026))

(declare-fun res!12141 () Bool)

(assert (=> d!3097 (=> (not res!12141) (not e!10026))))

(declare-fun lt!4026 () List!522)

(assert (=> d!3097 (= res!12141 (isStrictlySorted!163 lt!4026))))

(assert (=> d!3097 (= lt!4026 e!10025)))

(declare-fun c!1531 () Bool)

(assert (=> d!3097 (= c!1531 (and ((_ is Cons!518) (toList!264 lm!221)) (= (_1!333 (h!1084 (toList!264 lm!221))) a!507)))))

(assert (=> d!3097 (isStrictlySorted!163 (toList!264 lm!221))))

(assert (=> d!3097 (= (removeStrictlySorted!16 (toList!264 lm!221) a!507) lt!4026)))

(declare-fun b!16283 () Bool)

(assert (=> b!16283 (= e!10025 (t!3062 (toList!264 lm!221)))))

(declare-fun b!16284 () Bool)

(assert (=> b!16284 (= e!10026 (not (containsKey!17 lt!4026 a!507)))))

(declare-fun b!16285 () Bool)

(declare-fun $colon$colon!24 (List!522 tuple2!666) List!522)

(assert (=> b!16285 (= e!10024 ($colon$colon!24 (removeStrictlySorted!16 (t!3062 (toList!264 lm!221)) a!507) (h!1084 (toList!264 lm!221))))))

(assert (= (and d!3097 c!1531) b!16283))

(assert (= (and d!3097 (not c!1531)) b!16282))

(assert (= (and b!16282 c!1532) b!16285))

(assert (= (and b!16282 (not c!1532)) b!16281))

(assert (= (and d!3097 res!12141) b!16284))

(declare-fun m!11343 () Bool)

(assert (=> d!3097 m!11343))

(assert (=> d!3097 m!11317))

(declare-fun m!11345 () Bool)

(assert (=> b!16284 m!11345))

(declare-fun m!11347 () Bool)

(assert (=> b!16285 m!11347))

(assert (=> b!16285 m!11347))

(declare-fun m!11349 () Bool)

(assert (=> b!16285 m!11349))

(assert (=> d!3033 d!3097))

(declare-fun d!3107 () Bool)

(declare-fun res!12142 () Bool)

(declare-fun e!10031 () Bool)

(assert (=> d!3107 (=> res!12142 e!10031)))

(assert (=> d!3107 (= res!12142 ((_ is Nil!519) (t!3062 (toList!264 lt!3971))))))

(assert (=> d!3107 (= (forall!144 (t!3062 (toList!264 lt!3971)) p!191) e!10031)))

(declare-fun b!16294 () Bool)

(declare-fun e!10032 () Bool)

(assert (=> b!16294 (= e!10031 e!10032)))

(declare-fun res!12143 () Bool)

(assert (=> b!16294 (=> (not res!12143) (not e!10032))))

(assert (=> b!16294 (= res!12143 (dynLambda!128 p!191 (h!1084 (t!3062 (toList!264 lt!3971)))))))

(declare-fun b!16295 () Bool)

(assert (=> b!16295 (= e!10032 (forall!144 (t!3062 (t!3062 (toList!264 lt!3971))) p!191))))

(assert (= (and d!3107 (not res!12142)) b!16294))

(assert (= (and b!16294 res!12143) b!16295))

(declare-fun b_lambda!1297 () Bool)

(assert (=> (not b_lambda!1297) (not b!16294)))

(declare-fun t!3091 () Bool)

(declare-fun tb!557 () Bool)

(assert (=> (and start!2778 (= p!191 p!191) t!3091) tb!557))

(declare-fun result!929 () Bool)

(assert (=> tb!557 (= result!929 true)))

(assert (=> b!16294 t!3091))

(declare-fun b_and!1145 () Bool)

(assert (= b_and!1141 (and (=> t!3091 result!929) b_and!1145)))

(declare-fun m!11351 () Bool)

(assert (=> b!16294 m!11351))

(declare-fun m!11353 () Bool)

(assert (=> b!16295 m!11353))

(assert (=> b!16227 d!3107))

(declare-fun d!3109 () Bool)

(assert (=> d!3109 (= (tail!83 (toList!264 lm!221)) (t!3062 (toList!264 lm!221)))))

(assert (=> d!3067 d!3109))

(declare-fun d!3113 () Bool)

(declare-fun res!12146 () Bool)

(declare-fun e!10035 () Bool)

(assert (=> d!3113 (=> res!12146 e!10035)))

(assert (=> d!3113 (= res!12146 ((_ is Nil!519) (t!3062 (toList!264 (-!31 lm!221 a!507)))))))

(assert (=> d!3113 (= (forall!144 (t!3062 (toList!264 (-!31 lm!221 a!507))) p!191) e!10035)))

(declare-fun b!16298 () Bool)

(declare-fun e!10036 () Bool)

(assert (=> b!16298 (= e!10035 e!10036)))

(declare-fun res!12147 () Bool)

(assert (=> b!16298 (=> (not res!12147) (not e!10036))))

(assert (=> b!16298 (= res!12147 (dynLambda!128 p!191 (h!1084 (t!3062 (toList!264 (-!31 lm!221 a!507))))))))

(declare-fun b!16299 () Bool)

(assert (=> b!16299 (= e!10036 (forall!144 (t!3062 (t!3062 (toList!264 (-!31 lm!221 a!507)))) p!191))))

(assert (= (and d!3113 (not res!12146)) b!16298))

(assert (= (and b!16298 res!12147) b!16299))

(declare-fun b_lambda!1299 () Bool)

(assert (=> (not b_lambda!1299) (not b!16298)))

(declare-fun t!3093 () Bool)

(declare-fun tb!559 () Bool)

(assert (=> (and start!2778 (= p!191 p!191) t!3093) tb!559))

(declare-fun result!931 () Bool)

(assert (=> tb!559 (= result!931 true)))

(assert (=> b!16298 t!3093))

(declare-fun b_and!1147 () Bool)

(assert (= b_and!1145 (and (=> t!3093 result!931) b_and!1147)))

(declare-fun m!11355 () Bool)

(assert (=> b!16298 m!11355))

(declare-fun m!11357 () Bool)

(assert (=> b!16299 m!11357))

(assert (=> b!16217 d!3113))

(assert (=> d!3047 d!3061))

(assert (=> d!3047 d!3063))

(declare-fun d!3115 () Bool)

(assert (=> d!3115 (forall!144 (toList!264 (-!31 lt!3971 a!507)) p!191)))

(assert (=> d!3115 true))

(declare-fun _$31!20 () Unit!322)

(assert (=> d!3115 (= (choose!184 lt!3971 p!191 a!507) _$31!20)))

(declare-fun bs!777 () Bool)

(assert (= bs!777 d!3115))

(assert (=> bs!777 m!11191))

(assert (=> bs!777 m!11189))

(assert (=> d!3047 d!3115))

(assert (=> d!3047 d!3065))

(declare-fun d!3121 () Bool)

(declare-fun res!12166 () Bool)

(declare-fun e!10060 () Bool)

(assert (=> d!3121 (=> res!12166 e!10060)))

(assert (=> d!3121 (= res!12166 (or ((_ is Nil!519) (toList!264 lm!221)) ((_ is Nil!519) (t!3062 (toList!264 lm!221)))))))

(assert (=> d!3121 (= (isStrictlySorted!163 (toList!264 lm!221)) e!10060)))

(declare-fun b!16328 () Bool)

(declare-fun e!10061 () Bool)

(assert (=> b!16328 (= e!10060 e!10061)))

(declare-fun res!12167 () Bool)

(assert (=> b!16328 (=> (not res!12167) (not e!10061))))

(assert (=> b!16328 (= res!12167 (bvslt (_1!333 (h!1084 (toList!264 lm!221))) (_1!333 (h!1084 (t!3062 (toList!264 lm!221))))))))

(declare-fun b!16329 () Bool)

(assert (=> b!16329 (= e!10061 (isStrictlySorted!163 (t!3062 (toList!264 lm!221))))))

(assert (= (and d!3121 (not res!12166)) b!16328))

(assert (= (and b!16328 res!12167) b!16329))

(declare-fun m!11387 () Bool)

(assert (=> b!16329 m!11387))

(assert (=> d!3085 d!3121))

(declare-fun d!3129 () Bool)

(declare-fun res!12170 () Bool)

(declare-fun e!10067 () Bool)

(assert (=> d!3129 (=> res!12170 e!10067)))

(assert (=> d!3129 (= res!12170 ((_ is Nil!519) (t!3062 (toList!264 (-!31 lt!3971 a!507)))))))

(assert (=> d!3129 (= (forall!144 (t!3062 (toList!264 (-!31 lt!3971 a!507))) p!191) e!10067)))

(declare-fun b!16338 () Bool)

(declare-fun e!10068 () Bool)

(assert (=> b!16338 (= e!10067 e!10068)))

(declare-fun res!12171 () Bool)

(assert (=> b!16338 (=> (not res!12171) (not e!10068))))

(assert (=> b!16338 (= res!12171 (dynLambda!128 p!191 (h!1084 (t!3062 (toList!264 (-!31 lt!3971 a!507))))))))

(declare-fun b!16339 () Bool)

(assert (=> b!16339 (= e!10068 (forall!144 (t!3062 (t!3062 (toList!264 (-!31 lt!3971 a!507)))) p!191))))

(assert (= (and d!3129 (not res!12170)) b!16338))

(assert (= (and b!16338 res!12171) b!16339))

(declare-fun b_lambda!1305 () Bool)

(assert (=> (not b_lambda!1305) (not b!16338)))

(declare-fun t!3099 () Bool)

(declare-fun tb!565 () Bool)

(assert (=> (and start!2778 (= p!191 p!191) t!3099) tb!565))

(declare-fun result!937 () Bool)

(assert (=> tb!565 (= result!937 true)))

(assert (=> b!16338 t!3099))

(declare-fun b_and!1153 () Bool)

(assert (= b_and!1147 (and (=> t!3099 result!937) b_and!1153)))

(declare-fun m!11405 () Bool)

(assert (=> b!16338 m!11405))

(declare-fun m!11407 () Bool)

(assert (=> b!16339 m!11407))

(assert (=> b!16225 d!3129))

(declare-fun d!3135 () Bool)

(declare-fun e!10071 () Bool)

(assert (=> d!3135 e!10071))

(declare-fun res!12174 () Bool)

(assert (=> d!3135 (=> res!12174 e!10071)))

(declare-fun lt!4050 () Bool)

(assert (=> d!3135 (= res!12174 (not lt!4050))))

(declare-fun lt!4049 () Bool)

(assert (=> d!3135 (= lt!4050 lt!4049)))

(declare-fun lt!4048 () Unit!322)

(declare-fun e!10072 () Unit!322)

(assert (=> d!3135 (= lt!4048 e!10072)))

(declare-fun c!1545 () Bool)

(assert (=> d!3135 (= c!1545 lt!4049)))

(assert (=> d!3135 (= lt!4049 (containsKey!17 (toList!264 lt!3992) a!507))))

(assert (=> d!3135 (= (contains!193 lt!3992 a!507) lt!4050)))

(declare-fun b!16342 () Bool)

(declare-fun lt!4047 () Unit!322)

(assert (=> b!16342 (= e!10072 lt!4047)))

(assert (=> b!16342 (= lt!4047 (lemmaContainsKeyImpliesGetValueByKeyDefined!14 (toList!264 lt!3992) a!507))))

(assert (=> b!16342 (isDefined!15 (getValueByKey!53 (toList!264 lt!3992) a!507))))

(declare-fun b!16343 () Bool)

(declare-fun Unit!330 () Unit!322)

(assert (=> b!16343 (= e!10072 Unit!330)))

(declare-fun b!16344 () Bool)

(assert (=> b!16344 (= e!10071 (isDefined!15 (getValueByKey!53 (toList!264 lt!3992) a!507)))))

(assert (= (and d!3135 c!1545) b!16342))

(assert (= (and d!3135 (not c!1545)) b!16343))

(assert (= (and d!3135 (not res!12174)) b!16344))

(declare-fun m!11411 () Bool)

(assert (=> d!3135 m!11411))

(declare-fun m!11415 () Bool)

(assert (=> b!16342 m!11415))

(declare-fun m!11417 () Bool)

(assert (=> b!16342 m!11417))

(assert (=> b!16342 m!11417))

(declare-fun m!11419 () Bool)

(assert (=> b!16342 m!11419))

(assert (=> b!16344 m!11417))

(assert (=> b!16344 m!11417))

(assert (=> b!16344 m!11419))

(assert (=> d!3063 d!3135))

(declare-fun b!16347 () Bool)

(declare-fun e!10075 () List!522)

(assert (=> b!16347 (= e!10075 Nil!519)))

(declare-fun b!16348 () Bool)

(declare-fun e!10076 () List!522)

(assert (=> b!16348 (= e!10076 e!10075)))

(declare-fun c!1547 () Bool)

(assert (=> b!16348 (= c!1547 (and ((_ is Cons!518) (toList!264 lt!3971)) (not (= (_1!333 (h!1084 (toList!264 lt!3971))) a!507))))))

(declare-fun d!3139 () Bool)

(declare-fun e!10077 () Bool)

(assert (=> d!3139 e!10077))

(declare-fun res!12177 () Bool)

(assert (=> d!3139 (=> (not res!12177) (not e!10077))))

(declare-fun lt!4051 () List!522)

(assert (=> d!3139 (= res!12177 (isStrictlySorted!163 lt!4051))))

(assert (=> d!3139 (= lt!4051 e!10076)))

(declare-fun c!1546 () Bool)

(assert (=> d!3139 (= c!1546 (and ((_ is Cons!518) (toList!264 lt!3971)) (= (_1!333 (h!1084 (toList!264 lt!3971))) a!507)))))

(assert (=> d!3139 (isStrictlySorted!163 (toList!264 lt!3971))))

(assert (=> d!3139 (= (removeStrictlySorted!16 (toList!264 lt!3971) a!507) lt!4051)))

(declare-fun b!16349 () Bool)

(assert (=> b!16349 (= e!10076 (t!3062 (toList!264 lt!3971)))))

(declare-fun b!16350 () Bool)

(assert (=> b!16350 (= e!10077 (not (containsKey!17 lt!4051 a!507)))))

(declare-fun b!16351 () Bool)

(assert (=> b!16351 (= e!10075 ($colon$colon!24 (removeStrictlySorted!16 (t!3062 (toList!264 lt!3971)) a!507) (h!1084 (toList!264 lt!3971))))))

(assert (= (and d!3139 c!1546) b!16349))

(assert (= (and d!3139 (not c!1546)) b!16348))

(assert (= (and b!16348 c!1547) b!16351))

(assert (= (and b!16348 (not c!1547)) b!16347))

(assert (= (and d!3139 res!12177) b!16350))

(declare-fun m!11421 () Bool)

(assert (=> d!3139 m!11421))

(declare-fun m!11425 () Bool)

(assert (=> d!3139 m!11425))

(declare-fun m!11427 () Bool)

(assert (=> b!16350 m!11427))

(declare-fun m!11431 () Bool)

(assert (=> b!16351 m!11431))

(assert (=> b!16351 m!11431))

(declare-fun m!11433 () Bool)

(assert (=> b!16351 m!11433))

(assert (=> d!3063 d!3139))

(declare-fun d!3143 () Bool)

(declare-fun res!12178 () Bool)

(declare-fun e!10078 () Bool)

(assert (=> d!3143 (=> res!12178 e!10078)))

(assert (=> d!3143 (= res!12178 ((_ is Nil!519) (t!3062 (toList!264 lm!221))))))

(assert (=> d!3143 (= (forall!144 (t!3062 (toList!264 lm!221)) p!191) e!10078)))

(declare-fun b!16352 () Bool)

(declare-fun e!10079 () Bool)

(assert (=> b!16352 (= e!10078 e!10079)))

(declare-fun res!12179 () Bool)

(assert (=> b!16352 (=> (not res!12179) (not e!10079))))

(assert (=> b!16352 (= res!12179 (dynLambda!128 p!191 (h!1084 (t!3062 (toList!264 lm!221)))))))

(declare-fun b!16353 () Bool)

(assert (=> b!16353 (= e!10079 (forall!144 (t!3062 (t!3062 (toList!264 lm!221))) p!191))))

(assert (= (and d!3143 (not res!12178)) b!16352))

(assert (= (and b!16352 res!12179) b!16353))

(declare-fun b_lambda!1311 () Bool)

(assert (=> (not b_lambda!1311) (not b!16352)))

(declare-fun t!3105 () Bool)

(declare-fun tb!571 () Bool)

(assert (=> (and start!2778 (= p!191 p!191) t!3105) tb!571))

(declare-fun result!943 () Bool)

(assert (=> tb!571 (= result!943 true)))

(assert (=> b!16352 t!3105))

(declare-fun b_and!1159 () Bool)

(assert (= b_and!1153 (and (=> t!3105 result!943) b_and!1159)))

(declare-fun m!11435 () Bool)

(assert (=> b!16352 m!11435))

(declare-fun m!11437 () Bool)

(assert (=> b!16353 m!11437))

(assert (=> b!16234 d!3143))

(declare-fun d!3145 () Bool)

(assert (=> d!3145 (= (isEmpty!160 (toList!264 lm!221)) ((_ is Nil!519) (toList!264 lm!221)))))

(assert (=> d!3069 d!3145))

(declare-fun b!16354 () Bool)

(declare-fun e!10080 () Bool)

(declare-fun tp!2877 () Bool)

(assert (=> b!16354 (= e!10080 (and tp_is_empty!829 tp!2877))))

(assert (=> b!16245 (= tp!2872 e!10080)))

(assert (= (and b!16245 ((_ is Cons!518) (t!3062 (toList!264 lm!221)))) b!16354))

(declare-fun b_lambda!1313 () Bool)

(assert (= b_lambda!1297 (or (and start!2778 b_free!567) b_lambda!1313)))

(declare-fun b_lambda!1315 () Bool)

(assert (= b_lambda!1311 (or (and start!2778 b_free!567) b_lambda!1315)))

(declare-fun b_lambda!1317 () Bool)

(assert (= b_lambda!1305 (or (and start!2778 b_free!567) b_lambda!1317)))

(declare-fun b_lambda!1319 () Bool)

(assert (= b_lambda!1299 (or (and start!2778 b_free!567) b_lambda!1319)))

(check-sat (not b_lambda!1319) (not b!16353) (not b_lambda!1275) (not b_lambda!1317) (not b_lambda!1313) (not b!16285) (not d!3097) (not b!16299) (not b!16350) (not b!16351) (not b_lambda!1277) tp_is_empty!829 (not b!16354) (not d!3089) (not b_next!567) b_and!1159 (not b!16257) (not d!3135) (not b_lambda!1271) (not b!16329) (not b!16339) (not d!3115) (not b!16284) (not b!16344) (not b_lambda!1315) (not b!16342) (not b_lambda!1273) (not b!16259) (not b!16295) (not d!3139))
(check-sat b_and!1159 (not b_next!567))
(get-model)

(declare-fun d!3161 () Bool)

(declare-fun res!12201 () Bool)

(declare-fun e!10113 () Bool)

(assert (=> d!3161 (=> res!12201 e!10113)))

(assert (=> d!3161 (= res!12201 (and ((_ is Cons!518) (toList!264 lt!3992)) (= (_1!333 (h!1084 (toList!264 lt!3992))) a!507)))))

(assert (=> d!3161 (= (containsKey!17 (toList!264 lt!3992) a!507) e!10113)))

(declare-fun b!16396 () Bool)

(declare-fun e!10114 () Bool)

(assert (=> b!16396 (= e!10113 e!10114)))

(declare-fun res!12202 () Bool)

(assert (=> b!16396 (=> (not res!12202) (not e!10114))))

(assert (=> b!16396 (= res!12202 (and (or (not ((_ is Cons!518) (toList!264 lt!3992))) (bvsle (_1!333 (h!1084 (toList!264 lt!3992))) a!507)) ((_ is Cons!518) (toList!264 lt!3992)) (bvslt (_1!333 (h!1084 (toList!264 lt!3992))) a!507)))))

(declare-fun b!16397 () Bool)

(assert (=> b!16397 (= e!10114 (containsKey!17 (t!3062 (toList!264 lt!3992)) a!507))))

(assert (= (and d!3161 (not res!12201)) b!16396))

(assert (= (and b!16396 res!12202) b!16397))

(declare-fun m!11479 () Bool)

(assert (=> b!16397 m!11479))

(assert (=> d!3135 d!3161))

(declare-fun d!3163 () Bool)

(declare-fun res!12203 () Bool)

(declare-fun e!10115 () Bool)

(assert (=> d!3163 (=> res!12203 e!10115)))

(assert (=> d!3163 (= res!12203 ((_ is Nil!519) (t!3062 (t!3062 (toList!264 (-!31 lt!3971 a!507))))))))

(assert (=> d!3163 (= (forall!144 (t!3062 (t!3062 (toList!264 (-!31 lt!3971 a!507)))) p!191) e!10115)))

(declare-fun b!16398 () Bool)

(declare-fun e!10116 () Bool)

(assert (=> b!16398 (= e!10115 e!10116)))

(declare-fun res!12204 () Bool)

(assert (=> b!16398 (=> (not res!12204) (not e!10116))))

(assert (=> b!16398 (= res!12204 (dynLambda!128 p!191 (h!1084 (t!3062 (t!3062 (toList!264 (-!31 lt!3971 a!507)))))))))

(declare-fun b!16399 () Bool)

(assert (=> b!16399 (= e!10116 (forall!144 (t!3062 (t!3062 (t!3062 (toList!264 (-!31 lt!3971 a!507))))) p!191))))

(assert (= (and d!3163 (not res!12203)) b!16398))

(assert (= (and b!16398 res!12204) b!16399))

(declare-fun b_lambda!1343 () Bool)

(assert (=> (not b_lambda!1343) (not b!16398)))

(declare-fun t!3113 () Bool)

(declare-fun tb!579 () Bool)

(assert (=> (and start!2778 (= p!191 p!191) t!3113) tb!579))

(declare-fun result!951 () Bool)

(assert (=> tb!579 (= result!951 true)))

(assert (=> b!16398 t!3113))

(declare-fun b_and!1167 () Bool)

(assert (= b_and!1159 (and (=> t!3113 result!951) b_and!1167)))

(declare-fun m!11481 () Bool)

(assert (=> b!16398 m!11481))

(declare-fun m!11483 () Bool)

(assert (=> b!16399 m!11483))

(assert (=> b!16339 d!3163))

(declare-fun d!3167 () Bool)

(declare-fun res!12205 () Bool)

(declare-fun e!10117 () Bool)

(assert (=> d!3167 (=> res!12205 e!10117)))

(assert (=> d!3167 (= res!12205 (and ((_ is Cons!518) lt!4051) (= (_1!333 (h!1084 lt!4051)) a!507)))))

(assert (=> d!3167 (= (containsKey!17 lt!4051 a!507) e!10117)))

(declare-fun b!16400 () Bool)

(declare-fun e!10118 () Bool)

(assert (=> b!16400 (= e!10117 e!10118)))

(declare-fun res!12206 () Bool)

(assert (=> b!16400 (=> (not res!12206) (not e!10118))))

(assert (=> b!16400 (= res!12206 (and (or (not ((_ is Cons!518) lt!4051)) (bvsle (_1!333 (h!1084 lt!4051)) a!507)) ((_ is Cons!518) lt!4051) (bvslt (_1!333 (h!1084 lt!4051)) a!507)))))

(declare-fun b!16401 () Bool)

(assert (=> b!16401 (= e!10118 (containsKey!17 (t!3062 lt!4051) a!507))))

(assert (= (and d!3167 (not res!12205)) b!16400))

(assert (= (and b!16400 res!12206) b!16401))

(declare-fun m!11485 () Bool)

(assert (=> b!16401 m!11485))

(assert (=> b!16350 d!3167))

(declare-fun d!3169 () Bool)

(declare-fun isEmpty!163 (Option!59) Bool)

(assert (=> d!3169 (= (isDefined!15 (getValueByKey!53 (toList!264 lt!3992) a!507)) (not (isEmpty!163 (getValueByKey!53 (toList!264 lt!3992) a!507))))))

(declare-fun bs!779 () Bool)

(assert (= bs!779 d!3169))

(assert (=> bs!779 m!11417))

(declare-fun m!11487 () Bool)

(assert (=> bs!779 m!11487))

(assert (=> b!16344 d!3169))

(declare-fun b!16414 () Bool)

(declare-fun e!10126 () Option!59)

(declare-fun e!10127 () Option!59)

(assert (=> b!16414 (= e!10126 e!10127)))

(declare-fun c!1562 () Bool)

(assert (=> b!16414 (= c!1562 (and ((_ is Cons!518) (toList!264 lt!3992)) (not (= (_1!333 (h!1084 (toList!264 lt!3992))) a!507))))))

(declare-fun d!3171 () Bool)

(declare-fun c!1561 () Bool)

(assert (=> d!3171 (= c!1561 (and ((_ is Cons!518) (toList!264 lt!3992)) (= (_1!333 (h!1084 (toList!264 lt!3992))) a!507)))))

(assert (=> d!3171 (= (getValueByKey!53 (toList!264 lt!3992) a!507) e!10126)))

(declare-fun b!16413 () Bool)

(assert (=> b!16413 (= e!10126 (Some!58 (_2!333 (h!1084 (toList!264 lt!3992)))))))

(declare-fun b!16416 () Bool)

(assert (=> b!16416 (= e!10127 None!57)))

(declare-fun b!16415 () Bool)

(assert (=> b!16415 (= e!10127 (getValueByKey!53 (t!3062 (toList!264 lt!3992)) a!507))))

(assert (= (and d!3171 c!1561) b!16413))

(assert (= (and d!3171 (not c!1561)) b!16414))

(assert (= (and b!16414 c!1562) b!16415))

(assert (= (and b!16414 (not c!1562)) b!16416))

(declare-fun m!11495 () Bool)

(assert (=> b!16415 m!11495))

(assert (=> b!16344 d!3171))

(declare-fun d!3177 () Bool)

(declare-fun res!12210 () Bool)

(declare-fun e!10128 () Bool)

(assert (=> d!3177 (=> res!12210 e!10128)))

(assert (=> d!3177 (= res!12210 (or ((_ is Nil!519) lt!4051) ((_ is Nil!519) (t!3062 lt!4051))))))

(assert (=> d!3177 (= (isStrictlySorted!163 lt!4051) e!10128)))

(declare-fun b!16419 () Bool)

(declare-fun e!10129 () Bool)

(assert (=> b!16419 (= e!10128 e!10129)))

(declare-fun res!12211 () Bool)

(assert (=> b!16419 (=> (not res!12211) (not e!10129))))

(assert (=> b!16419 (= res!12211 (bvslt (_1!333 (h!1084 lt!4051)) (_1!333 (h!1084 (t!3062 lt!4051)))))))

(declare-fun b!16420 () Bool)

(assert (=> b!16420 (= e!10129 (isStrictlySorted!163 (t!3062 lt!4051)))))

(assert (= (and d!3177 (not res!12210)) b!16419))

(assert (= (and b!16419 res!12211) b!16420))

(declare-fun m!11497 () Bool)

(assert (=> b!16420 m!11497))

(assert (=> d!3139 d!3177))

(declare-fun d!3179 () Bool)

(declare-fun res!12212 () Bool)

(declare-fun e!10134 () Bool)

(assert (=> d!3179 (=> res!12212 e!10134)))

(assert (=> d!3179 (= res!12212 (or ((_ is Nil!519) (toList!264 lt!3971)) ((_ is Nil!519) (t!3062 (toList!264 lt!3971)))))))

(assert (=> d!3179 (= (isStrictlySorted!163 (toList!264 lt!3971)) e!10134)))

(declare-fun b!16427 () Bool)

(declare-fun e!10135 () Bool)

(assert (=> b!16427 (= e!10134 e!10135)))

(declare-fun res!12213 () Bool)

(assert (=> b!16427 (=> (not res!12213) (not e!10135))))

(assert (=> b!16427 (= res!12213 (bvslt (_1!333 (h!1084 (toList!264 lt!3971))) (_1!333 (h!1084 (t!3062 (toList!264 lt!3971))))))))

(declare-fun b!16428 () Bool)

(assert (=> b!16428 (= e!10135 (isStrictlySorted!163 (t!3062 (toList!264 lt!3971))))))

(assert (= (and d!3179 (not res!12212)) b!16427))

(assert (= (and b!16427 res!12213) b!16428))

(declare-fun m!11499 () Bool)

(assert (=> b!16428 m!11499))

(assert (=> d!3139 d!3179))

(declare-fun d!3181 () Bool)

(declare-fun res!12214 () Bool)

(declare-fun e!10136 () Bool)

(assert (=> d!3181 (=> res!12214 e!10136)))

(assert (=> d!3181 (= res!12214 (or ((_ is Nil!519) (t!3062 (toList!264 lm!221))) ((_ is Nil!519) (t!3062 (t!3062 (toList!264 lm!221))))))))

(assert (=> d!3181 (= (isStrictlySorted!163 (t!3062 (toList!264 lm!221))) e!10136)))

(declare-fun b!16429 () Bool)

(declare-fun e!10137 () Bool)

(assert (=> b!16429 (= e!10136 e!10137)))

(declare-fun res!12215 () Bool)

(assert (=> b!16429 (=> (not res!12215) (not e!10137))))

(assert (=> b!16429 (= res!12215 (bvslt (_1!333 (h!1084 (t!3062 (toList!264 lm!221)))) (_1!333 (h!1084 (t!3062 (t!3062 (toList!264 lm!221)))))))))

(declare-fun b!16430 () Bool)

(assert (=> b!16430 (= e!10137 (isStrictlySorted!163 (t!3062 (t!3062 (toList!264 lm!221)))))))

(assert (= (and d!3181 (not res!12214)) b!16429))

(assert (= (and b!16429 res!12215) b!16430))

(declare-fun m!11501 () Bool)

(assert (=> b!16430 m!11501))

(assert (=> b!16329 d!3181))

(declare-fun d!3183 () Bool)

(assert (=> d!3183 (= ($colon$colon!24 (removeStrictlySorted!16 (t!3062 (toList!264 lm!221)) a!507) (h!1084 (toList!264 lm!221))) (Cons!518 (h!1084 (toList!264 lm!221)) (removeStrictlySorted!16 (t!3062 (toList!264 lm!221)) a!507)))))

(assert (=> b!16285 d!3183))

(declare-fun b!16431 () Bool)

(declare-fun e!10138 () List!522)

(assert (=> b!16431 (= e!10138 Nil!519)))

(declare-fun b!16432 () Bool)

(declare-fun e!10139 () List!522)

(assert (=> b!16432 (= e!10139 e!10138)))

(declare-fun c!1568 () Bool)

(assert (=> b!16432 (= c!1568 (and ((_ is Cons!518) (t!3062 (toList!264 lm!221))) (not (= (_1!333 (h!1084 (t!3062 (toList!264 lm!221)))) a!507))))))

(declare-fun d!3185 () Bool)

(declare-fun e!10140 () Bool)

(assert (=> d!3185 e!10140))

(declare-fun res!12216 () Bool)

(assert (=> d!3185 (=> (not res!12216) (not e!10140))))

(declare-fun lt!4063 () List!522)

(assert (=> d!3185 (= res!12216 (isStrictlySorted!163 lt!4063))))

(assert (=> d!3185 (= lt!4063 e!10139)))

(declare-fun c!1567 () Bool)

(assert (=> d!3185 (= c!1567 (and ((_ is Cons!518) (t!3062 (toList!264 lm!221))) (= (_1!333 (h!1084 (t!3062 (toList!264 lm!221)))) a!507)))))

(assert (=> d!3185 (isStrictlySorted!163 (t!3062 (toList!264 lm!221)))))

(assert (=> d!3185 (= (removeStrictlySorted!16 (t!3062 (toList!264 lm!221)) a!507) lt!4063)))

(declare-fun b!16433 () Bool)

(assert (=> b!16433 (= e!10139 (t!3062 (t!3062 (toList!264 lm!221))))))

(declare-fun b!16434 () Bool)

(assert (=> b!16434 (= e!10140 (not (containsKey!17 lt!4063 a!507)))))

(declare-fun b!16435 () Bool)

(assert (=> b!16435 (= e!10138 ($colon$colon!24 (removeStrictlySorted!16 (t!3062 (t!3062 (toList!264 lm!221))) a!507) (h!1084 (t!3062 (toList!264 lm!221)))))))

(assert (= (and d!3185 c!1567) b!16433))

(assert (= (and d!3185 (not c!1567)) b!16432))

(assert (= (and b!16432 c!1568) b!16435))

(assert (= (and b!16432 (not c!1568)) b!16431))

(assert (= (and d!3185 res!12216) b!16434))

(declare-fun m!11505 () Bool)

(assert (=> d!3185 m!11505))

(assert (=> d!3185 m!11387))

(declare-fun m!11507 () Bool)

(assert (=> b!16434 m!11507))

(declare-fun m!11509 () Bool)

(assert (=> b!16435 m!11509))

(assert (=> b!16435 m!11509))

(declare-fun m!11511 () Bool)

(assert (=> b!16435 m!11511))

(assert (=> b!16285 d!3185))

(declare-fun d!3189 () Bool)

(assert (=> d!3189 (isDefined!15 (getValueByKey!53 (toList!264 lt!3992) a!507))))

(declare-fun lt!4067 () Unit!322)

(declare-fun choose!188 (List!522 (_ BitVec 64)) Unit!322)

(assert (=> d!3189 (= lt!4067 (choose!188 (toList!264 lt!3992) a!507))))

(declare-fun e!10152 () Bool)

(assert (=> d!3189 e!10152))

(declare-fun res!12224 () Bool)

(assert (=> d!3189 (=> (not res!12224) (not e!10152))))

(assert (=> d!3189 (= res!12224 (isStrictlySorted!163 (toList!264 lt!3992)))))

(assert (=> d!3189 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!14 (toList!264 lt!3992) a!507) lt!4067)))

(declare-fun b!16451 () Bool)

(assert (=> b!16451 (= e!10152 (containsKey!17 (toList!264 lt!3992) a!507))))

(assert (= (and d!3189 res!12224) b!16451))

(assert (=> d!3189 m!11417))

(assert (=> d!3189 m!11417))

(assert (=> d!3189 m!11419))

(declare-fun m!11523 () Bool)

(assert (=> d!3189 m!11523))

(declare-fun m!11527 () Bool)

(assert (=> d!3189 m!11527))

(assert (=> b!16451 m!11411))

(assert (=> b!16342 d!3189))

(assert (=> b!16342 d!3169))

(assert (=> b!16342 d!3171))

(declare-fun d!3199 () Bool)

(declare-fun res!12225 () Bool)

(declare-fun e!10153 () Bool)

(assert (=> d!3199 (=> res!12225 e!10153)))

(assert (=> d!3199 (= res!12225 (and ((_ is Cons!518) lt!4026) (= (_1!333 (h!1084 lt!4026)) a!507)))))

(assert (=> d!3199 (= (containsKey!17 lt!4026 a!507) e!10153)))

(declare-fun b!16452 () Bool)

(declare-fun e!10154 () Bool)

(assert (=> b!16452 (= e!10153 e!10154)))

(declare-fun res!12226 () Bool)

(assert (=> b!16452 (=> (not res!12226) (not e!10154))))

(assert (=> b!16452 (= res!12226 (and (or (not ((_ is Cons!518) lt!4026)) (bvsle (_1!333 (h!1084 lt!4026)) a!507)) ((_ is Cons!518) lt!4026) (bvslt (_1!333 (h!1084 lt!4026)) a!507)))))

(declare-fun b!16453 () Bool)

(assert (=> b!16453 (= e!10154 (containsKey!17 (t!3062 lt!4026) a!507))))

(assert (= (and d!3199 (not res!12225)) b!16452))

(assert (= (and b!16452 res!12226) b!16453))

(declare-fun m!11531 () Bool)

(assert (=> b!16453 m!11531))

(assert (=> b!16284 d!3199))

(declare-fun d!3201 () Bool)

(declare-fun res!12227 () Bool)

(declare-fun e!10155 () Bool)

(assert (=> d!3201 (=> res!12227 e!10155)))

(assert (=> d!3201 (= res!12227 ((_ is Nil!519) (t!3062 (t!3062 (toList!264 lt!3971)))))))

(assert (=> d!3201 (= (forall!144 (t!3062 (t!3062 (toList!264 lt!3971))) p!191) e!10155)))

(declare-fun b!16454 () Bool)

(declare-fun e!10156 () Bool)

(assert (=> b!16454 (= e!10155 e!10156)))

(declare-fun res!12228 () Bool)

(assert (=> b!16454 (=> (not res!12228) (not e!10156))))

(assert (=> b!16454 (= res!12228 (dynLambda!128 p!191 (h!1084 (t!3062 (t!3062 (toList!264 lt!3971))))))))

(declare-fun b!16455 () Bool)

(assert (=> b!16455 (= e!10156 (forall!144 (t!3062 (t!3062 (t!3062 (toList!264 lt!3971)))) p!191))))

(assert (= (and d!3201 (not res!12227)) b!16454))

(assert (= (and b!16454 res!12228) b!16455))

(declare-fun b_lambda!1347 () Bool)

(assert (=> (not b_lambda!1347) (not b!16454)))

(declare-fun t!3119 () Bool)

(declare-fun tb!583 () Bool)

(assert (=> (and start!2778 (= p!191 p!191) t!3119) tb!583))

(declare-fun result!955 () Bool)

(assert (=> tb!583 (= result!955 true)))

(assert (=> b!16454 t!3119))

(declare-fun b_and!1171 () Bool)

(assert (= b_and!1167 (and (=> t!3119 result!955) b_and!1171)))

(declare-fun m!11533 () Bool)

(assert (=> b!16454 m!11533))

(declare-fun m!11535 () Bool)

(assert (=> b!16455 m!11535))

(assert (=> b!16295 d!3201))

(declare-fun d!3203 () Bool)

(declare-fun res!12229 () Bool)

(declare-fun e!10157 () Bool)

(assert (=> d!3203 (=> res!12229 e!10157)))

(assert (=> d!3203 (= res!12229 (or ((_ is Nil!519) lt!4026) ((_ is Nil!519) (t!3062 lt!4026))))))

(assert (=> d!3203 (= (isStrictlySorted!163 lt!4026) e!10157)))

(declare-fun b!16456 () Bool)

(declare-fun e!10158 () Bool)

(assert (=> b!16456 (= e!10157 e!10158)))

(declare-fun res!12230 () Bool)

(assert (=> b!16456 (=> (not res!12230) (not e!10158))))

(assert (=> b!16456 (= res!12230 (bvslt (_1!333 (h!1084 lt!4026)) (_1!333 (h!1084 (t!3062 lt!4026)))))))

(declare-fun b!16457 () Bool)

(assert (=> b!16457 (= e!10158 (isStrictlySorted!163 (t!3062 lt!4026)))))

(assert (= (and d!3203 (not res!12229)) b!16456))

(assert (= (and b!16456 res!12230) b!16457))

(declare-fun m!11537 () Bool)

(assert (=> b!16457 m!11537))

(assert (=> d!3097 d!3203))

(assert (=> d!3097 d!3121))

(declare-fun d!3205 () Bool)

(assert (=> d!3205 (isDefined!15 (getValueByKey!53 (toList!264 lt!3981) a!507))))

(declare-fun lt!4068 () Unit!322)

(assert (=> d!3205 (= lt!4068 (choose!188 (toList!264 lt!3981) a!507))))

(declare-fun e!10159 () Bool)

(assert (=> d!3205 e!10159))

(declare-fun res!12231 () Bool)

(assert (=> d!3205 (=> (not res!12231) (not e!10159))))

(assert (=> d!3205 (= res!12231 (isStrictlySorted!163 (toList!264 lt!3981)))))

(assert (=> d!3205 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!14 (toList!264 lt!3981) a!507) lt!4068)))

(declare-fun b!16458 () Bool)

(assert (=> b!16458 (= e!10159 (containsKey!17 (toList!264 lt!3981) a!507))))

(assert (= (and d!3205 res!12231) b!16458))

(assert (=> d!3205 m!11327))

(assert (=> d!3205 m!11327))

(assert (=> d!3205 m!11329))

(declare-fun m!11539 () Bool)

(assert (=> d!3205 m!11539))

(declare-fun m!11541 () Bool)

(assert (=> d!3205 m!11541))

(assert (=> b!16458 m!11323))

(assert (=> b!16257 d!3205))

(declare-fun d!3207 () Bool)

(assert (=> d!3207 (= (isDefined!15 (getValueByKey!53 (toList!264 lt!3981) a!507)) (not (isEmpty!163 (getValueByKey!53 (toList!264 lt!3981) a!507))))))

(declare-fun bs!781 () Bool)

(assert (= bs!781 d!3207))

(assert (=> bs!781 m!11327))

(declare-fun m!11543 () Bool)

(assert (=> bs!781 m!11543))

(assert (=> b!16257 d!3207))

(declare-fun b!16464 () Bool)

(declare-fun e!10164 () Option!59)

(declare-fun e!10165 () Option!59)

(assert (=> b!16464 (= e!10164 e!10165)))

(declare-fun c!1574 () Bool)

(assert (=> b!16464 (= c!1574 (and ((_ is Cons!518) (toList!264 lt!3981)) (not (= (_1!333 (h!1084 (toList!264 lt!3981))) a!507))))))

(declare-fun d!3209 () Bool)

(declare-fun c!1573 () Bool)

(assert (=> d!3209 (= c!1573 (and ((_ is Cons!518) (toList!264 lt!3981)) (= (_1!333 (h!1084 (toList!264 lt!3981))) a!507)))))

(assert (=> d!3209 (= (getValueByKey!53 (toList!264 lt!3981) a!507) e!10164)))

(declare-fun b!16463 () Bool)

(assert (=> b!16463 (= e!10164 (Some!58 (_2!333 (h!1084 (toList!264 lt!3981)))))))

(declare-fun b!16466 () Bool)

(assert (=> b!16466 (= e!10165 None!57)))

(declare-fun b!16465 () Bool)

(assert (=> b!16465 (= e!10165 (getValueByKey!53 (t!3062 (toList!264 lt!3981)) a!507))))

(assert (= (and d!3209 c!1573) b!16463))

(assert (= (and d!3209 (not c!1573)) b!16464))

(assert (= (and b!16464 c!1574) b!16465))

(assert (= (and b!16464 (not c!1574)) b!16466))

(declare-fun m!11545 () Bool)

(assert (=> b!16465 m!11545))

(assert (=> b!16257 d!3209))

(declare-fun d!3211 () Bool)

(assert (=> d!3211 (= ($colon$colon!24 (removeStrictlySorted!16 (t!3062 (toList!264 lt!3971)) a!507) (h!1084 (toList!264 lt!3971))) (Cons!518 (h!1084 (toList!264 lt!3971)) (removeStrictlySorted!16 (t!3062 (toList!264 lt!3971)) a!507)))))

(assert (=> b!16351 d!3211))

(declare-fun b!16467 () Bool)

(declare-fun e!10166 () List!522)

(assert (=> b!16467 (= e!10166 Nil!519)))

(declare-fun b!16468 () Bool)

(declare-fun e!10167 () List!522)

(assert (=> b!16468 (= e!10167 e!10166)))

(declare-fun c!1576 () Bool)

(assert (=> b!16468 (= c!1576 (and ((_ is Cons!518) (t!3062 (toList!264 lt!3971))) (not (= (_1!333 (h!1084 (t!3062 (toList!264 lt!3971)))) a!507))))))

(declare-fun d!3213 () Bool)

(declare-fun e!10168 () Bool)

(assert (=> d!3213 e!10168))

(declare-fun res!12236 () Bool)

(assert (=> d!3213 (=> (not res!12236) (not e!10168))))

(declare-fun lt!4069 () List!522)

(assert (=> d!3213 (= res!12236 (isStrictlySorted!163 lt!4069))))

(assert (=> d!3213 (= lt!4069 e!10167)))

(declare-fun c!1575 () Bool)

(assert (=> d!3213 (= c!1575 (and ((_ is Cons!518) (t!3062 (toList!264 lt!3971))) (= (_1!333 (h!1084 (t!3062 (toList!264 lt!3971)))) a!507)))))

(assert (=> d!3213 (isStrictlySorted!163 (t!3062 (toList!264 lt!3971)))))

(assert (=> d!3213 (= (removeStrictlySorted!16 (t!3062 (toList!264 lt!3971)) a!507) lt!4069)))

(declare-fun b!16469 () Bool)

(assert (=> b!16469 (= e!10167 (t!3062 (t!3062 (toList!264 lt!3971))))))

(declare-fun b!16470 () Bool)

(assert (=> b!16470 (= e!10168 (not (containsKey!17 lt!4069 a!507)))))

(declare-fun b!16471 () Bool)

(assert (=> b!16471 (= e!10166 ($colon$colon!24 (removeStrictlySorted!16 (t!3062 (t!3062 (toList!264 lt!3971))) a!507) (h!1084 (t!3062 (toList!264 lt!3971)))))))

(assert (= (and d!3213 c!1575) b!16469))

(assert (= (and d!3213 (not c!1575)) b!16468))

(assert (= (and b!16468 c!1576) b!16471))

(assert (= (and b!16468 (not c!1576)) b!16467))

(assert (= (and d!3213 res!12236) b!16470))

(declare-fun m!11547 () Bool)

(assert (=> d!3213 m!11547))

(assert (=> d!3213 m!11499))

(declare-fun m!11551 () Bool)

(assert (=> b!16470 m!11551))

(declare-fun m!11553 () Bool)

(assert (=> b!16471 m!11553))

(assert (=> b!16471 m!11553))

(declare-fun m!11555 () Bool)

(assert (=> b!16471 m!11555))

(assert (=> b!16351 d!3213))

(assert (=> b!16259 d!3207))

(assert (=> b!16259 d!3209))

(declare-fun d!3217 () Bool)

(declare-fun res!12241 () Bool)

(declare-fun e!10173 () Bool)

(assert (=> d!3217 (=> res!12241 e!10173)))

(assert (=> d!3217 (= res!12241 ((_ is Nil!519) (t!3062 (t!3062 (toList!264 lm!221)))))))

(assert (=> d!3217 (= (forall!144 (t!3062 (t!3062 (toList!264 lm!221))) p!191) e!10173)))

(declare-fun b!16476 () Bool)

(declare-fun e!10174 () Bool)

(assert (=> b!16476 (= e!10173 e!10174)))

(declare-fun res!12242 () Bool)

(assert (=> b!16476 (=> (not res!12242) (not e!10174))))

(assert (=> b!16476 (= res!12242 (dynLambda!128 p!191 (h!1084 (t!3062 (t!3062 (toList!264 lm!221))))))))

(declare-fun b!16477 () Bool)

(assert (=> b!16477 (= e!10174 (forall!144 (t!3062 (t!3062 (t!3062 (toList!264 lm!221)))) p!191))))

(assert (= (and d!3217 (not res!12241)) b!16476))

(assert (= (and b!16476 res!12242) b!16477))

(declare-fun b_lambda!1349 () Bool)

(assert (=> (not b_lambda!1349) (not b!16476)))

(declare-fun t!3121 () Bool)

(declare-fun tb!585 () Bool)

(assert (=> (and start!2778 (= p!191 p!191) t!3121) tb!585))

(declare-fun result!957 () Bool)

(assert (=> tb!585 (= result!957 true)))

(assert (=> b!16476 t!3121))

(declare-fun b_and!1173 () Bool)

(assert (= b_and!1171 (and (=> t!3121 result!957) b_and!1173)))

(declare-fun m!11559 () Bool)

(assert (=> b!16476 m!11559))

(declare-fun m!11561 () Bool)

(assert (=> b!16477 m!11561))

(assert (=> b!16353 d!3217))

(declare-fun d!3221 () Bool)

(declare-fun res!12244 () Bool)

(declare-fun e!10176 () Bool)

(assert (=> d!3221 (=> res!12244 e!10176)))

(assert (=> d!3221 (= res!12244 ((_ is Nil!519) (t!3062 (t!3062 (toList!264 (-!31 lm!221 a!507))))))))

(assert (=> d!3221 (= (forall!144 (t!3062 (t!3062 (toList!264 (-!31 lm!221 a!507)))) p!191) e!10176)))

(declare-fun b!16479 () Bool)

(declare-fun e!10177 () Bool)

(assert (=> b!16479 (= e!10176 e!10177)))

(declare-fun res!12245 () Bool)

(assert (=> b!16479 (=> (not res!12245) (not e!10177))))

(assert (=> b!16479 (= res!12245 (dynLambda!128 p!191 (h!1084 (t!3062 (t!3062 (toList!264 (-!31 lm!221 a!507)))))))))

(declare-fun b!16480 () Bool)

(assert (=> b!16480 (= e!10177 (forall!144 (t!3062 (t!3062 (t!3062 (toList!264 (-!31 lm!221 a!507))))) p!191))))

(assert (= (and d!3221 (not res!12244)) b!16479))

(assert (= (and b!16479 res!12245) b!16480))

(declare-fun b_lambda!1351 () Bool)

(assert (=> (not b_lambda!1351) (not b!16479)))

(declare-fun t!3123 () Bool)

(declare-fun tb!587 () Bool)

(assert (=> (and start!2778 (= p!191 p!191) t!3123) tb!587))

(declare-fun result!959 () Bool)

(assert (=> tb!587 (= result!959 true)))

(assert (=> b!16479 t!3123))

(declare-fun b_and!1175 () Bool)

(assert (= b_and!1173 (and (=> t!3123 result!959) b_and!1175)))

(declare-fun m!11569 () Bool)

(assert (=> b!16479 m!11569))

(declare-fun m!11571 () Bool)

(assert (=> b!16480 m!11571))

(assert (=> b!16299 d!3221))

(assert (=> d!3115 d!3061))

(assert (=> d!3115 d!3063))

(declare-fun d!3227 () Bool)

(declare-fun res!12246 () Bool)

(declare-fun e!10180 () Bool)

(assert (=> d!3227 (=> res!12246 e!10180)))

(assert (=> d!3227 (= res!12246 (and ((_ is Cons!518) (toList!264 lt!3981)) (= (_1!333 (h!1084 (toList!264 lt!3981))) a!507)))))

(assert (=> d!3227 (= (containsKey!17 (toList!264 lt!3981) a!507) e!10180)))

(declare-fun b!16485 () Bool)

(declare-fun e!10181 () Bool)

(assert (=> b!16485 (= e!10180 e!10181)))

(declare-fun res!12247 () Bool)

(assert (=> b!16485 (=> (not res!12247) (not e!10181))))

(assert (=> b!16485 (= res!12247 (and (or (not ((_ is Cons!518) (toList!264 lt!3981))) (bvsle (_1!333 (h!1084 (toList!264 lt!3981))) a!507)) ((_ is Cons!518) (toList!264 lt!3981)) (bvslt (_1!333 (h!1084 (toList!264 lt!3981))) a!507)))))

(declare-fun b!16486 () Bool)

(assert (=> b!16486 (= e!10181 (containsKey!17 (t!3062 (toList!264 lt!3981)) a!507))))

(assert (= (and d!3227 (not res!12246)) b!16485))

(assert (= (and b!16485 res!12247) b!16486))

(declare-fun m!11575 () Bool)

(assert (=> b!16486 m!11575))

(assert (=> d!3089 d!3227))

(declare-fun b!16489 () Bool)

(declare-fun e!10184 () Bool)

(declare-fun tp!2880 () Bool)

(assert (=> b!16489 (= e!10184 (and tp_is_empty!829 tp!2880))))

(assert (=> b!16354 (= tp!2877 e!10184)))

(assert (= (and b!16354 ((_ is Cons!518) (t!3062 (t!3062 (toList!264 lm!221))))) b!16489))

(declare-fun b_lambda!1353 () Bool)

(assert (= b_lambda!1347 (or (and start!2778 b_free!567) b_lambda!1353)))

(declare-fun b_lambda!1355 () Bool)

(assert (= b_lambda!1351 (or (and start!2778 b_free!567) b_lambda!1355)))

(declare-fun b_lambda!1357 () Bool)

(assert (= b_lambda!1343 (or (and start!2778 b_free!567) b_lambda!1357)))

(declare-fun b_lambda!1359 () Bool)

(assert (= b_lambda!1349 (or (and start!2778 b_free!567) b_lambda!1359)))

(check-sat (not b_lambda!1319) b_and!1175 (not b!16401) (not b!16477) (not d!3205) (not b!16420) (not b_next!567) (not b!16455) (not b!16428) (not b_lambda!1313) (not b_lambda!1315) (not b!16471) (not b!16435) (not b!16430) (not b!16458) (not b!16451) (not b!16434) (not b!16397) (not b!16470) (not b_lambda!1277) tp_is_empty!829 (not b!16465) (not b!16486) (not d!3213) (not b_lambda!1353) (not b_lambda!1271) (not b!16399) (not b_lambda!1275) (not b!16415) (not b!16457) (not b!16453) (not b!16480) (not b!16489) (not b_lambda!1317) (not d!3207) (not d!3169) (not b_lambda!1273) (not b_lambda!1357) (not d!3185) (not b_lambda!1355) (not d!3189) (not b_lambda!1359))
(check-sat b_and!1175 (not b_next!567))
