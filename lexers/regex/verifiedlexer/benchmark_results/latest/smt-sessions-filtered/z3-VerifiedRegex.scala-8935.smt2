; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!479100 () Bool)

(assert start!479100)

(declare-fun b!4713162 () Bool)

(declare-fun res!1992406 () Bool)

(declare-fun e!2939596 () Bool)

(assert (=> b!4713162 (=> (not res!1992406) (not e!2939596))))

(declare-datatypes ((K!14080 0))(
  ( (K!14081 (val!19535 Int)) )
))
(declare-fun key!4653 () K!14080)

(declare-datatypes ((V!14326 0))(
  ( (V!14327 (val!19536 Int)) )
))
(declare-datatypes ((tuple2!54282 0))(
  ( (tuple2!54283 (_1!30435 K!14080) (_2!30435 V!14326)) )
))
(declare-datatypes ((List!52843 0))(
  ( (Nil!52719) (Cons!52719 (h!59038 tuple2!54282) (t!360085 List!52843)) )
))
(declare-fun newBucket!218 () List!52843)

(declare-fun oldBucket!34 () List!52843)

(declare-fun removePairForKey!1567 (List!52843 K!14080) List!52843)

(assert (=> b!4713162 (= res!1992406 (= (removePairForKey!1567 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4713163 () Bool)

(declare-fun e!2939602 () Bool)

(declare-fun tp!1347718 () Bool)

(assert (=> b!4713163 (= e!2939602 tp!1347718)))

(declare-fun b!4713164 () Bool)

(declare-fun e!2939593 () Bool)

(declare-fun e!2939594 () Bool)

(assert (=> b!4713164 (= e!2939593 (not e!2939594))))

(declare-fun res!1992409 () Bool)

(assert (=> b!4713164 (=> res!1992409 e!2939594)))

(get-info :version)

(assert (=> b!4713164 (= res!1992409 (or (and ((_ is Cons!52719) oldBucket!34) (= (_1!30435 (h!59038 oldBucket!34)) key!4653)) (not ((_ is Cons!52719) oldBucket!34)) (= (_1!30435 (h!59038 oldBucket!34)) key!4653)))))

(declare-datatypes ((ListMap!5197 0))(
  ( (ListMap!5198 (toList!5833 List!52843)) )
))
(declare-fun lt!1877464 () ListMap!5197)

(declare-datatypes ((tuple2!54284 0))(
  ( (tuple2!54285 (_1!30436 (_ BitVec 64)) (_2!30436 List!52843)) )
))
(declare-datatypes ((List!52844 0))(
  ( (Nil!52720) (Cons!52720 (h!59039 tuple2!54284) (t!360086 List!52844)) )
))
(declare-datatypes ((ListLongMap!4363 0))(
  ( (ListLongMap!4364 (toList!5834 List!52844)) )
))
(declare-fun lm!2023 () ListLongMap!4363)

(declare-fun lt!1877476 () ListMap!5197)

(declare-fun addToMapMapFromBucket!1402 (List!52843 ListMap!5197) ListMap!5197)

(assert (=> b!4713164 (= lt!1877464 (addToMapMapFromBucket!1402 (_2!30436 (h!59039 (toList!5834 lm!2023))) lt!1877476))))

(declare-fun extractMap!1998 (List!52844) ListMap!5197)

(assert (=> b!4713164 (= lt!1877476 (extractMap!1998 (t!360086 (toList!5834 lm!2023))))))

(declare-fun tail!8893 (ListLongMap!4363) ListLongMap!4363)

(assert (=> b!4713164 (= (t!360086 (toList!5834 lm!2023)) (toList!5834 (tail!8893 lm!2023)))))

(declare-fun b!4713166 () Bool)

(declare-fun e!2939599 () Bool)

(assert (=> b!4713166 (= e!2939599 e!2939593)))

(declare-fun res!1992400 () Bool)

(assert (=> b!4713166 (=> (not res!1992400) (not e!2939593))))

(declare-fun lt!1877466 () tuple2!54284)

(declare-fun head!10173 (List!52844) tuple2!54284)

(assert (=> b!4713166 (= res!1992400 (= (head!10173 (toList!5834 lm!2023)) lt!1877466))))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4713166 (= lt!1877466 (tuple2!54285 hash!405 oldBucket!34))))

(declare-fun b!4713167 () Bool)

(declare-fun e!2939597 () Bool)

(assert (=> b!4713167 (= e!2939594 e!2939597)))

(declare-fun res!1992401 () Bool)

(assert (=> b!4713167 (=> res!1992401 e!2939597)))

(declare-fun containsKey!3289 (List!52843 K!14080) Bool)

(assert (=> b!4713167 (= res!1992401 (not (containsKey!3289 (t!360085 oldBucket!34) key!4653)))))

(assert (=> b!4713167 (containsKey!3289 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!128236 0))(
  ( (Unit!128237) )
))
(declare-fun lt!1877469 () Unit!128236)

(declare-datatypes ((Hashable!6341 0))(
  ( (HashableExt!6340 (__x!32044 Int)) )
))
(declare-fun hashF!1323 () Hashable!6341)

(declare-fun lemmaGetPairDefinedThenContainsKey!286 (List!52843 K!14080 Hashable!6341) Unit!128236)

(assert (=> b!4713167 (= lt!1877469 (lemmaGetPairDefinedThenContainsKey!286 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1877475 () List!52843)

(declare-datatypes ((Option!12292 0))(
  ( (None!12291) (Some!12291 (v!46830 tuple2!54282)) )
))
(declare-fun isDefined!9546 (Option!12292) Bool)

(declare-fun getPair!538 (List!52843 K!14080) Option!12292)

(assert (=> b!4713167 (isDefined!9546 (getPair!538 lt!1877475 key!4653))))

(declare-fun lt!1877461 () Unit!128236)

(declare-fun lambda!213273 () Int)

(declare-fun lt!1877462 () tuple2!54284)

(declare-fun forallContained!3582 (List!52844 Int tuple2!54284) Unit!128236)

(assert (=> b!4713167 (= lt!1877461 (forallContained!3582 (toList!5834 lm!2023) lambda!213273 lt!1877462))))

(declare-fun contains!16035 (List!52844 tuple2!54284) Bool)

(assert (=> b!4713167 (contains!16035 (toList!5834 lm!2023) lt!1877462)))

(declare-fun lt!1877471 () (_ BitVec 64))

(assert (=> b!4713167 (= lt!1877462 (tuple2!54285 lt!1877471 lt!1877475))))

(declare-fun lt!1877477 () Unit!128236)

(declare-fun lemmaGetValueImpliesTupleContained!343 (ListLongMap!4363 (_ BitVec 64) List!52843) Unit!128236)

(assert (=> b!4713167 (= lt!1877477 (lemmaGetValueImpliesTupleContained!343 lm!2023 lt!1877471 lt!1877475))))

(declare-fun apply!12421 (ListLongMap!4363 (_ BitVec 64)) List!52843)

(assert (=> b!4713167 (= lt!1877475 (apply!12421 lm!2023 lt!1877471))))

(declare-fun contains!16036 (ListLongMap!4363 (_ BitVec 64)) Bool)

(assert (=> b!4713167 (contains!16036 lm!2023 lt!1877471)))

(declare-fun lt!1877463 () Unit!128236)

(declare-fun lemmaInGenMapThenLongMapContainsHash!744 (ListLongMap!4363 K!14080 Hashable!6341) Unit!128236)

(assert (=> b!4713167 (= lt!1877463 (lemmaInGenMapThenLongMapContainsHash!744 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1877467 () Unit!128236)

(declare-fun lemmaInGenMapThenGetPairDefined!334 (ListLongMap!4363 K!14080 Hashable!6341) Unit!128236)

(assert (=> b!4713167 (= lt!1877467 (lemmaInGenMapThenGetPairDefined!334 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4713168 () Bool)

(declare-fun e!2939595 () Bool)

(assert (=> b!4713168 (= e!2939595 e!2939599)))

(declare-fun res!1992399 () Bool)

(assert (=> b!4713168 (=> (not res!1992399) (not e!2939599))))

(assert (=> b!4713168 (= res!1992399 (= lt!1877471 hash!405))))

(declare-fun hash!4306 (Hashable!6341 K!14080) (_ BitVec 64))

(assert (=> b!4713168 (= lt!1877471 (hash!4306 hashF!1323 key!4653))))

(declare-fun b!4713169 () Bool)

(declare-fun e!2939598 () Bool)

(declare-fun tp_is_empty!31181 () Bool)

(declare-fun tp!1347717 () Bool)

(declare-fun tp_is_empty!31183 () Bool)

(assert (=> b!4713169 (= e!2939598 (and tp_is_empty!31181 tp_is_empty!31183 tp!1347717))))

(declare-fun b!4713170 () Bool)

(declare-fun res!1992411 () Bool)

(assert (=> b!4713170 (=> (not res!1992411) (not e!2939599))))

(declare-fun allKeysSameHash!1798 (List!52843 (_ BitVec 64) Hashable!6341) Bool)

(assert (=> b!4713170 (= res!1992411 (allKeysSameHash!1798 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4713171 () Bool)

(declare-fun res!1992410 () Bool)

(assert (=> b!4713171 (=> (not res!1992410) (not e!2939596))))

(declare-fun noDuplicateKeys!1972 (List!52843) Bool)

(assert (=> b!4713171 (= res!1992410 (noDuplicateKeys!1972 oldBucket!34))))

(declare-fun b!4713172 () Bool)

(declare-fun res!1992408 () Bool)

(assert (=> b!4713172 (=> (not res!1992408) (not e!2939596))))

(assert (=> b!4713172 (= res!1992408 (noDuplicateKeys!1972 newBucket!218))))

(declare-fun b!4713173 () Bool)

(declare-fun res!1992397 () Bool)

(assert (=> b!4713173 (=> (not res!1992397) (not e!2939599))))

(declare-fun allKeysSameHashInMap!1886 (ListLongMap!4363 Hashable!6341) Bool)

(assert (=> b!4713173 (= res!1992397 (allKeysSameHashInMap!1886 lm!2023 hashF!1323))))

(declare-fun e!2939601 () Bool)

(declare-fun b!4713174 () Bool)

(declare-fun lt!1877472 () List!52843)

(declare-fun eq!1099 (ListMap!5197 ListMap!5197) Bool)

(declare-fun +!2232 (ListMap!5197 tuple2!54282) ListMap!5197)

(assert (=> b!4713174 (= e!2939601 (eq!1099 (extractMap!1998 (Cons!52720 lt!1877466 (t!360086 (toList!5834 lm!2023)))) (+!2232 (extractMap!1998 (Cons!52720 (tuple2!54285 hash!405 lt!1877472) (t!360086 (toList!5834 lm!2023)))) (h!59038 oldBucket!34))))))

(declare-fun lt!1877473 () tuple2!54282)

(declare-fun lt!1877460 () List!52843)

(assert (=> b!4713174 (eq!1099 (addToMapMapFromBucket!1402 (Cons!52719 lt!1877473 lt!1877460) lt!1877476) (+!2232 (addToMapMapFromBucket!1402 lt!1877460 lt!1877476) lt!1877473))))

(declare-fun lt!1877474 () Unit!128236)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!348 (tuple2!54282 List!52843 ListMap!5197) Unit!128236)

(assert (=> b!4713174 (= lt!1877474 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!348 lt!1877473 lt!1877460 lt!1877476))))

(declare-fun head!10174 (List!52843) tuple2!54282)

(assert (=> b!4713174 (= lt!1877473 (head!10174 newBucket!218))))

(declare-fun lt!1877478 () tuple2!54282)

(assert (=> b!4713174 (eq!1099 (addToMapMapFromBucket!1402 (Cons!52719 lt!1877478 lt!1877472) lt!1877476) (+!2232 (addToMapMapFromBucket!1402 lt!1877472 lt!1877476) lt!1877478))))

(declare-fun lt!1877470 () Unit!128236)

(assert (=> b!4713174 (= lt!1877470 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!348 lt!1877478 lt!1877472 lt!1877476))))

(assert (=> b!4713174 (= lt!1877478 (head!10174 oldBucket!34))))

(declare-fun lt!1877468 () List!52844)

(declare-fun contains!16037 (ListMap!5197 K!14080) Bool)

(assert (=> b!4713174 (contains!16037 (extractMap!1998 lt!1877468) key!4653)))

(declare-fun lt!1877465 () Unit!128236)

(declare-fun lemmaListContainsThenExtractedMapContains!518 (ListLongMap!4363 K!14080 Hashable!6341) Unit!128236)

(assert (=> b!4713174 (= lt!1877465 (lemmaListContainsThenExtractedMapContains!518 (ListLongMap!4364 lt!1877468) key!4653 hashF!1323))))

(assert (=> b!4713174 (= lt!1877468 (Cons!52720 (tuple2!54285 hash!405 (t!360085 oldBucket!34)) (t!360086 (toList!5834 lm!2023))))))

(declare-fun b!4713175 () Bool)

(declare-fun res!1992402 () Bool)

(assert (=> b!4713175 (=> (not res!1992402) (not e!2939593))))

(assert (=> b!4713175 (= res!1992402 ((_ is Cons!52720) (toList!5834 lm!2023)))))

(declare-fun b!4713165 () Bool)

(declare-fun res!1992407 () Bool)

(assert (=> b!4713165 (=> (not res!1992407) (not e!2939596))))

(assert (=> b!4713165 (= res!1992407 (allKeysSameHash!1798 oldBucket!34 hash!405 hashF!1323))))

(declare-fun res!1992404 () Bool)

(assert (=> start!479100 (=> (not res!1992404) (not e!2939596))))

(declare-fun forall!11513 (List!52844 Int) Bool)

(assert (=> start!479100 (= res!1992404 (forall!11513 (toList!5834 lm!2023) lambda!213273))))

(assert (=> start!479100 e!2939596))

(declare-fun inv!67954 (ListLongMap!4363) Bool)

(assert (=> start!479100 (and (inv!67954 lm!2023) e!2939602)))

(assert (=> start!479100 tp_is_empty!31181))

(assert (=> start!479100 e!2939598))

(assert (=> start!479100 true))

(declare-fun e!2939600 () Bool)

(assert (=> start!479100 e!2939600))

(declare-fun b!4713176 () Bool)

(declare-fun res!1992403 () Bool)

(assert (=> b!4713176 (=> res!1992403 e!2939601)))

(assert (=> b!4713176 (= res!1992403 (not (= (removePairForKey!1567 (t!360085 oldBucket!34) key!4653) lt!1877460)))))

(declare-fun b!4713177 () Bool)

(assert (=> b!4713177 (= e!2939596 e!2939595)))

(declare-fun res!1992398 () Bool)

(assert (=> b!4713177 (=> (not res!1992398) (not e!2939595))))

(assert (=> b!4713177 (= res!1992398 (contains!16037 lt!1877464 key!4653))))

(assert (=> b!4713177 (= lt!1877464 (extractMap!1998 (toList!5834 lm!2023)))))

(declare-fun tp!1347719 () Bool)

(declare-fun b!4713178 () Bool)

(assert (=> b!4713178 (= e!2939600 (and tp_is_empty!31181 tp_is_empty!31183 tp!1347719))))

(declare-fun b!4713179 () Bool)

(assert (=> b!4713179 (= e!2939597 e!2939601)))

(declare-fun res!1992405 () Bool)

(assert (=> b!4713179 (=> res!1992405 e!2939601)))

(assert (=> b!4713179 (= res!1992405 (not (= (removePairForKey!1567 lt!1877472 key!4653) lt!1877460)))))

(declare-fun tail!8894 (List!52843) List!52843)

(assert (=> b!4713179 (= lt!1877460 (tail!8894 newBucket!218))))

(assert (=> b!4713179 (= lt!1877472 (tail!8894 oldBucket!34))))

(assert (= (and start!479100 res!1992404) b!4713171))

(assert (= (and b!4713171 res!1992410) b!4713172))

(assert (= (and b!4713172 res!1992408) b!4713162))

(assert (= (and b!4713162 res!1992406) b!4713165))

(assert (= (and b!4713165 res!1992407) b!4713177))

(assert (= (and b!4713177 res!1992398) b!4713168))

(assert (= (and b!4713168 res!1992399) b!4713170))

(assert (= (and b!4713170 res!1992411) b!4713173))

(assert (= (and b!4713173 res!1992397) b!4713166))

(assert (= (and b!4713166 res!1992400) b!4713175))

(assert (= (and b!4713175 res!1992402) b!4713164))

(assert (= (and b!4713164 (not res!1992409)) b!4713167))

(assert (= (and b!4713167 (not res!1992401)) b!4713179))

(assert (= (and b!4713179 (not res!1992405)) b!4713176))

(assert (= (and b!4713176 (not res!1992403)) b!4713174))

(assert (= start!479100 b!4713163))

(assert (= (and start!479100 ((_ is Cons!52719) oldBucket!34)) b!4713169))

(assert (= (and start!479100 ((_ is Cons!52719) newBucket!218)) b!4713178))

(declare-fun m!5639511 () Bool)

(assert (=> b!4713167 m!5639511))

(declare-fun m!5639513 () Bool)

(assert (=> b!4713167 m!5639513))

(declare-fun m!5639515 () Bool)

(assert (=> b!4713167 m!5639515))

(declare-fun m!5639517 () Bool)

(assert (=> b!4713167 m!5639517))

(declare-fun m!5639519 () Bool)

(assert (=> b!4713167 m!5639519))

(declare-fun m!5639521 () Bool)

(assert (=> b!4713167 m!5639521))

(declare-fun m!5639523 () Bool)

(assert (=> b!4713167 m!5639523))

(declare-fun m!5639525 () Bool)

(assert (=> b!4713167 m!5639525))

(assert (=> b!4713167 m!5639523))

(declare-fun m!5639527 () Bool)

(assert (=> b!4713167 m!5639527))

(declare-fun m!5639529 () Bool)

(assert (=> b!4713167 m!5639529))

(declare-fun m!5639531 () Bool)

(assert (=> b!4713167 m!5639531))

(declare-fun m!5639533 () Bool)

(assert (=> b!4713167 m!5639533))

(declare-fun m!5639535 () Bool)

(assert (=> start!479100 m!5639535))

(declare-fun m!5639537 () Bool)

(assert (=> start!479100 m!5639537))

(declare-fun m!5639539 () Bool)

(assert (=> b!4713165 m!5639539))

(declare-fun m!5639541 () Bool)

(assert (=> b!4713174 m!5639541))

(declare-fun m!5639543 () Bool)

(assert (=> b!4713174 m!5639543))

(declare-fun m!5639545 () Bool)

(assert (=> b!4713174 m!5639545))

(declare-fun m!5639547 () Bool)

(assert (=> b!4713174 m!5639547))

(declare-fun m!5639549 () Bool)

(assert (=> b!4713174 m!5639549))

(declare-fun m!5639551 () Bool)

(assert (=> b!4713174 m!5639551))

(declare-fun m!5639553 () Bool)

(assert (=> b!4713174 m!5639553))

(declare-fun m!5639555 () Bool)

(assert (=> b!4713174 m!5639555))

(declare-fun m!5639557 () Bool)

(assert (=> b!4713174 m!5639557))

(declare-fun m!5639559 () Bool)

(assert (=> b!4713174 m!5639559))

(declare-fun m!5639561 () Bool)

(assert (=> b!4713174 m!5639561))

(declare-fun m!5639563 () Bool)

(assert (=> b!4713174 m!5639563))

(declare-fun m!5639565 () Bool)

(assert (=> b!4713174 m!5639565))

(assert (=> b!4713174 m!5639561))

(assert (=> b!4713174 m!5639549))

(assert (=> b!4713174 m!5639541))

(declare-fun m!5639567 () Bool)

(assert (=> b!4713174 m!5639567))

(assert (=> b!4713174 m!5639559))

(declare-fun m!5639569 () Bool)

(assert (=> b!4713174 m!5639569))

(assert (=> b!4713174 m!5639543))

(declare-fun m!5639571 () Bool)

(assert (=> b!4713174 m!5639571))

(assert (=> b!4713174 m!5639555))

(declare-fun m!5639573 () Bool)

(assert (=> b!4713174 m!5639573))

(declare-fun m!5639575 () Bool)

(assert (=> b!4713174 m!5639575))

(declare-fun m!5639577 () Bool)

(assert (=> b!4713174 m!5639577))

(assert (=> b!4713174 m!5639551))

(assert (=> b!4713174 m!5639569))

(assert (=> b!4713174 m!5639565))

(assert (=> b!4713174 m!5639577))

(declare-fun m!5639579 () Bool)

(assert (=> b!4713164 m!5639579))

(declare-fun m!5639581 () Bool)

(assert (=> b!4713164 m!5639581))

(declare-fun m!5639583 () Bool)

(assert (=> b!4713164 m!5639583))

(declare-fun m!5639585 () Bool)

(assert (=> b!4713177 m!5639585))

(declare-fun m!5639587 () Bool)

(assert (=> b!4713177 m!5639587))

(declare-fun m!5639589 () Bool)

(assert (=> b!4713179 m!5639589))

(declare-fun m!5639591 () Bool)

(assert (=> b!4713179 m!5639591))

(declare-fun m!5639593 () Bool)

(assert (=> b!4713179 m!5639593))

(declare-fun m!5639595 () Bool)

(assert (=> b!4713172 m!5639595))

(declare-fun m!5639597 () Bool)

(assert (=> b!4713176 m!5639597))

(declare-fun m!5639599 () Bool)

(assert (=> b!4713173 m!5639599))

(declare-fun m!5639601 () Bool)

(assert (=> b!4713171 m!5639601))

(declare-fun m!5639603 () Bool)

(assert (=> b!4713162 m!5639603))

(declare-fun m!5639605 () Bool)

(assert (=> b!4713170 m!5639605))

(declare-fun m!5639607 () Bool)

(assert (=> b!4713168 m!5639607))

(declare-fun m!5639609 () Bool)

(assert (=> b!4713166 m!5639609))

(check-sat (not b!4713172) (not b!4713177) (not b!4713179) tp_is_empty!31181 (not b!4713173) (not b!4713176) (not b!4713165) (not b!4713170) (not b!4713163) (not start!479100) (not b!4713166) (not b!4713162) (not b!4713168) (not b!4713178) (not b!4713169) (not b!4713171) (not b!4713167) (not b!4713164) tp_is_empty!31183 (not b!4713174))
(check-sat)
(get-model)

(declare-fun b!4713204 () Bool)

(declare-fun e!2939622 () Bool)

(declare-datatypes ((List!52845 0))(
  ( (Nil!52721) (Cons!52721 (h!59042 K!14080) (t!360089 List!52845)) )
))
(declare-fun contains!16039 (List!52845 K!14080) Bool)

(declare-fun keys!18904 (ListMap!5197) List!52845)

(assert (=> b!4713204 (= e!2939622 (contains!16039 (keys!18904 lt!1877464) key!4653))))

(declare-fun bm!329499 () Bool)

(declare-fun call!329504 () Bool)

(declare-fun e!2939618 () List!52845)

(assert (=> bm!329499 (= call!329504 (contains!16039 e!2939618 key!4653))))

(declare-fun c!805105 () Bool)

(declare-fun c!805104 () Bool)

(assert (=> bm!329499 (= c!805105 c!805104)))

(declare-fun b!4713205 () Bool)

(declare-fun e!2939620 () Bool)

(assert (=> b!4713205 (= e!2939620 (not (contains!16039 (keys!18904 lt!1877464) key!4653)))))

(declare-fun b!4713206 () Bool)

(declare-fun e!2939623 () Unit!128236)

(declare-fun e!2939619 () Unit!128236)

(assert (=> b!4713206 (= e!2939623 e!2939619)))

(declare-fun c!805106 () Bool)

(assert (=> b!4713206 (= c!805106 call!329504)))

(declare-fun b!4713207 () Bool)

(declare-fun e!2939621 () Bool)

(assert (=> b!4713207 (= e!2939621 e!2939622)))

(declare-fun res!1992426 () Bool)

(assert (=> b!4713207 (=> (not res!1992426) (not e!2939622))))

(declare-datatypes ((Option!12294 0))(
  ( (None!12293) (Some!12293 (v!46836 V!14326)) )
))
(declare-fun isDefined!9547 (Option!12294) Bool)

(declare-fun getValueByKey!1914 (List!52843 K!14080) Option!12294)

(assert (=> b!4713207 (= res!1992426 (isDefined!9547 (getValueByKey!1914 (toList!5833 lt!1877464) key!4653)))))

(declare-fun b!4713208 () Bool)

(declare-fun lt!1877508 () Unit!128236)

(assert (=> b!4713208 (= e!2939623 lt!1877508)))

(declare-fun lt!1877509 () Unit!128236)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1804 (List!52843 K!14080) Unit!128236)

(assert (=> b!4713208 (= lt!1877509 (lemmaContainsKeyImpliesGetValueByKeyDefined!1804 (toList!5833 lt!1877464) key!4653))))

(assert (=> b!4713208 (isDefined!9547 (getValueByKey!1914 (toList!5833 lt!1877464) key!4653))))

(declare-fun lt!1877511 () Unit!128236)

(assert (=> b!4713208 (= lt!1877511 lt!1877509)))

(declare-fun lemmaInListThenGetKeysListContains!918 (List!52843 K!14080) Unit!128236)

(assert (=> b!4713208 (= lt!1877508 (lemmaInListThenGetKeysListContains!918 (toList!5833 lt!1877464) key!4653))))

(assert (=> b!4713208 call!329504))

(declare-fun b!4713209 () Bool)

(assert (=> b!4713209 false))

(declare-fun lt!1877512 () Unit!128236)

(declare-fun lt!1877514 () Unit!128236)

(assert (=> b!4713209 (= lt!1877512 lt!1877514)))

(declare-fun containsKey!3290 (List!52843 K!14080) Bool)

(assert (=> b!4713209 (containsKey!3290 (toList!5833 lt!1877464) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!922 (List!52843 K!14080) Unit!128236)

(assert (=> b!4713209 (= lt!1877514 (lemmaInGetKeysListThenContainsKey!922 (toList!5833 lt!1877464) key!4653))))

(declare-fun Unit!128249 () Unit!128236)

(assert (=> b!4713209 (= e!2939619 Unit!128249)))

(declare-fun b!4713210 () Bool)

(declare-fun getKeysList!923 (List!52843) List!52845)

(assert (=> b!4713210 (= e!2939618 (getKeysList!923 (toList!5833 lt!1877464)))))

(declare-fun b!4713211 () Bool)

(assert (=> b!4713211 (= e!2939618 (keys!18904 lt!1877464))))

(declare-fun d!1499680 () Bool)

(assert (=> d!1499680 e!2939621))

(declare-fun res!1992424 () Bool)

(assert (=> d!1499680 (=> res!1992424 e!2939621)))

(assert (=> d!1499680 (= res!1992424 e!2939620)))

(declare-fun res!1992425 () Bool)

(assert (=> d!1499680 (=> (not res!1992425) (not e!2939620))))

(declare-fun lt!1877507 () Bool)

(assert (=> d!1499680 (= res!1992425 (not lt!1877507))))

(declare-fun lt!1877510 () Bool)

(assert (=> d!1499680 (= lt!1877507 lt!1877510)))

(declare-fun lt!1877513 () Unit!128236)

(assert (=> d!1499680 (= lt!1877513 e!2939623)))

(assert (=> d!1499680 (= c!805104 lt!1877510)))

(assert (=> d!1499680 (= lt!1877510 (containsKey!3290 (toList!5833 lt!1877464) key!4653))))

(assert (=> d!1499680 (= (contains!16037 lt!1877464 key!4653) lt!1877507)))

(declare-fun b!4713212 () Bool)

(declare-fun Unit!128250 () Unit!128236)

(assert (=> b!4713212 (= e!2939619 Unit!128250)))

(assert (= (and d!1499680 c!805104) b!4713208))

(assert (= (and d!1499680 (not c!805104)) b!4713206))

(assert (= (and b!4713206 c!805106) b!4713209))

(assert (= (and b!4713206 (not c!805106)) b!4713212))

(assert (= (or b!4713208 b!4713206) bm!329499))

(assert (= (and bm!329499 c!805105) b!4713210))

(assert (= (and bm!329499 (not c!805105)) b!4713211))

(assert (= (and d!1499680 res!1992425) b!4713205))

(assert (= (and d!1499680 (not res!1992424)) b!4713207))

(assert (= (and b!4713207 res!1992426) b!4713204))

(declare-fun m!5639627 () Bool)

(assert (=> b!4713210 m!5639627))

(declare-fun m!5639629 () Bool)

(assert (=> b!4713209 m!5639629))

(declare-fun m!5639631 () Bool)

(assert (=> b!4713209 m!5639631))

(declare-fun m!5639633 () Bool)

(assert (=> bm!329499 m!5639633))

(declare-fun m!5639635 () Bool)

(assert (=> b!4713204 m!5639635))

(assert (=> b!4713204 m!5639635))

(declare-fun m!5639637 () Bool)

(assert (=> b!4713204 m!5639637))

(declare-fun m!5639639 () Bool)

(assert (=> b!4713207 m!5639639))

(assert (=> b!4713207 m!5639639))

(declare-fun m!5639641 () Bool)

(assert (=> b!4713207 m!5639641))

(assert (=> b!4713205 m!5639635))

(assert (=> b!4713205 m!5639635))

(assert (=> b!4713205 m!5639637))

(declare-fun m!5639643 () Bool)

(assert (=> b!4713208 m!5639643))

(assert (=> b!4713208 m!5639639))

(assert (=> b!4713208 m!5639639))

(assert (=> b!4713208 m!5639641))

(declare-fun m!5639645 () Bool)

(assert (=> b!4713208 m!5639645))

(assert (=> b!4713211 m!5639635))

(assert (=> d!1499680 m!5639629))

(assert (=> b!4713177 d!1499680))

(declare-fun bs!1102687 () Bool)

(declare-fun d!1499684 () Bool)

(assert (= bs!1102687 (and d!1499684 start!479100)))

(declare-fun lambda!213276 () Int)

(assert (=> bs!1102687 (= lambda!213276 lambda!213273)))

(declare-fun lt!1877517 () ListMap!5197)

(declare-fun invariantList!1484 (List!52843) Bool)

(assert (=> d!1499684 (invariantList!1484 (toList!5833 lt!1877517))))

(declare-fun e!2939626 () ListMap!5197)

(assert (=> d!1499684 (= lt!1877517 e!2939626)))

(declare-fun c!805109 () Bool)

(assert (=> d!1499684 (= c!805109 ((_ is Cons!52720) (toList!5834 lm!2023)))))

(assert (=> d!1499684 (forall!11513 (toList!5834 lm!2023) lambda!213276)))

(assert (=> d!1499684 (= (extractMap!1998 (toList!5834 lm!2023)) lt!1877517)))

(declare-fun b!4713217 () Bool)

(assert (=> b!4713217 (= e!2939626 (addToMapMapFromBucket!1402 (_2!30436 (h!59039 (toList!5834 lm!2023))) (extractMap!1998 (t!360086 (toList!5834 lm!2023)))))))

(declare-fun b!4713218 () Bool)

(assert (=> b!4713218 (= e!2939626 (ListMap!5198 Nil!52719))))

(assert (= (and d!1499684 c!805109) b!4713217))

(assert (= (and d!1499684 (not c!805109)) b!4713218))

(declare-fun m!5639647 () Bool)

(assert (=> d!1499684 m!5639647))

(declare-fun m!5639649 () Bool)

(assert (=> d!1499684 m!5639649))

(assert (=> b!4713217 m!5639581))

(assert (=> b!4713217 m!5639581))

(declare-fun m!5639651 () Bool)

(assert (=> b!4713217 m!5639651))

(assert (=> b!4713177 d!1499684))

(declare-fun d!1499686 () Bool)

(assert (=> d!1499686 (= (head!10173 (toList!5834 lm!2023)) (h!59039 (toList!5834 lm!2023)))))

(assert (=> b!4713166 d!1499686))

(declare-fun b!4713227 () Bool)

(declare-fun e!2939631 () List!52843)

(assert (=> b!4713227 (= e!2939631 (t!360085 (t!360085 oldBucket!34)))))

(declare-fun b!4713230 () Bool)

(declare-fun e!2939632 () List!52843)

(assert (=> b!4713230 (= e!2939632 Nil!52719)))

(declare-fun b!4713228 () Bool)

(assert (=> b!4713228 (= e!2939631 e!2939632)))

(declare-fun c!805114 () Bool)

(assert (=> b!4713228 (= c!805114 ((_ is Cons!52719) (t!360085 oldBucket!34)))))

(declare-fun d!1499688 () Bool)

(declare-fun lt!1877520 () List!52843)

(assert (=> d!1499688 (not (containsKey!3289 lt!1877520 key!4653))))

(assert (=> d!1499688 (= lt!1877520 e!2939631)))

(declare-fun c!805115 () Bool)

(assert (=> d!1499688 (= c!805115 (and ((_ is Cons!52719) (t!360085 oldBucket!34)) (= (_1!30435 (h!59038 (t!360085 oldBucket!34))) key!4653)))))

(assert (=> d!1499688 (noDuplicateKeys!1972 (t!360085 oldBucket!34))))

(assert (=> d!1499688 (= (removePairForKey!1567 (t!360085 oldBucket!34) key!4653) lt!1877520)))

(declare-fun b!4713229 () Bool)

(assert (=> b!4713229 (= e!2939632 (Cons!52719 (h!59038 (t!360085 oldBucket!34)) (removePairForKey!1567 (t!360085 (t!360085 oldBucket!34)) key!4653)))))

(assert (= (and d!1499688 c!805115) b!4713227))

(assert (= (and d!1499688 (not c!805115)) b!4713228))

(assert (= (and b!4713228 c!805114) b!4713229))

(assert (= (and b!4713228 (not c!805114)) b!4713230))

(declare-fun m!5639653 () Bool)

(assert (=> d!1499688 m!5639653))

(declare-fun m!5639655 () Bool)

(assert (=> d!1499688 m!5639655))

(declare-fun m!5639657 () Bool)

(assert (=> b!4713229 m!5639657))

(assert (=> b!4713176 d!1499688))

(declare-fun d!1499690 () Bool)

(assert (=> d!1499690 true))

(assert (=> d!1499690 true))

(declare-fun lambda!213279 () Int)

(declare-fun forall!11515 (List!52843 Int) Bool)

(assert (=> d!1499690 (= (allKeysSameHash!1798 oldBucket!34 hash!405 hashF!1323) (forall!11515 oldBucket!34 lambda!213279))))

(declare-fun bs!1102688 () Bool)

(assert (= bs!1102688 d!1499690))

(declare-fun m!5639659 () Bool)

(assert (=> bs!1102688 m!5639659))

(assert (=> b!4713165 d!1499690))

(declare-fun bs!1102693 () Bool)

(declare-fun b!4713295 () Bool)

(assert (= bs!1102693 (and b!4713295 d!1499690)))

(declare-fun lambda!213340 () Int)

(assert (=> bs!1102693 (not (= lambda!213340 lambda!213279))))

(assert (=> b!4713295 true))

(declare-fun bs!1102694 () Bool)

(declare-fun b!4713291 () Bool)

(assert (= bs!1102694 (and b!4713291 d!1499690)))

(declare-fun lambda!213341 () Int)

(assert (=> bs!1102694 (not (= lambda!213341 lambda!213279))))

(declare-fun bs!1102695 () Bool)

(assert (= bs!1102695 (and b!4713291 b!4713295)))

(assert (=> bs!1102695 (= lambda!213341 lambda!213340)))

(assert (=> b!4713291 true))

(declare-fun lambda!213342 () Int)

(assert (=> bs!1102694 (not (= lambda!213342 lambda!213279))))

(declare-fun lt!1877659 () ListMap!5197)

(assert (=> bs!1102695 (= (= lt!1877659 lt!1877476) (= lambda!213342 lambda!213340))))

(assert (=> b!4713291 (= (= lt!1877659 lt!1877476) (= lambda!213342 lambda!213341))))

(assert (=> b!4713291 true))

(declare-fun bs!1102696 () Bool)

(declare-fun d!1499692 () Bool)

(assert (= bs!1102696 (and d!1499692 d!1499690)))

(declare-fun lambda!213343 () Int)

(assert (=> bs!1102696 (not (= lambda!213343 lambda!213279))))

(declare-fun bs!1102697 () Bool)

(assert (= bs!1102697 (and d!1499692 b!4713295)))

(declare-fun lt!1877669 () ListMap!5197)

(assert (=> bs!1102697 (= (= lt!1877669 lt!1877476) (= lambda!213343 lambda!213340))))

(declare-fun bs!1102698 () Bool)

(assert (= bs!1102698 (and d!1499692 b!4713291)))

(assert (=> bs!1102698 (= (= lt!1877669 lt!1877476) (= lambda!213343 lambda!213341))))

(assert (=> bs!1102698 (= (= lt!1877669 lt!1877659) (= lambda!213343 lambda!213342))))

(assert (=> d!1499692 true))

(declare-fun e!2939669 () ListMap!5197)

(assert (=> b!4713291 (= e!2939669 lt!1877659)))

(declare-fun lt!1877672 () ListMap!5197)

(assert (=> b!4713291 (= lt!1877672 (+!2232 lt!1877476 (h!59038 (_2!30436 (h!59039 (toList!5834 lm!2023))))))))

(assert (=> b!4713291 (= lt!1877659 (addToMapMapFromBucket!1402 (t!360085 (_2!30436 (h!59039 (toList!5834 lm!2023)))) (+!2232 lt!1877476 (h!59038 (_2!30436 (h!59039 (toList!5834 lm!2023)))))))))

(declare-fun lt!1877666 () Unit!128236)

(declare-fun call!329525 () Unit!128236)

(assert (=> b!4713291 (= lt!1877666 call!329525)))

(assert (=> b!4713291 (forall!11515 (toList!5833 lt!1877476) lambda!213341)))

(declare-fun lt!1877671 () Unit!128236)

(assert (=> b!4713291 (= lt!1877671 lt!1877666)))

(assert (=> b!4713291 (forall!11515 (toList!5833 lt!1877672) lambda!213342)))

(declare-fun lt!1877676 () Unit!128236)

(declare-fun Unit!128253 () Unit!128236)

(assert (=> b!4713291 (= lt!1877676 Unit!128253)))

(assert (=> b!4713291 (forall!11515 (t!360085 (_2!30436 (h!59039 (toList!5834 lm!2023)))) lambda!213342)))

(declare-fun lt!1877675 () Unit!128236)

(declare-fun Unit!128254 () Unit!128236)

(assert (=> b!4713291 (= lt!1877675 Unit!128254)))

(declare-fun lt!1877667 () Unit!128236)

(declare-fun Unit!128255 () Unit!128236)

(assert (=> b!4713291 (= lt!1877667 Unit!128255)))

(declare-fun lt!1877657 () Unit!128236)

(declare-fun forallContained!3584 (List!52843 Int tuple2!54282) Unit!128236)

(assert (=> b!4713291 (= lt!1877657 (forallContained!3584 (toList!5833 lt!1877672) lambda!213342 (h!59038 (_2!30436 (h!59039 (toList!5834 lm!2023))))))))

(assert (=> b!4713291 (contains!16037 lt!1877672 (_1!30435 (h!59038 (_2!30436 (h!59039 (toList!5834 lm!2023))))))))

(declare-fun lt!1877658 () Unit!128236)

(declare-fun Unit!128256 () Unit!128236)

(assert (=> b!4713291 (= lt!1877658 Unit!128256)))

(assert (=> b!4713291 (contains!16037 lt!1877659 (_1!30435 (h!59038 (_2!30436 (h!59039 (toList!5834 lm!2023))))))))

(declare-fun lt!1877670 () Unit!128236)

(declare-fun Unit!128257 () Unit!128236)

(assert (=> b!4713291 (= lt!1877670 Unit!128257)))

(assert (=> b!4713291 (forall!11515 (_2!30436 (h!59039 (toList!5834 lm!2023))) lambda!213342)))

(declare-fun lt!1877660 () Unit!128236)

(declare-fun Unit!128258 () Unit!128236)

(assert (=> b!4713291 (= lt!1877660 Unit!128258)))

(declare-fun call!329523 () Bool)

(assert (=> b!4713291 call!329523))

(declare-fun lt!1877663 () Unit!128236)

(declare-fun Unit!128259 () Unit!128236)

(assert (=> b!4713291 (= lt!1877663 Unit!128259)))

(declare-fun lt!1877662 () Unit!128236)

(declare-fun Unit!128260 () Unit!128236)

(assert (=> b!4713291 (= lt!1877662 Unit!128260)))

(declare-fun lt!1877665 () Unit!128236)

(declare-fun addForallContainsKeyThenBeforeAdding!771 (ListMap!5197 ListMap!5197 K!14080 V!14326) Unit!128236)

(assert (=> b!4713291 (= lt!1877665 (addForallContainsKeyThenBeforeAdding!771 lt!1877476 lt!1877659 (_1!30435 (h!59038 (_2!30436 (h!59039 (toList!5834 lm!2023))))) (_2!30435 (h!59038 (_2!30436 (h!59039 (toList!5834 lm!2023)))))))))

(assert (=> b!4713291 (forall!11515 (toList!5833 lt!1877476) lambda!213342)))

(declare-fun lt!1877664 () Unit!128236)

(assert (=> b!4713291 (= lt!1877664 lt!1877665)))

(declare-fun call!329524 () Bool)

(assert (=> b!4713291 call!329524))

(declare-fun lt!1877674 () Unit!128236)

(declare-fun Unit!128261 () Unit!128236)

(assert (=> b!4713291 (= lt!1877674 Unit!128261)))

(declare-fun res!1992455 () Bool)

(assert (=> b!4713291 (= res!1992455 (forall!11515 (_2!30436 (h!59039 (toList!5834 lm!2023))) lambda!213342))))

(declare-fun e!2939668 () Bool)

(assert (=> b!4713291 (=> (not res!1992455) (not e!2939668))))

(assert (=> b!4713291 e!2939668))

(declare-fun lt!1877673 () Unit!128236)

(declare-fun Unit!128262 () Unit!128236)

(assert (=> b!4713291 (= lt!1877673 Unit!128262)))

(declare-fun b!4713292 () Bool)

(declare-fun res!1992453 () Bool)

(declare-fun e!2939667 () Bool)

(assert (=> b!4713292 (=> (not res!1992453) (not e!2939667))))

(assert (=> b!4713292 (= res!1992453 (forall!11515 (toList!5833 lt!1877476) lambda!213343))))

(declare-fun b!4713293 () Bool)

(assert (=> b!4713293 (= e!2939667 (invariantList!1484 (toList!5833 lt!1877669)))))

(declare-fun bm!329518 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!772 (ListMap!5197) Unit!128236)

(assert (=> bm!329518 (= call!329525 (lemmaContainsAllItsOwnKeys!772 lt!1877476))))

(assert (=> d!1499692 e!2939667))

(declare-fun res!1992454 () Bool)

(assert (=> d!1499692 (=> (not res!1992454) (not e!2939667))))

(assert (=> d!1499692 (= res!1992454 (forall!11515 (_2!30436 (h!59039 (toList!5834 lm!2023))) lambda!213343))))

(assert (=> d!1499692 (= lt!1877669 e!2939669)))

(declare-fun c!805130 () Bool)

(assert (=> d!1499692 (= c!805130 ((_ is Nil!52719) (_2!30436 (h!59039 (toList!5834 lm!2023)))))))

(assert (=> d!1499692 (noDuplicateKeys!1972 (_2!30436 (h!59039 (toList!5834 lm!2023))))))

(assert (=> d!1499692 (= (addToMapMapFromBucket!1402 (_2!30436 (h!59039 (toList!5834 lm!2023))) lt!1877476) lt!1877669)))

(declare-fun b!4713294 () Bool)

(assert (=> b!4713294 (= e!2939668 (forall!11515 (toList!5833 lt!1877476) lambda!213342))))

(declare-fun bm!329519 () Bool)

(assert (=> bm!329519 (= call!329524 (forall!11515 (toList!5833 lt!1877476) (ite c!805130 lambda!213340 lambda!213342)))))

(declare-fun bm!329520 () Bool)

(assert (=> bm!329520 (= call!329523 (forall!11515 (ite c!805130 (toList!5833 lt!1877476) (toList!5833 lt!1877672)) (ite c!805130 lambda!213340 lambda!213342)))))

(assert (=> b!4713295 (= e!2939669 lt!1877476)))

(declare-fun lt!1877661 () Unit!128236)

(assert (=> b!4713295 (= lt!1877661 call!329525)))

(assert (=> b!4713295 call!329523))

(declare-fun lt!1877677 () Unit!128236)

(assert (=> b!4713295 (= lt!1877677 lt!1877661)))

(assert (=> b!4713295 call!329524))

(declare-fun lt!1877668 () Unit!128236)

(declare-fun Unit!128263 () Unit!128236)

(assert (=> b!4713295 (= lt!1877668 Unit!128263)))

(assert (= (and d!1499692 c!805130) b!4713295))

(assert (= (and d!1499692 (not c!805130)) b!4713291))

(assert (= (and b!4713291 res!1992455) b!4713294))

(assert (= (or b!4713295 b!4713291) bm!329518))

(assert (= (or b!4713295 b!4713291) bm!329519))

(assert (= (or b!4713295 b!4713291) bm!329520))

(assert (= (and d!1499692 res!1992454) b!4713292))

(assert (= (and b!4713292 res!1992453) b!4713293))

(declare-fun m!5639731 () Bool)

(assert (=> b!4713294 m!5639731))

(declare-fun m!5639733 () Bool)

(assert (=> bm!329518 m!5639733))

(declare-fun m!5639735 () Bool)

(assert (=> b!4713292 m!5639735))

(declare-fun m!5639737 () Bool)

(assert (=> bm!329519 m!5639737))

(declare-fun m!5639739 () Bool)

(assert (=> b!4713293 m!5639739))

(declare-fun m!5639741 () Bool)

(assert (=> bm!329520 m!5639741))

(declare-fun m!5639743 () Bool)

(assert (=> d!1499692 m!5639743))

(declare-fun m!5639745 () Bool)

(assert (=> d!1499692 m!5639745))

(declare-fun m!5639747 () Bool)

(assert (=> b!4713291 m!5639747))

(declare-fun m!5639749 () Bool)

(assert (=> b!4713291 m!5639749))

(declare-fun m!5639751 () Bool)

(assert (=> b!4713291 m!5639751))

(declare-fun m!5639753 () Bool)

(assert (=> b!4713291 m!5639753))

(declare-fun m!5639755 () Bool)

(assert (=> b!4713291 m!5639755))

(assert (=> b!4713291 m!5639749))

(declare-fun m!5639757 () Bool)

(assert (=> b!4713291 m!5639757))

(assert (=> b!4713291 m!5639731))

(assert (=> b!4713291 m!5639753))

(declare-fun m!5639759 () Bool)

(assert (=> b!4713291 m!5639759))

(declare-fun m!5639761 () Bool)

(assert (=> b!4713291 m!5639761))

(declare-fun m!5639763 () Bool)

(assert (=> b!4713291 m!5639763))

(declare-fun m!5639765 () Bool)

(assert (=> b!4713291 m!5639765))

(assert (=> b!4713164 d!1499692))

(declare-fun bs!1102699 () Bool)

(declare-fun d!1499702 () Bool)

(assert (= bs!1102699 (and d!1499702 start!479100)))

(declare-fun lambda!213344 () Int)

(assert (=> bs!1102699 (= lambda!213344 lambda!213273)))

(declare-fun bs!1102700 () Bool)

(assert (= bs!1102700 (and d!1499702 d!1499684)))

(assert (=> bs!1102700 (= lambda!213344 lambda!213276)))

(declare-fun lt!1877678 () ListMap!5197)

(assert (=> d!1499702 (invariantList!1484 (toList!5833 lt!1877678))))

(declare-fun e!2939670 () ListMap!5197)

(assert (=> d!1499702 (= lt!1877678 e!2939670)))

(declare-fun c!805131 () Bool)

(assert (=> d!1499702 (= c!805131 ((_ is Cons!52720) (t!360086 (toList!5834 lm!2023))))))

(assert (=> d!1499702 (forall!11513 (t!360086 (toList!5834 lm!2023)) lambda!213344)))

(assert (=> d!1499702 (= (extractMap!1998 (t!360086 (toList!5834 lm!2023))) lt!1877678)))

(declare-fun b!4713298 () Bool)

(assert (=> b!4713298 (= e!2939670 (addToMapMapFromBucket!1402 (_2!30436 (h!59039 (t!360086 (toList!5834 lm!2023)))) (extractMap!1998 (t!360086 (t!360086 (toList!5834 lm!2023))))))))

(declare-fun b!4713299 () Bool)

(assert (=> b!4713299 (= e!2939670 (ListMap!5198 Nil!52719))))

(assert (= (and d!1499702 c!805131) b!4713298))

(assert (= (and d!1499702 (not c!805131)) b!4713299))

(declare-fun m!5639767 () Bool)

(assert (=> d!1499702 m!5639767))

(declare-fun m!5639769 () Bool)

(assert (=> d!1499702 m!5639769))

(declare-fun m!5639771 () Bool)

(assert (=> b!4713298 m!5639771))

(assert (=> b!4713298 m!5639771))

(declare-fun m!5639773 () Bool)

(assert (=> b!4713298 m!5639773))

(assert (=> b!4713164 d!1499702))

(declare-fun d!1499704 () Bool)

(declare-fun tail!8895 (List!52844) List!52844)

(assert (=> d!1499704 (= (tail!8893 lm!2023) (ListLongMap!4364 (tail!8895 (toList!5834 lm!2023))))))

(declare-fun bs!1102702 () Bool)

(assert (= bs!1102702 d!1499704))

(declare-fun m!5639775 () Bool)

(assert (=> bs!1102702 m!5639775))

(assert (=> b!4713164 d!1499704))

(declare-fun bs!1102704 () Bool)

(declare-fun b!4713304 () Bool)

(assert (= bs!1102704 (and b!4713304 b!4713295)))

(declare-fun lambda!213348 () Int)

(assert (=> bs!1102704 (= lambda!213348 lambda!213340)))

(declare-fun bs!1102705 () Bool)

(assert (= bs!1102705 (and b!4713304 d!1499690)))

(assert (=> bs!1102705 (not (= lambda!213348 lambda!213279))))

(declare-fun bs!1102706 () Bool)

(assert (= bs!1102706 (and b!4713304 b!4713291)))

(assert (=> bs!1102706 (= lambda!213348 lambda!213341)))

(declare-fun bs!1102707 () Bool)

(assert (= bs!1102707 (and b!4713304 d!1499692)))

(assert (=> bs!1102707 (= (= lt!1877476 lt!1877669) (= lambda!213348 lambda!213343))))

(assert (=> bs!1102706 (= (= lt!1877476 lt!1877659) (= lambda!213348 lambda!213342))))

(assert (=> b!4713304 true))

(declare-fun bs!1102709 () Bool)

(declare-fun b!4713300 () Bool)

(assert (= bs!1102709 (and b!4713300 b!4713295)))

(declare-fun lambda!213349 () Int)

(assert (=> bs!1102709 (= lambda!213349 lambda!213340)))

(declare-fun bs!1102710 () Bool)

(assert (= bs!1102710 (and b!4713300 d!1499690)))

(assert (=> bs!1102710 (not (= lambda!213349 lambda!213279))))

(declare-fun bs!1102711 () Bool)

(assert (= bs!1102711 (and b!4713300 b!4713291)))

(assert (=> bs!1102711 (= lambda!213349 lambda!213341)))

(declare-fun bs!1102712 () Bool)

(assert (= bs!1102712 (and b!4713300 d!1499692)))

(assert (=> bs!1102712 (= (= lt!1877476 lt!1877669) (= lambda!213349 lambda!213343))))

(declare-fun bs!1102713 () Bool)

(assert (= bs!1102713 (and b!4713300 b!4713304)))

(assert (=> bs!1102713 (= lambda!213349 lambda!213348)))

(assert (=> bs!1102711 (= (= lt!1877476 lt!1877659) (= lambda!213349 lambda!213342))))

(assert (=> b!4713300 true))

(declare-fun lt!1877684 () ListMap!5197)

(declare-fun lambda!213350 () Int)

(assert (=> b!4713300 (= (= lt!1877684 lt!1877476) (= lambda!213350 lambda!213349))))

(assert (=> bs!1102709 (= (= lt!1877684 lt!1877476) (= lambda!213350 lambda!213340))))

(assert (=> bs!1102710 (not (= lambda!213350 lambda!213279))))

(assert (=> bs!1102711 (= (= lt!1877684 lt!1877476) (= lambda!213350 lambda!213341))))

(assert (=> bs!1102712 (= (= lt!1877684 lt!1877669) (= lambda!213350 lambda!213343))))

(assert (=> bs!1102713 (= (= lt!1877684 lt!1877476) (= lambda!213350 lambda!213348))))

(assert (=> bs!1102711 (= (= lt!1877684 lt!1877659) (= lambda!213350 lambda!213342))))

(assert (=> b!4713300 true))

(declare-fun bs!1102714 () Bool)

(declare-fun d!1499706 () Bool)

(assert (= bs!1102714 (and d!1499706 b!4713300)))

(declare-fun lt!1877694 () ListMap!5197)

(declare-fun lambda!213351 () Int)

(assert (=> bs!1102714 (= (= lt!1877694 lt!1877476) (= lambda!213351 lambda!213349))))

(declare-fun bs!1102715 () Bool)

(assert (= bs!1102715 (and d!1499706 b!4713295)))

(assert (=> bs!1102715 (= (= lt!1877694 lt!1877476) (= lambda!213351 lambda!213340))))

(declare-fun bs!1102716 () Bool)

(assert (= bs!1102716 (and d!1499706 d!1499690)))

(assert (=> bs!1102716 (not (= lambda!213351 lambda!213279))))

(assert (=> bs!1102714 (= (= lt!1877694 lt!1877684) (= lambda!213351 lambda!213350))))

(declare-fun bs!1102717 () Bool)

(assert (= bs!1102717 (and d!1499706 b!4713291)))

(assert (=> bs!1102717 (= (= lt!1877694 lt!1877476) (= lambda!213351 lambda!213341))))

(declare-fun bs!1102718 () Bool)

(assert (= bs!1102718 (and d!1499706 d!1499692)))

(assert (=> bs!1102718 (= (= lt!1877694 lt!1877669) (= lambda!213351 lambda!213343))))

(declare-fun bs!1102719 () Bool)

(assert (= bs!1102719 (and d!1499706 b!4713304)))

(assert (=> bs!1102719 (= (= lt!1877694 lt!1877476) (= lambda!213351 lambda!213348))))

(assert (=> bs!1102717 (= (= lt!1877694 lt!1877659) (= lambda!213351 lambda!213342))))

(assert (=> d!1499706 true))

(declare-fun e!2939673 () ListMap!5197)

(assert (=> b!4713300 (= e!2939673 lt!1877684)))

(declare-fun lt!1877697 () ListMap!5197)

(assert (=> b!4713300 (= lt!1877697 (+!2232 lt!1877476 (h!59038 lt!1877460)))))

(assert (=> b!4713300 (= lt!1877684 (addToMapMapFromBucket!1402 (t!360085 lt!1877460) (+!2232 lt!1877476 (h!59038 lt!1877460))))))

(declare-fun lt!1877691 () Unit!128236)

(declare-fun call!329528 () Unit!128236)

(assert (=> b!4713300 (= lt!1877691 call!329528)))

(assert (=> b!4713300 (forall!11515 (toList!5833 lt!1877476) lambda!213349)))

(declare-fun lt!1877696 () Unit!128236)

(assert (=> b!4713300 (= lt!1877696 lt!1877691)))

(assert (=> b!4713300 (forall!11515 (toList!5833 lt!1877697) lambda!213350)))

(declare-fun lt!1877701 () Unit!128236)

(declare-fun Unit!128275 () Unit!128236)

(assert (=> b!4713300 (= lt!1877701 Unit!128275)))

(assert (=> b!4713300 (forall!11515 (t!360085 lt!1877460) lambda!213350)))

(declare-fun lt!1877700 () Unit!128236)

(declare-fun Unit!128276 () Unit!128236)

(assert (=> b!4713300 (= lt!1877700 Unit!128276)))

(declare-fun lt!1877692 () Unit!128236)

(declare-fun Unit!128277 () Unit!128236)

(assert (=> b!4713300 (= lt!1877692 Unit!128277)))

(declare-fun lt!1877682 () Unit!128236)

(assert (=> b!4713300 (= lt!1877682 (forallContained!3584 (toList!5833 lt!1877697) lambda!213350 (h!59038 lt!1877460)))))

(assert (=> b!4713300 (contains!16037 lt!1877697 (_1!30435 (h!59038 lt!1877460)))))

(declare-fun lt!1877683 () Unit!128236)

(declare-fun Unit!128278 () Unit!128236)

(assert (=> b!4713300 (= lt!1877683 Unit!128278)))

(assert (=> b!4713300 (contains!16037 lt!1877684 (_1!30435 (h!59038 lt!1877460)))))

(declare-fun lt!1877695 () Unit!128236)

(declare-fun Unit!128279 () Unit!128236)

(assert (=> b!4713300 (= lt!1877695 Unit!128279)))

(assert (=> b!4713300 (forall!11515 lt!1877460 lambda!213350)))

(declare-fun lt!1877685 () Unit!128236)

(declare-fun Unit!128280 () Unit!128236)

(assert (=> b!4713300 (= lt!1877685 Unit!128280)))

(declare-fun call!329526 () Bool)

(assert (=> b!4713300 call!329526))

(declare-fun lt!1877688 () Unit!128236)

(declare-fun Unit!128281 () Unit!128236)

(assert (=> b!4713300 (= lt!1877688 Unit!128281)))

(declare-fun lt!1877687 () Unit!128236)

(declare-fun Unit!128282 () Unit!128236)

(assert (=> b!4713300 (= lt!1877687 Unit!128282)))

(declare-fun lt!1877690 () Unit!128236)

(assert (=> b!4713300 (= lt!1877690 (addForallContainsKeyThenBeforeAdding!771 lt!1877476 lt!1877684 (_1!30435 (h!59038 lt!1877460)) (_2!30435 (h!59038 lt!1877460))))))

(assert (=> b!4713300 (forall!11515 (toList!5833 lt!1877476) lambda!213350)))

(declare-fun lt!1877689 () Unit!128236)

(assert (=> b!4713300 (= lt!1877689 lt!1877690)))

(declare-fun call!329527 () Bool)

(assert (=> b!4713300 call!329527))

(declare-fun lt!1877699 () Unit!128236)

(declare-fun Unit!128283 () Unit!128236)

(assert (=> b!4713300 (= lt!1877699 Unit!128283)))

(declare-fun res!1992458 () Bool)

(assert (=> b!4713300 (= res!1992458 (forall!11515 lt!1877460 lambda!213350))))

(declare-fun e!2939672 () Bool)

(assert (=> b!4713300 (=> (not res!1992458) (not e!2939672))))

(assert (=> b!4713300 e!2939672))

(declare-fun lt!1877698 () Unit!128236)

(declare-fun Unit!128284 () Unit!128236)

(assert (=> b!4713300 (= lt!1877698 Unit!128284)))

(declare-fun b!4713301 () Bool)

(declare-fun res!1992456 () Bool)

(declare-fun e!2939671 () Bool)

(assert (=> b!4713301 (=> (not res!1992456) (not e!2939671))))

(assert (=> b!4713301 (= res!1992456 (forall!11515 (toList!5833 lt!1877476) lambda!213351))))

(declare-fun b!4713302 () Bool)

(assert (=> b!4713302 (= e!2939671 (invariantList!1484 (toList!5833 lt!1877694)))))

(declare-fun bm!329521 () Bool)

(assert (=> bm!329521 (= call!329528 (lemmaContainsAllItsOwnKeys!772 lt!1877476))))

(assert (=> d!1499706 e!2939671))

(declare-fun res!1992457 () Bool)

(assert (=> d!1499706 (=> (not res!1992457) (not e!2939671))))

(assert (=> d!1499706 (= res!1992457 (forall!11515 lt!1877460 lambda!213351))))

(assert (=> d!1499706 (= lt!1877694 e!2939673)))

(declare-fun c!805132 () Bool)

(assert (=> d!1499706 (= c!805132 ((_ is Nil!52719) lt!1877460))))

(assert (=> d!1499706 (noDuplicateKeys!1972 lt!1877460)))

(assert (=> d!1499706 (= (addToMapMapFromBucket!1402 lt!1877460 lt!1877476) lt!1877694)))

(declare-fun b!4713303 () Bool)

(assert (=> b!4713303 (= e!2939672 (forall!11515 (toList!5833 lt!1877476) lambda!213350))))

(declare-fun bm!329522 () Bool)

(assert (=> bm!329522 (= call!329527 (forall!11515 (toList!5833 lt!1877476) (ite c!805132 lambda!213348 lambda!213350)))))

(declare-fun bm!329523 () Bool)

(assert (=> bm!329523 (= call!329526 (forall!11515 (ite c!805132 (toList!5833 lt!1877476) (toList!5833 lt!1877697)) (ite c!805132 lambda!213348 lambda!213350)))))

(assert (=> b!4713304 (= e!2939673 lt!1877476)))

(declare-fun lt!1877686 () Unit!128236)

(assert (=> b!4713304 (= lt!1877686 call!329528)))

(assert (=> b!4713304 call!329526))

(declare-fun lt!1877702 () Unit!128236)

(assert (=> b!4713304 (= lt!1877702 lt!1877686)))

(assert (=> b!4713304 call!329527))

(declare-fun lt!1877693 () Unit!128236)

(declare-fun Unit!128293 () Unit!128236)

(assert (=> b!4713304 (= lt!1877693 Unit!128293)))

(assert (= (and d!1499706 c!805132) b!4713304))

(assert (= (and d!1499706 (not c!805132)) b!4713300))

(assert (= (and b!4713300 res!1992458) b!4713303))

(assert (= (or b!4713304 b!4713300) bm!329521))

(assert (= (or b!4713304 b!4713300) bm!329522))

(assert (= (or b!4713304 b!4713300) bm!329523))

(assert (= (and d!1499706 res!1992457) b!4713301))

(assert (= (and b!4713301 res!1992456) b!4713302))

(declare-fun m!5639789 () Bool)

(assert (=> b!4713303 m!5639789))

(assert (=> bm!329521 m!5639733))

(declare-fun m!5639791 () Bool)

(assert (=> b!4713301 m!5639791))

(declare-fun m!5639793 () Bool)

(assert (=> bm!329522 m!5639793))

(declare-fun m!5639795 () Bool)

(assert (=> b!4713302 m!5639795))

(declare-fun m!5639797 () Bool)

(assert (=> bm!329523 m!5639797))

(declare-fun m!5639799 () Bool)

(assert (=> d!1499706 m!5639799))

(declare-fun m!5639801 () Bool)

(assert (=> d!1499706 m!5639801))

(declare-fun m!5639803 () Bool)

(assert (=> b!4713300 m!5639803))

(declare-fun m!5639805 () Bool)

(assert (=> b!4713300 m!5639805))

(declare-fun m!5639807 () Bool)

(assert (=> b!4713300 m!5639807))

(declare-fun m!5639809 () Bool)

(assert (=> b!4713300 m!5639809))

(declare-fun m!5639811 () Bool)

(assert (=> b!4713300 m!5639811))

(assert (=> b!4713300 m!5639805))

(declare-fun m!5639813 () Bool)

(assert (=> b!4713300 m!5639813))

(assert (=> b!4713300 m!5639789))

(assert (=> b!4713300 m!5639809))

(declare-fun m!5639815 () Bool)

(assert (=> b!4713300 m!5639815))

(declare-fun m!5639817 () Bool)

(assert (=> b!4713300 m!5639817))

(declare-fun m!5639819 () Bool)

(assert (=> b!4713300 m!5639819))

(declare-fun m!5639821 () Bool)

(assert (=> b!4713300 m!5639821))

(assert (=> b!4713174 d!1499706))

(declare-fun bs!1102720 () Bool)

(declare-fun d!1499712 () Bool)

(assert (= bs!1102720 (and d!1499712 start!479100)))

(declare-fun lambda!213352 () Int)

(assert (=> bs!1102720 (= lambda!213352 lambda!213273)))

(declare-fun bs!1102721 () Bool)

(assert (= bs!1102721 (and d!1499712 d!1499684)))

(assert (=> bs!1102721 (= lambda!213352 lambda!213276)))

(declare-fun bs!1102722 () Bool)

(assert (= bs!1102722 (and d!1499712 d!1499702)))

(assert (=> bs!1102722 (= lambda!213352 lambda!213344)))

(declare-fun lt!1877704 () ListMap!5197)

(assert (=> d!1499712 (invariantList!1484 (toList!5833 lt!1877704))))

(declare-fun e!2939674 () ListMap!5197)

(assert (=> d!1499712 (= lt!1877704 e!2939674)))

(declare-fun c!805133 () Bool)

(assert (=> d!1499712 (= c!805133 ((_ is Cons!52720) lt!1877468))))

(assert (=> d!1499712 (forall!11513 lt!1877468 lambda!213352)))

(assert (=> d!1499712 (= (extractMap!1998 lt!1877468) lt!1877704)))

(declare-fun b!4713305 () Bool)

(assert (=> b!4713305 (= e!2939674 (addToMapMapFromBucket!1402 (_2!30436 (h!59039 lt!1877468)) (extractMap!1998 (t!360086 lt!1877468))))))

(declare-fun b!4713306 () Bool)

(assert (=> b!4713306 (= e!2939674 (ListMap!5198 Nil!52719))))

(assert (= (and d!1499712 c!805133) b!4713305))

(assert (= (and d!1499712 (not c!805133)) b!4713306))

(declare-fun m!5639823 () Bool)

(assert (=> d!1499712 m!5639823))

(declare-fun m!5639825 () Bool)

(assert (=> d!1499712 m!5639825))

(declare-fun m!5639827 () Bool)

(assert (=> b!4713305 m!5639827))

(assert (=> b!4713305 m!5639827))

(declare-fun m!5639829 () Bool)

(assert (=> b!4713305 m!5639829))

(assert (=> b!4713174 d!1499712))

(declare-fun bs!1102723 () Bool)

(declare-fun d!1499714 () Bool)

(assert (= bs!1102723 (and d!1499714 start!479100)))

(declare-fun lambda!213353 () Int)

(assert (=> bs!1102723 (= lambda!213353 lambda!213273)))

(declare-fun bs!1102724 () Bool)

(assert (= bs!1102724 (and d!1499714 d!1499684)))

(assert (=> bs!1102724 (= lambda!213353 lambda!213276)))

(declare-fun bs!1102725 () Bool)

(assert (= bs!1102725 (and d!1499714 d!1499702)))

(assert (=> bs!1102725 (= lambda!213353 lambda!213344)))

(declare-fun bs!1102726 () Bool)

(assert (= bs!1102726 (and d!1499714 d!1499712)))

(assert (=> bs!1102726 (= lambda!213353 lambda!213352)))

(declare-fun lt!1877705 () ListMap!5197)

(assert (=> d!1499714 (invariantList!1484 (toList!5833 lt!1877705))))

(declare-fun e!2939675 () ListMap!5197)

(assert (=> d!1499714 (= lt!1877705 e!2939675)))

(declare-fun c!805134 () Bool)

(assert (=> d!1499714 (= c!805134 ((_ is Cons!52720) (Cons!52720 lt!1877466 (t!360086 (toList!5834 lm!2023)))))))

(assert (=> d!1499714 (forall!11513 (Cons!52720 lt!1877466 (t!360086 (toList!5834 lm!2023))) lambda!213353)))

(assert (=> d!1499714 (= (extractMap!1998 (Cons!52720 lt!1877466 (t!360086 (toList!5834 lm!2023)))) lt!1877705)))

(declare-fun b!4713307 () Bool)

(assert (=> b!4713307 (= e!2939675 (addToMapMapFromBucket!1402 (_2!30436 (h!59039 (Cons!52720 lt!1877466 (t!360086 (toList!5834 lm!2023))))) (extractMap!1998 (t!360086 (Cons!52720 lt!1877466 (t!360086 (toList!5834 lm!2023)))))))))

(declare-fun b!4713308 () Bool)

(assert (=> b!4713308 (= e!2939675 (ListMap!5198 Nil!52719))))

(assert (= (and d!1499714 c!805134) b!4713307))

(assert (= (and d!1499714 (not c!805134)) b!4713308))

(declare-fun m!5639831 () Bool)

(assert (=> d!1499714 m!5639831))

(declare-fun m!5639833 () Bool)

(assert (=> d!1499714 m!5639833))

(declare-fun m!5639835 () Bool)

(assert (=> b!4713307 m!5639835))

(assert (=> b!4713307 m!5639835))

(declare-fun m!5639837 () Bool)

(assert (=> b!4713307 m!5639837))

(assert (=> b!4713174 d!1499714))

(declare-fun d!1499716 () Bool)

(assert (=> d!1499716 (eq!1099 (addToMapMapFromBucket!1402 (Cons!52719 lt!1877478 lt!1877472) lt!1877476) (+!2232 (addToMapMapFromBucket!1402 lt!1877472 lt!1877476) lt!1877478))))

(declare-fun lt!1877733 () Unit!128236)

(declare-fun choose!33153 (tuple2!54282 List!52843 ListMap!5197) Unit!128236)

(assert (=> d!1499716 (= lt!1877733 (choose!33153 lt!1877478 lt!1877472 lt!1877476))))

(assert (=> d!1499716 (noDuplicateKeys!1972 lt!1877472)))

(assert (=> d!1499716 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!348 lt!1877478 lt!1877472 lt!1877476) lt!1877733)))

(declare-fun bs!1102740 () Bool)

(assert (= bs!1102740 d!1499716))

(assert (=> bs!1102740 m!5639549))

(assert (=> bs!1102740 m!5639549))

(assert (=> bs!1102740 m!5639551))

(assert (=> bs!1102740 m!5639553))

(assert (=> bs!1102740 m!5639577))

(assert (=> bs!1102740 m!5639551))

(declare-fun m!5639859 () Bool)

(assert (=> bs!1102740 m!5639859))

(declare-fun m!5639861 () Bool)

(assert (=> bs!1102740 m!5639861))

(assert (=> bs!1102740 m!5639577))

(assert (=> b!4713174 d!1499716))

(declare-fun d!1499724 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9345 (List!52843) (InoxSet tuple2!54282))

(assert (=> d!1499724 (= (eq!1099 (extractMap!1998 (Cons!52720 lt!1877466 (t!360086 (toList!5834 lm!2023)))) (+!2232 (extractMap!1998 (Cons!52720 (tuple2!54285 hash!405 lt!1877472) (t!360086 (toList!5834 lm!2023)))) (h!59038 oldBucket!34))) (= (content!9345 (toList!5833 (extractMap!1998 (Cons!52720 lt!1877466 (t!360086 (toList!5834 lm!2023)))))) (content!9345 (toList!5833 (+!2232 (extractMap!1998 (Cons!52720 (tuple2!54285 hash!405 lt!1877472) (t!360086 (toList!5834 lm!2023)))) (h!59038 oldBucket!34))))))))

(declare-fun bs!1102746 () Bool)

(assert (= bs!1102746 d!1499724))

(declare-fun m!5639863 () Bool)

(assert (=> bs!1102746 m!5639863))

(declare-fun m!5639865 () Bool)

(assert (=> bs!1102746 m!5639865))

(assert (=> b!4713174 d!1499724))

(declare-fun d!1499726 () Bool)

(declare-fun e!2939689 () Bool)

(assert (=> d!1499726 e!2939689))

(declare-fun res!1992470 () Bool)

(assert (=> d!1499726 (=> (not res!1992470) (not e!2939689))))

(declare-fun lt!1877766 () ListMap!5197)

(assert (=> d!1499726 (= res!1992470 (contains!16037 lt!1877766 (_1!30435 lt!1877478)))))

(declare-fun lt!1877764 () List!52843)

(assert (=> d!1499726 (= lt!1877766 (ListMap!5198 lt!1877764))))

(declare-fun lt!1877767 () Unit!128236)

(declare-fun lt!1877765 () Unit!128236)

(assert (=> d!1499726 (= lt!1877767 lt!1877765)))

(assert (=> d!1499726 (= (getValueByKey!1914 lt!1877764 (_1!30435 lt!1877478)) (Some!12293 (_2!30435 lt!1877478)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1066 (List!52843 K!14080 V!14326) Unit!128236)

(assert (=> d!1499726 (= lt!1877765 (lemmaContainsTupThenGetReturnValue!1066 lt!1877764 (_1!30435 lt!1877478) (_2!30435 lt!1877478)))))

(declare-fun insertNoDuplicatedKeys!574 (List!52843 K!14080 V!14326) List!52843)

(assert (=> d!1499726 (= lt!1877764 (insertNoDuplicatedKeys!574 (toList!5833 (addToMapMapFromBucket!1402 lt!1877472 lt!1877476)) (_1!30435 lt!1877478) (_2!30435 lt!1877478)))))

(assert (=> d!1499726 (= (+!2232 (addToMapMapFromBucket!1402 lt!1877472 lt!1877476) lt!1877478) lt!1877766)))

(declare-fun b!4713333 () Bool)

(declare-fun res!1992469 () Bool)

(assert (=> b!4713333 (=> (not res!1992469) (not e!2939689))))

(assert (=> b!4713333 (= res!1992469 (= (getValueByKey!1914 (toList!5833 lt!1877766) (_1!30435 lt!1877478)) (Some!12293 (_2!30435 lt!1877478))))))

(declare-fun b!4713334 () Bool)

(declare-fun contains!16041 (List!52843 tuple2!54282) Bool)

(assert (=> b!4713334 (= e!2939689 (contains!16041 (toList!5833 lt!1877766) lt!1877478))))

(assert (= (and d!1499726 res!1992470) b!4713333))

(assert (= (and b!4713333 res!1992469) b!4713334))

(declare-fun m!5639935 () Bool)

(assert (=> d!1499726 m!5639935))

(declare-fun m!5639939 () Bool)

(assert (=> d!1499726 m!5639939))

(declare-fun m!5639943 () Bool)

(assert (=> d!1499726 m!5639943))

(declare-fun m!5639945 () Bool)

(assert (=> d!1499726 m!5639945))

(declare-fun m!5639949 () Bool)

(assert (=> b!4713333 m!5639949))

(declare-fun m!5639951 () Bool)

(assert (=> b!4713334 m!5639951))

(assert (=> b!4713174 d!1499726))

(declare-fun bs!1102772 () Bool)

(declare-fun b!4713341 () Bool)

(assert (= bs!1102772 (and b!4713341 b!4713300)))

(declare-fun lambda!213367 () Int)

(assert (=> bs!1102772 (= lambda!213367 lambda!213349)))

(declare-fun bs!1102773 () Bool)

(assert (= bs!1102773 (and b!4713341 b!4713295)))

(assert (=> bs!1102773 (= lambda!213367 lambda!213340)))

(declare-fun bs!1102774 () Bool)

(assert (= bs!1102774 (and b!4713341 d!1499690)))

(assert (=> bs!1102774 (not (= lambda!213367 lambda!213279))))

(assert (=> bs!1102772 (= (= lt!1877476 lt!1877684) (= lambda!213367 lambda!213350))))

(declare-fun bs!1102775 () Bool)

(assert (= bs!1102775 (and b!4713341 b!4713291)))

(assert (=> bs!1102775 (= lambda!213367 lambda!213341)))

(declare-fun bs!1102776 () Bool)

(assert (= bs!1102776 (and b!4713341 d!1499706)))

(assert (=> bs!1102776 (= (= lt!1877476 lt!1877694) (= lambda!213367 lambda!213351))))

(declare-fun bs!1102777 () Bool)

(assert (= bs!1102777 (and b!4713341 d!1499692)))

(assert (=> bs!1102777 (= (= lt!1877476 lt!1877669) (= lambda!213367 lambda!213343))))

(declare-fun bs!1102778 () Bool)

(assert (= bs!1102778 (and b!4713341 b!4713304)))

(assert (=> bs!1102778 (= lambda!213367 lambda!213348)))

(assert (=> bs!1102775 (= (= lt!1877476 lt!1877659) (= lambda!213367 lambda!213342))))

(assert (=> b!4713341 true))

(declare-fun bs!1102785 () Bool)

(declare-fun b!4713337 () Bool)

(assert (= bs!1102785 (and b!4713337 b!4713341)))

(declare-fun lambda!213369 () Int)

(assert (=> bs!1102785 (= lambda!213369 lambda!213367)))

(declare-fun bs!1102787 () Bool)

(assert (= bs!1102787 (and b!4713337 b!4713300)))

(assert (=> bs!1102787 (= lambda!213369 lambda!213349)))

(declare-fun bs!1102788 () Bool)

(assert (= bs!1102788 (and b!4713337 b!4713295)))

(assert (=> bs!1102788 (= lambda!213369 lambda!213340)))

(declare-fun bs!1102790 () Bool)

(assert (= bs!1102790 (and b!4713337 d!1499690)))

(assert (=> bs!1102790 (not (= lambda!213369 lambda!213279))))

(assert (=> bs!1102787 (= (= lt!1877476 lt!1877684) (= lambda!213369 lambda!213350))))

(declare-fun bs!1102792 () Bool)

(assert (= bs!1102792 (and b!4713337 b!4713291)))

(assert (=> bs!1102792 (= lambda!213369 lambda!213341)))

(declare-fun bs!1102793 () Bool)

(assert (= bs!1102793 (and b!4713337 d!1499706)))

(assert (=> bs!1102793 (= (= lt!1877476 lt!1877694) (= lambda!213369 lambda!213351))))

(declare-fun bs!1102794 () Bool)

(assert (= bs!1102794 (and b!4713337 d!1499692)))

(assert (=> bs!1102794 (= (= lt!1877476 lt!1877669) (= lambda!213369 lambda!213343))))

(declare-fun bs!1102795 () Bool)

(assert (= bs!1102795 (and b!4713337 b!4713304)))

(assert (=> bs!1102795 (= lambda!213369 lambda!213348)))

(assert (=> bs!1102792 (= (= lt!1877476 lt!1877659) (= lambda!213369 lambda!213342))))

(assert (=> b!4713337 true))

(declare-fun lambda!213371 () Int)

(declare-fun lt!1877770 () ListMap!5197)

(assert (=> bs!1102787 (= (= lt!1877770 lt!1877476) (= lambda!213371 lambda!213349))))

(assert (=> bs!1102788 (= (= lt!1877770 lt!1877476) (= lambda!213371 lambda!213340))))

(assert (=> bs!1102790 (not (= lambda!213371 lambda!213279))))

(assert (=> bs!1102787 (= (= lt!1877770 lt!1877684) (= lambda!213371 lambda!213350))))

(assert (=> bs!1102792 (= (= lt!1877770 lt!1877476) (= lambda!213371 lambda!213341))))

(assert (=> bs!1102793 (= (= lt!1877770 lt!1877694) (= lambda!213371 lambda!213351))))

(assert (=> bs!1102785 (= (= lt!1877770 lt!1877476) (= lambda!213371 lambda!213367))))

(assert (=> b!4713337 (= (= lt!1877770 lt!1877476) (= lambda!213371 lambda!213369))))

(assert (=> bs!1102794 (= (= lt!1877770 lt!1877669) (= lambda!213371 lambda!213343))))

(assert (=> bs!1102795 (= (= lt!1877770 lt!1877476) (= lambda!213371 lambda!213348))))

(assert (=> bs!1102792 (= (= lt!1877770 lt!1877659) (= lambda!213371 lambda!213342))))

(assert (=> b!4713337 true))

(declare-fun bs!1102806 () Bool)

(declare-fun d!1499738 () Bool)

(assert (= bs!1102806 (and d!1499738 b!4713300)))

(declare-fun lambda!213373 () Int)

(declare-fun lt!1877784 () ListMap!5197)

(assert (=> bs!1102806 (= (= lt!1877784 lt!1877476) (= lambda!213373 lambda!213349))))

(declare-fun bs!1102807 () Bool)

(assert (= bs!1102807 (and d!1499738 b!4713295)))

(assert (=> bs!1102807 (= (= lt!1877784 lt!1877476) (= lambda!213373 lambda!213340))))

(declare-fun bs!1102808 () Bool)

(assert (= bs!1102808 (and d!1499738 b!4713337)))

(assert (=> bs!1102808 (= (= lt!1877784 lt!1877770) (= lambda!213373 lambda!213371))))

(declare-fun bs!1102809 () Bool)

(assert (= bs!1102809 (and d!1499738 d!1499690)))

(assert (=> bs!1102809 (not (= lambda!213373 lambda!213279))))

(assert (=> bs!1102806 (= (= lt!1877784 lt!1877684) (= lambda!213373 lambda!213350))))

(declare-fun bs!1102810 () Bool)

(assert (= bs!1102810 (and d!1499738 b!4713291)))

(assert (=> bs!1102810 (= (= lt!1877784 lt!1877476) (= lambda!213373 lambda!213341))))

(declare-fun bs!1102811 () Bool)

(assert (= bs!1102811 (and d!1499738 d!1499706)))

(assert (=> bs!1102811 (= (= lt!1877784 lt!1877694) (= lambda!213373 lambda!213351))))

(declare-fun bs!1102812 () Bool)

(assert (= bs!1102812 (and d!1499738 b!4713341)))

(assert (=> bs!1102812 (= (= lt!1877784 lt!1877476) (= lambda!213373 lambda!213367))))

(assert (=> bs!1102808 (= (= lt!1877784 lt!1877476) (= lambda!213373 lambda!213369))))

(declare-fun bs!1102813 () Bool)

(assert (= bs!1102813 (and d!1499738 d!1499692)))

(assert (=> bs!1102813 (= (= lt!1877784 lt!1877669) (= lambda!213373 lambda!213343))))

(declare-fun bs!1102814 () Bool)

(assert (= bs!1102814 (and d!1499738 b!4713304)))

(assert (=> bs!1102814 (= (= lt!1877784 lt!1877476) (= lambda!213373 lambda!213348))))

(assert (=> bs!1102810 (= (= lt!1877784 lt!1877659) (= lambda!213373 lambda!213342))))

(assert (=> d!1499738 true))

(declare-fun e!2939693 () ListMap!5197)

(assert (=> b!4713337 (= e!2939693 lt!1877770)))

(declare-fun lt!1877787 () ListMap!5197)

(assert (=> b!4713337 (= lt!1877787 (+!2232 lt!1877476 (h!59038 lt!1877472)))))

(assert (=> b!4713337 (= lt!1877770 (addToMapMapFromBucket!1402 (t!360085 lt!1877472) (+!2232 lt!1877476 (h!59038 lt!1877472))))))

(declare-fun lt!1877781 () Unit!128236)

(declare-fun call!329537 () Unit!128236)

(assert (=> b!4713337 (= lt!1877781 call!329537)))

(assert (=> b!4713337 (forall!11515 (toList!5833 lt!1877476) lambda!213369)))

(declare-fun lt!1877786 () Unit!128236)

(assert (=> b!4713337 (= lt!1877786 lt!1877781)))

(assert (=> b!4713337 (forall!11515 (toList!5833 lt!1877787) lambda!213371)))

(declare-fun lt!1877791 () Unit!128236)

(declare-fun Unit!128308 () Unit!128236)

(assert (=> b!4713337 (= lt!1877791 Unit!128308)))

(assert (=> b!4713337 (forall!11515 (t!360085 lt!1877472) lambda!213371)))

(declare-fun lt!1877790 () Unit!128236)

(declare-fun Unit!128309 () Unit!128236)

(assert (=> b!4713337 (= lt!1877790 Unit!128309)))

(declare-fun lt!1877782 () Unit!128236)

(declare-fun Unit!128310 () Unit!128236)

(assert (=> b!4713337 (= lt!1877782 Unit!128310)))

(declare-fun lt!1877768 () Unit!128236)

(assert (=> b!4713337 (= lt!1877768 (forallContained!3584 (toList!5833 lt!1877787) lambda!213371 (h!59038 lt!1877472)))))

(assert (=> b!4713337 (contains!16037 lt!1877787 (_1!30435 (h!59038 lt!1877472)))))

(declare-fun lt!1877769 () Unit!128236)

(declare-fun Unit!128311 () Unit!128236)

(assert (=> b!4713337 (= lt!1877769 Unit!128311)))

(assert (=> b!4713337 (contains!16037 lt!1877770 (_1!30435 (h!59038 lt!1877472)))))

(declare-fun lt!1877785 () Unit!128236)

(declare-fun Unit!128312 () Unit!128236)

(assert (=> b!4713337 (= lt!1877785 Unit!128312)))

(assert (=> b!4713337 (forall!11515 lt!1877472 lambda!213371)))

(declare-fun lt!1877772 () Unit!128236)

(declare-fun Unit!128313 () Unit!128236)

(assert (=> b!4713337 (= lt!1877772 Unit!128313)))

(declare-fun call!329535 () Bool)

(assert (=> b!4713337 call!329535))

(declare-fun lt!1877776 () Unit!128236)

(declare-fun Unit!128314 () Unit!128236)

(assert (=> b!4713337 (= lt!1877776 Unit!128314)))

(declare-fun lt!1877775 () Unit!128236)

(declare-fun Unit!128315 () Unit!128236)

(assert (=> b!4713337 (= lt!1877775 Unit!128315)))

(declare-fun lt!1877780 () Unit!128236)

(assert (=> b!4713337 (= lt!1877780 (addForallContainsKeyThenBeforeAdding!771 lt!1877476 lt!1877770 (_1!30435 (h!59038 lt!1877472)) (_2!30435 (h!59038 lt!1877472))))))

(assert (=> b!4713337 (forall!11515 (toList!5833 lt!1877476) lambda!213371)))

(declare-fun lt!1877778 () Unit!128236)

(assert (=> b!4713337 (= lt!1877778 lt!1877780)))

(declare-fun call!329536 () Bool)

(assert (=> b!4713337 call!329536))

(declare-fun lt!1877789 () Unit!128236)

(declare-fun Unit!128316 () Unit!128236)

(assert (=> b!4713337 (= lt!1877789 Unit!128316)))

(declare-fun res!1992475 () Bool)

(assert (=> b!4713337 (= res!1992475 (forall!11515 lt!1877472 lambda!213371))))

(declare-fun e!2939692 () Bool)

(assert (=> b!4713337 (=> (not res!1992475) (not e!2939692))))

(assert (=> b!4713337 e!2939692))

(declare-fun lt!1877788 () Unit!128236)

(declare-fun Unit!128317 () Unit!128236)

(assert (=> b!4713337 (= lt!1877788 Unit!128317)))

(declare-fun b!4713338 () Bool)

(declare-fun res!1992471 () Bool)

(declare-fun e!2939690 () Bool)

(assert (=> b!4713338 (=> (not res!1992471) (not e!2939690))))

(assert (=> b!4713338 (= res!1992471 (forall!11515 (toList!5833 lt!1877476) lambda!213373))))

(declare-fun b!4713339 () Bool)

(assert (=> b!4713339 (= e!2939690 (invariantList!1484 (toList!5833 lt!1877784)))))

(declare-fun bm!329530 () Bool)

(assert (=> bm!329530 (= call!329537 (lemmaContainsAllItsOwnKeys!772 lt!1877476))))

(assert (=> d!1499738 e!2939690))

(declare-fun res!1992474 () Bool)

(assert (=> d!1499738 (=> (not res!1992474) (not e!2939690))))

(assert (=> d!1499738 (= res!1992474 (forall!11515 lt!1877472 lambda!213373))))

(assert (=> d!1499738 (= lt!1877784 e!2939693)))

(declare-fun c!805142 () Bool)

(assert (=> d!1499738 (= c!805142 ((_ is Nil!52719) lt!1877472))))

(assert (=> d!1499738 (noDuplicateKeys!1972 lt!1877472)))

(assert (=> d!1499738 (= (addToMapMapFromBucket!1402 lt!1877472 lt!1877476) lt!1877784)))

(declare-fun b!4713340 () Bool)

(assert (=> b!4713340 (= e!2939692 (forall!11515 (toList!5833 lt!1877476) lambda!213371))))

(declare-fun bm!329531 () Bool)

(assert (=> bm!329531 (= call!329536 (forall!11515 (toList!5833 lt!1877476) (ite c!805142 lambda!213367 lambda!213371)))))

(declare-fun bm!329532 () Bool)

(assert (=> bm!329532 (= call!329535 (forall!11515 (ite c!805142 (toList!5833 lt!1877476) (toList!5833 lt!1877787)) (ite c!805142 lambda!213367 lambda!213371)))))

(assert (=> b!4713341 (= e!2939693 lt!1877476)))

(declare-fun lt!1877773 () Unit!128236)

(assert (=> b!4713341 (= lt!1877773 call!329537)))

(assert (=> b!4713341 call!329535))

(declare-fun lt!1877792 () Unit!128236)

(assert (=> b!4713341 (= lt!1877792 lt!1877773)))

(assert (=> b!4713341 call!329536))

(declare-fun lt!1877783 () Unit!128236)

(declare-fun Unit!128318 () Unit!128236)

(assert (=> b!4713341 (= lt!1877783 Unit!128318)))

(assert (= (and d!1499738 c!805142) b!4713341))

(assert (= (and d!1499738 (not c!805142)) b!4713337))

(assert (= (and b!4713337 res!1992475) b!4713340))

(assert (= (or b!4713341 b!4713337) bm!329530))

(assert (= (or b!4713341 b!4713337) bm!329531))

(assert (= (or b!4713341 b!4713337) bm!329532))

(assert (= (and d!1499738 res!1992474) b!4713338))

(assert (= (and b!4713338 res!1992471) b!4713339))

(declare-fun m!5639965 () Bool)

(assert (=> b!4713340 m!5639965))

(assert (=> bm!329530 m!5639733))

(declare-fun m!5639967 () Bool)

(assert (=> b!4713338 m!5639967))

(declare-fun m!5639969 () Bool)

(assert (=> bm!329531 m!5639969))

(declare-fun m!5639971 () Bool)

(assert (=> b!4713339 m!5639971))

(declare-fun m!5639973 () Bool)

(assert (=> bm!329532 m!5639973))

(declare-fun m!5639975 () Bool)

(assert (=> d!1499738 m!5639975))

(assert (=> d!1499738 m!5639859))

(declare-fun m!5639977 () Bool)

(assert (=> b!4713337 m!5639977))

(declare-fun m!5639979 () Bool)

(assert (=> b!4713337 m!5639979))

(declare-fun m!5639981 () Bool)

(assert (=> b!4713337 m!5639981))

(declare-fun m!5639983 () Bool)

(assert (=> b!4713337 m!5639983))

(declare-fun m!5639985 () Bool)

(assert (=> b!4713337 m!5639985))

(assert (=> b!4713337 m!5639979))

(declare-fun m!5639987 () Bool)

(assert (=> b!4713337 m!5639987))

(assert (=> b!4713337 m!5639965))

(assert (=> b!4713337 m!5639983))

(declare-fun m!5639989 () Bool)

(assert (=> b!4713337 m!5639989))

(declare-fun m!5639991 () Bool)

(assert (=> b!4713337 m!5639991))

(declare-fun m!5639993 () Bool)

(assert (=> b!4713337 m!5639993))

(declare-fun m!5639995 () Bool)

(assert (=> b!4713337 m!5639995))

(assert (=> b!4713174 d!1499738))

(declare-fun bs!1102826 () Bool)

(declare-fun b!4713351 () Bool)

(assert (= bs!1102826 (and b!4713351 b!4713300)))

(declare-fun lambda!213375 () Int)

(assert (=> bs!1102826 (= lambda!213375 lambda!213349)))

(declare-fun bs!1102827 () Bool)

(assert (= bs!1102827 (and b!4713351 b!4713295)))

(assert (=> bs!1102827 (= lambda!213375 lambda!213340)))

(declare-fun bs!1102828 () Bool)

(assert (= bs!1102828 (and b!4713351 b!4713337)))

(assert (=> bs!1102828 (= (= lt!1877476 lt!1877770) (= lambda!213375 lambda!213371))))

(declare-fun bs!1102829 () Bool)

(assert (= bs!1102829 (and b!4713351 d!1499738)))

(assert (=> bs!1102829 (= (= lt!1877476 lt!1877784) (= lambda!213375 lambda!213373))))

(declare-fun bs!1102830 () Bool)

(assert (= bs!1102830 (and b!4713351 d!1499690)))

(assert (=> bs!1102830 (not (= lambda!213375 lambda!213279))))

(assert (=> bs!1102826 (= (= lt!1877476 lt!1877684) (= lambda!213375 lambda!213350))))

(declare-fun bs!1102831 () Bool)

(assert (= bs!1102831 (and b!4713351 b!4713291)))

(assert (=> bs!1102831 (= lambda!213375 lambda!213341)))

(declare-fun bs!1102832 () Bool)

(assert (= bs!1102832 (and b!4713351 d!1499706)))

(assert (=> bs!1102832 (= (= lt!1877476 lt!1877694) (= lambda!213375 lambda!213351))))

(declare-fun bs!1102833 () Bool)

(assert (= bs!1102833 (and b!4713351 b!4713341)))

(assert (=> bs!1102833 (= lambda!213375 lambda!213367)))

(assert (=> bs!1102828 (= lambda!213375 lambda!213369)))

(declare-fun bs!1102834 () Bool)

(assert (= bs!1102834 (and b!4713351 d!1499692)))

(assert (=> bs!1102834 (= (= lt!1877476 lt!1877669) (= lambda!213375 lambda!213343))))

(declare-fun bs!1102835 () Bool)

(assert (= bs!1102835 (and b!4713351 b!4713304)))

(assert (=> bs!1102835 (= lambda!213375 lambda!213348)))

(assert (=> bs!1102831 (= (= lt!1877476 lt!1877659) (= lambda!213375 lambda!213342))))

(assert (=> b!4713351 true))

(declare-fun bs!1102836 () Bool)

(declare-fun b!4713347 () Bool)

(assert (= bs!1102836 (and b!4713347 b!4713300)))

(declare-fun lambda!213376 () Int)

(assert (=> bs!1102836 (= lambda!213376 lambda!213349)))

(declare-fun bs!1102837 () Bool)

(assert (= bs!1102837 (and b!4713347 b!4713295)))

(assert (=> bs!1102837 (= lambda!213376 lambda!213340)))

(declare-fun bs!1102839 () Bool)

(assert (= bs!1102839 (and b!4713347 b!4713337)))

(assert (=> bs!1102839 (= (= lt!1877476 lt!1877770) (= lambda!213376 lambda!213371))))

(declare-fun bs!1102840 () Bool)

(assert (= bs!1102840 (and b!4713347 d!1499738)))

(assert (=> bs!1102840 (= (= lt!1877476 lt!1877784) (= lambda!213376 lambda!213373))))

(declare-fun bs!1102841 () Bool)

(assert (= bs!1102841 (and b!4713347 d!1499690)))

(assert (=> bs!1102841 (not (= lambda!213376 lambda!213279))))

(declare-fun bs!1102842 () Bool)

(assert (= bs!1102842 (and b!4713347 b!4713291)))

(assert (=> bs!1102842 (= lambda!213376 lambda!213341)))

(declare-fun bs!1102843 () Bool)

(assert (= bs!1102843 (and b!4713347 d!1499706)))

(assert (=> bs!1102843 (= (= lt!1877476 lt!1877694) (= lambda!213376 lambda!213351))))

(declare-fun bs!1102844 () Bool)

(assert (= bs!1102844 (and b!4713347 b!4713341)))

(assert (=> bs!1102844 (= lambda!213376 lambda!213367)))

(assert (=> bs!1102839 (= lambda!213376 lambda!213369)))

(declare-fun bs!1102845 () Bool)

(assert (= bs!1102845 (and b!4713347 d!1499692)))

(assert (=> bs!1102845 (= (= lt!1877476 lt!1877669) (= lambda!213376 lambda!213343))))

(declare-fun bs!1102846 () Bool)

(assert (= bs!1102846 (and b!4713347 b!4713304)))

(assert (=> bs!1102846 (= lambda!213376 lambda!213348)))

(assert (=> bs!1102842 (= (= lt!1877476 lt!1877659) (= lambda!213376 lambda!213342))))

(declare-fun bs!1102847 () Bool)

(assert (= bs!1102847 (and b!4713347 b!4713351)))

(assert (=> bs!1102847 (= lambda!213376 lambda!213375)))

(assert (=> bs!1102836 (= (= lt!1877476 lt!1877684) (= lambda!213376 lambda!213350))))

(assert (=> b!4713347 true))

(declare-fun lambda!213377 () Int)

(declare-fun lt!1877816 () ListMap!5197)

(assert (=> bs!1102836 (= (= lt!1877816 lt!1877476) (= lambda!213377 lambda!213349))))

(assert (=> bs!1102837 (= (= lt!1877816 lt!1877476) (= lambda!213377 lambda!213340))))

(assert (=> bs!1102839 (= (= lt!1877816 lt!1877770) (= lambda!213377 lambda!213371))))

(assert (=> bs!1102840 (= (= lt!1877816 lt!1877784) (= lambda!213377 lambda!213373))))

(assert (=> bs!1102841 (not (= lambda!213377 lambda!213279))))

(assert (=> bs!1102843 (= (= lt!1877816 lt!1877694) (= lambda!213377 lambda!213351))))

(assert (=> bs!1102844 (= (= lt!1877816 lt!1877476) (= lambda!213377 lambda!213367))))

(assert (=> bs!1102839 (= (= lt!1877816 lt!1877476) (= lambda!213377 lambda!213369))))

(assert (=> bs!1102845 (= (= lt!1877816 lt!1877669) (= lambda!213377 lambda!213343))))

(assert (=> bs!1102846 (= (= lt!1877816 lt!1877476) (= lambda!213377 lambda!213348))))

(assert (=> bs!1102842 (= (= lt!1877816 lt!1877659) (= lambda!213377 lambda!213342))))

(assert (=> bs!1102847 (= (= lt!1877816 lt!1877476) (= lambda!213377 lambda!213375))))

(assert (=> bs!1102836 (= (= lt!1877816 lt!1877684) (= lambda!213377 lambda!213350))))

(assert (=> bs!1102842 (= (= lt!1877816 lt!1877476) (= lambda!213377 lambda!213341))))

(assert (=> b!4713347 (= (= lt!1877816 lt!1877476) (= lambda!213377 lambda!213376))))

(assert (=> b!4713347 true))

(declare-fun bs!1102849 () Bool)

(declare-fun d!1499742 () Bool)

(assert (= bs!1102849 (and d!1499742 b!4713300)))

(declare-fun lt!1877826 () ListMap!5197)

(declare-fun lambda!213378 () Int)

(assert (=> bs!1102849 (= (= lt!1877826 lt!1877476) (= lambda!213378 lambda!213349))))

(declare-fun bs!1102850 () Bool)

(assert (= bs!1102850 (and d!1499742 b!4713347)))

(assert (=> bs!1102850 (= (= lt!1877826 lt!1877816) (= lambda!213378 lambda!213377))))

(declare-fun bs!1102851 () Bool)

(assert (= bs!1102851 (and d!1499742 b!4713295)))

(assert (=> bs!1102851 (= (= lt!1877826 lt!1877476) (= lambda!213378 lambda!213340))))

(declare-fun bs!1102852 () Bool)

(assert (= bs!1102852 (and d!1499742 b!4713337)))

(assert (=> bs!1102852 (= (= lt!1877826 lt!1877770) (= lambda!213378 lambda!213371))))

(declare-fun bs!1102853 () Bool)

(assert (= bs!1102853 (and d!1499742 d!1499738)))

(assert (=> bs!1102853 (= (= lt!1877826 lt!1877784) (= lambda!213378 lambda!213373))))

(declare-fun bs!1102854 () Bool)

(assert (= bs!1102854 (and d!1499742 d!1499690)))

(assert (=> bs!1102854 (not (= lambda!213378 lambda!213279))))

(declare-fun bs!1102855 () Bool)

(assert (= bs!1102855 (and d!1499742 d!1499706)))

(assert (=> bs!1102855 (= (= lt!1877826 lt!1877694) (= lambda!213378 lambda!213351))))

(declare-fun bs!1102856 () Bool)

(assert (= bs!1102856 (and d!1499742 b!4713341)))

(assert (=> bs!1102856 (= (= lt!1877826 lt!1877476) (= lambda!213378 lambda!213367))))

(assert (=> bs!1102852 (= (= lt!1877826 lt!1877476) (= lambda!213378 lambda!213369))))

(declare-fun bs!1102857 () Bool)

(assert (= bs!1102857 (and d!1499742 d!1499692)))

(assert (=> bs!1102857 (= (= lt!1877826 lt!1877669) (= lambda!213378 lambda!213343))))

(declare-fun bs!1102858 () Bool)

(assert (= bs!1102858 (and d!1499742 b!4713304)))

(assert (=> bs!1102858 (= (= lt!1877826 lt!1877476) (= lambda!213378 lambda!213348))))

(declare-fun bs!1102859 () Bool)

(assert (= bs!1102859 (and d!1499742 b!4713291)))

(assert (=> bs!1102859 (= (= lt!1877826 lt!1877659) (= lambda!213378 lambda!213342))))

(declare-fun bs!1102860 () Bool)

(assert (= bs!1102860 (and d!1499742 b!4713351)))

(assert (=> bs!1102860 (= (= lt!1877826 lt!1877476) (= lambda!213378 lambda!213375))))

(assert (=> bs!1102849 (= (= lt!1877826 lt!1877684) (= lambda!213378 lambda!213350))))

(assert (=> bs!1102859 (= (= lt!1877826 lt!1877476) (= lambda!213378 lambda!213341))))

(assert (=> bs!1102850 (= (= lt!1877826 lt!1877476) (= lambda!213378 lambda!213376))))

(assert (=> d!1499742 true))

(declare-fun e!2939699 () ListMap!5197)

(assert (=> b!4713347 (= e!2939699 lt!1877816)))

(declare-fun lt!1877829 () ListMap!5197)

(assert (=> b!4713347 (= lt!1877829 (+!2232 lt!1877476 (h!59038 (Cons!52719 lt!1877473 lt!1877460))))))

(assert (=> b!4713347 (= lt!1877816 (addToMapMapFromBucket!1402 (t!360085 (Cons!52719 lt!1877473 lt!1877460)) (+!2232 lt!1877476 (h!59038 (Cons!52719 lt!1877473 lt!1877460)))))))

(declare-fun lt!1877823 () Unit!128236)

(declare-fun call!329543 () Unit!128236)

(assert (=> b!4713347 (= lt!1877823 call!329543)))

(assert (=> b!4713347 (forall!11515 (toList!5833 lt!1877476) lambda!213376)))

(declare-fun lt!1877828 () Unit!128236)

(assert (=> b!4713347 (= lt!1877828 lt!1877823)))

(assert (=> b!4713347 (forall!11515 (toList!5833 lt!1877829) lambda!213377)))

(declare-fun lt!1877833 () Unit!128236)

(declare-fun Unit!128321 () Unit!128236)

(assert (=> b!4713347 (= lt!1877833 Unit!128321)))

(assert (=> b!4713347 (forall!11515 (t!360085 (Cons!52719 lt!1877473 lt!1877460)) lambda!213377)))

(declare-fun lt!1877832 () Unit!128236)

(declare-fun Unit!128322 () Unit!128236)

(assert (=> b!4713347 (= lt!1877832 Unit!128322)))

(declare-fun lt!1877824 () Unit!128236)

(declare-fun Unit!128323 () Unit!128236)

(assert (=> b!4713347 (= lt!1877824 Unit!128323)))

(declare-fun lt!1877814 () Unit!128236)

(assert (=> b!4713347 (= lt!1877814 (forallContained!3584 (toList!5833 lt!1877829) lambda!213377 (h!59038 (Cons!52719 lt!1877473 lt!1877460))))))

(assert (=> b!4713347 (contains!16037 lt!1877829 (_1!30435 (h!59038 (Cons!52719 lt!1877473 lt!1877460))))))

(declare-fun lt!1877815 () Unit!128236)

(declare-fun Unit!128324 () Unit!128236)

(assert (=> b!4713347 (= lt!1877815 Unit!128324)))

(assert (=> b!4713347 (contains!16037 lt!1877816 (_1!30435 (h!59038 (Cons!52719 lt!1877473 lt!1877460))))))

(declare-fun lt!1877827 () Unit!128236)

(declare-fun Unit!128325 () Unit!128236)

(assert (=> b!4713347 (= lt!1877827 Unit!128325)))

(assert (=> b!4713347 (forall!11515 (Cons!52719 lt!1877473 lt!1877460) lambda!213377)))

(declare-fun lt!1877817 () Unit!128236)

(declare-fun Unit!128326 () Unit!128236)

(assert (=> b!4713347 (= lt!1877817 Unit!128326)))

(declare-fun call!329541 () Bool)

(assert (=> b!4713347 call!329541))

(declare-fun lt!1877820 () Unit!128236)

(declare-fun Unit!128327 () Unit!128236)

(assert (=> b!4713347 (= lt!1877820 Unit!128327)))

(declare-fun lt!1877819 () Unit!128236)

(declare-fun Unit!128328 () Unit!128236)

(assert (=> b!4713347 (= lt!1877819 Unit!128328)))

(declare-fun lt!1877822 () Unit!128236)

(assert (=> b!4713347 (= lt!1877822 (addForallContainsKeyThenBeforeAdding!771 lt!1877476 lt!1877816 (_1!30435 (h!59038 (Cons!52719 lt!1877473 lt!1877460))) (_2!30435 (h!59038 (Cons!52719 lt!1877473 lt!1877460)))))))

(assert (=> b!4713347 (forall!11515 (toList!5833 lt!1877476) lambda!213377)))

(declare-fun lt!1877821 () Unit!128236)

(assert (=> b!4713347 (= lt!1877821 lt!1877822)))

(declare-fun call!329542 () Bool)

(assert (=> b!4713347 call!329542))

(declare-fun lt!1877831 () Unit!128236)

(declare-fun Unit!128329 () Unit!128236)

(assert (=> b!4713347 (= lt!1877831 Unit!128329)))

(declare-fun res!1992481 () Bool)

(assert (=> b!4713347 (= res!1992481 (forall!11515 (Cons!52719 lt!1877473 lt!1877460) lambda!213377))))

(declare-fun e!2939698 () Bool)

(assert (=> b!4713347 (=> (not res!1992481) (not e!2939698))))

(assert (=> b!4713347 e!2939698))

(declare-fun lt!1877830 () Unit!128236)

(declare-fun Unit!128330 () Unit!128236)

(assert (=> b!4713347 (= lt!1877830 Unit!128330)))

(declare-fun b!4713348 () Bool)

(declare-fun res!1992479 () Bool)

(declare-fun e!2939697 () Bool)

(assert (=> b!4713348 (=> (not res!1992479) (not e!2939697))))

(assert (=> b!4713348 (= res!1992479 (forall!11515 (toList!5833 lt!1877476) lambda!213378))))

(declare-fun b!4713349 () Bool)

(assert (=> b!4713349 (= e!2939697 (invariantList!1484 (toList!5833 lt!1877826)))))

(declare-fun bm!329536 () Bool)

(assert (=> bm!329536 (= call!329543 (lemmaContainsAllItsOwnKeys!772 lt!1877476))))

(assert (=> d!1499742 e!2939697))

(declare-fun res!1992480 () Bool)

(assert (=> d!1499742 (=> (not res!1992480) (not e!2939697))))

(assert (=> d!1499742 (= res!1992480 (forall!11515 (Cons!52719 lt!1877473 lt!1877460) lambda!213378))))

(assert (=> d!1499742 (= lt!1877826 e!2939699)))

(declare-fun c!805144 () Bool)

(assert (=> d!1499742 (= c!805144 ((_ is Nil!52719) (Cons!52719 lt!1877473 lt!1877460)))))

(assert (=> d!1499742 (noDuplicateKeys!1972 (Cons!52719 lt!1877473 lt!1877460))))

(assert (=> d!1499742 (= (addToMapMapFromBucket!1402 (Cons!52719 lt!1877473 lt!1877460) lt!1877476) lt!1877826)))

(declare-fun b!4713350 () Bool)

(assert (=> b!4713350 (= e!2939698 (forall!11515 (toList!5833 lt!1877476) lambda!213377))))

(declare-fun bm!329537 () Bool)

(assert (=> bm!329537 (= call!329542 (forall!11515 (toList!5833 lt!1877476) (ite c!805144 lambda!213375 lambda!213377)))))

(declare-fun bm!329538 () Bool)

(assert (=> bm!329538 (= call!329541 (forall!11515 (ite c!805144 (toList!5833 lt!1877476) (toList!5833 lt!1877829)) (ite c!805144 lambda!213375 lambda!213377)))))

(assert (=> b!4713351 (= e!2939699 lt!1877476)))

(declare-fun lt!1877818 () Unit!128236)

(assert (=> b!4713351 (= lt!1877818 call!329543)))

(assert (=> b!4713351 call!329541))

(declare-fun lt!1877834 () Unit!128236)

(assert (=> b!4713351 (= lt!1877834 lt!1877818)))

(assert (=> b!4713351 call!329542))

(declare-fun lt!1877825 () Unit!128236)

(declare-fun Unit!128331 () Unit!128236)

(assert (=> b!4713351 (= lt!1877825 Unit!128331)))

(assert (= (and d!1499742 c!805144) b!4713351))

(assert (= (and d!1499742 (not c!805144)) b!4713347))

(assert (= (and b!4713347 res!1992481) b!4713350))

(assert (= (or b!4713351 b!4713347) bm!329536))

(assert (= (or b!4713351 b!4713347) bm!329537))

(assert (= (or b!4713351 b!4713347) bm!329538))

(assert (= (and d!1499742 res!1992480) b!4713348))

(assert (= (and b!4713348 res!1992479) b!4713349))

(declare-fun m!5640041 () Bool)

(assert (=> b!4713350 m!5640041))

(assert (=> bm!329536 m!5639733))

(declare-fun m!5640043 () Bool)

(assert (=> b!4713348 m!5640043))

(declare-fun m!5640045 () Bool)

(assert (=> bm!329537 m!5640045))

(declare-fun m!5640047 () Bool)

(assert (=> b!4713349 m!5640047))

(declare-fun m!5640049 () Bool)

(assert (=> bm!329538 m!5640049))

(declare-fun m!5640051 () Bool)

(assert (=> d!1499742 m!5640051))

(declare-fun m!5640053 () Bool)

(assert (=> d!1499742 m!5640053))

(declare-fun m!5640055 () Bool)

(assert (=> b!4713347 m!5640055))

(declare-fun m!5640057 () Bool)

(assert (=> b!4713347 m!5640057))

(declare-fun m!5640059 () Bool)

(assert (=> b!4713347 m!5640059))

(declare-fun m!5640061 () Bool)

(assert (=> b!4713347 m!5640061))

(declare-fun m!5640063 () Bool)

(assert (=> b!4713347 m!5640063))

(assert (=> b!4713347 m!5640057))

(declare-fun m!5640065 () Bool)

(assert (=> b!4713347 m!5640065))

(assert (=> b!4713347 m!5640041))

(assert (=> b!4713347 m!5640061))

(declare-fun m!5640067 () Bool)

(assert (=> b!4713347 m!5640067))

(declare-fun m!5640069 () Bool)

(assert (=> b!4713347 m!5640069))

(declare-fun m!5640071 () Bool)

(assert (=> b!4713347 m!5640071))

(declare-fun m!5640073 () Bool)

(assert (=> b!4713347 m!5640073))

(assert (=> b!4713174 d!1499742))

(declare-fun b!4713366 () Bool)

(declare-fun e!2939714 () Bool)

(assert (=> b!4713366 (= e!2939714 (contains!16039 (keys!18904 (extractMap!1998 lt!1877468)) key!4653))))

(declare-fun bm!329539 () Bool)

(declare-fun call!329544 () Bool)

(declare-fun e!2939710 () List!52845)

(assert (=> bm!329539 (= call!329544 (contains!16039 e!2939710 key!4653))))

(declare-fun c!805150 () Bool)

(declare-fun c!805149 () Bool)

(assert (=> bm!329539 (= c!805150 c!805149)))

(declare-fun b!4713367 () Bool)

(declare-fun e!2939712 () Bool)

(assert (=> b!4713367 (= e!2939712 (not (contains!16039 (keys!18904 (extractMap!1998 lt!1877468)) key!4653)))))

(declare-fun b!4713368 () Bool)

(declare-fun e!2939715 () Unit!128236)

(declare-fun e!2939711 () Unit!128236)

(assert (=> b!4713368 (= e!2939715 e!2939711)))

(declare-fun c!805151 () Bool)

(assert (=> b!4713368 (= c!805151 call!329544)))

(declare-fun b!4713369 () Bool)

(declare-fun e!2939713 () Bool)

(assert (=> b!4713369 (= e!2939713 e!2939714)))

(declare-fun res!1992490 () Bool)

(assert (=> b!4713369 (=> (not res!1992490) (not e!2939714))))

(assert (=> b!4713369 (= res!1992490 (isDefined!9547 (getValueByKey!1914 (toList!5833 (extractMap!1998 lt!1877468)) key!4653)))))

(declare-fun b!4713370 () Bool)

(declare-fun lt!1877838 () Unit!128236)

(assert (=> b!4713370 (= e!2939715 lt!1877838)))

(declare-fun lt!1877839 () Unit!128236)

(assert (=> b!4713370 (= lt!1877839 (lemmaContainsKeyImpliesGetValueByKeyDefined!1804 (toList!5833 (extractMap!1998 lt!1877468)) key!4653))))

(assert (=> b!4713370 (isDefined!9547 (getValueByKey!1914 (toList!5833 (extractMap!1998 lt!1877468)) key!4653))))

(declare-fun lt!1877841 () Unit!128236)

(assert (=> b!4713370 (= lt!1877841 lt!1877839)))

(assert (=> b!4713370 (= lt!1877838 (lemmaInListThenGetKeysListContains!918 (toList!5833 (extractMap!1998 lt!1877468)) key!4653))))

(assert (=> b!4713370 call!329544))

(declare-fun b!4713371 () Bool)

(assert (=> b!4713371 false))

(declare-fun lt!1877842 () Unit!128236)

(declare-fun lt!1877844 () Unit!128236)

(assert (=> b!4713371 (= lt!1877842 lt!1877844)))

(assert (=> b!4713371 (containsKey!3290 (toList!5833 (extractMap!1998 lt!1877468)) key!4653)))

(assert (=> b!4713371 (= lt!1877844 (lemmaInGetKeysListThenContainsKey!922 (toList!5833 (extractMap!1998 lt!1877468)) key!4653))))

(declare-fun Unit!128333 () Unit!128236)

(assert (=> b!4713371 (= e!2939711 Unit!128333)))

(declare-fun b!4713372 () Bool)

(assert (=> b!4713372 (= e!2939710 (getKeysList!923 (toList!5833 (extractMap!1998 lt!1877468))))))

(declare-fun b!4713373 () Bool)

(assert (=> b!4713373 (= e!2939710 (keys!18904 (extractMap!1998 lt!1877468)))))

(declare-fun d!1499752 () Bool)

(assert (=> d!1499752 e!2939713))

(declare-fun res!1992488 () Bool)

(assert (=> d!1499752 (=> res!1992488 e!2939713)))

(assert (=> d!1499752 (= res!1992488 e!2939712)))

(declare-fun res!1992489 () Bool)

(assert (=> d!1499752 (=> (not res!1992489) (not e!2939712))))

(declare-fun lt!1877837 () Bool)

(assert (=> d!1499752 (= res!1992489 (not lt!1877837))))

(declare-fun lt!1877840 () Bool)

(assert (=> d!1499752 (= lt!1877837 lt!1877840)))

(declare-fun lt!1877843 () Unit!128236)

(assert (=> d!1499752 (= lt!1877843 e!2939715)))

(assert (=> d!1499752 (= c!805149 lt!1877840)))

(assert (=> d!1499752 (= lt!1877840 (containsKey!3290 (toList!5833 (extractMap!1998 lt!1877468)) key!4653))))

(assert (=> d!1499752 (= (contains!16037 (extractMap!1998 lt!1877468) key!4653) lt!1877837)))

(declare-fun b!4713374 () Bool)

(declare-fun Unit!128334 () Unit!128236)

(assert (=> b!4713374 (= e!2939711 Unit!128334)))

(assert (= (and d!1499752 c!805149) b!4713370))

(assert (= (and d!1499752 (not c!805149)) b!4713368))

(assert (= (and b!4713368 c!805151) b!4713371))

(assert (= (and b!4713368 (not c!805151)) b!4713374))

(assert (= (or b!4713370 b!4713368) bm!329539))

(assert (= (and bm!329539 c!805150) b!4713372))

(assert (= (and bm!329539 (not c!805150)) b!4713373))

(assert (= (and d!1499752 res!1992489) b!4713367))

(assert (= (and d!1499752 (not res!1992488)) b!4713369))

(assert (= (and b!4713369 res!1992490) b!4713366))

(declare-fun m!5640079 () Bool)

(assert (=> b!4713372 m!5640079))

(declare-fun m!5640081 () Bool)

(assert (=> b!4713371 m!5640081))

(declare-fun m!5640083 () Bool)

(assert (=> b!4713371 m!5640083))

(declare-fun m!5640085 () Bool)

(assert (=> bm!329539 m!5640085))

(assert (=> b!4713366 m!5639555))

(declare-fun m!5640087 () Bool)

(assert (=> b!4713366 m!5640087))

(assert (=> b!4713366 m!5640087))

(declare-fun m!5640089 () Bool)

(assert (=> b!4713366 m!5640089))

(declare-fun m!5640091 () Bool)

(assert (=> b!4713369 m!5640091))

(assert (=> b!4713369 m!5640091))

(declare-fun m!5640093 () Bool)

(assert (=> b!4713369 m!5640093))

(assert (=> b!4713367 m!5639555))

(assert (=> b!4713367 m!5640087))

(assert (=> b!4713367 m!5640087))

(assert (=> b!4713367 m!5640089))

(declare-fun m!5640095 () Bool)

(assert (=> b!4713370 m!5640095))

(assert (=> b!4713370 m!5640091))

(assert (=> b!4713370 m!5640091))

(assert (=> b!4713370 m!5640093))

(declare-fun m!5640097 () Bool)

(assert (=> b!4713370 m!5640097))

(assert (=> b!4713373 m!5639555))

(assert (=> b!4713373 m!5640087))

(assert (=> d!1499752 m!5640081))

(assert (=> b!4713174 d!1499752))

(declare-fun bs!1102861 () Bool)

(declare-fun d!1499760 () Bool)

(assert (= bs!1102861 (and d!1499760 d!1499684)))

(declare-fun lambda!213379 () Int)

(assert (=> bs!1102861 (= lambda!213379 lambda!213276)))

(declare-fun bs!1102862 () Bool)

(assert (= bs!1102862 (and d!1499760 d!1499712)))

(assert (=> bs!1102862 (= lambda!213379 lambda!213352)))

(declare-fun bs!1102863 () Bool)

(assert (= bs!1102863 (and d!1499760 start!479100)))

(assert (=> bs!1102863 (= lambda!213379 lambda!213273)))

(declare-fun bs!1102864 () Bool)

(assert (= bs!1102864 (and d!1499760 d!1499714)))

(assert (=> bs!1102864 (= lambda!213379 lambda!213353)))

(declare-fun bs!1102865 () Bool)

(assert (= bs!1102865 (and d!1499760 d!1499702)))

(assert (=> bs!1102865 (= lambda!213379 lambda!213344)))

(declare-fun lt!1877847 () ListMap!5197)

(assert (=> d!1499760 (invariantList!1484 (toList!5833 lt!1877847))))

(declare-fun e!2939720 () ListMap!5197)

(assert (=> d!1499760 (= lt!1877847 e!2939720)))

(declare-fun c!805156 () Bool)

(assert (=> d!1499760 (= c!805156 ((_ is Cons!52720) (Cons!52720 (tuple2!54285 hash!405 lt!1877472) (t!360086 (toList!5834 lm!2023)))))))

(assert (=> d!1499760 (forall!11513 (Cons!52720 (tuple2!54285 hash!405 lt!1877472) (t!360086 (toList!5834 lm!2023))) lambda!213379)))

(assert (=> d!1499760 (= (extractMap!1998 (Cons!52720 (tuple2!54285 hash!405 lt!1877472) (t!360086 (toList!5834 lm!2023)))) lt!1877847)))

(declare-fun b!4713383 () Bool)

(assert (=> b!4713383 (= e!2939720 (addToMapMapFromBucket!1402 (_2!30436 (h!59039 (Cons!52720 (tuple2!54285 hash!405 lt!1877472) (t!360086 (toList!5834 lm!2023))))) (extractMap!1998 (t!360086 (Cons!52720 (tuple2!54285 hash!405 lt!1877472) (t!360086 (toList!5834 lm!2023)))))))))

(declare-fun b!4713384 () Bool)

(assert (=> b!4713384 (= e!2939720 (ListMap!5198 Nil!52719))))

(assert (= (and d!1499760 c!805156) b!4713383))

(assert (= (and d!1499760 (not c!805156)) b!4713384))

(declare-fun m!5640103 () Bool)

(assert (=> d!1499760 m!5640103))

(declare-fun m!5640105 () Bool)

(assert (=> d!1499760 m!5640105))

(declare-fun m!5640107 () Bool)

(assert (=> b!4713383 m!5640107))

(assert (=> b!4713383 m!5640107))

(declare-fun m!5640109 () Bool)

(assert (=> b!4713383 m!5640109))

(assert (=> b!4713174 d!1499760))

(declare-fun d!1499764 () Bool)

(assert (=> d!1499764 (eq!1099 (addToMapMapFromBucket!1402 (Cons!52719 lt!1877473 lt!1877460) lt!1877476) (+!2232 (addToMapMapFromBucket!1402 lt!1877460 lt!1877476) lt!1877473))))

(declare-fun lt!1877848 () Unit!128236)

(assert (=> d!1499764 (= lt!1877848 (choose!33153 lt!1877473 lt!1877460 lt!1877476))))

(assert (=> d!1499764 (noDuplicateKeys!1972 lt!1877460)))

(assert (=> d!1499764 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!348 lt!1877473 lt!1877460 lt!1877476) lt!1877848)))

(declare-fun bs!1102866 () Bool)

(assert (= bs!1102866 d!1499764))

(assert (=> bs!1102866 m!5639559))

(assert (=> bs!1102866 m!5639559))

(assert (=> bs!1102866 m!5639561))

(assert (=> bs!1102866 m!5639563))

(assert (=> bs!1102866 m!5639565))

(assert (=> bs!1102866 m!5639561))

(assert (=> bs!1102866 m!5639801))

(declare-fun m!5640111 () Bool)

(assert (=> bs!1102866 m!5640111))

(assert (=> bs!1102866 m!5639565))

(assert (=> b!4713174 d!1499764))

(declare-fun bs!1102868 () Bool)

(declare-fun b!4713389 () Bool)

(assert (= bs!1102868 (and b!4713389 b!4713300)))

(declare-fun lambda!213383 () Int)

(assert (=> bs!1102868 (= lambda!213383 lambda!213349)))

(declare-fun bs!1102870 () Bool)

(assert (= bs!1102870 (and b!4713389 b!4713347)))

(assert (=> bs!1102870 (= (= lt!1877476 lt!1877816) (= lambda!213383 lambda!213377))))

(declare-fun bs!1102872 () Bool)

(assert (= bs!1102872 (and b!4713389 b!4713295)))

(assert (=> bs!1102872 (= lambda!213383 lambda!213340)))

(declare-fun bs!1102874 () Bool)

(assert (= bs!1102874 (and b!4713389 b!4713337)))

(assert (=> bs!1102874 (= (= lt!1877476 lt!1877770) (= lambda!213383 lambda!213371))))

(declare-fun bs!1102876 () Bool)

(assert (= bs!1102876 (and b!4713389 d!1499738)))

(assert (=> bs!1102876 (= (= lt!1877476 lt!1877784) (= lambda!213383 lambda!213373))))

(declare-fun bs!1102877 () Bool)

(assert (= bs!1102877 (and b!4713389 d!1499690)))

(assert (=> bs!1102877 (not (= lambda!213383 lambda!213279))))

(declare-fun bs!1102879 () Bool)

(assert (= bs!1102879 (and b!4713389 d!1499706)))

(assert (=> bs!1102879 (= (= lt!1877476 lt!1877694) (= lambda!213383 lambda!213351))))

(declare-fun bs!1102881 () Bool)

(assert (= bs!1102881 (and b!4713389 d!1499742)))

(assert (=> bs!1102881 (= (= lt!1877476 lt!1877826) (= lambda!213383 lambda!213378))))

(declare-fun bs!1102883 () Bool)

(assert (= bs!1102883 (and b!4713389 b!4713341)))

(assert (=> bs!1102883 (= lambda!213383 lambda!213367)))

(assert (=> bs!1102874 (= lambda!213383 lambda!213369)))

(declare-fun bs!1102885 () Bool)

(assert (= bs!1102885 (and b!4713389 d!1499692)))

(assert (=> bs!1102885 (= (= lt!1877476 lt!1877669) (= lambda!213383 lambda!213343))))

(declare-fun bs!1102887 () Bool)

(assert (= bs!1102887 (and b!4713389 b!4713304)))

(assert (=> bs!1102887 (= lambda!213383 lambda!213348)))

(declare-fun bs!1102889 () Bool)

(assert (= bs!1102889 (and b!4713389 b!4713291)))

(assert (=> bs!1102889 (= (= lt!1877476 lt!1877659) (= lambda!213383 lambda!213342))))

(declare-fun bs!1102891 () Bool)

(assert (= bs!1102891 (and b!4713389 b!4713351)))

(assert (=> bs!1102891 (= lambda!213383 lambda!213375)))

(assert (=> bs!1102868 (= (= lt!1877476 lt!1877684) (= lambda!213383 lambda!213350))))

(assert (=> bs!1102889 (= lambda!213383 lambda!213341)))

(assert (=> bs!1102870 (= lambda!213383 lambda!213376)))

(assert (=> b!4713389 true))

(declare-fun bs!1102893 () Bool)

(declare-fun b!4713385 () Bool)

(assert (= bs!1102893 (and b!4713385 b!4713300)))

(declare-fun lambda!213384 () Int)

(assert (=> bs!1102893 (= lambda!213384 lambda!213349)))

(declare-fun bs!1102894 () Bool)

(assert (= bs!1102894 (and b!4713385 b!4713347)))

(assert (=> bs!1102894 (= (= lt!1877476 lt!1877816) (= lambda!213384 lambda!213377))))

(declare-fun bs!1102895 () Bool)

(assert (= bs!1102895 (and b!4713385 b!4713295)))

(assert (=> bs!1102895 (= lambda!213384 lambda!213340)))

(declare-fun bs!1102896 () Bool)

(assert (= bs!1102896 (and b!4713385 b!4713337)))

(assert (=> bs!1102896 (= (= lt!1877476 lt!1877770) (= lambda!213384 lambda!213371))))

(declare-fun bs!1102897 () Bool)

(assert (= bs!1102897 (and b!4713385 d!1499738)))

(assert (=> bs!1102897 (= (= lt!1877476 lt!1877784) (= lambda!213384 lambda!213373))))

(declare-fun bs!1102898 () Bool)

(assert (= bs!1102898 (and b!4713385 d!1499706)))

(assert (=> bs!1102898 (= (= lt!1877476 lt!1877694) (= lambda!213384 lambda!213351))))

(declare-fun bs!1102899 () Bool)

(assert (= bs!1102899 (and b!4713385 d!1499742)))

(assert (=> bs!1102899 (= (= lt!1877476 lt!1877826) (= lambda!213384 lambda!213378))))

(declare-fun bs!1102900 () Bool)

(assert (= bs!1102900 (and b!4713385 b!4713341)))

(assert (=> bs!1102900 (= lambda!213384 lambda!213367)))

(assert (=> bs!1102896 (= lambda!213384 lambda!213369)))

(declare-fun bs!1102901 () Bool)

(assert (= bs!1102901 (and b!4713385 d!1499692)))

(assert (=> bs!1102901 (= (= lt!1877476 lt!1877669) (= lambda!213384 lambda!213343))))

(declare-fun bs!1102902 () Bool)

(assert (= bs!1102902 (and b!4713385 b!4713304)))

(assert (=> bs!1102902 (= lambda!213384 lambda!213348)))

(declare-fun bs!1102903 () Bool)

(assert (= bs!1102903 (and b!4713385 b!4713291)))

(assert (=> bs!1102903 (= (= lt!1877476 lt!1877659) (= lambda!213384 lambda!213342))))

(declare-fun bs!1102904 () Bool)

(assert (= bs!1102904 (and b!4713385 d!1499690)))

(assert (=> bs!1102904 (not (= lambda!213384 lambda!213279))))

(declare-fun bs!1102905 () Bool)

(assert (= bs!1102905 (and b!4713385 b!4713389)))

(assert (=> bs!1102905 (= lambda!213384 lambda!213383)))

(declare-fun bs!1102906 () Bool)

(assert (= bs!1102906 (and b!4713385 b!4713351)))

(assert (=> bs!1102906 (= lambda!213384 lambda!213375)))

(assert (=> bs!1102893 (= (= lt!1877476 lt!1877684) (= lambda!213384 lambda!213350))))

(assert (=> bs!1102903 (= lambda!213384 lambda!213341)))

(assert (=> bs!1102894 (= lambda!213384 lambda!213376)))

(assert (=> b!4713385 true))

(declare-fun lambda!213385 () Int)

(declare-fun lt!1877851 () ListMap!5197)

(assert (=> bs!1102893 (= (= lt!1877851 lt!1877476) (= lambda!213385 lambda!213349))))

(assert (=> b!4713385 (= (= lt!1877851 lt!1877476) (= lambda!213385 lambda!213384))))

(assert (=> bs!1102894 (= (= lt!1877851 lt!1877816) (= lambda!213385 lambda!213377))))

(assert (=> bs!1102895 (= (= lt!1877851 lt!1877476) (= lambda!213385 lambda!213340))))

(assert (=> bs!1102896 (= (= lt!1877851 lt!1877770) (= lambda!213385 lambda!213371))))

(assert (=> bs!1102897 (= (= lt!1877851 lt!1877784) (= lambda!213385 lambda!213373))))

(assert (=> bs!1102898 (= (= lt!1877851 lt!1877694) (= lambda!213385 lambda!213351))))

(assert (=> bs!1102899 (= (= lt!1877851 lt!1877826) (= lambda!213385 lambda!213378))))

(assert (=> bs!1102900 (= (= lt!1877851 lt!1877476) (= lambda!213385 lambda!213367))))

(assert (=> bs!1102896 (= (= lt!1877851 lt!1877476) (= lambda!213385 lambda!213369))))

(assert (=> bs!1102901 (= (= lt!1877851 lt!1877669) (= lambda!213385 lambda!213343))))

(assert (=> bs!1102902 (= (= lt!1877851 lt!1877476) (= lambda!213385 lambda!213348))))

(assert (=> bs!1102903 (= (= lt!1877851 lt!1877659) (= lambda!213385 lambda!213342))))

(assert (=> bs!1102904 (not (= lambda!213385 lambda!213279))))

(assert (=> bs!1102905 (= (= lt!1877851 lt!1877476) (= lambda!213385 lambda!213383))))

(assert (=> bs!1102906 (= (= lt!1877851 lt!1877476) (= lambda!213385 lambda!213375))))

(assert (=> bs!1102893 (= (= lt!1877851 lt!1877684) (= lambda!213385 lambda!213350))))

(assert (=> bs!1102903 (= (= lt!1877851 lt!1877476) (= lambda!213385 lambda!213341))))

(assert (=> bs!1102894 (= (= lt!1877851 lt!1877476) (= lambda!213385 lambda!213376))))

(assert (=> b!4713385 true))

(declare-fun bs!1102912 () Bool)

(declare-fun d!1499766 () Bool)

(assert (= bs!1102912 (and d!1499766 b!4713300)))

(declare-fun lt!1877861 () ListMap!5197)

(declare-fun lambda!213387 () Int)

(assert (=> bs!1102912 (= (= lt!1877861 lt!1877476) (= lambda!213387 lambda!213349))))

(declare-fun bs!1102913 () Bool)

(assert (= bs!1102913 (and d!1499766 b!4713385)))

(assert (=> bs!1102913 (= (= lt!1877861 lt!1877476) (= lambda!213387 lambda!213384))))

(declare-fun bs!1102914 () Bool)

(assert (= bs!1102914 (and d!1499766 b!4713347)))

(assert (=> bs!1102914 (= (= lt!1877861 lt!1877816) (= lambda!213387 lambda!213377))))

(declare-fun bs!1102915 () Bool)

(assert (= bs!1102915 (and d!1499766 b!4713295)))

(assert (=> bs!1102915 (= (= lt!1877861 lt!1877476) (= lambda!213387 lambda!213340))))

(declare-fun bs!1102916 () Bool)

(assert (= bs!1102916 (and d!1499766 b!4713337)))

(assert (=> bs!1102916 (= (= lt!1877861 lt!1877770) (= lambda!213387 lambda!213371))))

(declare-fun bs!1102917 () Bool)

(assert (= bs!1102917 (and d!1499766 d!1499738)))

(assert (=> bs!1102917 (= (= lt!1877861 lt!1877784) (= lambda!213387 lambda!213373))))

(declare-fun bs!1102918 () Bool)

(assert (= bs!1102918 (and d!1499766 d!1499706)))

(assert (=> bs!1102918 (= (= lt!1877861 lt!1877694) (= lambda!213387 lambda!213351))))

(declare-fun bs!1102919 () Bool)

(assert (= bs!1102919 (and d!1499766 d!1499742)))

(assert (=> bs!1102919 (= (= lt!1877861 lt!1877826) (= lambda!213387 lambda!213378))))

(declare-fun bs!1102920 () Bool)

(assert (= bs!1102920 (and d!1499766 b!4713341)))

(assert (=> bs!1102920 (= (= lt!1877861 lt!1877476) (= lambda!213387 lambda!213367))))

(assert (=> bs!1102916 (= (= lt!1877861 lt!1877476) (= lambda!213387 lambda!213369))))

(declare-fun bs!1102921 () Bool)

(assert (= bs!1102921 (and d!1499766 d!1499692)))

(assert (=> bs!1102921 (= (= lt!1877861 lt!1877669) (= lambda!213387 lambda!213343))))

(declare-fun bs!1102922 () Bool)

(assert (= bs!1102922 (and d!1499766 b!4713291)))

(assert (=> bs!1102922 (= (= lt!1877861 lt!1877659) (= lambda!213387 lambda!213342))))

(assert (=> bs!1102913 (= (= lt!1877861 lt!1877851) (= lambda!213387 lambda!213385))))

(declare-fun bs!1102923 () Bool)

(assert (= bs!1102923 (and d!1499766 b!4713304)))

(assert (=> bs!1102923 (= (= lt!1877861 lt!1877476) (= lambda!213387 lambda!213348))))

(declare-fun bs!1102924 () Bool)

(assert (= bs!1102924 (and d!1499766 d!1499690)))

(assert (=> bs!1102924 (not (= lambda!213387 lambda!213279))))

(declare-fun bs!1102925 () Bool)

(assert (= bs!1102925 (and d!1499766 b!4713389)))

(assert (=> bs!1102925 (= (= lt!1877861 lt!1877476) (= lambda!213387 lambda!213383))))

(declare-fun bs!1102926 () Bool)

(assert (= bs!1102926 (and d!1499766 b!4713351)))

(assert (=> bs!1102926 (= (= lt!1877861 lt!1877476) (= lambda!213387 lambda!213375))))

(assert (=> bs!1102912 (= (= lt!1877861 lt!1877684) (= lambda!213387 lambda!213350))))

(assert (=> bs!1102922 (= (= lt!1877861 lt!1877476) (= lambda!213387 lambda!213341))))

(assert (=> bs!1102914 (= (= lt!1877861 lt!1877476) (= lambda!213387 lambda!213376))))

(assert (=> d!1499766 true))

(declare-fun e!2939723 () ListMap!5197)

(assert (=> b!4713385 (= e!2939723 lt!1877851)))

(declare-fun lt!1877864 () ListMap!5197)

(assert (=> b!4713385 (= lt!1877864 (+!2232 lt!1877476 (h!59038 (Cons!52719 lt!1877478 lt!1877472))))))

(assert (=> b!4713385 (= lt!1877851 (addToMapMapFromBucket!1402 (t!360085 (Cons!52719 lt!1877478 lt!1877472)) (+!2232 lt!1877476 (h!59038 (Cons!52719 lt!1877478 lt!1877472)))))))

(declare-fun lt!1877858 () Unit!128236)

(declare-fun call!329547 () Unit!128236)

(assert (=> b!4713385 (= lt!1877858 call!329547)))

(assert (=> b!4713385 (forall!11515 (toList!5833 lt!1877476) lambda!213384)))

(declare-fun lt!1877863 () Unit!128236)

(assert (=> b!4713385 (= lt!1877863 lt!1877858)))

(assert (=> b!4713385 (forall!11515 (toList!5833 lt!1877864) lambda!213385)))

(declare-fun lt!1877868 () Unit!128236)

(declare-fun Unit!128335 () Unit!128236)

(assert (=> b!4713385 (= lt!1877868 Unit!128335)))

(assert (=> b!4713385 (forall!11515 (t!360085 (Cons!52719 lt!1877478 lt!1877472)) lambda!213385)))

(declare-fun lt!1877867 () Unit!128236)

(declare-fun Unit!128336 () Unit!128236)

(assert (=> b!4713385 (= lt!1877867 Unit!128336)))

(declare-fun lt!1877859 () Unit!128236)

(declare-fun Unit!128337 () Unit!128236)

(assert (=> b!4713385 (= lt!1877859 Unit!128337)))

(declare-fun lt!1877849 () Unit!128236)

(assert (=> b!4713385 (= lt!1877849 (forallContained!3584 (toList!5833 lt!1877864) lambda!213385 (h!59038 (Cons!52719 lt!1877478 lt!1877472))))))

(assert (=> b!4713385 (contains!16037 lt!1877864 (_1!30435 (h!59038 (Cons!52719 lt!1877478 lt!1877472))))))

(declare-fun lt!1877850 () Unit!128236)

(declare-fun Unit!128338 () Unit!128236)

(assert (=> b!4713385 (= lt!1877850 Unit!128338)))

(assert (=> b!4713385 (contains!16037 lt!1877851 (_1!30435 (h!59038 (Cons!52719 lt!1877478 lt!1877472))))))

(declare-fun lt!1877862 () Unit!128236)

(declare-fun Unit!128339 () Unit!128236)

(assert (=> b!4713385 (= lt!1877862 Unit!128339)))

(assert (=> b!4713385 (forall!11515 (Cons!52719 lt!1877478 lt!1877472) lambda!213385)))

(declare-fun lt!1877852 () Unit!128236)

(declare-fun Unit!128340 () Unit!128236)

(assert (=> b!4713385 (= lt!1877852 Unit!128340)))

(declare-fun call!329545 () Bool)

(assert (=> b!4713385 call!329545))

(declare-fun lt!1877855 () Unit!128236)

(declare-fun Unit!128341 () Unit!128236)

(assert (=> b!4713385 (= lt!1877855 Unit!128341)))

(declare-fun lt!1877854 () Unit!128236)

(declare-fun Unit!128342 () Unit!128236)

(assert (=> b!4713385 (= lt!1877854 Unit!128342)))

(declare-fun lt!1877857 () Unit!128236)

(assert (=> b!4713385 (= lt!1877857 (addForallContainsKeyThenBeforeAdding!771 lt!1877476 lt!1877851 (_1!30435 (h!59038 (Cons!52719 lt!1877478 lt!1877472))) (_2!30435 (h!59038 (Cons!52719 lt!1877478 lt!1877472)))))))

(assert (=> b!4713385 (forall!11515 (toList!5833 lt!1877476) lambda!213385)))

(declare-fun lt!1877856 () Unit!128236)

(assert (=> b!4713385 (= lt!1877856 lt!1877857)))

(declare-fun call!329546 () Bool)

(assert (=> b!4713385 call!329546))

(declare-fun lt!1877866 () Unit!128236)

(declare-fun Unit!128343 () Unit!128236)

(assert (=> b!4713385 (= lt!1877866 Unit!128343)))

(declare-fun res!1992493 () Bool)

(assert (=> b!4713385 (= res!1992493 (forall!11515 (Cons!52719 lt!1877478 lt!1877472) lambda!213385))))

(declare-fun e!2939722 () Bool)

(assert (=> b!4713385 (=> (not res!1992493) (not e!2939722))))

(assert (=> b!4713385 e!2939722))

(declare-fun lt!1877865 () Unit!128236)

(declare-fun Unit!128347 () Unit!128236)

(assert (=> b!4713385 (= lt!1877865 Unit!128347)))

(declare-fun b!4713386 () Bool)

(declare-fun res!1992491 () Bool)

(declare-fun e!2939721 () Bool)

(assert (=> b!4713386 (=> (not res!1992491) (not e!2939721))))

(assert (=> b!4713386 (= res!1992491 (forall!11515 (toList!5833 lt!1877476) lambda!213387))))

(declare-fun b!4713387 () Bool)

(assert (=> b!4713387 (= e!2939721 (invariantList!1484 (toList!5833 lt!1877861)))))

(declare-fun bm!329540 () Bool)

(assert (=> bm!329540 (= call!329547 (lemmaContainsAllItsOwnKeys!772 lt!1877476))))

(assert (=> d!1499766 e!2939721))

(declare-fun res!1992492 () Bool)

(assert (=> d!1499766 (=> (not res!1992492) (not e!2939721))))

(assert (=> d!1499766 (= res!1992492 (forall!11515 (Cons!52719 lt!1877478 lt!1877472) lambda!213387))))

(assert (=> d!1499766 (= lt!1877861 e!2939723)))

(declare-fun c!805157 () Bool)

(assert (=> d!1499766 (= c!805157 ((_ is Nil!52719) (Cons!52719 lt!1877478 lt!1877472)))))

(assert (=> d!1499766 (noDuplicateKeys!1972 (Cons!52719 lt!1877478 lt!1877472))))

(assert (=> d!1499766 (= (addToMapMapFromBucket!1402 (Cons!52719 lt!1877478 lt!1877472) lt!1877476) lt!1877861)))

(declare-fun b!4713388 () Bool)

(assert (=> b!4713388 (= e!2939722 (forall!11515 (toList!5833 lt!1877476) lambda!213385))))

(declare-fun bm!329541 () Bool)

(assert (=> bm!329541 (= call!329546 (forall!11515 (toList!5833 lt!1877476) (ite c!805157 lambda!213383 lambda!213385)))))

(declare-fun bm!329542 () Bool)

(assert (=> bm!329542 (= call!329545 (forall!11515 (ite c!805157 (toList!5833 lt!1877476) (toList!5833 lt!1877864)) (ite c!805157 lambda!213383 lambda!213385)))))

(assert (=> b!4713389 (= e!2939723 lt!1877476)))

(declare-fun lt!1877853 () Unit!128236)

(assert (=> b!4713389 (= lt!1877853 call!329547)))

(assert (=> b!4713389 call!329545))

(declare-fun lt!1877869 () Unit!128236)

(assert (=> b!4713389 (= lt!1877869 lt!1877853)))

(assert (=> b!4713389 call!329546))

(declare-fun lt!1877860 () Unit!128236)

(declare-fun Unit!128355 () Unit!128236)

(assert (=> b!4713389 (= lt!1877860 Unit!128355)))

(assert (= (and d!1499766 c!805157) b!4713389))

(assert (= (and d!1499766 (not c!805157)) b!4713385))

(assert (= (and b!4713385 res!1992493) b!4713388))

(assert (= (or b!4713389 b!4713385) bm!329540))

(assert (= (or b!4713389 b!4713385) bm!329541))

(assert (= (or b!4713389 b!4713385) bm!329542))

(assert (= (and d!1499766 res!1992492) b!4713386))

(assert (= (and b!4713386 res!1992491) b!4713387))

(declare-fun m!5640151 () Bool)

(assert (=> b!4713388 m!5640151))

(assert (=> bm!329540 m!5639733))

(declare-fun m!5640153 () Bool)

(assert (=> b!4713386 m!5640153))

(declare-fun m!5640155 () Bool)

(assert (=> bm!329541 m!5640155))

(declare-fun m!5640159 () Bool)

(assert (=> b!4713387 m!5640159))

(declare-fun m!5640161 () Bool)

(assert (=> bm!329542 m!5640161))

(declare-fun m!5640163 () Bool)

(assert (=> d!1499766 m!5640163))

(declare-fun m!5640165 () Bool)

(assert (=> d!1499766 m!5640165))

(declare-fun m!5640167 () Bool)

(assert (=> b!4713385 m!5640167))

(declare-fun m!5640169 () Bool)

(assert (=> b!4713385 m!5640169))

(declare-fun m!5640171 () Bool)

(assert (=> b!4713385 m!5640171))

(declare-fun m!5640173 () Bool)

(assert (=> b!4713385 m!5640173))

(declare-fun m!5640175 () Bool)

(assert (=> b!4713385 m!5640175))

(assert (=> b!4713385 m!5640169))

(declare-fun m!5640177 () Bool)

(assert (=> b!4713385 m!5640177))

(assert (=> b!4713385 m!5640151))

(assert (=> b!4713385 m!5640173))

(declare-fun m!5640179 () Bool)

(assert (=> b!4713385 m!5640179))

(declare-fun m!5640181 () Bool)

(assert (=> b!4713385 m!5640181))

(declare-fun m!5640183 () Bool)

(assert (=> b!4713385 m!5640183))

(declare-fun m!5640185 () Bool)

(assert (=> b!4713385 m!5640185))

(assert (=> b!4713174 d!1499766))

(declare-fun bs!1102929 () Bool)

(declare-fun d!1499782 () Bool)

(assert (= bs!1102929 (and d!1499782 d!1499760)))

(declare-fun lambda!213390 () Int)

(assert (=> bs!1102929 (= lambda!213390 lambda!213379)))

(declare-fun bs!1102930 () Bool)

(assert (= bs!1102930 (and d!1499782 d!1499684)))

(assert (=> bs!1102930 (= lambda!213390 lambda!213276)))

(declare-fun bs!1102931 () Bool)

(assert (= bs!1102931 (and d!1499782 d!1499712)))

(assert (=> bs!1102931 (= lambda!213390 lambda!213352)))

(declare-fun bs!1102932 () Bool)

(assert (= bs!1102932 (and d!1499782 start!479100)))

(assert (=> bs!1102932 (= lambda!213390 lambda!213273)))

(declare-fun bs!1102933 () Bool)

(assert (= bs!1102933 (and d!1499782 d!1499714)))

(assert (=> bs!1102933 (= lambda!213390 lambda!213353)))

(declare-fun bs!1102934 () Bool)

(assert (= bs!1102934 (and d!1499782 d!1499702)))

(assert (=> bs!1102934 (= lambda!213390 lambda!213344)))

(assert (=> d!1499782 (contains!16037 (extractMap!1998 (toList!5834 (ListLongMap!4364 lt!1877468))) key!4653)))

(declare-fun lt!1877890 () Unit!128236)

(declare-fun choose!33159 (ListLongMap!4363 K!14080 Hashable!6341) Unit!128236)

(assert (=> d!1499782 (= lt!1877890 (choose!33159 (ListLongMap!4364 lt!1877468) key!4653 hashF!1323))))

(assert (=> d!1499782 (forall!11513 (toList!5834 (ListLongMap!4364 lt!1877468)) lambda!213390)))

(assert (=> d!1499782 (= (lemmaListContainsThenExtractedMapContains!518 (ListLongMap!4364 lt!1877468) key!4653 hashF!1323) lt!1877890)))

(declare-fun bs!1102935 () Bool)

(assert (= bs!1102935 d!1499782))

(declare-fun m!5640195 () Bool)

(assert (=> bs!1102935 m!5640195))

(assert (=> bs!1102935 m!5640195))

(declare-fun m!5640197 () Bool)

(assert (=> bs!1102935 m!5640197))

(declare-fun m!5640199 () Bool)

(assert (=> bs!1102935 m!5640199))

(declare-fun m!5640201 () Bool)

(assert (=> bs!1102935 m!5640201))

(assert (=> b!4713174 d!1499782))

(declare-fun d!1499788 () Bool)

(declare-fun e!2939759 () Bool)

(assert (=> d!1499788 e!2939759))

(declare-fun res!1992521 () Bool)

(assert (=> d!1499788 (=> (not res!1992521) (not e!2939759))))

(declare-fun lt!1877894 () ListMap!5197)

(assert (=> d!1499788 (= res!1992521 (contains!16037 lt!1877894 (_1!30435 lt!1877473)))))

(declare-fun lt!1877892 () List!52843)

(assert (=> d!1499788 (= lt!1877894 (ListMap!5198 lt!1877892))))

(declare-fun lt!1877895 () Unit!128236)

(declare-fun lt!1877893 () Unit!128236)

(assert (=> d!1499788 (= lt!1877895 lt!1877893)))

(assert (=> d!1499788 (= (getValueByKey!1914 lt!1877892 (_1!30435 lt!1877473)) (Some!12293 (_2!30435 lt!1877473)))))

(assert (=> d!1499788 (= lt!1877893 (lemmaContainsTupThenGetReturnValue!1066 lt!1877892 (_1!30435 lt!1877473) (_2!30435 lt!1877473)))))

(assert (=> d!1499788 (= lt!1877892 (insertNoDuplicatedKeys!574 (toList!5833 (addToMapMapFromBucket!1402 lt!1877460 lt!1877476)) (_1!30435 lt!1877473) (_2!30435 lt!1877473)))))

(assert (=> d!1499788 (= (+!2232 (addToMapMapFromBucket!1402 lt!1877460 lt!1877476) lt!1877473) lt!1877894)))

(declare-fun b!4713445 () Bool)

(declare-fun res!1992520 () Bool)

(assert (=> b!4713445 (=> (not res!1992520) (not e!2939759))))

(assert (=> b!4713445 (= res!1992520 (= (getValueByKey!1914 (toList!5833 lt!1877894) (_1!30435 lt!1877473)) (Some!12293 (_2!30435 lt!1877473))))))

(declare-fun b!4713446 () Bool)

(assert (=> b!4713446 (= e!2939759 (contains!16041 (toList!5833 lt!1877894) lt!1877473))))

(assert (= (and d!1499788 res!1992521) b!4713445))

(assert (= (and b!4713445 res!1992520) b!4713446))

(declare-fun m!5640217 () Bool)

(assert (=> d!1499788 m!5640217))

(declare-fun m!5640219 () Bool)

(assert (=> d!1499788 m!5640219))

(declare-fun m!5640221 () Bool)

(assert (=> d!1499788 m!5640221))

(declare-fun m!5640223 () Bool)

(assert (=> d!1499788 m!5640223))

(declare-fun m!5640225 () Bool)

(assert (=> b!4713445 m!5640225))

(declare-fun m!5640227 () Bool)

(assert (=> b!4713446 m!5640227))

(assert (=> b!4713174 d!1499788))

(declare-fun d!1499792 () Bool)

(declare-fun e!2939760 () Bool)

(assert (=> d!1499792 e!2939760))

(declare-fun res!1992523 () Bool)

(assert (=> d!1499792 (=> (not res!1992523) (not e!2939760))))

(declare-fun lt!1877898 () ListMap!5197)

(assert (=> d!1499792 (= res!1992523 (contains!16037 lt!1877898 (_1!30435 (h!59038 oldBucket!34))))))

(declare-fun lt!1877896 () List!52843)

(assert (=> d!1499792 (= lt!1877898 (ListMap!5198 lt!1877896))))

(declare-fun lt!1877899 () Unit!128236)

(declare-fun lt!1877897 () Unit!128236)

(assert (=> d!1499792 (= lt!1877899 lt!1877897)))

(assert (=> d!1499792 (= (getValueByKey!1914 lt!1877896 (_1!30435 (h!59038 oldBucket!34))) (Some!12293 (_2!30435 (h!59038 oldBucket!34))))))

(assert (=> d!1499792 (= lt!1877897 (lemmaContainsTupThenGetReturnValue!1066 lt!1877896 (_1!30435 (h!59038 oldBucket!34)) (_2!30435 (h!59038 oldBucket!34))))))

(assert (=> d!1499792 (= lt!1877896 (insertNoDuplicatedKeys!574 (toList!5833 (extractMap!1998 (Cons!52720 (tuple2!54285 hash!405 lt!1877472) (t!360086 (toList!5834 lm!2023))))) (_1!30435 (h!59038 oldBucket!34)) (_2!30435 (h!59038 oldBucket!34))))))

(assert (=> d!1499792 (= (+!2232 (extractMap!1998 (Cons!52720 (tuple2!54285 hash!405 lt!1877472) (t!360086 (toList!5834 lm!2023)))) (h!59038 oldBucket!34)) lt!1877898)))

(declare-fun b!4713447 () Bool)

(declare-fun res!1992522 () Bool)

(assert (=> b!4713447 (=> (not res!1992522) (not e!2939760))))

(assert (=> b!4713447 (= res!1992522 (= (getValueByKey!1914 (toList!5833 lt!1877898) (_1!30435 (h!59038 oldBucket!34))) (Some!12293 (_2!30435 (h!59038 oldBucket!34)))))))

(declare-fun b!4713448 () Bool)

(assert (=> b!4713448 (= e!2939760 (contains!16041 (toList!5833 lt!1877898) (h!59038 oldBucket!34)))))

(assert (= (and d!1499792 res!1992523) b!4713447))

(assert (= (and b!4713447 res!1992522) b!4713448))

(declare-fun m!5640229 () Bool)

(assert (=> d!1499792 m!5640229))

(declare-fun m!5640231 () Bool)

(assert (=> d!1499792 m!5640231))

(declare-fun m!5640233 () Bool)

(assert (=> d!1499792 m!5640233))

(declare-fun m!5640235 () Bool)

(assert (=> d!1499792 m!5640235))

(declare-fun m!5640237 () Bool)

(assert (=> b!4713447 m!5640237))

(declare-fun m!5640239 () Bool)

(assert (=> b!4713448 m!5640239))

(assert (=> b!4713174 d!1499792))

(declare-fun d!1499794 () Bool)

(assert (=> d!1499794 (= (eq!1099 (addToMapMapFromBucket!1402 (Cons!52719 lt!1877473 lt!1877460) lt!1877476) (+!2232 (addToMapMapFromBucket!1402 lt!1877460 lt!1877476) lt!1877473)) (= (content!9345 (toList!5833 (addToMapMapFromBucket!1402 (Cons!52719 lt!1877473 lt!1877460) lt!1877476))) (content!9345 (toList!5833 (+!2232 (addToMapMapFromBucket!1402 lt!1877460 lt!1877476) lt!1877473)))))))

(declare-fun bs!1102936 () Bool)

(assert (= bs!1102936 d!1499794))

(declare-fun m!5640241 () Bool)

(assert (=> bs!1102936 m!5640241))

(declare-fun m!5640243 () Bool)

(assert (=> bs!1102936 m!5640243))

(assert (=> b!4713174 d!1499794))

(declare-fun d!1499796 () Bool)

(assert (=> d!1499796 (= (head!10174 oldBucket!34) (h!59038 oldBucket!34))))

(assert (=> b!4713174 d!1499796))

(declare-fun d!1499798 () Bool)

(assert (=> d!1499798 (= (eq!1099 (addToMapMapFromBucket!1402 (Cons!52719 lt!1877478 lt!1877472) lt!1877476) (+!2232 (addToMapMapFromBucket!1402 lt!1877472 lt!1877476) lt!1877478)) (= (content!9345 (toList!5833 (addToMapMapFromBucket!1402 (Cons!52719 lt!1877478 lt!1877472) lt!1877476))) (content!9345 (toList!5833 (+!2232 (addToMapMapFromBucket!1402 lt!1877472 lt!1877476) lt!1877478)))))))

(declare-fun bs!1102937 () Bool)

(assert (= bs!1102937 d!1499798))

(declare-fun m!5640245 () Bool)

(assert (=> bs!1102937 m!5640245))

(declare-fun m!5640247 () Bool)

(assert (=> bs!1102937 m!5640247))

(assert (=> b!4713174 d!1499798))

(declare-fun d!1499800 () Bool)

(assert (=> d!1499800 (= (head!10174 newBucket!218) (h!59038 newBucket!218))))

(assert (=> b!4713174 d!1499800))

(declare-fun d!1499802 () Bool)

(declare-fun res!1992528 () Bool)

(declare-fun e!2939765 () Bool)

(assert (=> d!1499802 (=> res!1992528 e!2939765)))

(assert (=> d!1499802 (= res!1992528 ((_ is Nil!52720) (toList!5834 lm!2023)))))

(assert (=> d!1499802 (= (forall!11513 (toList!5834 lm!2023) lambda!213273) e!2939765)))

(declare-fun b!4713453 () Bool)

(declare-fun e!2939766 () Bool)

(assert (=> b!4713453 (= e!2939765 e!2939766)))

(declare-fun res!1992529 () Bool)

(assert (=> b!4713453 (=> (not res!1992529) (not e!2939766))))

(declare-fun dynLambda!21787 (Int tuple2!54284) Bool)

(assert (=> b!4713453 (= res!1992529 (dynLambda!21787 lambda!213273 (h!59039 (toList!5834 lm!2023))))))

(declare-fun b!4713454 () Bool)

(assert (=> b!4713454 (= e!2939766 (forall!11513 (t!360086 (toList!5834 lm!2023)) lambda!213273))))

(assert (= (and d!1499802 (not res!1992528)) b!4713453))

(assert (= (and b!4713453 res!1992529) b!4713454))

(declare-fun b_lambda!177713 () Bool)

(assert (=> (not b_lambda!177713) (not b!4713453)))

(declare-fun m!5640249 () Bool)

(assert (=> b!4713453 m!5640249))

(declare-fun m!5640251 () Bool)

(assert (=> b!4713454 m!5640251))

(assert (=> start!479100 d!1499802))

(declare-fun d!1499804 () Bool)

(declare-fun isStrictlySorted!723 (List!52844) Bool)

(assert (=> d!1499804 (= (inv!67954 lm!2023) (isStrictlySorted!723 (toList!5834 lm!2023)))))

(declare-fun bs!1102946 () Bool)

(assert (= bs!1102946 d!1499804))

(declare-fun m!5640261 () Bool)

(assert (=> bs!1102946 m!5640261))

(assert (=> start!479100 d!1499804))

(declare-fun bs!1102948 () Bool)

(declare-fun d!1499810 () Bool)

(assert (= bs!1102948 (and d!1499810 d!1499760)))

(declare-fun lambda!213396 () Int)

(assert (=> bs!1102948 (not (= lambda!213396 lambda!213379))))

(declare-fun bs!1102949 () Bool)

(assert (= bs!1102949 (and d!1499810 d!1499684)))

(assert (=> bs!1102949 (not (= lambda!213396 lambda!213276))))

(declare-fun bs!1102950 () Bool)

(assert (= bs!1102950 (and d!1499810 start!479100)))

(assert (=> bs!1102950 (not (= lambda!213396 lambda!213273))))

(declare-fun bs!1102951 () Bool)

(assert (= bs!1102951 (and d!1499810 d!1499714)))

(assert (=> bs!1102951 (not (= lambda!213396 lambda!213353))))

(declare-fun bs!1102952 () Bool)

(assert (= bs!1102952 (and d!1499810 d!1499702)))

(assert (=> bs!1102952 (not (= lambda!213396 lambda!213344))))

(declare-fun bs!1102953 () Bool)

(assert (= bs!1102953 (and d!1499810 d!1499712)))

(assert (=> bs!1102953 (not (= lambda!213396 lambda!213352))))

(declare-fun bs!1102954 () Bool)

(assert (= bs!1102954 (and d!1499810 d!1499782)))

(assert (=> bs!1102954 (not (= lambda!213396 lambda!213390))))

(assert (=> d!1499810 true))

(assert (=> d!1499810 (= (allKeysSameHashInMap!1886 lm!2023 hashF!1323) (forall!11513 (toList!5834 lm!2023) lambda!213396))))

(declare-fun bs!1102955 () Bool)

(assert (= bs!1102955 d!1499810))

(declare-fun m!5640265 () Bool)

(assert (=> bs!1102955 m!5640265))

(assert (=> b!4713173 d!1499810))

(declare-fun b!4713457 () Bool)

(declare-fun e!2939767 () List!52843)

(assert (=> b!4713457 (= e!2939767 (t!360085 oldBucket!34))))

(declare-fun b!4713460 () Bool)

(declare-fun e!2939768 () List!52843)

(assert (=> b!4713460 (= e!2939768 Nil!52719)))

(declare-fun b!4713458 () Bool)

(assert (=> b!4713458 (= e!2939767 e!2939768)))

(declare-fun c!805170 () Bool)

(assert (=> b!4713458 (= c!805170 ((_ is Cons!52719) oldBucket!34))))

(declare-fun d!1499814 () Bool)

(declare-fun lt!1877906 () List!52843)

(assert (=> d!1499814 (not (containsKey!3289 lt!1877906 key!4653))))

(assert (=> d!1499814 (= lt!1877906 e!2939767)))

(declare-fun c!805171 () Bool)

(assert (=> d!1499814 (= c!805171 (and ((_ is Cons!52719) oldBucket!34) (= (_1!30435 (h!59038 oldBucket!34)) key!4653)))))

(assert (=> d!1499814 (noDuplicateKeys!1972 oldBucket!34)))

(assert (=> d!1499814 (= (removePairForKey!1567 oldBucket!34 key!4653) lt!1877906)))

(declare-fun b!4713459 () Bool)

(assert (=> b!4713459 (= e!2939768 (Cons!52719 (h!59038 oldBucket!34) (removePairForKey!1567 (t!360085 oldBucket!34) key!4653)))))

(assert (= (and d!1499814 c!805171) b!4713457))

(assert (= (and d!1499814 (not c!805171)) b!4713458))

(assert (= (and b!4713458 c!805170) b!4713459))

(assert (= (and b!4713458 (not c!805170)) b!4713460))

(declare-fun m!5640267 () Bool)

(assert (=> d!1499814 m!5640267))

(assert (=> d!1499814 m!5639601))

(assert (=> b!4713459 m!5639597))

(assert (=> b!4713162 d!1499814))

(declare-fun d!1499816 () Bool)

(declare-fun res!1992534 () Bool)

(declare-fun e!2939773 () Bool)

(assert (=> d!1499816 (=> res!1992534 e!2939773)))

(assert (=> d!1499816 (= res!1992534 (not ((_ is Cons!52719) newBucket!218)))))

(assert (=> d!1499816 (= (noDuplicateKeys!1972 newBucket!218) e!2939773)))

(declare-fun b!4713465 () Bool)

(declare-fun e!2939774 () Bool)

(assert (=> b!4713465 (= e!2939773 e!2939774)))

(declare-fun res!1992535 () Bool)

(assert (=> b!4713465 (=> (not res!1992535) (not e!2939774))))

(assert (=> b!4713465 (= res!1992535 (not (containsKey!3289 (t!360085 newBucket!218) (_1!30435 (h!59038 newBucket!218)))))))

(declare-fun b!4713466 () Bool)

(assert (=> b!4713466 (= e!2939774 (noDuplicateKeys!1972 (t!360085 newBucket!218)))))

(assert (= (and d!1499816 (not res!1992534)) b!4713465))

(assert (= (and b!4713465 res!1992535) b!4713466))

(declare-fun m!5640269 () Bool)

(assert (=> b!4713465 m!5640269))

(declare-fun m!5640271 () Bool)

(assert (=> b!4713466 m!5640271))

(assert (=> b!4713172 d!1499816))

(declare-fun d!1499818 () Bool)

(declare-fun res!1992536 () Bool)

(declare-fun e!2939775 () Bool)

(assert (=> d!1499818 (=> res!1992536 e!2939775)))

(assert (=> d!1499818 (= res!1992536 (not ((_ is Cons!52719) oldBucket!34)))))

(assert (=> d!1499818 (= (noDuplicateKeys!1972 oldBucket!34) e!2939775)))

(declare-fun b!4713467 () Bool)

(declare-fun e!2939776 () Bool)

(assert (=> b!4713467 (= e!2939775 e!2939776)))

(declare-fun res!1992537 () Bool)

(assert (=> b!4713467 (=> (not res!1992537) (not e!2939776))))

(assert (=> b!4713467 (= res!1992537 (not (containsKey!3289 (t!360085 oldBucket!34) (_1!30435 (h!59038 oldBucket!34)))))))

(declare-fun b!4713468 () Bool)

(assert (=> b!4713468 (= e!2939776 (noDuplicateKeys!1972 (t!360085 oldBucket!34)))))

(assert (= (and d!1499818 (not res!1992536)) b!4713467))

(assert (= (and b!4713467 res!1992537) b!4713468))

(declare-fun m!5640273 () Bool)

(assert (=> b!4713467 m!5640273))

(assert (=> b!4713468 m!5639655))

(assert (=> b!4713171 d!1499818))

(declare-fun bs!1102956 () Bool)

(declare-fun d!1499820 () Bool)

(assert (= bs!1102956 (and d!1499820 b!4713300)))

(declare-fun lambda!213397 () Int)

(assert (=> bs!1102956 (not (= lambda!213397 lambda!213349))))

(declare-fun bs!1102957 () Bool)

(assert (= bs!1102957 (and d!1499820 b!4713385)))

(assert (=> bs!1102957 (not (= lambda!213397 lambda!213384))))

(declare-fun bs!1102958 () Bool)

(assert (= bs!1102958 (and d!1499820 b!4713347)))

(assert (=> bs!1102958 (not (= lambda!213397 lambda!213377))))

(declare-fun bs!1102959 () Bool)

(assert (= bs!1102959 (and d!1499820 b!4713295)))

(assert (=> bs!1102959 (not (= lambda!213397 lambda!213340))))

(declare-fun bs!1102960 () Bool)

(assert (= bs!1102960 (and d!1499820 b!4713337)))

(assert (=> bs!1102960 (not (= lambda!213397 lambda!213371))))

(declare-fun bs!1102961 () Bool)

(assert (= bs!1102961 (and d!1499820 d!1499738)))

(assert (=> bs!1102961 (not (= lambda!213397 lambda!213373))))

(declare-fun bs!1102962 () Bool)

(assert (= bs!1102962 (and d!1499820 d!1499706)))

(assert (=> bs!1102962 (not (= lambda!213397 lambda!213351))))

(declare-fun bs!1102963 () Bool)

(assert (= bs!1102963 (and d!1499820 d!1499742)))

(assert (=> bs!1102963 (not (= lambda!213397 lambda!213378))))

(declare-fun bs!1102964 () Bool)

(assert (= bs!1102964 (and d!1499820 d!1499766)))

(assert (=> bs!1102964 (not (= lambda!213397 lambda!213387))))

(declare-fun bs!1102965 () Bool)

(assert (= bs!1102965 (and d!1499820 b!4713341)))

(assert (=> bs!1102965 (not (= lambda!213397 lambda!213367))))

(assert (=> bs!1102960 (not (= lambda!213397 lambda!213369))))

(declare-fun bs!1102966 () Bool)

(assert (= bs!1102966 (and d!1499820 d!1499692)))

(assert (=> bs!1102966 (not (= lambda!213397 lambda!213343))))

(declare-fun bs!1102967 () Bool)

(assert (= bs!1102967 (and d!1499820 b!4713291)))

(assert (=> bs!1102967 (not (= lambda!213397 lambda!213342))))

(assert (=> bs!1102957 (not (= lambda!213397 lambda!213385))))

(declare-fun bs!1102968 () Bool)

(assert (= bs!1102968 (and d!1499820 b!4713304)))

(assert (=> bs!1102968 (not (= lambda!213397 lambda!213348))))

(declare-fun bs!1102969 () Bool)

(assert (= bs!1102969 (and d!1499820 d!1499690)))

(assert (=> bs!1102969 (= lambda!213397 lambda!213279)))

(declare-fun bs!1102970 () Bool)

(assert (= bs!1102970 (and d!1499820 b!4713389)))

(assert (=> bs!1102970 (not (= lambda!213397 lambda!213383))))

(declare-fun bs!1102971 () Bool)

(assert (= bs!1102971 (and d!1499820 b!4713351)))

(assert (=> bs!1102971 (not (= lambda!213397 lambda!213375))))

(assert (=> bs!1102956 (not (= lambda!213397 lambda!213350))))

(assert (=> bs!1102967 (not (= lambda!213397 lambda!213341))))

(assert (=> bs!1102958 (not (= lambda!213397 lambda!213376))))

(assert (=> d!1499820 true))

(assert (=> d!1499820 true))

(assert (=> d!1499820 (= (allKeysSameHash!1798 newBucket!218 hash!405 hashF!1323) (forall!11515 newBucket!218 lambda!213397))))

(declare-fun bs!1102972 () Bool)

(assert (= bs!1102972 d!1499820))

(declare-fun m!5640275 () Bool)

(assert (=> bs!1102972 m!5640275))

(assert (=> b!4713170 d!1499820))

(declare-fun b!4713478 () Bool)

(declare-fun e!2939783 () List!52843)

(assert (=> b!4713478 (= e!2939783 (t!360085 lt!1877472))))

(declare-fun b!4713481 () Bool)

(declare-fun e!2939784 () List!52843)

(assert (=> b!4713481 (= e!2939784 Nil!52719)))

(declare-fun b!4713479 () Bool)

(assert (=> b!4713479 (= e!2939783 e!2939784)))

(declare-fun c!805175 () Bool)

(assert (=> b!4713479 (= c!805175 ((_ is Cons!52719) lt!1877472))))

(declare-fun d!1499822 () Bool)

(declare-fun lt!1877919 () List!52843)

(assert (=> d!1499822 (not (containsKey!3289 lt!1877919 key!4653))))

(assert (=> d!1499822 (= lt!1877919 e!2939783)))

(declare-fun c!805176 () Bool)

(assert (=> d!1499822 (= c!805176 (and ((_ is Cons!52719) lt!1877472) (= (_1!30435 (h!59038 lt!1877472)) key!4653)))))

(assert (=> d!1499822 (noDuplicateKeys!1972 lt!1877472)))

(assert (=> d!1499822 (= (removePairForKey!1567 lt!1877472 key!4653) lt!1877919)))

(declare-fun b!4713480 () Bool)

(assert (=> b!4713480 (= e!2939784 (Cons!52719 (h!59038 lt!1877472) (removePairForKey!1567 (t!360085 lt!1877472) key!4653)))))

(assert (= (and d!1499822 c!805176) b!4713478))

(assert (= (and d!1499822 (not c!805176)) b!4713479))

(assert (= (and b!4713479 c!805175) b!4713480))

(assert (= (and b!4713479 (not c!805175)) b!4713481))

(declare-fun m!5640285 () Bool)

(assert (=> d!1499822 m!5640285))

(assert (=> d!1499822 m!5639859))

(declare-fun m!5640287 () Bool)

(assert (=> b!4713480 m!5640287))

(assert (=> b!4713179 d!1499822))

(declare-fun d!1499824 () Bool)

(assert (=> d!1499824 (= (tail!8894 newBucket!218) (t!360085 newBucket!218))))

(assert (=> b!4713179 d!1499824))

(declare-fun d!1499828 () Bool)

(assert (=> d!1499828 (= (tail!8894 oldBucket!34) (t!360085 oldBucket!34))))

(assert (=> b!4713179 d!1499828))

(declare-fun d!1499830 () Bool)

(declare-fun hash!4308 (Hashable!6341 K!14080) (_ BitVec 64))

(assert (=> d!1499830 (= (hash!4306 hashF!1323 key!4653) (hash!4308 hashF!1323 key!4653))))

(declare-fun bs!1102973 () Bool)

(assert (= bs!1102973 d!1499830))

(declare-fun m!5640289 () Bool)

(assert (=> bs!1102973 m!5640289))

(assert (=> b!4713168 d!1499830))

(declare-fun d!1499832 () Bool)

(assert (=> d!1499832 (dynLambda!21787 lambda!213273 lt!1877462)))

(declare-fun lt!1877924 () Unit!128236)

(declare-fun choose!33160 (List!52844 Int tuple2!54284) Unit!128236)

(assert (=> d!1499832 (= lt!1877924 (choose!33160 (toList!5834 lm!2023) lambda!213273 lt!1877462))))

(declare-fun e!2939797 () Bool)

(assert (=> d!1499832 e!2939797))

(declare-fun res!1992553 () Bool)

(assert (=> d!1499832 (=> (not res!1992553) (not e!2939797))))

(assert (=> d!1499832 (= res!1992553 (forall!11513 (toList!5834 lm!2023) lambda!213273))))

(assert (=> d!1499832 (= (forallContained!3582 (toList!5834 lm!2023) lambda!213273 lt!1877462) lt!1877924)))

(declare-fun b!4713494 () Bool)

(assert (=> b!4713494 (= e!2939797 (contains!16035 (toList!5834 lm!2023) lt!1877462))))

(assert (= (and d!1499832 res!1992553) b!4713494))

(declare-fun b_lambda!177715 () Bool)

(assert (=> (not b_lambda!177715) (not d!1499832)))

(declare-fun m!5640291 () Bool)

(assert (=> d!1499832 m!5640291))

(declare-fun m!5640293 () Bool)

(assert (=> d!1499832 m!5640293))

(assert (=> d!1499832 m!5639535))

(assert (=> b!4713494 m!5639519))

(assert (=> b!4713167 d!1499832))

(declare-fun b!4713513 () Bool)

(declare-fun e!2939811 () Option!12292)

(assert (=> b!4713513 (= e!2939811 (Some!12291 (h!59038 lt!1877475)))))

(declare-fun b!4713514 () Bool)

(declare-fun res!1992564 () Bool)

(declare-fun e!2939810 () Bool)

(assert (=> b!4713514 (=> (not res!1992564) (not e!2939810))))

(declare-fun lt!1877928 () Option!12292)

(declare-fun get!17674 (Option!12292) tuple2!54282)

(assert (=> b!4713514 (= res!1992564 (= (_1!30435 (get!17674 lt!1877928)) key!4653))))

(declare-fun b!4713516 () Bool)

(declare-fun e!2939814 () Bool)

(assert (=> b!4713516 (= e!2939814 (not (containsKey!3289 lt!1877475 key!4653)))))

(declare-fun b!4713517 () Bool)

(declare-fun e!2939813 () Option!12292)

(assert (=> b!4713517 (= e!2939813 None!12291)))

(declare-fun b!4713518 () Bool)

(assert (=> b!4713518 (= e!2939813 (getPair!538 (t!360085 lt!1877475) key!4653))))

(declare-fun b!4713519 () Bool)

(declare-fun e!2939812 () Bool)

(assert (=> b!4713519 (= e!2939812 e!2939810)))

(declare-fun res!1992566 () Bool)

(assert (=> b!4713519 (=> (not res!1992566) (not e!2939810))))

(assert (=> b!4713519 (= res!1992566 (isDefined!9546 lt!1877928))))

(declare-fun b!4713520 () Bool)

(assert (=> b!4713520 (= e!2939810 (contains!16041 lt!1877475 (get!17674 lt!1877928)))))

(declare-fun d!1499836 () Bool)

(assert (=> d!1499836 e!2939812))

(declare-fun res!1992565 () Bool)

(assert (=> d!1499836 (=> res!1992565 e!2939812)))

(assert (=> d!1499836 (= res!1992565 e!2939814)))

(declare-fun res!1992567 () Bool)

(assert (=> d!1499836 (=> (not res!1992567) (not e!2939814))))

(declare-fun isEmpty!29155 (Option!12292) Bool)

(assert (=> d!1499836 (= res!1992567 (isEmpty!29155 lt!1877928))))

(assert (=> d!1499836 (= lt!1877928 e!2939811)))

(declare-fun c!805181 () Bool)

(assert (=> d!1499836 (= c!805181 (and ((_ is Cons!52719) lt!1877475) (= (_1!30435 (h!59038 lt!1877475)) key!4653)))))

(assert (=> d!1499836 (noDuplicateKeys!1972 lt!1877475)))

(assert (=> d!1499836 (= (getPair!538 lt!1877475 key!4653) lt!1877928)))

(declare-fun b!4713515 () Bool)

(assert (=> b!4713515 (= e!2939811 e!2939813)))

(declare-fun c!805182 () Bool)

(assert (=> b!4713515 (= c!805182 ((_ is Cons!52719) lt!1877475))))

(assert (= (and d!1499836 c!805181) b!4713513))

(assert (= (and d!1499836 (not c!805181)) b!4713515))

(assert (= (and b!4713515 c!805182) b!4713518))

(assert (= (and b!4713515 (not c!805182)) b!4713517))

(assert (= (and d!1499836 res!1992567) b!4713516))

(assert (= (and d!1499836 (not res!1992565)) b!4713519))

(assert (= (and b!4713519 res!1992566) b!4713514))

(assert (= (and b!4713514 res!1992564) b!4713520))

(declare-fun m!5640301 () Bool)

(assert (=> b!4713519 m!5640301))

(declare-fun m!5640303 () Bool)

(assert (=> b!4713516 m!5640303))

(declare-fun m!5640305 () Bool)

(assert (=> b!4713520 m!5640305))

(assert (=> b!4713520 m!5640305))

(declare-fun m!5640307 () Bool)

(assert (=> b!4713520 m!5640307))

(assert (=> b!4713514 m!5640305))

(declare-fun m!5640309 () Bool)

(assert (=> b!4713518 m!5640309))

(declare-fun m!5640311 () Bool)

(assert (=> d!1499836 m!5640311))

(declare-fun m!5640313 () Bool)

(assert (=> d!1499836 m!5640313))

(assert (=> b!4713167 d!1499836))

(declare-fun d!1499840 () Bool)

(declare-datatypes ((Option!12296 0))(
  ( (None!12295) (Some!12295 (v!46838 List!52843)) )
))
(declare-fun get!17675 (Option!12296) List!52843)

(declare-fun getValueByKey!1916 (List!52844 (_ BitVec 64)) Option!12296)

(assert (=> d!1499840 (= (apply!12421 lm!2023 lt!1877471) (get!17675 (getValueByKey!1916 (toList!5834 lm!2023) lt!1877471)))))

(declare-fun bs!1102974 () Bool)

(assert (= bs!1102974 d!1499840))

(declare-fun m!5640315 () Bool)

(assert (=> bs!1102974 m!5640315))

(assert (=> bs!1102974 m!5640315))

(declare-fun m!5640317 () Bool)

(assert (=> bs!1102974 m!5640317))

(assert (=> b!4713167 d!1499840))

(declare-fun d!1499842 () Bool)

(declare-fun e!2939819 () Bool)

(assert (=> d!1499842 e!2939819))

(declare-fun res!1992570 () Bool)

(assert (=> d!1499842 (=> res!1992570 e!2939819)))

(declare-fun lt!1877937 () Bool)

(assert (=> d!1499842 (= res!1992570 (not lt!1877937))))

(declare-fun lt!1877939 () Bool)

(assert (=> d!1499842 (= lt!1877937 lt!1877939)))

(declare-fun lt!1877940 () Unit!128236)

(declare-fun e!2939820 () Unit!128236)

(assert (=> d!1499842 (= lt!1877940 e!2939820)))

(declare-fun c!805185 () Bool)

(assert (=> d!1499842 (= c!805185 lt!1877939)))

(declare-fun containsKey!3293 (List!52844 (_ BitVec 64)) Bool)

(assert (=> d!1499842 (= lt!1877939 (containsKey!3293 (toList!5834 lm!2023) lt!1877471))))

(assert (=> d!1499842 (= (contains!16036 lm!2023 lt!1877471) lt!1877937)))

(declare-fun b!4713527 () Bool)

(declare-fun lt!1877938 () Unit!128236)

(assert (=> b!4713527 (= e!2939820 lt!1877938)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1807 (List!52844 (_ BitVec 64)) Unit!128236)

(assert (=> b!4713527 (= lt!1877938 (lemmaContainsKeyImpliesGetValueByKeyDefined!1807 (toList!5834 lm!2023) lt!1877471))))

(declare-fun isDefined!9550 (Option!12296) Bool)

(assert (=> b!4713527 (isDefined!9550 (getValueByKey!1916 (toList!5834 lm!2023) lt!1877471))))

(declare-fun b!4713528 () Bool)

(declare-fun Unit!128357 () Unit!128236)

(assert (=> b!4713528 (= e!2939820 Unit!128357)))

(declare-fun b!4713529 () Bool)

(assert (=> b!4713529 (= e!2939819 (isDefined!9550 (getValueByKey!1916 (toList!5834 lm!2023) lt!1877471)))))

(assert (= (and d!1499842 c!805185) b!4713527))

(assert (= (and d!1499842 (not c!805185)) b!4713528))

(assert (= (and d!1499842 (not res!1992570)) b!4713529))

(declare-fun m!5640319 () Bool)

(assert (=> d!1499842 m!5640319))

(declare-fun m!5640321 () Bool)

(assert (=> b!4713527 m!5640321))

(assert (=> b!4713527 m!5640315))

(assert (=> b!4713527 m!5640315))

(declare-fun m!5640323 () Bool)

(assert (=> b!4713527 m!5640323))

(assert (=> b!4713529 m!5640315))

(assert (=> b!4713529 m!5640315))

(assert (=> b!4713529 m!5640323))

(assert (=> b!4713167 d!1499842))

(declare-fun d!1499844 () Bool)

(declare-fun lt!1877943 () Bool)

(declare-fun content!9347 (List!52844) (InoxSet tuple2!54284))

(assert (=> d!1499844 (= lt!1877943 (select (content!9347 (toList!5834 lm!2023)) lt!1877462))))

(declare-fun e!2939825 () Bool)

(assert (=> d!1499844 (= lt!1877943 e!2939825)))

(declare-fun res!1992576 () Bool)

(assert (=> d!1499844 (=> (not res!1992576) (not e!2939825))))

(assert (=> d!1499844 (= res!1992576 ((_ is Cons!52720) (toList!5834 lm!2023)))))

(assert (=> d!1499844 (= (contains!16035 (toList!5834 lm!2023) lt!1877462) lt!1877943)))

(declare-fun b!4713534 () Bool)

(declare-fun e!2939826 () Bool)

(assert (=> b!4713534 (= e!2939825 e!2939826)))

(declare-fun res!1992575 () Bool)

(assert (=> b!4713534 (=> res!1992575 e!2939826)))

(assert (=> b!4713534 (= res!1992575 (= (h!59039 (toList!5834 lm!2023)) lt!1877462))))

(declare-fun b!4713535 () Bool)

(assert (=> b!4713535 (= e!2939826 (contains!16035 (t!360086 (toList!5834 lm!2023)) lt!1877462))))

(assert (= (and d!1499844 res!1992576) b!4713534))

(assert (= (and b!4713534 (not res!1992575)) b!4713535))

(declare-fun m!5640325 () Bool)

(assert (=> d!1499844 m!5640325))

(declare-fun m!5640327 () Bool)

(assert (=> d!1499844 m!5640327))

(declare-fun m!5640329 () Bool)

(assert (=> b!4713535 m!5640329))

(assert (=> b!4713167 d!1499844))

(declare-fun bs!1102975 () Bool)

(declare-fun d!1499846 () Bool)

(assert (= bs!1102975 (and d!1499846 d!1499760)))

(declare-fun lambda!213400 () Int)

(assert (=> bs!1102975 (= lambda!213400 lambda!213379)))

(declare-fun bs!1102976 () Bool)

(assert (= bs!1102976 (and d!1499846 d!1499684)))

(assert (=> bs!1102976 (= lambda!213400 lambda!213276)))

(declare-fun bs!1102977 () Bool)

(assert (= bs!1102977 (and d!1499846 d!1499810)))

(assert (=> bs!1102977 (not (= lambda!213400 lambda!213396))))

(declare-fun bs!1102978 () Bool)

(assert (= bs!1102978 (and d!1499846 start!479100)))

(assert (=> bs!1102978 (= lambda!213400 lambda!213273)))

(declare-fun bs!1102979 () Bool)

(assert (= bs!1102979 (and d!1499846 d!1499714)))

(assert (=> bs!1102979 (= lambda!213400 lambda!213353)))

(declare-fun bs!1102980 () Bool)

(assert (= bs!1102980 (and d!1499846 d!1499702)))

(assert (=> bs!1102980 (= lambda!213400 lambda!213344)))

(declare-fun bs!1102981 () Bool)

(assert (= bs!1102981 (and d!1499846 d!1499712)))

(assert (=> bs!1102981 (= lambda!213400 lambda!213352)))

(declare-fun bs!1102982 () Bool)

(assert (= bs!1102982 (and d!1499846 d!1499782)))

(assert (=> bs!1102982 (= lambda!213400 lambda!213390)))

(assert (=> d!1499846 (contains!16036 lm!2023 (hash!4306 hashF!1323 key!4653))))

(declare-fun lt!1877946 () Unit!128236)

(declare-fun choose!33161 (ListLongMap!4363 K!14080 Hashable!6341) Unit!128236)

(assert (=> d!1499846 (= lt!1877946 (choose!33161 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1499846 (forall!11513 (toList!5834 lm!2023) lambda!213400)))

(assert (=> d!1499846 (= (lemmaInGenMapThenLongMapContainsHash!744 lm!2023 key!4653 hashF!1323) lt!1877946)))

(declare-fun bs!1102983 () Bool)

(assert (= bs!1102983 d!1499846))

(assert (=> bs!1102983 m!5639607))

(assert (=> bs!1102983 m!5639607))

(declare-fun m!5640331 () Bool)

(assert (=> bs!1102983 m!5640331))

(declare-fun m!5640333 () Bool)

(assert (=> bs!1102983 m!5640333))

(declare-fun m!5640335 () Bool)

(assert (=> bs!1102983 m!5640335))

(assert (=> b!4713167 d!1499846))

(declare-fun bs!1103070 () Bool)

(declare-fun d!1499848 () Bool)

(assert (= bs!1103070 (and d!1499848 d!1499760)))

(declare-fun lambda!213423 () Int)

(assert (=> bs!1103070 (= lambda!213423 lambda!213379)))

(declare-fun bs!1103071 () Bool)

(assert (= bs!1103071 (and d!1499848 d!1499684)))

(assert (=> bs!1103071 (= lambda!213423 lambda!213276)))

(declare-fun bs!1103072 () Bool)

(assert (= bs!1103072 (and d!1499848 d!1499810)))

(assert (=> bs!1103072 (not (= lambda!213423 lambda!213396))))

(declare-fun bs!1103073 () Bool)

(assert (= bs!1103073 (and d!1499848 d!1499846)))

(assert (=> bs!1103073 (= lambda!213423 lambda!213400)))

(declare-fun bs!1103074 () Bool)

(assert (= bs!1103074 (and d!1499848 start!479100)))

(assert (=> bs!1103074 (= lambda!213423 lambda!213273)))

(declare-fun bs!1103075 () Bool)

(assert (= bs!1103075 (and d!1499848 d!1499714)))

(assert (=> bs!1103075 (= lambda!213423 lambda!213353)))

(declare-fun bs!1103076 () Bool)

(assert (= bs!1103076 (and d!1499848 d!1499702)))

(assert (=> bs!1103076 (= lambda!213423 lambda!213344)))

(declare-fun bs!1103077 () Bool)

(assert (= bs!1103077 (and d!1499848 d!1499712)))

(assert (=> bs!1103077 (= lambda!213423 lambda!213352)))

(declare-fun bs!1103078 () Bool)

(assert (= bs!1103078 (and d!1499848 d!1499782)))

(assert (=> bs!1103078 (= lambda!213423 lambda!213390)))

(declare-fun b!4713567 () Bool)

(declare-fun res!1992604 () Bool)

(declare-fun e!2939844 () Bool)

(assert (=> b!4713567 (=> (not res!1992604) (not e!2939844))))

(assert (=> b!4713567 (= res!1992604 (allKeysSameHashInMap!1886 lm!2023 hashF!1323))))

(assert (=> d!1499848 e!2939844))

(declare-fun res!1992605 () Bool)

(assert (=> d!1499848 (=> (not res!1992605) (not e!2939844))))

(assert (=> d!1499848 (= res!1992605 (forall!11513 (toList!5834 lm!2023) lambda!213423))))

(declare-fun lt!1878012 () Unit!128236)

(declare-fun choose!33162 (ListLongMap!4363 K!14080 Hashable!6341) Unit!128236)

(assert (=> d!1499848 (= lt!1878012 (choose!33162 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1499848 (forall!11513 (toList!5834 lm!2023) lambda!213423)))

(assert (=> d!1499848 (= (lemmaInGenMapThenGetPairDefined!334 lm!2023 key!4653 hashF!1323) lt!1878012)))

(declare-fun b!4713569 () Bool)

(assert (=> b!4713569 (= e!2939844 (isDefined!9546 (getPair!538 (apply!12421 lm!2023 (hash!4306 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1878015 () Unit!128236)

(assert (=> b!4713569 (= lt!1878015 (forallContained!3582 (toList!5834 lm!2023) lambda!213423 (tuple2!54285 (hash!4306 hashF!1323 key!4653) (apply!12421 lm!2023 (hash!4306 hashF!1323 key!4653)))))))

(declare-fun lt!1878009 () Unit!128236)

(declare-fun lt!1878011 () Unit!128236)

(assert (=> b!4713569 (= lt!1878009 lt!1878011)))

(declare-fun lt!1878013 () (_ BitVec 64))

(declare-fun lt!1878014 () List!52843)

(assert (=> b!4713569 (contains!16035 (toList!5834 lm!2023) (tuple2!54285 lt!1878013 lt!1878014))))

(assert (=> b!4713569 (= lt!1878011 (lemmaGetValueImpliesTupleContained!343 lm!2023 lt!1878013 lt!1878014))))

(declare-fun e!2939843 () Bool)

(assert (=> b!4713569 e!2939843))

(declare-fun res!1992602 () Bool)

(assert (=> b!4713569 (=> (not res!1992602) (not e!2939843))))

(assert (=> b!4713569 (= res!1992602 (contains!16036 lm!2023 lt!1878013))))

(assert (=> b!4713569 (= lt!1878014 (apply!12421 lm!2023 (hash!4306 hashF!1323 key!4653)))))

(assert (=> b!4713569 (= lt!1878013 (hash!4306 hashF!1323 key!4653))))

(declare-fun lt!1878016 () Unit!128236)

(declare-fun lt!1878010 () Unit!128236)

(assert (=> b!4713569 (= lt!1878016 lt!1878010)))

(assert (=> b!4713569 (contains!16036 lm!2023 (hash!4306 hashF!1323 key!4653))))

(assert (=> b!4713569 (= lt!1878010 (lemmaInGenMapThenLongMapContainsHash!744 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4713570 () Bool)

(assert (=> b!4713570 (= e!2939843 (= (getValueByKey!1916 (toList!5834 lm!2023) lt!1878013) (Some!12295 lt!1878014)))))

(declare-fun b!4713568 () Bool)

(declare-fun res!1992603 () Bool)

(assert (=> b!4713568 (=> (not res!1992603) (not e!2939844))))

(assert (=> b!4713568 (= res!1992603 (contains!16037 (extractMap!1998 (toList!5834 lm!2023)) key!4653))))

(assert (= (and d!1499848 res!1992605) b!4713567))

(assert (= (and b!4713567 res!1992604) b!4713568))

(assert (= (and b!4713568 res!1992603) b!4713569))

(assert (= (and b!4713569 res!1992602) b!4713570))

(assert (=> b!4713567 m!5639599))

(declare-fun m!5640413 () Bool)

(assert (=> b!4713570 m!5640413))

(declare-fun m!5640415 () Bool)

(assert (=> b!4713569 m!5640415))

(declare-fun m!5640417 () Bool)

(assert (=> b!4713569 m!5640417))

(declare-fun m!5640419 () Bool)

(assert (=> b!4713569 m!5640419))

(assert (=> b!4713569 m!5639607))

(assert (=> b!4713569 m!5640331))

(assert (=> b!4713569 m!5639607))

(declare-fun m!5640421 () Bool)

(assert (=> b!4713569 m!5640421))

(assert (=> b!4713569 m!5639607))

(declare-fun m!5640423 () Bool)

(assert (=> b!4713569 m!5640423))

(assert (=> b!4713569 m!5640423))

(assert (=> b!4713569 m!5640417))

(declare-fun m!5640425 () Bool)

(assert (=> b!4713569 m!5640425))

(declare-fun m!5640427 () Bool)

(assert (=> b!4713569 m!5640427))

(assert (=> b!4713569 m!5639515))

(assert (=> b!4713568 m!5639587))

(assert (=> b!4713568 m!5639587))

(declare-fun m!5640429 () Bool)

(assert (=> b!4713568 m!5640429))

(declare-fun m!5640431 () Bool)

(assert (=> d!1499848 m!5640431))

(declare-fun m!5640433 () Bool)

(assert (=> d!1499848 m!5640433))

(assert (=> d!1499848 m!5640431))

(assert (=> b!4713167 d!1499848))

(declare-fun d!1499870 () Bool)

(assert (=> d!1499870 (containsKey!3289 oldBucket!34 key!4653)))

(declare-fun lt!1878019 () Unit!128236)

(declare-fun choose!33163 (List!52843 K!14080 Hashable!6341) Unit!128236)

(assert (=> d!1499870 (= lt!1878019 (choose!33163 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1499870 (noDuplicateKeys!1972 oldBucket!34)))

(assert (=> d!1499870 (= (lemmaGetPairDefinedThenContainsKey!286 oldBucket!34 key!4653 hashF!1323) lt!1878019)))

(declare-fun bs!1103081 () Bool)

(assert (= bs!1103081 d!1499870))

(assert (=> bs!1103081 m!5639529))

(declare-fun m!5640435 () Bool)

(assert (=> bs!1103081 m!5640435))

(assert (=> bs!1103081 m!5639601))

(assert (=> b!4713167 d!1499870))

(declare-fun d!1499872 () Bool)

(declare-fun res!1992610 () Bool)

(declare-fun e!2939856 () Bool)

(assert (=> d!1499872 (=> res!1992610 e!2939856)))

(assert (=> d!1499872 (= res!1992610 (and ((_ is Cons!52719) (t!360085 oldBucket!34)) (= (_1!30435 (h!59038 (t!360085 oldBucket!34))) key!4653)))))

(assert (=> d!1499872 (= (containsKey!3289 (t!360085 oldBucket!34) key!4653) e!2939856)))

(declare-fun b!4713586 () Bool)

(declare-fun e!2939857 () Bool)

(assert (=> b!4713586 (= e!2939856 e!2939857)))

(declare-fun res!1992611 () Bool)

(assert (=> b!4713586 (=> (not res!1992611) (not e!2939857))))

(assert (=> b!4713586 (= res!1992611 ((_ is Cons!52719) (t!360085 oldBucket!34)))))

(declare-fun b!4713587 () Bool)

(assert (=> b!4713587 (= e!2939857 (containsKey!3289 (t!360085 (t!360085 oldBucket!34)) key!4653))))

(assert (= (and d!1499872 (not res!1992610)) b!4713586))

(assert (= (and b!4713586 res!1992611) b!4713587))

(declare-fun m!5640437 () Bool)

(assert (=> b!4713587 m!5640437))

(assert (=> b!4713167 d!1499872))

(declare-fun d!1499874 () Bool)

(declare-fun res!1992612 () Bool)

(declare-fun e!2939858 () Bool)

(assert (=> d!1499874 (=> res!1992612 e!2939858)))

(assert (=> d!1499874 (= res!1992612 (and ((_ is Cons!52719) oldBucket!34) (= (_1!30435 (h!59038 oldBucket!34)) key!4653)))))

(assert (=> d!1499874 (= (containsKey!3289 oldBucket!34 key!4653) e!2939858)))

(declare-fun b!4713588 () Bool)

(declare-fun e!2939859 () Bool)

(assert (=> b!4713588 (= e!2939858 e!2939859)))

(declare-fun res!1992613 () Bool)

(assert (=> b!4713588 (=> (not res!1992613) (not e!2939859))))

(assert (=> b!4713588 (= res!1992613 ((_ is Cons!52719) oldBucket!34))))

(declare-fun b!4713589 () Bool)

(assert (=> b!4713589 (= e!2939859 (containsKey!3289 (t!360085 oldBucket!34) key!4653))))

(assert (= (and d!1499874 (not res!1992612)) b!4713588))

(assert (= (and b!4713588 res!1992613) b!4713589))

(assert (=> b!4713589 m!5639521))

(assert (=> b!4713167 d!1499874))

(declare-fun d!1499876 () Bool)

(assert (=> d!1499876 (contains!16035 (toList!5834 lm!2023) (tuple2!54285 lt!1877471 lt!1877475))))

(declare-fun lt!1878022 () Unit!128236)

(declare-fun choose!33164 (ListLongMap!4363 (_ BitVec 64) List!52843) Unit!128236)

(assert (=> d!1499876 (= lt!1878022 (choose!33164 lm!2023 lt!1877471 lt!1877475))))

(assert (=> d!1499876 (contains!16036 lm!2023 lt!1877471)))

(assert (=> d!1499876 (= (lemmaGetValueImpliesTupleContained!343 lm!2023 lt!1877471 lt!1877475) lt!1878022)))

(declare-fun bs!1103082 () Bool)

(assert (= bs!1103082 d!1499876))

(declare-fun m!5640439 () Bool)

(assert (=> bs!1103082 m!5640439))

(declare-fun m!5640441 () Bool)

(assert (=> bs!1103082 m!5640441))

(assert (=> bs!1103082 m!5639517))

(assert (=> b!4713167 d!1499876))

(declare-fun d!1499878 () Bool)

(assert (=> d!1499878 (= (isDefined!9546 (getPair!538 lt!1877475 key!4653)) (not (isEmpty!29155 (getPair!538 lt!1877475 key!4653))))))

(declare-fun bs!1103083 () Bool)

(assert (= bs!1103083 d!1499878))

(assert (=> bs!1103083 m!5639523))

(declare-fun m!5640443 () Bool)

(assert (=> bs!1103083 m!5640443))

(assert (=> b!4713167 d!1499878))

(declare-fun e!2939862 () Bool)

(declare-fun tp!1347732 () Bool)

(declare-fun b!4713595 () Bool)

(assert (=> b!4713595 (= e!2939862 (and tp_is_empty!31181 tp_is_empty!31183 tp!1347732))))

(assert (=> b!4713169 (= tp!1347717 e!2939862)))

(assert (= (and b!4713169 ((_ is Cons!52719) (t!360085 oldBucket!34))) b!4713595))

(declare-fun b!4713600 () Bool)

(declare-fun e!2939865 () Bool)

(declare-fun tp!1347737 () Bool)

(declare-fun tp!1347738 () Bool)

(assert (=> b!4713600 (= e!2939865 (and tp!1347737 tp!1347738))))

(assert (=> b!4713163 (= tp!1347718 e!2939865)))

(assert (= (and b!4713163 ((_ is Cons!52720) (toList!5834 lm!2023))) b!4713600))

(declare-fun b!4713601 () Bool)

(declare-fun tp!1347739 () Bool)

(declare-fun e!2939866 () Bool)

(assert (=> b!4713601 (= e!2939866 (and tp_is_empty!31181 tp_is_empty!31183 tp!1347739))))

(assert (=> b!4713178 (= tp!1347719 e!2939866)))

(assert (= (and b!4713178 ((_ is Cons!52719) (t!360085 newBucket!218))) b!4713601))

(declare-fun b_lambda!177721 () Bool)

(assert (= b_lambda!177715 (or start!479100 b_lambda!177721)))

(declare-fun bs!1103084 () Bool)

(declare-fun d!1499880 () Bool)

(assert (= bs!1103084 (and d!1499880 start!479100)))

(assert (=> bs!1103084 (= (dynLambda!21787 lambda!213273 lt!1877462) (noDuplicateKeys!1972 (_2!30436 lt!1877462)))))

(declare-fun m!5640445 () Bool)

(assert (=> bs!1103084 m!5640445))

(assert (=> d!1499832 d!1499880))

(declare-fun b_lambda!177723 () Bool)

(assert (= b_lambda!177713 (or start!479100 b_lambda!177723)))

(declare-fun bs!1103085 () Bool)

(declare-fun d!1499882 () Bool)

(assert (= bs!1103085 (and d!1499882 start!479100)))

(assert (=> bs!1103085 (= (dynLambda!21787 lambda!213273 (h!59039 (toList!5834 lm!2023))) (noDuplicateKeys!1972 (_2!30436 (h!59039 (toList!5834 lm!2023)))))))

(assert (=> bs!1103085 m!5639745))

(assert (=> b!4713453 d!1499882))

(check-sat (not b!4713210) (not d!1499738) (not bm!329532) (not b!4713387) (not d!1499876) (not b!4713211) (not b!4713349) (not d!1499810) (not d!1499764) (not b!4713466) (not d!1499840) (not b!4713348) (not b!4713291) (not d!1499798) (not b!4713601) (not b!4713447) (not b!4713300) (not d!1499714) (not d!1499878) (not b!4713529) (not b!4713587) (not d!1499870) (not bm!329521) (not b!4713347) (not b!4713292) (not d!1499836) (not d!1499724) (not d!1499846) (not b!4713204) (not bm!329536) (not bm!329522) (not b!4713340) (not b!4713307) (not b_lambda!177721) (not b!4713383) (not d!1499742) (not d!1499688) (not bm!329530) (not b!4713516) (not d!1499692) (not b!4713589) (not b!4713385) (not b!4713446) (not b!4713339) (not d!1499842) (not b!4713298) (not bm!329541) (not b!4713373) (not b!4713294) (not b!4713205) (not b!4713301) (not b!4713494) (not b!4713527) (not d!1499804) (not b!4713386) (not bm!329538) (not b!4713445) (not d!1499794) tp_is_empty!31181 (not d!1499712) (not d!1499726) (not bm!329540) (not b!4713467) (not b!4713567) (not d!1499830) (not d!1499760) (not d!1499822) (not bs!1103085) (not b!4713293) (not b!4713595) (not b!4713535) (not bm!329518) (not b!4713514) (not d!1499690) (not b!4713388) (not b!4713366) (not d!1499814) (not b!4713350) (not bm!329537) (not b!4713302) (not b!4713519) (not b!4713520) (not b!4713568) (not b!4713367) (not b!4713369) (not bm!329520) (not d!1499716) (not d!1499704) (not bm!329539) (not b!4713518) (not d!1499684) (not d!1499702) (not b!4713454) (not b!4713459) (not b!4713337) (not b!4713600) (not b!4713207) (not d!1499792) (not d!1499848) (not d!1499832) (not b!4713570) (not b!4713448) (not b!4713334) (not b!4713208) (not b!4713480) (not d!1499844) (not b!4713303) (not bs!1103084) (not b!4713465) (not b!4713371) (not b!4713370) (not b!4713372) (not b!4713209) (not bm!329542) (not bm!329523) (not d!1499766) (not bm!329499) (not d!1499680) (not bm!329519) (not b_lambda!177723) (not b!4713468) (not d!1499782) (not d!1499706) (not d!1499752) tp_is_empty!31183 (not bm!329531) (not d!1499820) (not d!1499788) (not b!4713229) (not b!4713569) (not b!4713305) (not b!4713217) (not b!4713333) (not b!4713338))
(check-sat)
