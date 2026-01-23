; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473460 () Bool)

(assert start!473460)

(declare-fun b!4685301 () Bool)

(declare-fun e!2923053 () Bool)

(declare-fun e!2923059 () Bool)

(assert (=> b!4685301 (= e!2923053 (not e!2923059))))

(declare-fun res!1975434 () Bool)

(assert (=> b!4685301 (=> res!1975434 e!2923059)))

(declare-datatypes ((K!13725 0))(
  ( (K!13726 (val!19251 Int)) )
))
(declare-datatypes ((V!13971 0))(
  ( (V!13972 (val!19252 Int)) )
))
(declare-datatypes ((tuple2!53714 0))(
  ( (tuple2!53715 (_1!30151 K!13725) (_2!30151 V!13971)) )
))
(declare-datatypes ((List!52469 0))(
  ( (Nil!52345) (Cons!52345 (h!58574 tuple2!53714) (t!359631 List!52469)) )
))
(declare-fun oldBucket!34 () List!52469)

(declare-fun key!4653 () K!13725)

(get-info :version)

(assert (=> b!4685301 (= res!1975434 (or (and ((_ is Cons!52345) oldBucket!34) (= (_1!30151 (h!58574 oldBucket!34)) key!4653)) (not ((_ is Cons!52345) oldBucket!34)) (= (_1!30151 (h!58574 oldBucket!34)) key!4653)))))

(declare-fun e!2923052 () Bool)

(assert (=> b!4685301 e!2923052))

(declare-fun res!1975438 () Bool)

(assert (=> b!4685301 (=> (not res!1975438) (not e!2923052))))

(declare-datatypes ((tuple2!53716 0))(
  ( (tuple2!53717 (_1!30152 (_ BitVec 64)) (_2!30152 List!52469)) )
))
(declare-datatypes ((List!52470 0))(
  ( (Nil!52346) (Cons!52346 (h!58575 tuple2!53716) (t!359632 List!52470)) )
))
(declare-datatypes ((ListLongMap!4079 0))(
  ( (ListLongMap!4080 (toList!5549 List!52470)) )
))
(declare-fun lm!2023 () ListLongMap!4079)

(declare-fun tail!8526 (ListLongMap!4079) ListLongMap!4079)

(assert (=> b!4685301 (= res!1975438 (= (t!359632 (toList!5549 lm!2023)) (toList!5549 (tail!8526 lm!2023))))))

(declare-fun b!4685302 () Bool)

(declare-fun e!2923060 () Bool)

(declare-fun e!2923054 () Bool)

(assert (=> b!4685302 (= e!2923060 e!2923054)))

(declare-fun res!1975435 () Bool)

(assert (=> b!4685302 (=> res!1975435 e!2923054)))

(declare-fun lt!1844464 () List!52469)

(declare-fun removePairForKey!1425 (List!52469 K!13725) List!52469)

(declare-fun tail!8527 (List!52469) List!52469)

(assert (=> b!4685302 (= res!1975435 (not (= (removePairForKey!1425 (tail!8527 oldBucket!34) key!4653) lt!1844464)))))

(declare-fun newBucket!218 () List!52469)

(assert (=> b!4685302 (= lt!1844464 (tail!8527 newBucket!218))))

(declare-fun e!2923058 () Bool)

(declare-fun tp_is_empty!30615 () Bool)

(declare-fun b!4685303 () Bool)

(declare-fun tp_is_empty!30613 () Bool)

(declare-fun tp!1345541 () Bool)

(assert (=> b!4685303 (= e!2923058 (and tp_is_empty!30613 tp_is_empty!30615 tp!1345541))))

(declare-fun b!4685305 () Bool)

(declare-fun res!1975428 () Bool)

(declare-fun e!2923055 () Bool)

(assert (=> b!4685305 (=> (not res!1975428) (not e!2923055))))

(declare-datatypes ((Hashable!6199 0))(
  ( (HashableExt!6198 (__x!31902 Int)) )
))
(declare-fun hashF!1323 () Hashable!6199)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1656 (List!52469 (_ BitVec 64) Hashable!6199) Bool)

(assert (=> b!4685305 (= res!1975428 (allKeysSameHash!1656 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4685306 () Bool)

(declare-fun res!1975441 () Bool)

(assert (=> b!4685306 (=> (not res!1975441) (not e!2923055))))

(declare-fun noDuplicateKeys!1830 (List!52469) Bool)

(assert (=> b!4685306 (= res!1975441 (noDuplicateKeys!1830 oldBucket!34))))

(declare-fun b!4685307 () Bool)

(assert (=> b!4685307 (= e!2923059 e!2923060)))

(declare-fun res!1975437 () Bool)

(assert (=> b!4685307 (=> res!1975437 e!2923060)))

(declare-fun containsKey!2997 (List!52469 K!13725) Bool)

(assert (=> b!4685307 (= res!1975437 (not (containsKey!2997 (t!359631 oldBucket!34) key!4653)))))

(assert (=> b!4685307 (containsKey!2997 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!123193 0))(
  ( (Unit!123194) )
))
(declare-fun lt!1844466 () Unit!123193)

(declare-fun lemmaGetPairDefinedThenContainsKey!182 (List!52469 K!13725 Hashable!6199) Unit!123193)

(assert (=> b!4685307 (= lt!1844466 (lemmaGetPairDefinedThenContainsKey!182 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1844458 () List!52469)

(declare-datatypes ((Option!12021 0))(
  ( (None!12020) (Some!12020 (v!46403 tuple2!53714)) )
))
(declare-fun isDefined!9276 (Option!12021) Bool)

(declare-fun getPair!434 (List!52469 K!13725) Option!12021)

(assert (=> b!4685307 (isDefined!9276 (getPair!434 lt!1844458 key!4653))))

(declare-fun lambda!205845 () Int)

(declare-fun lt!1844456 () Unit!123193)

(declare-fun lt!1844460 () tuple2!53716)

(declare-fun forallContained!3388 (List!52470 Int tuple2!53716) Unit!123193)

(assert (=> b!4685307 (= lt!1844456 (forallContained!3388 (toList!5549 lm!2023) lambda!205845 lt!1844460))))

(declare-fun contains!15504 (List!52470 tuple2!53716) Bool)

(assert (=> b!4685307 (contains!15504 (toList!5549 lm!2023) lt!1844460)))

(declare-fun lt!1844455 () (_ BitVec 64))

(assert (=> b!4685307 (= lt!1844460 (tuple2!53717 lt!1844455 lt!1844458))))

(declare-fun lt!1844459 () Unit!123193)

(declare-fun lemmaGetValueImpliesTupleContained!239 (ListLongMap!4079 (_ BitVec 64) List!52469) Unit!123193)

(assert (=> b!4685307 (= lt!1844459 (lemmaGetValueImpliesTupleContained!239 lm!2023 lt!1844455 lt!1844458))))

(declare-fun apply!12313 (ListLongMap!4079 (_ BitVec 64)) List!52469)

(assert (=> b!4685307 (= lt!1844458 (apply!12313 lm!2023 lt!1844455))))

(declare-fun contains!15505 (ListLongMap!4079 (_ BitVec 64)) Bool)

(assert (=> b!4685307 (contains!15505 lm!2023 lt!1844455)))

(declare-fun lt!1844463 () Unit!123193)

(declare-fun lemmaInGenMapThenLongMapContainsHash!640 (ListLongMap!4079 K!13725 Hashable!6199) Unit!123193)

(assert (=> b!4685307 (= lt!1844463 (lemmaInGenMapThenLongMapContainsHash!640 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1844465 () Unit!123193)

(declare-fun lemmaInGenMapThenGetPairDefined!230 (ListLongMap!4079 K!13725 Hashable!6199) Unit!123193)

(assert (=> b!4685307 (= lt!1844465 (lemmaInGenMapThenGetPairDefined!230 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4685308 () Bool)

(declare-fun forall!11281 (List!52470 Int) Bool)

(assert (=> b!4685308 (= e!2923054 (forall!11281 (t!359632 (toList!5549 lm!2023)) lambda!205845))))

(declare-fun lt!1844461 () List!52470)

(declare-datatypes ((ListMap!4913 0))(
  ( (ListMap!4914 (toList!5550 List!52469)) )
))
(declare-fun contains!15506 (ListMap!4913 K!13725) Bool)

(declare-fun extractMap!1856 (List!52470) ListMap!4913)

(assert (=> b!4685308 (contains!15506 (extractMap!1856 lt!1844461) key!4653)))

(declare-fun lt!1844457 () Unit!123193)

(declare-fun lemmaListContainsThenExtractedMapContains!422 (ListLongMap!4079 K!13725 Hashable!6199) Unit!123193)

(assert (=> b!4685308 (= lt!1844457 (lemmaListContainsThenExtractedMapContains!422 (ListLongMap!4080 lt!1844461) key!4653 hashF!1323))))

(assert (=> b!4685308 (= lt!1844461 (Cons!52346 (tuple2!53717 hash!405 (t!359631 oldBucket!34)) (t!359632 (toList!5549 lm!2023))))))

(declare-fun b!4685309 () Bool)

(declare-fun res!1975430 () Bool)

(assert (=> b!4685309 (=> (not res!1975430) (not e!2923053))))

(declare-fun allKeysSameHashInMap!1744 (ListLongMap!4079 Hashable!6199) Bool)

(assert (=> b!4685309 (= res!1975430 (allKeysSameHashInMap!1744 lm!2023 hashF!1323))))

(declare-fun b!4685310 () Bool)

(declare-fun res!1975429 () Bool)

(assert (=> b!4685310 (=> res!1975429 e!2923054)))

(assert (=> b!4685310 (= res!1975429 (not (= (removePairForKey!1425 (t!359631 oldBucket!34) key!4653) lt!1844464)))))

(declare-fun b!4685311 () Bool)

(declare-fun res!1975427 () Bool)

(assert (=> b!4685311 (=> (not res!1975427) (not e!2923053))))

(declare-fun head!9924 (List!52470) tuple2!53716)

(assert (=> b!4685311 (= res!1975427 (= (head!9924 (toList!5549 lm!2023)) (tuple2!53717 hash!405 oldBucket!34)))))

(declare-fun b!4685312 () Bool)

(declare-fun e!2923051 () Bool)

(declare-fun tp!1345539 () Bool)

(assert (=> b!4685312 (= e!2923051 tp!1345539)))

(declare-fun b!4685313 () Bool)

(declare-fun res!1975433 () Bool)

(assert (=> b!4685313 (=> (not res!1975433) (not e!2923053))))

(assert (=> b!4685313 (= res!1975433 (allKeysSameHash!1656 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4685314 () Bool)

(declare-fun res!1975426 () Bool)

(assert (=> b!4685314 (=> (not res!1975426) (not e!2923055))))

(assert (=> b!4685314 (= res!1975426 (noDuplicateKeys!1830 newBucket!218))))

(declare-fun b!4685315 () Bool)

(declare-fun e!2923057 () Bool)

(assert (=> b!4685315 (= e!2923055 e!2923057)))

(declare-fun res!1975431 () Bool)

(assert (=> b!4685315 (=> (not res!1975431) (not e!2923057))))

(declare-fun lt!1844462 () ListMap!4913)

(assert (=> b!4685315 (= res!1975431 (contains!15506 lt!1844462 key!4653))))

(assert (=> b!4685315 (= lt!1844462 (extractMap!1856 (toList!5549 lm!2023)))))

(declare-fun e!2923056 () Bool)

(declare-fun tp!1345540 () Bool)

(declare-fun b!4685304 () Bool)

(assert (=> b!4685304 (= e!2923056 (and tp_is_empty!30613 tp_is_empty!30615 tp!1345540))))

(declare-fun res!1975440 () Bool)

(assert (=> start!473460 (=> (not res!1975440) (not e!2923055))))

(assert (=> start!473460 (= res!1975440 (forall!11281 (toList!5549 lm!2023) lambda!205845))))

(assert (=> start!473460 e!2923055))

(declare-fun inv!67599 (ListLongMap!4079) Bool)

(assert (=> start!473460 (and (inv!67599 lm!2023) e!2923051)))

(assert (=> start!473460 tp_is_empty!30613))

(assert (=> start!473460 e!2923058))

(assert (=> start!473460 true))

(assert (=> start!473460 e!2923056))

(declare-fun b!4685316 () Bool)

(assert (=> b!4685316 (= e!2923057 e!2923053)))

(declare-fun res!1975432 () Bool)

(assert (=> b!4685316 (=> (not res!1975432) (not e!2923053))))

(assert (=> b!4685316 (= res!1975432 (= lt!1844455 hash!405))))

(declare-fun hash!4025 (Hashable!6199 K!13725) (_ BitVec 64))

(assert (=> b!4685316 (= lt!1844455 (hash!4025 hashF!1323 key!4653))))

(declare-fun b!4685317 () Bool)

(declare-fun addToMapMapFromBucket!1262 (List!52469 ListMap!4913) ListMap!4913)

(assert (=> b!4685317 (= e!2923052 (= lt!1844462 (addToMapMapFromBucket!1262 (_2!30152 (h!58575 (toList!5549 lm!2023))) (extractMap!1856 (t!359632 (toList!5549 lm!2023))))))))

(declare-fun b!4685318 () Bool)

(declare-fun res!1975436 () Bool)

(assert (=> b!4685318 (=> (not res!1975436) (not e!2923055))))

(assert (=> b!4685318 (= res!1975436 (= (removePairForKey!1425 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4685319 () Bool)

(declare-fun res!1975439 () Bool)

(assert (=> b!4685319 (=> (not res!1975439) (not e!2923053))))

(assert (=> b!4685319 (= res!1975439 ((_ is Cons!52346) (toList!5549 lm!2023)))))

(assert (= (and start!473460 res!1975440) b!4685306))

(assert (= (and b!4685306 res!1975441) b!4685314))

(assert (= (and b!4685314 res!1975426) b!4685318))

(assert (= (and b!4685318 res!1975436) b!4685305))

(assert (= (and b!4685305 res!1975428) b!4685315))

(assert (= (and b!4685315 res!1975431) b!4685316))

(assert (= (and b!4685316 res!1975432) b!4685313))

(assert (= (and b!4685313 res!1975433) b!4685309))

(assert (= (and b!4685309 res!1975430) b!4685311))

(assert (= (and b!4685311 res!1975427) b!4685319))

(assert (= (and b!4685319 res!1975439) b!4685301))

(assert (= (and b!4685301 res!1975438) b!4685317))

(assert (= (and b!4685301 (not res!1975434)) b!4685307))

(assert (= (and b!4685307 (not res!1975437)) b!4685302))

(assert (= (and b!4685302 (not res!1975435)) b!4685310))

(assert (= (and b!4685310 (not res!1975429)) b!4685308))

(assert (= start!473460 b!4685312))

(assert (= (and start!473460 ((_ is Cons!52345) oldBucket!34)) b!4685303))

(assert (= (and start!473460 ((_ is Cons!52345) newBucket!218)) b!4685304))

(declare-fun m!5584051 () Bool)

(assert (=> b!4685311 m!5584051))

(declare-fun m!5584053 () Bool)

(assert (=> b!4685313 m!5584053))

(declare-fun m!5584055 () Bool)

(assert (=> b!4685306 m!5584055))

(declare-fun m!5584057 () Bool)

(assert (=> b!4685317 m!5584057))

(assert (=> b!4685317 m!5584057))

(declare-fun m!5584059 () Bool)

(assert (=> b!4685317 m!5584059))

(declare-fun m!5584061 () Bool)

(assert (=> b!4685302 m!5584061))

(assert (=> b!4685302 m!5584061))

(declare-fun m!5584063 () Bool)

(assert (=> b!4685302 m!5584063))

(declare-fun m!5584065 () Bool)

(assert (=> b!4685302 m!5584065))

(declare-fun m!5584067 () Bool)

(assert (=> b!4685308 m!5584067))

(declare-fun m!5584069 () Bool)

(assert (=> b!4685308 m!5584069))

(assert (=> b!4685308 m!5584069))

(declare-fun m!5584071 () Bool)

(assert (=> b!4685308 m!5584071))

(declare-fun m!5584073 () Bool)

(assert (=> b!4685308 m!5584073))

(declare-fun m!5584075 () Bool)

(assert (=> b!4685305 m!5584075))

(declare-fun m!5584077 () Bool)

(assert (=> b!4685315 m!5584077))

(declare-fun m!5584079 () Bool)

(assert (=> b!4685315 m!5584079))

(declare-fun m!5584081 () Bool)

(assert (=> start!473460 m!5584081))

(declare-fun m!5584083 () Bool)

(assert (=> start!473460 m!5584083))

(declare-fun m!5584085 () Bool)

(assert (=> b!4685309 m!5584085))

(declare-fun m!5584087 () Bool)

(assert (=> b!4685307 m!5584087))

(declare-fun m!5584089 () Bool)

(assert (=> b!4685307 m!5584089))

(declare-fun m!5584091 () Bool)

(assert (=> b!4685307 m!5584091))

(declare-fun m!5584093 () Bool)

(assert (=> b!4685307 m!5584093))

(declare-fun m!5584095 () Bool)

(assert (=> b!4685307 m!5584095))

(declare-fun m!5584097 () Bool)

(assert (=> b!4685307 m!5584097))

(declare-fun m!5584099 () Bool)

(assert (=> b!4685307 m!5584099))

(declare-fun m!5584101 () Bool)

(assert (=> b!4685307 m!5584101))

(declare-fun m!5584103 () Bool)

(assert (=> b!4685307 m!5584103))

(declare-fun m!5584105 () Bool)

(assert (=> b!4685307 m!5584105))

(declare-fun m!5584107 () Bool)

(assert (=> b!4685307 m!5584107))

(assert (=> b!4685307 m!5584099))

(declare-fun m!5584109 () Bool)

(assert (=> b!4685307 m!5584109))

(declare-fun m!5584111 () Bool)

(assert (=> b!4685301 m!5584111))

(declare-fun m!5584113 () Bool)

(assert (=> b!4685316 m!5584113))

(declare-fun m!5584115 () Bool)

(assert (=> b!4685310 m!5584115))

(declare-fun m!5584117 () Bool)

(assert (=> b!4685314 m!5584117))

(declare-fun m!5584119 () Bool)

(assert (=> b!4685318 m!5584119))

(check-sat (not b!4685302) (not b!4685309) (not b!4685310) (not b!4685306) (not b!4685315) (not b!4685303) (not b!4685317) tp_is_empty!30615 (not b!4685311) (not b!4685318) (not start!473460) (not b!4685313) (not b!4685312) (not b!4685314) (not b!4685307) (not b!4685305) tp_is_empty!30613 (not b!4685308) (not b!4685301) (not b!4685304) (not b!4685316))
(check-sat)
(get-model)

(declare-fun d!1488905 () Bool)

(assert (=> d!1488905 (= (head!9924 (toList!5549 lm!2023)) (h!58575 (toList!5549 lm!2023)))))

(assert (=> b!4685311 d!1488905))

(declare-fun d!1488907 () Bool)

(declare-fun res!1975446 () Bool)

(declare-fun e!2923065 () Bool)

(assert (=> d!1488907 (=> res!1975446 e!2923065)))

(assert (=> d!1488907 (= res!1975446 ((_ is Nil!52346) (toList!5549 lm!2023)))))

(assert (=> d!1488907 (= (forall!11281 (toList!5549 lm!2023) lambda!205845) e!2923065)))

(declare-fun b!4685324 () Bool)

(declare-fun e!2923066 () Bool)

(assert (=> b!4685324 (= e!2923065 e!2923066)))

(declare-fun res!1975447 () Bool)

(assert (=> b!4685324 (=> (not res!1975447) (not e!2923066))))

(declare-fun dynLambda!21696 (Int tuple2!53716) Bool)

(assert (=> b!4685324 (= res!1975447 (dynLambda!21696 lambda!205845 (h!58575 (toList!5549 lm!2023))))))

(declare-fun b!4685325 () Bool)

(assert (=> b!4685325 (= e!2923066 (forall!11281 (t!359632 (toList!5549 lm!2023)) lambda!205845))))

(assert (= (and d!1488907 (not res!1975446)) b!4685324))

(assert (= (and b!4685324 res!1975447) b!4685325))

(declare-fun b_lambda!176813 () Bool)

(assert (=> (not b_lambda!176813) (not b!4685324)))

(declare-fun m!5584121 () Bool)

(assert (=> b!4685324 m!5584121))

(assert (=> b!4685325 m!5584067))

(assert (=> start!473460 d!1488907))

(declare-fun d!1488909 () Bool)

(declare-fun isStrictlySorted!633 (List!52470) Bool)

(assert (=> d!1488909 (= (inv!67599 lm!2023) (isStrictlySorted!633 (toList!5549 lm!2023)))))

(declare-fun bs!1084048 () Bool)

(assert (= bs!1084048 d!1488909))

(declare-fun m!5584123 () Bool)

(assert (=> bs!1084048 m!5584123))

(assert (=> start!473460 d!1488909))

(declare-fun d!1488911 () Bool)

(declare-fun tail!8528 (List!52470) List!52470)

(assert (=> d!1488911 (= (tail!8526 lm!2023) (ListLongMap!4080 (tail!8528 (toList!5549 lm!2023))))))

(declare-fun bs!1084049 () Bool)

(assert (= bs!1084049 d!1488911))

(declare-fun m!5584125 () Bool)

(assert (=> bs!1084049 m!5584125))

(assert (=> b!4685301 d!1488911))

(declare-fun b!4685343 () Bool)

(declare-fun e!2923077 () List!52469)

(declare-fun e!2923078 () List!52469)

(assert (=> b!4685343 (= e!2923077 e!2923078)))

(declare-fun c!801191 () Bool)

(assert (=> b!4685343 (= c!801191 ((_ is Cons!52345) (t!359631 oldBucket!34)))))

(declare-fun d!1488913 () Bool)

(declare-fun lt!1844469 () List!52469)

(assert (=> d!1488913 (not (containsKey!2997 lt!1844469 key!4653))))

(assert (=> d!1488913 (= lt!1844469 e!2923077)))

(declare-fun c!801190 () Bool)

(assert (=> d!1488913 (= c!801190 (and ((_ is Cons!52345) (t!359631 oldBucket!34)) (= (_1!30151 (h!58574 (t!359631 oldBucket!34))) key!4653)))))

(assert (=> d!1488913 (noDuplicateKeys!1830 (t!359631 oldBucket!34))))

(assert (=> d!1488913 (= (removePairForKey!1425 (t!359631 oldBucket!34) key!4653) lt!1844469)))

(declare-fun b!4685345 () Bool)

(assert (=> b!4685345 (= e!2923078 Nil!52345)))

(declare-fun b!4685342 () Bool)

(assert (=> b!4685342 (= e!2923077 (t!359631 (t!359631 oldBucket!34)))))

(declare-fun b!4685344 () Bool)

(assert (=> b!4685344 (= e!2923078 (Cons!52345 (h!58574 (t!359631 oldBucket!34)) (removePairForKey!1425 (t!359631 (t!359631 oldBucket!34)) key!4653)))))

(assert (= (and d!1488913 c!801190) b!4685342))

(assert (= (and d!1488913 (not c!801190)) b!4685343))

(assert (= (and b!4685343 c!801191) b!4685344))

(assert (= (and b!4685343 (not c!801191)) b!4685345))

(declare-fun m!5584133 () Bool)

(assert (=> d!1488913 m!5584133))

(declare-fun m!5584135 () Bool)

(assert (=> d!1488913 m!5584135))

(declare-fun m!5584137 () Bool)

(assert (=> b!4685344 m!5584137))

(assert (=> b!4685310 d!1488913))

(declare-fun d!1488921 () Bool)

(declare-fun res!1975458 () Bool)

(declare-fun e!2923089 () Bool)

(assert (=> d!1488921 (=> res!1975458 e!2923089)))

(assert (=> d!1488921 (= res!1975458 (not ((_ is Cons!52345) newBucket!218)))))

(assert (=> d!1488921 (= (noDuplicateKeys!1830 newBucket!218) e!2923089)))

(declare-fun b!4685362 () Bool)

(declare-fun e!2923090 () Bool)

(assert (=> b!4685362 (= e!2923089 e!2923090)))

(declare-fun res!1975459 () Bool)

(assert (=> b!4685362 (=> (not res!1975459) (not e!2923090))))

(assert (=> b!4685362 (= res!1975459 (not (containsKey!2997 (t!359631 newBucket!218) (_1!30151 (h!58574 newBucket!218)))))))

(declare-fun b!4685363 () Bool)

(assert (=> b!4685363 (= e!2923090 (noDuplicateKeys!1830 (t!359631 newBucket!218)))))

(assert (= (and d!1488921 (not res!1975458)) b!4685362))

(assert (= (and b!4685362 res!1975459) b!4685363))

(declare-fun m!5584145 () Bool)

(assert (=> b!4685362 m!5584145))

(declare-fun m!5584149 () Bool)

(assert (=> b!4685363 m!5584149))

(assert (=> b!4685314 d!1488921))

(declare-fun b!4685369 () Bool)

(declare-fun e!2923091 () List!52469)

(declare-fun e!2923092 () List!52469)

(assert (=> b!4685369 (= e!2923091 e!2923092)))

(declare-fun c!801199 () Bool)

(assert (=> b!4685369 (= c!801199 ((_ is Cons!52345) (tail!8527 oldBucket!34)))))

(declare-fun d!1488933 () Bool)

(declare-fun lt!1844473 () List!52469)

(assert (=> d!1488933 (not (containsKey!2997 lt!1844473 key!4653))))

(assert (=> d!1488933 (= lt!1844473 e!2923091)))

(declare-fun c!801198 () Bool)

(assert (=> d!1488933 (= c!801198 (and ((_ is Cons!52345) (tail!8527 oldBucket!34)) (= (_1!30151 (h!58574 (tail!8527 oldBucket!34))) key!4653)))))

(assert (=> d!1488933 (noDuplicateKeys!1830 (tail!8527 oldBucket!34))))

(assert (=> d!1488933 (= (removePairForKey!1425 (tail!8527 oldBucket!34) key!4653) lt!1844473)))

(declare-fun b!4685371 () Bool)

(assert (=> b!4685371 (= e!2923092 Nil!52345)))

(declare-fun b!4685368 () Bool)

(assert (=> b!4685368 (= e!2923091 (t!359631 (tail!8527 oldBucket!34)))))

(declare-fun b!4685370 () Bool)

(assert (=> b!4685370 (= e!2923092 (Cons!52345 (h!58574 (tail!8527 oldBucket!34)) (removePairForKey!1425 (t!359631 (tail!8527 oldBucket!34)) key!4653)))))

(assert (= (and d!1488933 c!801198) b!4685368))

(assert (= (and d!1488933 (not c!801198)) b!4685369))

(assert (= (and b!4685369 c!801199) b!4685370))

(assert (= (and b!4685369 (not c!801199)) b!4685371))

(declare-fun m!5584151 () Bool)

(assert (=> d!1488933 m!5584151))

(assert (=> d!1488933 m!5584061))

(declare-fun m!5584153 () Bool)

(assert (=> d!1488933 m!5584153))

(declare-fun m!5584155 () Bool)

(assert (=> b!4685370 m!5584155))

(assert (=> b!4685302 d!1488933))

(declare-fun d!1488935 () Bool)

(assert (=> d!1488935 (= (tail!8527 oldBucket!34) (t!359631 oldBucket!34))))

(assert (=> b!4685302 d!1488935))

(declare-fun d!1488937 () Bool)

(assert (=> d!1488937 (= (tail!8527 newBucket!218) (t!359631 newBucket!218))))

(assert (=> b!4685302 d!1488937))

(declare-fun d!1488939 () Bool)

(assert (=> d!1488939 true))

(assert (=> d!1488939 true))

(declare-fun lambda!205854 () Int)

(declare-fun forall!11283 (List!52469 Int) Bool)

(assert (=> d!1488939 (= (allKeysSameHash!1656 newBucket!218 hash!405 hashF!1323) (forall!11283 newBucket!218 lambda!205854))))

(declare-fun bs!1084053 () Bool)

(assert (= bs!1084053 d!1488939))

(declare-fun m!5584157 () Bool)

(assert (=> bs!1084053 m!5584157))

(assert (=> b!4685313 d!1488939))

(declare-fun d!1488941 () Bool)

(declare-fun hash!4026 (Hashable!6199 K!13725) (_ BitVec 64))

(assert (=> d!1488941 (= (hash!4025 hashF!1323 key!4653) (hash!4026 hashF!1323 key!4653))))

(declare-fun bs!1084054 () Bool)

(assert (= bs!1084054 d!1488941))

(declare-fun m!5584159 () Bool)

(assert (=> bs!1084054 m!5584159))

(assert (=> b!4685316 d!1488941))

(declare-fun d!1488943 () Bool)

(declare-fun res!1975460 () Bool)

(declare-fun e!2923093 () Bool)

(assert (=> d!1488943 (=> res!1975460 e!2923093)))

(assert (=> d!1488943 (= res!1975460 (not ((_ is Cons!52345) oldBucket!34)))))

(assert (=> d!1488943 (= (noDuplicateKeys!1830 oldBucket!34) e!2923093)))

(declare-fun b!4685376 () Bool)

(declare-fun e!2923094 () Bool)

(assert (=> b!4685376 (= e!2923093 e!2923094)))

(declare-fun res!1975461 () Bool)

(assert (=> b!4685376 (=> (not res!1975461) (not e!2923094))))

(assert (=> b!4685376 (= res!1975461 (not (containsKey!2997 (t!359631 oldBucket!34) (_1!30151 (h!58574 oldBucket!34)))))))

(declare-fun b!4685377 () Bool)

(assert (=> b!4685377 (= e!2923094 (noDuplicateKeys!1830 (t!359631 oldBucket!34)))))

(assert (= (and d!1488943 (not res!1975460)) b!4685376))

(assert (= (and b!4685376 res!1975461) b!4685377))

(declare-fun m!5584161 () Bool)

(assert (=> b!4685376 m!5584161))

(assert (=> b!4685377 m!5584135))

(assert (=> b!4685306 d!1488943))

(declare-fun bs!1084073 () Bool)

(declare-fun b!4685479 () Bool)

(assert (= bs!1084073 (and b!4685479 d!1488939)))

(declare-fun lambda!205922 () Int)

(assert (=> bs!1084073 (not (= lambda!205922 lambda!205854))))

(assert (=> b!4685479 true))

(declare-fun bs!1084074 () Bool)

(declare-fun b!4685481 () Bool)

(assert (= bs!1084074 (and b!4685481 d!1488939)))

(declare-fun lambda!205923 () Int)

(assert (=> bs!1084074 (not (= lambda!205923 lambda!205854))))

(declare-fun bs!1084075 () Bool)

(assert (= bs!1084075 (and b!4685481 b!4685479)))

(assert (=> bs!1084075 (= lambda!205923 lambda!205922)))

(assert (=> b!4685481 true))

(declare-fun lambda!205924 () Int)

(assert (=> bs!1084074 (not (= lambda!205924 lambda!205854))))

(declare-fun lt!1844630 () ListMap!4913)

(assert (=> bs!1084075 (= (= lt!1844630 (extractMap!1856 (t!359632 (toList!5549 lm!2023)))) (= lambda!205924 lambda!205922))))

(assert (=> b!4685481 (= (= lt!1844630 (extractMap!1856 (t!359632 (toList!5549 lm!2023)))) (= lambda!205924 lambda!205923))))

(assert (=> b!4685481 true))

(declare-fun bs!1084076 () Bool)

(declare-fun d!1488945 () Bool)

(assert (= bs!1084076 (and d!1488945 d!1488939)))

(declare-fun lambda!205925 () Int)

(assert (=> bs!1084076 (not (= lambda!205925 lambda!205854))))

(declare-fun bs!1084077 () Bool)

(assert (= bs!1084077 (and d!1488945 b!4685479)))

(declare-fun lt!1844638 () ListMap!4913)

(assert (=> bs!1084077 (= (= lt!1844638 (extractMap!1856 (t!359632 (toList!5549 lm!2023)))) (= lambda!205925 lambda!205922))))

(declare-fun bs!1084078 () Bool)

(assert (= bs!1084078 (and d!1488945 b!4685481)))

(assert (=> bs!1084078 (= (= lt!1844638 (extractMap!1856 (t!359632 (toList!5549 lm!2023)))) (= lambda!205925 lambda!205923))))

(assert (=> bs!1084078 (= (= lt!1844638 lt!1844630) (= lambda!205925 lambda!205924))))

(assert (=> d!1488945 true))

(declare-fun e!2923157 () Bool)

(assert (=> d!1488945 e!2923157))

(declare-fun res!1975501 () Bool)

(assert (=> d!1488945 (=> (not res!1975501) (not e!2923157))))

(assert (=> d!1488945 (= res!1975501 (forall!11283 (_2!30152 (h!58575 (toList!5549 lm!2023))) lambda!205925))))

(declare-fun e!2923156 () ListMap!4913)

(assert (=> d!1488945 (= lt!1844638 e!2923156)))

(declare-fun c!801229 () Bool)

(assert (=> d!1488945 (= c!801229 ((_ is Nil!52345) (_2!30152 (h!58575 (toList!5549 lm!2023)))))))

(assert (=> d!1488945 (noDuplicateKeys!1830 (_2!30152 (h!58575 (toList!5549 lm!2023))))))

(assert (=> d!1488945 (= (addToMapMapFromBucket!1262 (_2!30152 (h!58575 (toList!5549 lm!2023))) (extractMap!1856 (t!359632 (toList!5549 lm!2023)))) lt!1844638)))

(declare-fun b!4685477 () Bool)

(declare-fun e!2923155 () Bool)

(declare-fun call!327424 () Bool)

(assert (=> b!4685477 (= e!2923155 call!327424)))

(declare-fun b!4685478 () Bool)

(declare-fun res!1975503 () Bool)

(assert (=> b!4685478 (=> (not res!1975503) (not e!2923157))))

(assert (=> b!4685478 (= res!1975503 (forall!11283 (toList!5550 (extractMap!1856 (t!359632 (toList!5549 lm!2023)))) lambda!205925))))

(assert (=> b!4685479 (= e!2923156 (extractMap!1856 (t!359632 (toList!5549 lm!2023))))))

(declare-fun lt!1844641 () Unit!123193)

(declare-fun call!327425 () Unit!123193)

(assert (=> b!4685479 (= lt!1844641 call!327425)))

(declare-fun call!327426 () Bool)

(assert (=> b!4685479 call!327426))

(declare-fun lt!1844639 () Unit!123193)

(assert (=> b!4685479 (= lt!1844639 lt!1844641)))

(assert (=> b!4685479 call!327424))

(declare-fun lt!1844628 () Unit!123193)

(declare-fun Unit!123209 () Unit!123193)

(assert (=> b!4685479 (= lt!1844628 Unit!123209)))

(declare-fun b!4685480 () Bool)

(declare-fun invariantList!1394 (List!52469) Bool)

(assert (=> b!4685480 (= e!2923157 (invariantList!1394 (toList!5550 lt!1844638)))))

(declare-fun bm!327419 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!682 (ListMap!4913) Unit!123193)

(assert (=> bm!327419 (= call!327425 (lemmaContainsAllItsOwnKeys!682 (extractMap!1856 (t!359632 (toList!5549 lm!2023)))))))

(assert (=> b!4685481 (= e!2923156 lt!1844630)))

(declare-fun lt!1844642 () ListMap!4913)

(declare-fun +!2116 (ListMap!4913 tuple2!53714) ListMap!4913)

(assert (=> b!4685481 (= lt!1844642 (+!2116 (extractMap!1856 (t!359632 (toList!5549 lm!2023))) (h!58574 (_2!30152 (h!58575 (toList!5549 lm!2023))))))))

(assert (=> b!4685481 (= lt!1844630 (addToMapMapFromBucket!1262 (t!359631 (_2!30152 (h!58575 (toList!5549 lm!2023)))) (+!2116 (extractMap!1856 (t!359632 (toList!5549 lm!2023))) (h!58574 (_2!30152 (h!58575 (toList!5549 lm!2023)))))))))

(declare-fun lt!1844631 () Unit!123193)

(assert (=> b!4685481 (= lt!1844631 call!327425)))

(assert (=> b!4685481 (forall!11283 (toList!5550 (extractMap!1856 (t!359632 (toList!5549 lm!2023)))) lambda!205923)))

(declare-fun lt!1844637 () Unit!123193)

(assert (=> b!4685481 (= lt!1844637 lt!1844631)))

(assert (=> b!4685481 (forall!11283 (toList!5550 lt!1844642) lambda!205924)))

(declare-fun lt!1844646 () Unit!123193)

(declare-fun Unit!123210 () Unit!123193)

(assert (=> b!4685481 (= lt!1844646 Unit!123210)))

(assert (=> b!4685481 call!327426))

(declare-fun lt!1844633 () Unit!123193)

(declare-fun Unit!123211 () Unit!123193)

(assert (=> b!4685481 (= lt!1844633 Unit!123211)))

(declare-fun lt!1844629 () Unit!123193)

(declare-fun Unit!123212 () Unit!123193)

(assert (=> b!4685481 (= lt!1844629 Unit!123212)))

(declare-fun lt!1844634 () Unit!123193)

(declare-fun forallContained!3390 (List!52469 Int tuple2!53714) Unit!123193)

(assert (=> b!4685481 (= lt!1844634 (forallContained!3390 (toList!5550 lt!1844642) lambda!205924 (h!58574 (_2!30152 (h!58575 (toList!5549 lm!2023))))))))

(assert (=> b!4685481 (contains!15506 lt!1844642 (_1!30151 (h!58574 (_2!30152 (h!58575 (toList!5549 lm!2023))))))))

(declare-fun lt!1844636 () Unit!123193)

(declare-fun Unit!123213 () Unit!123193)

(assert (=> b!4685481 (= lt!1844636 Unit!123213)))

(assert (=> b!4685481 (contains!15506 lt!1844630 (_1!30151 (h!58574 (_2!30152 (h!58575 (toList!5549 lm!2023))))))))

(declare-fun lt!1844632 () Unit!123193)

(declare-fun Unit!123214 () Unit!123193)

(assert (=> b!4685481 (= lt!1844632 Unit!123214)))

(assert (=> b!4685481 (forall!11283 (_2!30152 (h!58575 (toList!5549 lm!2023))) lambda!205924)))

(declare-fun lt!1844635 () Unit!123193)

(declare-fun Unit!123215 () Unit!123193)

(assert (=> b!4685481 (= lt!1844635 Unit!123215)))

(assert (=> b!4685481 (forall!11283 (toList!5550 lt!1844642) lambda!205924)))

(declare-fun lt!1844643 () Unit!123193)

(declare-fun Unit!123216 () Unit!123193)

(assert (=> b!4685481 (= lt!1844643 Unit!123216)))

(declare-fun lt!1844627 () Unit!123193)

(declare-fun Unit!123217 () Unit!123193)

(assert (=> b!4685481 (= lt!1844627 Unit!123217)))

(declare-fun lt!1844626 () Unit!123193)

(declare-fun addForallContainsKeyThenBeforeAdding!681 (ListMap!4913 ListMap!4913 K!13725 V!13971) Unit!123193)

(assert (=> b!4685481 (= lt!1844626 (addForallContainsKeyThenBeforeAdding!681 (extractMap!1856 (t!359632 (toList!5549 lm!2023))) lt!1844630 (_1!30151 (h!58574 (_2!30152 (h!58575 (toList!5549 lm!2023))))) (_2!30151 (h!58574 (_2!30152 (h!58575 (toList!5549 lm!2023)))))))))

(assert (=> b!4685481 (forall!11283 (toList!5550 (extractMap!1856 (t!359632 (toList!5549 lm!2023)))) lambda!205924)))

(declare-fun lt!1844645 () Unit!123193)

(assert (=> b!4685481 (= lt!1844645 lt!1844626)))

(assert (=> b!4685481 (forall!11283 (toList!5550 (extractMap!1856 (t!359632 (toList!5549 lm!2023)))) lambda!205924)))

(declare-fun lt!1844640 () Unit!123193)

(declare-fun Unit!123218 () Unit!123193)

(assert (=> b!4685481 (= lt!1844640 Unit!123218)))

(declare-fun res!1975502 () Bool)

(assert (=> b!4685481 (= res!1975502 (forall!11283 (_2!30152 (h!58575 (toList!5549 lm!2023))) lambda!205924))))

(assert (=> b!4685481 (=> (not res!1975502) (not e!2923155))))

(assert (=> b!4685481 e!2923155))

(declare-fun lt!1844644 () Unit!123193)

(declare-fun Unit!123219 () Unit!123193)

(assert (=> b!4685481 (= lt!1844644 Unit!123219)))

(declare-fun bm!327420 () Bool)

(assert (=> bm!327420 (= call!327426 (forall!11283 (ite c!801229 (toList!5550 (extractMap!1856 (t!359632 (toList!5549 lm!2023)))) (t!359631 (_2!30152 (h!58575 (toList!5549 lm!2023))))) (ite c!801229 lambda!205922 lambda!205924)))))

(declare-fun bm!327421 () Bool)

(assert (=> bm!327421 (= call!327424 (forall!11283 (toList!5550 (extractMap!1856 (t!359632 (toList!5549 lm!2023)))) (ite c!801229 lambda!205922 lambda!205924)))))

(assert (= (and d!1488945 c!801229) b!4685479))

(assert (= (and d!1488945 (not c!801229)) b!4685481))

(assert (= (and b!4685481 res!1975502) b!4685477))

(assert (= (or b!4685479 b!4685481) bm!327419))

(assert (= (or b!4685479 b!4685481) bm!327420))

(assert (= (or b!4685479 b!4685477) bm!327421))

(assert (= (and d!1488945 res!1975501) b!4685478))

(assert (= (and b!4685478 res!1975503) b!4685480))

(declare-fun m!5584265 () Bool)

(assert (=> b!4685480 m!5584265))

(declare-fun m!5584267 () Bool)

(assert (=> d!1488945 m!5584267))

(declare-fun m!5584269 () Bool)

(assert (=> d!1488945 m!5584269))

(assert (=> b!4685481 m!5584057))

(declare-fun m!5584271 () Bool)

(assert (=> b!4685481 m!5584271))

(declare-fun m!5584273 () Bool)

(assert (=> b!4685481 m!5584273))

(declare-fun m!5584275 () Bool)

(assert (=> b!4685481 m!5584275))

(declare-fun m!5584277 () Bool)

(assert (=> b!4685481 m!5584277))

(declare-fun m!5584279 () Bool)

(assert (=> b!4685481 m!5584279))

(declare-fun m!5584281 () Bool)

(assert (=> b!4685481 m!5584281))

(assert (=> b!4685481 m!5584273))

(declare-fun m!5584283 () Bool)

(assert (=> b!4685481 m!5584283))

(declare-fun m!5584285 () Bool)

(assert (=> b!4685481 m!5584285))

(assert (=> b!4685481 m!5584279))

(declare-fun m!5584287 () Bool)

(assert (=> b!4685481 m!5584287))

(assert (=> b!4685481 m!5584057))

(assert (=> b!4685481 m!5584283))

(assert (=> b!4685481 m!5584275))

(declare-fun m!5584289 () Bool)

(assert (=> b!4685481 m!5584289))

(declare-fun m!5584291 () Bool)

(assert (=> bm!327421 m!5584291))

(assert (=> bm!327419 m!5584057))

(declare-fun m!5584293 () Bool)

(assert (=> bm!327419 m!5584293))

(declare-fun m!5584295 () Bool)

(assert (=> bm!327420 m!5584295))

(declare-fun m!5584297 () Bool)

(assert (=> b!4685478 m!5584297))

(assert (=> b!4685317 d!1488945))

(declare-fun bs!1084085 () Bool)

(declare-fun d!1488967 () Bool)

(assert (= bs!1084085 (and d!1488967 start!473460)))

(declare-fun lambda!205935 () Int)

(assert (=> bs!1084085 (= lambda!205935 lambda!205845)))

(declare-fun lt!1844678 () ListMap!4913)

(assert (=> d!1488967 (invariantList!1394 (toList!5550 lt!1844678))))

(declare-fun e!2923174 () ListMap!4913)

(assert (=> d!1488967 (= lt!1844678 e!2923174)))

(declare-fun c!801232 () Bool)

(assert (=> d!1488967 (= c!801232 ((_ is Cons!52346) (t!359632 (toList!5549 lm!2023))))))

(assert (=> d!1488967 (forall!11281 (t!359632 (toList!5549 lm!2023)) lambda!205935)))

(assert (=> d!1488967 (= (extractMap!1856 (t!359632 (toList!5549 lm!2023))) lt!1844678)))

(declare-fun b!4685508 () Bool)

(assert (=> b!4685508 (= e!2923174 (addToMapMapFromBucket!1262 (_2!30152 (h!58575 (t!359632 (toList!5549 lm!2023)))) (extractMap!1856 (t!359632 (t!359632 (toList!5549 lm!2023))))))))

(declare-fun b!4685509 () Bool)

(assert (=> b!4685509 (= e!2923174 (ListMap!4914 Nil!52345))))

(assert (= (and d!1488967 c!801232) b!4685508))

(assert (= (and d!1488967 (not c!801232)) b!4685509))

(declare-fun m!5584325 () Bool)

(assert (=> d!1488967 m!5584325))

(declare-fun m!5584327 () Bool)

(assert (=> d!1488967 m!5584327))

(declare-fun m!5584329 () Bool)

(assert (=> b!4685508 m!5584329))

(assert (=> b!4685508 m!5584329))

(declare-fun m!5584331 () Bool)

(assert (=> b!4685508 m!5584331))

(assert (=> b!4685317 d!1488967))

(declare-fun b!4685559 () Bool)

(assert (=> b!4685559 false))

(declare-fun lt!1844717 () Unit!123193)

(declare-fun lt!1844711 () Unit!123193)

(assert (=> b!4685559 (= lt!1844717 lt!1844711)))

(declare-fun containsKey!3000 (List!52469 K!13725) Bool)

(assert (=> b!4685559 (containsKey!3000 (toList!5550 lt!1844462) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!833 (List!52469 K!13725) Unit!123193)

(assert (=> b!4685559 (= lt!1844711 (lemmaInGetKeysListThenContainsKey!833 (toList!5550 lt!1844462) key!4653))))

(declare-fun e!2923216 () Unit!123193)

(declare-fun Unit!123220 () Unit!123193)

(assert (=> b!4685559 (= e!2923216 Unit!123220)))

(declare-fun bm!327425 () Bool)

(declare-fun call!327430 () Bool)

(declare-datatypes ((List!52472 0))(
  ( (Nil!52348) (Cons!52348 (h!58579 K!13725) (t!359634 List!52472)) )
))
(declare-fun e!2923217 () List!52472)

(declare-fun contains!15509 (List!52472 K!13725) Bool)

(assert (=> bm!327425 (= call!327430 (contains!15509 e!2923217 key!4653))))

(declare-fun c!801243 () Bool)

(declare-fun c!801245 () Bool)

(assert (=> bm!327425 (= c!801243 c!801245)))

(declare-fun b!4685560 () Bool)

(declare-fun e!2923214 () Bool)

(declare-fun keys!18673 (ListMap!4913) List!52472)

(assert (=> b!4685560 (= e!2923214 (not (contains!15509 (keys!18673 lt!1844462) key!4653)))))

(declare-fun b!4685561 () Bool)

(declare-fun e!2923213 () Bool)

(declare-fun e!2923215 () Bool)

(assert (=> b!4685561 (= e!2923213 e!2923215)))

(declare-fun res!1975553 () Bool)

(assert (=> b!4685561 (=> (not res!1975553) (not e!2923215))))

(declare-datatypes ((Option!12024 0))(
  ( (None!12023) (Some!12023 (v!46410 V!13971)) )
))
(declare-fun isDefined!9279 (Option!12024) Bool)

(declare-fun getValueByKey!1748 (List!52469 K!13725) Option!12024)

(assert (=> b!4685561 (= res!1975553 (isDefined!9279 (getValueByKey!1748 (toList!5550 lt!1844462) key!4653)))))

(declare-fun d!1488975 () Bool)

(assert (=> d!1488975 e!2923213))

(declare-fun res!1975554 () Bool)

(assert (=> d!1488975 (=> res!1975554 e!2923213)))

(assert (=> d!1488975 (= res!1975554 e!2923214)))

(declare-fun res!1975552 () Bool)

(assert (=> d!1488975 (=> (not res!1975552) (not e!2923214))))

(declare-fun lt!1844714 () Bool)

(assert (=> d!1488975 (= res!1975552 (not lt!1844714))))

(declare-fun lt!1844715 () Bool)

(assert (=> d!1488975 (= lt!1844714 lt!1844715)))

(declare-fun lt!1844713 () Unit!123193)

(declare-fun e!2923218 () Unit!123193)

(assert (=> d!1488975 (= lt!1844713 e!2923218)))

(assert (=> d!1488975 (= c!801245 lt!1844715)))

(assert (=> d!1488975 (= lt!1844715 (containsKey!3000 (toList!5550 lt!1844462) key!4653))))

(assert (=> d!1488975 (= (contains!15506 lt!1844462 key!4653) lt!1844714)))

(declare-fun b!4685562 () Bool)

(declare-fun Unit!123221 () Unit!123193)

(assert (=> b!4685562 (= e!2923216 Unit!123221)))

(declare-fun b!4685563 () Bool)

(assert (=> b!4685563 (= e!2923215 (contains!15509 (keys!18673 lt!1844462) key!4653))))

(declare-fun b!4685564 () Bool)

(assert (=> b!4685564 (= e!2923217 (keys!18673 lt!1844462))))

(declare-fun b!4685565 () Bool)

(declare-fun lt!1844718 () Unit!123193)

(assert (=> b!4685565 (= e!2923218 lt!1844718)))

(declare-fun lt!1844712 () Unit!123193)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1640 (List!52469 K!13725) Unit!123193)

(assert (=> b!4685565 (= lt!1844712 (lemmaContainsKeyImpliesGetValueByKeyDefined!1640 (toList!5550 lt!1844462) key!4653))))

(assert (=> b!4685565 (isDefined!9279 (getValueByKey!1748 (toList!5550 lt!1844462) key!4653))))

(declare-fun lt!1844716 () Unit!123193)

(assert (=> b!4685565 (= lt!1844716 lt!1844712)))

(declare-fun lemmaInListThenGetKeysListContains!829 (List!52469 K!13725) Unit!123193)

(assert (=> b!4685565 (= lt!1844718 (lemmaInListThenGetKeysListContains!829 (toList!5550 lt!1844462) key!4653))))

(assert (=> b!4685565 call!327430))

(declare-fun b!4685566 () Bool)

(declare-fun getKeysList!834 (List!52469) List!52472)

(assert (=> b!4685566 (= e!2923217 (getKeysList!834 (toList!5550 lt!1844462)))))

(declare-fun b!4685567 () Bool)

(assert (=> b!4685567 (= e!2923218 e!2923216)))

(declare-fun c!801244 () Bool)

(assert (=> b!4685567 (= c!801244 call!327430)))

(assert (= (and d!1488975 c!801245) b!4685565))

(assert (= (and d!1488975 (not c!801245)) b!4685567))

(assert (= (and b!4685567 c!801244) b!4685559))

(assert (= (and b!4685567 (not c!801244)) b!4685562))

(assert (= (or b!4685565 b!4685567) bm!327425))

(assert (= (and bm!327425 c!801243) b!4685566))

(assert (= (and bm!327425 (not c!801243)) b!4685564))

(assert (= (and d!1488975 res!1975552) b!4685560))

(assert (= (and d!1488975 (not res!1975554)) b!4685561))

(assert (= (and b!4685561 res!1975553) b!4685563))

(declare-fun m!5584393 () Bool)

(assert (=> b!4685564 m!5584393))

(declare-fun m!5584395 () Bool)

(assert (=> b!4685565 m!5584395))

(declare-fun m!5584397 () Bool)

(assert (=> b!4685565 m!5584397))

(assert (=> b!4685565 m!5584397))

(declare-fun m!5584399 () Bool)

(assert (=> b!4685565 m!5584399))

(declare-fun m!5584401 () Bool)

(assert (=> b!4685565 m!5584401))

(declare-fun m!5584403 () Bool)

(assert (=> bm!327425 m!5584403))

(declare-fun m!5584405 () Bool)

(assert (=> b!4685559 m!5584405))

(declare-fun m!5584407 () Bool)

(assert (=> b!4685559 m!5584407))

(assert (=> b!4685563 m!5584393))

(assert (=> b!4685563 m!5584393))

(declare-fun m!5584409 () Bool)

(assert (=> b!4685563 m!5584409))

(declare-fun m!5584411 () Bool)

(assert (=> b!4685566 m!5584411))

(assert (=> b!4685561 m!5584397))

(assert (=> b!4685561 m!5584397))

(assert (=> b!4685561 m!5584399))

(assert (=> d!1488975 m!5584405))

(assert (=> b!4685560 m!5584393))

(assert (=> b!4685560 m!5584393))

(assert (=> b!4685560 m!5584409))

(assert (=> b!4685315 d!1488975))

(declare-fun bs!1084101 () Bool)

(declare-fun d!1489003 () Bool)

(assert (= bs!1084101 (and d!1489003 start!473460)))

(declare-fun lambda!205938 () Int)

(assert (=> bs!1084101 (= lambda!205938 lambda!205845)))

(declare-fun bs!1084102 () Bool)

(assert (= bs!1084102 (and d!1489003 d!1488967)))

(assert (=> bs!1084102 (= lambda!205938 lambda!205935)))

(declare-fun lt!1844719 () ListMap!4913)

(assert (=> d!1489003 (invariantList!1394 (toList!5550 lt!1844719))))

(declare-fun e!2923219 () ListMap!4913)

(assert (=> d!1489003 (= lt!1844719 e!2923219)))

(declare-fun c!801246 () Bool)

(assert (=> d!1489003 (= c!801246 ((_ is Cons!52346) (toList!5549 lm!2023)))))

(assert (=> d!1489003 (forall!11281 (toList!5549 lm!2023) lambda!205938)))

(assert (=> d!1489003 (= (extractMap!1856 (toList!5549 lm!2023)) lt!1844719)))

(declare-fun b!4685568 () Bool)

(assert (=> b!4685568 (= e!2923219 (addToMapMapFromBucket!1262 (_2!30152 (h!58575 (toList!5549 lm!2023))) (extractMap!1856 (t!359632 (toList!5549 lm!2023)))))))

(declare-fun b!4685569 () Bool)

(assert (=> b!4685569 (= e!2923219 (ListMap!4914 Nil!52345))))

(assert (= (and d!1489003 c!801246) b!4685568))

(assert (= (and d!1489003 (not c!801246)) b!4685569))

(declare-fun m!5584413 () Bool)

(assert (=> d!1489003 m!5584413))

(declare-fun m!5584415 () Bool)

(assert (=> d!1489003 m!5584415))

(assert (=> b!4685568 m!5584057))

(assert (=> b!4685568 m!5584057))

(assert (=> b!4685568 m!5584059))

(assert (=> b!4685315 d!1489003))

(declare-fun bs!1084103 () Bool)

(declare-fun d!1489005 () Bool)

(assert (= bs!1084103 (and d!1489005 b!4685481)))

(declare-fun lambda!205939 () Int)

(assert (=> bs!1084103 (not (= lambda!205939 lambda!205924))))

(declare-fun bs!1084104 () Bool)

(assert (= bs!1084104 (and d!1489005 d!1488945)))

(assert (=> bs!1084104 (not (= lambda!205939 lambda!205925))))

(declare-fun bs!1084105 () Bool)

(assert (= bs!1084105 (and d!1489005 d!1488939)))

(assert (=> bs!1084105 (= lambda!205939 lambda!205854)))

(assert (=> bs!1084103 (not (= lambda!205939 lambda!205923))))

(declare-fun bs!1084106 () Bool)

(assert (= bs!1084106 (and d!1489005 b!4685479)))

(assert (=> bs!1084106 (not (= lambda!205939 lambda!205922))))

(assert (=> d!1489005 true))

(assert (=> d!1489005 true))

(assert (=> d!1489005 (= (allKeysSameHash!1656 oldBucket!34 hash!405 hashF!1323) (forall!11283 oldBucket!34 lambda!205939))))

(declare-fun bs!1084107 () Bool)

(assert (= bs!1084107 d!1489005))

(declare-fun m!5584417 () Bool)

(assert (=> bs!1084107 m!5584417))

(assert (=> b!4685305 d!1489005))

(declare-fun d!1489007 () Bool)

(declare-fun res!1975555 () Bool)

(declare-fun e!2923220 () Bool)

(assert (=> d!1489007 (=> res!1975555 e!2923220)))

(assert (=> d!1489007 (= res!1975555 ((_ is Nil!52346) (t!359632 (toList!5549 lm!2023))))))

(assert (=> d!1489007 (= (forall!11281 (t!359632 (toList!5549 lm!2023)) lambda!205845) e!2923220)))

(declare-fun b!4685570 () Bool)

(declare-fun e!2923221 () Bool)

(assert (=> b!4685570 (= e!2923220 e!2923221)))

(declare-fun res!1975556 () Bool)

(assert (=> b!4685570 (=> (not res!1975556) (not e!2923221))))

(assert (=> b!4685570 (= res!1975556 (dynLambda!21696 lambda!205845 (h!58575 (t!359632 (toList!5549 lm!2023)))))))

(declare-fun b!4685571 () Bool)

(assert (=> b!4685571 (= e!2923221 (forall!11281 (t!359632 (t!359632 (toList!5549 lm!2023))) lambda!205845))))

(assert (= (and d!1489007 (not res!1975555)) b!4685570))

(assert (= (and b!4685570 res!1975556) b!4685571))

(declare-fun b_lambda!176821 () Bool)

(assert (=> (not b_lambda!176821) (not b!4685570)))

(declare-fun m!5584419 () Bool)

(assert (=> b!4685570 m!5584419))

(declare-fun m!5584421 () Bool)

(assert (=> b!4685571 m!5584421))

(assert (=> b!4685308 d!1489007))

(declare-fun b!4685572 () Bool)

(assert (=> b!4685572 false))

(declare-fun lt!1844726 () Unit!123193)

(declare-fun lt!1844720 () Unit!123193)

(assert (=> b!4685572 (= lt!1844726 lt!1844720)))

(assert (=> b!4685572 (containsKey!3000 (toList!5550 (extractMap!1856 lt!1844461)) key!4653)))

(assert (=> b!4685572 (= lt!1844720 (lemmaInGetKeysListThenContainsKey!833 (toList!5550 (extractMap!1856 lt!1844461)) key!4653))))

(declare-fun e!2923225 () Unit!123193)

(declare-fun Unit!123224 () Unit!123193)

(assert (=> b!4685572 (= e!2923225 Unit!123224)))

(declare-fun bm!327426 () Bool)

(declare-fun call!327431 () Bool)

(declare-fun e!2923226 () List!52472)

(assert (=> bm!327426 (= call!327431 (contains!15509 e!2923226 key!4653))))

(declare-fun c!801247 () Bool)

(declare-fun c!801249 () Bool)

(assert (=> bm!327426 (= c!801247 c!801249)))

(declare-fun b!4685573 () Bool)

(declare-fun e!2923223 () Bool)

(assert (=> b!4685573 (= e!2923223 (not (contains!15509 (keys!18673 (extractMap!1856 lt!1844461)) key!4653)))))

(declare-fun b!4685574 () Bool)

(declare-fun e!2923222 () Bool)

(declare-fun e!2923224 () Bool)

(assert (=> b!4685574 (= e!2923222 e!2923224)))

(declare-fun res!1975558 () Bool)

(assert (=> b!4685574 (=> (not res!1975558) (not e!2923224))))

(assert (=> b!4685574 (= res!1975558 (isDefined!9279 (getValueByKey!1748 (toList!5550 (extractMap!1856 lt!1844461)) key!4653)))))

(declare-fun d!1489009 () Bool)

(assert (=> d!1489009 e!2923222))

(declare-fun res!1975559 () Bool)

(assert (=> d!1489009 (=> res!1975559 e!2923222)))

(assert (=> d!1489009 (= res!1975559 e!2923223)))

(declare-fun res!1975557 () Bool)

(assert (=> d!1489009 (=> (not res!1975557) (not e!2923223))))

(declare-fun lt!1844723 () Bool)

(assert (=> d!1489009 (= res!1975557 (not lt!1844723))))

(declare-fun lt!1844724 () Bool)

(assert (=> d!1489009 (= lt!1844723 lt!1844724)))

(declare-fun lt!1844722 () Unit!123193)

(declare-fun e!2923227 () Unit!123193)

(assert (=> d!1489009 (= lt!1844722 e!2923227)))

(assert (=> d!1489009 (= c!801249 lt!1844724)))

(assert (=> d!1489009 (= lt!1844724 (containsKey!3000 (toList!5550 (extractMap!1856 lt!1844461)) key!4653))))

(assert (=> d!1489009 (= (contains!15506 (extractMap!1856 lt!1844461) key!4653) lt!1844723)))

(declare-fun b!4685575 () Bool)

(declare-fun Unit!123225 () Unit!123193)

(assert (=> b!4685575 (= e!2923225 Unit!123225)))

(declare-fun b!4685576 () Bool)

(assert (=> b!4685576 (= e!2923224 (contains!15509 (keys!18673 (extractMap!1856 lt!1844461)) key!4653))))

(declare-fun b!4685577 () Bool)

(assert (=> b!4685577 (= e!2923226 (keys!18673 (extractMap!1856 lt!1844461)))))

(declare-fun b!4685578 () Bool)

(declare-fun lt!1844727 () Unit!123193)

(assert (=> b!4685578 (= e!2923227 lt!1844727)))

(declare-fun lt!1844721 () Unit!123193)

(assert (=> b!4685578 (= lt!1844721 (lemmaContainsKeyImpliesGetValueByKeyDefined!1640 (toList!5550 (extractMap!1856 lt!1844461)) key!4653))))

(assert (=> b!4685578 (isDefined!9279 (getValueByKey!1748 (toList!5550 (extractMap!1856 lt!1844461)) key!4653))))

(declare-fun lt!1844725 () Unit!123193)

(assert (=> b!4685578 (= lt!1844725 lt!1844721)))

(assert (=> b!4685578 (= lt!1844727 (lemmaInListThenGetKeysListContains!829 (toList!5550 (extractMap!1856 lt!1844461)) key!4653))))

(assert (=> b!4685578 call!327431))

(declare-fun b!4685579 () Bool)

(assert (=> b!4685579 (= e!2923226 (getKeysList!834 (toList!5550 (extractMap!1856 lt!1844461))))))

(declare-fun b!4685580 () Bool)

(assert (=> b!4685580 (= e!2923227 e!2923225)))

(declare-fun c!801248 () Bool)

(assert (=> b!4685580 (= c!801248 call!327431)))

(assert (= (and d!1489009 c!801249) b!4685578))

(assert (= (and d!1489009 (not c!801249)) b!4685580))

(assert (= (and b!4685580 c!801248) b!4685572))

(assert (= (and b!4685580 (not c!801248)) b!4685575))

(assert (= (or b!4685578 b!4685580) bm!327426))

(assert (= (and bm!327426 c!801247) b!4685579))

(assert (= (and bm!327426 (not c!801247)) b!4685577))

(assert (= (and d!1489009 res!1975557) b!4685573))

(assert (= (and d!1489009 (not res!1975559)) b!4685574))

(assert (= (and b!4685574 res!1975558) b!4685576))

(assert (=> b!4685577 m!5584069))

(declare-fun m!5584423 () Bool)

(assert (=> b!4685577 m!5584423))

(declare-fun m!5584425 () Bool)

(assert (=> b!4685578 m!5584425))

(declare-fun m!5584427 () Bool)

(assert (=> b!4685578 m!5584427))

(assert (=> b!4685578 m!5584427))

(declare-fun m!5584429 () Bool)

(assert (=> b!4685578 m!5584429))

(declare-fun m!5584431 () Bool)

(assert (=> b!4685578 m!5584431))

(declare-fun m!5584433 () Bool)

(assert (=> bm!327426 m!5584433))

(declare-fun m!5584435 () Bool)

(assert (=> b!4685572 m!5584435))

(declare-fun m!5584437 () Bool)

(assert (=> b!4685572 m!5584437))

(assert (=> b!4685576 m!5584069))

(assert (=> b!4685576 m!5584423))

(assert (=> b!4685576 m!5584423))

(declare-fun m!5584439 () Bool)

(assert (=> b!4685576 m!5584439))

(declare-fun m!5584441 () Bool)

(assert (=> b!4685579 m!5584441))

(assert (=> b!4685574 m!5584427))

(assert (=> b!4685574 m!5584427))

(assert (=> b!4685574 m!5584429))

(assert (=> d!1489009 m!5584435))

(assert (=> b!4685573 m!5584069))

(assert (=> b!4685573 m!5584423))

(assert (=> b!4685573 m!5584423))

(assert (=> b!4685573 m!5584439))

(assert (=> b!4685308 d!1489009))

(declare-fun bs!1084108 () Bool)

(declare-fun d!1489011 () Bool)

(assert (= bs!1084108 (and d!1489011 start!473460)))

(declare-fun lambda!205942 () Int)

(assert (=> bs!1084108 (= lambda!205942 lambda!205845)))

(declare-fun bs!1084109 () Bool)

(assert (= bs!1084109 (and d!1489011 d!1488967)))

(assert (=> bs!1084109 (= lambda!205942 lambda!205935)))

(declare-fun bs!1084110 () Bool)

(assert (= bs!1084110 (and d!1489011 d!1489003)))

(assert (=> bs!1084110 (= lambda!205942 lambda!205938)))

(declare-fun lt!1844728 () ListMap!4913)

(assert (=> d!1489011 (invariantList!1394 (toList!5550 lt!1844728))))

(declare-fun e!2923228 () ListMap!4913)

(assert (=> d!1489011 (= lt!1844728 e!2923228)))

(declare-fun c!801250 () Bool)

(assert (=> d!1489011 (= c!801250 ((_ is Cons!52346) lt!1844461))))

(assert (=> d!1489011 (forall!11281 lt!1844461 lambda!205942)))

(assert (=> d!1489011 (= (extractMap!1856 lt!1844461) lt!1844728)))

(declare-fun b!4685581 () Bool)

(assert (=> b!4685581 (= e!2923228 (addToMapMapFromBucket!1262 (_2!30152 (h!58575 lt!1844461)) (extractMap!1856 (t!359632 lt!1844461))))))

(declare-fun b!4685582 () Bool)

(assert (=> b!4685582 (= e!2923228 (ListMap!4914 Nil!52345))))

(assert (= (and d!1489011 c!801250) b!4685581))

(assert (= (and d!1489011 (not c!801250)) b!4685582))

(declare-fun m!5584443 () Bool)

(assert (=> d!1489011 m!5584443))

(declare-fun m!5584445 () Bool)

(assert (=> d!1489011 m!5584445))

(declare-fun m!5584447 () Bool)

(assert (=> b!4685581 m!5584447))

(assert (=> b!4685581 m!5584447))

(declare-fun m!5584449 () Bool)

(assert (=> b!4685581 m!5584449))

(assert (=> b!4685308 d!1489011))

(declare-fun bs!1084122 () Bool)

(declare-fun d!1489013 () Bool)

(assert (= bs!1084122 (and d!1489013 start!473460)))

(declare-fun lambda!205946 () Int)

(assert (=> bs!1084122 (= lambda!205946 lambda!205845)))

(declare-fun bs!1084123 () Bool)

(assert (= bs!1084123 (and d!1489013 d!1488967)))

(assert (=> bs!1084123 (= lambda!205946 lambda!205935)))

(declare-fun bs!1084124 () Bool)

(assert (= bs!1084124 (and d!1489013 d!1489003)))

(assert (=> bs!1084124 (= lambda!205946 lambda!205938)))

(declare-fun bs!1084125 () Bool)

(assert (= bs!1084125 (and d!1489013 d!1489011)))

(assert (=> bs!1084125 (= lambda!205946 lambda!205942)))

(assert (=> d!1489013 (contains!15506 (extractMap!1856 (toList!5549 (ListLongMap!4080 lt!1844461))) key!4653)))

(declare-fun lt!1844735 () Unit!123193)

(declare-fun choose!32474 (ListLongMap!4079 K!13725 Hashable!6199) Unit!123193)

(assert (=> d!1489013 (= lt!1844735 (choose!32474 (ListLongMap!4080 lt!1844461) key!4653 hashF!1323))))

(assert (=> d!1489013 (forall!11281 (toList!5549 (ListLongMap!4080 lt!1844461)) lambda!205946)))

(assert (=> d!1489013 (= (lemmaListContainsThenExtractedMapContains!422 (ListLongMap!4080 lt!1844461) key!4653 hashF!1323) lt!1844735)))

(declare-fun bs!1084126 () Bool)

(assert (= bs!1084126 d!1489013))

(declare-fun m!5584467 () Bool)

(assert (=> bs!1084126 m!5584467))

(assert (=> bs!1084126 m!5584467))

(declare-fun m!5584469 () Bool)

(assert (=> bs!1084126 m!5584469))

(declare-fun m!5584471 () Bool)

(assert (=> bs!1084126 m!5584471))

(declare-fun m!5584473 () Bool)

(assert (=> bs!1084126 m!5584473))

(assert (=> b!4685308 d!1489013))

(declare-fun bs!1084127 () Bool)

(declare-fun d!1489023 () Bool)

(assert (= bs!1084127 (and d!1489023 d!1488967)))

(declare-fun lambda!205949 () Int)

(assert (=> bs!1084127 (not (= lambda!205949 lambda!205935))))

(declare-fun bs!1084128 () Bool)

(assert (= bs!1084128 (and d!1489023 start!473460)))

(assert (=> bs!1084128 (not (= lambda!205949 lambda!205845))))

(declare-fun bs!1084129 () Bool)

(assert (= bs!1084129 (and d!1489023 d!1489013)))

(assert (=> bs!1084129 (not (= lambda!205949 lambda!205946))))

(declare-fun bs!1084130 () Bool)

(assert (= bs!1084130 (and d!1489023 d!1489011)))

(assert (=> bs!1084130 (not (= lambda!205949 lambda!205942))))

(declare-fun bs!1084131 () Bool)

(assert (= bs!1084131 (and d!1489023 d!1489003)))

(assert (=> bs!1084131 (not (= lambda!205949 lambda!205938))))

(assert (=> d!1489023 true))

(assert (=> d!1489023 (= (allKeysSameHashInMap!1744 lm!2023 hashF!1323) (forall!11281 (toList!5549 lm!2023) lambda!205949))))

(declare-fun bs!1084132 () Bool)

(assert (= bs!1084132 d!1489023))

(declare-fun m!5584475 () Bool)

(assert (=> bs!1084132 m!5584475))

(assert (=> b!4685309 d!1489023))

(declare-fun d!1489025 () Bool)

(declare-fun isEmpty!29078 (Option!12021) Bool)

(assert (=> d!1489025 (= (isDefined!9276 (getPair!434 lt!1844458 key!4653)) (not (isEmpty!29078 (getPair!434 lt!1844458 key!4653))))))

(declare-fun bs!1084133 () Bool)

(assert (= bs!1084133 d!1489025))

(assert (=> bs!1084133 m!5584099))

(declare-fun m!5584477 () Bool)

(assert (=> bs!1084133 m!5584477))

(assert (=> b!4685307 d!1489025))

(declare-fun d!1489027 () Bool)

(declare-fun e!2923242 () Bool)

(assert (=> d!1489027 e!2923242))

(declare-fun res!1975562 () Bool)

(assert (=> d!1489027 (=> res!1975562 e!2923242)))

(declare-fun lt!1844744 () Bool)

(assert (=> d!1489027 (= res!1975562 (not lt!1844744))))

(declare-fun lt!1844745 () Bool)

(assert (=> d!1489027 (= lt!1844744 lt!1844745)))

(declare-fun lt!1844746 () Unit!123193)

(declare-fun e!2923243 () Unit!123193)

(assert (=> d!1489027 (= lt!1844746 e!2923243)))

(declare-fun c!801255 () Bool)

(assert (=> d!1489027 (= c!801255 lt!1844745)))

(declare-fun containsKey!3001 (List!52470 (_ BitVec 64)) Bool)

(assert (=> d!1489027 (= lt!1844745 (containsKey!3001 (toList!5549 lm!2023) lt!1844455))))

(assert (=> d!1489027 (= (contains!15505 lm!2023 lt!1844455) lt!1844744)))

(declare-fun b!4685606 () Bool)

(declare-fun lt!1844747 () Unit!123193)

(assert (=> b!4685606 (= e!2923243 lt!1844747)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1641 (List!52470 (_ BitVec 64)) Unit!123193)

(assert (=> b!4685606 (= lt!1844747 (lemmaContainsKeyImpliesGetValueByKeyDefined!1641 (toList!5549 lm!2023) lt!1844455))))

(declare-datatypes ((Option!12025 0))(
  ( (None!12024) (Some!12024 (v!46411 List!52469)) )
))
(declare-fun isDefined!9280 (Option!12025) Bool)

(declare-fun getValueByKey!1749 (List!52470 (_ BitVec 64)) Option!12025)

(assert (=> b!4685606 (isDefined!9280 (getValueByKey!1749 (toList!5549 lm!2023) lt!1844455))))

(declare-fun b!4685607 () Bool)

(declare-fun Unit!123226 () Unit!123193)

(assert (=> b!4685607 (= e!2923243 Unit!123226)))

(declare-fun b!4685608 () Bool)

(assert (=> b!4685608 (= e!2923242 (isDefined!9280 (getValueByKey!1749 (toList!5549 lm!2023) lt!1844455)))))

(assert (= (and d!1489027 c!801255) b!4685606))

(assert (= (and d!1489027 (not c!801255)) b!4685607))

(assert (= (and d!1489027 (not res!1975562)) b!4685608))

(declare-fun m!5584479 () Bool)

(assert (=> d!1489027 m!5584479))

(declare-fun m!5584481 () Bool)

(assert (=> b!4685606 m!5584481))

(declare-fun m!5584483 () Bool)

(assert (=> b!4685606 m!5584483))

(assert (=> b!4685606 m!5584483))

(declare-fun m!5584485 () Bool)

(assert (=> b!4685606 m!5584485))

(assert (=> b!4685608 m!5584483))

(assert (=> b!4685608 m!5584483))

(assert (=> b!4685608 m!5584485))

(assert (=> b!4685307 d!1489027))

(declare-fun bs!1084134 () Bool)

(declare-fun d!1489029 () Bool)

(assert (= bs!1084134 (and d!1489029 d!1488967)))

(declare-fun lambda!205952 () Int)

(assert (=> bs!1084134 (= lambda!205952 lambda!205935)))

(declare-fun bs!1084135 () Bool)

(assert (= bs!1084135 (and d!1489029 start!473460)))

(assert (=> bs!1084135 (= lambda!205952 lambda!205845)))

(declare-fun bs!1084136 () Bool)

(assert (= bs!1084136 (and d!1489029 d!1489013)))

(assert (=> bs!1084136 (= lambda!205952 lambda!205946)))

(declare-fun bs!1084137 () Bool)

(assert (= bs!1084137 (and d!1489029 d!1489011)))

(assert (=> bs!1084137 (= lambda!205952 lambda!205942)))

(declare-fun bs!1084138 () Bool)

(assert (= bs!1084138 (and d!1489029 d!1489023)))

(assert (=> bs!1084138 (not (= lambda!205952 lambda!205949))))

(declare-fun bs!1084139 () Bool)

(assert (= bs!1084139 (and d!1489029 d!1489003)))

(assert (=> bs!1084139 (= lambda!205952 lambda!205938)))

(assert (=> d!1489029 (contains!15505 lm!2023 (hash!4025 hashF!1323 key!4653))))

(declare-fun lt!1844750 () Unit!123193)

(declare-fun choose!32475 (ListLongMap!4079 K!13725 Hashable!6199) Unit!123193)

(assert (=> d!1489029 (= lt!1844750 (choose!32475 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489029 (forall!11281 (toList!5549 lm!2023) lambda!205952)))

(assert (=> d!1489029 (= (lemmaInGenMapThenLongMapContainsHash!640 lm!2023 key!4653 hashF!1323) lt!1844750)))

(declare-fun bs!1084140 () Bool)

(assert (= bs!1084140 d!1489029))

(assert (=> bs!1084140 m!5584113))

(assert (=> bs!1084140 m!5584113))

(declare-fun m!5584487 () Bool)

(assert (=> bs!1084140 m!5584487))

(declare-fun m!5584489 () Bool)

(assert (=> bs!1084140 m!5584489))

(declare-fun m!5584491 () Bool)

(assert (=> bs!1084140 m!5584491))

(assert (=> b!4685307 d!1489029))

(declare-fun bs!1084141 () Bool)

(declare-fun d!1489031 () Bool)

(assert (= bs!1084141 (and d!1489031 start!473460)))

(declare-fun lambda!205959 () Int)

(assert (=> bs!1084141 (= lambda!205959 lambda!205845)))

(declare-fun bs!1084142 () Bool)

(assert (= bs!1084142 (and d!1489031 d!1489013)))

(assert (=> bs!1084142 (= lambda!205959 lambda!205946)))

(declare-fun bs!1084143 () Bool)

(assert (= bs!1084143 (and d!1489031 d!1489011)))

(assert (=> bs!1084143 (= lambda!205959 lambda!205942)))

(declare-fun bs!1084144 () Bool)

(assert (= bs!1084144 (and d!1489031 d!1489023)))

(assert (=> bs!1084144 (not (= lambda!205959 lambda!205949))))

(declare-fun bs!1084145 () Bool)

(assert (= bs!1084145 (and d!1489031 d!1489003)))

(assert (=> bs!1084145 (= lambda!205959 lambda!205938)))

(declare-fun bs!1084146 () Bool)

(assert (= bs!1084146 (and d!1489031 d!1489029)))

(assert (=> bs!1084146 (= lambda!205959 lambda!205952)))

(declare-fun bs!1084147 () Bool)

(assert (= bs!1084147 (and d!1489031 d!1488967)))

(assert (=> bs!1084147 (= lambda!205959 lambda!205935)))

(declare-fun b!4685619 () Bool)

(declare-fun e!2923249 () Bool)

(assert (=> b!4685619 (= e!2923249 (isDefined!9276 (getPair!434 (apply!12313 lm!2023 (hash!4025 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1844770 () Unit!123193)

(assert (=> b!4685619 (= lt!1844770 (forallContained!3388 (toList!5549 lm!2023) lambda!205959 (tuple2!53717 (hash!4025 hashF!1323 key!4653) (apply!12313 lm!2023 (hash!4025 hashF!1323 key!4653)))))))

(declare-fun lt!1844773 () Unit!123193)

(declare-fun lt!1844769 () Unit!123193)

(assert (=> b!4685619 (= lt!1844773 lt!1844769)))

(declare-fun lt!1844767 () (_ BitVec 64))

(declare-fun lt!1844772 () List!52469)

(assert (=> b!4685619 (contains!15504 (toList!5549 lm!2023) (tuple2!53717 lt!1844767 lt!1844772))))

(assert (=> b!4685619 (= lt!1844769 (lemmaGetValueImpliesTupleContained!239 lm!2023 lt!1844767 lt!1844772))))

(declare-fun e!2923248 () Bool)

(assert (=> b!4685619 e!2923248))

(declare-fun res!1975573 () Bool)

(assert (=> b!4685619 (=> (not res!1975573) (not e!2923248))))

(assert (=> b!4685619 (= res!1975573 (contains!15505 lm!2023 lt!1844767))))

(assert (=> b!4685619 (= lt!1844772 (apply!12313 lm!2023 (hash!4025 hashF!1323 key!4653)))))

(assert (=> b!4685619 (= lt!1844767 (hash!4025 hashF!1323 key!4653))))

(declare-fun lt!1844768 () Unit!123193)

(declare-fun lt!1844774 () Unit!123193)

(assert (=> b!4685619 (= lt!1844768 lt!1844774)))

(assert (=> b!4685619 (contains!15505 lm!2023 (hash!4025 hashF!1323 key!4653))))

(assert (=> b!4685619 (= lt!1844774 (lemmaInGenMapThenLongMapContainsHash!640 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4685620 () Bool)

(assert (=> b!4685620 (= e!2923248 (= (getValueByKey!1749 (toList!5549 lm!2023) lt!1844767) (Some!12024 lt!1844772)))))

(declare-fun b!4685618 () Bool)

(declare-fun res!1975571 () Bool)

(assert (=> b!4685618 (=> (not res!1975571) (not e!2923249))))

(assert (=> b!4685618 (= res!1975571 (contains!15506 (extractMap!1856 (toList!5549 lm!2023)) key!4653))))

(declare-fun b!4685617 () Bool)

(declare-fun res!1975574 () Bool)

(assert (=> b!4685617 (=> (not res!1975574) (not e!2923249))))

(assert (=> b!4685617 (= res!1975574 (allKeysSameHashInMap!1744 lm!2023 hashF!1323))))

(assert (=> d!1489031 e!2923249))

(declare-fun res!1975572 () Bool)

(assert (=> d!1489031 (=> (not res!1975572) (not e!2923249))))

(assert (=> d!1489031 (= res!1975572 (forall!11281 (toList!5549 lm!2023) lambda!205959))))

(declare-fun lt!1844771 () Unit!123193)

(declare-fun choose!32476 (ListLongMap!4079 K!13725 Hashable!6199) Unit!123193)

(assert (=> d!1489031 (= lt!1844771 (choose!32476 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1489031 (forall!11281 (toList!5549 lm!2023) lambda!205959)))

(assert (=> d!1489031 (= (lemmaInGenMapThenGetPairDefined!230 lm!2023 key!4653 hashF!1323) lt!1844771)))

(assert (= (and d!1489031 res!1975572) b!4685617))

(assert (= (and b!4685617 res!1975574) b!4685618))

(assert (= (and b!4685618 res!1975571) b!4685619))

(assert (= (and b!4685619 res!1975573) b!4685620))

(assert (=> b!4685617 m!5584085))

(assert (=> b!4685618 m!5584079))

(assert (=> b!4685618 m!5584079))

(declare-fun m!5584493 () Bool)

(assert (=> b!4685618 m!5584493))

(assert (=> b!4685619 m!5584113))

(declare-fun m!5584495 () Bool)

(assert (=> b!4685619 m!5584495))

(declare-fun m!5584497 () Bool)

(assert (=> b!4685619 m!5584497))

(declare-fun m!5584499 () Bool)

(assert (=> b!4685619 m!5584499))

(declare-fun m!5584501 () Bool)

(assert (=> b!4685619 m!5584501))

(assert (=> b!4685619 m!5584093))

(declare-fun m!5584503 () Bool)

(assert (=> b!4685619 m!5584503))

(assert (=> b!4685619 m!5584113))

(assert (=> b!4685619 m!5584487))

(declare-fun m!5584505 () Bool)

(assert (=> b!4685619 m!5584505))

(declare-fun m!5584507 () Bool)

(assert (=> b!4685619 m!5584507))

(assert (=> b!4685619 m!5584113))

(assert (=> b!4685619 m!5584495))

(assert (=> b!4685619 m!5584497))

(declare-fun m!5584509 () Bool)

(assert (=> d!1489031 m!5584509))

(declare-fun m!5584511 () Bool)

(assert (=> d!1489031 m!5584511))

(assert (=> d!1489031 m!5584509))

(declare-fun m!5584513 () Bool)

(assert (=> b!4685620 m!5584513))

(assert (=> b!4685307 d!1489031))

(declare-fun d!1489033 () Bool)

(assert (=> d!1489033 (containsKey!2997 oldBucket!34 key!4653)))

(declare-fun lt!1844777 () Unit!123193)

(declare-fun choose!32477 (List!52469 K!13725 Hashable!6199) Unit!123193)

(assert (=> d!1489033 (= lt!1844777 (choose!32477 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1489033 (noDuplicateKeys!1830 oldBucket!34)))

(assert (=> d!1489033 (= (lemmaGetPairDefinedThenContainsKey!182 oldBucket!34 key!4653 hashF!1323) lt!1844777)))

(declare-fun bs!1084148 () Bool)

(assert (= bs!1084148 d!1489033))

(assert (=> bs!1084148 m!5584107))

(declare-fun m!5584515 () Bool)

(assert (=> bs!1084148 m!5584515))

(assert (=> bs!1084148 m!5584055))

(assert (=> b!4685307 d!1489033))

(declare-fun d!1489035 () Bool)

(assert (=> d!1489035 (contains!15504 (toList!5549 lm!2023) (tuple2!53717 lt!1844455 lt!1844458))))

(declare-fun lt!1844780 () Unit!123193)

(declare-fun choose!32478 (ListLongMap!4079 (_ BitVec 64) List!52469) Unit!123193)

(assert (=> d!1489035 (= lt!1844780 (choose!32478 lm!2023 lt!1844455 lt!1844458))))

(assert (=> d!1489035 (contains!15505 lm!2023 lt!1844455)))

(assert (=> d!1489035 (= (lemmaGetValueImpliesTupleContained!239 lm!2023 lt!1844455 lt!1844458) lt!1844780)))

(declare-fun bs!1084149 () Bool)

(assert (= bs!1084149 d!1489035))

(declare-fun m!5584517 () Bool)

(assert (=> bs!1084149 m!5584517))

(declare-fun m!5584519 () Bool)

(assert (=> bs!1084149 m!5584519))

(assert (=> bs!1084149 m!5584095))

(assert (=> b!4685307 d!1489035))

(declare-fun d!1489037 () Bool)

(declare-fun res!1975579 () Bool)

(declare-fun e!2923254 () Bool)

(assert (=> d!1489037 (=> res!1975579 e!2923254)))

(assert (=> d!1489037 (= res!1975579 (and ((_ is Cons!52345) oldBucket!34) (= (_1!30151 (h!58574 oldBucket!34)) key!4653)))))

(assert (=> d!1489037 (= (containsKey!2997 oldBucket!34 key!4653) e!2923254)))

(declare-fun b!4685626 () Bool)

(declare-fun e!2923255 () Bool)

(assert (=> b!4685626 (= e!2923254 e!2923255)))

(declare-fun res!1975580 () Bool)

(assert (=> b!4685626 (=> (not res!1975580) (not e!2923255))))

(assert (=> b!4685626 (= res!1975580 ((_ is Cons!52345) oldBucket!34))))

(declare-fun b!4685627 () Bool)

(assert (=> b!4685627 (= e!2923255 (containsKey!2997 (t!359631 oldBucket!34) key!4653))))

(assert (= (and d!1489037 (not res!1975579)) b!4685626))

(assert (= (and b!4685626 res!1975580) b!4685627))

(assert (=> b!4685627 m!5584101))

(assert (=> b!4685307 d!1489037))

(declare-fun d!1489039 () Bool)

(declare-fun lt!1844783 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9134 (List!52470) (InoxSet tuple2!53716))

(assert (=> d!1489039 (= lt!1844783 (select (content!9134 (toList!5549 lm!2023)) lt!1844460))))

(declare-fun e!2923260 () Bool)

(assert (=> d!1489039 (= lt!1844783 e!2923260)))

(declare-fun res!1975586 () Bool)

(assert (=> d!1489039 (=> (not res!1975586) (not e!2923260))))

(assert (=> d!1489039 (= res!1975586 ((_ is Cons!52346) (toList!5549 lm!2023)))))

(assert (=> d!1489039 (= (contains!15504 (toList!5549 lm!2023) lt!1844460) lt!1844783)))

(declare-fun b!4685632 () Bool)

(declare-fun e!2923261 () Bool)

(assert (=> b!4685632 (= e!2923260 e!2923261)))

(declare-fun res!1975585 () Bool)

(assert (=> b!4685632 (=> res!1975585 e!2923261)))

(assert (=> b!4685632 (= res!1975585 (= (h!58575 (toList!5549 lm!2023)) lt!1844460))))

(declare-fun b!4685633 () Bool)

(assert (=> b!4685633 (= e!2923261 (contains!15504 (t!359632 (toList!5549 lm!2023)) lt!1844460))))

(assert (= (and d!1489039 res!1975586) b!4685632))

(assert (= (and b!4685632 (not res!1975585)) b!4685633))

(declare-fun m!5584521 () Bool)

(assert (=> d!1489039 m!5584521))

(declare-fun m!5584523 () Bool)

(assert (=> d!1489039 m!5584523))

(declare-fun m!5584525 () Bool)

(assert (=> b!4685633 m!5584525))

(assert (=> b!4685307 d!1489039))

(declare-fun b!4685650 () Bool)

(declare-fun e!2923272 () Option!12021)

(assert (=> b!4685650 (= e!2923272 (Some!12020 (h!58574 lt!1844458)))))

(declare-fun b!4685651 () Bool)

(declare-fun e!2923274 () Option!12021)

(assert (=> b!4685651 (= e!2923272 e!2923274)))

(declare-fun c!801260 () Bool)

(assert (=> b!4685651 (= c!801260 ((_ is Cons!52345) lt!1844458))))

(declare-fun b!4685652 () Bool)

(assert (=> b!4685652 (= e!2923274 None!12020)))

(declare-fun b!4685653 () Bool)

(declare-fun e!2923273 () Bool)

(assert (=> b!4685653 (= e!2923273 (not (containsKey!2997 lt!1844458 key!4653)))))

(declare-fun d!1489041 () Bool)

(declare-fun e!2923276 () Bool)

(assert (=> d!1489041 e!2923276))

(declare-fun res!1975595 () Bool)

(assert (=> d!1489041 (=> res!1975595 e!2923276)))

(assert (=> d!1489041 (= res!1975595 e!2923273)))

(declare-fun res!1975596 () Bool)

(assert (=> d!1489041 (=> (not res!1975596) (not e!2923273))))

(declare-fun lt!1844786 () Option!12021)

(assert (=> d!1489041 (= res!1975596 (isEmpty!29078 lt!1844786))))

(assert (=> d!1489041 (= lt!1844786 e!2923272)))

(declare-fun c!801261 () Bool)

(assert (=> d!1489041 (= c!801261 (and ((_ is Cons!52345) lt!1844458) (= (_1!30151 (h!58574 lt!1844458)) key!4653)))))

(assert (=> d!1489041 (noDuplicateKeys!1830 lt!1844458)))

(assert (=> d!1489041 (= (getPair!434 lt!1844458 key!4653) lt!1844786)))

(declare-fun b!4685654 () Bool)

(declare-fun e!2923275 () Bool)

(assert (=> b!4685654 (= e!2923276 e!2923275)))

(declare-fun res!1975597 () Bool)

(assert (=> b!4685654 (=> (not res!1975597) (not e!2923275))))

(assert (=> b!4685654 (= res!1975597 (isDefined!9276 lt!1844786))))

(declare-fun b!4685655 () Bool)

(declare-fun contains!15510 (List!52469 tuple2!53714) Bool)

(declare-fun get!17449 (Option!12021) tuple2!53714)

(assert (=> b!4685655 (= e!2923275 (contains!15510 lt!1844458 (get!17449 lt!1844786)))))

(declare-fun b!4685656 () Bool)

(assert (=> b!4685656 (= e!2923274 (getPair!434 (t!359631 lt!1844458) key!4653))))

(declare-fun b!4685657 () Bool)

(declare-fun res!1975598 () Bool)

(assert (=> b!4685657 (=> (not res!1975598) (not e!2923275))))

(assert (=> b!4685657 (= res!1975598 (= (_1!30151 (get!17449 lt!1844786)) key!4653))))

(assert (= (and d!1489041 c!801261) b!4685650))

(assert (= (and d!1489041 (not c!801261)) b!4685651))

(assert (= (and b!4685651 c!801260) b!4685656))

(assert (= (and b!4685651 (not c!801260)) b!4685652))

(assert (= (and d!1489041 res!1975596) b!4685653))

(assert (= (and d!1489041 (not res!1975595)) b!4685654))

(assert (= (and b!4685654 res!1975597) b!4685657))

(assert (= (and b!4685657 res!1975598) b!4685655))

(declare-fun m!5584527 () Bool)

(assert (=> b!4685655 m!5584527))

(assert (=> b!4685655 m!5584527))

(declare-fun m!5584529 () Bool)

(assert (=> b!4685655 m!5584529))

(assert (=> b!4685657 m!5584527))

(declare-fun m!5584531 () Bool)

(assert (=> b!4685656 m!5584531))

(declare-fun m!5584533 () Bool)

(assert (=> b!4685653 m!5584533))

(declare-fun m!5584535 () Bool)

(assert (=> d!1489041 m!5584535))

(declare-fun m!5584537 () Bool)

(assert (=> d!1489041 m!5584537))

(declare-fun m!5584539 () Bool)

(assert (=> b!4685654 m!5584539))

(assert (=> b!4685307 d!1489041))

(declare-fun d!1489043 () Bool)

(declare-fun get!17450 (Option!12025) List!52469)

(assert (=> d!1489043 (= (apply!12313 lm!2023 lt!1844455) (get!17450 (getValueByKey!1749 (toList!5549 lm!2023) lt!1844455)))))

(declare-fun bs!1084150 () Bool)

(assert (= bs!1084150 d!1489043))

(assert (=> bs!1084150 m!5584483))

(assert (=> bs!1084150 m!5584483))

(declare-fun m!5584541 () Bool)

(assert (=> bs!1084150 m!5584541))

(assert (=> b!4685307 d!1489043))

(declare-fun d!1489045 () Bool)

(assert (=> d!1489045 (dynLambda!21696 lambda!205845 lt!1844460)))

(declare-fun lt!1844789 () Unit!123193)

(declare-fun choose!32479 (List!52470 Int tuple2!53716) Unit!123193)

(assert (=> d!1489045 (= lt!1844789 (choose!32479 (toList!5549 lm!2023) lambda!205845 lt!1844460))))

(declare-fun e!2923279 () Bool)

(assert (=> d!1489045 e!2923279))

(declare-fun res!1975601 () Bool)

(assert (=> d!1489045 (=> (not res!1975601) (not e!2923279))))

(assert (=> d!1489045 (= res!1975601 (forall!11281 (toList!5549 lm!2023) lambda!205845))))

(assert (=> d!1489045 (= (forallContained!3388 (toList!5549 lm!2023) lambda!205845 lt!1844460) lt!1844789)))

(declare-fun b!4685660 () Bool)

(assert (=> b!4685660 (= e!2923279 (contains!15504 (toList!5549 lm!2023) lt!1844460))))

(assert (= (and d!1489045 res!1975601) b!4685660))

(declare-fun b_lambda!176829 () Bool)

(assert (=> (not b_lambda!176829) (not d!1489045)))

(declare-fun m!5584543 () Bool)

(assert (=> d!1489045 m!5584543))

(declare-fun m!5584545 () Bool)

(assert (=> d!1489045 m!5584545))

(assert (=> d!1489045 m!5584081))

(assert (=> b!4685660 m!5584097))

(assert (=> b!4685307 d!1489045))

(declare-fun d!1489047 () Bool)

(declare-fun res!1975602 () Bool)

(declare-fun e!2923280 () Bool)

(assert (=> d!1489047 (=> res!1975602 e!2923280)))

(assert (=> d!1489047 (= res!1975602 (and ((_ is Cons!52345) (t!359631 oldBucket!34)) (= (_1!30151 (h!58574 (t!359631 oldBucket!34))) key!4653)))))

(assert (=> d!1489047 (= (containsKey!2997 (t!359631 oldBucket!34) key!4653) e!2923280)))

(declare-fun b!4685661 () Bool)

(declare-fun e!2923281 () Bool)

(assert (=> b!4685661 (= e!2923280 e!2923281)))

(declare-fun res!1975603 () Bool)

(assert (=> b!4685661 (=> (not res!1975603) (not e!2923281))))

(assert (=> b!4685661 (= res!1975603 ((_ is Cons!52345) (t!359631 oldBucket!34)))))

(declare-fun b!4685662 () Bool)

(assert (=> b!4685662 (= e!2923281 (containsKey!2997 (t!359631 (t!359631 oldBucket!34)) key!4653))))

(assert (= (and d!1489047 (not res!1975602)) b!4685661))

(assert (= (and b!4685661 res!1975603) b!4685662))

(declare-fun m!5584547 () Bool)

(assert (=> b!4685662 m!5584547))

(assert (=> b!4685307 d!1489047))

(declare-fun b!4685664 () Bool)

(declare-fun e!2923282 () List!52469)

(declare-fun e!2923283 () List!52469)

(assert (=> b!4685664 (= e!2923282 e!2923283)))

(declare-fun c!801263 () Bool)

(assert (=> b!4685664 (= c!801263 ((_ is Cons!52345) oldBucket!34))))

(declare-fun d!1489049 () Bool)

(declare-fun lt!1844790 () List!52469)

(assert (=> d!1489049 (not (containsKey!2997 lt!1844790 key!4653))))

(assert (=> d!1489049 (= lt!1844790 e!2923282)))

(declare-fun c!801262 () Bool)

(assert (=> d!1489049 (= c!801262 (and ((_ is Cons!52345) oldBucket!34) (= (_1!30151 (h!58574 oldBucket!34)) key!4653)))))

(assert (=> d!1489049 (noDuplicateKeys!1830 oldBucket!34)))

(assert (=> d!1489049 (= (removePairForKey!1425 oldBucket!34 key!4653) lt!1844790)))

(declare-fun b!4685666 () Bool)

(assert (=> b!4685666 (= e!2923283 Nil!52345)))

(declare-fun b!4685663 () Bool)

(assert (=> b!4685663 (= e!2923282 (t!359631 oldBucket!34))))

(declare-fun b!4685665 () Bool)

(assert (=> b!4685665 (= e!2923283 (Cons!52345 (h!58574 oldBucket!34) (removePairForKey!1425 (t!359631 oldBucket!34) key!4653)))))

(assert (= (and d!1489049 c!801262) b!4685663))

(assert (= (and d!1489049 (not c!801262)) b!4685664))

(assert (= (and b!4685664 c!801263) b!4685665))

(assert (= (and b!4685664 (not c!801263)) b!4685666))

(declare-fun m!5584549 () Bool)

(assert (=> d!1489049 m!5584549))

(assert (=> d!1489049 m!5584055))

(assert (=> b!4685665 m!5584115))

(assert (=> b!4685318 d!1489049))

(declare-fun b!4685671 () Bool)

(declare-fun e!2923286 () Bool)

(declare-fun tp!1345554 () Bool)

(assert (=> b!4685671 (= e!2923286 (and tp_is_empty!30613 tp_is_empty!30615 tp!1345554))))

(assert (=> b!4685304 (= tp!1345540 e!2923286)))

(assert (= (and b!4685304 ((_ is Cons!52345) (t!359631 newBucket!218))) b!4685671))

(declare-fun b!4685672 () Bool)

(declare-fun e!2923287 () Bool)

(declare-fun tp!1345555 () Bool)

(assert (=> b!4685672 (= e!2923287 (and tp_is_empty!30613 tp_is_empty!30615 tp!1345555))))

(assert (=> b!4685303 (= tp!1345541 e!2923287)))

(assert (= (and b!4685303 ((_ is Cons!52345) (t!359631 oldBucket!34))) b!4685672))

(declare-fun b!4685677 () Bool)

(declare-fun e!2923290 () Bool)

(declare-fun tp!1345560 () Bool)

(declare-fun tp!1345561 () Bool)

(assert (=> b!4685677 (= e!2923290 (and tp!1345560 tp!1345561))))

(assert (=> b!4685312 (= tp!1345539 e!2923290)))

(assert (= (and b!4685312 ((_ is Cons!52346) (toList!5549 lm!2023))) b!4685677))

(declare-fun b_lambda!176831 () Bool)

(assert (= b_lambda!176829 (or start!473460 b_lambda!176831)))

(declare-fun bs!1084151 () Bool)

(declare-fun d!1489051 () Bool)

(assert (= bs!1084151 (and d!1489051 start!473460)))

(assert (=> bs!1084151 (= (dynLambda!21696 lambda!205845 lt!1844460) (noDuplicateKeys!1830 (_2!30152 lt!1844460)))))

(declare-fun m!5584551 () Bool)

(assert (=> bs!1084151 m!5584551))

(assert (=> d!1489045 d!1489051))

(declare-fun b_lambda!176833 () Bool)

(assert (= b_lambda!176813 (or start!473460 b_lambda!176833)))

(declare-fun bs!1084152 () Bool)

(declare-fun d!1489053 () Bool)

(assert (= bs!1084152 (and d!1489053 start!473460)))

(assert (=> bs!1084152 (= (dynLambda!21696 lambda!205845 (h!58575 (toList!5549 lm!2023))) (noDuplicateKeys!1830 (_2!30152 (h!58575 (toList!5549 lm!2023)))))))

(assert (=> bs!1084152 m!5584269))

(assert (=> b!4685324 d!1489053))

(declare-fun b_lambda!176835 () Bool)

(assert (= b_lambda!176821 (or start!473460 b_lambda!176835)))

(declare-fun bs!1084153 () Bool)

(declare-fun d!1489055 () Bool)

(assert (= bs!1084153 (and d!1489055 start!473460)))

(assert (=> bs!1084153 (= (dynLambda!21696 lambda!205845 (h!58575 (t!359632 (toList!5549 lm!2023)))) (noDuplicateKeys!1830 (_2!30152 (h!58575 (t!359632 (toList!5549 lm!2023))))))))

(declare-fun m!5584553 () Bool)

(assert (=> bs!1084153 m!5584553))

(assert (=> b!4685570 d!1489055))

(check-sat (not d!1489039) tp_is_empty!30613 (not d!1489023) (not d!1489025) (not d!1488945) (not b!4685608) (not b!4685620) (not b!4685481) (not d!1488941) (not b!4685577) (not b!4685573) (not b!4685480) (not bm!327426) (not b!4685566) (not b_lambda!176835) (not b!4685581) (not d!1488913) (not b!4685578) (not b!4685654) (not d!1489027) (not d!1489033) (not b!4685672) (not b!4685563) (not b!4685677) (not b!4685376) (not b!4685627) (not d!1488933) (not b!4685508) (not d!1489029) (not b!4685344) (not bm!327425) (not b!4685617) (not d!1489031) (not d!1488939) (not d!1489011) (not b!4685363) (not b_lambda!176831) (not b!4685565) (not b!4685478) (not bs!1084152) (not d!1489009) (not b!4685561) (not d!1488967) (not b!4685618) (not b!4685576) tp_is_empty!30615 (not b_lambda!176833) (not b!4685655) (not bm!327420) (not b!4685559) (not b!4685656) (not b!4685665) (not b!4685325) (not b!4685657) (not d!1488975) (not b!4685560) (not b!4685564) (not b!4685653) (not b!4685377) (not d!1489049) (not b!4685362) (not d!1489041) (not d!1489003) (not d!1489045) (not b!4685370) (not b!4685619) (not d!1489005) (not b!4685579) (not d!1488911) (not b!4685606) (not b!4685671) (not b!4685572) (not d!1489043) (not bs!1084151) (not b!4685660) (not d!1489013) (not d!1489035) (not bm!327419) (not b!4685568) (not b!4685574) (not bs!1084153) (not b!4685571) (not d!1488909) (not b!4685633) (not b!4685662) (not bm!327421))
(check-sat)
