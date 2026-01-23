; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!497936 () Bool)

(assert start!497936)

(declare-fun b!4814403 () Bool)

(declare-fun e!3007925 () Bool)

(declare-fun e!3007923 () Bool)

(assert (=> b!4814403 (= e!3007925 (not e!3007923))))

(declare-fun res!2047815 () Bool)

(assert (=> b!4814403 (=> res!2047815 e!3007923)))

(declare-datatypes ((K!16317 0))(
  ( (K!16318 (val!21359 Int)) )
))
(declare-datatypes ((V!16563 0))(
  ( (V!16564 (val!21360 Int)) )
))
(declare-datatypes ((tuple2!57654 0))(
  ( (tuple2!57655 (_1!32121 K!16317) (_2!32121 V!16563)) )
))
(declare-datatypes ((List!54796 0))(
  ( (Nil!54672) (Cons!54672 (h!61104 tuple2!57654) (t!362292 List!54796)) )
))
(declare-datatypes ((tuple2!57656 0))(
  ( (tuple2!57657 (_1!32122 (_ BitVec 64)) (_2!32122 List!54796)) )
))
(declare-datatypes ((List!54797 0))(
  ( (Nil!54673) (Cons!54673 (h!61105 tuple2!57656) (t!362293 List!54797)) )
))
(declare-datatypes ((ListLongMap!5725 0))(
  ( (ListLongMap!5726 (toList!7245 List!54797)) )
))
(declare-fun lm!1254 () ListLongMap!5725)

(declare-fun lt!1965335 () (_ BitVec 64))

(declare-fun contains!18451 (List!54797 tuple2!57656) Bool)

(declare-fun apply!13236 (ListLongMap!5725 (_ BitVec 64)) List!54796)

(assert (=> b!4814403 (= res!2047815 (contains!18451 (toList!7245 lm!1254) (tuple2!57657 lt!1965335 (apply!13236 lm!1254 lt!1965335))))))

(declare-fun contains!18452 (ListLongMap!5725 (_ BitVec 64)) Bool)

(assert (=> b!4814403 (contains!18452 lm!1254 lt!1965335)))

(declare-datatypes ((Hashable!7131 0))(
  ( (HashableExt!7130 (__x!33406 Int)) )
))
(declare-fun hashF!938 () Hashable!7131)

(declare-fun key!2670 () K!16317)

(declare-fun hash!5197 (Hashable!7131 K!16317) (_ BitVec 64))

(assert (=> b!4814403 (= lt!1965335 (hash!5197 hashF!938 key!2670))))

(declare-datatypes ((Unit!141807 0))(
  ( (Unit!141808) )
))
(declare-fun lt!1965334 () Unit!141807)

(declare-fun lemmaInGenMapThenLongMapContainsHash!1069 (ListLongMap!5725 K!16317 Hashable!7131) Unit!141807)

(assert (=> b!4814403 (= lt!1965334 (lemmaInGenMapThenLongMapContainsHash!1069 lm!1254 key!2670 hashF!938))))

(declare-fun b!4814404 () Bool)

(declare-fun isStrictlySorted!942 (List!54797) Bool)

(assert (=> b!4814404 (= e!3007923 (isStrictlySorted!942 (toList!7245 lm!1254)))))

(declare-fun containsKey!4212 (List!54797 (_ BitVec 64)) Bool)

(assert (=> b!4814404 (containsKey!4212 (toList!7245 lm!1254) lt!1965335)))

(declare-fun lt!1965336 () Unit!141807)

(declare-fun lemmaGetValueByKeyIsDefinedImpliesContainsKey!320 (List!54797 (_ BitVec 64)) Unit!141807)

(assert (=> b!4814404 (= lt!1965336 (lemmaGetValueByKeyIsDefinedImpliesContainsKey!320 (toList!7245 lm!1254) lt!1965335))))

(declare-fun b!4814406 () Bool)

(declare-fun res!2047813 () Bool)

(assert (=> b!4814406 (=> (not res!2047813) (not e!3007925))))

(declare-fun allKeysSameHashInMap!2447 (ListLongMap!5725 Hashable!7131) Bool)

(assert (=> b!4814406 (= res!2047813 (allKeysSameHashInMap!2447 lm!1254 hashF!938))))

(declare-fun b!4814407 () Bool)

(declare-fun res!2047816 () Bool)

(assert (=> b!4814407 (=> (not res!2047816) (not e!3007925))))

(declare-datatypes ((ListMap!6659 0))(
  ( (ListMap!6660 (toList!7246 List!54796)) )
))
(declare-fun contains!18453 (ListMap!6659 K!16317) Bool)

(declare-fun extractMap!2581 (List!54797) ListMap!6659)

(assert (=> b!4814407 (= res!2047816 (contains!18453 (extractMap!2581 (toList!7245 lm!1254)) key!2670))))

(declare-fun res!2047814 () Bool)

(assert (=> start!497936 (=> (not res!2047814) (not e!3007925))))

(declare-fun lambda!234133 () Int)

(declare-fun forall!12435 (List!54797 Int) Bool)

(assert (=> start!497936 (= res!2047814 (forall!12435 (toList!7245 lm!1254) lambda!234133))))

(assert (=> start!497936 e!3007925))

(declare-fun e!3007924 () Bool)

(declare-fun inv!70218 (ListLongMap!5725) Bool)

(assert (=> start!497936 (and (inv!70218 lm!1254) e!3007924)))

(assert (=> start!497936 true))

(declare-fun tp_is_empty!34131 () Bool)

(assert (=> start!497936 tp_is_empty!34131))

(declare-fun b!4814405 () Bool)

(declare-fun tp!1361716 () Bool)

(assert (=> b!4814405 (= e!3007924 tp!1361716)))

(assert (= (and start!497936 res!2047814) b!4814406))

(assert (= (and b!4814406 res!2047813) b!4814407))

(assert (= (and b!4814407 res!2047816) b!4814403))

(assert (= (and b!4814403 (not res!2047815)) b!4814404))

(assert (= start!497936 b!4814405))

(declare-fun m!5800274 () Bool)

(assert (=> b!4814406 m!5800274))

(declare-fun m!5800276 () Bool)

(assert (=> b!4814407 m!5800276))

(assert (=> b!4814407 m!5800276))

(declare-fun m!5800278 () Bool)

(assert (=> b!4814407 m!5800278))

(declare-fun m!5800280 () Bool)

(assert (=> b!4814404 m!5800280))

(declare-fun m!5800282 () Bool)

(assert (=> b!4814404 m!5800282))

(declare-fun m!5800284 () Bool)

(assert (=> b!4814404 m!5800284))

(declare-fun m!5800286 () Bool)

(assert (=> b!4814403 m!5800286))

(declare-fun m!5800288 () Bool)

(assert (=> b!4814403 m!5800288))

(declare-fun m!5800290 () Bool)

(assert (=> b!4814403 m!5800290))

(declare-fun m!5800292 () Bool)

(assert (=> b!4814403 m!5800292))

(declare-fun m!5800294 () Bool)

(assert (=> b!4814403 m!5800294))

(declare-fun m!5800296 () Bool)

(assert (=> start!497936 m!5800296))

(declare-fun m!5800298 () Bool)

(assert (=> start!497936 m!5800298))

(push 1)

(assert tp_is_empty!34131)

(assert (not b!4814407))

(assert (not start!497936))

(assert (not b!4814406))

(assert (not b!4814404))

(assert (not b!4814405))

(assert (not b!4814403))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!1160349 () Bool)

(declare-fun d!1540959 () Bool)

(assert (= bs!1160349 (and d!1540959 start!497936)))

(declare-fun lambda!234139 () Int)

(assert (=> bs!1160349 (= lambda!234139 lambda!234133)))

(assert (=> d!1540959 (contains!18452 lm!1254 (hash!5197 hashF!938 key!2670))))

(declare-fun lt!1965348 () Unit!141807)

(declare-fun choose!34899 (ListLongMap!5725 K!16317 Hashable!7131) Unit!141807)

(assert (=> d!1540959 (= lt!1965348 (choose!34899 lm!1254 key!2670 hashF!938))))

(assert (=> d!1540959 (forall!12435 (toList!7245 lm!1254) lambda!234139)))

(assert (=> d!1540959 (= (lemmaInGenMapThenLongMapContainsHash!1069 lm!1254 key!2670 hashF!938) lt!1965348)))

(declare-fun bs!1160350 () Bool)

(assert (= bs!1160350 d!1540959))

(assert (=> bs!1160350 m!5800290))

(assert (=> bs!1160350 m!5800290))

(declare-fun m!5800326 () Bool)

(assert (=> bs!1160350 m!5800326))

(declare-fun m!5800328 () Bool)

(assert (=> bs!1160350 m!5800328))

(declare-fun m!5800330 () Bool)

(assert (=> bs!1160350 m!5800330))

(assert (=> b!4814403 d!1540959))

(declare-fun d!1540961 () Bool)

(declare-fun hash!5199 (Hashable!7131 K!16317) (_ BitVec 64))

(assert (=> d!1540961 (= (hash!5197 hashF!938 key!2670) (hash!5199 hashF!938 key!2670))))

(declare-fun bs!1160351 () Bool)

(assert (= bs!1160351 d!1540961))

(declare-fun m!5800332 () Bool)

(assert (=> bs!1160351 m!5800332))

(assert (=> b!4814403 d!1540961))

(declare-fun d!1540963 () Bool)

(declare-fun lt!1965351 () Bool)

(declare-fun content!9786 (List!54797) (Set tuple2!57656))

(assert (=> d!1540963 (= lt!1965351 (set.member (tuple2!57657 lt!1965335 (apply!13236 lm!1254 lt!1965335)) (content!9786 (toList!7245 lm!1254))))))

(declare-fun e!3007940 () Bool)

(assert (=> d!1540963 (= lt!1965351 e!3007940)))

(declare-fun res!2047834 () Bool)

(assert (=> d!1540963 (=> (not res!2047834) (not e!3007940))))

(assert (=> d!1540963 (= res!2047834 (is-Cons!54673 (toList!7245 lm!1254)))))

(assert (=> d!1540963 (= (contains!18451 (toList!7245 lm!1254) (tuple2!57657 lt!1965335 (apply!13236 lm!1254 lt!1965335))) lt!1965351)))

(declare-fun b!4814427 () Bool)

(declare-fun e!3007939 () Bool)

(assert (=> b!4814427 (= e!3007940 e!3007939)))

(declare-fun res!2047833 () Bool)

(assert (=> b!4814427 (=> res!2047833 e!3007939)))

(assert (=> b!4814427 (= res!2047833 (= (h!61105 (toList!7245 lm!1254)) (tuple2!57657 lt!1965335 (apply!13236 lm!1254 lt!1965335))))))

(declare-fun b!4814428 () Bool)

(assert (=> b!4814428 (= e!3007939 (contains!18451 (t!362293 (toList!7245 lm!1254)) (tuple2!57657 lt!1965335 (apply!13236 lm!1254 lt!1965335))))))

(assert (= (and d!1540963 res!2047834) b!4814427))

(assert (= (and b!4814427 (not res!2047833)) b!4814428))

(declare-fun m!5800334 () Bool)

(assert (=> d!1540963 m!5800334))

(declare-fun m!5800336 () Bool)

(assert (=> d!1540963 m!5800336))

(declare-fun m!5800338 () Bool)

(assert (=> b!4814428 m!5800338))

(assert (=> b!4814403 d!1540963))

(declare-fun d!1540965 () Bool)

(declare-datatypes ((Option!13380 0))(
  ( (None!13379) (Some!13379 (v!49021 List!54796)) )
))
(declare-fun get!18707 (Option!13380) List!54796)

(declare-fun getValueByKey!2543 (List!54797 (_ BitVec 64)) Option!13380)

(assert (=> d!1540965 (= (apply!13236 lm!1254 lt!1965335) (get!18707 (getValueByKey!2543 (toList!7245 lm!1254) lt!1965335)))))

(declare-fun bs!1160352 () Bool)

(assert (= bs!1160352 d!1540965))

(declare-fun m!5800340 () Bool)

(assert (=> bs!1160352 m!5800340))

(assert (=> bs!1160352 m!5800340))

(declare-fun m!5800342 () Bool)

(assert (=> bs!1160352 m!5800342))

(assert (=> b!4814403 d!1540965))

(declare-fun d!1540967 () Bool)

(declare-fun e!3007946 () Bool)

(assert (=> d!1540967 e!3007946))

(declare-fun res!2047837 () Bool)

(assert (=> d!1540967 (=> res!2047837 e!3007946)))

(declare-fun lt!1965362 () Bool)

(assert (=> d!1540967 (= res!2047837 (not lt!1965362))))

(declare-fun lt!1965361 () Bool)

(assert (=> d!1540967 (= lt!1965362 lt!1965361)))

(declare-fun lt!1965363 () Unit!141807)

(declare-fun e!3007945 () Unit!141807)

(assert (=> d!1540967 (= lt!1965363 e!3007945)))

(declare-fun c!820547 () Bool)

(assert (=> d!1540967 (= c!820547 lt!1965361)))

(assert (=> d!1540967 (= lt!1965361 (containsKey!4212 (toList!7245 lm!1254) lt!1965335))))

(assert (=> d!1540967 (= (contains!18452 lm!1254 lt!1965335) lt!1965362)))

(declare-fun b!4814435 () Bool)

(declare-fun lt!1965360 () Unit!141807)

(assert (=> b!4814435 (= e!3007945 lt!1965360)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2329 (List!54797 (_ BitVec 64)) Unit!141807)

(assert (=> b!4814435 (= lt!1965360 (lemmaContainsKeyImpliesGetValueByKeyDefined!2329 (toList!7245 lm!1254) lt!1965335))))

(declare-fun isDefined!10517 (Option!13380) Bool)

(assert (=> b!4814435 (isDefined!10517 (getValueByKey!2543 (toList!7245 lm!1254) lt!1965335))))

(declare-fun b!4814436 () Bool)

(declare-fun Unit!141811 () Unit!141807)

(assert (=> b!4814436 (= e!3007945 Unit!141811)))

(declare-fun b!4814437 () Bool)

(assert (=> b!4814437 (= e!3007946 (isDefined!10517 (getValueByKey!2543 (toList!7245 lm!1254) lt!1965335)))))

(assert (= (and d!1540967 c!820547) b!4814435))

(assert (= (and d!1540967 (not c!820547)) b!4814436))

(assert (= (and d!1540967 (not res!2047837)) b!4814437))

(assert (=> d!1540967 m!5800282))

(declare-fun m!5800344 () Bool)

(assert (=> b!4814435 m!5800344))

(assert (=> b!4814435 m!5800340))

(assert (=> b!4814435 m!5800340))

(declare-fun m!5800346 () Bool)

(assert (=> b!4814435 m!5800346))

(assert (=> b!4814437 m!5800340))

(assert (=> b!4814437 m!5800340))

(assert (=> b!4814437 m!5800346))

(assert (=> b!4814403 d!1540967))

(declare-fun d!1540969 () Bool)

(declare-fun res!2047842 () Bool)

(declare-fun e!3007951 () Bool)

(assert (=> d!1540969 (=> res!2047842 e!3007951)))

(assert (=> d!1540969 (= res!2047842 (is-Nil!54673 (toList!7245 lm!1254)))))

(assert (=> d!1540969 (= (forall!12435 (toList!7245 lm!1254) lambda!234133) e!3007951)))

(declare-fun b!4814442 () Bool)

(declare-fun e!3007952 () Bool)

(assert (=> b!4814442 (= e!3007951 e!3007952)))

(declare-fun res!2047843 () Bool)

(assert (=> b!4814442 (=> (not res!2047843) (not e!3007952))))

(declare-fun dynLambda!22154 (Int tuple2!57656) Bool)

(assert (=> b!4814442 (= res!2047843 (dynLambda!22154 lambda!234133 (h!61105 (toList!7245 lm!1254))))))

(declare-fun b!4814443 () Bool)

(assert (=> b!4814443 (= e!3007952 (forall!12435 (t!362293 (toList!7245 lm!1254)) lambda!234133))))

(assert (= (and d!1540969 (not res!2047842)) b!4814442))

(assert (= (and b!4814442 res!2047843) b!4814443))

(declare-fun b_lambda!188345 () Bool)

(assert (=> (not b_lambda!188345) (not b!4814442)))

(declare-fun m!5800348 () Bool)

(assert (=> b!4814442 m!5800348))

(declare-fun m!5800350 () Bool)

(assert (=> b!4814443 m!5800350))

(assert (=> start!497936 d!1540969))

(declare-fun d!1540973 () Bool)

(assert (=> d!1540973 (= (inv!70218 lm!1254) (isStrictlySorted!942 (toList!7245 lm!1254)))))

(declare-fun bs!1160353 () Bool)

(assert (= bs!1160353 d!1540973))

(assert (=> bs!1160353 m!5800280))

(assert (=> start!497936 d!1540973))

(declare-fun b!4814464 () Bool)

(declare-fun e!3007969 () Bool)

(declare-datatypes ((List!54800 0))(
  ( (Nil!54676) (Cons!54676 (h!61108 K!16317) (t!362296 List!54800)) )
))
(declare-fun contains!18457 (List!54800 K!16317) Bool)

(declare-fun keys!20060 (ListMap!6659) List!54800)

(assert (=> b!4814464 (= e!3007969 (contains!18457 (keys!20060 (extractMap!2581 (toList!7245 lm!1254))) key!2670))))

(declare-fun b!4814465 () Bool)

(assert (=> b!4814465 false))

(declare-fun lt!1965380 () Unit!141807)

(declare-fun lt!1965386 () Unit!141807)

(assert (=> b!4814465 (= lt!1965380 lt!1965386)))

(declare-fun containsKey!4214 (List!54796 K!16317) Bool)

(assert (=> b!4814465 (containsKey!4214 (toList!7246 (extractMap!2581 (toList!7245 lm!1254))) key!2670)))

(declare-fun lemmaInGetKeysListThenContainsKey!1129 (List!54796 K!16317) Unit!141807)

(assert (=> b!4814465 (= lt!1965386 (lemmaInGetKeysListThenContainsKey!1129 (toList!7246 (extractMap!2581 (toList!7245 lm!1254))) key!2670))))

(declare-fun e!3007970 () Unit!141807)

(declare-fun Unit!141812 () Unit!141807)

(assert (=> b!4814465 (= e!3007970 Unit!141812)))

(declare-fun b!4814466 () Bool)

(declare-fun e!3007966 () Bool)

(assert (=> b!4814466 (= e!3007966 e!3007969)))

(declare-fun res!2047852 () Bool)

(assert (=> b!4814466 (=> (not res!2047852) (not e!3007969))))

(declare-datatypes ((Option!13381 0))(
  ( (None!13380) (Some!13380 (v!49022 V!16563)) )
))
(declare-fun isDefined!10518 (Option!13381) Bool)

(declare-fun getValueByKey!2544 (List!54796 K!16317) Option!13381)

(assert (=> b!4814466 (= res!2047852 (isDefined!10518 (getValueByKey!2544 (toList!7246 (extractMap!2581 (toList!7245 lm!1254))) key!2670)))))

(declare-fun b!4814467 () Bool)

(declare-fun e!3007967 () List!54800)

(assert (=> b!4814467 (= e!3007967 (keys!20060 (extractMap!2581 (toList!7245 lm!1254))))))

(declare-fun b!4814468 () Bool)

(declare-fun Unit!141813 () Unit!141807)

(assert (=> b!4814468 (= e!3007970 Unit!141813)))

(declare-fun b!4814469 () Bool)

(declare-fun e!3007968 () Unit!141807)

(assert (=> b!4814469 (= e!3007968 e!3007970)))

(declare-fun c!820555 () Bool)

(declare-fun call!335923 () Bool)

(assert (=> b!4814469 (= c!820555 call!335923)))

(declare-fun b!4814470 () Bool)

(declare-fun e!3007965 () Bool)

(assert (=> b!4814470 (= e!3007965 (not (contains!18457 (keys!20060 (extractMap!2581 (toList!7245 lm!1254))) key!2670)))))

(declare-fun bm!335918 () Bool)

(assert (=> bm!335918 (= call!335923 (contains!18457 e!3007967 key!2670))))

(declare-fun c!820554 () Bool)

(declare-fun c!820556 () Bool)

(assert (=> bm!335918 (= c!820554 c!820556)))

(declare-fun d!1540975 () Bool)

(assert (=> d!1540975 e!3007966))

(declare-fun res!2047851 () Bool)

(assert (=> d!1540975 (=> res!2047851 e!3007966)))

(assert (=> d!1540975 (= res!2047851 e!3007965)))

(declare-fun res!2047850 () Bool)

(assert (=> d!1540975 (=> (not res!2047850) (not e!3007965))))

(declare-fun lt!1965382 () Bool)

(assert (=> d!1540975 (= res!2047850 (not lt!1965382))))

(declare-fun lt!1965385 () Bool)

(assert (=> d!1540975 (= lt!1965382 lt!1965385)))

(declare-fun lt!1965387 () Unit!141807)

(assert (=> d!1540975 (= lt!1965387 e!3007968)))

(assert (=> d!1540975 (= c!820556 lt!1965385)))

(assert (=> d!1540975 (= lt!1965385 (containsKey!4214 (toList!7246 (extractMap!2581 (toList!7245 lm!1254))) key!2670))))

(assert (=> d!1540975 (= (contains!18453 (extractMap!2581 (toList!7245 lm!1254)) key!2670) lt!1965382)))

(declare-fun b!4814471 () Bool)

(declare-fun lt!1965381 () Unit!141807)

(assert (=> b!4814471 (= e!3007968 lt!1965381)))

(declare-fun lt!1965384 () Unit!141807)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2330 (List!54796 K!16317) Unit!141807)

(assert (=> b!4814471 (= lt!1965384 (lemmaContainsKeyImpliesGetValueByKeyDefined!2330 (toList!7246 (extractMap!2581 (toList!7245 lm!1254))) key!2670))))

(assert (=> b!4814471 (isDefined!10518 (getValueByKey!2544 (toList!7246 (extractMap!2581 (toList!7245 lm!1254))) key!2670))))

(declare-fun lt!1965383 () Unit!141807)

(assert (=> b!4814471 (= lt!1965383 lt!1965384)))

(declare-fun lemmaInListThenGetKeysListContains!1124 (List!54796 K!16317) Unit!141807)

(assert (=> b!4814471 (= lt!1965381 (lemmaInListThenGetKeysListContains!1124 (toList!7246 (extractMap!2581 (toList!7245 lm!1254))) key!2670))))

(assert (=> b!4814471 call!335923))

(declare-fun b!4814472 () Bool)

(declare-fun getKeysList!1129 (List!54796) List!54800)

(assert (=> b!4814472 (= e!3007967 (getKeysList!1129 (toList!7246 (extractMap!2581 (toList!7245 lm!1254)))))))

(assert (= (and d!1540975 c!820556) b!4814471))

(assert (= (and d!1540975 (not c!820556)) b!4814469))

(assert (= (and b!4814469 c!820555) b!4814465))

(assert (= (and b!4814469 (not c!820555)) b!4814468))

(assert (= (or b!4814471 b!4814469) bm!335918))

(assert (= (and bm!335918 c!820554) b!4814472))

(assert (= (and bm!335918 (not c!820554)) b!4814467))

(assert (= (and d!1540975 res!2047850) b!4814470))

(assert (= (and d!1540975 (not res!2047851)) b!4814466))

(assert (= (and b!4814466 res!2047852) b!4814464))

(assert (=> b!4814467 m!5800276))

(declare-fun m!5800354 () Bool)

(assert (=> b!4814467 m!5800354))

(declare-fun m!5800356 () Bool)

(assert (=> bm!335918 m!5800356))

(declare-fun m!5800358 () Bool)

(assert (=> b!4814472 m!5800358))

(declare-fun m!5800360 () Bool)

(assert (=> b!4814465 m!5800360))

(declare-fun m!5800362 () Bool)

(assert (=> b!4814465 m!5800362))

(assert (=> d!1540975 m!5800360))

(declare-fun m!5800364 () Bool)

(assert (=> b!4814471 m!5800364))

(declare-fun m!5800366 () Bool)

(assert (=> b!4814471 m!5800366))

(assert (=> b!4814471 m!5800366))

(declare-fun m!5800368 () Bool)

(assert (=> b!4814471 m!5800368))

(declare-fun m!5800370 () Bool)

(assert (=> b!4814471 m!5800370))

(assert (=> b!4814466 m!5800366))

(assert (=> b!4814466 m!5800366))

(assert (=> b!4814466 m!5800368))

(assert (=> b!4814470 m!5800276))

(assert (=> b!4814470 m!5800354))

(assert (=> b!4814470 m!5800354))

(declare-fun m!5800372 () Bool)

(assert (=> b!4814470 m!5800372))

(assert (=> b!4814464 m!5800276))

(assert (=> b!4814464 m!5800354))

(assert (=> b!4814464 m!5800354))

(assert (=> b!4814464 m!5800372))

(assert (=> b!4814407 d!1540975))

(declare-fun bs!1160356 () Bool)

(declare-fun d!1540979 () Bool)

(assert (= bs!1160356 (and d!1540979 start!497936)))

(declare-fun lambda!234145 () Int)

(assert (=> bs!1160356 (= lambda!234145 lambda!234133)))

(declare-fun bs!1160357 () Bool)

(assert (= bs!1160357 (and d!1540979 d!1540959)))

(assert (=> bs!1160357 (= lambda!234145 lambda!234139)))

(declare-fun lt!1965390 () ListMap!6659)

(declare-fun invariantList!1783 (List!54796) Bool)

(assert (=> d!1540979 (invariantList!1783 (toList!7246 lt!1965390))))

(declare-fun e!3007973 () ListMap!6659)

(assert (=> d!1540979 (= lt!1965390 e!3007973)))

(declare-fun c!820559 () Bool)

(assert (=> d!1540979 (= c!820559 (is-Cons!54673 (toList!7245 lm!1254)))))

(assert (=> d!1540979 (forall!12435 (toList!7245 lm!1254) lambda!234145)))

(assert (=> d!1540979 (= (extractMap!2581 (toList!7245 lm!1254)) lt!1965390)))

(declare-fun b!4814477 () Bool)

(declare-fun addToMapMapFromBucket!1760 (List!54796 ListMap!6659) ListMap!6659)

(assert (=> b!4814477 (= e!3007973 (addToMapMapFromBucket!1760 (_2!32122 (h!61105 (toList!7245 lm!1254))) (extractMap!2581 (t!362293 (toList!7245 lm!1254)))))))

(declare-fun b!4814478 () Bool)

(assert (=> b!4814478 (= e!3007973 (ListMap!6660 Nil!54672))))

(assert (= (and d!1540979 c!820559) b!4814477))

(assert (= (and d!1540979 (not c!820559)) b!4814478))

(declare-fun m!5800374 () Bool)

(assert (=> d!1540979 m!5800374))

(declare-fun m!5800376 () Bool)

(assert (=> d!1540979 m!5800376))

(declare-fun m!5800378 () Bool)

(assert (=> b!4814477 m!5800378))

(assert (=> b!4814477 m!5800378))

(declare-fun m!5800380 () Bool)

(assert (=> b!4814477 m!5800380))

(assert (=> b!4814407 d!1540979))

(declare-fun bs!1160358 () Bool)

(declare-fun d!1540981 () Bool)

(assert (= bs!1160358 (and d!1540981 start!497936)))

(declare-fun lambda!234148 () Int)

(assert (=> bs!1160358 (not (= lambda!234148 lambda!234133))))

(declare-fun bs!1160359 () Bool)

(assert (= bs!1160359 (and d!1540981 d!1540959)))

(assert (=> bs!1160359 (not (= lambda!234148 lambda!234139))))

(declare-fun bs!1160360 () Bool)

(assert (= bs!1160360 (and d!1540981 d!1540979)))

(assert (=> bs!1160360 (not (= lambda!234148 lambda!234145))))

(assert (=> d!1540981 true))

(assert (=> d!1540981 (= (allKeysSameHashInMap!2447 lm!1254 hashF!938) (forall!12435 (toList!7245 lm!1254) lambda!234148))))

(declare-fun bs!1160361 () Bool)

(assert (= bs!1160361 d!1540981))

(declare-fun m!5800382 () Bool)

(assert (=> bs!1160361 m!5800382))

(assert (=> b!4814406 d!1540981))

(declare-fun d!1540983 () Bool)

(declare-fun res!2047857 () Bool)

(declare-fun e!3007978 () Bool)

(assert (=> d!1540983 (=> res!2047857 e!3007978)))

(assert (=> d!1540983 (= res!2047857 (or (is-Nil!54673 (toList!7245 lm!1254)) (is-Nil!54673 (t!362293 (toList!7245 lm!1254)))))))

(assert (=> d!1540983 (= (isStrictlySorted!942 (toList!7245 lm!1254)) e!3007978)))

(declare-fun b!4814485 () Bool)

(declare-fun e!3007979 () Bool)

(assert (=> b!4814485 (= e!3007978 e!3007979)))

(declare-fun res!2047858 () Bool)

(assert (=> b!4814485 (=> (not res!2047858) (not e!3007979))))

(assert (=> b!4814485 (= res!2047858 (bvslt (_1!32122 (h!61105 (toList!7245 lm!1254))) (_1!32122 (h!61105 (t!362293 (toList!7245 lm!1254))))))))

(declare-fun b!4814486 () Bool)

(assert (=> b!4814486 (= e!3007979 (isStrictlySorted!942 (t!362293 (toList!7245 lm!1254))))))

(assert (= (and d!1540983 (not res!2047857)) b!4814485))

(assert (= (and b!4814485 res!2047858) b!4814486))

(declare-fun m!5800384 () Bool)

(assert (=> b!4814486 m!5800384))

(assert (=> b!4814404 d!1540983))

(declare-fun d!1540985 () Bool)

(declare-fun res!2047863 () Bool)

(declare-fun e!3007984 () Bool)

(assert (=> d!1540985 (=> res!2047863 e!3007984)))

(assert (=> d!1540985 (= res!2047863 (and (is-Cons!54673 (toList!7245 lm!1254)) (= (_1!32122 (h!61105 (toList!7245 lm!1254))) lt!1965335)))))

(assert (=> d!1540985 (= (containsKey!4212 (toList!7245 lm!1254) lt!1965335) e!3007984)))

(declare-fun b!4814491 () Bool)

(declare-fun e!3007985 () Bool)

(assert (=> b!4814491 (= e!3007984 e!3007985)))

(declare-fun res!2047864 () Bool)

(assert (=> b!4814491 (=> (not res!2047864) (not e!3007985))))

(assert (=> b!4814491 (= res!2047864 (and (or (not (is-Cons!54673 (toList!7245 lm!1254))) (bvsle (_1!32122 (h!61105 (toList!7245 lm!1254))) lt!1965335)) (is-Cons!54673 (toList!7245 lm!1254)) (bvslt (_1!32122 (h!61105 (toList!7245 lm!1254))) lt!1965335)))))

(declare-fun b!4814492 () Bool)

(assert (=> b!4814492 (= e!3007985 (containsKey!4212 (t!362293 (toList!7245 lm!1254)) lt!1965335))))

(assert (= (and d!1540985 (not res!2047863)) b!4814491))

(assert (= (and b!4814491 res!2047864) b!4814492))

(declare-fun m!5800386 () Bool)

(assert (=> b!4814492 m!5800386))

(assert (=> b!4814404 d!1540985))

(declare-fun d!1540987 () Bool)

(assert (=> d!1540987 (containsKey!4212 (toList!7245 lm!1254) lt!1965335)))

(declare-fun lt!1965409 () Unit!141807)

(declare-fun choose!34900 (List!54797 (_ BitVec 64)) Unit!141807)

(assert (=> d!1540987 (= lt!1965409 (choose!34900 (toList!7245 lm!1254) lt!1965335))))

(declare-fun e!3007992 () Bool)

(assert (=> d!1540987 e!3007992))

(declare-fun res!2047867 () Bool)

(assert (=> d!1540987 (=> (not res!2047867) (not e!3007992))))

(assert (=> d!1540987 (= res!2047867 (isStrictlySorted!942 (toList!7245 lm!1254)))))

(assert (=> d!1540987 (= (lemmaGetValueByKeyIsDefinedImpliesContainsKey!320 (toList!7245 lm!1254) lt!1965335) lt!1965409)))

(declare-fun b!4814503 () Bool)

(assert (=> b!4814503 (= e!3007992 (isDefined!10517 (getValueByKey!2543 (toList!7245 lm!1254) lt!1965335)))))

(assert (= (and d!1540987 res!2047867) b!4814503))

(assert (=> d!1540987 m!5800282))

(declare-fun m!5800388 () Bool)

(assert (=> d!1540987 m!5800388))

(assert (=> d!1540987 m!5800280))

(assert (=> b!4814503 m!5800340))

(assert (=> b!4814503 m!5800340))

(assert (=> b!4814503 m!5800346))

(assert (=> b!4814404 d!1540987))

(declare-fun b!4814508 () Bool)

(declare-fun e!3007995 () Bool)

(declare-fun tp!1361724 () Bool)

(declare-fun tp!1361725 () Bool)

(assert (=> b!4814508 (= e!3007995 (and tp!1361724 tp!1361725))))

(assert (=> b!4814405 (= tp!1361716 e!3007995)))

(assert (= (and b!4814405 (is-Cons!54673 (toList!7245 lm!1254))) b!4814508))

(declare-fun b_lambda!188347 () Bool)

(assert (= b_lambda!188345 (or start!497936 b_lambda!188347)))

(declare-fun bs!1160362 () Bool)

(declare-fun d!1540989 () Bool)

(assert (= bs!1160362 (and d!1540989 start!497936)))

(declare-fun noDuplicateKeys!2399 (List!54796) Bool)

(assert (=> bs!1160362 (= (dynLambda!22154 lambda!234133 (h!61105 (toList!7245 lm!1254))) (noDuplicateKeys!2399 (_2!32122 (h!61105 (toList!7245 lm!1254)))))))

(declare-fun m!5800390 () Bool)

(assert (=> bs!1160362 m!5800390))

(assert (=> b!4814442 d!1540989))

(push 1)

(assert (not d!1540981))

(assert (not b!4814472))

(assert (not d!1540967))

(assert (not d!1540973))

(assert (not b!4814486))

(assert (not d!1540979))

(assert (not d!1540965))

(assert (not b!4814477))

(assert (not b!4814437))

(assert (not d!1540987))

(assert (not b!4814508))

(assert (not b!4814492))

(assert tp_is_empty!34131)

(assert (not b!4814470))

(assert (not d!1540975))

(assert (not b!4814435))

(assert (not b!4814466))

(assert (not d!1540963))

(assert (not bm!335918))

(assert (not b_lambda!188347))

(assert (not b!4814503))

(assert (not b!4814471))

(assert (not d!1540961))

(assert (not b!4814464))

(assert (not d!1540959))

(assert (not b!4814467))

(assert (not bs!1160362))

(assert (not b!4814443))

(assert (not b!4814465))

(assert (not b!4814428))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

