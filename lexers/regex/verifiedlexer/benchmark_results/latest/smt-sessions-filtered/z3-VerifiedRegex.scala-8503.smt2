; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!442856 () Bool)

(assert start!442856)

(declare-fun b!4492312 () Bool)

(declare-fun e!2798169 () Bool)

(declare-fun e!2798174 () Bool)

(assert (=> b!4492312 (= e!2798169 e!2798174)))

(declare-fun res!1866967 () Bool)

(assert (=> b!4492312 (=> res!1866967 e!2798174)))

(declare-datatypes ((K!11920 0))(
  ( (K!11921 (val!17807 Int)) )
))
(declare-datatypes ((V!12166 0))(
  ( (V!12167 (val!17808 Int)) )
))
(declare-datatypes ((tuple2!50882 0))(
  ( (tuple2!50883 (_1!28735 K!11920) (_2!28735 V!12166)) )
))
(declare-datatypes ((List!50630 0))(
  ( (Nil!50506) (Cons!50506 (h!56315 tuple2!50882) (t!357588 List!50630)) )
))
(declare-datatypes ((tuple2!50884 0))(
  ( (tuple2!50885 (_1!28736 (_ BitVec 64)) (_2!28736 List!50630)) )
))
(declare-datatypes ((List!50631 0))(
  ( (Nil!50507) (Cons!50507 (h!56316 tuple2!50884) (t!357589 List!50631)) )
))
(declare-datatypes ((ListLongMap!2863 0))(
  ( (ListLongMap!2864 (toList!4231 List!50631)) )
))
(declare-fun lt!1675575 () ListLongMap!2863)

(declare-datatypes ((ListMap!3493 0))(
  ( (ListMap!3494 (toList!4232 List!50630)) )
))
(declare-fun lt!1675581 () ListMap!3493)

(declare-fun lm!1477 () ListLongMap!2863)

(declare-fun eq!569 (ListMap!3493 ListMap!3493) Bool)

(declare-fun extractMap!1168 (List!50631) ListMap!3493)

(declare-fun +!1450 (ListLongMap!2863 tuple2!50884) ListLongMap!2863)

(declare-fun head!9320 (ListLongMap!2863) tuple2!50884)

(assert (=> b!4492312 (= res!1866967 (not (eq!569 (extractMap!1168 (toList!4231 (+!1450 lt!1675575 (head!9320 lm!1477)))) lt!1675581)))))

(declare-fun key!3287 () K!11920)

(declare-fun newBucket!178 () List!50630)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun lt!1675583 () ListMap!3493)

(declare-fun -!338 (ListMap!3493 K!11920) ListMap!3493)

(assert (=> b!4492312 (eq!569 (extractMap!1168 (toList!4231 (+!1450 lt!1675575 (tuple2!50885 hash!344 newBucket!178)))) (-!338 lt!1675583 key!3287))))

(declare-datatypes ((Hashable!5507 0))(
  ( (HashableExt!5506 (__x!31210 Int)) )
))
(declare-fun hashF!1107 () Hashable!5507)

(declare-datatypes ((Unit!90936 0))(
  ( (Unit!90937) )
))
(declare-fun lt!1675577 () Unit!90936)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!97 (ListLongMap!2863 (_ BitVec 64) List!50630 K!11920 Hashable!5507) Unit!90936)

(assert (=> b!4492312 (= lt!1675577 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!97 lt!1675575 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4492313 () Bool)

(declare-fun e!2798166 () Unit!90936)

(declare-fun Unit!90938 () Unit!90936)

(assert (=> b!4492313 (= e!2798166 Unit!90938)))

(declare-fun lt!1675574 () Unit!90936)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!100 (ListLongMap!2863 K!11920 Hashable!5507) Unit!90936)

(assert (=> b!4492313 (= lt!1675574 (lemmaNotInItsHashBucketThenNotInMap!100 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4492313 false))

(declare-fun b!4492314 () Bool)

(declare-fun e!2798167 () Bool)

(declare-fun e!2798175 () Bool)

(assert (=> b!4492314 (= e!2798167 e!2798175)))

(declare-fun res!1866960 () Bool)

(assert (=> b!4492314 (=> (not res!1866960) (not e!2798175))))

(declare-fun contains!13155 (ListMap!3493 K!11920) Bool)

(assert (=> b!4492314 (= res!1866960 (contains!13155 lt!1675581 key!3287))))

(assert (=> b!4492314 (= lt!1675581 (extractMap!1168 (toList!4231 lm!1477)))))

(declare-fun b!4492315 () Bool)

(declare-fun res!1866968 () Bool)

(declare-fun e!2798177 () Bool)

(assert (=> b!4492315 (=> res!1866968 e!2798177)))

(get-info :version)

(assert (=> b!4492315 (= res!1866968 (or ((_ is Nil!50507) (toList!4231 lm!1477)) (= (_1!28736 (h!56316 (toList!4231 lm!1477))) hash!344)))))

(declare-fun b!4492316 () Bool)

(declare-fun res!1866959 () Bool)

(declare-fun e!2798176 () Bool)

(assert (=> b!4492316 (=> res!1866959 e!2798176)))

(declare-fun lt!1675578 () List!50630)

(declare-fun apply!11849 (ListLongMap!2863 (_ BitVec 64)) List!50630)

(assert (=> b!4492316 (= res!1866959 (not (= (apply!11849 lt!1675575 hash!344) lt!1675578)))))

(declare-fun b!4492317 () Bool)

(declare-fun e!2798170 () Bool)

(assert (=> b!4492317 (= e!2798170 (not e!2798177))))

(declare-fun res!1866956 () Bool)

(assert (=> b!4492317 (=> res!1866956 e!2798177)))

(declare-fun removePairForKey!739 (List!50630 K!11920) List!50630)

(assert (=> b!4492317 (= res!1866956 (not (= newBucket!178 (removePairForKey!739 lt!1675578 key!3287))))))

(declare-fun lt!1675580 () tuple2!50884)

(declare-fun lt!1675576 () Unit!90936)

(declare-fun lambda!167467 () Int)

(declare-fun forallContained!2399 (List!50631 Int tuple2!50884) Unit!90936)

(assert (=> b!4492317 (= lt!1675576 (forallContained!2399 (toList!4231 lm!1477) lambda!167467 lt!1675580))))

(declare-fun contains!13156 (List!50631 tuple2!50884) Bool)

(assert (=> b!4492317 (contains!13156 (toList!4231 lm!1477) lt!1675580)))

(assert (=> b!4492317 (= lt!1675580 (tuple2!50885 hash!344 lt!1675578))))

(declare-fun lt!1675572 () Unit!90936)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!624 (List!50631 (_ BitVec 64) List!50630) Unit!90936)

(assert (=> b!4492317 (= lt!1675572 (lemmaGetValueByKeyImpliesContainsTuple!624 (toList!4231 lm!1477) hash!344 lt!1675578))))

(assert (=> b!4492317 (= lt!1675578 (apply!11849 lm!1477 hash!344))))

(declare-fun lt!1675582 () (_ BitVec 64))

(declare-fun contains!13157 (ListLongMap!2863 (_ BitVec 64)) Bool)

(assert (=> b!4492317 (contains!13157 lm!1477 lt!1675582)))

(declare-fun lt!1675585 () Unit!90936)

(declare-fun lemmaInGenMapThenLongMapContainsHash!186 (ListLongMap!2863 K!11920 Hashable!5507) Unit!90936)

(assert (=> b!4492317 (= lt!1675585 (lemmaInGenMapThenLongMapContainsHash!186 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4492318 () Bool)

(declare-fun res!1866957 () Bool)

(assert (=> b!4492318 (=> (not res!1866957) (not e!2798170))))

(declare-fun allKeysSameHash!966 (List!50630 (_ BitVec 64) Hashable!5507) Bool)

(assert (=> b!4492318 (= res!1866957 (allKeysSameHash!966 newBucket!178 hash!344 hashF!1107))))

(declare-fun e!2798173 () Bool)

(declare-fun b!4492320 () Bool)

(declare-fun tp!1337274 () Bool)

(declare-fun tp_is_empty!27725 () Bool)

(declare-fun tp_is_empty!27727 () Bool)

(assert (=> b!4492320 (= e!2798173 (and tp_is_empty!27725 tp_is_empty!27727 tp!1337274))))

(declare-fun b!4492321 () Bool)

(assert (=> b!4492321 (= e!2798175 e!2798170)))

(declare-fun res!1866963 () Bool)

(assert (=> b!4492321 (=> (not res!1866963) (not e!2798170))))

(assert (=> b!4492321 (= res!1866963 (= lt!1675582 hash!344))))

(declare-fun hash!2643 (Hashable!5507 K!11920) (_ BitVec 64))

(assert (=> b!4492321 (= lt!1675582 (hash!2643 hashF!1107 key!3287))))

(declare-fun b!4492322 () Bool)

(assert (=> b!4492322 (= e!2798177 e!2798176)))

(declare-fun res!1866962 () Bool)

(assert (=> b!4492322 (=> res!1866962 e!2798176)))

(assert (=> b!4492322 (= res!1866962 (not (contains!13157 lt!1675575 hash!344)))))

(declare-fun tail!7642 (ListLongMap!2863) ListLongMap!2863)

(assert (=> b!4492322 (= lt!1675575 (tail!7642 lm!1477))))

(declare-fun b!4492323 () Bool)

(declare-fun res!1866958 () Bool)

(assert (=> b!4492323 (=> res!1866958 e!2798177)))

(declare-fun noDuplicateKeys!1112 (List!50630) Bool)

(assert (=> b!4492323 (= res!1866958 (not (noDuplicateKeys!1112 newBucket!178)))))

(declare-fun b!4492324 () Bool)

(declare-fun res!1866966 () Bool)

(assert (=> b!4492324 (=> (not res!1866966) (not e!2798167))))

(declare-fun allKeysSameHashInMap!1219 (ListLongMap!2863 Hashable!5507) Bool)

(assert (=> b!4492324 (= res!1866966 (allKeysSameHashInMap!1219 lm!1477 hashF!1107))))

(declare-fun b!4492325 () Bool)

(declare-fun forall!10143 (List!50631 Int) Bool)

(assert (=> b!4492325 (= e!2798174 (forall!10143 (toList!4231 lm!1477) lambda!167467))))

(declare-fun b!4492326 () Bool)

(declare-fun e!2798168 () Bool)

(declare-fun tp!1337275 () Bool)

(assert (=> b!4492326 (= e!2798168 tp!1337275)))

(declare-fun b!4492327 () Bool)

(declare-fun e!2798172 () Bool)

(assert (=> b!4492327 (= e!2798172 e!2798169)))

(declare-fun res!1866961 () Bool)

(assert (=> b!4492327 (=> res!1866961 e!2798169)))

(assert (=> b!4492327 (= res!1866961 (not (contains!13155 (extractMap!1168 (t!357589 (toList!4231 lm!1477))) key!3287)))))

(assert (=> b!4492327 (contains!13155 lt!1675583 key!3287)))

(assert (=> b!4492327 (= lt!1675583 (extractMap!1168 (toList!4231 lt!1675575)))))

(declare-fun lt!1675584 () Unit!90936)

(declare-fun lemmaListContainsThenExtractedMapContains!82 (ListLongMap!2863 K!11920 Hashable!5507) Unit!90936)

(assert (=> b!4492327 (= lt!1675584 (lemmaListContainsThenExtractedMapContains!82 lt!1675575 key!3287 hashF!1107))))

(declare-fun b!4492319 () Bool)

(declare-fun e!2798171 () Bool)

(assert (=> b!4492319 (= e!2798176 e!2798171)))

(declare-fun res!1866965 () Bool)

(assert (=> b!4492319 (=> res!1866965 e!2798171)))

(declare-fun lt!1675586 () Bool)

(assert (=> b!4492319 (= res!1866965 lt!1675586)))

(declare-fun lt!1675579 () Unit!90936)

(assert (=> b!4492319 (= lt!1675579 e!2798166)))

(declare-fun c!765267 () Bool)

(assert (=> b!4492319 (= c!765267 lt!1675586)))

(declare-fun containsKey!1644 (List!50630 K!11920) Bool)

(assert (=> b!4492319 (= lt!1675586 (not (containsKey!1644 lt!1675578 key!3287)))))

(declare-fun res!1866969 () Bool)

(assert (=> start!442856 (=> (not res!1866969) (not e!2798167))))

(assert (=> start!442856 (= res!1866969 (forall!10143 (toList!4231 lm!1477) lambda!167467))))

(assert (=> start!442856 e!2798167))

(assert (=> start!442856 true))

(declare-fun inv!66104 (ListLongMap!2863) Bool)

(assert (=> start!442856 (and (inv!66104 lm!1477) e!2798168)))

(assert (=> start!442856 tp_is_empty!27725))

(assert (=> start!442856 e!2798173))

(declare-fun b!4492328 () Bool)

(declare-fun Unit!90939 () Unit!90936)

(assert (=> b!4492328 (= e!2798166 Unit!90939)))

(declare-fun b!4492329 () Bool)

(declare-fun res!1866964 () Bool)

(assert (=> b!4492329 (=> res!1866964 e!2798176)))

(assert (=> b!4492329 (= res!1866964 (not (contains!13156 (t!357589 (toList!4231 lm!1477)) lt!1675580)))))

(declare-fun b!4492330 () Bool)

(assert (=> b!4492330 (= e!2798171 e!2798172)))

(declare-fun res!1866970 () Bool)

(assert (=> b!4492330 (=> res!1866970 e!2798172)))

(declare-fun containsKeyBiggerList!92 (List!50631 K!11920) Bool)

(assert (=> b!4492330 (= res!1866970 (not (containsKeyBiggerList!92 (t!357589 (toList!4231 lm!1477)) key!3287)))))

(assert (=> b!4492330 (containsKeyBiggerList!92 (toList!4231 lt!1675575) key!3287)))

(declare-fun lt!1675573 () Unit!90936)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!28 (ListLongMap!2863 K!11920 Hashable!5507) Unit!90936)

(assert (=> b!4492330 (= lt!1675573 (lemmaInLongMapThenContainsKeyBiggerList!28 lt!1675575 key!3287 hashF!1107))))

(assert (= (and start!442856 res!1866969) b!4492324))

(assert (= (and b!4492324 res!1866966) b!4492314))

(assert (= (and b!4492314 res!1866960) b!4492321))

(assert (= (and b!4492321 res!1866963) b!4492318))

(assert (= (and b!4492318 res!1866957) b!4492317))

(assert (= (and b!4492317 (not res!1866956)) b!4492323))

(assert (= (and b!4492323 (not res!1866958)) b!4492315))

(assert (= (and b!4492315 (not res!1866968)) b!4492322))

(assert (= (and b!4492322 (not res!1866962)) b!4492316))

(assert (= (and b!4492316 (not res!1866959)) b!4492329))

(assert (= (and b!4492329 (not res!1866964)) b!4492319))

(assert (= (and b!4492319 c!765267) b!4492313))

(assert (= (and b!4492319 (not c!765267)) b!4492328))

(assert (= (and b!4492319 (not res!1866965)) b!4492330))

(assert (= (and b!4492330 (not res!1866970)) b!4492327))

(assert (= (and b!4492327 (not res!1866961)) b!4492312))

(assert (= (and b!4492312 (not res!1866967)) b!4492325))

(assert (= start!442856 b!4492326))

(assert (= (and start!442856 ((_ is Cons!50506) newBucket!178)) b!4492320))

(declare-fun m!5217675 () Bool)

(assert (=> b!4492312 m!5217675))

(declare-fun m!5217677 () Bool)

(assert (=> b!4492312 m!5217677))

(declare-fun m!5217679 () Bool)

(assert (=> b!4492312 m!5217679))

(assert (=> b!4492312 m!5217677))

(declare-fun m!5217681 () Bool)

(assert (=> b!4492312 m!5217681))

(assert (=> b!4492312 m!5217681))

(declare-fun m!5217683 () Bool)

(assert (=> b!4492312 m!5217683))

(assert (=> b!4492312 m!5217675))

(declare-fun m!5217685 () Bool)

(assert (=> b!4492312 m!5217685))

(declare-fun m!5217687 () Bool)

(assert (=> b!4492312 m!5217687))

(assert (=> b!4492312 m!5217685))

(declare-fun m!5217689 () Bool)

(assert (=> b!4492312 m!5217689))

(declare-fun m!5217691 () Bool)

(assert (=> b!4492312 m!5217691))

(declare-fun m!5217693 () Bool)

(assert (=> b!4492313 m!5217693))

(declare-fun m!5217695 () Bool)

(assert (=> b!4492318 m!5217695))

(declare-fun m!5217697 () Bool)

(assert (=> b!4492324 m!5217697))

(declare-fun m!5217699 () Bool)

(assert (=> b!4492321 m!5217699))

(declare-fun m!5217701 () Bool)

(assert (=> b!4492329 m!5217701))

(declare-fun m!5217703 () Bool)

(assert (=> b!4492314 m!5217703))

(declare-fun m!5217705 () Bool)

(assert (=> b!4492314 m!5217705))

(declare-fun m!5217707 () Bool)

(assert (=> b!4492322 m!5217707))

(declare-fun m!5217709 () Bool)

(assert (=> b!4492322 m!5217709))

(declare-fun m!5217711 () Bool)

(assert (=> b!4492319 m!5217711))

(declare-fun m!5217713 () Bool)

(assert (=> start!442856 m!5217713))

(declare-fun m!5217715 () Bool)

(assert (=> start!442856 m!5217715))

(declare-fun m!5217717 () Bool)

(assert (=> b!4492330 m!5217717))

(declare-fun m!5217719 () Bool)

(assert (=> b!4492330 m!5217719))

(declare-fun m!5217721 () Bool)

(assert (=> b!4492330 m!5217721))

(declare-fun m!5217723 () Bool)

(assert (=> b!4492316 m!5217723))

(declare-fun m!5217725 () Bool)

(assert (=> b!4492317 m!5217725))

(declare-fun m!5217727 () Bool)

(assert (=> b!4492317 m!5217727))

(declare-fun m!5217729 () Bool)

(assert (=> b!4492317 m!5217729))

(declare-fun m!5217731 () Bool)

(assert (=> b!4492317 m!5217731))

(declare-fun m!5217733 () Bool)

(assert (=> b!4492317 m!5217733))

(declare-fun m!5217735 () Bool)

(assert (=> b!4492317 m!5217735))

(declare-fun m!5217737 () Bool)

(assert (=> b!4492317 m!5217737))

(assert (=> b!4492325 m!5217713))

(declare-fun m!5217739 () Bool)

(assert (=> b!4492327 m!5217739))

(declare-fun m!5217741 () Bool)

(assert (=> b!4492327 m!5217741))

(declare-fun m!5217743 () Bool)

(assert (=> b!4492327 m!5217743))

(declare-fun m!5217745 () Bool)

(assert (=> b!4492327 m!5217745))

(assert (=> b!4492327 m!5217741))

(declare-fun m!5217747 () Bool)

(assert (=> b!4492327 m!5217747))

(declare-fun m!5217749 () Bool)

(assert (=> b!4492323 m!5217749))

(check-sat (not b!4492320) (not b!4492319) (not b!4492327) (not b!4492322) (not b!4492316) (not b!4492312) (not start!442856) tp_is_empty!27727 (not b!4492323) (not b!4492321) (not b!4492314) tp_is_empty!27725 (not b!4492317) (not b!4492313) (not b!4492318) (not b!4492329) (not b!4492325) (not b!4492324) (not b!4492326) (not b!4492330))
(check-sat)
