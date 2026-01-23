; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!478994 () Bool)

(assert start!478994)

(declare-fun b!4712554 () Bool)

(declare-fun e!2939232 () Bool)

(declare-fun e!2939237 () Bool)

(assert (=> b!4712554 (= e!2939232 e!2939237)))

(declare-fun res!1992024 () Bool)

(assert (=> b!4712554 (=> res!1992024 e!2939237)))

(declare-datatypes ((K!14068 0))(
  ( (K!14069 (val!19525 Int)) )
))
(declare-datatypes ((V!14314 0))(
  ( (V!14315 (val!19526 Int)) )
))
(declare-datatypes ((tuple2!54262 0))(
  ( (tuple2!54263 (_1!30425 K!14068) (_2!30425 V!14314)) )
))
(declare-datatypes ((List!52831 0))(
  ( (Nil!52707) (Cons!52707 (h!59024 tuple2!54262) (t!360073 List!52831)) )
))
(declare-fun oldBucket!34 () List!52831)

(declare-fun key!4653 () K!14068)

(declare-fun containsKey!3281 (List!52831 K!14068) Bool)

(assert (=> b!4712554 (= res!1992024 (not (containsKey!3281 (t!360073 oldBucket!34) key!4653)))))

(assert (=> b!4712554 (containsKey!3281 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!128199 0))(
  ( (Unit!128200) )
))
(declare-fun lt!1876953 () Unit!128199)

(declare-datatypes ((Hashable!6336 0))(
  ( (HashableExt!6335 (__x!32039 Int)) )
))
(declare-fun hashF!1323 () Hashable!6336)

(declare-fun lemmaGetPairDefinedThenContainsKey!281 (List!52831 K!14068 Hashable!6336) Unit!128199)

(assert (=> b!4712554 (= lt!1876953 (lemmaGetPairDefinedThenContainsKey!281 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1876954 () List!52831)

(declare-datatypes ((Option!12284 0))(
  ( (None!12283) (Some!12283 (v!46818 tuple2!54262)) )
))
(declare-fun isDefined!9538 (Option!12284) Bool)

(declare-fun getPair!533 (List!52831 K!14068) Option!12284)

(assert (=> b!4712554 (isDefined!9538 (getPair!533 lt!1876954 key!4653))))

(declare-datatypes ((tuple2!54264 0))(
  ( (tuple2!54265 (_1!30426 (_ BitVec 64)) (_2!30426 List!52831)) )
))
(declare-datatypes ((List!52832 0))(
  ( (Nil!52708) (Cons!52708 (h!59025 tuple2!54264) (t!360074 List!52832)) )
))
(declare-datatypes ((ListLongMap!4353 0))(
  ( (ListLongMap!4354 (toList!5823 List!52832)) )
))
(declare-fun lm!2023 () ListLongMap!4353)

(declare-fun lambda!213142 () Int)

(declare-fun lt!1876962 () tuple2!54264)

(declare-fun lt!1876955 () Unit!128199)

(declare-fun forallContained!3575 (List!52832 Int tuple2!54264) Unit!128199)

(assert (=> b!4712554 (= lt!1876955 (forallContained!3575 (toList!5823 lm!2023) lambda!213142 lt!1876962))))

(declare-fun contains!16017 (List!52832 tuple2!54264) Bool)

(assert (=> b!4712554 (contains!16017 (toList!5823 lm!2023) lt!1876962)))

(declare-fun lt!1876960 () (_ BitVec 64))

(assert (=> b!4712554 (= lt!1876962 (tuple2!54265 lt!1876960 lt!1876954))))

(declare-fun lt!1876961 () Unit!128199)

(declare-fun lemmaGetValueImpliesTupleContained!338 (ListLongMap!4353 (_ BitVec 64) List!52831) Unit!128199)

(assert (=> b!4712554 (= lt!1876961 (lemmaGetValueImpliesTupleContained!338 lm!2023 lt!1876960 lt!1876954))))

(declare-fun apply!12416 (ListLongMap!4353 (_ BitVec 64)) List!52831)

(assert (=> b!4712554 (= lt!1876954 (apply!12416 lm!2023 lt!1876960))))

(declare-fun contains!16018 (ListLongMap!4353 (_ BitVec 64)) Bool)

(assert (=> b!4712554 (contains!16018 lm!2023 lt!1876960)))

(declare-fun lt!1876958 () Unit!128199)

(declare-fun lemmaInGenMapThenLongMapContainsHash!739 (ListLongMap!4353 K!14068 Hashable!6336) Unit!128199)

(assert (=> b!4712554 (= lt!1876958 (lemmaInGenMapThenLongMapContainsHash!739 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1876957 () Unit!128199)

(declare-fun lemmaInGenMapThenGetPairDefined!329 (ListLongMap!4353 K!14068 Hashable!6336) Unit!128199)

(assert (=> b!4712554 (= lt!1876957 (lemmaInGenMapThenGetPairDefined!329 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4712555 () Bool)

(declare-fun res!1992026 () Bool)

(declare-fun e!2939240 () Bool)

(assert (=> b!4712555 (=> (not res!1992026) (not e!2939240))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!10167 (List!52832) tuple2!54264)

(assert (=> b!4712555 (= res!1992026 (= (head!10167 (toList!5823 lm!2023)) (tuple2!54265 hash!405 oldBucket!34)))))

(declare-fun b!4712556 () Bool)

(declare-fun e!2939231 () Bool)

(assert (=> b!4712556 (= e!2939237 e!2939231)))

(declare-fun res!1992015 () Bool)

(assert (=> b!4712556 (=> res!1992015 e!2939231)))

(declare-fun lt!1876959 () List!52831)

(declare-fun removePairForKey!1562 (List!52831 K!14068) List!52831)

(declare-fun tail!8881 (List!52831) List!52831)

(assert (=> b!4712556 (= res!1992015 (not (= (removePairForKey!1562 (tail!8881 oldBucket!34) key!4653) lt!1876959)))))

(declare-fun newBucket!218 () List!52831)

(assert (=> b!4712556 (= lt!1876959 (tail!8881 newBucket!218))))

(declare-fun b!4712557 () Bool)

(declare-fun e!2939234 () Bool)

(assert (=> b!4712557 (= e!2939234 e!2939240)))

(declare-fun res!1992027 () Bool)

(assert (=> b!4712557 (=> (not res!1992027) (not e!2939240))))

(assert (=> b!4712557 (= res!1992027 (= lt!1876960 hash!405))))

(declare-fun hash!4299 (Hashable!6336 K!14068) (_ BitVec 64))

(assert (=> b!4712557 (= lt!1876960 (hash!4299 hashF!1323 key!4653))))

(declare-fun tp_is_empty!31161 () Bool)

(declare-fun e!2939233 () Bool)

(declare-fun tp_is_empty!31163 () Bool)

(declare-fun tp!1347652 () Bool)

(declare-fun b!4712558 () Bool)

(assert (=> b!4712558 (= e!2939233 (and tp_is_empty!31161 tp_is_empty!31163 tp!1347652))))

(declare-fun b!4712560 () Bool)

(declare-fun res!1992025 () Bool)

(declare-fun e!2939239 () Bool)

(assert (=> b!4712560 (=> (not res!1992025) (not e!2939239))))

(assert (=> b!4712560 (= res!1992025 (= (removePairForKey!1562 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4712561 () Bool)

(declare-fun res!1992023 () Bool)

(assert (=> b!4712561 (=> (not res!1992023) (not e!2939239))))

(declare-fun noDuplicateKeys!1967 (List!52831) Bool)

(assert (=> b!4712561 (= res!1992023 (noDuplicateKeys!1967 newBucket!218))))

(declare-fun b!4712562 () Bool)

(declare-fun res!1992021 () Bool)

(assert (=> b!4712562 (=> (not res!1992021) (not e!2939240))))

(declare-fun allKeysSameHash!1793 (List!52831 (_ BitVec 64) Hashable!6336) Bool)

(assert (=> b!4712562 (= res!1992021 (allKeysSameHash!1793 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4712563 () Bool)

(declare-fun res!1992020 () Bool)

(assert (=> b!4712563 (=> (not res!1992020) (not e!2939240))))

(declare-fun allKeysSameHashInMap!1881 (ListLongMap!4353 Hashable!6336) Bool)

(assert (=> b!4712563 (= res!1992020 (allKeysSameHashInMap!1881 lm!2023 hashF!1323))))

(declare-fun b!4712559 () Bool)

(declare-fun e!2939235 () Bool)

(declare-datatypes ((ListMap!5187 0))(
  ( (ListMap!5188 (toList!5824 List!52831)) )
))
(declare-fun lt!1876956 () ListMap!5187)

(declare-fun addToMapMapFromBucket!1397 (List!52831 ListMap!5187) ListMap!5187)

(declare-fun extractMap!1993 (List!52832) ListMap!5187)

(assert (=> b!4712559 (= e!2939235 (= lt!1876956 (addToMapMapFromBucket!1397 (_2!30426 (h!59025 (toList!5823 lm!2023))) (extractMap!1993 (t!360074 (toList!5823 lm!2023))))))))

(declare-fun res!1992028 () Bool)

(assert (=> start!478994 (=> (not res!1992028) (not e!2939239))))

(declare-fun forall!11506 (List!52832 Int) Bool)

(assert (=> start!478994 (= res!1992028 (forall!11506 (toList!5823 lm!2023) lambda!213142))))

(assert (=> start!478994 e!2939239))

(declare-fun e!2939236 () Bool)

(declare-fun inv!67943 (ListLongMap!4353) Bool)

(assert (=> start!478994 (and (inv!67943 lm!2023) e!2939236)))

(assert (=> start!478994 tp_is_empty!31161))

(declare-fun e!2939238 () Bool)

(assert (=> start!478994 e!2939238))

(assert (=> start!478994 true))

(assert (=> start!478994 e!2939233))

(declare-fun b!4712564 () Bool)

(declare-fun res!1992022 () Bool)

(assert (=> b!4712564 (=> (not res!1992022) (not e!2939240))))

(assert (=> b!4712564 (= res!1992022 (is-Cons!52708 (toList!5823 lm!2023)))))

(declare-fun b!4712565 () Bool)

(declare-fun res!1992017 () Bool)

(assert (=> b!4712565 (=> (not res!1992017) (not e!2939239))))

(assert (=> b!4712565 (= res!1992017 (noDuplicateKeys!1967 oldBucket!34))))

(declare-fun b!4712566 () Bool)

(declare-fun tp!1347654 () Bool)

(assert (=> b!4712566 (= e!2939236 tp!1347654)))

(declare-fun b!4712567 () Bool)

(declare-fun res!1992019 () Bool)

(assert (=> b!4712567 (=> (not res!1992019) (not e!2939239))))

(assert (=> b!4712567 (= res!1992019 (allKeysSameHash!1793 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4712568 () Bool)

(assert (=> b!4712568 (= e!2939239 e!2939234)))

(declare-fun res!1992016 () Bool)

(assert (=> b!4712568 (=> (not res!1992016) (not e!2939234))))

(declare-fun contains!16019 (ListMap!5187 K!14068) Bool)

(assert (=> b!4712568 (= res!1992016 (contains!16019 lt!1876956 key!4653))))

(assert (=> b!4712568 (= lt!1876956 (extractMap!1993 (toList!5823 lm!2023)))))

(declare-fun b!4712569 () Bool)

(assert (=> b!4712569 (= e!2939240 (not e!2939232))))

(declare-fun res!1992014 () Bool)

(assert (=> b!4712569 (=> res!1992014 e!2939232)))

(assert (=> b!4712569 (= res!1992014 (or (and (is-Cons!52707 oldBucket!34) (= (_1!30425 (h!59024 oldBucket!34)) key!4653)) (not (is-Cons!52707 oldBucket!34)) (= (_1!30425 (h!59024 oldBucket!34)) key!4653)))))

(assert (=> b!4712569 e!2939235))

(declare-fun res!1992018 () Bool)

(assert (=> b!4712569 (=> (not res!1992018) (not e!2939235))))

(declare-fun tail!8882 (ListLongMap!4353) ListLongMap!4353)

(assert (=> b!4712569 (= res!1992018 (= (t!360074 (toList!5823 lm!2023)) (toList!5823 (tail!8882 lm!2023))))))

(declare-fun b!4712570 () Bool)

(declare-fun tp!1347653 () Bool)

(assert (=> b!4712570 (= e!2939238 (and tp_is_empty!31161 tp_is_empty!31163 tp!1347653))))

(declare-fun b!4712571 () Bool)

(assert (=> b!4712571 (= e!2939231 (= (removePairForKey!1562 (t!360073 oldBucket!34) key!4653) lt!1876959))))

(assert (= (and start!478994 res!1992028) b!4712565))

(assert (= (and b!4712565 res!1992017) b!4712561))

(assert (= (and b!4712561 res!1992023) b!4712560))

(assert (= (and b!4712560 res!1992025) b!4712567))

(assert (= (and b!4712567 res!1992019) b!4712568))

(assert (= (and b!4712568 res!1992016) b!4712557))

(assert (= (and b!4712557 res!1992027) b!4712562))

(assert (= (and b!4712562 res!1992021) b!4712563))

(assert (= (and b!4712563 res!1992020) b!4712555))

(assert (= (and b!4712555 res!1992026) b!4712564))

(assert (= (and b!4712564 res!1992022) b!4712569))

(assert (= (and b!4712569 res!1992018) b!4712559))

(assert (= (and b!4712569 (not res!1992014)) b!4712554))

(assert (= (and b!4712554 (not res!1992024)) b!4712556))

(assert (= (and b!4712556 (not res!1992015)) b!4712571))

(assert (= start!478994 b!4712566))

(assert (= (and start!478994 (is-Cons!52707 oldBucket!34)) b!4712570))

(assert (= (and start!478994 (is-Cons!52707 newBucket!218)) b!4712558))

(declare-fun m!5638797 () Bool)

(assert (=> b!4712562 m!5638797))

(declare-fun m!5638799 () Bool)

(assert (=> b!4712557 m!5638799))

(declare-fun m!5638801 () Bool)

(assert (=> b!4712559 m!5638801))

(assert (=> b!4712559 m!5638801))

(declare-fun m!5638803 () Bool)

(assert (=> b!4712559 m!5638803))

(declare-fun m!5638805 () Bool)

(assert (=> b!4712567 m!5638805))

(declare-fun m!5638807 () Bool)

(assert (=> b!4712568 m!5638807))

(declare-fun m!5638809 () Bool)

(assert (=> b!4712568 m!5638809))

(declare-fun m!5638811 () Bool)

(assert (=> b!4712560 m!5638811))

(declare-fun m!5638813 () Bool)

(assert (=> b!4712554 m!5638813))

(declare-fun m!5638815 () Bool)

(assert (=> b!4712554 m!5638815))

(declare-fun m!5638817 () Bool)

(assert (=> b!4712554 m!5638817))

(declare-fun m!5638819 () Bool)

(assert (=> b!4712554 m!5638819))

(declare-fun m!5638821 () Bool)

(assert (=> b!4712554 m!5638821))

(declare-fun m!5638823 () Bool)

(assert (=> b!4712554 m!5638823))

(declare-fun m!5638825 () Bool)

(assert (=> b!4712554 m!5638825))

(assert (=> b!4712554 m!5638813))

(declare-fun m!5638827 () Bool)

(assert (=> b!4712554 m!5638827))

(declare-fun m!5638829 () Bool)

(assert (=> b!4712554 m!5638829))

(declare-fun m!5638831 () Bool)

(assert (=> b!4712554 m!5638831))

(declare-fun m!5638833 () Bool)

(assert (=> b!4712554 m!5638833))

(declare-fun m!5638835 () Bool)

(assert (=> b!4712554 m!5638835))

(declare-fun m!5638837 () Bool)

(assert (=> b!4712556 m!5638837))

(assert (=> b!4712556 m!5638837))

(declare-fun m!5638839 () Bool)

(assert (=> b!4712556 m!5638839))

(declare-fun m!5638841 () Bool)

(assert (=> b!4712556 m!5638841))

(declare-fun m!5638843 () Bool)

(assert (=> b!4712555 m!5638843))

(declare-fun m!5638845 () Bool)

(assert (=> b!4712565 m!5638845))

(declare-fun m!5638847 () Bool)

(assert (=> b!4712571 m!5638847))

(declare-fun m!5638849 () Bool)

(assert (=> b!4712563 m!5638849))

(declare-fun m!5638851 () Bool)

(assert (=> b!4712561 m!5638851))

(declare-fun m!5638853 () Bool)

(assert (=> b!4712569 m!5638853))

(declare-fun m!5638855 () Bool)

(assert (=> start!478994 m!5638855))

(declare-fun m!5638857 () Bool)

(assert (=> start!478994 m!5638857))

(push 1)

(assert (not b!4712554))

(assert tp_is_empty!31161)

(assert (not b!4712561))

(assert (not b!4712566))

(assert tp_is_empty!31163)

(assert (not b!4712569))

(assert (not b!4712568))

(assert (not start!478994))

(assert (not b!4712565))

(assert (not b!4712557))

(assert (not b!4712559))

(assert (not b!4712562))

(assert (not b!4712571))

(assert (not b!4712563))

(assert (not b!4712560))

(assert (not b!4712558))

(assert (not b!4712567))

(assert (not b!4712555))

(assert (not b!4712556))

(assert (not b!4712570))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1499542 () Bool)

(declare-fun hash!4301 (Hashable!6336 K!14068) (_ BitVec 64))

(assert (=> d!1499542 (= (hash!4299 hashF!1323 key!4653) (hash!4301 hashF!1323 key!4653))))

(declare-fun bs!1102606 () Bool)

(assert (= bs!1102606 d!1499542))

(declare-fun m!5638921 () Bool)

(assert (=> bs!1102606 m!5638921))

(assert (=> b!4712557 d!1499542))

(declare-fun d!1499544 () Bool)

(assert (=> d!1499544 true))

(assert (=> d!1499544 true))

(declare-fun lambda!213150 () Int)

(declare-fun forall!11508 (List!52831 Int) Bool)

(assert (=> d!1499544 (= (allKeysSameHash!1793 oldBucket!34 hash!405 hashF!1323) (forall!11508 oldBucket!34 lambda!213150))))

(declare-fun bs!1102607 () Bool)

(assert (= bs!1102607 d!1499544))

(declare-fun m!5638923 () Bool)

(assert (=> bs!1102607 m!5638923))

(assert (=> b!4712567 d!1499544))

(declare-fun b!4712638 () Bool)

(declare-fun e!2939275 () List!52831)

(assert (=> b!4712638 (= e!2939275 (t!360073 (tail!8881 oldBucket!34)))))

(declare-fun b!4712641 () Bool)

(declare-fun e!2939276 () List!52831)

(assert (=> b!4712641 (= e!2939276 Nil!52707)))

(declare-fun b!4712639 () Bool)

(assert (=> b!4712639 (= e!2939275 e!2939276)))

(declare-fun c!805032 () Bool)

(assert (=> b!4712639 (= c!805032 (is-Cons!52707 (tail!8881 oldBucket!34)))))

(declare-fun d!1499546 () Bool)

(declare-fun lt!1876995 () List!52831)

(assert (=> d!1499546 (not (containsKey!3281 lt!1876995 key!4653))))

(assert (=> d!1499546 (= lt!1876995 e!2939275)))

(declare-fun c!805033 () Bool)

(assert (=> d!1499546 (= c!805033 (and (is-Cons!52707 (tail!8881 oldBucket!34)) (= (_1!30425 (h!59024 (tail!8881 oldBucket!34))) key!4653)))))

(assert (=> d!1499546 (noDuplicateKeys!1967 (tail!8881 oldBucket!34))))

(assert (=> d!1499546 (= (removePairForKey!1562 (tail!8881 oldBucket!34) key!4653) lt!1876995)))

(declare-fun b!4712640 () Bool)

(assert (=> b!4712640 (= e!2939276 (Cons!52707 (h!59024 (tail!8881 oldBucket!34)) (removePairForKey!1562 (t!360073 (tail!8881 oldBucket!34)) key!4653)))))

(assert (= (and d!1499546 c!805033) b!4712638))

(assert (= (and d!1499546 (not c!805033)) b!4712639))

(assert (= (and b!4712639 c!805032) b!4712640))

(assert (= (and b!4712639 (not c!805032)) b!4712641))

(declare-fun m!5638925 () Bool)

(assert (=> d!1499546 m!5638925))

(assert (=> d!1499546 m!5638837))

(declare-fun m!5638927 () Bool)

(assert (=> d!1499546 m!5638927))

(declare-fun m!5638929 () Bool)

(assert (=> b!4712640 m!5638929))

(assert (=> b!4712556 d!1499546))

(declare-fun d!1499548 () Bool)

(assert (=> d!1499548 (= (tail!8881 oldBucket!34) (t!360073 oldBucket!34))))

(assert (=> b!4712556 d!1499548))

(declare-fun d!1499550 () Bool)

(assert (=> d!1499550 (= (tail!8881 newBucket!218) (t!360073 newBucket!218))))

(assert (=> b!4712556 d!1499550))

(declare-fun d!1499552 () Bool)

(declare-fun tail!8885 (List!52832) List!52832)

(assert (=> d!1499552 (= (tail!8882 lm!2023) (ListLongMap!4354 (tail!8885 (toList!5823 lm!2023))))))

(declare-fun bs!1102608 () Bool)

(assert (= bs!1102608 d!1499552))

(declare-fun m!5638931 () Bool)

(assert (=> bs!1102608 m!5638931))

(assert (=> b!4712569 d!1499552))

(declare-fun d!1499554 () Bool)

(declare-fun res!1992078 () Bool)

(declare-fun e!2939281 () Bool)

(assert (=> d!1499554 (=> res!1992078 e!2939281)))

(assert (=> d!1499554 (= res!1992078 (is-Nil!52708 (toList!5823 lm!2023)))))

(assert (=> d!1499554 (= (forall!11506 (toList!5823 lm!2023) lambda!213142) e!2939281)))

(declare-fun b!4712646 () Bool)

(declare-fun e!2939282 () Bool)

(assert (=> b!4712646 (= e!2939281 e!2939282)))

(declare-fun res!1992079 () Bool)

(assert (=> b!4712646 (=> (not res!1992079) (not e!2939282))))

(declare-fun dynLambda!21784 (Int tuple2!54264) Bool)

(assert (=> b!4712646 (= res!1992079 (dynLambda!21784 lambda!213142 (h!59025 (toList!5823 lm!2023))))))

(declare-fun b!4712647 () Bool)

(assert (=> b!4712647 (= e!2939282 (forall!11506 (t!360074 (toList!5823 lm!2023)) lambda!213142))))

(assert (= (and d!1499554 (not res!1992078)) b!4712646))

(assert (= (and b!4712646 res!1992079) b!4712647))

(declare-fun b_lambda!177693 () Bool)

(assert (=> (not b_lambda!177693) (not b!4712646)))

(declare-fun m!5638933 () Bool)

(assert (=> b!4712646 m!5638933))

(declare-fun m!5638935 () Bool)

(assert (=> b!4712647 m!5638935))

(assert (=> start!478994 d!1499554))

(declare-fun d!1499556 () Bool)

(declare-fun isStrictlySorted!720 (List!52832) Bool)

(assert (=> d!1499556 (= (inv!67943 lm!2023) (isStrictlySorted!720 (toList!5823 lm!2023)))))

(declare-fun bs!1102609 () Bool)

(assert (= bs!1102609 d!1499556))

(declare-fun m!5638937 () Bool)

(assert (=> bs!1102609 m!5638937))

(assert (=> start!478994 d!1499556))

(declare-fun b!4712668 () Bool)

(declare-fun e!2939299 () Unit!128199)

(declare-fun lt!1877019 () Unit!128199)

(assert (=> b!4712668 (= e!2939299 lt!1877019)))

(declare-fun lt!1877014 () Unit!128199)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1801 (List!52831 K!14068) Unit!128199)

(assert (=> b!4712668 (= lt!1877014 (lemmaContainsKeyImpliesGetValueByKeyDefined!1801 (toList!5824 lt!1876956) key!4653))))

(declare-datatypes ((Option!12286 0))(
  ( (None!12285) (Some!12285 (v!46822 V!14314)) )
))
(declare-fun isDefined!9540 (Option!12286) Bool)

(declare-fun getValueByKey!1910 (List!52831 K!14068) Option!12286)

(assert (=> b!4712668 (isDefined!9540 (getValueByKey!1910 (toList!5824 lt!1876956) key!4653))))

(declare-fun lt!1877013 () Unit!128199)

(assert (=> b!4712668 (= lt!1877013 lt!1877014)))

(declare-fun lemmaInListThenGetKeysListContains!916 (List!52831 K!14068) Unit!128199)

(assert (=> b!4712668 (= lt!1877019 (lemmaInListThenGetKeysListContains!916 (toList!5824 lt!1876956) key!4653))))

(declare-fun call!329480 () Bool)

(assert (=> b!4712668 call!329480))

(declare-fun b!4712669 () Bool)

(declare-datatypes ((List!52835 0))(
  ( (Nil!52711) (Cons!52711 (h!59030 K!14068) (t!360077 List!52835)) )
))
(declare-fun e!2939297 () List!52835)

(declare-fun keys!18898 (ListMap!5187) List!52835)

(assert (=> b!4712669 (= e!2939297 (keys!18898 lt!1876956))))

(declare-fun b!4712670 () Bool)

(declare-fun e!2939296 () Bool)

(declare-fun e!2939300 () Bool)

(assert (=> b!4712670 (= e!2939296 e!2939300)))

(declare-fun res!1992086 () Bool)

(assert (=> b!4712670 (=> (not res!1992086) (not e!2939300))))

(assert (=> b!4712670 (= res!1992086 (isDefined!9540 (getValueByKey!1910 (toList!5824 lt!1876956) key!4653)))))

(declare-fun b!4712672 () Bool)

(declare-fun getKeysList!921 (List!52831) List!52835)

(assert (=> b!4712672 (= e!2939297 (getKeysList!921 (toList!5824 lt!1876956)))))

(declare-fun bm!329475 () Bool)

(declare-fun contains!16023 (List!52835 K!14068) Bool)

(assert (=> bm!329475 (= call!329480 (contains!16023 e!2939297 key!4653))))

(declare-fun c!805040 () Bool)

(declare-fun c!805042 () Bool)

(assert (=> bm!329475 (= c!805040 c!805042)))

(declare-fun b!4712673 () Bool)

(declare-fun e!2939295 () Bool)

(assert (=> b!4712673 (= e!2939295 (not (contains!16023 (keys!18898 lt!1876956) key!4653)))))

(declare-fun b!4712674 () Bool)

(assert (=> b!4712674 (= e!2939300 (contains!16023 (keys!18898 lt!1876956) key!4653))))

(declare-fun b!4712675 () Bool)

(assert (=> b!4712675 false))

(declare-fun lt!1877017 () Unit!128199)

(declare-fun lt!1877012 () Unit!128199)

(assert (=> b!4712675 (= lt!1877017 lt!1877012)))

(declare-fun containsKey!3283 (List!52831 K!14068) Bool)

(assert (=> b!4712675 (containsKey!3283 (toList!5824 lt!1876956) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!920 (List!52831 K!14068) Unit!128199)

(assert (=> b!4712675 (= lt!1877012 (lemmaInGetKeysListThenContainsKey!920 (toList!5824 lt!1876956) key!4653))))

(declare-fun e!2939298 () Unit!128199)

(declare-fun Unit!128203 () Unit!128199)

(assert (=> b!4712675 (= e!2939298 Unit!128203)))

(declare-fun b!4712676 () Bool)

(assert (=> b!4712676 (= e!2939299 e!2939298)))

(declare-fun c!805041 () Bool)

(assert (=> b!4712676 (= c!805041 call!329480)))

(declare-fun b!4712671 () Bool)

(declare-fun Unit!128204 () Unit!128199)

(assert (=> b!4712671 (= e!2939298 Unit!128204)))

(declare-fun d!1499558 () Bool)

(assert (=> d!1499558 e!2939296))

(declare-fun res!1992087 () Bool)

(assert (=> d!1499558 (=> res!1992087 e!2939296)))

(assert (=> d!1499558 (= res!1992087 e!2939295)))

(declare-fun res!1992088 () Bool)

(assert (=> d!1499558 (=> (not res!1992088) (not e!2939295))))

(declare-fun lt!1877015 () Bool)

(assert (=> d!1499558 (= res!1992088 (not lt!1877015))))

(declare-fun lt!1877018 () Bool)

(assert (=> d!1499558 (= lt!1877015 lt!1877018)))

(declare-fun lt!1877016 () Unit!128199)

(assert (=> d!1499558 (= lt!1877016 e!2939299)))

(assert (=> d!1499558 (= c!805042 lt!1877018)))

(assert (=> d!1499558 (= lt!1877018 (containsKey!3283 (toList!5824 lt!1876956) key!4653))))

(assert (=> d!1499558 (= (contains!16019 lt!1876956 key!4653) lt!1877015)))

(assert (= (and d!1499558 c!805042) b!4712668))

(assert (= (and d!1499558 (not c!805042)) b!4712676))

(assert (= (and b!4712676 c!805041) b!4712675))

(assert (= (and b!4712676 (not c!805041)) b!4712671))

(assert (= (or b!4712668 b!4712676) bm!329475))

(assert (= (and bm!329475 c!805040) b!4712672))

(assert (= (and bm!329475 (not c!805040)) b!4712669))

(assert (= (and d!1499558 res!1992088) b!4712673))

(assert (= (and d!1499558 (not res!1992087)) b!4712670))

(assert (= (and b!4712670 res!1992086) b!4712674))

(declare-fun m!5638943 () Bool)

(assert (=> b!4712673 m!5638943))

(assert (=> b!4712673 m!5638943))

(declare-fun m!5638945 () Bool)

(assert (=> b!4712673 m!5638945))

(declare-fun m!5638947 () Bool)

(assert (=> b!4712672 m!5638947))

(assert (=> b!4712669 m!5638943))

(assert (=> b!4712674 m!5638943))

(assert (=> b!4712674 m!5638943))

(assert (=> b!4712674 m!5638945))

(declare-fun m!5638949 () Bool)

(assert (=> d!1499558 m!5638949))

(assert (=> b!4712675 m!5638949))

(declare-fun m!5638951 () Bool)

(assert (=> b!4712675 m!5638951))

(declare-fun m!5638953 () Bool)

(assert (=> bm!329475 m!5638953))

(declare-fun m!5638955 () Bool)

(assert (=> b!4712670 m!5638955))

(assert (=> b!4712670 m!5638955))

(declare-fun m!5638957 () Bool)

(assert (=> b!4712670 m!5638957))

(declare-fun m!5638959 () Bool)

(assert (=> b!4712668 m!5638959))

(assert (=> b!4712668 m!5638955))

(assert (=> b!4712668 m!5638955))

(assert (=> b!4712668 m!5638957))

(declare-fun m!5638961 () Bool)

(assert (=> b!4712668 m!5638961))

(assert (=> b!4712568 d!1499558))

(declare-fun bs!1102614 () Bool)

(declare-fun d!1499566 () Bool)

(assert (= bs!1102614 (and d!1499566 start!478994)))

(declare-fun lambda!213159 () Int)

(assert (=> bs!1102614 (= lambda!213159 lambda!213142)))

(declare-fun lt!1877022 () ListMap!5187)

(declare-fun invariantList!1481 (List!52831) Bool)

(assert (=> d!1499566 (invariantList!1481 (toList!5824 lt!1877022))))

(declare-fun e!2939309 () ListMap!5187)

(assert (=> d!1499566 (= lt!1877022 e!2939309)))

(declare-fun c!805045 () Bool)

(assert (=> d!1499566 (= c!805045 (is-Cons!52708 (toList!5823 lm!2023)))))

(assert (=> d!1499566 (forall!11506 (toList!5823 lm!2023) lambda!213159)))

(assert (=> d!1499566 (= (extractMap!1993 (toList!5823 lm!2023)) lt!1877022)))

(declare-fun b!4712691 () Bool)

(assert (=> b!4712691 (= e!2939309 (addToMapMapFromBucket!1397 (_2!30426 (h!59025 (toList!5823 lm!2023))) (extractMap!1993 (t!360074 (toList!5823 lm!2023)))))))

(declare-fun b!4712692 () Bool)

(assert (=> b!4712692 (= e!2939309 (ListMap!5188 Nil!52707))))

(assert (= (and d!1499566 c!805045) b!4712691))

(assert (= (and d!1499566 (not c!805045)) b!4712692))

(declare-fun m!5638969 () Bool)

(assert (=> d!1499566 m!5638969))

(declare-fun m!5638971 () Bool)

(assert (=> d!1499566 m!5638971))

(assert (=> b!4712691 m!5638801))

(assert (=> b!4712691 m!5638801))

(assert (=> b!4712691 m!5638803))

(assert (=> b!4712568 d!1499566))

(declare-fun bs!1102615 () Bool)

(declare-fun b!4712707 () Bool)

(assert (= bs!1102615 (and b!4712707 d!1499544)))

(declare-fun lambda!213188 () Int)

(assert (=> bs!1102615 (not (= lambda!213188 lambda!213150))))

(assert (=> b!4712707 true))

(declare-fun bs!1102616 () Bool)

(declare-fun b!4712705 () Bool)

(assert (= bs!1102616 (and b!4712705 d!1499544)))

(declare-fun lambda!213189 () Int)

(assert (=> bs!1102616 (not (= lambda!213189 lambda!213150))))

(declare-fun bs!1102617 () Bool)

(assert (= bs!1102617 (and b!4712705 b!4712707)))

(assert (=> bs!1102617 (= lambda!213189 lambda!213188)))

(assert (=> b!4712705 true))

(declare-fun lambda!213190 () Int)

(assert (=> bs!1102616 (not (= lambda!213190 lambda!213150))))

(declare-fun lt!1877072 () ListMap!5187)

(assert (=> bs!1102617 (= (= lt!1877072 (extractMap!1993 (t!360074 (toList!5823 lm!2023)))) (= lambda!213190 lambda!213188))))

(assert (=> b!4712705 (= (= lt!1877072 (extractMap!1993 (t!360074 (toList!5823 lm!2023)))) (= lambda!213190 lambda!213189))))

(assert (=> b!4712705 true))

(declare-fun bs!1102618 () Bool)

(declare-fun d!1499572 () Bool)

(assert (= bs!1102618 (and d!1499572 d!1499544)))

(declare-fun lambda!213191 () Int)

(assert (=> bs!1102618 (not (= lambda!213191 lambda!213150))))

(declare-fun bs!1102619 () Bool)

(assert (= bs!1102619 (and d!1499572 b!4712707)))

(declare-fun lt!1877067 () ListMap!5187)

(assert (=> bs!1102619 (= (= lt!1877067 (extractMap!1993 (t!360074 (toList!5823 lm!2023)))) (= lambda!213191 lambda!213188))))

(declare-fun bs!1102620 () Bool)

(assert (= bs!1102620 (and d!1499572 b!4712705)))

(assert (=> bs!1102620 (= (= lt!1877067 (extractMap!1993 (t!360074 (toList!5823 lm!2023)))) (= lambda!213191 lambda!213189))))

(assert (=> bs!1102620 (= (= lt!1877067 lt!1877072) (= lambda!213191 lambda!213190))))

(assert (=> d!1499572 true))

(declare-fun c!805048 () Bool)

(declare-fun call!329488 () Bool)

(declare-fun bm!329482 () Bool)

(assert (=> bm!329482 (= call!329488 (forall!11508 (toList!5824 (extractMap!1993 (t!360074 (toList!5823 lm!2023)))) (ite c!805048 lambda!213188 lambda!213189)))))

(declare-fun e!2939317 () Bool)

(assert (=> d!1499572 e!2939317))

(declare-fun res!1992101 () Bool)

(assert (=> d!1499572 (=> (not res!1992101) (not e!2939317))))

(assert (=> d!1499572 (= res!1992101 (forall!11508 (_2!30426 (h!59025 (toList!5823 lm!2023))) lambda!213191))))

(declare-fun e!2939316 () ListMap!5187)

(assert (=> d!1499572 (= lt!1877067 e!2939316)))

(assert (=> d!1499572 (= c!805048 (is-Nil!52707 (_2!30426 (h!59025 (toList!5823 lm!2023)))))))

(assert (=> d!1499572 (noDuplicateKeys!1967 (_2!30426 (h!59025 (toList!5823 lm!2023))))))

(assert (=> d!1499572 (= (addToMapMapFromBucket!1397 (_2!30426 (h!59025 (toList!5823 lm!2023))) (extractMap!1993 (t!360074 (toList!5823 lm!2023)))) lt!1877067)))

(declare-fun b!4712703 () Bool)

(declare-fun res!1992103 () Bool)

(assert (=> b!4712703 (=> (not res!1992103) (not e!2939317))))

(assert (=> b!4712703 (= res!1992103 (forall!11508 (toList!5824 (extractMap!1993 (t!360074 (toList!5823 lm!2023)))) lambda!213191))))

(declare-fun b!4712704 () Bool)

(assert (=> b!4712704 (= e!2939317 (invariantList!1481 (toList!5824 lt!1877067)))))

(assert (=> b!4712705 (= e!2939316 lt!1877072)))

(declare-fun lt!1877066 () ListMap!5187)

(declare-fun +!2229 (ListMap!5187 tuple2!54262) ListMap!5187)

(assert (=> b!4712705 (= lt!1877066 (+!2229 (extractMap!1993 (t!360074 (toList!5823 lm!2023))) (h!59024 (_2!30426 (h!59025 (toList!5823 lm!2023))))))))

(assert (=> b!4712705 (= lt!1877072 (addToMapMapFromBucket!1397 (t!360073 (_2!30426 (h!59025 (toList!5823 lm!2023)))) (+!2229 (extractMap!1993 (t!360074 (toList!5823 lm!2023))) (h!59024 (_2!30426 (h!59025 (toList!5823 lm!2023)))))))))

(declare-fun lt!1877080 () Unit!128199)

(declare-fun call!329489 () Unit!128199)

(assert (=> b!4712705 (= lt!1877080 call!329489)))

(assert (=> b!4712705 call!329488))

(declare-fun lt!1877079 () Unit!128199)

(assert (=> b!4712705 (= lt!1877079 lt!1877080)))

(assert (=> b!4712705 (forall!11508 (toList!5824 lt!1877066) lambda!213190)))

(declare-fun lt!1877083 () Unit!128199)

(declare-fun Unit!128205 () Unit!128199)

(assert (=> b!4712705 (= lt!1877083 Unit!128205)))

(assert (=> b!4712705 (forall!11508 (t!360073 (_2!30426 (h!59025 (toList!5823 lm!2023)))) lambda!213190)))

(declare-fun lt!1877074 () Unit!128199)

(declare-fun Unit!128206 () Unit!128199)

(assert (=> b!4712705 (= lt!1877074 Unit!128206)))

(declare-fun lt!1877069 () Unit!128199)

(declare-fun Unit!128207 () Unit!128199)

(assert (=> b!4712705 (= lt!1877069 Unit!128207)))

(declare-fun lt!1877076 () Unit!128199)

(declare-fun forallContained!3577 (List!52831 Int tuple2!54262) Unit!128199)

(assert (=> b!4712705 (= lt!1877076 (forallContained!3577 (toList!5824 lt!1877066) lambda!213190 (h!59024 (_2!30426 (h!59025 (toList!5823 lm!2023))))))))

(assert (=> b!4712705 (contains!16019 lt!1877066 (_1!30425 (h!59024 (_2!30426 (h!59025 (toList!5823 lm!2023))))))))

(declare-fun lt!1877068 () Unit!128199)

(declare-fun Unit!128208 () Unit!128199)

(assert (=> b!4712705 (= lt!1877068 Unit!128208)))

(assert (=> b!4712705 (contains!16019 lt!1877072 (_1!30425 (h!59024 (_2!30426 (h!59025 (toList!5823 lm!2023))))))))

(declare-fun lt!1877075 () Unit!128199)

(declare-fun Unit!128209 () Unit!128199)

(assert (=> b!4712705 (= lt!1877075 Unit!128209)))

(assert (=> b!4712705 (forall!11508 (_2!30426 (h!59025 (toList!5823 lm!2023))) lambda!213190)))

(declare-fun lt!1877071 () Unit!128199)

(declare-fun Unit!128210 () Unit!128199)

(assert (=> b!4712705 (= lt!1877071 Unit!128210)))

(assert (=> b!4712705 (forall!11508 (toList!5824 lt!1877066) lambda!213190)))

(declare-fun lt!1877065 () Unit!128199)

(declare-fun Unit!128211 () Unit!128199)

(assert (=> b!4712705 (= lt!1877065 Unit!128211)))

(declare-fun lt!1877084 () Unit!128199)

(declare-fun Unit!128212 () Unit!128199)

(assert (=> b!4712705 (= lt!1877084 Unit!128212)))

(declare-fun lt!1877081 () Unit!128199)

(declare-fun addForallContainsKeyThenBeforeAdding!768 (ListMap!5187 ListMap!5187 K!14068 V!14314) Unit!128199)

(assert (=> b!4712705 (= lt!1877081 (addForallContainsKeyThenBeforeAdding!768 (extractMap!1993 (t!360074 (toList!5823 lm!2023))) lt!1877072 (_1!30425 (h!59024 (_2!30426 (h!59025 (toList!5823 lm!2023))))) (_2!30425 (h!59024 (_2!30426 (h!59025 (toList!5823 lm!2023)))))))))

(assert (=> b!4712705 (forall!11508 (toList!5824 (extractMap!1993 (t!360074 (toList!5823 lm!2023)))) lambda!213190)))

(declare-fun lt!1877082 () Unit!128199)

(assert (=> b!4712705 (= lt!1877082 lt!1877081)))

(assert (=> b!4712705 (forall!11508 (toList!5824 (extractMap!1993 (t!360074 (toList!5823 lm!2023)))) lambda!213190)))

(declare-fun lt!1877077 () Unit!128199)

(declare-fun Unit!128213 () Unit!128199)

(assert (=> b!4712705 (= lt!1877077 Unit!128213)))

(declare-fun res!1992102 () Bool)

(declare-fun call!329487 () Bool)

(assert (=> b!4712705 (= res!1992102 call!329487)))

(declare-fun e!2939318 () Bool)

(assert (=> b!4712705 (=> (not res!1992102) (not e!2939318))))

(assert (=> b!4712705 e!2939318))

(declare-fun lt!1877078 () Unit!128199)

(declare-fun Unit!128214 () Unit!128199)

(assert (=> b!4712705 (= lt!1877078 Unit!128214)))

(declare-fun bm!329483 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!769 (ListMap!5187) Unit!128199)

(assert (=> bm!329483 (= call!329489 (lemmaContainsAllItsOwnKeys!769 (extractMap!1993 (t!360074 (toList!5823 lm!2023)))))))

(declare-fun bm!329484 () Bool)

(assert (=> bm!329484 (= call!329487 (forall!11508 (ite c!805048 (toList!5824 (extractMap!1993 (t!360074 (toList!5823 lm!2023)))) (_2!30426 (h!59025 (toList!5823 lm!2023)))) (ite c!805048 lambda!213188 lambda!213190)))))

(declare-fun b!4712706 () Bool)

(assert (=> b!4712706 (= e!2939318 (forall!11508 (toList!5824 (extractMap!1993 (t!360074 (toList!5823 lm!2023)))) lambda!213190))))

(assert (=> b!4712707 (= e!2939316 (extractMap!1993 (t!360074 (toList!5823 lm!2023))))))

(declare-fun lt!1877070 () Unit!128199)

(assert (=> b!4712707 (= lt!1877070 call!329489)))

(assert (=> b!4712707 call!329488))

(declare-fun lt!1877085 () Unit!128199)

(assert (=> b!4712707 (= lt!1877085 lt!1877070)))

(assert (=> b!4712707 call!329487))

(declare-fun lt!1877073 () Unit!128199)

(declare-fun Unit!128215 () Unit!128199)

(assert (=> b!4712707 (= lt!1877073 Unit!128215)))

(assert (= (and d!1499572 c!805048) b!4712707))

(assert (= (and d!1499572 (not c!805048)) b!4712705))

(assert (= (and b!4712705 res!1992102) b!4712706))

(assert (= (or b!4712707 b!4712705) bm!329483))

(assert (= (or b!4712707 b!4712705) bm!329482))

(assert (= (or b!4712707 b!4712705) bm!329484))

(assert (= (and d!1499572 res!1992101) b!4712703))

(assert (= (and b!4712703 res!1992103) b!4712704))

(declare-fun m!5638973 () Bool)

(assert (=> d!1499572 m!5638973))

(declare-fun m!5638975 () Bool)

(assert (=> d!1499572 m!5638975))

(assert (=> bm!329483 m!5638801))

(declare-fun m!5638977 () Bool)

(assert (=> bm!329483 m!5638977))

(declare-fun m!5638979 () Bool)

(assert (=> bm!329482 m!5638979))

(declare-fun m!5638981 () Bool)

(assert (=> b!4712706 m!5638981))

(declare-fun m!5638983 () Bool)

(assert (=> b!4712704 m!5638983))

(declare-fun m!5638985 () Bool)

(assert (=> b!4712703 m!5638985))

(declare-fun m!5638987 () Bool)

(assert (=> bm!329484 m!5638987))

(assert (=> b!4712705 m!5638801))

(declare-fun m!5638989 () Bool)

(assert (=> b!4712705 m!5638989))

(assert (=> b!4712705 m!5638981))

(declare-fun m!5638991 () Bool)

(assert (=> b!4712705 m!5638991))

(declare-fun m!5638993 () Bool)

(assert (=> b!4712705 m!5638993))

(declare-fun m!5638995 () Bool)

(assert (=> b!4712705 m!5638995))

(assert (=> b!4712705 m!5638801))

(declare-fun m!5638997 () Bool)

(assert (=> b!4712705 m!5638997))

(declare-fun m!5638999 () Bool)

(assert (=> b!4712705 m!5638999))

(declare-fun m!5639001 () Bool)

(assert (=> b!4712705 m!5639001))

(assert (=> b!4712705 m!5638981))

(assert (=> b!4712705 m!5638997))

(declare-fun m!5639003 () Bool)

(assert (=> b!4712705 m!5639003))

(assert (=> b!4712705 m!5638991))

(declare-fun m!5639005 () Bool)

(assert (=> b!4712705 m!5639005))

(assert (=> b!4712559 d!1499572))

(declare-fun bs!1102621 () Bool)

(declare-fun d!1499574 () Bool)

(assert (= bs!1102621 (and d!1499574 start!478994)))

(declare-fun lambda!213192 () Int)

(assert (=> bs!1102621 (= lambda!213192 lambda!213142)))

(declare-fun bs!1102622 () Bool)

(assert (= bs!1102622 (and d!1499574 d!1499566)))

(assert (=> bs!1102622 (= lambda!213192 lambda!213159)))

(declare-fun lt!1877086 () ListMap!5187)

(assert (=> d!1499574 (invariantList!1481 (toList!5824 lt!1877086))))

(declare-fun e!2939319 () ListMap!5187)

(assert (=> d!1499574 (= lt!1877086 e!2939319)))

(declare-fun c!805049 () Bool)

(assert (=> d!1499574 (= c!805049 (is-Cons!52708 (t!360074 (toList!5823 lm!2023))))))

(assert (=> d!1499574 (forall!11506 (t!360074 (toList!5823 lm!2023)) lambda!213192)))

(assert (=> d!1499574 (= (extractMap!1993 (t!360074 (toList!5823 lm!2023))) lt!1877086)))

(declare-fun b!4712710 () Bool)

(assert (=> b!4712710 (= e!2939319 (addToMapMapFromBucket!1397 (_2!30426 (h!59025 (t!360074 (toList!5823 lm!2023)))) (extractMap!1993 (t!360074 (t!360074 (toList!5823 lm!2023))))))))

(declare-fun b!4712711 () Bool)

(assert (=> b!4712711 (= e!2939319 (ListMap!5188 Nil!52707))))

(assert (= (and d!1499574 c!805049) b!4712710))

(assert (= (and d!1499574 (not c!805049)) b!4712711))

(declare-fun m!5639007 () Bool)

(assert (=> d!1499574 m!5639007))

(declare-fun m!5639009 () Bool)

(assert (=> d!1499574 m!5639009))

(declare-fun m!5639011 () Bool)

(assert (=> b!4712710 m!5639011))

(assert (=> b!4712710 m!5639011))

(declare-fun m!5639013 () Bool)

(assert (=> b!4712710 m!5639013))

(assert (=> b!4712559 d!1499574))

(declare-fun d!1499576 () Bool)

(declare-fun res!1992108 () Bool)

(declare-fun e!2939324 () Bool)

(assert (=> d!1499576 (=> res!1992108 e!2939324)))

(assert (=> d!1499576 (= res!1992108 (not (is-Cons!52707 newBucket!218)))))

(assert (=> d!1499576 (= (noDuplicateKeys!1967 newBucket!218) e!2939324)))

(declare-fun b!4712716 () Bool)

(declare-fun e!2939325 () Bool)

(assert (=> b!4712716 (= e!2939324 e!2939325)))

(declare-fun res!1992109 () Bool)

(assert (=> b!4712716 (=> (not res!1992109) (not e!2939325))))

(assert (=> b!4712716 (= res!1992109 (not (containsKey!3281 (t!360073 newBucket!218) (_1!30425 (h!59024 newBucket!218)))))))

(declare-fun b!4712717 () Bool)

(assert (=> b!4712717 (= e!2939325 (noDuplicateKeys!1967 (t!360073 newBucket!218)))))

(assert (= (and d!1499576 (not res!1992108)) b!4712716))

(assert (= (and b!4712716 res!1992109) b!4712717))

(declare-fun m!5639015 () Bool)

(assert (=> b!4712716 m!5639015))

(declare-fun m!5639017 () Bool)

(assert (=> b!4712717 m!5639017))

(assert (=> b!4712561 d!1499576))

(declare-fun b!4712718 () Bool)

(declare-fun e!2939326 () List!52831)

(assert (=> b!4712718 (= e!2939326 (t!360073 (t!360073 oldBucket!34)))))

(declare-fun b!4712721 () Bool)

(declare-fun e!2939327 () List!52831)

(assert (=> b!4712721 (= e!2939327 Nil!52707)))

(declare-fun b!4712719 () Bool)

(assert (=> b!4712719 (= e!2939326 e!2939327)))

(declare-fun c!805050 () Bool)

(assert (=> b!4712719 (= c!805050 (is-Cons!52707 (t!360073 oldBucket!34)))))

(declare-fun d!1499578 () Bool)

(declare-fun lt!1877087 () List!52831)

(assert (=> d!1499578 (not (containsKey!3281 lt!1877087 key!4653))))

(assert (=> d!1499578 (= lt!1877087 e!2939326)))

(declare-fun c!805051 () Bool)

(assert (=> d!1499578 (= c!805051 (and (is-Cons!52707 (t!360073 oldBucket!34)) (= (_1!30425 (h!59024 (t!360073 oldBucket!34))) key!4653)))))

(assert (=> d!1499578 (noDuplicateKeys!1967 (t!360073 oldBucket!34))))

(assert (=> d!1499578 (= (removePairForKey!1562 (t!360073 oldBucket!34) key!4653) lt!1877087)))

(declare-fun b!4712720 () Bool)

(assert (=> b!4712720 (= e!2939327 (Cons!52707 (h!59024 (t!360073 oldBucket!34)) (removePairForKey!1562 (t!360073 (t!360073 oldBucket!34)) key!4653)))))

(assert (= (and d!1499578 c!805051) b!4712718))

(assert (= (and d!1499578 (not c!805051)) b!4712719))

(assert (= (and b!4712719 c!805050) b!4712720))

(assert (= (and b!4712719 (not c!805050)) b!4712721))

(declare-fun m!5639019 () Bool)

(assert (=> d!1499578 m!5639019))

(declare-fun m!5639021 () Bool)

(assert (=> d!1499578 m!5639021))

(declare-fun m!5639023 () Bool)

(assert (=> b!4712720 m!5639023))

(assert (=> b!4712571 d!1499578))

(declare-fun b!4712722 () Bool)

(declare-fun e!2939328 () List!52831)

(assert (=> b!4712722 (= e!2939328 (t!360073 oldBucket!34))))

(declare-fun b!4712725 () Bool)

(declare-fun e!2939329 () List!52831)

(assert (=> b!4712725 (= e!2939329 Nil!52707)))

(declare-fun b!4712723 () Bool)

(assert (=> b!4712723 (= e!2939328 e!2939329)))

(declare-fun c!805052 () Bool)

(assert (=> b!4712723 (= c!805052 (is-Cons!52707 oldBucket!34))))

(declare-fun d!1499580 () Bool)

(declare-fun lt!1877088 () List!52831)

(assert (=> d!1499580 (not (containsKey!3281 lt!1877088 key!4653))))

(assert (=> d!1499580 (= lt!1877088 e!2939328)))

(declare-fun c!805053 () Bool)

(assert (=> d!1499580 (= c!805053 (and (is-Cons!52707 oldBucket!34) (= (_1!30425 (h!59024 oldBucket!34)) key!4653)))))

(assert (=> d!1499580 (noDuplicateKeys!1967 oldBucket!34)))

(assert (=> d!1499580 (= (removePairForKey!1562 oldBucket!34 key!4653) lt!1877088)))

(declare-fun b!4712724 () Bool)

(assert (=> b!4712724 (= e!2939329 (Cons!52707 (h!59024 oldBucket!34) (removePairForKey!1562 (t!360073 oldBucket!34) key!4653)))))

(assert (= (and d!1499580 c!805053) b!4712722))

(assert (= (and d!1499580 (not c!805053)) b!4712723))

(assert (= (and b!4712723 c!805052) b!4712724))

(assert (= (and b!4712723 (not c!805052)) b!4712725))

(declare-fun m!5639025 () Bool)

(assert (=> d!1499580 m!5639025))

(assert (=> d!1499580 m!5638845))

(assert (=> b!4712724 m!5638847))

(assert (=> b!4712560 d!1499580))

(declare-fun bs!1102623 () Bool)

(declare-fun d!1499582 () Bool)

(assert (= bs!1102623 (and d!1499582 b!4712705)))

(declare-fun lambda!213193 () Int)

(assert (=> bs!1102623 (not (= lambda!213193 lambda!213189))))

(declare-fun bs!1102624 () Bool)

(assert (= bs!1102624 (and d!1499582 b!4712707)))

(assert (=> bs!1102624 (not (= lambda!213193 lambda!213188))))

(declare-fun bs!1102625 () Bool)

(assert (= bs!1102625 (and d!1499582 d!1499544)))

(assert (=> bs!1102625 (= lambda!213193 lambda!213150)))

(declare-fun bs!1102626 () Bool)

(assert (= bs!1102626 (and d!1499582 d!1499572)))

(assert (=> bs!1102626 (not (= lambda!213193 lambda!213191))))

(assert (=> bs!1102623 (not (= lambda!213193 lambda!213190))))

(assert (=> d!1499582 true))

(assert (=> d!1499582 true))

(assert (=> d!1499582 (= (allKeysSameHash!1793 newBucket!218 hash!405 hashF!1323) (forall!11508 newBucket!218 lambda!213193))))

(declare-fun bs!1102627 () Bool)

(assert (= bs!1102627 d!1499582))

(declare-fun m!5639027 () Bool)

(assert (=> bs!1102627 m!5639027))

(assert (=> b!4712562 d!1499582))

(declare-fun bs!1102628 () Bool)

(declare-fun d!1499584 () Bool)

(assert (= bs!1102628 (and d!1499584 start!478994)))

(declare-fun lambda!213196 () Int)

(assert (=> bs!1102628 (not (= lambda!213196 lambda!213142))))

(declare-fun bs!1102629 () Bool)

(assert (= bs!1102629 (and d!1499584 d!1499566)))

(assert (=> bs!1102629 (not (= lambda!213196 lambda!213159))))

(declare-fun bs!1102630 () Bool)

(assert (= bs!1102630 (and d!1499584 d!1499574)))

(assert (=> bs!1102630 (not (= lambda!213196 lambda!213192))))

(assert (=> d!1499584 true))

(assert (=> d!1499584 (= (allKeysSameHashInMap!1881 lm!2023 hashF!1323) (forall!11506 (toList!5823 lm!2023) lambda!213196))))

(declare-fun bs!1102631 () Bool)

(assert (= bs!1102631 d!1499584))

(declare-fun m!5639029 () Bool)

(assert (=> bs!1102631 m!5639029))

(assert (=> b!4712563 d!1499584))

(declare-fun d!1499586 () Bool)

(declare-fun res!1992110 () Bool)

(declare-fun e!2939330 () Bool)

(assert (=> d!1499586 (=> res!1992110 e!2939330)))

(assert (=> d!1499586 (= res!1992110 (not (is-Cons!52707 oldBucket!34)))))

(assert (=> d!1499586 (= (noDuplicateKeys!1967 oldBucket!34) e!2939330)))

(declare-fun b!4712728 () Bool)

(declare-fun e!2939331 () Bool)

(assert (=> b!4712728 (= e!2939330 e!2939331)))

(declare-fun res!1992111 () Bool)

(assert (=> b!4712728 (=> (not res!1992111) (not e!2939331))))

(assert (=> b!4712728 (= res!1992111 (not (containsKey!3281 (t!360073 oldBucket!34) (_1!30425 (h!59024 oldBucket!34)))))))

(declare-fun b!4712729 () Bool)

(assert (=> b!4712729 (= e!2939331 (noDuplicateKeys!1967 (t!360073 oldBucket!34)))))

(assert (= (and d!1499586 (not res!1992110)) b!4712728))

(assert (= (and b!4712728 res!1992111) b!4712729))

(declare-fun m!5639031 () Bool)

(assert (=> b!4712728 m!5639031))

(assert (=> b!4712729 m!5639021))

(assert (=> b!4712565 d!1499586))

(declare-fun d!1499588 () Bool)

(declare-datatypes ((Option!12287 0))(
  ( (None!12286) (Some!12286 (v!46824 List!52831)) )
))
(declare-fun get!17668 (Option!12287) List!52831)

(declare-fun getValueByKey!1911 (List!52832 (_ BitVec 64)) Option!12287)

(assert (=> d!1499588 (= (apply!12416 lm!2023 lt!1876960) (get!17668 (getValueByKey!1911 (toList!5823 lm!2023) lt!1876960)))))

(declare-fun bs!1102632 () Bool)

(assert (= bs!1102632 d!1499588))

(declare-fun m!5639033 () Bool)

(assert (=> bs!1102632 m!5639033))

(assert (=> bs!1102632 m!5639033))

(declare-fun m!5639035 () Bool)

(assert (=> bs!1102632 m!5639035))

(assert (=> b!4712554 d!1499588))

(declare-fun b!4712746 () Bool)

(declare-fun e!2939343 () Option!12284)

(assert (=> b!4712746 (= e!2939343 None!12283)))

(declare-fun b!4712747 () Bool)

(declare-fun e!2939344 () Bool)

(declare-fun lt!1877091 () Option!12284)

(declare-fun contains!16024 (List!52831 tuple2!54262) Bool)

(declare-fun get!17669 (Option!12284) tuple2!54262)

(assert (=> b!4712747 (= e!2939344 (contains!16024 lt!1876954 (get!17669 lt!1877091)))))

(declare-fun d!1499590 () Bool)

(declare-fun e!2939345 () Bool)

(assert (=> d!1499590 e!2939345))

(declare-fun res!1992123 () Bool)

(assert (=> d!1499590 (=> res!1992123 e!2939345)))

(declare-fun e!2939346 () Bool)

(assert (=> d!1499590 (= res!1992123 e!2939346)))

(declare-fun res!1992122 () Bool)

(assert (=> d!1499590 (=> (not res!1992122) (not e!2939346))))

(declare-fun isEmpty!29153 (Option!12284) Bool)

(assert (=> d!1499590 (= res!1992122 (isEmpty!29153 lt!1877091))))

(declare-fun e!2939342 () Option!12284)

(assert (=> d!1499590 (= lt!1877091 e!2939342)))

(declare-fun c!805059 () Bool)

(assert (=> d!1499590 (= c!805059 (and (is-Cons!52707 lt!1876954) (= (_1!30425 (h!59024 lt!1876954)) key!4653)))))

(assert (=> d!1499590 (noDuplicateKeys!1967 lt!1876954)))

(assert (=> d!1499590 (= (getPair!533 lt!1876954 key!4653) lt!1877091)))

(declare-fun b!4712748 () Bool)

(assert (=> b!4712748 (= e!2939343 (getPair!533 (t!360073 lt!1876954) key!4653))))

(declare-fun b!4712749 () Bool)

(assert (=> b!4712749 (= e!2939342 (Some!12283 (h!59024 lt!1876954)))))

(declare-fun b!4712750 () Bool)

(declare-fun res!1992121 () Bool)

(assert (=> b!4712750 (=> (not res!1992121) (not e!2939344))))

(assert (=> b!4712750 (= res!1992121 (= (_1!30425 (get!17669 lt!1877091)) key!4653))))

(declare-fun b!4712751 () Bool)

(assert (=> b!4712751 (= e!2939345 e!2939344)))

(declare-fun res!1992120 () Bool)

(assert (=> b!4712751 (=> (not res!1992120) (not e!2939344))))

(assert (=> b!4712751 (= res!1992120 (isDefined!9538 lt!1877091))))

(declare-fun b!4712752 () Bool)

(assert (=> b!4712752 (= e!2939342 e!2939343)))

(declare-fun c!805058 () Bool)

(assert (=> b!4712752 (= c!805058 (is-Cons!52707 lt!1876954))))

(declare-fun b!4712753 () Bool)

(assert (=> b!4712753 (= e!2939346 (not (containsKey!3281 lt!1876954 key!4653)))))

(assert (= (and d!1499590 c!805059) b!4712749))

(assert (= (and d!1499590 (not c!805059)) b!4712752))

(assert (= (and b!4712752 c!805058) b!4712748))

(assert (= (and b!4712752 (not c!805058)) b!4712746))

(assert (= (and d!1499590 res!1992122) b!4712753))

(assert (= (and d!1499590 (not res!1992123)) b!4712751))

(assert (= (and b!4712751 res!1992120) b!4712750))

(assert (= (and b!4712750 res!1992121) b!4712747))

(declare-fun m!5639037 () Bool)

(assert (=> b!4712753 m!5639037))

(declare-fun m!5639039 () Bool)

(assert (=> b!4712747 m!5639039))

(assert (=> b!4712747 m!5639039))

(declare-fun m!5639041 () Bool)

(assert (=> b!4712747 m!5639041))

(declare-fun m!5639043 () Bool)

(assert (=> b!4712748 m!5639043))

(assert (=> b!4712750 m!5639039))

(declare-fun m!5639045 () Bool)

(assert (=> b!4712751 m!5639045))

(declare-fun m!5639047 () Bool)

(assert (=> d!1499590 m!5639047))

(declare-fun m!5639049 () Bool)

(assert (=> d!1499590 m!5639049))

(assert (=> b!4712554 d!1499590))

(declare-fun bs!1102633 () Bool)

(declare-fun d!1499592 () Bool)

(assert (= bs!1102633 (and d!1499592 start!478994)))

(declare-fun lambda!213199 () Int)

(assert (=> bs!1102633 (= lambda!213199 lambda!213142)))

(declare-fun bs!1102634 () Bool)

(assert (= bs!1102634 (and d!1499592 d!1499566)))

(assert (=> bs!1102634 (= lambda!213199 lambda!213159)))

(declare-fun bs!1102635 () Bool)

(assert (= bs!1102635 (and d!1499592 d!1499574)))

(assert (=> bs!1102635 (= lambda!213199 lambda!213192)))

(declare-fun bs!1102636 () Bool)

(assert (= bs!1102636 (and d!1499592 d!1499584)))

(assert (=> bs!1102636 (not (= lambda!213199 lambda!213196))))

(assert (=> d!1499592 (contains!16018 lm!2023 (hash!4299 hashF!1323 key!4653))))

(declare-fun lt!1877094 () Unit!128199)

(declare-fun choose!33146 (ListLongMap!4353 K!14068 Hashable!6336) Unit!128199)

(assert (=> d!1499592 (= lt!1877094 (choose!33146 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1499592 (forall!11506 (toList!5823 lm!2023) lambda!213199)))

(assert (=> d!1499592 (= (lemmaInGenMapThenLongMapContainsHash!739 lm!2023 key!4653 hashF!1323) lt!1877094)))

(declare-fun bs!1102637 () Bool)

(assert (= bs!1102637 d!1499592))

(assert (=> bs!1102637 m!5638799))

(assert (=> bs!1102637 m!5638799))

(declare-fun m!5639051 () Bool)

(assert (=> bs!1102637 m!5639051))

(declare-fun m!5639053 () Bool)

(assert (=> bs!1102637 m!5639053))

(declare-fun m!5639055 () Bool)

(assert (=> bs!1102637 m!5639055))

(assert (=> b!4712554 d!1499592))

(declare-fun d!1499594 () Bool)

(assert (=> d!1499594 (= (isDefined!9538 (getPair!533 lt!1876954 key!4653)) (not (isEmpty!29153 (getPair!533 lt!1876954 key!4653))))))

(declare-fun bs!1102638 () Bool)

(assert (= bs!1102638 d!1499594))

(assert (=> bs!1102638 m!5638813))

(declare-fun m!5639057 () Bool)

(assert (=> bs!1102638 m!5639057))

(assert (=> b!4712554 d!1499594))

(declare-fun d!1499596 () Bool)

(assert (=> d!1499596 (containsKey!3281 oldBucket!34 key!4653)))

(declare-fun lt!1877097 () Unit!128199)

(declare-fun choose!33147 (List!52831 K!14068 Hashable!6336) Unit!128199)

(assert (=> d!1499596 (= lt!1877097 (choose!33147 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1499596 (noDuplicateKeys!1967 oldBucket!34)))

(assert (=> d!1499596 (= (lemmaGetPairDefinedThenContainsKey!281 oldBucket!34 key!4653 hashF!1323) lt!1877097)))

(declare-fun bs!1102639 () Bool)

(assert (= bs!1102639 d!1499596))

(assert (=> bs!1102639 m!5638831))

(declare-fun m!5639059 () Bool)

(assert (=> bs!1102639 m!5639059))

(assert (=> bs!1102639 m!5638845))

(assert (=> b!4712554 d!1499596))

(declare-fun d!1499598 () Bool)

(declare-fun res!1992128 () Bool)

(declare-fun e!2939351 () Bool)

(assert (=> d!1499598 (=> res!1992128 e!2939351)))

(assert (=> d!1499598 (= res!1992128 (and (is-Cons!52707 oldBucket!34) (= (_1!30425 (h!59024 oldBucket!34)) key!4653)))))

(assert (=> d!1499598 (= (containsKey!3281 oldBucket!34 key!4653) e!2939351)))

(declare-fun b!4712758 () Bool)

(declare-fun e!2939352 () Bool)

(assert (=> b!4712758 (= e!2939351 e!2939352)))

(declare-fun res!1992129 () Bool)

(assert (=> b!4712758 (=> (not res!1992129) (not e!2939352))))

(assert (=> b!4712758 (= res!1992129 (is-Cons!52707 oldBucket!34))))

(declare-fun b!4712759 () Bool)

(assert (=> b!4712759 (= e!2939352 (containsKey!3281 (t!360073 oldBucket!34) key!4653))))

(assert (= (and d!1499598 (not res!1992128)) b!4712758))

(assert (= (and b!4712758 res!1992129) b!4712759))

(assert (=> b!4712759 m!5638825))

(assert (=> b!4712554 d!1499598))

(declare-fun d!1499600 () Bool)

(assert (=> d!1499600 (contains!16017 (toList!5823 lm!2023) (tuple2!54265 lt!1876960 lt!1876954))))

(declare-fun lt!1877100 () Unit!128199)

(declare-fun choose!33148 (ListLongMap!4353 (_ BitVec 64) List!52831) Unit!128199)

(assert (=> d!1499600 (= lt!1877100 (choose!33148 lm!2023 lt!1876960 lt!1876954))))

(assert (=> d!1499600 (contains!16018 lm!2023 lt!1876960)))

(assert (=> d!1499600 (= (lemmaGetValueImpliesTupleContained!338 lm!2023 lt!1876960 lt!1876954) lt!1877100)))

(declare-fun bs!1102640 () Bool)

(assert (= bs!1102640 d!1499600))

(declare-fun m!5639061 () Bool)

(assert (=> bs!1102640 m!5639061))

(declare-fun m!5639063 () Bool)

(assert (=> bs!1102640 m!5639063))

(assert (=> bs!1102640 m!5638821))

(assert (=> b!4712554 d!1499600))

(declare-fun d!1499602 () Bool)

(declare-fun lt!1877103 () Bool)

(declare-fun content!9343 (List!52832) (Set tuple2!54264))

(assert (=> d!1499602 (= lt!1877103 (set.member lt!1876962 (content!9343 (toList!5823 lm!2023))))))

(declare-fun e!2939358 () Bool)

(assert (=> d!1499602 (= lt!1877103 e!2939358)))

(declare-fun res!1992134 () Bool)

(assert (=> d!1499602 (=> (not res!1992134) (not e!2939358))))

(assert (=> d!1499602 (= res!1992134 (is-Cons!52708 (toList!5823 lm!2023)))))

(assert (=> d!1499602 (= (contains!16017 (toList!5823 lm!2023) lt!1876962) lt!1877103)))

(declare-fun b!4712765 () Bool)

(declare-fun e!2939357 () Bool)

(assert (=> b!4712765 (= e!2939358 e!2939357)))

(declare-fun res!1992135 () Bool)

(assert (=> b!4712765 (=> res!1992135 e!2939357)))

(assert (=> b!4712765 (= res!1992135 (= (h!59025 (toList!5823 lm!2023)) lt!1876962))))

(declare-fun b!4712766 () Bool)

(assert (=> b!4712766 (= e!2939357 (contains!16017 (t!360074 (toList!5823 lm!2023)) lt!1876962))))

(assert (= (and d!1499602 res!1992134) b!4712765))

(assert (= (and b!4712765 (not res!1992135)) b!4712766))

(declare-fun m!5639065 () Bool)

(assert (=> d!1499602 m!5639065))

(declare-fun m!5639067 () Bool)

(assert (=> d!1499602 m!5639067))

(declare-fun m!5639069 () Bool)

(assert (=> b!4712766 m!5639069))

(assert (=> b!4712554 d!1499602))

(declare-fun bs!1102647 () Bool)

(declare-fun d!1499604 () Bool)

(assert (= bs!1102647 (and d!1499604 d!1499584)))

(declare-fun lambda!213240 () Int)

(assert (=> bs!1102647 (not (= lambda!213240 lambda!213196))))

(declare-fun bs!1102648 () Bool)

(assert (= bs!1102648 (and d!1499604 d!1499592)))

(assert (=> bs!1102648 (= lambda!213240 lambda!213199)))

(declare-fun bs!1102649 () Bool)

(assert (= bs!1102649 (and d!1499604 start!478994)))

(assert (=> bs!1102649 (= lambda!213240 lambda!213142)))

(declare-fun bs!1102650 () Bool)

(assert (= bs!1102650 (and d!1499604 d!1499566)))

(assert (=> bs!1102650 (= lambda!213240 lambda!213159)))

(declare-fun bs!1102651 () Bool)

(assert (= bs!1102651 (and d!1499604 d!1499574)))

(assert (=> bs!1102651 (= lambda!213240 lambda!213192)))

(declare-fun e!2939375 () Bool)

(declare-fun b!4712798 () Bool)

(assert (=> b!4712798 (= e!2939375 (isDefined!9538 (getPair!533 (apply!12416 lm!2023 (hash!4299 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1877186 () Unit!128199)

(assert (=> b!4712798 (= lt!1877186 (forallContained!3575 (toList!5823 lm!2023) lambda!213240 (tuple2!54265 (hash!4299 hashF!1323 key!4653) (apply!12416 lm!2023 (hash!4299 hashF!1323 key!4653)))))))

(declare-fun lt!1877190 () Unit!128199)

(declare-fun lt!1877188 () Unit!128199)

(assert (=> b!4712798 (= lt!1877190 lt!1877188)))

(declare-fun lt!1877187 () (_ BitVec 64))

(declare-fun lt!1877189 () List!52831)

(assert (=> b!4712798 (contains!16017 (toList!5823 lm!2023) (tuple2!54265 lt!1877187 lt!1877189))))

(assert (=> b!4712798 (= lt!1877188 (lemmaGetValueImpliesTupleContained!338 lm!2023 lt!1877187 lt!1877189))))

(declare-fun e!2939374 () Bool)

(assert (=> b!4712798 e!2939374))

(declare-fun res!1992153 () Bool)

(assert (=> b!4712798 (=> (not res!1992153) (not e!2939374))))

(assert (=> b!4712798 (= res!1992153 (contains!16018 lm!2023 lt!1877187))))

(assert (=> b!4712798 (= lt!1877189 (apply!12416 lm!2023 (hash!4299 hashF!1323 key!4653)))))

(assert (=> b!4712798 (= lt!1877187 (hash!4299 hashF!1323 key!4653))))

(declare-fun lt!1877185 () Unit!128199)

(declare-fun lt!1877192 () Unit!128199)

(assert (=> b!4712798 (= lt!1877185 lt!1877192)))

(assert (=> b!4712798 (contains!16018 lm!2023 (hash!4299 hashF!1323 key!4653))))

(assert (=> b!4712798 (= lt!1877192 (lemmaInGenMapThenLongMapContainsHash!739 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4712799 () Bool)

(assert (=> b!4712799 (= e!2939374 (= (getValueByKey!1911 (toList!5823 lm!2023) lt!1877187) (Some!12286 lt!1877189)))))

(assert (=> d!1499604 e!2939375))

(declare-fun res!1992156 () Bool)

(assert (=> d!1499604 (=> (not res!1992156) (not e!2939375))))

(assert (=> d!1499604 (= res!1992156 (forall!11506 (toList!5823 lm!2023) lambda!213240))))

(declare-fun lt!1877191 () Unit!128199)

(declare-fun choose!33149 (ListLongMap!4353 K!14068 Hashable!6336) Unit!128199)

(assert (=> d!1499604 (= lt!1877191 (choose!33149 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1499604 (forall!11506 (toList!5823 lm!2023) lambda!213240)))

(assert (=> d!1499604 (= (lemmaInGenMapThenGetPairDefined!329 lm!2023 key!4653 hashF!1323) lt!1877191)))

(declare-fun b!4712796 () Bool)

(declare-fun res!1992155 () Bool)

(assert (=> b!4712796 (=> (not res!1992155) (not e!2939375))))

(assert (=> b!4712796 (= res!1992155 (allKeysSameHashInMap!1881 lm!2023 hashF!1323))))

(declare-fun b!4712797 () Bool)

(declare-fun res!1992154 () Bool)

(assert (=> b!4712797 (=> (not res!1992154) (not e!2939375))))

(assert (=> b!4712797 (= res!1992154 (contains!16019 (extractMap!1993 (toList!5823 lm!2023)) key!4653))))

(assert (= (and d!1499604 res!1992156) b!4712796))

(assert (= (and b!4712796 res!1992155) b!4712797))

(assert (= (and b!4712797 res!1992154) b!4712798))

(assert (= (and b!4712798 res!1992153) b!4712799))

(assert (=> b!4712797 m!5638809))

(assert (=> b!4712797 m!5638809))

(declare-fun m!5639117 () Bool)

(assert (=> b!4712797 m!5639117))

(declare-fun m!5639119 () Bool)

(assert (=> b!4712798 m!5639119))

(assert (=> b!4712798 m!5638799))

(declare-fun m!5639121 () Bool)

(assert (=> b!4712798 m!5639121))

(declare-fun m!5639123 () Bool)

(assert (=> b!4712798 m!5639123))

(declare-fun m!5639125 () Bool)

(assert (=> b!4712798 m!5639125))

(assert (=> b!4712798 m!5638799))

(declare-fun m!5639127 () Bool)

(assert (=> b!4712798 m!5639127))

(declare-fun m!5639129 () Bool)

(assert (=> b!4712798 m!5639129))

(assert (=> b!4712798 m!5638799))

(assert (=> b!4712798 m!5639051))

(assert (=> b!4712798 m!5638817))

(declare-fun m!5639131 () Bool)

(assert (=> b!4712798 m!5639131))

(assert (=> b!4712798 m!5639127))

(assert (=> b!4712798 m!5639121))

(declare-fun m!5639133 () Bool)

(assert (=> b!4712799 m!5639133))

(declare-fun m!5639135 () Bool)

(assert (=> d!1499604 m!5639135))

(declare-fun m!5639137 () Bool)

(assert (=> d!1499604 m!5639137))

(assert (=> d!1499604 m!5639135))

(assert (=> b!4712796 m!5638849))

(assert (=> b!4712554 d!1499604))

(declare-fun d!1499612 () Bool)

(assert (=> d!1499612 (dynLambda!21784 lambda!213142 lt!1876962)))

(declare-fun lt!1877198 () Unit!128199)

(declare-fun choose!33150 (List!52832 Int tuple2!54264) Unit!128199)

(assert (=> d!1499612 (= lt!1877198 (choose!33150 (toList!5823 lm!2023) lambda!213142 lt!1876962))))

(declare-fun e!2939383 () Bool)

(assert (=> d!1499612 e!2939383))

(declare-fun res!1992159 () Bool)

(assert (=> d!1499612 (=> (not res!1992159) (not e!2939383))))

(assert (=> d!1499612 (= res!1992159 (forall!11506 (toList!5823 lm!2023) lambda!213142))))

(assert (=> d!1499612 (= (forallContained!3575 (toList!5823 lm!2023) lambda!213142 lt!1876962) lt!1877198)))

(declare-fun b!4712812 () Bool)

(assert (=> b!4712812 (= e!2939383 (contains!16017 (toList!5823 lm!2023) lt!1876962))))

(assert (= (and d!1499612 res!1992159) b!4712812))

(declare-fun b_lambda!177695 () Bool)

(assert (=> (not b_lambda!177695) (not d!1499612)))

(declare-fun m!5639139 () Bool)

(assert (=> d!1499612 m!5639139))

(declare-fun m!5639141 () Bool)

(assert (=> d!1499612 m!5639141))

(assert (=> d!1499612 m!5638855))

(assert (=> b!4712812 m!5638833))

(assert (=> b!4712554 d!1499612))

(declare-fun d!1499614 () Bool)

(declare-fun e!2939391 () Bool)

(assert (=> d!1499614 e!2939391))

(declare-fun res!1992162 () Bool)

(assert (=> d!1499614 (=> res!1992162 e!2939391)))

(declare-fun lt!1877209 () Bool)

(assert (=> d!1499614 (= res!1992162 (not lt!1877209))))

(declare-fun lt!1877210 () Bool)

(assert (=> d!1499614 (= lt!1877209 lt!1877210)))

(declare-fun lt!1877211 () Unit!128199)

(declare-fun e!2939390 () Unit!128199)

(assert (=> d!1499614 (= lt!1877211 e!2939390)))

(declare-fun c!805074 () Bool)

(assert (=> d!1499614 (= c!805074 lt!1877210)))

(declare-fun containsKey!3284 (List!52832 (_ BitVec 64)) Bool)

(assert (=> d!1499614 (= lt!1877210 (containsKey!3284 (toList!5823 lm!2023) lt!1876960))))

(assert (=> d!1499614 (= (contains!16018 lm!2023 lt!1876960) lt!1877209)))

(declare-fun b!4712823 () Bool)

(declare-fun lt!1877208 () Unit!128199)

(assert (=> b!4712823 (= e!2939390 lt!1877208)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1802 (List!52832 (_ BitVec 64)) Unit!128199)

(assert (=> b!4712823 (= lt!1877208 (lemmaContainsKeyImpliesGetValueByKeyDefined!1802 (toList!5823 lm!2023) lt!1876960))))

(declare-fun isDefined!9541 (Option!12287) Bool)

(assert (=> b!4712823 (isDefined!9541 (getValueByKey!1911 (toList!5823 lm!2023) lt!1876960))))

(declare-fun b!4712824 () Bool)

(declare-fun Unit!128217 () Unit!128199)

(assert (=> b!4712824 (= e!2939390 Unit!128217)))

(declare-fun b!4712825 () Bool)

(assert (=> b!4712825 (= e!2939391 (isDefined!9541 (getValueByKey!1911 (toList!5823 lm!2023) lt!1876960)))))

(assert (= (and d!1499614 c!805074) b!4712823))

(assert (= (and d!1499614 (not c!805074)) b!4712824))

(assert (= (and d!1499614 (not res!1992162)) b!4712825))

(declare-fun m!5639147 () Bool)

(assert (=> d!1499614 m!5639147))

(declare-fun m!5639149 () Bool)

(assert (=> b!4712823 m!5639149))

(assert (=> b!4712823 m!5639033))

(assert (=> b!4712823 m!5639033))

(declare-fun m!5639151 () Bool)

(assert (=> b!4712823 m!5639151))

(assert (=> b!4712825 m!5639033))

(assert (=> b!4712825 m!5639033))

(assert (=> b!4712825 m!5639151))

(assert (=> b!4712554 d!1499614))

(declare-fun d!1499620 () Bool)

(declare-fun res!1992163 () Bool)

(declare-fun e!2939392 () Bool)

(assert (=> d!1499620 (=> res!1992163 e!2939392)))

(assert (=> d!1499620 (= res!1992163 (and (is-Cons!52707 (t!360073 oldBucket!34)) (= (_1!30425 (h!59024 (t!360073 oldBucket!34))) key!4653)))))

(assert (=> d!1499620 (= (containsKey!3281 (t!360073 oldBucket!34) key!4653) e!2939392)))

(declare-fun b!4712826 () Bool)

(declare-fun e!2939393 () Bool)

(assert (=> b!4712826 (= e!2939392 e!2939393)))

(declare-fun res!1992164 () Bool)

(assert (=> b!4712826 (=> (not res!1992164) (not e!2939393))))

(assert (=> b!4712826 (= res!1992164 (is-Cons!52707 (t!360073 oldBucket!34)))))

(declare-fun b!4712827 () Bool)

(assert (=> b!4712827 (= e!2939393 (containsKey!3281 (t!360073 (t!360073 oldBucket!34)) key!4653))))

(assert (= (and d!1499620 (not res!1992163)) b!4712826))

(assert (= (and b!4712826 res!1992164) b!4712827))

(declare-fun m!5639153 () Bool)

(assert (=> b!4712827 m!5639153))

(assert (=> b!4712554 d!1499620))

(declare-fun d!1499622 () Bool)

(assert (=> d!1499622 (= (head!10167 (toList!5823 lm!2023)) (h!59025 (toList!5823 lm!2023)))))

(assert (=> b!4712555 d!1499622))

(declare-fun b!4712832 () Bool)

(declare-fun tp!1347666 () Bool)

(declare-fun e!2939396 () Bool)

(assert (=> b!4712832 (= e!2939396 (and tp_is_empty!31161 tp_is_empty!31163 tp!1347666))))

(assert (=> b!4712558 (= tp!1347652 e!2939396)))

(assert (= (and b!4712558 (is-Cons!52707 (t!360073 newBucket!218))) b!4712832))

(declare-fun b!4712833 () Bool)

(declare-fun e!2939397 () Bool)

(declare-fun tp!1347667 () Bool)

(assert (=> b!4712833 (= e!2939397 (and tp_is_empty!31161 tp_is_empty!31163 tp!1347667))))

(assert (=> b!4712570 (= tp!1347653 e!2939397)))

(assert (= (and b!4712570 (is-Cons!52707 (t!360073 oldBucket!34))) b!4712833))

(declare-fun b!4712838 () Bool)

(declare-fun e!2939400 () Bool)

(declare-fun tp!1347672 () Bool)

(declare-fun tp!1347673 () Bool)

(assert (=> b!4712838 (= e!2939400 (and tp!1347672 tp!1347673))))

(assert (=> b!4712566 (= tp!1347654 e!2939400)))

(assert (= (and b!4712566 (is-Cons!52708 (toList!5823 lm!2023))) b!4712838))

(declare-fun b_lambda!177697 () Bool)

(assert (= b_lambda!177693 (or start!478994 b_lambda!177697)))

(declare-fun bs!1102660 () Bool)

(declare-fun d!1499624 () Bool)

(assert (= bs!1102660 (and d!1499624 start!478994)))

(assert (=> bs!1102660 (= (dynLambda!21784 lambda!213142 (h!59025 (toList!5823 lm!2023))) (noDuplicateKeys!1967 (_2!30426 (h!59025 (toList!5823 lm!2023)))))))

(assert (=> bs!1102660 m!5638975))

(assert (=> b!4712646 d!1499624))

(declare-fun b_lambda!177699 () Bool)

(assert (= b_lambda!177695 (or start!478994 b_lambda!177699)))

(declare-fun bs!1102661 () Bool)

(declare-fun d!1499626 () Bool)

(assert (= bs!1102661 (and d!1499626 start!478994)))

(assert (=> bs!1102661 (= (dynLambda!21784 lambda!213142 lt!1876962) (noDuplicateKeys!1967 (_2!30426 lt!1876962)))))

(declare-fun m!5639155 () Bool)

(assert (=> bs!1102661 m!5639155))

(assert (=> d!1499612 d!1499626))

(push 1)

(assert (not bm!329482))

(assert (not d!1499556))

(assert (not b!4712717))

(assert (not d!1499594))

(assert (not bs!1102661))

(assert (not d!1499612))

(assert (not b!4712675))

(assert (not b!4712797))

(assert (not b!4712838))

(assert (not d!1499580))

(assert (not b!4712748))

(assert (not b!4712825))

(assert tp_is_empty!31161)

(assert (not d!1499558))

(assert (not b!4712674))

(assert (not b!4712673))

(assert (not b!4712729))

(assert (not b!4712832))

(assert (not bm!329483))

(assert (not bm!329484))

(assert (not b!4712672))

(assert (not b_lambda!177699))

(assert tp_is_empty!31163)

(assert (not d!1499546))

(assert (not b!4712670))

(assert (not b!4712833))

(assert (not d!1499604))

(assert (not d!1499614))

(assert (not b!4712751))

(assert (not d!1499552))

(assert (not b!4712798))

(assert (not b!4712823))

(assert (not b!4712759))

(assert (not b!4712703))

(assert (not b!4712747))

(assert (not b!4712750))

(assert (not b!4712691))

(assert (not d!1499588))

(assert (not b!4712716))

(assert (not b!4712766))

(assert (not d!1499590))

(assert (not d!1499544))

(assert (not b!4712753))

(assert (not b!4712668))

(assert (not d!1499542))

(assert (not d!1499574))

(assert (not d!1499600))

(assert (not d!1499582))

(assert (not b!4712710))

(assert (not d!1499566))

(assert (not b_lambda!177697))

(assert (not bs!1102660))

(assert (not d!1499602))

(assert (not b!4712704))

(assert (not d!1499596))

(assert (not b!4712827))

(assert (not d!1499584))

(assert (not d!1499578))

(assert (not bm!329475))

(assert (not b!4712812))

(assert (not b!4712706))

(assert (not b!4712705))

(assert (not b!4712669))

(assert (not b!4712799))

(assert (not d!1499592))

(assert (not b!4712796))

(assert (not b!4712640))

(assert (not b!4712728))

(assert (not b!4712647))

(assert (not d!1499572))

(assert (not b!4712720))

(assert (not b!4712724))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

