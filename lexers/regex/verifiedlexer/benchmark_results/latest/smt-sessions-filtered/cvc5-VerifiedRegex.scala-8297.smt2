; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!430702 () Bool)

(assert start!430702)

(declare-fun tp_is_empty!26149 () Bool)

(declare-fun e!2752156 () Bool)

(declare-fun tp!1332905 () Bool)

(declare-fun b!4420040 () Bool)

(declare-fun tp_is_empty!26151 () Bool)

(assert (=> b!4420040 (= e!2752156 (and tp_is_empty!26151 tp_is_empty!26149 tp!1332905))))

(declare-datatypes ((V!11134 0))(
  ( (V!11135 (val!16981 Int)) )
))
(declare-fun newValue!93 () V!11134)

(declare-fun e!2752160 () Bool)

(declare-datatypes ((K!10888 0))(
  ( (K!10889 (val!16982 Int)) )
))
(declare-fun key!3717 () K!10888)

(declare-datatypes ((tuple2!49282 0))(
  ( (tuple2!49283 (_1!27935 K!10888) (_2!27935 V!11134)) )
))
(declare-datatypes ((List!49646 0))(
  ( (Nil!49522) (Cons!49522 (h!55193 tuple2!49282) (t!356584 List!49646)) )
))
(declare-fun newBucket!194 () List!49646)

(declare-datatypes ((tuple2!49284 0))(
  ( (tuple2!49285 (_1!27936 (_ BitVec 64)) (_2!27936 List!49646)) )
))
(declare-datatypes ((List!49647 0))(
  ( (Nil!49523) (Cons!49523 (h!55194 tuple2!49284) (t!356585 List!49647)) )
))
(declare-datatypes ((ListLongMap!2089 0))(
  ( (ListLongMap!2090 (toList!3439 List!49647)) )
))
(declare-fun lm!1616 () ListLongMap!2089)

(declare-fun b!4420041 () Bool)

(declare-fun hash!366 () (_ BitVec 64))

(declare-fun apply!11578 (ListLongMap!2089 (_ BitVec 64)) List!49646)

(assert (=> b!4420041 (= e!2752160 (= newBucket!194 (Cons!49522 (tuple2!49283 key!3717 newValue!93) (apply!11578 lm!1616 hash!366))))))

(declare-fun b!4420042 () Bool)

(declare-fun e!2752155 () Bool)

(declare-fun tp!1332906 () Bool)

(assert (=> b!4420042 (= e!2752155 tp!1332906)))

(declare-fun b!4420043 () Bool)

(declare-fun res!1826585 () Bool)

(declare-fun e!2752158 () Bool)

(assert (=> b!4420043 (=> (not res!1826585) (not e!2752158))))

(declare-datatypes ((Hashable!5120 0))(
  ( (HashableExt!5119 (__x!30823 Int)) )
))
(declare-fun hashF!1220 () Hashable!5120)

(declare-fun hash!2056 (Hashable!5120 K!10888) (_ BitVec 64))

(assert (=> b!4420043 (= res!1826585 (= (hash!2056 hashF!1220 key!3717) hash!366))))

(declare-fun e!2752161 () Bool)

(declare-fun b!4420044 () Bool)

(declare-fun lt!1620480 () Bool)

(assert (=> b!4420044 (= e!2752161 (and (not lt!1620480) (= newBucket!194 (Cons!49522 (tuple2!49283 key!3717 newValue!93) Nil!49522))))))

(declare-fun b!4420045 () Bool)

(declare-fun res!1826594 () Bool)

(assert (=> b!4420045 (=> (not res!1826594) (not e!2752158))))

(declare-datatypes ((ListMap!2683 0))(
  ( (ListMap!2684 (toList!3440 List!49646)) )
))
(declare-fun contains!11995 (ListMap!2683 K!10888) Bool)

(declare-fun extractMap!787 (List!49647) ListMap!2683)

(assert (=> b!4420045 (= res!1826594 (not (contains!11995 (extractMap!787 (toList!3439 lm!1616)) key!3717)))))

(declare-fun b!4420046 () Bool)

(declare-fun e!2752157 () Bool)

(declare-fun e!2752159 () Bool)

(assert (=> b!4420046 (= e!2752157 (not e!2752159))))

(declare-fun res!1826586 () Bool)

(assert (=> b!4420046 (=> res!1826586 e!2752159)))

(declare-fun lt!1620486 () ListLongMap!2089)

(declare-fun lambda!152817 () Int)

(declare-fun forall!9521 (List!49647 Int) Bool)

(assert (=> b!4420046 (= res!1826586 (not (forall!9521 (toList!3439 lt!1620486) lambda!152817)))))

(assert (=> b!4420046 (forall!9521 (toList!3439 lt!1620486) lambda!152817)))

(declare-fun lt!1620483 () tuple2!49284)

(declare-fun +!1036 (ListLongMap!2089 tuple2!49284) ListLongMap!2089)

(assert (=> b!4420046 (= lt!1620486 (+!1036 lm!1616 lt!1620483))))

(assert (=> b!4420046 (= lt!1620483 (tuple2!49285 hash!366 newBucket!194))))

(declare-datatypes ((Unit!81272 0))(
  ( (Unit!81273) )
))
(declare-fun lt!1620484 () Unit!81272)

(declare-fun addValidProp!370 (ListLongMap!2089 Int (_ BitVec 64) List!49646) Unit!81272)

(assert (=> b!4420046 (= lt!1620484 (addValidProp!370 lm!1616 lambda!152817 hash!366 newBucket!194))))

(declare-fun b!4420047 () Bool)

(declare-fun lt!1620481 () ListLongMap!2089)

(assert (=> b!4420047 (= e!2752159 (forall!9521 (toList!3439 lt!1620481) lambda!152817))))

(declare-fun eq!384 (ListMap!2683 ListMap!2683) Bool)

(declare-fun +!1037 (ListMap!2683 tuple2!49282) ListMap!2683)

(assert (=> b!4420047 (eq!384 (extractMap!787 (toList!3439 (+!1036 lt!1620481 lt!1620483))) (+!1037 (extractMap!787 (toList!3439 lt!1620481)) (tuple2!49283 key!3717 newValue!93)))))

(declare-fun lt!1620485 () Unit!81272)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!100 (ListLongMap!2089 (_ BitVec 64) List!49646 K!10888 V!11134 Hashable!5120) Unit!81272)

(assert (=> b!4420047 (= lt!1620485 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!100 lt!1620481 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(declare-fun tail!7224 (ListLongMap!2089) ListLongMap!2089)

(assert (=> b!4420047 (= lt!1620481 (tail!7224 lm!1616))))

(declare-fun lt!1620482 () Unit!81272)

(declare-fun e!2752162 () Unit!81272)

(assert (=> b!4420047 (= lt!1620482 e!2752162)))

(declare-fun c!752354 () Bool)

(declare-fun tail!7225 (List!49647) List!49647)

(assert (=> b!4420047 (= c!752354 (contains!11995 (extractMap!787 (tail!7225 (toList!3439 lm!1616))) key!3717))))

(declare-fun b!4420048 () Bool)

(declare-fun Unit!81274 () Unit!81272)

(assert (=> b!4420048 (= e!2752162 Unit!81274)))

(declare-fun res!1826584 () Bool)

(assert (=> start!430702 (=> (not res!1826584) (not e!2752158))))

(assert (=> start!430702 (= res!1826584 (forall!9521 (toList!3439 lm!1616) lambda!152817))))

(assert (=> start!430702 e!2752158))

(assert (=> start!430702 tp_is_empty!26149))

(assert (=> start!430702 tp_is_empty!26151))

(assert (=> start!430702 e!2752156))

(declare-fun inv!65075 (ListLongMap!2089) Bool)

(assert (=> start!430702 (and (inv!65075 lm!1616) e!2752155)))

(assert (=> start!430702 true))

(declare-fun b!4420049 () Bool)

(declare-fun res!1826588 () Bool)

(assert (=> b!4420049 (=> (not res!1826588) (not e!2752157))))

(assert (=> b!4420049 (= res!1826588 (forall!9521 (toList!3439 lm!1616) lambda!152817))))

(declare-fun b!4420050 () Bool)

(declare-fun res!1826595 () Bool)

(assert (=> b!4420050 (=> (not res!1826595) (not e!2752158))))

(declare-fun allKeysSameHash!686 (List!49646 (_ BitVec 64) Hashable!5120) Bool)

(assert (=> b!4420050 (= res!1826595 (allKeysSameHash!686 newBucket!194 hash!366 hashF!1220))))

(declare-fun b!4420051 () Bool)

(declare-fun res!1826593 () Bool)

(assert (=> b!4420051 (=> (not res!1826593) (not e!2752157))))

(declare-fun noDuplicateKeys!726 (List!49646) Bool)

(assert (=> b!4420051 (= res!1826593 (noDuplicateKeys!726 newBucket!194))))

(declare-fun b!4420052 () Bool)

(declare-fun Unit!81275 () Unit!81272)

(assert (=> b!4420052 (= e!2752162 Unit!81275)))

(declare-fun lt!1620487 () Unit!81272)

(declare-fun lemmaExtractTailMapContainsThenExtractMapDoes!13 (ListLongMap!2089 K!10888 Hashable!5120) Unit!81272)

(assert (=> b!4420052 (= lt!1620487 (lemmaExtractTailMapContainsThenExtractMapDoes!13 lm!1616 key!3717 hashF!1220))))

(assert (=> b!4420052 false))

(declare-fun b!4420053 () Bool)

(assert (=> b!4420053 (= e!2752158 e!2752157)))

(declare-fun res!1826590 () Bool)

(assert (=> b!4420053 (=> (not res!1826590) (not e!2752157))))

(assert (=> b!4420053 (= res!1826590 e!2752161)))

(declare-fun res!1826587 () Bool)

(assert (=> b!4420053 (=> res!1826587 e!2752161)))

(assert (=> b!4420053 (= res!1826587 e!2752160)))

(declare-fun res!1826589 () Bool)

(assert (=> b!4420053 (=> (not res!1826589) (not e!2752160))))

(assert (=> b!4420053 (= res!1826589 lt!1620480)))

(declare-fun contains!11996 (ListLongMap!2089 (_ BitVec 64)) Bool)

(assert (=> b!4420053 (= lt!1620480 (contains!11996 lm!1616 hash!366))))

(declare-fun b!4420054 () Bool)

(declare-fun res!1826591 () Bool)

(assert (=> b!4420054 (=> res!1826591 e!2752159)))

(assert (=> b!4420054 (= res!1826591 (or (and (is-Cons!49523 (toList!3439 lm!1616)) (= (_1!27936 (h!55194 (toList!3439 lm!1616))) hash!366)) (not (is-Cons!49523 (toList!3439 lm!1616))) (= (_1!27936 (h!55194 (toList!3439 lm!1616))) hash!366)))))

(declare-fun b!4420055 () Bool)

(declare-fun res!1826592 () Bool)

(assert (=> b!4420055 (=> (not res!1826592) (not e!2752158))))

(declare-fun allKeysSameHashInMap!832 (ListLongMap!2089 Hashable!5120) Bool)

(assert (=> b!4420055 (= res!1826592 (allKeysSameHashInMap!832 lm!1616 hashF!1220))))

(assert (= (and start!430702 res!1826584) b!4420055))

(assert (= (and b!4420055 res!1826592) b!4420043))

(assert (= (and b!4420043 res!1826585) b!4420050))

(assert (= (and b!4420050 res!1826595) b!4420045))

(assert (= (and b!4420045 res!1826594) b!4420053))

(assert (= (and b!4420053 res!1826589) b!4420041))

(assert (= (and b!4420053 (not res!1826587)) b!4420044))

(assert (= (and b!4420053 res!1826590) b!4420051))

(assert (= (and b!4420051 res!1826593) b!4420049))

(assert (= (and b!4420049 res!1826588) b!4420046))

(assert (= (and b!4420046 (not res!1826586)) b!4420054))

(assert (= (and b!4420054 (not res!1826591)) b!4420047))

(assert (= (and b!4420047 c!752354) b!4420052))

(assert (= (and b!4420047 (not c!752354)) b!4420048))

(assert (= (and start!430702 (is-Cons!49522 newBucket!194)) b!4420040))

(assert (= start!430702 b!4420042))

(declare-fun m!5097123 () Bool)

(assert (=> b!4420051 m!5097123))

(declare-fun m!5097125 () Bool)

(assert (=> b!4420045 m!5097125))

(assert (=> b!4420045 m!5097125))

(declare-fun m!5097127 () Bool)

(assert (=> b!4420045 m!5097127))

(declare-fun m!5097129 () Bool)

(assert (=> b!4420052 m!5097129))

(declare-fun m!5097131 () Bool)

(assert (=> b!4420053 m!5097131))

(declare-fun m!5097133 () Bool)

(assert (=> b!4420049 m!5097133))

(declare-fun m!5097135 () Bool)

(assert (=> b!4420050 m!5097135))

(declare-fun m!5097137 () Bool)

(assert (=> b!4420041 m!5097137))

(declare-fun m!5097139 () Bool)

(assert (=> b!4420043 m!5097139))

(declare-fun m!5097141 () Bool)

(assert (=> b!4420055 m!5097141))

(declare-fun m!5097143 () Bool)

(assert (=> b!4420047 m!5097143))

(declare-fun m!5097145 () Bool)

(assert (=> b!4420047 m!5097145))

(declare-fun m!5097147 () Bool)

(assert (=> b!4420047 m!5097147))

(declare-fun m!5097149 () Bool)

(assert (=> b!4420047 m!5097149))

(declare-fun m!5097151 () Bool)

(assert (=> b!4420047 m!5097151))

(declare-fun m!5097153 () Bool)

(assert (=> b!4420047 m!5097153))

(assert (=> b!4420047 m!5097147))

(declare-fun m!5097155 () Bool)

(assert (=> b!4420047 m!5097155))

(declare-fun m!5097157 () Bool)

(assert (=> b!4420047 m!5097157))

(declare-fun m!5097159 () Bool)

(assert (=> b!4420047 m!5097159))

(assert (=> b!4420047 m!5097149))

(declare-fun m!5097161 () Bool)

(assert (=> b!4420047 m!5097161))

(assert (=> b!4420047 m!5097143))

(assert (=> b!4420047 m!5097159))

(assert (=> b!4420047 m!5097145))

(declare-fun m!5097163 () Bool)

(assert (=> b!4420047 m!5097163))

(assert (=> start!430702 m!5097133))

(declare-fun m!5097165 () Bool)

(assert (=> start!430702 m!5097165))

(declare-fun m!5097167 () Bool)

(assert (=> b!4420046 m!5097167))

(assert (=> b!4420046 m!5097167))

(declare-fun m!5097169 () Bool)

(assert (=> b!4420046 m!5097169))

(declare-fun m!5097171 () Bool)

(assert (=> b!4420046 m!5097171))

(push 1)

(assert tp_is_empty!26149)

(assert (not b!4420050))

(assert tp_is_empty!26151)

(assert (not b!4420049))

(assert (not b!4420043))

(assert (not start!430702))

(assert (not b!4420055))

(assert (not b!4420040))

(assert (not b!4420053))

(assert (not b!4420051))

(assert (not b!4420041))

(assert (not b!4420046))

(assert (not b!4420045))

(assert (not b!4420047))

(assert (not b!4420042))

(assert (not b!4420052))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1339152 () Bool)

(declare-fun res!1826636 () Bool)

(declare-fun e!2752191 () Bool)

(assert (=> d!1339152 (=> res!1826636 e!2752191)))

(assert (=> d!1339152 (= res!1826636 (is-Nil!49523 (toList!3439 lm!1616)))))

(assert (=> d!1339152 (= (forall!9521 (toList!3439 lm!1616) lambda!152817) e!2752191)))

(declare-fun b!4420108 () Bool)

(declare-fun e!2752192 () Bool)

(assert (=> b!4420108 (= e!2752191 e!2752192)))

(declare-fun res!1826637 () Bool)

(assert (=> b!4420108 (=> (not res!1826637) (not e!2752192))))

(declare-fun dynLambda!20825 (Int tuple2!49284) Bool)

(assert (=> b!4420108 (= res!1826637 (dynLambda!20825 lambda!152817 (h!55194 (toList!3439 lm!1616))))))

(declare-fun b!4420109 () Bool)

(assert (=> b!4420109 (= e!2752192 (forall!9521 (t!356585 (toList!3439 lm!1616)) lambda!152817))))

(assert (= (and d!1339152 (not res!1826636)) b!4420108))

(assert (= (and b!4420108 res!1826637) b!4420109))

(declare-fun b_lambda!142495 () Bool)

(assert (=> (not b_lambda!142495) (not b!4420108)))

(declare-fun m!5097223 () Bool)

(assert (=> b!4420108 m!5097223))

(declare-fun m!5097225 () Bool)

(assert (=> b!4420109 m!5097225))

(assert (=> b!4420049 d!1339152))

(declare-fun bm!307528 () Bool)

(declare-fun call!307533 () Bool)

(declare-datatypes ((List!49650 0))(
  ( (Nil!49526) (Cons!49526 (h!55199 K!10888) (t!356588 List!49650)) )
))
(declare-fun e!2752217 () List!49650)

(declare-fun contains!11999 (List!49650 K!10888) Bool)

(assert (=> bm!307528 (= call!307533 (contains!11999 e!2752217 key!3717))))

(declare-fun c!752364 () Bool)

(declare-fun c!752366 () Bool)

(assert (=> bm!307528 (= c!752364 c!752366)))

(declare-fun b!4420140 () Bool)

(declare-fun e!2752218 () Bool)

(declare-fun e!2752216 () Bool)

(assert (=> b!4420140 (= e!2752218 e!2752216)))

(declare-fun res!1826654 () Bool)

(assert (=> b!4420140 (=> (not res!1826654) (not e!2752216))))

(declare-datatypes ((Option!10695 0))(
  ( (None!10694) (Some!10694 (v!43864 V!11134)) )
))
(declare-fun isDefined!7988 (Option!10695) Bool)

(declare-fun getValueByKey!681 (List!49646 K!10888) Option!10695)

(assert (=> b!4420140 (= res!1826654 (isDefined!7988 (getValueByKey!681 (toList!3440 (extractMap!787 (toList!3439 lm!1616))) key!3717)))))

(declare-fun b!4420141 () Bool)

(declare-fun getKeysList!238 (List!49646) List!49650)

(assert (=> b!4420141 (= e!2752217 (getKeysList!238 (toList!3440 (extractMap!787 (toList!3439 lm!1616)))))))

(declare-fun b!4420142 () Bool)

(declare-fun e!2752215 () Unit!81272)

(declare-fun e!2752219 () Unit!81272)

(assert (=> b!4420142 (= e!2752215 e!2752219)))

(declare-fun c!752365 () Bool)

(assert (=> b!4420142 (= c!752365 call!307533)))

(declare-fun b!4420143 () Bool)

(declare-fun e!2752220 () Bool)

(declare-fun keys!16892 (ListMap!2683) List!49650)

(assert (=> b!4420143 (= e!2752220 (not (contains!11999 (keys!16892 (extractMap!787 (toList!3439 lm!1616))) key!3717)))))

(declare-fun b!4420144 () Bool)

(declare-fun Unit!81280 () Unit!81272)

(assert (=> b!4420144 (= e!2752219 Unit!81280)))

(declare-fun b!4420145 () Bool)

(declare-fun lt!1620535 () Unit!81272)

(assert (=> b!4420145 (= e!2752215 lt!1620535)))

(declare-fun lt!1620530 () Unit!81272)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!591 (List!49646 K!10888) Unit!81272)

(assert (=> b!4420145 (= lt!1620530 (lemmaContainsKeyImpliesGetValueByKeyDefined!591 (toList!3440 (extractMap!787 (toList!3439 lm!1616))) key!3717))))

(assert (=> b!4420145 (isDefined!7988 (getValueByKey!681 (toList!3440 (extractMap!787 (toList!3439 lm!1616))) key!3717))))

(declare-fun lt!1620528 () Unit!81272)

(assert (=> b!4420145 (= lt!1620528 lt!1620530)))

(declare-fun lemmaInListThenGetKeysListContains!235 (List!49646 K!10888) Unit!81272)

(assert (=> b!4420145 (= lt!1620535 (lemmaInListThenGetKeysListContains!235 (toList!3440 (extractMap!787 (toList!3439 lm!1616))) key!3717))))

(assert (=> b!4420145 call!307533))

(declare-fun b!4420146 () Bool)

(assert (=> b!4420146 (= e!2752216 (contains!11999 (keys!16892 (extractMap!787 (toList!3439 lm!1616))) key!3717))))

(declare-fun b!4420147 () Bool)

(assert (=> b!4420147 false))

(declare-fun lt!1620532 () Unit!81272)

(declare-fun lt!1620533 () Unit!81272)

(assert (=> b!4420147 (= lt!1620532 lt!1620533)))

(declare-fun containsKey!1069 (List!49646 K!10888) Bool)

(assert (=> b!4420147 (containsKey!1069 (toList!3440 (extractMap!787 (toList!3439 lm!1616))) key!3717)))

(declare-fun lemmaInGetKeysListThenContainsKey!236 (List!49646 K!10888) Unit!81272)

(assert (=> b!4420147 (= lt!1620533 (lemmaInGetKeysListThenContainsKey!236 (toList!3440 (extractMap!787 (toList!3439 lm!1616))) key!3717))))

(declare-fun Unit!81281 () Unit!81272)

(assert (=> b!4420147 (= e!2752219 Unit!81281)))

(declare-fun d!1339156 () Bool)

(assert (=> d!1339156 e!2752218))

(declare-fun res!1826655 () Bool)

(assert (=> d!1339156 (=> res!1826655 e!2752218)))

(assert (=> d!1339156 (= res!1826655 e!2752220)))

(declare-fun res!1826656 () Bool)

(assert (=> d!1339156 (=> (not res!1826656) (not e!2752220))))

(declare-fun lt!1620531 () Bool)

(assert (=> d!1339156 (= res!1826656 (not lt!1620531))))

(declare-fun lt!1620529 () Bool)

(assert (=> d!1339156 (= lt!1620531 lt!1620529)))

(declare-fun lt!1620534 () Unit!81272)

(assert (=> d!1339156 (= lt!1620534 e!2752215)))

(assert (=> d!1339156 (= c!752366 lt!1620529)))

(assert (=> d!1339156 (= lt!1620529 (containsKey!1069 (toList!3440 (extractMap!787 (toList!3439 lm!1616))) key!3717))))

(assert (=> d!1339156 (= (contains!11995 (extractMap!787 (toList!3439 lm!1616)) key!3717) lt!1620531)))

(declare-fun b!4420148 () Bool)

(assert (=> b!4420148 (= e!2752217 (keys!16892 (extractMap!787 (toList!3439 lm!1616))))))

(assert (= (and d!1339156 c!752366) b!4420145))

(assert (= (and d!1339156 (not c!752366)) b!4420142))

(assert (= (and b!4420142 c!752365) b!4420147))

(assert (= (and b!4420142 (not c!752365)) b!4420144))

(assert (= (or b!4420145 b!4420142) bm!307528))

(assert (= (and bm!307528 c!752364) b!4420141))

(assert (= (and bm!307528 (not c!752364)) b!4420148))

(assert (= (and d!1339156 res!1826656) b!4420143))

(assert (= (and d!1339156 (not res!1826655)) b!4420140))

(assert (= (and b!4420140 res!1826654) b!4420146))

(declare-fun m!5097235 () Bool)

(assert (=> d!1339156 m!5097235))

(declare-fun m!5097237 () Bool)

(assert (=> b!4420145 m!5097237))

(declare-fun m!5097239 () Bool)

(assert (=> b!4420145 m!5097239))

(assert (=> b!4420145 m!5097239))

(declare-fun m!5097241 () Bool)

(assert (=> b!4420145 m!5097241))

(declare-fun m!5097243 () Bool)

(assert (=> b!4420145 m!5097243))

(assert (=> b!4420143 m!5097125))

(declare-fun m!5097245 () Bool)

(assert (=> b!4420143 m!5097245))

(assert (=> b!4420143 m!5097245))

(declare-fun m!5097247 () Bool)

(assert (=> b!4420143 m!5097247))

(assert (=> b!4420140 m!5097239))

(assert (=> b!4420140 m!5097239))

(assert (=> b!4420140 m!5097241))

(declare-fun m!5097249 () Bool)

(assert (=> b!4420141 m!5097249))

(assert (=> b!4420148 m!5097125))

(assert (=> b!4420148 m!5097245))

(assert (=> b!4420146 m!5097125))

(assert (=> b!4420146 m!5097245))

(assert (=> b!4420146 m!5097245))

(assert (=> b!4420146 m!5097247))

(declare-fun m!5097251 () Bool)

(assert (=> bm!307528 m!5097251))

(assert (=> b!4420147 m!5097235))

(declare-fun m!5097253 () Bool)

(assert (=> b!4420147 m!5097253))

(assert (=> b!4420045 d!1339156))

(declare-fun bs!754500 () Bool)

(declare-fun d!1339164 () Bool)

(assert (= bs!754500 (and d!1339164 start!430702)))

(declare-fun lambda!152834 () Int)

(assert (=> bs!754500 (= lambda!152834 lambda!152817)))

(declare-fun lt!1620538 () ListMap!2683)

(declare-fun invariantList!790 (List!49646) Bool)

(assert (=> d!1339164 (invariantList!790 (toList!3440 lt!1620538))))

(declare-fun e!2752227 () ListMap!2683)

(assert (=> d!1339164 (= lt!1620538 e!2752227)))

(declare-fun c!752369 () Bool)

(assert (=> d!1339164 (= c!752369 (is-Cons!49523 (toList!3439 lm!1616)))))

(assert (=> d!1339164 (forall!9521 (toList!3439 lm!1616) lambda!152834)))

(assert (=> d!1339164 (= (extractMap!787 (toList!3439 lm!1616)) lt!1620538)))

(declare-fun b!4420157 () Bool)

(declare-fun addToMapMapFromBucket!365 (List!49646 ListMap!2683) ListMap!2683)

(assert (=> b!4420157 (= e!2752227 (addToMapMapFromBucket!365 (_2!27936 (h!55194 (toList!3439 lm!1616))) (extractMap!787 (t!356585 (toList!3439 lm!1616)))))))

(declare-fun b!4420158 () Bool)

(assert (=> b!4420158 (= e!2752227 (ListMap!2684 Nil!49522))))

(assert (= (and d!1339164 c!752369) b!4420157))

(assert (= (and d!1339164 (not c!752369)) b!4420158))

(declare-fun m!5097263 () Bool)

(assert (=> d!1339164 m!5097263))

(declare-fun m!5097265 () Bool)

(assert (=> d!1339164 m!5097265))

(declare-fun m!5097267 () Bool)

(assert (=> b!4420157 m!5097267))

(assert (=> b!4420157 m!5097267))

(declare-fun m!5097269 () Bool)

(assert (=> b!4420157 m!5097269))

(assert (=> b!4420045 d!1339164))

(declare-fun d!1339170 () Bool)

(declare-fun e!2752233 () Bool)

(assert (=> d!1339170 e!2752233))

(declare-fun res!1826671 () Bool)

(assert (=> d!1339170 (=> (not res!1826671) (not e!2752233))))

(declare-fun lt!1620560 () ListMap!2683)

(assert (=> d!1339170 (= res!1826671 (contains!11995 lt!1620560 (_1!27935 (tuple2!49283 key!3717 newValue!93))))))

(declare-fun lt!1620559 () List!49646)

(assert (=> d!1339170 (= lt!1620560 (ListMap!2684 lt!1620559))))

(declare-fun lt!1620562 () Unit!81272)

(declare-fun lt!1620561 () Unit!81272)

(assert (=> d!1339170 (= lt!1620562 lt!1620561)))

(assert (=> d!1339170 (= (getValueByKey!681 lt!1620559 (_1!27935 (tuple2!49283 key!3717 newValue!93))) (Some!10694 (_2!27935 (tuple2!49283 key!3717 newValue!93))))))

(declare-fun lemmaContainsTupThenGetReturnValue!416 (List!49646 K!10888 V!11134) Unit!81272)

(assert (=> d!1339170 (= lt!1620561 (lemmaContainsTupThenGetReturnValue!416 lt!1620559 (_1!27935 (tuple2!49283 key!3717 newValue!93)) (_2!27935 (tuple2!49283 key!3717 newValue!93))))))

(declare-fun insertNoDuplicatedKeys!180 (List!49646 K!10888 V!11134) List!49646)

(assert (=> d!1339170 (= lt!1620559 (insertNoDuplicatedKeys!180 (toList!3440 (extractMap!787 (toList!3439 lt!1620481))) (_1!27935 (tuple2!49283 key!3717 newValue!93)) (_2!27935 (tuple2!49283 key!3717 newValue!93))))))

(assert (=> d!1339170 (= (+!1037 (extractMap!787 (toList!3439 lt!1620481)) (tuple2!49283 key!3717 newValue!93)) lt!1620560)))

(declare-fun b!4420169 () Bool)

(declare-fun res!1826672 () Bool)

(assert (=> b!4420169 (=> (not res!1826672) (not e!2752233))))

(assert (=> b!4420169 (= res!1826672 (= (getValueByKey!681 (toList!3440 lt!1620560) (_1!27935 (tuple2!49283 key!3717 newValue!93))) (Some!10694 (_2!27935 (tuple2!49283 key!3717 newValue!93)))))))

(declare-fun b!4420170 () Bool)

(declare-fun contains!12000 (List!49646 tuple2!49282) Bool)

(assert (=> b!4420170 (= e!2752233 (contains!12000 (toList!3440 lt!1620560) (tuple2!49283 key!3717 newValue!93)))))

(assert (= (and d!1339170 res!1826671) b!4420169))

(assert (= (and b!4420169 res!1826672) b!4420170))

(declare-fun m!5097271 () Bool)

(assert (=> d!1339170 m!5097271))

(declare-fun m!5097273 () Bool)

(assert (=> d!1339170 m!5097273))

(declare-fun m!5097275 () Bool)

(assert (=> d!1339170 m!5097275))

(declare-fun m!5097277 () Bool)

(assert (=> d!1339170 m!5097277))

(declare-fun m!5097279 () Bool)

(assert (=> b!4420169 m!5097279))

(declare-fun m!5097281 () Bool)

(assert (=> b!4420170 m!5097281))

(assert (=> b!4420047 d!1339170))

(declare-fun d!1339172 () Bool)

(declare-fun e!2752236 () Bool)

(assert (=> d!1339172 e!2752236))

(declare-fun res!1826677 () Bool)

(assert (=> d!1339172 (=> (not res!1826677) (not e!2752236))))

(declare-fun lt!1620573 () ListLongMap!2089)

(assert (=> d!1339172 (= res!1826677 (contains!11996 lt!1620573 (_1!27936 lt!1620483)))))

(declare-fun lt!1620571 () List!49647)

(assert (=> d!1339172 (= lt!1620573 (ListLongMap!2090 lt!1620571))))

(declare-fun lt!1620574 () Unit!81272)

(declare-fun lt!1620572 () Unit!81272)

(assert (=> d!1339172 (= lt!1620574 lt!1620572)))

(declare-datatypes ((Option!10696 0))(
  ( (None!10695) (Some!10695 (v!43865 List!49646)) )
))
(declare-fun getValueByKey!682 (List!49647 (_ BitVec 64)) Option!10696)

(assert (=> d!1339172 (= (getValueByKey!682 lt!1620571 (_1!27936 lt!1620483)) (Some!10695 (_2!27936 lt!1620483)))))

(declare-fun lemmaContainsTupThenGetReturnValue!417 (List!49647 (_ BitVec 64) List!49646) Unit!81272)

(assert (=> d!1339172 (= lt!1620572 (lemmaContainsTupThenGetReturnValue!417 lt!1620571 (_1!27936 lt!1620483) (_2!27936 lt!1620483)))))

(declare-fun insertStrictlySorted!245 (List!49647 (_ BitVec 64) List!49646) List!49647)

(assert (=> d!1339172 (= lt!1620571 (insertStrictlySorted!245 (toList!3439 lt!1620481) (_1!27936 lt!1620483) (_2!27936 lt!1620483)))))

(assert (=> d!1339172 (= (+!1036 lt!1620481 lt!1620483) lt!1620573)))

(declare-fun b!4420175 () Bool)

(declare-fun res!1826678 () Bool)

(assert (=> b!4420175 (=> (not res!1826678) (not e!2752236))))

(assert (=> b!4420175 (= res!1826678 (= (getValueByKey!682 (toList!3439 lt!1620573) (_1!27936 lt!1620483)) (Some!10695 (_2!27936 lt!1620483))))))

(declare-fun b!4420176 () Bool)

(declare-fun contains!12001 (List!49647 tuple2!49284) Bool)

(assert (=> b!4420176 (= e!2752236 (contains!12001 (toList!3439 lt!1620573) lt!1620483))))

(assert (= (and d!1339172 res!1826677) b!4420175))

(assert (= (and b!4420175 res!1826678) b!4420176))

(declare-fun m!5097295 () Bool)

(assert (=> d!1339172 m!5097295))

(declare-fun m!5097297 () Bool)

(assert (=> d!1339172 m!5097297))

(declare-fun m!5097299 () Bool)

(assert (=> d!1339172 m!5097299))

(declare-fun m!5097301 () Bool)

(assert (=> d!1339172 m!5097301))

(declare-fun m!5097303 () Bool)

(assert (=> b!4420175 m!5097303))

(declare-fun m!5097305 () Bool)

(assert (=> b!4420176 m!5097305))

(assert (=> b!4420047 d!1339172))

(declare-fun d!1339176 () Bool)

(declare-fun content!7931 (List!49646) (Set tuple2!49282))

(assert (=> d!1339176 (= (eq!384 (extractMap!787 (toList!3439 (+!1036 lt!1620481 lt!1620483))) (+!1037 (extractMap!787 (toList!3439 lt!1620481)) (tuple2!49283 key!3717 newValue!93))) (= (content!7931 (toList!3440 (extractMap!787 (toList!3439 (+!1036 lt!1620481 lt!1620483))))) (content!7931 (toList!3440 (+!1037 (extractMap!787 (toList!3439 lt!1620481)) (tuple2!49283 key!3717 newValue!93))))))))

(declare-fun bs!754501 () Bool)

(assert (= bs!754501 d!1339176))

(declare-fun m!5097307 () Bool)

(assert (=> bs!754501 m!5097307))

(declare-fun m!5097309 () Bool)

(assert (=> bs!754501 m!5097309))

(assert (=> b!4420047 d!1339176))

(declare-fun d!1339178 () Bool)

(declare-fun res!1826679 () Bool)

(declare-fun e!2752237 () Bool)

(assert (=> d!1339178 (=> res!1826679 e!2752237)))

(assert (=> d!1339178 (= res!1826679 (is-Nil!49523 (toList!3439 lt!1620481)))))

(assert (=> d!1339178 (= (forall!9521 (toList!3439 lt!1620481) lambda!152817) e!2752237)))

(declare-fun b!4420177 () Bool)

(declare-fun e!2752238 () Bool)

(assert (=> b!4420177 (= e!2752237 e!2752238)))

(declare-fun res!1826680 () Bool)

(assert (=> b!4420177 (=> (not res!1826680) (not e!2752238))))

(assert (=> b!4420177 (= res!1826680 (dynLambda!20825 lambda!152817 (h!55194 (toList!3439 lt!1620481))))))

(declare-fun b!4420178 () Bool)

(assert (=> b!4420178 (= e!2752238 (forall!9521 (t!356585 (toList!3439 lt!1620481)) lambda!152817))))

(assert (= (and d!1339178 (not res!1826679)) b!4420177))

(assert (= (and b!4420177 res!1826680) b!4420178))

(declare-fun b_lambda!142501 () Bool)

(assert (=> (not b_lambda!142501) (not b!4420177)))

(declare-fun m!5097311 () Bool)

(assert (=> b!4420177 m!5097311))

(declare-fun m!5097313 () Bool)

(assert (=> b!4420178 m!5097313))

(assert (=> b!4420047 d!1339178))

(declare-fun bs!754502 () Bool)

(declare-fun d!1339180 () Bool)

(assert (= bs!754502 (and d!1339180 start!430702)))

(declare-fun lambda!152835 () Int)

(assert (=> bs!754502 (= lambda!152835 lambda!152817)))

(declare-fun bs!754503 () Bool)

(assert (= bs!754503 (and d!1339180 d!1339164)))

(assert (=> bs!754503 (= lambda!152835 lambda!152834)))

(declare-fun lt!1620575 () ListMap!2683)

(assert (=> d!1339180 (invariantList!790 (toList!3440 lt!1620575))))

(declare-fun e!2752239 () ListMap!2683)

(assert (=> d!1339180 (= lt!1620575 e!2752239)))

(declare-fun c!752370 () Bool)

(assert (=> d!1339180 (= c!752370 (is-Cons!49523 (toList!3439 (+!1036 lt!1620481 lt!1620483))))))

(assert (=> d!1339180 (forall!9521 (toList!3439 (+!1036 lt!1620481 lt!1620483)) lambda!152835)))

(assert (=> d!1339180 (= (extractMap!787 (toList!3439 (+!1036 lt!1620481 lt!1620483))) lt!1620575)))

(declare-fun b!4420179 () Bool)

(assert (=> b!4420179 (= e!2752239 (addToMapMapFromBucket!365 (_2!27936 (h!55194 (toList!3439 (+!1036 lt!1620481 lt!1620483)))) (extractMap!787 (t!356585 (toList!3439 (+!1036 lt!1620481 lt!1620483))))))))

(declare-fun b!4420180 () Bool)

(assert (=> b!4420180 (= e!2752239 (ListMap!2684 Nil!49522))))

(assert (= (and d!1339180 c!752370) b!4420179))

(assert (= (and d!1339180 (not c!752370)) b!4420180))

(declare-fun m!5097315 () Bool)

(assert (=> d!1339180 m!5097315))

(declare-fun m!5097317 () Bool)

(assert (=> d!1339180 m!5097317))

(declare-fun m!5097319 () Bool)

(assert (=> b!4420179 m!5097319))

(assert (=> b!4420179 m!5097319))

(declare-fun m!5097321 () Bool)

(assert (=> b!4420179 m!5097321))

(assert (=> b!4420047 d!1339180))

(declare-fun bs!754506 () Bool)

(declare-fun d!1339182 () Bool)

(assert (= bs!754506 (and d!1339182 start!430702)))

(declare-fun lambda!152838 () Int)

(assert (=> bs!754506 (= lambda!152838 lambda!152817)))

(declare-fun bs!754507 () Bool)

(assert (= bs!754507 (and d!1339182 d!1339164)))

(assert (=> bs!754507 (= lambda!152838 lambda!152834)))

(declare-fun bs!754508 () Bool)

(assert (= bs!754508 (and d!1339182 d!1339180)))

(assert (=> bs!754508 (= lambda!152838 lambda!152835)))

(assert (=> d!1339182 (eq!384 (extractMap!787 (toList!3439 (+!1036 lt!1620481 (tuple2!49285 hash!366 newBucket!194)))) (+!1037 (extractMap!787 (toList!3439 lt!1620481)) (tuple2!49283 key!3717 newValue!93)))))

(declare-fun lt!1620581 () Unit!81272)

(declare-fun choose!27840 (ListLongMap!2089 (_ BitVec 64) List!49646 K!10888 V!11134 Hashable!5120) Unit!81272)

(assert (=> d!1339182 (= lt!1620581 (choose!27840 lt!1620481 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220))))

(assert (=> d!1339182 (forall!9521 (toList!3439 lt!1620481) lambda!152838)))

(assert (=> d!1339182 (= (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!100 lt!1620481 hash!366 newBucket!194 key!3717 newValue!93 hashF!1220) lt!1620581)))

(declare-fun bs!754509 () Bool)

(assert (= bs!754509 d!1339182))

(declare-fun m!5097337 () Bool)

(assert (=> bs!754509 m!5097337))

(assert (=> bs!754509 m!5097159))

(assert (=> bs!754509 m!5097149))

(declare-fun m!5097339 () Bool)

(assert (=> bs!754509 m!5097339))

(declare-fun m!5097341 () Bool)

(assert (=> bs!754509 m!5097341))

(declare-fun m!5097343 () Bool)

(assert (=> bs!754509 m!5097343))

(assert (=> bs!754509 m!5097159))

(assert (=> bs!754509 m!5097341))

(assert (=> bs!754509 m!5097149))

(declare-fun m!5097345 () Bool)

(assert (=> bs!754509 m!5097345))

(assert (=> b!4420047 d!1339182))

(declare-fun bs!754510 () Bool)

(declare-fun d!1339190 () Bool)

(assert (= bs!754510 (and d!1339190 start!430702)))

(declare-fun lambda!152839 () Int)

(assert (=> bs!754510 (= lambda!152839 lambda!152817)))

(declare-fun bs!754511 () Bool)

(assert (= bs!754511 (and d!1339190 d!1339164)))

(assert (=> bs!754511 (= lambda!152839 lambda!152834)))

(declare-fun bs!754512 () Bool)

(assert (= bs!754512 (and d!1339190 d!1339180)))

(assert (=> bs!754512 (= lambda!152839 lambda!152835)))

(declare-fun bs!754513 () Bool)

(assert (= bs!754513 (and d!1339190 d!1339182)))

(assert (=> bs!754513 (= lambda!152839 lambda!152838)))

(declare-fun lt!1620582 () ListMap!2683)

(assert (=> d!1339190 (invariantList!790 (toList!3440 lt!1620582))))

(declare-fun e!2752243 () ListMap!2683)

(assert (=> d!1339190 (= lt!1620582 e!2752243)))

(declare-fun c!752371 () Bool)

(assert (=> d!1339190 (= c!752371 (is-Cons!49523 (toList!3439 lt!1620481)))))

(assert (=> d!1339190 (forall!9521 (toList!3439 lt!1620481) lambda!152839)))

(assert (=> d!1339190 (= (extractMap!787 (toList!3439 lt!1620481)) lt!1620582)))

(declare-fun b!4420185 () Bool)

(assert (=> b!4420185 (= e!2752243 (addToMapMapFromBucket!365 (_2!27936 (h!55194 (toList!3439 lt!1620481))) (extractMap!787 (t!356585 (toList!3439 lt!1620481)))))))

(declare-fun b!4420186 () Bool)

(assert (=> b!4420186 (= e!2752243 (ListMap!2684 Nil!49522))))

(assert (= (and d!1339190 c!752371) b!4420185))

(assert (= (and d!1339190 (not c!752371)) b!4420186))

(declare-fun m!5097347 () Bool)

(assert (=> d!1339190 m!5097347))

(declare-fun m!5097349 () Bool)

(assert (=> d!1339190 m!5097349))

(declare-fun m!5097351 () Bool)

(assert (=> b!4420185 m!5097351))

(assert (=> b!4420185 m!5097351))

(declare-fun m!5097353 () Bool)

(assert (=> b!4420185 m!5097353))

(assert (=> b!4420047 d!1339190))

(declare-fun d!1339192 () Bool)

(assert (=> d!1339192 (= (tail!7224 lm!1616) (ListLongMap!2090 (tail!7225 (toList!3439 lm!1616))))))

(declare-fun bs!754514 () Bool)

(assert (= bs!754514 d!1339192))

(assert (=> bs!754514 m!5097143))

(assert (=> b!4420047 d!1339192))

(declare-fun bs!754515 () Bool)

(declare-fun d!1339194 () Bool)

(assert (= bs!754515 (and d!1339194 start!430702)))

(declare-fun lambda!152840 () Int)

(assert (=> bs!754515 (= lambda!152840 lambda!152817)))

(declare-fun bs!754516 () Bool)

(assert (= bs!754516 (and d!1339194 d!1339182)))

(assert (=> bs!754516 (= lambda!152840 lambda!152838)))

(declare-fun bs!754517 () Bool)

(assert (= bs!754517 (and d!1339194 d!1339190)))

(assert (=> bs!754517 (= lambda!152840 lambda!152839)))

(declare-fun bs!754518 () Bool)

(assert (= bs!754518 (and d!1339194 d!1339164)))

(assert (=> bs!754518 (= lambda!152840 lambda!152834)))

(declare-fun bs!754519 () Bool)

(assert (= bs!754519 (and d!1339194 d!1339180)))

(assert (=> bs!754519 (= lambda!152840 lambda!152835)))

(declare-fun lt!1620583 () ListMap!2683)

(assert (=> d!1339194 (invariantList!790 (toList!3440 lt!1620583))))

(declare-fun e!2752244 () ListMap!2683)

(assert (=> d!1339194 (= lt!1620583 e!2752244)))

(declare-fun c!752372 () Bool)

(assert (=> d!1339194 (= c!752372 (is-Cons!49523 (tail!7225 (toList!3439 lm!1616))))))

(assert (=> d!1339194 (forall!9521 (tail!7225 (toList!3439 lm!1616)) lambda!152840)))

(assert (=> d!1339194 (= (extractMap!787 (tail!7225 (toList!3439 lm!1616))) lt!1620583)))

(declare-fun b!4420187 () Bool)

(assert (=> b!4420187 (= e!2752244 (addToMapMapFromBucket!365 (_2!27936 (h!55194 (tail!7225 (toList!3439 lm!1616)))) (extractMap!787 (t!356585 (tail!7225 (toList!3439 lm!1616))))))))

(declare-fun b!4420188 () Bool)

(assert (=> b!4420188 (= e!2752244 (ListMap!2684 Nil!49522))))

(assert (= (and d!1339194 c!752372) b!4420187))

(assert (= (and d!1339194 (not c!752372)) b!4420188))

(declare-fun m!5097355 () Bool)

(assert (=> d!1339194 m!5097355))

(assert (=> d!1339194 m!5097143))

(declare-fun m!5097357 () Bool)

(assert (=> d!1339194 m!5097357))

(declare-fun m!5097359 () Bool)

(assert (=> b!4420187 m!5097359))

(assert (=> b!4420187 m!5097359))

(declare-fun m!5097361 () Bool)

(assert (=> b!4420187 m!5097361))

(assert (=> b!4420047 d!1339194))

(declare-fun d!1339196 () Bool)

(assert (=> d!1339196 (= (tail!7225 (toList!3439 lm!1616)) (t!356585 (toList!3439 lm!1616)))))

(assert (=> b!4420047 d!1339196))

(declare-fun bm!307529 () Bool)

(declare-fun call!307534 () Bool)

(declare-fun e!2752247 () List!49650)

(assert (=> bm!307529 (= call!307534 (contains!11999 e!2752247 key!3717))))

(declare-fun c!752373 () Bool)

(declare-fun c!752375 () Bool)

(assert (=> bm!307529 (= c!752373 c!752375)))

(declare-fun b!4420189 () Bool)

(declare-fun e!2752248 () Bool)

(declare-fun e!2752246 () Bool)

(assert (=> b!4420189 (= e!2752248 e!2752246)))

(declare-fun res!1826684 () Bool)

(assert (=> b!4420189 (=> (not res!1826684) (not e!2752246))))

(assert (=> b!4420189 (= res!1826684 (isDefined!7988 (getValueByKey!681 (toList!3440 (extractMap!787 (tail!7225 (toList!3439 lm!1616)))) key!3717)))))

(declare-fun b!4420190 () Bool)

(assert (=> b!4420190 (= e!2752247 (getKeysList!238 (toList!3440 (extractMap!787 (tail!7225 (toList!3439 lm!1616))))))))

(declare-fun b!4420191 () Bool)

(declare-fun e!2752245 () Unit!81272)

(declare-fun e!2752249 () Unit!81272)

(assert (=> b!4420191 (= e!2752245 e!2752249)))

(declare-fun c!752374 () Bool)

(assert (=> b!4420191 (= c!752374 call!307534)))

(declare-fun b!4420192 () Bool)

(declare-fun e!2752250 () Bool)

(assert (=> b!4420192 (= e!2752250 (not (contains!11999 (keys!16892 (extractMap!787 (tail!7225 (toList!3439 lm!1616)))) key!3717)))))

(declare-fun b!4420193 () Bool)

(declare-fun Unit!81282 () Unit!81272)

(assert (=> b!4420193 (= e!2752249 Unit!81282)))

(declare-fun b!4420194 () Bool)

(declare-fun lt!1620591 () Unit!81272)

(assert (=> b!4420194 (= e!2752245 lt!1620591)))

(declare-fun lt!1620586 () Unit!81272)

(assert (=> b!4420194 (= lt!1620586 (lemmaContainsKeyImpliesGetValueByKeyDefined!591 (toList!3440 (extractMap!787 (tail!7225 (toList!3439 lm!1616)))) key!3717))))

(assert (=> b!4420194 (isDefined!7988 (getValueByKey!681 (toList!3440 (extractMap!787 (tail!7225 (toList!3439 lm!1616)))) key!3717))))

(declare-fun lt!1620584 () Unit!81272)

(assert (=> b!4420194 (= lt!1620584 lt!1620586)))

(assert (=> b!4420194 (= lt!1620591 (lemmaInListThenGetKeysListContains!235 (toList!3440 (extractMap!787 (tail!7225 (toList!3439 lm!1616)))) key!3717))))

(assert (=> b!4420194 call!307534))

(declare-fun b!4420195 () Bool)

(assert (=> b!4420195 (= e!2752246 (contains!11999 (keys!16892 (extractMap!787 (tail!7225 (toList!3439 lm!1616)))) key!3717))))

(declare-fun b!4420196 () Bool)

(assert (=> b!4420196 false))

(declare-fun lt!1620588 () Unit!81272)

(declare-fun lt!1620589 () Unit!81272)

(assert (=> b!4420196 (= lt!1620588 lt!1620589)))

(assert (=> b!4420196 (containsKey!1069 (toList!3440 (extractMap!787 (tail!7225 (toList!3439 lm!1616)))) key!3717)))

(assert (=> b!4420196 (= lt!1620589 (lemmaInGetKeysListThenContainsKey!236 (toList!3440 (extractMap!787 (tail!7225 (toList!3439 lm!1616)))) key!3717))))

(declare-fun Unit!81283 () Unit!81272)

(assert (=> b!4420196 (= e!2752249 Unit!81283)))

(declare-fun d!1339198 () Bool)

(assert (=> d!1339198 e!2752248))

(declare-fun res!1826685 () Bool)

(assert (=> d!1339198 (=> res!1826685 e!2752248)))

(assert (=> d!1339198 (= res!1826685 e!2752250)))

(declare-fun res!1826686 () Bool)

(assert (=> d!1339198 (=> (not res!1826686) (not e!2752250))))

(declare-fun lt!1620587 () Bool)

(assert (=> d!1339198 (= res!1826686 (not lt!1620587))))

(declare-fun lt!1620585 () Bool)

(assert (=> d!1339198 (= lt!1620587 lt!1620585)))

(declare-fun lt!1620590 () Unit!81272)

(assert (=> d!1339198 (= lt!1620590 e!2752245)))

(assert (=> d!1339198 (= c!752375 lt!1620585)))

(assert (=> d!1339198 (= lt!1620585 (containsKey!1069 (toList!3440 (extractMap!787 (tail!7225 (toList!3439 lm!1616)))) key!3717))))

(assert (=> d!1339198 (= (contains!11995 (extractMap!787 (tail!7225 (toList!3439 lm!1616))) key!3717) lt!1620587)))

(declare-fun b!4420197 () Bool)

(assert (=> b!4420197 (= e!2752247 (keys!16892 (extractMap!787 (tail!7225 (toList!3439 lm!1616)))))))

(assert (= (and d!1339198 c!752375) b!4420194))

(assert (= (and d!1339198 (not c!752375)) b!4420191))

(assert (= (and b!4420191 c!752374) b!4420196))

(assert (= (and b!4420191 (not c!752374)) b!4420193))

(assert (= (or b!4420194 b!4420191) bm!307529))

(assert (= (and bm!307529 c!752373) b!4420190))

(assert (= (and bm!307529 (not c!752373)) b!4420197))

(assert (= (and d!1339198 res!1826686) b!4420192))

(assert (= (and d!1339198 (not res!1826685)) b!4420189))

(assert (= (and b!4420189 res!1826684) b!4420195))

(declare-fun m!5097363 () Bool)

(assert (=> d!1339198 m!5097363))

(declare-fun m!5097365 () Bool)

(assert (=> b!4420194 m!5097365))

(declare-fun m!5097367 () Bool)

(assert (=> b!4420194 m!5097367))

(assert (=> b!4420194 m!5097367))

(declare-fun m!5097369 () Bool)

(assert (=> b!4420194 m!5097369))

(declare-fun m!5097371 () Bool)

(assert (=> b!4420194 m!5097371))

(assert (=> b!4420192 m!5097145))

(declare-fun m!5097373 () Bool)

(assert (=> b!4420192 m!5097373))

(assert (=> b!4420192 m!5097373))

(declare-fun m!5097375 () Bool)

(assert (=> b!4420192 m!5097375))

(assert (=> b!4420189 m!5097367))

(assert (=> b!4420189 m!5097367))

(assert (=> b!4420189 m!5097369))

(declare-fun m!5097377 () Bool)

(assert (=> b!4420190 m!5097377))

(assert (=> b!4420197 m!5097145))

(assert (=> b!4420197 m!5097373))

(assert (=> b!4420195 m!5097145))

(assert (=> b!4420195 m!5097373))

(assert (=> b!4420195 m!5097373))

(assert (=> b!4420195 m!5097375))

(declare-fun m!5097379 () Bool)

(assert (=> bm!307529 m!5097379))

(assert (=> b!4420196 m!5097363))

(declare-fun m!5097381 () Bool)

(assert (=> b!4420196 m!5097381))

(assert (=> b!4420047 d!1339198))

(assert (=> start!430702 d!1339152))

(declare-fun d!1339200 () Bool)

(declare-fun isStrictlySorted!217 (List!49647) Bool)

(assert (=> d!1339200 (= (inv!65075 lm!1616) (isStrictlySorted!217 (toList!3439 lm!1616)))))

(declare-fun bs!754520 () Bool)

(assert (= bs!754520 d!1339200))

(declare-fun m!5097383 () Bool)

(assert (=> bs!754520 m!5097383))

(assert (=> start!430702 d!1339200))

(declare-fun d!1339202 () Bool)

(declare-fun res!1826687 () Bool)

(declare-fun e!2752253 () Bool)

(assert (=> d!1339202 (=> res!1826687 e!2752253)))

(assert (=> d!1339202 (= res!1826687 (is-Nil!49523 (toList!3439 lt!1620486)))))

(assert (=> d!1339202 (= (forall!9521 (toList!3439 lt!1620486) lambda!152817) e!2752253)))

(declare-fun b!4420202 () Bool)

(declare-fun e!2752254 () Bool)

(assert (=> b!4420202 (= e!2752253 e!2752254)))

(declare-fun res!1826688 () Bool)

(assert (=> b!4420202 (=> (not res!1826688) (not e!2752254))))

(assert (=> b!4420202 (= res!1826688 (dynLambda!20825 lambda!152817 (h!55194 (toList!3439 lt!1620486))))))

(declare-fun b!4420203 () Bool)

(assert (=> b!4420203 (= e!2752254 (forall!9521 (t!356585 (toList!3439 lt!1620486)) lambda!152817))))

(assert (= (and d!1339202 (not res!1826687)) b!4420202))

(assert (= (and b!4420202 res!1826688) b!4420203))

(declare-fun b_lambda!142505 () Bool)

(assert (=> (not b_lambda!142505) (not b!4420202)))

(declare-fun m!5097385 () Bool)

(assert (=> b!4420202 m!5097385))

(declare-fun m!5097387 () Bool)

(assert (=> b!4420203 m!5097387))

(assert (=> b!4420046 d!1339202))

(declare-fun d!1339204 () Bool)

(declare-fun e!2752255 () Bool)

(assert (=> d!1339204 e!2752255))

(declare-fun res!1826689 () Bool)

(assert (=> d!1339204 (=> (not res!1826689) (not e!2752255))))

(declare-fun lt!1620602 () ListLongMap!2089)

(assert (=> d!1339204 (= res!1826689 (contains!11996 lt!1620602 (_1!27936 lt!1620483)))))

(declare-fun lt!1620600 () List!49647)

(assert (=> d!1339204 (= lt!1620602 (ListLongMap!2090 lt!1620600))))

(declare-fun lt!1620603 () Unit!81272)

(declare-fun lt!1620601 () Unit!81272)

(assert (=> d!1339204 (= lt!1620603 lt!1620601)))

(assert (=> d!1339204 (= (getValueByKey!682 lt!1620600 (_1!27936 lt!1620483)) (Some!10695 (_2!27936 lt!1620483)))))

(assert (=> d!1339204 (= lt!1620601 (lemmaContainsTupThenGetReturnValue!417 lt!1620600 (_1!27936 lt!1620483) (_2!27936 lt!1620483)))))

(assert (=> d!1339204 (= lt!1620600 (insertStrictlySorted!245 (toList!3439 lm!1616) (_1!27936 lt!1620483) (_2!27936 lt!1620483)))))

(assert (=> d!1339204 (= (+!1036 lm!1616 lt!1620483) lt!1620602)))

(declare-fun b!4420204 () Bool)

(declare-fun res!1826690 () Bool)

(assert (=> b!4420204 (=> (not res!1826690) (not e!2752255))))

(assert (=> b!4420204 (= res!1826690 (= (getValueByKey!682 (toList!3439 lt!1620602) (_1!27936 lt!1620483)) (Some!10695 (_2!27936 lt!1620483))))))

(declare-fun b!4420205 () Bool)

(assert (=> b!4420205 (= e!2752255 (contains!12001 (toList!3439 lt!1620602) lt!1620483))))

(assert (= (and d!1339204 res!1826689) b!4420204))

(assert (= (and b!4420204 res!1826690) b!4420205))

(declare-fun m!5097389 () Bool)

(assert (=> d!1339204 m!5097389))

(declare-fun m!5097391 () Bool)

(assert (=> d!1339204 m!5097391))

(declare-fun m!5097393 () Bool)

(assert (=> d!1339204 m!5097393))

(declare-fun m!5097395 () Bool)

(assert (=> d!1339204 m!5097395))

(declare-fun m!5097397 () Bool)

(assert (=> b!4420204 m!5097397))

(declare-fun m!5097399 () Bool)

(assert (=> b!4420205 m!5097399))

(assert (=> b!4420046 d!1339204))

(declare-fun d!1339206 () Bool)

(assert (=> d!1339206 (forall!9521 (toList!3439 (+!1036 lm!1616 (tuple2!49285 hash!366 newBucket!194))) lambda!152817)))

(declare-fun lt!1620610 () Unit!81272)

(declare-fun choose!27841 (ListLongMap!2089 Int (_ BitVec 64) List!49646) Unit!81272)

(assert (=> d!1339206 (= lt!1620610 (choose!27841 lm!1616 lambda!152817 hash!366 newBucket!194))))

(declare-fun e!2752262 () Bool)

(assert (=> d!1339206 e!2752262))

(declare-fun res!1826696 () Bool)

(assert (=> d!1339206 (=> (not res!1826696) (not e!2752262))))

(assert (=> d!1339206 (= res!1826696 (forall!9521 (toList!3439 lm!1616) lambda!152817))))

(assert (=> d!1339206 (= (addValidProp!370 lm!1616 lambda!152817 hash!366 newBucket!194) lt!1620610)))

(declare-fun b!4420214 () Bool)

(assert (=> b!4420214 (= e!2752262 (dynLambda!20825 lambda!152817 (tuple2!49285 hash!366 newBucket!194)))))

(assert (= (and d!1339206 res!1826696) b!4420214))

(declare-fun b_lambda!142507 () Bool)

(assert (=> (not b_lambda!142507) (not b!4420214)))

(declare-fun m!5097407 () Bool)

(assert (=> d!1339206 m!5097407))

(declare-fun m!5097409 () Bool)

(assert (=> d!1339206 m!5097409))

(declare-fun m!5097411 () Bool)

(assert (=> d!1339206 m!5097411))

(assert (=> d!1339206 m!5097133))

(declare-fun m!5097413 () Bool)

(assert (=> b!4420214 m!5097413))

(assert (=> b!4420046 d!1339206))

(declare-fun d!1339210 () Bool)

(declare-fun hash!2059 (Hashable!5120 K!10888) (_ BitVec 64))

(assert (=> d!1339210 (= (hash!2056 hashF!1220 key!3717) (hash!2059 hashF!1220 key!3717))))

(declare-fun bs!754521 () Bool)

(assert (= bs!754521 d!1339210))

(declare-fun m!5097415 () Bool)

(assert (=> bs!754521 m!5097415))

(assert (=> b!4420043 d!1339210))

(declare-fun d!1339212 () Bool)

(declare-fun e!2752268 () Bool)

(assert (=> d!1339212 e!2752268))

(declare-fun res!1826699 () Bool)

(assert (=> d!1339212 (=> res!1826699 e!2752268)))

(declare-fun lt!1620620 () Bool)

(assert (=> d!1339212 (= res!1826699 (not lt!1620620))))

(declare-fun lt!1620619 () Bool)

(assert (=> d!1339212 (= lt!1620620 lt!1620619)))

(declare-fun lt!1620622 () Unit!81272)

(declare-fun e!2752267 () Unit!81272)

(assert (=> d!1339212 (= lt!1620622 e!2752267)))

(declare-fun c!752381 () Bool)

(assert (=> d!1339212 (= c!752381 lt!1620619)))

(declare-fun containsKey!1070 (List!49647 (_ BitVec 64)) Bool)

(assert (=> d!1339212 (= lt!1620619 (containsKey!1070 (toList!3439 lm!1616) hash!366))))

(assert (=> d!1339212 (= (contains!11996 lm!1616 hash!366) lt!1620620)))

(declare-fun b!4420225 () Bool)

(declare-fun lt!1620621 () Unit!81272)

(assert (=> b!4420225 (= e!2752267 lt!1620621)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!592 (List!49647 (_ BitVec 64)) Unit!81272)

(assert (=> b!4420225 (= lt!1620621 (lemmaContainsKeyImpliesGetValueByKeyDefined!592 (toList!3439 lm!1616) hash!366))))

(declare-fun isDefined!7989 (Option!10696) Bool)

(assert (=> b!4420225 (isDefined!7989 (getValueByKey!682 (toList!3439 lm!1616) hash!366))))

(declare-fun b!4420226 () Bool)

(declare-fun Unit!81284 () Unit!81272)

(assert (=> b!4420226 (= e!2752267 Unit!81284)))

(declare-fun b!4420227 () Bool)

(assert (=> b!4420227 (= e!2752268 (isDefined!7989 (getValueByKey!682 (toList!3439 lm!1616) hash!366)))))

(assert (= (and d!1339212 c!752381) b!4420225))

(assert (= (and d!1339212 (not c!752381)) b!4420226))

(assert (= (and d!1339212 (not res!1826699)) b!4420227))

(declare-fun m!5097419 () Bool)

(assert (=> d!1339212 m!5097419))

(declare-fun m!5097421 () Bool)

(assert (=> b!4420225 m!5097421))

(declare-fun m!5097423 () Bool)

(assert (=> b!4420225 m!5097423))

(assert (=> b!4420225 m!5097423))

(declare-fun m!5097425 () Bool)

(assert (=> b!4420225 m!5097425))

(assert (=> b!4420227 m!5097423))

(assert (=> b!4420227 m!5097423))

(assert (=> b!4420227 m!5097425))

(assert (=> b!4420053 d!1339212))

(declare-fun bs!754523 () Bool)

(declare-fun d!1339216 () Bool)

(assert (= bs!754523 (and d!1339216 start!430702)))

(declare-fun lambda!152846 () Int)

(assert (=> bs!754523 (not (= lambda!152846 lambda!152817))))

(declare-fun bs!754524 () Bool)

(assert (= bs!754524 (and d!1339216 d!1339182)))

(assert (=> bs!754524 (not (= lambda!152846 lambda!152838))))

(declare-fun bs!754525 () Bool)

(assert (= bs!754525 (and d!1339216 d!1339190)))

(assert (=> bs!754525 (not (= lambda!152846 lambda!152839))))

(declare-fun bs!754526 () Bool)

(assert (= bs!754526 (and d!1339216 d!1339164)))

(assert (=> bs!754526 (not (= lambda!152846 lambda!152834))))

(declare-fun bs!754527 () Bool)

(assert (= bs!754527 (and d!1339216 d!1339180)))

(assert (=> bs!754527 (not (= lambda!152846 lambda!152835))))

(declare-fun bs!754528 () Bool)

(assert (= bs!754528 (and d!1339216 d!1339194)))

(assert (=> bs!754528 (not (= lambda!152846 lambda!152840))))

(assert (=> d!1339216 true))

(assert (=> d!1339216 (= (allKeysSameHashInMap!832 lm!1616 hashF!1220) (forall!9521 (toList!3439 lm!1616) lambda!152846))))

(declare-fun bs!754529 () Bool)

(assert (= bs!754529 d!1339216))

(declare-fun m!5097427 () Bool)

(assert (=> bs!754529 m!5097427))

(assert (=> b!4420055 d!1339216))

(declare-fun d!1339218 () Bool)

(declare-fun res!1826704 () Bool)

(declare-fun e!2752273 () Bool)

(assert (=> d!1339218 (=> res!1826704 e!2752273)))

(assert (=> d!1339218 (= res!1826704 (not (is-Cons!49522 newBucket!194)))))

(assert (=> d!1339218 (= (noDuplicateKeys!726 newBucket!194) e!2752273)))

(declare-fun b!4420234 () Bool)

(declare-fun e!2752274 () Bool)

(assert (=> b!4420234 (= e!2752273 e!2752274)))

(declare-fun res!1826705 () Bool)

(assert (=> b!4420234 (=> (not res!1826705) (not e!2752274))))

(declare-fun containsKey!1071 (List!49646 K!10888) Bool)

(assert (=> b!4420234 (= res!1826705 (not (containsKey!1071 (t!356584 newBucket!194) (_1!27935 (h!55193 newBucket!194)))))))

(declare-fun b!4420235 () Bool)

(assert (=> b!4420235 (= e!2752274 (noDuplicateKeys!726 (t!356584 newBucket!194)))))

(assert (= (and d!1339218 (not res!1826704)) b!4420234))

(assert (= (and b!4420234 res!1826705) b!4420235))

(declare-fun m!5097429 () Bool)

(assert (=> b!4420234 m!5097429))

(declare-fun m!5097431 () Bool)

(assert (=> b!4420235 m!5097431))

(assert (=> b!4420051 d!1339218))

(declare-fun d!1339220 () Bool)

(assert (=> d!1339220 true))

(assert (=> d!1339220 true))

(declare-fun lambda!152849 () Int)

(declare-fun forall!9523 (List!49646 Int) Bool)

(assert (=> d!1339220 (= (allKeysSameHash!686 newBucket!194 hash!366 hashF!1220) (forall!9523 newBucket!194 lambda!152849))))

(declare-fun bs!754530 () Bool)

(assert (= bs!754530 d!1339220))

(declare-fun m!5097433 () Bool)

(assert (=> bs!754530 m!5097433))

(assert (=> b!4420050 d!1339220))

(declare-fun bs!754531 () Bool)

(declare-fun d!1339222 () Bool)

(assert (= bs!754531 (and d!1339222 start!430702)))

(declare-fun lambda!152852 () Int)

(assert (=> bs!754531 (= lambda!152852 lambda!152817)))

(declare-fun bs!754532 () Bool)

(assert (= bs!754532 (and d!1339222 d!1339182)))

(assert (=> bs!754532 (= lambda!152852 lambda!152838)))

(declare-fun bs!754533 () Bool)

(assert (= bs!754533 (and d!1339222 d!1339216)))

(assert (=> bs!754533 (not (= lambda!152852 lambda!152846))))

(declare-fun bs!754534 () Bool)

(assert (= bs!754534 (and d!1339222 d!1339190)))

(assert (=> bs!754534 (= lambda!152852 lambda!152839)))

(declare-fun bs!754535 () Bool)

(assert (= bs!754535 (and d!1339222 d!1339164)))

(assert (=> bs!754535 (= lambda!152852 lambda!152834)))

(declare-fun bs!754536 () Bool)

(assert (= bs!754536 (and d!1339222 d!1339180)))

(assert (=> bs!754536 (= lambda!152852 lambda!152835)))

(declare-fun bs!754537 () Bool)

(assert (= bs!754537 (and d!1339222 d!1339194)))

(assert (=> bs!754537 (= lambda!152852 lambda!152840)))

(assert (=> d!1339222 (contains!11995 (extractMap!787 (toList!3439 lm!1616)) key!3717)))

(declare-fun lt!1620625 () Unit!81272)

(declare-fun choose!27842 (ListLongMap!2089 K!10888 Hashable!5120) Unit!81272)

(assert (=> d!1339222 (= lt!1620625 (choose!27842 lm!1616 key!3717 hashF!1220))))

(assert (=> d!1339222 (forall!9521 (toList!3439 lm!1616) lambda!152852)))

(assert (=> d!1339222 (= (lemmaExtractTailMapContainsThenExtractMapDoes!13 lm!1616 key!3717 hashF!1220) lt!1620625)))

(declare-fun bs!754538 () Bool)

(assert (= bs!754538 d!1339222))

(assert (=> bs!754538 m!5097125))

(assert (=> bs!754538 m!5097125))

(assert (=> bs!754538 m!5097127))

(declare-fun m!5097435 () Bool)

(assert (=> bs!754538 m!5097435))

(declare-fun m!5097437 () Bool)

(assert (=> bs!754538 m!5097437))

(assert (=> b!4420052 d!1339222))

(declare-fun d!1339224 () Bool)

(declare-fun get!16133 (Option!10696) List!49646)

(assert (=> d!1339224 (= (apply!11578 lm!1616 hash!366) (get!16133 (getValueByKey!682 (toList!3439 lm!1616) hash!366)))))

(declare-fun bs!754539 () Bool)

(assert (= bs!754539 d!1339224))

(assert (=> bs!754539 m!5097423))

(assert (=> bs!754539 m!5097423))

(declare-fun m!5097439 () Bool)

(assert (=> bs!754539 m!5097439))

(assert (=> b!4420041 d!1339224))

(declare-fun b!4420244 () Bool)

(declare-fun e!2752277 () Bool)

(declare-fun tp!1332917 () Bool)

(declare-fun tp!1332918 () Bool)

(assert (=> b!4420244 (= e!2752277 (and tp!1332917 tp!1332918))))

(assert (=> b!4420042 (= tp!1332906 e!2752277)))

(assert (= (and b!4420042 (is-Cons!49523 (toList!3439 lm!1616))) b!4420244))

(declare-fun tp!1332921 () Bool)

(declare-fun e!2752280 () Bool)

(declare-fun b!4420249 () Bool)

(assert (=> b!4420249 (= e!2752280 (and tp_is_empty!26151 tp_is_empty!26149 tp!1332921))))

(assert (=> b!4420040 (= tp!1332905 e!2752280)))

(assert (= (and b!4420040 (is-Cons!49522 (t!356584 newBucket!194))) b!4420249))

(declare-fun b_lambda!142509 () Bool)

(assert (= b_lambda!142507 (or start!430702 b_lambda!142509)))

(declare-fun bs!754540 () Bool)

(declare-fun d!1339226 () Bool)

(assert (= bs!754540 (and d!1339226 start!430702)))

(assert (=> bs!754540 (= (dynLambda!20825 lambda!152817 (tuple2!49285 hash!366 newBucket!194)) (noDuplicateKeys!726 (_2!27936 (tuple2!49285 hash!366 newBucket!194))))))

(declare-fun m!5097441 () Bool)

(assert (=> bs!754540 m!5097441))

(assert (=> b!4420214 d!1339226))

(declare-fun b_lambda!142511 () Bool)

(assert (= b_lambda!142505 (or start!430702 b_lambda!142511)))

(declare-fun bs!754541 () Bool)

(declare-fun d!1339228 () Bool)

(assert (= bs!754541 (and d!1339228 start!430702)))

(assert (=> bs!754541 (= (dynLambda!20825 lambda!152817 (h!55194 (toList!3439 lt!1620486))) (noDuplicateKeys!726 (_2!27936 (h!55194 (toList!3439 lt!1620486)))))))

(declare-fun m!5097443 () Bool)

(assert (=> bs!754541 m!5097443))

(assert (=> b!4420202 d!1339228))

(declare-fun b_lambda!142513 () Bool)

(assert (= b_lambda!142501 (or start!430702 b_lambda!142513)))

(declare-fun bs!754542 () Bool)

(declare-fun d!1339230 () Bool)

(assert (= bs!754542 (and d!1339230 start!430702)))

(assert (=> bs!754542 (= (dynLambda!20825 lambda!152817 (h!55194 (toList!3439 lt!1620481))) (noDuplicateKeys!726 (_2!27936 (h!55194 (toList!3439 lt!1620481)))))))

(declare-fun m!5097445 () Bool)

(assert (=> bs!754542 m!5097445))

(assert (=> b!4420177 d!1339230))

(declare-fun b_lambda!142515 () Bool)

(assert (= b_lambda!142495 (or start!430702 b_lambda!142515)))

(declare-fun bs!754543 () Bool)

(declare-fun d!1339232 () Bool)

(assert (= bs!754543 (and d!1339232 start!430702)))

(assert (=> bs!754543 (= (dynLambda!20825 lambda!152817 (h!55194 (toList!3439 lm!1616))) (noDuplicateKeys!726 (_2!27936 (h!55194 (toList!3439 lm!1616)))))))

(declare-fun m!5097447 () Bool)

(assert (=> bs!754543 m!5097447))

(assert (=> b!4420108 d!1339232))

(push 1)

(assert (not b!4420203))

(assert (not b!4420157))

(assert (not b!4420196))

(assert tp_is_empty!26151)

(assert (not b_lambda!142515))

(assert (not d!1339170))

(assert (not b!4420194))

(assert (not bm!307529))

(assert (not b!4420227))

(assert (not d!1339212))

(assert (not b!4420244))

(assert (not b!4420190))

(assert (not b!4420176))

(assert (not b!4420205))

(assert (not b!4420185))

(assert (not d!1339176))

(assert (not bs!754543))

(assert (not b!4420178))

(assert (not b!4420148))

(assert (not b!4420140))

(assert (not b!4420235))

(assert (not b!4420109))

(assert (not d!1339182))

(assert (not b!4420179))

(assert tp_is_empty!26149)

(assert (not bm!307528))

(assert (not d!1339222))

(assert (not d!1339180))

(assert (not b!4420147))

(assert (not b!4420197))

(assert (not b!4420225))

(assert (not b!4420143))

(assert (not d!1339190))

(assert (not b!4420195))

(assert (not d!1339206))

(assert (not b_lambda!142509))

(assert (not b!4420204))

(assert (not d!1339172))

(assert (not b!4420192))

(assert (not bs!754541))

(assert (not d!1339210))

(assert (not b!4420170))

(assert (not b!4420187))

(assert (not b_lambda!142511))

(assert (not d!1339164))

(assert (not b!4420141))

(assert (not d!1339204))

(assert (not d!1339200))

(assert (not b!4420175))

(assert (not d!1339224))

(assert (not b!4420234))

(assert (not bs!754542))

(assert (not d!1339220))

(assert (not b!4420145))

(assert (not b_lambda!142513))

(assert (not bs!754540))

(assert (not d!1339216))

(assert (not d!1339156))

(assert (not d!1339198))

(assert (not d!1339194))

(assert (not b!4420189))

(assert (not b!4420146))

(assert (not b!4420249))

(assert (not b!4420169))

(assert (not d!1339192))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

