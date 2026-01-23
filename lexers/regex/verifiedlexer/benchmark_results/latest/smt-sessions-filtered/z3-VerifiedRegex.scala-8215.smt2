; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!424388 () Bool)

(assert start!424388)

(declare-fun b!4370519 () Bool)

(declare-fun e!2720116 () Bool)

(declare-fun tp!1330998 () Bool)

(assert (=> b!4370519 (= e!2720116 tp!1330998)))

(declare-fun res!1798622 () Bool)

(declare-fun e!2720112 () Bool)

(assert (=> start!424388 (=> (not res!1798622) (not e!2720112))))

(declare-datatypes ((V!10726 0))(
  ( (V!10727 (val!16655 Int)) )
))
(declare-datatypes ((K!10480 0))(
  ( (K!10481 (val!16656 Int)) )
))
(declare-datatypes ((tuple2!48630 0))(
  ( (tuple2!48631 (_1!27609 K!10480) (_2!27609 V!10726)) )
))
(declare-datatypes ((List!49244 0))(
  ( (Nil!49120) (Cons!49120 (h!54709 tuple2!48630) (t!356166 List!49244)) )
))
(declare-datatypes ((tuple2!48632 0))(
  ( (tuple2!48633 (_1!27610 (_ BitVec 64)) (_2!27610 List!49244)) )
))
(declare-datatypes ((List!49245 0))(
  ( (Nil!49121) (Cons!49121 (h!54710 tuple2!48632) (t!356167 List!49245)) )
))
(declare-datatypes ((ListLongMap!1763 0))(
  ( (ListLongMap!1764 (toList!3113 List!49245)) )
))
(declare-fun lm!1707 () ListLongMap!1763)

(declare-fun lambda!143809 () Int)

(declare-fun forall!9245 (List!49245 Int) Bool)

(assert (=> start!424388 (= res!1798622 (forall!9245 (toList!3113 lm!1707) lambda!143809))))

(assert (=> start!424388 e!2720112))

(declare-fun e!2720114 () Bool)

(assert (=> start!424388 e!2720114))

(assert (=> start!424388 true))

(declare-fun inv!64666 (ListLongMap!1763) Bool)

(assert (=> start!424388 (and (inv!64666 lm!1707) e!2720116)))

(declare-fun tp_is_empty!25497 () Bool)

(assert (=> start!424388 tp_is_empty!25497))

(declare-fun tp_is_empty!25499 () Bool)

(assert (=> start!424388 tp_is_empty!25499))

(declare-fun b!4370520 () Bool)

(declare-fun tp!1330997 () Bool)

(assert (=> b!4370520 (= e!2720114 (and tp_is_empty!25497 tp_is_empty!25499 tp!1330997))))

(declare-fun b!4370521 () Bool)

(declare-fun res!1798617 () Bool)

(assert (=> b!4370521 (=> (not res!1798617) (not e!2720112))))

(declare-datatypes ((Hashable!4957 0))(
  ( (HashableExt!4956 (__x!30660 Int)) )
))
(declare-fun hashF!1247 () Hashable!4957)

(declare-fun allKeysSameHashInMap!669 (ListLongMap!1763 Hashable!4957) Bool)

(assert (=> b!4370521 (= res!1798617 (allKeysSameHashInMap!669 lm!1707 hashF!1247))))

(declare-fun b!4370522 () Bool)

(declare-fun res!1798616 () Bool)

(assert (=> b!4370522 (=> (not res!1798616) (not e!2720112))))

(declare-fun hash!377 () (_ BitVec 64))

(declare-fun key!3918 () K!10480)

(declare-fun hash!1724 (Hashable!4957 K!10480) (_ BitVec 64))

(assert (=> b!4370522 (= res!1798616 (= (hash!1724 hashF!1247 key!3918) hash!377))))

(declare-fun b!4370523 () Bool)

(declare-fun res!1798621 () Bool)

(assert (=> b!4370523 (=> (not res!1798621) (not e!2720112))))

(declare-fun newBucket!200 () List!49244)

(declare-fun allKeysSameHash!523 (List!49244 (_ BitVec 64) Hashable!4957) Bool)

(assert (=> b!4370523 (= res!1798621 (allKeysSameHash!523 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4370524 () Bool)

(declare-fun e!2720111 () Bool)

(declare-datatypes ((ListMap!2357 0))(
  ( (ListMap!2358 (toList!3114 List!49244)) )
))
(declare-fun lt!1582240 () ListMap!2357)

(declare-fun lt!1582237 () ListMap!2357)

(declare-fun eq!303 (ListMap!2357 ListMap!2357) Bool)

(assert (=> b!4370524 (= e!2720111 (eq!303 lt!1582240 lt!1582237))))

(declare-fun lt!1582236 () ListLongMap!1763)

(declare-fun b!4370525 () Bool)

(declare-fun lt!1582234 () tuple2!48632)

(declare-fun e!2720115 () Bool)

(get-info :version)

(assert (=> b!4370525 (= e!2720115 (or (not ((_ is Cons!49121) (toList!3113 lm!1707))) (not (= (_1!27610 (h!54710 (toList!3113 lm!1707))) hash!377)) (= lt!1582236 (ListLongMap!1764 (Cons!49121 lt!1582234 (t!356167 (toList!3113 lm!1707)))))))))

(declare-fun b!4370526 () Bool)

(declare-fun res!1798613 () Bool)

(assert (=> b!4370526 (=> (not res!1798613) (not e!2720115))))

(assert (=> b!4370526 (= res!1798613 (forall!9245 (toList!3113 lt!1582236) lambda!143809))))

(declare-fun b!4370527 () Bool)

(declare-fun res!1798620 () Bool)

(assert (=> b!4370527 (=> (not res!1798620) (not e!2720112))))

(declare-fun contains!11429 (ListMap!2357 K!10480) Bool)

(declare-fun extractMap!624 (List!49245) ListMap!2357)

(assert (=> b!4370527 (= res!1798620 (contains!11429 (extractMap!624 (toList!3113 lm!1707)) key!3918))))

(declare-fun b!4370528 () Bool)

(declare-fun res!1798615 () Bool)

(declare-fun e!2720110 () Bool)

(assert (=> b!4370528 (=> res!1798615 e!2720110)))

(declare-fun noDuplicateKeys!565 (List!49244) Bool)

(assert (=> b!4370528 (= res!1798615 (not (noDuplicateKeys!565 newBucket!200)))))

(declare-fun b!4370529 () Bool)

(declare-fun res!1798619 () Bool)

(assert (=> b!4370529 (=> (not res!1798619) (not e!2720112))))

(declare-fun contains!11430 (ListLongMap!1763 (_ BitVec 64)) Bool)

(assert (=> b!4370529 (= res!1798619 (contains!11430 lm!1707 hash!377))))

(declare-fun b!4370530 () Bool)

(assert (=> b!4370530 (= e!2720112 (not e!2720110))))

(declare-fun res!1798612 () Bool)

(assert (=> b!4370530 (=> res!1798612 e!2720110)))

(declare-fun lt!1582238 () List!49244)

(assert (=> b!4370530 (= res!1798612 (not (= newBucket!200 lt!1582238)))))

(declare-fun lt!1582230 () tuple2!48630)

(declare-fun lt!1582233 () List!49244)

(assert (=> b!4370530 (= lt!1582238 (Cons!49120 lt!1582230 lt!1582233))))

(declare-fun lt!1582235 () List!49244)

(declare-fun removePairForKey!533 (List!49244 K!10480) List!49244)

(assert (=> b!4370530 (= lt!1582233 (removePairForKey!533 lt!1582235 key!3918))))

(declare-fun newValue!99 () V!10726)

(assert (=> b!4370530 (= lt!1582230 (tuple2!48631 key!3918 newValue!99))))

(declare-fun lt!1582224 () tuple2!48632)

(declare-datatypes ((Unit!73584 0))(
  ( (Unit!73585) )
))
(declare-fun lt!1582225 () Unit!73584)

(declare-fun forallContained!1883 (List!49245 Int tuple2!48632) Unit!73584)

(assert (=> b!4370530 (= lt!1582225 (forallContained!1883 (toList!3113 lm!1707) lambda!143809 lt!1582224))))

(declare-fun contains!11431 (List!49245 tuple2!48632) Bool)

(assert (=> b!4370530 (contains!11431 (toList!3113 lm!1707) lt!1582224)))

(assert (=> b!4370530 (= lt!1582224 (tuple2!48633 hash!377 lt!1582235))))

(declare-fun lt!1582226 () Unit!73584)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!410 (List!49245 (_ BitVec 64) List!49244) Unit!73584)

(assert (=> b!4370530 (= lt!1582226 (lemmaGetValueByKeyImpliesContainsTuple!410 (toList!3113 lm!1707) hash!377 lt!1582235))))

(declare-fun apply!11417 (ListLongMap!1763 (_ BitVec 64)) List!49244)

(assert (=> b!4370530 (= lt!1582235 (apply!11417 lm!1707 hash!377))))

(declare-fun b!4370531 () Bool)

(declare-fun e!2720113 () Bool)

(assert (=> b!4370531 (= e!2720110 e!2720113)))

(declare-fun res!1798623 () Bool)

(assert (=> b!4370531 (=> res!1798623 e!2720113)))

(assert (=> b!4370531 (= res!1798623 (or (not ((_ is Cons!49121) (toList!3113 lm!1707))) (not (= (_1!27610 (h!54710 (toList!3113 lm!1707))) hash!377))))))

(assert (=> b!4370531 e!2720115))

(declare-fun res!1798618 () Bool)

(assert (=> b!4370531 (=> (not res!1798618) (not e!2720115))))

(assert (=> b!4370531 (= res!1798618 (forall!9245 (toList!3113 lt!1582236) lambda!143809))))

(declare-fun +!761 (ListLongMap!1763 tuple2!48632) ListLongMap!1763)

(assert (=> b!4370531 (= lt!1582236 (+!761 lm!1707 lt!1582234))))

(assert (=> b!4370531 (= lt!1582234 (tuple2!48633 hash!377 newBucket!200))))

(declare-fun lt!1582228 () Unit!73584)

(declare-fun addValidProp!211 (ListLongMap!1763 Int (_ BitVec 64) List!49244) Unit!73584)

(assert (=> b!4370531 (= lt!1582228 (addValidProp!211 lm!1707 lambda!143809 hash!377 newBucket!200))))

(assert (=> b!4370531 (forall!9245 (toList!3113 lm!1707) lambda!143809)))

(declare-fun b!4370532 () Bool)

(declare-fun lt!1582227 () List!49244)

(assert (=> b!4370532 (= e!2720113 (= lt!1582227 lt!1582233))))

(declare-fun lt!1582239 () ListLongMap!1763)

(assert (=> b!4370532 (= lt!1582239 (+!761 lm!1707 (tuple2!48633 hash!377 lt!1582227)))))

(declare-fun tail!7058 (List!49244) List!49244)

(assert (=> b!4370532 (= lt!1582227 (tail!7058 newBucket!200))))

(assert (=> b!4370532 e!2720111))

(declare-fun res!1798614 () Bool)

(assert (=> b!4370532 (=> (not res!1798614) (not e!2720111))))

(declare-fun lt!1582229 () ListMap!2357)

(assert (=> b!4370532 (= res!1798614 (eq!303 lt!1582229 lt!1582237))))

(declare-fun lt!1582232 () ListMap!2357)

(declare-fun +!762 (ListMap!2357 tuple2!48630) ListMap!2357)

(declare-fun addToMapMapFromBucket!246 (List!49244 ListMap!2357) ListMap!2357)

(assert (=> b!4370532 (= lt!1582237 (+!762 (addToMapMapFromBucket!246 lt!1582233 lt!1582232) lt!1582230))))

(declare-fun lt!1582223 () Unit!73584)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!112 (ListMap!2357 K!10480 V!10726 List!49244) Unit!73584)

(assert (=> b!4370532 (= lt!1582223 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!112 lt!1582232 key!3918 newValue!99 lt!1582233))))

(assert (=> b!4370532 (= lt!1582240 lt!1582229)))

(assert (=> b!4370532 (= lt!1582229 (addToMapMapFromBucket!246 lt!1582233 (+!762 lt!1582232 lt!1582230)))))

(declare-fun lt!1582231 () ListMap!2357)

(assert (=> b!4370532 (= lt!1582231 lt!1582240)))

(assert (=> b!4370532 (= lt!1582240 (addToMapMapFromBucket!246 lt!1582238 lt!1582232))))

(assert (=> b!4370532 (= lt!1582231 (addToMapMapFromBucket!246 newBucket!200 lt!1582232))))

(assert (=> b!4370532 (= lt!1582231 (extractMap!624 (toList!3113 lt!1582236)))))

(assert (=> b!4370532 (= lt!1582232 (extractMap!624 (t!356167 (toList!3113 lm!1707))))))

(assert (= (and start!424388 res!1798622) b!4370521))

(assert (= (and b!4370521 res!1798617) b!4370522))

(assert (= (and b!4370522 res!1798616) b!4370523))

(assert (= (and b!4370523 res!1798621) b!4370527))

(assert (= (and b!4370527 res!1798620) b!4370529))

(assert (= (and b!4370529 res!1798619) b!4370530))

(assert (= (and b!4370530 (not res!1798612)) b!4370528))

(assert (= (and b!4370528 (not res!1798615)) b!4370531))

(assert (= (and b!4370531 res!1798618) b!4370526))

(assert (= (and b!4370526 res!1798613) b!4370525))

(assert (= (and b!4370531 (not res!1798623)) b!4370532))

(assert (= (and b!4370532 res!1798614) b!4370524))

(assert (= (and start!424388 ((_ is Cons!49120) newBucket!200)) b!4370520))

(assert (= start!424388 b!4370519))

(declare-fun m!4994879 () Bool)

(assert (=> b!4370532 m!4994879))

(declare-fun m!4994881 () Bool)

(assert (=> b!4370532 m!4994881))

(declare-fun m!4994883 () Bool)

(assert (=> b!4370532 m!4994883))

(declare-fun m!4994885 () Bool)

(assert (=> b!4370532 m!4994885))

(declare-fun m!4994887 () Bool)

(assert (=> b!4370532 m!4994887))

(declare-fun m!4994889 () Bool)

(assert (=> b!4370532 m!4994889))

(declare-fun m!4994891 () Bool)

(assert (=> b!4370532 m!4994891))

(assert (=> b!4370532 m!4994887))

(declare-fun m!4994893 () Bool)

(assert (=> b!4370532 m!4994893))

(declare-fun m!4994895 () Bool)

(assert (=> b!4370532 m!4994895))

(assert (=> b!4370532 m!4994879))

(declare-fun m!4994897 () Bool)

(assert (=> b!4370532 m!4994897))

(declare-fun m!4994899 () Bool)

(assert (=> b!4370532 m!4994899))

(declare-fun m!4994901 () Bool)

(assert (=> b!4370532 m!4994901))

(declare-fun m!4994903 () Bool)

(assert (=> b!4370531 m!4994903))

(declare-fun m!4994905 () Bool)

(assert (=> b!4370531 m!4994905))

(declare-fun m!4994907 () Bool)

(assert (=> b!4370531 m!4994907))

(declare-fun m!4994909 () Bool)

(assert (=> b!4370531 m!4994909))

(assert (=> b!4370526 m!4994903))

(declare-fun m!4994911 () Bool)

(assert (=> b!4370529 m!4994911))

(declare-fun m!4994913 () Bool)

(assert (=> b!4370522 m!4994913))

(declare-fun m!4994915 () Bool)

(assert (=> b!4370530 m!4994915))

(declare-fun m!4994917 () Bool)

(assert (=> b!4370530 m!4994917))

(declare-fun m!4994919 () Bool)

(assert (=> b!4370530 m!4994919))

(declare-fun m!4994921 () Bool)

(assert (=> b!4370530 m!4994921))

(declare-fun m!4994923 () Bool)

(assert (=> b!4370530 m!4994923))

(declare-fun m!4994925 () Bool)

(assert (=> b!4370523 m!4994925))

(declare-fun m!4994927 () Bool)

(assert (=> b!4370528 m!4994927))

(declare-fun m!4994929 () Bool)

(assert (=> b!4370521 m!4994929))

(assert (=> start!424388 m!4994909))

(declare-fun m!4994931 () Bool)

(assert (=> start!424388 m!4994931))

(declare-fun m!4994933 () Bool)

(assert (=> b!4370527 m!4994933))

(assert (=> b!4370527 m!4994933))

(declare-fun m!4994935 () Bool)

(assert (=> b!4370527 m!4994935))

(declare-fun m!4994937 () Bool)

(assert (=> b!4370524 m!4994937))

(check-sat (not start!424388) (not b!4370522) (not b!4370520) (not b!4370524) (not b!4370521) (not b!4370531) tp_is_empty!25497 (not b!4370526) (not b!4370519) (not b!4370528) tp_is_empty!25499 (not b!4370532) (not b!4370529) (not b!4370523) (not b!4370530) (not b!4370527))
(check-sat)
(get-model)

(declare-fun b!4370571 () Bool)

(declare-fun e!2720146 () Bool)

(declare-datatypes ((List!49246 0))(
  ( (Nil!49122) (Cons!49122 (h!54713 K!10480) (t!356168 List!49246)) )
))
(declare-fun contains!11433 (List!49246 K!10480) Bool)

(declare-fun keys!16644 (ListMap!2357) List!49246)

(assert (=> b!4370571 (= e!2720146 (not (contains!11433 (keys!16644 (extractMap!624 (toList!3113 lm!1707))) key!3918)))))

(declare-fun d!1294182 () Bool)

(declare-fun e!2720144 () Bool)

(assert (=> d!1294182 e!2720144))

(declare-fun res!1798647 () Bool)

(assert (=> d!1294182 (=> res!1798647 e!2720144)))

(assert (=> d!1294182 (= res!1798647 e!2720146)))

(declare-fun res!1798648 () Bool)

(assert (=> d!1294182 (=> (not res!1798648) (not e!2720146))))

(declare-fun lt!1582278 () Bool)

(assert (=> d!1294182 (= res!1798648 (not lt!1582278))))

(declare-fun lt!1582273 () Bool)

(assert (=> d!1294182 (= lt!1582278 lt!1582273)))

(declare-fun lt!1582279 () Unit!73584)

(declare-fun e!2720145 () Unit!73584)

(assert (=> d!1294182 (= lt!1582279 e!2720145)))

(declare-fun c!743016 () Bool)

(assert (=> d!1294182 (= c!743016 lt!1582273)))

(declare-fun containsKey!823 (List!49244 K!10480) Bool)

(assert (=> d!1294182 (= lt!1582273 (containsKey!823 (toList!3114 (extractMap!624 (toList!3113 lm!1707))) key!3918))))

(assert (=> d!1294182 (= (contains!11429 (extractMap!624 (toList!3113 lm!1707)) key!3918) lt!1582278)))

(declare-fun b!4370572 () Bool)

(declare-fun e!2720148 () Bool)

(assert (=> b!4370572 (= e!2720148 (contains!11433 (keys!16644 (extractMap!624 (toList!3113 lm!1707))) key!3918))))

(declare-fun bm!303765 () Bool)

(declare-fun call!303770 () Bool)

(declare-fun e!2720147 () List!49246)

(assert (=> bm!303765 (= call!303770 (contains!11433 e!2720147 key!3918))))

(declare-fun c!743017 () Bool)

(assert (=> bm!303765 (= c!743017 c!743016)))

(declare-fun b!4370573 () Bool)

(assert (=> b!4370573 (= e!2720147 (keys!16644 (extractMap!624 (toList!3113 lm!1707))))))

(declare-fun b!4370574 () Bool)

(declare-fun getKeysList!162 (List!49244) List!49246)

(assert (=> b!4370574 (= e!2720147 (getKeysList!162 (toList!3114 (extractMap!624 (toList!3113 lm!1707)))))))

(declare-fun b!4370575 () Bool)

(assert (=> b!4370575 false))

(declare-fun lt!1582276 () Unit!73584)

(declare-fun lt!1582275 () Unit!73584)

(assert (=> b!4370575 (= lt!1582276 lt!1582275)))

(assert (=> b!4370575 (containsKey!823 (toList!3114 (extractMap!624 (toList!3113 lm!1707))) key!3918)))

(declare-fun lemmaInGetKeysListThenContainsKey!160 (List!49244 K!10480) Unit!73584)

(assert (=> b!4370575 (= lt!1582275 (lemmaInGetKeysListThenContainsKey!160 (toList!3114 (extractMap!624 (toList!3113 lm!1707))) key!3918))))

(declare-fun e!2720143 () Unit!73584)

(declare-fun Unit!73608 () Unit!73584)

(assert (=> b!4370575 (= e!2720143 Unit!73608)))

(declare-fun b!4370576 () Bool)

(assert (=> b!4370576 (= e!2720145 e!2720143)))

(declare-fun c!743015 () Bool)

(assert (=> b!4370576 (= c!743015 call!303770)))

(declare-fun b!4370577 () Bool)

(declare-fun lt!1582274 () Unit!73584)

(assert (=> b!4370577 (= e!2720145 lt!1582274)))

(declare-fun lt!1582272 () Unit!73584)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!438 (List!49244 K!10480) Unit!73584)

(assert (=> b!4370577 (= lt!1582272 (lemmaContainsKeyImpliesGetValueByKeyDefined!438 (toList!3114 (extractMap!624 (toList!3113 lm!1707))) key!3918))))

(declare-datatypes ((Option!10543 0))(
  ( (None!10542) (Some!10542 (v!43518 V!10726)) )
))
(declare-fun isDefined!7835 (Option!10543) Bool)

(declare-fun getValueByKey!529 (List!49244 K!10480) Option!10543)

(assert (=> b!4370577 (isDefined!7835 (getValueByKey!529 (toList!3114 (extractMap!624 (toList!3113 lm!1707))) key!3918))))

(declare-fun lt!1582277 () Unit!73584)

(assert (=> b!4370577 (= lt!1582277 lt!1582272)))

(declare-fun lemmaInListThenGetKeysListContains!159 (List!49244 K!10480) Unit!73584)

(assert (=> b!4370577 (= lt!1582274 (lemmaInListThenGetKeysListContains!159 (toList!3114 (extractMap!624 (toList!3113 lm!1707))) key!3918))))

(assert (=> b!4370577 call!303770))

(declare-fun b!4370578 () Bool)

(assert (=> b!4370578 (= e!2720144 e!2720148)))

(declare-fun res!1798649 () Bool)

(assert (=> b!4370578 (=> (not res!1798649) (not e!2720148))))

(assert (=> b!4370578 (= res!1798649 (isDefined!7835 (getValueByKey!529 (toList!3114 (extractMap!624 (toList!3113 lm!1707))) key!3918)))))

(declare-fun b!4370579 () Bool)

(declare-fun Unit!73609 () Unit!73584)

(assert (=> b!4370579 (= e!2720143 Unit!73609)))

(assert (= (and d!1294182 c!743016) b!4370577))

(assert (= (and d!1294182 (not c!743016)) b!4370576))

(assert (= (and b!4370576 c!743015) b!4370575))

(assert (= (and b!4370576 (not c!743015)) b!4370579))

(assert (= (or b!4370577 b!4370576) bm!303765))

(assert (= (and bm!303765 c!743017) b!4370574))

(assert (= (and bm!303765 (not c!743017)) b!4370573))

(assert (= (and d!1294182 res!1798648) b!4370571))

(assert (= (and d!1294182 (not res!1798647)) b!4370578))

(assert (= (and b!4370578 res!1798649) b!4370572))

(assert (=> b!4370572 m!4994933))

(declare-fun m!4994973 () Bool)

(assert (=> b!4370572 m!4994973))

(assert (=> b!4370572 m!4994973))

(declare-fun m!4994975 () Bool)

(assert (=> b!4370572 m!4994975))

(declare-fun m!4994977 () Bool)

(assert (=> b!4370577 m!4994977))

(declare-fun m!4994979 () Bool)

(assert (=> b!4370577 m!4994979))

(assert (=> b!4370577 m!4994979))

(declare-fun m!4994981 () Bool)

(assert (=> b!4370577 m!4994981))

(declare-fun m!4994983 () Bool)

(assert (=> b!4370577 m!4994983))

(assert (=> b!4370578 m!4994979))

(assert (=> b!4370578 m!4994979))

(assert (=> b!4370578 m!4994981))

(declare-fun m!4994985 () Bool)

(assert (=> d!1294182 m!4994985))

(assert (=> b!4370573 m!4994933))

(assert (=> b!4370573 m!4994973))

(assert (=> b!4370571 m!4994933))

(assert (=> b!4370571 m!4994973))

(assert (=> b!4370571 m!4994973))

(assert (=> b!4370571 m!4994975))

(declare-fun m!4994987 () Bool)

(assert (=> bm!303765 m!4994987))

(assert (=> b!4370575 m!4994985))

(declare-fun m!4994989 () Bool)

(assert (=> b!4370575 m!4994989))

(declare-fun m!4994991 () Bool)

(assert (=> b!4370574 m!4994991))

(assert (=> b!4370527 d!1294182))

(declare-fun bs!638246 () Bool)

(declare-fun d!1294196 () Bool)

(assert (= bs!638246 (and d!1294196 start!424388)))

(declare-fun lambda!143815 () Int)

(assert (=> bs!638246 (= lambda!143815 lambda!143809)))

(declare-fun lt!1582282 () ListMap!2357)

(declare-fun invariantList!715 (List!49244) Bool)

(assert (=> d!1294196 (invariantList!715 (toList!3114 lt!1582282))))

(declare-fun e!2720151 () ListMap!2357)

(assert (=> d!1294196 (= lt!1582282 e!2720151)))

(declare-fun c!743020 () Bool)

(assert (=> d!1294196 (= c!743020 ((_ is Cons!49121) (toList!3113 lm!1707)))))

(assert (=> d!1294196 (forall!9245 (toList!3113 lm!1707) lambda!143815)))

(assert (=> d!1294196 (= (extractMap!624 (toList!3113 lm!1707)) lt!1582282)))

(declare-fun b!4370584 () Bool)

(assert (=> b!4370584 (= e!2720151 (addToMapMapFromBucket!246 (_2!27610 (h!54710 (toList!3113 lm!1707))) (extractMap!624 (t!356167 (toList!3113 lm!1707)))))))

(declare-fun b!4370585 () Bool)

(assert (=> b!4370585 (= e!2720151 (ListMap!2358 Nil!49120))))

(assert (= (and d!1294196 c!743020) b!4370584))

(assert (= (and d!1294196 (not c!743020)) b!4370585))

(declare-fun m!4994993 () Bool)

(assert (=> d!1294196 m!4994993))

(declare-fun m!4994995 () Bool)

(assert (=> d!1294196 m!4994995))

(assert (=> b!4370584 m!4994899))

(assert (=> b!4370584 m!4994899))

(declare-fun m!4994997 () Bool)

(assert (=> b!4370584 m!4994997))

(assert (=> b!4370527 d!1294196))

(declare-fun d!1294198 () Bool)

(declare-fun res!1798654 () Bool)

(declare-fun e!2720156 () Bool)

(assert (=> d!1294198 (=> res!1798654 e!2720156)))

(assert (=> d!1294198 (= res!1798654 (not ((_ is Cons!49120) newBucket!200)))))

(assert (=> d!1294198 (= (noDuplicateKeys!565 newBucket!200) e!2720156)))

(declare-fun b!4370590 () Bool)

(declare-fun e!2720157 () Bool)

(assert (=> b!4370590 (= e!2720156 e!2720157)))

(declare-fun res!1798655 () Bool)

(assert (=> b!4370590 (=> (not res!1798655) (not e!2720157))))

(declare-fun containsKey!824 (List!49244 K!10480) Bool)

(assert (=> b!4370590 (= res!1798655 (not (containsKey!824 (t!356166 newBucket!200) (_1!27609 (h!54709 newBucket!200)))))))

(declare-fun b!4370591 () Bool)

(assert (=> b!4370591 (= e!2720157 (noDuplicateKeys!565 (t!356166 newBucket!200)))))

(assert (= (and d!1294198 (not res!1798654)) b!4370590))

(assert (= (and b!4370590 res!1798655) b!4370591))

(declare-fun m!4994999 () Bool)

(assert (=> b!4370590 m!4994999))

(declare-fun m!4995001 () Bool)

(assert (=> b!4370591 m!4995001))

(assert (=> b!4370528 d!1294198))

(declare-fun d!1294200 () Bool)

(declare-fun e!2720162 () Bool)

(assert (=> d!1294200 e!2720162))

(declare-fun res!1798658 () Bool)

(assert (=> d!1294200 (=> res!1798658 e!2720162)))

(declare-fun lt!1582296 () Bool)

(assert (=> d!1294200 (= res!1798658 (not lt!1582296))))

(declare-fun lt!1582295 () Bool)

(assert (=> d!1294200 (= lt!1582296 lt!1582295)))

(declare-fun lt!1582293 () Unit!73584)

(declare-fun e!2720163 () Unit!73584)

(assert (=> d!1294200 (= lt!1582293 e!2720163)))

(declare-fun c!743023 () Bool)

(assert (=> d!1294200 (= c!743023 lt!1582295)))

(declare-fun containsKey!825 (List!49245 (_ BitVec 64)) Bool)

(assert (=> d!1294200 (= lt!1582295 (containsKey!825 (toList!3113 lm!1707) hash!377))))

(assert (=> d!1294200 (= (contains!11430 lm!1707 hash!377) lt!1582296)))

(declare-fun b!4370600 () Bool)

(declare-fun lt!1582294 () Unit!73584)

(assert (=> b!4370600 (= e!2720163 lt!1582294)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!439 (List!49245 (_ BitVec 64)) Unit!73584)

(assert (=> b!4370600 (= lt!1582294 (lemmaContainsKeyImpliesGetValueByKeyDefined!439 (toList!3113 lm!1707) hash!377))))

(declare-datatypes ((Option!10544 0))(
  ( (None!10543) (Some!10543 (v!43519 List!49244)) )
))
(declare-fun isDefined!7836 (Option!10544) Bool)

(declare-fun getValueByKey!530 (List!49245 (_ BitVec 64)) Option!10544)

(assert (=> b!4370600 (isDefined!7836 (getValueByKey!530 (toList!3113 lm!1707) hash!377))))

(declare-fun b!4370601 () Bool)

(declare-fun Unit!73621 () Unit!73584)

(assert (=> b!4370601 (= e!2720163 Unit!73621)))

(declare-fun b!4370602 () Bool)

(assert (=> b!4370602 (= e!2720162 (isDefined!7836 (getValueByKey!530 (toList!3113 lm!1707) hash!377)))))

(assert (= (and d!1294200 c!743023) b!4370600))

(assert (= (and d!1294200 (not c!743023)) b!4370601))

(assert (= (and d!1294200 (not res!1798658)) b!4370602))

(declare-fun m!4995003 () Bool)

(assert (=> d!1294200 m!4995003))

(declare-fun m!4995005 () Bool)

(assert (=> b!4370600 m!4995005))

(declare-fun m!4995007 () Bool)

(assert (=> b!4370600 m!4995007))

(assert (=> b!4370600 m!4995007))

(declare-fun m!4995009 () Bool)

(assert (=> b!4370600 m!4995009))

(assert (=> b!4370602 m!4995007))

(assert (=> b!4370602 m!4995007))

(assert (=> b!4370602 m!4995009))

(assert (=> b!4370529 d!1294200))

(declare-fun d!1294202 () Bool)

(declare-fun get!15969 (Option!10544) List!49244)

(assert (=> d!1294202 (= (apply!11417 lm!1707 hash!377) (get!15969 (getValueByKey!530 (toList!3113 lm!1707) hash!377)))))

(declare-fun bs!638247 () Bool)

(assert (= bs!638247 d!1294202))

(assert (=> bs!638247 m!4995007))

(assert (=> bs!638247 m!4995007))

(declare-fun m!4995011 () Bool)

(assert (=> bs!638247 m!4995011))

(assert (=> b!4370530 d!1294202))

(declare-fun d!1294204 () Bool)

(declare-fun lt!1582339 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!7790 (List!49245) (InoxSet tuple2!48632))

(assert (=> d!1294204 (= lt!1582339 (select (content!7790 (toList!3113 lm!1707)) lt!1582224))))

(declare-fun e!2720172 () Bool)

(assert (=> d!1294204 (= lt!1582339 e!2720172)))

(declare-fun res!1798666 () Bool)

(assert (=> d!1294204 (=> (not res!1798666) (not e!2720172))))

(assert (=> d!1294204 (= res!1798666 ((_ is Cons!49121) (toList!3113 lm!1707)))))

(assert (=> d!1294204 (= (contains!11431 (toList!3113 lm!1707) lt!1582224) lt!1582339)))

(declare-fun b!4370609 () Bool)

(declare-fun e!2720173 () Bool)

(assert (=> b!4370609 (= e!2720172 e!2720173)))

(declare-fun res!1798665 () Bool)

(assert (=> b!4370609 (=> res!1798665 e!2720173)))

(assert (=> b!4370609 (= res!1798665 (= (h!54710 (toList!3113 lm!1707)) lt!1582224))))

(declare-fun b!4370610 () Bool)

(assert (=> b!4370610 (= e!2720173 (contains!11431 (t!356167 (toList!3113 lm!1707)) lt!1582224))))

(assert (= (and d!1294204 res!1798666) b!4370609))

(assert (= (and b!4370609 (not res!1798665)) b!4370610))

(declare-fun m!4995013 () Bool)

(assert (=> d!1294204 m!4995013))

(declare-fun m!4995015 () Bool)

(assert (=> d!1294204 m!4995015))

(declare-fun m!4995017 () Bool)

(assert (=> b!4370610 m!4995017))

(assert (=> b!4370530 d!1294204))

(declare-fun d!1294206 () Bool)

(declare-fun dynLambda!20693 (Int tuple2!48632) Bool)

(assert (=> d!1294206 (dynLambda!20693 lambda!143809 lt!1582224)))

(declare-fun lt!1582342 () Unit!73584)

(declare-fun choose!27213 (List!49245 Int tuple2!48632) Unit!73584)

(assert (=> d!1294206 (= lt!1582342 (choose!27213 (toList!3113 lm!1707) lambda!143809 lt!1582224))))

(declare-fun e!2720178 () Bool)

(assert (=> d!1294206 e!2720178))

(declare-fun res!1798673 () Bool)

(assert (=> d!1294206 (=> (not res!1798673) (not e!2720178))))

(assert (=> d!1294206 (= res!1798673 (forall!9245 (toList!3113 lm!1707) lambda!143809))))

(assert (=> d!1294206 (= (forallContained!1883 (toList!3113 lm!1707) lambda!143809 lt!1582224) lt!1582342)))

(declare-fun b!4370619 () Bool)

(assert (=> b!4370619 (= e!2720178 (contains!11431 (toList!3113 lm!1707) lt!1582224))))

(assert (= (and d!1294206 res!1798673) b!4370619))

(declare-fun b_lambda!132963 () Bool)

(assert (=> (not b_lambda!132963) (not d!1294206)))

(declare-fun m!4995019 () Bool)

(assert (=> d!1294206 m!4995019))

(declare-fun m!4995021 () Bool)

(assert (=> d!1294206 m!4995021))

(assert (=> d!1294206 m!4994909))

(assert (=> b!4370619 m!4994921))

(assert (=> b!4370530 d!1294206))

(declare-fun d!1294208 () Bool)

(assert (=> d!1294208 (contains!11431 (toList!3113 lm!1707) (tuple2!48633 hash!377 lt!1582235))))

(declare-fun lt!1582366 () Unit!73584)

(declare-fun choose!27214 (List!49245 (_ BitVec 64) List!49244) Unit!73584)

(assert (=> d!1294208 (= lt!1582366 (choose!27214 (toList!3113 lm!1707) hash!377 lt!1582235))))

(declare-fun e!2720184 () Bool)

(assert (=> d!1294208 e!2720184))

(declare-fun res!1798679 () Bool)

(assert (=> d!1294208 (=> (not res!1798679) (not e!2720184))))

(declare-fun isStrictlySorted!142 (List!49245) Bool)

(assert (=> d!1294208 (= res!1798679 (isStrictlySorted!142 (toList!3113 lm!1707)))))

(assert (=> d!1294208 (= (lemmaGetValueByKeyImpliesContainsTuple!410 (toList!3113 lm!1707) hash!377 lt!1582235) lt!1582366)))

(declare-fun b!4370629 () Bool)

(assert (=> b!4370629 (= e!2720184 (= (getValueByKey!530 (toList!3113 lm!1707) hash!377) (Some!10543 lt!1582235)))))

(assert (= (and d!1294208 res!1798679) b!4370629))

(declare-fun m!4995023 () Bool)

(assert (=> d!1294208 m!4995023))

(declare-fun m!4995025 () Bool)

(assert (=> d!1294208 m!4995025))

(declare-fun m!4995027 () Bool)

(assert (=> d!1294208 m!4995027))

(assert (=> b!4370629 m!4995007))

(assert (=> b!4370530 d!1294208))

(declare-fun b!4370640 () Bool)

(declare-fun e!2720190 () List!49244)

(assert (=> b!4370640 (= e!2720190 (Cons!49120 (h!54709 lt!1582235) (removePairForKey!533 (t!356166 lt!1582235) key!3918)))))

(declare-fun d!1294210 () Bool)

(declare-fun lt!1582369 () List!49244)

(assert (=> d!1294210 (not (containsKey!824 lt!1582369 key!3918))))

(declare-fun e!2720189 () List!49244)

(assert (=> d!1294210 (= lt!1582369 e!2720189)))

(declare-fun c!743031 () Bool)

(assert (=> d!1294210 (= c!743031 (and ((_ is Cons!49120) lt!1582235) (= (_1!27609 (h!54709 lt!1582235)) key!3918)))))

(assert (=> d!1294210 (noDuplicateKeys!565 lt!1582235)))

(assert (=> d!1294210 (= (removePairForKey!533 lt!1582235 key!3918) lt!1582369)))

(declare-fun b!4370638 () Bool)

(assert (=> b!4370638 (= e!2720189 (t!356166 lt!1582235))))

(declare-fun b!4370639 () Bool)

(assert (=> b!4370639 (= e!2720189 e!2720190)))

(declare-fun c!743032 () Bool)

(assert (=> b!4370639 (= c!743032 ((_ is Cons!49120) lt!1582235))))

(declare-fun b!4370641 () Bool)

(assert (=> b!4370641 (= e!2720190 Nil!49120)))

(assert (= (and d!1294210 c!743031) b!4370638))

(assert (= (and d!1294210 (not c!743031)) b!4370639))

(assert (= (and b!4370639 c!743032) b!4370640))

(assert (= (and b!4370639 (not c!743032)) b!4370641))

(declare-fun m!4995067 () Bool)

(assert (=> b!4370640 m!4995067))

(declare-fun m!4995069 () Bool)

(assert (=> d!1294210 m!4995069))

(declare-fun m!4995071 () Bool)

(assert (=> d!1294210 m!4995071))

(assert (=> b!4370530 d!1294210))

(declare-fun d!1294216 () Bool)

(declare-fun res!1798688 () Bool)

(declare-fun e!2720197 () Bool)

(assert (=> d!1294216 (=> res!1798688 e!2720197)))

(assert (=> d!1294216 (= res!1798688 ((_ is Nil!49121) (toList!3113 lt!1582236)))))

(assert (=> d!1294216 (= (forall!9245 (toList!3113 lt!1582236) lambda!143809) e!2720197)))

(declare-fun b!4370650 () Bool)

(declare-fun e!2720198 () Bool)

(assert (=> b!4370650 (= e!2720197 e!2720198)))

(declare-fun res!1798689 () Bool)

(assert (=> b!4370650 (=> (not res!1798689) (not e!2720198))))

(assert (=> b!4370650 (= res!1798689 (dynLambda!20693 lambda!143809 (h!54710 (toList!3113 lt!1582236))))))

(declare-fun b!4370651 () Bool)

(assert (=> b!4370651 (= e!2720198 (forall!9245 (t!356167 (toList!3113 lt!1582236)) lambda!143809))))

(assert (= (and d!1294216 (not res!1798688)) b!4370650))

(assert (= (and b!4370650 res!1798689) b!4370651))

(declare-fun b_lambda!132965 () Bool)

(assert (=> (not b_lambda!132965) (not b!4370650)))

(declare-fun m!4995073 () Bool)

(assert (=> b!4370650 m!4995073))

(declare-fun m!4995079 () Bool)

(assert (=> b!4370651 m!4995079))

(assert (=> b!4370531 d!1294216))

(declare-fun d!1294218 () Bool)

(declare-fun e!2720205 () Bool)

(assert (=> d!1294218 e!2720205))

(declare-fun res!1798700 () Bool)

(assert (=> d!1294218 (=> (not res!1798700) (not e!2720205))))

(declare-fun lt!1582414 () ListLongMap!1763)

(assert (=> d!1294218 (= res!1798700 (contains!11430 lt!1582414 (_1!27610 lt!1582234)))))

(declare-fun lt!1582411 () List!49245)

(assert (=> d!1294218 (= lt!1582414 (ListLongMap!1764 lt!1582411))))

(declare-fun lt!1582413 () Unit!73584)

(declare-fun lt!1582412 () Unit!73584)

(assert (=> d!1294218 (= lt!1582413 lt!1582412)))

(assert (=> d!1294218 (= (getValueByKey!530 lt!1582411 (_1!27610 lt!1582234)) (Some!10543 (_2!27610 lt!1582234)))))

(declare-fun lemmaContainsTupThenGetReturnValue!293 (List!49245 (_ BitVec 64) List!49244) Unit!73584)

(assert (=> d!1294218 (= lt!1582412 (lemmaContainsTupThenGetReturnValue!293 lt!1582411 (_1!27610 lt!1582234) (_2!27610 lt!1582234)))))

(declare-fun insertStrictlySorted!169 (List!49245 (_ BitVec 64) List!49244) List!49245)

(assert (=> d!1294218 (= lt!1582411 (insertStrictlySorted!169 (toList!3113 lm!1707) (_1!27610 lt!1582234) (_2!27610 lt!1582234)))))

(assert (=> d!1294218 (= (+!761 lm!1707 lt!1582234) lt!1582414)))

(declare-fun b!4370663 () Bool)

(declare-fun res!1798699 () Bool)

(assert (=> b!4370663 (=> (not res!1798699) (not e!2720205))))

(assert (=> b!4370663 (= res!1798699 (= (getValueByKey!530 (toList!3113 lt!1582414) (_1!27610 lt!1582234)) (Some!10543 (_2!27610 lt!1582234))))))

(declare-fun b!4370664 () Bool)

(assert (=> b!4370664 (= e!2720205 (contains!11431 (toList!3113 lt!1582414) lt!1582234))))

(assert (= (and d!1294218 res!1798700) b!4370663))

(assert (= (and b!4370663 res!1798699) b!4370664))

(declare-fun m!4995123 () Bool)

(assert (=> d!1294218 m!4995123))

(declare-fun m!4995125 () Bool)

(assert (=> d!1294218 m!4995125))

(declare-fun m!4995127 () Bool)

(assert (=> d!1294218 m!4995127))

(declare-fun m!4995129 () Bool)

(assert (=> d!1294218 m!4995129))

(declare-fun m!4995131 () Bool)

(assert (=> b!4370663 m!4995131))

(declare-fun m!4995133 () Bool)

(assert (=> b!4370664 m!4995133))

(assert (=> b!4370531 d!1294218))

(declare-fun d!1294226 () Bool)

(assert (=> d!1294226 (forall!9245 (toList!3113 (+!761 lm!1707 (tuple2!48633 hash!377 newBucket!200))) lambda!143809)))

(declare-fun lt!1582424 () Unit!73584)

(declare-fun choose!27215 (ListLongMap!1763 Int (_ BitVec 64) List!49244) Unit!73584)

(assert (=> d!1294226 (= lt!1582424 (choose!27215 lm!1707 lambda!143809 hash!377 newBucket!200))))

(declare-fun e!2720209 () Bool)

(assert (=> d!1294226 e!2720209))

(declare-fun res!1798705 () Bool)

(assert (=> d!1294226 (=> (not res!1798705) (not e!2720209))))

(assert (=> d!1294226 (= res!1798705 (forall!9245 (toList!3113 lm!1707) lambda!143809))))

(assert (=> d!1294226 (= (addValidProp!211 lm!1707 lambda!143809 hash!377 newBucket!200) lt!1582424)))

(declare-fun b!4370670 () Bool)

(assert (=> b!4370670 (= e!2720209 (dynLambda!20693 lambda!143809 (tuple2!48633 hash!377 newBucket!200)))))

(assert (= (and d!1294226 res!1798705) b!4370670))

(declare-fun b_lambda!132967 () Bool)

(assert (=> (not b_lambda!132967) (not b!4370670)))

(declare-fun m!4995159 () Bool)

(assert (=> d!1294226 m!4995159))

(declare-fun m!4995161 () Bool)

(assert (=> d!1294226 m!4995161))

(declare-fun m!4995163 () Bool)

(assert (=> d!1294226 m!4995163))

(assert (=> d!1294226 m!4994909))

(declare-fun m!4995165 () Bool)

(assert (=> b!4370670 m!4995165))

(assert (=> b!4370531 d!1294226))

(declare-fun d!1294232 () Bool)

(declare-fun res!1798706 () Bool)

(declare-fun e!2720210 () Bool)

(assert (=> d!1294232 (=> res!1798706 e!2720210)))

(assert (=> d!1294232 (= res!1798706 ((_ is Nil!49121) (toList!3113 lm!1707)))))

(assert (=> d!1294232 (= (forall!9245 (toList!3113 lm!1707) lambda!143809) e!2720210)))

(declare-fun b!4370671 () Bool)

(declare-fun e!2720211 () Bool)

(assert (=> b!4370671 (= e!2720210 e!2720211)))

(declare-fun res!1798707 () Bool)

(assert (=> b!4370671 (=> (not res!1798707) (not e!2720211))))

(assert (=> b!4370671 (= res!1798707 (dynLambda!20693 lambda!143809 (h!54710 (toList!3113 lm!1707))))))

(declare-fun b!4370672 () Bool)

(assert (=> b!4370672 (= e!2720211 (forall!9245 (t!356167 (toList!3113 lm!1707)) lambda!143809))))

(assert (= (and d!1294232 (not res!1798706)) b!4370671))

(assert (= (and b!4370671 res!1798707) b!4370672))

(declare-fun b_lambda!132969 () Bool)

(assert (=> (not b_lambda!132969) (not b!4370671)))

(declare-fun m!4995167 () Bool)

(assert (=> b!4370671 m!4995167))

(declare-fun m!4995169 () Bool)

(assert (=> b!4370672 m!4995169))

(assert (=> b!4370531 d!1294232))

(declare-fun b!4370786 () Bool)

(assert (=> b!4370786 true))

(declare-fun bs!638344 () Bool)

(declare-fun b!4370785 () Bool)

(assert (= bs!638344 (and b!4370785 b!4370786)))

(declare-fun lambda!143897 () Int)

(declare-fun lambda!143896 () Int)

(assert (=> bs!638344 (= lambda!143897 lambda!143896)))

(assert (=> b!4370785 true))

(declare-fun lambda!143898 () Int)

(declare-fun lt!1582585 () ListMap!2357)

(assert (=> bs!638344 (= (= lt!1582585 (+!762 lt!1582232 lt!1582230)) (= lambda!143898 lambda!143896))))

(assert (=> b!4370785 (= (= lt!1582585 (+!762 lt!1582232 lt!1582230)) (= lambda!143898 lambda!143897))))

(assert (=> b!4370785 true))

(declare-fun bs!638345 () Bool)

(declare-fun d!1294234 () Bool)

(assert (= bs!638345 (and d!1294234 b!4370786)))

(declare-fun lambda!143899 () Int)

(declare-fun lt!1582568 () ListMap!2357)

(assert (=> bs!638345 (= (= lt!1582568 (+!762 lt!1582232 lt!1582230)) (= lambda!143899 lambda!143896))))

(declare-fun bs!638346 () Bool)

(assert (= bs!638346 (and d!1294234 b!4370785)))

(assert (=> bs!638346 (= (= lt!1582568 (+!762 lt!1582232 lt!1582230)) (= lambda!143899 lambda!143897))))

(assert (=> bs!638346 (= (= lt!1582568 lt!1582585) (= lambda!143899 lambda!143898))))

(assert (=> d!1294234 true))

(declare-fun bm!303793 () Bool)

(declare-fun call!303798 () Bool)

(declare-fun c!743061 () Bool)

(declare-fun forall!9247 (List!49244 Int) Bool)

(assert (=> bm!303793 (= call!303798 (forall!9247 (ite c!743061 (toList!3114 (+!762 lt!1582232 lt!1582230)) (t!356166 lt!1582233)) (ite c!743061 lambda!143896 lambda!143898)))))

(declare-fun e!2720284 () ListMap!2357)

(assert (=> b!4370785 (= e!2720284 lt!1582585)))

(declare-fun lt!1582580 () ListMap!2357)

(assert (=> b!4370785 (= lt!1582580 (+!762 (+!762 lt!1582232 lt!1582230) (h!54709 lt!1582233)))))

(assert (=> b!4370785 (= lt!1582585 (addToMapMapFromBucket!246 (t!356166 lt!1582233) (+!762 (+!762 lt!1582232 lt!1582230) (h!54709 lt!1582233))))))

(declare-fun lt!1582583 () Unit!73584)

(declare-fun call!303800 () Unit!73584)

(assert (=> b!4370785 (= lt!1582583 call!303800)))

(assert (=> b!4370785 (forall!9247 (toList!3114 (+!762 lt!1582232 lt!1582230)) lambda!143897)))

(declare-fun lt!1582573 () Unit!73584)

(assert (=> b!4370785 (= lt!1582573 lt!1582583)))

(declare-fun call!303799 () Bool)

(assert (=> b!4370785 call!303799))

(declare-fun lt!1582567 () Unit!73584)

(declare-fun Unit!73633 () Unit!73584)

(assert (=> b!4370785 (= lt!1582567 Unit!73633)))

(assert (=> b!4370785 call!303798))

(declare-fun lt!1582566 () Unit!73584)

(declare-fun Unit!73634 () Unit!73584)

(assert (=> b!4370785 (= lt!1582566 Unit!73634)))

(declare-fun lt!1582586 () Unit!73584)

(declare-fun Unit!73635 () Unit!73584)

(assert (=> b!4370785 (= lt!1582586 Unit!73635)))

(declare-fun lt!1582571 () Unit!73584)

(declare-fun forallContained!1885 (List!49244 Int tuple2!48630) Unit!73584)

(assert (=> b!4370785 (= lt!1582571 (forallContained!1885 (toList!3114 lt!1582580) lambda!143898 (h!54709 lt!1582233)))))

(assert (=> b!4370785 (contains!11429 lt!1582580 (_1!27609 (h!54709 lt!1582233)))))

(declare-fun lt!1582574 () Unit!73584)

(declare-fun Unit!73636 () Unit!73584)

(assert (=> b!4370785 (= lt!1582574 Unit!73636)))

(assert (=> b!4370785 (contains!11429 lt!1582585 (_1!27609 (h!54709 lt!1582233)))))

(declare-fun lt!1582572 () Unit!73584)

(declare-fun Unit!73637 () Unit!73584)

(assert (=> b!4370785 (= lt!1582572 Unit!73637)))

(assert (=> b!4370785 (forall!9247 lt!1582233 lambda!143898)))

(declare-fun lt!1582575 () Unit!73584)

(declare-fun Unit!73638 () Unit!73584)

(assert (=> b!4370785 (= lt!1582575 Unit!73638)))

(assert (=> b!4370785 (forall!9247 (toList!3114 lt!1582580) lambda!143898)))

(declare-fun lt!1582581 () Unit!73584)

(declare-fun Unit!73639 () Unit!73584)

(assert (=> b!4370785 (= lt!1582581 Unit!73639)))

(declare-fun lt!1582576 () Unit!73584)

(declare-fun Unit!73640 () Unit!73584)

(assert (=> b!4370785 (= lt!1582576 Unit!73640)))

(declare-fun lt!1582577 () Unit!73584)

(declare-fun addForallContainsKeyThenBeforeAdding!97 (ListMap!2357 ListMap!2357 K!10480 V!10726) Unit!73584)

(assert (=> b!4370785 (= lt!1582577 (addForallContainsKeyThenBeforeAdding!97 (+!762 lt!1582232 lt!1582230) lt!1582585 (_1!27609 (h!54709 lt!1582233)) (_2!27609 (h!54709 lt!1582233))))))

(assert (=> b!4370785 (forall!9247 (toList!3114 (+!762 lt!1582232 lt!1582230)) lambda!143898)))

(declare-fun lt!1582582 () Unit!73584)

(assert (=> b!4370785 (= lt!1582582 lt!1582577)))

(assert (=> b!4370785 (forall!9247 (toList!3114 (+!762 lt!1582232 lt!1582230)) lambda!143898)))

(declare-fun lt!1582578 () Unit!73584)

(declare-fun Unit!73641 () Unit!73584)

(assert (=> b!4370785 (= lt!1582578 Unit!73641)))

(declare-fun res!1798752 () Bool)

(assert (=> b!4370785 (= res!1798752 (forall!9247 lt!1582233 lambda!143898))))

(declare-fun e!2720286 () Bool)

(assert (=> b!4370785 (=> (not res!1798752) (not e!2720286))))

(assert (=> b!4370785 e!2720286))

(declare-fun lt!1582569 () Unit!73584)

(declare-fun Unit!73642 () Unit!73584)

(assert (=> b!4370785 (= lt!1582569 Unit!73642)))

(assert (=> b!4370786 (= e!2720284 (+!762 lt!1582232 lt!1582230))))

(declare-fun lt!1582579 () Unit!73584)

(assert (=> b!4370786 (= lt!1582579 call!303800)))

(assert (=> b!4370786 call!303799))

(declare-fun lt!1582584 () Unit!73584)

(assert (=> b!4370786 (= lt!1582584 lt!1582579)))

(assert (=> b!4370786 call!303798))

(declare-fun lt!1582570 () Unit!73584)

(declare-fun Unit!73643 () Unit!73584)

(assert (=> b!4370786 (= lt!1582570 Unit!73643)))

(declare-fun b!4370787 () Bool)

(declare-fun e!2720285 () Bool)

(assert (=> b!4370787 (= e!2720285 (invariantList!715 (toList!3114 lt!1582568)))))

(declare-fun bm!303794 () Bool)

(assert (=> bm!303794 (= call!303799 (forall!9247 (ite c!743061 (toList!3114 (+!762 lt!1582232 lt!1582230)) (toList!3114 lt!1582580)) (ite c!743061 lambda!143896 lambda!143898)))))

(declare-fun b!4370788 () Bool)

(assert (=> b!4370788 (= e!2720286 (forall!9247 (toList!3114 (+!762 lt!1582232 lt!1582230)) lambda!143898))))

(declare-fun b!4370789 () Bool)

(declare-fun res!1798753 () Bool)

(assert (=> b!4370789 (=> (not res!1798753) (not e!2720285))))

(assert (=> b!4370789 (= res!1798753 (forall!9247 (toList!3114 (+!762 lt!1582232 lt!1582230)) lambda!143899))))

(assert (=> d!1294234 e!2720285))

(declare-fun res!1798754 () Bool)

(assert (=> d!1294234 (=> (not res!1798754) (not e!2720285))))

(assert (=> d!1294234 (= res!1798754 (forall!9247 lt!1582233 lambda!143899))))

(assert (=> d!1294234 (= lt!1582568 e!2720284)))

(assert (=> d!1294234 (= c!743061 ((_ is Nil!49120) lt!1582233))))

(assert (=> d!1294234 (noDuplicateKeys!565 lt!1582233)))

(assert (=> d!1294234 (= (addToMapMapFromBucket!246 lt!1582233 (+!762 lt!1582232 lt!1582230)) lt!1582568)))

(declare-fun bm!303795 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!97 (ListMap!2357) Unit!73584)

(assert (=> bm!303795 (= call!303800 (lemmaContainsAllItsOwnKeys!97 (+!762 lt!1582232 lt!1582230)))))

(assert (= (and d!1294234 c!743061) b!4370786))

(assert (= (and d!1294234 (not c!743061)) b!4370785))

(assert (= (and b!4370785 res!1798752) b!4370788))

(assert (= (or b!4370786 b!4370785) bm!303795))

(assert (= (or b!4370786 b!4370785) bm!303794))

(assert (= (or b!4370786 b!4370785) bm!303793))

(assert (= (and d!1294234 res!1798754) b!4370789))

(assert (= (and b!4370789 res!1798753) b!4370787))

(declare-fun m!4995331 () Bool)

(assert (=> bm!303793 m!4995331))

(declare-fun m!4995333 () Bool)

(assert (=> d!1294234 m!4995333))

(declare-fun m!4995335 () Bool)

(assert (=> d!1294234 m!4995335))

(declare-fun m!4995337 () Bool)

(assert (=> b!4370788 m!4995337))

(assert (=> bm!303795 m!4994879))

(declare-fun m!4995339 () Bool)

(assert (=> bm!303795 m!4995339))

(declare-fun m!4995341 () Bool)

(assert (=> b!4370789 m!4995341))

(declare-fun m!4995343 () Bool)

(assert (=> b!4370787 m!4995343))

(assert (=> b!4370785 m!4994879))

(declare-fun m!4995345 () Bool)

(assert (=> b!4370785 m!4995345))

(declare-fun m!4995347 () Bool)

(assert (=> b!4370785 m!4995347))

(declare-fun m!4995349 () Bool)

(assert (=> b!4370785 m!4995349))

(declare-fun m!4995351 () Bool)

(assert (=> b!4370785 m!4995351))

(declare-fun m!4995353 () Bool)

(assert (=> b!4370785 m!4995353))

(declare-fun m!4995355 () Bool)

(assert (=> b!4370785 m!4995355))

(declare-fun m!4995357 () Bool)

(assert (=> b!4370785 m!4995357))

(declare-fun m!4995359 () Bool)

(assert (=> b!4370785 m!4995359))

(assert (=> b!4370785 m!4995337))

(declare-fun m!4995361 () Bool)

(assert (=> b!4370785 m!4995361))

(assert (=> b!4370785 m!4995337))

(assert (=> b!4370785 m!4995357))

(assert (=> b!4370785 m!4994879))

(assert (=> b!4370785 m!4995347))

(declare-fun m!4995363 () Bool)

(assert (=> bm!303794 m!4995363))

(assert (=> b!4370532 d!1294234))

(declare-fun bs!638347 () Bool)

(declare-fun b!4370793 () Bool)

(assert (= bs!638347 (and b!4370793 b!4370786)))

(declare-fun lambda!143900 () Int)

(assert (=> bs!638347 (= (= lt!1582232 (+!762 lt!1582232 lt!1582230)) (= lambda!143900 lambda!143896))))

(declare-fun bs!638348 () Bool)

(assert (= bs!638348 (and b!4370793 b!4370785)))

(assert (=> bs!638348 (= (= lt!1582232 (+!762 lt!1582232 lt!1582230)) (= lambda!143900 lambda!143897))))

(assert (=> bs!638348 (= (= lt!1582232 lt!1582585) (= lambda!143900 lambda!143898))))

(declare-fun bs!638349 () Bool)

(assert (= bs!638349 (and b!4370793 d!1294234)))

(assert (=> bs!638349 (= (= lt!1582232 lt!1582568) (= lambda!143900 lambda!143899))))

(assert (=> b!4370793 true))

(declare-fun bs!638350 () Bool)

(declare-fun b!4370792 () Bool)

(assert (= bs!638350 (and b!4370792 b!4370785)))

(declare-fun lambda!143901 () Int)

(assert (=> bs!638350 (= (= lt!1582232 (+!762 lt!1582232 lt!1582230)) (= lambda!143901 lambda!143897))))

(declare-fun bs!638351 () Bool)

(assert (= bs!638351 (and b!4370792 b!4370786)))

(assert (=> bs!638351 (= (= lt!1582232 (+!762 lt!1582232 lt!1582230)) (= lambda!143901 lambda!143896))))

(declare-fun bs!638352 () Bool)

(assert (= bs!638352 (and b!4370792 d!1294234)))

(assert (=> bs!638352 (= (= lt!1582232 lt!1582568) (= lambda!143901 lambda!143899))))

(declare-fun bs!638353 () Bool)

(assert (= bs!638353 (and b!4370792 b!4370793)))

(assert (=> bs!638353 (= lambda!143901 lambda!143900)))

(assert (=> bs!638350 (= (= lt!1582232 lt!1582585) (= lambda!143901 lambda!143898))))

(assert (=> b!4370792 true))

(declare-fun lambda!143902 () Int)

(declare-fun lt!1582606 () ListMap!2357)

(assert (=> b!4370792 (= (= lt!1582606 lt!1582232) (= lambda!143902 lambda!143901))))

(assert (=> bs!638350 (= (= lt!1582606 (+!762 lt!1582232 lt!1582230)) (= lambda!143902 lambda!143897))))

(assert (=> bs!638351 (= (= lt!1582606 (+!762 lt!1582232 lt!1582230)) (= lambda!143902 lambda!143896))))

(assert (=> bs!638352 (= (= lt!1582606 lt!1582568) (= lambda!143902 lambda!143899))))

(assert (=> bs!638353 (= (= lt!1582606 lt!1582232) (= lambda!143902 lambda!143900))))

(assert (=> bs!638350 (= (= lt!1582606 lt!1582585) (= lambda!143902 lambda!143898))))

(assert (=> b!4370792 true))

(declare-fun bs!638354 () Bool)

(declare-fun d!1294274 () Bool)

(assert (= bs!638354 (and d!1294274 b!4370792)))

(declare-fun lambda!143903 () Int)

(declare-fun lt!1582589 () ListMap!2357)

(assert (=> bs!638354 (= (= lt!1582589 lt!1582232) (= lambda!143903 lambda!143901))))

(declare-fun bs!638355 () Bool)

(assert (= bs!638355 (and d!1294274 b!4370785)))

(assert (=> bs!638355 (= (= lt!1582589 (+!762 lt!1582232 lt!1582230)) (= lambda!143903 lambda!143897))))

(assert (=> bs!638354 (= (= lt!1582589 lt!1582606) (= lambda!143903 lambda!143902))))

(declare-fun bs!638356 () Bool)

(assert (= bs!638356 (and d!1294274 b!4370786)))

(assert (=> bs!638356 (= (= lt!1582589 (+!762 lt!1582232 lt!1582230)) (= lambda!143903 lambda!143896))))

(declare-fun bs!638357 () Bool)

(assert (= bs!638357 (and d!1294274 d!1294234)))

(assert (=> bs!638357 (= (= lt!1582589 lt!1582568) (= lambda!143903 lambda!143899))))

(declare-fun bs!638358 () Bool)

(assert (= bs!638358 (and d!1294274 b!4370793)))

(assert (=> bs!638358 (= (= lt!1582589 lt!1582232) (= lambda!143903 lambda!143900))))

(assert (=> bs!638355 (= (= lt!1582589 lt!1582585) (= lambda!143903 lambda!143898))))

(assert (=> d!1294274 true))

(declare-fun call!303801 () Bool)

(declare-fun c!743062 () Bool)

(declare-fun bm!303796 () Bool)

(assert (=> bm!303796 (= call!303801 (forall!9247 (ite c!743062 (toList!3114 lt!1582232) (t!356166 lt!1582233)) (ite c!743062 lambda!143900 lambda!143902)))))

(declare-fun e!2720287 () ListMap!2357)

(assert (=> b!4370792 (= e!2720287 lt!1582606)))

(declare-fun lt!1582601 () ListMap!2357)

(assert (=> b!4370792 (= lt!1582601 (+!762 lt!1582232 (h!54709 lt!1582233)))))

(assert (=> b!4370792 (= lt!1582606 (addToMapMapFromBucket!246 (t!356166 lt!1582233) (+!762 lt!1582232 (h!54709 lt!1582233))))))

(declare-fun lt!1582604 () Unit!73584)

(declare-fun call!303803 () Unit!73584)

(assert (=> b!4370792 (= lt!1582604 call!303803)))

(assert (=> b!4370792 (forall!9247 (toList!3114 lt!1582232) lambda!143901)))

(declare-fun lt!1582594 () Unit!73584)

(assert (=> b!4370792 (= lt!1582594 lt!1582604)))

(declare-fun call!303802 () Bool)

(assert (=> b!4370792 call!303802))

(declare-fun lt!1582588 () Unit!73584)

(declare-fun Unit!73646 () Unit!73584)

(assert (=> b!4370792 (= lt!1582588 Unit!73646)))

(assert (=> b!4370792 call!303801))

(declare-fun lt!1582587 () Unit!73584)

(declare-fun Unit!73647 () Unit!73584)

(assert (=> b!4370792 (= lt!1582587 Unit!73647)))

(declare-fun lt!1582607 () Unit!73584)

(declare-fun Unit!73648 () Unit!73584)

(assert (=> b!4370792 (= lt!1582607 Unit!73648)))

(declare-fun lt!1582592 () Unit!73584)

(assert (=> b!4370792 (= lt!1582592 (forallContained!1885 (toList!3114 lt!1582601) lambda!143902 (h!54709 lt!1582233)))))

(assert (=> b!4370792 (contains!11429 lt!1582601 (_1!27609 (h!54709 lt!1582233)))))

(declare-fun lt!1582595 () Unit!73584)

(declare-fun Unit!73649 () Unit!73584)

(assert (=> b!4370792 (= lt!1582595 Unit!73649)))

(assert (=> b!4370792 (contains!11429 lt!1582606 (_1!27609 (h!54709 lt!1582233)))))

(declare-fun lt!1582593 () Unit!73584)

(declare-fun Unit!73650 () Unit!73584)

(assert (=> b!4370792 (= lt!1582593 Unit!73650)))

(assert (=> b!4370792 (forall!9247 lt!1582233 lambda!143902)))

(declare-fun lt!1582596 () Unit!73584)

(declare-fun Unit!73651 () Unit!73584)

(assert (=> b!4370792 (= lt!1582596 Unit!73651)))

(assert (=> b!4370792 (forall!9247 (toList!3114 lt!1582601) lambda!143902)))

(declare-fun lt!1582602 () Unit!73584)

(declare-fun Unit!73652 () Unit!73584)

(assert (=> b!4370792 (= lt!1582602 Unit!73652)))

(declare-fun lt!1582597 () Unit!73584)

(declare-fun Unit!73653 () Unit!73584)

(assert (=> b!4370792 (= lt!1582597 Unit!73653)))

(declare-fun lt!1582598 () Unit!73584)

(assert (=> b!4370792 (= lt!1582598 (addForallContainsKeyThenBeforeAdding!97 lt!1582232 lt!1582606 (_1!27609 (h!54709 lt!1582233)) (_2!27609 (h!54709 lt!1582233))))))

(assert (=> b!4370792 (forall!9247 (toList!3114 lt!1582232) lambda!143902)))

(declare-fun lt!1582603 () Unit!73584)

(assert (=> b!4370792 (= lt!1582603 lt!1582598)))

(assert (=> b!4370792 (forall!9247 (toList!3114 lt!1582232) lambda!143902)))

(declare-fun lt!1582599 () Unit!73584)

(declare-fun Unit!73654 () Unit!73584)

(assert (=> b!4370792 (= lt!1582599 Unit!73654)))

(declare-fun res!1798755 () Bool)

(assert (=> b!4370792 (= res!1798755 (forall!9247 lt!1582233 lambda!143902))))

(declare-fun e!2720289 () Bool)

(assert (=> b!4370792 (=> (not res!1798755) (not e!2720289))))

(assert (=> b!4370792 e!2720289))

(declare-fun lt!1582590 () Unit!73584)

(declare-fun Unit!73655 () Unit!73584)

(assert (=> b!4370792 (= lt!1582590 Unit!73655)))

(assert (=> b!4370793 (= e!2720287 lt!1582232)))

(declare-fun lt!1582600 () Unit!73584)

(assert (=> b!4370793 (= lt!1582600 call!303803)))

(assert (=> b!4370793 call!303802))

(declare-fun lt!1582605 () Unit!73584)

(assert (=> b!4370793 (= lt!1582605 lt!1582600)))

(assert (=> b!4370793 call!303801))

(declare-fun lt!1582591 () Unit!73584)

(declare-fun Unit!73656 () Unit!73584)

(assert (=> b!4370793 (= lt!1582591 Unit!73656)))

(declare-fun b!4370794 () Bool)

(declare-fun e!2720288 () Bool)

(assert (=> b!4370794 (= e!2720288 (invariantList!715 (toList!3114 lt!1582589)))))

(declare-fun bm!303797 () Bool)

(assert (=> bm!303797 (= call!303802 (forall!9247 (ite c!743062 (toList!3114 lt!1582232) (toList!3114 lt!1582601)) (ite c!743062 lambda!143900 lambda!143902)))))

(declare-fun b!4370795 () Bool)

(assert (=> b!4370795 (= e!2720289 (forall!9247 (toList!3114 lt!1582232) lambda!143902))))

(declare-fun b!4370796 () Bool)

(declare-fun res!1798756 () Bool)

(assert (=> b!4370796 (=> (not res!1798756) (not e!2720288))))

(assert (=> b!4370796 (= res!1798756 (forall!9247 (toList!3114 lt!1582232) lambda!143903))))

(assert (=> d!1294274 e!2720288))

(declare-fun res!1798757 () Bool)

(assert (=> d!1294274 (=> (not res!1798757) (not e!2720288))))

(assert (=> d!1294274 (= res!1798757 (forall!9247 lt!1582233 lambda!143903))))

(assert (=> d!1294274 (= lt!1582589 e!2720287)))

(assert (=> d!1294274 (= c!743062 ((_ is Nil!49120) lt!1582233))))

(assert (=> d!1294274 (noDuplicateKeys!565 lt!1582233)))

(assert (=> d!1294274 (= (addToMapMapFromBucket!246 lt!1582233 lt!1582232) lt!1582589)))

(declare-fun bm!303798 () Bool)

(assert (=> bm!303798 (= call!303803 (lemmaContainsAllItsOwnKeys!97 lt!1582232))))

(assert (= (and d!1294274 c!743062) b!4370793))

(assert (= (and d!1294274 (not c!743062)) b!4370792))

(assert (= (and b!4370792 res!1798755) b!4370795))

(assert (= (or b!4370793 b!4370792) bm!303798))

(assert (= (or b!4370793 b!4370792) bm!303797))

(assert (= (or b!4370793 b!4370792) bm!303796))

(assert (= (and d!1294274 res!1798757) b!4370796))

(assert (= (and b!4370796 res!1798756) b!4370794))

(declare-fun m!4995365 () Bool)

(assert (=> bm!303796 m!4995365))

(declare-fun m!4995367 () Bool)

(assert (=> d!1294274 m!4995367))

(assert (=> d!1294274 m!4995335))

(declare-fun m!4995369 () Bool)

(assert (=> b!4370795 m!4995369))

(declare-fun m!4995371 () Bool)

(assert (=> bm!303798 m!4995371))

(declare-fun m!4995373 () Bool)

(assert (=> b!4370796 m!4995373))

(declare-fun m!4995375 () Bool)

(assert (=> b!4370794 m!4995375))

(declare-fun m!4995377 () Bool)

(assert (=> b!4370792 m!4995377))

(declare-fun m!4995379 () Bool)

(assert (=> b!4370792 m!4995379))

(declare-fun m!4995381 () Bool)

(assert (=> b!4370792 m!4995381))

(declare-fun m!4995383 () Bool)

(assert (=> b!4370792 m!4995383))

(declare-fun m!4995385 () Bool)

(assert (=> b!4370792 m!4995385))

(declare-fun m!4995387 () Bool)

(assert (=> b!4370792 m!4995387))

(declare-fun m!4995389 () Bool)

(assert (=> b!4370792 m!4995389))

(declare-fun m!4995391 () Bool)

(assert (=> b!4370792 m!4995391))

(assert (=> b!4370792 m!4995369))

(declare-fun m!4995393 () Bool)

(assert (=> b!4370792 m!4995393))

(assert (=> b!4370792 m!4995369))

(assert (=> b!4370792 m!4995389))

(assert (=> b!4370792 m!4995379))

(declare-fun m!4995395 () Bool)

(assert (=> bm!303797 m!4995395))

(assert (=> b!4370532 d!1294274))

(declare-fun d!1294276 () Bool)

(declare-fun e!2720290 () Bool)

(assert (=> d!1294276 e!2720290))

(declare-fun res!1798759 () Bool)

(assert (=> d!1294276 (=> (not res!1798759) (not e!2720290))))

(declare-fun lt!1582611 () ListLongMap!1763)

(assert (=> d!1294276 (= res!1798759 (contains!11430 lt!1582611 (_1!27610 (tuple2!48633 hash!377 lt!1582227))))))

(declare-fun lt!1582608 () List!49245)

(assert (=> d!1294276 (= lt!1582611 (ListLongMap!1764 lt!1582608))))

(declare-fun lt!1582610 () Unit!73584)

(declare-fun lt!1582609 () Unit!73584)

(assert (=> d!1294276 (= lt!1582610 lt!1582609)))

(assert (=> d!1294276 (= (getValueByKey!530 lt!1582608 (_1!27610 (tuple2!48633 hash!377 lt!1582227))) (Some!10543 (_2!27610 (tuple2!48633 hash!377 lt!1582227))))))

(assert (=> d!1294276 (= lt!1582609 (lemmaContainsTupThenGetReturnValue!293 lt!1582608 (_1!27610 (tuple2!48633 hash!377 lt!1582227)) (_2!27610 (tuple2!48633 hash!377 lt!1582227))))))

(assert (=> d!1294276 (= lt!1582608 (insertStrictlySorted!169 (toList!3113 lm!1707) (_1!27610 (tuple2!48633 hash!377 lt!1582227)) (_2!27610 (tuple2!48633 hash!377 lt!1582227))))))

(assert (=> d!1294276 (= (+!761 lm!1707 (tuple2!48633 hash!377 lt!1582227)) lt!1582611)))

(declare-fun b!4370797 () Bool)

(declare-fun res!1798758 () Bool)

(assert (=> b!4370797 (=> (not res!1798758) (not e!2720290))))

(assert (=> b!4370797 (= res!1798758 (= (getValueByKey!530 (toList!3113 lt!1582611) (_1!27610 (tuple2!48633 hash!377 lt!1582227))) (Some!10543 (_2!27610 (tuple2!48633 hash!377 lt!1582227)))))))

(declare-fun b!4370798 () Bool)

(assert (=> b!4370798 (= e!2720290 (contains!11431 (toList!3113 lt!1582611) (tuple2!48633 hash!377 lt!1582227)))))

(assert (= (and d!1294276 res!1798759) b!4370797))

(assert (= (and b!4370797 res!1798758) b!4370798))

(declare-fun m!4995397 () Bool)

(assert (=> d!1294276 m!4995397))

(declare-fun m!4995399 () Bool)

(assert (=> d!1294276 m!4995399))

(declare-fun m!4995401 () Bool)

(assert (=> d!1294276 m!4995401))

(declare-fun m!4995403 () Bool)

(assert (=> d!1294276 m!4995403))

(declare-fun m!4995405 () Bool)

(assert (=> b!4370797 m!4995405))

(declare-fun m!4995407 () Bool)

(assert (=> b!4370798 m!4995407))

(assert (=> b!4370532 d!1294276))

(declare-fun bs!638359 () Bool)

(declare-fun b!4370800 () Bool)

(assert (= bs!638359 (and b!4370800 b!4370792)))

(declare-fun lambda!143904 () Int)

(assert (=> bs!638359 (= lambda!143904 lambda!143901)))

(declare-fun bs!638360 () Bool)

(assert (= bs!638360 (and b!4370800 d!1294274)))

(assert (=> bs!638360 (= (= lt!1582232 lt!1582589) (= lambda!143904 lambda!143903))))

(declare-fun bs!638361 () Bool)

(assert (= bs!638361 (and b!4370800 b!4370785)))

(assert (=> bs!638361 (= (= lt!1582232 (+!762 lt!1582232 lt!1582230)) (= lambda!143904 lambda!143897))))

(assert (=> bs!638359 (= (= lt!1582232 lt!1582606) (= lambda!143904 lambda!143902))))

(declare-fun bs!638362 () Bool)

(assert (= bs!638362 (and b!4370800 b!4370786)))

(assert (=> bs!638362 (= (= lt!1582232 (+!762 lt!1582232 lt!1582230)) (= lambda!143904 lambda!143896))))

(declare-fun bs!638363 () Bool)

(assert (= bs!638363 (and b!4370800 d!1294234)))

(assert (=> bs!638363 (= (= lt!1582232 lt!1582568) (= lambda!143904 lambda!143899))))

(declare-fun bs!638364 () Bool)

(assert (= bs!638364 (and b!4370800 b!4370793)))

(assert (=> bs!638364 (= lambda!143904 lambda!143900)))

(assert (=> bs!638361 (= (= lt!1582232 lt!1582585) (= lambda!143904 lambda!143898))))

(assert (=> b!4370800 true))

(declare-fun bs!638365 () Bool)

(declare-fun b!4370799 () Bool)

(assert (= bs!638365 (and b!4370799 b!4370792)))

(declare-fun lambda!143905 () Int)

(assert (=> bs!638365 (= lambda!143905 lambda!143901)))

(declare-fun bs!638366 () Bool)

(assert (= bs!638366 (and b!4370799 d!1294274)))

(assert (=> bs!638366 (= (= lt!1582232 lt!1582589) (= lambda!143905 lambda!143903))))

(declare-fun bs!638367 () Bool)

(assert (= bs!638367 (and b!4370799 b!4370785)))

(assert (=> bs!638367 (= (= lt!1582232 (+!762 lt!1582232 lt!1582230)) (= lambda!143905 lambda!143897))))

(assert (=> bs!638365 (= (= lt!1582232 lt!1582606) (= lambda!143905 lambda!143902))))

(declare-fun bs!638368 () Bool)

(assert (= bs!638368 (and b!4370799 b!4370786)))

(assert (=> bs!638368 (= (= lt!1582232 (+!762 lt!1582232 lt!1582230)) (= lambda!143905 lambda!143896))))

(declare-fun bs!638369 () Bool)

(assert (= bs!638369 (and b!4370799 d!1294234)))

(assert (=> bs!638369 (= (= lt!1582232 lt!1582568) (= lambda!143905 lambda!143899))))

(declare-fun bs!638370 () Bool)

(assert (= bs!638370 (and b!4370799 b!4370800)))

(assert (=> bs!638370 (= lambda!143905 lambda!143904)))

(declare-fun bs!638371 () Bool)

(assert (= bs!638371 (and b!4370799 b!4370793)))

(assert (=> bs!638371 (= lambda!143905 lambda!143900)))

(assert (=> bs!638367 (= (= lt!1582232 lt!1582585) (= lambda!143905 lambda!143898))))

(assert (=> b!4370799 true))

(declare-fun lt!1582631 () ListMap!2357)

(declare-fun lambda!143906 () Int)

(assert (=> bs!638365 (= (= lt!1582631 lt!1582232) (= lambda!143906 lambda!143901))))

(assert (=> bs!638366 (= (= lt!1582631 lt!1582589) (= lambda!143906 lambda!143903))))

(assert (=> bs!638367 (= (= lt!1582631 (+!762 lt!1582232 lt!1582230)) (= lambda!143906 lambda!143897))))

(assert (=> bs!638365 (= (= lt!1582631 lt!1582606) (= lambda!143906 lambda!143902))))

(assert (=> bs!638368 (= (= lt!1582631 (+!762 lt!1582232 lt!1582230)) (= lambda!143906 lambda!143896))))

(assert (=> b!4370799 (= (= lt!1582631 lt!1582232) (= lambda!143906 lambda!143905))))

(assert (=> bs!638369 (= (= lt!1582631 lt!1582568) (= lambda!143906 lambda!143899))))

(assert (=> bs!638370 (= (= lt!1582631 lt!1582232) (= lambda!143906 lambda!143904))))

(assert (=> bs!638371 (= (= lt!1582631 lt!1582232) (= lambda!143906 lambda!143900))))

(assert (=> bs!638367 (= (= lt!1582631 lt!1582585) (= lambda!143906 lambda!143898))))

(assert (=> b!4370799 true))

(declare-fun bs!638372 () Bool)

(declare-fun d!1294278 () Bool)

(assert (= bs!638372 (and d!1294278 b!4370792)))

(declare-fun lt!1582614 () ListMap!2357)

(declare-fun lambda!143907 () Int)

(assert (=> bs!638372 (= (= lt!1582614 lt!1582232) (= lambda!143907 lambda!143901))))

(declare-fun bs!638373 () Bool)

(assert (= bs!638373 (and d!1294278 d!1294274)))

(assert (=> bs!638373 (= (= lt!1582614 lt!1582589) (= lambda!143907 lambda!143903))))

(declare-fun bs!638374 () Bool)

(assert (= bs!638374 (and d!1294278 b!4370785)))

(assert (=> bs!638374 (= (= lt!1582614 (+!762 lt!1582232 lt!1582230)) (= lambda!143907 lambda!143897))))

(assert (=> bs!638372 (= (= lt!1582614 lt!1582606) (= lambda!143907 lambda!143902))))

(declare-fun bs!638375 () Bool)

(assert (= bs!638375 (and d!1294278 b!4370786)))

(assert (=> bs!638375 (= (= lt!1582614 (+!762 lt!1582232 lt!1582230)) (= lambda!143907 lambda!143896))))

(declare-fun bs!638376 () Bool)

(assert (= bs!638376 (and d!1294278 b!4370799)))

(assert (=> bs!638376 (= (= lt!1582614 lt!1582232) (= lambda!143907 lambda!143905))))

(declare-fun bs!638377 () Bool)

(assert (= bs!638377 (and d!1294278 b!4370800)))

(assert (=> bs!638377 (= (= lt!1582614 lt!1582232) (= lambda!143907 lambda!143904))))

(declare-fun bs!638378 () Bool)

(assert (= bs!638378 (and d!1294278 b!4370793)))

(assert (=> bs!638378 (= (= lt!1582614 lt!1582232) (= lambda!143907 lambda!143900))))

(assert (=> bs!638374 (= (= lt!1582614 lt!1582585) (= lambda!143907 lambda!143898))))

(assert (=> bs!638376 (= (= lt!1582614 lt!1582631) (= lambda!143907 lambda!143906))))

(declare-fun bs!638379 () Bool)

(assert (= bs!638379 (and d!1294278 d!1294234)))

(assert (=> bs!638379 (= (= lt!1582614 lt!1582568) (= lambda!143907 lambda!143899))))

(assert (=> d!1294278 true))

(declare-fun c!743063 () Bool)

(declare-fun bm!303799 () Bool)

(declare-fun call!303804 () Bool)

(assert (=> bm!303799 (= call!303804 (forall!9247 (ite c!743063 (toList!3114 lt!1582232) (t!356166 lt!1582238)) (ite c!743063 lambda!143904 lambda!143906)))))

(declare-fun e!2720291 () ListMap!2357)

(assert (=> b!4370799 (= e!2720291 lt!1582631)))

(declare-fun lt!1582626 () ListMap!2357)

(assert (=> b!4370799 (= lt!1582626 (+!762 lt!1582232 (h!54709 lt!1582238)))))

(assert (=> b!4370799 (= lt!1582631 (addToMapMapFromBucket!246 (t!356166 lt!1582238) (+!762 lt!1582232 (h!54709 lt!1582238))))))

(declare-fun lt!1582629 () Unit!73584)

(declare-fun call!303806 () Unit!73584)

(assert (=> b!4370799 (= lt!1582629 call!303806)))

(assert (=> b!4370799 (forall!9247 (toList!3114 lt!1582232) lambda!143905)))

(declare-fun lt!1582619 () Unit!73584)

(assert (=> b!4370799 (= lt!1582619 lt!1582629)))

(declare-fun call!303805 () Bool)

(assert (=> b!4370799 call!303805))

(declare-fun lt!1582613 () Unit!73584)

(declare-fun Unit!73658 () Unit!73584)

(assert (=> b!4370799 (= lt!1582613 Unit!73658)))

(assert (=> b!4370799 call!303804))

(declare-fun lt!1582612 () Unit!73584)

(declare-fun Unit!73659 () Unit!73584)

(assert (=> b!4370799 (= lt!1582612 Unit!73659)))

(declare-fun lt!1582632 () Unit!73584)

(declare-fun Unit!73660 () Unit!73584)

(assert (=> b!4370799 (= lt!1582632 Unit!73660)))

(declare-fun lt!1582617 () Unit!73584)

(assert (=> b!4370799 (= lt!1582617 (forallContained!1885 (toList!3114 lt!1582626) lambda!143906 (h!54709 lt!1582238)))))

(assert (=> b!4370799 (contains!11429 lt!1582626 (_1!27609 (h!54709 lt!1582238)))))

(declare-fun lt!1582620 () Unit!73584)

(declare-fun Unit!73661 () Unit!73584)

(assert (=> b!4370799 (= lt!1582620 Unit!73661)))

(assert (=> b!4370799 (contains!11429 lt!1582631 (_1!27609 (h!54709 lt!1582238)))))

(declare-fun lt!1582618 () Unit!73584)

(declare-fun Unit!73662 () Unit!73584)

(assert (=> b!4370799 (= lt!1582618 Unit!73662)))

(assert (=> b!4370799 (forall!9247 lt!1582238 lambda!143906)))

(declare-fun lt!1582621 () Unit!73584)

(declare-fun Unit!73663 () Unit!73584)

(assert (=> b!4370799 (= lt!1582621 Unit!73663)))

(assert (=> b!4370799 (forall!9247 (toList!3114 lt!1582626) lambda!143906)))

(declare-fun lt!1582627 () Unit!73584)

(declare-fun Unit!73664 () Unit!73584)

(assert (=> b!4370799 (= lt!1582627 Unit!73664)))

(declare-fun lt!1582622 () Unit!73584)

(declare-fun Unit!73665 () Unit!73584)

(assert (=> b!4370799 (= lt!1582622 Unit!73665)))

(declare-fun lt!1582623 () Unit!73584)

(assert (=> b!4370799 (= lt!1582623 (addForallContainsKeyThenBeforeAdding!97 lt!1582232 lt!1582631 (_1!27609 (h!54709 lt!1582238)) (_2!27609 (h!54709 lt!1582238))))))

(assert (=> b!4370799 (forall!9247 (toList!3114 lt!1582232) lambda!143906)))

(declare-fun lt!1582628 () Unit!73584)

(assert (=> b!4370799 (= lt!1582628 lt!1582623)))

(assert (=> b!4370799 (forall!9247 (toList!3114 lt!1582232) lambda!143906)))

(declare-fun lt!1582624 () Unit!73584)

(declare-fun Unit!73666 () Unit!73584)

(assert (=> b!4370799 (= lt!1582624 Unit!73666)))

(declare-fun res!1798760 () Bool)

(assert (=> b!4370799 (= res!1798760 (forall!9247 lt!1582238 lambda!143906))))

(declare-fun e!2720293 () Bool)

(assert (=> b!4370799 (=> (not res!1798760) (not e!2720293))))

(assert (=> b!4370799 e!2720293))

(declare-fun lt!1582615 () Unit!73584)

(declare-fun Unit!73667 () Unit!73584)

(assert (=> b!4370799 (= lt!1582615 Unit!73667)))

(assert (=> b!4370800 (= e!2720291 lt!1582232)))

(declare-fun lt!1582625 () Unit!73584)

(assert (=> b!4370800 (= lt!1582625 call!303806)))

(assert (=> b!4370800 call!303805))

(declare-fun lt!1582630 () Unit!73584)

(assert (=> b!4370800 (= lt!1582630 lt!1582625)))

(assert (=> b!4370800 call!303804))

(declare-fun lt!1582616 () Unit!73584)

(declare-fun Unit!73668 () Unit!73584)

(assert (=> b!4370800 (= lt!1582616 Unit!73668)))

(declare-fun b!4370801 () Bool)

(declare-fun e!2720292 () Bool)

(assert (=> b!4370801 (= e!2720292 (invariantList!715 (toList!3114 lt!1582614)))))

(declare-fun bm!303800 () Bool)

(assert (=> bm!303800 (= call!303805 (forall!9247 (ite c!743063 (toList!3114 lt!1582232) (toList!3114 lt!1582626)) (ite c!743063 lambda!143904 lambda!143906)))))

(declare-fun b!4370802 () Bool)

(assert (=> b!4370802 (= e!2720293 (forall!9247 (toList!3114 lt!1582232) lambda!143906))))

(declare-fun b!4370803 () Bool)

(declare-fun res!1798761 () Bool)

(assert (=> b!4370803 (=> (not res!1798761) (not e!2720292))))

(assert (=> b!4370803 (= res!1798761 (forall!9247 (toList!3114 lt!1582232) lambda!143907))))

(assert (=> d!1294278 e!2720292))

(declare-fun res!1798762 () Bool)

(assert (=> d!1294278 (=> (not res!1798762) (not e!2720292))))

(assert (=> d!1294278 (= res!1798762 (forall!9247 lt!1582238 lambda!143907))))

(assert (=> d!1294278 (= lt!1582614 e!2720291)))

(assert (=> d!1294278 (= c!743063 ((_ is Nil!49120) lt!1582238))))

(assert (=> d!1294278 (noDuplicateKeys!565 lt!1582238)))

(assert (=> d!1294278 (= (addToMapMapFromBucket!246 lt!1582238 lt!1582232) lt!1582614)))

(declare-fun bm!303801 () Bool)

(assert (=> bm!303801 (= call!303806 (lemmaContainsAllItsOwnKeys!97 lt!1582232))))

(assert (= (and d!1294278 c!743063) b!4370800))

(assert (= (and d!1294278 (not c!743063)) b!4370799))

(assert (= (and b!4370799 res!1798760) b!4370802))

(assert (= (or b!4370800 b!4370799) bm!303801))

(assert (= (or b!4370800 b!4370799) bm!303800))

(assert (= (or b!4370800 b!4370799) bm!303799))

(assert (= (and d!1294278 res!1798762) b!4370803))

(assert (= (and b!4370803 res!1798761) b!4370801))

(declare-fun m!4995409 () Bool)

(assert (=> bm!303799 m!4995409))

(declare-fun m!4995411 () Bool)

(assert (=> d!1294278 m!4995411))

(declare-fun m!4995413 () Bool)

(assert (=> d!1294278 m!4995413))

(declare-fun m!4995415 () Bool)

(assert (=> b!4370802 m!4995415))

(assert (=> bm!303801 m!4995371))

(declare-fun m!4995417 () Bool)

(assert (=> b!4370803 m!4995417))

(declare-fun m!4995419 () Bool)

(assert (=> b!4370801 m!4995419))

(declare-fun m!4995421 () Bool)

(assert (=> b!4370799 m!4995421))

(declare-fun m!4995423 () Bool)

(assert (=> b!4370799 m!4995423))

(declare-fun m!4995425 () Bool)

(assert (=> b!4370799 m!4995425))

(declare-fun m!4995427 () Bool)

(assert (=> b!4370799 m!4995427))

(declare-fun m!4995429 () Bool)

(assert (=> b!4370799 m!4995429))

(declare-fun m!4995431 () Bool)

(assert (=> b!4370799 m!4995431))

(declare-fun m!4995433 () Bool)

(assert (=> b!4370799 m!4995433))

(declare-fun m!4995435 () Bool)

(assert (=> b!4370799 m!4995435))

(assert (=> b!4370799 m!4995415))

(declare-fun m!4995437 () Bool)

(assert (=> b!4370799 m!4995437))

(assert (=> b!4370799 m!4995415))

(assert (=> b!4370799 m!4995433))

(assert (=> b!4370799 m!4995423))

(declare-fun m!4995439 () Bool)

(assert (=> bm!303800 m!4995439))

(assert (=> b!4370532 d!1294278))

(declare-fun d!1294280 () Bool)

(assert (=> d!1294280 (eq!303 (addToMapMapFromBucket!246 lt!1582233 (+!762 lt!1582232 (tuple2!48631 key!3918 newValue!99))) (+!762 (addToMapMapFromBucket!246 lt!1582233 lt!1582232) (tuple2!48631 key!3918 newValue!99)))))

(declare-fun lt!1582635 () Unit!73584)

(declare-fun choose!27218 (ListMap!2357 K!10480 V!10726 List!49244) Unit!73584)

(assert (=> d!1294280 (= lt!1582635 (choose!27218 lt!1582232 key!3918 newValue!99 lt!1582233))))

(assert (=> d!1294280 (not (containsKey!824 lt!1582233 key!3918))))

(assert (=> d!1294280 (= (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!112 lt!1582232 key!3918 newValue!99 lt!1582233) lt!1582635)))

(declare-fun bs!638380 () Bool)

(assert (= bs!638380 d!1294280))

(assert (=> bs!638380 m!4994887))

(declare-fun m!4995441 () Bool)

(assert (=> bs!638380 m!4995441))

(declare-fun m!4995443 () Bool)

(assert (=> bs!638380 m!4995443))

(declare-fun m!4995445 () Bool)

(assert (=> bs!638380 m!4995445))

(declare-fun m!4995447 () Bool)

(assert (=> bs!638380 m!4995447))

(declare-fun m!4995449 () Bool)

(assert (=> bs!638380 m!4995449))

(assert (=> bs!638380 m!4994887))

(assert (=> bs!638380 m!4995443))

(declare-fun m!4995451 () Bool)

(assert (=> bs!638380 m!4995451))

(assert (=> bs!638380 m!4995447))

(assert (=> bs!638380 m!4995441))

(assert (=> b!4370532 d!1294280))

(declare-fun bs!638381 () Bool)

(declare-fun d!1294282 () Bool)

(assert (= bs!638381 (and d!1294282 start!424388)))

(declare-fun lambda!143908 () Int)

(assert (=> bs!638381 (= lambda!143908 lambda!143809)))

(declare-fun bs!638382 () Bool)

(assert (= bs!638382 (and d!1294282 d!1294196)))

(assert (=> bs!638382 (= lambda!143908 lambda!143815)))

(declare-fun lt!1582636 () ListMap!2357)

(assert (=> d!1294282 (invariantList!715 (toList!3114 lt!1582636))))

(declare-fun e!2720294 () ListMap!2357)

(assert (=> d!1294282 (= lt!1582636 e!2720294)))

(declare-fun c!743064 () Bool)

(assert (=> d!1294282 (= c!743064 ((_ is Cons!49121) (t!356167 (toList!3113 lm!1707))))))

(assert (=> d!1294282 (forall!9245 (t!356167 (toList!3113 lm!1707)) lambda!143908)))

(assert (=> d!1294282 (= (extractMap!624 (t!356167 (toList!3113 lm!1707))) lt!1582636)))

(declare-fun b!4370804 () Bool)

(assert (=> b!4370804 (= e!2720294 (addToMapMapFromBucket!246 (_2!27610 (h!54710 (t!356167 (toList!3113 lm!1707)))) (extractMap!624 (t!356167 (t!356167 (toList!3113 lm!1707))))))))

(declare-fun b!4370805 () Bool)

(assert (=> b!4370805 (= e!2720294 (ListMap!2358 Nil!49120))))

(assert (= (and d!1294282 c!743064) b!4370804))

(assert (= (and d!1294282 (not c!743064)) b!4370805))

(declare-fun m!4995453 () Bool)

(assert (=> d!1294282 m!4995453))

(declare-fun m!4995455 () Bool)

(assert (=> d!1294282 m!4995455))

(declare-fun m!4995457 () Bool)

(assert (=> b!4370804 m!4995457))

(assert (=> b!4370804 m!4995457))

(declare-fun m!4995459 () Bool)

(assert (=> b!4370804 m!4995459))

(assert (=> b!4370532 d!1294282))

(declare-fun d!1294284 () Bool)

(declare-fun e!2720297 () Bool)

(assert (=> d!1294284 e!2720297))

(declare-fun res!1798768 () Bool)

(assert (=> d!1294284 (=> (not res!1798768) (not e!2720297))))

(declare-fun lt!1582646 () ListMap!2357)

(assert (=> d!1294284 (= res!1798768 (contains!11429 lt!1582646 (_1!27609 lt!1582230)))))

(declare-fun lt!1582645 () List!49244)

(assert (=> d!1294284 (= lt!1582646 (ListMap!2358 lt!1582645))))

(declare-fun lt!1582648 () Unit!73584)

(declare-fun lt!1582647 () Unit!73584)

(assert (=> d!1294284 (= lt!1582648 lt!1582647)))

(assert (=> d!1294284 (= (getValueByKey!529 lt!1582645 (_1!27609 lt!1582230)) (Some!10542 (_2!27609 lt!1582230)))))

(declare-fun lemmaContainsTupThenGetReturnValue!294 (List!49244 K!10480 V!10726) Unit!73584)

(assert (=> d!1294284 (= lt!1582647 (lemmaContainsTupThenGetReturnValue!294 lt!1582645 (_1!27609 lt!1582230) (_2!27609 lt!1582230)))))

(declare-fun insertNoDuplicatedKeys!133 (List!49244 K!10480 V!10726) List!49244)

(assert (=> d!1294284 (= lt!1582645 (insertNoDuplicatedKeys!133 (toList!3114 (addToMapMapFromBucket!246 lt!1582233 lt!1582232)) (_1!27609 lt!1582230) (_2!27609 lt!1582230)))))

(assert (=> d!1294284 (= (+!762 (addToMapMapFromBucket!246 lt!1582233 lt!1582232) lt!1582230) lt!1582646)))

(declare-fun b!4370810 () Bool)

(declare-fun res!1798767 () Bool)

(assert (=> b!4370810 (=> (not res!1798767) (not e!2720297))))

(assert (=> b!4370810 (= res!1798767 (= (getValueByKey!529 (toList!3114 lt!1582646) (_1!27609 lt!1582230)) (Some!10542 (_2!27609 lt!1582230))))))

(declare-fun b!4370811 () Bool)

(declare-fun contains!11435 (List!49244 tuple2!48630) Bool)

(assert (=> b!4370811 (= e!2720297 (contains!11435 (toList!3114 lt!1582646) lt!1582230))))

(assert (= (and d!1294284 res!1798768) b!4370810))

(assert (= (and b!4370810 res!1798767) b!4370811))

(declare-fun m!4995461 () Bool)

(assert (=> d!1294284 m!4995461))

(declare-fun m!4995463 () Bool)

(assert (=> d!1294284 m!4995463))

(declare-fun m!4995465 () Bool)

(assert (=> d!1294284 m!4995465))

(declare-fun m!4995467 () Bool)

(assert (=> d!1294284 m!4995467))

(declare-fun m!4995469 () Bool)

(assert (=> b!4370810 m!4995469))

(declare-fun m!4995471 () Bool)

(assert (=> b!4370811 m!4995471))

(assert (=> b!4370532 d!1294284))

(declare-fun bs!638383 () Bool)

(declare-fun d!1294286 () Bool)

(assert (= bs!638383 (and d!1294286 start!424388)))

(declare-fun lambda!143909 () Int)

(assert (=> bs!638383 (= lambda!143909 lambda!143809)))

(declare-fun bs!638384 () Bool)

(assert (= bs!638384 (and d!1294286 d!1294196)))

(assert (=> bs!638384 (= lambda!143909 lambda!143815)))

(declare-fun bs!638385 () Bool)

(assert (= bs!638385 (and d!1294286 d!1294282)))

(assert (=> bs!638385 (= lambda!143909 lambda!143908)))

(declare-fun lt!1582649 () ListMap!2357)

(assert (=> d!1294286 (invariantList!715 (toList!3114 lt!1582649))))

(declare-fun e!2720298 () ListMap!2357)

(assert (=> d!1294286 (= lt!1582649 e!2720298)))

(declare-fun c!743065 () Bool)

(assert (=> d!1294286 (= c!743065 ((_ is Cons!49121) (toList!3113 lt!1582236)))))

(assert (=> d!1294286 (forall!9245 (toList!3113 lt!1582236) lambda!143909)))

(assert (=> d!1294286 (= (extractMap!624 (toList!3113 lt!1582236)) lt!1582649)))

(declare-fun b!4370812 () Bool)

(assert (=> b!4370812 (= e!2720298 (addToMapMapFromBucket!246 (_2!27610 (h!54710 (toList!3113 lt!1582236))) (extractMap!624 (t!356167 (toList!3113 lt!1582236)))))))

(declare-fun b!4370813 () Bool)

(assert (=> b!4370813 (= e!2720298 (ListMap!2358 Nil!49120))))

(assert (= (and d!1294286 c!743065) b!4370812))

(assert (= (and d!1294286 (not c!743065)) b!4370813))

(declare-fun m!4995473 () Bool)

(assert (=> d!1294286 m!4995473))

(declare-fun m!4995475 () Bool)

(assert (=> d!1294286 m!4995475))

(declare-fun m!4995477 () Bool)

(assert (=> b!4370812 m!4995477))

(assert (=> b!4370812 m!4995477))

(declare-fun m!4995479 () Bool)

(assert (=> b!4370812 m!4995479))

(assert (=> b!4370532 d!1294286))

(declare-fun d!1294288 () Bool)

(assert (=> d!1294288 (= (tail!7058 newBucket!200) (t!356166 newBucket!200))))

(assert (=> b!4370532 d!1294288))

(declare-fun d!1294290 () Bool)

(declare-fun content!7792 (List!49244) (InoxSet tuple2!48630))

(assert (=> d!1294290 (= (eq!303 lt!1582229 lt!1582237) (= (content!7792 (toList!3114 lt!1582229)) (content!7792 (toList!3114 lt!1582237))))))

(declare-fun bs!638386 () Bool)

(assert (= bs!638386 d!1294290))

(declare-fun m!4995481 () Bool)

(assert (=> bs!638386 m!4995481))

(declare-fun m!4995483 () Bool)

(assert (=> bs!638386 m!4995483))

(assert (=> b!4370532 d!1294290))

(declare-fun d!1294292 () Bool)

(declare-fun e!2720299 () Bool)

(assert (=> d!1294292 e!2720299))

(declare-fun res!1798770 () Bool)

(assert (=> d!1294292 (=> (not res!1798770) (not e!2720299))))

(declare-fun lt!1582651 () ListMap!2357)

(assert (=> d!1294292 (= res!1798770 (contains!11429 lt!1582651 (_1!27609 lt!1582230)))))

(declare-fun lt!1582650 () List!49244)

(assert (=> d!1294292 (= lt!1582651 (ListMap!2358 lt!1582650))))

(declare-fun lt!1582653 () Unit!73584)

(declare-fun lt!1582652 () Unit!73584)

(assert (=> d!1294292 (= lt!1582653 lt!1582652)))

(assert (=> d!1294292 (= (getValueByKey!529 lt!1582650 (_1!27609 lt!1582230)) (Some!10542 (_2!27609 lt!1582230)))))

(assert (=> d!1294292 (= lt!1582652 (lemmaContainsTupThenGetReturnValue!294 lt!1582650 (_1!27609 lt!1582230) (_2!27609 lt!1582230)))))

(assert (=> d!1294292 (= lt!1582650 (insertNoDuplicatedKeys!133 (toList!3114 lt!1582232) (_1!27609 lt!1582230) (_2!27609 lt!1582230)))))

(assert (=> d!1294292 (= (+!762 lt!1582232 lt!1582230) lt!1582651)))

(declare-fun b!4370814 () Bool)

(declare-fun res!1798769 () Bool)

(assert (=> b!4370814 (=> (not res!1798769) (not e!2720299))))

(assert (=> b!4370814 (= res!1798769 (= (getValueByKey!529 (toList!3114 lt!1582651) (_1!27609 lt!1582230)) (Some!10542 (_2!27609 lt!1582230))))))

(declare-fun b!4370815 () Bool)

(assert (=> b!4370815 (= e!2720299 (contains!11435 (toList!3114 lt!1582651) lt!1582230))))

(assert (= (and d!1294292 res!1798770) b!4370814))

(assert (= (and b!4370814 res!1798769) b!4370815))

(declare-fun m!4995485 () Bool)

(assert (=> d!1294292 m!4995485))

(declare-fun m!4995487 () Bool)

(assert (=> d!1294292 m!4995487))

(declare-fun m!4995489 () Bool)

(assert (=> d!1294292 m!4995489))

(declare-fun m!4995491 () Bool)

(assert (=> d!1294292 m!4995491))

(declare-fun m!4995493 () Bool)

(assert (=> b!4370814 m!4995493))

(declare-fun m!4995495 () Bool)

(assert (=> b!4370815 m!4995495))

(assert (=> b!4370532 d!1294292))

(declare-fun bs!638387 () Bool)

(declare-fun b!4370817 () Bool)

(assert (= bs!638387 (and b!4370817 b!4370792)))

(declare-fun lambda!143910 () Int)

(assert (=> bs!638387 (= lambda!143910 lambda!143901)))

(declare-fun bs!638388 () Bool)

(assert (= bs!638388 (and b!4370817 d!1294274)))

(assert (=> bs!638388 (= (= lt!1582232 lt!1582589) (= lambda!143910 lambda!143903))))

(declare-fun bs!638389 () Bool)

(assert (= bs!638389 (and b!4370817 b!4370785)))

(assert (=> bs!638389 (= (= lt!1582232 (+!762 lt!1582232 lt!1582230)) (= lambda!143910 lambda!143897))))

(assert (=> bs!638387 (= (= lt!1582232 lt!1582606) (= lambda!143910 lambda!143902))))

(declare-fun bs!638390 () Bool)

(assert (= bs!638390 (and b!4370817 d!1294278)))

(assert (=> bs!638390 (= (= lt!1582232 lt!1582614) (= lambda!143910 lambda!143907))))

(declare-fun bs!638391 () Bool)

(assert (= bs!638391 (and b!4370817 b!4370786)))

(assert (=> bs!638391 (= (= lt!1582232 (+!762 lt!1582232 lt!1582230)) (= lambda!143910 lambda!143896))))

(declare-fun bs!638392 () Bool)

(assert (= bs!638392 (and b!4370817 b!4370799)))

(assert (=> bs!638392 (= lambda!143910 lambda!143905)))

(declare-fun bs!638393 () Bool)

(assert (= bs!638393 (and b!4370817 b!4370800)))

(assert (=> bs!638393 (= lambda!143910 lambda!143904)))

(declare-fun bs!638394 () Bool)

(assert (= bs!638394 (and b!4370817 b!4370793)))

(assert (=> bs!638394 (= lambda!143910 lambda!143900)))

(assert (=> bs!638389 (= (= lt!1582232 lt!1582585) (= lambda!143910 lambda!143898))))

(assert (=> bs!638392 (= (= lt!1582232 lt!1582631) (= lambda!143910 lambda!143906))))

(declare-fun bs!638395 () Bool)

(assert (= bs!638395 (and b!4370817 d!1294234)))

(assert (=> bs!638395 (= (= lt!1582232 lt!1582568) (= lambda!143910 lambda!143899))))

(assert (=> b!4370817 true))

(declare-fun bs!638396 () Bool)

(declare-fun b!4370816 () Bool)

(assert (= bs!638396 (and b!4370816 b!4370792)))

(declare-fun lambda!143911 () Int)

(assert (=> bs!638396 (= lambda!143911 lambda!143901)))

(declare-fun bs!638397 () Bool)

(assert (= bs!638397 (and b!4370816 d!1294274)))

(assert (=> bs!638397 (= (= lt!1582232 lt!1582589) (= lambda!143911 lambda!143903))))

(declare-fun bs!638398 () Bool)

(assert (= bs!638398 (and b!4370816 b!4370785)))

(assert (=> bs!638398 (= (= lt!1582232 (+!762 lt!1582232 lt!1582230)) (= lambda!143911 lambda!143897))))

(assert (=> bs!638396 (= (= lt!1582232 lt!1582606) (= lambda!143911 lambda!143902))))

(declare-fun bs!638399 () Bool)

(assert (= bs!638399 (and b!4370816 d!1294278)))

(assert (=> bs!638399 (= (= lt!1582232 lt!1582614) (= lambda!143911 lambda!143907))))

(declare-fun bs!638400 () Bool)

(assert (= bs!638400 (and b!4370816 b!4370786)))

(assert (=> bs!638400 (= (= lt!1582232 (+!762 lt!1582232 lt!1582230)) (= lambda!143911 lambda!143896))))

(declare-fun bs!638401 () Bool)

(assert (= bs!638401 (and b!4370816 b!4370799)))

(assert (=> bs!638401 (= lambda!143911 lambda!143905)))

(declare-fun bs!638402 () Bool)

(assert (= bs!638402 (and b!4370816 b!4370800)))

(assert (=> bs!638402 (= lambda!143911 lambda!143904)))

(assert (=> bs!638398 (= (= lt!1582232 lt!1582585) (= lambda!143911 lambda!143898))))

(assert (=> bs!638401 (= (= lt!1582232 lt!1582631) (= lambda!143911 lambda!143906))))

(declare-fun bs!638403 () Bool)

(assert (= bs!638403 (and b!4370816 d!1294234)))

(assert (=> bs!638403 (= (= lt!1582232 lt!1582568) (= lambda!143911 lambda!143899))))

(declare-fun bs!638404 () Bool)

(assert (= bs!638404 (and b!4370816 b!4370817)))

(assert (=> bs!638404 (= lambda!143911 lambda!143910)))

(declare-fun bs!638405 () Bool)

(assert (= bs!638405 (and b!4370816 b!4370793)))

(assert (=> bs!638405 (= lambda!143911 lambda!143900)))

(assert (=> b!4370816 true))

(declare-fun lt!1582673 () ListMap!2357)

(declare-fun lambda!143912 () Int)

(assert (=> bs!638396 (= (= lt!1582673 lt!1582232) (= lambda!143912 lambda!143901))))

(assert (=> bs!638397 (= (= lt!1582673 lt!1582589) (= lambda!143912 lambda!143903))))

(assert (=> bs!638398 (= (= lt!1582673 (+!762 lt!1582232 lt!1582230)) (= lambda!143912 lambda!143897))))

(assert (=> bs!638396 (= (= lt!1582673 lt!1582606) (= lambda!143912 lambda!143902))))

(assert (=> b!4370816 (= (= lt!1582673 lt!1582232) (= lambda!143912 lambda!143911))))

(assert (=> bs!638399 (= (= lt!1582673 lt!1582614) (= lambda!143912 lambda!143907))))

(assert (=> bs!638400 (= (= lt!1582673 (+!762 lt!1582232 lt!1582230)) (= lambda!143912 lambda!143896))))

(assert (=> bs!638401 (= (= lt!1582673 lt!1582232) (= lambda!143912 lambda!143905))))

(assert (=> bs!638402 (= (= lt!1582673 lt!1582232) (= lambda!143912 lambda!143904))))

(assert (=> bs!638398 (= (= lt!1582673 lt!1582585) (= lambda!143912 lambda!143898))))

(assert (=> bs!638401 (= (= lt!1582673 lt!1582631) (= lambda!143912 lambda!143906))))

(assert (=> bs!638403 (= (= lt!1582673 lt!1582568) (= lambda!143912 lambda!143899))))

(assert (=> bs!638404 (= (= lt!1582673 lt!1582232) (= lambda!143912 lambda!143910))))

(assert (=> bs!638405 (= (= lt!1582673 lt!1582232) (= lambda!143912 lambda!143900))))

(assert (=> b!4370816 true))

(declare-fun bs!638406 () Bool)

(declare-fun d!1294294 () Bool)

(assert (= bs!638406 (and d!1294294 b!4370792)))

(declare-fun lambda!143913 () Int)

(declare-fun lt!1582656 () ListMap!2357)

(assert (=> bs!638406 (= (= lt!1582656 lt!1582232) (= lambda!143913 lambda!143901))))

(declare-fun bs!638407 () Bool)

(assert (= bs!638407 (and d!1294294 d!1294274)))

(assert (=> bs!638407 (= (= lt!1582656 lt!1582589) (= lambda!143913 lambda!143903))))

(declare-fun bs!638408 () Bool)

(assert (= bs!638408 (and d!1294294 b!4370785)))

(assert (=> bs!638408 (= (= lt!1582656 (+!762 lt!1582232 lt!1582230)) (= lambda!143913 lambda!143897))))

(assert (=> bs!638406 (= (= lt!1582656 lt!1582606) (= lambda!143913 lambda!143902))))

(declare-fun bs!638409 () Bool)

(assert (= bs!638409 (and d!1294294 b!4370816)))

(assert (=> bs!638409 (= (= lt!1582656 lt!1582232) (= lambda!143913 lambda!143911))))

(declare-fun bs!638410 () Bool)

(assert (= bs!638410 (and d!1294294 d!1294278)))

(assert (=> bs!638410 (= (= lt!1582656 lt!1582614) (= lambda!143913 lambda!143907))))

(declare-fun bs!638411 () Bool)

(assert (= bs!638411 (and d!1294294 b!4370786)))

(assert (=> bs!638411 (= (= lt!1582656 (+!762 lt!1582232 lt!1582230)) (= lambda!143913 lambda!143896))))

(declare-fun bs!638412 () Bool)

(assert (= bs!638412 (and d!1294294 b!4370799)))

(assert (=> bs!638412 (= (= lt!1582656 lt!1582232) (= lambda!143913 lambda!143905))))

(declare-fun bs!638413 () Bool)

(assert (= bs!638413 (and d!1294294 b!4370800)))

(assert (=> bs!638413 (= (= lt!1582656 lt!1582232) (= lambda!143913 lambda!143904))))

(assert (=> bs!638409 (= (= lt!1582656 lt!1582673) (= lambda!143913 lambda!143912))))

(assert (=> bs!638408 (= (= lt!1582656 lt!1582585) (= lambda!143913 lambda!143898))))

(assert (=> bs!638412 (= (= lt!1582656 lt!1582631) (= lambda!143913 lambda!143906))))

(declare-fun bs!638414 () Bool)

(assert (= bs!638414 (and d!1294294 d!1294234)))

(assert (=> bs!638414 (= (= lt!1582656 lt!1582568) (= lambda!143913 lambda!143899))))

(declare-fun bs!638415 () Bool)

(assert (= bs!638415 (and d!1294294 b!4370817)))

(assert (=> bs!638415 (= (= lt!1582656 lt!1582232) (= lambda!143913 lambda!143910))))

(declare-fun bs!638416 () Bool)

(assert (= bs!638416 (and d!1294294 b!4370793)))

(assert (=> bs!638416 (= (= lt!1582656 lt!1582232) (= lambda!143913 lambda!143900))))

(assert (=> d!1294294 true))

(declare-fun c!743066 () Bool)

(declare-fun bm!303802 () Bool)

(declare-fun call!303807 () Bool)

(assert (=> bm!303802 (= call!303807 (forall!9247 (ite c!743066 (toList!3114 lt!1582232) (t!356166 newBucket!200)) (ite c!743066 lambda!143910 lambda!143912)))))

(declare-fun e!2720300 () ListMap!2357)

(assert (=> b!4370816 (= e!2720300 lt!1582673)))

(declare-fun lt!1582668 () ListMap!2357)

(assert (=> b!4370816 (= lt!1582668 (+!762 lt!1582232 (h!54709 newBucket!200)))))

(assert (=> b!4370816 (= lt!1582673 (addToMapMapFromBucket!246 (t!356166 newBucket!200) (+!762 lt!1582232 (h!54709 newBucket!200))))))

(declare-fun lt!1582671 () Unit!73584)

(declare-fun call!303809 () Unit!73584)

(assert (=> b!4370816 (= lt!1582671 call!303809)))

(assert (=> b!4370816 (forall!9247 (toList!3114 lt!1582232) lambda!143911)))

(declare-fun lt!1582661 () Unit!73584)

(assert (=> b!4370816 (= lt!1582661 lt!1582671)))

(declare-fun call!303808 () Bool)

(assert (=> b!4370816 call!303808))

(declare-fun lt!1582655 () Unit!73584)

(declare-fun Unit!73669 () Unit!73584)

(assert (=> b!4370816 (= lt!1582655 Unit!73669)))

(assert (=> b!4370816 call!303807))

(declare-fun lt!1582654 () Unit!73584)

(declare-fun Unit!73670 () Unit!73584)

(assert (=> b!4370816 (= lt!1582654 Unit!73670)))

(declare-fun lt!1582674 () Unit!73584)

(declare-fun Unit!73671 () Unit!73584)

(assert (=> b!4370816 (= lt!1582674 Unit!73671)))

(declare-fun lt!1582659 () Unit!73584)

(assert (=> b!4370816 (= lt!1582659 (forallContained!1885 (toList!3114 lt!1582668) lambda!143912 (h!54709 newBucket!200)))))

(assert (=> b!4370816 (contains!11429 lt!1582668 (_1!27609 (h!54709 newBucket!200)))))

(declare-fun lt!1582662 () Unit!73584)

(declare-fun Unit!73672 () Unit!73584)

(assert (=> b!4370816 (= lt!1582662 Unit!73672)))

(assert (=> b!4370816 (contains!11429 lt!1582673 (_1!27609 (h!54709 newBucket!200)))))

(declare-fun lt!1582660 () Unit!73584)

(declare-fun Unit!73673 () Unit!73584)

(assert (=> b!4370816 (= lt!1582660 Unit!73673)))

(assert (=> b!4370816 (forall!9247 newBucket!200 lambda!143912)))

(declare-fun lt!1582663 () Unit!73584)

(declare-fun Unit!73674 () Unit!73584)

(assert (=> b!4370816 (= lt!1582663 Unit!73674)))

(assert (=> b!4370816 (forall!9247 (toList!3114 lt!1582668) lambda!143912)))

(declare-fun lt!1582669 () Unit!73584)

(declare-fun Unit!73675 () Unit!73584)

(assert (=> b!4370816 (= lt!1582669 Unit!73675)))

(declare-fun lt!1582664 () Unit!73584)

(declare-fun Unit!73676 () Unit!73584)

(assert (=> b!4370816 (= lt!1582664 Unit!73676)))

(declare-fun lt!1582665 () Unit!73584)

(assert (=> b!4370816 (= lt!1582665 (addForallContainsKeyThenBeforeAdding!97 lt!1582232 lt!1582673 (_1!27609 (h!54709 newBucket!200)) (_2!27609 (h!54709 newBucket!200))))))

(assert (=> b!4370816 (forall!9247 (toList!3114 lt!1582232) lambda!143912)))

(declare-fun lt!1582670 () Unit!73584)

(assert (=> b!4370816 (= lt!1582670 lt!1582665)))

(assert (=> b!4370816 (forall!9247 (toList!3114 lt!1582232) lambda!143912)))

(declare-fun lt!1582666 () Unit!73584)

(declare-fun Unit!73677 () Unit!73584)

(assert (=> b!4370816 (= lt!1582666 Unit!73677)))

(declare-fun res!1798771 () Bool)

(assert (=> b!4370816 (= res!1798771 (forall!9247 newBucket!200 lambda!143912))))

(declare-fun e!2720302 () Bool)

(assert (=> b!4370816 (=> (not res!1798771) (not e!2720302))))

(assert (=> b!4370816 e!2720302))

(declare-fun lt!1582657 () Unit!73584)

(declare-fun Unit!73678 () Unit!73584)

(assert (=> b!4370816 (= lt!1582657 Unit!73678)))

(assert (=> b!4370817 (= e!2720300 lt!1582232)))

(declare-fun lt!1582667 () Unit!73584)

(assert (=> b!4370817 (= lt!1582667 call!303809)))

(assert (=> b!4370817 call!303808))

(declare-fun lt!1582672 () Unit!73584)

(assert (=> b!4370817 (= lt!1582672 lt!1582667)))

(assert (=> b!4370817 call!303807))

(declare-fun lt!1582658 () Unit!73584)

(declare-fun Unit!73679 () Unit!73584)

(assert (=> b!4370817 (= lt!1582658 Unit!73679)))

(declare-fun b!4370818 () Bool)

(declare-fun e!2720301 () Bool)

(assert (=> b!4370818 (= e!2720301 (invariantList!715 (toList!3114 lt!1582656)))))

(declare-fun bm!303803 () Bool)

(assert (=> bm!303803 (= call!303808 (forall!9247 (ite c!743066 (toList!3114 lt!1582232) (toList!3114 lt!1582668)) (ite c!743066 lambda!143910 lambda!143912)))))

(declare-fun b!4370819 () Bool)

(assert (=> b!4370819 (= e!2720302 (forall!9247 (toList!3114 lt!1582232) lambda!143912))))

(declare-fun b!4370820 () Bool)

(declare-fun res!1798772 () Bool)

(assert (=> b!4370820 (=> (not res!1798772) (not e!2720301))))

(assert (=> b!4370820 (= res!1798772 (forall!9247 (toList!3114 lt!1582232) lambda!143913))))

(assert (=> d!1294294 e!2720301))

(declare-fun res!1798773 () Bool)

(assert (=> d!1294294 (=> (not res!1798773) (not e!2720301))))

(assert (=> d!1294294 (= res!1798773 (forall!9247 newBucket!200 lambda!143913))))

(assert (=> d!1294294 (= lt!1582656 e!2720300)))

(assert (=> d!1294294 (= c!743066 ((_ is Nil!49120) newBucket!200))))

(assert (=> d!1294294 (noDuplicateKeys!565 newBucket!200)))

(assert (=> d!1294294 (= (addToMapMapFromBucket!246 newBucket!200 lt!1582232) lt!1582656)))

(declare-fun bm!303804 () Bool)

(assert (=> bm!303804 (= call!303809 (lemmaContainsAllItsOwnKeys!97 lt!1582232))))

(assert (= (and d!1294294 c!743066) b!4370817))

(assert (= (and d!1294294 (not c!743066)) b!4370816))

(assert (= (and b!4370816 res!1798771) b!4370819))

(assert (= (or b!4370817 b!4370816) bm!303804))

(assert (= (or b!4370817 b!4370816) bm!303803))

(assert (= (or b!4370817 b!4370816) bm!303802))

(assert (= (and d!1294294 res!1798773) b!4370820))

(assert (= (and b!4370820 res!1798772) b!4370818))

(declare-fun m!4995497 () Bool)

(assert (=> bm!303802 m!4995497))

(declare-fun m!4995499 () Bool)

(assert (=> d!1294294 m!4995499))

(assert (=> d!1294294 m!4994927))

(declare-fun m!4995501 () Bool)

(assert (=> b!4370819 m!4995501))

(assert (=> bm!303804 m!4995371))

(declare-fun m!4995503 () Bool)

(assert (=> b!4370820 m!4995503))

(declare-fun m!4995505 () Bool)

(assert (=> b!4370818 m!4995505))

(declare-fun m!4995507 () Bool)

(assert (=> b!4370816 m!4995507))

(declare-fun m!4995509 () Bool)

(assert (=> b!4370816 m!4995509))

(declare-fun m!4995511 () Bool)

(assert (=> b!4370816 m!4995511))

(declare-fun m!4995513 () Bool)

(assert (=> b!4370816 m!4995513))

(declare-fun m!4995515 () Bool)

(assert (=> b!4370816 m!4995515))

(declare-fun m!4995517 () Bool)

(assert (=> b!4370816 m!4995517))

(declare-fun m!4995519 () Bool)

(assert (=> b!4370816 m!4995519))

(declare-fun m!4995521 () Bool)

(assert (=> b!4370816 m!4995521))

(assert (=> b!4370816 m!4995501))

(declare-fun m!4995523 () Bool)

(assert (=> b!4370816 m!4995523))

(assert (=> b!4370816 m!4995501))

(assert (=> b!4370816 m!4995519))

(assert (=> b!4370816 m!4995509))

(declare-fun m!4995525 () Bool)

(assert (=> bm!303803 m!4995525))

(assert (=> b!4370532 d!1294294))

(declare-fun bs!638417 () Bool)

(declare-fun d!1294296 () Bool)

(assert (= bs!638417 (and d!1294296 start!424388)))

(declare-fun lambda!143916 () Int)

(assert (=> bs!638417 (not (= lambda!143916 lambda!143809))))

(declare-fun bs!638418 () Bool)

(assert (= bs!638418 (and d!1294296 d!1294196)))

(assert (=> bs!638418 (not (= lambda!143916 lambda!143815))))

(declare-fun bs!638419 () Bool)

(assert (= bs!638419 (and d!1294296 d!1294282)))

(assert (=> bs!638419 (not (= lambda!143916 lambda!143908))))

(declare-fun bs!638420 () Bool)

(assert (= bs!638420 (and d!1294296 d!1294286)))

(assert (=> bs!638420 (not (= lambda!143916 lambda!143909))))

(assert (=> d!1294296 true))

(assert (=> d!1294296 (= (allKeysSameHashInMap!669 lm!1707 hashF!1247) (forall!9245 (toList!3113 lm!1707) lambda!143916))))

(declare-fun bs!638421 () Bool)

(assert (= bs!638421 d!1294296))

(declare-fun m!4995527 () Bool)

(assert (=> bs!638421 m!4995527))

(assert (=> b!4370521 d!1294296))

(declare-fun d!1294298 () Bool)

(declare-fun hash!1726 (Hashable!4957 K!10480) (_ BitVec 64))

(assert (=> d!1294298 (= (hash!1724 hashF!1247 key!3918) (hash!1726 hashF!1247 key!3918))))

(declare-fun bs!638422 () Bool)

(assert (= bs!638422 d!1294298))

(declare-fun m!4995529 () Bool)

(assert (=> bs!638422 m!4995529))

(assert (=> b!4370522 d!1294298))

(declare-fun bs!638423 () Bool)

(declare-fun d!1294300 () Bool)

(assert (= bs!638423 (and d!1294300 b!4370792)))

(declare-fun lambda!143919 () Int)

(assert (=> bs!638423 (not (= lambda!143919 lambda!143901))))

(declare-fun bs!638424 () Bool)

(assert (= bs!638424 (and d!1294300 d!1294274)))

(assert (=> bs!638424 (not (= lambda!143919 lambda!143903))))

(declare-fun bs!638425 () Bool)

(assert (= bs!638425 (and d!1294300 b!4370785)))

(assert (=> bs!638425 (not (= lambda!143919 lambda!143897))))

(assert (=> bs!638423 (not (= lambda!143919 lambda!143902))))

(declare-fun bs!638426 () Bool)

(assert (= bs!638426 (and d!1294300 b!4370816)))

(assert (=> bs!638426 (not (= lambda!143919 lambda!143911))))

(declare-fun bs!638427 () Bool)

(assert (= bs!638427 (and d!1294300 d!1294278)))

(assert (=> bs!638427 (not (= lambda!143919 lambda!143907))))

(declare-fun bs!638428 () Bool)

(assert (= bs!638428 (and d!1294300 b!4370786)))

(assert (=> bs!638428 (not (= lambda!143919 lambda!143896))))

(declare-fun bs!638429 () Bool)

(assert (= bs!638429 (and d!1294300 b!4370799)))

(assert (=> bs!638429 (not (= lambda!143919 lambda!143905))))

(declare-fun bs!638430 () Bool)

(assert (= bs!638430 (and d!1294300 b!4370800)))

(assert (=> bs!638430 (not (= lambda!143919 lambda!143904))))

(assert (=> bs!638426 (not (= lambda!143919 lambda!143912))))

(assert (=> bs!638425 (not (= lambda!143919 lambda!143898))))

(assert (=> bs!638429 (not (= lambda!143919 lambda!143906))))

(declare-fun bs!638431 () Bool)

(assert (= bs!638431 (and d!1294300 d!1294234)))

(assert (=> bs!638431 (not (= lambda!143919 lambda!143899))))

(declare-fun bs!638432 () Bool)

(assert (= bs!638432 (and d!1294300 d!1294294)))

(assert (=> bs!638432 (not (= lambda!143919 lambda!143913))))

(declare-fun bs!638433 () Bool)

(assert (= bs!638433 (and d!1294300 b!4370817)))

(assert (=> bs!638433 (not (= lambda!143919 lambda!143910))))

(declare-fun bs!638434 () Bool)

(assert (= bs!638434 (and d!1294300 b!4370793)))

(assert (=> bs!638434 (not (= lambda!143919 lambda!143900))))

(assert (=> d!1294300 true))

(assert (=> d!1294300 true))

(assert (=> d!1294300 (= (allKeysSameHash!523 newBucket!200 hash!377 hashF!1247) (forall!9247 newBucket!200 lambda!143919))))

(declare-fun bs!638435 () Bool)

(assert (= bs!638435 d!1294300))

(declare-fun m!4995531 () Bool)

(assert (=> bs!638435 m!4995531))

(assert (=> b!4370523 d!1294300))

(declare-fun d!1294302 () Bool)

(assert (=> d!1294302 (= (eq!303 lt!1582240 lt!1582237) (= (content!7792 (toList!3114 lt!1582240)) (content!7792 (toList!3114 lt!1582237))))))

(declare-fun bs!638436 () Bool)

(assert (= bs!638436 d!1294302))

(declare-fun m!4995533 () Bool)

(assert (=> bs!638436 m!4995533))

(assert (=> bs!638436 m!4995483))

(assert (=> b!4370524 d!1294302))

(assert (=> start!424388 d!1294232))

(declare-fun d!1294304 () Bool)

(assert (=> d!1294304 (= (inv!64666 lm!1707) (isStrictlySorted!142 (toList!3113 lm!1707)))))

(declare-fun bs!638437 () Bool)

(assert (= bs!638437 d!1294304))

(assert (=> bs!638437 m!4995027))

(assert (=> start!424388 d!1294304))

(assert (=> b!4370526 d!1294216))

(declare-fun b!4370831 () Bool)

(declare-fun e!2720305 () Bool)

(declare-fun tp!1331012 () Bool)

(declare-fun tp!1331013 () Bool)

(assert (=> b!4370831 (= e!2720305 (and tp!1331012 tp!1331013))))

(assert (=> b!4370519 (= tp!1330998 e!2720305)))

(assert (= (and b!4370519 ((_ is Cons!49121) (toList!3113 lm!1707))) b!4370831))

(declare-fun e!2720308 () Bool)

(declare-fun tp!1331016 () Bool)

(declare-fun b!4370836 () Bool)

(assert (=> b!4370836 (= e!2720308 (and tp_is_empty!25497 tp_is_empty!25499 tp!1331016))))

(assert (=> b!4370520 (= tp!1330997 e!2720308)))

(assert (= (and b!4370520 ((_ is Cons!49120) (t!356166 newBucket!200))) b!4370836))

(declare-fun b_lambda!132981 () Bool)

(assert (= b_lambda!132969 (or start!424388 b_lambda!132981)))

(declare-fun bs!638438 () Bool)

(declare-fun d!1294306 () Bool)

(assert (= bs!638438 (and d!1294306 start!424388)))

(assert (=> bs!638438 (= (dynLambda!20693 lambda!143809 (h!54710 (toList!3113 lm!1707))) (noDuplicateKeys!565 (_2!27610 (h!54710 (toList!3113 lm!1707)))))))

(declare-fun m!4995535 () Bool)

(assert (=> bs!638438 m!4995535))

(assert (=> b!4370671 d!1294306))

(declare-fun b_lambda!132983 () Bool)

(assert (= b_lambda!132963 (or start!424388 b_lambda!132983)))

(declare-fun bs!638439 () Bool)

(declare-fun d!1294308 () Bool)

(assert (= bs!638439 (and d!1294308 start!424388)))

(assert (=> bs!638439 (= (dynLambda!20693 lambda!143809 lt!1582224) (noDuplicateKeys!565 (_2!27610 lt!1582224)))))

(declare-fun m!4995537 () Bool)

(assert (=> bs!638439 m!4995537))

(assert (=> d!1294206 d!1294308))

(declare-fun b_lambda!132985 () Bool)

(assert (= b_lambda!132965 (or start!424388 b_lambda!132985)))

(declare-fun bs!638440 () Bool)

(declare-fun d!1294310 () Bool)

(assert (= bs!638440 (and d!1294310 start!424388)))

(assert (=> bs!638440 (= (dynLambda!20693 lambda!143809 (h!54710 (toList!3113 lt!1582236))) (noDuplicateKeys!565 (_2!27610 (h!54710 (toList!3113 lt!1582236)))))))

(declare-fun m!4995539 () Bool)

(assert (=> bs!638440 m!4995539))

(assert (=> b!4370650 d!1294310))

(declare-fun b_lambda!132987 () Bool)

(assert (= b_lambda!132967 (or start!424388 b_lambda!132987)))

(declare-fun bs!638441 () Bool)

(declare-fun d!1294312 () Bool)

(assert (= bs!638441 (and d!1294312 start!424388)))

(assert (=> bs!638441 (= (dynLambda!20693 lambda!143809 (tuple2!48633 hash!377 newBucket!200)) (noDuplicateKeys!565 (_2!27610 (tuple2!48633 hash!377 newBucket!200))))))

(declare-fun m!4995541 () Bool)

(assert (=> bs!638441 m!4995541))

(assert (=> b!4370670 d!1294312))

(check-sat (not bm!303765) (not d!1294182) (not b!4370573) (not b!4370578) (not b!4370810) (not d!1294210) (not b!4370811) (not b_lambda!132987) (not d!1294274) (not b!4370792) (not bm!303803) (not d!1294280) (not bm!303794) (not b!4370797) (not b!4370804) (not b!4370577) (not bs!638440) (not b!4370602) (not d!1294202) (not bm!303800) (not d!1294302) (not d!1294234) (not d!1294196) (not b_lambda!132985) (not b!4370795) (not d!1294292) (not b!4370640) (not b!4370584) (not b!4370836) (not b!4370663) (not d!1294284) (not b!4370819) (not bm!303801) (not b!4370591) (not b!4370629) (not d!1294208) (not d!1294296) (not d!1294298) (not b!4370812) (not b_lambda!132983) (not bm!303796) (not d!1294290) (not b!4370789) (not b!4370574) (not d!1294300) (not b!4370788) (not bm!303799) (not b!4370815) (not b!4370590) (not bm!303798) (not b!4370831) (not b!4370816) (not bs!638439) (not d!1294226) (not b_lambda!132981) (not bm!303793) (not d!1294286) (not b!4370798) (not d!1294206) (not bm!303797) (not b!4370796) (not b!4370799) (not d!1294204) (not b!4370572) (not b!4370651) (not bs!638438) (not b!4370619) (not d!1294282) (not b!4370575) (not b!4370814) tp_is_empty!25497 (not b!4370600) (not b!4370801) (not b!4370803) (not d!1294218) (not d!1294294) (not bm!303795) (not bm!303802) (not b!4370610) (not b!4370802) (not b!4370787) (not d!1294200) (not b!4370794) (not bs!638441) (not d!1294278) (not b!4370820) (not b!4370785) tp_is_empty!25499 (not d!1294304) (not b!4370672) (not bm!303804) (not d!1294276) (not b!4370571) (not b!4370818) (not b!4370664))
(check-sat)
