; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!500352 () Bool)

(assert start!500352)

(declare-fun b!4824206 () Bool)

(declare-fun e!3014322 () Bool)

(declare-fun tp!1362530 () Bool)

(assert (=> b!4824206 (= e!3014322 tp!1362530)))

(declare-fun b!4824207 () Bool)

(declare-fun res!2053659 () Bool)

(declare-fun e!3014321 () Bool)

(assert (=> b!4824207 (=> (not res!2053659) (not e!3014321))))

(declare-datatypes ((V!16890 0))(
  ( (V!16891 (val!21621 Int)) )
))
(declare-datatypes ((K!16644 0))(
  ( (K!16645 (val!21622 Int)) )
))
(declare-datatypes ((tuple2!58178 0))(
  ( (tuple2!58179 (_1!32383 K!16644) (_2!32383 V!16890)) )
))
(declare-datatypes ((List!55084 0))(
  ( (Nil!54960) (Cons!54960 (h!61394 tuple2!58178) (t!362580 List!55084)) )
))
(declare-datatypes ((tuple2!58180 0))(
  ( (tuple2!58181 (_1!32384 (_ BitVec 64)) (_2!32384 List!55084)) )
))
(declare-datatypes ((List!55085 0))(
  ( (Nil!54961) (Cons!54961 (h!61395 tuple2!58180) (t!362581 List!55085)) )
))
(declare-datatypes ((ListLongMap!5987 0))(
  ( (ListLongMap!5988 (toList!7471 List!55085)) )
))
(declare-fun lm!2280 () ListLongMap!5987)

(declare-datatypes ((Hashable!7262 0))(
  ( (HashableExt!7261 (__x!33537 Int)) )
))
(declare-fun hashF!1509 () Hashable!7262)

(declare-fun allKeysSameHashInMap!2578 (ListLongMap!5987 Hashable!7262) Bool)

(assert (=> b!4824207 (= res!2053659 (allKeysSameHashInMap!2578 lm!2280 hashF!1509))))

(declare-fun b!4824208 () Bool)

(declare-fun e!3014320 () Bool)

(declare-fun e!3014319 () Bool)

(assert (=> b!4824208 (= e!3014320 (not e!3014319))))

(declare-fun res!2053655 () Bool)

(assert (=> b!4824208 (=> res!2053655 e!3014319)))

(declare-fun lt!1971940 () ListLongMap!5987)

(declare-fun lambda!236300 () Int)

(declare-fun forall!12596 (List!55085 Int) Bool)

(assert (=> b!4824208 (= res!2053655 (not (forall!12596 (toList!7471 lt!1971940) lambda!236300)))))

(declare-fun tail!9404 (ListLongMap!5987) ListLongMap!5987)

(assert (=> b!4824208 (= lt!1971940 (tail!9404 lm!2280))))

(declare-fun key!5428 () K!16644)

(declare-datatypes ((ListMap!6849 0))(
  ( (ListMap!6850 (toList!7472 List!55084)) )
))
(declare-fun lt!1971936 () ListMap!6849)

(declare-fun e!3014323 () Bool)

(declare-fun contains!18764 (ListMap!6849 K!16644) Bool)

(declare-fun addToMapMapFromBucket!1794 (List!55084 ListMap!6849) ListMap!6849)

(assert (=> b!4824208 (= (contains!18764 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936) key!5428) e!3014323)))

(declare-fun res!2053653 () Bool)

(assert (=> b!4824208 (=> res!2053653 e!3014323)))

(declare-fun containsKey!4359 (List!55084 K!16644) Bool)

(assert (=> b!4824208 (= res!2053653 (containsKey!4359 (_2!32384 (h!61395 (toList!7471 lm!2280))) key!5428))))

(declare-datatypes ((Unit!142817 0))(
  ( (Unit!142818) )
))
(declare-fun lt!1971939 () Unit!142817)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!20 (List!55084 ListMap!6849 K!16644) Unit!142817)

(assert (=> b!4824208 (= lt!1971939 (lemmaAddToMapFromBucketContainsIIFInAccOrL!20 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936 key!5428))))

(declare-fun extractMap!2676 (List!55085) ListMap!6849)

(assert (=> b!4824208 (= lt!1971936 (extractMap!2676 (t!362581 (toList!7471 lm!2280))))))

(declare-fun apply!13349 (ListLongMap!5987 (_ BitVec 64)) List!55084)

(assert (=> b!4824208 (not (containsKey!4359 (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280)))) key!5428))))

(declare-fun lt!1971937 () Unit!142817)

(declare-fun lemmaNotSameHashThenCannotContainKey!220 (ListLongMap!5987 K!16644 (_ BitVec 64) Hashable!7262) Unit!142817)

(assert (=> b!4824208 (= lt!1971937 (lemmaNotSameHashThenCannotContainKey!220 lm!2280 key!5428 (_1!32384 (h!61395 (toList!7471 lm!2280))) hashF!1509))))

(declare-fun b!4824209 () Bool)

(assert (=> b!4824209 (= e!3014323 (contains!18764 lt!1971936 key!5428))))

(declare-fun lt!1971938 () (_ BitVec 64))

(declare-fun b!4824210 () Bool)

(assert (=> b!4824210 (= e!3014319 (not (containsKey!4359 (apply!13349 lt!1971940 lt!1971938) key!5428)))))

(declare-fun b!4824211 () Bool)

(declare-fun res!2053654 () Bool)

(assert (=> b!4824211 (=> res!2053654 e!3014319)))

(declare-fun contains!18765 (ListLongMap!5987 (_ BitVec 64)) Bool)

(assert (=> b!4824211 (= res!2053654 (not (contains!18765 lt!1971940 lt!1971938)))))

(declare-fun b!4824212 () Bool)

(declare-fun res!2053658 () Bool)

(assert (=> b!4824212 (=> res!2053658 e!3014319)))

(assert (=> b!4824212 (= res!2053658 (not (allKeysSameHashInMap!2578 lt!1971940 hashF!1509)))))

(declare-fun b!4824214 () Bool)

(assert (=> b!4824214 (= e!3014321 e!3014320)))

(declare-fun res!2053660 () Bool)

(assert (=> b!4824214 (=> (not res!2053660) (not e!3014320))))

(assert (=> b!4824214 (= res!2053660 (contains!18765 lm!2280 lt!1971938))))

(declare-fun hash!5384 (Hashable!7262 K!16644) (_ BitVec 64))

(assert (=> b!4824214 (= lt!1971938 (hash!5384 hashF!1509 key!5428))))

(declare-fun b!4824215 () Bool)

(declare-fun res!2053656 () Bool)

(assert (=> b!4824215 (=> (not res!2053656) (not e!3014320))))

(assert (=> b!4824215 (= res!2053656 (not (containsKey!4359 (apply!13349 lm!2280 lt!1971938) key!5428)))))

(declare-fun b!4824213 () Bool)

(declare-fun res!2053657 () Bool)

(assert (=> b!4824213 (=> (not res!2053657) (not e!3014320))))

(get-info :version)

(assert (=> b!4824213 (= res!2053657 (and (or (not ((_ is Cons!54961) (toList!7471 lm!2280))) (not (= (_1!32384 (h!61395 (toList!7471 lm!2280))) lt!1971938))) ((_ is Cons!54961) (toList!7471 lm!2280)) (not (= (_1!32384 (h!61395 (toList!7471 lm!2280))) lt!1971938))))))

(declare-fun res!2053661 () Bool)

(assert (=> start!500352 (=> (not res!2053661) (not e!3014321))))

(assert (=> start!500352 (= res!2053661 (forall!12596 (toList!7471 lm!2280) lambda!236300))))

(assert (=> start!500352 e!3014321))

(declare-fun inv!70544 (ListLongMap!5987) Bool)

(assert (=> start!500352 (and (inv!70544 lm!2280) e!3014322)))

(assert (=> start!500352 true))

(declare-fun tp_is_empty!34443 () Bool)

(assert (=> start!500352 tp_is_empty!34443))

(assert (= (and start!500352 res!2053661) b!4824207))

(assert (= (and b!4824207 res!2053659) b!4824214))

(assert (= (and b!4824214 res!2053660) b!4824215))

(assert (= (and b!4824215 res!2053656) b!4824213))

(assert (= (and b!4824213 res!2053657) b!4824208))

(assert (= (and b!4824208 (not res!2053653)) b!4824209))

(assert (= (and b!4824208 (not res!2053655)) b!4824212))

(assert (= (and b!4824212 (not res!2053658)) b!4824211))

(assert (= (and b!4824211 (not res!2053654)) b!4824210))

(assert (= start!500352 b!4824206))

(declare-fun m!5813638 () Bool)

(assert (=> b!4824215 m!5813638))

(assert (=> b!4824215 m!5813638))

(declare-fun m!5813640 () Bool)

(assert (=> b!4824215 m!5813640))

(declare-fun m!5813642 () Bool)

(assert (=> b!4824212 m!5813642))

(declare-fun m!5813644 () Bool)

(assert (=> b!4824207 m!5813644))

(declare-fun m!5813646 () Bool)

(assert (=> b!4824214 m!5813646))

(declare-fun m!5813648 () Bool)

(assert (=> b!4824214 m!5813648))

(declare-fun m!5813650 () Bool)

(assert (=> start!500352 m!5813650))

(declare-fun m!5813652 () Bool)

(assert (=> start!500352 m!5813652))

(declare-fun m!5813654 () Bool)

(assert (=> b!4824209 m!5813654))

(declare-fun m!5813656 () Bool)

(assert (=> b!4824211 m!5813656))

(declare-fun m!5813658 () Bool)

(assert (=> b!4824208 m!5813658))

(declare-fun m!5813660 () Bool)

(assert (=> b!4824208 m!5813660))

(declare-fun m!5813662 () Bool)

(assert (=> b!4824208 m!5813662))

(assert (=> b!4824208 m!5813662))

(declare-fun m!5813664 () Bool)

(assert (=> b!4824208 m!5813664))

(declare-fun m!5813666 () Bool)

(assert (=> b!4824208 m!5813666))

(declare-fun m!5813668 () Bool)

(assert (=> b!4824208 m!5813668))

(declare-fun m!5813670 () Bool)

(assert (=> b!4824208 m!5813670))

(declare-fun m!5813672 () Bool)

(assert (=> b!4824208 m!5813672))

(assert (=> b!4824208 m!5813666))

(declare-fun m!5813674 () Bool)

(assert (=> b!4824208 m!5813674))

(declare-fun m!5813676 () Bool)

(assert (=> b!4824208 m!5813676))

(declare-fun m!5813678 () Bool)

(assert (=> b!4824210 m!5813678))

(assert (=> b!4824210 m!5813678))

(declare-fun m!5813680 () Bool)

(assert (=> b!4824210 m!5813680))

(check-sat tp_is_empty!34443 (not b!4824208) (not b!4824215) (not b!4824206) (not start!500352) (not b!4824211) (not b!4824207) (not b!4824210) (not b!4824212) (not b!4824214) (not b!4824209))
(check-sat)
(get-model)

(declare-fun bs!1163240 () Bool)

(declare-fun d!1545236 () Bool)

(assert (= bs!1163240 (and d!1545236 start!500352)))

(declare-fun lambda!236303 () Int)

(assert (=> bs!1163240 (not (= lambda!236303 lambda!236300))))

(assert (=> d!1545236 true))

(assert (=> d!1545236 (= (allKeysSameHashInMap!2578 lm!2280 hashF!1509) (forall!12596 (toList!7471 lm!2280) lambda!236303))))

(declare-fun bs!1163241 () Bool)

(assert (= bs!1163241 d!1545236))

(declare-fun m!5813682 () Bool)

(assert (=> bs!1163241 m!5813682))

(assert (=> b!4824207 d!1545236))

(declare-fun d!1545238 () Bool)

(declare-fun res!2053676 () Bool)

(declare-fun e!3014342 () Bool)

(assert (=> d!1545238 (=> res!2053676 e!3014342)))

(assert (=> d!1545238 (= res!2053676 ((_ is Nil!54961) (toList!7471 lm!2280)))))

(assert (=> d!1545238 (= (forall!12596 (toList!7471 lm!2280) lambda!236300) e!3014342)))

(declare-fun b!4824240 () Bool)

(declare-fun e!3014343 () Bool)

(assert (=> b!4824240 (= e!3014342 e!3014343)))

(declare-fun res!2053677 () Bool)

(assert (=> b!4824240 (=> (not res!2053677) (not e!3014343))))

(declare-fun dynLambda!22210 (Int tuple2!58180) Bool)

(assert (=> b!4824240 (= res!2053677 (dynLambda!22210 lambda!236300 (h!61395 (toList!7471 lm!2280))))))

(declare-fun b!4824241 () Bool)

(assert (=> b!4824241 (= e!3014343 (forall!12596 (t!362581 (toList!7471 lm!2280)) lambda!236300))))

(assert (= (and d!1545238 (not res!2053676)) b!4824240))

(assert (= (and b!4824240 res!2053677) b!4824241))

(declare-fun b_lambda!189589 () Bool)

(assert (=> (not b_lambda!189589) (not b!4824240)))

(declare-fun m!5813708 () Bool)

(assert (=> b!4824240 m!5813708))

(declare-fun m!5813710 () Bool)

(assert (=> b!4824241 m!5813710))

(assert (=> start!500352 d!1545238))

(declare-fun d!1545250 () Bool)

(declare-fun isStrictlySorted!982 (List!55085) Bool)

(assert (=> d!1545250 (= (inv!70544 lm!2280) (isStrictlySorted!982 (toList!7471 lm!2280)))))

(declare-fun bs!1163245 () Bool)

(assert (= bs!1163245 d!1545250))

(declare-fun m!5813720 () Bool)

(assert (=> bs!1163245 m!5813720))

(assert (=> start!500352 d!1545250))

(declare-fun bs!1163246 () Bool)

(declare-fun d!1545258 () Bool)

(assert (= bs!1163246 (and d!1545258 start!500352)))

(declare-fun lambda!236304 () Int)

(assert (=> bs!1163246 (not (= lambda!236304 lambda!236300))))

(declare-fun bs!1163247 () Bool)

(assert (= bs!1163247 (and d!1545258 d!1545236)))

(assert (=> bs!1163247 (= lambda!236304 lambda!236303)))

(assert (=> d!1545258 true))

(assert (=> d!1545258 (= (allKeysSameHashInMap!2578 lt!1971940 hashF!1509) (forall!12596 (toList!7471 lt!1971940) lambda!236304))))

(declare-fun bs!1163248 () Bool)

(assert (= bs!1163248 d!1545258))

(declare-fun m!5813722 () Bool)

(assert (=> bs!1163248 m!5813722))

(assert (=> b!4824212 d!1545258))

(declare-fun d!1545260 () Bool)

(declare-fun res!2053690 () Bool)

(declare-fun e!3014356 () Bool)

(assert (=> d!1545260 (=> res!2053690 e!3014356)))

(assert (=> d!1545260 (= res!2053690 (and ((_ is Cons!54960) (apply!13349 lt!1971940 lt!1971938)) (= (_1!32383 (h!61394 (apply!13349 lt!1971940 lt!1971938))) key!5428)))))

(assert (=> d!1545260 (= (containsKey!4359 (apply!13349 lt!1971940 lt!1971938) key!5428) e!3014356)))

(declare-fun b!4824254 () Bool)

(declare-fun e!3014357 () Bool)

(assert (=> b!4824254 (= e!3014356 e!3014357)))

(declare-fun res!2053691 () Bool)

(assert (=> b!4824254 (=> (not res!2053691) (not e!3014357))))

(assert (=> b!4824254 (= res!2053691 ((_ is Cons!54960) (apply!13349 lt!1971940 lt!1971938)))))

(declare-fun b!4824255 () Bool)

(assert (=> b!4824255 (= e!3014357 (containsKey!4359 (t!362580 (apply!13349 lt!1971940 lt!1971938)) key!5428))))

(assert (= (and d!1545260 (not res!2053690)) b!4824254))

(assert (= (and b!4824254 res!2053691) b!4824255))

(declare-fun m!5813728 () Bool)

(assert (=> b!4824255 m!5813728))

(assert (=> b!4824210 d!1545260))

(declare-fun d!1545264 () Bool)

(declare-datatypes ((Option!13488 0))(
  ( (None!13487) (Some!13487 (v!49164 List!55084)) )
))
(declare-fun get!18818 (Option!13488) List!55084)

(declare-fun getValueByKey!2615 (List!55085 (_ BitVec 64)) Option!13488)

(assert (=> d!1545264 (= (apply!13349 lt!1971940 lt!1971938) (get!18818 (getValueByKey!2615 (toList!7471 lt!1971940) lt!1971938)))))

(declare-fun bs!1163251 () Bool)

(assert (= bs!1163251 d!1545264))

(declare-fun m!5813730 () Bool)

(assert (=> bs!1163251 m!5813730))

(assert (=> bs!1163251 m!5813730))

(declare-fun m!5813732 () Bool)

(assert (=> bs!1163251 m!5813732))

(assert (=> b!4824210 d!1545264))

(declare-fun d!1545266 () Bool)

(declare-fun e!3014381 () Bool)

(assert (=> d!1545266 e!3014381))

(declare-fun res!2053703 () Bool)

(assert (=> d!1545266 (=> res!2053703 e!3014381)))

(declare-fun lt!1971995 () Bool)

(assert (=> d!1545266 (= res!2053703 (not lt!1971995))))

(declare-fun lt!1971993 () Bool)

(assert (=> d!1545266 (= lt!1971995 lt!1971993)))

(declare-fun lt!1971994 () Unit!142817)

(declare-fun e!3014380 () Unit!142817)

(assert (=> d!1545266 (= lt!1971994 e!3014380)))

(declare-fun c!822034 () Bool)

(assert (=> d!1545266 (= c!822034 lt!1971993)))

(declare-fun containsKey!4362 (List!55085 (_ BitVec 64)) Bool)

(assert (=> d!1545266 (= lt!1971993 (containsKey!4362 (toList!7471 lt!1971940) lt!1971938))))

(assert (=> d!1545266 (= (contains!18765 lt!1971940 lt!1971938) lt!1971995)))

(declare-fun b!4824289 () Bool)

(declare-fun lt!1971992 () Unit!142817)

(assert (=> b!4824289 (= e!3014380 lt!1971992)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2400 (List!55085 (_ BitVec 64)) Unit!142817)

(assert (=> b!4824289 (= lt!1971992 (lemmaContainsKeyImpliesGetValueByKeyDefined!2400 (toList!7471 lt!1971940) lt!1971938))))

(declare-fun isDefined!10603 (Option!13488) Bool)

(assert (=> b!4824289 (isDefined!10603 (getValueByKey!2615 (toList!7471 lt!1971940) lt!1971938))))

(declare-fun b!4824290 () Bool)

(declare-fun Unit!142836 () Unit!142817)

(assert (=> b!4824290 (= e!3014380 Unit!142836)))

(declare-fun b!4824291 () Bool)

(assert (=> b!4824291 (= e!3014381 (isDefined!10603 (getValueByKey!2615 (toList!7471 lt!1971940) lt!1971938)))))

(assert (= (and d!1545266 c!822034) b!4824289))

(assert (= (and d!1545266 (not c!822034)) b!4824290))

(assert (= (and d!1545266 (not res!2053703)) b!4824291))

(declare-fun m!5813754 () Bool)

(assert (=> d!1545266 m!5813754))

(declare-fun m!5813756 () Bool)

(assert (=> b!4824289 m!5813756))

(assert (=> b!4824289 m!5813730))

(assert (=> b!4824289 m!5813730))

(declare-fun m!5813758 () Bool)

(assert (=> b!4824289 m!5813758))

(assert (=> b!4824291 m!5813730))

(assert (=> b!4824291 m!5813730))

(assert (=> b!4824291 m!5813758))

(assert (=> b!4824211 d!1545266))

(declare-fun b!4824319 () Bool)

(declare-fun e!3014402 () Unit!142817)

(declare-fun e!3014400 () Unit!142817)

(assert (=> b!4824319 (= e!3014402 e!3014400)))

(declare-fun c!822044 () Bool)

(declare-fun call!336288 () Bool)

(assert (=> b!4824319 (= c!822044 call!336288)))

(declare-fun b!4824320 () Bool)

(declare-datatypes ((List!55087 0))(
  ( (Nil!54963) (Cons!54963 (h!61397 K!16644) (t!362583 List!55087)) )
))
(declare-fun e!3014401 () List!55087)

(declare-fun getKeysList!1156 (List!55084) List!55087)

(assert (=> b!4824320 (= e!3014401 (getKeysList!1156 (toList!7472 lt!1971936)))))

(declare-fun b!4824321 () Bool)

(declare-fun keys!20219 (ListMap!6849) List!55087)

(assert (=> b!4824321 (= e!3014401 (keys!20219 lt!1971936))))

(declare-fun b!4824322 () Bool)

(declare-fun lt!1972022 () Unit!142817)

(assert (=> b!4824322 (= e!3014402 lt!1972022)))

(declare-fun lt!1972023 () Unit!142817)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2401 (List!55084 K!16644) Unit!142817)

(assert (=> b!4824322 (= lt!1972023 (lemmaContainsKeyImpliesGetValueByKeyDefined!2401 (toList!7472 lt!1971936) key!5428))))

(declare-datatypes ((Option!13489 0))(
  ( (None!13488) (Some!13488 (v!49165 V!16890)) )
))
(declare-fun isDefined!10604 (Option!13489) Bool)

(declare-fun getValueByKey!2616 (List!55084 K!16644) Option!13489)

(assert (=> b!4824322 (isDefined!10604 (getValueByKey!2616 (toList!7472 lt!1971936) key!5428))))

(declare-fun lt!1972019 () Unit!142817)

(assert (=> b!4824322 (= lt!1972019 lt!1972023)))

(declare-fun lemmaInListThenGetKeysListContains!1151 (List!55084 K!16644) Unit!142817)

(assert (=> b!4824322 (= lt!1972022 (lemmaInListThenGetKeysListContains!1151 (toList!7472 lt!1971936) key!5428))))

(assert (=> b!4824322 call!336288))

(declare-fun bm!336283 () Bool)

(declare-fun contains!18767 (List!55087 K!16644) Bool)

(assert (=> bm!336283 (= call!336288 (contains!18767 e!3014401 key!5428))))

(declare-fun c!822046 () Bool)

(declare-fun c!822045 () Bool)

(assert (=> bm!336283 (= c!822046 c!822045)))

(declare-fun b!4824323 () Bool)

(declare-fun e!3014404 () Bool)

(assert (=> b!4824323 (= e!3014404 (contains!18767 (keys!20219 lt!1971936) key!5428))))

(declare-fun b!4824324 () Bool)

(declare-fun Unit!142837 () Unit!142817)

(assert (=> b!4824324 (= e!3014400 Unit!142837)))

(declare-fun b!4824325 () Bool)

(declare-fun e!3014403 () Bool)

(assert (=> b!4824325 (= e!3014403 e!3014404)))

(declare-fun res!2053715 () Bool)

(assert (=> b!4824325 (=> (not res!2053715) (not e!3014404))))

(assert (=> b!4824325 (= res!2053715 (isDefined!10604 (getValueByKey!2616 (toList!7472 lt!1971936) key!5428)))))

(declare-fun d!1545270 () Bool)

(assert (=> d!1545270 e!3014403))

(declare-fun res!2053714 () Bool)

(assert (=> d!1545270 (=> res!2053714 e!3014403)))

(declare-fun e!3014405 () Bool)

(assert (=> d!1545270 (= res!2053714 e!3014405)))

(declare-fun res!2053713 () Bool)

(assert (=> d!1545270 (=> (not res!2053713) (not e!3014405))))

(declare-fun lt!1972021 () Bool)

(assert (=> d!1545270 (= res!2053713 (not lt!1972021))))

(declare-fun lt!1972024 () Bool)

(assert (=> d!1545270 (= lt!1972021 lt!1972024)))

(declare-fun lt!1972025 () Unit!142817)

(assert (=> d!1545270 (= lt!1972025 e!3014402)))

(assert (=> d!1545270 (= c!822045 lt!1972024)))

(declare-fun containsKey!4363 (List!55084 K!16644) Bool)

(assert (=> d!1545270 (= lt!1972024 (containsKey!4363 (toList!7472 lt!1971936) key!5428))))

(assert (=> d!1545270 (= (contains!18764 lt!1971936 key!5428) lt!1972021)))

(declare-fun b!4824326 () Bool)

(assert (=> b!4824326 false))

(declare-fun lt!1972018 () Unit!142817)

(declare-fun lt!1972020 () Unit!142817)

(assert (=> b!4824326 (= lt!1972018 lt!1972020)))

(assert (=> b!4824326 (containsKey!4363 (toList!7472 lt!1971936) key!5428)))

(declare-fun lemmaInGetKeysListThenContainsKey!1156 (List!55084 K!16644) Unit!142817)

(assert (=> b!4824326 (= lt!1972020 (lemmaInGetKeysListThenContainsKey!1156 (toList!7472 lt!1971936) key!5428))))

(declare-fun Unit!142838 () Unit!142817)

(assert (=> b!4824326 (= e!3014400 Unit!142838)))

(declare-fun b!4824327 () Bool)

(assert (=> b!4824327 (= e!3014405 (not (contains!18767 (keys!20219 lt!1971936) key!5428)))))

(assert (= (and d!1545270 c!822045) b!4824322))

(assert (= (and d!1545270 (not c!822045)) b!4824319))

(assert (= (and b!4824319 c!822044) b!4824326))

(assert (= (and b!4824319 (not c!822044)) b!4824324))

(assert (= (or b!4824322 b!4824319) bm!336283))

(assert (= (and bm!336283 c!822046) b!4824320))

(assert (= (and bm!336283 (not c!822046)) b!4824321))

(assert (= (and d!1545270 res!2053713) b!4824327))

(assert (= (and d!1545270 (not res!2053714)) b!4824325))

(assert (= (and b!4824325 res!2053715) b!4824323))

(declare-fun m!5813774 () Bool)

(assert (=> b!4824321 m!5813774))

(declare-fun m!5813776 () Bool)

(assert (=> b!4824326 m!5813776))

(declare-fun m!5813778 () Bool)

(assert (=> b!4824326 m!5813778))

(assert (=> d!1545270 m!5813776))

(declare-fun m!5813780 () Bool)

(assert (=> b!4824322 m!5813780))

(declare-fun m!5813782 () Bool)

(assert (=> b!4824322 m!5813782))

(assert (=> b!4824322 m!5813782))

(declare-fun m!5813784 () Bool)

(assert (=> b!4824322 m!5813784))

(declare-fun m!5813786 () Bool)

(assert (=> b!4824322 m!5813786))

(declare-fun m!5813788 () Bool)

(assert (=> bm!336283 m!5813788))

(assert (=> b!4824325 m!5813782))

(assert (=> b!4824325 m!5813782))

(assert (=> b!4824325 m!5813784))

(declare-fun m!5813790 () Bool)

(assert (=> b!4824320 m!5813790))

(assert (=> b!4824327 m!5813774))

(assert (=> b!4824327 m!5813774))

(declare-fun m!5813792 () Bool)

(assert (=> b!4824327 m!5813792))

(assert (=> b!4824323 m!5813774))

(assert (=> b!4824323 m!5813774))

(assert (=> b!4824323 m!5813792))

(assert (=> b!4824209 d!1545270))

(declare-fun d!1545278 () Bool)

(declare-fun e!3014407 () Bool)

(assert (=> d!1545278 e!3014407))

(declare-fun res!2053716 () Bool)

(assert (=> d!1545278 (=> res!2053716 e!3014407)))

(declare-fun lt!1972029 () Bool)

(assert (=> d!1545278 (= res!2053716 (not lt!1972029))))

(declare-fun lt!1972027 () Bool)

(assert (=> d!1545278 (= lt!1972029 lt!1972027)))

(declare-fun lt!1972028 () Unit!142817)

(declare-fun e!3014406 () Unit!142817)

(assert (=> d!1545278 (= lt!1972028 e!3014406)))

(declare-fun c!822047 () Bool)

(assert (=> d!1545278 (= c!822047 lt!1972027)))

(assert (=> d!1545278 (= lt!1972027 (containsKey!4362 (toList!7471 lm!2280) lt!1971938))))

(assert (=> d!1545278 (= (contains!18765 lm!2280 lt!1971938) lt!1972029)))

(declare-fun b!4824328 () Bool)

(declare-fun lt!1972026 () Unit!142817)

(assert (=> b!4824328 (= e!3014406 lt!1972026)))

(assert (=> b!4824328 (= lt!1972026 (lemmaContainsKeyImpliesGetValueByKeyDefined!2400 (toList!7471 lm!2280) lt!1971938))))

(assert (=> b!4824328 (isDefined!10603 (getValueByKey!2615 (toList!7471 lm!2280) lt!1971938))))

(declare-fun b!4824329 () Bool)

(declare-fun Unit!142839 () Unit!142817)

(assert (=> b!4824329 (= e!3014406 Unit!142839)))

(declare-fun b!4824330 () Bool)

(assert (=> b!4824330 (= e!3014407 (isDefined!10603 (getValueByKey!2615 (toList!7471 lm!2280) lt!1971938)))))

(assert (= (and d!1545278 c!822047) b!4824328))

(assert (= (and d!1545278 (not c!822047)) b!4824329))

(assert (= (and d!1545278 (not res!2053716)) b!4824330))

(declare-fun m!5813794 () Bool)

(assert (=> d!1545278 m!5813794))

(declare-fun m!5813796 () Bool)

(assert (=> b!4824328 m!5813796))

(declare-fun m!5813798 () Bool)

(assert (=> b!4824328 m!5813798))

(assert (=> b!4824328 m!5813798))

(declare-fun m!5813800 () Bool)

(assert (=> b!4824328 m!5813800))

(assert (=> b!4824330 m!5813798))

(assert (=> b!4824330 m!5813798))

(assert (=> b!4824330 m!5813800))

(assert (=> b!4824214 d!1545278))

(declare-fun d!1545280 () Bool)

(declare-fun hash!5388 (Hashable!7262 K!16644) (_ BitVec 64))

(assert (=> d!1545280 (= (hash!5384 hashF!1509 key!5428) (hash!5388 hashF!1509 key!5428))))

(declare-fun bs!1163255 () Bool)

(assert (= bs!1163255 d!1545280))

(declare-fun m!5813802 () Bool)

(assert (=> bs!1163255 m!5813802))

(assert (=> b!4824214 d!1545280))

(declare-fun d!1545282 () Bool)

(declare-fun res!2053717 () Bool)

(declare-fun e!3014408 () Bool)

(assert (=> d!1545282 (=> res!2053717 e!3014408)))

(assert (=> d!1545282 (= res!2053717 (and ((_ is Cons!54960) (apply!13349 lm!2280 lt!1971938)) (= (_1!32383 (h!61394 (apply!13349 lm!2280 lt!1971938))) key!5428)))))

(assert (=> d!1545282 (= (containsKey!4359 (apply!13349 lm!2280 lt!1971938) key!5428) e!3014408)))

(declare-fun b!4824331 () Bool)

(declare-fun e!3014409 () Bool)

(assert (=> b!4824331 (= e!3014408 e!3014409)))

(declare-fun res!2053718 () Bool)

(assert (=> b!4824331 (=> (not res!2053718) (not e!3014409))))

(assert (=> b!4824331 (= res!2053718 ((_ is Cons!54960) (apply!13349 lm!2280 lt!1971938)))))

(declare-fun b!4824332 () Bool)

(assert (=> b!4824332 (= e!3014409 (containsKey!4359 (t!362580 (apply!13349 lm!2280 lt!1971938)) key!5428))))

(assert (= (and d!1545282 (not res!2053717)) b!4824331))

(assert (= (and b!4824331 res!2053718) b!4824332))

(declare-fun m!5813804 () Bool)

(assert (=> b!4824332 m!5813804))

(assert (=> b!4824215 d!1545282))

(declare-fun d!1545284 () Bool)

(assert (=> d!1545284 (= (apply!13349 lm!2280 lt!1971938) (get!18818 (getValueByKey!2615 (toList!7471 lm!2280) lt!1971938)))))

(declare-fun bs!1163256 () Bool)

(assert (= bs!1163256 d!1545284))

(assert (=> bs!1163256 m!5813798))

(assert (=> bs!1163256 m!5813798))

(declare-fun m!5813806 () Bool)

(assert (=> bs!1163256 m!5813806))

(assert (=> b!4824215 d!1545284))

(declare-fun d!1545286 () Bool)

(assert (=> d!1545286 (= (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280)))) (get!18818 (getValueByKey!2615 (toList!7471 lm!2280) (_1!32384 (h!61395 (toList!7471 lm!2280))))))))

(declare-fun bs!1163257 () Bool)

(assert (= bs!1163257 d!1545286))

(declare-fun m!5813808 () Bool)

(assert (=> bs!1163257 m!5813808))

(assert (=> bs!1163257 m!5813808))

(declare-fun m!5813810 () Bool)

(assert (=> bs!1163257 m!5813810))

(assert (=> b!4824208 d!1545286))

(declare-fun b!4824382 () Bool)

(assert (=> b!4824382 true))

(declare-fun bs!1163274 () Bool)

(declare-fun b!4824383 () Bool)

(assert (= bs!1163274 (and b!4824383 b!4824382)))

(declare-fun lambda!236376 () Int)

(declare-fun lambda!236375 () Int)

(assert (=> bs!1163274 (= lambda!236376 lambda!236375)))

(assert (=> b!4824383 true))

(declare-fun lambda!236377 () Int)

(declare-fun lt!1972149 () ListMap!6849)

(assert (=> bs!1163274 (= (= lt!1972149 lt!1971936) (= lambda!236377 lambda!236375))))

(assert (=> b!4824383 (= (= lt!1972149 lt!1971936) (= lambda!236377 lambda!236376))))

(assert (=> b!4824383 true))

(declare-fun bs!1163275 () Bool)

(declare-fun d!1545288 () Bool)

(assert (= bs!1163275 (and d!1545288 b!4824382)))

(declare-fun lambda!236378 () Int)

(declare-fun lt!1972143 () ListMap!6849)

(assert (=> bs!1163275 (= (= lt!1972143 lt!1971936) (= lambda!236378 lambda!236375))))

(declare-fun bs!1163276 () Bool)

(assert (= bs!1163276 (and d!1545288 b!4824383)))

(assert (=> bs!1163276 (= (= lt!1972143 lt!1971936) (= lambda!236378 lambda!236376))))

(assert (=> bs!1163276 (= (= lt!1972143 lt!1972149) (= lambda!236378 lambda!236377))))

(assert (=> d!1545288 true))

(declare-fun e!3014440 () ListMap!6849)

(assert (=> b!4824382 (= e!3014440 lt!1971936)))

(declare-fun lt!1972148 () Unit!142817)

(declare-fun call!336306 () Unit!142817)

(assert (=> b!4824382 (= lt!1972148 call!336306)))

(declare-fun call!336305 () Bool)

(assert (=> b!4824382 call!336305))

(declare-fun lt!1972151 () Unit!142817)

(assert (=> b!4824382 (= lt!1972151 lt!1972148)))

(declare-fun call!336307 () Bool)

(assert (=> b!4824382 call!336307))

(declare-fun lt!1972163 () Unit!142817)

(declare-fun Unit!142840 () Unit!142817)

(assert (=> b!4824382 (= lt!1972163 Unit!142840)))

(declare-fun bm!336300 () Bool)

(declare-fun lt!1972154 () ListMap!6849)

(declare-fun c!822056 () Bool)

(declare-fun forall!12598 (List!55084 Int) Bool)

(assert (=> bm!336300 (= call!336307 (forall!12598 (ite c!822056 (toList!7472 lt!1971936) (toList!7472 lt!1972154)) (ite c!822056 lambda!236375 lambda!236377)))))

(declare-fun b!4824384 () Bool)

(declare-fun e!3014442 () Bool)

(assert (=> b!4824384 (= e!3014442 (forall!12598 (toList!7472 lt!1971936) lambda!236377))))

(declare-fun b!4824385 () Bool)

(declare-fun res!2053743 () Bool)

(declare-fun e!3014441 () Bool)

(assert (=> b!4824385 (=> (not res!2053743) (not e!3014441))))

(assert (=> b!4824385 (= res!2053743 (forall!12598 (toList!7472 lt!1971936) lambda!236378))))

(declare-fun b!4824386 () Bool)

(declare-fun invariantList!1809 (List!55084) Bool)

(assert (=> b!4824386 (= e!3014441 (invariantList!1809 (toList!7472 lt!1972143)))))

(declare-fun bm!336301 () Bool)

(assert (=> bm!336301 (= call!336305 (forall!12598 (toList!7472 lt!1971936) (ite c!822056 lambda!236375 lambda!236377)))))

(declare-fun bm!336302 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!988 (ListMap!6849) Unit!142817)

(assert (=> bm!336302 (= call!336306 (lemmaContainsAllItsOwnKeys!988 lt!1971936))))

(assert (=> b!4824383 (= e!3014440 lt!1972149)))

(declare-fun +!2533 (ListMap!6849 tuple2!58178) ListMap!6849)

(assert (=> b!4824383 (= lt!1972154 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(assert (=> b!4824383 (= lt!1972149 (addToMapMapFromBucket!1794 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))) (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun lt!1972153 () Unit!142817)

(assert (=> b!4824383 (= lt!1972153 call!336306)))

(assert (=> b!4824383 (forall!12598 (toList!7472 lt!1971936) lambda!236376)))

(declare-fun lt!1972157 () Unit!142817)

(assert (=> b!4824383 (= lt!1972157 lt!1972153)))

(assert (=> b!4824383 call!336307))

(declare-fun lt!1972162 () Unit!142817)

(declare-fun Unit!142841 () Unit!142817)

(assert (=> b!4824383 (= lt!1972162 Unit!142841)))

(assert (=> b!4824383 (forall!12598 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))) lambda!236377)))

(declare-fun lt!1972150 () Unit!142817)

(declare-fun Unit!142842 () Unit!142817)

(assert (=> b!4824383 (= lt!1972150 Unit!142842)))

(declare-fun lt!1972160 () Unit!142817)

(declare-fun Unit!142843 () Unit!142817)

(assert (=> b!4824383 (= lt!1972160 Unit!142843)))

(declare-fun lt!1972158 () Unit!142817)

(declare-fun forallContained!4378 (List!55084 Int tuple2!58178) Unit!142817)

(assert (=> b!4824383 (= lt!1972158 (forallContained!4378 (toList!7472 lt!1972154) lambda!236377 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(assert (=> b!4824383 (contains!18764 lt!1972154 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(declare-fun lt!1972156 () Unit!142817)

(declare-fun Unit!142844 () Unit!142817)

(assert (=> b!4824383 (= lt!1972156 Unit!142844)))

(assert (=> b!4824383 (contains!18764 lt!1972149 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(declare-fun lt!1972147 () Unit!142817)

(declare-fun Unit!142845 () Unit!142817)

(assert (=> b!4824383 (= lt!1972147 Unit!142845)))

(assert (=> b!4824383 (forall!12598 (_2!32384 (h!61395 (toList!7471 lm!2280))) lambda!236377)))

(declare-fun lt!1972145 () Unit!142817)

(declare-fun Unit!142846 () Unit!142817)

(assert (=> b!4824383 (= lt!1972145 Unit!142846)))

(assert (=> b!4824383 (forall!12598 (toList!7472 lt!1972154) lambda!236377)))

(declare-fun lt!1972152 () Unit!142817)

(declare-fun Unit!142847 () Unit!142817)

(assert (=> b!4824383 (= lt!1972152 Unit!142847)))

(declare-fun lt!1972159 () Unit!142817)

(declare-fun Unit!142848 () Unit!142817)

(assert (=> b!4824383 (= lt!1972159 Unit!142848)))

(declare-fun lt!1972146 () Unit!142817)

(declare-fun addForallContainsKeyThenBeforeAdding!987 (ListMap!6849 ListMap!6849 K!16644 V!16890) Unit!142817)

(assert (=> b!4824383 (= lt!1972146 (addForallContainsKeyThenBeforeAdding!987 lt!1971936 lt!1972149 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) (_2!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> b!4824383 call!336305))

(declare-fun lt!1972144 () Unit!142817)

(assert (=> b!4824383 (= lt!1972144 lt!1972146)))

(assert (=> b!4824383 (forall!12598 (toList!7472 lt!1971936) lambda!236377)))

(declare-fun lt!1972161 () Unit!142817)

(declare-fun Unit!142849 () Unit!142817)

(assert (=> b!4824383 (= lt!1972161 Unit!142849)))

(declare-fun res!2053745 () Bool)

(assert (=> b!4824383 (= res!2053745 (forall!12598 (_2!32384 (h!61395 (toList!7471 lm!2280))) lambda!236377))))

(assert (=> b!4824383 (=> (not res!2053745) (not e!3014442))))

(assert (=> b!4824383 e!3014442))

(declare-fun lt!1972155 () Unit!142817)

(declare-fun Unit!142850 () Unit!142817)

(assert (=> b!4824383 (= lt!1972155 Unit!142850)))

(assert (=> d!1545288 e!3014441))

(declare-fun res!2053744 () Bool)

(assert (=> d!1545288 (=> (not res!2053744) (not e!3014441))))

(assert (=> d!1545288 (= res!2053744 (forall!12598 (_2!32384 (h!61395 (toList!7471 lm!2280))) lambda!236378))))

(assert (=> d!1545288 (= lt!1972143 e!3014440)))

(assert (=> d!1545288 (= c!822056 ((_ is Nil!54960) (_2!32384 (h!61395 (toList!7471 lm!2280)))))))

(declare-fun noDuplicateKeys!2448 (List!55084) Bool)

(assert (=> d!1545288 (noDuplicateKeys!2448 (_2!32384 (h!61395 (toList!7471 lm!2280))))))

(assert (=> d!1545288 (= (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936) lt!1972143)))

(assert (= (and d!1545288 c!822056) b!4824382))

(assert (= (and d!1545288 (not c!822056)) b!4824383))

(assert (= (and b!4824383 res!2053745) b!4824384))

(assert (= (or b!4824382 b!4824383) bm!336300))

(assert (= (or b!4824382 b!4824383) bm!336301))

(assert (= (or b!4824382 b!4824383) bm!336302))

(assert (= (and d!1545288 res!2053744) b!4824385))

(assert (= (and b!4824385 res!2053743) b!4824386))

(declare-fun m!5813882 () Bool)

(assert (=> b!4824384 m!5813882))

(declare-fun m!5813884 () Bool)

(assert (=> b!4824385 m!5813884))

(declare-fun m!5813886 () Bool)

(assert (=> b!4824383 m!5813886))

(declare-fun m!5813888 () Bool)

(assert (=> b!4824383 m!5813888))

(declare-fun m!5813890 () Bool)

(assert (=> b!4824383 m!5813890))

(declare-fun m!5813892 () Bool)

(assert (=> b!4824383 m!5813892))

(declare-fun m!5813894 () Bool)

(assert (=> b!4824383 m!5813894))

(assert (=> b!4824383 m!5813890))

(declare-fun m!5813896 () Bool)

(assert (=> b!4824383 m!5813896))

(assert (=> b!4824383 m!5813886))

(declare-fun m!5813898 () Bool)

(assert (=> b!4824383 m!5813898))

(declare-fun m!5813900 () Bool)

(assert (=> b!4824383 m!5813900))

(assert (=> b!4824383 m!5813882))

(declare-fun m!5813902 () Bool)

(assert (=> b!4824383 m!5813902))

(declare-fun m!5813904 () Bool)

(assert (=> b!4824383 m!5813904))

(declare-fun m!5813906 () Bool)

(assert (=> bm!336301 m!5813906))

(declare-fun m!5813908 () Bool)

(assert (=> b!4824386 m!5813908))

(declare-fun m!5813910 () Bool)

(assert (=> d!1545288 m!5813910))

(declare-fun m!5813912 () Bool)

(assert (=> d!1545288 m!5813912))

(declare-fun m!5813914 () Bool)

(assert (=> bm!336302 m!5813914))

(declare-fun m!5813916 () Bool)

(assert (=> bm!336300 m!5813916))

(assert (=> b!4824208 d!1545288))

(declare-fun d!1545310 () Bool)

(declare-fun res!2053746 () Bool)

(declare-fun e!3014443 () Bool)

(assert (=> d!1545310 (=> res!2053746 e!3014443)))

(assert (=> d!1545310 (= res!2053746 (and ((_ is Cons!54960) (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280))))) (= (_1!32383 (h!61394 (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280)))))) key!5428)))))

(assert (=> d!1545310 (= (containsKey!4359 (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280)))) key!5428) e!3014443)))

(declare-fun b!4824389 () Bool)

(declare-fun e!3014444 () Bool)

(assert (=> b!4824389 (= e!3014443 e!3014444)))

(declare-fun res!2053747 () Bool)

(assert (=> b!4824389 (=> (not res!2053747) (not e!3014444))))

(assert (=> b!4824389 (= res!2053747 ((_ is Cons!54960) (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280))))))))

(declare-fun b!4824390 () Bool)

(assert (=> b!4824390 (= e!3014444 (containsKey!4359 (t!362580 (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280))))) key!5428))))

(assert (= (and d!1545310 (not res!2053746)) b!4824389))

(assert (= (and b!4824389 res!2053747) b!4824390))

(declare-fun m!5813918 () Bool)

(assert (=> b!4824390 m!5813918))

(assert (=> b!4824208 d!1545310))

(declare-fun d!1545312 () Bool)

(declare-fun res!2053748 () Bool)

(declare-fun e!3014445 () Bool)

(assert (=> d!1545312 (=> res!2053748 e!3014445)))

(assert (=> d!1545312 (= res!2053748 (and ((_ is Cons!54960) (_2!32384 (h!61395 (toList!7471 lm!2280)))) (= (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) key!5428)))))

(assert (=> d!1545312 (= (containsKey!4359 (_2!32384 (h!61395 (toList!7471 lm!2280))) key!5428) e!3014445)))

(declare-fun b!4824391 () Bool)

(declare-fun e!3014446 () Bool)

(assert (=> b!4824391 (= e!3014445 e!3014446)))

(declare-fun res!2053749 () Bool)

(assert (=> b!4824391 (=> (not res!2053749) (not e!3014446))))

(assert (=> b!4824391 (= res!2053749 ((_ is Cons!54960) (_2!32384 (h!61395 (toList!7471 lm!2280)))))))

(declare-fun b!4824392 () Bool)

(assert (=> b!4824392 (= e!3014446 (containsKey!4359 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))) key!5428))))

(assert (= (and d!1545312 (not res!2053748)) b!4824391))

(assert (= (and b!4824391 res!2053749) b!4824392))

(declare-fun m!5813920 () Bool)

(assert (=> b!4824392 m!5813920))

(assert (=> b!4824208 d!1545312))

(declare-fun b!4824393 () Bool)

(declare-fun e!3014449 () Unit!142817)

(declare-fun e!3014447 () Unit!142817)

(assert (=> b!4824393 (= e!3014449 e!3014447)))

(declare-fun c!822057 () Bool)

(declare-fun call!336308 () Bool)

(assert (=> b!4824393 (= c!822057 call!336308)))

(declare-fun b!4824394 () Bool)

(declare-fun e!3014448 () List!55087)

(assert (=> b!4824394 (= e!3014448 (getKeysList!1156 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))))

(declare-fun b!4824395 () Bool)

(assert (=> b!4824395 (= e!3014448 (keys!20219 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))))

(declare-fun b!4824396 () Bool)

(declare-fun lt!1972168 () Unit!142817)

(assert (=> b!4824396 (= e!3014449 lt!1972168)))

(declare-fun lt!1972169 () Unit!142817)

(assert (=> b!4824396 (= lt!1972169 (lemmaContainsKeyImpliesGetValueByKeyDefined!2401 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428))))

(assert (=> b!4824396 (isDefined!10604 (getValueByKey!2616 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428))))

(declare-fun lt!1972165 () Unit!142817)

(assert (=> b!4824396 (= lt!1972165 lt!1972169)))

(assert (=> b!4824396 (= lt!1972168 (lemmaInListThenGetKeysListContains!1151 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428))))

(assert (=> b!4824396 call!336308))

(declare-fun bm!336303 () Bool)

(assert (=> bm!336303 (= call!336308 (contains!18767 e!3014448 key!5428))))

(declare-fun c!822059 () Bool)

(declare-fun c!822058 () Bool)

(assert (=> bm!336303 (= c!822059 c!822058)))

(declare-fun e!3014451 () Bool)

(declare-fun b!4824397 () Bool)

(assert (=> b!4824397 (= e!3014451 (contains!18767 (keys!20219 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428))))

(declare-fun b!4824398 () Bool)

(declare-fun Unit!142851 () Unit!142817)

(assert (=> b!4824398 (= e!3014447 Unit!142851)))

(declare-fun b!4824399 () Bool)

(declare-fun e!3014450 () Bool)

(assert (=> b!4824399 (= e!3014450 e!3014451)))

(declare-fun res!2053752 () Bool)

(assert (=> b!4824399 (=> (not res!2053752) (not e!3014451))))

(assert (=> b!4824399 (= res!2053752 (isDefined!10604 (getValueByKey!2616 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428)))))

(declare-fun d!1545314 () Bool)

(assert (=> d!1545314 e!3014450))

(declare-fun res!2053751 () Bool)

(assert (=> d!1545314 (=> res!2053751 e!3014450)))

(declare-fun e!3014452 () Bool)

(assert (=> d!1545314 (= res!2053751 e!3014452)))

(declare-fun res!2053750 () Bool)

(assert (=> d!1545314 (=> (not res!2053750) (not e!3014452))))

(declare-fun lt!1972167 () Bool)

(assert (=> d!1545314 (= res!2053750 (not lt!1972167))))

(declare-fun lt!1972170 () Bool)

(assert (=> d!1545314 (= lt!1972167 lt!1972170)))

(declare-fun lt!1972171 () Unit!142817)

(assert (=> d!1545314 (= lt!1972171 e!3014449)))

(assert (=> d!1545314 (= c!822058 lt!1972170)))

(assert (=> d!1545314 (= lt!1972170 (containsKey!4363 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428))))

(assert (=> d!1545314 (= (contains!18764 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936) key!5428) lt!1972167)))

(declare-fun b!4824400 () Bool)

(assert (=> b!4824400 false))

(declare-fun lt!1972164 () Unit!142817)

(declare-fun lt!1972166 () Unit!142817)

(assert (=> b!4824400 (= lt!1972164 lt!1972166)))

(assert (=> b!4824400 (containsKey!4363 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428)))

(assert (=> b!4824400 (= lt!1972166 (lemmaInGetKeysListThenContainsKey!1156 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428))))

(declare-fun Unit!142852 () Unit!142817)

(assert (=> b!4824400 (= e!3014447 Unit!142852)))

(declare-fun b!4824401 () Bool)

(assert (=> b!4824401 (= e!3014452 (not (contains!18767 (keys!20219 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428)))))

(assert (= (and d!1545314 c!822058) b!4824396))

(assert (= (and d!1545314 (not c!822058)) b!4824393))

(assert (= (and b!4824393 c!822057) b!4824400))

(assert (= (and b!4824393 (not c!822057)) b!4824398))

(assert (= (or b!4824396 b!4824393) bm!336303))

(assert (= (and bm!336303 c!822059) b!4824394))

(assert (= (and bm!336303 (not c!822059)) b!4824395))

(assert (= (and d!1545314 res!2053750) b!4824401))

(assert (= (and d!1545314 (not res!2053751)) b!4824399))

(assert (= (and b!4824399 res!2053752) b!4824397))

(assert (=> b!4824395 m!5813666))

(declare-fun m!5813922 () Bool)

(assert (=> b!4824395 m!5813922))

(declare-fun m!5813924 () Bool)

(assert (=> b!4824400 m!5813924))

(declare-fun m!5813926 () Bool)

(assert (=> b!4824400 m!5813926))

(assert (=> d!1545314 m!5813924))

(declare-fun m!5813928 () Bool)

(assert (=> b!4824396 m!5813928))

(declare-fun m!5813930 () Bool)

(assert (=> b!4824396 m!5813930))

(assert (=> b!4824396 m!5813930))

(declare-fun m!5813932 () Bool)

(assert (=> b!4824396 m!5813932))

(declare-fun m!5813934 () Bool)

(assert (=> b!4824396 m!5813934))

(declare-fun m!5813936 () Bool)

(assert (=> bm!336303 m!5813936))

(assert (=> b!4824399 m!5813930))

(assert (=> b!4824399 m!5813930))

(assert (=> b!4824399 m!5813932))

(declare-fun m!5813938 () Bool)

(assert (=> b!4824394 m!5813938))

(assert (=> b!4824401 m!5813666))

(assert (=> b!4824401 m!5813922))

(assert (=> b!4824401 m!5813922))

(declare-fun m!5813940 () Bool)

(assert (=> b!4824401 m!5813940))

(assert (=> b!4824397 m!5813666))

(assert (=> b!4824397 m!5813922))

(assert (=> b!4824397 m!5813922))

(assert (=> b!4824397 m!5813940))

(assert (=> b!4824208 d!1545314))

(declare-fun bs!1163277 () Bool)

(declare-fun d!1545316 () Bool)

(assert (= bs!1163277 (and d!1545316 start!500352)))

(declare-fun lambda!236381 () Int)

(assert (=> bs!1163277 (= lambda!236381 lambda!236300)))

(declare-fun bs!1163278 () Bool)

(assert (= bs!1163278 (and d!1545316 d!1545236)))

(assert (=> bs!1163278 (not (= lambda!236381 lambda!236303))))

(declare-fun bs!1163279 () Bool)

(assert (= bs!1163279 (and d!1545316 d!1545258)))

(assert (=> bs!1163279 (not (= lambda!236381 lambda!236304))))

(assert (=> d!1545316 (not (containsKey!4359 (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280)))) key!5428))))

(declare-fun lt!1972174 () Unit!142817)

(declare-fun choose!35090 (ListLongMap!5987 K!16644 (_ BitVec 64) Hashable!7262) Unit!142817)

(assert (=> d!1545316 (= lt!1972174 (choose!35090 lm!2280 key!5428 (_1!32384 (h!61395 (toList!7471 lm!2280))) hashF!1509))))

(assert (=> d!1545316 (forall!12596 (toList!7471 lm!2280) lambda!236381)))

(assert (=> d!1545316 (= (lemmaNotSameHashThenCannotContainKey!220 lm!2280 key!5428 (_1!32384 (h!61395 (toList!7471 lm!2280))) hashF!1509) lt!1972174)))

(declare-fun bs!1163280 () Bool)

(assert (= bs!1163280 d!1545316))

(assert (=> bs!1163280 m!5813662))

(assert (=> bs!1163280 m!5813662))

(assert (=> bs!1163280 m!5813664))

(declare-fun m!5813942 () Bool)

(assert (=> bs!1163280 m!5813942))

(declare-fun m!5813944 () Bool)

(assert (=> bs!1163280 m!5813944))

(assert (=> b!4824208 d!1545316))

(declare-fun d!1545318 () Bool)

(declare-fun res!2053753 () Bool)

(declare-fun e!3014453 () Bool)

(assert (=> d!1545318 (=> res!2053753 e!3014453)))

(assert (=> d!1545318 (= res!2053753 ((_ is Nil!54961) (toList!7471 lt!1971940)))))

(assert (=> d!1545318 (= (forall!12596 (toList!7471 lt!1971940) lambda!236300) e!3014453)))

(declare-fun b!4824402 () Bool)

(declare-fun e!3014454 () Bool)

(assert (=> b!4824402 (= e!3014453 e!3014454)))

(declare-fun res!2053754 () Bool)

(assert (=> b!4824402 (=> (not res!2053754) (not e!3014454))))

(assert (=> b!4824402 (= res!2053754 (dynLambda!22210 lambda!236300 (h!61395 (toList!7471 lt!1971940))))))

(declare-fun b!4824403 () Bool)

(assert (=> b!4824403 (= e!3014454 (forall!12596 (t!362581 (toList!7471 lt!1971940)) lambda!236300))))

(assert (= (and d!1545318 (not res!2053753)) b!4824402))

(assert (= (and b!4824402 res!2053754) b!4824403))

(declare-fun b_lambda!189597 () Bool)

(assert (=> (not b_lambda!189597) (not b!4824402)))

(declare-fun m!5813946 () Bool)

(assert (=> b!4824402 m!5813946))

(declare-fun m!5813948 () Bool)

(assert (=> b!4824403 m!5813948))

(assert (=> b!4824208 d!1545318))

(declare-fun e!3014457 () Bool)

(declare-fun d!1545320 () Bool)

(assert (=> d!1545320 (= (contains!18764 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936) key!5428) e!3014457)))

(declare-fun res!2053757 () Bool)

(assert (=> d!1545320 (=> res!2053757 e!3014457)))

(assert (=> d!1545320 (= res!2053757 (containsKey!4359 (_2!32384 (h!61395 (toList!7471 lm!2280))) key!5428))))

(declare-fun lt!1972177 () Unit!142817)

(declare-fun choose!35091 (List!55084 ListMap!6849 K!16644) Unit!142817)

(assert (=> d!1545320 (= lt!1972177 (choose!35091 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936 key!5428))))

(assert (=> d!1545320 (noDuplicateKeys!2448 (_2!32384 (h!61395 (toList!7471 lm!2280))))))

(assert (=> d!1545320 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!20 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936 key!5428) lt!1972177)))

(declare-fun b!4824406 () Bool)

(assert (=> b!4824406 (= e!3014457 (contains!18764 lt!1971936 key!5428))))

(assert (= (and d!1545320 (not res!2053757)) b!4824406))

(assert (=> d!1545320 m!5813912))

(assert (=> d!1545320 m!5813676))

(assert (=> d!1545320 m!5813666))

(declare-fun m!5813950 () Bool)

(assert (=> d!1545320 m!5813950))

(assert (=> d!1545320 m!5813666))

(assert (=> d!1545320 m!5813674))

(assert (=> b!4824406 m!5813654))

(assert (=> b!4824208 d!1545320))

(declare-fun bs!1163281 () Bool)

(declare-fun d!1545322 () Bool)

(assert (= bs!1163281 (and d!1545322 start!500352)))

(declare-fun lambda!236384 () Int)

(assert (=> bs!1163281 (= lambda!236384 lambda!236300)))

(declare-fun bs!1163282 () Bool)

(assert (= bs!1163282 (and d!1545322 d!1545236)))

(assert (=> bs!1163282 (not (= lambda!236384 lambda!236303))))

(declare-fun bs!1163283 () Bool)

(assert (= bs!1163283 (and d!1545322 d!1545258)))

(assert (=> bs!1163283 (not (= lambda!236384 lambda!236304))))

(declare-fun bs!1163284 () Bool)

(assert (= bs!1163284 (and d!1545322 d!1545316)))

(assert (=> bs!1163284 (= lambda!236384 lambda!236381)))

(declare-fun lt!1972180 () ListMap!6849)

(assert (=> d!1545322 (invariantList!1809 (toList!7472 lt!1972180))))

(declare-fun e!3014460 () ListMap!6849)

(assert (=> d!1545322 (= lt!1972180 e!3014460)))

(declare-fun c!822062 () Bool)

(assert (=> d!1545322 (= c!822062 ((_ is Cons!54961) (t!362581 (toList!7471 lm!2280))))))

(assert (=> d!1545322 (forall!12596 (t!362581 (toList!7471 lm!2280)) lambda!236384)))

(assert (=> d!1545322 (= (extractMap!2676 (t!362581 (toList!7471 lm!2280))) lt!1972180)))

(declare-fun b!4824411 () Bool)

(assert (=> b!4824411 (= e!3014460 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280)))) (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))))))

(declare-fun b!4824412 () Bool)

(assert (=> b!4824412 (= e!3014460 (ListMap!6850 Nil!54960))))

(assert (= (and d!1545322 c!822062) b!4824411))

(assert (= (and d!1545322 (not c!822062)) b!4824412))

(declare-fun m!5813952 () Bool)

(assert (=> d!1545322 m!5813952))

(declare-fun m!5813954 () Bool)

(assert (=> d!1545322 m!5813954))

(declare-fun m!5813956 () Bool)

(assert (=> b!4824411 m!5813956))

(assert (=> b!4824411 m!5813956))

(declare-fun m!5813958 () Bool)

(assert (=> b!4824411 m!5813958))

(assert (=> b!4824208 d!1545322))

(declare-fun d!1545324 () Bool)

(declare-fun tail!9406 (List!55085) List!55085)

(assert (=> d!1545324 (= (tail!9404 lm!2280) (ListLongMap!5988 (tail!9406 (toList!7471 lm!2280))))))

(declare-fun bs!1163285 () Bool)

(assert (= bs!1163285 d!1545324))

(declare-fun m!5813960 () Bool)

(assert (=> bs!1163285 m!5813960))

(assert (=> b!4824208 d!1545324))

(declare-fun b!4824417 () Bool)

(declare-fun e!3014463 () Bool)

(declare-fun tp!1362541 () Bool)

(declare-fun tp!1362542 () Bool)

(assert (=> b!4824417 (= e!3014463 (and tp!1362541 tp!1362542))))

(assert (=> b!4824206 (= tp!1362530 e!3014463)))

(assert (= (and b!4824206 ((_ is Cons!54961) (toList!7471 lm!2280))) b!4824417))

(declare-fun b_lambda!189599 () Bool)

(assert (= b_lambda!189589 (or start!500352 b_lambda!189599)))

(declare-fun bs!1163286 () Bool)

(declare-fun d!1545326 () Bool)

(assert (= bs!1163286 (and d!1545326 start!500352)))

(assert (=> bs!1163286 (= (dynLambda!22210 lambda!236300 (h!61395 (toList!7471 lm!2280))) (noDuplicateKeys!2448 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))

(assert (=> bs!1163286 m!5813912))

(assert (=> b!4824240 d!1545326))

(declare-fun b_lambda!189601 () Bool)

(assert (= b_lambda!189597 (or start!500352 b_lambda!189601)))

(declare-fun bs!1163287 () Bool)

(declare-fun d!1545328 () Bool)

(assert (= bs!1163287 (and d!1545328 start!500352)))

(assert (=> bs!1163287 (= (dynLambda!22210 lambda!236300 (h!61395 (toList!7471 lt!1971940))) (noDuplicateKeys!2448 (_2!32384 (h!61395 (toList!7471 lt!1971940)))))))

(declare-fun m!5813962 () Bool)

(assert (=> bs!1163287 m!5813962))

(assert (=> b!4824402 d!1545328))

(check-sat (not d!1545250) (not d!1545258) (not b!4824241) (not d!1545270) (not d!1545324) (not b!4824323) (not b!4824397) (not b!4824400) tp_is_empty!34443 (not b!4824320) (not b_lambda!189599) (not d!1545314) (not b!4824330) (not bs!1163286) (not bm!336302) (not b!4824328) (not b!4824325) (not d!1545280) (not b!4824327) (not d!1545320) (not b!4824322) (not b!4824255) (not b!4824332) (not bm!336303) (not b!4824403) (not d!1545286) (not b!4824383) (not b!4824417) (not b!4824321) (not b!4824326) (not b!4824401) (not b!4824394) (not b!4824411) (not b!4824386) (not d!1545284) (not b!4824289) (not b!4824392) (not d!1545278) (not b!4824291) (not b!4824399) (not b!4824385) (not d!1545236) (not b_lambda!189601) (not bm!336301) (not d!1545266) (not d!1545316) (not d!1545264) (not b!4824384) (not b!4824406) (not bm!336300) (not bs!1163287) (not d!1545322) (not b!4824395) (not b!4824396) (not d!1545288) (not b!4824390) (not bm!336283))
(check-sat)
(get-model)

(declare-fun d!1545390 () Bool)

(assert (=> d!1545390 (= (get!18818 (getValueByKey!2615 (toList!7471 lm!2280) lt!1971938)) (v!49164 (getValueByKey!2615 (toList!7471 lm!2280) lt!1971938)))))

(assert (=> d!1545284 d!1545390))

(declare-fun b!4824559 () Bool)

(declare-fun e!3014553 () Option!13488)

(declare-fun e!3014554 () Option!13488)

(assert (=> b!4824559 (= e!3014553 e!3014554)))

(declare-fun c!822092 () Bool)

(assert (=> b!4824559 (= c!822092 (and ((_ is Cons!54961) (toList!7471 lm!2280)) (not (= (_1!32384 (h!61395 (toList!7471 lm!2280))) lt!1971938))))))

(declare-fun b!4824561 () Bool)

(assert (=> b!4824561 (= e!3014554 None!13487)))

(declare-fun b!4824558 () Bool)

(assert (=> b!4824558 (= e!3014553 (Some!13487 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))

(declare-fun b!4824560 () Bool)

(assert (=> b!4824560 (= e!3014554 (getValueByKey!2615 (t!362581 (toList!7471 lm!2280)) lt!1971938))))

(declare-fun d!1545392 () Bool)

(declare-fun c!822091 () Bool)

(assert (=> d!1545392 (= c!822091 (and ((_ is Cons!54961) (toList!7471 lm!2280)) (= (_1!32384 (h!61395 (toList!7471 lm!2280))) lt!1971938)))))

(assert (=> d!1545392 (= (getValueByKey!2615 (toList!7471 lm!2280) lt!1971938) e!3014553)))

(assert (= (and d!1545392 c!822091) b!4824558))

(assert (= (and d!1545392 (not c!822091)) b!4824559))

(assert (= (and b!4824559 c!822092) b!4824560))

(assert (= (and b!4824559 (not c!822092)) b!4824561))

(declare-fun m!5814190 () Bool)

(assert (=> b!4824560 m!5814190))

(assert (=> d!1545284 d!1545392))

(declare-fun b!4824570 () Bool)

(declare-fun e!3014561 () Unit!142817)

(declare-fun e!3014559 () Unit!142817)

(assert (=> b!4824570 (= e!3014561 e!3014559)))

(declare-fun c!822097 () Bool)

(declare-fun call!336314 () Bool)

(assert (=> b!4824570 (= c!822097 call!336314)))

(declare-fun b!4824571 () Bool)

(declare-fun e!3014560 () List!55087)

(assert (=> b!4824571 (= e!3014560 (getKeysList!1156 (toList!7472 lt!1972149)))))

(declare-fun b!4824572 () Bool)

(assert (=> b!4824572 (= e!3014560 (keys!20219 lt!1972149))))

(declare-fun b!4824573 () Bool)

(declare-fun lt!1972277 () Unit!142817)

(assert (=> b!4824573 (= e!3014561 lt!1972277)))

(declare-fun lt!1972278 () Unit!142817)

(assert (=> b!4824573 (= lt!1972278 (lemmaContainsKeyImpliesGetValueByKeyDefined!2401 (toList!7472 lt!1972149) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> b!4824573 (isDefined!10604 (getValueByKey!2616 (toList!7472 lt!1972149) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun lt!1972274 () Unit!142817)

(assert (=> b!4824573 (= lt!1972274 lt!1972278)))

(assert (=> b!4824573 (= lt!1972277 (lemmaInListThenGetKeysListContains!1151 (toList!7472 lt!1972149) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> b!4824573 call!336314))

(declare-fun bm!336309 () Bool)

(assert (=> bm!336309 (= call!336314 (contains!18767 e!3014560 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun c!822099 () Bool)

(declare-fun c!822098 () Bool)

(assert (=> bm!336309 (= c!822099 c!822098)))

(declare-fun b!4824574 () Bool)

(declare-fun e!3014563 () Bool)

(assert (=> b!4824574 (= e!3014563 (contains!18767 (keys!20219 lt!1972149) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun b!4824575 () Bool)

(declare-fun Unit!142858 () Unit!142817)

(assert (=> b!4824575 (= e!3014559 Unit!142858)))

(declare-fun b!4824576 () Bool)

(declare-fun e!3014562 () Bool)

(assert (=> b!4824576 (= e!3014562 e!3014563)))

(declare-fun res!2053839 () Bool)

(assert (=> b!4824576 (=> (not res!2053839) (not e!3014563))))

(assert (=> b!4824576 (= res!2053839 (isDefined!10604 (getValueByKey!2616 (toList!7472 lt!1972149) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))))

(declare-fun d!1545402 () Bool)

(assert (=> d!1545402 e!3014562))

(declare-fun res!2053838 () Bool)

(assert (=> d!1545402 (=> res!2053838 e!3014562)))

(declare-fun e!3014564 () Bool)

(assert (=> d!1545402 (= res!2053838 e!3014564)))

(declare-fun res!2053837 () Bool)

(assert (=> d!1545402 (=> (not res!2053837) (not e!3014564))))

(declare-fun lt!1972276 () Bool)

(assert (=> d!1545402 (= res!2053837 (not lt!1972276))))

(declare-fun lt!1972279 () Bool)

(assert (=> d!1545402 (= lt!1972276 lt!1972279)))

(declare-fun lt!1972280 () Unit!142817)

(assert (=> d!1545402 (= lt!1972280 e!3014561)))

(assert (=> d!1545402 (= c!822098 lt!1972279)))

(assert (=> d!1545402 (= lt!1972279 (containsKey!4363 (toList!7472 lt!1972149) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> d!1545402 (= (contains!18764 lt!1972149 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) lt!1972276)))

(declare-fun b!4824577 () Bool)

(assert (=> b!4824577 false))

(declare-fun lt!1972273 () Unit!142817)

(declare-fun lt!1972275 () Unit!142817)

(assert (=> b!4824577 (= lt!1972273 lt!1972275)))

(assert (=> b!4824577 (containsKey!4363 (toList!7472 lt!1972149) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(assert (=> b!4824577 (= lt!1972275 (lemmaInGetKeysListThenContainsKey!1156 (toList!7472 lt!1972149) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun Unit!142860 () Unit!142817)

(assert (=> b!4824577 (= e!3014559 Unit!142860)))

(declare-fun b!4824578 () Bool)

(assert (=> b!4824578 (= e!3014564 (not (contains!18767 (keys!20219 lt!1972149) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))))

(assert (= (and d!1545402 c!822098) b!4824573))

(assert (= (and d!1545402 (not c!822098)) b!4824570))

(assert (= (and b!4824570 c!822097) b!4824577))

(assert (= (and b!4824570 (not c!822097)) b!4824575))

(assert (= (or b!4824573 b!4824570) bm!336309))

(assert (= (and bm!336309 c!822099) b!4824571))

(assert (= (and bm!336309 (not c!822099)) b!4824572))

(assert (= (and d!1545402 res!2053837) b!4824578))

(assert (= (and d!1545402 (not res!2053838)) b!4824576))

(assert (= (and b!4824576 res!2053839) b!4824574))

(declare-fun m!5814192 () Bool)

(assert (=> b!4824572 m!5814192))

(declare-fun m!5814194 () Bool)

(assert (=> b!4824577 m!5814194))

(declare-fun m!5814196 () Bool)

(assert (=> b!4824577 m!5814196))

(assert (=> d!1545402 m!5814194))

(declare-fun m!5814198 () Bool)

(assert (=> b!4824573 m!5814198))

(declare-fun m!5814200 () Bool)

(assert (=> b!4824573 m!5814200))

(assert (=> b!4824573 m!5814200))

(declare-fun m!5814202 () Bool)

(assert (=> b!4824573 m!5814202))

(declare-fun m!5814204 () Bool)

(assert (=> b!4824573 m!5814204))

(declare-fun m!5814206 () Bool)

(assert (=> bm!336309 m!5814206))

(assert (=> b!4824576 m!5814200))

(assert (=> b!4824576 m!5814200))

(assert (=> b!4824576 m!5814202))

(declare-fun m!5814208 () Bool)

(assert (=> b!4824571 m!5814208))

(assert (=> b!4824578 m!5814192))

(assert (=> b!4824578 m!5814192))

(declare-fun m!5814210 () Bool)

(assert (=> b!4824578 m!5814210))

(assert (=> b!4824574 m!5814192))

(assert (=> b!4824574 m!5814192))

(assert (=> b!4824574 m!5814210))

(assert (=> b!4824383 d!1545402))

(declare-fun d!1545404 () Bool)

(declare-fun dynLambda!22212 (Int tuple2!58178) Bool)

(assert (=> d!1545404 (dynLambda!22212 lambda!236377 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))

(declare-fun lt!1972283 () Unit!142817)

(declare-fun choose!35096 (List!55084 Int tuple2!58178) Unit!142817)

(assert (=> d!1545404 (= lt!1972283 (choose!35096 (toList!7472 lt!1972154) lambda!236377 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(declare-fun e!3014569 () Bool)

(assert (=> d!1545404 e!3014569))

(declare-fun res!2053842 () Bool)

(assert (=> d!1545404 (=> (not res!2053842) (not e!3014569))))

(assert (=> d!1545404 (= res!2053842 (forall!12598 (toList!7472 lt!1972154) lambda!236377))))

(assert (=> d!1545404 (= (forallContained!4378 (toList!7472 lt!1972154) lambda!236377 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1972283)))

(declare-fun b!4824585 () Bool)

(declare-fun contains!18769 (List!55084 tuple2!58178) Bool)

(assert (=> b!4824585 (= e!3014569 (contains!18769 (toList!7472 lt!1972154) (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(assert (= (and d!1545404 res!2053842) b!4824585))

(declare-fun b_lambda!189621 () Bool)

(assert (=> (not b_lambda!189621) (not d!1545404)))

(declare-fun m!5814214 () Bool)

(assert (=> d!1545404 m!5814214))

(declare-fun m!5814216 () Bool)

(assert (=> d!1545404 m!5814216))

(assert (=> d!1545404 m!5813902))

(declare-fun m!5814218 () Bool)

(assert (=> b!4824585 m!5814218))

(assert (=> b!4824383 d!1545404))

(declare-fun d!1545408 () Bool)

(declare-fun e!3014575 () Bool)

(assert (=> d!1545408 e!3014575))

(declare-fun res!2053850 () Bool)

(assert (=> d!1545408 (=> (not res!2053850) (not e!3014575))))

(declare-fun lt!1972317 () ListMap!6849)

(assert (=> d!1545408 (= res!2053850 (contains!18764 lt!1972317 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun lt!1972319 () List!55084)

(assert (=> d!1545408 (= lt!1972317 (ListMap!6850 lt!1972319))))

(declare-fun lt!1972318 () Unit!142817)

(declare-fun lt!1972316 () Unit!142817)

(assert (=> d!1545408 (= lt!1972318 lt!1972316)))

(assert (=> d!1545408 (= (getValueByKey!2616 lt!1972319 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (Some!13488 (_2!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1216 (List!55084 K!16644 V!16890) Unit!142817)

(assert (=> d!1545408 (= lt!1972316 (lemmaContainsTupThenGetReturnValue!1216 lt!1972319 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) (_2!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun insertNoDuplicatedKeys!724 (List!55084 K!16644 V!16890) List!55084)

(assert (=> d!1545408 (= lt!1972319 (insertNoDuplicatedKeys!724 (toList!7472 lt!1971936) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) (_2!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> d!1545408 (= (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1972317)))

(declare-fun b!4824595 () Bool)

(declare-fun res!2053851 () Bool)

(assert (=> b!4824595 (=> (not res!2053851) (not e!3014575))))

(assert (=> b!4824595 (= res!2053851 (= (getValueByKey!2616 (toList!7472 lt!1972317) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (Some!13488 (_2!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))))

(declare-fun b!4824596 () Bool)

(assert (=> b!4824596 (= e!3014575 (contains!18769 (toList!7472 lt!1972317) (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(assert (= (and d!1545408 res!2053850) b!4824595))

(assert (= (and b!4824595 res!2053851) b!4824596))

(declare-fun m!5814224 () Bool)

(assert (=> d!1545408 m!5814224))

(declare-fun m!5814226 () Bool)

(assert (=> d!1545408 m!5814226))

(declare-fun m!5814228 () Bool)

(assert (=> d!1545408 m!5814228))

(declare-fun m!5814230 () Bool)

(assert (=> d!1545408 m!5814230))

(declare-fun m!5814232 () Bool)

(assert (=> b!4824595 m!5814232))

(declare-fun m!5814234 () Bool)

(assert (=> b!4824596 m!5814234))

(assert (=> b!4824383 d!1545408))

(declare-fun b!4824597 () Bool)

(declare-fun e!3014578 () Unit!142817)

(declare-fun e!3014576 () Unit!142817)

(assert (=> b!4824597 (= e!3014578 e!3014576)))

(declare-fun c!822103 () Bool)

(declare-fun call!336318 () Bool)

(assert (=> b!4824597 (= c!822103 call!336318)))

(declare-fun b!4824598 () Bool)

(declare-fun e!3014577 () List!55087)

(assert (=> b!4824598 (= e!3014577 (getKeysList!1156 (toList!7472 lt!1972154)))))

(declare-fun b!4824599 () Bool)

(assert (=> b!4824599 (= e!3014577 (keys!20219 lt!1972154))))

(declare-fun b!4824600 () Bool)

(declare-fun lt!1972324 () Unit!142817)

(assert (=> b!4824600 (= e!3014578 lt!1972324)))

(declare-fun lt!1972325 () Unit!142817)

(assert (=> b!4824600 (= lt!1972325 (lemmaContainsKeyImpliesGetValueByKeyDefined!2401 (toList!7472 lt!1972154) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> b!4824600 (isDefined!10604 (getValueByKey!2616 (toList!7472 lt!1972154) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun lt!1972321 () Unit!142817)

(assert (=> b!4824600 (= lt!1972321 lt!1972325)))

(assert (=> b!4824600 (= lt!1972324 (lemmaInListThenGetKeysListContains!1151 (toList!7472 lt!1972154) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> b!4824600 call!336318))

(declare-fun bm!336313 () Bool)

(assert (=> bm!336313 (= call!336318 (contains!18767 e!3014577 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun c!822105 () Bool)

(declare-fun c!822104 () Bool)

(assert (=> bm!336313 (= c!822105 c!822104)))

(declare-fun b!4824601 () Bool)

(declare-fun e!3014580 () Bool)

(assert (=> b!4824601 (= e!3014580 (contains!18767 (keys!20219 lt!1972154) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun b!4824602 () Bool)

(declare-fun Unit!142861 () Unit!142817)

(assert (=> b!4824602 (= e!3014576 Unit!142861)))

(declare-fun b!4824603 () Bool)

(declare-fun e!3014579 () Bool)

(assert (=> b!4824603 (= e!3014579 e!3014580)))

(declare-fun res!2053854 () Bool)

(assert (=> b!4824603 (=> (not res!2053854) (not e!3014580))))

(assert (=> b!4824603 (= res!2053854 (isDefined!10604 (getValueByKey!2616 (toList!7472 lt!1972154) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))))

(declare-fun d!1545412 () Bool)

(assert (=> d!1545412 e!3014579))

(declare-fun res!2053853 () Bool)

(assert (=> d!1545412 (=> res!2053853 e!3014579)))

(declare-fun e!3014581 () Bool)

(assert (=> d!1545412 (= res!2053853 e!3014581)))

(declare-fun res!2053852 () Bool)

(assert (=> d!1545412 (=> (not res!2053852) (not e!3014581))))

(declare-fun lt!1972323 () Bool)

(assert (=> d!1545412 (= res!2053852 (not lt!1972323))))

(declare-fun lt!1972326 () Bool)

(assert (=> d!1545412 (= lt!1972323 lt!1972326)))

(declare-fun lt!1972327 () Unit!142817)

(assert (=> d!1545412 (= lt!1972327 e!3014578)))

(assert (=> d!1545412 (= c!822104 lt!1972326)))

(assert (=> d!1545412 (= lt!1972326 (containsKey!4363 (toList!7472 lt!1972154) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> d!1545412 (= (contains!18764 lt!1972154 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) lt!1972323)))

(declare-fun b!4824604 () Bool)

(assert (=> b!4824604 false))

(declare-fun lt!1972320 () Unit!142817)

(declare-fun lt!1972322 () Unit!142817)

(assert (=> b!4824604 (= lt!1972320 lt!1972322)))

(assert (=> b!4824604 (containsKey!4363 (toList!7472 lt!1972154) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(assert (=> b!4824604 (= lt!1972322 (lemmaInGetKeysListThenContainsKey!1156 (toList!7472 lt!1972154) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun Unit!142863 () Unit!142817)

(assert (=> b!4824604 (= e!3014576 Unit!142863)))

(declare-fun b!4824605 () Bool)

(assert (=> b!4824605 (= e!3014581 (not (contains!18767 (keys!20219 lt!1972154) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))))

(assert (= (and d!1545412 c!822104) b!4824600))

(assert (= (and d!1545412 (not c!822104)) b!4824597))

(assert (= (and b!4824597 c!822103) b!4824604))

(assert (= (and b!4824597 (not c!822103)) b!4824602))

(assert (= (or b!4824600 b!4824597) bm!336313))

(assert (= (and bm!336313 c!822105) b!4824598))

(assert (= (and bm!336313 (not c!822105)) b!4824599))

(assert (= (and d!1545412 res!2053852) b!4824605))

(assert (= (and d!1545412 (not res!2053853)) b!4824603))

(assert (= (and b!4824603 res!2053854) b!4824601))

(declare-fun m!5814258 () Bool)

(assert (=> b!4824599 m!5814258))

(declare-fun m!5814262 () Bool)

(assert (=> b!4824604 m!5814262))

(declare-fun m!5814264 () Bool)

(assert (=> b!4824604 m!5814264))

(assert (=> d!1545412 m!5814262))

(declare-fun m!5814268 () Bool)

(assert (=> b!4824600 m!5814268))

(declare-fun m!5814272 () Bool)

(assert (=> b!4824600 m!5814272))

(assert (=> b!4824600 m!5814272))

(declare-fun m!5814274 () Bool)

(assert (=> b!4824600 m!5814274))

(declare-fun m!5814278 () Bool)

(assert (=> b!4824600 m!5814278))

(declare-fun m!5814280 () Bool)

(assert (=> bm!336313 m!5814280))

(assert (=> b!4824603 m!5814272))

(assert (=> b!4824603 m!5814272))

(assert (=> b!4824603 m!5814274))

(declare-fun m!5814286 () Bool)

(assert (=> b!4824598 m!5814286))

(assert (=> b!4824605 m!5814258))

(assert (=> b!4824605 m!5814258))

(declare-fun m!5814288 () Bool)

(assert (=> b!4824605 m!5814288))

(assert (=> b!4824601 m!5814258))

(assert (=> b!4824601 m!5814258))

(assert (=> b!4824601 m!5814288))

(assert (=> b!4824383 d!1545412))

(declare-fun bs!1163368 () Bool)

(declare-fun d!1545416 () Bool)

(assert (= bs!1163368 (and d!1545416 b!4824382)))

(declare-fun lambda!236426 () Int)

(assert (=> bs!1163368 (= (= lt!1972149 lt!1971936) (= lambda!236426 lambda!236375))))

(declare-fun bs!1163369 () Bool)

(assert (= bs!1163369 (and d!1545416 b!4824383)))

(assert (=> bs!1163369 (= (= lt!1972149 lt!1971936) (= lambda!236426 lambda!236376))))

(assert (=> bs!1163369 (= lambda!236426 lambda!236377)))

(declare-fun bs!1163370 () Bool)

(assert (= bs!1163370 (and d!1545416 d!1545288)))

(assert (=> bs!1163370 (= (= lt!1972149 lt!1972143) (= lambda!236426 lambda!236378))))

(assert (=> d!1545416 true))

(assert (=> d!1545416 (forall!12598 (toList!7472 lt!1971936) lambda!236426)))

(declare-fun lt!1972335 () Unit!142817)

(declare-fun choose!35097 (ListMap!6849 ListMap!6849 K!16644 V!16890) Unit!142817)

(assert (=> d!1545416 (= lt!1972335 (choose!35097 lt!1971936 lt!1972149 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) (_2!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> d!1545416 (forall!12598 (toList!7472 (+!2533 lt!1971936 (tuple2!58179 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) (_2!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))) lambda!236426)))

(assert (=> d!1545416 (= (addForallContainsKeyThenBeforeAdding!987 lt!1971936 lt!1972149 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) (_2!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) lt!1972335)))

(declare-fun bs!1163371 () Bool)

(assert (= bs!1163371 d!1545416))

(declare-fun m!5814322 () Bool)

(assert (=> bs!1163371 m!5814322))

(declare-fun m!5814324 () Bool)

(assert (=> bs!1163371 m!5814324))

(declare-fun m!5814326 () Bool)

(assert (=> bs!1163371 m!5814326))

(declare-fun m!5814328 () Bool)

(assert (=> bs!1163371 m!5814328))

(assert (=> b!4824383 d!1545416))

(declare-fun d!1545438 () Bool)

(declare-fun res!2053882 () Bool)

(declare-fun e!3014612 () Bool)

(assert (=> d!1545438 (=> res!2053882 e!3014612)))

(assert (=> d!1545438 (= res!2053882 ((_ is Nil!54960) (toList!7472 lt!1971936)))))

(assert (=> d!1545438 (= (forall!12598 (toList!7472 lt!1971936) lambda!236376) e!3014612)))

(declare-fun b!4824640 () Bool)

(declare-fun e!3014613 () Bool)

(assert (=> b!4824640 (= e!3014612 e!3014613)))

(declare-fun res!2053883 () Bool)

(assert (=> b!4824640 (=> (not res!2053883) (not e!3014613))))

(assert (=> b!4824640 (= res!2053883 (dynLambda!22212 lambda!236376 (h!61394 (toList!7472 lt!1971936))))))

(declare-fun b!4824641 () Bool)

(assert (=> b!4824641 (= e!3014613 (forall!12598 (t!362580 (toList!7472 lt!1971936)) lambda!236376))))

(assert (= (and d!1545438 (not res!2053882)) b!4824640))

(assert (= (and b!4824640 res!2053883) b!4824641))

(declare-fun b_lambda!189627 () Bool)

(assert (=> (not b_lambda!189627) (not b!4824640)))

(declare-fun m!5814332 () Bool)

(assert (=> b!4824640 m!5814332))

(declare-fun m!5814334 () Bool)

(assert (=> b!4824641 m!5814334))

(assert (=> b!4824383 d!1545438))

(declare-fun d!1545442 () Bool)

(declare-fun res!2053884 () Bool)

(declare-fun e!3014614 () Bool)

(assert (=> d!1545442 (=> res!2053884 e!3014614)))

(assert (=> d!1545442 (= res!2053884 ((_ is Nil!54960) (toList!7472 lt!1972154)))))

(assert (=> d!1545442 (= (forall!12598 (toList!7472 lt!1972154) lambda!236377) e!3014614)))

(declare-fun b!4824642 () Bool)

(declare-fun e!3014615 () Bool)

(assert (=> b!4824642 (= e!3014614 e!3014615)))

(declare-fun res!2053885 () Bool)

(assert (=> b!4824642 (=> (not res!2053885) (not e!3014615))))

(assert (=> b!4824642 (= res!2053885 (dynLambda!22212 lambda!236377 (h!61394 (toList!7472 lt!1972154))))))

(declare-fun b!4824643 () Bool)

(assert (=> b!4824643 (= e!3014615 (forall!12598 (t!362580 (toList!7472 lt!1972154)) lambda!236377))))

(assert (= (and d!1545442 (not res!2053884)) b!4824642))

(assert (= (and b!4824642 res!2053885) b!4824643))

(declare-fun b_lambda!189629 () Bool)

(assert (=> (not b_lambda!189629) (not b!4824642)))

(declare-fun m!5814336 () Bool)

(assert (=> b!4824642 m!5814336))

(declare-fun m!5814338 () Bool)

(assert (=> b!4824643 m!5814338))

(assert (=> b!4824383 d!1545442))

(declare-fun d!1545444 () Bool)

(declare-fun res!2053886 () Bool)

(declare-fun e!3014616 () Bool)

(assert (=> d!1545444 (=> res!2053886 e!3014616)))

(assert (=> d!1545444 (= res!2053886 ((_ is Nil!54960) (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(assert (=> d!1545444 (= (forall!12598 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))) lambda!236377) e!3014616)))

(declare-fun b!4824644 () Bool)

(declare-fun e!3014617 () Bool)

(assert (=> b!4824644 (= e!3014616 e!3014617)))

(declare-fun res!2053887 () Bool)

(assert (=> b!4824644 (=> (not res!2053887) (not e!3014617))))

(assert (=> b!4824644 (= res!2053887 (dynLambda!22212 lambda!236377 (h!61394 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun b!4824645 () Bool)

(assert (=> b!4824645 (= e!3014617 (forall!12598 (t!362580 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lambda!236377))))

(assert (= (and d!1545444 (not res!2053886)) b!4824644))

(assert (= (and b!4824644 res!2053887) b!4824645))

(declare-fun b_lambda!189631 () Bool)

(assert (=> (not b_lambda!189631) (not b!4824644)))

(declare-fun m!5814340 () Bool)

(assert (=> b!4824644 m!5814340))

(declare-fun m!5814342 () Bool)

(assert (=> b!4824645 m!5814342))

(assert (=> b!4824383 d!1545444))

(declare-fun bs!1163373 () Bool)

(declare-fun b!4824646 () Bool)

(assert (= bs!1163373 (and b!4824646 b!4824383)))

(declare-fun lambda!236427 () Int)

(assert (=> bs!1163373 (= (= (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1972149) (= lambda!236427 lambda!236377))))

(declare-fun bs!1163374 () Bool)

(assert (= bs!1163374 (and b!4824646 b!4824382)))

(assert (=> bs!1163374 (= (= (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1971936) (= lambda!236427 lambda!236375))))

(declare-fun bs!1163375 () Bool)

(assert (= bs!1163375 (and b!4824646 d!1545416)))

(assert (=> bs!1163375 (= (= (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1972149) (= lambda!236427 lambda!236426))))

(declare-fun bs!1163376 () Bool)

(assert (= bs!1163376 (and b!4824646 d!1545288)))

(assert (=> bs!1163376 (= (= (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1972143) (= lambda!236427 lambda!236378))))

(assert (=> bs!1163373 (= (= (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1971936) (= lambda!236427 lambda!236376))))

(assert (=> b!4824646 true))

(declare-fun bs!1163377 () Bool)

(declare-fun b!4824647 () Bool)

(assert (= bs!1163377 (and b!4824647 b!4824383)))

(declare-fun lambda!236428 () Int)

(assert (=> bs!1163377 (= (= (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1972149) (= lambda!236428 lambda!236377))))

(declare-fun bs!1163378 () Bool)

(assert (= bs!1163378 (and b!4824647 d!1545416)))

(assert (=> bs!1163378 (= (= (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1972149) (= lambda!236428 lambda!236426))))

(declare-fun bs!1163379 () Bool)

(assert (= bs!1163379 (and b!4824647 d!1545288)))

(assert (=> bs!1163379 (= (= (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1972143) (= lambda!236428 lambda!236378))))

(assert (=> bs!1163377 (= (= (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1971936) (= lambda!236428 lambda!236376))))

(declare-fun bs!1163380 () Bool)

(assert (= bs!1163380 (and b!4824647 b!4824382)))

(assert (=> bs!1163380 (= (= (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1971936) (= lambda!236428 lambda!236375))))

(declare-fun bs!1163381 () Bool)

(assert (= bs!1163381 (and b!4824647 b!4824646)))

(assert (=> bs!1163381 (= lambda!236428 lambda!236427)))

(assert (=> b!4824647 true))

(declare-fun lt!1972345 () ListMap!6849)

(declare-fun lambda!236429 () Int)

(assert (=> bs!1163377 (= (= lt!1972345 lt!1972149) (= lambda!236429 lambda!236377))))

(assert (=> bs!1163378 (= (= lt!1972345 lt!1972149) (= lambda!236429 lambda!236426))))

(assert (=> bs!1163377 (= (= lt!1972345 lt!1971936) (= lambda!236429 lambda!236376))))

(assert (=> bs!1163380 (= (= lt!1972345 lt!1971936) (= lambda!236429 lambda!236375))))

(assert (=> bs!1163381 (= (= lt!1972345 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236429 lambda!236427))))

(assert (=> b!4824647 (= (= lt!1972345 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236429 lambda!236428))))

(assert (=> bs!1163379 (= (= lt!1972345 lt!1972143) (= lambda!236429 lambda!236378))))

(assert (=> b!4824647 true))

(declare-fun bs!1163382 () Bool)

(declare-fun d!1545446 () Bool)

(assert (= bs!1163382 (and d!1545446 d!1545416)))

(declare-fun lt!1972339 () ListMap!6849)

(declare-fun lambda!236430 () Int)

(assert (=> bs!1163382 (= (= lt!1972339 lt!1972149) (= lambda!236430 lambda!236426))))

(declare-fun bs!1163383 () Bool)

(assert (= bs!1163383 (and d!1545446 b!4824383)))

(assert (=> bs!1163383 (= (= lt!1972339 lt!1971936) (= lambda!236430 lambda!236376))))

(assert (=> bs!1163383 (= (= lt!1972339 lt!1972149) (= lambda!236430 lambda!236377))))

(declare-fun bs!1163385 () Bool)

(assert (= bs!1163385 (and d!1545446 b!4824647)))

(assert (=> bs!1163385 (= (= lt!1972339 lt!1972345) (= lambda!236430 lambda!236429))))

(declare-fun bs!1163386 () Bool)

(assert (= bs!1163386 (and d!1545446 b!4824382)))

(assert (=> bs!1163386 (= (= lt!1972339 lt!1971936) (= lambda!236430 lambda!236375))))

(declare-fun bs!1163387 () Bool)

(assert (= bs!1163387 (and d!1545446 b!4824646)))

(assert (=> bs!1163387 (= (= lt!1972339 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236430 lambda!236427))))

(assert (=> bs!1163385 (= (= lt!1972339 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236430 lambda!236428))))

(declare-fun bs!1163388 () Bool)

(assert (= bs!1163388 (and d!1545446 d!1545288)))

(assert (=> bs!1163388 (= (= lt!1972339 lt!1972143) (= lambda!236430 lambda!236378))))

(assert (=> d!1545446 true))

(declare-fun e!3014618 () ListMap!6849)

(assert (=> b!4824646 (= e!3014618 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(declare-fun lt!1972344 () Unit!142817)

(declare-fun call!336320 () Unit!142817)

(assert (=> b!4824646 (= lt!1972344 call!336320)))

(declare-fun call!336319 () Bool)

(assert (=> b!4824646 call!336319))

(declare-fun lt!1972347 () Unit!142817)

(assert (=> b!4824646 (= lt!1972347 lt!1972344)))

(declare-fun call!336321 () Bool)

(assert (=> b!4824646 call!336321))

(declare-fun lt!1972359 () Unit!142817)

(declare-fun Unit!142874 () Unit!142817)

(assert (=> b!4824646 (= lt!1972359 Unit!142874)))

(declare-fun bm!336314 () Bool)

(declare-fun c!822109 () Bool)

(declare-fun lt!1972350 () ListMap!6849)

(assert (=> bm!336314 (= call!336321 (forall!12598 (ite c!822109 (toList!7472 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (toList!7472 lt!1972350)) (ite c!822109 lambda!236427 lambda!236429)))))

(declare-fun e!3014620 () Bool)

(declare-fun b!4824648 () Bool)

(assert (=> b!4824648 (= e!3014620 (forall!12598 (toList!7472 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) lambda!236429))))

(declare-fun b!4824649 () Bool)

(declare-fun res!2053888 () Bool)

(declare-fun e!3014619 () Bool)

(assert (=> b!4824649 (=> (not res!2053888) (not e!3014619))))

(assert (=> b!4824649 (= res!2053888 (forall!12598 (toList!7472 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) lambda!236430))))

(declare-fun b!4824650 () Bool)

(assert (=> b!4824650 (= e!3014619 (invariantList!1809 (toList!7472 lt!1972339)))))

(declare-fun bm!336315 () Bool)

(assert (=> bm!336315 (= call!336319 (forall!12598 (toList!7472 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (ite c!822109 lambda!236427 lambda!236429)))))

(declare-fun bm!336316 () Bool)

(assert (=> bm!336316 (= call!336320 (lemmaContainsAllItsOwnKeys!988 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> b!4824647 (= e!3014618 lt!1972345)))

(assert (=> b!4824647 (= lt!1972350 (+!2533 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) (h!61394 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> b!4824647 (= lt!1972345 (addToMapMapFromBucket!1794 (t!362580 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280))))) (+!2533 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) (h!61394 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))))

(declare-fun lt!1972349 () Unit!142817)

(assert (=> b!4824647 (= lt!1972349 call!336320)))

(assert (=> b!4824647 (forall!12598 (toList!7472 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) lambda!236428)))

(declare-fun lt!1972353 () Unit!142817)

(assert (=> b!4824647 (= lt!1972353 lt!1972349)))

(assert (=> b!4824647 call!336321))

(declare-fun lt!1972358 () Unit!142817)

(declare-fun Unit!142875 () Unit!142817)

(assert (=> b!4824647 (= lt!1972358 Unit!142875)))

(assert (=> b!4824647 (forall!12598 (t!362580 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lambda!236429)))

(declare-fun lt!1972346 () Unit!142817)

(declare-fun Unit!142876 () Unit!142817)

(assert (=> b!4824647 (= lt!1972346 Unit!142876)))

(declare-fun lt!1972356 () Unit!142817)

(declare-fun Unit!142877 () Unit!142817)

(assert (=> b!4824647 (= lt!1972356 Unit!142877)))

(declare-fun lt!1972354 () Unit!142817)

(assert (=> b!4824647 (= lt!1972354 (forallContained!4378 (toList!7472 lt!1972350) lambda!236429 (h!61394 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> b!4824647 (contains!18764 lt!1972350 (_1!32383 (h!61394 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun lt!1972352 () Unit!142817)

(declare-fun Unit!142878 () Unit!142817)

(assert (=> b!4824647 (= lt!1972352 Unit!142878)))

(assert (=> b!4824647 (contains!18764 lt!1972345 (_1!32383 (h!61394 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun lt!1972343 () Unit!142817)

(declare-fun Unit!142879 () Unit!142817)

(assert (=> b!4824647 (= lt!1972343 Unit!142879)))

(assert (=> b!4824647 (forall!12598 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))) lambda!236429)))

(declare-fun lt!1972341 () Unit!142817)

(declare-fun Unit!142880 () Unit!142817)

(assert (=> b!4824647 (= lt!1972341 Unit!142880)))

(assert (=> b!4824647 (forall!12598 (toList!7472 lt!1972350) lambda!236429)))

(declare-fun lt!1972348 () Unit!142817)

(declare-fun Unit!142881 () Unit!142817)

(assert (=> b!4824647 (= lt!1972348 Unit!142881)))

(declare-fun lt!1972355 () Unit!142817)

(declare-fun Unit!142882 () Unit!142817)

(assert (=> b!4824647 (= lt!1972355 Unit!142882)))

(declare-fun lt!1972342 () Unit!142817)

(assert (=> b!4824647 (= lt!1972342 (addForallContainsKeyThenBeforeAdding!987 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) lt!1972345 (_1!32383 (h!61394 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (_2!32383 (h!61394 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))))

(assert (=> b!4824647 call!336319))

(declare-fun lt!1972340 () Unit!142817)

(assert (=> b!4824647 (= lt!1972340 lt!1972342)))

(assert (=> b!4824647 (forall!12598 (toList!7472 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) lambda!236429)))

(declare-fun lt!1972357 () Unit!142817)

(declare-fun Unit!142884 () Unit!142817)

(assert (=> b!4824647 (= lt!1972357 Unit!142884)))

(declare-fun res!2053890 () Bool)

(assert (=> b!4824647 (= res!2053890 (forall!12598 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))) lambda!236429))))

(assert (=> b!4824647 (=> (not res!2053890) (not e!3014620))))

(assert (=> b!4824647 e!3014620))

(declare-fun lt!1972351 () Unit!142817)

(declare-fun Unit!142886 () Unit!142817)

(assert (=> b!4824647 (= lt!1972351 Unit!142886)))

(assert (=> d!1545446 e!3014619))

(declare-fun res!2053889 () Bool)

(assert (=> d!1545446 (=> (not res!2053889) (not e!3014619))))

(assert (=> d!1545446 (= res!2053889 (forall!12598 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))) lambda!236430))))

(assert (=> d!1545446 (= lt!1972339 e!3014618)))

(assert (=> d!1545446 (= c!822109 ((_ is Nil!54960) (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(assert (=> d!1545446 (noDuplicateKeys!2448 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))

(assert (=> d!1545446 (= (addToMapMapFromBucket!1794 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))) (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) lt!1972339)))

(assert (= (and d!1545446 c!822109) b!4824646))

(assert (= (and d!1545446 (not c!822109)) b!4824647))

(assert (= (and b!4824647 res!2053890) b!4824648))

(assert (= (or b!4824646 b!4824647) bm!336314))

(assert (= (or b!4824646 b!4824647) bm!336315))

(assert (= (or b!4824646 b!4824647) bm!336316))

(assert (= (and d!1545446 res!2053889) b!4824649))

(assert (= (and b!4824649 res!2053888) b!4824650))

(declare-fun m!5814364 () Bool)

(assert (=> b!4824648 m!5814364))

(declare-fun m!5814368 () Bool)

(assert (=> b!4824649 m!5814368))

(assert (=> b!4824647 m!5813886))

(declare-fun m!5814372 () Bool)

(assert (=> b!4824647 m!5814372))

(declare-fun m!5814374 () Bool)

(assert (=> b!4824647 m!5814374))

(declare-fun m!5814376 () Bool)

(assert (=> b!4824647 m!5814376))

(assert (=> b!4824647 m!5813886))

(declare-fun m!5814378 () Bool)

(assert (=> b!4824647 m!5814378))

(declare-fun m!5814380 () Bool)

(assert (=> b!4824647 m!5814380))

(assert (=> b!4824647 m!5814376))

(declare-fun m!5814382 () Bool)

(assert (=> b!4824647 m!5814382))

(assert (=> b!4824647 m!5814372))

(declare-fun m!5814386 () Bool)

(assert (=> b!4824647 m!5814386))

(declare-fun m!5814388 () Bool)

(assert (=> b!4824647 m!5814388))

(assert (=> b!4824647 m!5814364))

(declare-fun m!5814390 () Bool)

(assert (=> b!4824647 m!5814390))

(declare-fun m!5814392 () Bool)

(assert (=> b!4824647 m!5814392))

(declare-fun m!5814394 () Bool)

(assert (=> bm!336315 m!5814394))

(declare-fun m!5814396 () Bool)

(assert (=> b!4824650 m!5814396))

(declare-fun m!5814398 () Bool)

(assert (=> d!1545446 m!5814398))

(declare-fun m!5814400 () Bool)

(assert (=> d!1545446 m!5814400))

(assert (=> bm!336316 m!5813886))

(declare-fun m!5814402 () Bool)

(assert (=> bm!336316 m!5814402))

(declare-fun m!5814404 () Bool)

(assert (=> bm!336314 m!5814404))

(assert (=> b!4824383 d!1545446))

(declare-fun d!1545470 () Bool)

(declare-fun res!2053907 () Bool)

(declare-fun e!3014637 () Bool)

(assert (=> d!1545470 (=> res!2053907 e!3014637)))

(assert (=> d!1545470 (= res!2053907 ((_ is Nil!54960) (toList!7472 lt!1971936)))))

(assert (=> d!1545470 (= (forall!12598 (toList!7472 lt!1971936) lambda!236377) e!3014637)))

(declare-fun b!4824667 () Bool)

(declare-fun e!3014638 () Bool)

(assert (=> b!4824667 (= e!3014637 e!3014638)))

(declare-fun res!2053908 () Bool)

(assert (=> b!4824667 (=> (not res!2053908) (not e!3014638))))

(assert (=> b!4824667 (= res!2053908 (dynLambda!22212 lambda!236377 (h!61394 (toList!7472 lt!1971936))))))

(declare-fun b!4824668 () Bool)

(assert (=> b!4824668 (= e!3014638 (forall!12598 (t!362580 (toList!7472 lt!1971936)) lambda!236377))))

(assert (= (and d!1545470 (not res!2053907)) b!4824667))

(assert (= (and b!4824667 res!2053908) b!4824668))

(declare-fun b_lambda!189635 () Bool)

(assert (=> (not b_lambda!189635) (not b!4824667)))

(declare-fun m!5814408 () Bool)

(assert (=> b!4824667 m!5814408))

(declare-fun m!5814410 () Bool)

(assert (=> b!4824668 m!5814410))

(assert (=> b!4824383 d!1545470))

(declare-fun d!1545476 () Bool)

(declare-fun res!2053909 () Bool)

(declare-fun e!3014641 () Bool)

(assert (=> d!1545476 (=> res!2053909 e!3014641)))

(assert (=> d!1545476 (= res!2053909 ((_ is Nil!54960) (_2!32384 (h!61395 (toList!7471 lm!2280)))))))

(assert (=> d!1545476 (= (forall!12598 (_2!32384 (h!61395 (toList!7471 lm!2280))) lambda!236377) e!3014641)))

(declare-fun b!4824673 () Bool)

(declare-fun e!3014642 () Bool)

(assert (=> b!4824673 (= e!3014641 e!3014642)))

(declare-fun res!2053910 () Bool)

(assert (=> b!4824673 (=> (not res!2053910) (not e!3014642))))

(assert (=> b!4824673 (= res!2053910 (dynLambda!22212 lambda!236377 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(declare-fun b!4824674 () Bool)

(assert (=> b!4824674 (= e!3014642 (forall!12598 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))) lambda!236377))))

(assert (= (and d!1545476 (not res!2053909)) b!4824673))

(assert (= (and b!4824673 res!2053910) b!4824674))

(declare-fun b_lambda!189637 () Bool)

(assert (=> (not b_lambda!189637) (not b!4824673)))

(assert (=> b!4824673 m!5814214))

(assert (=> b!4824674 m!5813894))

(assert (=> b!4824383 d!1545476))

(declare-fun d!1545480 () Bool)

(declare-fun res!2053916 () Bool)

(declare-fun e!3014648 () Bool)

(assert (=> d!1545480 (=> res!2053916 e!3014648)))

(assert (=> d!1545480 (= res!2053916 (and ((_ is Cons!54960) (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (= (_1!32383 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) key!5428)))))

(assert (=> d!1545480 (= (containsKey!4363 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428) e!3014648)))

(declare-fun b!4824680 () Bool)

(declare-fun e!3014649 () Bool)

(assert (=> b!4824680 (= e!3014648 e!3014649)))

(declare-fun res!2053917 () Bool)

(assert (=> b!4824680 (=> (not res!2053917) (not e!3014649))))

(assert (=> b!4824680 (= res!2053917 ((_ is Cons!54960) (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))))

(declare-fun b!4824681 () Bool)

(assert (=> b!4824681 (= e!3014649 (containsKey!4363 (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) key!5428))))

(assert (= (and d!1545480 (not res!2053916)) b!4824680))

(assert (= (and b!4824680 res!2053917) b!4824681))

(declare-fun m!5814420 () Bool)

(assert (=> b!4824681 m!5814420))

(assert (=> b!4824400 d!1545480))

(declare-fun d!1545486 () Bool)

(assert (=> d!1545486 (containsKey!4363 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428)))

(declare-fun lt!1972365 () Unit!142817)

(declare-fun choose!35098 (List!55084 K!16644) Unit!142817)

(assert (=> d!1545486 (= lt!1972365 (choose!35098 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428))))

(assert (=> d!1545486 (invariantList!1809 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))))

(assert (=> d!1545486 (= (lemmaInGetKeysListThenContainsKey!1156 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428) lt!1972365)))

(declare-fun bs!1163393 () Bool)

(assert (= bs!1163393 d!1545486))

(assert (=> bs!1163393 m!5813924))

(declare-fun m!5814422 () Bool)

(assert (=> bs!1163393 m!5814422))

(declare-fun m!5814424 () Bool)

(assert (=> bs!1163393 m!5814424))

(assert (=> b!4824400 d!1545486))

(declare-fun d!1545488 () Bool)

(declare-fun noDuplicatedKeys!475 (List!55084) Bool)

(assert (=> d!1545488 (= (invariantList!1809 (toList!7472 lt!1972180)) (noDuplicatedKeys!475 (toList!7472 lt!1972180)))))

(declare-fun bs!1163394 () Bool)

(assert (= bs!1163394 d!1545488))

(declare-fun m!5814426 () Bool)

(assert (=> bs!1163394 m!5814426))

(assert (=> d!1545322 d!1545488))

(declare-fun d!1545490 () Bool)

(declare-fun res!2053918 () Bool)

(declare-fun e!3014650 () Bool)

(assert (=> d!1545490 (=> res!2053918 e!3014650)))

(assert (=> d!1545490 (= res!2053918 ((_ is Nil!54961) (t!362581 (toList!7471 lm!2280))))))

(assert (=> d!1545490 (= (forall!12596 (t!362581 (toList!7471 lm!2280)) lambda!236384) e!3014650)))

(declare-fun b!4824682 () Bool)

(declare-fun e!3014651 () Bool)

(assert (=> b!4824682 (= e!3014650 e!3014651)))

(declare-fun res!2053919 () Bool)

(assert (=> b!4824682 (=> (not res!2053919) (not e!3014651))))

(assert (=> b!4824682 (= res!2053919 (dynLambda!22210 lambda!236384 (h!61395 (t!362581 (toList!7471 lm!2280)))))))

(declare-fun b!4824683 () Bool)

(assert (=> b!4824683 (= e!3014651 (forall!12596 (t!362581 (t!362581 (toList!7471 lm!2280))) lambda!236384))))

(assert (= (and d!1545490 (not res!2053918)) b!4824682))

(assert (= (and b!4824682 res!2053919) b!4824683))

(declare-fun b_lambda!189639 () Bool)

(assert (=> (not b_lambda!189639) (not b!4824682)))

(declare-fun m!5814428 () Bool)

(assert (=> b!4824682 m!5814428))

(declare-fun m!5814430 () Bool)

(assert (=> b!4824683 m!5814430))

(assert (=> d!1545322 d!1545490))

(declare-fun d!1545492 () Bool)

(declare-fun res!2053920 () Bool)

(declare-fun e!3014652 () Bool)

(assert (=> d!1545492 (=> res!2053920 e!3014652)))

(assert (=> d!1545492 (= res!2053920 (and ((_ is Cons!54960) (t!362580 (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280)))))) (= (_1!32383 (h!61394 (t!362580 (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280))))))) key!5428)))))

(assert (=> d!1545492 (= (containsKey!4359 (t!362580 (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280))))) key!5428) e!3014652)))

(declare-fun b!4824684 () Bool)

(declare-fun e!3014653 () Bool)

(assert (=> b!4824684 (= e!3014652 e!3014653)))

(declare-fun res!2053921 () Bool)

(assert (=> b!4824684 (=> (not res!2053921) (not e!3014653))))

(assert (=> b!4824684 (= res!2053921 ((_ is Cons!54960) (t!362580 (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun b!4824685 () Bool)

(assert (=> b!4824685 (= e!3014653 (containsKey!4359 (t!362580 (t!362580 (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280)))))) key!5428))))

(assert (= (and d!1545492 (not res!2053920)) b!4824684))

(assert (= (and b!4824684 res!2053921) b!4824685))

(declare-fun m!5814432 () Bool)

(assert (=> b!4824685 m!5814432))

(assert (=> b!4824390 d!1545492))

(assert (=> b!4824384 d!1545470))

(assert (=> d!1545316 d!1545310))

(assert (=> d!1545316 d!1545286))

(declare-fun d!1545494 () Bool)

(assert (=> d!1545494 (not (containsKey!4359 (apply!13349 lm!2280 (_1!32384 (h!61395 (toList!7471 lm!2280)))) key!5428))))

(assert (=> d!1545494 true))

(declare-fun _$39!430 () Unit!142817)

(assert (=> d!1545494 (= (choose!35090 lm!2280 key!5428 (_1!32384 (h!61395 (toList!7471 lm!2280))) hashF!1509) _$39!430)))

(declare-fun bs!1163395 () Bool)

(assert (= bs!1163395 d!1545494))

(assert (=> bs!1163395 m!5813662))

(assert (=> bs!1163395 m!5813662))

(assert (=> bs!1163395 m!5813664))

(assert (=> d!1545316 d!1545494))

(declare-fun d!1545496 () Bool)

(declare-fun res!2053922 () Bool)

(declare-fun e!3014654 () Bool)

(assert (=> d!1545496 (=> res!2053922 e!3014654)))

(assert (=> d!1545496 (= res!2053922 ((_ is Nil!54961) (toList!7471 lm!2280)))))

(assert (=> d!1545496 (= (forall!12596 (toList!7471 lm!2280) lambda!236381) e!3014654)))

(declare-fun b!4824686 () Bool)

(declare-fun e!3014655 () Bool)

(assert (=> b!4824686 (= e!3014654 e!3014655)))

(declare-fun res!2053923 () Bool)

(assert (=> b!4824686 (=> (not res!2053923) (not e!3014655))))

(assert (=> b!4824686 (= res!2053923 (dynLambda!22210 lambda!236381 (h!61395 (toList!7471 lm!2280))))))

(declare-fun b!4824687 () Bool)

(assert (=> b!4824687 (= e!3014655 (forall!12596 (t!362581 (toList!7471 lm!2280)) lambda!236381))))

(assert (= (and d!1545496 (not res!2053922)) b!4824686))

(assert (= (and b!4824686 res!2053923) b!4824687))

(declare-fun b_lambda!189641 () Bool)

(assert (=> (not b_lambda!189641) (not b!4824686)))

(declare-fun m!5814434 () Bool)

(assert (=> b!4824686 m!5814434))

(declare-fun m!5814436 () Bool)

(assert (=> b!4824687 m!5814436))

(assert (=> d!1545316 d!1545496))

(declare-fun d!1545498 () Bool)

(declare-fun res!2053933 () Bool)

(declare-fun e!3014665 () Bool)

(assert (=> d!1545498 (=> res!2053933 e!3014665)))

(assert (=> d!1545498 (= res!2053933 (and ((_ is Cons!54961) (toList!7471 lm!2280)) (= (_1!32384 (h!61395 (toList!7471 lm!2280))) lt!1971938)))))

(assert (=> d!1545498 (= (containsKey!4362 (toList!7471 lm!2280) lt!1971938) e!3014665)))

(declare-fun b!4824697 () Bool)

(declare-fun e!3014666 () Bool)

(assert (=> b!4824697 (= e!3014665 e!3014666)))

(declare-fun res!2053934 () Bool)

(assert (=> b!4824697 (=> (not res!2053934) (not e!3014666))))

(assert (=> b!4824697 (= res!2053934 (and (or (not ((_ is Cons!54961) (toList!7471 lm!2280))) (bvsle (_1!32384 (h!61395 (toList!7471 lm!2280))) lt!1971938)) ((_ is Cons!54961) (toList!7471 lm!2280)) (bvslt (_1!32384 (h!61395 (toList!7471 lm!2280))) lt!1971938)))))

(declare-fun b!4824698 () Bool)

(assert (=> b!4824698 (= e!3014666 (containsKey!4362 (t!362581 (toList!7471 lm!2280)) lt!1971938))))

(assert (= (and d!1545498 (not res!2053933)) b!4824697))

(assert (= (and b!4824697 res!2053934) b!4824698))

(declare-fun m!5814444 () Bool)

(assert (=> b!4824698 m!5814444))

(assert (=> d!1545278 d!1545498))

(declare-fun d!1545504 () Bool)

(declare-fun choose!35099 (Hashable!7262 K!16644) (_ BitVec 64))

(assert (=> d!1545504 (= (hash!5388 hashF!1509 key!5428) (choose!35099 hashF!1509 key!5428))))

(declare-fun bs!1163397 () Bool)

(assert (= bs!1163397 d!1545504))

(declare-fun m!5814448 () Bool)

(assert (=> bs!1163397 m!5814448))

(assert (=> d!1545280 d!1545504))

(declare-fun d!1545508 () Bool)

(declare-fun res!2053940 () Bool)

(declare-fun e!3014673 () Bool)

(assert (=> d!1545508 (=> res!2053940 e!3014673)))

(assert (=> d!1545508 (= res!2053940 (and ((_ is Cons!54960) (t!362580 (apply!13349 lt!1971940 lt!1971938))) (= (_1!32383 (h!61394 (t!362580 (apply!13349 lt!1971940 lt!1971938)))) key!5428)))))

(assert (=> d!1545508 (= (containsKey!4359 (t!362580 (apply!13349 lt!1971940 lt!1971938)) key!5428) e!3014673)))

(declare-fun b!4824710 () Bool)

(declare-fun e!3014674 () Bool)

(assert (=> b!4824710 (= e!3014673 e!3014674)))

(declare-fun res!2053941 () Bool)

(assert (=> b!4824710 (=> (not res!2053941) (not e!3014674))))

(assert (=> b!4824710 (= res!2053941 ((_ is Cons!54960) (t!362580 (apply!13349 lt!1971940 lt!1971938))))))

(declare-fun b!4824711 () Bool)

(assert (=> b!4824711 (= e!3014674 (containsKey!4359 (t!362580 (t!362580 (apply!13349 lt!1971940 lt!1971938))) key!5428))))

(assert (= (and d!1545508 (not res!2053940)) b!4824710))

(assert (= (and b!4824710 res!2053941) b!4824711))

(declare-fun m!5814450 () Bool)

(assert (=> b!4824711 m!5814450))

(assert (=> b!4824255 d!1545508))

(declare-fun d!1545510 () Bool)

(declare-fun res!2053942 () Bool)

(declare-fun e!3014675 () Bool)

(assert (=> d!1545510 (=> res!2053942 e!3014675)))

(assert (=> d!1545510 (= res!2053942 (and ((_ is Cons!54960) (toList!7472 lt!1971936)) (= (_1!32383 (h!61394 (toList!7472 lt!1971936))) key!5428)))))

(assert (=> d!1545510 (= (containsKey!4363 (toList!7472 lt!1971936) key!5428) e!3014675)))

(declare-fun b!4824712 () Bool)

(declare-fun e!3014676 () Bool)

(assert (=> b!4824712 (= e!3014675 e!3014676)))

(declare-fun res!2053943 () Bool)

(assert (=> b!4824712 (=> (not res!2053943) (not e!3014676))))

(assert (=> b!4824712 (= res!2053943 ((_ is Cons!54960) (toList!7472 lt!1971936)))))

(declare-fun b!4824713 () Bool)

(assert (=> b!4824713 (= e!3014676 (containsKey!4363 (t!362580 (toList!7472 lt!1971936)) key!5428))))

(assert (= (and d!1545510 (not res!2053942)) b!4824712))

(assert (= (and b!4824712 res!2053943) b!4824713))

(declare-fun m!5814452 () Bool)

(assert (=> b!4824713 m!5814452))

(assert (=> b!4824326 d!1545510))

(declare-fun d!1545512 () Bool)

(assert (=> d!1545512 (containsKey!4363 (toList!7472 lt!1971936) key!5428)))

(declare-fun lt!1972373 () Unit!142817)

(assert (=> d!1545512 (= lt!1972373 (choose!35098 (toList!7472 lt!1971936) key!5428))))

(assert (=> d!1545512 (invariantList!1809 (toList!7472 lt!1971936))))

(assert (=> d!1545512 (= (lemmaInGetKeysListThenContainsKey!1156 (toList!7472 lt!1971936) key!5428) lt!1972373)))

(declare-fun bs!1163403 () Bool)

(assert (= bs!1163403 d!1545512))

(assert (=> bs!1163403 m!5813776))

(declare-fun m!5814454 () Bool)

(assert (=> bs!1163403 m!5814454))

(declare-fun m!5814456 () Bool)

(assert (=> bs!1163403 m!5814456))

(assert (=> b!4824326 d!1545512))

(declare-fun d!1545514 () Bool)

(assert (=> d!1545514 (= (get!18818 (getValueByKey!2615 (toList!7471 lt!1971940) lt!1971938)) (v!49164 (getValueByKey!2615 (toList!7471 lt!1971940) lt!1971938)))))

(assert (=> d!1545264 d!1545514))

(declare-fun b!4824715 () Bool)

(declare-fun e!3014677 () Option!13488)

(declare-fun e!3014678 () Option!13488)

(assert (=> b!4824715 (= e!3014677 e!3014678)))

(declare-fun c!822116 () Bool)

(assert (=> b!4824715 (= c!822116 (and ((_ is Cons!54961) (toList!7471 lt!1971940)) (not (= (_1!32384 (h!61395 (toList!7471 lt!1971940))) lt!1971938))))))

(declare-fun b!4824717 () Bool)

(assert (=> b!4824717 (= e!3014678 None!13487)))

(declare-fun b!4824714 () Bool)

(assert (=> b!4824714 (= e!3014677 (Some!13487 (_2!32384 (h!61395 (toList!7471 lt!1971940)))))))

(declare-fun b!4824716 () Bool)

(assert (=> b!4824716 (= e!3014678 (getValueByKey!2615 (t!362581 (toList!7471 lt!1971940)) lt!1971938))))

(declare-fun d!1545516 () Bool)

(declare-fun c!822115 () Bool)

(assert (=> d!1545516 (= c!822115 (and ((_ is Cons!54961) (toList!7471 lt!1971940)) (= (_1!32384 (h!61395 (toList!7471 lt!1971940))) lt!1971938)))))

(assert (=> d!1545516 (= (getValueByKey!2615 (toList!7471 lt!1971940) lt!1971938) e!3014677)))

(assert (= (and d!1545516 c!822115) b!4824714))

(assert (= (and d!1545516 (not c!822115)) b!4824715))

(assert (= (and b!4824715 c!822116) b!4824716))

(assert (= (and b!4824715 (not c!822116)) b!4824717))

(declare-fun m!5814458 () Bool)

(assert (=> b!4824716 m!5814458))

(assert (=> d!1545264 d!1545516))

(declare-fun d!1545518 () Bool)

(declare-fun res!2053948 () Bool)

(declare-fun e!3014683 () Bool)

(assert (=> d!1545518 (=> res!2053948 e!3014683)))

(assert (=> d!1545518 (= res!2053948 (or ((_ is Nil!54961) (toList!7471 lm!2280)) ((_ is Nil!54961) (t!362581 (toList!7471 lm!2280)))))))

(assert (=> d!1545518 (= (isStrictlySorted!982 (toList!7471 lm!2280)) e!3014683)))

(declare-fun b!4824722 () Bool)

(declare-fun e!3014684 () Bool)

(assert (=> b!4824722 (= e!3014683 e!3014684)))

(declare-fun res!2053949 () Bool)

(assert (=> b!4824722 (=> (not res!2053949) (not e!3014684))))

(assert (=> b!4824722 (= res!2053949 (bvslt (_1!32384 (h!61395 (toList!7471 lm!2280))) (_1!32384 (h!61395 (t!362581 (toList!7471 lm!2280))))))))

(declare-fun b!4824723 () Bool)

(assert (=> b!4824723 (= e!3014684 (isStrictlySorted!982 (t!362581 (toList!7471 lm!2280))))))

(assert (= (and d!1545518 (not res!2053948)) b!4824722))

(assert (= (and b!4824722 res!2053949) b!4824723))

(declare-fun m!5814484 () Bool)

(assert (=> b!4824723 m!5814484))

(assert (=> d!1545250 d!1545518))

(declare-fun d!1545522 () Bool)

(declare-fun res!2053956 () Bool)

(declare-fun e!3014695 () Bool)

(assert (=> d!1545522 (=> res!2053956 e!3014695)))

(assert (=> d!1545522 (= res!2053956 (not ((_ is Cons!54960) (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(assert (=> d!1545522 (= (noDuplicateKeys!2448 (_2!32384 (h!61395 (toList!7471 lm!2280)))) e!3014695)))

(declare-fun b!4824736 () Bool)

(declare-fun e!3014696 () Bool)

(assert (=> b!4824736 (= e!3014695 e!3014696)))

(declare-fun res!2053957 () Bool)

(assert (=> b!4824736 (=> (not res!2053957) (not e!3014696))))

(assert (=> b!4824736 (= res!2053957 (not (containsKey!4359 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))))

(declare-fun b!4824737 () Bool)

(assert (=> b!4824737 (= e!3014696 (noDuplicateKeys!2448 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(assert (= (and d!1545522 (not res!2053956)) b!4824736))

(assert (= (and b!4824736 res!2053957) b!4824737))

(declare-fun m!5814494 () Bool)

(assert (=> b!4824736 m!5814494))

(assert (=> b!4824737 m!5814400))

(assert (=> bs!1163286 d!1545522))

(declare-fun d!1545530 () Bool)

(assert (=> d!1545530 (= (invariantList!1809 (toList!7472 lt!1972143)) (noDuplicatedKeys!475 (toList!7472 lt!1972143)))))

(declare-fun bs!1163423 () Bool)

(assert (= bs!1163423 d!1545530))

(declare-fun m!5814498 () Bool)

(assert (=> bs!1163423 m!5814498))

(assert (=> b!4824386 d!1545530))

(declare-fun bs!1163433 () Bool)

(declare-fun d!1545534 () Bool)

(assert (= bs!1163433 (and d!1545534 d!1545416)))

(declare-fun lambda!236437 () Int)

(assert (=> bs!1163433 (= (= lt!1971936 lt!1972149) (= lambda!236437 lambda!236426))))

(declare-fun bs!1163434 () Bool)

(assert (= bs!1163434 (and d!1545534 d!1545446)))

(assert (=> bs!1163434 (= (= lt!1971936 lt!1972339) (= lambda!236437 lambda!236430))))

(declare-fun bs!1163435 () Bool)

(assert (= bs!1163435 (and d!1545534 b!4824383)))

(assert (=> bs!1163435 (= lambda!236437 lambda!236376)))

(assert (=> bs!1163435 (= (= lt!1971936 lt!1972149) (= lambda!236437 lambda!236377))))

(declare-fun bs!1163436 () Bool)

(assert (= bs!1163436 (and d!1545534 b!4824647)))

(assert (=> bs!1163436 (= (= lt!1971936 lt!1972345) (= lambda!236437 lambda!236429))))

(declare-fun bs!1163437 () Bool)

(assert (= bs!1163437 (and d!1545534 b!4824382)))

(assert (=> bs!1163437 (= lambda!236437 lambda!236375)))

(declare-fun bs!1163438 () Bool)

(assert (= bs!1163438 (and d!1545534 b!4824646)))

(assert (=> bs!1163438 (= (= lt!1971936 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236437 lambda!236427))))

(assert (=> bs!1163436 (= (= lt!1971936 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236437 lambda!236428))))

(declare-fun bs!1163439 () Bool)

(assert (= bs!1163439 (and d!1545534 d!1545288)))

(assert (=> bs!1163439 (= (= lt!1971936 lt!1972143) (= lambda!236437 lambda!236378))))

(assert (=> d!1545534 true))

(assert (=> d!1545534 (forall!12598 (toList!7472 lt!1971936) lambda!236437)))

(declare-fun lt!1972376 () Unit!142817)

(declare-fun choose!35101 (ListMap!6849) Unit!142817)

(assert (=> d!1545534 (= lt!1972376 (choose!35101 lt!1971936))))

(assert (=> d!1545534 (= (lemmaContainsAllItsOwnKeys!988 lt!1971936) lt!1972376)))

(declare-fun bs!1163440 () Bool)

(assert (= bs!1163440 d!1545534))

(declare-fun m!5814512 () Bool)

(assert (=> bs!1163440 m!5814512))

(declare-fun m!5814514 () Bool)

(assert (=> bs!1163440 m!5814514))

(assert (=> bm!336302 d!1545534))

(declare-fun d!1545554 () Bool)

(declare-fun res!2053958 () Bool)

(declare-fun e!3014697 () Bool)

(assert (=> d!1545554 (=> res!2053958 e!3014697)))

(assert (=> d!1545554 (= res!2053958 ((_ is Nil!54961) (t!362581 (toList!7471 lm!2280))))))

(assert (=> d!1545554 (= (forall!12596 (t!362581 (toList!7471 lm!2280)) lambda!236300) e!3014697)))

(declare-fun b!4824738 () Bool)

(declare-fun e!3014698 () Bool)

(assert (=> b!4824738 (= e!3014697 e!3014698)))

(declare-fun res!2053959 () Bool)

(assert (=> b!4824738 (=> (not res!2053959) (not e!3014698))))

(assert (=> b!4824738 (= res!2053959 (dynLambda!22210 lambda!236300 (h!61395 (t!362581 (toList!7471 lm!2280)))))))

(declare-fun b!4824739 () Bool)

(assert (=> b!4824739 (= e!3014698 (forall!12596 (t!362581 (t!362581 (toList!7471 lm!2280))) lambda!236300))))

(assert (= (and d!1545554 (not res!2053958)) b!4824738))

(assert (= (and b!4824738 res!2053959) b!4824739))

(declare-fun b_lambda!189677 () Bool)

(assert (=> (not b_lambda!189677) (not b!4824738)))

(declare-fun m!5814516 () Bool)

(assert (=> b!4824738 m!5814516))

(declare-fun m!5814518 () Bool)

(assert (=> b!4824739 m!5814518))

(assert (=> b!4824241 d!1545554))

(declare-fun d!1545556 () Bool)

(declare-fun res!2053960 () Bool)

(declare-fun e!3014699 () Bool)

(assert (=> d!1545556 (=> res!2053960 e!3014699)))

(assert (=> d!1545556 (= res!2053960 (and ((_ is Cons!54960) (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280))))) (= (_1!32383 (h!61394 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) key!5428)))))

(assert (=> d!1545556 (= (containsKey!4359 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))) key!5428) e!3014699)))

(declare-fun b!4824740 () Bool)

(declare-fun e!3014700 () Bool)

(assert (=> b!4824740 (= e!3014699 e!3014700)))

(declare-fun res!2053961 () Bool)

(assert (=> b!4824740 (=> (not res!2053961) (not e!3014700))))

(assert (=> b!4824740 (= res!2053961 ((_ is Cons!54960) (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(declare-fun b!4824741 () Bool)

(assert (=> b!4824741 (= e!3014700 (containsKey!4359 (t!362580 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280))))) key!5428))))

(assert (= (and d!1545556 (not res!2053960)) b!4824740))

(assert (= (and b!4824740 res!2053961) b!4824741))

(declare-fun m!5814520 () Bool)

(assert (=> b!4824741 m!5814520))

(assert (=> b!4824392 d!1545556))

(assert (=> d!1545314 d!1545480))

(declare-fun d!1545558 () Bool)

(declare-fun res!2053962 () Bool)

(declare-fun e!3014701 () Bool)

(assert (=> d!1545558 (=> res!2053962 e!3014701)))

(assert (=> d!1545558 (= res!2053962 ((_ is Nil!54960) (_2!32384 (h!61395 (toList!7471 lm!2280)))))))

(assert (=> d!1545558 (= (forall!12598 (_2!32384 (h!61395 (toList!7471 lm!2280))) lambda!236378) e!3014701)))

(declare-fun b!4824742 () Bool)

(declare-fun e!3014702 () Bool)

(assert (=> b!4824742 (= e!3014701 e!3014702)))

(declare-fun res!2053963 () Bool)

(assert (=> b!4824742 (=> (not res!2053963) (not e!3014702))))

(assert (=> b!4824742 (= res!2053963 (dynLambda!22212 lambda!236378 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))

(declare-fun b!4824743 () Bool)

(assert (=> b!4824743 (= e!3014702 (forall!12598 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))) lambda!236378))))

(assert (= (and d!1545558 (not res!2053962)) b!4824742))

(assert (= (and b!4824742 res!2053963) b!4824743))

(declare-fun b_lambda!189679 () Bool)

(assert (=> (not b_lambda!189679) (not b!4824742)))

(declare-fun m!5814522 () Bool)

(assert (=> b!4824742 m!5814522))

(declare-fun m!5814524 () Bool)

(assert (=> b!4824743 m!5814524))

(assert (=> d!1545288 d!1545558))

(assert (=> d!1545288 d!1545522))

(declare-fun b!4824768 () Bool)

(assert (=> b!4824768 true))

(declare-fun bs!1163441 () Bool)

(declare-fun b!4824769 () Bool)

(assert (= bs!1163441 (and b!4824769 b!4824768)))

(declare-fun lambda!236447 () Int)

(declare-fun lambda!236446 () Int)

(assert (=> bs!1163441 (= (= (Cons!54960 (h!61394 (toList!7472 lt!1971936)) (t!362580 (toList!7472 lt!1971936))) (t!362580 (toList!7472 lt!1971936))) (= lambda!236447 lambda!236446))))

(assert (=> b!4824769 true))

(declare-fun bs!1163442 () Bool)

(declare-fun b!4824764 () Bool)

(assert (= bs!1163442 (and b!4824764 b!4824768)))

(declare-fun lambda!236448 () Int)

(assert (=> bs!1163442 (= (= (toList!7472 lt!1971936) (t!362580 (toList!7472 lt!1971936))) (= lambda!236448 lambda!236446))))

(declare-fun bs!1163443 () Bool)

(assert (= bs!1163443 (and b!4824764 b!4824769)))

(assert (=> bs!1163443 (= (= (toList!7472 lt!1971936) (Cons!54960 (h!61394 (toList!7472 lt!1971936)) (t!362580 (toList!7472 lt!1971936)))) (= lambda!236448 lambda!236447))))

(assert (=> b!4824764 true))

(declare-fun b!4824762 () Bool)

(declare-fun res!2053972 () Bool)

(declare-fun e!3014714 () Bool)

(assert (=> b!4824762 (=> (not res!2053972) (not e!3014714))))

(declare-fun lt!1972397 () List!55087)

(declare-fun length!772 (List!55087) Int)

(declare-fun length!773 (List!55084) Int)

(assert (=> b!4824762 (= res!2053972 (= (length!772 lt!1972397) (length!773 (toList!7472 lt!1971936))))))

(declare-fun b!4824763 () Bool)

(declare-fun e!3014711 () Unit!142817)

(declare-fun Unit!142887 () Unit!142817)

(assert (=> b!4824763 (= e!3014711 Unit!142887)))

(declare-fun d!1545560 () Bool)

(assert (=> d!1545560 e!3014714))

(declare-fun res!2053971 () Bool)

(assert (=> d!1545560 (=> (not res!2053971) (not e!3014714))))

(declare-fun noDuplicate!958 (List!55087) Bool)

(assert (=> d!1545560 (= res!2053971 (noDuplicate!958 lt!1972397))))

(declare-fun e!3014713 () List!55087)

(assert (=> d!1545560 (= lt!1972397 e!3014713)))

(declare-fun c!822125 () Bool)

(assert (=> d!1545560 (= c!822125 ((_ is Cons!54960) (toList!7472 lt!1971936)))))

(assert (=> d!1545560 (invariantList!1809 (toList!7472 lt!1971936))))

(assert (=> d!1545560 (= (getKeysList!1156 (toList!7472 lt!1971936)) lt!1972397)))

(declare-fun res!2053970 () Bool)

(assert (=> b!4824764 (=> (not res!2053970) (not e!3014714))))

(declare-fun forall!12600 (List!55087 Int) Bool)

(assert (=> b!4824764 (= res!2053970 (forall!12600 lt!1972397 lambda!236448))))

(declare-fun b!4824765 () Bool)

(assert (=> b!4824765 (= e!3014713 Nil!54963)))

(declare-fun b!4824766 () Bool)

(assert (=> b!4824766 false))

(declare-fun e!3014712 () Unit!142817)

(declare-fun Unit!142888 () Unit!142817)

(assert (=> b!4824766 (= e!3014712 Unit!142888)))

(declare-fun b!4824767 () Bool)

(declare-fun Unit!142890 () Unit!142817)

(assert (=> b!4824767 (= e!3014712 Unit!142890)))

(assert (=> b!4824768 false))

(declare-fun lt!1972393 () Unit!142817)

(declare-fun forallContained!4380 (List!55087 Int K!16644) Unit!142817)

(assert (=> b!4824768 (= lt!1972393 (forallContained!4380 (getKeysList!1156 (t!362580 (toList!7472 lt!1971936))) lambda!236446 (_1!32383 (h!61394 (toList!7472 lt!1971936)))))))

(declare-fun Unit!142891 () Unit!142817)

(assert (=> b!4824768 (= e!3014711 Unit!142891)))

(assert (=> b!4824769 (= e!3014713 (Cons!54963 (_1!32383 (h!61394 (toList!7472 lt!1971936))) (getKeysList!1156 (t!362580 (toList!7472 lt!1971936)))))))

(declare-fun c!822124 () Bool)

(assert (=> b!4824769 (= c!822124 (containsKey!4363 (t!362580 (toList!7472 lt!1971936)) (_1!32383 (h!61394 (toList!7472 lt!1971936)))))))

(declare-fun lt!1972394 () Unit!142817)

(assert (=> b!4824769 (= lt!1972394 e!3014712)))

(declare-fun c!822123 () Bool)

(assert (=> b!4824769 (= c!822123 (contains!18767 (getKeysList!1156 (t!362580 (toList!7472 lt!1971936))) (_1!32383 (h!61394 (toList!7472 lt!1971936)))))))

(declare-fun lt!1972395 () Unit!142817)

(assert (=> b!4824769 (= lt!1972395 e!3014711)))

(declare-fun lt!1972391 () List!55087)

(assert (=> b!4824769 (= lt!1972391 (getKeysList!1156 (t!362580 (toList!7472 lt!1971936))))))

(declare-fun lt!1972392 () Unit!142817)

(declare-fun lemmaForallContainsAddHeadPreserves!373 (List!55084 List!55087 tuple2!58178) Unit!142817)

(assert (=> b!4824769 (= lt!1972392 (lemmaForallContainsAddHeadPreserves!373 (t!362580 (toList!7472 lt!1971936)) lt!1972391 (h!61394 (toList!7472 lt!1971936))))))

(assert (=> b!4824769 (forall!12600 lt!1972391 lambda!236447)))

(declare-fun lt!1972396 () Unit!142817)

(assert (=> b!4824769 (= lt!1972396 lt!1972392)))

(declare-fun lambda!236449 () Int)

(declare-fun b!4824770 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9817 (List!55087) (InoxSet K!16644))

(declare-fun map!12575 (List!55084 Int) List!55087)

(assert (=> b!4824770 (= e!3014714 (= (content!9817 lt!1972397) (content!9817 (map!12575 (toList!7472 lt!1971936) lambda!236449))))))

(assert (= (and d!1545560 c!822125) b!4824769))

(assert (= (and d!1545560 (not c!822125)) b!4824765))

(assert (= (and b!4824769 c!822124) b!4824766))

(assert (= (and b!4824769 (not c!822124)) b!4824767))

(assert (= (and b!4824769 c!822123) b!4824768))

(assert (= (and b!4824769 (not c!822123)) b!4824763))

(assert (= (and d!1545560 res!2053971) b!4824762))

(assert (= (and b!4824762 res!2053972) b!4824764))

(assert (= (and b!4824764 res!2053970) b!4824770))

(declare-fun m!5814526 () Bool)

(assert (=> b!4824764 m!5814526))

(declare-fun m!5814528 () Bool)

(assert (=> b!4824770 m!5814528))

(declare-fun m!5814530 () Bool)

(assert (=> b!4824770 m!5814530))

(assert (=> b!4824770 m!5814530))

(declare-fun m!5814532 () Bool)

(assert (=> b!4824770 m!5814532))

(declare-fun m!5814534 () Bool)

(assert (=> d!1545560 m!5814534))

(assert (=> d!1545560 m!5814456))

(declare-fun m!5814536 () Bool)

(assert (=> b!4824762 m!5814536))

(declare-fun m!5814538 () Bool)

(assert (=> b!4824762 m!5814538))

(declare-fun m!5814540 () Bool)

(assert (=> b!4824768 m!5814540))

(assert (=> b!4824768 m!5814540))

(declare-fun m!5814542 () Bool)

(assert (=> b!4824768 m!5814542))

(declare-fun m!5814544 () Bool)

(assert (=> b!4824769 m!5814544))

(assert (=> b!4824769 m!5814540))

(declare-fun m!5814546 () Bool)

(assert (=> b!4824769 m!5814546))

(declare-fun m!5814548 () Bool)

(assert (=> b!4824769 m!5814548))

(assert (=> b!4824769 m!5814540))

(declare-fun m!5814550 () Bool)

(assert (=> b!4824769 m!5814550))

(assert (=> b!4824320 d!1545560))

(declare-fun bs!1163444 () Bool)

(declare-fun b!4824779 () Bool)

(assert (= bs!1163444 (and b!4824779 b!4824768)))

(declare-fun lambda!236450 () Int)

(assert (=> bs!1163444 (= (= (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (t!362580 (toList!7472 lt!1971936))) (= lambda!236450 lambda!236446))))

(declare-fun bs!1163445 () Bool)

(assert (= bs!1163445 (and b!4824779 b!4824769)))

(assert (=> bs!1163445 (= (= (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (Cons!54960 (h!61394 (toList!7472 lt!1971936)) (t!362580 (toList!7472 lt!1971936)))) (= lambda!236450 lambda!236447))))

(declare-fun bs!1163446 () Bool)

(assert (= bs!1163446 (and b!4824779 b!4824764)))

(assert (=> bs!1163446 (= (= (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (toList!7472 lt!1971936)) (= lambda!236450 lambda!236448))))

(assert (=> b!4824779 true))

(declare-fun bs!1163447 () Bool)

(declare-fun b!4824780 () Bool)

(assert (= bs!1163447 (and b!4824780 b!4824768)))

(declare-fun lambda!236451 () Int)

(assert (=> bs!1163447 (= (= (Cons!54960 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) (t!362580 (toList!7472 lt!1971936))) (= lambda!236451 lambda!236446))))

(declare-fun bs!1163448 () Bool)

(assert (= bs!1163448 (and b!4824780 b!4824769)))

(assert (=> bs!1163448 (= (= (Cons!54960 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) (Cons!54960 (h!61394 (toList!7472 lt!1971936)) (t!362580 (toList!7472 lt!1971936)))) (= lambda!236451 lambda!236447))))

(declare-fun bs!1163449 () Bool)

(assert (= bs!1163449 (and b!4824780 b!4824764)))

(assert (=> bs!1163449 (= (= (Cons!54960 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) (toList!7472 lt!1971936)) (= lambda!236451 lambda!236448))))

(declare-fun bs!1163450 () Bool)

(assert (= bs!1163450 (and b!4824780 b!4824779)))

(assert (=> bs!1163450 (= (= (Cons!54960 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) (= lambda!236451 lambda!236450))))

(assert (=> b!4824780 true))

(declare-fun bs!1163451 () Bool)

(declare-fun b!4824775 () Bool)

(assert (= bs!1163451 (and b!4824775 b!4824769)))

(declare-fun lambda!236452 () Int)

(assert (=> bs!1163451 (= (= (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) (Cons!54960 (h!61394 (toList!7472 lt!1971936)) (t!362580 (toList!7472 lt!1971936)))) (= lambda!236452 lambda!236447))))

(declare-fun bs!1163452 () Bool)

(assert (= bs!1163452 (and b!4824775 b!4824779)))

(assert (=> bs!1163452 (= (= (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) (= lambda!236452 lambda!236450))))

(declare-fun bs!1163453 () Bool)

(assert (= bs!1163453 (and b!4824775 b!4824768)))

(assert (=> bs!1163453 (= (= (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) (t!362580 (toList!7472 lt!1971936))) (= lambda!236452 lambda!236446))))

(declare-fun bs!1163454 () Bool)

(assert (= bs!1163454 (and b!4824775 b!4824780)))

(assert (=> bs!1163454 (= (= (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) (Cons!54960 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))) (= lambda!236452 lambda!236451))))

(declare-fun bs!1163455 () Bool)

(assert (= bs!1163455 (and b!4824775 b!4824764)))

(assert (=> bs!1163455 (= (= (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) (toList!7472 lt!1971936)) (= lambda!236452 lambda!236448))))

(assert (=> b!4824775 true))

(declare-fun bs!1163456 () Bool)

(declare-fun b!4824781 () Bool)

(assert (= bs!1163456 (and b!4824781 b!4824770)))

(declare-fun lambda!236453 () Int)

(assert (=> bs!1163456 (= lambda!236453 lambda!236449)))

(declare-fun b!4824773 () Bool)

(declare-fun res!2053975 () Bool)

(declare-fun e!3014718 () Bool)

(assert (=> b!4824773 (=> (not res!2053975) (not e!3014718))))

(declare-fun lt!1972404 () List!55087)

(assert (=> b!4824773 (= res!2053975 (= (length!772 lt!1972404) (length!773 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))))))

(declare-fun b!4824774 () Bool)

(declare-fun e!3014715 () Unit!142817)

(declare-fun Unit!142902 () Unit!142817)

(assert (=> b!4824774 (= e!3014715 Unit!142902)))

(declare-fun d!1545562 () Bool)

(assert (=> d!1545562 e!3014718))

(declare-fun res!2053974 () Bool)

(assert (=> d!1545562 (=> (not res!2053974) (not e!3014718))))

(assert (=> d!1545562 (= res!2053974 (noDuplicate!958 lt!1972404))))

(declare-fun e!3014717 () List!55087)

(assert (=> d!1545562 (= lt!1972404 e!3014717)))

(declare-fun c!822128 () Bool)

(assert (=> d!1545562 (= c!822128 ((_ is Cons!54960) (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))))

(assert (=> d!1545562 (invariantList!1809 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))))

(assert (=> d!1545562 (= (getKeysList!1156 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) lt!1972404)))

(declare-fun res!2053973 () Bool)

(assert (=> b!4824775 (=> (not res!2053973) (not e!3014718))))

(assert (=> b!4824775 (= res!2053973 (forall!12600 lt!1972404 lambda!236452))))

(declare-fun b!4824776 () Bool)

(assert (=> b!4824776 (= e!3014717 Nil!54963)))

(declare-fun b!4824777 () Bool)

(assert (=> b!4824777 false))

(declare-fun e!3014716 () Unit!142817)

(declare-fun Unit!142903 () Unit!142817)

(assert (=> b!4824777 (= e!3014716 Unit!142903)))

(declare-fun b!4824778 () Bool)

(declare-fun Unit!142904 () Unit!142817)

(assert (=> b!4824778 (= e!3014716 Unit!142904)))

(assert (=> b!4824779 false))

(declare-fun lt!1972400 () Unit!142817)

(assert (=> b!4824779 (= lt!1972400 (forallContained!4380 (getKeysList!1156 (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) lambda!236450 (_1!32383 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))))))

(declare-fun Unit!142905 () Unit!142817)

(assert (=> b!4824779 (= e!3014715 Unit!142905)))

(assert (=> b!4824780 (= e!3014717 (Cons!54963 (_1!32383 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) (getKeysList!1156 (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))))))

(declare-fun c!822127 () Bool)

(assert (=> b!4824780 (= c!822127 (containsKey!4363 (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (_1!32383 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))))))

(declare-fun lt!1972401 () Unit!142817)

(assert (=> b!4824780 (= lt!1972401 e!3014716)))

(declare-fun c!822126 () Bool)

(assert (=> b!4824780 (= c!822126 (contains!18767 (getKeysList!1156 (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) (_1!32383 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))))))

(declare-fun lt!1972402 () Unit!142817)

(assert (=> b!4824780 (= lt!1972402 e!3014715)))

(declare-fun lt!1972398 () List!55087)

(assert (=> b!4824780 (= lt!1972398 (getKeysList!1156 (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))))))

(declare-fun lt!1972399 () Unit!142817)

(assert (=> b!4824780 (= lt!1972399 (lemmaForallContainsAddHeadPreserves!373 (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) lt!1972398 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))))))

(assert (=> b!4824780 (forall!12600 lt!1972398 lambda!236451)))

(declare-fun lt!1972403 () Unit!142817)

(assert (=> b!4824780 (= lt!1972403 lt!1972399)))

(assert (=> b!4824781 (= e!3014718 (= (content!9817 lt!1972404) (content!9817 (map!12575 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) lambda!236453))))))

(assert (= (and d!1545562 c!822128) b!4824780))

(assert (= (and d!1545562 (not c!822128)) b!4824776))

(assert (= (and b!4824780 c!822127) b!4824777))

(assert (= (and b!4824780 (not c!822127)) b!4824778))

(assert (= (and b!4824780 c!822126) b!4824779))

(assert (= (and b!4824780 (not c!822126)) b!4824774))

(assert (= (and d!1545562 res!2053974) b!4824773))

(assert (= (and b!4824773 res!2053975) b!4824775))

(assert (= (and b!4824775 res!2053973) b!4824781))

(declare-fun m!5814552 () Bool)

(assert (=> b!4824775 m!5814552))

(declare-fun m!5814554 () Bool)

(assert (=> b!4824781 m!5814554))

(declare-fun m!5814556 () Bool)

(assert (=> b!4824781 m!5814556))

(assert (=> b!4824781 m!5814556))

(declare-fun m!5814558 () Bool)

(assert (=> b!4824781 m!5814558))

(declare-fun m!5814560 () Bool)

(assert (=> d!1545562 m!5814560))

(assert (=> d!1545562 m!5814424))

(declare-fun m!5814562 () Bool)

(assert (=> b!4824773 m!5814562))

(declare-fun m!5814564 () Bool)

(assert (=> b!4824773 m!5814564))

(declare-fun m!5814566 () Bool)

(assert (=> b!4824779 m!5814566))

(assert (=> b!4824779 m!5814566))

(declare-fun m!5814568 () Bool)

(assert (=> b!4824779 m!5814568))

(declare-fun m!5814570 () Bool)

(assert (=> b!4824780 m!5814570))

(assert (=> b!4824780 m!5814566))

(declare-fun m!5814572 () Bool)

(assert (=> b!4824780 m!5814572))

(declare-fun m!5814574 () Bool)

(assert (=> b!4824780 m!5814574))

(assert (=> b!4824780 m!5814566))

(declare-fun m!5814576 () Bool)

(assert (=> b!4824780 m!5814576))

(assert (=> b!4824394 d!1545562))

(declare-fun lt!1972407 () Bool)

(declare-fun d!1545564 () Bool)

(assert (=> d!1545564 (= lt!1972407 (select (content!9817 (keys!20219 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) key!5428))))

(declare-fun e!3014724 () Bool)

(assert (=> d!1545564 (= lt!1972407 e!3014724)))

(declare-fun res!2053981 () Bool)

(assert (=> d!1545564 (=> (not res!2053981) (not e!3014724))))

(assert (=> d!1545564 (= res!2053981 ((_ is Cons!54963) (keys!20219 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))))

(assert (=> d!1545564 (= (contains!18767 (keys!20219 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428) lt!1972407)))

(declare-fun b!4824786 () Bool)

(declare-fun e!3014723 () Bool)

(assert (=> b!4824786 (= e!3014724 e!3014723)))

(declare-fun res!2053980 () Bool)

(assert (=> b!4824786 (=> res!2053980 e!3014723)))

(assert (=> b!4824786 (= res!2053980 (= (h!61397 (keys!20219 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) key!5428))))

(declare-fun b!4824787 () Bool)

(assert (=> b!4824787 (= e!3014723 (contains!18767 (t!362583 (keys!20219 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) key!5428))))

(assert (= (and d!1545564 res!2053981) b!4824786))

(assert (= (and b!4824786 (not res!2053980)) b!4824787))

(assert (=> d!1545564 m!5813922))

(declare-fun m!5814578 () Bool)

(assert (=> d!1545564 m!5814578))

(declare-fun m!5814580 () Bool)

(assert (=> d!1545564 m!5814580))

(declare-fun m!5814582 () Bool)

(assert (=> b!4824787 m!5814582))

(assert (=> b!4824397 d!1545564))

(declare-fun bs!1163457 () Bool)

(declare-fun b!4824795 () Bool)

(assert (= bs!1163457 (and b!4824795 b!4824769)))

(declare-fun lambda!236458 () Int)

(assert (=> bs!1163457 (= (= (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) (Cons!54960 (h!61394 (toList!7472 lt!1971936)) (t!362580 (toList!7472 lt!1971936)))) (= lambda!236458 lambda!236447))))

(declare-fun bs!1163458 () Bool)

(assert (= bs!1163458 (and b!4824795 b!4824779)))

(assert (=> bs!1163458 (= (= (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) (= lambda!236458 lambda!236450))))

(declare-fun bs!1163459 () Bool)

(assert (= bs!1163459 (and b!4824795 b!4824768)))

(assert (=> bs!1163459 (= (= (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) (t!362580 (toList!7472 lt!1971936))) (= lambda!236458 lambda!236446))))

(declare-fun bs!1163460 () Bool)

(assert (= bs!1163460 (and b!4824795 b!4824780)))

(assert (=> bs!1163460 (= (= (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) (Cons!54960 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))) (= lambda!236458 lambda!236451))))

(declare-fun bs!1163461 () Bool)

(assert (= bs!1163461 (and b!4824795 b!4824764)))

(assert (=> bs!1163461 (= (= (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) (toList!7472 lt!1971936)) (= lambda!236458 lambda!236448))))

(declare-fun bs!1163462 () Bool)

(assert (= bs!1163462 (and b!4824795 b!4824775)))

(assert (=> bs!1163462 (= lambda!236458 lambda!236452)))

(assert (=> b!4824795 true))

(declare-fun bs!1163463 () Bool)

(declare-fun b!4824796 () Bool)

(assert (= bs!1163463 (and b!4824796 b!4824770)))

(declare-fun lambda!236459 () Int)

(assert (=> bs!1163463 (= lambda!236459 lambda!236449)))

(declare-fun bs!1163464 () Bool)

(assert (= bs!1163464 (and b!4824796 b!4824781)))

(assert (=> bs!1163464 (= lambda!236459 lambda!236453)))

(declare-fun d!1545566 () Bool)

(declare-fun e!3014727 () Bool)

(assert (=> d!1545566 e!3014727))

(declare-fun res!2053990 () Bool)

(assert (=> d!1545566 (=> (not res!2053990) (not e!3014727))))

(declare-fun lt!1972410 () List!55087)

(assert (=> d!1545566 (= res!2053990 (noDuplicate!958 lt!1972410))))

(assert (=> d!1545566 (= lt!1972410 (getKeysList!1156 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))))

(assert (=> d!1545566 (= (keys!20219 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) lt!1972410)))

(declare-fun b!4824794 () Bool)

(declare-fun res!2053989 () Bool)

(assert (=> b!4824794 (=> (not res!2053989) (not e!3014727))))

(assert (=> b!4824794 (= res!2053989 (= (length!772 lt!1972410) (length!773 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))))))

(declare-fun res!2053988 () Bool)

(assert (=> b!4824795 (=> (not res!2053988) (not e!3014727))))

(assert (=> b!4824795 (= res!2053988 (forall!12600 lt!1972410 lambda!236458))))

(assert (=> b!4824796 (= e!3014727 (= (content!9817 lt!1972410) (content!9817 (map!12575 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) lambda!236459))))))

(assert (= (and d!1545566 res!2053990) b!4824794))

(assert (= (and b!4824794 res!2053989) b!4824795))

(assert (= (and b!4824795 res!2053988) b!4824796))

(declare-fun m!5814584 () Bool)

(assert (=> d!1545566 m!5814584))

(assert (=> d!1545566 m!5813938))

(declare-fun m!5814586 () Bool)

(assert (=> b!4824794 m!5814586))

(assert (=> b!4824794 m!5814564))

(declare-fun m!5814588 () Bool)

(assert (=> b!4824795 m!5814588))

(declare-fun m!5814590 () Bool)

(assert (=> b!4824796 m!5814590))

(declare-fun m!5814592 () Bool)

(assert (=> b!4824796 m!5814592))

(assert (=> b!4824796 m!5814592))

(declare-fun m!5814594 () Bool)

(assert (=> b!4824796 m!5814594))

(assert (=> b!4824397 d!1545566))

(declare-fun d!1545568 () Bool)

(assert (=> d!1545568 (isDefined!10604 (getValueByKey!2616 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428))))

(declare-fun lt!1972413 () Unit!142817)

(declare-fun choose!35102 (List!55084 K!16644) Unit!142817)

(assert (=> d!1545568 (= lt!1972413 (choose!35102 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428))))

(assert (=> d!1545568 (invariantList!1809 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))))

(assert (=> d!1545568 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2401 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428) lt!1972413)))

(declare-fun bs!1163465 () Bool)

(assert (= bs!1163465 d!1545568))

(assert (=> bs!1163465 m!5813930))

(assert (=> bs!1163465 m!5813930))

(assert (=> bs!1163465 m!5813932))

(declare-fun m!5814596 () Bool)

(assert (=> bs!1163465 m!5814596))

(assert (=> bs!1163465 m!5814424))

(assert (=> b!4824396 d!1545568))

(declare-fun d!1545570 () Bool)

(declare-fun isEmpty!29648 (Option!13489) Bool)

(assert (=> d!1545570 (= (isDefined!10604 (getValueByKey!2616 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428)) (not (isEmpty!29648 (getValueByKey!2616 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428))))))

(declare-fun bs!1163466 () Bool)

(assert (= bs!1163466 d!1545570))

(assert (=> bs!1163466 m!5813930))

(declare-fun m!5814598 () Bool)

(assert (=> bs!1163466 m!5814598))

(assert (=> b!4824396 d!1545570))

(declare-fun c!822133 () Bool)

(declare-fun d!1545572 () Bool)

(assert (=> d!1545572 (= c!822133 (and ((_ is Cons!54960) (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (= (_1!32383 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) key!5428)))))

(declare-fun e!3014732 () Option!13489)

(assert (=> d!1545572 (= (getValueByKey!2616 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428) e!3014732)))

(declare-fun b!4824810 () Bool)

(declare-fun e!3014733 () Option!13489)

(assert (=> b!4824810 (= e!3014733 None!13488)))

(declare-fun b!4824808 () Bool)

(assert (=> b!4824808 (= e!3014732 e!3014733)))

(declare-fun c!822134 () Bool)

(assert (=> b!4824808 (= c!822134 (and ((_ is Cons!54960) (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (not (= (_1!32383 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) key!5428))))))

(declare-fun b!4824807 () Bool)

(assert (=> b!4824807 (= e!3014732 (Some!13488 (_2!32383 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))))))

(declare-fun b!4824809 () Bool)

(assert (=> b!4824809 (= e!3014733 (getValueByKey!2616 (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) key!5428))))

(assert (= (and d!1545572 c!822133) b!4824807))

(assert (= (and d!1545572 (not c!822133)) b!4824808))

(assert (= (and b!4824808 c!822134) b!4824809))

(assert (= (and b!4824808 (not c!822134)) b!4824810))

(declare-fun m!5814600 () Bool)

(assert (=> b!4824809 m!5814600))

(assert (=> b!4824396 d!1545572))

(declare-fun d!1545574 () Bool)

(assert (=> d!1545574 (contains!18767 (getKeysList!1156 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) key!5428)))

(declare-fun lt!1972416 () Unit!142817)

(declare-fun choose!35104 (List!55084 K!16644) Unit!142817)

(assert (=> d!1545574 (= lt!1972416 (choose!35104 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428))))

(assert (=> d!1545574 (invariantList!1809 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))))

(assert (=> d!1545574 (= (lemmaInListThenGetKeysListContains!1151 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)) key!5428) lt!1972416)))

(declare-fun bs!1163467 () Bool)

(assert (= bs!1163467 d!1545574))

(assert (=> bs!1163467 m!5813938))

(assert (=> bs!1163467 m!5813938))

(declare-fun m!5814602 () Bool)

(assert (=> bs!1163467 m!5814602))

(declare-fun m!5814604 () Bool)

(assert (=> bs!1163467 m!5814604))

(assert (=> bs!1163467 m!5814424))

(assert (=> b!4824396 d!1545574))

(declare-fun d!1545576 () Bool)

(assert (=> d!1545576 (isDefined!10604 (getValueByKey!2616 (toList!7472 lt!1971936) key!5428))))

(declare-fun lt!1972417 () Unit!142817)

(assert (=> d!1545576 (= lt!1972417 (choose!35102 (toList!7472 lt!1971936) key!5428))))

(assert (=> d!1545576 (invariantList!1809 (toList!7472 lt!1971936))))

(assert (=> d!1545576 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2401 (toList!7472 lt!1971936) key!5428) lt!1972417)))

(declare-fun bs!1163468 () Bool)

(assert (= bs!1163468 d!1545576))

(assert (=> bs!1163468 m!5813782))

(assert (=> bs!1163468 m!5813782))

(assert (=> bs!1163468 m!5813784))

(declare-fun m!5814606 () Bool)

(assert (=> bs!1163468 m!5814606))

(assert (=> bs!1163468 m!5814456))

(assert (=> b!4824322 d!1545576))

(declare-fun d!1545578 () Bool)

(assert (=> d!1545578 (= (isDefined!10604 (getValueByKey!2616 (toList!7472 lt!1971936) key!5428)) (not (isEmpty!29648 (getValueByKey!2616 (toList!7472 lt!1971936) key!5428))))))

(declare-fun bs!1163469 () Bool)

(assert (= bs!1163469 d!1545578))

(assert (=> bs!1163469 m!5813782))

(declare-fun m!5814608 () Bool)

(assert (=> bs!1163469 m!5814608))

(assert (=> b!4824322 d!1545578))

(declare-fun d!1545580 () Bool)

(declare-fun c!822135 () Bool)

(assert (=> d!1545580 (= c!822135 (and ((_ is Cons!54960) (toList!7472 lt!1971936)) (= (_1!32383 (h!61394 (toList!7472 lt!1971936))) key!5428)))))

(declare-fun e!3014734 () Option!13489)

(assert (=> d!1545580 (= (getValueByKey!2616 (toList!7472 lt!1971936) key!5428) e!3014734)))

(declare-fun b!4824814 () Bool)

(declare-fun e!3014735 () Option!13489)

(assert (=> b!4824814 (= e!3014735 None!13488)))

(declare-fun b!4824812 () Bool)

(assert (=> b!4824812 (= e!3014734 e!3014735)))

(declare-fun c!822136 () Bool)

(assert (=> b!4824812 (= c!822136 (and ((_ is Cons!54960) (toList!7472 lt!1971936)) (not (= (_1!32383 (h!61394 (toList!7472 lt!1971936))) key!5428))))))

(declare-fun b!4824811 () Bool)

(assert (=> b!4824811 (= e!3014734 (Some!13488 (_2!32383 (h!61394 (toList!7472 lt!1971936)))))))

(declare-fun b!4824813 () Bool)

(assert (=> b!4824813 (= e!3014735 (getValueByKey!2616 (t!362580 (toList!7472 lt!1971936)) key!5428))))

(assert (= (and d!1545580 c!822135) b!4824811))

(assert (= (and d!1545580 (not c!822135)) b!4824812))

(assert (= (and b!4824812 c!822136) b!4824813))

(assert (= (and b!4824812 (not c!822136)) b!4824814))

(declare-fun m!5814610 () Bool)

(assert (=> b!4824813 m!5814610))

(assert (=> b!4824322 d!1545580))

(declare-fun d!1545582 () Bool)

(assert (=> d!1545582 (contains!18767 (getKeysList!1156 (toList!7472 lt!1971936)) key!5428)))

(declare-fun lt!1972418 () Unit!142817)

(assert (=> d!1545582 (= lt!1972418 (choose!35104 (toList!7472 lt!1971936) key!5428))))

(assert (=> d!1545582 (invariantList!1809 (toList!7472 lt!1971936))))

(assert (=> d!1545582 (= (lemmaInListThenGetKeysListContains!1151 (toList!7472 lt!1971936) key!5428) lt!1972418)))

(declare-fun bs!1163470 () Bool)

(assert (= bs!1163470 d!1545582))

(assert (=> bs!1163470 m!5813790))

(assert (=> bs!1163470 m!5813790))

(declare-fun m!5814612 () Bool)

(assert (=> bs!1163470 m!5814612))

(declare-fun m!5814614 () Bool)

(assert (=> bs!1163470 m!5814614))

(assert (=> bs!1163470 m!5814456))

(assert (=> b!4824322 d!1545582))

(assert (=> b!4824399 d!1545570))

(assert (=> b!4824399 d!1545572))

(declare-fun bs!1163471 () Bool)

(declare-fun b!4824815 () Bool)

(assert (= bs!1163471 (and b!4824815 d!1545416)))

(declare-fun lambda!236460 () Int)

(assert (=> bs!1163471 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1972149) (= lambda!236460 lambda!236426))))

(declare-fun bs!1163472 () Bool)

(assert (= bs!1163472 (and b!4824815 d!1545534)))

(assert (=> bs!1163472 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1971936) (= lambda!236460 lambda!236437))))

(declare-fun bs!1163473 () Bool)

(assert (= bs!1163473 (and b!4824815 d!1545446)))

(assert (=> bs!1163473 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1972339) (= lambda!236460 lambda!236430))))

(declare-fun bs!1163474 () Bool)

(assert (= bs!1163474 (and b!4824815 b!4824383)))

(assert (=> bs!1163474 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1971936) (= lambda!236460 lambda!236376))))

(assert (=> bs!1163474 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1972149) (= lambda!236460 lambda!236377))))

(declare-fun bs!1163475 () Bool)

(assert (= bs!1163475 (and b!4824815 b!4824647)))

(assert (=> bs!1163475 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1972345) (= lambda!236460 lambda!236429))))

(declare-fun bs!1163476 () Bool)

(assert (= bs!1163476 (and b!4824815 b!4824382)))

(assert (=> bs!1163476 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1971936) (= lambda!236460 lambda!236375))))

(declare-fun bs!1163477 () Bool)

(assert (= bs!1163477 (and b!4824815 b!4824646)))

(assert (=> bs!1163477 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236460 lambda!236427))))

(assert (=> bs!1163475 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236460 lambda!236428))))

(declare-fun bs!1163478 () Bool)

(assert (= bs!1163478 (and b!4824815 d!1545288)))

(assert (=> bs!1163478 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1972143) (= lambda!236460 lambda!236378))))

(assert (=> b!4824815 true))

(declare-fun bs!1163479 () Bool)

(declare-fun b!4824816 () Bool)

(assert (= bs!1163479 (and b!4824816 b!4824815)))

(declare-fun lambda!236461 () Int)

(assert (=> bs!1163479 (= lambda!236461 lambda!236460)))

(declare-fun bs!1163480 () Bool)

(assert (= bs!1163480 (and b!4824816 d!1545416)))

(assert (=> bs!1163480 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1972149) (= lambda!236461 lambda!236426))))

(declare-fun bs!1163481 () Bool)

(assert (= bs!1163481 (and b!4824816 d!1545534)))

(assert (=> bs!1163481 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1971936) (= lambda!236461 lambda!236437))))

(declare-fun bs!1163482 () Bool)

(assert (= bs!1163482 (and b!4824816 d!1545446)))

(assert (=> bs!1163482 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1972339) (= lambda!236461 lambda!236430))))

(declare-fun bs!1163483 () Bool)

(assert (= bs!1163483 (and b!4824816 b!4824383)))

(assert (=> bs!1163483 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1971936) (= lambda!236461 lambda!236376))))

(assert (=> bs!1163483 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1972149) (= lambda!236461 lambda!236377))))

(declare-fun bs!1163484 () Bool)

(assert (= bs!1163484 (and b!4824816 b!4824647)))

(assert (=> bs!1163484 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1972345) (= lambda!236461 lambda!236429))))

(declare-fun bs!1163485 () Bool)

(assert (= bs!1163485 (and b!4824816 b!4824382)))

(assert (=> bs!1163485 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1971936) (= lambda!236461 lambda!236375))))

(declare-fun bs!1163486 () Bool)

(assert (= bs!1163486 (and b!4824816 b!4824646)))

(assert (=> bs!1163486 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236461 lambda!236427))))

(assert (=> bs!1163484 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236461 lambda!236428))))

(declare-fun bs!1163487 () Bool)

(assert (= bs!1163487 (and b!4824816 d!1545288)))

(assert (=> bs!1163487 (= (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1972143) (= lambda!236461 lambda!236378))))

(assert (=> b!4824816 true))

(declare-fun lt!1972425 () ListMap!6849)

(declare-fun lambda!236462 () Int)

(assert (=> bs!1163479 (= (= lt!1972425 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))) (= lambda!236462 lambda!236460))))

(assert (=> bs!1163481 (= (= lt!1972425 lt!1971936) (= lambda!236462 lambda!236437))))

(assert (=> bs!1163482 (= (= lt!1972425 lt!1972339) (= lambda!236462 lambda!236430))))

(assert (=> bs!1163483 (= (= lt!1972425 lt!1971936) (= lambda!236462 lambda!236376))))

(assert (=> bs!1163483 (= (= lt!1972425 lt!1972149) (= lambda!236462 lambda!236377))))

(assert (=> bs!1163484 (= (= lt!1972425 lt!1972345) (= lambda!236462 lambda!236429))))

(assert (=> bs!1163485 (= (= lt!1972425 lt!1971936) (= lambda!236462 lambda!236375))))

(assert (=> bs!1163486 (= (= lt!1972425 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236462 lambda!236427))))

(assert (=> bs!1163480 (= (= lt!1972425 lt!1972149) (= lambda!236462 lambda!236426))))

(assert (=> b!4824816 (= (= lt!1972425 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))) (= lambda!236462 lambda!236461))))

(assert (=> bs!1163484 (= (= lt!1972425 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236462 lambda!236428))))

(assert (=> bs!1163487 (= (= lt!1972425 lt!1972143) (= lambda!236462 lambda!236378))))

(assert (=> b!4824816 true))

(declare-fun bs!1163488 () Bool)

(declare-fun d!1545584 () Bool)

(assert (= bs!1163488 (and d!1545584 b!4824815)))

(declare-fun lambda!236463 () Int)

(declare-fun lt!1972419 () ListMap!6849)

(assert (=> bs!1163488 (= (= lt!1972419 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))) (= lambda!236463 lambda!236460))))

(declare-fun bs!1163489 () Bool)

(assert (= bs!1163489 (and d!1545584 d!1545534)))

(assert (=> bs!1163489 (= (= lt!1972419 lt!1971936) (= lambda!236463 lambda!236437))))

(declare-fun bs!1163490 () Bool)

(assert (= bs!1163490 (and d!1545584 d!1545446)))

(assert (=> bs!1163490 (= (= lt!1972419 lt!1972339) (= lambda!236463 lambda!236430))))

(declare-fun bs!1163491 () Bool)

(assert (= bs!1163491 (and d!1545584 b!4824816)))

(assert (=> bs!1163491 (= (= lt!1972419 lt!1972425) (= lambda!236463 lambda!236462))))

(declare-fun bs!1163492 () Bool)

(assert (= bs!1163492 (and d!1545584 b!4824383)))

(assert (=> bs!1163492 (= (= lt!1972419 lt!1971936) (= lambda!236463 lambda!236376))))

(assert (=> bs!1163492 (= (= lt!1972419 lt!1972149) (= lambda!236463 lambda!236377))))

(declare-fun bs!1163493 () Bool)

(assert (= bs!1163493 (and d!1545584 b!4824647)))

(assert (=> bs!1163493 (= (= lt!1972419 lt!1972345) (= lambda!236463 lambda!236429))))

(declare-fun bs!1163494 () Bool)

(assert (= bs!1163494 (and d!1545584 b!4824382)))

(assert (=> bs!1163494 (= (= lt!1972419 lt!1971936) (= lambda!236463 lambda!236375))))

(declare-fun bs!1163495 () Bool)

(assert (= bs!1163495 (and d!1545584 b!4824646)))

(assert (=> bs!1163495 (= (= lt!1972419 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236463 lambda!236427))))

(declare-fun bs!1163496 () Bool)

(assert (= bs!1163496 (and d!1545584 d!1545416)))

(assert (=> bs!1163496 (= (= lt!1972419 lt!1972149) (= lambda!236463 lambda!236426))))

(assert (=> bs!1163491 (= (= lt!1972419 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))) (= lambda!236463 lambda!236461))))

(assert (=> bs!1163493 (= (= lt!1972419 (+!2533 lt!1971936 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (= lambda!236463 lambda!236428))))

(declare-fun bs!1163497 () Bool)

(assert (= bs!1163497 (and d!1545584 d!1545288)))

(assert (=> bs!1163497 (= (= lt!1972419 lt!1972143) (= lambda!236463 lambda!236378))))

(assert (=> d!1545584 true))

(declare-fun e!3014736 () ListMap!6849)

(assert (=> b!4824815 (= e!3014736 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))))))

(declare-fun lt!1972424 () Unit!142817)

(declare-fun call!336323 () Unit!142817)

(assert (=> b!4824815 (= lt!1972424 call!336323)))

(declare-fun call!336322 () Bool)

(assert (=> b!4824815 call!336322))

(declare-fun lt!1972427 () Unit!142817)

(assert (=> b!4824815 (= lt!1972427 lt!1972424)))

(declare-fun call!336324 () Bool)

(assert (=> b!4824815 call!336324))

(declare-fun lt!1972439 () Unit!142817)

(declare-fun Unit!142906 () Unit!142817)

(assert (=> b!4824815 (= lt!1972439 Unit!142906)))

(declare-fun bm!336317 () Bool)

(declare-fun c!822137 () Bool)

(declare-fun lt!1972430 () ListMap!6849)

(assert (=> bm!336317 (= call!336324 (forall!12598 (ite c!822137 (toList!7472 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))) (toList!7472 lt!1972430)) (ite c!822137 lambda!236460 lambda!236462)))))

(declare-fun b!4824817 () Bool)

(declare-fun e!3014738 () Bool)

(assert (=> b!4824817 (= e!3014738 (forall!12598 (toList!7472 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))) lambda!236462))))

(declare-fun b!4824818 () Bool)

(declare-fun res!2053991 () Bool)

(declare-fun e!3014737 () Bool)

(assert (=> b!4824818 (=> (not res!2053991) (not e!3014737))))

(assert (=> b!4824818 (= res!2053991 (forall!12598 (toList!7472 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))) lambda!236463))))

(declare-fun b!4824819 () Bool)

(assert (=> b!4824819 (= e!3014737 (invariantList!1809 (toList!7472 lt!1972419)))))

(declare-fun bm!336318 () Bool)

(assert (=> bm!336318 (= call!336322 (forall!12598 (toList!7472 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))) (ite c!822137 lambda!236460 lambda!236462)))))

(declare-fun bm!336319 () Bool)

(assert (=> bm!336319 (= call!336323 (lemmaContainsAllItsOwnKeys!988 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))))))

(assert (=> b!4824816 (= e!3014736 lt!1972425)))

(assert (=> b!4824816 (= lt!1972430 (+!2533 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) (h!61394 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280)))))))))

(assert (=> b!4824816 (= lt!1972425 (addToMapMapFromBucket!1794 (t!362580 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280))))) (+!2533 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) (h!61394 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280))))))))))

(declare-fun lt!1972429 () Unit!142817)

(assert (=> b!4824816 (= lt!1972429 call!336323)))

(assert (=> b!4824816 (forall!12598 (toList!7472 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))) lambda!236461)))

(declare-fun lt!1972433 () Unit!142817)

(assert (=> b!4824816 (= lt!1972433 lt!1972429)))

(assert (=> b!4824816 call!336324))

(declare-fun lt!1972438 () Unit!142817)

(declare-fun Unit!142907 () Unit!142817)

(assert (=> b!4824816 (= lt!1972438 Unit!142907)))

(assert (=> b!4824816 (forall!12598 (t!362580 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280))))) lambda!236462)))

(declare-fun lt!1972426 () Unit!142817)

(declare-fun Unit!142908 () Unit!142817)

(assert (=> b!4824816 (= lt!1972426 Unit!142908)))

(declare-fun lt!1972436 () Unit!142817)

(declare-fun Unit!142909 () Unit!142817)

(assert (=> b!4824816 (= lt!1972436 Unit!142909)))

(declare-fun lt!1972434 () Unit!142817)

(assert (=> b!4824816 (= lt!1972434 (forallContained!4378 (toList!7472 lt!1972430) lambda!236462 (h!61394 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280)))))))))

(assert (=> b!4824816 (contains!18764 lt!1972430 (_1!32383 (h!61394 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280)))))))))

(declare-fun lt!1972432 () Unit!142817)

(declare-fun Unit!142910 () Unit!142817)

(assert (=> b!4824816 (= lt!1972432 Unit!142910)))

(assert (=> b!4824816 (contains!18764 lt!1972425 (_1!32383 (h!61394 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280)))))))))

(declare-fun lt!1972423 () Unit!142817)

(declare-fun Unit!142911 () Unit!142817)

(assert (=> b!4824816 (= lt!1972423 Unit!142911)))

(assert (=> b!4824816 (forall!12598 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280)))) lambda!236462)))

(declare-fun lt!1972421 () Unit!142817)

(declare-fun Unit!142912 () Unit!142817)

(assert (=> b!4824816 (= lt!1972421 Unit!142912)))

(assert (=> b!4824816 (forall!12598 (toList!7472 lt!1972430) lambda!236462)))

(declare-fun lt!1972428 () Unit!142817)

(declare-fun Unit!142913 () Unit!142817)

(assert (=> b!4824816 (= lt!1972428 Unit!142913)))

(declare-fun lt!1972435 () Unit!142817)

(declare-fun Unit!142914 () Unit!142817)

(assert (=> b!4824816 (= lt!1972435 Unit!142914)))

(declare-fun lt!1972422 () Unit!142817)

(assert (=> b!4824816 (= lt!1972422 (addForallContainsKeyThenBeforeAdding!987 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1972425 (_1!32383 (h!61394 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280)))))) (_2!32383 (h!61394 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280))))))))))

(assert (=> b!4824816 call!336322))

(declare-fun lt!1972420 () Unit!142817)

(assert (=> b!4824816 (= lt!1972420 lt!1972422)))

(assert (=> b!4824816 (forall!12598 (toList!7472 (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))) lambda!236462)))

(declare-fun lt!1972437 () Unit!142817)

(declare-fun Unit!142915 () Unit!142817)

(assert (=> b!4824816 (= lt!1972437 Unit!142915)))

(declare-fun res!2053993 () Bool)

(assert (=> b!4824816 (= res!2053993 (forall!12598 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280)))) lambda!236462))))

(assert (=> b!4824816 (=> (not res!2053993) (not e!3014738))))

(assert (=> b!4824816 e!3014738))

(declare-fun lt!1972431 () Unit!142817)

(declare-fun Unit!142916 () Unit!142817)

(assert (=> b!4824816 (= lt!1972431 Unit!142916)))

(assert (=> d!1545584 e!3014737))

(declare-fun res!2053992 () Bool)

(assert (=> d!1545584 (=> (not res!2053992) (not e!3014737))))

(assert (=> d!1545584 (= res!2053992 (forall!12598 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280)))) lambda!236463))))

(assert (=> d!1545584 (= lt!1972419 e!3014736)))

(assert (=> d!1545584 (= c!822137 ((_ is Nil!54960) (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280))))))))

(assert (=> d!1545584 (noDuplicateKeys!2448 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280)))))))

(assert (=> d!1545584 (= (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280)))) (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280))))) lt!1972419)))

(assert (= (and d!1545584 c!822137) b!4824815))

(assert (= (and d!1545584 (not c!822137)) b!4824816))

(assert (= (and b!4824816 res!2053993) b!4824817))

(assert (= (or b!4824815 b!4824816) bm!336317))

(assert (= (or b!4824815 b!4824816) bm!336318))

(assert (= (or b!4824815 b!4824816) bm!336319))

(assert (= (and d!1545584 res!2053992) b!4824818))

(assert (= (and b!4824818 res!2053991) b!4824819))

(declare-fun m!5814616 () Bool)

(assert (=> b!4824817 m!5814616))

(declare-fun m!5814618 () Bool)

(assert (=> b!4824818 m!5814618))

(assert (=> b!4824816 m!5813956))

(declare-fun m!5814620 () Bool)

(assert (=> b!4824816 m!5814620))

(declare-fun m!5814622 () Bool)

(assert (=> b!4824816 m!5814622))

(declare-fun m!5814624 () Bool)

(assert (=> b!4824816 m!5814624))

(assert (=> b!4824816 m!5813956))

(declare-fun m!5814626 () Bool)

(assert (=> b!4824816 m!5814626))

(declare-fun m!5814628 () Bool)

(assert (=> b!4824816 m!5814628))

(assert (=> b!4824816 m!5814624))

(declare-fun m!5814630 () Bool)

(assert (=> b!4824816 m!5814630))

(assert (=> b!4824816 m!5814620))

(declare-fun m!5814632 () Bool)

(assert (=> b!4824816 m!5814632))

(declare-fun m!5814634 () Bool)

(assert (=> b!4824816 m!5814634))

(assert (=> b!4824816 m!5814616))

(declare-fun m!5814636 () Bool)

(assert (=> b!4824816 m!5814636))

(declare-fun m!5814638 () Bool)

(assert (=> b!4824816 m!5814638))

(declare-fun m!5814640 () Bool)

(assert (=> bm!336318 m!5814640))

(declare-fun m!5814642 () Bool)

(assert (=> b!4824819 m!5814642))

(declare-fun m!5814644 () Bool)

(assert (=> d!1545584 m!5814644))

(declare-fun m!5814646 () Bool)

(assert (=> d!1545584 m!5814646))

(assert (=> bm!336319 m!5813956))

(declare-fun m!5814648 () Bool)

(assert (=> bm!336319 m!5814648))

(declare-fun m!5814650 () Bool)

(assert (=> bm!336317 m!5814650))

(assert (=> b!4824411 d!1545584))

(declare-fun bs!1163498 () Bool)

(declare-fun d!1545586 () Bool)

(assert (= bs!1163498 (and d!1545586 d!1545322)))

(declare-fun lambda!236464 () Int)

(assert (=> bs!1163498 (= lambda!236464 lambda!236384)))

(declare-fun bs!1163499 () Bool)

(assert (= bs!1163499 (and d!1545586 d!1545236)))

(assert (=> bs!1163499 (not (= lambda!236464 lambda!236303))))

(declare-fun bs!1163500 () Bool)

(assert (= bs!1163500 (and d!1545586 d!1545258)))

(assert (=> bs!1163500 (not (= lambda!236464 lambda!236304))))

(declare-fun bs!1163501 () Bool)

(assert (= bs!1163501 (and d!1545586 start!500352)))

(assert (=> bs!1163501 (= lambda!236464 lambda!236300)))

(declare-fun bs!1163502 () Bool)

(assert (= bs!1163502 (and d!1545586 d!1545316)))

(assert (=> bs!1163502 (= lambda!236464 lambda!236381)))

(declare-fun lt!1972440 () ListMap!6849)

(assert (=> d!1545586 (invariantList!1809 (toList!7472 lt!1972440))))

(declare-fun e!3014739 () ListMap!6849)

(assert (=> d!1545586 (= lt!1972440 e!3014739)))

(declare-fun c!822138 () Bool)

(assert (=> d!1545586 (= c!822138 ((_ is Cons!54961) (t!362581 (t!362581 (toList!7471 lm!2280)))))))

(assert (=> d!1545586 (forall!12596 (t!362581 (t!362581 (toList!7471 lm!2280))) lambda!236464)))

(assert (=> d!1545586 (= (extractMap!2676 (t!362581 (t!362581 (toList!7471 lm!2280)))) lt!1972440)))

(declare-fun b!4824820 () Bool)

(assert (=> b!4824820 (= e!3014739 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (t!362581 (t!362581 (toList!7471 lm!2280))))) (extractMap!2676 (t!362581 (t!362581 (t!362581 (toList!7471 lm!2280)))))))))

(declare-fun b!4824821 () Bool)

(assert (=> b!4824821 (= e!3014739 (ListMap!6850 Nil!54960))))

(assert (= (and d!1545586 c!822138) b!4824820))

(assert (= (and d!1545586 (not c!822138)) b!4824821))

(declare-fun m!5814652 () Bool)

(assert (=> d!1545586 m!5814652))

(declare-fun m!5814654 () Bool)

(assert (=> d!1545586 m!5814654))

(declare-fun m!5814656 () Bool)

(assert (=> b!4824820 m!5814656))

(assert (=> b!4824820 m!5814656))

(declare-fun m!5814658 () Bool)

(assert (=> b!4824820 m!5814658))

(assert (=> b!4824411 d!1545586))

(assert (=> b!4824325 d!1545578))

(assert (=> b!4824325 d!1545580))

(declare-fun d!1545588 () Bool)

(declare-fun res!2053994 () Bool)

(declare-fun e!3014740 () Bool)

(assert (=> d!1545588 (=> res!2053994 e!3014740)))

(assert (=> d!1545588 (= res!2053994 ((_ is Nil!54961) (toList!7471 lm!2280)))))

(assert (=> d!1545588 (= (forall!12596 (toList!7471 lm!2280) lambda!236303) e!3014740)))

(declare-fun b!4824822 () Bool)

(declare-fun e!3014741 () Bool)

(assert (=> b!4824822 (= e!3014740 e!3014741)))

(declare-fun res!2053995 () Bool)

(assert (=> b!4824822 (=> (not res!2053995) (not e!3014741))))

(assert (=> b!4824822 (= res!2053995 (dynLambda!22210 lambda!236303 (h!61395 (toList!7471 lm!2280))))))

(declare-fun b!4824823 () Bool)

(assert (=> b!4824823 (= e!3014741 (forall!12596 (t!362581 (toList!7471 lm!2280)) lambda!236303))))

(assert (= (and d!1545588 (not res!2053994)) b!4824822))

(assert (= (and b!4824822 res!2053995) b!4824823))

(declare-fun b_lambda!189681 () Bool)

(assert (=> (not b_lambda!189681) (not b!4824822)))

(declare-fun m!5814660 () Bool)

(assert (=> b!4824822 m!5814660))

(declare-fun m!5814662 () Bool)

(assert (=> b!4824823 m!5814662))

(assert (=> d!1545236 d!1545588))

(declare-fun d!1545590 () Bool)

(declare-fun lt!1972441 () Bool)

(assert (=> d!1545590 (= lt!1972441 (select (content!9817 (keys!20219 lt!1971936)) key!5428))))

(declare-fun e!3014743 () Bool)

(assert (=> d!1545590 (= lt!1972441 e!3014743)))

(declare-fun res!2053997 () Bool)

(assert (=> d!1545590 (=> (not res!2053997) (not e!3014743))))

(assert (=> d!1545590 (= res!2053997 ((_ is Cons!54963) (keys!20219 lt!1971936)))))

(assert (=> d!1545590 (= (contains!18767 (keys!20219 lt!1971936) key!5428) lt!1972441)))

(declare-fun b!4824824 () Bool)

(declare-fun e!3014742 () Bool)

(assert (=> b!4824824 (= e!3014743 e!3014742)))

(declare-fun res!2053996 () Bool)

(assert (=> b!4824824 (=> res!2053996 e!3014742)))

(assert (=> b!4824824 (= res!2053996 (= (h!61397 (keys!20219 lt!1971936)) key!5428))))

(declare-fun b!4824825 () Bool)

(assert (=> b!4824825 (= e!3014742 (contains!18767 (t!362583 (keys!20219 lt!1971936)) key!5428))))

(assert (= (and d!1545590 res!2053997) b!4824824))

(assert (= (and b!4824824 (not res!2053996)) b!4824825))

(assert (=> d!1545590 m!5813774))

(declare-fun m!5814664 () Bool)

(assert (=> d!1545590 m!5814664))

(declare-fun m!5814666 () Bool)

(assert (=> d!1545590 m!5814666))

(declare-fun m!5814668 () Bool)

(assert (=> b!4824825 m!5814668))

(assert (=> b!4824323 d!1545590))

(declare-fun bs!1163503 () Bool)

(declare-fun b!4824827 () Bool)

(assert (= bs!1163503 (and b!4824827 b!4824769)))

(declare-fun lambda!236465 () Int)

(assert (=> bs!1163503 (= (= (toList!7472 lt!1971936) (Cons!54960 (h!61394 (toList!7472 lt!1971936)) (t!362580 (toList!7472 lt!1971936)))) (= lambda!236465 lambda!236447))))

(declare-fun bs!1163504 () Bool)

(assert (= bs!1163504 (and b!4824827 b!4824795)))

(assert (=> bs!1163504 (= (= (toList!7472 lt!1971936) (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (= lambda!236465 lambda!236458))))

(declare-fun bs!1163505 () Bool)

(assert (= bs!1163505 (and b!4824827 b!4824779)))

(assert (=> bs!1163505 (= (= (toList!7472 lt!1971936) (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936)))) (= lambda!236465 lambda!236450))))

(declare-fun bs!1163506 () Bool)

(assert (= bs!1163506 (and b!4824827 b!4824768)))

(assert (=> bs!1163506 (= (= (toList!7472 lt!1971936) (t!362580 (toList!7472 lt!1971936))) (= lambda!236465 lambda!236446))))

(declare-fun bs!1163507 () Bool)

(assert (= bs!1163507 (and b!4824827 b!4824780)))

(assert (=> bs!1163507 (= (= (toList!7472 lt!1971936) (Cons!54960 (h!61394 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (t!362580 (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))))) (= lambda!236465 lambda!236451))))

(declare-fun bs!1163508 () Bool)

(assert (= bs!1163508 (and b!4824827 b!4824764)))

(assert (=> bs!1163508 (= lambda!236465 lambda!236448)))

(declare-fun bs!1163509 () Bool)

(assert (= bs!1163509 (and b!4824827 b!4824775)))

(assert (=> bs!1163509 (= (= (toList!7472 lt!1971936) (toList!7472 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936))) (= lambda!236465 lambda!236452))))

(assert (=> b!4824827 true))

(declare-fun bs!1163510 () Bool)

(declare-fun b!4824828 () Bool)

(assert (= bs!1163510 (and b!4824828 b!4824770)))

(declare-fun lambda!236466 () Int)

(assert (=> bs!1163510 (= lambda!236466 lambda!236449)))

(declare-fun bs!1163511 () Bool)

(assert (= bs!1163511 (and b!4824828 b!4824781)))

(assert (=> bs!1163511 (= lambda!236466 lambda!236453)))

(declare-fun bs!1163512 () Bool)

(assert (= bs!1163512 (and b!4824828 b!4824796)))

(assert (=> bs!1163512 (= lambda!236466 lambda!236459)))

(declare-fun d!1545592 () Bool)

(declare-fun e!3014744 () Bool)

(assert (=> d!1545592 e!3014744))

(declare-fun res!2054000 () Bool)

(assert (=> d!1545592 (=> (not res!2054000) (not e!3014744))))

(declare-fun lt!1972442 () List!55087)

(assert (=> d!1545592 (= res!2054000 (noDuplicate!958 lt!1972442))))

(assert (=> d!1545592 (= lt!1972442 (getKeysList!1156 (toList!7472 lt!1971936)))))

(assert (=> d!1545592 (= (keys!20219 lt!1971936) lt!1972442)))

(declare-fun b!4824826 () Bool)

(declare-fun res!2053999 () Bool)

(assert (=> b!4824826 (=> (not res!2053999) (not e!3014744))))

(assert (=> b!4824826 (= res!2053999 (= (length!772 lt!1972442) (length!773 (toList!7472 lt!1971936))))))

(declare-fun res!2053998 () Bool)

(assert (=> b!4824827 (=> (not res!2053998) (not e!3014744))))

(assert (=> b!4824827 (= res!2053998 (forall!12600 lt!1972442 lambda!236465))))

(assert (=> b!4824828 (= e!3014744 (= (content!9817 lt!1972442) (content!9817 (map!12575 (toList!7472 lt!1971936) lambda!236466))))))

(assert (= (and d!1545592 res!2054000) b!4824826))

(assert (= (and b!4824826 res!2053999) b!4824827))

(assert (= (and b!4824827 res!2053998) b!4824828))

(declare-fun m!5814670 () Bool)

(assert (=> d!1545592 m!5814670))

(assert (=> d!1545592 m!5813790))

(declare-fun m!5814672 () Bool)

(assert (=> b!4824826 m!5814672))

(assert (=> b!4824826 m!5814538))

(declare-fun m!5814674 () Bool)

(assert (=> b!4824827 m!5814674))

(declare-fun m!5814676 () Bool)

(assert (=> b!4824828 m!5814676))

(declare-fun m!5814678 () Bool)

(assert (=> b!4824828 m!5814678))

(assert (=> b!4824828 m!5814678))

(declare-fun m!5814680 () Bool)

(assert (=> b!4824828 m!5814680))

(assert (=> b!4824323 d!1545592))

(declare-fun d!1545594 () Bool)

(assert (=> d!1545594 (isDefined!10603 (getValueByKey!2615 (toList!7471 lt!1971940) lt!1971938))))

(declare-fun lt!1972445 () Unit!142817)

(declare-fun choose!35107 (List!55085 (_ BitVec 64)) Unit!142817)

(assert (=> d!1545594 (= lt!1972445 (choose!35107 (toList!7471 lt!1971940) lt!1971938))))

(declare-fun e!3014747 () Bool)

(assert (=> d!1545594 e!3014747))

(declare-fun res!2054003 () Bool)

(assert (=> d!1545594 (=> (not res!2054003) (not e!3014747))))

(assert (=> d!1545594 (= res!2054003 (isStrictlySorted!982 (toList!7471 lt!1971940)))))

(assert (=> d!1545594 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2400 (toList!7471 lt!1971940) lt!1971938) lt!1972445)))

(declare-fun b!4824831 () Bool)

(assert (=> b!4824831 (= e!3014747 (containsKey!4362 (toList!7471 lt!1971940) lt!1971938))))

(assert (= (and d!1545594 res!2054003) b!4824831))

(assert (=> d!1545594 m!5813730))

(assert (=> d!1545594 m!5813730))

(assert (=> d!1545594 m!5813758))

(declare-fun m!5814682 () Bool)

(assert (=> d!1545594 m!5814682))

(declare-fun m!5814684 () Bool)

(assert (=> d!1545594 m!5814684))

(assert (=> b!4824831 m!5813754))

(assert (=> b!4824289 d!1545594))

(declare-fun d!1545596 () Bool)

(declare-fun isEmpty!29650 (Option!13488) Bool)

(assert (=> d!1545596 (= (isDefined!10603 (getValueByKey!2615 (toList!7471 lt!1971940) lt!1971938)) (not (isEmpty!29650 (getValueByKey!2615 (toList!7471 lt!1971940) lt!1971938))))))

(declare-fun bs!1163513 () Bool)

(assert (= bs!1163513 d!1545596))

(assert (=> bs!1163513 m!5813730))

(declare-fun m!5814686 () Bool)

(assert (=> bs!1163513 m!5814686))

(assert (=> b!4824289 d!1545596))

(assert (=> b!4824289 d!1545516))

(assert (=> b!4824327 d!1545590))

(assert (=> b!4824327 d!1545592))

(declare-fun d!1545598 () Bool)

(declare-fun res!2054004 () Bool)

(declare-fun e!3014748 () Bool)

(assert (=> d!1545598 (=> res!2054004 e!3014748)))

(assert (=> d!1545598 (= res!2054004 ((_ is Nil!54960) (toList!7472 lt!1971936)))))

(assert (=> d!1545598 (= (forall!12598 (toList!7472 lt!1971936) lambda!236378) e!3014748)))

(declare-fun b!4824832 () Bool)

(declare-fun e!3014749 () Bool)

(assert (=> b!4824832 (= e!3014748 e!3014749)))

(declare-fun res!2054005 () Bool)

(assert (=> b!4824832 (=> (not res!2054005) (not e!3014749))))

(assert (=> b!4824832 (= res!2054005 (dynLambda!22212 lambda!236378 (h!61394 (toList!7472 lt!1971936))))))

(declare-fun b!4824833 () Bool)

(assert (=> b!4824833 (= e!3014749 (forall!12598 (t!362580 (toList!7472 lt!1971936)) lambda!236378))))

(assert (= (and d!1545598 (not res!2054004)) b!4824832))

(assert (= (and b!4824832 res!2054005) b!4824833))

(declare-fun b_lambda!189683 () Bool)

(assert (=> (not b_lambda!189683) (not b!4824832)))

(declare-fun m!5814688 () Bool)

(assert (=> b!4824832 m!5814688))

(declare-fun m!5814690 () Bool)

(assert (=> b!4824833 m!5814690))

(assert (=> b!4824385 d!1545598))

(assert (=> b!4824291 d!1545596))

(assert (=> b!4824291 d!1545516))

(declare-fun d!1545600 () Bool)

(declare-fun res!2054006 () Bool)

(declare-fun e!3014750 () Bool)

(assert (=> d!1545600 (=> res!2054006 e!3014750)))

(assert (=> d!1545600 (= res!2054006 ((_ is Nil!54960) (ite c!822056 (toList!7472 lt!1971936) (toList!7472 lt!1972154))))))

(assert (=> d!1545600 (= (forall!12598 (ite c!822056 (toList!7472 lt!1971936) (toList!7472 lt!1972154)) (ite c!822056 lambda!236375 lambda!236377)) e!3014750)))

(declare-fun b!4824834 () Bool)

(declare-fun e!3014751 () Bool)

(assert (=> b!4824834 (= e!3014750 e!3014751)))

(declare-fun res!2054007 () Bool)

(assert (=> b!4824834 (=> (not res!2054007) (not e!3014751))))

(assert (=> b!4824834 (= res!2054007 (dynLambda!22212 (ite c!822056 lambda!236375 lambda!236377) (h!61394 (ite c!822056 (toList!7472 lt!1971936) (toList!7472 lt!1972154)))))))

(declare-fun b!4824835 () Bool)

(assert (=> b!4824835 (= e!3014751 (forall!12598 (t!362580 (ite c!822056 (toList!7472 lt!1971936) (toList!7472 lt!1972154))) (ite c!822056 lambda!236375 lambda!236377)))))

(assert (= (and d!1545600 (not res!2054006)) b!4824834))

(assert (= (and b!4824834 res!2054007) b!4824835))

(declare-fun b_lambda!189685 () Bool)

(assert (=> (not b_lambda!189685) (not b!4824834)))

(declare-fun m!5814692 () Bool)

(assert (=> b!4824834 m!5814692))

(declare-fun m!5814694 () Bool)

(assert (=> b!4824835 m!5814694))

(assert (=> bm!336300 d!1545600))

(assert (=> b!4824401 d!1545564))

(assert (=> b!4824401 d!1545566))

(declare-fun d!1545602 () Bool)

(declare-fun res!2054008 () Bool)

(declare-fun e!3014752 () Bool)

(assert (=> d!1545602 (=> res!2054008 e!3014752)))

(assert (=> d!1545602 (= res!2054008 ((_ is Nil!54960) (toList!7472 lt!1971936)))))

(assert (=> d!1545602 (= (forall!12598 (toList!7472 lt!1971936) (ite c!822056 lambda!236375 lambda!236377)) e!3014752)))

(declare-fun b!4824836 () Bool)

(declare-fun e!3014753 () Bool)

(assert (=> b!4824836 (= e!3014752 e!3014753)))

(declare-fun res!2054009 () Bool)

(assert (=> b!4824836 (=> (not res!2054009) (not e!3014753))))

(assert (=> b!4824836 (= res!2054009 (dynLambda!22212 (ite c!822056 lambda!236375 lambda!236377) (h!61394 (toList!7472 lt!1971936))))))

(declare-fun b!4824837 () Bool)

(assert (=> b!4824837 (= e!3014753 (forall!12598 (t!362580 (toList!7472 lt!1971936)) (ite c!822056 lambda!236375 lambda!236377)))))

(assert (= (and d!1545602 (not res!2054008)) b!4824836))

(assert (= (and b!4824836 res!2054009) b!4824837))

(declare-fun b_lambda!189687 () Bool)

(assert (=> (not b_lambda!189687) (not b!4824836)))

(declare-fun m!5814696 () Bool)

(assert (=> b!4824836 m!5814696))

(declare-fun m!5814698 () Bool)

(assert (=> b!4824837 m!5814698))

(assert (=> bm!336301 d!1545602))

(declare-fun d!1545604 () Bool)

(assert (=> d!1545604 (= (get!18818 (getValueByKey!2615 (toList!7471 lm!2280) (_1!32384 (h!61395 (toList!7471 lm!2280))))) (v!49164 (getValueByKey!2615 (toList!7471 lm!2280) (_1!32384 (h!61395 (toList!7471 lm!2280))))))))

(assert (=> d!1545286 d!1545604))

(declare-fun b!4824839 () Bool)

(declare-fun e!3014754 () Option!13488)

(declare-fun e!3014755 () Option!13488)

(assert (=> b!4824839 (= e!3014754 e!3014755)))

(declare-fun c!822140 () Bool)

(assert (=> b!4824839 (= c!822140 (and ((_ is Cons!54961) (toList!7471 lm!2280)) (not (= (_1!32384 (h!61395 (toList!7471 lm!2280))) (_1!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun b!4824841 () Bool)

(assert (=> b!4824841 (= e!3014755 None!13487)))

(declare-fun b!4824838 () Bool)

(assert (=> b!4824838 (= e!3014754 (Some!13487 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))

(declare-fun b!4824840 () Bool)

(assert (=> b!4824840 (= e!3014755 (getValueByKey!2615 (t!362581 (toList!7471 lm!2280)) (_1!32384 (h!61395 (toList!7471 lm!2280)))))))

(declare-fun d!1545606 () Bool)

(declare-fun c!822139 () Bool)

(assert (=> d!1545606 (= c!822139 (and ((_ is Cons!54961) (toList!7471 lm!2280)) (= (_1!32384 (h!61395 (toList!7471 lm!2280))) (_1!32384 (h!61395 (toList!7471 lm!2280))))))))

(assert (=> d!1545606 (= (getValueByKey!2615 (toList!7471 lm!2280) (_1!32384 (h!61395 (toList!7471 lm!2280)))) e!3014754)))

(assert (= (and d!1545606 c!822139) b!4824838))

(assert (= (and d!1545606 (not c!822139)) b!4824839))

(assert (= (and b!4824839 c!822140) b!4824840))

(assert (= (and b!4824839 (not c!822140)) b!4824841))

(declare-fun m!5814700 () Bool)

(assert (=> b!4824840 m!5814700))

(assert (=> d!1545286 d!1545606))

(declare-fun d!1545608 () Bool)

(declare-fun res!2054010 () Bool)

(declare-fun e!3014756 () Bool)

(assert (=> d!1545608 (=> res!2054010 e!3014756)))

(assert (=> d!1545608 (= res!2054010 (not ((_ is Cons!54960) (_2!32384 (h!61395 (toList!7471 lt!1971940))))))))

(assert (=> d!1545608 (= (noDuplicateKeys!2448 (_2!32384 (h!61395 (toList!7471 lt!1971940)))) e!3014756)))

(declare-fun b!4824842 () Bool)

(declare-fun e!3014757 () Bool)

(assert (=> b!4824842 (= e!3014756 e!3014757)))

(declare-fun res!2054011 () Bool)

(assert (=> b!4824842 (=> (not res!2054011) (not e!3014757))))

(assert (=> b!4824842 (= res!2054011 (not (containsKey!4359 (t!362580 (_2!32384 (h!61395 (toList!7471 lt!1971940)))) (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lt!1971940))))))))))

(declare-fun b!4824843 () Bool)

(assert (=> b!4824843 (= e!3014757 (noDuplicateKeys!2448 (t!362580 (_2!32384 (h!61395 (toList!7471 lt!1971940))))))))

(assert (= (and d!1545608 (not res!2054010)) b!4824842))

(assert (= (and b!4824842 res!2054011) b!4824843))

(declare-fun m!5814702 () Bool)

(assert (=> b!4824842 m!5814702))

(declare-fun m!5814704 () Bool)

(assert (=> b!4824843 m!5814704))

(assert (=> bs!1163287 d!1545608))

(declare-fun d!1545610 () Bool)

(declare-fun res!2054012 () Bool)

(declare-fun e!3014758 () Bool)

(assert (=> d!1545610 (=> res!2054012 e!3014758)))

(assert (=> d!1545610 (= res!2054012 ((_ is Nil!54961) (t!362581 (toList!7471 lt!1971940))))))

(assert (=> d!1545610 (= (forall!12596 (t!362581 (toList!7471 lt!1971940)) lambda!236300) e!3014758)))

(declare-fun b!4824844 () Bool)

(declare-fun e!3014759 () Bool)

(assert (=> b!4824844 (= e!3014758 e!3014759)))

(declare-fun res!2054013 () Bool)

(assert (=> b!4824844 (=> (not res!2054013) (not e!3014759))))

(assert (=> b!4824844 (= res!2054013 (dynLambda!22210 lambda!236300 (h!61395 (t!362581 (toList!7471 lt!1971940)))))))

(declare-fun b!4824845 () Bool)

(assert (=> b!4824845 (= e!3014759 (forall!12596 (t!362581 (t!362581 (toList!7471 lt!1971940))) lambda!236300))))

(assert (= (and d!1545610 (not res!2054012)) b!4824844))

(assert (= (and b!4824844 res!2054013) b!4824845))

(declare-fun b_lambda!189689 () Bool)

(assert (=> (not b_lambda!189689) (not b!4824844)))

(declare-fun m!5814706 () Bool)

(assert (=> b!4824844 m!5814706))

(declare-fun m!5814708 () Bool)

(assert (=> b!4824845 m!5814708))

(assert (=> b!4824403 d!1545610))

(assert (=> d!1545270 d!1545510))

(declare-fun d!1545612 () Bool)

(declare-fun res!2054014 () Bool)

(declare-fun e!3014760 () Bool)

(assert (=> d!1545612 (=> res!2054014 e!3014760)))

(assert (=> d!1545612 (= res!2054014 ((_ is Nil!54961) (toList!7471 lt!1971940)))))

(assert (=> d!1545612 (= (forall!12596 (toList!7471 lt!1971940) lambda!236304) e!3014760)))

(declare-fun b!4824846 () Bool)

(declare-fun e!3014761 () Bool)

(assert (=> b!4824846 (= e!3014760 e!3014761)))

(declare-fun res!2054015 () Bool)

(assert (=> b!4824846 (=> (not res!2054015) (not e!3014761))))

(assert (=> b!4824846 (= res!2054015 (dynLambda!22210 lambda!236304 (h!61395 (toList!7471 lt!1971940))))))

(declare-fun b!4824847 () Bool)

(assert (=> b!4824847 (= e!3014761 (forall!12596 (t!362581 (toList!7471 lt!1971940)) lambda!236304))))

(assert (= (and d!1545612 (not res!2054014)) b!4824846))

(assert (= (and b!4824846 res!2054015) b!4824847))

(declare-fun b_lambda!189691 () Bool)

(assert (=> (not b_lambda!189691) (not b!4824846)))

(declare-fun m!5814710 () Bool)

(assert (=> b!4824846 m!5814710))

(declare-fun m!5814712 () Bool)

(assert (=> b!4824847 m!5814712))

(assert (=> d!1545258 d!1545612))

(declare-fun d!1545614 () Bool)

(assert (=> d!1545614 (isDefined!10603 (getValueByKey!2615 (toList!7471 lm!2280) lt!1971938))))

(declare-fun lt!1972446 () Unit!142817)

(assert (=> d!1545614 (= lt!1972446 (choose!35107 (toList!7471 lm!2280) lt!1971938))))

(declare-fun e!3014762 () Bool)

(assert (=> d!1545614 e!3014762))

(declare-fun res!2054016 () Bool)

(assert (=> d!1545614 (=> (not res!2054016) (not e!3014762))))

(assert (=> d!1545614 (= res!2054016 (isStrictlySorted!982 (toList!7471 lm!2280)))))

(assert (=> d!1545614 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2400 (toList!7471 lm!2280) lt!1971938) lt!1972446)))

(declare-fun b!4824848 () Bool)

(assert (=> b!4824848 (= e!3014762 (containsKey!4362 (toList!7471 lm!2280) lt!1971938))))

(assert (= (and d!1545614 res!2054016) b!4824848))

(assert (=> d!1545614 m!5813798))

(assert (=> d!1545614 m!5813798))

(assert (=> d!1545614 m!5813800))

(declare-fun m!5814714 () Bool)

(assert (=> d!1545614 m!5814714))

(assert (=> d!1545614 m!5813720))

(assert (=> b!4824848 m!5813794))

(assert (=> b!4824328 d!1545614))

(declare-fun d!1545616 () Bool)

(assert (=> d!1545616 (= (isDefined!10603 (getValueByKey!2615 (toList!7471 lm!2280) lt!1971938)) (not (isEmpty!29650 (getValueByKey!2615 (toList!7471 lm!2280) lt!1971938))))))

(declare-fun bs!1163514 () Bool)

(assert (= bs!1163514 d!1545616))

(assert (=> bs!1163514 m!5813798))

(declare-fun m!5814716 () Bool)

(assert (=> bs!1163514 m!5814716))

(assert (=> b!4824328 d!1545616))

(assert (=> b!4824328 d!1545392))

(declare-fun d!1545618 () Bool)

(declare-fun res!2054017 () Bool)

(declare-fun e!3014763 () Bool)

(assert (=> d!1545618 (=> res!2054017 e!3014763)))

(assert (=> d!1545618 (= res!2054017 (and ((_ is Cons!54961) (toList!7471 lt!1971940)) (= (_1!32384 (h!61395 (toList!7471 lt!1971940))) lt!1971938)))))

(assert (=> d!1545618 (= (containsKey!4362 (toList!7471 lt!1971940) lt!1971938) e!3014763)))

(declare-fun b!4824849 () Bool)

(declare-fun e!3014764 () Bool)

(assert (=> b!4824849 (= e!3014763 e!3014764)))

(declare-fun res!2054018 () Bool)

(assert (=> b!4824849 (=> (not res!2054018) (not e!3014764))))

(assert (=> b!4824849 (= res!2054018 (and (or (not ((_ is Cons!54961) (toList!7471 lt!1971940))) (bvsle (_1!32384 (h!61395 (toList!7471 lt!1971940))) lt!1971938)) ((_ is Cons!54961) (toList!7471 lt!1971940)) (bvslt (_1!32384 (h!61395 (toList!7471 lt!1971940))) lt!1971938)))))

(declare-fun b!4824850 () Bool)

(assert (=> b!4824850 (= e!3014764 (containsKey!4362 (t!362581 (toList!7471 lt!1971940)) lt!1971938))))

(assert (= (and d!1545618 (not res!2054017)) b!4824849))

(assert (= (and b!4824849 res!2054018) b!4824850))

(declare-fun m!5814718 () Bool)

(assert (=> b!4824850 m!5814718))

(assert (=> d!1545266 d!1545618))

(declare-fun d!1545620 () Bool)

(assert (=> d!1545620 (= (tail!9406 (toList!7471 lm!2280)) (t!362581 (toList!7471 lm!2280)))))

(assert (=> d!1545324 d!1545620))

(assert (=> b!4824395 d!1545566))

(assert (=> b!4824406 d!1545270))

(assert (=> b!4824330 d!1545616))

(assert (=> b!4824330 d!1545392))

(assert (=> d!1545320 d!1545288))

(assert (=> d!1545320 d!1545312))

(assert (=> d!1545320 d!1545314))

(assert (=> d!1545320 d!1545522))

(declare-fun e!3014767 () Bool)

(declare-fun d!1545622 () Bool)

(assert (=> d!1545622 (= (contains!18764 (addToMapMapFromBucket!1794 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936) key!5428) e!3014767)))

(declare-fun res!2054021 () Bool)

(assert (=> d!1545622 (=> res!2054021 e!3014767)))

(assert (=> d!1545622 (= res!2054021 (containsKey!4359 (_2!32384 (h!61395 (toList!7471 lm!2280))) key!5428))))

(assert (=> d!1545622 true))

(declare-fun _$29!805 () Unit!142817)

(assert (=> d!1545622 (= (choose!35091 (_2!32384 (h!61395 (toList!7471 lm!2280))) lt!1971936 key!5428) _$29!805)))

(declare-fun b!4824853 () Bool)

(assert (=> b!4824853 (= e!3014767 (contains!18764 lt!1971936 key!5428))))

(assert (= (and d!1545622 (not res!2054021)) b!4824853))

(assert (=> d!1545622 m!5813666))

(assert (=> d!1545622 m!5813666))

(assert (=> d!1545622 m!5813674))

(assert (=> d!1545622 m!5813676))

(assert (=> b!4824853 m!5813654))

(assert (=> d!1545320 d!1545622))

(declare-fun d!1545624 () Bool)

(declare-fun lt!1972447 () Bool)

(assert (=> d!1545624 (= lt!1972447 (select (content!9817 e!3014401) key!5428))))

(declare-fun e!3014769 () Bool)

(assert (=> d!1545624 (= lt!1972447 e!3014769)))

(declare-fun res!2054023 () Bool)

(assert (=> d!1545624 (=> (not res!2054023) (not e!3014769))))

(assert (=> d!1545624 (= res!2054023 ((_ is Cons!54963) e!3014401))))

(assert (=> d!1545624 (= (contains!18767 e!3014401 key!5428) lt!1972447)))

(declare-fun b!4824854 () Bool)

(declare-fun e!3014768 () Bool)

(assert (=> b!4824854 (= e!3014769 e!3014768)))

(declare-fun res!2054022 () Bool)

(assert (=> b!4824854 (=> res!2054022 e!3014768)))

(assert (=> b!4824854 (= res!2054022 (= (h!61397 e!3014401) key!5428))))

(declare-fun b!4824855 () Bool)

(assert (=> b!4824855 (= e!3014768 (contains!18767 (t!362583 e!3014401) key!5428))))

(assert (= (and d!1545624 res!2054023) b!4824854))

(assert (= (and b!4824854 (not res!2054022)) b!4824855))

(declare-fun m!5814720 () Bool)

(assert (=> d!1545624 m!5814720))

(declare-fun m!5814722 () Bool)

(assert (=> d!1545624 m!5814722))

(declare-fun m!5814724 () Bool)

(assert (=> b!4824855 m!5814724))

(assert (=> bm!336283 d!1545624))

(assert (=> b!4824321 d!1545592))

(declare-fun d!1545626 () Bool)

(declare-fun res!2054024 () Bool)

(declare-fun e!3014770 () Bool)

(assert (=> d!1545626 (=> res!2054024 e!3014770)))

(assert (=> d!1545626 (= res!2054024 (and ((_ is Cons!54960) (t!362580 (apply!13349 lm!2280 lt!1971938))) (= (_1!32383 (h!61394 (t!362580 (apply!13349 lm!2280 lt!1971938)))) key!5428)))))

(assert (=> d!1545626 (= (containsKey!4359 (t!362580 (apply!13349 lm!2280 lt!1971938)) key!5428) e!3014770)))

(declare-fun b!4824856 () Bool)

(declare-fun e!3014771 () Bool)

(assert (=> b!4824856 (= e!3014770 e!3014771)))

(declare-fun res!2054025 () Bool)

(assert (=> b!4824856 (=> (not res!2054025) (not e!3014771))))

(assert (=> b!4824856 (= res!2054025 ((_ is Cons!54960) (t!362580 (apply!13349 lm!2280 lt!1971938))))))

(declare-fun b!4824857 () Bool)

(assert (=> b!4824857 (= e!3014771 (containsKey!4359 (t!362580 (t!362580 (apply!13349 lm!2280 lt!1971938))) key!5428))))

(assert (= (and d!1545626 (not res!2054024)) b!4824856))

(assert (= (and b!4824856 res!2054025) b!4824857))

(declare-fun m!5814726 () Bool)

(assert (=> b!4824857 m!5814726))

(assert (=> b!4824332 d!1545626))

(declare-fun d!1545628 () Bool)

(declare-fun lt!1972448 () Bool)

(assert (=> d!1545628 (= lt!1972448 (select (content!9817 e!3014448) key!5428))))

(declare-fun e!3014773 () Bool)

(assert (=> d!1545628 (= lt!1972448 e!3014773)))

(declare-fun res!2054027 () Bool)

(assert (=> d!1545628 (=> (not res!2054027) (not e!3014773))))

(assert (=> d!1545628 (= res!2054027 ((_ is Cons!54963) e!3014448))))

(assert (=> d!1545628 (= (contains!18767 e!3014448 key!5428) lt!1972448)))

(declare-fun b!4824858 () Bool)

(declare-fun e!3014772 () Bool)

(assert (=> b!4824858 (= e!3014773 e!3014772)))

(declare-fun res!2054026 () Bool)

(assert (=> b!4824858 (=> res!2054026 e!3014772)))

(assert (=> b!4824858 (= res!2054026 (= (h!61397 e!3014448) key!5428))))

(declare-fun b!4824859 () Bool)

(assert (=> b!4824859 (= e!3014772 (contains!18767 (t!362583 e!3014448) key!5428))))

(assert (= (and d!1545628 res!2054027) b!4824858))

(assert (= (and b!4824858 (not res!2054026)) b!4824859))

(declare-fun m!5814728 () Bool)

(assert (=> d!1545628 m!5814728))

(declare-fun m!5814730 () Bool)

(assert (=> d!1545628 m!5814730))

(declare-fun m!5814732 () Bool)

(assert (=> b!4824859 m!5814732))

(assert (=> bm!336303 d!1545628))

(declare-fun b!4824864 () Bool)

(declare-fun e!3014776 () Bool)

(declare-fun tp!1362550 () Bool)

(declare-fun tp_is_empty!34447 () Bool)

(assert (=> b!4824864 (= e!3014776 (and tp_is_empty!34443 tp_is_empty!34447 tp!1362550))))

(assert (=> b!4824417 (= tp!1362541 e!3014776)))

(assert (= (and b!4824417 ((_ is Cons!54960) (_2!32384 (h!61395 (toList!7471 lm!2280))))) b!4824864))

(declare-fun b!4824865 () Bool)

(declare-fun e!3014777 () Bool)

(declare-fun tp!1362551 () Bool)

(declare-fun tp!1362552 () Bool)

(assert (=> b!4824865 (= e!3014777 (and tp!1362551 tp!1362552))))

(assert (=> b!4824417 (= tp!1362542 e!3014777)))

(assert (= (and b!4824417 ((_ is Cons!54961) (t!362581 (toList!7471 lm!2280)))) b!4824865))

(declare-fun b_lambda!189693 () Bool)

(assert (= b_lambda!189677 (or start!500352 b_lambda!189693)))

(declare-fun bs!1163515 () Bool)

(declare-fun d!1545630 () Bool)

(assert (= bs!1163515 (and d!1545630 start!500352)))

(assert (=> bs!1163515 (= (dynLambda!22210 lambda!236300 (h!61395 (t!362581 (toList!7471 lm!2280)))) (noDuplicateKeys!2448 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280))))))))

(assert (=> bs!1163515 m!5814646))

(assert (=> b!4824738 d!1545630))

(declare-fun b_lambda!189695 () Bool)

(assert (= b_lambda!189637 (or b!4824383 b_lambda!189695)))

(declare-fun bs!1163516 () Bool)

(declare-fun d!1545632 () Bool)

(assert (= bs!1163516 (and d!1545632 b!4824383)))

(assert (=> bs!1163516 (= (dynLambda!22212 lambda!236377 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) (contains!18764 lt!1972149 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(assert (=> bs!1163516 m!5813896))

(assert (=> b!4824673 d!1545632))

(declare-fun b_lambda!189697 () Bool)

(assert (= b_lambda!189635 (or b!4824383 b_lambda!189697)))

(declare-fun bs!1163517 () Bool)

(declare-fun d!1545634 () Bool)

(assert (= bs!1163517 (and d!1545634 b!4824383)))

(assert (=> bs!1163517 (= (dynLambda!22212 lambda!236377 (h!61394 (toList!7472 lt!1971936))) (contains!18764 lt!1972149 (_1!32383 (h!61394 (toList!7472 lt!1971936)))))))

(declare-fun m!5814734 () Bool)

(assert (=> bs!1163517 m!5814734))

(assert (=> b!4824667 d!1545634))

(declare-fun b_lambda!189699 () Bool)

(assert (= b_lambda!189689 (or start!500352 b_lambda!189699)))

(declare-fun bs!1163518 () Bool)

(declare-fun d!1545636 () Bool)

(assert (= bs!1163518 (and d!1545636 start!500352)))

(assert (=> bs!1163518 (= (dynLambda!22210 lambda!236300 (h!61395 (t!362581 (toList!7471 lt!1971940)))) (noDuplicateKeys!2448 (_2!32384 (h!61395 (t!362581 (toList!7471 lt!1971940))))))))

(declare-fun m!5814736 () Bool)

(assert (=> bs!1163518 m!5814736))

(assert (=> b!4824844 d!1545636))

(declare-fun b_lambda!189701 () Bool)

(assert (= b_lambda!189621 (or b!4824383 b_lambda!189701)))

(assert (=> d!1545404 d!1545632))

(declare-fun b_lambda!189703 () Bool)

(assert (= b_lambda!189629 (or b!4824383 b_lambda!189703)))

(declare-fun bs!1163519 () Bool)

(declare-fun d!1545638 () Bool)

(assert (= bs!1163519 (and d!1545638 b!4824383)))

(assert (=> bs!1163519 (= (dynLambda!22212 lambda!236377 (h!61394 (toList!7472 lt!1972154))) (contains!18764 lt!1972149 (_1!32383 (h!61394 (toList!7472 lt!1972154)))))))

(declare-fun m!5814738 () Bool)

(assert (=> bs!1163519 m!5814738))

(assert (=> b!4824642 d!1545638))

(declare-fun b_lambda!189705 () Bool)

(assert (= b_lambda!189691 (or d!1545258 b_lambda!189705)))

(declare-fun bs!1163520 () Bool)

(declare-fun d!1545640 () Bool)

(assert (= bs!1163520 (and d!1545640 d!1545258)))

(declare-fun allKeysSameHash!2003 (List!55084 (_ BitVec 64) Hashable!7262) Bool)

(assert (=> bs!1163520 (= (dynLambda!22210 lambda!236304 (h!61395 (toList!7471 lt!1971940))) (allKeysSameHash!2003 (_2!32384 (h!61395 (toList!7471 lt!1971940))) (_1!32384 (h!61395 (toList!7471 lt!1971940))) hashF!1509))))

(declare-fun m!5814740 () Bool)

(assert (=> bs!1163520 m!5814740))

(assert (=> b!4824846 d!1545640))

(declare-fun b_lambda!189707 () Bool)

(assert (= b_lambda!189641 (or d!1545316 b_lambda!189707)))

(declare-fun bs!1163521 () Bool)

(declare-fun d!1545642 () Bool)

(assert (= bs!1163521 (and d!1545642 d!1545316)))

(assert (=> bs!1163521 (= (dynLambda!22210 lambda!236381 (h!61395 (toList!7471 lm!2280))) (noDuplicateKeys!2448 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))

(assert (=> bs!1163521 m!5813912))

(assert (=> b!4824686 d!1545642))

(declare-fun b_lambda!189709 () Bool)

(assert (= b_lambda!189681 (or d!1545236 b_lambda!189709)))

(declare-fun bs!1163522 () Bool)

(declare-fun d!1545644 () Bool)

(assert (= bs!1163522 (and d!1545644 d!1545236)))

(assert (=> bs!1163522 (= (dynLambda!22210 lambda!236303 (h!61395 (toList!7471 lm!2280))) (allKeysSameHash!2003 (_2!32384 (h!61395 (toList!7471 lm!2280))) (_1!32384 (h!61395 (toList!7471 lm!2280))) hashF!1509))))

(declare-fun m!5814742 () Bool)

(assert (=> bs!1163522 m!5814742))

(assert (=> b!4824822 d!1545644))

(declare-fun b_lambda!189711 () Bool)

(assert (= b_lambda!189639 (or d!1545322 b_lambda!189711)))

(declare-fun bs!1163523 () Bool)

(declare-fun d!1545646 () Bool)

(assert (= bs!1163523 (and d!1545646 d!1545322)))

(assert (=> bs!1163523 (= (dynLambda!22210 lambda!236384 (h!61395 (t!362581 (toList!7471 lm!2280)))) (noDuplicateKeys!2448 (_2!32384 (h!61395 (t!362581 (toList!7471 lm!2280))))))))

(assert (=> bs!1163523 m!5814646))

(assert (=> b!4824682 d!1545646))

(declare-fun b_lambda!189713 () Bool)

(assert (= b_lambda!189683 (or d!1545288 b_lambda!189713)))

(declare-fun bs!1163524 () Bool)

(declare-fun d!1545648 () Bool)

(assert (= bs!1163524 (and d!1545648 d!1545288)))

(assert (=> bs!1163524 (= (dynLambda!22212 lambda!236378 (h!61394 (toList!7472 lt!1971936))) (contains!18764 lt!1972143 (_1!32383 (h!61394 (toList!7472 lt!1971936)))))))

(declare-fun m!5814744 () Bool)

(assert (=> bs!1163524 m!5814744))

(assert (=> b!4824832 d!1545648))

(declare-fun b_lambda!189715 () Bool)

(assert (= b_lambda!189631 (or b!4824383 b_lambda!189715)))

(declare-fun bs!1163525 () Bool)

(declare-fun d!1545650 () Bool)

(assert (= bs!1163525 (and d!1545650 b!4824383)))

(assert (=> bs!1163525 (= (dynLambda!22212 lambda!236377 (h!61394 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280)))))) (contains!18764 lt!1972149 (_1!32383 (h!61394 (t!362580 (_2!32384 (h!61395 (toList!7471 lm!2280))))))))))

(declare-fun m!5814746 () Bool)

(assert (=> bs!1163525 m!5814746))

(assert (=> b!4824644 d!1545650))

(declare-fun b_lambda!189717 () Bool)

(assert (= b_lambda!189627 (or b!4824383 b_lambda!189717)))

(declare-fun bs!1163526 () Bool)

(declare-fun d!1545652 () Bool)

(assert (= bs!1163526 (and d!1545652 b!4824383)))

(assert (=> bs!1163526 (= (dynLambda!22212 lambda!236376 (h!61394 (toList!7472 lt!1971936))) (contains!18764 lt!1971936 (_1!32383 (h!61394 (toList!7472 lt!1971936)))))))

(declare-fun m!5814748 () Bool)

(assert (=> bs!1163526 m!5814748))

(assert (=> b!4824640 d!1545652))

(declare-fun b_lambda!189719 () Bool)

(assert (= b_lambda!189679 (or d!1545288 b_lambda!189719)))

(declare-fun bs!1163527 () Bool)

(declare-fun d!1545654 () Bool)

(assert (= bs!1163527 (and d!1545654 d!1545288)))

(assert (=> bs!1163527 (= (dynLambda!22212 lambda!236378 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280))))) (contains!18764 lt!1972143 (_1!32383 (h!61394 (_2!32384 (h!61395 (toList!7471 lm!2280)))))))))

(declare-fun m!5814750 () Bool)

(assert (=> bs!1163527 m!5814750))

(assert (=> b!4824742 d!1545654))

(check-sat (not b!4824853) (not b!4824780) tp_is_empty!34443 (not b!4824571) (not b!4824764) (not b!4824820) (not b_lambda!189599) (not bm!336314) (not d!1545590) (not d!1545616) (not d!1545504) (not b_lambda!189685) (not b!4824825) (not bs!1163523) (not b!4824596) (not b!4824573) (not b!4824779) (not b!4824645) (not d!1545596) (not bm!336313) (not b!4824698) (not b!4824828) (not d!1545486) (not d!1545622) (not d!1545570) (not bs!1163522) (not b!4824831) (not b!4824773) (not d!1545512) (not b!4824560) (not b!4824775) (not b!4824741) (not b!4824681) (not b!4824781) (not b!4824687) (not bm!336317) (not b!4824603) (not b!4824647) (not bm!336319) (not d!1545412) (not bs!1163517) (not b!4824685) (not b_lambda!189707) (not bs!1163526) (not bm!336316) (not b!4824577) (not b!4824857) (not bs!1163518) (not d!1545582) (not b!4824787) (not b!4824833) (not b_lambda!189703) (not d!1545614) (not bs!1163516) (not b!4824850) (not b_lambda!189699) (not b!4824674) (not b!4824840) (not bs!1163520) (not b!4824578) (not b!4824641) (not d!1545416) (not d!1545576) (not b_lambda!189697) (not b!4824842) (not b!4824816) (not b!4824837) (not b!4824595) (not b_lambda!189719) (not d!1545566) (not d!1545624) (not b!4824576) (not b!4824604) (not b!4824668) (not b_lambda!189687) (not b_lambda!189713) (not d!1545408) (not b!4824818) (not b!4824650) (not bs!1163521) (not d!1545568) (not b!4824643) (not b_lambda!189701) (not b!4824713) (not b_lambda!189705) (not d!1545404) (not d!1545578) (not b!4824809) (not b!4824739) (not b!4824598) (not b_lambda!189717) (not d!1545592) (not d!1545488) (not b!4824864) (not b!4824794) (not b_lambda!189711) (not b!4824826) (not b!4824770) (not b!4824649) (not d!1545560) (not d!1545584) (not b!4824769) (not bs!1163525) (not b!4824648) (not d!1545564) (not d!1545402) (not b!4824865) (not b!4824743) (not b!4824605) (not b!4824574) (not b!4824827) (not b_lambda!189693) (not b!4824736) (not b!4824711) (not d!1545574) (not bm!336315) (not b!4824813) (not b!4824847) (not b!4824823) (not bs!1163527) (not b_lambda!189695) (not bm!336309) (not d!1545446) (not d!1545530) (not b!4824819) (not b_lambda!189601) (not b!4824859) (not d!1545594) (not b!4824855) (not d!1545562) (not b!4824848) (not b!4824795) (not b!4824601) (not b!4824845) (not b!4824835) (not bs!1163519) (not d!1545534) tp_is_empty!34447 (not b!4824585) (not b!4824723) (not d!1545628) (not b_lambda!189709) (not b!4824843) (not b!4824716) (not b!4824572) (not d!1545494) (not b!4824768) (not b!4824683) (not bs!1163515) (not b!4824817) (not b_lambda!189715) (not b!4824762) (not d!1545586) (not b!4824599) (not bm!336318) (not bs!1163524) (not b!4824737) (not b!4824796) (not b!4824600))
(check-sat)
