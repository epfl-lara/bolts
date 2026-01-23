; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!441742 () Bool)

(assert start!441742)

(declare-fun b!4485483 () Bool)

(declare-datatypes ((Unit!90094 0))(
  ( (Unit!90095) )
))
(declare-fun e!2793656 () Unit!90094)

(declare-fun Unit!90096 () Unit!90094)

(assert (=> b!4485483 (= e!2793656 Unit!90096)))

(declare-fun b!4485484 () Bool)

(declare-fun res!1863098 () Bool)

(declare-fun e!2793652 () Bool)

(assert (=> b!4485484 (=> res!1863098 e!2793652)))

(declare-datatypes ((K!11858 0))(
  ( (K!11859 (val!17757 Int)) )
))
(declare-datatypes ((V!12104 0))(
  ( (V!12105 (val!17758 Int)) )
))
(declare-datatypes ((tuple2!50782 0))(
  ( (tuple2!50783 (_1!28685 K!11858) (_2!28685 V!12104)) )
))
(declare-datatypes ((List!50568 0))(
  ( (Nil!50444) (Cons!50444 (h!56241 tuple2!50782) (t!357522 List!50568)) )
))
(declare-datatypes ((tuple2!50784 0))(
  ( (tuple2!50785 (_1!28686 (_ BitVec 64)) (_2!28686 List!50568)) )
))
(declare-datatypes ((List!50569 0))(
  ( (Nil!50445) (Cons!50445 (h!56242 tuple2!50784) (t!357523 List!50569)) )
))
(declare-datatypes ((ListLongMap!2813 0))(
  ( (ListLongMap!2814 (toList!4181 List!50569)) )
))
(declare-fun lm!1477 () ListLongMap!2813)

(declare-fun lt!1670977 () tuple2!50784)

(declare-fun contains!13064 (List!50569 tuple2!50784) Bool)

(assert (=> b!4485484 (= res!1863098 (not (contains!13064 (t!357523 (toList!4181 lm!1477)) lt!1670977)))))

(declare-fun res!1863100 () Bool)

(declare-fun e!2793659 () Bool)

(assert (=> start!441742 (=> (not res!1863100) (not e!2793659))))

(declare-fun lambda!166342 () Int)

(declare-fun forall!10101 (List!50569 Int) Bool)

(assert (=> start!441742 (= res!1863100 (forall!10101 (toList!4181 lm!1477) lambda!166342))))

(assert (=> start!441742 e!2793659))

(assert (=> start!441742 true))

(declare-fun e!2793655 () Bool)

(declare-fun inv!66043 (ListLongMap!2813) Bool)

(assert (=> start!441742 (and (inv!66043 lm!1477) e!2793655)))

(declare-fun tp_is_empty!27625 () Bool)

(assert (=> start!441742 tp_is_empty!27625))

(declare-fun e!2793654 () Bool)

(assert (=> start!441742 e!2793654))

(declare-fun b!4485485 () Bool)

(declare-fun res!1863099 () Bool)

(declare-fun e!2793660 () Bool)

(assert (=> b!4485485 (=> res!1863099 e!2793660)))

(declare-fun lt!1670982 () ListLongMap!2813)

(declare-datatypes ((Hashable!5482 0))(
  ( (HashableExt!5481 (__x!31185 Int)) )
))
(declare-fun hashF!1107 () Hashable!5482)

(declare-fun allKeysSameHashInMap!1194 (ListLongMap!2813 Hashable!5482) Bool)

(assert (=> b!4485485 (= res!1863099 (not (allKeysSameHashInMap!1194 lt!1670982 hashF!1107)))))

(declare-fun b!4485486 () Bool)

(declare-fun e!2793657 () Bool)

(assert (=> b!4485486 (= e!2793657 e!2793660)))

(declare-fun res!1863097 () Bool)

(assert (=> b!4485486 (=> res!1863097 e!2793660)))

(declare-fun key!3287 () K!11858)

(declare-fun containsKeyBiggerList!67 (List!50569 K!11858) Bool)

(assert (=> b!4485486 (= res!1863097 (not (containsKeyBiggerList!67 (t!357523 (toList!4181 lm!1477)) key!3287)))))

(assert (=> b!4485486 (containsKeyBiggerList!67 (toList!4181 lt!1670982) key!3287)))

(declare-fun lt!1670976 () Unit!90094)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!3 (ListLongMap!2813 K!11858 Hashable!5482) Unit!90094)

(assert (=> b!4485486 (= lt!1670976 (lemmaInLongMapThenContainsKeyBiggerList!3 lt!1670982 key!3287 hashF!1107))))

(declare-fun b!4485487 () Bool)

(declare-fun res!1863109 () Bool)

(assert (=> b!4485487 (=> (not res!1863109) (not e!2793659))))

(assert (=> b!4485487 (= res!1863109 (allKeysSameHashInMap!1194 lm!1477 hashF!1107))))

(declare-fun b!4485488 () Bool)

(assert (=> b!4485488 (= e!2793652 e!2793657)))

(declare-fun res!1863102 () Bool)

(assert (=> b!4485488 (=> res!1863102 e!2793657)))

(declare-fun lt!1670979 () Bool)

(assert (=> b!4485488 (= res!1863102 lt!1670979)))

(declare-fun lt!1670975 () Unit!90094)

(assert (=> b!4485488 (= lt!1670975 e!2793656)))

(declare-fun c!763984 () Bool)

(assert (=> b!4485488 (= c!763984 lt!1670979)))

(declare-fun lt!1670980 () List!50568)

(declare-fun containsKey!1595 (List!50568 K!11858) Bool)

(assert (=> b!4485488 (= lt!1670979 (not (containsKey!1595 lt!1670980 key!3287)))))

(declare-fun tp_is_empty!27627 () Bool)

(declare-fun tp!1336983 () Bool)

(declare-fun b!4485489 () Bool)

(assert (=> b!4485489 (= e!2793654 (and tp_is_empty!27625 tp_is_empty!27627 tp!1336983))))

(declare-fun b!4485490 () Bool)

(declare-fun res!1863110 () Bool)

(assert (=> b!4485490 (=> res!1863110 e!2793660)))

(assert (=> b!4485490 (= res!1863110 (not (forall!10101 (toList!4181 lt!1670982) lambda!166342)))))

(declare-fun b!4485491 () Bool)

(declare-fun res!1863105 () Bool)

(assert (=> b!4485491 (=> (not res!1863105) (not e!2793659))))

(declare-datatypes ((ListMap!3443 0))(
  ( (ListMap!3444 (toList!4182 List!50568)) )
))
(declare-fun contains!13065 (ListMap!3443 K!11858) Bool)

(declare-fun extractMap!1143 (List!50569) ListMap!3443)

(assert (=> b!4485491 (= res!1863105 (contains!13065 (extractMap!1143 (toList!4181 lm!1477)) key!3287))))

(declare-fun b!4485492 () Bool)

(declare-fun Unit!90097 () Unit!90094)

(assert (=> b!4485492 (= e!2793656 Unit!90097)))

(declare-fun lt!1670978 () Unit!90094)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!75 (ListLongMap!2813 K!11858 Hashable!5482) Unit!90094)

(assert (=> b!4485492 (= lt!1670978 (lemmaNotInItsHashBucketThenNotInMap!75 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4485492 false))

(declare-fun b!4485493 () Bool)

(declare-fun res!1863103 () Bool)

(declare-fun e!2793658 () Bool)

(assert (=> b!4485493 (=> res!1863103 e!2793658)))

(declare-fun newBucket!178 () List!50568)

(declare-fun noDuplicateKeys!1087 (List!50568) Bool)

(assert (=> b!4485493 (= res!1863103 (not (noDuplicateKeys!1087 newBucket!178)))))

(declare-fun b!4485494 () Bool)

(declare-fun e!2793653 () Bool)

(assert (=> b!4485494 (= e!2793659 e!2793653)))

(declare-fun res!1863111 () Bool)

(assert (=> b!4485494 (=> (not res!1863111) (not e!2793653))))

(declare-fun lt!1670985 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4485494 (= res!1863111 (= lt!1670985 hash!344))))

(declare-fun hash!2594 (Hashable!5482 K!11858) (_ BitVec 64))

(assert (=> b!4485494 (= lt!1670985 (hash!2594 hashF!1107 key!3287))))

(declare-fun b!4485495 () Bool)

(declare-fun res!1863101 () Bool)

(assert (=> b!4485495 (=> res!1863101 e!2793652)))

(declare-fun apply!11824 (ListLongMap!2813 (_ BitVec 64)) List!50568)

(assert (=> b!4485495 (= res!1863101 (not (= (apply!11824 lt!1670982 hash!344) lt!1670980)))))

(declare-fun b!4485496 () Bool)

(assert (=> b!4485496 (= e!2793660 (forall!10101 (toList!4181 lt!1670982) lambda!166342))))

(declare-fun b!4485497 () Bool)

(assert (=> b!4485497 (= e!2793653 (not e!2793658))))

(declare-fun res!1863107 () Bool)

(assert (=> b!4485497 (=> res!1863107 e!2793658)))

(declare-fun removePairForKey!714 (List!50568 K!11858) List!50568)

(assert (=> b!4485497 (= res!1863107 (not (= newBucket!178 (removePairForKey!714 lt!1670980 key!3287))))))

(declare-fun lt!1670983 () Unit!90094)

(declare-fun forallContained!2362 (List!50569 Int tuple2!50784) Unit!90094)

(assert (=> b!4485497 (= lt!1670983 (forallContained!2362 (toList!4181 lm!1477) lambda!166342 lt!1670977))))

(assert (=> b!4485497 (contains!13064 (toList!4181 lm!1477) lt!1670977)))

(assert (=> b!4485497 (= lt!1670977 (tuple2!50785 hash!344 lt!1670980))))

(declare-fun lt!1670981 () Unit!90094)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!599 (List!50569 (_ BitVec 64) List!50568) Unit!90094)

(assert (=> b!4485497 (= lt!1670981 (lemmaGetValueByKeyImpliesContainsTuple!599 (toList!4181 lm!1477) hash!344 lt!1670980))))

(assert (=> b!4485497 (= lt!1670980 (apply!11824 lm!1477 hash!344))))

(declare-fun contains!13066 (ListLongMap!2813 (_ BitVec 64)) Bool)

(assert (=> b!4485497 (contains!13066 lm!1477 lt!1670985)))

(declare-fun lt!1670984 () Unit!90094)

(declare-fun lemmaInGenMapThenLongMapContainsHash!161 (ListLongMap!2813 K!11858 Hashable!5482) Unit!90094)

(assert (=> b!4485497 (= lt!1670984 (lemmaInGenMapThenLongMapContainsHash!161 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4485498 () Bool)

(declare-fun res!1863106 () Bool)

(assert (=> b!4485498 (=> (not res!1863106) (not e!2793653))))

(declare-fun allKeysSameHash!941 (List!50568 (_ BitVec 64) Hashable!5482) Bool)

(assert (=> b!4485498 (= res!1863106 (allKeysSameHash!941 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4485499 () Bool)

(assert (=> b!4485499 (= e!2793658 e!2793652)))

(declare-fun res!1863108 () Bool)

(assert (=> b!4485499 (=> res!1863108 e!2793652)))

(assert (=> b!4485499 (= res!1863108 (not (contains!13066 lt!1670982 hash!344)))))

(declare-fun tail!7606 (ListLongMap!2813) ListLongMap!2813)

(assert (=> b!4485499 (= lt!1670982 (tail!7606 lm!1477))))

(declare-fun b!4485500 () Bool)

(declare-fun tp!1336982 () Bool)

(assert (=> b!4485500 (= e!2793655 tp!1336982)))

(declare-fun b!4485501 () Bool)

(declare-fun res!1863104 () Bool)

(assert (=> b!4485501 (=> res!1863104 e!2793658)))

(assert (=> b!4485501 (= res!1863104 (or (is-Nil!50445 (toList!4181 lm!1477)) (= (_1!28686 (h!56242 (toList!4181 lm!1477))) hash!344)))))

(assert (= (and start!441742 res!1863100) b!4485487))

(assert (= (and b!4485487 res!1863109) b!4485491))

(assert (= (and b!4485491 res!1863105) b!4485494))

(assert (= (and b!4485494 res!1863111) b!4485498))

(assert (= (and b!4485498 res!1863106) b!4485497))

(assert (= (and b!4485497 (not res!1863107)) b!4485493))

(assert (= (and b!4485493 (not res!1863103)) b!4485501))

(assert (= (and b!4485501 (not res!1863104)) b!4485499))

(assert (= (and b!4485499 (not res!1863108)) b!4485495))

(assert (= (and b!4485495 (not res!1863101)) b!4485484))

(assert (= (and b!4485484 (not res!1863098)) b!4485488))

(assert (= (and b!4485488 c!763984) b!4485492))

(assert (= (and b!4485488 (not c!763984)) b!4485483))

(assert (= (and b!4485488 (not res!1863102)) b!4485486))

(assert (= (and b!4485486 (not res!1863097)) b!4485490))

(assert (= (and b!4485490 (not res!1863110)) b!4485485))

(assert (= (and b!4485485 (not res!1863099)) b!4485496))

(assert (= start!441742 b!4485500))

(assert (= (and start!441742 (is-Cons!50444 newBucket!178)) b!4485489))

(declare-fun m!5206165 () Bool)

(assert (=> b!4485496 m!5206165))

(declare-fun m!5206167 () Bool)

(assert (=> b!4485485 m!5206167))

(declare-fun m!5206169 () Bool)

(assert (=> b!4485486 m!5206169))

(declare-fun m!5206171 () Bool)

(assert (=> b!4485486 m!5206171))

(declare-fun m!5206173 () Bool)

(assert (=> b!4485486 m!5206173))

(declare-fun m!5206175 () Bool)

(assert (=> b!4485494 m!5206175))

(declare-fun m!5206177 () Bool)

(assert (=> b!4485499 m!5206177))

(declare-fun m!5206179 () Bool)

(assert (=> b!4485499 m!5206179))

(declare-fun m!5206181 () Bool)

(assert (=> b!4485484 m!5206181))

(declare-fun m!5206183 () Bool)

(assert (=> start!441742 m!5206183))

(declare-fun m!5206185 () Bool)

(assert (=> start!441742 m!5206185))

(declare-fun m!5206187 () Bool)

(assert (=> b!4485495 m!5206187))

(declare-fun m!5206189 () Bool)

(assert (=> b!4485497 m!5206189))

(declare-fun m!5206191 () Bool)

(assert (=> b!4485497 m!5206191))

(declare-fun m!5206193 () Bool)

(assert (=> b!4485497 m!5206193))

(declare-fun m!5206195 () Bool)

(assert (=> b!4485497 m!5206195))

(declare-fun m!5206197 () Bool)

(assert (=> b!4485497 m!5206197))

(declare-fun m!5206199 () Bool)

(assert (=> b!4485497 m!5206199))

(declare-fun m!5206201 () Bool)

(assert (=> b!4485497 m!5206201))

(declare-fun m!5206203 () Bool)

(assert (=> b!4485488 m!5206203))

(declare-fun m!5206205 () Bool)

(assert (=> b!4485498 m!5206205))

(declare-fun m!5206207 () Bool)

(assert (=> b!4485493 m!5206207))

(declare-fun m!5206209 () Bool)

(assert (=> b!4485491 m!5206209))

(assert (=> b!4485491 m!5206209))

(declare-fun m!5206211 () Bool)

(assert (=> b!4485491 m!5206211))

(assert (=> b!4485490 m!5206165))

(declare-fun m!5206213 () Bool)

(assert (=> b!4485487 m!5206213))

(declare-fun m!5206215 () Bool)

(assert (=> b!4485492 m!5206215))

(push 1)

(assert (not b!4485491))

(assert (not b!4485489))

(assert (not b!4485484))

(assert (not b!4485495))

(assert tp_is_empty!27625)

(assert (not b!4485497))

(assert (not b!4485498))

(assert (not b!4485485))

(assert (not b!4485487))

(assert (not b!4485500))

(assert (not b!4485488))

(assert (not b!4485499))

(assert (not b!4485493))

(assert (not b!4485490))

(assert tp_is_empty!27627)

(assert (not b!4485496))

(assert (not start!441742))

(assert (not b!4485492))

(assert (not b!4485494))

(assert (not b!4485486))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

