; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!499592 () Bool)

(assert start!499592)

(declare-fun b!4820906 () Bool)

(declare-fun e!3012096 () Bool)

(declare-fun e!3012093 () Bool)

(assert (=> b!4820906 (= e!3012096 e!3012093)))

(declare-fun res!2051702 () Bool)

(assert (=> b!4820906 (=> (not res!2051702) (not e!3012093))))

(declare-datatypes ((V!16843 0))(
  ( (V!16844 (val!21583 Int)) )
))
(declare-datatypes ((K!16597 0))(
  ( (K!16598 (val!21584 Int)) )
))
(declare-datatypes ((tuple2!58102 0))(
  ( (tuple2!58103 (_1!32345 K!16597) (_2!32345 V!16843)) )
))
(declare-datatypes ((List!55038 0))(
  ( (Nil!54914) (Cons!54914 (h!61348 tuple2!58102) (t!362534 List!55038)) )
))
(declare-datatypes ((tuple2!58104 0))(
  ( (tuple2!58105 (_1!32346 (_ BitVec 64)) (_2!32346 List!55038)) )
))
(declare-datatypes ((List!55039 0))(
  ( (Nil!54915) (Cons!54915 (h!61349 tuple2!58104) (t!362535 List!55039)) )
))
(declare-datatypes ((ListLongMap!5949 0))(
  ( (ListLongMap!5950 (toList!7441 List!55039)) )
))
(declare-fun lm!2280 () ListLongMap!5949)

(declare-fun lt!1969511 () (_ BitVec 64))

(declare-fun contains!18720 (ListLongMap!5949 (_ BitVec 64)) Bool)

(assert (=> b!4820906 (= res!2051702 (contains!18720 lm!2280 lt!1969511))))

(declare-datatypes ((Hashable!7243 0))(
  ( (HashableExt!7242 (__x!33518 Int)) )
))
(declare-fun hashF!1509 () Hashable!7243)

(declare-fun key!5428 () K!16597)

(declare-fun hash!5340 (Hashable!7243 K!16597) (_ BitVec 64))

(assert (=> b!4820906 (= lt!1969511 (hash!5340 hashF!1509 key!5428))))

(declare-fun res!2051704 () Bool)

(assert (=> start!499592 (=> (not res!2051704) (not e!3012096))))

(declare-fun lambda!235485 () Int)

(declare-fun forall!12561 (List!55039 Int) Bool)

(assert (=> start!499592 (= res!2051704 (forall!12561 (toList!7441 lm!2280) lambda!235485))))

(assert (=> start!499592 e!3012096))

(declare-fun e!3012095 () Bool)

(declare-fun inv!70498 (ListLongMap!5949) Bool)

(assert (=> start!499592 (and (inv!70498 lm!2280) e!3012095)))

(assert (=> start!499592 true))

(declare-fun tp_is_empty!34385 () Bool)

(assert (=> start!499592 tp_is_empty!34385))

(declare-fun b!4820907 () Bool)

(declare-fun e!3012094 () Bool)

(declare-datatypes ((ListMap!6827 0))(
  ( (ListMap!6828 (toList!7442 List!55038)) )
))
(declare-fun lt!1969508 () ListMap!6827)

(declare-fun contains!18721 (ListMap!6827 K!16597) Bool)

(assert (=> b!4820907 (= e!3012094 (contains!18721 lt!1969508 key!5428))))

(declare-fun b!4820908 () Bool)

(declare-fun e!3012092 () Bool)

(assert (=> b!4820908 (= e!3012093 (not e!3012092))))

(declare-fun res!2051701 () Bool)

(assert (=> b!4820908 (=> res!2051701 e!3012092)))

(declare-fun noDuplicateKeys!2435 (List!55038) Bool)

(assert (=> b!4820908 (= res!2051701 (not (noDuplicateKeys!2435 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(declare-fun extractMap!2665 (List!55039) ListMap!6827)

(assert (=> b!4820908 (= lt!1969508 (extractMap!2665 (t!362535 (toList!7441 lm!2280))))))

(declare-fun lt!1969509 () ListLongMap!5949)

(assert (=> b!4820908 (not (contains!18721 (extractMap!2665 (toList!7441 lt!1969509)) key!5428))))

(declare-datatypes ((Unit!142316 0))(
  ( (Unit!142317) )
))
(declare-fun lt!1969510 () Unit!142316)

(declare-fun lemmaHashNotInLongMapThenNotInGenerated!87 (ListLongMap!5949 K!16597 Hashable!7243) Unit!142316)

(assert (=> b!4820908 (= lt!1969510 (lemmaHashNotInLongMapThenNotInGenerated!87 lt!1969509 key!5428 hashF!1509))))

(declare-fun tail!9387 (ListLongMap!5949) ListLongMap!5949)

(assert (=> b!4820908 (= lt!1969509 (tail!9387 lm!2280))))

(declare-fun b!4820909 () Bool)

(declare-fun tp!1362351 () Bool)

(assert (=> b!4820909 (= e!3012095 tp!1362351)))

(declare-fun b!4820910 () Bool)

(assert (=> b!4820910 (= e!3012092 (not (contains!18721 (extractMap!2665 (toList!7441 lm!2280)) key!5428)))))

(declare-fun addToMapMapFromBucket!1784 (List!55038 ListMap!6827) ListMap!6827)

(assert (=> b!4820910 (= (contains!18721 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508) key!5428) e!3012094)))

(declare-fun res!2051698 () Bool)

(assert (=> b!4820910 (=> res!2051698 e!3012094)))

(declare-fun containsKey!4321 (List!55038 K!16597) Bool)

(assert (=> b!4820910 (= res!2051698 (containsKey!4321 (_2!32346 (h!61349 (toList!7441 lm!2280))) key!5428))))

(declare-fun lt!1969507 () Unit!142316)

(declare-fun lemmaAddToMapFromBucketContainsIIFInAccOrL!11 (List!55038 ListMap!6827 K!16597) Unit!142316)

(assert (=> b!4820910 (= lt!1969507 (lemmaAddToMapFromBucketContainsIIFInAccOrL!11 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508 key!5428))))

(declare-fun b!4820911 () Bool)

(declare-fun res!2051699 () Bool)

(assert (=> b!4820911 (=> (not res!2051699) (not e!3012093))))

(declare-fun apply!13330 (ListLongMap!5949 (_ BitVec 64)) List!55038)

(assert (=> b!4820911 (= res!2051699 (not (containsKey!4321 (apply!13330 lm!2280 lt!1969511) key!5428)))))

(declare-fun b!4820912 () Bool)

(declare-fun res!2051700 () Bool)

(assert (=> b!4820912 (=> (not res!2051700) (not e!3012096))))

(declare-fun allKeysSameHashInMap!2559 (ListLongMap!5949 Hashable!7243) Bool)

(assert (=> b!4820912 (= res!2051700 (allKeysSameHashInMap!2559 lm!2280 hashF!1509))))

(declare-fun b!4820913 () Bool)

(declare-fun res!2051703 () Bool)

(assert (=> b!4820913 (=> (not res!2051703) (not e!3012093))))

(assert (=> b!4820913 (= res!2051703 (and (is-Cons!54915 (toList!7441 lm!2280)) (= (_1!32346 (h!61349 (toList!7441 lm!2280))) lt!1969511)))))

(assert (= (and start!499592 res!2051704) b!4820912))

(assert (= (and b!4820912 res!2051700) b!4820906))

(assert (= (and b!4820906 res!2051702) b!4820911))

(assert (= (and b!4820911 res!2051699) b!4820913))

(assert (= (and b!4820913 res!2051703) b!4820908))

(assert (= (and b!4820908 (not res!2051701)) b!4820910))

(assert (= (and b!4820910 (not res!2051698)) b!4820907))

(assert (= start!499592 b!4820909))

(declare-fun m!5808306 () Bool)

(assert (=> b!4820912 m!5808306))

(declare-fun m!5808308 () Bool)

(assert (=> b!4820906 m!5808308))

(declare-fun m!5808310 () Bool)

(assert (=> b!4820906 m!5808310))

(declare-fun m!5808312 () Bool)

(assert (=> b!4820910 m!5808312))

(declare-fun m!5808314 () Bool)

(assert (=> b!4820910 m!5808314))

(assert (=> b!4820910 m!5808312))

(declare-fun m!5808316 () Bool)

(assert (=> b!4820910 m!5808316))

(declare-fun m!5808318 () Bool)

(assert (=> b!4820910 m!5808318))

(assert (=> b!4820910 m!5808316))

(declare-fun m!5808320 () Bool)

(assert (=> b!4820910 m!5808320))

(declare-fun m!5808322 () Bool)

(assert (=> b!4820910 m!5808322))

(declare-fun m!5808324 () Bool)

(assert (=> b!4820911 m!5808324))

(assert (=> b!4820911 m!5808324))

(declare-fun m!5808326 () Bool)

(assert (=> b!4820911 m!5808326))

(declare-fun m!5808328 () Bool)

(assert (=> start!499592 m!5808328))

(declare-fun m!5808330 () Bool)

(assert (=> start!499592 m!5808330))

(declare-fun m!5808332 () Bool)

(assert (=> b!4820907 m!5808332))

(declare-fun m!5808334 () Bool)

(assert (=> b!4820908 m!5808334))

(declare-fun m!5808336 () Bool)

(assert (=> b!4820908 m!5808336))

(declare-fun m!5808338 () Bool)

(assert (=> b!4820908 m!5808338))

(declare-fun m!5808340 () Bool)

(assert (=> b!4820908 m!5808340))

(assert (=> b!4820908 m!5808338))

(declare-fun m!5808342 () Bool)

(assert (=> b!4820908 m!5808342))

(declare-fun m!5808344 () Bool)

(assert (=> b!4820908 m!5808344))

(push 1)

(assert (not b!4820909))

(assert (not b!4820906))

(assert tp_is_empty!34385)

(assert (not b!4820907))

(assert (not b!4820911))

(assert (not b!4820912))

(assert (not b!4820910))

(assert (not b!4820908))

(assert (not start!499592))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1543441 () Bool)

(declare-fun res!2051730 () Bool)

(declare-fun e!3012116 () Bool)

(assert (=> d!1543441 (=> res!2051730 e!3012116)))

(assert (=> d!1543441 (= res!2051730 (not (is-Cons!54914 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(assert (=> d!1543441 (= (noDuplicateKeys!2435 (_2!32346 (h!61349 (toList!7441 lm!2280)))) e!3012116)))

(declare-fun b!4820942 () Bool)

(declare-fun e!3012117 () Bool)

(assert (=> b!4820942 (= e!3012116 e!3012117)))

(declare-fun res!2051731 () Bool)

(assert (=> b!4820942 (=> (not res!2051731) (not e!3012117))))

(assert (=> b!4820942 (= res!2051731 (not (containsKey!4321 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))))

(declare-fun b!4820943 () Bool)

(assert (=> b!4820943 (= e!3012117 (noDuplicateKeys!2435 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(assert (= (and d!1543441 (not res!2051730)) b!4820942))

(assert (= (and b!4820942 res!2051731) b!4820943))

(declare-fun m!5808386 () Bool)

(assert (=> b!4820942 m!5808386))

(declare-fun m!5808388 () Bool)

(assert (=> b!4820943 m!5808388))

(assert (=> b!4820908 d!1543441))

(declare-fun b!4820962 () Bool)

(declare-datatypes ((List!55042 0))(
  ( (Nil!54918) (Cons!54918 (h!61352 K!16597) (t!362538 List!55042)) )
))
(declare-fun e!3012130 () List!55042)

(declare-fun getKeysList!1147 (List!55038) List!55042)

(assert (=> b!4820962 (= e!3012130 (getKeysList!1147 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))))

(declare-fun b!4820963 () Bool)

(declare-fun e!3012134 () Bool)

(declare-fun e!3012133 () Bool)

(assert (=> b!4820963 (= e!3012134 e!3012133)))

(declare-fun res!2051740 () Bool)

(assert (=> b!4820963 (=> (not res!2051740) (not e!3012133))))

(declare-datatypes ((Option!13467 0))(
  ( (None!13466) (Some!13466 (v!49135 V!16843)) )
))
(declare-fun isDefined!10582 (Option!13467) Bool)

(declare-fun getValueByKey!2594 (List!55038 K!16597) Option!13467)

(assert (=> b!4820963 (= res!2051740 (isDefined!10582 (getValueByKey!2594 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428)))))

(declare-fun b!4820964 () Bool)

(declare-fun contains!18724 (List!55042 K!16597) Bool)

(declare-fun keys!20192 (ListMap!6827) List!55042)

(assert (=> b!4820964 (= e!3012133 (contains!18724 (keys!20192 (extractMap!2665 (toList!7441 lt!1969509))) key!5428))))

(declare-fun b!4820965 () Bool)

(declare-fun e!3012132 () Unit!142316)

(declare-fun Unit!142320 () Unit!142316)

(assert (=> b!4820965 (= e!3012132 Unit!142320)))

(declare-fun bm!336096 () Bool)

(declare-fun call!336101 () Bool)

(assert (=> bm!336096 (= call!336101 (contains!18724 e!3012130 key!5428))))

(declare-fun c!821482 () Bool)

(declare-fun c!821481 () Bool)

(assert (=> bm!336096 (= c!821482 c!821481)))

(declare-fun b!4820966 () Bool)

(assert (=> b!4820966 (= e!3012130 (keys!20192 (extractMap!2665 (toList!7441 lt!1969509))))))

(declare-fun b!4820967 () Bool)

(declare-fun e!3012135 () Bool)

(assert (=> b!4820967 (= e!3012135 (not (contains!18724 (keys!20192 (extractMap!2665 (toList!7441 lt!1969509))) key!5428)))))

(declare-fun d!1543443 () Bool)

(assert (=> d!1543443 e!3012134))

(declare-fun res!2051739 () Bool)

(assert (=> d!1543443 (=> res!2051739 e!3012134)))

(assert (=> d!1543443 (= res!2051739 e!3012135)))

(declare-fun res!2051738 () Bool)

(assert (=> d!1543443 (=> (not res!2051738) (not e!3012135))))

(declare-fun lt!1969544 () Bool)

(assert (=> d!1543443 (= res!2051738 (not lt!1969544))))

(declare-fun lt!1969549 () Bool)

(assert (=> d!1543443 (= lt!1969544 lt!1969549)))

(declare-fun lt!1969548 () Unit!142316)

(declare-fun e!3012131 () Unit!142316)

(assert (=> d!1543443 (= lt!1969548 e!3012131)))

(assert (=> d!1543443 (= c!821481 lt!1969549)))

(declare-fun containsKey!4323 (List!55038 K!16597) Bool)

(assert (=> d!1543443 (= lt!1969549 (containsKey!4323 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428))))

(assert (=> d!1543443 (= (contains!18721 (extractMap!2665 (toList!7441 lt!1969509)) key!5428) lt!1969544)))

(declare-fun b!4820968 () Bool)

(assert (=> b!4820968 (= e!3012131 e!3012132)))

(declare-fun c!821483 () Bool)

(assert (=> b!4820968 (= c!821483 call!336101)))

(declare-fun b!4820969 () Bool)

(assert (=> b!4820969 false))

(declare-fun lt!1969545 () Unit!142316)

(declare-fun lt!1969550 () Unit!142316)

(assert (=> b!4820969 (= lt!1969545 lt!1969550)))

(assert (=> b!4820969 (containsKey!4323 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428)))

(declare-fun lemmaInGetKeysListThenContainsKey!1147 (List!55038 K!16597) Unit!142316)

(assert (=> b!4820969 (= lt!1969550 (lemmaInGetKeysListThenContainsKey!1147 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428))))

(declare-fun Unit!142321 () Unit!142316)

(assert (=> b!4820969 (= e!3012132 Unit!142321)))

(declare-fun b!4820970 () Bool)

(declare-fun lt!1969547 () Unit!142316)

(assert (=> b!4820970 (= e!3012131 lt!1969547)))

(declare-fun lt!1969543 () Unit!142316)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2379 (List!55038 K!16597) Unit!142316)

(assert (=> b!4820970 (= lt!1969543 (lemmaContainsKeyImpliesGetValueByKeyDefined!2379 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428))))

(assert (=> b!4820970 (isDefined!10582 (getValueByKey!2594 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428))))

(declare-fun lt!1969546 () Unit!142316)

(assert (=> b!4820970 (= lt!1969546 lt!1969543)))

(declare-fun lemmaInListThenGetKeysListContains!1142 (List!55038 K!16597) Unit!142316)

(assert (=> b!4820970 (= lt!1969547 (lemmaInListThenGetKeysListContains!1142 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428))))

(assert (=> b!4820970 call!336101))

(assert (= (and d!1543443 c!821481) b!4820970))

(assert (= (and d!1543443 (not c!821481)) b!4820968))

(assert (= (and b!4820968 c!821483) b!4820969))

(assert (= (and b!4820968 (not c!821483)) b!4820965))

(assert (= (or b!4820970 b!4820968) bm!336096))

(assert (= (and bm!336096 c!821482) b!4820962))

(assert (= (and bm!336096 (not c!821482)) b!4820966))

(assert (= (and d!1543443 res!2051738) b!4820967))

(assert (= (and d!1543443 (not res!2051739)) b!4820963))

(assert (= (and b!4820963 res!2051740) b!4820964))

(declare-fun m!5808390 () Bool)

(assert (=> bm!336096 m!5808390))

(assert (=> b!4820967 m!5808338))

(declare-fun m!5808392 () Bool)

(assert (=> b!4820967 m!5808392))

(assert (=> b!4820967 m!5808392))

(declare-fun m!5808394 () Bool)

(assert (=> b!4820967 m!5808394))

(assert (=> b!4820966 m!5808338))

(assert (=> b!4820966 m!5808392))

(declare-fun m!5808396 () Bool)

(assert (=> b!4820962 m!5808396))

(declare-fun m!5808398 () Bool)

(assert (=> b!4820970 m!5808398))

(declare-fun m!5808400 () Bool)

(assert (=> b!4820970 m!5808400))

(assert (=> b!4820970 m!5808400))

(declare-fun m!5808402 () Bool)

(assert (=> b!4820970 m!5808402))

(declare-fun m!5808404 () Bool)

(assert (=> b!4820970 m!5808404))

(assert (=> b!4820963 m!5808400))

(assert (=> b!4820963 m!5808400))

(assert (=> b!4820963 m!5808402))

(declare-fun m!5808406 () Bool)

(assert (=> d!1543443 m!5808406))

(assert (=> b!4820964 m!5808338))

(assert (=> b!4820964 m!5808392))

(assert (=> b!4820964 m!5808392))

(assert (=> b!4820964 m!5808394))

(assert (=> b!4820969 m!5808406))

(declare-fun m!5808408 () Bool)

(assert (=> b!4820969 m!5808408))

(assert (=> b!4820908 d!1543443))

(declare-fun bs!1161626 () Bool)

(declare-fun d!1543447 () Bool)

(assert (= bs!1161626 (and d!1543447 start!499592)))

(declare-fun lambda!235491 () Int)

(assert (=> bs!1161626 (= lambda!235491 lambda!235485)))

(declare-fun lt!1969553 () ListMap!6827)

(declare-fun invariantList!1799 (List!55038) Bool)

(assert (=> d!1543447 (invariantList!1799 (toList!7442 lt!1969553))))

(declare-fun e!3012138 () ListMap!6827)

(assert (=> d!1543447 (= lt!1969553 e!3012138)))

(declare-fun c!821486 () Bool)

(assert (=> d!1543447 (= c!821486 (is-Cons!54915 (toList!7441 lt!1969509)))))

(assert (=> d!1543447 (forall!12561 (toList!7441 lt!1969509) lambda!235491)))

(assert (=> d!1543447 (= (extractMap!2665 (toList!7441 lt!1969509)) lt!1969553)))

(declare-fun b!4820975 () Bool)

(assert (=> b!4820975 (= e!3012138 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lt!1969509))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))))))

(declare-fun b!4820976 () Bool)

(assert (=> b!4820976 (= e!3012138 (ListMap!6828 Nil!54914))))

(assert (= (and d!1543447 c!821486) b!4820975))

(assert (= (and d!1543447 (not c!821486)) b!4820976))

(declare-fun m!5808410 () Bool)

(assert (=> d!1543447 m!5808410))

(declare-fun m!5808412 () Bool)

(assert (=> d!1543447 m!5808412))

(declare-fun m!5808414 () Bool)

(assert (=> b!4820975 m!5808414))

(assert (=> b!4820975 m!5808414))

(declare-fun m!5808416 () Bool)

(assert (=> b!4820975 m!5808416))

(assert (=> b!4820908 d!1543447))

(declare-fun bs!1161627 () Bool)

(declare-fun d!1543449 () Bool)

(assert (= bs!1161627 (and d!1543449 start!499592)))

(declare-fun lambda!235492 () Int)

(assert (=> bs!1161627 (= lambda!235492 lambda!235485)))

(declare-fun bs!1161628 () Bool)

(assert (= bs!1161628 (and d!1543449 d!1543447)))

(assert (=> bs!1161628 (= lambda!235492 lambda!235491)))

(declare-fun lt!1969554 () ListMap!6827)

(assert (=> d!1543449 (invariantList!1799 (toList!7442 lt!1969554))))

(declare-fun e!3012139 () ListMap!6827)

(assert (=> d!1543449 (= lt!1969554 e!3012139)))

(declare-fun c!821487 () Bool)

(assert (=> d!1543449 (= c!821487 (is-Cons!54915 (t!362535 (toList!7441 lm!2280))))))

(assert (=> d!1543449 (forall!12561 (t!362535 (toList!7441 lm!2280)) lambda!235492)))

(assert (=> d!1543449 (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969554)))

(declare-fun b!4820977 () Bool)

(assert (=> b!4820977 (= e!3012139 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280)))) (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))))))

(declare-fun b!4820978 () Bool)

(assert (=> b!4820978 (= e!3012139 (ListMap!6828 Nil!54914))))

(assert (= (and d!1543449 c!821487) b!4820977))

(assert (= (and d!1543449 (not c!821487)) b!4820978))

(declare-fun m!5808418 () Bool)

(assert (=> d!1543449 m!5808418))

(declare-fun m!5808420 () Bool)

(assert (=> d!1543449 m!5808420))

(declare-fun m!5808422 () Bool)

(assert (=> b!4820977 m!5808422))

(assert (=> b!4820977 m!5808422))

(declare-fun m!5808424 () Bool)

(assert (=> b!4820977 m!5808424))

(assert (=> b!4820908 d!1543449))

(declare-fun bs!1161629 () Bool)

(declare-fun d!1543451 () Bool)

(assert (= bs!1161629 (and d!1543451 start!499592)))

(declare-fun lambda!235495 () Int)

(assert (=> bs!1161629 (= lambda!235495 lambda!235485)))

(declare-fun bs!1161630 () Bool)

(assert (= bs!1161630 (and d!1543451 d!1543447)))

(assert (=> bs!1161630 (= lambda!235495 lambda!235491)))

(declare-fun bs!1161631 () Bool)

(assert (= bs!1161631 (and d!1543451 d!1543449)))

(assert (=> bs!1161631 (= lambda!235495 lambda!235492)))

(assert (=> d!1543451 (not (contains!18721 (extractMap!2665 (toList!7441 lt!1969509)) key!5428))))

(declare-fun lt!1969573 () Unit!142316)

(declare-fun choose!35005 (ListLongMap!5949 K!16597 Hashable!7243) Unit!142316)

(assert (=> d!1543451 (= lt!1969573 (choose!35005 lt!1969509 key!5428 hashF!1509))))

(assert (=> d!1543451 (forall!12561 (toList!7441 lt!1969509) lambda!235495)))

(assert (=> d!1543451 (= (lemmaHashNotInLongMapThenNotInGenerated!87 lt!1969509 key!5428 hashF!1509) lt!1969573)))

(declare-fun bs!1161632 () Bool)

(assert (= bs!1161632 d!1543451))

(assert (=> bs!1161632 m!5808338))

(assert (=> bs!1161632 m!5808338))

(assert (=> bs!1161632 m!5808340))

(declare-fun m!5808426 () Bool)

(assert (=> bs!1161632 m!5808426))

(declare-fun m!5808428 () Bool)

(assert (=> bs!1161632 m!5808428))

(assert (=> b!4820908 d!1543451))

(declare-fun d!1543453 () Bool)

(declare-fun tail!9389 (List!55039) List!55039)

(assert (=> d!1543453 (= (tail!9387 lm!2280) (ListLongMap!5950 (tail!9389 (toList!7441 lm!2280))))))

(declare-fun bs!1161633 () Bool)

(assert (= bs!1161633 d!1543453))

(declare-fun m!5808430 () Bool)

(assert (=> bs!1161633 m!5808430))

(assert (=> b!4820908 d!1543453))

(declare-fun bs!1161634 () Bool)

(declare-fun d!1543455 () Bool)

(assert (= bs!1161634 (and d!1543455 start!499592)))

(declare-fun lambda!235498 () Int)

(assert (=> bs!1161634 (not (= lambda!235498 lambda!235485))))

(declare-fun bs!1161635 () Bool)

(assert (= bs!1161635 (and d!1543455 d!1543447)))

(assert (=> bs!1161635 (not (= lambda!235498 lambda!235491))))

(declare-fun bs!1161636 () Bool)

(assert (= bs!1161636 (and d!1543455 d!1543449)))

(assert (=> bs!1161636 (not (= lambda!235498 lambda!235492))))

(declare-fun bs!1161637 () Bool)

(assert (= bs!1161637 (and d!1543455 d!1543451)))

(assert (=> bs!1161637 (not (= lambda!235498 lambda!235495))))

(assert (=> d!1543455 true))

(assert (=> d!1543455 (= (allKeysSameHashInMap!2559 lm!2280 hashF!1509) (forall!12561 (toList!7441 lm!2280) lambda!235498))))

(declare-fun bs!1161638 () Bool)

(assert (= bs!1161638 d!1543455))

(declare-fun m!5808432 () Bool)

(assert (=> bs!1161638 m!5808432))

(assert (=> b!4820912 d!1543455))

(declare-fun b!4820999 () Bool)

(declare-fun e!3012152 () List!55042)

(assert (=> b!4820999 (= e!3012152 (getKeysList!1147 (toList!7442 lt!1969508)))))

(declare-fun b!4821000 () Bool)

(declare-fun e!3012156 () Bool)

(declare-fun e!3012155 () Bool)

(assert (=> b!4821000 (= e!3012156 e!3012155)))

(declare-fun res!2051749 () Bool)

(assert (=> b!4821000 (=> (not res!2051749) (not e!3012155))))

(assert (=> b!4821000 (= res!2051749 (isDefined!10582 (getValueByKey!2594 (toList!7442 lt!1969508) key!5428)))))

(declare-fun b!4821001 () Bool)

(assert (=> b!4821001 (= e!3012155 (contains!18724 (keys!20192 lt!1969508) key!5428))))

(declare-fun b!4821002 () Bool)

(declare-fun e!3012154 () Unit!142316)

(declare-fun Unit!142322 () Unit!142316)

(assert (=> b!4821002 (= e!3012154 Unit!142322)))

(declare-fun bm!336099 () Bool)

(declare-fun call!336104 () Bool)

(assert (=> bm!336099 (= call!336104 (contains!18724 e!3012152 key!5428))))

(declare-fun c!821495 () Bool)

(declare-fun c!821494 () Bool)

(assert (=> bm!336099 (= c!821495 c!821494)))

(declare-fun b!4821003 () Bool)

(assert (=> b!4821003 (= e!3012152 (keys!20192 lt!1969508))))

(declare-fun b!4821004 () Bool)

(declare-fun e!3012157 () Bool)

(assert (=> b!4821004 (= e!3012157 (not (contains!18724 (keys!20192 lt!1969508) key!5428)))))

(declare-fun d!1543457 () Bool)

(assert (=> d!1543457 e!3012156))

(declare-fun res!2051748 () Bool)

(assert (=> d!1543457 (=> res!2051748 e!3012156)))

(assert (=> d!1543457 (= res!2051748 e!3012157)))

(declare-fun res!2051747 () Bool)

(assert (=> d!1543457 (=> (not res!2051747) (not e!3012157))))

(declare-fun lt!1969575 () Bool)

(assert (=> d!1543457 (= res!2051747 (not lt!1969575))))

(declare-fun lt!1969580 () Bool)

(assert (=> d!1543457 (= lt!1969575 lt!1969580)))

(declare-fun lt!1969579 () Unit!142316)

(declare-fun e!3012153 () Unit!142316)

(assert (=> d!1543457 (= lt!1969579 e!3012153)))

(assert (=> d!1543457 (= c!821494 lt!1969580)))

(assert (=> d!1543457 (= lt!1969580 (containsKey!4323 (toList!7442 lt!1969508) key!5428))))

(assert (=> d!1543457 (= (contains!18721 lt!1969508 key!5428) lt!1969575)))

(declare-fun b!4821005 () Bool)

(assert (=> b!4821005 (= e!3012153 e!3012154)))

(declare-fun c!821496 () Bool)

(assert (=> b!4821005 (= c!821496 call!336104)))

(declare-fun b!4821006 () Bool)

(assert (=> b!4821006 false))

(declare-fun lt!1969576 () Unit!142316)

(declare-fun lt!1969581 () Unit!142316)

(assert (=> b!4821006 (= lt!1969576 lt!1969581)))

(assert (=> b!4821006 (containsKey!4323 (toList!7442 lt!1969508) key!5428)))

(assert (=> b!4821006 (= lt!1969581 (lemmaInGetKeysListThenContainsKey!1147 (toList!7442 lt!1969508) key!5428))))

(declare-fun Unit!142323 () Unit!142316)

(assert (=> b!4821006 (= e!3012154 Unit!142323)))

(declare-fun b!4821007 () Bool)

(declare-fun lt!1969578 () Unit!142316)

(assert (=> b!4821007 (= e!3012153 lt!1969578)))

(declare-fun lt!1969574 () Unit!142316)

(assert (=> b!4821007 (= lt!1969574 (lemmaContainsKeyImpliesGetValueByKeyDefined!2379 (toList!7442 lt!1969508) key!5428))))

(assert (=> b!4821007 (isDefined!10582 (getValueByKey!2594 (toList!7442 lt!1969508) key!5428))))

(declare-fun lt!1969577 () Unit!142316)

(assert (=> b!4821007 (= lt!1969577 lt!1969574)))

(assert (=> b!4821007 (= lt!1969578 (lemmaInListThenGetKeysListContains!1142 (toList!7442 lt!1969508) key!5428))))

(assert (=> b!4821007 call!336104))

(assert (= (and d!1543457 c!821494) b!4821007))

(assert (= (and d!1543457 (not c!821494)) b!4821005))

(assert (= (and b!4821005 c!821496) b!4821006))

(assert (= (and b!4821005 (not c!821496)) b!4821002))

(assert (= (or b!4821007 b!4821005) bm!336099))

(assert (= (and bm!336099 c!821495) b!4820999))

(assert (= (and bm!336099 (not c!821495)) b!4821003))

(assert (= (and d!1543457 res!2051747) b!4821004))

(assert (= (and d!1543457 (not res!2051748)) b!4821000))

(assert (= (and b!4821000 res!2051749) b!4821001))

(declare-fun m!5808434 () Bool)

(assert (=> bm!336099 m!5808434))

(declare-fun m!5808436 () Bool)

(assert (=> b!4821004 m!5808436))

(assert (=> b!4821004 m!5808436))

(declare-fun m!5808438 () Bool)

(assert (=> b!4821004 m!5808438))

(assert (=> b!4821003 m!5808436))

(declare-fun m!5808440 () Bool)

(assert (=> b!4820999 m!5808440))

(declare-fun m!5808442 () Bool)

(assert (=> b!4821007 m!5808442))

(declare-fun m!5808444 () Bool)

(assert (=> b!4821007 m!5808444))

(assert (=> b!4821007 m!5808444))

(declare-fun m!5808446 () Bool)

(assert (=> b!4821007 m!5808446))

(declare-fun m!5808448 () Bool)

(assert (=> b!4821007 m!5808448))

(assert (=> b!4821000 m!5808444))

(assert (=> b!4821000 m!5808444))

(assert (=> b!4821000 m!5808446))

(declare-fun m!5808450 () Bool)

(assert (=> d!1543457 m!5808450))

(assert (=> b!4821001 m!5808436))

(assert (=> b!4821001 m!5808436))

(assert (=> b!4821001 m!5808438))

(assert (=> b!4821006 m!5808450))

(declare-fun m!5808452 () Bool)

(assert (=> b!4821006 m!5808452))

(assert (=> b!4820907 d!1543457))

(declare-fun d!1543459 () Bool)

(declare-fun e!3012169 () Bool)

(assert (=> d!1543459 e!3012169))

(declare-fun res!2051755 () Bool)

(assert (=> d!1543459 (=> res!2051755 e!3012169)))

(declare-fun lt!1969599 () Bool)

(assert (=> d!1543459 (= res!2051755 (not lt!1969599))))

(declare-fun lt!1969601 () Bool)

(assert (=> d!1543459 (= lt!1969599 lt!1969601)))

(declare-fun lt!1969598 () Unit!142316)

(declare-fun e!3012168 () Unit!142316)

(assert (=> d!1543459 (= lt!1969598 e!3012168)))

(declare-fun c!821502 () Bool)

(assert (=> d!1543459 (= c!821502 lt!1969601)))

(declare-fun containsKey!4324 (List!55039 (_ BitVec 64)) Bool)

(assert (=> d!1543459 (= lt!1969601 (containsKey!4324 (toList!7441 lm!2280) lt!1969511))))

(assert (=> d!1543459 (= (contains!18720 lm!2280 lt!1969511) lt!1969599)))

(declare-fun b!4821023 () Bool)

(declare-fun lt!1969600 () Unit!142316)

(assert (=> b!4821023 (= e!3012168 lt!1969600)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!2380 (List!55039 (_ BitVec 64)) Unit!142316)

(assert (=> b!4821023 (= lt!1969600 (lemmaContainsKeyImpliesGetValueByKeyDefined!2380 (toList!7441 lm!2280) lt!1969511))))

(declare-datatypes ((Option!13468 0))(
  ( (None!13467) (Some!13467 (v!49136 List!55038)) )
))
(declare-fun isDefined!10583 (Option!13468) Bool)

(declare-fun getValueByKey!2595 (List!55039 (_ BitVec 64)) Option!13468)

(assert (=> b!4821023 (isDefined!10583 (getValueByKey!2595 (toList!7441 lm!2280) lt!1969511))))

(declare-fun b!4821024 () Bool)

(declare-fun Unit!142324 () Unit!142316)

(assert (=> b!4821024 (= e!3012168 Unit!142324)))

(declare-fun b!4821025 () Bool)

(assert (=> b!4821025 (= e!3012169 (isDefined!10583 (getValueByKey!2595 (toList!7441 lm!2280) lt!1969511)))))

(assert (= (and d!1543459 c!821502) b!4821023))

(assert (= (and d!1543459 (not c!821502)) b!4821024))

(assert (= (and d!1543459 (not res!2051755)) b!4821025))

(declare-fun m!5808474 () Bool)

(assert (=> d!1543459 m!5808474))

(declare-fun m!5808476 () Bool)

(assert (=> b!4821023 m!5808476))

(declare-fun m!5808478 () Bool)

(assert (=> b!4821023 m!5808478))

(assert (=> b!4821023 m!5808478))

(declare-fun m!5808480 () Bool)

(assert (=> b!4821023 m!5808480))

(assert (=> b!4821025 m!5808478))

(assert (=> b!4821025 m!5808478))

(assert (=> b!4821025 m!5808480))

(assert (=> b!4820906 d!1543459))

(declare-fun d!1543463 () Bool)

(declare-fun hash!5342 (Hashable!7243 K!16597) (_ BitVec 64))

(assert (=> d!1543463 (= (hash!5340 hashF!1509 key!5428) (hash!5342 hashF!1509 key!5428))))

(declare-fun bs!1161639 () Bool)

(assert (= bs!1161639 d!1543463))

(declare-fun m!5808482 () Bool)

(assert (=> bs!1161639 m!5808482))

(assert (=> b!4820906 d!1543463))

(declare-fun d!1543465 () Bool)

(declare-fun res!2051764 () Bool)

(declare-fun e!3012178 () Bool)

(assert (=> d!1543465 (=> res!2051764 e!3012178)))

(assert (=> d!1543465 (= res!2051764 (and (is-Cons!54914 (apply!13330 lm!2280 lt!1969511)) (= (_1!32345 (h!61348 (apply!13330 lm!2280 lt!1969511))) key!5428)))))

(assert (=> d!1543465 (= (containsKey!4321 (apply!13330 lm!2280 lt!1969511) key!5428) e!3012178)))

(declare-fun b!4821034 () Bool)

(declare-fun e!3012179 () Bool)

(assert (=> b!4821034 (= e!3012178 e!3012179)))

(declare-fun res!2051765 () Bool)

(assert (=> b!4821034 (=> (not res!2051765) (not e!3012179))))

(assert (=> b!4821034 (= res!2051765 (is-Cons!54914 (apply!13330 lm!2280 lt!1969511)))))

(declare-fun b!4821035 () Bool)

(assert (=> b!4821035 (= e!3012179 (containsKey!4321 (t!362534 (apply!13330 lm!2280 lt!1969511)) key!5428))))

(assert (= (and d!1543465 (not res!2051764)) b!4821034))

(assert (= (and b!4821034 res!2051765) b!4821035))

(declare-fun m!5808484 () Bool)

(assert (=> b!4821035 m!5808484))

(assert (=> b!4820911 d!1543465))

(declare-fun d!1543467 () Bool)

(declare-fun get!18797 (Option!13468) List!55038)

(assert (=> d!1543467 (= (apply!13330 lm!2280 lt!1969511) (get!18797 (getValueByKey!2595 (toList!7441 lm!2280) lt!1969511)))))

(declare-fun bs!1161640 () Bool)

(assert (= bs!1161640 d!1543467))

(assert (=> bs!1161640 m!5808478))

(assert (=> bs!1161640 m!5808478))

(declare-fun m!5808486 () Bool)

(assert (=> bs!1161640 m!5808486))

(assert (=> b!4820911 d!1543467))

(declare-fun bs!1161641 () Bool)

(declare-fun d!1543469 () Bool)

(assert (= bs!1161641 (and d!1543469 d!1543447)))

(declare-fun lambda!235499 () Int)

(assert (=> bs!1161641 (= lambda!235499 lambda!235491)))

(declare-fun bs!1161642 () Bool)

(assert (= bs!1161642 (and d!1543469 d!1543451)))

(assert (=> bs!1161642 (= lambda!235499 lambda!235495)))

(declare-fun bs!1161643 () Bool)

(assert (= bs!1161643 (and d!1543469 start!499592)))

(assert (=> bs!1161643 (= lambda!235499 lambda!235485)))

(declare-fun bs!1161644 () Bool)

(assert (= bs!1161644 (and d!1543469 d!1543455)))

(assert (=> bs!1161644 (not (= lambda!235499 lambda!235498))))

(declare-fun bs!1161645 () Bool)

(assert (= bs!1161645 (and d!1543469 d!1543449)))

(assert (=> bs!1161645 (= lambda!235499 lambda!235492)))

(declare-fun lt!1969602 () ListMap!6827)

(assert (=> d!1543469 (invariantList!1799 (toList!7442 lt!1969602))))

(declare-fun e!3012180 () ListMap!6827)

(assert (=> d!1543469 (= lt!1969602 e!3012180)))

(declare-fun c!821503 () Bool)

(assert (=> d!1543469 (= c!821503 (is-Cons!54915 (toList!7441 lm!2280)))))

(assert (=> d!1543469 (forall!12561 (toList!7441 lm!2280) lambda!235499)))

(assert (=> d!1543469 (= (extractMap!2665 (toList!7441 lm!2280)) lt!1969602)))

(declare-fun b!4821036 () Bool)

(assert (=> b!4821036 (= e!3012180 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) (extractMap!2665 (t!362535 (toList!7441 lm!2280)))))))

(declare-fun b!4821037 () Bool)

(assert (=> b!4821037 (= e!3012180 (ListMap!6828 Nil!54914))))

(assert (= (and d!1543469 c!821503) b!4821036))

(assert (= (and d!1543469 (not c!821503)) b!4821037))

(declare-fun m!5808488 () Bool)

(assert (=> d!1543469 m!5808488))

(declare-fun m!5808490 () Bool)

(assert (=> d!1543469 m!5808490))

(assert (=> b!4821036 m!5808344))

(assert (=> b!4821036 m!5808344))

(declare-fun m!5808492 () Bool)

(assert (=> b!4821036 m!5808492))

(assert (=> b!4820910 d!1543469))

(declare-fun b!4821040 () Bool)

(declare-fun e!3012183 () List!55042)

(assert (=> b!4821040 (= e!3012183 (getKeysList!1147 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))))

(declare-fun b!4821041 () Bool)

(declare-fun e!3012187 () Bool)

(declare-fun e!3012186 () Bool)

(assert (=> b!4821041 (= e!3012187 e!3012186)))

(declare-fun res!2051770 () Bool)

(assert (=> b!4821041 (=> (not res!2051770) (not e!3012186))))

(assert (=> b!4821041 (= res!2051770 (isDefined!10582 (getValueByKey!2594 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428)))))

(declare-fun b!4821042 () Bool)

(assert (=> b!4821042 (= e!3012186 (contains!18724 (keys!20192 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428))))

(declare-fun b!4821043 () Bool)

(declare-fun e!3012185 () Unit!142316)

(declare-fun Unit!142325 () Unit!142316)

(assert (=> b!4821043 (= e!3012185 Unit!142325)))

(declare-fun bm!336101 () Bool)

(declare-fun call!336106 () Bool)

(assert (=> bm!336101 (= call!336106 (contains!18724 e!3012183 key!5428))))

(declare-fun c!821505 () Bool)

(declare-fun c!821504 () Bool)

(assert (=> bm!336101 (= c!821505 c!821504)))

(declare-fun b!4821044 () Bool)

(assert (=> b!4821044 (= e!3012183 (keys!20192 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))))

(declare-fun e!3012188 () Bool)

(declare-fun b!4821045 () Bool)

(assert (=> b!4821045 (= e!3012188 (not (contains!18724 (keys!20192 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428)))))

(declare-fun d!1543471 () Bool)

(assert (=> d!1543471 e!3012187))

(declare-fun res!2051769 () Bool)

(assert (=> d!1543471 (=> res!2051769 e!3012187)))

(assert (=> d!1543471 (= res!2051769 e!3012188)))

(declare-fun res!2051768 () Bool)

(assert (=> d!1543471 (=> (not res!2051768) (not e!3012188))))

(declare-fun lt!1969604 () Bool)

(assert (=> d!1543471 (= res!2051768 (not lt!1969604))))

(declare-fun lt!1969609 () Bool)

(assert (=> d!1543471 (= lt!1969604 lt!1969609)))

(declare-fun lt!1969608 () Unit!142316)

(declare-fun e!3012184 () Unit!142316)

(assert (=> d!1543471 (= lt!1969608 e!3012184)))

(assert (=> d!1543471 (= c!821504 lt!1969609)))

(assert (=> d!1543471 (= lt!1969609 (containsKey!4323 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428))))

(assert (=> d!1543471 (= (contains!18721 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508) key!5428) lt!1969604)))

(declare-fun b!4821046 () Bool)

(assert (=> b!4821046 (= e!3012184 e!3012185)))

(declare-fun c!821506 () Bool)

(assert (=> b!4821046 (= c!821506 call!336106)))

(declare-fun b!4821047 () Bool)

(assert (=> b!4821047 false))

(declare-fun lt!1969605 () Unit!142316)

(declare-fun lt!1969610 () Unit!142316)

(assert (=> b!4821047 (= lt!1969605 lt!1969610)))

(assert (=> b!4821047 (containsKey!4323 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428)))

(assert (=> b!4821047 (= lt!1969610 (lemmaInGetKeysListThenContainsKey!1147 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428))))

(declare-fun Unit!142326 () Unit!142316)

(assert (=> b!4821047 (= e!3012185 Unit!142326)))

(declare-fun b!4821048 () Bool)

(declare-fun lt!1969607 () Unit!142316)

(assert (=> b!4821048 (= e!3012184 lt!1969607)))

(declare-fun lt!1969603 () Unit!142316)

(assert (=> b!4821048 (= lt!1969603 (lemmaContainsKeyImpliesGetValueByKeyDefined!2379 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428))))

(assert (=> b!4821048 (isDefined!10582 (getValueByKey!2594 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428))))

(declare-fun lt!1969606 () Unit!142316)

(assert (=> b!4821048 (= lt!1969606 lt!1969603)))

(assert (=> b!4821048 (= lt!1969607 (lemmaInListThenGetKeysListContains!1142 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428))))

(assert (=> b!4821048 call!336106))

(assert (= (and d!1543471 c!821504) b!4821048))

(assert (= (and d!1543471 (not c!821504)) b!4821046))

(assert (= (and b!4821046 c!821506) b!4821047))

(assert (= (and b!4821046 (not c!821506)) b!4821043))

(assert (= (or b!4821048 b!4821046) bm!336101))

(assert (= (and bm!336101 c!821505) b!4821040))

(assert (= (and bm!336101 (not c!821505)) b!4821044))

(assert (= (and d!1543471 res!2051768) b!4821045))

(assert (= (and d!1543471 (not res!2051769)) b!4821041))

(assert (= (and b!4821041 res!2051770) b!4821042))

(declare-fun m!5808498 () Bool)

(assert (=> bm!336101 m!5808498))

(assert (=> b!4821045 m!5808312))

(declare-fun m!5808500 () Bool)

(assert (=> b!4821045 m!5808500))

(assert (=> b!4821045 m!5808500))

(declare-fun m!5808502 () Bool)

(assert (=> b!4821045 m!5808502))

(assert (=> b!4821044 m!5808312))

(assert (=> b!4821044 m!5808500))

(declare-fun m!5808504 () Bool)

(assert (=> b!4821040 m!5808504))

(declare-fun m!5808506 () Bool)

(assert (=> b!4821048 m!5808506))

(declare-fun m!5808508 () Bool)

(assert (=> b!4821048 m!5808508))

(assert (=> b!4821048 m!5808508))

(declare-fun m!5808510 () Bool)

(assert (=> b!4821048 m!5808510))

(declare-fun m!5808512 () Bool)

(assert (=> b!4821048 m!5808512))

(assert (=> b!4821041 m!5808508))

(assert (=> b!4821041 m!5808508))

(assert (=> b!4821041 m!5808510))

(declare-fun m!5808514 () Bool)

(assert (=> d!1543471 m!5808514))

(assert (=> b!4821042 m!5808312))

(assert (=> b!4821042 m!5808500))

(assert (=> b!4821042 m!5808500))

(assert (=> b!4821042 m!5808502))

(assert (=> b!4821047 m!5808514))

(declare-fun m!5808516 () Bool)

(assert (=> b!4821047 m!5808516))

(assert (=> b!4820910 d!1543471))

(declare-fun d!1543475 () Bool)

(declare-fun res!2051771 () Bool)

(declare-fun e!3012189 () Bool)

(assert (=> d!1543475 (=> res!2051771 e!3012189)))

(assert (=> d!1543475 (= res!2051771 (and (is-Cons!54914 (_2!32346 (h!61349 (toList!7441 lm!2280)))) (= (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) key!5428)))))

(assert (=> d!1543475 (= (containsKey!4321 (_2!32346 (h!61349 (toList!7441 lm!2280))) key!5428) e!3012189)))

(declare-fun b!4821049 () Bool)

(declare-fun e!3012190 () Bool)

(assert (=> b!4821049 (= e!3012189 e!3012190)))

(declare-fun res!2051772 () Bool)

(assert (=> b!4821049 (=> (not res!2051772) (not e!3012190))))

(assert (=> b!4821049 (= res!2051772 (is-Cons!54914 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))

(declare-fun b!4821050 () Bool)

(assert (=> b!4821050 (= e!3012190 (containsKey!4321 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))) key!5428))))

(assert (= (and d!1543475 (not res!2051771)) b!4821049))

(assert (= (and b!4821049 res!2051772) b!4821050))

(declare-fun m!5808518 () Bool)

(assert (=> b!4821050 m!5808518))

(assert (=> b!4820910 d!1543475))

(declare-fun b!4821105 () Bool)

(assert (=> b!4821105 true))

(declare-fun bs!1161662 () Bool)

(declare-fun b!4821103 () Bool)

(assert (= bs!1161662 (and b!4821103 b!4821105)))

(declare-fun lambda!235539 () Int)

(declare-fun lambda!235538 () Int)

(assert (=> bs!1161662 (= lambda!235539 lambda!235538)))

(assert (=> b!4821103 true))

(declare-fun lambda!235540 () Int)

(declare-fun lt!1969699 () ListMap!6827)

(assert (=> bs!1161662 (= (= lt!1969699 lt!1969508) (= lambda!235540 lambda!235538))))

(assert (=> b!4821103 (= (= lt!1969699 lt!1969508) (= lambda!235540 lambda!235539))))

(assert (=> b!4821103 true))

(declare-fun bs!1161663 () Bool)

(declare-fun d!1543477 () Bool)

(assert (= bs!1161663 (and d!1543477 b!4821105)))

(declare-fun lt!1969700 () ListMap!6827)

(declare-fun lambda!235541 () Int)

(assert (=> bs!1161663 (= (= lt!1969700 lt!1969508) (= lambda!235541 lambda!235538))))

(declare-fun bs!1161664 () Bool)

(assert (= bs!1161664 (and d!1543477 b!4821103)))

(assert (=> bs!1161664 (= (= lt!1969700 lt!1969508) (= lambda!235541 lambda!235539))))

(assert (=> bs!1161664 (= (= lt!1969700 lt!1969699) (= lambda!235541 lambda!235540))))

(assert (=> d!1543477 true))

(declare-fun b!4821101 () Bool)

(declare-fun res!2051799 () Bool)

(declare-fun e!3012226 () Bool)

(assert (=> b!4821101 (=> (not res!2051799) (not e!3012226))))

(declare-fun forall!12563 (List!55038 Int) Bool)

(assert (=> b!4821101 (= res!2051799 (forall!12563 (toList!7442 lt!1969508) lambda!235541))))

(declare-fun b!4821102 () Bool)

(assert (=> b!4821102 (= e!3012226 (invariantList!1799 (toList!7442 lt!1969700)))))

(declare-fun c!821519 () Bool)

(declare-fun call!336115 () Bool)

(declare-fun bm!336109 () Bool)

(assert (=> bm!336109 (= call!336115 (forall!12563 (ite c!821519 (toList!7442 lt!1969508) (_2!32346 (h!61349 (toList!7441 lm!2280)))) (ite c!821519 lambda!235538 lambda!235540)))))

(declare-fun e!3012227 () ListMap!6827)

(assert (=> b!4821103 (= e!3012227 lt!1969699)))

(declare-fun lt!1969681 () ListMap!6827)

(declare-fun +!2524 (ListMap!6827 tuple2!58102) ListMap!6827)

(assert (=> b!4821103 (= lt!1969681 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(assert (=> b!4821103 (= lt!1969699 (addToMapMapFromBucket!1784 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))) (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun lt!1969698 () Unit!142316)

(declare-fun call!336114 () Unit!142316)

(assert (=> b!4821103 (= lt!1969698 call!336114)))

(assert (=> b!4821103 (forall!12563 (toList!7442 lt!1969508) lambda!235539)))

(declare-fun lt!1969686 () Unit!142316)

(assert (=> b!4821103 (= lt!1969686 lt!1969698)))

(assert (=> b!4821103 (forall!12563 (toList!7442 lt!1969681) lambda!235540)))

(declare-fun lt!1969685 () Unit!142316)

(declare-fun Unit!142327 () Unit!142316)

(assert (=> b!4821103 (= lt!1969685 Unit!142327)))

(declare-fun call!336116 () Bool)

(assert (=> b!4821103 call!336116))

(declare-fun lt!1969691 () Unit!142316)

(declare-fun Unit!142328 () Unit!142316)

(assert (=> b!4821103 (= lt!1969691 Unit!142328)))

(declare-fun lt!1969696 () Unit!142316)

(declare-fun Unit!142329 () Unit!142316)

(assert (=> b!4821103 (= lt!1969696 Unit!142329)))

(declare-fun lt!1969684 () Unit!142316)

(declare-fun forallContained!4361 (List!55038 Int tuple2!58102) Unit!142316)

(assert (=> b!4821103 (= lt!1969684 (forallContained!4361 (toList!7442 lt!1969681) lambda!235540 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(assert (=> b!4821103 (contains!18721 lt!1969681 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(declare-fun lt!1969695 () Unit!142316)

(declare-fun Unit!142330 () Unit!142316)

(assert (=> b!4821103 (= lt!1969695 Unit!142330)))

(assert (=> b!4821103 (contains!18721 lt!1969699 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(declare-fun lt!1969687 () Unit!142316)

(declare-fun Unit!142331 () Unit!142316)

(assert (=> b!4821103 (= lt!1969687 Unit!142331)))

(assert (=> b!4821103 call!336115))

(declare-fun lt!1969693 () Unit!142316)

(declare-fun Unit!142332 () Unit!142316)

(assert (=> b!4821103 (= lt!1969693 Unit!142332)))

(assert (=> b!4821103 (forall!12563 (toList!7442 lt!1969681) lambda!235540)))

(declare-fun lt!1969680 () Unit!142316)

(declare-fun Unit!142333 () Unit!142316)

(assert (=> b!4821103 (= lt!1969680 Unit!142333)))

(declare-fun lt!1969689 () Unit!142316)

(declare-fun Unit!142334 () Unit!142316)

(assert (=> b!4821103 (= lt!1969689 Unit!142334)))

(declare-fun lt!1969690 () Unit!142316)

(declare-fun addForallContainsKeyThenBeforeAdding!978 (ListMap!6827 ListMap!6827 K!16597 V!16843) Unit!142316)

(assert (=> b!4821103 (= lt!1969690 (addForallContainsKeyThenBeforeAdding!978 lt!1969508 lt!1969699 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (_2!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> b!4821103 (forall!12563 (toList!7442 lt!1969508) lambda!235540)))

(declare-fun lt!1969697 () Unit!142316)

(assert (=> b!4821103 (= lt!1969697 lt!1969690)))

(assert (=> b!4821103 (forall!12563 (toList!7442 lt!1969508) lambda!235540)))

(declare-fun lt!1969688 () Unit!142316)

(declare-fun Unit!142335 () Unit!142316)

(assert (=> b!4821103 (= lt!1969688 Unit!142335)))

(declare-fun res!2051798 () Bool)

(assert (=> b!4821103 (= res!2051798 (forall!12563 (_2!32346 (h!61349 (toList!7441 lm!2280))) lambda!235540))))

(declare-fun e!3012225 () Bool)

(assert (=> b!4821103 (=> (not res!2051798) (not e!3012225))))

(assert (=> b!4821103 e!3012225))

(declare-fun lt!1969694 () Unit!142316)

(declare-fun Unit!142336 () Unit!142316)

(assert (=> b!4821103 (= lt!1969694 Unit!142336)))

(declare-fun b!4821104 () Bool)

(assert (=> b!4821104 (= e!3012225 (forall!12563 (toList!7442 lt!1969508) lambda!235540))))

(declare-fun bm!336110 () Bool)

(assert (=> bm!336110 (= call!336116 (forall!12563 (ite c!821519 (toList!7442 lt!1969508) (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (ite c!821519 lambda!235538 lambda!235540)))))

(assert (=> d!1543477 e!3012226))

(declare-fun res!2051797 () Bool)

(assert (=> d!1543477 (=> (not res!2051797) (not e!3012226))))

(assert (=> d!1543477 (= res!2051797 (forall!12563 (_2!32346 (h!61349 (toList!7441 lm!2280))) lambda!235541))))

(assert (=> d!1543477 (= lt!1969700 e!3012227)))

(assert (=> d!1543477 (= c!821519 (is-Nil!54914 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))

(assert (=> d!1543477 (noDuplicateKeys!2435 (_2!32346 (h!61349 (toList!7441 lm!2280))))))

(assert (=> d!1543477 (= (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508) lt!1969700)))

(declare-fun bm!336111 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!979 (ListMap!6827) Unit!142316)

(assert (=> bm!336111 (= call!336114 (lemmaContainsAllItsOwnKeys!979 lt!1969508))))

(assert (=> b!4821105 (= e!3012227 lt!1969508)))

(declare-fun lt!1969692 () Unit!142316)

(assert (=> b!4821105 (= lt!1969692 call!336114)))

(assert (=> b!4821105 call!336115))

(declare-fun lt!1969682 () Unit!142316)

(assert (=> b!4821105 (= lt!1969682 lt!1969692)))

(assert (=> b!4821105 call!336116))

(declare-fun lt!1969683 () Unit!142316)

(declare-fun Unit!142337 () Unit!142316)

(assert (=> b!4821105 (= lt!1969683 Unit!142337)))

(assert (= (and d!1543477 c!821519) b!4821105))

(assert (= (and d!1543477 (not c!821519)) b!4821103))

(assert (= (and b!4821103 res!2051798) b!4821104))

(assert (= (or b!4821105 b!4821103) bm!336109))

(assert (= (or b!4821105 b!4821103) bm!336110))

(assert (= (or b!4821105 b!4821103) bm!336111))

(assert (= (and d!1543477 res!2051797) b!4821101))

(assert (= (and b!4821101 res!2051799) b!4821102))

(declare-fun m!5808584 () Bool)

(assert (=> b!4821103 m!5808584))

(declare-fun m!5808586 () Bool)

(assert (=> b!4821103 m!5808586))

(declare-fun m!5808588 () Bool)

(assert (=> b!4821103 m!5808588))

(declare-fun m!5808590 () Bool)

(assert (=> b!4821103 m!5808590))

(declare-fun m!5808592 () Bool)

(assert (=> b!4821103 m!5808592))

(assert (=> b!4821103 m!5808584))

(declare-fun m!5808594 () Bool)

(assert (=> b!4821103 m!5808594))

(declare-fun m!5808596 () Bool)

(assert (=> b!4821103 m!5808596))

(assert (=> b!4821103 m!5808596))

(declare-fun m!5808598 () Bool)

(assert (=> b!4821103 m!5808598))

(declare-fun m!5808600 () Bool)

(assert (=> b!4821103 m!5808600))

(declare-fun m!5808602 () Bool)

(assert (=> b!4821103 m!5808602))

(assert (=> b!4821103 m!5808600))

(declare-fun m!5808604 () Bool)

(assert (=> bm!336110 m!5808604))

(assert (=> b!4821104 m!5808584))

(declare-fun m!5808606 () Bool)

(assert (=> bm!336111 m!5808606))

(declare-fun m!5808608 () Bool)

(assert (=> bm!336109 m!5808608))

(declare-fun m!5808610 () Bool)

(assert (=> b!4821101 m!5808610))

(declare-fun m!5808612 () Bool)

(assert (=> d!1543477 m!5808612))

(assert (=> d!1543477 m!5808342))

(declare-fun m!5808614 () Bool)

(assert (=> b!4821102 m!5808614))

(assert (=> b!4820910 d!1543477))

(declare-fun e!3012233 () Bool)

(declare-fun d!1543503 () Bool)

(assert (=> d!1543503 (= (contains!18721 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508) key!5428) e!3012233)))

(declare-fun res!2051805 () Bool)

(assert (=> d!1543503 (=> res!2051805 e!3012233)))

(assert (=> d!1543503 (= res!2051805 (containsKey!4321 (_2!32346 (h!61349 (toList!7441 lm!2280))) key!5428))))

(declare-fun lt!1969706 () Unit!142316)

(declare-fun choose!35006 (List!55038 ListMap!6827 K!16597) Unit!142316)

(assert (=> d!1543503 (= lt!1969706 (choose!35006 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508 key!5428))))

(assert (=> d!1543503 (noDuplicateKeys!2435 (_2!32346 (h!61349 (toList!7441 lm!2280))))))

(assert (=> d!1543503 (= (lemmaAddToMapFromBucketContainsIIFInAccOrL!11 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508 key!5428) lt!1969706)))

(declare-fun b!4821113 () Bool)

(assert (=> b!4821113 (= e!3012233 (contains!18721 lt!1969508 key!5428))))

(assert (= (and d!1543503 (not res!2051805)) b!4821113))

(assert (=> d!1543503 m!5808322))

(declare-fun m!5808618 () Bool)

(assert (=> d!1543503 m!5808618))

(assert (=> d!1543503 m!5808312))

(assert (=> d!1543503 m!5808342))

(assert (=> d!1543503 m!5808312))

(assert (=> d!1543503 m!5808314))

(assert (=> b!4821113 m!5808332))

(assert (=> b!4820910 d!1543503))

(declare-fun b!4821114 () Bool)

(declare-fun e!3012234 () List!55042)

(assert (=> b!4821114 (= e!3012234 (getKeysList!1147 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))))

(declare-fun b!4821115 () Bool)

(declare-fun e!3012238 () Bool)

(declare-fun e!3012237 () Bool)

(assert (=> b!4821115 (= e!3012238 e!3012237)))

(declare-fun res!2051808 () Bool)

(assert (=> b!4821115 (=> (not res!2051808) (not e!3012237))))

(assert (=> b!4821115 (= res!2051808 (isDefined!10582 (getValueByKey!2594 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428)))))

(declare-fun b!4821116 () Bool)

(assert (=> b!4821116 (= e!3012237 (contains!18724 (keys!20192 (extractMap!2665 (toList!7441 lm!2280))) key!5428))))

(declare-fun b!4821117 () Bool)

(declare-fun e!3012236 () Unit!142316)

(declare-fun Unit!142338 () Unit!142316)

(assert (=> b!4821117 (= e!3012236 Unit!142338)))

(declare-fun bm!336112 () Bool)

(declare-fun call!336117 () Bool)

(assert (=> bm!336112 (= call!336117 (contains!18724 e!3012234 key!5428))))

(declare-fun c!821521 () Bool)

(declare-fun c!821520 () Bool)

(assert (=> bm!336112 (= c!821521 c!821520)))

(declare-fun b!4821118 () Bool)

(assert (=> b!4821118 (= e!3012234 (keys!20192 (extractMap!2665 (toList!7441 lm!2280))))))

(declare-fun b!4821119 () Bool)

(declare-fun e!3012239 () Bool)

(assert (=> b!4821119 (= e!3012239 (not (contains!18724 (keys!20192 (extractMap!2665 (toList!7441 lm!2280))) key!5428)))))

(declare-fun d!1543507 () Bool)

(assert (=> d!1543507 e!3012238))

(declare-fun res!2051807 () Bool)

(assert (=> d!1543507 (=> res!2051807 e!3012238)))

(assert (=> d!1543507 (= res!2051807 e!3012239)))

(declare-fun res!2051806 () Bool)

(assert (=> d!1543507 (=> (not res!2051806) (not e!3012239))))

(declare-fun lt!1969708 () Bool)

(assert (=> d!1543507 (= res!2051806 (not lt!1969708))))

(declare-fun lt!1969713 () Bool)

(assert (=> d!1543507 (= lt!1969708 lt!1969713)))

(declare-fun lt!1969712 () Unit!142316)

(declare-fun e!3012235 () Unit!142316)

(assert (=> d!1543507 (= lt!1969712 e!3012235)))

(assert (=> d!1543507 (= c!821520 lt!1969713)))

(assert (=> d!1543507 (= lt!1969713 (containsKey!4323 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428))))

(assert (=> d!1543507 (= (contains!18721 (extractMap!2665 (toList!7441 lm!2280)) key!5428) lt!1969708)))

(declare-fun b!4821120 () Bool)

(assert (=> b!4821120 (= e!3012235 e!3012236)))

(declare-fun c!821522 () Bool)

(assert (=> b!4821120 (= c!821522 call!336117)))

(declare-fun b!4821121 () Bool)

(assert (=> b!4821121 false))

(declare-fun lt!1969709 () Unit!142316)

(declare-fun lt!1969714 () Unit!142316)

(assert (=> b!4821121 (= lt!1969709 lt!1969714)))

(assert (=> b!4821121 (containsKey!4323 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428)))

(assert (=> b!4821121 (= lt!1969714 (lemmaInGetKeysListThenContainsKey!1147 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428))))

(declare-fun Unit!142339 () Unit!142316)

(assert (=> b!4821121 (= e!3012236 Unit!142339)))

(declare-fun b!4821122 () Bool)

(declare-fun lt!1969711 () Unit!142316)

(assert (=> b!4821122 (= e!3012235 lt!1969711)))

(declare-fun lt!1969707 () Unit!142316)

(assert (=> b!4821122 (= lt!1969707 (lemmaContainsKeyImpliesGetValueByKeyDefined!2379 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428))))

(assert (=> b!4821122 (isDefined!10582 (getValueByKey!2594 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428))))

(declare-fun lt!1969710 () Unit!142316)

(assert (=> b!4821122 (= lt!1969710 lt!1969707)))

(assert (=> b!4821122 (= lt!1969711 (lemmaInListThenGetKeysListContains!1142 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428))))

(assert (=> b!4821122 call!336117))

(assert (= (and d!1543507 c!821520) b!4821122))

(assert (= (and d!1543507 (not c!821520)) b!4821120))

(assert (= (and b!4821120 c!821522) b!4821121))

(assert (= (and b!4821120 (not c!821522)) b!4821117))

(assert (= (or b!4821122 b!4821120) bm!336112))

(assert (= (and bm!336112 c!821521) b!4821114))

(assert (= (and bm!336112 (not c!821521)) b!4821118))

(assert (= (and d!1543507 res!2051806) b!4821119))

(assert (= (and d!1543507 (not res!2051807)) b!4821115))

(assert (= (and b!4821115 res!2051808) b!4821116))

(declare-fun m!5808620 () Bool)

(assert (=> bm!336112 m!5808620))

(assert (=> b!4821119 m!5808316))

(declare-fun m!5808622 () Bool)

(assert (=> b!4821119 m!5808622))

(assert (=> b!4821119 m!5808622))

(declare-fun m!5808624 () Bool)

(assert (=> b!4821119 m!5808624))

(assert (=> b!4821118 m!5808316))

(assert (=> b!4821118 m!5808622))

(declare-fun m!5808626 () Bool)

(assert (=> b!4821114 m!5808626))

(declare-fun m!5808628 () Bool)

(assert (=> b!4821122 m!5808628))

(declare-fun m!5808630 () Bool)

(assert (=> b!4821122 m!5808630))

(assert (=> b!4821122 m!5808630))

(declare-fun m!5808632 () Bool)

(assert (=> b!4821122 m!5808632))

(declare-fun m!5808634 () Bool)

(assert (=> b!4821122 m!5808634))

(assert (=> b!4821115 m!5808630))

(assert (=> b!4821115 m!5808630))

(assert (=> b!4821115 m!5808632))

(declare-fun m!5808636 () Bool)

(assert (=> d!1543507 m!5808636))

(assert (=> b!4821116 m!5808316))

(assert (=> b!4821116 m!5808622))

(assert (=> b!4821116 m!5808622))

(assert (=> b!4821116 m!5808624))

(assert (=> b!4821121 m!5808636))

(declare-fun m!5808638 () Bool)

(assert (=> b!4821121 m!5808638))

(assert (=> b!4820910 d!1543507))

(declare-fun d!1543509 () Bool)

(declare-fun res!2051813 () Bool)

(declare-fun e!3012244 () Bool)

(assert (=> d!1543509 (=> res!2051813 e!3012244)))

(assert (=> d!1543509 (= res!2051813 (is-Nil!54915 (toList!7441 lm!2280)))))

(assert (=> d!1543509 (= (forall!12561 (toList!7441 lm!2280) lambda!235485) e!3012244)))

(declare-fun b!4821127 () Bool)

(declare-fun e!3012245 () Bool)

(assert (=> b!4821127 (= e!3012244 e!3012245)))

(declare-fun res!2051814 () Bool)

(assert (=> b!4821127 (=> (not res!2051814) (not e!3012245))))

(declare-fun dynLambda!22190 (Int tuple2!58104) Bool)

(assert (=> b!4821127 (= res!2051814 (dynLambda!22190 lambda!235485 (h!61349 (toList!7441 lm!2280))))))

(declare-fun b!4821128 () Bool)

(assert (=> b!4821128 (= e!3012245 (forall!12561 (t!362535 (toList!7441 lm!2280)) lambda!235485))))

(assert (= (and d!1543509 (not res!2051813)) b!4821127))

(assert (= (and b!4821127 res!2051814) b!4821128))

(declare-fun b_lambda!189045 () Bool)

(assert (=> (not b_lambda!189045) (not b!4821127)))

(declare-fun m!5808640 () Bool)

(assert (=> b!4821127 m!5808640))

(declare-fun m!5808642 () Bool)

(assert (=> b!4821128 m!5808642))

(assert (=> start!499592 d!1543509))

(declare-fun d!1543511 () Bool)

(declare-fun isStrictlySorted!970 (List!55039) Bool)

(assert (=> d!1543511 (= (inv!70498 lm!2280) (isStrictlySorted!970 (toList!7441 lm!2280)))))

(declare-fun bs!1161665 () Bool)

(assert (= bs!1161665 d!1543511))

(declare-fun m!5808644 () Bool)

(assert (=> bs!1161665 m!5808644))

(assert (=> start!499592 d!1543511))

(declare-fun b!4821133 () Bool)

(declare-fun e!3012248 () Bool)

(declare-fun tp!1362359 () Bool)

(declare-fun tp!1362360 () Bool)

(assert (=> b!4821133 (= e!3012248 (and tp!1362359 tp!1362360))))

(assert (=> b!4820909 (= tp!1362351 e!3012248)))

(assert (= (and b!4820909 (is-Cons!54915 (toList!7441 lm!2280))) b!4821133))

(declare-fun b_lambda!189047 () Bool)

(assert (= b_lambda!189045 (or start!499592 b_lambda!189047)))

(declare-fun bs!1161666 () Bool)

(declare-fun d!1543513 () Bool)

(assert (= bs!1161666 (and d!1543513 start!499592)))

(assert (=> bs!1161666 (= (dynLambda!22190 lambda!235485 (h!61349 (toList!7441 lm!2280))) (noDuplicateKeys!2435 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))

(assert (=> bs!1161666 m!5808342))

(assert (=> b!4821127 d!1543513))

(push 1)

(assert (not b!4821047))

(assert (not b!4821040))

(assert (not d!1543459))

(assert (not bm!336099))

(assert (not b!4821119))

(assert (not b!4821023))

(assert (not d!1543469))

(assert (not b!4821115))

(assert (not b!4821113))

(assert (not b!4820975))

(assert (not b!4820942))

(assert (not b!4821114))

(assert (not b!4821006))

(assert (not b!4821001))

(assert (not b!4821101))

(assert (not b_lambda!189047))

(assert (not bm!336112))

(assert (not b!4821121))

(assert (not d!1543447))

(assert (not d!1543455))

(assert (not b!4821133))

(assert (not d!1543453))

(assert (not d!1543467))

(assert (not d!1543511))

(assert (not b!4821004))

(assert (not b!4821000))

(assert (not d!1543443))

(assert (not b!4820969))

(assert (not b!4820964))

(assert (not b!4821104))

(assert (not b!4821003))

(assert tp_is_empty!34385)

(assert (not b!4821102))

(assert (not b!4821118))

(assert (not b!4820970))

(assert (not d!1543449))

(assert (not b!4820963))

(assert (not b!4821041))

(assert (not d!1543477))

(assert (not b!4821036))

(assert (not bm!336109))

(assert (not bm!336111))

(assert (not bm!336101))

(assert (not b!4820962))

(assert (not d!1543451))

(assert (not b!4821122))

(assert (not b!4821042))

(assert (not b!4821128))

(assert (not d!1543503))

(assert (not d!1543457))

(assert (not b!4820967))

(assert (not b!4821116))

(assert (not b!4821044))

(assert (not d!1543463))

(assert (not bs!1161666))

(assert (not b!4821050))

(assert (not b!4821045))

(assert (not b!4821048))

(assert (not d!1543471))

(assert (not b!4821103))

(assert (not b!4820966))

(assert (not b!4821035))

(assert (not b!4820977))

(assert (not b!4821025))

(assert (not bm!336110))

(assert (not d!1543507))

(assert (not b!4820999))

(assert (not bm!336096))

(assert (not b!4821007))

(assert (not b!4820943))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun d!1543525 () Bool)

(declare-fun res!2051836 () Bool)

(declare-fun e!3012280 () Bool)

(assert (=> d!1543525 (=> res!2051836 e!3012280)))

(assert (=> d!1543525 (= res!2051836 (and (is-Cons!54914 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) key!5428)))))

(assert (=> d!1543525 (= (containsKey!4323 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428) e!3012280)))

(declare-fun b!4821182 () Bool)

(declare-fun e!3012281 () Bool)

(assert (=> b!4821182 (= e!3012280 e!3012281)))

(declare-fun res!2051837 () Bool)

(assert (=> b!4821182 (=> (not res!2051837) (not e!3012281))))

(assert (=> b!4821182 (= res!2051837 (is-Cons!54914 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))))

(declare-fun b!4821183 () Bool)

(assert (=> b!4821183 (= e!3012281 (containsKey!4323 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) key!5428))))

(assert (= (and d!1543525 (not res!2051836)) b!4821182))

(assert (= (and b!4821182 res!2051837) b!4821183))

(declare-fun m!5808728 () Bool)

(assert (=> b!4821183 m!5808728))

(assert (=> b!4821121 d!1543525))

(declare-fun d!1543527 () Bool)

(assert (=> d!1543527 (containsKey!4323 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428)))

(declare-fun lt!1969797 () Unit!142316)

(declare-fun choose!35009 (List!55038 K!16597) Unit!142316)

(assert (=> d!1543527 (= lt!1969797 (choose!35009 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428))))

(assert (=> d!1543527 (invariantList!1799 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))))

(assert (=> d!1543527 (= (lemmaInGetKeysListThenContainsKey!1147 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428) lt!1969797)))

(declare-fun bs!1161676 () Bool)

(assert (= bs!1161676 d!1543527))

(assert (=> bs!1161676 m!5808636))

(declare-fun m!5808730 () Bool)

(assert (=> bs!1161676 m!5808730))

(declare-fun m!5808732 () Bool)

(assert (=> bs!1161676 m!5808732))

(assert (=> b!4821121 d!1543527))

(declare-fun d!1543529 () Bool)

(assert (=> d!1543529 (isDefined!10582 (getValueByKey!2594 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428))))

(declare-fun lt!1969800 () Unit!142316)

(declare-fun choose!35010 (List!55038 K!16597) Unit!142316)

(assert (=> d!1543529 (= lt!1969800 (choose!35010 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428))))

(assert (=> d!1543529 (invariantList!1799 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))))

(assert (=> d!1543529 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2379 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428) lt!1969800)))

(declare-fun bs!1161677 () Bool)

(assert (= bs!1161677 d!1543529))

(assert (=> bs!1161677 m!5808508))

(assert (=> bs!1161677 m!5808508))

(assert (=> bs!1161677 m!5808510))

(declare-fun m!5808734 () Bool)

(assert (=> bs!1161677 m!5808734))

(declare-fun m!5808736 () Bool)

(assert (=> bs!1161677 m!5808736))

(assert (=> b!4821048 d!1543529))

(declare-fun d!1543531 () Bool)

(declare-fun isEmpty!29629 (Option!13467) Bool)

(assert (=> d!1543531 (= (isDefined!10582 (getValueByKey!2594 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428)) (not (isEmpty!29629 (getValueByKey!2594 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428))))))

(declare-fun bs!1161678 () Bool)

(assert (= bs!1161678 d!1543531))

(assert (=> bs!1161678 m!5808508))

(declare-fun m!5808738 () Bool)

(assert (=> bs!1161678 m!5808738))

(assert (=> b!4821048 d!1543531))

(declare-fun b!4821195 () Bool)

(declare-fun e!3012287 () Option!13467)

(assert (=> b!4821195 (= e!3012287 None!13466)))

(declare-fun b!4821194 () Bool)

(assert (=> b!4821194 (= e!3012287 (getValueByKey!2594 (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) key!5428))))

(declare-fun b!4821193 () Bool)

(declare-fun e!3012286 () Option!13467)

(assert (=> b!4821193 (= e!3012286 e!3012287)))

(declare-fun c!821538 () Bool)

(assert (=> b!4821193 (= c!821538 (and (is-Cons!54914 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (not (= (_1!32345 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) key!5428))))))

(declare-fun c!821537 () Bool)

(declare-fun d!1543533 () Bool)

(assert (=> d!1543533 (= c!821537 (and (is-Cons!54914 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= (_1!32345 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) key!5428)))))

(assert (=> d!1543533 (= (getValueByKey!2594 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428) e!3012286)))

(declare-fun b!4821192 () Bool)

(assert (=> b!4821192 (= e!3012286 (Some!13466 (_2!32345 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))))))

(assert (= (and d!1543533 c!821537) b!4821192))

(assert (= (and d!1543533 (not c!821537)) b!4821193))

(assert (= (and b!4821193 c!821538) b!4821194))

(assert (= (and b!4821193 (not c!821538)) b!4821195))

(declare-fun m!5808740 () Bool)

(assert (=> b!4821194 m!5808740))

(assert (=> b!4821048 d!1543533))

(declare-fun d!1543535 () Bool)

(assert (=> d!1543535 (contains!18724 (getKeysList!1147 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) key!5428)))

(declare-fun lt!1969803 () Unit!142316)

(declare-fun choose!35011 (List!55038 K!16597) Unit!142316)

(assert (=> d!1543535 (= lt!1969803 (choose!35011 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428))))

(assert (=> d!1543535 (invariantList!1799 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))))

(assert (=> d!1543535 (= (lemmaInListThenGetKeysListContains!1142 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428) lt!1969803)))

(declare-fun bs!1161679 () Bool)

(assert (= bs!1161679 d!1543535))

(assert (=> bs!1161679 m!5808504))

(assert (=> bs!1161679 m!5808504))

(declare-fun m!5808742 () Bool)

(assert (=> bs!1161679 m!5808742))

(declare-fun m!5808744 () Bool)

(assert (=> bs!1161679 m!5808744))

(assert (=> bs!1161679 m!5808736))

(assert (=> b!4821048 d!1543535))

(declare-fun d!1543537 () Bool)

(declare-fun lt!1969806 () Bool)

(declare-fun content!9808 (List!55042) (Set K!16597))

(assert (=> d!1543537 (= lt!1969806 (set.member key!5428 (content!9808 (keys!20192 (extractMap!2665 (toList!7441 lm!2280))))))))

(declare-fun e!3012293 () Bool)

(assert (=> d!1543537 (= lt!1969806 e!3012293)))

(declare-fun res!2051843 () Bool)

(assert (=> d!1543537 (=> (not res!2051843) (not e!3012293))))

(assert (=> d!1543537 (= res!2051843 (is-Cons!54918 (keys!20192 (extractMap!2665 (toList!7441 lm!2280)))))))

(assert (=> d!1543537 (= (contains!18724 (keys!20192 (extractMap!2665 (toList!7441 lm!2280))) key!5428) lt!1969806)))

(declare-fun b!4821200 () Bool)

(declare-fun e!3012292 () Bool)

(assert (=> b!4821200 (= e!3012293 e!3012292)))

(declare-fun res!2051842 () Bool)

(assert (=> b!4821200 (=> res!2051842 e!3012292)))

(assert (=> b!4821200 (= res!2051842 (= (h!61352 (keys!20192 (extractMap!2665 (toList!7441 lm!2280)))) key!5428))))

(declare-fun b!4821201 () Bool)

(assert (=> b!4821201 (= e!3012292 (contains!18724 (t!362538 (keys!20192 (extractMap!2665 (toList!7441 lm!2280)))) key!5428))))

(assert (= (and d!1543537 res!2051843) b!4821200))

(assert (= (and b!4821200 (not res!2051842)) b!4821201))

(assert (=> d!1543537 m!5808622))

(declare-fun m!5808746 () Bool)

(assert (=> d!1543537 m!5808746))

(declare-fun m!5808748 () Bool)

(assert (=> d!1543537 m!5808748))

(declare-fun m!5808750 () Bool)

(assert (=> b!4821201 m!5808750))

(assert (=> b!4821119 d!1543537))

(declare-fun b!4821209 () Bool)

(assert (=> b!4821209 true))

(declare-fun d!1543539 () Bool)

(declare-fun e!3012296 () Bool)

(assert (=> d!1543539 e!3012296))

(declare-fun res!2051852 () Bool)

(assert (=> d!1543539 (=> (not res!2051852) (not e!3012296))))

(declare-fun lt!1969809 () List!55042)

(declare-fun noDuplicate!949 (List!55042) Bool)

(assert (=> d!1543539 (= res!2051852 (noDuplicate!949 lt!1969809))))

(assert (=> d!1543539 (= lt!1969809 (getKeysList!1147 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))))

(assert (=> d!1543539 (= (keys!20192 (extractMap!2665 (toList!7441 lm!2280))) lt!1969809)))

(declare-fun b!4821208 () Bool)

(declare-fun res!2051851 () Bool)

(assert (=> b!4821208 (=> (not res!2051851) (not e!3012296))))

(declare-fun length!754 (List!55042) Int)

(declare-fun length!755 (List!55038) Int)

(assert (=> b!4821208 (= res!2051851 (= (length!754 lt!1969809) (length!755 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))))))

(declare-fun res!2051850 () Bool)

(assert (=> b!4821209 (=> (not res!2051850) (not e!3012296))))

(declare-fun lambda!235579 () Int)

(declare-fun forall!12565 (List!55042 Int) Bool)

(assert (=> b!4821209 (= res!2051850 (forall!12565 lt!1969809 lambda!235579))))

(declare-fun b!4821210 () Bool)

(declare-fun lambda!235580 () Int)

(declare-fun map!12557 (List!55038 Int) List!55042)

(assert (=> b!4821210 (= e!3012296 (= (content!9808 lt!1969809) (content!9808 (map!12557 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) lambda!235580))))))

(assert (= (and d!1543539 res!2051852) b!4821208))

(assert (= (and b!4821208 res!2051851) b!4821209))

(assert (= (and b!4821209 res!2051850) b!4821210))

(declare-fun m!5808752 () Bool)

(assert (=> d!1543539 m!5808752))

(assert (=> d!1543539 m!5808626))

(declare-fun m!5808754 () Bool)

(assert (=> b!4821208 m!5808754))

(declare-fun m!5808756 () Bool)

(assert (=> b!4821208 m!5808756))

(declare-fun m!5808758 () Bool)

(assert (=> b!4821209 m!5808758))

(declare-fun m!5808760 () Bool)

(assert (=> b!4821210 m!5808760))

(declare-fun m!5808762 () Bool)

(assert (=> b!4821210 m!5808762))

(assert (=> b!4821210 m!5808762))

(declare-fun m!5808764 () Bool)

(assert (=> b!4821210 m!5808764))

(assert (=> b!4821119 d!1543539))

(declare-fun d!1543541 () Bool)

(declare-fun lt!1969810 () Bool)

(assert (=> d!1543541 (= lt!1969810 (set.member key!5428 (content!9808 e!3012234)))))

(declare-fun e!3012298 () Bool)

(assert (=> d!1543541 (= lt!1969810 e!3012298)))

(declare-fun res!2051854 () Bool)

(assert (=> d!1543541 (=> (not res!2051854) (not e!3012298))))

(assert (=> d!1543541 (= res!2051854 (is-Cons!54918 e!3012234))))

(assert (=> d!1543541 (= (contains!18724 e!3012234 key!5428) lt!1969810)))

(declare-fun b!4821213 () Bool)

(declare-fun e!3012297 () Bool)

(assert (=> b!4821213 (= e!3012298 e!3012297)))

(declare-fun res!2051853 () Bool)

(assert (=> b!4821213 (=> res!2051853 e!3012297)))

(assert (=> b!4821213 (= res!2051853 (= (h!61352 e!3012234) key!5428))))

(declare-fun b!4821214 () Bool)

(assert (=> b!4821214 (= e!3012297 (contains!18724 (t!362538 e!3012234) key!5428))))

(assert (= (and d!1543541 res!2051854) b!4821213))

(assert (= (and b!4821213 (not res!2051853)) b!4821214))

(declare-fun m!5808766 () Bool)

(assert (=> d!1543541 m!5808766))

(declare-fun m!5808768 () Bool)

(assert (=> d!1543541 m!5808768))

(declare-fun m!5808770 () Bool)

(assert (=> b!4821214 m!5808770))

(assert (=> bm!336112 d!1543541))

(assert (=> bs!1161666 d!1543441))

(declare-fun bs!1161680 () Bool)

(declare-fun b!4821219 () Bool)

(assert (= bs!1161680 (and b!4821219 b!4821105)))

(declare-fun lambda!235581 () Int)

(assert (=> bs!1161680 (= (= (extractMap!2665 (t!362535 (toList!7441 lt!1969509))) lt!1969508) (= lambda!235581 lambda!235538))))

(declare-fun bs!1161681 () Bool)

(assert (= bs!1161681 (and b!4821219 b!4821103)))

(assert (=> bs!1161681 (= (= (extractMap!2665 (t!362535 (toList!7441 lt!1969509))) lt!1969508) (= lambda!235581 lambda!235539))))

(assert (=> bs!1161681 (= (= (extractMap!2665 (t!362535 (toList!7441 lt!1969509))) lt!1969699) (= lambda!235581 lambda!235540))))

(declare-fun bs!1161682 () Bool)

(assert (= bs!1161682 (and b!4821219 d!1543477)))

(assert (=> bs!1161682 (= (= (extractMap!2665 (t!362535 (toList!7441 lt!1969509))) lt!1969700) (= lambda!235581 lambda!235541))))

(assert (=> b!4821219 true))

(declare-fun bs!1161683 () Bool)

(declare-fun b!4821217 () Bool)

(assert (= bs!1161683 (and b!4821217 b!4821103)))

(declare-fun lambda!235582 () Int)

(assert (=> bs!1161683 (= (= (extractMap!2665 (t!362535 (toList!7441 lt!1969509))) lt!1969699) (= lambda!235582 lambda!235540))))

(assert (=> bs!1161683 (= (= (extractMap!2665 (t!362535 (toList!7441 lt!1969509))) lt!1969508) (= lambda!235582 lambda!235539))))

(declare-fun bs!1161684 () Bool)

(assert (= bs!1161684 (and b!4821217 d!1543477)))

(assert (=> bs!1161684 (= (= (extractMap!2665 (t!362535 (toList!7441 lt!1969509))) lt!1969700) (= lambda!235582 lambda!235541))))

(declare-fun bs!1161685 () Bool)

(assert (= bs!1161685 (and b!4821217 b!4821105)))

(assert (=> bs!1161685 (= (= (extractMap!2665 (t!362535 (toList!7441 lt!1969509))) lt!1969508) (= lambda!235582 lambda!235538))))

(declare-fun bs!1161686 () Bool)

(assert (= bs!1161686 (and b!4821217 b!4821219)))

(assert (=> bs!1161686 (= lambda!235582 lambda!235581)))

(assert (=> b!4821217 true))

(declare-fun lambda!235583 () Int)

(declare-fun lt!1969830 () ListMap!6827)

(assert (=> bs!1161683 (= (= lt!1969830 lt!1969699) (= lambda!235583 lambda!235540))))

(assert (=> bs!1161683 (= (= lt!1969830 lt!1969508) (= lambda!235583 lambda!235539))))

(assert (=> bs!1161684 (= (= lt!1969830 lt!1969700) (= lambda!235583 lambda!235541))))

(assert (=> b!4821217 (= (= lt!1969830 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235583 lambda!235582))))

(assert (=> bs!1161685 (= (= lt!1969830 lt!1969508) (= lambda!235583 lambda!235538))))

(assert (=> bs!1161686 (= (= lt!1969830 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235583 lambda!235581))))

(assert (=> b!4821217 true))

(declare-fun bs!1161687 () Bool)

(declare-fun d!1543543 () Bool)

(assert (= bs!1161687 (and d!1543543 b!4821103)))

(declare-fun lambda!235584 () Int)

(declare-fun lt!1969831 () ListMap!6827)

(assert (=> bs!1161687 (= (= lt!1969831 lt!1969699) (= lambda!235584 lambda!235540))))

(assert (=> bs!1161687 (= (= lt!1969831 lt!1969508) (= lambda!235584 lambda!235539))))

(declare-fun bs!1161688 () Bool)

(assert (= bs!1161688 (and d!1543543 d!1543477)))

(assert (=> bs!1161688 (= (= lt!1969831 lt!1969700) (= lambda!235584 lambda!235541))))

(declare-fun bs!1161689 () Bool)

(assert (= bs!1161689 (and d!1543543 b!4821217)))

(assert (=> bs!1161689 (= (= lt!1969831 lt!1969830) (= lambda!235584 lambda!235583))))

(assert (=> bs!1161689 (= (= lt!1969831 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235584 lambda!235582))))

(declare-fun bs!1161690 () Bool)

(assert (= bs!1161690 (and d!1543543 b!4821105)))

(assert (=> bs!1161690 (= (= lt!1969831 lt!1969508) (= lambda!235584 lambda!235538))))

(declare-fun bs!1161691 () Bool)

(assert (= bs!1161691 (and d!1543543 b!4821219)))

(assert (=> bs!1161691 (= (= lt!1969831 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235584 lambda!235581))))

(assert (=> d!1543543 true))

(declare-fun b!4821215 () Bool)

(declare-fun res!2051857 () Bool)

(declare-fun e!3012300 () Bool)

(assert (=> b!4821215 (=> (not res!2051857) (not e!3012300))))

(assert (=> b!4821215 (= res!2051857 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) lambda!235584))))

(declare-fun b!4821216 () Bool)

(assert (=> b!4821216 (= e!3012300 (invariantList!1799 (toList!7442 lt!1969831)))))

(declare-fun c!821539 () Bool)

(declare-fun call!336130 () Bool)

(declare-fun bm!336124 () Bool)

(assert (=> bm!336124 (= call!336130 (forall!12563 (ite c!821539 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (_2!32346 (h!61349 (toList!7441 lt!1969509)))) (ite c!821539 lambda!235581 lambda!235583)))))

(declare-fun e!3012301 () ListMap!6827)

(assert (=> b!4821217 (= e!3012301 lt!1969830)))

(declare-fun lt!1969812 () ListMap!6827)

(assert (=> b!4821217 (= lt!1969812 (+!2524 (extractMap!2665 (t!362535 (toList!7441 lt!1969509))) (h!61348 (_2!32346 (h!61349 (toList!7441 lt!1969509))))))))

(assert (=> b!4821217 (= lt!1969830 (addToMapMapFromBucket!1784 (t!362534 (_2!32346 (h!61349 (toList!7441 lt!1969509)))) (+!2524 (extractMap!2665 (t!362535 (toList!7441 lt!1969509))) (h!61348 (_2!32346 (h!61349 (toList!7441 lt!1969509)))))))))

(declare-fun lt!1969829 () Unit!142316)

(declare-fun call!336129 () Unit!142316)

(assert (=> b!4821217 (= lt!1969829 call!336129)))

(assert (=> b!4821217 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) lambda!235582)))

(declare-fun lt!1969817 () Unit!142316)

(assert (=> b!4821217 (= lt!1969817 lt!1969829)))

(assert (=> b!4821217 (forall!12563 (toList!7442 lt!1969812) lambda!235583)))

(declare-fun lt!1969816 () Unit!142316)

(declare-fun Unit!142360 () Unit!142316)

(assert (=> b!4821217 (= lt!1969816 Unit!142360)))

(declare-fun call!336131 () Bool)

(assert (=> b!4821217 call!336131))

(declare-fun lt!1969822 () Unit!142316)

(declare-fun Unit!142361 () Unit!142316)

(assert (=> b!4821217 (= lt!1969822 Unit!142361)))

(declare-fun lt!1969827 () Unit!142316)

(declare-fun Unit!142362 () Unit!142316)

(assert (=> b!4821217 (= lt!1969827 Unit!142362)))

(declare-fun lt!1969815 () Unit!142316)

(assert (=> b!4821217 (= lt!1969815 (forallContained!4361 (toList!7442 lt!1969812) lambda!235583 (h!61348 (_2!32346 (h!61349 (toList!7441 lt!1969509))))))))

(assert (=> b!4821217 (contains!18721 lt!1969812 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lt!1969509))))))))

(declare-fun lt!1969826 () Unit!142316)

(declare-fun Unit!142363 () Unit!142316)

(assert (=> b!4821217 (= lt!1969826 Unit!142363)))

(assert (=> b!4821217 (contains!18721 lt!1969830 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lt!1969509))))))))

(declare-fun lt!1969818 () Unit!142316)

(declare-fun Unit!142364 () Unit!142316)

(assert (=> b!4821217 (= lt!1969818 Unit!142364)))

(assert (=> b!4821217 call!336130))

(declare-fun lt!1969824 () Unit!142316)

(declare-fun Unit!142365 () Unit!142316)

(assert (=> b!4821217 (= lt!1969824 Unit!142365)))

(assert (=> b!4821217 (forall!12563 (toList!7442 lt!1969812) lambda!235583)))

(declare-fun lt!1969811 () Unit!142316)

(declare-fun Unit!142366 () Unit!142316)

(assert (=> b!4821217 (= lt!1969811 Unit!142366)))

(declare-fun lt!1969820 () Unit!142316)

(declare-fun Unit!142367 () Unit!142316)

(assert (=> b!4821217 (= lt!1969820 Unit!142367)))

(declare-fun lt!1969821 () Unit!142316)

(assert (=> b!4821217 (= lt!1969821 (addForallContainsKeyThenBeforeAdding!978 (extractMap!2665 (t!362535 (toList!7441 lt!1969509))) lt!1969830 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lt!1969509))))) (_2!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lt!1969509)))))))))

(assert (=> b!4821217 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) lambda!235583)))

(declare-fun lt!1969828 () Unit!142316)

(assert (=> b!4821217 (= lt!1969828 lt!1969821)))

(assert (=> b!4821217 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) lambda!235583)))

(declare-fun lt!1969819 () Unit!142316)

(declare-fun Unit!142368 () Unit!142316)

(assert (=> b!4821217 (= lt!1969819 Unit!142368)))

(declare-fun res!2051856 () Bool)

(assert (=> b!4821217 (= res!2051856 (forall!12563 (_2!32346 (h!61349 (toList!7441 lt!1969509))) lambda!235583))))

(declare-fun e!3012299 () Bool)

(assert (=> b!4821217 (=> (not res!2051856) (not e!3012299))))

(assert (=> b!4821217 e!3012299))

(declare-fun lt!1969825 () Unit!142316)

(declare-fun Unit!142369 () Unit!142316)

(assert (=> b!4821217 (= lt!1969825 Unit!142369)))

(declare-fun b!4821218 () Bool)

(assert (=> b!4821218 (= e!3012299 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) lambda!235583))))

(declare-fun bm!336125 () Bool)

(assert (=> bm!336125 (= call!336131 (forall!12563 (ite c!821539 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (t!362534 (_2!32346 (h!61349 (toList!7441 lt!1969509))))) (ite c!821539 lambda!235581 lambda!235583)))))

(assert (=> d!1543543 e!3012300))

(declare-fun res!2051855 () Bool)

(assert (=> d!1543543 (=> (not res!2051855) (not e!3012300))))

(assert (=> d!1543543 (= res!2051855 (forall!12563 (_2!32346 (h!61349 (toList!7441 lt!1969509))) lambda!235584))))

(assert (=> d!1543543 (= lt!1969831 e!3012301)))

(assert (=> d!1543543 (= c!821539 (is-Nil!54914 (_2!32346 (h!61349 (toList!7441 lt!1969509)))))))

(assert (=> d!1543543 (noDuplicateKeys!2435 (_2!32346 (h!61349 (toList!7441 lt!1969509))))))

(assert (=> d!1543543 (= (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lt!1969509))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) lt!1969831)))

(declare-fun bm!336126 () Bool)

(assert (=> bm!336126 (= call!336129 (lemmaContainsAllItsOwnKeys!979 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))))))

(assert (=> b!4821219 (= e!3012301 (extractMap!2665 (t!362535 (toList!7441 lt!1969509))))))

(declare-fun lt!1969823 () Unit!142316)

(assert (=> b!4821219 (= lt!1969823 call!336129)))

(assert (=> b!4821219 call!336130))

(declare-fun lt!1969813 () Unit!142316)

(assert (=> b!4821219 (= lt!1969813 lt!1969823)))

(assert (=> b!4821219 call!336131))

(declare-fun lt!1969814 () Unit!142316)

(declare-fun Unit!142370 () Unit!142316)

(assert (=> b!4821219 (= lt!1969814 Unit!142370)))

(assert (= (and d!1543543 c!821539) b!4821219))

(assert (= (and d!1543543 (not c!821539)) b!4821217))

(assert (= (and b!4821217 res!2051856) b!4821218))

(assert (= (or b!4821219 b!4821217) bm!336124))

(assert (= (or b!4821219 b!4821217) bm!336125))

(assert (= (or b!4821219 b!4821217) bm!336126))

(assert (= (and d!1543543 res!2051855) b!4821215))

(assert (= (and b!4821215 res!2051857) b!4821216))

(declare-fun m!5808772 () Bool)

(assert (=> b!4821217 m!5808772))

(declare-fun m!5808774 () Bool)

(assert (=> b!4821217 m!5808774))

(declare-fun m!5808776 () Bool)

(assert (=> b!4821217 m!5808776))

(assert (=> b!4821217 m!5808414))

(declare-fun m!5808778 () Bool)

(assert (=> b!4821217 m!5808778))

(declare-fun m!5808780 () Bool)

(assert (=> b!4821217 m!5808780))

(assert (=> b!4821217 m!5808772))

(declare-fun m!5808782 () Bool)

(assert (=> b!4821217 m!5808782))

(declare-fun m!5808784 () Bool)

(assert (=> b!4821217 m!5808784))

(assert (=> b!4821217 m!5808784))

(declare-fun m!5808786 () Bool)

(assert (=> b!4821217 m!5808786))

(declare-fun m!5808788 () Bool)

(assert (=> b!4821217 m!5808788))

(declare-fun m!5808790 () Bool)

(assert (=> b!4821217 m!5808790))

(assert (=> b!4821217 m!5808414))

(assert (=> b!4821217 m!5808788))

(declare-fun m!5808792 () Bool)

(assert (=> bm!336125 m!5808792))

(assert (=> b!4821218 m!5808772))

(assert (=> bm!336126 m!5808414))

(declare-fun m!5808794 () Bool)

(assert (=> bm!336126 m!5808794))

(declare-fun m!5808796 () Bool)

(assert (=> bm!336124 m!5808796))

(declare-fun m!5808798 () Bool)

(assert (=> b!4821215 m!5808798))

(declare-fun m!5808800 () Bool)

(assert (=> d!1543543 m!5808800))

(declare-fun m!5808802 () Bool)

(assert (=> d!1543543 m!5808802))

(declare-fun m!5808804 () Bool)

(assert (=> b!4821216 m!5808804))

(assert (=> b!4820975 d!1543543))

(declare-fun bs!1161692 () Bool)

(declare-fun d!1543545 () Bool)

(assert (= bs!1161692 (and d!1543545 d!1543469)))

(declare-fun lambda!235585 () Int)

(assert (=> bs!1161692 (= lambda!235585 lambda!235499)))

(declare-fun bs!1161693 () Bool)

(assert (= bs!1161693 (and d!1543545 d!1543447)))

(assert (=> bs!1161693 (= lambda!235585 lambda!235491)))

(declare-fun bs!1161694 () Bool)

(assert (= bs!1161694 (and d!1543545 d!1543451)))

(assert (=> bs!1161694 (= lambda!235585 lambda!235495)))

(declare-fun bs!1161695 () Bool)

(assert (= bs!1161695 (and d!1543545 start!499592)))

(assert (=> bs!1161695 (= lambda!235585 lambda!235485)))

(declare-fun bs!1161696 () Bool)

(assert (= bs!1161696 (and d!1543545 d!1543455)))

(assert (=> bs!1161696 (not (= lambda!235585 lambda!235498))))

(declare-fun bs!1161697 () Bool)

(assert (= bs!1161697 (and d!1543545 d!1543449)))

(assert (=> bs!1161697 (= lambda!235585 lambda!235492)))

(declare-fun lt!1969832 () ListMap!6827)

(assert (=> d!1543545 (invariantList!1799 (toList!7442 lt!1969832))))

(declare-fun e!3012302 () ListMap!6827)

(assert (=> d!1543545 (= lt!1969832 e!3012302)))

(declare-fun c!821540 () Bool)

(assert (=> d!1543545 (= c!821540 (is-Cons!54915 (t!362535 (toList!7441 lt!1969509))))))

(assert (=> d!1543545 (forall!12561 (t!362535 (toList!7441 lt!1969509)) lambda!235585)))

(assert (=> d!1543545 (= (extractMap!2665 (t!362535 (toList!7441 lt!1969509))) lt!1969832)))

(declare-fun b!4821220 () Bool)

(assert (=> b!4821220 (= e!3012302 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (t!362535 (toList!7441 lt!1969509)))) (extractMap!2665 (t!362535 (t!362535 (toList!7441 lt!1969509))))))))

(declare-fun b!4821221 () Bool)

(assert (=> b!4821221 (= e!3012302 (ListMap!6828 Nil!54914))))

(assert (= (and d!1543545 c!821540) b!4821220))

(assert (= (and d!1543545 (not c!821540)) b!4821221))

(declare-fun m!5808806 () Bool)

(assert (=> d!1543545 m!5808806))

(declare-fun m!5808808 () Bool)

(assert (=> d!1543545 m!5808808))

(declare-fun m!5808810 () Bool)

(assert (=> b!4821220 m!5808810))

(assert (=> b!4821220 m!5808810))

(declare-fun m!5808812 () Bool)

(assert (=> b!4821220 m!5808812))

(assert (=> b!4820975 d!1543545))

(declare-fun d!1543547 () Bool)

(assert (=> d!1543547 (= (get!18797 (getValueByKey!2595 (toList!7441 lm!2280) lt!1969511)) (v!49136 (getValueByKey!2595 (toList!7441 lm!2280) lt!1969511)))))

(assert (=> d!1543467 d!1543547))

(declare-fun d!1543549 () Bool)

(declare-fun c!821545 () Bool)

(assert (=> d!1543549 (= c!821545 (and (is-Cons!54915 (toList!7441 lm!2280)) (= (_1!32346 (h!61349 (toList!7441 lm!2280))) lt!1969511)))))

(declare-fun e!3012307 () Option!13468)

(assert (=> d!1543549 (= (getValueByKey!2595 (toList!7441 lm!2280) lt!1969511) e!3012307)))

(declare-fun b!4821231 () Bool)

(declare-fun e!3012308 () Option!13468)

(assert (=> b!4821231 (= e!3012307 e!3012308)))

(declare-fun c!821546 () Bool)

(assert (=> b!4821231 (= c!821546 (and (is-Cons!54915 (toList!7441 lm!2280)) (not (= (_1!32346 (h!61349 (toList!7441 lm!2280))) lt!1969511))))))

(declare-fun b!4821233 () Bool)

(assert (=> b!4821233 (= e!3012308 None!13467)))

(declare-fun b!4821232 () Bool)

(assert (=> b!4821232 (= e!3012308 (getValueByKey!2595 (t!362535 (toList!7441 lm!2280)) lt!1969511))))

(declare-fun b!4821230 () Bool)

(assert (=> b!4821230 (= e!3012307 (Some!13467 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))

(assert (= (and d!1543549 c!821545) b!4821230))

(assert (= (and d!1543549 (not c!821545)) b!4821231))

(assert (= (and b!4821231 c!821546) b!4821232))

(assert (= (and b!4821231 (not c!821546)) b!4821233))

(declare-fun m!5808814 () Bool)

(assert (=> b!4821232 m!5808814))

(assert (=> d!1543467 d!1543549))

(declare-fun d!1543551 () Bool)

(declare-fun res!2051858 () Bool)

(declare-fun e!3012309 () Bool)

(assert (=> d!1543551 (=> res!2051858 e!3012309)))

(assert (=> d!1543551 (= res!2051858 (and (is-Cons!54914 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (= (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) key!5428)))))

(assert (=> d!1543551 (= (containsKey!4323 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428) e!3012309)))

(declare-fun b!4821234 () Bool)

(declare-fun e!3012310 () Bool)

(assert (=> b!4821234 (= e!3012309 e!3012310)))

(declare-fun res!2051859 () Bool)

(assert (=> b!4821234 (=> (not res!2051859) (not e!3012310))))

(assert (=> b!4821234 (= res!2051859 (is-Cons!54914 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))))

(declare-fun b!4821235 () Bool)

(assert (=> b!4821235 (= e!3012310 (containsKey!4323 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) key!5428))))

(assert (= (and d!1543551 (not res!2051858)) b!4821234))

(assert (= (and b!4821234 res!2051859) b!4821235))

(declare-fun m!5808816 () Bool)

(assert (=> b!4821235 m!5808816))

(assert (=> d!1543443 d!1543551))

(declare-fun bs!1161698 () Bool)

(declare-fun b!4821237 () Bool)

(assert (= bs!1161698 (and b!4821237 b!4821209)))

(declare-fun lambda!235586 () Int)

(assert (=> bs!1161698 (= (= (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235586 lambda!235579))))

(assert (=> b!4821237 true))

(declare-fun bs!1161699 () Bool)

(declare-fun b!4821238 () Bool)

(assert (= bs!1161699 (and b!4821238 b!4821210)))

(declare-fun lambda!235587 () Int)

(assert (=> bs!1161699 (= lambda!235587 lambda!235580)))

(declare-fun d!1543553 () Bool)

(declare-fun e!3012311 () Bool)

(assert (=> d!1543553 e!3012311))

(declare-fun res!2051862 () Bool)

(assert (=> d!1543553 (=> (not res!2051862) (not e!3012311))))

(declare-fun lt!1969833 () List!55042)

(assert (=> d!1543553 (= res!2051862 (noDuplicate!949 lt!1969833))))

(assert (=> d!1543553 (= lt!1969833 (getKeysList!1147 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))))

(assert (=> d!1543553 (= (keys!20192 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) lt!1969833)))

(declare-fun b!4821236 () Bool)

(declare-fun res!2051861 () Bool)

(assert (=> b!4821236 (=> (not res!2051861) (not e!3012311))))

(assert (=> b!4821236 (= res!2051861 (= (length!754 lt!1969833) (length!755 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))))))

(declare-fun res!2051860 () Bool)

(assert (=> b!4821237 (=> (not res!2051860) (not e!3012311))))

(assert (=> b!4821237 (= res!2051860 (forall!12565 lt!1969833 lambda!235586))))

(assert (=> b!4821238 (= e!3012311 (= (content!9808 lt!1969833) (content!9808 (map!12557 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) lambda!235587))))))

(assert (= (and d!1543553 res!2051862) b!4821236))

(assert (= (and b!4821236 res!2051861) b!4821237))

(assert (= (and b!4821237 res!2051860) b!4821238))

(declare-fun m!5808818 () Bool)

(assert (=> d!1543553 m!5808818))

(assert (=> d!1543553 m!5808504))

(declare-fun m!5808820 () Bool)

(assert (=> b!4821236 m!5808820))

(declare-fun m!5808822 () Bool)

(assert (=> b!4821236 m!5808822))

(declare-fun m!5808824 () Bool)

(assert (=> b!4821237 m!5808824))

(declare-fun m!5808826 () Bool)

(assert (=> b!4821238 m!5808826))

(declare-fun m!5808828 () Bool)

(assert (=> b!4821238 m!5808828))

(assert (=> b!4821238 m!5808828))

(declare-fun m!5808830 () Bool)

(assert (=> b!4821238 m!5808830))

(assert (=> b!4821044 d!1543553))

(assert (=> b!4821116 d!1543537))

(assert (=> b!4821116 d!1543539))

(declare-fun d!1543555 () Bool)

(assert (=> d!1543555 (isDefined!10582 (getValueByKey!2594 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428))))

(declare-fun lt!1969834 () Unit!142316)

(assert (=> d!1543555 (= lt!1969834 (choose!35010 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428))))

(assert (=> d!1543555 (invariantList!1799 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))))

(assert (=> d!1543555 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2379 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428) lt!1969834)))

(declare-fun bs!1161700 () Bool)

(assert (= bs!1161700 d!1543555))

(assert (=> bs!1161700 m!5808400))

(assert (=> bs!1161700 m!5808400))

(assert (=> bs!1161700 m!5808402))

(declare-fun m!5808832 () Bool)

(assert (=> bs!1161700 m!5808832))

(declare-fun m!5808834 () Bool)

(assert (=> bs!1161700 m!5808834))

(assert (=> b!4820970 d!1543555))

(declare-fun d!1543557 () Bool)

(assert (=> d!1543557 (= (isDefined!10582 (getValueByKey!2594 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428)) (not (isEmpty!29629 (getValueByKey!2594 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428))))))

(declare-fun bs!1161701 () Bool)

(assert (= bs!1161701 d!1543557))

(assert (=> bs!1161701 m!5808400))

(declare-fun m!5808836 () Bool)

(assert (=> bs!1161701 m!5808836))

(assert (=> b!4820970 d!1543557))

(declare-fun b!4821242 () Bool)

(declare-fun e!3012313 () Option!13467)

(assert (=> b!4821242 (= e!3012313 None!13466)))

(declare-fun b!4821241 () Bool)

(assert (=> b!4821241 (= e!3012313 (getValueByKey!2594 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) key!5428))))

(declare-fun b!4821240 () Bool)

(declare-fun e!3012312 () Option!13467)

(assert (=> b!4821240 (= e!3012312 e!3012313)))

(declare-fun c!821548 () Bool)

(assert (=> b!4821240 (= c!821548 (and (is-Cons!54914 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (not (= (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) key!5428))))))

(declare-fun d!1543559 () Bool)

(declare-fun c!821547 () Bool)

(assert (=> d!1543559 (= c!821547 (and (is-Cons!54914 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (= (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) key!5428)))))

(assert (=> d!1543559 (= (getValueByKey!2594 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428) e!3012312)))

(declare-fun b!4821239 () Bool)

(assert (=> b!4821239 (= e!3012312 (Some!13466 (_2!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))))))

(assert (= (and d!1543559 c!821547) b!4821239))

(assert (= (and d!1543559 (not c!821547)) b!4821240))

(assert (= (and b!4821240 c!821548) b!4821241))

(assert (= (and b!4821240 (not c!821548)) b!4821242))

(declare-fun m!5808838 () Bool)

(assert (=> b!4821241 m!5808838))

(assert (=> b!4820970 d!1543559))

(declare-fun d!1543561 () Bool)

(assert (=> d!1543561 (contains!18724 (getKeysList!1147 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) key!5428)))

(declare-fun lt!1969835 () Unit!142316)

(assert (=> d!1543561 (= lt!1969835 (choose!35011 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428))))

(assert (=> d!1543561 (invariantList!1799 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))))

(assert (=> d!1543561 (= (lemmaInListThenGetKeysListContains!1142 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428) lt!1969835)))

(declare-fun bs!1161702 () Bool)

(assert (= bs!1161702 d!1543561))

(assert (=> bs!1161702 m!5808396))

(assert (=> bs!1161702 m!5808396))

(declare-fun m!5808840 () Bool)

(assert (=> bs!1161702 m!5808840))

(declare-fun m!5808842 () Bool)

(assert (=> bs!1161702 m!5808842))

(assert (=> bs!1161702 m!5808834))

(assert (=> b!4820970 d!1543561))

(declare-fun d!1543563 () Bool)

(declare-fun isEmpty!29630 (Option!13468) Bool)

(assert (=> d!1543563 (= (isDefined!10583 (getValueByKey!2595 (toList!7441 lm!2280) lt!1969511)) (not (isEmpty!29630 (getValueByKey!2595 (toList!7441 lm!2280) lt!1969511))))))

(declare-fun bs!1161703 () Bool)

(assert (= bs!1161703 d!1543563))

(assert (=> bs!1161703 m!5808478))

(declare-fun m!5808844 () Bool)

(assert (=> bs!1161703 m!5808844))

(assert (=> b!4821025 d!1543563))

(assert (=> b!4821025 d!1543549))

(declare-fun bs!1161704 () Bool)

(declare-fun b!4821262 () Bool)

(assert (= bs!1161704 (and b!4821262 b!4821209)))

(declare-fun lambda!235596 () Int)

(assert (=> bs!1161704 (= (= (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235596 lambda!235579))))

(declare-fun bs!1161705 () Bool)

(assert (= bs!1161705 (and b!4821262 b!4821237)))

(assert (=> bs!1161705 (= (= (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235596 lambda!235586))))

(assert (=> b!4821262 true))

(declare-fun bs!1161706 () Bool)

(declare-fun b!4821266 () Bool)

(assert (= bs!1161706 (and b!4821266 b!4821209)))

(declare-fun lambda!235597 () Int)

(assert (=> bs!1161706 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235597 lambda!235579))))

(declare-fun bs!1161707 () Bool)

(assert (= bs!1161707 (and b!4821266 b!4821237)))

(assert (=> bs!1161707 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235597 lambda!235586))))

(declare-fun bs!1161708 () Bool)

(assert (= bs!1161708 (and b!4821266 b!4821262)))

(assert (=> bs!1161708 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235597 lambda!235596))))

(assert (=> b!4821266 true))

(declare-fun bs!1161709 () Bool)

(declare-fun b!4821264 () Bool)

(assert (= bs!1161709 (and b!4821264 b!4821209)))

(declare-fun lambda!235598 () Int)

(assert (=> bs!1161709 (= lambda!235598 lambda!235579)))

(declare-fun bs!1161710 () Bool)

(assert (= bs!1161710 (and b!4821264 b!4821237)))

(assert (=> bs!1161710 (= (= (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235598 lambda!235586))))

(declare-fun bs!1161711 () Bool)

(assert (= bs!1161711 (and b!4821264 b!4821262)))

(assert (=> bs!1161711 (= (= (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235598 lambda!235596))))

(declare-fun bs!1161712 () Bool)

(assert (= bs!1161712 (and b!4821264 b!4821266)))

(assert (=> bs!1161712 (= (= (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))) (= lambda!235598 lambda!235597))))

(assert (=> b!4821264 true))

(declare-fun bs!1161713 () Bool)

(declare-fun b!4821269 () Bool)

(assert (= bs!1161713 (and b!4821269 b!4821210)))

(declare-fun lambda!235599 () Int)

(assert (=> bs!1161713 (= lambda!235599 lambda!235580)))

(declare-fun bs!1161714 () Bool)

(assert (= bs!1161714 (and b!4821269 b!4821238)))

(assert (=> bs!1161714 (= lambda!235599 lambda!235587)))

(declare-fun b!4821261 () Bool)

(declare-fun e!3012324 () Unit!142316)

(declare-fun Unit!142371 () Unit!142316)

(assert (=> b!4821261 (= e!3012324 Unit!142371)))

(assert (=> b!4821262 false))

(declare-fun lt!1969856 () Unit!142316)

(declare-fun forallContained!4363 (List!55042 Int K!16597) Unit!142316)

(assert (=> b!4821262 (= lt!1969856 (forallContained!4363 (getKeysList!1147 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) lambda!235596 (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))))))

(declare-fun e!3012322 () Unit!142316)

(declare-fun Unit!142372 () Unit!142316)

(assert (=> b!4821262 (= e!3012322 Unit!142372)))

(declare-fun b!4821263 () Bool)

(assert (=> b!4821263 false))

(declare-fun Unit!142373 () Unit!142316)

(assert (=> b!4821263 (= e!3012324 Unit!142373)))

(declare-fun res!2051869 () Bool)

(declare-fun e!3012323 () Bool)

(assert (=> b!4821264 (=> (not res!2051869) (not e!3012323))))

(declare-fun lt!1969853 () List!55042)

(assert (=> b!4821264 (= res!2051869 (forall!12565 lt!1969853 lambda!235598))))

(declare-fun d!1543565 () Bool)

(assert (=> d!1543565 e!3012323))

(declare-fun res!2051871 () Bool)

(assert (=> d!1543565 (=> (not res!2051871) (not e!3012323))))

(assert (=> d!1543565 (= res!2051871 (noDuplicate!949 lt!1969853))))

(declare-fun e!3012325 () List!55042)

(assert (=> d!1543565 (= lt!1969853 e!3012325)))

(declare-fun c!821556 () Bool)

(assert (=> d!1543565 (= c!821556 (is-Cons!54914 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))))

(assert (=> d!1543565 (invariantList!1799 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))))

(assert (=> d!1543565 (= (getKeysList!1147 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) lt!1969853)))

(declare-fun b!4821265 () Bool)

(declare-fun Unit!142374 () Unit!142316)

(assert (=> b!4821265 (= e!3012322 Unit!142374)))

(assert (=> b!4821266 (= e!3012325 (Cons!54918 (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (getKeysList!1147 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))))))

(declare-fun c!821557 () Bool)

(assert (=> b!4821266 (= c!821557 (containsKey!4323 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))))))

(declare-fun lt!1969852 () Unit!142316)

(assert (=> b!4821266 (= lt!1969852 e!3012324)))

(declare-fun c!821555 () Bool)

(assert (=> b!4821266 (= c!821555 (contains!18724 (getKeysList!1147 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))))))

(declare-fun lt!1969851 () Unit!142316)

(assert (=> b!4821266 (= lt!1969851 e!3012322)))

(declare-fun lt!1969850 () List!55042)

(assert (=> b!4821266 (= lt!1969850 (getKeysList!1147 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))))))

(declare-fun lt!1969855 () Unit!142316)

(declare-fun lemmaForallContainsAddHeadPreserves!364 (List!55038 List!55042 tuple2!58102) Unit!142316)

(assert (=> b!4821266 (= lt!1969855 (lemmaForallContainsAddHeadPreserves!364 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) lt!1969850 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))))))

(assert (=> b!4821266 (forall!12565 lt!1969850 lambda!235597)))

(declare-fun lt!1969854 () Unit!142316)

(assert (=> b!4821266 (= lt!1969854 lt!1969855)))

(declare-fun b!4821267 () Bool)

(declare-fun res!2051870 () Bool)

(assert (=> b!4821267 (=> (not res!2051870) (not e!3012323))))

(assert (=> b!4821267 (= res!2051870 (= (length!754 lt!1969853) (length!755 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))))))

(declare-fun b!4821268 () Bool)

(assert (=> b!4821268 (= e!3012325 Nil!54918)))

(assert (=> b!4821269 (= e!3012323 (= (content!9808 lt!1969853) (content!9808 (map!12557 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) lambda!235599))))))

(assert (= (and d!1543565 c!821556) b!4821266))

(assert (= (and d!1543565 (not c!821556)) b!4821268))

(assert (= (and b!4821266 c!821557) b!4821263))

(assert (= (and b!4821266 (not c!821557)) b!4821261))

(assert (= (and b!4821266 c!821555) b!4821262))

(assert (= (and b!4821266 (not c!821555)) b!4821265))

(assert (= (and d!1543565 res!2051871) b!4821267))

(assert (= (and b!4821267 res!2051870) b!4821264))

(assert (= (and b!4821264 res!2051869) b!4821269))

(declare-fun m!5808846 () Bool)

(assert (=> b!4821262 m!5808846))

(assert (=> b!4821262 m!5808846))

(declare-fun m!5808848 () Bool)

(assert (=> b!4821262 m!5808848))

(declare-fun m!5808850 () Bool)

(assert (=> b!4821267 m!5808850))

(assert (=> b!4821267 m!5808756))

(declare-fun m!5808852 () Bool)

(assert (=> b!4821269 m!5808852))

(declare-fun m!5808854 () Bool)

(assert (=> b!4821269 m!5808854))

(assert (=> b!4821269 m!5808854))

(declare-fun m!5808856 () Bool)

(assert (=> b!4821269 m!5808856))

(declare-fun m!5808858 () Bool)

(assert (=> b!4821264 m!5808858))

(declare-fun m!5808860 () Bool)

(assert (=> d!1543565 m!5808860))

(assert (=> d!1543565 m!5808732))

(declare-fun m!5808862 () Bool)

(assert (=> b!4821266 m!5808862))

(assert (=> b!4821266 m!5808846))

(declare-fun m!5808864 () Bool)

(assert (=> b!4821266 m!5808864))

(declare-fun m!5808866 () Bool)

(assert (=> b!4821266 m!5808866))

(declare-fun m!5808868 () Bool)

(assert (=> b!4821266 m!5808868))

(assert (=> b!4821266 m!5808846))

(assert (=> b!4821114 d!1543565))

(declare-fun bs!1161715 () Bool)

(declare-fun b!4821276 () Bool)

(assert (= bs!1161715 (and b!4821276 b!4821103)))

(declare-fun lambda!235600 () Int)

(assert (=> bs!1161715 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969699) (= lambda!235600 lambda!235540))))

(assert (=> bs!1161715 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969508) (= lambda!235600 lambda!235539))))

(declare-fun bs!1161716 () Bool)

(assert (= bs!1161716 (and b!4821276 d!1543477)))

(assert (=> bs!1161716 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969700) (= lambda!235600 lambda!235541))))

(declare-fun bs!1161717 () Bool)

(assert (= bs!1161717 (and b!4821276 b!4821217)))

(assert (=> bs!1161717 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969830) (= lambda!235600 lambda!235583))))

(assert (=> bs!1161717 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235600 lambda!235582))))

(declare-fun bs!1161718 () Bool)

(assert (= bs!1161718 (and b!4821276 b!4821105)))

(assert (=> bs!1161718 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969508) (= lambda!235600 lambda!235538))))

(declare-fun bs!1161719 () Bool)

(assert (= bs!1161719 (and b!4821276 d!1543543)))

(assert (=> bs!1161719 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969831) (= lambda!235600 lambda!235584))))

(declare-fun bs!1161720 () Bool)

(assert (= bs!1161720 (and b!4821276 b!4821219)))

(assert (=> bs!1161720 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235600 lambda!235581))))

(assert (=> b!4821276 true))

(declare-fun bs!1161721 () Bool)

(declare-fun b!4821274 () Bool)

(assert (= bs!1161721 (and b!4821274 b!4821103)))

(declare-fun lambda!235601 () Int)

(assert (=> bs!1161721 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969699) (= lambda!235601 lambda!235540))))

(declare-fun bs!1161722 () Bool)

(assert (= bs!1161722 (and b!4821274 d!1543477)))

(assert (=> bs!1161722 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969700) (= lambda!235601 lambda!235541))))

(declare-fun bs!1161723 () Bool)

(assert (= bs!1161723 (and b!4821274 b!4821217)))

(assert (=> bs!1161723 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969830) (= lambda!235601 lambda!235583))))

(assert (=> bs!1161723 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235601 lambda!235582))))

(declare-fun bs!1161724 () Bool)

(assert (= bs!1161724 (and b!4821274 b!4821105)))

(assert (=> bs!1161724 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969508) (= lambda!235601 lambda!235538))))

(declare-fun bs!1161725 () Bool)

(assert (= bs!1161725 (and b!4821274 d!1543543)))

(assert (=> bs!1161725 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969831) (= lambda!235601 lambda!235584))))

(declare-fun bs!1161726 () Bool)

(assert (= bs!1161726 (and b!4821274 b!4821219)))

(assert (=> bs!1161726 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235601 lambda!235581))))

(assert (=> bs!1161721 (= (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969508) (= lambda!235601 lambda!235539))))

(declare-fun bs!1161727 () Bool)

(assert (= bs!1161727 (and b!4821274 b!4821276)))

(assert (=> bs!1161727 (= lambda!235601 lambda!235600)))

(assert (=> b!4821274 true))

(declare-fun lambda!235602 () Int)

(declare-fun lt!1969876 () ListMap!6827)

(assert (=> bs!1161721 (= (= lt!1969876 lt!1969699) (= lambda!235602 lambda!235540))))

(assert (=> bs!1161722 (= (= lt!1969876 lt!1969700) (= lambda!235602 lambda!235541))))

(assert (=> bs!1161723 (= (= lt!1969876 lt!1969830) (= lambda!235602 lambda!235583))))

(assert (=> bs!1161723 (= (= lt!1969876 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235602 lambda!235582))))

(assert (=> bs!1161724 (= (= lt!1969876 lt!1969508) (= lambda!235602 lambda!235538))))

(assert (=> bs!1161725 (= (= lt!1969876 lt!1969831) (= lambda!235602 lambda!235584))))

(assert (=> bs!1161721 (= (= lt!1969876 lt!1969508) (= lambda!235602 lambda!235539))))

(assert (=> bs!1161727 (= (= lt!1969876 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235602 lambda!235600))))

(assert (=> bs!1161726 (= (= lt!1969876 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235602 lambda!235581))))

(assert (=> b!4821274 (= (= lt!1969876 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235602 lambda!235601))))

(assert (=> b!4821274 true))

(declare-fun bs!1161728 () Bool)

(declare-fun d!1543567 () Bool)

(assert (= bs!1161728 (and d!1543567 b!4821103)))

(declare-fun lt!1969877 () ListMap!6827)

(declare-fun lambda!235603 () Int)

(assert (=> bs!1161728 (= (= lt!1969877 lt!1969699) (= lambda!235603 lambda!235540))))

(declare-fun bs!1161729 () Bool)

(assert (= bs!1161729 (and d!1543567 d!1543477)))

(assert (=> bs!1161729 (= (= lt!1969877 lt!1969700) (= lambda!235603 lambda!235541))))

(declare-fun bs!1161730 () Bool)

(assert (= bs!1161730 (and d!1543567 b!4821217)))

(assert (=> bs!1161730 (= (= lt!1969877 lt!1969830) (= lambda!235603 lambda!235583))))

(assert (=> bs!1161730 (= (= lt!1969877 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235603 lambda!235582))))

(declare-fun bs!1161731 () Bool)

(assert (= bs!1161731 (and d!1543567 b!4821105)))

(assert (=> bs!1161731 (= (= lt!1969877 lt!1969508) (= lambda!235603 lambda!235538))))

(declare-fun bs!1161732 () Bool)

(assert (= bs!1161732 (and d!1543567 d!1543543)))

(assert (=> bs!1161732 (= (= lt!1969877 lt!1969831) (= lambda!235603 lambda!235584))))

(declare-fun bs!1161733 () Bool)

(assert (= bs!1161733 (and d!1543567 b!4821276)))

(assert (=> bs!1161733 (= (= lt!1969877 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235603 lambda!235600))))

(assert (=> bs!1161728 (= (= lt!1969877 lt!1969508) (= lambda!235603 lambda!235539))))

(declare-fun bs!1161734 () Bool)

(assert (= bs!1161734 (and d!1543567 b!4821274)))

(assert (=> bs!1161734 (= (= lt!1969877 lt!1969876) (= lambda!235603 lambda!235602))))

(declare-fun bs!1161735 () Bool)

(assert (= bs!1161735 (and d!1543567 b!4821219)))

(assert (=> bs!1161735 (= (= lt!1969877 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235603 lambda!235581))))

(assert (=> bs!1161734 (= (= lt!1969877 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235603 lambda!235601))))

(assert (=> d!1543567 true))

(declare-fun b!4821272 () Bool)

(declare-fun res!2051874 () Bool)

(declare-fun e!3012327 () Bool)

(assert (=> b!4821272 (=> (not res!2051874) (not e!3012327))))

(assert (=> b!4821272 (= res!2051874 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) lambda!235603))))

(declare-fun b!4821273 () Bool)

(assert (=> b!4821273 (= e!3012327 (invariantList!1799 (toList!7442 lt!1969877)))))

(declare-fun call!336133 () Bool)

(declare-fun c!821558 () Bool)

(declare-fun bm!336127 () Bool)

(assert (=> bm!336127 (= call!336133 (forall!12563 (ite c!821558 (toList!7442 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280))))) (ite c!821558 lambda!235600 lambda!235602)))))

(declare-fun e!3012328 () ListMap!6827)

(assert (=> b!4821274 (= e!3012328 lt!1969876)))

(declare-fun lt!1969858 () ListMap!6827)

(assert (=> b!4821274 (= lt!1969858 (+!2524 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) (h!61348 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280)))))))))

(assert (=> b!4821274 (= lt!1969876 (addToMapMapFromBucket!1784 (t!362534 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280))))) (+!2524 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) (h!61348 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280))))))))))

(declare-fun lt!1969875 () Unit!142316)

(declare-fun call!336132 () Unit!142316)

(assert (=> b!4821274 (= lt!1969875 call!336132)))

(assert (=> b!4821274 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) lambda!235601)))

(declare-fun lt!1969863 () Unit!142316)

(assert (=> b!4821274 (= lt!1969863 lt!1969875)))

(assert (=> b!4821274 (forall!12563 (toList!7442 lt!1969858) lambda!235602)))

(declare-fun lt!1969862 () Unit!142316)

(declare-fun Unit!142375 () Unit!142316)

(assert (=> b!4821274 (= lt!1969862 Unit!142375)))

(declare-fun call!336134 () Bool)

(assert (=> b!4821274 call!336134))

(declare-fun lt!1969868 () Unit!142316)

(declare-fun Unit!142376 () Unit!142316)

(assert (=> b!4821274 (= lt!1969868 Unit!142376)))

(declare-fun lt!1969873 () Unit!142316)

(declare-fun Unit!142377 () Unit!142316)

(assert (=> b!4821274 (= lt!1969873 Unit!142377)))

(declare-fun lt!1969861 () Unit!142316)

(assert (=> b!4821274 (= lt!1969861 (forallContained!4361 (toList!7442 lt!1969858) lambda!235602 (h!61348 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280)))))))))

(assert (=> b!4821274 (contains!18721 lt!1969858 (_1!32345 (h!61348 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280)))))))))

(declare-fun lt!1969872 () Unit!142316)

(declare-fun Unit!142378 () Unit!142316)

(assert (=> b!4821274 (= lt!1969872 Unit!142378)))

(assert (=> b!4821274 (contains!18721 lt!1969876 (_1!32345 (h!61348 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280)))))))))

(declare-fun lt!1969864 () Unit!142316)

(declare-fun Unit!142379 () Unit!142316)

(assert (=> b!4821274 (= lt!1969864 Unit!142379)))

(assert (=> b!4821274 call!336133))

(declare-fun lt!1969870 () Unit!142316)

(declare-fun Unit!142380 () Unit!142316)

(assert (=> b!4821274 (= lt!1969870 Unit!142380)))

(assert (=> b!4821274 (forall!12563 (toList!7442 lt!1969858) lambda!235602)))

(declare-fun lt!1969857 () Unit!142316)

(declare-fun Unit!142381 () Unit!142316)

(assert (=> b!4821274 (= lt!1969857 Unit!142381)))

(declare-fun lt!1969866 () Unit!142316)

(declare-fun Unit!142382 () Unit!142316)

(assert (=> b!4821274 (= lt!1969866 Unit!142382)))

(declare-fun lt!1969867 () Unit!142316)

(assert (=> b!4821274 (= lt!1969867 (addForallContainsKeyThenBeforeAdding!978 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969876 (_1!32345 (h!61348 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280)))))) (_2!32345 (h!61348 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280))))))))))

(assert (=> b!4821274 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) lambda!235602)))

(declare-fun lt!1969874 () Unit!142316)

(assert (=> b!4821274 (= lt!1969874 lt!1969867)))

(assert (=> b!4821274 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) lambda!235602)))

(declare-fun lt!1969865 () Unit!142316)

(declare-fun Unit!142383 () Unit!142316)

(assert (=> b!4821274 (= lt!1969865 Unit!142383)))

(declare-fun res!2051873 () Bool)

(assert (=> b!4821274 (= res!2051873 (forall!12563 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280)))) lambda!235602))))

(declare-fun e!3012326 () Bool)

(assert (=> b!4821274 (=> (not res!2051873) (not e!3012326))))

(assert (=> b!4821274 e!3012326))

(declare-fun lt!1969871 () Unit!142316)

(declare-fun Unit!142384 () Unit!142316)

(assert (=> b!4821274 (= lt!1969871 Unit!142384)))

(declare-fun b!4821275 () Bool)

(assert (=> b!4821275 (= e!3012326 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) lambda!235602))))

(declare-fun bm!336128 () Bool)

(assert (=> bm!336128 (= call!336134 (forall!12563 (ite c!821558 (toList!7442 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (t!362534 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280)))))) (ite c!821558 lambda!235600 lambda!235602)))))

(assert (=> d!1543567 e!3012327))

(declare-fun res!2051872 () Bool)

(assert (=> d!1543567 (=> (not res!2051872) (not e!3012327))))

(assert (=> d!1543567 (= res!2051872 (forall!12563 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280)))) lambda!235603))))

(assert (=> d!1543567 (= lt!1969877 e!3012328)))

(assert (=> d!1543567 (= c!821558 (is-Nil!54914 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280))))))))

(assert (=> d!1543567 (noDuplicateKeys!2435 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280)))))))

(assert (=> d!1543567 (= (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280)))) (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) lt!1969877)))

(declare-fun bm!336129 () Bool)

(assert (=> bm!336129 (= call!336132 (lemmaContainsAllItsOwnKeys!979 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))))))

(assert (=> b!4821276 (= e!3012328 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))))))

(declare-fun lt!1969869 () Unit!142316)

(assert (=> b!4821276 (= lt!1969869 call!336132)))

(assert (=> b!4821276 call!336133))

(declare-fun lt!1969859 () Unit!142316)

(assert (=> b!4821276 (= lt!1969859 lt!1969869)))

(assert (=> b!4821276 call!336134))

(declare-fun lt!1969860 () Unit!142316)

(declare-fun Unit!142385 () Unit!142316)

(assert (=> b!4821276 (= lt!1969860 Unit!142385)))

(assert (= (and d!1543567 c!821558) b!4821276))

(assert (= (and d!1543567 (not c!821558)) b!4821274))

(assert (= (and b!4821274 res!2051873) b!4821275))

(assert (= (or b!4821276 b!4821274) bm!336127))

(assert (= (or b!4821276 b!4821274) bm!336128))

(assert (= (or b!4821276 b!4821274) bm!336129))

(assert (= (and d!1543567 res!2051872) b!4821272))

(assert (= (and b!4821272 res!2051874) b!4821273))

(declare-fun m!5808870 () Bool)

(assert (=> b!4821274 m!5808870))

(declare-fun m!5808872 () Bool)

(assert (=> b!4821274 m!5808872))

(declare-fun m!5808874 () Bool)

(assert (=> b!4821274 m!5808874))

(assert (=> b!4821274 m!5808422))

(declare-fun m!5808876 () Bool)

(assert (=> b!4821274 m!5808876))

(declare-fun m!5808878 () Bool)

(assert (=> b!4821274 m!5808878))

(assert (=> b!4821274 m!5808870))

(declare-fun m!5808880 () Bool)

(assert (=> b!4821274 m!5808880))

(declare-fun m!5808882 () Bool)

(assert (=> b!4821274 m!5808882))

(assert (=> b!4821274 m!5808882))

(declare-fun m!5808884 () Bool)

(assert (=> b!4821274 m!5808884))

(declare-fun m!5808886 () Bool)

(assert (=> b!4821274 m!5808886))

(declare-fun m!5808888 () Bool)

(assert (=> b!4821274 m!5808888))

(assert (=> b!4821274 m!5808422))

(assert (=> b!4821274 m!5808886))

(declare-fun m!5808890 () Bool)

(assert (=> bm!336128 m!5808890))

(assert (=> b!4821275 m!5808870))

(assert (=> bm!336129 m!5808422))

(declare-fun m!5808892 () Bool)

(assert (=> bm!336129 m!5808892))

(declare-fun m!5808894 () Bool)

(assert (=> bm!336127 m!5808894))

(declare-fun m!5808896 () Bool)

(assert (=> b!4821272 m!5808896))

(declare-fun m!5808898 () Bool)

(assert (=> d!1543567 m!5808898))

(declare-fun m!5808900 () Bool)

(assert (=> d!1543567 m!5808900))

(declare-fun m!5808902 () Bool)

(assert (=> b!4821273 m!5808902))

(assert (=> b!4820977 d!1543567))

(declare-fun bs!1161736 () Bool)

(declare-fun d!1543569 () Bool)

(assert (= bs!1161736 (and d!1543569 d!1543469)))

(declare-fun lambda!235604 () Int)

(assert (=> bs!1161736 (= lambda!235604 lambda!235499)))

(declare-fun bs!1161737 () Bool)

(assert (= bs!1161737 (and d!1543569 d!1543545)))

(assert (=> bs!1161737 (= lambda!235604 lambda!235585)))

(declare-fun bs!1161738 () Bool)

(assert (= bs!1161738 (and d!1543569 d!1543447)))

(assert (=> bs!1161738 (= lambda!235604 lambda!235491)))

(declare-fun bs!1161739 () Bool)

(assert (= bs!1161739 (and d!1543569 d!1543451)))

(assert (=> bs!1161739 (= lambda!235604 lambda!235495)))

(declare-fun bs!1161740 () Bool)

(assert (= bs!1161740 (and d!1543569 start!499592)))

(assert (=> bs!1161740 (= lambda!235604 lambda!235485)))

(declare-fun bs!1161741 () Bool)

(assert (= bs!1161741 (and d!1543569 d!1543455)))

(assert (=> bs!1161741 (not (= lambda!235604 lambda!235498))))

(declare-fun bs!1161742 () Bool)

(assert (= bs!1161742 (and d!1543569 d!1543449)))

(assert (=> bs!1161742 (= lambda!235604 lambda!235492)))

(declare-fun lt!1969878 () ListMap!6827)

(assert (=> d!1543569 (invariantList!1799 (toList!7442 lt!1969878))))

(declare-fun e!3012329 () ListMap!6827)

(assert (=> d!1543569 (= lt!1969878 e!3012329)))

(declare-fun c!821559 () Bool)

(assert (=> d!1543569 (= c!821559 (is-Cons!54915 (t!362535 (t!362535 (toList!7441 lm!2280)))))))

(assert (=> d!1543569 (forall!12561 (t!362535 (t!362535 (toList!7441 lm!2280))) lambda!235604)))

(assert (=> d!1543569 (= (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280)))) lt!1969878)))

(declare-fun b!4821277 () Bool)

(assert (=> b!4821277 (= e!3012329 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (t!362535 (t!362535 (toList!7441 lm!2280))))) (extractMap!2665 (t!362535 (t!362535 (t!362535 (toList!7441 lm!2280)))))))))

(declare-fun b!4821278 () Bool)

(assert (=> b!4821278 (= e!3012329 (ListMap!6828 Nil!54914))))

(assert (= (and d!1543569 c!821559) b!4821277))

(assert (= (and d!1543569 (not c!821559)) b!4821278))

(declare-fun m!5808904 () Bool)

(assert (=> d!1543569 m!5808904))

(declare-fun m!5808906 () Bool)

(assert (=> d!1543569 m!5808906))

(declare-fun m!5808908 () Bool)

(assert (=> b!4821277 m!5808908))

(assert (=> b!4821277 m!5808908))

(declare-fun m!5808910 () Bool)

(assert (=> b!4821277 m!5808910))

(assert (=> b!4820977 d!1543569))

(declare-fun d!1543571 () Bool)

(declare-fun res!2051879 () Bool)

(declare-fun e!3012334 () Bool)

(assert (=> d!1543571 (=> res!2051879 e!3012334)))

(assert (=> d!1543571 (= res!2051879 (is-Nil!54914 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))

(assert (=> d!1543571 (= (forall!12563 (_2!32346 (h!61349 (toList!7441 lm!2280))) lambda!235541) e!3012334)))

(declare-fun b!4821283 () Bool)

(declare-fun e!3012335 () Bool)

(assert (=> b!4821283 (= e!3012334 e!3012335)))

(declare-fun res!2051880 () Bool)

(assert (=> b!4821283 (=> (not res!2051880) (not e!3012335))))

(declare-fun dynLambda!22192 (Int tuple2!58102) Bool)

(assert (=> b!4821283 (= res!2051880 (dynLambda!22192 lambda!235541 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(declare-fun b!4821284 () Bool)

(assert (=> b!4821284 (= e!3012335 (forall!12563 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))) lambda!235541))))

(assert (= (and d!1543571 (not res!2051879)) b!4821283))

(assert (= (and b!4821283 res!2051880) b!4821284))

(declare-fun b_lambda!189051 () Bool)

(assert (=> (not b_lambda!189051) (not b!4821283)))

(declare-fun m!5808912 () Bool)

(assert (=> b!4821283 m!5808912))

(declare-fun m!5808914 () Bool)

(assert (=> b!4821284 m!5808914))

(assert (=> d!1543477 d!1543571))

(assert (=> d!1543477 d!1543441))

(declare-fun d!1543573 () Bool)

(declare-fun res!2051885 () Bool)

(declare-fun e!3012340 () Bool)

(assert (=> d!1543573 (=> res!2051885 e!3012340)))

(assert (=> d!1543573 (= res!2051885 (and (is-Cons!54915 (toList!7441 lm!2280)) (= (_1!32346 (h!61349 (toList!7441 lm!2280))) lt!1969511)))))

(assert (=> d!1543573 (= (containsKey!4324 (toList!7441 lm!2280) lt!1969511) e!3012340)))

(declare-fun b!4821289 () Bool)

(declare-fun e!3012341 () Bool)

(assert (=> b!4821289 (= e!3012340 e!3012341)))

(declare-fun res!2051886 () Bool)

(assert (=> b!4821289 (=> (not res!2051886) (not e!3012341))))

(assert (=> b!4821289 (= res!2051886 (and (or (not (is-Cons!54915 (toList!7441 lm!2280))) (bvsle (_1!32346 (h!61349 (toList!7441 lm!2280))) lt!1969511)) (is-Cons!54915 (toList!7441 lm!2280)) (bvslt (_1!32346 (h!61349 (toList!7441 lm!2280))) lt!1969511)))))

(declare-fun b!4821290 () Bool)

(assert (=> b!4821290 (= e!3012341 (containsKey!4324 (t!362535 (toList!7441 lm!2280)) lt!1969511))))

(assert (= (and d!1543573 (not res!2051885)) b!4821289))

(assert (= (and b!4821289 res!2051886) b!4821290))

(declare-fun m!5808916 () Bool)

(assert (=> b!4821290 m!5808916))

(assert (=> d!1543459 d!1543573))

(declare-fun bs!1161743 () Bool)

(declare-fun b!4821292 () Bool)

(assert (= bs!1161743 (and b!4821292 b!4821262)))

(declare-fun lambda!235605 () Int)

(assert (=> bs!1161743 (= (= (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235605 lambda!235596))))

(declare-fun bs!1161744 () Bool)

(assert (= bs!1161744 (and b!4821292 b!4821237)))

(assert (=> bs!1161744 (= (= (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235605 lambda!235586))))

(declare-fun bs!1161745 () Bool)

(assert (= bs!1161745 (and b!4821292 b!4821266)))

(assert (=> bs!1161745 (= (= (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))) (= lambda!235605 lambda!235597))))

(declare-fun bs!1161746 () Bool)

(assert (= bs!1161746 (and b!4821292 b!4821264)))

(assert (=> bs!1161746 (= (= (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235605 lambda!235598))))

(declare-fun bs!1161747 () Bool)

(assert (= bs!1161747 (and b!4821292 b!4821209)))

(assert (=> bs!1161747 (= (= (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235605 lambda!235579))))

(assert (=> b!4821292 true))

(declare-fun bs!1161748 () Bool)

(declare-fun b!4821296 () Bool)

(assert (= bs!1161748 (and b!4821296 b!4821262)))

(declare-fun lambda!235606 () Int)

(assert (=> bs!1161748 (= (= (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235606 lambda!235596))))

(declare-fun bs!1161749 () Bool)

(assert (= bs!1161749 (and b!4821296 b!4821292)))

(assert (=> bs!1161749 (= (= (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (= lambda!235606 lambda!235605))))

(declare-fun bs!1161750 () Bool)

(assert (= bs!1161750 (and b!4821296 b!4821237)))

(assert (=> bs!1161750 (= (= (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235606 lambda!235586))))

(declare-fun bs!1161751 () Bool)

(assert (= bs!1161751 (and b!4821296 b!4821266)))

(assert (=> bs!1161751 (= (= (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))) (= lambda!235606 lambda!235597))))

(declare-fun bs!1161752 () Bool)

(assert (= bs!1161752 (and b!4821296 b!4821264)))

(assert (=> bs!1161752 (= (= (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235606 lambda!235598))))

(declare-fun bs!1161753 () Bool)

(assert (= bs!1161753 (and b!4821296 b!4821209)))

(assert (=> bs!1161753 (= (= (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235606 lambda!235579))))

(assert (=> b!4821296 true))

(declare-fun bs!1161754 () Bool)

(declare-fun b!4821294 () Bool)

(assert (= bs!1161754 (and b!4821294 b!4821262)))

(declare-fun lambda!235607 () Int)

(assert (=> bs!1161754 (= (= (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235607 lambda!235596))))

(declare-fun bs!1161755 () Bool)

(assert (= bs!1161755 (and b!4821294 b!4821296)))

(assert (=> bs!1161755 (= (= (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))) (= lambda!235607 lambda!235606))))

(declare-fun bs!1161756 () Bool)

(assert (= bs!1161756 (and b!4821294 b!4821292)))

(assert (=> bs!1161756 (= (= (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (= lambda!235607 lambda!235605))))

(declare-fun bs!1161757 () Bool)

(assert (= bs!1161757 (and b!4821294 b!4821237)))

(assert (=> bs!1161757 (= lambda!235607 lambda!235586)))

(declare-fun bs!1161758 () Bool)

(assert (= bs!1161758 (and b!4821294 b!4821266)))

(assert (=> bs!1161758 (= (= (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))) (= lambda!235607 lambda!235597))))

(declare-fun bs!1161759 () Bool)

(assert (= bs!1161759 (and b!4821294 b!4821264)))

(assert (=> bs!1161759 (= (= (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235607 lambda!235598))))

(declare-fun bs!1161760 () Bool)

(assert (= bs!1161760 (and b!4821294 b!4821209)))

(assert (=> bs!1161760 (= (= (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235607 lambda!235579))))

(assert (=> b!4821294 true))

(declare-fun bs!1161761 () Bool)

(declare-fun b!4821299 () Bool)

(assert (= bs!1161761 (and b!4821299 b!4821210)))

(declare-fun lambda!235608 () Int)

(assert (=> bs!1161761 (= lambda!235608 lambda!235580)))

(declare-fun bs!1161762 () Bool)

(assert (= bs!1161762 (and b!4821299 b!4821238)))

(assert (=> bs!1161762 (= lambda!235608 lambda!235587)))

(declare-fun bs!1161763 () Bool)

(assert (= bs!1161763 (and b!4821299 b!4821269)))

(assert (=> bs!1161763 (= lambda!235608 lambda!235599)))

(declare-fun b!4821291 () Bool)

(declare-fun e!3012344 () Unit!142316)

(declare-fun Unit!142386 () Unit!142316)

(assert (=> b!4821291 (= e!3012344 Unit!142386)))

(assert (=> b!4821292 false))

(declare-fun lt!1969885 () Unit!142316)

(assert (=> b!4821292 (= lt!1969885 (forallContained!4363 (getKeysList!1147 (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) lambda!235605 (_1!32345 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))))))

(declare-fun e!3012342 () Unit!142316)

(declare-fun Unit!142387 () Unit!142316)

(assert (=> b!4821292 (= e!3012342 Unit!142387)))

(declare-fun b!4821293 () Bool)

(assert (=> b!4821293 false))

(declare-fun Unit!142388 () Unit!142316)

(assert (=> b!4821293 (= e!3012344 Unit!142388)))

(declare-fun res!2051887 () Bool)

(declare-fun e!3012343 () Bool)

(assert (=> b!4821294 (=> (not res!2051887) (not e!3012343))))

(declare-fun lt!1969882 () List!55042)

(assert (=> b!4821294 (= res!2051887 (forall!12565 lt!1969882 lambda!235607))))

(declare-fun d!1543575 () Bool)

(assert (=> d!1543575 e!3012343))

(declare-fun res!2051889 () Bool)

(assert (=> d!1543575 (=> (not res!2051889) (not e!3012343))))

(assert (=> d!1543575 (= res!2051889 (noDuplicate!949 lt!1969882))))

(declare-fun e!3012345 () List!55042)

(assert (=> d!1543575 (= lt!1969882 e!3012345)))

(declare-fun c!821561 () Bool)

(assert (=> d!1543575 (= c!821561 (is-Cons!54914 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))))

(assert (=> d!1543575 (invariantList!1799 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))))

(assert (=> d!1543575 (= (getKeysList!1147 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) lt!1969882)))

(declare-fun b!4821295 () Bool)

(declare-fun Unit!142389 () Unit!142316)

(assert (=> b!4821295 (= e!3012342 Unit!142389)))

(assert (=> b!4821296 (= e!3012345 (Cons!54918 (_1!32345 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (getKeysList!1147 (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))))))

(declare-fun c!821562 () Bool)

(assert (=> b!4821296 (= c!821562 (containsKey!4323 (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (_1!32345 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))))))

(declare-fun lt!1969881 () Unit!142316)

(assert (=> b!4821296 (= lt!1969881 e!3012344)))

(declare-fun c!821560 () Bool)

(assert (=> b!4821296 (= c!821560 (contains!18724 (getKeysList!1147 (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (_1!32345 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))))))

(declare-fun lt!1969880 () Unit!142316)

(assert (=> b!4821296 (= lt!1969880 e!3012342)))

(declare-fun lt!1969879 () List!55042)

(assert (=> b!4821296 (= lt!1969879 (getKeysList!1147 (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))))))

(declare-fun lt!1969884 () Unit!142316)

(assert (=> b!4821296 (= lt!1969884 (lemmaForallContainsAddHeadPreserves!364 (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) lt!1969879 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))))))

(assert (=> b!4821296 (forall!12565 lt!1969879 lambda!235606)))

(declare-fun lt!1969883 () Unit!142316)

(assert (=> b!4821296 (= lt!1969883 lt!1969884)))

(declare-fun b!4821297 () Bool)

(declare-fun res!2051888 () Bool)

(assert (=> b!4821297 (=> (not res!2051888) (not e!3012343))))

(assert (=> b!4821297 (= res!2051888 (= (length!754 lt!1969882) (length!755 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))))))

(declare-fun b!4821298 () Bool)

(assert (=> b!4821298 (= e!3012345 Nil!54918)))

(assert (=> b!4821299 (= e!3012343 (= (content!9808 lt!1969882) (content!9808 (map!12557 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) lambda!235608))))))

(assert (= (and d!1543575 c!821561) b!4821296))

(assert (= (and d!1543575 (not c!821561)) b!4821298))

(assert (= (and b!4821296 c!821562) b!4821293))

(assert (= (and b!4821296 (not c!821562)) b!4821291))

(assert (= (and b!4821296 c!821560) b!4821292))

(assert (= (and b!4821296 (not c!821560)) b!4821295))

(assert (= (and d!1543575 res!2051889) b!4821297))

(assert (= (and b!4821297 res!2051888) b!4821294))

(assert (= (and b!4821294 res!2051887) b!4821299))

(declare-fun m!5808918 () Bool)

(assert (=> b!4821292 m!5808918))

(assert (=> b!4821292 m!5808918))

(declare-fun m!5808920 () Bool)

(assert (=> b!4821292 m!5808920))

(declare-fun m!5808922 () Bool)

(assert (=> b!4821297 m!5808922))

(assert (=> b!4821297 m!5808822))

(declare-fun m!5808924 () Bool)

(assert (=> b!4821299 m!5808924))

(declare-fun m!5808926 () Bool)

(assert (=> b!4821299 m!5808926))

(assert (=> b!4821299 m!5808926))

(declare-fun m!5808928 () Bool)

(assert (=> b!4821299 m!5808928))

(declare-fun m!5808930 () Bool)

(assert (=> b!4821294 m!5808930))

(declare-fun m!5808932 () Bool)

(assert (=> d!1543575 m!5808932))

(assert (=> d!1543575 m!5808736))

(declare-fun m!5808934 () Bool)

(assert (=> b!4821296 m!5808934))

(assert (=> b!4821296 m!5808918))

(declare-fun m!5808936 () Bool)

(assert (=> b!4821296 m!5808936))

(declare-fun m!5808938 () Bool)

(assert (=> b!4821296 m!5808938))

(declare-fun m!5808940 () Bool)

(assert (=> b!4821296 m!5808940))

(assert (=> b!4821296 m!5808918))

(assert (=> b!4821040 d!1543575))

(declare-fun d!1543577 () Bool)

(declare-fun lt!1969886 () Bool)

(assert (=> d!1543577 (= lt!1969886 (set.member key!5428 (content!9808 e!3012130)))))

(declare-fun e!3012347 () Bool)

(assert (=> d!1543577 (= lt!1969886 e!3012347)))

(declare-fun res!2051891 () Bool)

(assert (=> d!1543577 (=> (not res!2051891) (not e!3012347))))

(assert (=> d!1543577 (= res!2051891 (is-Cons!54918 e!3012130))))

(assert (=> d!1543577 (= (contains!18724 e!3012130 key!5428) lt!1969886)))

(declare-fun b!4821300 () Bool)

(declare-fun e!3012346 () Bool)

(assert (=> b!4821300 (= e!3012347 e!3012346)))

(declare-fun res!2051890 () Bool)

(assert (=> b!4821300 (=> res!2051890 e!3012346)))

(assert (=> b!4821300 (= res!2051890 (= (h!61352 e!3012130) key!5428))))

(declare-fun b!4821301 () Bool)

(assert (=> b!4821301 (= e!3012346 (contains!18724 (t!362538 e!3012130) key!5428))))

(assert (= (and d!1543577 res!2051891) b!4821300))

(assert (= (and b!4821300 (not res!2051890)) b!4821301))

(declare-fun m!5808942 () Bool)

(assert (=> d!1543577 m!5808942))

(declare-fun m!5808944 () Bool)

(assert (=> d!1543577 m!5808944))

(declare-fun m!5808946 () Bool)

(assert (=> b!4821301 m!5808946))

(assert (=> bm!336096 d!1543577))

(declare-fun bs!1161764 () Bool)

(declare-fun b!4821303 () Bool)

(assert (= bs!1161764 (and b!4821303 b!4821262)))

(declare-fun lambda!235609 () Int)

(assert (=> bs!1161764 (= (= (toList!7442 lt!1969508) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235609 lambda!235596))))

(declare-fun bs!1161765 () Bool)

(assert (= bs!1161765 (and b!4821303 b!4821296)))

(assert (=> bs!1161765 (= (= (toList!7442 lt!1969508) (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))) (= lambda!235609 lambda!235606))))

(declare-fun bs!1161766 () Bool)

(assert (= bs!1161766 (and b!4821303 b!4821292)))

(assert (=> bs!1161766 (= (= (toList!7442 lt!1969508) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (= lambda!235609 lambda!235605))))

(declare-fun bs!1161767 () Bool)

(assert (= bs!1161767 (and b!4821303 b!4821237)))

(assert (=> bs!1161767 (= (= (toList!7442 lt!1969508) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235609 lambda!235586))))

(declare-fun bs!1161768 () Bool)

(assert (= bs!1161768 (and b!4821303 b!4821294)))

(assert (=> bs!1161768 (= (= (toList!7442 lt!1969508) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235609 lambda!235607))))

(declare-fun bs!1161769 () Bool)

(assert (= bs!1161769 (and b!4821303 b!4821266)))

(assert (=> bs!1161769 (= (= (toList!7442 lt!1969508) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))) (= lambda!235609 lambda!235597))))

(declare-fun bs!1161770 () Bool)

(assert (= bs!1161770 (and b!4821303 b!4821264)))

(assert (=> bs!1161770 (= (= (toList!7442 lt!1969508) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235609 lambda!235598))))

(declare-fun bs!1161771 () Bool)

(assert (= bs!1161771 (and b!4821303 b!4821209)))

(assert (=> bs!1161771 (= (= (toList!7442 lt!1969508) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235609 lambda!235579))))

(assert (=> b!4821303 true))

(declare-fun bs!1161772 () Bool)

(declare-fun b!4821304 () Bool)

(assert (= bs!1161772 (and b!4821304 b!4821210)))

(declare-fun lambda!235610 () Int)

(assert (=> bs!1161772 (= lambda!235610 lambda!235580)))

(declare-fun bs!1161773 () Bool)

(assert (= bs!1161773 (and b!4821304 b!4821238)))

(assert (=> bs!1161773 (= lambda!235610 lambda!235587)))

(declare-fun bs!1161774 () Bool)

(assert (= bs!1161774 (and b!4821304 b!4821269)))

(assert (=> bs!1161774 (= lambda!235610 lambda!235599)))

(declare-fun bs!1161775 () Bool)

(assert (= bs!1161775 (and b!4821304 b!4821299)))

(assert (=> bs!1161775 (= lambda!235610 lambda!235608)))

(declare-fun d!1543579 () Bool)

(declare-fun e!3012348 () Bool)

(assert (=> d!1543579 e!3012348))

(declare-fun res!2051894 () Bool)

(assert (=> d!1543579 (=> (not res!2051894) (not e!3012348))))

(declare-fun lt!1969887 () List!55042)

(assert (=> d!1543579 (= res!2051894 (noDuplicate!949 lt!1969887))))

(assert (=> d!1543579 (= lt!1969887 (getKeysList!1147 (toList!7442 lt!1969508)))))

(assert (=> d!1543579 (= (keys!20192 lt!1969508) lt!1969887)))

(declare-fun b!4821302 () Bool)

(declare-fun res!2051893 () Bool)

(assert (=> b!4821302 (=> (not res!2051893) (not e!3012348))))

(assert (=> b!4821302 (= res!2051893 (= (length!754 lt!1969887) (length!755 (toList!7442 lt!1969508))))))

(declare-fun res!2051892 () Bool)

(assert (=> b!4821303 (=> (not res!2051892) (not e!3012348))))

(assert (=> b!4821303 (= res!2051892 (forall!12565 lt!1969887 lambda!235609))))

(assert (=> b!4821304 (= e!3012348 (= (content!9808 lt!1969887) (content!9808 (map!12557 (toList!7442 lt!1969508) lambda!235610))))))

(assert (= (and d!1543579 res!2051894) b!4821302))

(assert (= (and b!4821302 res!2051893) b!4821303))

(assert (= (and b!4821303 res!2051892) b!4821304))

(declare-fun m!5808948 () Bool)

(assert (=> d!1543579 m!5808948))

(assert (=> d!1543579 m!5808440))

(declare-fun m!5808950 () Bool)

(assert (=> b!4821302 m!5808950))

(declare-fun m!5808952 () Bool)

(assert (=> b!4821302 m!5808952))

(declare-fun m!5808954 () Bool)

(assert (=> b!4821303 m!5808954))

(declare-fun m!5808956 () Bool)

(assert (=> b!4821304 m!5808956))

(declare-fun m!5808958 () Bool)

(assert (=> b!4821304 m!5808958))

(assert (=> b!4821304 m!5808958))

(declare-fun m!5808960 () Bool)

(assert (=> b!4821304 m!5808960))

(assert (=> b!4821003 d!1543579))

(declare-fun bs!1161776 () Bool)

(declare-fun d!1543581 () Bool)

(assert (= bs!1161776 (and d!1543581 b!4821103)))

(declare-fun lambda!235613 () Int)

(assert (=> bs!1161776 (= (= lt!1969508 lt!1969699) (= lambda!235613 lambda!235540))))

(declare-fun bs!1161777 () Bool)

(assert (= bs!1161777 (and d!1543581 d!1543477)))

(assert (=> bs!1161777 (= (= lt!1969508 lt!1969700) (= lambda!235613 lambda!235541))))

(declare-fun bs!1161778 () Bool)

(assert (= bs!1161778 (and d!1543581 d!1543567)))

(assert (=> bs!1161778 (= (= lt!1969508 lt!1969877) (= lambda!235613 lambda!235603))))

(declare-fun bs!1161779 () Bool)

(assert (= bs!1161779 (and d!1543581 b!4821217)))

(assert (=> bs!1161779 (= (= lt!1969508 lt!1969830) (= lambda!235613 lambda!235583))))

(assert (=> bs!1161779 (= (= lt!1969508 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235613 lambda!235582))))

(declare-fun bs!1161780 () Bool)

(assert (= bs!1161780 (and d!1543581 b!4821105)))

(assert (=> bs!1161780 (= lambda!235613 lambda!235538)))

(declare-fun bs!1161781 () Bool)

(assert (= bs!1161781 (and d!1543581 d!1543543)))

(assert (=> bs!1161781 (= (= lt!1969508 lt!1969831) (= lambda!235613 lambda!235584))))

(declare-fun bs!1161782 () Bool)

(assert (= bs!1161782 (and d!1543581 b!4821276)))

(assert (=> bs!1161782 (= (= lt!1969508 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235613 lambda!235600))))

(assert (=> bs!1161776 (= lambda!235613 lambda!235539)))

(declare-fun bs!1161783 () Bool)

(assert (= bs!1161783 (and d!1543581 b!4821274)))

(assert (=> bs!1161783 (= (= lt!1969508 lt!1969876) (= lambda!235613 lambda!235602))))

(declare-fun bs!1161784 () Bool)

(assert (= bs!1161784 (and d!1543581 b!4821219)))

(assert (=> bs!1161784 (= (= lt!1969508 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235613 lambda!235581))))

(assert (=> bs!1161783 (= (= lt!1969508 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235613 lambda!235601))))

(assert (=> d!1543581 true))

(assert (=> d!1543581 (forall!12563 (toList!7442 lt!1969508) lambda!235613)))

(declare-fun lt!1969890 () Unit!142316)

(declare-fun choose!35012 (ListMap!6827) Unit!142316)

(assert (=> d!1543581 (= lt!1969890 (choose!35012 lt!1969508))))

(assert (=> d!1543581 (= (lemmaContainsAllItsOwnKeys!979 lt!1969508) lt!1969890)))

(declare-fun bs!1161785 () Bool)

(assert (= bs!1161785 d!1543581))

(declare-fun m!5808962 () Bool)

(assert (=> bs!1161785 m!5808962))

(declare-fun m!5808964 () Bool)

(assert (=> bs!1161785 m!5808964))

(assert (=> bm!336111 d!1543581))

(declare-fun d!1543583 () Bool)

(declare-fun lt!1969891 () Bool)

(assert (=> d!1543583 (= lt!1969891 (set.member key!5428 (content!9808 (keys!20192 (extractMap!2665 (toList!7441 lt!1969509))))))))

(declare-fun e!3012350 () Bool)

(assert (=> d!1543583 (= lt!1969891 e!3012350)))

(declare-fun res!2051896 () Bool)

(assert (=> d!1543583 (=> (not res!2051896) (not e!3012350))))

(assert (=> d!1543583 (= res!2051896 (is-Cons!54918 (keys!20192 (extractMap!2665 (toList!7441 lt!1969509)))))))

(assert (=> d!1543583 (= (contains!18724 (keys!20192 (extractMap!2665 (toList!7441 lt!1969509))) key!5428) lt!1969891)))

(declare-fun b!4821305 () Bool)

(declare-fun e!3012349 () Bool)

(assert (=> b!4821305 (= e!3012350 e!3012349)))

(declare-fun res!2051895 () Bool)

(assert (=> b!4821305 (=> res!2051895 e!3012349)))

(assert (=> b!4821305 (= res!2051895 (= (h!61352 (keys!20192 (extractMap!2665 (toList!7441 lt!1969509)))) key!5428))))

(declare-fun b!4821306 () Bool)

(assert (=> b!4821306 (= e!3012349 (contains!18724 (t!362538 (keys!20192 (extractMap!2665 (toList!7441 lt!1969509)))) key!5428))))

(assert (= (and d!1543583 res!2051896) b!4821305))

(assert (= (and b!4821305 (not res!2051895)) b!4821306))

(assert (=> d!1543583 m!5808392))

(declare-fun m!5808966 () Bool)

(assert (=> d!1543583 m!5808966))

(declare-fun m!5808968 () Bool)

(assert (=> d!1543583 m!5808968))

(declare-fun m!5808970 () Bool)

(assert (=> b!4821306 m!5808970))

(assert (=> b!4820964 d!1543583))

(declare-fun bs!1161786 () Bool)

(declare-fun b!4821308 () Bool)

(assert (= bs!1161786 (and b!4821308 b!4821262)))

(declare-fun lambda!235614 () Int)

(assert (=> bs!1161786 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235614 lambda!235596))))

(declare-fun bs!1161787 () Bool)

(assert (= bs!1161787 (and b!4821308 b!4821296)))

(assert (=> bs!1161787 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))) (= lambda!235614 lambda!235606))))

(declare-fun bs!1161788 () Bool)

(assert (= bs!1161788 (and b!4821308 b!4821292)))

(assert (=> bs!1161788 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (= lambda!235614 lambda!235605))))

(declare-fun bs!1161789 () Bool)

(assert (= bs!1161789 (and b!4821308 b!4821237)))

(assert (=> bs!1161789 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235614 lambda!235586))))

(declare-fun bs!1161790 () Bool)

(assert (= bs!1161790 (and b!4821308 b!4821294)))

(assert (=> bs!1161790 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235614 lambda!235607))))

(declare-fun bs!1161791 () Bool)

(assert (= bs!1161791 (and b!4821308 b!4821303)))

(assert (=> bs!1161791 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (toList!7442 lt!1969508)) (= lambda!235614 lambda!235609))))

(declare-fun bs!1161792 () Bool)

(assert (= bs!1161792 (and b!4821308 b!4821266)))

(assert (=> bs!1161792 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))) (= lambda!235614 lambda!235597))))

(declare-fun bs!1161793 () Bool)

(assert (= bs!1161793 (and b!4821308 b!4821264)))

(assert (=> bs!1161793 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235614 lambda!235598))))

(declare-fun bs!1161794 () Bool)

(assert (= bs!1161794 (and b!4821308 b!4821209)))

(assert (=> bs!1161794 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235614 lambda!235579))))

(assert (=> b!4821308 true))

(declare-fun bs!1161795 () Bool)

(declare-fun b!4821309 () Bool)

(assert (= bs!1161795 (and b!4821309 b!4821269)))

(declare-fun lambda!235615 () Int)

(assert (=> bs!1161795 (= lambda!235615 lambda!235599)))

(declare-fun bs!1161796 () Bool)

(assert (= bs!1161796 (and b!4821309 b!4821304)))

(assert (=> bs!1161796 (= lambda!235615 lambda!235610)))

(declare-fun bs!1161797 () Bool)

(assert (= bs!1161797 (and b!4821309 b!4821299)))

(assert (=> bs!1161797 (= lambda!235615 lambda!235608)))

(declare-fun bs!1161798 () Bool)

(assert (= bs!1161798 (and b!4821309 b!4821238)))

(assert (=> bs!1161798 (= lambda!235615 lambda!235587)))

(declare-fun bs!1161799 () Bool)

(assert (= bs!1161799 (and b!4821309 b!4821210)))

(assert (=> bs!1161799 (= lambda!235615 lambda!235580)))

(declare-fun d!1543585 () Bool)

(declare-fun e!3012351 () Bool)

(assert (=> d!1543585 e!3012351))

(declare-fun res!2051899 () Bool)

(assert (=> d!1543585 (=> (not res!2051899) (not e!3012351))))

(declare-fun lt!1969892 () List!55042)

(assert (=> d!1543585 (= res!2051899 (noDuplicate!949 lt!1969892))))

(assert (=> d!1543585 (= lt!1969892 (getKeysList!1147 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))))

(assert (=> d!1543585 (= (keys!20192 (extractMap!2665 (toList!7441 lt!1969509))) lt!1969892)))

(declare-fun b!4821307 () Bool)

(declare-fun res!2051898 () Bool)

(assert (=> b!4821307 (=> (not res!2051898) (not e!3012351))))

(assert (=> b!4821307 (= res!2051898 (= (length!754 lt!1969892) (length!755 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))))))

(declare-fun res!2051897 () Bool)

(assert (=> b!4821308 (=> (not res!2051897) (not e!3012351))))

(assert (=> b!4821308 (= res!2051897 (forall!12565 lt!1969892 lambda!235614))))

(assert (=> b!4821309 (= e!3012351 (= (content!9808 lt!1969892) (content!9808 (map!12557 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) lambda!235615))))))

(assert (= (and d!1543585 res!2051899) b!4821307))

(assert (= (and b!4821307 res!2051898) b!4821308))

(assert (= (and b!4821308 res!2051897) b!4821309))

(declare-fun m!5808972 () Bool)

(assert (=> d!1543585 m!5808972))

(assert (=> d!1543585 m!5808396))

(declare-fun m!5808974 () Bool)

(assert (=> b!4821307 m!5808974))

(declare-fun m!5808976 () Bool)

(assert (=> b!4821307 m!5808976))

(declare-fun m!5808978 () Bool)

(assert (=> b!4821308 m!5808978))

(declare-fun m!5808980 () Bool)

(assert (=> b!4821309 m!5808980))

(declare-fun m!5808982 () Bool)

(assert (=> b!4821309 m!5808982))

(assert (=> b!4821309 m!5808982))

(declare-fun m!5808984 () Bool)

(assert (=> b!4821309 m!5808984))

(assert (=> b!4820964 d!1543585))

(assert (=> b!4821113 d!1543457))

(declare-fun d!1543587 () Bool)

(declare-fun res!2051900 () Bool)

(declare-fun e!3012352 () Bool)

(assert (=> d!1543587 (=> res!2051900 e!3012352)))

(assert (=> d!1543587 (= res!2051900 (and (is-Cons!54914 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (= (_1!32345 (h!61348 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))))

(assert (=> d!1543587 (= (containsKey!4321 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) e!3012352)))

(declare-fun b!4821310 () Bool)

(declare-fun e!3012353 () Bool)

(assert (=> b!4821310 (= e!3012352 e!3012353)))

(declare-fun res!2051901 () Bool)

(assert (=> b!4821310 (=> (not res!2051901) (not e!3012353))))

(assert (=> b!4821310 (= res!2051901 (is-Cons!54914 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(declare-fun b!4821311 () Bool)

(assert (=> b!4821311 (= e!3012353 (containsKey!4321 (t!362534 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (= (and d!1543587 (not res!2051900)) b!4821310))

(assert (= (and b!4821310 res!2051901) b!4821311))

(declare-fun m!5808986 () Bool)

(assert (=> b!4821311 m!5808986))

(assert (=> b!4820942 d!1543587))

(declare-fun bs!1161800 () Bool)

(declare-fun b!4821313 () Bool)

(assert (= bs!1161800 (and b!4821313 b!4821262)))

(declare-fun lambda!235616 () Int)

(assert (=> bs!1161800 (= (= (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235616 lambda!235596))))

(declare-fun bs!1161801 () Bool)

(assert (= bs!1161801 (and b!4821313 b!4821296)))

(assert (=> bs!1161801 (= (= (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))) (= lambda!235616 lambda!235606))))

(declare-fun bs!1161802 () Bool)

(assert (= bs!1161802 (and b!4821313 b!4821292)))

(assert (=> bs!1161802 (= (= (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (= lambda!235616 lambda!235605))))

(declare-fun bs!1161803 () Bool)

(assert (= bs!1161803 (and b!4821313 b!4821237)))

(assert (=> bs!1161803 (= (= (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235616 lambda!235586))))

(declare-fun bs!1161804 () Bool)

(assert (= bs!1161804 (and b!4821313 b!4821294)))

(assert (=> bs!1161804 (= (= (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235616 lambda!235607))))

(declare-fun bs!1161805 () Bool)

(assert (= bs!1161805 (and b!4821313 b!4821308)))

(assert (=> bs!1161805 (= (= (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (= lambda!235616 lambda!235614))))

(declare-fun bs!1161806 () Bool)

(assert (= bs!1161806 (and b!4821313 b!4821303)))

(assert (=> bs!1161806 (= (= (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (toList!7442 lt!1969508)) (= lambda!235616 lambda!235609))))

(declare-fun bs!1161807 () Bool)

(assert (= bs!1161807 (and b!4821313 b!4821266)))

(assert (=> bs!1161807 (= (= (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))) (= lambda!235616 lambda!235597))))

(declare-fun bs!1161808 () Bool)

(assert (= bs!1161808 (and b!4821313 b!4821264)))

(assert (=> bs!1161808 (= (= (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235616 lambda!235598))))

(declare-fun bs!1161809 () Bool)

(assert (= bs!1161809 (and b!4821313 b!4821209)))

(assert (=> bs!1161809 (= (= (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235616 lambda!235579))))

(assert (=> b!4821313 true))

(declare-fun bs!1161810 () Bool)

(declare-fun b!4821317 () Bool)

(assert (= bs!1161810 (and b!4821317 b!4821262)))

(declare-fun lambda!235617 () Int)

(assert (=> bs!1161810 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235617 lambda!235596))))

(declare-fun bs!1161811 () Bool)

(assert (= bs!1161811 (and b!4821317 b!4821296)))

(assert (=> bs!1161811 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))) (= lambda!235617 lambda!235606))))

(declare-fun bs!1161812 () Bool)

(assert (= bs!1161812 (and b!4821317 b!4821292)))

(assert (=> bs!1161812 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (= lambda!235617 lambda!235605))))

(declare-fun bs!1161813 () Bool)

(assert (= bs!1161813 (and b!4821317 b!4821237)))

(assert (=> bs!1161813 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235617 lambda!235586))))

(declare-fun bs!1161814 () Bool)

(assert (= bs!1161814 (and b!4821317 b!4821294)))

(assert (=> bs!1161814 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235617 lambda!235607))))

(declare-fun bs!1161815 () Bool)

(assert (= bs!1161815 (and b!4821317 b!4821308)))

(assert (=> bs!1161815 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (= lambda!235617 lambda!235614))))

(declare-fun bs!1161816 () Bool)

(assert (= bs!1161816 (and b!4821317 b!4821303)))

(assert (=> bs!1161816 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (toList!7442 lt!1969508)) (= lambda!235617 lambda!235609))))

(declare-fun bs!1161817 () Bool)

(assert (= bs!1161817 (and b!4821317 b!4821266)))

(assert (=> bs!1161817 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))) (= lambda!235617 lambda!235597))))

(declare-fun bs!1161818 () Bool)

(assert (= bs!1161818 (and b!4821317 b!4821264)))

(assert (=> bs!1161818 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235617 lambda!235598))))

(declare-fun bs!1161819 () Bool)

(assert (= bs!1161819 (and b!4821317 b!4821313)))

(assert (=> bs!1161819 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (= lambda!235617 lambda!235616))))

(declare-fun bs!1161820 () Bool)

(assert (= bs!1161820 (and b!4821317 b!4821209)))

(assert (=> bs!1161820 (= (= (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235617 lambda!235579))))

(assert (=> b!4821317 true))

(declare-fun bs!1161821 () Bool)

(declare-fun b!4821315 () Bool)

(assert (= bs!1161821 (and b!4821315 b!4821262)))

(declare-fun lambda!235618 () Int)

(assert (=> bs!1161821 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235618 lambda!235596))))

(declare-fun bs!1161822 () Bool)

(assert (= bs!1161822 (and b!4821315 b!4821296)))

(assert (=> bs!1161822 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))) (= lambda!235618 lambda!235606))))

(declare-fun bs!1161823 () Bool)

(assert (= bs!1161823 (and b!4821315 b!4821292)))

(assert (=> bs!1161823 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (= lambda!235618 lambda!235605))))

(declare-fun bs!1161824 () Bool)

(assert (= bs!1161824 (and b!4821315 b!4821237)))

(assert (=> bs!1161824 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235618 lambda!235586))))

(declare-fun bs!1161825 () Bool)

(assert (= bs!1161825 (and b!4821315 b!4821294)))

(assert (=> bs!1161825 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235618 lambda!235607))))

(declare-fun bs!1161826 () Bool)

(assert (= bs!1161826 (and b!4821315 b!4821317)))

(assert (=> bs!1161826 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))) (= lambda!235618 lambda!235617))))

(declare-fun bs!1161827 () Bool)

(assert (= bs!1161827 (and b!4821315 b!4821308)))

(assert (=> bs!1161827 (= lambda!235618 lambda!235614)))

(declare-fun bs!1161828 () Bool)

(assert (= bs!1161828 (and b!4821315 b!4821303)))

(assert (=> bs!1161828 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (toList!7442 lt!1969508)) (= lambda!235618 lambda!235609))))

(declare-fun bs!1161829 () Bool)

(assert (= bs!1161829 (and b!4821315 b!4821266)))

(assert (=> bs!1161829 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))) (= lambda!235618 lambda!235597))))

(declare-fun bs!1161830 () Bool)

(assert (= bs!1161830 (and b!4821315 b!4821264)))

(assert (=> bs!1161830 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235618 lambda!235598))))

(declare-fun bs!1161831 () Bool)

(assert (= bs!1161831 (and b!4821315 b!4821313)))

(assert (=> bs!1161831 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (= lambda!235618 lambda!235616))))

(declare-fun bs!1161832 () Bool)

(assert (= bs!1161832 (and b!4821315 b!4821209)))

(assert (=> bs!1161832 (= (= (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235618 lambda!235579))))

(assert (=> b!4821315 true))

(declare-fun bs!1161833 () Bool)

(declare-fun b!4821320 () Bool)

(assert (= bs!1161833 (and b!4821320 b!4821269)))

(declare-fun lambda!235619 () Int)

(assert (=> bs!1161833 (= lambda!235619 lambda!235599)))

(declare-fun bs!1161834 () Bool)

(assert (= bs!1161834 (and b!4821320 b!4821304)))

(assert (=> bs!1161834 (= lambda!235619 lambda!235610)))

(declare-fun bs!1161835 () Bool)

(assert (= bs!1161835 (and b!4821320 b!4821309)))

(assert (=> bs!1161835 (= lambda!235619 lambda!235615)))

(declare-fun bs!1161836 () Bool)

(assert (= bs!1161836 (and b!4821320 b!4821299)))

(assert (=> bs!1161836 (= lambda!235619 lambda!235608)))

(declare-fun bs!1161837 () Bool)

(assert (= bs!1161837 (and b!4821320 b!4821238)))

(assert (=> bs!1161837 (= lambda!235619 lambda!235587)))

(declare-fun bs!1161838 () Bool)

(assert (= bs!1161838 (and b!4821320 b!4821210)))

(assert (=> bs!1161838 (= lambda!235619 lambda!235580)))

(declare-fun b!4821312 () Bool)

(declare-fun e!3012356 () Unit!142316)

(declare-fun Unit!142394 () Unit!142316)

(assert (=> b!4821312 (= e!3012356 Unit!142394)))

(assert (=> b!4821313 false))

(declare-fun lt!1969899 () Unit!142316)

(assert (=> b!4821313 (= lt!1969899 (forallContained!4363 (getKeysList!1147 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) lambda!235616 (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))))))

(declare-fun e!3012354 () Unit!142316)

(declare-fun Unit!142395 () Unit!142316)

(assert (=> b!4821313 (= e!3012354 Unit!142395)))

(declare-fun b!4821314 () Bool)

(assert (=> b!4821314 false))

(declare-fun Unit!142396 () Unit!142316)

(assert (=> b!4821314 (= e!3012356 Unit!142396)))

(declare-fun res!2051902 () Bool)

(declare-fun e!3012355 () Bool)

(assert (=> b!4821315 (=> (not res!2051902) (not e!3012355))))

(declare-fun lt!1969896 () List!55042)

(assert (=> b!4821315 (= res!2051902 (forall!12565 lt!1969896 lambda!235618))))

(declare-fun d!1543589 () Bool)

(assert (=> d!1543589 e!3012355))

(declare-fun res!2051904 () Bool)

(assert (=> d!1543589 (=> (not res!2051904) (not e!3012355))))

(assert (=> d!1543589 (= res!2051904 (noDuplicate!949 lt!1969896))))

(declare-fun e!3012357 () List!55042)

(assert (=> d!1543589 (= lt!1969896 e!3012357)))

(declare-fun c!821564 () Bool)

(assert (=> d!1543589 (= c!821564 (is-Cons!54914 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))))

(assert (=> d!1543589 (invariantList!1799 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))))

(assert (=> d!1543589 (= (getKeysList!1147 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) lt!1969896)))

(declare-fun b!4821316 () Bool)

(declare-fun Unit!142397 () Unit!142316)

(assert (=> b!4821316 (= e!3012354 Unit!142397)))

(assert (=> b!4821317 (= e!3012357 (Cons!54918 (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (getKeysList!1147 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))))))

(declare-fun c!821565 () Bool)

(assert (=> b!4821317 (= c!821565 (containsKey!4323 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))))))

(declare-fun lt!1969895 () Unit!142316)

(assert (=> b!4821317 (= lt!1969895 e!3012356)))

(declare-fun c!821563 () Bool)

(assert (=> b!4821317 (= c!821563 (contains!18724 (getKeysList!1147 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))))))

(declare-fun lt!1969894 () Unit!142316)

(assert (=> b!4821317 (= lt!1969894 e!3012354)))

(declare-fun lt!1969893 () List!55042)

(assert (=> b!4821317 (= lt!1969893 (getKeysList!1147 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))))))

(declare-fun lt!1969898 () Unit!142316)

(assert (=> b!4821317 (= lt!1969898 (lemmaForallContainsAddHeadPreserves!364 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) lt!1969893 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))))))

(assert (=> b!4821317 (forall!12565 lt!1969893 lambda!235617)))

(declare-fun lt!1969897 () Unit!142316)

(assert (=> b!4821317 (= lt!1969897 lt!1969898)))

(declare-fun b!4821318 () Bool)

(declare-fun res!2051903 () Bool)

(assert (=> b!4821318 (=> (not res!2051903) (not e!3012355))))

(assert (=> b!4821318 (= res!2051903 (= (length!754 lt!1969896) (length!755 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))))))

(declare-fun b!4821319 () Bool)

(assert (=> b!4821319 (= e!3012357 Nil!54918)))

(assert (=> b!4821320 (= e!3012355 (= (content!9808 lt!1969896) (content!9808 (map!12557 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) lambda!235619))))))

(assert (= (and d!1543589 c!821564) b!4821317))

(assert (= (and d!1543589 (not c!821564)) b!4821319))

(assert (= (and b!4821317 c!821565) b!4821314))

(assert (= (and b!4821317 (not c!821565)) b!4821312))

(assert (= (and b!4821317 c!821563) b!4821313))

(assert (= (and b!4821317 (not c!821563)) b!4821316))

(assert (= (and d!1543589 res!2051904) b!4821318))

(assert (= (and b!4821318 res!2051903) b!4821315))

(assert (= (and b!4821315 res!2051902) b!4821320))

(declare-fun m!5808988 () Bool)

(assert (=> b!4821313 m!5808988))

(assert (=> b!4821313 m!5808988))

(declare-fun m!5808990 () Bool)

(assert (=> b!4821313 m!5808990))

(declare-fun m!5808992 () Bool)

(assert (=> b!4821318 m!5808992))

(assert (=> b!4821318 m!5808976))

(declare-fun m!5808994 () Bool)

(assert (=> b!4821320 m!5808994))

(declare-fun m!5808996 () Bool)

(assert (=> b!4821320 m!5808996))

(assert (=> b!4821320 m!5808996))

(declare-fun m!5808998 () Bool)

(assert (=> b!4821320 m!5808998))

(declare-fun m!5809000 () Bool)

(assert (=> b!4821315 m!5809000))

(declare-fun m!5809002 () Bool)

(assert (=> d!1543589 m!5809002))

(assert (=> d!1543589 m!5808834))

(declare-fun m!5809004 () Bool)

(assert (=> b!4821317 m!5809004))

(assert (=> b!4821317 m!5808988))

(declare-fun m!5809006 () Bool)

(assert (=> b!4821317 m!5809006))

(declare-fun m!5809008 () Bool)

(assert (=> b!4821317 m!5809008))

(declare-fun m!5809010 () Bool)

(assert (=> b!4821317 m!5809010))

(assert (=> b!4821317 m!5808988))

(assert (=> b!4820962 d!1543589))

(declare-fun d!1543591 () Bool)

(declare-fun choose!35016 (Hashable!7243 K!16597) (_ BitVec 64))

(assert (=> d!1543591 (= (hash!5342 hashF!1509 key!5428) (choose!35016 hashF!1509 key!5428))))

(declare-fun bs!1161839 () Bool)

(assert (= bs!1161839 d!1543591))

(declare-fun m!5809012 () Bool)

(assert (=> bs!1161839 m!5809012))

(assert (=> d!1543463 d!1543591))

(declare-fun d!1543593 () Bool)

(declare-fun res!2051905 () Bool)

(declare-fun e!3012358 () Bool)

(assert (=> d!1543593 (=> res!2051905 e!3012358)))

(assert (=> d!1543593 (= res!2051905 (is-Nil!54914 (toList!7442 lt!1969508)))))

(assert (=> d!1543593 (= (forall!12563 (toList!7442 lt!1969508) lambda!235540) e!3012358)))

(declare-fun b!4821321 () Bool)

(declare-fun e!3012359 () Bool)

(assert (=> b!4821321 (= e!3012358 e!3012359)))

(declare-fun res!2051906 () Bool)

(assert (=> b!4821321 (=> (not res!2051906) (not e!3012359))))

(assert (=> b!4821321 (= res!2051906 (dynLambda!22192 lambda!235540 (h!61348 (toList!7442 lt!1969508))))))

(declare-fun b!4821322 () Bool)

(assert (=> b!4821322 (= e!3012359 (forall!12563 (t!362534 (toList!7442 lt!1969508)) lambda!235540))))

(assert (= (and d!1543593 (not res!2051905)) b!4821321))

(assert (= (and b!4821321 res!2051906) b!4821322))

(declare-fun b_lambda!189053 () Bool)

(assert (=> (not b_lambda!189053) (not b!4821321)))

(declare-fun m!5809014 () Bool)

(assert (=> b!4821321 m!5809014))

(declare-fun m!5809016 () Bool)

(assert (=> b!4821322 m!5809016))

(assert (=> b!4821104 d!1543593))

(assert (=> d!1543451 d!1543443))

(assert (=> d!1543451 d!1543447))

(declare-fun d!1543595 () Bool)

(assert (=> d!1543595 (not (contains!18721 (extractMap!2665 (toList!7441 lt!1969509)) key!5428))))

(assert (=> d!1543595 true))

(declare-fun _$28!874 () Unit!142316)

(assert (=> d!1543595 (= (choose!35005 lt!1969509 key!5428 hashF!1509) _$28!874)))

(declare-fun bs!1161840 () Bool)

(assert (= bs!1161840 d!1543595))

(assert (=> bs!1161840 m!5808338))

(assert (=> bs!1161840 m!5808338))

(assert (=> bs!1161840 m!5808340))

(assert (=> d!1543451 d!1543595))

(declare-fun d!1543597 () Bool)

(declare-fun res!2051907 () Bool)

(declare-fun e!3012360 () Bool)

(assert (=> d!1543597 (=> res!2051907 e!3012360)))

(assert (=> d!1543597 (= res!2051907 (is-Nil!54915 (toList!7441 lt!1969509)))))

(assert (=> d!1543597 (= (forall!12561 (toList!7441 lt!1969509) lambda!235495) e!3012360)))

(declare-fun b!4821323 () Bool)

(declare-fun e!3012361 () Bool)

(assert (=> b!4821323 (= e!3012360 e!3012361)))

(declare-fun res!2051908 () Bool)

(assert (=> b!4821323 (=> (not res!2051908) (not e!3012361))))

(assert (=> b!4821323 (= res!2051908 (dynLambda!22190 lambda!235495 (h!61349 (toList!7441 lt!1969509))))))

(declare-fun b!4821324 () Bool)

(assert (=> b!4821324 (= e!3012361 (forall!12561 (t!362535 (toList!7441 lt!1969509)) lambda!235495))))

(assert (= (and d!1543597 (not res!2051907)) b!4821323))

(assert (= (and b!4821323 res!2051908) b!4821324))

(declare-fun b_lambda!189055 () Bool)

(assert (=> (not b_lambda!189055) (not b!4821323)))

(declare-fun m!5809018 () Bool)

(assert (=> b!4821323 m!5809018))

(declare-fun m!5809020 () Bool)

(assert (=> b!4821324 m!5809020))

(assert (=> d!1543451 d!1543597))

(declare-fun d!1543599 () Bool)

(assert (=> d!1543599 (= (isDefined!10582 (getValueByKey!2594 (toList!7442 lt!1969508) key!5428)) (not (isEmpty!29629 (getValueByKey!2594 (toList!7442 lt!1969508) key!5428))))))

(declare-fun bs!1161841 () Bool)

(assert (= bs!1161841 d!1543599))

(assert (=> bs!1161841 m!5808444))

(declare-fun m!5809022 () Bool)

(assert (=> bs!1161841 m!5809022))

(assert (=> b!4821000 d!1543599))

(declare-fun b!4821328 () Bool)

(declare-fun e!3012363 () Option!13467)

(assert (=> b!4821328 (= e!3012363 None!13466)))

(declare-fun b!4821327 () Bool)

(assert (=> b!4821327 (= e!3012363 (getValueByKey!2594 (t!362534 (toList!7442 lt!1969508)) key!5428))))

(declare-fun b!4821326 () Bool)

(declare-fun e!3012362 () Option!13467)

(assert (=> b!4821326 (= e!3012362 e!3012363)))

(declare-fun c!821567 () Bool)

(assert (=> b!4821326 (= c!821567 (and (is-Cons!54914 (toList!7442 lt!1969508)) (not (= (_1!32345 (h!61348 (toList!7442 lt!1969508))) key!5428))))))

(declare-fun d!1543601 () Bool)

(declare-fun c!821566 () Bool)

(assert (=> d!1543601 (= c!821566 (and (is-Cons!54914 (toList!7442 lt!1969508)) (= (_1!32345 (h!61348 (toList!7442 lt!1969508))) key!5428)))))

(assert (=> d!1543601 (= (getValueByKey!2594 (toList!7442 lt!1969508) key!5428) e!3012362)))

(declare-fun b!4821325 () Bool)

(assert (=> b!4821325 (= e!3012362 (Some!13466 (_2!32345 (h!61348 (toList!7442 lt!1969508)))))))

(assert (= (and d!1543601 c!821566) b!4821325))

(assert (= (and d!1543601 (not c!821566)) b!4821326))

(assert (= (and b!4821326 c!821567) b!4821327))

(assert (= (and b!4821326 (not c!821567)) b!4821328))

(declare-fun m!5809024 () Bool)

(assert (=> b!4821327 m!5809024))

(assert (=> b!4821000 d!1543601))

(declare-fun d!1543603 () Bool)

(declare-fun res!2051909 () Bool)

(declare-fun e!3012364 () Bool)

(assert (=> d!1543603 (=> res!2051909 e!3012364)))

(assert (=> d!1543603 (= res!2051909 (is-Nil!54914 (ite c!821519 (toList!7442 lt!1969508) (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(assert (=> d!1543603 (= (forall!12563 (ite c!821519 (toList!7442 lt!1969508) (_2!32346 (h!61349 (toList!7441 lm!2280)))) (ite c!821519 lambda!235538 lambda!235540)) e!3012364)))

(declare-fun b!4821329 () Bool)

(declare-fun e!3012365 () Bool)

(assert (=> b!4821329 (= e!3012364 e!3012365)))

(declare-fun res!2051910 () Bool)

(assert (=> b!4821329 (=> (not res!2051910) (not e!3012365))))

(assert (=> b!4821329 (= res!2051910 (dynLambda!22192 (ite c!821519 lambda!235538 lambda!235540) (h!61348 (ite c!821519 (toList!7442 lt!1969508) (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun b!4821330 () Bool)

(assert (=> b!4821330 (= e!3012365 (forall!12563 (t!362534 (ite c!821519 (toList!7442 lt!1969508) (_2!32346 (h!61349 (toList!7441 lm!2280))))) (ite c!821519 lambda!235538 lambda!235540)))))

(assert (= (and d!1543603 (not res!2051909)) b!4821329))

(assert (= (and b!4821329 res!2051910) b!4821330))

(declare-fun b_lambda!189057 () Bool)

(assert (=> (not b_lambda!189057) (not b!4821329)))

(declare-fun m!5809026 () Bool)

(assert (=> b!4821329 m!5809026))

(declare-fun m!5809028 () Bool)

(assert (=> b!4821330 m!5809028))

(assert (=> bm!336109 d!1543603))

(declare-fun d!1543605 () Bool)

(declare-fun res!2051911 () Bool)

(declare-fun e!3012366 () Bool)

(assert (=> d!1543605 (=> res!2051911 e!3012366)))

(assert (=> d!1543605 (= res!2051911 (and (is-Cons!54914 (toList!7442 lt!1969508)) (= (_1!32345 (h!61348 (toList!7442 lt!1969508))) key!5428)))))

(assert (=> d!1543605 (= (containsKey!4323 (toList!7442 lt!1969508) key!5428) e!3012366)))

(declare-fun b!4821331 () Bool)

(declare-fun e!3012367 () Bool)

(assert (=> b!4821331 (= e!3012366 e!3012367)))

(declare-fun res!2051912 () Bool)

(assert (=> b!4821331 (=> (not res!2051912) (not e!3012367))))

(assert (=> b!4821331 (= res!2051912 (is-Cons!54914 (toList!7442 lt!1969508)))))

(declare-fun b!4821332 () Bool)

(assert (=> b!4821332 (= e!3012367 (containsKey!4323 (t!362534 (toList!7442 lt!1969508)) key!5428))))

(assert (= (and d!1543605 (not res!2051911)) b!4821331))

(assert (= (and b!4821331 res!2051912) b!4821332))

(declare-fun m!5809030 () Bool)

(assert (=> b!4821332 m!5809030))

(assert (=> d!1543457 d!1543605))

(declare-fun d!1543607 () Bool)

(declare-fun res!2051913 () Bool)

(declare-fun e!3012368 () Bool)

(assert (=> d!1543607 (=> res!2051913 e!3012368)))

(assert (=> d!1543607 (= res!2051913 (is-Nil!54914 (toList!7442 lt!1969508)))))

(assert (=> d!1543607 (= (forall!12563 (toList!7442 lt!1969508) lambda!235541) e!3012368)))

(declare-fun b!4821333 () Bool)

(declare-fun e!3012369 () Bool)

(assert (=> b!4821333 (= e!3012368 e!3012369)))

(declare-fun res!2051914 () Bool)

(assert (=> b!4821333 (=> (not res!2051914) (not e!3012369))))

(assert (=> b!4821333 (= res!2051914 (dynLambda!22192 lambda!235541 (h!61348 (toList!7442 lt!1969508))))))

(declare-fun b!4821334 () Bool)

(assert (=> b!4821334 (= e!3012369 (forall!12563 (t!362534 (toList!7442 lt!1969508)) lambda!235541))))

(assert (= (and d!1543607 (not res!2051913)) b!4821333))

(assert (= (and b!4821333 res!2051914) b!4821334))

(declare-fun b_lambda!189059 () Bool)

(assert (=> (not b_lambda!189059) (not b!4821333)))

(declare-fun m!5809032 () Bool)

(assert (=> b!4821333 m!5809032))

(declare-fun m!5809034 () Bool)

(assert (=> b!4821334 m!5809034))

(assert (=> b!4821101 d!1543607))

(declare-fun d!1543609 () Bool)

(assert (=> d!1543609 (= (tail!9389 (toList!7441 lm!2280)) (t!362535 (toList!7441 lm!2280)))))

(assert (=> d!1543453 d!1543609))

(declare-fun d!1543611 () Bool)

(declare-fun res!2051915 () Bool)

(declare-fun e!3012370 () Bool)

(assert (=> d!1543611 (=> res!2051915 e!3012370)))

(assert (=> d!1543611 (= res!2051915 (is-Nil!54915 (toList!7441 lm!2280)))))

(assert (=> d!1543611 (= (forall!12561 (toList!7441 lm!2280) lambda!235498) e!3012370)))

(declare-fun b!4821335 () Bool)

(declare-fun e!3012371 () Bool)

(assert (=> b!4821335 (= e!3012370 e!3012371)))

(declare-fun res!2051916 () Bool)

(assert (=> b!4821335 (=> (not res!2051916) (not e!3012371))))

(assert (=> b!4821335 (= res!2051916 (dynLambda!22190 lambda!235498 (h!61349 (toList!7441 lm!2280))))))

(declare-fun b!4821336 () Bool)

(assert (=> b!4821336 (= e!3012371 (forall!12561 (t!362535 (toList!7441 lm!2280)) lambda!235498))))

(assert (= (and d!1543611 (not res!2051915)) b!4821335))

(assert (= (and b!4821335 res!2051916) b!4821336))

(declare-fun b_lambda!189061 () Bool)

(assert (=> (not b_lambda!189061) (not b!4821335)))

(declare-fun m!5809036 () Bool)

(assert (=> b!4821335 m!5809036))

(declare-fun m!5809038 () Bool)

(assert (=> b!4821336 m!5809038))

(assert (=> d!1543455 d!1543611))

(declare-fun d!1543613 () Bool)

(declare-fun res!2051917 () Bool)

(declare-fun e!3012372 () Bool)

(assert (=> d!1543613 (=> res!2051917 e!3012372)))

(assert (=> d!1543613 (= res!2051917 (and (is-Cons!54914 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= (_1!32345 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) key!5428)))))

(assert (=> d!1543613 (= (containsKey!4323 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428) e!3012372)))

(declare-fun b!4821337 () Bool)

(declare-fun e!3012373 () Bool)

(assert (=> b!4821337 (= e!3012372 e!3012373)))

(declare-fun res!2051918 () Bool)

(assert (=> b!4821337 (=> (not res!2051918) (not e!3012373))))

(assert (=> b!4821337 (= res!2051918 (is-Cons!54914 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))))

(declare-fun b!4821338 () Bool)

(assert (=> b!4821338 (= e!3012373 (containsKey!4323 (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) key!5428))))

(assert (= (and d!1543613 (not res!2051917)) b!4821337))

(assert (= (and b!4821337 res!2051918) b!4821338))

(declare-fun m!5809040 () Bool)

(assert (=> b!4821338 m!5809040))

(assert (=> b!4821047 d!1543613))

(declare-fun d!1543615 () Bool)

(assert (=> d!1543615 (containsKey!4323 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428)))

(declare-fun lt!1969900 () Unit!142316)

(assert (=> d!1543615 (= lt!1969900 (choose!35009 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428))))

(assert (=> d!1543615 (invariantList!1799 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))))

(assert (=> d!1543615 (= (lemmaInGetKeysListThenContainsKey!1147 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428) lt!1969900)))

(declare-fun bs!1161842 () Bool)

(assert (= bs!1161842 d!1543615))

(assert (=> bs!1161842 m!5808514))

(declare-fun m!5809042 () Bool)

(assert (=> bs!1161842 m!5809042))

(assert (=> bs!1161842 m!5808736))

(assert (=> b!4821047 d!1543615))

(assert (=> b!4821118 d!1543539))

(declare-fun d!1543617 () Bool)

(declare-fun lt!1969901 () Bool)

(assert (=> d!1543617 (= lt!1969901 (set.member key!5428 (content!9808 (keys!20192 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))))))

(declare-fun e!3012375 () Bool)

(assert (=> d!1543617 (= lt!1969901 e!3012375)))

(declare-fun res!2051920 () Bool)

(assert (=> d!1543617 (=> (not res!2051920) (not e!3012375))))

(assert (=> d!1543617 (= res!2051920 (is-Cons!54918 (keys!20192 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))))

(assert (=> d!1543617 (= (contains!18724 (keys!20192 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)) key!5428) lt!1969901)))

(declare-fun b!4821339 () Bool)

(declare-fun e!3012374 () Bool)

(assert (=> b!4821339 (= e!3012375 e!3012374)))

(declare-fun res!2051919 () Bool)

(assert (=> b!4821339 (=> res!2051919 e!3012374)))

(assert (=> b!4821339 (= res!2051919 (= (h!61352 (keys!20192 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) key!5428))))

(declare-fun b!4821340 () Bool)

(assert (=> b!4821340 (= e!3012374 (contains!18724 (t!362538 (keys!20192 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) key!5428))))

(assert (= (and d!1543617 res!2051920) b!4821339))

(assert (= (and b!4821339 (not res!2051919)) b!4821340))

(assert (=> d!1543617 m!5808500))

(declare-fun m!5809044 () Bool)

(assert (=> d!1543617 m!5809044))

(declare-fun m!5809046 () Bool)

(assert (=> d!1543617 m!5809046))

(declare-fun m!5809048 () Bool)

(assert (=> b!4821340 m!5809048))

(assert (=> b!4821045 d!1543617))

(assert (=> b!4821045 d!1543553))

(declare-fun d!1543619 () Bool)

(declare-fun noDuplicatedKeys!468 (List!55038) Bool)

(assert (=> d!1543619 (= (invariantList!1799 (toList!7442 lt!1969553)) (noDuplicatedKeys!468 (toList!7442 lt!1969553)))))

(declare-fun bs!1161843 () Bool)

(assert (= bs!1161843 d!1543619))

(declare-fun m!5809050 () Bool)

(assert (=> bs!1161843 m!5809050))

(assert (=> d!1543447 d!1543619))

(declare-fun d!1543621 () Bool)

(declare-fun res!2051921 () Bool)

(declare-fun e!3012376 () Bool)

(assert (=> d!1543621 (=> res!2051921 e!3012376)))

(assert (=> d!1543621 (= res!2051921 (is-Nil!54915 (toList!7441 lt!1969509)))))

(assert (=> d!1543621 (= (forall!12561 (toList!7441 lt!1969509) lambda!235491) e!3012376)))

(declare-fun b!4821341 () Bool)

(declare-fun e!3012377 () Bool)

(assert (=> b!4821341 (= e!3012376 e!3012377)))

(declare-fun res!2051922 () Bool)

(assert (=> b!4821341 (=> (not res!2051922) (not e!3012377))))

(assert (=> b!4821341 (= res!2051922 (dynLambda!22190 lambda!235491 (h!61349 (toList!7441 lt!1969509))))))

(declare-fun b!4821342 () Bool)

(assert (=> b!4821342 (= e!3012377 (forall!12561 (t!362535 (toList!7441 lt!1969509)) lambda!235491))))

(assert (= (and d!1543621 (not res!2051921)) b!4821341))

(assert (= (and b!4821341 res!2051922) b!4821342))

(declare-fun b_lambda!189063 () Bool)

(assert (=> (not b_lambda!189063) (not b!4821341)))

(declare-fun m!5809052 () Bool)

(assert (=> b!4821341 m!5809052))

(declare-fun m!5809054 () Bool)

(assert (=> b!4821342 m!5809054))

(assert (=> d!1543447 d!1543621))

(declare-fun d!1543623 () Bool)

(declare-fun lt!1969902 () Bool)

(assert (=> d!1543623 (= lt!1969902 (set.member key!5428 (content!9808 e!3012183)))))

(declare-fun e!3012379 () Bool)

(assert (=> d!1543623 (= lt!1969902 e!3012379)))

(declare-fun res!2051924 () Bool)

(assert (=> d!1543623 (=> (not res!2051924) (not e!3012379))))

(assert (=> d!1543623 (= res!2051924 (is-Cons!54918 e!3012183))))

(assert (=> d!1543623 (= (contains!18724 e!3012183 key!5428) lt!1969902)))

(declare-fun b!4821343 () Bool)

(declare-fun e!3012378 () Bool)

(assert (=> b!4821343 (= e!3012379 e!3012378)))

(declare-fun res!2051923 () Bool)

(assert (=> b!4821343 (=> res!2051923 e!3012378)))

(assert (=> b!4821343 (= res!2051923 (= (h!61352 e!3012183) key!5428))))

(declare-fun b!4821344 () Bool)

(assert (=> b!4821344 (= e!3012378 (contains!18724 (t!362538 e!3012183) key!5428))))

(assert (= (and d!1543623 res!2051924) b!4821343))

(assert (= (and b!4821343 (not res!2051923)) b!4821344))

(declare-fun m!5809056 () Bool)

(assert (=> d!1543623 m!5809056))

(declare-fun m!5809058 () Bool)

(assert (=> d!1543623 m!5809058))

(declare-fun m!5809060 () Bool)

(assert (=> b!4821344 m!5809060))

(assert (=> bm!336101 d!1543623))

(declare-fun d!1543625 () Bool)

(assert (=> d!1543625 (= (isDefined!10582 (getValueByKey!2594 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428)) (not (isEmpty!29629 (getValueByKey!2594 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428))))))

(declare-fun bs!1161844 () Bool)

(assert (= bs!1161844 d!1543625))

(assert (=> bs!1161844 m!5808630))

(declare-fun m!5809062 () Bool)

(assert (=> bs!1161844 m!5809062))

(assert (=> b!4821115 d!1543625))

(declare-fun b!4821348 () Bool)

(declare-fun e!3012381 () Option!13467)

(assert (=> b!4821348 (= e!3012381 None!13466)))

(declare-fun b!4821347 () Bool)

(assert (=> b!4821347 (= e!3012381 (getValueByKey!2594 (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) key!5428))))

(declare-fun b!4821346 () Bool)

(declare-fun e!3012380 () Option!13467)

(assert (=> b!4821346 (= e!3012380 e!3012381)))

(declare-fun c!821569 () Bool)

(assert (=> b!4821346 (= c!821569 (and (is-Cons!54914 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (not (= (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) key!5428))))))

(declare-fun d!1543627 () Bool)

(declare-fun c!821568 () Bool)

(assert (=> d!1543627 (= c!821568 (and (is-Cons!54914 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= (_1!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) key!5428)))))

(assert (=> d!1543627 (= (getValueByKey!2594 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428) e!3012380)))

(declare-fun b!4821345 () Bool)

(assert (=> b!4821345 (= e!3012380 (Some!13466 (_2!32345 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))))))

(assert (= (and d!1543627 c!821568) b!4821345))

(assert (= (and d!1543627 (not c!821568)) b!4821346))

(assert (= (and b!4821346 c!821569) b!4821347))

(assert (= (and b!4821346 (not c!821569)) b!4821348))

(declare-fun m!5809064 () Bool)

(assert (=> b!4821347 m!5809064))

(assert (=> b!4821115 d!1543627))

(assert (=> b!4820969 d!1543551))

(declare-fun d!1543629 () Bool)

(assert (=> d!1543629 (containsKey!4323 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428)))

(declare-fun lt!1969903 () Unit!142316)

(assert (=> d!1543629 (= lt!1969903 (choose!35009 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428))))

(assert (=> d!1543629 (invariantList!1799 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))))

(assert (=> d!1543629 (= (lemmaInGetKeysListThenContainsKey!1147 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))) key!5428) lt!1969903)))

(declare-fun bs!1161845 () Bool)

(assert (= bs!1161845 d!1543629))

(assert (=> bs!1161845 m!5808406))

(declare-fun m!5809066 () Bool)

(assert (=> bs!1161845 m!5809066))

(assert (=> bs!1161845 m!5808834))

(assert (=> b!4820969 d!1543629))

(assert (=> d!1543503 d!1543471))

(assert (=> d!1543503 d!1543475))

(declare-fun d!1543631 () Bool)

(declare-fun e!3012384 () Bool)

(assert (=> d!1543631 (= (contains!18721 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508) key!5428) e!3012384)))

(declare-fun res!2051927 () Bool)

(assert (=> d!1543631 (=> res!2051927 e!3012384)))

(assert (=> d!1543631 (= res!2051927 (containsKey!4321 (_2!32346 (h!61349 (toList!7441 lm!2280))) key!5428))))

(assert (=> d!1543631 true))

(declare-fun _$29!778 () Unit!142316)

(assert (=> d!1543631 (= (choose!35006 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508 key!5428) _$29!778)))

(declare-fun b!4821351 () Bool)

(assert (=> b!4821351 (= e!3012384 (contains!18721 lt!1969508 key!5428))))

(assert (= (and d!1543631 (not res!2051927)) b!4821351))

(assert (=> d!1543631 m!5808312))

(assert (=> d!1543631 m!5808312))

(assert (=> d!1543631 m!5808314))

(assert (=> d!1543631 m!5808322))

(assert (=> b!4821351 m!5808332))

(assert (=> d!1543503 d!1543631))

(assert (=> d!1543503 d!1543477))

(assert (=> d!1543503 d!1543441))

(declare-fun d!1543633 () Bool)

(assert (=> d!1543633 (isDefined!10582 (getValueByKey!2594 (toList!7442 lt!1969508) key!5428))))

(declare-fun lt!1969904 () Unit!142316)

(assert (=> d!1543633 (= lt!1969904 (choose!35010 (toList!7442 lt!1969508) key!5428))))

(assert (=> d!1543633 (invariantList!1799 (toList!7442 lt!1969508))))

(assert (=> d!1543633 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2379 (toList!7442 lt!1969508) key!5428) lt!1969904)))

(declare-fun bs!1161846 () Bool)

(assert (= bs!1161846 d!1543633))

(assert (=> bs!1161846 m!5808444))

(assert (=> bs!1161846 m!5808444))

(assert (=> bs!1161846 m!5808446))

(declare-fun m!5809068 () Bool)

(assert (=> bs!1161846 m!5809068))

(declare-fun m!5809070 () Bool)

(assert (=> bs!1161846 m!5809070))

(assert (=> b!4821007 d!1543633))

(assert (=> b!4821007 d!1543599))

(assert (=> b!4821007 d!1543601))

(declare-fun d!1543635 () Bool)

(assert (=> d!1543635 (contains!18724 (getKeysList!1147 (toList!7442 lt!1969508)) key!5428)))

(declare-fun lt!1969905 () Unit!142316)

(assert (=> d!1543635 (= lt!1969905 (choose!35011 (toList!7442 lt!1969508) key!5428))))

(assert (=> d!1543635 (invariantList!1799 (toList!7442 lt!1969508))))

(assert (=> d!1543635 (= (lemmaInListThenGetKeysListContains!1142 (toList!7442 lt!1969508) key!5428) lt!1969905)))

(declare-fun bs!1161847 () Bool)

(assert (= bs!1161847 d!1543635))

(assert (=> bs!1161847 m!5808440))

(assert (=> bs!1161847 m!5808440))

(declare-fun m!5809072 () Bool)

(assert (=> bs!1161847 m!5809072))

(declare-fun m!5809074 () Bool)

(assert (=> bs!1161847 m!5809074))

(assert (=> bs!1161847 m!5809070))

(assert (=> b!4821007 d!1543635))

(assert (=> b!4820967 d!1543583))

(assert (=> b!4820967 d!1543585))

(assert (=> d!1543507 d!1543525))

(assert (=> b!4821042 d!1543617))

(assert (=> b!4821042 d!1543553))

(declare-fun d!1543637 () Bool)

(declare-fun res!2051928 () Bool)

(declare-fun e!3012385 () Bool)

(assert (=> d!1543637 (=> res!2051928 e!3012385)))

(assert (=> d!1543637 (= res!2051928 (and (is-Cons!54914 (t!362534 (apply!13330 lm!2280 lt!1969511))) (= (_1!32345 (h!61348 (t!362534 (apply!13330 lm!2280 lt!1969511)))) key!5428)))))

(assert (=> d!1543637 (= (containsKey!4321 (t!362534 (apply!13330 lm!2280 lt!1969511)) key!5428) e!3012385)))

(declare-fun b!4821352 () Bool)

(declare-fun e!3012386 () Bool)

(assert (=> b!4821352 (= e!3012385 e!3012386)))

(declare-fun res!2051929 () Bool)

(assert (=> b!4821352 (=> (not res!2051929) (not e!3012386))))

(assert (=> b!4821352 (= res!2051929 (is-Cons!54914 (t!362534 (apply!13330 lm!2280 lt!1969511))))))

(declare-fun b!4821353 () Bool)

(assert (=> b!4821353 (= e!3012386 (containsKey!4321 (t!362534 (t!362534 (apply!13330 lm!2280 lt!1969511))) key!5428))))

(assert (= (and d!1543637 (not res!2051928)) b!4821352))

(assert (= (and b!4821352 res!2051929) b!4821353))

(declare-fun m!5809076 () Bool)

(assert (=> b!4821353 m!5809076))

(assert (=> b!4821035 d!1543637))

(declare-fun d!1543639 () Bool)

(declare-fun res!2051934 () Bool)

(declare-fun e!3012391 () Bool)

(assert (=> d!1543639 (=> res!2051934 e!3012391)))

(assert (=> d!1543639 (= res!2051934 (or (is-Nil!54915 (toList!7441 lm!2280)) (is-Nil!54915 (t!362535 (toList!7441 lm!2280)))))))

(assert (=> d!1543639 (= (isStrictlySorted!970 (toList!7441 lm!2280)) e!3012391)))

(declare-fun b!4821358 () Bool)

(declare-fun e!3012392 () Bool)

(assert (=> b!4821358 (= e!3012391 e!3012392)))

(declare-fun res!2051935 () Bool)

(assert (=> b!4821358 (=> (not res!2051935) (not e!3012392))))

(assert (=> b!4821358 (= res!2051935 (bvslt (_1!32346 (h!61349 (toList!7441 lm!2280))) (_1!32346 (h!61349 (t!362535 (toList!7441 lm!2280))))))))

(declare-fun b!4821359 () Bool)

(assert (=> b!4821359 (= e!3012392 (isStrictlySorted!970 (t!362535 (toList!7441 lm!2280))))))

(assert (= (and d!1543639 (not res!2051934)) b!4821358))

(assert (= (and b!4821358 res!2051935) b!4821359))

(declare-fun m!5809078 () Bool)

(assert (=> b!4821359 m!5809078))

(assert (=> d!1543511 d!1543639))

(declare-fun d!1543641 () Bool)

(assert (=> d!1543641 (isDefined!10583 (getValueByKey!2595 (toList!7441 lm!2280) lt!1969511))))

(declare-fun lt!1969908 () Unit!142316)

(declare-fun choose!35017 (List!55039 (_ BitVec 64)) Unit!142316)

(assert (=> d!1543641 (= lt!1969908 (choose!35017 (toList!7441 lm!2280) lt!1969511))))

(declare-fun e!3012395 () Bool)

(assert (=> d!1543641 e!3012395))

(declare-fun res!2051938 () Bool)

(assert (=> d!1543641 (=> (not res!2051938) (not e!3012395))))

(assert (=> d!1543641 (= res!2051938 (isStrictlySorted!970 (toList!7441 lm!2280)))))

(assert (=> d!1543641 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2380 (toList!7441 lm!2280) lt!1969511) lt!1969908)))

(declare-fun b!4821362 () Bool)

(assert (=> b!4821362 (= e!3012395 (containsKey!4324 (toList!7441 lm!2280) lt!1969511))))

(assert (= (and d!1543641 res!2051938) b!4821362))

(assert (=> d!1543641 m!5808478))

(assert (=> d!1543641 m!5808478))

(assert (=> d!1543641 m!5808480))

(declare-fun m!5809080 () Bool)

(assert (=> d!1543641 m!5809080))

(assert (=> d!1543641 m!5808644))

(assert (=> b!4821362 m!5808474))

(assert (=> b!4821023 d!1543641))

(assert (=> b!4821023 d!1543563))

(assert (=> b!4821023 d!1543549))

(assert (=> b!4821041 d!1543531))

(assert (=> b!4821041 d!1543533))

(assert (=> b!4820966 d!1543585))

(assert (=> b!4821006 d!1543605))

(declare-fun d!1543643 () Bool)

(assert (=> d!1543643 (containsKey!4323 (toList!7442 lt!1969508) key!5428)))

(declare-fun lt!1969909 () Unit!142316)

(assert (=> d!1543643 (= lt!1969909 (choose!35009 (toList!7442 lt!1969508) key!5428))))

(assert (=> d!1543643 (invariantList!1799 (toList!7442 lt!1969508))))

(assert (=> d!1543643 (= (lemmaInGetKeysListThenContainsKey!1147 (toList!7442 lt!1969508) key!5428) lt!1969909)))

(declare-fun bs!1161848 () Bool)

(assert (= bs!1161848 d!1543643))

(assert (=> bs!1161848 m!5808450))

(declare-fun m!5809082 () Bool)

(assert (=> bs!1161848 m!5809082))

(assert (=> bs!1161848 m!5809070))

(assert (=> b!4821006 d!1543643))

(declare-fun d!1543645 () Bool)

(declare-fun lt!1969910 () Bool)

(assert (=> d!1543645 (= lt!1969910 (set.member key!5428 (content!9808 (keys!20192 lt!1969508))))))

(declare-fun e!3012397 () Bool)

(assert (=> d!1543645 (= lt!1969910 e!3012397)))

(declare-fun res!2051940 () Bool)

(assert (=> d!1543645 (=> (not res!2051940) (not e!3012397))))

(assert (=> d!1543645 (= res!2051940 (is-Cons!54918 (keys!20192 lt!1969508)))))

(assert (=> d!1543645 (= (contains!18724 (keys!20192 lt!1969508) key!5428) lt!1969910)))

(declare-fun b!4821363 () Bool)

(declare-fun e!3012396 () Bool)

(assert (=> b!4821363 (= e!3012397 e!3012396)))

(declare-fun res!2051939 () Bool)

(assert (=> b!4821363 (=> res!2051939 e!3012396)))

(assert (=> b!4821363 (= res!2051939 (= (h!61352 (keys!20192 lt!1969508)) key!5428))))

(declare-fun b!4821364 () Bool)

(assert (=> b!4821364 (= e!3012396 (contains!18724 (t!362538 (keys!20192 lt!1969508)) key!5428))))

(assert (= (and d!1543645 res!2051940) b!4821363))

(assert (= (and b!4821363 (not res!2051939)) b!4821364))

(assert (=> d!1543645 m!5808436))

(declare-fun m!5809084 () Bool)

(assert (=> d!1543645 m!5809084))

(declare-fun m!5809086 () Bool)

(assert (=> d!1543645 m!5809086))

(declare-fun m!5809088 () Bool)

(assert (=> b!4821364 m!5809088))

(assert (=> b!4821004 d!1543645))

(assert (=> b!4821004 d!1543579))

(declare-fun d!1543647 () Bool)

(declare-fun res!2051941 () Bool)

(declare-fun e!3012398 () Bool)

(assert (=> d!1543647 (=> res!2051941 e!3012398)))

(assert (=> d!1543647 (= res!2051941 (not (is-Cons!54914 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> d!1543647 (= (noDuplicateKeys!2435 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))) e!3012398)))

(declare-fun b!4821365 () Bool)

(declare-fun e!3012399 () Bool)

(assert (=> b!4821365 (= e!3012398 e!3012399)))

(declare-fun res!2051942 () Bool)

(assert (=> b!4821365 (=> (not res!2051942) (not e!3012399))))

(assert (=> b!4821365 (= res!2051942 (not (containsKey!4321 (t!362534 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (_1!32345 (h!61348 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))))

(declare-fun b!4821366 () Bool)

(assert (=> b!4821366 (= e!3012399 (noDuplicateKeys!2435 (t!362534 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (= (and d!1543647 (not res!2051941)) b!4821365))

(assert (= (and b!4821365 res!2051942) b!4821366))

(declare-fun m!5809090 () Bool)

(assert (=> b!4821365 m!5809090))

(declare-fun m!5809092 () Bool)

(assert (=> b!4821366 m!5809092))

(assert (=> b!4820943 d!1543647))

(assert (=> d!1543471 d!1543613))

(declare-fun d!1543649 () Bool)

(assert (=> d!1543649 (= (invariantList!1799 (toList!7442 lt!1969554)) (noDuplicatedKeys!468 (toList!7442 lt!1969554)))))

(declare-fun bs!1161849 () Bool)

(assert (= bs!1161849 d!1543649))

(declare-fun m!5809094 () Bool)

(assert (=> bs!1161849 m!5809094))

(assert (=> d!1543449 d!1543649))

(declare-fun d!1543651 () Bool)

(declare-fun res!2051943 () Bool)

(declare-fun e!3012400 () Bool)

(assert (=> d!1543651 (=> res!2051943 e!3012400)))

(assert (=> d!1543651 (= res!2051943 (is-Nil!54915 (t!362535 (toList!7441 lm!2280))))))

(assert (=> d!1543651 (= (forall!12561 (t!362535 (toList!7441 lm!2280)) lambda!235492) e!3012400)))

(declare-fun b!4821367 () Bool)

(declare-fun e!3012401 () Bool)

(assert (=> b!4821367 (= e!3012400 e!3012401)))

(declare-fun res!2051944 () Bool)

(assert (=> b!4821367 (=> (not res!2051944) (not e!3012401))))

(assert (=> b!4821367 (= res!2051944 (dynLambda!22190 lambda!235492 (h!61349 (t!362535 (toList!7441 lm!2280)))))))

(declare-fun b!4821368 () Bool)

(assert (=> b!4821368 (= e!3012401 (forall!12561 (t!362535 (t!362535 (toList!7441 lm!2280))) lambda!235492))))

(assert (= (and d!1543651 (not res!2051943)) b!4821367))

(assert (= (and b!4821367 res!2051944) b!4821368))

(declare-fun b_lambda!189065 () Bool)

(assert (=> (not b_lambda!189065) (not b!4821367)))

(declare-fun m!5809096 () Bool)

(assert (=> b!4821367 m!5809096))

(declare-fun m!5809098 () Bool)

(assert (=> b!4821368 m!5809098))

(assert (=> d!1543449 d!1543651))

(declare-fun d!1543653 () Bool)

(declare-fun res!2051945 () Bool)

(declare-fun e!3012402 () Bool)

(assert (=> d!1543653 (=> res!2051945 e!3012402)))

(assert (=> d!1543653 (= res!2051945 (and (is-Cons!54914 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (= (_1!32345 (h!61348 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) key!5428)))))

(assert (=> d!1543653 (= (containsKey!4321 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))) key!5428) e!3012402)))

(declare-fun b!4821369 () Bool)

(declare-fun e!3012403 () Bool)

(assert (=> b!4821369 (= e!3012402 e!3012403)))

(declare-fun res!2051946 () Bool)

(assert (=> b!4821369 (=> (not res!2051946) (not e!3012403))))

(assert (=> b!4821369 (= res!2051946 (is-Cons!54914 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(declare-fun b!4821370 () Bool)

(assert (=> b!4821370 (= e!3012403 (containsKey!4321 (t!362534 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))) key!5428))))

(assert (= (and d!1543653 (not res!2051945)) b!4821369))

(assert (= (and b!4821369 res!2051946) b!4821370))

(declare-fun m!5809100 () Bool)

(assert (=> b!4821370 m!5809100))

(assert (=> b!4821050 d!1543653))

(assert (=> b!4820963 d!1543557))

(assert (=> b!4820963 d!1543559))

(declare-fun d!1543655 () Bool)

(declare-fun lt!1969911 () Bool)

(assert (=> d!1543655 (= lt!1969911 (set.member key!5428 (content!9808 e!3012152)))))

(declare-fun e!3012405 () Bool)

(assert (=> d!1543655 (= lt!1969911 e!3012405)))

(declare-fun res!2051948 () Bool)

(assert (=> d!1543655 (=> (not res!2051948) (not e!3012405))))

(assert (=> d!1543655 (= res!2051948 (is-Cons!54918 e!3012152))))

(assert (=> d!1543655 (= (contains!18724 e!3012152 key!5428) lt!1969911)))

(declare-fun b!4821371 () Bool)

(declare-fun e!3012404 () Bool)

(assert (=> b!4821371 (= e!3012405 e!3012404)))

(declare-fun res!2051947 () Bool)

(assert (=> b!4821371 (=> res!2051947 e!3012404)))

(assert (=> b!4821371 (= res!2051947 (= (h!61352 e!3012152) key!5428))))

(declare-fun b!4821372 () Bool)

(assert (=> b!4821372 (= e!3012404 (contains!18724 (t!362538 e!3012152) key!5428))))

(assert (= (and d!1543655 res!2051948) b!4821371))

(assert (= (and b!4821371 (not res!2051947)) b!4821372))

(declare-fun m!5809102 () Bool)

(assert (=> d!1543655 m!5809102))

(declare-fun m!5809104 () Bool)

(assert (=> d!1543655 m!5809104))

(declare-fun m!5809106 () Bool)

(assert (=> b!4821372 m!5809106))

(assert (=> bm!336099 d!1543655))

(declare-fun d!1543657 () Bool)

(declare-fun res!2051949 () Bool)

(declare-fun e!3012406 () Bool)

(assert (=> d!1543657 (=> res!2051949 e!3012406)))

(assert (=> d!1543657 (= res!2051949 (is-Nil!54914 (ite c!821519 (toList!7442 lt!1969508) (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> d!1543657 (= (forall!12563 (ite c!821519 (toList!7442 lt!1969508) (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (ite c!821519 lambda!235538 lambda!235540)) e!3012406)))

(declare-fun b!4821373 () Bool)

(declare-fun e!3012407 () Bool)

(assert (=> b!4821373 (= e!3012406 e!3012407)))

(declare-fun res!2051950 () Bool)

(assert (=> b!4821373 (=> (not res!2051950) (not e!3012407))))

(assert (=> b!4821373 (= res!2051950 (dynLambda!22192 (ite c!821519 lambda!235538 lambda!235540) (h!61348 (ite c!821519 (toList!7442 lt!1969508) (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))))

(declare-fun b!4821374 () Bool)

(assert (=> b!4821374 (= e!3012407 (forall!12563 (t!362534 (ite c!821519 (toList!7442 lt!1969508) (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (ite c!821519 lambda!235538 lambda!235540)))))

(assert (= (and d!1543657 (not res!2051949)) b!4821373))

(assert (= (and b!4821373 res!2051950) b!4821374))

(declare-fun b_lambda!189067 () Bool)

(assert (=> (not b_lambda!189067) (not b!4821373)))

(declare-fun m!5809108 () Bool)

(assert (=> b!4821373 m!5809108))

(declare-fun m!5809110 () Bool)

(assert (=> b!4821374 m!5809110))

(assert (=> bm!336110 d!1543657))

(assert (=> b!4821001 d!1543645))

(assert (=> b!4821001 d!1543579))

(declare-fun b!4821375 () Bool)

(declare-fun e!3012408 () List!55042)

(assert (=> b!4821375 (= e!3012408 (getKeysList!1147 (toList!7442 lt!1969699)))))

(declare-fun b!4821376 () Bool)

(declare-fun e!3012412 () Bool)

(declare-fun e!3012411 () Bool)

(assert (=> b!4821376 (= e!3012412 e!3012411)))

(declare-fun res!2051953 () Bool)

(assert (=> b!4821376 (=> (not res!2051953) (not e!3012411))))

(assert (=> b!4821376 (= res!2051953 (isDefined!10582 (getValueByKey!2594 (toList!7442 lt!1969699) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))))

(declare-fun b!4821377 () Bool)

(assert (=> b!4821377 (= e!3012411 (contains!18724 (keys!20192 lt!1969699) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun b!4821378 () Bool)

(declare-fun e!3012410 () Unit!142316)

(declare-fun Unit!142409 () Unit!142316)

(assert (=> b!4821378 (= e!3012410 Unit!142409)))

(declare-fun bm!336130 () Bool)

(declare-fun call!336135 () Bool)

(assert (=> bm!336130 (= call!336135 (contains!18724 e!3012408 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun c!821571 () Bool)

(declare-fun c!821570 () Bool)

(assert (=> bm!336130 (= c!821571 c!821570)))

(declare-fun b!4821379 () Bool)

(assert (=> b!4821379 (= e!3012408 (keys!20192 lt!1969699))))

(declare-fun b!4821380 () Bool)

(declare-fun e!3012413 () Bool)

(assert (=> b!4821380 (= e!3012413 (not (contains!18724 (keys!20192 lt!1969699) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))))

(declare-fun d!1543659 () Bool)

(assert (=> d!1543659 e!3012412))

(declare-fun res!2051952 () Bool)

(assert (=> d!1543659 (=> res!2051952 e!3012412)))

(assert (=> d!1543659 (= res!2051952 e!3012413)))

(declare-fun res!2051951 () Bool)

(assert (=> d!1543659 (=> (not res!2051951) (not e!3012413))))

(declare-fun lt!1969913 () Bool)

(assert (=> d!1543659 (= res!2051951 (not lt!1969913))))

(declare-fun lt!1969918 () Bool)

(assert (=> d!1543659 (= lt!1969913 lt!1969918)))

(declare-fun lt!1969917 () Unit!142316)

(declare-fun e!3012409 () Unit!142316)

(assert (=> d!1543659 (= lt!1969917 e!3012409)))

(assert (=> d!1543659 (= c!821570 lt!1969918)))

(assert (=> d!1543659 (= lt!1969918 (containsKey!4323 (toList!7442 lt!1969699) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> d!1543659 (= (contains!18721 lt!1969699 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) lt!1969913)))

(declare-fun b!4821381 () Bool)

(assert (=> b!4821381 (= e!3012409 e!3012410)))

(declare-fun c!821572 () Bool)

(assert (=> b!4821381 (= c!821572 call!336135)))

(declare-fun b!4821382 () Bool)

(assert (=> b!4821382 false))

(declare-fun lt!1969914 () Unit!142316)

(declare-fun lt!1969919 () Unit!142316)

(assert (=> b!4821382 (= lt!1969914 lt!1969919)))

(assert (=> b!4821382 (containsKey!4323 (toList!7442 lt!1969699) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(assert (=> b!4821382 (= lt!1969919 (lemmaInGetKeysListThenContainsKey!1147 (toList!7442 lt!1969699) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun Unit!142410 () Unit!142316)

(assert (=> b!4821382 (= e!3012410 Unit!142410)))

(declare-fun b!4821383 () Bool)

(declare-fun lt!1969916 () Unit!142316)

(assert (=> b!4821383 (= e!3012409 lt!1969916)))

(declare-fun lt!1969912 () Unit!142316)

(assert (=> b!4821383 (= lt!1969912 (lemmaContainsKeyImpliesGetValueByKeyDefined!2379 (toList!7442 lt!1969699) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> b!4821383 (isDefined!10582 (getValueByKey!2594 (toList!7442 lt!1969699) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun lt!1969915 () Unit!142316)

(assert (=> b!4821383 (= lt!1969915 lt!1969912)))

(assert (=> b!4821383 (= lt!1969916 (lemmaInListThenGetKeysListContains!1142 (toList!7442 lt!1969699) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> b!4821383 call!336135))

(assert (= (and d!1543659 c!821570) b!4821383))

(assert (= (and d!1543659 (not c!821570)) b!4821381))

(assert (= (and b!4821381 c!821572) b!4821382))

(assert (= (and b!4821381 (not c!821572)) b!4821378))

(assert (= (or b!4821383 b!4821381) bm!336130))

(assert (= (and bm!336130 c!821571) b!4821375))

(assert (= (and bm!336130 (not c!821571)) b!4821379))

(assert (= (and d!1543659 res!2051951) b!4821380))

(assert (= (and d!1543659 (not res!2051952)) b!4821376))

(assert (= (and b!4821376 res!2051953) b!4821377))

(declare-fun m!5809112 () Bool)

(assert (=> bm!336130 m!5809112))

(declare-fun m!5809114 () Bool)

(assert (=> b!4821380 m!5809114))

(assert (=> b!4821380 m!5809114))

(declare-fun m!5809116 () Bool)

(assert (=> b!4821380 m!5809116))

(assert (=> b!4821379 m!5809114))

(declare-fun m!5809118 () Bool)

(assert (=> b!4821375 m!5809118))

(declare-fun m!5809120 () Bool)

(assert (=> b!4821383 m!5809120))

(declare-fun m!5809122 () Bool)

(assert (=> b!4821383 m!5809122))

(assert (=> b!4821383 m!5809122))

(declare-fun m!5809124 () Bool)

(assert (=> b!4821383 m!5809124))

(declare-fun m!5809126 () Bool)

(assert (=> b!4821383 m!5809126))

(assert (=> b!4821376 m!5809122))

(assert (=> b!4821376 m!5809122))

(assert (=> b!4821376 m!5809124))

(declare-fun m!5809128 () Bool)

(assert (=> d!1543659 m!5809128))

(assert (=> b!4821377 m!5809114))

(assert (=> b!4821377 m!5809114))

(assert (=> b!4821377 m!5809116))

(assert (=> b!4821382 m!5809128))

(declare-fun m!5809130 () Bool)

(assert (=> b!4821382 m!5809130))

(assert (=> b!4821103 d!1543659))

(declare-fun d!1543661 () Bool)

(declare-fun res!2051954 () Bool)

(declare-fun e!3012414 () Bool)

(assert (=> d!1543661 (=> res!2051954 e!3012414)))

(assert (=> d!1543661 (= res!2051954 (is-Nil!54914 (toList!7442 lt!1969508)))))

(assert (=> d!1543661 (= (forall!12563 (toList!7442 lt!1969508) lambda!235539) e!3012414)))

(declare-fun b!4821384 () Bool)

(declare-fun e!3012415 () Bool)

(assert (=> b!4821384 (= e!3012414 e!3012415)))

(declare-fun res!2051955 () Bool)

(assert (=> b!4821384 (=> (not res!2051955) (not e!3012415))))

(assert (=> b!4821384 (= res!2051955 (dynLambda!22192 lambda!235539 (h!61348 (toList!7442 lt!1969508))))))

(declare-fun b!4821385 () Bool)

(assert (=> b!4821385 (= e!3012415 (forall!12563 (t!362534 (toList!7442 lt!1969508)) lambda!235539))))

(assert (= (and d!1543661 (not res!2051954)) b!4821384))

(assert (= (and b!4821384 res!2051955) b!4821385))

(declare-fun b_lambda!189069 () Bool)

(assert (=> (not b_lambda!189069) (not b!4821384)))

(declare-fun m!5809132 () Bool)

(assert (=> b!4821384 m!5809132))

(declare-fun m!5809134 () Bool)

(assert (=> b!4821385 m!5809134))

(assert (=> b!4821103 d!1543661))

(declare-fun d!1543663 () Bool)

(declare-fun e!3012418 () Bool)

(assert (=> d!1543663 e!3012418))

(declare-fun res!2051961 () Bool)

(assert (=> d!1543663 (=> (not res!2051961) (not e!3012418))))

(declare-fun lt!1969928 () ListMap!6827)

(assert (=> d!1543663 (= res!2051961 (contains!18721 lt!1969928 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun lt!1969930 () List!55038)

(assert (=> d!1543663 (= lt!1969928 (ListMap!6828 lt!1969930))))

(declare-fun lt!1969931 () Unit!142316)

(declare-fun lt!1969929 () Unit!142316)

(assert (=> d!1543663 (= lt!1969931 lt!1969929)))

(assert (=> d!1543663 (= (getValueByKey!2594 lt!1969930 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (Some!13466 (_2!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun lemmaContainsTupThenGetReturnValue!1208 (List!55038 K!16597 V!16843) Unit!142316)

(assert (=> d!1543663 (= lt!1969929 (lemmaContainsTupThenGetReturnValue!1208 lt!1969930 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (_2!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun insertNoDuplicatedKeys!716 (List!55038 K!16597 V!16843) List!55038)

(assert (=> d!1543663 (= lt!1969930 (insertNoDuplicatedKeys!716 (toList!7442 lt!1969508) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (_2!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> d!1543663 (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969928)))

(declare-fun b!4821390 () Bool)

(declare-fun res!2051960 () Bool)

(assert (=> b!4821390 (=> (not res!2051960) (not e!3012418))))

(assert (=> b!4821390 (= res!2051960 (= (getValueByKey!2594 (toList!7442 lt!1969928) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (Some!13466 (_2!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))))

(declare-fun b!4821391 () Bool)

(declare-fun contains!18726 (List!55038 tuple2!58102) Bool)

(assert (=> b!4821391 (= e!3012418 (contains!18726 (toList!7442 lt!1969928) (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(assert (= (and d!1543663 res!2051961) b!4821390))

(assert (= (and b!4821390 res!2051960) b!4821391))

(declare-fun m!5809136 () Bool)

(assert (=> d!1543663 m!5809136))

(declare-fun m!5809138 () Bool)

(assert (=> d!1543663 m!5809138))

(declare-fun m!5809140 () Bool)

(assert (=> d!1543663 m!5809140))

(declare-fun m!5809142 () Bool)

(assert (=> d!1543663 m!5809142))

(declare-fun m!5809144 () Bool)

(assert (=> b!4821390 m!5809144))

(declare-fun m!5809146 () Bool)

(assert (=> b!4821391 m!5809146))

(assert (=> b!4821103 d!1543663))

(declare-fun bs!1161850 () Bool)

(declare-fun d!1543665 () Bool)

(assert (= bs!1161850 (and d!1543665 b!4821103)))

(declare-fun lambda!235624 () Int)

(assert (=> bs!1161850 (= lambda!235624 lambda!235540)))

(declare-fun bs!1161851 () Bool)

(assert (= bs!1161851 (and d!1543665 d!1543477)))

(assert (=> bs!1161851 (= (= lt!1969699 lt!1969700) (= lambda!235624 lambda!235541))))

(declare-fun bs!1161852 () Bool)

(assert (= bs!1161852 (and d!1543665 d!1543567)))

(assert (=> bs!1161852 (= (= lt!1969699 lt!1969877) (= lambda!235624 lambda!235603))))

(declare-fun bs!1161853 () Bool)

(assert (= bs!1161853 (and d!1543665 b!4821217)))

(assert (=> bs!1161853 (= (= lt!1969699 lt!1969830) (= lambda!235624 lambda!235583))))

(assert (=> bs!1161853 (= (= lt!1969699 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235624 lambda!235582))))

(declare-fun bs!1161854 () Bool)

(assert (= bs!1161854 (and d!1543665 b!4821105)))

(assert (=> bs!1161854 (= (= lt!1969699 lt!1969508) (= lambda!235624 lambda!235538))))

(declare-fun bs!1161855 () Bool)

(assert (= bs!1161855 (and d!1543665 b!4821276)))

(assert (=> bs!1161855 (= (= lt!1969699 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235624 lambda!235600))))

(assert (=> bs!1161850 (= (= lt!1969699 lt!1969508) (= lambda!235624 lambda!235539))))

(declare-fun bs!1161856 () Bool)

(assert (= bs!1161856 (and d!1543665 b!4821274)))

(assert (=> bs!1161856 (= (= lt!1969699 lt!1969876) (= lambda!235624 lambda!235602))))

(declare-fun bs!1161857 () Bool)

(assert (= bs!1161857 (and d!1543665 d!1543581)))

(assert (=> bs!1161857 (= (= lt!1969699 lt!1969508) (= lambda!235624 lambda!235613))))

(declare-fun bs!1161858 () Bool)

(assert (= bs!1161858 (and d!1543665 d!1543543)))

(assert (=> bs!1161858 (= (= lt!1969699 lt!1969831) (= lambda!235624 lambda!235584))))

(declare-fun bs!1161859 () Bool)

(assert (= bs!1161859 (and d!1543665 b!4821219)))

(assert (=> bs!1161859 (= (= lt!1969699 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235624 lambda!235581))))

(assert (=> bs!1161856 (= (= lt!1969699 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235624 lambda!235601))))

(assert (=> d!1543665 true))

(assert (=> d!1543665 (forall!12563 (toList!7442 lt!1969508) lambda!235624)))

(declare-fun lt!1969934 () Unit!142316)

(declare-fun choose!35019 (ListMap!6827 ListMap!6827 K!16597 V!16843) Unit!142316)

(assert (=> d!1543665 (= lt!1969934 (choose!35019 lt!1969508 lt!1969699 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (_2!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> d!1543665 (forall!12563 (toList!7442 (+!2524 lt!1969508 (tuple2!58103 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (_2!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))) lambda!235624)))

(assert (=> d!1543665 (= (addForallContainsKeyThenBeforeAdding!978 lt!1969508 lt!1969699 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (_2!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) lt!1969934)))

(declare-fun bs!1161860 () Bool)

(assert (= bs!1161860 d!1543665))

(declare-fun m!5809148 () Bool)

(assert (=> bs!1161860 m!5809148))

(declare-fun m!5809150 () Bool)

(assert (=> bs!1161860 m!5809150))

(declare-fun m!5809152 () Bool)

(assert (=> bs!1161860 m!5809152))

(declare-fun m!5809154 () Bool)

(assert (=> bs!1161860 m!5809154))

(assert (=> b!4821103 d!1543665))

(declare-fun d!1543667 () Bool)

(declare-fun res!2051962 () Bool)

(declare-fun e!3012419 () Bool)

(assert (=> d!1543667 (=> res!2051962 e!3012419)))

(assert (=> d!1543667 (= res!2051962 (is-Nil!54914 (toList!7442 lt!1969681)))))

(assert (=> d!1543667 (= (forall!12563 (toList!7442 lt!1969681) lambda!235540) e!3012419)))

(declare-fun b!4821393 () Bool)

(declare-fun e!3012420 () Bool)

(assert (=> b!4821393 (= e!3012419 e!3012420)))

(declare-fun res!2051963 () Bool)

(assert (=> b!4821393 (=> (not res!2051963) (not e!3012420))))

(assert (=> b!4821393 (= res!2051963 (dynLambda!22192 lambda!235540 (h!61348 (toList!7442 lt!1969681))))))

(declare-fun b!4821394 () Bool)

(assert (=> b!4821394 (= e!3012420 (forall!12563 (t!362534 (toList!7442 lt!1969681)) lambda!235540))))

(assert (= (and d!1543667 (not res!2051962)) b!4821393))

(assert (= (and b!4821393 res!2051963) b!4821394))

(declare-fun b_lambda!189071 () Bool)

(assert (=> (not b_lambda!189071) (not b!4821393)))

(declare-fun m!5809156 () Bool)

(assert (=> b!4821393 m!5809156))

(declare-fun m!5809158 () Bool)

(assert (=> b!4821394 m!5809158))

(assert (=> b!4821103 d!1543667))

(assert (=> b!4821103 d!1543593))

(declare-fun bs!1161861 () Bool)

(declare-fun b!4821399 () Bool)

(assert (= bs!1161861 (and b!4821399 b!4821103)))

(declare-fun lambda!235625 () Int)

(assert (=> bs!1161861 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969699) (= lambda!235625 lambda!235540))))

(declare-fun bs!1161862 () Bool)

(assert (= bs!1161862 (and b!4821399 d!1543477)))

(assert (=> bs!1161862 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969700) (= lambda!235625 lambda!235541))))

(declare-fun bs!1161863 () Bool)

(assert (= bs!1161863 (and b!4821399 d!1543567)))

(assert (=> bs!1161863 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969877) (= lambda!235625 lambda!235603))))

(declare-fun bs!1161864 () Bool)

(assert (= bs!1161864 (and b!4821399 b!4821217)))

(assert (=> bs!1161864 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969830) (= lambda!235625 lambda!235583))))

(assert (=> bs!1161864 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235625 lambda!235582))))

(declare-fun bs!1161865 () Bool)

(assert (= bs!1161865 (and b!4821399 d!1543665)))

(assert (=> bs!1161865 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969699) (= lambda!235625 lambda!235624))))

(declare-fun bs!1161866 () Bool)

(assert (= bs!1161866 (and b!4821399 b!4821105)))

(assert (=> bs!1161866 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969508) (= lambda!235625 lambda!235538))))

(declare-fun bs!1161867 () Bool)

(assert (= bs!1161867 (and b!4821399 b!4821276)))

(assert (=> bs!1161867 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235625 lambda!235600))))

(assert (=> bs!1161861 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969508) (= lambda!235625 lambda!235539))))

(declare-fun bs!1161868 () Bool)

(assert (= bs!1161868 (and b!4821399 b!4821274)))

(assert (=> bs!1161868 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969876) (= lambda!235625 lambda!235602))))

(declare-fun bs!1161869 () Bool)

(assert (= bs!1161869 (and b!4821399 d!1543581)))

(assert (=> bs!1161869 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969508) (= lambda!235625 lambda!235613))))

(declare-fun bs!1161870 () Bool)

(assert (= bs!1161870 (and b!4821399 d!1543543)))

(assert (=> bs!1161870 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969831) (= lambda!235625 lambda!235584))))

(declare-fun bs!1161871 () Bool)

(assert (= bs!1161871 (and b!4821399 b!4821219)))

(assert (=> bs!1161871 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235625 lambda!235581))))

(assert (=> bs!1161868 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235625 lambda!235601))))

(assert (=> b!4821399 true))

(declare-fun bs!1161872 () Bool)

(declare-fun b!4821397 () Bool)

(assert (= bs!1161872 (and b!4821397 b!4821103)))

(declare-fun lambda!235626 () Int)

(assert (=> bs!1161872 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969699) (= lambda!235626 lambda!235540))))

(declare-fun bs!1161873 () Bool)

(assert (= bs!1161873 (and b!4821397 d!1543477)))

(assert (=> bs!1161873 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969700) (= lambda!235626 lambda!235541))))

(declare-fun bs!1161874 () Bool)

(assert (= bs!1161874 (and b!4821397 d!1543567)))

(assert (=> bs!1161874 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969877) (= lambda!235626 lambda!235603))))

(declare-fun bs!1161875 () Bool)

(assert (= bs!1161875 (and b!4821397 b!4821217)))

(assert (=> bs!1161875 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969830) (= lambda!235626 lambda!235583))))

(assert (=> bs!1161875 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235626 lambda!235582))))

(declare-fun bs!1161876 () Bool)

(assert (= bs!1161876 (and b!4821397 d!1543665)))

(assert (=> bs!1161876 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969699) (= lambda!235626 lambda!235624))))

(declare-fun bs!1161877 () Bool)

(assert (= bs!1161877 (and b!4821397 b!4821105)))

(assert (=> bs!1161877 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969508) (= lambda!235626 lambda!235538))))

(declare-fun bs!1161878 () Bool)

(assert (= bs!1161878 (and b!4821397 b!4821399)))

(assert (=> bs!1161878 (= lambda!235626 lambda!235625)))

(declare-fun bs!1161879 () Bool)

(assert (= bs!1161879 (and b!4821397 b!4821276)))

(assert (=> bs!1161879 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235626 lambda!235600))))

(assert (=> bs!1161872 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969508) (= lambda!235626 lambda!235539))))

(declare-fun bs!1161880 () Bool)

(assert (= bs!1161880 (and b!4821397 b!4821274)))

(assert (=> bs!1161880 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969876) (= lambda!235626 lambda!235602))))

(declare-fun bs!1161881 () Bool)

(assert (= bs!1161881 (and b!4821397 d!1543581)))

(assert (=> bs!1161881 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969508) (= lambda!235626 lambda!235613))))

(declare-fun bs!1161882 () Bool)

(assert (= bs!1161882 (and b!4821397 d!1543543)))

(assert (=> bs!1161882 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969831) (= lambda!235626 lambda!235584))))

(declare-fun bs!1161883 () Bool)

(assert (= bs!1161883 (and b!4821397 b!4821219)))

(assert (=> bs!1161883 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235626 lambda!235581))))

(assert (=> bs!1161880 (= (= (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235626 lambda!235601))))

(assert (=> b!4821397 true))

(declare-fun lt!1969954 () ListMap!6827)

(declare-fun lambda!235627 () Int)

(assert (=> bs!1161872 (= (= lt!1969954 lt!1969699) (= lambda!235627 lambda!235540))))

(assert (=> b!4821397 (= (= lt!1969954 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (= lambda!235627 lambda!235626))))

(assert (=> bs!1161873 (= (= lt!1969954 lt!1969700) (= lambda!235627 lambda!235541))))

(assert (=> bs!1161874 (= (= lt!1969954 lt!1969877) (= lambda!235627 lambda!235603))))

(assert (=> bs!1161875 (= (= lt!1969954 lt!1969830) (= lambda!235627 lambda!235583))))

(assert (=> bs!1161875 (= (= lt!1969954 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235627 lambda!235582))))

(assert (=> bs!1161876 (= (= lt!1969954 lt!1969699) (= lambda!235627 lambda!235624))))

(assert (=> bs!1161877 (= (= lt!1969954 lt!1969508) (= lambda!235627 lambda!235538))))

(assert (=> bs!1161878 (= (= lt!1969954 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (= lambda!235627 lambda!235625))))

(assert (=> bs!1161879 (= (= lt!1969954 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235627 lambda!235600))))

(assert (=> bs!1161872 (= (= lt!1969954 lt!1969508) (= lambda!235627 lambda!235539))))

(assert (=> bs!1161880 (= (= lt!1969954 lt!1969876) (= lambda!235627 lambda!235602))))

(assert (=> bs!1161881 (= (= lt!1969954 lt!1969508) (= lambda!235627 lambda!235613))))

(assert (=> bs!1161882 (= (= lt!1969954 lt!1969831) (= lambda!235627 lambda!235584))))

(assert (=> bs!1161883 (= (= lt!1969954 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235627 lambda!235581))))

(assert (=> bs!1161880 (= (= lt!1969954 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235627 lambda!235601))))

(assert (=> b!4821397 true))

(declare-fun bs!1161884 () Bool)

(declare-fun d!1543669 () Bool)

(assert (= bs!1161884 (and d!1543669 b!4821397)))

(declare-fun lambda!235628 () Int)

(declare-fun lt!1969955 () ListMap!6827)

(assert (=> bs!1161884 (= (= lt!1969955 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (= lambda!235628 lambda!235626))))

(declare-fun bs!1161885 () Bool)

(assert (= bs!1161885 (and d!1543669 d!1543477)))

(assert (=> bs!1161885 (= (= lt!1969955 lt!1969700) (= lambda!235628 lambda!235541))))

(declare-fun bs!1161886 () Bool)

(assert (= bs!1161886 (and d!1543669 d!1543567)))

(assert (=> bs!1161886 (= (= lt!1969955 lt!1969877) (= lambda!235628 lambda!235603))))

(declare-fun bs!1161887 () Bool)

(assert (= bs!1161887 (and d!1543669 b!4821217)))

(assert (=> bs!1161887 (= (= lt!1969955 lt!1969830) (= lambda!235628 lambda!235583))))

(assert (=> bs!1161887 (= (= lt!1969955 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235628 lambda!235582))))

(declare-fun bs!1161888 () Bool)

(assert (= bs!1161888 (and d!1543669 d!1543665)))

(assert (=> bs!1161888 (= (= lt!1969955 lt!1969699) (= lambda!235628 lambda!235624))))

(declare-fun bs!1161889 () Bool)

(assert (= bs!1161889 (and d!1543669 b!4821105)))

(assert (=> bs!1161889 (= (= lt!1969955 lt!1969508) (= lambda!235628 lambda!235538))))

(declare-fun bs!1161890 () Bool)

(assert (= bs!1161890 (and d!1543669 b!4821399)))

(assert (=> bs!1161890 (= (= lt!1969955 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (= lambda!235628 lambda!235625))))

(declare-fun bs!1161891 () Bool)

(assert (= bs!1161891 (and d!1543669 b!4821103)))

(assert (=> bs!1161891 (= (= lt!1969955 lt!1969699) (= lambda!235628 lambda!235540))))

(assert (=> bs!1161884 (= (= lt!1969955 lt!1969954) (= lambda!235628 lambda!235627))))

(declare-fun bs!1161892 () Bool)

(assert (= bs!1161892 (and d!1543669 b!4821276)))

(assert (=> bs!1161892 (= (= lt!1969955 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235628 lambda!235600))))

(assert (=> bs!1161891 (= (= lt!1969955 lt!1969508) (= lambda!235628 lambda!235539))))

(declare-fun bs!1161893 () Bool)

(assert (= bs!1161893 (and d!1543669 b!4821274)))

(assert (=> bs!1161893 (= (= lt!1969955 lt!1969876) (= lambda!235628 lambda!235602))))

(declare-fun bs!1161894 () Bool)

(assert (= bs!1161894 (and d!1543669 d!1543581)))

(assert (=> bs!1161894 (= (= lt!1969955 lt!1969508) (= lambda!235628 lambda!235613))))

(declare-fun bs!1161895 () Bool)

(assert (= bs!1161895 (and d!1543669 d!1543543)))

(assert (=> bs!1161895 (= (= lt!1969955 lt!1969831) (= lambda!235628 lambda!235584))))

(declare-fun bs!1161896 () Bool)

(assert (= bs!1161896 (and d!1543669 b!4821219)))

(assert (=> bs!1161896 (= (= lt!1969955 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235628 lambda!235581))))

(assert (=> bs!1161893 (= (= lt!1969955 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235628 lambda!235601))))

(assert (=> d!1543669 true))

(declare-fun b!4821395 () Bool)

(declare-fun res!2051966 () Bool)

(declare-fun e!3012422 () Bool)

(assert (=> b!4821395 (=> (not res!2051966) (not e!3012422))))

(assert (=> b!4821395 (= res!2051966 (forall!12563 (toList!7442 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) lambda!235628))))

(declare-fun b!4821396 () Bool)

(assert (=> b!4821396 (= e!3012422 (invariantList!1799 (toList!7442 lt!1969955)))))

(declare-fun bm!336131 () Bool)

(declare-fun c!821573 () Bool)

(declare-fun call!336137 () Bool)

(assert (=> bm!336131 (= call!336137 (forall!12563 (ite c!821573 (toList!7442 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (ite c!821573 lambda!235625 lambda!235627)))))

(declare-fun e!3012423 () ListMap!6827)

(assert (=> b!4821397 (= e!3012423 lt!1969954)))

(declare-fun lt!1969936 () ListMap!6827)

(assert (=> b!4821397 (= lt!1969936 (+!2524 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (h!61348 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> b!4821397 (= lt!1969954 (addToMapMapFromBucket!1784 (t!362534 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (+!2524 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (h!61348 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))))

(declare-fun lt!1969953 () Unit!142316)

(declare-fun call!336136 () Unit!142316)

(assert (=> b!4821397 (= lt!1969953 call!336136)))

(assert (=> b!4821397 (forall!12563 (toList!7442 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) lambda!235626)))

(declare-fun lt!1969941 () Unit!142316)

(assert (=> b!4821397 (= lt!1969941 lt!1969953)))

(assert (=> b!4821397 (forall!12563 (toList!7442 lt!1969936) lambda!235627)))

(declare-fun lt!1969940 () Unit!142316)

(declare-fun Unit!142411 () Unit!142316)

(assert (=> b!4821397 (= lt!1969940 Unit!142411)))

(declare-fun call!336138 () Bool)

(assert (=> b!4821397 call!336138))

(declare-fun lt!1969946 () Unit!142316)

(declare-fun Unit!142412 () Unit!142316)

(assert (=> b!4821397 (= lt!1969946 Unit!142412)))

(declare-fun lt!1969951 () Unit!142316)

(declare-fun Unit!142413 () Unit!142316)

(assert (=> b!4821397 (= lt!1969951 Unit!142413)))

(declare-fun lt!1969939 () Unit!142316)

(assert (=> b!4821397 (= lt!1969939 (forallContained!4361 (toList!7442 lt!1969936) lambda!235627 (h!61348 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> b!4821397 (contains!18721 lt!1969936 (_1!32345 (h!61348 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun lt!1969950 () Unit!142316)

(declare-fun Unit!142414 () Unit!142316)

(assert (=> b!4821397 (= lt!1969950 Unit!142414)))

(assert (=> b!4821397 (contains!18721 lt!1969954 (_1!32345 (h!61348 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun lt!1969942 () Unit!142316)

(declare-fun Unit!142415 () Unit!142316)

(assert (=> b!4821397 (= lt!1969942 Unit!142415)))

(assert (=> b!4821397 call!336137))

(declare-fun lt!1969948 () Unit!142316)

(declare-fun Unit!142416 () Unit!142316)

(assert (=> b!4821397 (= lt!1969948 Unit!142416)))

(assert (=> b!4821397 (forall!12563 (toList!7442 lt!1969936) lambda!235627)))

(declare-fun lt!1969935 () Unit!142316)

(declare-fun Unit!142417 () Unit!142316)

(assert (=> b!4821397 (= lt!1969935 Unit!142417)))

(declare-fun lt!1969944 () Unit!142316)

(declare-fun Unit!142418 () Unit!142316)

(assert (=> b!4821397 (= lt!1969944 Unit!142418)))

(declare-fun lt!1969945 () Unit!142316)

(assert (=> b!4821397 (= lt!1969945 (addForallContainsKeyThenBeforeAdding!978 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969954 (_1!32345 (h!61348 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (_2!32345 (h!61348 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))))

(assert (=> b!4821397 (forall!12563 (toList!7442 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) lambda!235627)))

(declare-fun lt!1969952 () Unit!142316)

(assert (=> b!4821397 (= lt!1969952 lt!1969945)))

(assert (=> b!4821397 (forall!12563 (toList!7442 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) lambda!235627)))

(declare-fun lt!1969943 () Unit!142316)

(declare-fun Unit!142419 () Unit!142316)

(assert (=> b!4821397 (= lt!1969943 Unit!142419)))

(declare-fun res!2051965 () Bool)

(assert (=> b!4821397 (= res!2051965 (forall!12563 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))) lambda!235627))))

(declare-fun e!3012421 () Bool)

(assert (=> b!4821397 (=> (not res!2051965) (not e!3012421))))

(assert (=> b!4821397 e!3012421))

(declare-fun lt!1969949 () Unit!142316)

(declare-fun Unit!142420 () Unit!142316)

(assert (=> b!4821397 (= lt!1969949 Unit!142420)))

(declare-fun b!4821398 () Bool)

(assert (=> b!4821398 (= e!3012421 (forall!12563 (toList!7442 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) lambda!235627))))

(declare-fun bm!336132 () Bool)

(assert (=> bm!336132 (= call!336138 (forall!12563 (ite c!821573 (toList!7442 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (t!362534 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (ite c!821573 lambda!235625 lambda!235627)))))

(assert (=> d!1543669 e!3012422))

(declare-fun res!2051964 () Bool)

(assert (=> d!1543669 (=> (not res!2051964) (not e!3012422))))

(assert (=> d!1543669 (= res!2051964 (forall!12563 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))) lambda!235628))))

(assert (=> d!1543669 (= lt!1969955 e!3012423)))

(assert (=> d!1543669 (= c!821573 (is-Nil!54914 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(assert (=> d!1543669 (noDuplicateKeys!2435 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))

(assert (=> d!1543669 (= (addToMapMapFromBucket!1784 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))) (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) lt!1969955)))

(declare-fun bm!336133 () Bool)

(assert (=> bm!336133 (= call!336136 (lemmaContainsAllItsOwnKeys!979 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> b!4821399 (= e!3012423 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(declare-fun lt!1969947 () Unit!142316)

(assert (=> b!4821399 (= lt!1969947 call!336136)))

(assert (=> b!4821399 call!336137))

(declare-fun lt!1969937 () Unit!142316)

(assert (=> b!4821399 (= lt!1969937 lt!1969947)))

(assert (=> b!4821399 call!336138))

(declare-fun lt!1969938 () Unit!142316)

(declare-fun Unit!142422 () Unit!142316)

(assert (=> b!4821399 (= lt!1969938 Unit!142422)))

(assert (= (and d!1543669 c!821573) b!4821399))

(assert (= (and d!1543669 (not c!821573)) b!4821397))

(assert (= (and b!4821397 res!2051965) b!4821398))

(assert (= (or b!4821399 b!4821397) bm!336131))

(assert (= (or b!4821399 b!4821397) bm!336132))

(assert (= (or b!4821399 b!4821397) bm!336133))

(assert (= (and d!1543669 res!2051964) b!4821395))

(assert (= (and b!4821395 res!2051966) b!4821396))

(declare-fun m!5809160 () Bool)

(assert (=> b!4821397 m!5809160))

(declare-fun m!5809162 () Bool)

(assert (=> b!4821397 m!5809162))

(declare-fun m!5809164 () Bool)

(assert (=> b!4821397 m!5809164))

(assert (=> b!4821397 m!5808600))

(declare-fun m!5809166 () Bool)

(assert (=> b!4821397 m!5809166))

(declare-fun m!5809168 () Bool)

(assert (=> b!4821397 m!5809168))

(assert (=> b!4821397 m!5809160))

(declare-fun m!5809170 () Bool)

(assert (=> b!4821397 m!5809170))

(declare-fun m!5809172 () Bool)

(assert (=> b!4821397 m!5809172))

(assert (=> b!4821397 m!5809172))

(declare-fun m!5809174 () Bool)

(assert (=> b!4821397 m!5809174))

(declare-fun m!5809176 () Bool)

(assert (=> b!4821397 m!5809176))

(declare-fun m!5809178 () Bool)

(assert (=> b!4821397 m!5809178))

(assert (=> b!4821397 m!5808600))

(assert (=> b!4821397 m!5809176))

(declare-fun m!5809180 () Bool)

(assert (=> bm!336132 m!5809180))

(assert (=> b!4821398 m!5809160))

(assert (=> bm!336133 m!5808600))

(declare-fun m!5809182 () Bool)

(assert (=> bm!336133 m!5809182))

(declare-fun m!5809184 () Bool)

(assert (=> bm!336131 m!5809184))

(declare-fun m!5809186 () Bool)

(assert (=> b!4821395 m!5809186))

(declare-fun m!5809188 () Bool)

(assert (=> d!1543669 m!5809188))

(assert (=> d!1543669 m!5808388))

(declare-fun m!5809190 () Bool)

(assert (=> b!4821396 m!5809190))

(assert (=> b!4821103 d!1543669))

(declare-fun b!4821400 () Bool)

(declare-fun e!3012424 () List!55042)

(assert (=> b!4821400 (= e!3012424 (getKeysList!1147 (toList!7442 lt!1969681)))))

(declare-fun b!4821401 () Bool)

(declare-fun e!3012428 () Bool)

(declare-fun e!3012427 () Bool)

(assert (=> b!4821401 (= e!3012428 e!3012427)))

(declare-fun res!2051969 () Bool)

(assert (=> b!4821401 (=> (not res!2051969) (not e!3012427))))

(assert (=> b!4821401 (= res!2051969 (isDefined!10582 (getValueByKey!2594 (toList!7442 lt!1969681) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))))

(declare-fun b!4821402 () Bool)

(assert (=> b!4821402 (= e!3012427 (contains!18724 (keys!20192 lt!1969681) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun b!4821403 () Bool)

(declare-fun e!3012426 () Unit!142316)

(declare-fun Unit!142426 () Unit!142316)

(assert (=> b!4821403 (= e!3012426 Unit!142426)))

(declare-fun bm!336134 () Bool)

(declare-fun call!336139 () Bool)

(assert (=> bm!336134 (= call!336139 (contains!18724 e!3012424 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun c!821575 () Bool)

(declare-fun c!821574 () Bool)

(assert (=> bm!336134 (= c!821575 c!821574)))

(declare-fun b!4821404 () Bool)

(assert (=> b!4821404 (= e!3012424 (keys!20192 lt!1969681))))

(declare-fun b!4821405 () Bool)

(declare-fun e!3012429 () Bool)

(assert (=> b!4821405 (= e!3012429 (not (contains!18724 (keys!20192 lt!1969681) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))))

(declare-fun d!1543673 () Bool)

(assert (=> d!1543673 e!3012428))

(declare-fun res!2051968 () Bool)

(assert (=> d!1543673 (=> res!2051968 e!3012428)))

(assert (=> d!1543673 (= res!2051968 e!3012429)))

(declare-fun res!2051967 () Bool)

(assert (=> d!1543673 (=> (not res!2051967) (not e!3012429))))

(declare-fun lt!1969957 () Bool)

(assert (=> d!1543673 (= res!2051967 (not lt!1969957))))

(declare-fun lt!1969962 () Bool)

(assert (=> d!1543673 (= lt!1969957 lt!1969962)))

(declare-fun lt!1969961 () Unit!142316)

(declare-fun e!3012425 () Unit!142316)

(assert (=> d!1543673 (= lt!1969961 e!3012425)))

(assert (=> d!1543673 (= c!821574 lt!1969962)))

(assert (=> d!1543673 (= lt!1969962 (containsKey!4323 (toList!7442 lt!1969681) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> d!1543673 (= (contains!18721 lt!1969681 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) lt!1969957)))

(declare-fun b!4821406 () Bool)

(assert (=> b!4821406 (= e!3012425 e!3012426)))

(declare-fun c!821576 () Bool)

(assert (=> b!4821406 (= c!821576 call!336139)))

(declare-fun b!4821407 () Bool)

(assert (=> b!4821407 false))

(declare-fun lt!1969958 () Unit!142316)

(declare-fun lt!1969963 () Unit!142316)

(assert (=> b!4821407 (= lt!1969958 lt!1969963)))

(assert (=> b!4821407 (containsKey!4323 (toList!7442 lt!1969681) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(assert (=> b!4821407 (= lt!1969963 (lemmaInGetKeysListThenContainsKey!1147 (toList!7442 lt!1969681) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun Unit!142427 () Unit!142316)

(assert (=> b!4821407 (= e!3012426 Unit!142427)))

(declare-fun b!4821408 () Bool)

(declare-fun lt!1969960 () Unit!142316)

(assert (=> b!4821408 (= e!3012425 lt!1969960)))

(declare-fun lt!1969956 () Unit!142316)

(assert (=> b!4821408 (= lt!1969956 (lemmaContainsKeyImpliesGetValueByKeyDefined!2379 (toList!7442 lt!1969681) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> b!4821408 (isDefined!10582 (getValueByKey!2594 (toList!7442 lt!1969681) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun lt!1969959 () Unit!142316)

(assert (=> b!4821408 (= lt!1969959 lt!1969956)))

(assert (=> b!4821408 (= lt!1969960 (lemmaInListThenGetKeysListContains!1142 (toList!7442 lt!1969681) (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> b!4821408 call!336139))

(assert (= (and d!1543673 c!821574) b!4821408))

(assert (= (and d!1543673 (not c!821574)) b!4821406))

(assert (= (and b!4821406 c!821576) b!4821407))

(assert (= (and b!4821406 (not c!821576)) b!4821403))

(assert (= (or b!4821408 b!4821406) bm!336134))

(assert (= (and bm!336134 c!821575) b!4821400))

(assert (= (and bm!336134 (not c!821575)) b!4821404))

(assert (= (and d!1543673 res!2051967) b!4821405))

(assert (= (and d!1543673 (not res!2051968)) b!4821401))

(assert (= (and b!4821401 res!2051969) b!4821402))

(declare-fun m!5809192 () Bool)

(assert (=> bm!336134 m!5809192))

(declare-fun m!5809194 () Bool)

(assert (=> b!4821405 m!5809194))

(assert (=> b!4821405 m!5809194))

(declare-fun m!5809196 () Bool)

(assert (=> b!4821405 m!5809196))

(assert (=> b!4821404 m!5809194))

(declare-fun m!5809198 () Bool)

(assert (=> b!4821400 m!5809198))

(declare-fun m!5809200 () Bool)

(assert (=> b!4821408 m!5809200))

(declare-fun m!5809202 () Bool)

(assert (=> b!4821408 m!5809202))

(assert (=> b!4821408 m!5809202))

(declare-fun m!5809204 () Bool)

(assert (=> b!4821408 m!5809204))

(declare-fun m!5809206 () Bool)

(assert (=> b!4821408 m!5809206))

(assert (=> b!4821401 m!5809202))

(assert (=> b!4821401 m!5809202))

(assert (=> b!4821401 m!5809204))

(declare-fun m!5809208 () Bool)

(assert (=> d!1543673 m!5809208))

(assert (=> b!4821402 m!5809194))

(assert (=> b!4821402 m!5809194))

(assert (=> b!4821402 m!5809196))

(assert (=> b!4821407 m!5809208))

(declare-fun m!5809210 () Bool)

(assert (=> b!4821407 m!5809210))

(assert (=> b!4821103 d!1543673))

(declare-fun d!1543675 () Bool)

(assert (=> d!1543675 (dynLambda!22192 lambda!235540 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))

(declare-fun lt!1969966 () Unit!142316)

(declare-fun choose!35020 (List!55038 Int tuple2!58102) Unit!142316)

(assert (=> d!1543675 (= lt!1969966 (choose!35020 (toList!7442 lt!1969681) lambda!235540 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(declare-fun e!3012432 () Bool)

(assert (=> d!1543675 e!3012432))

(declare-fun res!2051972 () Bool)

(assert (=> d!1543675 (=> (not res!2051972) (not e!3012432))))

(assert (=> d!1543675 (= res!2051972 (forall!12563 (toList!7442 lt!1969681) lambda!235540))))

(assert (=> d!1543675 (= (forallContained!4361 (toList!7442 lt!1969681) lambda!235540 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) lt!1969966)))

(declare-fun b!4821411 () Bool)

(assert (=> b!4821411 (= e!3012432 (contains!18726 (toList!7442 lt!1969681) (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(assert (= (and d!1543675 res!2051972) b!4821411))

(declare-fun b_lambda!189073 () Bool)

(assert (=> (not b_lambda!189073) (not d!1543675)))

(declare-fun m!5809212 () Bool)

(assert (=> d!1543675 m!5809212))

(declare-fun m!5809214 () Bool)

(assert (=> d!1543675 m!5809214))

(assert (=> d!1543675 m!5808596))

(declare-fun m!5809216 () Bool)

(assert (=> b!4821411 m!5809216))

(assert (=> b!4821103 d!1543675))

(declare-fun d!1543677 () Bool)

(declare-fun res!2051973 () Bool)

(declare-fun e!3012433 () Bool)

(assert (=> d!1543677 (=> res!2051973 e!3012433)))

(assert (=> d!1543677 (= res!2051973 (is-Nil!54914 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))

(assert (=> d!1543677 (= (forall!12563 (_2!32346 (h!61349 (toList!7441 lm!2280))) lambda!235540) e!3012433)))

(declare-fun b!4821412 () Bool)

(declare-fun e!3012434 () Bool)

(assert (=> b!4821412 (= e!3012433 e!3012434)))

(declare-fun res!2051974 () Bool)

(assert (=> b!4821412 (=> (not res!2051974) (not e!3012434))))

(assert (=> b!4821412 (= res!2051974 (dynLambda!22192 lambda!235540 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(declare-fun b!4821413 () Bool)

(assert (=> b!4821413 (= e!3012434 (forall!12563 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))) lambda!235540))))

(assert (= (and d!1543677 (not res!2051973)) b!4821412))

(assert (= (and b!4821412 res!2051974) b!4821413))

(declare-fun b_lambda!189075 () Bool)

(assert (=> (not b_lambda!189075) (not b!4821412)))

(assert (=> b!4821412 m!5809212))

(declare-fun m!5809218 () Bool)

(assert (=> b!4821413 m!5809218))

(assert (=> b!4821103 d!1543677))

(declare-fun bs!1161897 () Bool)

(declare-fun b!4821418 () Bool)

(assert (= bs!1161897 (and b!4821418 b!4821397)))

(declare-fun lambda!235629 () Int)

(assert (=> bs!1161897 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (= lambda!235629 lambda!235626))))

(declare-fun bs!1161898 () Bool)

(assert (= bs!1161898 (and b!4821418 d!1543477)))

(assert (=> bs!1161898 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969700) (= lambda!235629 lambda!235541))))

(declare-fun bs!1161899 () Bool)

(assert (= bs!1161899 (and b!4821418 d!1543567)))

(assert (=> bs!1161899 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969877) (= lambda!235629 lambda!235603))))

(declare-fun bs!1161900 () Bool)

(assert (= bs!1161900 (and b!4821418 b!4821217)))

(assert (=> bs!1161900 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969830) (= lambda!235629 lambda!235583))))

(assert (=> bs!1161900 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235629 lambda!235582))))

(declare-fun bs!1161901 () Bool)

(assert (= bs!1161901 (and b!4821418 d!1543665)))

(assert (=> bs!1161901 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969699) (= lambda!235629 lambda!235624))))

(declare-fun bs!1161902 () Bool)

(assert (= bs!1161902 (and b!4821418 b!4821105)))

(assert (=> bs!1161902 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969508) (= lambda!235629 lambda!235538))))

(declare-fun bs!1161903 () Bool)

(assert (= bs!1161903 (and b!4821418 d!1543669)))

(assert (=> bs!1161903 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969955) (= lambda!235629 lambda!235628))))

(declare-fun bs!1161904 () Bool)

(assert (= bs!1161904 (and b!4821418 b!4821399)))

(assert (=> bs!1161904 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (= lambda!235629 lambda!235625))))

(declare-fun bs!1161905 () Bool)

(assert (= bs!1161905 (and b!4821418 b!4821103)))

(assert (=> bs!1161905 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969699) (= lambda!235629 lambda!235540))))

(assert (=> bs!1161897 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969954) (= lambda!235629 lambda!235627))))

(declare-fun bs!1161906 () Bool)

(assert (= bs!1161906 (and b!4821418 b!4821276)))

(assert (=> bs!1161906 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235629 lambda!235600))))

(assert (=> bs!1161905 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969508) (= lambda!235629 lambda!235539))))

(declare-fun bs!1161907 () Bool)

(assert (= bs!1161907 (and b!4821418 b!4821274)))

(assert (=> bs!1161907 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969876) (= lambda!235629 lambda!235602))))

(declare-fun bs!1161908 () Bool)

(assert (= bs!1161908 (and b!4821418 d!1543581)))

(assert (=> bs!1161908 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969508) (= lambda!235629 lambda!235613))))

(declare-fun bs!1161909 () Bool)

(assert (= bs!1161909 (and b!4821418 d!1543543)))

(assert (=> bs!1161909 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969831) (= lambda!235629 lambda!235584))))

(declare-fun bs!1161910 () Bool)

(assert (= bs!1161910 (and b!4821418 b!4821219)))

(assert (=> bs!1161910 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235629 lambda!235581))))

(assert (=> bs!1161907 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235629 lambda!235601))))

(assert (=> b!4821418 true))

(declare-fun bs!1161911 () Bool)

(declare-fun b!4821416 () Bool)

(assert (= bs!1161911 (and b!4821416 b!4821397)))

(declare-fun lambda!235630 () Int)

(assert (=> bs!1161911 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (= lambda!235630 lambda!235626))))

(declare-fun bs!1161912 () Bool)

(assert (= bs!1161912 (and b!4821416 d!1543477)))

(assert (=> bs!1161912 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969700) (= lambda!235630 lambda!235541))))

(declare-fun bs!1161913 () Bool)

(assert (= bs!1161913 (and b!4821416 d!1543567)))

(assert (=> bs!1161913 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969877) (= lambda!235630 lambda!235603))))

(declare-fun bs!1161914 () Bool)

(assert (= bs!1161914 (and b!4821416 b!4821217)))

(assert (=> bs!1161914 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969830) (= lambda!235630 lambda!235583))))

(assert (=> bs!1161914 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235630 lambda!235582))))

(declare-fun bs!1161915 () Bool)

(assert (= bs!1161915 (and b!4821416 b!4821105)))

(assert (=> bs!1161915 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969508) (= lambda!235630 lambda!235538))))

(declare-fun bs!1161916 () Bool)

(assert (= bs!1161916 (and b!4821416 d!1543669)))

(assert (=> bs!1161916 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969955) (= lambda!235630 lambda!235628))))

(declare-fun bs!1161917 () Bool)

(assert (= bs!1161917 (and b!4821416 b!4821399)))

(assert (=> bs!1161917 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (= lambda!235630 lambda!235625))))

(declare-fun bs!1161918 () Bool)

(assert (= bs!1161918 (and b!4821416 b!4821103)))

(assert (=> bs!1161918 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969699) (= lambda!235630 lambda!235540))))

(assert (=> bs!1161911 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969954) (= lambda!235630 lambda!235627))))

(declare-fun bs!1161919 () Bool)

(assert (= bs!1161919 (and b!4821416 b!4821276)))

(assert (=> bs!1161919 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235630 lambda!235600))))

(assert (=> bs!1161918 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969508) (= lambda!235630 lambda!235539))))

(declare-fun bs!1161920 () Bool)

(assert (= bs!1161920 (and b!4821416 b!4821274)))

(assert (=> bs!1161920 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969876) (= lambda!235630 lambda!235602))))

(declare-fun bs!1161921 () Bool)

(assert (= bs!1161921 (and b!4821416 b!4821418)))

(assert (=> bs!1161921 (= lambda!235630 lambda!235629)))

(declare-fun bs!1161922 () Bool)

(assert (= bs!1161922 (and b!4821416 d!1543665)))

(assert (=> bs!1161922 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969699) (= lambda!235630 lambda!235624))))

(declare-fun bs!1161923 () Bool)

(assert (= bs!1161923 (and b!4821416 d!1543581)))

(assert (=> bs!1161923 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969508) (= lambda!235630 lambda!235613))))

(declare-fun bs!1161924 () Bool)

(assert (= bs!1161924 (and b!4821416 d!1543543)))

(assert (=> bs!1161924 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969831) (= lambda!235630 lambda!235584))))

(declare-fun bs!1161925 () Bool)

(assert (= bs!1161925 (and b!4821416 b!4821219)))

(assert (=> bs!1161925 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235630 lambda!235581))))

(assert (=> bs!1161920 (= (= (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235630 lambda!235601))))

(assert (=> b!4821416 true))

(declare-fun lt!1969986 () ListMap!6827)

(declare-fun lambda!235631 () Int)

(assert (=> bs!1161911 (= (= lt!1969986 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (= lambda!235631 lambda!235626))))

(assert (=> b!4821416 (= (= lt!1969986 (extractMap!2665 (t!362535 (toList!7441 lm!2280)))) (= lambda!235631 lambda!235630))))

(assert (=> bs!1161912 (= (= lt!1969986 lt!1969700) (= lambda!235631 lambda!235541))))

(assert (=> bs!1161913 (= (= lt!1969986 lt!1969877) (= lambda!235631 lambda!235603))))

(assert (=> bs!1161914 (= (= lt!1969986 lt!1969830) (= lambda!235631 lambda!235583))))

(assert (=> bs!1161914 (= (= lt!1969986 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235631 lambda!235582))))

(assert (=> bs!1161915 (= (= lt!1969986 lt!1969508) (= lambda!235631 lambda!235538))))

(assert (=> bs!1161916 (= (= lt!1969986 lt!1969955) (= lambda!235631 lambda!235628))))

(assert (=> bs!1161917 (= (= lt!1969986 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (= lambda!235631 lambda!235625))))

(assert (=> bs!1161918 (= (= lt!1969986 lt!1969699) (= lambda!235631 lambda!235540))))

(assert (=> bs!1161911 (= (= lt!1969986 lt!1969954) (= lambda!235631 lambda!235627))))

(assert (=> bs!1161919 (= (= lt!1969986 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235631 lambda!235600))))

(assert (=> bs!1161918 (= (= lt!1969986 lt!1969508) (= lambda!235631 lambda!235539))))

(assert (=> bs!1161920 (= (= lt!1969986 lt!1969876) (= lambda!235631 lambda!235602))))

(assert (=> bs!1161921 (= (= lt!1969986 (extractMap!2665 (t!362535 (toList!7441 lm!2280)))) (= lambda!235631 lambda!235629))))

(assert (=> bs!1161922 (= (= lt!1969986 lt!1969699) (= lambda!235631 lambda!235624))))

(assert (=> bs!1161923 (= (= lt!1969986 lt!1969508) (= lambda!235631 lambda!235613))))

(assert (=> bs!1161924 (= (= lt!1969986 lt!1969831) (= lambda!235631 lambda!235584))))

(assert (=> bs!1161925 (= (= lt!1969986 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235631 lambda!235581))))

(assert (=> bs!1161920 (= (= lt!1969986 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235631 lambda!235601))))

(assert (=> b!4821416 true))

(declare-fun bs!1161926 () Bool)

(declare-fun d!1543679 () Bool)

(assert (= bs!1161926 (and d!1543679 b!4821397)))

(declare-fun lt!1969987 () ListMap!6827)

(declare-fun lambda!235636 () Int)

(assert (=> bs!1161926 (= (= lt!1969987 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (= lambda!235636 lambda!235626))))

(declare-fun bs!1161927 () Bool)

(assert (= bs!1161927 (and d!1543679 b!4821416)))

(assert (=> bs!1161927 (= (= lt!1969987 (extractMap!2665 (t!362535 (toList!7441 lm!2280)))) (= lambda!235636 lambda!235630))))

(declare-fun bs!1161928 () Bool)

(assert (= bs!1161928 (and d!1543679 d!1543477)))

(assert (=> bs!1161928 (= (= lt!1969987 lt!1969700) (= lambda!235636 lambda!235541))))

(declare-fun bs!1161929 () Bool)

(assert (= bs!1161929 (and d!1543679 d!1543567)))

(assert (=> bs!1161929 (= (= lt!1969987 lt!1969877) (= lambda!235636 lambda!235603))))

(declare-fun bs!1161930 () Bool)

(assert (= bs!1161930 (and d!1543679 b!4821217)))

(assert (=> bs!1161930 (= (= lt!1969987 lt!1969830) (= lambda!235636 lambda!235583))))

(assert (=> bs!1161930 (= (= lt!1969987 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235636 lambda!235582))))

(declare-fun bs!1161931 () Bool)

(assert (= bs!1161931 (and d!1543679 b!4821105)))

(assert (=> bs!1161931 (= (= lt!1969987 lt!1969508) (= lambda!235636 lambda!235538))))

(assert (=> bs!1161927 (= (= lt!1969987 lt!1969986) (= lambda!235636 lambda!235631))))

(declare-fun bs!1161932 () Bool)

(assert (= bs!1161932 (and d!1543679 d!1543669)))

(assert (=> bs!1161932 (= (= lt!1969987 lt!1969955) (= lambda!235636 lambda!235628))))

(declare-fun bs!1161933 () Bool)

(assert (= bs!1161933 (and d!1543679 b!4821399)))

(assert (=> bs!1161933 (= (= lt!1969987 (+!2524 lt!1969508 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))) (= lambda!235636 lambda!235625))))

(declare-fun bs!1161934 () Bool)

(assert (= bs!1161934 (and d!1543679 b!4821103)))

(assert (=> bs!1161934 (= (= lt!1969987 lt!1969699) (= lambda!235636 lambda!235540))))

(assert (=> bs!1161926 (= (= lt!1969987 lt!1969954) (= lambda!235636 lambda!235627))))

(declare-fun bs!1161935 () Bool)

(assert (= bs!1161935 (and d!1543679 b!4821276)))

(assert (=> bs!1161935 (= (= lt!1969987 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235636 lambda!235600))))

(assert (=> bs!1161934 (= (= lt!1969987 lt!1969508) (= lambda!235636 lambda!235539))))

(declare-fun bs!1161936 () Bool)

(assert (= bs!1161936 (and d!1543679 b!4821274)))

(assert (=> bs!1161936 (= (= lt!1969987 lt!1969876) (= lambda!235636 lambda!235602))))

(declare-fun bs!1161937 () Bool)

(assert (= bs!1161937 (and d!1543679 b!4821418)))

(assert (=> bs!1161937 (= (= lt!1969987 (extractMap!2665 (t!362535 (toList!7441 lm!2280)))) (= lambda!235636 lambda!235629))))

(declare-fun bs!1161938 () Bool)

(assert (= bs!1161938 (and d!1543679 d!1543665)))

(assert (=> bs!1161938 (= (= lt!1969987 lt!1969699) (= lambda!235636 lambda!235624))))

(declare-fun bs!1161939 () Bool)

(assert (= bs!1161939 (and d!1543679 d!1543581)))

(assert (=> bs!1161939 (= (= lt!1969987 lt!1969508) (= lambda!235636 lambda!235613))))

(declare-fun bs!1161940 () Bool)

(assert (= bs!1161940 (and d!1543679 d!1543543)))

(assert (=> bs!1161940 (= (= lt!1969987 lt!1969831) (= lambda!235636 lambda!235584))))

(declare-fun bs!1161941 () Bool)

(assert (= bs!1161941 (and d!1543679 b!4821219)))

(assert (=> bs!1161941 (= (= lt!1969987 (extractMap!2665 (t!362535 (toList!7441 lt!1969509)))) (= lambda!235636 lambda!235581))))

(assert (=> bs!1161936 (= (= lt!1969987 (extractMap!2665 (t!362535 (t!362535 (toList!7441 lm!2280))))) (= lambda!235636 lambda!235601))))

(assert (=> d!1543679 true))

(declare-fun b!4821414 () Bool)

(declare-fun res!2051977 () Bool)

(declare-fun e!3012436 () Bool)

(assert (=> b!4821414 (=> (not res!2051977) (not e!3012436))))

(assert (=> b!4821414 (= res!2051977 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lm!2280)))) lambda!235636))))

(declare-fun b!4821415 () Bool)

(assert (=> b!4821415 (= e!3012436 (invariantList!1799 (toList!7442 lt!1969987)))))

(declare-fun call!336141 () Bool)

(declare-fun c!821577 () Bool)

(declare-fun bm!336135 () Bool)

(assert (=> bm!336135 (= call!336141 (forall!12563 (ite c!821577 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lm!2280)))) (_2!32346 (h!61349 (toList!7441 lm!2280)))) (ite c!821577 lambda!235629 lambda!235631)))))

(declare-fun e!3012437 () ListMap!6827)

(assert (=> b!4821416 (= e!3012437 lt!1969986)))

(declare-fun lt!1969968 () ListMap!6827)

(assert (=> b!4821416 (= lt!1969968 (+!2524 (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(assert (=> b!4821416 (= lt!1969986 (addToMapMapFromBucket!1784 (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280)))) (+!2524 (extractMap!2665 (t!362535 (toList!7441 lm!2280))) (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun lt!1969985 () Unit!142316)

(declare-fun call!336140 () Unit!142316)

(assert (=> b!4821416 (= lt!1969985 call!336140)))

(assert (=> b!4821416 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lm!2280)))) lambda!235630)))

(declare-fun lt!1969973 () Unit!142316)

(assert (=> b!4821416 (= lt!1969973 lt!1969985)))

(assert (=> b!4821416 (forall!12563 (toList!7442 lt!1969968) lambda!235631)))

(declare-fun lt!1969972 () Unit!142316)

(declare-fun Unit!142434 () Unit!142316)

(assert (=> b!4821416 (= lt!1969972 Unit!142434)))

(declare-fun call!336142 () Bool)

(assert (=> b!4821416 call!336142))

(declare-fun lt!1969978 () Unit!142316)

(declare-fun Unit!142436 () Unit!142316)

(assert (=> b!4821416 (= lt!1969978 Unit!142436)))

(declare-fun lt!1969983 () Unit!142316)

(declare-fun Unit!142437 () Unit!142316)

(assert (=> b!4821416 (= lt!1969983 Unit!142437)))

(declare-fun lt!1969971 () Unit!142316)

(assert (=> b!4821416 (= lt!1969971 (forallContained!4361 (toList!7442 lt!1969968) lambda!235631 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(assert (=> b!4821416 (contains!18721 lt!1969968 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(declare-fun lt!1969982 () Unit!142316)

(declare-fun Unit!142440 () Unit!142316)

(assert (=> b!4821416 (= lt!1969982 Unit!142440)))

(assert (=> b!4821416 (contains!18721 lt!1969986 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))))))

(declare-fun lt!1969974 () Unit!142316)

(declare-fun Unit!142441 () Unit!142316)

(assert (=> b!4821416 (= lt!1969974 Unit!142441)))

(assert (=> b!4821416 call!336141))

(declare-fun lt!1969980 () Unit!142316)

(declare-fun Unit!142442 () Unit!142316)

(assert (=> b!4821416 (= lt!1969980 Unit!142442)))

(assert (=> b!4821416 (forall!12563 (toList!7442 lt!1969968) lambda!235631)))

(declare-fun lt!1969967 () Unit!142316)

(declare-fun Unit!142443 () Unit!142316)

(assert (=> b!4821416 (= lt!1969967 Unit!142443)))

(declare-fun lt!1969976 () Unit!142316)

(declare-fun Unit!142445 () Unit!142316)

(assert (=> b!4821416 (= lt!1969976 Unit!142445)))

(declare-fun lt!1969977 () Unit!142316)

(assert (=> b!4821416 (= lt!1969977 (addForallContainsKeyThenBeforeAdding!978 (extractMap!2665 (t!362535 (toList!7441 lm!2280))) lt!1969986 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (_2!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> b!4821416 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lm!2280)))) lambda!235631)))

(declare-fun lt!1969984 () Unit!142316)

(assert (=> b!4821416 (= lt!1969984 lt!1969977)))

(assert (=> b!4821416 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lm!2280)))) lambda!235631)))

(declare-fun lt!1969975 () Unit!142316)

(declare-fun Unit!142447 () Unit!142316)

(assert (=> b!4821416 (= lt!1969975 Unit!142447)))

(declare-fun res!2051976 () Bool)

(assert (=> b!4821416 (= res!2051976 (forall!12563 (_2!32346 (h!61349 (toList!7441 lm!2280))) lambda!235631))))

(declare-fun e!3012435 () Bool)

(assert (=> b!4821416 (=> (not res!2051976) (not e!3012435))))

(assert (=> b!4821416 e!3012435))

(declare-fun lt!1969981 () Unit!142316)

(declare-fun Unit!142448 () Unit!142316)

(assert (=> b!4821416 (= lt!1969981 Unit!142448)))

(declare-fun b!4821417 () Bool)

(assert (=> b!4821417 (= e!3012435 (forall!12563 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lm!2280)))) lambda!235631))))

(declare-fun bm!336136 () Bool)

(assert (=> bm!336136 (= call!336142 (forall!12563 (ite c!821577 (toList!7442 (extractMap!2665 (t!362535 (toList!7441 lm!2280)))) (t!362534 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (ite c!821577 lambda!235629 lambda!235631)))))

(assert (=> d!1543679 e!3012436))

(declare-fun res!2051975 () Bool)

(assert (=> d!1543679 (=> (not res!2051975) (not e!3012436))))

(assert (=> d!1543679 (= res!2051975 (forall!12563 (_2!32346 (h!61349 (toList!7441 lm!2280))) lambda!235636))))

(assert (=> d!1543679 (= lt!1969987 e!3012437)))

(assert (=> d!1543679 (= c!821577 (is-Nil!54914 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))

(assert (=> d!1543679 (noDuplicateKeys!2435 (_2!32346 (h!61349 (toList!7441 lm!2280))))))

(assert (=> d!1543679 (= (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) (extractMap!2665 (t!362535 (toList!7441 lm!2280)))) lt!1969987)))

(declare-fun bm!336137 () Bool)

(assert (=> bm!336137 (= call!336140 (lemmaContainsAllItsOwnKeys!979 (extractMap!2665 (t!362535 (toList!7441 lm!2280)))))))

(assert (=> b!4821418 (= e!3012437 (extractMap!2665 (t!362535 (toList!7441 lm!2280))))))

(declare-fun lt!1969979 () Unit!142316)

(assert (=> b!4821418 (= lt!1969979 call!336140)))

(assert (=> b!4821418 call!336141))

(declare-fun lt!1969969 () Unit!142316)

(assert (=> b!4821418 (= lt!1969969 lt!1969979)))

(assert (=> b!4821418 call!336142))

(declare-fun lt!1969970 () Unit!142316)

(declare-fun Unit!142449 () Unit!142316)

(assert (=> b!4821418 (= lt!1969970 Unit!142449)))

(assert (= (and d!1543679 c!821577) b!4821418))

(assert (= (and d!1543679 (not c!821577)) b!4821416))

(assert (= (and b!4821416 res!2051976) b!4821417))

(assert (= (or b!4821418 b!4821416) bm!336135))

(assert (= (or b!4821418 b!4821416) bm!336136))

(assert (= (or b!4821418 b!4821416) bm!336137))

(assert (= (and d!1543679 res!2051975) b!4821414))

(assert (= (and b!4821414 res!2051977) b!4821415))

(declare-fun m!5809220 () Bool)

(assert (=> b!4821416 m!5809220))

(declare-fun m!5809222 () Bool)

(assert (=> b!4821416 m!5809222))

(declare-fun m!5809224 () Bool)

(assert (=> b!4821416 m!5809224))

(assert (=> b!4821416 m!5808344))

(declare-fun m!5809226 () Bool)

(assert (=> b!4821416 m!5809226))

(declare-fun m!5809228 () Bool)

(assert (=> b!4821416 m!5809228))

(assert (=> b!4821416 m!5809220))

(declare-fun m!5809230 () Bool)

(assert (=> b!4821416 m!5809230))

(declare-fun m!5809232 () Bool)

(assert (=> b!4821416 m!5809232))

(assert (=> b!4821416 m!5809232))

(declare-fun m!5809234 () Bool)

(assert (=> b!4821416 m!5809234))

(declare-fun m!5809236 () Bool)

(assert (=> b!4821416 m!5809236))

(declare-fun m!5809238 () Bool)

(assert (=> b!4821416 m!5809238))

(assert (=> b!4821416 m!5808344))

(assert (=> b!4821416 m!5809236))

(declare-fun m!5809240 () Bool)

(assert (=> bm!336136 m!5809240))

(assert (=> b!4821417 m!5809220))

(assert (=> bm!336137 m!5808344))

(declare-fun m!5809242 () Bool)

(assert (=> bm!336137 m!5809242))

(declare-fun m!5809244 () Bool)

(assert (=> bm!336135 m!5809244))

(declare-fun m!5809246 () Bool)

(assert (=> b!4821414 m!5809246))

(declare-fun m!5809248 () Bool)

(assert (=> d!1543679 m!5809248))

(assert (=> d!1543679 m!5808342))

(declare-fun m!5809250 () Bool)

(assert (=> b!4821415 m!5809250))

(assert (=> b!4821036 d!1543679))

(assert (=> b!4821036 d!1543449))

(declare-fun d!1543681 () Bool)

(declare-fun res!2051984 () Bool)

(declare-fun e!3012446 () Bool)

(assert (=> d!1543681 (=> res!2051984 e!3012446)))

(assert (=> d!1543681 (= res!2051984 (is-Nil!54915 (t!362535 (toList!7441 lm!2280))))))

(assert (=> d!1543681 (= (forall!12561 (t!362535 (toList!7441 lm!2280)) lambda!235485) e!3012446)))

(declare-fun b!4821437 () Bool)

(declare-fun e!3012447 () Bool)

(assert (=> b!4821437 (= e!3012446 e!3012447)))

(declare-fun res!2051985 () Bool)

(assert (=> b!4821437 (=> (not res!2051985) (not e!3012447))))

(assert (=> b!4821437 (= res!2051985 (dynLambda!22190 lambda!235485 (h!61349 (t!362535 (toList!7441 lm!2280)))))))

(declare-fun b!4821438 () Bool)

(assert (=> b!4821438 (= e!3012447 (forall!12561 (t!362535 (t!362535 (toList!7441 lm!2280))) lambda!235485))))

(assert (= (and d!1543681 (not res!2051984)) b!4821437))

(assert (= (and b!4821437 res!2051985) b!4821438))

(declare-fun b_lambda!189077 () Bool)

(assert (=> (not b_lambda!189077) (not b!4821437)))

(declare-fun m!5809252 () Bool)

(assert (=> b!4821437 m!5809252))

(declare-fun m!5809254 () Bool)

(assert (=> b!4821438 m!5809254))

(assert (=> b!4821128 d!1543681))

(declare-fun bs!1161942 () Bool)

(declare-fun b!4821440 () Bool)

(assert (= bs!1161942 (and b!4821440 b!4821262)))

(declare-fun lambda!235641 () Int)

(assert (=> bs!1161942 (= (= (t!362534 (toList!7442 lt!1969508)) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235641 lambda!235596))))

(declare-fun bs!1161943 () Bool)

(assert (= bs!1161943 (and b!4821440 b!4821296)))

(assert (=> bs!1161943 (= (= (t!362534 (toList!7442 lt!1969508)) (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))) (= lambda!235641 lambda!235606))))

(declare-fun bs!1161944 () Bool)

(assert (= bs!1161944 (and b!4821440 b!4821292)))

(assert (=> bs!1161944 (= (= (t!362534 (toList!7442 lt!1969508)) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (= lambda!235641 lambda!235605))))

(declare-fun bs!1161945 () Bool)

(assert (= bs!1161945 (and b!4821440 b!4821237)))

(assert (=> bs!1161945 (= (= (t!362534 (toList!7442 lt!1969508)) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235641 lambda!235586))))

(declare-fun bs!1161946 () Bool)

(assert (= bs!1161946 (and b!4821440 b!4821294)))

(assert (=> bs!1161946 (= (= (t!362534 (toList!7442 lt!1969508)) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235641 lambda!235607))))

(declare-fun bs!1161947 () Bool)

(assert (= bs!1161947 (and b!4821440 b!4821317)))

(assert (=> bs!1161947 (= (= (t!362534 (toList!7442 lt!1969508)) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))) (= lambda!235641 lambda!235617))))

(declare-fun bs!1161948 () Bool)

(assert (= bs!1161948 (and b!4821440 b!4821308)))

(assert (=> bs!1161948 (= (= (t!362534 (toList!7442 lt!1969508)) (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (= lambda!235641 lambda!235614))))

(declare-fun bs!1161949 () Bool)

(assert (= bs!1161949 (and b!4821440 b!4821303)))

(assert (=> bs!1161949 (= (= (t!362534 (toList!7442 lt!1969508)) (toList!7442 lt!1969508)) (= lambda!235641 lambda!235609))))

(declare-fun bs!1161950 () Bool)

(assert (= bs!1161950 (and b!4821440 b!4821266)))

(assert (=> bs!1161950 (= (= (t!362534 (toList!7442 lt!1969508)) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))) (= lambda!235641 lambda!235597))))

(declare-fun bs!1161951 () Bool)

(assert (= bs!1161951 (and b!4821440 b!4821313)))

(assert (=> bs!1161951 (= (= (t!362534 (toList!7442 lt!1969508)) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (= lambda!235641 lambda!235616))))

(declare-fun bs!1161952 () Bool)

(assert (= bs!1161952 (and b!4821440 b!4821209)))

(assert (=> bs!1161952 (= (= (t!362534 (toList!7442 lt!1969508)) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235641 lambda!235579))))

(declare-fun bs!1161953 () Bool)

(assert (= bs!1161953 (and b!4821440 b!4821264)))

(assert (=> bs!1161953 (= (= (t!362534 (toList!7442 lt!1969508)) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235641 lambda!235598))))

(declare-fun bs!1161954 () Bool)

(assert (= bs!1161954 (and b!4821440 b!4821315)))

(assert (=> bs!1161954 (= (= (t!362534 (toList!7442 lt!1969508)) (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (= lambda!235641 lambda!235618))))

(assert (=> b!4821440 true))

(declare-fun bs!1161955 () Bool)

(declare-fun b!4821444 () Bool)

(assert (= bs!1161955 (and b!4821444 b!4821296)))

(declare-fun lambda!235643 () Int)

(assert (=> bs!1161955 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))) (= lambda!235643 lambda!235606))))

(declare-fun bs!1161956 () Bool)

(assert (= bs!1161956 (and b!4821444 b!4821292)))

(assert (=> bs!1161956 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (= lambda!235643 lambda!235605))))

(declare-fun bs!1161957 () Bool)

(assert (= bs!1161957 (and b!4821444 b!4821237)))

(assert (=> bs!1161957 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235643 lambda!235586))))

(declare-fun bs!1161958 () Bool)

(assert (= bs!1161958 (and b!4821444 b!4821294)))

(assert (=> bs!1161958 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235643 lambda!235607))))

(declare-fun bs!1161959 () Bool)

(assert (= bs!1161959 (and b!4821444 b!4821317)))

(assert (=> bs!1161959 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))) (= lambda!235643 lambda!235617))))

(declare-fun bs!1161961 () Bool)

(assert (= bs!1161961 (and b!4821444 b!4821308)))

(assert (=> bs!1161961 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (= lambda!235643 lambda!235614))))

(declare-fun bs!1161962 () Bool)

(assert (= bs!1161962 (and b!4821444 b!4821303)))

(assert (=> bs!1161962 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (toList!7442 lt!1969508)) (= lambda!235643 lambda!235609))))

(declare-fun bs!1161963 () Bool)

(assert (= bs!1161963 (and b!4821444 b!4821266)))

(assert (=> bs!1161963 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))) (= lambda!235643 lambda!235597))))

(declare-fun bs!1161964 () Bool)

(assert (= bs!1161964 (and b!4821444 b!4821313)))

(assert (=> bs!1161964 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (= lambda!235643 lambda!235616))))

(declare-fun bs!1161965 () Bool)

(assert (= bs!1161965 (and b!4821444 b!4821209)))

(assert (=> bs!1161965 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235643 lambda!235579))))

(declare-fun bs!1161967 () Bool)

(assert (= bs!1161967 (and b!4821444 b!4821440)))

(assert (=> bs!1161967 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (t!362534 (toList!7442 lt!1969508))) (= lambda!235643 lambda!235641))))

(declare-fun bs!1161969 () Bool)

(assert (= bs!1161969 (and b!4821444 b!4821262)))

(assert (=> bs!1161969 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235643 lambda!235596))))

(declare-fun bs!1161970 () Bool)

(assert (= bs!1161970 (and b!4821444 b!4821264)))

(assert (=> bs!1161970 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235643 lambda!235598))))

(declare-fun bs!1161971 () Bool)

(assert (= bs!1161971 (and b!4821444 b!4821315)))

(assert (=> bs!1161971 (= (= (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508))) (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (= lambda!235643 lambda!235618))))

(assert (=> b!4821444 true))

(declare-fun bs!1161972 () Bool)

(declare-fun b!4821442 () Bool)

(assert (= bs!1161972 (and b!4821442 b!4821296)))

(declare-fun lambda!235647 () Int)

(assert (=> bs!1161972 (= (= (toList!7442 lt!1969508) (Cons!54914 (h!61348 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))))) (= lambda!235647 lambda!235606))))

(declare-fun bs!1161973 () Bool)

(assert (= bs!1161973 (and b!4821442 b!4821292)))

(assert (=> bs!1161973 (= (= (toList!7442 lt!1969508) (t!362534 (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508)))) (= lambda!235647 lambda!235605))))

(declare-fun bs!1161974 () Bool)

(assert (= bs!1161974 (and b!4821442 b!4821237)))

(assert (=> bs!1161974 (= (= (toList!7442 lt!1969508) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235647 lambda!235586))))

(declare-fun bs!1161975 () Bool)

(assert (= bs!1161975 (and b!4821442 b!4821294)))

(assert (=> bs!1161975 (= (= (toList!7442 lt!1969508) (toList!7442 (addToMapMapFromBucket!1784 (_2!32346 (h!61349 (toList!7441 lm!2280))) lt!1969508))) (= lambda!235647 lambda!235607))))

(declare-fun bs!1161976 () Bool)

(assert (= bs!1161976 (and b!4821442 b!4821444)))

(assert (=> bs!1161976 (= (= (toList!7442 lt!1969508) (Cons!54914 (h!61348 (toList!7442 lt!1969508)) (t!362534 (toList!7442 lt!1969508)))) (= lambda!235647 lambda!235643))))

(declare-fun bs!1161977 () Bool)

(assert (= bs!1161977 (and b!4821442 b!4821317)))

(assert (=> bs!1161977 (= (= (toList!7442 lt!1969508) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))))) (= lambda!235647 lambda!235617))))

(declare-fun bs!1161978 () Bool)

(assert (= bs!1161978 (and b!4821442 b!4821308)))

(assert (=> bs!1161978 (= (= (toList!7442 lt!1969508) (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (= lambda!235647 lambda!235614))))

(declare-fun bs!1161979 () Bool)

(assert (= bs!1161979 (and b!4821442 b!4821303)))

(assert (=> bs!1161979 (= lambda!235647 lambda!235609)))

(declare-fun bs!1161980 () Bool)

(assert (= bs!1161980 (and b!4821442 b!4821266)))

(assert (=> bs!1161980 (= (= (toList!7442 lt!1969508) (Cons!54914 (h!61348 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))))) (= lambda!235647 lambda!235597))))

(declare-fun bs!1161981 () Bool)

(assert (= bs!1161981 (and b!4821442 b!4821313)))

(assert (=> bs!1161981 (= (= (toList!7442 lt!1969508) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lt!1969509))))) (= lambda!235647 lambda!235616))))

(declare-fun bs!1161982 () Bool)

(assert (= bs!1161982 (and b!4821442 b!4821209)))

(assert (=> bs!1161982 (= (= (toList!7442 lt!1969508) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235647 lambda!235579))))

(declare-fun bs!1161983 () Bool)

(assert (= bs!1161983 (and b!4821442 b!4821440)))

(assert (=> bs!1161983 (= (= (toList!7442 lt!1969508) (t!362534 (toList!7442 lt!1969508))) (= lambda!235647 lambda!235641))))

(declare-fun bs!1161984 () Bool)

(assert (= bs!1161984 (and b!4821442 b!4821262)))

(assert (=> bs!1161984 (= (= (toList!7442 lt!1969508) (t!362534 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))) (= lambda!235647 lambda!235596))))

(declare-fun bs!1161985 () Bool)

(assert (= bs!1161985 (and b!4821442 b!4821264)))

(assert (=> bs!1161985 (= (= (toList!7442 lt!1969508) (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) (= lambda!235647 lambda!235598))))

(declare-fun bs!1161986 () Bool)

(assert (= bs!1161986 (and b!4821442 b!4821315)))

(assert (=> bs!1161986 (= (= (toList!7442 lt!1969508) (toList!7442 (extractMap!2665 (toList!7441 lt!1969509)))) (= lambda!235647 lambda!235618))))

(assert (=> b!4821442 true))

(declare-fun bs!1161987 () Bool)

(declare-fun b!4821447 () Bool)

(assert (= bs!1161987 (and b!4821447 b!4821269)))

(declare-fun lambda!235648 () Int)

(assert (=> bs!1161987 (= lambda!235648 lambda!235599)))

(declare-fun bs!1161988 () Bool)

(assert (= bs!1161988 (and b!4821447 b!4821304)))

(assert (=> bs!1161988 (= lambda!235648 lambda!235610)))

(declare-fun bs!1161989 () Bool)

(assert (= bs!1161989 (and b!4821447 b!4821320)))

(assert (=> bs!1161989 (= lambda!235648 lambda!235619)))

(declare-fun bs!1161990 () Bool)

(assert (= bs!1161990 (and b!4821447 b!4821309)))

(assert (=> bs!1161990 (= lambda!235648 lambda!235615)))

(declare-fun bs!1161991 () Bool)

(assert (= bs!1161991 (and b!4821447 b!4821299)))

(assert (=> bs!1161991 (= lambda!235648 lambda!235608)))

(declare-fun bs!1161992 () Bool)

(assert (= bs!1161992 (and b!4821447 b!4821238)))

(assert (=> bs!1161992 (= lambda!235648 lambda!235587)))

(declare-fun bs!1161993 () Bool)

(assert (= bs!1161993 (and b!4821447 b!4821210)))

(assert (=> bs!1161993 (= lambda!235648 lambda!235580)))

(declare-fun b!4821439 () Bool)

(declare-fun e!3012450 () Unit!142316)

(declare-fun Unit!142450 () Unit!142316)

(assert (=> b!4821439 (= e!3012450 Unit!142450)))

(assert (=> b!4821440 false))

(declare-fun lt!1970008 () Unit!142316)

(assert (=> b!4821440 (= lt!1970008 (forallContained!4363 (getKeysList!1147 (t!362534 (toList!7442 lt!1969508))) lambda!235641 (_1!32345 (h!61348 (toList!7442 lt!1969508)))))))

(declare-fun e!3012448 () Unit!142316)

(declare-fun Unit!142451 () Unit!142316)

(assert (=> b!4821440 (= e!3012448 Unit!142451)))

(declare-fun b!4821441 () Bool)

(assert (=> b!4821441 false))

(declare-fun Unit!142452 () Unit!142316)

(assert (=> b!4821441 (= e!3012450 Unit!142452)))

(declare-fun res!2051986 () Bool)

(declare-fun e!3012449 () Bool)

(assert (=> b!4821442 (=> (not res!2051986) (not e!3012449))))

(declare-fun lt!1970005 () List!55042)

(assert (=> b!4821442 (= res!2051986 (forall!12565 lt!1970005 lambda!235647))))

(declare-fun d!1543683 () Bool)

(assert (=> d!1543683 e!3012449))

(declare-fun res!2051988 () Bool)

(assert (=> d!1543683 (=> (not res!2051988) (not e!3012449))))

(assert (=> d!1543683 (= res!2051988 (noDuplicate!949 lt!1970005))))

(declare-fun e!3012451 () List!55042)

(assert (=> d!1543683 (= lt!1970005 e!3012451)))

(declare-fun c!821585 () Bool)

(assert (=> d!1543683 (= c!821585 (is-Cons!54914 (toList!7442 lt!1969508)))))

(assert (=> d!1543683 (invariantList!1799 (toList!7442 lt!1969508))))

(assert (=> d!1543683 (= (getKeysList!1147 (toList!7442 lt!1969508)) lt!1970005)))

(declare-fun b!4821443 () Bool)

(declare-fun Unit!142453 () Unit!142316)

(assert (=> b!4821443 (= e!3012448 Unit!142453)))

(assert (=> b!4821444 (= e!3012451 (Cons!54918 (_1!32345 (h!61348 (toList!7442 lt!1969508))) (getKeysList!1147 (t!362534 (toList!7442 lt!1969508)))))))

(declare-fun c!821586 () Bool)

(assert (=> b!4821444 (= c!821586 (containsKey!4323 (t!362534 (toList!7442 lt!1969508)) (_1!32345 (h!61348 (toList!7442 lt!1969508)))))))

(declare-fun lt!1970004 () Unit!142316)

(assert (=> b!4821444 (= lt!1970004 e!3012450)))

(declare-fun c!821584 () Bool)

(assert (=> b!4821444 (= c!821584 (contains!18724 (getKeysList!1147 (t!362534 (toList!7442 lt!1969508))) (_1!32345 (h!61348 (toList!7442 lt!1969508)))))))

(declare-fun lt!1970003 () Unit!142316)

(assert (=> b!4821444 (= lt!1970003 e!3012448)))

(declare-fun lt!1970002 () List!55042)

(assert (=> b!4821444 (= lt!1970002 (getKeysList!1147 (t!362534 (toList!7442 lt!1969508))))))

(declare-fun lt!1970007 () Unit!142316)

(assert (=> b!4821444 (= lt!1970007 (lemmaForallContainsAddHeadPreserves!364 (t!362534 (toList!7442 lt!1969508)) lt!1970002 (h!61348 (toList!7442 lt!1969508))))))

(assert (=> b!4821444 (forall!12565 lt!1970002 lambda!235643)))

(declare-fun lt!1970006 () Unit!142316)

(assert (=> b!4821444 (= lt!1970006 lt!1970007)))

(declare-fun b!4821445 () Bool)

(declare-fun res!2051987 () Bool)

(assert (=> b!4821445 (=> (not res!2051987) (not e!3012449))))

(assert (=> b!4821445 (= res!2051987 (= (length!754 lt!1970005) (length!755 (toList!7442 lt!1969508))))))

(declare-fun b!4821446 () Bool)

(assert (=> b!4821446 (= e!3012451 Nil!54918)))

(assert (=> b!4821447 (= e!3012449 (= (content!9808 lt!1970005) (content!9808 (map!12557 (toList!7442 lt!1969508) lambda!235648))))))

(assert (= (and d!1543683 c!821585) b!4821444))

(assert (= (and d!1543683 (not c!821585)) b!4821446))

(assert (= (and b!4821444 c!821586) b!4821441))

(assert (= (and b!4821444 (not c!821586)) b!4821439))

(assert (= (and b!4821444 c!821584) b!4821440))

(assert (= (and b!4821444 (not c!821584)) b!4821443))

(assert (= (and d!1543683 res!2051988) b!4821445))

(assert (= (and b!4821445 res!2051987) b!4821442))

(assert (= (and b!4821442 res!2051986) b!4821447))

(declare-fun m!5809288 () Bool)

(assert (=> b!4821440 m!5809288))

(assert (=> b!4821440 m!5809288))

(declare-fun m!5809292 () Bool)

(assert (=> b!4821440 m!5809292))

(declare-fun m!5809294 () Bool)

(assert (=> b!4821445 m!5809294))

(assert (=> b!4821445 m!5808952))

(declare-fun m!5809296 () Bool)

(assert (=> b!4821447 m!5809296))

(declare-fun m!5809298 () Bool)

(assert (=> b!4821447 m!5809298))

(assert (=> b!4821447 m!5809298))

(declare-fun m!5809300 () Bool)

(assert (=> b!4821447 m!5809300))

(declare-fun m!5809302 () Bool)

(assert (=> b!4821442 m!5809302))

(declare-fun m!5809304 () Bool)

(assert (=> d!1543683 m!5809304))

(assert (=> d!1543683 m!5809070))

(declare-fun m!5809306 () Bool)

(assert (=> b!4821444 m!5809306))

(assert (=> b!4821444 m!5809288))

(declare-fun m!5809308 () Bool)

(assert (=> b!4821444 m!5809308))

(declare-fun m!5809310 () Bool)

(assert (=> b!4821444 m!5809310))

(declare-fun m!5809312 () Bool)

(assert (=> b!4821444 m!5809312))

(assert (=> b!4821444 m!5809288))

(assert (=> b!4820999 d!1543683))

(declare-fun d!1543691 () Bool)

(assert (=> d!1543691 (= (invariantList!1799 (toList!7442 lt!1969700)) (noDuplicatedKeys!468 (toList!7442 lt!1969700)))))

(declare-fun bs!1161995 () Bool)

(assert (= bs!1161995 d!1543691))

(declare-fun m!5809314 () Bool)

(assert (=> bs!1161995 m!5809314))

(assert (=> b!4821102 d!1543691))

(declare-fun d!1543693 () Bool)

(assert (=> d!1543693 (isDefined!10582 (getValueByKey!2594 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428))))

(declare-fun lt!1970016 () Unit!142316)

(assert (=> d!1543693 (= lt!1970016 (choose!35010 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428))))

(assert (=> d!1543693 (invariantList!1799 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))))

(assert (=> d!1543693 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!2379 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428) lt!1970016)))

(declare-fun bs!1161996 () Bool)

(assert (= bs!1161996 d!1543693))

(assert (=> bs!1161996 m!5808630))

(assert (=> bs!1161996 m!5808630))

(assert (=> bs!1161996 m!5808632))

(declare-fun m!5809316 () Bool)

(assert (=> bs!1161996 m!5809316))

(assert (=> bs!1161996 m!5808732))

(assert (=> b!4821122 d!1543693))

(assert (=> b!4821122 d!1543625))

(assert (=> b!4821122 d!1543627))

(declare-fun d!1543695 () Bool)

(assert (=> d!1543695 (contains!18724 (getKeysList!1147 (toList!7442 (extractMap!2665 (toList!7441 lm!2280)))) key!5428)))

(declare-fun lt!1970017 () Unit!142316)

(assert (=> d!1543695 (= lt!1970017 (choose!35011 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428))))

(assert (=> d!1543695 (invariantList!1799 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))))))

(assert (=> d!1543695 (= (lemmaInListThenGetKeysListContains!1142 (toList!7442 (extractMap!2665 (toList!7441 lm!2280))) key!5428) lt!1970017)))

(declare-fun bs!1161997 () Bool)

(assert (= bs!1161997 d!1543695))

(assert (=> bs!1161997 m!5808626))

(assert (=> bs!1161997 m!5808626))

(declare-fun m!5809318 () Bool)

(assert (=> bs!1161997 m!5809318))

(declare-fun m!5809320 () Bool)

(assert (=> bs!1161997 m!5809320))

(assert (=> bs!1161997 m!5808732))

(assert (=> b!4821122 d!1543695))

(declare-fun d!1543697 () Bool)

(assert (=> d!1543697 (= (invariantList!1799 (toList!7442 lt!1969602)) (noDuplicatedKeys!468 (toList!7442 lt!1969602)))))

(declare-fun bs!1161998 () Bool)

(assert (= bs!1161998 d!1543697))

(declare-fun m!5809322 () Bool)

(assert (=> bs!1161998 m!5809322))

(assert (=> d!1543469 d!1543697))

(declare-fun d!1543699 () Bool)

(declare-fun res!2051994 () Bool)

(declare-fun e!3012458 () Bool)

(assert (=> d!1543699 (=> res!2051994 e!3012458)))

(assert (=> d!1543699 (= res!2051994 (is-Nil!54915 (toList!7441 lm!2280)))))

(assert (=> d!1543699 (= (forall!12561 (toList!7441 lm!2280) lambda!235499) e!3012458)))

(declare-fun b!4821461 () Bool)

(declare-fun e!3012459 () Bool)

(assert (=> b!4821461 (= e!3012458 e!3012459)))

(declare-fun res!2051995 () Bool)

(assert (=> b!4821461 (=> (not res!2051995) (not e!3012459))))

(assert (=> b!4821461 (= res!2051995 (dynLambda!22190 lambda!235499 (h!61349 (toList!7441 lm!2280))))))

(declare-fun b!4821462 () Bool)

(assert (=> b!4821462 (= e!3012459 (forall!12561 (t!362535 (toList!7441 lm!2280)) lambda!235499))))

(assert (= (and d!1543699 (not res!2051994)) b!4821461))

(assert (= (and b!4821461 res!2051995) b!4821462))

(declare-fun b_lambda!189081 () Bool)

(assert (=> (not b_lambda!189081) (not b!4821461)))

(declare-fun m!5809324 () Bool)

(assert (=> b!4821461 m!5809324))

(declare-fun m!5809326 () Bool)

(assert (=> b!4821462 m!5809326))

(assert (=> d!1543469 d!1543699))

(declare-fun b!4821467 () Bool)

(declare-fun tp!1362369 () Bool)

(declare-fun e!3012462 () Bool)

(declare-fun tp_is_empty!34389 () Bool)

(assert (=> b!4821467 (= e!3012462 (and tp_is_empty!34385 tp_is_empty!34389 tp!1362369))))

(assert (=> b!4821133 (= tp!1362359 e!3012462)))

(assert (= (and b!4821133 (is-Cons!54914 (_2!32346 (h!61349 (toList!7441 lm!2280))))) b!4821467))

(declare-fun b!4821468 () Bool)

(declare-fun e!3012463 () Bool)

(declare-fun tp!1362370 () Bool)

(declare-fun tp!1362371 () Bool)

(assert (=> b!4821468 (= e!3012463 (and tp!1362370 tp!1362371))))

(assert (=> b!4821133 (= tp!1362360 e!3012463)))

(assert (= (and b!4821133 (is-Cons!54915 (t!362535 (toList!7441 lm!2280)))) b!4821468))

(declare-fun b_lambda!189083 () Bool)

(assert (= b_lambda!189077 (or start!499592 b_lambda!189083)))

(declare-fun bs!1162001 () Bool)

(declare-fun d!1543705 () Bool)

(assert (= bs!1162001 (and d!1543705 start!499592)))

(assert (=> bs!1162001 (= (dynLambda!22190 lambda!235485 (h!61349 (t!362535 (toList!7441 lm!2280)))) (noDuplicateKeys!2435 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280))))))))

(assert (=> bs!1162001 m!5808900))

(assert (=> b!4821437 d!1543705))

(declare-fun b_lambda!189085 () Bool)

(assert (= b_lambda!189059 (or d!1543477 b_lambda!189085)))

(declare-fun bs!1162002 () Bool)

(declare-fun d!1543707 () Bool)

(assert (= bs!1162002 (and d!1543707 d!1543477)))

(assert (=> bs!1162002 (= (dynLambda!22192 lambda!235541 (h!61348 (toList!7442 lt!1969508))) (contains!18721 lt!1969700 (_1!32345 (h!61348 (toList!7442 lt!1969508)))))))

(declare-fun m!5809332 () Bool)

(assert (=> bs!1162002 m!5809332))

(assert (=> b!4821333 d!1543707))

(declare-fun b_lambda!189087 () Bool)

(assert (= b_lambda!189055 (or d!1543451 b_lambda!189087)))

(declare-fun bs!1162003 () Bool)

(declare-fun d!1543709 () Bool)

(assert (= bs!1162003 (and d!1543709 d!1543451)))

(assert (=> bs!1162003 (= (dynLambda!22190 lambda!235495 (h!61349 (toList!7441 lt!1969509))) (noDuplicateKeys!2435 (_2!32346 (h!61349 (toList!7441 lt!1969509)))))))

(assert (=> bs!1162003 m!5808802))

(assert (=> b!4821323 d!1543709))

(declare-fun b_lambda!189089 () Bool)

(assert (= b_lambda!189051 (or d!1543477 b_lambda!189089)))

(declare-fun bs!1162004 () Bool)

(declare-fun d!1543711 () Bool)

(assert (= bs!1162004 (and d!1543711 d!1543477)))

(assert (=> bs!1162004 (= (dynLambda!22192 lambda!235541 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (contains!18721 lt!1969700 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(declare-fun m!5809334 () Bool)

(assert (=> bs!1162004 m!5809334))

(assert (=> b!4821283 d!1543711))

(declare-fun b_lambda!189091 () Bool)

(assert (= b_lambda!189053 (or b!4821103 b_lambda!189091)))

(declare-fun bs!1162005 () Bool)

(declare-fun d!1543713 () Bool)

(assert (= bs!1162005 (and d!1543713 b!4821103)))

(assert (=> bs!1162005 (= (dynLambda!22192 lambda!235540 (h!61348 (toList!7442 lt!1969508))) (contains!18721 lt!1969699 (_1!32345 (h!61348 (toList!7442 lt!1969508)))))))

(declare-fun m!5809336 () Bool)

(assert (=> bs!1162005 m!5809336))

(assert (=> b!4821321 d!1543713))

(declare-fun b_lambda!189093 () Bool)

(assert (= b_lambda!189063 (or d!1543447 b_lambda!189093)))

(declare-fun bs!1162006 () Bool)

(declare-fun d!1543715 () Bool)

(assert (= bs!1162006 (and d!1543715 d!1543447)))

(assert (=> bs!1162006 (= (dynLambda!22190 lambda!235491 (h!61349 (toList!7441 lt!1969509))) (noDuplicateKeys!2435 (_2!32346 (h!61349 (toList!7441 lt!1969509)))))))

(assert (=> bs!1162006 m!5808802))

(assert (=> b!4821341 d!1543715))

(declare-fun b_lambda!189095 () Bool)

(assert (= b_lambda!189061 (or d!1543455 b_lambda!189095)))

(declare-fun bs!1162007 () Bool)

(declare-fun d!1543717 () Bool)

(assert (= bs!1162007 (and d!1543717 d!1543455)))

(declare-fun allKeysSameHash!1995 (List!55038 (_ BitVec 64) Hashable!7243) Bool)

(assert (=> bs!1162007 (= (dynLambda!22190 lambda!235498 (h!61349 (toList!7441 lm!2280))) (allKeysSameHash!1995 (_2!32346 (h!61349 (toList!7441 lm!2280))) (_1!32346 (h!61349 (toList!7441 lm!2280))) hashF!1509))))

(declare-fun m!5809338 () Bool)

(assert (=> bs!1162007 m!5809338))

(assert (=> b!4821335 d!1543717))

(declare-fun b_lambda!189097 () Bool)

(assert (= b_lambda!189073 (or b!4821103 b_lambda!189097)))

(declare-fun bs!1162008 () Bool)

(declare-fun d!1543719 () Bool)

(assert (= bs!1162008 (and d!1543719 b!4821103)))

(assert (=> bs!1162008 (= (dynLambda!22192 lambda!235540 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280))))) (contains!18721 lt!1969699 (_1!32345 (h!61348 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))))

(assert (=> bs!1162008 m!5808588))

(assert (=> d!1543675 d!1543719))

(declare-fun b_lambda!189099 () Bool)

(assert (= b_lambda!189065 (or d!1543449 b_lambda!189099)))

(declare-fun bs!1162009 () Bool)

(declare-fun d!1543721 () Bool)

(assert (= bs!1162009 (and d!1543721 d!1543449)))

(assert (=> bs!1162009 (= (dynLambda!22190 lambda!235492 (h!61349 (t!362535 (toList!7441 lm!2280)))) (noDuplicateKeys!2435 (_2!32346 (h!61349 (t!362535 (toList!7441 lm!2280))))))))

(assert (=> bs!1162009 m!5808900))

(assert (=> b!4821367 d!1543721))

(declare-fun b_lambda!189101 () Bool)

(assert (= b_lambda!189071 (or b!4821103 b_lambda!189101)))

(declare-fun bs!1162010 () Bool)

(declare-fun d!1543723 () Bool)

(assert (= bs!1162010 (and d!1543723 b!4821103)))

(assert (=> bs!1162010 (= (dynLambda!22192 lambda!235540 (h!61348 (toList!7442 lt!1969681))) (contains!18721 lt!1969699 (_1!32345 (h!61348 (toList!7442 lt!1969681)))))))

(declare-fun m!5809340 () Bool)

(assert (=> bs!1162010 m!5809340))

(assert (=> b!4821393 d!1543723))

(declare-fun b_lambda!189103 () Bool)

(assert (= b_lambda!189069 (or b!4821103 b_lambda!189103)))

(declare-fun bs!1162011 () Bool)

(declare-fun d!1543725 () Bool)

(assert (= bs!1162011 (and d!1543725 b!4821103)))

(assert (=> bs!1162011 (= (dynLambda!22192 lambda!235539 (h!61348 (toList!7442 lt!1969508))) (contains!18721 lt!1969508 (_1!32345 (h!61348 (toList!7442 lt!1969508)))))))

(declare-fun m!5809342 () Bool)

(assert (=> bs!1162011 m!5809342))

(assert (=> b!4821384 d!1543725))

(declare-fun b_lambda!189105 () Bool)

(assert (= b_lambda!189081 (or d!1543469 b_lambda!189105)))

(declare-fun bs!1162012 () Bool)

(declare-fun d!1543727 () Bool)

(assert (= bs!1162012 (and d!1543727 d!1543469)))

(assert (=> bs!1162012 (= (dynLambda!22190 lambda!235499 (h!61349 (toList!7441 lm!2280))) (noDuplicateKeys!2435 (_2!32346 (h!61349 (toList!7441 lm!2280)))))))

(assert (=> bs!1162012 m!5808342))

(assert (=> b!4821461 d!1543727))

(declare-fun b_lambda!189107 () Bool)

(assert (= b_lambda!189075 (or b!4821103 b_lambda!189107)))

(assert (=> b!4821412 d!1543719))

(push 1)

(assert (not b!4821391))

(assert (not b!4821411))

(assert (not b!4821302))

(assert (not d!1543567))

(assert (not b!4821275))

(assert (not d!1543641))

(assert (not b!4821364))

(assert (not b!4821376))

(assert (not b!4821372))

(assert (not d!1543581))

(assert (not d!1543599))

(assert (not b_lambda!189093))

(assert (not b!4821292))

(assert (not bm!336133))

(assert (not d!1543561))

(assert (not b!4821368))

(assert (not b!4821468))

(assert (not b!4821447))

(assert (not d!1543527))

(assert (not d!1543643))

(assert (not bm!336135))

(assert (not b!4821330))

(assert (not b!4821218))

(assert (not b!4821416))

(assert (not b_lambda!189087))

(assert (not b!4821236))

(assert (not b!4821301))

(assert (not bs!1162010))

(assert (not b!4821266))

(assert (not b!4821407))

(assert (not b!4821467))

(assert (not b!4821374))

(assert (not b!4821347))

(assert (not b_lambda!189089))

(assert (not b_lambda!189105))

(assert (not b!4821438))

(assert (not b!4821380))

(assert (not b_lambda!189091))

(assert (not b!4821442))

(assert (not d!1543669))

(assert (not b!4821408))

(assert (not b!4821327))

(assert (not d!1543543))

(assert (not b_lambda!189047))

(assert (not d!1543625))

(assert (not d!1543691))

(assert (not b!4821400))

(assert (not b!4821296))

(assert (not d!1543617))

(assert (not d!1543595))

(assert (not bs!1162006))

(assert (not b!4821413))

(assert (not d!1543697))

(assert (not b!4821308))

(assert (not b!4821440))

(assert (not bs!1162005))

(assert (not b!4821194))

(assert (not b!4821235))

(assert (not bm!336136))

(assert (not b!4821311))

(assert (not bm!336132))

(assert (not d!1543649))

(assert (not d!1543577))

(assert (not b!4821383))

(assert (not bs!1162001))

(assert (not b!4821444))

(assert (not d!1543645))

(assert (not b!4821342))

(assert (not b_lambda!189101))

(assert (not b!4821353))

(assert (not b!4821334))

(assert (not b!4821210))

(assert (not bs!1162009))

(assert (not b!4821336))

(assert (not b!4821414))

(assert (not d!1543565))

(assert (not b!4821269))

(assert (not bs!1162004))

(assert (not b!4821324))

(assert (not d!1543583))

(assert (not b!4821396))

(assert (not b!4821237))

(assert (not bm!336134))

(assert (not b!4821272))

(assert (not b!4821402))

(assert (not b!4821306))

(assert (not b_lambda!189103))

(assert (not b_lambda!189085))

(assert (not d!1543555))

(assert tp_is_empty!34385)

(assert (not d!1543537))

(assert (not d!1543679))

(assert (not b!4821351))

(assert (not d!1543553))

(assert (not bs!1162002))

(assert (not d!1543541))

(assert (not d!1543683))

(assert (not b!4821232))

(assert (not bs!1162008))

(assert (not d!1543635))

(assert (not b!4821216))

(assert (not b!4821462))

(assert (not b!4821398))

(assert (not b!4821397))

(assert (not b!4821385))

(assert (not b!4821405))

(assert (not b!4821394))

(assert (not b!4821377))

(assert (not d!1543695))

(assert (not bs!1162003))

(assert (not b_lambda!189097))

(assert (not b!4821297))

(assert (not bm!336124))

(assert (not b!4821395))

(assert (not b!4821274))

(assert (not b_lambda!189095))

(assert (not b!4821264))

(assert (not b!4821362))

(assert (not b!4821208))

(assert (not bs!1162007))

(assert (not d!1543585))

(assert (not b!4821262))

(assert (not b_lambda!189107))

(assert (not d!1543529))

(assert (not b!4821309))

(assert (not b!4821317))

(assert (not b_lambda!189067))

(assert (not bm!336131))

(assert (not b!4821370))

(assert (not d!1543663))

(assert (not bm!336128))

(assert (not b!4821382))

(assert (not b!4821315))

(assert (not b!4821365))

(assert (not b!4821445))

(assert (not bm!336127))

(assert (not b!4821307))

(assert (not b_lambda!189099))

(assert (not d!1543619))

(assert (not bm!336125))

(assert (not d!1543655))

(assert (not bm!336129))

(assert (not b!4821320))

(assert (not d!1543631))

(assert (not d!1543539))

(assert (not b!4821217))

(assert (not b!4821304))

(assert (not d!1543535))

(assert (not d!1543623))

(assert (not b!4821273))

(assert (not b!4821238))

(assert (not b!4821359))

(assert (not b!4821290))

(assert (not b!4821277))

(assert (not d!1543675))

(assert (not d!1543579))

(assert (not b!4821201))

(assert (not bm!336137))

(assert (not b!4821390))

(assert (not d!1543589))

(assert (not d!1543569))

(assert (not b!4821417))

(assert (not b!4821318))

(assert (not d!1543531))

(assert (not d!1543673))

(assert (not b!4821220))

(assert (not b!4821214))

(assert (not b!4821379))

(assert (not d!1543665))

(assert (not d!1543575))

(assert (not bm!336126))

(assert (not bs!1162012))

(assert (not d!1543659))

(assert (not bm!336130))

(assert (not d!1543629))

(assert (not b!4821404))

(assert (not b!4821215))

(assert (not b!4821340))

(assert (not b_lambda!189083))

(assert (not b!4821299))

(assert (not b!4821303))

(assert (not b!4821366))

(assert (not d!1543633))

(assert (not b!4821284))

(assert (not b!4821401))

(assert (not b!4821375))

(assert (not b!4821183))

(assert (not b!4821338))

(assert (not b!4821313))

(assert (not d!1543545))

(assert (not b!4821267))

(assert (not d!1543563))

(assert (not b_lambda!189057))

(assert (not b!4821294))

(assert (not b!4821332))

(assert (not d!1543615))

(assert (not b!4821209))

(assert (not b!4821415))

(assert (not bs!1162011))

(assert (not b!4821344))

(assert (not d!1543557))

(assert (not d!1543693))

(assert tp_is_empty!34389)

(assert (not d!1543591))

(assert (not b!4821241))

(assert (not b!4821322))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

