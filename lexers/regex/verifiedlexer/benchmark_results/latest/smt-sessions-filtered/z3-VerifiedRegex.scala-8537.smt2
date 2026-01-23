; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!449344 () Bool)

(assert start!449344)

(declare-fun bs!867640 () Bool)

(declare-fun b!4531316 () Bool)

(assert (= bs!867640 (and b!4531316 start!449344)))

(declare-fun lambda!174446 () Int)

(declare-fun lambda!174445 () Int)

(assert (=> bs!867640 (not (= lambda!174446 lambda!174445))))

(assert (=> b!4531316 true))

(assert (=> b!4531316 true))

(assert (=> b!4531316 true))

(declare-fun b!4531292 () Bool)

(declare-fun e!2823457 () Bool)

(declare-fun e!2823443 () Bool)

(assert (=> b!4531292 (= e!2823457 e!2823443)))

(declare-fun res!1887206 () Bool)

(assert (=> b!4531292 (=> res!1887206 e!2823443)))

(declare-datatypes ((K!12090 0))(
  ( (K!12091 (val!17943 Int)) )
))
(declare-datatypes ((V!12336 0))(
  ( (V!12337 (val!17944 Int)) )
))
(declare-datatypes ((tuple2!51154 0))(
  ( (tuple2!51155 (_1!28871 K!12090) (_2!28871 V!12336)) )
))
(declare-datatypes ((List!50826 0))(
  ( (Nil!50702) (Cons!50702 (h!56571 tuple2!51154) (t!357788 List!50826)) )
))
(declare-datatypes ((ListMap!3629 0))(
  ( (ListMap!3630 (toList!4367 List!50826)) )
))
(declare-fun lt!1706720 () ListMap!3629)

(declare-fun lt!1706719 () ListMap!3629)

(declare-fun eq!637 (ListMap!3629 ListMap!3629) Bool)

(assert (=> b!4531292 (= res!1887206 (not (eq!637 lt!1706720 lt!1706719)))))

(declare-datatypes ((tuple2!51156 0))(
  ( (tuple2!51157 (_1!28872 (_ BitVec 64)) (_2!28872 List!50826)) )
))
(declare-datatypes ((List!50827 0))(
  ( (Nil!50703) (Cons!50703 (h!56572 tuple2!51156) (t!357789 List!50827)) )
))
(declare-datatypes ((ListLongMap!2999 0))(
  ( (ListLongMap!3000 (toList!4368 List!50827)) )
))
(declare-fun lt!1706740 () ListLongMap!2999)

(declare-fun lt!1706730 () tuple2!51156)

(declare-fun extractMap!1236 (List!50827) ListMap!3629)

(declare-fun +!1574 (ListLongMap!2999 tuple2!51156) ListLongMap!2999)

(assert (=> b!4531292 (= lt!1706720 (extractMap!1236 (toList!4368 (+!1574 lt!1706740 lt!1706730))))))

(declare-fun lm!1477 () ListLongMap!2999)

(declare-fun head!9448 (ListLongMap!2999) tuple2!51156)

(assert (=> b!4531292 (= lt!1706730 (head!9448 lm!1477))))

(declare-fun lt!1706746 () ListMap!3629)

(declare-fun lt!1706747 () ListMap!3629)

(assert (=> b!4531292 (eq!637 lt!1706746 lt!1706747)))

(declare-fun lt!1706723 () ListMap!3629)

(declare-fun key!3287 () K!12090)

(declare-fun -!406 (ListMap!3629 K!12090) ListMap!3629)

(assert (=> b!4531292 (= lt!1706747 (-!406 lt!1706723 key!3287))))

(declare-fun lt!1706721 () ListLongMap!2999)

(assert (=> b!4531292 (= lt!1706746 (extractMap!1236 (toList!4368 lt!1706721)))))

(declare-fun lt!1706731 () tuple2!51156)

(assert (=> b!4531292 (= lt!1706721 (+!1574 lt!1706740 lt!1706731))))

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun newBucket!178 () List!50826)

(assert (=> b!4531292 (= lt!1706731 (tuple2!51157 hash!344 newBucket!178))))

(declare-datatypes ((Hashable!5575 0))(
  ( (HashableExt!5574 (__x!31278 Int)) )
))
(declare-fun hashF!1107 () Hashable!5575)

(declare-datatypes ((Unit!96986 0))(
  ( (Unit!96987) )
))
(declare-fun lt!1706741 () Unit!96986)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!165 (ListLongMap!2999 (_ BitVec 64) List!50826 K!12090 Hashable!5575) Unit!96986)

(assert (=> b!4531292 (= lt!1706741 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!165 lt!1706740 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4531293 () Bool)

(declare-fun e!2823444 () Bool)

(declare-fun e!2823440 () Bool)

(assert (=> b!4531293 (= e!2823444 e!2823440)))

(declare-fun res!1887194 () Bool)

(assert (=> b!4531293 (=> (not res!1887194) (not e!2823440))))

(declare-fun contains!13463 (ListMap!3629 K!12090) Bool)

(assert (=> b!4531293 (= res!1887194 (contains!13463 lt!1706719 key!3287))))

(assert (=> b!4531293 (= lt!1706719 (extractMap!1236 (toList!4368 lm!1477)))))

(declare-fun b!4531294 () Bool)

(declare-fun e!2823452 () Bool)

(declare-fun e!2823455 () Bool)

(assert (=> b!4531294 (= e!2823452 e!2823455)))

(declare-fun res!1887205 () Bool)

(assert (=> b!4531294 (=> res!1887205 e!2823455)))

(declare-fun contains!13464 (ListLongMap!2999 (_ BitVec 64)) Bool)

(assert (=> b!4531294 (= res!1887205 (not (contains!13464 lt!1706740 hash!344)))))

(declare-fun tail!7770 (ListLongMap!2999) ListLongMap!2999)

(assert (=> b!4531294 (= lt!1706740 (tail!7770 lm!1477))))

(declare-fun b!4531295 () Bool)

(declare-fun res!1887196 () Bool)

(assert (=> b!4531295 (=> res!1887196 e!2823443)))

(assert (=> b!4531295 (= res!1887196 (bvsge (_1!28872 lt!1706730) hash!344))))

(declare-fun b!4531296 () Bool)

(declare-fun e!2823445 () Bool)

(declare-fun e!2823449 () Bool)

(assert (=> b!4531296 (= e!2823445 e!2823449)))

(declare-fun res!1887195 () Bool)

(assert (=> b!4531296 (=> res!1887195 e!2823449)))

(declare-fun noDuplicateKeys!1180 (List!50826) Bool)

(assert (=> b!4531296 (= res!1887195 (not (noDuplicateKeys!1180 (_2!28872 lt!1706730))))))

(declare-fun lt!1706718 () Unit!96986)

(declare-fun forallContained!2564 (List!50827 Int tuple2!51156) Unit!96986)

(assert (=> b!4531296 (= lt!1706718 (forallContained!2564 (toList!4368 lm!1477) lambda!174445 (h!56572 (toList!4368 lm!1477))))))

(declare-fun b!4531297 () Bool)

(declare-fun e!2823441 () Bool)

(declare-fun tp!1338384 () Bool)

(assert (=> b!4531297 (= e!2823441 tp!1338384)))

(declare-fun b!4531298 () Bool)

(declare-fun res!1887202 () Bool)

(assert (=> b!4531298 (=> res!1887202 e!2823452)))

(get-info :version)

(assert (=> b!4531298 (= res!1887202 (or ((_ is Nil!50703) (toList!4368 lm!1477)) (= (_1!28872 (h!56572 (toList!4368 lm!1477))) hash!344)))))

(declare-fun b!4531299 () Bool)

(declare-fun res!1887197 () Bool)

(assert (=> b!4531299 (=> res!1887197 e!2823452)))

(assert (=> b!4531299 (= res!1887197 (not (noDuplicateKeys!1180 newBucket!178)))))

(declare-fun b!4531300 () Bool)

(declare-fun e!2823451 () Bool)

(assert (=> b!4531300 (= e!2823440 e!2823451)))

(declare-fun res!1887199 () Bool)

(assert (=> b!4531300 (=> (not res!1887199) (not e!2823451))))

(declare-fun lt!1706739 () (_ BitVec 64))

(assert (=> b!4531300 (= res!1887199 (= lt!1706739 hash!344))))

(declare-fun hash!2869 (Hashable!5575 K!12090) (_ BitVec 64))

(assert (=> b!4531300 (= lt!1706739 (hash!2869 hashF!1107 key!3287))))

(declare-fun b!4531301 () Bool)

(declare-fun e!2823454 () Bool)

(assert (=> b!4531301 (= e!2823454 e!2823457)))

(declare-fun res!1887188 () Bool)

(assert (=> b!4531301 (=> res!1887188 e!2823457)))

(assert (=> b!4531301 (= res!1887188 (not (contains!13463 (extractMap!1236 (t!357789 (toList!4368 lm!1477))) key!3287)))))

(assert (=> b!4531301 (contains!13463 lt!1706723 key!3287)))

(assert (=> b!4531301 (= lt!1706723 (extractMap!1236 (toList!4368 lt!1706740)))))

(declare-fun lt!1706742 () Unit!96986)

(declare-fun lemmaListContainsThenExtractedMapContains!150 (ListLongMap!2999 K!12090 Hashable!5575) Unit!96986)

(assert (=> b!4531301 (= lt!1706742 (lemmaListContainsThenExtractedMapContains!150 lt!1706740 key!3287 hashF!1107))))

(declare-fun b!4531302 () Bool)

(declare-fun res!1887191 () Bool)

(assert (=> b!4531302 (=> (not res!1887191) (not e!2823444))))

(declare-fun allKeysSameHashInMap!1287 (ListLongMap!2999 Hashable!5575) Bool)

(assert (=> b!4531302 (= res!1887191 (allKeysSameHashInMap!1287 lm!1477 hashF!1107))))

(declare-fun b!4531303 () Bool)

(declare-fun e!2823456 () Unit!96986)

(declare-fun Unit!96988 () Unit!96986)

(assert (=> b!4531303 (= e!2823456 Unit!96988)))

(declare-fun lt!1706728 () Unit!96986)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!168 (ListLongMap!2999 K!12090 Hashable!5575) Unit!96986)

(assert (=> b!4531303 (= lt!1706728 (lemmaNotInItsHashBucketThenNotInMap!168 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4531303 false))

(declare-fun b!4531304 () Bool)

(declare-fun e!2823453 () Bool)

(declare-fun forall!10309 (List!50827 Int) Bool)

(assert (=> b!4531304 (= e!2823453 (forall!10309 (toList!4368 lt!1706740) lambda!174445))))

(declare-fun lt!1706733 () ListMap!3629)

(declare-fun addToMapMapFromBucket!707 (List!50826 ListMap!3629) ListMap!3629)

(assert (=> b!4531304 (= lt!1706733 (-!406 (addToMapMapFromBucket!707 (_2!28872 lt!1706730) lt!1706723) key!3287))))

(declare-fun lt!1706722 () Unit!96986)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!4 (ListMap!3629 K!12090 List!50826) Unit!96986)

(assert (=> b!4531304 (= lt!1706722 (lemmaAddToMapFromBucketMinusKeyIsCommutative!4 lt!1706723 key!3287 (_2!28872 lt!1706730)))))

(declare-fun b!4531305 () Bool)

(assert (=> b!4531305 (= e!2823449 e!2823453)))

(declare-fun res!1887192 () Bool)

(assert (=> b!4531305 (=> res!1887192 e!2823453)))

(declare-fun lt!1706716 () Bool)

(assert (=> b!4531305 (= res!1887192 lt!1706716)))

(declare-fun lt!1706744 () Unit!96986)

(declare-fun e!2823448 () Unit!96986)

(assert (=> b!4531305 (= lt!1706744 e!2823448)))

(declare-fun c!773737 () Bool)

(assert (=> b!4531305 (= c!773737 lt!1706716)))

(declare-fun containsKey!1832 (List!50826 K!12090) Bool)

(assert (=> b!4531305 (= lt!1706716 (containsKey!1832 (_2!28872 lt!1706730) key!3287))))

(declare-fun b!4531306 () Bool)

(declare-fun e!2823442 () Bool)

(assert (=> b!4531306 (= e!2823443 e!2823442)))

(declare-fun res!1887203 () Bool)

(assert (=> b!4531306 (=> res!1887203 e!2823442)))

(declare-fun lt!1706743 () ListLongMap!2999)

(assert (=> b!4531306 (= res!1887203 (not (= lt!1706743 (+!1574 lm!1477 lt!1706731))))))

(assert (=> b!4531306 (= lt!1706743 (+!1574 lt!1706721 lt!1706730))))

(declare-fun b!4531307 () Bool)

(declare-fun Unit!96989 () Unit!96986)

(assert (=> b!4531307 (= e!2823448 Unit!96989)))

(declare-fun b!4531308 () Bool)

(declare-fun e!2823450 () Bool)

(assert (=> b!4531308 (= e!2823455 e!2823450)))

(declare-fun res!1887207 () Bool)

(assert (=> b!4531308 (=> res!1887207 e!2823450)))

(declare-fun lt!1706724 () Bool)

(assert (=> b!4531308 (= res!1887207 lt!1706724)))

(declare-fun lt!1706725 () Unit!96986)

(assert (=> b!4531308 (= lt!1706725 e!2823456)))

(declare-fun c!773736 () Bool)

(assert (=> b!4531308 (= c!773736 lt!1706724)))

(declare-fun lt!1706745 () List!50826)

(assert (=> b!4531308 (= lt!1706724 (not (containsKey!1832 lt!1706745 key!3287)))))

(declare-fun b!4531309 () Bool)

(assert (=> b!4531309 (= e!2823451 (not e!2823452))))

(declare-fun res!1887186 () Bool)

(assert (=> b!4531309 (=> res!1887186 e!2823452)))

(declare-fun removePairForKey!807 (List!50826 K!12090) List!50826)

(assert (=> b!4531309 (= res!1887186 (not (= newBucket!178 (removePairForKey!807 lt!1706745 key!3287))))))

(declare-fun lt!1706717 () tuple2!51156)

(declare-fun lt!1706736 () Unit!96986)

(assert (=> b!4531309 (= lt!1706736 (forallContained!2564 (toList!4368 lm!1477) lambda!174445 lt!1706717))))

(declare-fun contains!13465 (List!50827 tuple2!51156) Bool)

(assert (=> b!4531309 (contains!13465 (toList!4368 lm!1477) lt!1706717)))

(assert (=> b!4531309 (= lt!1706717 (tuple2!51157 hash!344 lt!1706745))))

(declare-fun lt!1706737 () Unit!96986)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!692 (List!50827 (_ BitVec 64) List!50826) Unit!96986)

(assert (=> b!4531309 (= lt!1706737 (lemmaGetValueByKeyImpliesContainsTuple!692 (toList!4368 lm!1477) hash!344 lt!1706745))))

(declare-fun apply!11917 (ListLongMap!2999 (_ BitVec 64)) List!50826)

(assert (=> b!4531309 (= lt!1706745 (apply!11917 lm!1477 hash!344))))

(assert (=> b!4531309 (contains!13464 lm!1477 lt!1706739)))

(declare-fun lt!1706726 () Unit!96986)

(declare-fun lemmaInGenMapThenLongMapContainsHash!254 (ListLongMap!2999 K!12090 Hashable!5575) Unit!96986)

(assert (=> b!4531309 (= lt!1706726 (lemmaInGenMapThenLongMapContainsHash!254 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4531310 () Bool)

(assert (=> b!4531310 (= e!2823450 e!2823454)))

(declare-fun res!1887198 () Bool)

(assert (=> b!4531310 (=> res!1887198 e!2823454)))

(declare-fun containsKeyBiggerList!160 (List!50827 K!12090) Bool)

(assert (=> b!4531310 (= res!1887198 (not (containsKeyBiggerList!160 (t!357789 (toList!4368 lm!1477)) key!3287)))))

(assert (=> b!4531310 (containsKeyBiggerList!160 (toList!4368 lt!1706740) key!3287)))

(declare-fun lt!1706734 () Unit!96986)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!96 (ListLongMap!2999 K!12090 Hashable!5575) Unit!96986)

(assert (=> b!4531310 (= lt!1706734 (lemmaInLongMapThenContainsKeyBiggerList!96 lt!1706740 key!3287 hashF!1107))))

(declare-fun b!4531311 () Bool)

(declare-fun res!1887190 () Bool)

(assert (=> b!4531311 (=> res!1887190 e!2823455)))

(assert (=> b!4531311 (= res!1887190 (not (contains!13465 (t!357789 (toList!4368 lm!1477)) lt!1706717)))))

(declare-fun b!4531312 () Bool)

(declare-fun res!1887189 () Bool)

(assert (=> b!4531312 (=> res!1887189 e!2823455)))

(assert (=> b!4531312 (= res!1887189 (not (= (apply!11917 lt!1706740 hash!344) lt!1706745)))))

(declare-fun b!4531313 () Bool)

(declare-fun res!1887201 () Bool)

(assert (=> b!4531313 (=> (not res!1887201) (not e!2823451))))

(declare-fun allKeysSameHash!1034 (List!50826 (_ BitVec 64) Hashable!5575) Bool)

(assert (=> b!4531313 (= res!1887201 (allKeysSameHash!1034 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4531314 () Bool)

(declare-fun e!2823447 () Bool)

(assert (=> b!4531314 (= e!2823447 e!2823445)))

(declare-fun res!1887187 () Bool)

(assert (=> b!4531314 (=> res!1887187 e!2823445)))

(declare-fun lt!1706729 () ListMap!3629)

(assert (=> b!4531314 (= res!1887187 (not (eq!637 lt!1706729 lt!1706733)))))

(declare-fun lt!1706735 () ListMap!3629)

(assert (=> b!4531314 (eq!637 lt!1706735 lt!1706733)))

(assert (=> b!4531314 (= lt!1706733 (addToMapMapFromBucket!707 (_2!28872 lt!1706730) lt!1706747))))

(declare-fun lt!1706727 () Unit!96986)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!56 (ListMap!3629 ListMap!3629 List!50826) Unit!96986)

(assert (=> b!4531314 (= lt!1706727 (lemmaAddToMapFromBucketPreservesEquivalence!56 lt!1706746 lt!1706747 (_2!28872 lt!1706730)))))

(declare-fun b!4531315 () Bool)

(declare-fun res!1887204 () Bool)

(assert (=> b!4531315 (=> res!1887204 e!2823443)))

(assert (=> b!4531315 (= res!1887204 (not (eq!637 lt!1706719 lt!1706720)))))

(declare-fun Unit!96990 () Unit!96986)

(assert (=> b!4531316 (= e!2823448 Unit!96990)))

(assert (=> b!4531316 (not (= hash!344 (_1!28872 lt!1706730)))))

(declare-datatypes ((Option!11159 0))(
  ( (None!11158) (Some!11158 (v!44814 tuple2!51154)) )
))
(declare-fun lt!1706732 () Option!11159)

(declare-fun getPair!196 (List!50826 K!12090) Option!11159)

(assert (=> b!4531316 (= lt!1706732 (getPair!196 (_2!28872 lt!1706730) key!3287))))

(declare-fun lt!1706738 () Unit!96986)

(assert (=> b!4531316 (= lt!1706738 (forallContained!2564 (toList!4368 lm!1477) lambda!174446 (h!56572 (toList!4368 lm!1477))))))

(declare-fun lt!1706748 () Unit!96986)

(declare-fun lambda!174447 () Int)

(declare-fun forallContained!2565 (List!50826 Int tuple2!51154) Unit!96986)

(declare-fun get!16640 (Option!11159) tuple2!51154)

(assert (=> b!4531316 (= lt!1706748 (forallContained!2565 (_2!28872 (h!56572 (toList!4368 lm!1477))) lambda!174447 (tuple2!51155 key!3287 (_2!28871 (get!16640 lt!1706732)))))))

(assert (=> b!4531316 false))

(declare-fun res!1887200 () Bool)

(assert (=> start!449344 (=> (not res!1887200) (not e!2823444))))

(assert (=> start!449344 (= res!1887200 (forall!10309 (toList!4368 lm!1477) lambda!174445))))

(assert (=> start!449344 e!2823444))

(assert (=> start!449344 true))

(declare-fun inv!66274 (ListLongMap!2999) Bool)

(assert (=> start!449344 (and (inv!66274 lm!1477) e!2823441)))

(declare-fun tp_is_empty!27997 () Bool)

(assert (=> start!449344 tp_is_empty!27997))

(declare-fun e!2823446 () Bool)

(assert (=> start!449344 e!2823446))

(declare-fun tp_is_empty!27999 () Bool)

(declare-fun b!4531317 () Bool)

(declare-fun tp!1338385 () Bool)

(assert (=> b!4531317 (= e!2823446 (and tp_is_empty!27997 tp_is_empty!27999 tp!1338385))))

(declare-fun b!4531318 () Bool)

(declare-fun Unit!96991 () Unit!96986)

(assert (=> b!4531318 (= e!2823456 Unit!96991)))

(declare-fun b!4531319 () Bool)

(assert (=> b!4531319 (= e!2823442 e!2823447)))

(declare-fun res!1887193 () Bool)

(assert (=> b!4531319 (=> res!1887193 e!2823447)))

(assert (=> b!4531319 (= res!1887193 (not (eq!637 lt!1706729 lt!1706735)))))

(assert (=> b!4531319 (= lt!1706735 (addToMapMapFromBucket!707 (_2!28872 lt!1706730) lt!1706746))))

(assert (=> b!4531319 (= lt!1706729 (extractMap!1236 (toList!4368 lt!1706743)))))

(declare-fun b!4531320 () Bool)

(declare-fun res!1887208 () Bool)

(assert (=> b!4531320 (=> res!1887208 e!2823442)))

(assert (=> b!4531320 (= res!1887208 (not (= (head!9448 lt!1706743) lt!1706730)))))

(assert (= (and start!449344 res!1887200) b!4531302))

(assert (= (and b!4531302 res!1887191) b!4531293))

(assert (= (and b!4531293 res!1887194) b!4531300))

(assert (= (and b!4531300 res!1887199) b!4531313))

(assert (= (and b!4531313 res!1887201) b!4531309))

(assert (= (and b!4531309 (not res!1887186)) b!4531299))

(assert (= (and b!4531299 (not res!1887197)) b!4531298))

(assert (= (and b!4531298 (not res!1887202)) b!4531294))

(assert (= (and b!4531294 (not res!1887205)) b!4531312))

(assert (= (and b!4531312 (not res!1887189)) b!4531311))

(assert (= (and b!4531311 (not res!1887190)) b!4531308))

(assert (= (and b!4531308 c!773736) b!4531303))

(assert (= (and b!4531308 (not c!773736)) b!4531318))

(assert (= (and b!4531308 (not res!1887207)) b!4531310))

(assert (= (and b!4531310 (not res!1887198)) b!4531301))

(assert (= (and b!4531301 (not res!1887188)) b!4531292))

(assert (= (and b!4531292 (not res!1887206)) b!4531315))

(assert (= (and b!4531315 (not res!1887204)) b!4531295))

(assert (= (and b!4531295 (not res!1887196)) b!4531306))

(assert (= (and b!4531306 (not res!1887203)) b!4531320))

(assert (= (and b!4531320 (not res!1887208)) b!4531319))

(assert (= (and b!4531319 (not res!1887193)) b!4531314))

(assert (= (and b!4531314 (not res!1887187)) b!4531296))

(assert (= (and b!4531296 (not res!1887195)) b!4531305))

(assert (= (and b!4531305 c!773737) b!4531316))

(assert (= (and b!4531305 (not c!773737)) b!4531307))

(assert (= (and b!4531305 (not res!1887192)) b!4531304))

(assert (= start!449344 b!4531297))

(assert (= (and start!449344 ((_ is Cons!50702) newBucket!178)) b!4531317))

(declare-fun m!5289253 () Bool)

(assert (=> b!4531320 m!5289253))

(declare-fun m!5289255 () Bool)

(assert (=> b!4531304 m!5289255))

(declare-fun m!5289257 () Bool)

(assert (=> b!4531304 m!5289257))

(assert (=> b!4531304 m!5289257))

(declare-fun m!5289259 () Bool)

(assert (=> b!4531304 m!5289259))

(declare-fun m!5289261 () Bool)

(assert (=> b!4531304 m!5289261))

(declare-fun m!5289263 () Bool)

(assert (=> b!4531308 m!5289263))

(declare-fun m!5289265 () Bool)

(assert (=> start!449344 m!5289265))

(declare-fun m!5289267 () Bool)

(assert (=> start!449344 m!5289267))

(declare-fun m!5289269 () Bool)

(assert (=> b!4531293 m!5289269))

(declare-fun m!5289271 () Bool)

(assert (=> b!4531293 m!5289271))

(declare-fun m!5289273 () Bool)

(assert (=> b!4531309 m!5289273))

(declare-fun m!5289275 () Bool)

(assert (=> b!4531309 m!5289275))

(declare-fun m!5289277 () Bool)

(assert (=> b!4531309 m!5289277))

(declare-fun m!5289279 () Bool)

(assert (=> b!4531309 m!5289279))

(declare-fun m!5289281 () Bool)

(assert (=> b!4531309 m!5289281))

(declare-fun m!5289283 () Bool)

(assert (=> b!4531309 m!5289283))

(declare-fun m!5289285 () Bool)

(assert (=> b!4531309 m!5289285))

(declare-fun m!5289287 () Bool)

(assert (=> b!4531319 m!5289287))

(declare-fun m!5289289 () Bool)

(assert (=> b!4531319 m!5289289))

(declare-fun m!5289291 () Bool)

(assert (=> b!4531319 m!5289291))

(declare-fun m!5289293 () Bool)

(assert (=> b!4531299 m!5289293))

(declare-fun m!5289295 () Bool)

(assert (=> b!4531292 m!5289295))

(declare-fun m!5289297 () Bool)

(assert (=> b!4531292 m!5289297))

(declare-fun m!5289299 () Bool)

(assert (=> b!4531292 m!5289299))

(declare-fun m!5289301 () Bool)

(assert (=> b!4531292 m!5289301))

(declare-fun m!5289303 () Bool)

(assert (=> b!4531292 m!5289303))

(declare-fun m!5289305 () Bool)

(assert (=> b!4531292 m!5289305))

(declare-fun m!5289307 () Bool)

(assert (=> b!4531292 m!5289307))

(declare-fun m!5289309 () Bool)

(assert (=> b!4531292 m!5289309))

(declare-fun m!5289311 () Bool)

(assert (=> b!4531292 m!5289311))

(declare-fun m!5289313 () Bool)

(assert (=> b!4531315 m!5289313))

(declare-fun m!5289315 () Bool)

(assert (=> b!4531311 m!5289315))

(declare-fun m!5289317 () Bool)

(assert (=> b!4531314 m!5289317))

(declare-fun m!5289319 () Bool)

(assert (=> b!4531314 m!5289319))

(declare-fun m!5289321 () Bool)

(assert (=> b!4531314 m!5289321))

(declare-fun m!5289323 () Bool)

(assert (=> b!4531314 m!5289323))

(declare-fun m!5289325 () Bool)

(assert (=> b!4531306 m!5289325))

(declare-fun m!5289327 () Bool)

(assert (=> b!4531306 m!5289327))

(declare-fun m!5289329 () Bool)

(assert (=> b!4531312 m!5289329))

(declare-fun m!5289331 () Bool)

(assert (=> b!4531305 m!5289331))

(declare-fun m!5289333 () Bool)

(assert (=> b!4531313 m!5289333))

(declare-fun m!5289335 () Bool)

(assert (=> b!4531316 m!5289335))

(declare-fun m!5289337 () Bool)

(assert (=> b!4531316 m!5289337))

(declare-fun m!5289339 () Bool)

(assert (=> b!4531316 m!5289339))

(declare-fun m!5289341 () Bool)

(assert (=> b!4531316 m!5289341))

(declare-fun m!5289343 () Bool)

(assert (=> b!4531294 m!5289343))

(declare-fun m!5289345 () Bool)

(assert (=> b!4531294 m!5289345))

(declare-fun m!5289347 () Bool)

(assert (=> b!4531300 m!5289347))

(declare-fun m!5289349 () Bool)

(assert (=> b!4531310 m!5289349))

(declare-fun m!5289351 () Bool)

(assert (=> b!4531310 m!5289351))

(declare-fun m!5289353 () Bool)

(assert (=> b!4531310 m!5289353))

(declare-fun m!5289355 () Bool)

(assert (=> b!4531302 m!5289355))

(declare-fun m!5289357 () Bool)

(assert (=> b!4531303 m!5289357))

(declare-fun m!5289359 () Bool)

(assert (=> b!4531301 m!5289359))

(declare-fun m!5289361 () Bool)

(assert (=> b!4531301 m!5289361))

(declare-fun m!5289363 () Bool)

(assert (=> b!4531301 m!5289363))

(declare-fun m!5289365 () Bool)

(assert (=> b!4531301 m!5289365))

(assert (=> b!4531301 m!5289365))

(declare-fun m!5289367 () Bool)

(assert (=> b!4531301 m!5289367))

(declare-fun m!5289369 () Bool)

(assert (=> b!4531296 m!5289369))

(declare-fun m!5289371 () Bool)

(assert (=> b!4531296 m!5289371))

(check-sat (not b!4531303) (not b!4531305) (not b!4531304) (not b!4531297) (not b!4531301) (not b!4531306) (not b!4531314) (not b!4531300) (not b!4531292) (not b!4531296) (not b!4531320) (not b!4531315) (not b!4531302) (not b!4531310) (not b!4531313) (not b!4531309) (not b!4531294) tp_is_empty!27999 (not b!4531293) (not b!4531319) (not b!4531308) (not start!449344) (not b!4531311) tp_is_empty!27997 (not b!4531316) (not b!4531312) (not b!4531299) (not b!4531317))
(check-sat)
(get-model)

(declare-fun d!1398820 () Bool)

(declare-fun res!1887213 () Bool)

(declare-fun e!2823462 () Bool)

(assert (=> d!1398820 (=> res!1887213 e!2823462)))

(assert (=> d!1398820 (= res!1887213 ((_ is Nil!50703) (toList!4368 lm!1477)))))

(assert (=> d!1398820 (= (forall!10309 (toList!4368 lm!1477) lambda!174445) e!2823462)))

(declare-fun b!4531331 () Bool)

(declare-fun e!2823463 () Bool)

(assert (=> b!4531331 (= e!2823462 e!2823463)))

(declare-fun res!1887214 () Bool)

(assert (=> b!4531331 (=> (not res!1887214) (not e!2823463))))

(declare-fun dynLambda!21191 (Int tuple2!51156) Bool)

(assert (=> b!4531331 (= res!1887214 (dynLambda!21191 lambda!174445 (h!56572 (toList!4368 lm!1477))))))

(declare-fun b!4531332 () Bool)

(assert (=> b!4531332 (= e!2823463 (forall!10309 (t!357789 (toList!4368 lm!1477)) lambda!174445))))

(assert (= (and d!1398820 (not res!1887213)) b!4531331))

(assert (= (and b!4531331 res!1887214) b!4531332))

(declare-fun b_lambda!156707 () Bool)

(assert (=> (not b_lambda!156707) (not b!4531331)))

(declare-fun m!5289373 () Bool)

(assert (=> b!4531331 m!5289373))

(declare-fun m!5289375 () Bool)

(assert (=> b!4531332 m!5289375))

(assert (=> start!449344 d!1398820))

(declare-fun d!1398822 () Bool)

(declare-fun isStrictlySorted!446 (List!50827) Bool)

(assert (=> d!1398822 (= (inv!66274 lm!1477) (isStrictlySorted!446 (toList!4368 lm!1477)))))

(declare-fun bs!867641 () Bool)

(assert (= bs!867641 d!1398822))

(declare-fun m!5289377 () Bool)

(assert (=> bs!867641 m!5289377))

(assert (=> start!449344 d!1398822))

(declare-fun bs!867647 () Bool)

(declare-fun d!1398824 () Bool)

(assert (= bs!867647 (and d!1398824 start!449344)))

(declare-fun lambda!174453 () Int)

(assert (=> bs!867647 (= lambda!174453 lambda!174445)))

(declare-fun bs!867648 () Bool)

(assert (= bs!867648 (and d!1398824 b!4531316)))

(assert (=> bs!867648 (not (= lambda!174453 lambda!174446))))

(assert (=> d!1398824 (contains!13463 (extractMap!1236 (toList!4368 lt!1706740)) key!3287)))

(declare-fun lt!1706754 () Unit!96986)

(declare-fun choose!29734 (ListLongMap!2999 K!12090 Hashable!5575) Unit!96986)

(assert (=> d!1398824 (= lt!1706754 (choose!29734 lt!1706740 key!3287 hashF!1107))))

(assert (=> d!1398824 (forall!10309 (toList!4368 lt!1706740) lambda!174453)))

(assert (=> d!1398824 (= (lemmaListContainsThenExtractedMapContains!150 lt!1706740 key!3287 hashF!1107) lt!1706754)))

(declare-fun bs!867649 () Bool)

(assert (= bs!867649 d!1398824))

(assert (=> bs!867649 m!5289361))

(assert (=> bs!867649 m!5289361))

(declare-fun m!5289397 () Bool)

(assert (=> bs!867649 m!5289397))

(declare-fun m!5289399 () Bool)

(assert (=> bs!867649 m!5289399))

(declare-fun m!5289401 () Bool)

(assert (=> bs!867649 m!5289401))

(assert (=> b!4531301 d!1398824))

(declare-fun b!4531363 () Bool)

(assert (=> b!4531363 false))

(declare-fun lt!1706771 () Unit!96986)

(declare-fun lt!1706777 () Unit!96986)

(assert (=> b!4531363 (= lt!1706771 lt!1706777)))

(declare-fun containsKey!1833 (List!50826 K!12090) Bool)

(assert (=> b!4531363 (containsKey!1833 (toList!4367 (extractMap!1236 (t!357789 (toList!4368 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!479 (List!50826 K!12090) Unit!96986)

(assert (=> b!4531363 (= lt!1706777 (lemmaInGetKeysListThenContainsKey!479 (toList!4367 (extractMap!1236 (t!357789 (toList!4368 lm!1477)))) key!3287))))

(declare-fun e!2823489 () Unit!96986)

(declare-fun Unit!97003 () Unit!96986)

(assert (=> b!4531363 (= e!2823489 Unit!97003)))

(declare-fun b!4531364 () Bool)

(declare-fun e!2823493 () Unit!96986)

(assert (=> b!4531364 (= e!2823493 e!2823489)))

(declare-fun c!773746 () Bool)

(declare-fun call!315880 () Bool)

(assert (=> b!4531364 (= c!773746 call!315880)))

(declare-fun b!4531365 () Bool)

(declare-fun e!2823492 () Bool)

(declare-datatypes ((List!50829 0))(
  ( (Nil!50705) (Cons!50705 (h!56576 K!12090) (t!357791 List!50829)) )
))
(declare-fun contains!13466 (List!50829 K!12090) Bool)

(declare-fun keys!17630 (ListMap!3629) List!50829)

(assert (=> b!4531365 (= e!2823492 (contains!13466 (keys!17630 (extractMap!1236 (t!357789 (toList!4368 lm!1477)))) key!3287))))

(declare-fun bm!315875 () Bool)

(declare-fun e!2823488 () List!50829)

(assert (=> bm!315875 (= call!315880 (contains!13466 e!2823488 key!3287))))

(declare-fun c!773744 () Bool)

(declare-fun c!773745 () Bool)

(assert (=> bm!315875 (= c!773744 c!773745)))

(declare-fun d!1398838 () Bool)

(declare-fun e!2823491 () Bool)

(assert (=> d!1398838 e!2823491))

(declare-fun res!1887234 () Bool)

(assert (=> d!1398838 (=> res!1887234 e!2823491)))

(declare-fun e!2823490 () Bool)

(assert (=> d!1398838 (= res!1887234 e!2823490)))

(declare-fun res!1887235 () Bool)

(assert (=> d!1398838 (=> (not res!1887235) (not e!2823490))))

(declare-fun lt!1706776 () Bool)

(assert (=> d!1398838 (= res!1887235 (not lt!1706776))))

(declare-fun lt!1706773 () Bool)

(assert (=> d!1398838 (= lt!1706776 lt!1706773)))

(declare-fun lt!1706774 () Unit!96986)

(assert (=> d!1398838 (= lt!1706774 e!2823493)))

(assert (=> d!1398838 (= c!773745 lt!1706773)))

(assert (=> d!1398838 (= lt!1706773 (containsKey!1833 (toList!4367 (extractMap!1236 (t!357789 (toList!4368 lm!1477)))) key!3287))))

(assert (=> d!1398838 (= (contains!13463 (extractMap!1236 (t!357789 (toList!4368 lm!1477))) key!3287) lt!1706776)))

(declare-fun b!4531366 () Bool)

(assert (=> b!4531366 (= e!2823491 e!2823492)))

(declare-fun res!1887233 () Bool)

(assert (=> b!4531366 (=> (not res!1887233) (not e!2823492))))

(declare-datatypes ((Option!11161 0))(
  ( (None!11160) (Some!11160 (v!44820 V!12336)) )
))
(declare-fun isDefined!8443 (Option!11161) Bool)

(declare-fun getValueByKey!1123 (List!50826 K!12090) Option!11161)

(assert (=> b!4531366 (= res!1887233 (isDefined!8443 (getValueByKey!1123 (toList!4367 (extractMap!1236 (t!357789 (toList!4368 lm!1477)))) key!3287)))))

(declare-fun b!4531367 () Bool)

(declare-fun getKeysList!480 (List!50826) List!50829)

(assert (=> b!4531367 (= e!2823488 (getKeysList!480 (toList!4367 (extractMap!1236 (t!357789 (toList!4368 lm!1477))))))))

(declare-fun b!4531368 () Bool)

(declare-fun Unit!97005 () Unit!96986)

(assert (=> b!4531368 (= e!2823489 Unit!97005)))

(declare-fun b!4531369 () Bool)

(assert (=> b!4531369 (= e!2823490 (not (contains!13466 (keys!17630 (extractMap!1236 (t!357789 (toList!4368 lm!1477)))) key!3287)))))

(declare-fun b!4531370 () Bool)

(assert (=> b!4531370 (= e!2823488 (keys!17630 (extractMap!1236 (t!357789 (toList!4368 lm!1477)))))))

(declare-fun b!4531371 () Bool)

(declare-fun lt!1706778 () Unit!96986)

(assert (=> b!4531371 (= e!2823493 lt!1706778)))

(declare-fun lt!1706772 () Unit!96986)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1026 (List!50826 K!12090) Unit!96986)

(assert (=> b!4531371 (= lt!1706772 (lemmaContainsKeyImpliesGetValueByKeyDefined!1026 (toList!4367 (extractMap!1236 (t!357789 (toList!4368 lm!1477)))) key!3287))))

(assert (=> b!4531371 (isDefined!8443 (getValueByKey!1123 (toList!4367 (extractMap!1236 (t!357789 (toList!4368 lm!1477)))) key!3287))))

(declare-fun lt!1706775 () Unit!96986)

(assert (=> b!4531371 (= lt!1706775 lt!1706772)))

(declare-fun lemmaInListThenGetKeysListContains!476 (List!50826 K!12090) Unit!96986)

(assert (=> b!4531371 (= lt!1706778 (lemmaInListThenGetKeysListContains!476 (toList!4367 (extractMap!1236 (t!357789 (toList!4368 lm!1477)))) key!3287))))

(assert (=> b!4531371 call!315880))

(assert (= (and d!1398838 c!773745) b!4531371))

(assert (= (and d!1398838 (not c!773745)) b!4531364))

(assert (= (and b!4531364 c!773746) b!4531363))

(assert (= (and b!4531364 (not c!773746)) b!4531368))

(assert (= (or b!4531371 b!4531364) bm!315875))

(assert (= (and bm!315875 c!773744) b!4531367))

(assert (= (and bm!315875 (not c!773744)) b!4531370))

(assert (= (and d!1398838 res!1887235) b!4531369))

(assert (= (and d!1398838 (not res!1887234)) b!4531366))

(assert (= (and b!4531366 res!1887233) b!4531365))

(declare-fun m!5289403 () Bool)

(assert (=> b!4531367 m!5289403))

(declare-fun m!5289405 () Bool)

(assert (=> b!4531371 m!5289405))

(declare-fun m!5289407 () Bool)

(assert (=> b!4531371 m!5289407))

(assert (=> b!4531371 m!5289407))

(declare-fun m!5289409 () Bool)

(assert (=> b!4531371 m!5289409))

(declare-fun m!5289411 () Bool)

(assert (=> b!4531371 m!5289411))

(assert (=> b!4531369 m!5289365))

(declare-fun m!5289413 () Bool)

(assert (=> b!4531369 m!5289413))

(assert (=> b!4531369 m!5289413))

(declare-fun m!5289415 () Bool)

(assert (=> b!4531369 m!5289415))

(declare-fun m!5289417 () Bool)

(assert (=> b!4531363 m!5289417))

(declare-fun m!5289419 () Bool)

(assert (=> b!4531363 m!5289419))

(assert (=> b!4531365 m!5289365))

(assert (=> b!4531365 m!5289413))

(assert (=> b!4531365 m!5289413))

(assert (=> b!4531365 m!5289415))

(declare-fun m!5289421 () Bool)

(assert (=> bm!315875 m!5289421))

(assert (=> b!4531370 m!5289365))

(assert (=> b!4531370 m!5289413))

(assert (=> b!4531366 m!5289407))

(assert (=> b!4531366 m!5289407))

(assert (=> b!4531366 m!5289409))

(assert (=> d!1398838 m!5289417))

(assert (=> b!4531301 d!1398838))

(declare-fun bs!867650 () Bool)

(declare-fun d!1398840 () Bool)

(assert (= bs!867650 (and d!1398840 start!449344)))

(declare-fun lambda!174456 () Int)

(assert (=> bs!867650 (= lambda!174456 lambda!174445)))

(declare-fun bs!867651 () Bool)

(assert (= bs!867651 (and d!1398840 b!4531316)))

(assert (=> bs!867651 (not (= lambda!174456 lambda!174446))))

(declare-fun bs!867652 () Bool)

(assert (= bs!867652 (and d!1398840 d!1398824)))

(assert (=> bs!867652 (= lambda!174456 lambda!174453)))

(declare-fun lt!1706787 () ListMap!3629)

(declare-fun invariantList!1033 (List!50826) Bool)

(assert (=> d!1398840 (invariantList!1033 (toList!4367 lt!1706787))))

(declare-fun e!2823498 () ListMap!3629)

(assert (=> d!1398840 (= lt!1706787 e!2823498)))

(declare-fun c!773751 () Bool)

(assert (=> d!1398840 (= c!773751 ((_ is Cons!50703) (t!357789 (toList!4368 lm!1477))))))

(assert (=> d!1398840 (forall!10309 (t!357789 (toList!4368 lm!1477)) lambda!174456)))

(assert (=> d!1398840 (= (extractMap!1236 (t!357789 (toList!4368 lm!1477))) lt!1706787)))

(declare-fun b!4531380 () Bool)

(assert (=> b!4531380 (= e!2823498 (addToMapMapFromBucket!707 (_2!28872 (h!56572 (t!357789 (toList!4368 lm!1477)))) (extractMap!1236 (t!357789 (t!357789 (toList!4368 lm!1477))))))))

(declare-fun b!4531381 () Bool)

(assert (=> b!4531381 (= e!2823498 (ListMap!3630 Nil!50702))))

(assert (= (and d!1398840 c!773751) b!4531380))

(assert (= (and d!1398840 (not c!773751)) b!4531381))

(declare-fun m!5289423 () Bool)

(assert (=> d!1398840 m!5289423))

(declare-fun m!5289425 () Bool)

(assert (=> d!1398840 m!5289425))

(declare-fun m!5289427 () Bool)

(assert (=> b!4531380 m!5289427))

(assert (=> b!4531380 m!5289427))

(declare-fun m!5289429 () Bool)

(assert (=> b!4531380 m!5289429))

(assert (=> b!4531301 d!1398840))

(declare-fun bs!867653 () Bool)

(declare-fun d!1398842 () Bool)

(assert (= bs!867653 (and d!1398842 start!449344)))

(declare-fun lambda!174461 () Int)

(assert (=> bs!867653 (= lambda!174461 lambda!174445)))

(declare-fun bs!867654 () Bool)

(assert (= bs!867654 (and d!1398842 b!4531316)))

(assert (=> bs!867654 (not (= lambda!174461 lambda!174446))))

(declare-fun bs!867655 () Bool)

(assert (= bs!867655 (and d!1398842 d!1398824)))

(assert (=> bs!867655 (= lambda!174461 lambda!174453)))

(declare-fun bs!867656 () Bool)

(assert (= bs!867656 (and d!1398842 d!1398840)))

(assert (=> bs!867656 (= lambda!174461 lambda!174456)))

(declare-fun lt!1706790 () ListMap!3629)

(assert (=> d!1398842 (invariantList!1033 (toList!4367 lt!1706790))))

(declare-fun e!2823499 () ListMap!3629)

(assert (=> d!1398842 (= lt!1706790 e!2823499)))

(declare-fun c!773752 () Bool)

(assert (=> d!1398842 (= c!773752 ((_ is Cons!50703) (toList!4368 lt!1706740)))))

(assert (=> d!1398842 (forall!10309 (toList!4368 lt!1706740) lambda!174461)))

(assert (=> d!1398842 (= (extractMap!1236 (toList!4368 lt!1706740)) lt!1706790)))

(declare-fun b!4531382 () Bool)

(assert (=> b!4531382 (= e!2823499 (addToMapMapFromBucket!707 (_2!28872 (h!56572 (toList!4368 lt!1706740))) (extractMap!1236 (t!357789 (toList!4368 lt!1706740)))))))

(declare-fun b!4531383 () Bool)

(assert (=> b!4531383 (= e!2823499 (ListMap!3630 Nil!50702))))

(assert (= (and d!1398842 c!773752) b!4531382))

(assert (= (and d!1398842 (not c!773752)) b!4531383))

(declare-fun m!5289431 () Bool)

(assert (=> d!1398842 m!5289431))

(declare-fun m!5289433 () Bool)

(assert (=> d!1398842 m!5289433))

(declare-fun m!5289435 () Bool)

(assert (=> b!4531382 m!5289435))

(assert (=> b!4531382 m!5289435))

(declare-fun m!5289437 () Bool)

(assert (=> b!4531382 m!5289437))

(assert (=> b!4531301 d!1398842))

(declare-fun b!4531384 () Bool)

(assert (=> b!4531384 false))

(declare-fun lt!1706801 () Unit!96986)

(declare-fun lt!1706807 () Unit!96986)

(assert (=> b!4531384 (= lt!1706801 lt!1706807)))

(assert (=> b!4531384 (containsKey!1833 (toList!4367 lt!1706723) key!3287)))

(assert (=> b!4531384 (= lt!1706807 (lemmaInGetKeysListThenContainsKey!479 (toList!4367 lt!1706723) key!3287))))

(declare-fun e!2823501 () Unit!96986)

(declare-fun Unit!97016 () Unit!96986)

(assert (=> b!4531384 (= e!2823501 Unit!97016)))

(declare-fun b!4531385 () Bool)

(declare-fun e!2823505 () Unit!96986)

(assert (=> b!4531385 (= e!2823505 e!2823501)))

(declare-fun c!773755 () Bool)

(declare-fun call!315881 () Bool)

(assert (=> b!4531385 (= c!773755 call!315881)))

(declare-fun b!4531386 () Bool)

(declare-fun e!2823504 () Bool)

(assert (=> b!4531386 (= e!2823504 (contains!13466 (keys!17630 lt!1706723) key!3287))))

(declare-fun bm!315876 () Bool)

(declare-fun e!2823500 () List!50829)

(assert (=> bm!315876 (= call!315881 (contains!13466 e!2823500 key!3287))))

(declare-fun c!773753 () Bool)

(declare-fun c!773754 () Bool)

(assert (=> bm!315876 (= c!773753 c!773754)))

(declare-fun d!1398844 () Bool)

(declare-fun e!2823503 () Bool)

(assert (=> d!1398844 e!2823503))

(declare-fun res!1887237 () Bool)

(assert (=> d!1398844 (=> res!1887237 e!2823503)))

(declare-fun e!2823502 () Bool)

(assert (=> d!1398844 (= res!1887237 e!2823502)))

(declare-fun res!1887238 () Bool)

(assert (=> d!1398844 (=> (not res!1887238) (not e!2823502))))

(declare-fun lt!1706806 () Bool)

(assert (=> d!1398844 (= res!1887238 (not lt!1706806))))

(declare-fun lt!1706803 () Bool)

(assert (=> d!1398844 (= lt!1706806 lt!1706803)))

(declare-fun lt!1706804 () Unit!96986)

(assert (=> d!1398844 (= lt!1706804 e!2823505)))

(assert (=> d!1398844 (= c!773754 lt!1706803)))

(assert (=> d!1398844 (= lt!1706803 (containsKey!1833 (toList!4367 lt!1706723) key!3287))))

(assert (=> d!1398844 (= (contains!13463 lt!1706723 key!3287) lt!1706806)))

(declare-fun b!4531387 () Bool)

(assert (=> b!4531387 (= e!2823503 e!2823504)))

(declare-fun res!1887236 () Bool)

(assert (=> b!4531387 (=> (not res!1887236) (not e!2823504))))

(assert (=> b!4531387 (= res!1887236 (isDefined!8443 (getValueByKey!1123 (toList!4367 lt!1706723) key!3287)))))

(declare-fun b!4531388 () Bool)

(assert (=> b!4531388 (= e!2823500 (getKeysList!480 (toList!4367 lt!1706723)))))

(declare-fun b!4531389 () Bool)

(declare-fun Unit!97017 () Unit!96986)

(assert (=> b!4531389 (= e!2823501 Unit!97017)))

(declare-fun b!4531390 () Bool)

(assert (=> b!4531390 (= e!2823502 (not (contains!13466 (keys!17630 lt!1706723) key!3287)))))

(declare-fun b!4531391 () Bool)

(assert (=> b!4531391 (= e!2823500 (keys!17630 lt!1706723))))

(declare-fun b!4531392 () Bool)

(declare-fun lt!1706808 () Unit!96986)

(assert (=> b!4531392 (= e!2823505 lt!1706808)))

(declare-fun lt!1706802 () Unit!96986)

(assert (=> b!4531392 (= lt!1706802 (lemmaContainsKeyImpliesGetValueByKeyDefined!1026 (toList!4367 lt!1706723) key!3287))))

(assert (=> b!4531392 (isDefined!8443 (getValueByKey!1123 (toList!4367 lt!1706723) key!3287))))

(declare-fun lt!1706805 () Unit!96986)

(assert (=> b!4531392 (= lt!1706805 lt!1706802)))

(assert (=> b!4531392 (= lt!1706808 (lemmaInListThenGetKeysListContains!476 (toList!4367 lt!1706723) key!3287))))

(assert (=> b!4531392 call!315881))

(assert (= (and d!1398844 c!773754) b!4531392))

(assert (= (and d!1398844 (not c!773754)) b!4531385))

(assert (= (and b!4531385 c!773755) b!4531384))

(assert (= (and b!4531385 (not c!773755)) b!4531389))

(assert (= (or b!4531392 b!4531385) bm!315876))

(assert (= (and bm!315876 c!773753) b!4531388))

(assert (= (and bm!315876 (not c!773753)) b!4531391))

(assert (= (and d!1398844 res!1887238) b!4531390))

(assert (= (and d!1398844 (not res!1887237)) b!4531387))

(assert (= (and b!4531387 res!1887236) b!4531386))

(declare-fun m!5289439 () Bool)

(assert (=> b!4531388 m!5289439))

(declare-fun m!5289441 () Bool)

(assert (=> b!4531392 m!5289441))

(declare-fun m!5289443 () Bool)

(assert (=> b!4531392 m!5289443))

(assert (=> b!4531392 m!5289443))

(declare-fun m!5289445 () Bool)

(assert (=> b!4531392 m!5289445))

(declare-fun m!5289447 () Bool)

(assert (=> b!4531392 m!5289447))

(declare-fun m!5289449 () Bool)

(assert (=> b!4531390 m!5289449))

(assert (=> b!4531390 m!5289449))

(declare-fun m!5289451 () Bool)

(assert (=> b!4531390 m!5289451))

(declare-fun m!5289453 () Bool)

(assert (=> b!4531384 m!5289453))

(declare-fun m!5289455 () Bool)

(assert (=> b!4531384 m!5289455))

(assert (=> b!4531386 m!5289449))

(assert (=> b!4531386 m!5289449))

(assert (=> b!4531386 m!5289451))

(declare-fun m!5289457 () Bool)

(assert (=> bm!315876 m!5289457))

(assert (=> b!4531391 m!5289449))

(assert (=> b!4531387 m!5289443))

(assert (=> b!4531387 m!5289443))

(assert (=> b!4531387 m!5289445))

(assert (=> d!1398844 m!5289453))

(assert (=> b!4531301 d!1398844))

(declare-fun d!1398846 () Bool)

(declare-fun hash!2873 (Hashable!5575 K!12090) (_ BitVec 64))

(assert (=> d!1398846 (= (hash!2869 hashF!1107 key!3287) (hash!2873 hashF!1107 key!3287))))

(declare-fun bs!867657 () Bool)

(assert (= bs!867657 d!1398846))

(declare-fun m!5289459 () Bool)

(assert (=> bs!867657 m!5289459))

(assert (=> b!4531300 d!1398846))

(declare-fun d!1398848 () Bool)

(declare-fun head!9449 (List!50827) tuple2!51156)

(assert (=> d!1398848 (= (head!9448 lt!1706743) (head!9449 (toList!4368 lt!1706743)))))

(declare-fun bs!867658 () Bool)

(assert (= bs!867658 d!1398848))

(declare-fun m!5289461 () Bool)

(assert (=> bs!867658 m!5289461))

(assert (=> b!4531320 d!1398848))

(declare-fun d!1398850 () Bool)

(declare-fun res!1887245 () Bool)

(declare-fun e!2823512 () Bool)

(assert (=> d!1398850 (=> res!1887245 e!2823512)))

(assert (=> d!1398850 (= res!1887245 (not ((_ is Cons!50702) newBucket!178)))))

(assert (=> d!1398850 (= (noDuplicateKeys!1180 newBucket!178) e!2823512)))

(declare-fun b!4531399 () Bool)

(declare-fun e!2823513 () Bool)

(assert (=> b!4531399 (= e!2823512 e!2823513)))

(declare-fun res!1887246 () Bool)

(assert (=> b!4531399 (=> (not res!1887246) (not e!2823513))))

(assert (=> b!4531399 (= res!1887246 (not (containsKey!1832 (t!357788 newBucket!178) (_1!28871 (h!56571 newBucket!178)))))))

(declare-fun b!4531400 () Bool)

(assert (=> b!4531400 (= e!2823513 (noDuplicateKeys!1180 (t!357788 newBucket!178)))))

(assert (= (and d!1398850 (not res!1887245)) b!4531399))

(assert (= (and b!4531399 res!1887246) b!4531400))

(declare-fun m!5289463 () Bool)

(assert (=> b!4531399 m!5289463))

(declare-fun m!5289465 () Bool)

(assert (=> b!4531400 m!5289465))

(assert (=> b!4531299 d!1398850))

(declare-fun d!1398852 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8405 (List!50826) (InoxSet tuple2!51154))

(assert (=> d!1398852 (= (eq!637 lt!1706729 lt!1706735) (= (content!8405 (toList!4367 lt!1706729)) (content!8405 (toList!4367 lt!1706735))))))

(declare-fun bs!867659 () Bool)

(assert (= bs!867659 d!1398852))

(declare-fun m!5289467 () Bool)

(assert (=> bs!867659 m!5289467))

(declare-fun m!5289469 () Bool)

(assert (=> bs!867659 m!5289469))

(assert (=> b!4531319 d!1398852))

(declare-fun bs!867691 () Bool)

(declare-fun b!4531540 () Bool)

(assert (= bs!867691 (and b!4531540 b!4531316)))

(declare-fun lambda!174525 () Int)

(assert (=> bs!867691 (not (= lambda!174525 lambda!174447))))

(assert (=> b!4531540 true))

(declare-fun bs!867692 () Bool)

(declare-fun b!4531543 () Bool)

(assert (= bs!867692 (and b!4531543 b!4531316)))

(declare-fun lambda!174526 () Int)

(assert (=> bs!867692 (not (= lambda!174526 lambda!174447))))

(declare-fun bs!867693 () Bool)

(assert (= bs!867693 (and b!4531543 b!4531540)))

(assert (=> bs!867693 (= lambda!174526 lambda!174525)))

(assert (=> b!4531543 true))

(declare-fun lambda!174527 () Int)

(assert (=> bs!867692 (not (= lambda!174527 lambda!174447))))

(declare-fun lt!1707006 () ListMap!3629)

(assert (=> bs!867693 (= (= lt!1707006 lt!1706746) (= lambda!174527 lambda!174525))))

(assert (=> b!4531543 (= (= lt!1707006 lt!1706746) (= lambda!174527 lambda!174526))))

(assert (=> b!4531543 true))

(declare-fun bs!867694 () Bool)

(declare-fun d!1398854 () Bool)

(assert (= bs!867694 (and d!1398854 b!4531316)))

(declare-fun lambda!174528 () Int)

(assert (=> bs!867694 (not (= lambda!174528 lambda!174447))))

(declare-fun bs!867695 () Bool)

(assert (= bs!867695 (and d!1398854 b!4531540)))

(declare-fun lt!1707013 () ListMap!3629)

(assert (=> bs!867695 (= (= lt!1707013 lt!1706746) (= lambda!174528 lambda!174525))))

(declare-fun bs!867696 () Bool)

(assert (= bs!867696 (and d!1398854 b!4531543)))

(assert (=> bs!867696 (= (= lt!1707013 lt!1706746) (= lambda!174528 lambda!174526))))

(assert (=> bs!867696 (= (= lt!1707013 lt!1707006) (= lambda!174528 lambda!174527))))

(assert (=> d!1398854 true))

(declare-fun bm!315897 () Bool)

(declare-fun call!315903 () Bool)

(declare-fun c!773781 () Bool)

(declare-fun forall!10311 (List!50826 Int) Bool)

(assert (=> bm!315897 (= call!315903 (forall!10311 (toList!4367 lt!1706746) (ite c!773781 lambda!174525 lambda!174527)))))

(declare-fun call!315902 () Bool)

(declare-fun bm!315898 () Bool)

(assert (=> bm!315898 (= call!315902 (forall!10311 (ite c!773781 (toList!4367 lt!1706746) (_2!28872 lt!1706730)) (ite c!773781 lambda!174525 lambda!174527)))))

(declare-fun e!2823615 () ListMap!3629)

(assert (=> b!4531540 (= e!2823615 lt!1706746)))

(declare-fun lt!1706995 () Unit!96986)

(declare-fun call!315904 () Unit!96986)

(assert (=> b!4531540 (= lt!1706995 call!315904)))

(assert (=> b!4531540 call!315903))

(declare-fun lt!1707000 () Unit!96986)

(assert (=> b!4531540 (= lt!1707000 lt!1706995)))

(assert (=> b!4531540 call!315902))

(declare-fun lt!1707005 () Unit!96986)

(declare-fun Unit!97018 () Unit!96986)

(assert (=> b!4531540 (= lt!1707005 Unit!97018)))

(declare-fun b!4531541 () Bool)

(declare-fun e!2823614 () Bool)

(assert (=> b!4531541 (= e!2823614 (forall!10311 (toList!4367 lt!1706746) lambda!174527))))

(declare-fun b!4531542 () Bool)

(declare-fun e!2823613 () Bool)

(assert (=> b!4531542 (= e!2823613 (invariantList!1033 (toList!4367 lt!1707013)))))

(assert (=> b!4531543 (= e!2823615 lt!1707006)))

(declare-fun lt!1707008 () ListMap!3629)

(declare-fun +!1576 (ListMap!3629 tuple2!51154) ListMap!3629)

(assert (=> b!4531543 (= lt!1707008 (+!1576 lt!1706746 (h!56571 (_2!28872 lt!1706730))))))

(assert (=> b!4531543 (= lt!1707006 (addToMapMapFromBucket!707 (t!357788 (_2!28872 lt!1706730)) (+!1576 lt!1706746 (h!56571 (_2!28872 lt!1706730)))))))

(declare-fun lt!1707007 () Unit!96986)

(assert (=> b!4531543 (= lt!1707007 call!315904)))

(assert (=> b!4531543 (forall!10311 (toList!4367 lt!1706746) lambda!174526)))

(declare-fun lt!1707011 () Unit!96986)

(assert (=> b!4531543 (= lt!1707011 lt!1707007)))

(assert (=> b!4531543 (forall!10311 (toList!4367 lt!1707008) lambda!174527)))

(declare-fun lt!1707003 () Unit!96986)

(declare-fun Unit!97019 () Unit!96986)

(assert (=> b!4531543 (= lt!1707003 Unit!97019)))

(assert (=> b!4531543 (forall!10311 (t!357788 (_2!28872 lt!1706730)) lambda!174527)))

(declare-fun lt!1706999 () Unit!96986)

(declare-fun Unit!97020 () Unit!96986)

(assert (=> b!4531543 (= lt!1706999 Unit!97020)))

(declare-fun lt!1706996 () Unit!96986)

(declare-fun Unit!97021 () Unit!96986)

(assert (=> b!4531543 (= lt!1706996 Unit!97021)))

(declare-fun lt!1706998 () Unit!96986)

(assert (=> b!4531543 (= lt!1706998 (forallContained!2565 (toList!4367 lt!1707008) lambda!174527 (h!56571 (_2!28872 lt!1706730))))))

(assert (=> b!4531543 (contains!13463 lt!1707008 (_1!28871 (h!56571 (_2!28872 lt!1706730))))))

(declare-fun lt!1707009 () Unit!96986)

(declare-fun Unit!97022 () Unit!96986)

(assert (=> b!4531543 (= lt!1707009 Unit!97022)))

(assert (=> b!4531543 (contains!13463 lt!1707006 (_1!28871 (h!56571 (_2!28872 lt!1706730))))))

(declare-fun lt!1706994 () Unit!96986)

(declare-fun Unit!97023 () Unit!96986)

(assert (=> b!4531543 (= lt!1706994 Unit!97023)))

(assert (=> b!4531543 call!315902))

(declare-fun lt!1707014 () Unit!96986)

(declare-fun Unit!97024 () Unit!96986)

(assert (=> b!4531543 (= lt!1707014 Unit!97024)))

(assert (=> b!4531543 (forall!10311 (toList!4367 lt!1707008) lambda!174527)))

(declare-fun lt!1707001 () Unit!96986)

(declare-fun Unit!97025 () Unit!96986)

(assert (=> b!4531543 (= lt!1707001 Unit!97025)))

(declare-fun lt!1707004 () Unit!96986)

(declare-fun Unit!97026 () Unit!96986)

(assert (=> b!4531543 (= lt!1707004 Unit!97026)))

(declare-fun lt!1706997 () Unit!96986)

(declare-fun addForallContainsKeyThenBeforeAdding!354 (ListMap!3629 ListMap!3629 K!12090 V!12336) Unit!96986)

(assert (=> b!4531543 (= lt!1706997 (addForallContainsKeyThenBeforeAdding!354 lt!1706746 lt!1707006 (_1!28871 (h!56571 (_2!28872 lt!1706730))) (_2!28871 (h!56571 (_2!28872 lt!1706730)))))))

(assert (=> b!4531543 call!315903))

(declare-fun lt!1707002 () Unit!96986)

(assert (=> b!4531543 (= lt!1707002 lt!1706997)))

(assert (=> b!4531543 (forall!10311 (toList!4367 lt!1706746) lambda!174527)))

(declare-fun lt!1707010 () Unit!96986)

(declare-fun Unit!97027 () Unit!96986)

(assert (=> b!4531543 (= lt!1707010 Unit!97027)))

(declare-fun res!1887335 () Bool)

(assert (=> b!4531543 (= res!1887335 (forall!10311 (_2!28872 lt!1706730) lambda!174527))))

(assert (=> b!4531543 (=> (not res!1887335) (not e!2823614))))

(assert (=> b!4531543 e!2823614))

(declare-fun lt!1707012 () Unit!96986)

(declare-fun Unit!97028 () Unit!96986)

(assert (=> b!4531543 (= lt!1707012 Unit!97028)))

(declare-fun bm!315899 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!354 (ListMap!3629) Unit!96986)

(assert (=> bm!315899 (= call!315904 (lemmaContainsAllItsOwnKeys!354 lt!1706746))))

(declare-fun b!4531544 () Bool)

(declare-fun res!1887334 () Bool)

(assert (=> b!4531544 (=> (not res!1887334) (not e!2823613))))

(assert (=> b!4531544 (= res!1887334 (forall!10311 (toList!4367 lt!1706746) lambda!174528))))

(assert (=> d!1398854 e!2823613))

(declare-fun res!1887336 () Bool)

(assert (=> d!1398854 (=> (not res!1887336) (not e!2823613))))

(assert (=> d!1398854 (= res!1887336 (forall!10311 (_2!28872 lt!1706730) lambda!174528))))

(assert (=> d!1398854 (= lt!1707013 e!2823615)))

(assert (=> d!1398854 (= c!773781 ((_ is Nil!50702) (_2!28872 lt!1706730)))))

(assert (=> d!1398854 (noDuplicateKeys!1180 (_2!28872 lt!1706730))))

(assert (=> d!1398854 (= (addToMapMapFromBucket!707 (_2!28872 lt!1706730) lt!1706746) lt!1707013)))

(assert (= (and d!1398854 c!773781) b!4531540))

(assert (= (and d!1398854 (not c!773781)) b!4531543))

(assert (= (and b!4531543 res!1887335) b!4531541))

(assert (= (or b!4531540 b!4531543) bm!315898))

(assert (= (or b!4531540 b!4531543) bm!315897))

(assert (= (or b!4531540 b!4531543) bm!315899))

(assert (= (and d!1398854 res!1887336) b!4531544))

(assert (= (and b!4531544 res!1887334) b!4531542))

(declare-fun m!5289699 () Bool)

(assert (=> bm!315898 m!5289699))

(declare-fun m!5289701 () Bool)

(assert (=> b!4531542 m!5289701))

(declare-fun m!5289703 () Bool)

(assert (=> b!4531543 m!5289703))

(declare-fun m!5289705 () Bool)

(assert (=> b!4531543 m!5289705))

(declare-fun m!5289707 () Bool)

(assert (=> b!4531543 m!5289707))

(declare-fun m!5289709 () Bool)

(assert (=> b!4531543 m!5289709))

(declare-fun m!5289711 () Bool)

(assert (=> b!4531543 m!5289711))

(declare-fun m!5289713 () Bool)

(assert (=> b!4531543 m!5289713))

(declare-fun m!5289715 () Bool)

(assert (=> b!4531543 m!5289715))

(assert (=> b!4531543 m!5289715))

(declare-fun m!5289717 () Bool)

(assert (=> b!4531543 m!5289717))

(declare-fun m!5289719 () Bool)

(assert (=> b!4531543 m!5289719))

(declare-fun m!5289721 () Bool)

(assert (=> b!4531543 m!5289721))

(assert (=> b!4531543 m!5289705))

(declare-fun m!5289723 () Bool)

(assert (=> b!4531543 m!5289723))

(declare-fun m!5289725 () Bool)

(assert (=> d!1398854 m!5289725))

(assert (=> d!1398854 m!5289369))

(declare-fun m!5289727 () Bool)

(assert (=> bm!315899 m!5289727))

(declare-fun m!5289729 () Bool)

(assert (=> bm!315897 m!5289729))

(declare-fun m!5289731 () Bool)

(assert (=> b!4531544 m!5289731))

(assert (=> b!4531541 m!5289711))

(assert (=> b!4531319 d!1398854))

(declare-fun bs!867697 () Bool)

(declare-fun d!1398912 () Bool)

(assert (= bs!867697 (and d!1398912 d!1398842)))

(declare-fun lambda!174529 () Int)

(assert (=> bs!867697 (= lambda!174529 lambda!174461)))

(declare-fun bs!867698 () Bool)

(assert (= bs!867698 (and d!1398912 b!4531316)))

(assert (=> bs!867698 (not (= lambda!174529 lambda!174446))))

(declare-fun bs!867699 () Bool)

(assert (= bs!867699 (and d!1398912 start!449344)))

(assert (=> bs!867699 (= lambda!174529 lambda!174445)))

(declare-fun bs!867700 () Bool)

(assert (= bs!867700 (and d!1398912 d!1398824)))

(assert (=> bs!867700 (= lambda!174529 lambda!174453)))

(declare-fun bs!867701 () Bool)

(assert (= bs!867701 (and d!1398912 d!1398840)))

(assert (=> bs!867701 (= lambda!174529 lambda!174456)))

(declare-fun lt!1707023 () ListMap!3629)

(assert (=> d!1398912 (invariantList!1033 (toList!4367 lt!1707023))))

(declare-fun e!2823622 () ListMap!3629)

(assert (=> d!1398912 (= lt!1707023 e!2823622)))

(declare-fun c!773785 () Bool)

(assert (=> d!1398912 (= c!773785 ((_ is Cons!50703) (toList!4368 lt!1706743)))))

(assert (=> d!1398912 (forall!10309 (toList!4368 lt!1706743) lambda!174529)))

(assert (=> d!1398912 (= (extractMap!1236 (toList!4368 lt!1706743)) lt!1707023)))

(declare-fun b!4531556 () Bool)

(assert (=> b!4531556 (= e!2823622 (addToMapMapFromBucket!707 (_2!28872 (h!56572 (toList!4368 lt!1706743))) (extractMap!1236 (t!357789 (toList!4368 lt!1706743)))))))

(declare-fun b!4531557 () Bool)

(assert (=> b!4531557 (= e!2823622 (ListMap!3630 Nil!50702))))

(assert (= (and d!1398912 c!773785) b!4531556))

(assert (= (and d!1398912 (not c!773785)) b!4531557))

(declare-fun m!5289733 () Bool)

(assert (=> d!1398912 m!5289733))

(declare-fun m!5289735 () Bool)

(assert (=> d!1398912 m!5289735))

(declare-fun m!5289737 () Bool)

(assert (=> b!4531556 m!5289737))

(assert (=> b!4531556 m!5289737))

(declare-fun m!5289739 () Bool)

(assert (=> b!4531556 m!5289739))

(assert (=> b!4531319 d!1398912))

(declare-fun d!1398914 () Bool)

(declare-fun e!2823627 () Bool)

(assert (=> d!1398914 e!2823627))

(declare-fun res!1887344 () Bool)

(assert (=> d!1398914 (=> (not res!1887344) (not e!2823627))))

(declare-fun lt!1707037 () ListLongMap!2999)

(assert (=> d!1398914 (= res!1887344 (contains!13464 lt!1707037 (_1!28872 lt!1706731)))))

(declare-fun lt!1707034 () List!50827)

(assert (=> d!1398914 (= lt!1707037 (ListLongMap!3000 lt!1707034))))

(declare-fun lt!1707036 () Unit!96986)

(declare-fun lt!1707035 () Unit!96986)

(assert (=> d!1398914 (= lt!1707036 lt!1707035)))

(declare-datatypes ((Option!11162 0))(
  ( (None!11161) (Some!11161 (v!44821 List!50826)) )
))
(declare-fun getValueByKey!1124 (List!50827 (_ BitVec 64)) Option!11162)

(assert (=> d!1398914 (= (getValueByKey!1124 lt!1707034 (_1!28872 lt!1706731)) (Some!11161 (_2!28872 lt!1706731)))))

(declare-fun lemmaContainsTupThenGetReturnValue!704 (List!50827 (_ BitVec 64) List!50826) Unit!96986)

(assert (=> d!1398914 (= lt!1707035 (lemmaContainsTupThenGetReturnValue!704 lt!1707034 (_1!28872 lt!1706731) (_2!28872 lt!1706731)))))

(declare-fun insertStrictlySorted!424 (List!50827 (_ BitVec 64) List!50826) List!50827)

(assert (=> d!1398914 (= lt!1707034 (insertStrictlySorted!424 (toList!4368 lm!1477) (_1!28872 lt!1706731) (_2!28872 lt!1706731)))))

(assert (=> d!1398914 (= (+!1574 lm!1477 lt!1706731) lt!1707037)))

(declare-fun b!4531566 () Bool)

(declare-fun res!1887345 () Bool)

(assert (=> b!4531566 (=> (not res!1887345) (not e!2823627))))

(assert (=> b!4531566 (= res!1887345 (= (getValueByKey!1124 (toList!4368 lt!1707037) (_1!28872 lt!1706731)) (Some!11161 (_2!28872 lt!1706731))))))

(declare-fun b!4531567 () Bool)

(assert (=> b!4531567 (= e!2823627 (contains!13465 (toList!4368 lt!1707037) lt!1706731))))

(assert (= (and d!1398914 res!1887344) b!4531566))

(assert (= (and b!4531566 res!1887345) b!4531567))

(declare-fun m!5289741 () Bool)

(assert (=> d!1398914 m!5289741))

(declare-fun m!5289743 () Bool)

(assert (=> d!1398914 m!5289743))

(declare-fun m!5289745 () Bool)

(assert (=> d!1398914 m!5289745))

(declare-fun m!5289747 () Bool)

(assert (=> d!1398914 m!5289747))

(declare-fun m!5289749 () Bool)

(assert (=> b!4531566 m!5289749))

(declare-fun m!5289751 () Bool)

(assert (=> b!4531567 m!5289751))

(assert (=> b!4531306 d!1398914))

(declare-fun d!1398916 () Bool)

(declare-fun e!2823629 () Bool)

(assert (=> d!1398916 e!2823629))

(declare-fun res!1887346 () Bool)

(assert (=> d!1398916 (=> (not res!1887346) (not e!2823629))))

(declare-fun lt!1707042 () ListLongMap!2999)

(assert (=> d!1398916 (= res!1887346 (contains!13464 lt!1707042 (_1!28872 lt!1706730)))))

(declare-fun lt!1707039 () List!50827)

(assert (=> d!1398916 (= lt!1707042 (ListLongMap!3000 lt!1707039))))

(declare-fun lt!1707041 () Unit!96986)

(declare-fun lt!1707040 () Unit!96986)

(assert (=> d!1398916 (= lt!1707041 lt!1707040)))

(assert (=> d!1398916 (= (getValueByKey!1124 lt!1707039 (_1!28872 lt!1706730)) (Some!11161 (_2!28872 lt!1706730)))))

(assert (=> d!1398916 (= lt!1707040 (lemmaContainsTupThenGetReturnValue!704 lt!1707039 (_1!28872 lt!1706730) (_2!28872 lt!1706730)))))

(assert (=> d!1398916 (= lt!1707039 (insertStrictlySorted!424 (toList!4368 lt!1706721) (_1!28872 lt!1706730) (_2!28872 lt!1706730)))))

(assert (=> d!1398916 (= (+!1574 lt!1706721 lt!1706730) lt!1707042)))

(declare-fun b!4531570 () Bool)

(declare-fun res!1887347 () Bool)

(assert (=> b!4531570 (=> (not res!1887347) (not e!2823629))))

(assert (=> b!4531570 (= res!1887347 (= (getValueByKey!1124 (toList!4368 lt!1707042) (_1!28872 lt!1706730)) (Some!11161 (_2!28872 lt!1706730))))))

(declare-fun b!4531571 () Bool)

(assert (=> b!4531571 (= e!2823629 (contains!13465 (toList!4368 lt!1707042) lt!1706730))))

(assert (= (and d!1398916 res!1887346) b!4531570))

(assert (= (and b!4531570 res!1887347) b!4531571))

(declare-fun m!5289757 () Bool)

(assert (=> d!1398916 m!5289757))

(declare-fun m!5289759 () Bool)

(assert (=> d!1398916 m!5289759))

(declare-fun m!5289763 () Bool)

(assert (=> d!1398916 m!5289763))

(declare-fun m!5289765 () Bool)

(assert (=> d!1398916 m!5289765))

(declare-fun m!5289767 () Bool)

(assert (=> b!4531570 m!5289767))

(declare-fun m!5289769 () Bool)

(assert (=> b!4531571 m!5289769))

(assert (=> b!4531306 d!1398916))

(declare-fun d!1398920 () Bool)

(declare-fun res!1887354 () Bool)

(declare-fun e!2823636 () Bool)

(assert (=> d!1398920 (=> res!1887354 e!2823636)))

(assert (=> d!1398920 (= res!1887354 (and ((_ is Cons!50702) (_2!28872 lt!1706730)) (= (_1!28871 (h!56571 (_2!28872 lt!1706730))) key!3287)))))

(assert (=> d!1398920 (= (containsKey!1832 (_2!28872 lt!1706730) key!3287) e!2823636)))

(declare-fun b!4531578 () Bool)

(declare-fun e!2823637 () Bool)

(assert (=> b!4531578 (= e!2823636 e!2823637)))

(declare-fun res!1887355 () Bool)

(assert (=> b!4531578 (=> (not res!1887355) (not e!2823637))))

(assert (=> b!4531578 (= res!1887355 ((_ is Cons!50702) (_2!28872 lt!1706730)))))

(declare-fun b!4531579 () Bool)

(assert (=> b!4531579 (= e!2823637 (containsKey!1832 (t!357788 (_2!28872 lt!1706730)) key!3287))))

(assert (= (and d!1398920 (not res!1887354)) b!4531578))

(assert (= (and b!4531578 res!1887355) b!4531579))

(declare-fun m!5289775 () Bool)

(assert (=> b!4531579 m!5289775))

(assert (=> b!4531305 d!1398920))

(declare-fun d!1398926 () Bool)

(declare-fun res!1887356 () Bool)

(declare-fun e!2823638 () Bool)

(assert (=> d!1398926 (=> res!1887356 e!2823638)))

(assert (=> d!1398926 (= res!1887356 ((_ is Nil!50703) (toList!4368 lt!1706740)))))

(assert (=> d!1398926 (= (forall!10309 (toList!4368 lt!1706740) lambda!174445) e!2823638)))

(declare-fun b!4531580 () Bool)

(declare-fun e!2823639 () Bool)

(assert (=> b!4531580 (= e!2823638 e!2823639)))

(declare-fun res!1887357 () Bool)

(assert (=> b!4531580 (=> (not res!1887357) (not e!2823639))))

(assert (=> b!4531580 (= res!1887357 (dynLambda!21191 lambda!174445 (h!56572 (toList!4368 lt!1706740))))))

(declare-fun b!4531581 () Bool)

(assert (=> b!4531581 (= e!2823639 (forall!10309 (t!357789 (toList!4368 lt!1706740)) lambda!174445))))

(assert (= (and d!1398926 (not res!1887356)) b!4531580))

(assert (= (and b!4531580 res!1887357) b!4531581))

(declare-fun b_lambda!156719 () Bool)

(assert (=> (not b_lambda!156719) (not b!4531580)))

(declare-fun m!5289777 () Bool)

(assert (=> b!4531580 m!5289777))

(declare-fun m!5289779 () Bool)

(assert (=> b!4531581 m!5289779))

(assert (=> b!4531304 d!1398926))

(declare-fun d!1398928 () Bool)

(declare-fun e!2823642 () Bool)

(assert (=> d!1398928 e!2823642))

(declare-fun res!1887360 () Bool)

(assert (=> d!1398928 (=> (not res!1887360) (not e!2823642))))

(declare-fun lt!1707045 () ListMap!3629)

(assert (=> d!1398928 (= res!1887360 (not (contains!13463 lt!1707045 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!157 (List!50826 K!12090) List!50826)

(assert (=> d!1398928 (= lt!1707045 (ListMap!3630 (removePresrvNoDuplicatedKeys!157 (toList!4367 (addToMapMapFromBucket!707 (_2!28872 lt!1706730) lt!1706723)) key!3287)))))

(assert (=> d!1398928 (= (-!406 (addToMapMapFromBucket!707 (_2!28872 lt!1706730) lt!1706723) key!3287) lt!1707045)))

(declare-fun b!4531584 () Bool)

(declare-fun content!8406 (List!50829) (InoxSet K!12090))

(assert (=> b!4531584 (= e!2823642 (= ((_ map and) (content!8406 (keys!17630 (addToMapMapFromBucket!707 (_2!28872 lt!1706730) lt!1706723))) ((_ map not) (store ((as const (Array K!12090 Bool)) false) key!3287 true))) (content!8406 (keys!17630 lt!1707045))))))

(assert (= (and d!1398928 res!1887360) b!4531584))

(declare-fun m!5289783 () Bool)

(assert (=> d!1398928 m!5289783))

(declare-fun m!5289785 () Bool)

(assert (=> d!1398928 m!5289785))

(assert (=> b!4531584 m!5289257))

(declare-fun m!5289787 () Bool)

(assert (=> b!4531584 m!5289787))

(declare-fun m!5289789 () Bool)

(assert (=> b!4531584 m!5289789))

(declare-fun m!5289791 () Bool)

(assert (=> b!4531584 m!5289791))

(declare-fun m!5289793 () Bool)

(assert (=> b!4531584 m!5289793))

(assert (=> b!4531584 m!5289791))

(assert (=> b!4531584 m!5289787))

(declare-fun m!5289795 () Bool)

(assert (=> b!4531584 m!5289795))

(assert (=> b!4531304 d!1398928))

(declare-fun bs!867713 () Bool)

(declare-fun b!4531585 () Bool)

(assert (= bs!867713 (and b!4531585 d!1398854)))

(declare-fun lambda!174536 () Int)

(assert (=> bs!867713 (= (= lt!1706723 lt!1707013) (= lambda!174536 lambda!174528))))

(declare-fun bs!867714 () Bool)

(assert (= bs!867714 (and b!4531585 b!4531540)))

(assert (=> bs!867714 (= (= lt!1706723 lt!1706746) (= lambda!174536 lambda!174525))))

(declare-fun bs!867715 () Bool)

(assert (= bs!867715 (and b!4531585 b!4531543)))

(assert (=> bs!867715 (= (= lt!1706723 lt!1707006) (= lambda!174536 lambda!174527))))

(assert (=> bs!867715 (= (= lt!1706723 lt!1706746) (= lambda!174536 lambda!174526))))

(declare-fun bs!867716 () Bool)

(assert (= bs!867716 (and b!4531585 b!4531316)))

(assert (=> bs!867716 (not (= lambda!174536 lambda!174447))))

(assert (=> b!4531585 true))

(declare-fun bs!867717 () Bool)

(declare-fun b!4531588 () Bool)

(assert (= bs!867717 (and b!4531588 d!1398854)))

(declare-fun lambda!174537 () Int)

(assert (=> bs!867717 (= (= lt!1706723 lt!1707013) (= lambda!174537 lambda!174528))))

(declare-fun bs!867718 () Bool)

(assert (= bs!867718 (and b!4531588 b!4531540)))

(assert (=> bs!867718 (= (= lt!1706723 lt!1706746) (= lambda!174537 lambda!174525))))

(declare-fun bs!867719 () Bool)

(assert (= bs!867719 (and b!4531588 b!4531543)))

(assert (=> bs!867719 (= (= lt!1706723 lt!1707006) (= lambda!174537 lambda!174527))))

(declare-fun bs!867720 () Bool)

(assert (= bs!867720 (and b!4531588 b!4531585)))

(assert (=> bs!867720 (= lambda!174537 lambda!174536)))

(assert (=> bs!867719 (= (= lt!1706723 lt!1706746) (= lambda!174537 lambda!174526))))

(declare-fun bs!867721 () Bool)

(assert (= bs!867721 (and b!4531588 b!4531316)))

(assert (=> bs!867721 (not (= lambda!174537 lambda!174447))))

(assert (=> b!4531588 true))

(declare-fun lambda!174538 () Int)

(declare-fun lt!1707058 () ListMap!3629)

(assert (=> b!4531588 (= (= lt!1707058 lt!1706723) (= lambda!174538 lambda!174537))))

(assert (=> bs!867717 (= (= lt!1707058 lt!1707013) (= lambda!174538 lambda!174528))))

(assert (=> bs!867718 (= (= lt!1707058 lt!1706746) (= lambda!174538 lambda!174525))))

(assert (=> bs!867719 (= (= lt!1707058 lt!1707006) (= lambda!174538 lambda!174527))))

(assert (=> bs!867720 (= (= lt!1707058 lt!1706723) (= lambda!174538 lambda!174536))))

(assert (=> bs!867719 (= (= lt!1707058 lt!1706746) (= lambda!174538 lambda!174526))))

(assert (=> bs!867721 (not (= lambda!174538 lambda!174447))))

(assert (=> b!4531588 true))

(declare-fun bs!867722 () Bool)

(declare-fun d!1398932 () Bool)

(assert (= bs!867722 (and d!1398932 b!4531588)))

(declare-fun lambda!174539 () Int)

(declare-fun lt!1707065 () ListMap!3629)

(assert (=> bs!867722 (= (= lt!1707065 lt!1706723) (= lambda!174539 lambda!174537))))

(declare-fun bs!867723 () Bool)

(assert (= bs!867723 (and d!1398932 b!4531540)))

(assert (=> bs!867723 (= (= lt!1707065 lt!1706746) (= lambda!174539 lambda!174525))))

(declare-fun bs!867724 () Bool)

(assert (= bs!867724 (and d!1398932 b!4531543)))

(assert (=> bs!867724 (= (= lt!1707065 lt!1707006) (= lambda!174539 lambda!174527))))

(declare-fun bs!867725 () Bool)

(assert (= bs!867725 (and d!1398932 b!4531585)))

(assert (=> bs!867725 (= (= lt!1707065 lt!1706723) (= lambda!174539 lambda!174536))))

(declare-fun bs!867726 () Bool)

(assert (= bs!867726 (and d!1398932 d!1398854)))

(assert (=> bs!867726 (= (= lt!1707065 lt!1707013) (= lambda!174539 lambda!174528))))

(assert (=> bs!867722 (= (= lt!1707065 lt!1707058) (= lambda!174539 lambda!174538))))

(assert (=> bs!867724 (= (= lt!1707065 lt!1706746) (= lambda!174539 lambda!174526))))

(declare-fun bs!867727 () Bool)

(assert (= bs!867727 (and d!1398932 b!4531316)))

(assert (=> bs!867727 (not (= lambda!174539 lambda!174447))))

(assert (=> d!1398932 true))

(declare-fun bm!315901 () Bool)

(declare-fun call!315907 () Bool)

(declare-fun c!773789 () Bool)

(assert (=> bm!315901 (= call!315907 (forall!10311 (toList!4367 lt!1706723) (ite c!773789 lambda!174536 lambda!174538)))))

(declare-fun call!315906 () Bool)

(declare-fun bm!315902 () Bool)

(assert (=> bm!315902 (= call!315906 (forall!10311 (ite c!773789 (toList!4367 lt!1706723) (_2!28872 lt!1706730)) (ite c!773789 lambda!174536 lambda!174538)))))

(declare-fun e!2823645 () ListMap!3629)

(assert (=> b!4531585 (= e!2823645 lt!1706723)))

(declare-fun lt!1707047 () Unit!96986)

(declare-fun call!315908 () Unit!96986)

(assert (=> b!4531585 (= lt!1707047 call!315908)))

(assert (=> b!4531585 call!315907))

(declare-fun lt!1707052 () Unit!96986)

(assert (=> b!4531585 (= lt!1707052 lt!1707047)))

(assert (=> b!4531585 call!315906))

(declare-fun lt!1707057 () Unit!96986)

(declare-fun Unit!97032 () Unit!96986)

(assert (=> b!4531585 (= lt!1707057 Unit!97032)))

(declare-fun b!4531586 () Bool)

(declare-fun e!2823644 () Bool)

(assert (=> b!4531586 (= e!2823644 (forall!10311 (toList!4367 lt!1706723) lambda!174538))))

(declare-fun b!4531587 () Bool)

(declare-fun e!2823643 () Bool)

(assert (=> b!4531587 (= e!2823643 (invariantList!1033 (toList!4367 lt!1707065)))))

(assert (=> b!4531588 (= e!2823645 lt!1707058)))

(declare-fun lt!1707060 () ListMap!3629)

(assert (=> b!4531588 (= lt!1707060 (+!1576 lt!1706723 (h!56571 (_2!28872 lt!1706730))))))

(assert (=> b!4531588 (= lt!1707058 (addToMapMapFromBucket!707 (t!357788 (_2!28872 lt!1706730)) (+!1576 lt!1706723 (h!56571 (_2!28872 lt!1706730)))))))

(declare-fun lt!1707059 () Unit!96986)

(assert (=> b!4531588 (= lt!1707059 call!315908)))

(assert (=> b!4531588 (forall!10311 (toList!4367 lt!1706723) lambda!174537)))

(declare-fun lt!1707063 () Unit!96986)

(assert (=> b!4531588 (= lt!1707063 lt!1707059)))

(assert (=> b!4531588 (forall!10311 (toList!4367 lt!1707060) lambda!174538)))

(declare-fun lt!1707055 () Unit!96986)

(declare-fun Unit!97033 () Unit!96986)

(assert (=> b!4531588 (= lt!1707055 Unit!97033)))

(assert (=> b!4531588 (forall!10311 (t!357788 (_2!28872 lt!1706730)) lambda!174538)))

(declare-fun lt!1707051 () Unit!96986)

(declare-fun Unit!97034 () Unit!96986)

(assert (=> b!4531588 (= lt!1707051 Unit!97034)))

(declare-fun lt!1707048 () Unit!96986)

(declare-fun Unit!97035 () Unit!96986)

(assert (=> b!4531588 (= lt!1707048 Unit!97035)))

(declare-fun lt!1707050 () Unit!96986)

(assert (=> b!4531588 (= lt!1707050 (forallContained!2565 (toList!4367 lt!1707060) lambda!174538 (h!56571 (_2!28872 lt!1706730))))))

(assert (=> b!4531588 (contains!13463 lt!1707060 (_1!28871 (h!56571 (_2!28872 lt!1706730))))))

(declare-fun lt!1707061 () Unit!96986)

(declare-fun Unit!97036 () Unit!96986)

(assert (=> b!4531588 (= lt!1707061 Unit!97036)))

(assert (=> b!4531588 (contains!13463 lt!1707058 (_1!28871 (h!56571 (_2!28872 lt!1706730))))))

(declare-fun lt!1707046 () Unit!96986)

(declare-fun Unit!97037 () Unit!96986)

(assert (=> b!4531588 (= lt!1707046 Unit!97037)))

(assert (=> b!4531588 call!315906))

(declare-fun lt!1707066 () Unit!96986)

(declare-fun Unit!97038 () Unit!96986)

(assert (=> b!4531588 (= lt!1707066 Unit!97038)))

(assert (=> b!4531588 (forall!10311 (toList!4367 lt!1707060) lambda!174538)))

(declare-fun lt!1707053 () Unit!96986)

(declare-fun Unit!97039 () Unit!96986)

(assert (=> b!4531588 (= lt!1707053 Unit!97039)))

(declare-fun lt!1707056 () Unit!96986)

(declare-fun Unit!97040 () Unit!96986)

(assert (=> b!4531588 (= lt!1707056 Unit!97040)))

(declare-fun lt!1707049 () Unit!96986)

(assert (=> b!4531588 (= lt!1707049 (addForallContainsKeyThenBeforeAdding!354 lt!1706723 lt!1707058 (_1!28871 (h!56571 (_2!28872 lt!1706730))) (_2!28871 (h!56571 (_2!28872 lt!1706730)))))))

(assert (=> b!4531588 call!315907))

(declare-fun lt!1707054 () Unit!96986)

(assert (=> b!4531588 (= lt!1707054 lt!1707049)))

(assert (=> b!4531588 (forall!10311 (toList!4367 lt!1706723) lambda!174538)))

(declare-fun lt!1707062 () Unit!96986)

(declare-fun Unit!97041 () Unit!96986)

(assert (=> b!4531588 (= lt!1707062 Unit!97041)))

(declare-fun res!1887362 () Bool)

(assert (=> b!4531588 (= res!1887362 (forall!10311 (_2!28872 lt!1706730) lambda!174538))))

(assert (=> b!4531588 (=> (not res!1887362) (not e!2823644))))

(assert (=> b!4531588 e!2823644))

(declare-fun lt!1707064 () Unit!96986)

(declare-fun Unit!97042 () Unit!96986)

(assert (=> b!4531588 (= lt!1707064 Unit!97042)))

(declare-fun bm!315903 () Bool)

(assert (=> bm!315903 (= call!315908 (lemmaContainsAllItsOwnKeys!354 lt!1706723))))

(declare-fun b!4531589 () Bool)

(declare-fun res!1887361 () Bool)

(assert (=> b!4531589 (=> (not res!1887361) (not e!2823643))))

(assert (=> b!4531589 (= res!1887361 (forall!10311 (toList!4367 lt!1706723) lambda!174539))))

(assert (=> d!1398932 e!2823643))

(declare-fun res!1887363 () Bool)

(assert (=> d!1398932 (=> (not res!1887363) (not e!2823643))))

(assert (=> d!1398932 (= res!1887363 (forall!10311 (_2!28872 lt!1706730) lambda!174539))))

(assert (=> d!1398932 (= lt!1707065 e!2823645)))

(assert (=> d!1398932 (= c!773789 ((_ is Nil!50702) (_2!28872 lt!1706730)))))

(assert (=> d!1398932 (noDuplicateKeys!1180 (_2!28872 lt!1706730))))

(assert (=> d!1398932 (= (addToMapMapFromBucket!707 (_2!28872 lt!1706730) lt!1706723) lt!1707065)))

(assert (= (and d!1398932 c!773789) b!4531585))

(assert (= (and d!1398932 (not c!773789)) b!4531588))

(assert (= (and b!4531588 res!1887362) b!4531586))

(assert (= (or b!4531585 b!4531588) bm!315902))

(assert (= (or b!4531585 b!4531588) bm!315901))

(assert (= (or b!4531585 b!4531588) bm!315903))

(assert (= (and d!1398932 res!1887363) b!4531589))

(assert (= (and b!4531589 res!1887361) b!4531587))

(declare-fun m!5289797 () Bool)

(assert (=> bm!315902 m!5289797))

(declare-fun m!5289799 () Bool)

(assert (=> b!4531587 m!5289799))

(declare-fun m!5289801 () Bool)

(assert (=> b!4531588 m!5289801))

(declare-fun m!5289803 () Bool)

(assert (=> b!4531588 m!5289803))

(declare-fun m!5289805 () Bool)

(assert (=> b!4531588 m!5289805))

(declare-fun m!5289807 () Bool)

(assert (=> b!4531588 m!5289807))

(declare-fun m!5289809 () Bool)

(assert (=> b!4531588 m!5289809))

(declare-fun m!5289811 () Bool)

(assert (=> b!4531588 m!5289811))

(declare-fun m!5289813 () Bool)

(assert (=> b!4531588 m!5289813))

(assert (=> b!4531588 m!5289813))

(declare-fun m!5289815 () Bool)

(assert (=> b!4531588 m!5289815))

(declare-fun m!5289817 () Bool)

(assert (=> b!4531588 m!5289817))

(declare-fun m!5289821 () Bool)

(assert (=> b!4531588 m!5289821))

(assert (=> b!4531588 m!5289803))

(declare-fun m!5289827 () Bool)

(assert (=> b!4531588 m!5289827))

(declare-fun m!5289829 () Bool)

(assert (=> d!1398932 m!5289829))

(assert (=> d!1398932 m!5289369))

(declare-fun m!5289831 () Bool)

(assert (=> bm!315903 m!5289831))

(declare-fun m!5289833 () Bool)

(assert (=> bm!315901 m!5289833))

(declare-fun m!5289835 () Bool)

(assert (=> b!4531589 m!5289835))

(assert (=> b!4531586 m!5289809))

(assert (=> b!4531304 d!1398932))

(declare-fun d!1398936 () Bool)

(assert (=> d!1398936 (= (addToMapMapFromBucket!707 (_2!28872 lt!1706730) (-!406 lt!1706723 key!3287)) (-!406 (addToMapMapFromBucket!707 (_2!28872 lt!1706730) lt!1706723) key!3287))))

(declare-fun lt!1707081 () Unit!96986)

(declare-fun choose!29741 (ListMap!3629 K!12090 List!50826) Unit!96986)

(assert (=> d!1398936 (= lt!1707081 (choose!29741 lt!1706723 key!3287 (_2!28872 lt!1706730)))))

(assert (=> d!1398936 (not (containsKey!1832 (_2!28872 lt!1706730) key!3287))))

(assert (=> d!1398936 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!4 lt!1706723 key!3287 (_2!28872 lt!1706730)) lt!1707081)))

(declare-fun bs!867742 () Bool)

(assert (= bs!867742 d!1398936))

(assert (=> bs!867742 m!5289303))

(declare-fun m!5289865 () Bool)

(assert (=> bs!867742 m!5289865))

(assert (=> bs!867742 m!5289257))

(assert (=> bs!867742 m!5289259))

(assert (=> bs!867742 m!5289303))

(declare-fun m!5289867 () Bool)

(assert (=> bs!867742 m!5289867))

(assert (=> bs!867742 m!5289257))

(assert (=> bs!867742 m!5289331))

(assert (=> b!4531304 d!1398936))

(declare-fun bs!867785 () Bool)

(declare-fun d!1398942 () Bool)

(assert (= bs!867785 (and d!1398942 d!1398912)))

(declare-fun lambda!174552 () Int)

(assert (=> bs!867785 (= lambda!174552 lambda!174529)))

(declare-fun bs!867786 () Bool)

(assert (= bs!867786 (and d!1398942 d!1398842)))

(assert (=> bs!867786 (= lambda!174552 lambda!174461)))

(declare-fun bs!867787 () Bool)

(assert (= bs!867787 (and d!1398942 b!4531316)))

(assert (=> bs!867787 (not (= lambda!174552 lambda!174446))))

(declare-fun bs!867788 () Bool)

(assert (= bs!867788 (and d!1398942 start!449344)))

(assert (=> bs!867788 (= lambda!174552 lambda!174445)))

(declare-fun bs!867789 () Bool)

(assert (= bs!867789 (and d!1398942 d!1398824)))

(assert (=> bs!867789 (= lambda!174552 lambda!174453)))

(declare-fun bs!867790 () Bool)

(assert (= bs!867790 (and d!1398942 d!1398840)))

(assert (=> bs!867790 (= lambda!174552 lambda!174456)))

(assert (=> d!1398942 (not (contains!13463 (extractMap!1236 (toList!4368 lm!1477)) key!3287))))

(declare-fun lt!1707107 () Unit!96986)

(declare-fun choose!29742 (ListLongMap!2999 K!12090 Hashable!5575) Unit!96986)

(assert (=> d!1398942 (= lt!1707107 (choose!29742 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1398942 (forall!10309 (toList!4368 lm!1477) lambda!174552)))

(assert (=> d!1398942 (= (lemmaNotInItsHashBucketThenNotInMap!168 lm!1477 key!3287 hashF!1107) lt!1707107)))

(declare-fun bs!867791 () Bool)

(assert (= bs!867791 d!1398942))

(assert (=> bs!867791 m!5289271))

(assert (=> bs!867791 m!5289271))

(declare-fun m!5289959 () Bool)

(assert (=> bs!867791 m!5289959))

(declare-fun m!5289961 () Bool)

(assert (=> bs!867791 m!5289961))

(declare-fun m!5289963 () Bool)

(assert (=> bs!867791 m!5289963))

(assert (=> b!4531303 d!1398942))

(declare-fun bs!867792 () Bool)

(declare-fun d!1398966 () Bool)

(assert (= bs!867792 (and d!1398966 d!1398842)))

(declare-fun lambda!174555 () Int)

(assert (=> bs!867792 (not (= lambda!174555 lambda!174461))))

(declare-fun bs!867793 () Bool)

(assert (= bs!867793 (and d!1398966 b!4531316)))

(assert (=> bs!867793 (= lambda!174555 lambda!174446)))

(declare-fun bs!867794 () Bool)

(assert (= bs!867794 (and d!1398966 start!449344)))

(assert (=> bs!867794 (not (= lambda!174555 lambda!174445))))

(declare-fun bs!867795 () Bool)

(assert (= bs!867795 (and d!1398966 d!1398824)))

(assert (=> bs!867795 (not (= lambda!174555 lambda!174453))))

(declare-fun bs!867796 () Bool)

(assert (= bs!867796 (and d!1398966 d!1398840)))

(assert (=> bs!867796 (not (= lambda!174555 lambda!174456))))

(declare-fun bs!867797 () Bool)

(assert (= bs!867797 (and d!1398966 d!1398942)))

(assert (=> bs!867797 (not (= lambda!174555 lambda!174552))))

(declare-fun bs!867798 () Bool)

(assert (= bs!867798 (and d!1398966 d!1398912)))

(assert (=> bs!867798 (not (= lambda!174555 lambda!174529))))

(assert (=> d!1398966 true))

(assert (=> d!1398966 (= (allKeysSameHashInMap!1287 lm!1477 hashF!1107) (forall!10309 (toList!4368 lm!1477) lambda!174555))))

(declare-fun bs!867799 () Bool)

(assert (= bs!867799 d!1398966))

(declare-fun m!5289965 () Bool)

(assert (=> bs!867799 m!5289965))

(assert (=> b!4531302 d!1398966))

(declare-fun d!1398968 () Bool)

(declare-fun get!16642 (Option!11162) List!50826)

(assert (=> d!1398968 (= (apply!11917 lt!1706740 hash!344) (get!16642 (getValueByKey!1124 (toList!4368 lt!1706740) hash!344)))))

(declare-fun bs!867800 () Bool)

(assert (= bs!867800 d!1398968))

(declare-fun m!5289967 () Bool)

(assert (=> bs!867800 m!5289967))

(assert (=> bs!867800 m!5289967))

(declare-fun m!5289969 () Bool)

(assert (=> bs!867800 m!5289969))

(assert (=> b!4531312 d!1398968))

(declare-fun d!1398970 () Bool)

(declare-fun lt!1707110 () Bool)

(declare-fun content!8407 (List!50827) (InoxSet tuple2!51156))

(assert (=> d!1398970 (= lt!1707110 (select (content!8407 (t!357789 (toList!4368 lm!1477))) lt!1706717))))

(declare-fun e!2823669 () Bool)

(assert (=> d!1398970 (= lt!1707110 e!2823669)))

(declare-fun res!1887380 () Bool)

(assert (=> d!1398970 (=> (not res!1887380) (not e!2823669))))

(assert (=> d!1398970 (= res!1887380 ((_ is Cons!50703) (t!357789 (toList!4368 lm!1477))))))

(assert (=> d!1398970 (= (contains!13465 (t!357789 (toList!4368 lm!1477)) lt!1706717) lt!1707110)))

(declare-fun b!4531625 () Bool)

(declare-fun e!2823670 () Bool)

(assert (=> b!4531625 (= e!2823669 e!2823670)))

(declare-fun res!1887379 () Bool)

(assert (=> b!4531625 (=> res!1887379 e!2823670)))

(assert (=> b!4531625 (= res!1887379 (= (h!56572 (t!357789 (toList!4368 lm!1477))) lt!1706717))))

(declare-fun b!4531626 () Bool)

(assert (=> b!4531626 (= e!2823670 (contains!13465 (t!357789 (t!357789 (toList!4368 lm!1477))) lt!1706717))))

(assert (= (and d!1398970 res!1887380) b!4531625))

(assert (= (and b!4531625 (not res!1887379)) b!4531626))

(declare-fun m!5289971 () Bool)

(assert (=> d!1398970 m!5289971))

(declare-fun m!5289973 () Bool)

(assert (=> d!1398970 m!5289973))

(declare-fun m!5289975 () Bool)

(assert (=> b!4531626 m!5289975))

(assert (=> b!4531311 d!1398970))

(declare-fun d!1398972 () Bool)

(declare-fun res!1887389 () Bool)

(declare-fun e!2823677 () Bool)

(assert (=> d!1398972 (=> res!1887389 e!2823677)))

(declare-fun e!2823678 () Bool)

(assert (=> d!1398972 (= res!1887389 e!2823678)))

(declare-fun res!1887388 () Bool)

(assert (=> d!1398972 (=> (not res!1887388) (not e!2823678))))

(assert (=> d!1398972 (= res!1887388 ((_ is Cons!50703) (t!357789 (toList!4368 lm!1477))))))

(assert (=> d!1398972 (= (containsKeyBiggerList!160 (t!357789 (toList!4368 lm!1477)) key!3287) e!2823677)))

(declare-fun b!4531633 () Bool)

(assert (=> b!4531633 (= e!2823678 (containsKey!1832 (_2!28872 (h!56572 (t!357789 (toList!4368 lm!1477)))) key!3287))))

(declare-fun b!4531634 () Bool)

(declare-fun e!2823679 () Bool)

(assert (=> b!4531634 (= e!2823677 e!2823679)))

(declare-fun res!1887387 () Bool)

(assert (=> b!4531634 (=> (not res!1887387) (not e!2823679))))

(assert (=> b!4531634 (= res!1887387 ((_ is Cons!50703) (t!357789 (toList!4368 lm!1477))))))

(declare-fun b!4531635 () Bool)

(assert (=> b!4531635 (= e!2823679 (containsKeyBiggerList!160 (t!357789 (t!357789 (toList!4368 lm!1477))) key!3287))))

(assert (= (and d!1398972 res!1887388) b!4531633))

(assert (= (and d!1398972 (not res!1887389)) b!4531634))

(assert (= (and b!4531634 res!1887387) b!4531635))

(declare-fun m!5289977 () Bool)

(assert (=> b!4531633 m!5289977))

(declare-fun m!5289979 () Bool)

(assert (=> b!4531635 m!5289979))

(assert (=> b!4531310 d!1398972))

(declare-fun d!1398974 () Bool)

(declare-fun res!1887392 () Bool)

(declare-fun e!2823680 () Bool)

(assert (=> d!1398974 (=> res!1887392 e!2823680)))

(declare-fun e!2823681 () Bool)

(assert (=> d!1398974 (= res!1887392 e!2823681)))

(declare-fun res!1887391 () Bool)

(assert (=> d!1398974 (=> (not res!1887391) (not e!2823681))))

(assert (=> d!1398974 (= res!1887391 ((_ is Cons!50703) (toList!4368 lt!1706740)))))

(assert (=> d!1398974 (= (containsKeyBiggerList!160 (toList!4368 lt!1706740) key!3287) e!2823680)))

(declare-fun b!4531636 () Bool)

(assert (=> b!4531636 (= e!2823681 (containsKey!1832 (_2!28872 (h!56572 (toList!4368 lt!1706740))) key!3287))))

(declare-fun b!4531637 () Bool)

(declare-fun e!2823682 () Bool)

(assert (=> b!4531637 (= e!2823680 e!2823682)))

(declare-fun res!1887390 () Bool)

(assert (=> b!4531637 (=> (not res!1887390) (not e!2823682))))

(assert (=> b!4531637 (= res!1887390 ((_ is Cons!50703) (toList!4368 lt!1706740)))))

(declare-fun b!4531638 () Bool)

(assert (=> b!4531638 (= e!2823682 (containsKeyBiggerList!160 (t!357789 (toList!4368 lt!1706740)) key!3287))))

(assert (= (and d!1398974 res!1887391) b!4531636))

(assert (= (and d!1398974 (not res!1887392)) b!4531637))

(assert (= (and b!4531637 res!1887390) b!4531638))

(declare-fun m!5289981 () Bool)

(assert (=> b!4531636 m!5289981))

(declare-fun m!5289983 () Bool)

(assert (=> b!4531638 m!5289983))

(assert (=> b!4531310 d!1398974))

(declare-fun bs!867801 () Bool)

(declare-fun d!1398976 () Bool)

(assert (= bs!867801 (and d!1398976 d!1398842)))

(declare-fun lambda!174558 () Int)

(assert (=> bs!867801 (= lambda!174558 lambda!174461)))

(declare-fun bs!867802 () Bool)

(assert (= bs!867802 (and d!1398976 b!4531316)))

(assert (=> bs!867802 (not (= lambda!174558 lambda!174446))))

(declare-fun bs!867803 () Bool)

(assert (= bs!867803 (and d!1398976 d!1398966)))

(assert (=> bs!867803 (not (= lambda!174558 lambda!174555))))

(declare-fun bs!867804 () Bool)

(assert (= bs!867804 (and d!1398976 start!449344)))

(assert (=> bs!867804 (= lambda!174558 lambda!174445)))

(declare-fun bs!867805 () Bool)

(assert (= bs!867805 (and d!1398976 d!1398824)))

(assert (=> bs!867805 (= lambda!174558 lambda!174453)))

(declare-fun bs!867806 () Bool)

(assert (= bs!867806 (and d!1398976 d!1398840)))

(assert (=> bs!867806 (= lambda!174558 lambda!174456)))

(declare-fun bs!867807 () Bool)

(assert (= bs!867807 (and d!1398976 d!1398942)))

(assert (=> bs!867807 (= lambda!174558 lambda!174552)))

(declare-fun bs!867808 () Bool)

(assert (= bs!867808 (and d!1398976 d!1398912)))

(assert (=> bs!867808 (= lambda!174558 lambda!174529)))

(assert (=> d!1398976 (containsKeyBiggerList!160 (toList!4368 lt!1706740) key!3287)))

(declare-fun lt!1707113 () Unit!96986)

(declare-fun choose!29744 (ListLongMap!2999 K!12090 Hashable!5575) Unit!96986)

(assert (=> d!1398976 (= lt!1707113 (choose!29744 lt!1706740 key!3287 hashF!1107))))

(assert (=> d!1398976 (forall!10309 (toList!4368 lt!1706740) lambda!174558)))

(assert (=> d!1398976 (= (lemmaInLongMapThenContainsKeyBiggerList!96 lt!1706740 key!3287 hashF!1107) lt!1707113)))

(declare-fun bs!867809 () Bool)

(assert (= bs!867809 d!1398976))

(assert (=> bs!867809 m!5289351))

(declare-fun m!5289985 () Bool)

(assert (=> bs!867809 m!5289985))

(declare-fun m!5289987 () Bool)

(assert (=> bs!867809 m!5289987))

(assert (=> b!4531310 d!1398976))

(declare-fun bs!867823 () Bool)

(declare-fun d!1398978 () Bool)

(assert (= bs!867823 (and d!1398978 d!1398976)))

(declare-fun lambda!174564 () Int)

(assert (=> bs!867823 (= lambda!174564 lambda!174558)))

(declare-fun bs!867824 () Bool)

(assert (= bs!867824 (and d!1398978 d!1398842)))

(assert (=> bs!867824 (= lambda!174564 lambda!174461)))

(declare-fun bs!867825 () Bool)

(assert (= bs!867825 (and d!1398978 b!4531316)))

(assert (=> bs!867825 (not (= lambda!174564 lambda!174446))))

(declare-fun bs!867827 () Bool)

(assert (= bs!867827 (and d!1398978 d!1398966)))

(assert (=> bs!867827 (not (= lambda!174564 lambda!174555))))

(declare-fun bs!867829 () Bool)

(assert (= bs!867829 (and d!1398978 start!449344)))

(assert (=> bs!867829 (= lambda!174564 lambda!174445)))

(declare-fun bs!867830 () Bool)

(assert (= bs!867830 (and d!1398978 d!1398824)))

(assert (=> bs!867830 (= lambda!174564 lambda!174453)))

(declare-fun bs!867831 () Bool)

(assert (= bs!867831 (and d!1398978 d!1398840)))

(assert (=> bs!867831 (= lambda!174564 lambda!174456)))

(declare-fun bs!867832 () Bool)

(assert (= bs!867832 (and d!1398978 d!1398942)))

(assert (=> bs!867832 (= lambda!174564 lambda!174552)))

(declare-fun bs!867833 () Bool)

(assert (= bs!867833 (and d!1398978 d!1398912)))

(assert (=> bs!867833 (= lambda!174564 lambda!174529)))

(assert (=> d!1398978 (contains!13464 lm!1477 (hash!2869 hashF!1107 key!3287))))

(declare-fun lt!1707119 () Unit!96986)

(declare-fun choose!29745 (ListLongMap!2999 K!12090 Hashable!5575) Unit!96986)

(assert (=> d!1398978 (= lt!1707119 (choose!29745 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1398978 (forall!10309 (toList!4368 lm!1477) lambda!174564)))

(assert (=> d!1398978 (= (lemmaInGenMapThenLongMapContainsHash!254 lm!1477 key!3287 hashF!1107) lt!1707119)))

(declare-fun bs!867835 () Bool)

(assert (= bs!867835 d!1398978))

(assert (=> bs!867835 m!5289347))

(assert (=> bs!867835 m!5289347))

(declare-fun m!5290003 () Bool)

(assert (=> bs!867835 m!5290003))

(declare-fun m!5290005 () Bool)

(assert (=> bs!867835 m!5290005))

(declare-fun m!5290007 () Bool)

(assert (=> bs!867835 m!5290007))

(assert (=> b!4531309 d!1398978))

(declare-fun d!1398988 () Bool)

(assert (=> d!1398988 (contains!13465 (toList!4368 lm!1477) (tuple2!51157 hash!344 lt!1706745))))

(declare-fun lt!1707143 () Unit!96986)

(declare-fun choose!29746 (List!50827 (_ BitVec 64) List!50826) Unit!96986)

(assert (=> d!1398988 (= lt!1707143 (choose!29746 (toList!4368 lm!1477) hash!344 lt!1706745))))

(declare-fun e!2823690 () Bool)

(assert (=> d!1398988 e!2823690))

(declare-fun res!1887400 () Bool)

(assert (=> d!1398988 (=> (not res!1887400) (not e!2823690))))

(assert (=> d!1398988 (= res!1887400 (isStrictlySorted!446 (toList!4368 lm!1477)))))

(assert (=> d!1398988 (= (lemmaGetValueByKeyImpliesContainsTuple!692 (toList!4368 lm!1477) hash!344 lt!1706745) lt!1707143)))

(declare-fun b!4531648 () Bool)

(assert (=> b!4531648 (= e!2823690 (= (getValueByKey!1124 (toList!4368 lm!1477) hash!344) (Some!11161 lt!1706745)))))

(assert (= (and d!1398988 res!1887400) b!4531648))

(declare-fun m!5290009 () Bool)

(assert (=> d!1398988 m!5290009))

(declare-fun m!5290011 () Bool)

(assert (=> d!1398988 m!5290011))

(assert (=> d!1398988 m!5289377))

(declare-fun m!5290013 () Bool)

(assert (=> b!4531648 m!5290013))

(assert (=> b!4531309 d!1398988))

(declare-fun d!1398990 () Bool)

(declare-fun lt!1707144 () Bool)

(assert (=> d!1398990 (= lt!1707144 (select (content!8407 (toList!4368 lm!1477)) lt!1706717))))

(declare-fun e!2823691 () Bool)

(assert (=> d!1398990 (= lt!1707144 e!2823691)))

(declare-fun res!1887402 () Bool)

(assert (=> d!1398990 (=> (not res!1887402) (not e!2823691))))

(assert (=> d!1398990 (= res!1887402 ((_ is Cons!50703) (toList!4368 lm!1477)))))

(assert (=> d!1398990 (= (contains!13465 (toList!4368 lm!1477) lt!1706717) lt!1707144)))

(declare-fun b!4531649 () Bool)

(declare-fun e!2823692 () Bool)

(assert (=> b!4531649 (= e!2823691 e!2823692)))

(declare-fun res!1887401 () Bool)

(assert (=> b!4531649 (=> res!1887401 e!2823692)))

(assert (=> b!4531649 (= res!1887401 (= (h!56572 (toList!4368 lm!1477)) lt!1706717))))

(declare-fun b!4531650 () Bool)

(assert (=> b!4531650 (= e!2823692 (contains!13465 (t!357789 (toList!4368 lm!1477)) lt!1706717))))

(assert (= (and d!1398990 res!1887402) b!4531649))

(assert (= (and b!4531649 (not res!1887401)) b!4531650))

(declare-fun m!5290015 () Bool)

(assert (=> d!1398990 m!5290015))

(declare-fun m!5290017 () Bool)

(assert (=> d!1398990 m!5290017))

(assert (=> b!4531650 m!5289315))

(assert (=> b!4531309 d!1398990))

(declare-fun b!4531661 () Bool)

(declare-fun e!2823698 () List!50826)

(assert (=> b!4531661 (= e!2823698 (t!357788 lt!1706745))))

(declare-fun d!1398992 () Bool)

(declare-fun lt!1707148 () List!50826)

(assert (=> d!1398992 (not (containsKey!1832 lt!1707148 key!3287))))

(assert (=> d!1398992 (= lt!1707148 e!2823698)))

(declare-fun c!773806 () Bool)

(assert (=> d!1398992 (= c!773806 (and ((_ is Cons!50702) lt!1706745) (= (_1!28871 (h!56571 lt!1706745)) key!3287)))))

(assert (=> d!1398992 (noDuplicateKeys!1180 lt!1706745)))

(assert (=> d!1398992 (= (removePairForKey!807 lt!1706745 key!3287) lt!1707148)))

(declare-fun b!4531662 () Bool)

(declare-fun e!2823699 () List!50826)

(assert (=> b!4531662 (= e!2823698 e!2823699)))

(declare-fun c!773807 () Bool)

(assert (=> b!4531662 (= c!773807 ((_ is Cons!50702) lt!1706745))))

(declare-fun b!4531664 () Bool)

(assert (=> b!4531664 (= e!2823699 Nil!50702)))

(declare-fun b!4531663 () Bool)

(assert (=> b!4531663 (= e!2823699 (Cons!50702 (h!56571 lt!1706745) (removePairForKey!807 (t!357788 lt!1706745) key!3287)))))

(assert (= (and d!1398992 c!773806) b!4531661))

(assert (= (and d!1398992 (not c!773806)) b!4531662))

(assert (= (and b!4531662 c!773807) b!4531663))

(assert (= (and b!4531662 (not c!773807)) b!4531664))

(declare-fun m!5290051 () Bool)

(assert (=> d!1398992 m!5290051))

(declare-fun m!5290053 () Bool)

(assert (=> d!1398992 m!5290053))

(declare-fun m!5290055 () Bool)

(assert (=> b!4531663 m!5290055))

(assert (=> b!4531309 d!1398992))

(declare-fun d!1398996 () Bool)

(assert (=> d!1398996 (dynLambda!21191 lambda!174445 lt!1706717)))

(declare-fun lt!1707155 () Unit!96986)

(declare-fun choose!29747 (List!50827 Int tuple2!51156) Unit!96986)

(assert (=> d!1398996 (= lt!1707155 (choose!29747 (toList!4368 lm!1477) lambda!174445 lt!1706717))))

(declare-fun e!2823704 () Bool)

(assert (=> d!1398996 e!2823704))

(declare-fun res!1887406 () Bool)

(assert (=> d!1398996 (=> (not res!1887406) (not e!2823704))))

(assert (=> d!1398996 (= res!1887406 (forall!10309 (toList!4368 lm!1477) lambda!174445))))

(assert (=> d!1398996 (= (forallContained!2564 (toList!4368 lm!1477) lambda!174445 lt!1706717) lt!1707155)))

(declare-fun b!4531670 () Bool)

(assert (=> b!4531670 (= e!2823704 (contains!13465 (toList!4368 lm!1477) lt!1706717))))

(assert (= (and d!1398996 res!1887406) b!4531670))

(declare-fun b_lambda!156723 () Bool)

(assert (=> (not b_lambda!156723) (not d!1398996)))

(declare-fun m!5290073 () Bool)

(assert (=> d!1398996 m!5290073))

(declare-fun m!5290075 () Bool)

(assert (=> d!1398996 m!5290075))

(assert (=> d!1398996 m!5289265))

(assert (=> b!4531670 m!5289285))

(assert (=> b!4531309 d!1398996))

(declare-fun d!1399004 () Bool)

(declare-fun e!2823716 () Bool)

(assert (=> d!1399004 e!2823716))

(declare-fun res!1887409 () Bool)

(assert (=> d!1399004 (=> res!1887409 e!2823716)))

(declare-fun lt!1707166 () Bool)

(assert (=> d!1399004 (= res!1887409 (not lt!1707166))))

(declare-fun lt!1707165 () Bool)

(assert (=> d!1399004 (= lt!1707166 lt!1707165)))

(declare-fun lt!1707167 () Unit!96986)

(declare-fun e!2823715 () Unit!96986)

(assert (=> d!1399004 (= lt!1707167 e!2823715)))

(declare-fun c!773811 () Bool)

(assert (=> d!1399004 (= c!773811 lt!1707165)))

(declare-fun containsKey!1836 (List!50827 (_ BitVec 64)) Bool)

(assert (=> d!1399004 (= lt!1707165 (containsKey!1836 (toList!4368 lm!1477) lt!1706739))))

(assert (=> d!1399004 (= (contains!13464 lm!1477 lt!1706739) lt!1707166)))

(declare-fun b!4531689 () Bool)

(declare-fun lt!1707164 () Unit!96986)

(assert (=> b!4531689 (= e!2823715 lt!1707164)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1029 (List!50827 (_ BitVec 64)) Unit!96986)

(assert (=> b!4531689 (= lt!1707164 (lemmaContainsKeyImpliesGetValueByKeyDefined!1029 (toList!4368 lm!1477) lt!1706739))))

(declare-fun isDefined!8447 (Option!11162) Bool)

(assert (=> b!4531689 (isDefined!8447 (getValueByKey!1124 (toList!4368 lm!1477) lt!1706739))))

(declare-fun b!4531690 () Bool)

(declare-fun Unit!97047 () Unit!96986)

(assert (=> b!4531690 (= e!2823715 Unit!97047)))

(declare-fun b!4531691 () Bool)

(assert (=> b!4531691 (= e!2823716 (isDefined!8447 (getValueByKey!1124 (toList!4368 lm!1477) lt!1706739)))))

(assert (= (and d!1399004 c!773811) b!4531689))

(assert (= (and d!1399004 (not c!773811)) b!4531690))

(assert (= (and d!1399004 (not res!1887409)) b!4531691))

(declare-fun m!5290089 () Bool)

(assert (=> d!1399004 m!5290089))

(declare-fun m!5290091 () Bool)

(assert (=> b!4531689 m!5290091))

(declare-fun m!5290093 () Bool)

(assert (=> b!4531689 m!5290093))

(assert (=> b!4531689 m!5290093))

(declare-fun m!5290095 () Bool)

(assert (=> b!4531689 m!5290095))

(assert (=> b!4531691 m!5290093))

(assert (=> b!4531691 m!5290093))

(assert (=> b!4531691 m!5290095))

(assert (=> b!4531309 d!1399004))

(declare-fun d!1399016 () Bool)

(assert (=> d!1399016 (= (apply!11917 lm!1477 hash!344) (get!16642 (getValueByKey!1124 (toList!4368 lm!1477) hash!344)))))

(declare-fun bs!867889 () Bool)

(assert (= bs!867889 d!1399016))

(assert (=> bs!867889 m!5290013))

(assert (=> bs!867889 m!5290013))

(declare-fun m!5290097 () Bool)

(assert (=> bs!867889 m!5290097))

(assert (=> b!4531309 d!1399016))

(declare-fun d!1399018 () Bool)

(declare-fun res!1887410 () Bool)

(declare-fun e!2823717 () Bool)

(assert (=> d!1399018 (=> res!1887410 e!2823717)))

(assert (=> d!1399018 (= res!1887410 (and ((_ is Cons!50702) lt!1706745) (= (_1!28871 (h!56571 lt!1706745)) key!3287)))))

(assert (=> d!1399018 (= (containsKey!1832 lt!1706745 key!3287) e!2823717)))

(declare-fun b!4531692 () Bool)

(declare-fun e!2823718 () Bool)

(assert (=> b!4531692 (= e!2823717 e!2823718)))

(declare-fun res!1887411 () Bool)

(assert (=> b!4531692 (=> (not res!1887411) (not e!2823718))))

(assert (=> b!4531692 (= res!1887411 ((_ is Cons!50702) lt!1706745))))

(declare-fun b!4531693 () Bool)

(assert (=> b!4531693 (= e!2823718 (containsKey!1832 (t!357788 lt!1706745) key!3287))))

(assert (= (and d!1399018 (not res!1887410)) b!4531692))

(assert (= (and b!4531692 res!1887411) b!4531693))

(declare-fun m!5290099 () Bool)

(assert (=> b!4531693 m!5290099))

(assert (=> b!4531308 d!1399018))

(declare-fun d!1399020 () Bool)

(declare-fun res!1887412 () Bool)

(declare-fun e!2823719 () Bool)

(assert (=> d!1399020 (=> res!1887412 e!2823719)))

(assert (=> d!1399020 (= res!1887412 (not ((_ is Cons!50702) (_2!28872 lt!1706730))))))

(assert (=> d!1399020 (= (noDuplicateKeys!1180 (_2!28872 lt!1706730)) e!2823719)))

(declare-fun b!4531694 () Bool)

(declare-fun e!2823720 () Bool)

(assert (=> b!4531694 (= e!2823719 e!2823720)))

(declare-fun res!1887413 () Bool)

(assert (=> b!4531694 (=> (not res!1887413) (not e!2823720))))

(assert (=> b!4531694 (= res!1887413 (not (containsKey!1832 (t!357788 (_2!28872 lt!1706730)) (_1!28871 (h!56571 (_2!28872 lt!1706730))))))))

(declare-fun b!4531695 () Bool)

(assert (=> b!4531695 (= e!2823720 (noDuplicateKeys!1180 (t!357788 (_2!28872 lt!1706730))))))

(assert (= (and d!1399020 (not res!1887412)) b!4531694))

(assert (= (and b!4531694 res!1887413) b!4531695))

(declare-fun m!5290101 () Bool)

(assert (=> b!4531694 m!5290101))

(declare-fun m!5290103 () Bool)

(assert (=> b!4531695 m!5290103))

(assert (=> b!4531296 d!1399020))

(declare-fun d!1399022 () Bool)

(assert (=> d!1399022 (dynLambda!21191 lambda!174445 (h!56572 (toList!4368 lm!1477)))))

(declare-fun lt!1707168 () Unit!96986)

(assert (=> d!1399022 (= lt!1707168 (choose!29747 (toList!4368 lm!1477) lambda!174445 (h!56572 (toList!4368 lm!1477))))))

(declare-fun e!2823721 () Bool)

(assert (=> d!1399022 e!2823721))

(declare-fun res!1887414 () Bool)

(assert (=> d!1399022 (=> (not res!1887414) (not e!2823721))))

(assert (=> d!1399022 (= res!1887414 (forall!10309 (toList!4368 lm!1477) lambda!174445))))

(assert (=> d!1399022 (= (forallContained!2564 (toList!4368 lm!1477) lambda!174445 (h!56572 (toList!4368 lm!1477))) lt!1707168)))

(declare-fun b!4531696 () Bool)

(assert (=> b!4531696 (= e!2823721 (contains!13465 (toList!4368 lm!1477) (h!56572 (toList!4368 lm!1477))))))

(assert (= (and d!1399022 res!1887414) b!4531696))

(declare-fun b_lambda!156737 () Bool)

(assert (=> (not b_lambda!156737) (not d!1399022)))

(assert (=> d!1399022 m!5289373))

(declare-fun m!5290105 () Bool)

(assert (=> d!1399022 m!5290105))

(assert (=> d!1399022 m!5289265))

(declare-fun m!5290107 () Bool)

(assert (=> b!4531696 m!5290107))

(assert (=> b!4531296 d!1399022))

(declare-fun b!4531713 () Bool)

(declare-fun e!2823735 () Bool)

(assert (=> b!4531713 (= e!2823735 (not (containsKey!1832 (_2!28872 lt!1706730) key!3287)))))

(declare-fun b!4531714 () Bool)

(declare-fun e!2823736 () Option!11159)

(declare-fun e!2823734 () Option!11159)

(assert (=> b!4531714 (= e!2823736 e!2823734)))

(declare-fun c!773816 () Bool)

(assert (=> b!4531714 (= c!773816 ((_ is Cons!50702) (_2!28872 lt!1706730)))))

(declare-fun b!4531715 () Bool)

(assert (=> b!4531715 (= e!2823736 (Some!11158 (h!56571 (_2!28872 lt!1706730))))))

(declare-fun b!4531716 () Bool)

(declare-fun res!1887424 () Bool)

(declare-fun e!2823732 () Bool)

(assert (=> b!4531716 (=> (not res!1887424) (not e!2823732))))

(declare-fun lt!1707171 () Option!11159)

(assert (=> b!4531716 (= res!1887424 (= (_1!28871 (get!16640 lt!1707171)) key!3287))))

(declare-fun d!1399024 () Bool)

(declare-fun e!2823733 () Bool)

(assert (=> d!1399024 e!2823733))

(declare-fun res!1887426 () Bool)

(assert (=> d!1399024 (=> res!1887426 e!2823733)))

(assert (=> d!1399024 (= res!1887426 e!2823735)))

(declare-fun res!1887423 () Bool)

(assert (=> d!1399024 (=> (not res!1887423) (not e!2823735))))

(declare-fun isEmpty!28717 (Option!11159) Bool)

(assert (=> d!1399024 (= res!1887423 (isEmpty!28717 lt!1707171))))

(assert (=> d!1399024 (= lt!1707171 e!2823736)))

(declare-fun c!773817 () Bool)

(assert (=> d!1399024 (= c!773817 (and ((_ is Cons!50702) (_2!28872 lt!1706730)) (= (_1!28871 (h!56571 (_2!28872 lt!1706730))) key!3287)))))

(assert (=> d!1399024 (noDuplicateKeys!1180 (_2!28872 lt!1706730))))

(assert (=> d!1399024 (= (getPair!196 (_2!28872 lt!1706730) key!3287) lt!1707171)))

(declare-fun b!4531717 () Bool)

(declare-fun contains!13469 (List!50826 tuple2!51154) Bool)

(assert (=> b!4531717 (= e!2823732 (contains!13469 (_2!28872 lt!1706730) (get!16640 lt!1707171)))))

(declare-fun b!4531718 () Bool)

(assert (=> b!4531718 (= e!2823734 (getPair!196 (t!357788 (_2!28872 lt!1706730)) key!3287))))

(declare-fun b!4531719 () Bool)

(assert (=> b!4531719 (= e!2823733 e!2823732)))

(declare-fun res!1887425 () Bool)

(assert (=> b!4531719 (=> (not res!1887425) (not e!2823732))))

(declare-fun isDefined!8448 (Option!11159) Bool)

(assert (=> b!4531719 (= res!1887425 (isDefined!8448 lt!1707171))))

(declare-fun b!4531720 () Bool)

(assert (=> b!4531720 (= e!2823734 None!11158)))

(assert (= (and d!1399024 c!773817) b!4531715))

(assert (= (and d!1399024 (not c!773817)) b!4531714))

(assert (= (and b!4531714 c!773816) b!4531718))

(assert (= (and b!4531714 (not c!773816)) b!4531720))

(assert (= (and d!1399024 res!1887423) b!4531713))

(assert (= (and d!1399024 (not res!1887426)) b!4531719))

(assert (= (and b!4531719 res!1887425) b!4531716))

(assert (= (and b!4531716 res!1887424) b!4531717))

(declare-fun m!5290109 () Bool)

(assert (=> d!1399024 m!5290109))

(assert (=> d!1399024 m!5289369))

(declare-fun m!5290111 () Bool)

(assert (=> b!4531718 m!5290111))

(declare-fun m!5290113 () Bool)

(assert (=> b!4531717 m!5290113))

(assert (=> b!4531717 m!5290113))

(declare-fun m!5290115 () Bool)

(assert (=> b!4531717 m!5290115))

(declare-fun m!5290117 () Bool)

(assert (=> b!4531719 m!5290117))

(assert (=> b!4531716 m!5290113))

(assert (=> b!4531713 m!5289331))

(assert (=> b!4531316 d!1399024))

(declare-fun d!1399026 () Bool)

(assert (=> d!1399026 (dynLambda!21191 lambda!174446 (h!56572 (toList!4368 lm!1477)))))

(declare-fun lt!1707172 () Unit!96986)

(assert (=> d!1399026 (= lt!1707172 (choose!29747 (toList!4368 lm!1477) lambda!174446 (h!56572 (toList!4368 lm!1477))))))

(declare-fun e!2823737 () Bool)

(assert (=> d!1399026 e!2823737))

(declare-fun res!1887427 () Bool)

(assert (=> d!1399026 (=> (not res!1887427) (not e!2823737))))

(assert (=> d!1399026 (= res!1887427 (forall!10309 (toList!4368 lm!1477) lambda!174446))))

(assert (=> d!1399026 (= (forallContained!2564 (toList!4368 lm!1477) lambda!174446 (h!56572 (toList!4368 lm!1477))) lt!1707172)))

(declare-fun b!4531721 () Bool)

(assert (=> b!4531721 (= e!2823737 (contains!13465 (toList!4368 lm!1477) (h!56572 (toList!4368 lm!1477))))))

(assert (= (and d!1399026 res!1887427) b!4531721))

(declare-fun b_lambda!156739 () Bool)

(assert (=> (not b_lambda!156739) (not d!1399026)))

(declare-fun m!5290119 () Bool)

(assert (=> d!1399026 m!5290119))

(declare-fun m!5290121 () Bool)

(assert (=> d!1399026 m!5290121))

(declare-fun m!5290123 () Bool)

(assert (=> d!1399026 m!5290123))

(assert (=> b!4531721 m!5290107))

(assert (=> b!4531316 d!1399026))

(declare-fun d!1399028 () Bool)

(declare-fun dynLambda!21193 (Int tuple2!51154) Bool)

(assert (=> d!1399028 (dynLambda!21193 lambda!174447 (tuple2!51155 key!3287 (_2!28871 (get!16640 lt!1706732))))))

(declare-fun lt!1707175 () Unit!96986)

(declare-fun choose!29748 (List!50826 Int tuple2!51154) Unit!96986)

(assert (=> d!1399028 (= lt!1707175 (choose!29748 (_2!28872 (h!56572 (toList!4368 lm!1477))) lambda!174447 (tuple2!51155 key!3287 (_2!28871 (get!16640 lt!1706732)))))))

(declare-fun e!2823740 () Bool)

(assert (=> d!1399028 e!2823740))

(declare-fun res!1887430 () Bool)

(assert (=> d!1399028 (=> (not res!1887430) (not e!2823740))))

(assert (=> d!1399028 (= res!1887430 (forall!10311 (_2!28872 (h!56572 (toList!4368 lm!1477))) lambda!174447))))

(assert (=> d!1399028 (= (forallContained!2565 (_2!28872 (h!56572 (toList!4368 lm!1477))) lambda!174447 (tuple2!51155 key!3287 (_2!28871 (get!16640 lt!1706732)))) lt!1707175)))

(declare-fun b!4531724 () Bool)

(assert (=> b!4531724 (= e!2823740 (contains!13469 (_2!28872 (h!56572 (toList!4368 lm!1477))) (tuple2!51155 key!3287 (_2!28871 (get!16640 lt!1706732)))))))

(assert (= (and d!1399028 res!1887430) b!4531724))

(declare-fun b_lambda!156741 () Bool)

(assert (=> (not b_lambda!156741) (not d!1399028)))

(declare-fun m!5290125 () Bool)

(assert (=> d!1399028 m!5290125))

(declare-fun m!5290127 () Bool)

(assert (=> d!1399028 m!5290127))

(declare-fun m!5290129 () Bool)

(assert (=> d!1399028 m!5290129))

(declare-fun m!5290131 () Bool)

(assert (=> b!4531724 m!5290131))

(assert (=> b!4531316 d!1399028))

(declare-fun d!1399030 () Bool)

(assert (=> d!1399030 (= (get!16640 lt!1706732) (v!44814 lt!1706732))))

(assert (=> b!4531316 d!1399030))

(declare-fun d!1399032 () Bool)

(declare-fun e!2823742 () Bool)

(assert (=> d!1399032 e!2823742))

(declare-fun res!1887431 () Bool)

(assert (=> d!1399032 (=> res!1887431 e!2823742)))

(declare-fun lt!1707178 () Bool)

(assert (=> d!1399032 (= res!1887431 (not lt!1707178))))

(declare-fun lt!1707177 () Bool)

(assert (=> d!1399032 (= lt!1707178 lt!1707177)))

(declare-fun lt!1707179 () Unit!96986)

(declare-fun e!2823741 () Unit!96986)

(assert (=> d!1399032 (= lt!1707179 e!2823741)))

(declare-fun c!773818 () Bool)

(assert (=> d!1399032 (= c!773818 lt!1707177)))

(assert (=> d!1399032 (= lt!1707177 (containsKey!1836 (toList!4368 lt!1706740) hash!344))))

(assert (=> d!1399032 (= (contains!13464 lt!1706740 hash!344) lt!1707178)))

(declare-fun b!4531725 () Bool)

(declare-fun lt!1707176 () Unit!96986)

(assert (=> b!4531725 (= e!2823741 lt!1707176)))

(assert (=> b!4531725 (= lt!1707176 (lemmaContainsKeyImpliesGetValueByKeyDefined!1029 (toList!4368 lt!1706740) hash!344))))

(assert (=> b!4531725 (isDefined!8447 (getValueByKey!1124 (toList!4368 lt!1706740) hash!344))))

(declare-fun b!4531726 () Bool)

(declare-fun Unit!97048 () Unit!96986)

(assert (=> b!4531726 (= e!2823741 Unit!97048)))

(declare-fun b!4531727 () Bool)

(assert (=> b!4531727 (= e!2823742 (isDefined!8447 (getValueByKey!1124 (toList!4368 lt!1706740) hash!344)))))

(assert (= (and d!1399032 c!773818) b!4531725))

(assert (= (and d!1399032 (not c!773818)) b!4531726))

(assert (= (and d!1399032 (not res!1887431)) b!4531727))

(declare-fun m!5290133 () Bool)

(assert (=> d!1399032 m!5290133))

(declare-fun m!5290135 () Bool)

(assert (=> b!4531725 m!5290135))

(assert (=> b!4531725 m!5289967))

(assert (=> b!4531725 m!5289967))

(declare-fun m!5290137 () Bool)

(assert (=> b!4531725 m!5290137))

(assert (=> b!4531727 m!5289967))

(assert (=> b!4531727 m!5289967))

(assert (=> b!4531727 m!5290137))

(assert (=> b!4531294 d!1399032))

(declare-fun d!1399034 () Bool)

(declare-fun tail!7771 (List!50827) List!50827)

(assert (=> d!1399034 (= (tail!7770 lm!1477) (ListLongMap!3000 (tail!7771 (toList!4368 lm!1477))))))

(declare-fun bs!867890 () Bool)

(assert (= bs!867890 d!1399034))

(declare-fun m!5290139 () Bool)

(assert (=> bs!867890 m!5290139))

(assert (=> b!4531294 d!1399034))

(declare-fun d!1399036 () Bool)

(assert (=> d!1399036 (= (eq!637 lt!1706719 lt!1706720) (= (content!8405 (toList!4367 lt!1706719)) (content!8405 (toList!4367 lt!1706720))))))

(declare-fun bs!867891 () Bool)

(assert (= bs!867891 d!1399036))

(declare-fun m!5290141 () Bool)

(assert (=> bs!867891 m!5290141))

(declare-fun m!5290143 () Bool)

(assert (=> bs!867891 m!5290143))

(assert (=> b!4531315 d!1399036))

(declare-fun d!1399038 () Bool)

(assert (=> d!1399038 (= (eq!637 lt!1706729 lt!1706733) (= (content!8405 (toList!4367 lt!1706729)) (content!8405 (toList!4367 lt!1706733))))))

(declare-fun bs!867892 () Bool)

(assert (= bs!867892 d!1399038))

(assert (=> bs!867892 m!5289467))

(declare-fun m!5290145 () Bool)

(assert (=> bs!867892 m!5290145))

(assert (=> b!4531314 d!1399038))

(declare-fun d!1399040 () Bool)

(assert (=> d!1399040 (= (eq!637 lt!1706735 lt!1706733) (= (content!8405 (toList!4367 lt!1706735)) (content!8405 (toList!4367 lt!1706733))))))

(declare-fun bs!867893 () Bool)

(assert (= bs!867893 d!1399040))

(assert (=> bs!867893 m!5289469))

(assert (=> bs!867893 m!5290145))

(assert (=> b!4531314 d!1399040))

(declare-fun bs!867894 () Bool)

(declare-fun b!4531728 () Bool)

(assert (= bs!867894 (and b!4531728 b!4531588)))

(declare-fun lambda!174573 () Int)

(assert (=> bs!867894 (= (= lt!1706747 lt!1706723) (= lambda!174573 lambda!174537))))

(declare-fun bs!867895 () Bool)

(assert (= bs!867895 (and b!4531728 b!4531540)))

(assert (=> bs!867895 (= (= lt!1706747 lt!1706746) (= lambda!174573 lambda!174525))))

(declare-fun bs!867896 () Bool)

(assert (= bs!867896 (and b!4531728 b!4531543)))

(assert (=> bs!867896 (= (= lt!1706747 lt!1707006) (= lambda!174573 lambda!174527))))

(declare-fun bs!867897 () Bool)

(assert (= bs!867897 (and b!4531728 d!1398932)))

(assert (=> bs!867897 (= (= lt!1706747 lt!1707065) (= lambda!174573 lambda!174539))))

(declare-fun bs!867898 () Bool)

(assert (= bs!867898 (and b!4531728 b!4531585)))

(assert (=> bs!867898 (= (= lt!1706747 lt!1706723) (= lambda!174573 lambda!174536))))

(declare-fun bs!867899 () Bool)

(assert (= bs!867899 (and b!4531728 d!1398854)))

(assert (=> bs!867899 (= (= lt!1706747 lt!1707013) (= lambda!174573 lambda!174528))))

(assert (=> bs!867894 (= (= lt!1706747 lt!1707058) (= lambda!174573 lambda!174538))))

(assert (=> bs!867896 (= (= lt!1706747 lt!1706746) (= lambda!174573 lambda!174526))))

(declare-fun bs!867900 () Bool)

(assert (= bs!867900 (and b!4531728 b!4531316)))

(assert (=> bs!867900 (not (= lambda!174573 lambda!174447))))

(assert (=> b!4531728 true))

(declare-fun bs!867901 () Bool)

(declare-fun b!4531731 () Bool)

(assert (= bs!867901 (and b!4531731 b!4531588)))

(declare-fun lambda!174574 () Int)

(assert (=> bs!867901 (= (= lt!1706747 lt!1706723) (= lambda!174574 lambda!174537))))

(declare-fun bs!867902 () Bool)

(assert (= bs!867902 (and b!4531731 b!4531540)))

(assert (=> bs!867902 (= (= lt!1706747 lt!1706746) (= lambda!174574 lambda!174525))))

(declare-fun bs!867903 () Bool)

(assert (= bs!867903 (and b!4531731 b!4531543)))

(assert (=> bs!867903 (= (= lt!1706747 lt!1707006) (= lambda!174574 lambda!174527))))

(declare-fun bs!867904 () Bool)

(assert (= bs!867904 (and b!4531731 b!4531728)))

(assert (=> bs!867904 (= lambda!174574 lambda!174573)))

(declare-fun bs!867905 () Bool)

(assert (= bs!867905 (and b!4531731 d!1398932)))

(assert (=> bs!867905 (= (= lt!1706747 lt!1707065) (= lambda!174574 lambda!174539))))

(declare-fun bs!867906 () Bool)

(assert (= bs!867906 (and b!4531731 b!4531585)))

(assert (=> bs!867906 (= (= lt!1706747 lt!1706723) (= lambda!174574 lambda!174536))))

(declare-fun bs!867907 () Bool)

(assert (= bs!867907 (and b!4531731 d!1398854)))

(assert (=> bs!867907 (= (= lt!1706747 lt!1707013) (= lambda!174574 lambda!174528))))

(assert (=> bs!867901 (= (= lt!1706747 lt!1707058) (= lambda!174574 lambda!174538))))

(assert (=> bs!867903 (= (= lt!1706747 lt!1706746) (= lambda!174574 lambda!174526))))

(declare-fun bs!867908 () Bool)

(assert (= bs!867908 (and b!4531731 b!4531316)))

(assert (=> bs!867908 (not (= lambda!174574 lambda!174447))))

(assert (=> b!4531731 true))

(declare-fun lt!1707192 () ListMap!3629)

(declare-fun lambda!174575 () Int)

(assert (=> bs!867901 (= (= lt!1707192 lt!1706723) (= lambda!174575 lambda!174537))))

(assert (=> bs!867902 (= (= lt!1707192 lt!1706746) (= lambda!174575 lambda!174525))))

(assert (=> bs!867903 (= (= lt!1707192 lt!1707006) (= lambda!174575 lambda!174527))))

(assert (=> b!4531731 (= (= lt!1707192 lt!1706747) (= lambda!174575 lambda!174574))))

(assert (=> bs!867904 (= (= lt!1707192 lt!1706747) (= lambda!174575 lambda!174573))))

(assert (=> bs!867905 (= (= lt!1707192 lt!1707065) (= lambda!174575 lambda!174539))))

(assert (=> bs!867906 (= (= lt!1707192 lt!1706723) (= lambda!174575 lambda!174536))))

(assert (=> bs!867907 (= (= lt!1707192 lt!1707013) (= lambda!174575 lambda!174528))))

(assert (=> bs!867901 (= (= lt!1707192 lt!1707058) (= lambda!174575 lambda!174538))))

(assert (=> bs!867903 (= (= lt!1707192 lt!1706746) (= lambda!174575 lambda!174526))))

(assert (=> bs!867908 (not (= lambda!174575 lambda!174447))))

(assert (=> b!4531731 true))

(declare-fun bs!867909 () Bool)

(declare-fun d!1399042 () Bool)

(assert (= bs!867909 (and d!1399042 b!4531588)))

(declare-fun lambda!174576 () Int)

(declare-fun lt!1707199 () ListMap!3629)

(assert (=> bs!867909 (= (= lt!1707199 lt!1706723) (= lambda!174576 lambda!174537))))

(declare-fun bs!867910 () Bool)

(assert (= bs!867910 (and d!1399042 b!4531731)))

(assert (=> bs!867910 (= (= lt!1707199 lt!1707192) (= lambda!174576 lambda!174575))))

(declare-fun bs!867911 () Bool)

(assert (= bs!867911 (and d!1399042 b!4531540)))

(assert (=> bs!867911 (= (= lt!1707199 lt!1706746) (= lambda!174576 lambda!174525))))

(declare-fun bs!867912 () Bool)

(assert (= bs!867912 (and d!1399042 b!4531543)))

(assert (=> bs!867912 (= (= lt!1707199 lt!1707006) (= lambda!174576 lambda!174527))))

(assert (=> bs!867910 (= (= lt!1707199 lt!1706747) (= lambda!174576 lambda!174574))))

(declare-fun bs!867913 () Bool)

(assert (= bs!867913 (and d!1399042 b!4531728)))

(assert (=> bs!867913 (= (= lt!1707199 lt!1706747) (= lambda!174576 lambda!174573))))

(declare-fun bs!867914 () Bool)

(assert (= bs!867914 (and d!1399042 d!1398932)))

(assert (=> bs!867914 (= (= lt!1707199 lt!1707065) (= lambda!174576 lambda!174539))))

(declare-fun bs!867915 () Bool)

(assert (= bs!867915 (and d!1399042 b!4531585)))

(assert (=> bs!867915 (= (= lt!1707199 lt!1706723) (= lambda!174576 lambda!174536))))

(declare-fun bs!867916 () Bool)

(assert (= bs!867916 (and d!1399042 d!1398854)))

(assert (=> bs!867916 (= (= lt!1707199 lt!1707013) (= lambda!174576 lambda!174528))))

(assert (=> bs!867909 (= (= lt!1707199 lt!1707058) (= lambda!174576 lambda!174538))))

(assert (=> bs!867912 (= (= lt!1707199 lt!1706746) (= lambda!174576 lambda!174526))))

(declare-fun bs!867917 () Bool)

(assert (= bs!867917 (and d!1399042 b!4531316)))

(assert (=> bs!867917 (not (= lambda!174576 lambda!174447))))

(assert (=> d!1399042 true))

(declare-fun c!773819 () Bool)

(declare-fun bm!315909 () Bool)

(declare-fun call!315915 () Bool)

(assert (=> bm!315909 (= call!315915 (forall!10311 (toList!4367 lt!1706747) (ite c!773819 lambda!174573 lambda!174575)))))

(declare-fun call!315914 () Bool)

(declare-fun bm!315910 () Bool)

(assert (=> bm!315910 (= call!315914 (forall!10311 (ite c!773819 (toList!4367 lt!1706747) (_2!28872 lt!1706730)) (ite c!773819 lambda!174573 lambda!174575)))))

(declare-fun e!2823745 () ListMap!3629)

(assert (=> b!4531728 (= e!2823745 lt!1706747)))

(declare-fun lt!1707181 () Unit!96986)

(declare-fun call!315916 () Unit!96986)

(assert (=> b!4531728 (= lt!1707181 call!315916)))

(assert (=> b!4531728 call!315915))

(declare-fun lt!1707186 () Unit!96986)

(assert (=> b!4531728 (= lt!1707186 lt!1707181)))

(assert (=> b!4531728 call!315914))

(declare-fun lt!1707191 () Unit!96986)

(declare-fun Unit!97049 () Unit!96986)

(assert (=> b!4531728 (= lt!1707191 Unit!97049)))

(declare-fun b!4531729 () Bool)

(declare-fun e!2823744 () Bool)

(assert (=> b!4531729 (= e!2823744 (forall!10311 (toList!4367 lt!1706747) lambda!174575))))

(declare-fun b!4531730 () Bool)

(declare-fun e!2823743 () Bool)

(assert (=> b!4531730 (= e!2823743 (invariantList!1033 (toList!4367 lt!1707199)))))

(assert (=> b!4531731 (= e!2823745 lt!1707192)))

(declare-fun lt!1707194 () ListMap!3629)

(assert (=> b!4531731 (= lt!1707194 (+!1576 lt!1706747 (h!56571 (_2!28872 lt!1706730))))))

(assert (=> b!4531731 (= lt!1707192 (addToMapMapFromBucket!707 (t!357788 (_2!28872 lt!1706730)) (+!1576 lt!1706747 (h!56571 (_2!28872 lt!1706730)))))))

(declare-fun lt!1707193 () Unit!96986)

(assert (=> b!4531731 (= lt!1707193 call!315916)))

(assert (=> b!4531731 (forall!10311 (toList!4367 lt!1706747) lambda!174574)))

(declare-fun lt!1707197 () Unit!96986)

(assert (=> b!4531731 (= lt!1707197 lt!1707193)))

(assert (=> b!4531731 (forall!10311 (toList!4367 lt!1707194) lambda!174575)))

(declare-fun lt!1707189 () Unit!96986)

(declare-fun Unit!97050 () Unit!96986)

(assert (=> b!4531731 (= lt!1707189 Unit!97050)))

(assert (=> b!4531731 (forall!10311 (t!357788 (_2!28872 lt!1706730)) lambda!174575)))

(declare-fun lt!1707185 () Unit!96986)

(declare-fun Unit!97051 () Unit!96986)

(assert (=> b!4531731 (= lt!1707185 Unit!97051)))

(declare-fun lt!1707182 () Unit!96986)

(declare-fun Unit!97052 () Unit!96986)

(assert (=> b!4531731 (= lt!1707182 Unit!97052)))

(declare-fun lt!1707184 () Unit!96986)

(assert (=> b!4531731 (= lt!1707184 (forallContained!2565 (toList!4367 lt!1707194) lambda!174575 (h!56571 (_2!28872 lt!1706730))))))

(assert (=> b!4531731 (contains!13463 lt!1707194 (_1!28871 (h!56571 (_2!28872 lt!1706730))))))

(declare-fun lt!1707195 () Unit!96986)

(declare-fun Unit!97053 () Unit!96986)

(assert (=> b!4531731 (= lt!1707195 Unit!97053)))

(assert (=> b!4531731 (contains!13463 lt!1707192 (_1!28871 (h!56571 (_2!28872 lt!1706730))))))

(declare-fun lt!1707180 () Unit!96986)

(declare-fun Unit!97054 () Unit!96986)

(assert (=> b!4531731 (= lt!1707180 Unit!97054)))

(assert (=> b!4531731 call!315914))

(declare-fun lt!1707200 () Unit!96986)

(declare-fun Unit!97055 () Unit!96986)

(assert (=> b!4531731 (= lt!1707200 Unit!97055)))

(assert (=> b!4531731 (forall!10311 (toList!4367 lt!1707194) lambda!174575)))

(declare-fun lt!1707187 () Unit!96986)

(declare-fun Unit!97056 () Unit!96986)

(assert (=> b!4531731 (= lt!1707187 Unit!97056)))

(declare-fun lt!1707190 () Unit!96986)

(declare-fun Unit!97057 () Unit!96986)

(assert (=> b!4531731 (= lt!1707190 Unit!97057)))

(declare-fun lt!1707183 () Unit!96986)

(assert (=> b!4531731 (= lt!1707183 (addForallContainsKeyThenBeforeAdding!354 lt!1706747 lt!1707192 (_1!28871 (h!56571 (_2!28872 lt!1706730))) (_2!28871 (h!56571 (_2!28872 lt!1706730)))))))

(assert (=> b!4531731 call!315915))

(declare-fun lt!1707188 () Unit!96986)

(assert (=> b!4531731 (= lt!1707188 lt!1707183)))

(assert (=> b!4531731 (forall!10311 (toList!4367 lt!1706747) lambda!174575)))

(declare-fun lt!1707196 () Unit!96986)

(declare-fun Unit!97058 () Unit!96986)

(assert (=> b!4531731 (= lt!1707196 Unit!97058)))

(declare-fun res!1887433 () Bool)

(assert (=> b!4531731 (= res!1887433 (forall!10311 (_2!28872 lt!1706730) lambda!174575))))

(assert (=> b!4531731 (=> (not res!1887433) (not e!2823744))))

(assert (=> b!4531731 e!2823744))

(declare-fun lt!1707198 () Unit!96986)

(declare-fun Unit!97059 () Unit!96986)

(assert (=> b!4531731 (= lt!1707198 Unit!97059)))

(declare-fun bm!315911 () Bool)

(assert (=> bm!315911 (= call!315916 (lemmaContainsAllItsOwnKeys!354 lt!1706747))))

(declare-fun b!4531732 () Bool)

(declare-fun res!1887432 () Bool)

(assert (=> b!4531732 (=> (not res!1887432) (not e!2823743))))

(assert (=> b!4531732 (= res!1887432 (forall!10311 (toList!4367 lt!1706747) lambda!174576))))

(assert (=> d!1399042 e!2823743))

(declare-fun res!1887434 () Bool)

(assert (=> d!1399042 (=> (not res!1887434) (not e!2823743))))

(assert (=> d!1399042 (= res!1887434 (forall!10311 (_2!28872 lt!1706730) lambda!174576))))

(assert (=> d!1399042 (= lt!1707199 e!2823745)))

(assert (=> d!1399042 (= c!773819 ((_ is Nil!50702) (_2!28872 lt!1706730)))))

(assert (=> d!1399042 (noDuplicateKeys!1180 (_2!28872 lt!1706730))))

(assert (=> d!1399042 (= (addToMapMapFromBucket!707 (_2!28872 lt!1706730) lt!1706747) lt!1707199)))

(assert (= (and d!1399042 c!773819) b!4531728))

(assert (= (and d!1399042 (not c!773819)) b!4531731))

(assert (= (and b!4531731 res!1887433) b!4531729))

(assert (= (or b!4531728 b!4531731) bm!315910))

(assert (= (or b!4531728 b!4531731) bm!315909))

(assert (= (or b!4531728 b!4531731) bm!315911))

(assert (= (and d!1399042 res!1887434) b!4531732))

(assert (= (and b!4531732 res!1887432) b!4531730))

(declare-fun m!5290147 () Bool)

(assert (=> bm!315910 m!5290147))

(declare-fun m!5290149 () Bool)

(assert (=> b!4531730 m!5290149))

(declare-fun m!5290151 () Bool)

(assert (=> b!4531731 m!5290151))

(declare-fun m!5290153 () Bool)

(assert (=> b!4531731 m!5290153))

(declare-fun m!5290155 () Bool)

(assert (=> b!4531731 m!5290155))

(declare-fun m!5290157 () Bool)

(assert (=> b!4531731 m!5290157))

(declare-fun m!5290159 () Bool)

(assert (=> b!4531731 m!5290159))

(declare-fun m!5290161 () Bool)

(assert (=> b!4531731 m!5290161))

(declare-fun m!5290163 () Bool)

(assert (=> b!4531731 m!5290163))

(assert (=> b!4531731 m!5290163))

(declare-fun m!5290165 () Bool)

(assert (=> b!4531731 m!5290165))

(declare-fun m!5290167 () Bool)

(assert (=> b!4531731 m!5290167))

(declare-fun m!5290169 () Bool)

(assert (=> b!4531731 m!5290169))

(assert (=> b!4531731 m!5290153))

(declare-fun m!5290171 () Bool)

(assert (=> b!4531731 m!5290171))

(declare-fun m!5290173 () Bool)

(assert (=> d!1399042 m!5290173))

(assert (=> d!1399042 m!5289369))

(declare-fun m!5290175 () Bool)

(assert (=> bm!315911 m!5290175))

(declare-fun m!5290177 () Bool)

(assert (=> bm!315909 m!5290177))

(declare-fun m!5290179 () Bool)

(assert (=> b!4531732 m!5290179))

(assert (=> b!4531729 m!5290159))

(assert (=> b!4531314 d!1399042))

(declare-fun d!1399044 () Bool)

(assert (=> d!1399044 (eq!637 (addToMapMapFromBucket!707 (_2!28872 lt!1706730) lt!1706746) (addToMapMapFromBucket!707 (_2!28872 lt!1706730) lt!1706747))))

(declare-fun lt!1707203 () Unit!96986)

(declare-fun choose!29750 (ListMap!3629 ListMap!3629 List!50826) Unit!96986)

(assert (=> d!1399044 (= lt!1707203 (choose!29750 lt!1706746 lt!1706747 (_2!28872 lt!1706730)))))

(assert (=> d!1399044 (noDuplicateKeys!1180 (_2!28872 lt!1706730))))

(assert (=> d!1399044 (= (lemmaAddToMapFromBucketPreservesEquivalence!56 lt!1706746 lt!1706747 (_2!28872 lt!1706730)) lt!1707203)))

(declare-fun bs!867918 () Bool)

(assert (= bs!867918 d!1399044))

(assert (=> bs!867918 m!5289289))

(assert (=> bs!867918 m!5289321))

(declare-fun m!5290181 () Bool)

(assert (=> bs!867918 m!5290181))

(assert (=> bs!867918 m!5289369))

(assert (=> bs!867918 m!5289289))

(assert (=> bs!867918 m!5289321))

(declare-fun m!5290183 () Bool)

(assert (=> bs!867918 m!5290183))

(assert (=> b!4531314 d!1399044))

(declare-fun b!4531733 () Bool)

(assert (=> b!4531733 false))

(declare-fun lt!1707204 () Unit!96986)

(declare-fun lt!1707210 () Unit!96986)

(assert (=> b!4531733 (= lt!1707204 lt!1707210)))

(assert (=> b!4531733 (containsKey!1833 (toList!4367 lt!1706719) key!3287)))

(assert (=> b!4531733 (= lt!1707210 (lemmaInGetKeysListThenContainsKey!479 (toList!4367 lt!1706719) key!3287))))

(declare-fun e!2823747 () Unit!96986)

(declare-fun Unit!97070 () Unit!96986)

(assert (=> b!4531733 (= e!2823747 Unit!97070)))

(declare-fun b!4531734 () Bool)

(declare-fun e!2823751 () Unit!96986)

(assert (=> b!4531734 (= e!2823751 e!2823747)))

(declare-fun c!773822 () Bool)

(declare-fun call!315917 () Bool)

(assert (=> b!4531734 (= c!773822 call!315917)))

(declare-fun b!4531735 () Bool)

(declare-fun e!2823750 () Bool)

(assert (=> b!4531735 (= e!2823750 (contains!13466 (keys!17630 lt!1706719) key!3287))))

(declare-fun bm!315912 () Bool)

(declare-fun e!2823746 () List!50829)

(assert (=> bm!315912 (= call!315917 (contains!13466 e!2823746 key!3287))))

(declare-fun c!773820 () Bool)

(declare-fun c!773821 () Bool)

(assert (=> bm!315912 (= c!773820 c!773821)))

(declare-fun d!1399046 () Bool)

(declare-fun e!2823749 () Bool)

(assert (=> d!1399046 e!2823749))

(declare-fun res!1887436 () Bool)

(assert (=> d!1399046 (=> res!1887436 e!2823749)))

(declare-fun e!2823748 () Bool)

(assert (=> d!1399046 (= res!1887436 e!2823748)))

(declare-fun res!1887437 () Bool)

(assert (=> d!1399046 (=> (not res!1887437) (not e!2823748))))

(declare-fun lt!1707209 () Bool)

(assert (=> d!1399046 (= res!1887437 (not lt!1707209))))

(declare-fun lt!1707206 () Bool)

(assert (=> d!1399046 (= lt!1707209 lt!1707206)))

(declare-fun lt!1707207 () Unit!96986)

(assert (=> d!1399046 (= lt!1707207 e!2823751)))

(assert (=> d!1399046 (= c!773821 lt!1707206)))

(assert (=> d!1399046 (= lt!1707206 (containsKey!1833 (toList!4367 lt!1706719) key!3287))))

(assert (=> d!1399046 (= (contains!13463 lt!1706719 key!3287) lt!1707209)))

(declare-fun b!4531736 () Bool)

(assert (=> b!4531736 (= e!2823749 e!2823750)))

(declare-fun res!1887435 () Bool)

(assert (=> b!4531736 (=> (not res!1887435) (not e!2823750))))

(assert (=> b!4531736 (= res!1887435 (isDefined!8443 (getValueByKey!1123 (toList!4367 lt!1706719) key!3287)))))

(declare-fun b!4531737 () Bool)

(assert (=> b!4531737 (= e!2823746 (getKeysList!480 (toList!4367 lt!1706719)))))

(declare-fun b!4531738 () Bool)

(declare-fun Unit!97072 () Unit!96986)

(assert (=> b!4531738 (= e!2823747 Unit!97072)))

(declare-fun b!4531739 () Bool)

(assert (=> b!4531739 (= e!2823748 (not (contains!13466 (keys!17630 lt!1706719) key!3287)))))

(declare-fun b!4531740 () Bool)

(assert (=> b!4531740 (= e!2823746 (keys!17630 lt!1706719))))

(declare-fun b!4531741 () Bool)

(declare-fun lt!1707211 () Unit!96986)

(assert (=> b!4531741 (= e!2823751 lt!1707211)))

(declare-fun lt!1707205 () Unit!96986)

(assert (=> b!4531741 (= lt!1707205 (lemmaContainsKeyImpliesGetValueByKeyDefined!1026 (toList!4367 lt!1706719) key!3287))))

(assert (=> b!4531741 (isDefined!8443 (getValueByKey!1123 (toList!4367 lt!1706719) key!3287))))

(declare-fun lt!1707208 () Unit!96986)

(assert (=> b!4531741 (= lt!1707208 lt!1707205)))

(assert (=> b!4531741 (= lt!1707211 (lemmaInListThenGetKeysListContains!476 (toList!4367 lt!1706719) key!3287))))

(assert (=> b!4531741 call!315917))

(assert (= (and d!1399046 c!773821) b!4531741))

(assert (= (and d!1399046 (not c!773821)) b!4531734))

(assert (= (and b!4531734 c!773822) b!4531733))

(assert (= (and b!4531734 (not c!773822)) b!4531738))

(assert (= (or b!4531741 b!4531734) bm!315912))

(assert (= (and bm!315912 c!773820) b!4531737))

(assert (= (and bm!315912 (not c!773820)) b!4531740))

(assert (= (and d!1399046 res!1887437) b!4531739))

(assert (= (and d!1399046 (not res!1887436)) b!4531736))

(assert (= (and b!4531736 res!1887435) b!4531735))

(declare-fun m!5290185 () Bool)

(assert (=> b!4531737 m!5290185))

(declare-fun m!5290187 () Bool)

(assert (=> b!4531741 m!5290187))

(declare-fun m!5290189 () Bool)

(assert (=> b!4531741 m!5290189))

(assert (=> b!4531741 m!5290189))

(declare-fun m!5290191 () Bool)

(assert (=> b!4531741 m!5290191))

(declare-fun m!5290193 () Bool)

(assert (=> b!4531741 m!5290193))

(declare-fun m!5290195 () Bool)

(assert (=> b!4531739 m!5290195))

(assert (=> b!4531739 m!5290195))

(declare-fun m!5290197 () Bool)

(assert (=> b!4531739 m!5290197))

(declare-fun m!5290199 () Bool)

(assert (=> b!4531733 m!5290199))

(declare-fun m!5290201 () Bool)

(assert (=> b!4531733 m!5290201))

(assert (=> b!4531735 m!5290195))

(assert (=> b!4531735 m!5290195))

(assert (=> b!4531735 m!5290197))

(declare-fun m!5290203 () Bool)

(assert (=> bm!315912 m!5290203))

(assert (=> b!4531740 m!5290195))

(assert (=> b!4531736 m!5290189))

(assert (=> b!4531736 m!5290189))

(assert (=> b!4531736 m!5290191))

(assert (=> d!1399046 m!5290199))

(assert (=> b!4531293 d!1399046))

(declare-fun bs!867919 () Bool)

(declare-fun d!1399048 () Bool)

(assert (= bs!867919 (and d!1399048 d!1398976)))

(declare-fun lambda!174577 () Int)

(assert (=> bs!867919 (= lambda!174577 lambda!174558)))

(declare-fun bs!867920 () Bool)

(assert (= bs!867920 (and d!1399048 d!1398842)))

(assert (=> bs!867920 (= lambda!174577 lambda!174461)))

(declare-fun bs!867921 () Bool)

(assert (= bs!867921 (and d!1399048 b!4531316)))

(assert (=> bs!867921 (not (= lambda!174577 lambda!174446))))

(declare-fun bs!867922 () Bool)

(assert (= bs!867922 (and d!1399048 d!1398966)))

(assert (=> bs!867922 (not (= lambda!174577 lambda!174555))))

(declare-fun bs!867923 () Bool)

(assert (= bs!867923 (and d!1399048 start!449344)))

(assert (=> bs!867923 (= lambda!174577 lambda!174445)))

(declare-fun bs!867924 () Bool)

(assert (= bs!867924 (and d!1399048 d!1398824)))

(assert (=> bs!867924 (= lambda!174577 lambda!174453)))

(declare-fun bs!867925 () Bool)

(assert (= bs!867925 (and d!1399048 d!1398840)))

(assert (=> bs!867925 (= lambda!174577 lambda!174456)))

(declare-fun bs!867926 () Bool)

(assert (= bs!867926 (and d!1399048 d!1398978)))

(assert (=> bs!867926 (= lambda!174577 lambda!174564)))

(declare-fun bs!867927 () Bool)

(assert (= bs!867927 (and d!1399048 d!1398942)))

(assert (=> bs!867927 (= lambda!174577 lambda!174552)))

(declare-fun bs!867928 () Bool)

(assert (= bs!867928 (and d!1399048 d!1398912)))

(assert (=> bs!867928 (= lambda!174577 lambda!174529)))

(declare-fun lt!1707212 () ListMap!3629)

(assert (=> d!1399048 (invariantList!1033 (toList!4367 lt!1707212))))

(declare-fun e!2823752 () ListMap!3629)

(assert (=> d!1399048 (= lt!1707212 e!2823752)))

(declare-fun c!773823 () Bool)

(assert (=> d!1399048 (= c!773823 ((_ is Cons!50703) (toList!4368 lm!1477)))))

(assert (=> d!1399048 (forall!10309 (toList!4368 lm!1477) lambda!174577)))

(assert (=> d!1399048 (= (extractMap!1236 (toList!4368 lm!1477)) lt!1707212)))

(declare-fun b!4531742 () Bool)

(assert (=> b!4531742 (= e!2823752 (addToMapMapFromBucket!707 (_2!28872 (h!56572 (toList!4368 lm!1477))) (extractMap!1236 (t!357789 (toList!4368 lm!1477)))))))

(declare-fun b!4531743 () Bool)

(assert (=> b!4531743 (= e!2823752 (ListMap!3630 Nil!50702))))

(assert (= (and d!1399048 c!773823) b!4531742))

(assert (= (and d!1399048 (not c!773823)) b!4531743))

(declare-fun m!5290205 () Bool)

(assert (=> d!1399048 m!5290205))

(declare-fun m!5290207 () Bool)

(assert (=> d!1399048 m!5290207))

(assert (=> b!4531742 m!5289365))

(assert (=> b!4531742 m!5289365))

(declare-fun m!5290209 () Bool)

(assert (=> b!4531742 m!5290209))

(assert (=> b!4531293 d!1399048))

(declare-fun d!1399050 () Bool)

(assert (=> d!1399050 (= (eq!637 lt!1706720 lt!1706719) (= (content!8405 (toList!4367 lt!1706720)) (content!8405 (toList!4367 lt!1706719))))))

(declare-fun bs!867929 () Bool)

(assert (= bs!867929 d!1399050))

(assert (=> bs!867929 m!5290143))

(assert (=> bs!867929 m!5290141))

(assert (=> b!4531292 d!1399050))

(declare-fun d!1399052 () Bool)

(declare-fun e!2823753 () Bool)

(assert (=> d!1399052 e!2823753))

(declare-fun res!1887438 () Bool)

(assert (=> d!1399052 (=> (not res!1887438) (not e!2823753))))

(declare-fun lt!1707216 () ListLongMap!2999)

(assert (=> d!1399052 (= res!1887438 (contains!13464 lt!1707216 (_1!28872 lt!1706730)))))

(declare-fun lt!1707213 () List!50827)

(assert (=> d!1399052 (= lt!1707216 (ListLongMap!3000 lt!1707213))))

(declare-fun lt!1707215 () Unit!96986)

(declare-fun lt!1707214 () Unit!96986)

(assert (=> d!1399052 (= lt!1707215 lt!1707214)))

(assert (=> d!1399052 (= (getValueByKey!1124 lt!1707213 (_1!28872 lt!1706730)) (Some!11161 (_2!28872 lt!1706730)))))

(assert (=> d!1399052 (= lt!1707214 (lemmaContainsTupThenGetReturnValue!704 lt!1707213 (_1!28872 lt!1706730) (_2!28872 lt!1706730)))))

(assert (=> d!1399052 (= lt!1707213 (insertStrictlySorted!424 (toList!4368 lt!1706740) (_1!28872 lt!1706730) (_2!28872 lt!1706730)))))

(assert (=> d!1399052 (= (+!1574 lt!1706740 lt!1706730) lt!1707216)))

(declare-fun b!4531744 () Bool)

(declare-fun res!1887439 () Bool)

(assert (=> b!4531744 (=> (not res!1887439) (not e!2823753))))

(assert (=> b!4531744 (= res!1887439 (= (getValueByKey!1124 (toList!4368 lt!1707216) (_1!28872 lt!1706730)) (Some!11161 (_2!28872 lt!1706730))))))

(declare-fun b!4531745 () Bool)

(assert (=> b!4531745 (= e!2823753 (contains!13465 (toList!4368 lt!1707216) lt!1706730))))

(assert (= (and d!1399052 res!1887438) b!4531744))

(assert (= (and b!4531744 res!1887439) b!4531745))

(declare-fun m!5290211 () Bool)

(assert (=> d!1399052 m!5290211))

(declare-fun m!5290213 () Bool)

(assert (=> d!1399052 m!5290213))

(declare-fun m!5290215 () Bool)

(assert (=> d!1399052 m!5290215))

(declare-fun m!5290217 () Bool)

(assert (=> d!1399052 m!5290217))

(declare-fun m!5290219 () Bool)

(assert (=> b!4531744 m!5290219))

(declare-fun m!5290221 () Bool)

(assert (=> b!4531745 m!5290221))

(assert (=> b!4531292 d!1399052))

(declare-fun d!1399054 () Bool)

(assert (=> d!1399054 (= (eq!637 lt!1706746 lt!1706747) (= (content!8405 (toList!4367 lt!1706746)) (content!8405 (toList!4367 lt!1706747))))))

(declare-fun bs!867930 () Bool)

(assert (= bs!867930 d!1399054))

(declare-fun m!5290223 () Bool)

(assert (=> bs!867930 m!5290223))

(declare-fun m!5290225 () Bool)

(assert (=> bs!867930 m!5290225))

(assert (=> b!4531292 d!1399054))

(declare-fun d!1399056 () Bool)

(declare-fun e!2823754 () Bool)

(assert (=> d!1399056 e!2823754))

(declare-fun res!1887440 () Bool)

(assert (=> d!1399056 (=> (not res!1887440) (not e!2823754))))

(declare-fun lt!1707217 () ListMap!3629)

(assert (=> d!1399056 (= res!1887440 (not (contains!13463 lt!1707217 key!3287)))))

(assert (=> d!1399056 (= lt!1707217 (ListMap!3630 (removePresrvNoDuplicatedKeys!157 (toList!4367 lt!1706723) key!3287)))))

(assert (=> d!1399056 (= (-!406 lt!1706723 key!3287) lt!1707217)))

(declare-fun b!4531746 () Bool)

(assert (=> b!4531746 (= e!2823754 (= ((_ map and) (content!8406 (keys!17630 lt!1706723)) ((_ map not) (store ((as const (Array K!12090 Bool)) false) key!3287 true))) (content!8406 (keys!17630 lt!1707217))))))

(assert (= (and d!1399056 res!1887440) b!4531746))

(declare-fun m!5290227 () Bool)

(assert (=> d!1399056 m!5290227))

(declare-fun m!5290229 () Bool)

(assert (=> d!1399056 m!5290229))

(assert (=> b!4531746 m!5289449))

(assert (=> b!4531746 m!5289789))

(declare-fun m!5290231 () Bool)

(assert (=> b!4531746 m!5290231))

(declare-fun m!5290233 () Bool)

(assert (=> b!4531746 m!5290233))

(assert (=> b!4531746 m!5290231))

(assert (=> b!4531746 m!5289449))

(declare-fun m!5290235 () Bool)

(assert (=> b!4531746 m!5290235))

(assert (=> b!4531292 d!1399056))

(declare-fun bs!867931 () Bool)

(declare-fun d!1399058 () Bool)

(assert (= bs!867931 (and d!1399058 d!1399048)))

(declare-fun lambda!174580 () Int)

(assert (=> bs!867931 (= lambda!174580 lambda!174577)))

(declare-fun bs!867932 () Bool)

(assert (= bs!867932 (and d!1399058 d!1398976)))

(assert (=> bs!867932 (= lambda!174580 lambda!174558)))

(declare-fun bs!867933 () Bool)

(assert (= bs!867933 (and d!1399058 d!1398842)))

(assert (=> bs!867933 (= lambda!174580 lambda!174461)))

(declare-fun bs!867934 () Bool)

(assert (= bs!867934 (and d!1399058 b!4531316)))

(assert (=> bs!867934 (not (= lambda!174580 lambda!174446))))

(declare-fun bs!867935 () Bool)

(assert (= bs!867935 (and d!1399058 d!1398966)))

(assert (=> bs!867935 (not (= lambda!174580 lambda!174555))))

(declare-fun bs!867936 () Bool)

(assert (= bs!867936 (and d!1399058 start!449344)))

(assert (=> bs!867936 (= lambda!174580 lambda!174445)))

(declare-fun bs!867937 () Bool)

(assert (= bs!867937 (and d!1399058 d!1398824)))

(assert (=> bs!867937 (= lambda!174580 lambda!174453)))

(declare-fun bs!867938 () Bool)

(assert (= bs!867938 (and d!1399058 d!1398840)))

(assert (=> bs!867938 (= lambda!174580 lambda!174456)))

(declare-fun bs!867939 () Bool)

(assert (= bs!867939 (and d!1399058 d!1398978)))

(assert (=> bs!867939 (= lambda!174580 lambda!174564)))

(declare-fun bs!867940 () Bool)

(assert (= bs!867940 (and d!1399058 d!1398942)))

(assert (=> bs!867940 (= lambda!174580 lambda!174552)))

(declare-fun bs!867941 () Bool)

(assert (= bs!867941 (and d!1399058 d!1398912)))

(assert (=> bs!867941 (= lambda!174580 lambda!174529)))

(assert (=> d!1399058 (eq!637 (extractMap!1236 (toList!4368 (+!1574 lt!1706740 (tuple2!51157 hash!344 newBucket!178)))) (-!406 (extractMap!1236 (toList!4368 lt!1706740)) key!3287))))

(declare-fun lt!1707220 () Unit!96986)

(declare-fun choose!29751 (ListLongMap!2999 (_ BitVec 64) List!50826 K!12090 Hashable!5575) Unit!96986)

(assert (=> d!1399058 (= lt!1707220 (choose!29751 lt!1706740 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1399058 (forall!10309 (toList!4368 lt!1706740) lambda!174580)))

(assert (=> d!1399058 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!165 lt!1706740 hash!344 newBucket!178 key!3287 hashF!1107) lt!1707220)))

(declare-fun bs!867942 () Bool)

(assert (= bs!867942 d!1399058))

(declare-fun m!5290237 () Bool)

(assert (=> bs!867942 m!5290237))

(declare-fun m!5290239 () Bool)

(assert (=> bs!867942 m!5290239))

(declare-fun m!5290241 () Bool)

(assert (=> bs!867942 m!5290241))

(declare-fun m!5290243 () Bool)

(assert (=> bs!867942 m!5290243))

(assert (=> bs!867942 m!5289361))

(assert (=> bs!867942 m!5289361))

(assert (=> bs!867942 m!5290239))

(assert (=> bs!867942 m!5290237))

(declare-fun m!5290245 () Bool)

(assert (=> bs!867942 m!5290245))

(declare-fun m!5290247 () Bool)

(assert (=> bs!867942 m!5290247))

(assert (=> b!4531292 d!1399058))

(declare-fun d!1399060 () Bool)

(assert (=> d!1399060 (= (head!9448 lm!1477) (head!9449 (toList!4368 lm!1477)))))

(declare-fun bs!867943 () Bool)

(assert (= bs!867943 d!1399060))

(declare-fun m!5290249 () Bool)

(assert (=> bs!867943 m!5290249))

(assert (=> b!4531292 d!1399060))

(declare-fun d!1399062 () Bool)

(declare-fun e!2823755 () Bool)

(assert (=> d!1399062 e!2823755))

(declare-fun res!1887441 () Bool)

(assert (=> d!1399062 (=> (not res!1887441) (not e!2823755))))

(declare-fun lt!1707224 () ListLongMap!2999)

(assert (=> d!1399062 (= res!1887441 (contains!13464 lt!1707224 (_1!28872 lt!1706731)))))

(declare-fun lt!1707221 () List!50827)

(assert (=> d!1399062 (= lt!1707224 (ListLongMap!3000 lt!1707221))))

(declare-fun lt!1707223 () Unit!96986)

(declare-fun lt!1707222 () Unit!96986)

(assert (=> d!1399062 (= lt!1707223 lt!1707222)))

(assert (=> d!1399062 (= (getValueByKey!1124 lt!1707221 (_1!28872 lt!1706731)) (Some!11161 (_2!28872 lt!1706731)))))

(assert (=> d!1399062 (= lt!1707222 (lemmaContainsTupThenGetReturnValue!704 lt!1707221 (_1!28872 lt!1706731) (_2!28872 lt!1706731)))))

(assert (=> d!1399062 (= lt!1707221 (insertStrictlySorted!424 (toList!4368 lt!1706740) (_1!28872 lt!1706731) (_2!28872 lt!1706731)))))

(assert (=> d!1399062 (= (+!1574 lt!1706740 lt!1706731) lt!1707224)))

(declare-fun b!4531747 () Bool)

(declare-fun res!1887442 () Bool)

(assert (=> b!4531747 (=> (not res!1887442) (not e!2823755))))

(assert (=> b!4531747 (= res!1887442 (= (getValueByKey!1124 (toList!4368 lt!1707224) (_1!28872 lt!1706731)) (Some!11161 (_2!28872 lt!1706731))))))

(declare-fun b!4531748 () Bool)

(assert (=> b!4531748 (= e!2823755 (contains!13465 (toList!4368 lt!1707224) lt!1706731))))

(assert (= (and d!1399062 res!1887441) b!4531747))

(assert (= (and b!4531747 res!1887442) b!4531748))

(declare-fun m!5290251 () Bool)

(assert (=> d!1399062 m!5290251))

(declare-fun m!5290253 () Bool)

(assert (=> d!1399062 m!5290253))

(declare-fun m!5290255 () Bool)

(assert (=> d!1399062 m!5290255))

(declare-fun m!5290257 () Bool)

(assert (=> d!1399062 m!5290257))

(declare-fun m!5290259 () Bool)

(assert (=> b!4531747 m!5290259))

(declare-fun m!5290261 () Bool)

(assert (=> b!4531748 m!5290261))

(assert (=> b!4531292 d!1399062))

(declare-fun bs!867944 () Bool)

(declare-fun d!1399064 () Bool)

(assert (= bs!867944 (and d!1399064 d!1399048)))

(declare-fun lambda!174581 () Int)

(assert (=> bs!867944 (= lambda!174581 lambda!174577)))

(declare-fun bs!867945 () Bool)

(assert (= bs!867945 (and d!1399064 d!1398976)))

(assert (=> bs!867945 (= lambda!174581 lambda!174558)))

(declare-fun bs!867946 () Bool)

(assert (= bs!867946 (and d!1399064 d!1399058)))

(assert (=> bs!867946 (= lambda!174581 lambda!174580)))

(declare-fun bs!867947 () Bool)

(assert (= bs!867947 (and d!1399064 d!1398842)))

(assert (=> bs!867947 (= lambda!174581 lambda!174461)))

(declare-fun bs!867948 () Bool)

(assert (= bs!867948 (and d!1399064 b!4531316)))

(assert (=> bs!867948 (not (= lambda!174581 lambda!174446))))

(declare-fun bs!867949 () Bool)

(assert (= bs!867949 (and d!1399064 d!1398966)))

(assert (=> bs!867949 (not (= lambda!174581 lambda!174555))))

(declare-fun bs!867950 () Bool)

(assert (= bs!867950 (and d!1399064 start!449344)))

(assert (=> bs!867950 (= lambda!174581 lambda!174445)))

(declare-fun bs!867951 () Bool)

(assert (= bs!867951 (and d!1399064 d!1398824)))

(assert (=> bs!867951 (= lambda!174581 lambda!174453)))

(declare-fun bs!867952 () Bool)

(assert (= bs!867952 (and d!1399064 d!1398840)))

(assert (=> bs!867952 (= lambda!174581 lambda!174456)))

(declare-fun bs!867953 () Bool)

(assert (= bs!867953 (and d!1399064 d!1398978)))

(assert (=> bs!867953 (= lambda!174581 lambda!174564)))

(declare-fun bs!867954 () Bool)

(assert (= bs!867954 (and d!1399064 d!1398942)))

(assert (=> bs!867954 (= lambda!174581 lambda!174552)))

(declare-fun bs!867955 () Bool)

(assert (= bs!867955 (and d!1399064 d!1398912)))

(assert (=> bs!867955 (= lambda!174581 lambda!174529)))

(declare-fun lt!1707225 () ListMap!3629)

(assert (=> d!1399064 (invariantList!1033 (toList!4367 lt!1707225))))

(declare-fun e!2823756 () ListMap!3629)

(assert (=> d!1399064 (= lt!1707225 e!2823756)))

(declare-fun c!773824 () Bool)

(assert (=> d!1399064 (= c!773824 ((_ is Cons!50703) (toList!4368 lt!1706721)))))

(assert (=> d!1399064 (forall!10309 (toList!4368 lt!1706721) lambda!174581)))

(assert (=> d!1399064 (= (extractMap!1236 (toList!4368 lt!1706721)) lt!1707225)))

(declare-fun b!4531749 () Bool)

(assert (=> b!4531749 (= e!2823756 (addToMapMapFromBucket!707 (_2!28872 (h!56572 (toList!4368 lt!1706721))) (extractMap!1236 (t!357789 (toList!4368 lt!1706721)))))))

(declare-fun b!4531750 () Bool)

(assert (=> b!4531750 (= e!2823756 (ListMap!3630 Nil!50702))))

(assert (= (and d!1399064 c!773824) b!4531749))

(assert (= (and d!1399064 (not c!773824)) b!4531750))

(declare-fun m!5290263 () Bool)

(assert (=> d!1399064 m!5290263))

(declare-fun m!5290265 () Bool)

(assert (=> d!1399064 m!5290265))

(declare-fun m!5290267 () Bool)

(assert (=> b!4531749 m!5290267))

(assert (=> b!4531749 m!5290267))

(declare-fun m!5290269 () Bool)

(assert (=> b!4531749 m!5290269))

(assert (=> b!4531292 d!1399064))

(declare-fun bs!867956 () Bool)

(declare-fun d!1399066 () Bool)

(assert (= bs!867956 (and d!1399066 d!1399048)))

(declare-fun lambda!174582 () Int)

(assert (=> bs!867956 (= lambda!174582 lambda!174577)))

(declare-fun bs!867957 () Bool)

(assert (= bs!867957 (and d!1399066 d!1398976)))

(assert (=> bs!867957 (= lambda!174582 lambda!174558)))

(declare-fun bs!867958 () Bool)

(assert (= bs!867958 (and d!1399066 d!1399058)))

(assert (=> bs!867958 (= lambda!174582 lambda!174580)))

(declare-fun bs!867959 () Bool)

(assert (= bs!867959 (and d!1399066 d!1398842)))

(assert (=> bs!867959 (= lambda!174582 lambda!174461)))

(declare-fun bs!867960 () Bool)

(assert (= bs!867960 (and d!1399066 b!4531316)))

(assert (=> bs!867960 (not (= lambda!174582 lambda!174446))))

(declare-fun bs!867961 () Bool)

(assert (= bs!867961 (and d!1399066 d!1398966)))

(assert (=> bs!867961 (not (= lambda!174582 lambda!174555))))

(declare-fun bs!867962 () Bool)

(assert (= bs!867962 (and d!1399066 start!449344)))

(assert (=> bs!867962 (= lambda!174582 lambda!174445)))

(declare-fun bs!867963 () Bool)

(assert (= bs!867963 (and d!1399066 d!1398824)))

(assert (=> bs!867963 (= lambda!174582 lambda!174453)))

(declare-fun bs!867964 () Bool)

(assert (= bs!867964 (and d!1399066 d!1399064)))

(assert (=> bs!867964 (= lambda!174582 lambda!174581)))

(declare-fun bs!867965 () Bool)

(assert (= bs!867965 (and d!1399066 d!1398840)))

(assert (=> bs!867965 (= lambda!174582 lambda!174456)))

(declare-fun bs!867966 () Bool)

(assert (= bs!867966 (and d!1399066 d!1398978)))

(assert (=> bs!867966 (= lambda!174582 lambda!174564)))

(declare-fun bs!867967 () Bool)

(assert (= bs!867967 (and d!1399066 d!1398942)))

(assert (=> bs!867967 (= lambda!174582 lambda!174552)))

(declare-fun bs!867968 () Bool)

(assert (= bs!867968 (and d!1399066 d!1398912)))

(assert (=> bs!867968 (= lambda!174582 lambda!174529)))

(declare-fun lt!1707226 () ListMap!3629)

(assert (=> d!1399066 (invariantList!1033 (toList!4367 lt!1707226))))

(declare-fun e!2823757 () ListMap!3629)

(assert (=> d!1399066 (= lt!1707226 e!2823757)))

(declare-fun c!773825 () Bool)

(assert (=> d!1399066 (= c!773825 ((_ is Cons!50703) (toList!4368 (+!1574 lt!1706740 lt!1706730))))))

(assert (=> d!1399066 (forall!10309 (toList!4368 (+!1574 lt!1706740 lt!1706730)) lambda!174582)))

(assert (=> d!1399066 (= (extractMap!1236 (toList!4368 (+!1574 lt!1706740 lt!1706730))) lt!1707226)))

(declare-fun b!4531751 () Bool)

(assert (=> b!4531751 (= e!2823757 (addToMapMapFromBucket!707 (_2!28872 (h!56572 (toList!4368 (+!1574 lt!1706740 lt!1706730)))) (extractMap!1236 (t!357789 (toList!4368 (+!1574 lt!1706740 lt!1706730))))))))

(declare-fun b!4531752 () Bool)

(assert (=> b!4531752 (= e!2823757 (ListMap!3630 Nil!50702))))

(assert (= (and d!1399066 c!773825) b!4531751))

(assert (= (and d!1399066 (not c!773825)) b!4531752))

(declare-fun m!5290271 () Bool)

(assert (=> d!1399066 m!5290271))

(declare-fun m!5290273 () Bool)

(assert (=> d!1399066 m!5290273))

(declare-fun m!5290275 () Bool)

(assert (=> b!4531751 m!5290275))

(assert (=> b!4531751 m!5290275))

(declare-fun m!5290277 () Bool)

(assert (=> b!4531751 m!5290277))

(assert (=> b!4531292 d!1399066))

(declare-fun bs!867969 () Bool)

(declare-fun d!1399068 () Bool)

(assert (= bs!867969 (and d!1399068 b!4531588)))

(declare-fun lambda!174585 () Int)

(assert (=> bs!867969 (not (= lambda!174585 lambda!174537))))

(declare-fun bs!867970 () Bool)

(assert (= bs!867970 (and d!1399068 b!4531540)))

(assert (=> bs!867970 (not (= lambda!174585 lambda!174525))))

(declare-fun bs!867971 () Bool)

(assert (= bs!867971 (and d!1399068 b!4531543)))

(assert (=> bs!867971 (not (= lambda!174585 lambda!174527))))

(declare-fun bs!867972 () Bool)

(assert (= bs!867972 (and d!1399068 b!4531731)))

(assert (=> bs!867972 (not (= lambda!174585 lambda!174574))))

(declare-fun bs!867973 () Bool)

(assert (= bs!867973 (and d!1399068 b!4531728)))

(assert (=> bs!867973 (not (= lambda!174585 lambda!174573))))

(declare-fun bs!867974 () Bool)

(assert (= bs!867974 (and d!1399068 d!1398932)))

(assert (=> bs!867974 (not (= lambda!174585 lambda!174539))))

(declare-fun bs!867975 () Bool)

(assert (= bs!867975 (and d!1399068 b!4531585)))

(assert (=> bs!867975 (not (= lambda!174585 lambda!174536))))

(assert (=> bs!867972 (not (= lambda!174585 lambda!174575))))

(declare-fun bs!867976 () Bool)

(assert (= bs!867976 (and d!1399068 d!1399042)))

(assert (=> bs!867976 (not (= lambda!174585 lambda!174576))))

(declare-fun bs!867977 () Bool)

(assert (= bs!867977 (and d!1399068 d!1398854)))

(assert (=> bs!867977 (not (= lambda!174585 lambda!174528))))

(assert (=> bs!867969 (not (= lambda!174585 lambda!174538))))

(assert (=> bs!867971 (not (= lambda!174585 lambda!174526))))

(declare-fun bs!867978 () Bool)

(assert (= bs!867978 (and d!1399068 b!4531316)))

(assert (=> bs!867978 (= (= hash!344 (_1!28872 (h!56572 (toList!4368 lm!1477)))) (= lambda!174585 lambda!174447))))

(assert (=> d!1399068 true))

(assert (=> d!1399068 true))

(assert (=> d!1399068 (= (allKeysSameHash!1034 newBucket!178 hash!344 hashF!1107) (forall!10311 newBucket!178 lambda!174585))))

(declare-fun bs!867979 () Bool)

(assert (= bs!867979 d!1399068))

(declare-fun m!5290279 () Bool)

(assert (=> bs!867979 m!5290279))

(assert (=> b!4531313 d!1399068))

(declare-fun e!2823760 () Bool)

(declare-fun b!4531759 () Bool)

(declare-fun tp!1338397 () Bool)

(assert (=> b!4531759 (= e!2823760 (and tp_is_empty!27997 tp_is_empty!27999 tp!1338397))))

(assert (=> b!4531317 (= tp!1338385 e!2823760)))

(assert (= (and b!4531317 ((_ is Cons!50702) (t!357788 newBucket!178))) b!4531759))

(declare-fun b!4531764 () Bool)

(declare-fun e!2823763 () Bool)

(declare-fun tp!1338402 () Bool)

(declare-fun tp!1338403 () Bool)

(assert (=> b!4531764 (= e!2823763 (and tp!1338402 tp!1338403))))

(assert (=> b!4531297 (= tp!1338384 e!2823763)))

(assert (= (and b!4531297 ((_ is Cons!50703) (toList!4368 lm!1477))) b!4531764))

(declare-fun b_lambda!156743 () Bool)

(assert (= b_lambda!156719 (or start!449344 b_lambda!156743)))

(declare-fun bs!867980 () Bool)

(declare-fun d!1399070 () Bool)

(assert (= bs!867980 (and d!1399070 start!449344)))

(assert (=> bs!867980 (= (dynLambda!21191 lambda!174445 (h!56572 (toList!4368 lt!1706740))) (noDuplicateKeys!1180 (_2!28872 (h!56572 (toList!4368 lt!1706740)))))))

(declare-fun m!5290281 () Bool)

(assert (=> bs!867980 m!5290281))

(assert (=> b!4531580 d!1399070))

(declare-fun b_lambda!156745 () Bool)

(assert (= b_lambda!156741 (or b!4531316 b_lambda!156745)))

(declare-fun bs!867981 () Bool)

(declare-fun d!1399072 () Bool)

(assert (= bs!867981 (and d!1399072 b!4531316)))

(assert (=> bs!867981 (= (dynLambda!21193 lambda!174447 (tuple2!51155 key!3287 (_2!28871 (get!16640 lt!1706732)))) (= (hash!2869 hashF!1107 (_1!28871 (tuple2!51155 key!3287 (_2!28871 (get!16640 lt!1706732))))) (_1!28872 (h!56572 (toList!4368 lm!1477)))))))

(declare-fun m!5290283 () Bool)

(assert (=> bs!867981 m!5290283))

(assert (=> d!1399028 d!1399072))

(declare-fun b_lambda!156747 () Bool)

(assert (= b_lambda!156739 (or b!4531316 b_lambda!156747)))

(declare-fun bs!867982 () Bool)

(declare-fun d!1399074 () Bool)

(assert (= bs!867982 (and d!1399074 b!4531316)))

(assert (=> bs!867982 (= (dynLambda!21191 lambda!174446 (h!56572 (toList!4368 lm!1477))) (allKeysSameHash!1034 (_2!28872 (h!56572 (toList!4368 lm!1477))) (_1!28872 (h!56572 (toList!4368 lm!1477))) hashF!1107))))

(declare-fun m!5290285 () Bool)

(assert (=> bs!867982 m!5290285))

(assert (=> d!1399026 d!1399074))

(declare-fun b_lambda!156749 () Bool)

(assert (= b_lambda!156737 (or start!449344 b_lambda!156749)))

(declare-fun bs!867983 () Bool)

(declare-fun d!1399076 () Bool)

(assert (= bs!867983 (and d!1399076 start!449344)))

(assert (=> bs!867983 (= (dynLambda!21191 lambda!174445 (h!56572 (toList!4368 lm!1477))) (noDuplicateKeys!1180 (_2!28872 (h!56572 (toList!4368 lm!1477)))))))

(declare-fun m!5290287 () Bool)

(assert (=> bs!867983 m!5290287))

(assert (=> d!1399022 d!1399076))

(declare-fun b_lambda!156751 () Bool)

(assert (= b_lambda!156723 (or start!449344 b_lambda!156751)))

(declare-fun bs!867984 () Bool)

(declare-fun d!1399078 () Bool)

(assert (= bs!867984 (and d!1399078 start!449344)))

(assert (=> bs!867984 (= (dynLambda!21191 lambda!174445 lt!1706717) (noDuplicateKeys!1180 (_2!28872 lt!1706717)))))

(declare-fun m!5290289 () Bool)

(assert (=> bs!867984 m!5290289))

(assert (=> d!1398996 d!1399078))

(declare-fun b_lambda!156753 () Bool)

(assert (= b_lambda!156707 (or start!449344 b_lambda!156753)))

(assert (=> b!4531331 d!1399076))

(check-sat (not b!4531717) (not d!1399044) (not b_lambda!156753) (not b!4531636) (not b!4531729) (not d!1398928) (not b!4531382) (not b!4531764) (not bs!867984) (not b!4531369) (not b!4531694) (not d!1399054) (not bm!315897) (not d!1399036) (not b!4531747) (not b!4531581) (not b_lambda!156745) (not b!4531695) (not d!1398848) (not d!1399052) (not b_lambda!156743) (not bm!315899) (not b!4531713) (not b!4531584) (not b_lambda!156749) (not b!4531589) (not b!4531541) (not d!1398854) (not d!1399046) (not b!4531718) (not b!4531741) (not b!4531388) (not b!4531650) (not bm!315875) (not d!1399016) (not d!1398968) (not b!4531663) (not b!4531745) (not d!1398842) (not bm!315901) tp_is_empty!27999 (not b!4531399) (not b!4531400) (not b!4531746) (not b!4531332) (not d!1399004) (not d!1398822) (not b!4531367) (not bm!315911) (not b!4531544) (not bs!867983) (not d!1398996) (not b!4531587) (not b!4531542) (not b!4531386) (not b!4531731) (not bm!315876) (not bm!315909) (not b!4531543) (not d!1399024) (not b!4531633) (not b!4531387) (not d!1399062) (not d!1398936) (not d!1399040) (not d!1398966) (not b!4531740) (not b!4531638) (not d!1398846) (not bm!315902) (not b!4531380) (not d!1398988) (not b!4531370) (not d!1398992) (not b!4531721) (not d!1398942) (not d!1399058) (not b!4531693) (not b!4531727) (not b!4531586) (not d!1399042) (not d!1398914) (not b!4531556) (not b_lambda!156747) (not bs!867982) (not d!1398838) (not d!1398852) (not b!4531648) (not b!4531719) (not b!4531742) (not d!1399022) (not d!1398976) (not b!4531588) (not d!1398932) (not b!4531730) (not b!4531733) (not d!1398912) (not b!4531735) (not bm!315903) (not b!4531689) (not d!1399026) tp_is_empty!27997 (not bs!867980) (not b!4531691) (not b!4531635) (not b!4531725) (not b!4531749) (not d!1399060) (not d!1399032) (not d!1398844) (not b!4531737) (not d!1399048) (not bm!315912) (not b!4531371) (not d!1398916) (not b!4531570) (not b!4531724) (not b!4531732) (not b!4531390) (not b!4531626) (not d!1399066) (not b!4531366) (not bs!867981) (not b!4531392) (not d!1399064) (not bm!315898) (not d!1398824) (not d!1399038) (not b!4531391) (not b!4531670) (not d!1399068) (not b!4531566) (not b!4531748) (not b!4531759) (not b!4531736) (not b!4531567) (not d!1399028) (not b!4531365) (not d!1398990) (not b!4531696) (not b!4531579) (not b!4531739) (not bm!315910) (not b!4531751) (not b!4531716) (not b!4531571) (not d!1399050) (not d!1399056) (not d!1398840) (not b!4531363) (not b!4531744) (not d!1398978) (not d!1399034) (not d!1398970) (not b!4531384) (not b_lambda!156751))
(check-sat)
