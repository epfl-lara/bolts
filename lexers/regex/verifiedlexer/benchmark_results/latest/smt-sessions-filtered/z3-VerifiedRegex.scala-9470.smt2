; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!500192 () Bool)

(assert start!500192)

(declare-fun b!4823505 () Bool)

(declare-fun res!2053249 () Bool)

(declare-fun e!3013847 () Bool)

(assert (=> b!4823505 (=> res!2053249 e!3013847)))

(declare-datatypes ((V!16885 0))(
  ( (V!16886 (val!21617 Int)) )
))
(declare-datatypes ((K!16639 0))(
  ( (K!16640 (val!21618 Int)) )
))
(declare-datatypes ((tuple2!58170 0))(
  ( (tuple2!58171 (_1!32379 K!16639) (_2!32379 V!16885)) )
))
(declare-datatypes ((List!55078 0))(
  ( (Nil!54954) (Cons!54954 (h!61388 tuple2!58170) (t!362574 List!55078)) )
))
(declare-datatypes ((tuple2!58172 0))(
  ( (tuple2!58173 (_1!32380 (_ BitVec 64)) (_2!32380 List!55078)) )
))
(declare-datatypes ((List!55079 0))(
  ( (Nil!54955) (Cons!54955 (h!61389 tuple2!58172) (t!362575 List!55079)) )
))
(declare-datatypes ((ListLongMap!5983 0))(
  ( (ListLongMap!5984 (toList!7467 List!55079)) )
))
(declare-fun lt!1971402 () ListLongMap!5983)

(declare-datatypes ((Hashable!7260 0))(
  ( (HashableExt!7259 (__x!33535 Int)) )
))
(declare-fun hashF!1509 () Hashable!7260)

(declare-fun allKeysSameHashInMap!2576 (ListLongMap!5983 Hashable!7260) Bool)

(assert (=> b!4823505 (= res!2053249 (not (allKeysSameHashInMap!2576 lt!1971402 hashF!1509)))))

(declare-fun b!4823506 () Bool)

(declare-fun e!3013844 () Bool)

(declare-fun tp!1362502 () Bool)

(assert (=> b!4823506 (= e!3013844 tp!1362502)))

(declare-fun res!2053243 () Bool)

(declare-fun e!3013846 () Bool)

(assert (=> start!500192 (=> (not res!2053243) (not e!3013846))))

(declare-fun lm!2280 () ListLongMap!5983)

(declare-fun lambda!236124 () Int)

(declare-fun forall!12590 (List!55079 Int) Bool)

(assert (=> start!500192 (= res!2053243 (forall!12590 (toList!7467 lm!2280) lambda!236124))))

(assert (=> start!500192 e!3013846))

(declare-fun inv!70539 (ListLongMap!5983) Bool)

(assert (=> start!500192 (and (inv!70539 lm!2280) e!3013844)))

(assert (=> start!500192 true))

(declare-fun tp_is_empty!34435 () Bool)

(assert (=> start!500192 tp_is_empty!34435))

(declare-fun b!4823507 () Bool)

(declare-fun e!3013843 () Bool)

(declare-datatypes ((ListMap!6845 0))(
  ( (ListMap!6846 (toList!7468 List!55078)) )
))
(declare-fun lt!1971401 () ListMap!6845)

(declare-fun key!5428 () K!16639)

(declare-fun contains!18756 (ListMap!6845 K!16639) Bool)

(assert (=> b!4823507 (= e!3013843 (contains!18756 lt!1971401 key!5428))))

(declare-fun b!4823508 () Bool)

(declare-fun lt!1971398 () (_ BitVec 64))

(declare-fun contains!18757 (ListLongMap!5983 (_ BitVec 64)) Bool)

(assert (=> b!4823508 (= e!3013847 (contains!18757 lt!1971402 lt!1971398))))

(declare-fun b!4823509 () Bool)

(declare-fun res!2053246 () Bool)

(declare-fun e!3013845 () Bool)

(assert (=> b!4823509 (=> (not res!2053246) (not e!3013845))))

(declare-fun containsKey!4353 (List!55078 K!16639) Bool)

(declare-fun apply!13347 (ListLongMap!5983 (_ BitVec 64)) List!55078)

(assert (=> b!4823509 (= res!2053246 (not (containsKey!4353 (apply!13347 lm!2280 lt!1971398) key!5428)))))

(declare-fun b!4823510 () Bool)

(assert (=> b!4823510 (= e!3013845 (not e!3013847))))

(declare-fun res!2053245 () Bool)

(assert (=> b!4823510 (=> res!2053245 e!3013847)))

(assert (=> b!4823510 (= res!2053245 (not (forall!12590 (toList!7467 lt!1971402) lambda!236124)))))

(declare-fun tail!9400 (ListLongMap!5983) ListLongMap!5983)

(assert (=> b!4823510 (= lt!1971402 (tail!9400 lm!2280))))

(declare-fun addToMapMapFromBucket!1792 (List!55078 ListMap!6845) ListMap!6845)

(assert (=> b!4823510 (= (contains!18756 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401) key!5428) e!3013843)))

(declare-fun res!2053248 () Bool)

(assert (=> b!4823510 (=> res!2053248 e!3013843)))

(assert (=> b!4823510 (= res!2053248 (containsKey!4353 (_2!32380 (h!61389 (toList!7467 lm!2280))) key!5428))))

(declare-datatypes ((Unit!142711 0))(
  ( (Unit!142712) )
))
(declare-fun lt!1971399 () Unit!142711)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!18 (List!55078 ListMap!6845 K!16639) Unit!142711)

(assert (=> b!4823510 (= lt!1971399 (lemmaAddToMapFromBucketContainsIIFInAccOrL!18 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401 key!5428))))

(declare-fun extractMap!2674 (List!55079) ListMap!6845)

(assert (=> b!4823510 (= lt!1971401 (extractMap!2674 (t!362575 (toList!7467 lm!2280))))))

(assert (=> b!4823510 (not (containsKey!4353 (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280)))) key!5428))))

(declare-fun lt!1971400 () Unit!142711)

(declare-fun lemmaNotSameHashThenCannotContainKey!218 (ListLongMap!5983 K!16639 (_ BitVec 64) Hashable!7260) Unit!142711)

(assert (=> b!4823510 (= lt!1971400 (lemmaNotSameHashThenCannotContainKey!218 lm!2280 key!5428 (_1!32380 (h!61389 (toList!7467 lm!2280))) hashF!1509))))

(declare-fun b!4823511 () Bool)

(declare-fun res!2053247 () Bool)

(assert (=> b!4823511 (=> (not res!2053247) (not e!3013846))))

(assert (=> b!4823511 (= res!2053247 (allKeysSameHashInMap!2576 lm!2280 hashF!1509))))

(declare-fun b!4823512 () Bool)

(assert (=> b!4823512 (= e!3013846 e!3013845)))

(declare-fun res!2053242 () Bool)

(assert (=> b!4823512 (=> (not res!2053242) (not e!3013845))))

(assert (=> b!4823512 (= res!2053242 (contains!18757 lm!2280 lt!1971398))))

(declare-fun hash!5376 (Hashable!7260 K!16639) (_ BitVec 64))

(assert (=> b!4823512 (= lt!1971398 (hash!5376 hashF!1509 key!5428))))

(declare-fun b!4823513 () Bool)

(declare-fun res!2053244 () Bool)

(assert (=> b!4823513 (=> (not res!2053244) (not e!3013845))))

(get-info :version)

(assert (=> b!4823513 (= res!2053244 (and (or (not ((_ is Cons!54955) (toList!7467 lm!2280))) (not (= (_1!32380 (h!61389 (toList!7467 lm!2280))) lt!1971398))) ((_ is Cons!54955) (toList!7467 lm!2280)) (not (= (_1!32380 (h!61389 (toList!7467 lm!2280))) lt!1971398))))))

(assert (= (and start!500192 res!2053243) b!4823511))

(assert (= (and b!4823511 res!2053247) b!4823512))

(assert (= (and b!4823512 res!2053242) b!4823509))

(assert (= (and b!4823509 res!2053246) b!4823513))

(assert (= (and b!4823513 res!2053244) b!4823510))

(assert (= (and b!4823510 (not res!2053248)) b!4823507))

(assert (= (and b!4823510 (not res!2053245)) b!4823505))

(assert (= (and b!4823505 (not res!2053249)) b!4823508))

(assert (= start!500192 b!4823506))

(declare-fun m!5812498 () Bool)

(assert (=> b!4823505 m!5812498))

(declare-fun m!5812500 () Bool)

(assert (=> b!4823512 m!5812500))

(declare-fun m!5812502 () Bool)

(assert (=> b!4823512 m!5812502))

(declare-fun m!5812504 () Bool)

(assert (=> b!4823508 m!5812504))

(declare-fun m!5812506 () Bool)

(assert (=> b!4823507 m!5812506))

(declare-fun m!5812508 () Bool)

(assert (=> b!4823509 m!5812508))

(assert (=> b!4823509 m!5812508))

(declare-fun m!5812510 () Bool)

(assert (=> b!4823509 m!5812510))

(declare-fun m!5812512 () Bool)

(assert (=> b!4823511 m!5812512))

(declare-fun m!5812514 () Bool)

(assert (=> b!4823510 m!5812514))

(declare-fun m!5812516 () Bool)

(assert (=> b!4823510 m!5812516))

(declare-fun m!5812518 () Bool)

(assert (=> b!4823510 m!5812518))

(declare-fun m!5812520 () Bool)

(assert (=> b!4823510 m!5812520))

(declare-fun m!5812522 () Bool)

(assert (=> b!4823510 m!5812522))

(assert (=> b!4823510 m!5812518))

(declare-fun m!5812524 () Bool)

(assert (=> b!4823510 m!5812524))

(declare-fun m!5812526 () Bool)

(assert (=> b!4823510 m!5812526))

(declare-fun m!5812528 () Bool)

(assert (=> b!4823510 m!5812528))

(declare-fun m!5812530 () Bool)

(assert (=> b!4823510 m!5812530))

(declare-fun m!5812532 () Bool)

(assert (=> b!4823510 m!5812532))

(assert (=> b!4823510 m!5812530))

(declare-fun m!5812534 () Bool)

(assert (=> start!500192 m!5812534))

(declare-fun m!5812536 () Bool)

(assert (=> start!500192 m!5812536))

(check-sat (not b!4823508) (not start!500192) (not b!4823512) (not b!4823506) (not b!4823510) (not b!4823507) (not b!4823505) (not b!4823511) (not b!4823509) tp_is_empty!34435)
(check-sat)
(get-model)

(declare-fun bs!1162954 () Bool)

(declare-fun d!1544833 () Bool)

(assert (= bs!1162954 (and d!1544833 start!500192)))

(declare-fun lambda!236127 () Int)

(assert (=> bs!1162954 (not (= lambda!236127 lambda!236124))))

(assert (=> d!1544833 true))

(assert (=> d!1544833 (= (allKeysSameHashInMap!2576 lm!2280 hashF!1509) (forall!12590 (toList!7467 lm!2280) lambda!236127))))

(declare-fun bs!1162955 () Bool)

(assert (= bs!1162955 d!1544833))

(declare-fun m!5812542 () Bool)

(assert (=> bs!1162955 m!5812542))

(assert (=> b!4823511 d!1544833))

(declare-fun d!1544835 () Bool)

(declare-fun res!2053263 () Bool)

(declare-fun e!3013870 () Bool)

(assert (=> d!1544835 (=> res!2053263 e!3013870)))

(assert (=> d!1544835 (= res!2053263 ((_ is Nil!54955) (toList!7467 lm!2280)))))

(assert (=> d!1544835 (= (forall!12590 (toList!7467 lm!2280) lambda!236124) e!3013870)))

(declare-fun b!4823547 () Bool)

(declare-fun e!3013871 () Bool)

(assert (=> b!4823547 (= e!3013870 e!3013871)))

(declare-fun res!2053264 () Bool)

(assert (=> b!4823547 (=> (not res!2053264) (not e!3013871))))

(declare-fun dynLambda!22206 (Int tuple2!58172) Bool)

(assert (=> b!4823547 (= res!2053264 (dynLambda!22206 lambda!236124 (h!61389 (toList!7467 lm!2280))))))

(declare-fun b!4823548 () Bool)

(assert (=> b!4823548 (= e!3013871 (forall!12590 (t!362575 (toList!7467 lm!2280)) lambda!236124))))

(assert (= (and d!1544835 (not res!2053263)) b!4823547))

(assert (= (and b!4823547 res!2053264) b!4823548))

(declare-fun b_lambda!189455 () Bool)

(assert (=> (not b_lambda!189455) (not b!4823547)))

(declare-fun m!5812564 () Bool)

(assert (=> b!4823547 m!5812564))

(declare-fun m!5812566 () Bool)

(assert (=> b!4823548 m!5812566))

(assert (=> start!500192 d!1544835))

(declare-fun d!1544839 () Bool)

(declare-fun isStrictlySorted!979 (List!55079) Bool)

(assert (=> d!1544839 (= (inv!70539 lm!2280) (isStrictlySorted!979 (toList!7467 lm!2280)))))

(declare-fun bs!1162956 () Bool)

(assert (= bs!1162956 d!1544839))

(declare-fun m!5812572 () Bool)

(assert (=> bs!1162956 m!5812572))

(assert (=> start!500192 d!1544839))

(declare-fun bs!1162957 () Bool)

(declare-fun d!1544845 () Bool)

(assert (= bs!1162957 (and d!1544845 start!500192)))

(declare-fun lambda!236128 () Int)

(assert (=> bs!1162957 (not (= lambda!236128 lambda!236124))))

(declare-fun bs!1162958 () Bool)

(assert (= bs!1162958 (and d!1544845 d!1544833)))

(assert (=> bs!1162958 (= lambda!236128 lambda!236127)))

(assert (=> d!1544845 true))

(assert (=> d!1544845 (= (allKeysSameHashInMap!2576 lt!1971402 hashF!1509) (forall!12590 (toList!7467 lt!1971402) lambda!236128))))

(declare-fun bs!1162959 () Bool)

(assert (= bs!1162959 d!1544845))

(declare-fun m!5812574 () Bool)

(assert (=> bs!1162959 m!5812574))

(assert (=> b!4823505 d!1544845))

(declare-fun b!4823575 () Bool)

(declare-fun e!3013893 () Unit!142711)

(declare-fun lt!1971449 () Unit!142711)

(assert (=> b!4823575 (= e!3013893 lt!1971449)))

(declare-fun lt!1971448 () Unit!142711)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2395 (List!55078 K!16639) Unit!142711)

(assert (=> b!4823575 (= lt!1971448 (lemmaContainsKeyImpliesGetValueByKeyDefined!2395 (toList!7468 lt!1971401) key!5428))))

(declare-datatypes ((Option!13484 0))(
  ( (None!13483) (Some!13483 (v!49158 V!16885)) )
))
(declare-fun isDefined!10598 (Option!13484) Bool)

(declare-fun getValueByKey!2611 (List!55078 K!16639) Option!13484)

(assert (=> b!4823575 (isDefined!10598 (getValueByKey!2611 (toList!7468 lt!1971401) key!5428))))

(declare-fun lt!1971447 () Unit!142711)

(assert (=> b!4823575 (= lt!1971447 lt!1971448)))

(declare-fun lemmaInListThenGetKeysListContains!1149 (List!55078 K!16639) Unit!142711)

(assert (=> b!4823575 (= lt!1971449 (lemmaInListThenGetKeysListContains!1149 (toList!7468 lt!1971401) key!5428))))

(declare-fun call!336246 () Bool)

(assert (=> b!4823575 call!336246))

(declare-fun b!4823576 () Bool)

(assert (=> b!4823576 false))

(declare-fun lt!1971446 () Unit!142711)

(declare-fun lt!1971443 () Unit!142711)

(assert (=> b!4823576 (= lt!1971446 lt!1971443)))

(declare-fun containsKey!4355 (List!55078 K!16639) Bool)

(assert (=> b!4823576 (containsKey!4355 (toList!7468 lt!1971401) key!5428)))

(declare-fun lemmaInGetKeysListThenContainsKey!1154 (List!55078 K!16639) Unit!142711)

(assert (=> b!4823576 (= lt!1971443 (lemmaInGetKeysListThenContainsKey!1154 (toList!7468 lt!1971401) key!5428))))

(declare-fun e!3013896 () Unit!142711)

(declare-fun Unit!142726 () Unit!142711)

(assert (=> b!4823576 (= e!3013896 Unit!142726)))

(declare-fun b!4823577 () Bool)

(declare-fun e!3013895 () Bool)

(declare-datatypes ((List!55081 0))(
  ( (Nil!54957) (Cons!54957 (h!61391 K!16639) (t!362577 List!55081)) )
))
(declare-fun contains!18759 (List!55081 K!16639) Bool)

(declare-fun keys!20215 (ListMap!6845) List!55081)

(assert (=> b!4823577 (= e!3013895 (not (contains!18759 (keys!20215 lt!1971401) key!5428)))))

(declare-fun d!1544847 () Bool)

(declare-fun e!3013892 () Bool)

(assert (=> d!1544847 e!3013892))

(declare-fun res!2053281 () Bool)

(assert (=> d!1544847 (=> res!2053281 e!3013892)))

(assert (=> d!1544847 (= res!2053281 e!3013895)))

(declare-fun res!2053279 () Bool)

(assert (=> d!1544847 (=> (not res!2053279) (not e!3013895))))

(declare-fun lt!1971450 () Bool)

(assert (=> d!1544847 (= res!2053279 (not lt!1971450))))

(declare-fun lt!1971445 () Bool)

(assert (=> d!1544847 (= lt!1971450 lt!1971445)))

(declare-fun lt!1971444 () Unit!142711)

(assert (=> d!1544847 (= lt!1971444 e!3013893)))

(declare-fun c!821914 () Bool)

(assert (=> d!1544847 (= c!821914 lt!1971445)))

(assert (=> d!1544847 (= lt!1971445 (containsKey!4355 (toList!7468 lt!1971401) key!5428))))

(assert (=> d!1544847 (= (contains!18756 lt!1971401 key!5428) lt!1971450)))

(declare-fun b!4823578 () Bool)

(declare-fun e!3013894 () List!55081)

(declare-fun getKeysList!1154 (List!55078) List!55081)

(assert (=> b!4823578 (= e!3013894 (getKeysList!1154 (toList!7468 lt!1971401)))))

(declare-fun b!4823579 () Bool)

(assert (=> b!4823579 (= e!3013894 (keys!20215 lt!1971401))))

(declare-fun b!4823580 () Bool)

(assert (=> b!4823580 (= e!3013893 e!3013896)))

(declare-fun c!821912 () Bool)

(assert (=> b!4823580 (= c!821912 call!336246)))

(declare-fun b!4823581 () Bool)

(declare-fun e!3013897 () Bool)

(assert (=> b!4823581 (= e!3013897 (contains!18759 (keys!20215 lt!1971401) key!5428))))

(declare-fun bm!336241 () Bool)

(assert (=> bm!336241 (= call!336246 (contains!18759 e!3013894 key!5428))))

(declare-fun c!821913 () Bool)

(assert (=> bm!336241 (= c!821913 c!821914)))

(declare-fun b!4823582 () Bool)

(declare-fun Unit!142727 () Unit!142711)

(assert (=> b!4823582 (= e!3013896 Unit!142727)))

(declare-fun b!4823583 () Bool)

(assert (=> b!4823583 (= e!3013892 e!3013897)))

(declare-fun res!2053280 () Bool)

(assert (=> b!4823583 (=> (not res!2053280) (not e!3013897))))

(assert (=> b!4823583 (= res!2053280 (isDefined!10598 (getValueByKey!2611 (toList!7468 lt!1971401) key!5428)))))

(assert (= (and d!1544847 c!821914) b!4823575))

(assert (= (and d!1544847 (not c!821914)) b!4823580))

(assert (= (and b!4823580 c!821912) b!4823576))

(assert (= (and b!4823580 (not c!821912)) b!4823582))

(assert (= (or b!4823575 b!4823580) bm!336241))

(assert (= (and bm!336241 c!821913) b!4823578))

(assert (= (and bm!336241 (not c!821913)) b!4823579))

(assert (= (and d!1544847 res!2053279) b!4823577))

(assert (= (and d!1544847 (not res!2053281)) b!4823583))

(assert (= (and b!4823583 res!2053280) b!4823581))

(declare-fun m!5812576 () Bool)

(assert (=> b!4823578 m!5812576))

(declare-fun m!5812578 () Bool)

(assert (=> b!4823579 m!5812578))

(declare-fun m!5812580 () Bool)

(assert (=> b!4823583 m!5812580))

(assert (=> b!4823583 m!5812580))

(declare-fun m!5812582 () Bool)

(assert (=> b!4823583 m!5812582))

(declare-fun m!5812584 () Bool)

(assert (=> d!1544847 m!5812584))

(declare-fun m!5812586 () Bool)

(assert (=> bm!336241 m!5812586))

(assert (=> b!4823576 m!5812584))

(declare-fun m!5812588 () Bool)

(assert (=> b!4823576 m!5812588))

(assert (=> b!4823581 m!5812578))

(assert (=> b!4823581 m!5812578))

(declare-fun m!5812590 () Bool)

(assert (=> b!4823581 m!5812590))

(assert (=> b!4823577 m!5812578))

(assert (=> b!4823577 m!5812578))

(assert (=> b!4823577 m!5812590))

(declare-fun m!5812592 () Bool)

(assert (=> b!4823575 m!5812592))

(assert (=> b!4823575 m!5812580))

(assert (=> b!4823575 m!5812580))

(assert (=> b!4823575 m!5812582))

(declare-fun m!5812594 () Bool)

(assert (=> b!4823575 m!5812594))

(assert (=> b!4823507 d!1544847))

(declare-fun d!1544849 () Bool)

(declare-fun e!3013903 () Bool)

(assert (=> d!1544849 e!3013903))

(declare-fun res!2053284 () Bool)

(assert (=> d!1544849 (=> res!2053284 e!3013903)))

(declare-fun lt!1971462 () Bool)

(assert (=> d!1544849 (= res!2053284 (not lt!1971462))))

(declare-fun lt!1971460 () Bool)

(assert (=> d!1544849 (= lt!1971462 lt!1971460)))

(declare-fun lt!1971461 () Unit!142711)

(declare-fun e!3013902 () Unit!142711)

(assert (=> d!1544849 (= lt!1971461 e!3013902)))

(declare-fun c!821917 () Bool)

(assert (=> d!1544849 (= c!821917 lt!1971460)))

(declare-fun containsKey!4356 (List!55079 (_ BitVec 64)) Bool)

(assert (=> d!1544849 (= lt!1971460 (containsKey!4356 (toList!7467 lm!2280) lt!1971398))))

(assert (=> d!1544849 (= (contains!18757 lm!2280 lt!1971398) lt!1971462)))

(declare-fun b!4823590 () Bool)

(declare-fun lt!1971459 () Unit!142711)

(assert (=> b!4823590 (= e!3013902 lt!1971459)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2396 (List!55079 (_ BitVec 64)) Unit!142711)

(assert (=> b!4823590 (= lt!1971459 (lemmaContainsKeyImpliesGetValueByKeyDefined!2396 (toList!7467 lm!2280) lt!1971398))))

(declare-datatypes ((Option!13485 0))(
  ( (None!13484) (Some!13484 (v!49159 List!55078)) )
))
(declare-fun isDefined!10599 (Option!13485) Bool)

(declare-fun getValueByKey!2612 (List!55079 (_ BitVec 64)) Option!13485)

(assert (=> b!4823590 (isDefined!10599 (getValueByKey!2612 (toList!7467 lm!2280) lt!1971398))))

(declare-fun b!4823591 () Bool)

(declare-fun Unit!142730 () Unit!142711)

(assert (=> b!4823591 (= e!3013902 Unit!142730)))

(declare-fun b!4823592 () Bool)

(assert (=> b!4823592 (= e!3013903 (isDefined!10599 (getValueByKey!2612 (toList!7467 lm!2280) lt!1971398)))))

(assert (= (and d!1544849 c!821917) b!4823590))

(assert (= (and d!1544849 (not c!821917)) b!4823591))

(assert (= (and d!1544849 (not res!2053284)) b!4823592))

(declare-fun m!5812596 () Bool)

(assert (=> d!1544849 m!5812596))

(declare-fun m!5812598 () Bool)

(assert (=> b!4823590 m!5812598))

(declare-fun m!5812600 () Bool)

(assert (=> b!4823590 m!5812600))

(assert (=> b!4823590 m!5812600))

(declare-fun m!5812602 () Bool)

(assert (=> b!4823590 m!5812602))

(assert (=> b!4823592 m!5812600))

(assert (=> b!4823592 m!5812600))

(assert (=> b!4823592 m!5812602))

(assert (=> b!4823512 d!1544849))

(declare-fun d!1544851 () Bool)

(declare-fun hash!5379 (Hashable!7260 K!16639) (_ BitVec 64))

(assert (=> d!1544851 (= (hash!5376 hashF!1509 key!5428) (hash!5379 hashF!1509 key!5428))))

(declare-fun bs!1162960 () Bool)

(assert (= bs!1162960 d!1544851))

(declare-fun m!5812604 () Bool)

(assert (=> bs!1162960 m!5812604))

(assert (=> b!4823512 d!1544851))

(declare-fun d!1544853 () Bool)

(declare-fun e!3013905 () Bool)

(assert (=> d!1544853 e!3013905))

(declare-fun res!2053285 () Bool)

(assert (=> d!1544853 (=> res!2053285 e!3013905)))

(declare-fun lt!1971466 () Bool)

(assert (=> d!1544853 (= res!2053285 (not lt!1971466))))

(declare-fun lt!1971464 () Bool)

(assert (=> d!1544853 (= lt!1971466 lt!1971464)))

(declare-fun lt!1971465 () Unit!142711)

(declare-fun e!3013904 () Unit!142711)

(assert (=> d!1544853 (= lt!1971465 e!3013904)))

(declare-fun c!821918 () Bool)

(assert (=> d!1544853 (= c!821918 lt!1971464)))

(assert (=> d!1544853 (= lt!1971464 (containsKey!4356 (toList!7467 lt!1971402) lt!1971398))))

(assert (=> d!1544853 (= (contains!18757 lt!1971402 lt!1971398) lt!1971466)))

(declare-fun b!4823593 () Bool)

(declare-fun lt!1971463 () Unit!142711)

(assert (=> b!4823593 (= e!3013904 lt!1971463)))

(assert (=> b!4823593 (= lt!1971463 (lemmaContainsKeyImpliesGetValueByKeyDefined!2396 (toList!7467 lt!1971402) lt!1971398))))

(assert (=> b!4823593 (isDefined!10599 (getValueByKey!2612 (toList!7467 lt!1971402) lt!1971398))))

(declare-fun b!4823594 () Bool)

(declare-fun Unit!142731 () Unit!142711)

(assert (=> b!4823594 (= e!3013904 Unit!142731)))

(declare-fun b!4823595 () Bool)

(assert (=> b!4823595 (= e!3013905 (isDefined!10599 (getValueByKey!2612 (toList!7467 lt!1971402) lt!1971398)))))

(assert (= (and d!1544853 c!821918) b!4823593))

(assert (= (and d!1544853 (not c!821918)) b!4823594))

(assert (= (and d!1544853 (not res!2053285)) b!4823595))

(declare-fun m!5812606 () Bool)

(assert (=> d!1544853 m!5812606))

(declare-fun m!5812608 () Bool)

(assert (=> b!4823593 m!5812608))

(declare-fun m!5812610 () Bool)

(assert (=> b!4823593 m!5812610))

(assert (=> b!4823593 m!5812610))

(declare-fun m!5812612 () Bool)

(assert (=> b!4823593 m!5812612))

(assert (=> b!4823595 m!5812610))

(assert (=> b!4823595 m!5812610))

(assert (=> b!4823595 m!5812612))

(assert (=> b!4823508 d!1544853))

(declare-fun d!1544855 () Bool)

(declare-fun get!18815 (Option!13485) List!55078)

(assert (=> d!1544855 (= (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280)))) (get!18815 (getValueByKey!2612 (toList!7467 lm!2280) (_1!32380 (h!61389 (toList!7467 lm!2280))))))))

(declare-fun bs!1162961 () Bool)

(assert (= bs!1162961 d!1544855))

(declare-fun m!5812614 () Bool)

(assert (=> bs!1162961 m!5812614))

(assert (=> bs!1162961 m!5812614))

(declare-fun m!5812616 () Bool)

(assert (=> bs!1162961 m!5812616))

(assert (=> b!4823510 d!1544855))

(declare-fun d!1544857 () Bool)

(declare-fun res!2053286 () Bool)

(declare-fun e!3013906 () Bool)

(assert (=> d!1544857 (=> res!2053286 e!3013906)))

(assert (=> d!1544857 (= res!2053286 ((_ is Nil!54955) (toList!7467 lt!1971402)))))

(assert (=> d!1544857 (= (forall!12590 (toList!7467 lt!1971402) lambda!236124) e!3013906)))

(declare-fun b!4823596 () Bool)

(declare-fun e!3013907 () Bool)

(assert (=> b!4823596 (= e!3013906 e!3013907)))

(declare-fun res!2053287 () Bool)

(assert (=> b!4823596 (=> (not res!2053287) (not e!3013907))))

(assert (=> b!4823596 (= res!2053287 (dynLambda!22206 lambda!236124 (h!61389 (toList!7467 lt!1971402))))))

(declare-fun b!4823597 () Bool)

(assert (=> b!4823597 (= e!3013907 (forall!12590 (t!362575 (toList!7467 lt!1971402)) lambda!236124))))

(assert (= (and d!1544857 (not res!2053286)) b!4823596))

(assert (= (and b!4823596 res!2053287) b!4823597))

(declare-fun b_lambda!189457 () Bool)

(assert (=> (not b_lambda!189457) (not b!4823596)))

(declare-fun m!5812618 () Bool)

(assert (=> b!4823596 m!5812618))

(declare-fun m!5812620 () Bool)

(assert (=> b!4823597 m!5812620))

(assert (=> b!4823510 d!1544857))

(declare-fun d!1544859 () Bool)

(declare-fun res!2053292 () Bool)

(declare-fun e!3013912 () Bool)

(assert (=> d!1544859 (=> res!2053292 e!3013912)))

(assert (=> d!1544859 (= res!2053292 (and ((_ is Cons!54954) (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280))))) (= (_1!32379 (h!61388 (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280)))))) key!5428)))))

(assert (=> d!1544859 (= (containsKey!4353 (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280)))) key!5428) e!3013912)))

(declare-fun b!4823602 () Bool)

(declare-fun e!3013913 () Bool)

(assert (=> b!4823602 (= e!3013912 e!3013913)))

(declare-fun res!2053293 () Bool)

(assert (=> b!4823602 (=> (not res!2053293) (not e!3013913))))

(assert (=> b!4823602 (= res!2053293 ((_ is Cons!54954) (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280))))))))

(declare-fun b!4823603 () Bool)

(assert (=> b!4823603 (= e!3013913 (containsKey!4353 (t!362574 (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280))))) key!5428))))

(assert (= (and d!1544859 (not res!2053292)) b!4823602))

(assert (= (and b!4823602 res!2053293) b!4823603))

(declare-fun m!5812622 () Bool)

(assert (=> b!4823603 m!5812622))

(assert (=> b!4823510 d!1544859))

(declare-fun d!1544861 () Bool)

(declare-fun res!2053294 () Bool)

(declare-fun e!3013914 () Bool)

(assert (=> d!1544861 (=> res!2053294 e!3013914)))

(assert (=> d!1544861 (= res!2053294 (and ((_ is Cons!54954) (_2!32380 (h!61389 (toList!7467 lm!2280)))) (= (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) key!5428)))))

(assert (=> d!1544861 (= (containsKey!4353 (_2!32380 (h!61389 (toList!7467 lm!2280))) key!5428) e!3013914)))

(declare-fun b!4823604 () Bool)

(declare-fun e!3013915 () Bool)

(assert (=> b!4823604 (= e!3013914 e!3013915)))

(declare-fun res!2053295 () Bool)

(assert (=> b!4823604 (=> (not res!2053295) (not e!3013915))))

(assert (=> b!4823604 (= res!2053295 ((_ is Cons!54954) (_2!32380 (h!61389 (toList!7467 lm!2280)))))))

(declare-fun b!4823605 () Bool)

(assert (=> b!4823605 (= e!3013915 (containsKey!4353 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))) key!5428))))

(assert (= (and d!1544861 (not res!2053294)) b!4823604))

(assert (= (and b!4823604 res!2053295) b!4823605))

(declare-fun m!5812624 () Bool)

(assert (=> b!4823605 m!5812624))

(assert (=> b!4823510 d!1544861))

(declare-fun b!4823683 () Bool)

(assert (=> b!4823683 true))

(declare-fun bs!1162984 () Bool)

(declare-fun b!4823681 () Bool)

(assert (= bs!1162984 (and b!4823681 b!4823683)))

(declare-fun lambda!236200 () Int)

(declare-fun lambda!236199 () Int)

(assert (=> bs!1162984 (= lambda!236200 lambda!236199)))

(assert (=> b!4823681 true))

(declare-fun lambda!236201 () Int)

(declare-fun lt!1971616 () ListMap!6845)

(assert (=> bs!1162984 (= (= lt!1971616 lt!1971401) (= lambda!236201 lambda!236199))))

(assert (=> b!4823681 (= (= lt!1971616 lt!1971401) (= lambda!236201 lambda!236200))))

(assert (=> b!4823681 true))

(declare-fun bs!1162985 () Bool)

(declare-fun d!1544863 () Bool)

(assert (= bs!1162985 (and d!1544863 b!4823683)))

(declare-fun lambda!236202 () Int)

(declare-fun lt!1971613 () ListMap!6845)

(assert (=> bs!1162985 (= (= lt!1971613 lt!1971401) (= lambda!236202 lambda!236199))))

(declare-fun bs!1162986 () Bool)

(assert (= bs!1162986 (and d!1544863 b!4823681)))

(assert (=> bs!1162986 (= (= lt!1971613 lt!1971401) (= lambda!236202 lambda!236200))))

(assert (=> bs!1162986 (= (= lt!1971613 lt!1971616) (= lambda!236202 lambda!236201))))

(assert (=> d!1544863 true))

(declare-fun c!821934 () Bool)

(declare-fun bm!336258 () Bool)

(declare-fun call!336264 () Bool)

(declare-fun forall!12592 (List!55078 Int) Bool)

(assert (=> bm!336258 (= call!336264 (forall!12592 (toList!7468 lt!1971401) (ite c!821934 lambda!236199 lambda!236200)))))

(declare-fun b!4823680 () Bool)

(declare-fun e!3013966 () Bool)

(declare-fun invariantList!1807 (List!55078) Bool)

(assert (=> b!4823680 (= e!3013966 (invariantList!1807 (toList!7468 lt!1971613)))))

(declare-fun bm!336259 () Bool)

(declare-fun call!336265 () Unit!142711)

(declare-fun lemmaContainsAllItsOwnKeys!986 (ListMap!6845) Unit!142711)

(assert (=> bm!336259 (= call!336265 (lemmaContainsAllItsOwnKeys!986 lt!1971401))))

(declare-fun e!3013965 () ListMap!6845)

(assert (=> b!4823681 (= e!3013965 lt!1971616)))

(declare-fun lt!1971608 () ListMap!6845)

(declare-fun +!2531 (ListMap!6845 tuple2!58170) ListMap!6845)

(assert (=> b!4823681 (= lt!1971608 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(assert (=> b!4823681 (= lt!1971616 (addToMapMapFromBucket!1792 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))) (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun lt!1971606 () Unit!142711)

(assert (=> b!4823681 (= lt!1971606 call!336265)))

(assert (=> b!4823681 call!336264))

(declare-fun lt!1971619 () Unit!142711)

(assert (=> b!4823681 (= lt!1971619 lt!1971606)))

(assert (=> b!4823681 (forall!12592 (toList!7468 lt!1971608) lambda!236201)))

(declare-fun lt!1971618 () Unit!142711)

(declare-fun Unit!142734 () Unit!142711)

(assert (=> b!4823681 (= lt!1971618 Unit!142734)))

(assert (=> b!4823681 (forall!12592 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))) lambda!236201)))

(declare-fun lt!1971623 () Unit!142711)

(declare-fun Unit!142735 () Unit!142711)

(assert (=> b!4823681 (= lt!1971623 Unit!142735)))

(declare-fun lt!1971610 () Unit!142711)

(declare-fun Unit!142736 () Unit!142711)

(assert (=> b!4823681 (= lt!1971610 Unit!142736)))

(declare-fun lt!1971625 () Unit!142711)

(declare-fun forallContained!4374 (List!55078 Int tuple2!58170) Unit!142711)

(assert (=> b!4823681 (= lt!1971625 (forallContained!4374 (toList!7468 lt!1971608) lambda!236201 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(assert (=> b!4823681 (contains!18756 lt!1971608 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(declare-fun lt!1971614 () Unit!142711)

(declare-fun Unit!142737 () Unit!142711)

(assert (=> b!4823681 (= lt!1971614 Unit!142737)))

(assert (=> b!4823681 (contains!18756 lt!1971616 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(declare-fun lt!1971624 () Unit!142711)

(declare-fun Unit!142738 () Unit!142711)

(assert (=> b!4823681 (= lt!1971624 Unit!142738)))

(assert (=> b!4823681 (forall!12592 (_2!32380 (h!61389 (toList!7467 lm!2280))) lambda!236201)))

(declare-fun lt!1971617 () Unit!142711)

(declare-fun Unit!142739 () Unit!142711)

(assert (=> b!4823681 (= lt!1971617 Unit!142739)))

(declare-fun call!336263 () Bool)

(assert (=> b!4823681 call!336263))

(declare-fun lt!1971622 () Unit!142711)

(declare-fun Unit!142740 () Unit!142711)

(assert (=> b!4823681 (= lt!1971622 Unit!142740)))

(declare-fun lt!1971621 () Unit!142711)

(declare-fun Unit!142741 () Unit!142711)

(assert (=> b!4823681 (= lt!1971621 Unit!142741)))

(declare-fun lt!1971620 () Unit!142711)

(declare-fun addForallContainsKeyThenBeforeAdding!985 (ListMap!6845 ListMap!6845 K!16639 V!16885) Unit!142711)

(assert (=> b!4823681 (= lt!1971620 (addForallContainsKeyThenBeforeAdding!985 lt!1971401 lt!1971616 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (_2!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(assert (=> b!4823681 (forall!12592 (toList!7468 lt!1971401) lambda!236201)))

(declare-fun lt!1971607 () Unit!142711)

(assert (=> b!4823681 (= lt!1971607 lt!1971620)))

(assert (=> b!4823681 (forall!12592 (toList!7468 lt!1971401) lambda!236201)))

(declare-fun lt!1971611 () Unit!142711)

(declare-fun Unit!142742 () Unit!142711)

(assert (=> b!4823681 (= lt!1971611 Unit!142742)))

(declare-fun res!2053332 () Bool)

(assert (=> b!4823681 (= res!2053332 (forall!12592 (_2!32380 (h!61389 (toList!7467 lm!2280))) lambda!236201))))

(declare-fun e!3013964 () Bool)

(assert (=> b!4823681 (=> (not res!2053332) (not e!3013964))))

(assert (=> b!4823681 e!3013964))

(declare-fun lt!1971612 () Unit!142711)

(declare-fun Unit!142743 () Unit!142711)

(assert (=> b!4823681 (= lt!1971612 Unit!142743)))

(declare-fun b!4823682 () Bool)

(declare-fun res!2053333 () Bool)

(assert (=> b!4823682 (=> (not res!2053333) (not e!3013966))))

(assert (=> b!4823682 (= res!2053333 (forall!12592 (toList!7468 lt!1971401) lambda!236202))))

(assert (=> b!4823683 (= e!3013965 lt!1971401)))

(declare-fun lt!1971615 () Unit!142711)

(assert (=> b!4823683 (= lt!1971615 call!336265)))

(assert (=> b!4823683 call!336264))

(declare-fun lt!1971609 () Unit!142711)

(assert (=> b!4823683 (= lt!1971609 lt!1971615)))

(assert (=> b!4823683 call!336263))

(declare-fun lt!1971605 () Unit!142711)

(declare-fun Unit!142744 () Unit!142711)

(assert (=> b!4823683 (= lt!1971605 Unit!142744)))

(declare-fun b!4823684 () Bool)

(assert (=> b!4823684 (= e!3013964 (forall!12592 (toList!7468 lt!1971401) lambda!236201))))

(assert (=> d!1544863 e!3013966))

(declare-fun res!2053331 () Bool)

(assert (=> d!1544863 (=> (not res!2053331) (not e!3013966))))

(assert (=> d!1544863 (= res!2053331 (forall!12592 (_2!32380 (h!61389 (toList!7467 lm!2280))) lambda!236202))))

(assert (=> d!1544863 (= lt!1971613 e!3013965)))

(assert (=> d!1544863 (= c!821934 ((_ is Nil!54954) (_2!32380 (h!61389 (toList!7467 lm!2280)))))))

(declare-fun noDuplicateKeys!2446 (List!55078) Bool)

(assert (=> d!1544863 (noDuplicateKeys!2446 (_2!32380 (h!61389 (toList!7467 lm!2280))))))

(assert (=> d!1544863 (= (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401) lt!1971613)))

(declare-fun bm!336260 () Bool)

(assert (=> bm!336260 (= call!336263 (forall!12592 (ite c!821934 (toList!7468 lt!1971401) (toList!7468 lt!1971608)) (ite c!821934 lambda!236199 lambda!236201)))))

(assert (= (and d!1544863 c!821934) b!4823683))

(assert (= (and d!1544863 (not c!821934)) b!4823681))

(assert (= (and b!4823681 res!2053332) b!4823684))

(assert (= (or b!4823683 b!4823681) bm!336258))

(assert (= (or b!4823683 b!4823681) bm!336260))

(assert (= (or b!4823683 b!4823681) bm!336259))

(assert (= (and d!1544863 res!2053331) b!4823682))

(assert (= (and b!4823682 res!2053333) b!4823680))

(declare-fun m!5812736 () Bool)

(assert (=> b!4823681 m!5812736))

(declare-fun m!5812738 () Bool)

(assert (=> b!4823681 m!5812738))

(declare-fun m!5812740 () Bool)

(assert (=> b!4823681 m!5812740))

(declare-fun m!5812742 () Bool)

(assert (=> b!4823681 m!5812742))

(declare-fun m!5812744 () Bool)

(assert (=> b!4823681 m!5812744))

(declare-fun m!5812746 () Bool)

(assert (=> b!4823681 m!5812746))

(assert (=> b!4823681 m!5812736))

(declare-fun m!5812748 () Bool)

(assert (=> b!4823681 m!5812748))

(declare-fun m!5812750 () Bool)

(assert (=> b!4823681 m!5812750))

(assert (=> b!4823681 m!5812738))

(declare-fun m!5812752 () Bool)

(assert (=> b!4823681 m!5812752))

(declare-fun m!5812754 () Bool)

(assert (=> b!4823681 m!5812754))

(assert (=> b!4823681 m!5812746))

(declare-fun m!5812756 () Bool)

(assert (=> bm!336259 m!5812756))

(declare-fun m!5812758 () Bool)

(assert (=> d!1544863 m!5812758))

(declare-fun m!5812760 () Bool)

(assert (=> d!1544863 m!5812760))

(assert (=> b!4823684 m!5812746))

(declare-fun m!5812762 () Bool)

(assert (=> bm!336260 m!5812762))

(declare-fun m!5812764 () Bool)

(assert (=> b!4823682 m!5812764))

(declare-fun m!5812766 () Bool)

(assert (=> bm!336258 m!5812766))

(declare-fun m!5812768 () Bool)

(assert (=> b!4823680 m!5812768))

(assert (=> b!4823510 d!1544863))

(declare-fun bs!1162987 () Bool)

(declare-fun d!1544899 () Bool)

(assert (= bs!1162987 (and d!1544899 start!500192)))

(declare-fun lambda!236205 () Int)

(assert (=> bs!1162987 (= lambda!236205 lambda!236124)))

(declare-fun bs!1162988 () Bool)

(assert (= bs!1162988 (and d!1544899 d!1544833)))

(assert (=> bs!1162988 (not (= lambda!236205 lambda!236127))))

(declare-fun bs!1162989 () Bool)

(assert (= bs!1162989 (and d!1544899 d!1544845)))

(assert (=> bs!1162989 (not (= lambda!236205 lambda!236128))))

(assert (=> d!1544899 (not (containsKey!4353 (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280)))) key!5428))))

(declare-fun lt!1971628 () Unit!142711)

(declare-fun choose!35070 (ListLongMap!5983 K!16639 (_ BitVec 64) Hashable!7260) Unit!142711)

(assert (=> d!1544899 (= lt!1971628 (choose!35070 lm!2280 key!5428 (_1!32380 (h!61389 (toList!7467 lm!2280))) hashF!1509))))

(assert (=> d!1544899 (forall!12590 (toList!7467 lm!2280) lambda!236205)))

(assert (=> d!1544899 (= (lemmaNotSameHashThenCannotContainKey!218 lm!2280 key!5428 (_1!32380 (h!61389 (toList!7467 lm!2280))) hashF!1509) lt!1971628)))

(declare-fun bs!1162990 () Bool)

(assert (= bs!1162990 d!1544899))

(assert (=> bs!1162990 m!5812518))

(assert (=> bs!1162990 m!5812518))

(assert (=> bs!1162990 m!5812524))

(declare-fun m!5812770 () Bool)

(assert (=> bs!1162990 m!5812770))

(declare-fun m!5812772 () Bool)

(assert (=> bs!1162990 m!5812772))

(assert (=> b!4823510 d!1544899))

(declare-fun d!1544901 () Bool)

(declare-fun e!3013969 () Bool)

(assert (=> d!1544901 (= (contains!18756 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401) key!5428) e!3013969)))

(declare-fun res!2053336 () Bool)

(assert (=> d!1544901 (=> res!2053336 e!3013969)))

(assert (=> d!1544901 (= res!2053336 (containsKey!4353 (_2!32380 (h!61389 (toList!7467 lm!2280))) key!5428))))

(declare-fun lt!1971631 () Unit!142711)

(declare-fun choose!35071 (List!55078 ListMap!6845 K!16639) Unit!142711)

(assert (=> d!1544901 (= lt!1971631 (choose!35071 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401 key!5428))))

(assert (=> d!1544901 (noDuplicateKeys!2446 (_2!32380 (h!61389 (toList!7467 lm!2280))))))

(assert (=> d!1544901 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!18 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401 key!5428) lt!1971631)))

(declare-fun b!4823689 () Bool)

(assert (=> b!4823689 (= e!3013969 (contains!18756 lt!1971401 key!5428))))

(assert (= (and d!1544901 (not res!2053336)) b!4823689))

(assert (=> d!1544901 m!5812520))

(assert (=> d!1544901 m!5812530))

(assert (=> d!1544901 m!5812760))

(assert (=> d!1544901 m!5812530))

(assert (=> d!1544901 m!5812532))

(declare-fun m!5812774 () Bool)

(assert (=> d!1544901 m!5812774))

(assert (=> b!4823689 m!5812506))

(assert (=> b!4823510 d!1544901))

(declare-fun b!4823690 () Bool)

(declare-fun e!3013971 () Unit!142711)

(declare-fun lt!1971638 () Unit!142711)

(assert (=> b!4823690 (= e!3013971 lt!1971638)))

(declare-fun lt!1971637 () Unit!142711)

(assert (=> b!4823690 (= lt!1971637 (lemmaContainsKeyImpliesGetValueByKeyDefined!2395 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428))))

(assert (=> b!4823690 (isDefined!10598 (getValueByKey!2611 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428))))

(declare-fun lt!1971636 () Unit!142711)

(assert (=> b!4823690 (= lt!1971636 lt!1971637)))

(assert (=> b!4823690 (= lt!1971638 (lemmaInListThenGetKeysListContains!1149 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428))))

(declare-fun call!336266 () Bool)

(assert (=> b!4823690 call!336266))

(declare-fun b!4823691 () Bool)

(assert (=> b!4823691 false))

(declare-fun lt!1971635 () Unit!142711)

(declare-fun lt!1971632 () Unit!142711)

(assert (=> b!4823691 (= lt!1971635 lt!1971632)))

(assert (=> b!4823691 (containsKey!4355 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428)))

(assert (=> b!4823691 (= lt!1971632 (lemmaInGetKeysListThenContainsKey!1154 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428))))

(declare-fun e!3013974 () Unit!142711)

(declare-fun Unit!142745 () Unit!142711)

(assert (=> b!4823691 (= e!3013974 Unit!142745)))

(declare-fun b!4823692 () Bool)

(declare-fun e!3013973 () Bool)

(assert (=> b!4823692 (= e!3013973 (not (contains!18759 (keys!20215 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428)))))

(declare-fun d!1544903 () Bool)

(declare-fun e!3013970 () Bool)

(assert (=> d!1544903 e!3013970))

(declare-fun res!2053339 () Bool)

(assert (=> d!1544903 (=> res!2053339 e!3013970)))

(assert (=> d!1544903 (= res!2053339 e!3013973)))

(declare-fun res!2053337 () Bool)

(assert (=> d!1544903 (=> (not res!2053337) (not e!3013973))))

(declare-fun lt!1971639 () Bool)

(assert (=> d!1544903 (= res!2053337 (not lt!1971639))))

(declare-fun lt!1971634 () Bool)

(assert (=> d!1544903 (= lt!1971639 lt!1971634)))

(declare-fun lt!1971633 () Unit!142711)

(assert (=> d!1544903 (= lt!1971633 e!3013971)))

(declare-fun c!821937 () Bool)

(assert (=> d!1544903 (= c!821937 lt!1971634)))

(assert (=> d!1544903 (= lt!1971634 (containsKey!4355 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428))))

(assert (=> d!1544903 (= (contains!18756 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401) key!5428) lt!1971639)))

(declare-fun b!4823693 () Bool)

(declare-fun e!3013972 () List!55081)

(assert (=> b!4823693 (= e!3013972 (getKeysList!1154 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))))

(declare-fun b!4823694 () Bool)

(assert (=> b!4823694 (= e!3013972 (keys!20215 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))))

(declare-fun b!4823695 () Bool)

(assert (=> b!4823695 (= e!3013971 e!3013974)))

(declare-fun c!821935 () Bool)

(assert (=> b!4823695 (= c!821935 call!336266)))

(declare-fun b!4823696 () Bool)

(declare-fun e!3013975 () Bool)

(assert (=> b!4823696 (= e!3013975 (contains!18759 (keys!20215 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428))))

(declare-fun bm!336261 () Bool)

(assert (=> bm!336261 (= call!336266 (contains!18759 e!3013972 key!5428))))

(declare-fun c!821936 () Bool)

(assert (=> bm!336261 (= c!821936 c!821937)))

(declare-fun b!4823697 () Bool)

(declare-fun Unit!142746 () Unit!142711)

(assert (=> b!4823697 (= e!3013974 Unit!142746)))

(declare-fun b!4823698 () Bool)

(assert (=> b!4823698 (= e!3013970 e!3013975)))

(declare-fun res!2053338 () Bool)

(assert (=> b!4823698 (=> (not res!2053338) (not e!3013975))))

(assert (=> b!4823698 (= res!2053338 (isDefined!10598 (getValueByKey!2611 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428)))))

(assert (= (and d!1544903 c!821937) b!4823690))

(assert (= (and d!1544903 (not c!821937)) b!4823695))

(assert (= (and b!4823695 c!821935) b!4823691))

(assert (= (and b!4823695 (not c!821935)) b!4823697))

(assert (= (or b!4823690 b!4823695) bm!336261))

(assert (= (and bm!336261 c!821936) b!4823693))

(assert (= (and bm!336261 (not c!821936)) b!4823694))

(assert (= (and d!1544903 res!2053337) b!4823692))

(assert (= (and d!1544903 (not res!2053339)) b!4823698))

(assert (= (and b!4823698 res!2053338) b!4823696))

(declare-fun m!5812776 () Bool)

(assert (=> b!4823693 m!5812776))

(assert (=> b!4823694 m!5812530))

(declare-fun m!5812778 () Bool)

(assert (=> b!4823694 m!5812778))

(declare-fun m!5812780 () Bool)

(assert (=> b!4823698 m!5812780))

(assert (=> b!4823698 m!5812780))

(declare-fun m!5812782 () Bool)

(assert (=> b!4823698 m!5812782))

(declare-fun m!5812784 () Bool)

(assert (=> d!1544903 m!5812784))

(declare-fun m!5812786 () Bool)

(assert (=> bm!336261 m!5812786))

(assert (=> b!4823691 m!5812784))

(declare-fun m!5812788 () Bool)

(assert (=> b!4823691 m!5812788))

(assert (=> b!4823696 m!5812530))

(assert (=> b!4823696 m!5812778))

(assert (=> b!4823696 m!5812778))

(declare-fun m!5812790 () Bool)

(assert (=> b!4823696 m!5812790))

(assert (=> b!4823692 m!5812530))

(assert (=> b!4823692 m!5812778))

(assert (=> b!4823692 m!5812778))

(assert (=> b!4823692 m!5812790))

(declare-fun m!5812792 () Bool)

(assert (=> b!4823690 m!5812792))

(assert (=> b!4823690 m!5812780))

(assert (=> b!4823690 m!5812780))

(assert (=> b!4823690 m!5812782))

(declare-fun m!5812794 () Bool)

(assert (=> b!4823690 m!5812794))

(assert (=> b!4823510 d!1544903))

(declare-fun bs!1162991 () Bool)

(declare-fun d!1544905 () Bool)

(assert (= bs!1162991 (and d!1544905 start!500192)))

(declare-fun lambda!236208 () Int)

(assert (=> bs!1162991 (= lambda!236208 lambda!236124)))

(declare-fun bs!1162992 () Bool)

(assert (= bs!1162992 (and d!1544905 d!1544833)))

(assert (=> bs!1162992 (not (= lambda!236208 lambda!236127))))

(declare-fun bs!1162993 () Bool)

(assert (= bs!1162993 (and d!1544905 d!1544845)))

(assert (=> bs!1162993 (not (= lambda!236208 lambda!236128))))

(declare-fun bs!1162994 () Bool)

(assert (= bs!1162994 (and d!1544905 d!1544899)))

(assert (=> bs!1162994 (= lambda!236208 lambda!236205)))

(declare-fun lt!1971642 () ListMap!6845)

(assert (=> d!1544905 (invariantList!1807 (toList!7468 lt!1971642))))

(declare-fun e!3013978 () ListMap!6845)

(assert (=> d!1544905 (= lt!1971642 e!3013978)))

(declare-fun c!821940 () Bool)

(assert (=> d!1544905 (= c!821940 ((_ is Cons!54955) (t!362575 (toList!7467 lm!2280))))))

(assert (=> d!1544905 (forall!12590 (t!362575 (toList!7467 lm!2280)) lambda!236208)))

(assert (=> d!1544905 (= (extractMap!2674 (t!362575 (toList!7467 lm!2280))) lt!1971642)))

(declare-fun b!4823703 () Bool)

(assert (=> b!4823703 (= e!3013978 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280)))) (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))))))

(declare-fun b!4823704 () Bool)

(assert (=> b!4823704 (= e!3013978 (ListMap!6846 Nil!54954))))

(assert (= (and d!1544905 c!821940) b!4823703))

(assert (= (and d!1544905 (not c!821940)) b!4823704))

(declare-fun m!5812796 () Bool)

(assert (=> d!1544905 m!5812796))

(declare-fun m!5812798 () Bool)

(assert (=> d!1544905 m!5812798))

(declare-fun m!5812800 () Bool)

(assert (=> b!4823703 m!5812800))

(assert (=> b!4823703 m!5812800))

(declare-fun m!5812802 () Bool)

(assert (=> b!4823703 m!5812802))

(assert (=> b!4823510 d!1544905))

(declare-fun d!1544907 () Bool)

(declare-fun tail!9402 (List!55079) List!55079)

(assert (=> d!1544907 (= (tail!9400 lm!2280) (ListLongMap!5984 (tail!9402 (toList!7467 lm!2280))))))

(declare-fun bs!1162995 () Bool)

(assert (= bs!1162995 d!1544907))

(declare-fun m!5812804 () Bool)

(assert (=> bs!1162995 m!5812804))

(assert (=> b!4823510 d!1544907))

(declare-fun d!1544909 () Bool)

(declare-fun res!2053340 () Bool)

(declare-fun e!3013979 () Bool)

(assert (=> d!1544909 (=> res!2053340 e!3013979)))

(assert (=> d!1544909 (= res!2053340 (and ((_ is Cons!54954) (apply!13347 lm!2280 lt!1971398)) (= (_1!32379 (h!61388 (apply!13347 lm!2280 lt!1971398))) key!5428)))))

(assert (=> d!1544909 (= (containsKey!4353 (apply!13347 lm!2280 lt!1971398) key!5428) e!3013979)))

(declare-fun b!4823705 () Bool)

(declare-fun e!3013980 () Bool)

(assert (=> b!4823705 (= e!3013979 e!3013980)))

(declare-fun res!2053341 () Bool)

(assert (=> b!4823705 (=> (not res!2053341) (not e!3013980))))

(assert (=> b!4823705 (= res!2053341 ((_ is Cons!54954) (apply!13347 lm!2280 lt!1971398)))))

(declare-fun b!4823706 () Bool)

(assert (=> b!4823706 (= e!3013980 (containsKey!4353 (t!362574 (apply!13347 lm!2280 lt!1971398)) key!5428))))

(assert (= (and d!1544909 (not res!2053340)) b!4823705))

(assert (= (and b!4823705 res!2053341) b!4823706))

(declare-fun m!5812806 () Bool)

(assert (=> b!4823706 m!5812806))

(assert (=> b!4823509 d!1544909))

(declare-fun d!1544911 () Bool)

(assert (=> d!1544911 (= (apply!13347 lm!2280 lt!1971398) (get!18815 (getValueByKey!2612 (toList!7467 lm!2280) lt!1971398)))))

(declare-fun bs!1162996 () Bool)

(assert (= bs!1162996 d!1544911))

(assert (=> bs!1162996 m!5812600))

(assert (=> bs!1162996 m!5812600))

(declare-fun m!5812808 () Bool)

(assert (=> bs!1162996 m!5812808))

(assert (=> b!4823509 d!1544911))

(declare-fun b!4823711 () Bool)

(declare-fun e!3013983 () Bool)

(declare-fun tp!1362513 () Bool)

(declare-fun tp!1362514 () Bool)

(assert (=> b!4823711 (= e!3013983 (and tp!1362513 tp!1362514))))

(assert (=> b!4823506 (= tp!1362502 e!3013983)))

(assert (= (and b!4823506 ((_ is Cons!54955) (toList!7467 lm!2280))) b!4823711))

(declare-fun b_lambda!189467 () Bool)

(assert (= b_lambda!189457 (or start!500192 b_lambda!189467)))

(declare-fun bs!1162997 () Bool)

(declare-fun d!1544913 () Bool)

(assert (= bs!1162997 (and d!1544913 start!500192)))

(assert (=> bs!1162997 (= (dynLambda!22206 lambda!236124 (h!61389 (toList!7467 lt!1971402))) (noDuplicateKeys!2446 (_2!32380 (h!61389 (toList!7467 lt!1971402)))))))

(declare-fun m!5812810 () Bool)

(assert (=> bs!1162997 m!5812810))

(assert (=> b!4823596 d!1544913))

(declare-fun b_lambda!189469 () Bool)

(assert (= b_lambda!189455 (or start!500192 b_lambda!189469)))

(declare-fun bs!1162998 () Bool)

(declare-fun d!1544915 () Bool)

(assert (= bs!1162998 (and d!1544915 start!500192)))

(assert (=> bs!1162998 (= (dynLambda!22206 lambda!236124 (h!61389 (toList!7467 lm!2280))) (noDuplicateKeys!2446 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))

(assert (=> bs!1162998 m!5812760))

(assert (=> b!4823547 d!1544915))

(check-sat (not d!1544907) (not d!1544905) (not b!4823681) (not d!1544863) (not b!4823703) (not b!4823684) (not d!1544833) (not b!4823576) (not b!4823698) (not b!4823696) (not d!1544901) (not b!4823693) (not d!1544903) (not b!4823575) (not d!1544839) (not b!4823592) (not b!4823692) (not bs!1162997) (not b!4823583) (not bm!336258) (not d!1544911) (not bm!336259) (not d!1544853) (not b!4823605) (not b!4823691) (not b!4823590) (not bs!1162998) (not d!1544851) (not bm!336241) (not b!4823603) (not d!1544847) (not b!4823680) (not d!1544899) (not bm!336261) (not b!4823577) (not b!4823690) (not b!4823581) (not b_lambda!189467) (not b!4823597) (not b!4823593) (not d!1544845) (not bm!336260) (not b!4823711) (not b!4823694) (not b!4823682) (not d!1544855) (not d!1544849) tp_is_empty!34435 (not b!4823706) (not b!4823579) (not b_lambda!189469) (not b!4823578) (not b!4823689) (not b!4823548) (not b!4823595))
(check-sat)
(get-model)

(declare-fun d!1544917 () Bool)

(declare-fun isEmpty!29643 (Option!13484) Bool)

(assert (=> d!1544917 (= (isDefined!10598 (getValueByKey!2611 (toList!7468 lt!1971401) key!5428)) (not (isEmpty!29643 (getValueByKey!2611 (toList!7468 lt!1971401) key!5428))))))

(declare-fun bs!1162999 () Bool)

(assert (= bs!1162999 d!1544917))

(assert (=> bs!1162999 m!5812580))

(declare-fun m!5812812 () Bool)

(assert (=> bs!1162999 m!5812812))

(assert (=> b!4823583 d!1544917))

(declare-fun d!1544919 () Bool)

(declare-fun c!821945 () Bool)

(assert (=> d!1544919 (= c!821945 (and ((_ is Cons!54954) (toList!7468 lt!1971401)) (= (_1!32379 (h!61388 (toList!7468 lt!1971401))) key!5428)))))

(declare-fun e!3013988 () Option!13484)

(assert (=> d!1544919 (= (getValueByKey!2611 (toList!7468 lt!1971401) key!5428) e!3013988)))

(declare-fun b!4823722 () Bool)

(declare-fun e!3013989 () Option!13484)

(assert (=> b!4823722 (= e!3013989 (getValueByKey!2611 (t!362574 (toList!7468 lt!1971401)) key!5428))))

(declare-fun b!4823720 () Bool)

(assert (=> b!4823720 (= e!3013988 (Some!13483 (_2!32379 (h!61388 (toList!7468 lt!1971401)))))))

(declare-fun b!4823721 () Bool)

(assert (=> b!4823721 (= e!3013988 e!3013989)))

(declare-fun c!821946 () Bool)

(assert (=> b!4823721 (= c!821946 (and ((_ is Cons!54954) (toList!7468 lt!1971401)) (not (= (_1!32379 (h!61388 (toList!7468 lt!1971401))) key!5428))))))

(declare-fun b!4823723 () Bool)

(assert (=> b!4823723 (= e!3013989 None!13483)))

(assert (= (and d!1544919 c!821945) b!4823720))

(assert (= (and d!1544919 (not c!821945)) b!4823721))

(assert (= (and b!4823721 c!821946) b!4823722))

(assert (= (and b!4823721 (not c!821946)) b!4823723))

(declare-fun m!5812814 () Bool)

(assert (=> b!4823722 m!5812814))

(assert (=> b!4823583 d!1544919))

(declare-fun d!1544921 () Bool)

(assert (=> d!1544921 (= (isDefined!10598 (getValueByKey!2611 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428)) (not (isEmpty!29643 (getValueByKey!2611 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428))))))

(declare-fun bs!1163000 () Bool)

(assert (= bs!1163000 d!1544921))

(assert (=> bs!1163000 m!5812780))

(declare-fun m!5812816 () Bool)

(assert (=> bs!1163000 m!5812816))

(assert (=> b!4823698 d!1544921))

(declare-fun c!821947 () Bool)

(declare-fun d!1544923 () Bool)

(assert (=> d!1544923 (= c!821947 (and ((_ is Cons!54954) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (= (_1!32379 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) key!5428)))))

(declare-fun e!3013990 () Option!13484)

(assert (=> d!1544923 (= (getValueByKey!2611 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428) e!3013990)))

(declare-fun b!4823726 () Bool)

(declare-fun e!3013991 () Option!13484)

(assert (=> b!4823726 (= e!3013991 (getValueByKey!2611 (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) key!5428))))

(declare-fun b!4823724 () Bool)

(assert (=> b!4823724 (= e!3013990 (Some!13483 (_2!32379 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))))))

(declare-fun b!4823725 () Bool)

(assert (=> b!4823725 (= e!3013990 e!3013991)))

(declare-fun c!821948 () Bool)

(assert (=> b!4823725 (= c!821948 (and ((_ is Cons!54954) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (not (= (_1!32379 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) key!5428))))))

(declare-fun b!4823727 () Bool)

(assert (=> b!4823727 (= e!3013991 None!13483)))

(assert (= (and d!1544923 c!821947) b!4823724))

(assert (= (and d!1544923 (not c!821947)) b!4823725))

(assert (= (and b!4823725 c!821948) b!4823726))

(assert (= (and b!4823725 (not c!821948)) b!4823727))

(declare-fun m!5812818 () Bool)

(assert (=> b!4823726 m!5812818))

(assert (=> b!4823698 d!1544923))

(declare-fun d!1544925 () Bool)

(declare-fun res!2053342 () Bool)

(declare-fun e!3013992 () Bool)

(assert (=> d!1544925 (=> res!2053342 e!3013992)))

(assert (=> d!1544925 (= res!2053342 ((_ is Nil!54955) (toList!7467 lt!1971402)))))

(assert (=> d!1544925 (= (forall!12590 (toList!7467 lt!1971402) lambda!236128) e!3013992)))

(declare-fun b!4823728 () Bool)

(declare-fun e!3013993 () Bool)

(assert (=> b!4823728 (= e!3013992 e!3013993)))

(declare-fun res!2053343 () Bool)

(assert (=> b!4823728 (=> (not res!2053343) (not e!3013993))))

(assert (=> b!4823728 (= res!2053343 (dynLambda!22206 lambda!236128 (h!61389 (toList!7467 lt!1971402))))))

(declare-fun b!4823729 () Bool)

(assert (=> b!4823729 (= e!3013993 (forall!12590 (t!362575 (toList!7467 lt!1971402)) lambda!236128))))

(assert (= (and d!1544925 (not res!2053342)) b!4823728))

(assert (= (and b!4823728 res!2053343) b!4823729))

(declare-fun b_lambda!189471 () Bool)

(assert (=> (not b_lambda!189471) (not b!4823728)))

(declare-fun m!5812820 () Bool)

(assert (=> b!4823728 m!5812820))

(declare-fun m!5812822 () Bool)

(assert (=> b!4823729 m!5812822))

(assert (=> d!1544845 d!1544925))

(assert (=> d!1544899 d!1544859))

(assert (=> d!1544899 d!1544855))

(declare-fun d!1544927 () Bool)

(assert (=> d!1544927 (not (containsKey!4353 (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280)))) key!5428))))

(assert (=> d!1544927 true))

(declare-fun _$39!421 () Unit!142711)

(assert (=> d!1544927 (= (choose!35070 lm!2280 key!5428 (_1!32380 (h!61389 (toList!7467 lm!2280))) hashF!1509) _$39!421)))

(declare-fun bs!1163001 () Bool)

(assert (= bs!1163001 d!1544927))

(assert (=> bs!1163001 m!5812518))

(assert (=> bs!1163001 m!5812518))

(assert (=> bs!1163001 m!5812524))

(assert (=> d!1544899 d!1544927))

(declare-fun d!1544929 () Bool)

(declare-fun res!2053344 () Bool)

(declare-fun e!3013994 () Bool)

(assert (=> d!1544929 (=> res!2053344 e!3013994)))

(assert (=> d!1544929 (= res!2053344 ((_ is Nil!54955) (toList!7467 lm!2280)))))

(assert (=> d!1544929 (= (forall!12590 (toList!7467 lm!2280) lambda!236205) e!3013994)))

(declare-fun b!4823730 () Bool)

(declare-fun e!3013995 () Bool)

(assert (=> b!4823730 (= e!3013994 e!3013995)))

(declare-fun res!2053345 () Bool)

(assert (=> b!4823730 (=> (not res!2053345) (not e!3013995))))

(assert (=> b!4823730 (= res!2053345 (dynLambda!22206 lambda!236205 (h!61389 (toList!7467 lm!2280))))))

(declare-fun b!4823731 () Bool)

(assert (=> b!4823731 (= e!3013995 (forall!12590 (t!362575 (toList!7467 lm!2280)) lambda!236205))))

(assert (= (and d!1544929 (not res!2053344)) b!4823730))

(assert (= (and b!4823730 res!2053345) b!4823731))

(declare-fun b_lambda!189473 () Bool)

(assert (=> (not b_lambda!189473) (not b!4823730)))

(declare-fun m!5812824 () Bool)

(assert (=> b!4823730 m!5812824))

(declare-fun m!5812826 () Bool)

(assert (=> b!4823731 m!5812826))

(assert (=> d!1544899 d!1544929))

(declare-fun d!1544931 () Bool)

(declare-fun lt!1971645 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9814 (List!55081) (InoxSet K!16639))

(assert (=> d!1544931 (= lt!1971645 (select (content!9814 e!3013894) key!5428))))

(declare-fun e!3014001 () Bool)

(assert (=> d!1544931 (= lt!1971645 e!3014001)))

(declare-fun res!2053350 () Bool)

(assert (=> d!1544931 (=> (not res!2053350) (not e!3014001))))

(assert (=> d!1544931 (= res!2053350 ((_ is Cons!54957) e!3013894))))

(assert (=> d!1544931 (= (contains!18759 e!3013894 key!5428) lt!1971645)))

(declare-fun b!4823736 () Bool)

(declare-fun e!3014000 () Bool)

(assert (=> b!4823736 (= e!3014001 e!3014000)))

(declare-fun res!2053351 () Bool)

(assert (=> b!4823736 (=> res!2053351 e!3014000)))

(assert (=> b!4823736 (= res!2053351 (= (h!61391 e!3013894) key!5428))))

(declare-fun b!4823737 () Bool)

(assert (=> b!4823737 (= e!3014000 (contains!18759 (t!362577 e!3013894) key!5428))))

(assert (= (and d!1544931 res!2053350) b!4823736))

(assert (= (and b!4823736 (not res!2053351)) b!4823737))

(declare-fun m!5812828 () Bool)

(assert (=> d!1544931 m!5812828))

(declare-fun m!5812830 () Bool)

(assert (=> d!1544931 m!5812830))

(declare-fun m!5812832 () Bool)

(assert (=> b!4823737 m!5812832))

(assert (=> bm!336241 d!1544931))

(declare-fun d!1544933 () Bool)

(declare-fun lt!1971646 () Bool)

(assert (=> d!1544933 (= lt!1971646 (select (content!9814 e!3013972) key!5428))))

(declare-fun e!3014003 () Bool)

(assert (=> d!1544933 (= lt!1971646 e!3014003)))

(declare-fun res!2053352 () Bool)

(assert (=> d!1544933 (=> (not res!2053352) (not e!3014003))))

(assert (=> d!1544933 (= res!2053352 ((_ is Cons!54957) e!3013972))))

(assert (=> d!1544933 (= (contains!18759 e!3013972 key!5428) lt!1971646)))

(declare-fun b!4823738 () Bool)

(declare-fun e!3014002 () Bool)

(assert (=> b!4823738 (= e!3014003 e!3014002)))

(declare-fun res!2053353 () Bool)

(assert (=> b!4823738 (=> res!2053353 e!3014002)))

(assert (=> b!4823738 (= res!2053353 (= (h!61391 e!3013972) key!5428))))

(declare-fun b!4823739 () Bool)

(assert (=> b!4823739 (= e!3014002 (contains!18759 (t!362577 e!3013972) key!5428))))

(assert (= (and d!1544933 res!2053352) b!4823738))

(assert (= (and b!4823738 (not res!2053353)) b!4823739))

(declare-fun m!5812834 () Bool)

(assert (=> d!1544933 m!5812834))

(declare-fun m!5812836 () Bool)

(assert (=> d!1544933 m!5812836))

(declare-fun m!5812838 () Bool)

(assert (=> b!4823739 m!5812838))

(assert (=> bm!336261 d!1544933))

(declare-fun d!1544935 () Bool)

(declare-fun res!2053354 () Bool)

(declare-fun e!3014004 () Bool)

(assert (=> d!1544935 (=> res!2053354 e!3014004)))

(assert (=> d!1544935 (= res!2053354 (and ((_ is Cons!54954) (t!362574 (apply!13347 lm!2280 lt!1971398))) (= (_1!32379 (h!61388 (t!362574 (apply!13347 lm!2280 lt!1971398)))) key!5428)))))

(assert (=> d!1544935 (= (containsKey!4353 (t!362574 (apply!13347 lm!2280 lt!1971398)) key!5428) e!3014004)))

(declare-fun b!4823740 () Bool)

(declare-fun e!3014005 () Bool)

(assert (=> b!4823740 (= e!3014004 e!3014005)))

(declare-fun res!2053355 () Bool)

(assert (=> b!4823740 (=> (not res!2053355) (not e!3014005))))

(assert (=> b!4823740 (= res!2053355 ((_ is Cons!54954) (t!362574 (apply!13347 lm!2280 lt!1971398))))))

(declare-fun b!4823741 () Bool)

(assert (=> b!4823741 (= e!3014005 (containsKey!4353 (t!362574 (t!362574 (apply!13347 lm!2280 lt!1971398))) key!5428))))

(assert (= (and d!1544935 (not res!2053354)) b!4823740))

(assert (= (and b!4823740 res!2053355) b!4823741))

(declare-fun m!5812840 () Bool)

(assert (=> b!4823741 m!5812840))

(assert (=> b!4823706 d!1544935))

(assert (=> b!4823689 d!1544847))

(declare-fun d!1544937 () Bool)

(assert (=> d!1544937 (= (get!18815 (getValueByKey!2612 (toList!7467 lm!2280) lt!1971398)) (v!49159 (getValueByKey!2612 (toList!7467 lm!2280) lt!1971398)))))

(assert (=> d!1544911 d!1544937))

(declare-fun b!4823752 () Bool)

(declare-fun e!3014011 () Option!13485)

(assert (=> b!4823752 (= e!3014011 (getValueByKey!2612 (t!362575 (toList!7467 lm!2280)) lt!1971398))))

(declare-fun b!4823750 () Bool)

(declare-fun e!3014010 () Option!13485)

(assert (=> b!4823750 (= e!3014010 (Some!13484 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))

(declare-fun d!1544939 () Bool)

(declare-fun c!821953 () Bool)

(assert (=> d!1544939 (= c!821953 (and ((_ is Cons!54955) (toList!7467 lm!2280)) (= (_1!32380 (h!61389 (toList!7467 lm!2280))) lt!1971398)))))

(assert (=> d!1544939 (= (getValueByKey!2612 (toList!7467 lm!2280) lt!1971398) e!3014010)))

(declare-fun b!4823753 () Bool)

(assert (=> b!4823753 (= e!3014011 None!13484)))

(declare-fun b!4823751 () Bool)

(assert (=> b!4823751 (= e!3014010 e!3014011)))

(declare-fun c!821954 () Bool)

(assert (=> b!4823751 (= c!821954 (and ((_ is Cons!54955) (toList!7467 lm!2280)) (not (= (_1!32380 (h!61389 (toList!7467 lm!2280))) lt!1971398))))))

(assert (= (and d!1544939 c!821953) b!4823750))

(assert (= (and d!1544939 (not c!821953)) b!4823751))

(assert (= (and b!4823751 c!821954) b!4823752))

(assert (= (and b!4823751 (not c!821954)) b!4823753))

(declare-fun m!5812842 () Bool)

(assert (=> b!4823752 m!5812842))

(assert (=> d!1544911 d!1544939))

(declare-fun d!1544941 () Bool)

(declare-fun choose!35072 (Hashable!7260 K!16639) (_ BitVec 64))

(assert (=> d!1544941 (= (hash!5379 hashF!1509 key!5428) (choose!35072 hashF!1509 key!5428))))

(declare-fun bs!1163002 () Bool)

(assert (= bs!1163002 d!1544941))

(declare-fun m!5812844 () Bool)

(assert (=> bs!1163002 m!5812844))

(assert (=> d!1544851 d!1544941))

(declare-fun d!1544943 () Bool)

(declare-fun res!2053360 () Bool)

(declare-fun e!3014016 () Bool)

(assert (=> d!1544943 (=> res!2053360 e!3014016)))

(assert (=> d!1544943 (= res!2053360 (or ((_ is Nil!54955) (toList!7467 lm!2280)) ((_ is Nil!54955) (t!362575 (toList!7467 lm!2280)))))))

(assert (=> d!1544943 (= (isStrictlySorted!979 (toList!7467 lm!2280)) e!3014016)))

(declare-fun b!4823758 () Bool)

(declare-fun e!3014017 () Bool)

(assert (=> b!4823758 (= e!3014016 e!3014017)))

(declare-fun res!2053361 () Bool)

(assert (=> b!4823758 (=> (not res!2053361) (not e!3014017))))

(assert (=> b!4823758 (= res!2053361 (bvslt (_1!32380 (h!61389 (toList!7467 lm!2280))) (_1!32380 (h!61389 (t!362575 (toList!7467 lm!2280))))))))

(declare-fun b!4823759 () Bool)

(assert (=> b!4823759 (= e!3014017 (isStrictlySorted!979 (t!362575 (toList!7467 lm!2280))))))

(assert (= (and d!1544943 (not res!2053360)) b!4823758))

(assert (= (and b!4823758 res!2053361) b!4823759))

(declare-fun m!5812846 () Bool)

(assert (=> b!4823759 m!5812846))

(assert (=> d!1544839 d!1544943))

(declare-fun d!1544945 () Bool)

(declare-fun noDuplicatedKeys!473 (List!55078) Bool)

(assert (=> d!1544945 (= (invariantList!1807 (toList!7468 lt!1971613)) (noDuplicatedKeys!473 (toList!7468 lt!1971613)))))

(declare-fun bs!1163003 () Bool)

(assert (= bs!1163003 d!1544945))

(declare-fun m!5812848 () Bool)

(assert (=> bs!1163003 m!5812848))

(assert (=> b!4823680 d!1544945))

(declare-fun bs!1163004 () Bool)

(declare-fun b!4823763 () Bool)

(assert (= bs!1163004 (and b!4823763 b!4823683)))

(declare-fun lambda!236209 () Int)

(assert (=> bs!1163004 (= (= (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))) lt!1971401) (= lambda!236209 lambda!236199))))

(declare-fun bs!1163005 () Bool)

(assert (= bs!1163005 (and b!4823763 b!4823681)))

(assert (=> bs!1163005 (= (= (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))) lt!1971401) (= lambda!236209 lambda!236200))))

(assert (=> bs!1163005 (= (= (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))) lt!1971616) (= lambda!236209 lambda!236201))))

(declare-fun bs!1163006 () Bool)

(assert (= bs!1163006 (and b!4823763 d!1544863)))

(assert (=> bs!1163006 (= (= (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))) lt!1971613) (= lambda!236209 lambda!236202))))

(assert (=> b!4823763 true))

(declare-fun bs!1163007 () Bool)

(declare-fun b!4823761 () Bool)

(assert (= bs!1163007 (and b!4823761 b!4823763)))

(declare-fun lambda!236210 () Int)

(assert (=> bs!1163007 (= lambda!236210 lambda!236209)))

(declare-fun bs!1163008 () Bool)

(assert (= bs!1163008 (and b!4823761 b!4823683)))

(assert (=> bs!1163008 (= (= (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))) lt!1971401) (= lambda!236210 lambda!236199))))

(declare-fun bs!1163009 () Bool)

(assert (= bs!1163009 (and b!4823761 b!4823681)))

(assert (=> bs!1163009 (= (= (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))) lt!1971616) (= lambda!236210 lambda!236201))))

(declare-fun bs!1163010 () Bool)

(assert (= bs!1163010 (and b!4823761 d!1544863)))

(assert (=> bs!1163010 (= (= (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))) lt!1971613) (= lambda!236210 lambda!236202))))

(assert (=> bs!1163009 (= (= (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))) lt!1971401) (= lambda!236210 lambda!236200))))

(assert (=> b!4823761 true))

(declare-fun lt!1971658 () ListMap!6845)

(declare-fun lambda!236211 () Int)

(assert (=> bs!1163007 (= (= lt!1971658 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236211 lambda!236209))))

(assert (=> bs!1163008 (= (= lt!1971658 lt!1971401) (= lambda!236211 lambda!236199))))

(assert (=> bs!1163009 (= (= lt!1971658 lt!1971616) (= lambda!236211 lambda!236201))))

(assert (=> bs!1163010 (= (= lt!1971658 lt!1971613) (= lambda!236211 lambda!236202))))

(assert (=> b!4823761 (= (= lt!1971658 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236211 lambda!236210))))

(assert (=> bs!1163009 (= (= lt!1971658 lt!1971401) (= lambda!236211 lambda!236200))))

(assert (=> b!4823761 true))

(declare-fun bs!1163011 () Bool)

(declare-fun d!1544947 () Bool)

(assert (= bs!1163011 (and d!1544947 b!4823763)))

(declare-fun lambda!236212 () Int)

(declare-fun lt!1971655 () ListMap!6845)

(assert (=> bs!1163011 (= (= lt!1971655 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236212 lambda!236209))))

(declare-fun bs!1163012 () Bool)

(assert (= bs!1163012 (and d!1544947 b!4823683)))

(assert (=> bs!1163012 (= (= lt!1971655 lt!1971401) (= lambda!236212 lambda!236199))))

(declare-fun bs!1163013 () Bool)

(assert (= bs!1163013 (and d!1544947 b!4823681)))

(assert (=> bs!1163013 (= (= lt!1971655 lt!1971616) (= lambda!236212 lambda!236201))))

(declare-fun bs!1163014 () Bool)

(assert (= bs!1163014 (and d!1544947 d!1544863)))

(assert (=> bs!1163014 (= (= lt!1971655 lt!1971613) (= lambda!236212 lambda!236202))))

(declare-fun bs!1163015 () Bool)

(assert (= bs!1163015 (and d!1544947 b!4823761)))

(assert (=> bs!1163015 (= (= lt!1971655 lt!1971658) (= lambda!236212 lambda!236211))))

(assert (=> bs!1163015 (= (= lt!1971655 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236212 lambda!236210))))

(assert (=> bs!1163013 (= (= lt!1971655 lt!1971401) (= lambda!236212 lambda!236200))))

(assert (=> d!1544947 true))

(declare-fun bm!336262 () Bool)

(declare-fun c!821955 () Bool)

(declare-fun call!336268 () Bool)

(assert (=> bm!336262 (= call!336268 (forall!12592 (toList!7468 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (ite c!821955 lambda!236209 lambda!236210)))))

(declare-fun b!4823760 () Bool)

(declare-fun e!3014020 () Bool)

(assert (=> b!4823760 (= e!3014020 (invariantList!1807 (toList!7468 lt!1971655)))))

(declare-fun bm!336263 () Bool)

(declare-fun call!336269 () Unit!142711)

(assert (=> bm!336263 (= call!336269 (lemmaContainsAllItsOwnKeys!986 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))))))

(declare-fun e!3014019 () ListMap!6845)

(assert (=> b!4823761 (= e!3014019 lt!1971658)))

(declare-fun lt!1971650 () ListMap!6845)

(assert (=> b!4823761 (= lt!1971650 (+!2531 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))) (h!61388 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280)))))))))

(assert (=> b!4823761 (= lt!1971658 (addToMapMapFromBucket!1792 (t!362574 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280))))) (+!2531 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))) (h!61388 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280))))))))))

(declare-fun lt!1971648 () Unit!142711)

(assert (=> b!4823761 (= lt!1971648 call!336269)))

(assert (=> b!4823761 call!336268))

(declare-fun lt!1971661 () Unit!142711)

(assert (=> b!4823761 (= lt!1971661 lt!1971648)))

(assert (=> b!4823761 (forall!12592 (toList!7468 lt!1971650) lambda!236211)))

(declare-fun lt!1971660 () Unit!142711)

(declare-fun Unit!142747 () Unit!142711)

(assert (=> b!4823761 (= lt!1971660 Unit!142747)))

(assert (=> b!4823761 (forall!12592 (t!362574 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280))))) lambda!236211)))

(declare-fun lt!1971665 () Unit!142711)

(declare-fun Unit!142748 () Unit!142711)

(assert (=> b!4823761 (= lt!1971665 Unit!142748)))

(declare-fun lt!1971652 () Unit!142711)

(declare-fun Unit!142749 () Unit!142711)

(assert (=> b!4823761 (= lt!1971652 Unit!142749)))

(declare-fun lt!1971667 () Unit!142711)

(assert (=> b!4823761 (= lt!1971667 (forallContained!4374 (toList!7468 lt!1971650) lambda!236211 (h!61388 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280)))))))))

(assert (=> b!4823761 (contains!18756 lt!1971650 (_1!32379 (h!61388 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280)))))))))

(declare-fun lt!1971656 () Unit!142711)

(declare-fun Unit!142750 () Unit!142711)

(assert (=> b!4823761 (= lt!1971656 Unit!142750)))

(assert (=> b!4823761 (contains!18756 lt!1971658 (_1!32379 (h!61388 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280)))))))))

(declare-fun lt!1971666 () Unit!142711)

(declare-fun Unit!142751 () Unit!142711)

(assert (=> b!4823761 (= lt!1971666 Unit!142751)))

(assert (=> b!4823761 (forall!12592 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280)))) lambda!236211)))

(declare-fun lt!1971659 () Unit!142711)

(declare-fun Unit!142752 () Unit!142711)

(assert (=> b!4823761 (= lt!1971659 Unit!142752)))

(declare-fun call!336267 () Bool)

(assert (=> b!4823761 call!336267))

(declare-fun lt!1971664 () Unit!142711)

(declare-fun Unit!142753 () Unit!142711)

(assert (=> b!4823761 (= lt!1971664 Unit!142753)))

(declare-fun lt!1971663 () Unit!142711)

(declare-fun Unit!142754 () Unit!142711)

(assert (=> b!4823761 (= lt!1971663 Unit!142754)))

(declare-fun lt!1971662 () Unit!142711)

(assert (=> b!4823761 (= lt!1971662 (addForallContainsKeyThenBeforeAdding!985 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))) lt!1971658 (_1!32379 (h!61388 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280)))))) (_2!32379 (h!61388 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280))))))))))

(assert (=> b!4823761 (forall!12592 (toList!7468 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) lambda!236211)))

(declare-fun lt!1971649 () Unit!142711)

(assert (=> b!4823761 (= lt!1971649 lt!1971662)))

(assert (=> b!4823761 (forall!12592 (toList!7468 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) lambda!236211)))

(declare-fun lt!1971653 () Unit!142711)

(declare-fun Unit!142755 () Unit!142711)

(assert (=> b!4823761 (= lt!1971653 Unit!142755)))

(declare-fun res!2053363 () Bool)

(assert (=> b!4823761 (= res!2053363 (forall!12592 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280)))) lambda!236211))))

(declare-fun e!3014018 () Bool)

(assert (=> b!4823761 (=> (not res!2053363) (not e!3014018))))

(assert (=> b!4823761 e!3014018))

(declare-fun lt!1971654 () Unit!142711)

(declare-fun Unit!142756 () Unit!142711)

(assert (=> b!4823761 (= lt!1971654 Unit!142756)))

(declare-fun b!4823762 () Bool)

(declare-fun res!2053364 () Bool)

(assert (=> b!4823762 (=> (not res!2053364) (not e!3014020))))

(assert (=> b!4823762 (= res!2053364 (forall!12592 (toList!7468 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) lambda!236212))))

(assert (=> b!4823763 (= e!3014019 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))))))

(declare-fun lt!1971657 () Unit!142711)

(assert (=> b!4823763 (= lt!1971657 call!336269)))

(assert (=> b!4823763 call!336268))

(declare-fun lt!1971651 () Unit!142711)

(assert (=> b!4823763 (= lt!1971651 lt!1971657)))

(assert (=> b!4823763 call!336267))

(declare-fun lt!1971647 () Unit!142711)

(declare-fun Unit!142757 () Unit!142711)

(assert (=> b!4823763 (= lt!1971647 Unit!142757)))

(declare-fun b!4823764 () Bool)

(assert (=> b!4823764 (= e!3014018 (forall!12592 (toList!7468 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) lambda!236211))))

(assert (=> d!1544947 e!3014020))

(declare-fun res!2053362 () Bool)

(assert (=> d!1544947 (=> (not res!2053362) (not e!3014020))))

(assert (=> d!1544947 (= res!2053362 (forall!12592 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280)))) lambda!236212))))

(assert (=> d!1544947 (= lt!1971655 e!3014019)))

(assert (=> d!1544947 (= c!821955 ((_ is Nil!54954) (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280))))))))

(assert (=> d!1544947 (noDuplicateKeys!2446 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280)))))))

(assert (=> d!1544947 (= (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280)))) (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) lt!1971655)))

(declare-fun bm!336264 () Bool)

(assert (=> bm!336264 (= call!336267 (forall!12592 (ite c!821955 (toList!7468 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (toList!7468 lt!1971650)) (ite c!821955 lambda!236209 lambda!236211)))))

(assert (= (and d!1544947 c!821955) b!4823763))

(assert (= (and d!1544947 (not c!821955)) b!4823761))

(assert (= (and b!4823761 res!2053363) b!4823764))

(assert (= (or b!4823763 b!4823761) bm!336262))

(assert (= (or b!4823763 b!4823761) bm!336264))

(assert (= (or b!4823763 b!4823761) bm!336263))

(assert (= (and d!1544947 res!2053362) b!4823762))

(assert (= (and b!4823762 res!2053364) b!4823760))

(declare-fun m!5812850 () Bool)

(assert (=> b!4823761 m!5812850))

(declare-fun m!5812852 () Bool)

(assert (=> b!4823761 m!5812852))

(declare-fun m!5812854 () Bool)

(assert (=> b!4823761 m!5812854))

(declare-fun m!5812856 () Bool)

(assert (=> b!4823761 m!5812856))

(declare-fun m!5812858 () Bool)

(assert (=> b!4823761 m!5812858))

(declare-fun m!5812860 () Bool)

(assert (=> b!4823761 m!5812860))

(assert (=> b!4823761 m!5812850))

(declare-fun m!5812862 () Bool)

(assert (=> b!4823761 m!5812862))

(declare-fun m!5812864 () Bool)

(assert (=> b!4823761 m!5812864))

(assert (=> b!4823761 m!5812800))

(assert (=> b!4823761 m!5812852))

(declare-fun m!5812866 () Bool)

(assert (=> b!4823761 m!5812866))

(assert (=> b!4823761 m!5812800))

(declare-fun m!5812868 () Bool)

(assert (=> b!4823761 m!5812868))

(assert (=> b!4823761 m!5812860))

(assert (=> bm!336263 m!5812800))

(declare-fun m!5812870 () Bool)

(assert (=> bm!336263 m!5812870))

(declare-fun m!5812872 () Bool)

(assert (=> d!1544947 m!5812872))

(declare-fun m!5812874 () Bool)

(assert (=> d!1544947 m!5812874))

(assert (=> b!4823764 m!5812860))

(declare-fun m!5812876 () Bool)

(assert (=> bm!336264 m!5812876))

(declare-fun m!5812878 () Bool)

(assert (=> b!4823762 m!5812878))

(declare-fun m!5812880 () Bool)

(assert (=> bm!336262 m!5812880))

(declare-fun m!5812882 () Bool)

(assert (=> b!4823760 m!5812882))

(assert (=> b!4823703 d!1544947))

(declare-fun bs!1163016 () Bool)

(declare-fun d!1544949 () Bool)

(assert (= bs!1163016 (and d!1544949 d!1544845)))

(declare-fun lambda!236213 () Int)

(assert (=> bs!1163016 (not (= lambda!236213 lambda!236128))))

(declare-fun bs!1163017 () Bool)

(assert (= bs!1163017 (and d!1544949 start!500192)))

(assert (=> bs!1163017 (= lambda!236213 lambda!236124)))

(declare-fun bs!1163018 () Bool)

(assert (= bs!1163018 (and d!1544949 d!1544833)))

(assert (=> bs!1163018 (not (= lambda!236213 lambda!236127))))

(declare-fun bs!1163019 () Bool)

(assert (= bs!1163019 (and d!1544949 d!1544905)))

(assert (=> bs!1163019 (= lambda!236213 lambda!236208)))

(declare-fun bs!1163020 () Bool)

(assert (= bs!1163020 (and d!1544949 d!1544899)))

(assert (=> bs!1163020 (= lambda!236213 lambda!236205)))

(declare-fun lt!1971668 () ListMap!6845)

(assert (=> d!1544949 (invariantList!1807 (toList!7468 lt!1971668))))

(declare-fun e!3014021 () ListMap!6845)

(assert (=> d!1544949 (= lt!1971668 e!3014021)))

(declare-fun c!821956 () Bool)

(assert (=> d!1544949 (= c!821956 ((_ is Cons!54955) (t!362575 (t!362575 (toList!7467 lm!2280)))))))

(assert (=> d!1544949 (forall!12590 (t!362575 (t!362575 (toList!7467 lm!2280))) lambda!236213)))

(assert (=> d!1544949 (= (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280)))) lt!1971668)))

(declare-fun b!4823765 () Bool)

(assert (=> b!4823765 (= e!3014021 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (t!362575 (t!362575 (toList!7467 lm!2280))))) (extractMap!2674 (t!362575 (t!362575 (t!362575 (toList!7467 lm!2280)))))))))

(declare-fun b!4823766 () Bool)

(assert (=> b!4823766 (= e!3014021 (ListMap!6846 Nil!54954))))

(assert (= (and d!1544949 c!821956) b!4823765))

(assert (= (and d!1544949 (not c!821956)) b!4823766))

(declare-fun m!5812884 () Bool)

(assert (=> d!1544949 m!5812884))

(declare-fun m!5812886 () Bool)

(assert (=> d!1544949 m!5812886))

(declare-fun m!5812888 () Bool)

(assert (=> b!4823765 m!5812888))

(assert (=> b!4823765 m!5812888))

(declare-fun m!5812890 () Bool)

(assert (=> b!4823765 m!5812890))

(assert (=> b!4823703 d!1544949))

(declare-fun d!1544953 () Bool)

(declare-fun res!2053369 () Bool)

(declare-fun e!3014026 () Bool)

(assert (=> d!1544953 (=> res!2053369 e!3014026)))

(assert (=> d!1544953 (= res!2053369 ((_ is Nil!54954) (toList!7468 lt!1971401)))))

(assert (=> d!1544953 (= (forall!12592 (toList!7468 lt!1971401) lambda!236201) e!3014026)))

(declare-fun b!4823771 () Bool)

(declare-fun e!3014027 () Bool)

(assert (=> b!4823771 (= e!3014026 e!3014027)))

(declare-fun res!2053370 () Bool)

(assert (=> b!4823771 (=> (not res!2053370) (not e!3014027))))

(declare-fun dynLambda!22207 (Int tuple2!58170) Bool)

(assert (=> b!4823771 (= res!2053370 (dynLambda!22207 lambda!236201 (h!61388 (toList!7468 lt!1971401))))))

(declare-fun b!4823772 () Bool)

(assert (=> b!4823772 (= e!3014027 (forall!12592 (t!362574 (toList!7468 lt!1971401)) lambda!236201))))

(assert (= (and d!1544953 (not res!2053369)) b!4823771))

(assert (= (and b!4823771 res!2053370) b!4823772))

(declare-fun b_lambda!189475 () Bool)

(assert (=> (not b_lambda!189475) (not b!4823771)))

(declare-fun m!5812892 () Bool)

(assert (=> b!4823771 m!5812892))

(declare-fun m!5812894 () Bool)

(assert (=> b!4823772 m!5812894))

(assert (=> b!4823681 d!1544953))

(declare-fun bs!1163021 () Bool)

(declare-fun b!4823776 () Bool)

(assert (= bs!1163021 (and b!4823776 b!4823763)))

(declare-fun lambda!236214 () Int)

(assert (=> bs!1163021 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236214 lambda!236209))))

(declare-fun bs!1163022 () Bool)

(assert (= bs!1163022 (and b!4823776 b!4823683)))

(assert (=> bs!1163022 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971401) (= lambda!236214 lambda!236199))))

(declare-fun bs!1163023 () Bool)

(assert (= bs!1163023 (and b!4823776 b!4823681)))

(assert (=> bs!1163023 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971616) (= lambda!236214 lambda!236201))))

(declare-fun bs!1163024 () Bool)

(assert (= bs!1163024 (and b!4823776 d!1544863)))

(assert (=> bs!1163024 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971613) (= lambda!236214 lambda!236202))))

(declare-fun bs!1163025 () Bool)

(assert (= bs!1163025 (and b!4823776 b!4823761)))

(assert (=> bs!1163025 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236214 lambda!236210))))

(assert (=> bs!1163023 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971401) (= lambda!236214 lambda!236200))))

(assert (=> bs!1163025 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971658) (= lambda!236214 lambda!236211))))

(declare-fun bs!1163026 () Bool)

(assert (= bs!1163026 (and b!4823776 d!1544947)))

(assert (=> bs!1163026 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971655) (= lambda!236214 lambda!236212))))

(assert (=> b!4823776 true))

(declare-fun bs!1163027 () Bool)

(declare-fun b!4823774 () Bool)

(assert (= bs!1163027 (and b!4823774 b!4823763)))

(declare-fun lambda!236215 () Int)

(assert (=> bs!1163027 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236215 lambda!236209))))

(declare-fun bs!1163028 () Bool)

(assert (= bs!1163028 (and b!4823774 b!4823683)))

(assert (=> bs!1163028 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971401) (= lambda!236215 lambda!236199))))

(declare-fun bs!1163029 () Bool)

(assert (= bs!1163029 (and b!4823774 b!4823681)))

(assert (=> bs!1163029 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971616) (= lambda!236215 lambda!236201))))

(declare-fun bs!1163030 () Bool)

(assert (= bs!1163030 (and b!4823774 d!1544863)))

(assert (=> bs!1163030 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971613) (= lambda!236215 lambda!236202))))

(declare-fun bs!1163031 () Bool)

(assert (= bs!1163031 (and b!4823774 b!4823776)))

(assert (=> bs!1163031 (= lambda!236215 lambda!236214)))

(declare-fun bs!1163032 () Bool)

(assert (= bs!1163032 (and b!4823774 b!4823761)))

(assert (=> bs!1163032 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236215 lambda!236210))))

(assert (=> bs!1163029 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971401) (= lambda!236215 lambda!236200))))

(assert (=> bs!1163032 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971658) (= lambda!236215 lambda!236211))))

(declare-fun bs!1163033 () Bool)

(assert (= bs!1163033 (and b!4823774 d!1544947)))

(assert (=> bs!1163033 (= (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971655) (= lambda!236215 lambda!236212))))

(assert (=> b!4823774 true))

(declare-fun lambda!236218 () Int)

(declare-fun lt!1971680 () ListMap!6845)

(assert (=> bs!1163027 (= (= lt!1971680 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236218 lambda!236209))))

(assert (=> bs!1163028 (= (= lt!1971680 lt!1971401) (= lambda!236218 lambda!236199))))

(assert (=> bs!1163029 (= (= lt!1971680 lt!1971616) (= lambda!236218 lambda!236201))))

(assert (=> bs!1163030 (= (= lt!1971680 lt!1971613) (= lambda!236218 lambda!236202))))

(assert (=> bs!1163031 (= (= lt!1971680 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (= lambda!236218 lambda!236214))))

(assert (=> bs!1163032 (= (= lt!1971680 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236218 lambda!236210))))

(assert (=> b!4823774 (= (= lt!1971680 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (= lambda!236218 lambda!236215))))

(assert (=> bs!1163029 (= (= lt!1971680 lt!1971401) (= lambda!236218 lambda!236200))))

(assert (=> bs!1163032 (= (= lt!1971680 lt!1971658) (= lambda!236218 lambda!236211))))

(assert (=> bs!1163033 (= (= lt!1971680 lt!1971655) (= lambda!236218 lambda!236212))))

(assert (=> b!4823774 true))

(declare-fun bs!1163034 () Bool)

(declare-fun d!1544955 () Bool)

(assert (= bs!1163034 (and d!1544955 b!4823763)))

(declare-fun lt!1971677 () ListMap!6845)

(declare-fun lambda!236221 () Int)

(assert (=> bs!1163034 (= (= lt!1971677 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236221 lambda!236209))))

(declare-fun bs!1163035 () Bool)

(assert (= bs!1163035 (and d!1544955 b!4823683)))

(assert (=> bs!1163035 (= (= lt!1971677 lt!1971401) (= lambda!236221 lambda!236199))))

(declare-fun bs!1163036 () Bool)

(assert (= bs!1163036 (and d!1544955 b!4823681)))

(assert (=> bs!1163036 (= (= lt!1971677 lt!1971616) (= lambda!236221 lambda!236201))))

(declare-fun bs!1163037 () Bool)

(assert (= bs!1163037 (and d!1544955 d!1544863)))

(assert (=> bs!1163037 (= (= lt!1971677 lt!1971613) (= lambda!236221 lambda!236202))))

(declare-fun bs!1163038 () Bool)

(assert (= bs!1163038 (and d!1544955 b!4823776)))

(assert (=> bs!1163038 (= (= lt!1971677 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (= lambda!236221 lambda!236214))))

(declare-fun bs!1163039 () Bool)

(assert (= bs!1163039 (and d!1544955 b!4823774)))

(assert (=> bs!1163039 (= (= lt!1971677 lt!1971680) (= lambda!236221 lambda!236218))))

(declare-fun bs!1163040 () Bool)

(assert (= bs!1163040 (and d!1544955 b!4823761)))

(assert (=> bs!1163040 (= (= lt!1971677 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236221 lambda!236210))))

(assert (=> bs!1163039 (= (= lt!1971677 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (= lambda!236221 lambda!236215))))

(assert (=> bs!1163036 (= (= lt!1971677 lt!1971401) (= lambda!236221 lambda!236200))))

(assert (=> bs!1163040 (= (= lt!1971677 lt!1971658) (= lambda!236221 lambda!236211))))

(declare-fun bs!1163041 () Bool)

(assert (= bs!1163041 (and d!1544955 d!1544947)))

(assert (=> bs!1163041 (= (= lt!1971677 lt!1971655) (= lambda!236221 lambda!236212))))

(assert (=> d!1544955 true))

(declare-fun c!821957 () Bool)

(declare-fun bm!336265 () Bool)

(declare-fun call!336271 () Bool)

(assert (=> bm!336265 (= call!336271 (forall!12592 (toList!7468 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (ite c!821957 lambda!236214 lambda!236215)))))

(declare-fun b!4823773 () Bool)

(declare-fun e!3014030 () Bool)

(assert (=> b!4823773 (= e!3014030 (invariantList!1807 (toList!7468 lt!1971677)))))

(declare-fun bm!336266 () Bool)

(declare-fun call!336272 () Unit!142711)

(assert (=> bm!336266 (= call!336272 (lemmaContainsAllItsOwnKeys!986 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun e!3014029 () ListMap!6845)

(assert (=> b!4823774 (= e!3014029 lt!1971680)))

(declare-fun lt!1971672 () ListMap!6845)

(assert (=> b!4823774 (= lt!1971672 (+!2531 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (h!61388 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(assert (=> b!4823774 (= lt!1971680 (addToMapMapFromBucket!1792 (t!362574 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (+!2531 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (h!61388 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))))

(declare-fun lt!1971670 () Unit!142711)

(assert (=> b!4823774 (= lt!1971670 call!336272)))

(assert (=> b!4823774 call!336271))

(declare-fun lt!1971683 () Unit!142711)

(assert (=> b!4823774 (= lt!1971683 lt!1971670)))

(assert (=> b!4823774 (forall!12592 (toList!7468 lt!1971672) lambda!236218)))

(declare-fun lt!1971682 () Unit!142711)

(declare-fun Unit!142760 () Unit!142711)

(assert (=> b!4823774 (= lt!1971682 Unit!142760)))

(assert (=> b!4823774 (forall!12592 (t!362574 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lambda!236218)))

(declare-fun lt!1971687 () Unit!142711)

(declare-fun Unit!142761 () Unit!142711)

(assert (=> b!4823774 (= lt!1971687 Unit!142761)))

(declare-fun lt!1971674 () Unit!142711)

(declare-fun Unit!142762 () Unit!142711)

(assert (=> b!4823774 (= lt!1971674 Unit!142762)))

(declare-fun lt!1971689 () Unit!142711)

(assert (=> b!4823774 (= lt!1971689 (forallContained!4374 (toList!7468 lt!1971672) lambda!236218 (h!61388 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(assert (=> b!4823774 (contains!18756 lt!1971672 (_1!32379 (h!61388 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun lt!1971678 () Unit!142711)

(declare-fun Unit!142763 () Unit!142711)

(assert (=> b!4823774 (= lt!1971678 Unit!142763)))

(assert (=> b!4823774 (contains!18756 lt!1971680 (_1!32379 (h!61388 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun lt!1971688 () Unit!142711)

(declare-fun Unit!142764 () Unit!142711)

(assert (=> b!4823774 (= lt!1971688 Unit!142764)))

(assert (=> b!4823774 (forall!12592 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))) lambda!236218)))

(declare-fun lt!1971681 () Unit!142711)

(declare-fun Unit!142765 () Unit!142711)

(assert (=> b!4823774 (= lt!1971681 Unit!142765)))

(declare-fun call!336270 () Bool)

(assert (=> b!4823774 call!336270))

(declare-fun lt!1971686 () Unit!142711)

(declare-fun Unit!142766 () Unit!142711)

(assert (=> b!4823774 (= lt!1971686 Unit!142766)))

(declare-fun lt!1971685 () Unit!142711)

(declare-fun Unit!142767 () Unit!142711)

(assert (=> b!4823774 (= lt!1971685 Unit!142767)))

(declare-fun lt!1971684 () Unit!142711)

(assert (=> b!4823774 (= lt!1971684 (addForallContainsKeyThenBeforeAdding!985 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971680 (_1!32379 (h!61388 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (_2!32379 (h!61388 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))))

(assert (=> b!4823774 (forall!12592 (toList!7468 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) lambda!236218)))

(declare-fun lt!1971671 () Unit!142711)

(assert (=> b!4823774 (= lt!1971671 lt!1971684)))

(assert (=> b!4823774 (forall!12592 (toList!7468 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) lambda!236218)))

(declare-fun lt!1971675 () Unit!142711)

(declare-fun Unit!142768 () Unit!142711)

(assert (=> b!4823774 (= lt!1971675 Unit!142768)))

(declare-fun res!2053372 () Bool)

(assert (=> b!4823774 (= res!2053372 (forall!12592 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))) lambda!236218))))

(declare-fun e!3014028 () Bool)

(assert (=> b!4823774 (=> (not res!2053372) (not e!3014028))))

(assert (=> b!4823774 e!3014028))

(declare-fun lt!1971676 () Unit!142711)

(declare-fun Unit!142769 () Unit!142711)

(assert (=> b!4823774 (= lt!1971676 Unit!142769)))

(declare-fun b!4823775 () Bool)

(declare-fun res!2053373 () Bool)

(assert (=> b!4823775 (=> (not res!2053373) (not e!3014030))))

(assert (=> b!4823775 (= res!2053373 (forall!12592 (toList!7468 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) lambda!236221))))

(assert (=> b!4823776 (= e!3014029 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(declare-fun lt!1971679 () Unit!142711)

(assert (=> b!4823776 (= lt!1971679 call!336272)))

(assert (=> b!4823776 call!336271))

(declare-fun lt!1971673 () Unit!142711)

(assert (=> b!4823776 (= lt!1971673 lt!1971679)))

(assert (=> b!4823776 call!336270))

(declare-fun lt!1971669 () Unit!142711)

(declare-fun Unit!142770 () Unit!142711)

(assert (=> b!4823776 (= lt!1971669 Unit!142770)))

(declare-fun b!4823777 () Bool)

(assert (=> b!4823777 (= e!3014028 (forall!12592 (toList!7468 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) lambda!236218))))

(assert (=> d!1544955 e!3014030))

(declare-fun res!2053371 () Bool)

(assert (=> d!1544955 (=> (not res!2053371) (not e!3014030))))

(assert (=> d!1544955 (= res!2053371 (forall!12592 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))) lambda!236221))))

(assert (=> d!1544955 (= lt!1971677 e!3014029)))

(assert (=> d!1544955 (= c!821957 ((_ is Nil!54954) (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(assert (=> d!1544955 (noDuplicateKeys!2446 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))

(assert (=> d!1544955 (= (addToMapMapFromBucket!1792 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))) (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) lt!1971677)))

(declare-fun bm!336267 () Bool)

(assert (=> bm!336267 (= call!336270 (forall!12592 (ite c!821957 (toList!7468 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (toList!7468 lt!1971672)) (ite c!821957 lambda!236214 lambda!236218)))))

(assert (= (and d!1544955 c!821957) b!4823776))

(assert (= (and d!1544955 (not c!821957)) b!4823774))

(assert (= (and b!4823774 res!2053372) b!4823777))

(assert (= (or b!4823776 b!4823774) bm!336265))

(assert (= (or b!4823776 b!4823774) bm!336267))

(assert (= (or b!4823776 b!4823774) bm!336266))

(assert (= (and d!1544955 res!2053371) b!4823775))

(assert (= (and b!4823775 res!2053373) b!4823773))

(declare-fun m!5812910 () Bool)

(assert (=> b!4823774 m!5812910))

(declare-fun m!5812914 () Bool)

(assert (=> b!4823774 m!5812914))

(declare-fun m!5812916 () Bool)

(assert (=> b!4823774 m!5812916))

(declare-fun m!5812918 () Bool)

(assert (=> b!4823774 m!5812918))

(declare-fun m!5812920 () Bool)

(assert (=> b!4823774 m!5812920))

(declare-fun m!5812922 () Bool)

(assert (=> b!4823774 m!5812922))

(assert (=> b!4823774 m!5812910))

(declare-fun m!5812924 () Bool)

(assert (=> b!4823774 m!5812924))

(declare-fun m!5812926 () Bool)

(assert (=> b!4823774 m!5812926))

(assert (=> b!4823774 m!5812738))

(assert (=> b!4823774 m!5812914))

(declare-fun m!5812928 () Bool)

(assert (=> b!4823774 m!5812928))

(assert (=> b!4823774 m!5812738))

(declare-fun m!5812930 () Bool)

(assert (=> b!4823774 m!5812930))

(assert (=> b!4823774 m!5812922))

(assert (=> bm!336266 m!5812738))

(declare-fun m!5812932 () Bool)

(assert (=> bm!336266 m!5812932))

(declare-fun m!5812934 () Bool)

(assert (=> d!1544955 m!5812934))

(declare-fun m!5812936 () Bool)

(assert (=> d!1544955 m!5812936))

(assert (=> b!4823777 m!5812922))

(declare-fun m!5812938 () Bool)

(assert (=> bm!336267 m!5812938))

(declare-fun m!5812940 () Bool)

(assert (=> b!4823775 m!5812940))

(declare-fun m!5812942 () Bool)

(assert (=> bm!336265 m!5812942))

(declare-fun m!5812944 () Bool)

(assert (=> b!4823773 m!5812944))

(assert (=> b!4823681 d!1544955))

(declare-fun d!1544961 () Bool)

(declare-fun res!2053383 () Bool)

(declare-fun e!3014034 () Bool)

(assert (=> d!1544961 (=> res!2053383 e!3014034)))

(assert (=> d!1544961 (= res!2053383 ((_ is Nil!54954) (_2!32380 (h!61389 (toList!7467 lm!2280)))))))

(assert (=> d!1544961 (= (forall!12592 (_2!32380 (h!61389 (toList!7467 lm!2280))) lambda!236201) e!3014034)))

(declare-fun b!4823789 () Bool)

(declare-fun e!3014035 () Bool)

(assert (=> b!4823789 (= e!3014034 e!3014035)))

(declare-fun res!2053384 () Bool)

(assert (=> b!4823789 (=> (not res!2053384) (not e!3014035))))

(assert (=> b!4823789 (= res!2053384 (dynLambda!22207 lambda!236201 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(declare-fun b!4823790 () Bool)

(assert (=> b!4823790 (= e!3014035 (forall!12592 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))) lambda!236201))))

(assert (= (and d!1544961 (not res!2053383)) b!4823789))

(assert (= (and b!4823789 res!2053384) b!4823790))

(declare-fun b_lambda!189477 () Bool)

(assert (=> (not b_lambda!189477) (not b!4823789)))

(declare-fun m!5812946 () Bool)

(assert (=> b!4823789 m!5812946))

(assert (=> b!4823790 m!5812752))

(assert (=> b!4823681 d!1544961))

(declare-fun d!1544963 () Bool)

(assert (=> d!1544963 (dynLambda!22207 lambda!236201 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))

(declare-fun lt!1971695 () Unit!142711)

(declare-fun choose!35077 (List!55078 Int tuple2!58170) Unit!142711)

(assert (=> d!1544963 (= lt!1971695 (choose!35077 (toList!7468 lt!1971608) lambda!236201 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(declare-fun e!3014046 () Bool)

(assert (=> d!1544963 e!3014046))

(declare-fun res!2053387 () Bool)

(assert (=> d!1544963 (=> (not res!2053387) (not e!3014046))))

(assert (=> d!1544963 (= res!2053387 (forall!12592 (toList!7468 lt!1971608) lambda!236201))))

(assert (=> d!1544963 (= (forallContained!4374 (toList!7468 lt!1971608) lambda!236201 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971695)))

(declare-fun b!4823809 () Bool)

(declare-fun contains!18760 (List!55078 tuple2!58170) Bool)

(assert (=> b!4823809 (= e!3014046 (contains!18760 (toList!7468 lt!1971608) (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(assert (= (and d!1544963 res!2053387) b!4823809))

(declare-fun b_lambda!189479 () Bool)

(assert (=> (not b_lambda!189479) (not d!1544963)))

(assert (=> d!1544963 m!5812946))

(declare-fun m!5812954 () Bool)

(assert (=> d!1544963 m!5812954))

(assert (=> d!1544963 m!5812744))

(declare-fun m!5812956 () Bool)

(assert (=> b!4823809 m!5812956))

(assert (=> b!4823681 d!1544963))

(declare-fun d!1544971 () Bool)

(declare-fun res!2053388 () Bool)

(declare-fun e!3014047 () Bool)

(assert (=> d!1544971 (=> res!2053388 e!3014047)))

(assert (=> d!1544971 (= res!2053388 ((_ is Nil!54954) (toList!7468 lt!1971608)))))

(assert (=> d!1544971 (= (forall!12592 (toList!7468 lt!1971608) lambda!236201) e!3014047)))

(declare-fun b!4823810 () Bool)

(declare-fun e!3014048 () Bool)

(assert (=> b!4823810 (= e!3014047 e!3014048)))

(declare-fun res!2053389 () Bool)

(assert (=> b!4823810 (=> (not res!2053389) (not e!3014048))))

(assert (=> b!4823810 (= res!2053389 (dynLambda!22207 lambda!236201 (h!61388 (toList!7468 lt!1971608))))))

(declare-fun b!4823811 () Bool)

(assert (=> b!4823811 (= e!3014048 (forall!12592 (t!362574 (toList!7468 lt!1971608)) lambda!236201))))

(assert (= (and d!1544971 (not res!2053388)) b!4823810))

(assert (= (and b!4823810 res!2053389) b!4823811))

(declare-fun b_lambda!189481 () Bool)

(assert (=> (not b_lambda!189481) (not b!4823810)))

(declare-fun m!5812958 () Bool)

(assert (=> b!4823810 m!5812958))

(declare-fun m!5812960 () Bool)

(assert (=> b!4823811 m!5812960))

(assert (=> b!4823681 d!1544971))

(declare-fun d!1544973 () Bool)

(declare-fun res!2053390 () Bool)

(declare-fun e!3014049 () Bool)

(assert (=> d!1544973 (=> res!2053390 e!3014049)))

(assert (=> d!1544973 (= res!2053390 ((_ is Nil!54954) (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(assert (=> d!1544973 (= (forall!12592 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))) lambda!236201) e!3014049)))

(declare-fun b!4823812 () Bool)

(declare-fun e!3014050 () Bool)

(assert (=> b!4823812 (= e!3014049 e!3014050)))

(declare-fun res!2053391 () Bool)

(assert (=> b!4823812 (=> (not res!2053391) (not e!3014050))))

(assert (=> b!4823812 (= res!2053391 (dynLambda!22207 lambda!236201 (h!61388 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun b!4823813 () Bool)

(assert (=> b!4823813 (= e!3014050 (forall!12592 (t!362574 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lambda!236201))))

(assert (= (and d!1544973 (not res!2053390)) b!4823812))

(assert (= (and b!4823812 res!2053391) b!4823813))

(declare-fun b_lambda!189483 () Bool)

(assert (=> (not b_lambda!189483) (not b!4823812)))

(declare-fun m!5812962 () Bool)

(assert (=> b!4823812 m!5812962))

(declare-fun m!5812964 () Bool)

(assert (=> b!4823813 m!5812964))

(assert (=> b!4823681 d!1544973))

(declare-fun bs!1163045 () Bool)

(declare-fun d!1544975 () Bool)

(assert (= bs!1163045 (and d!1544975 b!4823763)))

(declare-fun lambda!236228 () Int)

(assert (=> bs!1163045 (= (= lt!1971616 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236228 lambda!236209))))

(declare-fun bs!1163046 () Bool)

(assert (= bs!1163046 (and d!1544975 b!4823683)))

(assert (=> bs!1163046 (= (= lt!1971616 lt!1971401) (= lambda!236228 lambda!236199))))

(declare-fun bs!1163047 () Bool)

(assert (= bs!1163047 (and d!1544975 d!1544863)))

(assert (=> bs!1163047 (= (= lt!1971616 lt!1971613) (= lambda!236228 lambda!236202))))

(declare-fun bs!1163048 () Bool)

(assert (= bs!1163048 (and d!1544975 b!4823776)))

(assert (=> bs!1163048 (= (= lt!1971616 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (= lambda!236228 lambda!236214))))

(declare-fun bs!1163049 () Bool)

(assert (= bs!1163049 (and d!1544975 b!4823774)))

(assert (=> bs!1163049 (= (= lt!1971616 lt!1971680) (= lambda!236228 lambda!236218))))

(declare-fun bs!1163050 () Bool)

(assert (= bs!1163050 (and d!1544975 b!4823761)))

(assert (=> bs!1163050 (= (= lt!1971616 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236228 lambda!236210))))

(assert (=> bs!1163049 (= (= lt!1971616 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (= lambda!236228 lambda!236215))))

(declare-fun bs!1163051 () Bool)

(assert (= bs!1163051 (and d!1544975 b!4823681)))

(assert (=> bs!1163051 (= (= lt!1971616 lt!1971401) (= lambda!236228 lambda!236200))))

(declare-fun bs!1163052 () Bool)

(assert (= bs!1163052 (and d!1544975 d!1544955)))

(assert (=> bs!1163052 (= (= lt!1971616 lt!1971677) (= lambda!236228 lambda!236221))))

(assert (=> bs!1163051 (= lambda!236228 lambda!236201)))

(assert (=> bs!1163050 (= (= lt!1971616 lt!1971658) (= lambda!236228 lambda!236211))))

(declare-fun bs!1163054 () Bool)

(assert (= bs!1163054 (and d!1544975 d!1544947)))

(assert (=> bs!1163054 (= (= lt!1971616 lt!1971655) (= lambda!236228 lambda!236212))))

(assert (=> d!1544975 true))

(assert (=> d!1544975 (forall!12592 (toList!7468 lt!1971401) lambda!236228)))

(declare-fun lt!1971702 () Unit!142711)

(declare-fun choose!35078 (ListMap!6845 ListMap!6845 K!16639 V!16885) Unit!142711)

(assert (=> d!1544975 (= lt!1971702 (choose!35078 lt!1971401 lt!1971616 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (_2!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(assert (=> d!1544975 (forall!12592 (toList!7468 (+!2531 lt!1971401 (tuple2!58171 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (_2!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))) lambda!236228)))

(assert (=> d!1544975 (= (addForallContainsKeyThenBeforeAdding!985 lt!1971401 lt!1971616 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (_2!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) lt!1971702)))

(declare-fun bs!1163055 () Bool)

(assert (= bs!1163055 d!1544975))

(declare-fun m!5812982 () Bool)

(assert (=> bs!1163055 m!5812982))

(declare-fun m!5812984 () Bool)

(assert (=> bs!1163055 m!5812984))

(declare-fun m!5812986 () Bool)

(assert (=> bs!1163055 m!5812986))

(declare-fun m!5812988 () Bool)

(assert (=> bs!1163055 m!5812988))

(assert (=> b!4823681 d!1544975))

(declare-fun b!4823837 () Bool)

(declare-fun e!3014068 () Unit!142711)

(declare-fun lt!1971712 () Unit!142711)

(assert (=> b!4823837 (= e!3014068 lt!1971712)))

(declare-fun lt!1971711 () Unit!142711)

(assert (=> b!4823837 (= lt!1971711 (lemmaContainsKeyImpliesGetValueByKeyDefined!2395 (toList!7468 lt!1971616) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(assert (=> b!4823837 (isDefined!10598 (getValueByKey!2611 (toList!7468 lt!1971616) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun lt!1971710 () Unit!142711)

(assert (=> b!4823837 (= lt!1971710 lt!1971711)))

(assert (=> b!4823837 (= lt!1971712 (lemmaInListThenGetKeysListContains!1149 (toList!7468 lt!1971616) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun call!336273 () Bool)

(assert (=> b!4823837 call!336273))

(declare-fun b!4823838 () Bool)

(assert (=> b!4823838 false))

(declare-fun lt!1971709 () Unit!142711)

(declare-fun lt!1971706 () Unit!142711)

(assert (=> b!4823838 (= lt!1971709 lt!1971706)))

(assert (=> b!4823838 (containsKey!4355 (toList!7468 lt!1971616) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(assert (=> b!4823838 (= lt!1971706 (lemmaInGetKeysListThenContainsKey!1154 (toList!7468 lt!1971616) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun e!3014071 () Unit!142711)

(declare-fun Unit!142782 () Unit!142711)

(assert (=> b!4823838 (= e!3014071 Unit!142782)))

(declare-fun b!4823839 () Bool)

(declare-fun e!3014070 () Bool)

(assert (=> b!4823839 (= e!3014070 (not (contains!18759 (keys!20215 lt!1971616) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))))

(declare-fun d!1544989 () Bool)

(declare-fun e!3014067 () Bool)

(assert (=> d!1544989 e!3014067))

(declare-fun res!2053404 () Bool)

(assert (=> d!1544989 (=> res!2053404 e!3014067)))

(assert (=> d!1544989 (= res!2053404 e!3014070)))

(declare-fun res!2053402 () Bool)

(assert (=> d!1544989 (=> (not res!2053402) (not e!3014070))))

(declare-fun lt!1971713 () Bool)

(assert (=> d!1544989 (= res!2053402 (not lt!1971713))))

(declare-fun lt!1971708 () Bool)

(assert (=> d!1544989 (= lt!1971713 lt!1971708)))

(declare-fun lt!1971707 () Unit!142711)

(assert (=> d!1544989 (= lt!1971707 e!3014068)))

(declare-fun c!821974 () Bool)

(assert (=> d!1544989 (= c!821974 lt!1971708)))

(assert (=> d!1544989 (= lt!1971708 (containsKey!4355 (toList!7468 lt!1971616) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(assert (=> d!1544989 (= (contains!18756 lt!1971616 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) lt!1971713)))

(declare-fun b!4823840 () Bool)

(declare-fun e!3014069 () List!55081)

(assert (=> b!4823840 (= e!3014069 (getKeysList!1154 (toList!7468 lt!1971616)))))

(declare-fun b!4823841 () Bool)

(assert (=> b!4823841 (= e!3014069 (keys!20215 lt!1971616))))

(declare-fun b!4823842 () Bool)

(assert (=> b!4823842 (= e!3014068 e!3014071)))

(declare-fun c!821972 () Bool)

(assert (=> b!4823842 (= c!821972 call!336273)))

(declare-fun b!4823843 () Bool)

(declare-fun e!3014072 () Bool)

(assert (=> b!4823843 (= e!3014072 (contains!18759 (keys!20215 lt!1971616) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun bm!336268 () Bool)

(assert (=> bm!336268 (= call!336273 (contains!18759 e!3014069 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun c!821973 () Bool)

(assert (=> bm!336268 (= c!821973 c!821974)))

(declare-fun b!4823844 () Bool)

(declare-fun Unit!142783 () Unit!142711)

(assert (=> b!4823844 (= e!3014071 Unit!142783)))

(declare-fun b!4823845 () Bool)

(assert (=> b!4823845 (= e!3014067 e!3014072)))

(declare-fun res!2053403 () Bool)

(assert (=> b!4823845 (=> (not res!2053403) (not e!3014072))))

(assert (=> b!4823845 (= res!2053403 (isDefined!10598 (getValueByKey!2611 (toList!7468 lt!1971616) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))))

(assert (= (and d!1544989 c!821974) b!4823837))

(assert (= (and d!1544989 (not c!821974)) b!4823842))

(assert (= (and b!4823842 c!821972) b!4823838))

(assert (= (and b!4823842 (not c!821972)) b!4823844))

(assert (= (or b!4823837 b!4823842) bm!336268))

(assert (= (and bm!336268 c!821973) b!4823840))

(assert (= (and bm!336268 (not c!821973)) b!4823841))

(assert (= (and d!1544989 res!2053402) b!4823839))

(assert (= (and d!1544989 (not res!2053404)) b!4823845))

(assert (= (and b!4823845 res!2053403) b!4823843))

(declare-fun m!5812990 () Bool)

(assert (=> b!4823840 m!5812990))

(declare-fun m!5812992 () Bool)

(assert (=> b!4823841 m!5812992))

(declare-fun m!5812994 () Bool)

(assert (=> b!4823845 m!5812994))

(assert (=> b!4823845 m!5812994))

(declare-fun m!5812996 () Bool)

(assert (=> b!4823845 m!5812996))

(declare-fun m!5812998 () Bool)

(assert (=> d!1544989 m!5812998))

(declare-fun m!5813000 () Bool)

(assert (=> bm!336268 m!5813000))

(assert (=> b!4823838 m!5812998))

(declare-fun m!5813002 () Bool)

(assert (=> b!4823838 m!5813002))

(assert (=> b!4823843 m!5812992))

(assert (=> b!4823843 m!5812992))

(declare-fun m!5813008 () Bool)

(assert (=> b!4823843 m!5813008))

(assert (=> b!4823839 m!5812992))

(assert (=> b!4823839 m!5812992))

(assert (=> b!4823839 m!5813008))

(declare-fun m!5813010 () Bool)

(assert (=> b!4823837 m!5813010))

(assert (=> b!4823837 m!5812994))

(assert (=> b!4823837 m!5812994))

(assert (=> b!4823837 m!5812996))

(declare-fun m!5813014 () Bool)

(assert (=> b!4823837 m!5813014))

(assert (=> b!4823681 d!1544989))

(declare-fun d!1544995 () Bool)

(declare-fun e!3014092 () Bool)

(assert (=> d!1544995 e!3014092))

(declare-fun res!2053422 () Bool)

(assert (=> d!1544995 (=> (not res!2053422) (not e!3014092))))

(declare-fun lt!1971760 () ListMap!6845)

(assert (=> d!1544995 (= res!2053422 (contains!18756 lt!1971760 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun lt!1971759 () List!55078)

(assert (=> d!1544995 (= lt!1971760 (ListMap!6846 lt!1971759))))

(declare-fun lt!1971757 () Unit!142711)

(declare-fun lt!1971758 () Unit!142711)

(assert (=> d!1544995 (= lt!1971757 lt!1971758)))

(assert (=> d!1544995 (= (getValueByKey!2611 lt!1971759 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (Some!13483 (_2!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1215 (List!55078 K!16639 V!16885) Unit!142711)

(assert (=> d!1544995 (= lt!1971758 (lemmaContainsTupThenGetReturnValue!1215 lt!1971759 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (_2!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun insertNoDuplicatedKeys!723 (List!55078 K!16639 V!16885) List!55078)

(assert (=> d!1544995 (= lt!1971759 (insertNoDuplicatedKeys!723 (toList!7468 lt!1971401) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (_2!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(assert (=> d!1544995 (= (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) lt!1971760)))

(declare-fun b!4823874 () Bool)

(declare-fun res!2053421 () Bool)

(assert (=> b!4823874 (=> (not res!2053421) (not e!3014092))))

(assert (=> b!4823874 (= res!2053421 (= (getValueByKey!2611 (toList!7468 lt!1971760) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (Some!13483 (_2!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))))

(declare-fun b!4823875 () Bool)

(assert (=> b!4823875 (= e!3014092 (contains!18760 (toList!7468 lt!1971760) (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(assert (= (and d!1544995 res!2053422) b!4823874))

(assert (= (and b!4823874 res!2053421) b!4823875))

(declare-fun m!5813046 () Bool)

(assert (=> d!1544995 m!5813046))

(declare-fun m!5813048 () Bool)

(assert (=> d!1544995 m!5813048))

(declare-fun m!5813050 () Bool)

(assert (=> d!1544995 m!5813050))

(declare-fun m!5813052 () Bool)

(assert (=> d!1544995 m!5813052))

(declare-fun m!5813054 () Bool)

(assert (=> b!4823874 m!5813054))

(declare-fun m!5813056 () Bool)

(assert (=> b!4823875 m!5813056))

(assert (=> b!4823681 d!1544995))

(declare-fun b!4823876 () Bool)

(declare-fun e!3014094 () Unit!142711)

(declare-fun lt!1971767 () Unit!142711)

(assert (=> b!4823876 (= e!3014094 lt!1971767)))

(declare-fun lt!1971766 () Unit!142711)

(assert (=> b!4823876 (= lt!1971766 (lemmaContainsKeyImpliesGetValueByKeyDefined!2395 (toList!7468 lt!1971608) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(assert (=> b!4823876 (isDefined!10598 (getValueByKey!2611 (toList!7468 lt!1971608) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun lt!1971765 () Unit!142711)

(assert (=> b!4823876 (= lt!1971765 lt!1971766)))

(assert (=> b!4823876 (= lt!1971767 (lemmaInListThenGetKeysListContains!1149 (toList!7468 lt!1971608) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun call!336278 () Bool)

(assert (=> b!4823876 call!336278))

(declare-fun b!4823877 () Bool)

(assert (=> b!4823877 false))

(declare-fun lt!1971764 () Unit!142711)

(declare-fun lt!1971761 () Unit!142711)

(assert (=> b!4823877 (= lt!1971764 lt!1971761)))

(assert (=> b!4823877 (containsKey!4355 (toList!7468 lt!1971608) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(assert (=> b!4823877 (= lt!1971761 (lemmaInGetKeysListThenContainsKey!1154 (toList!7468 lt!1971608) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun e!3014097 () Unit!142711)

(declare-fun Unit!142784 () Unit!142711)

(assert (=> b!4823877 (= e!3014097 Unit!142784)))

(declare-fun b!4823878 () Bool)

(declare-fun e!3014096 () Bool)

(assert (=> b!4823878 (= e!3014096 (not (contains!18759 (keys!20215 lt!1971608) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))))

(declare-fun d!1545007 () Bool)

(declare-fun e!3014093 () Bool)

(assert (=> d!1545007 e!3014093))

(declare-fun res!2053425 () Bool)

(assert (=> d!1545007 (=> res!2053425 e!3014093)))

(assert (=> d!1545007 (= res!2053425 e!3014096)))

(declare-fun res!2053423 () Bool)

(assert (=> d!1545007 (=> (not res!2053423) (not e!3014096))))

(declare-fun lt!1971768 () Bool)

(assert (=> d!1545007 (= res!2053423 (not lt!1971768))))

(declare-fun lt!1971763 () Bool)

(assert (=> d!1545007 (= lt!1971768 lt!1971763)))

(declare-fun lt!1971762 () Unit!142711)

(assert (=> d!1545007 (= lt!1971762 e!3014094)))

(declare-fun c!821983 () Bool)

(assert (=> d!1545007 (= c!821983 lt!1971763)))

(assert (=> d!1545007 (= lt!1971763 (containsKey!4355 (toList!7468 lt!1971608) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(assert (=> d!1545007 (= (contains!18756 lt!1971608 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) lt!1971768)))

(declare-fun b!4823879 () Bool)

(declare-fun e!3014095 () List!55081)

(assert (=> b!4823879 (= e!3014095 (getKeysList!1154 (toList!7468 lt!1971608)))))

(declare-fun b!4823880 () Bool)

(assert (=> b!4823880 (= e!3014095 (keys!20215 lt!1971608))))

(declare-fun b!4823881 () Bool)

(assert (=> b!4823881 (= e!3014094 e!3014097)))

(declare-fun c!821981 () Bool)

(assert (=> b!4823881 (= c!821981 call!336278)))

(declare-fun b!4823882 () Bool)

(declare-fun e!3014098 () Bool)

(assert (=> b!4823882 (= e!3014098 (contains!18759 (keys!20215 lt!1971608) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun bm!336273 () Bool)

(assert (=> bm!336273 (= call!336278 (contains!18759 e!3014095 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun c!821982 () Bool)

(assert (=> bm!336273 (= c!821982 c!821983)))

(declare-fun b!4823883 () Bool)

(declare-fun Unit!142785 () Unit!142711)

(assert (=> b!4823883 (= e!3014097 Unit!142785)))

(declare-fun b!4823884 () Bool)

(assert (=> b!4823884 (= e!3014093 e!3014098)))

(declare-fun res!2053424 () Bool)

(assert (=> b!4823884 (=> (not res!2053424) (not e!3014098))))

(assert (=> b!4823884 (= res!2053424 (isDefined!10598 (getValueByKey!2611 (toList!7468 lt!1971608) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))))

(assert (= (and d!1545007 c!821983) b!4823876))

(assert (= (and d!1545007 (not c!821983)) b!4823881))

(assert (= (and b!4823881 c!821981) b!4823877))

(assert (= (and b!4823881 (not c!821981)) b!4823883))

(assert (= (or b!4823876 b!4823881) bm!336273))

(assert (= (and bm!336273 c!821982) b!4823879))

(assert (= (and bm!336273 (not c!821982)) b!4823880))

(assert (= (and d!1545007 res!2053423) b!4823878))

(assert (= (and d!1545007 (not res!2053425)) b!4823884))

(assert (= (and b!4823884 res!2053424) b!4823882))

(declare-fun m!5813058 () Bool)

(assert (=> b!4823879 m!5813058))

(declare-fun m!5813060 () Bool)

(assert (=> b!4823880 m!5813060))

(declare-fun m!5813062 () Bool)

(assert (=> b!4823884 m!5813062))

(assert (=> b!4823884 m!5813062))

(declare-fun m!5813064 () Bool)

(assert (=> b!4823884 m!5813064))

(declare-fun m!5813066 () Bool)

(assert (=> d!1545007 m!5813066))

(declare-fun m!5813068 () Bool)

(assert (=> bm!336273 m!5813068))

(assert (=> b!4823877 m!5813066))

(declare-fun m!5813070 () Bool)

(assert (=> b!4823877 m!5813070))

(assert (=> b!4823882 m!5813060))

(assert (=> b!4823882 m!5813060))

(declare-fun m!5813072 () Bool)

(assert (=> b!4823882 m!5813072))

(assert (=> b!4823878 m!5813060))

(assert (=> b!4823878 m!5813060))

(assert (=> b!4823878 m!5813072))

(declare-fun m!5813074 () Bool)

(assert (=> b!4823876 m!5813074))

(assert (=> b!4823876 m!5813062))

(assert (=> b!4823876 m!5813062))

(assert (=> b!4823876 m!5813064))

(declare-fun m!5813076 () Bool)

(assert (=> b!4823876 m!5813076))

(assert (=> b!4823681 d!1545007))

(declare-fun d!1545009 () Bool)

(assert (=> d!1545009 (isDefined!10598 (getValueByKey!2611 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428))))

(declare-fun lt!1971771 () Unit!142711)

(declare-fun choose!35081 (List!55078 K!16639) Unit!142711)

(assert (=> d!1545009 (= lt!1971771 (choose!35081 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428))))

(assert (=> d!1545009 (invariantList!1807 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))))

(assert (=> d!1545009 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2395 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428) lt!1971771)))

(declare-fun bs!1163071 () Bool)

(assert (= bs!1163071 d!1545009))

(assert (=> bs!1163071 m!5812780))

(assert (=> bs!1163071 m!5812780))

(assert (=> bs!1163071 m!5812782))

(declare-fun m!5813078 () Bool)

(assert (=> bs!1163071 m!5813078))

(declare-fun m!5813080 () Bool)

(assert (=> bs!1163071 m!5813080))

(assert (=> b!4823690 d!1545009))

(assert (=> b!4823690 d!1544921))

(assert (=> b!4823690 d!1544923))

(declare-fun d!1545011 () Bool)

(assert (=> d!1545011 (contains!18759 (getKeysList!1154 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) key!5428)))

(declare-fun lt!1971774 () Unit!142711)

(declare-fun choose!35082 (List!55078 K!16639) Unit!142711)

(assert (=> d!1545011 (= lt!1971774 (choose!35082 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428))))

(assert (=> d!1545011 (invariantList!1807 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))))

(assert (=> d!1545011 (= (lemmaInListThenGetKeysListContains!1149 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428) lt!1971774)))

(declare-fun bs!1163072 () Bool)

(assert (= bs!1163072 d!1545011))

(assert (=> bs!1163072 m!5812776))

(assert (=> bs!1163072 m!5812776))

(declare-fun m!5813118 () Bool)

(assert (=> bs!1163072 m!5813118))

(declare-fun m!5813120 () Bool)

(assert (=> bs!1163072 m!5813120))

(assert (=> bs!1163072 m!5813080))

(assert (=> b!4823690 d!1545011))

(declare-fun d!1545015 () Bool)

(assert (=> d!1545015 (isDefined!10598 (getValueByKey!2611 (toList!7468 lt!1971401) key!5428))))

(declare-fun lt!1971777 () Unit!142711)

(assert (=> d!1545015 (= lt!1971777 (choose!35081 (toList!7468 lt!1971401) key!5428))))

(assert (=> d!1545015 (invariantList!1807 (toList!7468 lt!1971401))))

(assert (=> d!1545015 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2395 (toList!7468 lt!1971401) key!5428) lt!1971777)))

(declare-fun bs!1163073 () Bool)

(assert (= bs!1163073 d!1545015))

(assert (=> bs!1163073 m!5812580))

(assert (=> bs!1163073 m!5812580))

(assert (=> bs!1163073 m!5812582))

(declare-fun m!5813122 () Bool)

(assert (=> bs!1163073 m!5813122))

(declare-fun m!5813124 () Bool)

(assert (=> bs!1163073 m!5813124))

(assert (=> b!4823575 d!1545015))

(assert (=> b!4823575 d!1544917))

(assert (=> b!4823575 d!1544919))

(declare-fun d!1545017 () Bool)

(assert (=> d!1545017 (contains!18759 (getKeysList!1154 (toList!7468 lt!1971401)) key!5428)))

(declare-fun lt!1971778 () Unit!142711)

(assert (=> d!1545017 (= lt!1971778 (choose!35082 (toList!7468 lt!1971401) key!5428))))

(assert (=> d!1545017 (invariantList!1807 (toList!7468 lt!1971401))))

(assert (=> d!1545017 (= (lemmaInListThenGetKeysListContains!1149 (toList!7468 lt!1971401) key!5428) lt!1971778)))

(declare-fun bs!1163074 () Bool)

(assert (= bs!1163074 d!1545017))

(assert (=> bs!1163074 m!5812576))

(assert (=> bs!1163074 m!5812576))

(declare-fun m!5813126 () Bool)

(assert (=> bs!1163074 m!5813126))

(declare-fun m!5813128 () Bool)

(assert (=> bs!1163074 m!5813128))

(assert (=> bs!1163074 m!5813124))

(assert (=> b!4823575 d!1545017))

(declare-fun d!1545019 () Bool)

(declare-fun res!2053433 () Bool)

(declare-fun e!3014106 () Bool)

(assert (=> d!1545019 (=> res!2053433 e!3014106)))

(assert (=> d!1545019 (= res!2053433 (and ((_ is Cons!54954) (toList!7468 lt!1971401)) (= (_1!32379 (h!61388 (toList!7468 lt!1971401))) key!5428)))))

(assert (=> d!1545019 (= (containsKey!4355 (toList!7468 lt!1971401) key!5428) e!3014106)))

(declare-fun b!4823892 () Bool)

(declare-fun e!3014107 () Bool)

(assert (=> b!4823892 (= e!3014106 e!3014107)))

(declare-fun res!2053434 () Bool)

(assert (=> b!4823892 (=> (not res!2053434) (not e!3014107))))

(assert (=> b!4823892 (= res!2053434 ((_ is Cons!54954) (toList!7468 lt!1971401)))))

(declare-fun b!4823893 () Bool)

(assert (=> b!4823893 (= e!3014107 (containsKey!4355 (t!362574 (toList!7468 lt!1971401)) key!5428))))

(assert (= (and d!1545019 (not res!2053433)) b!4823892))

(assert (= (and b!4823892 res!2053434) b!4823893))

(declare-fun m!5813136 () Bool)

(assert (=> b!4823893 m!5813136))

(assert (=> d!1544847 d!1545019))

(declare-fun d!1545023 () Bool)

(declare-fun res!2053435 () Bool)

(declare-fun e!3014108 () Bool)

(assert (=> d!1545023 (=> res!2053435 e!3014108)))

(assert (=> d!1545023 (= res!2053435 ((_ is Nil!54954) (ite c!821934 (toList!7468 lt!1971401) (toList!7468 lt!1971608))))))

(assert (=> d!1545023 (= (forall!12592 (ite c!821934 (toList!7468 lt!1971401) (toList!7468 lt!1971608)) (ite c!821934 lambda!236199 lambda!236201)) e!3014108)))

(declare-fun b!4823894 () Bool)

(declare-fun e!3014109 () Bool)

(assert (=> b!4823894 (= e!3014108 e!3014109)))

(declare-fun res!2053436 () Bool)

(assert (=> b!4823894 (=> (not res!2053436) (not e!3014109))))

(assert (=> b!4823894 (= res!2053436 (dynLambda!22207 (ite c!821934 lambda!236199 lambda!236201) (h!61388 (ite c!821934 (toList!7468 lt!1971401) (toList!7468 lt!1971608)))))))

(declare-fun b!4823895 () Bool)

(assert (=> b!4823895 (= e!3014109 (forall!12592 (t!362574 (ite c!821934 (toList!7468 lt!1971401) (toList!7468 lt!1971608))) (ite c!821934 lambda!236199 lambda!236201)))))

(assert (= (and d!1545023 (not res!2053435)) b!4823894))

(assert (= (and b!4823894 res!2053436) b!4823895))

(declare-fun b_lambda!189489 () Bool)

(assert (=> (not b_lambda!189489) (not b!4823894)))

(declare-fun m!5813138 () Bool)

(assert (=> b!4823894 m!5813138))

(declare-fun m!5813140 () Bool)

(assert (=> b!4823895 m!5813140))

(assert (=> bm!336260 d!1545023))

(declare-fun b!4823907 () Bool)

(assert (=> b!4823907 true))

(declare-fun d!1545025 () Bool)

(declare-fun e!3014114 () Bool)

(assert (=> d!1545025 e!3014114))

(declare-fun res!2053449 () Bool)

(assert (=> d!1545025 (=> (not res!2053449) (not e!3014114))))

(declare-fun lt!1971790 () List!55081)

(declare-fun noDuplicate!956 (List!55081) Bool)

(assert (=> d!1545025 (= res!2053449 (noDuplicate!956 lt!1971790))))

(assert (=> d!1545025 (= lt!1971790 (getKeysList!1154 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))))

(assert (=> d!1545025 (= (keys!20215 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) lt!1971790)))

(declare-fun b!4823906 () Bool)

(declare-fun res!2053447 () Bool)

(assert (=> b!4823906 (=> (not res!2053447) (not e!3014114))))

(declare-fun length!768 (List!55081) Int)

(declare-fun length!769 (List!55078) Int)

(assert (=> b!4823906 (= res!2053447 (= (length!768 lt!1971790) (length!769 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))))))

(declare-fun res!2053448 () Bool)

(assert (=> b!4823907 (=> (not res!2053448) (not e!3014114))))

(declare-fun lambda!236237 () Int)

(declare-fun forall!12594 (List!55081 Int) Bool)

(assert (=> b!4823907 (= res!2053448 (forall!12594 lt!1971790 lambda!236237))))

(declare-fun lambda!236238 () Int)

(declare-fun b!4823908 () Bool)

(declare-fun map!12572 (List!55078 Int) List!55081)

(assert (=> b!4823908 (= e!3014114 (= (content!9814 lt!1971790) (content!9814 (map!12572 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) lambda!236238))))))

(assert (= (and d!1545025 res!2053449) b!4823906))

(assert (= (and b!4823906 res!2053447) b!4823907))

(assert (= (and b!4823907 res!2053448) b!4823908))

(declare-fun m!5813142 () Bool)

(assert (=> d!1545025 m!5813142))

(assert (=> d!1545025 m!5812776))

(declare-fun m!5813144 () Bool)

(assert (=> b!4823906 m!5813144))

(declare-fun m!5813146 () Bool)

(assert (=> b!4823906 m!5813146))

(declare-fun m!5813148 () Bool)

(assert (=> b!4823907 m!5813148))

(declare-fun m!5813150 () Bool)

(assert (=> b!4823908 m!5813150))

(declare-fun m!5813152 () Bool)

(assert (=> b!4823908 m!5813152))

(assert (=> b!4823908 m!5813152))

(declare-fun m!5813154 () Bool)

(assert (=> b!4823908 m!5813154))

(assert (=> b!4823694 d!1545025))

(declare-fun bs!1163075 () Bool)

(declare-fun b!4823912 () Bool)

(assert (= bs!1163075 (and b!4823912 b!4823907)))

(declare-fun lambda!236239 () Int)

(assert (=> bs!1163075 (= (= (toList!7468 lt!1971401) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (= lambda!236239 lambda!236237))))

(assert (=> b!4823912 true))

(declare-fun bs!1163076 () Bool)

(declare-fun b!4823913 () Bool)

(assert (= bs!1163076 (and b!4823913 b!4823908)))

(declare-fun lambda!236240 () Int)

(assert (=> bs!1163076 (= lambda!236240 lambda!236238)))

(declare-fun d!1545027 () Bool)

(declare-fun e!3014115 () Bool)

(assert (=> d!1545027 e!3014115))

(declare-fun res!2053452 () Bool)

(assert (=> d!1545027 (=> (not res!2053452) (not e!3014115))))

(declare-fun lt!1971791 () List!55081)

(assert (=> d!1545027 (= res!2053452 (noDuplicate!956 lt!1971791))))

(assert (=> d!1545027 (= lt!1971791 (getKeysList!1154 (toList!7468 lt!1971401)))))

(assert (=> d!1545027 (= (keys!20215 lt!1971401) lt!1971791)))

(declare-fun b!4823911 () Bool)

(declare-fun res!2053450 () Bool)

(assert (=> b!4823911 (=> (not res!2053450) (not e!3014115))))

(assert (=> b!4823911 (= res!2053450 (= (length!768 lt!1971791) (length!769 (toList!7468 lt!1971401))))))

(declare-fun res!2053451 () Bool)

(assert (=> b!4823912 (=> (not res!2053451) (not e!3014115))))

(assert (=> b!4823912 (= res!2053451 (forall!12594 lt!1971791 lambda!236239))))

(assert (=> b!4823913 (= e!3014115 (= (content!9814 lt!1971791) (content!9814 (map!12572 (toList!7468 lt!1971401) lambda!236240))))))

(assert (= (and d!1545027 res!2053452) b!4823911))

(assert (= (and b!4823911 res!2053450) b!4823912))

(assert (= (and b!4823912 res!2053451) b!4823913))

(declare-fun m!5813162 () Bool)

(assert (=> d!1545027 m!5813162))

(assert (=> d!1545027 m!5812576))

(declare-fun m!5813164 () Bool)

(assert (=> b!4823911 m!5813164))

(declare-fun m!5813168 () Bool)

(assert (=> b!4823911 m!5813168))

(declare-fun m!5813170 () Bool)

(assert (=> b!4823912 m!5813170))

(declare-fun m!5813174 () Bool)

(assert (=> b!4823913 m!5813174))

(declare-fun m!5813178 () Bool)

(assert (=> b!4823913 m!5813178))

(assert (=> b!4823913 m!5813178))

(declare-fun m!5813180 () Bool)

(assert (=> b!4823913 m!5813180))

(assert (=> b!4823579 d!1545027))

(declare-fun d!1545031 () Bool)

(declare-fun res!2053457 () Bool)

(declare-fun e!3014119 () Bool)

(assert (=> d!1545031 (=> res!2053457 e!3014119)))

(assert (=> d!1545031 (= res!2053457 (and ((_ is Cons!54954) (t!362574 (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280)))))) (= (_1!32379 (h!61388 (t!362574 (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280))))))) key!5428)))))

(assert (=> d!1545031 (= (containsKey!4353 (t!362574 (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280))))) key!5428) e!3014119)))

(declare-fun b!4823918 () Bool)

(declare-fun e!3014120 () Bool)

(assert (=> b!4823918 (= e!3014119 e!3014120)))

(declare-fun res!2053458 () Bool)

(assert (=> b!4823918 (=> (not res!2053458) (not e!3014120))))

(assert (=> b!4823918 (= res!2053458 ((_ is Cons!54954) (t!362574 (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun b!4823919 () Bool)

(assert (=> b!4823919 (= e!3014120 (containsKey!4353 (t!362574 (t!362574 (apply!13347 lm!2280 (_1!32380 (h!61389 (toList!7467 lm!2280)))))) key!5428))))

(assert (= (and d!1545031 (not res!2053457)) b!4823918))

(assert (= (and b!4823918 res!2053458) b!4823919))

(declare-fun m!5813182 () Bool)

(assert (=> b!4823919 m!5813182))

(assert (=> b!4823603 d!1545031))

(declare-fun d!1545033 () Bool)

(declare-fun lt!1971796 () Bool)

(assert (=> d!1545033 (= lt!1971796 (select (content!9814 (keys!20215 lt!1971401)) key!5428))))

(declare-fun e!3014122 () Bool)

(assert (=> d!1545033 (= lt!1971796 e!3014122)))

(declare-fun res!2053459 () Bool)

(assert (=> d!1545033 (=> (not res!2053459) (not e!3014122))))

(assert (=> d!1545033 (= res!2053459 ((_ is Cons!54957) (keys!20215 lt!1971401)))))

(assert (=> d!1545033 (= (contains!18759 (keys!20215 lt!1971401) key!5428) lt!1971796)))

(declare-fun b!4823920 () Bool)

(declare-fun e!3014121 () Bool)

(assert (=> b!4823920 (= e!3014122 e!3014121)))

(declare-fun res!2053460 () Bool)

(assert (=> b!4823920 (=> res!2053460 e!3014121)))

(assert (=> b!4823920 (= res!2053460 (= (h!61391 (keys!20215 lt!1971401)) key!5428))))

(declare-fun b!4823921 () Bool)

(assert (=> b!4823921 (= e!3014121 (contains!18759 (t!362577 (keys!20215 lt!1971401)) key!5428))))

(assert (= (and d!1545033 res!2053459) b!4823920))

(assert (= (and b!4823920 (not res!2053460)) b!4823921))

(assert (=> d!1545033 m!5812578))

(declare-fun m!5813184 () Bool)

(assert (=> d!1545033 m!5813184))

(declare-fun m!5813186 () Bool)

(assert (=> d!1545033 m!5813186))

(declare-fun m!5813188 () Bool)

(assert (=> b!4823921 m!5813188))

(assert (=> b!4823581 d!1545033))

(assert (=> b!4823581 d!1545027))

(declare-fun d!1545037 () Bool)

(declare-fun res!2053461 () Bool)

(declare-fun e!3014123 () Bool)

(assert (=> d!1545037 (=> res!2053461 e!3014123)))

(assert (=> d!1545037 (= res!2053461 ((_ is Nil!54955) (toList!7467 lm!2280)))))

(assert (=> d!1545037 (= (forall!12590 (toList!7467 lm!2280) lambda!236127) e!3014123)))

(declare-fun b!4823922 () Bool)

(declare-fun e!3014124 () Bool)

(assert (=> b!4823922 (= e!3014123 e!3014124)))

(declare-fun res!2053462 () Bool)

(assert (=> b!4823922 (=> (not res!2053462) (not e!3014124))))

(assert (=> b!4823922 (= res!2053462 (dynLambda!22206 lambda!236127 (h!61389 (toList!7467 lm!2280))))))

(declare-fun b!4823923 () Bool)

(assert (=> b!4823923 (= e!3014124 (forall!12590 (t!362575 (toList!7467 lm!2280)) lambda!236127))))

(assert (= (and d!1545037 (not res!2053461)) b!4823922))

(assert (= (and b!4823922 res!2053462) b!4823923))

(declare-fun b_lambda!189493 () Bool)

(assert (=> (not b_lambda!189493) (not b!4823922)))

(declare-fun m!5813190 () Bool)

(assert (=> b!4823922 m!5813190))

(declare-fun m!5813192 () Bool)

(assert (=> b!4823923 m!5813192))

(assert (=> d!1544833 d!1545037))

(assert (=> b!4823577 d!1545033))

(assert (=> b!4823577 d!1545027))

(declare-fun d!1545039 () Bool)

(declare-fun res!2053467 () Bool)

(declare-fun e!3014129 () Bool)

(assert (=> d!1545039 (=> res!2053467 e!3014129)))

(assert (=> d!1545039 (= res!2053467 (not ((_ is Cons!54954) (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(assert (=> d!1545039 (= (noDuplicateKeys!2446 (_2!32380 (h!61389 (toList!7467 lm!2280)))) e!3014129)))

(declare-fun b!4823928 () Bool)

(declare-fun e!3014130 () Bool)

(assert (=> b!4823928 (= e!3014129 e!3014130)))

(declare-fun res!2053468 () Bool)

(assert (=> b!4823928 (=> (not res!2053468) (not e!3014130))))

(assert (=> b!4823928 (= res!2053468 (not (containsKey!4353 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))))

(declare-fun b!4823929 () Bool)

(assert (=> b!4823929 (= e!3014130 (noDuplicateKeys!2446 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(assert (= (and d!1545039 (not res!2053467)) b!4823928))

(assert (= (and b!4823928 res!2053468) b!4823929))

(declare-fun m!5813194 () Bool)

(assert (=> b!4823928 m!5813194))

(assert (=> b!4823929 m!5812936))

(assert (=> bs!1162998 d!1545039))

(declare-fun d!1545041 () Bool)

(declare-fun lt!1971797 () Bool)

(assert (=> d!1545041 (= lt!1971797 (select (content!9814 (keys!20215 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) key!5428))))

(declare-fun e!3014132 () Bool)

(assert (=> d!1545041 (= lt!1971797 e!3014132)))

(declare-fun res!2053469 () Bool)

(assert (=> d!1545041 (=> (not res!2053469) (not e!3014132))))

(assert (=> d!1545041 (= res!2053469 ((_ is Cons!54957) (keys!20215 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))))

(assert (=> d!1545041 (= (contains!18759 (keys!20215 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428) lt!1971797)))

(declare-fun b!4823930 () Bool)

(declare-fun e!3014131 () Bool)

(assert (=> b!4823930 (= e!3014132 e!3014131)))

(declare-fun res!2053470 () Bool)

(assert (=> b!4823930 (=> res!2053470 e!3014131)))

(assert (=> b!4823930 (= res!2053470 (= (h!61391 (keys!20215 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) key!5428))))

(declare-fun b!4823931 () Bool)

(assert (=> b!4823931 (= e!3014131 (contains!18759 (t!362577 (keys!20215 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) key!5428))))

(assert (= (and d!1545041 res!2053469) b!4823930))

(assert (= (and b!4823930 (not res!2053470)) b!4823931))

(assert (=> d!1545041 m!5812778))

(declare-fun m!5813196 () Bool)

(assert (=> d!1545041 m!5813196))

(declare-fun m!5813198 () Bool)

(assert (=> d!1545041 m!5813198))

(declare-fun m!5813200 () Bool)

(assert (=> b!4823931 m!5813200))

(assert (=> b!4823692 d!1545041))

(assert (=> b!4823692 d!1545025))

(declare-fun d!1545043 () Bool)

(declare-fun res!2053475 () Bool)

(declare-fun e!3014137 () Bool)

(assert (=> d!1545043 (=> res!2053475 e!3014137)))

(assert (=> d!1545043 (= res!2053475 (and ((_ is Cons!54955) (toList!7467 lm!2280)) (= (_1!32380 (h!61389 (toList!7467 lm!2280))) lt!1971398)))))

(assert (=> d!1545043 (= (containsKey!4356 (toList!7467 lm!2280) lt!1971398) e!3014137)))

(declare-fun b!4823937 () Bool)

(declare-fun e!3014138 () Bool)

(assert (=> b!4823937 (= e!3014137 e!3014138)))

(declare-fun res!2053476 () Bool)

(assert (=> b!4823937 (=> (not res!2053476) (not e!3014138))))

(assert (=> b!4823937 (= res!2053476 (and (or (not ((_ is Cons!54955) (toList!7467 lm!2280))) (bvsle (_1!32380 (h!61389 (toList!7467 lm!2280))) lt!1971398)) ((_ is Cons!54955) (toList!7467 lm!2280)) (bvslt (_1!32380 (h!61389 (toList!7467 lm!2280))) lt!1971398)))))

(declare-fun b!4823938 () Bool)

(assert (=> b!4823938 (= e!3014138 (containsKey!4356 (t!362575 (toList!7467 lm!2280)) lt!1971398))))

(assert (= (and d!1545043 (not res!2053475)) b!4823937))

(assert (= (and b!4823937 res!2053476) b!4823938))

(declare-fun m!5813202 () Bool)

(assert (=> b!4823938 m!5813202))

(assert (=> d!1544849 d!1545043))

(declare-fun d!1545045 () Bool)

(assert (=> d!1545045 (isDefined!10599 (getValueByKey!2612 (toList!7467 lt!1971402) lt!1971398))))

(declare-fun lt!1971803 () Unit!142711)

(declare-fun choose!35083 (List!55079 (_ BitVec 64)) Unit!142711)

(assert (=> d!1545045 (= lt!1971803 (choose!35083 (toList!7467 lt!1971402) lt!1971398))))

(declare-fun e!3014141 () Bool)

(assert (=> d!1545045 e!3014141))

(declare-fun res!2053479 () Bool)

(assert (=> d!1545045 (=> (not res!2053479) (not e!3014141))))

(assert (=> d!1545045 (= res!2053479 (isStrictlySorted!979 (toList!7467 lt!1971402)))))

(assert (=> d!1545045 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2396 (toList!7467 lt!1971402) lt!1971398) lt!1971803)))

(declare-fun b!4823941 () Bool)

(assert (=> b!4823941 (= e!3014141 (containsKey!4356 (toList!7467 lt!1971402) lt!1971398))))

(assert (= (and d!1545045 res!2053479) b!4823941))

(assert (=> d!1545045 m!5812610))

(assert (=> d!1545045 m!5812610))

(assert (=> d!1545045 m!5812612))

(declare-fun m!5813204 () Bool)

(assert (=> d!1545045 m!5813204))

(declare-fun m!5813206 () Bool)

(assert (=> d!1545045 m!5813206))

(assert (=> b!4823941 m!5812606))

(assert (=> b!4823593 d!1545045))

(declare-fun d!1545047 () Bool)

(declare-fun isEmpty!29646 (Option!13485) Bool)

(assert (=> d!1545047 (= (isDefined!10599 (getValueByKey!2612 (toList!7467 lt!1971402) lt!1971398)) (not (isEmpty!29646 (getValueByKey!2612 (toList!7467 lt!1971402) lt!1971398))))))

(declare-fun bs!1163083 () Bool)

(assert (= bs!1163083 d!1545047))

(assert (=> bs!1163083 m!5812610))

(declare-fun m!5813210 () Bool)

(assert (=> bs!1163083 m!5813210))

(assert (=> b!4823593 d!1545047))

(declare-fun b!4823944 () Bool)

(declare-fun e!3014143 () Option!13485)

(assert (=> b!4823944 (= e!3014143 (getValueByKey!2612 (t!362575 (toList!7467 lt!1971402)) lt!1971398))))

(declare-fun b!4823942 () Bool)

(declare-fun e!3014142 () Option!13485)

(assert (=> b!4823942 (= e!3014142 (Some!13484 (_2!32380 (h!61389 (toList!7467 lt!1971402)))))))

(declare-fun d!1545049 () Bool)

(declare-fun c!821984 () Bool)

(assert (=> d!1545049 (= c!821984 (and ((_ is Cons!54955) (toList!7467 lt!1971402)) (= (_1!32380 (h!61389 (toList!7467 lt!1971402))) lt!1971398)))))

(assert (=> d!1545049 (= (getValueByKey!2612 (toList!7467 lt!1971402) lt!1971398) e!3014142)))

(declare-fun b!4823945 () Bool)

(assert (=> b!4823945 (= e!3014143 None!13484)))

(declare-fun b!4823943 () Bool)

(assert (=> b!4823943 (= e!3014142 e!3014143)))

(declare-fun c!821985 () Bool)

(assert (=> b!4823943 (= c!821985 (and ((_ is Cons!54955) (toList!7467 lt!1971402)) (not (= (_1!32380 (h!61389 (toList!7467 lt!1971402))) lt!1971398))))))

(assert (= (and d!1545049 c!821984) b!4823942))

(assert (= (and d!1545049 (not c!821984)) b!4823943))

(assert (= (and b!4823943 c!821985) b!4823944))

(assert (= (and b!4823943 (not c!821985)) b!4823945))

(declare-fun m!5813218 () Bool)

(assert (=> b!4823944 m!5813218))

(assert (=> b!4823593 d!1545049))

(assert (=> b!4823696 d!1545041))

(assert (=> b!4823696 d!1545025))

(declare-fun d!1545053 () Bool)

(assert (=> d!1545053 (= (invariantList!1807 (toList!7468 lt!1971642)) (noDuplicatedKeys!473 (toList!7468 lt!1971642)))))

(declare-fun bs!1163085 () Bool)

(assert (= bs!1163085 d!1545053))

(declare-fun m!5813220 () Bool)

(assert (=> bs!1163085 m!5813220))

(assert (=> d!1544905 d!1545053))

(declare-fun d!1545055 () Bool)

(declare-fun res!2053482 () Bool)

(declare-fun e!3014146 () Bool)

(assert (=> d!1545055 (=> res!2053482 e!3014146)))

(assert (=> d!1545055 (= res!2053482 ((_ is Nil!54955) (t!362575 (toList!7467 lm!2280))))))

(assert (=> d!1545055 (= (forall!12590 (t!362575 (toList!7467 lm!2280)) lambda!236208) e!3014146)))

(declare-fun b!4823948 () Bool)

(declare-fun e!3014147 () Bool)

(assert (=> b!4823948 (= e!3014146 e!3014147)))

(declare-fun res!2053483 () Bool)

(assert (=> b!4823948 (=> (not res!2053483) (not e!3014147))))

(assert (=> b!4823948 (= res!2053483 (dynLambda!22206 lambda!236208 (h!61389 (t!362575 (toList!7467 lm!2280)))))))

(declare-fun b!4823949 () Bool)

(assert (=> b!4823949 (= e!3014147 (forall!12590 (t!362575 (t!362575 (toList!7467 lm!2280))) lambda!236208))))

(assert (= (and d!1545055 (not res!2053482)) b!4823948))

(assert (= (and b!4823948 res!2053483) b!4823949))

(declare-fun b_lambda!189499 () Bool)

(assert (=> (not b_lambda!189499) (not b!4823948)))

(declare-fun m!5813228 () Bool)

(assert (=> b!4823948 m!5813228))

(declare-fun m!5813232 () Bool)

(assert (=> b!4823949 m!5813232))

(assert (=> d!1544905 d!1545055))

(declare-fun d!1545061 () Bool)

(assert (=> d!1545061 (= (tail!9402 (toList!7467 lm!2280)) (t!362575 (toList!7467 lm!2280)))))

(assert (=> d!1544907 d!1545061))

(declare-fun d!1545065 () Bool)

(declare-fun res!2053491 () Bool)

(declare-fun e!3014158 () Bool)

(assert (=> d!1545065 (=> res!2053491 e!3014158)))

(assert (=> d!1545065 (= res!2053491 (and ((_ is Cons!54954) (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (= (_1!32379 (h!61388 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) key!5428)))))

(assert (=> d!1545065 (= (containsKey!4353 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))) key!5428) e!3014158)))

(declare-fun b!4823963 () Bool)

(declare-fun e!3014159 () Bool)

(assert (=> b!4823963 (= e!3014158 e!3014159)))

(declare-fun res!2053492 () Bool)

(assert (=> b!4823963 (=> (not res!2053492) (not e!3014159))))

(assert (=> b!4823963 (= res!2053492 ((_ is Cons!54954) (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(declare-fun b!4823964 () Bool)

(assert (=> b!4823964 (= e!3014159 (containsKey!4353 (t!362574 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280))))) key!5428))))

(assert (= (and d!1545065 (not res!2053491)) b!4823963))

(assert (= (and b!4823963 res!2053492) b!4823964))

(declare-fun m!5813238 () Bool)

(assert (=> b!4823964 m!5813238))

(assert (=> b!4823605 d!1545065))

(assert (=> b!4823595 d!1545047))

(assert (=> b!4823595 d!1545049))

(declare-fun e!3014170 () Bool)

(declare-fun d!1545067 () Bool)

(assert (=> d!1545067 (= (contains!18756 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401) key!5428) e!3014170)))

(declare-fun res!2053503 () Bool)

(assert (=> d!1545067 (=> res!2053503 e!3014170)))

(assert (=> d!1545067 (= res!2053503 (containsKey!4353 (_2!32380 (h!61389 (toList!7467 lm!2280))) key!5428))))

(assert (=> d!1545067 true))

(declare-fun _$29!796 () Unit!142711)

(assert (=> d!1545067 (= (choose!35071 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401 key!5428) _$29!796)))

(declare-fun b!4823975 () Bool)

(assert (=> b!4823975 (= e!3014170 (contains!18756 lt!1971401 key!5428))))

(assert (= (and d!1545067 (not res!2053503)) b!4823975))

(assert (=> d!1545067 m!5812530))

(assert (=> d!1545067 m!5812530))

(assert (=> d!1545067 m!5812532))

(assert (=> d!1545067 m!5812520))

(assert (=> b!4823975 m!5812506))

(assert (=> d!1544901 d!1545067))

(assert (=> d!1544901 d!1544861))

(assert (=> d!1544901 d!1544863))

(assert (=> d!1544901 d!1544903))

(assert (=> d!1544901 d!1545039))

(declare-fun d!1545075 () Bool)

(declare-fun res!2053504 () Bool)

(declare-fun e!3014171 () Bool)

(assert (=> d!1545075 (=> res!2053504 e!3014171)))

(assert (=> d!1545075 (= res!2053504 ((_ is Nil!54954) (_2!32380 (h!61389 (toList!7467 lm!2280)))))))

(assert (=> d!1545075 (= (forall!12592 (_2!32380 (h!61389 (toList!7467 lm!2280))) lambda!236202) e!3014171)))

(declare-fun b!4823976 () Bool)

(declare-fun e!3014172 () Bool)

(assert (=> b!4823976 (= e!3014171 e!3014172)))

(declare-fun res!2053505 () Bool)

(assert (=> b!4823976 (=> (not res!2053505) (not e!3014172))))

(assert (=> b!4823976 (= res!2053505 (dynLambda!22207 lambda!236202 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))

(declare-fun b!4823977 () Bool)

(assert (=> b!4823977 (= e!3014172 (forall!12592 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))) lambda!236202))))

(assert (= (and d!1545075 (not res!2053504)) b!4823976))

(assert (= (and b!4823976 res!2053505) b!4823977))

(declare-fun b_lambda!189503 () Bool)

(assert (=> (not b_lambda!189503) (not b!4823976)))

(declare-fun m!5813272 () Bool)

(assert (=> b!4823976 m!5813272))

(declare-fun m!5813274 () Bool)

(assert (=> b!4823977 m!5813274))

(assert (=> d!1544863 d!1545075))

(assert (=> d!1544863 d!1545039))

(declare-fun d!1545077 () Bool)

(declare-fun res!2053506 () Bool)

(declare-fun e!3014173 () Bool)

(assert (=> d!1545077 (=> res!2053506 e!3014173)))

(assert (=> d!1545077 (= res!2053506 (and ((_ is Cons!54954) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (= (_1!32379 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) key!5428)))))

(assert (=> d!1545077 (= (containsKey!4355 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428) e!3014173)))

(declare-fun b!4823978 () Bool)

(declare-fun e!3014174 () Bool)

(assert (=> b!4823978 (= e!3014173 e!3014174)))

(declare-fun res!2053507 () Bool)

(assert (=> b!4823978 (=> (not res!2053507) (not e!3014174))))

(assert (=> b!4823978 (= res!2053507 ((_ is Cons!54954) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))))

(declare-fun b!4823979 () Bool)

(assert (=> b!4823979 (= e!3014174 (containsKey!4355 (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) key!5428))))

(assert (= (and d!1545077 (not res!2053506)) b!4823978))

(assert (= (and b!4823978 res!2053507) b!4823979))

(declare-fun m!5813276 () Bool)

(assert (=> b!4823979 m!5813276))

(assert (=> d!1544903 d!1545077))

(declare-fun bs!1163086 () Bool)

(declare-fun d!1545079 () Bool)

(assert (= bs!1163086 (and d!1545079 b!4823763)))

(declare-fun lambda!236248 () Int)

(assert (=> bs!1163086 (= (= lt!1971401 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236248 lambda!236209))))

(declare-fun bs!1163087 () Bool)

(assert (= bs!1163087 (and d!1545079 b!4823683)))

(assert (=> bs!1163087 (= lambda!236248 lambda!236199)))

(declare-fun bs!1163088 () Bool)

(assert (= bs!1163088 (and d!1545079 d!1544975)))

(assert (=> bs!1163088 (= (= lt!1971401 lt!1971616) (= lambda!236248 lambda!236228))))

(declare-fun bs!1163089 () Bool)

(assert (= bs!1163089 (and d!1545079 d!1544863)))

(assert (=> bs!1163089 (= (= lt!1971401 lt!1971613) (= lambda!236248 lambda!236202))))

(declare-fun bs!1163090 () Bool)

(assert (= bs!1163090 (and d!1545079 b!4823776)))

(assert (=> bs!1163090 (= (= lt!1971401 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (= lambda!236248 lambda!236214))))

(declare-fun bs!1163091 () Bool)

(assert (= bs!1163091 (and d!1545079 b!4823774)))

(assert (=> bs!1163091 (= (= lt!1971401 lt!1971680) (= lambda!236248 lambda!236218))))

(declare-fun bs!1163092 () Bool)

(assert (= bs!1163092 (and d!1545079 b!4823761)))

(assert (=> bs!1163092 (= (= lt!1971401 (extractMap!2674 (t!362575 (t!362575 (toList!7467 lm!2280))))) (= lambda!236248 lambda!236210))))

(assert (=> bs!1163091 (= (= lt!1971401 (+!2531 lt!1971401 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (= lambda!236248 lambda!236215))))

(declare-fun bs!1163093 () Bool)

(assert (= bs!1163093 (and d!1545079 b!4823681)))

(assert (=> bs!1163093 (= lambda!236248 lambda!236200)))

(declare-fun bs!1163094 () Bool)

(assert (= bs!1163094 (and d!1545079 d!1544955)))

(assert (=> bs!1163094 (= (= lt!1971401 lt!1971677) (= lambda!236248 lambda!236221))))

(assert (=> bs!1163093 (= (= lt!1971401 lt!1971616) (= lambda!236248 lambda!236201))))

(assert (=> bs!1163092 (= (= lt!1971401 lt!1971658) (= lambda!236248 lambda!236211))))

(declare-fun bs!1163095 () Bool)

(assert (= bs!1163095 (and d!1545079 d!1544947)))

(assert (=> bs!1163095 (= (= lt!1971401 lt!1971655) (= lambda!236248 lambda!236212))))

(assert (=> d!1545079 true))

(assert (=> d!1545079 (forall!12592 (toList!7468 lt!1971401) lambda!236248)))

(declare-fun lt!1971818 () Unit!142711)

(declare-fun choose!35086 (ListMap!6845) Unit!142711)

(assert (=> d!1545079 (= lt!1971818 (choose!35086 lt!1971401))))

(assert (=> d!1545079 (= (lemmaContainsAllItsOwnKeys!986 lt!1971401) lt!1971818)))

(declare-fun bs!1163096 () Bool)

(assert (= bs!1163096 d!1545079))

(declare-fun m!5813278 () Bool)

(assert (=> bs!1163096 m!5813278))

(declare-fun m!5813280 () Bool)

(assert (=> bs!1163096 m!5813280))

(assert (=> bm!336259 d!1545079))

(declare-fun d!1545081 () Bool)

(declare-fun res!2053508 () Bool)

(declare-fun e!3014175 () Bool)

(assert (=> d!1545081 (=> res!2053508 e!3014175)))

(assert (=> d!1545081 (= res!2053508 ((_ is Nil!54955) (t!362575 (toList!7467 lt!1971402))))))

(assert (=> d!1545081 (= (forall!12590 (t!362575 (toList!7467 lt!1971402)) lambda!236124) e!3014175)))

(declare-fun b!4823980 () Bool)

(declare-fun e!3014176 () Bool)

(assert (=> b!4823980 (= e!3014175 e!3014176)))

(declare-fun res!2053509 () Bool)

(assert (=> b!4823980 (=> (not res!2053509) (not e!3014176))))

(assert (=> b!4823980 (= res!2053509 (dynLambda!22206 lambda!236124 (h!61389 (t!362575 (toList!7467 lt!1971402)))))))

(declare-fun b!4823981 () Bool)

(assert (=> b!4823981 (= e!3014176 (forall!12590 (t!362575 (t!362575 (toList!7467 lt!1971402))) lambda!236124))))

(assert (= (and d!1545081 (not res!2053508)) b!4823980))

(assert (= (and b!4823980 res!2053509) b!4823981))

(declare-fun b_lambda!189505 () Bool)

(assert (=> (not b_lambda!189505) (not b!4823980)))

(declare-fun m!5813282 () Bool)

(assert (=> b!4823980 m!5813282))

(declare-fun m!5813284 () Bool)

(assert (=> b!4823981 m!5813284))

(assert (=> b!4823597 d!1545081))

(declare-fun d!1545083 () Bool)

(declare-fun res!2053510 () Bool)

(declare-fun e!3014177 () Bool)

(assert (=> d!1545083 (=> res!2053510 e!3014177)))

(assert (=> d!1545083 (= res!2053510 ((_ is Nil!54954) (toList!7468 lt!1971401)))))

(assert (=> d!1545083 (= (forall!12592 (toList!7468 lt!1971401) (ite c!821934 lambda!236199 lambda!236200)) e!3014177)))

(declare-fun b!4823982 () Bool)

(declare-fun e!3014178 () Bool)

(assert (=> b!4823982 (= e!3014177 e!3014178)))

(declare-fun res!2053511 () Bool)

(assert (=> b!4823982 (=> (not res!2053511) (not e!3014178))))

(assert (=> b!4823982 (= res!2053511 (dynLambda!22207 (ite c!821934 lambda!236199 lambda!236200) (h!61388 (toList!7468 lt!1971401))))))

(declare-fun b!4823983 () Bool)

(assert (=> b!4823983 (= e!3014178 (forall!12592 (t!362574 (toList!7468 lt!1971401)) (ite c!821934 lambda!236199 lambda!236200)))))

(assert (= (and d!1545083 (not res!2053510)) b!4823982))

(assert (= (and b!4823982 res!2053511) b!4823983))

(declare-fun b_lambda!189507 () Bool)

(assert (=> (not b_lambda!189507) (not b!4823982)))

(declare-fun m!5813286 () Bool)

(assert (=> b!4823982 m!5813286))

(declare-fun m!5813288 () Bool)

(assert (=> b!4823983 m!5813288))

(assert (=> bm!336258 d!1545083))

(declare-fun d!1545085 () Bool)

(declare-fun res!2053512 () Bool)

(declare-fun e!3014179 () Bool)

(assert (=> d!1545085 (=> res!2053512 e!3014179)))

(assert (=> d!1545085 (= res!2053512 (not ((_ is Cons!54954) (_2!32380 (h!61389 (toList!7467 lt!1971402))))))))

(assert (=> d!1545085 (= (noDuplicateKeys!2446 (_2!32380 (h!61389 (toList!7467 lt!1971402)))) e!3014179)))

(declare-fun b!4823986 () Bool)

(declare-fun e!3014180 () Bool)

(assert (=> b!4823986 (= e!3014179 e!3014180)))

(declare-fun res!2053513 () Bool)

(assert (=> b!4823986 (=> (not res!2053513) (not e!3014180))))

(assert (=> b!4823986 (= res!2053513 (not (containsKey!4353 (t!362574 (_2!32380 (h!61389 (toList!7467 lt!1971402)))) (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lt!1971402))))))))))

(declare-fun b!4823987 () Bool)

(assert (=> b!4823987 (= e!3014180 (noDuplicateKeys!2446 (t!362574 (_2!32380 (h!61389 (toList!7467 lt!1971402))))))))

(assert (= (and d!1545085 (not res!2053512)) b!4823986))

(assert (= (and b!4823986 res!2053513) b!4823987))

(declare-fun m!5813290 () Bool)

(assert (=> b!4823986 m!5813290))

(declare-fun m!5813292 () Bool)

(assert (=> b!4823987 m!5813292))

(assert (=> bs!1162997 d!1545085))

(assert (=> b!4823684 d!1544953))

(declare-fun bs!1163112 () Bool)

(declare-fun b!4824040 () Bool)

(assert (= bs!1163112 (and b!4824040 b!4823907)))

(declare-fun lambda!236272 () Int)

(assert (=> bs!1163112 (= (= (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (= lambda!236272 lambda!236237))))

(declare-fun bs!1163113 () Bool)

(assert (= bs!1163113 (and b!4824040 b!4823912)))

(assert (=> bs!1163113 (= (= (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (toList!7468 lt!1971401)) (= lambda!236272 lambda!236239))))

(assert (=> b!4824040 true))

(declare-fun bs!1163115 () Bool)

(declare-fun b!4824039 () Bool)

(assert (= bs!1163115 (and b!4824039 b!4823907)))

(declare-fun lambda!236273 () Int)

(assert (=> bs!1163115 (= (= (Cons!54954 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (= lambda!236273 lambda!236237))))

(declare-fun bs!1163116 () Bool)

(assert (= bs!1163116 (and b!4824039 b!4823912)))

(assert (=> bs!1163116 (= (= (Cons!54954 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) (toList!7468 lt!1971401)) (= lambda!236273 lambda!236239))))

(declare-fun bs!1163117 () Bool)

(assert (= bs!1163117 (and b!4824039 b!4824040)))

(assert (=> bs!1163117 (= (= (Cons!54954 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) (= lambda!236273 lambda!236272))))

(assert (=> b!4824039 true))

(declare-fun bs!1163118 () Bool)

(declare-fun b!4824042 () Bool)

(assert (= bs!1163118 (and b!4824042 b!4823907)))

(declare-fun lambda!236274 () Int)

(assert (=> bs!1163118 (= lambda!236274 lambda!236237)))

(declare-fun bs!1163119 () Bool)

(assert (= bs!1163119 (and b!4824042 b!4823912)))

(assert (=> bs!1163119 (= (= (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) (toList!7468 lt!1971401)) (= lambda!236274 lambda!236239))))

(declare-fun bs!1163120 () Bool)

(assert (= bs!1163120 (and b!4824042 b!4824040)))

(assert (=> bs!1163120 (= (= (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) (= lambda!236274 lambda!236272))))

(declare-fun bs!1163121 () Bool)

(assert (= bs!1163121 (and b!4824042 b!4824039)))

(assert (=> bs!1163121 (= (= (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) (Cons!54954 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))) (= lambda!236274 lambda!236273))))

(assert (=> b!4824042 true))

(declare-fun bs!1163122 () Bool)

(declare-fun b!4824041 () Bool)

(assert (= bs!1163122 (and b!4824041 b!4823908)))

(declare-fun lambda!236275 () Int)

(assert (=> bs!1163122 (= lambda!236275 lambda!236238)))

(declare-fun bs!1163123 () Bool)

(assert (= bs!1163123 (and b!4824041 b!4823913)))

(assert (=> bs!1163123 (= lambda!236275 lambda!236240)))

(declare-fun b!4824037 () Bool)

(declare-fun res!2053535 () Bool)

(declare-fun e!3014207 () Bool)

(assert (=> b!4824037 (=> (not res!2053535) (not e!3014207))))

(declare-fun lt!1971860 () List!55081)

(assert (=> b!4824037 (= res!2053535 (= (length!768 lt!1971860) (length!769 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))))))

(declare-fun b!4824038 () Bool)

(assert (=> b!4824038 false))

(declare-fun e!3014208 () Unit!142711)

(declare-fun Unit!142792 () Unit!142711)

(assert (=> b!4824038 (= e!3014208 Unit!142792)))

(declare-fun e!3014206 () List!55081)

(assert (=> b!4824039 (= e!3014206 (Cons!54957 (_1!32379 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) (getKeysList!1154 (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))))))

(declare-fun c!822004 () Bool)

(assert (=> b!4824039 (= c!822004 (containsKey!4355 (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (_1!32379 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))))))

(declare-fun lt!1971857 () Unit!142711)

(assert (=> b!4824039 (= lt!1971857 e!3014208)))

(declare-fun c!822006 () Bool)

(assert (=> b!4824039 (= c!822006 (contains!18759 (getKeysList!1154 (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) (_1!32379 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))))))

(declare-fun lt!1971859 () Unit!142711)

(declare-fun e!3014205 () Unit!142711)

(assert (=> b!4824039 (= lt!1971859 e!3014205)))

(declare-fun lt!1971858 () List!55081)

(assert (=> b!4824039 (= lt!1971858 (getKeysList!1154 (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))))))

(declare-fun lt!1971861 () Unit!142711)

(declare-fun lemmaForallContainsAddHeadPreserves!371 (List!55078 List!55081 tuple2!58170) Unit!142711)

(assert (=> b!4824039 (= lt!1971861 (lemmaForallContainsAddHeadPreserves!371 (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) lt!1971858 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))))))

(assert (=> b!4824039 (forall!12594 lt!1971858 lambda!236273)))

(declare-fun lt!1971862 () Unit!142711)

(assert (=> b!4824039 (= lt!1971862 lt!1971861)))

(declare-fun d!1545087 () Bool)

(assert (=> d!1545087 e!3014207))

(declare-fun res!2053533 () Bool)

(assert (=> d!1545087 (=> (not res!2053533) (not e!3014207))))

(assert (=> d!1545087 (= res!2053533 (noDuplicate!956 lt!1971860))))

(assert (=> d!1545087 (= lt!1971860 e!3014206)))

(declare-fun c!822005 () Bool)

(assert (=> d!1545087 (= c!822005 ((_ is Cons!54954) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))))

(assert (=> d!1545087 (invariantList!1807 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))))

(assert (=> d!1545087 (= (getKeysList!1154 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) lt!1971860)))

(assert (=> b!4824040 false))

(declare-fun lt!1971863 () Unit!142711)

(declare-fun forallContained!4376 (List!55081 Int K!16639) Unit!142711)

(assert (=> b!4824040 (= lt!1971863 (forallContained!4376 (getKeysList!1154 (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) lambda!236272 (_1!32379 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))))))

(declare-fun Unit!142793 () Unit!142711)

(assert (=> b!4824040 (= e!3014205 Unit!142793)))

(assert (=> b!4824041 (= e!3014207 (= (content!9814 lt!1971860) (content!9814 (map!12572 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) lambda!236275))))))

(declare-fun res!2053534 () Bool)

(assert (=> b!4824042 (=> (not res!2053534) (not e!3014207))))

(assert (=> b!4824042 (= res!2053534 (forall!12594 lt!1971860 lambda!236274))))

(declare-fun b!4824043 () Bool)

(declare-fun Unit!142794 () Unit!142711)

(assert (=> b!4824043 (= e!3014208 Unit!142794)))

(declare-fun b!4824044 () Bool)

(declare-fun Unit!142795 () Unit!142711)

(assert (=> b!4824044 (= e!3014205 Unit!142795)))

(declare-fun b!4824045 () Bool)

(assert (=> b!4824045 (= e!3014206 Nil!54957)))

(assert (= (and d!1545087 c!822005) b!4824039))

(assert (= (and d!1545087 (not c!822005)) b!4824045))

(assert (= (and b!4824039 c!822004) b!4824038))

(assert (= (and b!4824039 (not c!822004)) b!4824043))

(assert (= (and b!4824039 c!822006) b!4824040))

(assert (= (and b!4824039 (not c!822006)) b!4824044))

(assert (= (and d!1545087 res!2053533) b!4824037))

(assert (= (and b!4824037 res!2053535) b!4824042))

(assert (= (and b!4824042 res!2053534) b!4824041))

(declare-fun m!5813344 () Bool)

(assert (=> b!4824039 m!5813344))

(declare-fun m!5813346 () Bool)

(assert (=> b!4824039 m!5813346))

(assert (=> b!4824039 m!5813346))

(declare-fun m!5813348 () Bool)

(assert (=> b!4824039 m!5813348))

(declare-fun m!5813350 () Bool)

(assert (=> b!4824039 m!5813350))

(declare-fun m!5813352 () Bool)

(assert (=> b!4824039 m!5813352))

(assert (=> b!4824040 m!5813346))

(assert (=> b!4824040 m!5813346))

(declare-fun m!5813354 () Bool)

(assert (=> b!4824040 m!5813354))

(declare-fun m!5813356 () Bool)

(assert (=> b!4824037 m!5813356))

(assert (=> b!4824037 m!5813146))

(declare-fun m!5813358 () Bool)

(assert (=> b!4824042 m!5813358))

(declare-fun m!5813360 () Bool)

(assert (=> d!1545087 m!5813360))

(assert (=> d!1545087 m!5813080))

(declare-fun m!5813362 () Bool)

(assert (=> b!4824041 m!5813362))

(declare-fun m!5813364 () Bool)

(assert (=> b!4824041 m!5813364))

(assert (=> b!4824041 m!5813364))

(declare-fun m!5813366 () Bool)

(assert (=> b!4824041 m!5813366))

(assert (=> b!4823693 d!1545087))

(declare-fun d!1545105 () Bool)

(assert (=> d!1545105 (= (isDefined!10599 (getValueByKey!2612 (toList!7467 lm!2280) lt!1971398)) (not (isEmpty!29646 (getValueByKey!2612 (toList!7467 lm!2280) lt!1971398))))))

(declare-fun bs!1163130 () Bool)

(assert (= bs!1163130 d!1545105))

(assert (=> bs!1163130 m!5812600))

(declare-fun m!5813378 () Bool)

(assert (=> bs!1163130 m!5813378))

(assert (=> b!4823592 d!1545105))

(assert (=> b!4823592 d!1544939))

(declare-fun d!1545107 () Bool)

(declare-fun res!2053549 () Bool)

(declare-fun e!3014220 () Bool)

(assert (=> d!1545107 (=> res!2053549 e!3014220)))

(assert (=> d!1545107 (= res!2053549 (and ((_ is Cons!54955) (toList!7467 lt!1971402)) (= (_1!32380 (h!61389 (toList!7467 lt!1971402))) lt!1971398)))))

(assert (=> d!1545107 (= (containsKey!4356 (toList!7467 lt!1971402) lt!1971398) e!3014220)))

(declare-fun b!4824061 () Bool)

(declare-fun e!3014221 () Bool)

(assert (=> b!4824061 (= e!3014220 e!3014221)))

(declare-fun res!2053550 () Bool)

(assert (=> b!4824061 (=> (not res!2053550) (not e!3014221))))

(assert (=> b!4824061 (= res!2053550 (and (or (not ((_ is Cons!54955) (toList!7467 lt!1971402))) (bvsle (_1!32380 (h!61389 (toList!7467 lt!1971402))) lt!1971398)) ((_ is Cons!54955) (toList!7467 lt!1971402)) (bvslt (_1!32380 (h!61389 (toList!7467 lt!1971402))) lt!1971398)))))

(declare-fun b!4824062 () Bool)

(assert (=> b!4824062 (= e!3014221 (containsKey!4356 (t!362575 (toList!7467 lt!1971402)) lt!1971398))))

(assert (= (and d!1545107 (not res!2053549)) b!4824061))

(assert (= (and b!4824061 res!2053550) b!4824062))

(declare-fun m!5813382 () Bool)

(assert (=> b!4824062 m!5813382))

(assert (=> d!1544853 d!1545107))

(declare-fun d!1545113 () Bool)

(assert (=> d!1545113 (isDefined!10599 (getValueByKey!2612 (toList!7467 lm!2280) lt!1971398))))

(declare-fun lt!1971866 () Unit!142711)

(assert (=> d!1545113 (= lt!1971866 (choose!35083 (toList!7467 lm!2280) lt!1971398))))

(declare-fun e!3014224 () Bool)

(assert (=> d!1545113 e!3014224))

(declare-fun res!2053551 () Bool)

(assert (=> d!1545113 (=> (not res!2053551) (not e!3014224))))

(assert (=> d!1545113 (= res!2053551 (isStrictlySorted!979 (toList!7467 lm!2280)))))

(assert (=> d!1545113 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2396 (toList!7467 lm!2280) lt!1971398) lt!1971866)))

(declare-fun b!4824067 () Bool)

(assert (=> b!4824067 (= e!3014224 (containsKey!4356 (toList!7467 lm!2280) lt!1971398))))

(assert (= (and d!1545113 res!2053551) b!4824067))

(assert (=> d!1545113 m!5812600))

(assert (=> d!1545113 m!5812600))

(assert (=> d!1545113 m!5812602))

(declare-fun m!5813386 () Bool)

(assert (=> d!1545113 m!5813386))

(assert (=> d!1545113 m!5812572))

(assert (=> b!4824067 m!5812596))

(assert (=> b!4823590 d!1545113))

(assert (=> b!4823590 d!1545105))

(assert (=> b!4823590 d!1544939))

(assert (=> b!4823576 d!1545019))

(declare-fun d!1545117 () Bool)

(assert (=> d!1545117 (containsKey!4355 (toList!7468 lt!1971401) key!5428)))

(declare-fun lt!1971890 () Unit!142711)

(declare-fun choose!35087 (List!55078 K!16639) Unit!142711)

(assert (=> d!1545117 (= lt!1971890 (choose!35087 (toList!7468 lt!1971401) key!5428))))

(assert (=> d!1545117 (invariantList!1807 (toList!7468 lt!1971401))))

(assert (=> d!1545117 (= (lemmaInGetKeysListThenContainsKey!1154 (toList!7468 lt!1971401) key!5428) lt!1971890)))

(declare-fun bs!1163146 () Bool)

(assert (= bs!1163146 d!1545117))

(assert (=> bs!1163146 m!5812584))

(declare-fun m!5813388 () Bool)

(assert (=> bs!1163146 m!5813388))

(assert (=> bs!1163146 m!5813124))

(assert (=> b!4823576 d!1545117))

(declare-fun d!1545119 () Bool)

(declare-fun res!2053555 () Bool)

(declare-fun e!3014228 () Bool)

(assert (=> d!1545119 (=> res!2053555 e!3014228)))

(assert (=> d!1545119 (= res!2053555 ((_ is Nil!54955) (t!362575 (toList!7467 lm!2280))))))

(assert (=> d!1545119 (= (forall!12590 (t!362575 (toList!7467 lm!2280)) lambda!236124) e!3014228)))

(declare-fun b!4824073 () Bool)

(declare-fun e!3014229 () Bool)

(assert (=> b!4824073 (= e!3014228 e!3014229)))

(declare-fun res!2053556 () Bool)

(assert (=> b!4824073 (=> (not res!2053556) (not e!3014229))))

(assert (=> b!4824073 (= res!2053556 (dynLambda!22206 lambda!236124 (h!61389 (t!362575 (toList!7467 lm!2280)))))))

(declare-fun b!4824074 () Bool)

(assert (=> b!4824074 (= e!3014229 (forall!12590 (t!362575 (t!362575 (toList!7467 lm!2280))) lambda!236124))))

(assert (= (and d!1545119 (not res!2053555)) b!4824073))

(assert (= (and b!4824073 res!2053556) b!4824074))

(declare-fun b_lambda!189513 () Bool)

(assert (=> (not b_lambda!189513) (not b!4824073)))

(declare-fun m!5813390 () Bool)

(assert (=> b!4824073 m!5813390))

(declare-fun m!5813392 () Bool)

(assert (=> b!4824074 m!5813392))

(assert (=> b!4823548 d!1545119))

(declare-fun d!1545121 () Bool)

(assert (=> d!1545121 (= (get!18815 (getValueByKey!2612 (toList!7467 lm!2280) (_1!32380 (h!61389 (toList!7467 lm!2280))))) (v!49159 (getValueByKey!2612 (toList!7467 lm!2280) (_1!32380 (h!61389 (toList!7467 lm!2280))))))))

(assert (=> d!1544855 d!1545121))

(declare-fun b!4824077 () Bool)

(declare-fun e!3014231 () Option!13485)

(assert (=> b!4824077 (= e!3014231 (getValueByKey!2612 (t!362575 (toList!7467 lm!2280)) (_1!32380 (h!61389 (toList!7467 lm!2280)))))))

(declare-fun b!4824075 () Bool)

(declare-fun e!3014230 () Option!13485)

(assert (=> b!4824075 (= e!3014230 (Some!13484 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))

(declare-fun d!1545123 () Bool)

(declare-fun c!822010 () Bool)

(assert (=> d!1545123 (= c!822010 (and ((_ is Cons!54955) (toList!7467 lm!2280)) (= (_1!32380 (h!61389 (toList!7467 lm!2280))) (_1!32380 (h!61389 (toList!7467 lm!2280))))))))

(assert (=> d!1545123 (= (getValueByKey!2612 (toList!7467 lm!2280) (_1!32380 (h!61389 (toList!7467 lm!2280)))) e!3014230)))

(declare-fun b!4824078 () Bool)

(assert (=> b!4824078 (= e!3014231 None!13484)))

(declare-fun b!4824076 () Bool)

(assert (=> b!4824076 (= e!3014230 e!3014231)))

(declare-fun c!822011 () Bool)

(assert (=> b!4824076 (= c!822011 (and ((_ is Cons!54955) (toList!7467 lm!2280)) (not (= (_1!32380 (h!61389 (toList!7467 lm!2280))) (_1!32380 (h!61389 (toList!7467 lm!2280)))))))))

(assert (= (and d!1545123 c!822010) b!4824075))

(assert (= (and d!1545123 (not c!822010)) b!4824076))

(assert (= (and b!4824076 c!822011) b!4824077))

(assert (= (and b!4824076 (not c!822011)) b!4824078))

(declare-fun m!5813394 () Bool)

(assert (=> b!4824077 m!5813394))

(assert (=> d!1544855 d!1545123))

(declare-fun d!1545125 () Bool)

(declare-fun res!2053557 () Bool)

(declare-fun e!3014232 () Bool)

(assert (=> d!1545125 (=> res!2053557 e!3014232)))

(assert (=> d!1545125 (= res!2053557 ((_ is Nil!54954) (toList!7468 lt!1971401)))))

(assert (=> d!1545125 (= (forall!12592 (toList!7468 lt!1971401) lambda!236202) e!3014232)))

(declare-fun b!4824079 () Bool)

(declare-fun e!3014233 () Bool)

(assert (=> b!4824079 (= e!3014232 e!3014233)))

(declare-fun res!2053558 () Bool)

(assert (=> b!4824079 (=> (not res!2053558) (not e!3014233))))

(assert (=> b!4824079 (= res!2053558 (dynLambda!22207 lambda!236202 (h!61388 (toList!7468 lt!1971401))))))

(declare-fun b!4824080 () Bool)

(assert (=> b!4824080 (= e!3014233 (forall!12592 (t!362574 (toList!7468 lt!1971401)) lambda!236202))))

(assert (= (and d!1545125 (not res!2053557)) b!4824079))

(assert (= (and b!4824079 res!2053558) b!4824080))

(declare-fun b_lambda!189515 () Bool)

(assert (=> (not b_lambda!189515) (not b!4824079)))

(declare-fun m!5813396 () Bool)

(assert (=> b!4824079 m!5813396))

(declare-fun m!5813398 () Bool)

(assert (=> b!4824080 m!5813398))

(assert (=> b!4823682 d!1545125))

(assert (=> b!4823691 d!1545077))

(declare-fun d!1545127 () Bool)

(assert (=> d!1545127 (containsKey!4355 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428)))

(declare-fun lt!1971891 () Unit!142711)

(assert (=> d!1545127 (= lt!1971891 (choose!35087 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428))))

(assert (=> d!1545127 (invariantList!1807 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))))

(assert (=> d!1545127 (= (lemmaInGetKeysListThenContainsKey!1154 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)) key!5428) lt!1971891)))

(declare-fun bs!1163149 () Bool)

(assert (= bs!1163149 d!1545127))

(assert (=> bs!1163149 m!5812784))

(declare-fun m!5813400 () Bool)

(assert (=> bs!1163149 m!5813400))

(assert (=> bs!1163149 m!5813080))

(assert (=> b!4823691 d!1545127))

(declare-fun bs!1163150 () Bool)

(declare-fun b!4824084 () Bool)

(assert (= bs!1163150 (and b!4824084 b!4824039)))

(declare-fun lambda!236281 () Int)

(assert (=> bs!1163150 (= (= (t!362574 (toList!7468 lt!1971401)) (Cons!54954 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))) (= lambda!236281 lambda!236273))))

(declare-fun bs!1163151 () Bool)

(assert (= bs!1163151 (and b!4824084 b!4824042)))

(assert (=> bs!1163151 (= (= (t!362574 (toList!7468 lt!1971401)) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (= lambda!236281 lambda!236274))))

(declare-fun bs!1163152 () Bool)

(assert (= bs!1163152 (and b!4824084 b!4823907)))

(assert (=> bs!1163152 (= (= (t!362574 (toList!7468 lt!1971401)) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (= lambda!236281 lambda!236237))))

(declare-fun bs!1163153 () Bool)

(assert (= bs!1163153 (and b!4824084 b!4823912)))

(assert (=> bs!1163153 (= (= (t!362574 (toList!7468 lt!1971401)) (toList!7468 lt!1971401)) (= lambda!236281 lambda!236239))))

(declare-fun bs!1163154 () Bool)

(assert (= bs!1163154 (and b!4824084 b!4824040)))

(assert (=> bs!1163154 (= (= (t!362574 (toList!7468 lt!1971401)) (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) (= lambda!236281 lambda!236272))))

(assert (=> b!4824084 true))

(declare-fun bs!1163155 () Bool)

(declare-fun b!4824083 () Bool)

(assert (= bs!1163155 (and b!4824083 b!4824039)))

(declare-fun lambda!236282 () Int)

(assert (=> bs!1163155 (= (= (Cons!54954 (h!61388 (toList!7468 lt!1971401)) (t!362574 (toList!7468 lt!1971401))) (Cons!54954 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))) (= lambda!236282 lambda!236273))))

(declare-fun bs!1163156 () Bool)

(assert (= bs!1163156 (and b!4824083 b!4824042)))

(assert (=> bs!1163156 (= (= (Cons!54954 (h!61388 (toList!7468 lt!1971401)) (t!362574 (toList!7468 lt!1971401))) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (= lambda!236282 lambda!236274))))

(declare-fun bs!1163157 () Bool)

(assert (= bs!1163157 (and b!4824083 b!4823907)))

(assert (=> bs!1163157 (= (= (Cons!54954 (h!61388 (toList!7468 lt!1971401)) (t!362574 (toList!7468 lt!1971401))) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (= lambda!236282 lambda!236237))))

(declare-fun bs!1163158 () Bool)

(assert (= bs!1163158 (and b!4824083 b!4823912)))

(assert (=> bs!1163158 (= (= (Cons!54954 (h!61388 (toList!7468 lt!1971401)) (t!362574 (toList!7468 lt!1971401))) (toList!7468 lt!1971401)) (= lambda!236282 lambda!236239))))

(declare-fun bs!1163159 () Bool)

(assert (= bs!1163159 (and b!4824083 b!4824084)))

(assert (=> bs!1163159 (= (= (Cons!54954 (h!61388 (toList!7468 lt!1971401)) (t!362574 (toList!7468 lt!1971401))) (t!362574 (toList!7468 lt!1971401))) (= lambda!236282 lambda!236281))))

(declare-fun bs!1163161 () Bool)

(assert (= bs!1163161 (and b!4824083 b!4824040)))

(assert (=> bs!1163161 (= (= (Cons!54954 (h!61388 (toList!7468 lt!1971401)) (t!362574 (toList!7468 lt!1971401))) (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) (= lambda!236282 lambda!236272))))

(assert (=> b!4824083 true))

(declare-fun bs!1163164 () Bool)

(declare-fun b!4824086 () Bool)

(assert (= bs!1163164 (and b!4824086 b!4824039)))

(declare-fun lambda!236284 () Int)

(assert (=> bs!1163164 (= (= (toList!7468 lt!1971401) (Cons!54954 (h!61388 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))))) (= lambda!236284 lambda!236273))))

(declare-fun bs!1163166 () Bool)

(assert (= bs!1163166 (and b!4824086 b!4824042)))

(assert (=> bs!1163166 (= (= (toList!7468 lt!1971401) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (= lambda!236284 lambda!236274))))

(declare-fun bs!1163168 () Bool)

(assert (= bs!1163168 (and b!4824086 b!4823907)))

(assert (=> bs!1163168 (= (= (toList!7468 lt!1971401) (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401))) (= lambda!236284 lambda!236237))))

(declare-fun bs!1163169 () Bool)

(assert (= bs!1163169 (and b!4824086 b!4823912)))

(assert (=> bs!1163169 (= lambda!236284 lambda!236239)))

(declare-fun bs!1163172 () Bool)

(assert (= bs!1163172 (and b!4824086 b!4824084)))

(assert (=> bs!1163172 (= (= (toList!7468 lt!1971401) (t!362574 (toList!7468 lt!1971401))) (= lambda!236284 lambda!236281))))

(declare-fun bs!1163174 () Bool)

(assert (= bs!1163174 (and b!4824086 b!4824040)))

(assert (=> bs!1163174 (= (= (toList!7468 lt!1971401) (t!362574 (toList!7468 (addToMapMapFromBucket!1792 (_2!32380 (h!61389 (toList!7467 lm!2280))) lt!1971401)))) (= lambda!236284 lambda!236272))))

(declare-fun bs!1163175 () Bool)

(assert (= bs!1163175 (and b!4824086 b!4824083)))

(assert (=> bs!1163175 (= (= (toList!7468 lt!1971401) (Cons!54954 (h!61388 (toList!7468 lt!1971401)) (t!362574 (toList!7468 lt!1971401)))) (= lambda!236284 lambda!236282))))

(assert (=> b!4824086 true))

(declare-fun bs!1163177 () Bool)

(declare-fun b!4824085 () Bool)

(assert (= bs!1163177 (and b!4824085 b!4823908)))

(declare-fun lambda!236285 () Int)

(assert (=> bs!1163177 (= lambda!236285 lambda!236238)))

(declare-fun bs!1163179 () Bool)

(assert (= bs!1163179 (and b!4824085 b!4823913)))

(assert (=> bs!1163179 (= lambda!236285 lambda!236240)))

(declare-fun bs!1163180 () Bool)

(assert (= bs!1163180 (and b!4824085 b!4824041)))

(assert (=> bs!1163180 (= lambda!236285 lambda!236275)))

(declare-fun b!4824081 () Bool)

(declare-fun res!2053561 () Bool)

(declare-fun e!3014236 () Bool)

(assert (=> b!4824081 (=> (not res!2053561) (not e!3014236))))

(declare-fun lt!1971895 () List!55081)

(assert (=> b!4824081 (= res!2053561 (= (length!768 lt!1971895) (length!769 (toList!7468 lt!1971401))))))

(declare-fun b!4824082 () Bool)

(assert (=> b!4824082 false))

(declare-fun e!3014237 () Unit!142711)

(declare-fun Unit!142807 () Unit!142711)

(assert (=> b!4824082 (= e!3014237 Unit!142807)))

(declare-fun e!3014235 () List!55081)

(assert (=> b!4824083 (= e!3014235 (Cons!54957 (_1!32379 (h!61388 (toList!7468 lt!1971401))) (getKeysList!1154 (t!362574 (toList!7468 lt!1971401)))))))

(declare-fun c!822012 () Bool)

(assert (=> b!4824083 (= c!822012 (containsKey!4355 (t!362574 (toList!7468 lt!1971401)) (_1!32379 (h!61388 (toList!7468 lt!1971401)))))))

(declare-fun lt!1971892 () Unit!142711)

(assert (=> b!4824083 (= lt!1971892 e!3014237)))

(declare-fun c!822014 () Bool)

(assert (=> b!4824083 (= c!822014 (contains!18759 (getKeysList!1154 (t!362574 (toList!7468 lt!1971401))) (_1!32379 (h!61388 (toList!7468 lt!1971401)))))))

(declare-fun lt!1971894 () Unit!142711)

(declare-fun e!3014234 () Unit!142711)

(assert (=> b!4824083 (= lt!1971894 e!3014234)))

(declare-fun lt!1971893 () List!55081)

(assert (=> b!4824083 (= lt!1971893 (getKeysList!1154 (t!362574 (toList!7468 lt!1971401))))))

(declare-fun lt!1971896 () Unit!142711)

(assert (=> b!4824083 (= lt!1971896 (lemmaForallContainsAddHeadPreserves!371 (t!362574 (toList!7468 lt!1971401)) lt!1971893 (h!61388 (toList!7468 lt!1971401))))))

(assert (=> b!4824083 (forall!12594 lt!1971893 lambda!236282)))

(declare-fun lt!1971897 () Unit!142711)

(assert (=> b!4824083 (= lt!1971897 lt!1971896)))

(declare-fun d!1545129 () Bool)

(assert (=> d!1545129 e!3014236))

(declare-fun res!2053559 () Bool)

(assert (=> d!1545129 (=> (not res!2053559) (not e!3014236))))

(assert (=> d!1545129 (= res!2053559 (noDuplicate!956 lt!1971895))))

(assert (=> d!1545129 (= lt!1971895 e!3014235)))

(declare-fun c!822013 () Bool)

(assert (=> d!1545129 (= c!822013 ((_ is Cons!54954) (toList!7468 lt!1971401)))))

(assert (=> d!1545129 (invariantList!1807 (toList!7468 lt!1971401))))

(assert (=> d!1545129 (= (getKeysList!1154 (toList!7468 lt!1971401)) lt!1971895)))

(assert (=> b!4824084 false))

(declare-fun lt!1971898 () Unit!142711)

(assert (=> b!4824084 (= lt!1971898 (forallContained!4376 (getKeysList!1154 (t!362574 (toList!7468 lt!1971401))) lambda!236281 (_1!32379 (h!61388 (toList!7468 lt!1971401)))))))

(declare-fun Unit!142808 () Unit!142711)

(assert (=> b!4824084 (= e!3014234 Unit!142808)))

(assert (=> b!4824085 (= e!3014236 (= (content!9814 lt!1971895) (content!9814 (map!12572 (toList!7468 lt!1971401) lambda!236285))))))

(declare-fun res!2053560 () Bool)

(assert (=> b!4824086 (=> (not res!2053560) (not e!3014236))))

(assert (=> b!4824086 (= res!2053560 (forall!12594 lt!1971895 lambda!236284))))

(declare-fun b!4824087 () Bool)

(declare-fun Unit!142809 () Unit!142711)

(assert (=> b!4824087 (= e!3014237 Unit!142809)))

(declare-fun b!4824088 () Bool)

(declare-fun Unit!142810 () Unit!142711)

(assert (=> b!4824088 (= e!3014234 Unit!142810)))

(declare-fun b!4824089 () Bool)

(assert (=> b!4824089 (= e!3014235 Nil!54957)))

(assert (= (and d!1545129 c!822013) b!4824083))

(assert (= (and d!1545129 (not c!822013)) b!4824089))

(assert (= (and b!4824083 c!822012) b!4824082))

(assert (= (and b!4824083 (not c!822012)) b!4824087))

(assert (= (and b!4824083 c!822014) b!4824084))

(assert (= (and b!4824083 (not c!822014)) b!4824088))

(assert (= (and d!1545129 res!2053559) b!4824081))

(assert (= (and b!4824081 res!2053561) b!4824086))

(assert (= (and b!4824086 res!2053560) b!4824085))

(declare-fun m!5813402 () Bool)

(assert (=> b!4824083 m!5813402))

(declare-fun m!5813404 () Bool)

(assert (=> b!4824083 m!5813404))

(assert (=> b!4824083 m!5813404))

(declare-fun m!5813406 () Bool)

(assert (=> b!4824083 m!5813406))

(declare-fun m!5813408 () Bool)

(assert (=> b!4824083 m!5813408))

(declare-fun m!5813410 () Bool)

(assert (=> b!4824083 m!5813410))

(assert (=> b!4824084 m!5813404))

(assert (=> b!4824084 m!5813404))

(declare-fun m!5813412 () Bool)

(assert (=> b!4824084 m!5813412))

(declare-fun m!5813414 () Bool)

(assert (=> b!4824081 m!5813414))

(assert (=> b!4824081 m!5813168))

(declare-fun m!5813416 () Bool)

(assert (=> b!4824086 m!5813416))

(declare-fun m!5813418 () Bool)

(assert (=> d!1545129 m!5813418))

(assert (=> d!1545129 m!5813124))

(declare-fun m!5813420 () Bool)

(assert (=> b!4824085 m!5813420))

(declare-fun m!5813422 () Bool)

(assert (=> b!4824085 m!5813422))

(assert (=> b!4824085 m!5813422))

(declare-fun m!5813424 () Bool)

(assert (=> b!4824085 m!5813424))

(assert (=> b!4823578 d!1545129))

(declare-fun tp_is_empty!34437 () Bool)

(declare-fun tp!1362517 () Bool)

(declare-fun b!4824096 () Bool)

(declare-fun e!3014241 () Bool)

(assert (=> b!4824096 (= e!3014241 (and tp_is_empty!34435 tp_is_empty!34437 tp!1362517))))

(assert (=> b!4823711 (= tp!1362513 e!3014241)))

(assert (= (and b!4823711 ((_ is Cons!54954) (_2!32380 (h!61389 (toList!7467 lm!2280))))) b!4824096))

(declare-fun b!4824097 () Bool)

(declare-fun e!3014242 () Bool)

(declare-fun tp!1362518 () Bool)

(declare-fun tp!1362519 () Bool)

(assert (=> b!4824097 (= e!3014242 (and tp!1362518 tp!1362519))))

(assert (=> b!4823711 (= tp!1362514 e!3014242)))

(assert (= (and b!4823711 ((_ is Cons!54955) (t!362575 (toList!7467 lm!2280)))) b!4824097))

(declare-fun b_lambda!189517 () Bool)

(assert (= b_lambda!189503 (or d!1544863 b_lambda!189517)))

(declare-fun bs!1163186 () Bool)

(declare-fun d!1545133 () Bool)

(assert (= bs!1163186 (and d!1545133 d!1544863)))

(assert (=> bs!1163186 (= (dynLambda!22207 lambda!236202 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (contains!18756 lt!1971613 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(declare-fun m!5813462 () Bool)

(assert (=> bs!1163186 m!5813462))

(assert (=> b!4823976 d!1545133))

(declare-fun b_lambda!189519 () Bool)

(assert (= b_lambda!189471 (or d!1544845 b_lambda!189519)))

(declare-fun bs!1163187 () Bool)

(declare-fun d!1545135 () Bool)

(assert (= bs!1163187 (and d!1545135 d!1544845)))

(declare-fun allKeysSameHash!2002 (List!55078 (_ BitVec 64) Hashable!7260) Bool)

(assert (=> bs!1163187 (= (dynLambda!22206 lambda!236128 (h!61389 (toList!7467 lt!1971402))) (allKeysSameHash!2002 (_2!32380 (h!61389 (toList!7467 lt!1971402))) (_1!32380 (h!61389 (toList!7467 lt!1971402))) hashF!1509))))

(declare-fun m!5813470 () Bool)

(assert (=> bs!1163187 m!5813470))

(assert (=> b!4823728 d!1545135))

(declare-fun b_lambda!189521 () Bool)

(assert (= b_lambda!189513 (or start!500192 b_lambda!189521)))

(declare-fun bs!1163188 () Bool)

(declare-fun d!1545137 () Bool)

(assert (= bs!1163188 (and d!1545137 start!500192)))

(assert (=> bs!1163188 (= (dynLambda!22206 lambda!236124 (h!61389 (t!362575 (toList!7467 lm!2280)))) (noDuplicateKeys!2446 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280))))))))

(assert (=> bs!1163188 m!5812874))

(assert (=> b!4824073 d!1545137))

(declare-fun b_lambda!189523 () Bool)

(assert (= b_lambda!189505 (or start!500192 b_lambda!189523)))

(declare-fun bs!1163189 () Bool)

(declare-fun d!1545141 () Bool)

(assert (= bs!1163189 (and d!1545141 start!500192)))

(assert (=> bs!1163189 (= (dynLambda!22206 lambda!236124 (h!61389 (t!362575 (toList!7467 lt!1971402)))) (noDuplicateKeys!2446 (_2!32380 (h!61389 (t!362575 (toList!7467 lt!1971402))))))))

(declare-fun m!5813474 () Bool)

(assert (=> bs!1163189 m!5813474))

(assert (=> b!4823980 d!1545141))

(declare-fun b_lambda!189525 () Bool)

(assert (= b_lambda!189475 (or b!4823681 b_lambda!189525)))

(declare-fun bs!1163190 () Bool)

(declare-fun d!1545143 () Bool)

(assert (= bs!1163190 (and d!1545143 b!4823681)))

(assert (=> bs!1163190 (= (dynLambda!22207 lambda!236201 (h!61388 (toList!7468 lt!1971401))) (contains!18756 lt!1971616 (_1!32379 (h!61388 (toList!7468 lt!1971401)))))))

(declare-fun m!5813476 () Bool)

(assert (=> bs!1163190 m!5813476))

(assert (=> b!4823771 d!1545143))

(declare-fun b_lambda!189527 () Bool)

(assert (= b_lambda!189499 (or d!1544905 b_lambda!189527)))

(declare-fun bs!1163191 () Bool)

(declare-fun d!1545145 () Bool)

(assert (= bs!1163191 (and d!1545145 d!1544905)))

(assert (=> bs!1163191 (= (dynLambda!22206 lambda!236208 (h!61389 (t!362575 (toList!7467 lm!2280)))) (noDuplicateKeys!2446 (_2!32380 (h!61389 (t!362575 (toList!7467 lm!2280))))))))

(assert (=> bs!1163191 m!5812874))

(assert (=> b!4823948 d!1545145))

(declare-fun b_lambda!189529 () Bool)

(assert (= b_lambda!189479 (or b!4823681 b_lambda!189529)))

(declare-fun bs!1163192 () Bool)

(declare-fun d!1545149 () Bool)

(assert (= bs!1163192 (and d!1545149 b!4823681)))

(assert (=> bs!1163192 (= (dynLambda!22207 lambda!236201 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280))))) (contains!18756 lt!1971616 (_1!32379 (h!61388 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))))

(assert (=> bs!1163192 m!5812742))

(assert (=> d!1544963 d!1545149))

(declare-fun b_lambda!189531 () Bool)

(assert (= b_lambda!189477 (or b!4823681 b_lambda!189531)))

(assert (=> b!4823789 d!1545149))

(declare-fun b_lambda!189533 () Bool)

(assert (= b_lambda!189481 (or b!4823681 b_lambda!189533)))

(declare-fun bs!1163193 () Bool)

(declare-fun d!1545151 () Bool)

(assert (= bs!1163193 (and d!1545151 b!4823681)))

(assert (=> bs!1163193 (= (dynLambda!22207 lambda!236201 (h!61388 (toList!7468 lt!1971608))) (contains!18756 lt!1971616 (_1!32379 (h!61388 (toList!7468 lt!1971608)))))))

(declare-fun m!5813482 () Bool)

(assert (=> bs!1163193 m!5813482))

(assert (=> b!4823810 d!1545151))

(declare-fun b_lambda!189535 () Bool)

(assert (= b_lambda!189493 (or d!1544833 b_lambda!189535)))

(declare-fun bs!1163194 () Bool)

(declare-fun d!1545155 () Bool)

(assert (= bs!1163194 (and d!1545155 d!1544833)))

(assert (=> bs!1163194 (= (dynLambda!22206 lambda!236127 (h!61389 (toList!7467 lm!2280))) (allKeysSameHash!2002 (_2!32380 (h!61389 (toList!7467 lm!2280))) (_1!32380 (h!61389 (toList!7467 lm!2280))) hashF!1509))))

(declare-fun m!5813484 () Bool)

(assert (=> bs!1163194 m!5813484))

(assert (=> b!4823922 d!1545155))

(declare-fun b_lambda!189537 () Bool)

(assert (= b_lambda!189483 (or b!4823681 b_lambda!189537)))

(declare-fun bs!1163196 () Bool)

(declare-fun d!1545157 () Bool)

(assert (= bs!1163196 (and d!1545157 b!4823681)))

(assert (=> bs!1163196 (= (dynLambda!22207 lambda!236201 (h!61388 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280)))))) (contains!18756 lt!1971616 (_1!32379 (h!61388 (t!362574 (_2!32380 (h!61389 (toList!7467 lm!2280))))))))))

(declare-fun m!5813488 () Bool)

(assert (=> bs!1163196 m!5813488))

(assert (=> b!4823812 d!1545157))

(declare-fun b_lambda!189539 () Bool)

(assert (= b_lambda!189515 (or d!1544863 b_lambda!189539)))

(declare-fun bs!1163197 () Bool)

(declare-fun d!1545161 () Bool)

(assert (= bs!1163197 (and d!1545161 d!1544863)))

(assert (=> bs!1163197 (= (dynLambda!22207 lambda!236202 (h!61388 (toList!7468 lt!1971401))) (contains!18756 lt!1971613 (_1!32379 (h!61388 (toList!7468 lt!1971401)))))))

(declare-fun m!5813490 () Bool)

(assert (=> bs!1163197 m!5813490))

(assert (=> b!4824079 d!1545161))

(declare-fun b_lambda!189541 () Bool)

(assert (= b_lambda!189473 (or d!1544899 b_lambda!189541)))

(declare-fun bs!1163198 () Bool)

(declare-fun d!1545163 () Bool)

(assert (= bs!1163198 (and d!1545163 d!1544899)))

(assert (=> bs!1163198 (= (dynLambda!22206 lambda!236205 (h!61389 (toList!7467 lm!2280))) (noDuplicateKeys!2446 (_2!32380 (h!61389 (toList!7467 lm!2280)))))))

(assert (=> bs!1163198 m!5812760))

(assert (=> b!4823730 d!1545163))

(check-sat (not b!4824084) (not bs!1163197) (not d!1545041) (not d!1545079) (not bm!336265) (not b!4823722) (not b!4823879) (not bs!1163188) (not b!4824086) (not d!1545047) (not b!4823941) (not b_lambda!189533) (not b!4824077) (not d!1545105) (not d!1544933) (not b!4823923) (not d!1544931) (not d!1544989) (not b!4823731) (not b!4823773) (not b!4823841) (not d!1545015) (not d!1544963) (not d!1544921) (not b!4823845) (not b_lambda!189517) (not b_lambda!189525) (not d!1545113) (not b!4824041) (not d!1544941) (not b!4823774) (not bs!1163187) (not b!4823949) (not b!4824037) (not b!4824074) (not d!1545127) (not b!4824083) (not b!4823987) (not b!4823840) (not b!4823759) (not b!4823764) (not d!1544955) (not d!1544917) (not b_lambda!189527) (not bs!1163186) (not bs!1163191) (not b!4824080) (not b!4823877) (not b!4823772) (not b!4823928) (not b!4823761) (not d!1545053) (not d!1545087) (not b_lambda!189523) (not b!4823811) (not d!1545017) (not b!4823809) (not b!4823981) (not bs!1163198) (not bs!1163194) (not b_lambda!189519) (not b!4823777) (not b!4823977) (not b_lambda!189537) (not b!4823986) (not d!1545011) (not b!4823964) (not d!1545025) (not bm!336264) (not d!1544945) (not b!4823931) (not b!4823760) (not b!4824097) (not b!4824042) (not b_lambda!189531) (not b!4823884) (not bm!336263) tp_is_empty!34437 (not d!1545067) (not d!1545117) (not b!4823944) (not d!1544995) (not b!4823838) (not bs!1163190) (not b_lambda!189529) (not b!4823921) (not b_lambda!189507) (not b!4823875) (not b!4823929) (not b!4823790) (not b!4823752) (not d!1545007) (not b!4823979) (not b!4823919) (not b!4823913) (not bm!336267) (not bm!336268) (not b!4823837) (not bm!336266) (not b!4823911) (not d!1545033) (not d!1545045) (not b!4823737) (not b!4824067) (not d!1545129) (not b!4823843) (not b_lambda!189521) (not b_lambda!189467) (not b!4823895) (not d!1545009) (not b_lambda!189541) (not b!4824039) (not b!4823874) (not b!4823975) (not b!4823983) (not b!4823813) (not d!1544927) (not b!4823893) (not bs!1163192) (not b!4824085) (not d!1545027) (not b!4823882) (not b_lambda!189539) (not bm!336262) (not b!4824081) (not b!4823729) (not b!4823775) (not d!1544949) (not b!4824040) (not b!4823880) (not d!1544947) (not b!4824062) (not bs!1163189) (not bs!1163193) (not b!4823839) (not b!4823878) (not b!4823908) (not b!4823907) tp_is_empty!34435 (not b!4823741) (not b!4824096) (not b_lambda!189469) (not b_lambda!189489) (not bs!1163196) (not d!1544975) (not b!4823765) (not b!4823938) (not b!4823912) (not b!4823726) (not b!4823762) (not bm!336273) (not b_lambda!189535) (not b!4823906) (not b!4823739) (not b!4823876))
(check-sat)
