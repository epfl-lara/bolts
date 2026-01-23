; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!432518 () Bool)

(assert start!432518)

(declare-fun b!4430106 () Bool)

(declare-fun res!1832460 () Bool)

(declare-fun e!2758402 () Bool)

(assert (=> b!4430106 (=> (not res!1832460) (not e!2758402))))

(declare-datatypes ((V!11279 0))(
  ( (V!11280 (val!17097 Int)) )
))
(declare-datatypes ((K!11033 0))(
  ( (K!11034 (val!17098 Int)) )
))
(declare-datatypes ((tuple2!49514 0))(
  ( (tuple2!49515 (_1!28051 K!11033) (_2!28051 V!11279)) )
))
(declare-datatypes ((List!49787 0))(
  ( (Nil!49663) (Cons!49663 (h!55360 tuple2!49514) (t!356725 List!49787)) )
))
(declare-datatypes ((tuple2!49516 0))(
  ( (tuple2!49517 (_1!28052 (_ BitVec 64)) (_2!28052 List!49787)) )
))
(declare-datatypes ((List!49788 0))(
  ( (Nil!49664) (Cons!49664 (h!55361 tuple2!49516) (t!356726 List!49788)) )
))
(declare-datatypes ((ListLongMap!2205 0))(
  ( (ListLongMap!2206 (toList!3555 List!49788)) )
))
(declare-fun lm!1616 () ListLongMap!2205)

(declare-fun key!3717 () K!11033)

(declare-datatypes ((ListMap!2799 0))(
  ( (ListMap!2800 (toList!3556 List!49787)) )
))
(declare-fun contains!12188 (ListMap!2799 K!11033) Bool)

(declare-fun extractMap!845 (List!49788) ListMap!2799)

(assert (=> b!4430106 (= res!1832460 (not (contains!12188 (extractMap!845 (toList!3555 lm!1616)) key!3717)))))

(declare-fun b!4430107 () Bool)

(declare-fun res!1832455 () Bool)

(declare-fun e!2758403 () Bool)

(assert (=> b!4430107 (=> (not res!1832455) (not e!2758403))))

(declare-fun lambda!155083 () Int)

(declare-fun forall!9611 (List!49788 Int) Bool)

(assert (=> b!4430107 (= res!1832455 (forall!9611 (toList!3555 lm!1616) lambda!155083))))

(declare-fun res!1832464 () Bool)

(assert (=> start!432518 (=> (not res!1832464) (not e!2758402))))

(assert (=> start!432518 (= res!1832464 (forall!9611 (toList!3555 lm!1616) lambda!155083))))

(assert (=> start!432518 e!2758402))

(declare-fun tp_is_empty!26381 () Bool)

(assert (=> start!432518 tp_is_empty!26381))

(declare-fun tp_is_empty!26383 () Bool)

(assert (=> start!432518 tp_is_empty!26383))

(declare-fun e!2758398 () Bool)

(assert (=> start!432518 e!2758398))

(declare-fun e!2758401 () Bool)

(declare-fun inv!65220 (ListLongMap!2205) Bool)

(assert (=> start!432518 (and (inv!65220 lm!1616) e!2758401)))

(assert (=> start!432518 true))

(declare-fun b!4430108 () Bool)

(assert (=> b!4430108 (= e!2758402 e!2758403)))

(declare-fun res!1832462 () Bool)

(assert (=> b!4430108 (=> (not res!1832462) (not e!2758403))))

(declare-fun e!2758400 () Bool)

(assert (=> b!4430108 (= res!1832462 e!2758400)))

(declare-fun res!1832461 () Bool)

(assert (=> b!4430108 (=> res!1832461 e!2758400)))

(declare-fun e!2758399 () Bool)

(assert (=> b!4430108 (= res!1832461 e!2758399)))

(declare-fun res!1832463 () Bool)

(assert (=> b!4430108 (=> (not res!1832463) (not e!2758399))))

(declare-fun lt!1629124 () Bool)

(assert (=> b!4430108 (= res!1832463 lt!1629124)))

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun contains!12189 (ListLongMap!2205 (_ BitVec 64)) Bool)

(assert (=> b!4430108 (= lt!1629124 (contains!12189 lm!1616 hash!366))))

(declare-fun newValue!93 () V!11279)

(declare-fun b!4430109 () Bool)

(declare-fun newBucket!194 () List!49787)

(declare-fun apply!11636 (ListLongMap!2205 (_ BitVec 64)) List!49787)

(assert (=> b!4430109 (= e!2758399 (= newBucket!194 (Cons!49663 (tuple2!49515 key!3717 newValue!93) (apply!11636 lm!1616 hash!366))))))

(declare-fun b!4430110 () Bool)

(declare-fun e!2758397 () Bool)

(assert (=> b!4430110 (= e!2758403 (not e!2758397))))

(declare-fun res!1832454 () Bool)

(assert (=> b!4430110 (=> res!1832454 e!2758397)))

(declare-fun lt!1629126 () ListLongMap!2205)

(assert (=> b!4430110 (= res!1832454 (not (forall!9611 (toList!3555 lt!1629126) lambda!155083)))))

(assert (=> b!4430110 (forall!9611 (toList!3555 lt!1629126) lambda!155083)))

(declare-fun +!1138 (ListLongMap!2205 tuple2!49516) ListLongMap!2205)

(assert (=> b!4430110 (= lt!1629126 (+!1138 lm!1616 (tuple2!49517 hash!366 newBucket!194)))))

(declare-datatypes ((Unit!82629 0))(
  ( (Unit!82630) )
))
(declare-fun lt!1629125 () Unit!82629)

(declare-fun addValidProp!426 (ListLongMap!2205 Int (_ BitVec 64) List!49787) Unit!82629)

(assert (=> b!4430110 (= lt!1629125 (addValidProp!426 lm!1616 lambda!155083 hash!366 newBucket!194))))

(declare-fun b!4430111 () Bool)

(declare-fun res!1832459 () Bool)

(assert (=> b!4430111 (=> (not res!1832459) (not e!2758402))))

(declare-datatypes ((Hashable!5178 0))(
  ( (HashableExt!5177 (__x!30881 Int)) )
))
(declare-fun hashF!1220 () Hashable!5178)

(declare-fun allKeysSameHashInMap!890 (ListLongMap!2205 Hashable!5178) Bool)

(assert (=> b!4430111 (= res!1832459 (allKeysSameHashInMap!890 lm!1616 hashF!1220))))

(declare-fun b!4430112 () Bool)

(declare-fun res!1832456 () Bool)

(assert (=> b!4430112 (=> (not res!1832456) (not e!2758403))))

(declare-fun noDuplicateKeys!784 (List!49787) Bool)

(assert (=> b!4430112 (= res!1832456 (noDuplicateKeys!784 newBucket!194))))

(declare-fun b!4430113 () Bool)

(declare-fun tp!1333520 () Bool)

(assert (=> b!4430113 (= e!2758398 (and tp_is_empty!26383 tp_is_empty!26381 tp!1333520))))

(declare-fun b!4430114 () Bool)

(declare-fun res!1832458 () Bool)

(assert (=> b!4430114 (=> (not res!1832458) (not e!2758402))))

(declare-fun hash!2197 (Hashable!5178 K!11033) (_ BitVec 64))

(assert (=> b!4430114 (= res!1832458 (= (hash!2197 hashF!1220 key!3717) hash!366))))

(declare-fun b!4430115 () Bool)

(declare-fun res!1832457 () Bool)

(assert (=> b!4430115 (=> (not res!1832457) (not e!2758402))))

(declare-fun allKeysSameHash!744 (List!49787 (_ BitVec 64) Hashable!5178) Bool)

(assert (=> b!4430115 (= res!1832457 (allKeysSameHash!744 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4430116 () Bool)

(assert (=> b!4430116 (= e!2758400 (and (not lt!1629124) (= newBucket!194 (Cons!49663 (tuple2!49515 key!3717 newValue!93) Nil!49663))))))

(declare-fun b!4430117 () Bool)

(assert (=> b!4430117 (= e!2758397 (or (not (is-Cons!49664 (toList!3555 lm!1616))) (not (= (_1!28052 (h!55361 (toList!3555 lm!1616))) hash!366)) lt!1629124))))

(declare-fun b!4430118 () Bool)

(declare-fun tp!1333519 () Bool)

(assert (=> b!4430118 (= e!2758401 tp!1333519)))

(assert (= (and start!432518 res!1832464) b!4430111))

(assert (= (and b!4430111 res!1832459) b!4430114))

(assert (= (and b!4430114 res!1832458) b!4430115))

(assert (= (and b!4430115 res!1832457) b!4430106))

(assert (= (and b!4430106 res!1832460) b!4430108))

(assert (= (and b!4430108 res!1832463) b!4430109))

(assert (= (and b!4430108 (not res!1832461)) b!4430116))

(assert (= (and b!4430108 res!1832462) b!4430112))

(assert (= (and b!4430112 res!1832456) b!4430107))

(assert (= (and b!4430107 res!1832455) b!4430110))

(assert (= (and b!4430110 (not res!1832454)) b!4430117))

(assert (= (and start!432518 (is-Cons!49663 newBucket!194)) b!4430113))

(assert (= start!432518 b!4430118))

(declare-fun m!5114207 () Bool)

(assert (=> b!4430114 m!5114207))

(declare-fun m!5114209 () Bool)

(assert (=> b!4430112 m!5114209))

(declare-fun m!5114211 () Bool)

(assert (=> b!4430106 m!5114211))

(assert (=> b!4430106 m!5114211))

(declare-fun m!5114213 () Bool)

(assert (=> b!4430106 m!5114213))

(declare-fun m!5114215 () Bool)

(assert (=> b!4430110 m!5114215))

(assert (=> b!4430110 m!5114215))

(declare-fun m!5114217 () Bool)

(assert (=> b!4430110 m!5114217))

(declare-fun m!5114219 () Bool)

(assert (=> b!4430110 m!5114219))

(declare-fun m!5114221 () Bool)

(assert (=> start!432518 m!5114221))

(declare-fun m!5114223 () Bool)

(assert (=> start!432518 m!5114223))

(declare-fun m!5114225 () Bool)

(assert (=> b!4430115 m!5114225))

(declare-fun m!5114227 () Bool)

(assert (=> b!4430111 m!5114227))

(declare-fun m!5114229 () Bool)

(assert (=> b!4430108 m!5114229))

(assert (=> b!4430107 m!5114221))

(declare-fun m!5114231 () Bool)

(assert (=> b!4430109 m!5114231))

(push 1)

(assert (not b!4430118))

(assert (not b!4430108))

(assert (not b!4430113))

(assert (not b!4430114))

(assert (not b!4430111))

(assert (not b!4430107))

(assert (not start!432518))

(assert (not b!4430112))

(assert tp_is_empty!26383)

(assert (not b!4430106))

(assert tp_is_empty!26381)

(assert (not b!4430115))

(assert (not b!4430110))

(assert (not b!4430109))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1343329 () Bool)

(declare-fun e!2758429 () Bool)

(assert (=> d!1343329 e!2758429))

(declare-fun res!1832500 () Bool)

(assert (=> d!1343329 (=> res!1832500 e!2758429)))

(declare-fun lt!1629144 () Bool)

(assert (=> d!1343329 (= res!1832500 (not lt!1629144))))

(declare-fun lt!1629146 () Bool)

(assert (=> d!1343329 (= lt!1629144 lt!1629146)))

(declare-fun lt!1629145 () Unit!82629)

(declare-fun e!2758430 () Unit!82629)

(assert (=> d!1343329 (= lt!1629145 e!2758430)))

(declare-fun c!754004 () Bool)

(assert (=> d!1343329 (= c!754004 lt!1629146)))

(declare-fun containsKey!1159 (List!49788 (_ BitVec 64)) Bool)

(assert (=> d!1343329 (= lt!1629146 (containsKey!1159 (toList!3555 lm!1616) hash!366))))

(assert (=> d!1343329 (= (contains!12189 lm!1616 hash!366) lt!1629144)))

(declare-fun b!4430164 () Bool)

(declare-fun lt!1629147 () Unit!82629)

(assert (=> b!4430164 (= e!2758430 lt!1629147)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!642 (List!49788 (_ BitVec 64)) Unit!82629)

(assert (=> b!4430164 (= lt!1629147 (lemmaContainsKeyImpliesGetValueByKeyDefined!642 (toList!3555 lm!1616) hash!366))))

(declare-datatypes ((Option!10747 0))(
  ( (None!10746) (Some!10746 (v!43940 List!49787)) )
))
(declare-fun isDefined!8039 (Option!10747) Bool)

(declare-fun getValueByKey!733 (List!49788 (_ BitVec 64)) Option!10747)

(assert (=> b!4430164 (isDefined!8039 (getValueByKey!733 (toList!3555 lm!1616) hash!366))))

(declare-fun b!4430165 () Bool)

(declare-fun Unit!82633 () Unit!82629)

(assert (=> b!4430165 (= e!2758430 Unit!82633)))

(declare-fun b!4430166 () Bool)

(assert (=> b!4430166 (= e!2758429 (isDefined!8039 (getValueByKey!733 (toList!3555 lm!1616) hash!366)))))

(assert (= (and d!1343329 c!754004) b!4430164))

(assert (= (and d!1343329 (not c!754004)) b!4430165))

(assert (= (and d!1343329 (not res!1832500)) b!4430166))

(declare-fun m!5114259 () Bool)

(assert (=> d!1343329 m!5114259))

(declare-fun m!5114261 () Bool)

(assert (=> b!4430164 m!5114261))

(declare-fun m!5114263 () Bool)

(assert (=> b!4430164 m!5114263))

(assert (=> b!4430164 m!5114263))

(declare-fun m!5114265 () Bool)

(assert (=> b!4430164 m!5114265))

(assert (=> b!4430166 m!5114263))

(assert (=> b!4430166 m!5114263))

(assert (=> b!4430166 m!5114265))

(assert (=> b!4430108 d!1343329))

(declare-fun d!1343331 () Bool)

(declare-fun res!1832505 () Bool)

(declare-fun e!2758435 () Bool)

(assert (=> d!1343331 (=> res!1832505 e!2758435)))

(assert (=> d!1343331 (= res!1832505 (is-Nil!49664 (toList!3555 lm!1616)))))

(assert (=> d!1343331 (= (forall!9611 (toList!3555 lm!1616) lambda!155083) e!2758435)))

(declare-fun b!4430171 () Bool)

(declare-fun e!2758436 () Bool)

(assert (=> b!4430171 (= e!2758435 e!2758436)))

(declare-fun res!1832506 () Bool)

(assert (=> b!4430171 (=> (not res!1832506) (not e!2758436))))

(declare-fun dynLambda!20859 (Int tuple2!49516) Bool)

(assert (=> b!4430171 (= res!1832506 (dynLambda!20859 lambda!155083 (h!55361 (toList!3555 lm!1616))))))

(declare-fun b!4430172 () Bool)

(assert (=> b!4430172 (= e!2758436 (forall!9611 (t!356726 (toList!3555 lm!1616)) lambda!155083))))

(assert (= (and d!1343331 (not res!1832505)) b!4430171))

(assert (= (and b!4430171 res!1832506) b!4430172))

(declare-fun b_lambda!143555 () Bool)

(assert (=> (not b_lambda!143555) (not b!4430171)))

(declare-fun m!5114267 () Bool)

(assert (=> b!4430171 m!5114267))

(declare-fun m!5114269 () Bool)

(assert (=> b!4430172 m!5114269))

(assert (=> start!432518 d!1343331))

(declare-fun d!1343333 () Bool)

(declare-fun isStrictlySorted!243 (List!49788) Bool)

(assert (=> d!1343333 (= (inv!65220 lm!1616) (isStrictlySorted!243 (toList!3555 lm!1616)))))

(declare-fun bs!759712 () Bool)

(assert (= bs!759712 d!1343333))

(declare-fun m!5114271 () Bool)

(assert (=> bs!759712 m!5114271))

(assert (=> start!432518 d!1343333))

(declare-fun d!1343335 () Bool)

(declare-fun hash!2199 (Hashable!5178 K!11033) (_ BitVec 64))

(assert (=> d!1343335 (= (hash!2197 hashF!1220 key!3717) (hash!2199 hashF!1220 key!3717))))

(declare-fun bs!759713 () Bool)

(assert (= bs!759713 d!1343335))

(declare-fun m!5114273 () Bool)

(assert (=> bs!759713 m!5114273))

(assert (=> b!4430114 d!1343335))

(declare-fun d!1343337 () Bool)

(declare-fun get!16188 (Option!10747) List!49787)

(assert (=> d!1343337 (= (apply!11636 lm!1616 hash!366) (get!16188 (getValueByKey!733 (toList!3555 lm!1616) hash!366)))))

(declare-fun bs!759714 () Bool)

(assert (= bs!759714 d!1343337))

(assert (=> bs!759714 m!5114263))

(assert (=> bs!759714 m!5114263))

(declare-fun m!5114275 () Bool)

(assert (=> bs!759714 m!5114275))

(assert (=> b!4430109 d!1343337))

(declare-fun d!1343339 () Bool)

(assert (=> d!1343339 true))

(assert (=> d!1343339 true))

(declare-fun lambda!155095 () Int)

(declare-fun forall!9613 (List!49787 Int) Bool)

(assert (=> d!1343339 (= (allKeysSameHash!744 newBucket!194 hash!366 hashF!1220) (forall!9613 newBucket!194 lambda!155095))))

(declare-fun bs!759715 () Bool)

(assert (= bs!759715 d!1343339))

(declare-fun m!5114277 () Bool)

(assert (=> bs!759715 m!5114277))

(assert (=> b!4430115 d!1343339))

(declare-fun d!1343343 () Bool)

(declare-fun res!1832507 () Bool)

(declare-fun e!2758437 () Bool)

(assert (=> d!1343343 (=> res!1832507 e!2758437)))

(assert (=> d!1343343 (= res!1832507 (is-Nil!49664 (toList!3555 lt!1629126)))))

(assert (=> d!1343343 (= (forall!9611 (toList!3555 lt!1629126) lambda!155083) e!2758437)))

(declare-fun b!4430177 () Bool)

(declare-fun e!2758438 () Bool)

(assert (=> b!4430177 (= e!2758437 e!2758438)))

(declare-fun res!1832508 () Bool)

(assert (=> b!4430177 (=> (not res!1832508) (not e!2758438))))

(assert (=> b!4430177 (= res!1832508 (dynLambda!20859 lambda!155083 (h!55361 (toList!3555 lt!1629126))))))

(declare-fun b!4430178 () Bool)

(assert (=> b!4430178 (= e!2758438 (forall!9611 (t!356726 (toList!3555 lt!1629126)) lambda!155083))))

(assert (= (and d!1343343 (not res!1832507)) b!4430177))

(assert (= (and b!4430177 res!1832508) b!4430178))

(declare-fun b_lambda!143557 () Bool)

(assert (=> (not b_lambda!143557) (not b!4430177)))

(declare-fun m!5114279 () Bool)

(assert (=> b!4430177 m!5114279))

(declare-fun m!5114281 () Bool)

(assert (=> b!4430178 m!5114281))

(assert (=> b!4430110 d!1343343))

(declare-fun d!1343345 () Bool)

(declare-fun e!2758447 () Bool)

(assert (=> d!1343345 e!2758447))

(declare-fun res!1832520 () Bool)

(assert (=> d!1343345 (=> (not res!1832520) (not e!2758447))))

(declare-fun lt!1629159 () ListLongMap!2205)

(assert (=> d!1343345 (= res!1832520 (contains!12189 lt!1629159 (_1!28052 (tuple2!49517 hash!366 newBucket!194))))))

(declare-fun lt!1629156 () List!49788)

(assert (=> d!1343345 (= lt!1629159 (ListLongMap!2206 lt!1629156))))

(declare-fun lt!1629157 () Unit!82629)

(declare-fun lt!1629158 () Unit!82629)

(assert (=> d!1343345 (= lt!1629157 lt!1629158)))

(assert (=> d!1343345 (= (getValueByKey!733 lt!1629156 (_1!28052 (tuple2!49517 hash!366 newBucket!194))) (Some!10746 (_2!28052 (tuple2!49517 hash!366 newBucket!194))))))

(declare-fun lemmaContainsTupThenGetReturnValue!468 (List!49788 (_ BitVec 64) List!49787) Unit!82629)

(assert (=> d!1343345 (= lt!1629158 (lemmaContainsTupThenGetReturnValue!468 lt!1629156 (_1!28052 (tuple2!49517 hash!366 newBucket!194)) (_2!28052 (tuple2!49517 hash!366 newBucket!194))))))

(declare-fun insertStrictlySorted!271 (List!49788 (_ BitVec 64) List!49787) List!49788)

(assert (=> d!1343345 (= lt!1629156 (insertStrictlySorted!271 (toList!3555 lm!1616) (_1!28052 (tuple2!49517 hash!366 newBucket!194)) (_2!28052 (tuple2!49517 hash!366 newBucket!194))))))

(assert (=> d!1343345 (= (+!1138 lm!1616 (tuple2!49517 hash!366 newBucket!194)) lt!1629159)))

(declare-fun b!4430189 () Bool)

(declare-fun res!1832519 () Bool)

(assert (=> b!4430189 (=> (not res!1832519) (not e!2758447))))

(assert (=> b!4430189 (= res!1832519 (= (getValueByKey!733 (toList!3555 lt!1629159) (_1!28052 (tuple2!49517 hash!366 newBucket!194))) (Some!10746 (_2!28052 (tuple2!49517 hash!366 newBucket!194)))))))

(declare-fun b!4430190 () Bool)

(declare-fun contains!12192 (List!49788 tuple2!49516) Bool)

(assert (=> b!4430190 (= e!2758447 (contains!12192 (toList!3555 lt!1629159) (tuple2!49517 hash!366 newBucket!194)))))

(assert (= (and d!1343345 res!1832520) b!4430189))

(assert (= (and b!4430189 res!1832519) b!4430190))

(declare-fun m!5114287 () Bool)

(assert (=> d!1343345 m!5114287))

(declare-fun m!5114289 () Bool)

(assert (=> d!1343345 m!5114289))

(declare-fun m!5114291 () Bool)

(assert (=> d!1343345 m!5114291))

(declare-fun m!5114293 () Bool)

(assert (=> d!1343345 m!5114293))

(declare-fun m!5114295 () Bool)

(assert (=> b!4430189 m!5114295))

(declare-fun m!5114297 () Bool)

(assert (=> b!4430190 m!5114297))

(assert (=> b!4430110 d!1343345))

(declare-fun d!1343349 () Bool)

(assert (=> d!1343349 (forall!9611 (toList!3555 (+!1138 lm!1616 (tuple2!49517 hash!366 newBucket!194))) lambda!155083)))

(declare-fun lt!1629162 () Unit!82629)

(declare-fun choose!28030 (ListLongMap!2205 Int (_ BitVec 64) List!49787) Unit!82629)

(assert (=> d!1343349 (= lt!1629162 (choose!28030 lm!1616 lambda!155083 hash!366 newBucket!194))))

(declare-fun e!2758450 () Bool)

(assert (=> d!1343349 e!2758450))

(declare-fun res!1832523 () Bool)

(assert (=> d!1343349 (=> (not res!1832523) (not e!2758450))))

(assert (=> d!1343349 (= res!1832523 (forall!9611 (toList!3555 lm!1616) lambda!155083))))

(assert (=> d!1343349 (= (addValidProp!426 lm!1616 lambda!155083 hash!366 newBucket!194) lt!1629162)))

(declare-fun b!4430194 () Bool)

(assert (=> b!4430194 (= e!2758450 (dynLambda!20859 lambda!155083 (tuple2!49517 hash!366 newBucket!194)))))

(assert (= (and d!1343349 res!1832523) b!4430194))

(declare-fun b_lambda!143561 () Bool)

(assert (=> (not b_lambda!143561) (not b!4430194)))

(assert (=> d!1343349 m!5114217))

(declare-fun m!5114299 () Bool)

(assert (=> d!1343349 m!5114299))

(declare-fun m!5114301 () Bool)

(assert (=> d!1343349 m!5114301))

(assert (=> d!1343349 m!5114221))

(declare-fun m!5114303 () Bool)

(assert (=> b!4430194 m!5114303))

(assert (=> b!4430110 d!1343349))

(declare-fun bs!759716 () Bool)

(declare-fun d!1343351 () Bool)

(assert (= bs!759716 (and d!1343351 start!432518)))

(declare-fun lambda!155098 () Int)

(assert (=> bs!759716 (not (= lambda!155098 lambda!155083))))

(assert (=> d!1343351 true))

(assert (=> d!1343351 (= (allKeysSameHashInMap!890 lm!1616 hashF!1220) (forall!9611 (toList!3555 lm!1616) lambda!155098))))

(declare-fun bs!759717 () Bool)

(assert (= bs!759717 d!1343351))

(declare-fun m!5114305 () Bool)

(assert (=> bs!759717 m!5114305))

(assert (=> b!4430111 d!1343351))

(declare-fun d!1343353 () Bool)

(declare-fun e!2758467 () Bool)

(assert (=> d!1343353 e!2758467))

(declare-fun res!1832538 () Bool)

(assert (=> d!1343353 (=> res!1832538 e!2758467)))

(declare-fun e!2758471 () Bool)

(assert (=> d!1343353 (= res!1832538 e!2758471)))

(declare-fun res!1832536 () Bool)

(assert (=> d!1343353 (=> (not res!1832536) (not e!2758471))))

(declare-fun lt!1629193 () Bool)

(assert (=> d!1343353 (= res!1832536 (not lt!1629193))))

(declare-fun lt!1629196 () Bool)

(assert (=> d!1343353 (= lt!1629193 lt!1629196)))

(declare-fun lt!1629192 () Unit!82629)

(declare-fun e!2758469 () Unit!82629)

(assert (=> d!1343353 (= lt!1629192 e!2758469)))

(declare-fun c!754012 () Bool)

(assert (=> d!1343353 (= c!754012 lt!1629196)))

(declare-fun containsKey!1160 (List!49787 K!11033) Bool)

(assert (=> d!1343353 (= lt!1629196 (containsKey!1160 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717))))

(assert (=> d!1343353 (= (contains!12188 (extractMap!845 (toList!3555 lm!1616)) key!3717) lt!1629193)))

(declare-fun b!4430221 () Bool)

(declare-datatypes ((List!49791 0))(
  ( (Nil!49667) (Cons!49667 (h!55365 K!11033) (t!356729 List!49791)) )
))
(declare-fun e!2758468 () List!49791)

(declare-fun getKeysList!263 (List!49787) List!49791)

(assert (=> b!4430221 (= e!2758468 (getKeysList!263 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))))))

(declare-fun bm!308242 () Bool)

(declare-fun call!308247 () Bool)

(declare-fun contains!12193 (List!49791 K!11033) Bool)

(assert (=> bm!308242 (= call!308247 (contains!12193 e!2758468 key!3717))))

(declare-fun c!754011 () Bool)

(assert (=> bm!308242 (= c!754011 c!754012)))

(declare-fun b!4430222 () Bool)

(declare-fun lt!1629197 () Unit!82629)

(assert (=> b!4430222 (= e!2758469 lt!1629197)))

(declare-fun lt!1629194 () Unit!82629)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!643 (List!49787 K!11033) Unit!82629)

(assert (=> b!4430222 (= lt!1629194 (lemmaContainsKeyImpliesGetValueByKeyDefined!643 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717))))

(declare-datatypes ((Option!10748 0))(
  ( (None!10747) (Some!10747 (v!43941 V!11279)) )
))
(declare-fun isDefined!8040 (Option!10748) Bool)

(declare-fun getValueByKey!734 (List!49787 K!11033) Option!10748)

(assert (=> b!4430222 (isDefined!8040 (getValueByKey!734 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717))))

(declare-fun lt!1629195 () Unit!82629)

(assert (=> b!4430222 (= lt!1629195 lt!1629194)))

(declare-fun lemmaInListThenGetKeysListContains!260 (List!49787 K!11033) Unit!82629)

(assert (=> b!4430222 (= lt!1629197 (lemmaInListThenGetKeysListContains!260 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717))))

(assert (=> b!4430222 call!308247))

(declare-fun b!4430223 () Bool)

(declare-fun keys!16975 (ListMap!2799) List!49791)

(assert (=> b!4430223 (= e!2758468 (keys!16975 (extractMap!845 (toList!3555 lm!1616))))))

(declare-fun b!4430224 () Bool)

(declare-fun e!2758466 () Unit!82629)

(declare-fun Unit!82634 () Unit!82629)

(assert (=> b!4430224 (= e!2758466 Unit!82634)))

(declare-fun b!4430225 () Bool)

(assert (=> b!4430225 (= e!2758469 e!2758466)))

(declare-fun c!754013 () Bool)

(assert (=> b!4430225 (= c!754013 call!308247)))

(declare-fun b!4430226 () Bool)

(assert (=> b!4430226 (= e!2758471 (not (contains!12193 (keys!16975 (extractMap!845 (toList!3555 lm!1616))) key!3717)))))

(declare-fun b!4430227 () Bool)

(assert (=> b!4430227 false))

(declare-fun lt!1629198 () Unit!82629)

(declare-fun lt!1629191 () Unit!82629)

(assert (=> b!4430227 (= lt!1629198 lt!1629191)))

(assert (=> b!4430227 (containsKey!1160 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!261 (List!49787 K!11033) Unit!82629)

(assert (=> b!4430227 (= lt!1629191 (lemmaInGetKeysListThenContainsKey!261 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717))))

(declare-fun Unit!82635 () Unit!82629)

(assert (=> b!4430227 (= e!2758466 Unit!82635)))

(declare-fun b!4430228 () Bool)

(declare-fun e!2758470 () Bool)

(assert (=> b!4430228 (= e!2758467 e!2758470)))

(declare-fun res!1832537 () Bool)

(assert (=> b!4430228 (=> (not res!1832537) (not e!2758470))))

(assert (=> b!4430228 (= res!1832537 (isDefined!8040 (getValueByKey!734 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717)))))

(declare-fun b!4430229 () Bool)

(assert (=> b!4430229 (= e!2758470 (contains!12193 (keys!16975 (extractMap!845 (toList!3555 lm!1616))) key!3717))))

(assert (= (and d!1343353 c!754012) b!4430222))

(assert (= (and d!1343353 (not c!754012)) b!4430225))

(assert (= (and b!4430225 c!754013) b!4430227))

(assert (= (and b!4430225 (not c!754013)) b!4430224))

(assert (= (or b!4430222 b!4430225) bm!308242))

(assert (= (and bm!308242 c!754011) b!4430221))

(assert (= (and bm!308242 (not c!754011)) b!4430223))

(assert (= (and d!1343353 res!1832536) b!4430226))

(assert (= (and d!1343353 (not res!1832538)) b!4430228))

(assert (= (and b!4430228 res!1832537) b!4430229))

(assert (=> b!4430226 m!5114211))

(declare-fun m!5114319 () Bool)

(assert (=> b!4430226 m!5114319))

(assert (=> b!4430226 m!5114319))

(declare-fun m!5114321 () Bool)

(assert (=> b!4430226 m!5114321))

(declare-fun m!5114323 () Bool)

(assert (=> b!4430227 m!5114323))

(declare-fun m!5114325 () Bool)

(assert (=> b!4430227 m!5114325))

(assert (=> b!4430223 m!5114211))

(assert (=> b!4430223 m!5114319))

(declare-fun m!5114327 () Bool)

(assert (=> b!4430221 m!5114327))

(assert (=> d!1343353 m!5114323))

(declare-fun m!5114329 () Bool)

(assert (=> b!4430228 m!5114329))

(assert (=> b!4430228 m!5114329))

(declare-fun m!5114331 () Bool)

(assert (=> b!4430228 m!5114331))

(assert (=> b!4430229 m!5114211))

(assert (=> b!4430229 m!5114319))

(assert (=> b!4430229 m!5114319))

(assert (=> b!4430229 m!5114321))

(declare-fun m!5114333 () Bool)

(assert (=> bm!308242 m!5114333))

(declare-fun m!5114335 () Bool)

(assert (=> b!4430222 m!5114335))

(assert (=> b!4430222 m!5114329))

(assert (=> b!4430222 m!5114329))

(assert (=> b!4430222 m!5114331))

(declare-fun m!5114337 () Bool)

(assert (=> b!4430222 m!5114337))

(assert (=> b!4430106 d!1343353))

(declare-fun bs!759718 () Bool)

(declare-fun d!1343357 () Bool)

(assert (= bs!759718 (and d!1343357 start!432518)))

(declare-fun lambda!155101 () Int)

(assert (=> bs!759718 (= lambda!155101 lambda!155083)))

(declare-fun bs!759719 () Bool)

(assert (= bs!759719 (and d!1343357 d!1343351)))

(assert (=> bs!759719 (not (= lambda!155101 lambda!155098))))

(declare-fun lt!1629204 () ListMap!2799)

(declare-fun invariantList!816 (List!49787) Bool)

(assert (=> d!1343357 (invariantList!816 (toList!3556 lt!1629204))))

(declare-fun e!2758477 () ListMap!2799)

(assert (=> d!1343357 (= lt!1629204 e!2758477)))

(declare-fun c!754016 () Bool)

(assert (=> d!1343357 (= c!754016 (is-Cons!49664 (toList!3555 lm!1616)))))

(assert (=> d!1343357 (forall!9611 (toList!3555 lm!1616) lambda!155101)))

(assert (=> d!1343357 (= (extractMap!845 (toList!3555 lm!1616)) lt!1629204)))

(declare-fun b!4430238 () Bool)

(declare-fun addToMapMapFromBucket!409 (List!49787 ListMap!2799) ListMap!2799)

(assert (=> b!4430238 (= e!2758477 (addToMapMapFromBucket!409 (_2!28052 (h!55361 (toList!3555 lm!1616))) (extractMap!845 (t!356726 (toList!3555 lm!1616)))))))

(declare-fun b!4430239 () Bool)

(assert (=> b!4430239 (= e!2758477 (ListMap!2800 Nil!49663))))

(assert (= (and d!1343357 c!754016) b!4430238))

(assert (= (and d!1343357 (not c!754016)) b!4430239))

(declare-fun m!5114345 () Bool)

(assert (=> d!1343357 m!5114345))

(declare-fun m!5114347 () Bool)

(assert (=> d!1343357 m!5114347))

(declare-fun m!5114349 () Bool)

(assert (=> b!4430238 m!5114349))

(assert (=> b!4430238 m!5114349))

(declare-fun m!5114351 () Bool)

(assert (=> b!4430238 m!5114351))

(assert (=> b!4430106 d!1343357))

(declare-fun d!1343361 () Bool)

(declare-fun res!1832546 () Bool)

(declare-fun e!2758482 () Bool)

(assert (=> d!1343361 (=> res!1832546 e!2758482)))

(assert (=> d!1343361 (= res!1832546 (not (is-Cons!49663 newBucket!194)))))

(assert (=> d!1343361 (= (noDuplicateKeys!784 newBucket!194) e!2758482)))

(declare-fun b!4430244 () Bool)

(declare-fun e!2758483 () Bool)

(assert (=> b!4430244 (= e!2758482 e!2758483)))

(declare-fun res!1832547 () Bool)

(assert (=> b!4430244 (=> (not res!1832547) (not e!2758483))))

(declare-fun containsKey!1161 (List!49787 K!11033) Bool)

(assert (=> b!4430244 (= res!1832547 (not (containsKey!1161 (t!356725 newBucket!194) (_1!28051 (h!55360 newBucket!194)))))))

(declare-fun b!4430245 () Bool)

(assert (=> b!4430245 (= e!2758483 (noDuplicateKeys!784 (t!356725 newBucket!194)))))

(assert (= (and d!1343361 (not res!1832546)) b!4430244))

(assert (= (and b!4430244 res!1832547) b!4430245))

(declare-fun m!5114353 () Bool)

(assert (=> b!4430244 m!5114353))

(declare-fun m!5114355 () Bool)

(assert (=> b!4430245 m!5114355))

(assert (=> b!4430112 d!1343361))

(assert (=> b!4430107 d!1343331))

(declare-fun b!4430250 () Bool)

(declare-fun e!2758486 () Bool)

(declare-fun tp!1333531 () Bool)

(declare-fun tp!1333532 () Bool)

(assert (=> b!4430250 (= e!2758486 (and tp!1333531 tp!1333532))))

(assert (=> b!4430118 (= tp!1333519 e!2758486)))

(assert (= (and b!4430118 (is-Cons!49664 (toList!3555 lm!1616))) b!4430250))

(declare-fun tp!1333535 () Bool)

(declare-fun b!4430255 () Bool)

(declare-fun e!2758489 () Bool)

(assert (=> b!4430255 (= e!2758489 (and tp_is_empty!26383 tp_is_empty!26381 tp!1333535))))

(assert (=> b!4430113 (= tp!1333520 e!2758489)))

(assert (= (and b!4430113 (is-Cons!49663 (t!356725 newBucket!194))) b!4430255))

(declare-fun b_lambda!143565 () Bool)

(assert (= b_lambda!143555 (or start!432518 b_lambda!143565)))

(declare-fun bs!759720 () Bool)

(declare-fun d!1343363 () Bool)

(assert (= bs!759720 (and d!1343363 start!432518)))

(assert (=> bs!759720 (= (dynLambda!20859 lambda!155083 (h!55361 (toList!3555 lm!1616))) (noDuplicateKeys!784 (_2!28052 (h!55361 (toList!3555 lm!1616)))))))

(declare-fun m!5114357 () Bool)

(assert (=> bs!759720 m!5114357))

(assert (=> b!4430171 d!1343363))

(declare-fun b_lambda!143567 () Bool)

(assert (= b_lambda!143557 (or start!432518 b_lambda!143567)))

(declare-fun bs!759721 () Bool)

(declare-fun d!1343365 () Bool)

(assert (= bs!759721 (and d!1343365 start!432518)))

(assert (=> bs!759721 (= (dynLambda!20859 lambda!155083 (h!55361 (toList!3555 lt!1629126))) (noDuplicateKeys!784 (_2!28052 (h!55361 (toList!3555 lt!1629126)))))))

(declare-fun m!5114359 () Bool)

(assert (=> bs!759721 m!5114359))

(assert (=> b!4430177 d!1343365))

(declare-fun b_lambda!143569 () Bool)

(assert (= b_lambda!143561 (or start!432518 b_lambda!143569)))

(declare-fun bs!759722 () Bool)

(declare-fun d!1343367 () Bool)

(assert (= bs!759722 (and d!1343367 start!432518)))

(assert (=> bs!759722 (= (dynLambda!20859 lambda!155083 (tuple2!49517 hash!366 newBucket!194)) (noDuplicateKeys!784 (_2!28052 (tuple2!49517 hash!366 newBucket!194))))))

(declare-fun m!5114361 () Bool)

(assert (=> bs!759722 m!5114361))

(assert (=> b!4430194 d!1343367))

(push 1)

(assert (not b!4430164))

(assert (not b!4430172))

(assert (not bs!759722))

(assert (not b!4430255))

(assert (not b!4430190))

(assert (not b_lambda!143567))

(assert (not d!1343329))

(assert (not bs!759720))

(assert (not b_lambda!143565))

(assert (not b!4430228))

(assert (not b!4430178))

(assert tp_is_empty!26381)

(assert (not b_lambda!143569))

(assert (not b!4430245))

(assert (not b!4430229))

(assert (not bm!308242))

(assert (not d!1343335))

(assert (not d!1343345))

(assert (not d!1343349))

(assert (not d!1343351))

(assert (not bs!759721))

(assert (not d!1343337))

(assert (not b!4430226))

(assert (not d!1343357))

(assert (not b!4430227))

(assert (not b!4430244))

(assert (not b!4430189))

(assert (not d!1343333))

(assert (not b!4430238))

(assert (not b!4430250))

(assert (not b!4430223))

(assert (not b!4430221))

(assert tp_is_empty!26383)

(assert (not d!1343339))

(assert (not b!4430222))

(assert (not b!4430166))

(assert (not d!1343353))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1343393 () Bool)

(declare-fun res!1832572 () Bool)

(declare-fun e!2758535 () Bool)

(assert (=> d!1343393 (=> res!1832572 e!2758535)))

(assert (=> d!1343393 (= res!1832572 (and (is-Cons!49664 (toList!3555 lm!1616)) (= (_1!28052 (h!55361 (toList!3555 lm!1616))) hash!366)))))

(assert (=> d!1343393 (= (containsKey!1159 (toList!3555 lm!1616) hash!366) e!2758535)))

(declare-fun b!4430326 () Bool)

(declare-fun e!2758536 () Bool)

(assert (=> b!4430326 (= e!2758535 e!2758536)))

(declare-fun res!1832573 () Bool)

(assert (=> b!4430326 (=> (not res!1832573) (not e!2758536))))

(assert (=> b!4430326 (= res!1832573 (and (or (not (is-Cons!49664 (toList!3555 lm!1616))) (bvsle (_1!28052 (h!55361 (toList!3555 lm!1616))) hash!366)) (is-Cons!49664 (toList!3555 lm!1616)) (bvslt (_1!28052 (h!55361 (toList!3555 lm!1616))) hash!366)))))

(declare-fun b!4430327 () Bool)

(assert (=> b!4430327 (= e!2758536 (containsKey!1159 (t!356726 (toList!3555 lm!1616)) hash!366))))

(assert (= (and d!1343393 (not res!1832572)) b!4430326))

(assert (= (and b!4430326 res!1832573) b!4430327))

(declare-fun m!5114423 () Bool)

(assert (=> b!4430327 m!5114423))

(assert (=> d!1343329 d!1343393))

(declare-fun b!4430335 () Bool)

(assert (=> b!4430335 true))

(declare-fun d!1343395 () Bool)

(declare-fun e!2758539 () Bool)

(assert (=> d!1343395 e!2758539))

(declare-fun res!1832582 () Bool)

(assert (=> d!1343395 (=> (not res!1832582) (not e!2758539))))

(declare-fun lt!1629246 () List!49791)

(declare-fun noDuplicate!661 (List!49791) Bool)

(assert (=> d!1343395 (= res!1832582 (noDuplicate!661 lt!1629246))))

(assert (=> d!1343395 (= lt!1629246 (getKeysList!263 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))))))

(assert (=> d!1343395 (= (keys!16975 (extractMap!845 (toList!3555 lm!1616))) lt!1629246)))

(declare-fun b!4430334 () Bool)

(declare-fun res!1832580 () Bool)

(assert (=> b!4430334 (=> (not res!1832580) (not e!2758539))))

(declare-fun length!178 (List!49791) Int)

(declare-fun length!179 (List!49787) Int)

(assert (=> b!4430334 (= res!1832580 (= (length!178 lt!1629246) (length!179 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))))))

(declare-fun res!1832581 () Bool)

(assert (=> b!4430335 (=> (not res!1832581) (not e!2758539))))

(declare-fun lambda!155115 () Int)

(declare-fun forall!9615 (List!49791 Int) Bool)

(assert (=> b!4430335 (= res!1832581 (forall!9615 lt!1629246 lambda!155115))))

(declare-fun lambda!155116 () Int)

(declare-fun b!4430336 () Bool)

(declare-fun content!7973 (List!49791) (Set K!11033))

(declare-fun map!10851 (List!49787 Int) List!49791)

(assert (=> b!4430336 (= e!2758539 (= (content!7973 lt!1629246) (content!7973 (map!10851 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) lambda!155116))))))

(assert (= (and d!1343395 res!1832582) b!4430334))

(assert (= (and b!4430334 res!1832580) b!4430335))

(assert (= (and b!4430335 res!1832581) b!4430336))

(declare-fun m!5114425 () Bool)

(assert (=> d!1343395 m!5114425))

(assert (=> d!1343395 m!5114327))

(declare-fun m!5114427 () Bool)

(assert (=> b!4430334 m!5114427))

(declare-fun m!5114429 () Bool)

(assert (=> b!4430334 m!5114429))

(declare-fun m!5114431 () Bool)

(assert (=> b!4430335 m!5114431))

(declare-fun m!5114433 () Bool)

(assert (=> b!4430336 m!5114433))

(declare-fun m!5114435 () Bool)

(assert (=> b!4430336 m!5114435))

(assert (=> b!4430336 m!5114435))

(declare-fun m!5114437 () Bool)

(assert (=> b!4430336 m!5114437))

(assert (=> b!4430223 d!1343395))

(declare-fun d!1343397 () Bool)

(assert (=> d!1343397 (isDefined!8040 (getValueByKey!734 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717))))

(declare-fun lt!1629249 () Unit!82629)

(declare-fun choose!28032 (List!49787 K!11033) Unit!82629)

(assert (=> d!1343397 (= lt!1629249 (choose!28032 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717))))

(assert (=> d!1343397 (invariantList!816 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))))

(assert (=> d!1343397 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!643 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717) lt!1629249)))

(declare-fun bs!759734 () Bool)

(assert (= bs!759734 d!1343397))

(assert (=> bs!759734 m!5114329))

(assert (=> bs!759734 m!5114329))

(assert (=> bs!759734 m!5114331))

(declare-fun m!5114439 () Bool)

(assert (=> bs!759734 m!5114439))

(declare-fun m!5114441 () Bool)

(assert (=> bs!759734 m!5114441))

(assert (=> b!4430222 d!1343397))

(declare-fun d!1343399 () Bool)

(declare-fun isEmpty!28356 (Option!10748) Bool)

(assert (=> d!1343399 (= (isDefined!8040 (getValueByKey!734 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717)) (not (isEmpty!28356 (getValueByKey!734 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717))))))

(declare-fun bs!759735 () Bool)

(assert (= bs!759735 d!1343399))

(assert (=> bs!759735 m!5114329))

(declare-fun m!5114443 () Bool)

(assert (=> bs!759735 m!5114443))

(assert (=> b!4430222 d!1343399))

(declare-fun b!4430349 () Bool)

(declare-fun e!2758545 () Option!10748)

(assert (=> b!4430349 (= e!2758545 (getValueByKey!734 (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) key!3717))))

(declare-fun b!4430348 () Bool)

(declare-fun e!2758544 () Option!10748)

(assert (=> b!4430348 (= e!2758544 e!2758545)))

(declare-fun c!754037 () Bool)

(assert (=> b!4430348 (= c!754037 (and (is-Cons!49663 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) (not (= (_1!28051 (h!55360 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))) key!3717))))))

(declare-fun d!1343401 () Bool)

(declare-fun c!754036 () Bool)

(assert (=> d!1343401 (= c!754036 (and (is-Cons!49663 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) (= (_1!28051 (h!55360 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))) key!3717)))))

(assert (=> d!1343401 (= (getValueByKey!734 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717) e!2758544)))

(declare-fun b!4430350 () Bool)

(assert (=> b!4430350 (= e!2758545 None!10747)))

(declare-fun b!4430347 () Bool)

(assert (=> b!4430347 (= e!2758544 (Some!10747 (_2!28051 (h!55360 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))))))))

(assert (= (and d!1343401 c!754036) b!4430347))

(assert (= (and d!1343401 (not c!754036)) b!4430348))

(assert (= (and b!4430348 c!754037) b!4430349))

(assert (= (and b!4430348 (not c!754037)) b!4430350))

(declare-fun m!5114445 () Bool)

(assert (=> b!4430349 m!5114445))

(assert (=> b!4430222 d!1343401))

(declare-fun d!1343403 () Bool)

(assert (=> d!1343403 (contains!12193 (getKeysList!263 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) key!3717)))

(declare-fun lt!1629252 () Unit!82629)

(declare-fun choose!28033 (List!49787 K!11033) Unit!82629)

(assert (=> d!1343403 (= lt!1629252 (choose!28033 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717))))

(assert (=> d!1343403 (invariantList!816 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))))

(assert (=> d!1343403 (= (lemmaInListThenGetKeysListContains!260 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717) lt!1629252)))

(declare-fun bs!759736 () Bool)

(assert (= bs!759736 d!1343403))

(assert (=> bs!759736 m!5114327))

(assert (=> bs!759736 m!5114327))

(declare-fun m!5114447 () Bool)

(assert (=> bs!759736 m!5114447))

(declare-fun m!5114449 () Bool)

(assert (=> bs!759736 m!5114449))

(assert (=> bs!759736 m!5114441))

(assert (=> b!4430222 d!1343403))

(declare-fun d!1343405 () Bool)

(declare-fun res!1832583 () Bool)

(declare-fun e!2758546 () Bool)

(assert (=> d!1343405 (=> res!1832583 e!2758546)))

(assert (=> d!1343405 (= res!1832583 (not (is-Cons!49663 (_2!28052 (tuple2!49517 hash!366 newBucket!194)))))))

(assert (=> d!1343405 (= (noDuplicateKeys!784 (_2!28052 (tuple2!49517 hash!366 newBucket!194))) e!2758546)))

(declare-fun b!4430351 () Bool)

(declare-fun e!2758547 () Bool)

(assert (=> b!4430351 (= e!2758546 e!2758547)))

(declare-fun res!1832584 () Bool)

(assert (=> b!4430351 (=> (not res!1832584) (not e!2758547))))

(assert (=> b!4430351 (= res!1832584 (not (containsKey!1161 (t!356725 (_2!28052 (tuple2!49517 hash!366 newBucket!194))) (_1!28051 (h!55360 (_2!28052 (tuple2!49517 hash!366 newBucket!194)))))))))

(declare-fun b!4430352 () Bool)

(assert (=> b!4430352 (= e!2758547 (noDuplicateKeys!784 (t!356725 (_2!28052 (tuple2!49517 hash!366 newBucket!194)))))))

(assert (= (and d!1343405 (not res!1832583)) b!4430351))

(assert (= (and b!4430351 res!1832584) b!4430352))

(declare-fun m!5114451 () Bool)

(assert (=> b!4430351 m!5114451))

(declare-fun m!5114453 () Bool)

(assert (=> b!4430352 m!5114453))

(assert (=> bs!759722 d!1343405))

(declare-fun d!1343407 () Bool)

(declare-fun lt!1629255 () Bool)

(assert (=> d!1343407 (= lt!1629255 (set.member key!3717 (content!7973 e!2758468)))))

(declare-fun e!2758553 () Bool)

(assert (=> d!1343407 (= lt!1629255 e!2758553)))

(declare-fun res!1832590 () Bool)

(assert (=> d!1343407 (=> (not res!1832590) (not e!2758553))))

(assert (=> d!1343407 (= res!1832590 (is-Cons!49667 e!2758468))))

(assert (=> d!1343407 (= (contains!12193 e!2758468 key!3717) lt!1629255)))

(declare-fun b!4430357 () Bool)

(declare-fun e!2758552 () Bool)

(assert (=> b!4430357 (= e!2758553 e!2758552)))

(declare-fun res!1832589 () Bool)

(assert (=> b!4430357 (=> res!1832589 e!2758552)))

(assert (=> b!4430357 (= res!1832589 (= (h!55365 e!2758468) key!3717))))

(declare-fun b!4430358 () Bool)

(assert (=> b!4430358 (= e!2758552 (contains!12193 (t!356729 e!2758468) key!3717))))

(assert (= (and d!1343407 res!1832590) b!4430357))

(assert (= (and b!4430357 (not res!1832589)) b!4430358))

(declare-fun m!5114455 () Bool)

(assert (=> d!1343407 m!5114455))

(declare-fun m!5114457 () Bool)

(assert (=> d!1343407 m!5114457))

(declare-fun m!5114459 () Bool)

(assert (=> b!4430358 m!5114459))

(assert (=> bm!308242 d!1343407))

(declare-fun d!1343409 () Bool)

(declare-fun res!1832595 () Bool)

(declare-fun e!2758558 () Bool)

(assert (=> d!1343409 (=> res!1832595 e!2758558)))

(assert (=> d!1343409 (= res!1832595 (is-Nil!49663 newBucket!194))))

(assert (=> d!1343409 (= (forall!9613 newBucket!194 lambda!155095) e!2758558)))

(declare-fun b!4430363 () Bool)

(declare-fun e!2758559 () Bool)

(assert (=> b!4430363 (= e!2758558 e!2758559)))

(declare-fun res!1832596 () Bool)

(assert (=> b!4430363 (=> (not res!1832596) (not e!2758559))))

(declare-fun dynLambda!20861 (Int tuple2!49514) Bool)

(assert (=> b!4430363 (= res!1832596 (dynLambda!20861 lambda!155095 (h!55360 newBucket!194)))))

(declare-fun b!4430364 () Bool)

(assert (=> b!4430364 (= e!2758559 (forall!9613 (t!356725 newBucket!194) lambda!155095))))

(assert (= (and d!1343409 (not res!1832595)) b!4430363))

(assert (= (and b!4430363 res!1832596) b!4430364))

(declare-fun b_lambda!143579 () Bool)

(assert (=> (not b_lambda!143579) (not b!4430363)))

(declare-fun m!5114461 () Bool)

(assert (=> b!4430363 m!5114461))

(declare-fun m!5114463 () Bool)

(assert (=> b!4430364 m!5114463))

(assert (=> d!1343339 d!1343409))

(declare-fun d!1343411 () Bool)

(declare-fun res!1832597 () Bool)

(declare-fun e!2758560 () Bool)

(assert (=> d!1343411 (=> res!1832597 e!2758560)))

(assert (=> d!1343411 (= res!1832597 (is-Nil!49664 (toList!3555 (+!1138 lm!1616 (tuple2!49517 hash!366 newBucket!194)))))))

(assert (=> d!1343411 (= (forall!9611 (toList!3555 (+!1138 lm!1616 (tuple2!49517 hash!366 newBucket!194))) lambda!155083) e!2758560)))

(declare-fun b!4430365 () Bool)

(declare-fun e!2758561 () Bool)

(assert (=> b!4430365 (= e!2758560 e!2758561)))

(declare-fun res!1832598 () Bool)

(assert (=> b!4430365 (=> (not res!1832598) (not e!2758561))))

(assert (=> b!4430365 (= res!1832598 (dynLambda!20859 lambda!155083 (h!55361 (toList!3555 (+!1138 lm!1616 (tuple2!49517 hash!366 newBucket!194))))))))

(declare-fun b!4430366 () Bool)

(assert (=> b!4430366 (= e!2758561 (forall!9611 (t!356726 (toList!3555 (+!1138 lm!1616 (tuple2!49517 hash!366 newBucket!194)))) lambda!155083))))

(assert (= (and d!1343411 (not res!1832597)) b!4430365))

(assert (= (and b!4430365 res!1832598) b!4430366))

(declare-fun b_lambda!143581 () Bool)

(assert (=> (not b_lambda!143581) (not b!4430365)))

(declare-fun m!5114465 () Bool)

(assert (=> b!4430365 m!5114465))

(declare-fun m!5114467 () Bool)

(assert (=> b!4430366 m!5114467))

(assert (=> d!1343349 d!1343411))

(assert (=> d!1343349 d!1343345))

(declare-fun d!1343413 () Bool)

(assert (=> d!1343413 (forall!9611 (toList!3555 (+!1138 lm!1616 (tuple2!49517 hash!366 newBucket!194))) lambda!155083)))

(assert (=> d!1343413 true))

(declare-fun _$31!397 () Unit!82629)

(assert (=> d!1343413 (= (choose!28030 lm!1616 lambda!155083 hash!366 newBucket!194) _$31!397)))

(declare-fun bs!759737 () Bool)

(assert (= bs!759737 d!1343413))

(assert (=> bs!759737 m!5114217))

(assert (=> bs!759737 m!5114299))

(assert (=> d!1343349 d!1343413))

(assert (=> d!1343349 d!1343331))

(declare-fun bs!759738 () Bool)

(declare-fun b!4430391 () Bool)

(assert (= bs!759738 (and b!4430391 b!4430335)))

(declare-fun lambda!155125 () Int)

(assert (=> bs!759738 (= (= (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) (= lambda!155125 lambda!155115))))

(assert (=> b!4430391 true))

(declare-fun bs!759739 () Bool)

(declare-fun b!4430392 () Bool)

(assert (= bs!759739 (and b!4430392 b!4430335)))

(declare-fun lambda!155126 () Int)

(assert (=> bs!759739 (= (= (Cons!49663 (h!55360 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))) (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) (= lambda!155126 lambda!155115))))

(declare-fun bs!759740 () Bool)

(assert (= bs!759740 (and b!4430392 b!4430391)))

(assert (=> bs!759740 (= (= (Cons!49663 (h!55360 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))) (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))) (= lambda!155126 lambda!155125))))

(assert (=> b!4430392 true))

(declare-fun bs!759741 () Bool)

(declare-fun b!4430387 () Bool)

(assert (= bs!759741 (and b!4430387 b!4430335)))

(declare-fun lambda!155127 () Int)

(assert (=> bs!759741 (= lambda!155127 lambda!155115)))

(declare-fun bs!759742 () Bool)

(assert (= bs!759742 (and b!4430387 b!4430391)))

(assert (=> bs!759742 (= (= (toList!3556 (extractMap!845 (toList!3555 lm!1616))) (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))) (= lambda!155127 lambda!155125))))

(declare-fun bs!759743 () Bool)

(assert (= bs!759743 (and b!4430387 b!4430392)))

(assert (=> bs!759743 (= (= (toList!3556 (extractMap!845 (toList!3555 lm!1616))) (Cons!49663 (h!55360 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))))) (= lambda!155127 lambda!155126))))

(assert (=> b!4430387 true))

(declare-fun bs!759744 () Bool)

(declare-fun b!4430388 () Bool)

(assert (= bs!759744 (and b!4430388 b!4430336)))

(declare-fun lambda!155128 () Int)

(assert (=> bs!759744 (= lambda!155128 lambda!155116)))

(declare-fun d!1343415 () Bool)

(declare-fun e!2758573 () Bool)

(assert (=> d!1343415 e!2758573))

(declare-fun res!1832607 () Bool)

(assert (=> d!1343415 (=> (not res!1832607) (not e!2758573))))

(declare-fun lt!1629272 () List!49791)

(assert (=> d!1343415 (= res!1832607 (noDuplicate!661 lt!1629272))))

(declare-fun e!2758570 () List!49791)

(assert (=> d!1343415 (= lt!1629272 e!2758570)))

(declare-fun c!754044 () Bool)

(assert (=> d!1343415 (= c!754044 (is-Cons!49663 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))))))

(assert (=> d!1343415 (invariantList!816 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))))

(assert (=> d!1343415 (= (getKeysList!263 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) lt!1629272)))

(declare-fun b!4430386 () Bool)

(declare-fun e!2758572 () Unit!82629)

(declare-fun Unit!82639 () Unit!82629)

(assert (=> b!4430386 (= e!2758572 Unit!82639)))

(declare-fun res!1832605 () Bool)

(assert (=> b!4430387 (=> (not res!1832605) (not e!2758573))))

(assert (=> b!4430387 (= res!1832605 (forall!9615 lt!1629272 lambda!155127))))

(assert (=> b!4430388 (= e!2758573 (= (content!7973 lt!1629272) (content!7973 (map!10851 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) lambda!155128))))))

(declare-fun b!4430389 () Bool)

(declare-fun e!2758571 () Unit!82629)

(declare-fun Unit!82640 () Unit!82629)

(assert (=> b!4430389 (= e!2758571 Unit!82640)))

(declare-fun b!4430390 () Bool)

(declare-fun res!1832606 () Bool)

(assert (=> b!4430390 (=> (not res!1832606) (not e!2758573))))

(assert (=> b!4430390 (= res!1832606 (= (length!178 lt!1629272) (length!179 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))))))

(assert (=> b!4430391 false))

(declare-fun lt!1629271 () Unit!82629)

(declare-fun forallContained!2106 (List!49791 Int K!11033) Unit!82629)

(assert (=> b!4430391 (= lt!1629271 (forallContained!2106 (getKeysList!263 (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))) lambda!155125 (_1!28051 (h!55360 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))))))))

(declare-fun Unit!82641 () Unit!82629)

(assert (=> b!4430391 (= e!2758572 Unit!82641)))

(assert (=> b!4430392 (= e!2758570 (Cons!49667 (_1!28051 (h!55360 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))) (getKeysList!263 (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))))))))

(declare-fun c!754045 () Bool)

(assert (=> b!4430392 (= c!754045 (containsKey!1160 (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) (_1!28051 (h!55360 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))))))))

(declare-fun lt!1629275 () Unit!82629)

(assert (=> b!4430392 (= lt!1629275 e!2758571)))

(declare-fun c!754046 () Bool)

(assert (=> b!4430392 (= c!754046 (contains!12193 (getKeysList!263 (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))) (_1!28051 (h!55360 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))))))))

(declare-fun lt!1629273 () Unit!82629)

(assert (=> b!4430392 (= lt!1629273 e!2758572)))

(declare-fun lt!1629274 () List!49791)

(assert (=> b!4430392 (= lt!1629274 (getKeysList!263 (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))))))

(declare-fun lt!1629270 () Unit!82629)

(declare-fun lemmaForallContainsAddHeadPreserves!83 (List!49787 List!49791 tuple2!49514) Unit!82629)

(assert (=> b!4430392 (= lt!1629270 (lemmaForallContainsAddHeadPreserves!83 (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) lt!1629274 (h!55360 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))))))

(assert (=> b!4430392 (forall!9615 lt!1629274 lambda!155126)))

(declare-fun lt!1629276 () Unit!82629)

(assert (=> b!4430392 (= lt!1629276 lt!1629270)))

(declare-fun b!4430393 () Bool)

(assert (=> b!4430393 false))

(declare-fun Unit!82642 () Unit!82629)

(assert (=> b!4430393 (= e!2758571 Unit!82642)))

(declare-fun b!4430394 () Bool)

(assert (=> b!4430394 (= e!2758570 Nil!49667)))

(assert (= (and d!1343415 c!754044) b!4430392))

(assert (= (and d!1343415 (not c!754044)) b!4430394))

(assert (= (and b!4430392 c!754045) b!4430393))

(assert (= (and b!4430392 (not c!754045)) b!4430389))

(assert (= (and b!4430392 c!754046) b!4430391))

(assert (= (and b!4430392 (not c!754046)) b!4430386))

(assert (= (and d!1343415 res!1832607) b!4430390))

(assert (= (and b!4430390 res!1832606) b!4430387))

(assert (= (and b!4430387 res!1832605) b!4430388))

(declare-fun m!5114469 () Bool)

(assert (=> b!4430392 m!5114469))

(declare-fun m!5114471 () Bool)

(assert (=> b!4430392 m!5114471))

(declare-fun m!5114473 () Bool)

(assert (=> b!4430392 m!5114473))

(assert (=> b!4430392 m!5114473))

(declare-fun m!5114475 () Bool)

(assert (=> b!4430392 m!5114475))

(declare-fun m!5114477 () Bool)

(assert (=> b!4430392 m!5114477))

(assert (=> b!4430391 m!5114473))

(assert (=> b!4430391 m!5114473))

(declare-fun m!5114479 () Bool)

(assert (=> b!4430391 m!5114479))

(declare-fun m!5114481 () Bool)

(assert (=> b!4430388 m!5114481))

(declare-fun m!5114483 () Bool)

(assert (=> b!4430388 m!5114483))

(assert (=> b!4430388 m!5114483))

(declare-fun m!5114485 () Bool)

(assert (=> b!4430388 m!5114485))

(declare-fun m!5114487 () Bool)

(assert (=> b!4430387 m!5114487))

(declare-fun m!5114489 () Bool)

(assert (=> b!4430390 m!5114489))

(assert (=> b!4430390 m!5114429))

(declare-fun m!5114491 () Bool)

(assert (=> d!1343415 m!5114491))

(assert (=> d!1343415 m!5114441))

(assert (=> b!4430221 d!1343415))

(declare-fun d!1343417 () Bool)

(declare-fun choose!28034 (Hashable!5178 K!11033) (_ BitVec 64))

(assert (=> d!1343417 (= (hash!2199 hashF!1220 key!3717) (choose!28034 hashF!1220 key!3717))))

(declare-fun bs!759745 () Bool)

(assert (= bs!759745 d!1343417))

(declare-fun m!5114493 () Bool)

(assert (=> bs!759745 m!5114493))

(assert (=> d!1343335 d!1343417))

(declare-fun d!1343419 () Bool)

(declare-fun res!1832608 () Bool)

(declare-fun e!2758574 () Bool)

(assert (=> d!1343419 (=> res!1832608 e!2758574)))

(assert (=> d!1343419 (= res!1832608 (is-Nil!49664 (t!356726 (toList!3555 lt!1629126))))))

(assert (=> d!1343419 (= (forall!9611 (t!356726 (toList!3555 lt!1629126)) lambda!155083) e!2758574)))

(declare-fun b!4430397 () Bool)

(declare-fun e!2758575 () Bool)

(assert (=> b!4430397 (= e!2758574 e!2758575)))

(declare-fun res!1832609 () Bool)

(assert (=> b!4430397 (=> (not res!1832609) (not e!2758575))))

(assert (=> b!4430397 (= res!1832609 (dynLambda!20859 lambda!155083 (h!55361 (t!356726 (toList!3555 lt!1629126)))))))

(declare-fun b!4430398 () Bool)

(assert (=> b!4430398 (= e!2758575 (forall!9611 (t!356726 (t!356726 (toList!3555 lt!1629126))) lambda!155083))))

(assert (= (and d!1343419 (not res!1832608)) b!4430397))

(assert (= (and b!4430397 res!1832609) b!4430398))

(declare-fun b_lambda!143583 () Bool)

(assert (=> (not b_lambda!143583) (not b!4430397)))

(declare-fun m!5114495 () Bool)

(assert (=> b!4430397 m!5114495))

(declare-fun m!5114497 () Bool)

(assert (=> b!4430398 m!5114497))

(assert (=> b!4430178 d!1343419))

(declare-fun d!1343421 () Bool)

(declare-fun res!1832610 () Bool)

(declare-fun e!2758576 () Bool)

(assert (=> d!1343421 (=> res!1832610 e!2758576)))

(assert (=> d!1343421 (= res!1832610 (not (is-Cons!49663 (_2!28052 (h!55361 (toList!3555 lt!1629126))))))))

(assert (=> d!1343421 (= (noDuplicateKeys!784 (_2!28052 (h!55361 (toList!3555 lt!1629126)))) e!2758576)))

(declare-fun b!4430399 () Bool)

(declare-fun e!2758577 () Bool)

(assert (=> b!4430399 (= e!2758576 e!2758577)))

(declare-fun res!1832611 () Bool)

(assert (=> b!4430399 (=> (not res!1832611) (not e!2758577))))

(assert (=> b!4430399 (= res!1832611 (not (containsKey!1161 (t!356725 (_2!28052 (h!55361 (toList!3555 lt!1629126)))) (_1!28051 (h!55360 (_2!28052 (h!55361 (toList!3555 lt!1629126))))))))))

(declare-fun b!4430400 () Bool)

(assert (=> b!4430400 (= e!2758577 (noDuplicateKeys!784 (t!356725 (_2!28052 (h!55361 (toList!3555 lt!1629126))))))))

(assert (= (and d!1343421 (not res!1832610)) b!4430399))

(assert (= (and b!4430399 res!1832611) b!4430400))

(declare-fun m!5114499 () Bool)

(assert (=> b!4430399 m!5114499))

(declare-fun m!5114501 () Bool)

(assert (=> b!4430400 m!5114501))

(assert (=> bs!759721 d!1343421))

(declare-fun bs!759749 () Bool)

(declare-fun b!4430442 () Bool)

(assert (= bs!759749 (and b!4430442 d!1343339)))

(declare-fun lambda!155157 () Int)

(assert (=> bs!759749 (not (= lambda!155157 lambda!155095))))

(assert (=> b!4430442 true))

(declare-fun bs!759750 () Bool)

(declare-fun b!4430441 () Bool)

(assert (= bs!759750 (and b!4430441 d!1343339)))

(declare-fun lambda!155158 () Int)

(assert (=> bs!759750 (not (= lambda!155158 lambda!155095))))

(declare-fun bs!759751 () Bool)

(assert (= bs!759751 (and b!4430441 b!4430442)))

(assert (=> bs!759751 (= lambda!155158 lambda!155157)))

(assert (=> b!4430441 true))

(declare-fun lambda!155159 () Int)

(assert (=> bs!759750 (not (= lambda!155159 lambda!155095))))

(declare-fun lt!1629328 () ListMap!2799)

(assert (=> bs!759751 (= (= lt!1629328 (extractMap!845 (t!356726 (toList!3555 lm!1616)))) (= lambda!155159 lambda!155157))))

(assert (=> b!4430441 (= (= lt!1629328 (extractMap!845 (t!356726 (toList!3555 lm!1616)))) (= lambda!155159 lambda!155158))))

(assert (=> b!4430441 true))

(declare-fun bs!759754 () Bool)

(declare-fun d!1343423 () Bool)

(assert (= bs!759754 (and d!1343423 d!1343339)))

(declare-fun lambda!155160 () Int)

(assert (=> bs!759754 (not (= lambda!155160 lambda!155095))))

(declare-fun bs!759755 () Bool)

(assert (= bs!759755 (and d!1343423 b!4430442)))

(declare-fun lt!1629334 () ListMap!2799)

(assert (=> bs!759755 (= (= lt!1629334 (extractMap!845 (t!356726 (toList!3555 lm!1616)))) (= lambda!155160 lambda!155157))))

(declare-fun bs!759756 () Bool)

(assert (= bs!759756 (and d!1343423 b!4430441)))

(assert (=> bs!759756 (= (= lt!1629334 (extractMap!845 (t!356726 (toList!3555 lm!1616)))) (= lambda!155160 lambda!155158))))

(assert (=> bs!759756 (= (= lt!1629334 lt!1629328) (= lambda!155160 lambda!155159))))

(assert (=> d!1343423 true))

(declare-fun e!2758603 () ListMap!2799)

(assert (=> b!4430441 (= e!2758603 lt!1629328)))

(declare-fun lt!1629330 () ListMap!2799)

(declare-fun +!1140 (ListMap!2799 tuple2!49514) ListMap!2799)

(assert (=> b!4430441 (= lt!1629330 (+!1140 (extractMap!845 (t!356726 (toList!3555 lm!1616))) (h!55360 (_2!28052 (h!55361 (toList!3555 lm!1616))))))))

(assert (=> b!4430441 (= lt!1629328 (addToMapMapFromBucket!409 (t!356725 (_2!28052 (h!55361 (toList!3555 lm!1616)))) (+!1140 (extractMap!845 (t!356726 (toList!3555 lm!1616))) (h!55360 (_2!28052 (h!55361 (toList!3555 lm!1616)))))))))

(declare-fun lt!1629345 () Unit!82629)

(declare-fun call!308258 () Unit!82629)

(assert (=> b!4430441 (= lt!1629345 call!308258)))

(assert (=> b!4430441 (forall!9613 (toList!3556 (extractMap!845 (t!356726 (toList!3555 lm!1616)))) lambda!155158)))

(declare-fun lt!1629326 () Unit!82629)

(assert (=> b!4430441 (= lt!1629326 lt!1629345)))

(assert (=> b!4430441 (forall!9613 (toList!3556 lt!1629330) lambda!155159)))

(declare-fun lt!1629340 () Unit!82629)

(declare-fun Unit!82643 () Unit!82629)

(assert (=> b!4430441 (= lt!1629340 Unit!82643)))

(assert (=> b!4430441 (forall!9613 (t!356725 (_2!28052 (h!55361 (toList!3555 lm!1616)))) lambda!155159)))

(declare-fun lt!1629327 () Unit!82629)

(declare-fun Unit!82644 () Unit!82629)

(assert (=> b!4430441 (= lt!1629327 Unit!82644)))

(declare-fun lt!1629325 () Unit!82629)

(declare-fun Unit!82645 () Unit!82629)

(assert (=> b!4430441 (= lt!1629325 Unit!82645)))

(declare-fun lt!1629342 () Unit!82629)

(declare-fun forallContained!2107 (List!49787 Int tuple2!49514) Unit!82629)

(assert (=> b!4430441 (= lt!1629342 (forallContained!2107 (toList!3556 lt!1629330) lambda!155159 (h!55360 (_2!28052 (h!55361 (toList!3555 lm!1616))))))))

(assert (=> b!4430441 (contains!12188 lt!1629330 (_1!28051 (h!55360 (_2!28052 (h!55361 (toList!3555 lm!1616))))))))

(declare-fun lt!1629344 () Unit!82629)

(declare-fun Unit!82646 () Unit!82629)

(assert (=> b!4430441 (= lt!1629344 Unit!82646)))

(assert (=> b!4430441 (contains!12188 lt!1629328 (_1!28051 (h!55360 (_2!28052 (h!55361 (toList!3555 lm!1616))))))))

(declare-fun lt!1629329 () Unit!82629)

(declare-fun Unit!82647 () Unit!82629)

(assert (=> b!4430441 (= lt!1629329 Unit!82647)))

(declare-fun call!308259 () Bool)

(assert (=> b!4430441 call!308259))

(declare-fun lt!1629343 () Unit!82629)

(declare-fun Unit!82648 () Unit!82629)

(assert (=> b!4430441 (= lt!1629343 Unit!82648)))

(assert (=> b!4430441 (forall!9613 (toList!3556 lt!1629330) lambda!155159)))

(declare-fun lt!1629331 () Unit!82629)

(declare-fun Unit!82649 () Unit!82629)

(assert (=> b!4430441 (= lt!1629331 Unit!82649)))

(declare-fun lt!1629336 () Unit!82629)

(declare-fun Unit!82650 () Unit!82629)

(assert (=> b!4430441 (= lt!1629336 Unit!82650)))

(declare-fun lt!1629335 () Unit!82629)

(declare-fun addForallContainsKeyThenBeforeAdding!184 (ListMap!2799 ListMap!2799 K!11033 V!11279) Unit!82629)

(assert (=> b!4430441 (= lt!1629335 (addForallContainsKeyThenBeforeAdding!184 (extractMap!845 (t!356726 (toList!3555 lm!1616))) lt!1629328 (_1!28051 (h!55360 (_2!28052 (h!55361 (toList!3555 lm!1616))))) (_2!28051 (h!55360 (_2!28052 (h!55361 (toList!3555 lm!1616)))))))))

(assert (=> b!4430441 (forall!9613 (toList!3556 (extractMap!845 (t!356726 (toList!3555 lm!1616)))) lambda!155159)))

(declare-fun lt!1629333 () Unit!82629)

(assert (=> b!4430441 (= lt!1629333 lt!1629335)))

(declare-fun call!308257 () Bool)

(assert (=> b!4430441 call!308257))

(declare-fun lt!1629339 () Unit!82629)

(declare-fun Unit!82651 () Unit!82629)

(assert (=> b!4430441 (= lt!1629339 Unit!82651)))

(declare-fun res!1832626 () Bool)

(assert (=> b!4430441 (= res!1832626 (forall!9613 (_2!28052 (h!55361 (toList!3555 lm!1616))) lambda!155159))))

(declare-fun e!2758604 () Bool)

(assert (=> b!4430441 (=> (not res!1832626) (not e!2758604))))

(assert (=> b!4430441 e!2758604))

(declare-fun lt!1629337 () Unit!82629)

(declare-fun Unit!82652 () Unit!82629)

(assert (=> b!4430441 (= lt!1629337 Unit!82652)))

(assert (=> b!4430442 (= e!2758603 (extractMap!845 (t!356726 (toList!3555 lm!1616))))))

(declare-fun lt!1629338 () Unit!82629)

(assert (=> b!4430442 (= lt!1629338 call!308258)))

(assert (=> b!4430442 call!308259))

(declare-fun lt!1629341 () Unit!82629)

(assert (=> b!4430442 (= lt!1629341 lt!1629338)))

(assert (=> b!4430442 call!308257))

(declare-fun lt!1629332 () Unit!82629)

(declare-fun Unit!82653 () Unit!82629)

(assert (=> b!4430442 (= lt!1629332 Unit!82653)))

(declare-fun b!4430443 () Bool)

(declare-fun res!1832624 () Bool)

(declare-fun e!2758602 () Bool)

(assert (=> b!4430443 (=> (not res!1832624) (not e!2758602))))

(assert (=> b!4430443 (= res!1832624 (forall!9613 (toList!3556 (extractMap!845 (t!356726 (toList!3555 lm!1616)))) lambda!155160))))

(declare-fun b!4430444 () Bool)

(assert (=> b!4430444 (= e!2758602 (invariantList!816 (toList!3556 lt!1629334)))))

(declare-fun c!754061 () Bool)

(declare-fun bm!308252 () Bool)

(assert (=> bm!308252 (= call!308259 (forall!9613 (ite c!754061 (toList!3556 (extractMap!845 (t!356726 (toList!3555 lm!1616)))) (_2!28052 (h!55361 (toList!3555 lm!1616)))) (ite c!754061 lambda!155157 lambda!155159)))))

(declare-fun bm!308253 () Bool)

(assert (=> bm!308253 (= call!308257 (forall!9613 (toList!3556 (extractMap!845 (t!356726 (toList!3555 lm!1616)))) (ite c!754061 lambda!155157 lambda!155159)))))

(declare-fun b!4430445 () Bool)

(assert (=> b!4430445 (= e!2758604 (forall!9613 (toList!3556 (extractMap!845 (t!356726 (toList!3555 lm!1616)))) lambda!155159))))

(declare-fun bm!308254 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!184 (ListMap!2799) Unit!82629)

(assert (=> bm!308254 (= call!308258 (lemmaContainsAllItsOwnKeys!184 (extractMap!845 (t!356726 (toList!3555 lm!1616)))))))

(assert (=> d!1343423 e!2758602))

(declare-fun res!1832625 () Bool)

(assert (=> d!1343423 (=> (not res!1832625) (not e!2758602))))

(assert (=> d!1343423 (= res!1832625 (forall!9613 (_2!28052 (h!55361 (toList!3555 lm!1616))) lambda!155160))))

(assert (=> d!1343423 (= lt!1629334 e!2758603)))

(assert (=> d!1343423 (= c!754061 (is-Nil!49663 (_2!28052 (h!55361 (toList!3555 lm!1616)))))))

(assert (=> d!1343423 (noDuplicateKeys!784 (_2!28052 (h!55361 (toList!3555 lm!1616))))))

(assert (=> d!1343423 (= (addToMapMapFromBucket!409 (_2!28052 (h!55361 (toList!3555 lm!1616))) (extractMap!845 (t!356726 (toList!3555 lm!1616)))) lt!1629334)))

(assert (= (and d!1343423 c!754061) b!4430442))

(assert (= (and d!1343423 (not c!754061)) b!4430441))

(assert (= (and b!4430441 res!1832626) b!4430445))

(assert (= (or b!4430442 b!4430441) bm!308254))

(assert (= (or b!4430442 b!4430441) bm!308252))

(assert (= (or b!4430442 b!4430441) bm!308253))

(assert (= (and d!1343423 res!1832625) b!4430443))

(assert (= (and b!4430443 res!1832624) b!4430444))

(declare-fun m!5114529 () Bool)

(assert (=> b!4430444 m!5114529))

(declare-fun m!5114531 () Bool)

(assert (=> b!4430445 m!5114531))

(declare-fun m!5114533 () Bool)

(assert (=> b!4430443 m!5114533))

(declare-fun m!5114535 () Bool)

(assert (=> b!4430441 m!5114535))

(assert (=> b!4430441 m!5114531))

(declare-fun m!5114539 () Bool)

(assert (=> b!4430441 m!5114539))

(declare-fun m!5114543 () Bool)

(assert (=> b!4430441 m!5114543))

(assert (=> b!4430441 m!5114535))

(declare-fun m!5114545 () Bool)

(assert (=> b!4430441 m!5114545))

(declare-fun m!5114547 () Bool)

(assert (=> b!4430441 m!5114547))

(assert (=> b!4430441 m!5114349))

(declare-fun m!5114549 () Bool)

(assert (=> b!4430441 m!5114549))

(declare-fun m!5114553 () Bool)

(assert (=> b!4430441 m!5114553))

(assert (=> b!4430441 m!5114549))

(declare-fun m!5114555 () Bool)

(assert (=> b!4430441 m!5114555))

(assert (=> b!4430441 m!5114349))

(declare-fun m!5114557 () Bool)

(assert (=> b!4430441 m!5114557))

(declare-fun m!5114559 () Bool)

(assert (=> b!4430441 m!5114559))

(declare-fun m!5114561 () Bool)

(assert (=> bm!308252 m!5114561))

(declare-fun m!5114563 () Bool)

(assert (=> bm!308253 m!5114563))

(assert (=> bm!308254 m!5114349))

(declare-fun m!5114565 () Bool)

(assert (=> bm!308254 m!5114565))

(declare-fun m!5114567 () Bool)

(assert (=> d!1343423 m!5114567))

(assert (=> d!1343423 m!5114357))

(assert (=> b!4430238 d!1343423))

(declare-fun bs!759757 () Bool)

(declare-fun d!1343449 () Bool)

(assert (= bs!759757 (and d!1343449 start!432518)))

(declare-fun lambda!155161 () Int)

(assert (=> bs!759757 (= lambda!155161 lambda!155083)))

(declare-fun bs!759758 () Bool)

(assert (= bs!759758 (and d!1343449 d!1343351)))

(assert (=> bs!759758 (not (= lambda!155161 lambda!155098))))

(declare-fun bs!759759 () Bool)

(assert (= bs!759759 (and d!1343449 d!1343357)))

(assert (=> bs!759759 (= lambda!155161 lambda!155101)))

(declare-fun lt!1629353 () ListMap!2799)

(assert (=> d!1343449 (invariantList!816 (toList!3556 lt!1629353))))

(declare-fun e!2758613 () ListMap!2799)

(assert (=> d!1343449 (= lt!1629353 e!2758613)))

(declare-fun c!754067 () Bool)

(assert (=> d!1343449 (= c!754067 (is-Cons!49664 (t!356726 (toList!3555 lm!1616))))))

(assert (=> d!1343449 (forall!9611 (t!356726 (toList!3555 lm!1616)) lambda!155161)))

(assert (=> d!1343449 (= (extractMap!845 (t!356726 (toList!3555 lm!1616))) lt!1629353)))

(declare-fun b!4430461 () Bool)

(assert (=> b!4430461 (= e!2758613 (addToMapMapFromBucket!409 (_2!28052 (h!55361 (t!356726 (toList!3555 lm!1616)))) (extractMap!845 (t!356726 (t!356726 (toList!3555 lm!1616))))))))

(declare-fun b!4430462 () Bool)

(assert (=> b!4430462 (= e!2758613 (ListMap!2800 Nil!49663))))

(assert (= (and d!1343449 c!754067) b!4430461))

(assert (= (and d!1343449 (not c!754067)) b!4430462))

(declare-fun m!5114571 () Bool)

(assert (=> d!1343449 m!5114571))

(declare-fun m!5114573 () Bool)

(assert (=> d!1343449 m!5114573))

(declare-fun m!5114575 () Bool)

(assert (=> b!4430461 m!5114575))

(assert (=> b!4430461 m!5114575))

(declare-fun m!5114577 () Bool)

(assert (=> b!4430461 m!5114577))

(assert (=> b!4430238 d!1343449))

(declare-fun d!1343453 () Bool)

(declare-fun res!1832630 () Bool)

(declare-fun e!2758614 () Bool)

(assert (=> d!1343453 (=> res!1832630 e!2758614)))

(assert (=> d!1343453 (= res!1832630 (is-Nil!49664 (t!356726 (toList!3555 lm!1616))))))

(assert (=> d!1343453 (= (forall!9611 (t!356726 (toList!3555 lm!1616)) lambda!155083) e!2758614)))

(declare-fun b!4430463 () Bool)

(declare-fun e!2758615 () Bool)

(assert (=> b!4430463 (= e!2758614 e!2758615)))

(declare-fun res!1832631 () Bool)

(assert (=> b!4430463 (=> (not res!1832631) (not e!2758615))))

(assert (=> b!4430463 (= res!1832631 (dynLambda!20859 lambda!155083 (h!55361 (t!356726 (toList!3555 lm!1616)))))))

(declare-fun b!4430464 () Bool)

(assert (=> b!4430464 (= e!2758615 (forall!9611 (t!356726 (t!356726 (toList!3555 lm!1616))) lambda!155083))))

(assert (= (and d!1343453 (not res!1832630)) b!4430463))

(assert (= (and b!4430463 res!1832631) b!4430464))

(declare-fun b_lambda!143587 () Bool)

(assert (=> (not b_lambda!143587) (not b!4430463)))

(declare-fun m!5114579 () Bool)

(assert (=> b!4430463 m!5114579))

(declare-fun m!5114581 () Bool)

(assert (=> b!4430464 m!5114581))

(assert (=> b!4430172 d!1343453))

(declare-fun d!1343455 () Bool)

(declare-fun res!1832636 () Bool)

(declare-fun e!2758620 () Bool)

(assert (=> d!1343455 (=> res!1832636 e!2758620)))

(assert (=> d!1343455 (= res!1832636 (and (is-Cons!49663 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) (= (_1!28051 (h!55360 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))) key!3717)))))

(assert (=> d!1343455 (= (containsKey!1160 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717) e!2758620)))

(declare-fun b!4430469 () Bool)

(declare-fun e!2758621 () Bool)

(assert (=> b!4430469 (= e!2758620 e!2758621)))

(declare-fun res!1832637 () Bool)

(assert (=> b!4430469 (=> (not res!1832637) (not e!2758621))))

(assert (=> b!4430469 (= res!1832637 (is-Cons!49663 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))))))

(declare-fun b!4430470 () Bool)

(assert (=> b!4430470 (= e!2758621 (containsKey!1160 (t!356725 (toList!3556 (extractMap!845 (toList!3555 lm!1616)))) key!3717))))

(assert (= (and d!1343455 (not res!1832636)) b!4430469))

(assert (= (and b!4430469 res!1832637) b!4430470))

(declare-fun m!5114583 () Bool)

(assert (=> b!4430470 m!5114583))

(assert (=> d!1343353 d!1343455))

(declare-fun d!1343457 () Bool)

(declare-fun res!1832638 () Bool)

(declare-fun e!2758622 () Bool)

(assert (=> d!1343457 (=> res!1832638 e!2758622)))

(assert (=> d!1343457 (= res!1832638 (is-Nil!49664 (toList!3555 lm!1616)))))

(assert (=> d!1343457 (= (forall!9611 (toList!3555 lm!1616) lambda!155098) e!2758622)))

(declare-fun b!4430471 () Bool)

(declare-fun e!2758623 () Bool)

(assert (=> b!4430471 (= e!2758622 e!2758623)))

(declare-fun res!1832639 () Bool)

(assert (=> b!4430471 (=> (not res!1832639) (not e!2758623))))

(assert (=> b!4430471 (= res!1832639 (dynLambda!20859 lambda!155098 (h!55361 (toList!3555 lm!1616))))))

(declare-fun b!4430472 () Bool)

(assert (=> b!4430472 (= e!2758623 (forall!9611 (t!356726 (toList!3555 lm!1616)) lambda!155098))))

(assert (= (and d!1343457 (not res!1832638)) b!4430471))

(assert (= (and b!4430471 res!1832639) b!4430472))

(declare-fun b_lambda!143589 () Bool)

(assert (=> (not b_lambda!143589) (not b!4430471)))

(declare-fun m!5114585 () Bool)

(assert (=> b!4430471 m!5114585))

(declare-fun m!5114587 () Bool)

(assert (=> b!4430472 m!5114587))

(assert (=> d!1343351 d!1343457))

(declare-fun b!4430487 () Bool)

(declare-fun e!2758631 () Option!10747)

(assert (=> b!4430487 (= e!2758631 (Some!10746 (_2!28052 (h!55361 (toList!3555 lt!1629159)))))))

(declare-fun b!4430489 () Bool)

(declare-fun e!2758632 () Option!10747)

(assert (=> b!4430489 (= e!2758632 (getValueByKey!733 (t!356726 (toList!3555 lt!1629159)) (_1!28052 (tuple2!49517 hash!366 newBucket!194))))))

(declare-fun c!754072 () Bool)

(declare-fun d!1343459 () Bool)

(assert (=> d!1343459 (= c!754072 (and (is-Cons!49664 (toList!3555 lt!1629159)) (= (_1!28052 (h!55361 (toList!3555 lt!1629159))) (_1!28052 (tuple2!49517 hash!366 newBucket!194)))))))

(assert (=> d!1343459 (= (getValueByKey!733 (toList!3555 lt!1629159) (_1!28052 (tuple2!49517 hash!366 newBucket!194))) e!2758631)))

(declare-fun b!4430488 () Bool)

(assert (=> b!4430488 (= e!2758631 e!2758632)))

(declare-fun c!754073 () Bool)

(assert (=> b!4430488 (= c!754073 (and (is-Cons!49664 (toList!3555 lt!1629159)) (not (= (_1!28052 (h!55361 (toList!3555 lt!1629159))) (_1!28052 (tuple2!49517 hash!366 newBucket!194))))))))

(declare-fun b!4430490 () Bool)

(assert (=> b!4430490 (= e!2758632 None!10746)))

(assert (= (and d!1343459 c!754072) b!4430487))

(assert (= (and d!1343459 (not c!754072)) b!4430488))

(assert (= (and b!4430488 c!754073) b!4430489))

(assert (= (and b!4430488 (not c!754073)) b!4430490))

(declare-fun m!5114589 () Bool)

(assert (=> b!4430489 m!5114589))

(assert (=> b!4430189 d!1343459))

(declare-fun d!1343461 () Bool)

(declare-fun lt!1629359 () Bool)

(declare-fun content!7974 (List!49788) (Set tuple2!49516))

(assert (=> d!1343461 (= lt!1629359 (set.member (tuple2!49517 hash!366 newBucket!194) (content!7974 (toList!3555 lt!1629159))))))

(declare-fun e!2758638 () Bool)

(assert (=> d!1343461 (= lt!1629359 e!2758638)))

(declare-fun res!1832651 () Bool)

(assert (=> d!1343461 (=> (not res!1832651) (not e!2758638))))

(assert (=> d!1343461 (= res!1832651 (is-Cons!49664 (toList!3555 lt!1629159)))))

(assert (=> d!1343461 (= (contains!12192 (toList!3555 lt!1629159) (tuple2!49517 hash!366 newBucket!194)) lt!1629359)))

(declare-fun b!4430495 () Bool)

(declare-fun e!2758637 () Bool)

(assert (=> b!4430495 (= e!2758638 e!2758637)))

(declare-fun res!1832650 () Bool)

(assert (=> b!4430495 (=> res!1832650 e!2758637)))

(assert (=> b!4430495 (= res!1832650 (= (h!55361 (toList!3555 lt!1629159)) (tuple2!49517 hash!366 newBucket!194)))))

(declare-fun b!4430496 () Bool)

(assert (=> b!4430496 (= e!2758637 (contains!12192 (t!356726 (toList!3555 lt!1629159)) (tuple2!49517 hash!366 newBucket!194)))))

(assert (= (and d!1343461 res!1832651) b!4430495))

(assert (= (and b!4430495 (not res!1832650)) b!4430496))

(declare-fun m!5114599 () Bool)

(assert (=> d!1343461 m!5114599))

(declare-fun m!5114601 () Bool)

(assert (=> d!1343461 m!5114601))

(declare-fun m!5114603 () Bool)

(assert (=> b!4430496 m!5114603))

(assert (=> b!4430190 d!1343461))

(declare-fun d!1343465 () Bool)

(declare-fun res!1832652 () Bool)

(declare-fun e!2758639 () Bool)

(assert (=> d!1343465 (=> res!1832652 e!2758639)))

(assert (=> d!1343465 (= res!1832652 (not (is-Cons!49663 (_2!28052 (h!55361 (toList!3555 lm!1616))))))))

(assert (=> d!1343465 (= (noDuplicateKeys!784 (_2!28052 (h!55361 (toList!3555 lm!1616)))) e!2758639)))

(declare-fun b!4430497 () Bool)

(declare-fun e!2758640 () Bool)

(assert (=> b!4430497 (= e!2758639 e!2758640)))

(declare-fun res!1832653 () Bool)

(assert (=> b!4430497 (=> (not res!1832653) (not e!2758640))))

(assert (=> b!4430497 (= res!1832653 (not (containsKey!1161 (t!356725 (_2!28052 (h!55361 (toList!3555 lm!1616)))) (_1!28051 (h!55360 (_2!28052 (h!55361 (toList!3555 lm!1616))))))))))

(declare-fun b!4430498 () Bool)

(assert (=> b!4430498 (= e!2758640 (noDuplicateKeys!784 (t!356725 (_2!28052 (h!55361 (toList!3555 lm!1616))))))))

(assert (= (and d!1343465 (not res!1832652)) b!4430497))

(assert (= (and b!4430497 res!1832653) b!4430498))

(declare-fun m!5114605 () Bool)

(assert (=> b!4430497 m!5114605))

(declare-fun m!5114607 () Bool)

(assert (=> b!4430498 m!5114607))

(assert (=> bs!759720 d!1343465))

(declare-fun d!1343467 () Bool)

(assert (=> d!1343467 (= (get!16188 (getValueByKey!733 (toList!3555 lm!1616) hash!366)) (v!43940 (getValueByKey!733 (toList!3555 lm!1616) hash!366)))))

(assert (=> d!1343337 d!1343467))

(declare-fun b!4430499 () Bool)

(declare-fun e!2758641 () Option!10747)

(assert (=> b!4430499 (= e!2758641 (Some!10746 (_2!28052 (h!55361 (toList!3555 lm!1616)))))))

(declare-fun b!4430501 () Bool)

(declare-fun e!2758642 () Option!10747)

(assert (=> b!4430501 (= e!2758642 (getValueByKey!733 (t!356726 (toList!3555 lm!1616)) hash!366))))

(declare-fun d!1343469 () Bool)

(declare-fun c!754074 () Bool)

(assert (=> d!1343469 (= c!754074 (and (is-Cons!49664 (toList!3555 lm!1616)) (= (_1!28052 (h!55361 (toList!3555 lm!1616))) hash!366)))))

(assert (=> d!1343469 (= (getValueByKey!733 (toList!3555 lm!1616) hash!366) e!2758641)))

(declare-fun b!4430500 () Bool)

(assert (=> b!4430500 (= e!2758641 e!2758642)))

(declare-fun c!754075 () Bool)

(assert (=> b!4430500 (= c!754075 (and (is-Cons!49664 (toList!3555 lm!1616)) (not (= (_1!28052 (h!55361 (toList!3555 lm!1616))) hash!366))))))

(declare-fun b!4430502 () Bool)

(assert (=> b!4430502 (= e!2758642 None!10746)))

(assert (= (and d!1343469 c!754074) b!4430499))

(assert (= (and d!1343469 (not c!754074)) b!4430500))

(assert (= (and b!4430500 c!754075) b!4430501))

(assert (= (and b!4430500 (not c!754075)) b!4430502))

(declare-fun m!5114609 () Bool)

(assert (=> b!4430501 m!5114609))

(assert (=> d!1343337 d!1343469))

(declare-fun d!1343471 () Bool)

(declare-fun e!2758643 () Bool)

(assert (=> d!1343471 e!2758643))

(declare-fun res!1832654 () Bool)

(assert (=> d!1343471 (=> res!1832654 e!2758643)))

(declare-fun lt!1629360 () Bool)

(assert (=> d!1343471 (= res!1832654 (not lt!1629360))))

(declare-fun lt!1629362 () Bool)

(assert (=> d!1343471 (= lt!1629360 lt!1629362)))

(declare-fun lt!1629361 () Unit!82629)

(declare-fun e!2758644 () Unit!82629)

(assert (=> d!1343471 (= lt!1629361 e!2758644)))

(declare-fun c!754076 () Bool)

(assert (=> d!1343471 (= c!754076 lt!1629362)))

(assert (=> d!1343471 (= lt!1629362 (containsKey!1159 (toList!3555 lt!1629159) (_1!28052 (tuple2!49517 hash!366 newBucket!194))))))

(assert (=> d!1343471 (= (contains!12189 lt!1629159 (_1!28052 (tuple2!49517 hash!366 newBucket!194))) lt!1629360)))

(declare-fun b!4430503 () Bool)

(declare-fun lt!1629363 () Unit!82629)

(assert (=> b!4430503 (= e!2758644 lt!1629363)))

(assert (=> b!4430503 (= lt!1629363 (lemmaContainsKeyImpliesGetValueByKeyDefined!642 (toList!3555 lt!1629159) (_1!28052 (tuple2!49517 hash!366 newBucket!194))))))

(assert (=> b!4430503 (isDefined!8039 (getValueByKey!733 (toList!3555 lt!1629159) (_1!28052 (tuple2!49517 hash!366 newBucket!194))))))

(declare-fun b!4430504 () Bool)

(declare-fun Unit!82654 () Unit!82629)

(assert (=> b!4430504 (= e!2758644 Unit!82654)))

(declare-fun b!4430505 () Bool)

(assert (=> b!4430505 (= e!2758643 (isDefined!8039 (getValueByKey!733 (toList!3555 lt!1629159) (_1!28052 (tuple2!49517 hash!366 newBucket!194)))))))

(assert (= (and d!1343471 c!754076) b!4430503))

(assert (= (and d!1343471 (not c!754076)) b!4430504))

(assert (= (and d!1343471 (not res!1832654)) b!4430505))

(declare-fun m!5114611 () Bool)

(assert (=> d!1343471 m!5114611))

(declare-fun m!5114613 () Bool)

(assert (=> b!4430503 m!5114613))

(assert (=> b!4430503 m!5114295))

(assert (=> b!4430503 m!5114295))

(declare-fun m!5114615 () Bool)

(assert (=> b!4430503 m!5114615))

(assert (=> b!4430505 m!5114295))

(assert (=> b!4430505 m!5114295))

(assert (=> b!4430505 m!5114615))

(assert (=> d!1343345 d!1343471))

(declare-fun b!4430506 () Bool)

(declare-fun e!2758645 () Option!10747)

(assert (=> b!4430506 (= e!2758645 (Some!10746 (_2!28052 (h!55361 lt!1629156))))))

(declare-fun b!4430508 () Bool)

(declare-fun e!2758646 () Option!10747)

(assert (=> b!4430508 (= e!2758646 (getValueByKey!733 (t!356726 lt!1629156) (_1!28052 (tuple2!49517 hash!366 newBucket!194))))))

(declare-fun d!1343473 () Bool)

(declare-fun c!754077 () Bool)

(assert (=> d!1343473 (= c!754077 (and (is-Cons!49664 lt!1629156) (= (_1!28052 (h!55361 lt!1629156)) (_1!28052 (tuple2!49517 hash!366 newBucket!194)))))))

(assert (=> d!1343473 (= (getValueByKey!733 lt!1629156 (_1!28052 (tuple2!49517 hash!366 newBucket!194))) e!2758645)))

(declare-fun b!4430507 () Bool)

(assert (=> b!4430507 (= e!2758645 e!2758646)))

(declare-fun c!754078 () Bool)

(assert (=> b!4430507 (= c!754078 (and (is-Cons!49664 lt!1629156) (not (= (_1!28052 (h!55361 lt!1629156)) (_1!28052 (tuple2!49517 hash!366 newBucket!194))))))))

(declare-fun b!4430509 () Bool)

(assert (=> b!4430509 (= e!2758646 None!10746)))

(assert (= (and d!1343473 c!754077) b!4430506))

(assert (= (and d!1343473 (not c!754077)) b!4430507))

(assert (= (and b!4430507 c!754078) b!4430508))

(assert (= (and b!4430507 (not c!754078)) b!4430509))

(declare-fun m!5114617 () Bool)

(assert (=> b!4430508 m!5114617))

(assert (=> d!1343345 d!1343473))

(declare-fun d!1343475 () Bool)

(assert (=> d!1343475 (= (getValueByKey!733 lt!1629156 (_1!28052 (tuple2!49517 hash!366 newBucket!194))) (Some!10746 (_2!28052 (tuple2!49517 hash!366 newBucket!194))))))

(declare-fun lt!1629368 () Unit!82629)

(declare-fun choose!28035 (List!49788 (_ BitVec 64) List!49787) Unit!82629)

(assert (=> d!1343475 (= lt!1629368 (choose!28035 lt!1629156 (_1!28052 (tuple2!49517 hash!366 newBucket!194)) (_2!28052 (tuple2!49517 hash!366 newBucket!194))))))

(declare-fun e!2758649 () Bool)

(assert (=> d!1343475 e!2758649))

(declare-fun res!1832659 () Bool)

(assert (=> d!1343475 (=> (not res!1832659) (not e!2758649))))

(assert (=> d!1343475 (= res!1832659 (isStrictlySorted!243 lt!1629156))))

(assert (=> d!1343475 (= (lemmaContainsTupThenGetReturnValue!468 lt!1629156 (_1!28052 (tuple2!49517 hash!366 newBucket!194)) (_2!28052 (tuple2!49517 hash!366 newBucket!194))) lt!1629368)))

(declare-fun b!4430514 () Bool)

(declare-fun res!1832660 () Bool)

(assert (=> b!4430514 (=> (not res!1832660) (not e!2758649))))

(assert (=> b!4430514 (= res!1832660 (containsKey!1159 lt!1629156 (_1!28052 (tuple2!49517 hash!366 newBucket!194))))))

(declare-fun b!4430515 () Bool)

(assert (=> b!4430515 (= e!2758649 (contains!12192 lt!1629156 (tuple2!49517 (_1!28052 (tuple2!49517 hash!366 newBucket!194)) (_2!28052 (tuple2!49517 hash!366 newBucket!194)))))))

(assert (= (and d!1343475 res!1832659) b!4430514))

(assert (= (and b!4430514 res!1832660) b!4430515))

(assert (=> d!1343475 m!5114289))

(declare-fun m!5114619 () Bool)

(assert (=> d!1343475 m!5114619))

(declare-fun m!5114621 () Bool)

(assert (=> d!1343475 m!5114621))

(declare-fun m!5114623 () Bool)

(assert (=> b!4430514 m!5114623))

(declare-fun m!5114625 () Bool)

(assert (=> b!4430515 m!5114625))

(assert (=> d!1343345 d!1343475))

(declare-fun d!1343477 () Bool)

(declare-fun e!2758679 () Bool)

(assert (=> d!1343477 e!2758679))

(declare-fun res!1832677 () Bool)

(assert (=> d!1343477 (=> (not res!1832677) (not e!2758679))))

(declare-fun lt!1629374 () List!49788)

(assert (=> d!1343477 (= res!1832677 (isStrictlySorted!243 lt!1629374))))

(declare-fun e!2758681 () List!49788)

(assert (=> d!1343477 (= lt!1629374 e!2758681)))

(declare-fun c!754099 () Bool)

(assert (=> d!1343477 (= c!754099 (and (is-Cons!49664 (toList!3555 lm!1616)) (bvslt (_1!28052 (h!55361 (toList!3555 lm!1616))) (_1!28052 (tuple2!49517 hash!366 newBucket!194)))))))

(assert (=> d!1343477 (isStrictlySorted!243 (toList!3555 lm!1616))))

(assert (=> d!1343477 (= (insertStrictlySorted!271 (toList!3555 lm!1616) (_1!28052 (tuple2!49517 hash!366 newBucket!194)) (_2!28052 (tuple2!49517 hash!366 newBucket!194))) lt!1629374)))

(declare-fun b!4430572 () Bool)

(declare-fun res!1832678 () Bool)

(assert (=> b!4430572 (=> (not res!1832678) (not e!2758679))))

(assert (=> b!4430572 (= res!1832678 (containsKey!1159 lt!1629374 (_1!28052 (tuple2!49517 hash!366 newBucket!194))))))

(declare-fun bm!308270 () Bool)

(declare-fun call!308275 () List!49788)

(declare-fun call!308276 () List!49788)

(assert (=> bm!308270 (= call!308275 call!308276)))

(declare-fun b!4430573 () Bool)

(declare-fun e!2758680 () List!49788)

(assert (=> b!4430573 (= e!2758680 call!308275)))

(declare-fun b!4430574 () Bool)

(assert (=> b!4430574 (= e!2758680 call!308275)))

(declare-fun e!2758678 () List!49788)

(declare-fun c!754102 () Bool)

(declare-fun c!754100 () Bool)

(declare-fun b!4430575 () Bool)

(assert (=> b!4430575 (= e!2758678 (ite c!754100 (t!356726 (toList!3555 lm!1616)) (ite c!754102 (Cons!49664 (h!55361 (toList!3555 lm!1616)) (t!356726 (toList!3555 lm!1616))) Nil!49664)))))

(declare-fun b!4430576 () Bool)

(declare-fun call!308277 () List!49788)

(assert (=> b!4430576 (= e!2758681 call!308277)))

(declare-fun bm!308271 () Bool)

(declare-fun $colon$colon!790 (List!49788 tuple2!49516) List!49788)

(assert (=> bm!308271 (= call!308277 ($colon$colon!790 e!2758678 (ite c!754099 (h!55361 (toList!3555 lm!1616)) (tuple2!49517 (_1!28052 (tuple2!49517 hash!366 newBucket!194)) (_2!28052 (tuple2!49517 hash!366 newBucket!194))))))))

(declare-fun c!754101 () Bool)

(assert (=> bm!308271 (= c!754101 c!754099)))

(declare-fun b!4430577 () Bool)

(declare-fun e!2758677 () List!49788)

(assert (=> b!4430577 (= e!2758681 e!2758677)))

(assert (=> b!4430577 (= c!754100 (and (is-Cons!49664 (toList!3555 lm!1616)) (= (_1!28052 (h!55361 (toList!3555 lm!1616))) (_1!28052 (tuple2!49517 hash!366 newBucket!194)))))))

(declare-fun bm!308272 () Bool)

(assert (=> bm!308272 (= call!308276 call!308277)))

(declare-fun b!4430578 () Bool)

(assert (=> b!4430578 (= e!2758679 (contains!12192 lt!1629374 (tuple2!49517 (_1!28052 (tuple2!49517 hash!366 newBucket!194)) (_2!28052 (tuple2!49517 hash!366 newBucket!194)))))))

(declare-fun b!4430579 () Bool)

(assert (=> b!4430579 (= e!2758677 call!308276)))

(declare-fun b!4430580 () Bool)

(assert (=> b!4430580 (= c!754102 (and (is-Cons!49664 (toList!3555 lm!1616)) (bvsgt (_1!28052 (h!55361 (toList!3555 lm!1616))) (_1!28052 (tuple2!49517 hash!366 newBucket!194)))))))

(assert (=> b!4430580 (= e!2758677 e!2758680)))

(declare-fun b!4430581 () Bool)

(assert (=> b!4430581 (= e!2758678 (insertStrictlySorted!271 (t!356726 (toList!3555 lm!1616)) (_1!28052 (tuple2!49517 hash!366 newBucket!194)) (_2!28052 (tuple2!49517 hash!366 newBucket!194))))))

(assert (= (and d!1343477 c!754099) b!4430576))

(assert (= (and d!1343477 (not c!754099)) b!4430577))

(assert (= (and b!4430577 c!754100) b!4430579))

(assert (= (and b!4430577 (not c!754100)) b!4430580))

(assert (= (and b!4430580 c!754102) b!4430574))

(assert (= (and b!4430580 (not c!754102)) b!4430573))

(assert (= (or b!4430574 b!4430573) bm!308270))

(assert (= (or b!4430579 bm!308270) bm!308272))

(assert (= (or b!4430576 bm!308272) bm!308271))

(assert (= (and bm!308271 c!754101) b!4430581))

(assert (= (and bm!308271 (not c!754101)) b!4430575))

(assert (= (and d!1343477 res!1832677) b!4430572))

(assert (= (and b!4430572 res!1832678) b!4430578))

(declare-fun m!5114637 () Bool)

(assert (=> b!4430578 m!5114637))

(declare-fun m!5114639 () Bool)

(assert (=> bm!308271 m!5114639))

(declare-fun m!5114641 () Bool)

(assert (=> b!4430581 m!5114641))

(declare-fun m!5114643 () Bool)

(assert (=> b!4430572 m!5114643))

(declare-fun m!5114645 () Bool)

(assert (=> d!1343477 m!5114645))

(assert (=> d!1343477 m!5114271))

(assert (=> d!1343345 d!1343477))

(declare-fun d!1343481 () Bool)

(declare-fun noDuplicatedKeys!177 (List!49787) Bool)

(assert (=> d!1343481 (= (invariantList!816 (toList!3556 lt!1629204)) (noDuplicatedKeys!177 (toList!3556 lt!1629204)))))

(declare-fun bs!759760 () Bool)

(assert (= bs!759760 d!1343481))

(declare-fun m!5114647 () Bool)

(assert (=> bs!759760 m!5114647))

(assert (=> d!1343357 d!1343481))

(declare-fun d!1343483 () Bool)

(declare-fun res!1832682 () Bool)

(declare-fun e!2758683 () Bool)

(assert (=> d!1343483 (=> res!1832682 e!2758683)))

(assert (=> d!1343483 (= res!1832682 (is-Nil!49664 (toList!3555 lm!1616)))))

(assert (=> d!1343483 (= (forall!9611 (toList!3555 lm!1616) lambda!155101) e!2758683)))

(declare-fun b!4430587 () Bool)

(declare-fun e!2758684 () Bool)

(assert (=> b!4430587 (= e!2758683 e!2758684)))

(declare-fun res!1832683 () Bool)

(assert (=> b!4430587 (=> (not res!1832683) (not e!2758684))))

(assert (=> b!4430587 (= res!1832683 (dynLambda!20859 lambda!155101 (h!55361 (toList!3555 lm!1616))))))

(declare-fun b!4430588 () Bool)

(assert (=> b!4430588 (= e!2758684 (forall!9611 (t!356726 (toList!3555 lm!1616)) lambda!155101))))

(assert (= (and d!1343483 (not res!1832682)) b!4430587))

(assert (= (and b!4430587 res!1832683) b!4430588))

(declare-fun b_lambda!143591 () Bool)

(assert (=> (not b_lambda!143591) (not b!4430587)))

(declare-fun m!5114651 () Bool)

(assert (=> b!4430587 m!5114651))

(declare-fun m!5114653 () Bool)

(assert (=> b!4430588 m!5114653))

(assert (=> d!1343357 d!1343483))

(declare-fun d!1343485 () Bool)

(declare-fun res!1832684 () Bool)

(declare-fun e!2758685 () Bool)

(assert (=> d!1343485 (=> res!1832684 e!2758685)))

(assert (=> d!1343485 (= res!1832684 (not (is-Cons!49663 (t!356725 newBucket!194))))))

(assert (=> d!1343485 (= (noDuplicateKeys!784 (t!356725 newBucket!194)) e!2758685)))

(declare-fun b!4430589 () Bool)

(declare-fun e!2758686 () Bool)

(assert (=> b!4430589 (= e!2758685 e!2758686)))

(declare-fun res!1832685 () Bool)

(assert (=> b!4430589 (=> (not res!1832685) (not e!2758686))))

(assert (=> b!4430589 (= res!1832685 (not (containsKey!1161 (t!356725 (t!356725 newBucket!194)) (_1!28051 (h!55360 (t!356725 newBucket!194))))))))

(declare-fun b!4430590 () Bool)

(assert (=> b!4430590 (= e!2758686 (noDuplicateKeys!784 (t!356725 (t!356725 newBucket!194))))))

(assert (= (and d!1343485 (not res!1832684)) b!4430589))

(assert (= (and b!4430589 res!1832685) b!4430590))

(declare-fun m!5114667 () Bool)

(assert (=> b!4430589 m!5114667))

(declare-fun m!5114669 () Bool)

(assert (=> b!4430590 m!5114669))

(assert (=> b!4430245 d!1343485))

(declare-fun d!1343489 () Bool)

(declare-fun lt!1629376 () Bool)

(assert (=> d!1343489 (= lt!1629376 (set.member key!3717 (content!7973 (keys!16975 (extractMap!845 (toList!3555 lm!1616))))))))

(declare-fun e!2758688 () Bool)

(assert (=> d!1343489 (= lt!1629376 e!2758688)))

(declare-fun res!1832687 () Bool)

(assert (=> d!1343489 (=> (not res!1832687) (not e!2758688))))

(assert (=> d!1343489 (= res!1832687 (is-Cons!49667 (keys!16975 (extractMap!845 (toList!3555 lm!1616)))))))

(assert (=> d!1343489 (= (contains!12193 (keys!16975 (extractMap!845 (toList!3555 lm!1616))) key!3717) lt!1629376)))

(declare-fun b!4430591 () Bool)

(declare-fun e!2758687 () Bool)

(assert (=> b!4430591 (= e!2758688 e!2758687)))

(declare-fun res!1832686 () Bool)

(assert (=> b!4430591 (=> res!1832686 e!2758687)))

(assert (=> b!4430591 (= res!1832686 (= (h!55365 (keys!16975 (extractMap!845 (toList!3555 lm!1616)))) key!3717))))

(declare-fun b!4430592 () Bool)

(assert (=> b!4430592 (= e!2758687 (contains!12193 (t!356729 (keys!16975 (extractMap!845 (toList!3555 lm!1616)))) key!3717))))

(assert (= (and d!1343489 res!1832687) b!4430591))

(assert (= (and b!4430591 (not res!1832686)) b!4430592))

(assert (=> d!1343489 m!5114319))

(declare-fun m!5114671 () Bool)

(assert (=> d!1343489 m!5114671))

(declare-fun m!5114673 () Bool)

(assert (=> d!1343489 m!5114673))

(declare-fun m!5114677 () Bool)

(assert (=> b!4430592 m!5114677))

(assert (=> b!4430229 d!1343489))

(assert (=> b!4430229 d!1343395))

(declare-fun d!1343491 () Bool)

(declare-fun res!1832696 () Bool)

(declare-fun e!2758697 () Bool)

(assert (=> d!1343491 (=> res!1832696 e!2758697)))

(assert (=> d!1343491 (= res!1832696 (and (is-Cons!49663 (t!356725 newBucket!194)) (= (_1!28051 (h!55360 (t!356725 newBucket!194))) (_1!28051 (h!55360 newBucket!194)))))))

(assert (=> d!1343491 (= (containsKey!1161 (t!356725 newBucket!194) (_1!28051 (h!55360 newBucket!194))) e!2758697)))

(declare-fun b!4430601 () Bool)

(declare-fun e!2758698 () Bool)

(assert (=> b!4430601 (= e!2758697 e!2758698)))

(declare-fun res!1832697 () Bool)

(assert (=> b!4430601 (=> (not res!1832697) (not e!2758698))))

(assert (=> b!4430601 (= res!1832697 (is-Cons!49663 (t!356725 newBucket!194)))))

(declare-fun b!4430602 () Bool)

(assert (=> b!4430602 (= e!2758698 (containsKey!1161 (t!356725 (t!356725 newBucket!194)) (_1!28051 (h!55360 newBucket!194))))))

(assert (= (and d!1343491 (not res!1832696)) b!4430601))

(assert (= (and b!4430601 res!1832697) b!4430602))

(declare-fun m!5114679 () Bool)

(assert (=> b!4430602 m!5114679))

(assert (=> b!4430244 d!1343491))

(declare-fun d!1343495 () Bool)

(assert (=> d!1343495 (isDefined!8039 (getValueByKey!733 (toList!3555 lm!1616) hash!366))))

(declare-fun lt!1629384 () Unit!82629)

(declare-fun choose!28039 (List!49788 (_ BitVec 64)) Unit!82629)

(assert (=> d!1343495 (= lt!1629384 (choose!28039 (toList!3555 lm!1616) hash!366))))

(declare-fun e!2758705 () Bool)

(assert (=> d!1343495 e!2758705))

(declare-fun res!1832704 () Bool)

(assert (=> d!1343495 (=> (not res!1832704) (not e!2758705))))

(assert (=> d!1343495 (= res!1832704 (isStrictlySorted!243 (toList!3555 lm!1616)))))

(assert (=> d!1343495 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!642 (toList!3555 lm!1616) hash!366) lt!1629384)))

(declare-fun b!4430609 () Bool)

(assert (=> b!4430609 (= e!2758705 (containsKey!1159 (toList!3555 lm!1616) hash!366))))

(assert (= (and d!1343495 res!1832704) b!4430609))

(assert (=> d!1343495 m!5114263))

(assert (=> d!1343495 m!5114263))

(assert (=> d!1343495 m!5114265))

(declare-fun m!5114687 () Bool)

(assert (=> d!1343495 m!5114687))

(assert (=> d!1343495 m!5114271))

(assert (=> b!4430609 m!5114259))

(assert (=> b!4430164 d!1343495))

(declare-fun d!1343499 () Bool)

(declare-fun isEmpty!28359 (Option!10747) Bool)

(assert (=> d!1343499 (= (isDefined!8039 (getValueByKey!733 (toList!3555 lm!1616) hash!366)) (not (isEmpty!28359 (getValueByKey!733 (toList!3555 lm!1616) hash!366))))))

(declare-fun bs!759762 () Bool)

(assert (= bs!759762 d!1343499))

(assert (=> bs!759762 m!5114263))

(declare-fun m!5114691 () Bool)

(assert (=> bs!759762 m!5114691))

(assert (=> b!4430164 d!1343499))

(assert (=> b!4430164 d!1343469))

(assert (=> b!4430228 d!1343399))

(assert (=> b!4430228 d!1343401))

(assert (=> b!4430227 d!1343455))

(declare-fun d!1343503 () Bool)

(assert (=> d!1343503 (containsKey!1160 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717)))

(declare-fun lt!1629388 () Unit!82629)

(declare-fun choose!28040 (List!49787 K!11033) Unit!82629)

(assert (=> d!1343503 (= lt!1629388 (choose!28040 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717))))

(assert (=> d!1343503 (invariantList!816 (toList!3556 (extractMap!845 (toList!3555 lm!1616))))))

(assert (=> d!1343503 (= (lemmaInGetKeysListThenContainsKey!261 (toList!3556 (extractMap!845 (toList!3555 lm!1616))) key!3717) lt!1629388)))

(declare-fun bs!759763 () Bool)

(assert (= bs!759763 d!1343503))

(assert (=> bs!759763 m!5114323))

(declare-fun m!5114693 () Bool)

(assert (=> bs!759763 m!5114693))

(assert (=> bs!759763 m!5114441))

(assert (=> b!4430227 d!1343503))

(declare-fun d!1343505 () Bool)

(declare-fun res!1832718 () Bool)

(declare-fun e!2758719 () Bool)

(assert (=> d!1343505 (=> res!1832718 e!2758719)))

(assert (=> d!1343505 (= res!1832718 (or (is-Nil!49664 (toList!3555 lm!1616)) (is-Nil!49664 (t!356726 (toList!3555 lm!1616)))))))

(assert (=> d!1343505 (= (isStrictlySorted!243 (toList!3555 lm!1616)) e!2758719)))

(declare-fun b!4430623 () Bool)

(declare-fun e!2758720 () Bool)

(assert (=> b!4430623 (= e!2758719 e!2758720)))

(declare-fun res!1832719 () Bool)

(assert (=> b!4430623 (=> (not res!1832719) (not e!2758720))))

(assert (=> b!4430623 (= res!1832719 (bvslt (_1!28052 (h!55361 (toList!3555 lm!1616))) (_1!28052 (h!55361 (t!356726 (toList!3555 lm!1616))))))))

(declare-fun b!4430624 () Bool)

(assert (=> b!4430624 (= e!2758720 (isStrictlySorted!243 (t!356726 (toList!3555 lm!1616))))))

(assert (= (and d!1343505 (not res!1832718)) b!4430623))

(assert (= (and b!4430623 res!1832719) b!4430624))

(declare-fun m!5114701 () Bool)

(assert (=> b!4430624 m!5114701))

(assert (=> d!1343333 d!1343505))

(assert (=> b!4430166 d!1343499))

(assert (=> b!4430166 d!1343469))

(assert (=> b!4430226 d!1343489))

(assert (=> b!4430226 d!1343395))

(declare-fun b!4430625 () Bool)

(declare-fun tp!1333545 () Bool)

(declare-fun e!2758721 () Bool)

(assert (=> b!4430625 (= e!2758721 (and tp_is_empty!26383 tp_is_empty!26381 tp!1333545))))

(assert (=> b!4430255 (= tp!1333535 e!2758721)))

(assert (= (and b!4430255 (is-Cons!49663 (t!356725 (t!356725 newBucket!194)))) b!4430625))

(declare-fun b!4430626 () Bool)

(declare-fun e!2758722 () Bool)

(declare-fun tp!1333546 () Bool)

(assert (=> b!4430626 (= e!2758722 (and tp_is_empty!26383 tp_is_empty!26381 tp!1333546))))

(assert (=> b!4430250 (= tp!1333531 e!2758722)))

(assert (= (and b!4430250 (is-Cons!49663 (_2!28052 (h!55361 (toList!3555 lm!1616))))) b!4430626))

(declare-fun b!4430627 () Bool)

(declare-fun e!2758723 () Bool)

(declare-fun tp!1333547 () Bool)

(declare-fun tp!1333548 () Bool)

(assert (=> b!4430627 (= e!2758723 (and tp!1333547 tp!1333548))))

(assert (=> b!4430250 (= tp!1333532 e!2758723)))

(assert (= (and b!4430250 (is-Cons!49664 (t!356726 (toList!3555 lm!1616)))) b!4430627))

(declare-fun b_lambda!143595 () Bool)

(assert (= b_lambda!143589 (or d!1343351 b_lambda!143595)))

(declare-fun bs!759764 () Bool)

(declare-fun d!1343511 () Bool)

(assert (= bs!759764 (and d!1343511 d!1343351)))

(assert (=> bs!759764 (= (dynLambda!20859 lambda!155098 (h!55361 (toList!3555 lm!1616))) (allKeysSameHash!744 (_2!28052 (h!55361 (toList!3555 lm!1616))) (_1!28052 (h!55361 (toList!3555 lm!1616))) hashF!1220))))

(declare-fun m!5114703 () Bool)

(assert (=> bs!759764 m!5114703))

(assert (=> b!4430471 d!1343511))

(declare-fun b_lambda!143597 () Bool)

(assert (= b_lambda!143583 (or start!432518 b_lambda!143597)))

(declare-fun bs!759765 () Bool)

(declare-fun d!1343513 () Bool)

(assert (= bs!759765 (and d!1343513 start!432518)))

(assert (=> bs!759765 (= (dynLambda!20859 lambda!155083 (h!55361 (t!356726 (toList!3555 lt!1629126)))) (noDuplicateKeys!784 (_2!28052 (h!55361 (t!356726 (toList!3555 lt!1629126))))))))

(declare-fun m!5114705 () Bool)

(assert (=> bs!759765 m!5114705))

(assert (=> b!4430397 d!1343513))

(declare-fun b_lambda!143599 () Bool)

(assert (= b_lambda!143581 (or start!432518 b_lambda!143599)))

(declare-fun bs!759766 () Bool)

(declare-fun d!1343515 () Bool)

(assert (= bs!759766 (and d!1343515 start!432518)))

(assert (=> bs!759766 (= (dynLambda!20859 lambda!155083 (h!55361 (toList!3555 (+!1138 lm!1616 (tuple2!49517 hash!366 newBucket!194))))) (noDuplicateKeys!784 (_2!28052 (h!55361 (toList!3555 (+!1138 lm!1616 (tuple2!49517 hash!366 newBucket!194)))))))))

(declare-fun m!5114707 () Bool)

(assert (=> bs!759766 m!5114707))

(assert (=> b!4430365 d!1343515))

(declare-fun b_lambda!143601 () Bool)

(assert (= b_lambda!143591 (or d!1343357 b_lambda!143601)))

(declare-fun bs!759767 () Bool)

(declare-fun d!1343517 () Bool)

(assert (= bs!759767 (and d!1343517 d!1343357)))

(assert (=> bs!759767 (= (dynLambda!20859 lambda!155101 (h!55361 (toList!3555 lm!1616))) (noDuplicateKeys!784 (_2!28052 (h!55361 (toList!3555 lm!1616)))))))

(assert (=> bs!759767 m!5114357))

(assert (=> b!4430587 d!1343517))

(declare-fun b_lambda!143603 () Bool)

(assert (= b_lambda!143579 (or d!1343339 b_lambda!143603)))

(declare-fun bs!759768 () Bool)

(declare-fun d!1343519 () Bool)

(assert (= bs!759768 (and d!1343519 d!1343339)))

(assert (=> bs!759768 (= (dynLambda!20861 lambda!155095 (h!55360 newBucket!194)) (= (hash!2197 hashF!1220 (_1!28051 (h!55360 newBucket!194))) hash!366))))

(declare-fun m!5114709 () Bool)

(assert (=> bs!759768 m!5114709))

(assert (=> b!4430363 d!1343519))

(declare-fun b_lambda!143605 () Bool)

(assert (= b_lambda!143587 (or start!432518 b_lambda!143605)))

(declare-fun bs!759769 () Bool)

(declare-fun d!1343521 () Bool)

(assert (= bs!759769 (and d!1343521 start!432518)))

(assert (=> bs!759769 (= (dynLambda!20859 lambda!155083 (h!55361 (t!356726 (toList!3555 lm!1616)))) (noDuplicateKeys!784 (_2!28052 (h!55361 (t!356726 (toList!3555 lm!1616))))))))

(declare-fun m!5114711 () Bool)

(assert (=> bs!759769 m!5114711))

(assert (=> b!4430463 d!1343521))

(push 1)

(assert (not d!1343399))

(assert (not d!1343395))

(assert (not b!4430589))

(assert (not d!1343423))

(assert (not b!4430496))

(assert (not bs!759767))

(assert (not b_lambda!143565))

(assert (not b_lambda!143597))

(assert (not b_lambda!143601))

(assert (not d!1343499))

(assert (not b_lambda!143569))

(assert (not b!4430572))

(assert (not b!4430399))

(assert (not bs!759764))

(assert (not b!4430336))

(assert (not b!4430508))

(assert (not b!4430464))

(assert (not d!1343495))

(assert (not b_lambda!143605))

(assert (not d!1343475))

(assert (not d!1343415))

(assert (not b!4430625))

(assert (not b!4430391))

(assert (not b!4430352))

(assert (not d!1343471))

(assert (not d!1343481))

(assert (not b!4430592))

(assert (not b!4430590))

(assert (not b!4430444))

(assert (not b!4430445))

(assert (not d!1343489))

(assert (not b!4430588))

(assert (not b!4430392))

(assert (not b!4430334))

(assert (not b!4430398))

(assert (not b_lambda!143599))

(assert (not b!4430602))

(assert (not b!4430358))

(assert (not b!4430578))

(assert (not b!4430505))

(assert (not b!4430400))

(assert (not bm!308254))

(assert (not bm!308271))

(assert (not b!4430497))

(assert (not d!1343403))

(assert (not b!4430349))

(assert (not b_lambda!143603))

(assert (not bs!759769))

(assert (not d!1343407))

(assert (not b!4430470))

(assert (not d!1343397))

(assert (not b!4430514))

(assert (not d!1343449))

(assert (not b!4430461))

(assert (not b_lambda!143567))

(assert (not b!4430515))

(assert (not d!1343417))

(assert (not b!4430624))

(assert (not b!4430581))

(assert (not b!4430443))

(assert (not b!4430609))

(assert (not b_lambda!143595))

(assert (not b!4430626))

(assert (not d!1343413))

(assert (not d!1343461))

(assert (not b!4430327))

(assert (not b!4430390))

(assert (not b!4430387))

(assert (not b!4430627))

(assert (not bm!308252))

(assert (not b!4430441))

(assert (not b!4430498))

(assert (not bm!308253))

(assert (not b!4430489))

(assert (not d!1343477))

(assert (not bs!759765))

(assert (not b!4430335))

(assert tp_is_empty!26383)

(assert (not b!4430364))

(assert (not b!4430388))

(assert (not b!4430366))

(assert (not bs!759768))

(assert (not b!4430351))

(assert tp_is_empty!26381)

(assert (not b!4430503))

(assert (not b!4430472))

(assert (not bs!759766))

(assert (not d!1343503))

(assert (not b!4430501))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

