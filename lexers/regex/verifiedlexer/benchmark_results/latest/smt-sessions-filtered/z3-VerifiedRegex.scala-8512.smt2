; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!444824 () Bool)

(assert start!444824)

(declare-fun b!4504572 () Bool)

(declare-fun e!2806143 () Bool)

(declare-fun e!2806144 () Bool)

(assert (=> b!4504572 (= e!2806143 (not e!2806144))))

(declare-fun res!1873088 () Bool)

(assert (=> b!4504572 (=> res!1873088 e!2806144)))

(declare-datatypes ((K!11965 0))(
  ( (K!11966 (val!17843 Int)) )
))
(declare-datatypes ((V!12211 0))(
  ( (V!12212 (val!17844 Int)) )
))
(declare-datatypes ((tuple2!50954 0))(
  ( (tuple2!50955 (_1!28771 K!11965) (_2!28771 V!12211)) )
))
(declare-datatypes ((List!50682 0))(
  ( (Nil!50558) (Cons!50558 (h!56383 tuple2!50954) (t!357644 List!50682)) )
))
(declare-fun lt!1684116 () List!50682)

(declare-fun key!3287 () K!11965)

(declare-fun newBucket!178 () List!50682)

(declare-fun removePairForKey!757 (List!50682 K!11965) List!50682)

(assert (=> b!4504572 (= res!1873088 (not (= newBucket!178 (removePairForKey!757 lt!1684116 key!3287))))))

(declare-datatypes ((tuple2!50956 0))(
  ( (tuple2!50957 (_1!28772 (_ BitVec 64)) (_2!28772 List!50682)) )
))
(declare-datatypes ((List!50683 0))(
  ( (Nil!50559) (Cons!50559 (h!56384 tuple2!50956) (t!357645 List!50683)) )
))
(declare-datatypes ((ListLongMap!2899 0))(
  ( (ListLongMap!2900 (toList!4267 List!50683)) )
))
(declare-fun lm!1477 () ListLongMap!2899)

(declare-datatypes ((Unit!92671 0))(
  ( (Unit!92672) )
))
(declare-fun lt!1684123 () Unit!92671)

(declare-fun lt!1684127 () tuple2!50956)

(declare-fun lambda!169407 () Int)

(declare-fun forallContained!2445 (List!50683 Int tuple2!50956) Unit!92671)

(assert (=> b!4504572 (= lt!1684123 (forallContained!2445 (toList!4267 lm!1477) lambda!169407 lt!1684127))))

(declare-fun contains!13239 (List!50683 tuple2!50956) Bool)

(assert (=> b!4504572 (contains!13239 (toList!4267 lm!1477) lt!1684127)))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4504572 (= lt!1684127 (tuple2!50957 hash!344 lt!1684116))))

(declare-fun lt!1684117 () Unit!92671)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!642 (List!50683 (_ BitVec 64) List!50682) Unit!92671)

(assert (=> b!4504572 (= lt!1684117 (lemmaGetValueByKeyImpliesContainsTuple!642 (toList!4267 lm!1477) hash!344 lt!1684116))))

(declare-fun apply!11867 (ListLongMap!2899 (_ BitVec 64)) List!50682)

(assert (=> b!4504572 (= lt!1684116 (apply!11867 lm!1477 hash!344))))

(declare-fun lt!1684118 () (_ BitVec 64))

(declare-fun contains!13240 (ListLongMap!2899 (_ BitVec 64)) Bool)

(assert (=> b!4504572 (contains!13240 lm!1477 lt!1684118)))

(declare-datatypes ((Hashable!5525 0))(
  ( (HashableExt!5524 (__x!31228 Int)) )
))
(declare-fun hashF!1107 () Hashable!5525)

(declare-fun lt!1684124 () Unit!92671)

(declare-fun lemmaInGenMapThenLongMapContainsHash!204 (ListLongMap!2899 K!11965 Hashable!5525) Unit!92671)

(assert (=> b!4504572 (= lt!1684124 (lemmaInGenMapThenLongMapContainsHash!204 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4504573 () Bool)

(declare-fun res!1873087 () Bool)

(declare-fun e!2806148 () Bool)

(assert (=> b!4504573 (=> (not res!1873087) (not e!2806148))))

(declare-fun allKeysSameHashInMap!1237 (ListLongMap!2899 Hashable!5525) Bool)

(assert (=> b!4504573 (= res!1873087 (allKeysSameHashInMap!1237 lm!1477 hashF!1107))))

(declare-fun b!4504574 () Bool)

(declare-fun e!2806137 () Unit!92671)

(declare-fun Unit!92673 () Unit!92671)

(assert (=> b!4504574 (= e!2806137 Unit!92673)))

(declare-fun lt!1684122 () Unit!92671)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!118 (ListLongMap!2899 K!11965 Hashable!5525) Unit!92671)

(assert (=> b!4504574 (= lt!1684122 (lemmaNotInItsHashBucketThenNotInMap!118 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4504574 false))

(declare-fun b!4504575 () Bool)

(declare-fun tp_is_empty!27797 () Bool)

(declare-fun e!2806147 () Bool)

(declare-fun tp!1337593 () Bool)

(declare-fun tp_is_empty!27799 () Bool)

(assert (=> b!4504575 (= e!2806147 (and tp_is_empty!27797 tp_is_empty!27799 tp!1337593))))

(declare-fun b!4504576 () Bool)

(declare-fun res!1873077 () Bool)

(assert (=> b!4504576 (=> res!1873077 e!2806144)))

(get-info :version)

(assert (=> b!4504576 (= res!1873077 (or ((_ is Nil!50559) (toList!4267 lm!1477)) (= (_1!28772 (h!56384 (toList!4267 lm!1477))) hash!344)))))

(declare-fun b!4504577 () Bool)

(declare-fun res!1873079 () Bool)

(assert (=> b!4504577 (=> res!1873079 e!2806144)))

(declare-fun noDuplicateKeys!1130 (List!50682) Bool)

(assert (=> b!4504577 (= res!1873079 (not (noDuplicateKeys!1130 newBucket!178)))))

(declare-fun b!4504578 () Bool)

(declare-fun res!1873076 () Bool)

(declare-fun e!2806146 () Bool)

(assert (=> b!4504578 (=> res!1873076 e!2806146)))

(declare-fun lt!1684119 () tuple2!50956)

(assert (=> b!4504578 (= res!1873076 (bvsge (_1!28772 lt!1684119) hash!344))))

(declare-fun b!4504579 () Bool)

(declare-fun e!2806142 () Bool)

(declare-fun tp!1337592 () Bool)

(assert (=> b!4504579 (= e!2806142 tp!1337592)))

(declare-fun b!4504580 () Bool)

(declare-fun res!1873073 () Bool)

(declare-fun e!2806140 () Bool)

(assert (=> b!4504580 (=> res!1873073 e!2806140)))

(declare-fun lt!1684132 () ListLongMap!2899)

(assert (=> b!4504580 (= res!1873073 (not (= (apply!11867 lt!1684132 hash!344) lt!1684116)))))

(declare-fun b!4504581 () Bool)

(declare-fun res!1873084 () Bool)

(assert (=> b!4504581 (=> (not res!1873084) (not e!2806143))))

(declare-fun allKeysSameHash!984 (List!50682 (_ BitVec 64) Hashable!5525) Bool)

(assert (=> b!4504581 (= res!1873084 (allKeysSameHash!984 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4504582 () Bool)

(assert (=> b!4504582 (= e!2806144 e!2806140)))

(declare-fun res!1873082 () Bool)

(assert (=> b!4504582 (=> res!1873082 e!2806140)))

(assert (=> b!4504582 (= res!1873082 (not (contains!13240 lt!1684132 hash!344)))))

(declare-fun tail!7676 (ListLongMap!2899) ListLongMap!2899)

(assert (=> b!4504582 (= lt!1684132 (tail!7676 lm!1477))))

(declare-fun b!4504583 () Bool)

(declare-fun e!2806149 () Bool)

(assert (=> b!4504583 (= e!2806146 e!2806149)))

(declare-fun res!1873080 () Bool)

(assert (=> b!4504583 (=> res!1873080 e!2806149)))

(declare-fun lt!1684126 () tuple2!50956)

(declare-fun lt!1684133 () ListLongMap!2899)

(declare-fun +!1482 (ListLongMap!2899 tuple2!50956) ListLongMap!2899)

(assert (=> b!4504583 (= res!1873080 (not (= lt!1684133 (+!1482 lm!1477 lt!1684126))))))

(declare-fun lt!1684114 () ListLongMap!2899)

(assert (=> b!4504583 (= lt!1684133 (+!1482 lt!1684114 lt!1684119))))

(declare-fun b!4504584 () Bool)

(declare-fun res!1873070 () Bool)

(assert (=> b!4504584 (=> res!1873070 e!2806140)))

(assert (=> b!4504584 (= res!1873070 (not (contains!13239 (t!357645 (toList!4267 lm!1477)) lt!1684127)))))

(declare-fun b!4504585 () Bool)

(declare-fun isEmpty!28615 (ListLongMap!2899) Bool)

(assert (=> b!4504585 (= e!2806149 (not (isEmpty!28615 lm!1477)))))

(declare-datatypes ((ListMap!3529 0))(
  ( (ListMap!3530 (toList!4268 List!50682)) )
))
(declare-fun lt!1684128 () ListMap!3529)

(declare-fun extractMap!1186 (List!50683) ListMap!3529)

(assert (=> b!4504585 (= lt!1684128 (extractMap!1186 (toList!4267 lt!1684133)))))

(declare-fun b!4504586 () Bool)

(declare-fun e!2806145 () Bool)

(assert (=> b!4504586 (= e!2806140 e!2806145)))

(declare-fun res!1873075 () Bool)

(assert (=> b!4504586 (=> res!1873075 e!2806145)))

(declare-fun lt!1684125 () Bool)

(assert (=> b!4504586 (= res!1873075 lt!1684125)))

(declare-fun lt!1684120 () Unit!92671)

(assert (=> b!4504586 (= lt!1684120 e!2806137)))

(declare-fun c!768091 () Bool)

(assert (=> b!4504586 (= c!768091 lt!1684125)))

(declare-fun containsKey!1694 (List!50682 K!11965) Bool)

(assert (=> b!4504586 (= lt!1684125 (not (containsKey!1694 lt!1684116 key!3287)))))

(declare-fun b!4504587 () Bool)

(declare-fun res!1873074 () Bool)

(assert (=> b!4504587 (=> res!1873074 e!2806149)))

(declare-fun head!9354 (ListLongMap!2899) tuple2!50956)

(assert (=> b!4504587 (= res!1873074 (not (= (head!9354 lt!1684133) lt!1684119)))))

(declare-fun b!4504588 () Bool)

(declare-fun e!2806139 () Bool)

(assert (=> b!4504588 (= e!2806139 e!2806146)))

(declare-fun res!1873078 () Bool)

(assert (=> b!4504588 (=> res!1873078 e!2806146)))

(declare-fun lt!1684129 () ListMap!3529)

(declare-fun lt!1684131 () ListMap!3529)

(declare-fun eq!587 (ListMap!3529 ListMap!3529) Bool)

(assert (=> b!4504588 (= res!1873078 (not (eq!587 lt!1684129 lt!1684131)))))

(assert (=> b!4504588 (= lt!1684129 (extractMap!1186 (toList!4267 (+!1482 lt!1684132 lt!1684119))))))

(assert (=> b!4504588 (= lt!1684119 (head!9354 lm!1477))))

(declare-fun lt!1684130 () ListMap!3529)

(declare-fun -!356 (ListMap!3529 K!11965) ListMap!3529)

(assert (=> b!4504588 (eq!587 (extractMap!1186 (toList!4267 lt!1684114)) (-!356 lt!1684130 key!3287))))

(assert (=> b!4504588 (= lt!1684114 (+!1482 lt!1684132 lt!1684126))))

(assert (=> b!4504588 (= lt!1684126 (tuple2!50957 hash!344 newBucket!178))))

(declare-fun lt!1684134 () Unit!92671)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!115 (ListLongMap!2899 (_ BitVec 64) List!50682 K!11965 Hashable!5525) Unit!92671)

(assert (=> b!4504588 (= lt!1684134 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!115 lt!1684132 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4504589 () Bool)

(declare-fun Unit!92674 () Unit!92671)

(assert (=> b!4504589 (= e!2806137 Unit!92674)))

(declare-fun b!4504590 () Bool)

(declare-fun e!2806141 () Bool)

(assert (=> b!4504590 (= e!2806141 e!2806139)))

(declare-fun res!1873083 () Bool)

(assert (=> b!4504590 (=> res!1873083 e!2806139)))

(declare-fun contains!13241 (ListMap!3529 K!11965) Bool)

(assert (=> b!4504590 (= res!1873083 (not (contains!13241 (extractMap!1186 (t!357645 (toList!4267 lm!1477))) key!3287)))))

(assert (=> b!4504590 (contains!13241 lt!1684130 key!3287)))

(assert (=> b!4504590 (= lt!1684130 (extractMap!1186 (toList!4267 lt!1684132)))))

(declare-fun lt!1684121 () Unit!92671)

(declare-fun lemmaListContainsThenExtractedMapContains!100 (ListLongMap!2899 K!11965 Hashable!5525) Unit!92671)

(assert (=> b!4504590 (= lt!1684121 (lemmaListContainsThenExtractedMapContains!100 lt!1684132 key!3287 hashF!1107))))

(declare-fun b!4504591 () Bool)

(declare-fun e!2806138 () Bool)

(assert (=> b!4504591 (= e!2806148 e!2806138)))

(declare-fun res!1873085 () Bool)

(assert (=> b!4504591 (=> (not res!1873085) (not e!2806138))))

(assert (=> b!4504591 (= res!1873085 (contains!13241 lt!1684131 key!3287))))

(assert (=> b!4504591 (= lt!1684131 (extractMap!1186 (toList!4267 lm!1477)))))

(declare-fun b!4504592 () Bool)

(assert (=> b!4504592 (= e!2806145 e!2806141)))

(declare-fun res!1873081 () Bool)

(assert (=> b!4504592 (=> res!1873081 e!2806141)))

(declare-fun containsKeyBiggerList!110 (List!50683 K!11965) Bool)

(assert (=> b!4504592 (= res!1873081 (not (containsKeyBiggerList!110 (t!357645 (toList!4267 lm!1477)) key!3287)))))

(assert (=> b!4504592 (containsKeyBiggerList!110 (toList!4267 lt!1684132) key!3287)))

(declare-fun lt!1684115 () Unit!92671)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!46 (ListLongMap!2899 K!11965 Hashable!5525) Unit!92671)

(assert (=> b!4504592 (= lt!1684115 (lemmaInLongMapThenContainsKeyBiggerList!46 lt!1684132 key!3287 hashF!1107))))

(declare-fun b!4504593 () Bool)

(assert (=> b!4504593 (= e!2806138 e!2806143)))

(declare-fun res!1873071 () Bool)

(assert (=> b!4504593 (=> (not res!1873071) (not e!2806143))))

(assert (=> b!4504593 (= res!1873071 (= lt!1684118 hash!344))))

(declare-fun hash!2707 (Hashable!5525 K!11965) (_ BitVec 64))

(assert (=> b!4504593 (= lt!1684118 (hash!2707 hashF!1107 key!3287))))

(declare-fun res!1873086 () Bool)

(assert (=> start!444824 (=> (not res!1873086) (not e!2806148))))

(declare-fun forall!10191 (List!50683 Int) Bool)

(assert (=> start!444824 (= res!1873086 (forall!10191 (toList!4267 lm!1477) lambda!169407))))

(assert (=> start!444824 e!2806148))

(assert (=> start!444824 true))

(declare-fun inv!66149 (ListLongMap!2899) Bool)

(assert (=> start!444824 (and (inv!66149 lm!1477) e!2806142)))

(assert (=> start!444824 tp_is_empty!27797))

(assert (=> start!444824 e!2806147))

(declare-fun b!4504594 () Bool)

(declare-fun res!1873072 () Bool)

(assert (=> b!4504594 (=> res!1873072 e!2806146)))

(assert (=> b!4504594 (= res!1873072 (not (eq!587 lt!1684131 lt!1684129)))))

(assert (= (and start!444824 res!1873086) b!4504573))

(assert (= (and b!4504573 res!1873087) b!4504591))

(assert (= (and b!4504591 res!1873085) b!4504593))

(assert (= (and b!4504593 res!1873071) b!4504581))

(assert (= (and b!4504581 res!1873084) b!4504572))

(assert (= (and b!4504572 (not res!1873088)) b!4504577))

(assert (= (and b!4504577 (not res!1873079)) b!4504576))

(assert (= (and b!4504576 (not res!1873077)) b!4504582))

(assert (= (and b!4504582 (not res!1873082)) b!4504580))

(assert (= (and b!4504580 (not res!1873073)) b!4504584))

(assert (= (and b!4504584 (not res!1873070)) b!4504586))

(assert (= (and b!4504586 c!768091) b!4504574))

(assert (= (and b!4504586 (not c!768091)) b!4504589))

(assert (= (and b!4504586 (not res!1873075)) b!4504592))

(assert (= (and b!4504592 (not res!1873081)) b!4504590))

(assert (= (and b!4504590 (not res!1873083)) b!4504588))

(assert (= (and b!4504588 (not res!1873078)) b!4504594))

(assert (= (and b!4504594 (not res!1873072)) b!4504578))

(assert (= (and b!4504578 (not res!1873076)) b!4504583))

(assert (= (and b!4504583 (not res!1873080)) b!4504587))

(assert (= (and b!4504587 (not res!1873074)) b!4504585))

(assert (= start!444824 b!4504579))

(assert (= (and start!444824 ((_ is Cons!50558) newBucket!178)) b!4504575))

(declare-fun m!5239441 () Bool)

(assert (=> b!4504580 m!5239441))

(declare-fun m!5239443 () Bool)

(assert (=> b!4504582 m!5239443))

(declare-fun m!5239445 () Bool)

(assert (=> b!4504582 m!5239445))

(declare-fun m!5239447 () Bool)

(assert (=> b!4504585 m!5239447))

(declare-fun m!5239449 () Bool)

(assert (=> b!4504585 m!5239449))

(declare-fun m!5239451 () Bool)

(assert (=> b!4504588 m!5239451))

(declare-fun m!5239453 () Bool)

(assert (=> b!4504588 m!5239453))

(declare-fun m!5239455 () Bool)

(assert (=> b!4504588 m!5239455))

(declare-fun m!5239457 () Bool)

(assert (=> b!4504588 m!5239457))

(declare-fun m!5239459 () Bool)

(assert (=> b!4504588 m!5239459))

(declare-fun m!5239461 () Bool)

(assert (=> b!4504588 m!5239461))

(assert (=> b!4504588 m!5239455))

(declare-fun m!5239463 () Bool)

(assert (=> b!4504588 m!5239463))

(assert (=> b!4504588 m!5239453))

(declare-fun m!5239465 () Bool)

(assert (=> b!4504588 m!5239465))

(declare-fun m!5239467 () Bool)

(assert (=> b!4504588 m!5239467))

(declare-fun m!5239469 () Bool)

(assert (=> b!4504574 m!5239469))

(declare-fun m!5239471 () Bool)

(assert (=> b!4504581 m!5239471))

(declare-fun m!5239473 () Bool)

(assert (=> b!4504577 m!5239473))

(declare-fun m!5239475 () Bool)

(assert (=> b!4504593 m!5239475))

(declare-fun m!5239477 () Bool)

(assert (=> b!4504586 m!5239477))

(declare-fun m!5239479 () Bool)

(assert (=> b!4504590 m!5239479))

(declare-fun m!5239481 () Bool)

(assert (=> b!4504590 m!5239481))

(declare-fun m!5239483 () Bool)

(assert (=> b!4504590 m!5239483))

(assert (=> b!4504590 m!5239479))

(declare-fun m!5239485 () Bool)

(assert (=> b!4504590 m!5239485))

(declare-fun m!5239487 () Bool)

(assert (=> b!4504590 m!5239487))

(declare-fun m!5239489 () Bool)

(assert (=> b!4504592 m!5239489))

(declare-fun m!5239491 () Bool)

(assert (=> b!4504592 m!5239491))

(declare-fun m!5239493 () Bool)

(assert (=> b!4504592 m!5239493))

(declare-fun m!5239495 () Bool)

(assert (=> b!4504587 m!5239495))

(declare-fun m!5239497 () Bool)

(assert (=> b!4504594 m!5239497))

(declare-fun m!5239499 () Bool)

(assert (=> b!4504583 m!5239499))

(declare-fun m!5239501 () Bool)

(assert (=> b!4504583 m!5239501))

(declare-fun m!5239503 () Bool)

(assert (=> b!4504572 m!5239503))

(declare-fun m!5239505 () Bool)

(assert (=> b!4504572 m!5239505))

(declare-fun m!5239507 () Bool)

(assert (=> b!4504572 m!5239507))

(declare-fun m!5239509 () Bool)

(assert (=> b!4504572 m!5239509))

(declare-fun m!5239511 () Bool)

(assert (=> b!4504572 m!5239511))

(declare-fun m!5239513 () Bool)

(assert (=> b!4504572 m!5239513))

(declare-fun m!5239515 () Bool)

(assert (=> b!4504572 m!5239515))

(declare-fun m!5239517 () Bool)

(assert (=> b!4504584 m!5239517))

(declare-fun m!5239519 () Bool)

(assert (=> b!4504573 m!5239519))

(declare-fun m!5239521 () Bool)

(assert (=> b!4504591 m!5239521))

(declare-fun m!5239523 () Bool)

(assert (=> b!4504591 m!5239523))

(declare-fun m!5239525 () Bool)

(assert (=> start!444824 m!5239525))

(declare-fun m!5239527 () Bool)

(assert (=> start!444824 m!5239527))

(check-sat (not b!4504580) (not b!4504577) (not b!4504579) (not b!4504581) (not b!4504584) (not b!4504587) (not b!4504592) (not b!4504591) (not b!4504575) tp_is_empty!27799 (not b!4504590) (not b!4504582) tp_is_empty!27797 (not b!4504594) (not b!4504572) (not b!4504586) (not b!4504588) (not b!4504573) (not b!4504574) (not start!444824) (not b!4504585) (not b!4504593) (not b!4504583))
(check-sat)
(get-model)

(declare-fun d!1384263 () Bool)

(declare-fun e!2806166 () Bool)

(assert (=> d!1384263 e!2806166))

(declare-fun res!1873097 () Bool)

(assert (=> d!1384263 (=> res!1873097 e!2806166)))

(declare-fun lt!1684161 () Bool)

(assert (=> d!1384263 (= res!1873097 (not lt!1684161))))

(declare-fun lt!1684162 () Bool)

(assert (=> d!1384263 (= lt!1684161 lt!1684162)))

(declare-fun lt!1684160 () Unit!92671)

(declare-fun e!2806167 () Unit!92671)

(assert (=> d!1384263 (= lt!1684160 e!2806167)))

(declare-fun c!768100 () Bool)

(assert (=> d!1384263 (= c!768100 lt!1684162)))

(declare-fun containsKey!1697 (List!50683 (_ BitVec 64)) Bool)

(assert (=> d!1384263 (= lt!1684162 (containsKey!1697 (toList!4267 lt!1684132) hash!344))))

(assert (=> d!1384263 (= (contains!13240 lt!1684132 hash!344) lt!1684161)))

(declare-fun b!4504621 () Bool)

(declare-fun lt!1684159 () Unit!92671)

(assert (=> b!4504621 (= e!2806167 lt!1684159)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!940 (List!50683 (_ BitVec 64)) Unit!92671)

(assert (=> b!4504621 (= lt!1684159 (lemmaContainsKeyImpliesGetValueByKeyDefined!940 (toList!4267 lt!1684132) hash!344))))

(declare-datatypes ((Option!11056 0))(
  ( (None!11055) (Some!11055 (v!44571 List!50682)) )
))
(declare-fun isDefined!8343 (Option!11056) Bool)

(declare-fun getValueByKey!1036 (List!50683 (_ BitVec 64)) Option!11056)

(assert (=> b!4504621 (isDefined!8343 (getValueByKey!1036 (toList!4267 lt!1684132) hash!344))))

(declare-fun b!4504622 () Bool)

(declare-fun Unit!92680 () Unit!92671)

(assert (=> b!4504622 (= e!2806167 Unit!92680)))

(declare-fun b!4504623 () Bool)

(assert (=> b!4504623 (= e!2806166 (isDefined!8343 (getValueByKey!1036 (toList!4267 lt!1684132) hash!344)))))

(assert (= (and d!1384263 c!768100) b!4504621))

(assert (= (and d!1384263 (not c!768100)) b!4504622))

(assert (= (and d!1384263 (not res!1873097)) b!4504623))

(declare-fun m!5239533 () Bool)

(assert (=> d!1384263 m!5239533))

(declare-fun m!5239535 () Bool)

(assert (=> b!4504621 m!5239535))

(declare-fun m!5239537 () Bool)

(assert (=> b!4504621 m!5239537))

(assert (=> b!4504621 m!5239537))

(declare-fun m!5239541 () Bool)

(assert (=> b!4504621 m!5239541))

(assert (=> b!4504623 m!5239537))

(assert (=> b!4504623 m!5239537))

(assert (=> b!4504623 m!5239541))

(assert (=> b!4504582 d!1384263))

(declare-fun d!1384265 () Bool)

(declare-fun tail!7677 (List!50683) List!50683)

(assert (=> d!1384265 (= (tail!7676 lm!1477) (ListLongMap!2900 (tail!7677 (toList!4267 lm!1477))))))

(declare-fun bs!842820 () Bool)

(assert (= bs!842820 d!1384265))

(declare-fun m!5239561 () Bool)

(assert (=> bs!842820 m!5239561))

(assert (=> b!4504582 d!1384265))

(declare-fun d!1384269 () Bool)

(declare-fun hash!2711 (Hashable!5525 K!11965) (_ BitVec 64))

(assert (=> d!1384269 (= (hash!2707 hashF!1107 key!3287) (hash!2711 hashF!1107 key!3287))))

(declare-fun bs!842821 () Bool)

(assert (= bs!842821 d!1384269))

(declare-fun m!5239563 () Bool)

(assert (=> bs!842821 m!5239563))

(assert (=> b!4504593 d!1384269))

(declare-fun bs!842825 () Bool)

(declare-fun d!1384271 () Bool)

(assert (= bs!842825 (and d!1384271 start!444824)))

(declare-fun lambda!169416 () Int)

(assert (=> bs!842825 (= lambda!169416 lambda!169407)))

(assert (=> d!1384271 (contains!13240 lm!1477 (hash!2707 hashF!1107 key!3287))))

(declare-fun lt!1684184 () Unit!92671)

(declare-fun choose!29190 (ListLongMap!2899 K!11965 Hashable!5525) Unit!92671)

(assert (=> d!1384271 (= lt!1684184 (choose!29190 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1384271 (forall!10191 (toList!4267 lm!1477) lambda!169416)))

(assert (=> d!1384271 (= (lemmaInGenMapThenLongMapContainsHash!204 lm!1477 key!3287 hashF!1107) lt!1684184)))

(declare-fun bs!842826 () Bool)

(assert (= bs!842826 d!1384271))

(assert (=> bs!842826 m!5239475))

(assert (=> bs!842826 m!5239475))

(declare-fun m!5239591 () Bool)

(assert (=> bs!842826 m!5239591))

(declare-fun m!5239593 () Bool)

(assert (=> bs!842826 m!5239593))

(declare-fun m!5239595 () Bool)

(assert (=> bs!842826 m!5239595))

(assert (=> b!4504572 d!1384271))

(declare-fun d!1384277 () Bool)

(declare-fun get!16531 (Option!11056) List!50682)

(assert (=> d!1384277 (= (apply!11867 lm!1477 hash!344) (get!16531 (getValueByKey!1036 (toList!4267 lm!1477) hash!344)))))

(declare-fun bs!842827 () Bool)

(assert (= bs!842827 d!1384277))

(declare-fun m!5239597 () Bool)

(assert (=> bs!842827 m!5239597))

(assert (=> bs!842827 m!5239597))

(declare-fun m!5239599 () Bool)

(assert (=> bs!842827 m!5239599))

(assert (=> b!4504572 d!1384277))

(declare-fun d!1384279 () Bool)

(declare-fun lt!1684187 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8271 (List!50683) (InoxSet tuple2!50956))

(assert (=> d!1384279 (= lt!1684187 (select (content!8271 (toList!4267 lm!1477)) lt!1684127))))

(declare-fun e!2806185 () Bool)

(assert (=> d!1384279 (= lt!1684187 e!2806185)))

(declare-fun res!1873109 () Bool)

(assert (=> d!1384279 (=> (not res!1873109) (not e!2806185))))

(assert (=> d!1384279 (= res!1873109 ((_ is Cons!50559) (toList!4267 lm!1477)))))

(assert (=> d!1384279 (= (contains!13239 (toList!4267 lm!1477) lt!1684127) lt!1684187)))

(declare-fun b!4504646 () Bool)

(declare-fun e!2806184 () Bool)

(assert (=> b!4504646 (= e!2806185 e!2806184)))

(declare-fun res!1873108 () Bool)

(assert (=> b!4504646 (=> res!1873108 e!2806184)))

(assert (=> b!4504646 (= res!1873108 (= (h!56384 (toList!4267 lm!1477)) lt!1684127))))

(declare-fun b!4504647 () Bool)

(assert (=> b!4504647 (= e!2806184 (contains!13239 (t!357645 (toList!4267 lm!1477)) lt!1684127))))

(assert (= (and d!1384279 res!1873109) b!4504646))

(assert (= (and b!4504646 (not res!1873108)) b!4504647))

(declare-fun m!5239601 () Bool)

(assert (=> d!1384279 m!5239601))

(declare-fun m!5239603 () Bool)

(assert (=> d!1384279 m!5239603))

(assert (=> b!4504647 m!5239517))

(assert (=> b!4504572 d!1384279))

(declare-fun b!4504666 () Bool)

(declare-fun e!2806195 () List!50682)

(assert (=> b!4504666 (= e!2806195 (Cons!50558 (h!56383 lt!1684116) (removePairForKey!757 (t!357644 lt!1684116) key!3287)))))

(declare-fun b!4504664 () Bool)

(declare-fun e!2806194 () List!50682)

(assert (=> b!4504664 (= e!2806194 (t!357644 lt!1684116))))

(declare-fun b!4504667 () Bool)

(assert (=> b!4504667 (= e!2806195 Nil!50558)))

(declare-fun b!4504665 () Bool)

(assert (=> b!4504665 (= e!2806194 e!2806195)))

(declare-fun c!768115 () Bool)

(assert (=> b!4504665 (= c!768115 ((_ is Cons!50558) lt!1684116))))

(declare-fun d!1384281 () Bool)

(declare-fun lt!1684197 () List!50682)

(assert (=> d!1384281 (not (containsKey!1694 lt!1684197 key!3287))))

(assert (=> d!1384281 (= lt!1684197 e!2806194)))

(declare-fun c!768116 () Bool)

(assert (=> d!1384281 (= c!768116 (and ((_ is Cons!50558) lt!1684116) (= (_1!28771 (h!56383 lt!1684116)) key!3287)))))

(assert (=> d!1384281 (noDuplicateKeys!1130 lt!1684116)))

(assert (=> d!1384281 (= (removePairForKey!757 lt!1684116 key!3287) lt!1684197)))

(assert (= (and d!1384281 c!768116) b!4504664))

(assert (= (and d!1384281 (not c!768116)) b!4504665))

(assert (= (and b!4504665 c!768115) b!4504666))

(assert (= (and b!4504665 (not c!768115)) b!4504667))

(declare-fun m!5239631 () Bool)

(assert (=> b!4504666 m!5239631))

(declare-fun m!5239633 () Bool)

(assert (=> d!1384281 m!5239633))

(declare-fun m!5239635 () Bool)

(assert (=> d!1384281 m!5239635))

(assert (=> b!4504572 d!1384281))

(declare-fun d!1384291 () Bool)

(assert (=> d!1384291 (contains!13239 (toList!4267 lm!1477) (tuple2!50957 hash!344 lt!1684116))))

(declare-fun lt!1684206 () Unit!92671)

(declare-fun choose!29191 (List!50683 (_ BitVec 64) List!50682) Unit!92671)

(assert (=> d!1384291 (= lt!1684206 (choose!29191 (toList!4267 lm!1477) hash!344 lt!1684116))))

(declare-fun e!2806207 () Bool)

(assert (=> d!1384291 e!2806207))

(declare-fun res!1873121 () Bool)

(assert (=> d!1384291 (=> (not res!1873121) (not e!2806207))))

(declare-fun isStrictlySorted!403 (List!50683) Bool)

(assert (=> d!1384291 (= res!1873121 (isStrictlySorted!403 (toList!4267 lm!1477)))))

(assert (=> d!1384291 (= (lemmaGetValueByKeyImpliesContainsTuple!642 (toList!4267 lm!1477) hash!344 lt!1684116) lt!1684206)))

(declare-fun b!4504679 () Bool)

(assert (=> b!4504679 (= e!2806207 (= (getValueByKey!1036 (toList!4267 lm!1477) hash!344) (Some!11055 lt!1684116)))))

(assert (= (and d!1384291 res!1873121) b!4504679))

(declare-fun m!5239647 () Bool)

(assert (=> d!1384291 m!5239647))

(declare-fun m!5239649 () Bool)

(assert (=> d!1384291 m!5239649))

(declare-fun m!5239651 () Bool)

(assert (=> d!1384291 m!5239651))

(assert (=> b!4504679 m!5239597))

(assert (=> b!4504572 d!1384291))

(declare-fun d!1384297 () Bool)

(declare-fun e!2806208 () Bool)

(assert (=> d!1384297 e!2806208))

(declare-fun res!1873122 () Bool)

(assert (=> d!1384297 (=> res!1873122 e!2806208)))

(declare-fun lt!1684209 () Bool)

(assert (=> d!1384297 (= res!1873122 (not lt!1684209))))

(declare-fun lt!1684210 () Bool)

(assert (=> d!1384297 (= lt!1684209 lt!1684210)))

(declare-fun lt!1684208 () Unit!92671)

(declare-fun e!2806209 () Unit!92671)

(assert (=> d!1384297 (= lt!1684208 e!2806209)))

(declare-fun c!768117 () Bool)

(assert (=> d!1384297 (= c!768117 lt!1684210)))

(assert (=> d!1384297 (= lt!1684210 (containsKey!1697 (toList!4267 lm!1477) lt!1684118))))

(assert (=> d!1384297 (= (contains!13240 lm!1477 lt!1684118) lt!1684209)))

(declare-fun b!4504680 () Bool)

(declare-fun lt!1684207 () Unit!92671)

(assert (=> b!4504680 (= e!2806209 lt!1684207)))

(assert (=> b!4504680 (= lt!1684207 (lemmaContainsKeyImpliesGetValueByKeyDefined!940 (toList!4267 lm!1477) lt!1684118))))

(assert (=> b!4504680 (isDefined!8343 (getValueByKey!1036 (toList!4267 lm!1477) lt!1684118))))

(declare-fun b!4504681 () Bool)

(declare-fun Unit!92683 () Unit!92671)

(assert (=> b!4504681 (= e!2806209 Unit!92683)))

(declare-fun b!4504682 () Bool)

(assert (=> b!4504682 (= e!2806208 (isDefined!8343 (getValueByKey!1036 (toList!4267 lm!1477) lt!1684118)))))

(assert (= (and d!1384297 c!768117) b!4504680))

(assert (= (and d!1384297 (not c!768117)) b!4504681))

(assert (= (and d!1384297 (not res!1873122)) b!4504682))

(declare-fun m!5239653 () Bool)

(assert (=> d!1384297 m!5239653))

(declare-fun m!5239655 () Bool)

(assert (=> b!4504680 m!5239655))

(declare-fun m!5239657 () Bool)

(assert (=> b!4504680 m!5239657))

(assert (=> b!4504680 m!5239657))

(declare-fun m!5239659 () Bool)

(assert (=> b!4504680 m!5239659))

(assert (=> b!4504682 m!5239657))

(assert (=> b!4504682 m!5239657))

(assert (=> b!4504682 m!5239659))

(assert (=> b!4504572 d!1384297))

(declare-fun d!1384299 () Bool)

(declare-fun dynLambda!21121 (Int tuple2!50956) Bool)

(assert (=> d!1384299 (dynLambda!21121 lambda!169407 lt!1684127)))

(declare-fun lt!1684219 () Unit!92671)

(declare-fun choose!29192 (List!50683 Int tuple2!50956) Unit!92671)

(assert (=> d!1384299 (= lt!1684219 (choose!29192 (toList!4267 lm!1477) lambda!169407 lt!1684127))))

(declare-fun e!2806221 () Bool)

(assert (=> d!1384299 e!2806221))

(declare-fun res!1873128 () Bool)

(assert (=> d!1384299 (=> (not res!1873128) (not e!2806221))))

(assert (=> d!1384299 (= res!1873128 (forall!10191 (toList!4267 lm!1477) lambda!169407))))

(assert (=> d!1384299 (= (forallContained!2445 (toList!4267 lm!1477) lambda!169407 lt!1684127) lt!1684219)))

(declare-fun b!4504700 () Bool)

(assert (=> b!4504700 (= e!2806221 (contains!13239 (toList!4267 lm!1477) lt!1684127))))

(assert (= (and d!1384299 res!1873128) b!4504700))

(declare-fun b_lambda!153211 () Bool)

(assert (=> (not b_lambda!153211) (not d!1384299)))

(declare-fun m!5239671 () Bool)

(assert (=> d!1384299 m!5239671))

(declare-fun m!5239673 () Bool)

(assert (=> d!1384299 m!5239673))

(assert (=> d!1384299 m!5239525))

(assert (=> b!4504700 m!5239513))

(assert (=> b!4504572 d!1384299))

(declare-fun d!1384305 () Bool)

(declare-fun e!2806249 () Bool)

(assert (=> d!1384305 e!2806249))

(declare-fun res!1873160 () Bool)

(assert (=> d!1384305 (=> (not res!1873160) (not e!2806249))))

(declare-fun lt!1684259 () ListLongMap!2899)

(assert (=> d!1384305 (= res!1873160 (contains!13240 lt!1684259 (_1!28772 lt!1684126)))))

(declare-fun lt!1684258 () List!50683)

(assert (=> d!1384305 (= lt!1684259 (ListLongMap!2900 lt!1684258))))

(declare-fun lt!1684256 () Unit!92671)

(declare-fun lt!1684257 () Unit!92671)

(assert (=> d!1384305 (= lt!1684256 lt!1684257)))

(assert (=> d!1384305 (= (getValueByKey!1036 lt!1684258 (_1!28772 lt!1684126)) (Some!11055 (_2!28772 lt!1684126)))))

(declare-fun lemmaContainsTupThenGetReturnValue!640 (List!50683 (_ BitVec 64) List!50682) Unit!92671)

(assert (=> d!1384305 (= lt!1684257 (lemmaContainsTupThenGetReturnValue!640 lt!1684258 (_1!28772 lt!1684126) (_2!28772 lt!1684126)))))

(declare-fun insertStrictlySorted!380 (List!50683 (_ BitVec 64) List!50682) List!50683)

(assert (=> d!1384305 (= lt!1684258 (insertStrictlySorted!380 (toList!4267 lm!1477) (_1!28772 lt!1684126) (_2!28772 lt!1684126)))))

(assert (=> d!1384305 (= (+!1482 lm!1477 lt!1684126) lt!1684259)))

(declare-fun b!4504737 () Bool)

(declare-fun res!1873159 () Bool)

(assert (=> b!4504737 (=> (not res!1873159) (not e!2806249))))

(assert (=> b!4504737 (= res!1873159 (= (getValueByKey!1036 (toList!4267 lt!1684259) (_1!28772 lt!1684126)) (Some!11055 (_2!28772 lt!1684126))))))

(declare-fun b!4504738 () Bool)

(assert (=> b!4504738 (= e!2806249 (contains!13239 (toList!4267 lt!1684259) lt!1684126))))

(assert (= (and d!1384305 res!1873160) b!4504737))

(assert (= (and b!4504737 res!1873159) b!4504738))

(declare-fun m!5239717 () Bool)

(assert (=> d!1384305 m!5239717))

(declare-fun m!5239719 () Bool)

(assert (=> d!1384305 m!5239719))

(declare-fun m!5239721 () Bool)

(assert (=> d!1384305 m!5239721))

(declare-fun m!5239723 () Bool)

(assert (=> d!1384305 m!5239723))

(declare-fun m!5239725 () Bool)

(assert (=> b!4504737 m!5239725))

(declare-fun m!5239727 () Bool)

(assert (=> b!4504738 m!5239727))

(assert (=> b!4504583 d!1384305))

(declare-fun d!1384319 () Bool)

(declare-fun e!2806253 () Bool)

(assert (=> d!1384319 e!2806253))

(declare-fun res!1873165 () Bool)

(assert (=> d!1384319 (=> (not res!1873165) (not e!2806253))))

(declare-fun lt!1684263 () ListLongMap!2899)

(assert (=> d!1384319 (= res!1873165 (contains!13240 lt!1684263 (_1!28772 lt!1684119)))))

(declare-fun lt!1684262 () List!50683)

(assert (=> d!1384319 (= lt!1684263 (ListLongMap!2900 lt!1684262))))

(declare-fun lt!1684260 () Unit!92671)

(declare-fun lt!1684261 () Unit!92671)

(assert (=> d!1384319 (= lt!1684260 lt!1684261)))

(assert (=> d!1384319 (= (getValueByKey!1036 lt!1684262 (_1!28772 lt!1684119)) (Some!11055 (_2!28772 lt!1684119)))))

(assert (=> d!1384319 (= lt!1684261 (lemmaContainsTupThenGetReturnValue!640 lt!1684262 (_1!28772 lt!1684119) (_2!28772 lt!1684119)))))

(assert (=> d!1384319 (= lt!1684262 (insertStrictlySorted!380 (toList!4267 lt!1684114) (_1!28772 lt!1684119) (_2!28772 lt!1684119)))))

(assert (=> d!1384319 (= (+!1482 lt!1684114 lt!1684119) lt!1684263)))

(declare-fun b!4504742 () Bool)

(declare-fun res!1873164 () Bool)

(assert (=> b!4504742 (=> (not res!1873164) (not e!2806253))))

(assert (=> b!4504742 (= res!1873164 (= (getValueByKey!1036 (toList!4267 lt!1684263) (_1!28772 lt!1684119)) (Some!11055 (_2!28772 lt!1684119))))))

(declare-fun b!4504743 () Bool)

(assert (=> b!4504743 (= e!2806253 (contains!13239 (toList!4267 lt!1684263) lt!1684119))))

(assert (= (and d!1384319 res!1873165) b!4504742))

(assert (= (and b!4504742 res!1873164) b!4504743))

(declare-fun m!5239729 () Bool)

(assert (=> d!1384319 m!5239729))

(declare-fun m!5239731 () Bool)

(assert (=> d!1384319 m!5239731))

(declare-fun m!5239733 () Bool)

(assert (=> d!1384319 m!5239733))

(declare-fun m!5239735 () Bool)

(assert (=> d!1384319 m!5239735))

(declare-fun m!5239737 () Bool)

(assert (=> b!4504742 m!5239737))

(declare-fun m!5239739 () Bool)

(assert (=> b!4504743 m!5239739))

(assert (=> b!4504583 d!1384319))

(declare-fun d!1384321 () Bool)

(assert (=> d!1384321 true))

(assert (=> d!1384321 true))

(declare-fun lambda!169430 () Int)

(declare-fun forall!10192 (List!50682 Int) Bool)

(assert (=> d!1384321 (= (allKeysSameHash!984 newBucket!178 hash!344 hashF!1107) (forall!10192 newBucket!178 lambda!169430))))

(declare-fun bs!842856 () Bool)

(assert (= bs!842856 d!1384321))

(declare-fun m!5239771 () Bool)

(assert (=> bs!842856 m!5239771))

(assert (=> b!4504581 d!1384321))

(declare-fun d!1384329 () Bool)

(declare-fun res!1873177 () Bool)

(declare-fun e!2806269 () Bool)

(assert (=> d!1384329 (=> res!1873177 e!2806269)))

(declare-fun e!2806267 () Bool)

(assert (=> d!1384329 (= res!1873177 e!2806267)))

(declare-fun res!1873175 () Bool)

(assert (=> d!1384329 (=> (not res!1873175) (not e!2806267))))

(assert (=> d!1384329 (= res!1873175 ((_ is Cons!50559) (t!357645 (toList!4267 lm!1477))))))

(assert (=> d!1384329 (= (containsKeyBiggerList!110 (t!357645 (toList!4267 lm!1477)) key!3287) e!2806269)))

(declare-fun b!4504765 () Bool)

(assert (=> b!4504765 (= e!2806267 (containsKey!1694 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))) key!3287))))

(declare-fun b!4504766 () Bool)

(declare-fun e!2806268 () Bool)

(assert (=> b!4504766 (= e!2806269 e!2806268)))

(declare-fun res!1873176 () Bool)

(assert (=> b!4504766 (=> (not res!1873176) (not e!2806268))))

(assert (=> b!4504766 (= res!1873176 ((_ is Cons!50559) (t!357645 (toList!4267 lm!1477))))))

(declare-fun b!4504767 () Bool)

(assert (=> b!4504767 (= e!2806268 (containsKeyBiggerList!110 (t!357645 (t!357645 (toList!4267 lm!1477))) key!3287))))

(assert (= (and d!1384329 res!1873175) b!4504765))

(assert (= (and d!1384329 (not res!1873177)) b!4504766))

(assert (= (and b!4504766 res!1873176) b!4504767))

(declare-fun m!5239773 () Bool)

(assert (=> b!4504765 m!5239773))

(declare-fun m!5239775 () Bool)

(assert (=> b!4504767 m!5239775))

(assert (=> b!4504592 d!1384329))

(declare-fun d!1384331 () Bool)

(declare-fun res!1873180 () Bool)

(declare-fun e!2806272 () Bool)

(assert (=> d!1384331 (=> res!1873180 e!2806272)))

(declare-fun e!2806270 () Bool)

(assert (=> d!1384331 (= res!1873180 e!2806270)))

(declare-fun res!1873178 () Bool)

(assert (=> d!1384331 (=> (not res!1873178) (not e!2806270))))

(assert (=> d!1384331 (= res!1873178 ((_ is Cons!50559) (toList!4267 lt!1684132)))))

(assert (=> d!1384331 (= (containsKeyBiggerList!110 (toList!4267 lt!1684132) key!3287) e!2806272)))

(declare-fun b!4504768 () Bool)

(assert (=> b!4504768 (= e!2806270 (containsKey!1694 (_2!28772 (h!56384 (toList!4267 lt!1684132))) key!3287))))

(declare-fun b!4504769 () Bool)

(declare-fun e!2806271 () Bool)

(assert (=> b!4504769 (= e!2806272 e!2806271)))

(declare-fun res!1873179 () Bool)

(assert (=> b!4504769 (=> (not res!1873179) (not e!2806271))))

(assert (=> b!4504769 (= res!1873179 ((_ is Cons!50559) (toList!4267 lt!1684132)))))

(declare-fun b!4504770 () Bool)

(assert (=> b!4504770 (= e!2806271 (containsKeyBiggerList!110 (t!357645 (toList!4267 lt!1684132)) key!3287))))

(assert (= (and d!1384331 res!1873178) b!4504768))

(assert (= (and d!1384331 (not res!1873180)) b!4504769))

(assert (= (and b!4504769 res!1873179) b!4504770))

(declare-fun m!5239777 () Bool)

(assert (=> b!4504768 m!5239777))

(declare-fun m!5239779 () Bool)

(assert (=> b!4504770 m!5239779))

(assert (=> b!4504592 d!1384331))

(declare-fun bs!842869 () Bool)

(declare-fun d!1384333 () Bool)

(assert (= bs!842869 (and d!1384333 start!444824)))

(declare-fun lambda!169436 () Int)

(assert (=> bs!842869 (= lambda!169436 lambda!169407)))

(declare-fun bs!842872 () Bool)

(assert (= bs!842872 (and d!1384333 d!1384271)))

(assert (=> bs!842872 (= lambda!169436 lambda!169416)))

(assert (=> d!1384333 (containsKeyBiggerList!110 (toList!4267 lt!1684132) key!3287)))

(declare-fun lt!1684285 () Unit!92671)

(declare-fun choose!29194 (ListLongMap!2899 K!11965 Hashable!5525) Unit!92671)

(assert (=> d!1384333 (= lt!1684285 (choose!29194 lt!1684132 key!3287 hashF!1107))))

(assert (=> d!1384333 (forall!10191 (toList!4267 lt!1684132) lambda!169436)))

(assert (=> d!1384333 (= (lemmaInLongMapThenContainsKeyBiggerList!46 lt!1684132 key!3287 hashF!1107) lt!1684285)))

(declare-fun bs!842880 () Bool)

(assert (= bs!842880 d!1384333))

(assert (=> bs!842880 m!5239491))

(declare-fun m!5239801 () Bool)

(assert (=> bs!842880 m!5239801))

(declare-fun m!5239803 () Bool)

(assert (=> bs!842880 m!5239803))

(assert (=> b!4504592 d!1384333))

(declare-fun d!1384345 () Bool)

(declare-fun e!2806309 () Bool)

(assert (=> d!1384345 e!2806309))

(declare-fun res!1873204 () Bool)

(assert (=> d!1384345 (=> res!1873204 e!2806309)))

(declare-fun e!2806306 () Bool)

(assert (=> d!1384345 (= res!1873204 e!2806306)))

(declare-fun res!1873203 () Bool)

(assert (=> d!1384345 (=> (not res!1873203) (not e!2806306))))

(declare-fun lt!1684310 () Bool)

(assert (=> d!1384345 (= res!1873203 (not lt!1684310))))

(declare-fun lt!1684313 () Bool)

(assert (=> d!1384345 (= lt!1684310 lt!1684313)))

(declare-fun lt!1684311 () Unit!92671)

(declare-fun e!2806305 () Unit!92671)

(assert (=> d!1384345 (= lt!1684311 e!2806305)))

(declare-fun c!768141 () Bool)

(assert (=> d!1384345 (= c!768141 lt!1684313)))

(declare-fun containsKey!1698 (List!50682 K!11965) Bool)

(assert (=> d!1384345 (= lt!1684313 (containsKey!1698 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287))))

(assert (=> d!1384345 (= (contains!13241 (extractMap!1186 (t!357645 (toList!4267 lm!1477))) key!3287) lt!1684310)))

(declare-fun b!4504816 () Bool)

(declare-fun lt!1684314 () Unit!92671)

(assert (=> b!4504816 (= e!2806305 lt!1684314)))

(declare-fun lt!1684316 () Unit!92671)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!941 (List!50682 K!11965) Unit!92671)

(assert (=> b!4504816 (= lt!1684316 (lemmaContainsKeyImpliesGetValueByKeyDefined!941 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287))))

(declare-datatypes ((Option!11057 0))(
  ( (None!11056) (Some!11056 (v!44572 V!12211)) )
))
(declare-fun isDefined!8344 (Option!11057) Bool)

(declare-fun getValueByKey!1037 (List!50682 K!11965) Option!11057)

(assert (=> b!4504816 (isDefined!8344 (getValueByKey!1037 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287))))

(declare-fun lt!1684315 () Unit!92671)

(assert (=> b!4504816 (= lt!1684315 lt!1684316)))

(declare-fun lemmaInListThenGetKeysListContains!433 (List!50682 K!11965) Unit!92671)

(assert (=> b!4504816 (= lt!1684314 (lemmaInListThenGetKeysListContains!433 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287))))

(declare-fun call!313609 () Bool)

(assert (=> b!4504816 call!313609))

(declare-fun b!4504817 () Bool)

(declare-fun e!2806307 () Unit!92671)

(declare-fun Unit!92685 () Unit!92671)

(assert (=> b!4504817 (= e!2806307 Unit!92685)))

(declare-fun bm!313604 () Bool)

(declare-datatypes ((List!50685 0))(
  ( (Nil!50561) (Cons!50561 (h!56388 K!11965) (t!357647 List!50685)) )
))
(declare-fun e!2806308 () List!50685)

(declare-fun contains!13243 (List!50685 K!11965) Bool)

(assert (=> bm!313604 (= call!313609 (contains!13243 e!2806308 key!3287))))

(declare-fun c!768143 () Bool)

(assert (=> bm!313604 (= c!768143 c!768141)))

(declare-fun b!4504818 () Bool)

(assert (=> b!4504818 (= e!2806305 e!2806307)))

(declare-fun c!768142 () Bool)

(assert (=> b!4504818 (= c!768142 call!313609)))

(declare-fun b!4504819 () Bool)

(declare-fun e!2806304 () Bool)

(declare-fun keys!17536 (ListMap!3529) List!50685)

(assert (=> b!4504819 (= e!2806304 (contains!13243 (keys!17536 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287))))

(declare-fun b!4504820 () Bool)

(assert (=> b!4504820 (= e!2806306 (not (contains!13243 (keys!17536 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287)))))

(declare-fun b!4504821 () Bool)

(assert (=> b!4504821 (= e!2806308 (keys!17536 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))))

(declare-fun b!4504822 () Bool)

(assert (=> b!4504822 false))

(declare-fun lt!1684312 () Unit!92671)

(declare-fun lt!1684309 () Unit!92671)

(assert (=> b!4504822 (= lt!1684312 lt!1684309)))

(assert (=> b!4504822 (containsKey!1698 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!436 (List!50682 K!11965) Unit!92671)

(assert (=> b!4504822 (= lt!1684309 (lemmaInGetKeysListThenContainsKey!436 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287))))

(declare-fun Unit!92686 () Unit!92671)

(assert (=> b!4504822 (= e!2806307 Unit!92686)))

(declare-fun b!4504823 () Bool)

(assert (=> b!4504823 (= e!2806309 e!2806304)))

(declare-fun res!1873202 () Bool)

(assert (=> b!4504823 (=> (not res!1873202) (not e!2806304))))

(assert (=> b!4504823 (= res!1873202 (isDefined!8344 (getValueByKey!1037 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287)))))

(declare-fun b!4504824 () Bool)

(declare-fun getKeysList!437 (List!50682) List!50685)

(assert (=> b!4504824 (= e!2806308 (getKeysList!437 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))))

(assert (= (and d!1384345 c!768141) b!4504816))

(assert (= (and d!1384345 (not c!768141)) b!4504818))

(assert (= (and b!4504818 c!768142) b!4504822))

(assert (= (and b!4504818 (not c!768142)) b!4504817))

(assert (= (or b!4504816 b!4504818) bm!313604))

(assert (= (and bm!313604 c!768143) b!4504824))

(assert (= (and bm!313604 (not c!768143)) b!4504821))

(assert (= (and d!1384345 res!1873203) b!4504820))

(assert (= (and d!1384345 (not res!1873204)) b!4504823))

(assert (= (and b!4504823 res!1873202) b!4504819))

(declare-fun m!5239863 () Bool)

(assert (=> b!4504823 m!5239863))

(assert (=> b!4504823 m!5239863))

(declare-fun m!5239865 () Bool)

(assert (=> b!4504823 m!5239865))

(declare-fun m!5239867 () Bool)

(assert (=> b!4504822 m!5239867))

(declare-fun m!5239869 () Bool)

(assert (=> b!4504822 m!5239869))

(declare-fun m!5239871 () Bool)

(assert (=> b!4504824 m!5239871))

(assert (=> b!4504821 m!5239479))

(declare-fun m!5239873 () Bool)

(assert (=> b!4504821 m!5239873))

(assert (=> b!4504820 m!5239479))

(assert (=> b!4504820 m!5239873))

(assert (=> b!4504820 m!5239873))

(declare-fun m!5239875 () Bool)

(assert (=> b!4504820 m!5239875))

(assert (=> b!4504819 m!5239479))

(assert (=> b!4504819 m!5239873))

(assert (=> b!4504819 m!5239873))

(assert (=> b!4504819 m!5239875))

(assert (=> d!1384345 m!5239867))

(declare-fun m!5239877 () Bool)

(assert (=> b!4504816 m!5239877))

(assert (=> b!4504816 m!5239863))

(assert (=> b!4504816 m!5239863))

(assert (=> b!4504816 m!5239865))

(declare-fun m!5239879 () Bool)

(assert (=> b!4504816 m!5239879))

(declare-fun m!5239881 () Bool)

(assert (=> bm!313604 m!5239881))

(assert (=> b!4504590 d!1384345))

(declare-fun bs!842924 () Bool)

(declare-fun d!1384371 () Bool)

(assert (= bs!842924 (and d!1384371 start!444824)))

(declare-fun lambda!169448 () Int)

(assert (=> bs!842924 (= lambda!169448 lambda!169407)))

(declare-fun bs!842925 () Bool)

(assert (= bs!842925 (and d!1384371 d!1384271)))

(assert (=> bs!842925 (= lambda!169448 lambda!169416)))

(declare-fun bs!842926 () Bool)

(assert (= bs!842926 (and d!1384371 d!1384333)))

(assert (=> bs!842926 (= lambda!169448 lambda!169436)))

(declare-fun lt!1684330 () ListMap!3529)

(declare-fun invariantList!989 (List!50682) Bool)

(assert (=> d!1384371 (invariantList!989 (toList!4268 lt!1684330))))

(declare-fun e!2806323 () ListMap!3529)

(assert (=> d!1384371 (= lt!1684330 e!2806323)))

(declare-fun c!768146 () Bool)

(assert (=> d!1384371 (= c!768146 ((_ is Cons!50559) (t!357645 (toList!4267 lm!1477))))))

(assert (=> d!1384371 (forall!10191 (t!357645 (toList!4267 lm!1477)) lambda!169448)))

(assert (=> d!1384371 (= (extractMap!1186 (t!357645 (toList!4267 lm!1477))) lt!1684330)))

(declare-fun b!4504846 () Bool)

(declare-fun addToMapMapFromBucket!657 (List!50682 ListMap!3529) ListMap!3529)

(assert (=> b!4504846 (= e!2806323 (addToMapMapFromBucket!657 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))))))

(declare-fun b!4504847 () Bool)

(assert (=> b!4504847 (= e!2806323 (ListMap!3530 Nil!50558))))

(assert (= (and d!1384371 c!768146) b!4504846))

(assert (= (and d!1384371 (not c!768146)) b!4504847))

(declare-fun m!5239929 () Bool)

(assert (=> d!1384371 m!5239929))

(declare-fun m!5239931 () Bool)

(assert (=> d!1384371 m!5239931))

(declare-fun m!5239933 () Bool)

(assert (=> b!4504846 m!5239933))

(assert (=> b!4504846 m!5239933))

(declare-fun m!5239935 () Bool)

(assert (=> b!4504846 m!5239935))

(assert (=> b!4504590 d!1384371))

(declare-fun d!1384385 () Bool)

(declare-fun e!2806329 () Bool)

(assert (=> d!1384385 e!2806329))

(declare-fun res!1873214 () Bool)

(assert (=> d!1384385 (=> res!1873214 e!2806329)))

(declare-fun e!2806326 () Bool)

(assert (=> d!1384385 (= res!1873214 e!2806326)))

(declare-fun res!1873213 () Bool)

(assert (=> d!1384385 (=> (not res!1873213) (not e!2806326))))

(declare-fun lt!1684332 () Bool)

(assert (=> d!1384385 (= res!1873213 (not lt!1684332))))

(declare-fun lt!1684335 () Bool)

(assert (=> d!1384385 (= lt!1684332 lt!1684335)))

(declare-fun lt!1684333 () Unit!92671)

(declare-fun e!2806325 () Unit!92671)

(assert (=> d!1384385 (= lt!1684333 e!2806325)))

(declare-fun c!768147 () Bool)

(assert (=> d!1384385 (= c!768147 lt!1684335)))

(assert (=> d!1384385 (= lt!1684335 (containsKey!1698 (toList!4268 lt!1684130) key!3287))))

(assert (=> d!1384385 (= (contains!13241 lt!1684130 key!3287) lt!1684332)))

(declare-fun b!4504848 () Bool)

(declare-fun lt!1684336 () Unit!92671)

(assert (=> b!4504848 (= e!2806325 lt!1684336)))

(declare-fun lt!1684338 () Unit!92671)

(assert (=> b!4504848 (= lt!1684338 (lemmaContainsKeyImpliesGetValueByKeyDefined!941 (toList!4268 lt!1684130) key!3287))))

(assert (=> b!4504848 (isDefined!8344 (getValueByKey!1037 (toList!4268 lt!1684130) key!3287))))

(declare-fun lt!1684337 () Unit!92671)

(assert (=> b!4504848 (= lt!1684337 lt!1684338)))

(assert (=> b!4504848 (= lt!1684336 (lemmaInListThenGetKeysListContains!433 (toList!4268 lt!1684130) key!3287))))

(declare-fun call!313610 () Bool)

(assert (=> b!4504848 call!313610))

(declare-fun b!4504849 () Bool)

(declare-fun e!2806327 () Unit!92671)

(declare-fun Unit!92687 () Unit!92671)

(assert (=> b!4504849 (= e!2806327 Unit!92687)))

(declare-fun bm!313605 () Bool)

(declare-fun e!2806328 () List!50685)

(assert (=> bm!313605 (= call!313610 (contains!13243 e!2806328 key!3287))))

(declare-fun c!768149 () Bool)

(assert (=> bm!313605 (= c!768149 c!768147)))

(declare-fun b!4504850 () Bool)

(assert (=> b!4504850 (= e!2806325 e!2806327)))

(declare-fun c!768148 () Bool)

(assert (=> b!4504850 (= c!768148 call!313610)))

(declare-fun b!4504851 () Bool)

(declare-fun e!2806324 () Bool)

(assert (=> b!4504851 (= e!2806324 (contains!13243 (keys!17536 lt!1684130) key!3287))))

(declare-fun b!4504852 () Bool)

(assert (=> b!4504852 (= e!2806326 (not (contains!13243 (keys!17536 lt!1684130) key!3287)))))

(declare-fun b!4504853 () Bool)

(assert (=> b!4504853 (= e!2806328 (keys!17536 lt!1684130))))

(declare-fun b!4504854 () Bool)

(assert (=> b!4504854 false))

(declare-fun lt!1684334 () Unit!92671)

(declare-fun lt!1684331 () Unit!92671)

(assert (=> b!4504854 (= lt!1684334 lt!1684331)))

(assert (=> b!4504854 (containsKey!1698 (toList!4268 lt!1684130) key!3287)))

(assert (=> b!4504854 (= lt!1684331 (lemmaInGetKeysListThenContainsKey!436 (toList!4268 lt!1684130) key!3287))))

(declare-fun Unit!92688 () Unit!92671)

(assert (=> b!4504854 (= e!2806327 Unit!92688)))

(declare-fun b!4504855 () Bool)

(assert (=> b!4504855 (= e!2806329 e!2806324)))

(declare-fun res!1873212 () Bool)

(assert (=> b!4504855 (=> (not res!1873212) (not e!2806324))))

(assert (=> b!4504855 (= res!1873212 (isDefined!8344 (getValueByKey!1037 (toList!4268 lt!1684130) key!3287)))))

(declare-fun b!4504856 () Bool)

(assert (=> b!4504856 (= e!2806328 (getKeysList!437 (toList!4268 lt!1684130)))))

(assert (= (and d!1384385 c!768147) b!4504848))

(assert (= (and d!1384385 (not c!768147)) b!4504850))

(assert (= (and b!4504850 c!768148) b!4504854))

(assert (= (and b!4504850 (not c!768148)) b!4504849))

(assert (= (or b!4504848 b!4504850) bm!313605))

(assert (= (and bm!313605 c!768149) b!4504856))

(assert (= (and bm!313605 (not c!768149)) b!4504853))

(assert (= (and d!1384385 res!1873213) b!4504852))

(assert (= (and d!1384385 (not res!1873214)) b!4504855))

(assert (= (and b!4504855 res!1873212) b!4504851))

(declare-fun m!5239937 () Bool)

(assert (=> b!4504855 m!5239937))

(assert (=> b!4504855 m!5239937))

(declare-fun m!5239939 () Bool)

(assert (=> b!4504855 m!5239939))

(declare-fun m!5239941 () Bool)

(assert (=> b!4504854 m!5239941))

(declare-fun m!5239943 () Bool)

(assert (=> b!4504854 m!5239943))

(declare-fun m!5239945 () Bool)

(assert (=> b!4504856 m!5239945))

(declare-fun m!5239947 () Bool)

(assert (=> b!4504853 m!5239947))

(assert (=> b!4504852 m!5239947))

(assert (=> b!4504852 m!5239947))

(declare-fun m!5239949 () Bool)

(assert (=> b!4504852 m!5239949))

(assert (=> b!4504851 m!5239947))

(assert (=> b!4504851 m!5239947))

(assert (=> b!4504851 m!5239949))

(assert (=> d!1384385 m!5239941))

(declare-fun m!5239951 () Bool)

(assert (=> b!4504848 m!5239951))

(assert (=> b!4504848 m!5239937))

(assert (=> b!4504848 m!5239937))

(assert (=> b!4504848 m!5239939))

(declare-fun m!5239953 () Bool)

(assert (=> b!4504848 m!5239953))

(declare-fun m!5239955 () Bool)

(assert (=> bm!313605 m!5239955))

(assert (=> b!4504590 d!1384385))

(declare-fun bs!842927 () Bool)

(declare-fun d!1384387 () Bool)

(assert (= bs!842927 (and d!1384387 start!444824)))

(declare-fun lambda!169451 () Int)

(assert (=> bs!842927 (= lambda!169451 lambda!169407)))

(declare-fun bs!842928 () Bool)

(assert (= bs!842928 (and d!1384387 d!1384271)))

(assert (=> bs!842928 (= lambda!169451 lambda!169416)))

(declare-fun bs!842929 () Bool)

(assert (= bs!842929 (and d!1384387 d!1384333)))

(assert (=> bs!842929 (= lambda!169451 lambda!169436)))

(declare-fun bs!842930 () Bool)

(assert (= bs!842930 (and d!1384387 d!1384371)))

(assert (=> bs!842930 (= lambda!169451 lambda!169448)))

(assert (=> d!1384387 (contains!13241 (extractMap!1186 (toList!4267 lt!1684132)) key!3287)))

(declare-fun lt!1684341 () Unit!92671)

(declare-fun choose!29196 (ListLongMap!2899 K!11965 Hashable!5525) Unit!92671)

(assert (=> d!1384387 (= lt!1684341 (choose!29196 lt!1684132 key!3287 hashF!1107))))

(assert (=> d!1384387 (forall!10191 (toList!4267 lt!1684132) lambda!169451)))

(assert (=> d!1384387 (= (lemmaListContainsThenExtractedMapContains!100 lt!1684132 key!3287 hashF!1107) lt!1684341)))

(declare-fun bs!842931 () Bool)

(assert (= bs!842931 d!1384387))

(assert (=> bs!842931 m!5239481))

(assert (=> bs!842931 m!5239481))

(declare-fun m!5239957 () Bool)

(assert (=> bs!842931 m!5239957))

(declare-fun m!5239959 () Bool)

(assert (=> bs!842931 m!5239959))

(declare-fun m!5239961 () Bool)

(assert (=> bs!842931 m!5239961))

(assert (=> b!4504590 d!1384387))

(declare-fun bs!842932 () Bool)

(declare-fun d!1384389 () Bool)

(assert (= bs!842932 (and d!1384389 d!1384371)))

(declare-fun lambda!169452 () Int)

(assert (=> bs!842932 (= lambda!169452 lambda!169448)))

(declare-fun bs!842933 () Bool)

(assert (= bs!842933 (and d!1384389 d!1384333)))

(assert (=> bs!842933 (= lambda!169452 lambda!169436)))

(declare-fun bs!842934 () Bool)

(assert (= bs!842934 (and d!1384389 d!1384387)))

(assert (=> bs!842934 (= lambda!169452 lambda!169451)))

(declare-fun bs!842935 () Bool)

(assert (= bs!842935 (and d!1384389 start!444824)))

(assert (=> bs!842935 (= lambda!169452 lambda!169407)))

(declare-fun bs!842936 () Bool)

(assert (= bs!842936 (and d!1384389 d!1384271)))

(assert (=> bs!842936 (= lambda!169452 lambda!169416)))

(declare-fun lt!1684342 () ListMap!3529)

(assert (=> d!1384389 (invariantList!989 (toList!4268 lt!1684342))))

(declare-fun e!2806330 () ListMap!3529)

(assert (=> d!1384389 (= lt!1684342 e!2806330)))

(declare-fun c!768150 () Bool)

(assert (=> d!1384389 (= c!768150 ((_ is Cons!50559) (toList!4267 lt!1684132)))))

(assert (=> d!1384389 (forall!10191 (toList!4267 lt!1684132) lambda!169452)))

(assert (=> d!1384389 (= (extractMap!1186 (toList!4267 lt!1684132)) lt!1684342)))

(declare-fun b!4504857 () Bool)

(assert (=> b!4504857 (= e!2806330 (addToMapMapFromBucket!657 (_2!28772 (h!56384 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))))))

(declare-fun b!4504858 () Bool)

(assert (=> b!4504858 (= e!2806330 (ListMap!3530 Nil!50558))))

(assert (= (and d!1384389 c!768150) b!4504857))

(assert (= (and d!1384389 (not c!768150)) b!4504858))

(declare-fun m!5239963 () Bool)

(assert (=> d!1384389 m!5239963))

(declare-fun m!5239965 () Bool)

(assert (=> d!1384389 m!5239965))

(declare-fun m!5239967 () Bool)

(assert (=> b!4504857 m!5239967))

(assert (=> b!4504857 m!5239967))

(declare-fun m!5239969 () Bool)

(assert (=> b!4504857 m!5239969))

(assert (=> b!4504590 d!1384389))

(declare-fun d!1384391 () Bool)

(assert (=> d!1384391 (= (apply!11867 lt!1684132 hash!344) (get!16531 (getValueByKey!1036 (toList!4267 lt!1684132) hash!344)))))

(declare-fun bs!842937 () Bool)

(assert (= bs!842937 d!1384391))

(assert (=> bs!842937 m!5239537))

(assert (=> bs!842937 m!5239537))

(declare-fun m!5239971 () Bool)

(assert (=> bs!842937 m!5239971))

(assert (=> b!4504580 d!1384391))

(declare-fun d!1384393 () Bool)

(declare-fun e!2806336 () Bool)

(assert (=> d!1384393 e!2806336))

(declare-fun res!1873217 () Bool)

(assert (=> d!1384393 (=> res!1873217 e!2806336)))

(declare-fun e!2806333 () Bool)

(assert (=> d!1384393 (= res!1873217 e!2806333)))

(declare-fun res!1873216 () Bool)

(assert (=> d!1384393 (=> (not res!1873216) (not e!2806333))))

(declare-fun lt!1684344 () Bool)

(assert (=> d!1384393 (= res!1873216 (not lt!1684344))))

(declare-fun lt!1684347 () Bool)

(assert (=> d!1384393 (= lt!1684344 lt!1684347)))

(declare-fun lt!1684345 () Unit!92671)

(declare-fun e!2806332 () Unit!92671)

(assert (=> d!1384393 (= lt!1684345 e!2806332)))

(declare-fun c!768151 () Bool)

(assert (=> d!1384393 (= c!768151 lt!1684347)))

(assert (=> d!1384393 (= lt!1684347 (containsKey!1698 (toList!4268 lt!1684131) key!3287))))

(assert (=> d!1384393 (= (contains!13241 lt!1684131 key!3287) lt!1684344)))

(declare-fun b!4504859 () Bool)

(declare-fun lt!1684348 () Unit!92671)

(assert (=> b!4504859 (= e!2806332 lt!1684348)))

(declare-fun lt!1684350 () Unit!92671)

(assert (=> b!4504859 (= lt!1684350 (lemmaContainsKeyImpliesGetValueByKeyDefined!941 (toList!4268 lt!1684131) key!3287))))

(assert (=> b!4504859 (isDefined!8344 (getValueByKey!1037 (toList!4268 lt!1684131) key!3287))))

(declare-fun lt!1684349 () Unit!92671)

(assert (=> b!4504859 (= lt!1684349 lt!1684350)))

(assert (=> b!4504859 (= lt!1684348 (lemmaInListThenGetKeysListContains!433 (toList!4268 lt!1684131) key!3287))))

(declare-fun call!313611 () Bool)

(assert (=> b!4504859 call!313611))

(declare-fun b!4504860 () Bool)

(declare-fun e!2806334 () Unit!92671)

(declare-fun Unit!92689 () Unit!92671)

(assert (=> b!4504860 (= e!2806334 Unit!92689)))

(declare-fun bm!313606 () Bool)

(declare-fun e!2806335 () List!50685)

(assert (=> bm!313606 (= call!313611 (contains!13243 e!2806335 key!3287))))

(declare-fun c!768153 () Bool)

(assert (=> bm!313606 (= c!768153 c!768151)))

(declare-fun b!4504861 () Bool)

(assert (=> b!4504861 (= e!2806332 e!2806334)))

(declare-fun c!768152 () Bool)

(assert (=> b!4504861 (= c!768152 call!313611)))

(declare-fun b!4504862 () Bool)

(declare-fun e!2806331 () Bool)

(assert (=> b!4504862 (= e!2806331 (contains!13243 (keys!17536 lt!1684131) key!3287))))

(declare-fun b!4504863 () Bool)

(assert (=> b!4504863 (= e!2806333 (not (contains!13243 (keys!17536 lt!1684131) key!3287)))))

(declare-fun b!4504864 () Bool)

(assert (=> b!4504864 (= e!2806335 (keys!17536 lt!1684131))))

(declare-fun b!4504865 () Bool)

(assert (=> b!4504865 false))

(declare-fun lt!1684346 () Unit!92671)

(declare-fun lt!1684343 () Unit!92671)

(assert (=> b!4504865 (= lt!1684346 lt!1684343)))

(assert (=> b!4504865 (containsKey!1698 (toList!4268 lt!1684131) key!3287)))

(assert (=> b!4504865 (= lt!1684343 (lemmaInGetKeysListThenContainsKey!436 (toList!4268 lt!1684131) key!3287))))

(declare-fun Unit!92690 () Unit!92671)

(assert (=> b!4504865 (= e!2806334 Unit!92690)))

(declare-fun b!4504866 () Bool)

(assert (=> b!4504866 (= e!2806336 e!2806331)))

(declare-fun res!1873215 () Bool)

(assert (=> b!4504866 (=> (not res!1873215) (not e!2806331))))

(assert (=> b!4504866 (= res!1873215 (isDefined!8344 (getValueByKey!1037 (toList!4268 lt!1684131) key!3287)))))

(declare-fun b!4504867 () Bool)

(assert (=> b!4504867 (= e!2806335 (getKeysList!437 (toList!4268 lt!1684131)))))

(assert (= (and d!1384393 c!768151) b!4504859))

(assert (= (and d!1384393 (not c!768151)) b!4504861))

(assert (= (and b!4504861 c!768152) b!4504865))

(assert (= (and b!4504861 (not c!768152)) b!4504860))

(assert (= (or b!4504859 b!4504861) bm!313606))

(assert (= (and bm!313606 c!768153) b!4504867))

(assert (= (and bm!313606 (not c!768153)) b!4504864))

(assert (= (and d!1384393 res!1873216) b!4504863))

(assert (= (and d!1384393 (not res!1873217)) b!4504866))

(assert (= (and b!4504866 res!1873215) b!4504862))

(declare-fun m!5239973 () Bool)

(assert (=> b!4504866 m!5239973))

(assert (=> b!4504866 m!5239973))

(declare-fun m!5239975 () Bool)

(assert (=> b!4504866 m!5239975))

(declare-fun m!5239977 () Bool)

(assert (=> b!4504865 m!5239977))

(declare-fun m!5239979 () Bool)

(assert (=> b!4504865 m!5239979))

(declare-fun m!5239981 () Bool)

(assert (=> b!4504867 m!5239981))

(declare-fun m!5239983 () Bool)

(assert (=> b!4504864 m!5239983))

(assert (=> b!4504863 m!5239983))

(assert (=> b!4504863 m!5239983))

(declare-fun m!5239985 () Bool)

(assert (=> b!4504863 m!5239985))

(assert (=> b!4504862 m!5239983))

(assert (=> b!4504862 m!5239983))

(assert (=> b!4504862 m!5239985))

(assert (=> d!1384393 m!5239977))

(declare-fun m!5239987 () Bool)

(assert (=> b!4504859 m!5239987))

(assert (=> b!4504859 m!5239973))

(assert (=> b!4504859 m!5239973))

(assert (=> b!4504859 m!5239975))

(declare-fun m!5239989 () Bool)

(assert (=> b!4504859 m!5239989))

(declare-fun m!5239991 () Bool)

(assert (=> bm!313606 m!5239991))

(assert (=> b!4504591 d!1384393))

(declare-fun bs!842938 () Bool)

(declare-fun d!1384395 () Bool)

(assert (= bs!842938 (and d!1384395 d!1384371)))

(declare-fun lambda!169453 () Int)

(assert (=> bs!842938 (= lambda!169453 lambda!169448)))

(declare-fun bs!842939 () Bool)

(assert (= bs!842939 (and d!1384395 d!1384333)))

(assert (=> bs!842939 (= lambda!169453 lambda!169436)))

(declare-fun bs!842940 () Bool)

(assert (= bs!842940 (and d!1384395 d!1384387)))

(assert (=> bs!842940 (= lambda!169453 lambda!169451)))

(declare-fun bs!842941 () Bool)

(assert (= bs!842941 (and d!1384395 start!444824)))

(assert (=> bs!842941 (= lambda!169453 lambda!169407)))

(declare-fun bs!842942 () Bool)

(assert (= bs!842942 (and d!1384395 d!1384271)))

(assert (=> bs!842942 (= lambda!169453 lambda!169416)))

(declare-fun bs!842943 () Bool)

(assert (= bs!842943 (and d!1384395 d!1384389)))

(assert (=> bs!842943 (= lambda!169453 lambda!169452)))

(declare-fun lt!1684351 () ListMap!3529)

(assert (=> d!1384395 (invariantList!989 (toList!4268 lt!1684351))))

(declare-fun e!2806337 () ListMap!3529)

(assert (=> d!1384395 (= lt!1684351 e!2806337)))

(declare-fun c!768154 () Bool)

(assert (=> d!1384395 (= c!768154 ((_ is Cons!50559) (toList!4267 lm!1477)))))

(assert (=> d!1384395 (forall!10191 (toList!4267 lm!1477) lambda!169453)))

(assert (=> d!1384395 (= (extractMap!1186 (toList!4267 lm!1477)) lt!1684351)))

(declare-fun b!4504868 () Bool)

(assert (=> b!4504868 (= e!2806337 (addToMapMapFromBucket!657 (_2!28772 (h!56384 (toList!4267 lm!1477))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))))

(declare-fun b!4504869 () Bool)

(assert (=> b!4504869 (= e!2806337 (ListMap!3530 Nil!50558))))

(assert (= (and d!1384395 c!768154) b!4504868))

(assert (= (and d!1384395 (not c!768154)) b!4504869))

(declare-fun m!5239993 () Bool)

(assert (=> d!1384395 m!5239993))

(declare-fun m!5239995 () Bool)

(assert (=> d!1384395 m!5239995))

(assert (=> b!4504868 m!5239479))

(assert (=> b!4504868 m!5239479))

(declare-fun m!5239997 () Bool)

(assert (=> b!4504868 m!5239997))

(assert (=> b!4504591 d!1384395))

(declare-fun d!1384397 () Bool)

(declare-fun res!1873222 () Bool)

(declare-fun e!2806342 () Bool)

(assert (=> d!1384397 (=> res!1873222 e!2806342)))

(assert (=> d!1384397 (= res!1873222 (not ((_ is Cons!50558) newBucket!178)))))

(assert (=> d!1384397 (= (noDuplicateKeys!1130 newBucket!178) e!2806342)))

(declare-fun b!4504874 () Bool)

(declare-fun e!2806343 () Bool)

(assert (=> b!4504874 (= e!2806342 e!2806343)))

(declare-fun res!1873223 () Bool)

(assert (=> b!4504874 (=> (not res!1873223) (not e!2806343))))

(assert (=> b!4504874 (= res!1873223 (not (containsKey!1694 (t!357644 newBucket!178) (_1!28771 (h!56383 newBucket!178)))))))

(declare-fun b!4504875 () Bool)

(assert (=> b!4504875 (= e!2806343 (noDuplicateKeys!1130 (t!357644 newBucket!178)))))

(assert (= (and d!1384397 (not res!1873222)) b!4504874))

(assert (= (and b!4504874 res!1873223) b!4504875))

(declare-fun m!5239999 () Bool)

(assert (=> b!4504874 m!5239999))

(declare-fun m!5240001 () Bool)

(assert (=> b!4504875 m!5240001))

(assert (=> b!4504577 d!1384397))

(declare-fun d!1384399 () Bool)

(declare-fun e!2806346 () Bool)

(assert (=> d!1384399 e!2806346))

(declare-fun res!1873226 () Bool)

(assert (=> d!1384399 (=> (not res!1873226) (not e!2806346))))

(declare-fun lt!1684354 () ListMap!3529)

(assert (=> d!1384399 (= res!1873226 (not (contains!13241 lt!1684354 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!113 (List!50682 K!11965) List!50682)

(assert (=> d!1384399 (= lt!1684354 (ListMap!3530 (removePresrvNoDuplicatedKeys!113 (toList!4268 lt!1684130) key!3287)))))

(assert (=> d!1384399 (= (-!356 lt!1684130 key!3287) lt!1684354)))

(declare-fun b!4504878 () Bool)

(declare-fun content!8274 (List!50685) (InoxSet K!11965))

(assert (=> b!4504878 (= e!2806346 (= ((_ map and) (content!8274 (keys!17536 lt!1684130)) ((_ map not) (store ((as const (Array K!11965 Bool)) false) key!3287 true))) (content!8274 (keys!17536 lt!1684354))))))

(assert (= (and d!1384399 res!1873226) b!4504878))

(declare-fun m!5240003 () Bool)

(assert (=> d!1384399 m!5240003))

(declare-fun m!5240005 () Bool)

(assert (=> d!1384399 m!5240005))

(assert (=> b!4504878 m!5239947))

(declare-fun m!5240007 () Bool)

(assert (=> b!4504878 m!5240007))

(declare-fun m!5240009 () Bool)

(assert (=> b!4504878 m!5240009))

(declare-fun m!5240011 () Bool)

(assert (=> b!4504878 m!5240011))

(assert (=> b!4504878 m!5239947))

(assert (=> b!4504878 m!5240009))

(declare-fun m!5240013 () Bool)

(assert (=> b!4504878 m!5240013))

(assert (=> b!4504588 d!1384399))

(declare-fun bs!842944 () Bool)

(declare-fun d!1384401 () Bool)

(assert (= bs!842944 (and d!1384401 d!1384395)))

(declare-fun lambda!169456 () Int)

(assert (=> bs!842944 (= lambda!169456 lambda!169453)))

(declare-fun bs!842945 () Bool)

(assert (= bs!842945 (and d!1384401 d!1384371)))

(assert (=> bs!842945 (= lambda!169456 lambda!169448)))

(declare-fun bs!842946 () Bool)

(assert (= bs!842946 (and d!1384401 d!1384333)))

(assert (=> bs!842946 (= lambda!169456 lambda!169436)))

(declare-fun bs!842947 () Bool)

(assert (= bs!842947 (and d!1384401 d!1384387)))

(assert (=> bs!842947 (= lambda!169456 lambda!169451)))

(declare-fun bs!842948 () Bool)

(assert (= bs!842948 (and d!1384401 start!444824)))

(assert (=> bs!842948 (= lambda!169456 lambda!169407)))

(declare-fun bs!842949 () Bool)

(assert (= bs!842949 (and d!1384401 d!1384271)))

(assert (=> bs!842949 (= lambda!169456 lambda!169416)))

(declare-fun bs!842950 () Bool)

(assert (= bs!842950 (and d!1384401 d!1384389)))

(assert (=> bs!842950 (= lambda!169456 lambda!169452)))

(assert (=> d!1384401 (eq!587 (extractMap!1186 (toList!4267 (+!1482 lt!1684132 (tuple2!50957 hash!344 newBucket!178)))) (-!356 (extractMap!1186 (toList!4267 lt!1684132)) key!3287))))

(declare-fun lt!1684357 () Unit!92671)

(declare-fun choose!29197 (ListLongMap!2899 (_ BitVec 64) List!50682 K!11965 Hashable!5525) Unit!92671)

(assert (=> d!1384401 (= lt!1684357 (choose!29197 lt!1684132 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1384401 (forall!10191 (toList!4267 lt!1684132) lambda!169456)))

(assert (=> d!1384401 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!115 lt!1684132 hash!344 newBucket!178 key!3287 hashF!1107) lt!1684357)))

(declare-fun bs!842951 () Bool)

(assert (= bs!842951 d!1384401))

(declare-fun m!5240015 () Bool)

(assert (=> bs!842951 m!5240015))

(assert (=> bs!842951 m!5239481))

(declare-fun m!5240017 () Bool)

(assert (=> bs!842951 m!5240017))

(declare-fun m!5240019 () Bool)

(assert (=> bs!842951 m!5240019))

(assert (=> bs!842951 m!5240019))

(declare-fun m!5240021 () Bool)

(assert (=> bs!842951 m!5240021))

(declare-fun m!5240023 () Bool)

(assert (=> bs!842951 m!5240023))

(assert (=> bs!842951 m!5239481))

(assert (=> bs!842951 m!5240021))

(declare-fun m!5240025 () Bool)

(assert (=> bs!842951 m!5240025))

(assert (=> b!4504588 d!1384401))

(declare-fun d!1384403 () Bool)

(declare-fun content!8275 (List!50682) (InoxSet tuple2!50954))

(assert (=> d!1384403 (= (eq!587 (extractMap!1186 (toList!4267 lt!1684114)) (-!356 lt!1684130 key!3287)) (= (content!8275 (toList!4268 (extractMap!1186 (toList!4267 lt!1684114)))) (content!8275 (toList!4268 (-!356 lt!1684130 key!3287)))))))

(declare-fun bs!842952 () Bool)

(assert (= bs!842952 d!1384403))

(declare-fun m!5240027 () Bool)

(assert (=> bs!842952 m!5240027))

(declare-fun m!5240029 () Bool)

(assert (=> bs!842952 m!5240029))

(assert (=> b!4504588 d!1384403))

(declare-fun bs!842953 () Bool)

(declare-fun d!1384405 () Bool)

(assert (= bs!842953 (and d!1384405 d!1384401)))

(declare-fun lambda!169457 () Int)

(assert (=> bs!842953 (= lambda!169457 lambda!169456)))

(declare-fun bs!842954 () Bool)

(assert (= bs!842954 (and d!1384405 d!1384395)))

(assert (=> bs!842954 (= lambda!169457 lambda!169453)))

(declare-fun bs!842955 () Bool)

(assert (= bs!842955 (and d!1384405 d!1384371)))

(assert (=> bs!842955 (= lambda!169457 lambda!169448)))

(declare-fun bs!842956 () Bool)

(assert (= bs!842956 (and d!1384405 d!1384333)))

(assert (=> bs!842956 (= lambda!169457 lambda!169436)))

(declare-fun bs!842957 () Bool)

(assert (= bs!842957 (and d!1384405 d!1384387)))

(assert (=> bs!842957 (= lambda!169457 lambda!169451)))

(declare-fun bs!842958 () Bool)

(assert (= bs!842958 (and d!1384405 start!444824)))

(assert (=> bs!842958 (= lambda!169457 lambda!169407)))

(declare-fun bs!842959 () Bool)

(assert (= bs!842959 (and d!1384405 d!1384271)))

(assert (=> bs!842959 (= lambda!169457 lambda!169416)))

(declare-fun bs!842960 () Bool)

(assert (= bs!842960 (and d!1384405 d!1384389)))

(assert (=> bs!842960 (= lambda!169457 lambda!169452)))

(declare-fun lt!1684358 () ListMap!3529)

(assert (=> d!1384405 (invariantList!989 (toList!4268 lt!1684358))))

(declare-fun e!2806347 () ListMap!3529)

(assert (=> d!1384405 (= lt!1684358 e!2806347)))

(declare-fun c!768155 () Bool)

(assert (=> d!1384405 (= c!768155 ((_ is Cons!50559) (toList!4267 (+!1482 lt!1684132 lt!1684119))))))

(assert (=> d!1384405 (forall!10191 (toList!4267 (+!1482 lt!1684132 lt!1684119)) lambda!169457)))

(assert (=> d!1384405 (= (extractMap!1186 (toList!4267 (+!1482 lt!1684132 lt!1684119))) lt!1684358)))

(declare-fun b!4504879 () Bool)

(assert (=> b!4504879 (= e!2806347 (addToMapMapFromBucket!657 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))))))

(declare-fun b!4504880 () Bool)

(assert (=> b!4504880 (= e!2806347 (ListMap!3530 Nil!50558))))

(assert (= (and d!1384405 c!768155) b!4504879))

(assert (= (and d!1384405 (not c!768155)) b!4504880))

(declare-fun m!5240031 () Bool)

(assert (=> d!1384405 m!5240031))

(declare-fun m!5240033 () Bool)

(assert (=> d!1384405 m!5240033))

(declare-fun m!5240035 () Bool)

(assert (=> b!4504879 m!5240035))

(assert (=> b!4504879 m!5240035))

(declare-fun m!5240037 () Bool)

(assert (=> b!4504879 m!5240037))

(assert (=> b!4504588 d!1384405))

(declare-fun d!1384407 () Bool)

(declare-fun e!2806348 () Bool)

(assert (=> d!1384407 e!2806348))

(declare-fun res!1873228 () Bool)

(assert (=> d!1384407 (=> (not res!1873228) (not e!2806348))))

(declare-fun lt!1684362 () ListLongMap!2899)

(assert (=> d!1384407 (= res!1873228 (contains!13240 lt!1684362 (_1!28772 lt!1684119)))))

(declare-fun lt!1684361 () List!50683)

(assert (=> d!1384407 (= lt!1684362 (ListLongMap!2900 lt!1684361))))

(declare-fun lt!1684359 () Unit!92671)

(declare-fun lt!1684360 () Unit!92671)

(assert (=> d!1384407 (= lt!1684359 lt!1684360)))

(assert (=> d!1384407 (= (getValueByKey!1036 lt!1684361 (_1!28772 lt!1684119)) (Some!11055 (_2!28772 lt!1684119)))))

(assert (=> d!1384407 (= lt!1684360 (lemmaContainsTupThenGetReturnValue!640 lt!1684361 (_1!28772 lt!1684119) (_2!28772 lt!1684119)))))

(assert (=> d!1384407 (= lt!1684361 (insertStrictlySorted!380 (toList!4267 lt!1684132) (_1!28772 lt!1684119) (_2!28772 lt!1684119)))))

(assert (=> d!1384407 (= (+!1482 lt!1684132 lt!1684119) lt!1684362)))

(declare-fun b!4504881 () Bool)

(declare-fun res!1873227 () Bool)

(assert (=> b!4504881 (=> (not res!1873227) (not e!2806348))))

(assert (=> b!4504881 (= res!1873227 (= (getValueByKey!1036 (toList!4267 lt!1684362) (_1!28772 lt!1684119)) (Some!11055 (_2!28772 lt!1684119))))))

(declare-fun b!4504882 () Bool)

(assert (=> b!4504882 (= e!2806348 (contains!13239 (toList!4267 lt!1684362) lt!1684119))))

(assert (= (and d!1384407 res!1873228) b!4504881))

(assert (= (and b!4504881 res!1873227) b!4504882))

(declare-fun m!5240039 () Bool)

(assert (=> d!1384407 m!5240039))

(declare-fun m!5240041 () Bool)

(assert (=> d!1384407 m!5240041))

(declare-fun m!5240043 () Bool)

(assert (=> d!1384407 m!5240043))

(declare-fun m!5240045 () Bool)

(assert (=> d!1384407 m!5240045))

(declare-fun m!5240047 () Bool)

(assert (=> b!4504881 m!5240047))

(declare-fun m!5240049 () Bool)

(assert (=> b!4504882 m!5240049))

(assert (=> b!4504588 d!1384407))

(declare-fun d!1384409 () Bool)

(declare-fun head!9356 (List!50683) tuple2!50956)

(assert (=> d!1384409 (= (head!9354 lm!1477) (head!9356 (toList!4267 lm!1477)))))

(declare-fun bs!842961 () Bool)

(assert (= bs!842961 d!1384409))

(declare-fun m!5240051 () Bool)

(assert (=> bs!842961 m!5240051))

(assert (=> b!4504588 d!1384409))

(declare-fun d!1384411 () Bool)

(assert (=> d!1384411 (= (eq!587 lt!1684129 lt!1684131) (= (content!8275 (toList!4268 lt!1684129)) (content!8275 (toList!4268 lt!1684131))))))

(declare-fun bs!842962 () Bool)

(assert (= bs!842962 d!1384411))

(declare-fun m!5240053 () Bool)

(assert (=> bs!842962 m!5240053))

(declare-fun m!5240055 () Bool)

(assert (=> bs!842962 m!5240055))

(assert (=> b!4504588 d!1384411))

(declare-fun bs!842963 () Bool)

(declare-fun d!1384413 () Bool)

(assert (= bs!842963 (and d!1384413 d!1384401)))

(declare-fun lambda!169458 () Int)

(assert (=> bs!842963 (= lambda!169458 lambda!169456)))

(declare-fun bs!842964 () Bool)

(assert (= bs!842964 (and d!1384413 d!1384395)))

(assert (=> bs!842964 (= lambda!169458 lambda!169453)))

(declare-fun bs!842965 () Bool)

(assert (= bs!842965 (and d!1384413 d!1384371)))

(assert (=> bs!842965 (= lambda!169458 lambda!169448)))

(declare-fun bs!842966 () Bool)

(assert (= bs!842966 (and d!1384413 d!1384387)))

(assert (=> bs!842966 (= lambda!169458 lambda!169451)))

(declare-fun bs!842967 () Bool)

(assert (= bs!842967 (and d!1384413 start!444824)))

(assert (=> bs!842967 (= lambda!169458 lambda!169407)))

(declare-fun bs!842968 () Bool)

(assert (= bs!842968 (and d!1384413 d!1384271)))

(assert (=> bs!842968 (= lambda!169458 lambda!169416)))

(declare-fun bs!842969 () Bool)

(assert (= bs!842969 (and d!1384413 d!1384389)))

(assert (=> bs!842969 (= lambda!169458 lambda!169452)))

(declare-fun bs!842970 () Bool)

(assert (= bs!842970 (and d!1384413 d!1384405)))

(assert (=> bs!842970 (= lambda!169458 lambda!169457)))

(declare-fun bs!842971 () Bool)

(assert (= bs!842971 (and d!1384413 d!1384333)))

(assert (=> bs!842971 (= lambda!169458 lambda!169436)))

(declare-fun lt!1684363 () ListMap!3529)

(assert (=> d!1384413 (invariantList!989 (toList!4268 lt!1684363))))

(declare-fun e!2806349 () ListMap!3529)

(assert (=> d!1384413 (= lt!1684363 e!2806349)))

(declare-fun c!768156 () Bool)

(assert (=> d!1384413 (= c!768156 ((_ is Cons!50559) (toList!4267 lt!1684114)))))

(assert (=> d!1384413 (forall!10191 (toList!4267 lt!1684114) lambda!169458)))

(assert (=> d!1384413 (= (extractMap!1186 (toList!4267 lt!1684114)) lt!1684363)))

(declare-fun b!4504883 () Bool)

(assert (=> b!4504883 (= e!2806349 (addToMapMapFromBucket!657 (_2!28772 (h!56384 (toList!4267 lt!1684114))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))))))

(declare-fun b!4504884 () Bool)

(assert (=> b!4504884 (= e!2806349 (ListMap!3530 Nil!50558))))

(assert (= (and d!1384413 c!768156) b!4504883))

(assert (= (and d!1384413 (not c!768156)) b!4504884))

(declare-fun m!5240057 () Bool)

(assert (=> d!1384413 m!5240057))

(declare-fun m!5240059 () Bool)

(assert (=> d!1384413 m!5240059))

(declare-fun m!5240061 () Bool)

(assert (=> b!4504883 m!5240061))

(assert (=> b!4504883 m!5240061))

(declare-fun m!5240063 () Bool)

(assert (=> b!4504883 m!5240063))

(assert (=> b!4504588 d!1384413))

(declare-fun d!1384415 () Bool)

(declare-fun e!2806350 () Bool)

(assert (=> d!1384415 e!2806350))

(declare-fun res!1873230 () Bool)

(assert (=> d!1384415 (=> (not res!1873230) (not e!2806350))))

(declare-fun lt!1684367 () ListLongMap!2899)

(assert (=> d!1384415 (= res!1873230 (contains!13240 lt!1684367 (_1!28772 lt!1684126)))))

(declare-fun lt!1684366 () List!50683)

(assert (=> d!1384415 (= lt!1684367 (ListLongMap!2900 lt!1684366))))

(declare-fun lt!1684364 () Unit!92671)

(declare-fun lt!1684365 () Unit!92671)

(assert (=> d!1384415 (= lt!1684364 lt!1684365)))

(assert (=> d!1384415 (= (getValueByKey!1036 lt!1684366 (_1!28772 lt!1684126)) (Some!11055 (_2!28772 lt!1684126)))))

(assert (=> d!1384415 (= lt!1684365 (lemmaContainsTupThenGetReturnValue!640 lt!1684366 (_1!28772 lt!1684126) (_2!28772 lt!1684126)))))

(assert (=> d!1384415 (= lt!1684366 (insertStrictlySorted!380 (toList!4267 lt!1684132) (_1!28772 lt!1684126) (_2!28772 lt!1684126)))))

(assert (=> d!1384415 (= (+!1482 lt!1684132 lt!1684126) lt!1684367)))

(declare-fun b!4504885 () Bool)

(declare-fun res!1873229 () Bool)

(assert (=> b!4504885 (=> (not res!1873229) (not e!2806350))))

(assert (=> b!4504885 (= res!1873229 (= (getValueByKey!1036 (toList!4267 lt!1684367) (_1!28772 lt!1684126)) (Some!11055 (_2!28772 lt!1684126))))))

(declare-fun b!4504886 () Bool)

(assert (=> b!4504886 (= e!2806350 (contains!13239 (toList!4267 lt!1684367) lt!1684126))))

(assert (= (and d!1384415 res!1873230) b!4504885))

(assert (= (and b!4504885 res!1873229) b!4504886))

(declare-fun m!5240065 () Bool)

(assert (=> d!1384415 m!5240065))

(declare-fun m!5240067 () Bool)

(assert (=> d!1384415 m!5240067))

(declare-fun m!5240069 () Bool)

(assert (=> d!1384415 m!5240069))

(declare-fun m!5240071 () Bool)

(assert (=> d!1384415 m!5240071))

(declare-fun m!5240073 () Bool)

(assert (=> b!4504885 m!5240073))

(declare-fun m!5240075 () Bool)

(assert (=> b!4504886 m!5240075))

(assert (=> b!4504588 d!1384415))

(declare-fun d!1384417 () Bool)

(declare-fun res!1873235 () Bool)

(declare-fun e!2806355 () Bool)

(assert (=> d!1384417 (=> res!1873235 e!2806355)))

(assert (=> d!1384417 (= res!1873235 (and ((_ is Cons!50558) lt!1684116) (= (_1!28771 (h!56383 lt!1684116)) key!3287)))))

(assert (=> d!1384417 (= (containsKey!1694 lt!1684116 key!3287) e!2806355)))

(declare-fun b!4504891 () Bool)

(declare-fun e!2806356 () Bool)

(assert (=> b!4504891 (= e!2806355 e!2806356)))

(declare-fun res!1873236 () Bool)

(assert (=> b!4504891 (=> (not res!1873236) (not e!2806356))))

(assert (=> b!4504891 (= res!1873236 ((_ is Cons!50558) lt!1684116))))

(declare-fun b!4504892 () Bool)

(assert (=> b!4504892 (= e!2806356 (containsKey!1694 (t!357644 lt!1684116) key!3287))))

(assert (= (and d!1384417 (not res!1873235)) b!4504891))

(assert (= (and b!4504891 res!1873236) b!4504892))

(declare-fun m!5240077 () Bool)

(assert (=> b!4504892 m!5240077))

(assert (=> b!4504586 d!1384417))

(declare-fun d!1384419 () Bool)

(declare-fun res!1873241 () Bool)

(declare-fun e!2806361 () Bool)

(assert (=> d!1384419 (=> res!1873241 e!2806361)))

(assert (=> d!1384419 (= res!1873241 ((_ is Nil!50559) (toList!4267 lm!1477)))))

(assert (=> d!1384419 (= (forall!10191 (toList!4267 lm!1477) lambda!169407) e!2806361)))

(declare-fun b!4504897 () Bool)

(declare-fun e!2806362 () Bool)

(assert (=> b!4504897 (= e!2806361 e!2806362)))

(declare-fun res!1873242 () Bool)

(assert (=> b!4504897 (=> (not res!1873242) (not e!2806362))))

(assert (=> b!4504897 (= res!1873242 (dynLambda!21121 lambda!169407 (h!56384 (toList!4267 lm!1477))))))

(declare-fun b!4504898 () Bool)

(assert (=> b!4504898 (= e!2806362 (forall!10191 (t!357645 (toList!4267 lm!1477)) lambda!169407))))

(assert (= (and d!1384419 (not res!1873241)) b!4504897))

(assert (= (and b!4504897 res!1873242) b!4504898))

(declare-fun b_lambda!153219 () Bool)

(assert (=> (not b_lambda!153219) (not b!4504897)))

(declare-fun m!5240079 () Bool)

(assert (=> b!4504897 m!5240079))

(declare-fun m!5240081 () Bool)

(assert (=> b!4504898 m!5240081))

(assert (=> start!444824 d!1384419))

(declare-fun d!1384421 () Bool)

(assert (=> d!1384421 (= (inv!66149 lm!1477) (isStrictlySorted!403 (toList!4267 lm!1477)))))

(declare-fun bs!842972 () Bool)

(assert (= bs!842972 d!1384421))

(assert (=> bs!842972 m!5239651))

(assert (=> start!444824 d!1384421))

(declare-fun d!1384423 () Bool)

(assert (=> d!1384423 (= (head!9354 lt!1684133) (head!9356 (toList!4267 lt!1684133)))))

(declare-fun bs!842973 () Bool)

(assert (= bs!842973 d!1384423))

(declare-fun m!5240083 () Bool)

(assert (=> bs!842973 m!5240083))

(assert (=> b!4504587 d!1384423))

(declare-fun bs!842974 () Bool)

(declare-fun d!1384425 () Bool)

(assert (= bs!842974 (and d!1384425 d!1384413)))

(declare-fun lambda!169461 () Int)

(assert (=> bs!842974 (= lambda!169461 lambda!169458)))

(declare-fun bs!842975 () Bool)

(assert (= bs!842975 (and d!1384425 d!1384401)))

(assert (=> bs!842975 (= lambda!169461 lambda!169456)))

(declare-fun bs!842976 () Bool)

(assert (= bs!842976 (and d!1384425 d!1384395)))

(assert (=> bs!842976 (= lambda!169461 lambda!169453)))

(declare-fun bs!842977 () Bool)

(assert (= bs!842977 (and d!1384425 d!1384371)))

(assert (=> bs!842977 (= lambda!169461 lambda!169448)))

(declare-fun bs!842978 () Bool)

(assert (= bs!842978 (and d!1384425 d!1384387)))

(assert (=> bs!842978 (= lambda!169461 lambda!169451)))

(declare-fun bs!842979 () Bool)

(assert (= bs!842979 (and d!1384425 start!444824)))

(assert (=> bs!842979 (= lambda!169461 lambda!169407)))

(declare-fun bs!842980 () Bool)

(assert (= bs!842980 (and d!1384425 d!1384271)))

(assert (=> bs!842980 (= lambda!169461 lambda!169416)))

(declare-fun bs!842981 () Bool)

(assert (= bs!842981 (and d!1384425 d!1384389)))

(assert (=> bs!842981 (= lambda!169461 lambda!169452)))

(declare-fun bs!842982 () Bool)

(assert (= bs!842982 (and d!1384425 d!1384405)))

(assert (=> bs!842982 (= lambda!169461 lambda!169457)))

(declare-fun bs!842983 () Bool)

(assert (= bs!842983 (and d!1384425 d!1384333)))

(assert (=> bs!842983 (= lambda!169461 lambda!169436)))

(assert (=> d!1384425 (not (contains!13241 (extractMap!1186 (toList!4267 lm!1477)) key!3287))))

(declare-fun lt!1684370 () Unit!92671)

(declare-fun choose!29198 (ListLongMap!2899 K!11965 Hashable!5525) Unit!92671)

(assert (=> d!1384425 (= lt!1684370 (choose!29198 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1384425 (forall!10191 (toList!4267 lm!1477) lambda!169461)))

(assert (=> d!1384425 (= (lemmaNotInItsHashBucketThenNotInMap!118 lm!1477 key!3287 hashF!1107) lt!1684370)))

(declare-fun bs!842984 () Bool)

(assert (= bs!842984 d!1384425))

(assert (=> bs!842984 m!5239523))

(assert (=> bs!842984 m!5239523))

(declare-fun m!5240085 () Bool)

(assert (=> bs!842984 m!5240085))

(declare-fun m!5240087 () Bool)

(assert (=> bs!842984 m!5240087))

(declare-fun m!5240089 () Bool)

(assert (=> bs!842984 m!5240089))

(assert (=> b!4504574 d!1384425))

(declare-fun d!1384427 () Bool)

(declare-fun isEmpty!28617 (List!50683) Bool)

(assert (=> d!1384427 (= (isEmpty!28615 lm!1477) (isEmpty!28617 (toList!4267 lm!1477)))))

(declare-fun bs!842985 () Bool)

(assert (= bs!842985 d!1384427))

(declare-fun m!5240091 () Bool)

(assert (=> bs!842985 m!5240091))

(assert (=> b!4504585 d!1384427))

(declare-fun bs!842986 () Bool)

(declare-fun d!1384429 () Bool)

(assert (= bs!842986 (and d!1384429 d!1384413)))

(declare-fun lambda!169462 () Int)

(assert (=> bs!842986 (= lambda!169462 lambda!169458)))

(declare-fun bs!842987 () Bool)

(assert (= bs!842987 (and d!1384429 d!1384401)))

(assert (=> bs!842987 (= lambda!169462 lambda!169456)))

(declare-fun bs!842988 () Bool)

(assert (= bs!842988 (and d!1384429 d!1384425)))

(assert (=> bs!842988 (= lambda!169462 lambda!169461)))

(declare-fun bs!842989 () Bool)

(assert (= bs!842989 (and d!1384429 d!1384395)))

(assert (=> bs!842989 (= lambda!169462 lambda!169453)))

(declare-fun bs!842990 () Bool)

(assert (= bs!842990 (and d!1384429 d!1384371)))

(assert (=> bs!842990 (= lambda!169462 lambda!169448)))

(declare-fun bs!842991 () Bool)

(assert (= bs!842991 (and d!1384429 d!1384387)))

(assert (=> bs!842991 (= lambda!169462 lambda!169451)))

(declare-fun bs!842992 () Bool)

(assert (= bs!842992 (and d!1384429 start!444824)))

(assert (=> bs!842992 (= lambda!169462 lambda!169407)))

(declare-fun bs!842993 () Bool)

(assert (= bs!842993 (and d!1384429 d!1384271)))

(assert (=> bs!842993 (= lambda!169462 lambda!169416)))

(declare-fun bs!842994 () Bool)

(assert (= bs!842994 (and d!1384429 d!1384389)))

(assert (=> bs!842994 (= lambda!169462 lambda!169452)))

(declare-fun bs!842995 () Bool)

(assert (= bs!842995 (and d!1384429 d!1384405)))

(assert (=> bs!842995 (= lambda!169462 lambda!169457)))

(declare-fun bs!842996 () Bool)

(assert (= bs!842996 (and d!1384429 d!1384333)))

(assert (=> bs!842996 (= lambda!169462 lambda!169436)))

(declare-fun lt!1684371 () ListMap!3529)

(assert (=> d!1384429 (invariantList!989 (toList!4268 lt!1684371))))

(declare-fun e!2806363 () ListMap!3529)

(assert (=> d!1384429 (= lt!1684371 e!2806363)))

(declare-fun c!768157 () Bool)

(assert (=> d!1384429 (= c!768157 ((_ is Cons!50559) (toList!4267 lt!1684133)))))

(assert (=> d!1384429 (forall!10191 (toList!4267 lt!1684133) lambda!169462)))

(assert (=> d!1384429 (= (extractMap!1186 (toList!4267 lt!1684133)) lt!1684371)))

(declare-fun b!4504899 () Bool)

(assert (=> b!4504899 (= e!2806363 (addToMapMapFromBucket!657 (_2!28772 (h!56384 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))))))

(declare-fun b!4504900 () Bool)

(assert (=> b!4504900 (= e!2806363 (ListMap!3530 Nil!50558))))

(assert (= (and d!1384429 c!768157) b!4504899))

(assert (= (and d!1384429 (not c!768157)) b!4504900))

(declare-fun m!5240093 () Bool)

(assert (=> d!1384429 m!5240093))

(declare-fun m!5240095 () Bool)

(assert (=> d!1384429 m!5240095))

(declare-fun m!5240097 () Bool)

(assert (=> b!4504899 m!5240097))

(assert (=> b!4504899 m!5240097))

(declare-fun m!5240099 () Bool)

(assert (=> b!4504899 m!5240099))

(assert (=> b!4504585 d!1384429))

(declare-fun d!1384431 () Bool)

(assert (=> d!1384431 (= (eq!587 lt!1684131 lt!1684129) (= (content!8275 (toList!4268 lt!1684131)) (content!8275 (toList!4268 lt!1684129))))))

(declare-fun bs!842997 () Bool)

(assert (= bs!842997 d!1384431))

(assert (=> bs!842997 m!5240055))

(assert (=> bs!842997 m!5240053))

(assert (=> b!4504594 d!1384431))

(declare-fun bs!842998 () Bool)

(declare-fun d!1384433 () Bool)

(assert (= bs!842998 (and d!1384433 d!1384413)))

(declare-fun lambda!169465 () Int)

(assert (=> bs!842998 (not (= lambda!169465 lambda!169458))))

(declare-fun bs!842999 () Bool)

(assert (= bs!842999 (and d!1384433 d!1384401)))

(assert (=> bs!842999 (not (= lambda!169465 lambda!169456))))

(declare-fun bs!843000 () Bool)

(assert (= bs!843000 (and d!1384433 d!1384425)))

(assert (=> bs!843000 (not (= lambda!169465 lambda!169461))))

(declare-fun bs!843001 () Bool)

(assert (= bs!843001 (and d!1384433 d!1384395)))

(assert (=> bs!843001 (not (= lambda!169465 lambda!169453))))

(declare-fun bs!843002 () Bool)

(assert (= bs!843002 (and d!1384433 d!1384371)))

(assert (=> bs!843002 (not (= lambda!169465 lambda!169448))))

(declare-fun bs!843003 () Bool)

(assert (= bs!843003 (and d!1384433 d!1384429)))

(assert (=> bs!843003 (not (= lambda!169465 lambda!169462))))

(declare-fun bs!843004 () Bool)

(assert (= bs!843004 (and d!1384433 d!1384387)))

(assert (=> bs!843004 (not (= lambda!169465 lambda!169451))))

(declare-fun bs!843005 () Bool)

(assert (= bs!843005 (and d!1384433 start!444824)))

(assert (=> bs!843005 (not (= lambda!169465 lambda!169407))))

(declare-fun bs!843006 () Bool)

(assert (= bs!843006 (and d!1384433 d!1384271)))

(assert (=> bs!843006 (not (= lambda!169465 lambda!169416))))

(declare-fun bs!843007 () Bool)

(assert (= bs!843007 (and d!1384433 d!1384389)))

(assert (=> bs!843007 (not (= lambda!169465 lambda!169452))))

(declare-fun bs!843008 () Bool)

(assert (= bs!843008 (and d!1384433 d!1384405)))

(assert (=> bs!843008 (not (= lambda!169465 lambda!169457))))

(declare-fun bs!843009 () Bool)

(assert (= bs!843009 (and d!1384433 d!1384333)))

(assert (=> bs!843009 (not (= lambda!169465 lambda!169436))))

(assert (=> d!1384433 true))

(assert (=> d!1384433 (= (allKeysSameHashInMap!1237 lm!1477 hashF!1107) (forall!10191 (toList!4267 lm!1477) lambda!169465))))

(declare-fun bs!843010 () Bool)

(assert (= bs!843010 d!1384433))

(declare-fun m!5240101 () Bool)

(assert (=> bs!843010 m!5240101))

(assert (=> b!4504573 d!1384433))

(declare-fun d!1384435 () Bool)

(declare-fun lt!1684372 () Bool)

(assert (=> d!1384435 (= lt!1684372 (select (content!8271 (t!357645 (toList!4267 lm!1477))) lt!1684127))))

(declare-fun e!2806365 () Bool)

(assert (=> d!1384435 (= lt!1684372 e!2806365)))

(declare-fun res!1873244 () Bool)

(assert (=> d!1384435 (=> (not res!1873244) (not e!2806365))))

(assert (=> d!1384435 (= res!1873244 ((_ is Cons!50559) (t!357645 (toList!4267 lm!1477))))))

(assert (=> d!1384435 (= (contains!13239 (t!357645 (toList!4267 lm!1477)) lt!1684127) lt!1684372)))

(declare-fun b!4504903 () Bool)

(declare-fun e!2806364 () Bool)

(assert (=> b!4504903 (= e!2806365 e!2806364)))

(declare-fun res!1873243 () Bool)

(assert (=> b!4504903 (=> res!1873243 e!2806364)))

(assert (=> b!4504903 (= res!1873243 (= (h!56384 (t!357645 (toList!4267 lm!1477))) lt!1684127))))

(declare-fun b!4504904 () Bool)

(assert (=> b!4504904 (= e!2806364 (contains!13239 (t!357645 (t!357645 (toList!4267 lm!1477))) lt!1684127))))

(assert (= (and d!1384435 res!1873244) b!4504903))

(assert (= (and b!4504903 (not res!1873243)) b!4504904))

(declare-fun m!5240103 () Bool)

(assert (=> d!1384435 m!5240103))

(declare-fun m!5240105 () Bool)

(assert (=> d!1384435 m!5240105))

(declare-fun m!5240107 () Bool)

(assert (=> b!4504904 m!5240107))

(assert (=> b!4504584 d!1384435))

(declare-fun b!4504909 () Bool)

(declare-fun e!2806368 () Bool)

(declare-fun tp!1337605 () Bool)

(assert (=> b!4504909 (= e!2806368 (and tp_is_empty!27797 tp_is_empty!27799 tp!1337605))))

(assert (=> b!4504575 (= tp!1337593 e!2806368)))

(assert (= (and b!4504575 ((_ is Cons!50558) (t!357644 newBucket!178))) b!4504909))

(declare-fun b!4504914 () Bool)

(declare-fun e!2806371 () Bool)

(declare-fun tp!1337610 () Bool)

(declare-fun tp!1337611 () Bool)

(assert (=> b!4504914 (= e!2806371 (and tp!1337610 tp!1337611))))

(assert (=> b!4504579 (= tp!1337592 e!2806371)))

(assert (= (and b!4504579 ((_ is Cons!50559) (toList!4267 lm!1477))) b!4504914))

(declare-fun b_lambda!153221 () Bool)

(assert (= b_lambda!153219 (or start!444824 b_lambda!153221)))

(declare-fun bs!843011 () Bool)

(declare-fun d!1384437 () Bool)

(assert (= bs!843011 (and d!1384437 start!444824)))

(assert (=> bs!843011 (= (dynLambda!21121 lambda!169407 (h!56384 (toList!4267 lm!1477))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lm!1477)))))))

(declare-fun m!5240109 () Bool)

(assert (=> bs!843011 m!5240109))

(assert (=> b!4504897 d!1384437))

(declare-fun b_lambda!153223 () Bool)

(assert (= b_lambda!153211 (or start!444824 b_lambda!153223)))

(declare-fun bs!843012 () Bool)

(declare-fun d!1384439 () Bool)

(assert (= bs!843012 (and d!1384439 start!444824)))

(assert (=> bs!843012 (= (dynLambda!21121 lambda!169407 lt!1684127) (noDuplicateKeys!1130 (_2!28772 lt!1684127)))))

(declare-fun m!5240111 () Bool)

(assert (=> bs!843012 m!5240111))

(assert (=> d!1384299 d!1384439))

(check-sat (not d!1384389) (not d!1384271) (not d!1384279) (not d!1384265) (not b!4504621) (not b!4504768) (not b!4504770) (not d!1384393) (not b!4504914) (not b!4504822) (not d!1384277) tp_is_empty!27797 (not d!1384297) (not d!1384429) (not b!4504868) (not b!4504859) (not d!1384345) (not b!4504904) (not d!1384333) (not b!4504875) (not b!4504737) (not b!4504879) (not d!1384371) (not b!4504863) (not b!4504857) (not b!4504854) (not b!4504881) (not b!4504848) (not b!4504682) (not d!1384395) (not d!1384263) (not b!4504853) (not d!1384427) (not b!4504865) (not b!4504765) (not d!1384281) (not b!4504886) (not d!1384399) (not b!4504874) (not bs!843011) (not b!4504898) (not b!4504909) (not d!1384405) (not b!4504885) (not b!4504862) (not b!4504743) (not b!4504816) (not d!1384415) (not b!4504864) (not bm!313606) (not d!1384423) (not bm!313604) (not d!1384403) (not d!1384385) (not b_lambda!153221) (not d!1384305) (not b!4504738) (not b!4504819) (not b!4504867) (not b!4504821) (not b!4504679) (not b!4504742) (not d!1384391) (not bm!313605) (not d!1384433) (not d!1384421) (not d!1384319) (not b!4504680) (not d!1384407) (not b!4504855) (not d!1384291) (not d!1384431) (not b!4504767) (not b!4504856) (not d!1384425) (not b!4504852) (not d!1384409) (not b!4504878) (not b!4504820) (not b!4504883) (not b!4504700) (not d!1384387) (not b!4504824) (not b!4504892) (not d!1384299) (not b!4504666) (not b!4504647) (not d!1384269) (not b!4504882) (not b!4504899) (not d!1384435) (not b!4504623) tp_is_empty!27799 (not b!4504851) (not d!1384321) (not b_lambda!153223) (not b!4504866) (not b!4504823) (not d!1384413) (not bs!843012) (not b!4504846) (not d!1384401) (not d!1384411))
(check-sat)
(get-model)

(declare-fun d!1384441 () Bool)

(assert (=> d!1384441 (= (get!16531 (getValueByKey!1036 (toList!4267 lt!1684132) hash!344)) (v!44571 (getValueByKey!1036 (toList!4267 lt!1684132) hash!344)))))

(assert (=> d!1384391 d!1384441))

(declare-fun b!4504923 () Bool)

(declare-fun e!2806376 () Option!11056)

(assert (=> b!4504923 (= e!2806376 (Some!11055 (_2!28772 (h!56384 (toList!4267 lt!1684132)))))))

(declare-fun b!4504926 () Bool)

(declare-fun e!2806377 () Option!11056)

(assert (=> b!4504926 (= e!2806377 None!11055)))

(declare-fun d!1384443 () Bool)

(declare-fun c!768162 () Bool)

(assert (=> d!1384443 (= c!768162 (and ((_ is Cons!50559) (toList!4267 lt!1684132)) (= (_1!28772 (h!56384 (toList!4267 lt!1684132))) hash!344)))))

(assert (=> d!1384443 (= (getValueByKey!1036 (toList!4267 lt!1684132) hash!344) e!2806376)))

(declare-fun b!4504925 () Bool)

(assert (=> b!4504925 (= e!2806377 (getValueByKey!1036 (t!357645 (toList!4267 lt!1684132)) hash!344))))

(declare-fun b!4504924 () Bool)

(assert (=> b!4504924 (= e!2806376 e!2806377)))

(declare-fun c!768163 () Bool)

(assert (=> b!4504924 (= c!768163 (and ((_ is Cons!50559) (toList!4267 lt!1684132)) (not (= (_1!28772 (h!56384 (toList!4267 lt!1684132))) hash!344))))))

(assert (= (and d!1384443 c!768162) b!4504923))

(assert (= (and d!1384443 (not c!768162)) b!4504924))

(assert (= (and b!4504924 c!768163) b!4504925))

(assert (= (and b!4504924 (not c!768163)) b!4504926))

(declare-fun m!5240113 () Bool)

(assert (=> b!4504925 m!5240113))

(assert (=> d!1384391 d!1384443))

(declare-fun bs!843013 () Bool)

(declare-fun b!4504940 () Bool)

(assert (= bs!843013 (and b!4504940 d!1384321)))

(declare-fun lambda!169494 () Int)

(assert (=> bs!843013 (not (= lambda!169494 lambda!169430))))

(assert (=> b!4504940 true))

(declare-fun bs!843014 () Bool)

(declare-fun b!4504941 () Bool)

(assert (= bs!843014 (and b!4504941 d!1384321)))

(declare-fun lambda!169495 () Int)

(assert (=> bs!843014 (not (= lambda!169495 lambda!169430))))

(declare-fun bs!843015 () Bool)

(assert (= bs!843015 (and b!4504941 b!4504940)))

(assert (=> bs!843015 (= lambda!169495 lambda!169494)))

(assert (=> b!4504941 true))

(declare-fun lambda!169496 () Int)

(assert (=> bs!843014 (not (= lambda!169496 lambda!169430))))

(declare-fun lt!1684415 () ListMap!3529)

(assert (=> bs!843015 (= (= lt!1684415 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169496 lambda!169494))))

(assert (=> b!4504941 (= (= lt!1684415 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169496 lambda!169495))))

(assert (=> b!4504941 true))

(declare-fun bs!843016 () Bool)

(declare-fun d!1384445 () Bool)

(assert (= bs!843016 (and d!1384445 d!1384321)))

(declare-fun lambda!169497 () Int)

(assert (=> bs!843016 (not (= lambda!169497 lambda!169430))))

(declare-fun bs!843017 () Bool)

(assert (= bs!843017 (and d!1384445 b!4504940)))

(declare-fun lt!1684425 () ListMap!3529)

(assert (=> bs!843017 (= (= lt!1684425 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169497 lambda!169494))))

(declare-fun bs!843018 () Bool)

(assert (= bs!843018 (and d!1384445 b!4504941)))

(assert (=> bs!843018 (= (= lt!1684425 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169497 lambda!169495))))

(assert (=> bs!843018 (= (= lt!1684425 lt!1684415) (= lambda!169497 lambda!169496))))

(assert (=> d!1384445 true))

(declare-fun b!4504937 () Bool)

(declare-fun res!1873252 () Bool)

(declare-fun e!2806385 () Bool)

(assert (=> b!4504937 (=> (not res!1873252) (not e!2806385))))

(assert (=> b!4504937 (= res!1873252 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) lambda!169497))))

(declare-fun call!313620 () Bool)

(declare-fun c!768166 () Bool)

(declare-fun bm!313613 () Bool)

(assert (=> bm!313613 (= call!313620 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (ite c!768166 lambda!169494 lambda!169496)))))

(declare-fun b!4504938 () Bool)

(assert (=> b!4504938 (= e!2806385 (invariantList!989 (toList!4268 lt!1684425)))))

(assert (=> d!1384445 e!2806385))

(declare-fun res!1873253 () Bool)

(assert (=> d!1384445 (=> (not res!1873253) (not e!2806385))))

(assert (=> d!1384445 (= res!1873253 (forall!10192 (_2!28772 (h!56384 (toList!4267 lm!1477))) lambda!169497))))

(declare-fun e!2806386 () ListMap!3529)

(assert (=> d!1384445 (= lt!1684425 e!2806386)))

(assert (=> d!1384445 (= c!768166 ((_ is Nil!50558) (_2!28772 (h!56384 (toList!4267 lm!1477)))))))

(assert (=> d!1384445 (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lm!1477))))))

(assert (=> d!1384445 (= (addToMapMapFromBucket!657 (_2!28772 (h!56384 (toList!4267 lm!1477))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) lt!1684425)))

(declare-fun bm!313614 () Bool)

(declare-fun call!313618 () Bool)

(declare-fun lt!1684424 () ListMap!3529)

(assert (=> bm!313614 (= call!313618 (forall!10192 (ite c!768166 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (toList!4268 lt!1684424)) (ite c!768166 lambda!169494 lambda!169496)))))

(declare-fun bm!313615 () Bool)

(declare-fun call!313619 () Unit!92671)

(declare-fun lemmaContainsAllItsOwnKeys!311 (ListMap!3529) Unit!92671)

(assert (=> bm!313615 (= call!313619 (lemmaContainsAllItsOwnKeys!311 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))))

(declare-fun b!4504939 () Bool)

(declare-fun e!2806384 () Bool)

(assert (=> b!4504939 (= e!2806384 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) lambda!169496))))

(assert (=> b!4504940 (= e!2806386 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))

(declare-fun lt!1684428 () Unit!92671)

(assert (=> b!4504940 (= lt!1684428 call!313619)))

(assert (=> b!4504940 call!313620))

(declare-fun lt!1684427 () Unit!92671)

(assert (=> b!4504940 (= lt!1684427 lt!1684428)))

(assert (=> b!4504940 call!313618))

(declare-fun lt!1684430 () Unit!92671)

(declare-fun Unit!92691 () Unit!92671)

(assert (=> b!4504940 (= lt!1684430 Unit!92691)))

(assert (=> b!4504941 (= e!2806386 lt!1684415)))

(declare-fun +!1483 (ListMap!3529 tuple2!50954) ListMap!3529)

(assert (=> b!4504941 (= lt!1684424 (+!1483 (extractMap!1186 (t!357645 (toList!4267 lm!1477))) (h!56383 (_2!28772 (h!56384 (toList!4267 lm!1477))))))))

(assert (=> b!4504941 (= lt!1684415 (addToMapMapFromBucket!657 (t!357644 (_2!28772 (h!56384 (toList!4267 lm!1477)))) (+!1483 (extractMap!1186 (t!357645 (toList!4267 lm!1477))) (h!56383 (_2!28772 (h!56384 (toList!4267 lm!1477)))))))))

(declare-fun lt!1684434 () Unit!92671)

(assert (=> b!4504941 (= lt!1684434 call!313619)))

(assert (=> b!4504941 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) lambda!169495)))

(declare-fun lt!1684417 () Unit!92671)

(assert (=> b!4504941 (= lt!1684417 lt!1684434)))

(assert (=> b!4504941 (forall!10192 (toList!4268 lt!1684424) lambda!169496)))

(declare-fun lt!1684422 () Unit!92671)

(declare-fun Unit!92692 () Unit!92671)

(assert (=> b!4504941 (= lt!1684422 Unit!92692)))

(assert (=> b!4504941 (forall!10192 (t!357644 (_2!28772 (h!56384 (toList!4267 lm!1477)))) lambda!169496)))

(declare-fun lt!1684423 () Unit!92671)

(declare-fun Unit!92693 () Unit!92671)

(assert (=> b!4504941 (= lt!1684423 Unit!92693)))

(declare-fun lt!1684418 () Unit!92671)

(declare-fun Unit!92694 () Unit!92671)

(assert (=> b!4504941 (= lt!1684418 Unit!92694)))

(declare-fun lt!1684420 () Unit!92671)

(declare-fun forallContained!2446 (List!50682 Int tuple2!50954) Unit!92671)

(assert (=> b!4504941 (= lt!1684420 (forallContained!2446 (toList!4268 lt!1684424) lambda!169496 (h!56383 (_2!28772 (h!56384 (toList!4267 lm!1477))))))))

(assert (=> b!4504941 (contains!13241 lt!1684424 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lm!1477))))))))

(declare-fun lt!1684421 () Unit!92671)

(declare-fun Unit!92695 () Unit!92671)

(assert (=> b!4504941 (= lt!1684421 Unit!92695)))

(assert (=> b!4504941 (contains!13241 lt!1684415 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lm!1477))))))))

(declare-fun lt!1684432 () Unit!92671)

(declare-fun Unit!92696 () Unit!92671)

(assert (=> b!4504941 (= lt!1684432 Unit!92696)))

(assert (=> b!4504941 (forall!10192 (_2!28772 (h!56384 (toList!4267 lm!1477))) lambda!169496)))

(declare-fun lt!1684426 () Unit!92671)

(declare-fun Unit!92697 () Unit!92671)

(assert (=> b!4504941 (= lt!1684426 Unit!92697)))

(assert (=> b!4504941 call!313618))

(declare-fun lt!1684431 () Unit!92671)

(declare-fun Unit!92698 () Unit!92671)

(assert (=> b!4504941 (= lt!1684431 Unit!92698)))

(declare-fun lt!1684435 () Unit!92671)

(declare-fun Unit!92699 () Unit!92671)

(assert (=> b!4504941 (= lt!1684435 Unit!92699)))

(declare-fun lt!1684419 () Unit!92671)

(declare-fun addForallContainsKeyThenBeforeAdding!311 (ListMap!3529 ListMap!3529 K!11965 V!12211) Unit!92671)

(assert (=> b!4504941 (= lt!1684419 (addForallContainsKeyThenBeforeAdding!311 (extractMap!1186 (t!357645 (toList!4267 lm!1477))) lt!1684415 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lm!1477))))) (_2!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lm!1477)))))))))

(assert (=> b!4504941 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) lambda!169496)))

(declare-fun lt!1684429 () Unit!92671)

(assert (=> b!4504941 (= lt!1684429 lt!1684419)))

(assert (=> b!4504941 call!313620))

(declare-fun lt!1684433 () Unit!92671)

(declare-fun Unit!92700 () Unit!92671)

(assert (=> b!4504941 (= lt!1684433 Unit!92700)))

(declare-fun res!1873251 () Bool)

(assert (=> b!4504941 (= res!1873251 (forall!10192 (_2!28772 (h!56384 (toList!4267 lm!1477))) lambda!169496))))

(assert (=> b!4504941 (=> (not res!1873251) (not e!2806384))))

(assert (=> b!4504941 e!2806384))

(declare-fun lt!1684416 () Unit!92671)

(declare-fun Unit!92701 () Unit!92671)

(assert (=> b!4504941 (= lt!1684416 Unit!92701)))

(assert (= (and d!1384445 c!768166) b!4504940))

(assert (= (and d!1384445 (not c!768166)) b!4504941))

(assert (= (and b!4504941 res!1873251) b!4504939))

(assert (= (or b!4504940 b!4504941) bm!313613))

(assert (= (or b!4504940 b!4504941) bm!313614))

(assert (= (or b!4504940 b!4504941) bm!313615))

(assert (= (and d!1384445 res!1873253) b!4504937))

(assert (= (and b!4504937 res!1873252) b!4504938))

(declare-fun m!5240115 () Bool)

(assert (=> bm!313614 m!5240115))

(declare-fun m!5240117 () Bool)

(assert (=> b!4504937 m!5240117))

(declare-fun m!5240119 () Bool)

(assert (=> bm!313613 m!5240119))

(declare-fun m!5240121 () Bool)

(assert (=> b!4504938 m!5240121))

(declare-fun m!5240123 () Bool)

(assert (=> b!4504939 m!5240123))

(declare-fun m!5240125 () Bool)

(assert (=> d!1384445 m!5240125))

(assert (=> d!1384445 m!5240109))

(declare-fun m!5240127 () Bool)

(assert (=> b!4504941 m!5240127))

(assert (=> b!4504941 m!5239479))

(declare-fun m!5240129 () Bool)

(assert (=> b!4504941 m!5240129))

(declare-fun m!5240131 () Bool)

(assert (=> b!4504941 m!5240131))

(declare-fun m!5240133 () Bool)

(assert (=> b!4504941 m!5240133))

(declare-fun m!5240135 () Bool)

(assert (=> b!4504941 m!5240135))

(declare-fun m!5240137 () Bool)

(assert (=> b!4504941 m!5240137))

(assert (=> b!4504941 m!5239479))

(declare-fun m!5240139 () Bool)

(assert (=> b!4504941 m!5240139))

(declare-fun m!5240141 () Bool)

(assert (=> b!4504941 m!5240141))

(declare-fun m!5240143 () Bool)

(assert (=> b!4504941 m!5240143))

(assert (=> b!4504941 m!5240129))

(declare-fun m!5240145 () Bool)

(assert (=> b!4504941 m!5240145))

(assert (=> b!4504941 m!5240133))

(assert (=> b!4504941 m!5240123))

(assert (=> bm!313615 m!5239479))

(declare-fun m!5240147 () Bool)

(assert (=> bm!313615 m!5240147))

(assert (=> b!4504868 d!1384445))

(assert (=> b!4504868 d!1384371))

(declare-fun d!1384447 () Bool)

(declare-fun res!1873258 () Bool)

(declare-fun e!2806391 () Bool)

(assert (=> d!1384447 (=> res!1873258 e!2806391)))

(assert (=> d!1384447 (= res!1873258 (and ((_ is Cons!50558) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= (_1!28771 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) key!3287)))))

(assert (=> d!1384447 (= (containsKey!1698 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287) e!2806391)))

(declare-fun b!4504948 () Bool)

(declare-fun e!2806392 () Bool)

(assert (=> b!4504948 (= e!2806391 e!2806392)))

(declare-fun res!1873259 () Bool)

(assert (=> b!4504948 (=> (not res!1873259) (not e!2806392))))

(assert (=> b!4504948 (= res!1873259 ((_ is Cons!50558) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))))

(declare-fun b!4504949 () Bool)

(assert (=> b!4504949 (= e!2806392 (containsKey!1698 (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) key!3287))))

(assert (= (and d!1384447 (not res!1873258)) b!4504948))

(assert (= (and b!4504948 res!1873259) b!4504949))

(declare-fun m!5240149 () Bool)

(assert (=> b!4504949 m!5240149))

(assert (=> b!4504822 d!1384447))

(declare-fun d!1384449 () Bool)

(assert (=> d!1384449 (containsKey!1698 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287)))

(declare-fun lt!1684438 () Unit!92671)

(declare-fun choose!29199 (List!50682 K!11965) Unit!92671)

(assert (=> d!1384449 (= lt!1684438 (choose!29199 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287))))

(assert (=> d!1384449 (invariantList!989 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))))

(assert (=> d!1384449 (= (lemmaInGetKeysListThenContainsKey!436 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287) lt!1684438)))

(declare-fun bs!843019 () Bool)

(assert (= bs!843019 d!1384449))

(assert (=> bs!843019 m!5239867))

(declare-fun m!5240151 () Bool)

(assert (=> bs!843019 m!5240151))

(declare-fun m!5240153 () Bool)

(assert (=> bs!843019 m!5240153))

(assert (=> b!4504822 d!1384449))

(declare-fun d!1384451 () Bool)

(assert (=> d!1384451 (= (get!16531 (getValueByKey!1036 (toList!4267 lm!1477) hash!344)) (v!44571 (getValueByKey!1036 (toList!4267 lm!1477) hash!344)))))

(assert (=> d!1384277 d!1384451))

(declare-fun b!4504950 () Bool)

(declare-fun e!2806393 () Option!11056)

(assert (=> b!4504950 (= e!2806393 (Some!11055 (_2!28772 (h!56384 (toList!4267 lm!1477)))))))

(declare-fun b!4504953 () Bool)

(declare-fun e!2806394 () Option!11056)

(assert (=> b!4504953 (= e!2806394 None!11055)))

(declare-fun d!1384453 () Bool)

(declare-fun c!768167 () Bool)

(assert (=> d!1384453 (= c!768167 (and ((_ is Cons!50559) (toList!4267 lm!1477)) (= (_1!28772 (h!56384 (toList!4267 lm!1477))) hash!344)))))

(assert (=> d!1384453 (= (getValueByKey!1036 (toList!4267 lm!1477) hash!344) e!2806393)))

(declare-fun b!4504952 () Bool)

(assert (=> b!4504952 (= e!2806394 (getValueByKey!1036 (t!357645 (toList!4267 lm!1477)) hash!344))))

(declare-fun b!4504951 () Bool)

(assert (=> b!4504951 (= e!2806393 e!2806394)))

(declare-fun c!768168 () Bool)

(assert (=> b!4504951 (= c!768168 (and ((_ is Cons!50559) (toList!4267 lm!1477)) (not (= (_1!28772 (h!56384 (toList!4267 lm!1477))) hash!344))))))

(assert (= (and d!1384453 c!768167) b!4504950))

(assert (= (and d!1384453 (not c!768167)) b!4504951))

(assert (= (and b!4504951 c!768168) b!4504952))

(assert (= (and b!4504951 (not c!768168)) b!4504953))

(declare-fun m!5240155 () Bool)

(assert (=> b!4504952 m!5240155))

(assert (=> d!1384277 d!1384453))

(declare-fun d!1384455 () Bool)

(declare-fun res!1873260 () Bool)

(declare-fun e!2806395 () Bool)

(assert (=> d!1384455 (=> res!1873260 e!2806395)))

(assert (=> d!1384455 (= res!1873260 ((_ is Nil!50559) (toList!4267 lm!1477)))))

(assert (=> d!1384455 (= (forall!10191 (toList!4267 lm!1477) lambda!169465) e!2806395)))

(declare-fun b!4504954 () Bool)

(declare-fun e!2806396 () Bool)

(assert (=> b!4504954 (= e!2806395 e!2806396)))

(declare-fun res!1873261 () Bool)

(assert (=> b!4504954 (=> (not res!1873261) (not e!2806396))))

(assert (=> b!4504954 (= res!1873261 (dynLambda!21121 lambda!169465 (h!56384 (toList!4267 lm!1477))))))

(declare-fun b!4504955 () Bool)

(assert (=> b!4504955 (= e!2806396 (forall!10191 (t!357645 (toList!4267 lm!1477)) lambda!169465))))

(assert (= (and d!1384455 (not res!1873260)) b!4504954))

(assert (= (and b!4504954 res!1873261) b!4504955))

(declare-fun b_lambda!153225 () Bool)

(assert (=> (not b_lambda!153225) (not b!4504954)))

(declare-fun m!5240157 () Bool)

(assert (=> b!4504954 m!5240157))

(declare-fun m!5240159 () Bool)

(assert (=> b!4504955 m!5240159))

(assert (=> d!1384433 d!1384455))

(declare-fun d!1384457 () Bool)

(declare-fun choose!29200 (Hashable!5525 K!11965) (_ BitVec 64))

(assert (=> d!1384457 (= (hash!2711 hashF!1107 key!3287) (choose!29200 hashF!1107 key!3287))))

(declare-fun bs!843020 () Bool)

(assert (= bs!843020 d!1384457))

(declare-fun m!5240161 () Bool)

(assert (=> bs!843020 m!5240161))

(assert (=> d!1384269 d!1384457))

(declare-fun d!1384459 () Bool)

(declare-fun noDuplicatedKeys!248 (List!50682) Bool)

(assert (=> d!1384459 (= (invariantList!989 (toList!4268 lt!1684351)) (noDuplicatedKeys!248 (toList!4268 lt!1684351)))))

(declare-fun bs!843021 () Bool)

(assert (= bs!843021 d!1384459))

(declare-fun m!5240163 () Bool)

(assert (=> bs!843021 m!5240163))

(assert (=> d!1384395 d!1384459))

(declare-fun d!1384461 () Bool)

(declare-fun res!1873262 () Bool)

(declare-fun e!2806397 () Bool)

(assert (=> d!1384461 (=> res!1873262 e!2806397)))

(assert (=> d!1384461 (= res!1873262 ((_ is Nil!50559) (toList!4267 lm!1477)))))

(assert (=> d!1384461 (= (forall!10191 (toList!4267 lm!1477) lambda!169453) e!2806397)))

(declare-fun b!4504956 () Bool)

(declare-fun e!2806398 () Bool)

(assert (=> b!4504956 (= e!2806397 e!2806398)))

(declare-fun res!1873263 () Bool)

(assert (=> b!4504956 (=> (not res!1873263) (not e!2806398))))

(assert (=> b!4504956 (= res!1873263 (dynLambda!21121 lambda!169453 (h!56384 (toList!4267 lm!1477))))))

(declare-fun b!4504957 () Bool)

(assert (=> b!4504957 (= e!2806398 (forall!10191 (t!357645 (toList!4267 lm!1477)) lambda!169453))))

(assert (= (and d!1384461 (not res!1873262)) b!4504956))

(assert (= (and b!4504956 res!1873263) b!4504957))

(declare-fun b_lambda!153227 () Bool)

(assert (=> (not b_lambda!153227) (not b!4504956)))

(declare-fun m!5240165 () Bool)

(assert (=> b!4504956 m!5240165))

(declare-fun m!5240167 () Bool)

(assert (=> b!4504957 m!5240167))

(assert (=> d!1384395 d!1384461))

(declare-fun b!4504958 () Bool)

(declare-fun e!2806399 () Option!11056)

(assert (=> b!4504958 (= e!2806399 (Some!11055 (_2!28772 (h!56384 (toList!4267 lt!1684263)))))))

(declare-fun b!4504961 () Bool)

(declare-fun e!2806400 () Option!11056)

(assert (=> b!4504961 (= e!2806400 None!11055)))

(declare-fun d!1384463 () Bool)

(declare-fun c!768169 () Bool)

(assert (=> d!1384463 (= c!768169 (and ((_ is Cons!50559) (toList!4267 lt!1684263)) (= (_1!28772 (h!56384 (toList!4267 lt!1684263))) (_1!28772 lt!1684119))))))

(assert (=> d!1384463 (= (getValueByKey!1036 (toList!4267 lt!1684263) (_1!28772 lt!1684119)) e!2806399)))

(declare-fun b!4504960 () Bool)

(assert (=> b!4504960 (= e!2806400 (getValueByKey!1036 (t!357645 (toList!4267 lt!1684263)) (_1!28772 lt!1684119)))))

(declare-fun b!4504959 () Bool)

(assert (=> b!4504959 (= e!2806399 e!2806400)))

(declare-fun c!768170 () Bool)

(assert (=> b!4504959 (= c!768170 (and ((_ is Cons!50559) (toList!4267 lt!1684263)) (not (= (_1!28772 (h!56384 (toList!4267 lt!1684263))) (_1!28772 lt!1684119)))))))

(assert (= (and d!1384463 c!768169) b!4504958))

(assert (= (and d!1384463 (not c!768169)) b!4504959))

(assert (= (and b!4504959 c!768170) b!4504960))

(assert (= (and b!4504959 (not c!768170)) b!4504961))

(declare-fun m!5240169 () Bool)

(assert (=> b!4504960 m!5240169))

(assert (=> b!4504742 d!1384463))

(declare-fun d!1384465 () Bool)

(declare-fun isEmpty!28618 (Option!11056) Bool)

(assert (=> d!1384465 (= (isDefined!8343 (getValueByKey!1036 (toList!4267 lt!1684132) hash!344)) (not (isEmpty!28618 (getValueByKey!1036 (toList!4267 lt!1684132) hash!344))))))

(declare-fun bs!843022 () Bool)

(assert (= bs!843022 d!1384465))

(assert (=> bs!843022 m!5239537))

(declare-fun m!5240171 () Bool)

(assert (=> bs!843022 m!5240171))

(assert (=> b!4504623 d!1384465))

(assert (=> b!4504623 d!1384443))

(declare-fun d!1384467 () Bool)

(declare-fun res!1873264 () Bool)

(declare-fun e!2806401 () Bool)

(assert (=> d!1384467 (=> res!1873264 e!2806401)))

(assert (=> d!1384467 (= res!1873264 (and ((_ is Cons!50558) (toList!4268 lt!1684131)) (= (_1!28771 (h!56383 (toList!4268 lt!1684131))) key!3287)))))

(assert (=> d!1384467 (= (containsKey!1698 (toList!4268 lt!1684131) key!3287) e!2806401)))

(declare-fun b!4504962 () Bool)

(declare-fun e!2806402 () Bool)

(assert (=> b!4504962 (= e!2806401 e!2806402)))

(declare-fun res!1873265 () Bool)

(assert (=> b!4504962 (=> (not res!1873265) (not e!2806402))))

(assert (=> b!4504962 (= res!1873265 ((_ is Cons!50558) (toList!4268 lt!1684131)))))

(declare-fun b!4504963 () Bool)

(assert (=> b!4504963 (= e!2806402 (containsKey!1698 (t!357644 (toList!4268 lt!1684131)) key!3287))))

(assert (= (and d!1384467 (not res!1873264)) b!4504962))

(assert (= (and b!4504962 res!1873265) b!4504963))

(declare-fun m!5240173 () Bool)

(assert (=> b!4504963 m!5240173))

(assert (=> b!4504865 d!1384467))

(declare-fun d!1384469 () Bool)

(assert (=> d!1384469 (containsKey!1698 (toList!4268 lt!1684131) key!3287)))

(declare-fun lt!1684439 () Unit!92671)

(assert (=> d!1384469 (= lt!1684439 (choose!29199 (toList!4268 lt!1684131) key!3287))))

(assert (=> d!1384469 (invariantList!989 (toList!4268 lt!1684131))))

(assert (=> d!1384469 (= (lemmaInGetKeysListThenContainsKey!436 (toList!4268 lt!1684131) key!3287) lt!1684439)))

(declare-fun bs!843023 () Bool)

(assert (= bs!843023 d!1384469))

(assert (=> bs!843023 m!5239977))

(declare-fun m!5240175 () Bool)

(assert (=> bs!843023 m!5240175))

(declare-fun m!5240177 () Bool)

(assert (=> bs!843023 m!5240177))

(assert (=> b!4504865 d!1384469))

(declare-fun d!1384471 () Bool)

(declare-fun c!768173 () Bool)

(assert (=> d!1384471 (= c!768173 ((_ is Nil!50558) (toList!4268 (extractMap!1186 (toList!4267 lt!1684114)))))))

(declare-fun e!2806405 () (InoxSet tuple2!50954))

(assert (=> d!1384471 (= (content!8275 (toList!4268 (extractMap!1186 (toList!4267 lt!1684114)))) e!2806405)))

(declare-fun b!4504968 () Bool)

(assert (=> b!4504968 (= e!2806405 ((as const (Array tuple2!50954 Bool)) false))))

(declare-fun b!4504969 () Bool)

(assert (=> b!4504969 (= e!2806405 ((_ map or) (store ((as const (Array tuple2!50954 Bool)) false) (h!56383 (toList!4268 (extractMap!1186 (toList!4267 lt!1684114)))) true) (content!8275 (t!357644 (toList!4268 (extractMap!1186 (toList!4267 lt!1684114)))))))))

(assert (= (and d!1384471 c!768173) b!4504968))

(assert (= (and d!1384471 (not c!768173)) b!4504969))

(declare-fun m!5240179 () Bool)

(assert (=> b!4504969 m!5240179))

(declare-fun m!5240181 () Bool)

(assert (=> b!4504969 m!5240181))

(assert (=> d!1384403 d!1384471))

(declare-fun d!1384473 () Bool)

(declare-fun c!768174 () Bool)

(assert (=> d!1384473 (= c!768174 ((_ is Nil!50558) (toList!4268 (-!356 lt!1684130 key!3287))))))

(declare-fun e!2806406 () (InoxSet tuple2!50954))

(assert (=> d!1384473 (= (content!8275 (toList!4268 (-!356 lt!1684130 key!3287))) e!2806406)))

(declare-fun b!4504970 () Bool)

(assert (=> b!4504970 (= e!2806406 ((as const (Array tuple2!50954 Bool)) false))))

(declare-fun b!4504971 () Bool)

(assert (=> b!4504971 (= e!2806406 ((_ map or) (store ((as const (Array tuple2!50954 Bool)) false) (h!56383 (toList!4268 (-!356 lt!1684130 key!3287))) true) (content!8275 (t!357644 (toList!4268 (-!356 lt!1684130 key!3287))))))))

(assert (= (and d!1384473 c!768174) b!4504970))

(assert (= (and d!1384473 (not c!768174)) b!4504971))

(declare-fun m!5240183 () Bool)

(assert (=> b!4504971 m!5240183))

(declare-fun m!5240185 () Bool)

(assert (=> b!4504971 m!5240185))

(assert (=> d!1384403 d!1384473))

(declare-fun d!1384475 () Bool)

(declare-fun res!1873266 () Bool)

(declare-fun e!2806407 () Bool)

(assert (=> d!1384475 (=> res!1873266 e!2806407)))

(assert (=> d!1384475 (= res!1873266 (and ((_ is Cons!50558) (toList!4268 lt!1684130)) (= (_1!28771 (h!56383 (toList!4268 lt!1684130))) key!3287)))))

(assert (=> d!1384475 (= (containsKey!1698 (toList!4268 lt!1684130) key!3287) e!2806407)))

(declare-fun b!4504972 () Bool)

(declare-fun e!2806408 () Bool)

(assert (=> b!4504972 (= e!2806407 e!2806408)))

(declare-fun res!1873267 () Bool)

(assert (=> b!4504972 (=> (not res!1873267) (not e!2806408))))

(assert (=> b!4504972 (= res!1873267 ((_ is Cons!50558) (toList!4268 lt!1684130)))))

(declare-fun b!4504973 () Bool)

(assert (=> b!4504973 (= e!2806408 (containsKey!1698 (t!357644 (toList!4268 lt!1684130)) key!3287))))

(assert (= (and d!1384475 (not res!1873266)) b!4504972))

(assert (= (and b!4504972 res!1873267) b!4504973))

(declare-fun m!5240187 () Bool)

(assert (=> b!4504973 m!5240187))

(assert (=> b!4504854 d!1384475))

(declare-fun d!1384477 () Bool)

(assert (=> d!1384477 (containsKey!1698 (toList!4268 lt!1684130) key!3287)))

(declare-fun lt!1684440 () Unit!92671)

(assert (=> d!1384477 (= lt!1684440 (choose!29199 (toList!4268 lt!1684130) key!3287))))

(assert (=> d!1384477 (invariantList!989 (toList!4268 lt!1684130))))

(assert (=> d!1384477 (= (lemmaInGetKeysListThenContainsKey!436 (toList!4268 lt!1684130) key!3287) lt!1684440)))

(declare-fun bs!843024 () Bool)

(assert (= bs!843024 d!1384477))

(assert (=> bs!843024 m!5239941))

(declare-fun m!5240189 () Bool)

(assert (=> bs!843024 m!5240189))

(declare-fun m!5240191 () Bool)

(assert (=> bs!843024 m!5240191))

(assert (=> b!4504854 d!1384477))

(declare-fun d!1384479 () Bool)

(assert (=> d!1384479 (= (head!9356 (toList!4267 lt!1684133)) (h!56384 (toList!4267 lt!1684133)))))

(assert (=> d!1384423 d!1384479))

(declare-fun b!4504976 () Bool)

(declare-fun e!2806410 () List!50682)

(assert (=> b!4504976 (= e!2806410 (Cons!50558 (h!56383 (t!357644 lt!1684116)) (removePairForKey!757 (t!357644 (t!357644 lt!1684116)) key!3287)))))

(declare-fun b!4504974 () Bool)

(declare-fun e!2806409 () List!50682)

(assert (=> b!4504974 (= e!2806409 (t!357644 (t!357644 lt!1684116)))))

(declare-fun b!4504977 () Bool)

(assert (=> b!4504977 (= e!2806410 Nil!50558)))

(declare-fun b!4504975 () Bool)

(assert (=> b!4504975 (= e!2806409 e!2806410)))

(declare-fun c!768175 () Bool)

(assert (=> b!4504975 (= c!768175 ((_ is Cons!50558) (t!357644 lt!1684116)))))

(declare-fun d!1384481 () Bool)

(declare-fun lt!1684441 () List!50682)

(assert (=> d!1384481 (not (containsKey!1694 lt!1684441 key!3287))))

(assert (=> d!1384481 (= lt!1684441 e!2806409)))

(declare-fun c!768176 () Bool)

(assert (=> d!1384481 (= c!768176 (and ((_ is Cons!50558) (t!357644 lt!1684116)) (= (_1!28771 (h!56383 (t!357644 lt!1684116))) key!3287)))))

(assert (=> d!1384481 (noDuplicateKeys!1130 (t!357644 lt!1684116))))

(assert (=> d!1384481 (= (removePairForKey!757 (t!357644 lt!1684116) key!3287) lt!1684441)))

(assert (= (and d!1384481 c!768176) b!4504974))

(assert (= (and d!1384481 (not c!768176)) b!4504975))

(assert (= (and b!4504975 c!768175) b!4504976))

(assert (= (and b!4504975 (not c!768175)) b!4504977))

(declare-fun m!5240193 () Bool)

(assert (=> b!4504976 m!5240193))

(declare-fun m!5240195 () Bool)

(assert (=> d!1384481 m!5240195))

(declare-fun m!5240197 () Bool)

(assert (=> d!1384481 m!5240197))

(assert (=> b!4504666 d!1384481))

(declare-fun d!1384483 () Bool)

(declare-fun res!1873268 () Bool)

(declare-fun e!2806411 () Bool)

(assert (=> d!1384483 (=> res!1873268 e!2806411)))

(assert (=> d!1384483 (= res!1873268 (and ((_ is Cons!50558) (t!357644 lt!1684116)) (= (_1!28771 (h!56383 (t!357644 lt!1684116))) key!3287)))))

(assert (=> d!1384483 (= (containsKey!1694 (t!357644 lt!1684116) key!3287) e!2806411)))

(declare-fun b!4504978 () Bool)

(declare-fun e!2806412 () Bool)

(assert (=> b!4504978 (= e!2806411 e!2806412)))

(declare-fun res!1873269 () Bool)

(assert (=> b!4504978 (=> (not res!1873269) (not e!2806412))))

(assert (=> b!4504978 (= res!1873269 ((_ is Cons!50558) (t!357644 lt!1684116)))))

(declare-fun b!4504979 () Bool)

(assert (=> b!4504979 (= e!2806412 (containsKey!1694 (t!357644 (t!357644 lt!1684116)) key!3287))))

(assert (= (and d!1384483 (not res!1873268)) b!4504978))

(assert (= (and b!4504978 res!1873269) b!4504979))

(declare-fun m!5240199 () Bool)

(assert (=> b!4504979 m!5240199))

(assert (=> b!4504892 d!1384483))

(declare-fun d!1384485 () Bool)

(declare-fun e!2806413 () Bool)

(assert (=> d!1384485 e!2806413))

(declare-fun res!1873270 () Bool)

(assert (=> d!1384485 (=> res!1873270 e!2806413)))

(declare-fun lt!1684444 () Bool)

(assert (=> d!1384485 (= res!1873270 (not lt!1684444))))

(declare-fun lt!1684445 () Bool)

(assert (=> d!1384485 (= lt!1684444 lt!1684445)))

(declare-fun lt!1684443 () Unit!92671)

(declare-fun e!2806414 () Unit!92671)

(assert (=> d!1384485 (= lt!1684443 e!2806414)))

(declare-fun c!768177 () Bool)

(assert (=> d!1384485 (= c!768177 lt!1684445)))

(assert (=> d!1384485 (= lt!1684445 (containsKey!1697 (toList!4267 lm!1477) (hash!2707 hashF!1107 key!3287)))))

(assert (=> d!1384485 (= (contains!13240 lm!1477 (hash!2707 hashF!1107 key!3287)) lt!1684444)))

(declare-fun b!4504980 () Bool)

(declare-fun lt!1684442 () Unit!92671)

(assert (=> b!4504980 (= e!2806414 lt!1684442)))

(assert (=> b!4504980 (= lt!1684442 (lemmaContainsKeyImpliesGetValueByKeyDefined!940 (toList!4267 lm!1477) (hash!2707 hashF!1107 key!3287)))))

(assert (=> b!4504980 (isDefined!8343 (getValueByKey!1036 (toList!4267 lm!1477) (hash!2707 hashF!1107 key!3287)))))

(declare-fun b!4504981 () Bool)

(declare-fun Unit!92702 () Unit!92671)

(assert (=> b!4504981 (= e!2806414 Unit!92702)))

(declare-fun b!4504982 () Bool)

(assert (=> b!4504982 (= e!2806413 (isDefined!8343 (getValueByKey!1036 (toList!4267 lm!1477) (hash!2707 hashF!1107 key!3287))))))

(assert (= (and d!1384485 c!768177) b!4504980))

(assert (= (and d!1384485 (not c!768177)) b!4504981))

(assert (= (and d!1384485 (not res!1873270)) b!4504982))

(assert (=> d!1384485 m!5239475))

(declare-fun m!5240201 () Bool)

(assert (=> d!1384485 m!5240201))

(assert (=> b!4504980 m!5239475))

(declare-fun m!5240203 () Bool)

(assert (=> b!4504980 m!5240203))

(assert (=> b!4504980 m!5239475))

(declare-fun m!5240205 () Bool)

(assert (=> b!4504980 m!5240205))

(assert (=> b!4504980 m!5240205))

(declare-fun m!5240207 () Bool)

(assert (=> b!4504980 m!5240207))

(assert (=> b!4504982 m!5239475))

(assert (=> b!4504982 m!5240205))

(assert (=> b!4504982 m!5240205))

(assert (=> b!4504982 m!5240207))

(assert (=> d!1384271 d!1384485))

(assert (=> d!1384271 d!1384269))

(declare-fun d!1384487 () Bool)

(assert (=> d!1384487 (contains!13240 lm!1477 (hash!2707 hashF!1107 key!3287))))

(assert (=> d!1384487 true))

(declare-fun _$27!1191 () Unit!92671)

(assert (=> d!1384487 (= (choose!29190 lm!1477 key!3287 hashF!1107) _$27!1191)))

(declare-fun bs!843025 () Bool)

(assert (= bs!843025 d!1384487))

(assert (=> bs!843025 m!5239475))

(assert (=> bs!843025 m!5239475))

(assert (=> bs!843025 m!5239591))

(assert (=> d!1384271 d!1384487))

(declare-fun d!1384489 () Bool)

(declare-fun res!1873271 () Bool)

(declare-fun e!2806415 () Bool)

(assert (=> d!1384489 (=> res!1873271 e!2806415)))

(assert (=> d!1384489 (= res!1873271 ((_ is Nil!50559) (toList!4267 lm!1477)))))

(assert (=> d!1384489 (= (forall!10191 (toList!4267 lm!1477) lambda!169416) e!2806415)))

(declare-fun b!4504983 () Bool)

(declare-fun e!2806416 () Bool)

(assert (=> b!4504983 (= e!2806415 e!2806416)))

(declare-fun res!1873272 () Bool)

(assert (=> b!4504983 (=> (not res!1873272) (not e!2806416))))

(assert (=> b!4504983 (= res!1873272 (dynLambda!21121 lambda!169416 (h!56384 (toList!4267 lm!1477))))))

(declare-fun b!4504984 () Bool)

(assert (=> b!4504984 (= e!2806416 (forall!10191 (t!357645 (toList!4267 lm!1477)) lambda!169416))))

(assert (= (and d!1384489 (not res!1873271)) b!4504983))

(assert (= (and b!4504983 res!1873272) b!4504984))

(declare-fun b_lambda!153229 () Bool)

(assert (=> (not b_lambda!153229) (not b!4504983)))

(declare-fun m!5240209 () Bool)

(assert (=> b!4504983 m!5240209))

(declare-fun m!5240211 () Bool)

(assert (=> b!4504984 m!5240211))

(assert (=> d!1384271 d!1384489))

(declare-fun d!1384491 () Bool)

(assert (=> d!1384491 (= (head!9356 (toList!4267 lm!1477)) (h!56384 (toList!4267 lm!1477)))))

(assert (=> d!1384409 d!1384491))

(declare-fun d!1384493 () Bool)

(declare-fun e!2806417 () Bool)

(assert (=> d!1384493 e!2806417))

(declare-fun res!1873273 () Bool)

(assert (=> d!1384493 (=> res!1873273 e!2806417)))

(declare-fun lt!1684448 () Bool)

(assert (=> d!1384493 (= res!1873273 (not lt!1684448))))

(declare-fun lt!1684449 () Bool)

(assert (=> d!1384493 (= lt!1684448 lt!1684449)))

(declare-fun lt!1684447 () Unit!92671)

(declare-fun e!2806418 () Unit!92671)

(assert (=> d!1384493 (= lt!1684447 e!2806418)))

(declare-fun c!768178 () Bool)

(assert (=> d!1384493 (= c!768178 lt!1684449)))

(assert (=> d!1384493 (= lt!1684449 (containsKey!1697 (toList!4267 lt!1684263) (_1!28772 lt!1684119)))))

(assert (=> d!1384493 (= (contains!13240 lt!1684263 (_1!28772 lt!1684119)) lt!1684448)))

(declare-fun b!4504985 () Bool)

(declare-fun lt!1684446 () Unit!92671)

(assert (=> b!4504985 (= e!2806418 lt!1684446)))

(assert (=> b!4504985 (= lt!1684446 (lemmaContainsKeyImpliesGetValueByKeyDefined!940 (toList!4267 lt!1684263) (_1!28772 lt!1684119)))))

(assert (=> b!4504985 (isDefined!8343 (getValueByKey!1036 (toList!4267 lt!1684263) (_1!28772 lt!1684119)))))

(declare-fun b!4504986 () Bool)

(declare-fun Unit!92703 () Unit!92671)

(assert (=> b!4504986 (= e!2806418 Unit!92703)))

(declare-fun b!4504987 () Bool)

(assert (=> b!4504987 (= e!2806417 (isDefined!8343 (getValueByKey!1036 (toList!4267 lt!1684263) (_1!28772 lt!1684119))))))

(assert (= (and d!1384493 c!768178) b!4504985))

(assert (= (and d!1384493 (not c!768178)) b!4504986))

(assert (= (and d!1384493 (not res!1873273)) b!4504987))

(declare-fun m!5240213 () Bool)

(assert (=> d!1384493 m!5240213))

(declare-fun m!5240215 () Bool)

(assert (=> b!4504985 m!5240215))

(assert (=> b!4504985 m!5239737))

(assert (=> b!4504985 m!5239737))

(declare-fun m!5240217 () Bool)

(assert (=> b!4504985 m!5240217))

(assert (=> b!4504987 m!5239737))

(assert (=> b!4504987 m!5239737))

(assert (=> b!4504987 m!5240217))

(assert (=> d!1384319 d!1384493))

(declare-fun b!4504988 () Bool)

(declare-fun e!2806419 () Option!11056)

(assert (=> b!4504988 (= e!2806419 (Some!11055 (_2!28772 (h!56384 lt!1684262))))))

(declare-fun b!4504991 () Bool)

(declare-fun e!2806420 () Option!11056)

(assert (=> b!4504991 (= e!2806420 None!11055)))

(declare-fun d!1384495 () Bool)

(declare-fun c!768179 () Bool)

(assert (=> d!1384495 (= c!768179 (and ((_ is Cons!50559) lt!1684262) (= (_1!28772 (h!56384 lt!1684262)) (_1!28772 lt!1684119))))))

(assert (=> d!1384495 (= (getValueByKey!1036 lt!1684262 (_1!28772 lt!1684119)) e!2806419)))

(declare-fun b!4504990 () Bool)

(assert (=> b!4504990 (= e!2806420 (getValueByKey!1036 (t!357645 lt!1684262) (_1!28772 lt!1684119)))))

(declare-fun b!4504989 () Bool)

(assert (=> b!4504989 (= e!2806419 e!2806420)))

(declare-fun c!768180 () Bool)

(assert (=> b!4504989 (= c!768180 (and ((_ is Cons!50559) lt!1684262) (not (= (_1!28772 (h!56384 lt!1684262)) (_1!28772 lt!1684119)))))))

(assert (= (and d!1384495 c!768179) b!4504988))

(assert (= (and d!1384495 (not c!768179)) b!4504989))

(assert (= (and b!4504989 c!768180) b!4504990))

(assert (= (and b!4504989 (not c!768180)) b!4504991))

(declare-fun m!5240219 () Bool)

(assert (=> b!4504990 m!5240219))

(assert (=> d!1384319 d!1384495))

(declare-fun d!1384497 () Bool)

(assert (=> d!1384497 (= (getValueByKey!1036 lt!1684262 (_1!28772 lt!1684119)) (Some!11055 (_2!28772 lt!1684119)))))

(declare-fun lt!1684452 () Unit!92671)

(declare-fun choose!29201 (List!50683 (_ BitVec 64) List!50682) Unit!92671)

(assert (=> d!1384497 (= lt!1684452 (choose!29201 lt!1684262 (_1!28772 lt!1684119) (_2!28772 lt!1684119)))))

(declare-fun e!2806423 () Bool)

(assert (=> d!1384497 e!2806423))

(declare-fun res!1873278 () Bool)

(assert (=> d!1384497 (=> (not res!1873278) (not e!2806423))))

(assert (=> d!1384497 (= res!1873278 (isStrictlySorted!403 lt!1684262))))

(assert (=> d!1384497 (= (lemmaContainsTupThenGetReturnValue!640 lt!1684262 (_1!28772 lt!1684119) (_2!28772 lt!1684119)) lt!1684452)))

(declare-fun b!4504996 () Bool)

(declare-fun res!1873279 () Bool)

(assert (=> b!4504996 (=> (not res!1873279) (not e!2806423))))

(assert (=> b!4504996 (= res!1873279 (containsKey!1697 lt!1684262 (_1!28772 lt!1684119)))))

(declare-fun b!4504997 () Bool)

(assert (=> b!4504997 (= e!2806423 (contains!13239 lt!1684262 (tuple2!50957 (_1!28772 lt!1684119) (_2!28772 lt!1684119))))))

(assert (= (and d!1384497 res!1873278) b!4504996))

(assert (= (and b!4504996 res!1873279) b!4504997))

(assert (=> d!1384497 m!5239731))

(declare-fun m!5240221 () Bool)

(assert (=> d!1384497 m!5240221))

(declare-fun m!5240223 () Bool)

(assert (=> d!1384497 m!5240223))

(declare-fun m!5240225 () Bool)

(assert (=> b!4504996 m!5240225))

(declare-fun m!5240227 () Bool)

(assert (=> b!4504997 m!5240227))

(assert (=> d!1384319 d!1384497))

(declare-fun bm!313622 () Bool)

(declare-fun call!313629 () List!50683)

(declare-fun call!313627 () List!50683)

(assert (=> bm!313622 (= call!313629 call!313627)))

(declare-fun d!1384499 () Bool)

(declare-fun e!2806443 () Bool)

(assert (=> d!1384499 e!2806443))

(declare-fun res!1873285 () Bool)

(assert (=> d!1384499 (=> (not res!1873285) (not e!2806443))))

(declare-fun lt!1684455 () List!50683)

(assert (=> d!1384499 (= res!1873285 (isStrictlySorted!403 lt!1684455))))

(declare-fun e!2806440 () List!50683)

(assert (=> d!1384499 (= lt!1684455 e!2806440)))

(declare-fun c!768198 () Bool)

(assert (=> d!1384499 (= c!768198 (and ((_ is Cons!50559) (toList!4267 lt!1684114)) (bvslt (_1!28772 (h!56384 (toList!4267 lt!1684114))) (_1!28772 lt!1684119))))))

(assert (=> d!1384499 (isStrictlySorted!403 (toList!4267 lt!1684114))))

(assert (=> d!1384499 (= (insertStrictlySorted!380 (toList!4267 lt!1684114) (_1!28772 lt!1684119) (_2!28772 lt!1684119)) lt!1684455)))

(declare-fun bm!313623 () Bool)

(declare-fun call!313628 () List!50683)

(assert (=> bm!313623 (= call!313627 call!313628)))

(declare-fun b!4505030 () Bool)

(declare-fun res!1873284 () Bool)

(assert (=> b!4505030 (=> (not res!1873284) (not e!2806443))))

(assert (=> b!4505030 (= res!1873284 (containsKey!1697 lt!1684455 (_1!28772 lt!1684119)))))

(declare-fun c!768196 () Bool)

(declare-fun e!2806444 () List!50683)

(declare-fun b!4505031 () Bool)

(declare-fun c!768195 () Bool)

(assert (=> b!4505031 (= e!2806444 (ite c!768196 (t!357645 (toList!4267 lt!1684114)) (ite c!768195 (Cons!50559 (h!56384 (toList!4267 lt!1684114)) (t!357645 (toList!4267 lt!1684114))) Nil!50559)))))

(declare-fun b!4505032 () Bool)

(assert (=> b!4505032 (= c!768195 (and ((_ is Cons!50559) (toList!4267 lt!1684114)) (bvsgt (_1!28772 (h!56384 (toList!4267 lt!1684114))) (_1!28772 lt!1684119))))))

(declare-fun e!2806441 () List!50683)

(declare-fun e!2806442 () List!50683)

(assert (=> b!4505032 (= e!2806441 e!2806442)))

(declare-fun b!4505033 () Bool)

(assert (=> b!4505033 (= e!2806442 call!313629)))

(declare-fun b!4505034 () Bool)

(assert (=> b!4505034 (= e!2806440 e!2806441)))

(assert (=> b!4505034 (= c!768196 (and ((_ is Cons!50559) (toList!4267 lt!1684114)) (= (_1!28772 (h!56384 (toList!4267 lt!1684114))) (_1!28772 lt!1684119))))))

(declare-fun b!4505035 () Bool)

(assert (=> b!4505035 (= e!2806443 (contains!13239 lt!1684455 (tuple2!50957 (_1!28772 lt!1684119) (_2!28772 lt!1684119))))))

(declare-fun b!4505036 () Bool)

(assert (=> b!4505036 (= e!2806442 call!313629)))

(declare-fun b!4505037 () Bool)

(assert (=> b!4505037 (= e!2806444 (insertStrictlySorted!380 (t!357645 (toList!4267 lt!1684114)) (_1!28772 lt!1684119) (_2!28772 lt!1684119)))))

(declare-fun b!4505038 () Bool)

(assert (=> b!4505038 (= e!2806440 call!313628)))

(declare-fun bm!313624 () Bool)

(declare-fun $colon$colon!907 (List!50683 tuple2!50956) List!50683)

(assert (=> bm!313624 (= call!313628 ($colon$colon!907 e!2806444 (ite c!768198 (h!56384 (toList!4267 lt!1684114)) (tuple2!50957 (_1!28772 lt!1684119) (_2!28772 lt!1684119)))))))

(declare-fun c!768197 () Bool)

(assert (=> bm!313624 (= c!768197 c!768198)))

(declare-fun b!4505039 () Bool)

(assert (=> b!4505039 (= e!2806441 call!313627)))

(assert (= (and d!1384499 c!768198) b!4505038))

(assert (= (and d!1384499 (not c!768198)) b!4505034))

(assert (= (and b!4505034 c!768196) b!4505039))

(assert (= (and b!4505034 (not c!768196)) b!4505032))

(assert (= (and b!4505032 c!768195) b!4505036))

(assert (= (and b!4505032 (not c!768195)) b!4505033))

(assert (= (or b!4505036 b!4505033) bm!313622))

(assert (= (or b!4505039 bm!313622) bm!313623))

(assert (= (or b!4505038 bm!313623) bm!313624))

(assert (= (and bm!313624 c!768197) b!4505037))

(assert (= (and bm!313624 (not c!768197)) b!4505031))

(assert (= (and d!1384499 res!1873285) b!4505030))

(assert (= (and b!4505030 res!1873284) b!4505035))

(declare-fun m!5240231 () Bool)

(assert (=> d!1384499 m!5240231))

(declare-fun m!5240233 () Bool)

(assert (=> d!1384499 m!5240233))

(declare-fun m!5240235 () Bool)

(assert (=> b!4505037 m!5240235))

(declare-fun m!5240237 () Bool)

(assert (=> bm!313624 m!5240237))

(declare-fun m!5240239 () Bool)

(assert (=> b!4505030 m!5240239))

(declare-fun m!5240241 () Bool)

(assert (=> b!4505035 m!5240241))

(assert (=> d!1384319 d!1384499))

(declare-fun bs!843026 () Bool)

(declare-fun b!4505043 () Bool)

(assert (= bs!843026 (and b!4505043 b!4504941)))

(declare-fun lambda!169498 () Int)

(assert (=> bs!843026 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684114))) lt!1684415) (= lambda!169498 lambda!169496))))

(declare-fun bs!843027 () Bool)

(assert (= bs!843027 (and b!4505043 d!1384445)))

(assert (=> bs!843027 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684114))) lt!1684425) (= lambda!169498 lambda!169497))))

(declare-fun bs!843028 () Bool)

(assert (= bs!843028 (and b!4505043 d!1384321)))

(assert (=> bs!843028 (not (= lambda!169498 lambda!169430))))

(assert (=> bs!843026 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684114))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169498 lambda!169495))))

(declare-fun bs!843029 () Bool)

(assert (= bs!843029 (and b!4505043 b!4504940)))

(assert (=> bs!843029 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684114))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169498 lambda!169494))))

(assert (=> b!4505043 true))

(declare-fun bs!843030 () Bool)

(declare-fun b!4505044 () Bool)

(assert (= bs!843030 (and b!4505044 b!4505043)))

(declare-fun lambda!169499 () Int)

(assert (=> bs!843030 (= lambda!169499 lambda!169498)))

(declare-fun bs!843031 () Bool)

(assert (= bs!843031 (and b!4505044 b!4504941)))

(assert (=> bs!843031 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684114))) lt!1684415) (= lambda!169499 lambda!169496))))

(declare-fun bs!843032 () Bool)

(assert (= bs!843032 (and b!4505044 d!1384445)))

(assert (=> bs!843032 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684114))) lt!1684425) (= lambda!169499 lambda!169497))))

(declare-fun bs!843033 () Bool)

(assert (= bs!843033 (and b!4505044 d!1384321)))

(assert (=> bs!843033 (not (= lambda!169499 lambda!169430))))

(assert (=> bs!843031 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684114))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169499 lambda!169495))))

(declare-fun bs!843034 () Bool)

(assert (= bs!843034 (and b!4505044 b!4504940)))

(assert (=> bs!843034 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684114))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169499 lambda!169494))))

(assert (=> b!4505044 true))

(declare-fun lambda!169500 () Int)

(declare-fun lt!1684456 () ListMap!3529)

(assert (=> bs!843030 (= (= lt!1684456 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169500 lambda!169498))))

(assert (=> bs!843031 (= (= lt!1684456 lt!1684415) (= lambda!169500 lambda!169496))))

(assert (=> b!4505044 (= (= lt!1684456 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169500 lambda!169499))))

(assert (=> bs!843032 (= (= lt!1684456 lt!1684425) (= lambda!169500 lambda!169497))))

(assert (=> bs!843033 (not (= lambda!169500 lambda!169430))))

(assert (=> bs!843031 (= (= lt!1684456 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169500 lambda!169495))))

(assert (=> bs!843034 (= (= lt!1684456 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169500 lambda!169494))))

(assert (=> b!4505044 true))

(declare-fun bs!843035 () Bool)

(declare-fun d!1384505 () Bool)

(assert (= bs!843035 (and d!1384505 b!4505043)))

(declare-fun lt!1684466 () ListMap!3529)

(declare-fun lambda!169501 () Int)

(assert (=> bs!843035 (= (= lt!1684466 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169501 lambda!169498))))

(declare-fun bs!843036 () Bool)

(assert (= bs!843036 (and d!1384505 b!4505044)))

(assert (=> bs!843036 (= (= lt!1684466 lt!1684456) (= lambda!169501 lambda!169500))))

(declare-fun bs!843037 () Bool)

(assert (= bs!843037 (and d!1384505 b!4504941)))

(assert (=> bs!843037 (= (= lt!1684466 lt!1684415) (= lambda!169501 lambda!169496))))

(assert (=> bs!843036 (= (= lt!1684466 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169501 lambda!169499))))

(declare-fun bs!843038 () Bool)

(assert (= bs!843038 (and d!1384505 d!1384445)))

(assert (=> bs!843038 (= (= lt!1684466 lt!1684425) (= lambda!169501 lambda!169497))))

(declare-fun bs!843039 () Bool)

(assert (= bs!843039 (and d!1384505 d!1384321)))

(assert (=> bs!843039 (not (= lambda!169501 lambda!169430))))

(assert (=> bs!843037 (= (= lt!1684466 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169501 lambda!169495))))

(declare-fun bs!843040 () Bool)

(assert (= bs!843040 (and d!1384505 b!4504940)))

(assert (=> bs!843040 (= (= lt!1684466 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169501 lambda!169494))))

(assert (=> d!1384505 true))

(declare-fun b!4505040 () Bool)

(declare-fun res!1873287 () Bool)

(declare-fun e!2806446 () Bool)

(assert (=> b!4505040 (=> (not res!1873287) (not e!2806446))))

(assert (=> b!4505040 (= res!1873287 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) lambda!169501))))

(declare-fun c!768199 () Bool)

(declare-fun bm!313625 () Bool)

(declare-fun call!313632 () Bool)

(assert (=> bm!313625 (= call!313632 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (ite c!768199 lambda!169498 lambda!169500)))))

(declare-fun b!4505041 () Bool)

(assert (=> b!4505041 (= e!2806446 (invariantList!989 (toList!4268 lt!1684466)))))

(assert (=> d!1384505 e!2806446))

(declare-fun res!1873288 () Bool)

(assert (=> d!1384505 (=> (not res!1873288) (not e!2806446))))

(assert (=> d!1384505 (= res!1873288 (forall!10192 (_2!28772 (h!56384 (toList!4267 lt!1684114))) lambda!169501))))

(declare-fun e!2806447 () ListMap!3529)

(assert (=> d!1384505 (= lt!1684466 e!2806447)))

(assert (=> d!1384505 (= c!768199 ((_ is Nil!50558) (_2!28772 (h!56384 (toList!4267 lt!1684114)))))))

(assert (=> d!1384505 (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lt!1684114))))))

(assert (=> d!1384505 (= (addToMapMapFromBucket!657 (_2!28772 (h!56384 (toList!4267 lt!1684114))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) lt!1684466)))

(declare-fun bm!313626 () Bool)

(declare-fun lt!1684465 () ListMap!3529)

(declare-fun call!313630 () Bool)

(assert (=> bm!313626 (= call!313630 (forall!10192 (ite c!768199 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (toList!4268 lt!1684465)) (ite c!768199 lambda!169498 lambda!169500)))))

(declare-fun bm!313627 () Bool)

(declare-fun call!313631 () Unit!92671)

(assert (=> bm!313627 (= call!313631 (lemmaContainsAllItsOwnKeys!311 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))))))

(declare-fun b!4505042 () Bool)

(declare-fun e!2806445 () Bool)

(assert (=> b!4505042 (= e!2806445 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) lambda!169500))))

(assert (=> b!4505043 (= e!2806447 (extractMap!1186 (t!357645 (toList!4267 lt!1684114))))))

(declare-fun lt!1684469 () Unit!92671)

(assert (=> b!4505043 (= lt!1684469 call!313631)))

(assert (=> b!4505043 call!313632))

(declare-fun lt!1684468 () Unit!92671)

(assert (=> b!4505043 (= lt!1684468 lt!1684469)))

(assert (=> b!4505043 call!313630))

(declare-fun lt!1684471 () Unit!92671)

(declare-fun Unit!92704 () Unit!92671)

(assert (=> b!4505043 (= lt!1684471 Unit!92704)))

(assert (=> b!4505044 (= e!2806447 lt!1684456)))

(assert (=> b!4505044 (= lt!1684465 (+!1483 (extractMap!1186 (t!357645 (toList!4267 lt!1684114))) (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684114))))))))

(assert (=> b!4505044 (= lt!1684456 (addToMapMapFromBucket!657 (t!357644 (_2!28772 (h!56384 (toList!4267 lt!1684114)))) (+!1483 (extractMap!1186 (t!357645 (toList!4267 lt!1684114))) (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684114)))))))))

(declare-fun lt!1684475 () Unit!92671)

(assert (=> b!4505044 (= lt!1684475 call!313631)))

(assert (=> b!4505044 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) lambda!169499)))

(declare-fun lt!1684458 () Unit!92671)

(assert (=> b!4505044 (= lt!1684458 lt!1684475)))

(assert (=> b!4505044 (forall!10192 (toList!4268 lt!1684465) lambda!169500)))

(declare-fun lt!1684463 () Unit!92671)

(declare-fun Unit!92705 () Unit!92671)

(assert (=> b!4505044 (= lt!1684463 Unit!92705)))

(assert (=> b!4505044 (forall!10192 (t!357644 (_2!28772 (h!56384 (toList!4267 lt!1684114)))) lambda!169500)))

(declare-fun lt!1684464 () Unit!92671)

(declare-fun Unit!92706 () Unit!92671)

(assert (=> b!4505044 (= lt!1684464 Unit!92706)))

(declare-fun lt!1684459 () Unit!92671)

(declare-fun Unit!92707 () Unit!92671)

(assert (=> b!4505044 (= lt!1684459 Unit!92707)))

(declare-fun lt!1684461 () Unit!92671)

(assert (=> b!4505044 (= lt!1684461 (forallContained!2446 (toList!4268 lt!1684465) lambda!169500 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684114))))))))

(assert (=> b!4505044 (contains!13241 lt!1684465 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684114))))))))

(declare-fun lt!1684462 () Unit!92671)

(declare-fun Unit!92708 () Unit!92671)

(assert (=> b!4505044 (= lt!1684462 Unit!92708)))

(assert (=> b!4505044 (contains!13241 lt!1684456 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684114))))))))

(declare-fun lt!1684473 () Unit!92671)

(declare-fun Unit!92709 () Unit!92671)

(assert (=> b!4505044 (= lt!1684473 Unit!92709)))

(assert (=> b!4505044 (forall!10192 (_2!28772 (h!56384 (toList!4267 lt!1684114))) lambda!169500)))

(declare-fun lt!1684467 () Unit!92671)

(declare-fun Unit!92710 () Unit!92671)

(assert (=> b!4505044 (= lt!1684467 Unit!92710)))

(assert (=> b!4505044 call!313630))

(declare-fun lt!1684472 () Unit!92671)

(declare-fun Unit!92711 () Unit!92671)

(assert (=> b!4505044 (= lt!1684472 Unit!92711)))

(declare-fun lt!1684476 () Unit!92671)

(declare-fun Unit!92712 () Unit!92671)

(assert (=> b!4505044 (= lt!1684476 Unit!92712)))

(declare-fun lt!1684460 () Unit!92671)

(assert (=> b!4505044 (= lt!1684460 (addForallContainsKeyThenBeforeAdding!311 (extractMap!1186 (t!357645 (toList!4267 lt!1684114))) lt!1684456 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684114))))) (_2!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684114)))))))))

(assert (=> b!4505044 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) lambda!169500)))

(declare-fun lt!1684470 () Unit!92671)

(assert (=> b!4505044 (= lt!1684470 lt!1684460)))

(assert (=> b!4505044 call!313632))

(declare-fun lt!1684474 () Unit!92671)

(declare-fun Unit!92713 () Unit!92671)

(assert (=> b!4505044 (= lt!1684474 Unit!92713)))

(declare-fun res!1873286 () Bool)

(assert (=> b!4505044 (= res!1873286 (forall!10192 (_2!28772 (h!56384 (toList!4267 lt!1684114))) lambda!169500))))

(assert (=> b!4505044 (=> (not res!1873286) (not e!2806445))))

(assert (=> b!4505044 e!2806445))

(declare-fun lt!1684457 () Unit!92671)

(declare-fun Unit!92714 () Unit!92671)

(assert (=> b!4505044 (= lt!1684457 Unit!92714)))

(assert (= (and d!1384505 c!768199) b!4505043))

(assert (= (and d!1384505 (not c!768199)) b!4505044))

(assert (= (and b!4505044 res!1873286) b!4505042))

(assert (= (or b!4505043 b!4505044) bm!313625))

(assert (= (or b!4505043 b!4505044) bm!313626))

(assert (= (or b!4505043 b!4505044) bm!313627))

(assert (= (and d!1384505 res!1873288) b!4505040))

(assert (= (and b!4505040 res!1873287) b!4505041))

(declare-fun m!5240249 () Bool)

(assert (=> bm!313626 m!5240249))

(declare-fun m!5240251 () Bool)

(assert (=> b!4505040 m!5240251))

(declare-fun m!5240253 () Bool)

(assert (=> bm!313625 m!5240253))

(declare-fun m!5240255 () Bool)

(assert (=> b!4505041 m!5240255))

(declare-fun m!5240257 () Bool)

(assert (=> b!4505042 m!5240257))

(declare-fun m!5240259 () Bool)

(assert (=> d!1384505 m!5240259))

(declare-fun m!5240261 () Bool)

(assert (=> d!1384505 m!5240261))

(declare-fun m!5240263 () Bool)

(assert (=> b!4505044 m!5240263))

(assert (=> b!4505044 m!5240061))

(declare-fun m!5240265 () Bool)

(assert (=> b!4505044 m!5240265))

(declare-fun m!5240267 () Bool)

(assert (=> b!4505044 m!5240267))

(declare-fun m!5240269 () Bool)

(assert (=> b!4505044 m!5240269))

(declare-fun m!5240271 () Bool)

(assert (=> b!4505044 m!5240271))

(declare-fun m!5240273 () Bool)

(assert (=> b!4505044 m!5240273))

(assert (=> b!4505044 m!5240061))

(declare-fun m!5240275 () Bool)

(assert (=> b!4505044 m!5240275))

(declare-fun m!5240277 () Bool)

(assert (=> b!4505044 m!5240277))

(declare-fun m!5240279 () Bool)

(assert (=> b!4505044 m!5240279))

(assert (=> b!4505044 m!5240265))

(declare-fun m!5240281 () Bool)

(assert (=> b!4505044 m!5240281))

(assert (=> b!4505044 m!5240269))

(assert (=> b!4505044 m!5240257))

(assert (=> bm!313627 m!5240061))

(declare-fun m!5240283 () Bool)

(assert (=> bm!313627 m!5240283))

(assert (=> b!4504883 d!1384505))

(declare-fun bs!843041 () Bool)

(declare-fun d!1384509 () Bool)

(assert (= bs!843041 (and d!1384509 d!1384413)))

(declare-fun lambda!169502 () Int)

(assert (=> bs!843041 (= lambda!169502 lambda!169458)))

(declare-fun bs!843042 () Bool)

(assert (= bs!843042 (and d!1384509 d!1384401)))

(assert (=> bs!843042 (= lambda!169502 lambda!169456)))

(declare-fun bs!843043 () Bool)

(assert (= bs!843043 (and d!1384509 d!1384425)))

(assert (=> bs!843043 (= lambda!169502 lambda!169461)))

(declare-fun bs!843044 () Bool)

(assert (= bs!843044 (and d!1384509 d!1384395)))

(assert (=> bs!843044 (= lambda!169502 lambda!169453)))

(declare-fun bs!843045 () Bool)

(assert (= bs!843045 (and d!1384509 d!1384429)))

(assert (=> bs!843045 (= lambda!169502 lambda!169462)))

(declare-fun bs!843046 () Bool)

(assert (= bs!843046 (and d!1384509 d!1384387)))

(assert (=> bs!843046 (= lambda!169502 lambda!169451)))

(declare-fun bs!843047 () Bool)

(assert (= bs!843047 (and d!1384509 start!444824)))

(assert (=> bs!843047 (= lambda!169502 lambda!169407)))

(declare-fun bs!843048 () Bool)

(assert (= bs!843048 (and d!1384509 d!1384271)))

(assert (=> bs!843048 (= lambda!169502 lambda!169416)))

(declare-fun bs!843049 () Bool)

(assert (= bs!843049 (and d!1384509 d!1384389)))

(assert (=> bs!843049 (= lambda!169502 lambda!169452)))

(declare-fun bs!843050 () Bool)

(assert (= bs!843050 (and d!1384509 d!1384371)))

(assert (=> bs!843050 (= lambda!169502 lambda!169448)))

(declare-fun bs!843051 () Bool)

(assert (= bs!843051 (and d!1384509 d!1384433)))

(assert (=> bs!843051 (not (= lambda!169502 lambda!169465))))

(declare-fun bs!843052 () Bool)

(assert (= bs!843052 (and d!1384509 d!1384405)))

(assert (=> bs!843052 (= lambda!169502 lambda!169457)))

(declare-fun bs!843053 () Bool)

(assert (= bs!843053 (and d!1384509 d!1384333)))

(assert (=> bs!843053 (= lambda!169502 lambda!169436)))

(declare-fun lt!1684480 () ListMap!3529)

(assert (=> d!1384509 (invariantList!989 (toList!4268 lt!1684480))))

(declare-fun e!2806454 () ListMap!3529)

(assert (=> d!1384509 (= lt!1684480 e!2806454)))

(declare-fun c!768200 () Bool)

(assert (=> d!1384509 (= c!768200 ((_ is Cons!50559) (t!357645 (toList!4267 lt!1684114))))))

(assert (=> d!1384509 (forall!10191 (t!357645 (toList!4267 lt!1684114)) lambda!169502)))

(assert (=> d!1384509 (= (extractMap!1186 (t!357645 (toList!4267 lt!1684114))) lt!1684480)))

(declare-fun b!4505051 () Bool)

(assert (=> b!4505051 (= e!2806454 (addToMapMapFromBucket!657 (_2!28772 (h!56384 (t!357645 (toList!4267 lt!1684114)))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lt!1684114))))))))

(declare-fun b!4505052 () Bool)

(assert (=> b!4505052 (= e!2806454 (ListMap!3530 Nil!50558))))

(assert (= (and d!1384509 c!768200) b!4505051))

(assert (= (and d!1384509 (not c!768200)) b!4505052))

(declare-fun m!5240285 () Bool)

(assert (=> d!1384509 m!5240285))

(declare-fun m!5240287 () Bool)

(assert (=> d!1384509 m!5240287))

(declare-fun m!5240289 () Bool)

(assert (=> b!4505051 m!5240289))

(assert (=> b!4505051 m!5240289))

(declare-fun m!5240291 () Bool)

(assert (=> b!4505051 m!5240291))

(assert (=> b!4504883 d!1384509))

(assert (=> d!1384393 d!1384467))

(declare-fun d!1384511 () Bool)

(declare-fun res!1873295 () Bool)

(declare-fun e!2806455 () Bool)

(assert (=> d!1384511 (=> res!1873295 e!2806455)))

(assert (=> d!1384511 (= res!1873295 (and ((_ is Cons!50558) (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477))))) (= (_1!28771 (h!56383 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))))) key!3287)))))

(assert (=> d!1384511 (= (containsKey!1694 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))) key!3287) e!2806455)))

(declare-fun b!4505053 () Bool)

(declare-fun e!2806456 () Bool)

(assert (=> b!4505053 (= e!2806455 e!2806456)))

(declare-fun res!1873296 () Bool)

(assert (=> b!4505053 (=> (not res!1873296) (not e!2806456))))

(assert (=> b!4505053 (= res!1873296 ((_ is Cons!50558) (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477))))))))

(declare-fun b!4505054 () Bool)

(assert (=> b!4505054 (= e!2806456 (containsKey!1694 (t!357644 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477))))) key!3287))))

(assert (= (and d!1384511 (not res!1873295)) b!4505053))

(assert (= (and b!4505053 res!1873296) b!4505054))

(declare-fun m!5240293 () Bool)

(assert (=> b!4505054 m!5240293))

(assert (=> b!4504765 d!1384511))

(declare-fun d!1384513 () Bool)

(assert (=> d!1384513 (= (invariantList!989 (toList!4268 lt!1684363)) (noDuplicatedKeys!248 (toList!4268 lt!1684363)))))

(declare-fun bs!843054 () Bool)

(assert (= bs!843054 d!1384513))

(declare-fun m!5240295 () Bool)

(assert (=> bs!843054 m!5240295))

(assert (=> d!1384413 d!1384513))

(declare-fun d!1384515 () Bool)

(declare-fun res!1873297 () Bool)

(declare-fun e!2806457 () Bool)

(assert (=> d!1384515 (=> res!1873297 e!2806457)))

(assert (=> d!1384515 (= res!1873297 ((_ is Nil!50559) (toList!4267 lt!1684114)))))

(assert (=> d!1384515 (= (forall!10191 (toList!4267 lt!1684114) lambda!169458) e!2806457)))

(declare-fun b!4505055 () Bool)

(declare-fun e!2806458 () Bool)

(assert (=> b!4505055 (= e!2806457 e!2806458)))

(declare-fun res!1873298 () Bool)

(assert (=> b!4505055 (=> (not res!1873298) (not e!2806458))))

(assert (=> b!4505055 (= res!1873298 (dynLambda!21121 lambda!169458 (h!56384 (toList!4267 lt!1684114))))))

(declare-fun b!4505056 () Bool)

(assert (=> b!4505056 (= e!2806458 (forall!10191 (t!357645 (toList!4267 lt!1684114)) lambda!169458))))

(assert (= (and d!1384515 (not res!1873297)) b!4505055))

(assert (= (and b!4505055 res!1873298) b!4505056))

(declare-fun b_lambda!153231 () Bool)

(assert (=> (not b_lambda!153231) (not b!4505055)))

(declare-fun m!5240297 () Bool)

(assert (=> b!4505055 m!5240297))

(declare-fun m!5240299 () Bool)

(assert (=> b!4505056 m!5240299))

(assert (=> d!1384413 d!1384515))

(assert (=> d!1384385 d!1384475))

(declare-fun d!1384517 () Bool)

(declare-fun res!1873303 () Bool)

(declare-fun e!2806463 () Bool)

(assert (=> d!1384517 (=> res!1873303 e!2806463)))

(assert (=> d!1384517 (= res!1873303 (and ((_ is Cons!50559) (toList!4267 lm!1477)) (= (_1!28772 (h!56384 (toList!4267 lm!1477))) lt!1684118)))))

(assert (=> d!1384517 (= (containsKey!1697 (toList!4267 lm!1477) lt!1684118) e!2806463)))

(declare-fun b!4505061 () Bool)

(declare-fun e!2806464 () Bool)

(assert (=> b!4505061 (= e!2806463 e!2806464)))

(declare-fun res!1873304 () Bool)

(assert (=> b!4505061 (=> (not res!1873304) (not e!2806464))))

(assert (=> b!4505061 (= res!1873304 (and (or (not ((_ is Cons!50559) (toList!4267 lm!1477))) (bvsle (_1!28772 (h!56384 (toList!4267 lm!1477))) lt!1684118)) ((_ is Cons!50559) (toList!4267 lm!1477)) (bvslt (_1!28772 (h!56384 (toList!4267 lm!1477))) lt!1684118)))))

(declare-fun b!4505062 () Bool)

(assert (=> b!4505062 (= e!2806464 (containsKey!1697 (t!357645 (toList!4267 lm!1477)) lt!1684118))))

(assert (= (and d!1384517 (not res!1873303)) b!4505061))

(assert (= (and b!4505061 res!1873304) b!4505062))

(declare-fun m!5240301 () Bool)

(assert (=> b!4505062 m!5240301))

(assert (=> d!1384297 d!1384517))

(declare-fun d!1384519 () Bool)

(declare-fun isEmpty!28619 (Option!11057) Bool)

(assert (=> d!1384519 (= (isDefined!8344 (getValueByKey!1037 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287)) (not (isEmpty!28619 (getValueByKey!1037 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287))))))

(declare-fun bs!843055 () Bool)

(assert (= bs!843055 d!1384519))

(assert (=> bs!843055 m!5239863))

(declare-fun m!5240303 () Bool)

(assert (=> bs!843055 m!5240303))

(assert (=> b!4504823 d!1384519))

(declare-fun d!1384521 () Bool)

(declare-fun c!768205 () Bool)

(assert (=> d!1384521 (= c!768205 (and ((_ is Cons!50558) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= (_1!28771 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) key!3287)))))

(declare-fun e!2806469 () Option!11057)

(assert (=> d!1384521 (= (getValueByKey!1037 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287) e!2806469)))

(declare-fun b!4505072 () Bool)

(declare-fun e!2806470 () Option!11057)

(assert (=> b!4505072 (= e!2806469 e!2806470)))

(declare-fun c!768206 () Bool)

(assert (=> b!4505072 (= c!768206 (and ((_ is Cons!50558) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (not (= (_1!28771 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) key!3287))))))

(declare-fun b!4505071 () Bool)

(assert (=> b!4505071 (= e!2806469 (Some!11056 (_2!28771 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))))))

(declare-fun b!4505074 () Bool)

(assert (=> b!4505074 (= e!2806470 None!11056)))

(declare-fun b!4505073 () Bool)

(assert (=> b!4505073 (= e!2806470 (getValueByKey!1037 (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) key!3287))))

(assert (= (and d!1384521 c!768205) b!4505071))

(assert (= (and d!1384521 (not c!768205)) b!4505072))

(assert (= (and b!4505072 c!768206) b!4505073))

(assert (= (and b!4505072 (not c!768206)) b!4505074))

(declare-fun m!5240305 () Bool)

(assert (=> b!4505073 m!5240305))

(assert (=> b!4504823 d!1384521))

(declare-fun d!1384523 () Bool)

(declare-fun res!1873309 () Bool)

(declare-fun e!2806475 () Bool)

(assert (=> d!1384523 (=> res!1873309 e!2806475)))

(assert (=> d!1384523 (= res!1873309 ((_ is Nil!50558) newBucket!178))))

(assert (=> d!1384523 (= (forall!10192 newBucket!178 lambda!169430) e!2806475)))

(declare-fun b!4505079 () Bool)

(declare-fun e!2806476 () Bool)

(assert (=> b!4505079 (= e!2806475 e!2806476)))

(declare-fun res!1873310 () Bool)

(assert (=> b!4505079 (=> (not res!1873310) (not e!2806476))))

(declare-fun dynLambda!21122 (Int tuple2!50954) Bool)

(assert (=> b!4505079 (= res!1873310 (dynLambda!21122 lambda!169430 (h!56383 newBucket!178)))))

(declare-fun b!4505080 () Bool)

(assert (=> b!4505080 (= e!2806476 (forall!10192 (t!357644 newBucket!178) lambda!169430))))

(assert (= (and d!1384523 (not res!1873309)) b!4505079))

(assert (= (and b!4505079 res!1873310) b!4505080))

(declare-fun b_lambda!153233 () Bool)

(assert (=> (not b_lambda!153233) (not b!4505079)))

(declare-fun m!5240307 () Bool)

(assert (=> b!4505079 m!5240307))

(declare-fun m!5240309 () Bool)

(assert (=> b!4505080 m!5240309))

(assert (=> d!1384321 d!1384523))

(declare-fun d!1384525 () Bool)

(declare-fun e!2806482 () Bool)

(assert (=> d!1384525 e!2806482))

(declare-fun res!1873313 () Bool)

(assert (=> d!1384525 (=> res!1873313 e!2806482)))

(declare-fun e!2806479 () Bool)

(assert (=> d!1384525 (= res!1873313 e!2806479)))

(declare-fun res!1873312 () Bool)

(assert (=> d!1384525 (=> (not res!1873312) (not e!2806479))))

(declare-fun lt!1684482 () Bool)

(assert (=> d!1384525 (= res!1873312 (not lt!1684482))))

(declare-fun lt!1684485 () Bool)

(assert (=> d!1384525 (= lt!1684482 lt!1684485)))

(declare-fun lt!1684483 () Unit!92671)

(declare-fun e!2806478 () Unit!92671)

(assert (=> d!1384525 (= lt!1684483 e!2806478)))

(declare-fun c!768207 () Bool)

(assert (=> d!1384525 (= c!768207 lt!1684485)))

(assert (=> d!1384525 (= lt!1684485 (containsKey!1698 (toList!4268 lt!1684354) key!3287))))

(assert (=> d!1384525 (= (contains!13241 lt!1684354 key!3287) lt!1684482)))

(declare-fun b!4505081 () Bool)

(declare-fun lt!1684486 () Unit!92671)

(assert (=> b!4505081 (= e!2806478 lt!1684486)))

(declare-fun lt!1684488 () Unit!92671)

(assert (=> b!4505081 (= lt!1684488 (lemmaContainsKeyImpliesGetValueByKeyDefined!941 (toList!4268 lt!1684354) key!3287))))

(assert (=> b!4505081 (isDefined!8344 (getValueByKey!1037 (toList!4268 lt!1684354) key!3287))))

(declare-fun lt!1684487 () Unit!92671)

(assert (=> b!4505081 (= lt!1684487 lt!1684488)))

(assert (=> b!4505081 (= lt!1684486 (lemmaInListThenGetKeysListContains!433 (toList!4268 lt!1684354) key!3287))))

(declare-fun call!313633 () Bool)

(assert (=> b!4505081 call!313633))

(declare-fun b!4505082 () Bool)

(declare-fun e!2806480 () Unit!92671)

(declare-fun Unit!92715 () Unit!92671)

(assert (=> b!4505082 (= e!2806480 Unit!92715)))

(declare-fun bm!313628 () Bool)

(declare-fun e!2806481 () List!50685)

(assert (=> bm!313628 (= call!313633 (contains!13243 e!2806481 key!3287))))

(declare-fun c!768209 () Bool)

(assert (=> bm!313628 (= c!768209 c!768207)))

(declare-fun b!4505083 () Bool)

(assert (=> b!4505083 (= e!2806478 e!2806480)))

(declare-fun c!768208 () Bool)

(assert (=> b!4505083 (= c!768208 call!313633)))

(declare-fun b!4505084 () Bool)

(declare-fun e!2806477 () Bool)

(assert (=> b!4505084 (= e!2806477 (contains!13243 (keys!17536 lt!1684354) key!3287))))

(declare-fun b!4505085 () Bool)

(assert (=> b!4505085 (= e!2806479 (not (contains!13243 (keys!17536 lt!1684354) key!3287)))))

(declare-fun b!4505086 () Bool)

(assert (=> b!4505086 (= e!2806481 (keys!17536 lt!1684354))))

(declare-fun b!4505087 () Bool)

(assert (=> b!4505087 false))

(declare-fun lt!1684484 () Unit!92671)

(declare-fun lt!1684481 () Unit!92671)

(assert (=> b!4505087 (= lt!1684484 lt!1684481)))

(assert (=> b!4505087 (containsKey!1698 (toList!4268 lt!1684354) key!3287)))

(assert (=> b!4505087 (= lt!1684481 (lemmaInGetKeysListThenContainsKey!436 (toList!4268 lt!1684354) key!3287))))

(declare-fun Unit!92716 () Unit!92671)

(assert (=> b!4505087 (= e!2806480 Unit!92716)))

(declare-fun b!4505088 () Bool)

(assert (=> b!4505088 (= e!2806482 e!2806477)))

(declare-fun res!1873311 () Bool)

(assert (=> b!4505088 (=> (not res!1873311) (not e!2806477))))

(assert (=> b!4505088 (= res!1873311 (isDefined!8344 (getValueByKey!1037 (toList!4268 lt!1684354) key!3287)))))

(declare-fun b!4505089 () Bool)

(assert (=> b!4505089 (= e!2806481 (getKeysList!437 (toList!4268 lt!1684354)))))

(assert (= (and d!1384525 c!768207) b!4505081))

(assert (= (and d!1384525 (not c!768207)) b!4505083))

(assert (= (and b!4505083 c!768208) b!4505087))

(assert (= (and b!4505083 (not c!768208)) b!4505082))

(assert (= (or b!4505081 b!4505083) bm!313628))

(assert (= (and bm!313628 c!768209) b!4505089))

(assert (= (and bm!313628 (not c!768209)) b!4505086))

(assert (= (and d!1384525 res!1873312) b!4505085))

(assert (= (and d!1384525 (not res!1873313)) b!4505088))

(assert (= (and b!4505088 res!1873311) b!4505084))

(declare-fun m!5240311 () Bool)

(assert (=> b!4505088 m!5240311))

(assert (=> b!4505088 m!5240311))

(declare-fun m!5240313 () Bool)

(assert (=> b!4505088 m!5240313))

(declare-fun m!5240315 () Bool)

(assert (=> b!4505087 m!5240315))

(declare-fun m!5240317 () Bool)

(assert (=> b!4505087 m!5240317))

(declare-fun m!5240319 () Bool)

(assert (=> b!4505089 m!5240319))

(assert (=> b!4505086 m!5240009))

(assert (=> b!4505085 m!5240009))

(assert (=> b!4505085 m!5240009))

(declare-fun m!5240321 () Bool)

(assert (=> b!4505085 m!5240321))

(assert (=> b!4505084 m!5240009))

(assert (=> b!4505084 m!5240009))

(assert (=> b!4505084 m!5240321))

(assert (=> d!1384525 m!5240315))

(declare-fun m!5240323 () Bool)

(assert (=> b!4505081 m!5240323))

(assert (=> b!4505081 m!5240311))

(assert (=> b!4505081 m!5240311))

(assert (=> b!4505081 m!5240313))

(declare-fun m!5240325 () Bool)

(assert (=> b!4505081 m!5240325))

(declare-fun m!5240327 () Bool)

(assert (=> bm!313628 m!5240327))

(assert (=> d!1384399 d!1384525))

(declare-fun b!4505128 () Bool)

(declare-fun e!2806511 () Unit!92671)

(declare-fun Unit!92717 () Unit!92671)

(assert (=> b!4505128 (= e!2806511 Unit!92717)))

(declare-fun b!4505129 () Bool)

(declare-fun e!2806505 () Unit!92671)

(declare-fun Unit!92718 () Unit!92671)

(assert (=> b!4505129 (= e!2806505 Unit!92718)))

(declare-fun lt!1684527 () V!12211)

(declare-fun get!16532 (Option!11057) V!12211)

(assert (=> b!4505129 (= lt!1684527 (get!16532 (getValueByKey!1037 (toList!4268 lt!1684130) key!3287)))))

(declare-fun lt!1684533 () K!11965)

(assert (=> b!4505129 (= lt!1684533 key!3287)))

(declare-fun lt!1684538 () K!11965)

(assert (=> b!4505129 (= lt!1684538 key!3287)))

(declare-fun lt!1684542 () Unit!92671)

(declare-fun lemmaContainsTupleThenContainsKey!48 (List!50682 K!11965 V!12211) Unit!92671)

(assert (=> b!4505129 (= lt!1684542 (lemmaContainsTupleThenContainsKey!48 (t!357644 (toList!4268 lt!1684130)) lt!1684533 (get!16532 (getValueByKey!1037 (toList!4268 lt!1684130) key!3287))))))

(declare-fun call!313650 () Bool)

(assert (=> b!4505129 call!313650))

(declare-fun lt!1684539 () Unit!92671)

(assert (=> b!4505129 (= lt!1684539 lt!1684542)))

(assert (=> b!4505129 false))

(declare-fun b!4505130 () Bool)

(declare-fun e!2806509 () List!50682)

(assert (=> b!4505130 (= e!2806509 Nil!50558)))

(declare-fun b!4505131 () Bool)

(declare-fun e!2806507 () Unit!92671)

(declare-fun Unit!92719 () Unit!92671)

(assert (=> b!4505131 (= e!2806507 Unit!92719)))

(declare-fun lt!1684536 () List!50682)

(assert (=> b!4505131 (= lt!1684536 (removePresrvNoDuplicatedKeys!113 (t!357644 (toList!4268 lt!1684130)) key!3287))))

(declare-fun lt!1684528 () Unit!92671)

(assert (=> b!4505131 (= lt!1684528 (lemmaInListThenGetKeysListContains!433 lt!1684536 (_1!28771 (h!56383 (toList!4268 lt!1684130)))))))

(assert (=> b!4505131 (contains!13243 (getKeysList!437 lt!1684536) (_1!28771 (h!56383 (toList!4268 lt!1684130))))))

(declare-fun lt!1684537 () Unit!92671)

(assert (=> b!4505131 (= lt!1684537 lt!1684528)))

(assert (=> b!4505131 false))

(declare-fun b!4505132 () Bool)

(declare-fun call!313646 () (InoxSet tuple2!50954))

(declare-fun call!313648 () (InoxSet tuple2!50954))

(assert (=> b!4505132 (= call!313646 call!313648)))

(declare-fun e!2806503 () Unit!92671)

(declare-fun Unit!92720 () Unit!92671)

(assert (=> b!4505132 (= e!2806503 Unit!92720)))

(declare-fun b!4505133 () Bool)

(declare-fun res!1873322 () Bool)

(declare-fun e!2806510 () Bool)

(assert (=> b!4505133 (=> (not res!1873322) (not e!2806510))))

(declare-fun lt!1684525 () List!50682)

(assert (=> b!4505133 (= res!1873322 (not (containsKey!1698 lt!1684525 key!3287)))))

(declare-fun bm!313641 () Bool)

(declare-fun call!313647 () Bool)

(declare-fun c!768228 () Bool)

(declare-fun e!2806506 () List!50682)

(assert (=> bm!313641 (= call!313647 (containsKey!1698 e!2806506 (ite c!768228 key!3287 (_1!28771 (h!56383 (toList!4268 lt!1684130))))))))

(declare-fun c!768227 () Bool)

(assert (=> bm!313641 (= c!768227 c!768228)))

(declare-fun b!4505134 () Bool)

(declare-fun e!2806508 () List!50682)

(assert (=> b!4505134 (= e!2806508 e!2806509)))

(declare-fun c!768233 () Bool)

(assert (=> b!4505134 (= c!768233 (and ((_ is Cons!50558) (toList!4268 lt!1684130)) (not (= (_1!28771 (h!56383 (toList!4268 lt!1684130))) key!3287))))))

(declare-fun b!4505136 () Bool)

(declare-fun Unit!92721 () Unit!92671)

(assert (=> b!4505136 (= e!2806505 Unit!92721)))

(declare-fun b!4505137 () Bool)

(declare-fun lt!1684531 () Unit!92671)

(assert (=> b!4505137 (= lt!1684531 e!2806507)))

(declare-fun c!768229 () Bool)

(assert (=> b!4505137 (= c!768229 call!313647)))

(declare-fun lt!1684535 () Unit!92671)

(assert (=> b!4505137 (= lt!1684535 e!2806511)))

(declare-fun c!768226 () Bool)

(assert (=> b!4505137 (= c!768226 (contains!13243 (getKeysList!437 (t!357644 (toList!4268 lt!1684130))) (_1!28771 (h!56383 (toList!4268 lt!1684130)))))))

(declare-fun lt!1684541 () List!50682)

(declare-fun $colon$colon!908 (List!50682 tuple2!50954) List!50682)

(assert (=> b!4505137 (= lt!1684541 ($colon$colon!908 (removePresrvNoDuplicatedKeys!113 (t!357644 (toList!4268 lt!1684130)) key!3287) (h!56383 (toList!4268 lt!1684130))))))

(assert (=> b!4505137 (= e!2806509 lt!1684541)))

(declare-fun bm!313642 () Bool)

(declare-fun call!313649 () (InoxSet tuple2!50954))

(assert (=> bm!313642 (= call!313649 (content!8275 lt!1684525))))

(declare-fun bm!313643 () Bool)

(assert (=> bm!313643 (= call!313646 (content!8275 (t!357644 (toList!4268 lt!1684130))))))

(declare-fun b!4505138 () Bool)

(assert (=> b!4505138 (= e!2806508 (t!357644 (toList!4268 lt!1684130)))))

(declare-fun c!768230 () Bool)

(assert (=> b!4505138 (= c!768230 call!313647)))

(declare-fun lt!1684526 () Unit!92671)

(assert (=> b!4505138 (= lt!1684526 e!2806503)))

(declare-fun b!4505139 () Bool)

(declare-fun e!2806504 () Bool)

(assert (=> b!4505139 (= e!2806510 e!2806504)))

(declare-fun c!768231 () Bool)

(assert (=> b!4505139 (= c!768231 (containsKey!1698 (toList!4268 lt!1684130) key!3287))))

(declare-fun b!4505140 () Bool)

(assert (=> b!4505140 (= e!2806506 (removePresrvNoDuplicatedKeys!113 (t!357644 (toList!4268 lt!1684130)) key!3287))))

(declare-fun b!4505141 () Bool)

(declare-fun call!313651 () (InoxSet tuple2!50954))

(assert (=> b!4505141 (= e!2806504 (= call!313649 ((_ map and) call!313651 ((_ map not) (store ((as const (Array tuple2!50954 Bool)) false) (tuple2!50955 key!3287 (get!16532 (getValueByKey!1037 (toList!4268 lt!1684130) key!3287))) true)))))))

(assert (=> b!4505141 (containsKey!1698 (toList!4268 lt!1684130) key!3287)))

(declare-fun lt!1684534 () Unit!92671)

(assert (=> b!4505141 (= lt!1684534 (lemmaContainsKeyImpliesGetValueByKeyDefined!941 (toList!4268 lt!1684130) key!3287))))

(assert (=> b!4505141 (isDefined!8344 (getValueByKey!1037 (toList!4268 lt!1684130) key!3287))))

(declare-fun lt!1684529 () Unit!92671)

(assert (=> b!4505141 (= lt!1684529 lt!1684534)))

(declare-fun b!4505142 () Bool)

(declare-fun Unit!92722 () Unit!92671)

(assert (=> b!4505142 (= e!2806507 Unit!92722)))

(declare-fun b!4505143 () Bool)

(assert (=> b!4505143 (= e!2806506 (toList!4268 lt!1684130))))

(declare-fun d!1384527 () Bool)

(assert (=> d!1384527 e!2806510))

(declare-fun res!1873320 () Bool)

(assert (=> d!1384527 (=> (not res!1873320) (not e!2806510))))

(assert (=> d!1384527 (= res!1873320 (invariantList!989 lt!1684525))))

(assert (=> d!1384527 (= lt!1684525 e!2806508)))

(assert (=> d!1384527 (= c!768228 (and ((_ is Cons!50558) (toList!4268 lt!1684130)) (= (_1!28771 (h!56383 (toList!4268 lt!1684130))) key!3287)))))

(assert (=> d!1384527 (invariantList!989 (toList!4268 lt!1684130))))

(assert (=> d!1384527 (= (removePresrvNoDuplicatedKeys!113 (toList!4268 lt!1684130) key!3287) lt!1684525)))

(declare-fun b!4505135 () Bool)

(declare-fun Unit!92723 () Unit!92671)

(assert (=> b!4505135 (= e!2806511 Unit!92723)))

(declare-fun lt!1684540 () Unit!92671)

(assert (=> b!4505135 (= lt!1684540 (lemmaInGetKeysListThenContainsKey!436 (t!357644 (toList!4268 lt!1684130)) (_1!28771 (h!56383 (toList!4268 lt!1684130)))))))

(assert (=> b!4505135 call!313650))

(declare-fun lt!1684530 () Unit!92671)

(assert (=> b!4505135 (= lt!1684530 lt!1684540)))

(assert (=> b!4505135 false))

(declare-fun bm!313644 () Bool)

(assert (=> bm!313644 (= call!313648 (content!8275 (toList!4268 lt!1684130)))))

(declare-fun b!4505144 () Bool)

(assert (=> b!4505144 (= call!313646 ((_ map and) call!313648 ((_ map not) (store ((as const (Array tuple2!50954 Bool)) false) (tuple2!50955 key!3287 (get!16532 (getValueByKey!1037 (toList!4268 lt!1684130) key!3287))) true))))))

(declare-fun lt!1684532 () Unit!92671)

(assert (=> b!4505144 (= lt!1684532 e!2806505)))

(declare-fun c!768232 () Bool)

(declare-fun contains!13244 (List!50682 tuple2!50954) Bool)

(assert (=> b!4505144 (= c!768232 (contains!13244 (t!357644 (toList!4268 lt!1684130)) (tuple2!50955 key!3287 (get!16532 (getValueByKey!1037 (toList!4268 lt!1684130) key!3287)))))))

(declare-fun Unit!92724 () Unit!92671)

(assert (=> b!4505144 (= e!2806503 Unit!92724)))

(declare-fun b!4505145 () Bool)

(declare-fun res!1873321 () Bool)

(assert (=> b!4505145 (=> (not res!1873321) (not e!2806510))))

(assert (=> b!4505145 (= res!1873321 (= (content!8274 (getKeysList!437 lt!1684525)) ((_ map and) (content!8274 (getKeysList!437 (toList!4268 lt!1684130))) ((_ map not) (store ((as const (Array K!11965 Bool)) false) key!3287 true)))))))

(declare-fun bm!313645 () Bool)

(assert (=> bm!313645 (= call!313651 (content!8275 (toList!4268 lt!1684130)))))

(declare-fun bm!313646 () Bool)

(assert (=> bm!313646 (= call!313650 (containsKey!1698 (t!357644 (toList!4268 lt!1684130)) (ite c!768228 lt!1684533 (_1!28771 (h!56383 (toList!4268 lt!1684130))))))))

(declare-fun b!4505146 () Bool)

(assert (=> b!4505146 (= e!2806504 (= call!313649 call!313651))))

(assert (= (and d!1384527 c!768228) b!4505138))

(assert (= (and d!1384527 (not c!768228)) b!4505134))

(assert (= (and b!4505138 c!768230) b!4505144))

(assert (= (and b!4505138 (not c!768230)) b!4505132))

(assert (= (and b!4505144 c!768232) b!4505129))

(assert (= (and b!4505144 (not c!768232)) b!4505136))

(assert (= (or b!4505144 b!4505132) bm!313643))

(assert (= (or b!4505144 b!4505132) bm!313644))

(assert (= (and b!4505134 c!768233) b!4505137))

(assert (= (and b!4505134 (not c!768233)) b!4505130))

(assert (= (and b!4505137 c!768226) b!4505135))

(assert (= (and b!4505137 (not c!768226)) b!4505128))

(assert (= (and b!4505137 c!768229) b!4505131))

(assert (= (and b!4505137 (not c!768229)) b!4505142))

(assert (= (or b!4505129 b!4505135) bm!313646))

(assert (= (or b!4505138 b!4505137) bm!313641))

(assert (= (and bm!313641 c!768227) b!4505143))

(assert (= (and bm!313641 (not c!768227)) b!4505140))

(assert (= (and d!1384527 res!1873320) b!4505133))

(assert (= (and b!4505133 res!1873322) b!4505145))

(assert (= (and b!4505145 res!1873321) b!4505139))

(assert (= (and b!4505139 c!768231) b!4505141))

(assert (= (and b!4505139 (not c!768231)) b!4505146))

(assert (= (or b!4505141 b!4505146) bm!313642))

(assert (= (or b!4505141 b!4505146) bm!313645))

(declare-fun m!5240329 () Bool)

(assert (=> b!4505135 m!5240329))

(declare-fun m!5240331 () Bool)

(assert (=> b!4505145 m!5240331))

(assert (=> b!4505145 m!5239945))

(assert (=> b!4505145 m!5240331))

(declare-fun m!5240333 () Bool)

(assert (=> b!4505145 m!5240333))

(assert (=> b!4505145 m!5239945))

(declare-fun m!5240335 () Bool)

(assert (=> b!4505145 m!5240335))

(assert (=> b!4505145 m!5240011))

(declare-fun m!5240337 () Bool)

(assert (=> bm!313645 m!5240337))

(declare-fun m!5240339 () Bool)

(assert (=> b!4505137 m!5240339))

(assert (=> b!4505137 m!5240339))

(declare-fun m!5240341 () Bool)

(assert (=> b!4505137 m!5240341))

(declare-fun m!5240343 () Bool)

(assert (=> b!4505137 m!5240343))

(assert (=> b!4505137 m!5240343))

(declare-fun m!5240345 () Bool)

(assert (=> b!4505137 m!5240345))

(assert (=> b!4505131 m!5240343))

(declare-fun m!5240347 () Bool)

(assert (=> b!4505131 m!5240347))

(declare-fun m!5240349 () Bool)

(assert (=> b!4505131 m!5240349))

(assert (=> b!4505131 m!5240349))

(declare-fun m!5240351 () Bool)

(assert (=> b!4505131 m!5240351))

(declare-fun m!5240353 () Bool)

(assert (=> bm!313643 m!5240353))

(declare-fun m!5240355 () Bool)

(assert (=> bm!313642 m!5240355))

(assert (=> b!4505140 m!5240343))

(declare-fun m!5240357 () Bool)

(assert (=> bm!313646 m!5240357))

(declare-fun m!5240359 () Bool)

(assert (=> bm!313641 m!5240359))

(assert (=> bm!313644 m!5240337))

(declare-fun m!5240361 () Bool)

(assert (=> b!4505133 m!5240361))

(assert (=> b!4505144 m!5239937))

(assert (=> b!4505144 m!5239937))

(declare-fun m!5240363 () Bool)

(assert (=> b!4505144 m!5240363))

(declare-fun m!5240365 () Bool)

(assert (=> b!4505144 m!5240365))

(declare-fun m!5240367 () Bool)

(assert (=> b!4505144 m!5240367))

(assert (=> b!4505129 m!5239937))

(assert (=> b!4505129 m!5239937))

(assert (=> b!4505129 m!5240363))

(assert (=> b!4505129 m!5240363))

(declare-fun m!5240369 () Bool)

(assert (=> b!4505129 m!5240369))

(assert (=> b!4505139 m!5239941))

(declare-fun m!5240371 () Bool)

(assert (=> d!1384527 m!5240371))

(assert (=> d!1384527 m!5240191))

(assert (=> b!4505141 m!5240365))

(assert (=> b!4505141 m!5239941))

(assert (=> b!4505141 m!5239951))

(assert (=> b!4505141 m!5239937))

(assert (=> b!4505141 m!5240363))

(assert (=> b!4505141 m!5239937))

(assert (=> b!4505141 m!5239937))

(assert (=> b!4505141 m!5239939))

(assert (=> d!1384399 d!1384527))

(declare-fun d!1384529 () Bool)

(declare-fun res!1873325 () Bool)

(declare-fun e!2806514 () Bool)

(assert (=> d!1384529 (=> res!1873325 e!2806514)))

(declare-fun e!2806512 () Bool)

(assert (=> d!1384529 (= res!1873325 e!2806512)))

(declare-fun res!1873323 () Bool)

(assert (=> d!1384529 (=> (not res!1873323) (not e!2806512))))

(assert (=> d!1384529 (= res!1873323 ((_ is Cons!50559) (t!357645 (toList!4267 lt!1684132))))))

(assert (=> d!1384529 (= (containsKeyBiggerList!110 (t!357645 (toList!4267 lt!1684132)) key!3287) e!2806514)))

(declare-fun b!4505147 () Bool)

(assert (=> b!4505147 (= e!2806512 (containsKey!1694 (_2!28772 (h!56384 (t!357645 (toList!4267 lt!1684132)))) key!3287))))

(declare-fun b!4505148 () Bool)

(declare-fun e!2806513 () Bool)

(assert (=> b!4505148 (= e!2806514 e!2806513)))

(declare-fun res!1873324 () Bool)

(assert (=> b!4505148 (=> (not res!1873324) (not e!2806513))))

(assert (=> b!4505148 (= res!1873324 ((_ is Cons!50559) (t!357645 (toList!4267 lt!1684132))))))

(declare-fun b!4505149 () Bool)

(assert (=> b!4505149 (= e!2806513 (containsKeyBiggerList!110 (t!357645 (t!357645 (toList!4267 lt!1684132))) key!3287))))

(assert (= (and d!1384529 res!1873323) b!4505147))

(assert (= (and d!1384529 (not res!1873325)) b!4505148))

(assert (= (and b!4505148 res!1873324) b!4505149))

(declare-fun m!5240373 () Bool)

(assert (=> b!4505147 m!5240373))

(declare-fun m!5240375 () Bool)

(assert (=> b!4505149 m!5240375))

(assert (=> b!4504770 d!1384529))

(declare-fun b!4505150 () Bool)

(declare-fun e!2806515 () Option!11056)

(assert (=> b!4505150 (= e!2806515 (Some!11055 (_2!28772 (h!56384 (toList!4267 lt!1684367)))))))

(declare-fun b!4505153 () Bool)

(declare-fun e!2806516 () Option!11056)

(assert (=> b!4505153 (= e!2806516 None!11055)))

(declare-fun d!1384531 () Bool)

(declare-fun c!768234 () Bool)

(assert (=> d!1384531 (= c!768234 (and ((_ is Cons!50559) (toList!4267 lt!1684367)) (= (_1!28772 (h!56384 (toList!4267 lt!1684367))) (_1!28772 lt!1684126))))))

(assert (=> d!1384531 (= (getValueByKey!1036 (toList!4267 lt!1684367) (_1!28772 lt!1684126)) e!2806515)))

(declare-fun b!4505152 () Bool)

(assert (=> b!4505152 (= e!2806516 (getValueByKey!1036 (t!357645 (toList!4267 lt!1684367)) (_1!28772 lt!1684126)))))

(declare-fun b!4505151 () Bool)

(assert (=> b!4505151 (= e!2806515 e!2806516)))

(declare-fun c!768235 () Bool)

(assert (=> b!4505151 (= c!768235 (and ((_ is Cons!50559) (toList!4267 lt!1684367)) (not (= (_1!28772 (h!56384 (toList!4267 lt!1684367))) (_1!28772 lt!1684126)))))))

(assert (= (and d!1384531 c!768234) b!4505150))

(assert (= (and d!1384531 (not c!768234)) b!4505151))

(assert (= (and b!4505151 c!768235) b!4505152))

(assert (= (and b!4505151 (not c!768235)) b!4505153))

(declare-fun m!5240377 () Bool)

(assert (=> b!4505152 m!5240377))

(assert (=> b!4504885 d!1384531))

(declare-fun d!1384533 () Bool)

(declare-fun res!1873326 () Bool)

(declare-fun e!2806517 () Bool)

(assert (=> d!1384533 (=> res!1873326 e!2806517)))

(assert (=> d!1384533 (= res!1873326 (and ((_ is Cons!50558) lt!1684197) (= (_1!28771 (h!56383 lt!1684197)) key!3287)))))

(assert (=> d!1384533 (= (containsKey!1694 lt!1684197 key!3287) e!2806517)))

(declare-fun b!4505154 () Bool)

(declare-fun e!2806518 () Bool)

(assert (=> b!4505154 (= e!2806517 e!2806518)))

(declare-fun res!1873327 () Bool)

(assert (=> b!4505154 (=> (not res!1873327) (not e!2806518))))

(assert (=> b!4505154 (= res!1873327 ((_ is Cons!50558) lt!1684197))))

(declare-fun b!4505155 () Bool)

(assert (=> b!4505155 (= e!2806518 (containsKey!1694 (t!357644 lt!1684197) key!3287))))

(assert (= (and d!1384533 (not res!1873326)) b!4505154))

(assert (= (and b!4505154 res!1873327) b!4505155))

(declare-fun m!5240379 () Bool)

(assert (=> b!4505155 m!5240379))

(assert (=> d!1384281 d!1384533))

(declare-fun d!1384535 () Bool)

(declare-fun res!1873328 () Bool)

(declare-fun e!2806519 () Bool)

(assert (=> d!1384535 (=> res!1873328 e!2806519)))

(assert (=> d!1384535 (= res!1873328 (not ((_ is Cons!50558) lt!1684116)))))

(assert (=> d!1384535 (= (noDuplicateKeys!1130 lt!1684116) e!2806519)))

(declare-fun b!4505156 () Bool)

(declare-fun e!2806520 () Bool)

(assert (=> b!4505156 (= e!2806519 e!2806520)))

(declare-fun res!1873329 () Bool)

(assert (=> b!4505156 (=> (not res!1873329) (not e!2806520))))

(assert (=> b!4505156 (= res!1873329 (not (containsKey!1694 (t!357644 lt!1684116) (_1!28771 (h!56383 lt!1684116)))))))

(declare-fun b!4505157 () Bool)

(assert (=> b!4505157 (= e!2806520 (noDuplicateKeys!1130 (t!357644 lt!1684116)))))

(assert (= (and d!1384535 (not res!1873328)) b!4505156))

(assert (= (and b!4505156 res!1873329) b!4505157))

(declare-fun m!5240381 () Bool)

(assert (=> b!4505156 m!5240381))

(assert (=> b!4505157 m!5240197))

(assert (=> d!1384281 d!1384535))

(declare-fun d!1384537 () Bool)

(declare-fun c!768236 () Bool)

(assert (=> d!1384537 (= c!768236 ((_ is Nil!50558) (toList!4268 lt!1684129)))))

(declare-fun e!2806521 () (InoxSet tuple2!50954))

(assert (=> d!1384537 (= (content!8275 (toList!4268 lt!1684129)) e!2806521)))

(declare-fun b!4505158 () Bool)

(assert (=> b!4505158 (= e!2806521 ((as const (Array tuple2!50954 Bool)) false))))

(declare-fun b!4505159 () Bool)

(assert (=> b!4505159 (= e!2806521 ((_ map or) (store ((as const (Array tuple2!50954 Bool)) false) (h!56383 (toList!4268 lt!1684129)) true) (content!8275 (t!357644 (toList!4268 lt!1684129)))))))

(assert (= (and d!1384537 c!768236) b!4505158))

(assert (= (and d!1384537 (not c!768236)) b!4505159))

(declare-fun m!5240383 () Bool)

(assert (=> b!4505159 m!5240383))

(declare-fun m!5240385 () Bool)

(assert (=> b!4505159 m!5240385))

(assert (=> d!1384411 d!1384537))

(declare-fun d!1384539 () Bool)

(declare-fun c!768237 () Bool)

(assert (=> d!1384539 (= c!768237 ((_ is Nil!50558) (toList!4268 lt!1684131)))))

(declare-fun e!2806522 () (InoxSet tuple2!50954))

(assert (=> d!1384539 (= (content!8275 (toList!4268 lt!1684131)) e!2806522)))

(declare-fun b!4505160 () Bool)

(assert (=> b!4505160 (= e!2806522 ((as const (Array tuple2!50954 Bool)) false))))

(declare-fun b!4505161 () Bool)

(assert (=> b!4505161 (= e!2806522 ((_ map or) (store ((as const (Array tuple2!50954 Bool)) false) (h!56383 (toList!4268 lt!1684131)) true) (content!8275 (t!357644 (toList!4268 lt!1684131)))))))

(assert (= (and d!1384539 c!768237) b!4505160))

(assert (= (and d!1384539 (not c!768237)) b!4505161))

(declare-fun m!5240387 () Bool)

(assert (=> b!4505161 m!5240387))

(declare-fun m!5240389 () Bool)

(assert (=> b!4505161 m!5240389))

(assert (=> d!1384411 d!1384539))

(assert (=> d!1384431 d!1384539))

(assert (=> d!1384431 d!1384537))

(declare-fun d!1384541 () Bool)

(declare-fun lt!1684545 () Bool)

(assert (=> d!1384541 (= lt!1684545 (select (content!8274 (keys!17536 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) key!3287))))

(declare-fun e!2806528 () Bool)

(assert (=> d!1384541 (= lt!1684545 e!2806528)))

(declare-fun res!1873334 () Bool)

(assert (=> d!1384541 (=> (not res!1873334) (not e!2806528))))

(assert (=> d!1384541 (= res!1873334 ((_ is Cons!50561) (keys!17536 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))))

(assert (=> d!1384541 (= (contains!13243 (keys!17536 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287) lt!1684545)))

(declare-fun b!4505166 () Bool)

(declare-fun e!2806527 () Bool)

(assert (=> b!4505166 (= e!2806528 e!2806527)))

(declare-fun res!1873335 () Bool)

(assert (=> b!4505166 (=> res!1873335 e!2806527)))

(assert (=> b!4505166 (= res!1873335 (= (h!56388 (keys!17536 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) key!3287))))

(declare-fun b!4505167 () Bool)

(assert (=> b!4505167 (= e!2806527 (contains!13243 (t!357647 (keys!17536 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) key!3287))))

(assert (= (and d!1384541 res!1873334) b!4505166))

(assert (= (and b!4505166 (not res!1873335)) b!4505167))

(assert (=> d!1384541 m!5239873))

(declare-fun m!5240391 () Bool)

(assert (=> d!1384541 m!5240391))

(declare-fun m!5240393 () Bool)

(assert (=> d!1384541 m!5240393))

(declare-fun m!5240395 () Bool)

(assert (=> b!4505167 m!5240395))

(assert (=> b!4504819 d!1384541))

(declare-fun b!4505175 () Bool)

(assert (=> b!4505175 true))

(declare-fun d!1384543 () Bool)

(declare-fun e!2806531 () Bool)

(assert (=> d!1384543 e!2806531))

(declare-fun res!1873344 () Bool)

(assert (=> d!1384543 (=> (not res!1873344) (not e!2806531))))

(declare-fun lt!1684548 () List!50685)

(declare-fun noDuplicate!733 (List!50685) Bool)

(assert (=> d!1384543 (= res!1873344 (noDuplicate!733 lt!1684548))))

(assert (=> d!1384543 (= lt!1684548 (getKeysList!437 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))))

(assert (=> d!1384543 (= (keys!17536 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) lt!1684548)))

(declare-fun b!4505174 () Bool)

(declare-fun res!1873342 () Bool)

(assert (=> b!4505174 (=> (not res!1873342) (not e!2806531))))

(declare-fun length!322 (List!50685) Int)

(declare-fun length!323 (List!50682) Int)

(assert (=> b!4505174 (= res!1873342 (= (length!322 lt!1684548) (length!323 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))))))

(declare-fun res!1873343 () Bool)

(assert (=> b!4505175 (=> (not res!1873343) (not e!2806531))))

(declare-fun lambda!169507 () Int)

(declare-fun forall!10194 (List!50685 Int) Bool)

(assert (=> b!4505175 (= res!1873343 (forall!10194 lt!1684548 lambda!169507))))

(declare-fun lambda!169508 () Int)

(declare-fun b!4505176 () Bool)

(declare-fun map!11109 (List!50682 Int) List!50685)

(assert (=> b!4505176 (= e!2806531 (= (content!8274 lt!1684548) (content!8274 (map!11109 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) lambda!169508))))))

(assert (= (and d!1384543 res!1873344) b!4505174))

(assert (= (and b!4505174 res!1873342) b!4505175))

(assert (= (and b!4505175 res!1873343) b!4505176))

(declare-fun m!5240397 () Bool)

(assert (=> d!1384543 m!5240397))

(assert (=> d!1384543 m!5239871))

(declare-fun m!5240399 () Bool)

(assert (=> b!4505174 m!5240399))

(declare-fun m!5240401 () Bool)

(assert (=> b!4505174 m!5240401))

(declare-fun m!5240403 () Bool)

(assert (=> b!4505175 m!5240403))

(declare-fun m!5240405 () Bool)

(assert (=> b!4505176 m!5240405))

(declare-fun m!5240407 () Bool)

(assert (=> b!4505176 m!5240407))

(assert (=> b!4505176 m!5240407))

(declare-fun m!5240409 () Bool)

(assert (=> b!4505176 m!5240409))

(assert (=> b!4504819 d!1384543))

(assert (=> b!4504679 d!1384453))

(declare-fun d!1384545 () Bool)

(assert (=> d!1384545 (isDefined!8344 (getValueByKey!1037 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287))))

(declare-fun lt!1684551 () Unit!92671)

(declare-fun choose!29202 (List!50682 K!11965) Unit!92671)

(assert (=> d!1384545 (= lt!1684551 (choose!29202 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287))))

(assert (=> d!1384545 (invariantList!989 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))))

(assert (=> d!1384545 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!941 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287) lt!1684551)))

(declare-fun bs!843056 () Bool)

(assert (= bs!843056 d!1384545))

(assert (=> bs!843056 m!5239863))

(assert (=> bs!843056 m!5239863))

(assert (=> bs!843056 m!5239865))

(declare-fun m!5240411 () Bool)

(assert (=> bs!843056 m!5240411))

(assert (=> bs!843056 m!5240153))

(assert (=> b!4504816 d!1384545))

(assert (=> b!4504816 d!1384519))

(assert (=> b!4504816 d!1384521))

(declare-fun d!1384547 () Bool)

(assert (=> d!1384547 (contains!13243 (getKeysList!437 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) key!3287)))

(declare-fun lt!1684554 () Unit!92671)

(declare-fun choose!29203 (List!50682 K!11965) Unit!92671)

(assert (=> d!1384547 (= lt!1684554 (choose!29203 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287))))

(assert (=> d!1384547 (invariantList!989 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))))

(assert (=> d!1384547 (= (lemmaInListThenGetKeysListContains!433 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) key!3287) lt!1684554)))

(declare-fun bs!843057 () Bool)

(assert (= bs!843057 d!1384547))

(assert (=> bs!843057 m!5239871))

(assert (=> bs!843057 m!5239871))

(declare-fun m!5240413 () Bool)

(assert (=> bs!843057 m!5240413))

(declare-fun m!5240415 () Bool)

(assert (=> bs!843057 m!5240415))

(assert (=> bs!843057 m!5240153))

(assert (=> b!4504816 d!1384547))

(declare-fun d!1384549 () Bool)

(declare-fun lt!1684555 () Bool)

(assert (=> d!1384549 (= lt!1684555 (select (content!8271 (toList!4267 lt!1684263)) lt!1684119))))

(declare-fun e!2806533 () Bool)

(assert (=> d!1384549 (= lt!1684555 e!2806533)))

(declare-fun res!1873346 () Bool)

(assert (=> d!1384549 (=> (not res!1873346) (not e!2806533))))

(assert (=> d!1384549 (= res!1873346 ((_ is Cons!50559) (toList!4267 lt!1684263)))))

(assert (=> d!1384549 (= (contains!13239 (toList!4267 lt!1684263) lt!1684119) lt!1684555)))

(declare-fun b!4505179 () Bool)

(declare-fun e!2806532 () Bool)

(assert (=> b!4505179 (= e!2806533 e!2806532)))

(declare-fun res!1873345 () Bool)

(assert (=> b!4505179 (=> res!1873345 e!2806532)))

(assert (=> b!4505179 (= res!1873345 (= (h!56384 (toList!4267 lt!1684263)) lt!1684119))))

(declare-fun b!4505180 () Bool)

(assert (=> b!4505180 (= e!2806532 (contains!13239 (t!357645 (toList!4267 lt!1684263)) lt!1684119))))

(assert (= (and d!1384549 res!1873346) b!4505179))

(assert (= (and b!4505179 (not res!1873345)) b!4505180))

(declare-fun m!5240417 () Bool)

(assert (=> d!1384549 m!5240417))

(declare-fun m!5240419 () Bool)

(assert (=> d!1384549 m!5240419))

(declare-fun m!5240421 () Bool)

(assert (=> b!4505180 m!5240421))

(assert (=> b!4504743 d!1384549))

(declare-fun d!1384551 () Bool)

(declare-fun e!2806539 () Bool)

(assert (=> d!1384551 e!2806539))

(declare-fun res!1873349 () Bool)

(assert (=> d!1384551 (=> res!1873349 e!2806539)))

(declare-fun e!2806536 () Bool)

(assert (=> d!1384551 (= res!1873349 e!2806536)))

(declare-fun res!1873348 () Bool)

(assert (=> d!1384551 (=> (not res!1873348) (not e!2806536))))

(declare-fun lt!1684557 () Bool)

(assert (=> d!1384551 (= res!1873348 (not lt!1684557))))

(declare-fun lt!1684560 () Bool)

(assert (=> d!1384551 (= lt!1684557 lt!1684560)))

(declare-fun lt!1684558 () Unit!92671)

(declare-fun e!2806535 () Unit!92671)

(assert (=> d!1384551 (= lt!1684558 e!2806535)))

(declare-fun c!768238 () Bool)

(assert (=> d!1384551 (= c!768238 lt!1684560)))

(assert (=> d!1384551 (= lt!1684560 (containsKey!1698 (toList!4268 (extractMap!1186 (toList!4267 lm!1477))) key!3287))))

(assert (=> d!1384551 (= (contains!13241 (extractMap!1186 (toList!4267 lm!1477)) key!3287) lt!1684557)))

(declare-fun b!4505181 () Bool)

(declare-fun lt!1684561 () Unit!92671)

(assert (=> b!4505181 (= e!2806535 lt!1684561)))

(declare-fun lt!1684563 () Unit!92671)

(assert (=> b!4505181 (= lt!1684563 (lemmaContainsKeyImpliesGetValueByKeyDefined!941 (toList!4268 (extractMap!1186 (toList!4267 lm!1477))) key!3287))))

(assert (=> b!4505181 (isDefined!8344 (getValueByKey!1037 (toList!4268 (extractMap!1186 (toList!4267 lm!1477))) key!3287))))

(declare-fun lt!1684562 () Unit!92671)

(assert (=> b!4505181 (= lt!1684562 lt!1684563)))

(assert (=> b!4505181 (= lt!1684561 (lemmaInListThenGetKeysListContains!433 (toList!4268 (extractMap!1186 (toList!4267 lm!1477))) key!3287))))

(declare-fun call!313652 () Bool)

(assert (=> b!4505181 call!313652))

(declare-fun b!4505182 () Bool)

(declare-fun e!2806537 () Unit!92671)

(declare-fun Unit!92736 () Unit!92671)

(assert (=> b!4505182 (= e!2806537 Unit!92736)))

(declare-fun bm!313647 () Bool)

(declare-fun e!2806538 () List!50685)

(assert (=> bm!313647 (= call!313652 (contains!13243 e!2806538 key!3287))))

(declare-fun c!768240 () Bool)

(assert (=> bm!313647 (= c!768240 c!768238)))

(declare-fun b!4505183 () Bool)

(assert (=> b!4505183 (= e!2806535 e!2806537)))

(declare-fun c!768239 () Bool)

(assert (=> b!4505183 (= c!768239 call!313652)))

(declare-fun b!4505184 () Bool)

(declare-fun e!2806534 () Bool)

(assert (=> b!4505184 (= e!2806534 (contains!13243 (keys!17536 (extractMap!1186 (toList!4267 lm!1477))) key!3287))))

(declare-fun b!4505185 () Bool)

(assert (=> b!4505185 (= e!2806536 (not (contains!13243 (keys!17536 (extractMap!1186 (toList!4267 lm!1477))) key!3287)))))

(declare-fun b!4505186 () Bool)

(assert (=> b!4505186 (= e!2806538 (keys!17536 (extractMap!1186 (toList!4267 lm!1477))))))

(declare-fun b!4505187 () Bool)

(assert (=> b!4505187 false))

(declare-fun lt!1684559 () Unit!92671)

(declare-fun lt!1684556 () Unit!92671)

(assert (=> b!4505187 (= lt!1684559 lt!1684556)))

(assert (=> b!4505187 (containsKey!1698 (toList!4268 (extractMap!1186 (toList!4267 lm!1477))) key!3287)))

(assert (=> b!4505187 (= lt!1684556 (lemmaInGetKeysListThenContainsKey!436 (toList!4268 (extractMap!1186 (toList!4267 lm!1477))) key!3287))))

(declare-fun Unit!92737 () Unit!92671)

(assert (=> b!4505187 (= e!2806537 Unit!92737)))

(declare-fun b!4505188 () Bool)

(assert (=> b!4505188 (= e!2806539 e!2806534)))

(declare-fun res!1873347 () Bool)

(assert (=> b!4505188 (=> (not res!1873347) (not e!2806534))))

(assert (=> b!4505188 (= res!1873347 (isDefined!8344 (getValueByKey!1037 (toList!4268 (extractMap!1186 (toList!4267 lm!1477))) key!3287)))))

(declare-fun b!4505189 () Bool)

(assert (=> b!4505189 (= e!2806538 (getKeysList!437 (toList!4268 (extractMap!1186 (toList!4267 lm!1477)))))))

(assert (= (and d!1384551 c!768238) b!4505181))

(assert (= (and d!1384551 (not c!768238)) b!4505183))

(assert (= (and b!4505183 c!768239) b!4505187))

(assert (= (and b!4505183 (not c!768239)) b!4505182))

(assert (= (or b!4505181 b!4505183) bm!313647))

(assert (= (and bm!313647 c!768240) b!4505189))

(assert (= (and bm!313647 (not c!768240)) b!4505186))

(assert (= (and d!1384551 res!1873348) b!4505185))

(assert (= (and d!1384551 (not res!1873349)) b!4505188))

(assert (= (and b!4505188 res!1873347) b!4505184))

(declare-fun m!5240423 () Bool)

(assert (=> b!4505188 m!5240423))

(assert (=> b!4505188 m!5240423))

(declare-fun m!5240425 () Bool)

(assert (=> b!4505188 m!5240425))

(declare-fun m!5240427 () Bool)

(assert (=> b!4505187 m!5240427))

(declare-fun m!5240429 () Bool)

(assert (=> b!4505187 m!5240429))

(declare-fun m!5240431 () Bool)

(assert (=> b!4505189 m!5240431))

(assert (=> b!4505186 m!5239523))

(declare-fun m!5240433 () Bool)

(assert (=> b!4505186 m!5240433))

(assert (=> b!4505185 m!5239523))

(assert (=> b!4505185 m!5240433))

(assert (=> b!4505185 m!5240433))

(declare-fun m!5240435 () Bool)

(assert (=> b!4505185 m!5240435))

(assert (=> b!4505184 m!5239523))

(assert (=> b!4505184 m!5240433))

(assert (=> b!4505184 m!5240433))

(assert (=> b!4505184 m!5240435))

(assert (=> d!1384551 m!5240427))

(declare-fun m!5240437 () Bool)

(assert (=> b!4505181 m!5240437))

(assert (=> b!4505181 m!5240423))

(assert (=> b!4505181 m!5240423))

(assert (=> b!4505181 m!5240425))

(declare-fun m!5240439 () Bool)

(assert (=> b!4505181 m!5240439))

(declare-fun m!5240441 () Bool)

(assert (=> bm!313647 m!5240441))

(assert (=> d!1384425 d!1384551))

(assert (=> d!1384425 d!1384395))

(declare-fun d!1384553 () Bool)

(assert (=> d!1384553 (not (contains!13241 (extractMap!1186 (toList!4267 lm!1477)) key!3287))))

(assert (=> d!1384553 true))

(declare-fun _$26!332 () Unit!92671)

(assert (=> d!1384553 (= (choose!29198 lm!1477 key!3287 hashF!1107) _$26!332)))

(declare-fun bs!843058 () Bool)

(assert (= bs!843058 d!1384553))

(assert (=> bs!843058 m!5239523))

(assert (=> bs!843058 m!5239523))

(assert (=> bs!843058 m!5240085))

(assert (=> d!1384425 d!1384553))

(declare-fun d!1384555 () Bool)

(declare-fun res!1873350 () Bool)

(declare-fun e!2806540 () Bool)

(assert (=> d!1384555 (=> res!1873350 e!2806540)))

(assert (=> d!1384555 (= res!1873350 ((_ is Nil!50559) (toList!4267 lm!1477)))))

(assert (=> d!1384555 (= (forall!10191 (toList!4267 lm!1477) lambda!169461) e!2806540)))

(declare-fun b!4505190 () Bool)

(declare-fun e!2806541 () Bool)

(assert (=> b!4505190 (= e!2806540 e!2806541)))

(declare-fun res!1873351 () Bool)

(assert (=> b!4505190 (=> (not res!1873351) (not e!2806541))))

(assert (=> b!4505190 (= res!1873351 (dynLambda!21121 lambda!169461 (h!56384 (toList!4267 lm!1477))))))

(declare-fun b!4505191 () Bool)

(assert (=> b!4505191 (= e!2806541 (forall!10191 (t!357645 (toList!4267 lm!1477)) lambda!169461))))

(assert (= (and d!1384555 (not res!1873350)) b!4505190))

(assert (= (and b!4505190 res!1873351) b!4505191))

(declare-fun b_lambda!153235 () Bool)

(assert (=> (not b_lambda!153235) (not b!4505190)))

(declare-fun m!5240443 () Bool)

(assert (=> b!4505190 m!5240443))

(declare-fun m!5240445 () Bool)

(assert (=> b!4505191 m!5240445))

(assert (=> d!1384425 d!1384555))

(declare-fun d!1384557 () Bool)

(declare-fun c!768243 () Bool)

(assert (=> d!1384557 (= c!768243 ((_ is Nil!50561) (keys!17536 lt!1684130)))))

(declare-fun e!2806544 () (InoxSet K!11965))

(assert (=> d!1384557 (= (content!8274 (keys!17536 lt!1684130)) e!2806544)))

(declare-fun b!4505196 () Bool)

(assert (=> b!4505196 (= e!2806544 ((as const (Array K!11965 Bool)) false))))

(declare-fun b!4505197 () Bool)

(assert (=> b!4505197 (= e!2806544 ((_ map or) (store ((as const (Array K!11965 Bool)) false) (h!56388 (keys!17536 lt!1684130)) true) (content!8274 (t!357647 (keys!17536 lt!1684130)))))))

(assert (= (and d!1384557 c!768243) b!4505196))

(assert (= (and d!1384557 (not c!768243)) b!4505197))

(declare-fun m!5240447 () Bool)

(assert (=> b!4505197 m!5240447))

(declare-fun m!5240449 () Bool)

(assert (=> b!4505197 m!5240449))

(assert (=> b!4504878 d!1384557))

(declare-fun bs!843059 () Bool)

(declare-fun b!4505199 () Bool)

(assert (= bs!843059 (and b!4505199 b!4505175)))

(declare-fun lambda!169509 () Int)

(assert (=> bs!843059 (= (= (toList!4268 lt!1684130) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169509 lambda!169507))))

(assert (=> b!4505199 true))

(declare-fun bs!843060 () Bool)

(declare-fun b!4505200 () Bool)

(assert (= bs!843060 (and b!4505200 b!4505176)))

(declare-fun lambda!169510 () Int)

(assert (=> bs!843060 (= lambda!169510 lambda!169508)))

(declare-fun d!1384559 () Bool)

(declare-fun e!2806545 () Bool)

(assert (=> d!1384559 e!2806545))

(declare-fun res!1873354 () Bool)

(assert (=> d!1384559 (=> (not res!1873354) (not e!2806545))))

(declare-fun lt!1684564 () List!50685)

(assert (=> d!1384559 (= res!1873354 (noDuplicate!733 lt!1684564))))

(assert (=> d!1384559 (= lt!1684564 (getKeysList!437 (toList!4268 lt!1684130)))))

(assert (=> d!1384559 (= (keys!17536 lt!1684130) lt!1684564)))

(declare-fun b!4505198 () Bool)

(declare-fun res!1873352 () Bool)

(assert (=> b!4505198 (=> (not res!1873352) (not e!2806545))))

(assert (=> b!4505198 (= res!1873352 (= (length!322 lt!1684564) (length!323 (toList!4268 lt!1684130))))))

(declare-fun res!1873353 () Bool)

(assert (=> b!4505199 (=> (not res!1873353) (not e!2806545))))

(assert (=> b!4505199 (= res!1873353 (forall!10194 lt!1684564 lambda!169509))))

(assert (=> b!4505200 (= e!2806545 (= (content!8274 lt!1684564) (content!8274 (map!11109 (toList!4268 lt!1684130) lambda!169510))))))

(assert (= (and d!1384559 res!1873354) b!4505198))

(assert (= (and b!4505198 res!1873352) b!4505199))

(assert (= (and b!4505199 res!1873353) b!4505200))

(declare-fun m!5240451 () Bool)

(assert (=> d!1384559 m!5240451))

(assert (=> d!1384559 m!5239945))

(declare-fun m!5240453 () Bool)

(assert (=> b!4505198 m!5240453))

(declare-fun m!5240455 () Bool)

(assert (=> b!4505198 m!5240455))

(declare-fun m!5240457 () Bool)

(assert (=> b!4505199 m!5240457))

(declare-fun m!5240459 () Bool)

(assert (=> b!4505200 m!5240459))

(declare-fun m!5240461 () Bool)

(assert (=> b!4505200 m!5240461))

(assert (=> b!4505200 m!5240461))

(declare-fun m!5240463 () Bool)

(assert (=> b!4505200 m!5240463))

(assert (=> b!4504878 d!1384559))

(declare-fun d!1384561 () Bool)

(declare-fun c!768244 () Bool)

(assert (=> d!1384561 (= c!768244 ((_ is Nil!50561) (keys!17536 lt!1684354)))))

(declare-fun e!2806546 () (InoxSet K!11965))

(assert (=> d!1384561 (= (content!8274 (keys!17536 lt!1684354)) e!2806546)))

(declare-fun b!4505201 () Bool)

(assert (=> b!4505201 (= e!2806546 ((as const (Array K!11965 Bool)) false))))

(declare-fun b!4505202 () Bool)

(assert (=> b!4505202 (= e!2806546 ((_ map or) (store ((as const (Array K!11965 Bool)) false) (h!56388 (keys!17536 lt!1684354)) true) (content!8274 (t!357647 (keys!17536 lt!1684354)))))))

(assert (= (and d!1384561 c!768244) b!4505201))

(assert (= (and d!1384561 (not c!768244)) b!4505202))

(declare-fun m!5240465 () Bool)

(assert (=> b!4505202 m!5240465))

(declare-fun m!5240467 () Bool)

(assert (=> b!4505202 m!5240467))

(assert (=> b!4504878 d!1384561))

(declare-fun bs!843061 () Bool)

(declare-fun b!4505204 () Bool)

(assert (= bs!843061 (and b!4505204 b!4505175)))

(declare-fun lambda!169511 () Int)

(assert (=> bs!843061 (= (= (toList!4268 lt!1684354) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169511 lambda!169507))))

(declare-fun bs!843062 () Bool)

(assert (= bs!843062 (and b!4505204 b!4505199)))

(assert (=> bs!843062 (= (= (toList!4268 lt!1684354) (toList!4268 lt!1684130)) (= lambda!169511 lambda!169509))))

(assert (=> b!4505204 true))

(declare-fun bs!843063 () Bool)

(declare-fun b!4505205 () Bool)

(assert (= bs!843063 (and b!4505205 b!4505176)))

(declare-fun lambda!169512 () Int)

(assert (=> bs!843063 (= lambda!169512 lambda!169508)))

(declare-fun bs!843064 () Bool)

(assert (= bs!843064 (and b!4505205 b!4505200)))

(assert (=> bs!843064 (= lambda!169512 lambda!169510)))

(declare-fun d!1384563 () Bool)

(declare-fun e!2806547 () Bool)

(assert (=> d!1384563 e!2806547))

(declare-fun res!1873357 () Bool)

(assert (=> d!1384563 (=> (not res!1873357) (not e!2806547))))

(declare-fun lt!1684565 () List!50685)

(assert (=> d!1384563 (= res!1873357 (noDuplicate!733 lt!1684565))))

(assert (=> d!1384563 (= lt!1684565 (getKeysList!437 (toList!4268 lt!1684354)))))

(assert (=> d!1384563 (= (keys!17536 lt!1684354) lt!1684565)))

(declare-fun b!4505203 () Bool)

(declare-fun res!1873355 () Bool)

(assert (=> b!4505203 (=> (not res!1873355) (not e!2806547))))

(assert (=> b!4505203 (= res!1873355 (= (length!322 lt!1684565) (length!323 (toList!4268 lt!1684354))))))

(declare-fun res!1873356 () Bool)

(assert (=> b!4505204 (=> (not res!1873356) (not e!2806547))))

(assert (=> b!4505204 (= res!1873356 (forall!10194 lt!1684565 lambda!169511))))

(assert (=> b!4505205 (= e!2806547 (= (content!8274 lt!1684565) (content!8274 (map!11109 (toList!4268 lt!1684354) lambda!169512))))))

(assert (= (and d!1384563 res!1873357) b!4505203))

(assert (= (and b!4505203 res!1873355) b!4505204))

(assert (= (and b!4505204 res!1873356) b!4505205))

(declare-fun m!5240469 () Bool)

(assert (=> d!1384563 m!5240469))

(assert (=> d!1384563 m!5240319))

(declare-fun m!5240471 () Bool)

(assert (=> b!4505203 m!5240471))

(declare-fun m!5240473 () Bool)

(assert (=> b!4505203 m!5240473))

(declare-fun m!5240475 () Bool)

(assert (=> b!4505204 m!5240475))

(declare-fun m!5240477 () Bool)

(assert (=> b!4505205 m!5240477))

(declare-fun m!5240479 () Bool)

(assert (=> b!4505205 m!5240479))

(assert (=> b!4505205 m!5240479))

(declare-fun m!5240481 () Bool)

(assert (=> b!4505205 m!5240481))

(assert (=> b!4504878 d!1384563))

(declare-fun d!1384565 () Bool)

(assert (=> d!1384565 (= (isDefined!8344 (getValueByKey!1037 (toList!4268 lt!1684131) key!3287)) (not (isEmpty!28619 (getValueByKey!1037 (toList!4268 lt!1684131) key!3287))))))

(declare-fun bs!843065 () Bool)

(assert (= bs!843065 d!1384565))

(assert (=> bs!843065 m!5239973))

(declare-fun m!5240483 () Bool)

(assert (=> bs!843065 m!5240483))

(assert (=> b!4504866 d!1384565))

(declare-fun d!1384567 () Bool)

(declare-fun c!768245 () Bool)

(assert (=> d!1384567 (= c!768245 (and ((_ is Cons!50558) (toList!4268 lt!1684131)) (= (_1!28771 (h!56383 (toList!4268 lt!1684131))) key!3287)))))

(declare-fun e!2806548 () Option!11057)

(assert (=> d!1384567 (= (getValueByKey!1037 (toList!4268 lt!1684131) key!3287) e!2806548)))

(declare-fun b!4505207 () Bool)

(declare-fun e!2806549 () Option!11057)

(assert (=> b!4505207 (= e!2806548 e!2806549)))

(declare-fun c!768246 () Bool)

(assert (=> b!4505207 (= c!768246 (and ((_ is Cons!50558) (toList!4268 lt!1684131)) (not (= (_1!28771 (h!56383 (toList!4268 lt!1684131))) key!3287))))))

(declare-fun b!4505206 () Bool)

(assert (=> b!4505206 (= e!2806548 (Some!11056 (_2!28771 (h!56383 (toList!4268 lt!1684131)))))))

(declare-fun b!4505209 () Bool)

(assert (=> b!4505209 (= e!2806549 None!11056)))

(declare-fun b!4505208 () Bool)

(assert (=> b!4505208 (= e!2806549 (getValueByKey!1037 (t!357644 (toList!4268 lt!1684131)) key!3287))))

(assert (= (and d!1384567 c!768245) b!4505206))

(assert (= (and d!1384567 (not c!768245)) b!4505207))

(assert (= (and b!4505207 c!768246) b!4505208))

(assert (= (and b!4505207 (not c!768246)) b!4505209))

(declare-fun m!5240485 () Bool)

(assert (=> b!4505208 m!5240485))

(assert (=> b!4504866 d!1384567))

(declare-fun b!4505210 () Bool)

(declare-fun e!2806550 () Option!11056)

(assert (=> b!4505210 (= e!2806550 (Some!11055 (_2!28772 (h!56384 (toList!4267 lt!1684362)))))))

(declare-fun b!4505213 () Bool)

(declare-fun e!2806551 () Option!11056)

(assert (=> b!4505213 (= e!2806551 None!11055)))

(declare-fun d!1384569 () Bool)

(declare-fun c!768247 () Bool)

(assert (=> d!1384569 (= c!768247 (and ((_ is Cons!50559) (toList!4267 lt!1684362)) (= (_1!28772 (h!56384 (toList!4267 lt!1684362))) (_1!28772 lt!1684119))))))

(assert (=> d!1384569 (= (getValueByKey!1036 (toList!4267 lt!1684362) (_1!28772 lt!1684119)) e!2806550)))

(declare-fun b!4505212 () Bool)

(assert (=> b!4505212 (= e!2806551 (getValueByKey!1036 (t!357645 (toList!4267 lt!1684362)) (_1!28772 lt!1684119)))))

(declare-fun b!4505211 () Bool)

(assert (=> b!4505211 (= e!2806550 e!2806551)))

(declare-fun c!768248 () Bool)

(assert (=> b!4505211 (= c!768248 (and ((_ is Cons!50559) (toList!4267 lt!1684362)) (not (= (_1!28772 (h!56384 (toList!4267 lt!1684362))) (_1!28772 lt!1684119)))))))

(assert (= (and d!1384569 c!768247) b!4505210))

(assert (= (and d!1384569 (not c!768247)) b!4505211))

(assert (= (and b!4505211 c!768248) b!4505212))

(assert (= (and b!4505211 (not c!768248)) b!4505213))

(declare-fun m!5240487 () Bool)

(assert (=> b!4505212 m!5240487))

(assert (=> b!4504881 d!1384569))

(declare-fun d!1384571 () Bool)

(assert (=> d!1384571 (isDefined!8343 (getValueByKey!1036 (toList!4267 lm!1477) lt!1684118))))

(declare-fun lt!1684568 () Unit!92671)

(declare-fun choose!29204 (List!50683 (_ BitVec 64)) Unit!92671)

(assert (=> d!1384571 (= lt!1684568 (choose!29204 (toList!4267 lm!1477) lt!1684118))))

(declare-fun e!2806554 () Bool)

(assert (=> d!1384571 e!2806554))

(declare-fun res!1873360 () Bool)

(assert (=> d!1384571 (=> (not res!1873360) (not e!2806554))))

(assert (=> d!1384571 (= res!1873360 (isStrictlySorted!403 (toList!4267 lm!1477)))))

(assert (=> d!1384571 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!940 (toList!4267 lm!1477) lt!1684118) lt!1684568)))

(declare-fun b!4505216 () Bool)

(assert (=> b!4505216 (= e!2806554 (containsKey!1697 (toList!4267 lm!1477) lt!1684118))))

(assert (= (and d!1384571 res!1873360) b!4505216))

(assert (=> d!1384571 m!5239657))

(assert (=> d!1384571 m!5239657))

(assert (=> d!1384571 m!5239659))

(declare-fun m!5240489 () Bool)

(assert (=> d!1384571 m!5240489))

(assert (=> d!1384571 m!5239651))

(assert (=> b!4505216 m!5239653))

(assert (=> b!4504680 d!1384571))

(declare-fun d!1384573 () Bool)

(assert (=> d!1384573 (= (isDefined!8343 (getValueByKey!1036 (toList!4267 lm!1477) lt!1684118)) (not (isEmpty!28618 (getValueByKey!1036 (toList!4267 lm!1477) lt!1684118))))))

(declare-fun bs!843066 () Bool)

(assert (= bs!843066 d!1384573))

(assert (=> bs!843066 m!5239657))

(declare-fun m!5240491 () Bool)

(assert (=> bs!843066 m!5240491))

(assert (=> b!4504680 d!1384573))

(declare-fun b!4505217 () Bool)

(declare-fun e!2806555 () Option!11056)

(assert (=> b!4505217 (= e!2806555 (Some!11055 (_2!28772 (h!56384 (toList!4267 lm!1477)))))))

(declare-fun b!4505220 () Bool)

(declare-fun e!2806556 () Option!11056)

(assert (=> b!4505220 (= e!2806556 None!11055)))

(declare-fun d!1384575 () Bool)

(declare-fun c!768249 () Bool)

(assert (=> d!1384575 (= c!768249 (and ((_ is Cons!50559) (toList!4267 lm!1477)) (= (_1!28772 (h!56384 (toList!4267 lm!1477))) lt!1684118)))))

(assert (=> d!1384575 (= (getValueByKey!1036 (toList!4267 lm!1477) lt!1684118) e!2806555)))

(declare-fun b!4505219 () Bool)

(assert (=> b!4505219 (= e!2806556 (getValueByKey!1036 (t!357645 (toList!4267 lm!1477)) lt!1684118))))

(declare-fun b!4505218 () Bool)

(assert (=> b!4505218 (= e!2806555 e!2806556)))

(declare-fun c!768250 () Bool)

(assert (=> b!4505218 (= c!768250 (and ((_ is Cons!50559) (toList!4267 lm!1477)) (not (= (_1!28772 (h!56384 (toList!4267 lm!1477))) lt!1684118))))))

(assert (= (and d!1384575 c!768249) b!4505217))

(assert (= (and d!1384575 (not c!768249)) b!4505218))

(assert (= (and b!4505218 c!768250) b!4505219))

(assert (= (and b!4505218 (not c!768250)) b!4505220))

(declare-fun m!5240493 () Bool)

(assert (=> b!4505219 m!5240493))

(assert (=> b!4504680 d!1384575))

(declare-fun d!1384577 () Bool)

(declare-fun e!2806557 () Bool)

(assert (=> d!1384577 e!2806557))

(declare-fun res!1873361 () Bool)

(assert (=> d!1384577 (=> res!1873361 e!2806557)))

(declare-fun lt!1684571 () Bool)

(assert (=> d!1384577 (= res!1873361 (not lt!1684571))))

(declare-fun lt!1684572 () Bool)

(assert (=> d!1384577 (= lt!1684571 lt!1684572)))

(declare-fun lt!1684570 () Unit!92671)

(declare-fun e!2806558 () Unit!92671)

(assert (=> d!1384577 (= lt!1684570 e!2806558)))

(declare-fun c!768251 () Bool)

(assert (=> d!1384577 (= c!768251 lt!1684572)))

(assert (=> d!1384577 (= lt!1684572 (containsKey!1697 (toList!4267 lt!1684367) (_1!28772 lt!1684126)))))

(assert (=> d!1384577 (= (contains!13240 lt!1684367 (_1!28772 lt!1684126)) lt!1684571)))

(declare-fun b!4505221 () Bool)

(declare-fun lt!1684569 () Unit!92671)

(assert (=> b!4505221 (= e!2806558 lt!1684569)))

(assert (=> b!4505221 (= lt!1684569 (lemmaContainsKeyImpliesGetValueByKeyDefined!940 (toList!4267 lt!1684367) (_1!28772 lt!1684126)))))

(assert (=> b!4505221 (isDefined!8343 (getValueByKey!1036 (toList!4267 lt!1684367) (_1!28772 lt!1684126)))))

(declare-fun b!4505222 () Bool)

(declare-fun Unit!92742 () Unit!92671)

(assert (=> b!4505222 (= e!2806558 Unit!92742)))

(declare-fun b!4505223 () Bool)

(assert (=> b!4505223 (= e!2806557 (isDefined!8343 (getValueByKey!1036 (toList!4267 lt!1684367) (_1!28772 lt!1684126))))))

(assert (= (and d!1384577 c!768251) b!4505221))

(assert (= (and d!1384577 (not c!768251)) b!4505222))

(assert (= (and d!1384577 (not res!1873361)) b!4505223))

(declare-fun m!5240495 () Bool)

(assert (=> d!1384577 m!5240495))

(declare-fun m!5240497 () Bool)

(assert (=> b!4505221 m!5240497))

(assert (=> b!4505221 m!5240073))

(assert (=> b!4505221 m!5240073))

(declare-fun m!5240499 () Bool)

(assert (=> b!4505221 m!5240499))

(assert (=> b!4505223 m!5240073))

(assert (=> b!4505223 m!5240073))

(assert (=> b!4505223 m!5240499))

(assert (=> d!1384415 d!1384577))

(declare-fun b!4505224 () Bool)

(declare-fun e!2806559 () Option!11056)

(assert (=> b!4505224 (= e!2806559 (Some!11055 (_2!28772 (h!56384 lt!1684366))))))

(declare-fun b!4505227 () Bool)

(declare-fun e!2806560 () Option!11056)

(assert (=> b!4505227 (= e!2806560 None!11055)))

(declare-fun d!1384579 () Bool)

(declare-fun c!768252 () Bool)

(assert (=> d!1384579 (= c!768252 (and ((_ is Cons!50559) lt!1684366) (= (_1!28772 (h!56384 lt!1684366)) (_1!28772 lt!1684126))))))

(assert (=> d!1384579 (= (getValueByKey!1036 lt!1684366 (_1!28772 lt!1684126)) e!2806559)))

(declare-fun b!4505226 () Bool)

(assert (=> b!4505226 (= e!2806560 (getValueByKey!1036 (t!357645 lt!1684366) (_1!28772 lt!1684126)))))

(declare-fun b!4505225 () Bool)

(assert (=> b!4505225 (= e!2806559 e!2806560)))

(declare-fun c!768253 () Bool)

(assert (=> b!4505225 (= c!768253 (and ((_ is Cons!50559) lt!1684366) (not (= (_1!28772 (h!56384 lt!1684366)) (_1!28772 lt!1684126)))))))

(assert (= (and d!1384579 c!768252) b!4505224))

(assert (= (and d!1384579 (not c!768252)) b!4505225))

(assert (= (and b!4505225 c!768253) b!4505226))

(assert (= (and b!4505225 (not c!768253)) b!4505227))

(declare-fun m!5240501 () Bool)

(assert (=> b!4505226 m!5240501))

(assert (=> d!1384415 d!1384579))

(declare-fun d!1384581 () Bool)

(assert (=> d!1384581 (= (getValueByKey!1036 lt!1684366 (_1!28772 lt!1684126)) (Some!11055 (_2!28772 lt!1684126)))))

(declare-fun lt!1684573 () Unit!92671)

(assert (=> d!1384581 (= lt!1684573 (choose!29201 lt!1684366 (_1!28772 lt!1684126) (_2!28772 lt!1684126)))))

(declare-fun e!2806561 () Bool)

(assert (=> d!1384581 e!2806561))

(declare-fun res!1873362 () Bool)

(assert (=> d!1384581 (=> (not res!1873362) (not e!2806561))))

(assert (=> d!1384581 (= res!1873362 (isStrictlySorted!403 lt!1684366))))

(assert (=> d!1384581 (= (lemmaContainsTupThenGetReturnValue!640 lt!1684366 (_1!28772 lt!1684126) (_2!28772 lt!1684126)) lt!1684573)))

(declare-fun b!4505228 () Bool)

(declare-fun res!1873363 () Bool)

(assert (=> b!4505228 (=> (not res!1873363) (not e!2806561))))

(assert (=> b!4505228 (= res!1873363 (containsKey!1697 lt!1684366 (_1!28772 lt!1684126)))))

(declare-fun b!4505229 () Bool)

(assert (=> b!4505229 (= e!2806561 (contains!13239 lt!1684366 (tuple2!50957 (_1!28772 lt!1684126) (_2!28772 lt!1684126))))))

(assert (= (and d!1384581 res!1873362) b!4505228))

(assert (= (and b!4505228 res!1873363) b!4505229))

(assert (=> d!1384581 m!5240067))

(declare-fun m!5240503 () Bool)

(assert (=> d!1384581 m!5240503))

(declare-fun m!5240505 () Bool)

(assert (=> d!1384581 m!5240505))

(declare-fun m!5240507 () Bool)

(assert (=> b!4505228 m!5240507))

(declare-fun m!5240509 () Bool)

(assert (=> b!4505229 m!5240509))

(assert (=> d!1384415 d!1384581))

(declare-fun bm!313648 () Bool)

(declare-fun call!313655 () List!50683)

(declare-fun call!313653 () List!50683)

(assert (=> bm!313648 (= call!313655 call!313653)))

(declare-fun d!1384583 () Bool)

(declare-fun e!2806565 () Bool)

(assert (=> d!1384583 e!2806565))

(declare-fun res!1873365 () Bool)

(assert (=> d!1384583 (=> (not res!1873365) (not e!2806565))))

(declare-fun lt!1684574 () List!50683)

(assert (=> d!1384583 (= res!1873365 (isStrictlySorted!403 lt!1684574))))

(declare-fun e!2806562 () List!50683)

(assert (=> d!1384583 (= lt!1684574 e!2806562)))

(declare-fun c!768257 () Bool)

(assert (=> d!1384583 (= c!768257 (and ((_ is Cons!50559) (toList!4267 lt!1684132)) (bvslt (_1!28772 (h!56384 (toList!4267 lt!1684132))) (_1!28772 lt!1684126))))))

(assert (=> d!1384583 (isStrictlySorted!403 (toList!4267 lt!1684132))))

(assert (=> d!1384583 (= (insertStrictlySorted!380 (toList!4267 lt!1684132) (_1!28772 lt!1684126) (_2!28772 lt!1684126)) lt!1684574)))

(declare-fun bm!313649 () Bool)

(declare-fun call!313654 () List!50683)

(assert (=> bm!313649 (= call!313653 call!313654)))

(declare-fun b!4505230 () Bool)

(declare-fun res!1873364 () Bool)

(assert (=> b!4505230 (=> (not res!1873364) (not e!2806565))))

(assert (=> b!4505230 (= res!1873364 (containsKey!1697 lt!1684574 (_1!28772 lt!1684126)))))

(declare-fun b!4505231 () Bool)

(declare-fun c!768255 () Bool)

(declare-fun e!2806566 () List!50683)

(declare-fun c!768254 () Bool)

(assert (=> b!4505231 (= e!2806566 (ite c!768255 (t!357645 (toList!4267 lt!1684132)) (ite c!768254 (Cons!50559 (h!56384 (toList!4267 lt!1684132)) (t!357645 (toList!4267 lt!1684132))) Nil!50559)))))

(declare-fun b!4505232 () Bool)

(assert (=> b!4505232 (= c!768254 (and ((_ is Cons!50559) (toList!4267 lt!1684132)) (bvsgt (_1!28772 (h!56384 (toList!4267 lt!1684132))) (_1!28772 lt!1684126))))))

(declare-fun e!2806563 () List!50683)

(declare-fun e!2806564 () List!50683)

(assert (=> b!4505232 (= e!2806563 e!2806564)))

(declare-fun b!4505233 () Bool)

(assert (=> b!4505233 (= e!2806564 call!313655)))

(declare-fun b!4505234 () Bool)

(assert (=> b!4505234 (= e!2806562 e!2806563)))

(assert (=> b!4505234 (= c!768255 (and ((_ is Cons!50559) (toList!4267 lt!1684132)) (= (_1!28772 (h!56384 (toList!4267 lt!1684132))) (_1!28772 lt!1684126))))))

(declare-fun b!4505235 () Bool)

(assert (=> b!4505235 (= e!2806565 (contains!13239 lt!1684574 (tuple2!50957 (_1!28772 lt!1684126) (_2!28772 lt!1684126))))))

(declare-fun b!4505236 () Bool)

(assert (=> b!4505236 (= e!2806564 call!313655)))

(declare-fun b!4505237 () Bool)

(assert (=> b!4505237 (= e!2806566 (insertStrictlySorted!380 (t!357645 (toList!4267 lt!1684132)) (_1!28772 lt!1684126) (_2!28772 lt!1684126)))))

(declare-fun b!4505238 () Bool)

(assert (=> b!4505238 (= e!2806562 call!313654)))

(declare-fun bm!313650 () Bool)

(assert (=> bm!313650 (= call!313654 ($colon$colon!907 e!2806566 (ite c!768257 (h!56384 (toList!4267 lt!1684132)) (tuple2!50957 (_1!28772 lt!1684126) (_2!28772 lt!1684126)))))))

(declare-fun c!768256 () Bool)

(assert (=> bm!313650 (= c!768256 c!768257)))

(declare-fun b!4505239 () Bool)

(assert (=> b!4505239 (= e!2806563 call!313653)))

(assert (= (and d!1384583 c!768257) b!4505238))

(assert (= (and d!1384583 (not c!768257)) b!4505234))

(assert (= (and b!4505234 c!768255) b!4505239))

(assert (= (and b!4505234 (not c!768255)) b!4505232))

(assert (= (and b!4505232 c!768254) b!4505236))

(assert (= (and b!4505232 (not c!768254)) b!4505233))

(assert (= (or b!4505236 b!4505233) bm!313648))

(assert (= (or b!4505239 bm!313648) bm!313649))

(assert (= (or b!4505238 bm!313649) bm!313650))

(assert (= (and bm!313650 c!768256) b!4505237))

(assert (= (and bm!313650 (not c!768256)) b!4505231))

(assert (= (and d!1384583 res!1873365) b!4505230))

(assert (= (and b!4505230 res!1873364) b!4505235))

(declare-fun m!5240511 () Bool)

(assert (=> d!1384583 m!5240511))

(declare-fun m!5240513 () Bool)

(assert (=> d!1384583 m!5240513))

(declare-fun m!5240515 () Bool)

(assert (=> b!4505237 m!5240515))

(declare-fun m!5240517 () Bool)

(assert (=> bm!313650 m!5240517))

(declare-fun m!5240519 () Bool)

(assert (=> b!4505230 m!5240519))

(declare-fun m!5240521 () Bool)

(assert (=> b!4505235 m!5240521))

(assert (=> d!1384415 d!1384583))

(declare-fun d!1384585 () Bool)

(declare-fun lt!1684577 () Bool)

(assert (=> d!1384585 (= lt!1684577 (select (content!8274 (keys!17536 lt!1684131)) key!3287))))

(declare-fun e!2806568 () Bool)

(assert (=> d!1384585 (= lt!1684577 e!2806568)))

(declare-fun res!1873366 () Bool)

(assert (=> d!1384585 (=> (not res!1873366) (not e!2806568))))

(assert (=> d!1384585 (= res!1873366 ((_ is Cons!50561) (keys!17536 lt!1684131)))))

(assert (=> d!1384585 (= (contains!13243 (keys!17536 lt!1684131) key!3287) lt!1684577)))

(declare-fun b!4505242 () Bool)

(declare-fun e!2806567 () Bool)

(assert (=> b!4505242 (= e!2806568 e!2806567)))

(declare-fun res!1873367 () Bool)

(assert (=> b!4505242 (=> res!1873367 e!2806567)))

(assert (=> b!4505242 (= res!1873367 (= (h!56388 (keys!17536 lt!1684131)) key!3287))))

(declare-fun b!4505243 () Bool)

(assert (=> b!4505243 (= e!2806567 (contains!13243 (t!357647 (keys!17536 lt!1684131)) key!3287))))

(assert (= (and d!1384585 res!1873366) b!4505242))

(assert (= (and b!4505242 (not res!1873367)) b!4505243))

(assert (=> d!1384585 m!5239983))

(declare-fun m!5240523 () Bool)

(assert (=> d!1384585 m!5240523))

(declare-fun m!5240525 () Bool)

(assert (=> d!1384585 m!5240525))

(declare-fun m!5240527 () Bool)

(assert (=> b!4505243 m!5240527))

(assert (=> b!4504862 d!1384585))

(declare-fun bs!843067 () Bool)

(declare-fun b!4505247 () Bool)

(assert (= bs!843067 (and b!4505247 b!4505175)))

(declare-fun lambda!169513 () Int)

(assert (=> bs!843067 (= (= (toList!4268 lt!1684131) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169513 lambda!169507))))

(declare-fun bs!843068 () Bool)

(assert (= bs!843068 (and b!4505247 b!4505199)))

(assert (=> bs!843068 (= (= (toList!4268 lt!1684131) (toList!4268 lt!1684130)) (= lambda!169513 lambda!169509))))

(declare-fun bs!843069 () Bool)

(assert (= bs!843069 (and b!4505247 b!4505204)))

(assert (=> bs!843069 (= (= (toList!4268 lt!1684131) (toList!4268 lt!1684354)) (= lambda!169513 lambda!169511))))

(assert (=> b!4505247 true))

(declare-fun bs!843070 () Bool)

(declare-fun b!4505248 () Bool)

(assert (= bs!843070 (and b!4505248 b!4505176)))

(declare-fun lambda!169514 () Int)

(assert (=> bs!843070 (= lambda!169514 lambda!169508)))

(declare-fun bs!843071 () Bool)

(assert (= bs!843071 (and b!4505248 b!4505200)))

(assert (=> bs!843071 (= lambda!169514 lambda!169510)))

(declare-fun bs!843072 () Bool)

(assert (= bs!843072 (and b!4505248 b!4505205)))

(assert (=> bs!843072 (= lambda!169514 lambda!169512)))

(declare-fun d!1384587 () Bool)

(declare-fun e!2806571 () Bool)

(assert (=> d!1384587 e!2806571))

(declare-fun res!1873370 () Bool)

(assert (=> d!1384587 (=> (not res!1873370) (not e!2806571))))

(declare-fun lt!1684578 () List!50685)

(assert (=> d!1384587 (= res!1873370 (noDuplicate!733 lt!1684578))))

(assert (=> d!1384587 (= lt!1684578 (getKeysList!437 (toList!4268 lt!1684131)))))

(assert (=> d!1384587 (= (keys!17536 lt!1684131) lt!1684578)))

(declare-fun b!4505246 () Bool)

(declare-fun res!1873368 () Bool)

(assert (=> b!4505246 (=> (not res!1873368) (not e!2806571))))

(assert (=> b!4505246 (= res!1873368 (= (length!322 lt!1684578) (length!323 (toList!4268 lt!1684131))))))

(declare-fun res!1873369 () Bool)

(assert (=> b!4505247 (=> (not res!1873369) (not e!2806571))))

(assert (=> b!4505247 (= res!1873369 (forall!10194 lt!1684578 lambda!169513))))

(assert (=> b!4505248 (= e!2806571 (= (content!8274 lt!1684578) (content!8274 (map!11109 (toList!4268 lt!1684131) lambda!169514))))))

(assert (= (and d!1384587 res!1873370) b!4505246))

(assert (= (and b!4505246 res!1873368) b!4505247))

(assert (= (and b!4505247 res!1873369) b!4505248))

(declare-fun m!5240529 () Bool)

(assert (=> d!1384587 m!5240529))

(assert (=> d!1384587 m!5239981))

(declare-fun m!5240531 () Bool)

(assert (=> b!4505246 m!5240531))

(declare-fun m!5240533 () Bool)

(assert (=> b!4505246 m!5240533))

(declare-fun m!5240535 () Bool)

(assert (=> b!4505247 m!5240535))

(declare-fun m!5240537 () Bool)

(assert (=> b!4505248 m!5240537))

(declare-fun m!5240539 () Bool)

(assert (=> b!4505248 m!5240539))

(assert (=> b!4505248 m!5240539))

(declare-fun m!5240541 () Bool)

(assert (=> b!4505248 m!5240541))

(assert (=> b!4504862 d!1384587))

(declare-fun d!1384589 () Bool)

(assert (=> d!1384589 (= (isDefined!8344 (getValueByKey!1037 (toList!4268 lt!1684130) key!3287)) (not (isEmpty!28619 (getValueByKey!1037 (toList!4268 lt!1684130) key!3287))))))

(declare-fun bs!843073 () Bool)

(assert (= bs!843073 d!1384589))

(assert (=> bs!843073 m!5239937))

(declare-fun m!5240543 () Bool)

(assert (=> bs!843073 m!5240543))

(assert (=> b!4504855 d!1384589))

(declare-fun d!1384591 () Bool)

(declare-fun c!768260 () Bool)

(assert (=> d!1384591 (= c!768260 (and ((_ is Cons!50558) (toList!4268 lt!1684130)) (= (_1!28771 (h!56383 (toList!4268 lt!1684130))) key!3287)))))

(declare-fun e!2806572 () Option!11057)

(assert (=> d!1384591 (= (getValueByKey!1037 (toList!4268 lt!1684130) key!3287) e!2806572)))

(declare-fun b!4505250 () Bool)

(declare-fun e!2806573 () Option!11057)

(assert (=> b!4505250 (= e!2806572 e!2806573)))

(declare-fun c!768261 () Bool)

(assert (=> b!4505250 (= c!768261 (and ((_ is Cons!50558) (toList!4268 lt!1684130)) (not (= (_1!28771 (h!56383 (toList!4268 lt!1684130))) key!3287))))))

(declare-fun b!4505249 () Bool)

(assert (=> b!4505249 (= e!2806572 (Some!11056 (_2!28771 (h!56383 (toList!4268 lt!1684130)))))))

(declare-fun b!4505252 () Bool)

(assert (=> b!4505252 (= e!2806573 None!11056)))

(declare-fun b!4505251 () Bool)

(assert (=> b!4505251 (= e!2806573 (getValueByKey!1037 (t!357644 (toList!4268 lt!1684130)) key!3287))))

(assert (= (and d!1384591 c!768260) b!4505249))

(assert (= (and d!1384591 (not c!768260)) b!4505250))

(assert (= (and b!4505250 c!768261) b!4505251))

(assert (= (and b!4505250 (not c!768261)) b!4505252))

(declare-fun m!5240545 () Bool)

(assert (=> b!4505251 m!5240545))

(assert (=> b!4504855 d!1384591))

(declare-fun d!1384593 () Bool)

(declare-fun lt!1684585 () Bool)

(assert (=> d!1384593 (= lt!1684585 (select (content!8274 (keys!17536 lt!1684130)) key!3287))))

(declare-fun e!2806575 () Bool)

(assert (=> d!1384593 (= lt!1684585 e!2806575)))

(declare-fun res!1873371 () Bool)

(assert (=> d!1384593 (=> (not res!1873371) (not e!2806575))))

(assert (=> d!1384593 (= res!1873371 ((_ is Cons!50561) (keys!17536 lt!1684130)))))

(assert (=> d!1384593 (= (contains!13243 (keys!17536 lt!1684130) key!3287) lt!1684585)))

(declare-fun b!4505253 () Bool)

(declare-fun e!2806574 () Bool)

(assert (=> b!4505253 (= e!2806575 e!2806574)))

(declare-fun res!1873372 () Bool)

(assert (=> b!4505253 (=> res!1873372 e!2806574)))

(assert (=> b!4505253 (= res!1873372 (= (h!56388 (keys!17536 lt!1684130)) key!3287))))

(declare-fun b!4505254 () Bool)

(assert (=> b!4505254 (= e!2806574 (contains!13243 (t!357647 (keys!17536 lt!1684130)) key!3287))))

(assert (= (and d!1384593 res!1873371) b!4505253))

(assert (= (and b!4505253 (not res!1873372)) b!4505254))

(assert (=> d!1384593 m!5239947))

(assert (=> d!1384593 m!5240007))

(declare-fun m!5240547 () Bool)

(assert (=> d!1384593 m!5240547))

(declare-fun m!5240549 () Bool)

(assert (=> b!4505254 m!5240549))

(assert (=> b!4504851 d!1384593))

(assert (=> b!4504851 d!1384559))

(declare-fun d!1384595 () Bool)

(declare-fun e!2806576 () Bool)

(assert (=> d!1384595 e!2806576))

(declare-fun res!1873373 () Bool)

(assert (=> d!1384595 (=> res!1873373 e!2806576)))

(declare-fun lt!1684590 () Bool)

(assert (=> d!1384595 (= res!1873373 (not lt!1684590))))

(declare-fun lt!1684591 () Bool)

(assert (=> d!1384595 (= lt!1684590 lt!1684591)))

(declare-fun lt!1684589 () Unit!92671)

(declare-fun e!2806577 () Unit!92671)

(assert (=> d!1384595 (= lt!1684589 e!2806577)))

(declare-fun c!768262 () Bool)

(assert (=> d!1384595 (= c!768262 lt!1684591)))

(assert (=> d!1384595 (= lt!1684591 (containsKey!1697 (toList!4267 lt!1684259) (_1!28772 lt!1684126)))))

(assert (=> d!1384595 (= (contains!13240 lt!1684259 (_1!28772 lt!1684126)) lt!1684590)))

(declare-fun b!4505255 () Bool)

(declare-fun lt!1684588 () Unit!92671)

(assert (=> b!4505255 (= e!2806577 lt!1684588)))

(assert (=> b!4505255 (= lt!1684588 (lemmaContainsKeyImpliesGetValueByKeyDefined!940 (toList!4267 lt!1684259) (_1!28772 lt!1684126)))))

(assert (=> b!4505255 (isDefined!8343 (getValueByKey!1036 (toList!4267 lt!1684259) (_1!28772 lt!1684126)))))

(declare-fun b!4505256 () Bool)

(declare-fun Unit!92756 () Unit!92671)

(assert (=> b!4505256 (= e!2806577 Unit!92756)))

(declare-fun b!4505257 () Bool)

(assert (=> b!4505257 (= e!2806576 (isDefined!8343 (getValueByKey!1036 (toList!4267 lt!1684259) (_1!28772 lt!1684126))))))

(assert (= (and d!1384595 c!768262) b!4505255))

(assert (= (and d!1384595 (not c!768262)) b!4505256))

(assert (= (and d!1384595 (not res!1873373)) b!4505257))

(declare-fun m!5240551 () Bool)

(assert (=> d!1384595 m!5240551))

(declare-fun m!5240553 () Bool)

(assert (=> b!4505255 m!5240553))

(assert (=> b!4505255 m!5239725))

(assert (=> b!4505255 m!5239725))

(declare-fun m!5240555 () Bool)

(assert (=> b!4505255 m!5240555))

(assert (=> b!4505257 m!5239725))

(assert (=> b!4505257 m!5239725))

(assert (=> b!4505257 m!5240555))

(assert (=> d!1384305 d!1384595))

(declare-fun b!4505258 () Bool)

(declare-fun e!2806578 () Option!11056)

(assert (=> b!4505258 (= e!2806578 (Some!11055 (_2!28772 (h!56384 lt!1684258))))))

(declare-fun b!4505261 () Bool)

(declare-fun e!2806579 () Option!11056)

(assert (=> b!4505261 (= e!2806579 None!11055)))

(declare-fun d!1384597 () Bool)

(declare-fun c!768263 () Bool)

(assert (=> d!1384597 (= c!768263 (and ((_ is Cons!50559) lt!1684258) (= (_1!28772 (h!56384 lt!1684258)) (_1!28772 lt!1684126))))))

(assert (=> d!1384597 (= (getValueByKey!1036 lt!1684258 (_1!28772 lt!1684126)) e!2806578)))

(declare-fun b!4505260 () Bool)

(assert (=> b!4505260 (= e!2806579 (getValueByKey!1036 (t!357645 lt!1684258) (_1!28772 lt!1684126)))))

(declare-fun b!4505259 () Bool)

(assert (=> b!4505259 (= e!2806578 e!2806579)))

(declare-fun c!768264 () Bool)

(assert (=> b!4505259 (= c!768264 (and ((_ is Cons!50559) lt!1684258) (not (= (_1!28772 (h!56384 lt!1684258)) (_1!28772 lt!1684126)))))))

(assert (= (and d!1384597 c!768263) b!4505258))

(assert (= (and d!1384597 (not c!768263)) b!4505259))

(assert (= (and b!4505259 c!768264) b!4505260))

(assert (= (and b!4505259 (not c!768264)) b!4505261))

(declare-fun m!5240557 () Bool)

(assert (=> b!4505260 m!5240557))

(assert (=> d!1384305 d!1384597))

(declare-fun d!1384599 () Bool)

(assert (=> d!1384599 (= (getValueByKey!1036 lt!1684258 (_1!28772 lt!1684126)) (Some!11055 (_2!28772 lt!1684126)))))

(declare-fun lt!1684598 () Unit!92671)

(assert (=> d!1384599 (= lt!1684598 (choose!29201 lt!1684258 (_1!28772 lt!1684126) (_2!28772 lt!1684126)))))

(declare-fun e!2806580 () Bool)

(assert (=> d!1384599 e!2806580))

(declare-fun res!1873374 () Bool)

(assert (=> d!1384599 (=> (not res!1873374) (not e!2806580))))

(assert (=> d!1384599 (= res!1873374 (isStrictlySorted!403 lt!1684258))))

(assert (=> d!1384599 (= (lemmaContainsTupThenGetReturnValue!640 lt!1684258 (_1!28772 lt!1684126) (_2!28772 lt!1684126)) lt!1684598)))

(declare-fun b!4505262 () Bool)

(declare-fun res!1873375 () Bool)

(assert (=> b!4505262 (=> (not res!1873375) (not e!2806580))))

(assert (=> b!4505262 (= res!1873375 (containsKey!1697 lt!1684258 (_1!28772 lt!1684126)))))

(declare-fun b!4505263 () Bool)

(assert (=> b!4505263 (= e!2806580 (contains!13239 lt!1684258 (tuple2!50957 (_1!28772 lt!1684126) (_2!28772 lt!1684126))))))

(assert (= (and d!1384599 res!1873374) b!4505262))

(assert (= (and b!4505262 res!1873375) b!4505263))

(assert (=> d!1384599 m!5239719))

(declare-fun m!5240559 () Bool)

(assert (=> d!1384599 m!5240559))

(declare-fun m!5240561 () Bool)

(assert (=> d!1384599 m!5240561))

(declare-fun m!5240563 () Bool)

(assert (=> b!4505262 m!5240563))

(declare-fun m!5240565 () Bool)

(assert (=> b!4505263 m!5240565))

(assert (=> d!1384305 d!1384599))

(declare-fun bm!313651 () Bool)

(declare-fun call!313658 () List!50683)

(declare-fun call!313656 () List!50683)

(assert (=> bm!313651 (= call!313658 call!313656)))

(declare-fun d!1384601 () Bool)

(declare-fun e!2806584 () Bool)

(assert (=> d!1384601 e!2806584))

(declare-fun res!1873377 () Bool)

(assert (=> d!1384601 (=> (not res!1873377) (not e!2806584))))

(declare-fun lt!1684601 () List!50683)

(assert (=> d!1384601 (= res!1873377 (isStrictlySorted!403 lt!1684601))))

(declare-fun e!2806581 () List!50683)

(assert (=> d!1384601 (= lt!1684601 e!2806581)))

(declare-fun c!768268 () Bool)

(assert (=> d!1384601 (= c!768268 (and ((_ is Cons!50559) (toList!4267 lm!1477)) (bvslt (_1!28772 (h!56384 (toList!4267 lm!1477))) (_1!28772 lt!1684126))))))

(assert (=> d!1384601 (isStrictlySorted!403 (toList!4267 lm!1477))))

(assert (=> d!1384601 (= (insertStrictlySorted!380 (toList!4267 lm!1477) (_1!28772 lt!1684126) (_2!28772 lt!1684126)) lt!1684601)))

(declare-fun bm!313652 () Bool)

(declare-fun call!313657 () List!50683)

(assert (=> bm!313652 (= call!313656 call!313657)))

(declare-fun b!4505264 () Bool)

(declare-fun res!1873376 () Bool)

(assert (=> b!4505264 (=> (not res!1873376) (not e!2806584))))

(assert (=> b!4505264 (= res!1873376 (containsKey!1697 lt!1684601 (_1!28772 lt!1684126)))))

(declare-fun c!768266 () Bool)

(declare-fun e!2806585 () List!50683)

(declare-fun c!768265 () Bool)

(declare-fun b!4505265 () Bool)

(assert (=> b!4505265 (= e!2806585 (ite c!768266 (t!357645 (toList!4267 lm!1477)) (ite c!768265 (Cons!50559 (h!56384 (toList!4267 lm!1477)) (t!357645 (toList!4267 lm!1477))) Nil!50559)))))

(declare-fun b!4505266 () Bool)

(assert (=> b!4505266 (= c!768265 (and ((_ is Cons!50559) (toList!4267 lm!1477)) (bvsgt (_1!28772 (h!56384 (toList!4267 lm!1477))) (_1!28772 lt!1684126))))))

(declare-fun e!2806582 () List!50683)

(declare-fun e!2806583 () List!50683)

(assert (=> b!4505266 (= e!2806582 e!2806583)))

(declare-fun b!4505267 () Bool)

(assert (=> b!4505267 (= e!2806583 call!313658)))

(declare-fun b!4505268 () Bool)

(assert (=> b!4505268 (= e!2806581 e!2806582)))

(assert (=> b!4505268 (= c!768266 (and ((_ is Cons!50559) (toList!4267 lm!1477)) (= (_1!28772 (h!56384 (toList!4267 lm!1477))) (_1!28772 lt!1684126))))))

(declare-fun b!4505269 () Bool)

(assert (=> b!4505269 (= e!2806584 (contains!13239 lt!1684601 (tuple2!50957 (_1!28772 lt!1684126) (_2!28772 lt!1684126))))))

(declare-fun b!4505270 () Bool)

(assert (=> b!4505270 (= e!2806583 call!313658)))

(declare-fun b!4505271 () Bool)

(assert (=> b!4505271 (= e!2806585 (insertStrictlySorted!380 (t!357645 (toList!4267 lm!1477)) (_1!28772 lt!1684126) (_2!28772 lt!1684126)))))

(declare-fun b!4505272 () Bool)

(assert (=> b!4505272 (= e!2806581 call!313657)))

(declare-fun bm!313653 () Bool)

(assert (=> bm!313653 (= call!313657 ($colon$colon!907 e!2806585 (ite c!768268 (h!56384 (toList!4267 lm!1477)) (tuple2!50957 (_1!28772 lt!1684126) (_2!28772 lt!1684126)))))))

(declare-fun c!768267 () Bool)

(assert (=> bm!313653 (= c!768267 c!768268)))

(declare-fun b!4505273 () Bool)

(assert (=> b!4505273 (= e!2806582 call!313656)))

(assert (= (and d!1384601 c!768268) b!4505272))

(assert (= (and d!1384601 (not c!768268)) b!4505268))

(assert (= (and b!4505268 c!768266) b!4505273))

(assert (= (and b!4505268 (not c!768266)) b!4505266))

(assert (= (and b!4505266 c!768265) b!4505270))

(assert (= (and b!4505266 (not c!768265)) b!4505267))

(assert (= (or b!4505270 b!4505267) bm!313651))

(assert (= (or b!4505273 bm!313651) bm!313652))

(assert (= (or b!4505272 bm!313652) bm!313653))

(assert (= (and bm!313653 c!768267) b!4505271))

(assert (= (and bm!313653 (not c!768267)) b!4505265))

(assert (= (and d!1384601 res!1873377) b!4505264))

(assert (= (and b!4505264 res!1873376) b!4505269))

(declare-fun m!5240567 () Bool)

(assert (=> d!1384601 m!5240567))

(assert (=> d!1384601 m!5239651))

(declare-fun m!5240569 () Bool)

(assert (=> b!4505271 m!5240569))

(declare-fun m!5240571 () Bool)

(assert (=> bm!313653 m!5240571))

(declare-fun m!5240573 () Bool)

(assert (=> b!4505264 m!5240573))

(declare-fun m!5240575 () Bool)

(assert (=> b!4505269 m!5240575))

(assert (=> d!1384305 d!1384601))

(declare-fun d!1384603 () Bool)

(assert (=> d!1384603 (isDefined!8344 (getValueByKey!1037 (toList!4268 lt!1684131) key!3287))))

(declare-fun lt!1684604 () Unit!92671)

(assert (=> d!1384603 (= lt!1684604 (choose!29202 (toList!4268 lt!1684131) key!3287))))

(assert (=> d!1384603 (invariantList!989 (toList!4268 lt!1684131))))

(assert (=> d!1384603 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!941 (toList!4268 lt!1684131) key!3287) lt!1684604)))

(declare-fun bs!843074 () Bool)

(assert (= bs!843074 d!1384603))

(assert (=> bs!843074 m!5239973))

(assert (=> bs!843074 m!5239973))

(assert (=> bs!843074 m!5239975))

(declare-fun m!5240577 () Bool)

(assert (=> bs!843074 m!5240577))

(assert (=> bs!843074 m!5240177))

(assert (=> b!4504859 d!1384603))

(assert (=> b!4504859 d!1384565))

(assert (=> b!4504859 d!1384567))

(declare-fun d!1384605 () Bool)

(assert (=> d!1384605 (contains!13243 (getKeysList!437 (toList!4268 lt!1684131)) key!3287)))

(declare-fun lt!1684605 () Unit!92671)

(assert (=> d!1384605 (= lt!1684605 (choose!29203 (toList!4268 lt!1684131) key!3287))))

(assert (=> d!1384605 (invariantList!989 (toList!4268 lt!1684131))))

(assert (=> d!1384605 (= (lemmaInListThenGetKeysListContains!433 (toList!4268 lt!1684131) key!3287) lt!1684605)))

(declare-fun bs!843075 () Bool)

(assert (= bs!843075 d!1384605))

(assert (=> bs!843075 m!5239981))

(assert (=> bs!843075 m!5239981))

(declare-fun m!5240579 () Bool)

(assert (=> bs!843075 m!5240579))

(declare-fun m!5240581 () Bool)

(assert (=> bs!843075 m!5240581))

(assert (=> bs!843075 m!5240177))

(assert (=> b!4504859 d!1384605))

(declare-fun d!1384607 () Bool)

(declare-fun e!2806586 () Bool)

(assert (=> d!1384607 e!2806586))

(declare-fun res!1873378 () Bool)

(assert (=> d!1384607 (=> res!1873378 e!2806586)))

(declare-fun lt!1684608 () Bool)

(assert (=> d!1384607 (= res!1873378 (not lt!1684608))))

(declare-fun lt!1684609 () Bool)

(assert (=> d!1384607 (= lt!1684608 lt!1684609)))

(declare-fun lt!1684607 () Unit!92671)

(declare-fun e!2806587 () Unit!92671)

(assert (=> d!1384607 (= lt!1684607 e!2806587)))

(declare-fun c!768269 () Bool)

(assert (=> d!1384607 (= c!768269 lt!1684609)))

(assert (=> d!1384607 (= lt!1684609 (containsKey!1697 (toList!4267 lt!1684362) (_1!28772 lt!1684119)))))

(assert (=> d!1384607 (= (contains!13240 lt!1684362 (_1!28772 lt!1684119)) lt!1684608)))

(declare-fun b!4505274 () Bool)

(declare-fun lt!1684606 () Unit!92671)

(assert (=> b!4505274 (= e!2806587 lt!1684606)))

(assert (=> b!4505274 (= lt!1684606 (lemmaContainsKeyImpliesGetValueByKeyDefined!940 (toList!4267 lt!1684362) (_1!28772 lt!1684119)))))

(assert (=> b!4505274 (isDefined!8343 (getValueByKey!1036 (toList!4267 lt!1684362) (_1!28772 lt!1684119)))))

(declare-fun b!4505275 () Bool)

(declare-fun Unit!92757 () Unit!92671)

(assert (=> b!4505275 (= e!2806587 Unit!92757)))

(declare-fun b!4505276 () Bool)

(assert (=> b!4505276 (= e!2806586 (isDefined!8343 (getValueByKey!1036 (toList!4267 lt!1684362) (_1!28772 lt!1684119))))))

(assert (= (and d!1384607 c!768269) b!4505274))

(assert (= (and d!1384607 (not c!768269)) b!4505275))

(assert (= (and d!1384607 (not res!1873378)) b!4505276))

(declare-fun m!5240583 () Bool)

(assert (=> d!1384607 m!5240583))

(declare-fun m!5240585 () Bool)

(assert (=> b!4505274 m!5240585))

(assert (=> b!4505274 m!5240047))

(assert (=> b!4505274 m!5240047))

(declare-fun m!5240587 () Bool)

(assert (=> b!4505274 m!5240587))

(assert (=> b!4505276 m!5240047))

(assert (=> b!4505276 m!5240047))

(assert (=> b!4505276 m!5240587))

(assert (=> d!1384407 d!1384607))

(declare-fun b!4505277 () Bool)

(declare-fun e!2806588 () Option!11056)

(assert (=> b!4505277 (= e!2806588 (Some!11055 (_2!28772 (h!56384 lt!1684361))))))

(declare-fun b!4505280 () Bool)

(declare-fun e!2806589 () Option!11056)

(assert (=> b!4505280 (= e!2806589 None!11055)))

(declare-fun d!1384609 () Bool)

(declare-fun c!768270 () Bool)

(assert (=> d!1384609 (= c!768270 (and ((_ is Cons!50559) lt!1684361) (= (_1!28772 (h!56384 lt!1684361)) (_1!28772 lt!1684119))))))

(assert (=> d!1384609 (= (getValueByKey!1036 lt!1684361 (_1!28772 lt!1684119)) e!2806588)))

(declare-fun b!4505279 () Bool)

(assert (=> b!4505279 (= e!2806589 (getValueByKey!1036 (t!357645 lt!1684361) (_1!28772 lt!1684119)))))

(declare-fun b!4505278 () Bool)

(assert (=> b!4505278 (= e!2806588 e!2806589)))

(declare-fun c!768271 () Bool)

(assert (=> b!4505278 (= c!768271 (and ((_ is Cons!50559) lt!1684361) (not (= (_1!28772 (h!56384 lt!1684361)) (_1!28772 lt!1684119)))))))

(assert (= (and d!1384609 c!768270) b!4505277))

(assert (= (and d!1384609 (not c!768270)) b!4505278))

(assert (= (and b!4505278 c!768271) b!4505279))

(assert (= (and b!4505278 (not c!768271)) b!4505280))

(declare-fun m!5240589 () Bool)

(assert (=> b!4505279 m!5240589))

(assert (=> d!1384407 d!1384609))

(declare-fun d!1384611 () Bool)

(assert (=> d!1384611 (= (getValueByKey!1036 lt!1684361 (_1!28772 lt!1684119)) (Some!11055 (_2!28772 lt!1684119)))))

(declare-fun lt!1684614 () Unit!92671)

(assert (=> d!1384611 (= lt!1684614 (choose!29201 lt!1684361 (_1!28772 lt!1684119) (_2!28772 lt!1684119)))))

(declare-fun e!2806590 () Bool)

(assert (=> d!1384611 e!2806590))

(declare-fun res!1873379 () Bool)

(assert (=> d!1384611 (=> (not res!1873379) (not e!2806590))))

(assert (=> d!1384611 (= res!1873379 (isStrictlySorted!403 lt!1684361))))

(assert (=> d!1384611 (= (lemmaContainsTupThenGetReturnValue!640 lt!1684361 (_1!28772 lt!1684119) (_2!28772 lt!1684119)) lt!1684614)))

(declare-fun b!4505281 () Bool)

(declare-fun res!1873380 () Bool)

(assert (=> b!4505281 (=> (not res!1873380) (not e!2806590))))

(assert (=> b!4505281 (= res!1873380 (containsKey!1697 lt!1684361 (_1!28772 lt!1684119)))))

(declare-fun b!4505282 () Bool)

(assert (=> b!4505282 (= e!2806590 (contains!13239 lt!1684361 (tuple2!50957 (_1!28772 lt!1684119) (_2!28772 lt!1684119))))))

(assert (= (and d!1384611 res!1873379) b!4505281))

(assert (= (and b!4505281 res!1873380) b!4505282))

(assert (=> d!1384611 m!5240041))

(declare-fun m!5240591 () Bool)

(assert (=> d!1384611 m!5240591))

(declare-fun m!5240593 () Bool)

(assert (=> d!1384611 m!5240593))

(declare-fun m!5240595 () Bool)

(assert (=> b!4505281 m!5240595))

(declare-fun m!5240597 () Bool)

(assert (=> b!4505282 m!5240597))

(assert (=> d!1384407 d!1384611))

(declare-fun bm!313654 () Bool)

(declare-fun call!313661 () List!50683)

(declare-fun call!313659 () List!50683)

(assert (=> bm!313654 (= call!313661 call!313659)))

(declare-fun d!1384613 () Bool)

(declare-fun e!2806594 () Bool)

(assert (=> d!1384613 e!2806594))

(declare-fun res!1873382 () Bool)

(assert (=> d!1384613 (=> (not res!1873382) (not e!2806594))))

(declare-fun lt!1684621 () List!50683)

(assert (=> d!1384613 (= res!1873382 (isStrictlySorted!403 lt!1684621))))

(declare-fun e!2806591 () List!50683)

(assert (=> d!1384613 (= lt!1684621 e!2806591)))

(declare-fun c!768275 () Bool)

(assert (=> d!1384613 (= c!768275 (and ((_ is Cons!50559) (toList!4267 lt!1684132)) (bvslt (_1!28772 (h!56384 (toList!4267 lt!1684132))) (_1!28772 lt!1684119))))))

(assert (=> d!1384613 (isStrictlySorted!403 (toList!4267 lt!1684132))))

(assert (=> d!1384613 (= (insertStrictlySorted!380 (toList!4267 lt!1684132) (_1!28772 lt!1684119) (_2!28772 lt!1684119)) lt!1684621)))

(declare-fun bm!313655 () Bool)

(declare-fun call!313660 () List!50683)

(assert (=> bm!313655 (= call!313659 call!313660)))

(declare-fun b!4505283 () Bool)

(declare-fun res!1873381 () Bool)

(assert (=> b!4505283 (=> (not res!1873381) (not e!2806594))))

(assert (=> b!4505283 (= res!1873381 (containsKey!1697 lt!1684621 (_1!28772 lt!1684119)))))

(declare-fun e!2806595 () List!50683)

(declare-fun b!4505284 () Bool)

(declare-fun c!768272 () Bool)

(declare-fun c!768273 () Bool)

(assert (=> b!4505284 (= e!2806595 (ite c!768273 (t!357645 (toList!4267 lt!1684132)) (ite c!768272 (Cons!50559 (h!56384 (toList!4267 lt!1684132)) (t!357645 (toList!4267 lt!1684132))) Nil!50559)))))

(declare-fun b!4505285 () Bool)

(assert (=> b!4505285 (= c!768272 (and ((_ is Cons!50559) (toList!4267 lt!1684132)) (bvsgt (_1!28772 (h!56384 (toList!4267 lt!1684132))) (_1!28772 lt!1684119))))))

(declare-fun e!2806592 () List!50683)

(declare-fun e!2806593 () List!50683)

(assert (=> b!4505285 (= e!2806592 e!2806593)))

(declare-fun b!4505286 () Bool)

(assert (=> b!4505286 (= e!2806593 call!313661)))

(declare-fun b!4505287 () Bool)

(assert (=> b!4505287 (= e!2806591 e!2806592)))

(assert (=> b!4505287 (= c!768273 (and ((_ is Cons!50559) (toList!4267 lt!1684132)) (= (_1!28772 (h!56384 (toList!4267 lt!1684132))) (_1!28772 lt!1684119))))))

(declare-fun b!4505288 () Bool)

(assert (=> b!4505288 (= e!2806594 (contains!13239 lt!1684621 (tuple2!50957 (_1!28772 lt!1684119) (_2!28772 lt!1684119))))))

(declare-fun b!4505289 () Bool)

(assert (=> b!4505289 (= e!2806593 call!313661)))

(declare-fun b!4505290 () Bool)

(assert (=> b!4505290 (= e!2806595 (insertStrictlySorted!380 (t!357645 (toList!4267 lt!1684132)) (_1!28772 lt!1684119) (_2!28772 lt!1684119)))))

(declare-fun b!4505291 () Bool)

(assert (=> b!4505291 (= e!2806591 call!313660)))

(declare-fun bm!313656 () Bool)

(assert (=> bm!313656 (= call!313660 ($colon$colon!907 e!2806595 (ite c!768275 (h!56384 (toList!4267 lt!1684132)) (tuple2!50957 (_1!28772 lt!1684119) (_2!28772 lt!1684119)))))))

(declare-fun c!768274 () Bool)

(assert (=> bm!313656 (= c!768274 c!768275)))

(declare-fun b!4505292 () Bool)

(assert (=> b!4505292 (= e!2806592 call!313659)))

(assert (= (and d!1384613 c!768275) b!4505291))

(assert (= (and d!1384613 (not c!768275)) b!4505287))

(assert (= (and b!4505287 c!768273) b!4505292))

(assert (= (and b!4505287 (not c!768273)) b!4505285))

(assert (= (and b!4505285 c!768272) b!4505289))

(assert (= (and b!4505285 (not c!768272)) b!4505286))

(assert (= (or b!4505289 b!4505286) bm!313654))

(assert (= (or b!4505292 bm!313654) bm!313655))

(assert (= (or b!4505291 bm!313655) bm!313656))

(assert (= (and bm!313656 c!768274) b!4505290))

(assert (= (and bm!313656 (not c!768274)) b!4505284))

(assert (= (and d!1384613 res!1873382) b!4505283))

(assert (= (and b!4505283 res!1873381) b!4505288))

(declare-fun m!5240599 () Bool)

(assert (=> d!1384613 m!5240599))

(assert (=> d!1384613 m!5240513))

(declare-fun m!5240601 () Bool)

(assert (=> b!4505290 m!5240601))

(declare-fun m!5240603 () Bool)

(assert (=> bm!313656 m!5240603))

(declare-fun m!5240605 () Bool)

(assert (=> b!4505283 m!5240605))

(declare-fun m!5240607 () Bool)

(assert (=> b!4505288 m!5240607))

(assert (=> d!1384407 d!1384613))

(declare-fun d!1384615 () Bool)

(declare-fun res!1873383 () Bool)

(declare-fun e!2806596 () Bool)

(assert (=> d!1384615 (=> res!1873383 e!2806596)))

(assert (=> d!1384615 (= res!1873383 (not ((_ is Cons!50558) (_2!28772 (h!56384 (toList!4267 lm!1477))))))))

(assert (=> d!1384615 (= (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lm!1477)))) e!2806596)))

(declare-fun b!4505293 () Bool)

(declare-fun e!2806597 () Bool)

(assert (=> b!4505293 (= e!2806596 e!2806597)))

(declare-fun res!1873384 () Bool)

(assert (=> b!4505293 (=> (not res!1873384) (not e!2806597))))

(assert (=> b!4505293 (= res!1873384 (not (containsKey!1694 (t!357644 (_2!28772 (h!56384 (toList!4267 lm!1477)))) (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lm!1477))))))))))

(declare-fun b!4505294 () Bool)

(assert (=> b!4505294 (= e!2806597 (noDuplicateKeys!1130 (t!357644 (_2!28772 (h!56384 (toList!4267 lm!1477))))))))

(assert (= (and d!1384615 (not res!1873383)) b!4505293))

(assert (= (and b!4505293 res!1873384) b!4505294))

(declare-fun m!5240609 () Bool)

(assert (=> b!4505293 m!5240609))

(declare-fun m!5240611 () Bool)

(assert (=> b!4505294 m!5240611))

(assert (=> bs!843011 d!1384615))

(assert (=> b!4504647 d!1384435))

(declare-fun d!1384617 () Bool)

(assert (=> d!1384617 (dynLambda!21121 lambda!169407 lt!1684127)))

(assert (=> d!1384617 true))

(declare-fun _$7!1792 () Unit!92671)

(assert (=> d!1384617 (= (choose!29192 (toList!4267 lm!1477) lambda!169407 lt!1684127) _$7!1792)))

(declare-fun b_lambda!153237 () Bool)

(assert (=> (not b_lambda!153237) (not d!1384617)))

(declare-fun bs!843076 () Bool)

(assert (= bs!843076 d!1384617))

(assert (=> bs!843076 m!5239671))

(assert (=> d!1384299 d!1384617))

(assert (=> d!1384299 d!1384419))

(declare-fun bs!843097 () Bool)

(declare-fun b!4505335 () Bool)

(assert (= bs!843097 (and b!4505335 b!4505175)))

(declare-fun lambda!169556 () Int)

(assert (=> bs!843097 (= (= (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169556 lambda!169507))))

(declare-fun bs!843098 () Bool)

(assert (= bs!843098 (and b!4505335 b!4505199)))

(assert (=> bs!843098 (= (= (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (toList!4268 lt!1684130)) (= lambda!169556 lambda!169509))))

(declare-fun bs!843099 () Bool)

(assert (= bs!843099 (and b!4505335 b!4505204)))

(assert (=> bs!843099 (= (= (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (toList!4268 lt!1684354)) (= lambda!169556 lambda!169511))))

(declare-fun bs!843100 () Bool)

(assert (= bs!843100 (and b!4505335 b!4505247)))

(assert (=> bs!843100 (= (= (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (toList!4268 lt!1684131)) (= lambda!169556 lambda!169513))))

(assert (=> b!4505335 true))

(declare-fun bs!843101 () Bool)

(declare-fun b!4505336 () Bool)

(assert (= bs!843101 (and b!4505336 b!4505199)))

(declare-fun lambda!169557 () Int)

(assert (=> bs!843101 (= (= (Cons!50558 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (toList!4268 lt!1684130)) (= lambda!169557 lambda!169509))))

(declare-fun bs!843102 () Bool)

(assert (= bs!843102 (and b!4505336 b!4505335)))

(assert (=> bs!843102 (= (= (Cons!50558 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (= lambda!169557 lambda!169556))))

(declare-fun bs!843103 () Bool)

(assert (= bs!843103 (and b!4505336 b!4505175)))

(assert (=> bs!843103 (= (= (Cons!50558 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169557 lambda!169507))))

(declare-fun bs!843104 () Bool)

(assert (= bs!843104 (and b!4505336 b!4505247)))

(assert (=> bs!843104 (= (= (Cons!50558 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (toList!4268 lt!1684131)) (= lambda!169557 lambda!169513))))

(declare-fun bs!843105 () Bool)

(assert (= bs!843105 (and b!4505336 b!4505204)))

(assert (=> bs!843105 (= (= (Cons!50558 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (toList!4268 lt!1684354)) (= lambda!169557 lambda!169511))))

(assert (=> b!4505336 true))

(declare-fun bs!843106 () Bool)

(declare-fun b!4505334 () Bool)

(assert (= bs!843106 (and b!4505334 b!4505199)))

(declare-fun lambda!169558 () Int)

(assert (=> bs!843106 (= (= (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (toList!4268 lt!1684130)) (= lambda!169558 lambda!169509))))

(declare-fun bs!843107 () Bool)

(assert (= bs!843107 (and b!4505334 b!4505335)))

(assert (=> bs!843107 (= (= (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (= lambda!169558 lambda!169556))))

(declare-fun bs!843108 () Bool)

(assert (= bs!843108 (and b!4505334 b!4505175)))

(assert (=> bs!843108 (= lambda!169558 lambda!169507)))

(declare-fun bs!843109 () Bool)

(assert (= bs!843109 (and b!4505334 b!4505247)))

(assert (=> bs!843109 (= (= (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (toList!4268 lt!1684131)) (= lambda!169558 lambda!169513))))

(declare-fun bs!843110 () Bool)

(assert (= bs!843110 (and b!4505334 b!4505336)))

(assert (=> bs!843110 (= (= (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (Cons!50558 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))) (= lambda!169558 lambda!169557))))

(declare-fun bs!843111 () Bool)

(assert (= bs!843111 (and b!4505334 b!4505204)))

(assert (=> bs!843111 (= (= (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (toList!4268 lt!1684354)) (= lambda!169558 lambda!169511))))

(assert (=> b!4505334 true))

(declare-fun bs!843112 () Bool)

(declare-fun b!4505330 () Bool)

(assert (= bs!843112 (and b!4505330 b!4505176)))

(declare-fun lambda!169559 () Int)

(assert (=> bs!843112 (= lambda!169559 lambda!169508)))

(declare-fun bs!843113 () Bool)

(assert (= bs!843113 (and b!4505330 b!4505200)))

(assert (=> bs!843113 (= lambda!169559 lambda!169510)))

(declare-fun bs!843114 () Bool)

(assert (= bs!843114 (and b!4505330 b!4505205)))

(assert (=> bs!843114 (= lambda!169559 lambda!169512)))

(declare-fun bs!843115 () Bool)

(assert (= bs!843115 (and b!4505330 b!4505248)))

(assert (=> bs!843115 (= lambda!169559 lambda!169514)))

(declare-fun lt!1684671 () List!50685)

(declare-fun e!2806617 () Bool)

(assert (=> b!4505330 (= e!2806617 (= (content!8274 lt!1684671) (content!8274 (map!11109 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) lambda!169559))))))

(declare-fun b!4505331 () Bool)

(assert (=> b!4505331 false))

(declare-fun e!2806616 () Unit!92671)

(declare-fun Unit!92762 () Unit!92671)

(assert (=> b!4505331 (= e!2806616 Unit!92762)))

(declare-fun b!4505332 () Bool)

(declare-fun e!2806618 () List!50685)

(assert (=> b!4505332 (= e!2806618 Nil!50561)))

(declare-fun b!4505333 () Bool)

(declare-fun Unit!92763 () Unit!92671)

(assert (=> b!4505333 (= e!2806616 Unit!92763)))

(declare-fun d!1384619 () Bool)

(assert (=> d!1384619 e!2806617))

(declare-fun res!1873403 () Bool)

(assert (=> d!1384619 (=> (not res!1873403) (not e!2806617))))

(assert (=> d!1384619 (= res!1873403 (noDuplicate!733 lt!1684671))))

(assert (=> d!1384619 (= lt!1684671 e!2806618)))

(declare-fun c!768286 () Bool)

(assert (=> d!1384619 (= c!768286 ((_ is Cons!50558) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))))

(assert (=> d!1384619 (invariantList!989 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))))

(assert (=> d!1384619 (= (getKeysList!437 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) lt!1684671)))

(declare-fun res!1873404 () Bool)

(assert (=> b!4505334 (=> (not res!1873404) (not e!2806617))))

(assert (=> b!4505334 (= res!1873404 (forall!10194 lt!1684671 lambda!169558))))

(assert (=> b!4505335 false))

(declare-fun lt!1684675 () Unit!92671)

(declare-fun forallContained!2449 (List!50685 Int K!11965) Unit!92671)

(assert (=> b!4505335 (= lt!1684675 (forallContained!2449 (getKeysList!437 (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) lambda!169556 (_1!28771 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))))))

(declare-fun e!2806619 () Unit!92671)

(declare-fun Unit!92765 () Unit!92671)

(assert (=> b!4505335 (= e!2806619 Unit!92765)))

(assert (=> b!4505336 (= e!2806618 (Cons!50561 (_1!28771 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (getKeysList!437 (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))))))

(declare-fun c!768284 () Bool)

(assert (=> b!4505336 (= c!768284 (containsKey!1698 (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (_1!28771 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))))))

(declare-fun lt!1684673 () Unit!92671)

(assert (=> b!4505336 (= lt!1684673 e!2806616)))

(declare-fun c!768285 () Bool)

(assert (=> b!4505336 (= c!768285 (contains!13243 (getKeysList!437 (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (_1!28771 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))))))

(declare-fun lt!1684672 () Unit!92671)

(assert (=> b!4505336 (= lt!1684672 e!2806619)))

(declare-fun lt!1684674 () List!50685)

(assert (=> b!4505336 (= lt!1684674 (getKeysList!437 (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))))))

(declare-fun lt!1684676 () Unit!92671)

(declare-fun lemmaForallContainsAddHeadPreserves!155 (List!50682 List!50685 tuple2!50954) Unit!92671)

(assert (=> b!4505336 (= lt!1684676 (lemmaForallContainsAddHeadPreserves!155 (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) lt!1684674 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))))))

(assert (=> b!4505336 (forall!10194 lt!1684674 lambda!169557)))

(declare-fun lt!1684670 () Unit!92671)

(assert (=> b!4505336 (= lt!1684670 lt!1684676)))

(declare-fun b!4505337 () Bool)

(declare-fun Unit!92766 () Unit!92671)

(assert (=> b!4505337 (= e!2806619 Unit!92766)))

(declare-fun b!4505338 () Bool)

(declare-fun res!1873402 () Bool)

(assert (=> b!4505338 (=> (not res!1873402) (not e!2806617))))

(assert (=> b!4505338 (= res!1873402 (= (length!322 lt!1684671) (length!323 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))))))

(assert (= (and d!1384619 c!768286) b!4505336))

(assert (= (and d!1384619 (not c!768286)) b!4505332))

(assert (= (and b!4505336 c!768284) b!4505331))

(assert (= (and b!4505336 (not c!768284)) b!4505333))

(assert (= (and b!4505336 c!768285) b!4505335))

(assert (= (and b!4505336 (not c!768285)) b!4505337))

(assert (= (and d!1384619 res!1873403) b!4505338))

(assert (= (and b!4505338 res!1873402) b!4505334))

(assert (= (and b!4505334 res!1873404) b!4505330))

(declare-fun m!5240661 () Bool)

(assert (=> d!1384619 m!5240661))

(assert (=> d!1384619 m!5240153))

(declare-fun m!5240663 () Bool)

(assert (=> b!4505334 m!5240663))

(declare-fun m!5240665 () Bool)

(assert (=> b!4505338 m!5240665))

(assert (=> b!4505338 m!5240401))

(declare-fun m!5240667 () Bool)

(assert (=> b!4505335 m!5240667))

(assert (=> b!4505335 m!5240667))

(declare-fun m!5240669 () Bool)

(assert (=> b!4505335 m!5240669))

(declare-fun m!5240671 () Bool)

(assert (=> b!4505330 m!5240671))

(declare-fun m!5240673 () Bool)

(assert (=> b!4505330 m!5240673))

(assert (=> b!4505330 m!5240673))

(declare-fun m!5240675 () Bool)

(assert (=> b!4505330 m!5240675))

(declare-fun m!5240677 () Bool)

(assert (=> b!4505336 m!5240677))

(assert (=> b!4505336 m!5240667))

(declare-fun m!5240679 () Bool)

(assert (=> b!4505336 m!5240679))

(assert (=> b!4505336 m!5240667))

(declare-fun m!5240681 () Bool)

(assert (=> b!4505336 m!5240681))

(declare-fun m!5240683 () Bool)

(assert (=> b!4505336 m!5240683))

(assert (=> b!4504824 d!1384619))

(declare-fun d!1384631 () Bool)

(assert (=> d!1384631 (isDefined!8344 (getValueByKey!1037 (toList!4268 lt!1684130) key!3287))))

(declare-fun lt!1684677 () Unit!92671)

(assert (=> d!1384631 (= lt!1684677 (choose!29202 (toList!4268 lt!1684130) key!3287))))

(assert (=> d!1384631 (invariantList!989 (toList!4268 lt!1684130))))

(assert (=> d!1384631 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!941 (toList!4268 lt!1684130) key!3287) lt!1684677)))

(declare-fun bs!843116 () Bool)

(assert (= bs!843116 d!1384631))

(assert (=> bs!843116 m!5239937))

(assert (=> bs!843116 m!5239937))

(assert (=> bs!843116 m!5239939))

(declare-fun m!5240685 () Bool)

(assert (=> bs!843116 m!5240685))

(assert (=> bs!843116 m!5240191))

(assert (=> b!4504848 d!1384631))

(assert (=> b!4504848 d!1384589))

(assert (=> b!4504848 d!1384591))

(declare-fun d!1384633 () Bool)

(assert (=> d!1384633 (contains!13243 (getKeysList!437 (toList!4268 lt!1684130)) key!3287)))

(declare-fun lt!1684678 () Unit!92671)

(assert (=> d!1384633 (= lt!1684678 (choose!29203 (toList!4268 lt!1684130) key!3287))))

(assert (=> d!1384633 (invariantList!989 (toList!4268 lt!1684130))))

(assert (=> d!1384633 (= (lemmaInListThenGetKeysListContains!433 (toList!4268 lt!1684130) key!3287) lt!1684678)))

(declare-fun bs!843117 () Bool)

(assert (= bs!843117 d!1384633))

(assert (=> bs!843117 m!5239945))

(assert (=> bs!843117 m!5239945))

(declare-fun m!5240687 () Bool)

(assert (=> bs!843117 m!5240687))

(declare-fun m!5240689 () Bool)

(assert (=> bs!843117 m!5240689))

(assert (=> bs!843117 m!5240191))

(assert (=> b!4504848 d!1384633))

(assert (=> b!4504820 d!1384541))

(assert (=> b!4504820 d!1384543))

(assert (=> b!4504700 d!1384279))

(declare-fun d!1384635 () Bool)

(declare-fun lt!1684679 () Bool)

(assert (=> d!1384635 (= lt!1684679 (select (content!8271 (toList!4267 lt!1684367)) lt!1684126))))

(declare-fun e!2806621 () Bool)

(assert (=> d!1384635 (= lt!1684679 e!2806621)))

(declare-fun res!1873406 () Bool)

(assert (=> d!1384635 (=> (not res!1873406) (not e!2806621))))

(assert (=> d!1384635 (= res!1873406 ((_ is Cons!50559) (toList!4267 lt!1684367)))))

(assert (=> d!1384635 (= (contains!13239 (toList!4267 lt!1684367) lt!1684126) lt!1684679)))

(declare-fun b!4505341 () Bool)

(declare-fun e!2806620 () Bool)

(assert (=> b!4505341 (= e!2806621 e!2806620)))

(declare-fun res!1873405 () Bool)

(assert (=> b!4505341 (=> res!1873405 e!2806620)))

(assert (=> b!4505341 (= res!1873405 (= (h!56384 (toList!4267 lt!1684367)) lt!1684126))))

(declare-fun b!4505342 () Bool)

(assert (=> b!4505342 (= e!2806620 (contains!13239 (t!357645 (toList!4267 lt!1684367)) lt!1684126))))

(assert (= (and d!1384635 res!1873406) b!4505341))

(assert (= (and b!4505341 (not res!1873405)) b!4505342))

(declare-fun m!5240691 () Bool)

(assert (=> d!1384635 m!5240691))

(declare-fun m!5240693 () Bool)

(assert (=> d!1384635 m!5240693))

(declare-fun m!5240695 () Bool)

(assert (=> b!4505342 m!5240695))

(assert (=> b!4504886 d!1384635))

(declare-fun d!1384637 () Bool)

(declare-fun lt!1684680 () Bool)

(assert (=> d!1384637 (= lt!1684680 (select (content!8271 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684127))))

(declare-fun e!2806623 () Bool)

(assert (=> d!1384637 (= lt!1684680 e!2806623)))

(declare-fun res!1873408 () Bool)

(assert (=> d!1384637 (=> (not res!1873408) (not e!2806623))))

(assert (=> d!1384637 (= res!1873408 ((_ is Cons!50559) (t!357645 (t!357645 (toList!4267 lm!1477)))))))

(assert (=> d!1384637 (= (contains!13239 (t!357645 (t!357645 (toList!4267 lm!1477))) lt!1684127) lt!1684680)))

(declare-fun b!4505343 () Bool)

(declare-fun e!2806622 () Bool)

(assert (=> b!4505343 (= e!2806623 e!2806622)))

(declare-fun res!1873407 () Bool)

(assert (=> b!4505343 (=> res!1873407 e!2806622)))

(assert (=> b!4505343 (= res!1873407 (= (h!56384 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684127))))

(declare-fun b!4505344 () Bool)

(assert (=> b!4505344 (= e!2806622 (contains!13239 (t!357645 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684127))))

(assert (= (and d!1384637 res!1873408) b!4505343))

(assert (= (and b!4505343 (not res!1873407)) b!4505344))

(declare-fun m!5240697 () Bool)

(assert (=> d!1384637 m!5240697))

(declare-fun m!5240699 () Bool)

(assert (=> d!1384637 m!5240699))

(declare-fun m!5240701 () Bool)

(assert (=> b!4505344 m!5240701))

(assert (=> b!4504904 d!1384637))

(declare-fun d!1384639 () Bool)

(assert (=> d!1384639 (= (invariantList!989 (toList!4268 lt!1684330)) (noDuplicatedKeys!248 (toList!4268 lt!1684330)))))

(declare-fun bs!843118 () Bool)

(assert (= bs!843118 d!1384639))

(declare-fun m!5240703 () Bool)

(assert (=> bs!843118 m!5240703))

(assert (=> d!1384371 d!1384639))

(declare-fun d!1384641 () Bool)

(declare-fun res!1873409 () Bool)

(declare-fun e!2806624 () Bool)

(assert (=> d!1384641 (=> res!1873409 e!2806624)))

(assert (=> d!1384641 (= res!1873409 ((_ is Nil!50559) (t!357645 (toList!4267 lm!1477))))))

(assert (=> d!1384641 (= (forall!10191 (t!357645 (toList!4267 lm!1477)) lambda!169448) e!2806624)))

(declare-fun b!4505345 () Bool)

(declare-fun e!2806625 () Bool)

(assert (=> b!4505345 (= e!2806624 e!2806625)))

(declare-fun res!1873410 () Bool)

(assert (=> b!4505345 (=> (not res!1873410) (not e!2806625))))

(assert (=> b!4505345 (= res!1873410 (dynLambda!21121 lambda!169448 (h!56384 (t!357645 (toList!4267 lm!1477)))))))

(declare-fun b!4505346 () Bool)

(assert (=> b!4505346 (= e!2806625 (forall!10191 (t!357645 (t!357645 (toList!4267 lm!1477))) lambda!169448))))

(assert (= (and d!1384641 (not res!1873409)) b!4505345))

(assert (= (and b!4505345 res!1873410) b!4505346))

(declare-fun b_lambda!153241 () Bool)

(assert (=> (not b_lambda!153241) (not b!4505345)))

(declare-fun m!5240705 () Bool)

(assert (=> b!4505345 m!5240705))

(declare-fun m!5240707 () Bool)

(assert (=> b!4505346 m!5240707))

(assert (=> d!1384371 d!1384641))

(declare-fun b!4505347 () Bool)

(declare-fun e!2806626 () Option!11056)

(assert (=> b!4505347 (= e!2806626 (Some!11055 (_2!28772 (h!56384 (toList!4267 lt!1684259)))))))

(declare-fun b!4505350 () Bool)

(declare-fun e!2806627 () Option!11056)

(assert (=> b!4505350 (= e!2806627 None!11055)))

(declare-fun d!1384643 () Bool)

(declare-fun c!768287 () Bool)

(assert (=> d!1384643 (= c!768287 (and ((_ is Cons!50559) (toList!4267 lt!1684259)) (= (_1!28772 (h!56384 (toList!4267 lt!1684259))) (_1!28772 lt!1684126))))))

(assert (=> d!1384643 (= (getValueByKey!1036 (toList!4267 lt!1684259) (_1!28772 lt!1684126)) e!2806626)))

(declare-fun b!4505349 () Bool)

(assert (=> b!4505349 (= e!2806627 (getValueByKey!1036 (t!357645 (toList!4267 lt!1684259)) (_1!28772 lt!1684126)))))

(declare-fun b!4505348 () Bool)

(assert (=> b!4505348 (= e!2806626 e!2806627)))

(declare-fun c!768288 () Bool)

(assert (=> b!4505348 (= c!768288 (and ((_ is Cons!50559) (toList!4267 lt!1684259)) (not (= (_1!28772 (h!56384 (toList!4267 lt!1684259))) (_1!28772 lt!1684126)))))))

(assert (= (and d!1384643 c!768287) b!4505347))

(assert (= (and d!1384643 (not c!768287)) b!4505348))

(assert (= (and b!4505348 c!768288) b!4505349))

(assert (= (and b!4505348 (not c!768288)) b!4505350))

(declare-fun m!5240709 () Bool)

(assert (=> b!4505349 m!5240709))

(assert (=> b!4504737 d!1384643))

(declare-fun d!1384645 () Bool)

(declare-fun lt!1684681 () Bool)

(assert (=> d!1384645 (= lt!1684681 (select (content!8271 (toList!4267 lt!1684362)) lt!1684119))))

(declare-fun e!2806629 () Bool)

(assert (=> d!1384645 (= lt!1684681 e!2806629)))

(declare-fun res!1873412 () Bool)

(assert (=> d!1384645 (=> (not res!1873412) (not e!2806629))))

(assert (=> d!1384645 (= res!1873412 ((_ is Cons!50559) (toList!4267 lt!1684362)))))

(assert (=> d!1384645 (= (contains!13239 (toList!4267 lt!1684362) lt!1684119) lt!1684681)))

(declare-fun b!4505351 () Bool)

(declare-fun e!2806628 () Bool)

(assert (=> b!4505351 (= e!2806629 e!2806628)))

(declare-fun res!1873411 () Bool)

(assert (=> b!4505351 (=> res!1873411 e!2806628)))

(assert (=> b!4505351 (= res!1873411 (= (h!56384 (toList!4267 lt!1684362)) lt!1684119))))

(declare-fun b!4505352 () Bool)

(assert (=> b!4505352 (= e!2806628 (contains!13239 (t!357645 (toList!4267 lt!1684362)) lt!1684119))))

(assert (= (and d!1384645 res!1873412) b!4505351))

(assert (= (and b!4505351 (not res!1873411)) b!4505352))

(declare-fun m!5240711 () Bool)

(assert (=> d!1384645 m!5240711))

(declare-fun m!5240713 () Bool)

(assert (=> d!1384645 m!5240713))

(declare-fun m!5240715 () Bool)

(assert (=> b!4505352 m!5240715))

(assert (=> b!4504882 d!1384645))

(declare-fun d!1384647 () Bool)

(declare-fun res!1873413 () Bool)

(declare-fun e!2806630 () Bool)

(assert (=> d!1384647 (=> res!1873413 e!2806630)))

(assert (=> d!1384647 (= res!1873413 (and ((_ is Cons!50559) (toList!4267 lt!1684132)) (= (_1!28772 (h!56384 (toList!4267 lt!1684132))) hash!344)))))

(assert (=> d!1384647 (= (containsKey!1697 (toList!4267 lt!1684132) hash!344) e!2806630)))

(declare-fun b!4505353 () Bool)

(declare-fun e!2806631 () Bool)

(assert (=> b!4505353 (= e!2806630 e!2806631)))

(declare-fun res!1873414 () Bool)

(assert (=> b!4505353 (=> (not res!1873414) (not e!2806631))))

(assert (=> b!4505353 (= res!1873414 (and (or (not ((_ is Cons!50559) (toList!4267 lt!1684132))) (bvsle (_1!28772 (h!56384 (toList!4267 lt!1684132))) hash!344)) ((_ is Cons!50559) (toList!4267 lt!1684132)) (bvslt (_1!28772 (h!56384 (toList!4267 lt!1684132))) hash!344)))))

(declare-fun b!4505354 () Bool)

(assert (=> b!4505354 (= e!2806631 (containsKey!1697 (t!357645 (toList!4267 lt!1684132)) hash!344))))

(assert (= (and d!1384647 (not res!1873413)) b!4505353))

(assert (= (and b!4505353 res!1873414) b!4505354))

(declare-fun m!5240717 () Bool)

(assert (=> b!4505354 m!5240717))

(assert (=> d!1384263 d!1384647))

(assert (=> d!1384345 d!1384447))

(declare-fun bs!843119 () Bool)

(declare-fun b!4505360 () Bool)

(assert (= bs!843119 (and b!4505360 b!4505199)))

(declare-fun lambda!169560 () Int)

(assert (=> bs!843119 (= (= (t!357644 (toList!4268 lt!1684130)) (toList!4268 lt!1684130)) (= lambda!169560 lambda!169509))))

(declare-fun bs!843120 () Bool)

(assert (= bs!843120 (and b!4505360 b!4505335)))

(assert (=> bs!843120 (= (= (t!357644 (toList!4268 lt!1684130)) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (= lambda!169560 lambda!169556))))

(declare-fun bs!843121 () Bool)

(assert (= bs!843121 (and b!4505360 b!4505175)))

(assert (=> bs!843121 (= (= (t!357644 (toList!4268 lt!1684130)) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169560 lambda!169507))))

(declare-fun bs!843122 () Bool)

(assert (= bs!843122 (and b!4505360 b!4505247)))

(assert (=> bs!843122 (= (= (t!357644 (toList!4268 lt!1684130)) (toList!4268 lt!1684131)) (= lambda!169560 lambda!169513))))

(declare-fun bs!843123 () Bool)

(assert (= bs!843123 (and b!4505360 b!4505336)))

(assert (=> bs!843123 (= (= (t!357644 (toList!4268 lt!1684130)) (Cons!50558 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))) (= lambda!169560 lambda!169557))))

(declare-fun bs!843124 () Bool)

(assert (= bs!843124 (and b!4505360 b!4505204)))

(assert (=> bs!843124 (= (= (t!357644 (toList!4268 lt!1684130)) (toList!4268 lt!1684354)) (= lambda!169560 lambda!169511))))

(declare-fun bs!843125 () Bool)

(assert (= bs!843125 (and b!4505360 b!4505334)))

(assert (=> bs!843125 (= (= (t!357644 (toList!4268 lt!1684130)) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169560 lambda!169558))))

(assert (=> b!4505360 true))

(declare-fun bs!843126 () Bool)

(declare-fun b!4505361 () Bool)

(assert (= bs!843126 (and b!4505361 b!4505199)))

(declare-fun lambda!169561 () Int)

(assert (=> bs!843126 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684130)) (t!357644 (toList!4268 lt!1684130))) (toList!4268 lt!1684130)) (= lambda!169561 lambda!169509))))

(declare-fun bs!843127 () Bool)

(assert (= bs!843127 (and b!4505361 b!4505335)))

(assert (=> bs!843127 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684130)) (t!357644 (toList!4268 lt!1684130))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (= lambda!169561 lambda!169556))))

(declare-fun bs!843128 () Bool)

(assert (= bs!843128 (and b!4505361 b!4505175)))

(assert (=> bs!843128 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684130)) (t!357644 (toList!4268 lt!1684130))) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169561 lambda!169507))))

(declare-fun bs!843129 () Bool)

(assert (= bs!843129 (and b!4505361 b!4505247)))

(assert (=> bs!843129 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684130)) (t!357644 (toList!4268 lt!1684130))) (toList!4268 lt!1684131)) (= lambda!169561 lambda!169513))))

(declare-fun bs!843130 () Bool)

(assert (= bs!843130 (and b!4505361 b!4505336)))

(assert (=> bs!843130 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684130)) (t!357644 (toList!4268 lt!1684130))) (Cons!50558 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))) (= lambda!169561 lambda!169557))))

(declare-fun bs!843131 () Bool)

(assert (= bs!843131 (and b!4505361 b!4505334)))

(assert (=> bs!843131 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684130)) (t!357644 (toList!4268 lt!1684130))) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169561 lambda!169558))))

(declare-fun bs!843132 () Bool)

(assert (= bs!843132 (and b!4505361 b!4505360)))

(assert (=> bs!843132 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684130)) (t!357644 (toList!4268 lt!1684130))) (t!357644 (toList!4268 lt!1684130))) (= lambda!169561 lambda!169560))))

(declare-fun bs!843133 () Bool)

(assert (= bs!843133 (and b!4505361 b!4505204)))

(assert (=> bs!843133 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684130)) (t!357644 (toList!4268 lt!1684130))) (toList!4268 lt!1684354)) (= lambda!169561 lambda!169511))))

(assert (=> b!4505361 true))

(declare-fun bs!843134 () Bool)

(declare-fun b!4505359 () Bool)

(assert (= bs!843134 (and b!4505359 b!4505199)))

(declare-fun lambda!169562 () Int)

(assert (=> bs!843134 (= lambda!169562 lambda!169509)))

(declare-fun bs!843135 () Bool)

(assert (= bs!843135 (and b!4505359 b!4505335)))

(assert (=> bs!843135 (= (= (toList!4268 lt!1684130) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (= lambda!169562 lambda!169556))))

(declare-fun bs!843136 () Bool)

(assert (= bs!843136 (and b!4505359 b!4505175)))

(assert (=> bs!843136 (= (= (toList!4268 lt!1684130) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169562 lambda!169507))))

(declare-fun bs!843137 () Bool)

(assert (= bs!843137 (and b!4505359 b!4505247)))

(assert (=> bs!843137 (= (= (toList!4268 lt!1684130) (toList!4268 lt!1684131)) (= lambda!169562 lambda!169513))))

(declare-fun bs!843138 () Bool)

(assert (= bs!843138 (and b!4505359 b!4505336)))

(assert (=> bs!843138 (= (= (toList!4268 lt!1684130) (Cons!50558 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))) (= lambda!169562 lambda!169557))))

(declare-fun bs!843139 () Bool)

(assert (= bs!843139 (and b!4505359 b!4505361)))

(assert (=> bs!843139 (= (= (toList!4268 lt!1684130) (Cons!50558 (h!56383 (toList!4268 lt!1684130)) (t!357644 (toList!4268 lt!1684130)))) (= lambda!169562 lambda!169561))))

(declare-fun bs!843140 () Bool)

(assert (= bs!843140 (and b!4505359 b!4505334)))

(assert (=> bs!843140 (= (= (toList!4268 lt!1684130) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169562 lambda!169558))))

(declare-fun bs!843141 () Bool)

(assert (= bs!843141 (and b!4505359 b!4505360)))

(assert (=> bs!843141 (= (= (toList!4268 lt!1684130) (t!357644 (toList!4268 lt!1684130))) (= lambda!169562 lambda!169560))))

(declare-fun bs!843142 () Bool)

(assert (= bs!843142 (and b!4505359 b!4505204)))

(assert (=> bs!843142 (= (= (toList!4268 lt!1684130) (toList!4268 lt!1684354)) (= lambda!169562 lambda!169511))))

(assert (=> b!4505359 true))

(declare-fun bs!843143 () Bool)

(declare-fun b!4505355 () Bool)

(assert (= bs!843143 (and b!4505355 b!4505330)))

(declare-fun lambda!169563 () Int)

(assert (=> bs!843143 (= lambda!169563 lambda!169559)))

(declare-fun bs!843144 () Bool)

(assert (= bs!843144 (and b!4505355 b!4505176)))

(assert (=> bs!843144 (= lambda!169563 lambda!169508)))

(declare-fun bs!843145 () Bool)

(assert (= bs!843145 (and b!4505355 b!4505200)))

(assert (=> bs!843145 (= lambda!169563 lambda!169510)))

(declare-fun bs!843146 () Bool)

(assert (= bs!843146 (and b!4505355 b!4505248)))

(assert (=> bs!843146 (= lambda!169563 lambda!169514)))

(declare-fun bs!843147 () Bool)

(assert (= bs!843147 (and b!4505355 b!4505205)))

(assert (=> bs!843147 (= lambda!169563 lambda!169512)))

(declare-fun e!2806633 () Bool)

(declare-fun lt!1684683 () List!50685)

(assert (=> b!4505355 (= e!2806633 (= (content!8274 lt!1684683) (content!8274 (map!11109 (toList!4268 lt!1684130) lambda!169563))))))

(declare-fun b!4505356 () Bool)

(assert (=> b!4505356 false))

(declare-fun e!2806632 () Unit!92671)

(declare-fun Unit!92774 () Unit!92671)

(assert (=> b!4505356 (= e!2806632 Unit!92774)))

(declare-fun b!4505357 () Bool)

(declare-fun e!2806634 () List!50685)

(assert (=> b!4505357 (= e!2806634 Nil!50561)))

(declare-fun b!4505358 () Bool)

(declare-fun Unit!92775 () Unit!92671)

(assert (=> b!4505358 (= e!2806632 Unit!92775)))

(declare-fun d!1384649 () Bool)

(assert (=> d!1384649 e!2806633))

(declare-fun res!1873416 () Bool)

(assert (=> d!1384649 (=> (not res!1873416) (not e!2806633))))

(assert (=> d!1384649 (= res!1873416 (noDuplicate!733 lt!1684683))))

(assert (=> d!1384649 (= lt!1684683 e!2806634)))

(declare-fun c!768291 () Bool)

(assert (=> d!1384649 (= c!768291 ((_ is Cons!50558) (toList!4268 lt!1684130)))))

(assert (=> d!1384649 (invariantList!989 (toList!4268 lt!1684130))))

(assert (=> d!1384649 (= (getKeysList!437 (toList!4268 lt!1684130)) lt!1684683)))

(declare-fun res!1873417 () Bool)

(assert (=> b!4505359 (=> (not res!1873417) (not e!2806633))))

(assert (=> b!4505359 (= res!1873417 (forall!10194 lt!1684683 lambda!169562))))

(assert (=> b!4505360 false))

(declare-fun lt!1684687 () Unit!92671)

(assert (=> b!4505360 (= lt!1684687 (forallContained!2449 (getKeysList!437 (t!357644 (toList!4268 lt!1684130))) lambda!169560 (_1!28771 (h!56383 (toList!4268 lt!1684130)))))))

(declare-fun e!2806635 () Unit!92671)

(declare-fun Unit!92776 () Unit!92671)

(assert (=> b!4505360 (= e!2806635 Unit!92776)))

(assert (=> b!4505361 (= e!2806634 (Cons!50561 (_1!28771 (h!56383 (toList!4268 lt!1684130))) (getKeysList!437 (t!357644 (toList!4268 lt!1684130)))))))

(declare-fun c!768289 () Bool)

(assert (=> b!4505361 (= c!768289 (containsKey!1698 (t!357644 (toList!4268 lt!1684130)) (_1!28771 (h!56383 (toList!4268 lt!1684130)))))))

(declare-fun lt!1684685 () Unit!92671)

(assert (=> b!4505361 (= lt!1684685 e!2806632)))

(declare-fun c!768290 () Bool)

(assert (=> b!4505361 (= c!768290 (contains!13243 (getKeysList!437 (t!357644 (toList!4268 lt!1684130))) (_1!28771 (h!56383 (toList!4268 lt!1684130)))))))

(declare-fun lt!1684684 () Unit!92671)

(assert (=> b!4505361 (= lt!1684684 e!2806635)))

(declare-fun lt!1684686 () List!50685)

(assert (=> b!4505361 (= lt!1684686 (getKeysList!437 (t!357644 (toList!4268 lt!1684130))))))

(declare-fun lt!1684688 () Unit!92671)

(assert (=> b!4505361 (= lt!1684688 (lemmaForallContainsAddHeadPreserves!155 (t!357644 (toList!4268 lt!1684130)) lt!1684686 (h!56383 (toList!4268 lt!1684130))))))

(assert (=> b!4505361 (forall!10194 lt!1684686 lambda!169561)))

(declare-fun lt!1684682 () Unit!92671)

(assert (=> b!4505361 (= lt!1684682 lt!1684688)))

(declare-fun b!4505362 () Bool)

(declare-fun Unit!92777 () Unit!92671)

(assert (=> b!4505362 (= e!2806635 Unit!92777)))

(declare-fun b!4505363 () Bool)

(declare-fun res!1873415 () Bool)

(assert (=> b!4505363 (=> (not res!1873415) (not e!2806633))))

(assert (=> b!4505363 (= res!1873415 (= (length!322 lt!1684683) (length!323 (toList!4268 lt!1684130))))))

(assert (= (and d!1384649 c!768291) b!4505361))

(assert (= (and d!1384649 (not c!768291)) b!4505357))

(assert (= (and b!4505361 c!768289) b!4505356))

(assert (= (and b!4505361 (not c!768289)) b!4505358))

(assert (= (and b!4505361 c!768290) b!4505360))

(assert (= (and b!4505361 (not c!768290)) b!4505362))

(assert (= (and d!1384649 res!1873416) b!4505363))

(assert (= (and b!4505363 res!1873415) b!4505359))

(assert (= (and b!4505359 res!1873417) b!4505355))

(declare-fun m!5240719 () Bool)

(assert (=> d!1384649 m!5240719))

(assert (=> d!1384649 m!5240191))

(declare-fun m!5240721 () Bool)

(assert (=> b!4505359 m!5240721))

(declare-fun m!5240723 () Bool)

(assert (=> b!4505363 m!5240723))

(assert (=> b!4505363 m!5240455))

(assert (=> b!4505360 m!5240339))

(assert (=> b!4505360 m!5240339))

(declare-fun m!5240725 () Bool)

(assert (=> b!4505360 m!5240725))

(declare-fun m!5240727 () Bool)

(assert (=> b!4505355 m!5240727))

(declare-fun m!5240729 () Bool)

(assert (=> b!4505355 m!5240729))

(assert (=> b!4505355 m!5240729))

(declare-fun m!5240731 () Bool)

(assert (=> b!4505355 m!5240731))

(declare-fun m!5240733 () Bool)

(assert (=> b!4505361 m!5240733))

(assert (=> b!4505361 m!5240339))

(assert (=> b!4505361 m!5240341))

(assert (=> b!4505361 m!5240339))

(declare-fun m!5240735 () Bool)

(assert (=> b!4505361 m!5240735))

(declare-fun m!5240737 () Bool)

(assert (=> b!4505361 m!5240737))

(assert (=> b!4504856 d!1384649))

(declare-fun bs!843148 () Bool)

(declare-fun b!4505369 () Bool)

(assert (= bs!843148 (and b!4505369 b!4505199)))

(declare-fun lambda!169564 () Int)

(assert (=> bs!843148 (= (= (t!357644 (toList!4268 lt!1684131)) (toList!4268 lt!1684130)) (= lambda!169564 lambda!169509))))

(declare-fun bs!843149 () Bool)

(assert (= bs!843149 (and b!4505369 b!4505335)))

(assert (=> bs!843149 (= (= (t!357644 (toList!4268 lt!1684131)) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (= lambda!169564 lambda!169556))))

(declare-fun bs!843150 () Bool)

(assert (= bs!843150 (and b!4505369 b!4505175)))

(assert (=> bs!843150 (= (= (t!357644 (toList!4268 lt!1684131)) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169564 lambda!169507))))

(declare-fun bs!843151 () Bool)

(assert (= bs!843151 (and b!4505369 b!4505247)))

(assert (=> bs!843151 (= (= (t!357644 (toList!4268 lt!1684131)) (toList!4268 lt!1684131)) (= lambda!169564 lambda!169513))))

(declare-fun bs!843152 () Bool)

(assert (= bs!843152 (and b!4505369 b!4505336)))

(assert (=> bs!843152 (= (= (t!357644 (toList!4268 lt!1684131)) (Cons!50558 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))) (= lambda!169564 lambda!169557))))

(declare-fun bs!843153 () Bool)

(assert (= bs!843153 (and b!4505369 b!4505359)))

(assert (=> bs!843153 (= (= (t!357644 (toList!4268 lt!1684131)) (toList!4268 lt!1684130)) (= lambda!169564 lambda!169562))))

(declare-fun bs!843154 () Bool)

(assert (= bs!843154 (and b!4505369 b!4505361)))

(assert (=> bs!843154 (= (= (t!357644 (toList!4268 lt!1684131)) (Cons!50558 (h!56383 (toList!4268 lt!1684130)) (t!357644 (toList!4268 lt!1684130)))) (= lambda!169564 lambda!169561))))

(declare-fun bs!843155 () Bool)

(assert (= bs!843155 (and b!4505369 b!4505334)))

(assert (=> bs!843155 (= (= (t!357644 (toList!4268 lt!1684131)) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169564 lambda!169558))))

(declare-fun bs!843156 () Bool)

(assert (= bs!843156 (and b!4505369 b!4505360)))

(assert (=> bs!843156 (= (= (t!357644 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684130))) (= lambda!169564 lambda!169560))))

(declare-fun bs!843157 () Bool)

(assert (= bs!843157 (and b!4505369 b!4505204)))

(assert (=> bs!843157 (= (= (t!357644 (toList!4268 lt!1684131)) (toList!4268 lt!1684354)) (= lambda!169564 lambda!169511))))

(assert (=> b!4505369 true))

(declare-fun bs!843158 () Bool)

(declare-fun b!4505370 () Bool)

(assert (= bs!843158 (and b!4505370 b!4505199)))

(declare-fun lambda!169565 () Int)

(assert (=> bs!843158 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684131))) (toList!4268 lt!1684130)) (= lambda!169565 lambda!169509))))

(declare-fun bs!843159 () Bool)

(assert (= bs!843159 (and b!4505370 b!4505335)))

(assert (=> bs!843159 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684131))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (= lambda!169565 lambda!169556))))

(declare-fun bs!843160 () Bool)

(assert (= bs!843160 (and b!4505370 b!4505175)))

(assert (=> bs!843160 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684131))) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169565 lambda!169507))))

(declare-fun bs!843161 () Bool)

(assert (= bs!843161 (and b!4505370 b!4505247)))

(assert (=> bs!843161 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684131))) (toList!4268 lt!1684131)) (= lambda!169565 lambda!169513))))

(declare-fun bs!843162 () Bool)

(assert (= bs!843162 (and b!4505370 b!4505369)))

(assert (=> bs!843162 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684131))) (t!357644 (toList!4268 lt!1684131))) (= lambda!169565 lambda!169564))))

(declare-fun bs!843163 () Bool)

(assert (= bs!843163 (and b!4505370 b!4505336)))

(assert (=> bs!843163 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684131))) (Cons!50558 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))) (= lambda!169565 lambda!169557))))

(declare-fun bs!843164 () Bool)

(assert (= bs!843164 (and b!4505370 b!4505359)))

(assert (=> bs!843164 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684131))) (toList!4268 lt!1684130)) (= lambda!169565 lambda!169562))))

(declare-fun bs!843165 () Bool)

(assert (= bs!843165 (and b!4505370 b!4505361)))

(assert (=> bs!843165 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684131))) (Cons!50558 (h!56383 (toList!4268 lt!1684130)) (t!357644 (toList!4268 lt!1684130)))) (= lambda!169565 lambda!169561))))

(declare-fun bs!843166 () Bool)

(assert (= bs!843166 (and b!4505370 b!4505334)))

(assert (=> bs!843166 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684131))) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169565 lambda!169558))))

(declare-fun bs!843167 () Bool)

(assert (= bs!843167 (and b!4505370 b!4505360)))

(assert (=> bs!843167 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684131))) (t!357644 (toList!4268 lt!1684130))) (= lambda!169565 lambda!169560))))

(declare-fun bs!843168 () Bool)

(assert (= bs!843168 (and b!4505370 b!4505204)))

(assert (=> bs!843168 (= (= (Cons!50558 (h!56383 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684131))) (toList!4268 lt!1684354)) (= lambda!169565 lambda!169511))))

(assert (=> b!4505370 true))

(declare-fun bs!843169 () Bool)

(declare-fun b!4505368 () Bool)

(assert (= bs!843169 (and b!4505368 b!4505199)))

(declare-fun lambda!169566 () Int)

(assert (=> bs!843169 (= (= (toList!4268 lt!1684131) (toList!4268 lt!1684130)) (= lambda!169566 lambda!169509))))

(declare-fun bs!843170 () Bool)

(assert (= bs!843170 (and b!4505368 b!4505175)))

(assert (=> bs!843170 (= (= (toList!4268 lt!1684131) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169566 lambda!169507))))

(declare-fun bs!843171 () Bool)

(assert (= bs!843171 (and b!4505368 b!4505247)))

(assert (=> bs!843171 (= lambda!169566 lambda!169513)))

(declare-fun bs!843172 () Bool)

(assert (= bs!843172 (and b!4505368 b!4505369)))

(assert (=> bs!843172 (= (= (toList!4268 lt!1684131) (t!357644 (toList!4268 lt!1684131))) (= lambda!169566 lambda!169564))))

(declare-fun bs!843173 () Bool)

(assert (= bs!843173 (and b!4505368 b!4505336)))

(assert (=> bs!843173 (= (= (toList!4268 lt!1684131) (Cons!50558 (h!56383 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))))) (= lambda!169566 lambda!169557))))

(declare-fun bs!843174 () Bool)

(assert (= bs!843174 (and b!4505368 b!4505359)))

(assert (=> bs!843174 (= (= (toList!4268 lt!1684131) (toList!4268 lt!1684130)) (= lambda!169566 lambda!169562))))

(declare-fun bs!843175 () Bool)

(assert (= bs!843175 (and b!4505368 b!4505361)))

(assert (=> bs!843175 (= (= (toList!4268 lt!1684131) (Cons!50558 (h!56383 (toList!4268 lt!1684130)) (t!357644 (toList!4268 lt!1684130)))) (= lambda!169566 lambda!169561))))

(declare-fun bs!843176 () Bool)

(assert (= bs!843176 (and b!4505368 b!4505334)))

(assert (=> bs!843176 (= (= (toList!4268 lt!1684131) (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477))))) (= lambda!169566 lambda!169558))))

(declare-fun bs!843177 () Bool)

(assert (= bs!843177 (and b!4505368 b!4505370)))

(assert (=> bs!843177 (= (= (toList!4268 lt!1684131) (Cons!50558 (h!56383 (toList!4268 lt!1684131)) (t!357644 (toList!4268 lt!1684131)))) (= lambda!169566 lambda!169565))))

(declare-fun bs!843178 () Bool)

(assert (= bs!843178 (and b!4505368 b!4505335)))

(assert (=> bs!843178 (= (= (toList!4268 lt!1684131) (t!357644 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))))) (= lambda!169566 lambda!169556))))

(declare-fun bs!843179 () Bool)

(assert (= bs!843179 (and b!4505368 b!4505360)))

(assert (=> bs!843179 (= (= (toList!4268 lt!1684131) (t!357644 (toList!4268 lt!1684130))) (= lambda!169566 lambda!169560))))

(declare-fun bs!843180 () Bool)

(assert (= bs!843180 (and b!4505368 b!4505204)))

(assert (=> bs!843180 (= (= (toList!4268 lt!1684131) (toList!4268 lt!1684354)) (= lambda!169566 lambda!169511))))

(assert (=> b!4505368 true))

(declare-fun bs!843181 () Bool)

(declare-fun b!4505364 () Bool)

(assert (= bs!843181 (and b!4505364 b!4505330)))

(declare-fun lambda!169569 () Int)

(assert (=> bs!843181 (= lambda!169569 lambda!169559)))

(declare-fun bs!843182 () Bool)

(assert (= bs!843182 (and b!4505364 b!4505176)))

(assert (=> bs!843182 (= lambda!169569 lambda!169508)))

(declare-fun bs!843183 () Bool)

(assert (= bs!843183 (and b!4505364 b!4505200)))

(assert (=> bs!843183 (= lambda!169569 lambda!169510)))

(declare-fun bs!843184 () Bool)

(assert (= bs!843184 (and b!4505364 b!4505355)))

(assert (=> bs!843184 (= lambda!169569 lambda!169563)))

(declare-fun bs!843185 () Bool)

(assert (= bs!843185 (and b!4505364 b!4505248)))

(assert (=> bs!843185 (= lambda!169569 lambda!169514)))

(declare-fun bs!843186 () Bool)

(assert (= bs!843186 (and b!4505364 b!4505205)))

(assert (=> bs!843186 (= lambda!169569 lambda!169512)))

(declare-fun e!2806637 () Bool)

(declare-fun lt!1684690 () List!50685)

(assert (=> b!4505364 (= e!2806637 (= (content!8274 lt!1684690) (content!8274 (map!11109 (toList!4268 lt!1684131) lambda!169569))))))

(declare-fun b!4505365 () Bool)

(assert (=> b!4505365 false))

(declare-fun e!2806636 () Unit!92671)

(declare-fun Unit!92778 () Unit!92671)

(assert (=> b!4505365 (= e!2806636 Unit!92778)))

(declare-fun b!4505366 () Bool)

(declare-fun e!2806638 () List!50685)

(assert (=> b!4505366 (= e!2806638 Nil!50561)))

(declare-fun b!4505367 () Bool)

(declare-fun Unit!92779 () Unit!92671)

(assert (=> b!4505367 (= e!2806636 Unit!92779)))

(declare-fun d!1384651 () Bool)

(assert (=> d!1384651 e!2806637))

(declare-fun res!1873419 () Bool)

(assert (=> d!1384651 (=> (not res!1873419) (not e!2806637))))

(assert (=> d!1384651 (= res!1873419 (noDuplicate!733 lt!1684690))))

(assert (=> d!1384651 (= lt!1684690 e!2806638)))

(declare-fun c!768294 () Bool)

(assert (=> d!1384651 (= c!768294 ((_ is Cons!50558) (toList!4268 lt!1684131)))))

(assert (=> d!1384651 (invariantList!989 (toList!4268 lt!1684131))))

(assert (=> d!1384651 (= (getKeysList!437 (toList!4268 lt!1684131)) lt!1684690)))

(declare-fun res!1873420 () Bool)

(assert (=> b!4505368 (=> (not res!1873420) (not e!2806637))))

(assert (=> b!4505368 (= res!1873420 (forall!10194 lt!1684690 lambda!169566))))

(assert (=> b!4505369 false))

(declare-fun lt!1684694 () Unit!92671)

(assert (=> b!4505369 (= lt!1684694 (forallContained!2449 (getKeysList!437 (t!357644 (toList!4268 lt!1684131))) lambda!169564 (_1!28771 (h!56383 (toList!4268 lt!1684131)))))))

(declare-fun e!2806639 () Unit!92671)

(declare-fun Unit!92780 () Unit!92671)

(assert (=> b!4505369 (= e!2806639 Unit!92780)))

(assert (=> b!4505370 (= e!2806638 (Cons!50561 (_1!28771 (h!56383 (toList!4268 lt!1684131))) (getKeysList!437 (t!357644 (toList!4268 lt!1684131)))))))

(declare-fun c!768292 () Bool)

(assert (=> b!4505370 (= c!768292 (containsKey!1698 (t!357644 (toList!4268 lt!1684131)) (_1!28771 (h!56383 (toList!4268 lt!1684131)))))))

(declare-fun lt!1684692 () Unit!92671)

(assert (=> b!4505370 (= lt!1684692 e!2806636)))

(declare-fun c!768293 () Bool)

(assert (=> b!4505370 (= c!768293 (contains!13243 (getKeysList!437 (t!357644 (toList!4268 lt!1684131))) (_1!28771 (h!56383 (toList!4268 lt!1684131)))))))

(declare-fun lt!1684691 () Unit!92671)

(assert (=> b!4505370 (= lt!1684691 e!2806639)))

(declare-fun lt!1684693 () List!50685)

(assert (=> b!4505370 (= lt!1684693 (getKeysList!437 (t!357644 (toList!4268 lt!1684131))))))

(declare-fun lt!1684695 () Unit!92671)

(assert (=> b!4505370 (= lt!1684695 (lemmaForallContainsAddHeadPreserves!155 (t!357644 (toList!4268 lt!1684131)) lt!1684693 (h!56383 (toList!4268 lt!1684131))))))

(assert (=> b!4505370 (forall!10194 lt!1684693 lambda!169565)))

(declare-fun lt!1684689 () Unit!92671)

(assert (=> b!4505370 (= lt!1684689 lt!1684695)))

(declare-fun b!4505371 () Bool)

(declare-fun Unit!92781 () Unit!92671)

(assert (=> b!4505371 (= e!2806639 Unit!92781)))

(declare-fun b!4505372 () Bool)

(declare-fun res!1873418 () Bool)

(assert (=> b!4505372 (=> (not res!1873418) (not e!2806637))))

(assert (=> b!4505372 (= res!1873418 (= (length!322 lt!1684690) (length!323 (toList!4268 lt!1684131))))))

(assert (= (and d!1384651 c!768294) b!4505370))

(assert (= (and d!1384651 (not c!768294)) b!4505366))

(assert (= (and b!4505370 c!768292) b!4505365))

(assert (= (and b!4505370 (not c!768292)) b!4505367))

(assert (= (and b!4505370 c!768293) b!4505369))

(assert (= (and b!4505370 (not c!768293)) b!4505371))

(assert (= (and d!1384651 res!1873419) b!4505372))

(assert (= (and b!4505372 res!1873418) b!4505368))

(assert (= (and b!4505368 res!1873420) b!4505364))

(declare-fun m!5240739 () Bool)

(assert (=> d!1384651 m!5240739))

(assert (=> d!1384651 m!5240177))

(declare-fun m!5240741 () Bool)

(assert (=> b!4505368 m!5240741))

(declare-fun m!5240743 () Bool)

(assert (=> b!4505372 m!5240743))

(assert (=> b!4505372 m!5240533))

(declare-fun m!5240745 () Bool)

(assert (=> b!4505369 m!5240745))

(assert (=> b!4505369 m!5240745))

(declare-fun m!5240747 () Bool)

(assert (=> b!4505369 m!5240747))

(declare-fun m!5240749 () Bool)

(assert (=> b!4505364 m!5240749))

(declare-fun m!5240751 () Bool)

(assert (=> b!4505364 m!5240751))

(assert (=> b!4505364 m!5240751))

(declare-fun m!5240753 () Bool)

(assert (=> b!4505364 m!5240753))

(declare-fun m!5240755 () Bool)

(assert (=> b!4505370 m!5240755))

(assert (=> b!4505370 m!5240745))

(declare-fun m!5240757 () Bool)

(assert (=> b!4505370 m!5240757))

(assert (=> b!4505370 m!5240745))

(declare-fun m!5240759 () Bool)

(assert (=> b!4505370 m!5240759))

(declare-fun m!5240761 () Bool)

(assert (=> b!4505370 m!5240761))

(assert (=> b!4504867 d!1384651))

(declare-fun d!1384653 () Bool)

(declare-fun res!1873427 () Bool)

(declare-fun e!2806648 () Bool)

(assert (=> d!1384653 (=> res!1873427 e!2806648)))

(assert (=> d!1384653 (= res!1873427 (and ((_ is Cons!50558) (t!357644 newBucket!178)) (= (_1!28771 (h!56383 (t!357644 newBucket!178))) (_1!28771 (h!56383 newBucket!178)))))))

(assert (=> d!1384653 (= (containsKey!1694 (t!357644 newBucket!178) (_1!28771 (h!56383 newBucket!178))) e!2806648)))

(declare-fun b!4505389 () Bool)

(declare-fun e!2806649 () Bool)

(assert (=> b!4505389 (= e!2806648 e!2806649)))

(declare-fun res!1873428 () Bool)

(assert (=> b!4505389 (=> (not res!1873428) (not e!2806649))))

(assert (=> b!4505389 (= res!1873428 ((_ is Cons!50558) (t!357644 newBucket!178)))))

(declare-fun b!4505390 () Bool)

(assert (=> b!4505390 (= e!2806649 (containsKey!1694 (t!357644 (t!357644 newBucket!178)) (_1!28771 (h!56383 newBucket!178))))))

(assert (= (and d!1384653 (not res!1873427)) b!4505389))

(assert (= (and b!4505389 res!1873428) b!4505390))

(declare-fun m!5240763 () Bool)

(assert (=> b!4505390 m!5240763))

(assert (=> b!4504874 d!1384653))

(declare-fun d!1384655 () Bool)

(assert (=> d!1384655 (isDefined!8343 (getValueByKey!1036 (toList!4267 lt!1684132) hash!344))))

(declare-fun lt!1684710 () Unit!92671)

(assert (=> d!1384655 (= lt!1684710 (choose!29204 (toList!4267 lt!1684132) hash!344))))

(declare-fun e!2806650 () Bool)

(assert (=> d!1384655 e!2806650))

(declare-fun res!1873429 () Bool)

(assert (=> d!1384655 (=> (not res!1873429) (not e!2806650))))

(assert (=> d!1384655 (= res!1873429 (isStrictlySorted!403 (toList!4267 lt!1684132)))))

(assert (=> d!1384655 (= (lemmaContainsKeyImpliesGetValueByKeyDefined!940 (toList!4267 lt!1684132) hash!344) lt!1684710)))

(declare-fun b!4505391 () Bool)

(assert (=> b!4505391 (= e!2806650 (containsKey!1697 (toList!4267 lt!1684132) hash!344))))

(assert (= (and d!1384655 res!1873429) b!4505391))

(assert (=> d!1384655 m!5239537))

(assert (=> d!1384655 m!5239537))

(assert (=> d!1384655 m!5239541))

(declare-fun m!5240765 () Bool)

(assert (=> d!1384655 m!5240765))

(assert (=> d!1384655 m!5240513))

(assert (=> b!4505391 m!5239533))

(assert (=> b!4504621 d!1384655))

(assert (=> b!4504621 d!1384465))

(assert (=> b!4504621 d!1384443))

(assert (=> b!4504863 d!1384585))

(assert (=> b!4504863 d!1384587))

(declare-fun d!1384657 () Bool)

(declare-fun c!768303 () Bool)

(assert (=> d!1384657 (= c!768303 ((_ is Nil!50559) (toList!4267 lm!1477)))))

(declare-fun e!2806653 () (InoxSet tuple2!50956))

(assert (=> d!1384657 (= (content!8271 (toList!4267 lm!1477)) e!2806653)))

(declare-fun b!4505398 () Bool)

(assert (=> b!4505398 (= e!2806653 ((as const (Array tuple2!50956 Bool)) false))))

(declare-fun b!4505399 () Bool)

(assert (=> b!4505399 (= e!2806653 ((_ map or) (store ((as const (Array tuple2!50956 Bool)) false) (h!56384 (toList!4267 lm!1477)) true) (content!8271 (t!357645 (toList!4267 lm!1477)))))))

(assert (= (and d!1384657 c!768303) b!4505398))

(assert (= (and d!1384657 (not c!768303)) b!4505399))

(declare-fun m!5240767 () Bool)

(assert (=> b!4505399 m!5240767))

(assert (=> b!4505399 m!5240103))

(assert (=> d!1384279 d!1384657))

(assert (=> d!1384333 d!1384331))

(declare-fun d!1384659 () Bool)

(assert (=> d!1384659 (containsKeyBiggerList!110 (toList!4267 lt!1684132) key!3287)))

(assert (=> d!1384659 true))

(declare-fun _$33!625 () Unit!92671)

(assert (=> d!1384659 (= (choose!29194 lt!1684132 key!3287 hashF!1107) _$33!625)))

(declare-fun bs!843187 () Bool)

(assert (= bs!843187 d!1384659))

(assert (=> bs!843187 m!5239491))

(assert (=> d!1384333 d!1384659))

(declare-fun d!1384661 () Bool)

(declare-fun res!1873430 () Bool)

(declare-fun e!2806654 () Bool)

(assert (=> d!1384661 (=> res!1873430 e!2806654)))

(assert (=> d!1384661 (= res!1873430 ((_ is Nil!50559) (toList!4267 lt!1684132)))))

(assert (=> d!1384661 (= (forall!10191 (toList!4267 lt!1684132) lambda!169436) e!2806654)))

(declare-fun b!4505400 () Bool)

(declare-fun e!2806655 () Bool)

(assert (=> b!4505400 (= e!2806654 e!2806655)))

(declare-fun res!1873431 () Bool)

(assert (=> b!4505400 (=> (not res!1873431) (not e!2806655))))

(assert (=> b!4505400 (= res!1873431 (dynLambda!21121 lambda!169436 (h!56384 (toList!4267 lt!1684132))))))

(declare-fun b!4505401 () Bool)

(assert (=> b!4505401 (= e!2806655 (forall!10191 (t!357645 (toList!4267 lt!1684132)) lambda!169436))))

(assert (= (and d!1384661 (not res!1873430)) b!4505400))

(assert (= (and b!4505400 res!1873431) b!4505401))

(declare-fun b_lambda!153243 () Bool)

(assert (=> (not b_lambda!153243) (not b!4505400)))

(declare-fun m!5240769 () Bool)

(assert (=> b!4505400 m!5240769))

(declare-fun m!5240771 () Bool)

(assert (=> b!4505401 m!5240771))

(assert (=> d!1384333 d!1384661))

(declare-fun bs!843188 () Bool)

(declare-fun b!4505414 () Bool)

(assert (= bs!843188 (and b!4505414 b!4505043)))

(declare-fun lambda!169577 () Int)

(assert (=> bs!843188 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169577 lambda!169498))))

(declare-fun bs!843189 () Bool)

(assert (= bs!843189 (and b!4505414 b!4505044)))

(assert (=> bs!843189 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lt!1684456) (= lambda!169577 lambda!169500))))

(declare-fun bs!843191 () Bool)

(assert (= bs!843191 (and b!4505414 b!4504941)))

(assert (=> bs!843191 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lt!1684415) (= lambda!169577 lambda!169496))))

(assert (=> bs!843189 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169577 lambda!169499))))

(declare-fun bs!843192 () Bool)

(assert (= bs!843192 (and b!4505414 d!1384445)))

(assert (=> bs!843192 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lt!1684425) (= lambda!169577 lambda!169497))))

(declare-fun bs!843193 () Bool)

(assert (= bs!843193 (and b!4505414 d!1384505)))

(assert (=> bs!843193 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lt!1684466) (= lambda!169577 lambda!169501))))

(declare-fun bs!843195 () Bool)

(assert (= bs!843195 (and b!4505414 d!1384321)))

(assert (=> bs!843195 (not (= lambda!169577 lambda!169430))))

(assert (=> bs!843191 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169577 lambda!169495))))

(declare-fun bs!843197 () Bool)

(assert (= bs!843197 (and b!4505414 b!4504940)))

(assert (=> bs!843197 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169577 lambda!169494))))

(assert (=> b!4505414 true))

(declare-fun bs!843198 () Bool)

(declare-fun b!4505415 () Bool)

(assert (= bs!843198 (and b!4505415 b!4505414)))

(declare-fun lambda!169581 () Int)

(assert (=> bs!843198 (= lambda!169581 lambda!169577)))

(declare-fun bs!843199 () Bool)

(assert (= bs!843199 (and b!4505415 b!4505043)))

(assert (=> bs!843199 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169581 lambda!169498))))

(declare-fun bs!843200 () Bool)

(assert (= bs!843200 (and b!4505415 b!4505044)))

(assert (=> bs!843200 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lt!1684456) (= lambda!169581 lambda!169500))))

(declare-fun bs!843201 () Bool)

(assert (= bs!843201 (and b!4505415 b!4504941)))

(assert (=> bs!843201 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lt!1684415) (= lambda!169581 lambda!169496))))

(assert (=> bs!843200 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169581 lambda!169499))))

(declare-fun bs!843202 () Bool)

(assert (= bs!843202 (and b!4505415 d!1384445)))

(assert (=> bs!843202 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lt!1684425) (= lambda!169581 lambda!169497))))

(declare-fun bs!843203 () Bool)

(assert (= bs!843203 (and b!4505415 d!1384505)))

(assert (=> bs!843203 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lt!1684466) (= lambda!169581 lambda!169501))))

(declare-fun bs!843204 () Bool)

(assert (= bs!843204 (and b!4505415 d!1384321)))

(assert (=> bs!843204 (not (= lambda!169581 lambda!169430))))

(assert (=> bs!843201 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169581 lambda!169495))))

(declare-fun bs!843205 () Bool)

(assert (= bs!843205 (and b!4505415 b!4504940)))

(assert (=> bs!843205 (= (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169581 lambda!169494))))

(assert (=> b!4505415 true))

(declare-fun lambda!169582 () Int)

(declare-fun lt!1684713 () ListMap!3529)

(assert (=> bs!843198 (= (= lt!1684713 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169582 lambda!169577))))

(assert (=> bs!843199 (= (= lt!1684713 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169582 lambda!169498))))

(assert (=> bs!843200 (= (= lt!1684713 lt!1684456) (= lambda!169582 lambda!169500))))

(assert (=> bs!843201 (= (= lt!1684713 lt!1684415) (= lambda!169582 lambda!169496))))

(assert (=> bs!843200 (= (= lt!1684713 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169582 lambda!169499))))

(assert (=> bs!843202 (= (= lt!1684713 lt!1684425) (= lambda!169582 lambda!169497))))

(assert (=> bs!843203 (= (= lt!1684713 lt!1684466) (= lambda!169582 lambda!169501))))

(assert (=> b!4505415 (= (= lt!1684713 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169582 lambda!169581))))

(assert (=> bs!843204 (not (= lambda!169582 lambda!169430))))

(assert (=> bs!843201 (= (= lt!1684713 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169582 lambda!169495))))

(assert (=> bs!843205 (= (= lt!1684713 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169582 lambda!169494))))

(assert (=> b!4505415 true))

(declare-fun bs!843215 () Bool)

(declare-fun d!1384663 () Bool)

(assert (= bs!843215 (and d!1384663 b!4505414)))

(declare-fun lt!1684728 () ListMap!3529)

(declare-fun lambda!169585 () Int)

(assert (=> bs!843215 (= (= lt!1684728 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169585 lambda!169577))))

(declare-fun bs!843216 () Bool)

(assert (= bs!843216 (and d!1384663 b!4505043)))

(assert (=> bs!843216 (= (= lt!1684728 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169585 lambda!169498))))

(declare-fun bs!843217 () Bool)

(assert (= bs!843217 (and d!1384663 b!4505044)))

(assert (=> bs!843217 (= (= lt!1684728 lt!1684456) (= lambda!169585 lambda!169500))))

(declare-fun bs!843218 () Bool)

(assert (= bs!843218 (and d!1384663 b!4504941)))

(assert (=> bs!843218 (= (= lt!1684728 lt!1684415) (= lambda!169585 lambda!169496))))

(declare-fun bs!843219 () Bool)

(assert (= bs!843219 (and d!1384663 b!4505415)))

(assert (=> bs!843219 (= (= lt!1684728 lt!1684713) (= lambda!169585 lambda!169582))))

(assert (=> bs!843217 (= (= lt!1684728 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169585 lambda!169499))))

(declare-fun bs!843220 () Bool)

(assert (= bs!843220 (and d!1384663 d!1384445)))

(assert (=> bs!843220 (= (= lt!1684728 lt!1684425) (= lambda!169585 lambda!169497))))

(declare-fun bs!843221 () Bool)

(assert (= bs!843221 (and d!1384663 d!1384505)))

(assert (=> bs!843221 (= (= lt!1684728 lt!1684466) (= lambda!169585 lambda!169501))))

(assert (=> bs!843219 (= (= lt!1684728 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169585 lambda!169581))))

(declare-fun bs!843222 () Bool)

(assert (= bs!843222 (and d!1384663 d!1384321)))

(assert (=> bs!843222 (not (= lambda!169585 lambda!169430))))

(assert (=> bs!843218 (= (= lt!1684728 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169585 lambda!169495))))

(declare-fun bs!843223 () Bool)

(assert (= bs!843223 (and d!1384663 b!4504940)))

(assert (=> bs!843223 (= (= lt!1684728 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169585 lambda!169494))))

(assert (=> d!1384663 true))

(declare-fun b!4505411 () Bool)

(declare-fun res!1873436 () Bool)

(declare-fun e!2806661 () Bool)

(assert (=> b!4505411 (=> (not res!1873436) (not e!2806661))))

(assert (=> b!4505411 (= res!1873436 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) lambda!169585))))

(declare-fun call!313673 () Bool)

(declare-fun bm!313666 () Bool)

(declare-fun c!768307 () Bool)

(assert (=> bm!313666 (= call!313673 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (ite c!768307 lambda!169577 lambda!169582)))))

(declare-fun b!4505412 () Bool)

(assert (=> b!4505412 (= e!2806661 (invariantList!989 (toList!4268 lt!1684728)))))

(assert (=> d!1384663 e!2806661))

(declare-fun res!1873437 () Bool)

(assert (=> d!1384663 (=> (not res!1873437) (not e!2806661))))

(assert (=> d!1384663 (= res!1873437 (forall!10192 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lambda!169585))))

(declare-fun e!2806662 () ListMap!3529)

(assert (=> d!1384663 (= lt!1684728 e!2806662)))

(assert (=> d!1384663 (= c!768307 ((_ is Nil!50558) (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119))))))))

(assert (=> d!1384663 (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))))))

(assert (=> d!1384663 (= (addToMapMapFromBucket!657 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) lt!1684728)))

(declare-fun call!313671 () Bool)

(declare-fun bm!313667 () Bool)

(declare-fun lt!1684727 () ListMap!3529)

(assert (=> bm!313667 (= call!313671 (forall!10192 (ite c!768307 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (toList!4268 lt!1684727)) (ite c!768307 lambda!169577 lambda!169582)))))

(declare-fun bm!313668 () Bool)

(declare-fun call!313672 () Unit!92671)

(assert (=> bm!313668 (= call!313672 (lemmaContainsAllItsOwnKeys!311 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))))))

(declare-fun b!4505413 () Bool)

(declare-fun e!2806660 () Bool)

(assert (=> b!4505413 (= e!2806660 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) lambda!169582))))

(assert (=> b!4505414 (= e!2806662 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))))))

(declare-fun lt!1684731 () Unit!92671)

(assert (=> b!4505414 (= lt!1684731 call!313672)))

(assert (=> b!4505414 call!313673))

(declare-fun lt!1684730 () Unit!92671)

(assert (=> b!4505414 (= lt!1684730 lt!1684731)))

(assert (=> b!4505414 call!313671))

(declare-fun lt!1684733 () Unit!92671)

(declare-fun Unit!92783 () Unit!92671)

(assert (=> b!4505414 (= lt!1684733 Unit!92783)))

(assert (=> b!4505415 (= e!2806662 lt!1684713)))

(assert (=> b!4505415 (= lt!1684727 (+!1483 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (h!56383 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))))))))

(assert (=> b!4505415 (= lt!1684713 (addToMapMapFromBucket!657 (t!357644 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (+!1483 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (h!56383 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119))))))))))

(declare-fun lt!1684737 () Unit!92671)

(assert (=> b!4505415 (= lt!1684737 call!313672)))

(assert (=> b!4505415 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) lambda!169581)))

(declare-fun lt!1684716 () Unit!92671)

(assert (=> b!4505415 (= lt!1684716 lt!1684737)))

(assert (=> b!4505415 (forall!10192 (toList!4268 lt!1684727) lambda!169582)))

(declare-fun lt!1684725 () Unit!92671)

(declare-fun Unit!92784 () Unit!92671)

(assert (=> b!4505415 (= lt!1684725 Unit!92784)))

(assert (=> b!4505415 (forall!10192 (t!357644 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) lambda!169582)))

(declare-fun lt!1684726 () Unit!92671)

(declare-fun Unit!92785 () Unit!92671)

(assert (=> b!4505415 (= lt!1684726 Unit!92785)))

(declare-fun lt!1684717 () Unit!92671)

(declare-fun Unit!92786 () Unit!92671)

(assert (=> b!4505415 (= lt!1684717 Unit!92786)))

(declare-fun lt!1684721 () Unit!92671)

(assert (=> b!4505415 (= lt!1684721 (forallContained!2446 (toList!4268 lt!1684727) lambda!169582 (h!56383 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))))))))

(assert (=> b!4505415 (contains!13241 lt!1684727 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))))))))

(declare-fun lt!1684724 () Unit!92671)

(declare-fun Unit!92787 () Unit!92671)

(assert (=> b!4505415 (= lt!1684724 Unit!92787)))

(assert (=> b!4505415 (contains!13241 lt!1684713 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))))))))

(declare-fun lt!1684735 () Unit!92671)

(declare-fun Unit!92788 () Unit!92671)

(assert (=> b!4505415 (= lt!1684735 Unit!92788)))

(assert (=> b!4505415 (forall!10192 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lambda!169582)))

(declare-fun lt!1684729 () Unit!92671)

(declare-fun Unit!92789 () Unit!92671)

(assert (=> b!4505415 (= lt!1684729 Unit!92789)))

(assert (=> b!4505415 call!313671))

(declare-fun lt!1684734 () Unit!92671)

(declare-fun Unit!92790 () Unit!92671)

(assert (=> b!4505415 (= lt!1684734 Unit!92790)))

(declare-fun lt!1684738 () Unit!92671)

(declare-fun Unit!92791 () Unit!92671)

(assert (=> b!4505415 (= lt!1684738 Unit!92791)))

(declare-fun lt!1684719 () Unit!92671)

(assert (=> b!4505415 (= lt!1684719 (addForallContainsKeyThenBeforeAdding!311 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lt!1684713 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))))) (_2!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119))))))))))

(assert (=> b!4505415 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) lambda!169582)))

(declare-fun lt!1684732 () Unit!92671)

(assert (=> b!4505415 (= lt!1684732 lt!1684719)))

(assert (=> b!4505415 call!313673))

(declare-fun lt!1684736 () Unit!92671)

(declare-fun Unit!92792 () Unit!92671)

(assert (=> b!4505415 (= lt!1684736 Unit!92792)))

(declare-fun res!1873435 () Bool)

(assert (=> b!4505415 (= res!1873435 (forall!10192 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lambda!169582))))

(assert (=> b!4505415 (=> (not res!1873435) (not e!2806660))))

(assert (=> b!4505415 e!2806660))

(declare-fun lt!1684715 () Unit!92671)

(declare-fun Unit!92793 () Unit!92671)

(assert (=> b!4505415 (= lt!1684715 Unit!92793)))

(assert (= (and d!1384663 c!768307) b!4505414))

(assert (= (and d!1384663 (not c!768307)) b!4505415))

(assert (= (and b!4505415 res!1873435) b!4505413))

(assert (= (or b!4505414 b!4505415) bm!313666))

(assert (= (or b!4505414 b!4505415) bm!313667))

(assert (= (or b!4505414 b!4505415) bm!313668))

(assert (= (and d!1384663 res!1873437) b!4505411))

(assert (= (and b!4505411 res!1873436) b!4505412))

(declare-fun m!5240801 () Bool)

(assert (=> bm!313667 m!5240801))

(declare-fun m!5240803 () Bool)

(assert (=> b!4505411 m!5240803))

(declare-fun m!5240805 () Bool)

(assert (=> bm!313666 m!5240805))

(declare-fun m!5240807 () Bool)

(assert (=> b!4505412 m!5240807))

(declare-fun m!5240809 () Bool)

(assert (=> b!4505413 m!5240809))

(declare-fun m!5240811 () Bool)

(assert (=> d!1384663 m!5240811))

(declare-fun m!5240813 () Bool)

(assert (=> d!1384663 m!5240813))

(declare-fun m!5240815 () Bool)

(assert (=> b!4505415 m!5240815))

(assert (=> b!4505415 m!5240035))

(declare-fun m!5240817 () Bool)

(assert (=> b!4505415 m!5240817))

(declare-fun m!5240819 () Bool)

(assert (=> b!4505415 m!5240819))

(declare-fun m!5240821 () Bool)

(assert (=> b!4505415 m!5240821))

(declare-fun m!5240823 () Bool)

(assert (=> b!4505415 m!5240823))

(declare-fun m!5240825 () Bool)

(assert (=> b!4505415 m!5240825))

(assert (=> b!4505415 m!5240035))

(declare-fun m!5240827 () Bool)

(assert (=> b!4505415 m!5240827))

(declare-fun m!5240829 () Bool)

(assert (=> b!4505415 m!5240829))

(declare-fun m!5240831 () Bool)

(assert (=> b!4505415 m!5240831))

(assert (=> b!4505415 m!5240817))

(declare-fun m!5240833 () Bool)

(assert (=> b!4505415 m!5240833))

(assert (=> b!4505415 m!5240821))

(assert (=> b!4505415 m!5240809))

(assert (=> bm!313668 m!5240035))

(declare-fun m!5240835 () Bool)

(assert (=> bm!313668 m!5240835))

(assert (=> b!4504879 d!1384663))

(declare-fun bs!843230 () Bool)

(declare-fun d!1384667 () Bool)

(assert (= bs!843230 (and d!1384667 d!1384413)))

(declare-fun lambda!169588 () Int)

(assert (=> bs!843230 (= lambda!169588 lambda!169458)))

(declare-fun bs!843231 () Bool)

(assert (= bs!843231 (and d!1384667 d!1384401)))

(assert (=> bs!843231 (= lambda!169588 lambda!169456)))

(declare-fun bs!843232 () Bool)

(assert (= bs!843232 (and d!1384667 d!1384509)))

(assert (=> bs!843232 (= lambda!169588 lambda!169502)))

(declare-fun bs!843233 () Bool)

(assert (= bs!843233 (and d!1384667 d!1384425)))

(assert (=> bs!843233 (= lambda!169588 lambda!169461)))

(declare-fun bs!843234 () Bool)

(assert (= bs!843234 (and d!1384667 d!1384395)))

(assert (=> bs!843234 (= lambda!169588 lambda!169453)))

(declare-fun bs!843235 () Bool)

(assert (= bs!843235 (and d!1384667 d!1384429)))

(assert (=> bs!843235 (= lambda!169588 lambda!169462)))

(declare-fun bs!843236 () Bool)

(assert (= bs!843236 (and d!1384667 d!1384387)))

(assert (=> bs!843236 (= lambda!169588 lambda!169451)))

(declare-fun bs!843237 () Bool)

(assert (= bs!843237 (and d!1384667 start!444824)))

(assert (=> bs!843237 (= lambda!169588 lambda!169407)))

(declare-fun bs!843238 () Bool)

(assert (= bs!843238 (and d!1384667 d!1384271)))

(assert (=> bs!843238 (= lambda!169588 lambda!169416)))

(declare-fun bs!843239 () Bool)

(assert (= bs!843239 (and d!1384667 d!1384389)))

(assert (=> bs!843239 (= lambda!169588 lambda!169452)))

(declare-fun bs!843240 () Bool)

(assert (= bs!843240 (and d!1384667 d!1384371)))

(assert (=> bs!843240 (= lambda!169588 lambda!169448)))

(declare-fun bs!843241 () Bool)

(assert (= bs!843241 (and d!1384667 d!1384433)))

(assert (=> bs!843241 (not (= lambda!169588 lambda!169465))))

(declare-fun bs!843242 () Bool)

(assert (= bs!843242 (and d!1384667 d!1384405)))

(assert (=> bs!843242 (= lambda!169588 lambda!169457)))

(declare-fun bs!843243 () Bool)

(assert (= bs!843243 (and d!1384667 d!1384333)))

(assert (=> bs!843243 (= lambda!169588 lambda!169436)))

(declare-fun lt!1684760 () ListMap!3529)

(assert (=> d!1384667 (invariantList!989 (toList!4268 lt!1684760))))

(declare-fun e!2806666 () ListMap!3529)

(assert (=> d!1384667 (= lt!1684760 e!2806666)))

(declare-fun c!768309 () Bool)

(assert (=> d!1384667 (= c!768309 ((_ is Cons!50559) (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))))))

(assert (=> d!1384667 (forall!10191 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))) lambda!169588)))

(assert (=> d!1384667 (= (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) lt!1684760)))

(declare-fun b!4505423 () Bool)

(assert (=> b!4505423 (= e!2806666 (addToMapMapFromBucket!657 (_2!28772 (h!56384 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119)))))))))

(declare-fun b!4505424 () Bool)

(assert (=> b!4505424 (= e!2806666 (ListMap!3530 Nil!50558))))

(assert (= (and d!1384667 c!768309) b!4505423))

(assert (= (and d!1384667 (not c!768309)) b!4505424))

(declare-fun m!5240869 () Bool)

(assert (=> d!1384667 m!5240869))

(declare-fun m!5240871 () Bool)

(assert (=> d!1384667 m!5240871))

(declare-fun m!5240873 () Bool)

(assert (=> b!4505423 m!5240873))

(assert (=> b!4505423 m!5240873))

(declare-fun m!5240875 () Bool)

(assert (=> b!4505423 m!5240875))

(assert (=> b!4504879 d!1384667))

(declare-fun d!1384671 () Bool)

(declare-fun res!1873446 () Bool)

(declare-fun e!2806675 () Bool)

(assert (=> d!1384671 (=> res!1873446 e!2806675)))

(declare-fun e!2806673 () Bool)

(assert (=> d!1384671 (= res!1873446 e!2806673)))

(declare-fun res!1873444 () Bool)

(assert (=> d!1384671 (=> (not res!1873444) (not e!2806673))))

(assert (=> d!1384671 (= res!1873444 ((_ is Cons!50559) (t!357645 (t!357645 (toList!4267 lm!1477)))))))

(assert (=> d!1384671 (= (containsKeyBiggerList!110 (t!357645 (t!357645 (toList!4267 lm!1477))) key!3287) e!2806675)))

(declare-fun b!4505434 () Bool)

(assert (=> b!4505434 (= e!2806673 (containsKey!1694 (_2!28772 (h!56384 (t!357645 (t!357645 (toList!4267 lm!1477))))) key!3287))))

(declare-fun b!4505435 () Bool)

(declare-fun e!2806674 () Bool)

(assert (=> b!4505435 (= e!2806675 e!2806674)))

(declare-fun res!1873445 () Bool)

(assert (=> b!4505435 (=> (not res!1873445) (not e!2806674))))

(assert (=> b!4505435 (= res!1873445 ((_ is Cons!50559) (t!357645 (t!357645 (toList!4267 lm!1477)))))))

(declare-fun b!4505436 () Bool)

(assert (=> b!4505436 (= e!2806674 (containsKeyBiggerList!110 (t!357645 (t!357645 (t!357645 (toList!4267 lm!1477)))) key!3287))))

(assert (= (and d!1384671 res!1873444) b!4505434))

(assert (= (and d!1384671 (not res!1873446)) b!4505435))

(assert (= (and b!4505435 res!1873445) b!4505436))

(declare-fun m!5240893 () Bool)

(assert (=> b!4505434 m!5240893))

(declare-fun m!5240895 () Bool)

(assert (=> b!4505436 m!5240895))

(assert (=> b!4504767 d!1384671))

(declare-fun bs!843244 () Bool)

(declare-fun d!1384673 () Bool)

(assert (= bs!843244 (and d!1384673 d!1384413)))

(declare-fun lambda!169589 () Int)

(assert (=> bs!843244 (= lambda!169589 lambda!169458)))

(declare-fun bs!843245 () Bool)

(assert (= bs!843245 (and d!1384673 d!1384401)))

(assert (=> bs!843245 (= lambda!169589 lambda!169456)))

(declare-fun bs!843246 () Bool)

(assert (= bs!843246 (and d!1384673 d!1384509)))

(assert (=> bs!843246 (= lambda!169589 lambda!169502)))

(declare-fun bs!843247 () Bool)

(assert (= bs!843247 (and d!1384673 d!1384425)))

(assert (=> bs!843247 (= lambda!169589 lambda!169461)))

(declare-fun bs!843248 () Bool)

(assert (= bs!843248 (and d!1384673 d!1384395)))

(assert (=> bs!843248 (= lambda!169589 lambda!169453)))

(declare-fun bs!843249 () Bool)

(assert (= bs!843249 (and d!1384673 d!1384667)))

(assert (=> bs!843249 (= lambda!169589 lambda!169588)))

(declare-fun bs!843250 () Bool)

(assert (= bs!843250 (and d!1384673 d!1384429)))

(assert (=> bs!843250 (= lambda!169589 lambda!169462)))

(declare-fun bs!843251 () Bool)

(assert (= bs!843251 (and d!1384673 d!1384387)))

(assert (=> bs!843251 (= lambda!169589 lambda!169451)))

(declare-fun bs!843252 () Bool)

(assert (= bs!843252 (and d!1384673 start!444824)))

(assert (=> bs!843252 (= lambda!169589 lambda!169407)))

(declare-fun bs!843253 () Bool)

(assert (= bs!843253 (and d!1384673 d!1384271)))

(assert (=> bs!843253 (= lambda!169589 lambda!169416)))

(declare-fun bs!843254 () Bool)

(assert (= bs!843254 (and d!1384673 d!1384389)))

(assert (=> bs!843254 (= lambda!169589 lambda!169452)))

(declare-fun bs!843255 () Bool)

(assert (= bs!843255 (and d!1384673 d!1384371)))

(assert (=> bs!843255 (= lambda!169589 lambda!169448)))

(declare-fun bs!843256 () Bool)

(assert (= bs!843256 (and d!1384673 d!1384433)))

(assert (=> bs!843256 (not (= lambda!169589 lambda!169465))))

(declare-fun bs!843257 () Bool)

(assert (= bs!843257 (and d!1384673 d!1384405)))

(assert (=> bs!843257 (= lambda!169589 lambda!169457)))

(declare-fun bs!843258 () Bool)

(assert (= bs!843258 (and d!1384673 d!1384333)))

(assert (=> bs!843258 (= lambda!169589 lambda!169436)))

(declare-fun lt!1684769 () ListMap!3529)

(assert (=> d!1384673 (invariantList!989 (toList!4268 lt!1684769))))

(declare-fun e!2806676 () ListMap!3529)

(assert (=> d!1384673 (= lt!1684769 e!2806676)))

(declare-fun c!768313 () Bool)

(assert (=> d!1384673 (= c!768313 ((_ is Cons!50559) (toList!4267 (+!1482 lt!1684132 (tuple2!50957 hash!344 newBucket!178)))))))

(assert (=> d!1384673 (forall!10191 (toList!4267 (+!1482 lt!1684132 (tuple2!50957 hash!344 newBucket!178))) lambda!169589)))

(assert (=> d!1384673 (= (extractMap!1186 (toList!4267 (+!1482 lt!1684132 (tuple2!50957 hash!344 newBucket!178)))) lt!1684769)))

(declare-fun b!4505437 () Bool)

(assert (=> b!4505437 (= e!2806676 (addToMapMapFromBucket!657 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 (tuple2!50957 hash!344 newBucket!178))))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 (tuple2!50957 hash!344 newBucket!178)))))))))

(declare-fun b!4505438 () Bool)

(assert (=> b!4505438 (= e!2806676 (ListMap!3530 Nil!50558))))

(assert (= (and d!1384673 c!768313) b!4505437))

(assert (= (and d!1384673 (not c!768313)) b!4505438))

(declare-fun m!5240901 () Bool)

(assert (=> d!1384673 m!5240901))

(declare-fun m!5240903 () Bool)

(assert (=> d!1384673 m!5240903))

(declare-fun m!5240905 () Bool)

(assert (=> b!4505437 m!5240905))

(assert (=> b!4505437 m!5240905))

(declare-fun m!5240907 () Bool)

(assert (=> b!4505437 m!5240907))

(assert (=> d!1384401 d!1384673))

(declare-fun d!1384677 () Bool)

(declare-fun e!2806677 () Bool)

(assert (=> d!1384677 e!2806677))

(declare-fun res!1873448 () Bool)

(assert (=> d!1384677 (=> (not res!1873448) (not e!2806677))))

(declare-fun lt!1684773 () ListLongMap!2899)

(assert (=> d!1384677 (= res!1873448 (contains!13240 lt!1684773 (_1!28772 (tuple2!50957 hash!344 newBucket!178))))))

(declare-fun lt!1684772 () List!50683)

(assert (=> d!1384677 (= lt!1684773 (ListLongMap!2900 lt!1684772))))

(declare-fun lt!1684770 () Unit!92671)

(declare-fun lt!1684771 () Unit!92671)

(assert (=> d!1384677 (= lt!1684770 lt!1684771)))

(assert (=> d!1384677 (= (getValueByKey!1036 lt!1684772 (_1!28772 (tuple2!50957 hash!344 newBucket!178))) (Some!11055 (_2!28772 (tuple2!50957 hash!344 newBucket!178))))))

(assert (=> d!1384677 (= lt!1684771 (lemmaContainsTupThenGetReturnValue!640 lt!1684772 (_1!28772 (tuple2!50957 hash!344 newBucket!178)) (_2!28772 (tuple2!50957 hash!344 newBucket!178))))))

(assert (=> d!1384677 (= lt!1684772 (insertStrictlySorted!380 (toList!4267 lt!1684132) (_1!28772 (tuple2!50957 hash!344 newBucket!178)) (_2!28772 (tuple2!50957 hash!344 newBucket!178))))))

(assert (=> d!1384677 (= (+!1482 lt!1684132 (tuple2!50957 hash!344 newBucket!178)) lt!1684773)))

(declare-fun b!4505439 () Bool)

(declare-fun res!1873447 () Bool)

(assert (=> b!4505439 (=> (not res!1873447) (not e!2806677))))

(assert (=> b!4505439 (= res!1873447 (= (getValueByKey!1036 (toList!4267 lt!1684773) (_1!28772 (tuple2!50957 hash!344 newBucket!178))) (Some!11055 (_2!28772 (tuple2!50957 hash!344 newBucket!178)))))))

(declare-fun b!4505440 () Bool)

(assert (=> b!4505440 (= e!2806677 (contains!13239 (toList!4267 lt!1684773) (tuple2!50957 hash!344 newBucket!178)))))

(assert (= (and d!1384677 res!1873448) b!4505439))

(assert (= (and b!4505439 res!1873447) b!4505440))

(declare-fun m!5240909 () Bool)

(assert (=> d!1384677 m!5240909))

(declare-fun m!5240911 () Bool)

(assert (=> d!1384677 m!5240911))

(declare-fun m!5240913 () Bool)

(assert (=> d!1384677 m!5240913))

(declare-fun m!5240915 () Bool)

(assert (=> d!1384677 m!5240915))

(declare-fun m!5240917 () Bool)

(assert (=> b!4505439 m!5240917))

(declare-fun m!5240919 () Bool)

(assert (=> b!4505440 m!5240919))

(assert (=> d!1384401 d!1384677))

(declare-fun d!1384679 () Bool)

(declare-fun e!2806678 () Bool)

(assert (=> d!1384679 e!2806678))

(declare-fun res!1873449 () Bool)

(assert (=> d!1384679 (=> (not res!1873449) (not e!2806678))))

(declare-fun lt!1684774 () ListMap!3529)

(assert (=> d!1384679 (= res!1873449 (not (contains!13241 lt!1684774 key!3287)))))

(assert (=> d!1384679 (= lt!1684774 (ListMap!3530 (removePresrvNoDuplicatedKeys!113 (toList!4268 (extractMap!1186 (toList!4267 lt!1684132))) key!3287)))))

(assert (=> d!1384679 (= (-!356 (extractMap!1186 (toList!4267 lt!1684132)) key!3287) lt!1684774)))

(declare-fun b!4505441 () Bool)

(assert (=> b!4505441 (= e!2806678 (= ((_ map and) (content!8274 (keys!17536 (extractMap!1186 (toList!4267 lt!1684132)))) ((_ map not) (store ((as const (Array K!11965 Bool)) false) key!3287 true))) (content!8274 (keys!17536 lt!1684774))))))

(assert (= (and d!1384679 res!1873449) b!4505441))

(declare-fun m!5240921 () Bool)

(assert (=> d!1384679 m!5240921))

(declare-fun m!5240923 () Bool)

(assert (=> d!1384679 m!5240923))

(declare-fun m!5240925 () Bool)

(assert (=> b!4505441 m!5240925))

(declare-fun m!5240927 () Bool)

(assert (=> b!4505441 m!5240927))

(declare-fun m!5240929 () Bool)

(assert (=> b!4505441 m!5240929))

(assert (=> b!4505441 m!5240011))

(assert (=> b!4505441 m!5239481))

(assert (=> b!4505441 m!5240925))

(assert (=> b!4505441 m!5240929))

(declare-fun m!5240931 () Bool)

(assert (=> b!4505441 m!5240931))

(assert (=> d!1384401 d!1384679))

(assert (=> d!1384401 d!1384389))

(declare-fun d!1384681 () Bool)

(assert (=> d!1384681 (= (eq!587 (extractMap!1186 (toList!4267 (+!1482 lt!1684132 (tuple2!50957 hash!344 newBucket!178)))) (-!356 (extractMap!1186 (toList!4267 lt!1684132)) key!3287)) (= (content!8275 (toList!4268 (extractMap!1186 (toList!4267 (+!1482 lt!1684132 (tuple2!50957 hash!344 newBucket!178)))))) (content!8275 (toList!4268 (-!356 (extractMap!1186 (toList!4267 lt!1684132)) key!3287)))))))

(declare-fun bs!843259 () Bool)

(assert (= bs!843259 d!1384681))

(declare-fun m!5240933 () Bool)

(assert (=> bs!843259 m!5240933))

(declare-fun m!5240935 () Bool)

(assert (=> bs!843259 m!5240935))

(assert (=> d!1384401 d!1384681))

(declare-fun d!1384683 () Bool)

(assert (=> d!1384683 (eq!587 (extractMap!1186 (toList!4267 (+!1482 lt!1684132 (tuple2!50957 hash!344 newBucket!178)))) (-!356 (extractMap!1186 (toList!4267 lt!1684132)) key!3287))))

(assert (=> d!1384683 true))

(declare-fun _$8!611 () Unit!92671)

(assert (=> d!1384683 (= (choose!29197 lt!1684132 hash!344 newBucket!178 key!3287 hashF!1107) _$8!611)))

(declare-fun bs!843264 () Bool)

(assert (= bs!843264 d!1384683))

(assert (=> bs!843264 m!5239481))

(assert (=> bs!843264 m!5240021))

(assert (=> bs!843264 m!5240017))

(assert (=> bs!843264 m!5240019))

(assert (=> bs!843264 m!5240021))

(assert (=> bs!843264 m!5240023))

(assert (=> bs!843264 m!5240019))

(assert (=> bs!843264 m!5239481))

(assert (=> d!1384401 d!1384683))

(declare-fun d!1384709 () Bool)

(declare-fun res!1873466 () Bool)

(declare-fun e!2806699 () Bool)

(assert (=> d!1384709 (=> res!1873466 e!2806699)))

(assert (=> d!1384709 (= res!1873466 ((_ is Nil!50559) (toList!4267 lt!1684132)))))

(assert (=> d!1384709 (= (forall!10191 (toList!4267 lt!1684132) lambda!169456) e!2806699)))

(declare-fun b!4505466 () Bool)

(declare-fun e!2806700 () Bool)

(assert (=> b!4505466 (= e!2806699 e!2806700)))

(declare-fun res!1873467 () Bool)

(assert (=> b!4505466 (=> (not res!1873467) (not e!2806700))))

(assert (=> b!4505466 (= res!1873467 (dynLambda!21121 lambda!169456 (h!56384 (toList!4267 lt!1684132))))))

(declare-fun b!4505467 () Bool)

(assert (=> b!4505467 (= e!2806700 (forall!10191 (t!357645 (toList!4267 lt!1684132)) lambda!169456))))

(assert (= (and d!1384709 (not res!1873466)) b!4505466))

(assert (= (and b!4505466 res!1873467) b!4505467))

(declare-fun b_lambda!153249 () Bool)

(assert (=> (not b_lambda!153249) (not b!4505466)))

(declare-fun m!5240971 () Bool)

(assert (=> b!4505466 m!5240971))

(declare-fun m!5240973 () Bool)

(assert (=> b!4505467 m!5240973))

(assert (=> d!1384401 d!1384709))

(declare-fun bs!843265 () Bool)

(declare-fun b!4505471 () Bool)

(assert (= bs!843265 (and b!4505471 b!4505414)))

(declare-fun lambda!169590 () Int)

(assert (=> bs!843265 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169590 lambda!169577))))

(declare-fun bs!843266 () Bool)

(assert (= bs!843266 (and b!4505471 b!4505043)))

(assert (=> bs!843266 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169590 lambda!169498))))

(declare-fun bs!843267 () Bool)

(assert (= bs!843267 (and b!4505471 b!4505044)))

(assert (=> bs!843267 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684456) (= lambda!169590 lambda!169500))))

(declare-fun bs!843268 () Bool)

(assert (= bs!843268 (and b!4505471 b!4504941)))

(assert (=> bs!843268 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684415) (= lambda!169590 lambda!169496))))

(declare-fun bs!843269 () Bool)

(assert (= bs!843269 (and b!4505471 b!4505415)))

(assert (=> bs!843269 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684713) (= lambda!169590 lambda!169582))))

(assert (=> bs!843267 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169590 lambda!169499))))

(declare-fun bs!843270 () Bool)

(assert (= bs!843270 (and b!4505471 d!1384445)))

(assert (=> bs!843270 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684425) (= lambda!169590 lambda!169497))))

(declare-fun bs!843271 () Bool)

(assert (= bs!843271 (and b!4505471 d!1384663)))

(assert (=> bs!843271 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684728) (= lambda!169590 lambda!169585))))

(declare-fun bs!843272 () Bool)

(assert (= bs!843272 (and b!4505471 d!1384505)))

(assert (=> bs!843272 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684466) (= lambda!169590 lambda!169501))))

(assert (=> bs!843269 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169590 lambda!169581))))

(declare-fun bs!843273 () Bool)

(assert (= bs!843273 (and b!4505471 d!1384321)))

(assert (=> bs!843273 (not (= lambda!169590 lambda!169430))))

(assert (=> bs!843268 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169590 lambda!169495))))

(declare-fun bs!843274 () Bool)

(assert (= bs!843274 (and b!4505471 b!4504940)))

(assert (=> bs!843274 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169590 lambda!169494))))

(assert (=> b!4505471 true))

(declare-fun bs!843275 () Bool)

(declare-fun b!4505472 () Bool)

(assert (= bs!843275 (and b!4505472 b!4505414)))

(declare-fun lambda!169591 () Int)

(assert (=> bs!843275 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169591 lambda!169577))))

(declare-fun bs!843276 () Bool)

(assert (= bs!843276 (and b!4505472 b!4505043)))

(assert (=> bs!843276 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169591 lambda!169498))))

(declare-fun bs!843277 () Bool)

(assert (= bs!843277 (and b!4505472 b!4505044)))

(assert (=> bs!843277 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684456) (= lambda!169591 lambda!169500))))

(declare-fun bs!843278 () Bool)

(assert (= bs!843278 (and b!4505472 b!4504941)))

(assert (=> bs!843278 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684415) (= lambda!169591 lambda!169496))))

(declare-fun bs!843279 () Bool)

(assert (= bs!843279 (and b!4505472 b!4505415)))

(assert (=> bs!843279 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684713) (= lambda!169591 lambda!169582))))

(assert (=> bs!843277 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169591 lambda!169499))))

(declare-fun bs!843280 () Bool)

(assert (= bs!843280 (and b!4505472 d!1384445)))

(assert (=> bs!843280 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684425) (= lambda!169591 lambda!169497))))

(declare-fun bs!843281 () Bool)

(assert (= bs!843281 (and b!4505472 d!1384663)))

(assert (=> bs!843281 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684728) (= lambda!169591 lambda!169585))))

(declare-fun bs!843282 () Bool)

(assert (= bs!843282 (and b!4505472 d!1384505)))

(assert (=> bs!843282 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684466) (= lambda!169591 lambda!169501))))

(assert (=> bs!843279 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169591 lambda!169581))))

(declare-fun bs!843283 () Bool)

(assert (= bs!843283 (and b!4505472 b!4505471)))

(assert (=> bs!843283 (= lambda!169591 lambda!169590)))

(declare-fun bs!843284 () Bool)

(assert (= bs!843284 (and b!4505472 d!1384321)))

(assert (=> bs!843284 (not (= lambda!169591 lambda!169430))))

(assert (=> bs!843278 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169591 lambda!169495))))

(declare-fun bs!843285 () Bool)

(assert (= bs!843285 (and b!4505472 b!4504940)))

(assert (=> bs!843285 (= (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169591 lambda!169494))))

(assert (=> b!4505472 true))

(declare-fun lt!1684778 () ListMap!3529)

(declare-fun lambda!169592 () Int)

(assert (=> bs!843275 (= (= lt!1684778 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169592 lambda!169577))))

(assert (=> bs!843276 (= (= lt!1684778 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169592 lambda!169498))))

(assert (=> bs!843277 (= (= lt!1684778 lt!1684456) (= lambda!169592 lambda!169500))))

(assert (=> b!4505472 (= (= lt!1684778 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169592 lambda!169591))))

(assert (=> bs!843278 (= (= lt!1684778 lt!1684415) (= lambda!169592 lambda!169496))))

(assert (=> bs!843279 (= (= lt!1684778 lt!1684713) (= lambda!169592 lambda!169582))))

(assert (=> bs!843277 (= (= lt!1684778 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169592 lambda!169499))))

(assert (=> bs!843280 (= (= lt!1684778 lt!1684425) (= lambda!169592 lambda!169497))))

(assert (=> bs!843281 (= (= lt!1684778 lt!1684728) (= lambda!169592 lambda!169585))))

(assert (=> bs!843282 (= (= lt!1684778 lt!1684466) (= lambda!169592 lambda!169501))))

(assert (=> bs!843279 (= (= lt!1684778 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169592 lambda!169581))))

(assert (=> bs!843283 (= (= lt!1684778 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169592 lambda!169590))))

(assert (=> bs!843284 (not (= lambda!169592 lambda!169430))))

(assert (=> bs!843278 (= (= lt!1684778 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169592 lambda!169495))))

(assert (=> bs!843285 (= (= lt!1684778 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169592 lambda!169494))))

(assert (=> b!4505472 true))

(declare-fun bs!843286 () Bool)

(declare-fun d!1384713 () Bool)

(assert (= bs!843286 (and d!1384713 b!4505414)))

(declare-fun lt!1684788 () ListMap!3529)

(declare-fun lambda!169593 () Int)

(assert (=> bs!843286 (= (= lt!1684788 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169593 lambda!169577))))

(declare-fun bs!843287 () Bool)

(assert (= bs!843287 (and d!1384713 b!4505043)))

(assert (=> bs!843287 (= (= lt!1684788 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169593 lambda!169498))))

(declare-fun bs!843288 () Bool)

(assert (= bs!843288 (and d!1384713 b!4505044)))

(assert (=> bs!843288 (= (= lt!1684788 lt!1684456) (= lambda!169593 lambda!169500))))

(declare-fun bs!843289 () Bool)

(assert (= bs!843289 (and d!1384713 b!4505472)))

(assert (=> bs!843289 (= (= lt!1684788 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169593 lambda!169591))))

(declare-fun bs!843290 () Bool)

(assert (= bs!843290 (and d!1384713 b!4504941)))

(assert (=> bs!843290 (= (= lt!1684788 lt!1684415) (= lambda!169593 lambda!169496))))

(declare-fun bs!843291 () Bool)

(assert (= bs!843291 (and d!1384713 b!4505415)))

(assert (=> bs!843291 (= (= lt!1684788 lt!1684713) (= lambda!169593 lambda!169582))))

(assert (=> bs!843288 (= (= lt!1684788 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169593 lambda!169499))))

(assert (=> bs!843289 (= (= lt!1684788 lt!1684778) (= lambda!169593 lambda!169592))))

(declare-fun bs!843292 () Bool)

(assert (= bs!843292 (and d!1384713 d!1384445)))

(assert (=> bs!843292 (= (= lt!1684788 lt!1684425) (= lambda!169593 lambda!169497))))

(declare-fun bs!843293 () Bool)

(assert (= bs!843293 (and d!1384713 d!1384663)))

(assert (=> bs!843293 (= (= lt!1684788 lt!1684728) (= lambda!169593 lambda!169585))))

(declare-fun bs!843294 () Bool)

(assert (= bs!843294 (and d!1384713 d!1384505)))

(assert (=> bs!843294 (= (= lt!1684788 lt!1684466) (= lambda!169593 lambda!169501))))

(assert (=> bs!843291 (= (= lt!1684788 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169593 lambda!169581))))

(declare-fun bs!843295 () Bool)

(assert (= bs!843295 (and d!1384713 b!4505471)))

(assert (=> bs!843295 (= (= lt!1684788 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169593 lambda!169590))))

(declare-fun bs!843296 () Bool)

(assert (= bs!843296 (and d!1384713 d!1384321)))

(assert (=> bs!843296 (not (= lambda!169593 lambda!169430))))

(assert (=> bs!843290 (= (= lt!1684788 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169593 lambda!169495))))

(declare-fun bs!843297 () Bool)

(assert (= bs!843297 (and d!1384713 b!4504940)))

(assert (=> bs!843297 (= (= lt!1684788 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169593 lambda!169494))))

(assert (=> d!1384713 true))

(declare-fun b!4505468 () Bool)

(declare-fun res!1873469 () Bool)

(declare-fun e!2806702 () Bool)

(assert (=> b!4505468 (=> (not res!1873469) (not e!2806702))))

(assert (=> b!4505468 (= res!1873469 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) lambda!169593))))

(declare-fun call!313680 () Bool)

(declare-fun bm!313673 () Bool)

(declare-fun c!768318 () Bool)

(assert (=> bm!313673 (= call!313680 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (ite c!768318 lambda!169590 lambda!169592)))))

(declare-fun b!4505469 () Bool)

(assert (=> b!4505469 (= e!2806702 (invariantList!989 (toList!4268 lt!1684788)))))

(assert (=> d!1384713 e!2806702))

(declare-fun res!1873470 () Bool)

(assert (=> d!1384713 (=> (not res!1873470) (not e!2806702))))

(assert (=> d!1384713 (= res!1873470 (forall!10192 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))) lambda!169593))))

(declare-fun e!2806703 () ListMap!3529)

(assert (=> d!1384713 (= lt!1684788 e!2806703)))

(assert (=> d!1384713 (= c!768318 ((_ is Nil!50558) (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477))))))))

(assert (=> d!1384713 (noDuplicateKeys!1130 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))))))

(assert (=> d!1384713 (= (addToMapMapFromBucket!657 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) lt!1684788)))

(declare-fun bm!313674 () Bool)

(declare-fun call!313678 () Bool)

(declare-fun lt!1684787 () ListMap!3529)

(assert (=> bm!313674 (= call!313678 (forall!10192 (ite c!768318 (toList!4268 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (toList!4268 lt!1684787)) (ite c!768318 lambda!169590 lambda!169592)))))

(declare-fun bm!313675 () Bool)

(declare-fun call!313679 () Unit!92671)

(assert (=> bm!313675 (= call!313679 (lemmaContainsAllItsOwnKeys!311 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))))))

(declare-fun b!4505470 () Bool)

(declare-fun e!2806701 () Bool)

(assert (=> b!4505470 (= e!2806701 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) lambda!169592))))

(assert (=> b!4505471 (= e!2806703 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))))))

(declare-fun lt!1684791 () Unit!92671)

(assert (=> b!4505471 (= lt!1684791 call!313679)))

(assert (=> b!4505471 call!313680))

(declare-fun lt!1684790 () Unit!92671)

(assert (=> b!4505471 (= lt!1684790 lt!1684791)))

(assert (=> b!4505471 call!313678))

(declare-fun lt!1684793 () Unit!92671)

(declare-fun Unit!92795 () Unit!92671)

(assert (=> b!4505471 (= lt!1684793 Unit!92795)))

(assert (=> b!4505472 (= e!2806703 lt!1684778)))

(assert (=> b!4505472 (= lt!1684787 (+!1483 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (h!56383 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))))))))

(assert (=> b!4505472 (= lt!1684778 (addToMapMapFromBucket!657 (t!357644 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477))))) (+!1483 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) (h!56383 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477))))))))))

(declare-fun lt!1684797 () Unit!92671)

(assert (=> b!4505472 (= lt!1684797 call!313679)))

(assert (=> b!4505472 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) lambda!169591)))

(declare-fun lt!1684780 () Unit!92671)

(assert (=> b!4505472 (= lt!1684780 lt!1684797)))

(assert (=> b!4505472 (forall!10192 (toList!4268 lt!1684787) lambda!169592)))

(declare-fun lt!1684785 () Unit!92671)

(declare-fun Unit!92796 () Unit!92671)

(assert (=> b!4505472 (= lt!1684785 Unit!92796)))

(assert (=> b!4505472 (forall!10192 (t!357644 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477))))) lambda!169592)))

(declare-fun lt!1684786 () Unit!92671)

(declare-fun Unit!92797 () Unit!92671)

(assert (=> b!4505472 (= lt!1684786 Unit!92797)))

(declare-fun lt!1684781 () Unit!92671)

(declare-fun Unit!92798 () Unit!92671)

(assert (=> b!4505472 (= lt!1684781 Unit!92798)))

(declare-fun lt!1684783 () Unit!92671)

(assert (=> b!4505472 (= lt!1684783 (forallContained!2446 (toList!4268 lt!1684787) lambda!169592 (h!56383 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))))))))

(assert (=> b!4505472 (contains!13241 lt!1684787 (_1!28771 (h!56383 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))))))))

(declare-fun lt!1684784 () Unit!92671)

(declare-fun Unit!92799 () Unit!92671)

(assert (=> b!4505472 (= lt!1684784 Unit!92799)))

(assert (=> b!4505472 (contains!13241 lt!1684778 (_1!28771 (h!56383 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))))))))

(declare-fun lt!1684795 () Unit!92671)

(declare-fun Unit!92800 () Unit!92671)

(assert (=> b!4505472 (= lt!1684795 Unit!92800)))

(assert (=> b!4505472 (forall!10192 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))) lambda!169592)))

(declare-fun lt!1684789 () Unit!92671)

(declare-fun Unit!92801 () Unit!92671)

(assert (=> b!4505472 (= lt!1684789 Unit!92801)))

(assert (=> b!4505472 call!313678))

(declare-fun lt!1684794 () Unit!92671)

(declare-fun Unit!92802 () Unit!92671)

(assert (=> b!4505472 (= lt!1684794 Unit!92802)))

(declare-fun lt!1684798 () Unit!92671)

(declare-fun Unit!92803 () Unit!92671)

(assert (=> b!4505472 (= lt!1684798 Unit!92803)))

(declare-fun lt!1684782 () Unit!92671)

(assert (=> b!4505472 (= lt!1684782 (addForallContainsKeyThenBeforeAdding!311 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684778 (_1!28771 (h!56383 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))))) (_2!28771 (h!56383 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477))))))))))

(assert (=> b!4505472 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) lambda!169592)))

(declare-fun lt!1684792 () Unit!92671)

(assert (=> b!4505472 (= lt!1684792 lt!1684782)))

(assert (=> b!4505472 call!313680))

(declare-fun lt!1684796 () Unit!92671)

(declare-fun Unit!92804 () Unit!92671)

(assert (=> b!4505472 (= lt!1684796 Unit!92804)))

(declare-fun res!1873468 () Bool)

(assert (=> b!4505472 (= res!1873468 (forall!10192 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477)))) lambda!169592))))

(assert (=> b!4505472 (=> (not res!1873468) (not e!2806701))))

(assert (=> b!4505472 e!2806701))

(declare-fun lt!1684779 () Unit!92671)

(declare-fun Unit!92805 () Unit!92671)

(assert (=> b!4505472 (= lt!1684779 Unit!92805)))

(assert (= (and d!1384713 c!768318) b!4505471))

(assert (= (and d!1384713 (not c!768318)) b!4505472))

(assert (= (and b!4505472 res!1873468) b!4505470))

(assert (= (or b!4505471 b!4505472) bm!313673))

(assert (= (or b!4505471 b!4505472) bm!313674))

(assert (= (or b!4505471 b!4505472) bm!313675))

(assert (= (and d!1384713 res!1873470) b!4505468))

(assert (= (and b!4505468 res!1873469) b!4505469))

(declare-fun m!5240995 () Bool)

(assert (=> bm!313674 m!5240995))

(declare-fun m!5240997 () Bool)

(assert (=> b!4505468 m!5240997))

(declare-fun m!5240999 () Bool)

(assert (=> bm!313673 m!5240999))

(declare-fun m!5241001 () Bool)

(assert (=> b!4505469 m!5241001))

(declare-fun m!5241003 () Bool)

(assert (=> b!4505470 m!5241003))

(declare-fun m!5241005 () Bool)

(assert (=> d!1384713 m!5241005))

(declare-fun m!5241007 () Bool)

(assert (=> d!1384713 m!5241007))

(declare-fun m!5241009 () Bool)

(assert (=> b!4505472 m!5241009))

(assert (=> b!4505472 m!5239933))

(declare-fun m!5241011 () Bool)

(assert (=> b!4505472 m!5241011))

(declare-fun m!5241013 () Bool)

(assert (=> b!4505472 m!5241013))

(declare-fun m!5241015 () Bool)

(assert (=> b!4505472 m!5241015))

(declare-fun m!5241017 () Bool)

(assert (=> b!4505472 m!5241017))

(declare-fun m!5241019 () Bool)

(assert (=> b!4505472 m!5241019))

(assert (=> b!4505472 m!5239933))

(declare-fun m!5241021 () Bool)

(assert (=> b!4505472 m!5241021))

(declare-fun m!5241023 () Bool)

(assert (=> b!4505472 m!5241023))

(declare-fun m!5241025 () Bool)

(assert (=> b!4505472 m!5241025))

(assert (=> b!4505472 m!5241011))

(declare-fun m!5241027 () Bool)

(assert (=> b!4505472 m!5241027))

(assert (=> b!4505472 m!5241015))

(assert (=> b!4505472 m!5241003))

(assert (=> bm!313675 m!5239933))

(declare-fun m!5241029 () Bool)

(assert (=> bm!313675 m!5241029))

(assert (=> b!4504846 d!1384713))

(declare-fun bs!843298 () Bool)

(declare-fun d!1384719 () Bool)

(assert (= bs!843298 (and d!1384719 d!1384413)))

(declare-fun lambda!169594 () Int)

(assert (=> bs!843298 (= lambda!169594 lambda!169458)))

(declare-fun bs!843299 () Bool)

(assert (= bs!843299 (and d!1384719 d!1384401)))

(assert (=> bs!843299 (= lambda!169594 lambda!169456)))

(declare-fun bs!843300 () Bool)

(assert (= bs!843300 (and d!1384719 d!1384509)))

(assert (=> bs!843300 (= lambda!169594 lambda!169502)))

(declare-fun bs!843301 () Bool)

(assert (= bs!843301 (and d!1384719 d!1384673)))

(assert (=> bs!843301 (= lambda!169594 lambda!169589)))

(declare-fun bs!843302 () Bool)

(assert (= bs!843302 (and d!1384719 d!1384425)))

(assert (=> bs!843302 (= lambda!169594 lambda!169461)))

(declare-fun bs!843303 () Bool)

(assert (= bs!843303 (and d!1384719 d!1384395)))

(assert (=> bs!843303 (= lambda!169594 lambda!169453)))

(declare-fun bs!843304 () Bool)

(assert (= bs!843304 (and d!1384719 d!1384667)))

(assert (=> bs!843304 (= lambda!169594 lambda!169588)))

(declare-fun bs!843305 () Bool)

(assert (= bs!843305 (and d!1384719 d!1384429)))

(assert (=> bs!843305 (= lambda!169594 lambda!169462)))

(declare-fun bs!843306 () Bool)

(assert (= bs!843306 (and d!1384719 d!1384387)))

(assert (=> bs!843306 (= lambda!169594 lambda!169451)))

(declare-fun bs!843307 () Bool)

(assert (= bs!843307 (and d!1384719 start!444824)))

(assert (=> bs!843307 (= lambda!169594 lambda!169407)))

(declare-fun bs!843308 () Bool)

(assert (= bs!843308 (and d!1384719 d!1384271)))

(assert (=> bs!843308 (= lambda!169594 lambda!169416)))

(declare-fun bs!843309 () Bool)

(assert (= bs!843309 (and d!1384719 d!1384389)))

(assert (=> bs!843309 (= lambda!169594 lambda!169452)))

(declare-fun bs!843310 () Bool)

(assert (= bs!843310 (and d!1384719 d!1384371)))

(assert (=> bs!843310 (= lambda!169594 lambda!169448)))

(declare-fun bs!843311 () Bool)

(assert (= bs!843311 (and d!1384719 d!1384433)))

(assert (=> bs!843311 (not (= lambda!169594 lambda!169465))))

(declare-fun bs!843312 () Bool)

(assert (= bs!843312 (and d!1384719 d!1384405)))

(assert (=> bs!843312 (= lambda!169594 lambda!169457)))

(declare-fun bs!843313 () Bool)

(assert (= bs!843313 (and d!1384719 d!1384333)))

(assert (=> bs!843313 (= lambda!169594 lambda!169436)))

(declare-fun lt!1684807 () ListMap!3529)

(assert (=> d!1384719 (invariantList!989 (toList!4268 lt!1684807))))

(declare-fun e!2806716 () ListMap!3529)

(assert (=> d!1384719 (= lt!1684807 e!2806716)))

(declare-fun c!768322 () Bool)

(assert (=> d!1384719 (= c!768322 ((_ is Cons!50559) (t!357645 (t!357645 (toList!4267 lm!1477)))))))

(assert (=> d!1384719 (forall!10191 (t!357645 (t!357645 (toList!4267 lm!1477))) lambda!169594)))

(assert (=> d!1384719 (= (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477)))) lt!1684807)))

(declare-fun b!4505488 () Bool)

(assert (=> b!4505488 (= e!2806716 (addToMapMapFromBucket!657 (_2!28772 (h!56384 (t!357645 (t!357645 (toList!4267 lm!1477))))) (extractMap!1186 (t!357645 (t!357645 (t!357645 (toList!4267 lm!1477)))))))))

(declare-fun b!4505489 () Bool)

(assert (=> b!4505489 (= e!2806716 (ListMap!3530 Nil!50558))))

(assert (= (and d!1384719 c!768322) b!4505488))

(assert (= (and d!1384719 (not c!768322)) b!4505489))

(declare-fun m!5241031 () Bool)

(assert (=> d!1384719 m!5241031))

(declare-fun m!5241033 () Bool)

(assert (=> d!1384719 m!5241033))

(declare-fun m!5241035 () Bool)

(assert (=> b!4505488 m!5241035))

(assert (=> b!4505488 m!5241035))

(declare-fun m!5241037 () Bool)

(assert (=> b!4505488 m!5241037))

(assert (=> b!4504846 d!1384719))

(assert (=> b!4504852 d!1384593))

(assert (=> b!4504852 d!1384559))

(declare-fun d!1384721 () Bool)

(declare-fun res!1873484 () Bool)

(declare-fun e!2806721 () Bool)

(assert (=> d!1384721 (=> res!1873484 e!2806721)))

(assert (=> d!1384721 (= res!1873484 (or ((_ is Nil!50559) (toList!4267 lm!1477)) ((_ is Nil!50559) (t!357645 (toList!4267 lm!1477)))))))

(assert (=> d!1384721 (= (isStrictlySorted!403 (toList!4267 lm!1477)) e!2806721)))

(declare-fun b!4505494 () Bool)

(declare-fun e!2806722 () Bool)

(assert (=> b!4505494 (= e!2806721 e!2806722)))

(declare-fun res!1873485 () Bool)

(assert (=> b!4505494 (=> (not res!1873485) (not e!2806722))))

(assert (=> b!4505494 (= res!1873485 (bvslt (_1!28772 (h!56384 (toList!4267 lm!1477))) (_1!28772 (h!56384 (t!357645 (toList!4267 lm!1477))))))))

(declare-fun b!4505495 () Bool)

(assert (=> b!4505495 (= e!2806722 (isStrictlySorted!403 (t!357645 (toList!4267 lm!1477))))))

(assert (= (and d!1384721 (not res!1873484)) b!4505494))

(assert (= (and b!4505494 res!1873485) b!4505495))

(declare-fun m!5241039 () Bool)

(assert (=> b!4505495 m!5241039))

(assert (=> d!1384421 d!1384721))

(declare-fun d!1384723 () Bool)

(declare-fun res!1873486 () Bool)

(declare-fun e!2806723 () Bool)

(assert (=> d!1384723 (=> res!1873486 e!2806723)))

(assert (=> d!1384723 (= res!1873486 (not ((_ is Cons!50558) (_2!28772 lt!1684127))))))

(assert (=> d!1384723 (= (noDuplicateKeys!1130 (_2!28772 lt!1684127)) e!2806723)))

(declare-fun b!4505496 () Bool)

(declare-fun e!2806724 () Bool)

(assert (=> b!4505496 (= e!2806723 e!2806724)))

(declare-fun res!1873487 () Bool)

(assert (=> b!4505496 (=> (not res!1873487) (not e!2806724))))

(assert (=> b!4505496 (= res!1873487 (not (containsKey!1694 (t!357644 (_2!28772 lt!1684127)) (_1!28771 (h!56383 (_2!28772 lt!1684127))))))))

(declare-fun b!4505497 () Bool)

(assert (=> b!4505497 (= e!2806724 (noDuplicateKeys!1130 (t!357644 (_2!28772 lt!1684127))))))

(assert (= (and d!1384723 (not res!1873486)) b!4505496))

(assert (= (and b!4505496 res!1873487) b!4505497))

(declare-fun m!5241041 () Bool)

(assert (=> b!4505496 m!5241041))

(declare-fun m!5241043 () Bool)

(assert (=> b!4505497 m!5241043))

(assert (=> bs!843012 d!1384723))

(declare-fun d!1384725 () Bool)

(assert (=> d!1384725 (= (tail!7677 (toList!4267 lm!1477)) (t!357645 (toList!4267 lm!1477)))))

(assert (=> d!1384265 d!1384725))

(declare-fun d!1384727 () Bool)

(assert (=> d!1384727 (= (invariantList!989 (toList!4268 lt!1684358)) (noDuplicatedKeys!248 (toList!4268 lt!1684358)))))

(declare-fun bs!843314 () Bool)

(assert (= bs!843314 d!1384727))

(declare-fun m!5241045 () Bool)

(assert (=> bs!843314 m!5241045))

(assert (=> d!1384405 d!1384727))

(declare-fun d!1384729 () Bool)

(declare-fun res!1873488 () Bool)

(declare-fun e!2806725 () Bool)

(assert (=> d!1384729 (=> res!1873488 e!2806725)))

(assert (=> d!1384729 (= res!1873488 ((_ is Nil!50559) (toList!4267 (+!1482 lt!1684132 lt!1684119))))))

(assert (=> d!1384729 (= (forall!10191 (toList!4267 (+!1482 lt!1684132 lt!1684119)) lambda!169457) e!2806725)))

(declare-fun b!4505498 () Bool)

(declare-fun e!2806726 () Bool)

(assert (=> b!4505498 (= e!2806725 e!2806726)))

(declare-fun res!1873489 () Bool)

(assert (=> b!4505498 (=> (not res!1873489) (not e!2806726))))

(assert (=> b!4505498 (= res!1873489 (dynLambda!21121 lambda!169457 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))))))

(declare-fun b!4505499 () Bool)

(assert (=> b!4505499 (= e!2806726 (forall!10191 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))) lambda!169457))))

(assert (= (and d!1384729 (not res!1873488)) b!4505498))

(assert (= (and b!4505498 res!1873489) b!4505499))

(declare-fun b_lambda!153251 () Bool)

(assert (=> (not b_lambda!153251) (not b!4505498)))

(declare-fun m!5241047 () Bool)

(assert (=> b!4505498 m!5241047))

(declare-fun m!5241049 () Bool)

(assert (=> b!4505499 m!5241049))

(assert (=> d!1384405 d!1384729))

(declare-fun bs!843315 () Bool)

(declare-fun b!4505503 () Bool)

(assert (= bs!843315 (and b!4505503 b!4505414)))

(declare-fun lambda!169595 () Int)

(assert (=> bs!843315 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169595 lambda!169577))))

(declare-fun bs!843316 () Bool)

(assert (= bs!843316 (and b!4505503 b!4505044)))

(assert (=> bs!843316 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684456) (= lambda!169595 lambda!169500))))

(declare-fun bs!843317 () Bool)

(assert (= bs!843317 (and b!4505503 b!4505472)))

(assert (=> bs!843317 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169595 lambda!169591))))

(declare-fun bs!843318 () Bool)

(assert (= bs!843318 (and b!4505503 b!4504941)))

(assert (=> bs!843318 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684415) (= lambda!169595 lambda!169496))))

(declare-fun bs!843319 () Bool)

(assert (= bs!843319 (and b!4505503 b!4505415)))

(assert (=> bs!843319 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684713) (= lambda!169595 lambda!169582))))

(assert (=> bs!843316 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169595 lambda!169499))))

(assert (=> bs!843317 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684778) (= lambda!169595 lambda!169592))))

(declare-fun bs!843320 () Bool)

(assert (= bs!843320 (and b!4505503 d!1384445)))

(assert (=> bs!843320 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684425) (= lambda!169595 lambda!169497))))

(declare-fun bs!843321 () Bool)

(assert (= bs!843321 (and b!4505503 d!1384663)))

(assert (=> bs!843321 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684728) (= lambda!169595 lambda!169585))))

(declare-fun bs!843322 () Bool)

(assert (= bs!843322 (and b!4505503 d!1384505)))

(assert (=> bs!843322 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684466) (= lambda!169595 lambda!169501))))

(assert (=> bs!843319 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169595 lambda!169581))))

(declare-fun bs!843323 () Bool)

(assert (= bs!843323 (and b!4505503 b!4505471)))

(assert (=> bs!843323 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169595 lambda!169590))))

(declare-fun bs!843324 () Bool)

(assert (= bs!843324 (and b!4505503 d!1384321)))

(assert (=> bs!843324 (not (= lambda!169595 lambda!169430))))

(declare-fun bs!843325 () Bool)

(assert (= bs!843325 (and b!4505503 b!4505043)))

(assert (=> bs!843325 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169595 lambda!169498))))

(declare-fun bs!843326 () Bool)

(assert (= bs!843326 (and b!4505503 d!1384713)))

(assert (=> bs!843326 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684788) (= lambda!169595 lambda!169593))))

(assert (=> bs!843318 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169595 lambda!169495))))

(declare-fun bs!843327 () Bool)

(assert (= bs!843327 (and b!4505503 b!4504940)))

(assert (=> bs!843327 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169595 lambda!169494))))

(assert (=> b!4505503 true))

(declare-fun bs!843328 () Bool)

(declare-fun b!4505504 () Bool)

(assert (= bs!843328 (and b!4505504 b!4505414)))

(declare-fun lambda!169596 () Int)

(assert (=> bs!843328 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169596 lambda!169577))))

(declare-fun bs!843329 () Bool)

(assert (= bs!843329 (and b!4505504 b!4505044)))

(assert (=> bs!843329 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684456) (= lambda!169596 lambda!169500))))

(declare-fun bs!843330 () Bool)

(assert (= bs!843330 (and b!4505504 b!4505472)))

(assert (=> bs!843330 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169596 lambda!169591))))

(declare-fun bs!843331 () Bool)

(assert (= bs!843331 (and b!4505504 b!4504941)))

(assert (=> bs!843331 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684415) (= lambda!169596 lambda!169496))))

(declare-fun bs!843332 () Bool)

(assert (= bs!843332 (and b!4505504 b!4505415)))

(assert (=> bs!843332 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684713) (= lambda!169596 lambda!169582))))

(assert (=> bs!843330 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684778) (= lambda!169596 lambda!169592))))

(declare-fun bs!843333 () Bool)

(assert (= bs!843333 (and b!4505504 d!1384445)))

(assert (=> bs!843333 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684425) (= lambda!169596 lambda!169497))))

(declare-fun bs!843334 () Bool)

(assert (= bs!843334 (and b!4505504 d!1384663)))

(assert (=> bs!843334 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684728) (= lambda!169596 lambda!169585))))

(declare-fun bs!843335 () Bool)

(assert (= bs!843335 (and b!4505504 d!1384505)))

(assert (=> bs!843335 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684466) (= lambda!169596 lambda!169501))))

(assert (=> bs!843332 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169596 lambda!169581))))

(declare-fun bs!843336 () Bool)

(assert (= bs!843336 (and b!4505504 b!4505471)))

(assert (=> bs!843336 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169596 lambda!169590))))

(declare-fun bs!843337 () Bool)

(assert (= bs!843337 (and b!4505504 d!1384321)))

(assert (=> bs!843337 (not (= lambda!169596 lambda!169430))))

(declare-fun bs!843338 () Bool)

(assert (= bs!843338 (and b!4505504 b!4505043)))

(assert (=> bs!843338 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169596 lambda!169498))))

(declare-fun bs!843339 () Bool)

(assert (= bs!843339 (and b!4505504 d!1384713)))

(assert (=> bs!843339 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684788) (= lambda!169596 lambda!169593))))

(assert (=> bs!843331 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169596 lambda!169495))))

(declare-fun bs!843340 () Bool)

(assert (= bs!843340 (and b!4505504 b!4504940)))

(assert (=> bs!843340 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169596 lambda!169494))))

(declare-fun bs!843341 () Bool)

(assert (= bs!843341 (and b!4505504 b!4505503)))

(assert (=> bs!843341 (= lambda!169596 lambda!169595)))

(assert (=> bs!843329 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169596 lambda!169499))))

(assert (=> b!4505504 true))

(declare-fun lambda!169597 () Int)

(declare-fun lt!1684808 () ListMap!3529)

(assert (=> bs!843328 (= (= lt!1684808 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169597 lambda!169577))))

(assert (=> bs!843329 (= (= lt!1684808 lt!1684456) (= lambda!169597 lambda!169500))))

(assert (=> bs!843330 (= (= lt!1684808 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169597 lambda!169591))))

(assert (=> bs!843331 (= (= lt!1684808 lt!1684415) (= lambda!169597 lambda!169496))))

(assert (=> bs!843332 (= (= lt!1684808 lt!1684713) (= lambda!169597 lambda!169582))))

(assert (=> bs!843330 (= (= lt!1684808 lt!1684778) (= lambda!169597 lambda!169592))))

(assert (=> bs!843333 (= (= lt!1684808 lt!1684425) (= lambda!169597 lambda!169497))))

(assert (=> bs!843334 (= (= lt!1684808 lt!1684728) (= lambda!169597 lambda!169585))))

(assert (=> bs!843335 (= (= lt!1684808 lt!1684466) (= lambda!169597 lambda!169501))))

(assert (=> bs!843336 (= (= lt!1684808 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169597 lambda!169590))))

(assert (=> bs!843337 (not (= lambda!169597 lambda!169430))))

(assert (=> bs!843338 (= (= lt!1684808 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169597 lambda!169498))))

(assert (=> bs!843339 (= (= lt!1684808 lt!1684788) (= lambda!169597 lambda!169593))))

(assert (=> bs!843331 (= (= lt!1684808 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169597 lambda!169495))))

(assert (=> bs!843340 (= (= lt!1684808 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169597 lambda!169494))))

(assert (=> bs!843341 (= (= lt!1684808 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (= lambda!169597 lambda!169595))))

(assert (=> bs!843329 (= (= lt!1684808 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169597 lambda!169499))))

(assert (=> b!4505504 (= (= lt!1684808 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (= lambda!169597 lambda!169596))))

(assert (=> bs!843332 (= (= lt!1684808 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169597 lambda!169581))))

(assert (=> b!4505504 true))

(declare-fun bs!843342 () Bool)

(declare-fun d!1384731 () Bool)

(assert (= bs!843342 (and d!1384731 b!4505414)))

(declare-fun lambda!169598 () Int)

(declare-fun lt!1684818 () ListMap!3529)

(assert (=> bs!843342 (= (= lt!1684818 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169598 lambda!169577))))

(declare-fun bs!843343 () Bool)

(assert (= bs!843343 (and d!1384731 b!4505044)))

(assert (=> bs!843343 (= (= lt!1684818 lt!1684456) (= lambda!169598 lambda!169500))))

(declare-fun bs!843344 () Bool)

(assert (= bs!843344 (and d!1384731 b!4505472)))

(assert (=> bs!843344 (= (= lt!1684818 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169598 lambda!169591))))

(declare-fun bs!843345 () Bool)

(assert (= bs!843345 (and d!1384731 b!4504941)))

(assert (=> bs!843345 (= (= lt!1684818 lt!1684415) (= lambda!169598 lambda!169496))))

(declare-fun bs!843346 () Bool)

(assert (= bs!843346 (and d!1384731 b!4505415)))

(assert (=> bs!843346 (= (= lt!1684818 lt!1684713) (= lambda!169598 lambda!169582))))

(assert (=> bs!843344 (= (= lt!1684818 lt!1684778) (= lambda!169598 lambda!169592))))

(declare-fun bs!843347 () Bool)

(assert (= bs!843347 (and d!1384731 d!1384445)))

(assert (=> bs!843347 (= (= lt!1684818 lt!1684425) (= lambda!169598 lambda!169497))))

(declare-fun bs!843348 () Bool)

(assert (= bs!843348 (and d!1384731 d!1384663)))

(assert (=> bs!843348 (= (= lt!1684818 lt!1684728) (= lambda!169598 lambda!169585))))

(declare-fun bs!843349 () Bool)

(assert (= bs!843349 (and d!1384731 d!1384505)))

(assert (=> bs!843349 (= (= lt!1684818 lt!1684466) (= lambda!169598 lambda!169501))))

(declare-fun bs!843350 () Bool)

(assert (= bs!843350 (and d!1384731 b!4505471)))

(assert (=> bs!843350 (= (= lt!1684818 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169598 lambda!169590))))

(declare-fun bs!843351 () Bool)

(assert (= bs!843351 (and d!1384731 d!1384321)))

(assert (=> bs!843351 (not (= lambda!169598 lambda!169430))))

(declare-fun bs!843352 () Bool)

(assert (= bs!843352 (and d!1384731 b!4505504)))

(assert (=> bs!843352 (= (= lt!1684818 lt!1684808) (= lambda!169598 lambda!169597))))

(declare-fun bs!843353 () Bool)

(assert (= bs!843353 (and d!1384731 b!4505043)))

(assert (=> bs!843353 (= (= lt!1684818 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169598 lambda!169498))))

(declare-fun bs!843354 () Bool)

(assert (= bs!843354 (and d!1384731 d!1384713)))

(assert (=> bs!843354 (= (= lt!1684818 lt!1684788) (= lambda!169598 lambda!169593))))

(assert (=> bs!843345 (= (= lt!1684818 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169598 lambda!169495))))

(declare-fun bs!843355 () Bool)

(assert (= bs!843355 (and d!1384731 b!4504940)))

(assert (=> bs!843355 (= (= lt!1684818 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169598 lambda!169494))))

(declare-fun bs!843356 () Bool)

(assert (= bs!843356 (and d!1384731 b!4505503)))

(assert (=> bs!843356 (= (= lt!1684818 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (= lambda!169598 lambda!169595))))

(assert (=> bs!843343 (= (= lt!1684818 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169598 lambda!169499))))

(assert (=> bs!843352 (= (= lt!1684818 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (= lambda!169598 lambda!169596))))

(assert (=> bs!843346 (= (= lt!1684818 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169598 lambda!169581))))

(assert (=> d!1384731 true))

(declare-fun b!4505500 () Bool)

(declare-fun res!1873491 () Bool)

(declare-fun e!2806728 () Bool)

(assert (=> b!4505500 (=> (not res!1873491) (not e!2806728))))

(assert (=> b!4505500 (= res!1873491 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) lambda!169598))))

(declare-fun c!768323 () Bool)

(declare-fun bm!313677 () Bool)

(declare-fun call!313684 () Bool)

(assert (=> bm!313677 (= call!313684 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (ite c!768323 lambda!169595 lambda!169597)))))

(declare-fun b!4505501 () Bool)

(assert (=> b!4505501 (= e!2806728 (invariantList!989 (toList!4268 lt!1684818)))))

(assert (=> d!1384731 e!2806728))

(declare-fun res!1873492 () Bool)

(assert (=> d!1384731 (=> (not res!1873492) (not e!2806728))))

(assert (=> d!1384731 (= res!1873492 (forall!10192 (_2!28772 (h!56384 (toList!4267 lt!1684132))) lambda!169598))))

(declare-fun e!2806729 () ListMap!3529)

(assert (=> d!1384731 (= lt!1684818 e!2806729)))

(assert (=> d!1384731 (= c!768323 ((_ is Nil!50558) (_2!28772 (h!56384 (toList!4267 lt!1684132)))))))

(assert (=> d!1384731 (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lt!1684132))))))

(assert (=> d!1384731 (= (addToMapMapFromBucket!657 (_2!28772 (h!56384 (toList!4267 lt!1684132))) (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) lt!1684818)))

(declare-fun lt!1684817 () ListMap!3529)

(declare-fun bm!313678 () Bool)

(declare-fun call!313682 () Bool)

(assert (=> bm!313678 (= call!313682 (forall!10192 (ite c!768323 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (toList!4268 lt!1684817)) (ite c!768323 lambda!169595 lambda!169597)))))

(declare-fun bm!313679 () Bool)

(declare-fun call!313683 () Unit!92671)

(assert (=> bm!313679 (= call!313683 (lemmaContainsAllItsOwnKeys!311 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))))))

(declare-fun b!4505502 () Bool)

(declare-fun e!2806727 () Bool)

(assert (=> b!4505502 (= e!2806727 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) lambda!169597))))

(assert (=> b!4505503 (= e!2806729 (extractMap!1186 (t!357645 (toList!4267 lt!1684132))))))

(declare-fun lt!1684821 () Unit!92671)

(assert (=> b!4505503 (= lt!1684821 call!313683)))

(assert (=> b!4505503 call!313684))

(declare-fun lt!1684820 () Unit!92671)

(assert (=> b!4505503 (= lt!1684820 lt!1684821)))

(assert (=> b!4505503 call!313682))

(declare-fun lt!1684823 () Unit!92671)

(declare-fun Unit!92817 () Unit!92671)

(assert (=> b!4505503 (= lt!1684823 Unit!92817)))

(assert (=> b!4505504 (= e!2806729 lt!1684808)))

(assert (=> b!4505504 (= lt!1684817 (+!1483 (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684132))))))))

(assert (=> b!4505504 (= lt!1684808 (addToMapMapFromBucket!657 (t!357644 (_2!28772 (h!56384 (toList!4267 lt!1684132)))) (+!1483 (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684132)))))))))

(declare-fun lt!1684827 () Unit!92671)

(assert (=> b!4505504 (= lt!1684827 call!313683)))

(assert (=> b!4505504 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) lambda!169596)))

(declare-fun lt!1684810 () Unit!92671)

(assert (=> b!4505504 (= lt!1684810 lt!1684827)))

(assert (=> b!4505504 (forall!10192 (toList!4268 lt!1684817) lambda!169597)))

(declare-fun lt!1684815 () Unit!92671)

(declare-fun Unit!92818 () Unit!92671)

(assert (=> b!4505504 (= lt!1684815 Unit!92818)))

(assert (=> b!4505504 (forall!10192 (t!357644 (_2!28772 (h!56384 (toList!4267 lt!1684132)))) lambda!169597)))

(declare-fun lt!1684816 () Unit!92671)

(declare-fun Unit!92819 () Unit!92671)

(assert (=> b!4505504 (= lt!1684816 Unit!92819)))

(declare-fun lt!1684811 () Unit!92671)

(declare-fun Unit!92820 () Unit!92671)

(assert (=> b!4505504 (= lt!1684811 Unit!92820)))

(declare-fun lt!1684813 () Unit!92671)

(assert (=> b!4505504 (= lt!1684813 (forallContained!2446 (toList!4268 lt!1684817) lambda!169597 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684132))))))))

(assert (=> b!4505504 (contains!13241 lt!1684817 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684132))))))))

(declare-fun lt!1684814 () Unit!92671)

(declare-fun Unit!92821 () Unit!92671)

(assert (=> b!4505504 (= lt!1684814 Unit!92821)))

(assert (=> b!4505504 (contains!13241 lt!1684808 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684132))))))))

(declare-fun lt!1684825 () Unit!92671)

(declare-fun Unit!92822 () Unit!92671)

(assert (=> b!4505504 (= lt!1684825 Unit!92822)))

(assert (=> b!4505504 (forall!10192 (_2!28772 (h!56384 (toList!4267 lt!1684132))) lambda!169597)))

(declare-fun lt!1684819 () Unit!92671)

(declare-fun Unit!92823 () Unit!92671)

(assert (=> b!4505504 (= lt!1684819 Unit!92823)))

(assert (=> b!4505504 call!313682))

(declare-fun lt!1684824 () Unit!92671)

(declare-fun Unit!92824 () Unit!92671)

(assert (=> b!4505504 (= lt!1684824 Unit!92824)))

(declare-fun lt!1684828 () Unit!92671)

(declare-fun Unit!92825 () Unit!92671)

(assert (=> b!4505504 (= lt!1684828 Unit!92825)))

(declare-fun lt!1684812 () Unit!92671)

(assert (=> b!4505504 (= lt!1684812 (addForallContainsKeyThenBeforeAdding!311 (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684808 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684132))))) (_2!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684132)))))))))

(assert (=> b!4505504 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) lambda!169597)))

(declare-fun lt!1684822 () Unit!92671)

(assert (=> b!4505504 (= lt!1684822 lt!1684812)))

(assert (=> b!4505504 call!313684))

(declare-fun lt!1684826 () Unit!92671)

(declare-fun Unit!92826 () Unit!92671)

(assert (=> b!4505504 (= lt!1684826 Unit!92826)))

(declare-fun res!1873490 () Bool)

(assert (=> b!4505504 (= res!1873490 (forall!10192 (_2!28772 (h!56384 (toList!4267 lt!1684132))) lambda!169597))))

(assert (=> b!4505504 (=> (not res!1873490) (not e!2806727))))

(assert (=> b!4505504 e!2806727))

(declare-fun lt!1684809 () Unit!92671)

(declare-fun Unit!92827 () Unit!92671)

(assert (=> b!4505504 (= lt!1684809 Unit!92827)))

(assert (= (and d!1384731 c!768323) b!4505503))

(assert (= (and d!1384731 (not c!768323)) b!4505504))

(assert (= (and b!4505504 res!1873490) b!4505502))

(assert (= (or b!4505503 b!4505504) bm!313677))

(assert (= (or b!4505503 b!4505504) bm!313678))

(assert (= (or b!4505503 b!4505504) bm!313679))

(assert (= (and d!1384731 res!1873492) b!4505500))

(assert (= (and b!4505500 res!1873491) b!4505501))

(declare-fun m!5241051 () Bool)

(assert (=> bm!313678 m!5241051))

(declare-fun m!5241053 () Bool)

(assert (=> b!4505500 m!5241053))

(declare-fun m!5241055 () Bool)

(assert (=> bm!313677 m!5241055))

(declare-fun m!5241057 () Bool)

(assert (=> b!4505501 m!5241057))

(declare-fun m!5241059 () Bool)

(assert (=> b!4505502 m!5241059))

(declare-fun m!5241061 () Bool)

(assert (=> d!1384731 m!5241061))

(declare-fun m!5241063 () Bool)

(assert (=> d!1384731 m!5241063))

(declare-fun m!5241065 () Bool)

(assert (=> b!4505504 m!5241065))

(assert (=> b!4505504 m!5239967))

(declare-fun m!5241067 () Bool)

(assert (=> b!4505504 m!5241067))

(declare-fun m!5241069 () Bool)

(assert (=> b!4505504 m!5241069))

(declare-fun m!5241071 () Bool)

(assert (=> b!4505504 m!5241071))

(declare-fun m!5241073 () Bool)

(assert (=> b!4505504 m!5241073))

(declare-fun m!5241075 () Bool)

(assert (=> b!4505504 m!5241075))

(assert (=> b!4505504 m!5239967))

(declare-fun m!5241077 () Bool)

(assert (=> b!4505504 m!5241077))

(declare-fun m!5241079 () Bool)

(assert (=> b!4505504 m!5241079))

(declare-fun m!5241081 () Bool)

(assert (=> b!4505504 m!5241081))

(assert (=> b!4505504 m!5241067))

(declare-fun m!5241083 () Bool)

(assert (=> b!4505504 m!5241083))

(assert (=> b!4505504 m!5241071))

(assert (=> b!4505504 m!5241059))

(assert (=> bm!313679 m!5239967))

(declare-fun m!5241085 () Bool)

(assert (=> bm!313679 m!5241085))

(assert (=> b!4504857 d!1384731))

(declare-fun bs!843357 () Bool)

(declare-fun d!1384733 () Bool)

(assert (= bs!843357 (and d!1384733 d!1384413)))

(declare-fun lambda!169599 () Int)

(assert (=> bs!843357 (= lambda!169599 lambda!169458)))

(declare-fun bs!843358 () Bool)

(assert (= bs!843358 (and d!1384733 d!1384401)))

(assert (=> bs!843358 (= lambda!169599 lambda!169456)))

(declare-fun bs!843359 () Bool)

(assert (= bs!843359 (and d!1384733 d!1384509)))

(assert (=> bs!843359 (= lambda!169599 lambda!169502)))

(declare-fun bs!843360 () Bool)

(assert (= bs!843360 (and d!1384733 d!1384673)))

(assert (=> bs!843360 (= lambda!169599 lambda!169589)))

(declare-fun bs!843361 () Bool)

(assert (= bs!843361 (and d!1384733 d!1384425)))

(assert (=> bs!843361 (= lambda!169599 lambda!169461)))

(declare-fun bs!843362 () Bool)

(assert (= bs!843362 (and d!1384733 d!1384395)))

(assert (=> bs!843362 (= lambda!169599 lambda!169453)))

(declare-fun bs!843363 () Bool)

(assert (= bs!843363 (and d!1384733 d!1384429)))

(assert (=> bs!843363 (= lambda!169599 lambda!169462)))

(declare-fun bs!843364 () Bool)

(assert (= bs!843364 (and d!1384733 d!1384387)))

(assert (=> bs!843364 (= lambda!169599 lambda!169451)))

(declare-fun bs!843365 () Bool)

(assert (= bs!843365 (and d!1384733 start!444824)))

(assert (=> bs!843365 (= lambda!169599 lambda!169407)))

(declare-fun bs!843366 () Bool)

(assert (= bs!843366 (and d!1384733 d!1384271)))

(assert (=> bs!843366 (= lambda!169599 lambda!169416)))

(declare-fun bs!843367 () Bool)

(assert (= bs!843367 (and d!1384733 d!1384389)))

(assert (=> bs!843367 (= lambda!169599 lambda!169452)))

(declare-fun bs!843368 () Bool)

(assert (= bs!843368 (and d!1384733 d!1384371)))

(assert (=> bs!843368 (= lambda!169599 lambda!169448)))

(declare-fun bs!843369 () Bool)

(assert (= bs!843369 (and d!1384733 d!1384433)))

(assert (=> bs!843369 (not (= lambda!169599 lambda!169465))))

(declare-fun bs!843370 () Bool)

(assert (= bs!843370 (and d!1384733 d!1384667)))

(assert (=> bs!843370 (= lambda!169599 lambda!169588)))

(declare-fun bs!843371 () Bool)

(assert (= bs!843371 (and d!1384733 d!1384719)))

(assert (=> bs!843371 (= lambda!169599 lambda!169594)))

(declare-fun bs!843372 () Bool)

(assert (= bs!843372 (and d!1384733 d!1384405)))

(assert (=> bs!843372 (= lambda!169599 lambda!169457)))

(declare-fun bs!843373 () Bool)

(assert (= bs!843373 (and d!1384733 d!1384333)))

(assert (=> bs!843373 (= lambda!169599 lambda!169436)))

(declare-fun lt!1684829 () ListMap!3529)

(assert (=> d!1384733 (invariantList!989 (toList!4268 lt!1684829))))

(declare-fun e!2806730 () ListMap!3529)

(assert (=> d!1384733 (= lt!1684829 e!2806730)))

(declare-fun c!768324 () Bool)

(assert (=> d!1384733 (= c!768324 ((_ is Cons!50559) (t!357645 (toList!4267 lt!1684132))))))

(assert (=> d!1384733 (forall!10191 (t!357645 (toList!4267 lt!1684132)) lambda!169599)))

(assert (=> d!1384733 (= (extractMap!1186 (t!357645 (toList!4267 lt!1684132))) lt!1684829)))

(declare-fun b!4505505 () Bool)

(assert (=> b!4505505 (= e!2806730 (addToMapMapFromBucket!657 (_2!28772 (h!56384 (t!357645 (toList!4267 lt!1684132)))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lt!1684132))))))))

(declare-fun b!4505506 () Bool)

(assert (=> b!4505506 (= e!2806730 (ListMap!3530 Nil!50558))))

(assert (= (and d!1384733 c!768324) b!4505505))

(assert (= (and d!1384733 (not c!768324)) b!4505506))

(declare-fun m!5241087 () Bool)

(assert (=> d!1384733 m!5241087))

(declare-fun m!5241089 () Bool)

(assert (=> d!1384733 m!5241089))

(declare-fun m!5241091 () Bool)

(assert (=> b!4505505 m!5241091))

(assert (=> b!4505505 m!5241091))

(declare-fun m!5241093 () Bool)

(assert (=> b!4505505 m!5241093))

(assert (=> b!4504857 d!1384733))

(assert (=> b!4504821 d!1384543))

(declare-fun d!1384735 () Bool)

(declare-fun res!1873493 () Bool)

(declare-fun e!2806731 () Bool)

(assert (=> d!1384735 (=> res!1873493 e!2806731)))

(assert (=> d!1384735 (= res!1873493 (and ((_ is Cons!50558) (_2!28772 (h!56384 (toList!4267 lt!1684132)))) (= (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684132))))) key!3287)))))

(assert (=> d!1384735 (= (containsKey!1694 (_2!28772 (h!56384 (toList!4267 lt!1684132))) key!3287) e!2806731)))

(declare-fun b!4505507 () Bool)

(declare-fun e!2806732 () Bool)

(assert (=> b!4505507 (= e!2806731 e!2806732)))

(declare-fun res!1873494 () Bool)

(assert (=> b!4505507 (=> (not res!1873494) (not e!2806732))))

(assert (=> b!4505507 (= res!1873494 ((_ is Cons!50558) (_2!28772 (h!56384 (toList!4267 lt!1684132)))))))

(declare-fun b!4505508 () Bool)

(assert (=> b!4505508 (= e!2806732 (containsKey!1694 (t!357644 (_2!28772 (h!56384 (toList!4267 lt!1684132)))) key!3287))))

(assert (= (and d!1384735 (not res!1873493)) b!4505507))

(assert (= (and b!4505507 res!1873494) b!4505508))

(declare-fun m!5241095 () Bool)

(assert (=> b!4505508 m!5241095))

(assert (=> b!4504768 d!1384735))

(declare-fun d!1384737 () Bool)

(assert (=> d!1384737 (= (invariantList!989 (toList!4268 lt!1684342)) (noDuplicatedKeys!248 (toList!4268 lt!1684342)))))

(declare-fun bs!843374 () Bool)

(assert (= bs!843374 d!1384737))

(declare-fun m!5241097 () Bool)

(assert (=> bs!843374 m!5241097))

(assert (=> d!1384389 d!1384737))

(declare-fun d!1384739 () Bool)

(declare-fun res!1873495 () Bool)

(declare-fun e!2806734 () Bool)

(assert (=> d!1384739 (=> res!1873495 e!2806734)))

(assert (=> d!1384739 (= res!1873495 ((_ is Nil!50559) (toList!4267 lt!1684132)))))

(assert (=> d!1384739 (= (forall!10191 (toList!4267 lt!1684132) lambda!169452) e!2806734)))

(declare-fun b!4505509 () Bool)

(declare-fun e!2806735 () Bool)

(assert (=> b!4505509 (= e!2806734 e!2806735)))

(declare-fun res!1873496 () Bool)

(assert (=> b!4505509 (=> (not res!1873496) (not e!2806735))))

(assert (=> b!4505509 (= res!1873496 (dynLambda!21121 lambda!169452 (h!56384 (toList!4267 lt!1684132))))))

(declare-fun b!4505510 () Bool)

(assert (=> b!4505510 (= e!2806735 (forall!10191 (t!357645 (toList!4267 lt!1684132)) lambda!169452))))

(assert (= (and d!1384739 (not res!1873495)) b!4505509))

(assert (= (and b!4505509 res!1873496) b!4505510))

(declare-fun b_lambda!153253 () Bool)

(assert (=> (not b_lambda!153253) (not b!4505509)))

(declare-fun m!5241099 () Bool)

(assert (=> b!4505509 m!5241099))

(declare-fun m!5241101 () Bool)

(assert (=> b!4505510 m!5241101))

(assert (=> d!1384389 d!1384739))

(declare-fun bs!843375 () Bool)

(declare-fun b!4505514 () Bool)

(assert (= bs!843375 (and b!4505514 b!4505414)))

(declare-fun lambda!169600 () Int)

(assert (=> bs!843375 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169600 lambda!169577))))

(declare-fun bs!843376 () Bool)

(assert (= bs!843376 (and b!4505514 d!1384731)))

(assert (=> bs!843376 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684818) (= lambda!169600 lambda!169598))))

(declare-fun bs!843377 () Bool)

(assert (= bs!843377 (and b!4505514 b!4505044)))

(assert (=> bs!843377 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684456) (= lambda!169600 lambda!169500))))

(declare-fun bs!843378 () Bool)

(assert (= bs!843378 (and b!4505514 b!4505472)))

(assert (=> bs!843378 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169600 lambda!169591))))

(declare-fun bs!843379 () Bool)

(assert (= bs!843379 (and b!4505514 b!4504941)))

(assert (=> bs!843379 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684415) (= lambda!169600 lambda!169496))))

(declare-fun bs!843380 () Bool)

(assert (= bs!843380 (and b!4505514 b!4505415)))

(assert (=> bs!843380 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684713) (= lambda!169600 lambda!169582))))

(assert (=> bs!843378 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684778) (= lambda!169600 lambda!169592))))

(declare-fun bs!843381 () Bool)

(assert (= bs!843381 (and b!4505514 d!1384445)))

(assert (=> bs!843381 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684425) (= lambda!169600 lambda!169497))))

(declare-fun bs!843382 () Bool)

(assert (= bs!843382 (and b!4505514 d!1384663)))

(assert (=> bs!843382 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684728) (= lambda!169600 lambda!169585))))

(declare-fun bs!843383 () Bool)

(assert (= bs!843383 (and b!4505514 d!1384505)))

(assert (=> bs!843383 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684466) (= lambda!169600 lambda!169501))))

(declare-fun bs!843384 () Bool)

(assert (= bs!843384 (and b!4505514 b!4505471)))

(assert (=> bs!843384 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169600 lambda!169590))))

(declare-fun bs!843385 () Bool)

(assert (= bs!843385 (and b!4505514 d!1384321)))

(assert (=> bs!843385 (not (= lambda!169600 lambda!169430))))

(declare-fun bs!843386 () Bool)

(assert (= bs!843386 (and b!4505514 b!4505504)))

(assert (=> bs!843386 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684808) (= lambda!169600 lambda!169597))))

(declare-fun bs!843387 () Bool)

(assert (= bs!843387 (and b!4505514 b!4505043)))

(assert (=> bs!843387 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169600 lambda!169498))))

(declare-fun bs!843388 () Bool)

(assert (= bs!843388 (and b!4505514 d!1384713)))

(assert (=> bs!843388 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684788) (= lambda!169600 lambda!169593))))

(assert (=> bs!843379 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169600 lambda!169495))))

(declare-fun bs!843389 () Bool)

(assert (= bs!843389 (and b!4505514 b!4504940)))

(assert (=> bs!843389 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169600 lambda!169494))))

(declare-fun bs!843390 () Bool)

(assert (= bs!843390 (and b!4505514 b!4505503)))

(assert (=> bs!843390 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (= lambda!169600 lambda!169595))))

(assert (=> bs!843377 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169600 lambda!169499))))

(assert (=> bs!843386 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (= lambda!169600 lambda!169596))))

(assert (=> bs!843380 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169600 lambda!169581))))

(assert (=> b!4505514 true))

(declare-fun bs!843391 () Bool)

(declare-fun b!4505515 () Bool)

(assert (= bs!843391 (and b!4505515 b!4505414)))

(declare-fun lambda!169601 () Int)

(assert (=> bs!843391 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169601 lambda!169577))))

(declare-fun bs!843392 () Bool)

(assert (= bs!843392 (and b!4505515 b!4505514)))

(assert (=> bs!843392 (= lambda!169601 lambda!169600)))

(declare-fun bs!843393 () Bool)

(assert (= bs!843393 (and b!4505515 d!1384731)))

(assert (=> bs!843393 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684818) (= lambda!169601 lambda!169598))))

(declare-fun bs!843394 () Bool)

(assert (= bs!843394 (and b!4505515 b!4505044)))

(assert (=> bs!843394 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684456) (= lambda!169601 lambda!169500))))

(declare-fun bs!843395 () Bool)

(assert (= bs!843395 (and b!4505515 b!4505472)))

(assert (=> bs!843395 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169601 lambda!169591))))

(declare-fun bs!843396 () Bool)

(assert (= bs!843396 (and b!4505515 b!4504941)))

(assert (=> bs!843396 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684415) (= lambda!169601 lambda!169496))))

(declare-fun bs!843397 () Bool)

(assert (= bs!843397 (and b!4505515 b!4505415)))

(assert (=> bs!843397 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684713) (= lambda!169601 lambda!169582))))

(assert (=> bs!843395 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684778) (= lambda!169601 lambda!169592))))

(declare-fun bs!843398 () Bool)

(assert (= bs!843398 (and b!4505515 d!1384445)))

(assert (=> bs!843398 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684425) (= lambda!169601 lambda!169497))))

(declare-fun bs!843399 () Bool)

(assert (= bs!843399 (and b!4505515 d!1384663)))

(assert (=> bs!843399 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684728) (= lambda!169601 lambda!169585))))

(declare-fun bs!843400 () Bool)

(assert (= bs!843400 (and b!4505515 d!1384505)))

(assert (=> bs!843400 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684466) (= lambda!169601 lambda!169501))))

(declare-fun bs!843401 () Bool)

(assert (= bs!843401 (and b!4505515 b!4505471)))

(assert (=> bs!843401 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169601 lambda!169590))))

(declare-fun bs!843402 () Bool)

(assert (= bs!843402 (and b!4505515 d!1384321)))

(assert (=> bs!843402 (not (= lambda!169601 lambda!169430))))

(declare-fun bs!843403 () Bool)

(assert (= bs!843403 (and b!4505515 b!4505504)))

(assert (=> bs!843403 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684808) (= lambda!169601 lambda!169597))))

(declare-fun bs!843404 () Bool)

(assert (= bs!843404 (and b!4505515 b!4505043)))

(assert (=> bs!843404 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169601 lambda!169498))))

(declare-fun bs!843405 () Bool)

(assert (= bs!843405 (and b!4505515 d!1384713)))

(assert (=> bs!843405 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684788) (= lambda!169601 lambda!169593))))

(assert (=> bs!843396 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169601 lambda!169495))))

(declare-fun bs!843406 () Bool)

(assert (= bs!843406 (and b!4505515 b!4504940)))

(assert (=> bs!843406 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169601 lambda!169494))))

(declare-fun bs!843407 () Bool)

(assert (= bs!843407 (and b!4505515 b!4505503)))

(assert (=> bs!843407 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (= lambda!169601 lambda!169595))))

(assert (=> bs!843394 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169601 lambda!169499))))

(assert (=> bs!843403 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (= lambda!169601 lambda!169596))))

(assert (=> bs!843397 (= (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169601 lambda!169581))))

(assert (=> b!4505515 true))

(declare-fun lambda!169602 () Int)

(declare-fun lt!1684830 () ListMap!3529)

(assert (=> bs!843392 (= (= lt!1684830 (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))) (= lambda!169602 lambda!169600))))

(assert (=> bs!843393 (= (= lt!1684830 lt!1684818) (= lambda!169602 lambda!169598))))

(assert (=> bs!843394 (= (= lt!1684830 lt!1684456) (= lambda!169602 lambda!169500))))

(assert (=> bs!843395 (= (= lt!1684830 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169602 lambda!169591))))

(assert (=> bs!843396 (= (= lt!1684830 lt!1684415) (= lambda!169602 lambda!169496))))

(assert (=> bs!843397 (= (= lt!1684830 lt!1684713) (= lambda!169602 lambda!169582))))

(assert (=> bs!843395 (= (= lt!1684830 lt!1684778) (= lambda!169602 lambda!169592))))

(assert (=> bs!843398 (= (= lt!1684830 lt!1684425) (= lambda!169602 lambda!169497))))

(assert (=> bs!843399 (= (= lt!1684830 lt!1684728) (= lambda!169602 lambda!169585))))

(assert (=> bs!843400 (= (= lt!1684830 lt!1684466) (= lambda!169602 lambda!169501))))

(assert (=> bs!843401 (= (= lt!1684830 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169602 lambda!169590))))

(assert (=> bs!843402 (not (= lambda!169602 lambda!169430))))

(assert (=> bs!843403 (= (= lt!1684830 lt!1684808) (= lambda!169602 lambda!169597))))

(assert (=> bs!843391 (= (= lt!1684830 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169602 lambda!169577))))

(assert (=> b!4505515 (= (= lt!1684830 (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))) (= lambda!169602 lambda!169601))))

(assert (=> bs!843404 (= (= lt!1684830 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169602 lambda!169498))))

(assert (=> bs!843405 (= (= lt!1684830 lt!1684788) (= lambda!169602 lambda!169593))))

(assert (=> bs!843396 (= (= lt!1684830 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169602 lambda!169495))))

(assert (=> bs!843406 (= (= lt!1684830 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169602 lambda!169494))))

(assert (=> bs!843407 (= (= lt!1684830 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (= lambda!169602 lambda!169595))))

(assert (=> bs!843394 (= (= lt!1684830 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169602 lambda!169499))))

(assert (=> bs!843403 (= (= lt!1684830 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (= lambda!169602 lambda!169596))))

(assert (=> bs!843397 (= (= lt!1684830 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169602 lambda!169581))))

(assert (=> b!4505515 true))

(declare-fun bs!843408 () Bool)

(declare-fun d!1384741 () Bool)

(assert (= bs!843408 (and d!1384741 b!4505514)))

(declare-fun lambda!169603 () Int)

(declare-fun lt!1684840 () ListMap!3529)

(assert (=> bs!843408 (= (= lt!1684840 (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))) (= lambda!169603 lambda!169600))))

(declare-fun bs!843409 () Bool)

(assert (= bs!843409 (and d!1384741 d!1384731)))

(assert (=> bs!843409 (= (= lt!1684840 lt!1684818) (= lambda!169603 lambda!169598))))

(declare-fun bs!843410 () Bool)

(assert (= bs!843410 (and d!1384741 b!4505044)))

(assert (=> bs!843410 (= (= lt!1684840 lt!1684456) (= lambda!169603 lambda!169500))))

(declare-fun bs!843411 () Bool)

(assert (= bs!843411 (and d!1384741 b!4505472)))

(assert (=> bs!843411 (= (= lt!1684840 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169603 lambda!169591))))

(declare-fun bs!843412 () Bool)

(assert (= bs!843412 (and d!1384741 b!4504941)))

(assert (=> bs!843412 (= (= lt!1684840 lt!1684415) (= lambda!169603 lambda!169496))))

(declare-fun bs!843413 () Bool)

(assert (= bs!843413 (and d!1384741 b!4505415)))

(assert (=> bs!843413 (= (= lt!1684840 lt!1684713) (= lambda!169603 lambda!169582))))

(assert (=> bs!843411 (= (= lt!1684840 lt!1684778) (= lambda!169603 lambda!169592))))

(declare-fun bs!843414 () Bool)

(assert (= bs!843414 (and d!1384741 d!1384445)))

(assert (=> bs!843414 (= (= lt!1684840 lt!1684425) (= lambda!169603 lambda!169497))))

(declare-fun bs!843415 () Bool)

(assert (= bs!843415 (and d!1384741 d!1384663)))

(assert (=> bs!843415 (= (= lt!1684840 lt!1684728) (= lambda!169603 lambda!169585))))

(declare-fun bs!843416 () Bool)

(assert (= bs!843416 (and d!1384741 d!1384505)))

(assert (=> bs!843416 (= (= lt!1684840 lt!1684466) (= lambda!169603 lambda!169501))))

(declare-fun bs!843417 () Bool)

(assert (= bs!843417 (and d!1384741 b!4505471)))

(assert (=> bs!843417 (= (= lt!1684840 (extractMap!1186 (t!357645 (t!357645 (toList!4267 lm!1477))))) (= lambda!169603 lambda!169590))))

(declare-fun bs!843418 () Bool)

(assert (= bs!843418 (and d!1384741 b!4505504)))

(assert (=> bs!843418 (= (= lt!1684840 lt!1684808) (= lambda!169603 lambda!169597))))

(declare-fun bs!843419 () Bool)

(assert (= bs!843419 (and d!1384741 b!4505414)))

(assert (=> bs!843419 (= (= lt!1684840 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169603 lambda!169577))))

(declare-fun bs!843420 () Bool)

(assert (= bs!843420 (and d!1384741 b!4505515)))

(assert (=> bs!843420 (= (= lt!1684840 (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))) (= lambda!169603 lambda!169601))))

(declare-fun bs!843421 () Bool)

(assert (= bs!843421 (and d!1384741 b!4505043)))

(assert (=> bs!843421 (= (= lt!1684840 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169603 lambda!169498))))

(declare-fun bs!843422 () Bool)

(assert (= bs!843422 (and d!1384741 d!1384713)))

(assert (=> bs!843422 (= (= lt!1684840 lt!1684788) (= lambda!169603 lambda!169593))))

(assert (=> bs!843412 (= (= lt!1684840 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169603 lambda!169495))))

(declare-fun bs!843423 () Bool)

(assert (= bs!843423 (and d!1384741 b!4504940)))

(assert (=> bs!843423 (= (= lt!1684840 (extractMap!1186 (t!357645 (toList!4267 lm!1477)))) (= lambda!169603 lambda!169494))))

(declare-fun bs!843424 () Bool)

(assert (= bs!843424 (and d!1384741 b!4505503)))

(assert (=> bs!843424 (= (= lt!1684840 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (= lambda!169603 lambda!169595))))

(assert (=> bs!843410 (= (= lt!1684840 (extractMap!1186 (t!357645 (toList!4267 lt!1684114)))) (= lambda!169603 lambda!169499))))

(assert (=> bs!843418 (= (= lt!1684840 (extractMap!1186 (t!357645 (toList!4267 lt!1684132)))) (= lambda!169603 lambda!169596))))

(assert (=> bs!843413 (= (= lt!1684840 (extractMap!1186 (t!357645 (toList!4267 (+!1482 lt!1684132 lt!1684119))))) (= lambda!169603 lambda!169581))))

(declare-fun bs!843425 () Bool)

(assert (= bs!843425 (and d!1384741 d!1384321)))

(assert (=> bs!843425 (not (= lambda!169603 lambda!169430))))

(assert (=> bs!843420 (= (= lt!1684840 lt!1684830) (= lambda!169603 lambda!169602))))

(assert (=> d!1384741 true))

(declare-fun b!4505511 () Bool)

(declare-fun res!1873498 () Bool)

(declare-fun e!2806738 () Bool)

(assert (=> b!4505511 (=> (not res!1873498) (not e!2806738))))

(assert (=> b!4505511 (= res!1873498 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))) lambda!169603))))

(declare-fun c!768325 () Bool)

(declare-fun bm!313680 () Bool)

(declare-fun call!313687 () Bool)

(assert (=> bm!313680 (= call!313687 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))) (ite c!768325 lambda!169600 lambda!169602)))))

(declare-fun b!4505512 () Bool)

(assert (=> b!4505512 (= e!2806738 (invariantList!989 (toList!4268 lt!1684840)))))

(assert (=> d!1384741 e!2806738))

(declare-fun res!1873499 () Bool)

(assert (=> d!1384741 (=> (not res!1873499) (not e!2806738))))

(assert (=> d!1384741 (= res!1873499 (forall!10192 (_2!28772 (h!56384 (toList!4267 lt!1684133))) lambda!169603))))

(declare-fun e!2806739 () ListMap!3529)

(assert (=> d!1384741 (= lt!1684840 e!2806739)))

(assert (=> d!1384741 (= c!768325 ((_ is Nil!50558) (_2!28772 (h!56384 (toList!4267 lt!1684133)))))))

(assert (=> d!1384741 (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lt!1684133))))))

(assert (=> d!1384741 (= (addToMapMapFromBucket!657 (_2!28772 (h!56384 (toList!4267 lt!1684133))) (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))) lt!1684840)))

(declare-fun bm!313681 () Bool)

(declare-fun call!313685 () Bool)

(declare-fun lt!1684839 () ListMap!3529)

(assert (=> bm!313681 (= call!313685 (forall!10192 (ite c!768325 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))) (toList!4268 lt!1684839)) (ite c!768325 lambda!169600 lambda!169602)))))

(declare-fun bm!313682 () Bool)

(declare-fun call!313686 () Unit!92671)

(assert (=> bm!313682 (= call!313686 (lemmaContainsAllItsOwnKeys!311 (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))))))

(declare-fun b!4505513 () Bool)

(declare-fun e!2806737 () Bool)

(assert (=> b!4505513 (= e!2806737 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))) lambda!169602))))

(assert (=> b!4505514 (= e!2806739 (extractMap!1186 (t!357645 (toList!4267 lt!1684133))))))

(declare-fun lt!1684843 () Unit!92671)

(assert (=> b!4505514 (= lt!1684843 call!313686)))

(assert (=> b!4505514 call!313687))

(declare-fun lt!1684842 () Unit!92671)

(assert (=> b!4505514 (= lt!1684842 lt!1684843)))

(assert (=> b!4505514 call!313685))

(declare-fun lt!1684845 () Unit!92671)

(declare-fun Unit!92836 () Unit!92671)

(assert (=> b!4505514 (= lt!1684845 Unit!92836)))

(assert (=> b!4505515 (= e!2806739 lt!1684830)))

(assert (=> b!4505515 (= lt!1684839 (+!1483 (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684133))))))))

(assert (=> b!4505515 (= lt!1684830 (addToMapMapFromBucket!657 (t!357644 (_2!28772 (h!56384 (toList!4267 lt!1684133)))) (+!1483 (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684133)))))))))

(declare-fun lt!1684849 () Unit!92671)

(assert (=> b!4505515 (= lt!1684849 call!313686)))

(assert (=> b!4505515 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))) lambda!169601)))

(declare-fun lt!1684832 () Unit!92671)

(assert (=> b!4505515 (= lt!1684832 lt!1684849)))

(assert (=> b!4505515 (forall!10192 (toList!4268 lt!1684839) lambda!169602)))

(declare-fun lt!1684837 () Unit!92671)

(declare-fun Unit!92838 () Unit!92671)

(assert (=> b!4505515 (= lt!1684837 Unit!92838)))

(assert (=> b!4505515 (forall!10192 (t!357644 (_2!28772 (h!56384 (toList!4267 lt!1684133)))) lambda!169602)))

(declare-fun lt!1684838 () Unit!92671)

(declare-fun Unit!92840 () Unit!92671)

(assert (=> b!4505515 (= lt!1684838 Unit!92840)))

(declare-fun lt!1684833 () Unit!92671)

(declare-fun Unit!92841 () Unit!92671)

(assert (=> b!4505515 (= lt!1684833 Unit!92841)))

(declare-fun lt!1684835 () Unit!92671)

(assert (=> b!4505515 (= lt!1684835 (forallContained!2446 (toList!4268 lt!1684839) lambda!169602 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684133))))))))

(assert (=> b!4505515 (contains!13241 lt!1684839 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684133))))))))

(declare-fun lt!1684836 () Unit!92671)

(declare-fun Unit!92842 () Unit!92671)

(assert (=> b!4505515 (= lt!1684836 Unit!92842)))

(assert (=> b!4505515 (contains!13241 lt!1684830 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684133))))))))

(declare-fun lt!1684847 () Unit!92671)

(declare-fun Unit!92843 () Unit!92671)

(assert (=> b!4505515 (= lt!1684847 Unit!92843)))

(assert (=> b!4505515 (forall!10192 (_2!28772 (h!56384 (toList!4267 lt!1684133))) lambda!169602)))

(declare-fun lt!1684841 () Unit!92671)

(declare-fun Unit!92844 () Unit!92671)

(assert (=> b!4505515 (= lt!1684841 Unit!92844)))

(assert (=> b!4505515 call!313685))

(declare-fun lt!1684846 () Unit!92671)

(declare-fun Unit!92845 () Unit!92671)

(assert (=> b!4505515 (= lt!1684846 Unit!92845)))

(declare-fun lt!1684850 () Unit!92671)

(declare-fun Unit!92846 () Unit!92671)

(assert (=> b!4505515 (= lt!1684850 Unit!92846)))

(declare-fun lt!1684834 () Unit!92671)

(assert (=> b!4505515 (= lt!1684834 (addForallContainsKeyThenBeforeAdding!311 (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684830 (_1!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684133))))) (_2!28771 (h!56383 (_2!28772 (h!56384 (toList!4267 lt!1684133)))))))))

(assert (=> b!4505515 (forall!10192 (toList!4268 (extractMap!1186 (t!357645 (toList!4267 lt!1684133)))) lambda!169602)))

(declare-fun lt!1684844 () Unit!92671)

(assert (=> b!4505515 (= lt!1684844 lt!1684834)))

(assert (=> b!4505515 call!313687))

(declare-fun lt!1684848 () Unit!92671)

(declare-fun Unit!92848 () Unit!92671)

(assert (=> b!4505515 (= lt!1684848 Unit!92848)))

(declare-fun res!1873497 () Bool)

(assert (=> b!4505515 (= res!1873497 (forall!10192 (_2!28772 (h!56384 (toList!4267 lt!1684133))) lambda!169602))))

(assert (=> b!4505515 (=> (not res!1873497) (not e!2806737))))

(assert (=> b!4505515 e!2806737))

(declare-fun lt!1684831 () Unit!92671)

(declare-fun Unit!92849 () Unit!92671)

(assert (=> b!4505515 (= lt!1684831 Unit!92849)))

(assert (= (and d!1384741 c!768325) b!4505514))

(assert (= (and d!1384741 (not c!768325)) b!4505515))

(assert (= (and b!4505515 res!1873497) b!4505513))

(assert (= (or b!4505514 b!4505515) bm!313680))

(assert (= (or b!4505514 b!4505515) bm!313681))

(assert (= (or b!4505514 b!4505515) bm!313682))

(assert (= (and d!1384741 res!1873499) b!4505511))

(assert (= (and b!4505511 res!1873498) b!4505512))

(declare-fun m!5241103 () Bool)

(assert (=> bm!313681 m!5241103))

(declare-fun m!5241105 () Bool)

(assert (=> b!4505511 m!5241105))

(declare-fun m!5241107 () Bool)

(assert (=> bm!313680 m!5241107))

(declare-fun m!5241109 () Bool)

(assert (=> b!4505512 m!5241109))

(declare-fun m!5241111 () Bool)

(assert (=> b!4505513 m!5241111))

(declare-fun m!5241113 () Bool)

(assert (=> d!1384741 m!5241113))

(declare-fun m!5241115 () Bool)

(assert (=> d!1384741 m!5241115))

(declare-fun m!5241117 () Bool)

(assert (=> b!4505515 m!5241117))

(assert (=> b!4505515 m!5240097))

(declare-fun m!5241119 () Bool)

(assert (=> b!4505515 m!5241119))

(declare-fun m!5241121 () Bool)

(assert (=> b!4505515 m!5241121))

(declare-fun m!5241123 () Bool)

(assert (=> b!4505515 m!5241123))

(declare-fun m!5241125 () Bool)

(assert (=> b!4505515 m!5241125))

(declare-fun m!5241127 () Bool)

(assert (=> b!4505515 m!5241127))

(assert (=> b!4505515 m!5240097))

(declare-fun m!5241129 () Bool)

(assert (=> b!4505515 m!5241129))

(declare-fun m!5241131 () Bool)

(assert (=> b!4505515 m!5241131))

(declare-fun m!5241133 () Bool)

(assert (=> b!4505515 m!5241133))

(assert (=> b!4505515 m!5241119))

(declare-fun m!5241135 () Bool)

(assert (=> b!4505515 m!5241135))

(assert (=> b!4505515 m!5241123))

(assert (=> b!4505515 m!5241111))

(assert (=> bm!313682 m!5240097))

(declare-fun m!5241137 () Bool)

(assert (=> bm!313682 m!5241137))

(assert (=> b!4504899 d!1384741))

(declare-fun bs!843426 () Bool)

(declare-fun d!1384743 () Bool)

(assert (= bs!843426 (and d!1384743 d!1384413)))

(declare-fun lambda!169604 () Int)

(assert (=> bs!843426 (= lambda!169604 lambda!169458)))

(declare-fun bs!843427 () Bool)

(assert (= bs!843427 (and d!1384743 d!1384401)))

(assert (=> bs!843427 (= lambda!169604 lambda!169456)))

(declare-fun bs!843428 () Bool)

(assert (= bs!843428 (and d!1384743 d!1384509)))

(assert (=> bs!843428 (= lambda!169604 lambda!169502)))

(declare-fun bs!843429 () Bool)

(assert (= bs!843429 (and d!1384743 d!1384673)))

(assert (=> bs!843429 (= lambda!169604 lambda!169589)))

(declare-fun bs!843430 () Bool)

(assert (= bs!843430 (and d!1384743 d!1384425)))

(assert (=> bs!843430 (= lambda!169604 lambda!169461)))

(declare-fun bs!843431 () Bool)

(assert (= bs!843431 (and d!1384743 d!1384733)))

(assert (=> bs!843431 (= lambda!169604 lambda!169599)))

(declare-fun bs!843432 () Bool)

(assert (= bs!843432 (and d!1384743 d!1384395)))

(assert (=> bs!843432 (= lambda!169604 lambda!169453)))

(declare-fun bs!843433 () Bool)

(assert (= bs!843433 (and d!1384743 d!1384429)))

(assert (=> bs!843433 (= lambda!169604 lambda!169462)))

(declare-fun bs!843434 () Bool)

(assert (= bs!843434 (and d!1384743 d!1384387)))

(assert (=> bs!843434 (= lambda!169604 lambda!169451)))

(declare-fun bs!843435 () Bool)

(assert (= bs!843435 (and d!1384743 start!444824)))

(assert (=> bs!843435 (= lambda!169604 lambda!169407)))

(declare-fun bs!843436 () Bool)

(assert (= bs!843436 (and d!1384743 d!1384271)))

(assert (=> bs!843436 (= lambda!169604 lambda!169416)))

(declare-fun bs!843437 () Bool)

(assert (= bs!843437 (and d!1384743 d!1384389)))

(assert (=> bs!843437 (= lambda!169604 lambda!169452)))

(declare-fun bs!843438 () Bool)

(assert (= bs!843438 (and d!1384743 d!1384371)))

(assert (=> bs!843438 (= lambda!169604 lambda!169448)))

(declare-fun bs!843439 () Bool)

(assert (= bs!843439 (and d!1384743 d!1384433)))

(assert (=> bs!843439 (not (= lambda!169604 lambda!169465))))

(declare-fun bs!843440 () Bool)

(assert (= bs!843440 (and d!1384743 d!1384667)))

(assert (=> bs!843440 (= lambda!169604 lambda!169588)))

(declare-fun bs!843441 () Bool)

(assert (= bs!843441 (and d!1384743 d!1384719)))

(assert (=> bs!843441 (= lambda!169604 lambda!169594)))

(declare-fun bs!843442 () Bool)

(assert (= bs!843442 (and d!1384743 d!1384405)))

(assert (=> bs!843442 (= lambda!169604 lambda!169457)))

(declare-fun bs!843443 () Bool)

(assert (= bs!843443 (and d!1384743 d!1384333)))

(assert (=> bs!843443 (= lambda!169604 lambda!169436)))

(declare-fun lt!1684867 () ListMap!3529)

(assert (=> d!1384743 (invariantList!989 (toList!4268 lt!1684867))))

(declare-fun e!2806746 () ListMap!3529)

(assert (=> d!1384743 (= lt!1684867 e!2806746)))

(declare-fun c!768332 () Bool)

(assert (=> d!1384743 (= c!768332 ((_ is Cons!50559) (t!357645 (toList!4267 lt!1684133))))))

(assert (=> d!1384743 (forall!10191 (t!357645 (toList!4267 lt!1684133)) lambda!169604)))

(assert (=> d!1384743 (= (extractMap!1186 (t!357645 (toList!4267 lt!1684133))) lt!1684867)))

(declare-fun b!4505528 () Bool)

(assert (=> b!4505528 (= e!2806746 (addToMapMapFromBucket!657 (_2!28772 (h!56384 (t!357645 (toList!4267 lt!1684133)))) (extractMap!1186 (t!357645 (t!357645 (toList!4267 lt!1684133))))))))

(declare-fun b!4505529 () Bool)

(assert (=> b!4505529 (= e!2806746 (ListMap!3530 Nil!50558))))

(assert (= (and d!1384743 c!768332) b!4505528))

(assert (= (and d!1384743 (not c!768332)) b!4505529))

(declare-fun m!5241139 () Bool)

(assert (=> d!1384743 m!5241139))

(declare-fun m!5241141 () Bool)

(assert (=> d!1384743 m!5241141))

(declare-fun m!5241143 () Bool)

(assert (=> b!4505528 m!5241143))

(assert (=> b!4505528 m!5241143))

(declare-fun m!5241145 () Bool)

(assert (=> b!4505528 m!5241145))

(assert (=> b!4504899 d!1384743))

(declare-fun d!1384745 () Bool)

(declare-fun res!1873500 () Bool)

(declare-fun e!2806753 () Bool)

(assert (=> d!1384745 (=> res!1873500 e!2806753)))

(assert (=> d!1384745 (= res!1873500 ((_ is Nil!50559) (t!357645 (toList!4267 lm!1477))))))

(assert (=> d!1384745 (= (forall!10191 (t!357645 (toList!4267 lm!1477)) lambda!169407) e!2806753)))

(declare-fun b!4505542 () Bool)

(declare-fun e!2806754 () Bool)

(assert (=> b!4505542 (= e!2806753 e!2806754)))

(declare-fun res!1873501 () Bool)

(assert (=> b!4505542 (=> (not res!1873501) (not e!2806754))))

(assert (=> b!4505542 (= res!1873501 (dynLambda!21121 lambda!169407 (h!56384 (t!357645 (toList!4267 lm!1477)))))))

(declare-fun b!4505543 () Bool)

(assert (=> b!4505543 (= e!2806754 (forall!10191 (t!357645 (t!357645 (toList!4267 lm!1477))) lambda!169407))))

(assert (= (and d!1384745 (not res!1873500)) b!4505542))

(assert (= (and b!4505542 res!1873501) b!4505543))

(declare-fun b_lambda!153255 () Bool)

(assert (=> (not b_lambda!153255) (not b!4505542)))

(declare-fun m!5241147 () Bool)

(assert (=> b!4505542 m!5241147))

(declare-fun m!5241149 () Bool)

(assert (=> b!4505543 m!5241149))

(assert (=> b!4504898 d!1384745))

(declare-fun d!1384747 () Bool)

(declare-fun lt!1684884 () Bool)

(assert (=> d!1384747 (= lt!1684884 (select (content!8271 (toList!4267 lt!1684259)) lt!1684126))))

(declare-fun e!2806756 () Bool)

(assert (=> d!1384747 (= lt!1684884 e!2806756)))

(declare-fun res!1873503 () Bool)

(assert (=> d!1384747 (=> (not res!1873503) (not e!2806756))))

(assert (=> d!1384747 (= res!1873503 ((_ is Cons!50559) (toList!4267 lt!1684259)))))

(assert (=> d!1384747 (= (contains!13239 (toList!4267 lt!1684259) lt!1684126) lt!1684884)))

(declare-fun b!4505544 () Bool)

(declare-fun e!2806755 () Bool)

(assert (=> b!4505544 (= e!2806756 e!2806755)))

(declare-fun res!1873502 () Bool)

(assert (=> b!4505544 (=> res!1873502 e!2806755)))

(assert (=> b!4505544 (= res!1873502 (= (h!56384 (toList!4267 lt!1684259)) lt!1684126))))

(declare-fun b!4505545 () Bool)

(assert (=> b!4505545 (= e!2806755 (contains!13239 (t!357645 (toList!4267 lt!1684259)) lt!1684126))))

(assert (= (and d!1384747 res!1873503) b!4505544))

(assert (= (and b!4505544 (not res!1873502)) b!4505545))

(declare-fun m!5241151 () Bool)

(assert (=> d!1384747 m!5241151))

(declare-fun m!5241153 () Bool)

(assert (=> d!1384747 m!5241153))

(declare-fun m!5241155 () Bool)

(assert (=> b!4505545 m!5241155))

(assert (=> b!4504738 d!1384747))

(declare-fun d!1384749 () Bool)

(declare-fun lt!1684885 () Bool)

(assert (=> d!1384749 (= lt!1684885 (select (content!8274 e!2806308) key!3287))))

(declare-fun e!2806758 () Bool)

(assert (=> d!1384749 (= lt!1684885 e!2806758)))

(declare-fun res!1873504 () Bool)

(assert (=> d!1384749 (=> (not res!1873504) (not e!2806758))))

(assert (=> d!1384749 (= res!1873504 ((_ is Cons!50561) e!2806308))))

(assert (=> d!1384749 (= (contains!13243 e!2806308 key!3287) lt!1684885)))

(declare-fun b!4505546 () Bool)

(declare-fun e!2806757 () Bool)

(assert (=> b!4505546 (= e!2806758 e!2806757)))

(declare-fun res!1873505 () Bool)

(assert (=> b!4505546 (=> res!1873505 e!2806757)))

(assert (=> b!4505546 (= res!1873505 (= (h!56388 e!2806308) key!3287))))

(declare-fun b!4505547 () Bool)

(assert (=> b!4505547 (= e!2806757 (contains!13243 (t!357647 e!2806308) key!3287))))

(assert (= (and d!1384749 res!1873504) b!4505546))

(assert (= (and b!4505546 (not res!1873505)) b!4505547))

(declare-fun m!5241157 () Bool)

(assert (=> d!1384749 m!5241157))

(declare-fun m!5241159 () Bool)

(assert (=> d!1384749 m!5241159))

(declare-fun m!5241161 () Bool)

(assert (=> b!4505547 m!5241161))

(assert (=> bm!313604 d!1384749))

(declare-fun d!1384751 () Bool)

(declare-fun e!2806764 () Bool)

(assert (=> d!1384751 e!2806764))

(declare-fun res!1873508 () Bool)

(assert (=> d!1384751 (=> res!1873508 e!2806764)))

(declare-fun e!2806761 () Bool)

(assert (=> d!1384751 (= res!1873508 e!2806761)))

(declare-fun res!1873507 () Bool)

(assert (=> d!1384751 (=> (not res!1873507) (not e!2806761))))

(declare-fun lt!1684887 () Bool)

(assert (=> d!1384751 (= res!1873507 (not lt!1684887))))

(declare-fun lt!1684890 () Bool)

(assert (=> d!1384751 (= lt!1684887 lt!1684890)))

(declare-fun lt!1684888 () Unit!92671)

(declare-fun e!2806760 () Unit!92671)

(assert (=> d!1384751 (= lt!1684888 e!2806760)))

(declare-fun c!768339 () Bool)

(assert (=> d!1384751 (= c!768339 lt!1684890)))

(assert (=> d!1384751 (= lt!1684890 (containsKey!1698 (toList!4268 (extractMap!1186 (toList!4267 lt!1684132))) key!3287))))

(assert (=> d!1384751 (= (contains!13241 (extractMap!1186 (toList!4267 lt!1684132)) key!3287) lt!1684887)))

(declare-fun b!4505548 () Bool)

(declare-fun lt!1684891 () Unit!92671)

(assert (=> b!4505548 (= e!2806760 lt!1684891)))

(declare-fun lt!1684893 () Unit!92671)

(assert (=> b!4505548 (= lt!1684893 (lemmaContainsKeyImpliesGetValueByKeyDefined!941 (toList!4268 (extractMap!1186 (toList!4267 lt!1684132))) key!3287))))

(assert (=> b!4505548 (isDefined!8344 (getValueByKey!1037 (toList!4268 (extractMap!1186 (toList!4267 lt!1684132))) key!3287))))

(declare-fun lt!1684892 () Unit!92671)

(assert (=> b!4505548 (= lt!1684892 lt!1684893)))

(assert (=> b!4505548 (= lt!1684891 (lemmaInListThenGetKeysListContains!433 (toList!4268 (extractMap!1186 (toList!4267 lt!1684132))) key!3287))))

(declare-fun call!313696 () Bool)

(assert (=> b!4505548 call!313696))

(declare-fun b!4505549 () Bool)

(declare-fun e!2806762 () Unit!92671)

(declare-fun Unit!92850 () Unit!92671)

(assert (=> b!4505549 (= e!2806762 Unit!92850)))

(declare-fun bm!313689 () Bool)

(declare-fun e!2806763 () List!50685)

(assert (=> bm!313689 (= call!313696 (contains!13243 e!2806763 key!3287))))

(declare-fun c!768341 () Bool)

(assert (=> bm!313689 (= c!768341 c!768339)))

(declare-fun b!4505550 () Bool)

(assert (=> b!4505550 (= e!2806760 e!2806762)))

(declare-fun c!768340 () Bool)

(assert (=> b!4505550 (= c!768340 call!313696)))

(declare-fun b!4505551 () Bool)

(declare-fun e!2806759 () Bool)

(assert (=> b!4505551 (= e!2806759 (contains!13243 (keys!17536 (extractMap!1186 (toList!4267 lt!1684132))) key!3287))))

(declare-fun b!4505552 () Bool)

(assert (=> b!4505552 (= e!2806761 (not (contains!13243 (keys!17536 (extractMap!1186 (toList!4267 lt!1684132))) key!3287)))))

(declare-fun b!4505553 () Bool)

(assert (=> b!4505553 (= e!2806763 (keys!17536 (extractMap!1186 (toList!4267 lt!1684132))))))

(declare-fun b!4505554 () Bool)

(assert (=> b!4505554 false))

(declare-fun lt!1684889 () Unit!92671)

(declare-fun lt!1684886 () Unit!92671)

(assert (=> b!4505554 (= lt!1684889 lt!1684886)))

(assert (=> b!4505554 (containsKey!1698 (toList!4268 (extractMap!1186 (toList!4267 lt!1684132))) key!3287)))

(assert (=> b!4505554 (= lt!1684886 (lemmaInGetKeysListThenContainsKey!436 (toList!4268 (extractMap!1186 (toList!4267 lt!1684132))) key!3287))))

(declare-fun Unit!92851 () Unit!92671)

(assert (=> b!4505554 (= e!2806762 Unit!92851)))

(declare-fun b!4505555 () Bool)

(assert (=> b!4505555 (= e!2806764 e!2806759)))

(declare-fun res!1873506 () Bool)

(assert (=> b!4505555 (=> (not res!1873506) (not e!2806759))))

(assert (=> b!4505555 (= res!1873506 (isDefined!8344 (getValueByKey!1037 (toList!4268 (extractMap!1186 (toList!4267 lt!1684132))) key!3287)))))

(declare-fun b!4505556 () Bool)

(assert (=> b!4505556 (= e!2806763 (getKeysList!437 (toList!4268 (extractMap!1186 (toList!4267 lt!1684132)))))))

(assert (= (and d!1384751 c!768339) b!4505548))

(assert (= (and d!1384751 (not c!768339)) b!4505550))

(assert (= (and b!4505550 c!768340) b!4505554))

(assert (= (and b!4505550 (not c!768340)) b!4505549))

(assert (= (or b!4505548 b!4505550) bm!313689))

(assert (= (and bm!313689 c!768341) b!4505556))

(assert (= (and bm!313689 (not c!768341)) b!4505553))

(assert (= (and d!1384751 res!1873507) b!4505552))

(assert (= (and d!1384751 (not res!1873508)) b!4505555))

(assert (= (and b!4505555 res!1873506) b!4505551))

(declare-fun m!5241163 () Bool)

(assert (=> b!4505555 m!5241163))

(assert (=> b!4505555 m!5241163))

(declare-fun m!5241165 () Bool)

(assert (=> b!4505555 m!5241165))

(declare-fun m!5241167 () Bool)

(assert (=> b!4505554 m!5241167))

(declare-fun m!5241169 () Bool)

(assert (=> b!4505554 m!5241169))

(declare-fun m!5241171 () Bool)

(assert (=> b!4505556 m!5241171))

(assert (=> b!4505553 m!5239481))

(assert (=> b!4505553 m!5240925))

(assert (=> b!4505552 m!5239481))

(assert (=> b!4505552 m!5240925))

(assert (=> b!4505552 m!5240925))

(declare-fun m!5241173 () Bool)

(assert (=> b!4505552 m!5241173))

(assert (=> b!4505551 m!5239481))

(assert (=> b!4505551 m!5240925))

(assert (=> b!4505551 m!5240925))

(assert (=> b!4505551 m!5241173))

(assert (=> d!1384751 m!5241167))

(declare-fun m!5241175 () Bool)

(assert (=> b!4505548 m!5241175))

(assert (=> b!4505548 m!5241163))

(assert (=> b!4505548 m!5241163))

(assert (=> b!4505548 m!5241165))

(declare-fun m!5241177 () Bool)

(assert (=> b!4505548 m!5241177))

(declare-fun m!5241179 () Bool)

(assert (=> bm!313689 m!5241179))

(assert (=> d!1384387 d!1384751))

(assert (=> d!1384387 d!1384389))

(declare-fun d!1384753 () Bool)

(assert (=> d!1384753 (contains!13241 (extractMap!1186 (toList!4267 lt!1684132)) key!3287)))

(assert (=> d!1384753 true))

(declare-fun _$34!637 () Unit!92671)

(assert (=> d!1384753 (= (choose!29196 lt!1684132 key!3287 hashF!1107) _$34!637)))

(declare-fun bs!843444 () Bool)

(assert (= bs!843444 d!1384753))

(assert (=> bs!843444 m!5239481))

(assert (=> bs!843444 m!5239481))

(assert (=> bs!843444 m!5239957))

(assert (=> d!1384387 d!1384753))

(declare-fun d!1384755 () Bool)

(declare-fun res!1873515 () Bool)

(declare-fun e!2806771 () Bool)

(assert (=> d!1384755 (=> res!1873515 e!2806771)))

(assert (=> d!1384755 (= res!1873515 ((_ is Nil!50559) (toList!4267 lt!1684132)))))

(assert (=> d!1384755 (= (forall!10191 (toList!4267 lt!1684132) lambda!169451) e!2806771)))

(declare-fun b!4505571 () Bool)

(declare-fun e!2806772 () Bool)

(assert (=> b!4505571 (= e!2806771 e!2806772)))

(declare-fun res!1873516 () Bool)

(assert (=> b!4505571 (=> (not res!1873516) (not e!2806772))))

(assert (=> b!4505571 (= res!1873516 (dynLambda!21121 lambda!169451 (h!56384 (toList!4267 lt!1684132))))))

(declare-fun b!4505572 () Bool)

(assert (=> b!4505572 (= e!2806772 (forall!10191 (t!357645 (toList!4267 lt!1684132)) lambda!169451))))

(assert (= (and d!1384755 (not res!1873515)) b!4505571))

(assert (= (and b!4505571 res!1873516) b!4505572))

(declare-fun b_lambda!153257 () Bool)

(assert (=> (not b_lambda!153257) (not b!4505571)))

(declare-fun m!5241181 () Bool)

(assert (=> b!4505571 m!5241181))

(declare-fun m!5241183 () Bool)

(assert (=> b!4505572 m!5241183))

(assert (=> d!1384387 d!1384755))

(declare-fun d!1384757 () Bool)

(declare-fun c!768354 () Bool)

(assert (=> d!1384757 (= c!768354 ((_ is Nil!50559) (t!357645 (toList!4267 lm!1477))))))

(declare-fun e!2806782 () (InoxSet tuple2!50956))

(assert (=> d!1384757 (= (content!8271 (t!357645 (toList!4267 lm!1477))) e!2806782)))

(declare-fun b!4505592 () Bool)

(assert (=> b!4505592 (= e!2806782 ((as const (Array tuple2!50956 Bool)) false))))

(declare-fun b!4505593 () Bool)

(assert (=> b!4505593 (= e!2806782 ((_ map or) (store ((as const (Array tuple2!50956 Bool)) false) (h!56384 (t!357645 (toList!4267 lm!1477))) true) (content!8271 (t!357645 (t!357645 (toList!4267 lm!1477))))))))

(assert (= (and d!1384757 c!768354) b!4505592))

(assert (= (and d!1384757 (not c!768354)) b!4505593))

(declare-fun m!5241185 () Bool)

(assert (=> b!4505593 m!5241185))

(assert (=> b!4505593 m!5240697))

(assert (=> d!1384435 d!1384757))

(assert (=> b!4504682 d!1384573))

(assert (=> b!4504682 d!1384575))

(declare-fun d!1384759 () Bool)

(declare-fun res!1873520 () Bool)

(declare-fun e!2806783 () Bool)

(assert (=> d!1384759 (=> res!1873520 e!2806783)))

(assert (=> d!1384759 (= res!1873520 (not ((_ is Cons!50558) (t!357644 newBucket!178))))))

(assert (=> d!1384759 (= (noDuplicateKeys!1130 (t!357644 newBucket!178)) e!2806783)))

(declare-fun b!4505594 () Bool)

(declare-fun e!2806784 () Bool)

(assert (=> b!4505594 (= e!2806783 e!2806784)))

(declare-fun res!1873521 () Bool)

(assert (=> b!4505594 (=> (not res!1873521) (not e!2806784))))

(assert (=> b!4505594 (= res!1873521 (not (containsKey!1694 (t!357644 (t!357644 newBucket!178)) (_1!28771 (h!56383 (t!357644 newBucket!178))))))))

(declare-fun b!4505595 () Bool)

(assert (=> b!4505595 (= e!2806784 (noDuplicateKeys!1130 (t!357644 (t!357644 newBucket!178))))))

(assert (= (and d!1384759 (not res!1873520)) b!4505594))

(assert (= (and b!4505594 res!1873521) b!4505595))

(declare-fun m!5241187 () Bool)

(assert (=> b!4505594 m!5241187))

(declare-fun m!5241189 () Bool)

(assert (=> b!4505595 m!5241189))

(assert (=> b!4504875 d!1384759))

(declare-fun d!1384761 () Bool)

(assert (=> d!1384761 (= (invariantList!989 (toList!4268 lt!1684371)) (noDuplicatedKeys!248 (toList!4268 lt!1684371)))))

(declare-fun bs!843445 () Bool)

(assert (= bs!843445 d!1384761))

(declare-fun m!5241191 () Bool)

(assert (=> bs!843445 m!5241191))

(assert (=> d!1384429 d!1384761))

(declare-fun d!1384763 () Bool)

(declare-fun res!1873522 () Bool)

(declare-fun e!2806785 () Bool)

(assert (=> d!1384763 (=> res!1873522 e!2806785)))

(assert (=> d!1384763 (= res!1873522 ((_ is Nil!50559) (toList!4267 lt!1684133)))))

(assert (=> d!1384763 (= (forall!10191 (toList!4267 lt!1684133) lambda!169462) e!2806785)))

(declare-fun b!4505596 () Bool)

(declare-fun e!2806786 () Bool)

(assert (=> b!4505596 (= e!2806785 e!2806786)))

(declare-fun res!1873523 () Bool)

(assert (=> b!4505596 (=> (not res!1873523) (not e!2806786))))

(assert (=> b!4505596 (= res!1873523 (dynLambda!21121 lambda!169462 (h!56384 (toList!4267 lt!1684133))))))

(declare-fun b!4505597 () Bool)

(assert (=> b!4505597 (= e!2806786 (forall!10191 (t!357645 (toList!4267 lt!1684133)) lambda!169462))))

(assert (= (and d!1384763 (not res!1873522)) b!4505596))

(assert (= (and b!4505596 res!1873523) b!4505597))

(declare-fun b_lambda!153259 () Bool)

(assert (=> (not b_lambda!153259) (not b!4505596)))

(declare-fun m!5241193 () Bool)

(assert (=> b!4505596 m!5241193))

(declare-fun m!5241195 () Bool)

(assert (=> b!4505597 m!5241195))

(assert (=> d!1384429 d!1384763))

(assert (=> b!4504864 d!1384587))

(declare-fun d!1384765 () Bool)

(declare-fun lt!1684916 () Bool)

(assert (=> d!1384765 (= lt!1684916 (select (content!8274 e!2806335) key!3287))))

(declare-fun e!2806788 () Bool)

(assert (=> d!1384765 (= lt!1684916 e!2806788)))

(declare-fun res!1873524 () Bool)

(assert (=> d!1384765 (=> (not res!1873524) (not e!2806788))))

(assert (=> d!1384765 (= res!1873524 ((_ is Cons!50561) e!2806335))))

(assert (=> d!1384765 (= (contains!13243 e!2806335 key!3287) lt!1684916)))

(declare-fun b!4505598 () Bool)

(declare-fun e!2806787 () Bool)

(assert (=> b!4505598 (= e!2806788 e!2806787)))

(declare-fun res!1873525 () Bool)

(assert (=> b!4505598 (=> res!1873525 e!2806787)))

(assert (=> b!4505598 (= res!1873525 (= (h!56388 e!2806335) key!3287))))

(declare-fun b!4505599 () Bool)

(assert (=> b!4505599 (= e!2806787 (contains!13243 (t!357647 e!2806335) key!3287))))

(assert (= (and d!1384765 res!1873524) b!4505598))

(assert (= (and b!4505598 (not res!1873525)) b!4505599))

(declare-fun m!5241197 () Bool)

(assert (=> d!1384765 m!5241197))

(declare-fun m!5241199 () Bool)

(assert (=> d!1384765 m!5241199))

(declare-fun m!5241201 () Bool)

(assert (=> b!4505599 m!5241201))

(assert (=> bm!313606 d!1384765))

(assert (=> b!4504853 d!1384559))

(declare-fun d!1384767 () Bool)

(declare-fun lt!1684917 () Bool)

(assert (=> d!1384767 (= lt!1684917 (select (content!8274 e!2806328) key!3287))))

(declare-fun e!2806790 () Bool)

(assert (=> d!1384767 (= lt!1684917 e!2806790)))

(declare-fun res!1873526 () Bool)

(assert (=> d!1384767 (=> (not res!1873526) (not e!2806790))))

(assert (=> d!1384767 (= res!1873526 ((_ is Cons!50561) e!2806328))))

(assert (=> d!1384767 (= (contains!13243 e!2806328 key!3287) lt!1684917)))

(declare-fun b!4505600 () Bool)

(declare-fun e!2806789 () Bool)

(assert (=> b!4505600 (= e!2806790 e!2806789)))

(declare-fun res!1873527 () Bool)

(assert (=> b!4505600 (=> res!1873527 e!2806789)))

(assert (=> b!4505600 (= res!1873527 (= (h!56388 e!2806328) key!3287))))

(declare-fun b!4505601 () Bool)

(assert (=> b!4505601 (= e!2806789 (contains!13243 (t!357647 e!2806328) key!3287))))

(assert (= (and d!1384767 res!1873526) b!4505600))

(assert (= (and b!4505600 (not res!1873527)) b!4505601))

(declare-fun m!5241203 () Bool)

(assert (=> d!1384767 m!5241203))

(declare-fun m!5241205 () Bool)

(assert (=> d!1384767 m!5241205))

(declare-fun m!5241207 () Bool)

(assert (=> b!4505601 m!5241207))

(assert (=> bm!313605 d!1384767))

(declare-fun d!1384769 () Bool)

(assert (=> d!1384769 (= (isEmpty!28617 (toList!4267 lm!1477)) ((_ is Nil!50559) (toList!4267 lm!1477)))))

(assert (=> d!1384427 d!1384769))

(declare-fun d!1384771 () Bool)

(declare-fun lt!1684918 () Bool)

(assert (=> d!1384771 (= lt!1684918 (select (content!8271 (toList!4267 lm!1477)) (tuple2!50957 hash!344 lt!1684116)))))

(declare-fun e!2806792 () Bool)

(assert (=> d!1384771 (= lt!1684918 e!2806792)))

(declare-fun res!1873529 () Bool)

(assert (=> d!1384771 (=> (not res!1873529) (not e!2806792))))

(assert (=> d!1384771 (= res!1873529 ((_ is Cons!50559) (toList!4267 lm!1477)))))

(assert (=> d!1384771 (= (contains!13239 (toList!4267 lm!1477) (tuple2!50957 hash!344 lt!1684116)) lt!1684918)))

(declare-fun b!4505602 () Bool)

(declare-fun e!2806791 () Bool)

(assert (=> b!4505602 (= e!2806792 e!2806791)))

(declare-fun res!1873528 () Bool)

(assert (=> b!4505602 (=> res!1873528 e!2806791)))

(assert (=> b!4505602 (= res!1873528 (= (h!56384 (toList!4267 lm!1477)) (tuple2!50957 hash!344 lt!1684116)))))

(declare-fun b!4505603 () Bool)

(assert (=> b!4505603 (= e!2806791 (contains!13239 (t!357645 (toList!4267 lm!1477)) (tuple2!50957 hash!344 lt!1684116)))))

(assert (= (and d!1384771 res!1873529) b!4505602))

(assert (= (and b!4505602 (not res!1873528)) b!4505603))

(assert (=> d!1384771 m!5239601))

(declare-fun m!5241235 () Bool)

(assert (=> d!1384771 m!5241235))

(declare-fun m!5241237 () Bool)

(assert (=> b!4505603 m!5241237))

(assert (=> d!1384291 d!1384771))

(declare-fun d!1384773 () Bool)

(assert (=> d!1384773 (contains!13239 (toList!4267 lm!1477) (tuple2!50957 hash!344 lt!1684116))))

(assert (=> d!1384773 true))

(declare-fun _$14!1122 () Unit!92671)

(assert (=> d!1384773 (= (choose!29191 (toList!4267 lm!1477) hash!344 lt!1684116) _$14!1122)))

(declare-fun bs!843446 () Bool)

(assert (= bs!843446 d!1384773))

(assert (=> bs!843446 m!5239647))

(assert (=> d!1384291 d!1384773))

(assert (=> d!1384291 d!1384721))

(declare-fun tp!1337612 () Bool)

(declare-fun e!2806795 () Bool)

(declare-fun b!4505608 () Bool)

(assert (=> b!4505608 (= e!2806795 (and tp_is_empty!27797 tp_is_empty!27799 tp!1337612))))

(assert (=> b!4504909 (= tp!1337605 e!2806795)))

(assert (= (and b!4504909 ((_ is Cons!50558) (t!357644 (t!357644 newBucket!178)))) b!4505608))

(declare-fun e!2806796 () Bool)

(declare-fun b!4505609 () Bool)

(declare-fun tp!1337613 () Bool)

(assert (=> b!4505609 (= e!2806796 (and tp_is_empty!27797 tp_is_empty!27799 tp!1337613))))

(assert (=> b!4504914 (= tp!1337610 e!2806796)))

(assert (= (and b!4504914 ((_ is Cons!50558) (_2!28772 (h!56384 (toList!4267 lm!1477))))) b!4505609))

(declare-fun b!4505610 () Bool)

(declare-fun e!2806797 () Bool)

(declare-fun tp!1337614 () Bool)

(declare-fun tp!1337615 () Bool)

(assert (=> b!4505610 (= e!2806797 (and tp!1337614 tp!1337615))))

(assert (=> b!4504914 (= tp!1337611 e!2806797)))

(assert (= (and b!4504914 ((_ is Cons!50559) (t!357645 (toList!4267 lm!1477)))) b!4505610))

(declare-fun b_lambda!153261 () Bool)

(assert (= b_lambda!153241 (or d!1384371 b_lambda!153261)))

(declare-fun bs!843447 () Bool)

(declare-fun d!1384779 () Bool)

(assert (= bs!843447 (and d!1384779 d!1384371)))

(assert (=> bs!843447 (= (dynLambda!21121 lambda!169448 (h!56384 (t!357645 (toList!4267 lm!1477)))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477))))))))

(assert (=> bs!843447 m!5241007))

(assert (=> b!4505345 d!1384779))

(declare-fun b_lambda!153263 () Bool)

(assert (= b_lambda!153257 (or d!1384387 b_lambda!153263)))

(declare-fun bs!843448 () Bool)

(declare-fun d!1384781 () Bool)

(assert (= bs!843448 (and d!1384781 d!1384387)))

(assert (=> bs!843448 (= (dynLambda!21121 lambda!169451 (h!56384 (toList!4267 lt!1684132))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lt!1684132)))))))

(assert (=> bs!843448 m!5241063))

(assert (=> b!4505571 d!1384781))

(declare-fun b_lambda!153265 () Bool)

(assert (= b_lambda!153243 (or d!1384333 b_lambda!153265)))

(declare-fun bs!843449 () Bool)

(declare-fun d!1384783 () Bool)

(assert (= bs!843449 (and d!1384783 d!1384333)))

(assert (=> bs!843449 (= (dynLambda!21121 lambda!169436 (h!56384 (toList!4267 lt!1684132))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lt!1684132)))))))

(assert (=> bs!843449 m!5241063))

(assert (=> b!4505400 d!1384783))

(declare-fun b_lambda!153267 () Bool)

(assert (= b_lambda!153255 (or start!444824 b_lambda!153267)))

(declare-fun bs!843450 () Bool)

(declare-fun d!1384785 () Bool)

(assert (= bs!843450 (and d!1384785 start!444824)))

(assert (=> bs!843450 (= (dynLambda!21121 lambda!169407 (h!56384 (t!357645 (toList!4267 lm!1477)))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (t!357645 (toList!4267 lm!1477))))))))

(assert (=> bs!843450 m!5241007))

(assert (=> b!4505542 d!1384785))

(declare-fun b_lambda!153269 () Bool)

(assert (= b_lambda!153259 (or d!1384429 b_lambda!153269)))

(declare-fun bs!843451 () Bool)

(declare-fun d!1384787 () Bool)

(assert (= bs!843451 (and d!1384787 d!1384429)))

(assert (=> bs!843451 (= (dynLambda!21121 lambda!169462 (h!56384 (toList!4267 lt!1684133))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lt!1684133)))))))

(assert (=> bs!843451 m!5241115))

(assert (=> b!4505596 d!1384787))

(declare-fun b_lambda!153271 () Bool)

(assert (= b_lambda!153231 (or d!1384413 b_lambda!153271)))

(declare-fun bs!843452 () Bool)

(declare-fun d!1384789 () Bool)

(assert (= bs!843452 (and d!1384789 d!1384413)))

(assert (=> bs!843452 (= (dynLambda!21121 lambda!169458 (h!56384 (toList!4267 lt!1684114))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lt!1684114)))))))

(assert (=> bs!843452 m!5240261))

(assert (=> b!4505055 d!1384789))

(declare-fun b_lambda!153273 () Bool)

(assert (= b_lambda!153229 (or d!1384271 b_lambda!153273)))

(declare-fun bs!843453 () Bool)

(declare-fun d!1384791 () Bool)

(assert (= bs!843453 (and d!1384791 d!1384271)))

(assert (=> bs!843453 (= (dynLambda!21121 lambda!169416 (h!56384 (toList!4267 lm!1477))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lm!1477)))))))

(assert (=> bs!843453 m!5240109))

(assert (=> b!4504983 d!1384791))

(declare-fun b_lambda!153275 () Bool)

(assert (= b_lambda!153235 (or d!1384425 b_lambda!153275)))

(declare-fun bs!843454 () Bool)

(declare-fun d!1384793 () Bool)

(assert (= bs!843454 (and d!1384793 d!1384425)))

(assert (=> bs!843454 (= (dynLambda!21121 lambda!169461 (h!56384 (toList!4267 lm!1477))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lm!1477)))))))

(assert (=> bs!843454 m!5240109))

(assert (=> b!4505190 d!1384793))

(declare-fun b_lambda!153277 () Bool)

(assert (= b_lambda!153251 (or d!1384405 b_lambda!153277)))

(declare-fun bs!843455 () Bool)

(declare-fun d!1384797 () Bool)

(assert (= bs!843455 (and d!1384797 d!1384405)))

(assert (=> bs!843455 (= (dynLambda!21121 lambda!169457 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119)))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 (+!1482 lt!1684132 lt!1684119))))))))

(assert (=> bs!843455 m!5240813))

(assert (=> b!4505498 d!1384797))

(declare-fun b_lambda!153279 () Bool)

(assert (= b_lambda!153253 (or d!1384389 b_lambda!153279)))

(declare-fun bs!843456 () Bool)

(declare-fun d!1384799 () Bool)

(assert (= bs!843456 (and d!1384799 d!1384389)))

(assert (=> bs!843456 (= (dynLambda!21121 lambda!169452 (h!56384 (toList!4267 lt!1684132))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lt!1684132)))))))

(assert (=> bs!843456 m!5241063))

(assert (=> b!4505509 d!1384799))

(declare-fun b_lambda!153281 () Bool)

(assert (= b_lambda!153227 (or d!1384395 b_lambda!153281)))

(declare-fun bs!843457 () Bool)

(declare-fun d!1384801 () Bool)

(assert (= bs!843457 (and d!1384801 d!1384395)))

(assert (=> bs!843457 (= (dynLambda!21121 lambda!169453 (h!56384 (toList!4267 lm!1477))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lm!1477)))))))

(assert (=> bs!843457 m!5240109))

(assert (=> b!4504956 d!1384801))

(declare-fun b_lambda!153283 () Bool)

(assert (= b_lambda!153233 (or d!1384321 b_lambda!153283)))

(declare-fun bs!843458 () Bool)

(declare-fun d!1384803 () Bool)

(assert (= bs!843458 (and d!1384803 d!1384321)))

(assert (=> bs!843458 (= (dynLambda!21122 lambda!169430 (h!56383 newBucket!178)) (= (hash!2707 hashF!1107 (_1!28771 (h!56383 newBucket!178))) hash!344))))

(declare-fun m!5241259 () Bool)

(assert (=> bs!843458 m!5241259))

(assert (=> b!4505079 d!1384803))

(declare-fun b_lambda!153285 () Bool)

(assert (= b_lambda!153225 (or d!1384433 b_lambda!153285)))

(declare-fun bs!843459 () Bool)

(declare-fun d!1384805 () Bool)

(assert (= bs!843459 (and d!1384805 d!1384433)))

(assert (=> bs!843459 (= (dynLambda!21121 lambda!169465 (h!56384 (toList!4267 lm!1477))) (allKeysSameHash!984 (_2!28772 (h!56384 (toList!4267 lm!1477))) (_1!28772 (h!56384 (toList!4267 lm!1477))) hashF!1107))))

(declare-fun m!5241261 () Bool)

(assert (=> bs!843459 m!5241261))

(assert (=> b!4504954 d!1384805))

(declare-fun b_lambda!153287 () Bool)

(assert (= b_lambda!153237 (or start!444824 b_lambda!153287)))

(assert (=> d!1384617 d!1384439))

(declare-fun b_lambda!153289 () Bool)

(assert (= b_lambda!153249 (or d!1384401 b_lambda!153289)))

(declare-fun bs!843460 () Bool)

(declare-fun d!1384807 () Bool)

(assert (= bs!843460 (and d!1384807 d!1384401)))

(assert (=> bs!843460 (= (dynLambda!21121 lambda!169456 (h!56384 (toList!4267 lt!1684132))) (noDuplicateKeys!1130 (_2!28772 (h!56384 (toList!4267 lt!1684132)))))))

(assert (=> bs!843460 m!5241063))

(assert (=> b!4505466 d!1384807))

(check-sat (not bm!313641) (not bm!313653) (not b!4505608) (not d!1384613) (not b!4505084) (not d!1384679) (not d!1384577) (not b!4505346) (not b!4505334) (not d!1384677) (not b!4504987) (not b!4505597) (not b!4504997) (not b!4505496) (not b!4505370) (not d!1384545) (not b!4505247) (not b!4505260) (not bm!313679) (not b_lambda!153271) (not b!4505504) (not b!4505552) (not bm!313645) (not b!4505040) (not b!4505147) (not b!4505411) (not b_lambda!153267) (not bs!843448) (not b!4505528) (not b!4505369) (not b!4505502) (not b!4505415) (not d!1384499) tp_is_empty!27797 (not b!4505413) (not b!4505152) (not b_lambda!153277) (not b!4505354) (not b_lambda!153269) (not b!4505282) (not d!1384497) (not b!4505553) (not b!4505601) (not b!4505208) (not b!4505186) (not bm!313626) (not d!1384749) (not b!4505088) (not d!1384737) (not d!1384771) (not b!4505499) (not b!4505200) (not b!4505255) (not b!4505547) (not bs!843457) (not d!1384611) (not b!4505472) (not bm!313689) (not d!1384457) (not b!4505073) (not d!1384469) (not b!4505423) (not b!4505086) (not b!4504939) (not d!1384565) (not b!4505288) (not bs!843456) (not d!1384663) (not d!1384765) (not d!1384635) (not b!4505468) (not b!4505274) (not b!4505368) (not bm!313674) (not b!4505594) (not b!4504982) (not b!4505293) (not b!4505185) (not b!4505439) (not b!4505263) (not b!4505056) (not d!1384743) (not b!4505391) (not bm!313650) (not d!1384493) (not b!4505229) (not d!1384741) (not b!4505204) (not b!4505501) (not b_lambda!153289) (not b_lambda!153275) (not bm!313613) (not b!4505087) (not b!4505603) (not d!1384607) (not b_lambda!153279) (not bm!313666) (not b!4505243) (not bm!313677) (not b!4505551) (not d!1384549) (not b!4505505) (not d!1384773) (not b!4505248) (not bs!843458) (not b!4505212) (not d!1384767) (not bm!313614) (not bm!313628) (not b!4505133) (not d!1384559) (not b!4505203) (not b!4505440) (not b!4505412) (not b!4505363) (not b!4505441) (not b_lambda!153287) (not b!4505188) (not b!4505276) (not b!4505141) (not b!4505545) (not b!4505510) (not bs!843459) (not d!1384587) (not b!4505216) (not d!1384581) (not b!4505176) (not d!1384599) (not d!1384655) (not b!4505359) (not b!4505035) (not b!4505230) (not b!4505364) (not b!4505512) (not bm!313667) (not bs!843449) (not b!4505610) (not b!4505488) (not b!4505129) (not b!4505251) (not b!4505279) (not b!4504985) (not bs!843454) (not b!4505294) (not b!4505184) (not b!4505219) (not bm!313675) (not d!1384731) (not b!4505199) (not b!4505051) (not d!1384733) (not d!1384673) (not b!4505155) (not b!4505246) (not d!1384683) (not bm!313680) (not d!1384543) (not b!4505401) (not b!4504971) (not b!4504980) (not d!1384631) (not b!4505269) (not b!4505556) (not b!4505174) (not b!4504990) (not b!4504938) (not b!4505257) (not d!1384595) (not b!4505144) (not d!1384553) (not b!4505205) (not b!4505262) (not b_lambda!153283) (not b!4505159) (not b_lambda!153221) (not d!1384459) (not b_lambda!153265) (not d!1384719) (not d!1384761) (not b!4505042) (not b!4505338) (not b!4505030) (not b_lambda!153285) (not b!4505081) (not b!4505336) (not b!4505372) (not b!4505390) (not b_lambda!153263) (not b!4504949) (not b!4505281) (not b!4504969) (not b!4505355) (not d!1384747) (not b!4504976) (not b!4505145) (not bs!843460) (not d!1384585) (not b!4504941) (not d!1384525) (not b!4504952) (not b!4505554) (not b!4505508) (not b!4505515) (not d!1384477) (not d!1384481) (not d!1384633) (not d!1384619) (not d!1384551) (not d!1384651) (not b!4505235) (not d!1384593) (not d!1384713) (not bs!843450) (not d!1384513) (not bs!843452) (not b!4505181) (not b!4505131) (not bm!313625) (not bm!313643) (not b!4505264) (not b!4505197) (not b!4505349) (not b!4505342) (not b!4505085) (not bm!313615) (not b!4505089) (not b!4505434) (not bs!843447) (not d!1384603) (not b!4505352) (not b!4505497) (not d!1384541) (not b!4505189) (not d!1384659) (not b!4505041) (not b!4505436) (not d!1384465) (not b!4505062) (not b!4505595) (not b!4505187) (not b!4505191) (not b!4505555) (not b!4505156) (not b!4504979) (not b!4504925) (not b!4505511) (not b!4505140) (not d!1384449) (not b!4505609) (not d!1384487) (not b!4505469) (not b!4505360) (not d!1384667) (not b!4505202) (not b!4505254) (not b!4505335) (not b!4504960) (not d!1384681) (not d!1384527) (not b!4505361) (not d!1384563) (not bm!313682) (not b!4505572) (not d!1384639) (not d!1384571) (not d!1384485) (not b!4505283) (not bm!313656) (not d!1384727) (not d!1384645) (not bm!313647) (not bm!313681) (not b!4505226) (not b!4505500) (not d!1384519) (not b!4505470) (not bm!313642) (not b!4505290) (not b!4505271) (not b!4505437) (not b!4505198) (not b!4505399) (not b!4505228) (not b!4505548) (not b!4504963) (not b!4505044) (not b!4505137) (not b_lambda!153281) (not bs!843451) (not b!4505543) (not b!4505157) (not d!1384649) (not b!4505593) (not bm!313624) (not d!1384573) (not d!1384601) (not bs!843453) (not d!1384583) (not b!4504937) (not b!4505599) (not b!4505495) tp_is_empty!27799 (not b!4505180) (not bm!313627) (not b!4505167) (not bm!313673) (not d!1384751) (not b!4505175) (not b!4505344) (not b!4505237) (not b_lambda!153223) (not b!4505221) (not b!4505513) (not bm!313646) (not d!1384753) (not b!4505054) (not d!1384589) (not d!1384509) (not b!4504955) (not b!4505467) (not d!1384637) (not b!4505139) (not b!4505080) (not d!1384605) (not b!4504996) (not b!4505223) (not b!4504973) (not b!4505037) (not d!1384505) (not bs!843455) (not d!1384547) (not b_lambda!153273) (not b_lambda!153261) (not bm!313668) (not b!4505135) (not d!1384445) (not b!4504957) (not b!4505161) (not b!4504984) (not b!4505330) (not b!4505149) (not bm!313678) (not bm!313644))
(check-sat)
