; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!472942 () Bool)

(assert start!472942)

(declare-fun b!4682580 () Bool)

(declare-fun res!1973745 () Bool)

(declare-fun e!2921438 () Bool)

(assert (=> b!4682580 (=> (not res!1973745) (not e!2921438))))

(declare-datatypes ((K!13678 0))(
  ( (K!13679 (val!19213 Int)) )
))
(declare-datatypes ((V!13924 0))(
  ( (V!13925 (val!19214 Int)) )
))
(declare-datatypes ((tuple2!53638 0))(
  ( (tuple2!53639 (_1!30113 K!13678) (_2!30113 V!13924)) )
))
(declare-datatypes ((List!52421 0))(
  ( (Nil!52297) (Cons!52297 (h!58516 tuple2!53638) (t!359583 List!52421)) )
))
(declare-datatypes ((tuple2!53640 0))(
  ( (tuple2!53641 (_1!30114 (_ BitVec 64)) (_2!30114 List!52421)) )
))
(declare-datatypes ((List!52422 0))(
  ( (Nil!52298) (Cons!52298 (h!58517 tuple2!53640) (t!359584 List!52422)) )
))
(declare-datatypes ((ListLongMap!4041 0))(
  ( (ListLongMap!4042 (toList!5511 List!52422)) )
))
(declare-fun lm!2023 () ListLongMap!4041)

(declare-fun oldBucket!34 () List!52421)

(declare-fun hash!405 () (_ BitVec 64))

(declare-fun head!9905 (List!52422) tuple2!53640)

(assert (=> b!4682580 (= res!1973745 (= (head!9905 (toList!5511 lm!2023)) (tuple2!53641 hash!405 oldBucket!34)))))

(declare-fun b!4682581 () Bool)

(declare-fun e!2921436 () Bool)

(declare-datatypes ((ListMap!4875 0))(
  ( (ListMap!4876 (toList!5512 List!52421)) )
))
(declare-fun lt!1842360 () ListMap!4875)

(declare-fun addToMapMapFromBucket!1243 (List!52421 ListMap!4875) ListMap!4875)

(declare-fun extractMap!1837 (List!52422) ListMap!4875)

(assert (=> b!4682581 (= e!2921436 (= lt!1842360 (addToMapMapFromBucket!1243 (_2!30114 (h!58517 (toList!5511 lm!2023))) (extractMap!1837 (t!359584 (toList!5511 lm!2023))))))))

(declare-fun b!4682582 () Bool)

(declare-fun res!1973753 () Bool)

(assert (=> b!4682582 (=> (not res!1973753) (not e!2921438))))

(assert (=> b!4682582 (= res!1973753 (is-Cons!52298 (toList!5511 lm!2023)))))

(declare-fun b!4682583 () Bool)

(declare-fun res!1973751 () Bool)

(declare-fun e!2921441 () Bool)

(assert (=> b!4682583 (=> (not res!1973751) (not e!2921441))))

(declare-datatypes ((Hashable!6180 0))(
  ( (HashableExt!6179 (__x!31883 Int)) )
))
(declare-fun hashF!1323 () Hashable!6180)

(declare-fun allKeysSameHash!1637 (List!52421 (_ BitVec 64) Hashable!6180) Bool)

(assert (=> b!4682583 (= res!1973751 (allKeysSameHash!1637 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4682585 () Bool)

(declare-fun e!2921440 () Bool)

(declare-fun e!2921443 () Bool)

(assert (=> b!4682585 (= e!2921440 e!2921443)))

(declare-fun res!1973746 () Bool)

(assert (=> b!4682585 (=> res!1973746 e!2921443)))

(declare-fun key!4653 () K!13678)

(declare-fun containsKey!2958 (List!52421 K!13678) Bool)

(assert (=> b!4682585 (= res!1973746 (not (containsKey!2958 (t!359583 oldBucket!34) key!4653)))))

(assert (=> b!4682585 (containsKey!2958 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!123011 0))(
  ( (Unit!123012) )
))
(declare-fun lt!1842358 () Unit!123011)

(declare-fun lemmaGetPairDefinedThenContainsKey!163 (List!52421 K!13678 Hashable!6180) Unit!123011)

(assert (=> b!4682585 (= lt!1842358 (lemmaGetPairDefinedThenContainsKey!163 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1842363 () List!52421)

(declare-datatypes ((Option!11982 0))(
  ( (None!11981) (Some!11981 (v!46344 tuple2!53638)) )
))
(declare-fun isDefined!9237 (Option!11982) Bool)

(declare-fun getPair!415 (List!52421 K!13678) Option!11982)

(assert (=> b!4682585 (isDefined!9237 (getPair!415 lt!1842363 key!4653))))

(declare-fun lt!1842359 () Unit!123011)

(declare-fun lambda!205192 () Int)

(declare-fun lt!1842361 () tuple2!53640)

(declare-fun forallContained!3359 (List!52422 Int tuple2!53640) Unit!123011)

(assert (=> b!4682585 (= lt!1842359 (forallContained!3359 (toList!5511 lm!2023) lambda!205192 lt!1842361))))

(declare-fun contains!15427 (List!52422 tuple2!53640) Bool)

(assert (=> b!4682585 (contains!15427 (toList!5511 lm!2023) lt!1842361)))

(declare-fun lt!1842357 () (_ BitVec 64))

(assert (=> b!4682585 (= lt!1842361 (tuple2!53641 lt!1842357 lt!1842363))))

(declare-fun lt!1842362 () Unit!123011)

(declare-fun lemmaGetValueImpliesTupleContained!220 (ListLongMap!4041 (_ BitVec 64) List!52421) Unit!123011)

(assert (=> b!4682585 (= lt!1842362 (lemmaGetValueImpliesTupleContained!220 lm!2023 lt!1842357 lt!1842363))))

(declare-fun apply!12294 (ListLongMap!4041 (_ BitVec 64)) List!52421)

(assert (=> b!4682585 (= lt!1842363 (apply!12294 lm!2023 lt!1842357))))

(declare-fun contains!15428 (ListLongMap!4041 (_ BitVec 64)) Bool)

(assert (=> b!4682585 (contains!15428 lm!2023 lt!1842357)))

(declare-fun lt!1842355 () Unit!123011)

(declare-fun lemmaInGenMapThenLongMapContainsHash!621 (ListLongMap!4041 K!13678 Hashable!6180) Unit!123011)

(assert (=> b!4682585 (= lt!1842355 (lemmaInGenMapThenLongMapContainsHash!621 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1842356 () Unit!123011)

(declare-fun lemmaInGenMapThenGetPairDefined!211 (ListLongMap!4041 K!13678 Hashable!6180) Unit!123011)

(assert (=> b!4682585 (= lt!1842356 (lemmaInGenMapThenGetPairDefined!211 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4682586 () Bool)

(declare-fun res!1973754 () Bool)

(assert (=> b!4682586 (=> (not res!1973754) (not e!2921438))))

(declare-fun newBucket!218 () List!52421)

(assert (=> b!4682586 (= res!1973754 (allKeysSameHash!1637 newBucket!218 hash!405 hashF!1323))))

(declare-fun e!2921442 () Bool)

(declare-fun tp!1345268 () Bool)

(declare-fun tp_is_empty!30537 () Bool)

(declare-fun tp_is_empty!30539 () Bool)

(declare-fun b!4682587 () Bool)

(assert (=> b!4682587 (= e!2921442 (and tp_is_empty!30537 tp_is_empty!30539 tp!1345268))))

(declare-fun b!4682588 () Bool)

(declare-fun e!2921435 () Bool)

(assert (=> b!4682588 (= e!2921441 e!2921435)))

(declare-fun res!1973744 () Bool)

(assert (=> b!4682588 (=> (not res!1973744) (not e!2921435))))

(declare-fun contains!15429 (ListMap!4875 K!13678) Bool)

(assert (=> b!4682588 (= res!1973744 (contains!15429 lt!1842360 key!4653))))

(assert (=> b!4682588 (= lt!1842360 (extractMap!1837 (toList!5511 lm!2023)))))

(declare-fun b!4682589 () Bool)

(assert (=> b!4682589 (= e!2921435 e!2921438)))

(declare-fun res!1973747 () Bool)

(assert (=> b!4682589 (=> (not res!1973747) (not e!2921438))))

(assert (=> b!4682589 (= res!1973747 (= lt!1842357 hash!405))))

(declare-fun hash!3997 (Hashable!6180 K!13678) (_ BitVec 64))

(assert (=> b!4682589 (= lt!1842357 (hash!3997 hashF!1323 key!4653))))

(declare-fun b!4682590 () Bool)

(declare-fun res!1973750 () Bool)

(assert (=> b!4682590 (=> (not res!1973750) (not e!2921441))))

(declare-fun noDuplicateKeys!1811 (List!52421) Bool)

(assert (=> b!4682590 (= res!1973750 (noDuplicateKeys!1811 newBucket!218))))

(declare-fun b!4682591 () Bool)

(declare-fun res!1973755 () Bool)

(assert (=> b!4682591 (=> (not res!1973755) (not e!2921441))))

(declare-fun removePairForKey!1406 (List!52421 K!13678) List!52421)

(assert (=> b!4682591 (= res!1973755 (= (removePairForKey!1406 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4682592 () Bool)

(assert (=> b!4682592 (= e!2921443 (not (= oldBucket!34 Nil!52297)))))

(declare-fun res!1973756 () Bool)

(assert (=> start!472942 (=> (not res!1973756) (not e!2921441))))

(declare-fun forall!11252 (List!52422 Int) Bool)

(assert (=> start!472942 (= res!1973756 (forall!11252 (toList!5511 lm!2023) lambda!205192))))

(assert (=> start!472942 e!2921441))

(declare-fun e!2921439 () Bool)

(declare-fun inv!67553 (ListLongMap!4041) Bool)

(assert (=> start!472942 (and (inv!67553 lm!2023) e!2921439)))

(assert (=> start!472942 tp_is_empty!30537))

(assert (=> start!472942 e!2921442))

(assert (=> start!472942 true))

(declare-fun e!2921437 () Bool)

(assert (=> start!472942 e!2921437))

(declare-fun b!4682584 () Bool)

(declare-fun tp!1345270 () Bool)

(assert (=> b!4682584 (= e!2921437 (and tp_is_empty!30537 tp_is_empty!30539 tp!1345270))))

(declare-fun b!4682593 () Bool)

(declare-fun tp!1345269 () Bool)

(assert (=> b!4682593 (= e!2921439 tp!1345269)))

(declare-fun b!4682594 () Bool)

(assert (=> b!4682594 (= e!2921438 (not e!2921440))))

(declare-fun res!1973752 () Bool)

(assert (=> b!4682594 (=> res!1973752 e!2921440)))

(assert (=> b!4682594 (= res!1973752 (or (and (is-Cons!52297 oldBucket!34) (= (_1!30113 (h!58516 oldBucket!34)) key!4653)) (not (is-Cons!52297 oldBucket!34)) (= (_1!30113 (h!58516 oldBucket!34)) key!4653)))))

(assert (=> b!4682594 e!2921436))

(declare-fun res!1973749 () Bool)

(assert (=> b!4682594 (=> (not res!1973749) (not e!2921436))))

(declare-fun tail!8482 (ListLongMap!4041) ListLongMap!4041)

(assert (=> b!4682594 (= res!1973749 (= (t!359584 (toList!5511 lm!2023)) (toList!5511 (tail!8482 lm!2023))))))

(declare-fun b!4682595 () Bool)

(declare-fun res!1973757 () Bool)

(assert (=> b!4682595 (=> (not res!1973757) (not e!2921438))))

(declare-fun allKeysSameHashInMap!1725 (ListLongMap!4041 Hashable!6180) Bool)

(assert (=> b!4682595 (= res!1973757 (allKeysSameHashInMap!1725 lm!2023 hashF!1323))))

(declare-fun b!4682596 () Bool)

(declare-fun res!1973748 () Bool)

(assert (=> b!4682596 (=> (not res!1973748) (not e!2921441))))

(assert (=> b!4682596 (= res!1973748 (noDuplicateKeys!1811 oldBucket!34))))

(assert (= (and start!472942 res!1973756) b!4682596))

(assert (= (and b!4682596 res!1973748) b!4682590))

(assert (= (and b!4682590 res!1973750) b!4682591))

(assert (= (and b!4682591 res!1973755) b!4682583))

(assert (= (and b!4682583 res!1973751) b!4682588))

(assert (= (and b!4682588 res!1973744) b!4682589))

(assert (= (and b!4682589 res!1973747) b!4682586))

(assert (= (and b!4682586 res!1973754) b!4682595))

(assert (= (and b!4682595 res!1973757) b!4682580))

(assert (= (and b!4682580 res!1973745) b!4682582))

(assert (= (and b!4682582 res!1973753) b!4682594))

(assert (= (and b!4682594 res!1973749) b!4682581))

(assert (= (and b!4682594 (not res!1973752)) b!4682585))

(assert (= (and b!4682585 (not res!1973746)) b!4682592))

(assert (= start!472942 b!4682593))

(assert (= (and start!472942 (is-Cons!52297 oldBucket!34)) b!4682587))

(assert (= (and start!472942 (is-Cons!52297 newBucket!218)) b!4682584))

(declare-fun m!5581033 () Bool)

(assert (=> b!4682595 m!5581033))

(declare-fun m!5581035 () Bool)

(assert (=> b!4682588 m!5581035))

(declare-fun m!5581037 () Bool)

(assert (=> b!4682588 m!5581037))

(declare-fun m!5581039 () Bool)

(assert (=> b!4682581 m!5581039))

(assert (=> b!4682581 m!5581039))

(declare-fun m!5581041 () Bool)

(assert (=> b!4682581 m!5581041))

(declare-fun m!5581043 () Bool)

(assert (=> b!4682594 m!5581043))

(declare-fun m!5581045 () Bool)

(assert (=> b!4682591 m!5581045))

(declare-fun m!5581047 () Bool)

(assert (=> b!4682596 m!5581047))

(declare-fun m!5581049 () Bool)

(assert (=> b!4682586 m!5581049))

(declare-fun m!5581051 () Bool)

(assert (=> b!4682589 m!5581051))

(declare-fun m!5581053 () Bool)

(assert (=> b!4682580 m!5581053))

(declare-fun m!5581055 () Bool)

(assert (=> start!472942 m!5581055))

(declare-fun m!5581057 () Bool)

(assert (=> start!472942 m!5581057))

(declare-fun m!5581059 () Bool)

(assert (=> b!4682590 m!5581059))

(declare-fun m!5581061 () Bool)

(assert (=> b!4682585 m!5581061))

(declare-fun m!5581063 () Bool)

(assert (=> b!4682585 m!5581063))

(declare-fun m!5581065 () Bool)

(assert (=> b!4682585 m!5581065))

(declare-fun m!5581067 () Bool)

(assert (=> b!4682585 m!5581067))

(declare-fun m!5581069 () Bool)

(assert (=> b!4682585 m!5581069))

(declare-fun m!5581071 () Bool)

(assert (=> b!4682585 m!5581071))

(declare-fun m!5581073 () Bool)

(assert (=> b!4682585 m!5581073))

(declare-fun m!5581075 () Bool)

(assert (=> b!4682585 m!5581075))

(declare-fun m!5581077 () Bool)

(assert (=> b!4682585 m!5581077))

(declare-fun m!5581079 () Bool)

(assert (=> b!4682585 m!5581079))

(declare-fun m!5581081 () Bool)

(assert (=> b!4682585 m!5581081))

(declare-fun m!5581083 () Bool)

(assert (=> b!4682585 m!5581083))

(assert (=> b!4682585 m!5581067))

(declare-fun m!5581085 () Bool)

(assert (=> b!4682583 m!5581085))

(push 1)

(assert (not b!4682596))

(assert (not b!4682594))

(assert (not b!4682591))

(assert (not b!4682580))

(assert (not start!472942))

(assert tp_is_empty!30539)

(assert (not b!4682581))

(assert (not b!4682583))

(assert (not b!4682595))

(assert (not b!4682590))

(assert (not b!4682586))

(assert (not b!4682587))

(assert (not b!4682588))

(assert (not b!4682585))

(assert (not b!4682593))

(assert (not b!4682589))

(assert (not b!4682584))

(assert tp_is_empty!30537)

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

