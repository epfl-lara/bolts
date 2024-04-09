; Options: -q --produce-models --incremental --print-success --lang smt2.6
(declare-fun start!2780 () Bool)

(assert start!2780)

(declare-fun b_free!569 () Bool)

(declare-fun b_next!569 () Bool)

(assert (=> start!2780 (= b_free!569 (not b_next!569))))

(declare-fun tp!2867 () Bool)

(declare-fun b_and!1117 () Bool)

(assert (=> start!2780 (= tp!2867 b_and!1117)))

(declare-fun res!12092 () Bool)

(declare-fun e!9957 () Bool)

(assert (=> start!2780 (=> (not res!12092) (not e!9957))))

(declare-datatypes ((B!690 0))(
  ( (B!691 (val!443 Int)) )
))
(declare-datatypes ((tuple2!668 0))(
  ( (tuple2!669 (_1!334 (_ BitVec 64)) (_2!334 B!690)) )
))
(declare-datatypes ((List!523 0))(
  ( (Nil!520) (Cons!519 (h!1085 tuple2!668) (t!3063 List!523)) )
))
(declare-datatypes ((ListLongMap!499 0))(
  ( (ListLongMap!500 (toList!265 List!523)) )
))
(declare-fun lm!221 () ListLongMap!499)

(declare-fun p!191 () Int)

(declare-fun forall!145 (List!523 Int) Bool)

(assert (=> start!2780 (= res!12092 (forall!145 (toList!265 lm!221) p!191))))

(assert (=> start!2780 e!9957))

(declare-fun e!9958 () Bool)

(declare-fun inv!890 (ListLongMap!499) Bool)

(assert (=> start!2780 (and (inv!890 lm!221) e!9958)))

(assert (=> start!2780 tp!2867))

(assert (=> start!2780 true))

(declare-fun b!16197 () Bool)

(declare-fun e!9956 () Bool)

(assert (=> b!16197 (= e!9957 e!9956)))

(declare-fun res!12093 () Bool)

(assert (=> b!16197 (=> (not res!12093) (not e!9956))))

(declare-fun lt!3978 () ListLongMap!499)

(assert (=> b!16197 (= res!12093 (forall!145 (toList!265 lt!3978) p!191))))

(declare-fun tail!82 (ListLongMap!499) ListLongMap!499)

(assert (=> b!16197 (= lt!3978 (tail!82 lm!221))))

(declare-fun a!507 () (_ BitVec 64))

(declare-fun b!16198 () Bool)

(declare-fun -!32 (ListLongMap!499 (_ BitVec 64)) ListLongMap!499)

(assert (=> b!16198 (= e!9956 (not (forall!145 (toList!265 (-!32 lm!221 a!507)) p!191)))))

(assert (=> b!16198 (forall!145 (toList!265 (-!32 lt!3978 a!507)) p!191)))

(declare-datatypes ((Unit!324 0))(
  ( (Unit!325) )
))
(declare-fun lt!3977 () Unit!324)

(declare-fun removeValidProp!22 (ListLongMap!499 Int (_ BitVec 64)) Unit!324)

(assert (=> b!16198 (= lt!3977 (removeValidProp!22 lt!3978 p!191 a!507))))

(declare-fun b!16199 () Bool)

(declare-fun tp!2866 () Bool)

(assert (=> b!16199 (= e!9958 tp!2866)))

(declare-fun b!16196 () Bool)

(declare-fun res!12094 () Bool)

(assert (=> b!16196 (=> (not res!12094) (not e!9957))))

(declare-fun isEmpty!158 (ListLongMap!499) Bool)

(assert (=> b!16196 (= res!12094 (not (isEmpty!158 lm!221)))))

(assert (= (and start!2780 res!12092) b!16196))

(assert (= (and b!16196 res!12094) b!16197))

(assert (= (and b!16197 res!12093) b!16198))

(assert (= start!2780 b!16199))

(declare-fun m!11207 () Bool)

(assert (=> start!2780 m!11207))

(declare-fun m!11209 () Bool)

(assert (=> start!2780 m!11209))

(declare-fun m!11211 () Bool)

(assert (=> b!16197 m!11211))

(declare-fun m!11213 () Bool)

(assert (=> b!16197 m!11213))

(declare-fun m!11215 () Bool)

(assert (=> b!16198 m!11215))

(declare-fun m!11217 () Bool)

(assert (=> b!16198 m!11217))

(declare-fun m!11219 () Bool)

(assert (=> b!16198 m!11219))

(declare-fun m!11221 () Bool)

(assert (=> b!16198 m!11221))

(declare-fun m!11223 () Bool)

(assert (=> b!16198 m!11223))

(declare-fun m!11225 () Bool)

(assert (=> b!16196 m!11225))

(push 1)

(assert (not start!2780))

(assert (not b_next!569))

(assert (not b!16197))

(assert (not b!16199))

(assert (not b!16198))

(assert b_and!1117)

(assert (not b!16196))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1117)

(assert (not b_next!569))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3030 () Bool)

(declare-fun isEmpty!159 (List!523) Bool)

(assert (=> d!3030 (= (isEmpty!158 lm!221) (isEmpty!159 (toList!265 lm!221)))))

(declare-fun bs!758 () Bool)

(assert (= bs!758 d!3030))

(declare-fun m!11227 () Bool)

(assert (=> bs!758 m!11227))

(assert (=> b!16196 d!3030))

(declare-fun d!3035 () Bool)

(declare-fun res!12105 () Bool)

(declare-fun e!9969 () Bool)

(assert (=> d!3035 (=> res!12105 e!9969)))

(assert (=> d!3035 (= res!12105 (is-Nil!520 (toList!265 lm!221)))))

(assert (=> d!3035 (= (forall!145 (toList!265 lm!221) p!191) e!9969)))

(declare-fun b!16210 () Bool)

(declare-fun e!9970 () Bool)

(assert (=> b!16210 (= e!9969 e!9970)))

(declare-fun res!12106 () Bool)

(assert (=> b!16210 (=> (not res!12106) (not e!9970))))

(declare-fun dynLambda!127 (Int tuple2!668) Bool)

(assert (=> b!16210 (= res!12106 (dynLambda!127 p!191 (h!1085 (toList!265 lm!221))))))

(declare-fun b!16211 () Bool)

(assert (=> b!16211 (= e!9970 (forall!145 (t!3063 (toList!265 lm!221)) p!191))))

(assert (= (and d!3035 (not res!12105)) b!16210))

(assert (= (and b!16210 res!12106) b!16211))

(declare-fun b_lambda!1249 () Bool)

(assert (=> (not b_lambda!1249) (not b!16210)))

(declare-fun t!3067 () Bool)

(declare-fun tb!533 () Bool)

(assert (=> (and start!2780 (= p!191 p!191) t!3067) tb!533))

(declare-fun result!899 () Bool)

(assert (=> tb!533 (= result!899 true)))

(assert (=> b!16210 t!3067))

(declare-fun b_and!1121 () Bool)

(assert (= b_and!1117 (and (=> t!3067 result!899) b_and!1121)))

(declare-fun m!11233 () Bool)

(assert (=> b!16210 m!11233))

(declare-fun m!11235 () Bool)

(assert (=> b!16211 m!11235))

(assert (=> start!2780 d!3035))

(declare-fun d!3039 () Bool)

(declare-fun isStrictlySorted!162 (List!523) Bool)

(assert (=> d!3039 (= (inv!890 lm!221) (isStrictlySorted!162 (toList!265 lm!221)))))

(declare-fun bs!761 () Bool)

(assert (= bs!761 d!3039))

(declare-fun m!11243 () Bool)

(assert (=> bs!761 m!11243))

(assert (=> start!2780 d!3039))

(declare-fun d!3045 () Bool)

(declare-fun lt!3987 () ListLongMap!499)

(declare-fun contains!195 (ListLongMap!499 (_ BitVec 64)) Bool)

(assert (=> d!3045 (not (contains!195 lt!3987 a!507))))

(declare-fun removeStrictlySorted!18 (List!523 (_ BitVec 64)) List!523)

(assert (=> d!3045 (= lt!3987 (ListLongMap!500 (removeStrictlySorted!18 (toList!265 lm!221) a!507)))))

(assert (=> d!3045 (= (-!32 lm!221 a!507) lt!3987)))

(declare-fun bs!763 () Bool)

(assert (= bs!763 d!3045))

(declare-fun m!11255 () Bool)

(assert (=> bs!763 m!11255))

(declare-fun m!11259 () Bool)

(assert (=> bs!763 m!11259))

(assert (=> b!16198 d!3045))

(declare-fun d!3053 () Bool)

(declare-fun lt!3988 () ListLongMap!499)

(assert (=> d!3053 (not (contains!195 lt!3988 a!507))))

(assert (=> d!3053 (= lt!3988 (ListLongMap!500 (removeStrictlySorted!18 (toList!265 lt!3978) a!507)))))

(assert (=> d!3053 (= (-!32 lt!3978 a!507) lt!3988)))

(declare-fun bs!764 () Bool)

(assert (= bs!764 d!3053))

(declare-fun m!11261 () Bool)

(assert (=> bs!764 m!11261))

(declare-fun m!11263 () Bool)

(assert (=> bs!764 m!11263))

(assert (=> b!16198 d!3053))

(declare-fun d!3055 () Bool)

(declare-fun res!12117 () Bool)

(declare-fun e!9981 () Bool)

(assert (=> d!3055 (=> res!12117 e!9981)))

(assert (=> d!3055 (= res!12117 (is-Nil!520 (toList!265 (-!32 lm!221 a!507))))))

(assert (=> d!3055 (= (forall!145 (toList!265 (-!32 lm!221 a!507)) p!191) e!9981)))

(declare-fun b!16222 () Bool)

(declare-fun e!9982 () Bool)

(assert (=> b!16222 (= e!9981 e!9982)))

(declare-fun res!12118 () Bool)

(assert (=> b!16222 (=> (not res!12118) (not e!9982))))

(assert (=> b!16222 (= res!12118 (dynLambda!127 p!191 (h!1085 (toList!265 (-!32 lm!221 a!507)))))))

(declare-fun b!16223 () Bool)

(assert (=> b!16223 (= e!9982 (forall!145 (t!3063 (toList!265 (-!32 lm!221 a!507))) p!191))))

(assert (= (and d!3055 (not res!12117)) b!16222))

(assert (= (and b!16222 res!12118) b!16223))

(declare-fun b_lambda!1257 () Bool)

(assert (=> (not b_lambda!1257) (not b!16222)))

(declare-fun t!3075 () Bool)

(declare-fun tb!541 () Bool)

(assert (=> (and start!2780 (= p!191 p!191) t!3075) tb!541))

(declare-fun result!907 () Bool)

(assert (=> tb!541 (= result!907 true)))

(assert (=> b!16222 t!3075))

(declare-fun b_and!1129 () Bool)

(assert (= b_and!1121 (and (=> t!3075 result!907) b_and!1129)))

(declare-fun m!11269 () Bool)

(assert (=> b!16222 m!11269))

(declare-fun m!11271 () Bool)

(assert (=> b!16223 m!11271))

(assert (=> b!16198 d!3055))

(declare-fun d!3059 () Bool)

(assert (=> d!3059 (forall!145 (toList!265 (-!32 lt!3978 a!507)) p!191)))

(declare-fun lt!3998 () Unit!324)

(declare-fun choose!186 (ListLongMap!499 Int (_ BitVec 64)) Unit!324)

(assert (=> d!3059 (= lt!3998 (choose!186 lt!3978 p!191 a!507))))

(assert (=> d!3059 (forall!145 (toList!265 lt!3978) p!191)))

(assert (=> d!3059 (= (removeValidProp!22 lt!3978 p!191 a!507) lt!3998)))

(declare-fun bs!769 () Bool)

(assert (= bs!769 d!3059))

(assert (=> bs!769 m!11223))

(assert (=> bs!769 m!11221))

(declare-fun m!11291 () Bool)

(assert (=> bs!769 m!11291))

(assert (=> bs!769 m!11211))

(assert (=> b!16198 d!3059))

(declare-fun d!3073 () Bool)

(declare-fun res!12123 () Bool)

(declare-fun e!9987 () Bool)

(assert (=> d!3073 (=> res!12123 e!9987)))

(assert (=> d!3073 (= res!12123 (is-Nil!520 (toList!265 (-!32 lt!3978 a!507))))))

(assert (=> d!3073 (= (forall!145 (toList!265 (-!32 lt!3978 a!507)) p!191) e!9987)))

(declare-fun b!16228 () Bool)

(declare-fun e!9988 () Bool)

(assert (=> b!16228 (= e!9987 e!9988)))

(declare-fun res!12124 () Bool)

(assert (=> b!16228 (=> (not res!12124) (not e!9988))))

(assert (=> b!16228 (= res!12124 (dynLambda!127 p!191 (h!1085 (toList!265 (-!32 lt!3978 a!507)))))))

(declare-fun b!16229 () Bool)

(assert (=> b!16229 (= e!9988 (forall!145 (t!3063 (toList!265 (-!32 lt!3978 a!507))) p!191))))

(assert (= (and d!3073 (not res!12123)) b!16228))

(assert (= (and b!16228 res!12124) b!16229))

(declare-fun b_lambda!1263 () Bool)

(assert (=> (not b_lambda!1263) (not b!16228)))

(declare-fun t!3081 () Bool)

(declare-fun tb!547 () Bool)

(assert (=> (and start!2780 (= p!191 p!191) t!3081) tb!547))

(declare-fun result!913 () Bool)

(assert (=> tb!547 (= result!913 true)))

(assert (=> b!16228 t!3081))

(declare-fun b_and!1135 () Bool)

(assert (= b_and!1129 (and (=> t!3081 result!913) b_and!1135)))

(declare-fun m!11297 () Bool)

(assert (=> b!16228 m!11297))

(declare-fun m!11301 () Bool)

(assert (=> b!16229 m!11301))

(assert (=> b!16198 d!3073))

(declare-fun d!3079 () Bool)

(declare-fun res!12128 () Bool)

(declare-fun e!9992 () Bool)

(assert (=> d!3079 (=> res!12128 e!9992)))

(assert (=> d!3079 (= res!12128 (is-Nil!520 (toList!265 lt!3978)))))

(assert (=> d!3079 (= (forall!145 (toList!265 lt!3978) p!191) e!9992)))

(declare-fun b!16233 () Bool)

(declare-fun e!9994 () Bool)

(assert (=> b!16233 (= e!9992 e!9994)))

(declare-fun res!12130 () Bool)

(assert (=> b!16233 (=> (not res!12130) (not e!9994))))

(assert (=> b!16233 (= res!12130 (dynLambda!127 p!191 (h!1085 (toList!265 lt!3978))))))

(declare-fun b!16235 () Bool)

(assert (=> b!16235 (= e!9994 (forall!145 (t!3063 (toList!265 lt!3978)) p!191))))

(assert (= (and d!3079 (not res!12128)) b!16233))

(assert (= (and b!16233 res!12130) b!16235))

(declare-fun b_lambda!1267 () Bool)

(assert (=> (not b_lambda!1267) (not b!16233)))

(declare-fun t!3085 () Bool)

(declare-fun tb!551 () Bool)

(assert (=> (and start!2780 (= p!191 p!191) t!3085) tb!551))

(declare-fun result!917 () Bool)

(assert (=> tb!551 (= result!917 true)))

(assert (=> b!16233 t!3085))

(declare-fun b_and!1139 () Bool)

(assert (= b_and!1135 (and (=> t!3085 result!917) b_and!1139)))

(declare-fun m!11307 () Bool)

(assert (=> b!16233 m!11307))

(declare-fun m!11310 () Bool)

(assert (=> b!16235 m!11310))

(assert (=> b!16197 d!3079))

(declare-fun d!3083 () Bool)

(declare-fun tail!85 (List!523) List!523)

(assert (=> d!3083 (= (tail!82 lm!221) (ListLongMap!500 (tail!85 (toList!265 lm!221))))))

(declare-fun bs!774 () Bool)

(assert (= bs!774 d!3083))

(declare-fun m!11319 () Bool)

(assert (=> bs!774 m!11319))

(assert (=> b!16197 d!3083))

(declare-fun b!16249 () Bool)

(declare-fun e!10002 () Bool)

(declare-fun tp_is_empty!831 () Bool)

(declare-fun tp!2873 () Bool)

(assert (=> b!16249 (= e!10002 (and tp_is_empty!831 tp!2873))))

(assert (=> b!16199 (= tp!2866 e!10002)))

(assert (= (and b!16199 (is-Cons!519 (toList!265 lm!221))) b!16249))

(declare-fun b_lambda!1279 () Bool)

(assert (= b_lambda!1249 (or (and start!2780 b_free!569) b_lambda!1279)))

(declare-fun b_lambda!1281 () Bool)

(assert (= b_lambda!1267 (or (and start!2780 b_free!569) b_lambda!1281)))

(declare-fun b_lambda!1283 () Bool)

(assert (= b_lambda!1257 (or (and start!2780 b_free!569) b_lambda!1283)))

(declare-fun b_lambda!1285 () Bool)

(assert (= b_lambda!1263 (or (and start!2780 b_free!569) b_lambda!1285)))

(push 1)

(assert (not d!3030))

(assert b_and!1139)

(assert (not b_next!569))

(assert (not b_lambda!1281))

(assert (not d!3045))

(assert (not b!16235))

(assert (not d!3083))

(assert (not b_lambda!1285))

(assert (not d!3039))

(assert (not d!3053))

(assert (not b_lambda!1283))

(assert (not d!3059))

(assert (not b!16223))

(assert (not b!16249))

(assert (not b!16229))

(assert tp_is_empty!831)

(assert (not b_lambda!1279))

(assert (not b!16211))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1139)

(assert (not b_next!569))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3101 () Bool)

(declare-fun res!12137 () Bool)

(declare-fun e!10020 () Bool)

(assert (=> d!3101 (=> res!12137 e!10020)))

(assert (=> d!3101 (= res!12137 (is-Nil!520 (t!3063 (toList!265 (-!32 lm!221 a!507)))))))

(assert (=> d!3101 (= (forall!145 (t!3063 (toList!265 (-!32 lm!221 a!507))) p!191) e!10020)))

(declare-fun b!16277 () Bool)

(declare-fun e!10021 () Bool)

(assert (=> b!16277 (= e!10020 e!10021)))

(declare-fun res!12138 () Bool)

(assert (=> b!16277 (=> (not res!12138) (not e!10021))))

(assert (=> b!16277 (= res!12138 (dynLambda!127 p!191 (h!1085 (t!3063 (toList!265 (-!32 lm!221 a!507))))))))

(declare-fun b!16278 () Bool)

(assert (=> b!16278 (= e!10021 (forall!145 (t!3063 (t!3063 (toList!265 (-!32 lm!221 a!507)))) p!191))))

(assert (= (and d!3101 (not res!12137)) b!16277))

(assert (= (and b!16277 res!12138) b!16278))

(declare-fun b_lambda!1295 () Bool)

(assert (=> (not b_lambda!1295) (not b!16277)))

(declare-fun t!3089 () Bool)

(declare-fun tb!555 () Bool)

(assert (=> (and start!2780 (= p!191 p!191) t!3089) tb!555))

(declare-fun result!927 () Bool)

(assert (=> tb!555 (= result!927 true)))

(assert (=> b!16277 t!3089))

(declare-fun b_and!1143 () Bool)

(assert (= b_and!1139 (and (=> t!3089 result!927) b_and!1143)))

(declare-fun m!11339 () Bool)

(assert (=> b!16277 m!11339))

(declare-fun m!11341 () Bool)

(assert (=> b!16278 m!11341))

(assert (=> b!16223 d!3101))

(declare-fun d!3103 () Bool)

(assert (=> d!3103 (= (tail!85 (toList!265 lm!221)) (t!3063 (toList!265 lm!221)))))

(assert (=> d!3083 d!3103))

(assert (=> d!3059 d!3073))

(assert (=> d!3059 d!3053))

(declare-fun d!3105 () Bool)

(assert (=> d!3105 (forall!145 (toList!265 (-!32 lt!3978 a!507)) p!191)))

(assert (=> d!3105 true))

(declare-fun _$31!17 () Unit!324)

(assert (=> d!3105 (= (choose!186 lt!3978 p!191 a!507) _$31!17)))

(declare-fun bs!776 () Bool)

(assert (= bs!776 d!3105))

(assert (=> bs!776 m!11223))

(assert (=> bs!776 m!11221))

(assert (=> d!3059 d!3105))

(assert (=> d!3059 d!3079))

(declare-fun d!3111 () Bool)

(declare-fun e!10062 () Bool)

(assert (=> d!3111 e!10062))

(declare-fun res!12168 () Bool)

(assert (=> d!3111 (=> res!12168 e!10062)))

(declare-fun lt!4043 () Bool)

(assert (=> d!3111 (= res!12168 (not lt!4043))))

(declare-fun lt!4044 () Bool)

(assert (=> d!3111 (= lt!4043 lt!4044)))

(declare-fun lt!4042 () Unit!324)

(declare-fun e!10063 () Unit!324)

(assert (=> d!3111 (= lt!4042 e!10063)))

(declare-fun c!1542 () Bool)

(assert (=> d!3111 (= c!1542 lt!4044)))

(declare-fun containsKey!19 (List!523 (_ BitVec 64)) Bool)

(assert (=> d!3111 (= lt!4044 (containsKey!19 (toList!265 lt!3988) a!507))))

(assert (=> d!3111 (= (contains!195 lt!3988 a!507) lt!4043)))

(declare-fun b!16330 () Bool)

(declare-fun lt!4045 () Unit!324)

(assert (=> b!16330 (= e!10063 lt!4045)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!16 (List!523 (_ BitVec 64)) Unit!324)

(assert (=> b!16330 (= lt!4045 (lemmaContainsKeyImpliesGetValueByKeyDefined!16 (toList!265 lt!3988) a!507))))

(declare-datatypes ((Option!61 0))(
  ( (Some!60 (v!1390 B!690)) (None!59) )
))
(declare-fun isDefined!17 (Option!61) Bool)

(declare-fun getValueByKey!55 (List!523 (_ BitVec 64)) Option!61)

(assert (=> b!16330 (isDefined!17 (getValueByKey!55 (toList!265 lt!3988) a!507))))

(declare-fun b!16331 () Bool)

(declare-fun Unit!328 () Unit!324)

(assert (=> b!16331 (= e!10063 Unit!328)))

(declare-fun b!16332 () Bool)

(assert (=> b!16332 (= e!10062 (isDefined!17 (getValueByKey!55 (toList!265 lt!3988) a!507)))))

(assert (= (and d!3111 c!1542) b!16330))

(assert (= (and d!3111 (not c!1542)) b!16331))

(assert (= (and d!3111 (not res!12168)) b!16332))

(declare-fun m!11389 () Bool)

(assert (=> d!3111 m!11389))

(declare-fun m!11391 () Bool)

(assert (=> b!16330 m!11391))

(declare-fun m!11393 () Bool)

(assert (=> b!16330 m!11393))

(assert (=> b!16330 m!11393))

(declare-fun m!11395 () Bool)

(assert (=> b!16330 m!11395))

(assert (=> b!16332 m!11393))

(assert (=> b!16332 m!11393))

(assert (=> b!16332 m!11395))

(assert (=> d!3053 d!3111))

(declare-fun b!16366 () Bool)

(declare-fun e!10088 () Bool)

(declare-fun lt!4054 () List!523)

(assert (=> b!16366 (= e!10088 (not (containsKey!19 lt!4054 a!507)))))

(declare-fun b!16367 () Bool)

(declare-fun e!10089 () List!523)

(assert (=> b!16367 (= e!10089 Nil!520)))

(declare-fun b!16368 () Bool)

(declare-fun e!10090 () List!523)

(assert (=> b!16368 (= e!10090 (t!3063 (toList!265 lt!3978)))))

(declare-fun d!3131 () Bool)

(assert (=> d!3131 e!10088))

(declare-fun res!12182 () Bool)

(assert (=> d!3131 (=> (not res!12182) (not e!10088))))

(assert (=> d!3131 (= res!12182 (isStrictlySorted!162 lt!4054))))

(assert (=> d!3131 (= lt!4054 e!10090)))

(declare-fun c!1552 () Bool)

(assert (=> d!3131 (= c!1552 (and (is-Cons!519 (toList!265 lt!3978)) (= (_1!334 (h!1085 (toList!265 lt!3978))) a!507)))))

(assert (=> d!3131 (isStrictlySorted!162 (toList!265 lt!3978))))

(assert (=> d!3131 (= (removeStrictlySorted!18 (toList!265 lt!3978) a!507) lt!4054)))

(declare-fun b!16369 () Bool)

(assert (=> b!16369 (= e!10090 e!10089)))

(declare-fun c!1553 () Bool)

(assert (=> b!16369 (= c!1553 (and (is-Cons!519 (toList!265 lt!3978)) (not (= (_1!334 (h!1085 (toList!265 lt!3978))) a!507))))))

(declare-fun b!16370 () Bool)

(declare-fun $colon$colon!26 (List!523 tuple2!668) List!523)

(assert (=> b!16370 (= e!10089 ($colon$colon!26 (removeStrictlySorted!18 (t!3063 (toList!265 lt!3978)) a!507) (h!1085 (toList!265 lt!3978))))))

(assert (= (and d!3131 c!1552) b!16368))

(assert (= (and d!3131 (not c!1552)) b!16369))

(assert (= (and b!16369 c!1553) b!16370))

(assert (= (and b!16369 (not c!1553)) b!16367))

(assert (= (and d!3131 res!12182) b!16366))

(declare-fun m!11439 () Bool)

(assert (=> b!16366 m!11439))

(declare-fun m!11441 () Bool)

(assert (=> d!3131 m!11441))

(declare-fun m!11443 () Bool)

(assert (=> d!3131 m!11443))

(declare-fun m!11445 () Bool)

(assert (=> b!16370 m!11445))

(assert (=> b!16370 m!11445))

(declare-fun m!11447 () Bool)

(assert (=> b!16370 m!11447))

(assert (=> d!3053 d!3131))

(declare-fun d!3147 () Bool)

(declare-fun res!12183 () Bool)

(declare-fun e!10091 () Bool)

(assert (=> d!3147 (=> res!12183 e!10091)))

(assert (=> d!3147 (= res!12183 (is-Nil!520 (t!3063 (toList!265 lm!221))))))

(assert (=> d!3147 (= (forall!145 (t!3063 (toList!265 lm!221)) p!191) e!10091)))

(declare-fun b!16371 () Bool)

(declare-fun e!10092 () Bool)

(assert (=> b!16371 (= e!10091 e!10092)))

(declare-fun res!12184 () Bool)

(assert (=> b!16371 (=> (not res!12184) (not e!10092))))

(assert (=> b!16371 (= res!12184 (dynLambda!127 p!191 (h!1085 (t!3063 (toList!265 lm!221)))))))

(declare-fun b!16372 () Bool)

(assert (=> b!16372 (= e!10092 (forall!145 (t!3063 (t!3063 (toList!265 lm!221))) p!191))))

(assert (= (and d!3147 (not res!12183)) b!16371))

(assert (= (and b!16371 res!12184) b!16372))

(declare-fun b_lambda!1329 () Bool)

(assert (=> (not b_lambda!1329) (not b!16371)))

(declare-fun t!3107 () Bool)

(declare-fun tb!573 () Bool)

(assert (=> (and start!2780 (= p!191 p!191) t!3107) tb!573))

(declare-fun result!945 () Bool)

(assert (=> tb!573 (= result!945 true)))

(assert (=> b!16371 t!3107))

(declare-fun b_and!1161 () Bool)

(assert (= b_and!1143 (and (=> t!3107 result!945) b_and!1161)))

(declare-fun m!11449 () Bool)

(assert (=> b!16371 m!11449))

(declare-fun m!11451 () Bool)

(assert (=> b!16372 m!11451))

(assert (=> b!16211 d!3147))

(declare-fun d!3149 () Bool)

(declare-fun res!12189 () Bool)

(declare-fun e!10097 () Bool)

(assert (=> d!3149 (=> res!12189 e!10097)))

(assert (=> d!3149 (= res!12189 (or (is-Nil!520 (toList!265 lm!221)) (is-Nil!520 (t!3063 (toList!265 lm!221)))))))

(assert (=> d!3149 (= (isStrictlySorted!162 (toList!265 lm!221)) e!10097)))

(declare-fun b!16377 () Bool)

(declare-fun e!10098 () Bool)

(assert (=> b!16377 (= e!10097 e!10098)))

(declare-fun res!12190 () Bool)

(assert (=> b!16377 (=> (not res!12190) (not e!10098))))

(assert (=> b!16377 (= res!12190 (bvslt (_1!334 (h!1085 (toList!265 lm!221))) (_1!334 (h!1085 (t!3063 (toList!265 lm!221))))))))

(declare-fun b!16378 () Bool)

(assert (=> b!16378 (= e!10098 (isStrictlySorted!162 (t!3063 (toList!265 lm!221))))))

(assert (= (and d!3149 (not res!12189)) b!16377))

(assert (= (and b!16377 res!12190) b!16378))

(declare-fun m!11453 () Bool)

(assert (=> b!16378 m!11453))

(assert (=> d!3039 d!3149))

(declare-fun d!3151 () Bool)

(declare-fun res!12191 () Bool)

(declare-fun e!10099 () Bool)

(assert (=> d!3151 (=> res!12191 e!10099)))

(assert (=> d!3151 (= res!12191 (is-Nil!520 (t!3063 (toList!265 (-!32 lt!3978 a!507)))))))

(assert (=> d!3151 (= (forall!145 (t!3063 (toList!265 (-!32 lt!3978 a!507))) p!191) e!10099)))

(declare-fun b!16379 () Bool)

(declare-fun e!10100 () Bool)

(assert (=> b!16379 (= e!10099 e!10100)))

(declare-fun res!12192 () Bool)

(assert (=> b!16379 (=> (not res!12192) (not e!10100))))

(assert (=> b!16379 (= res!12192 (dynLambda!127 p!191 (h!1085 (t!3063 (toList!265 (-!32 lt!3978 a!507))))))))

(declare-fun b!16380 () Bool)

(assert (=> b!16380 (= e!10100 (forall!145 (t!3063 (t!3063 (toList!265 (-!32 lt!3978 a!507)))) p!191))))

(assert (= (and d!3151 (not res!12191)) b!16379))

(assert (= (and b!16379 res!12192) b!16380))

(declare-fun b_lambda!1331 () Bool)

(assert (=> (not b_lambda!1331) (not b!16379)))

(declare-fun t!3109 () Bool)

(declare-fun tb!575 () Bool)

(assert (=> (and start!2780 (= p!191 p!191) t!3109) tb!575))

(declare-fun result!947 () Bool)

(assert (=> tb!575 (= result!947 true)))

(assert (=> b!16379 t!3109))

(declare-fun b_and!1163 () Bool)

(assert (= b_and!1161 (and (=> t!3109 result!947) b_and!1163)))

(declare-fun m!11455 () Bool)

(assert (=> b!16379 m!11455))

(declare-fun m!11457 () Bool)

(assert (=> b!16380 m!11457))

(assert (=> b!16229 d!3151))

(declare-fun d!3153 () Bool)

(assert (=> d!3153 (= (isEmpty!159 (toList!265 lm!221)) (is-Nil!520 (toList!265 lm!221)))))

(assert (=> d!3030 d!3153))

(declare-fun d!3155 () Bool)

(declare-fun res!12193 () Bool)

(declare-fun e!10101 () Bool)

(assert (=> d!3155 (=> res!12193 e!10101)))

(assert (=> d!3155 (= res!12193 (is-Nil!520 (t!3063 (toList!265 lt!3978))))))

(assert (=> d!3155 (= (forall!145 (t!3063 (toList!265 lt!3978)) p!191) e!10101)))

(declare-fun b!16381 () Bool)

(declare-fun e!10102 () Bool)

(assert (=> b!16381 (= e!10101 e!10102)))

(declare-fun res!12194 () Bool)

(assert (=> b!16381 (=> (not res!12194) (not e!10102))))

(assert (=> b!16381 (= res!12194 (dynLambda!127 p!191 (h!1085 (t!3063 (toList!265 lt!3978)))))))

(declare-fun b!16382 () Bool)

(assert (=> b!16382 (= e!10102 (forall!145 (t!3063 (t!3063 (toList!265 lt!3978))) p!191))))

(assert (= (and d!3155 (not res!12193)) b!16381))

(assert (= (and b!16381 res!12194) b!16382))

(declare-fun b_lambda!1333 () Bool)

(assert (=> (not b_lambda!1333) (not b!16381)))

(declare-fun t!3111 () Bool)

(declare-fun tb!577 () Bool)

(assert (=> (and start!2780 (= p!191 p!191) t!3111) tb!577))

(declare-fun result!949 () Bool)

(assert (=> tb!577 (= result!949 true)))

(assert (=> b!16381 t!3111))

(declare-fun b_and!1165 () Bool)

(assert (= b_and!1163 (and (=> t!3111 result!949) b_and!1165)))

(declare-fun m!11459 () Bool)

(assert (=> b!16381 m!11459))

(declare-fun m!11461 () Bool)

(assert (=> b!16382 m!11461))

(assert (=> b!16235 d!3155))

(declare-fun d!3157 () Bool)

(declare-fun e!10103 () Bool)

(assert (=> d!3157 e!10103))

(declare-fun res!12195 () Bool)

(assert (=> d!3157 (=> res!12195 e!10103)))

(declare-fun lt!4056 () Bool)

(assert (=> d!3157 (= res!12195 (not lt!4056))))

(declare-fun lt!4057 () Bool)

(assert (=> d!3157 (= lt!4056 lt!4057)))

(declare-fun lt!4055 () Unit!324)

(declare-fun e!10104 () Unit!324)

(assert (=> d!3157 (= lt!4055 e!10104)))

(declare-fun c!1554 () Bool)

(assert (=> d!3157 (= c!1554 lt!4057)))

(assert (=> d!3157 (= lt!4057 (containsKey!19 (toList!265 lt!3987) a!507))))

(assert (=> d!3157 (= (contains!195 lt!3987 a!507) lt!4056)))

(declare-fun b!16383 () Bool)

(declare-fun lt!4058 () Unit!324)

(assert (=> b!16383 (= e!10104 lt!4058)))

(assert (=> b!16383 (= lt!4058 (lemmaContainsKeyImpliesGetValueByKeyDefined!16 (toList!265 lt!3987) a!507))))

(assert (=> b!16383 (isDefined!17 (getValueByKey!55 (toList!265 lt!3987) a!507))))

(declare-fun b!16384 () Bool)

(declare-fun Unit!331 () Unit!324)

(assert (=> b!16384 (= e!10104 Unit!331)))

(declare-fun b!16385 () Bool)

(assert (=> b!16385 (= e!10103 (isDefined!17 (getValueByKey!55 (toList!265 lt!3987) a!507)))))

(assert (= (and d!3157 c!1554) b!16383))

(assert (= (and d!3157 (not c!1554)) b!16384))

(assert (= (and d!3157 (not res!12195)) b!16385))

(declare-fun m!11463 () Bool)

(assert (=> d!3157 m!11463))

(declare-fun m!11465 () Bool)

(assert (=> b!16383 m!11465))

(declare-fun m!11467 () Bool)

(assert (=> b!16383 m!11467))

(assert (=> b!16383 m!11467))

(declare-fun m!11469 () Bool)

(assert (=> b!16383 m!11469))

(assert (=> b!16385 m!11467))

(assert (=> b!16385 m!11467))

(assert (=> b!16385 m!11469))

(assert (=> d!3045 d!3157))

(declare-fun b!16386 () Bool)

(declare-fun e!10105 () Bool)

(declare-fun lt!4059 () List!523)

(assert (=> b!16386 (= e!10105 (not (containsKey!19 lt!4059 a!507)))))

(declare-fun b!16387 () Bool)

(declare-fun e!10106 () List!523)

(assert (=> b!16387 (= e!10106 Nil!520)))

(declare-fun b!16388 () Bool)

(declare-fun e!10107 () List!523)

(assert (=> b!16388 (= e!10107 (t!3063 (toList!265 lm!221)))))

(declare-fun d!3159 () Bool)

(assert (=> d!3159 e!10105))

(declare-fun res!12196 () Bool)

(assert (=> d!3159 (=> (not res!12196) (not e!10105))))

(assert (=> d!3159 (= res!12196 (isStrictlySorted!162 lt!4059))))

(assert (=> d!3159 (= lt!4059 e!10107)))

(declare-fun c!1555 () Bool)

(assert (=> d!3159 (= c!1555 (and (is-Cons!519 (toList!265 lm!221)) (= (_1!334 (h!1085 (toList!265 lm!221))) a!507)))))

(assert (=> d!3159 (isStrictlySorted!162 (toList!265 lm!221))))

(assert (=> d!3159 (= (removeStrictlySorted!18 (toList!265 lm!221) a!507) lt!4059)))

(declare-fun b!16389 () Bool)

(assert (=> b!16389 (= e!10107 e!10106)))

(declare-fun c!1556 () Bool)

(assert (=> b!16389 (= c!1556 (and (is-Cons!519 (toList!265 lm!221)) (not (= (_1!334 (h!1085 (toList!265 lm!221))) a!507))))))

(declare-fun b!16390 () Bool)

(assert (=> b!16390 (= e!10106 ($colon$colon!26 (removeStrictlySorted!18 (t!3063 (toList!265 lm!221)) a!507) (h!1085 (toList!265 lm!221))))))

(assert (= (and d!3159 c!1555) b!16388))

(assert (= (and d!3159 (not c!1555)) b!16389))

(assert (= (and b!16389 c!1556) b!16390))

(assert (= (and b!16389 (not c!1556)) b!16387))

(assert (= (and d!3159 res!12196) b!16386))

(declare-fun m!11471 () Bool)

(assert (=> b!16386 m!11471))

(declare-fun m!11473 () Bool)

(assert (=> d!3159 m!11473))

(assert (=> d!3159 m!11243))

(declare-fun m!11475 () Bool)

(assert (=> b!16390 m!11475))

(assert (=> b!16390 m!11475))

(declare-fun m!11477 () Bool)

(assert (=> b!16390 m!11477))

(assert (=> d!3045 d!3159))

(declare-fun b!16391 () Bool)

(declare-fun e!10108 () Bool)

(declare-fun tp!2879 () Bool)

(assert (=> b!16391 (= e!10108 (and tp_is_empty!831 tp!2879))))

(assert (=> b!16249 (= tp!2873 e!10108)))

(assert (= (and b!16249 (is-Cons!519 (t!3063 (toList!265 lm!221)))) b!16391))

(declare-fun b_lambda!1335 () Bool)

(assert (= b_lambda!1329 (or (and start!2780 b_free!569) b_lambda!1335)))

(declare-fun b_lambda!1337 () Bool)

(assert (= b_lambda!1331 (or (and start!2780 b_free!569) b_lambda!1337)))

(declare-fun b_lambda!1339 () Bool)

(assert (= b_lambda!1295 (or (and start!2780 b_free!569) b_lambda!1339)))

(declare-fun b_lambda!1341 () Bool)

(assert (= b_lambda!1333 (or (and start!2780 b_free!569) b_lambda!1341)))

(push 1)

(assert (not b!16278))

(assert (not b_lambda!1283))

(assert (not b!16391))

(assert (not d!3105))

(assert (not b!16366))

(assert tp_is_empty!831)

(assert (not b!16330))

(assert (not b_lambda!1279))

(assert (not b_lambda!1341))

(assert (not b_lambda!1337))

(assert (not b!16383))

(assert (not d!3131))

(assert (not b!16386))

(assert (not d!3157))

(assert (not b!16372))

(assert (not b!16332))

(assert (not b!16385))

(assert (not b_next!569))

(assert b_and!1165)

(assert (not b!16380))

(assert (not b_lambda!1281))

(assert (not d!3159))

(assert (not b_lambda!1335))

(assert (not b!16378))

(assert (not b!16382))

(assert (not b!16370))

(assert (not b_lambda!1339))

(assert (not b!16390))

(assert (not d!3111))

(assert (not b_lambda!1285))

(check-sat)

(pop 1)

(push 1)

(assert b_and!1165)

(assert (not b_next!569))

(check-sat)

(get-model)

(pop 1)

(declare-fun d!3249 () Bool)

(declare-fun isEmpty!164 (Option!61) Bool)

(assert (=> d!3249 (= (isDefined!17 (getValueByKey!55 (toList!265 lt!3988) a!507)) (not (isEmpty!164 (getValueByKey!55 (toList!265 lt!3988) a!507))))))

(declare-fun bs!783 () Bool)

(assert (= bs!783 d!3249))

(assert (=> bs!783 m!11393))

(declare-fun m!11607 () Bool)

(assert (=> bs!783 m!11607))

(assert (=> b!16332 d!3249))

(declare-fun b!16519 () Bool)

(declare-fun e!10207 () Option!61)

(declare-fun e!10208 () Option!61)

(assert (=> b!16519 (= e!10207 e!10208)))

(declare-fun c!1586 () Bool)

(assert (=> b!16519 (= c!1586 (and (is-Cons!519 (toList!265 lt!3988)) (not (= (_1!334 (h!1085 (toList!265 lt!3988))) a!507))))))

(declare-fun b!16521 () Bool)

(assert (=> b!16521 (= e!10208 None!59)))

(declare-fun b!16520 () Bool)

(assert (=> b!16520 (= e!10208 (getValueByKey!55 (t!3063 (toList!265 lt!3988)) a!507))))

(declare-fun d!3251 () Bool)

(declare-fun c!1585 () Bool)

(assert (=> d!3251 (= c!1585 (and (is-Cons!519 (toList!265 lt!3988)) (= (_1!334 (h!1085 (toList!265 lt!3988))) a!507)))))

(assert (=> d!3251 (= (getValueByKey!55 (toList!265 lt!3988) a!507) e!10207)))

(declare-fun b!16518 () Bool)

(assert (=> b!16518 (= e!10207 (Some!60 (_2!334 (h!1085 (toList!265 lt!3988)))))))

(assert (= (and d!3251 c!1585) b!16518))

(assert (= (and d!3251 (not c!1585)) b!16519))

(assert (= (and b!16519 c!1586) b!16520))

(assert (= (and b!16519 (not c!1586)) b!16521))

(declare-fun m!11609 () Bool)

(assert (=> b!16520 m!11609))

(assert (=> b!16332 d!3251))

(declare-fun d!3253 () Bool)

(declare-fun res!12265 () Bool)

(declare-fun e!10209 () Bool)

(assert (=> d!3253 (=> res!12265 e!10209)))

(assert (=> d!3253 (= res!12265 (is-Nil!520 (t!3063 (t!3063 (toList!265 (-!32 lm!221 a!507))))))))

(assert (=> d!3253 (= (forall!145 (t!3063 (t!3063 (toList!265 (-!32 lm!221 a!507)))) p!191) e!10209)))

(declare-fun b!16522 () Bool)

(declare-fun e!10210 () Bool)

(assert (=> b!16522 (= e!10209 e!10210)))

(declare-fun res!12266 () Bool)

(assert (=> b!16522 (=> (not res!12266) (not e!10210))))

(assert (=> b!16522 (= res!12266 (dynLambda!127 p!191 (h!1085 (t!3063 (t!3063 (toList!265 (-!32 lm!221 a!507)))))))))

(declare-fun b!16523 () Bool)

(assert (=> b!16523 (= e!10210 (forall!145 (t!3063 (t!3063 (t!3063 (toList!265 (-!32 lm!221 a!507))))) p!191))))

(assert (= (and d!3253 (not res!12265)) b!16522))

(assert (= (and b!16522 res!12266) b!16523))

(declare-fun b_lambda!1375 () Bool)

(assert (=> (not b_lambda!1375) (not b!16522)))

(declare-fun t!3131 () Bool)

(declare-fun tb!595 () Bool)

(assert (=> (and start!2780 (= p!191 p!191) t!3131) tb!595))

(declare-fun result!967 () Bool)

(assert (=> tb!595 (= result!967 true)))

(assert (=> b!16522 t!3131))

(declare-fun b_and!1183 () Bool)

(assert (= b_and!1165 (and (=> t!3131 result!967) b_and!1183)))

(declare-fun m!11611 () Bool)

(assert (=> b!16522 m!11611))

(declare-fun m!11613 () Bool)

(assert (=> b!16523 m!11613))

(assert (=> b!16278 d!3253))

(declare-fun d!3255 () Bool)

(assert (=> d!3255 (= ($colon$colon!26 (removeStrictlySorted!18 (t!3063 (toList!265 lt!3978)) a!507) (h!1085 (toList!265 lt!3978))) (Cons!519 (h!1085 (toList!265 lt!3978)) (removeStrictlySorted!18 (t!3063 (toList!265 lt!3978)) a!507)))))

(assert (=> b!16370 d!3255))

(declare-fun b!16524 () Bool)

(declare-fun e!10211 () Bool)

(declare-fun lt!4072 () List!523)

(assert (=> b!16524 (= e!10211 (not (containsKey!19 lt!4072 a!507)))))

(declare-fun b!16525 () Bool)

(declare-fun e!10212 () List!523)

(assert (=> b!16525 (= e!10212 Nil!520)))

(declare-fun b!16526 () Bool)

(declare-fun e!10213 () List!523)

(assert (=> b!16526 (= e!10213 (t!3063 (t!3063 (toList!265 lt!3978))))))

(declare-fun d!3257 () Bool)

(assert (=> d!3257 e!10211))

(declare-fun res!12267 () Bool)

(assert (=> d!3257 (=> (not res!12267) (not e!10211))))

(assert (=> d!3257 (= res!12267 (isStrictlySorted!162 lt!4072))))

(assert (=> d!3257 (= lt!4072 e!10213)))

(declare-fun c!1587 () Bool)

(assert (=> d!3257 (= c!1587 (and (is-Cons!519 (t!3063 (toList!265 lt!3978))) (= (_1!334 (h!1085 (t!3063 (toList!265 lt!3978)))) a!507)))))

(assert (=> d!3257 (isStrictlySorted!162 (t!3063 (toList!265 lt!3978)))))

(assert (=> d!3257 (= (removeStrictlySorted!18 (t!3063 (toList!265 lt!3978)) a!507) lt!4072)))

(declare-fun b!16527 () Bool)

(assert (=> b!16527 (= e!10213 e!10212)))

(declare-fun c!1588 () Bool)

(assert (=> b!16527 (= c!1588 (and (is-Cons!519 (t!3063 (toList!265 lt!3978))) (not (= (_1!334 (h!1085 (t!3063 (toList!265 lt!3978)))) a!507))))))

(declare-fun b!16528 () Bool)

(assert (=> b!16528 (= e!10212 ($colon$colon!26 (removeStrictlySorted!18 (t!3063 (t!3063 (toList!265 lt!3978))) a!507) (h!1085 (t!3063 (toList!265 lt!3978)))))))

(assert (= (and d!3257 c!1587) b!16526))

(assert (= (and d!3257 (not c!1587)) b!16527))

(assert (= (and b!16527 c!1588) b!16528))

(assert (= (and b!16527 (not c!1588)) b!16525))

(assert (= (and d!3257 res!12267) b!16524))

(declare-fun m!11615 () Bool)

(assert (=> b!16524 m!11615))

(declare-fun m!11617 () Bool)

(assert (=> d!3257 m!11617))

(declare-fun m!11619 () Bool)

(assert (=> d!3257 m!11619))

(declare-fun m!11621 () Bool)

(assert (=> b!16528 m!11621))

(assert (=> b!16528 m!11621))

(declare-fun m!11623 () Bool)

(assert (=> b!16528 m!11623))

(assert (=> b!16370 d!3257))

(declare-fun d!3259 () Bool)

(declare-fun res!12268 () Bool)

(declare-fun e!10214 () Bool)

(assert (=> d!3259 (=> res!12268 e!10214)))

(assert (=> d!3259 (= res!12268 (is-Nil!520 (t!3063 (t!3063 (toList!265 lt!3978)))))))

(assert (=> d!3259 (= (forall!145 (t!3063 (t!3063 (toList!265 lt!3978))) p!191) e!10214)))

(declare-fun b!16529 () Bool)

(declare-fun e!10215 () Bool)

(assert (=> b!16529 (= e!10214 e!10215)))

(declare-fun res!12269 () Bool)

(assert (=> b!16529 (=> (not res!12269) (not e!10215))))

(assert (=> b!16529 (= res!12269 (dynLambda!127 p!191 (h!1085 (t!3063 (t!3063 (toList!265 lt!3978))))))))

(declare-fun b!16530 () Bool)

(assert (=> b!16530 (= e!10215 (forall!145 (t!3063 (t!3063 (t!3063 (toList!265 lt!3978)))) p!191))))

(assert (= (and d!3259 (not res!12268)) b!16529))

(assert (= (and b!16529 res!12269) b!16530))

(declare-fun b_lambda!1377 () Bool)

(assert (=> (not b_lambda!1377) (not b!16529)))

(declare-fun t!3134 () Bool)

(declare-fun tb!597 () Bool)

(assert (=> (and start!2780 (= p!191 p!191) t!3134) tb!597))

(declare-fun result!969 () Bool)

(assert (=> tb!597 (= result!969 true)))

(assert (=> b!16529 t!3134))

(declare-fun b_and!1185 () Bool)

(assert (= b_and!1183 (and (=> t!3134 result!969) b_and!1185)))

(declare-fun m!11625 () Bool)

(assert (=> b!16529 m!11625))

(declare-fun m!11627 () Bool)

(assert (=> b!16530 m!11627))

(assert (=> b!16382 d!3259))

(declare-fun d!3261 () Bool)

(declare-fun res!12274 () Bool)

(declare-fun e!10220 () Bool)

(assert (=> d!3261 (=> res!12274 e!10220)))

(assert (=> d!3261 (= res!12274 (and (is-Cons!519 lt!4054) (= (_1!334 (h!1085 lt!4054)) a!507)))))

(assert (=> d!3261 (= (containsKey!19 lt!4054 a!507) e!10220)))

(declare-fun b!16535 () Bool)

(declare-fun e!10221 () Bool)

(assert (=> b!16535 (= e!10220 e!10221)))

(declare-fun res!12275 () Bool)

(assert (=> b!16535 (=> (not res!12275) (not e!10221))))

(assert (=> b!16535 (= res!12275 (and (or (not (is-Cons!519 lt!4054)) (bvsle (_1!334 (h!1085 lt!4054)) a!507)) (is-Cons!519 lt!4054) (bvslt (_1!334 (h!1085 lt!4054)) a!507)))))

(declare-fun b!16536 () Bool)

(assert (=> b!16536 (= e!10221 (containsKey!19 (t!3063 lt!4054) a!507))))

(assert (= (and d!3261 (not res!12274)) b!16535))

(assert (= (and b!16535 res!12275) b!16536))

(declare-fun m!11629 () Bool)

(assert (=> b!16536 m!11629))

(assert (=> b!16366 d!3261))

(declare-fun d!3263 () Bool)

(declare-fun res!12276 () Bool)

(declare-fun e!10222 () Bool)

(assert (=> d!3263 (=> res!12276 e!10222)))

(assert (=> d!3263 (= res!12276 (or (is-Nil!520 lt!4054) (is-Nil!520 (t!3063 lt!4054))))))

(assert (=> d!3263 (= (isStrictlySorted!162 lt!4054) e!10222)))

(declare-fun b!16537 () Bool)

(declare-fun e!10223 () Bool)

(assert (=> b!16537 (= e!10222 e!10223)))

(declare-fun res!12277 () Bool)

(assert (=> b!16537 (=> (not res!12277) (not e!10223))))

(assert (=> b!16537 (= res!12277 (bvslt (_1!334 (h!1085 lt!4054)) (_1!334 (h!1085 (t!3063 lt!4054)))))))

(declare-fun b!16538 () Bool)

(assert (=> b!16538 (= e!10223 (isStrictlySorted!162 (t!3063 lt!4054)))))

(assert (= (and d!3263 (not res!12276)) b!16537))

(assert (= (and b!16537 res!12277) b!16538))

(declare-fun m!11631 () Bool)

(assert (=> b!16538 m!11631))

(assert (=> d!3131 d!3263))

(declare-fun d!3265 () Bool)

(declare-fun res!12278 () Bool)

(declare-fun e!10224 () Bool)

(assert (=> d!3265 (=> res!12278 e!10224)))

(assert (=> d!3265 (= res!12278 (or (is-Nil!520 (toList!265 lt!3978)) (is-Nil!520 (t!3063 (toList!265 lt!3978)))))))

(assert (=> d!3265 (= (isStrictlySorted!162 (toList!265 lt!3978)) e!10224)))

(declare-fun b!16539 () Bool)

(declare-fun e!10225 () Bool)

(assert (=> b!16539 (= e!10224 e!10225)))

(declare-fun res!12279 () Bool)

(assert (=> b!16539 (=> (not res!12279) (not e!10225))))

(assert (=> b!16539 (= res!12279 (bvslt (_1!334 (h!1085 (toList!265 lt!3978))) (_1!334 (h!1085 (t!3063 (toList!265 lt!3978))))))))

(declare-fun b!16540 () Bool)

(assert (=> b!16540 (= e!10225 (isStrictlySorted!162 (t!3063 (toList!265 lt!3978))))))

(assert (= (and d!3265 (not res!12278)) b!16539))

