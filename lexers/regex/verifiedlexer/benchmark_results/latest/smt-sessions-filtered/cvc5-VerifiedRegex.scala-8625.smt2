; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!460130 () Bool)

(assert start!460130)

(declare-fun tp!1340799 () Bool)

(declare-fun e!2872629 () Bool)

(declare-fun b!4605371 () Bool)

(declare-fun tp_is_empty!28699 () Bool)

(declare-fun tp_is_empty!28697 () Bool)

(assert (=> b!4605371 (= e!2872629 (and tp_is_empty!28697 tp_is_empty!28699 tp!1340799))))

(declare-fun b!4605372 () Bool)

(declare-datatypes ((Unit!108939 0))(
  ( (Unit!108940) )
))
(declare-fun e!2872632 () Unit!108939)

(declare-fun Unit!108941 () Unit!108939)

(assert (=> b!4605372 (= e!2872632 Unit!108941)))

(declare-fun b!4605373 () Bool)

(declare-fun res!1927171 () Bool)

(declare-fun e!2872630 () Bool)

(assert (=> b!4605373 (=> res!1927171 e!2872630)))

(declare-datatypes ((K!12528 0))(
  ( (K!12529 (val!18293 Int)) )
))
(declare-datatypes ((V!12774 0))(
  ( (V!12775 (val!18294 Int)) )
))
(declare-datatypes ((tuple2!51854 0))(
  ( (tuple2!51855 (_1!29221 K!12528) (_2!29221 V!12774)) )
))
(declare-datatypes ((List!51283 0))(
  ( (Nil!51159) (Cons!51159 (h!57139 tuple2!51854) (t!358277 List!51283)) )
))
(declare-datatypes ((tuple2!51856 0))(
  ( (tuple2!51857 (_1!29222 (_ BitVec 64)) (_2!29222 List!51283)) )
))
(declare-datatypes ((List!51284 0))(
  ( (Nil!51160) (Cons!51160 (h!57140 tuple2!51856) (t!358278 List!51284)) )
))
(declare-datatypes ((ListLongMap!3349 0))(
  ( (ListLongMap!3350 (toList!4717 List!51284)) )
))
(declare-fun lm!1477 () ListLongMap!3349)

(declare-fun lt!1763136 () tuple2!51856)

(declare-fun contains!14147 (List!51284 tuple2!51856) Bool)

(assert (=> b!4605373 (= res!1927171 (not (contains!14147 (t!358278 (toList!4717 lm!1477)) lt!1763136)))))

(declare-fun b!4605374 () Bool)

(declare-fun e!2872628 () Bool)

(declare-fun lt!1763140 () ListLongMap!3349)

(declare-fun lambda!187405 () Int)

(declare-fun forall!10656 (List!51284 Int) Bool)

(assert (=> b!4605374 (= e!2872628 (forall!10656 (toList!4717 lt!1763140) lambda!187405))))

(declare-fun b!4605375 () Bool)

(declare-fun res!1927167 () Bool)

(assert (=> b!4605375 (=> res!1927167 e!2872630)))

(declare-fun lt!1763142 () List!51283)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun apply!12088 (ListLongMap!3349 (_ BitVec 64)) List!51283)

(assert (=> b!4605375 (= res!1927167 (not (= (apply!12088 lt!1763140 hash!344) lt!1763142)))))

(declare-fun b!4605376 () Bool)

(declare-fun res!1927161 () Bool)

(declare-fun e!2872633 () Bool)

(assert (=> b!4605376 (=> res!1927161 e!2872633)))

(declare-fun newBucket!178 () List!51283)

(declare-fun noDuplicateKeys!1351 (List!51283) Bool)

(assert (=> b!4605376 (= res!1927161 (not (noDuplicateKeys!1351 newBucket!178)))))

(declare-fun b!4605377 () Bool)

(declare-fun e!2872635 () Bool)

(declare-fun e!2872634 () Bool)

(assert (=> b!4605377 (= e!2872635 e!2872634)))

(declare-fun res!1927170 () Bool)

(assert (=> b!4605377 (=> (not res!1927170) (not e!2872634))))

(declare-fun lt!1763135 () (_ BitVec 64))

(assert (=> b!4605377 (= res!1927170 (= lt!1763135 hash!344))))

(declare-datatypes ((Hashable!5750 0))(
  ( (HashableExt!5749 (__x!31453 Int)) )
))
(declare-fun hashF!1107 () Hashable!5750)

(declare-fun key!3287 () K!12528)

(declare-fun hash!3277 (Hashable!5750 K!12528) (_ BitVec 64))

(assert (=> b!4605377 (= lt!1763135 (hash!3277 hashF!1107 key!3287))))

(declare-fun b!4605378 () Bool)

(declare-fun Unit!108942 () Unit!108939)

(assert (=> b!4605378 (= e!2872632 Unit!108942)))

(declare-fun lt!1763137 () Unit!108939)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!315 (ListLongMap!3349 K!12528 Hashable!5750) Unit!108939)

(assert (=> b!4605378 (= lt!1763137 (lemmaNotInItsHashBucketThenNotInMap!315 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4605378 false))

(declare-fun b!4605379 () Bool)

(declare-fun res!1927160 () Bool)

(assert (=> b!4605379 (=> (not res!1927160) (not e!2872634))))

(declare-fun allKeysSameHash!1207 (List!51283 (_ BitVec 64) Hashable!5750) Bool)

(assert (=> b!4605379 (= res!1927160 (allKeysSameHash!1207 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4605380 () Bool)

(declare-fun e!2872631 () Bool)

(assert (=> b!4605380 (= e!2872631 e!2872628)))

(declare-fun res!1927162 () Bool)

(assert (=> b!4605380 (=> res!1927162 e!2872628)))

(declare-fun containsKeyBiggerList!291 (List!51284 K!12528) Bool)

(assert (=> b!4605380 (= res!1927162 (not (containsKeyBiggerList!291 (t!358278 (toList!4717 lm!1477)) key!3287)))))

(assert (=> b!4605380 (containsKeyBiggerList!291 (toList!4717 lt!1763140) key!3287)))

(declare-fun lt!1763139 () Unit!108939)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!161 (ListLongMap!3349 K!12528 Hashable!5750) Unit!108939)

(assert (=> b!4605380 (= lt!1763139 (lemmaInLongMapThenContainsKeyBiggerList!161 lt!1763140 key!3287 hashF!1107))))

(declare-fun b!4605381 () Bool)

(declare-fun res!1927164 () Bool)

(assert (=> b!4605381 (=> (not res!1927164) (not e!2872635))))

(declare-datatypes ((ListMap!3979 0))(
  ( (ListMap!3980 (toList!4718 List!51283)) )
))
(declare-fun contains!14148 (ListMap!3979 K!12528) Bool)

(declare-fun extractMap!1411 (List!51284) ListMap!3979)

(assert (=> b!4605381 (= res!1927164 (contains!14148 (extractMap!1411 (toList!4717 lm!1477)) key!3287))))

(declare-fun b!4605383 () Bool)

(assert (=> b!4605383 (= e!2872633 e!2872630)))

(declare-fun res!1927166 () Bool)

(assert (=> b!4605383 (=> res!1927166 e!2872630)))

(declare-fun contains!14149 (ListLongMap!3349 (_ BitVec 64)) Bool)

(assert (=> b!4605383 (= res!1927166 (not (contains!14149 lt!1763140 hash!344)))))

(declare-fun tail!7999 (ListLongMap!3349) ListLongMap!3349)

(assert (=> b!4605383 (= lt!1763140 (tail!7999 lm!1477))))

(declare-fun b!4605384 () Bool)

(assert (=> b!4605384 (= e!2872634 (not e!2872633))))

(declare-fun res!1927163 () Bool)

(assert (=> b!4605384 (=> res!1927163 e!2872633)))

(declare-fun removePairForKey!976 (List!51283 K!12528) List!51283)

(assert (=> b!4605384 (= res!1927163 (not (= newBucket!178 (removePairForKey!976 lt!1763142 key!3287))))))

(declare-fun lt!1763138 () Unit!108939)

(declare-fun forallContained!2904 (List!51284 Int tuple2!51856) Unit!108939)

(assert (=> b!4605384 (= lt!1763138 (forallContained!2904 (toList!4717 lm!1477) lambda!187405 lt!1763136))))

(assert (=> b!4605384 (contains!14147 (toList!4717 lm!1477) lt!1763136)))

(assert (=> b!4605384 (= lt!1763136 (tuple2!51857 hash!344 lt!1763142))))

(declare-fun lt!1763143 () Unit!108939)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!861 (List!51284 (_ BitVec 64) List!51283) Unit!108939)

(assert (=> b!4605384 (= lt!1763143 (lemmaGetValueByKeyImpliesContainsTuple!861 (toList!4717 lm!1477) hash!344 lt!1763142))))

(assert (=> b!4605384 (= lt!1763142 (apply!12088 lm!1477 hash!344))))

(assert (=> b!4605384 (contains!14149 lm!1477 lt!1763135)))

(declare-fun lt!1763141 () Unit!108939)

(declare-fun lemmaInGenMapThenLongMapContainsHash!425 (ListLongMap!3349 K!12528 Hashable!5750) Unit!108939)

(assert (=> b!4605384 (= lt!1763141 (lemmaInGenMapThenLongMapContainsHash!425 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4605385 () Bool)

(assert (=> b!4605385 (= e!2872630 e!2872631)))

(declare-fun res!1927169 () Bool)

(assert (=> b!4605385 (=> res!1927169 e!2872631)))

(declare-fun lt!1763144 () Bool)

(assert (=> b!4605385 (= res!1927169 lt!1763144)))

(declare-fun lt!1763134 () Unit!108939)

(assert (=> b!4605385 (= lt!1763134 e!2872632)))

(declare-fun c!788933 () Bool)

(assert (=> b!4605385 (= c!788933 lt!1763144)))

(declare-fun containsKey!2218 (List!51283 K!12528) Bool)

(assert (=> b!4605385 (= lt!1763144 (not (containsKey!2218 lt!1763142 key!3287)))))

(declare-fun b!4605386 () Bool)

(declare-fun e!2872627 () Bool)

(declare-fun tp!1340798 () Bool)

(assert (=> b!4605386 (= e!2872627 tp!1340798)))

(declare-fun b!4605387 () Bool)

(declare-fun res!1927168 () Bool)

(assert (=> b!4605387 (=> res!1927168 e!2872633)))

(assert (=> b!4605387 (= res!1927168 (or (is-Nil!51160 (toList!4717 lm!1477)) (= (_1!29222 (h!57140 (toList!4717 lm!1477))) hash!344)))))

(declare-fun res!1927165 () Bool)

(assert (=> start!460130 (=> (not res!1927165) (not e!2872635))))

(assert (=> start!460130 (= res!1927165 (forall!10656 (toList!4717 lm!1477) lambda!187405))))

(assert (=> start!460130 e!2872635))

(assert (=> start!460130 true))

(declare-fun inv!66713 (ListLongMap!3349) Bool)

(assert (=> start!460130 (and (inv!66713 lm!1477) e!2872627)))

(assert (=> start!460130 tp_is_empty!28697))

(assert (=> start!460130 e!2872629))

(declare-fun b!4605382 () Bool)

(declare-fun res!1927159 () Bool)

(assert (=> b!4605382 (=> (not res!1927159) (not e!2872635))))

(declare-fun allKeysSameHashInMap!1462 (ListLongMap!3349 Hashable!5750) Bool)

(assert (=> b!4605382 (= res!1927159 (allKeysSameHashInMap!1462 lm!1477 hashF!1107))))

(assert (= (and start!460130 res!1927165) b!4605382))

(assert (= (and b!4605382 res!1927159) b!4605381))

(assert (= (and b!4605381 res!1927164) b!4605377))

(assert (= (and b!4605377 res!1927170) b!4605379))

(assert (= (and b!4605379 res!1927160) b!4605384))

(assert (= (and b!4605384 (not res!1927163)) b!4605376))

(assert (= (and b!4605376 (not res!1927161)) b!4605387))

(assert (= (and b!4605387 (not res!1927168)) b!4605383))

(assert (= (and b!4605383 (not res!1927166)) b!4605375))

(assert (= (and b!4605375 (not res!1927167)) b!4605373))

(assert (= (and b!4605373 (not res!1927171)) b!4605385))

(assert (= (and b!4605385 c!788933) b!4605378))

(assert (= (and b!4605385 (not c!788933)) b!4605372))

(assert (= (and b!4605385 (not res!1927169)) b!4605380))

(assert (= (and b!4605380 (not res!1927162)) b!4605374))

(assert (= start!460130 b!4605386))

(assert (= (and start!460130 (is-Cons!51159 newBucket!178)) b!4605371))

(declare-fun m!5434697 () Bool)

(assert (=> b!4605384 m!5434697))

(declare-fun m!5434699 () Bool)

(assert (=> b!4605384 m!5434699))

(declare-fun m!5434701 () Bool)

(assert (=> b!4605384 m!5434701))

(declare-fun m!5434703 () Bool)

(assert (=> b!4605384 m!5434703))

(declare-fun m!5434705 () Bool)

(assert (=> b!4605384 m!5434705))

(declare-fun m!5434707 () Bool)

(assert (=> b!4605384 m!5434707))

(declare-fun m!5434709 () Bool)

(assert (=> b!4605384 m!5434709))

(declare-fun m!5434711 () Bool)

(assert (=> b!4605380 m!5434711))

(declare-fun m!5434713 () Bool)

(assert (=> b!4605380 m!5434713))

(declare-fun m!5434715 () Bool)

(assert (=> b!4605380 m!5434715))

(declare-fun m!5434717 () Bool)

(assert (=> b!4605379 m!5434717))

(declare-fun m!5434719 () Bool)

(assert (=> b!4605381 m!5434719))

(assert (=> b!4605381 m!5434719))

(declare-fun m!5434721 () Bool)

(assert (=> b!4605381 m!5434721))

(declare-fun m!5434723 () Bool)

(assert (=> b!4605373 m!5434723))

(declare-fun m!5434725 () Bool)

(assert (=> b!4605375 m!5434725))

(declare-fun m!5434727 () Bool)

(assert (=> b!4605382 m!5434727))

(declare-fun m!5434729 () Bool)

(assert (=> b!4605376 m!5434729))

(declare-fun m!5434731 () Bool)

(assert (=> b!4605378 m!5434731))

(declare-fun m!5434733 () Bool)

(assert (=> b!4605383 m!5434733))

(declare-fun m!5434735 () Bool)

(assert (=> b!4605383 m!5434735))

(declare-fun m!5434737 () Bool)

(assert (=> start!460130 m!5434737))

(declare-fun m!5434739 () Bool)

(assert (=> start!460130 m!5434739))

(declare-fun m!5434741 () Bool)

(assert (=> b!4605374 m!5434741))

(declare-fun m!5434743 () Bool)

(assert (=> b!4605385 m!5434743))

(declare-fun m!5434745 () Bool)

(assert (=> b!4605377 m!5434745))

(push 1)

(assert (not b!4605384))

(assert (not b!4605379))

(assert (not b!4605381))

(assert (not b!4605383))

(assert (not b!4605378))

(assert (not b!4605386))

(assert (not b!4605376))

(assert (not start!460130))

(assert (not b!4605385))

(assert (not b!4605374))

(assert (not b!4605377))

(assert tp_is_empty!28699)

(assert tp_is_empty!28697)

(assert (not b!4605373))

(assert (not b!4605371))

(assert (not b!4605380))

(assert (not b!4605375))

(assert (not b!4605382))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1450684 () Bool)

(declare-fun e!2872682 () Bool)

(assert (=> d!1450684 e!2872682))

(declare-fun res!1927222 () Bool)

(assert (=> d!1450684 (=> res!1927222 e!2872682)))

(declare-fun lt!1763198 () Bool)

(assert (=> d!1450684 (= res!1927222 (not lt!1763198))))

(declare-fun lt!1763200 () Bool)

(assert (=> d!1450684 (= lt!1763198 lt!1763200)))

(declare-fun lt!1763199 () Unit!108939)

(declare-fun e!2872683 () Unit!108939)

(assert (=> d!1450684 (= lt!1763199 e!2872683)))

(declare-fun c!788945 () Bool)

(assert (=> d!1450684 (= c!788945 lt!1763200)))

(declare-fun containsKey!2220 (List!51284 (_ BitVec 64)) Bool)

(assert (=> d!1450684 (= lt!1763200 (containsKey!2220 (toList!4717 lm!1477) lt!1763135))))

(assert (=> d!1450684 (= (contains!14149 lm!1477 lt!1763135) lt!1763198)))

(declare-fun b!4605466 () Bool)

(declare-fun lt!1763201 () Unit!108939)

(assert (=> b!4605466 (= e!2872683 lt!1763201)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1243 (List!51284 (_ BitVec 64)) Unit!108939)

(assert (=> b!4605466 (= lt!1763201 (lemmaContainsKeyImpliesGetValueByKeyDefined!1243 (toList!4717 lm!1477) lt!1763135))))

(declare-datatypes ((Option!11421 0))(
  ( (None!11420) (Some!11420 (v!45450 List!51283)) )
))
(declare-fun isDefined!8689 (Option!11421) Bool)

(declare-fun getValueByKey!1339 (List!51284 (_ BitVec 64)) Option!11421)

(assert (=> b!4605466 (isDefined!8689 (getValueByKey!1339 (toList!4717 lm!1477) lt!1763135))))

(declare-fun b!4605467 () Bool)

(declare-fun Unit!108947 () Unit!108939)

(assert (=> b!4605467 (= e!2872683 Unit!108947)))

(declare-fun b!4605468 () Bool)

(assert (=> b!4605468 (= e!2872682 (isDefined!8689 (getValueByKey!1339 (toList!4717 lm!1477) lt!1763135)))))

(assert (= (and d!1450684 c!788945) b!4605466))

(assert (= (and d!1450684 (not c!788945)) b!4605467))

(assert (= (and d!1450684 (not res!1927222)) b!4605468))

(declare-fun m!5434821 () Bool)

(assert (=> d!1450684 m!5434821))

(declare-fun m!5434823 () Bool)

(assert (=> b!4605466 m!5434823))

(declare-fun m!5434825 () Bool)

(assert (=> b!4605466 m!5434825))

(assert (=> b!4605466 m!5434825))

(declare-fun m!5434827 () Bool)

(assert (=> b!4605466 m!5434827))

(assert (=> b!4605468 m!5434825))

(assert (=> b!4605468 m!5434825))

(assert (=> b!4605468 m!5434827))

(assert (=> b!4605384 d!1450684))

(declare-fun b!4605485 () Bool)

(declare-fun e!2872693 () List!51283)

(assert (=> b!4605485 (= e!2872693 (Cons!51159 (h!57139 lt!1763142) (removePairForKey!976 (t!358277 lt!1763142) key!3287)))))

(declare-fun b!4605486 () Bool)

(assert (=> b!4605486 (= e!2872693 Nil!51159)))

(declare-fun d!1450688 () Bool)

(declare-fun lt!1763212 () List!51283)

(assert (=> d!1450688 (not (containsKey!2218 lt!1763212 key!3287))))

(declare-fun e!2872692 () List!51283)

(assert (=> d!1450688 (= lt!1763212 e!2872692)))

(declare-fun c!788953 () Bool)

(assert (=> d!1450688 (= c!788953 (and (is-Cons!51159 lt!1763142) (= (_1!29221 (h!57139 lt!1763142)) key!3287)))))

(assert (=> d!1450688 (noDuplicateKeys!1351 lt!1763142)))

(assert (=> d!1450688 (= (removePairForKey!976 lt!1763142 key!3287) lt!1763212)))

(declare-fun b!4605484 () Bool)

(assert (=> b!4605484 (= e!2872692 e!2872693)))

(declare-fun c!788952 () Bool)

(assert (=> b!4605484 (= c!788952 (is-Cons!51159 lt!1763142))))

(declare-fun b!4605483 () Bool)

(assert (=> b!4605483 (= e!2872692 (t!358277 lt!1763142))))

(assert (= (and d!1450688 c!788953) b!4605483))

(assert (= (and d!1450688 (not c!788953)) b!4605484))

(assert (= (and b!4605484 c!788952) b!4605485))

(assert (= (and b!4605484 (not c!788952)) b!4605486))

(declare-fun m!5434829 () Bool)

(assert (=> b!4605485 m!5434829))

(declare-fun m!5434831 () Bool)

(assert (=> d!1450688 m!5434831))

(declare-fun m!5434833 () Bool)

(assert (=> d!1450688 m!5434833))

(assert (=> b!4605384 d!1450688))

(declare-fun d!1450690 () Bool)

(assert (=> d!1450690 (contains!14147 (toList!4717 lm!1477) (tuple2!51857 hash!344 lt!1763142))))

(declare-fun lt!1763219 () Unit!108939)

(declare-fun choose!30938 (List!51284 (_ BitVec 64) List!51283) Unit!108939)

(assert (=> d!1450690 (= lt!1763219 (choose!30938 (toList!4717 lm!1477) hash!344 lt!1763142))))

(declare-fun e!2872698 () Bool)

(assert (=> d!1450690 e!2872698))

(declare-fun res!1927228 () Bool)

(assert (=> d!1450690 (=> (not res!1927228) (not e!2872698))))

(declare-fun isStrictlySorted!554 (List!51284) Bool)

(assert (=> d!1450690 (= res!1927228 (isStrictlySorted!554 (toList!4717 lm!1477)))))

(assert (=> d!1450690 (= (lemmaGetValueByKeyImpliesContainsTuple!861 (toList!4717 lm!1477) hash!344 lt!1763142) lt!1763219)))

(declare-fun b!4605492 () Bool)

(assert (=> b!4605492 (= e!2872698 (= (getValueByKey!1339 (toList!4717 lm!1477) hash!344) (Some!11420 lt!1763142)))))

(assert (= (and d!1450690 res!1927228) b!4605492))

(declare-fun m!5434843 () Bool)

(assert (=> d!1450690 m!5434843))

(declare-fun m!5434845 () Bool)

(assert (=> d!1450690 m!5434845))

(declare-fun m!5434847 () Bool)

(assert (=> d!1450690 m!5434847))

(declare-fun m!5434849 () Bool)

(assert (=> b!4605492 m!5434849))

(assert (=> b!4605384 d!1450690))

(declare-fun bs!1014287 () Bool)

(declare-fun d!1450692 () Bool)

(assert (= bs!1014287 (and d!1450692 start!460130)))

(declare-fun lambda!187418 () Int)

(assert (=> bs!1014287 (= lambda!187418 lambda!187405)))

(assert (=> d!1450692 (contains!14149 lm!1477 (hash!3277 hashF!1107 key!3287))))

(declare-fun lt!1763222 () Unit!108939)

(declare-fun choose!30939 (ListLongMap!3349 K!12528 Hashable!5750) Unit!108939)

(assert (=> d!1450692 (= lt!1763222 (choose!30939 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1450692 (forall!10656 (toList!4717 lm!1477) lambda!187418)))

(assert (=> d!1450692 (= (lemmaInGenMapThenLongMapContainsHash!425 lm!1477 key!3287 hashF!1107) lt!1763222)))

(declare-fun bs!1014288 () Bool)

(assert (= bs!1014288 d!1450692))

(assert (=> bs!1014288 m!5434745))

(assert (=> bs!1014288 m!5434745))

(declare-fun m!5434851 () Bool)

(assert (=> bs!1014288 m!5434851))

(declare-fun m!5434853 () Bool)

(assert (=> bs!1014288 m!5434853))

(declare-fun m!5434855 () Bool)

(assert (=> bs!1014288 m!5434855))

(assert (=> b!4605384 d!1450692))

(declare-fun d!1450696 () Bool)

(declare-fun dynLambda!21421 (Int tuple2!51856) Bool)

(assert (=> d!1450696 (dynLambda!21421 lambda!187405 lt!1763136)))

(declare-fun lt!1763229 () Unit!108939)

(declare-fun choose!30940 (List!51284 Int tuple2!51856) Unit!108939)

(assert (=> d!1450696 (= lt!1763229 (choose!30940 (toList!4717 lm!1477) lambda!187405 lt!1763136))))

(declare-fun e!2872706 () Bool)

(assert (=> d!1450696 e!2872706))

(declare-fun res!1927236 () Bool)

(assert (=> d!1450696 (=> (not res!1927236) (not e!2872706))))

(assert (=> d!1450696 (= res!1927236 (forall!10656 (toList!4717 lm!1477) lambda!187405))))

(assert (=> d!1450696 (= (forallContained!2904 (toList!4717 lm!1477) lambda!187405 lt!1763136) lt!1763229)))

(declare-fun b!4605500 () Bool)

(assert (=> b!4605500 (= e!2872706 (contains!14147 (toList!4717 lm!1477) lt!1763136))))

(assert (= (and d!1450696 res!1927236) b!4605500))

(declare-fun b_lambda!169951 () Bool)

(assert (=> (not b_lambda!169951) (not d!1450696)))

(declare-fun m!5434869 () Bool)

(assert (=> d!1450696 m!5434869))

(declare-fun m!5434871 () Bool)

(assert (=> d!1450696 m!5434871))

(assert (=> d!1450696 m!5434737))

(assert (=> b!4605500 m!5434701))

(assert (=> b!4605384 d!1450696))

(declare-fun d!1450702 () Bool)

(declare-fun lt!1763232 () Bool)

(declare-fun content!8681 (List!51284) (Set tuple2!51856))

(assert (=> d!1450702 (= lt!1763232 (set.member lt!1763136 (content!8681 (toList!4717 lm!1477))))))

(declare-fun e!2872715 () Bool)

(assert (=> d!1450702 (= lt!1763232 e!2872715)))

(declare-fun res!1927245 () Bool)

(assert (=> d!1450702 (=> (not res!1927245) (not e!2872715))))

(assert (=> d!1450702 (= res!1927245 (is-Cons!51160 (toList!4717 lm!1477)))))

(assert (=> d!1450702 (= (contains!14147 (toList!4717 lm!1477) lt!1763136) lt!1763232)))

(declare-fun b!4605509 () Bool)

(declare-fun e!2872716 () Bool)

(assert (=> b!4605509 (= e!2872715 e!2872716)))

(declare-fun res!1927246 () Bool)

(assert (=> b!4605509 (=> res!1927246 e!2872716)))

(assert (=> b!4605509 (= res!1927246 (= (h!57140 (toList!4717 lm!1477)) lt!1763136))))

(declare-fun b!4605510 () Bool)

(assert (=> b!4605510 (= e!2872716 (contains!14147 (t!358278 (toList!4717 lm!1477)) lt!1763136))))

(assert (= (and d!1450702 res!1927245) b!4605509))

(assert (= (and b!4605509 (not res!1927246)) b!4605510))

(declare-fun m!5434877 () Bool)

(assert (=> d!1450702 m!5434877))

(declare-fun m!5434879 () Bool)

(assert (=> d!1450702 m!5434879))

(assert (=> b!4605510 m!5434723))

(assert (=> b!4605384 d!1450702))

(declare-fun d!1450706 () Bool)

(declare-fun get!16921 (Option!11421) List!51283)

(assert (=> d!1450706 (= (apply!12088 lm!1477 hash!344) (get!16921 (getValueByKey!1339 (toList!4717 lm!1477) hash!344)))))

(declare-fun bs!1014290 () Bool)

(assert (= bs!1014290 d!1450706))

(assert (=> bs!1014290 m!5434849))

(assert (=> bs!1014290 m!5434849))

(declare-fun m!5434881 () Bool)

(assert (=> bs!1014290 m!5434881))

(assert (=> b!4605384 d!1450706))

(declare-fun d!1450708 () Bool)

(declare-fun lt!1763233 () Bool)

(assert (=> d!1450708 (= lt!1763233 (set.member lt!1763136 (content!8681 (t!358278 (toList!4717 lm!1477)))))))

(declare-fun e!2872719 () Bool)

(assert (=> d!1450708 (= lt!1763233 e!2872719)))

(declare-fun res!1927249 () Bool)

(assert (=> d!1450708 (=> (not res!1927249) (not e!2872719))))

(assert (=> d!1450708 (= res!1927249 (is-Cons!51160 (t!358278 (toList!4717 lm!1477))))))

(assert (=> d!1450708 (= (contains!14147 (t!358278 (toList!4717 lm!1477)) lt!1763136) lt!1763233)))

(declare-fun b!4605513 () Bool)

(declare-fun e!2872720 () Bool)

(assert (=> b!4605513 (= e!2872719 e!2872720)))

(declare-fun res!1927250 () Bool)

(assert (=> b!4605513 (=> res!1927250 e!2872720)))

(assert (=> b!4605513 (= res!1927250 (= (h!57140 (t!358278 (toList!4717 lm!1477))) lt!1763136))))

(declare-fun b!4605514 () Bool)

(assert (=> b!4605514 (= e!2872720 (contains!14147 (t!358278 (t!358278 (toList!4717 lm!1477))) lt!1763136))))

(assert (= (and d!1450708 res!1927249) b!4605513))

(assert (= (and b!4605513 (not res!1927250)) b!4605514))

(declare-fun m!5434887 () Bool)

(assert (=> d!1450708 m!5434887))

(declare-fun m!5434889 () Bool)

(assert (=> d!1450708 m!5434889))

(declare-fun m!5434891 () Bool)

(assert (=> b!4605514 m!5434891))

(assert (=> b!4605373 d!1450708))

(declare-fun d!1450712 () Bool)

(assert (=> d!1450712 (= (apply!12088 lt!1763140 hash!344) (get!16921 (getValueByKey!1339 (toList!4717 lt!1763140) hash!344)))))

(declare-fun bs!1014291 () Bool)

(assert (= bs!1014291 d!1450712))

(declare-fun m!5434893 () Bool)

(assert (=> bs!1014291 m!5434893))

(assert (=> bs!1014291 m!5434893))

(declare-fun m!5434895 () Bool)

(assert (=> bs!1014291 m!5434895))

(assert (=> b!4605375 d!1450712))

(declare-fun d!1450714 () Bool)

(declare-fun res!1927259 () Bool)

(declare-fun e!2872729 () Bool)

(assert (=> d!1450714 (=> res!1927259 e!2872729)))

(assert (=> d!1450714 (= res!1927259 (is-Nil!51160 (toList!4717 lt!1763140)))))

(assert (=> d!1450714 (= (forall!10656 (toList!4717 lt!1763140) lambda!187405) e!2872729)))

(declare-fun b!4605523 () Bool)

(declare-fun e!2872730 () Bool)

(assert (=> b!4605523 (= e!2872729 e!2872730)))

(declare-fun res!1927260 () Bool)

(assert (=> b!4605523 (=> (not res!1927260) (not e!2872730))))

(assert (=> b!4605523 (= res!1927260 (dynLambda!21421 lambda!187405 (h!57140 (toList!4717 lt!1763140))))))

(declare-fun b!4605524 () Bool)

(assert (=> b!4605524 (= e!2872730 (forall!10656 (t!358278 (toList!4717 lt!1763140)) lambda!187405))))

(assert (= (and d!1450714 (not res!1927259)) b!4605523))

(assert (= (and b!4605523 res!1927260) b!4605524))

(declare-fun b_lambda!169953 () Bool)

(assert (=> (not b_lambda!169953) (not b!4605523)))

(declare-fun m!5434897 () Bool)

(assert (=> b!4605523 m!5434897))

(declare-fun m!5434899 () Bool)

(assert (=> b!4605524 m!5434899))

(assert (=> b!4605374 d!1450714))

(declare-fun d!1450716 () Bool)

(declare-fun res!1927267 () Bool)

(declare-fun e!2872737 () Bool)

(assert (=> d!1450716 (=> res!1927267 e!2872737)))

(assert (=> d!1450716 (= res!1927267 (and (is-Cons!51159 lt!1763142) (= (_1!29221 (h!57139 lt!1763142)) key!3287)))))

(assert (=> d!1450716 (= (containsKey!2218 lt!1763142 key!3287) e!2872737)))

(declare-fun b!4605531 () Bool)

(declare-fun e!2872738 () Bool)

(assert (=> b!4605531 (= e!2872737 e!2872738)))

(declare-fun res!1927268 () Bool)

(assert (=> b!4605531 (=> (not res!1927268) (not e!2872738))))

(assert (=> b!4605531 (= res!1927268 (is-Cons!51159 lt!1763142))))

(declare-fun b!4605532 () Bool)

(assert (=> b!4605532 (= e!2872738 (containsKey!2218 (t!358277 lt!1763142) key!3287))))

(assert (= (and d!1450716 (not res!1927267)) b!4605531))

(assert (= (and b!4605531 res!1927268) b!4605532))

(declare-fun m!5434903 () Bool)

(assert (=> b!4605532 m!5434903))

(assert (=> b!4605385 d!1450716))

(declare-fun d!1450720 () Bool)

(declare-fun res!1927273 () Bool)

(declare-fun e!2872743 () Bool)

(assert (=> d!1450720 (=> res!1927273 e!2872743)))

(assert (=> d!1450720 (= res!1927273 (not (is-Cons!51159 newBucket!178)))))

(assert (=> d!1450720 (= (noDuplicateKeys!1351 newBucket!178) e!2872743)))

(declare-fun b!4605537 () Bool)

(declare-fun e!2872744 () Bool)

(assert (=> b!4605537 (= e!2872743 e!2872744)))

(declare-fun res!1927274 () Bool)

(assert (=> b!4605537 (=> (not res!1927274) (not e!2872744))))

(assert (=> b!4605537 (= res!1927274 (not (containsKey!2218 (t!358277 newBucket!178) (_1!29221 (h!57139 newBucket!178)))))))

(declare-fun b!4605538 () Bool)

(assert (=> b!4605538 (= e!2872744 (noDuplicateKeys!1351 (t!358277 newBucket!178)))))

(assert (= (and d!1450720 (not res!1927273)) b!4605537))

(assert (= (and b!4605537 res!1927274) b!4605538))

(declare-fun m!5434907 () Bool)

(assert (=> b!4605537 m!5434907))

(declare-fun m!5434909 () Bool)

(assert (=> b!4605538 m!5434909))

(assert (=> b!4605376 d!1450720))

(declare-fun d!1450724 () Bool)

(declare-fun hash!3279 (Hashable!5750 K!12528) (_ BitVec 64))

(assert (=> d!1450724 (= (hash!3277 hashF!1107 key!3287) (hash!3279 hashF!1107 key!3287))))

(declare-fun bs!1014293 () Bool)

(assert (= bs!1014293 d!1450724))

(declare-fun m!5434911 () Bool)

(assert (=> bs!1014293 m!5434911))

(assert (=> b!4605377 d!1450724))

(declare-fun d!1450726 () Bool)

(declare-fun res!1927281 () Bool)

(declare-fun e!2872751 () Bool)

(assert (=> d!1450726 (=> res!1927281 e!2872751)))

(assert (=> d!1450726 (= res!1927281 (is-Nil!51160 (toList!4717 lm!1477)))))

(assert (=> d!1450726 (= (forall!10656 (toList!4717 lm!1477) lambda!187405) e!2872751)))

(declare-fun b!4605545 () Bool)

(declare-fun e!2872752 () Bool)

(assert (=> b!4605545 (= e!2872751 e!2872752)))

(declare-fun res!1927282 () Bool)

(assert (=> b!4605545 (=> (not res!1927282) (not e!2872752))))

(assert (=> b!4605545 (= res!1927282 (dynLambda!21421 lambda!187405 (h!57140 (toList!4717 lm!1477))))))

(declare-fun b!4605546 () Bool)

(assert (=> b!4605546 (= e!2872752 (forall!10656 (t!358278 (toList!4717 lm!1477)) lambda!187405))))

(assert (= (and d!1450726 (not res!1927281)) b!4605545))

(assert (= (and b!4605545 res!1927282) b!4605546))

(declare-fun b_lambda!169955 () Bool)

(assert (=> (not b_lambda!169955) (not b!4605545)))

(declare-fun m!5434913 () Bool)

(assert (=> b!4605545 m!5434913))

(declare-fun m!5434915 () Bool)

(assert (=> b!4605546 m!5434915))

(assert (=> start!460130 d!1450726))

(declare-fun d!1450728 () Bool)

(assert (=> d!1450728 (= (inv!66713 lm!1477) (isStrictlySorted!554 (toList!4717 lm!1477)))))

(declare-fun bs!1014294 () Bool)

(assert (= bs!1014294 d!1450728))

(assert (=> bs!1014294 m!5434847))

(assert (=> start!460130 d!1450728))

(declare-fun d!1450730 () Bool)

(assert (=> d!1450730 true))

(assert (=> d!1450730 true))

(declare-fun lambda!187421 () Int)

(declare-fun forall!10658 (List!51283 Int) Bool)

(assert (=> d!1450730 (= (allKeysSameHash!1207 newBucket!178 hash!344 hashF!1107) (forall!10658 newBucket!178 lambda!187421))))

(declare-fun bs!1014295 () Bool)

(assert (= bs!1014295 d!1450730))

(declare-fun m!5434925 () Bool)

(assert (=> bs!1014295 m!5434925))

(assert (=> b!4605379 d!1450730))

(declare-fun bs!1014300 () Bool)

(declare-fun d!1450736 () Bool)

(assert (= bs!1014300 (and d!1450736 start!460130)))

(declare-fun lambda!187430 () Int)

(assert (=> bs!1014300 (= lambda!187430 lambda!187405)))

(declare-fun bs!1014301 () Bool)

(assert (= bs!1014301 (and d!1450736 d!1450692)))

(assert (=> bs!1014301 (= lambda!187430 lambda!187418)))

(assert (=> d!1450736 (not (contains!14148 (extractMap!1411 (toList!4717 lm!1477)) key!3287))))

(declare-fun lt!1763239 () Unit!108939)

(declare-fun choose!30941 (ListLongMap!3349 K!12528 Hashable!5750) Unit!108939)

(assert (=> d!1450736 (= lt!1763239 (choose!30941 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1450736 (forall!10656 (toList!4717 lm!1477) lambda!187430)))

(assert (=> d!1450736 (= (lemmaNotInItsHashBucketThenNotInMap!315 lm!1477 key!3287 hashF!1107) lt!1763239)))

(declare-fun bs!1014302 () Bool)

(assert (= bs!1014302 d!1450736))

(assert (=> bs!1014302 m!5434719))

(assert (=> bs!1014302 m!5434719))

(assert (=> bs!1014302 m!5434721))

(declare-fun m!5434933 () Bool)

(assert (=> bs!1014302 m!5434933))

(declare-fun m!5434935 () Bool)

(assert (=> bs!1014302 m!5434935))

(assert (=> b!4605378 d!1450736))

(declare-fun d!1450742 () Bool)

(declare-fun res!1927295 () Bool)

(declare-fun e!2872767 () Bool)

(assert (=> d!1450742 (=> res!1927295 e!2872767)))

(declare-fun e!2872766 () Bool)

(assert (=> d!1450742 (= res!1927295 e!2872766)))

(declare-fun res!1927296 () Bool)

(assert (=> d!1450742 (=> (not res!1927296) (not e!2872766))))

(assert (=> d!1450742 (= res!1927296 (is-Cons!51160 (t!358278 (toList!4717 lm!1477))))))

(assert (=> d!1450742 (= (containsKeyBiggerList!291 (t!358278 (toList!4717 lm!1477)) key!3287) e!2872767)))

(declare-fun b!4605567 () Bool)

(assert (=> b!4605567 (= e!2872766 (containsKey!2218 (_2!29222 (h!57140 (t!358278 (toList!4717 lm!1477)))) key!3287))))

(declare-fun b!4605568 () Bool)

(declare-fun e!2872765 () Bool)

(assert (=> b!4605568 (= e!2872767 e!2872765)))

(declare-fun res!1927297 () Bool)

(assert (=> b!4605568 (=> (not res!1927297) (not e!2872765))))

(assert (=> b!4605568 (= res!1927297 (is-Cons!51160 (t!358278 (toList!4717 lm!1477))))))

(declare-fun b!4605569 () Bool)

(assert (=> b!4605569 (= e!2872765 (containsKeyBiggerList!291 (t!358278 (t!358278 (toList!4717 lm!1477))) key!3287))))

(assert (= (and d!1450742 res!1927296) b!4605567))

(assert (= (and d!1450742 (not res!1927295)) b!4605568))

(assert (= (and b!4605568 res!1927297) b!4605569))

(declare-fun m!5434937 () Bool)

(assert (=> b!4605567 m!5434937))

(declare-fun m!5434939 () Bool)

(assert (=> b!4605569 m!5434939))

(assert (=> b!4605380 d!1450742))

(declare-fun d!1450744 () Bool)

(declare-fun res!1927298 () Bool)

(declare-fun e!2872770 () Bool)

(assert (=> d!1450744 (=> res!1927298 e!2872770)))

(declare-fun e!2872769 () Bool)

(assert (=> d!1450744 (= res!1927298 e!2872769)))

(declare-fun res!1927299 () Bool)

(assert (=> d!1450744 (=> (not res!1927299) (not e!2872769))))

(assert (=> d!1450744 (= res!1927299 (is-Cons!51160 (toList!4717 lt!1763140)))))

(assert (=> d!1450744 (= (containsKeyBiggerList!291 (toList!4717 lt!1763140) key!3287) e!2872770)))

(declare-fun b!4605570 () Bool)

(assert (=> b!4605570 (= e!2872769 (containsKey!2218 (_2!29222 (h!57140 (toList!4717 lt!1763140))) key!3287))))

(declare-fun b!4605571 () Bool)

(declare-fun e!2872768 () Bool)

(assert (=> b!4605571 (= e!2872770 e!2872768)))

(declare-fun res!1927300 () Bool)

(assert (=> b!4605571 (=> (not res!1927300) (not e!2872768))))

(assert (=> b!4605571 (= res!1927300 (is-Cons!51160 (toList!4717 lt!1763140)))))

(declare-fun b!4605572 () Bool)

(assert (=> b!4605572 (= e!2872768 (containsKeyBiggerList!291 (t!358278 (toList!4717 lt!1763140)) key!3287))))

(assert (= (and d!1450744 res!1927299) b!4605570))

(assert (= (and d!1450744 (not res!1927298)) b!4605571))

(assert (= (and b!4605571 res!1927300) b!4605572))

(declare-fun m!5434941 () Bool)

(assert (=> b!4605570 m!5434941))

(declare-fun m!5434943 () Bool)

(assert (=> b!4605572 m!5434943))

(assert (=> b!4605380 d!1450744))

(declare-fun bs!1014303 () Bool)

(declare-fun d!1450746 () Bool)

(assert (= bs!1014303 (and d!1450746 start!460130)))

(declare-fun lambda!187433 () Int)

(assert (=> bs!1014303 (= lambda!187433 lambda!187405)))

(declare-fun bs!1014304 () Bool)

(assert (= bs!1014304 (and d!1450746 d!1450692)))

(assert (=> bs!1014304 (= lambda!187433 lambda!187418)))

(declare-fun bs!1014305 () Bool)

(assert (= bs!1014305 (and d!1450746 d!1450736)))

(assert (=> bs!1014305 (= lambda!187433 lambda!187430)))

(assert (=> d!1450746 (containsKeyBiggerList!291 (toList!4717 lt!1763140) key!3287)))

(declare-fun lt!1763242 () Unit!108939)

(declare-fun choose!30942 (ListLongMap!3349 K!12528 Hashable!5750) Unit!108939)

(assert (=> d!1450746 (= lt!1763242 (choose!30942 lt!1763140 key!3287 hashF!1107))))

(assert (=> d!1450746 (forall!10656 (toList!4717 lt!1763140) lambda!187433)))

(assert (=> d!1450746 (= (lemmaInLongMapThenContainsKeyBiggerList!161 lt!1763140 key!3287 hashF!1107) lt!1763242)))

(declare-fun bs!1014306 () Bool)

(assert (= bs!1014306 d!1450746))

(assert (=> bs!1014306 m!5434713))

(declare-fun m!5434945 () Bool)

(assert (=> bs!1014306 m!5434945))

(declare-fun m!5434947 () Bool)

(assert (=> bs!1014306 m!5434947))

(assert (=> b!4605380 d!1450746))

(declare-fun b!4605599 () Bool)

(declare-fun e!2872792 () Bool)

(declare-fun e!2872789 () Bool)

(assert (=> b!4605599 (= e!2872792 e!2872789)))

(declare-fun res!1927309 () Bool)

(assert (=> b!4605599 (=> (not res!1927309) (not e!2872789))))

(declare-datatypes ((Option!11422 0))(
  ( (None!11421) (Some!11421 (v!45451 V!12774)) )
))
(declare-fun isDefined!8690 (Option!11422) Bool)

(declare-fun getValueByKey!1340 (List!51283 K!12528) Option!11422)

(assert (=> b!4605599 (= res!1927309 (isDefined!8690 (getValueByKey!1340 (toList!4718 (extractMap!1411 (toList!4717 lm!1477))) key!3287)))))

(declare-fun b!4605600 () Bool)

(declare-fun e!2872790 () Unit!108939)

(declare-fun e!2872788 () Unit!108939)

(assert (=> b!4605600 (= e!2872790 e!2872788)))

(declare-fun c!788965 () Bool)

(declare-fun call!321294 () Bool)

(assert (=> b!4605600 (= c!788965 call!321294)))

(declare-fun b!4605601 () Bool)

(declare-datatypes ((List!51287 0))(
  ( (Nil!51163) (Cons!51163 (h!57145 K!12528) (t!358281 List!51287)) )
))
(declare-fun contains!14153 (List!51287 K!12528) Bool)

(declare-fun keys!17932 (ListMap!3979) List!51287)

(assert (=> b!4605601 (= e!2872789 (contains!14153 (keys!17932 (extractMap!1411 (toList!4717 lm!1477))) key!3287))))

(declare-fun b!4605602 () Bool)

(declare-fun e!2872791 () List!51287)

(declare-fun getKeysList!587 (List!51283) List!51287)

(assert (=> b!4605602 (= e!2872791 (getKeysList!587 (toList!4718 (extractMap!1411 (toList!4717 lm!1477)))))))

(declare-fun b!4605603 () Bool)

(assert (=> b!4605603 false))

(declare-fun lt!1763276 () Unit!108939)

(declare-fun lt!1763282 () Unit!108939)

(assert (=> b!4605603 (= lt!1763276 lt!1763282)))

(declare-fun containsKey!2221 (List!51283 K!12528) Bool)

(assert (=> b!4605603 (containsKey!2221 (toList!4718 (extractMap!1411 (toList!4717 lm!1477))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!586 (List!51283 K!12528) Unit!108939)

(assert (=> b!4605603 (= lt!1763282 (lemmaInGetKeysListThenContainsKey!586 (toList!4718 (extractMap!1411 (toList!4717 lm!1477))) key!3287))))

(declare-fun Unit!108948 () Unit!108939)

(assert (=> b!4605603 (= e!2872788 Unit!108948)))

(declare-fun b!4605604 () Bool)

(declare-fun e!2872787 () Bool)

(assert (=> b!4605604 (= e!2872787 (not (contains!14153 (keys!17932 (extractMap!1411 (toList!4717 lm!1477))) key!3287)))))

(declare-fun b!4605605 () Bool)

(assert (=> b!4605605 (= e!2872791 (keys!17932 (extractMap!1411 (toList!4717 lm!1477))))))

(declare-fun bm!321289 () Bool)

(assert (=> bm!321289 (= call!321294 (contains!14153 e!2872791 key!3287))))

(declare-fun c!788967 () Bool)

(declare-fun c!788966 () Bool)

(assert (=> bm!321289 (= c!788967 c!788966)))

(declare-fun b!4605606 () Bool)

(declare-fun Unit!108949 () Unit!108939)

(assert (=> b!4605606 (= e!2872788 Unit!108949)))

(declare-fun d!1450748 () Bool)

(assert (=> d!1450748 e!2872792))

(declare-fun res!1927307 () Bool)

(assert (=> d!1450748 (=> res!1927307 e!2872792)))

(assert (=> d!1450748 (= res!1927307 e!2872787)))

(declare-fun res!1927308 () Bool)

(assert (=> d!1450748 (=> (not res!1927308) (not e!2872787))))

(declare-fun lt!1763275 () Bool)

(assert (=> d!1450748 (= res!1927308 (not lt!1763275))))

(declare-fun lt!1763281 () Bool)

(assert (=> d!1450748 (= lt!1763275 lt!1763281)))

(declare-fun lt!1763279 () Unit!108939)

(assert (=> d!1450748 (= lt!1763279 e!2872790)))

(assert (=> d!1450748 (= c!788966 lt!1763281)))

(assert (=> d!1450748 (= lt!1763281 (containsKey!2221 (toList!4718 (extractMap!1411 (toList!4717 lm!1477))) key!3287))))

(assert (=> d!1450748 (= (contains!14148 (extractMap!1411 (toList!4717 lm!1477)) key!3287) lt!1763275)))

(declare-fun b!4605607 () Bool)

(declare-fun lt!1763278 () Unit!108939)

(assert (=> b!4605607 (= e!2872790 lt!1763278)))

(declare-fun lt!1763280 () Unit!108939)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1244 (List!51283 K!12528) Unit!108939)

(assert (=> b!4605607 (= lt!1763280 (lemmaContainsKeyImpliesGetValueByKeyDefined!1244 (toList!4718 (extractMap!1411 (toList!4717 lm!1477))) key!3287))))

(assert (=> b!4605607 (isDefined!8690 (getValueByKey!1340 (toList!4718 (extractMap!1411 (toList!4717 lm!1477))) key!3287))))

(declare-fun lt!1763277 () Unit!108939)

(assert (=> b!4605607 (= lt!1763277 lt!1763280)))

(declare-fun lemmaInListThenGetKeysListContains!583 (List!51283 K!12528) Unit!108939)

(assert (=> b!4605607 (= lt!1763278 (lemmaInListThenGetKeysListContains!583 (toList!4718 (extractMap!1411 (toList!4717 lm!1477))) key!3287))))

(assert (=> b!4605607 call!321294))

(assert (= (and d!1450748 c!788966) b!4605607))

(assert (= (and d!1450748 (not c!788966)) b!4605600))

(assert (= (and b!4605600 c!788965) b!4605603))

(assert (= (and b!4605600 (not c!788965)) b!4605606))

(assert (= (or b!4605607 b!4605600) bm!321289))

(assert (= (and bm!321289 c!788967) b!4605602))

(assert (= (and bm!321289 (not c!788967)) b!4605605))

(assert (= (and d!1450748 res!1927308) b!4605604))

(assert (= (and d!1450748 (not res!1927307)) b!4605599))

(assert (= (and b!4605599 res!1927309) b!4605601))

(declare-fun m!5434949 () Bool)

(assert (=> bm!321289 m!5434949))

(assert (=> b!4605601 m!5434719))

(declare-fun m!5434951 () Bool)

(assert (=> b!4605601 m!5434951))

(assert (=> b!4605601 m!5434951))

(declare-fun m!5434953 () Bool)

(assert (=> b!4605601 m!5434953))

(declare-fun m!5434955 () Bool)

(assert (=> d!1450748 m!5434955))

(assert (=> b!4605605 m!5434719))

(assert (=> b!4605605 m!5434951))

(declare-fun m!5434957 () Bool)

(assert (=> b!4605602 m!5434957))

(declare-fun m!5434959 () Bool)

(assert (=> b!4605607 m!5434959))

(declare-fun m!5434961 () Bool)

(assert (=> b!4605607 m!5434961))

(assert (=> b!4605607 m!5434961))

(declare-fun m!5434963 () Bool)

(assert (=> b!4605607 m!5434963))

(declare-fun m!5434965 () Bool)

(assert (=> b!4605607 m!5434965))

(assert (=> b!4605604 m!5434719))

(assert (=> b!4605604 m!5434951))

(assert (=> b!4605604 m!5434951))

(assert (=> b!4605604 m!5434953))

(assert (=> b!4605599 m!5434961))

(assert (=> b!4605599 m!5434961))

(assert (=> b!4605599 m!5434963))

(assert (=> b!4605603 m!5434955))

(declare-fun m!5434967 () Bool)

(assert (=> b!4605603 m!5434967))

(assert (=> b!4605381 d!1450748))

(declare-fun bs!1014307 () Bool)

(declare-fun d!1450750 () Bool)

(assert (= bs!1014307 (and d!1450750 start!460130)))

(declare-fun lambda!187436 () Int)

(assert (=> bs!1014307 (= lambda!187436 lambda!187405)))

(declare-fun bs!1014308 () Bool)

(assert (= bs!1014308 (and d!1450750 d!1450692)))

(assert (=> bs!1014308 (= lambda!187436 lambda!187418)))

(declare-fun bs!1014309 () Bool)

(assert (= bs!1014309 (and d!1450750 d!1450736)))

(assert (=> bs!1014309 (= lambda!187436 lambda!187430)))

(declare-fun bs!1014310 () Bool)

(assert (= bs!1014310 (and d!1450750 d!1450746)))

(assert (=> bs!1014310 (= lambda!187436 lambda!187433)))

(declare-fun lt!1763293 () ListMap!3979)

(declare-fun invariantList!1138 (List!51283) Bool)

(assert (=> d!1450750 (invariantList!1138 (toList!4718 lt!1763293))))

(declare-fun e!2872809 () ListMap!3979)

(assert (=> d!1450750 (= lt!1763293 e!2872809)))

(declare-fun c!788975 () Bool)

(assert (=> d!1450750 (= c!788975 (is-Cons!51160 (toList!4717 lm!1477)))))

(assert (=> d!1450750 (forall!10656 (toList!4717 lm!1477) lambda!187436)))

(assert (=> d!1450750 (= (extractMap!1411 (toList!4717 lm!1477)) lt!1763293)))

(declare-fun b!4605631 () Bool)

(declare-fun addToMapMapFromBucket!830 (List!51283 ListMap!3979) ListMap!3979)

(assert (=> b!4605631 (= e!2872809 (addToMapMapFromBucket!830 (_2!29222 (h!57140 (toList!4717 lm!1477))) (extractMap!1411 (t!358278 (toList!4717 lm!1477)))))))

(declare-fun b!4605632 () Bool)

(assert (=> b!4605632 (= e!2872809 (ListMap!3980 Nil!51159))))

(assert (= (and d!1450750 c!788975) b!4605631))

(assert (= (and d!1450750 (not c!788975)) b!4605632))

(declare-fun m!5434989 () Bool)

(assert (=> d!1450750 m!5434989))

(declare-fun m!5434991 () Bool)

(assert (=> d!1450750 m!5434991))

(declare-fun m!5434993 () Bool)

(assert (=> b!4605631 m!5434993))

(assert (=> b!4605631 m!5434993))

(declare-fun m!5434995 () Bool)

(assert (=> b!4605631 m!5434995))

(assert (=> b!4605381 d!1450750))

(declare-fun d!1450754 () Bool)

(declare-fun e!2872810 () Bool)

(assert (=> d!1450754 e!2872810))

(declare-fun res!1927319 () Bool)

(assert (=> d!1450754 (=> res!1927319 e!2872810)))

(declare-fun lt!1763294 () Bool)

(assert (=> d!1450754 (= res!1927319 (not lt!1763294))))

(declare-fun lt!1763296 () Bool)

(assert (=> d!1450754 (= lt!1763294 lt!1763296)))

(declare-fun lt!1763295 () Unit!108939)

(declare-fun e!2872811 () Unit!108939)

(assert (=> d!1450754 (= lt!1763295 e!2872811)))

(declare-fun c!788976 () Bool)

(assert (=> d!1450754 (= c!788976 lt!1763296)))

(assert (=> d!1450754 (= lt!1763296 (containsKey!2220 (toList!4717 lt!1763140) hash!344))))

(assert (=> d!1450754 (= (contains!14149 lt!1763140 hash!344) lt!1763294)))

(declare-fun b!4605633 () Bool)

(declare-fun lt!1763297 () Unit!108939)

(assert (=> b!4605633 (= e!2872811 lt!1763297)))

(assert (=> b!4605633 (= lt!1763297 (lemmaContainsKeyImpliesGetValueByKeyDefined!1243 (toList!4717 lt!1763140) hash!344))))

(assert (=> b!4605633 (isDefined!8689 (getValueByKey!1339 (toList!4717 lt!1763140) hash!344))))

(declare-fun b!4605634 () Bool)

(declare-fun Unit!108951 () Unit!108939)

(assert (=> b!4605634 (= e!2872811 Unit!108951)))

(declare-fun b!4605635 () Bool)

(assert (=> b!4605635 (= e!2872810 (isDefined!8689 (getValueByKey!1339 (toList!4717 lt!1763140) hash!344)))))

(assert (= (and d!1450754 c!788976) b!4605633))

(assert (= (and d!1450754 (not c!788976)) b!4605634))

(assert (= (and d!1450754 (not res!1927319)) b!4605635))

(declare-fun m!5434997 () Bool)

(assert (=> d!1450754 m!5434997))

(declare-fun m!5434999 () Bool)

(assert (=> b!4605633 m!5434999))

(assert (=> b!4605633 m!5434893))

(assert (=> b!4605633 m!5434893))

(declare-fun m!5435001 () Bool)

(assert (=> b!4605633 m!5435001))

(assert (=> b!4605635 m!5434893))

(assert (=> b!4605635 m!5434893))

(assert (=> b!4605635 m!5435001))

(assert (=> b!4605383 d!1450754))

(declare-fun d!1450756 () Bool)

(declare-fun tail!8001 (List!51284) List!51284)

(assert (=> d!1450756 (= (tail!7999 lm!1477) (ListLongMap!3350 (tail!8001 (toList!4717 lm!1477))))))

(declare-fun bs!1014311 () Bool)

(assert (= bs!1014311 d!1450756))

(declare-fun m!5435003 () Bool)

(assert (=> bs!1014311 m!5435003))

(assert (=> b!4605383 d!1450756))

(declare-fun bs!1014312 () Bool)

(declare-fun d!1450758 () Bool)

(assert (= bs!1014312 (and d!1450758 d!1450692)))

(declare-fun lambda!187439 () Int)

(assert (=> bs!1014312 (not (= lambda!187439 lambda!187418))))

(declare-fun bs!1014313 () Bool)

(assert (= bs!1014313 (and d!1450758 start!460130)))

(assert (=> bs!1014313 (not (= lambda!187439 lambda!187405))))

(declare-fun bs!1014314 () Bool)

(assert (= bs!1014314 (and d!1450758 d!1450746)))

(assert (=> bs!1014314 (not (= lambda!187439 lambda!187433))))

(declare-fun bs!1014315 () Bool)

(assert (= bs!1014315 (and d!1450758 d!1450750)))

(assert (=> bs!1014315 (not (= lambda!187439 lambda!187436))))

(declare-fun bs!1014316 () Bool)

(assert (= bs!1014316 (and d!1450758 d!1450736)))

(assert (=> bs!1014316 (not (= lambda!187439 lambda!187430))))

(assert (=> d!1450758 true))

(assert (=> d!1450758 (= (allKeysSameHashInMap!1462 lm!1477 hashF!1107) (forall!10656 (toList!4717 lm!1477) lambda!187439))))

(declare-fun bs!1014317 () Bool)

(assert (= bs!1014317 d!1450758))

(declare-fun m!5435005 () Bool)

(assert (=> bs!1014317 m!5435005))

(assert (=> b!4605382 d!1450758))

(declare-fun b!4605642 () Bool)

(declare-fun e!2872814 () Bool)

(declare-fun tp!1340808 () Bool)

(assert (=> b!4605642 (= e!2872814 (and tp_is_empty!28697 tp_is_empty!28699 tp!1340808))))

(assert (=> b!4605371 (= tp!1340799 e!2872814)))

(assert (= (and b!4605371 (is-Cons!51159 (t!358277 newBucket!178))) b!4605642))

(declare-fun b!4605647 () Bool)

(declare-fun e!2872817 () Bool)

(declare-fun tp!1340813 () Bool)

(declare-fun tp!1340814 () Bool)

(assert (=> b!4605647 (= e!2872817 (and tp!1340813 tp!1340814))))

(assert (=> b!4605386 (= tp!1340798 e!2872817)))

(assert (= (and b!4605386 (is-Cons!51160 (toList!4717 lm!1477))) b!4605647))

(declare-fun b_lambda!169957 () Bool)

(assert (= b_lambda!169955 (or start!460130 b_lambda!169957)))

(declare-fun bs!1014318 () Bool)

(declare-fun d!1450760 () Bool)

(assert (= bs!1014318 (and d!1450760 start!460130)))

(assert (=> bs!1014318 (= (dynLambda!21421 lambda!187405 (h!57140 (toList!4717 lm!1477))) (noDuplicateKeys!1351 (_2!29222 (h!57140 (toList!4717 lm!1477)))))))

(declare-fun m!5435007 () Bool)

(assert (=> bs!1014318 m!5435007))

(assert (=> b!4605545 d!1450760))

(declare-fun b_lambda!169959 () Bool)

(assert (= b_lambda!169951 (or start!460130 b_lambda!169959)))

(declare-fun bs!1014319 () Bool)

(declare-fun d!1450762 () Bool)

(assert (= bs!1014319 (and d!1450762 start!460130)))

(assert (=> bs!1014319 (= (dynLambda!21421 lambda!187405 lt!1763136) (noDuplicateKeys!1351 (_2!29222 lt!1763136)))))

(declare-fun m!5435009 () Bool)

(assert (=> bs!1014319 m!5435009))

(assert (=> d!1450696 d!1450762))

(declare-fun b_lambda!169961 () Bool)

(assert (= b_lambda!169953 (or start!460130 b_lambda!169961)))

(declare-fun bs!1014320 () Bool)

(declare-fun d!1450764 () Bool)

(assert (= bs!1014320 (and d!1450764 start!460130)))

(assert (=> bs!1014320 (= (dynLambda!21421 lambda!187405 (h!57140 (toList!4717 lt!1763140))) (noDuplicateKeys!1351 (_2!29222 (h!57140 (toList!4717 lt!1763140)))))))

(declare-fun m!5435011 () Bool)

(assert (=> bs!1014320 m!5435011))

(assert (=> b!4605523 d!1450764))

(push 1)

(assert (not b_lambda!169959))

(assert (not d!1450736))

(assert (not b!4605647))

(assert (not b!4605635))

(assert (not d!1450708))

(assert (not b!4605633))

(assert (not b!4605514))

(assert (not b!4605492))

(assert (not d!1450758))

(assert (not b_lambda!169957))

(assert (not b!4605510))

(assert (not d!1450748))

(assert (not d!1450706))

(assert (not b!4605532))

(assert (not d!1450750))

(assert (not d!1450696))

(assert (not b!4605538))

(assert (not b!4605631))

(assert (not d!1450724))

(assert (not b!4605642))

(assert (not b!4605485))

(assert (not b!4605570))

(assert (not b!4605524))

(assert (not b!4605466))

(assert (not d!1450692))

(assert (not b!4605500))

(assert (not b!4605607))

(assert (not bm!321289))

(assert (not b!4605546))

(assert (not b!4605567))

(assert (not d!1450754))

(assert (not b!4605537))

(assert (not b!4605572))

(assert (not b!4605605))

(assert (not bs!1014319))

(assert (not d!1450690))

(assert (not b!4605569))

(assert (not d!1450712))

(assert (not bs!1014318))

(assert (not d!1450756))

(assert (not d!1450688))

(assert tp_is_empty!28699)

(assert (not d!1450728))

(assert (not b!4605599))

(assert tp_is_empty!28697)

(assert (not b_lambda!169961))

(assert (not b!4605604))

(assert (not d!1450730))

(assert (not d!1450702))

(assert (not b!4605602))

(assert (not b!4605603))

(assert (not d!1450684))

(assert (not b!4605601))

(assert (not d!1450746))

(assert (not b!4605468))

(assert (not bs!1014320))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

