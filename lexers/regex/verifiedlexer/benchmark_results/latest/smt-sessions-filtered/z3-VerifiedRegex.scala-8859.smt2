; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!473244 () Bool)

(assert start!473244)

(declare-fun b!4684014 () Bool)

(declare-fun e!2922305 () Bool)

(declare-fun tp!1345410 () Bool)

(assert (=> b!4684014 (= e!2922305 tp!1345410)))

(declare-fun b!4684016 () Bool)

(declare-fun res!1974606 () Bool)

(declare-fun e!2922304 () Bool)

(assert (=> b!4684016 (=> res!1974606 e!2922304)))

(declare-datatypes ((K!13700 0))(
  ( (K!13701 (val!19231 Int)) )
))
(declare-datatypes ((V!13946 0))(
  ( (V!13947 (val!19232 Int)) )
))
(declare-datatypes ((tuple2!53674 0))(
  ( (tuple2!53675 (_1!30131 K!13700) (_2!30131 V!13946)) )
))
(declare-datatypes ((List!52445 0))(
  ( (Nil!52321) (Cons!52321 (h!58546 tuple2!53674) (t!359607 List!52445)) )
))
(declare-fun newBucket!218 () List!52445)

(declare-fun oldBucket!34 () List!52445)

(declare-fun key!4653 () K!13700)

(declare-fun removePairForKey!1415 (List!52445 K!13700) List!52445)

(declare-fun tail!8502 (List!52445) List!52445)

(assert (=> b!4684016 (= res!1974606 (not (= (removePairForKey!1415 (tail!8502 oldBucket!34) key!4653) (tail!8502 newBucket!218))))))

(declare-fun b!4684017 () Bool)

(declare-fun e!2922306 () Bool)

(assert (=> b!4684017 (= e!2922306 e!2922304)))

(declare-fun res!1974610 () Bool)

(assert (=> b!4684017 (=> res!1974610 e!2922304)))

(declare-fun containsKey!2979 (List!52445 K!13700) Bool)

(assert (=> b!4684017 (= res!1974610 (not (containsKey!2979 (t!359607 oldBucket!34) key!4653)))))

(assert (=> b!4684017 (containsKey!2979 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!123113 0))(
  ( (Unit!123114) )
))
(declare-fun lt!1843496 () Unit!123113)

(declare-datatypes ((Hashable!6189 0))(
  ( (HashableExt!6188 (__x!31892 Int)) )
))
(declare-fun hashF!1323 () Hashable!6189)

(declare-fun lemmaGetPairDefinedThenContainsKey!172 (List!52445 K!13700 Hashable!6189) Unit!123113)

(assert (=> b!4684017 (= lt!1843496 (lemmaGetPairDefinedThenContainsKey!172 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1843493 () List!52445)

(declare-datatypes ((Option!12003 0))(
  ( (None!12002) (Some!12002 (v!46377 tuple2!53674)) )
))
(declare-fun isDefined!9258 (Option!12003) Bool)

(declare-fun getPair!424 (List!52445 K!13700) Option!12003)

(assert (=> b!4684017 (isDefined!9258 (getPair!424 lt!1843493 key!4653))))

(declare-datatypes ((tuple2!53676 0))(
  ( (tuple2!53677 (_1!30132 (_ BitVec 64)) (_2!30132 List!52445)) )
))
(declare-datatypes ((List!52446 0))(
  ( (Nil!52322) (Cons!52322 (h!58547 tuple2!53676) (t!359608 List!52446)) )
))
(declare-datatypes ((ListLongMap!4059 0))(
  ( (ListLongMap!4060 (toList!5529 List!52446)) )
))
(declare-fun lm!2023 () ListLongMap!4059)

(declare-fun lambda!205555 () Int)

(declare-fun lt!1843492 () tuple2!53676)

(declare-fun lt!1843494 () Unit!123113)

(declare-fun forallContained!3374 (List!52446 Int tuple2!53676) Unit!123113)

(assert (=> b!4684017 (= lt!1843494 (forallContained!3374 (toList!5529 lm!2023) lambda!205555 lt!1843492))))

(declare-fun contains!15466 (List!52446 tuple2!53676) Bool)

(assert (=> b!4684017 (contains!15466 (toList!5529 lm!2023) lt!1843492)))

(declare-fun lt!1843488 () (_ BitVec 64))

(assert (=> b!4684017 (= lt!1843492 (tuple2!53677 lt!1843488 lt!1843493))))

(declare-fun lt!1843491 () Unit!123113)

(declare-fun lemmaGetValueImpliesTupleContained!229 (ListLongMap!4059 (_ BitVec 64) List!52445) Unit!123113)

(assert (=> b!4684017 (= lt!1843491 (lemmaGetValueImpliesTupleContained!229 lm!2023 lt!1843488 lt!1843493))))

(declare-fun apply!12303 (ListLongMap!4059 (_ BitVec 64)) List!52445)

(assert (=> b!4684017 (= lt!1843493 (apply!12303 lm!2023 lt!1843488))))

(declare-fun contains!15467 (ListLongMap!4059 (_ BitVec 64)) Bool)

(assert (=> b!4684017 (contains!15467 lm!2023 lt!1843488)))

(declare-fun lt!1843495 () Unit!123113)

(declare-fun lemmaInGenMapThenLongMapContainsHash!630 (ListLongMap!4059 K!13700 Hashable!6189) Unit!123113)

(assert (=> b!4684017 (= lt!1843495 (lemmaInGenMapThenLongMapContainsHash!630 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1843490 () Unit!123113)

(declare-fun lemmaInGenMapThenGetPairDefined!220 (ListLongMap!4059 K!13700 Hashable!6189) Unit!123113)

(assert (=> b!4684017 (= lt!1843490 (lemmaInGenMapThenGetPairDefined!220 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4684018 () Bool)

(declare-fun e!2922310 () Bool)

(declare-fun e!2922307 () Bool)

(assert (=> b!4684018 (= e!2922310 e!2922307)))

(declare-fun res!1974601 () Bool)

(assert (=> b!4684018 (=> (not res!1974601) (not e!2922307))))

(declare-datatypes ((ListMap!4893 0))(
  ( (ListMap!4894 (toList!5530 List!52445)) )
))
(declare-fun lt!1843489 () ListMap!4893)

(declare-fun contains!15468 (ListMap!4893 K!13700) Bool)

(assert (=> b!4684018 (= res!1974601 (contains!15468 lt!1843489 key!4653))))

(declare-fun extractMap!1846 (List!52446) ListMap!4893)

(assert (=> b!4684018 (= lt!1843489 (extractMap!1846 (toList!5529 lm!2023)))))

(declare-fun e!2922308 () Bool)

(declare-fun tp_is_empty!30573 () Bool)

(declare-fun b!4684019 () Bool)

(declare-fun tp!1345411 () Bool)

(declare-fun tp_is_empty!30575 () Bool)

(assert (=> b!4684019 (= e!2922308 (and tp_is_empty!30573 tp_is_empty!30575 tp!1345411))))

(declare-fun b!4684020 () Bool)

(declare-fun res!1974611 () Bool)

(declare-fun e!2922303 () Bool)

(assert (=> b!4684020 (=> (not res!1974611) (not e!2922303))))

(declare-fun allKeysSameHashInMap!1734 (ListLongMap!4059 Hashable!6189) Bool)

(assert (=> b!4684020 (= res!1974611 (allKeysSameHashInMap!1734 lm!2023 hashF!1323))))

(declare-fun b!4684021 () Bool)

(declare-fun e!2922302 () Bool)

(declare-fun tp!1345409 () Bool)

(assert (=> b!4684021 (= e!2922302 (and tp_is_empty!30573 tp_is_empty!30575 tp!1345409))))

(declare-fun b!4684022 () Bool)

(declare-fun res!1974608 () Bool)

(assert (=> b!4684022 (=> (not res!1974608) (not e!2922303))))

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun allKeysSameHash!1646 (List!52445 (_ BitVec 64) Hashable!6189) Bool)

(assert (=> b!4684022 (= res!1974608 (allKeysSameHash!1646 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4684023 () Bool)

(declare-fun res!1974600 () Bool)

(assert (=> b!4684023 (=> (not res!1974600) (not e!2922303))))

(get-info :version)

(assert (=> b!4684023 (= res!1974600 ((_ is Cons!52322) (toList!5529 lm!2023)))))

(declare-fun b!4684024 () Bool)

(declare-fun res!1974602 () Bool)

(assert (=> b!4684024 (=> (not res!1974602) (not e!2922310))))

(assert (=> b!4684024 (= res!1974602 (allKeysSameHash!1646 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4684025 () Bool)

(assert (=> b!4684025 (= e!2922303 (not e!2922306))))

(declare-fun res!1974605 () Bool)

(assert (=> b!4684025 (=> res!1974605 e!2922306)))

(assert (=> b!4684025 (= res!1974605 (or (and ((_ is Cons!52321) oldBucket!34) (= (_1!30131 (h!58546 oldBucket!34)) key!4653)) (not ((_ is Cons!52321) oldBucket!34)) (= (_1!30131 (h!58546 oldBucket!34)) key!4653)))))

(declare-fun e!2922309 () Bool)

(assert (=> b!4684025 e!2922309))

(declare-fun res!1974599 () Bool)

(assert (=> b!4684025 (=> (not res!1974599) (not e!2922309))))

(declare-fun tail!8503 (ListLongMap!4059) ListLongMap!4059)

(assert (=> b!4684025 (= res!1974599 (= (t!359608 (toList!5529 lm!2023)) (toList!5529 (tail!8503 lm!2023))))))

(declare-fun b!4684026 () Bool)

(assert (=> b!4684026 (= e!2922304 (not (= newBucket!218 Nil!52321)))))

(declare-fun res!1974597 () Bool)

(assert (=> start!473244 (=> (not res!1974597) (not e!2922310))))

(declare-fun forall!11267 (List!52446 Int) Bool)

(assert (=> start!473244 (= res!1974597 (forall!11267 (toList!5529 lm!2023) lambda!205555))))

(assert (=> start!473244 e!2922310))

(declare-fun inv!67574 (ListLongMap!4059) Bool)

(assert (=> start!473244 (and (inv!67574 lm!2023) e!2922305)))

(assert (=> start!473244 tp_is_empty!30573))

(assert (=> start!473244 e!2922308))

(assert (=> start!473244 true))

(assert (=> start!473244 e!2922302))

(declare-fun b!4684015 () Bool)

(declare-fun res!1974609 () Bool)

(assert (=> b!4684015 (=> (not res!1974609) (not e!2922310))))

(declare-fun noDuplicateKeys!1820 (List!52445) Bool)

(assert (=> b!4684015 (= res!1974609 (noDuplicateKeys!1820 oldBucket!34))))

(declare-fun b!4684027 () Bool)

(declare-fun addToMapMapFromBucket!1252 (List!52445 ListMap!4893) ListMap!4893)

(assert (=> b!4684027 (= e!2922309 (= lt!1843489 (addToMapMapFromBucket!1252 (_2!30132 (h!58547 (toList!5529 lm!2023))) (extractMap!1846 (t!359608 (toList!5529 lm!2023))))))))

(declare-fun b!4684028 () Bool)

(assert (=> b!4684028 (= e!2922307 e!2922303)))

(declare-fun res!1974603 () Bool)

(assert (=> b!4684028 (=> (not res!1974603) (not e!2922303))))

(assert (=> b!4684028 (= res!1974603 (= lt!1843488 hash!405))))

(declare-fun hash!4011 (Hashable!6189 K!13700) (_ BitVec 64))

(assert (=> b!4684028 (= lt!1843488 (hash!4011 hashF!1323 key!4653))))

(declare-fun b!4684029 () Bool)

(declare-fun res!1974598 () Bool)

(assert (=> b!4684029 (=> (not res!1974598) (not e!2922310))))

(assert (=> b!4684029 (= res!1974598 (noDuplicateKeys!1820 newBucket!218))))

(declare-fun b!4684030 () Bool)

(declare-fun res!1974604 () Bool)

(assert (=> b!4684030 (=> (not res!1974604) (not e!2922303))))

(declare-fun head!9914 (List!52446) tuple2!53676)

(assert (=> b!4684030 (= res!1974604 (= (head!9914 (toList!5529 lm!2023)) (tuple2!53677 hash!405 oldBucket!34)))))

(declare-fun b!4684031 () Bool)

(declare-fun res!1974607 () Bool)

(assert (=> b!4684031 (=> (not res!1974607) (not e!2922310))))

(assert (=> b!4684031 (= res!1974607 (= (removePairForKey!1415 oldBucket!34 key!4653) newBucket!218))))

(assert (= (and start!473244 res!1974597) b!4684015))

(assert (= (and b!4684015 res!1974609) b!4684029))

(assert (= (and b!4684029 res!1974598) b!4684031))

(assert (= (and b!4684031 res!1974607) b!4684024))

(assert (= (and b!4684024 res!1974602) b!4684018))

(assert (= (and b!4684018 res!1974601) b!4684028))

(assert (= (and b!4684028 res!1974603) b!4684022))

(assert (= (and b!4684022 res!1974608) b!4684020))

(assert (= (and b!4684020 res!1974611) b!4684030))

(assert (= (and b!4684030 res!1974604) b!4684023))

(assert (= (and b!4684023 res!1974600) b!4684025))

(assert (= (and b!4684025 res!1974599) b!4684027))

(assert (= (and b!4684025 (not res!1974605)) b!4684017))

(assert (= (and b!4684017 (not res!1974610)) b!4684016))

(assert (= (and b!4684016 (not res!1974606)) b!4684026))

(assert (= start!473244 b!4684014))

(assert (= (and start!473244 ((_ is Cons!52321) oldBucket!34)) b!4684019))

(assert (= (and start!473244 ((_ is Cons!52321) newBucket!218)) b!4684021))

(declare-fun m!5582585 () Bool)

(assert (=> b!4684016 m!5582585))

(assert (=> b!4684016 m!5582585))

(declare-fun m!5582587 () Bool)

(assert (=> b!4684016 m!5582587))

(declare-fun m!5582589 () Bool)

(assert (=> b!4684016 m!5582589))

(declare-fun m!5582591 () Bool)

(assert (=> b!4684027 m!5582591))

(assert (=> b!4684027 m!5582591))

(declare-fun m!5582593 () Bool)

(assert (=> b!4684027 m!5582593))

(declare-fun m!5582595 () Bool)

(assert (=> b!4684025 m!5582595))

(declare-fun m!5582597 () Bool)

(assert (=> b!4684029 m!5582597))

(declare-fun m!5582599 () Bool)

(assert (=> b!4684030 m!5582599))

(declare-fun m!5582601 () Bool)

(assert (=> b!4684022 m!5582601))

(declare-fun m!5582603 () Bool)

(assert (=> b!4684024 m!5582603))

(declare-fun m!5582605 () Bool)

(assert (=> b!4684020 m!5582605))

(declare-fun m!5582607 () Bool)

(assert (=> b!4684018 m!5582607))

(declare-fun m!5582609 () Bool)

(assert (=> b!4684018 m!5582609))

(declare-fun m!5582611 () Bool)

(assert (=> start!473244 m!5582611))

(declare-fun m!5582613 () Bool)

(assert (=> start!473244 m!5582613))

(declare-fun m!5582615 () Bool)

(assert (=> b!4684017 m!5582615))

(declare-fun m!5582617 () Bool)

(assert (=> b!4684017 m!5582617))

(declare-fun m!5582619 () Bool)

(assert (=> b!4684017 m!5582619))

(declare-fun m!5582621 () Bool)

(assert (=> b!4684017 m!5582621))

(declare-fun m!5582623 () Bool)

(assert (=> b!4684017 m!5582623))

(declare-fun m!5582625 () Bool)

(assert (=> b!4684017 m!5582625))

(declare-fun m!5582627 () Bool)

(assert (=> b!4684017 m!5582627))

(declare-fun m!5582629 () Bool)

(assert (=> b!4684017 m!5582629))

(declare-fun m!5582631 () Bool)

(assert (=> b!4684017 m!5582631))

(assert (=> b!4684017 m!5582631))

(declare-fun m!5582633 () Bool)

(assert (=> b!4684017 m!5582633))

(declare-fun m!5582635 () Bool)

(assert (=> b!4684017 m!5582635))

(declare-fun m!5582637 () Bool)

(assert (=> b!4684017 m!5582637))

(declare-fun m!5582639 () Bool)

(assert (=> b!4684031 m!5582639))

(declare-fun m!5582641 () Bool)

(assert (=> b!4684015 m!5582641))

(declare-fun m!5582643 () Bool)

(assert (=> b!4684028 m!5582643))

(check-sat tp_is_empty!30573 (not b!4684016) (not b!4684015) (not b!4684027) (not b!4684020) (not b!4684018) (not b!4684028) (not b!4684024) (not b!4684019) (not b!4684017) (not b!4684029) (not b!4684030) (not b!4684022) (not b!4684031) (not start!473244) tp_is_empty!30575 (not b!4684025) (not b!4684021) (not b!4684014))
(check-sat)
(get-model)

(declare-fun d!1488620 () Bool)

(assert (=> d!1488620 (= (head!9914 (toList!5529 lm!2023)) (h!58547 (toList!5529 lm!2023)))))

(assert (=> b!4684030 d!1488620))

(declare-fun d!1488622 () Bool)

(declare-fun hash!4013 (Hashable!6189 K!13700) (_ BitVec 64))

(assert (=> d!1488622 (= (hash!4011 hashF!1323 key!4653) (hash!4013 hashF!1323 key!4653))))

(declare-fun bs!1083856 () Bool)

(assert (= bs!1083856 d!1488622))

(declare-fun m!5582645 () Bool)

(assert (=> bs!1083856 m!5582645))

(assert (=> b!4684028 d!1488622))

(declare-fun b!4684056 () Bool)

(declare-fun e!2922330 () Unit!123113)

(declare-fun Unit!123127 () Unit!123113)

(assert (=> b!4684056 (= e!2922330 Unit!123127)))

(declare-fun b!4684057 () Bool)

(declare-fun e!2922333 () Bool)

(declare-fun e!2922334 () Bool)

(assert (=> b!4684057 (= e!2922333 e!2922334)))

(declare-fun res!1974625 () Bool)

(assert (=> b!4684057 (=> (not res!1974625) (not e!2922334))))

(declare-datatypes ((Option!12005 0))(
  ( (None!12004) (Some!12004 (v!46383 V!13946)) )
))
(declare-fun isDefined!9260 (Option!12005) Bool)

(declare-fun getValueByKey!1739 (List!52445 K!13700) Option!12005)

(assert (=> b!4684057 (= res!1974625 (isDefined!9260 (getValueByKey!1739 (toList!5530 lt!1843489) key!4653)))))

(declare-fun bm!327353 () Bool)

(declare-fun call!327358 () Bool)

(declare-datatypes ((List!52448 0))(
  ( (Nil!52324) (Cons!52324 (h!58551 K!13700) (t!359610 List!52448)) )
))
(declare-fun e!2922332 () List!52448)

(declare-fun contains!15470 (List!52448 K!13700) Bool)

(assert (=> bm!327353 (= call!327358 (contains!15470 e!2922332 key!4653))))

(declare-fun c!801048 () Bool)

(declare-fun c!801050 () Bool)

(assert (=> bm!327353 (= c!801048 c!801050)))

(declare-fun b!4684058 () Bool)

(declare-fun keys!18659 (ListMap!4893) List!52448)

(assert (=> b!4684058 (= e!2922334 (contains!15470 (keys!18659 lt!1843489) key!4653))))

(declare-fun b!4684059 () Bool)

(declare-fun e!2922329 () Unit!123113)

(assert (=> b!4684059 (= e!2922329 e!2922330)))

(declare-fun c!801049 () Bool)

(assert (=> b!4684059 (= c!801049 call!327358)))

(declare-fun d!1488624 () Bool)

(assert (=> d!1488624 e!2922333))

(declare-fun res!1974624 () Bool)

(assert (=> d!1488624 (=> res!1974624 e!2922333)))

(declare-fun e!2922331 () Bool)

(assert (=> d!1488624 (= res!1974624 e!2922331)))

(declare-fun res!1974626 () Bool)

(assert (=> d!1488624 (=> (not res!1974626) (not e!2922331))))

(declare-fun lt!1843519 () Bool)

(assert (=> d!1488624 (= res!1974626 (not lt!1843519))))

(declare-fun lt!1843516 () Bool)

(assert (=> d!1488624 (= lt!1843519 lt!1843516)))

(declare-fun lt!1843518 () Unit!123113)

(assert (=> d!1488624 (= lt!1843518 e!2922329)))

(assert (=> d!1488624 (= c!801050 lt!1843516)))

(declare-fun containsKey!2981 (List!52445 K!13700) Bool)

(assert (=> d!1488624 (= lt!1843516 (containsKey!2981 (toList!5530 lt!1843489) key!4653))))

(assert (=> d!1488624 (= (contains!15468 lt!1843489 key!4653) lt!1843519)))

(declare-fun b!4684060 () Bool)

(declare-fun getKeysList!830 (List!52445) List!52448)

(assert (=> b!4684060 (= e!2922332 (getKeysList!830 (toList!5530 lt!1843489)))))

(declare-fun b!4684061 () Bool)

(assert (=> b!4684061 false))

(declare-fun lt!1843513 () Unit!123113)

(declare-fun lt!1843517 () Unit!123113)

(assert (=> b!4684061 (= lt!1843513 lt!1843517)))

(assert (=> b!4684061 (containsKey!2981 (toList!5530 lt!1843489) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!829 (List!52445 K!13700) Unit!123113)

(assert (=> b!4684061 (= lt!1843517 (lemmaInGetKeysListThenContainsKey!829 (toList!5530 lt!1843489) key!4653))))

(declare-fun Unit!123129 () Unit!123113)

(assert (=> b!4684061 (= e!2922330 Unit!123129)))

(declare-fun b!4684062 () Bool)

(assert (=> b!4684062 (= e!2922331 (not (contains!15470 (keys!18659 lt!1843489) key!4653)))))

(declare-fun b!4684063 () Bool)

(assert (=> b!4684063 (= e!2922332 (keys!18659 lt!1843489))))

(declare-fun b!4684064 () Bool)

(declare-fun lt!1843520 () Unit!123113)

(assert (=> b!4684064 (= e!2922329 lt!1843520)))

(declare-fun lt!1843515 () Unit!123113)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1631 (List!52445 K!13700) Unit!123113)

(assert (=> b!4684064 (= lt!1843515 (lemmaContainsKeyImpliesGetValueByKeyDefined!1631 (toList!5530 lt!1843489) key!4653))))

(assert (=> b!4684064 (isDefined!9260 (getValueByKey!1739 (toList!5530 lt!1843489) key!4653))))

(declare-fun lt!1843514 () Unit!123113)

(assert (=> b!4684064 (= lt!1843514 lt!1843515)))

(declare-fun lemmaInListThenGetKeysListContains!825 (List!52445 K!13700) Unit!123113)

(assert (=> b!4684064 (= lt!1843520 (lemmaInListThenGetKeysListContains!825 (toList!5530 lt!1843489) key!4653))))

(assert (=> b!4684064 call!327358))

(assert (= (and d!1488624 c!801050) b!4684064))

(assert (= (and d!1488624 (not c!801050)) b!4684059))

(assert (= (and b!4684059 c!801049) b!4684061))

(assert (= (and b!4684059 (not c!801049)) b!4684056))

(assert (= (or b!4684064 b!4684059) bm!327353))

(assert (= (and bm!327353 c!801048) b!4684060))

(assert (= (and bm!327353 (not c!801048)) b!4684063))

(assert (= (and d!1488624 res!1974626) b!4684062))

(assert (= (and d!1488624 (not res!1974624)) b!4684057))

(assert (= (and b!4684057 res!1974625) b!4684058))

(declare-fun m!5582655 () Bool)

(assert (=> b!4684061 m!5582655))

(declare-fun m!5582657 () Bool)

(assert (=> b!4684061 m!5582657))

(declare-fun m!5582659 () Bool)

(assert (=> b!4684058 m!5582659))

(assert (=> b!4684058 m!5582659))

(declare-fun m!5582661 () Bool)

(assert (=> b!4684058 m!5582661))

(declare-fun m!5582663 () Bool)

(assert (=> b!4684057 m!5582663))

(assert (=> b!4684057 m!5582663))

(declare-fun m!5582665 () Bool)

(assert (=> b!4684057 m!5582665))

(declare-fun m!5582667 () Bool)

(assert (=> b!4684064 m!5582667))

(assert (=> b!4684064 m!5582663))

(assert (=> b!4684064 m!5582663))

(assert (=> b!4684064 m!5582665))

(declare-fun m!5582669 () Bool)

(assert (=> b!4684064 m!5582669))

(declare-fun m!5582671 () Bool)

(assert (=> b!4684060 m!5582671))

(assert (=> b!4684062 m!5582659))

(assert (=> b!4684062 m!5582659))

(assert (=> b!4684062 m!5582661))

(assert (=> b!4684063 m!5582659))

(declare-fun m!5582673 () Bool)

(assert (=> bm!327353 m!5582673))

(assert (=> d!1488624 m!5582655))

(assert (=> b!4684018 d!1488624))

(declare-fun bs!1083859 () Bool)

(declare-fun d!1488634 () Bool)

(assert (= bs!1083859 (and d!1488634 start!473244)))

(declare-fun lambda!205560 () Int)

(assert (=> bs!1083859 (= lambda!205560 lambda!205555)))

(declare-fun lt!1843549 () ListMap!4893)

(declare-fun invariantList!1390 (List!52445) Bool)

(assert (=> d!1488634 (invariantList!1390 (toList!5530 lt!1843549))))

(declare-fun e!2922356 () ListMap!4893)

(assert (=> d!1488634 (= lt!1843549 e!2922356)))

(declare-fun c!801063 () Bool)

(assert (=> d!1488634 (= c!801063 ((_ is Cons!52322) (toList!5529 lm!2023)))))

(assert (=> d!1488634 (forall!11267 (toList!5529 lm!2023) lambda!205560)))

(assert (=> d!1488634 (= (extractMap!1846 (toList!5529 lm!2023)) lt!1843549)))

(declare-fun b!4684100 () Bool)

(assert (=> b!4684100 (= e!2922356 (addToMapMapFromBucket!1252 (_2!30132 (h!58547 (toList!5529 lm!2023))) (extractMap!1846 (t!359608 (toList!5529 lm!2023)))))))

(declare-fun b!4684101 () Bool)

(assert (=> b!4684101 (= e!2922356 (ListMap!4894 Nil!52321))))

(assert (= (and d!1488634 c!801063) b!4684100))

(assert (= (and d!1488634 (not c!801063)) b!4684101))

(declare-fun m!5582695 () Bool)

(assert (=> d!1488634 m!5582695))

(declare-fun m!5582697 () Bool)

(assert (=> d!1488634 m!5582697))

(assert (=> b!4684100 m!5582591))

(assert (=> b!4684100 m!5582591))

(assert (=> b!4684100 m!5582593))

(assert (=> b!4684018 d!1488634))

(declare-fun d!1488638 () Bool)

(declare-fun res!1974640 () Bool)

(declare-fun e!2922363 () Bool)

(assert (=> d!1488638 (=> res!1974640 e!2922363)))

(assert (=> d!1488638 (= res!1974640 (not ((_ is Cons!52321) newBucket!218)))))

(assert (=> d!1488638 (= (noDuplicateKeys!1820 newBucket!218) e!2922363)))

(declare-fun b!4684108 () Bool)

(declare-fun e!2922364 () Bool)

(assert (=> b!4684108 (= e!2922363 e!2922364)))

(declare-fun res!1974641 () Bool)

(assert (=> b!4684108 (=> (not res!1974641) (not e!2922364))))

(assert (=> b!4684108 (= res!1974641 (not (containsKey!2979 (t!359607 newBucket!218) (_1!30131 (h!58546 newBucket!218)))))))

(declare-fun b!4684109 () Bool)

(assert (=> b!4684109 (= e!2922364 (noDuplicateKeys!1820 (t!359607 newBucket!218)))))

(assert (= (and d!1488638 (not res!1974640)) b!4684108))

(assert (= (and b!4684108 res!1974641) b!4684109))

(declare-fun m!5582703 () Bool)

(assert (=> b!4684108 m!5582703))

(declare-fun m!5582705 () Bool)

(assert (=> b!4684109 m!5582705))

(assert (=> b!4684029 d!1488638))

(declare-fun d!1488642 () Bool)

(declare-fun lt!1843553 () List!52445)

(assert (=> d!1488642 (not (containsKey!2979 lt!1843553 key!4653))))

(declare-fun e!2922369 () List!52445)

(assert (=> d!1488642 (= lt!1843553 e!2922369)))

(declare-fun c!801071 () Bool)

(assert (=> d!1488642 (= c!801071 (and ((_ is Cons!52321) (tail!8502 oldBucket!34)) (= (_1!30131 (h!58546 (tail!8502 oldBucket!34))) key!4653)))))

(assert (=> d!1488642 (noDuplicateKeys!1820 (tail!8502 oldBucket!34))))

(assert (=> d!1488642 (= (removePairForKey!1415 (tail!8502 oldBucket!34) key!4653) lt!1843553)))

(declare-fun b!4684118 () Bool)

(assert (=> b!4684118 (= e!2922369 (t!359607 (tail!8502 oldBucket!34)))))

(declare-fun b!4684120 () Bool)

(declare-fun e!2922370 () List!52445)

(assert (=> b!4684120 (= e!2922370 (Cons!52321 (h!58546 (tail!8502 oldBucket!34)) (removePairForKey!1415 (t!359607 (tail!8502 oldBucket!34)) key!4653)))))

(declare-fun b!4684119 () Bool)

(assert (=> b!4684119 (= e!2922369 e!2922370)))

(declare-fun c!801070 () Bool)

(assert (=> b!4684119 (= c!801070 ((_ is Cons!52321) (tail!8502 oldBucket!34)))))

(declare-fun b!4684121 () Bool)

(assert (=> b!4684121 (= e!2922370 Nil!52321)))

(assert (= (and d!1488642 c!801071) b!4684118))

(assert (= (and d!1488642 (not c!801071)) b!4684119))

(assert (= (and b!4684119 c!801070) b!4684120))

(assert (= (and b!4684119 (not c!801070)) b!4684121))

(declare-fun m!5582707 () Bool)

(assert (=> d!1488642 m!5582707))

(assert (=> d!1488642 m!5582585))

(declare-fun m!5582709 () Bool)

(assert (=> d!1488642 m!5582709))

(declare-fun m!5582711 () Bool)

(assert (=> b!4684120 m!5582711))

(assert (=> b!4684016 d!1488642))

(declare-fun d!1488644 () Bool)

(assert (=> d!1488644 (= (tail!8502 oldBucket!34) (t!359607 oldBucket!34))))

(assert (=> b!4684016 d!1488644))

(declare-fun d!1488646 () Bool)

(assert (=> d!1488646 (= (tail!8502 newBucket!218) (t!359607 newBucket!218))))

(assert (=> b!4684016 d!1488646))

(declare-fun b!4684187 () Bool)

(assert (=> b!4684187 true))

(declare-fun bs!1083877 () Bool)

(declare-fun b!4684185 () Bool)

(assert (= bs!1083877 (and b!4684185 b!4684187)))

(declare-fun lambda!205630 () Int)

(declare-fun lambda!205629 () Int)

(assert (=> bs!1083877 (= lambda!205630 lambda!205629)))

(assert (=> b!4684185 true))

(declare-fun lambda!205631 () Int)

(declare-fun lt!1843685 () ListMap!4893)

(assert (=> bs!1083877 (= (= lt!1843685 (extractMap!1846 (t!359608 (toList!5529 lm!2023)))) (= lambda!205631 lambda!205629))))

(assert (=> b!4684185 (= (= lt!1843685 (extractMap!1846 (t!359608 (toList!5529 lm!2023)))) (= lambda!205631 lambda!205630))))

(assert (=> b!4684185 true))

(declare-fun bs!1083878 () Bool)

(declare-fun d!1488648 () Bool)

(assert (= bs!1083878 (and d!1488648 b!4684187)))

(declare-fun lambda!205632 () Int)

(declare-fun lt!1843702 () ListMap!4893)

(assert (=> bs!1083878 (= (= lt!1843702 (extractMap!1846 (t!359608 (toList!5529 lm!2023)))) (= lambda!205632 lambda!205629))))

(declare-fun bs!1083879 () Bool)

(assert (= bs!1083879 (and d!1488648 b!4684185)))

(assert (=> bs!1083879 (= (= lt!1843702 (extractMap!1846 (t!359608 (toList!5529 lm!2023)))) (= lambda!205632 lambda!205630))))

(assert (=> bs!1083879 (= (= lt!1843702 lt!1843685) (= lambda!205632 lambda!205631))))

(assert (=> d!1488648 true))

(declare-fun e!2922407 () Bool)

(assert (=> d!1488648 e!2922407))

(declare-fun res!1974668 () Bool)

(assert (=> d!1488648 (=> (not res!1974668) (not e!2922407))))

(declare-fun forall!11269 (List!52445 Int) Bool)

(assert (=> d!1488648 (= res!1974668 (forall!11269 (_2!30132 (h!58547 (toList!5529 lm!2023))) lambda!205632))))

(declare-fun e!2922406 () ListMap!4893)

(assert (=> d!1488648 (= lt!1843702 e!2922406)))

(declare-fun c!801087 () Bool)

(assert (=> d!1488648 (= c!801087 ((_ is Nil!52321) (_2!30132 (h!58547 (toList!5529 lm!2023)))))))

(assert (=> d!1488648 (noDuplicateKeys!1820 (_2!30132 (h!58547 (toList!5529 lm!2023))))))

(assert (=> d!1488648 (= (addToMapMapFromBucket!1252 (_2!30132 (h!58547 (toList!5529 lm!2023))) (extractMap!1846 (t!359608 (toList!5529 lm!2023)))) lt!1843702)))

(declare-fun b!4684183 () Bool)

(declare-fun e!2922405 () Bool)

(assert (=> b!4684183 (= e!2922405 (forall!11269 (toList!5530 (extractMap!1846 (t!359608 (toList!5529 lm!2023)))) lambda!205631))))

(declare-fun b!4684184 () Bool)

(declare-fun res!1974666 () Bool)

(assert (=> b!4684184 (=> (not res!1974666) (not e!2922407))))

(assert (=> b!4684184 (= res!1974666 (forall!11269 (toList!5530 (extractMap!1846 (t!359608 (toList!5529 lm!2023)))) lambda!205632))))

(declare-fun bm!327372 () Bool)

(declare-fun lt!1843684 () ListMap!4893)

(declare-fun call!327378 () Bool)

(assert (=> bm!327372 (= call!327378 (forall!11269 (ite c!801087 (toList!5530 (extractMap!1846 (t!359608 (toList!5529 lm!2023)))) (toList!5530 lt!1843684)) (ite c!801087 lambda!205629 lambda!205631)))))

(declare-fun bm!327373 () Bool)

(declare-fun call!327379 () Bool)

(assert (=> bm!327373 (= call!327379 (forall!11269 (toList!5530 (extractMap!1846 (t!359608 (toList!5529 lm!2023)))) (ite c!801087 lambda!205629 lambda!205630)))))

(declare-fun bm!327374 () Bool)

(declare-fun call!327377 () Unit!123113)

(declare-fun lemmaContainsAllItsOwnKeys!678 (ListMap!4893) Unit!123113)

(assert (=> bm!327374 (= call!327377 (lemmaContainsAllItsOwnKeys!678 (extractMap!1846 (t!359608 (toList!5529 lm!2023)))))))

(assert (=> b!4684185 (= e!2922406 lt!1843685)))

(declare-fun +!2112 (ListMap!4893 tuple2!53674) ListMap!4893)

(assert (=> b!4684185 (= lt!1843684 (+!2112 (extractMap!1846 (t!359608 (toList!5529 lm!2023))) (h!58546 (_2!30132 (h!58547 (toList!5529 lm!2023))))))))

(assert (=> b!4684185 (= lt!1843685 (addToMapMapFromBucket!1252 (t!359607 (_2!30132 (h!58547 (toList!5529 lm!2023)))) (+!2112 (extractMap!1846 (t!359608 (toList!5529 lm!2023))) (h!58546 (_2!30132 (h!58547 (toList!5529 lm!2023)))))))))

(declare-fun lt!1843704 () Unit!123113)

(assert (=> b!4684185 (= lt!1843704 call!327377)))

(assert (=> b!4684185 call!327379))

(declare-fun lt!1843693 () Unit!123113)

(assert (=> b!4684185 (= lt!1843693 lt!1843704)))

(assert (=> b!4684185 (forall!11269 (toList!5530 lt!1843684) lambda!205631)))

(declare-fun lt!1843687 () Unit!123113)

(declare-fun Unit!123131 () Unit!123113)

(assert (=> b!4684185 (= lt!1843687 Unit!123131)))

(assert (=> b!4684185 (forall!11269 (t!359607 (_2!30132 (h!58547 (toList!5529 lm!2023)))) lambda!205631)))

(declare-fun lt!1843697 () Unit!123113)

(declare-fun Unit!123132 () Unit!123113)

(assert (=> b!4684185 (= lt!1843697 Unit!123132)))

(declare-fun lt!1843695 () Unit!123113)

(declare-fun Unit!123133 () Unit!123113)

(assert (=> b!4684185 (= lt!1843695 Unit!123133)))

(declare-fun lt!1843698 () Unit!123113)

(declare-fun forallContained!3376 (List!52445 Int tuple2!53674) Unit!123113)

(assert (=> b!4684185 (= lt!1843698 (forallContained!3376 (toList!5530 lt!1843684) lambda!205631 (h!58546 (_2!30132 (h!58547 (toList!5529 lm!2023))))))))

(assert (=> b!4684185 (contains!15468 lt!1843684 (_1!30131 (h!58546 (_2!30132 (h!58547 (toList!5529 lm!2023))))))))

(declare-fun lt!1843694 () Unit!123113)

(declare-fun Unit!123134 () Unit!123113)

(assert (=> b!4684185 (= lt!1843694 Unit!123134)))

(assert (=> b!4684185 (contains!15468 lt!1843685 (_1!30131 (h!58546 (_2!30132 (h!58547 (toList!5529 lm!2023))))))))

(declare-fun lt!1843700 () Unit!123113)

(declare-fun Unit!123135 () Unit!123113)

(assert (=> b!4684185 (= lt!1843700 Unit!123135)))

(assert (=> b!4684185 (forall!11269 (_2!30132 (h!58547 (toList!5529 lm!2023))) lambda!205631)))

(declare-fun lt!1843688 () Unit!123113)

(declare-fun Unit!123136 () Unit!123113)

(assert (=> b!4684185 (= lt!1843688 Unit!123136)))

(assert (=> b!4684185 call!327378))

(declare-fun lt!1843701 () Unit!123113)

(declare-fun Unit!123137 () Unit!123113)

(assert (=> b!4684185 (= lt!1843701 Unit!123137)))

(declare-fun lt!1843689 () Unit!123113)

(declare-fun Unit!123138 () Unit!123113)

(assert (=> b!4684185 (= lt!1843689 Unit!123138)))

(declare-fun lt!1843691 () Unit!123113)

(declare-fun addForallContainsKeyThenBeforeAdding!677 (ListMap!4893 ListMap!4893 K!13700 V!13946) Unit!123113)

(assert (=> b!4684185 (= lt!1843691 (addForallContainsKeyThenBeforeAdding!677 (extractMap!1846 (t!359608 (toList!5529 lm!2023))) lt!1843685 (_1!30131 (h!58546 (_2!30132 (h!58547 (toList!5529 lm!2023))))) (_2!30131 (h!58546 (_2!30132 (h!58547 (toList!5529 lm!2023)))))))))

(assert (=> b!4684185 (forall!11269 (toList!5530 (extractMap!1846 (t!359608 (toList!5529 lm!2023)))) lambda!205631)))

(declare-fun lt!1843690 () Unit!123113)

(assert (=> b!4684185 (= lt!1843690 lt!1843691)))

(assert (=> b!4684185 (forall!11269 (toList!5530 (extractMap!1846 (t!359608 (toList!5529 lm!2023)))) lambda!205631)))

(declare-fun lt!1843703 () Unit!123113)

(declare-fun Unit!123139 () Unit!123113)

(assert (=> b!4684185 (= lt!1843703 Unit!123139)))

(declare-fun res!1974667 () Bool)

(assert (=> b!4684185 (= res!1974667 (forall!11269 (_2!30132 (h!58547 (toList!5529 lm!2023))) lambda!205631))))

(assert (=> b!4684185 (=> (not res!1974667) (not e!2922405))))

(assert (=> b!4684185 e!2922405))

(declare-fun lt!1843699 () Unit!123113)

(declare-fun Unit!123140 () Unit!123113)

(assert (=> b!4684185 (= lt!1843699 Unit!123140)))

(declare-fun b!4684186 () Bool)

(assert (=> b!4684186 (= e!2922407 (invariantList!1390 (toList!5530 lt!1843702)))))

(assert (=> b!4684187 (= e!2922406 (extractMap!1846 (t!359608 (toList!5529 lm!2023))))))

(declare-fun lt!1843686 () Unit!123113)

(assert (=> b!4684187 (= lt!1843686 call!327377)))

(assert (=> b!4684187 call!327379))

(declare-fun lt!1843696 () Unit!123113)

(assert (=> b!4684187 (= lt!1843696 lt!1843686)))

(assert (=> b!4684187 call!327378))

(declare-fun lt!1843692 () Unit!123113)

(declare-fun Unit!123141 () Unit!123113)

(assert (=> b!4684187 (= lt!1843692 Unit!123141)))

(assert (= (and d!1488648 c!801087) b!4684187))

(assert (= (and d!1488648 (not c!801087)) b!4684185))

(assert (= (and b!4684185 res!1974667) b!4684183))

(assert (= (or b!4684187 b!4684185) bm!327374))

(assert (= (or b!4684187 b!4684185) bm!327373))

(assert (= (or b!4684187 b!4684185) bm!327372))

(assert (= (and d!1488648 res!1974668) b!4684184))

(assert (= (and b!4684184 res!1974666) b!4684186))

(declare-fun m!5582791 () Bool)

(assert (=> bm!327372 m!5582791))

(declare-fun m!5582793 () Bool)

(assert (=> bm!327373 m!5582793))

(assert (=> bm!327374 m!5582591))

(declare-fun m!5582795 () Bool)

(assert (=> bm!327374 m!5582795))

(declare-fun m!5582797 () Bool)

(assert (=> b!4684184 m!5582797))

(declare-fun m!5582799 () Bool)

(assert (=> d!1488648 m!5582799))

(declare-fun m!5582801 () Bool)

(assert (=> d!1488648 m!5582801))

(declare-fun m!5582803 () Bool)

(assert (=> b!4684185 m!5582803))

(declare-fun m!5582805 () Bool)

(assert (=> b!4684185 m!5582805))

(declare-fun m!5582807 () Bool)

(assert (=> b!4684185 m!5582807))

(assert (=> b!4684185 m!5582591))

(declare-fun m!5582809 () Bool)

(assert (=> b!4684185 m!5582809))

(declare-fun m!5582811 () Bool)

(assert (=> b!4684185 m!5582811))

(declare-fun m!5582813 () Bool)

(assert (=> b!4684185 m!5582813))

(declare-fun m!5582815 () Bool)

(assert (=> b!4684185 m!5582815))

(assert (=> b!4684185 m!5582807))

(assert (=> b!4684185 m!5582809))

(declare-fun m!5582817 () Bool)

(assert (=> b!4684185 m!5582817))

(declare-fun m!5582819 () Bool)

(assert (=> b!4684185 m!5582819))

(assert (=> b!4684185 m!5582591))

(declare-fun m!5582821 () Bool)

(assert (=> b!4684185 m!5582821))

(assert (=> b!4684185 m!5582811))

(assert (=> b!4684183 m!5582807))

(declare-fun m!5582823 () Bool)

(assert (=> b!4684186 m!5582823))

(assert (=> b!4684027 d!1488648))

(declare-fun bs!1083880 () Bool)

(declare-fun d!1488674 () Bool)

(assert (= bs!1083880 (and d!1488674 start!473244)))

(declare-fun lambda!205633 () Int)

(assert (=> bs!1083880 (= lambda!205633 lambda!205555)))

(declare-fun bs!1083881 () Bool)

(assert (= bs!1083881 (and d!1488674 d!1488634)))

(assert (=> bs!1083881 (= lambda!205633 lambda!205560)))

(declare-fun lt!1843705 () ListMap!4893)

(assert (=> d!1488674 (invariantList!1390 (toList!5530 lt!1843705))))

(declare-fun e!2922408 () ListMap!4893)

(assert (=> d!1488674 (= lt!1843705 e!2922408)))

(declare-fun c!801088 () Bool)

(assert (=> d!1488674 (= c!801088 ((_ is Cons!52322) (t!359608 (toList!5529 lm!2023))))))

(assert (=> d!1488674 (forall!11267 (t!359608 (toList!5529 lm!2023)) lambda!205633)))

(assert (=> d!1488674 (= (extractMap!1846 (t!359608 (toList!5529 lm!2023))) lt!1843705)))

(declare-fun b!4684190 () Bool)

(assert (=> b!4684190 (= e!2922408 (addToMapMapFromBucket!1252 (_2!30132 (h!58547 (t!359608 (toList!5529 lm!2023)))) (extractMap!1846 (t!359608 (t!359608 (toList!5529 lm!2023))))))))

(declare-fun b!4684191 () Bool)

(assert (=> b!4684191 (= e!2922408 (ListMap!4894 Nil!52321))))

(assert (= (and d!1488674 c!801088) b!4684190))

(assert (= (and d!1488674 (not c!801088)) b!4684191))

(declare-fun m!5582825 () Bool)

(assert (=> d!1488674 m!5582825))

(declare-fun m!5582827 () Bool)

(assert (=> d!1488674 m!5582827))

(declare-fun m!5582829 () Bool)

(assert (=> b!4684190 m!5582829))

(assert (=> b!4684190 m!5582829))

(declare-fun m!5582831 () Bool)

(assert (=> b!4684190 m!5582831))

(assert (=> b!4684027 d!1488674))

(declare-fun d!1488676 () Bool)

(declare-fun dynLambda!21693 (Int tuple2!53676) Bool)

(assert (=> d!1488676 (dynLambda!21693 lambda!205555 lt!1843492)))

(declare-fun lt!1843708 () Unit!123113)

(declare-fun choose!32449 (List!52446 Int tuple2!53676) Unit!123113)

(assert (=> d!1488676 (= lt!1843708 (choose!32449 (toList!5529 lm!2023) lambda!205555 lt!1843492))))

(declare-fun e!2922411 () Bool)

(assert (=> d!1488676 e!2922411))

(declare-fun res!1974671 () Bool)

(assert (=> d!1488676 (=> (not res!1974671) (not e!2922411))))

(assert (=> d!1488676 (= res!1974671 (forall!11267 (toList!5529 lm!2023) lambda!205555))))

(assert (=> d!1488676 (= (forallContained!3374 (toList!5529 lm!2023) lambda!205555 lt!1843492) lt!1843708)))

(declare-fun b!4684194 () Bool)

(assert (=> b!4684194 (= e!2922411 (contains!15466 (toList!5529 lm!2023) lt!1843492))))

(assert (= (and d!1488676 res!1974671) b!4684194))

(declare-fun b_lambda!176775 () Bool)

(assert (=> (not b_lambda!176775) (not d!1488676)))

(declare-fun m!5582833 () Bool)

(assert (=> d!1488676 m!5582833))

(declare-fun m!5582835 () Bool)

(assert (=> d!1488676 m!5582835))

(assert (=> d!1488676 m!5582611))

(assert (=> b!4684194 m!5582637))

(assert (=> b!4684017 d!1488676))

(declare-fun d!1488678 () Bool)

(assert (=> d!1488678 (contains!15466 (toList!5529 lm!2023) (tuple2!53677 lt!1843488 lt!1843493))))

(declare-fun lt!1843711 () Unit!123113)

(declare-fun choose!32451 (ListLongMap!4059 (_ BitVec 64) List!52445) Unit!123113)

(assert (=> d!1488678 (= lt!1843711 (choose!32451 lm!2023 lt!1843488 lt!1843493))))

(assert (=> d!1488678 (contains!15467 lm!2023 lt!1843488)))

(assert (=> d!1488678 (= (lemmaGetValueImpliesTupleContained!229 lm!2023 lt!1843488 lt!1843493) lt!1843711)))

(declare-fun bs!1083882 () Bool)

(assert (= bs!1083882 d!1488678))

(declare-fun m!5582837 () Bool)

(assert (=> bs!1083882 m!5582837))

(declare-fun m!5582839 () Bool)

(assert (=> bs!1083882 m!5582839))

(assert (=> bs!1083882 m!5582619))

(assert (=> b!4684017 d!1488678))

(declare-fun d!1488680 () Bool)

(declare-fun isEmpty!29073 (Option!12003) Bool)

(assert (=> d!1488680 (= (isDefined!9258 (getPair!424 lt!1843493 key!4653)) (not (isEmpty!29073 (getPair!424 lt!1843493 key!4653))))))

(declare-fun bs!1083883 () Bool)

(assert (= bs!1083883 d!1488680))

(assert (=> bs!1083883 m!5582631))

(declare-fun m!5582841 () Bool)

(assert (=> bs!1083883 m!5582841))

(assert (=> b!4684017 d!1488680))

(declare-fun d!1488682 () Bool)

(assert (=> d!1488682 (containsKey!2979 oldBucket!34 key!4653)))

(declare-fun lt!1843714 () Unit!123113)

(declare-fun choose!32452 (List!52445 K!13700 Hashable!6189) Unit!123113)

(assert (=> d!1488682 (= lt!1843714 (choose!32452 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1488682 (noDuplicateKeys!1820 oldBucket!34)))

(assert (=> d!1488682 (= (lemmaGetPairDefinedThenContainsKey!172 oldBucket!34 key!4653 hashF!1323) lt!1843714)))

(declare-fun bs!1083884 () Bool)

(assert (= bs!1083884 d!1488682))

(assert (=> bs!1083884 m!5582629))

(declare-fun m!5582843 () Bool)

(assert (=> bs!1083884 m!5582843))

(assert (=> bs!1083884 m!5582641))

(assert (=> b!4684017 d!1488682))

(declare-fun d!1488684 () Bool)

(declare-fun res!1974676 () Bool)

(declare-fun e!2922416 () Bool)

(assert (=> d!1488684 (=> res!1974676 e!2922416)))

(assert (=> d!1488684 (= res!1974676 (and ((_ is Cons!52321) oldBucket!34) (= (_1!30131 (h!58546 oldBucket!34)) key!4653)))))

(assert (=> d!1488684 (= (containsKey!2979 oldBucket!34 key!4653) e!2922416)))

(declare-fun b!4684200 () Bool)

(declare-fun e!2922417 () Bool)

(assert (=> b!4684200 (= e!2922416 e!2922417)))

(declare-fun res!1974677 () Bool)

(assert (=> b!4684200 (=> (not res!1974677) (not e!2922417))))

(assert (=> b!4684200 (= res!1974677 ((_ is Cons!52321) oldBucket!34))))

(declare-fun b!4684201 () Bool)

(assert (=> b!4684201 (= e!2922417 (containsKey!2979 (t!359607 oldBucket!34) key!4653))))

(assert (= (and d!1488684 (not res!1974676)) b!4684200))

(assert (= (and b!4684200 res!1974677) b!4684201))

(assert (=> b!4684201 m!5582627))

(assert (=> b!4684017 d!1488684))

(declare-fun b!4684226 () Bool)

(declare-fun e!2922436 () Bool)

(assert (=> b!4684226 (= e!2922436 (not (containsKey!2979 lt!1843493 key!4653)))))

(declare-fun b!4684227 () Bool)

(declare-fun e!2922435 () Option!12003)

(assert (=> b!4684227 (= e!2922435 (getPair!424 (t!359607 lt!1843493) key!4653))))

(declare-fun b!4684228 () Bool)

(declare-fun e!2922434 () Option!12003)

(assert (=> b!4684228 (= e!2922434 e!2922435)))

(declare-fun c!801094 () Bool)

(assert (=> b!4684228 (= c!801094 ((_ is Cons!52321) lt!1843493))))

(declare-fun b!4684229 () Bool)

(declare-fun e!2922432 () Bool)

(declare-fun lt!1843733 () Option!12003)

(declare-fun contains!15472 (List!52445 tuple2!53674) Bool)

(declare-fun get!17436 (Option!12003) tuple2!53674)

(assert (=> b!4684229 (= e!2922432 (contains!15472 lt!1843493 (get!17436 lt!1843733)))))

(declare-fun d!1488686 () Bool)

(declare-fun e!2922433 () Bool)

(assert (=> d!1488686 e!2922433))

(declare-fun res!1974694 () Bool)

(assert (=> d!1488686 (=> res!1974694 e!2922433)))

(assert (=> d!1488686 (= res!1974694 e!2922436)))

(declare-fun res!1974696 () Bool)

(assert (=> d!1488686 (=> (not res!1974696) (not e!2922436))))

(assert (=> d!1488686 (= res!1974696 (isEmpty!29073 lt!1843733))))

(assert (=> d!1488686 (= lt!1843733 e!2922434)))

(declare-fun c!801093 () Bool)

(assert (=> d!1488686 (= c!801093 (and ((_ is Cons!52321) lt!1843493) (= (_1!30131 (h!58546 lt!1843493)) key!4653)))))

(assert (=> d!1488686 (noDuplicateKeys!1820 lt!1843493)))

(assert (=> d!1488686 (= (getPair!424 lt!1843493 key!4653) lt!1843733)))

(declare-fun b!4684230 () Bool)

(assert (=> b!4684230 (= e!2922435 None!12002)))

(declare-fun b!4684231 () Bool)

(declare-fun res!1974697 () Bool)

(assert (=> b!4684231 (=> (not res!1974697) (not e!2922432))))

(assert (=> b!4684231 (= res!1974697 (= (_1!30131 (get!17436 lt!1843733)) key!4653))))

(declare-fun b!4684232 () Bool)

(assert (=> b!4684232 (= e!2922434 (Some!12002 (h!58546 lt!1843493)))))

(declare-fun b!4684233 () Bool)

(assert (=> b!4684233 (= e!2922433 e!2922432)))

(declare-fun res!1974695 () Bool)

(assert (=> b!4684233 (=> (not res!1974695) (not e!2922432))))

(assert (=> b!4684233 (= res!1974695 (isDefined!9258 lt!1843733))))

(assert (= (and d!1488686 c!801093) b!4684232))

(assert (= (and d!1488686 (not c!801093)) b!4684228))

(assert (= (and b!4684228 c!801094) b!4684227))

(assert (= (and b!4684228 (not c!801094)) b!4684230))

(assert (= (and d!1488686 res!1974696) b!4684226))

(assert (= (and d!1488686 (not res!1974694)) b!4684233))

(assert (= (and b!4684233 res!1974695) b!4684231))

(assert (= (and b!4684231 res!1974697) b!4684229))

(declare-fun m!5582845 () Bool)

(assert (=> b!4684231 m!5582845))

(declare-fun m!5582847 () Bool)

(assert (=> b!4684233 m!5582847))

(assert (=> b!4684229 m!5582845))

(assert (=> b!4684229 m!5582845))

(declare-fun m!5582849 () Bool)

(assert (=> b!4684229 m!5582849))

(declare-fun m!5582851 () Bool)

(assert (=> b!4684227 m!5582851))

(declare-fun m!5582853 () Bool)

(assert (=> d!1488686 m!5582853))

(declare-fun m!5582855 () Bool)

(assert (=> d!1488686 m!5582855))

(declare-fun m!5582857 () Bool)

(assert (=> b!4684226 m!5582857))

(assert (=> b!4684017 d!1488686))

(declare-fun bs!1083889 () Bool)

(declare-fun d!1488688 () Bool)

(assert (= bs!1083889 (and d!1488688 start!473244)))

(declare-fun lambda!205643 () Int)

(assert (=> bs!1083889 (= lambda!205643 lambda!205555)))

(declare-fun bs!1083890 () Bool)

(assert (= bs!1083890 (and d!1488688 d!1488634)))

(assert (=> bs!1083890 (= lambda!205643 lambda!205560)))

(declare-fun bs!1083891 () Bool)

(assert (= bs!1083891 (and d!1488688 d!1488674)))

(assert (=> bs!1083891 (= lambda!205643 lambda!205633)))

(assert (=> d!1488688 (contains!15467 lm!2023 (hash!4011 hashF!1323 key!4653))))

(declare-fun lt!1843744 () Unit!123113)

(declare-fun choose!32454 (ListLongMap!4059 K!13700 Hashable!6189) Unit!123113)

(assert (=> d!1488688 (= lt!1843744 (choose!32454 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1488688 (forall!11267 (toList!5529 lm!2023) lambda!205643)))

(assert (=> d!1488688 (= (lemmaInGenMapThenLongMapContainsHash!630 lm!2023 key!4653 hashF!1323) lt!1843744)))

(declare-fun bs!1083892 () Bool)

(assert (= bs!1083892 d!1488688))

(assert (=> bs!1083892 m!5582643))

(assert (=> bs!1083892 m!5582643))

(declare-fun m!5582859 () Bool)

(assert (=> bs!1083892 m!5582859))

(declare-fun m!5582861 () Bool)

(assert (=> bs!1083892 m!5582861))

(declare-fun m!5582863 () Bool)

(assert (=> bs!1083892 m!5582863))

(assert (=> b!4684017 d!1488688))

(declare-fun d!1488690 () Bool)

(declare-datatypes ((Option!12007 0))(
  ( (None!12006) (Some!12006 (v!46385 List!52445)) )
))
(declare-fun get!17437 (Option!12007) List!52445)

(declare-fun getValueByKey!1741 (List!52446 (_ BitVec 64)) Option!12007)

(assert (=> d!1488690 (= (apply!12303 lm!2023 lt!1843488) (get!17437 (getValueByKey!1741 (toList!5529 lm!2023) lt!1843488)))))

(declare-fun bs!1083893 () Bool)

(assert (= bs!1083893 d!1488690))

(declare-fun m!5582887 () Bool)

(assert (=> bs!1083893 m!5582887))

(assert (=> bs!1083893 m!5582887))

(declare-fun m!5582889 () Bool)

(assert (=> bs!1083893 m!5582889))

(assert (=> b!4684017 d!1488690))

(declare-fun d!1488694 () Bool)

(declare-fun e!2922450 () Bool)

(assert (=> d!1488694 e!2922450))

(declare-fun res!1974710 () Bool)

(assert (=> d!1488694 (=> res!1974710 e!2922450)))

(declare-fun lt!1843756 () Bool)

(assert (=> d!1488694 (= res!1974710 (not lt!1843756))))

(declare-fun lt!1843757 () Bool)

(assert (=> d!1488694 (= lt!1843756 lt!1843757)))

(declare-fun lt!1843759 () Unit!123113)

(declare-fun e!2922449 () Unit!123113)

(assert (=> d!1488694 (= lt!1843759 e!2922449)))

(declare-fun c!801097 () Bool)

(assert (=> d!1488694 (= c!801097 lt!1843757)))

(declare-fun containsKey!2983 (List!52446 (_ BitVec 64)) Bool)

(assert (=> d!1488694 (= lt!1843757 (containsKey!2983 (toList!5529 lm!2023) lt!1843488))))

(assert (=> d!1488694 (= (contains!15467 lm!2023 lt!1843488) lt!1843756)))

(declare-fun b!4684250 () Bool)

(declare-fun lt!1843758 () Unit!123113)

(assert (=> b!4684250 (= e!2922449 lt!1843758)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1633 (List!52446 (_ BitVec 64)) Unit!123113)

(assert (=> b!4684250 (= lt!1843758 (lemmaContainsKeyImpliesGetValueByKeyDefined!1633 (toList!5529 lm!2023) lt!1843488))))

(declare-fun isDefined!9262 (Option!12007) Bool)

(assert (=> b!4684250 (isDefined!9262 (getValueByKey!1741 (toList!5529 lm!2023) lt!1843488))))

(declare-fun b!4684251 () Bool)

(declare-fun Unit!123142 () Unit!123113)

(assert (=> b!4684251 (= e!2922449 Unit!123142)))

(declare-fun b!4684252 () Bool)

(assert (=> b!4684252 (= e!2922450 (isDefined!9262 (getValueByKey!1741 (toList!5529 lm!2023) lt!1843488)))))

(assert (= (and d!1488694 c!801097) b!4684250))

(assert (= (and d!1488694 (not c!801097)) b!4684251))

(assert (= (and d!1488694 (not res!1974710)) b!4684252))

(declare-fun m!5582897 () Bool)

(assert (=> d!1488694 m!5582897))

(declare-fun m!5582899 () Bool)

(assert (=> b!4684250 m!5582899))

(assert (=> b!4684250 m!5582887))

(assert (=> b!4684250 m!5582887))

(declare-fun m!5582901 () Bool)

(assert (=> b!4684250 m!5582901))

(assert (=> b!4684252 m!5582887))

(assert (=> b!4684252 m!5582887))

(assert (=> b!4684252 m!5582901))

(assert (=> b!4684017 d!1488694))

(declare-fun bs!1083909 () Bool)

(declare-fun d!1488702 () Bool)

(assert (= bs!1083909 (and d!1488702 start!473244)))

(declare-fun lambda!205654 () Int)

(assert (=> bs!1083909 (= lambda!205654 lambda!205555)))

(declare-fun bs!1083910 () Bool)

(assert (= bs!1083910 (and d!1488702 d!1488634)))

(assert (=> bs!1083910 (= lambda!205654 lambda!205560)))

(declare-fun bs!1083911 () Bool)

(assert (= bs!1083911 (and d!1488702 d!1488674)))

(assert (=> bs!1083911 (= lambda!205654 lambda!205633)))

(declare-fun bs!1083912 () Bool)

(assert (= bs!1083912 (and d!1488702 d!1488688)))

(assert (=> bs!1083912 (= lambda!205654 lambda!205643)))

(declare-fun b!4684316 () Bool)

(declare-fun res!1974746 () Bool)

(declare-fun e!2922492 () Bool)

(assert (=> b!4684316 (=> (not res!1974746) (not e!2922492))))

(assert (=> b!4684316 (= res!1974746 (contains!15468 (extractMap!1846 (toList!5529 lm!2023)) key!4653))))

(declare-fun b!4684317 () Bool)

(assert (=> b!4684317 (= e!2922492 (isDefined!9258 (getPair!424 (apply!12303 lm!2023 (hash!4011 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1843784 () Unit!123113)

(assert (=> b!4684317 (= lt!1843784 (forallContained!3374 (toList!5529 lm!2023) lambda!205654 (tuple2!53677 (hash!4011 hashF!1323 key!4653) (apply!12303 lm!2023 (hash!4011 hashF!1323 key!4653)))))))

(declare-fun lt!1843789 () Unit!123113)

(declare-fun lt!1843788 () Unit!123113)

(assert (=> b!4684317 (= lt!1843789 lt!1843788)))

(declare-fun lt!1843785 () (_ BitVec 64))

(declare-fun lt!1843787 () List!52445)

(assert (=> b!4684317 (contains!15466 (toList!5529 lm!2023) (tuple2!53677 lt!1843785 lt!1843787))))

(assert (=> b!4684317 (= lt!1843788 (lemmaGetValueImpliesTupleContained!229 lm!2023 lt!1843785 lt!1843787))))

(declare-fun e!2922493 () Bool)

(assert (=> b!4684317 e!2922493))

(declare-fun res!1974747 () Bool)

(assert (=> b!4684317 (=> (not res!1974747) (not e!2922493))))

(assert (=> b!4684317 (= res!1974747 (contains!15467 lm!2023 lt!1843785))))

(assert (=> b!4684317 (= lt!1843787 (apply!12303 lm!2023 (hash!4011 hashF!1323 key!4653)))))

(assert (=> b!4684317 (= lt!1843785 (hash!4011 hashF!1323 key!4653))))

(declare-fun lt!1843786 () Unit!123113)

(declare-fun lt!1843783 () Unit!123113)

(assert (=> b!4684317 (= lt!1843786 lt!1843783)))

(assert (=> b!4684317 (contains!15467 lm!2023 (hash!4011 hashF!1323 key!4653))))

(assert (=> b!4684317 (= lt!1843783 (lemmaInGenMapThenLongMapContainsHash!630 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4684315 () Bool)

(declare-fun res!1974744 () Bool)

(assert (=> b!4684315 (=> (not res!1974744) (not e!2922492))))

(assert (=> b!4684315 (= res!1974744 (allKeysSameHashInMap!1734 lm!2023 hashF!1323))))

(declare-fun b!4684318 () Bool)

(assert (=> b!4684318 (= e!2922493 (= (getValueByKey!1741 (toList!5529 lm!2023) lt!1843785) (Some!12006 lt!1843787)))))

(assert (=> d!1488702 e!2922492))

(declare-fun res!1974745 () Bool)

(assert (=> d!1488702 (=> (not res!1974745) (not e!2922492))))

(assert (=> d!1488702 (= res!1974745 (forall!11267 (toList!5529 lm!2023) lambda!205654))))

(declare-fun lt!1843790 () Unit!123113)

(declare-fun choose!32455 (ListLongMap!4059 K!13700 Hashable!6189) Unit!123113)

(assert (=> d!1488702 (= lt!1843790 (choose!32455 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1488702 (forall!11267 (toList!5529 lm!2023) lambda!205654)))

(assert (=> d!1488702 (= (lemmaInGenMapThenGetPairDefined!220 lm!2023 key!4653 hashF!1323) lt!1843790)))

(assert (= (and d!1488702 res!1974745) b!4684315))

(assert (= (and b!4684315 res!1974744) b!4684316))

(assert (= (and b!4684316 res!1974746) b!4684317))

(assert (= (and b!4684317 res!1974747) b!4684318))

(declare-fun m!5582939 () Bool)

(assert (=> b!4684317 m!5582939))

(declare-fun m!5582941 () Bool)

(assert (=> b!4684317 m!5582941))

(declare-fun m!5582943 () Bool)

(assert (=> b!4684317 m!5582943))

(assert (=> b!4684317 m!5582643))

(assert (=> b!4684317 m!5582859))

(assert (=> b!4684317 m!5582941))

(declare-fun m!5582945 () Bool)

(assert (=> b!4684317 m!5582945))

(declare-fun m!5582947 () Bool)

(assert (=> b!4684317 m!5582947))

(declare-fun m!5582949 () Bool)

(assert (=> b!4684317 m!5582949))

(assert (=> b!4684317 m!5582643))

(declare-fun m!5582951 () Bool)

(assert (=> b!4684317 m!5582951))

(assert (=> b!4684317 m!5582643))

(assert (=> b!4684317 m!5582939))

(assert (=> b!4684317 m!5582617))

(declare-fun m!5582953 () Bool)

(assert (=> d!1488702 m!5582953))

(declare-fun m!5582955 () Bool)

(assert (=> d!1488702 m!5582955))

(assert (=> d!1488702 m!5582953))

(assert (=> b!4684315 m!5582605))

(assert (=> b!4684316 m!5582609))

(assert (=> b!4684316 m!5582609))

(declare-fun m!5582957 () Bool)

(assert (=> b!4684316 m!5582957))

(declare-fun m!5582959 () Bool)

(assert (=> b!4684318 m!5582959))

(assert (=> b!4684017 d!1488702))

(declare-fun d!1488724 () Bool)

(declare-fun lt!1843793 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9130 (List!52446) (InoxSet tuple2!53676))

(assert (=> d!1488724 (= lt!1843793 (select (content!9130 (toList!5529 lm!2023)) lt!1843492))))

(declare-fun e!2922498 () Bool)

(assert (=> d!1488724 (= lt!1843793 e!2922498)))

(declare-fun res!1974753 () Bool)

(assert (=> d!1488724 (=> (not res!1974753) (not e!2922498))))

(assert (=> d!1488724 (= res!1974753 ((_ is Cons!52322) (toList!5529 lm!2023)))))

(assert (=> d!1488724 (= (contains!15466 (toList!5529 lm!2023) lt!1843492) lt!1843793)))

(declare-fun b!4684323 () Bool)

(declare-fun e!2922499 () Bool)

(assert (=> b!4684323 (= e!2922498 e!2922499)))

(declare-fun res!1974752 () Bool)

(assert (=> b!4684323 (=> res!1974752 e!2922499)))

(assert (=> b!4684323 (= res!1974752 (= (h!58547 (toList!5529 lm!2023)) lt!1843492))))

(declare-fun b!4684324 () Bool)

(assert (=> b!4684324 (= e!2922499 (contains!15466 (t!359608 (toList!5529 lm!2023)) lt!1843492))))

(assert (= (and d!1488724 res!1974753) b!4684323))

(assert (= (and b!4684323 (not res!1974752)) b!4684324))

(declare-fun m!5582961 () Bool)

(assert (=> d!1488724 m!5582961))

(declare-fun m!5582963 () Bool)

(assert (=> d!1488724 m!5582963))

(declare-fun m!5582965 () Bool)

(assert (=> b!4684324 m!5582965))

(assert (=> b!4684017 d!1488724))

(declare-fun d!1488726 () Bool)

(declare-fun res!1974754 () Bool)

(declare-fun e!2922500 () Bool)

(assert (=> d!1488726 (=> res!1974754 e!2922500)))

(assert (=> d!1488726 (= res!1974754 (and ((_ is Cons!52321) (t!359607 oldBucket!34)) (= (_1!30131 (h!58546 (t!359607 oldBucket!34))) key!4653)))))

(assert (=> d!1488726 (= (containsKey!2979 (t!359607 oldBucket!34) key!4653) e!2922500)))

(declare-fun b!4684325 () Bool)

(declare-fun e!2922501 () Bool)

(assert (=> b!4684325 (= e!2922500 e!2922501)))

(declare-fun res!1974755 () Bool)

(assert (=> b!4684325 (=> (not res!1974755) (not e!2922501))))

(assert (=> b!4684325 (= res!1974755 ((_ is Cons!52321) (t!359607 oldBucket!34)))))

(declare-fun b!4684326 () Bool)

(assert (=> b!4684326 (= e!2922501 (containsKey!2979 (t!359607 (t!359607 oldBucket!34)) key!4653))))

(assert (= (and d!1488726 (not res!1974754)) b!4684325))

(assert (= (and b!4684325 res!1974755) b!4684326))

(declare-fun m!5582967 () Bool)

(assert (=> b!4684326 m!5582967))

(assert (=> b!4684017 d!1488726))

(declare-fun d!1488728 () Bool)

(declare-fun res!1974756 () Bool)

(declare-fun e!2922502 () Bool)

(assert (=> d!1488728 (=> res!1974756 e!2922502)))

(assert (=> d!1488728 (= res!1974756 (not ((_ is Cons!52321) oldBucket!34)))))

(assert (=> d!1488728 (= (noDuplicateKeys!1820 oldBucket!34) e!2922502)))

(declare-fun b!4684327 () Bool)

(declare-fun e!2922503 () Bool)

(assert (=> b!4684327 (= e!2922502 e!2922503)))

(declare-fun res!1974757 () Bool)

(assert (=> b!4684327 (=> (not res!1974757) (not e!2922503))))

(assert (=> b!4684327 (= res!1974757 (not (containsKey!2979 (t!359607 oldBucket!34) (_1!30131 (h!58546 oldBucket!34)))))))

(declare-fun b!4684328 () Bool)

(assert (=> b!4684328 (= e!2922503 (noDuplicateKeys!1820 (t!359607 oldBucket!34)))))

(assert (= (and d!1488728 (not res!1974756)) b!4684327))

(assert (= (and b!4684327 res!1974757) b!4684328))

(declare-fun m!5582969 () Bool)

(assert (=> b!4684327 m!5582969))

(declare-fun m!5582971 () Bool)

(assert (=> b!4684328 m!5582971))

(assert (=> b!4684015 d!1488728))

(declare-fun bs!1083913 () Bool)

(declare-fun d!1488730 () Bool)

(assert (= bs!1083913 (and d!1488730 b!4684187)))

(declare-fun lambda!205657 () Int)

(assert (=> bs!1083913 (not (= lambda!205657 lambda!205629))))

(declare-fun bs!1083914 () Bool)

(assert (= bs!1083914 (and d!1488730 b!4684185)))

(assert (=> bs!1083914 (not (= lambda!205657 lambda!205630))))

(assert (=> bs!1083914 (not (= lambda!205657 lambda!205631))))

(declare-fun bs!1083915 () Bool)

(assert (= bs!1083915 (and d!1488730 d!1488648)))

(assert (=> bs!1083915 (not (= lambda!205657 lambda!205632))))

(assert (=> d!1488730 true))

(assert (=> d!1488730 true))

(assert (=> d!1488730 (= (allKeysSameHash!1646 oldBucket!34 hash!405 hashF!1323) (forall!11269 oldBucket!34 lambda!205657))))

(declare-fun bs!1083916 () Bool)

(assert (= bs!1083916 d!1488730))

(declare-fun m!5582973 () Bool)

(assert (=> bs!1083916 m!5582973))

(assert (=> b!4684024 d!1488730))

(declare-fun d!1488732 () Bool)

(declare-fun tail!8505 (List!52446) List!52446)

(assert (=> d!1488732 (= (tail!8503 lm!2023) (ListLongMap!4060 (tail!8505 (toList!5529 lm!2023))))))

(declare-fun bs!1083917 () Bool)

(assert (= bs!1083917 d!1488732))

(declare-fun m!5582975 () Bool)

(assert (=> bs!1083917 m!5582975))

(assert (=> b!4684025 d!1488732))

(declare-fun d!1488734 () Bool)

(declare-fun res!1974762 () Bool)

(declare-fun e!2922508 () Bool)

(assert (=> d!1488734 (=> res!1974762 e!2922508)))

(assert (=> d!1488734 (= res!1974762 ((_ is Nil!52322) (toList!5529 lm!2023)))))

(assert (=> d!1488734 (= (forall!11267 (toList!5529 lm!2023) lambda!205555) e!2922508)))

(declare-fun b!4684337 () Bool)

(declare-fun e!2922509 () Bool)

(assert (=> b!4684337 (= e!2922508 e!2922509)))

(declare-fun res!1974763 () Bool)

(assert (=> b!4684337 (=> (not res!1974763) (not e!2922509))))

(assert (=> b!4684337 (= res!1974763 (dynLambda!21693 lambda!205555 (h!58547 (toList!5529 lm!2023))))))

(declare-fun b!4684338 () Bool)

(assert (=> b!4684338 (= e!2922509 (forall!11267 (t!359608 (toList!5529 lm!2023)) lambda!205555))))

(assert (= (and d!1488734 (not res!1974762)) b!4684337))

(assert (= (and b!4684337 res!1974763) b!4684338))

(declare-fun b_lambda!176783 () Bool)

(assert (=> (not b_lambda!176783) (not b!4684337)))

(declare-fun m!5582977 () Bool)

(assert (=> b!4684337 m!5582977))

(declare-fun m!5582979 () Bool)

(assert (=> b!4684338 m!5582979))

(assert (=> start!473244 d!1488734))

(declare-fun d!1488736 () Bool)

(declare-fun isStrictlySorted!630 (List!52446) Bool)

(assert (=> d!1488736 (= (inv!67574 lm!2023) (isStrictlySorted!630 (toList!5529 lm!2023)))))

(declare-fun bs!1083918 () Bool)

(assert (= bs!1083918 d!1488736))

(declare-fun m!5582981 () Bool)

(assert (=> bs!1083918 m!5582981))

(assert (=> start!473244 d!1488736))

(declare-fun bs!1083919 () Bool)

(declare-fun d!1488738 () Bool)

(assert (= bs!1083919 (and d!1488738 d!1488730)))

(declare-fun lambda!205658 () Int)

(assert (=> bs!1083919 (= lambda!205658 lambda!205657)))

(declare-fun bs!1083920 () Bool)

(assert (= bs!1083920 (and d!1488738 d!1488648)))

(assert (=> bs!1083920 (not (= lambda!205658 lambda!205632))))

(declare-fun bs!1083921 () Bool)

(assert (= bs!1083921 (and d!1488738 b!4684187)))

(assert (=> bs!1083921 (not (= lambda!205658 lambda!205629))))

(declare-fun bs!1083922 () Bool)

(assert (= bs!1083922 (and d!1488738 b!4684185)))

(assert (=> bs!1083922 (not (= lambda!205658 lambda!205630))))

(assert (=> bs!1083922 (not (= lambda!205658 lambda!205631))))

(assert (=> d!1488738 true))

(assert (=> d!1488738 true))

(assert (=> d!1488738 (= (allKeysSameHash!1646 newBucket!218 hash!405 hashF!1323) (forall!11269 newBucket!218 lambda!205658))))

(declare-fun bs!1083923 () Bool)

(assert (= bs!1083923 d!1488738))

(declare-fun m!5582983 () Bool)

(assert (=> bs!1083923 m!5582983))

(assert (=> b!4684022 d!1488738))

(declare-fun bs!1083924 () Bool)

(declare-fun d!1488740 () Bool)

(assert (= bs!1083924 (and d!1488740 d!1488702)))

(declare-fun lambda!205661 () Int)

(assert (=> bs!1083924 (not (= lambda!205661 lambda!205654))))

(declare-fun bs!1083925 () Bool)

(assert (= bs!1083925 (and d!1488740 d!1488688)))

(assert (=> bs!1083925 (not (= lambda!205661 lambda!205643))))

(declare-fun bs!1083926 () Bool)

(assert (= bs!1083926 (and d!1488740 d!1488634)))

(assert (=> bs!1083926 (not (= lambda!205661 lambda!205560))))

(declare-fun bs!1083927 () Bool)

(assert (= bs!1083927 (and d!1488740 d!1488674)))

(assert (=> bs!1083927 (not (= lambda!205661 lambda!205633))))

(declare-fun bs!1083928 () Bool)

(assert (= bs!1083928 (and d!1488740 start!473244)))

(assert (=> bs!1083928 (not (= lambda!205661 lambda!205555))))

(assert (=> d!1488740 true))

(assert (=> d!1488740 (= (allKeysSameHashInMap!1734 lm!2023 hashF!1323) (forall!11267 (toList!5529 lm!2023) lambda!205661))))

(declare-fun bs!1083929 () Bool)

(assert (= bs!1083929 d!1488740))

(declare-fun m!5582985 () Bool)

(assert (=> bs!1083929 m!5582985))

(assert (=> b!4684020 d!1488740))

(declare-fun d!1488742 () Bool)

(declare-fun lt!1843794 () List!52445)

(assert (=> d!1488742 (not (containsKey!2979 lt!1843794 key!4653))))

(declare-fun e!2922510 () List!52445)

(assert (=> d!1488742 (= lt!1843794 e!2922510)))

(declare-fun c!801107 () Bool)

(assert (=> d!1488742 (= c!801107 (and ((_ is Cons!52321) oldBucket!34) (= (_1!30131 (h!58546 oldBucket!34)) key!4653)))))

(assert (=> d!1488742 (noDuplicateKeys!1820 oldBucket!34)))

(assert (=> d!1488742 (= (removePairForKey!1415 oldBucket!34 key!4653) lt!1843794)))

(declare-fun b!4684341 () Bool)

(assert (=> b!4684341 (= e!2922510 (t!359607 oldBucket!34))))

(declare-fun b!4684343 () Bool)

(declare-fun e!2922511 () List!52445)

(assert (=> b!4684343 (= e!2922511 (Cons!52321 (h!58546 oldBucket!34) (removePairForKey!1415 (t!359607 oldBucket!34) key!4653)))))

(declare-fun b!4684342 () Bool)

(assert (=> b!4684342 (= e!2922510 e!2922511)))

(declare-fun c!801106 () Bool)

(assert (=> b!4684342 (= c!801106 ((_ is Cons!52321) oldBucket!34))))

(declare-fun b!4684344 () Bool)

(assert (=> b!4684344 (= e!2922511 Nil!52321)))

(assert (= (and d!1488742 c!801107) b!4684341))

(assert (= (and d!1488742 (not c!801107)) b!4684342))

(assert (= (and b!4684342 c!801106) b!4684343))

(assert (= (and b!4684342 (not c!801106)) b!4684344))

(declare-fun m!5582987 () Bool)

(assert (=> d!1488742 m!5582987))

(assert (=> d!1488742 m!5582641))

(declare-fun m!5582989 () Bool)

(assert (=> b!4684343 m!5582989))

(assert (=> b!4684031 d!1488742))

(declare-fun b!4684349 () Bool)

(declare-fun e!2922514 () Bool)

(declare-fun tp!1345424 () Bool)

(assert (=> b!4684349 (= e!2922514 (and tp_is_empty!30573 tp_is_empty!30575 tp!1345424))))

(assert (=> b!4684019 (= tp!1345411 e!2922514)))

(assert (= (and b!4684019 ((_ is Cons!52321) (t!359607 oldBucket!34))) b!4684349))

(declare-fun b!4684354 () Bool)

(declare-fun e!2922517 () Bool)

(declare-fun tp!1345429 () Bool)

(declare-fun tp!1345430 () Bool)

(assert (=> b!4684354 (= e!2922517 (and tp!1345429 tp!1345430))))

(assert (=> b!4684014 (= tp!1345410 e!2922517)))

(assert (= (and b!4684014 ((_ is Cons!52322) (toList!5529 lm!2023))) b!4684354))

(declare-fun b!4684355 () Bool)

(declare-fun e!2922518 () Bool)

(declare-fun tp!1345431 () Bool)

(assert (=> b!4684355 (= e!2922518 (and tp_is_empty!30573 tp_is_empty!30575 tp!1345431))))

(assert (=> b!4684021 (= tp!1345409 e!2922518)))

(assert (= (and b!4684021 ((_ is Cons!52321) (t!359607 newBucket!218))) b!4684355))

(declare-fun b_lambda!176785 () Bool)

(assert (= b_lambda!176775 (or start!473244 b_lambda!176785)))

(declare-fun bs!1083930 () Bool)

(declare-fun d!1488744 () Bool)

(assert (= bs!1083930 (and d!1488744 start!473244)))

(assert (=> bs!1083930 (= (dynLambda!21693 lambda!205555 lt!1843492) (noDuplicateKeys!1820 (_2!30132 lt!1843492)))))

(declare-fun m!5582991 () Bool)

(assert (=> bs!1083930 m!5582991))

(assert (=> d!1488676 d!1488744))

(declare-fun b_lambda!176787 () Bool)

(assert (= b_lambda!176783 (or start!473244 b_lambda!176787)))

(declare-fun bs!1083931 () Bool)

(declare-fun d!1488746 () Bool)

(assert (= bs!1083931 (and d!1488746 start!473244)))

(assert (=> bs!1083931 (= (dynLambda!21693 lambda!205555 (h!58547 (toList!5529 lm!2023))) (noDuplicateKeys!1820 (_2!30132 (h!58547 (toList!5529 lm!2023)))))))

(assert (=> bs!1083931 m!5582801))

(assert (=> b!4684337 d!1488746))

(check-sat (not b!4684355) (not b!4684338) (not b!4684226) (not b_lambda!176787) (not b!4684108) (not d!1488738) (not b!4684227) (not d!1488622) (not d!1488690) (not bs!1083931) tp_is_empty!30573 (not b!4684194) (not b!4684315) (not b_lambda!176785) (not b!4684183) (not b!4684120) (not b!4684316) (not d!1488688) (not bs!1083930) (not d!1488740) (not b!4684252) (not b!4684064) (not bm!327373) (not b!4684327) (not d!1488694) (not b!4684057) (not b!4684060) (not b!4684233) (not d!1488634) (not b!4684190) (not d!1488648) (not b!4684354) (not b!4684324) (not d!1488624) (not b!4684317) (not d!1488736) (not d!1488676) (not d!1488686) (not b!4684062) tp_is_empty!30575 (not b!4684318) (not d!1488674) (not d!1488682) (not bm!327374) (not d!1488742) (not d!1488724) (not d!1488732) (not b!4684109) (not b!4684326) (not d!1488730) (not d!1488680) (not b!4684201) (not b!4684061) (not b!4684250) (not b!4684186) (not bm!327353) (not b!4684185) (not b!4684229) (not b!4684328) (not bm!327372) (not d!1488678) (not b!4684058) (not d!1488702) (not b!4684343) (not d!1488642) (not b!4684100) (not b!4684063) (not b!4684349) (not b!4684184) (not b!4684231))
(check-sat)
