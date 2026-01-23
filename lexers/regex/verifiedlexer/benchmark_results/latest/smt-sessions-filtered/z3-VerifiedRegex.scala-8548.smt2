; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!450812 () Bool)

(assert start!450812)

(declare-fun bs!878579 () Bool)

(declare-fun b!4540945 () Bool)

(assert (= bs!878579 (and b!4540945 start!450812)))

(declare-fun lambda!176300 () Int)

(declare-fun lambda!176299 () Int)

(assert (=> bs!878579 (not (= lambda!176300 lambda!176299))))

(assert (=> b!4540945 true))

(assert (=> b!4540945 true))

(assert (=> b!4540945 true))

(declare-fun b!4540943 () Bool)

(declare-fun e!2829733 () Bool)

(declare-fun e!2829716 () Bool)

(assert (=> b!4540943 (= e!2829733 e!2829716)))

(declare-fun res!1892553 () Bool)

(assert (=> b!4540943 (=> res!1892553 e!2829716)))

(declare-datatypes ((K!12145 0))(
  ( (K!12146 (val!17987 Int)) )
))
(declare-datatypes ((V!12391 0))(
  ( (V!12392 (val!17988 Int)) )
))
(declare-datatypes ((tuple2!51242 0))(
  ( (tuple2!51243 (_1!28915 K!12145) (_2!28915 V!12391)) )
))
(declare-datatypes ((List!50884 0))(
  ( (Nil!50760) (Cons!50760 (h!56643 tuple2!51242) (t!357846 List!50884)) )
))
(declare-datatypes ((ListMap!3673 0))(
  ( (ListMap!3674 (toList!4411 List!50884)) )
))
(declare-fun lt!1715602 () ListMap!3673)

(declare-fun lt!1715573 () ListMap!3673)

(declare-fun eq!659 (ListMap!3673 ListMap!3673) Bool)

(assert (=> b!4540943 (= res!1892553 (not (eq!659 lt!1715602 lt!1715573)))))

(declare-datatypes ((tuple2!51244 0))(
  ( (tuple2!51245 (_1!28916 (_ BitVec 64)) (_2!28916 List!50884)) )
))
(declare-fun lt!1715595 () tuple2!51244)

(declare-fun lt!1715591 () ListMap!3673)

(declare-fun addToMapMapFromBucket!729 (List!50884 ListMap!3673) ListMap!3673)

(assert (=> b!4540943 (= lt!1715573 (addToMapMapFromBucket!729 (_2!28916 lt!1715595) lt!1715591))))

(declare-datatypes ((List!50885 0))(
  ( (Nil!50761) (Cons!50761 (h!56644 tuple2!51244) (t!357847 List!50885)) )
))
(declare-datatypes ((ListLongMap!3043 0))(
  ( (ListLongMap!3044 (toList!4412 List!50885)) )
))
(declare-fun lt!1715597 () ListLongMap!3043)

(declare-fun extractMap!1258 (List!50885) ListMap!3673)

(assert (=> b!4540943 (= lt!1715602 (extractMap!1258 (toList!4412 lt!1715597)))))

(declare-fun b!4540944 () Bool)

(declare-fun e!2829728 () Bool)

(declare-fun e!2829717 () Bool)

(assert (=> b!4540944 (= e!2829728 e!2829717)))

(declare-fun res!1892550 () Bool)

(assert (=> b!4540944 (=> res!1892550 e!2829717)))

(declare-fun lt!1715585 () ListLongMap!3043)

(declare-fun hash!344 () (_ BitVec 64))

(declare-fun contains!13557 (ListLongMap!3043 (_ BitVec 64)) Bool)

(assert (=> b!4540944 (= res!1892550 (not (contains!13557 lt!1715585 hash!344)))))

(declare-fun lm!1477 () ListLongMap!3043)

(declare-fun tail!7806 (ListLongMap!3043) ListLongMap!3043)

(assert (=> b!4540944 (= lt!1715585 (tail!7806 lm!1477))))

(declare-datatypes ((Unit!98710 0))(
  ( (Unit!98711) )
))
(declare-fun e!2829729 () Unit!98710)

(declare-fun Unit!98712 () Unit!98710)

(assert (=> b!4540945 (= e!2829729 Unit!98712)))

(assert (=> b!4540945 (not (= hash!344 (_1!28916 lt!1715595)))))

(declare-datatypes ((Option!11209 0))(
  ( (None!11208) (Some!11208 (v!44910 tuple2!51242)) )
))
(declare-fun lt!1715587 () Option!11209)

(declare-fun key!3287 () K!12145)

(declare-fun getPair!218 (List!50884 K!12145) Option!11209)

(assert (=> b!4540945 (= lt!1715587 (getPair!218 (_2!28916 lt!1715595) key!3287))))

(declare-fun lt!1715596 () Unit!98710)

(declare-fun forallContained!2614 (List!50885 Int tuple2!51244) Unit!98710)

(assert (=> b!4540945 (= lt!1715596 (forallContained!2614 (toList!4412 lm!1477) lambda!176300 (h!56644 (toList!4412 lm!1477))))))

(declare-fun lt!1715575 () Unit!98710)

(declare-fun lambda!176301 () Int)

(declare-fun forallContained!2615 (List!50884 Int tuple2!51242) Unit!98710)

(declare-fun get!16693 (Option!11209) tuple2!51242)

(assert (=> b!4540945 (= lt!1715575 (forallContained!2615 (_2!28916 (h!56644 (toList!4412 lm!1477))) lambda!176301 (tuple2!51243 key!3287 (_2!28915 (get!16693 lt!1715587)))))))

(assert (=> b!4540945 false))

(declare-fun b!4540946 () Bool)

(declare-fun e!2829725 () Bool)

(declare-fun e!2829715 () Bool)

(assert (=> b!4540946 (= e!2829725 e!2829715)))

(declare-fun res!1892546 () Bool)

(assert (=> b!4540946 (=> res!1892546 e!2829715)))

(declare-fun contains!13558 (ListMap!3673 K!12145) Bool)

(assert (=> b!4540946 (= res!1892546 (not (contains!13558 (extractMap!1258 (t!357847 (toList!4412 lm!1477))) key!3287)))))

(declare-fun lt!1715578 () ListMap!3673)

(assert (=> b!4540946 (contains!13558 lt!1715578 key!3287)))

(assert (=> b!4540946 (= lt!1715578 (extractMap!1258 (toList!4412 lt!1715585)))))

(declare-datatypes ((Hashable!5597 0))(
  ( (HashableExt!5596 (__x!31300 Int)) )
))
(declare-fun hashF!1107 () Hashable!5597)

(declare-fun lt!1715601 () Unit!98710)

(declare-fun lemmaListContainsThenExtractedMapContains!172 (ListLongMap!3043 K!12145 Hashable!5597) Unit!98710)

(assert (=> b!4540946 (= lt!1715601 (lemmaListContainsThenExtractedMapContains!172 lt!1715585 key!3287 hashF!1107))))

(declare-fun b!4540947 () Bool)

(declare-fun e!2829720 () Bool)

(declare-fun e!2829730 () Bool)

(assert (=> b!4540947 (= e!2829720 e!2829730)))

(declare-fun res!1892552 () Bool)

(assert (=> b!4540947 (=> res!1892552 e!2829730)))

(declare-fun lt!1715603 () ListMap!3673)

(declare-fun lt!1715583 () ListMap!3673)

(assert (=> b!4540947 (= res!1892552 (not (eq!659 lt!1715603 lt!1715583)))))

(declare-fun lt!1715594 () ListMap!3673)

(declare-fun -!428 (ListMap!3673 K!12145) ListMap!3673)

(assert (=> b!4540947 (= lt!1715583 (-!428 lt!1715594 key!3287))))

(declare-fun tp!1338667 () Bool)

(declare-fun tp_is_empty!28085 () Bool)

(declare-fun b!4540948 () Bool)

(declare-fun tp_is_empty!28087 () Bool)

(declare-fun e!2829732 () Bool)

(assert (=> b!4540948 (= e!2829732 (and tp_is_empty!28085 tp_is_empty!28087 tp!1338667))))

(declare-fun b!4540949 () Bool)

(declare-fun res!1892555 () Bool)

(declare-fun e!2829724 () Bool)

(assert (=> b!4540949 (=> res!1892555 e!2829724)))

(assert (=> b!4540949 (= res!1892555 (bvsge (_1!28916 lt!1715595) hash!344))))

(declare-fun b!4540950 () Bool)

(declare-fun e!2829719 () Bool)

(assert (=> b!4540950 (= e!2829716 e!2829719)))

(declare-fun res!1892548 () Bool)

(assert (=> b!4540950 (=> res!1892548 e!2829719)))

(assert (=> b!4540950 (= res!1892548 (not (eq!659 lt!1715602 lt!1715603)))))

(assert (=> b!4540950 (eq!659 lt!1715573 lt!1715603)))

(declare-fun lt!1715588 () ListMap!3673)

(assert (=> b!4540950 (= lt!1715603 (addToMapMapFromBucket!729 (_2!28916 lt!1715595) lt!1715588))))

(declare-fun lt!1715580 () Unit!98710)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!78 (ListMap!3673 ListMap!3673 List!50884) Unit!98710)

(assert (=> b!4540950 (= lt!1715580 (lemmaAddToMapFromBucketPreservesEquivalence!78 lt!1715591 lt!1715588 (_2!28916 lt!1715595)))))

(declare-fun b!4540951 () Bool)

(declare-fun e!2829714 () Bool)

(declare-fun tp!1338666 () Bool)

(assert (=> b!4540951 (= e!2829714 tp!1338666)))

(declare-fun b!4540952 () Bool)

(declare-fun e!2829721 () Unit!98710)

(declare-fun Unit!98713 () Unit!98710)

(assert (=> b!4540952 (= e!2829721 Unit!98713)))

(declare-fun lt!1715590 () Unit!98710)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!190 (ListLongMap!3043 K!12145 Hashable!5597) Unit!98710)

(assert (=> b!4540952 (= lt!1715590 (lemmaNotInItsHashBucketThenNotInMap!190 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4540952 false))

(declare-fun b!4540953 () Bool)

(declare-fun res!1892547 () Bool)

(assert (=> b!4540953 (=> res!1892547 e!2829717)))

(declare-fun lt!1715571 () List!50884)

(declare-fun apply!11939 (ListLongMap!3043 (_ BitVec 64)) List!50884)

(assert (=> b!4540953 (= res!1892547 (not (= (apply!11939 lt!1715585 hash!344) lt!1715571)))))

(declare-fun b!4540954 () Bool)

(declare-fun res!1892551 () Bool)

(assert (=> b!4540954 (=> res!1892551 e!2829733)))

(declare-fun head!9484 (ListLongMap!3043) tuple2!51244)

(assert (=> b!4540954 (= res!1892551 (not (= (head!9484 lt!1715597) lt!1715595)))))

(declare-fun b!4540955 () Bool)

(declare-fun Unit!98714 () Unit!98710)

(assert (=> b!4540955 (= e!2829721 Unit!98714)))

(declare-fun b!4540956 () Bool)

(declare-fun Unit!98715 () Unit!98710)

(assert (=> b!4540956 (= e!2829729 Unit!98715)))

(declare-fun b!4540957 () Bool)

(declare-fun e!2829727 () Bool)

(assert (=> b!4540957 (= e!2829727 e!2829725)))

(declare-fun res!1892537 () Bool)

(assert (=> b!4540957 (=> res!1892537 e!2829725)))

(declare-fun containsKeyBiggerList!182 (List!50885 K!12145) Bool)

(assert (=> b!4540957 (= res!1892537 (not (containsKeyBiggerList!182 (t!357847 (toList!4412 lm!1477)) key!3287)))))

(assert (=> b!4540957 (containsKeyBiggerList!182 (toList!4412 lt!1715585) key!3287)))

(declare-fun lt!1715586 () Unit!98710)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!118 (ListLongMap!3043 K!12145 Hashable!5597) Unit!98710)

(assert (=> b!4540957 (= lt!1715586 (lemmaInLongMapThenContainsKeyBiggerList!118 lt!1715585 key!3287 hashF!1107))))

(declare-fun b!4540958 () Bool)

(assert (=> b!4540958 (= e!2829724 e!2829733)))

(declare-fun res!1892545 () Bool)

(assert (=> b!4540958 (=> res!1892545 e!2829733)))

(declare-fun lt!1715576 () tuple2!51244)

(declare-fun +!1610 (ListLongMap!3043 tuple2!51244) ListLongMap!3043)

(assert (=> b!4540958 (= res!1892545 (not (= lt!1715597 (+!1610 lm!1477 lt!1715576))))))

(declare-fun lt!1715579 () ListLongMap!3043)

(assert (=> b!4540958 (= lt!1715597 (+!1610 lt!1715579 lt!1715595))))

(declare-fun b!4540959 () Bool)

(declare-fun res!1892543 () Bool)

(declare-fun e!2829722 () Bool)

(assert (=> b!4540959 (=> (not res!1892543) (not e!2829722))))

(declare-fun allKeysSameHashInMap!1309 (ListLongMap!3043 Hashable!5597) Bool)

(assert (=> b!4540959 (= res!1892543 (allKeysSameHashInMap!1309 lm!1477 hashF!1107))))

(declare-fun b!4540960 () Bool)

(declare-fun res!1892557 () Bool)

(assert (=> b!4540960 (=> res!1892557 e!2829730)))

(assert (=> b!4540960 (= res!1892557 (not (eq!659 lt!1715602 lt!1715583)))))

(declare-fun b!4540961 () Bool)

(declare-fun e!2829731 () Bool)

(assert (=> b!4540961 (= e!2829719 e!2829731)))

(declare-fun res!1892561 () Bool)

(assert (=> b!4540961 (=> res!1892561 e!2829731)))

(declare-fun noDuplicateKeys!1202 (List!50884) Bool)

(assert (=> b!4540961 (= res!1892561 (not (noDuplicateKeys!1202 (_2!28916 lt!1715595))))))

(declare-fun lt!1715604 () Unit!98710)

(assert (=> b!4540961 (= lt!1715604 (forallContained!2614 (toList!4412 lm!1477) lambda!176299 (h!56644 (toList!4412 lm!1477))))))

(declare-fun b!4540962 () Bool)

(declare-fun res!1892542 () Bool)

(assert (=> b!4540962 (=> res!1892542 e!2829724)))

(declare-fun lt!1715592 () ListMap!3673)

(assert (=> b!4540962 (= res!1892542 (not (eq!659 lt!1715594 lt!1715592)))))

(declare-fun res!1892562 () Bool)

(assert (=> start!450812 (=> (not res!1892562) (not e!2829722))))

(declare-fun forall!10351 (List!50885 Int) Bool)

(assert (=> start!450812 (= res!1892562 (forall!10351 (toList!4412 lm!1477) lambda!176299))))

(assert (=> start!450812 e!2829722))

(assert (=> start!450812 true))

(declare-fun inv!66329 (ListLongMap!3043) Bool)

(assert (=> start!450812 (and (inv!66329 lm!1477) e!2829714)))

(assert (=> start!450812 tp_is_empty!28085))

(assert (=> start!450812 e!2829732))

(declare-fun b!4540963 () Bool)

(declare-fun e!2829718 () Bool)

(assert (=> b!4540963 (= e!2829718 e!2829720)))

(declare-fun res!1892558 () Bool)

(assert (=> b!4540963 (=> res!1892558 e!2829720)))

(declare-fun lt!1715570 () ListMap!3673)

(assert (=> b!4540963 (= res!1892558 (not (eq!659 lt!1715603 lt!1715570)))))

(assert (=> b!4540963 (= lt!1715603 lt!1715570)))

(assert (=> b!4540963 (= lt!1715570 (-!428 (addToMapMapFromBucket!729 (_2!28916 lt!1715595) lt!1715578) key!3287))))

(declare-fun lt!1715584 () Unit!98710)

(declare-fun lemmaAddToMapFromBucketMinusKeyIsCommutative!26 (ListMap!3673 K!12145 List!50884) Unit!98710)

(assert (=> b!4540963 (= lt!1715584 (lemmaAddToMapFromBucketMinusKeyIsCommutative!26 lt!1715578 key!3287 (_2!28916 lt!1715595)))))

(declare-fun b!4540964 () Bool)

(assert (=> b!4540964 (= e!2829715 e!2829724)))

(declare-fun res!1892541 () Bool)

(assert (=> b!4540964 (=> res!1892541 e!2829724)))

(assert (=> b!4540964 (= res!1892541 (not (eq!659 lt!1715592 lt!1715594)))))

(declare-fun lt!1715600 () ListLongMap!3043)

(assert (=> b!4540964 (= lt!1715592 (extractMap!1258 (toList!4412 lt!1715600)))))

(assert (=> b!4540964 (= lt!1715600 (+!1610 lt!1715585 lt!1715595))))

(assert (=> b!4540964 (= lt!1715595 (head!9484 lm!1477))))

(assert (=> b!4540964 (eq!659 lt!1715591 lt!1715588)))

(assert (=> b!4540964 (= lt!1715588 (-!428 lt!1715578 key!3287))))

(assert (=> b!4540964 (= lt!1715591 (extractMap!1258 (toList!4412 lt!1715579)))))

(assert (=> b!4540964 (= lt!1715579 (+!1610 lt!1715585 lt!1715576))))

(declare-fun newBucket!178 () List!50884)

(assert (=> b!4540964 (= lt!1715576 (tuple2!51245 hash!344 newBucket!178))))

(declare-fun lt!1715589 () Unit!98710)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!187 (ListLongMap!3043 (_ BitVec 64) List!50884 K!12145 Hashable!5597) Unit!98710)

(assert (=> b!4540964 (= lt!1715589 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!187 lt!1715585 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4540965 () Bool)

(declare-fun res!1892540 () Bool)

(assert (=> b!4540965 (=> res!1892540 e!2829728)))

(get-info :version)

(assert (=> b!4540965 (= res!1892540 (or ((_ is Nil!50761) (toList!4412 lm!1477)) (= (_1!28916 (h!56644 (toList!4412 lm!1477))) hash!344)))))

(declare-fun b!4540966 () Bool)

(declare-fun res!1892554 () Bool)

(assert (=> b!4540966 (=> res!1892554 e!2829717)))

(declare-fun lt!1715577 () tuple2!51244)

(declare-fun contains!13559 (List!50885 tuple2!51244) Bool)

(assert (=> b!4540966 (= res!1892554 (not (contains!13559 (t!357847 (toList!4412 lm!1477)) lt!1715577)))))

(declare-fun b!4540967 () Bool)

(declare-fun e!2829726 () Bool)

(assert (=> b!4540967 (= e!2829722 e!2829726)))

(declare-fun res!1892539 () Bool)

(assert (=> b!4540967 (=> (not res!1892539) (not e!2829726))))

(assert (=> b!4540967 (= res!1892539 (contains!13558 lt!1715594 key!3287))))

(assert (=> b!4540967 (= lt!1715594 (extractMap!1258 (toList!4412 lm!1477)))))

(declare-fun b!4540968 () Bool)

(declare-fun res!1892549 () Bool)

(declare-fun e!2829723 () Bool)

(assert (=> b!4540968 (=> (not res!1892549) (not e!2829723))))

(declare-fun allKeysSameHash!1056 (List!50884 (_ BitVec 64) Hashable!5597) Bool)

(assert (=> b!4540968 (= res!1892549 (allKeysSameHash!1056 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4540969 () Bool)

(assert (=> b!4540969 (= e!2829730 (forall!10351 (toList!4412 lt!1715600) lambda!176299))))

(declare-fun b!4540970 () Bool)

(assert (=> b!4540970 (= e!2829723 (not e!2829728))))

(declare-fun res!1892544 () Bool)

(assert (=> b!4540970 (=> res!1892544 e!2829728)))

(declare-fun removePairForKey!829 (List!50884 K!12145) List!50884)

(assert (=> b!4540970 (= res!1892544 (not (= newBucket!178 (removePairForKey!829 lt!1715571 key!3287))))))

(declare-fun lt!1715593 () Unit!98710)

(assert (=> b!4540970 (= lt!1715593 (forallContained!2614 (toList!4412 lm!1477) lambda!176299 lt!1715577))))

(assert (=> b!4540970 (contains!13559 (toList!4412 lm!1477) lt!1715577)))

(assert (=> b!4540970 (= lt!1715577 (tuple2!51245 hash!344 lt!1715571))))

(declare-fun lt!1715572 () Unit!98710)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!714 (List!50885 (_ BitVec 64) List!50884) Unit!98710)

(assert (=> b!4540970 (= lt!1715572 (lemmaGetValueByKeyImpliesContainsTuple!714 (toList!4412 lm!1477) hash!344 lt!1715571))))

(assert (=> b!4540970 (= lt!1715571 (apply!11939 lm!1477 hash!344))))

(declare-fun lt!1715582 () (_ BitVec 64))

(assert (=> b!4540970 (contains!13557 lm!1477 lt!1715582)))

(declare-fun lt!1715598 () Unit!98710)

(declare-fun lemmaInGenMapThenLongMapContainsHash!276 (ListLongMap!3043 K!12145 Hashable!5597) Unit!98710)

(assert (=> b!4540970 (= lt!1715598 (lemmaInGenMapThenLongMapContainsHash!276 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4540971 () Bool)

(declare-fun res!1892560 () Bool)

(assert (=> b!4540971 (=> res!1892560 e!2829728)))

(assert (=> b!4540971 (= res!1892560 (not (noDuplicateKeys!1202 newBucket!178)))))

(declare-fun b!4540972 () Bool)

(assert (=> b!4540972 (= e!2829717 e!2829727)))

(declare-fun res!1892556 () Bool)

(assert (=> b!4540972 (=> res!1892556 e!2829727)))

(declare-fun lt!1715581 () Bool)

(assert (=> b!4540972 (= res!1892556 lt!1715581)))

(declare-fun lt!1715569 () Unit!98710)

(assert (=> b!4540972 (= lt!1715569 e!2829721)))

(declare-fun c!775633 () Bool)

(assert (=> b!4540972 (= c!775633 lt!1715581)))

(declare-fun containsKey!1882 (List!50884 K!12145) Bool)

(assert (=> b!4540972 (= lt!1715581 (not (containsKey!1882 lt!1715571 key!3287)))))

(declare-fun b!4540973 () Bool)

(assert (=> b!4540973 (= e!2829731 e!2829718)))

(declare-fun res!1892538 () Bool)

(assert (=> b!4540973 (=> res!1892538 e!2829718)))

(declare-fun lt!1715574 () Bool)

(assert (=> b!4540973 (= res!1892538 lt!1715574)))

(declare-fun lt!1715599 () Unit!98710)

(assert (=> b!4540973 (= lt!1715599 e!2829729)))

(declare-fun c!775632 () Bool)

(assert (=> b!4540973 (= c!775632 lt!1715574)))

(assert (=> b!4540973 (= lt!1715574 (containsKey!1882 (_2!28916 lt!1715595) key!3287))))

(declare-fun b!4540974 () Bool)

(assert (=> b!4540974 (= e!2829726 e!2829723)))

(declare-fun res!1892559 () Bool)

(assert (=> b!4540974 (=> (not res!1892559) (not e!2829723))))

(assert (=> b!4540974 (= res!1892559 (= lt!1715582 hash!344))))

(declare-fun hash!2925 (Hashable!5597 K!12145) (_ BitVec 64))

(assert (=> b!4540974 (= lt!1715582 (hash!2925 hashF!1107 key!3287))))

(assert (= (and start!450812 res!1892562) b!4540959))

(assert (= (and b!4540959 res!1892543) b!4540967))

(assert (= (and b!4540967 res!1892539) b!4540974))

(assert (= (and b!4540974 res!1892559) b!4540968))

(assert (= (and b!4540968 res!1892549) b!4540970))

(assert (= (and b!4540970 (not res!1892544)) b!4540971))

(assert (= (and b!4540971 (not res!1892560)) b!4540965))

(assert (= (and b!4540965 (not res!1892540)) b!4540944))

(assert (= (and b!4540944 (not res!1892550)) b!4540953))

(assert (= (and b!4540953 (not res!1892547)) b!4540966))

(assert (= (and b!4540966 (not res!1892554)) b!4540972))

(assert (= (and b!4540972 c!775633) b!4540952))

(assert (= (and b!4540972 (not c!775633)) b!4540955))

(assert (= (and b!4540972 (not res!1892556)) b!4540957))

(assert (= (and b!4540957 (not res!1892537)) b!4540946))

(assert (= (and b!4540946 (not res!1892546)) b!4540964))

(assert (= (and b!4540964 (not res!1892541)) b!4540962))

(assert (= (and b!4540962 (not res!1892542)) b!4540949))

(assert (= (and b!4540949 (not res!1892555)) b!4540958))

(assert (= (and b!4540958 (not res!1892545)) b!4540954))

(assert (= (and b!4540954 (not res!1892551)) b!4540943))

(assert (= (and b!4540943 (not res!1892553)) b!4540950))

(assert (= (and b!4540950 (not res!1892548)) b!4540961))

(assert (= (and b!4540961 (not res!1892561)) b!4540973))

(assert (= (and b!4540973 c!775632) b!4540945))

(assert (= (and b!4540973 (not c!775632)) b!4540956))

(assert (= (and b!4540973 (not res!1892538)) b!4540963))

(assert (= (and b!4540963 (not res!1892558)) b!4540947))

(assert (= (and b!4540947 (not res!1892552)) b!4540960))

(assert (= (and b!4540960 (not res!1892557)) b!4540969))

(assert (= start!450812 b!4540951))

(assert (= (and start!450812 ((_ is Cons!50760) newBucket!178)) b!4540948))

(declare-fun m!5308131 () Bool)

(assert (=> b!4540966 m!5308131))

(declare-fun m!5308133 () Bool)

(assert (=> b!4540972 m!5308133))

(declare-fun m!5308135 () Bool)

(assert (=> b!4540945 m!5308135))

(declare-fun m!5308137 () Bool)

(assert (=> b!4540945 m!5308137))

(declare-fun m!5308139 () Bool)

(assert (=> b!4540945 m!5308139))

(declare-fun m!5308141 () Bool)

(assert (=> b!4540945 m!5308141))

(declare-fun m!5308143 () Bool)

(assert (=> b!4540967 m!5308143))

(declare-fun m!5308145 () Bool)

(assert (=> b!4540967 m!5308145))

(declare-fun m!5308147 () Bool)

(assert (=> b!4540973 m!5308147))

(declare-fun m!5308149 () Bool)

(assert (=> b!4540957 m!5308149))

(declare-fun m!5308151 () Bool)

(assert (=> b!4540957 m!5308151))

(declare-fun m!5308153 () Bool)

(assert (=> b!4540957 m!5308153))

(declare-fun m!5308155 () Bool)

(assert (=> b!4540954 m!5308155))

(declare-fun m!5308157 () Bool)

(assert (=> b!4540947 m!5308157))

(declare-fun m!5308159 () Bool)

(assert (=> b!4540947 m!5308159))

(declare-fun m!5308161 () Bool)

(assert (=> b!4540946 m!5308161))

(declare-fun m!5308163 () Bool)

(assert (=> b!4540946 m!5308163))

(declare-fun m!5308165 () Bool)

(assert (=> b!4540946 m!5308165))

(assert (=> b!4540946 m!5308163))

(declare-fun m!5308167 () Bool)

(assert (=> b!4540946 m!5308167))

(declare-fun m!5308169 () Bool)

(assert (=> b!4540946 m!5308169))

(declare-fun m!5308171 () Bool)

(assert (=> b!4540969 m!5308171))

(declare-fun m!5308173 () Bool)

(assert (=> b!4540963 m!5308173))

(declare-fun m!5308175 () Bool)

(assert (=> b!4540963 m!5308175))

(assert (=> b!4540963 m!5308175))

(declare-fun m!5308177 () Bool)

(assert (=> b!4540963 m!5308177))

(declare-fun m!5308179 () Bool)

(assert (=> b!4540963 m!5308179))

(declare-fun m!5308181 () Bool)

(assert (=> b!4540950 m!5308181))

(declare-fun m!5308183 () Bool)

(assert (=> b!4540950 m!5308183))

(declare-fun m!5308185 () Bool)

(assert (=> b!4540950 m!5308185))

(declare-fun m!5308187 () Bool)

(assert (=> b!4540950 m!5308187))

(declare-fun m!5308189 () Bool)

(assert (=> start!450812 m!5308189))

(declare-fun m!5308191 () Bool)

(assert (=> start!450812 m!5308191))

(declare-fun m!5308193 () Bool)

(assert (=> b!4540959 m!5308193))

(declare-fun m!5308195 () Bool)

(assert (=> b!4540960 m!5308195))

(declare-fun m!5308197 () Bool)

(assert (=> b!4540943 m!5308197))

(declare-fun m!5308199 () Bool)

(assert (=> b!4540943 m!5308199))

(declare-fun m!5308201 () Bool)

(assert (=> b!4540943 m!5308201))

(declare-fun m!5308203 () Bool)

(assert (=> b!4540962 m!5308203))

(declare-fun m!5308205 () Bool)

(assert (=> b!4540974 m!5308205))

(declare-fun m!5308207 () Bool)

(assert (=> b!4540971 m!5308207))

(declare-fun m!5308209 () Bool)

(assert (=> b!4540964 m!5308209))

(declare-fun m!5308211 () Bool)

(assert (=> b!4540964 m!5308211))

(declare-fun m!5308213 () Bool)

(assert (=> b!4540964 m!5308213))

(declare-fun m!5308215 () Bool)

(assert (=> b!4540964 m!5308215))

(declare-fun m!5308217 () Bool)

(assert (=> b!4540964 m!5308217))

(declare-fun m!5308219 () Bool)

(assert (=> b!4540964 m!5308219))

(declare-fun m!5308221 () Bool)

(assert (=> b!4540964 m!5308221))

(declare-fun m!5308223 () Bool)

(assert (=> b!4540964 m!5308223))

(declare-fun m!5308225 () Bool)

(assert (=> b!4540964 m!5308225))

(declare-fun m!5308227 () Bool)

(assert (=> b!4540944 m!5308227))

(declare-fun m!5308229 () Bool)

(assert (=> b!4540944 m!5308229))

(declare-fun m!5308231 () Bool)

(assert (=> b!4540958 m!5308231))

(declare-fun m!5308233 () Bool)

(assert (=> b!4540958 m!5308233))

(declare-fun m!5308235 () Bool)

(assert (=> b!4540953 m!5308235))

(declare-fun m!5308237 () Bool)

(assert (=> b!4540968 m!5308237))

(declare-fun m!5308239 () Bool)

(assert (=> b!4540970 m!5308239))

(declare-fun m!5308241 () Bool)

(assert (=> b!4540970 m!5308241))

(declare-fun m!5308243 () Bool)

(assert (=> b!4540970 m!5308243))

(declare-fun m!5308245 () Bool)

(assert (=> b!4540970 m!5308245))

(declare-fun m!5308247 () Bool)

(assert (=> b!4540970 m!5308247))

(declare-fun m!5308249 () Bool)

(assert (=> b!4540970 m!5308249))

(declare-fun m!5308251 () Bool)

(assert (=> b!4540970 m!5308251))

(declare-fun m!5308253 () Bool)

(assert (=> b!4540961 m!5308253))

(declare-fun m!5308255 () Bool)

(assert (=> b!4540961 m!5308255))

(declare-fun m!5308257 () Bool)

(assert (=> b!4540952 m!5308257))

(check-sat (not b!4540954) (not b!4540964) (not b!4540958) (not b!4540968) (not b!4540972) tp_is_empty!28085 (not b!4540946) (not start!450812) (not b!4540974) (not b!4540957) (not b!4540960) (not b!4540944) (not b!4540959) (not b!4540962) (not b!4540963) (not b!4540969) (not b!4540947) tp_is_empty!28087 (not b!4540967) (not b!4540948) (not b!4540951) (not b!4540971) (not b!4540966) (not b!4540970) (not b!4540973) (not b!4540961) (not b!4540950) (not b!4540952) (not b!4540953) (not b!4540943) (not b!4540945))
(check-sat)
(get-model)

(declare-fun d!1403831 () Bool)

(declare-fun res!1892573 () Bool)

(declare-fun e!2829745 () Bool)

(assert (=> d!1403831 (=> res!1892573 e!2829745)))

(assert (=> d!1403831 (= res!1892573 (and ((_ is Cons!50760) (_2!28916 lt!1715595)) (= (_1!28915 (h!56643 (_2!28916 lt!1715595))) key!3287)))))

(assert (=> d!1403831 (= (containsKey!1882 (_2!28916 lt!1715595) key!3287) e!2829745)))

(declare-fun b!4540999 () Bool)

(declare-fun e!2829746 () Bool)

(assert (=> b!4540999 (= e!2829745 e!2829746)))

(declare-fun res!1892574 () Bool)

(assert (=> b!4540999 (=> (not res!1892574) (not e!2829746))))

(assert (=> b!4540999 (= res!1892574 ((_ is Cons!50760) (_2!28916 lt!1715595)))))

(declare-fun b!4541000 () Bool)

(assert (=> b!4541000 (= e!2829746 (containsKey!1882 (t!357846 (_2!28916 lt!1715595)) key!3287))))

(assert (= (and d!1403831 (not res!1892573)) b!4540999))

(assert (= (and b!4540999 res!1892574) b!4541000))

(declare-fun m!5308303 () Bool)

(assert (=> b!4541000 m!5308303))

(assert (=> b!4540973 d!1403831))

(declare-fun bs!878602 () Bool)

(declare-fun d!1403839 () Bool)

(assert (= bs!878602 (and d!1403839 start!450812)))

(declare-fun lambda!176314 () Int)

(assert (=> bs!878602 (= lambda!176314 lambda!176299)))

(declare-fun bs!878603 () Bool)

(assert (= bs!878603 (and d!1403839 b!4540945)))

(assert (=> bs!878603 (not (= lambda!176314 lambda!176300))))

(assert (=> d!1403839 (not (contains!13558 (extractMap!1258 (toList!4412 lm!1477)) key!3287))))

(declare-fun lt!1715658 () Unit!98710)

(declare-fun choose!29922 (ListLongMap!3043 K!12145 Hashable!5597) Unit!98710)

(assert (=> d!1403839 (= lt!1715658 (choose!29922 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1403839 (forall!10351 (toList!4412 lm!1477) lambda!176314)))

(assert (=> d!1403839 (= (lemmaNotInItsHashBucketThenNotInMap!190 lm!1477 key!3287 hashF!1107) lt!1715658)))

(declare-fun bs!878604 () Bool)

(assert (= bs!878604 d!1403839))

(assert (=> bs!878604 m!5308145))

(assert (=> bs!878604 m!5308145))

(declare-fun m!5308377 () Bool)

(assert (=> bs!878604 m!5308377))

(declare-fun m!5308379 () Bool)

(assert (=> bs!878604 m!5308379))

(declare-fun m!5308381 () Bool)

(assert (=> bs!878604 m!5308381))

(assert (=> b!4540952 d!1403839))

(declare-fun d!1403865 () Bool)

(declare-fun hash!2928 (Hashable!5597 K!12145) (_ BitVec 64))

(assert (=> d!1403865 (= (hash!2925 hashF!1107 key!3287) (hash!2928 hashF!1107 key!3287))))

(declare-fun bs!878605 () Bool)

(assert (= bs!878605 d!1403865))

(declare-fun m!5308383 () Bool)

(assert (=> bs!878605 m!5308383))

(assert (=> b!4540974 d!1403865))

(declare-fun d!1403867 () Bool)

(declare-datatypes ((Option!11211 0))(
  ( (None!11210) (Some!11210 (v!44916 List!50884)) )
))
(declare-fun get!16695 (Option!11211) List!50884)

(declare-fun getValueByKey!1151 (List!50885 (_ BitVec 64)) Option!11211)

(assert (=> d!1403867 (= (apply!11939 lt!1715585 hash!344) (get!16695 (getValueByKey!1151 (toList!4412 lt!1715585) hash!344)))))

(declare-fun bs!878607 () Bool)

(assert (= bs!878607 d!1403867))

(declare-fun m!5308401 () Bool)

(assert (=> bs!878607 m!5308401))

(assert (=> bs!878607 m!5308401))

(declare-fun m!5308405 () Bool)

(assert (=> bs!878607 m!5308405))

(assert (=> b!4540953 d!1403867))

(declare-fun d!1403877 () Bool)

(declare-fun head!9486 (List!50885) tuple2!51244)

(assert (=> d!1403877 (= (head!9484 lt!1715597) (head!9486 (toList!4412 lt!1715597)))))

(declare-fun bs!878609 () Bool)

(assert (= bs!878609 d!1403877))

(declare-fun m!5308407 () Bool)

(assert (=> bs!878609 m!5308407))

(assert (=> b!4540954 d!1403877))

(declare-fun d!1403879 () Bool)

(declare-fun res!1892617 () Bool)

(declare-fun e!2829802 () Bool)

(assert (=> d!1403879 (=> res!1892617 e!2829802)))

(declare-fun e!2829801 () Bool)

(assert (=> d!1403879 (= res!1892617 e!2829801)))

(declare-fun res!1892616 () Bool)

(assert (=> d!1403879 (=> (not res!1892616) (not e!2829801))))

(assert (=> d!1403879 (= res!1892616 ((_ is Cons!50761) (t!357847 (toList!4412 lm!1477))))))

(assert (=> d!1403879 (= (containsKeyBiggerList!182 (t!357847 (toList!4412 lm!1477)) key!3287) e!2829802)))

(declare-fun b!4541070 () Bool)

(assert (=> b!4541070 (= e!2829801 (containsKey!1882 (_2!28916 (h!56644 (t!357847 (toList!4412 lm!1477)))) key!3287))))

(declare-fun b!4541071 () Bool)

(declare-fun e!2829803 () Bool)

(assert (=> b!4541071 (= e!2829802 e!2829803)))

(declare-fun res!1892618 () Bool)

(assert (=> b!4541071 (=> (not res!1892618) (not e!2829803))))

(assert (=> b!4541071 (= res!1892618 ((_ is Cons!50761) (t!357847 (toList!4412 lm!1477))))))

(declare-fun b!4541072 () Bool)

(assert (=> b!4541072 (= e!2829803 (containsKeyBiggerList!182 (t!357847 (t!357847 (toList!4412 lm!1477))) key!3287))))

(assert (= (and d!1403879 res!1892616) b!4541070))

(assert (= (and d!1403879 (not res!1892617)) b!4541071))

(assert (= (and b!4541071 res!1892618) b!4541072))

(declare-fun m!5308417 () Bool)

(assert (=> b!4541070 m!5308417))

(declare-fun m!5308419 () Bool)

(assert (=> b!4541072 m!5308419))

(assert (=> b!4540957 d!1403879))

(declare-fun d!1403887 () Bool)

(declare-fun res!1892628 () Bool)

(declare-fun e!2829811 () Bool)

(assert (=> d!1403887 (=> res!1892628 e!2829811)))

(declare-fun e!2829810 () Bool)

(assert (=> d!1403887 (= res!1892628 e!2829810)))

(declare-fun res!1892627 () Bool)

(assert (=> d!1403887 (=> (not res!1892627) (not e!2829810))))

(assert (=> d!1403887 (= res!1892627 ((_ is Cons!50761) (toList!4412 lt!1715585)))))

(assert (=> d!1403887 (= (containsKeyBiggerList!182 (toList!4412 lt!1715585) key!3287) e!2829811)))

(declare-fun b!4541081 () Bool)

(assert (=> b!4541081 (= e!2829810 (containsKey!1882 (_2!28916 (h!56644 (toList!4412 lt!1715585))) key!3287))))

(declare-fun b!4541082 () Bool)

(declare-fun e!2829812 () Bool)

(assert (=> b!4541082 (= e!2829811 e!2829812)))

(declare-fun res!1892629 () Bool)

(assert (=> b!4541082 (=> (not res!1892629) (not e!2829812))))

(assert (=> b!4541082 (= res!1892629 ((_ is Cons!50761) (toList!4412 lt!1715585)))))

(declare-fun b!4541083 () Bool)

(assert (=> b!4541083 (= e!2829812 (containsKeyBiggerList!182 (t!357847 (toList!4412 lt!1715585)) key!3287))))

(assert (= (and d!1403887 res!1892627) b!4541081))

(assert (= (and d!1403887 (not res!1892628)) b!4541082))

(assert (= (and b!4541082 res!1892629) b!4541083))

(declare-fun m!5308421 () Bool)

(assert (=> b!4541081 m!5308421))

(declare-fun m!5308423 () Bool)

(assert (=> b!4541083 m!5308423))

(assert (=> b!4540957 d!1403887))

(declare-fun bs!878612 () Bool)

(declare-fun d!1403889 () Bool)

(assert (= bs!878612 (and d!1403889 start!450812)))

(declare-fun lambda!176317 () Int)

(assert (=> bs!878612 (= lambda!176317 lambda!176299)))

(declare-fun bs!878613 () Bool)

(assert (= bs!878613 (and d!1403889 b!4540945)))

(assert (=> bs!878613 (not (= lambda!176317 lambda!176300))))

(declare-fun bs!878614 () Bool)

(assert (= bs!878614 (and d!1403889 d!1403839)))

(assert (=> bs!878614 (= lambda!176317 lambda!176314)))

(assert (=> d!1403889 (containsKeyBiggerList!182 (toList!4412 lt!1715585) key!3287)))

(declare-fun lt!1715675 () Unit!98710)

(declare-fun choose!29924 (ListLongMap!3043 K!12145 Hashable!5597) Unit!98710)

(assert (=> d!1403889 (= lt!1715675 (choose!29924 lt!1715585 key!3287 hashF!1107))))

(assert (=> d!1403889 (forall!10351 (toList!4412 lt!1715585) lambda!176317)))

(assert (=> d!1403889 (= (lemmaInLongMapThenContainsKeyBiggerList!118 lt!1715585 key!3287 hashF!1107) lt!1715675)))

(declare-fun bs!878615 () Bool)

(assert (= bs!878615 d!1403889))

(assert (=> bs!878615 m!5308151))

(declare-fun m!5308467 () Bool)

(assert (=> bs!878615 m!5308467))

(declare-fun m!5308469 () Bool)

(assert (=> bs!878615 m!5308469))

(assert (=> b!4540957 d!1403889))

(declare-fun d!1403903 () Bool)

(declare-fun e!2829825 () Bool)

(assert (=> d!1403903 e!2829825))

(declare-fun res!1892644 () Bool)

(assert (=> d!1403903 (=> (not res!1892644) (not e!2829825))))

(declare-fun lt!1715684 () ListLongMap!3043)

(assert (=> d!1403903 (= res!1892644 (contains!13557 lt!1715684 (_1!28916 lt!1715576)))))

(declare-fun lt!1715686 () List!50885)

(assert (=> d!1403903 (= lt!1715684 (ListLongMap!3044 lt!1715686))))

(declare-fun lt!1715685 () Unit!98710)

(declare-fun lt!1715687 () Unit!98710)

(assert (=> d!1403903 (= lt!1715685 lt!1715687)))

(assert (=> d!1403903 (= (getValueByKey!1151 lt!1715686 (_1!28916 lt!1715576)) (Some!11210 (_2!28916 lt!1715576)))))

(declare-fun lemmaContainsTupThenGetReturnValue!724 (List!50885 (_ BitVec 64) List!50884) Unit!98710)

(assert (=> d!1403903 (= lt!1715687 (lemmaContainsTupThenGetReturnValue!724 lt!1715686 (_1!28916 lt!1715576) (_2!28916 lt!1715576)))))

(declare-fun insertStrictlySorted!438 (List!50885 (_ BitVec 64) List!50884) List!50885)

(assert (=> d!1403903 (= lt!1715686 (insertStrictlySorted!438 (toList!4412 lm!1477) (_1!28916 lt!1715576) (_2!28916 lt!1715576)))))

(assert (=> d!1403903 (= (+!1610 lm!1477 lt!1715576) lt!1715684)))

(declare-fun b!4541101 () Bool)

(declare-fun res!1892643 () Bool)

(assert (=> b!4541101 (=> (not res!1892643) (not e!2829825))))

(assert (=> b!4541101 (= res!1892643 (= (getValueByKey!1151 (toList!4412 lt!1715684) (_1!28916 lt!1715576)) (Some!11210 (_2!28916 lt!1715576))))))

(declare-fun b!4541102 () Bool)

(assert (=> b!4541102 (= e!2829825 (contains!13559 (toList!4412 lt!1715684) lt!1715576))))

(assert (= (and d!1403903 res!1892644) b!4541101))

(assert (= (and b!4541101 res!1892643) b!4541102))

(declare-fun m!5308471 () Bool)

(assert (=> d!1403903 m!5308471))

(declare-fun m!5308473 () Bool)

(assert (=> d!1403903 m!5308473))

(declare-fun m!5308475 () Bool)

(assert (=> d!1403903 m!5308475))

(declare-fun m!5308477 () Bool)

(assert (=> d!1403903 m!5308477))

(declare-fun m!5308479 () Bool)

(assert (=> b!4541101 m!5308479))

(declare-fun m!5308481 () Bool)

(assert (=> b!4541102 m!5308481))

(assert (=> b!4540958 d!1403903))

(declare-fun d!1403905 () Bool)

(declare-fun e!2829826 () Bool)

(assert (=> d!1403905 e!2829826))

(declare-fun res!1892646 () Bool)

(assert (=> d!1403905 (=> (not res!1892646) (not e!2829826))))

(declare-fun lt!1715688 () ListLongMap!3043)

(assert (=> d!1403905 (= res!1892646 (contains!13557 lt!1715688 (_1!28916 lt!1715595)))))

(declare-fun lt!1715690 () List!50885)

(assert (=> d!1403905 (= lt!1715688 (ListLongMap!3044 lt!1715690))))

(declare-fun lt!1715689 () Unit!98710)

(declare-fun lt!1715691 () Unit!98710)

(assert (=> d!1403905 (= lt!1715689 lt!1715691)))

(assert (=> d!1403905 (= (getValueByKey!1151 lt!1715690 (_1!28916 lt!1715595)) (Some!11210 (_2!28916 lt!1715595)))))

(assert (=> d!1403905 (= lt!1715691 (lemmaContainsTupThenGetReturnValue!724 lt!1715690 (_1!28916 lt!1715595) (_2!28916 lt!1715595)))))

(assert (=> d!1403905 (= lt!1715690 (insertStrictlySorted!438 (toList!4412 lt!1715579) (_1!28916 lt!1715595) (_2!28916 lt!1715595)))))

(assert (=> d!1403905 (= (+!1610 lt!1715579 lt!1715595) lt!1715688)))

(declare-fun b!4541103 () Bool)

(declare-fun res!1892645 () Bool)

(assert (=> b!4541103 (=> (not res!1892645) (not e!2829826))))

(assert (=> b!4541103 (= res!1892645 (= (getValueByKey!1151 (toList!4412 lt!1715688) (_1!28916 lt!1715595)) (Some!11210 (_2!28916 lt!1715595))))))

(declare-fun b!4541104 () Bool)

(assert (=> b!4541104 (= e!2829826 (contains!13559 (toList!4412 lt!1715688) lt!1715595))))

(assert (= (and d!1403905 res!1892646) b!4541103))

(assert (= (and b!4541103 res!1892645) b!4541104))

(declare-fun m!5308483 () Bool)

(assert (=> d!1403905 m!5308483))

(declare-fun m!5308485 () Bool)

(assert (=> d!1403905 m!5308485))

(declare-fun m!5308487 () Bool)

(assert (=> d!1403905 m!5308487))

(declare-fun m!5308489 () Bool)

(assert (=> d!1403905 m!5308489))

(declare-fun m!5308491 () Bool)

(assert (=> b!4541103 m!5308491))

(declare-fun m!5308493 () Bool)

(assert (=> b!4541104 m!5308493))

(assert (=> b!4540958 d!1403905))

(declare-fun bs!878616 () Bool)

(declare-fun d!1403907 () Bool)

(assert (= bs!878616 (and d!1403907 start!450812)))

(declare-fun lambda!176320 () Int)

(assert (=> bs!878616 (not (= lambda!176320 lambda!176299))))

(declare-fun bs!878617 () Bool)

(assert (= bs!878617 (and d!1403907 b!4540945)))

(assert (=> bs!878617 (= lambda!176320 lambda!176300)))

(declare-fun bs!878618 () Bool)

(assert (= bs!878618 (and d!1403907 d!1403839)))

(assert (=> bs!878618 (not (= lambda!176320 lambda!176314))))

(declare-fun bs!878619 () Bool)

(assert (= bs!878619 (and d!1403907 d!1403889)))

(assert (=> bs!878619 (not (= lambda!176320 lambda!176317))))

(assert (=> d!1403907 true))

(assert (=> d!1403907 (= (allKeysSameHashInMap!1309 lm!1477 hashF!1107) (forall!10351 (toList!4412 lm!1477) lambda!176320))))

(declare-fun bs!878620 () Bool)

(assert (= bs!878620 d!1403907))

(declare-fun m!5308495 () Bool)

(assert (=> bs!878620 m!5308495))

(assert (=> b!4540959 d!1403907))

(declare-fun d!1403909 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8447 (List!50884) (InoxSet tuple2!51242))

(assert (=> d!1403909 (= (eq!659 lt!1715602 lt!1715583) (= (content!8447 (toList!4411 lt!1715602)) (content!8447 (toList!4411 lt!1715583))))))

(declare-fun bs!878621 () Bool)

(assert (= bs!878621 d!1403909))

(declare-fun m!5308497 () Bool)

(assert (=> bs!878621 m!5308497))

(declare-fun m!5308499 () Bool)

(assert (=> bs!878621 m!5308499))

(assert (=> b!4540960 d!1403909))

(declare-fun d!1403911 () Bool)

(declare-fun res!1892651 () Bool)

(declare-fun e!2829831 () Bool)

(assert (=> d!1403911 (=> res!1892651 e!2829831)))

(assert (=> d!1403911 (= res!1892651 (not ((_ is Cons!50760) (_2!28916 lt!1715595))))))

(assert (=> d!1403911 (= (noDuplicateKeys!1202 (_2!28916 lt!1715595)) e!2829831)))

(declare-fun b!4541109 () Bool)

(declare-fun e!2829832 () Bool)

(assert (=> b!4541109 (= e!2829831 e!2829832)))

(declare-fun res!1892652 () Bool)

(assert (=> b!4541109 (=> (not res!1892652) (not e!2829832))))

(assert (=> b!4541109 (= res!1892652 (not (containsKey!1882 (t!357846 (_2!28916 lt!1715595)) (_1!28915 (h!56643 (_2!28916 lt!1715595))))))))

(declare-fun b!4541110 () Bool)

(assert (=> b!4541110 (= e!2829832 (noDuplicateKeys!1202 (t!357846 (_2!28916 lt!1715595))))))

(assert (= (and d!1403911 (not res!1892651)) b!4541109))

(assert (= (and b!4541109 res!1892652) b!4541110))

(declare-fun m!5308501 () Bool)

(assert (=> b!4541109 m!5308501))

(declare-fun m!5308503 () Bool)

(assert (=> b!4541110 m!5308503))

(assert (=> b!4540961 d!1403911))

(declare-fun d!1403913 () Bool)

(declare-fun dynLambda!21220 (Int tuple2!51244) Bool)

(assert (=> d!1403913 (dynLambda!21220 lambda!176299 (h!56644 (toList!4412 lm!1477)))))

(declare-fun lt!1715694 () Unit!98710)

(declare-fun choose!29925 (List!50885 Int tuple2!51244) Unit!98710)

(assert (=> d!1403913 (= lt!1715694 (choose!29925 (toList!4412 lm!1477) lambda!176299 (h!56644 (toList!4412 lm!1477))))))

(declare-fun e!2829835 () Bool)

(assert (=> d!1403913 e!2829835))

(declare-fun res!1892655 () Bool)

(assert (=> d!1403913 (=> (not res!1892655) (not e!2829835))))

(assert (=> d!1403913 (= res!1892655 (forall!10351 (toList!4412 lm!1477) lambda!176299))))

(assert (=> d!1403913 (= (forallContained!2614 (toList!4412 lm!1477) lambda!176299 (h!56644 (toList!4412 lm!1477))) lt!1715694)))

(declare-fun b!4541113 () Bool)

(assert (=> b!4541113 (= e!2829835 (contains!13559 (toList!4412 lm!1477) (h!56644 (toList!4412 lm!1477))))))

(assert (= (and d!1403913 res!1892655) b!4541113))

(declare-fun b_lambda!158121 () Bool)

(assert (=> (not b_lambda!158121) (not d!1403913)))

(declare-fun m!5308505 () Bool)

(assert (=> d!1403913 m!5308505))

(declare-fun m!5308507 () Bool)

(assert (=> d!1403913 m!5308507))

(assert (=> d!1403913 m!5308189))

(declare-fun m!5308509 () Bool)

(assert (=> b!4541113 m!5308509))

(assert (=> b!4540961 d!1403913))

(declare-fun d!1403915 () Bool)

(assert (=> d!1403915 (= (eq!659 lt!1715594 lt!1715592) (= (content!8447 (toList!4411 lt!1715594)) (content!8447 (toList!4411 lt!1715592))))))

(declare-fun bs!878622 () Bool)

(assert (= bs!878622 d!1403915))

(declare-fun m!5308511 () Bool)

(assert (=> bs!878622 m!5308511))

(declare-fun m!5308513 () Bool)

(assert (=> bs!878622 m!5308513))

(assert (=> b!4540962 d!1403915))

(declare-fun d!1403917 () Bool)

(assert (=> d!1403917 (= (eq!659 lt!1715603 lt!1715570) (= (content!8447 (toList!4411 lt!1715603)) (content!8447 (toList!4411 lt!1715570))))))

(declare-fun bs!878623 () Bool)

(assert (= bs!878623 d!1403917))

(declare-fun m!5308515 () Bool)

(assert (=> bs!878623 m!5308515))

(declare-fun m!5308517 () Bool)

(assert (=> bs!878623 m!5308517))

(assert (=> b!4540963 d!1403917))

(declare-fun d!1403919 () Bool)

(declare-fun e!2829838 () Bool)

(assert (=> d!1403919 e!2829838))

(declare-fun res!1892658 () Bool)

(assert (=> d!1403919 (=> (not res!1892658) (not e!2829838))))

(declare-fun lt!1715697 () ListMap!3673)

(assert (=> d!1403919 (= res!1892658 (not (contains!13558 lt!1715697 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!171 (List!50884 K!12145) List!50884)

(assert (=> d!1403919 (= lt!1715697 (ListMap!3674 (removePresrvNoDuplicatedKeys!171 (toList!4411 (addToMapMapFromBucket!729 (_2!28916 lt!1715595) lt!1715578)) key!3287)))))

(assert (=> d!1403919 (= (-!428 (addToMapMapFromBucket!729 (_2!28916 lt!1715595) lt!1715578) key!3287) lt!1715697)))

(declare-fun b!4541116 () Bool)

(declare-datatypes ((List!50887 0))(
  ( (Nil!50763) (Cons!50763 (h!56648 K!12145) (t!357849 List!50887)) )
))
(declare-fun content!8448 (List!50887) (InoxSet K!12145))

(declare-fun keys!17666 (ListMap!3673) List!50887)

(assert (=> b!4541116 (= e!2829838 (= ((_ map and) (content!8448 (keys!17666 (addToMapMapFromBucket!729 (_2!28916 lt!1715595) lt!1715578))) ((_ map not) (store ((as const (Array K!12145 Bool)) false) key!3287 true))) (content!8448 (keys!17666 lt!1715697))))))

(assert (= (and d!1403919 res!1892658) b!4541116))

(declare-fun m!5308519 () Bool)

(assert (=> d!1403919 m!5308519))

(declare-fun m!5308521 () Bool)

(assert (=> d!1403919 m!5308521))

(declare-fun m!5308523 () Bool)

(assert (=> b!4541116 m!5308523))

(declare-fun m!5308525 () Bool)

(assert (=> b!4541116 m!5308525))

(declare-fun m!5308527 () Bool)

(assert (=> b!4541116 m!5308527))

(declare-fun m!5308529 () Bool)

(assert (=> b!4541116 m!5308529))

(declare-fun m!5308531 () Bool)

(assert (=> b!4541116 m!5308531))

(assert (=> b!4541116 m!5308175))

(assert (=> b!4541116 m!5308529))

(assert (=> b!4541116 m!5308523))

(assert (=> b!4540963 d!1403919))

(declare-fun bs!878674 () Bool)

(declare-fun b!4541201 () Bool)

(assert (= bs!878674 (and b!4541201 b!4540945)))

(declare-fun lambda!176390 () Int)

(assert (=> bs!878674 (not (= lambda!176390 lambda!176301))))

(assert (=> b!4541201 true))

(declare-fun bs!878675 () Bool)

(declare-fun b!4541202 () Bool)

(assert (= bs!878675 (and b!4541202 b!4540945)))

(declare-fun lambda!176391 () Int)

(assert (=> bs!878675 (not (= lambda!176391 lambda!176301))))

(declare-fun bs!878676 () Bool)

(assert (= bs!878676 (and b!4541202 b!4541201)))

(assert (=> bs!878676 (= lambda!176391 lambda!176390)))

(assert (=> b!4541202 true))

(declare-fun lambda!176392 () Int)

(assert (=> bs!878675 (not (= lambda!176392 lambda!176301))))

(declare-fun lt!1715875 () ListMap!3673)

(assert (=> bs!878676 (= (= lt!1715875 lt!1715578) (= lambda!176392 lambda!176390))))

(assert (=> b!4541202 (= (= lt!1715875 lt!1715578) (= lambda!176392 lambda!176391))))

(assert (=> b!4541202 true))

(declare-fun bs!878686 () Bool)

(declare-fun d!1403921 () Bool)

(assert (= bs!878686 (and d!1403921 b!4540945)))

(declare-fun lambda!176394 () Int)

(assert (=> bs!878686 (not (= lambda!176394 lambda!176301))))

(declare-fun bs!878687 () Bool)

(assert (= bs!878687 (and d!1403921 b!4541201)))

(declare-fun lt!1715878 () ListMap!3673)

(assert (=> bs!878687 (= (= lt!1715878 lt!1715578) (= lambda!176394 lambda!176390))))

(declare-fun bs!878688 () Bool)

(assert (= bs!878688 (and d!1403921 b!4541202)))

(assert (=> bs!878688 (= (= lt!1715878 lt!1715578) (= lambda!176394 lambda!176391))))

(assert (=> bs!878688 (= (= lt!1715878 lt!1715875) (= lambda!176394 lambda!176392))))

(assert (=> d!1403921 true))

(declare-fun e!2829896 () Bool)

(assert (=> d!1403921 e!2829896))

(declare-fun res!1892703 () Bool)

(assert (=> d!1403921 (=> (not res!1892703) (not e!2829896))))

(declare-fun forall!10353 (List!50884 Int) Bool)

(assert (=> d!1403921 (= res!1892703 (forall!10353 (_2!28916 lt!1715595) lambda!176394))))

(declare-fun e!2829895 () ListMap!3673)

(assert (=> d!1403921 (= lt!1715878 e!2829895)))

(declare-fun c!775674 () Bool)

(assert (=> d!1403921 (= c!775674 ((_ is Nil!50760) (_2!28916 lt!1715595)))))

(assert (=> d!1403921 (noDuplicateKeys!1202 (_2!28916 lt!1715595))))

(assert (=> d!1403921 (= (addToMapMapFromBucket!729 (_2!28916 lt!1715595) lt!1715578) lt!1715878)))

(assert (=> b!4541201 (= e!2829895 lt!1715578)))

(declare-fun lt!1715876 () Unit!98710)

(declare-fun call!316701 () Unit!98710)

(assert (=> b!4541201 (= lt!1715876 call!316701)))

(declare-fun call!316700 () Bool)

(assert (=> b!4541201 call!316700))

(declare-fun lt!1715872 () Unit!98710)

(assert (=> b!4541201 (= lt!1715872 lt!1715876)))

(declare-fun call!316702 () Bool)

(assert (=> b!4541201 call!316702))

(declare-fun lt!1715887 () Unit!98710)

(declare-fun Unit!98733 () Unit!98710)

(assert (=> b!4541201 (= lt!1715887 Unit!98733)))

(declare-fun bm!316695 () Bool)

(assert (=> bm!316695 (= call!316700 (forall!10353 (ite c!775674 (toList!4411 lt!1715578) (_2!28916 lt!1715595)) (ite c!775674 lambda!176390 lambda!176392)))))

(assert (=> b!4541202 (= e!2829895 lt!1715875)))

(declare-fun lt!1715889 () ListMap!3673)

(declare-fun +!1612 (ListMap!3673 tuple2!51242) ListMap!3673)

(assert (=> b!4541202 (= lt!1715889 (+!1612 lt!1715578 (h!56643 (_2!28916 lt!1715595))))))

(assert (=> b!4541202 (= lt!1715875 (addToMapMapFromBucket!729 (t!357846 (_2!28916 lt!1715595)) (+!1612 lt!1715578 (h!56643 (_2!28916 lt!1715595)))))))

(declare-fun lt!1715882 () Unit!98710)

(assert (=> b!4541202 (= lt!1715882 call!316701)))

(assert (=> b!4541202 (forall!10353 (toList!4411 lt!1715578) lambda!176391)))

(declare-fun lt!1715874 () Unit!98710)

(assert (=> b!4541202 (= lt!1715874 lt!1715882)))

(assert (=> b!4541202 (forall!10353 (toList!4411 lt!1715889) lambda!176392)))

(declare-fun lt!1715888 () Unit!98710)

(declare-fun Unit!98734 () Unit!98710)

(assert (=> b!4541202 (= lt!1715888 Unit!98734)))

(assert (=> b!4541202 (forall!10353 (t!357846 (_2!28916 lt!1715595)) lambda!176392)))

(declare-fun lt!1715881 () Unit!98710)

(declare-fun Unit!98735 () Unit!98710)

(assert (=> b!4541202 (= lt!1715881 Unit!98735)))

(declare-fun lt!1715879 () Unit!98710)

(declare-fun Unit!98736 () Unit!98710)

(assert (=> b!4541202 (= lt!1715879 Unit!98736)))

(declare-fun lt!1715886 () Unit!98710)

(assert (=> b!4541202 (= lt!1715886 (forallContained!2615 (toList!4411 lt!1715889) lambda!176392 (h!56643 (_2!28916 lt!1715595))))))

(assert (=> b!4541202 (contains!13558 lt!1715889 (_1!28915 (h!56643 (_2!28916 lt!1715595))))))

(declare-fun lt!1715885 () Unit!98710)

(declare-fun Unit!98737 () Unit!98710)

(assert (=> b!4541202 (= lt!1715885 Unit!98737)))

(assert (=> b!4541202 (contains!13558 lt!1715875 (_1!28915 (h!56643 (_2!28916 lt!1715595))))))

(declare-fun lt!1715871 () Unit!98710)

(declare-fun Unit!98738 () Unit!98710)

(assert (=> b!4541202 (= lt!1715871 Unit!98738)))

(assert (=> b!4541202 call!316700))

(declare-fun lt!1715869 () Unit!98710)

(declare-fun Unit!98739 () Unit!98710)

(assert (=> b!4541202 (= lt!1715869 Unit!98739)))

(assert (=> b!4541202 (forall!10353 (toList!4411 lt!1715889) lambda!176392)))

(declare-fun lt!1715873 () Unit!98710)

(declare-fun Unit!98740 () Unit!98710)

(assert (=> b!4541202 (= lt!1715873 Unit!98740)))

(declare-fun lt!1715877 () Unit!98710)

(declare-fun Unit!98741 () Unit!98710)

(assert (=> b!4541202 (= lt!1715877 Unit!98741)))

(declare-fun lt!1715884 () Unit!98710)

(declare-fun addForallContainsKeyThenBeforeAdding!368 (ListMap!3673 ListMap!3673 K!12145 V!12391) Unit!98710)

(assert (=> b!4541202 (= lt!1715884 (addForallContainsKeyThenBeforeAdding!368 lt!1715578 lt!1715875 (_1!28915 (h!56643 (_2!28916 lt!1715595))) (_2!28915 (h!56643 (_2!28916 lt!1715595)))))))

(assert (=> b!4541202 (forall!10353 (toList!4411 lt!1715578) lambda!176392)))

(declare-fun lt!1715883 () Unit!98710)

(assert (=> b!4541202 (= lt!1715883 lt!1715884)))

(assert (=> b!4541202 (forall!10353 (toList!4411 lt!1715578) lambda!176392)))

(declare-fun lt!1715880 () Unit!98710)

(declare-fun Unit!98742 () Unit!98710)

(assert (=> b!4541202 (= lt!1715880 Unit!98742)))

(declare-fun res!1892702 () Bool)

(assert (=> b!4541202 (= res!1892702 call!316702)))

(declare-fun e!2829897 () Bool)

(assert (=> b!4541202 (=> (not res!1892702) (not e!2829897))))

(assert (=> b!4541202 e!2829897))

(declare-fun lt!1715870 () Unit!98710)

(declare-fun Unit!98743 () Unit!98710)

(assert (=> b!4541202 (= lt!1715870 Unit!98743)))

(declare-fun bm!316696 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!368 (ListMap!3673) Unit!98710)

(assert (=> bm!316696 (= call!316701 (lemmaContainsAllItsOwnKeys!368 lt!1715578))))

(declare-fun bm!316697 () Bool)

(assert (=> bm!316697 (= call!316702 (forall!10353 (ite c!775674 (toList!4411 lt!1715578) (_2!28916 lt!1715595)) (ite c!775674 lambda!176390 lambda!176392)))))

(declare-fun b!4541203 () Bool)

(assert (=> b!4541203 (= e!2829897 (forall!10353 (toList!4411 lt!1715578) lambda!176392))))

(declare-fun b!4541204 () Bool)

(declare-fun invariantList!1047 (List!50884) Bool)

(assert (=> b!4541204 (= e!2829896 (invariantList!1047 (toList!4411 lt!1715878)))))

(declare-fun b!4541205 () Bool)

(declare-fun res!1892701 () Bool)

(assert (=> b!4541205 (=> (not res!1892701) (not e!2829896))))

(assert (=> b!4541205 (= res!1892701 (forall!10353 (toList!4411 lt!1715578) lambda!176394))))

(assert (= (and d!1403921 c!775674) b!4541201))

(assert (= (and d!1403921 (not c!775674)) b!4541202))

(assert (= (and b!4541202 res!1892702) b!4541203))

(assert (= (or b!4541201 b!4541202) bm!316695))

(assert (= (or b!4541201 b!4541202) bm!316697))

(assert (= (or b!4541201 b!4541202) bm!316696))

(assert (= (and d!1403921 res!1892703) b!4541205))

(assert (= (and b!4541205 res!1892701) b!4541204))

(declare-fun m!5308721 () Bool)

(assert (=> b!4541205 m!5308721))

(declare-fun m!5308723 () Bool)

(assert (=> d!1403921 m!5308723))

(assert (=> d!1403921 m!5308253))

(declare-fun m!5308725 () Bool)

(assert (=> bm!316697 m!5308725))

(declare-fun m!5308727 () Bool)

(assert (=> bm!316696 m!5308727))

(declare-fun m!5308729 () Bool)

(assert (=> b!4541203 m!5308729))

(assert (=> bm!316695 m!5308725))

(declare-fun m!5308731 () Bool)

(assert (=> b!4541204 m!5308731))

(declare-fun m!5308733 () Bool)

(assert (=> b!4541202 m!5308733))

(declare-fun m!5308735 () Bool)

(assert (=> b!4541202 m!5308735))

(assert (=> b!4541202 m!5308729))

(declare-fun m!5308737 () Bool)

(assert (=> b!4541202 m!5308737))

(assert (=> b!4541202 m!5308729))

(declare-fun m!5308739 () Bool)

(assert (=> b!4541202 m!5308739))

(declare-fun m!5308741 () Bool)

(assert (=> b!4541202 m!5308741))

(declare-fun m!5308743 () Bool)

(assert (=> b!4541202 m!5308743))

(declare-fun m!5308745 () Bool)

(assert (=> b!4541202 m!5308745))

(declare-fun m!5308747 () Bool)

(assert (=> b!4541202 m!5308747))

(declare-fun m!5308749 () Bool)

(assert (=> b!4541202 m!5308749))

(assert (=> b!4541202 m!5308745))

(assert (=> b!4541202 m!5308743))

(assert (=> b!4540963 d!1403921))

(declare-fun d!1403965 () Bool)

(assert (=> d!1403965 (= (addToMapMapFromBucket!729 (_2!28916 lt!1715595) (-!428 lt!1715578 key!3287)) (-!428 (addToMapMapFromBucket!729 (_2!28916 lt!1715595) lt!1715578) key!3287))))

(declare-fun lt!1715926 () Unit!98710)

(declare-fun choose!29927 (ListMap!3673 K!12145 List!50884) Unit!98710)

(assert (=> d!1403965 (= lt!1715926 (choose!29927 lt!1715578 key!3287 (_2!28916 lt!1715595)))))

(assert (=> d!1403965 (not (containsKey!1882 (_2!28916 lt!1715595) key!3287))))

(assert (=> d!1403965 (= (lemmaAddToMapFromBucketMinusKeyIsCommutative!26 lt!1715578 key!3287 (_2!28916 lt!1715595)) lt!1715926)))

(declare-fun bs!878726 () Bool)

(assert (= bs!878726 d!1403965))

(assert (=> bs!878726 m!5308175))

(assert (=> bs!878726 m!5308177))

(declare-fun m!5308765 () Bool)

(assert (=> bs!878726 m!5308765))

(assert (=> bs!878726 m!5308147))

(assert (=> bs!878726 m!5308211))

(declare-fun m!5308767 () Bool)

(assert (=> bs!878726 m!5308767))

(assert (=> bs!878726 m!5308175))

(assert (=> bs!878726 m!5308211))

(assert (=> b!4540963 d!1403965))

(declare-fun bs!878761 () Bool)

(declare-fun d!1403977 () Bool)

(assert (= bs!878761 (and d!1403977 start!450812)))

(declare-fun lambda!176411 () Int)

(assert (=> bs!878761 (= lambda!176411 lambda!176299)))

(declare-fun bs!878762 () Bool)

(assert (= bs!878762 (and d!1403977 d!1403907)))

(assert (=> bs!878762 (not (= lambda!176411 lambda!176320))))

(declare-fun bs!878763 () Bool)

(assert (= bs!878763 (and d!1403977 d!1403839)))

(assert (=> bs!878763 (= lambda!176411 lambda!176314)))

(declare-fun bs!878764 () Bool)

(assert (= bs!878764 (and d!1403977 b!4540945)))

(assert (=> bs!878764 (not (= lambda!176411 lambda!176300))))

(declare-fun bs!878765 () Bool)

(assert (= bs!878765 (and d!1403977 d!1403889)))

(assert (=> bs!878765 (= lambda!176411 lambda!176317)))

(declare-fun lt!1715938 () ListMap!3673)

(assert (=> d!1403977 (invariantList!1047 (toList!4411 lt!1715938))))

(declare-fun e!2829927 () ListMap!3673)

(assert (=> d!1403977 (= lt!1715938 e!2829927)))

(declare-fun c!775683 () Bool)

(assert (=> d!1403977 (= c!775683 ((_ is Cons!50761) (toList!4412 lt!1715600)))))

(assert (=> d!1403977 (forall!10351 (toList!4412 lt!1715600) lambda!176411)))

(assert (=> d!1403977 (= (extractMap!1258 (toList!4412 lt!1715600)) lt!1715938)))

(declare-fun b!4541250 () Bool)

(assert (=> b!4541250 (= e!2829927 (addToMapMapFromBucket!729 (_2!28916 (h!56644 (toList!4412 lt!1715600))) (extractMap!1258 (t!357847 (toList!4412 lt!1715600)))))))

(declare-fun b!4541251 () Bool)

(assert (=> b!4541251 (= e!2829927 (ListMap!3674 Nil!50760))))

(assert (= (and d!1403977 c!775683) b!4541250))

(assert (= (and d!1403977 (not c!775683)) b!4541251))

(declare-fun m!5308837 () Bool)

(assert (=> d!1403977 m!5308837))

(declare-fun m!5308839 () Bool)

(assert (=> d!1403977 m!5308839))

(declare-fun m!5308841 () Bool)

(assert (=> b!4541250 m!5308841))

(assert (=> b!4541250 m!5308841))

(declare-fun m!5308843 () Bool)

(assert (=> b!4541250 m!5308843))

(assert (=> b!4540964 d!1403977))

(declare-fun d!1403991 () Bool)

(assert (=> d!1403991 (= (eq!659 lt!1715592 lt!1715594) (= (content!8447 (toList!4411 lt!1715592)) (content!8447 (toList!4411 lt!1715594))))))

(declare-fun bs!878766 () Bool)

(assert (= bs!878766 d!1403991))

(assert (=> bs!878766 m!5308513))

(assert (=> bs!878766 m!5308511))

(assert (=> b!4540964 d!1403991))

(declare-fun bs!878786 () Bool)

(declare-fun d!1403993 () Bool)

(assert (= bs!878786 (and d!1403993 start!450812)))

(declare-fun lambda!176417 () Int)

(assert (=> bs!878786 (= lambda!176417 lambda!176299)))

(declare-fun bs!878787 () Bool)

(assert (= bs!878787 (and d!1403993 d!1403907)))

(assert (=> bs!878787 (not (= lambda!176417 lambda!176320))))

(declare-fun bs!878788 () Bool)

(assert (= bs!878788 (and d!1403993 d!1403839)))

(assert (=> bs!878788 (= lambda!176417 lambda!176314)))

(declare-fun bs!878789 () Bool)

(assert (= bs!878789 (and d!1403993 b!4540945)))

(assert (=> bs!878789 (not (= lambda!176417 lambda!176300))))

(declare-fun bs!878790 () Bool)

(assert (= bs!878790 (and d!1403993 d!1403889)))

(assert (=> bs!878790 (= lambda!176417 lambda!176317)))

(declare-fun bs!878791 () Bool)

(assert (= bs!878791 (and d!1403993 d!1403977)))

(assert (=> bs!878791 (= lambda!176417 lambda!176411)))

(assert (=> d!1403993 (eq!659 (extractMap!1258 (toList!4412 (+!1610 lt!1715585 (tuple2!51245 hash!344 newBucket!178)))) (-!428 (extractMap!1258 (toList!4412 lt!1715585)) key!3287))))

(declare-fun lt!1715944 () Unit!98710)

(declare-fun choose!29928 (ListLongMap!3043 (_ BitVec 64) List!50884 K!12145 Hashable!5597) Unit!98710)

(assert (=> d!1403993 (= lt!1715944 (choose!29928 lt!1715585 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1403993 (forall!10351 (toList!4412 lt!1715585) lambda!176417)))

(assert (=> d!1403993 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!187 lt!1715585 hash!344 newBucket!178 key!3287 hashF!1107) lt!1715944)))

(declare-fun bs!878792 () Bool)

(assert (= bs!878792 d!1403993))

(assert (=> bs!878792 m!5308165))

(declare-fun m!5308861 () Bool)

(assert (=> bs!878792 m!5308861))

(declare-fun m!5308863 () Bool)

(assert (=> bs!878792 m!5308863))

(declare-fun m!5308865 () Bool)

(assert (=> bs!878792 m!5308865))

(declare-fun m!5308867 () Bool)

(assert (=> bs!878792 m!5308867))

(assert (=> bs!878792 m!5308165))

(assert (=> bs!878792 m!5308867))

(assert (=> bs!878792 m!5308861))

(declare-fun m!5308869 () Bool)

(assert (=> bs!878792 m!5308869))

(declare-fun m!5308871 () Bool)

(assert (=> bs!878792 m!5308871))

(assert (=> b!4540964 d!1403993))

(declare-fun bs!878793 () Bool)

(declare-fun d!1404005 () Bool)

(assert (= bs!878793 (and d!1404005 start!450812)))

(declare-fun lambda!176418 () Int)

(assert (=> bs!878793 (= lambda!176418 lambda!176299)))

(declare-fun bs!878794 () Bool)

(assert (= bs!878794 (and d!1404005 d!1403907)))

(assert (=> bs!878794 (not (= lambda!176418 lambda!176320))))

(declare-fun bs!878795 () Bool)

(assert (= bs!878795 (and d!1404005 d!1403839)))

(assert (=> bs!878795 (= lambda!176418 lambda!176314)))

(declare-fun bs!878796 () Bool)

(assert (= bs!878796 (and d!1404005 b!4540945)))

(assert (=> bs!878796 (not (= lambda!176418 lambda!176300))))

(declare-fun bs!878797 () Bool)

(assert (= bs!878797 (and d!1404005 d!1403993)))

(assert (=> bs!878797 (= lambda!176418 lambda!176417)))

(declare-fun bs!878798 () Bool)

(assert (= bs!878798 (and d!1404005 d!1403889)))

(assert (=> bs!878798 (= lambda!176418 lambda!176317)))

(declare-fun bs!878799 () Bool)

(assert (= bs!878799 (and d!1404005 d!1403977)))

(assert (=> bs!878799 (= lambda!176418 lambda!176411)))

(declare-fun lt!1715945 () ListMap!3673)

(assert (=> d!1404005 (invariantList!1047 (toList!4411 lt!1715945))))

(declare-fun e!2829934 () ListMap!3673)

(assert (=> d!1404005 (= lt!1715945 e!2829934)))

(declare-fun c!775684 () Bool)

(assert (=> d!1404005 (= c!775684 ((_ is Cons!50761) (toList!4412 lt!1715579)))))

(assert (=> d!1404005 (forall!10351 (toList!4412 lt!1715579) lambda!176418)))

(assert (=> d!1404005 (= (extractMap!1258 (toList!4412 lt!1715579)) lt!1715945)))

(declare-fun b!4541262 () Bool)

(assert (=> b!4541262 (= e!2829934 (addToMapMapFromBucket!729 (_2!28916 (h!56644 (toList!4412 lt!1715579))) (extractMap!1258 (t!357847 (toList!4412 lt!1715579)))))))

(declare-fun b!4541263 () Bool)

(assert (=> b!4541263 (= e!2829934 (ListMap!3674 Nil!50760))))

(assert (= (and d!1404005 c!775684) b!4541262))

(assert (= (and d!1404005 (not c!775684)) b!4541263))

(declare-fun m!5308873 () Bool)

(assert (=> d!1404005 m!5308873))

(declare-fun m!5308875 () Bool)

(assert (=> d!1404005 m!5308875))

(declare-fun m!5308877 () Bool)

(assert (=> b!4541262 m!5308877))

(assert (=> b!4541262 m!5308877))

(declare-fun m!5308879 () Bool)

(assert (=> b!4541262 m!5308879))

(assert (=> b!4540964 d!1404005))

(declare-fun d!1404007 () Bool)

(declare-fun e!2829935 () Bool)

(assert (=> d!1404007 e!2829935))

(declare-fun res!1892729 () Bool)

(assert (=> d!1404007 (=> (not res!1892729) (not e!2829935))))

(declare-fun lt!1715946 () ListLongMap!3043)

(assert (=> d!1404007 (= res!1892729 (contains!13557 lt!1715946 (_1!28916 lt!1715595)))))

(declare-fun lt!1715948 () List!50885)

(assert (=> d!1404007 (= lt!1715946 (ListLongMap!3044 lt!1715948))))

(declare-fun lt!1715947 () Unit!98710)

(declare-fun lt!1715949 () Unit!98710)

(assert (=> d!1404007 (= lt!1715947 lt!1715949)))

(assert (=> d!1404007 (= (getValueByKey!1151 lt!1715948 (_1!28916 lt!1715595)) (Some!11210 (_2!28916 lt!1715595)))))

(assert (=> d!1404007 (= lt!1715949 (lemmaContainsTupThenGetReturnValue!724 lt!1715948 (_1!28916 lt!1715595) (_2!28916 lt!1715595)))))

(assert (=> d!1404007 (= lt!1715948 (insertStrictlySorted!438 (toList!4412 lt!1715585) (_1!28916 lt!1715595) (_2!28916 lt!1715595)))))

(assert (=> d!1404007 (= (+!1610 lt!1715585 lt!1715595) lt!1715946)))

(declare-fun b!4541264 () Bool)

(declare-fun res!1892728 () Bool)

(assert (=> b!4541264 (=> (not res!1892728) (not e!2829935))))

(assert (=> b!4541264 (= res!1892728 (= (getValueByKey!1151 (toList!4412 lt!1715946) (_1!28916 lt!1715595)) (Some!11210 (_2!28916 lt!1715595))))))

(declare-fun b!4541265 () Bool)

(assert (=> b!4541265 (= e!2829935 (contains!13559 (toList!4412 lt!1715946) lt!1715595))))

(assert (= (and d!1404007 res!1892729) b!4541264))

(assert (= (and b!4541264 res!1892728) b!4541265))

(declare-fun m!5308881 () Bool)

(assert (=> d!1404007 m!5308881))

(declare-fun m!5308883 () Bool)

(assert (=> d!1404007 m!5308883))

(declare-fun m!5308885 () Bool)

(assert (=> d!1404007 m!5308885))

(declare-fun m!5308887 () Bool)

(assert (=> d!1404007 m!5308887))

(declare-fun m!5308889 () Bool)

(assert (=> b!4541264 m!5308889))

(declare-fun m!5308891 () Bool)

(assert (=> b!4541265 m!5308891))

(assert (=> b!4540964 d!1404007))

(declare-fun d!1404009 () Bool)

(assert (=> d!1404009 (= (eq!659 lt!1715591 lt!1715588) (= (content!8447 (toList!4411 lt!1715591)) (content!8447 (toList!4411 lt!1715588))))))

(declare-fun bs!878800 () Bool)

(assert (= bs!878800 d!1404009))

(declare-fun m!5308893 () Bool)

(assert (=> bs!878800 m!5308893))

(declare-fun m!5308895 () Bool)

(assert (=> bs!878800 m!5308895))

(assert (=> b!4540964 d!1404009))

(declare-fun d!1404011 () Bool)

(assert (=> d!1404011 (= (head!9484 lm!1477) (head!9486 (toList!4412 lm!1477)))))

(declare-fun bs!878801 () Bool)

(assert (= bs!878801 d!1404011))

(declare-fun m!5308897 () Bool)

(assert (=> bs!878801 m!5308897))

(assert (=> b!4540964 d!1404011))

(declare-fun d!1404013 () Bool)

(declare-fun e!2829936 () Bool)

(assert (=> d!1404013 e!2829936))

(declare-fun res!1892730 () Bool)

(assert (=> d!1404013 (=> (not res!1892730) (not e!2829936))))

(declare-fun lt!1715950 () ListMap!3673)

(assert (=> d!1404013 (= res!1892730 (not (contains!13558 lt!1715950 key!3287)))))

(assert (=> d!1404013 (= lt!1715950 (ListMap!3674 (removePresrvNoDuplicatedKeys!171 (toList!4411 lt!1715578) key!3287)))))

(assert (=> d!1404013 (= (-!428 lt!1715578 key!3287) lt!1715950)))

(declare-fun b!4541266 () Bool)

(assert (=> b!4541266 (= e!2829936 (= ((_ map and) (content!8448 (keys!17666 lt!1715578)) ((_ map not) (store ((as const (Array K!12145 Bool)) false) key!3287 true))) (content!8448 (keys!17666 lt!1715950))))))

(assert (= (and d!1404013 res!1892730) b!4541266))

(declare-fun m!5308899 () Bool)

(assert (=> d!1404013 m!5308899))

(declare-fun m!5308901 () Bool)

(assert (=> d!1404013 m!5308901))

(declare-fun m!5308903 () Bool)

(assert (=> b!4541266 m!5308903))

(declare-fun m!5308905 () Bool)

(assert (=> b!4541266 m!5308905))

(assert (=> b!4541266 m!5308527))

(declare-fun m!5308907 () Bool)

(assert (=> b!4541266 m!5308907))

(declare-fun m!5308909 () Bool)

(assert (=> b!4541266 m!5308909))

(assert (=> b!4541266 m!5308907))

(assert (=> b!4541266 m!5308903))

(assert (=> b!4540964 d!1404013))

(declare-fun d!1404015 () Bool)

(declare-fun e!2829937 () Bool)

(assert (=> d!1404015 e!2829937))

(declare-fun res!1892732 () Bool)

(assert (=> d!1404015 (=> (not res!1892732) (not e!2829937))))

(declare-fun lt!1715951 () ListLongMap!3043)

(assert (=> d!1404015 (= res!1892732 (contains!13557 lt!1715951 (_1!28916 lt!1715576)))))

(declare-fun lt!1715953 () List!50885)

(assert (=> d!1404015 (= lt!1715951 (ListLongMap!3044 lt!1715953))))

(declare-fun lt!1715952 () Unit!98710)

(declare-fun lt!1715954 () Unit!98710)

(assert (=> d!1404015 (= lt!1715952 lt!1715954)))

(assert (=> d!1404015 (= (getValueByKey!1151 lt!1715953 (_1!28916 lt!1715576)) (Some!11210 (_2!28916 lt!1715576)))))

(assert (=> d!1404015 (= lt!1715954 (lemmaContainsTupThenGetReturnValue!724 lt!1715953 (_1!28916 lt!1715576) (_2!28916 lt!1715576)))))

(assert (=> d!1404015 (= lt!1715953 (insertStrictlySorted!438 (toList!4412 lt!1715585) (_1!28916 lt!1715576) (_2!28916 lt!1715576)))))

(assert (=> d!1404015 (= (+!1610 lt!1715585 lt!1715576) lt!1715951)))

(declare-fun b!4541267 () Bool)

(declare-fun res!1892731 () Bool)

(assert (=> b!4541267 (=> (not res!1892731) (not e!2829937))))

(assert (=> b!4541267 (= res!1892731 (= (getValueByKey!1151 (toList!4412 lt!1715951) (_1!28916 lt!1715576)) (Some!11210 (_2!28916 lt!1715576))))))

(declare-fun b!4541268 () Bool)

(assert (=> b!4541268 (= e!2829937 (contains!13559 (toList!4412 lt!1715951) lt!1715576))))

(assert (= (and d!1404015 res!1892732) b!4541267))

(assert (= (and b!4541267 res!1892731) b!4541268))

(declare-fun m!5308911 () Bool)

(assert (=> d!1404015 m!5308911))

(declare-fun m!5308913 () Bool)

(assert (=> d!1404015 m!5308913))

(declare-fun m!5308915 () Bool)

(assert (=> d!1404015 m!5308915))

(declare-fun m!5308917 () Bool)

(assert (=> d!1404015 m!5308917))

(declare-fun m!5308919 () Bool)

(assert (=> b!4541267 m!5308919))

(declare-fun m!5308921 () Bool)

(assert (=> b!4541268 m!5308921))

(assert (=> b!4540964 d!1404015))

(declare-fun d!1404017 () Bool)

(assert (=> d!1404017 (= (eq!659 lt!1715602 lt!1715573) (= (content!8447 (toList!4411 lt!1715602)) (content!8447 (toList!4411 lt!1715573))))))

(declare-fun bs!878802 () Bool)

(assert (= bs!878802 d!1404017))

(assert (=> bs!878802 m!5308497))

(declare-fun m!5308923 () Bool)

(assert (=> bs!878802 m!5308923))

(assert (=> b!4540943 d!1404017))

(declare-fun bs!878803 () Bool)

(declare-fun b!4541269 () Bool)

(assert (= bs!878803 (and b!4541269 b!4540945)))

(declare-fun lambda!176419 () Int)

(assert (=> bs!878803 (not (= lambda!176419 lambda!176301))))

(declare-fun bs!878804 () Bool)

(assert (= bs!878804 (and b!4541269 b!4541202)))

(assert (=> bs!878804 (= (= lt!1715591 lt!1715875) (= lambda!176419 lambda!176392))))

(declare-fun bs!878805 () Bool)

(assert (= bs!878805 (and b!4541269 d!1403921)))

(assert (=> bs!878805 (= (= lt!1715591 lt!1715878) (= lambda!176419 lambda!176394))))

(assert (=> bs!878804 (= (= lt!1715591 lt!1715578) (= lambda!176419 lambda!176391))))

(declare-fun bs!878806 () Bool)

(assert (= bs!878806 (and b!4541269 b!4541201)))

(assert (=> bs!878806 (= (= lt!1715591 lt!1715578) (= lambda!176419 lambda!176390))))

(assert (=> b!4541269 true))

(declare-fun bs!878807 () Bool)

(declare-fun b!4541270 () Bool)

(assert (= bs!878807 (and b!4541270 b!4540945)))

(declare-fun lambda!176420 () Int)

(assert (=> bs!878807 (not (= lambda!176420 lambda!176301))))

(declare-fun bs!878808 () Bool)

(assert (= bs!878808 (and b!4541270 b!4541202)))

(assert (=> bs!878808 (= (= lt!1715591 lt!1715875) (= lambda!176420 lambda!176392))))

(declare-fun bs!878809 () Bool)

(assert (= bs!878809 (and b!4541270 d!1403921)))

(assert (=> bs!878809 (= (= lt!1715591 lt!1715878) (= lambda!176420 lambda!176394))))

(declare-fun bs!878810 () Bool)

(assert (= bs!878810 (and b!4541270 b!4541269)))

(assert (=> bs!878810 (= lambda!176420 lambda!176419)))

(assert (=> bs!878808 (= (= lt!1715591 lt!1715578) (= lambda!176420 lambda!176391))))

(declare-fun bs!878811 () Bool)

(assert (= bs!878811 (and b!4541270 b!4541201)))

(assert (=> bs!878811 (= (= lt!1715591 lt!1715578) (= lambda!176420 lambda!176390))))

(assert (=> b!4541270 true))

(declare-fun lambda!176421 () Int)

(assert (=> bs!878807 (not (= lambda!176421 lambda!176301))))

(declare-fun lt!1715961 () ListMap!3673)

(assert (=> bs!878808 (= (= lt!1715961 lt!1715875) (= lambda!176421 lambda!176392))))

(assert (=> bs!878809 (= (= lt!1715961 lt!1715878) (= lambda!176421 lambda!176394))))

(assert (=> bs!878810 (= (= lt!1715961 lt!1715591) (= lambda!176421 lambda!176419))))

(assert (=> b!4541270 (= (= lt!1715961 lt!1715591) (= lambda!176421 lambda!176420))))

(assert (=> bs!878808 (= (= lt!1715961 lt!1715578) (= lambda!176421 lambda!176391))))

(assert (=> bs!878811 (= (= lt!1715961 lt!1715578) (= lambda!176421 lambda!176390))))

(assert (=> b!4541270 true))

(declare-fun bs!878812 () Bool)

(declare-fun d!1404019 () Bool)

(assert (= bs!878812 (and d!1404019 b!4540945)))

(declare-fun lambda!176422 () Int)

(assert (=> bs!878812 (not (= lambda!176422 lambda!176301))))

(declare-fun bs!878813 () Bool)

(assert (= bs!878813 (and d!1404019 b!4541202)))

(declare-fun lt!1715964 () ListMap!3673)

(assert (=> bs!878813 (= (= lt!1715964 lt!1715875) (= lambda!176422 lambda!176392))))

(declare-fun bs!878814 () Bool)

(assert (= bs!878814 (and d!1404019 d!1403921)))

(assert (=> bs!878814 (= (= lt!1715964 lt!1715878) (= lambda!176422 lambda!176394))))

(declare-fun bs!878815 () Bool)

(assert (= bs!878815 (and d!1404019 b!4541269)))

(assert (=> bs!878815 (= (= lt!1715964 lt!1715591) (= lambda!176422 lambda!176419))))

(declare-fun bs!878816 () Bool)

(assert (= bs!878816 (and d!1404019 b!4541270)))

(assert (=> bs!878816 (= (= lt!1715964 lt!1715591) (= lambda!176422 lambda!176420))))

(assert (=> bs!878813 (= (= lt!1715964 lt!1715578) (= lambda!176422 lambda!176391))))

(declare-fun bs!878817 () Bool)

(assert (= bs!878817 (and d!1404019 b!4541201)))

(assert (=> bs!878817 (= (= lt!1715964 lt!1715578) (= lambda!176422 lambda!176390))))

(assert (=> bs!878816 (= (= lt!1715964 lt!1715961) (= lambda!176422 lambda!176421))))

(assert (=> d!1404019 true))

(declare-fun e!2829939 () Bool)

(assert (=> d!1404019 e!2829939))

(declare-fun res!1892735 () Bool)

(assert (=> d!1404019 (=> (not res!1892735) (not e!2829939))))

(assert (=> d!1404019 (= res!1892735 (forall!10353 (_2!28916 lt!1715595) lambda!176422))))

(declare-fun e!2829938 () ListMap!3673)

(assert (=> d!1404019 (= lt!1715964 e!2829938)))

(declare-fun c!775685 () Bool)

(assert (=> d!1404019 (= c!775685 ((_ is Nil!50760) (_2!28916 lt!1715595)))))

(assert (=> d!1404019 (noDuplicateKeys!1202 (_2!28916 lt!1715595))))

(assert (=> d!1404019 (= (addToMapMapFromBucket!729 (_2!28916 lt!1715595) lt!1715591) lt!1715964)))

(assert (=> b!4541269 (= e!2829938 lt!1715591)))

(declare-fun lt!1715962 () Unit!98710)

(declare-fun call!316708 () Unit!98710)

(assert (=> b!4541269 (= lt!1715962 call!316708)))

(declare-fun call!316707 () Bool)

(assert (=> b!4541269 call!316707))

(declare-fun lt!1715958 () Unit!98710)

(assert (=> b!4541269 (= lt!1715958 lt!1715962)))

(declare-fun call!316709 () Bool)

(assert (=> b!4541269 call!316709))

(declare-fun lt!1715973 () Unit!98710)

(declare-fun Unit!98755 () Unit!98710)

(assert (=> b!4541269 (= lt!1715973 Unit!98755)))

(declare-fun bm!316702 () Bool)

(assert (=> bm!316702 (= call!316707 (forall!10353 (ite c!775685 (toList!4411 lt!1715591) (_2!28916 lt!1715595)) (ite c!775685 lambda!176419 lambda!176421)))))

(assert (=> b!4541270 (= e!2829938 lt!1715961)))

(declare-fun lt!1715975 () ListMap!3673)

(assert (=> b!4541270 (= lt!1715975 (+!1612 lt!1715591 (h!56643 (_2!28916 lt!1715595))))))

(assert (=> b!4541270 (= lt!1715961 (addToMapMapFromBucket!729 (t!357846 (_2!28916 lt!1715595)) (+!1612 lt!1715591 (h!56643 (_2!28916 lt!1715595)))))))

(declare-fun lt!1715968 () Unit!98710)

(assert (=> b!4541270 (= lt!1715968 call!316708)))

(assert (=> b!4541270 (forall!10353 (toList!4411 lt!1715591) lambda!176420)))

(declare-fun lt!1715960 () Unit!98710)

(assert (=> b!4541270 (= lt!1715960 lt!1715968)))

(assert (=> b!4541270 (forall!10353 (toList!4411 lt!1715975) lambda!176421)))

(declare-fun lt!1715974 () Unit!98710)

(declare-fun Unit!98756 () Unit!98710)

(assert (=> b!4541270 (= lt!1715974 Unit!98756)))

(assert (=> b!4541270 (forall!10353 (t!357846 (_2!28916 lt!1715595)) lambda!176421)))

(declare-fun lt!1715967 () Unit!98710)

(declare-fun Unit!98757 () Unit!98710)

(assert (=> b!4541270 (= lt!1715967 Unit!98757)))

(declare-fun lt!1715965 () Unit!98710)

(declare-fun Unit!98758 () Unit!98710)

(assert (=> b!4541270 (= lt!1715965 Unit!98758)))

(declare-fun lt!1715972 () Unit!98710)

(assert (=> b!4541270 (= lt!1715972 (forallContained!2615 (toList!4411 lt!1715975) lambda!176421 (h!56643 (_2!28916 lt!1715595))))))

(assert (=> b!4541270 (contains!13558 lt!1715975 (_1!28915 (h!56643 (_2!28916 lt!1715595))))))

(declare-fun lt!1715971 () Unit!98710)

(declare-fun Unit!98759 () Unit!98710)

(assert (=> b!4541270 (= lt!1715971 Unit!98759)))

(assert (=> b!4541270 (contains!13558 lt!1715961 (_1!28915 (h!56643 (_2!28916 lt!1715595))))))

(declare-fun lt!1715957 () Unit!98710)

(declare-fun Unit!98760 () Unit!98710)

(assert (=> b!4541270 (= lt!1715957 Unit!98760)))

(assert (=> b!4541270 call!316707))

(declare-fun lt!1715955 () Unit!98710)

(declare-fun Unit!98761 () Unit!98710)

(assert (=> b!4541270 (= lt!1715955 Unit!98761)))

(assert (=> b!4541270 (forall!10353 (toList!4411 lt!1715975) lambda!176421)))

(declare-fun lt!1715959 () Unit!98710)

(declare-fun Unit!98762 () Unit!98710)

(assert (=> b!4541270 (= lt!1715959 Unit!98762)))

(declare-fun lt!1715963 () Unit!98710)

(declare-fun Unit!98763 () Unit!98710)

(assert (=> b!4541270 (= lt!1715963 Unit!98763)))

(declare-fun lt!1715970 () Unit!98710)

(assert (=> b!4541270 (= lt!1715970 (addForallContainsKeyThenBeforeAdding!368 lt!1715591 lt!1715961 (_1!28915 (h!56643 (_2!28916 lt!1715595))) (_2!28915 (h!56643 (_2!28916 lt!1715595)))))))

(assert (=> b!4541270 (forall!10353 (toList!4411 lt!1715591) lambda!176421)))

(declare-fun lt!1715969 () Unit!98710)

(assert (=> b!4541270 (= lt!1715969 lt!1715970)))

(assert (=> b!4541270 (forall!10353 (toList!4411 lt!1715591) lambda!176421)))

(declare-fun lt!1715966 () Unit!98710)

(declare-fun Unit!98765 () Unit!98710)

(assert (=> b!4541270 (= lt!1715966 Unit!98765)))

(declare-fun res!1892734 () Bool)

(assert (=> b!4541270 (= res!1892734 call!316709)))

(declare-fun e!2829940 () Bool)

(assert (=> b!4541270 (=> (not res!1892734) (not e!2829940))))

(assert (=> b!4541270 e!2829940))

(declare-fun lt!1715956 () Unit!98710)

(declare-fun Unit!98766 () Unit!98710)

(assert (=> b!4541270 (= lt!1715956 Unit!98766)))

(declare-fun bm!316703 () Bool)

(assert (=> bm!316703 (= call!316708 (lemmaContainsAllItsOwnKeys!368 lt!1715591))))

(declare-fun bm!316704 () Bool)

(assert (=> bm!316704 (= call!316709 (forall!10353 (ite c!775685 (toList!4411 lt!1715591) (_2!28916 lt!1715595)) (ite c!775685 lambda!176419 lambda!176421)))))

(declare-fun b!4541271 () Bool)

(assert (=> b!4541271 (= e!2829940 (forall!10353 (toList!4411 lt!1715591) lambda!176421))))

(declare-fun b!4541272 () Bool)

(assert (=> b!4541272 (= e!2829939 (invariantList!1047 (toList!4411 lt!1715964)))))

(declare-fun b!4541273 () Bool)

(declare-fun res!1892733 () Bool)

(assert (=> b!4541273 (=> (not res!1892733) (not e!2829939))))

(assert (=> b!4541273 (= res!1892733 (forall!10353 (toList!4411 lt!1715591) lambda!176422))))

(assert (= (and d!1404019 c!775685) b!4541269))

(assert (= (and d!1404019 (not c!775685)) b!4541270))

(assert (= (and b!4541270 res!1892734) b!4541271))

(assert (= (or b!4541269 b!4541270) bm!316702))

(assert (= (or b!4541269 b!4541270) bm!316704))

(assert (= (or b!4541269 b!4541270) bm!316703))

(assert (= (and d!1404019 res!1892735) b!4541273))

(assert (= (and b!4541273 res!1892733) b!4541272))

(declare-fun m!5308925 () Bool)

(assert (=> b!4541273 m!5308925))

(declare-fun m!5308927 () Bool)

(assert (=> d!1404019 m!5308927))

(assert (=> d!1404019 m!5308253))

(declare-fun m!5308929 () Bool)

(assert (=> bm!316704 m!5308929))

(declare-fun m!5308931 () Bool)

(assert (=> bm!316703 m!5308931))

(declare-fun m!5308933 () Bool)

(assert (=> b!4541271 m!5308933))

(assert (=> bm!316702 m!5308929))

(declare-fun m!5308935 () Bool)

(assert (=> b!4541272 m!5308935))

(declare-fun m!5308937 () Bool)

(assert (=> b!4541270 m!5308937))

(declare-fun m!5308939 () Bool)

(assert (=> b!4541270 m!5308939))

(assert (=> b!4541270 m!5308933))

(declare-fun m!5308941 () Bool)

(assert (=> b!4541270 m!5308941))

(assert (=> b!4541270 m!5308933))

(declare-fun m!5308943 () Bool)

(assert (=> b!4541270 m!5308943))

(declare-fun m!5308945 () Bool)

(assert (=> b!4541270 m!5308945))

(declare-fun m!5308947 () Bool)

(assert (=> b!4541270 m!5308947))

(declare-fun m!5308949 () Bool)

(assert (=> b!4541270 m!5308949))

(declare-fun m!5308951 () Bool)

(assert (=> b!4541270 m!5308951))

(declare-fun m!5308953 () Bool)

(assert (=> b!4541270 m!5308953))

(assert (=> b!4541270 m!5308949))

(assert (=> b!4541270 m!5308947))

(assert (=> b!4540943 d!1404019))

(declare-fun bs!878818 () Bool)

(declare-fun d!1404021 () Bool)

(assert (= bs!878818 (and d!1404021 start!450812)))

(declare-fun lambda!176423 () Int)

(assert (=> bs!878818 (= lambda!176423 lambda!176299)))

(declare-fun bs!878819 () Bool)

(assert (= bs!878819 (and d!1404021 d!1403907)))

(assert (=> bs!878819 (not (= lambda!176423 lambda!176320))))

(declare-fun bs!878820 () Bool)

(assert (= bs!878820 (and d!1404021 d!1403839)))

(assert (=> bs!878820 (= lambda!176423 lambda!176314)))

(declare-fun bs!878821 () Bool)

(assert (= bs!878821 (and d!1404021 b!4540945)))

(assert (=> bs!878821 (not (= lambda!176423 lambda!176300))))

(declare-fun bs!878822 () Bool)

(assert (= bs!878822 (and d!1404021 d!1403993)))

(assert (=> bs!878822 (= lambda!176423 lambda!176417)))

(declare-fun bs!878823 () Bool)

(assert (= bs!878823 (and d!1404021 d!1403889)))

(assert (=> bs!878823 (= lambda!176423 lambda!176317)))

(declare-fun bs!878824 () Bool)

(assert (= bs!878824 (and d!1404021 d!1404005)))

(assert (=> bs!878824 (= lambda!176423 lambda!176418)))

(declare-fun bs!878825 () Bool)

(assert (= bs!878825 (and d!1404021 d!1403977)))

(assert (=> bs!878825 (= lambda!176423 lambda!176411)))

(declare-fun lt!1715976 () ListMap!3673)

(assert (=> d!1404021 (invariantList!1047 (toList!4411 lt!1715976))))

(declare-fun e!2829941 () ListMap!3673)

(assert (=> d!1404021 (= lt!1715976 e!2829941)))

(declare-fun c!775686 () Bool)

(assert (=> d!1404021 (= c!775686 ((_ is Cons!50761) (toList!4412 lt!1715597)))))

(assert (=> d!1404021 (forall!10351 (toList!4412 lt!1715597) lambda!176423)))

(assert (=> d!1404021 (= (extractMap!1258 (toList!4412 lt!1715597)) lt!1715976)))

(declare-fun b!4541274 () Bool)

(assert (=> b!4541274 (= e!2829941 (addToMapMapFromBucket!729 (_2!28916 (h!56644 (toList!4412 lt!1715597))) (extractMap!1258 (t!357847 (toList!4412 lt!1715597)))))))

(declare-fun b!4541275 () Bool)

(assert (=> b!4541275 (= e!2829941 (ListMap!3674 Nil!50760))))

(assert (= (and d!1404021 c!775686) b!4541274))

(assert (= (and d!1404021 (not c!775686)) b!4541275))

(declare-fun m!5308955 () Bool)

(assert (=> d!1404021 m!5308955))

(declare-fun m!5308957 () Bool)

(assert (=> d!1404021 m!5308957))

(declare-fun m!5308959 () Bool)

(assert (=> b!4541274 m!5308959))

(assert (=> b!4541274 m!5308959))

(declare-fun m!5308961 () Bool)

(assert (=> b!4541274 m!5308961))

(assert (=> b!4540943 d!1404021))

(declare-fun d!1404023 () Bool)

(declare-fun res!1892740 () Bool)

(declare-fun e!2829946 () Bool)

(assert (=> d!1404023 (=> res!1892740 e!2829946)))

(assert (=> d!1404023 (= res!1892740 ((_ is Nil!50761) (toList!4412 lm!1477)))))

(assert (=> d!1404023 (= (forall!10351 (toList!4412 lm!1477) lambda!176299) e!2829946)))

(declare-fun b!4541280 () Bool)

(declare-fun e!2829947 () Bool)

(assert (=> b!4541280 (= e!2829946 e!2829947)))

(declare-fun res!1892741 () Bool)

(assert (=> b!4541280 (=> (not res!1892741) (not e!2829947))))

(assert (=> b!4541280 (= res!1892741 (dynLambda!21220 lambda!176299 (h!56644 (toList!4412 lm!1477))))))

(declare-fun b!4541281 () Bool)

(assert (=> b!4541281 (= e!2829947 (forall!10351 (t!357847 (toList!4412 lm!1477)) lambda!176299))))

(assert (= (and d!1404023 (not res!1892740)) b!4541280))

(assert (= (and b!4541280 res!1892741) b!4541281))

(declare-fun b_lambda!158137 () Bool)

(assert (=> (not b_lambda!158137) (not b!4541280)))

(assert (=> b!4541280 m!5308505))

(declare-fun m!5308963 () Bool)

(assert (=> b!4541281 m!5308963))

(assert (=> start!450812 d!1404023))

(declare-fun d!1404025 () Bool)

(declare-fun isStrictlySorted!461 (List!50885) Bool)

(assert (=> d!1404025 (= (inv!66329 lm!1477) (isStrictlySorted!461 (toList!4412 lm!1477)))))

(declare-fun bs!878826 () Bool)

(assert (= bs!878826 d!1404025))

(declare-fun m!5308965 () Bool)

(assert (=> bs!878826 m!5308965))

(assert (=> start!450812 d!1404025))

(declare-fun d!1404027 () Bool)

(declare-fun e!2829952 () Bool)

(assert (=> d!1404027 e!2829952))

(declare-fun res!1892744 () Bool)

(assert (=> d!1404027 (=> res!1892744 e!2829952)))

(declare-fun lt!1715986 () Bool)

(assert (=> d!1404027 (= res!1892744 (not lt!1715986))))

(declare-fun lt!1715987 () Bool)

(assert (=> d!1404027 (= lt!1715986 lt!1715987)))

(declare-fun lt!1715988 () Unit!98710)

(declare-fun e!2829953 () Unit!98710)

(assert (=> d!1404027 (= lt!1715988 e!2829953)))

(declare-fun c!775689 () Bool)

(assert (=> d!1404027 (= c!775689 lt!1715987)))

(declare-fun containsKey!1885 (List!50885 (_ BitVec 64)) Bool)

(assert (=> d!1404027 (= lt!1715987 (containsKey!1885 (toList!4412 lt!1715585) hash!344))))

(assert (=> d!1404027 (= (contains!13557 lt!1715585 hash!344) lt!1715986)))

(declare-fun b!4541288 () Bool)

(declare-fun lt!1715985 () Unit!98710)

(assert (=> b!4541288 (= e!2829953 lt!1715985)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1056 (List!50885 (_ BitVec 64)) Unit!98710)

(assert (=> b!4541288 (= lt!1715985 (lemmaContainsKeyImpliesGetValueByKeyDefined!1056 (toList!4412 lt!1715585) hash!344))))

(declare-fun isDefined!8488 (Option!11211) Bool)

(assert (=> b!4541288 (isDefined!8488 (getValueByKey!1151 (toList!4412 lt!1715585) hash!344))))

(declare-fun b!4541289 () Bool)

(declare-fun Unit!98768 () Unit!98710)

(assert (=> b!4541289 (= e!2829953 Unit!98768)))

(declare-fun b!4541290 () Bool)

(assert (=> b!4541290 (= e!2829952 (isDefined!8488 (getValueByKey!1151 (toList!4412 lt!1715585) hash!344)))))

(assert (= (and d!1404027 c!775689) b!4541288))

(assert (= (and d!1404027 (not c!775689)) b!4541289))

(assert (= (and d!1404027 (not res!1892744)) b!4541290))

(declare-fun m!5308967 () Bool)

(assert (=> d!1404027 m!5308967))

(declare-fun m!5308969 () Bool)

(assert (=> b!4541288 m!5308969))

(assert (=> b!4541288 m!5308401))

(assert (=> b!4541288 m!5308401))

(declare-fun m!5308971 () Bool)

(assert (=> b!4541288 m!5308971))

(assert (=> b!4541290 m!5308401))

(assert (=> b!4541290 m!5308401))

(assert (=> b!4541290 m!5308971))

(assert (=> b!4540944 d!1404027))

(declare-fun d!1404029 () Bool)

(declare-fun tail!7808 (List!50885) List!50885)

(assert (=> d!1404029 (= (tail!7806 lm!1477) (ListLongMap!3044 (tail!7808 (toList!4412 lm!1477))))))

(declare-fun bs!878827 () Bool)

(assert (= bs!878827 d!1404029))

(declare-fun m!5308973 () Bool)

(assert (=> bs!878827 m!5308973))

(assert (=> b!4540944 d!1404029))

(declare-fun d!1404031 () Bool)

(declare-fun lt!1715991 () Bool)

(declare-fun content!8449 (List!50885) (InoxSet tuple2!51244))

(assert (=> d!1404031 (= lt!1715991 (select (content!8449 (t!357847 (toList!4412 lm!1477))) lt!1715577))))

(declare-fun e!2829958 () Bool)

(assert (=> d!1404031 (= lt!1715991 e!2829958)))

(declare-fun res!1892749 () Bool)

(assert (=> d!1404031 (=> (not res!1892749) (not e!2829958))))

(assert (=> d!1404031 (= res!1892749 ((_ is Cons!50761) (t!357847 (toList!4412 lm!1477))))))

(assert (=> d!1404031 (= (contains!13559 (t!357847 (toList!4412 lm!1477)) lt!1715577) lt!1715991)))

(declare-fun b!4541295 () Bool)

(declare-fun e!2829959 () Bool)

(assert (=> b!4541295 (= e!2829958 e!2829959)))

(declare-fun res!1892750 () Bool)

(assert (=> b!4541295 (=> res!1892750 e!2829959)))

(assert (=> b!4541295 (= res!1892750 (= (h!56644 (t!357847 (toList!4412 lm!1477))) lt!1715577))))

(declare-fun b!4541296 () Bool)

(assert (=> b!4541296 (= e!2829959 (contains!13559 (t!357847 (t!357847 (toList!4412 lm!1477))) lt!1715577))))

(assert (= (and d!1404031 res!1892749) b!4541295))

(assert (= (and b!4541295 (not res!1892750)) b!4541296))

(declare-fun m!5308975 () Bool)

(assert (=> d!1404031 m!5308975))

(declare-fun m!5308977 () Bool)

(assert (=> d!1404031 m!5308977))

(declare-fun m!5308979 () Bool)

(assert (=> b!4541296 m!5308979))

(assert (=> b!4540966 d!1404031))

(declare-fun b!4541313 () Bool)

(declare-fun e!2829970 () Bool)

(declare-fun lt!1715994 () Option!11209)

(declare-fun contains!13562 (List!50884 tuple2!51242) Bool)

(assert (=> b!4541313 (= e!2829970 (contains!13562 (_2!28916 lt!1715595) (get!16693 lt!1715994)))))

(declare-fun b!4541314 () Bool)

(declare-fun e!2829973 () Bool)

(assert (=> b!4541314 (= e!2829973 e!2829970)))

(declare-fun res!1892760 () Bool)

(assert (=> b!4541314 (=> (not res!1892760) (not e!2829970))))

(declare-fun isDefined!8489 (Option!11209) Bool)

(assert (=> b!4541314 (= res!1892760 (isDefined!8489 lt!1715994))))

(declare-fun d!1404033 () Bool)

(assert (=> d!1404033 e!2829973))

(declare-fun res!1892761 () Bool)

(assert (=> d!1404033 (=> res!1892761 e!2829973)))

(declare-fun e!2829974 () Bool)

(assert (=> d!1404033 (= res!1892761 e!2829974)))

(declare-fun res!1892759 () Bool)

(assert (=> d!1404033 (=> (not res!1892759) (not e!2829974))))

(declare-fun isEmpty!28755 (Option!11209) Bool)

(assert (=> d!1404033 (= res!1892759 (isEmpty!28755 lt!1715994))))

(declare-fun e!2829971 () Option!11209)

(assert (=> d!1404033 (= lt!1715994 e!2829971)))

(declare-fun c!775694 () Bool)

(assert (=> d!1404033 (= c!775694 (and ((_ is Cons!50760) (_2!28916 lt!1715595)) (= (_1!28915 (h!56643 (_2!28916 lt!1715595))) key!3287)))))

(assert (=> d!1404033 (noDuplicateKeys!1202 (_2!28916 lt!1715595))))

(assert (=> d!1404033 (= (getPair!218 (_2!28916 lt!1715595) key!3287) lt!1715994)))

(declare-fun b!4541315 () Bool)

(assert (=> b!4541315 (= e!2829974 (not (containsKey!1882 (_2!28916 lt!1715595) key!3287)))))

(declare-fun b!4541316 () Bool)

(assert (=> b!4541316 (= e!2829971 (Some!11208 (h!56643 (_2!28916 lt!1715595))))))

(declare-fun b!4541317 () Bool)

(declare-fun e!2829972 () Option!11209)

(assert (=> b!4541317 (= e!2829972 None!11208)))

(declare-fun b!4541318 () Bool)

(declare-fun res!1892762 () Bool)

(assert (=> b!4541318 (=> (not res!1892762) (not e!2829970))))

(assert (=> b!4541318 (= res!1892762 (= (_1!28915 (get!16693 lt!1715994)) key!3287))))

(declare-fun b!4541319 () Bool)

(assert (=> b!4541319 (= e!2829971 e!2829972)))

(declare-fun c!775695 () Bool)

(assert (=> b!4541319 (= c!775695 ((_ is Cons!50760) (_2!28916 lt!1715595)))))

(declare-fun b!4541320 () Bool)

(assert (=> b!4541320 (= e!2829972 (getPair!218 (t!357846 (_2!28916 lt!1715595)) key!3287))))

(assert (= (and d!1404033 c!775694) b!4541316))

(assert (= (and d!1404033 (not c!775694)) b!4541319))

(assert (= (and b!4541319 c!775695) b!4541320))

(assert (= (and b!4541319 (not c!775695)) b!4541317))

(assert (= (and d!1404033 res!1892759) b!4541315))

(assert (= (and d!1404033 (not res!1892761)) b!4541314))

(assert (= (and b!4541314 res!1892760) b!4541318))

(assert (= (and b!4541318 res!1892762) b!4541313))

(declare-fun m!5308981 () Bool)

(assert (=> b!4541318 m!5308981))

(assert (=> b!4541313 m!5308981))

(assert (=> b!4541313 m!5308981))

(declare-fun m!5308983 () Bool)

(assert (=> b!4541313 m!5308983))

(declare-fun m!5308985 () Bool)

(assert (=> b!4541320 m!5308985))

(assert (=> b!4541315 m!5308147))

(declare-fun m!5308987 () Bool)

(assert (=> d!1404033 m!5308987))

(assert (=> d!1404033 m!5308253))

(declare-fun m!5308989 () Bool)

(assert (=> b!4541314 m!5308989))

(assert (=> b!4540945 d!1404033))

(declare-fun d!1404035 () Bool)

(assert (=> d!1404035 (dynLambda!21220 lambda!176300 (h!56644 (toList!4412 lm!1477)))))

(declare-fun lt!1715995 () Unit!98710)

(assert (=> d!1404035 (= lt!1715995 (choose!29925 (toList!4412 lm!1477) lambda!176300 (h!56644 (toList!4412 lm!1477))))))

(declare-fun e!2829975 () Bool)

(assert (=> d!1404035 e!2829975))

(declare-fun res!1892763 () Bool)

(assert (=> d!1404035 (=> (not res!1892763) (not e!2829975))))

(assert (=> d!1404035 (= res!1892763 (forall!10351 (toList!4412 lm!1477) lambda!176300))))

(assert (=> d!1404035 (= (forallContained!2614 (toList!4412 lm!1477) lambda!176300 (h!56644 (toList!4412 lm!1477))) lt!1715995)))

(declare-fun b!4541321 () Bool)

(assert (=> b!4541321 (= e!2829975 (contains!13559 (toList!4412 lm!1477) (h!56644 (toList!4412 lm!1477))))))

(assert (= (and d!1404035 res!1892763) b!4541321))

(declare-fun b_lambda!158139 () Bool)

(assert (=> (not b_lambda!158139) (not d!1404035)))

(declare-fun m!5308991 () Bool)

(assert (=> d!1404035 m!5308991))

(declare-fun m!5308993 () Bool)

(assert (=> d!1404035 m!5308993))

(declare-fun m!5308995 () Bool)

(assert (=> d!1404035 m!5308995))

(assert (=> b!4541321 m!5308509))

(assert (=> b!4540945 d!1404035))

(declare-fun d!1404037 () Bool)

(declare-fun dynLambda!21221 (Int tuple2!51242) Bool)

(assert (=> d!1404037 (dynLambda!21221 lambda!176301 (tuple2!51243 key!3287 (_2!28915 (get!16693 lt!1715587))))))

(declare-fun lt!1715998 () Unit!98710)

(declare-fun choose!29931 (List!50884 Int tuple2!51242) Unit!98710)

(assert (=> d!1404037 (= lt!1715998 (choose!29931 (_2!28916 (h!56644 (toList!4412 lm!1477))) lambda!176301 (tuple2!51243 key!3287 (_2!28915 (get!16693 lt!1715587)))))))

(declare-fun e!2829978 () Bool)

(assert (=> d!1404037 e!2829978))

(declare-fun res!1892766 () Bool)

(assert (=> d!1404037 (=> (not res!1892766) (not e!2829978))))

(assert (=> d!1404037 (= res!1892766 (forall!10353 (_2!28916 (h!56644 (toList!4412 lm!1477))) lambda!176301))))

(assert (=> d!1404037 (= (forallContained!2615 (_2!28916 (h!56644 (toList!4412 lm!1477))) lambda!176301 (tuple2!51243 key!3287 (_2!28915 (get!16693 lt!1715587)))) lt!1715998)))

(declare-fun b!4541324 () Bool)

(assert (=> b!4541324 (= e!2829978 (contains!13562 (_2!28916 (h!56644 (toList!4412 lm!1477))) (tuple2!51243 key!3287 (_2!28915 (get!16693 lt!1715587)))))))

(assert (= (and d!1404037 res!1892766) b!4541324))

(declare-fun b_lambda!158141 () Bool)

(assert (=> (not b_lambda!158141) (not d!1404037)))

(declare-fun m!5308997 () Bool)

(assert (=> d!1404037 m!5308997))

(declare-fun m!5308999 () Bool)

(assert (=> d!1404037 m!5308999))

(declare-fun m!5309001 () Bool)

(assert (=> d!1404037 m!5309001))

(declare-fun m!5309003 () Bool)

(assert (=> b!4541324 m!5309003))

(assert (=> b!4540945 d!1404037))

(declare-fun d!1404039 () Bool)

(assert (=> d!1404039 (= (get!16693 lt!1715587) (v!44910 lt!1715587))))

(assert (=> b!4540945 d!1404039))

(declare-fun b!4541343 () Bool)

(declare-fun e!2829994 () Unit!98710)

(declare-fun Unit!98769 () Unit!98710)

(assert (=> b!4541343 (= e!2829994 Unit!98769)))

(declare-fun b!4541344 () Bool)

(assert (=> b!4541344 false))

(declare-fun lt!1716018 () Unit!98710)

(declare-fun lt!1716015 () Unit!98710)

(assert (=> b!4541344 (= lt!1716018 lt!1716015)))

(declare-fun containsKey!1886 (List!50884 K!12145) Bool)

(assert (=> b!4541344 (containsKey!1886 (toList!4411 lt!1715594) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!494 (List!50884 K!12145) Unit!98710)

(assert (=> b!4541344 (= lt!1716015 (lemmaInGetKeysListThenContainsKey!494 (toList!4411 lt!1715594) key!3287))))

(declare-fun Unit!98770 () Unit!98710)

(assert (=> b!4541344 (= e!2829994 Unit!98770)))

(declare-fun d!1404041 () Bool)

(declare-fun e!2829995 () Bool)

(assert (=> d!1404041 e!2829995))

(declare-fun res!1892774 () Bool)

(assert (=> d!1404041 (=> res!1892774 e!2829995)))

(declare-fun e!2829996 () Bool)

(assert (=> d!1404041 (= res!1892774 e!2829996)))

(declare-fun res!1892773 () Bool)

(assert (=> d!1404041 (=> (not res!1892773) (not e!2829996))))

(declare-fun lt!1716017 () Bool)

(assert (=> d!1404041 (= res!1892773 (not lt!1716017))))

(declare-fun lt!1716021 () Bool)

(assert (=> d!1404041 (= lt!1716017 lt!1716021)))

(declare-fun lt!1716020 () Unit!98710)

(declare-fun e!2829992 () Unit!98710)

(assert (=> d!1404041 (= lt!1716020 e!2829992)))

(declare-fun c!775704 () Bool)

(assert (=> d!1404041 (= c!775704 lt!1716021)))

(assert (=> d!1404041 (= lt!1716021 (containsKey!1886 (toList!4411 lt!1715594) key!3287))))

(assert (=> d!1404041 (= (contains!13558 lt!1715594 key!3287) lt!1716017)))

(declare-fun bm!316707 () Bool)

(declare-fun call!316712 () Bool)

(declare-fun e!2829991 () List!50887)

(declare-fun contains!13563 (List!50887 K!12145) Bool)

(assert (=> bm!316707 (= call!316712 (contains!13563 e!2829991 key!3287))))

(declare-fun c!775703 () Bool)

(assert (=> bm!316707 (= c!775703 c!775704)))

(declare-fun b!4541345 () Bool)

(declare-fun e!2829993 () Bool)

(assert (=> b!4541345 (= e!2829993 (contains!13563 (keys!17666 lt!1715594) key!3287))))

(declare-fun b!4541346 () Bool)

(assert (=> b!4541346 (= e!2829992 e!2829994)))

(declare-fun c!775702 () Bool)

(assert (=> b!4541346 (= c!775702 call!316712)))

(declare-fun b!4541347 () Bool)

(declare-fun getKeysList!495 (List!50884) List!50887)

(assert (=> b!4541347 (= e!2829991 (getKeysList!495 (toList!4411 lt!1715594)))))

(declare-fun b!4541348 () Bool)

(declare-fun lt!1716016 () Unit!98710)

(assert (=> b!4541348 (= e!2829992 lt!1716016)))

(declare-fun lt!1716022 () Unit!98710)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1057 (List!50884 K!12145) Unit!98710)

(assert (=> b!4541348 (= lt!1716022 (lemmaContainsKeyImpliesGetValueByKeyDefined!1057 (toList!4411 lt!1715594) key!3287))))

(declare-datatypes ((Option!11213 0))(
  ( (None!11212) (Some!11212 (v!44918 V!12391)) )
))
(declare-fun isDefined!8490 (Option!11213) Bool)

(declare-fun getValueByKey!1153 (List!50884 K!12145) Option!11213)

(assert (=> b!4541348 (isDefined!8490 (getValueByKey!1153 (toList!4411 lt!1715594) key!3287))))

(declare-fun lt!1716019 () Unit!98710)

(assert (=> b!4541348 (= lt!1716019 lt!1716022)))

(declare-fun lemmaInListThenGetKeysListContains!491 (List!50884 K!12145) Unit!98710)

(assert (=> b!4541348 (= lt!1716016 (lemmaInListThenGetKeysListContains!491 (toList!4411 lt!1715594) key!3287))))

(assert (=> b!4541348 call!316712))

(declare-fun b!4541349 () Bool)

(assert (=> b!4541349 (= e!2829995 e!2829993)))

(declare-fun res!1892775 () Bool)

(assert (=> b!4541349 (=> (not res!1892775) (not e!2829993))))

(assert (=> b!4541349 (= res!1892775 (isDefined!8490 (getValueByKey!1153 (toList!4411 lt!1715594) key!3287)))))

(declare-fun b!4541350 () Bool)

(assert (=> b!4541350 (= e!2829996 (not (contains!13563 (keys!17666 lt!1715594) key!3287)))))

(declare-fun b!4541351 () Bool)

(assert (=> b!4541351 (= e!2829991 (keys!17666 lt!1715594))))

(assert (= (and d!1404041 c!775704) b!4541348))

(assert (= (and d!1404041 (not c!775704)) b!4541346))

(assert (= (and b!4541346 c!775702) b!4541344))

(assert (= (and b!4541346 (not c!775702)) b!4541343))

(assert (= (or b!4541348 b!4541346) bm!316707))

(assert (= (and bm!316707 c!775703) b!4541347))

(assert (= (and bm!316707 (not c!775703)) b!4541351))

(assert (= (and d!1404041 res!1892773) b!4541350))

(assert (= (and d!1404041 (not res!1892774)) b!4541349))

(assert (= (and b!4541349 res!1892775) b!4541345))

(declare-fun m!5309005 () Bool)

(assert (=> b!4541347 m!5309005))

(declare-fun m!5309007 () Bool)

(assert (=> bm!316707 m!5309007))

(declare-fun m!5309009 () Bool)

(assert (=> b!4541351 m!5309009))

(declare-fun m!5309011 () Bool)

(assert (=> b!4541348 m!5309011))

(declare-fun m!5309013 () Bool)

(assert (=> b!4541348 m!5309013))

(assert (=> b!4541348 m!5309013))

(declare-fun m!5309015 () Bool)

(assert (=> b!4541348 m!5309015))

(declare-fun m!5309017 () Bool)

(assert (=> b!4541348 m!5309017))

(assert (=> b!4541350 m!5309009))

(assert (=> b!4541350 m!5309009))

(declare-fun m!5309019 () Bool)

(assert (=> b!4541350 m!5309019))

(assert (=> b!4541349 m!5309013))

(assert (=> b!4541349 m!5309013))

(assert (=> b!4541349 m!5309015))

(declare-fun m!5309021 () Bool)

(assert (=> b!4541344 m!5309021))

(declare-fun m!5309023 () Bool)

(assert (=> b!4541344 m!5309023))

(assert (=> d!1404041 m!5309021))

(assert (=> b!4541345 m!5309009))

(assert (=> b!4541345 m!5309009))

(assert (=> b!4541345 m!5309019))

(assert (=> b!4540967 d!1404041))

(declare-fun bs!878828 () Bool)

(declare-fun d!1404043 () Bool)

(assert (= bs!878828 (and d!1404043 start!450812)))

(declare-fun lambda!176424 () Int)

(assert (=> bs!878828 (= lambda!176424 lambda!176299)))

(declare-fun bs!878829 () Bool)

(assert (= bs!878829 (and d!1404043 d!1403907)))

(assert (=> bs!878829 (not (= lambda!176424 lambda!176320))))

(declare-fun bs!878830 () Bool)

(assert (= bs!878830 (and d!1404043 d!1403839)))

(assert (=> bs!878830 (= lambda!176424 lambda!176314)))

(declare-fun bs!878831 () Bool)

(assert (= bs!878831 (and d!1404043 b!4540945)))

(assert (=> bs!878831 (not (= lambda!176424 lambda!176300))))

(declare-fun bs!878832 () Bool)

(assert (= bs!878832 (and d!1404043 d!1403993)))

(assert (=> bs!878832 (= lambda!176424 lambda!176417)))

(declare-fun bs!878833 () Bool)

(assert (= bs!878833 (and d!1404043 d!1403889)))

(assert (=> bs!878833 (= lambda!176424 lambda!176317)))

(declare-fun bs!878834 () Bool)

(assert (= bs!878834 (and d!1404043 d!1404021)))

(assert (=> bs!878834 (= lambda!176424 lambda!176423)))

(declare-fun bs!878835 () Bool)

(assert (= bs!878835 (and d!1404043 d!1404005)))

(assert (=> bs!878835 (= lambda!176424 lambda!176418)))

(declare-fun bs!878836 () Bool)

(assert (= bs!878836 (and d!1404043 d!1403977)))

(assert (=> bs!878836 (= lambda!176424 lambda!176411)))

(declare-fun lt!1716023 () ListMap!3673)

(assert (=> d!1404043 (invariantList!1047 (toList!4411 lt!1716023))))

(declare-fun e!2829997 () ListMap!3673)

(assert (=> d!1404043 (= lt!1716023 e!2829997)))

(declare-fun c!775705 () Bool)

(assert (=> d!1404043 (= c!775705 ((_ is Cons!50761) (toList!4412 lm!1477)))))

(assert (=> d!1404043 (forall!10351 (toList!4412 lm!1477) lambda!176424)))

(assert (=> d!1404043 (= (extractMap!1258 (toList!4412 lm!1477)) lt!1716023)))

(declare-fun b!4541352 () Bool)

(assert (=> b!4541352 (= e!2829997 (addToMapMapFromBucket!729 (_2!28916 (h!56644 (toList!4412 lm!1477))) (extractMap!1258 (t!357847 (toList!4412 lm!1477)))))))

(declare-fun b!4541353 () Bool)

(assert (=> b!4541353 (= e!2829997 (ListMap!3674 Nil!50760))))

(assert (= (and d!1404043 c!775705) b!4541352))

(assert (= (and d!1404043 (not c!775705)) b!4541353))

(declare-fun m!5309025 () Bool)

(assert (=> d!1404043 m!5309025))

(declare-fun m!5309027 () Bool)

(assert (=> d!1404043 m!5309027))

(assert (=> b!4541352 m!5308163))

(assert (=> b!4541352 m!5308163))

(declare-fun m!5309029 () Bool)

(assert (=> b!4541352 m!5309029))

(assert (=> b!4540967 d!1404043))

(declare-fun bs!878837 () Bool)

(declare-fun d!1404045 () Bool)

(assert (= bs!878837 (and d!1404045 start!450812)))

(declare-fun lambda!176425 () Int)

(assert (=> bs!878837 (= lambda!176425 lambda!176299)))

(declare-fun bs!878838 () Bool)

(assert (= bs!878838 (and d!1404045 d!1403907)))

(assert (=> bs!878838 (not (= lambda!176425 lambda!176320))))

(declare-fun bs!878839 () Bool)

(assert (= bs!878839 (and d!1404045 d!1403839)))

(assert (=> bs!878839 (= lambda!176425 lambda!176314)))

(declare-fun bs!878840 () Bool)

(assert (= bs!878840 (and d!1404045 b!4540945)))

(assert (=> bs!878840 (not (= lambda!176425 lambda!176300))))

(declare-fun bs!878841 () Bool)

(assert (= bs!878841 (and d!1404045 d!1404043)))

(assert (=> bs!878841 (= lambda!176425 lambda!176424)))

(declare-fun bs!878842 () Bool)

(assert (= bs!878842 (and d!1404045 d!1403993)))

(assert (=> bs!878842 (= lambda!176425 lambda!176417)))

(declare-fun bs!878843 () Bool)

(assert (= bs!878843 (and d!1404045 d!1403889)))

(assert (=> bs!878843 (= lambda!176425 lambda!176317)))

(declare-fun bs!878844 () Bool)

(assert (= bs!878844 (and d!1404045 d!1404021)))

(assert (=> bs!878844 (= lambda!176425 lambda!176423)))

(declare-fun bs!878845 () Bool)

(assert (= bs!878845 (and d!1404045 d!1404005)))

(assert (=> bs!878845 (= lambda!176425 lambda!176418)))

(declare-fun bs!878846 () Bool)

(assert (= bs!878846 (and d!1404045 d!1403977)))

(assert (=> bs!878846 (= lambda!176425 lambda!176411)))

(declare-fun lt!1716024 () ListMap!3673)

(assert (=> d!1404045 (invariantList!1047 (toList!4411 lt!1716024))))

(declare-fun e!2829998 () ListMap!3673)

(assert (=> d!1404045 (= lt!1716024 e!2829998)))

(declare-fun c!775706 () Bool)

(assert (=> d!1404045 (= c!775706 ((_ is Cons!50761) (t!357847 (toList!4412 lm!1477))))))

(assert (=> d!1404045 (forall!10351 (t!357847 (toList!4412 lm!1477)) lambda!176425)))

(assert (=> d!1404045 (= (extractMap!1258 (t!357847 (toList!4412 lm!1477))) lt!1716024)))

(declare-fun b!4541354 () Bool)

(assert (=> b!4541354 (= e!2829998 (addToMapMapFromBucket!729 (_2!28916 (h!56644 (t!357847 (toList!4412 lm!1477)))) (extractMap!1258 (t!357847 (t!357847 (toList!4412 lm!1477))))))))

(declare-fun b!4541355 () Bool)

(assert (=> b!4541355 (= e!2829998 (ListMap!3674 Nil!50760))))

(assert (= (and d!1404045 c!775706) b!4541354))

(assert (= (and d!1404045 (not c!775706)) b!4541355))

(declare-fun m!5309031 () Bool)

(assert (=> d!1404045 m!5309031))

(declare-fun m!5309033 () Bool)

(assert (=> d!1404045 m!5309033))

(declare-fun m!5309035 () Bool)

(assert (=> b!4541354 m!5309035))

(assert (=> b!4541354 m!5309035))

(declare-fun m!5309037 () Bool)

(assert (=> b!4541354 m!5309037))

(assert (=> b!4540946 d!1404045))

(declare-fun b!4541356 () Bool)

(declare-fun e!2830002 () Unit!98710)

(declare-fun Unit!98782 () Unit!98710)

(assert (=> b!4541356 (= e!2830002 Unit!98782)))

(declare-fun b!4541357 () Bool)

(assert (=> b!4541357 false))

(declare-fun lt!1716028 () Unit!98710)

(declare-fun lt!1716025 () Unit!98710)

(assert (=> b!4541357 (= lt!1716028 lt!1716025)))

(assert (=> b!4541357 (containsKey!1886 (toList!4411 lt!1715578) key!3287)))

(assert (=> b!4541357 (= lt!1716025 (lemmaInGetKeysListThenContainsKey!494 (toList!4411 lt!1715578) key!3287))))

(declare-fun Unit!98783 () Unit!98710)

(assert (=> b!4541357 (= e!2830002 Unit!98783)))

(declare-fun d!1404047 () Bool)

(declare-fun e!2830003 () Bool)

(assert (=> d!1404047 e!2830003))

(declare-fun res!1892777 () Bool)

(assert (=> d!1404047 (=> res!1892777 e!2830003)))

(declare-fun e!2830004 () Bool)

(assert (=> d!1404047 (= res!1892777 e!2830004)))

(declare-fun res!1892776 () Bool)

(assert (=> d!1404047 (=> (not res!1892776) (not e!2830004))))

(declare-fun lt!1716027 () Bool)

(assert (=> d!1404047 (= res!1892776 (not lt!1716027))))

(declare-fun lt!1716031 () Bool)

(assert (=> d!1404047 (= lt!1716027 lt!1716031)))

(declare-fun lt!1716030 () Unit!98710)

(declare-fun e!2830000 () Unit!98710)

(assert (=> d!1404047 (= lt!1716030 e!2830000)))

(declare-fun c!775709 () Bool)

(assert (=> d!1404047 (= c!775709 lt!1716031)))

(assert (=> d!1404047 (= lt!1716031 (containsKey!1886 (toList!4411 lt!1715578) key!3287))))

(assert (=> d!1404047 (= (contains!13558 lt!1715578 key!3287) lt!1716027)))

(declare-fun bm!316708 () Bool)

(declare-fun call!316713 () Bool)

(declare-fun e!2829999 () List!50887)

(assert (=> bm!316708 (= call!316713 (contains!13563 e!2829999 key!3287))))

(declare-fun c!775708 () Bool)

(assert (=> bm!316708 (= c!775708 c!775709)))

(declare-fun b!4541358 () Bool)

(declare-fun e!2830001 () Bool)

(assert (=> b!4541358 (= e!2830001 (contains!13563 (keys!17666 lt!1715578) key!3287))))

(declare-fun b!4541359 () Bool)

(assert (=> b!4541359 (= e!2830000 e!2830002)))

(declare-fun c!775707 () Bool)

(assert (=> b!4541359 (= c!775707 call!316713)))

(declare-fun b!4541360 () Bool)

(assert (=> b!4541360 (= e!2829999 (getKeysList!495 (toList!4411 lt!1715578)))))

(declare-fun b!4541361 () Bool)

(declare-fun lt!1716026 () Unit!98710)

(assert (=> b!4541361 (= e!2830000 lt!1716026)))

(declare-fun lt!1716032 () Unit!98710)

(assert (=> b!4541361 (= lt!1716032 (lemmaContainsKeyImpliesGetValueByKeyDefined!1057 (toList!4411 lt!1715578) key!3287))))

(assert (=> b!4541361 (isDefined!8490 (getValueByKey!1153 (toList!4411 lt!1715578) key!3287))))

(declare-fun lt!1716029 () Unit!98710)

(assert (=> b!4541361 (= lt!1716029 lt!1716032)))

(assert (=> b!4541361 (= lt!1716026 (lemmaInListThenGetKeysListContains!491 (toList!4411 lt!1715578) key!3287))))

(assert (=> b!4541361 call!316713))

(declare-fun b!4541362 () Bool)

(assert (=> b!4541362 (= e!2830003 e!2830001)))

(declare-fun res!1892778 () Bool)

(assert (=> b!4541362 (=> (not res!1892778) (not e!2830001))))

(assert (=> b!4541362 (= res!1892778 (isDefined!8490 (getValueByKey!1153 (toList!4411 lt!1715578) key!3287)))))

(declare-fun b!4541363 () Bool)

(assert (=> b!4541363 (= e!2830004 (not (contains!13563 (keys!17666 lt!1715578) key!3287)))))

(declare-fun b!4541364 () Bool)

(assert (=> b!4541364 (= e!2829999 (keys!17666 lt!1715578))))

(assert (= (and d!1404047 c!775709) b!4541361))

(assert (= (and d!1404047 (not c!775709)) b!4541359))

(assert (= (and b!4541359 c!775707) b!4541357))

(assert (= (and b!4541359 (not c!775707)) b!4541356))

(assert (= (or b!4541361 b!4541359) bm!316708))

(assert (= (and bm!316708 c!775708) b!4541360))

(assert (= (and bm!316708 (not c!775708)) b!4541364))

(assert (= (and d!1404047 res!1892776) b!4541363))

(assert (= (and d!1404047 (not res!1892777)) b!4541362))

(assert (= (and b!4541362 res!1892778) b!4541358))

(declare-fun m!5309039 () Bool)

(assert (=> b!4541360 m!5309039))

(declare-fun m!5309041 () Bool)

(assert (=> bm!316708 m!5309041))

(assert (=> b!4541364 m!5308907))

(declare-fun m!5309043 () Bool)

(assert (=> b!4541361 m!5309043))

(declare-fun m!5309045 () Bool)

(assert (=> b!4541361 m!5309045))

(assert (=> b!4541361 m!5309045))

(declare-fun m!5309047 () Bool)

(assert (=> b!4541361 m!5309047))

(declare-fun m!5309049 () Bool)

(assert (=> b!4541361 m!5309049))

(assert (=> b!4541363 m!5308907))

(assert (=> b!4541363 m!5308907))

(declare-fun m!5309051 () Bool)

(assert (=> b!4541363 m!5309051))

(assert (=> b!4541362 m!5309045))

(assert (=> b!4541362 m!5309045))

(assert (=> b!4541362 m!5309047))

(declare-fun m!5309053 () Bool)

(assert (=> b!4541357 m!5309053))

(declare-fun m!5309055 () Bool)

(assert (=> b!4541357 m!5309055))

(assert (=> d!1404047 m!5309053))

(assert (=> b!4541358 m!5308907))

(assert (=> b!4541358 m!5308907))

(assert (=> b!4541358 m!5309051))

(assert (=> b!4540946 d!1404047))

(declare-fun b!4541365 () Bool)

(declare-fun e!2830008 () Unit!98710)

(declare-fun Unit!98784 () Unit!98710)

(assert (=> b!4541365 (= e!2830008 Unit!98784)))

(declare-fun b!4541366 () Bool)

(assert (=> b!4541366 false))

(declare-fun lt!1716036 () Unit!98710)

(declare-fun lt!1716033 () Unit!98710)

(assert (=> b!4541366 (= lt!1716036 lt!1716033)))

(assert (=> b!4541366 (containsKey!1886 (toList!4411 (extractMap!1258 (t!357847 (toList!4412 lm!1477)))) key!3287)))

(assert (=> b!4541366 (= lt!1716033 (lemmaInGetKeysListThenContainsKey!494 (toList!4411 (extractMap!1258 (t!357847 (toList!4412 lm!1477)))) key!3287))))

(declare-fun Unit!98785 () Unit!98710)

(assert (=> b!4541366 (= e!2830008 Unit!98785)))

(declare-fun d!1404049 () Bool)

(declare-fun e!2830009 () Bool)

(assert (=> d!1404049 e!2830009))

(declare-fun res!1892780 () Bool)

(assert (=> d!1404049 (=> res!1892780 e!2830009)))

(declare-fun e!2830010 () Bool)

(assert (=> d!1404049 (= res!1892780 e!2830010)))

(declare-fun res!1892779 () Bool)

(assert (=> d!1404049 (=> (not res!1892779) (not e!2830010))))

(declare-fun lt!1716035 () Bool)

(assert (=> d!1404049 (= res!1892779 (not lt!1716035))))

(declare-fun lt!1716039 () Bool)

(assert (=> d!1404049 (= lt!1716035 lt!1716039)))

(declare-fun lt!1716038 () Unit!98710)

(declare-fun e!2830006 () Unit!98710)

(assert (=> d!1404049 (= lt!1716038 e!2830006)))

(declare-fun c!775712 () Bool)

(assert (=> d!1404049 (= c!775712 lt!1716039)))

(assert (=> d!1404049 (= lt!1716039 (containsKey!1886 (toList!4411 (extractMap!1258 (t!357847 (toList!4412 lm!1477)))) key!3287))))

(assert (=> d!1404049 (= (contains!13558 (extractMap!1258 (t!357847 (toList!4412 lm!1477))) key!3287) lt!1716035)))

(declare-fun bm!316709 () Bool)

(declare-fun call!316714 () Bool)

(declare-fun e!2830005 () List!50887)

(assert (=> bm!316709 (= call!316714 (contains!13563 e!2830005 key!3287))))

(declare-fun c!775711 () Bool)

(assert (=> bm!316709 (= c!775711 c!775712)))

(declare-fun b!4541367 () Bool)

(declare-fun e!2830007 () Bool)

(assert (=> b!4541367 (= e!2830007 (contains!13563 (keys!17666 (extractMap!1258 (t!357847 (toList!4412 lm!1477)))) key!3287))))

(declare-fun b!4541368 () Bool)

(assert (=> b!4541368 (= e!2830006 e!2830008)))

(declare-fun c!775710 () Bool)

(assert (=> b!4541368 (= c!775710 call!316714)))

(declare-fun b!4541369 () Bool)

(assert (=> b!4541369 (= e!2830005 (getKeysList!495 (toList!4411 (extractMap!1258 (t!357847 (toList!4412 lm!1477))))))))

(declare-fun b!4541370 () Bool)

(declare-fun lt!1716034 () Unit!98710)

(assert (=> b!4541370 (= e!2830006 lt!1716034)))

(declare-fun lt!1716040 () Unit!98710)

(assert (=> b!4541370 (= lt!1716040 (lemmaContainsKeyImpliesGetValueByKeyDefined!1057 (toList!4411 (extractMap!1258 (t!357847 (toList!4412 lm!1477)))) key!3287))))

(assert (=> b!4541370 (isDefined!8490 (getValueByKey!1153 (toList!4411 (extractMap!1258 (t!357847 (toList!4412 lm!1477)))) key!3287))))

(declare-fun lt!1716037 () Unit!98710)

(assert (=> b!4541370 (= lt!1716037 lt!1716040)))

(assert (=> b!4541370 (= lt!1716034 (lemmaInListThenGetKeysListContains!491 (toList!4411 (extractMap!1258 (t!357847 (toList!4412 lm!1477)))) key!3287))))

(assert (=> b!4541370 call!316714))

(declare-fun b!4541371 () Bool)

(assert (=> b!4541371 (= e!2830009 e!2830007)))

(declare-fun res!1892781 () Bool)

(assert (=> b!4541371 (=> (not res!1892781) (not e!2830007))))

(assert (=> b!4541371 (= res!1892781 (isDefined!8490 (getValueByKey!1153 (toList!4411 (extractMap!1258 (t!357847 (toList!4412 lm!1477)))) key!3287)))))

(declare-fun b!4541372 () Bool)

(assert (=> b!4541372 (= e!2830010 (not (contains!13563 (keys!17666 (extractMap!1258 (t!357847 (toList!4412 lm!1477)))) key!3287)))))

(declare-fun b!4541373 () Bool)

(assert (=> b!4541373 (= e!2830005 (keys!17666 (extractMap!1258 (t!357847 (toList!4412 lm!1477)))))))

(assert (= (and d!1404049 c!775712) b!4541370))

(assert (= (and d!1404049 (not c!775712)) b!4541368))

(assert (= (and b!4541368 c!775710) b!4541366))

(assert (= (and b!4541368 (not c!775710)) b!4541365))

(assert (= (or b!4541370 b!4541368) bm!316709))

(assert (= (and bm!316709 c!775711) b!4541369))

(assert (= (and bm!316709 (not c!775711)) b!4541373))

(assert (= (and d!1404049 res!1892779) b!4541372))

(assert (= (and d!1404049 (not res!1892780)) b!4541371))

(assert (= (and b!4541371 res!1892781) b!4541367))

(declare-fun m!5309057 () Bool)

(assert (=> b!4541369 m!5309057))

(declare-fun m!5309059 () Bool)

(assert (=> bm!316709 m!5309059))

(assert (=> b!4541373 m!5308163))

(declare-fun m!5309061 () Bool)

(assert (=> b!4541373 m!5309061))

(declare-fun m!5309063 () Bool)

(assert (=> b!4541370 m!5309063))

(declare-fun m!5309065 () Bool)

(assert (=> b!4541370 m!5309065))

(assert (=> b!4541370 m!5309065))

(declare-fun m!5309067 () Bool)

(assert (=> b!4541370 m!5309067))

(declare-fun m!5309069 () Bool)

(assert (=> b!4541370 m!5309069))

(assert (=> b!4541372 m!5308163))

(assert (=> b!4541372 m!5309061))

(assert (=> b!4541372 m!5309061))

(declare-fun m!5309071 () Bool)

(assert (=> b!4541372 m!5309071))

(assert (=> b!4541371 m!5309065))

(assert (=> b!4541371 m!5309065))

(assert (=> b!4541371 m!5309067))

(declare-fun m!5309073 () Bool)

(assert (=> b!4541366 m!5309073))

(declare-fun m!5309075 () Bool)

(assert (=> b!4541366 m!5309075))

(assert (=> d!1404049 m!5309073))

(assert (=> b!4541367 m!5308163))

(assert (=> b!4541367 m!5309061))

(assert (=> b!4541367 m!5309061))

(assert (=> b!4541367 m!5309071))

(assert (=> b!4540946 d!1404049))

(declare-fun bs!878847 () Bool)

(declare-fun d!1404051 () Bool)

(assert (= bs!878847 (and d!1404051 start!450812)))

(declare-fun lambda!176428 () Int)

(assert (=> bs!878847 (= lambda!176428 lambda!176299)))

(declare-fun bs!878848 () Bool)

(assert (= bs!878848 (and d!1404051 d!1403907)))

(assert (=> bs!878848 (not (= lambda!176428 lambda!176320))))

(declare-fun bs!878849 () Bool)

(assert (= bs!878849 (and d!1404051 d!1403839)))

(assert (=> bs!878849 (= lambda!176428 lambda!176314)))

(declare-fun bs!878850 () Bool)

(assert (= bs!878850 (and d!1404051 b!4540945)))

(assert (=> bs!878850 (not (= lambda!176428 lambda!176300))))

(declare-fun bs!878851 () Bool)

(assert (= bs!878851 (and d!1404051 d!1404043)))

(assert (=> bs!878851 (= lambda!176428 lambda!176424)))

(declare-fun bs!878852 () Bool)

(assert (= bs!878852 (and d!1404051 d!1403993)))

(assert (=> bs!878852 (= lambda!176428 lambda!176417)))

(declare-fun bs!878853 () Bool)

(assert (= bs!878853 (and d!1404051 d!1404045)))

(assert (=> bs!878853 (= lambda!176428 lambda!176425)))

(declare-fun bs!878854 () Bool)

(assert (= bs!878854 (and d!1404051 d!1403889)))

(assert (=> bs!878854 (= lambda!176428 lambda!176317)))

(declare-fun bs!878855 () Bool)

(assert (= bs!878855 (and d!1404051 d!1404021)))

(assert (=> bs!878855 (= lambda!176428 lambda!176423)))

(declare-fun bs!878856 () Bool)

(assert (= bs!878856 (and d!1404051 d!1404005)))

(assert (=> bs!878856 (= lambda!176428 lambda!176418)))

(declare-fun bs!878857 () Bool)

(assert (= bs!878857 (and d!1404051 d!1403977)))

(assert (=> bs!878857 (= lambda!176428 lambda!176411)))

(assert (=> d!1404051 (contains!13558 (extractMap!1258 (toList!4412 lt!1715585)) key!3287)))

(declare-fun lt!1716043 () Unit!98710)

(declare-fun choose!29932 (ListLongMap!3043 K!12145 Hashable!5597) Unit!98710)

(assert (=> d!1404051 (= lt!1716043 (choose!29932 lt!1715585 key!3287 hashF!1107))))

(assert (=> d!1404051 (forall!10351 (toList!4412 lt!1715585) lambda!176428)))

(assert (=> d!1404051 (= (lemmaListContainsThenExtractedMapContains!172 lt!1715585 key!3287 hashF!1107) lt!1716043)))

(declare-fun bs!878858 () Bool)

(assert (= bs!878858 d!1404051))

(assert (=> bs!878858 m!5308165))

(assert (=> bs!878858 m!5308165))

(declare-fun m!5309077 () Bool)

(assert (=> bs!878858 m!5309077))

(declare-fun m!5309079 () Bool)

(assert (=> bs!878858 m!5309079))

(declare-fun m!5309081 () Bool)

(assert (=> bs!878858 m!5309081))

(assert (=> b!4540946 d!1404051))

(declare-fun bs!878859 () Bool)

(declare-fun d!1404053 () Bool)

(assert (= bs!878859 (and d!1404053 start!450812)))

(declare-fun lambda!176429 () Int)

(assert (=> bs!878859 (= lambda!176429 lambda!176299)))

(declare-fun bs!878860 () Bool)

(assert (= bs!878860 (and d!1404053 d!1403907)))

(assert (=> bs!878860 (not (= lambda!176429 lambda!176320))))

(declare-fun bs!878861 () Bool)

(assert (= bs!878861 (and d!1404053 d!1403839)))

(assert (=> bs!878861 (= lambda!176429 lambda!176314)))

(declare-fun bs!878862 () Bool)

(assert (= bs!878862 (and d!1404053 b!4540945)))

(assert (=> bs!878862 (not (= lambda!176429 lambda!176300))))

(declare-fun bs!878863 () Bool)

(assert (= bs!878863 (and d!1404053 d!1404043)))

(assert (=> bs!878863 (= lambda!176429 lambda!176424)))

(declare-fun bs!878864 () Bool)

(assert (= bs!878864 (and d!1404053 d!1403993)))

(assert (=> bs!878864 (= lambda!176429 lambda!176417)))

(declare-fun bs!878865 () Bool)

(assert (= bs!878865 (and d!1404053 d!1404051)))

(assert (=> bs!878865 (= lambda!176429 lambda!176428)))

(declare-fun bs!878866 () Bool)

(assert (= bs!878866 (and d!1404053 d!1404045)))

(assert (=> bs!878866 (= lambda!176429 lambda!176425)))

(declare-fun bs!878867 () Bool)

(assert (= bs!878867 (and d!1404053 d!1403889)))

(assert (=> bs!878867 (= lambda!176429 lambda!176317)))

(declare-fun bs!878868 () Bool)

(assert (= bs!878868 (and d!1404053 d!1404021)))

(assert (=> bs!878868 (= lambda!176429 lambda!176423)))

(declare-fun bs!878869 () Bool)

(assert (= bs!878869 (and d!1404053 d!1404005)))

(assert (=> bs!878869 (= lambda!176429 lambda!176418)))

(declare-fun bs!878870 () Bool)

(assert (= bs!878870 (and d!1404053 d!1403977)))

(assert (=> bs!878870 (= lambda!176429 lambda!176411)))

(declare-fun lt!1716044 () ListMap!3673)

(assert (=> d!1404053 (invariantList!1047 (toList!4411 lt!1716044))))

(declare-fun e!2830011 () ListMap!3673)

(assert (=> d!1404053 (= lt!1716044 e!2830011)))

(declare-fun c!775713 () Bool)

(assert (=> d!1404053 (= c!775713 ((_ is Cons!50761) (toList!4412 lt!1715585)))))

(assert (=> d!1404053 (forall!10351 (toList!4412 lt!1715585) lambda!176429)))

(assert (=> d!1404053 (= (extractMap!1258 (toList!4412 lt!1715585)) lt!1716044)))

(declare-fun b!4541374 () Bool)

(assert (=> b!4541374 (= e!2830011 (addToMapMapFromBucket!729 (_2!28916 (h!56644 (toList!4412 lt!1715585))) (extractMap!1258 (t!357847 (toList!4412 lt!1715585)))))))

(declare-fun b!4541375 () Bool)

(assert (=> b!4541375 (= e!2830011 (ListMap!3674 Nil!50760))))

(assert (= (and d!1404053 c!775713) b!4541374))

(assert (= (and d!1404053 (not c!775713)) b!4541375))

(declare-fun m!5309083 () Bool)

(assert (=> d!1404053 m!5309083))

(declare-fun m!5309085 () Bool)

(assert (=> d!1404053 m!5309085))

(declare-fun m!5309087 () Bool)

(assert (=> b!4541374 m!5309087))

(assert (=> b!4541374 m!5309087))

(declare-fun m!5309089 () Bool)

(assert (=> b!4541374 m!5309089))

(assert (=> b!4540946 d!1404053))

(declare-fun bs!878871 () Bool)

(declare-fun d!1404055 () Bool)

(assert (= bs!878871 (and d!1404055 b!4540945)))

(declare-fun lambda!176432 () Int)

(assert (=> bs!878871 (= (= hash!344 (_1!28916 (h!56644 (toList!4412 lm!1477)))) (= lambda!176432 lambda!176301))))

(declare-fun bs!878872 () Bool)

(assert (= bs!878872 (and d!1404055 b!4541202)))

(assert (=> bs!878872 (not (= lambda!176432 lambda!176392))))

(declare-fun bs!878873 () Bool)

(assert (= bs!878873 (and d!1404055 b!4541269)))

(assert (=> bs!878873 (not (= lambda!176432 lambda!176419))))

(declare-fun bs!878874 () Bool)

(assert (= bs!878874 (and d!1404055 b!4541270)))

(assert (=> bs!878874 (not (= lambda!176432 lambda!176420))))

(assert (=> bs!878872 (not (= lambda!176432 lambda!176391))))

(declare-fun bs!878875 () Bool)

(assert (= bs!878875 (and d!1404055 b!4541201)))

(assert (=> bs!878875 (not (= lambda!176432 lambda!176390))))

(assert (=> bs!878874 (not (= lambda!176432 lambda!176421))))

(declare-fun bs!878876 () Bool)

(assert (= bs!878876 (and d!1404055 d!1404019)))

(assert (=> bs!878876 (not (= lambda!176432 lambda!176422))))

(declare-fun bs!878877 () Bool)

(assert (= bs!878877 (and d!1404055 d!1403921)))

(assert (=> bs!878877 (not (= lambda!176432 lambda!176394))))

(assert (=> d!1404055 true))

(assert (=> d!1404055 true))

(assert (=> d!1404055 (= (allKeysSameHash!1056 newBucket!178 hash!344 hashF!1107) (forall!10353 newBucket!178 lambda!176432))))

(declare-fun bs!878878 () Bool)

(assert (= bs!878878 d!1404055))

(declare-fun m!5309091 () Bool)

(assert (=> bs!878878 m!5309091))

(assert (=> b!4540968 d!1404055))

(declare-fun d!1404057 () Bool)

(assert (=> d!1404057 (= (eq!659 lt!1715603 lt!1715583) (= (content!8447 (toList!4411 lt!1715603)) (content!8447 (toList!4411 lt!1715583))))))

(declare-fun bs!878879 () Bool)

(assert (= bs!878879 d!1404057))

(assert (=> bs!878879 m!5308515))

(assert (=> bs!878879 m!5308499))

(assert (=> b!4540947 d!1404057))

(declare-fun d!1404059 () Bool)

(declare-fun e!2830012 () Bool)

(assert (=> d!1404059 e!2830012))

(declare-fun res!1892782 () Bool)

(assert (=> d!1404059 (=> (not res!1892782) (not e!2830012))))

(declare-fun lt!1716045 () ListMap!3673)

(assert (=> d!1404059 (= res!1892782 (not (contains!13558 lt!1716045 key!3287)))))

(assert (=> d!1404059 (= lt!1716045 (ListMap!3674 (removePresrvNoDuplicatedKeys!171 (toList!4411 lt!1715594) key!3287)))))

(assert (=> d!1404059 (= (-!428 lt!1715594 key!3287) lt!1716045)))

(declare-fun b!4541378 () Bool)

(assert (=> b!4541378 (= e!2830012 (= ((_ map and) (content!8448 (keys!17666 lt!1715594)) ((_ map not) (store ((as const (Array K!12145 Bool)) false) key!3287 true))) (content!8448 (keys!17666 lt!1716045))))))

(assert (= (and d!1404059 res!1892782) b!4541378))

(declare-fun m!5309093 () Bool)

(assert (=> d!1404059 m!5309093))

(declare-fun m!5309095 () Bool)

(assert (=> d!1404059 m!5309095))

(declare-fun m!5309097 () Bool)

(assert (=> b!4541378 m!5309097))

(declare-fun m!5309099 () Bool)

(assert (=> b!4541378 m!5309099))

(assert (=> b!4541378 m!5308527))

(assert (=> b!4541378 m!5309009))

(declare-fun m!5309101 () Bool)

(assert (=> b!4541378 m!5309101))

(assert (=> b!4541378 m!5309009))

(assert (=> b!4541378 m!5309097))

(assert (=> b!4540947 d!1404059))

(declare-fun d!1404061 () Bool)

(declare-fun res!1892783 () Bool)

(declare-fun e!2830013 () Bool)

(assert (=> d!1404061 (=> res!1892783 e!2830013)))

(assert (=> d!1404061 (= res!1892783 ((_ is Nil!50761) (toList!4412 lt!1715600)))))

(assert (=> d!1404061 (= (forall!10351 (toList!4412 lt!1715600) lambda!176299) e!2830013)))

(declare-fun b!4541379 () Bool)

(declare-fun e!2830014 () Bool)

(assert (=> b!4541379 (= e!2830013 e!2830014)))

(declare-fun res!1892784 () Bool)

(assert (=> b!4541379 (=> (not res!1892784) (not e!2830014))))

(assert (=> b!4541379 (= res!1892784 (dynLambda!21220 lambda!176299 (h!56644 (toList!4412 lt!1715600))))))

(declare-fun b!4541380 () Bool)

(assert (=> b!4541380 (= e!2830014 (forall!10351 (t!357847 (toList!4412 lt!1715600)) lambda!176299))))

(assert (= (and d!1404061 (not res!1892783)) b!4541379))

(assert (= (and b!4541379 res!1892784) b!4541380))

(declare-fun b_lambda!158143 () Bool)

(assert (=> (not b_lambda!158143) (not b!4541379)))

(declare-fun m!5309103 () Bool)

(assert (=> b!4541379 m!5309103))

(declare-fun m!5309105 () Bool)

(assert (=> b!4541380 m!5309105))

(assert (=> b!4540969 d!1404061))

(declare-fun bs!878880 () Bool)

(declare-fun d!1404063 () Bool)

(assert (= bs!878880 (and d!1404063 start!450812)))

(declare-fun lambda!176435 () Int)

(assert (=> bs!878880 (= lambda!176435 lambda!176299)))

(declare-fun bs!878881 () Bool)

(assert (= bs!878881 (and d!1404063 d!1403907)))

(assert (=> bs!878881 (not (= lambda!176435 lambda!176320))))

(declare-fun bs!878882 () Bool)

(assert (= bs!878882 (and d!1404063 d!1404053)))

(assert (=> bs!878882 (= lambda!176435 lambda!176429)))

(declare-fun bs!878883 () Bool)

(assert (= bs!878883 (and d!1404063 d!1403839)))

(assert (=> bs!878883 (= lambda!176435 lambda!176314)))

(declare-fun bs!878884 () Bool)

(assert (= bs!878884 (and d!1404063 b!4540945)))

(assert (=> bs!878884 (not (= lambda!176435 lambda!176300))))

(declare-fun bs!878885 () Bool)

(assert (= bs!878885 (and d!1404063 d!1404043)))

(assert (=> bs!878885 (= lambda!176435 lambda!176424)))

(declare-fun bs!878886 () Bool)

(assert (= bs!878886 (and d!1404063 d!1403993)))

(assert (=> bs!878886 (= lambda!176435 lambda!176417)))

(declare-fun bs!878887 () Bool)

(assert (= bs!878887 (and d!1404063 d!1404051)))

(assert (=> bs!878887 (= lambda!176435 lambda!176428)))

(declare-fun bs!878888 () Bool)

(assert (= bs!878888 (and d!1404063 d!1404045)))

(assert (=> bs!878888 (= lambda!176435 lambda!176425)))

(declare-fun bs!878889 () Bool)

(assert (= bs!878889 (and d!1404063 d!1403889)))

(assert (=> bs!878889 (= lambda!176435 lambda!176317)))

(declare-fun bs!878890 () Bool)

(assert (= bs!878890 (and d!1404063 d!1404021)))

(assert (=> bs!878890 (= lambda!176435 lambda!176423)))

(declare-fun bs!878891 () Bool)

(assert (= bs!878891 (and d!1404063 d!1404005)))

(assert (=> bs!878891 (= lambda!176435 lambda!176418)))

(declare-fun bs!878892 () Bool)

(assert (= bs!878892 (and d!1404063 d!1403977)))

(assert (=> bs!878892 (= lambda!176435 lambda!176411)))

(assert (=> d!1404063 (contains!13557 lm!1477 (hash!2925 hashF!1107 key!3287))))

(declare-fun lt!1716048 () Unit!98710)

(declare-fun choose!29934 (ListLongMap!3043 K!12145 Hashable!5597) Unit!98710)

(assert (=> d!1404063 (= lt!1716048 (choose!29934 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1404063 (forall!10351 (toList!4412 lm!1477) lambda!176435)))

(assert (=> d!1404063 (= (lemmaInGenMapThenLongMapContainsHash!276 lm!1477 key!3287 hashF!1107) lt!1716048)))

(declare-fun bs!878893 () Bool)

(assert (= bs!878893 d!1404063))

(assert (=> bs!878893 m!5308205))

(assert (=> bs!878893 m!5308205))

(declare-fun m!5309107 () Bool)

(assert (=> bs!878893 m!5309107))

(declare-fun m!5309109 () Bool)

(assert (=> bs!878893 m!5309109))

(declare-fun m!5309111 () Bool)

(assert (=> bs!878893 m!5309111))

(assert (=> b!4540970 d!1404063))

(declare-fun d!1404065 () Bool)

(declare-fun lt!1716049 () Bool)

(assert (=> d!1404065 (= lt!1716049 (select (content!8449 (toList!4412 lm!1477)) lt!1715577))))

(declare-fun e!2830015 () Bool)

(assert (=> d!1404065 (= lt!1716049 e!2830015)))

(declare-fun res!1892785 () Bool)

(assert (=> d!1404065 (=> (not res!1892785) (not e!2830015))))

(assert (=> d!1404065 (= res!1892785 ((_ is Cons!50761) (toList!4412 lm!1477)))))

(assert (=> d!1404065 (= (contains!13559 (toList!4412 lm!1477) lt!1715577) lt!1716049)))

(declare-fun b!4541381 () Bool)

(declare-fun e!2830016 () Bool)

(assert (=> b!4541381 (= e!2830015 e!2830016)))

(declare-fun res!1892786 () Bool)

(assert (=> b!4541381 (=> res!1892786 e!2830016)))

(assert (=> b!4541381 (= res!1892786 (= (h!56644 (toList!4412 lm!1477)) lt!1715577))))

(declare-fun b!4541382 () Bool)

(assert (=> b!4541382 (= e!2830016 (contains!13559 (t!357847 (toList!4412 lm!1477)) lt!1715577))))

(assert (= (and d!1404065 res!1892785) b!4541381))

(assert (= (and b!4541381 (not res!1892786)) b!4541382))

(declare-fun m!5309113 () Bool)

(assert (=> d!1404065 m!5309113))

(declare-fun m!5309115 () Bool)

(assert (=> d!1404065 m!5309115))

(assert (=> b!4541382 m!5308131))

(assert (=> b!4540970 d!1404065))

(declare-fun d!1404067 () Bool)

(assert (=> d!1404067 (= (apply!11939 lm!1477 hash!344) (get!16695 (getValueByKey!1151 (toList!4412 lm!1477) hash!344)))))

(declare-fun bs!878894 () Bool)

(assert (= bs!878894 d!1404067))

(declare-fun m!5309117 () Bool)

(assert (=> bs!878894 m!5309117))

(assert (=> bs!878894 m!5309117))

(declare-fun m!5309119 () Bool)

(assert (=> bs!878894 m!5309119))

(assert (=> b!4540970 d!1404067))

(declare-fun d!1404069 () Bool)

(assert (=> d!1404069 (dynLambda!21220 lambda!176299 lt!1715577)))

(declare-fun lt!1716050 () Unit!98710)

(assert (=> d!1404069 (= lt!1716050 (choose!29925 (toList!4412 lm!1477) lambda!176299 lt!1715577))))

(declare-fun e!2830017 () Bool)

(assert (=> d!1404069 e!2830017))

(declare-fun res!1892787 () Bool)

(assert (=> d!1404069 (=> (not res!1892787) (not e!2830017))))

(assert (=> d!1404069 (= res!1892787 (forall!10351 (toList!4412 lm!1477) lambda!176299))))

(assert (=> d!1404069 (= (forallContained!2614 (toList!4412 lm!1477) lambda!176299 lt!1715577) lt!1716050)))

(declare-fun b!4541383 () Bool)

(assert (=> b!4541383 (= e!2830017 (contains!13559 (toList!4412 lm!1477) lt!1715577))))

(assert (= (and d!1404069 res!1892787) b!4541383))

(declare-fun b_lambda!158145 () Bool)

(assert (=> (not b_lambda!158145) (not d!1404069)))

(declare-fun m!5309121 () Bool)

(assert (=> d!1404069 m!5309121))

(declare-fun m!5309123 () Bool)

(assert (=> d!1404069 m!5309123))

(assert (=> d!1404069 m!5308189))

(assert (=> b!4541383 m!5308239))

(assert (=> b!4540970 d!1404069))

(declare-fun b!4541395 () Bool)

(declare-fun e!2830023 () List!50884)

(assert (=> b!4541395 (= e!2830023 Nil!50760)))

(declare-fun b!4541392 () Bool)

(declare-fun e!2830022 () List!50884)

(assert (=> b!4541392 (= e!2830022 (t!357846 lt!1715571))))

(declare-fun d!1404071 () Bool)

(declare-fun lt!1716053 () List!50884)

(assert (=> d!1404071 (not (containsKey!1882 lt!1716053 key!3287))))

(assert (=> d!1404071 (= lt!1716053 e!2830022)))

(declare-fun c!775719 () Bool)

(assert (=> d!1404071 (= c!775719 (and ((_ is Cons!50760) lt!1715571) (= (_1!28915 (h!56643 lt!1715571)) key!3287)))))

(assert (=> d!1404071 (noDuplicateKeys!1202 lt!1715571)))

(assert (=> d!1404071 (= (removePairForKey!829 lt!1715571 key!3287) lt!1716053)))

(declare-fun b!4541394 () Bool)

(assert (=> b!4541394 (= e!2830023 (Cons!50760 (h!56643 lt!1715571) (removePairForKey!829 (t!357846 lt!1715571) key!3287)))))

(declare-fun b!4541393 () Bool)

(assert (=> b!4541393 (= e!2830022 e!2830023)))

(declare-fun c!775718 () Bool)

(assert (=> b!4541393 (= c!775718 ((_ is Cons!50760) lt!1715571))))

(assert (= (and d!1404071 c!775719) b!4541392))

(assert (= (and d!1404071 (not c!775719)) b!4541393))

(assert (= (and b!4541393 c!775718) b!4541394))

(assert (= (and b!4541393 (not c!775718)) b!4541395))

(declare-fun m!5309125 () Bool)

(assert (=> d!1404071 m!5309125))

(declare-fun m!5309127 () Bool)

(assert (=> d!1404071 m!5309127))

(declare-fun m!5309129 () Bool)

(assert (=> b!4541394 m!5309129))

(assert (=> b!4540970 d!1404071))

(declare-fun d!1404073 () Bool)

(declare-fun e!2830024 () Bool)

(assert (=> d!1404073 e!2830024))

(declare-fun res!1892788 () Bool)

(assert (=> d!1404073 (=> res!1892788 e!2830024)))

(declare-fun lt!1716055 () Bool)

(assert (=> d!1404073 (= res!1892788 (not lt!1716055))))

(declare-fun lt!1716056 () Bool)

(assert (=> d!1404073 (= lt!1716055 lt!1716056)))

(declare-fun lt!1716057 () Unit!98710)

(declare-fun e!2830025 () Unit!98710)

(assert (=> d!1404073 (= lt!1716057 e!2830025)))

(declare-fun c!775720 () Bool)

(assert (=> d!1404073 (= c!775720 lt!1716056)))

(assert (=> d!1404073 (= lt!1716056 (containsKey!1885 (toList!4412 lm!1477) lt!1715582))))

(assert (=> d!1404073 (= (contains!13557 lm!1477 lt!1715582) lt!1716055)))

(declare-fun b!4541396 () Bool)

(declare-fun lt!1716054 () Unit!98710)

(assert (=> b!4541396 (= e!2830025 lt!1716054)))

(assert (=> b!4541396 (= lt!1716054 (lemmaContainsKeyImpliesGetValueByKeyDefined!1056 (toList!4412 lm!1477) lt!1715582))))

(assert (=> b!4541396 (isDefined!8488 (getValueByKey!1151 (toList!4412 lm!1477) lt!1715582))))

(declare-fun b!4541397 () Bool)

(declare-fun Unit!98786 () Unit!98710)

(assert (=> b!4541397 (= e!2830025 Unit!98786)))

(declare-fun b!4541398 () Bool)

(assert (=> b!4541398 (= e!2830024 (isDefined!8488 (getValueByKey!1151 (toList!4412 lm!1477) lt!1715582)))))

(assert (= (and d!1404073 c!775720) b!4541396))

(assert (= (and d!1404073 (not c!775720)) b!4541397))

(assert (= (and d!1404073 (not res!1892788)) b!4541398))

(declare-fun m!5309131 () Bool)

(assert (=> d!1404073 m!5309131))

(declare-fun m!5309133 () Bool)

(assert (=> b!4541396 m!5309133))

(declare-fun m!5309135 () Bool)

(assert (=> b!4541396 m!5309135))

(assert (=> b!4541396 m!5309135))

(declare-fun m!5309137 () Bool)

(assert (=> b!4541396 m!5309137))

(assert (=> b!4541398 m!5309135))

(assert (=> b!4541398 m!5309135))

(assert (=> b!4541398 m!5309137))

(assert (=> b!4540970 d!1404073))

(declare-fun d!1404075 () Bool)

(assert (=> d!1404075 (contains!13559 (toList!4412 lm!1477) (tuple2!51245 hash!344 lt!1715571))))

(declare-fun lt!1716060 () Unit!98710)

(declare-fun choose!29935 (List!50885 (_ BitVec 64) List!50884) Unit!98710)

(assert (=> d!1404075 (= lt!1716060 (choose!29935 (toList!4412 lm!1477) hash!344 lt!1715571))))

(declare-fun e!2830028 () Bool)

(assert (=> d!1404075 e!2830028))

(declare-fun res!1892791 () Bool)

(assert (=> d!1404075 (=> (not res!1892791) (not e!2830028))))

(assert (=> d!1404075 (= res!1892791 (isStrictlySorted!461 (toList!4412 lm!1477)))))

(assert (=> d!1404075 (= (lemmaGetValueByKeyImpliesContainsTuple!714 (toList!4412 lm!1477) hash!344 lt!1715571) lt!1716060)))

(declare-fun b!4541401 () Bool)

(assert (=> b!4541401 (= e!2830028 (= (getValueByKey!1151 (toList!4412 lm!1477) hash!344) (Some!11210 lt!1715571)))))

(assert (= (and d!1404075 res!1892791) b!4541401))

(declare-fun m!5309139 () Bool)

(assert (=> d!1404075 m!5309139))

(declare-fun m!5309141 () Bool)

(assert (=> d!1404075 m!5309141))

(assert (=> d!1404075 m!5308965))

(assert (=> b!4541401 m!5309117))

(assert (=> b!4540970 d!1404075))

(declare-fun d!1404077 () Bool)

(declare-fun res!1892792 () Bool)

(declare-fun e!2830029 () Bool)

(assert (=> d!1404077 (=> res!1892792 e!2830029)))

(assert (=> d!1404077 (= res!1892792 (not ((_ is Cons!50760) newBucket!178)))))

(assert (=> d!1404077 (= (noDuplicateKeys!1202 newBucket!178) e!2830029)))

(declare-fun b!4541402 () Bool)

(declare-fun e!2830030 () Bool)

(assert (=> b!4541402 (= e!2830029 e!2830030)))

(declare-fun res!1892793 () Bool)

(assert (=> b!4541402 (=> (not res!1892793) (not e!2830030))))

(assert (=> b!4541402 (= res!1892793 (not (containsKey!1882 (t!357846 newBucket!178) (_1!28915 (h!56643 newBucket!178)))))))

(declare-fun b!4541403 () Bool)

(assert (=> b!4541403 (= e!2830030 (noDuplicateKeys!1202 (t!357846 newBucket!178)))))

(assert (= (and d!1404077 (not res!1892792)) b!4541402))

(assert (= (and b!4541402 res!1892793) b!4541403))

(declare-fun m!5309143 () Bool)

(assert (=> b!4541402 m!5309143))

(declare-fun m!5309145 () Bool)

(assert (=> b!4541403 m!5309145))

(assert (=> b!4540971 d!1404077))

(declare-fun d!1404079 () Bool)

(assert (=> d!1404079 (= (eq!659 lt!1715602 lt!1715603) (= (content!8447 (toList!4411 lt!1715602)) (content!8447 (toList!4411 lt!1715603))))))

(declare-fun bs!878895 () Bool)

(assert (= bs!878895 d!1404079))

(assert (=> bs!878895 m!5308497))

(assert (=> bs!878895 m!5308515))

(assert (=> b!4540950 d!1404079))

(declare-fun d!1404081 () Bool)

(assert (=> d!1404081 (= (eq!659 lt!1715573 lt!1715603) (= (content!8447 (toList!4411 lt!1715573)) (content!8447 (toList!4411 lt!1715603))))))

(declare-fun bs!878896 () Bool)

(assert (= bs!878896 d!1404081))

(assert (=> bs!878896 m!5308923))

(assert (=> bs!878896 m!5308515))

(assert (=> b!4540950 d!1404081))

(declare-fun bs!878897 () Bool)

(declare-fun b!4541404 () Bool)

(assert (= bs!878897 (and b!4541404 b!4540945)))

(declare-fun lambda!176436 () Int)

(assert (=> bs!878897 (not (= lambda!176436 lambda!176301))))

(declare-fun bs!878898 () Bool)

(assert (= bs!878898 (and b!4541404 d!1404055)))

(assert (=> bs!878898 (not (= lambda!176436 lambda!176432))))

(declare-fun bs!878899 () Bool)

(assert (= bs!878899 (and b!4541404 b!4541202)))

(assert (=> bs!878899 (= (= lt!1715588 lt!1715875) (= lambda!176436 lambda!176392))))

(declare-fun bs!878900 () Bool)

(assert (= bs!878900 (and b!4541404 b!4541269)))

(assert (=> bs!878900 (= (= lt!1715588 lt!1715591) (= lambda!176436 lambda!176419))))

(declare-fun bs!878901 () Bool)

(assert (= bs!878901 (and b!4541404 b!4541270)))

(assert (=> bs!878901 (= (= lt!1715588 lt!1715591) (= lambda!176436 lambda!176420))))

(assert (=> bs!878899 (= (= lt!1715588 lt!1715578) (= lambda!176436 lambda!176391))))

(declare-fun bs!878902 () Bool)

(assert (= bs!878902 (and b!4541404 b!4541201)))

(assert (=> bs!878902 (= (= lt!1715588 lt!1715578) (= lambda!176436 lambda!176390))))

(assert (=> bs!878901 (= (= lt!1715588 lt!1715961) (= lambda!176436 lambda!176421))))

(declare-fun bs!878903 () Bool)

(assert (= bs!878903 (and b!4541404 d!1404019)))

(assert (=> bs!878903 (= (= lt!1715588 lt!1715964) (= lambda!176436 lambda!176422))))

(declare-fun bs!878904 () Bool)

(assert (= bs!878904 (and b!4541404 d!1403921)))

(assert (=> bs!878904 (= (= lt!1715588 lt!1715878) (= lambda!176436 lambda!176394))))

(assert (=> b!4541404 true))

(declare-fun bs!878905 () Bool)

(declare-fun b!4541405 () Bool)

(assert (= bs!878905 (and b!4541405 b!4540945)))

(declare-fun lambda!176437 () Int)

(assert (=> bs!878905 (not (= lambda!176437 lambda!176301))))

(declare-fun bs!878906 () Bool)

(assert (= bs!878906 (and b!4541405 d!1404055)))

(assert (=> bs!878906 (not (= lambda!176437 lambda!176432))))

(declare-fun bs!878907 () Bool)

(assert (= bs!878907 (and b!4541405 b!4541202)))

(assert (=> bs!878907 (= (= lt!1715588 lt!1715875) (= lambda!176437 lambda!176392))))

(declare-fun bs!878908 () Bool)

(assert (= bs!878908 (and b!4541405 b!4541269)))

(assert (=> bs!878908 (= (= lt!1715588 lt!1715591) (= lambda!176437 lambda!176419))))

(declare-fun bs!878909 () Bool)

(assert (= bs!878909 (and b!4541405 b!4541270)))

(assert (=> bs!878909 (= (= lt!1715588 lt!1715591) (= lambda!176437 lambda!176420))))

(declare-fun bs!878910 () Bool)

(assert (= bs!878910 (and b!4541405 b!4541404)))

(assert (=> bs!878910 (= lambda!176437 lambda!176436)))

(assert (=> bs!878907 (= (= lt!1715588 lt!1715578) (= lambda!176437 lambda!176391))))

(declare-fun bs!878911 () Bool)

(assert (= bs!878911 (and b!4541405 b!4541201)))

(assert (=> bs!878911 (= (= lt!1715588 lt!1715578) (= lambda!176437 lambda!176390))))

(assert (=> bs!878909 (= (= lt!1715588 lt!1715961) (= lambda!176437 lambda!176421))))

(declare-fun bs!878912 () Bool)

(assert (= bs!878912 (and b!4541405 d!1404019)))

(assert (=> bs!878912 (= (= lt!1715588 lt!1715964) (= lambda!176437 lambda!176422))))

(declare-fun bs!878913 () Bool)

(assert (= bs!878913 (and b!4541405 d!1403921)))

(assert (=> bs!878913 (= (= lt!1715588 lt!1715878) (= lambda!176437 lambda!176394))))

(assert (=> b!4541405 true))

(declare-fun lambda!176438 () Int)

(assert (=> bs!878905 (not (= lambda!176438 lambda!176301))))

(declare-fun lt!1716067 () ListMap!3673)

(assert (=> bs!878907 (= (= lt!1716067 lt!1715875) (= lambda!176438 lambda!176392))))

(assert (=> bs!878908 (= (= lt!1716067 lt!1715591) (= lambda!176438 lambda!176419))))

(assert (=> bs!878909 (= (= lt!1716067 lt!1715591) (= lambda!176438 lambda!176420))))

(assert (=> bs!878910 (= (= lt!1716067 lt!1715588) (= lambda!176438 lambda!176436))))

(assert (=> bs!878907 (= (= lt!1716067 lt!1715578) (= lambda!176438 lambda!176391))))

(assert (=> bs!878911 (= (= lt!1716067 lt!1715578) (= lambda!176438 lambda!176390))))

(assert (=> bs!878909 (= (= lt!1716067 lt!1715961) (= lambda!176438 lambda!176421))))

(assert (=> b!4541405 (= (= lt!1716067 lt!1715588) (= lambda!176438 lambda!176437))))

(assert (=> bs!878906 (not (= lambda!176438 lambda!176432))))

(assert (=> bs!878912 (= (= lt!1716067 lt!1715964) (= lambda!176438 lambda!176422))))

(assert (=> bs!878913 (= (= lt!1716067 lt!1715878) (= lambda!176438 lambda!176394))))

(assert (=> b!4541405 true))

(declare-fun bs!878914 () Bool)

(declare-fun d!1404083 () Bool)

(assert (= bs!878914 (and d!1404083 b!4540945)))

(declare-fun lambda!176439 () Int)

(assert (=> bs!878914 (not (= lambda!176439 lambda!176301))))

(declare-fun bs!878915 () Bool)

(assert (= bs!878915 (and d!1404083 b!4541405)))

(declare-fun lt!1716070 () ListMap!3673)

(assert (=> bs!878915 (= (= lt!1716070 lt!1716067) (= lambda!176439 lambda!176438))))

(declare-fun bs!878916 () Bool)

(assert (= bs!878916 (and d!1404083 b!4541202)))

(assert (=> bs!878916 (= (= lt!1716070 lt!1715875) (= lambda!176439 lambda!176392))))

(declare-fun bs!878917 () Bool)

(assert (= bs!878917 (and d!1404083 b!4541269)))

(assert (=> bs!878917 (= (= lt!1716070 lt!1715591) (= lambda!176439 lambda!176419))))

(declare-fun bs!878918 () Bool)

(assert (= bs!878918 (and d!1404083 b!4541270)))

(assert (=> bs!878918 (= (= lt!1716070 lt!1715591) (= lambda!176439 lambda!176420))))

(declare-fun bs!878919 () Bool)

(assert (= bs!878919 (and d!1404083 b!4541404)))

(assert (=> bs!878919 (= (= lt!1716070 lt!1715588) (= lambda!176439 lambda!176436))))

(assert (=> bs!878916 (= (= lt!1716070 lt!1715578) (= lambda!176439 lambda!176391))))

(declare-fun bs!878920 () Bool)

(assert (= bs!878920 (and d!1404083 b!4541201)))

(assert (=> bs!878920 (= (= lt!1716070 lt!1715578) (= lambda!176439 lambda!176390))))

(assert (=> bs!878918 (= (= lt!1716070 lt!1715961) (= lambda!176439 lambda!176421))))

(assert (=> bs!878915 (= (= lt!1716070 lt!1715588) (= lambda!176439 lambda!176437))))

(declare-fun bs!878921 () Bool)

(assert (= bs!878921 (and d!1404083 d!1404055)))

(assert (=> bs!878921 (not (= lambda!176439 lambda!176432))))

(declare-fun bs!878922 () Bool)

(assert (= bs!878922 (and d!1404083 d!1404019)))

(assert (=> bs!878922 (= (= lt!1716070 lt!1715964) (= lambda!176439 lambda!176422))))

(declare-fun bs!878923 () Bool)

(assert (= bs!878923 (and d!1404083 d!1403921)))

(assert (=> bs!878923 (= (= lt!1716070 lt!1715878) (= lambda!176439 lambda!176394))))

(assert (=> d!1404083 true))

(declare-fun e!2830032 () Bool)

(assert (=> d!1404083 e!2830032))

(declare-fun res!1892796 () Bool)

(assert (=> d!1404083 (=> (not res!1892796) (not e!2830032))))

(assert (=> d!1404083 (= res!1892796 (forall!10353 (_2!28916 lt!1715595) lambda!176439))))

(declare-fun e!2830031 () ListMap!3673)

(assert (=> d!1404083 (= lt!1716070 e!2830031)))

(declare-fun c!775721 () Bool)

(assert (=> d!1404083 (= c!775721 ((_ is Nil!50760) (_2!28916 lt!1715595)))))

(assert (=> d!1404083 (noDuplicateKeys!1202 (_2!28916 lt!1715595))))

(assert (=> d!1404083 (= (addToMapMapFromBucket!729 (_2!28916 lt!1715595) lt!1715588) lt!1716070)))

(assert (=> b!4541404 (= e!2830031 lt!1715588)))

(declare-fun lt!1716068 () Unit!98710)

(declare-fun call!316716 () Unit!98710)

(assert (=> b!4541404 (= lt!1716068 call!316716)))

(declare-fun call!316715 () Bool)

(assert (=> b!4541404 call!316715))

(declare-fun lt!1716064 () Unit!98710)

(assert (=> b!4541404 (= lt!1716064 lt!1716068)))

(declare-fun call!316717 () Bool)

(assert (=> b!4541404 call!316717))

(declare-fun lt!1716079 () Unit!98710)

(declare-fun Unit!98787 () Unit!98710)

(assert (=> b!4541404 (= lt!1716079 Unit!98787)))

(declare-fun bm!316710 () Bool)

(assert (=> bm!316710 (= call!316715 (forall!10353 (ite c!775721 (toList!4411 lt!1715588) (_2!28916 lt!1715595)) (ite c!775721 lambda!176436 lambda!176438)))))

(assert (=> b!4541405 (= e!2830031 lt!1716067)))

(declare-fun lt!1716081 () ListMap!3673)

(assert (=> b!4541405 (= lt!1716081 (+!1612 lt!1715588 (h!56643 (_2!28916 lt!1715595))))))

(assert (=> b!4541405 (= lt!1716067 (addToMapMapFromBucket!729 (t!357846 (_2!28916 lt!1715595)) (+!1612 lt!1715588 (h!56643 (_2!28916 lt!1715595)))))))

(declare-fun lt!1716074 () Unit!98710)

(assert (=> b!4541405 (= lt!1716074 call!316716)))

(assert (=> b!4541405 (forall!10353 (toList!4411 lt!1715588) lambda!176437)))

(declare-fun lt!1716066 () Unit!98710)

(assert (=> b!4541405 (= lt!1716066 lt!1716074)))

(assert (=> b!4541405 (forall!10353 (toList!4411 lt!1716081) lambda!176438)))

(declare-fun lt!1716080 () Unit!98710)

(declare-fun Unit!98788 () Unit!98710)

(assert (=> b!4541405 (= lt!1716080 Unit!98788)))

(assert (=> b!4541405 (forall!10353 (t!357846 (_2!28916 lt!1715595)) lambda!176438)))

(declare-fun lt!1716073 () Unit!98710)

(declare-fun Unit!98789 () Unit!98710)

(assert (=> b!4541405 (= lt!1716073 Unit!98789)))

(declare-fun lt!1716071 () Unit!98710)

(declare-fun Unit!98790 () Unit!98710)

(assert (=> b!4541405 (= lt!1716071 Unit!98790)))

(declare-fun lt!1716078 () Unit!98710)

(assert (=> b!4541405 (= lt!1716078 (forallContained!2615 (toList!4411 lt!1716081) lambda!176438 (h!56643 (_2!28916 lt!1715595))))))

(assert (=> b!4541405 (contains!13558 lt!1716081 (_1!28915 (h!56643 (_2!28916 lt!1715595))))))

(declare-fun lt!1716077 () Unit!98710)

(declare-fun Unit!98791 () Unit!98710)

(assert (=> b!4541405 (= lt!1716077 Unit!98791)))

(assert (=> b!4541405 (contains!13558 lt!1716067 (_1!28915 (h!56643 (_2!28916 lt!1715595))))))

(declare-fun lt!1716063 () Unit!98710)

(declare-fun Unit!98792 () Unit!98710)

(assert (=> b!4541405 (= lt!1716063 Unit!98792)))

(assert (=> b!4541405 call!316715))

(declare-fun lt!1716061 () Unit!98710)

(declare-fun Unit!98793 () Unit!98710)

(assert (=> b!4541405 (= lt!1716061 Unit!98793)))

(assert (=> b!4541405 (forall!10353 (toList!4411 lt!1716081) lambda!176438)))

(declare-fun lt!1716065 () Unit!98710)

(declare-fun Unit!98794 () Unit!98710)

(assert (=> b!4541405 (= lt!1716065 Unit!98794)))

(declare-fun lt!1716069 () Unit!98710)

(declare-fun Unit!98795 () Unit!98710)

(assert (=> b!4541405 (= lt!1716069 Unit!98795)))

(declare-fun lt!1716076 () Unit!98710)

(assert (=> b!4541405 (= lt!1716076 (addForallContainsKeyThenBeforeAdding!368 lt!1715588 lt!1716067 (_1!28915 (h!56643 (_2!28916 lt!1715595))) (_2!28915 (h!56643 (_2!28916 lt!1715595)))))))

(assert (=> b!4541405 (forall!10353 (toList!4411 lt!1715588) lambda!176438)))

(declare-fun lt!1716075 () Unit!98710)

(assert (=> b!4541405 (= lt!1716075 lt!1716076)))

(assert (=> b!4541405 (forall!10353 (toList!4411 lt!1715588) lambda!176438)))

(declare-fun lt!1716072 () Unit!98710)

(declare-fun Unit!98796 () Unit!98710)

(assert (=> b!4541405 (= lt!1716072 Unit!98796)))

(declare-fun res!1892795 () Bool)

(assert (=> b!4541405 (= res!1892795 call!316717)))

(declare-fun e!2830033 () Bool)

(assert (=> b!4541405 (=> (not res!1892795) (not e!2830033))))

(assert (=> b!4541405 e!2830033))

(declare-fun lt!1716062 () Unit!98710)

(declare-fun Unit!98797 () Unit!98710)

(assert (=> b!4541405 (= lt!1716062 Unit!98797)))

(declare-fun bm!316711 () Bool)

(assert (=> bm!316711 (= call!316716 (lemmaContainsAllItsOwnKeys!368 lt!1715588))))

(declare-fun bm!316712 () Bool)

(assert (=> bm!316712 (= call!316717 (forall!10353 (ite c!775721 (toList!4411 lt!1715588) (_2!28916 lt!1715595)) (ite c!775721 lambda!176436 lambda!176438)))))

(declare-fun b!4541406 () Bool)

(assert (=> b!4541406 (= e!2830033 (forall!10353 (toList!4411 lt!1715588) lambda!176438))))

(declare-fun b!4541407 () Bool)

(assert (=> b!4541407 (= e!2830032 (invariantList!1047 (toList!4411 lt!1716070)))))

(declare-fun b!4541408 () Bool)

(declare-fun res!1892794 () Bool)

(assert (=> b!4541408 (=> (not res!1892794) (not e!2830032))))

(assert (=> b!4541408 (= res!1892794 (forall!10353 (toList!4411 lt!1715588) lambda!176439))))

(assert (= (and d!1404083 c!775721) b!4541404))

(assert (= (and d!1404083 (not c!775721)) b!4541405))

(assert (= (and b!4541405 res!1892795) b!4541406))

(assert (= (or b!4541404 b!4541405) bm!316710))

(assert (= (or b!4541404 b!4541405) bm!316712))

(assert (= (or b!4541404 b!4541405) bm!316711))

(assert (= (and d!1404083 res!1892796) b!4541408))

(assert (= (and b!4541408 res!1892794) b!4541407))

(declare-fun m!5309147 () Bool)

(assert (=> b!4541408 m!5309147))

(declare-fun m!5309149 () Bool)

(assert (=> d!1404083 m!5309149))

(assert (=> d!1404083 m!5308253))

(declare-fun m!5309151 () Bool)

(assert (=> bm!316712 m!5309151))

(declare-fun m!5309153 () Bool)

(assert (=> bm!316711 m!5309153))

(declare-fun m!5309155 () Bool)

(assert (=> b!4541406 m!5309155))

(assert (=> bm!316710 m!5309151))

(declare-fun m!5309157 () Bool)

(assert (=> b!4541407 m!5309157))

(declare-fun m!5309159 () Bool)

(assert (=> b!4541405 m!5309159))

(declare-fun m!5309161 () Bool)

(assert (=> b!4541405 m!5309161))

(assert (=> b!4541405 m!5309155))

(declare-fun m!5309163 () Bool)

(assert (=> b!4541405 m!5309163))

(assert (=> b!4541405 m!5309155))

(declare-fun m!5309165 () Bool)

(assert (=> b!4541405 m!5309165))

(declare-fun m!5309167 () Bool)

(assert (=> b!4541405 m!5309167))

(declare-fun m!5309169 () Bool)

(assert (=> b!4541405 m!5309169))

(declare-fun m!5309171 () Bool)

(assert (=> b!4541405 m!5309171))

(declare-fun m!5309173 () Bool)

(assert (=> b!4541405 m!5309173))

(declare-fun m!5309175 () Bool)

(assert (=> b!4541405 m!5309175))

(assert (=> b!4541405 m!5309171))

(assert (=> b!4541405 m!5309169))

(assert (=> b!4540950 d!1404083))

(declare-fun d!1404085 () Bool)

(assert (=> d!1404085 (eq!659 (addToMapMapFromBucket!729 (_2!28916 lt!1715595) lt!1715591) (addToMapMapFromBucket!729 (_2!28916 lt!1715595) lt!1715588))))

(declare-fun lt!1716084 () Unit!98710)

(declare-fun choose!29936 (ListMap!3673 ListMap!3673 List!50884) Unit!98710)

(assert (=> d!1404085 (= lt!1716084 (choose!29936 lt!1715591 lt!1715588 (_2!28916 lt!1715595)))))

(assert (=> d!1404085 (noDuplicateKeys!1202 (_2!28916 lt!1715595))))

(assert (=> d!1404085 (= (lemmaAddToMapFromBucketPreservesEquivalence!78 lt!1715591 lt!1715588 (_2!28916 lt!1715595)) lt!1716084)))

(declare-fun bs!878924 () Bool)

(assert (= bs!878924 d!1404085))

(declare-fun m!5309177 () Bool)

(assert (=> bs!878924 m!5309177))

(assert (=> bs!878924 m!5308199))

(assert (=> bs!878924 m!5308199))

(assert (=> bs!878924 m!5308185))

(declare-fun m!5309179 () Bool)

(assert (=> bs!878924 m!5309179))

(assert (=> bs!878924 m!5308253))

(assert (=> bs!878924 m!5308185))

(assert (=> b!4540950 d!1404085))

(declare-fun d!1404087 () Bool)

(declare-fun res!1892797 () Bool)

(declare-fun e!2830034 () Bool)

(assert (=> d!1404087 (=> res!1892797 e!2830034)))

(assert (=> d!1404087 (= res!1892797 (and ((_ is Cons!50760) lt!1715571) (= (_1!28915 (h!56643 lt!1715571)) key!3287)))))

(assert (=> d!1404087 (= (containsKey!1882 lt!1715571 key!3287) e!2830034)))

(declare-fun b!4541409 () Bool)

(declare-fun e!2830035 () Bool)

(assert (=> b!4541409 (= e!2830034 e!2830035)))

(declare-fun res!1892798 () Bool)

(assert (=> b!4541409 (=> (not res!1892798) (not e!2830035))))

(assert (=> b!4541409 (= res!1892798 ((_ is Cons!50760) lt!1715571))))

(declare-fun b!4541410 () Bool)

(assert (=> b!4541410 (= e!2830035 (containsKey!1882 (t!357846 lt!1715571) key!3287))))

(assert (= (and d!1404087 (not res!1892797)) b!4541409))

(assert (= (and b!4541409 res!1892798) b!4541410))

(declare-fun m!5309181 () Bool)

(assert (=> b!4541410 m!5309181))

(assert (=> b!4540972 d!1404087))

(declare-fun b!4541415 () Bool)

(declare-fun e!2830038 () Bool)

(declare-fun tp!1338681 () Bool)

(declare-fun tp!1338682 () Bool)

(assert (=> b!4541415 (= e!2830038 (and tp!1338681 tp!1338682))))

(assert (=> b!4540951 (= tp!1338666 e!2830038)))

(assert (= (and b!4540951 ((_ is Cons!50761) (toList!4412 lm!1477))) b!4541415))

(declare-fun tp!1338685 () Bool)

(declare-fun e!2830041 () Bool)

(declare-fun b!4541420 () Bool)

(assert (=> b!4541420 (= e!2830041 (and tp_is_empty!28085 tp_is_empty!28087 tp!1338685))))

(assert (=> b!4540948 (= tp!1338667 e!2830041)))

(assert (= (and b!4540948 ((_ is Cons!50760) (t!357846 newBucket!178))) b!4541420))

(declare-fun b_lambda!158147 () Bool)

(assert (= b_lambda!158137 (or start!450812 b_lambda!158147)))

(declare-fun bs!878925 () Bool)

(declare-fun d!1404089 () Bool)

(assert (= bs!878925 (and d!1404089 start!450812)))

(assert (=> bs!878925 (= (dynLambda!21220 lambda!176299 (h!56644 (toList!4412 lm!1477))) (noDuplicateKeys!1202 (_2!28916 (h!56644 (toList!4412 lm!1477)))))))

(declare-fun m!5309183 () Bool)

(assert (=> bs!878925 m!5309183))

(assert (=> b!4541280 d!1404089))

(declare-fun b_lambda!158149 () Bool)

(assert (= b_lambda!158143 (or start!450812 b_lambda!158149)))

(declare-fun bs!878926 () Bool)

(declare-fun d!1404091 () Bool)

(assert (= bs!878926 (and d!1404091 start!450812)))

(assert (=> bs!878926 (= (dynLambda!21220 lambda!176299 (h!56644 (toList!4412 lt!1715600))) (noDuplicateKeys!1202 (_2!28916 (h!56644 (toList!4412 lt!1715600)))))))

(declare-fun m!5309185 () Bool)

(assert (=> bs!878926 m!5309185))

(assert (=> b!4541379 d!1404091))

(declare-fun b_lambda!158151 () Bool)

(assert (= b_lambda!158139 (or b!4540945 b_lambda!158151)))

(declare-fun bs!878927 () Bool)

(declare-fun d!1404093 () Bool)

(assert (= bs!878927 (and d!1404093 b!4540945)))

(assert (=> bs!878927 (= (dynLambda!21220 lambda!176300 (h!56644 (toList!4412 lm!1477))) (allKeysSameHash!1056 (_2!28916 (h!56644 (toList!4412 lm!1477))) (_1!28916 (h!56644 (toList!4412 lm!1477))) hashF!1107))))

(declare-fun m!5309187 () Bool)

(assert (=> bs!878927 m!5309187))

(assert (=> d!1404035 d!1404093))

(declare-fun b_lambda!158153 () Bool)

(assert (= b_lambda!158141 (or b!4540945 b_lambda!158153)))

(declare-fun bs!878928 () Bool)

(declare-fun d!1404095 () Bool)

(assert (= bs!878928 (and d!1404095 b!4540945)))

(assert (=> bs!878928 (= (dynLambda!21221 lambda!176301 (tuple2!51243 key!3287 (_2!28915 (get!16693 lt!1715587)))) (= (hash!2925 hashF!1107 (_1!28915 (tuple2!51243 key!3287 (_2!28915 (get!16693 lt!1715587))))) (_1!28916 (h!56644 (toList!4412 lm!1477)))))))

(declare-fun m!5309189 () Bool)

(assert (=> bs!878928 m!5309189))

(assert (=> d!1404037 d!1404095))

(declare-fun b_lambda!158155 () Bool)

(assert (= b_lambda!158145 (or start!450812 b_lambda!158155)))

(declare-fun bs!878929 () Bool)

(declare-fun d!1404097 () Bool)

(assert (= bs!878929 (and d!1404097 start!450812)))

(assert (=> bs!878929 (= (dynLambda!21220 lambda!176299 lt!1715577) (noDuplicateKeys!1202 (_2!28916 lt!1715577)))))

(declare-fun m!5309191 () Bool)

(assert (=> bs!878929 m!5309191))

(assert (=> d!1404069 d!1404097))

(declare-fun b_lambda!158157 () Bool)

(assert (= b_lambda!158121 (or start!450812 b_lambda!158157)))

(assert (=> d!1403913 d!1404089))

(check-sat (not bm!316712) (not b!4541351) (not b!4541072) (not b_lambda!158153) (not bm!316711) (not b!4541374) (not b!4541321) (not b!4541204) (not d!1404073) (not d!1404045) (not b!4541398) (not bs!878925) (not d!1404043) (not d!1403977) (not b!4541250) (not b!4541320) (not b!4541378) (not b!4541372) (not b!4541348) (not b!4541070) (not b!4541262) (not b!4541366) (not bm!316695) (not b!4541271) (not bs!878929) (not d!1403889) (not b!4541000) (not b!4541405) (not d!1404009) (not b!4541272) (not b!4541371) (not d!1403865) (not d!1403921) (not b!4541382) (not b!4541369) (not d!1404029) (not b!4541396) (not b!4541350) (not b!4541403) (not b!4541081) (not d!1403913) (not d!1404057) (not b!4541406) (not b!4541407) (not b!4541102) (not bs!878928) (not b!4541268) (not b!4541383) (not b!4541415) (not b!4541315) (not d!1404037) (not d!1403993) (not b!4541354) (not b!4541313) (not d!1404025) (not b!4541205) (not b!4541358) (not b!4541202) (not bm!316707) (not b!4541324) (not b!4541116) (not b!4541344) (not b!4541402) (not d!1403839) (not b!4541296) (not d!1404011) (not b!4541264) (not d!1404021) (not b!4541281) (not b!4541203) (not bm!316696) (not d!1403915) (not d!1404031) (not d!1403991) tp_is_empty!28087 (not bs!878926) (not d!1404041) (not d!1404079) (not b!4541394) (not bm!316710) (not b!4541103) (not d!1404069) (not bm!316708) (not d!1404007) (not bm!316697) (not b!4541364) (not b!4541370) (not b!4541267) (not d!1404065) (not b!4541360) (not b!4541408) (not b_lambda!158155) tp_is_empty!28085 (not b!4541101) (not d!1404059) (not b!4541349) (not d!1404013) (not d!1403919) (not bm!316702) (not bm!316703) (not d!1404047) (not b!4541266) (not b!4541274) (not b!4541361) (not d!1404015) (not b!4541113) (not b!4541270) (not d!1403905) (not d!1404027) (not d!1404017) (not d!1404083) (not b!4541362) (not bm!316704) (not d!1404055) (not d!1404051) (not b!4541352) (not d!1403917) (not d!1403867) (not bs!878927) (not bm!316709) (not d!1403907) (not b_lambda!158157) (not d!1403877) (not b!4541380) (not b!4541273) (not d!1403965) (not b!4541109) (not d!1404075) (not d!1403909) (not d!1404067) (not b!4541345) (not b!4541367) (not b!4541410) (not b!4541083) (not b!4541290) (not b!4541104) (not b!4541288) (not d!1404049) (not d!1404063) (not b!4541347) (not b!4541110) (not b!4541363) (not d!1404081) (not b!4541401) (not d!1404033) (not b_lambda!158151) (not b!4541318) (not b!4541357) (not b!4541373) (not d!1404035) (not d!1404005) (not d!1404071) (not b_lambda!158149) (not b!4541314) (not d!1404019) (not d!1403903) (not d!1404053) (not d!1404085) (not b!4541420) (not b!4541265) (not b_lambda!158147))
(check-sat)
