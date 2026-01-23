; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!499872 () Bool)

(assert start!499872)

(declare-fun b!4822165 () Bool)

(declare-fun e!3012925 () Bool)

(declare-fun tp!1362446 () Bool)

(assert (=> b!4822165 (= e!3012925 tp!1362446)))

(declare-fun b!4822166 () Bool)

(declare-fun res!2052459 () Bool)

(declare-fun e!3012927 () Bool)

(assert (=> b!4822166 (=> (not res!2052459) (not e!3012927))))

(declare-datatypes ((K!16629 0))(
  ( (K!16630 (val!21609 Int)) )
))
(declare-fun key!5428 () K!16629)

(declare-fun lt!1970346 () (_ BitVec 64))

(declare-datatypes ((V!16875 0))(
  ( (V!16876 (val!21610 Int)) )
))
(declare-datatypes ((tuple2!58154 0))(
  ( (tuple2!58155 (_1!32371 K!16629) (_2!32371 V!16875)) )
))
(declare-datatypes ((List!55066 0))(
  ( (Nil!54942) (Cons!54942 (h!61376 tuple2!58154) (t!362562 List!55066)) )
))
(declare-datatypes ((tuple2!58156 0))(
  ( (tuple2!58157 (_1!32372 (_ BitVec 64)) (_2!32372 List!55066)) )
))
(declare-datatypes ((List!55067 0))(
  ( (Nil!54943) (Cons!54943 (h!61377 tuple2!58156) (t!362563 List!55067)) )
))
(declare-datatypes ((ListLongMap!5975 0))(
  ( (ListLongMap!5976 (toList!7459 List!55067)) )
))
(declare-fun lm!2280 () ListLongMap!5975)

(declare-fun containsKey!4341 (List!55066 K!16629) Bool)

(declare-fun apply!13343 (ListLongMap!5975 (_ BitVec 64)) List!55066)

(assert (=> b!4822166 (= res!2052459 (not (containsKey!4341 (apply!13343 lm!2280 lt!1970346) key!5428)))))

(declare-fun b!4822168 () Bool)

(declare-fun e!3012926 () Bool)

(assert (=> b!4822168 (= e!3012926 e!3012927)))

(declare-fun res!2052463 () Bool)

(assert (=> b!4822168 (=> (not res!2052463) (not e!3012927))))

(declare-fun contains!18740 (ListLongMap!5975 (_ BitVec 64)) Bool)

(assert (=> b!4822168 (= res!2052463 (contains!18740 lm!2280 lt!1970346))))

(declare-datatypes ((Hashable!7256 0))(
  ( (HashableExt!7255 (__x!33531 Int)) )
))
(declare-fun hashF!1509 () Hashable!7256)

(declare-fun hash!5360 (Hashable!7256 K!16629) (_ BitVec 64))

(assert (=> b!4822168 (= lt!1970346 (hash!5360 hashF!1509 key!5428))))

(declare-fun b!4822169 () Bool)

(declare-fun lambda!235774 () Int)

(declare-fun forall!12578 (List!55067 Int) Bool)

(declare-fun tail!9392 (ListLongMap!5975) ListLongMap!5975)

(assert (=> b!4822169 (= e!3012927 (not (forall!12578 (toList!7459 (tail!9392 lm!2280)) lambda!235774)))))

(declare-fun e!3012924 () Bool)

(declare-datatypes ((ListMap!6837 0))(
  ( (ListMap!6838 (toList!7460 List!55066)) )
))
(declare-fun lt!1970345 () ListMap!6837)

(declare-fun contains!18741 (ListMap!6837 K!16629) Bool)

(declare-fun addToMapMapFromBucket!1788 (List!55066 ListMap!6837) ListMap!6837)

(assert (=> b!4822169 (= (contains!18741 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345) key!5428) e!3012924)))

(declare-fun res!2052462 () Bool)

(assert (=> b!4822169 (=> res!2052462 e!3012924)))

(assert (=> b!4822169 (= res!2052462 (containsKey!4341 (_2!32372 (h!61377 (toList!7459 lm!2280))) key!5428))))

(declare-datatypes ((Unit!142503 0))(
  ( (Unit!142504) )
))
(declare-fun lt!1970343 () Unit!142503)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!14 (List!55066 ListMap!6837 K!16629) Unit!142503)

(assert (=> b!4822169 (= lt!1970343 (lemmaAddToMapFromBucketContainsIIFInAccOrL!14 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345 key!5428))))

(declare-fun extractMap!2670 (List!55067) ListMap!6837)

(assert (=> b!4822169 (= lt!1970345 (extractMap!2670 (t!362563 (toList!7459 lm!2280))))))

(assert (=> b!4822169 (not (containsKey!4341 (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280)))) key!5428))))

(declare-fun lt!1970344 () Unit!142503)

(declare-fun lemmaNotSameHashThenCannotContainKey!214 (ListLongMap!5975 K!16629 (_ BitVec 64) Hashable!7256) Unit!142503)

(assert (=> b!4822169 (= lt!1970344 (lemmaNotSameHashThenCannotContainKey!214 lm!2280 key!5428 (_1!32372 (h!61377 (toList!7459 lm!2280))) hashF!1509))))

(declare-fun b!4822170 () Bool)

(declare-fun res!2052460 () Bool)

(assert (=> b!4822170 (=> (not res!2052460) (not e!3012926))))

(declare-fun allKeysSameHashInMap!2572 (ListLongMap!5975 Hashable!7256) Bool)

(assert (=> b!4822170 (= res!2052460 (allKeysSameHashInMap!2572 lm!2280 hashF!1509))))

(declare-fun b!4822171 () Bool)

(declare-fun res!2052461 () Bool)

(assert (=> b!4822171 (=> (not res!2052461) (not e!3012927))))

(get-info :version)

(assert (=> b!4822171 (= res!2052461 (and (or (not ((_ is Cons!54943) (toList!7459 lm!2280))) (not (= (_1!32372 (h!61377 (toList!7459 lm!2280))) lt!1970346))) ((_ is Cons!54943) (toList!7459 lm!2280)) (not (= (_1!32372 (h!61377 (toList!7459 lm!2280))) lt!1970346))))))

(declare-fun res!2052458 () Bool)

(assert (=> start!499872 (=> (not res!2052458) (not e!3012926))))

(assert (=> start!499872 (= res!2052458 (forall!12578 (toList!7459 lm!2280) lambda!235774))))

(assert (=> start!499872 e!3012926))

(declare-fun inv!70529 (ListLongMap!5975) Bool)

(assert (=> start!499872 (and (inv!70529 lm!2280) e!3012925)))

(assert (=> start!499872 true))

(declare-fun tp_is_empty!34419 () Bool)

(assert (=> start!499872 tp_is_empty!34419))

(declare-fun b!4822167 () Bool)

(assert (=> b!4822167 (= e!3012924 (contains!18741 lt!1970345 key!5428))))

(assert (= (and start!499872 res!2052458) b!4822170))

(assert (= (and b!4822170 res!2052460) b!4822168))

(assert (= (and b!4822168 res!2052463) b!4822166))

(assert (= (and b!4822166 res!2052459) b!4822171))

(assert (= (and b!4822171 res!2052461) b!4822169))

(assert (= (and b!4822169 (not res!2052462)) b!4822167))

(assert (= start!499872 b!4822165))

(declare-fun m!5810320 () Bool)

(assert (=> b!4822169 m!5810320))

(declare-fun m!5810322 () Bool)

(assert (=> b!4822169 m!5810322))

(declare-fun m!5810324 () Bool)

(assert (=> b!4822169 m!5810324))

(declare-fun m!5810326 () Bool)

(assert (=> b!4822169 m!5810326))

(declare-fun m!5810328 () Bool)

(assert (=> b!4822169 m!5810328))

(declare-fun m!5810330 () Bool)

(assert (=> b!4822169 m!5810330))

(assert (=> b!4822169 m!5810322))

(declare-fun m!5810332 () Bool)

(assert (=> b!4822169 m!5810332))

(assert (=> b!4822169 m!5810328))

(declare-fun m!5810334 () Bool)

(assert (=> b!4822169 m!5810334))

(declare-fun m!5810336 () Bool)

(assert (=> b!4822169 m!5810336))

(declare-fun m!5810338 () Bool)

(assert (=> b!4822169 m!5810338))

(declare-fun m!5810340 () Bool)

(assert (=> start!499872 m!5810340))

(declare-fun m!5810342 () Bool)

(assert (=> start!499872 m!5810342))

(declare-fun m!5810344 () Bool)

(assert (=> b!4822168 m!5810344))

(declare-fun m!5810346 () Bool)

(assert (=> b!4822168 m!5810346))

(declare-fun m!5810348 () Bool)

(assert (=> b!4822167 m!5810348))

(declare-fun m!5810350 () Bool)

(assert (=> b!4822170 m!5810350))

(declare-fun m!5810352 () Bool)

(assert (=> b!4822166 m!5810352))

(assert (=> b!4822166 m!5810352))

(declare-fun m!5810354 () Bool)

(assert (=> b!4822166 m!5810354))

(check-sat (not b!4822167) (not b!4822168) (not b!4822170) (not b!4822165) (not b!4822169) tp_is_empty!34419 (not b!4822166) (not start!499872))
(check-sat)
(get-model)

(declare-fun b!4822198 () Bool)

(declare-fun e!3012950 () Bool)

(declare-fun e!3012952 () Bool)

(assert (=> b!4822198 (= e!3012950 e!3012952)))

(declare-fun res!2052479 () Bool)

(assert (=> b!4822198 (=> (not res!2052479) (not e!3012952))))

(declare-datatypes ((Option!13476 0))(
  ( (None!13475) (Some!13475 (v!49146 V!16875)) )
))
(declare-fun isDefined!10591 (Option!13476) Bool)

(declare-fun getValueByKey!2603 (List!55066 K!16629) Option!13476)

(assert (=> b!4822198 (= res!2052479 (isDefined!10591 (getValueByKey!2603 (toList!7460 lt!1970345) key!5428)))))

(declare-fun b!4822199 () Bool)

(declare-datatypes ((List!55069 0))(
  ( (Nil!54945) (Cons!54945 (h!61379 K!16629) (t!362565 List!55069)) )
))
(declare-fun e!3012948 () List!55069)

(declare-fun keys!20207 (ListMap!6837) List!55069)

(assert (=> b!4822199 (= e!3012948 (keys!20207 lt!1970345))))

(declare-fun b!4822200 () Bool)

(declare-fun e!3012949 () Unit!142503)

(declare-fun e!3012951 () Unit!142503)

(assert (=> b!4822200 (= e!3012949 e!3012951)))

(declare-fun c!821672 () Bool)

(declare-fun call!336159 () Bool)

(assert (=> b!4822200 (= c!821672 call!336159)))

(declare-fun b!4822201 () Bool)

(declare-fun lt!1970365 () Unit!142503)

(assert (=> b!4822201 (= e!3012949 lt!1970365)))

(declare-fun lt!1970370 () Unit!142503)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2388 (List!55066 K!16629) Unit!142503)

(assert (=> b!4822201 (= lt!1970370 (lemmaContainsKeyImpliesGetValueByKeyDefined!2388 (toList!7460 lt!1970345) key!5428))))

(assert (=> b!4822201 (isDefined!10591 (getValueByKey!2603 (toList!7460 lt!1970345) key!5428))))

(declare-fun lt!1970368 () Unit!142503)

(assert (=> b!4822201 (= lt!1970368 lt!1970370)))

(declare-fun lemmaInListThenGetKeysListContains!1145 (List!55066 K!16629) Unit!142503)

(assert (=> b!4822201 (= lt!1970365 (lemmaInListThenGetKeysListContains!1145 (toList!7460 lt!1970345) key!5428))))

(assert (=> b!4822201 call!336159))

(declare-fun b!4822202 () Bool)

(declare-fun contains!18743 (List!55069 K!16629) Bool)

(assert (=> b!4822202 (= e!3012952 (contains!18743 (keys!20207 lt!1970345) key!5428))))

(declare-fun b!4822203 () Bool)

(declare-fun e!3012953 () Bool)

(assert (=> b!4822203 (= e!3012953 (not (contains!18743 (keys!20207 lt!1970345) key!5428)))))

(declare-fun d!1544079 () Bool)

(assert (=> d!1544079 e!3012950))

(declare-fun res!2052478 () Bool)

(assert (=> d!1544079 (=> res!2052478 e!3012950)))

(assert (=> d!1544079 (= res!2052478 e!3012953)))

(declare-fun res!2052480 () Bool)

(assert (=> d!1544079 (=> (not res!2052480) (not e!3012953))))

(declare-fun lt!1970367 () Bool)

(assert (=> d!1544079 (= res!2052480 (not lt!1970367))))

(declare-fun lt!1970366 () Bool)

(assert (=> d!1544079 (= lt!1970367 lt!1970366)))

(declare-fun lt!1970369 () Unit!142503)

(assert (=> d!1544079 (= lt!1970369 e!3012949)))

(declare-fun c!821673 () Bool)

(assert (=> d!1544079 (= c!821673 lt!1970366)))

(declare-fun containsKey!4344 (List!55066 K!16629) Bool)

(assert (=> d!1544079 (= lt!1970366 (containsKey!4344 (toList!7460 lt!1970345) key!5428))))

(assert (=> d!1544079 (= (contains!18741 lt!1970345 key!5428) lt!1970367)))

(declare-fun b!4822204 () Bool)

(declare-fun getKeysList!1150 (List!55066) List!55069)

(assert (=> b!4822204 (= e!3012948 (getKeysList!1150 (toList!7460 lt!1970345)))))

(declare-fun b!4822205 () Bool)

(assert (=> b!4822205 false))

(declare-fun lt!1970364 () Unit!142503)

(declare-fun lt!1970363 () Unit!142503)

(assert (=> b!4822205 (= lt!1970364 lt!1970363)))

(assert (=> b!4822205 (containsKey!4344 (toList!7460 lt!1970345) key!5428)))

(declare-fun lemmaInGetKeysListThenContainsKey!1150 (List!55066 K!16629) Unit!142503)

(assert (=> b!4822205 (= lt!1970363 (lemmaInGetKeysListThenContainsKey!1150 (toList!7460 lt!1970345) key!5428))))

(declare-fun Unit!142521 () Unit!142503)

(assert (=> b!4822205 (= e!3012951 Unit!142521)))

(declare-fun bm!336154 () Bool)

(assert (=> bm!336154 (= call!336159 (contains!18743 e!3012948 key!5428))))

(declare-fun c!821671 () Bool)

(assert (=> bm!336154 (= c!821671 c!821673)))

(declare-fun b!4822206 () Bool)

(declare-fun Unit!142522 () Unit!142503)

(assert (=> b!4822206 (= e!3012951 Unit!142522)))

(assert (= (and d!1544079 c!821673) b!4822201))

(assert (= (and d!1544079 (not c!821673)) b!4822200))

(assert (= (and b!4822200 c!821672) b!4822205))

(assert (= (and b!4822200 (not c!821672)) b!4822206))

(assert (= (or b!4822201 b!4822200) bm!336154))

(assert (= (and bm!336154 c!821671) b!4822204))

(assert (= (and bm!336154 (not c!821671)) b!4822199))

(assert (= (and d!1544079 res!2052480) b!4822203))

(assert (= (and d!1544079 (not res!2052478)) b!4822198))

(assert (= (and b!4822198 res!2052479) b!4822202))

(declare-fun m!5810364 () Bool)

(assert (=> b!4822199 m!5810364))

(assert (=> b!4822203 m!5810364))

(assert (=> b!4822203 m!5810364))

(declare-fun m!5810366 () Bool)

(assert (=> b!4822203 m!5810366))

(declare-fun m!5810368 () Bool)

(assert (=> b!4822205 m!5810368))

(declare-fun m!5810370 () Bool)

(assert (=> b!4822205 m!5810370))

(declare-fun m!5810372 () Bool)

(assert (=> b!4822198 m!5810372))

(assert (=> b!4822198 m!5810372))

(declare-fun m!5810374 () Bool)

(assert (=> b!4822198 m!5810374))

(assert (=> d!1544079 m!5810368))

(declare-fun m!5810376 () Bool)

(assert (=> bm!336154 m!5810376))

(declare-fun m!5810378 () Bool)

(assert (=> b!4822201 m!5810378))

(assert (=> b!4822201 m!5810372))

(assert (=> b!4822201 m!5810372))

(assert (=> b!4822201 m!5810374))

(declare-fun m!5810380 () Bool)

(assert (=> b!4822201 m!5810380))

(declare-fun m!5810382 () Bool)

(assert (=> b!4822204 m!5810382))

(assert (=> b!4822202 m!5810364))

(assert (=> b!4822202 m!5810364))

(assert (=> b!4822202 m!5810366))

(assert (=> b!4822167 d!1544079))

(declare-fun d!1544081 () Bool)

(declare-fun res!2052485 () Bool)

(declare-fun e!3012958 () Bool)

(assert (=> d!1544081 (=> res!2052485 e!3012958)))

(assert (=> d!1544081 (= res!2052485 ((_ is Nil!54943) (toList!7459 lm!2280)))))

(assert (=> d!1544081 (= (forall!12578 (toList!7459 lm!2280) lambda!235774) e!3012958)))

(declare-fun b!4822211 () Bool)

(declare-fun e!3012959 () Bool)

(assert (=> b!4822211 (= e!3012958 e!3012959)))

(declare-fun res!2052486 () Bool)

(assert (=> b!4822211 (=> (not res!2052486) (not e!3012959))))

(declare-fun dynLambda!22198 (Int tuple2!58156) Bool)

(assert (=> b!4822211 (= res!2052486 (dynLambda!22198 lambda!235774 (h!61377 (toList!7459 lm!2280))))))

(declare-fun b!4822212 () Bool)

(assert (=> b!4822212 (= e!3012959 (forall!12578 (t!362563 (toList!7459 lm!2280)) lambda!235774))))

(assert (= (and d!1544081 (not res!2052485)) b!4822211))

(assert (= (and b!4822211 res!2052486) b!4822212))

(declare-fun b_lambda!189199 () Bool)

(assert (=> (not b_lambda!189199) (not b!4822211)))

(declare-fun m!5810384 () Bool)

(assert (=> b!4822211 m!5810384))

(declare-fun m!5810386 () Bool)

(assert (=> b!4822212 m!5810386))

(assert (=> start!499872 d!1544081))

(declare-fun d!1544083 () Bool)

(declare-fun isStrictlySorted!976 (List!55067) Bool)

(assert (=> d!1544083 (= (inv!70529 lm!2280) (isStrictlySorted!976 (toList!7459 lm!2280)))))

(declare-fun bs!1162398 () Bool)

(assert (= bs!1162398 d!1544083))

(declare-fun m!5810388 () Bool)

(assert (=> bs!1162398 m!5810388))

(assert (=> start!499872 d!1544083))

(declare-fun d!1544085 () Bool)

(declare-fun res!2052491 () Bool)

(declare-fun e!3012964 () Bool)

(assert (=> d!1544085 (=> res!2052491 e!3012964)))

(assert (=> d!1544085 (= res!2052491 (and ((_ is Cons!54942) (apply!13343 lm!2280 lt!1970346)) (= (_1!32371 (h!61376 (apply!13343 lm!2280 lt!1970346))) key!5428)))))

(assert (=> d!1544085 (= (containsKey!4341 (apply!13343 lm!2280 lt!1970346) key!5428) e!3012964)))

(declare-fun b!4822217 () Bool)

(declare-fun e!3012965 () Bool)

(assert (=> b!4822217 (= e!3012964 e!3012965)))

(declare-fun res!2052492 () Bool)

(assert (=> b!4822217 (=> (not res!2052492) (not e!3012965))))

(assert (=> b!4822217 (= res!2052492 ((_ is Cons!54942) (apply!13343 lm!2280 lt!1970346)))))

(declare-fun b!4822218 () Bool)

(assert (=> b!4822218 (= e!3012965 (containsKey!4341 (t!362562 (apply!13343 lm!2280 lt!1970346)) key!5428))))

(assert (= (and d!1544085 (not res!2052491)) b!4822217))

(assert (= (and b!4822217 res!2052492) b!4822218))

(declare-fun m!5810390 () Bool)

(assert (=> b!4822218 m!5810390))

(assert (=> b!4822166 d!1544085))

(declare-fun d!1544087 () Bool)

(declare-datatypes ((Option!13477 0))(
  ( (None!13476) (Some!13476 (v!49147 List!55066)) )
))
(declare-fun get!18809 (Option!13477) List!55066)

(declare-fun getValueByKey!2604 (List!55067 (_ BitVec 64)) Option!13477)

(assert (=> d!1544087 (= (apply!13343 lm!2280 lt!1970346) (get!18809 (getValueByKey!2604 (toList!7459 lm!2280) lt!1970346)))))

(declare-fun bs!1162399 () Bool)

(assert (= bs!1162399 d!1544087))

(declare-fun m!5810392 () Bool)

(assert (=> bs!1162399 m!5810392))

(assert (=> bs!1162399 m!5810392))

(declare-fun m!5810394 () Bool)

(assert (=> bs!1162399 m!5810394))

(assert (=> b!4822166 d!1544087))

(declare-fun d!1544089 () Bool)

(assert (=> d!1544089 (= (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280)))) (get!18809 (getValueByKey!2604 (toList!7459 lm!2280) (_1!32372 (h!61377 (toList!7459 lm!2280))))))))

(declare-fun bs!1162400 () Bool)

(assert (= bs!1162400 d!1544089))

(declare-fun m!5810396 () Bool)

(assert (=> bs!1162400 m!5810396))

(assert (=> bs!1162400 m!5810396))

(declare-fun m!5810398 () Bool)

(assert (=> bs!1162400 m!5810398))

(assert (=> b!4822169 d!1544089))

(declare-fun d!1544091 () Bool)

(declare-fun res!2052493 () Bool)

(declare-fun e!3012966 () Bool)

(assert (=> d!1544091 (=> res!2052493 e!3012966)))

(assert (=> d!1544091 (= res!2052493 (and ((_ is Cons!54942) (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280))))) (= (_1!32371 (h!61376 (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280)))))) key!5428)))))

(assert (=> d!1544091 (= (containsKey!4341 (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280)))) key!5428) e!3012966)))

(declare-fun b!4822219 () Bool)

(declare-fun e!3012967 () Bool)

(assert (=> b!4822219 (= e!3012966 e!3012967)))

(declare-fun res!2052494 () Bool)

(assert (=> b!4822219 (=> (not res!2052494) (not e!3012967))))

(assert (=> b!4822219 (= res!2052494 ((_ is Cons!54942) (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280))))))))

(declare-fun b!4822220 () Bool)

(assert (=> b!4822220 (= e!3012967 (containsKey!4341 (t!362562 (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280))))) key!5428))))

(assert (= (and d!1544091 (not res!2052493)) b!4822219))

(assert (= (and b!4822219 res!2052494) b!4822220))

(declare-fun m!5810400 () Bool)

(assert (=> b!4822220 m!5810400))

(assert (=> b!4822169 d!1544091))

(declare-fun d!1544093 () Bool)

(declare-fun res!2052495 () Bool)

(declare-fun e!3012970 () Bool)

(assert (=> d!1544093 (=> res!2052495 e!3012970)))

(assert (=> d!1544093 (= res!2052495 ((_ is Nil!54943) (toList!7459 (tail!9392 lm!2280))))))

(assert (=> d!1544093 (= (forall!12578 (toList!7459 (tail!9392 lm!2280)) lambda!235774) e!3012970)))

(declare-fun b!4822225 () Bool)

(declare-fun e!3012971 () Bool)

(assert (=> b!4822225 (= e!3012970 e!3012971)))

(declare-fun res!2052496 () Bool)

(assert (=> b!4822225 (=> (not res!2052496) (not e!3012971))))

(assert (=> b!4822225 (= res!2052496 (dynLambda!22198 lambda!235774 (h!61377 (toList!7459 (tail!9392 lm!2280)))))))

(declare-fun b!4822226 () Bool)

(assert (=> b!4822226 (= e!3012971 (forall!12578 (t!362563 (toList!7459 (tail!9392 lm!2280))) lambda!235774))))

(assert (= (and d!1544093 (not res!2052495)) b!4822225))

(assert (= (and b!4822225 res!2052496) b!4822226))

(declare-fun b_lambda!189201 () Bool)

(assert (=> (not b_lambda!189201) (not b!4822225)))

(declare-fun m!5810402 () Bool)

(assert (=> b!4822225 m!5810402))

(declare-fun m!5810404 () Bool)

(assert (=> b!4822226 m!5810404))

(assert (=> b!4822169 d!1544093))

(declare-fun d!1544095 () Bool)

(declare-fun res!2052497 () Bool)

(declare-fun e!3012972 () Bool)

(assert (=> d!1544095 (=> res!2052497 e!3012972)))

(assert (=> d!1544095 (= res!2052497 (and ((_ is Cons!54942) (_2!32372 (h!61377 (toList!7459 lm!2280)))) (= (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) key!5428)))))

(assert (=> d!1544095 (= (containsKey!4341 (_2!32372 (h!61377 (toList!7459 lm!2280))) key!5428) e!3012972)))

(declare-fun b!4822227 () Bool)

(declare-fun e!3012973 () Bool)

(assert (=> b!4822227 (= e!3012972 e!3012973)))

(declare-fun res!2052498 () Bool)

(assert (=> b!4822227 (=> (not res!2052498) (not e!3012973))))

(assert (=> b!4822227 (= res!2052498 ((_ is Cons!54942) (_2!32372 (h!61377 (toList!7459 lm!2280)))))))

(declare-fun b!4822228 () Bool)

(assert (=> b!4822228 (= e!3012973 (containsKey!4341 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))) key!5428))))

(assert (= (and d!1544095 (not res!2052497)) b!4822227))

(assert (= (and b!4822227 res!2052498) b!4822228))

(declare-fun m!5810406 () Bool)

(assert (=> b!4822228 m!5810406))

(assert (=> b!4822169 d!1544095))

(declare-fun b!4822327 () Bool)

(assert (=> b!4822327 true))

(declare-fun bs!1162418 () Bool)

(declare-fun b!4822326 () Bool)

(assert (= bs!1162418 (and b!4822326 b!4822327)))

(declare-fun lambda!235845 () Int)

(declare-fun lambda!235844 () Int)

(assert (=> bs!1162418 (= lambda!235845 lambda!235844)))

(assert (=> b!4822326 true))

(declare-fun lambda!235846 () Int)

(declare-fun lt!1970542 () ListMap!6837)

(assert (=> bs!1162418 (= (= lt!1970542 lt!1970345) (= lambda!235846 lambda!235844))))

(assert (=> b!4822326 (= (= lt!1970542 lt!1970345) (= lambda!235846 lambda!235845))))

(assert (=> b!4822326 true))

(declare-fun bs!1162419 () Bool)

(declare-fun d!1544097 () Bool)

(assert (= bs!1162419 (and d!1544097 b!4822327)))

(declare-fun lambda!235847 () Int)

(declare-fun lt!1970536 () ListMap!6837)

(assert (=> bs!1162419 (= (= lt!1970536 lt!1970345) (= lambda!235847 lambda!235844))))

(declare-fun bs!1162420 () Bool)

(assert (= bs!1162420 (and d!1544097 b!4822326)))

(assert (=> bs!1162420 (= (= lt!1970536 lt!1970345) (= lambda!235847 lambda!235845))))

(assert (=> bs!1162420 (= (= lt!1970536 lt!1970542) (= lambda!235847 lambda!235846))))

(assert (=> d!1544097 true))

(declare-fun b!4822323 () Bool)

(declare-fun res!2052544 () Bool)

(declare-fun e!3013037 () Bool)

(assert (=> b!4822323 (=> (not res!2052544) (not e!3013037))))

(declare-fun forall!12580 (List!55066 Int) Bool)

(assert (=> b!4822323 (= res!2052544 (forall!12580 (toList!7460 lt!1970345) lambda!235847))))

(declare-fun b!4822324 () Bool)

(declare-fun invariantList!1803 (List!55066) Bool)

(assert (=> b!4822324 (= e!3013037 (invariantList!1803 (toList!7460 lt!1970536)))))

(declare-fun b!4822325 () Bool)

(declare-fun e!3013038 () Bool)

(assert (=> b!4822325 (= e!3013038 (forall!12580 (toList!7460 lt!1970345) lambda!235846))))

(declare-fun call!336179 () Bool)

(declare-fun bm!336174 () Bool)

(declare-fun c!821697 () Bool)

(assert (=> bm!336174 (= call!336179 (forall!12580 (toList!7460 lt!1970345) (ite c!821697 lambda!235844 lambda!235846)))))

(declare-fun bm!336175 () Bool)

(declare-fun call!336180 () Unit!142503)

(declare-fun lemmaContainsAllItsOwnKeys!982 (ListMap!6837) Unit!142503)

(assert (=> bm!336175 (= call!336180 (lemmaContainsAllItsOwnKeys!982 lt!1970345))))

(declare-fun e!3013036 () ListMap!6837)

(assert (=> b!4822326 (= e!3013036 lt!1970542)))

(declare-fun lt!1970541 () ListMap!6837)

(declare-fun +!2527 (ListMap!6837 tuple2!58154) ListMap!6837)

(assert (=> b!4822326 (= lt!1970541 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(assert (=> b!4822326 (= lt!1970542 (addToMapMapFromBucket!1788 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))) (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun lt!1970538 () Unit!142503)

(assert (=> b!4822326 (= lt!1970538 call!336180)))

(assert (=> b!4822326 (forall!12580 (toList!7460 lt!1970345) lambda!235845)))

(declare-fun lt!1970531 () Unit!142503)

(assert (=> b!4822326 (= lt!1970531 lt!1970538)))

(declare-fun call!336181 () Bool)

(assert (=> b!4822326 call!336181))

(declare-fun lt!1970543 () Unit!142503)

(declare-fun Unit!142523 () Unit!142503)

(assert (=> b!4822326 (= lt!1970543 Unit!142523)))

(assert (=> b!4822326 (forall!12580 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))) lambda!235846)))

(declare-fun lt!1970545 () Unit!142503)

(declare-fun Unit!142524 () Unit!142503)

(assert (=> b!4822326 (= lt!1970545 Unit!142524)))

(declare-fun lt!1970532 () Unit!142503)

(declare-fun Unit!142525 () Unit!142503)

(assert (=> b!4822326 (= lt!1970532 Unit!142525)))

(declare-fun lt!1970547 () Unit!142503)

(declare-fun forallContained!4366 (List!55066 Int tuple2!58154) Unit!142503)

(assert (=> b!4822326 (= lt!1970547 (forallContained!4366 (toList!7460 lt!1970541) lambda!235846 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(assert (=> b!4822326 (contains!18741 lt!1970541 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(declare-fun lt!1970544 () Unit!142503)

(declare-fun Unit!142526 () Unit!142503)

(assert (=> b!4822326 (= lt!1970544 Unit!142526)))

(assert (=> b!4822326 (contains!18741 lt!1970542 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(declare-fun lt!1970537 () Unit!142503)

(declare-fun Unit!142527 () Unit!142503)

(assert (=> b!4822326 (= lt!1970537 Unit!142527)))

(assert (=> b!4822326 (forall!12580 (_2!32372 (h!61377 (toList!7459 lm!2280))) lambda!235846)))

(declare-fun lt!1970539 () Unit!142503)

(declare-fun Unit!142528 () Unit!142503)

(assert (=> b!4822326 (= lt!1970539 Unit!142528)))

(assert (=> b!4822326 (forall!12580 (toList!7460 lt!1970541) lambda!235846)))

(declare-fun lt!1970535 () Unit!142503)

(declare-fun Unit!142529 () Unit!142503)

(assert (=> b!4822326 (= lt!1970535 Unit!142529)))

(declare-fun lt!1970540 () Unit!142503)

(declare-fun Unit!142530 () Unit!142503)

(assert (=> b!4822326 (= lt!1970540 Unit!142530)))

(declare-fun lt!1970529 () Unit!142503)

(declare-fun addForallContainsKeyThenBeforeAdding!981 (ListMap!6837 ListMap!6837 K!16629 V!16875) Unit!142503)

(assert (=> b!4822326 (= lt!1970529 (addForallContainsKeyThenBeforeAdding!981 lt!1970345 lt!1970542 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) (_2!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (=> b!4822326 call!336179))

(declare-fun lt!1970549 () Unit!142503)

(assert (=> b!4822326 (= lt!1970549 lt!1970529)))

(assert (=> b!4822326 (forall!12580 (toList!7460 lt!1970345) lambda!235846)))

(declare-fun lt!1970530 () Unit!142503)

(declare-fun Unit!142531 () Unit!142503)

(assert (=> b!4822326 (= lt!1970530 Unit!142531)))

(declare-fun res!2052543 () Bool)

(assert (=> b!4822326 (= res!2052543 (forall!12580 (_2!32372 (h!61377 (toList!7459 lm!2280))) lambda!235846))))

(assert (=> b!4822326 (=> (not res!2052543) (not e!3013038))))

(assert (=> b!4822326 e!3013038))

(declare-fun lt!1970548 () Unit!142503)

(declare-fun Unit!142532 () Unit!142503)

(assert (=> b!4822326 (= lt!1970548 Unit!142532)))

(assert (=> b!4822327 (= e!3013036 lt!1970345)))

(declare-fun lt!1970546 () Unit!142503)

(assert (=> b!4822327 (= lt!1970546 call!336180)))

(assert (=> b!4822327 call!336181))

(declare-fun lt!1970533 () Unit!142503)

(assert (=> b!4822327 (= lt!1970533 lt!1970546)))

(assert (=> b!4822327 call!336179))

(declare-fun lt!1970534 () Unit!142503)

(declare-fun Unit!142533 () Unit!142503)

(assert (=> b!4822327 (= lt!1970534 Unit!142533)))

(assert (=> d!1544097 e!3013037))

(declare-fun res!2052542 () Bool)

(assert (=> d!1544097 (=> (not res!2052542) (not e!3013037))))

(assert (=> d!1544097 (= res!2052542 (forall!12580 (_2!32372 (h!61377 (toList!7459 lm!2280))) lambda!235847))))

(assert (=> d!1544097 (= lt!1970536 e!3013036)))

(assert (=> d!1544097 (= c!821697 ((_ is Nil!54942) (_2!32372 (h!61377 (toList!7459 lm!2280)))))))

(declare-fun noDuplicateKeys!2442 (List!55066) Bool)

(assert (=> d!1544097 (noDuplicateKeys!2442 (_2!32372 (h!61377 (toList!7459 lm!2280))))))

(assert (=> d!1544097 (= (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345) lt!1970536)))

(declare-fun bm!336176 () Bool)

(assert (=> bm!336176 (= call!336181 (forall!12580 (ite c!821697 (toList!7460 lt!1970345) (toList!7460 lt!1970541)) (ite c!821697 lambda!235844 lambda!235846)))))

(assert (= (and d!1544097 c!821697) b!4822327))

(assert (= (and d!1544097 (not c!821697)) b!4822326))

(assert (= (and b!4822326 res!2052543) b!4822325))

(assert (= (or b!4822327 b!4822326) bm!336176))

(assert (= (or b!4822327 b!4822326) bm!336174))

(assert (= (or b!4822327 b!4822326) bm!336175))

(assert (= (and d!1544097 res!2052542) b!4822323))

(assert (= (and b!4822323 res!2052544) b!4822324))

(declare-fun m!5810526 () Bool)

(assert (=> bm!336176 m!5810526))

(declare-fun m!5810528 () Bool)

(assert (=> bm!336174 m!5810528))

(declare-fun m!5810530 () Bool)

(assert (=> b!4822326 m!5810530))

(declare-fun m!5810532 () Bool)

(assert (=> b!4822326 m!5810532))

(declare-fun m!5810534 () Bool)

(assert (=> b!4822326 m!5810534))

(declare-fun m!5810536 () Bool)

(assert (=> b!4822326 m!5810536))

(declare-fun m!5810538 () Bool)

(assert (=> b!4822326 m!5810538))

(declare-fun m!5810540 () Bool)

(assert (=> b!4822326 m!5810540))

(declare-fun m!5810542 () Bool)

(assert (=> b!4822326 m!5810542))

(declare-fun m!5810544 () Bool)

(assert (=> b!4822326 m!5810544))

(assert (=> b!4822326 m!5810536))

(declare-fun m!5810546 () Bool)

(assert (=> b!4822326 m!5810546))

(assert (=> b!4822326 m!5810532))

(declare-fun m!5810548 () Bool)

(assert (=> b!4822326 m!5810548))

(declare-fun m!5810550 () Bool)

(assert (=> b!4822326 m!5810550))

(declare-fun m!5810552 () Bool)

(assert (=> b!4822323 m!5810552))

(declare-fun m!5810554 () Bool)

(assert (=> b!4822324 m!5810554))

(declare-fun m!5810556 () Bool)

(assert (=> d!1544097 m!5810556))

(declare-fun m!5810558 () Bool)

(assert (=> d!1544097 m!5810558))

(assert (=> b!4822325 m!5810548))

(declare-fun m!5810560 () Bool)

(assert (=> bm!336175 m!5810560))

(assert (=> b!4822169 d!1544097))

(declare-fun bs!1162421 () Bool)

(declare-fun d!1544131 () Bool)

(assert (= bs!1162421 (and d!1544131 start!499872)))

(declare-fun lambda!235850 () Int)

(assert (=> bs!1162421 (= lambda!235850 lambda!235774)))

(assert (=> d!1544131 (not (containsKey!4341 (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280)))) key!5428))))

(declare-fun lt!1970552 () Unit!142503)

(declare-fun choose!35030 (ListLongMap!5975 K!16629 (_ BitVec 64) Hashable!7256) Unit!142503)

(assert (=> d!1544131 (= lt!1970552 (choose!35030 lm!2280 key!5428 (_1!32372 (h!61377 (toList!7459 lm!2280))) hashF!1509))))

(assert (=> d!1544131 (forall!12578 (toList!7459 lm!2280) lambda!235850)))

(assert (=> d!1544131 (= (lemmaNotSameHashThenCannotContainKey!214 lm!2280 key!5428 (_1!32372 (h!61377 (toList!7459 lm!2280))) hashF!1509) lt!1970552)))

(declare-fun bs!1162422 () Bool)

(assert (= bs!1162422 d!1544131))

(assert (=> bs!1162422 m!5810322))

(assert (=> bs!1162422 m!5810322))

(assert (=> bs!1162422 m!5810332))

(declare-fun m!5810562 () Bool)

(assert (=> bs!1162422 m!5810562))

(declare-fun m!5810564 () Bool)

(assert (=> bs!1162422 m!5810564))

(assert (=> b!4822169 d!1544131))

(declare-fun bs!1162423 () Bool)

(declare-fun d!1544133 () Bool)

(assert (= bs!1162423 (and d!1544133 start!499872)))

(declare-fun lambda!235853 () Int)

(assert (=> bs!1162423 (= lambda!235853 lambda!235774)))

(declare-fun bs!1162424 () Bool)

(assert (= bs!1162424 (and d!1544133 d!1544131)))

(assert (=> bs!1162424 (= lambda!235853 lambda!235850)))

(declare-fun lt!1970555 () ListMap!6837)

(assert (=> d!1544133 (invariantList!1803 (toList!7460 lt!1970555))))

(declare-fun e!3013041 () ListMap!6837)

(assert (=> d!1544133 (= lt!1970555 e!3013041)))

(declare-fun c!821700 () Bool)

(assert (=> d!1544133 (= c!821700 ((_ is Cons!54943) (t!362563 (toList!7459 lm!2280))))))

(assert (=> d!1544133 (forall!12578 (t!362563 (toList!7459 lm!2280)) lambda!235853)))

(assert (=> d!1544133 (= (extractMap!2670 (t!362563 (toList!7459 lm!2280))) lt!1970555)))

(declare-fun b!4822334 () Bool)

(assert (=> b!4822334 (= e!3013041 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280)))) (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))))))

(declare-fun b!4822335 () Bool)

(assert (=> b!4822335 (= e!3013041 (ListMap!6838 Nil!54942))))

(assert (= (and d!1544133 c!821700) b!4822334))

(assert (= (and d!1544133 (not c!821700)) b!4822335))

(declare-fun m!5810566 () Bool)

(assert (=> d!1544133 m!5810566))

(declare-fun m!5810568 () Bool)

(assert (=> d!1544133 m!5810568))

(declare-fun m!5810570 () Bool)

(assert (=> b!4822334 m!5810570))

(assert (=> b!4822334 m!5810570))

(declare-fun m!5810572 () Bool)

(assert (=> b!4822334 m!5810572))

(assert (=> b!4822169 d!1544133))

(declare-fun d!1544135 () Bool)

(declare-fun tail!9394 (List!55067) List!55067)

(assert (=> d!1544135 (= (tail!9392 lm!2280) (ListLongMap!5976 (tail!9394 (toList!7459 lm!2280))))))

(declare-fun bs!1162425 () Bool)

(assert (= bs!1162425 d!1544135))

(declare-fun m!5810574 () Bool)

(assert (=> bs!1162425 m!5810574))

(assert (=> b!4822169 d!1544135))

(declare-fun b!4822336 () Bool)

(declare-fun e!3013044 () Bool)

(declare-fun e!3013046 () Bool)

(assert (=> b!4822336 (= e!3013044 e!3013046)))

(declare-fun res!2052546 () Bool)

(assert (=> b!4822336 (=> (not res!2052546) (not e!3013046))))

(assert (=> b!4822336 (= res!2052546 (isDefined!10591 (getValueByKey!2603 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428)))))

(declare-fun b!4822337 () Bool)

(declare-fun e!3013042 () List!55069)

(assert (=> b!4822337 (= e!3013042 (keys!20207 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))))

(declare-fun b!4822338 () Bool)

(declare-fun e!3013043 () Unit!142503)

(declare-fun e!3013045 () Unit!142503)

(assert (=> b!4822338 (= e!3013043 e!3013045)))

(declare-fun c!821702 () Bool)

(declare-fun call!336182 () Bool)

(assert (=> b!4822338 (= c!821702 call!336182)))

(declare-fun b!4822339 () Bool)

(declare-fun lt!1970558 () Unit!142503)

(assert (=> b!4822339 (= e!3013043 lt!1970558)))

(declare-fun lt!1970563 () Unit!142503)

(assert (=> b!4822339 (= lt!1970563 (lemmaContainsKeyImpliesGetValueByKeyDefined!2388 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428))))

(assert (=> b!4822339 (isDefined!10591 (getValueByKey!2603 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428))))

(declare-fun lt!1970561 () Unit!142503)

(assert (=> b!4822339 (= lt!1970561 lt!1970563)))

(assert (=> b!4822339 (= lt!1970558 (lemmaInListThenGetKeysListContains!1145 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428))))

(assert (=> b!4822339 call!336182))

(declare-fun b!4822340 () Bool)

(assert (=> b!4822340 (= e!3013046 (contains!18743 (keys!20207 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428))))

(declare-fun e!3013047 () Bool)

(declare-fun b!4822341 () Bool)

(assert (=> b!4822341 (= e!3013047 (not (contains!18743 (keys!20207 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428)))))

(declare-fun d!1544137 () Bool)

(assert (=> d!1544137 e!3013044))

(declare-fun res!2052545 () Bool)

(assert (=> d!1544137 (=> res!2052545 e!3013044)))

(assert (=> d!1544137 (= res!2052545 e!3013047)))

(declare-fun res!2052547 () Bool)

(assert (=> d!1544137 (=> (not res!2052547) (not e!3013047))))

(declare-fun lt!1970560 () Bool)

(assert (=> d!1544137 (= res!2052547 (not lt!1970560))))

(declare-fun lt!1970559 () Bool)

(assert (=> d!1544137 (= lt!1970560 lt!1970559)))

(declare-fun lt!1970562 () Unit!142503)

(assert (=> d!1544137 (= lt!1970562 e!3013043)))

(declare-fun c!821703 () Bool)

(assert (=> d!1544137 (= c!821703 lt!1970559)))

(assert (=> d!1544137 (= lt!1970559 (containsKey!4344 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428))))

(assert (=> d!1544137 (= (contains!18741 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345) key!5428) lt!1970560)))

(declare-fun b!4822342 () Bool)

(assert (=> b!4822342 (= e!3013042 (getKeysList!1150 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))))))

(declare-fun b!4822343 () Bool)

(assert (=> b!4822343 false))

(declare-fun lt!1970557 () Unit!142503)

(declare-fun lt!1970556 () Unit!142503)

(assert (=> b!4822343 (= lt!1970557 lt!1970556)))

(assert (=> b!4822343 (containsKey!4344 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428)))

(assert (=> b!4822343 (= lt!1970556 (lemmaInGetKeysListThenContainsKey!1150 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428))))

(declare-fun Unit!142534 () Unit!142503)

(assert (=> b!4822343 (= e!3013045 Unit!142534)))

(declare-fun bm!336177 () Bool)

(assert (=> bm!336177 (= call!336182 (contains!18743 e!3013042 key!5428))))

(declare-fun c!821701 () Bool)

(assert (=> bm!336177 (= c!821701 c!821703)))

(declare-fun b!4822344 () Bool)

(declare-fun Unit!142535 () Unit!142503)

(assert (=> b!4822344 (= e!3013045 Unit!142535)))

(assert (= (and d!1544137 c!821703) b!4822339))

(assert (= (and d!1544137 (not c!821703)) b!4822338))

(assert (= (and b!4822338 c!821702) b!4822343))

(assert (= (and b!4822338 (not c!821702)) b!4822344))

(assert (= (or b!4822339 b!4822338) bm!336177))

(assert (= (and bm!336177 c!821701) b!4822342))

(assert (= (and bm!336177 (not c!821701)) b!4822337))

(assert (= (and d!1544137 res!2052547) b!4822341))

(assert (= (and d!1544137 (not res!2052545)) b!4822336))

(assert (= (and b!4822336 res!2052546) b!4822340))

(assert (=> b!4822337 m!5810328))

(declare-fun m!5810576 () Bool)

(assert (=> b!4822337 m!5810576))

(assert (=> b!4822341 m!5810328))

(assert (=> b!4822341 m!5810576))

(assert (=> b!4822341 m!5810576))

(declare-fun m!5810578 () Bool)

(assert (=> b!4822341 m!5810578))

(declare-fun m!5810580 () Bool)

(assert (=> b!4822343 m!5810580))

(declare-fun m!5810582 () Bool)

(assert (=> b!4822343 m!5810582))

(declare-fun m!5810584 () Bool)

(assert (=> b!4822336 m!5810584))

(assert (=> b!4822336 m!5810584))

(declare-fun m!5810586 () Bool)

(assert (=> b!4822336 m!5810586))

(assert (=> d!1544137 m!5810580))

(declare-fun m!5810588 () Bool)

(assert (=> bm!336177 m!5810588))

(declare-fun m!5810590 () Bool)

(assert (=> b!4822339 m!5810590))

(assert (=> b!4822339 m!5810584))

(assert (=> b!4822339 m!5810584))

(assert (=> b!4822339 m!5810586))

(declare-fun m!5810592 () Bool)

(assert (=> b!4822339 m!5810592))

(declare-fun m!5810594 () Bool)

(assert (=> b!4822342 m!5810594))

(assert (=> b!4822340 m!5810328))

(assert (=> b!4822340 m!5810576))

(assert (=> b!4822340 m!5810576))

(assert (=> b!4822340 m!5810578))

(assert (=> b!4822169 d!1544137))

(declare-fun e!3013050 () Bool)

(declare-fun d!1544139 () Bool)

(assert (=> d!1544139 (= (contains!18741 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345) key!5428) e!3013050)))

(declare-fun res!2052550 () Bool)

(assert (=> d!1544139 (=> res!2052550 e!3013050)))

(assert (=> d!1544139 (= res!2052550 (containsKey!4341 (_2!32372 (h!61377 (toList!7459 lm!2280))) key!5428))))

(declare-fun lt!1970566 () Unit!142503)

(declare-fun choose!35031 (List!55066 ListMap!6837 K!16629) Unit!142503)

(assert (=> d!1544139 (= lt!1970566 (choose!35031 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345 key!5428))))

(assert (=> d!1544139 (noDuplicateKeys!2442 (_2!32372 (h!61377 (toList!7459 lm!2280))))))

(assert (=> d!1544139 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!14 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345 key!5428) lt!1970566)))

(declare-fun b!4822347 () Bool)

(assert (=> b!4822347 (= e!3013050 (contains!18741 lt!1970345 key!5428))))

(assert (= (and d!1544139 (not res!2052550)) b!4822347))

(assert (=> d!1544139 m!5810558))

(assert (=> d!1544139 m!5810324))

(assert (=> d!1544139 m!5810328))

(declare-fun m!5810596 () Bool)

(assert (=> d!1544139 m!5810596))

(assert (=> d!1544139 m!5810328))

(assert (=> d!1544139 m!5810330))

(assert (=> b!4822347 m!5810348))

(assert (=> b!4822169 d!1544139))

(declare-fun bs!1162426 () Bool)

(declare-fun d!1544141 () Bool)

(assert (= bs!1162426 (and d!1544141 start!499872)))

(declare-fun lambda!235856 () Int)

(assert (=> bs!1162426 (not (= lambda!235856 lambda!235774))))

(declare-fun bs!1162427 () Bool)

(assert (= bs!1162427 (and d!1544141 d!1544131)))

(assert (=> bs!1162427 (not (= lambda!235856 lambda!235850))))

(declare-fun bs!1162428 () Bool)

(assert (= bs!1162428 (and d!1544141 d!1544133)))

(assert (=> bs!1162428 (not (= lambda!235856 lambda!235853))))

(assert (=> d!1544141 true))

(assert (=> d!1544141 (= (allKeysSameHashInMap!2572 lm!2280 hashF!1509) (forall!12578 (toList!7459 lm!2280) lambda!235856))))

(declare-fun bs!1162429 () Bool)

(assert (= bs!1162429 d!1544141))

(declare-fun m!5810598 () Bool)

(assert (=> bs!1162429 m!5810598))

(assert (=> b!4822170 d!1544141))

(declare-fun d!1544143 () Bool)

(declare-fun e!3013055 () Bool)

(assert (=> d!1544143 e!3013055))

(declare-fun res!2052553 () Bool)

(assert (=> d!1544143 (=> res!2052553 e!3013055)))

(declare-fun lt!1970577 () Bool)

(assert (=> d!1544143 (= res!2052553 (not lt!1970577))))

(declare-fun lt!1970576 () Bool)

(assert (=> d!1544143 (= lt!1970577 lt!1970576)))

(declare-fun lt!1970578 () Unit!142503)

(declare-fun e!3013056 () Unit!142503)

(assert (=> d!1544143 (= lt!1970578 e!3013056)))

(declare-fun c!821706 () Bool)

(assert (=> d!1544143 (= c!821706 lt!1970576)))

(declare-fun containsKey!4345 (List!55067 (_ BitVec 64)) Bool)

(assert (=> d!1544143 (= lt!1970576 (containsKey!4345 (toList!7459 lm!2280) lt!1970346))))

(assert (=> d!1544143 (= (contains!18740 lm!2280 lt!1970346) lt!1970577)))

(declare-fun b!4822356 () Bool)

(declare-fun lt!1970575 () Unit!142503)

(assert (=> b!4822356 (= e!3013056 lt!1970575)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2389 (List!55067 (_ BitVec 64)) Unit!142503)

(assert (=> b!4822356 (= lt!1970575 (lemmaContainsKeyImpliesGetValueByKeyDefined!2389 (toList!7459 lm!2280) lt!1970346))))

(declare-fun isDefined!10592 (Option!13477) Bool)

(assert (=> b!4822356 (isDefined!10592 (getValueByKey!2604 (toList!7459 lm!2280) lt!1970346))))

(declare-fun b!4822357 () Bool)

(declare-fun Unit!142536 () Unit!142503)

(assert (=> b!4822357 (= e!3013056 Unit!142536)))

(declare-fun b!4822358 () Bool)

(assert (=> b!4822358 (= e!3013055 (isDefined!10592 (getValueByKey!2604 (toList!7459 lm!2280) lt!1970346)))))

(assert (= (and d!1544143 c!821706) b!4822356))

(assert (= (and d!1544143 (not c!821706)) b!4822357))

(assert (= (and d!1544143 (not res!2052553)) b!4822358))

(declare-fun m!5810600 () Bool)

(assert (=> d!1544143 m!5810600))

(declare-fun m!5810602 () Bool)

(assert (=> b!4822356 m!5810602))

(assert (=> b!4822356 m!5810392))

(assert (=> b!4822356 m!5810392))

(declare-fun m!5810604 () Bool)

(assert (=> b!4822356 m!5810604))

(assert (=> b!4822358 m!5810392))

(assert (=> b!4822358 m!5810392))

(assert (=> b!4822358 m!5810604))

(assert (=> b!4822168 d!1544143))

(declare-fun d!1544145 () Bool)

(declare-fun hash!5364 (Hashable!7256 K!16629) (_ BitVec 64))

(assert (=> d!1544145 (= (hash!5360 hashF!1509 key!5428) (hash!5364 hashF!1509 key!5428))))

(declare-fun bs!1162430 () Bool)

(assert (= bs!1162430 d!1544145))

(declare-fun m!5810606 () Bool)

(assert (=> bs!1162430 m!5810606))

(assert (=> b!4822168 d!1544145))

(declare-fun b!4822363 () Bool)

(declare-fun e!3013059 () Bool)

(declare-fun tp!1362457 () Bool)

(declare-fun tp!1362458 () Bool)

(assert (=> b!4822363 (= e!3013059 (and tp!1362457 tp!1362458))))

(assert (=> b!4822165 (= tp!1362446 e!3013059)))

(assert (= (and b!4822165 ((_ is Cons!54943) (toList!7459 lm!2280))) b!4822363))

(declare-fun b_lambda!189211 () Bool)

(assert (= b_lambda!189201 (or start!499872 b_lambda!189211)))

(declare-fun bs!1162431 () Bool)

(declare-fun d!1544147 () Bool)

(assert (= bs!1162431 (and d!1544147 start!499872)))

(assert (=> bs!1162431 (= (dynLambda!22198 lambda!235774 (h!61377 (toList!7459 (tail!9392 lm!2280)))) (noDuplicateKeys!2442 (_2!32372 (h!61377 (toList!7459 (tail!9392 lm!2280))))))))

(declare-fun m!5810608 () Bool)

(assert (=> bs!1162431 m!5810608))

(assert (=> b!4822225 d!1544147))

(declare-fun b_lambda!189213 () Bool)

(assert (= b_lambda!189199 (or start!499872 b_lambda!189213)))

(declare-fun bs!1162432 () Bool)

(declare-fun d!1544149 () Bool)

(assert (= bs!1162432 (and d!1544149 start!499872)))

(assert (=> bs!1162432 (= (dynLambda!22198 lambda!235774 (h!61377 (toList!7459 lm!2280))) (noDuplicateKeys!2442 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))

(assert (=> bs!1162432 m!5810558))

(assert (=> b!4822211 d!1544149))

(check-sat (not d!1544089) (not b!4822336) (not b!4822340) (not d!1544139) (not b!4822220) (not bm!336176) (not b!4822356) (not b_lambda!189211) (not b!4822347) tp_is_empty!34419 (not b!4822203) (not b!4822323) (not bm!336154) (not b!4822339) (not b!4822201) (not b!4822337) (not d!1544131) (not bm!336177) (not b!4822334) (not d!1544143) (not b!4822202) (not d!1544097) (not d!1544087) (not b!4822363) (not b!4822342) (not bm!336175) (not b!4822228) (not bs!1162431) (not b!4822325) (not b!4822205) (not b!4822226) (not b!4822358) (not bs!1162432) (not d!1544137) (not d!1544083) (not d!1544145) (not b!4822343) (not b_lambda!189213) (not d!1544135) (not b!4822324) (not b!4822341) (not d!1544141) (not b!4822199) (not b!4822204) (not d!1544079) (not b!4822212) (not b!4822326) (not bm!336174) (not b!4822198) (not b!4822218) (not d!1544133))
(check-sat)
(get-model)

(declare-fun d!1544235 () Bool)

(declare-fun lt!1970690 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9811 (List!55069) (InoxSet K!16629))

(assert (=> d!1544235 (= lt!1970690 (select (content!9811 (keys!20207 lt!1970345)) key!5428))))

(declare-fun e!3013171 () Bool)

(assert (=> d!1544235 (= lt!1970690 e!3013171)))

(declare-fun res!2052647 () Bool)

(assert (=> d!1544235 (=> (not res!2052647) (not e!3013171))))

(assert (=> d!1544235 (= res!2052647 ((_ is Cons!54945) (keys!20207 lt!1970345)))))

(assert (=> d!1544235 (= (contains!18743 (keys!20207 lt!1970345) key!5428) lt!1970690)))

(declare-fun b!4822535 () Bool)

(declare-fun e!3013172 () Bool)

(assert (=> b!4822535 (= e!3013171 e!3013172)))

(declare-fun res!2052646 () Bool)

(assert (=> b!4822535 (=> res!2052646 e!3013172)))

(assert (=> b!4822535 (= res!2052646 (= (h!61379 (keys!20207 lt!1970345)) key!5428))))

(declare-fun b!4822536 () Bool)

(assert (=> b!4822536 (= e!3013172 (contains!18743 (t!362565 (keys!20207 lt!1970345)) key!5428))))

(assert (= (and d!1544235 res!2052647) b!4822535))

(assert (= (and b!4822535 (not res!2052646)) b!4822536))

(assert (=> d!1544235 m!5810364))

(declare-fun m!5810900 () Bool)

(assert (=> d!1544235 m!5810900))

(declare-fun m!5810902 () Bool)

(assert (=> d!1544235 m!5810902))

(declare-fun m!5810904 () Bool)

(assert (=> b!4822536 m!5810904))

(assert (=> b!4822203 d!1544235))

(declare-fun b!4822550 () Bool)

(assert (=> b!4822550 true))

(declare-fun d!1544239 () Bool)

(declare-fun e!3013178 () Bool)

(assert (=> d!1544239 e!3013178))

(declare-fun res!2052661 () Bool)

(assert (=> d!1544239 (=> (not res!2052661) (not e!3013178))))

(declare-fun lt!1970705 () List!55069)

(declare-fun noDuplicate!952 (List!55069) Bool)

(assert (=> d!1544239 (= res!2052661 (noDuplicate!952 lt!1970705))))

(assert (=> d!1544239 (= lt!1970705 (getKeysList!1150 (toList!7460 lt!1970345)))))

(assert (=> d!1544239 (= (keys!20207 lt!1970345) lt!1970705)))

(declare-fun b!4822549 () Bool)

(declare-fun res!2052660 () Bool)

(assert (=> b!4822549 (=> (not res!2052660) (not e!3013178))))

(declare-fun length!760 (List!55069) Int)

(declare-fun length!761 (List!55066) Int)

(assert (=> b!4822549 (= res!2052660 (= (length!760 lt!1970705) (length!761 (toList!7460 lt!1970345))))))

(declare-fun res!2052662 () Bool)

(assert (=> b!4822550 (=> (not res!2052662) (not e!3013178))))

(declare-fun lambda!235902 () Int)

(declare-fun forall!12582 (List!55069 Int) Bool)

(assert (=> b!4822550 (= res!2052662 (forall!12582 lt!1970705 lambda!235902))))

(declare-fun b!4822551 () Bool)

(declare-fun lambda!235903 () Int)

(declare-fun map!12566 (List!55066 Int) List!55069)

(assert (=> b!4822551 (= e!3013178 (= (content!9811 lt!1970705) (content!9811 (map!12566 (toList!7460 lt!1970345) lambda!235903))))))

(assert (= (and d!1544239 res!2052661) b!4822549))

(assert (= (and b!4822549 res!2052660) b!4822550))

(assert (= (and b!4822550 res!2052662) b!4822551))

(declare-fun m!5810920 () Bool)

(assert (=> d!1544239 m!5810920))

(assert (=> d!1544239 m!5810382))

(declare-fun m!5810924 () Bool)

(assert (=> b!4822549 m!5810924))

(declare-fun m!5810928 () Bool)

(assert (=> b!4822549 m!5810928))

(declare-fun m!5810930 () Bool)

(assert (=> b!4822550 m!5810930))

(declare-fun m!5810932 () Bool)

(assert (=> b!4822551 m!5810932))

(declare-fun m!5810934 () Bool)

(assert (=> b!4822551 m!5810934))

(assert (=> b!4822551 m!5810934))

(declare-fun m!5810936 () Bool)

(assert (=> b!4822551 m!5810936))

(assert (=> b!4822203 d!1544239))

(declare-fun d!1544247 () Bool)

(declare-fun res!2052667 () Bool)

(declare-fun e!3013183 () Bool)

(assert (=> d!1544247 (=> res!2052667 e!3013183)))

(assert (=> d!1544247 (= res!2052667 (and ((_ is Cons!54942) (t!362562 (apply!13343 lm!2280 lt!1970346))) (= (_1!32371 (h!61376 (t!362562 (apply!13343 lm!2280 lt!1970346)))) key!5428)))))

(assert (=> d!1544247 (= (containsKey!4341 (t!362562 (apply!13343 lm!2280 lt!1970346)) key!5428) e!3013183)))

(declare-fun b!4822558 () Bool)

(declare-fun e!3013184 () Bool)

(assert (=> b!4822558 (= e!3013183 e!3013184)))

(declare-fun res!2052668 () Bool)

(assert (=> b!4822558 (=> (not res!2052668) (not e!3013184))))

(assert (=> b!4822558 (= res!2052668 ((_ is Cons!54942) (t!362562 (apply!13343 lm!2280 lt!1970346))))))

(declare-fun b!4822559 () Bool)

(assert (=> b!4822559 (= e!3013184 (containsKey!4341 (t!362562 (t!362562 (apply!13343 lm!2280 lt!1970346))) key!5428))))

(assert (= (and d!1544247 (not res!2052667)) b!4822558))

(assert (= (and b!4822558 res!2052668) b!4822559))

(declare-fun m!5810938 () Bool)

(assert (=> b!4822559 m!5810938))

(assert (=> b!4822218 d!1544247))

(declare-fun bs!1162535 () Bool)

(declare-fun d!1544249 () Bool)

(assert (= bs!1162535 (and d!1544249 b!4822327)))

(declare-fun lambda!235908 () Int)

(assert (=> bs!1162535 (= (= lt!1970542 lt!1970345) (= lambda!235908 lambda!235844))))

(declare-fun bs!1162536 () Bool)

(assert (= bs!1162536 (and d!1544249 b!4822326)))

(assert (=> bs!1162536 (= (= lt!1970542 lt!1970345) (= lambda!235908 lambda!235845))))

(assert (=> bs!1162536 (= lambda!235908 lambda!235846)))

(declare-fun bs!1162537 () Bool)

(assert (= bs!1162537 (and d!1544249 d!1544097)))

(assert (=> bs!1162537 (= (= lt!1970542 lt!1970536) (= lambda!235908 lambda!235847))))

(assert (=> d!1544249 true))

(assert (=> d!1544249 (forall!12580 (toList!7460 lt!1970345) lambda!235908)))

(declare-fun lt!1970718 () Unit!142503)

(declare-fun choose!35034 (ListMap!6837 ListMap!6837 K!16629 V!16875) Unit!142503)

(assert (=> d!1544249 (= lt!1970718 (choose!35034 lt!1970345 lt!1970542 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) (_2!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (=> d!1544249 (forall!12580 (toList!7460 (+!2527 lt!1970345 (tuple2!58155 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) (_2!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))) lambda!235908)))

(assert (=> d!1544249 (= (addForallContainsKeyThenBeforeAdding!981 lt!1970345 lt!1970542 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) (_2!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) lt!1970718)))

(declare-fun bs!1162539 () Bool)

(assert (= bs!1162539 d!1544249))

(declare-fun m!5810962 () Bool)

(assert (=> bs!1162539 m!5810962))

(declare-fun m!5810964 () Bool)

(assert (=> bs!1162539 m!5810964))

(declare-fun m!5810966 () Bool)

(assert (=> bs!1162539 m!5810966))

(declare-fun m!5810968 () Bool)

(assert (=> bs!1162539 m!5810968))

(assert (=> b!4822326 d!1544249))

(declare-fun d!1544265 () Bool)

(declare-fun res!2052686 () Bool)

(declare-fun e!3013202 () Bool)

(assert (=> d!1544265 (=> res!2052686 e!3013202)))

(assert (=> d!1544265 (= res!2052686 ((_ is Nil!54942) (toList!7460 lt!1970541)))))

(assert (=> d!1544265 (= (forall!12580 (toList!7460 lt!1970541) lambda!235846) e!3013202)))

(declare-fun b!4822578 () Bool)

(declare-fun e!3013204 () Bool)

(assert (=> b!4822578 (= e!3013202 e!3013204)))

(declare-fun res!2052688 () Bool)

(assert (=> b!4822578 (=> (not res!2052688) (not e!3013204))))

(declare-fun dynLambda!22200 (Int tuple2!58154) Bool)

(assert (=> b!4822578 (= res!2052688 (dynLambda!22200 lambda!235846 (h!61376 (toList!7460 lt!1970541))))))

(declare-fun b!4822580 () Bool)

(assert (=> b!4822580 (= e!3013204 (forall!12580 (t!362562 (toList!7460 lt!1970541)) lambda!235846))))

(assert (= (and d!1544265 (not res!2052686)) b!4822578))

(assert (= (and b!4822578 res!2052688) b!4822580))

(declare-fun b_lambda!189241 () Bool)

(assert (=> (not b_lambda!189241) (not b!4822578)))

(declare-fun m!5810984 () Bool)

(assert (=> b!4822578 m!5810984))

(declare-fun m!5810988 () Bool)

(assert (=> b!4822580 m!5810988))

(assert (=> b!4822326 d!1544265))

(declare-fun d!1544277 () Bool)

(declare-fun e!3013226 () Bool)

(assert (=> d!1544277 e!3013226))

(declare-fun res!2052708 () Bool)

(assert (=> d!1544277 (=> (not res!2052708) (not e!3013226))))

(declare-fun lt!1970731 () ListMap!6837)

(assert (=> d!1544277 (= res!2052708 (contains!18741 lt!1970731 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun lt!1970732 () List!55066)

(assert (=> d!1544277 (= lt!1970731 (ListMap!6838 lt!1970732))))

(declare-fun lt!1970729 () Unit!142503)

(declare-fun lt!1970730 () Unit!142503)

(assert (=> d!1544277 (= lt!1970729 lt!1970730)))

(assert (=> d!1544277 (= (getValueByKey!2603 lt!1970732 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (Some!13475 (_2!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1210 (List!55066 K!16629 V!16875) Unit!142503)

(assert (=> d!1544277 (= lt!1970730 (lemmaContainsTupThenGetReturnValue!1210 lt!1970732 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) (_2!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun insertNoDuplicatedKeys!718 (List!55066 K!16629 V!16875) List!55066)

(assert (=> d!1544277 (= lt!1970732 (insertNoDuplicatedKeys!718 (toList!7460 lt!1970345) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) (_2!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (=> d!1544277 (= (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970731)))

(declare-fun b!4822606 () Bool)

(declare-fun res!2052709 () Bool)

(assert (=> b!4822606 (=> (not res!2052709) (not e!3013226))))

(assert (=> b!4822606 (= res!2052709 (= (getValueByKey!2603 (toList!7460 lt!1970731) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (Some!13475 (_2!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))))

(declare-fun b!4822607 () Bool)

(declare-fun contains!18744 (List!55066 tuple2!58154) Bool)

(assert (=> b!4822607 (= e!3013226 (contains!18744 (toList!7460 lt!1970731) (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(assert (= (and d!1544277 res!2052708) b!4822606))

(assert (= (and b!4822606 res!2052709) b!4822607))

(declare-fun m!5811014 () Bool)

(assert (=> d!1544277 m!5811014))

(declare-fun m!5811016 () Bool)

(assert (=> d!1544277 m!5811016))

(declare-fun m!5811018 () Bool)

(assert (=> d!1544277 m!5811018))

(declare-fun m!5811020 () Bool)

(assert (=> d!1544277 m!5811020))

(declare-fun m!5811022 () Bool)

(assert (=> b!4822606 m!5811022))

(declare-fun m!5811024 () Bool)

(assert (=> b!4822607 m!5811024))

(assert (=> b!4822326 d!1544277))

(declare-fun d!1544307 () Bool)

(declare-fun res!2052710 () Bool)

(declare-fun e!3013227 () Bool)

(assert (=> d!1544307 (=> res!2052710 e!3013227)))

(assert (=> d!1544307 (= res!2052710 ((_ is Nil!54942) (_2!32372 (h!61377 (toList!7459 lm!2280)))))))

(assert (=> d!1544307 (= (forall!12580 (_2!32372 (h!61377 (toList!7459 lm!2280))) lambda!235846) e!3013227)))

(declare-fun b!4822608 () Bool)

(declare-fun e!3013228 () Bool)

(assert (=> b!4822608 (= e!3013227 e!3013228)))

(declare-fun res!2052711 () Bool)

(assert (=> b!4822608 (=> (not res!2052711) (not e!3013228))))

(assert (=> b!4822608 (= res!2052711 (dynLambda!22200 lambda!235846 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(declare-fun b!4822609 () Bool)

(assert (=> b!4822609 (= e!3013228 (forall!12580 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))) lambda!235846))))

(assert (= (and d!1544307 (not res!2052710)) b!4822608))

(assert (= (and b!4822608 res!2052711) b!4822609))

(declare-fun b_lambda!189269 () Bool)

(assert (=> (not b_lambda!189269) (not b!4822608)))

(declare-fun m!5811026 () Bool)

(assert (=> b!4822608 m!5811026))

(assert (=> b!4822609 m!5810546))

(assert (=> b!4822326 d!1544307))

(declare-fun d!1544309 () Bool)

(assert (=> d!1544309 (dynLambda!22200 lambda!235846 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))

(declare-fun lt!1970735 () Unit!142503)

(declare-fun choose!35035 (List!55066 Int tuple2!58154) Unit!142503)

(assert (=> d!1544309 (= lt!1970735 (choose!35035 (toList!7460 lt!1970541) lambda!235846 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(declare-fun e!3013231 () Bool)

(assert (=> d!1544309 e!3013231))

(declare-fun res!2052714 () Bool)

(assert (=> d!1544309 (=> (not res!2052714) (not e!3013231))))

(assert (=> d!1544309 (= res!2052714 (forall!12580 (toList!7460 lt!1970541) lambda!235846))))

(assert (=> d!1544309 (= (forallContained!4366 (toList!7460 lt!1970541) lambda!235846 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970735)))

(declare-fun b!4822612 () Bool)

(assert (=> b!4822612 (= e!3013231 (contains!18744 (toList!7460 lt!1970541) (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(assert (= (and d!1544309 res!2052714) b!4822612))

(declare-fun b_lambda!189271 () Bool)

(assert (=> (not b_lambda!189271) (not d!1544309)))

(assert (=> d!1544309 m!5811026))

(declare-fun m!5811028 () Bool)

(assert (=> d!1544309 m!5811028))

(assert (=> d!1544309 m!5810530))

(declare-fun m!5811030 () Bool)

(assert (=> b!4822612 m!5811030))

(assert (=> b!4822326 d!1544309))

(declare-fun d!1544311 () Bool)

(declare-fun res!2052715 () Bool)

(declare-fun e!3013232 () Bool)

(assert (=> d!1544311 (=> res!2052715 e!3013232)))

(assert (=> d!1544311 (= res!2052715 ((_ is Nil!54942) (toList!7460 lt!1970345)))))

(assert (=> d!1544311 (= (forall!12580 (toList!7460 lt!1970345) lambda!235846) e!3013232)))

(declare-fun b!4822613 () Bool)

(declare-fun e!3013233 () Bool)

(assert (=> b!4822613 (= e!3013232 e!3013233)))

(declare-fun res!2052716 () Bool)

(assert (=> b!4822613 (=> (not res!2052716) (not e!3013233))))

(assert (=> b!4822613 (= res!2052716 (dynLambda!22200 lambda!235846 (h!61376 (toList!7460 lt!1970345))))))

(declare-fun b!4822614 () Bool)

(assert (=> b!4822614 (= e!3013233 (forall!12580 (t!362562 (toList!7460 lt!1970345)) lambda!235846))))

(assert (= (and d!1544311 (not res!2052715)) b!4822613))

(assert (= (and b!4822613 res!2052716) b!4822614))

(declare-fun b_lambda!189273 () Bool)

(assert (=> (not b_lambda!189273) (not b!4822613)))

(declare-fun m!5811032 () Bool)

(assert (=> b!4822613 m!5811032))

(declare-fun m!5811034 () Bool)

(assert (=> b!4822614 m!5811034))

(assert (=> b!4822326 d!1544311))

(declare-fun bs!1162553 () Bool)

(declare-fun b!4822619 () Bool)

(assert (= bs!1162553 (and b!4822619 b!4822326)))

(declare-fun lambda!235909 () Int)

(assert (=> bs!1162553 (= (= (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970542) (= lambda!235909 lambda!235846))))

(declare-fun bs!1162554 () Bool)

(assert (= bs!1162554 (and b!4822619 d!1544097)))

(assert (=> bs!1162554 (= (= (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970536) (= lambda!235909 lambda!235847))))

(declare-fun bs!1162555 () Bool)

(assert (= bs!1162555 (and b!4822619 d!1544249)))

(assert (=> bs!1162555 (= (= (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970542) (= lambda!235909 lambda!235908))))

(declare-fun bs!1162556 () Bool)

(assert (= bs!1162556 (and b!4822619 b!4822327)))

(assert (=> bs!1162556 (= (= (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970345) (= lambda!235909 lambda!235844))))

(assert (=> bs!1162553 (= (= (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970345) (= lambda!235909 lambda!235845))))

(assert (=> b!4822619 true))

(declare-fun bs!1162557 () Bool)

(declare-fun b!4822618 () Bool)

(assert (= bs!1162557 (and b!4822618 b!4822326)))

(declare-fun lambda!235910 () Int)

(assert (=> bs!1162557 (= (= (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970542) (= lambda!235910 lambda!235846))))

(declare-fun bs!1162558 () Bool)

(assert (= bs!1162558 (and b!4822618 d!1544097)))

(assert (=> bs!1162558 (= (= (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970536) (= lambda!235910 lambda!235847))))

(declare-fun bs!1162559 () Bool)

(assert (= bs!1162559 (and b!4822618 d!1544249)))

(assert (=> bs!1162559 (= (= (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970542) (= lambda!235910 lambda!235908))))

(declare-fun bs!1162560 () Bool)

(assert (= bs!1162560 (and b!4822618 b!4822619)))

(assert (=> bs!1162560 (= lambda!235910 lambda!235909)))

(declare-fun bs!1162561 () Bool)

(assert (= bs!1162561 (and b!4822618 b!4822327)))

(assert (=> bs!1162561 (= (= (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970345) (= lambda!235910 lambda!235844))))

(assert (=> bs!1162557 (= (= (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970345) (= lambda!235910 lambda!235845))))

(assert (=> b!4822618 true))

(declare-fun lambda!235911 () Int)

(declare-fun lt!1970749 () ListMap!6837)

(assert (=> bs!1162557 (= (= lt!1970749 lt!1970542) (= lambda!235911 lambda!235846))))

(assert (=> bs!1162558 (= (= lt!1970749 lt!1970536) (= lambda!235911 lambda!235847))))

(assert (=> bs!1162559 (= (= lt!1970749 lt!1970542) (= lambda!235911 lambda!235908))))

(assert (=> b!4822618 (= (= lt!1970749 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235911 lambda!235910))))

(assert (=> bs!1162560 (= (= lt!1970749 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235911 lambda!235909))))

(assert (=> bs!1162561 (= (= lt!1970749 lt!1970345) (= lambda!235911 lambda!235844))))

(assert (=> bs!1162557 (= (= lt!1970749 lt!1970345) (= lambda!235911 lambda!235845))))

(assert (=> b!4822618 true))

(declare-fun bs!1162562 () Bool)

(declare-fun d!1544313 () Bool)

(assert (= bs!1162562 (and d!1544313 b!4822326)))

(declare-fun lambda!235912 () Int)

(declare-fun lt!1970743 () ListMap!6837)

(assert (=> bs!1162562 (= (= lt!1970743 lt!1970542) (= lambda!235912 lambda!235846))))

(declare-fun bs!1162563 () Bool)

(assert (= bs!1162563 (and d!1544313 d!1544097)))

(assert (=> bs!1162563 (= (= lt!1970743 lt!1970536) (= lambda!235912 lambda!235847))))

(declare-fun bs!1162564 () Bool)

(assert (= bs!1162564 (and d!1544313 d!1544249)))

(assert (=> bs!1162564 (= (= lt!1970743 lt!1970542) (= lambda!235912 lambda!235908))))

(declare-fun bs!1162565 () Bool)

(assert (= bs!1162565 (and d!1544313 b!4822618)))

(assert (=> bs!1162565 (= (= lt!1970743 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235912 lambda!235910))))

(assert (=> bs!1162565 (= (= lt!1970743 lt!1970749) (= lambda!235912 lambda!235911))))

(declare-fun bs!1162566 () Bool)

(assert (= bs!1162566 (and d!1544313 b!4822619)))

(assert (=> bs!1162566 (= (= lt!1970743 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235912 lambda!235909))))

(declare-fun bs!1162567 () Bool)

(assert (= bs!1162567 (and d!1544313 b!4822327)))

(assert (=> bs!1162567 (= (= lt!1970743 lt!1970345) (= lambda!235912 lambda!235844))))

(assert (=> bs!1162562 (= (= lt!1970743 lt!1970345) (= lambda!235912 lambda!235845))))

(assert (=> d!1544313 true))

(declare-fun b!4822615 () Bool)

(declare-fun res!2052719 () Bool)

(declare-fun e!3013235 () Bool)

(assert (=> b!4822615 (=> (not res!2052719) (not e!3013235))))

(assert (=> b!4822615 (= res!2052719 (forall!12580 (toList!7460 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) lambda!235912))))

(declare-fun b!4822616 () Bool)

(assert (=> b!4822616 (= e!3013235 (invariantList!1803 (toList!7460 lt!1970743)))))

(declare-fun b!4822617 () Bool)

(declare-fun e!3013236 () Bool)

(assert (=> b!4822617 (= e!3013236 (forall!12580 (toList!7460 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) lambda!235911))))

(declare-fun call!336191 () Bool)

(declare-fun bm!336186 () Bool)

(declare-fun c!821744 () Bool)

(assert (=> bm!336186 (= call!336191 (forall!12580 (toList!7460 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (ite c!821744 lambda!235909 lambda!235911)))))

(declare-fun bm!336187 () Bool)

(declare-fun call!336192 () Unit!142503)

(assert (=> bm!336187 (= call!336192 (lemmaContainsAllItsOwnKeys!982 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun e!3013234 () ListMap!6837)

(assert (=> b!4822618 (= e!3013234 lt!1970749)))

(declare-fun lt!1970748 () ListMap!6837)

(assert (=> b!4822618 (= lt!1970748 (+!2527 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) (h!61376 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (=> b!4822618 (= lt!1970749 (addToMapMapFromBucket!1788 (t!362562 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280))))) (+!2527 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) (h!61376 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))))

(declare-fun lt!1970745 () Unit!142503)

(assert (=> b!4822618 (= lt!1970745 call!336192)))

(assert (=> b!4822618 (forall!12580 (toList!7460 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) lambda!235910)))

(declare-fun lt!1970738 () Unit!142503)

(assert (=> b!4822618 (= lt!1970738 lt!1970745)))

(declare-fun call!336193 () Bool)

(assert (=> b!4822618 call!336193))

(declare-fun lt!1970750 () Unit!142503)

(declare-fun Unit!142556 () Unit!142503)

(assert (=> b!4822618 (= lt!1970750 Unit!142556)))

(assert (=> b!4822618 (forall!12580 (t!362562 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lambda!235911)))

(declare-fun lt!1970752 () Unit!142503)

(declare-fun Unit!142557 () Unit!142503)

(assert (=> b!4822618 (= lt!1970752 Unit!142557)))

(declare-fun lt!1970739 () Unit!142503)

(declare-fun Unit!142558 () Unit!142503)

(assert (=> b!4822618 (= lt!1970739 Unit!142558)))

(declare-fun lt!1970754 () Unit!142503)

(assert (=> b!4822618 (= lt!1970754 (forallContained!4366 (toList!7460 lt!1970748) lambda!235911 (h!61376 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (=> b!4822618 (contains!18741 lt!1970748 (_1!32371 (h!61376 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun lt!1970751 () Unit!142503)

(declare-fun Unit!142559 () Unit!142503)

(assert (=> b!4822618 (= lt!1970751 Unit!142559)))

(assert (=> b!4822618 (contains!18741 lt!1970749 (_1!32371 (h!61376 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun lt!1970744 () Unit!142503)

(declare-fun Unit!142560 () Unit!142503)

(assert (=> b!4822618 (= lt!1970744 Unit!142560)))

(assert (=> b!4822618 (forall!12580 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))) lambda!235911)))

(declare-fun lt!1970746 () Unit!142503)

(declare-fun Unit!142561 () Unit!142503)

(assert (=> b!4822618 (= lt!1970746 Unit!142561)))

(assert (=> b!4822618 (forall!12580 (toList!7460 lt!1970748) lambda!235911)))

(declare-fun lt!1970742 () Unit!142503)

(declare-fun Unit!142562 () Unit!142503)

(assert (=> b!4822618 (= lt!1970742 Unit!142562)))

(declare-fun lt!1970747 () Unit!142503)

(declare-fun Unit!142563 () Unit!142503)

(assert (=> b!4822618 (= lt!1970747 Unit!142563)))

(declare-fun lt!1970736 () Unit!142503)

(assert (=> b!4822618 (= lt!1970736 (addForallContainsKeyThenBeforeAdding!981 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lt!1970749 (_1!32371 (h!61376 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (_2!32371 (h!61376 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))))

(assert (=> b!4822618 call!336191))

(declare-fun lt!1970756 () Unit!142503)

(assert (=> b!4822618 (= lt!1970756 lt!1970736)))

(assert (=> b!4822618 (forall!12580 (toList!7460 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) lambda!235911)))

(declare-fun lt!1970737 () Unit!142503)

(declare-fun Unit!142564 () Unit!142503)

(assert (=> b!4822618 (= lt!1970737 Unit!142564)))

(declare-fun res!2052718 () Bool)

(assert (=> b!4822618 (= res!2052718 (forall!12580 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))) lambda!235911))))

(assert (=> b!4822618 (=> (not res!2052718) (not e!3013236))))

(assert (=> b!4822618 e!3013236))

(declare-fun lt!1970755 () Unit!142503)

(declare-fun Unit!142565 () Unit!142503)

(assert (=> b!4822618 (= lt!1970755 Unit!142565)))

(assert (=> b!4822619 (= e!3013234 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(declare-fun lt!1970753 () Unit!142503)

(assert (=> b!4822619 (= lt!1970753 call!336192)))

(assert (=> b!4822619 call!336193))

(declare-fun lt!1970740 () Unit!142503)

(assert (=> b!4822619 (= lt!1970740 lt!1970753)))

(assert (=> b!4822619 call!336191))

(declare-fun lt!1970741 () Unit!142503)

(declare-fun Unit!142566 () Unit!142503)

(assert (=> b!4822619 (= lt!1970741 Unit!142566)))

(assert (=> d!1544313 e!3013235))

(declare-fun res!2052717 () Bool)

(assert (=> d!1544313 (=> (not res!2052717) (not e!3013235))))

(assert (=> d!1544313 (= res!2052717 (forall!12580 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))) lambda!235912))))

(assert (=> d!1544313 (= lt!1970743 e!3013234)))

(assert (=> d!1544313 (= c!821744 ((_ is Nil!54942) (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(assert (=> d!1544313 (noDuplicateKeys!2442 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))

(assert (=> d!1544313 (= (addToMapMapFromBucket!1788 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))) (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) lt!1970743)))

(declare-fun bm!336188 () Bool)

(assert (=> bm!336188 (= call!336193 (forall!12580 (ite c!821744 (toList!7460 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (toList!7460 lt!1970748)) (ite c!821744 lambda!235909 lambda!235911)))))

(assert (= (and d!1544313 c!821744) b!4822619))

(assert (= (and d!1544313 (not c!821744)) b!4822618))

(assert (= (and b!4822618 res!2052718) b!4822617))

(assert (= (or b!4822619 b!4822618) bm!336188))

(assert (= (or b!4822619 b!4822618) bm!336186))

(assert (= (or b!4822619 b!4822618) bm!336187))

(assert (= (and d!1544313 res!2052717) b!4822615))

(assert (= (and b!4822615 res!2052719) b!4822616))

(declare-fun m!5811036 () Bool)

(assert (=> bm!336188 m!5811036))

(declare-fun m!5811038 () Bool)

(assert (=> bm!336186 m!5811038))

(declare-fun m!5811040 () Bool)

(assert (=> b!4822618 m!5811040))

(declare-fun m!5811042 () Bool)

(assert (=> b!4822618 m!5811042))

(assert (=> b!4822618 m!5810536))

(declare-fun m!5811044 () Bool)

(assert (=> b!4822618 m!5811044))

(declare-fun m!5811046 () Bool)

(assert (=> b!4822618 m!5811046))

(declare-fun m!5811048 () Bool)

(assert (=> b!4822618 m!5811048))

(declare-fun m!5811050 () Bool)

(assert (=> b!4822618 m!5811050))

(declare-fun m!5811052 () Bool)

(assert (=> b!4822618 m!5811052))

(declare-fun m!5811054 () Bool)

(assert (=> b!4822618 m!5811054))

(assert (=> b!4822618 m!5810536))

(assert (=> b!4822618 m!5811046))

(declare-fun m!5811056 () Bool)

(assert (=> b!4822618 m!5811056))

(assert (=> b!4822618 m!5811042))

(declare-fun m!5811058 () Bool)

(assert (=> b!4822618 m!5811058))

(declare-fun m!5811060 () Bool)

(assert (=> b!4822618 m!5811060))

(declare-fun m!5811062 () Bool)

(assert (=> b!4822615 m!5811062))

(declare-fun m!5811064 () Bool)

(assert (=> b!4822616 m!5811064))

(declare-fun m!5811066 () Bool)

(assert (=> d!1544313 m!5811066))

(declare-fun m!5811068 () Bool)

(assert (=> d!1544313 m!5811068))

(assert (=> b!4822617 m!5811058))

(assert (=> bm!336187 m!5810536))

(declare-fun m!5811070 () Bool)

(assert (=> bm!336187 m!5811070))

(assert (=> b!4822326 d!1544313))

(declare-fun b!4822620 () Bool)

(declare-fun e!3013239 () Bool)

(declare-fun e!3013241 () Bool)

(assert (=> b!4822620 (= e!3013239 e!3013241)))

(declare-fun res!2052721 () Bool)

(assert (=> b!4822620 (=> (not res!2052721) (not e!3013241))))

(assert (=> b!4822620 (= res!2052721 (isDefined!10591 (getValueByKey!2603 (toList!7460 lt!1970541) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))))

(declare-fun b!4822621 () Bool)

(declare-fun e!3013237 () List!55069)

(assert (=> b!4822621 (= e!3013237 (keys!20207 lt!1970541))))

(declare-fun b!4822622 () Bool)

(declare-fun e!3013238 () Unit!142503)

(declare-fun e!3013240 () Unit!142503)

(assert (=> b!4822622 (= e!3013238 e!3013240)))

(declare-fun c!821746 () Bool)

(declare-fun call!336194 () Bool)

(assert (=> b!4822622 (= c!821746 call!336194)))

(declare-fun b!4822623 () Bool)

(declare-fun lt!1970759 () Unit!142503)

(assert (=> b!4822623 (= e!3013238 lt!1970759)))

(declare-fun lt!1970764 () Unit!142503)

(assert (=> b!4822623 (= lt!1970764 (lemmaContainsKeyImpliesGetValueByKeyDefined!2388 (toList!7460 lt!1970541) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (=> b!4822623 (isDefined!10591 (getValueByKey!2603 (toList!7460 lt!1970541) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun lt!1970762 () Unit!142503)

(assert (=> b!4822623 (= lt!1970762 lt!1970764)))

(assert (=> b!4822623 (= lt!1970759 (lemmaInListThenGetKeysListContains!1145 (toList!7460 lt!1970541) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (=> b!4822623 call!336194))

(declare-fun b!4822624 () Bool)

(assert (=> b!4822624 (= e!3013241 (contains!18743 (keys!20207 lt!1970541) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun b!4822625 () Bool)

(declare-fun e!3013242 () Bool)

(assert (=> b!4822625 (= e!3013242 (not (contains!18743 (keys!20207 lt!1970541) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))))

(declare-fun d!1544315 () Bool)

(assert (=> d!1544315 e!3013239))

(declare-fun res!2052720 () Bool)

(assert (=> d!1544315 (=> res!2052720 e!3013239)))

(assert (=> d!1544315 (= res!2052720 e!3013242)))

(declare-fun res!2052722 () Bool)

(assert (=> d!1544315 (=> (not res!2052722) (not e!3013242))))

(declare-fun lt!1970761 () Bool)

(assert (=> d!1544315 (= res!2052722 (not lt!1970761))))

(declare-fun lt!1970760 () Bool)

(assert (=> d!1544315 (= lt!1970761 lt!1970760)))

(declare-fun lt!1970763 () Unit!142503)

(assert (=> d!1544315 (= lt!1970763 e!3013238)))

(declare-fun c!821747 () Bool)

(assert (=> d!1544315 (= c!821747 lt!1970760)))

(assert (=> d!1544315 (= lt!1970760 (containsKey!4344 (toList!7460 lt!1970541) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (=> d!1544315 (= (contains!18741 lt!1970541 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) lt!1970761)))

(declare-fun b!4822626 () Bool)

(assert (=> b!4822626 (= e!3013237 (getKeysList!1150 (toList!7460 lt!1970541)))))

(declare-fun b!4822627 () Bool)

(assert (=> b!4822627 false))

(declare-fun lt!1970758 () Unit!142503)

(declare-fun lt!1970757 () Unit!142503)

(assert (=> b!4822627 (= lt!1970758 lt!1970757)))

(assert (=> b!4822627 (containsKey!4344 (toList!7460 lt!1970541) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(assert (=> b!4822627 (= lt!1970757 (lemmaInGetKeysListThenContainsKey!1150 (toList!7460 lt!1970541) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun Unit!142567 () Unit!142503)

(assert (=> b!4822627 (= e!3013240 Unit!142567)))

(declare-fun bm!336189 () Bool)

(assert (=> bm!336189 (= call!336194 (contains!18743 e!3013237 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun c!821745 () Bool)

(assert (=> bm!336189 (= c!821745 c!821747)))

(declare-fun b!4822628 () Bool)

(declare-fun Unit!142568 () Unit!142503)

(assert (=> b!4822628 (= e!3013240 Unit!142568)))

(assert (= (and d!1544315 c!821747) b!4822623))

(assert (= (and d!1544315 (not c!821747)) b!4822622))

(assert (= (and b!4822622 c!821746) b!4822627))

(assert (= (and b!4822622 (not c!821746)) b!4822628))

(assert (= (or b!4822623 b!4822622) bm!336189))

(assert (= (and bm!336189 c!821745) b!4822626))

(assert (= (and bm!336189 (not c!821745)) b!4822621))

(assert (= (and d!1544315 res!2052722) b!4822625))

(assert (= (and d!1544315 (not res!2052720)) b!4822620))

(assert (= (and b!4822620 res!2052721) b!4822624))

(declare-fun m!5811072 () Bool)

(assert (=> b!4822621 m!5811072))

(assert (=> b!4822625 m!5811072))

(assert (=> b!4822625 m!5811072))

(declare-fun m!5811074 () Bool)

(assert (=> b!4822625 m!5811074))

(declare-fun m!5811076 () Bool)

(assert (=> b!4822627 m!5811076))

(declare-fun m!5811078 () Bool)

(assert (=> b!4822627 m!5811078))

(declare-fun m!5811080 () Bool)

(assert (=> b!4822620 m!5811080))

(assert (=> b!4822620 m!5811080))

(declare-fun m!5811082 () Bool)

(assert (=> b!4822620 m!5811082))

(assert (=> d!1544315 m!5811076))

(declare-fun m!5811084 () Bool)

(assert (=> bm!336189 m!5811084))

(declare-fun m!5811086 () Bool)

(assert (=> b!4822623 m!5811086))

(assert (=> b!4822623 m!5811080))

(assert (=> b!4822623 m!5811080))

(assert (=> b!4822623 m!5811082))

(declare-fun m!5811088 () Bool)

(assert (=> b!4822623 m!5811088))

(declare-fun m!5811090 () Bool)

(assert (=> b!4822626 m!5811090))

(assert (=> b!4822624 m!5811072))

(assert (=> b!4822624 m!5811072))

(assert (=> b!4822624 m!5811074))

(assert (=> b!4822326 d!1544315))

(declare-fun d!1544317 () Bool)

(declare-fun res!2052723 () Bool)

(declare-fun e!3013243 () Bool)

(assert (=> d!1544317 (=> res!2052723 e!3013243)))

(assert (=> d!1544317 (= res!2052723 ((_ is Nil!54942) (toList!7460 lt!1970345)))))

(assert (=> d!1544317 (= (forall!12580 (toList!7460 lt!1970345) lambda!235845) e!3013243)))

(declare-fun b!4822629 () Bool)

(declare-fun e!3013244 () Bool)

(assert (=> b!4822629 (= e!3013243 e!3013244)))

(declare-fun res!2052724 () Bool)

(assert (=> b!4822629 (=> (not res!2052724) (not e!3013244))))

(assert (=> b!4822629 (= res!2052724 (dynLambda!22200 lambda!235845 (h!61376 (toList!7460 lt!1970345))))))

(declare-fun b!4822630 () Bool)

(assert (=> b!4822630 (= e!3013244 (forall!12580 (t!362562 (toList!7460 lt!1970345)) lambda!235845))))

(assert (= (and d!1544317 (not res!2052723)) b!4822629))

(assert (= (and b!4822629 res!2052724) b!4822630))

(declare-fun b_lambda!189275 () Bool)

(assert (=> (not b_lambda!189275) (not b!4822629)))

(declare-fun m!5811092 () Bool)

(assert (=> b!4822629 m!5811092))

(declare-fun m!5811094 () Bool)

(assert (=> b!4822630 m!5811094))

(assert (=> b!4822326 d!1544317))

(declare-fun d!1544319 () Bool)

(declare-fun res!2052725 () Bool)

(declare-fun e!3013245 () Bool)

(assert (=> d!1544319 (=> res!2052725 e!3013245)))

(assert (=> d!1544319 (= res!2052725 ((_ is Nil!54942) (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(assert (=> d!1544319 (= (forall!12580 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))) lambda!235846) e!3013245)))

(declare-fun b!4822631 () Bool)

(declare-fun e!3013246 () Bool)

(assert (=> b!4822631 (= e!3013245 e!3013246)))

(declare-fun res!2052726 () Bool)

(assert (=> b!4822631 (=> (not res!2052726) (not e!3013246))))

(assert (=> b!4822631 (= res!2052726 (dynLambda!22200 lambda!235846 (h!61376 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun b!4822632 () Bool)

(assert (=> b!4822632 (= e!3013246 (forall!12580 (t!362562 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280))))) lambda!235846))))

(assert (= (and d!1544319 (not res!2052725)) b!4822631))

(assert (= (and b!4822631 res!2052726) b!4822632))

(declare-fun b_lambda!189277 () Bool)

(assert (=> (not b_lambda!189277) (not b!4822631)))

(declare-fun m!5811096 () Bool)

(assert (=> b!4822631 m!5811096))

(declare-fun m!5811098 () Bool)

(assert (=> b!4822632 m!5811098))

(assert (=> b!4822326 d!1544319))

(declare-fun b!4822633 () Bool)

(declare-fun e!3013249 () Bool)

(declare-fun e!3013251 () Bool)

(assert (=> b!4822633 (= e!3013249 e!3013251)))

(declare-fun res!2052728 () Bool)

(assert (=> b!4822633 (=> (not res!2052728) (not e!3013251))))

(assert (=> b!4822633 (= res!2052728 (isDefined!10591 (getValueByKey!2603 (toList!7460 lt!1970542) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))))

(declare-fun b!4822634 () Bool)

(declare-fun e!3013247 () List!55069)

(assert (=> b!4822634 (= e!3013247 (keys!20207 lt!1970542))))

(declare-fun b!4822635 () Bool)

(declare-fun e!3013248 () Unit!142503)

(declare-fun e!3013250 () Unit!142503)

(assert (=> b!4822635 (= e!3013248 e!3013250)))

(declare-fun c!821749 () Bool)

(declare-fun call!336195 () Bool)

(assert (=> b!4822635 (= c!821749 call!336195)))

(declare-fun b!4822636 () Bool)

(declare-fun lt!1970767 () Unit!142503)

(assert (=> b!4822636 (= e!3013248 lt!1970767)))

(declare-fun lt!1970772 () Unit!142503)

(assert (=> b!4822636 (= lt!1970772 (lemmaContainsKeyImpliesGetValueByKeyDefined!2388 (toList!7460 lt!1970542) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (=> b!4822636 (isDefined!10591 (getValueByKey!2603 (toList!7460 lt!1970542) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun lt!1970770 () Unit!142503)

(assert (=> b!4822636 (= lt!1970770 lt!1970772)))

(assert (=> b!4822636 (= lt!1970767 (lemmaInListThenGetKeysListContains!1145 (toList!7460 lt!1970542) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (=> b!4822636 call!336195))

(declare-fun b!4822637 () Bool)

(assert (=> b!4822637 (= e!3013251 (contains!18743 (keys!20207 lt!1970542) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun b!4822638 () Bool)

(declare-fun e!3013252 () Bool)

(assert (=> b!4822638 (= e!3013252 (not (contains!18743 (keys!20207 lt!1970542) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))))

(declare-fun d!1544321 () Bool)

(assert (=> d!1544321 e!3013249))

(declare-fun res!2052727 () Bool)

(assert (=> d!1544321 (=> res!2052727 e!3013249)))

(assert (=> d!1544321 (= res!2052727 e!3013252)))

(declare-fun res!2052729 () Bool)

(assert (=> d!1544321 (=> (not res!2052729) (not e!3013252))))

(declare-fun lt!1970769 () Bool)

(assert (=> d!1544321 (= res!2052729 (not lt!1970769))))

(declare-fun lt!1970768 () Bool)

(assert (=> d!1544321 (= lt!1970769 lt!1970768)))

(declare-fun lt!1970771 () Unit!142503)

(assert (=> d!1544321 (= lt!1970771 e!3013248)))

(declare-fun c!821750 () Bool)

(assert (=> d!1544321 (= c!821750 lt!1970768)))

(assert (=> d!1544321 (= lt!1970768 (containsKey!4344 (toList!7460 lt!1970542) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (=> d!1544321 (= (contains!18741 lt!1970542 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) lt!1970769)))

(declare-fun b!4822639 () Bool)

(assert (=> b!4822639 (= e!3013247 (getKeysList!1150 (toList!7460 lt!1970542)))))

(declare-fun b!4822640 () Bool)

(assert (=> b!4822640 false))

(declare-fun lt!1970766 () Unit!142503)

(declare-fun lt!1970765 () Unit!142503)

(assert (=> b!4822640 (= lt!1970766 lt!1970765)))

(assert (=> b!4822640 (containsKey!4344 (toList!7460 lt!1970542) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(assert (=> b!4822640 (= lt!1970765 (lemmaInGetKeysListThenContainsKey!1150 (toList!7460 lt!1970542) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun Unit!142570 () Unit!142503)

(assert (=> b!4822640 (= e!3013250 Unit!142570)))

(declare-fun bm!336190 () Bool)

(assert (=> bm!336190 (= call!336195 (contains!18743 e!3013247 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun c!821748 () Bool)

(assert (=> bm!336190 (= c!821748 c!821750)))

(declare-fun b!4822641 () Bool)

(declare-fun Unit!142571 () Unit!142503)

(assert (=> b!4822641 (= e!3013250 Unit!142571)))

(assert (= (and d!1544321 c!821750) b!4822636))

(assert (= (and d!1544321 (not c!821750)) b!4822635))

(assert (= (and b!4822635 c!821749) b!4822640))

(assert (= (and b!4822635 (not c!821749)) b!4822641))

(assert (= (or b!4822636 b!4822635) bm!336190))

(assert (= (and bm!336190 c!821748) b!4822639))

(assert (= (and bm!336190 (not c!821748)) b!4822634))

(assert (= (and d!1544321 res!2052729) b!4822638))

(assert (= (and d!1544321 (not res!2052727)) b!4822633))

(assert (= (and b!4822633 res!2052728) b!4822637))

(declare-fun m!5811100 () Bool)

(assert (=> b!4822634 m!5811100))

(assert (=> b!4822638 m!5811100))

(assert (=> b!4822638 m!5811100))

(declare-fun m!5811102 () Bool)

(assert (=> b!4822638 m!5811102))

(declare-fun m!5811104 () Bool)

(assert (=> b!4822640 m!5811104))

(declare-fun m!5811106 () Bool)

(assert (=> b!4822640 m!5811106))

(declare-fun m!5811108 () Bool)

(assert (=> b!4822633 m!5811108))

(assert (=> b!4822633 m!5811108))

(declare-fun m!5811110 () Bool)

(assert (=> b!4822633 m!5811110))

(assert (=> d!1544321 m!5811104))

(declare-fun m!5811112 () Bool)

(assert (=> bm!336190 m!5811112))

(declare-fun m!5811114 () Bool)

(assert (=> b!4822636 m!5811114))

(assert (=> b!4822636 m!5811108))

(assert (=> b!4822636 m!5811108))

(assert (=> b!4822636 m!5811110))

(declare-fun m!5811116 () Bool)

(assert (=> b!4822636 m!5811116))

(declare-fun m!5811118 () Bool)

(assert (=> b!4822639 m!5811118))

(assert (=> b!4822637 m!5811100))

(assert (=> b!4822637 m!5811100))

(assert (=> b!4822637 m!5811102))

(assert (=> b!4822326 d!1544321))

(declare-fun d!1544323 () Bool)

(declare-fun res!2052730 () Bool)

(declare-fun e!3013253 () Bool)

(assert (=> d!1544323 (=> res!2052730 e!3013253)))

(assert (=> d!1544323 (= res!2052730 (and ((_ is Cons!54942) (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280))))) (= (_1!32371 (h!61376 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) key!5428)))))

(assert (=> d!1544323 (= (containsKey!4341 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))) key!5428) e!3013253)))

(declare-fun b!4822642 () Bool)

(declare-fun e!3013254 () Bool)

(assert (=> b!4822642 (= e!3013253 e!3013254)))

(declare-fun res!2052731 () Bool)

(assert (=> b!4822642 (=> (not res!2052731) (not e!3013254))))

(assert (=> b!4822642 (= res!2052731 ((_ is Cons!54942) (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(declare-fun b!4822643 () Bool)

(assert (=> b!4822643 (= e!3013254 (containsKey!4341 (t!362562 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280))))) key!5428))))

(assert (= (and d!1544323 (not res!2052730)) b!4822642))

(assert (= (and b!4822642 res!2052731) b!4822643))

(declare-fun m!5811120 () Bool)

(assert (=> b!4822643 m!5811120))

(assert (=> b!4822228 d!1544323))

(declare-fun d!1544325 () Bool)

(declare-fun res!2052732 () Bool)

(declare-fun e!3013255 () Bool)

(assert (=> d!1544325 (=> res!2052732 e!3013255)))

(assert (=> d!1544325 (= res!2052732 ((_ is Nil!54942) (ite c!821697 (toList!7460 lt!1970345) (toList!7460 lt!1970541))))))

(assert (=> d!1544325 (= (forall!12580 (ite c!821697 (toList!7460 lt!1970345) (toList!7460 lt!1970541)) (ite c!821697 lambda!235844 lambda!235846)) e!3013255)))

(declare-fun b!4822644 () Bool)

(declare-fun e!3013256 () Bool)

(assert (=> b!4822644 (= e!3013255 e!3013256)))

(declare-fun res!2052733 () Bool)

(assert (=> b!4822644 (=> (not res!2052733) (not e!3013256))))

(assert (=> b!4822644 (= res!2052733 (dynLambda!22200 (ite c!821697 lambda!235844 lambda!235846) (h!61376 (ite c!821697 (toList!7460 lt!1970345) (toList!7460 lt!1970541)))))))

(declare-fun b!4822645 () Bool)

(assert (=> b!4822645 (= e!3013256 (forall!12580 (t!362562 (ite c!821697 (toList!7460 lt!1970345) (toList!7460 lt!1970541))) (ite c!821697 lambda!235844 lambda!235846)))))

(assert (= (and d!1544325 (not res!2052732)) b!4822644))

(assert (= (and b!4822644 res!2052733) b!4822645))

(declare-fun b_lambda!189279 () Bool)

(assert (=> (not b_lambda!189279) (not b!4822644)))

(declare-fun m!5811122 () Bool)

(assert (=> b!4822644 m!5811122))

(declare-fun m!5811124 () Bool)

(assert (=> b!4822645 m!5811124))

(assert (=> bm!336176 d!1544325))

(declare-fun d!1544327 () Bool)

(declare-fun res!2052738 () Bool)

(declare-fun e!3013261 () Bool)

(assert (=> d!1544327 (=> res!2052738 e!3013261)))

(assert (=> d!1544327 (= res!2052738 (and ((_ is Cons!54942) (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (= (_1!32371 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) key!5428)))))

(assert (=> d!1544327 (= (containsKey!4344 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428) e!3013261)))

(declare-fun b!4822650 () Bool)

(declare-fun e!3013262 () Bool)

(assert (=> b!4822650 (= e!3013261 e!3013262)))

(declare-fun res!2052739 () Bool)

(assert (=> b!4822650 (=> (not res!2052739) (not e!3013262))))

(assert (=> b!4822650 (= res!2052739 ((_ is Cons!54942) (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))))))

(declare-fun b!4822651 () Bool)

(assert (=> b!4822651 (= e!3013262 (containsKey!4344 (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) key!5428))))

(assert (= (and d!1544327 (not res!2052738)) b!4822650))

(assert (= (and b!4822650 res!2052739) b!4822651))

(declare-fun m!5811126 () Bool)

(assert (=> b!4822651 m!5811126))

(assert (=> d!1544137 d!1544327))

(assert (=> b!4822202 d!1544235))

(assert (=> b!4822202 d!1544239))

(declare-fun bs!1162568 () Bool)

(declare-fun b!4822656 () Bool)

(assert (= bs!1162568 (and b!4822656 b!4822326)))

(declare-fun lambda!235913 () Int)

(assert (=> bs!1162568 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970542) (= lambda!235913 lambda!235846))))

(declare-fun bs!1162569 () Bool)

(assert (= bs!1162569 (and b!4822656 d!1544097)))

(assert (=> bs!1162569 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970536) (= lambda!235913 lambda!235847))))

(declare-fun bs!1162570 () Bool)

(assert (= bs!1162570 (and b!4822656 d!1544313)))

(assert (=> bs!1162570 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970743) (= lambda!235913 lambda!235912))))

(declare-fun bs!1162571 () Bool)

(assert (= bs!1162571 (and b!4822656 d!1544249)))

(assert (=> bs!1162571 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970542) (= lambda!235913 lambda!235908))))

(declare-fun bs!1162572 () Bool)

(assert (= bs!1162572 (and b!4822656 b!4822618)))

(assert (=> bs!1162572 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235913 lambda!235910))))

(assert (=> bs!1162572 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970749) (= lambda!235913 lambda!235911))))

(declare-fun bs!1162573 () Bool)

(assert (= bs!1162573 (and b!4822656 b!4822619)))

(assert (=> bs!1162573 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235913 lambda!235909))))

(declare-fun bs!1162574 () Bool)

(assert (= bs!1162574 (and b!4822656 b!4822327)))

(assert (=> bs!1162574 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970345) (= lambda!235913 lambda!235844))))

(assert (=> bs!1162568 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970345) (= lambda!235913 lambda!235845))))

(assert (=> b!4822656 true))

(declare-fun bs!1162575 () Bool)

(declare-fun b!4822655 () Bool)

(assert (= bs!1162575 (and b!4822655 d!1544097)))

(declare-fun lambda!235914 () Int)

(assert (=> bs!1162575 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970536) (= lambda!235914 lambda!235847))))

(declare-fun bs!1162576 () Bool)

(assert (= bs!1162576 (and b!4822655 d!1544313)))

(assert (=> bs!1162576 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970743) (= lambda!235914 lambda!235912))))

(declare-fun bs!1162577 () Bool)

(assert (= bs!1162577 (and b!4822655 d!1544249)))

(assert (=> bs!1162577 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970542) (= lambda!235914 lambda!235908))))

(declare-fun bs!1162578 () Bool)

(assert (= bs!1162578 (and b!4822655 b!4822618)))

(assert (=> bs!1162578 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235914 lambda!235910))))

(assert (=> bs!1162578 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970749) (= lambda!235914 lambda!235911))))

(declare-fun bs!1162579 () Bool)

(assert (= bs!1162579 (and b!4822655 b!4822619)))

(assert (=> bs!1162579 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235914 lambda!235909))))

(declare-fun bs!1162580 () Bool)

(assert (= bs!1162580 (and b!4822655 b!4822656)))

(assert (=> bs!1162580 (= lambda!235914 lambda!235913)))

(declare-fun bs!1162581 () Bool)

(assert (= bs!1162581 (and b!4822655 b!4822326)))

(assert (=> bs!1162581 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970542) (= lambda!235914 lambda!235846))))

(declare-fun bs!1162582 () Bool)

(assert (= bs!1162582 (and b!4822655 b!4822327)))

(assert (=> bs!1162582 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970345) (= lambda!235914 lambda!235844))))

(assert (=> bs!1162581 (= (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970345) (= lambda!235914 lambda!235845))))

(assert (=> b!4822655 true))

(declare-fun lt!1970786 () ListMap!6837)

(declare-fun lambda!235915 () Int)

(assert (=> b!4822655 (= (= lt!1970786 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) (= lambda!235915 lambda!235914))))

(assert (=> bs!1162575 (= (= lt!1970786 lt!1970536) (= lambda!235915 lambda!235847))))

(assert (=> bs!1162576 (= (= lt!1970786 lt!1970743) (= lambda!235915 lambda!235912))))

(assert (=> bs!1162577 (= (= lt!1970786 lt!1970542) (= lambda!235915 lambda!235908))))

(assert (=> bs!1162578 (= (= lt!1970786 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235915 lambda!235910))))

(assert (=> bs!1162578 (= (= lt!1970786 lt!1970749) (= lambda!235915 lambda!235911))))

(assert (=> bs!1162579 (= (= lt!1970786 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235915 lambda!235909))))

(assert (=> bs!1162580 (= (= lt!1970786 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) (= lambda!235915 lambda!235913))))

(assert (=> bs!1162581 (= (= lt!1970786 lt!1970542) (= lambda!235915 lambda!235846))))

(assert (=> bs!1162582 (= (= lt!1970786 lt!1970345) (= lambda!235915 lambda!235844))))

(assert (=> bs!1162581 (= (= lt!1970786 lt!1970345) (= lambda!235915 lambda!235845))))

(assert (=> b!4822655 true))

(declare-fun bs!1162583 () Bool)

(declare-fun d!1544329 () Bool)

(assert (= bs!1162583 (and d!1544329 b!4822655)))

(declare-fun lambda!235916 () Int)

(declare-fun lt!1970780 () ListMap!6837)

(assert (=> bs!1162583 (= (= lt!1970780 lt!1970786) (= lambda!235916 lambda!235915))))

(assert (=> bs!1162583 (= (= lt!1970780 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) (= lambda!235916 lambda!235914))))

(declare-fun bs!1162584 () Bool)

(assert (= bs!1162584 (and d!1544329 d!1544097)))

(assert (=> bs!1162584 (= (= lt!1970780 lt!1970536) (= lambda!235916 lambda!235847))))

(declare-fun bs!1162585 () Bool)

(assert (= bs!1162585 (and d!1544329 d!1544313)))

(assert (=> bs!1162585 (= (= lt!1970780 lt!1970743) (= lambda!235916 lambda!235912))))

(declare-fun bs!1162586 () Bool)

(assert (= bs!1162586 (and d!1544329 d!1544249)))

(assert (=> bs!1162586 (= (= lt!1970780 lt!1970542) (= lambda!235916 lambda!235908))))

(declare-fun bs!1162587 () Bool)

(assert (= bs!1162587 (and d!1544329 b!4822618)))

(assert (=> bs!1162587 (= (= lt!1970780 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235916 lambda!235910))))

(assert (=> bs!1162587 (= (= lt!1970780 lt!1970749) (= lambda!235916 lambda!235911))))

(declare-fun bs!1162588 () Bool)

(assert (= bs!1162588 (and d!1544329 b!4822619)))

(assert (=> bs!1162588 (= (= lt!1970780 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235916 lambda!235909))))

(declare-fun bs!1162589 () Bool)

(assert (= bs!1162589 (and d!1544329 b!4822656)))

(assert (=> bs!1162589 (= (= lt!1970780 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) (= lambda!235916 lambda!235913))))

(declare-fun bs!1162590 () Bool)

(assert (= bs!1162590 (and d!1544329 b!4822326)))

(assert (=> bs!1162590 (= (= lt!1970780 lt!1970542) (= lambda!235916 lambda!235846))))

(declare-fun bs!1162591 () Bool)

(assert (= bs!1162591 (and d!1544329 b!4822327)))

(assert (=> bs!1162591 (= (= lt!1970780 lt!1970345) (= lambda!235916 lambda!235844))))

(assert (=> bs!1162590 (= (= lt!1970780 lt!1970345) (= lambda!235916 lambda!235845))))

(assert (=> d!1544329 true))

(declare-fun b!4822652 () Bool)

(declare-fun res!2052742 () Bool)

(declare-fun e!3013264 () Bool)

(assert (=> b!4822652 (=> (not res!2052742) (not e!3013264))))

(assert (=> b!4822652 (= res!2052742 (forall!12580 (toList!7460 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) lambda!235916))))

(declare-fun b!4822653 () Bool)

(assert (=> b!4822653 (= e!3013264 (invariantList!1803 (toList!7460 lt!1970780)))))

(declare-fun b!4822654 () Bool)

(declare-fun e!3013265 () Bool)

(assert (=> b!4822654 (= e!3013265 (forall!12580 (toList!7460 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) lambda!235915))))

(declare-fun bm!336191 () Bool)

(declare-fun call!336196 () Bool)

(declare-fun c!821751 () Bool)

(assert (=> bm!336191 (= call!336196 (forall!12580 (toList!7460 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) (ite c!821751 lambda!235913 lambda!235915)))))

(declare-fun bm!336192 () Bool)

(declare-fun call!336197 () Unit!142503)

(assert (=> bm!336192 (= call!336197 (lemmaContainsAllItsOwnKeys!982 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))))))

(declare-fun e!3013263 () ListMap!6837)

(assert (=> b!4822655 (= e!3013263 lt!1970786)))

(declare-fun lt!1970785 () ListMap!6837)

(assert (=> b!4822655 (= lt!1970785 (+!2527 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) (h!61376 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280)))))))))

(assert (=> b!4822655 (= lt!1970786 (addToMapMapFromBucket!1788 (t!362562 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280))))) (+!2527 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) (h!61376 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280))))))))))

(declare-fun lt!1970782 () Unit!142503)

(assert (=> b!4822655 (= lt!1970782 call!336197)))

(assert (=> b!4822655 (forall!12580 (toList!7460 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) lambda!235914)))

(declare-fun lt!1970775 () Unit!142503)

(assert (=> b!4822655 (= lt!1970775 lt!1970782)))

(declare-fun call!336198 () Bool)

(assert (=> b!4822655 call!336198))

(declare-fun lt!1970787 () Unit!142503)

(declare-fun Unit!142575 () Unit!142503)

(assert (=> b!4822655 (= lt!1970787 Unit!142575)))

(assert (=> b!4822655 (forall!12580 (t!362562 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280))))) lambda!235915)))

(declare-fun lt!1970789 () Unit!142503)

(declare-fun Unit!142576 () Unit!142503)

(assert (=> b!4822655 (= lt!1970789 Unit!142576)))

(declare-fun lt!1970776 () Unit!142503)

(declare-fun Unit!142577 () Unit!142503)

(assert (=> b!4822655 (= lt!1970776 Unit!142577)))

(declare-fun lt!1970791 () Unit!142503)

(assert (=> b!4822655 (= lt!1970791 (forallContained!4366 (toList!7460 lt!1970785) lambda!235915 (h!61376 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280)))))))))

(assert (=> b!4822655 (contains!18741 lt!1970785 (_1!32371 (h!61376 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280)))))))))

(declare-fun lt!1970788 () Unit!142503)

(declare-fun Unit!142578 () Unit!142503)

(assert (=> b!4822655 (= lt!1970788 Unit!142578)))

(assert (=> b!4822655 (contains!18741 lt!1970786 (_1!32371 (h!61376 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280)))))))))

(declare-fun lt!1970781 () Unit!142503)

(declare-fun Unit!142579 () Unit!142503)

(assert (=> b!4822655 (= lt!1970781 Unit!142579)))

(assert (=> b!4822655 (forall!12580 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280)))) lambda!235915)))

(declare-fun lt!1970783 () Unit!142503)

(declare-fun Unit!142580 () Unit!142503)

(assert (=> b!4822655 (= lt!1970783 Unit!142580)))

(assert (=> b!4822655 (forall!12580 (toList!7460 lt!1970785) lambda!235915)))

(declare-fun lt!1970779 () Unit!142503)

(declare-fun Unit!142581 () Unit!142503)

(assert (=> b!4822655 (= lt!1970779 Unit!142581)))

(declare-fun lt!1970784 () Unit!142503)

(declare-fun Unit!142582 () Unit!142503)

(assert (=> b!4822655 (= lt!1970784 Unit!142582)))

(declare-fun lt!1970773 () Unit!142503)

(assert (=> b!4822655 (= lt!1970773 (addForallContainsKeyThenBeforeAdding!981 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970786 (_1!32371 (h!61376 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280)))))) (_2!32371 (h!61376 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280))))))))))

(assert (=> b!4822655 call!336196))

(declare-fun lt!1970793 () Unit!142503)

(assert (=> b!4822655 (= lt!1970793 lt!1970773)))

(assert (=> b!4822655 (forall!12580 (toList!7460 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) lambda!235915)))

(declare-fun lt!1970774 () Unit!142503)

(declare-fun Unit!142583 () Unit!142503)

(assert (=> b!4822655 (= lt!1970774 Unit!142583)))

(declare-fun res!2052741 () Bool)

(assert (=> b!4822655 (= res!2052741 (forall!12580 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280)))) lambda!235915))))

(assert (=> b!4822655 (=> (not res!2052741) (not e!3013265))))

(assert (=> b!4822655 e!3013265))

(declare-fun lt!1970792 () Unit!142503)

(declare-fun Unit!142584 () Unit!142503)

(assert (=> b!4822655 (= lt!1970792 Unit!142584)))

(assert (=> b!4822656 (= e!3013263 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))))))

(declare-fun lt!1970790 () Unit!142503)

(assert (=> b!4822656 (= lt!1970790 call!336197)))

(assert (=> b!4822656 call!336198))

(declare-fun lt!1970777 () Unit!142503)

(assert (=> b!4822656 (= lt!1970777 lt!1970790)))

(assert (=> b!4822656 call!336196))

(declare-fun lt!1970778 () Unit!142503)

(declare-fun Unit!142585 () Unit!142503)

(assert (=> b!4822656 (= lt!1970778 Unit!142585)))

(assert (=> d!1544329 e!3013264))

(declare-fun res!2052740 () Bool)

(assert (=> d!1544329 (=> (not res!2052740) (not e!3013264))))

(assert (=> d!1544329 (= res!2052740 (forall!12580 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280)))) lambda!235916))))

(assert (=> d!1544329 (= lt!1970780 e!3013263)))

(assert (=> d!1544329 (= c!821751 ((_ is Nil!54942) (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280))))))))

(assert (=> d!1544329 (noDuplicateKeys!2442 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280)))))))

(assert (=> d!1544329 (= (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280)))) (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) lt!1970780)))

(declare-fun bm!336193 () Bool)

(assert (=> bm!336193 (= call!336198 (forall!12580 (ite c!821751 (toList!7460 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) (toList!7460 lt!1970785)) (ite c!821751 lambda!235913 lambda!235915)))))

(assert (= (and d!1544329 c!821751) b!4822656))

(assert (= (and d!1544329 (not c!821751)) b!4822655))

(assert (= (and b!4822655 res!2052741) b!4822654))

(assert (= (or b!4822656 b!4822655) bm!336193))

(assert (= (or b!4822656 b!4822655) bm!336191))

(assert (= (or b!4822656 b!4822655) bm!336192))

(assert (= (and d!1544329 res!2052740) b!4822652))

(assert (= (and b!4822652 res!2052742) b!4822653))

(declare-fun m!5811128 () Bool)

(assert (=> bm!336193 m!5811128))

(declare-fun m!5811130 () Bool)

(assert (=> bm!336191 m!5811130))

(declare-fun m!5811132 () Bool)

(assert (=> b!4822655 m!5811132))

(declare-fun m!5811134 () Bool)

(assert (=> b!4822655 m!5811134))

(assert (=> b!4822655 m!5810570))

(declare-fun m!5811136 () Bool)

(assert (=> b!4822655 m!5811136))

(declare-fun m!5811138 () Bool)

(assert (=> b!4822655 m!5811138))

(declare-fun m!5811140 () Bool)

(assert (=> b!4822655 m!5811140))

(declare-fun m!5811142 () Bool)

(assert (=> b!4822655 m!5811142))

(declare-fun m!5811144 () Bool)

(assert (=> b!4822655 m!5811144))

(declare-fun m!5811146 () Bool)

(assert (=> b!4822655 m!5811146))

(assert (=> b!4822655 m!5810570))

(assert (=> b!4822655 m!5811138))

(declare-fun m!5811148 () Bool)

(assert (=> b!4822655 m!5811148))

(assert (=> b!4822655 m!5811134))

(declare-fun m!5811150 () Bool)

(assert (=> b!4822655 m!5811150))

(declare-fun m!5811152 () Bool)

(assert (=> b!4822655 m!5811152))

(declare-fun m!5811154 () Bool)

(assert (=> b!4822652 m!5811154))

(declare-fun m!5811156 () Bool)

(assert (=> b!4822653 m!5811156))

(declare-fun m!5811158 () Bool)

(assert (=> d!1544329 m!5811158))

(declare-fun m!5811160 () Bool)

(assert (=> d!1544329 m!5811160))

(assert (=> b!4822654 m!5811150))

(assert (=> bm!336192 m!5810570))

(declare-fun m!5811162 () Bool)

(assert (=> bm!336192 m!5811162))

(assert (=> b!4822334 d!1544329))

(declare-fun bs!1162592 () Bool)

(declare-fun d!1544331 () Bool)

(assert (= bs!1162592 (and d!1544331 start!499872)))

(declare-fun lambda!235917 () Int)

(assert (=> bs!1162592 (= lambda!235917 lambda!235774)))

(declare-fun bs!1162593 () Bool)

(assert (= bs!1162593 (and d!1544331 d!1544131)))

(assert (=> bs!1162593 (= lambda!235917 lambda!235850)))

(declare-fun bs!1162594 () Bool)

(assert (= bs!1162594 (and d!1544331 d!1544133)))

(assert (=> bs!1162594 (= lambda!235917 lambda!235853)))

(declare-fun bs!1162595 () Bool)

(assert (= bs!1162595 (and d!1544331 d!1544141)))

(assert (=> bs!1162595 (not (= lambda!235917 lambda!235856))))

(declare-fun lt!1970794 () ListMap!6837)

(assert (=> d!1544331 (invariantList!1803 (toList!7460 lt!1970794))))

(declare-fun e!3013266 () ListMap!6837)

(assert (=> d!1544331 (= lt!1970794 e!3013266)))

(declare-fun c!821752 () Bool)

(assert (=> d!1544331 (= c!821752 ((_ is Cons!54943) (t!362563 (t!362563 (toList!7459 lm!2280)))))))

(assert (=> d!1544331 (forall!12578 (t!362563 (t!362563 (toList!7459 lm!2280))) lambda!235917)))

(assert (=> d!1544331 (= (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280)))) lt!1970794)))

(declare-fun b!4822657 () Bool)

(assert (=> b!4822657 (= e!3013266 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (t!362563 (t!362563 (toList!7459 lm!2280))))) (extractMap!2670 (t!362563 (t!362563 (t!362563 (toList!7459 lm!2280)))))))))

(declare-fun b!4822658 () Bool)

(assert (=> b!4822658 (= e!3013266 (ListMap!6838 Nil!54942))))

(assert (= (and d!1544331 c!821752) b!4822657))

(assert (= (and d!1544331 (not c!821752)) b!4822658))

(declare-fun m!5811164 () Bool)

(assert (=> d!1544331 m!5811164))

(declare-fun m!5811166 () Bool)

(assert (=> d!1544331 m!5811166))

(declare-fun m!5811168 () Bool)

(assert (=> b!4822657 m!5811168))

(assert (=> b!4822657 m!5811168))

(declare-fun m!5811170 () Bool)

(assert (=> b!4822657 m!5811170))

(assert (=> b!4822334 d!1544331))

(declare-fun bs!1162596 () Bool)

(declare-fun b!4822660 () Bool)

(assert (= bs!1162596 (and b!4822660 b!4822550)))

(declare-fun lambda!235918 () Int)

(assert (=> bs!1162596 (= (= (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) (toList!7460 lt!1970345)) (= lambda!235918 lambda!235902))))

(assert (=> b!4822660 true))

(declare-fun bs!1162597 () Bool)

(declare-fun b!4822661 () Bool)

(assert (= bs!1162597 (and b!4822661 b!4822551)))

(declare-fun lambda!235919 () Int)

(assert (=> bs!1162597 (= lambda!235919 lambda!235903)))

(declare-fun d!1544333 () Bool)

(declare-fun e!3013267 () Bool)

(assert (=> d!1544333 e!3013267))

(declare-fun res!2052744 () Bool)

(assert (=> d!1544333 (=> (not res!2052744) (not e!3013267))))

(declare-fun lt!1970795 () List!55069)

(assert (=> d!1544333 (= res!2052744 (noDuplicate!952 lt!1970795))))

(assert (=> d!1544333 (= lt!1970795 (getKeysList!1150 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))))))

(assert (=> d!1544333 (= (keys!20207 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) lt!1970795)))

(declare-fun b!4822659 () Bool)

(declare-fun res!2052743 () Bool)

(assert (=> b!4822659 (=> (not res!2052743) (not e!3013267))))

(assert (=> b!4822659 (= res!2052743 (= (length!760 lt!1970795) (length!761 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))))))

(declare-fun res!2052745 () Bool)

(assert (=> b!4822660 (=> (not res!2052745) (not e!3013267))))

(assert (=> b!4822660 (= res!2052745 (forall!12582 lt!1970795 lambda!235918))))

(assert (=> b!4822661 (= e!3013267 (= (content!9811 lt!1970795) (content!9811 (map!12566 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) lambda!235919))))))

(assert (= (and d!1544333 res!2052744) b!4822659))

(assert (= (and b!4822659 res!2052743) b!4822660))

(assert (= (and b!4822660 res!2052745) b!4822661))

(declare-fun m!5811172 () Bool)

(assert (=> d!1544333 m!5811172))

(assert (=> d!1544333 m!5810594))

(declare-fun m!5811174 () Bool)

(assert (=> b!4822659 m!5811174))

(declare-fun m!5811176 () Bool)

(assert (=> b!4822659 m!5811176))

(declare-fun m!5811178 () Bool)

(assert (=> b!4822660 m!5811178))

(declare-fun m!5811180 () Bool)

(assert (=> b!4822661 m!5811180))

(declare-fun m!5811182 () Bool)

(assert (=> b!4822661 m!5811182))

(assert (=> b!4822661 m!5811182))

(declare-fun m!5811184 () Bool)

(assert (=> b!4822661 m!5811184))

(assert (=> b!4822337 d!1544333))

(declare-fun d!1544335 () Bool)

(declare-fun lt!1970796 () Bool)

(assert (=> d!1544335 (= lt!1970796 (select (content!9811 e!3012948) key!5428))))

(declare-fun e!3013268 () Bool)

(assert (=> d!1544335 (= lt!1970796 e!3013268)))

(declare-fun res!2052747 () Bool)

(assert (=> d!1544335 (=> (not res!2052747) (not e!3013268))))

(assert (=> d!1544335 (= res!2052747 ((_ is Cons!54945) e!3012948))))

(assert (=> d!1544335 (= (contains!18743 e!3012948 key!5428) lt!1970796)))

(declare-fun b!4822662 () Bool)

(declare-fun e!3013269 () Bool)

(assert (=> b!4822662 (= e!3013268 e!3013269)))

(declare-fun res!2052746 () Bool)

(assert (=> b!4822662 (=> res!2052746 e!3013269)))

(assert (=> b!4822662 (= res!2052746 (= (h!61379 e!3012948) key!5428))))

(declare-fun b!4822663 () Bool)

(assert (=> b!4822663 (= e!3013269 (contains!18743 (t!362565 e!3012948) key!5428))))

(assert (= (and d!1544335 res!2052747) b!4822662))

(assert (= (and b!4822662 (not res!2052746)) b!4822663))

(declare-fun m!5811186 () Bool)

(assert (=> d!1544335 m!5811186))

(declare-fun m!5811188 () Bool)

(assert (=> d!1544335 m!5811188))

(declare-fun m!5811190 () Bool)

(assert (=> b!4822663 m!5811190))

(assert (=> bm!336154 d!1544335))

(declare-fun d!1544337 () Bool)

(declare-fun isEmpty!29637 (Option!13476) Bool)

(assert (=> d!1544337 (= (isDefined!10591 (getValueByKey!2603 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428)) (not (isEmpty!29637 (getValueByKey!2603 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428))))))

(declare-fun bs!1162598 () Bool)

(assert (= bs!1162598 d!1544337))

(assert (=> bs!1162598 m!5810584))

(declare-fun m!5811192 () Bool)

(assert (=> bs!1162598 m!5811192))

(assert (=> b!4822336 d!1544337))

(declare-fun b!4822672 () Bool)

(declare-fun e!3013274 () Option!13476)

(assert (=> b!4822672 (= e!3013274 (Some!13475 (_2!32371 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))))))))

(declare-fun d!1544339 () Bool)

(declare-fun c!821757 () Bool)

(assert (=> d!1544339 (= c!821757 (and ((_ is Cons!54942) (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (= (_1!32371 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) key!5428)))))

(assert (=> d!1544339 (= (getValueByKey!2603 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428) e!3013274)))

(declare-fun e!3013275 () Option!13476)

(declare-fun b!4822674 () Bool)

(assert (=> b!4822674 (= e!3013275 (getValueByKey!2603 (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) key!5428))))

(declare-fun b!4822675 () Bool)

(assert (=> b!4822675 (= e!3013275 None!13475)))

(declare-fun b!4822673 () Bool)

(assert (=> b!4822673 (= e!3013274 e!3013275)))

(declare-fun c!821758 () Bool)

(assert (=> b!4822673 (= c!821758 (and ((_ is Cons!54942) (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (not (= (_1!32371 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) key!5428))))))

(assert (= (and d!1544339 c!821757) b!4822672))

(assert (= (and d!1544339 (not c!821757)) b!4822673))

(assert (= (and b!4822673 c!821758) b!4822674))

(assert (= (and b!4822673 (not c!821758)) b!4822675))

(declare-fun m!5811194 () Bool)

(assert (=> b!4822674 m!5811194))

(assert (=> b!4822336 d!1544339))

(declare-fun bs!1162599 () Bool)

(declare-fun b!4822695 () Bool)

(assert (= bs!1162599 (and b!4822695 b!4822550)))

(declare-fun lambda!235928 () Int)

(assert (=> bs!1162599 (= (= (t!362562 (toList!7460 lt!1970345)) (toList!7460 lt!1970345)) (= lambda!235928 lambda!235902))))

(declare-fun bs!1162600 () Bool)

(assert (= bs!1162600 (and b!4822695 b!4822660)))

(assert (=> bs!1162600 (= (= (t!362562 (toList!7460 lt!1970345)) (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (= lambda!235928 lambda!235918))))

(assert (=> b!4822695 true))

(declare-fun bs!1162601 () Bool)

(declare-fun b!4822702 () Bool)

(assert (= bs!1162601 (and b!4822702 b!4822550)))

(declare-fun lambda!235929 () Int)

(assert (=> bs!1162601 (= (= (Cons!54942 (h!61376 (toList!7460 lt!1970345)) (t!362562 (toList!7460 lt!1970345))) (toList!7460 lt!1970345)) (= lambda!235929 lambda!235902))))

(declare-fun bs!1162602 () Bool)

(assert (= bs!1162602 (and b!4822702 b!4822660)))

(assert (=> bs!1162602 (= (= (Cons!54942 (h!61376 (toList!7460 lt!1970345)) (t!362562 (toList!7460 lt!1970345))) (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (= lambda!235929 lambda!235918))))

(declare-fun bs!1162603 () Bool)

(assert (= bs!1162603 (and b!4822702 b!4822695)))

(assert (=> bs!1162603 (= (= (Cons!54942 (h!61376 (toList!7460 lt!1970345)) (t!362562 (toList!7460 lt!1970345))) (t!362562 (toList!7460 lt!1970345))) (= lambda!235929 lambda!235928))))

(assert (=> b!4822702 true))

(declare-fun bs!1162604 () Bool)

(declare-fun b!4822698 () Bool)

(assert (= bs!1162604 (and b!4822698 b!4822550)))

(declare-fun lambda!235930 () Int)

(assert (=> bs!1162604 (= lambda!235930 lambda!235902)))

(declare-fun bs!1162605 () Bool)

(assert (= bs!1162605 (and b!4822698 b!4822660)))

(assert (=> bs!1162605 (= (= (toList!7460 lt!1970345) (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (= lambda!235930 lambda!235918))))

(declare-fun bs!1162606 () Bool)

(assert (= bs!1162606 (and b!4822698 b!4822695)))

(assert (=> bs!1162606 (= (= (toList!7460 lt!1970345) (t!362562 (toList!7460 lt!1970345))) (= lambda!235930 lambda!235928))))

(declare-fun bs!1162607 () Bool)

(assert (= bs!1162607 (and b!4822698 b!4822702)))

(assert (=> bs!1162607 (= (= (toList!7460 lt!1970345) (Cons!54942 (h!61376 (toList!7460 lt!1970345)) (t!362562 (toList!7460 lt!1970345)))) (= lambda!235930 lambda!235929))))

(assert (=> b!4822698 true))

(declare-fun bs!1162608 () Bool)

(declare-fun b!4822699 () Bool)

(assert (= bs!1162608 (and b!4822699 b!4822551)))

(declare-fun lambda!235931 () Int)

(assert (=> bs!1162608 (= lambda!235931 lambda!235903)))

(declare-fun bs!1162609 () Bool)

(assert (= bs!1162609 (and b!4822699 b!4822661)))

(assert (=> bs!1162609 (= lambda!235931 lambda!235919)))

(declare-fun d!1544341 () Bool)

(declare-fun e!3013285 () Bool)

(assert (=> d!1544341 e!3013285))

(declare-fun res!2052754 () Bool)

(assert (=> d!1544341 (=> (not res!2052754) (not e!3013285))))

(declare-fun lt!1970812 () List!55069)

(assert (=> d!1544341 (= res!2052754 (noDuplicate!952 lt!1970812))))

(declare-fun e!3013286 () List!55069)

(assert (=> d!1544341 (= lt!1970812 e!3013286)))

(declare-fun c!821765 () Bool)

(assert (=> d!1544341 (= c!821765 ((_ is Cons!54942) (toList!7460 lt!1970345)))))

(assert (=> d!1544341 (invariantList!1803 (toList!7460 lt!1970345))))

(assert (=> d!1544341 (= (getKeysList!1150 (toList!7460 lt!1970345)) lt!1970812)))

(declare-fun b!4822694 () Bool)

(declare-fun res!2052756 () Bool)

(assert (=> b!4822694 (=> (not res!2052756) (not e!3013285))))

(assert (=> b!4822694 (= res!2052756 (= (length!760 lt!1970812) (length!761 (toList!7460 lt!1970345))))))

(assert (=> b!4822695 false))

(declare-fun lt!1970816 () Unit!142503)

(declare-fun forallContained!4368 (List!55069 Int K!16629) Unit!142503)

(assert (=> b!4822695 (= lt!1970816 (forallContained!4368 (getKeysList!1150 (t!362562 (toList!7460 lt!1970345))) lambda!235928 (_1!32371 (h!61376 (toList!7460 lt!1970345)))))))

(declare-fun e!3013284 () Unit!142503)

(declare-fun Unit!142597 () Unit!142503)

(assert (=> b!4822695 (= e!3013284 Unit!142597)))

(declare-fun b!4822696 () Bool)

(declare-fun Unit!142598 () Unit!142503)

(assert (=> b!4822696 (= e!3013284 Unit!142598)))

(declare-fun b!4822697 () Bool)

(assert (=> b!4822697 (= e!3013286 Nil!54945)))

(declare-fun res!2052755 () Bool)

(assert (=> b!4822698 (=> (not res!2052755) (not e!3013285))))

(assert (=> b!4822698 (= res!2052755 (forall!12582 lt!1970812 lambda!235930))))

(assert (=> b!4822699 (= e!3013285 (= (content!9811 lt!1970812) (content!9811 (map!12566 (toList!7460 lt!1970345) lambda!235931))))))

(declare-fun b!4822700 () Bool)

(declare-fun e!3013287 () Unit!142503)

(declare-fun Unit!142599 () Unit!142503)

(assert (=> b!4822700 (= e!3013287 Unit!142599)))

(declare-fun b!4822701 () Bool)

(assert (=> b!4822701 false))

(declare-fun Unit!142600 () Unit!142503)

(assert (=> b!4822701 (= e!3013287 Unit!142600)))

(assert (=> b!4822702 (= e!3013286 (Cons!54945 (_1!32371 (h!61376 (toList!7460 lt!1970345))) (getKeysList!1150 (t!362562 (toList!7460 lt!1970345)))))))

(declare-fun c!821766 () Bool)

(assert (=> b!4822702 (= c!821766 (containsKey!4344 (t!362562 (toList!7460 lt!1970345)) (_1!32371 (h!61376 (toList!7460 lt!1970345)))))))

(declare-fun lt!1970813 () Unit!142503)

(assert (=> b!4822702 (= lt!1970813 e!3013287)))

(declare-fun c!821767 () Bool)

(assert (=> b!4822702 (= c!821767 (contains!18743 (getKeysList!1150 (t!362562 (toList!7460 lt!1970345))) (_1!32371 (h!61376 (toList!7460 lt!1970345)))))))

(declare-fun lt!1970815 () Unit!142503)

(assert (=> b!4822702 (= lt!1970815 e!3013284)))

(declare-fun lt!1970814 () List!55069)

(assert (=> b!4822702 (= lt!1970814 (getKeysList!1150 (t!362562 (toList!7460 lt!1970345))))))

(declare-fun lt!1970817 () Unit!142503)

(declare-fun lemmaForallContainsAddHeadPreserves!367 (List!55066 List!55069 tuple2!58154) Unit!142503)

(assert (=> b!4822702 (= lt!1970817 (lemmaForallContainsAddHeadPreserves!367 (t!362562 (toList!7460 lt!1970345)) lt!1970814 (h!61376 (toList!7460 lt!1970345))))))

(assert (=> b!4822702 (forall!12582 lt!1970814 lambda!235929)))

(declare-fun lt!1970811 () Unit!142503)

(assert (=> b!4822702 (= lt!1970811 lt!1970817)))

(assert (= (and d!1544341 c!821765) b!4822702))

(assert (= (and d!1544341 (not c!821765)) b!4822697))

(assert (= (and b!4822702 c!821766) b!4822701))

(assert (= (and b!4822702 (not c!821766)) b!4822700))

(assert (= (and b!4822702 c!821767) b!4822695))

(assert (= (and b!4822702 (not c!821767)) b!4822696))

(assert (= (and d!1544341 res!2052754) b!4822694))

(assert (= (and b!4822694 res!2052756) b!4822698))

(assert (= (and b!4822698 res!2052755) b!4822699))

(declare-fun m!5811196 () Bool)

(assert (=> b!4822699 m!5811196))

(declare-fun m!5811198 () Bool)

(assert (=> b!4822699 m!5811198))

(assert (=> b!4822699 m!5811198))

(declare-fun m!5811200 () Bool)

(assert (=> b!4822699 m!5811200))

(declare-fun m!5811202 () Bool)

(assert (=> b!4822698 m!5811202))

(declare-fun m!5811204 () Bool)

(assert (=> b!4822695 m!5811204))

(assert (=> b!4822695 m!5811204))

(declare-fun m!5811206 () Bool)

(assert (=> b!4822695 m!5811206))

(declare-fun m!5811208 () Bool)

(assert (=> d!1544341 m!5811208))

(declare-fun m!5811210 () Bool)

(assert (=> d!1544341 m!5811210))

(assert (=> b!4822702 m!5811204))

(declare-fun m!5811212 () Bool)

(assert (=> b!4822702 m!5811212))

(assert (=> b!4822702 m!5811204))

(declare-fun m!5811214 () Bool)

(assert (=> b!4822702 m!5811214))

(declare-fun m!5811216 () Bool)

(assert (=> b!4822702 m!5811216))

(declare-fun m!5811218 () Bool)

(assert (=> b!4822702 m!5811218))

(declare-fun m!5811220 () Bool)

(assert (=> b!4822694 m!5811220))

(assert (=> b!4822694 m!5810928))

(assert (=> b!4822204 d!1544341))

(declare-fun d!1544343 () Bool)

(declare-fun res!2052757 () Bool)

(declare-fun e!3013288 () Bool)

(assert (=> d!1544343 (=> res!2052757 e!3013288)))

(assert (=> d!1544343 (= res!2052757 (and ((_ is Cons!54942) (toList!7460 lt!1970345)) (= (_1!32371 (h!61376 (toList!7460 lt!1970345))) key!5428)))))

(assert (=> d!1544343 (= (containsKey!4344 (toList!7460 lt!1970345) key!5428) e!3013288)))

(declare-fun b!4822705 () Bool)

(declare-fun e!3013289 () Bool)

(assert (=> b!4822705 (= e!3013288 e!3013289)))

(declare-fun res!2052758 () Bool)

(assert (=> b!4822705 (=> (not res!2052758) (not e!3013289))))

(assert (=> b!4822705 (= res!2052758 ((_ is Cons!54942) (toList!7460 lt!1970345)))))

(declare-fun b!4822706 () Bool)

(assert (=> b!4822706 (= e!3013289 (containsKey!4344 (t!362562 (toList!7460 lt!1970345)) key!5428))))

(assert (= (and d!1544343 (not res!2052757)) b!4822705))

(assert (= (and b!4822705 res!2052758) b!4822706))

(declare-fun m!5811222 () Bool)

(assert (=> b!4822706 m!5811222))

(assert (=> b!4822205 d!1544343))

(declare-fun d!1544345 () Bool)

(assert (=> d!1544345 (containsKey!4344 (toList!7460 lt!1970345) key!5428)))

(declare-fun lt!1970820 () Unit!142503)

(declare-fun choose!35041 (List!55066 K!16629) Unit!142503)

(assert (=> d!1544345 (= lt!1970820 (choose!35041 (toList!7460 lt!1970345) key!5428))))

(assert (=> d!1544345 (invariantList!1803 (toList!7460 lt!1970345))))

(assert (=> d!1544345 (= (lemmaInGetKeysListThenContainsKey!1150 (toList!7460 lt!1970345) key!5428) lt!1970820)))

(declare-fun bs!1162610 () Bool)

(assert (= bs!1162610 d!1544345))

(assert (=> bs!1162610 m!5810368))

(declare-fun m!5811224 () Bool)

(assert (=> bs!1162610 m!5811224))

(assert (=> bs!1162610 m!5811210))

(assert (=> b!4822205 d!1544345))

(declare-fun d!1544347 () Bool)

(assert (=> d!1544347 (= (get!18809 (getValueByKey!2604 (toList!7459 lm!2280) (_1!32372 (h!61377 (toList!7459 lm!2280))))) (v!49147 (getValueByKey!2604 (toList!7459 lm!2280) (_1!32372 (h!61377 (toList!7459 lm!2280))))))))

(assert (=> d!1544089 d!1544347))

(declare-fun d!1544349 () Bool)

(declare-fun c!821772 () Bool)

(assert (=> d!1544349 (= c!821772 (and ((_ is Cons!54943) (toList!7459 lm!2280)) (= (_1!32372 (h!61377 (toList!7459 lm!2280))) (_1!32372 (h!61377 (toList!7459 lm!2280))))))))

(declare-fun e!3013294 () Option!13477)

(assert (=> d!1544349 (= (getValueByKey!2604 (toList!7459 lm!2280) (_1!32372 (h!61377 (toList!7459 lm!2280)))) e!3013294)))

(declare-fun b!4822717 () Bool)

(declare-fun e!3013295 () Option!13477)

(assert (=> b!4822717 (= e!3013295 (getValueByKey!2604 (t!362563 (toList!7459 lm!2280)) (_1!32372 (h!61377 (toList!7459 lm!2280)))))))

(declare-fun b!4822715 () Bool)

(assert (=> b!4822715 (= e!3013294 (Some!13476 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))

(declare-fun b!4822718 () Bool)

(assert (=> b!4822718 (= e!3013295 None!13476)))

(declare-fun b!4822716 () Bool)

(assert (=> b!4822716 (= e!3013294 e!3013295)))

(declare-fun c!821773 () Bool)

(assert (=> b!4822716 (= c!821773 (and ((_ is Cons!54943) (toList!7459 lm!2280)) (not (= (_1!32372 (h!61377 (toList!7459 lm!2280))) (_1!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (= (and d!1544349 c!821772) b!4822715))

(assert (= (and d!1544349 (not c!821772)) b!4822716))

(assert (= (and b!4822716 c!821773) b!4822717))

(assert (= (and b!4822716 (not c!821773)) b!4822718))

(declare-fun m!5811226 () Bool)

(assert (=> b!4822717 m!5811226))

(assert (=> d!1544089 d!1544349))

(declare-fun d!1544351 () Bool)

(declare-fun res!2052759 () Bool)

(declare-fun e!3013296 () Bool)

(assert (=> d!1544351 (=> res!2052759 e!3013296)))

(assert (=> d!1544351 (= res!2052759 ((_ is Nil!54943) (t!362563 (toList!7459 (tail!9392 lm!2280)))))))

(assert (=> d!1544351 (= (forall!12578 (t!362563 (toList!7459 (tail!9392 lm!2280))) lambda!235774) e!3013296)))

(declare-fun b!4822719 () Bool)

(declare-fun e!3013297 () Bool)

(assert (=> b!4822719 (= e!3013296 e!3013297)))

(declare-fun res!2052760 () Bool)

(assert (=> b!4822719 (=> (not res!2052760) (not e!3013297))))

(assert (=> b!4822719 (= res!2052760 (dynLambda!22198 lambda!235774 (h!61377 (t!362563 (toList!7459 (tail!9392 lm!2280))))))))

(declare-fun b!4822720 () Bool)

(assert (=> b!4822720 (= e!3013297 (forall!12578 (t!362563 (t!362563 (toList!7459 (tail!9392 lm!2280)))) lambda!235774))))

(assert (= (and d!1544351 (not res!2052759)) b!4822719))

(assert (= (and b!4822719 res!2052760) b!4822720))

(declare-fun b_lambda!189281 () Bool)

(assert (=> (not b_lambda!189281) (not b!4822719)))

(declare-fun m!5811228 () Bool)

(assert (=> b!4822719 m!5811228))

(declare-fun m!5811230 () Bool)

(assert (=> b!4822720 m!5811230))

(assert (=> b!4822226 d!1544351))

(declare-fun d!1544353 () Bool)

(assert (=> d!1544353 (= (isDefined!10591 (getValueByKey!2603 (toList!7460 lt!1970345) key!5428)) (not (isEmpty!29637 (getValueByKey!2603 (toList!7460 lt!1970345) key!5428))))))

(declare-fun bs!1162611 () Bool)

(assert (= bs!1162611 d!1544353))

(assert (=> bs!1162611 m!5810372))

(declare-fun m!5811232 () Bool)

(assert (=> bs!1162611 m!5811232))

(assert (=> b!4822198 d!1544353))

(declare-fun b!4822721 () Bool)

(declare-fun e!3013298 () Option!13476)

(assert (=> b!4822721 (= e!3013298 (Some!13475 (_2!32371 (h!61376 (toList!7460 lt!1970345)))))))

(declare-fun d!1544355 () Bool)

(declare-fun c!821774 () Bool)

(assert (=> d!1544355 (= c!821774 (and ((_ is Cons!54942) (toList!7460 lt!1970345)) (= (_1!32371 (h!61376 (toList!7460 lt!1970345))) key!5428)))))

(assert (=> d!1544355 (= (getValueByKey!2603 (toList!7460 lt!1970345) key!5428) e!3013298)))

(declare-fun b!4822723 () Bool)

(declare-fun e!3013299 () Option!13476)

(assert (=> b!4822723 (= e!3013299 (getValueByKey!2603 (t!362562 (toList!7460 lt!1970345)) key!5428))))

(declare-fun b!4822724 () Bool)

(assert (=> b!4822724 (= e!3013299 None!13475)))

(declare-fun b!4822722 () Bool)

(assert (=> b!4822722 (= e!3013298 e!3013299)))

(declare-fun c!821775 () Bool)

(assert (=> b!4822722 (= c!821775 (and ((_ is Cons!54942) (toList!7460 lt!1970345)) (not (= (_1!32371 (h!61376 (toList!7460 lt!1970345))) key!5428))))))

(assert (= (and d!1544355 c!821774) b!4822721))

(assert (= (and d!1544355 (not c!821774)) b!4822722))

(assert (= (and b!4822722 c!821775) b!4822723))

(assert (= (and b!4822722 (not c!821775)) b!4822724))

(declare-fun m!5811234 () Bool)

(assert (=> b!4822723 m!5811234))

(assert (=> b!4822198 d!1544355))

(declare-fun d!1544357 () Bool)

(declare-fun res!2052761 () Bool)

(declare-fun e!3013300 () Bool)

(assert (=> d!1544357 (=> res!2052761 e!3013300)))

(assert (=> d!1544357 (= res!2052761 ((_ is Nil!54942) (toList!7460 lt!1970345)))))

(assert (=> d!1544357 (= (forall!12580 (toList!7460 lt!1970345) lambda!235847) e!3013300)))

(declare-fun b!4822725 () Bool)

(declare-fun e!3013301 () Bool)

(assert (=> b!4822725 (= e!3013300 e!3013301)))

(declare-fun res!2052762 () Bool)

(assert (=> b!4822725 (=> (not res!2052762) (not e!3013301))))

(assert (=> b!4822725 (= res!2052762 (dynLambda!22200 lambda!235847 (h!61376 (toList!7460 lt!1970345))))))

(declare-fun b!4822726 () Bool)

(assert (=> b!4822726 (= e!3013301 (forall!12580 (t!362562 (toList!7460 lt!1970345)) lambda!235847))))

(assert (= (and d!1544357 (not res!2052761)) b!4822725))

(assert (= (and b!4822725 res!2052762) b!4822726))

(declare-fun b_lambda!189283 () Bool)

(assert (=> (not b_lambda!189283) (not b!4822725)))

(declare-fun m!5811236 () Bool)

(assert (=> b!4822725 m!5811236))

(declare-fun m!5811238 () Bool)

(assert (=> b!4822726 m!5811238))

(assert (=> b!4822323 d!1544357))

(assert (=> d!1544131 d!1544091))

(assert (=> d!1544131 d!1544089))

(declare-fun d!1544359 () Bool)

(assert (=> d!1544359 (not (containsKey!4341 (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280)))) key!5428))))

(assert (=> d!1544359 true))

(declare-fun _$39!412 () Unit!142503)

(assert (=> d!1544359 (= (choose!35030 lm!2280 key!5428 (_1!32372 (h!61377 (toList!7459 lm!2280))) hashF!1509) _$39!412)))

(declare-fun bs!1162612 () Bool)

(assert (= bs!1162612 d!1544359))

(assert (=> bs!1162612 m!5810322))

(assert (=> bs!1162612 m!5810322))

(assert (=> bs!1162612 m!5810332))

(assert (=> d!1544131 d!1544359))

(declare-fun d!1544361 () Bool)

(declare-fun res!2052763 () Bool)

(declare-fun e!3013302 () Bool)

(assert (=> d!1544361 (=> res!2052763 e!3013302)))

(assert (=> d!1544361 (= res!2052763 ((_ is Nil!54943) (toList!7459 lm!2280)))))

(assert (=> d!1544361 (= (forall!12578 (toList!7459 lm!2280) lambda!235850) e!3013302)))

(declare-fun b!4822727 () Bool)

(declare-fun e!3013303 () Bool)

(assert (=> b!4822727 (= e!3013302 e!3013303)))

(declare-fun res!2052764 () Bool)

(assert (=> b!4822727 (=> (not res!2052764) (not e!3013303))))

(assert (=> b!4822727 (= res!2052764 (dynLambda!22198 lambda!235850 (h!61377 (toList!7459 lm!2280))))))

(declare-fun b!4822728 () Bool)

(assert (=> b!4822728 (= e!3013303 (forall!12578 (t!362563 (toList!7459 lm!2280)) lambda!235850))))

(assert (= (and d!1544361 (not res!2052763)) b!4822727))

(assert (= (and b!4822727 res!2052764) b!4822728))

(declare-fun b_lambda!189285 () Bool)

(assert (=> (not b_lambda!189285) (not b!4822727)))

(declare-fun m!5811240 () Bool)

(assert (=> b!4822727 m!5811240))

(declare-fun m!5811242 () Bool)

(assert (=> b!4822728 m!5811242))

(assert (=> d!1544131 d!1544361))

(assert (=> b!4822325 d!1544311))

(declare-fun d!1544363 () Bool)

(declare-fun choose!35043 (Hashable!7256 K!16629) (_ BitVec 64))

(assert (=> d!1544363 (= (hash!5364 hashF!1509 key!5428) (choose!35043 hashF!1509 key!5428))))

(declare-fun bs!1162613 () Bool)

(assert (= bs!1162613 d!1544363))

(declare-fun m!5811244 () Bool)

(assert (=> bs!1162613 m!5811244))

(assert (=> d!1544145 d!1544363))

(declare-fun d!1544365 () Bool)

(declare-fun noDuplicatedKeys!470 (List!55066) Bool)

(assert (=> d!1544365 (= (invariantList!1803 (toList!7460 lt!1970536)) (noDuplicatedKeys!470 (toList!7460 lt!1970536)))))

(declare-fun bs!1162614 () Bool)

(assert (= bs!1162614 d!1544365))

(declare-fun m!5811246 () Bool)

(assert (=> bs!1162614 m!5811246))

(assert (=> b!4822324 d!1544365))

(declare-fun d!1544367 () Bool)

(declare-fun res!2052765 () Bool)

(declare-fun e!3013304 () Bool)

(assert (=> d!1544367 (=> res!2052765 e!3013304)))

(assert (=> d!1544367 (= res!2052765 ((_ is Nil!54942) (toList!7460 lt!1970345)))))

(assert (=> d!1544367 (= (forall!12580 (toList!7460 lt!1970345) (ite c!821697 lambda!235844 lambda!235846)) e!3013304)))

(declare-fun b!4822729 () Bool)

(declare-fun e!3013305 () Bool)

(assert (=> b!4822729 (= e!3013304 e!3013305)))

(declare-fun res!2052766 () Bool)

(assert (=> b!4822729 (=> (not res!2052766) (not e!3013305))))

(assert (=> b!4822729 (= res!2052766 (dynLambda!22200 (ite c!821697 lambda!235844 lambda!235846) (h!61376 (toList!7460 lt!1970345))))))

(declare-fun b!4822730 () Bool)

(assert (=> b!4822730 (= e!3013305 (forall!12580 (t!362562 (toList!7460 lt!1970345)) (ite c!821697 lambda!235844 lambda!235846)))))

(assert (= (and d!1544367 (not res!2052765)) b!4822729))

(assert (= (and b!4822729 res!2052766) b!4822730))

(declare-fun b_lambda!189287 () Bool)

(assert (=> (not b_lambda!189287) (not b!4822729)))

(declare-fun m!5811248 () Bool)

(assert (=> b!4822729 m!5811248))

(declare-fun m!5811250 () Bool)

(assert (=> b!4822730 m!5811250))

(assert (=> bm!336174 d!1544367))

(declare-fun d!1544369 () Bool)

(assert (=> d!1544369 (isDefined!10591 (getValueByKey!2603 (toList!7460 lt!1970345) key!5428))))

(declare-fun lt!1970823 () Unit!142503)

(declare-fun choose!35044 (List!55066 K!16629) Unit!142503)

(assert (=> d!1544369 (= lt!1970823 (choose!35044 (toList!7460 lt!1970345) key!5428))))

(assert (=> d!1544369 (invariantList!1803 (toList!7460 lt!1970345))))

(assert (=> d!1544369 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2388 (toList!7460 lt!1970345) key!5428) lt!1970823)))

(declare-fun bs!1162615 () Bool)

(assert (= bs!1162615 d!1544369))

(assert (=> bs!1162615 m!5810372))

(assert (=> bs!1162615 m!5810372))

(assert (=> bs!1162615 m!5810374))

(declare-fun m!5811252 () Bool)

(assert (=> bs!1162615 m!5811252))

(assert (=> bs!1162615 m!5811210))

(assert (=> b!4822201 d!1544369))

(assert (=> b!4822201 d!1544353))

(assert (=> b!4822201 d!1544355))

(declare-fun d!1544371 () Bool)

(assert (=> d!1544371 (contains!18743 (getKeysList!1150 (toList!7460 lt!1970345)) key!5428)))

(declare-fun lt!1970826 () Unit!142503)

(declare-fun choose!35045 (List!55066 K!16629) Unit!142503)

(assert (=> d!1544371 (= lt!1970826 (choose!35045 (toList!7460 lt!1970345) key!5428))))

(assert (=> d!1544371 (invariantList!1803 (toList!7460 lt!1970345))))

(assert (=> d!1544371 (= (lemmaInListThenGetKeysListContains!1145 (toList!7460 lt!1970345) key!5428) lt!1970826)))

(declare-fun bs!1162616 () Bool)

(assert (= bs!1162616 d!1544371))

(assert (=> bs!1162616 m!5810382))

(assert (=> bs!1162616 m!5810382))

(declare-fun m!5811254 () Bool)

(assert (=> bs!1162616 m!5811254))

(declare-fun m!5811256 () Bool)

(assert (=> bs!1162616 m!5811256))

(assert (=> bs!1162616 m!5811210))

(assert (=> b!4822201 d!1544371))

(assert (=> b!4822199 d!1544239))

(declare-fun bs!1162617 () Bool)

(declare-fun d!1544373 () Bool)

(assert (= bs!1162617 (and d!1544373 b!4822655)))

(declare-fun lambda!235934 () Int)

(assert (=> bs!1162617 (= (= lt!1970345 lt!1970786) (= lambda!235934 lambda!235915))))

(assert (=> bs!1162617 (= (= lt!1970345 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) (= lambda!235934 lambda!235914))))

(declare-fun bs!1162618 () Bool)

(assert (= bs!1162618 (and d!1544373 d!1544329)))

(assert (=> bs!1162618 (= (= lt!1970345 lt!1970780) (= lambda!235934 lambda!235916))))

(declare-fun bs!1162619 () Bool)

(assert (= bs!1162619 (and d!1544373 d!1544097)))

(assert (=> bs!1162619 (= (= lt!1970345 lt!1970536) (= lambda!235934 lambda!235847))))

(declare-fun bs!1162620 () Bool)

(assert (= bs!1162620 (and d!1544373 d!1544313)))

(assert (=> bs!1162620 (= (= lt!1970345 lt!1970743) (= lambda!235934 lambda!235912))))

(declare-fun bs!1162621 () Bool)

(assert (= bs!1162621 (and d!1544373 d!1544249)))

(assert (=> bs!1162621 (= (= lt!1970345 lt!1970542) (= lambda!235934 lambda!235908))))

(declare-fun bs!1162622 () Bool)

(assert (= bs!1162622 (and d!1544373 b!4822618)))

(assert (=> bs!1162622 (= (= lt!1970345 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235934 lambda!235910))))

(assert (=> bs!1162622 (= (= lt!1970345 lt!1970749) (= lambda!235934 lambda!235911))))

(declare-fun bs!1162623 () Bool)

(assert (= bs!1162623 (and d!1544373 b!4822619)))

(assert (=> bs!1162623 (= (= lt!1970345 (+!2527 lt!1970345 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (= lambda!235934 lambda!235909))))

(declare-fun bs!1162624 () Bool)

(assert (= bs!1162624 (and d!1544373 b!4822656)))

(assert (=> bs!1162624 (= (= lt!1970345 (extractMap!2670 (t!362563 (t!362563 (toList!7459 lm!2280))))) (= lambda!235934 lambda!235913))))

(declare-fun bs!1162625 () Bool)

(assert (= bs!1162625 (and d!1544373 b!4822326)))

(assert (=> bs!1162625 (= (= lt!1970345 lt!1970542) (= lambda!235934 lambda!235846))))

(declare-fun bs!1162626 () Bool)

(assert (= bs!1162626 (and d!1544373 b!4822327)))

(assert (=> bs!1162626 (= lambda!235934 lambda!235844)))

(assert (=> bs!1162625 (= lambda!235934 lambda!235845)))

(assert (=> d!1544373 true))

(assert (=> d!1544373 (forall!12580 (toList!7460 lt!1970345) lambda!235934)))

(declare-fun lt!1970829 () Unit!142503)

(declare-fun choose!35046 (ListMap!6837) Unit!142503)

(assert (=> d!1544373 (= lt!1970829 (choose!35046 lt!1970345))))

(assert (=> d!1544373 (= (lemmaContainsAllItsOwnKeys!982 lt!1970345) lt!1970829)))

(declare-fun bs!1162627 () Bool)

(assert (= bs!1162627 d!1544373))

(declare-fun m!5811258 () Bool)

(assert (=> bs!1162627 m!5811258))

(declare-fun m!5811260 () Bool)

(assert (=> bs!1162627 m!5811260))

(assert (=> bm!336175 d!1544373))

(declare-fun d!1544375 () Bool)

(assert (=> d!1544375 (= (invariantList!1803 (toList!7460 lt!1970555)) (noDuplicatedKeys!470 (toList!7460 lt!1970555)))))

(declare-fun bs!1162628 () Bool)

(assert (= bs!1162628 d!1544375))

(declare-fun m!5811262 () Bool)

(assert (=> bs!1162628 m!5811262))

(assert (=> d!1544133 d!1544375))

(declare-fun d!1544377 () Bool)

(declare-fun res!2052767 () Bool)

(declare-fun e!3013306 () Bool)

(assert (=> d!1544377 (=> res!2052767 e!3013306)))

(assert (=> d!1544377 (= res!2052767 ((_ is Nil!54943) (t!362563 (toList!7459 lm!2280))))))

(assert (=> d!1544377 (= (forall!12578 (t!362563 (toList!7459 lm!2280)) lambda!235853) e!3013306)))

(declare-fun b!4822731 () Bool)

(declare-fun e!3013307 () Bool)

(assert (=> b!4822731 (= e!3013306 e!3013307)))

(declare-fun res!2052768 () Bool)

(assert (=> b!4822731 (=> (not res!2052768) (not e!3013307))))

(assert (=> b!4822731 (= res!2052768 (dynLambda!22198 lambda!235853 (h!61377 (t!362563 (toList!7459 lm!2280)))))))

(declare-fun b!4822732 () Bool)

(assert (=> b!4822732 (= e!3013307 (forall!12578 (t!362563 (t!362563 (toList!7459 lm!2280))) lambda!235853))))

(assert (= (and d!1544377 (not res!2052767)) b!4822731))

(assert (= (and b!4822731 res!2052768) b!4822732))

(declare-fun b_lambda!189289 () Bool)

(assert (=> (not b_lambda!189289) (not b!4822731)))

(declare-fun m!5811264 () Bool)

(assert (=> b!4822731 m!5811264))

(declare-fun m!5811266 () Bool)

(assert (=> b!4822732 m!5811266))

(assert (=> d!1544133 d!1544377))

(declare-fun d!1544379 () Bool)

(declare-fun lt!1970830 () Bool)

(assert (=> d!1544379 (= lt!1970830 (select (content!9811 e!3013042) key!5428))))

(declare-fun e!3013308 () Bool)

(assert (=> d!1544379 (= lt!1970830 e!3013308)))

(declare-fun res!2052770 () Bool)

(assert (=> d!1544379 (=> (not res!2052770) (not e!3013308))))

(assert (=> d!1544379 (= res!2052770 ((_ is Cons!54945) e!3013042))))

(assert (=> d!1544379 (= (contains!18743 e!3013042 key!5428) lt!1970830)))

(declare-fun b!4822733 () Bool)

(declare-fun e!3013309 () Bool)

(assert (=> b!4822733 (= e!3013308 e!3013309)))

(declare-fun res!2052769 () Bool)

(assert (=> b!4822733 (=> res!2052769 e!3013309)))

(assert (=> b!4822733 (= res!2052769 (= (h!61379 e!3013042) key!5428))))

(declare-fun b!4822734 () Bool)

(assert (=> b!4822734 (= e!3013309 (contains!18743 (t!362565 e!3013042) key!5428))))

(assert (= (and d!1544379 res!2052770) b!4822733))

(assert (= (and b!4822733 (not res!2052769)) b!4822734))

(declare-fun m!5811268 () Bool)

(assert (=> d!1544379 m!5811268))

(declare-fun m!5811270 () Bool)

(assert (=> d!1544379 m!5811270))

(declare-fun m!5811272 () Bool)

(assert (=> b!4822734 m!5811272))

(assert (=> bm!336177 d!1544379))

(declare-fun d!1544381 () Bool)

(declare-fun res!2052771 () Bool)

(declare-fun e!3013310 () Bool)

(assert (=> d!1544381 (=> res!2052771 e!3013310)))

(assert (=> d!1544381 (= res!2052771 ((_ is Nil!54943) (toList!7459 lm!2280)))))

(assert (=> d!1544381 (= (forall!12578 (toList!7459 lm!2280) lambda!235856) e!3013310)))

(declare-fun b!4822735 () Bool)

(declare-fun e!3013311 () Bool)

(assert (=> b!4822735 (= e!3013310 e!3013311)))

(declare-fun res!2052772 () Bool)

(assert (=> b!4822735 (=> (not res!2052772) (not e!3013311))))

(assert (=> b!4822735 (= res!2052772 (dynLambda!22198 lambda!235856 (h!61377 (toList!7459 lm!2280))))))

(declare-fun b!4822736 () Bool)

(assert (=> b!4822736 (= e!3013311 (forall!12578 (t!362563 (toList!7459 lm!2280)) lambda!235856))))

(assert (= (and d!1544381 (not res!2052771)) b!4822735))

(assert (= (and b!4822735 res!2052772) b!4822736))

(declare-fun b_lambda!189291 () Bool)

(assert (=> (not b_lambda!189291) (not b!4822735)))

(declare-fun m!5811274 () Bool)

(assert (=> b!4822735 m!5811274))

(declare-fun m!5811276 () Bool)

(assert (=> b!4822736 m!5811276))

(assert (=> d!1544141 d!1544381))

(declare-fun e!3013314 () Bool)

(declare-fun d!1544383 () Bool)

(assert (=> d!1544383 (= (contains!18741 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345) key!5428) e!3013314)))

(declare-fun res!2052775 () Bool)

(assert (=> d!1544383 (=> res!2052775 e!3013314)))

(assert (=> d!1544383 (= res!2052775 (containsKey!4341 (_2!32372 (h!61377 (toList!7459 lm!2280))) key!5428))))

(assert (=> d!1544383 true))

(declare-fun _$29!787 () Unit!142503)

(assert (=> d!1544383 (= (choose!35031 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345 key!5428) _$29!787)))

(declare-fun b!4822739 () Bool)

(assert (=> b!4822739 (= e!3013314 (contains!18741 lt!1970345 key!5428))))

(assert (= (and d!1544383 (not res!2052775)) b!4822739))

(assert (=> d!1544383 m!5810328))

(assert (=> d!1544383 m!5810328))

(assert (=> d!1544383 m!5810330))

(assert (=> d!1544383 m!5810324))

(assert (=> b!4822739 m!5810348))

(assert (=> d!1544139 d!1544383))

(assert (=> d!1544139 d!1544095))

(assert (=> d!1544139 d!1544097))

(assert (=> d!1544139 d!1544137))

(declare-fun d!1544385 () Bool)

(declare-fun res!2052780 () Bool)

(declare-fun e!3013319 () Bool)

(assert (=> d!1544385 (=> res!2052780 e!3013319)))

(assert (=> d!1544385 (= res!2052780 (not ((_ is Cons!54942) (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(assert (=> d!1544385 (= (noDuplicateKeys!2442 (_2!32372 (h!61377 (toList!7459 lm!2280)))) e!3013319)))

(declare-fun b!4822744 () Bool)

(declare-fun e!3013320 () Bool)

(assert (=> b!4822744 (= e!3013319 e!3013320)))

(declare-fun res!2052781 () Bool)

(assert (=> b!4822744 (=> (not res!2052781) (not e!3013320))))

(assert (=> b!4822744 (= res!2052781 (not (containsKey!4341 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))))

(declare-fun b!4822745 () Bool)

(assert (=> b!4822745 (= e!3013320 (noDuplicateKeys!2442 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(assert (= (and d!1544385 (not res!2052780)) b!4822744))

(assert (= (and b!4822744 res!2052781) b!4822745))

(declare-fun m!5811278 () Bool)

(assert (=> b!4822744 m!5811278))

(assert (=> b!4822745 m!5811068))

(assert (=> d!1544139 d!1544385))

(assert (=> bs!1162432 d!1544385))

(declare-fun d!1544387 () Bool)

(declare-fun res!2052786 () Bool)

(declare-fun e!3013325 () Bool)

(assert (=> d!1544387 (=> res!2052786 e!3013325)))

(assert (=> d!1544387 (= res!2052786 (or ((_ is Nil!54943) (toList!7459 lm!2280)) ((_ is Nil!54943) (t!362563 (toList!7459 lm!2280)))))))

(assert (=> d!1544387 (= (isStrictlySorted!976 (toList!7459 lm!2280)) e!3013325)))

(declare-fun b!4822750 () Bool)

(declare-fun e!3013326 () Bool)

(assert (=> b!4822750 (= e!3013325 e!3013326)))

(declare-fun res!2052787 () Bool)

(assert (=> b!4822750 (=> (not res!2052787) (not e!3013326))))

(assert (=> b!4822750 (= res!2052787 (bvslt (_1!32372 (h!61377 (toList!7459 lm!2280))) (_1!32372 (h!61377 (t!362563 (toList!7459 lm!2280))))))))

(declare-fun b!4822751 () Bool)

(assert (=> b!4822751 (= e!3013326 (isStrictlySorted!976 (t!362563 (toList!7459 lm!2280))))))

(assert (= (and d!1544387 (not res!2052786)) b!4822750))

(assert (= (and b!4822750 res!2052787) b!4822751))

(declare-fun m!5811280 () Bool)

(assert (=> b!4822751 m!5811280))

(assert (=> d!1544083 d!1544387))

(assert (=> d!1544079 d!1544343))

(declare-fun d!1544389 () Bool)

(declare-fun res!2052792 () Bool)

(declare-fun e!3013331 () Bool)

(assert (=> d!1544389 (=> res!2052792 e!3013331)))

(assert (=> d!1544389 (= res!2052792 (and ((_ is Cons!54943) (toList!7459 lm!2280)) (= (_1!32372 (h!61377 (toList!7459 lm!2280))) lt!1970346)))))

(assert (=> d!1544389 (= (containsKey!4345 (toList!7459 lm!2280) lt!1970346) e!3013331)))

(declare-fun b!4822756 () Bool)

(declare-fun e!3013332 () Bool)

(assert (=> b!4822756 (= e!3013331 e!3013332)))

(declare-fun res!2052793 () Bool)

(assert (=> b!4822756 (=> (not res!2052793) (not e!3013332))))

(assert (=> b!4822756 (= res!2052793 (and (or (not ((_ is Cons!54943) (toList!7459 lm!2280))) (bvsle (_1!32372 (h!61377 (toList!7459 lm!2280))) lt!1970346)) ((_ is Cons!54943) (toList!7459 lm!2280)) (bvslt (_1!32372 (h!61377 (toList!7459 lm!2280))) lt!1970346)))))

(declare-fun b!4822757 () Bool)

(assert (=> b!4822757 (= e!3013332 (containsKey!4345 (t!362563 (toList!7459 lm!2280)) lt!1970346))))

(assert (= (and d!1544389 (not res!2052792)) b!4822756))

(assert (= (and b!4822756 res!2052793) b!4822757))

(declare-fun m!5811282 () Bool)

(assert (=> b!4822757 m!5811282))

(assert (=> d!1544143 d!1544389))

(declare-fun d!1544391 () Bool)

(assert (=> d!1544391 (= (tail!9394 (toList!7459 lm!2280)) (t!362563 (toList!7459 lm!2280)))))

(assert (=> d!1544135 d!1544391))

(declare-fun d!1544393 () Bool)

(declare-fun res!2052794 () Bool)

(declare-fun e!3013333 () Bool)

(assert (=> d!1544393 (=> res!2052794 e!3013333)))

(assert (=> d!1544393 (= res!2052794 ((_ is Nil!54943) (t!362563 (toList!7459 lm!2280))))))

(assert (=> d!1544393 (= (forall!12578 (t!362563 (toList!7459 lm!2280)) lambda!235774) e!3013333)))

(declare-fun b!4822758 () Bool)

(declare-fun e!3013334 () Bool)

(assert (=> b!4822758 (= e!3013333 e!3013334)))

(declare-fun res!2052795 () Bool)

(assert (=> b!4822758 (=> (not res!2052795) (not e!3013334))))

(assert (=> b!4822758 (= res!2052795 (dynLambda!22198 lambda!235774 (h!61377 (t!362563 (toList!7459 lm!2280)))))))

(declare-fun b!4822759 () Bool)

(assert (=> b!4822759 (= e!3013334 (forall!12578 (t!362563 (t!362563 (toList!7459 lm!2280))) lambda!235774))))

(assert (= (and d!1544393 (not res!2052794)) b!4822758))

(assert (= (and b!4822758 res!2052795) b!4822759))

(declare-fun b_lambda!189293 () Bool)

(assert (=> (not b_lambda!189293) (not b!4822758)))

(declare-fun m!5811284 () Bool)

(assert (=> b!4822758 m!5811284))

(declare-fun m!5811286 () Bool)

(assert (=> b!4822759 m!5811286))

(assert (=> b!4822212 d!1544393))

(declare-fun d!1544395 () Bool)

(declare-fun res!2052796 () Bool)

(declare-fun e!3013335 () Bool)

(assert (=> d!1544395 (=> res!2052796 e!3013335)))

(assert (=> d!1544395 (= res!2052796 ((_ is Nil!54942) (_2!32372 (h!61377 (toList!7459 lm!2280)))))))

(assert (=> d!1544395 (= (forall!12580 (_2!32372 (h!61377 (toList!7459 lm!2280))) lambda!235847) e!3013335)))

(declare-fun b!4822760 () Bool)

(declare-fun e!3013336 () Bool)

(assert (=> b!4822760 (= e!3013335 e!3013336)))

(declare-fun res!2052797 () Bool)

(assert (=> b!4822760 (=> (not res!2052797) (not e!3013336))))

(assert (=> b!4822760 (= res!2052797 (dynLambda!22200 lambda!235847 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))

(declare-fun b!4822761 () Bool)

(assert (=> b!4822761 (= e!3013336 (forall!12580 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))) lambda!235847))))

(assert (= (and d!1544395 (not res!2052796)) b!4822760))

(assert (= (and b!4822760 res!2052797) b!4822761))

(declare-fun b_lambda!189295 () Bool)

(assert (=> (not b_lambda!189295) (not b!4822760)))

(declare-fun m!5811288 () Bool)

(assert (=> b!4822760 m!5811288))

(declare-fun m!5811290 () Bool)

(assert (=> b!4822761 m!5811290))

(assert (=> d!1544097 d!1544395))

(assert (=> d!1544097 d!1544385))

(declare-fun d!1544397 () Bool)

(assert (=> d!1544397 (isDefined!10591 (getValueByKey!2603 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428))))

(declare-fun lt!1970831 () Unit!142503)

(assert (=> d!1544397 (= lt!1970831 (choose!35044 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428))))

(assert (=> d!1544397 (invariantList!1803 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))))

(assert (=> d!1544397 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2388 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428) lt!1970831)))

(declare-fun bs!1162629 () Bool)

(assert (= bs!1162629 d!1544397))

(assert (=> bs!1162629 m!5810584))

(assert (=> bs!1162629 m!5810584))

(assert (=> bs!1162629 m!5810586))

(declare-fun m!5811292 () Bool)

(assert (=> bs!1162629 m!5811292))

(declare-fun m!5811294 () Bool)

(assert (=> bs!1162629 m!5811294))

(assert (=> b!4822339 d!1544397))

(assert (=> b!4822339 d!1544337))

(assert (=> b!4822339 d!1544339))

(declare-fun d!1544399 () Bool)

(assert (=> d!1544399 (contains!18743 (getKeysList!1150 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) key!5428)))

(declare-fun lt!1970832 () Unit!142503)

(assert (=> d!1544399 (= lt!1970832 (choose!35045 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428))))

(assert (=> d!1544399 (invariantList!1803 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))))

(assert (=> d!1544399 (= (lemmaInListThenGetKeysListContains!1145 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428) lt!1970832)))

(declare-fun bs!1162630 () Bool)

(assert (= bs!1162630 d!1544399))

(assert (=> bs!1162630 m!5810594))

(assert (=> bs!1162630 m!5810594))

(declare-fun m!5811296 () Bool)

(assert (=> bs!1162630 m!5811296))

(declare-fun m!5811298 () Bool)

(assert (=> bs!1162630 m!5811298))

(assert (=> bs!1162630 m!5811294))

(assert (=> b!4822339 d!1544399))

(declare-fun d!1544401 () Bool)

(declare-fun lt!1970833 () Bool)

(assert (=> d!1544401 (= lt!1970833 (select (content!9811 (keys!20207 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) key!5428))))

(declare-fun e!3013337 () Bool)

(assert (=> d!1544401 (= lt!1970833 e!3013337)))

(declare-fun res!2052799 () Bool)

(assert (=> d!1544401 (=> (not res!2052799) (not e!3013337))))

(assert (=> d!1544401 (= res!2052799 ((_ is Cons!54945) (keys!20207 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))))))

(assert (=> d!1544401 (= (contains!18743 (keys!20207 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428) lt!1970833)))

(declare-fun b!4822762 () Bool)

(declare-fun e!3013338 () Bool)

(assert (=> b!4822762 (= e!3013337 e!3013338)))

(declare-fun res!2052798 () Bool)

(assert (=> b!4822762 (=> res!2052798 e!3013338)))

(assert (=> b!4822762 (= res!2052798 (= (h!61379 (keys!20207 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) key!5428))))

(declare-fun b!4822763 () Bool)

(assert (=> b!4822763 (= e!3013338 (contains!18743 (t!362565 (keys!20207 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) key!5428))))

(assert (= (and d!1544401 res!2052799) b!4822762))

(assert (= (and b!4822762 (not res!2052798)) b!4822763))

(assert (=> d!1544401 m!5810576))

(declare-fun m!5811300 () Bool)

(assert (=> d!1544401 m!5811300))

(declare-fun m!5811302 () Bool)

(assert (=> d!1544401 m!5811302))

(declare-fun m!5811304 () Bool)

(assert (=> b!4822763 m!5811304))

(assert (=> b!4822341 d!1544401))

(assert (=> b!4822341 d!1544333))

(declare-fun d!1544403 () Bool)

(declare-fun res!2052800 () Bool)

(declare-fun e!3013339 () Bool)

(assert (=> d!1544403 (=> res!2052800 e!3013339)))

(assert (=> d!1544403 (= res!2052800 (not ((_ is Cons!54942) (_2!32372 (h!61377 (toList!7459 (tail!9392 lm!2280)))))))))

(assert (=> d!1544403 (= (noDuplicateKeys!2442 (_2!32372 (h!61377 (toList!7459 (tail!9392 lm!2280))))) e!3013339)))

(declare-fun b!4822764 () Bool)

(declare-fun e!3013340 () Bool)

(assert (=> b!4822764 (= e!3013339 e!3013340)))

(declare-fun res!2052801 () Bool)

(assert (=> b!4822764 (=> (not res!2052801) (not e!3013340))))

(assert (=> b!4822764 (= res!2052801 (not (containsKey!4341 (t!362562 (_2!32372 (h!61377 (toList!7459 (tail!9392 lm!2280))))) (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 (tail!9392 lm!2280)))))))))))

(declare-fun b!4822765 () Bool)

(assert (=> b!4822765 (= e!3013340 (noDuplicateKeys!2442 (t!362562 (_2!32372 (h!61377 (toList!7459 (tail!9392 lm!2280)))))))))

(assert (= (and d!1544403 (not res!2052800)) b!4822764))

(assert (= (and b!4822764 res!2052801) b!4822765))

(declare-fun m!5811306 () Bool)

(assert (=> b!4822764 m!5811306))

(declare-fun m!5811308 () Bool)

(assert (=> b!4822765 m!5811308))

(assert (=> bs!1162431 d!1544403))

(declare-fun d!1544405 () Bool)

(assert (=> d!1544405 (= (get!18809 (getValueByKey!2604 (toList!7459 lm!2280) lt!1970346)) (v!49147 (getValueByKey!2604 (toList!7459 lm!2280) lt!1970346)))))

(assert (=> d!1544087 d!1544405))

(declare-fun d!1544407 () Bool)

(declare-fun c!821776 () Bool)

(assert (=> d!1544407 (= c!821776 (and ((_ is Cons!54943) (toList!7459 lm!2280)) (= (_1!32372 (h!61377 (toList!7459 lm!2280))) lt!1970346)))))

(declare-fun e!3013341 () Option!13477)

(assert (=> d!1544407 (= (getValueByKey!2604 (toList!7459 lm!2280) lt!1970346) e!3013341)))

(declare-fun b!4822768 () Bool)

(declare-fun e!3013342 () Option!13477)

(assert (=> b!4822768 (= e!3013342 (getValueByKey!2604 (t!362563 (toList!7459 lm!2280)) lt!1970346))))

(declare-fun b!4822766 () Bool)

(assert (=> b!4822766 (= e!3013341 (Some!13476 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))

(declare-fun b!4822769 () Bool)

(assert (=> b!4822769 (= e!3013342 None!13476)))

(declare-fun b!4822767 () Bool)

(assert (=> b!4822767 (= e!3013341 e!3013342)))

(declare-fun c!821777 () Bool)

(assert (=> b!4822767 (= c!821777 (and ((_ is Cons!54943) (toList!7459 lm!2280)) (not (= (_1!32372 (h!61377 (toList!7459 lm!2280))) lt!1970346))))))

(assert (= (and d!1544407 c!821776) b!4822766))

(assert (= (and d!1544407 (not c!821776)) b!4822767))

(assert (= (and b!4822767 c!821777) b!4822768))

(assert (= (and b!4822767 (not c!821777)) b!4822769))

(declare-fun m!5811310 () Bool)

(assert (=> b!4822768 m!5811310))

(assert (=> d!1544087 d!1544407))

(assert (=> b!4822340 d!1544401))

(assert (=> b!4822340 d!1544333))

(assert (=> b!4822347 d!1544079))

(declare-fun bs!1162631 () Bool)

(declare-fun b!4822771 () Bool)

(assert (= bs!1162631 (and b!4822771 b!4822660)))

(declare-fun lambda!235935 () Int)

(assert (=> bs!1162631 (= (= (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (= lambda!235935 lambda!235918))))

(declare-fun bs!1162632 () Bool)

(assert (= bs!1162632 (and b!4822771 b!4822695)))

(assert (=> bs!1162632 (= (= (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (t!362562 (toList!7460 lt!1970345))) (= lambda!235935 lambda!235928))))

(declare-fun bs!1162633 () Bool)

(assert (= bs!1162633 (and b!4822771 b!4822550)))

(assert (=> bs!1162633 (= (= (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (toList!7460 lt!1970345)) (= lambda!235935 lambda!235902))))

(declare-fun bs!1162634 () Bool)

(assert (= bs!1162634 (and b!4822771 b!4822698)))

(assert (=> bs!1162634 (= (= (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (toList!7460 lt!1970345)) (= lambda!235935 lambda!235930))))

(declare-fun bs!1162635 () Bool)

(assert (= bs!1162635 (and b!4822771 b!4822702)))

(assert (=> bs!1162635 (= (= (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (Cons!54942 (h!61376 (toList!7460 lt!1970345)) (t!362562 (toList!7460 lt!1970345)))) (= lambda!235935 lambda!235929))))

(assert (=> b!4822771 true))

(declare-fun bs!1162636 () Bool)

(declare-fun b!4822778 () Bool)

(assert (= bs!1162636 (and b!4822778 b!4822660)))

(declare-fun lambda!235936 () Int)

(assert (=> bs!1162636 (= (= (Cons!54942 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (= lambda!235936 lambda!235918))))

(declare-fun bs!1162637 () Bool)

(assert (= bs!1162637 (and b!4822778 b!4822771)))

(assert (=> bs!1162637 (= (= (Cons!54942 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) (= lambda!235936 lambda!235935))))

(declare-fun bs!1162638 () Bool)

(assert (= bs!1162638 (and b!4822778 b!4822695)))

(assert (=> bs!1162638 (= (= (Cons!54942 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) (t!362562 (toList!7460 lt!1970345))) (= lambda!235936 lambda!235928))))

(declare-fun bs!1162639 () Bool)

(assert (= bs!1162639 (and b!4822778 b!4822550)))

(assert (=> bs!1162639 (= (= (Cons!54942 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) (toList!7460 lt!1970345)) (= lambda!235936 lambda!235902))))

(declare-fun bs!1162640 () Bool)

(assert (= bs!1162640 (and b!4822778 b!4822698)))

(assert (=> bs!1162640 (= (= (Cons!54942 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) (toList!7460 lt!1970345)) (= lambda!235936 lambda!235930))))

(declare-fun bs!1162641 () Bool)

(assert (= bs!1162641 (and b!4822778 b!4822702)))

(assert (=> bs!1162641 (= (= (Cons!54942 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) (Cons!54942 (h!61376 (toList!7460 lt!1970345)) (t!362562 (toList!7460 lt!1970345)))) (= lambda!235936 lambda!235929))))

(assert (=> b!4822778 true))

(declare-fun bs!1162642 () Bool)

(declare-fun b!4822774 () Bool)

(assert (= bs!1162642 (and b!4822774 b!4822660)))

(declare-fun lambda!235937 () Int)

(assert (=> bs!1162642 (= lambda!235937 lambda!235918)))

(declare-fun bs!1162643 () Bool)

(assert (= bs!1162643 (and b!4822774 b!4822771)))

(assert (=> bs!1162643 (= (= (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) (= lambda!235937 lambda!235935))))

(declare-fun bs!1162644 () Bool)

(assert (= bs!1162644 (and b!4822774 b!4822695)))

(assert (=> bs!1162644 (= (= (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) (t!362562 (toList!7460 lt!1970345))) (= lambda!235937 lambda!235928))))

(declare-fun bs!1162645 () Bool)

(assert (= bs!1162645 (and b!4822774 b!4822550)))

(assert (=> bs!1162645 (= (= (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) (toList!7460 lt!1970345)) (= lambda!235937 lambda!235902))))

(declare-fun bs!1162646 () Bool)

(assert (= bs!1162646 (and b!4822774 b!4822698)))

(assert (=> bs!1162646 (= (= (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) (toList!7460 lt!1970345)) (= lambda!235937 lambda!235930))))

(declare-fun bs!1162647 () Bool)

(assert (= bs!1162647 (and b!4822774 b!4822702)))

(assert (=> bs!1162647 (= (= (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) (Cons!54942 (h!61376 (toList!7460 lt!1970345)) (t!362562 (toList!7460 lt!1970345)))) (= lambda!235937 lambda!235929))))

(declare-fun bs!1162648 () Bool)

(assert (= bs!1162648 (and b!4822774 b!4822778)))

(assert (=> bs!1162648 (= (= (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) (Cons!54942 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))))) (= lambda!235937 lambda!235936))))

(assert (=> b!4822774 true))

(declare-fun bs!1162649 () Bool)

(declare-fun b!4822775 () Bool)

(assert (= bs!1162649 (and b!4822775 b!4822551)))

(declare-fun lambda!235938 () Int)

(assert (=> bs!1162649 (= lambda!235938 lambda!235903)))

(declare-fun bs!1162650 () Bool)

(assert (= bs!1162650 (and b!4822775 b!4822661)))

(assert (=> bs!1162650 (= lambda!235938 lambda!235919)))

(declare-fun bs!1162651 () Bool)

(assert (= bs!1162651 (and b!4822775 b!4822699)))

(assert (=> bs!1162651 (= lambda!235938 lambda!235931)))

(declare-fun d!1544409 () Bool)

(declare-fun e!3013344 () Bool)

(assert (=> d!1544409 e!3013344))

(declare-fun res!2052802 () Bool)

(assert (=> d!1544409 (=> (not res!2052802) (not e!3013344))))

(declare-fun lt!1970835 () List!55069)

(assert (=> d!1544409 (= res!2052802 (noDuplicate!952 lt!1970835))))

(declare-fun e!3013345 () List!55069)

(assert (=> d!1544409 (= lt!1970835 e!3013345)))

(declare-fun c!821778 () Bool)

(assert (=> d!1544409 (= c!821778 ((_ is Cons!54942) (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))))))

(assert (=> d!1544409 (invariantList!1803 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))))

(assert (=> d!1544409 (= (getKeysList!1150 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) lt!1970835)))

(declare-fun b!4822770 () Bool)

(declare-fun res!2052804 () Bool)

(assert (=> b!4822770 (=> (not res!2052804) (not e!3013344))))

(assert (=> b!4822770 (= res!2052804 (= (length!760 lt!1970835) (length!761 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))))))

(assert (=> b!4822771 false))

(declare-fun lt!1970839 () Unit!142503)

(assert (=> b!4822771 (= lt!1970839 (forallContained!4368 (getKeysList!1150 (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) lambda!235935 (_1!32371 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))))))))

(declare-fun e!3013343 () Unit!142503)

(declare-fun Unit!142601 () Unit!142503)

(assert (=> b!4822771 (= e!3013343 Unit!142601)))

(declare-fun b!4822772 () Bool)

(declare-fun Unit!142602 () Unit!142503)

(assert (=> b!4822772 (= e!3013343 Unit!142602)))

(declare-fun b!4822773 () Bool)

(assert (=> b!4822773 (= e!3013345 Nil!54945)))

(declare-fun res!2052803 () Bool)

(assert (=> b!4822774 (=> (not res!2052803) (not e!3013344))))

(assert (=> b!4822774 (= res!2052803 (forall!12582 lt!1970835 lambda!235937))))

(assert (=> b!4822775 (= e!3013344 (= (content!9811 lt!1970835) (content!9811 (map!12566 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) lambda!235938))))))

(declare-fun b!4822776 () Bool)

(declare-fun e!3013346 () Unit!142503)

(declare-fun Unit!142603 () Unit!142503)

(assert (=> b!4822776 (= e!3013346 Unit!142603)))

(declare-fun b!4822777 () Bool)

(assert (=> b!4822777 false))

(declare-fun Unit!142604 () Unit!142503)

(assert (=> b!4822777 (= e!3013346 Unit!142604)))

(assert (=> b!4822778 (= e!3013345 (Cons!54945 (_1!32371 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) (getKeysList!1150 (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))))))))

(declare-fun c!821779 () Bool)

(assert (=> b!4822778 (= c!821779 (containsKey!4344 (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) (_1!32371 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))))))))

(declare-fun lt!1970836 () Unit!142503)

(assert (=> b!4822778 (= lt!1970836 e!3013346)))

(declare-fun c!821780 () Bool)

(assert (=> b!4822778 (= c!821780 (contains!18743 (getKeysList!1150 (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))) (_1!32371 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))))))))

(declare-fun lt!1970838 () Unit!142503)

(assert (=> b!4822778 (= lt!1970838 e!3013343)))

(declare-fun lt!1970837 () List!55069)

(assert (=> b!4822778 (= lt!1970837 (getKeysList!1150 (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))))))

(declare-fun lt!1970840 () Unit!142503)

(assert (=> b!4822778 (= lt!1970840 (lemmaForallContainsAddHeadPreserves!367 (t!362562 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345))) lt!1970837 (h!61376 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))))))

(assert (=> b!4822778 (forall!12582 lt!1970837 lambda!235936)))

(declare-fun lt!1970834 () Unit!142503)

(assert (=> b!4822778 (= lt!1970834 lt!1970840)))

(assert (= (and d!1544409 c!821778) b!4822778))

(assert (= (and d!1544409 (not c!821778)) b!4822773))

(assert (= (and b!4822778 c!821779) b!4822777))

(assert (= (and b!4822778 (not c!821779)) b!4822776))

(assert (= (and b!4822778 c!821780) b!4822771))

(assert (= (and b!4822778 (not c!821780)) b!4822772))

(assert (= (and d!1544409 res!2052802) b!4822770))

(assert (= (and b!4822770 res!2052804) b!4822774))

(assert (= (and b!4822774 res!2052803) b!4822775))

(declare-fun m!5811312 () Bool)

(assert (=> b!4822775 m!5811312))

(declare-fun m!5811314 () Bool)

(assert (=> b!4822775 m!5811314))

(assert (=> b!4822775 m!5811314))

(declare-fun m!5811316 () Bool)

(assert (=> b!4822775 m!5811316))

(declare-fun m!5811318 () Bool)

(assert (=> b!4822774 m!5811318))

(declare-fun m!5811320 () Bool)

(assert (=> b!4822771 m!5811320))

(assert (=> b!4822771 m!5811320))

(declare-fun m!5811322 () Bool)

(assert (=> b!4822771 m!5811322))

(declare-fun m!5811324 () Bool)

(assert (=> d!1544409 m!5811324))

(assert (=> d!1544409 m!5811294))

(assert (=> b!4822778 m!5811320))

(declare-fun m!5811326 () Bool)

(assert (=> b!4822778 m!5811326))

(assert (=> b!4822778 m!5811320))

(declare-fun m!5811328 () Bool)

(assert (=> b!4822778 m!5811328))

(declare-fun m!5811330 () Bool)

(assert (=> b!4822778 m!5811330))

(declare-fun m!5811332 () Bool)

(assert (=> b!4822778 m!5811332))

(declare-fun m!5811334 () Bool)

(assert (=> b!4822770 m!5811334))

(assert (=> b!4822770 m!5811176))

(assert (=> b!4822342 d!1544409))

(declare-fun d!1544411 () Bool)

(assert (=> d!1544411 (isDefined!10592 (getValueByKey!2604 (toList!7459 lm!2280) lt!1970346))))

(declare-fun lt!1970843 () Unit!142503)

(declare-fun choose!35047 (List!55067 (_ BitVec 64)) Unit!142503)

(assert (=> d!1544411 (= lt!1970843 (choose!35047 (toList!7459 lm!2280) lt!1970346))))

(declare-fun e!3013349 () Bool)

(assert (=> d!1544411 e!3013349))

(declare-fun res!2052807 () Bool)

(assert (=> d!1544411 (=> (not res!2052807) (not e!3013349))))

(assert (=> d!1544411 (= res!2052807 (isStrictlySorted!976 (toList!7459 lm!2280)))))

(assert (=> d!1544411 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2389 (toList!7459 lm!2280) lt!1970346) lt!1970843)))

(declare-fun b!4822781 () Bool)

(assert (=> b!4822781 (= e!3013349 (containsKey!4345 (toList!7459 lm!2280) lt!1970346))))

(assert (= (and d!1544411 res!2052807) b!4822781))

(assert (=> d!1544411 m!5810392))

(assert (=> d!1544411 m!5810392))

(assert (=> d!1544411 m!5810604))

(declare-fun m!5811336 () Bool)

(assert (=> d!1544411 m!5811336))

(assert (=> d!1544411 m!5810388))

(assert (=> b!4822781 m!5810600))

(assert (=> b!4822356 d!1544411))

(declare-fun d!1544413 () Bool)

(declare-fun isEmpty!29638 (Option!13477) Bool)

(assert (=> d!1544413 (= (isDefined!10592 (getValueByKey!2604 (toList!7459 lm!2280) lt!1970346)) (not (isEmpty!29638 (getValueByKey!2604 (toList!7459 lm!2280) lt!1970346))))))

(declare-fun bs!1162652 () Bool)

(assert (= bs!1162652 d!1544413))

(assert (=> bs!1162652 m!5810392))

(declare-fun m!5811338 () Bool)

(assert (=> bs!1162652 m!5811338))

(assert (=> b!4822356 d!1544413))

(assert (=> b!4822356 d!1544407))

(assert (=> b!4822358 d!1544413))

(assert (=> b!4822358 d!1544407))

(assert (=> b!4822343 d!1544327))

(declare-fun d!1544415 () Bool)

(assert (=> d!1544415 (containsKey!4344 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428)))

(declare-fun lt!1970844 () Unit!142503)

(assert (=> d!1544415 (= lt!1970844 (choose!35041 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428))))

(assert (=> d!1544415 (invariantList!1803 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)))))

(assert (=> d!1544415 (= (lemmaInGetKeysListThenContainsKey!1150 (toList!7460 (addToMapMapFromBucket!1788 (_2!32372 (h!61377 (toList!7459 lm!2280))) lt!1970345)) key!5428) lt!1970844)))

(declare-fun bs!1162653 () Bool)

(assert (= bs!1162653 d!1544415))

(assert (=> bs!1162653 m!5810580))

(declare-fun m!5811340 () Bool)

(assert (=> bs!1162653 m!5811340))

(assert (=> bs!1162653 m!5811294))

(assert (=> b!4822343 d!1544415))

(declare-fun d!1544417 () Bool)

(declare-fun res!2052808 () Bool)

(declare-fun e!3013350 () Bool)

(assert (=> d!1544417 (=> res!2052808 e!3013350)))

(assert (=> d!1544417 (= res!2052808 (and ((_ is Cons!54942) (t!362562 (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280)))))) (= (_1!32371 (h!61376 (t!362562 (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280))))))) key!5428)))))

(assert (=> d!1544417 (= (containsKey!4341 (t!362562 (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280))))) key!5428) e!3013350)))

(declare-fun b!4822782 () Bool)

(declare-fun e!3013351 () Bool)

(assert (=> b!4822782 (= e!3013350 e!3013351)))

(declare-fun res!2052809 () Bool)

(assert (=> b!4822782 (=> (not res!2052809) (not e!3013351))))

(assert (=> b!4822782 (= res!2052809 ((_ is Cons!54942) (t!362562 (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun b!4822783 () Bool)

(assert (=> b!4822783 (= e!3013351 (containsKey!4341 (t!362562 (t!362562 (apply!13343 lm!2280 (_1!32372 (h!61377 (toList!7459 lm!2280)))))) key!5428))))

(assert (= (and d!1544417 (not res!2052808)) b!4822782))

(assert (= (and b!4822782 res!2052809) b!4822783))

(declare-fun m!5811342 () Bool)

(assert (=> b!4822783 m!5811342))

(assert (=> b!4822220 d!1544417))

(declare-fun tp_is_empty!34423 () Bool)

(declare-fun b!4822788 () Bool)

(declare-fun e!3013354 () Bool)

(declare-fun tp!1362466 () Bool)

(assert (=> b!4822788 (= e!3013354 (and tp_is_empty!34419 tp_is_empty!34423 tp!1362466))))

(assert (=> b!4822363 (= tp!1362457 e!3013354)))

(assert (= (and b!4822363 ((_ is Cons!54942) (_2!32372 (h!61377 (toList!7459 lm!2280))))) b!4822788))

(declare-fun b!4822789 () Bool)

(declare-fun e!3013355 () Bool)

(declare-fun tp!1362467 () Bool)

(declare-fun tp!1362468 () Bool)

(assert (=> b!4822789 (= e!3013355 (and tp!1362467 tp!1362468))))

(assert (=> b!4822363 (= tp!1362458 e!3013355)))

(assert (= (and b!4822363 ((_ is Cons!54943) (t!362563 (toList!7459 lm!2280)))) b!4822789))

(declare-fun b_lambda!189297 () Bool)

(assert (= b_lambda!189283 (or d!1544097 b_lambda!189297)))

(declare-fun bs!1162654 () Bool)

(declare-fun d!1544419 () Bool)

(assert (= bs!1162654 (and d!1544419 d!1544097)))

(assert (=> bs!1162654 (= (dynLambda!22200 lambda!235847 (h!61376 (toList!7460 lt!1970345))) (contains!18741 lt!1970536 (_1!32371 (h!61376 (toList!7460 lt!1970345)))))))

(declare-fun m!5811344 () Bool)

(assert (=> bs!1162654 m!5811344))

(assert (=> b!4822725 d!1544419))

(declare-fun b_lambda!189299 () Bool)

(assert (= b_lambda!189281 (or start!499872 b_lambda!189299)))

(declare-fun bs!1162655 () Bool)

(declare-fun d!1544421 () Bool)

(assert (= bs!1162655 (and d!1544421 start!499872)))

(assert (=> bs!1162655 (= (dynLambda!22198 lambda!235774 (h!61377 (t!362563 (toList!7459 (tail!9392 lm!2280))))) (noDuplicateKeys!2442 (_2!32372 (h!61377 (t!362563 (toList!7459 (tail!9392 lm!2280)))))))))

(declare-fun m!5811346 () Bool)

(assert (=> bs!1162655 m!5811346))

(assert (=> b!4822719 d!1544421))

(declare-fun b_lambda!189301 () Bool)

(assert (= b_lambda!189271 (or b!4822326 b_lambda!189301)))

(declare-fun bs!1162656 () Bool)

(declare-fun d!1544423 () Bool)

(assert (= bs!1162656 (and d!1544423 b!4822326)))

(assert (=> bs!1162656 (= (dynLambda!22200 lambda!235846 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) (contains!18741 lt!1970542 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(assert (=> bs!1162656 m!5810540))

(assert (=> d!1544309 d!1544423))

(declare-fun b_lambda!189303 () Bool)

(assert (= b_lambda!189293 (or start!499872 b_lambda!189303)))

(declare-fun bs!1162657 () Bool)

(declare-fun d!1544425 () Bool)

(assert (= bs!1162657 (and d!1544425 start!499872)))

(assert (=> bs!1162657 (= (dynLambda!22198 lambda!235774 (h!61377 (t!362563 (toList!7459 lm!2280)))) (noDuplicateKeys!2442 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280))))))))

(assert (=> bs!1162657 m!5811160))

(assert (=> b!4822758 d!1544425))

(declare-fun b_lambda!189305 () Bool)

(assert (= b_lambda!189275 (or b!4822326 b_lambda!189305)))

(declare-fun bs!1162658 () Bool)

(declare-fun d!1544427 () Bool)

(assert (= bs!1162658 (and d!1544427 b!4822326)))

(assert (=> bs!1162658 (= (dynLambda!22200 lambda!235845 (h!61376 (toList!7460 lt!1970345))) (contains!18741 lt!1970345 (_1!32371 (h!61376 (toList!7460 lt!1970345)))))))

(declare-fun m!5811348 () Bool)

(assert (=> bs!1162658 m!5811348))

(assert (=> b!4822629 d!1544427))

(declare-fun b_lambda!189307 () Bool)

(assert (= b_lambda!189289 (or d!1544133 b_lambda!189307)))

(declare-fun bs!1162659 () Bool)

(declare-fun d!1544429 () Bool)

(assert (= bs!1162659 (and d!1544429 d!1544133)))

(assert (=> bs!1162659 (= (dynLambda!22198 lambda!235853 (h!61377 (t!362563 (toList!7459 lm!2280)))) (noDuplicateKeys!2442 (_2!32372 (h!61377 (t!362563 (toList!7459 lm!2280))))))))

(assert (=> bs!1162659 m!5811160))

(assert (=> b!4822731 d!1544429))

(declare-fun b_lambda!189309 () Bool)

(assert (= b_lambda!189285 (or d!1544131 b_lambda!189309)))

(declare-fun bs!1162660 () Bool)

(declare-fun d!1544431 () Bool)

(assert (= bs!1162660 (and d!1544431 d!1544131)))

(assert (=> bs!1162660 (= (dynLambda!22198 lambda!235850 (h!61377 (toList!7459 lm!2280))) (noDuplicateKeys!2442 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))

(assert (=> bs!1162660 m!5810558))

(assert (=> b!4822727 d!1544431))

(declare-fun b_lambda!189311 () Bool)

(assert (= b_lambda!189273 (or b!4822326 b_lambda!189311)))

(declare-fun bs!1162661 () Bool)

(declare-fun d!1544433 () Bool)

(assert (= bs!1162661 (and d!1544433 b!4822326)))

(assert (=> bs!1162661 (= (dynLambda!22200 lambda!235846 (h!61376 (toList!7460 lt!1970345))) (contains!18741 lt!1970542 (_1!32371 (h!61376 (toList!7460 lt!1970345)))))))

(declare-fun m!5811350 () Bool)

(assert (=> bs!1162661 m!5811350))

(assert (=> b!4822613 d!1544433))

(declare-fun b_lambda!189313 () Bool)

(assert (= b_lambda!189241 (or b!4822326 b_lambda!189313)))

(declare-fun bs!1162662 () Bool)

(declare-fun d!1544435 () Bool)

(assert (= bs!1162662 (and d!1544435 b!4822326)))

(assert (=> bs!1162662 (= (dynLambda!22200 lambda!235846 (h!61376 (toList!7460 lt!1970541))) (contains!18741 lt!1970542 (_1!32371 (h!61376 (toList!7460 lt!1970541)))))))

(declare-fun m!5811352 () Bool)

(assert (=> bs!1162662 m!5811352))

(assert (=> b!4822578 d!1544435))

(declare-fun b_lambda!189315 () Bool)

(assert (= b_lambda!189295 (or d!1544097 b_lambda!189315)))

(declare-fun bs!1162663 () Bool)

(declare-fun d!1544437 () Bool)

(assert (= bs!1162663 (and d!1544437 d!1544097)))

(assert (=> bs!1162663 (= (dynLambda!22200 lambda!235847 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280))))) (contains!18741 lt!1970536 (_1!32371 (h!61376 (_2!32372 (h!61377 (toList!7459 lm!2280)))))))))

(declare-fun m!5811354 () Bool)

(assert (=> bs!1162663 m!5811354))

(assert (=> b!4822760 d!1544437))

(declare-fun b_lambda!189317 () Bool)

(assert (= b_lambda!189277 (or b!4822326 b_lambda!189317)))

(declare-fun bs!1162664 () Bool)

(declare-fun d!1544439 () Bool)

(assert (= bs!1162664 (and d!1544439 b!4822326)))

(assert (=> bs!1162664 (= (dynLambda!22200 lambda!235846 (h!61376 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280)))))) (contains!18741 lt!1970542 (_1!32371 (h!61376 (t!362562 (_2!32372 (h!61377 (toList!7459 lm!2280))))))))))

(declare-fun m!5811356 () Bool)

(assert (=> bs!1162664 m!5811356))

(assert (=> b!4822631 d!1544439))

(declare-fun b_lambda!189319 () Bool)

(assert (= b_lambda!189269 (or b!4822326 b_lambda!189319)))

(assert (=> b!4822608 d!1544423))

(declare-fun b_lambda!189321 () Bool)

(assert (= b_lambda!189291 (or d!1544141 b_lambda!189321)))

(declare-fun bs!1162665 () Bool)

(declare-fun d!1544441 () Bool)

(assert (= bs!1162665 (and d!1544441 d!1544141)))

(declare-fun allKeysSameHash!1999 (List!55066 (_ BitVec 64) Hashable!7256) Bool)

(assert (=> bs!1162665 (= (dynLambda!22198 lambda!235856 (h!61377 (toList!7459 lm!2280))) (allKeysSameHash!1999 (_2!32372 (h!61377 (toList!7459 lm!2280))) (_1!32372 (h!61377 (toList!7459 lm!2280))) hashF!1509))))

(declare-fun m!5811358 () Bool)

(assert (=> bs!1162665 m!5811358))

(assert (=> b!4822735 d!1544441))

(check-sat (not b!4822637) (not b_lambda!189305) (not b!4822655) (not b!4822695) (not b_lambda!189211) (not d!1544277) tp_is_empty!34419 (not bs!1162657) (not d!1544239) (not b_lambda!189303) (not bs!1162658) (not d!1544371) (not b_lambda!189311) (not bs!1162659) (not b!4822661) (not b!4822630) (not d!1544331) (not bs!1162655) (not b!4822616) (not d!1544337) (not b!4822771) (not b!4822624) (not b!4822736) (not d!1544365) (not b!4822698) (not b!4822783) (not d!1544373) (not b!4822633) (not b!4822639) (not b!4822536) (not b!4822618) (not b!4822632) (not b!4822551) (not b!4822789) (not b_lambda!189319) (not d!1544409) (not b!4822607) (not d!1544345) (not b!4822788) (not d!1544315) (not d!1544249) (not b!4822778) (not b_lambda!189309) (not d!1544411) (not b!4822663) (not d!1544397) (not b_lambda!189313) (not b_lambda!189317) (not bm!336186) (not b!4822620) (not b!4822634) (not b!4822609) (not b!4822745) (not d!1544313) (not b!4822615) (not b!4822612) (not b!4822702) (not b!4822751) (not d!1544399) (not d!1544375) (not b_lambda!189321) (not bm!336192) (not b!4822775) tp_is_empty!34423 (not b!4822739) (not b!4822732) (not b!4822640) (not d!1544321) (not b!4822626) (not b!4822606) (not b!4822759) (not bs!1162660) (not b!4822654) (not bm!336188) (not b!4822636) (not b!4822764) (not b!4822659) (not b!4822757) (not b_lambda!189297) (not b!4822638) (not b!4822549) (not b!4822694) (not b_lambda!189213) (not b_lambda!189301) (not b!4822651) (not b_lambda!189315) (not b!4822674) (not b!4822653) (not b!4822781) (not d!1544333) (not b!4822645) (not b!4822617) (not b_lambda!189307) (not b!4822734) (not b!4822763) (not bm!336191) (not d!1544341) (not d!1544369) (not bs!1162662) (not b!4822623) (not b!4822728) (not b_lambda!189279) (not b!4822550) (not d!1544383) (not b!4822559) (not bs!1162665) (not bm!336190) (not bs!1162663) (not d!1544353) (not bs!1162656) (not d!1544401) (not b!4822652) (not b!4822761) (not d!1544335) (not b!4822625) (not d!1544329) (not bm!336193) (not b_lambda!189299) (not b_lambda!189287) (not b!4822774) (not d!1544309) (not d!1544415) (not b!4822717) (not bs!1162654) (not b!4822627) (not b!4822699) (not b!4822621) (not b!4822726) (not b!4822706) (not b!4822768) (not b!4822730) (not bm!336187) (not b!4822660) (not d!1544235) (not b!4822580) (not b!4822643) (not b!4822720) (not b!4822723) (not b!4822765) (not d!1544379) (not b!4822744) (not bs!1162661) (not d!1544413) (not d!1544359) (not d!1544363) (not b!4822657) (not bm!336189) (not bs!1162664) (not b!4822770) (not b!4822614))
(check-sat)
