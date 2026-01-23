; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!455776 () Bool)

(assert start!455776)

(declare-fun b!4578611 () Bool)

(declare-fun e!2855120 () Bool)

(declare-fun e!2855119 () Bool)

(assert (=> b!4578611 (= e!2855120 e!2855119)))

(declare-fun res!1912655 () Bool)

(assert (=> b!4578611 (=> (not res!1912655) (not e!2855119))))

(declare-fun lt!1743733 () (_ BitVec 64))

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4578611 (= res!1912655 (= lt!1743733 hash!344))))

(declare-datatypes ((Hashable!5661 0))(
  ( (HashableExt!5660 (__x!31364 Int)) )
))
(declare-fun hashF!1107 () Hashable!5661)

(declare-datatypes ((K!12305 0))(
  ( (K!12306 (val!18115 Int)) )
))
(declare-fun key!3287 () K!12305)

(declare-fun hash!3105 (Hashable!5661 K!12305) (_ BitVec 64))

(assert (=> b!4578611 (= lt!1743733 (hash!3105 hashF!1107 key!3287))))

(declare-fun b!4578612 () Bool)

(declare-fun e!2855115 () Bool)

(declare-fun e!2855112 () Bool)

(assert (=> b!4578612 (= e!2855115 e!2855112)))

(declare-fun res!1912660 () Bool)

(assert (=> b!4578612 (=> res!1912660 e!2855112)))

(declare-datatypes ((V!12551 0))(
  ( (V!12552 (val!18116 Int)) )
))
(declare-datatypes ((tuple2!51498 0))(
  ( (tuple2!51499 (_1!29043 K!12305) (_2!29043 V!12551)) )
))
(declare-datatypes ((List!51058 0))(
  ( (Nil!50934) (Cons!50934 (h!56865 tuple2!51498) (t!358048 List!51058)) )
))
(declare-datatypes ((tuple2!51500 0))(
  ( (tuple2!51501 (_1!29044 (_ BitVec 64)) (_2!29044 List!51058)) )
))
(declare-datatypes ((List!51059 0))(
  ( (Nil!50935) (Cons!50935 (h!56866 tuple2!51500) (t!358049 List!51059)) )
))
(declare-datatypes ((ListLongMap!3171 0))(
  ( (ListLongMap!3172 (toList!4539 List!51059)) )
))
(declare-fun lm!1477 () ListLongMap!3171)

(declare-fun containsKeyBiggerList!236 (List!51059 K!12305) Bool)

(assert (=> b!4578612 (= res!1912660 (not (containsKeyBiggerList!236 (t!358049 (toList!4539 lm!1477)) key!3287)))))

(declare-fun lt!1743734 () ListLongMap!3171)

(assert (=> b!4578612 (containsKeyBiggerList!236 (toList!4539 lt!1743734) key!3287)))

(declare-datatypes ((Unit!105349 0))(
  ( (Unit!105350) )
))
(declare-fun lt!1743742 () Unit!105349)

(declare-fun lemmaInLongMapThenContainsKeyBiggerList!148 (ListLongMap!3171 K!12305 Hashable!5661) Unit!105349)

(assert (=> b!4578612 (= lt!1743742 (lemmaInLongMapThenContainsKeyBiggerList!148 lt!1743734 key!3287 hashF!1107))))

(declare-fun b!4578614 () Bool)

(declare-fun e!2855110 () Bool)

(declare-fun tp!1339664 () Bool)

(assert (=> b!4578614 (= e!2855110 tp!1339664)))

(declare-fun b!4578615 () Bool)

(declare-fun res!1912652 () Bool)

(assert (=> b!4578615 (=> (not res!1912652) (not e!2855119))))

(declare-fun newBucket!178 () List!51058)

(declare-fun allKeysSameHash!1120 (List!51058 (_ BitVec 64) Hashable!5661) Bool)

(assert (=> b!4578615 (= res!1912652 (allKeysSameHash!1120 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4578616 () Bool)

(declare-fun res!1912648 () Bool)

(declare-fun e!2855107 () Bool)

(assert (=> b!4578616 (=> res!1912648 e!2855107)))

(declare-fun lt!1743751 () List!51058)

(declare-fun apply!12003 (ListLongMap!3171 (_ BitVec 64)) List!51058)

(assert (=> b!4578616 (= res!1912648 (not (= (apply!12003 lt!1743734 hash!344) lt!1743751)))))

(declare-fun b!4578617 () Bool)

(declare-fun e!2855116 () Bool)

(assert (=> b!4578617 (= e!2855112 e!2855116)))

(declare-fun res!1912654 () Bool)

(assert (=> b!4578617 (=> res!1912654 e!2855116)))

(declare-datatypes ((ListMap!3801 0))(
  ( (ListMap!3802 (toList!4540 List!51058)) )
))
(declare-fun contains!13821 (ListMap!3801 K!12305) Bool)

(declare-fun extractMap!1322 (List!51059) ListMap!3801)

(assert (=> b!4578617 (= res!1912654 (not (contains!13821 (extractMap!1322 (t!358049 (toList!4539 lm!1477))) key!3287)))))

(declare-fun lt!1743749 () ListMap!3801)

(assert (=> b!4578617 (contains!13821 lt!1743749 key!3287)))

(assert (=> b!4578617 (= lt!1743749 (extractMap!1322 (toList!4539 lt!1743734)))))

(declare-fun lt!1743728 () Unit!105349)

(declare-fun lemmaListContainsThenExtractedMapContains!222 (ListLongMap!3171 K!12305 Hashable!5661) Unit!105349)

(assert (=> b!4578617 (= lt!1743728 (lemmaListContainsThenExtractedMapContains!222 lt!1743734 key!3287 hashF!1107))))

(declare-fun b!4578618 () Bool)

(declare-fun res!1912644 () Bool)

(assert (=> b!4578618 (=> res!1912644 e!2855107)))

(declare-fun lt!1743730 () tuple2!51500)

(declare-fun contains!13822 (List!51059 tuple2!51500) Bool)

(assert (=> b!4578618 (= res!1912644 (not (contains!13822 (t!358049 (toList!4539 lm!1477)) lt!1743730)))))

(declare-fun b!4578619 () Bool)

(declare-fun res!1912645 () Bool)

(declare-fun e!2855113 () Bool)

(assert (=> b!4578619 (=> res!1912645 e!2855113)))

(declare-fun lt!1743746 () tuple2!51500)

(assert (=> b!4578619 (= res!1912645 (bvsge (_1!29044 lt!1743746) hash!344))))

(declare-fun b!4578620 () Bool)

(declare-fun e!2855121 () Unit!105349)

(declare-fun Unit!105351 () Unit!105349)

(assert (=> b!4578620 (= e!2855121 Unit!105351)))

(declare-fun b!4578621 () Bool)

(declare-fun tp_is_empty!28341 () Bool)

(declare-fun tp!1339665 () Bool)

(declare-fun tp_is_empty!28343 () Bool)

(declare-fun e!2855118 () Bool)

(assert (=> b!4578621 (= e!2855118 (and tp_is_empty!28341 tp_is_empty!28343 tp!1339665))))

(declare-fun b!4578622 () Bool)

(assert (=> b!4578622 (= e!2855107 e!2855115)))

(declare-fun res!1912658 () Bool)

(assert (=> b!4578622 (=> res!1912658 e!2855115)))

(declare-fun lt!1743727 () Bool)

(assert (=> b!4578622 (= res!1912658 lt!1743727)))

(declare-fun lt!1743729 () Unit!105349)

(assert (=> b!4578622 (= lt!1743729 e!2855121)))

(declare-fun c!783652 () Bool)

(assert (=> b!4578622 (= c!783652 lt!1743727)))

(declare-fun containsKey!2040 (List!51058 K!12305) Bool)

(assert (=> b!4578622 (= lt!1743727 (not (containsKey!2040 lt!1743751 key!3287)))))

(declare-fun b!4578623 () Bool)

(declare-fun res!1912662 () Bool)

(declare-fun e!2855114 () Bool)

(assert (=> b!4578623 (=> (not res!1912662) (not e!2855114))))

(declare-fun allKeysSameHashInMap!1373 (ListLongMap!3171 Hashable!5661) Bool)

(assert (=> b!4578623 (= res!1912662 (allKeysSameHashInMap!1373 lm!1477 hashF!1107))))

(declare-fun b!4578624 () Bool)

(declare-fun e!2855108 () Bool)

(declare-fun noDuplicateKeys!1266 (List!51058) Bool)

(assert (=> b!4578624 (= e!2855108 (noDuplicateKeys!1266 (_2!29044 lt!1743746)))))

(declare-fun lt!1743738 () Unit!105349)

(declare-fun lambda!182697 () Int)

(declare-fun forallContained!2751 (List!51059 Int tuple2!51500) Unit!105349)

(assert (=> b!4578624 (= lt!1743738 (forallContained!2751 (toList!4539 lm!1477) lambda!182697 (h!56866 (toList!4539 lm!1477))))))

(declare-fun b!4578613 () Bool)

(declare-fun res!1912653 () Bool)

(declare-fun e!2855109 () Bool)

(assert (=> b!4578613 (=> res!1912653 e!2855109)))

(assert (=> b!4578613 (= res!1912653 (not (noDuplicateKeys!1266 newBucket!178)))))

(declare-fun res!1912650 () Bool)

(assert (=> start!455776 (=> (not res!1912650) (not e!2855114))))

(declare-fun forall!10490 (List!51059 Int) Bool)

(assert (=> start!455776 (= res!1912650 (forall!10490 (toList!4539 lm!1477) lambda!182697))))

(assert (=> start!455776 e!2855114))

(assert (=> start!455776 true))

(declare-fun inv!66489 (ListLongMap!3171) Bool)

(assert (=> start!455776 (and (inv!66489 lm!1477) e!2855110)))

(assert (=> start!455776 tp_is_empty!28341))

(assert (=> start!455776 e!2855118))

(declare-fun b!4578625 () Bool)

(assert (=> b!4578625 (= e!2855114 e!2855120)))

(declare-fun res!1912659 () Bool)

(assert (=> b!4578625 (=> (not res!1912659) (not e!2855120))))

(declare-fun lt!1743747 () ListMap!3801)

(assert (=> b!4578625 (= res!1912659 (contains!13821 lt!1743747 key!3287))))

(assert (=> b!4578625 (= lt!1743747 (extractMap!1322 (toList!4539 lm!1477)))))

(declare-fun b!4578626 () Bool)

(declare-fun res!1912656 () Bool)

(assert (=> b!4578626 (=> res!1912656 e!2855109)))

(get-info :version)

(assert (=> b!4578626 (= res!1912656 (or ((_ is Nil!50935) (toList!4539 lm!1477)) (= (_1!29044 (h!56866 (toList!4539 lm!1477))) hash!344)))))

(declare-fun b!4578627 () Bool)

(declare-fun res!1912657 () Bool)

(declare-fun e!2855111 () Bool)

(assert (=> b!4578627 (=> res!1912657 e!2855111)))

(declare-fun lt!1743750 () ListLongMap!3171)

(declare-fun head!9528 (ListLongMap!3171) tuple2!51500)

(assert (=> b!4578627 (= res!1912657 (not (= (head!9528 lt!1743750) lt!1743746)))))

(declare-fun b!4578628 () Bool)

(assert (=> b!4578628 (= e!2855116 e!2855113)))

(declare-fun res!1912643 () Bool)

(assert (=> b!4578628 (=> res!1912643 e!2855113)))

(declare-fun lt!1743741 () ListMap!3801)

(declare-fun eq!705 (ListMap!3801 ListMap!3801) Bool)

(assert (=> b!4578628 (= res!1912643 (not (eq!705 lt!1743741 lt!1743747)))))

(declare-fun +!1698 (ListLongMap!3171 tuple2!51500) ListLongMap!3171)

(assert (=> b!4578628 (= lt!1743741 (extractMap!1322 (toList!4539 (+!1698 lt!1743734 lt!1743746))))))

(assert (=> b!4578628 (= lt!1743746 (head!9528 lm!1477))))

(declare-fun lt!1743731 () ListMap!3801)

(declare-fun lt!1743744 () ListMap!3801)

(assert (=> b!4578628 (eq!705 lt!1743731 lt!1743744)))

(declare-fun -!474 (ListMap!3801 K!12305) ListMap!3801)

(assert (=> b!4578628 (= lt!1743744 (-!474 lt!1743749 key!3287))))

(declare-fun lt!1743740 () ListLongMap!3171)

(assert (=> b!4578628 (= lt!1743731 (extractMap!1322 (toList!4539 lt!1743740)))))

(declare-fun lt!1743739 () tuple2!51500)

(assert (=> b!4578628 (= lt!1743740 (+!1698 lt!1743734 lt!1743739))))

(assert (=> b!4578628 (= lt!1743739 (tuple2!51501 hash!344 newBucket!178))))

(declare-fun lt!1743752 () Unit!105349)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!213 (ListLongMap!3171 (_ BitVec 64) List!51058 K!12305 Hashable!5661) Unit!105349)

(assert (=> b!4578628 (= lt!1743752 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!213 lt!1743734 hash!344 newBucket!178 key!3287 hashF!1107))))

(declare-fun b!4578629 () Bool)

(declare-fun e!2855117 () Bool)

(assert (=> b!4578629 (= e!2855117 e!2855108)))

(declare-fun res!1912646 () Bool)

(assert (=> b!4578629 (=> res!1912646 e!2855108)))

(declare-fun lt!1743748 () ListMap!3801)

(declare-fun lt!1743735 () ListMap!3801)

(assert (=> b!4578629 (= res!1912646 (not (eq!705 lt!1743748 lt!1743735)))))

(declare-fun lt!1743726 () ListMap!3801)

(assert (=> b!4578629 (eq!705 lt!1743726 lt!1743735)))

(declare-fun addToMapMapFromBucket!779 (List!51058 ListMap!3801) ListMap!3801)

(assert (=> b!4578629 (= lt!1743735 (addToMapMapFromBucket!779 (_2!29044 lt!1743746) lt!1743744))))

(declare-fun lt!1743745 () Unit!105349)

(declare-fun lemmaAddToMapFromBucketPreservesEquivalence!90 (ListMap!3801 ListMap!3801 List!51058) Unit!105349)

(assert (=> b!4578629 (= lt!1743745 (lemmaAddToMapFromBucketPreservesEquivalence!90 lt!1743731 lt!1743744 (_2!29044 lt!1743746)))))

(declare-fun b!4578630 () Bool)

(declare-fun Unit!105352 () Unit!105349)

(assert (=> b!4578630 (= e!2855121 Unit!105352)))

(declare-fun lt!1743736 () Unit!105349)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!248 (ListLongMap!3171 K!12305 Hashable!5661) Unit!105349)

(assert (=> b!4578630 (= lt!1743736 (lemmaNotInItsHashBucketThenNotInMap!248 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4578630 false))

(declare-fun b!4578631 () Bool)

(assert (=> b!4578631 (= e!2855109 e!2855107)))

(declare-fun res!1912649 () Bool)

(assert (=> b!4578631 (=> res!1912649 e!2855107)))

(declare-fun contains!13823 (ListLongMap!3171 (_ BitVec 64)) Bool)

(assert (=> b!4578631 (= res!1912649 (not (contains!13823 lt!1743734 hash!344)))))

(declare-fun tail!7907 (ListLongMap!3171) ListLongMap!3171)

(assert (=> b!4578631 (= lt!1743734 (tail!7907 lm!1477))))

(declare-fun b!4578632 () Bool)

(assert (=> b!4578632 (= e!2855111 e!2855117)))

(declare-fun res!1912651 () Bool)

(assert (=> b!4578632 (=> res!1912651 e!2855117)))

(assert (=> b!4578632 (= res!1912651 (not (eq!705 lt!1743748 lt!1743726)))))

(assert (=> b!4578632 (= lt!1743726 (addToMapMapFromBucket!779 (_2!29044 lt!1743746) lt!1743731))))

(assert (=> b!4578632 (= lt!1743748 (extractMap!1322 (toList!4539 lt!1743750)))))

(declare-fun b!4578633 () Bool)

(assert (=> b!4578633 (= e!2855113 e!2855111)))

(declare-fun res!1912663 () Bool)

(assert (=> b!4578633 (=> res!1912663 e!2855111)))

(assert (=> b!4578633 (= res!1912663 (not (= lt!1743750 (+!1698 lm!1477 lt!1743739))))))

(assert (=> b!4578633 (= lt!1743750 (+!1698 lt!1743740 lt!1743746))))

(declare-fun b!4578634 () Bool)

(declare-fun res!1912647 () Bool)

(assert (=> b!4578634 (=> res!1912647 e!2855113)))

(assert (=> b!4578634 (= res!1912647 (not (eq!705 lt!1743747 lt!1743741)))))

(declare-fun b!4578635 () Bool)

(assert (=> b!4578635 (= e!2855119 (not e!2855109))))

(declare-fun res!1912661 () Bool)

(assert (=> b!4578635 (=> res!1912661 e!2855109)))

(declare-fun removePairForKey!893 (List!51058 K!12305) List!51058)

(assert (=> b!4578635 (= res!1912661 (not (= newBucket!178 (removePairForKey!893 lt!1743751 key!3287))))))

(declare-fun lt!1743743 () Unit!105349)

(assert (=> b!4578635 (= lt!1743743 (forallContained!2751 (toList!4539 lm!1477) lambda!182697 lt!1743730))))

(assert (=> b!4578635 (contains!13822 (toList!4539 lm!1477) lt!1743730)))

(assert (=> b!4578635 (= lt!1743730 (tuple2!51501 hash!344 lt!1743751))))

(declare-fun lt!1743732 () Unit!105349)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!778 (List!51059 (_ BitVec 64) List!51058) Unit!105349)

(assert (=> b!4578635 (= lt!1743732 (lemmaGetValueByKeyImpliesContainsTuple!778 (toList!4539 lm!1477) hash!344 lt!1743751))))

(assert (=> b!4578635 (= lt!1743751 (apply!12003 lm!1477 hash!344))))

(assert (=> b!4578635 (contains!13823 lm!1477 lt!1743733)))

(declare-fun lt!1743737 () Unit!105349)

(declare-fun lemmaInGenMapThenLongMapContainsHash!340 (ListLongMap!3171 K!12305 Hashable!5661) Unit!105349)

(assert (=> b!4578635 (= lt!1743737 (lemmaInGenMapThenLongMapContainsHash!340 lm!1477 key!3287 hashF!1107))))

(assert (= (and start!455776 res!1912650) b!4578623))

(assert (= (and b!4578623 res!1912662) b!4578625))

(assert (= (and b!4578625 res!1912659) b!4578611))

(assert (= (and b!4578611 res!1912655) b!4578615))

(assert (= (and b!4578615 res!1912652) b!4578635))

(assert (= (and b!4578635 (not res!1912661)) b!4578613))

(assert (= (and b!4578613 (not res!1912653)) b!4578626))

(assert (= (and b!4578626 (not res!1912656)) b!4578631))

(assert (= (and b!4578631 (not res!1912649)) b!4578616))

(assert (= (and b!4578616 (not res!1912648)) b!4578618))

(assert (= (and b!4578618 (not res!1912644)) b!4578622))

(assert (= (and b!4578622 c!783652) b!4578630))

(assert (= (and b!4578622 (not c!783652)) b!4578620))

(assert (= (and b!4578622 (not res!1912658)) b!4578612))

(assert (= (and b!4578612 (not res!1912660)) b!4578617))

(assert (= (and b!4578617 (not res!1912654)) b!4578628))

(assert (= (and b!4578628 (not res!1912643)) b!4578634))

(assert (= (and b!4578634 (not res!1912647)) b!4578619))

(assert (= (and b!4578619 (not res!1912645)) b!4578633))

(assert (= (and b!4578633 (not res!1912663)) b!4578627))

(assert (= (and b!4578627 (not res!1912657)) b!4578632))

(assert (= (and b!4578632 (not res!1912651)) b!4578629))

(assert (= (and b!4578629 (not res!1912646)) b!4578624))

(assert (= start!455776 b!4578614))

(assert (= (and start!455776 ((_ is Cons!50934) newBucket!178)) b!4578621))

(declare-fun m!5387387 () Bool)

(assert (=> b!4578618 m!5387387))

(declare-fun m!5387389 () Bool)

(assert (=> b!4578613 m!5387389))

(declare-fun m!5387391 () Bool)

(assert (=> b!4578628 m!5387391))

(declare-fun m!5387393 () Bool)

(assert (=> b!4578628 m!5387393))

(declare-fun m!5387395 () Bool)

(assert (=> b!4578628 m!5387395))

(declare-fun m!5387397 () Bool)

(assert (=> b!4578628 m!5387397))

(declare-fun m!5387399 () Bool)

(assert (=> b!4578628 m!5387399))

(declare-fun m!5387401 () Bool)

(assert (=> b!4578628 m!5387401))

(declare-fun m!5387403 () Bool)

(assert (=> b!4578628 m!5387403))

(declare-fun m!5387405 () Bool)

(assert (=> b!4578628 m!5387405))

(declare-fun m!5387407 () Bool)

(assert (=> b!4578628 m!5387407))

(declare-fun m!5387409 () Bool)

(assert (=> b!4578611 m!5387409))

(declare-fun m!5387411 () Bool)

(assert (=> b!4578623 m!5387411))

(declare-fun m!5387413 () Bool)

(assert (=> b!4578635 m!5387413))

(declare-fun m!5387415 () Bool)

(assert (=> b!4578635 m!5387415))

(declare-fun m!5387417 () Bool)

(assert (=> b!4578635 m!5387417))

(declare-fun m!5387419 () Bool)

(assert (=> b!4578635 m!5387419))

(declare-fun m!5387421 () Bool)

(assert (=> b!4578635 m!5387421))

(declare-fun m!5387423 () Bool)

(assert (=> b!4578635 m!5387423))

(declare-fun m!5387425 () Bool)

(assert (=> b!4578635 m!5387425))

(declare-fun m!5387427 () Bool)

(assert (=> b!4578616 m!5387427))

(declare-fun m!5387429 () Bool)

(assert (=> b!4578629 m!5387429))

(declare-fun m!5387431 () Bool)

(assert (=> b!4578629 m!5387431))

(declare-fun m!5387433 () Bool)

(assert (=> b!4578629 m!5387433))

(declare-fun m!5387435 () Bool)

(assert (=> b!4578629 m!5387435))

(declare-fun m!5387437 () Bool)

(assert (=> b!4578617 m!5387437))

(declare-fun m!5387439 () Bool)

(assert (=> b!4578617 m!5387439))

(assert (=> b!4578617 m!5387439))

(declare-fun m!5387441 () Bool)

(assert (=> b!4578617 m!5387441))

(declare-fun m!5387443 () Bool)

(assert (=> b!4578617 m!5387443))

(declare-fun m!5387445 () Bool)

(assert (=> b!4578617 m!5387445))

(declare-fun m!5387447 () Bool)

(assert (=> b!4578632 m!5387447))

(declare-fun m!5387449 () Bool)

(assert (=> b!4578632 m!5387449))

(declare-fun m!5387451 () Bool)

(assert (=> b!4578632 m!5387451))

(declare-fun m!5387453 () Bool)

(assert (=> b!4578612 m!5387453))

(declare-fun m!5387455 () Bool)

(assert (=> b!4578612 m!5387455))

(declare-fun m!5387457 () Bool)

(assert (=> b!4578612 m!5387457))

(declare-fun m!5387459 () Bool)

(assert (=> b!4578631 m!5387459))

(declare-fun m!5387461 () Bool)

(assert (=> b!4578631 m!5387461))

(declare-fun m!5387463 () Bool)

(assert (=> b!4578624 m!5387463))

(declare-fun m!5387465 () Bool)

(assert (=> b!4578624 m!5387465))

(declare-fun m!5387467 () Bool)

(assert (=> b!4578633 m!5387467))

(declare-fun m!5387469 () Bool)

(assert (=> b!4578633 m!5387469))

(declare-fun m!5387471 () Bool)

(assert (=> b!4578630 m!5387471))

(declare-fun m!5387473 () Bool)

(assert (=> b!4578622 m!5387473))

(declare-fun m!5387475 () Bool)

(assert (=> b!4578615 m!5387475))

(declare-fun m!5387477 () Bool)

(assert (=> b!4578634 m!5387477))

(declare-fun m!5387479 () Bool)

(assert (=> start!455776 m!5387479))

(declare-fun m!5387481 () Bool)

(assert (=> start!455776 m!5387481))

(declare-fun m!5387483 () Bool)

(assert (=> b!4578627 m!5387483))

(declare-fun m!5387485 () Bool)

(assert (=> b!4578625 m!5387485))

(declare-fun m!5387487 () Bool)

(assert (=> b!4578625 m!5387487))

(check-sat (not start!455776) tp_is_empty!28343 (not b!4578635) (not b!4578618) (not b!4578627) (not b!4578622) (not b!4578631) (not b!4578630) (not b!4578624) (not b!4578629) (not b!4578617) tp_is_empty!28341 (not b!4578612) (not b!4578632) (not b!4578625) (not b!4578616) (not b!4578613) (not b!4578621) (not b!4578633) (not b!4578628) (not b!4578611) (not b!4578634) (not b!4578614) (not b!4578615) (not b!4578623))
(check-sat)
(get-model)

(declare-fun d!1433549 () Bool)

(declare-fun e!2855161 () Bool)

(assert (=> d!1433549 e!2855161))

(declare-fun res!1912698 () Bool)

(assert (=> d!1433549 (=> (not res!1912698) (not e!2855161))))

(declare-fun lt!1743795 () ListMap!3801)

(assert (=> d!1433549 (= res!1912698 (not (contains!13821 lt!1743795 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!206 (List!51058 K!12305) List!51058)

(assert (=> d!1433549 (= lt!1743795 (ListMap!3802 (removePresrvNoDuplicatedKeys!206 (toList!4540 lt!1743749) key!3287)))))

(assert (=> d!1433549 (= (-!474 lt!1743749 key!3287) lt!1743795)))

(declare-fun b!4578688 () Bool)

(declare-datatypes ((List!51060 0))(
  ( (Nil!50936) (Cons!50936 (h!56869 K!12305) (t!358050 List!51060)) )
))
(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!8573 (List!51060) (InoxSet K!12305))

(declare-fun keys!17789 (ListMap!3801) List!51060)

(assert (=> b!4578688 (= e!2855161 (= ((_ map and) (content!8573 (keys!17789 lt!1743749)) ((_ map not) (store ((as const (Array K!12305 Bool)) false) key!3287 true))) (content!8573 (keys!17789 lt!1743795))))))

(assert (= (and d!1433549 res!1912698) b!4578688))

(declare-fun m!5387559 () Bool)

(assert (=> d!1433549 m!5387559))

(declare-fun m!5387561 () Bool)

(assert (=> d!1433549 m!5387561))

(declare-fun m!5387563 () Bool)

(assert (=> b!4578688 m!5387563))

(declare-fun m!5387565 () Bool)

(assert (=> b!4578688 m!5387565))

(declare-fun m!5387567 () Bool)

(assert (=> b!4578688 m!5387567))

(declare-fun m!5387569 () Bool)

(assert (=> b!4578688 m!5387569))

(declare-fun m!5387571 () Bool)

(assert (=> b!4578688 m!5387571))

(assert (=> b!4578688 m!5387563))

(assert (=> b!4578688 m!5387569))

(assert (=> b!4578628 d!1433549))

(declare-fun bs!971261 () Bool)

(declare-fun d!1433561 () Bool)

(assert (= bs!971261 (and d!1433561 start!455776)))

(declare-fun lambda!182709 () Int)

(assert (=> bs!971261 (= lambda!182709 lambda!182697)))

(declare-fun lt!1743808 () ListMap!3801)

(declare-fun invariantList!1093 (List!51058) Bool)

(assert (=> d!1433561 (invariantList!1093 (toList!4540 lt!1743808))))

(declare-fun e!2855175 () ListMap!3801)

(assert (=> d!1433561 (= lt!1743808 e!2855175)))

(declare-fun c!783665 () Bool)

(assert (=> d!1433561 (= c!783665 ((_ is Cons!50935) (toList!4539 lt!1743740)))))

(assert (=> d!1433561 (forall!10490 (toList!4539 lt!1743740) lambda!182709)))

(assert (=> d!1433561 (= (extractMap!1322 (toList!4539 lt!1743740)) lt!1743808)))

(declare-fun b!4578709 () Bool)

(assert (=> b!4578709 (= e!2855175 (addToMapMapFromBucket!779 (_2!29044 (h!56866 (toList!4539 lt!1743740))) (extractMap!1322 (t!358049 (toList!4539 lt!1743740)))))))

(declare-fun b!4578710 () Bool)

(assert (=> b!4578710 (= e!2855175 (ListMap!3802 Nil!50934))))

(assert (= (and d!1433561 c!783665) b!4578709))

(assert (= (and d!1433561 (not c!783665)) b!4578710))

(declare-fun m!5387601 () Bool)

(assert (=> d!1433561 m!5387601))

(declare-fun m!5387603 () Bool)

(assert (=> d!1433561 m!5387603))

(declare-fun m!5387605 () Bool)

(assert (=> b!4578709 m!5387605))

(assert (=> b!4578709 m!5387605))

(declare-fun m!5387607 () Bool)

(assert (=> b!4578709 m!5387607))

(assert (=> b!4578628 d!1433561))

(declare-fun d!1433577 () Bool)

(declare-fun e!2855178 () Bool)

(assert (=> d!1433577 e!2855178))

(declare-fun res!1912713 () Bool)

(assert (=> d!1433577 (=> (not res!1912713) (not e!2855178))))

(declare-fun lt!1743819 () ListLongMap!3171)

(assert (=> d!1433577 (= res!1912713 (contains!13823 lt!1743819 (_1!29044 lt!1743746)))))

(declare-fun lt!1743818 () List!51059)

(assert (=> d!1433577 (= lt!1743819 (ListLongMap!3172 lt!1743818))))

(declare-fun lt!1743820 () Unit!105349)

(declare-fun lt!1743817 () Unit!105349)

(assert (=> d!1433577 (= lt!1743820 lt!1743817)))

(declare-datatypes ((Option!11313 0))(
  ( (None!11312) (Some!11312 (v!45184 List!51058)) )
))
(declare-fun getValueByKey!1245 (List!51059 (_ BitVec 64)) Option!11313)

(assert (=> d!1433577 (= (getValueByKey!1245 lt!1743818 (_1!29044 lt!1743746)) (Some!11312 (_2!29044 lt!1743746)))))

(declare-fun lemmaContainsTupThenGetReturnValue!774 (List!51059 (_ BitVec 64) List!51058) Unit!105349)

(assert (=> d!1433577 (= lt!1743817 (lemmaContainsTupThenGetReturnValue!774 lt!1743818 (_1!29044 lt!1743746) (_2!29044 lt!1743746)))))

(declare-fun insertStrictlySorted!474 (List!51059 (_ BitVec 64) List!51058) List!51059)

(assert (=> d!1433577 (= lt!1743818 (insertStrictlySorted!474 (toList!4539 lt!1743734) (_1!29044 lt!1743746) (_2!29044 lt!1743746)))))

(assert (=> d!1433577 (= (+!1698 lt!1743734 lt!1743746) lt!1743819)))

(declare-fun b!4578715 () Bool)

(declare-fun res!1912714 () Bool)

(assert (=> b!4578715 (=> (not res!1912714) (not e!2855178))))

(assert (=> b!4578715 (= res!1912714 (= (getValueByKey!1245 (toList!4539 lt!1743819) (_1!29044 lt!1743746)) (Some!11312 (_2!29044 lt!1743746))))))

(declare-fun b!4578716 () Bool)

(assert (=> b!4578716 (= e!2855178 (contains!13822 (toList!4539 lt!1743819) lt!1743746))))

(assert (= (and d!1433577 res!1912713) b!4578715))

(assert (= (and b!4578715 res!1912714) b!4578716))

(declare-fun m!5387609 () Bool)

(assert (=> d!1433577 m!5387609))

(declare-fun m!5387611 () Bool)

(assert (=> d!1433577 m!5387611))

(declare-fun m!5387613 () Bool)

(assert (=> d!1433577 m!5387613))

(declare-fun m!5387615 () Bool)

(assert (=> d!1433577 m!5387615))

(declare-fun m!5387617 () Bool)

(assert (=> b!4578715 m!5387617))

(declare-fun m!5387619 () Bool)

(assert (=> b!4578716 m!5387619))

(assert (=> b!4578628 d!1433577))

(declare-fun d!1433579 () Bool)

(declare-fun content!8574 (List!51058) (InoxSet tuple2!51498))

(assert (=> d!1433579 (= (eq!705 lt!1743731 lt!1743744) (= (content!8574 (toList!4540 lt!1743731)) (content!8574 (toList!4540 lt!1743744))))))

(declare-fun bs!971262 () Bool)

(assert (= bs!971262 d!1433579))

(declare-fun m!5387621 () Bool)

(assert (=> bs!971262 m!5387621))

(declare-fun m!5387623 () Bool)

(assert (=> bs!971262 m!5387623))

(assert (=> b!4578628 d!1433579))

(declare-fun bs!971263 () Bool)

(declare-fun d!1433581 () Bool)

(assert (= bs!971263 (and d!1433581 start!455776)))

(declare-fun lambda!182710 () Int)

(assert (=> bs!971263 (= lambda!182710 lambda!182697)))

(declare-fun bs!971264 () Bool)

(assert (= bs!971264 (and d!1433581 d!1433561)))

(assert (=> bs!971264 (= lambda!182710 lambda!182709)))

(declare-fun lt!1743821 () ListMap!3801)

(assert (=> d!1433581 (invariantList!1093 (toList!4540 lt!1743821))))

(declare-fun e!2855179 () ListMap!3801)

(assert (=> d!1433581 (= lt!1743821 e!2855179)))

(declare-fun c!783666 () Bool)

(assert (=> d!1433581 (= c!783666 ((_ is Cons!50935) (toList!4539 (+!1698 lt!1743734 lt!1743746))))))

(assert (=> d!1433581 (forall!10490 (toList!4539 (+!1698 lt!1743734 lt!1743746)) lambda!182710)))

(assert (=> d!1433581 (= (extractMap!1322 (toList!4539 (+!1698 lt!1743734 lt!1743746))) lt!1743821)))

(declare-fun b!4578717 () Bool)

(assert (=> b!4578717 (= e!2855179 (addToMapMapFromBucket!779 (_2!29044 (h!56866 (toList!4539 (+!1698 lt!1743734 lt!1743746)))) (extractMap!1322 (t!358049 (toList!4539 (+!1698 lt!1743734 lt!1743746))))))))

(declare-fun b!4578718 () Bool)

(assert (=> b!4578718 (= e!2855179 (ListMap!3802 Nil!50934))))

(assert (= (and d!1433581 c!783666) b!4578717))

(assert (= (and d!1433581 (not c!783666)) b!4578718))

(declare-fun m!5387625 () Bool)

(assert (=> d!1433581 m!5387625))

(declare-fun m!5387627 () Bool)

(assert (=> d!1433581 m!5387627))

(declare-fun m!5387629 () Bool)

(assert (=> b!4578717 m!5387629))

(assert (=> b!4578717 m!5387629))

(declare-fun m!5387631 () Bool)

(assert (=> b!4578717 m!5387631))

(assert (=> b!4578628 d!1433581))

(declare-fun bs!971265 () Bool)

(declare-fun d!1433583 () Bool)

(assert (= bs!971265 (and d!1433583 start!455776)))

(declare-fun lambda!182717 () Int)

(assert (=> bs!971265 (= lambda!182717 lambda!182697)))

(declare-fun bs!971266 () Bool)

(assert (= bs!971266 (and d!1433583 d!1433561)))

(assert (=> bs!971266 (= lambda!182717 lambda!182709)))

(declare-fun bs!971267 () Bool)

(assert (= bs!971267 (and d!1433583 d!1433581)))

(assert (=> bs!971267 (= lambda!182717 lambda!182710)))

(assert (=> d!1433583 (eq!705 (extractMap!1322 (toList!4539 (+!1698 lt!1743734 (tuple2!51501 hash!344 newBucket!178)))) (-!474 (extractMap!1322 (toList!4539 lt!1743734)) key!3287))))

(declare-fun lt!1743832 () Unit!105349)

(declare-fun choose!30479 (ListLongMap!3171 (_ BitVec 64) List!51058 K!12305 Hashable!5661) Unit!105349)

(assert (=> d!1433583 (= lt!1743832 (choose!30479 lt!1743734 hash!344 newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1433583 (forall!10490 (toList!4539 lt!1743734) lambda!182717)))

(assert (=> d!1433583 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!213 lt!1743734 hash!344 newBucket!178 key!3287 hashF!1107) lt!1743832)))

(declare-fun bs!971268 () Bool)

(assert (= bs!971268 d!1433583))

(declare-fun m!5387633 () Bool)

(assert (=> bs!971268 m!5387633))

(assert (=> bs!971268 m!5387437))

(declare-fun m!5387635 () Bool)

(assert (=> bs!971268 m!5387635))

(declare-fun m!5387637 () Bool)

(assert (=> bs!971268 m!5387637))

(assert (=> bs!971268 m!5387437))

(declare-fun m!5387639 () Bool)

(assert (=> bs!971268 m!5387639))

(declare-fun m!5387641 () Bool)

(assert (=> bs!971268 m!5387641))

(assert (=> bs!971268 m!5387635))

(assert (=> bs!971268 m!5387639))

(declare-fun m!5387643 () Bool)

(assert (=> bs!971268 m!5387643))

(assert (=> b!4578628 d!1433583))

(declare-fun d!1433585 () Bool)

(assert (=> d!1433585 (= (eq!705 lt!1743741 lt!1743747) (= (content!8574 (toList!4540 lt!1743741)) (content!8574 (toList!4540 lt!1743747))))))

(declare-fun bs!971269 () Bool)

(assert (= bs!971269 d!1433585))

(declare-fun m!5387645 () Bool)

(assert (=> bs!971269 m!5387645))

(declare-fun m!5387647 () Bool)

(assert (=> bs!971269 m!5387647))

(assert (=> b!4578628 d!1433585))

(declare-fun d!1433587 () Bool)

(declare-fun head!9529 (List!51059) tuple2!51500)

(assert (=> d!1433587 (= (head!9528 lm!1477) (head!9529 (toList!4539 lm!1477)))))

(declare-fun bs!971270 () Bool)

(assert (= bs!971270 d!1433587))

(declare-fun m!5387649 () Bool)

(assert (=> bs!971270 m!5387649))

(assert (=> b!4578628 d!1433587))

(declare-fun d!1433589 () Bool)

(declare-fun e!2855182 () Bool)

(assert (=> d!1433589 e!2855182))

(declare-fun res!1912715 () Bool)

(assert (=> d!1433589 (=> (not res!1912715) (not e!2855182))))

(declare-fun lt!1743855 () ListLongMap!3171)

(assert (=> d!1433589 (= res!1912715 (contains!13823 lt!1743855 (_1!29044 lt!1743739)))))

(declare-fun lt!1743854 () List!51059)

(assert (=> d!1433589 (= lt!1743855 (ListLongMap!3172 lt!1743854))))

(declare-fun lt!1743856 () Unit!105349)

(declare-fun lt!1743853 () Unit!105349)

(assert (=> d!1433589 (= lt!1743856 lt!1743853)))

(assert (=> d!1433589 (= (getValueByKey!1245 lt!1743854 (_1!29044 lt!1743739)) (Some!11312 (_2!29044 lt!1743739)))))

(assert (=> d!1433589 (= lt!1743853 (lemmaContainsTupThenGetReturnValue!774 lt!1743854 (_1!29044 lt!1743739) (_2!29044 lt!1743739)))))

(assert (=> d!1433589 (= lt!1743854 (insertStrictlySorted!474 (toList!4539 lt!1743734) (_1!29044 lt!1743739) (_2!29044 lt!1743739)))))

(assert (=> d!1433589 (= (+!1698 lt!1743734 lt!1743739) lt!1743855)))

(declare-fun b!4578723 () Bool)

(declare-fun res!1912716 () Bool)

(assert (=> b!4578723 (=> (not res!1912716) (not e!2855182))))

(assert (=> b!4578723 (= res!1912716 (= (getValueByKey!1245 (toList!4539 lt!1743855) (_1!29044 lt!1743739)) (Some!11312 (_2!29044 lt!1743739))))))

(declare-fun b!4578724 () Bool)

(assert (=> b!4578724 (= e!2855182 (contains!13822 (toList!4539 lt!1743855) lt!1743739))))

(assert (= (and d!1433589 res!1912715) b!4578723))

(assert (= (and b!4578723 res!1912716) b!4578724))

(declare-fun m!5387651 () Bool)

(assert (=> d!1433589 m!5387651))

(declare-fun m!5387653 () Bool)

(assert (=> d!1433589 m!5387653))

(declare-fun m!5387655 () Bool)

(assert (=> d!1433589 m!5387655))

(declare-fun m!5387657 () Bool)

(assert (=> d!1433589 m!5387657))

(declare-fun m!5387659 () Bool)

(assert (=> b!4578723 m!5387659))

(declare-fun m!5387661 () Bool)

(assert (=> b!4578724 m!5387661))

(assert (=> b!4578628 d!1433589))

(declare-fun b!4578762 () Bool)

(declare-fun e!2855208 () Unit!105349)

(declare-fun e!2855210 () Unit!105349)

(assert (=> b!4578762 (= e!2855208 e!2855210)))

(declare-fun c!783681 () Bool)

(declare-fun call!319620 () Bool)

(assert (=> b!4578762 (= c!783681 call!319620)))

(declare-fun b!4578763 () Bool)

(declare-fun e!2855205 () Bool)

(declare-fun contains!13825 (List!51060 K!12305) Bool)

(assert (=> b!4578763 (= e!2855205 (not (contains!13825 (keys!17789 (extractMap!1322 (t!358049 (toList!4539 lm!1477)))) key!3287)))))

(declare-fun bm!319615 () Bool)

(declare-fun e!2855206 () List!51060)

(assert (=> bm!319615 (= call!319620 (contains!13825 e!2855206 key!3287))))

(declare-fun c!783679 () Bool)

(declare-fun c!783680 () Bool)

(assert (=> bm!319615 (= c!783679 c!783680)))

(declare-fun b!4578764 () Bool)

(declare-fun Unit!105368 () Unit!105349)

(assert (=> b!4578764 (= e!2855210 Unit!105368)))

(declare-fun d!1433591 () Bool)

(declare-fun e!2855207 () Bool)

(assert (=> d!1433591 e!2855207))

(declare-fun res!1912732 () Bool)

(assert (=> d!1433591 (=> res!1912732 e!2855207)))

(assert (=> d!1433591 (= res!1912732 e!2855205)))

(declare-fun res!1912734 () Bool)

(assert (=> d!1433591 (=> (not res!1912734) (not e!2855205))))

(declare-fun lt!1743914 () Bool)

(assert (=> d!1433591 (= res!1912734 (not lt!1743914))))

(declare-fun lt!1743917 () Bool)

(assert (=> d!1433591 (= lt!1743914 lt!1743917)))

(declare-fun lt!1743911 () Unit!105349)

(assert (=> d!1433591 (= lt!1743911 e!2855208)))

(assert (=> d!1433591 (= c!783680 lt!1743917)))

(declare-fun containsKey!2043 (List!51058 K!12305) Bool)

(assert (=> d!1433591 (= lt!1743917 (containsKey!2043 (toList!4540 (extractMap!1322 (t!358049 (toList!4539 lm!1477)))) key!3287))))

(assert (=> d!1433591 (= (contains!13821 (extractMap!1322 (t!358049 (toList!4539 lm!1477))) key!3287) lt!1743914)))

(declare-fun b!4578765 () Bool)

(declare-fun e!2855209 () Bool)

(assert (=> b!4578765 (= e!2855209 (contains!13825 (keys!17789 (extractMap!1322 (t!358049 (toList!4539 lm!1477)))) key!3287))))

(declare-fun b!4578766 () Bool)

(assert (=> b!4578766 false))

(declare-fun lt!1743913 () Unit!105349)

(declare-fun lt!1743912 () Unit!105349)

(assert (=> b!4578766 (= lt!1743913 lt!1743912)))

(assert (=> b!4578766 (containsKey!2043 (toList!4540 (extractMap!1322 (t!358049 (toList!4539 lm!1477)))) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!540 (List!51058 K!12305) Unit!105349)

(assert (=> b!4578766 (= lt!1743912 (lemmaInGetKeysListThenContainsKey!540 (toList!4540 (extractMap!1322 (t!358049 (toList!4539 lm!1477)))) key!3287))))

(declare-fun Unit!105369 () Unit!105349)

(assert (=> b!4578766 (= e!2855210 Unit!105369)))

(declare-fun b!4578767 () Bool)

(declare-fun getKeysList!541 (List!51058) List!51060)

(assert (=> b!4578767 (= e!2855206 (getKeysList!541 (toList!4540 (extractMap!1322 (t!358049 (toList!4539 lm!1477))))))))

(declare-fun b!4578768 () Bool)

(assert (=> b!4578768 (= e!2855206 (keys!17789 (extractMap!1322 (t!358049 (toList!4539 lm!1477)))))))

(declare-fun b!4578769 () Bool)

(declare-fun lt!1743918 () Unit!105349)

(assert (=> b!4578769 (= e!2855208 lt!1743918)))

(declare-fun lt!1743915 () Unit!105349)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1150 (List!51058 K!12305) Unit!105349)

(assert (=> b!4578769 (= lt!1743915 (lemmaContainsKeyImpliesGetValueByKeyDefined!1150 (toList!4540 (extractMap!1322 (t!358049 (toList!4539 lm!1477)))) key!3287))))

(declare-datatypes ((Option!11315 0))(
  ( (None!11314) (Some!11314 (v!45186 V!12551)) )
))
(declare-fun isDefined!8586 (Option!11315) Bool)

(declare-fun getValueByKey!1247 (List!51058 K!12305) Option!11315)

(assert (=> b!4578769 (isDefined!8586 (getValueByKey!1247 (toList!4540 (extractMap!1322 (t!358049 (toList!4539 lm!1477)))) key!3287))))

(declare-fun lt!1743916 () Unit!105349)

(assert (=> b!4578769 (= lt!1743916 lt!1743915)))

(declare-fun lemmaInListThenGetKeysListContains!537 (List!51058 K!12305) Unit!105349)

(assert (=> b!4578769 (= lt!1743918 (lemmaInListThenGetKeysListContains!537 (toList!4540 (extractMap!1322 (t!358049 (toList!4539 lm!1477)))) key!3287))))

(assert (=> b!4578769 call!319620))

(declare-fun b!4578770 () Bool)

(assert (=> b!4578770 (= e!2855207 e!2855209)))

(declare-fun res!1912733 () Bool)

(assert (=> b!4578770 (=> (not res!1912733) (not e!2855209))))

(assert (=> b!4578770 (= res!1912733 (isDefined!8586 (getValueByKey!1247 (toList!4540 (extractMap!1322 (t!358049 (toList!4539 lm!1477)))) key!3287)))))

(assert (= (and d!1433591 c!783680) b!4578769))

(assert (= (and d!1433591 (not c!783680)) b!4578762))

(assert (= (and b!4578762 c!783681) b!4578766))

(assert (= (and b!4578762 (not c!783681)) b!4578764))

(assert (= (or b!4578769 b!4578762) bm!319615))

(assert (= (and bm!319615 c!783679) b!4578767))

(assert (= (and bm!319615 (not c!783679)) b!4578768))

(assert (= (and d!1433591 res!1912734) b!4578763))

(assert (= (and d!1433591 (not res!1912732)) b!4578770))

(assert (= (and b!4578770 res!1912733) b!4578765))

(assert (=> b!4578765 m!5387439))

(declare-fun m!5387707 () Bool)

(assert (=> b!4578765 m!5387707))

(assert (=> b!4578765 m!5387707))

(declare-fun m!5387709 () Bool)

(assert (=> b!4578765 m!5387709))

(declare-fun m!5387711 () Bool)

(assert (=> bm!319615 m!5387711))

(assert (=> b!4578768 m!5387439))

(assert (=> b!4578768 m!5387707))

(declare-fun m!5387713 () Bool)

(assert (=> b!4578769 m!5387713))

(declare-fun m!5387715 () Bool)

(assert (=> b!4578769 m!5387715))

(assert (=> b!4578769 m!5387715))

(declare-fun m!5387717 () Bool)

(assert (=> b!4578769 m!5387717))

(declare-fun m!5387719 () Bool)

(assert (=> b!4578769 m!5387719))

(declare-fun m!5387721 () Bool)

(assert (=> b!4578766 m!5387721))

(declare-fun m!5387723 () Bool)

(assert (=> b!4578766 m!5387723))

(assert (=> d!1433591 m!5387721))

(declare-fun m!5387725 () Bool)

(assert (=> b!4578767 m!5387725))

(assert (=> b!4578770 m!5387715))

(assert (=> b!4578770 m!5387715))

(assert (=> b!4578770 m!5387717))

(assert (=> b!4578763 m!5387439))

(assert (=> b!4578763 m!5387707))

(assert (=> b!4578763 m!5387707))

(assert (=> b!4578763 m!5387709))

(assert (=> b!4578617 d!1433591))

(declare-fun bs!971285 () Bool)

(declare-fun d!1433599 () Bool)

(assert (= bs!971285 (and d!1433599 start!455776)))

(declare-fun lambda!182752 () Int)

(assert (=> bs!971285 (= lambda!182752 lambda!182697)))

(declare-fun bs!971286 () Bool)

(assert (= bs!971286 (and d!1433599 d!1433561)))

(assert (=> bs!971286 (= lambda!182752 lambda!182709)))

(declare-fun bs!971287 () Bool)

(assert (= bs!971287 (and d!1433599 d!1433581)))

(assert (=> bs!971287 (= lambda!182752 lambda!182710)))

(declare-fun bs!971288 () Bool)

(assert (= bs!971288 (and d!1433599 d!1433583)))

(assert (=> bs!971288 (= lambda!182752 lambda!182717)))

(declare-fun lt!1743919 () ListMap!3801)

(assert (=> d!1433599 (invariantList!1093 (toList!4540 lt!1743919))))

(declare-fun e!2855215 () ListMap!3801)

(assert (=> d!1433599 (= lt!1743919 e!2855215)))

(declare-fun c!783682 () Bool)

(assert (=> d!1433599 (= c!783682 ((_ is Cons!50935) (t!358049 (toList!4539 lm!1477))))))

(assert (=> d!1433599 (forall!10490 (t!358049 (toList!4539 lm!1477)) lambda!182752)))

(assert (=> d!1433599 (= (extractMap!1322 (t!358049 (toList!4539 lm!1477))) lt!1743919)))

(declare-fun b!4578777 () Bool)

(assert (=> b!4578777 (= e!2855215 (addToMapMapFromBucket!779 (_2!29044 (h!56866 (t!358049 (toList!4539 lm!1477)))) (extractMap!1322 (t!358049 (t!358049 (toList!4539 lm!1477))))))))

(declare-fun b!4578778 () Bool)

(assert (=> b!4578778 (= e!2855215 (ListMap!3802 Nil!50934))))

(assert (= (and d!1433599 c!783682) b!4578777))

(assert (= (and d!1433599 (not c!783682)) b!4578778))

(declare-fun m!5387735 () Bool)

(assert (=> d!1433599 m!5387735))

(declare-fun m!5387739 () Bool)

(assert (=> d!1433599 m!5387739))

(declare-fun m!5387743 () Bool)

(assert (=> b!4578777 m!5387743))

(assert (=> b!4578777 m!5387743))

(declare-fun m!5387747 () Bool)

(assert (=> b!4578777 m!5387747))

(assert (=> b!4578617 d!1433599))

(declare-fun bs!971290 () Bool)

(declare-fun d!1433607 () Bool)

(assert (= bs!971290 (and d!1433607 d!1433561)))

(declare-fun lambda!182755 () Int)

(assert (=> bs!971290 (= lambda!182755 lambda!182709)))

(declare-fun bs!971291 () Bool)

(assert (= bs!971291 (and d!1433607 d!1433599)))

(assert (=> bs!971291 (= lambda!182755 lambda!182752)))

(declare-fun bs!971292 () Bool)

(assert (= bs!971292 (and d!1433607 d!1433583)))

(assert (=> bs!971292 (= lambda!182755 lambda!182717)))

(declare-fun bs!971293 () Bool)

(assert (= bs!971293 (and d!1433607 d!1433581)))

(assert (=> bs!971293 (= lambda!182755 lambda!182710)))

(declare-fun bs!971294 () Bool)

(assert (= bs!971294 (and d!1433607 start!455776)))

(assert (=> bs!971294 (= lambda!182755 lambda!182697)))

(assert (=> d!1433607 (contains!13821 (extractMap!1322 (toList!4539 lt!1743734)) key!3287)))

(declare-fun lt!1743924 () Unit!105349)

(declare-fun choose!30481 (ListLongMap!3171 K!12305 Hashable!5661) Unit!105349)

(assert (=> d!1433607 (= lt!1743924 (choose!30481 lt!1743734 key!3287 hashF!1107))))

(assert (=> d!1433607 (forall!10490 (toList!4539 lt!1743734) lambda!182755)))

(assert (=> d!1433607 (= (lemmaListContainsThenExtractedMapContains!222 lt!1743734 key!3287 hashF!1107) lt!1743924)))

(declare-fun bs!971295 () Bool)

(assert (= bs!971295 d!1433607))

(assert (=> bs!971295 m!5387437))

(assert (=> bs!971295 m!5387437))

(declare-fun m!5387757 () Bool)

(assert (=> bs!971295 m!5387757))

(declare-fun m!5387759 () Bool)

(assert (=> bs!971295 m!5387759))

(declare-fun m!5387761 () Bool)

(assert (=> bs!971295 m!5387761))

(assert (=> b!4578617 d!1433607))

(declare-fun b!4578796 () Bool)

(declare-fun e!2855234 () Unit!105349)

(declare-fun e!2855236 () Unit!105349)

(assert (=> b!4578796 (= e!2855234 e!2855236)))

(declare-fun c!783687 () Bool)

(declare-fun call!319621 () Bool)

(assert (=> b!4578796 (= c!783687 call!319621)))

(declare-fun b!4578797 () Bool)

(declare-fun e!2855229 () Bool)

(assert (=> b!4578797 (= e!2855229 (not (contains!13825 (keys!17789 lt!1743749) key!3287)))))

(declare-fun bm!319616 () Bool)

(declare-fun e!2855231 () List!51060)

(assert (=> bm!319616 (= call!319621 (contains!13825 e!2855231 key!3287))))

(declare-fun c!783685 () Bool)

(declare-fun c!783686 () Bool)

(assert (=> bm!319616 (= c!783685 c!783686)))

(declare-fun b!4578798 () Bool)

(declare-fun Unit!105372 () Unit!105349)

(assert (=> b!4578798 (= e!2855236 Unit!105372)))

(declare-fun d!1433615 () Bool)

(declare-fun e!2855233 () Bool)

(assert (=> d!1433615 e!2855233))

(declare-fun res!1912752 () Bool)

(assert (=> d!1433615 (=> res!1912752 e!2855233)))

(assert (=> d!1433615 (= res!1912752 e!2855229)))

(declare-fun res!1912754 () Bool)

(assert (=> d!1433615 (=> (not res!1912754) (not e!2855229))))

(declare-fun lt!1743934 () Bool)

(assert (=> d!1433615 (= res!1912754 (not lt!1743934))))

(declare-fun lt!1743937 () Bool)

(assert (=> d!1433615 (= lt!1743934 lt!1743937)))

(declare-fun lt!1743931 () Unit!105349)

(assert (=> d!1433615 (= lt!1743931 e!2855234)))

(assert (=> d!1433615 (= c!783686 lt!1743937)))

(assert (=> d!1433615 (= lt!1743937 (containsKey!2043 (toList!4540 lt!1743749) key!3287))))

(assert (=> d!1433615 (= (contains!13821 lt!1743749 key!3287) lt!1743934)))

(declare-fun b!4578799 () Bool)

(declare-fun e!2855235 () Bool)

(assert (=> b!4578799 (= e!2855235 (contains!13825 (keys!17789 lt!1743749) key!3287))))

(declare-fun b!4578800 () Bool)

(assert (=> b!4578800 false))

(declare-fun lt!1743933 () Unit!105349)

(declare-fun lt!1743932 () Unit!105349)

(assert (=> b!4578800 (= lt!1743933 lt!1743932)))

(assert (=> b!4578800 (containsKey!2043 (toList!4540 lt!1743749) key!3287)))

(assert (=> b!4578800 (= lt!1743932 (lemmaInGetKeysListThenContainsKey!540 (toList!4540 lt!1743749) key!3287))))

(declare-fun Unit!105373 () Unit!105349)

(assert (=> b!4578800 (= e!2855236 Unit!105373)))

(declare-fun b!4578801 () Bool)

(assert (=> b!4578801 (= e!2855231 (getKeysList!541 (toList!4540 lt!1743749)))))

(declare-fun b!4578802 () Bool)

(assert (=> b!4578802 (= e!2855231 (keys!17789 lt!1743749))))

(declare-fun b!4578803 () Bool)

(declare-fun lt!1743938 () Unit!105349)

(assert (=> b!4578803 (= e!2855234 lt!1743938)))

(declare-fun lt!1743935 () Unit!105349)

(assert (=> b!4578803 (= lt!1743935 (lemmaContainsKeyImpliesGetValueByKeyDefined!1150 (toList!4540 lt!1743749) key!3287))))

(assert (=> b!4578803 (isDefined!8586 (getValueByKey!1247 (toList!4540 lt!1743749) key!3287))))

(declare-fun lt!1743936 () Unit!105349)

(assert (=> b!4578803 (= lt!1743936 lt!1743935)))

(assert (=> b!4578803 (= lt!1743938 (lemmaInListThenGetKeysListContains!537 (toList!4540 lt!1743749) key!3287))))

(assert (=> b!4578803 call!319621))

(declare-fun b!4578804 () Bool)

(assert (=> b!4578804 (= e!2855233 e!2855235)))

(declare-fun res!1912753 () Bool)

(assert (=> b!4578804 (=> (not res!1912753) (not e!2855235))))

(assert (=> b!4578804 (= res!1912753 (isDefined!8586 (getValueByKey!1247 (toList!4540 lt!1743749) key!3287)))))

(assert (= (and d!1433615 c!783686) b!4578803))

(assert (= (and d!1433615 (not c!783686)) b!4578796))

(assert (= (and b!4578796 c!783687) b!4578800))

(assert (= (and b!4578796 (not c!783687)) b!4578798))

(assert (= (or b!4578803 b!4578796) bm!319616))

(assert (= (and bm!319616 c!783685) b!4578801))

(assert (= (and bm!319616 (not c!783685)) b!4578802))

(assert (= (and d!1433615 res!1912754) b!4578797))

(assert (= (and d!1433615 (not res!1912752)) b!4578804))

(assert (= (and b!4578804 res!1912753) b!4578799))

(assert (=> b!4578799 m!5387563))

(assert (=> b!4578799 m!5387563))

(declare-fun m!5387763 () Bool)

(assert (=> b!4578799 m!5387763))

(declare-fun m!5387765 () Bool)

(assert (=> bm!319616 m!5387765))

(assert (=> b!4578802 m!5387563))

(declare-fun m!5387767 () Bool)

(assert (=> b!4578803 m!5387767))

(declare-fun m!5387769 () Bool)

(assert (=> b!4578803 m!5387769))

(assert (=> b!4578803 m!5387769))

(declare-fun m!5387771 () Bool)

(assert (=> b!4578803 m!5387771))

(declare-fun m!5387773 () Bool)

(assert (=> b!4578803 m!5387773))

(declare-fun m!5387775 () Bool)

(assert (=> b!4578800 m!5387775))

(declare-fun m!5387777 () Bool)

(assert (=> b!4578800 m!5387777))

(assert (=> d!1433615 m!5387775))

(declare-fun m!5387779 () Bool)

(assert (=> b!4578801 m!5387779))

(assert (=> b!4578804 m!5387769))

(assert (=> b!4578804 m!5387769))

(assert (=> b!4578804 m!5387771))

(assert (=> b!4578797 m!5387563))

(assert (=> b!4578797 m!5387563))

(assert (=> b!4578797 m!5387763))

(assert (=> b!4578617 d!1433615))

(declare-fun bs!971296 () Bool)

(declare-fun d!1433617 () Bool)

(assert (= bs!971296 (and d!1433617 d!1433561)))

(declare-fun lambda!182756 () Int)

(assert (=> bs!971296 (= lambda!182756 lambda!182709)))

(declare-fun bs!971297 () Bool)

(assert (= bs!971297 (and d!1433617 d!1433599)))

(assert (=> bs!971297 (= lambda!182756 lambda!182752)))

(declare-fun bs!971298 () Bool)

(assert (= bs!971298 (and d!1433617 d!1433583)))

(assert (=> bs!971298 (= lambda!182756 lambda!182717)))

(declare-fun bs!971299 () Bool)

(assert (= bs!971299 (and d!1433617 d!1433581)))

(assert (=> bs!971299 (= lambda!182756 lambda!182710)))

(declare-fun bs!971300 () Bool)

(assert (= bs!971300 (and d!1433617 start!455776)))

(assert (=> bs!971300 (= lambda!182756 lambda!182697)))

(declare-fun bs!971301 () Bool)

(assert (= bs!971301 (and d!1433617 d!1433607)))

(assert (=> bs!971301 (= lambda!182756 lambda!182755)))

(declare-fun lt!1743949 () ListMap!3801)

(assert (=> d!1433617 (invariantList!1093 (toList!4540 lt!1743949))))

(declare-fun e!2855245 () ListMap!3801)

(assert (=> d!1433617 (= lt!1743949 e!2855245)))

(declare-fun c!783692 () Bool)

(assert (=> d!1433617 (= c!783692 ((_ is Cons!50935) (toList!4539 lt!1743734)))))

(assert (=> d!1433617 (forall!10490 (toList!4539 lt!1743734) lambda!182756)))

(assert (=> d!1433617 (= (extractMap!1322 (toList!4539 lt!1743734)) lt!1743949)))

(declare-fun b!4578816 () Bool)

(assert (=> b!4578816 (= e!2855245 (addToMapMapFromBucket!779 (_2!29044 (h!56866 (toList!4539 lt!1743734))) (extractMap!1322 (t!358049 (toList!4539 lt!1743734)))))))

(declare-fun b!4578818 () Bool)

(assert (=> b!4578818 (= e!2855245 (ListMap!3802 Nil!50934))))

(assert (= (and d!1433617 c!783692) b!4578816))

(assert (= (and d!1433617 (not c!783692)) b!4578818))

(declare-fun m!5387781 () Bool)

(assert (=> d!1433617 m!5387781))

(declare-fun m!5387783 () Bool)

(assert (=> d!1433617 m!5387783))

(declare-fun m!5387785 () Bool)

(assert (=> b!4578816 m!5387785))

(assert (=> b!4578816 m!5387785))

(declare-fun m!5387787 () Bool)

(assert (=> b!4578816 m!5387787))

(assert (=> b!4578617 d!1433617))

(declare-fun d!1433619 () Bool)

(assert (=> d!1433619 (= (head!9528 lt!1743750) (head!9529 (toList!4539 lt!1743750)))))

(declare-fun bs!971302 () Bool)

(assert (= bs!971302 d!1433619))

(declare-fun m!5387789 () Bool)

(assert (=> bs!971302 m!5387789))

(assert (=> b!4578627 d!1433619))

(declare-fun d!1433621 () Bool)

(declare-fun get!16803 (Option!11313) List!51058)

(assert (=> d!1433621 (= (apply!12003 lt!1743734 hash!344) (get!16803 (getValueByKey!1245 (toList!4539 lt!1743734) hash!344)))))

(declare-fun bs!971303 () Bool)

(assert (= bs!971303 d!1433621))

(declare-fun m!5387791 () Bool)

(assert (=> bs!971303 m!5387791))

(assert (=> bs!971303 m!5387791))

(declare-fun m!5387793 () Bool)

(assert (=> bs!971303 m!5387793))

(assert (=> b!4578616 d!1433621))

(declare-fun d!1433623 () Bool)

(assert (=> d!1433623 true))

(assert (=> d!1433623 true))

(declare-fun lambda!182759 () Int)

(declare-fun forall!10492 (List!51058 Int) Bool)

(assert (=> d!1433623 (= (allKeysSameHash!1120 newBucket!178 hash!344 hashF!1107) (forall!10492 newBucket!178 lambda!182759))))

(declare-fun bs!971304 () Bool)

(assert (= bs!971304 d!1433623))

(declare-fun m!5387805 () Bool)

(assert (=> bs!971304 m!5387805))

(assert (=> b!4578615 d!1433623))

(declare-fun b!4578834 () Bool)

(declare-fun e!2855257 () Unit!105349)

(declare-fun e!2855259 () Unit!105349)

(assert (=> b!4578834 (= e!2855257 e!2855259)))

(declare-fun c!783698 () Bool)

(declare-fun call!319625 () Bool)

(assert (=> b!4578834 (= c!783698 call!319625)))

(declare-fun b!4578835 () Bool)

(declare-fun e!2855254 () Bool)

(assert (=> b!4578835 (= e!2855254 (not (contains!13825 (keys!17789 lt!1743747) key!3287)))))

(declare-fun bm!319620 () Bool)

(declare-fun e!2855255 () List!51060)

(assert (=> bm!319620 (= call!319625 (contains!13825 e!2855255 key!3287))))

(declare-fun c!783696 () Bool)

(declare-fun c!783697 () Bool)

(assert (=> bm!319620 (= c!783696 c!783697)))

(declare-fun b!4578836 () Bool)

(declare-fun Unit!105374 () Unit!105349)

(assert (=> b!4578836 (= e!2855259 Unit!105374)))

(declare-fun d!1433625 () Bool)

(declare-fun e!2855256 () Bool)

(assert (=> d!1433625 e!2855256))

(declare-fun res!1912764 () Bool)

(assert (=> d!1433625 (=> res!1912764 e!2855256)))

(assert (=> d!1433625 (= res!1912764 e!2855254)))

(declare-fun res!1912766 () Bool)

(assert (=> d!1433625 (=> (not res!1912766) (not e!2855254))))

(declare-fun lt!1743961 () Bool)

(assert (=> d!1433625 (= res!1912766 (not lt!1743961))))

(declare-fun lt!1743964 () Bool)

(assert (=> d!1433625 (= lt!1743961 lt!1743964)))

(declare-fun lt!1743958 () Unit!105349)

(assert (=> d!1433625 (= lt!1743958 e!2855257)))

(assert (=> d!1433625 (= c!783697 lt!1743964)))

(assert (=> d!1433625 (= lt!1743964 (containsKey!2043 (toList!4540 lt!1743747) key!3287))))

(assert (=> d!1433625 (= (contains!13821 lt!1743747 key!3287) lt!1743961)))

(declare-fun b!4578837 () Bool)

(declare-fun e!2855258 () Bool)

(assert (=> b!4578837 (= e!2855258 (contains!13825 (keys!17789 lt!1743747) key!3287))))

(declare-fun b!4578838 () Bool)

(assert (=> b!4578838 false))

(declare-fun lt!1743960 () Unit!105349)

(declare-fun lt!1743959 () Unit!105349)

(assert (=> b!4578838 (= lt!1743960 lt!1743959)))

(assert (=> b!4578838 (containsKey!2043 (toList!4540 lt!1743747) key!3287)))

(assert (=> b!4578838 (= lt!1743959 (lemmaInGetKeysListThenContainsKey!540 (toList!4540 lt!1743747) key!3287))))

(declare-fun Unit!105375 () Unit!105349)

(assert (=> b!4578838 (= e!2855259 Unit!105375)))

(declare-fun b!4578839 () Bool)

(assert (=> b!4578839 (= e!2855255 (getKeysList!541 (toList!4540 lt!1743747)))))

(declare-fun b!4578840 () Bool)

(assert (=> b!4578840 (= e!2855255 (keys!17789 lt!1743747))))

(declare-fun b!4578841 () Bool)

(declare-fun lt!1743965 () Unit!105349)

(assert (=> b!4578841 (= e!2855257 lt!1743965)))

(declare-fun lt!1743962 () Unit!105349)

(assert (=> b!4578841 (= lt!1743962 (lemmaContainsKeyImpliesGetValueByKeyDefined!1150 (toList!4540 lt!1743747) key!3287))))

(assert (=> b!4578841 (isDefined!8586 (getValueByKey!1247 (toList!4540 lt!1743747) key!3287))))

(declare-fun lt!1743963 () Unit!105349)

(assert (=> b!4578841 (= lt!1743963 lt!1743962)))

(assert (=> b!4578841 (= lt!1743965 (lemmaInListThenGetKeysListContains!537 (toList!4540 lt!1743747) key!3287))))

(assert (=> b!4578841 call!319625))

(declare-fun b!4578842 () Bool)

(assert (=> b!4578842 (= e!2855256 e!2855258)))

(declare-fun res!1912765 () Bool)

(assert (=> b!4578842 (=> (not res!1912765) (not e!2855258))))

(assert (=> b!4578842 (= res!1912765 (isDefined!8586 (getValueByKey!1247 (toList!4540 lt!1743747) key!3287)))))

(assert (= (and d!1433625 c!783697) b!4578841))

(assert (= (and d!1433625 (not c!783697)) b!4578834))

(assert (= (and b!4578834 c!783698) b!4578838))

(assert (= (and b!4578834 (not c!783698)) b!4578836))

(assert (= (or b!4578841 b!4578834) bm!319620))

(assert (= (and bm!319620 c!783696) b!4578839))

(assert (= (and bm!319620 (not c!783696)) b!4578840))

(assert (= (and d!1433625 res!1912766) b!4578835))

(assert (= (and d!1433625 (not res!1912764)) b!4578842))

(assert (= (and b!4578842 res!1912765) b!4578837))

(declare-fun m!5387817 () Bool)

(assert (=> b!4578837 m!5387817))

(assert (=> b!4578837 m!5387817))

(declare-fun m!5387819 () Bool)

(assert (=> b!4578837 m!5387819))

(declare-fun m!5387821 () Bool)

(assert (=> bm!319620 m!5387821))

(assert (=> b!4578840 m!5387817))

(declare-fun m!5387823 () Bool)

(assert (=> b!4578841 m!5387823))

(declare-fun m!5387825 () Bool)

(assert (=> b!4578841 m!5387825))

(assert (=> b!4578841 m!5387825))

(declare-fun m!5387827 () Bool)

(assert (=> b!4578841 m!5387827))

(declare-fun m!5387829 () Bool)

(assert (=> b!4578841 m!5387829))

(declare-fun m!5387831 () Bool)

(assert (=> b!4578838 m!5387831))

(declare-fun m!5387833 () Bool)

(assert (=> b!4578838 m!5387833))

(assert (=> d!1433625 m!5387831))

(declare-fun m!5387835 () Bool)

(assert (=> b!4578839 m!5387835))

(assert (=> b!4578842 m!5387825))

(assert (=> b!4578842 m!5387825))

(assert (=> b!4578842 m!5387827))

(assert (=> b!4578835 m!5387817))

(assert (=> b!4578835 m!5387817))

(assert (=> b!4578835 m!5387819))

(assert (=> b!4578625 d!1433625))

(declare-fun bs!971310 () Bool)

(declare-fun d!1433629 () Bool)

(assert (= bs!971310 (and d!1433629 d!1433561)))

(declare-fun lambda!182761 () Int)

(assert (=> bs!971310 (= lambda!182761 lambda!182709)))

(declare-fun bs!971311 () Bool)

(assert (= bs!971311 (and d!1433629 d!1433599)))

(assert (=> bs!971311 (= lambda!182761 lambda!182752)))

(declare-fun bs!971312 () Bool)

(assert (= bs!971312 (and d!1433629 d!1433583)))

(assert (=> bs!971312 (= lambda!182761 lambda!182717)))

(declare-fun bs!971314 () Bool)

(assert (= bs!971314 (and d!1433629 d!1433581)))

(assert (=> bs!971314 (= lambda!182761 lambda!182710)))

(declare-fun bs!971316 () Bool)

(assert (= bs!971316 (and d!1433629 start!455776)))

(assert (=> bs!971316 (= lambda!182761 lambda!182697)))

(declare-fun bs!971318 () Bool)

(assert (= bs!971318 (and d!1433629 d!1433617)))

(assert (=> bs!971318 (= lambda!182761 lambda!182756)))

(declare-fun bs!971320 () Bool)

(assert (= bs!971320 (and d!1433629 d!1433607)))

(assert (=> bs!971320 (= lambda!182761 lambda!182755)))

(declare-fun lt!1743967 () ListMap!3801)

(assert (=> d!1433629 (invariantList!1093 (toList!4540 lt!1743967))))

(declare-fun e!2855261 () ListMap!3801)

(assert (=> d!1433629 (= lt!1743967 e!2855261)))

(declare-fun c!783700 () Bool)

(assert (=> d!1433629 (= c!783700 ((_ is Cons!50935) (toList!4539 lm!1477)))))

(assert (=> d!1433629 (forall!10490 (toList!4539 lm!1477) lambda!182761)))

(assert (=> d!1433629 (= (extractMap!1322 (toList!4539 lm!1477)) lt!1743967)))

(declare-fun b!4578845 () Bool)

(assert (=> b!4578845 (= e!2855261 (addToMapMapFromBucket!779 (_2!29044 (h!56866 (toList!4539 lm!1477))) (extractMap!1322 (t!358049 (toList!4539 lm!1477)))))))

(declare-fun b!4578846 () Bool)

(assert (=> b!4578846 (= e!2855261 (ListMap!3802 Nil!50934))))

(assert (= (and d!1433629 c!783700) b!4578845))

(assert (= (and d!1433629 (not c!783700)) b!4578846))

(declare-fun m!5387845 () Bool)

(assert (=> d!1433629 m!5387845))

(declare-fun m!5387847 () Bool)

(assert (=> d!1433629 m!5387847))

(assert (=> b!4578845 m!5387439))

(assert (=> b!4578845 m!5387439))

(declare-fun m!5387849 () Bool)

(assert (=> b!4578845 m!5387849))

(assert (=> b!4578625 d!1433629))

(declare-fun bs!971323 () Bool)

(declare-fun d!1433633 () Bool)

(assert (= bs!971323 (and d!1433633 d!1433561)))

(declare-fun lambda!182765 () Int)

(assert (=> bs!971323 (= lambda!182765 lambda!182709)))

(declare-fun bs!971324 () Bool)

(assert (= bs!971324 (and d!1433633 d!1433599)))

(assert (=> bs!971324 (= lambda!182765 lambda!182752)))

(declare-fun bs!971325 () Bool)

(assert (= bs!971325 (and d!1433633 d!1433583)))

(assert (=> bs!971325 (= lambda!182765 lambda!182717)))

(declare-fun bs!971326 () Bool)

(assert (= bs!971326 (and d!1433633 d!1433581)))

(assert (=> bs!971326 (= lambda!182765 lambda!182710)))

(declare-fun bs!971327 () Bool)

(assert (= bs!971327 (and d!1433633 start!455776)))

(assert (=> bs!971327 (= lambda!182765 lambda!182697)))

(declare-fun bs!971328 () Bool)

(assert (= bs!971328 (and d!1433633 d!1433629)))

(assert (=> bs!971328 (= lambda!182765 lambda!182761)))

(declare-fun bs!971329 () Bool)

(assert (= bs!971329 (and d!1433633 d!1433617)))

(assert (=> bs!971329 (= lambda!182765 lambda!182756)))

(declare-fun bs!971330 () Bool)

(assert (= bs!971330 (and d!1433633 d!1433607)))

(assert (=> bs!971330 (= lambda!182765 lambda!182755)))

(assert (=> d!1433633 (contains!13823 lm!1477 (hash!3105 hashF!1107 key!3287))))

(declare-fun lt!1743971 () Unit!105349)

(declare-fun choose!30483 (ListLongMap!3171 K!12305 Hashable!5661) Unit!105349)

(assert (=> d!1433633 (= lt!1743971 (choose!30483 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1433633 (forall!10490 (toList!4539 lm!1477) lambda!182765)))

(assert (=> d!1433633 (= (lemmaInGenMapThenLongMapContainsHash!340 lm!1477 key!3287 hashF!1107) lt!1743971)))

(declare-fun bs!971331 () Bool)

(assert (= bs!971331 d!1433633))

(assert (=> bs!971331 m!5387409))

(assert (=> bs!971331 m!5387409))

(declare-fun m!5387859 () Bool)

(assert (=> bs!971331 m!5387859))

(declare-fun m!5387861 () Bool)

(assert (=> bs!971331 m!5387861))

(declare-fun m!5387863 () Bool)

(assert (=> bs!971331 m!5387863))

(assert (=> b!4578635 d!1433633))

(declare-fun d!1433637 () Bool)

(assert (=> d!1433637 (= (apply!12003 lm!1477 hash!344) (get!16803 (getValueByKey!1245 (toList!4539 lm!1477) hash!344)))))

(declare-fun bs!971332 () Bool)

(assert (= bs!971332 d!1433637))

(declare-fun m!5387865 () Bool)

(assert (=> bs!971332 m!5387865))

(assert (=> bs!971332 m!5387865))

(declare-fun m!5387867 () Bool)

(assert (=> bs!971332 m!5387867))

(assert (=> b!4578635 d!1433637))

(declare-fun d!1433639 () Bool)

(declare-fun dynLambda!21328 (Int tuple2!51500) Bool)

(assert (=> d!1433639 (dynLambda!21328 lambda!182697 lt!1743730)))

(declare-fun lt!1743974 () Unit!105349)

(declare-fun choose!30484 (List!51059 Int tuple2!51500) Unit!105349)

(assert (=> d!1433639 (= lt!1743974 (choose!30484 (toList!4539 lm!1477) lambda!182697 lt!1743730))))

(declare-fun e!2855265 () Bool)

(assert (=> d!1433639 e!2855265))

(declare-fun res!1912769 () Bool)

(assert (=> d!1433639 (=> (not res!1912769) (not e!2855265))))

(assert (=> d!1433639 (= res!1912769 (forall!10490 (toList!4539 lm!1477) lambda!182697))))

(assert (=> d!1433639 (= (forallContained!2751 (toList!4539 lm!1477) lambda!182697 lt!1743730) lt!1743974)))

(declare-fun b!4578851 () Bool)

(assert (=> b!4578851 (= e!2855265 (contains!13822 (toList!4539 lm!1477) lt!1743730))))

(assert (= (and d!1433639 res!1912769) b!4578851))

(declare-fun b_lambda!165933 () Bool)

(assert (=> (not b_lambda!165933) (not d!1433639)))

(declare-fun m!5387869 () Bool)

(assert (=> d!1433639 m!5387869))

(declare-fun m!5387871 () Bool)

(assert (=> d!1433639 m!5387871))

(assert (=> d!1433639 m!5387479))

(assert (=> b!4578851 m!5387423))

(assert (=> b!4578635 d!1433639))

(declare-fun d!1433641 () Bool)

(declare-fun lt!1743979 () Bool)

(declare-fun content!8576 (List!51059) (InoxSet tuple2!51500))

(assert (=> d!1433641 (= lt!1743979 (select (content!8576 (toList!4539 lm!1477)) lt!1743730))))

(declare-fun e!2855270 () Bool)

(assert (=> d!1433641 (= lt!1743979 e!2855270)))

(declare-fun res!1912774 () Bool)

(assert (=> d!1433641 (=> (not res!1912774) (not e!2855270))))

(assert (=> d!1433641 (= res!1912774 ((_ is Cons!50935) (toList!4539 lm!1477)))))

(assert (=> d!1433641 (= (contains!13822 (toList!4539 lm!1477) lt!1743730) lt!1743979)))

(declare-fun b!4578856 () Bool)

(declare-fun e!2855271 () Bool)

(assert (=> b!4578856 (= e!2855270 e!2855271)))

(declare-fun res!1912775 () Bool)

(assert (=> b!4578856 (=> res!1912775 e!2855271)))

(assert (=> b!4578856 (= res!1912775 (= (h!56866 (toList!4539 lm!1477)) lt!1743730))))

(declare-fun b!4578857 () Bool)

(assert (=> b!4578857 (= e!2855271 (contains!13822 (t!358049 (toList!4539 lm!1477)) lt!1743730))))

(assert (= (and d!1433641 res!1912774) b!4578856))

(assert (= (and b!4578856 (not res!1912775)) b!4578857))

(declare-fun m!5387873 () Bool)

(assert (=> d!1433641 m!5387873))

(declare-fun m!5387875 () Bool)

(assert (=> d!1433641 m!5387875))

(assert (=> b!4578857 m!5387387))

(assert (=> b!4578635 d!1433641))

(declare-fun d!1433643 () Bool)

(declare-fun e!2855285 () Bool)

(assert (=> d!1433643 e!2855285))

(declare-fun res!1912785 () Bool)

(assert (=> d!1433643 (=> res!1912785 e!2855285)))

(declare-fun lt!1744009 () Bool)

(assert (=> d!1433643 (= res!1912785 (not lt!1744009))))

(declare-fun lt!1744006 () Bool)

(assert (=> d!1433643 (= lt!1744009 lt!1744006)))

(declare-fun lt!1744007 () Unit!105349)

(declare-fun e!2855286 () Unit!105349)

(assert (=> d!1433643 (= lt!1744007 e!2855286)))

(declare-fun c!783708 () Bool)

(assert (=> d!1433643 (= c!783708 lt!1744006)))

(declare-fun containsKey!2044 (List!51059 (_ BitVec 64)) Bool)

(assert (=> d!1433643 (= lt!1744006 (containsKey!2044 (toList!4539 lm!1477) lt!1743733))))

(assert (=> d!1433643 (= (contains!13823 lm!1477 lt!1743733) lt!1744009)))

(declare-fun b!4578879 () Bool)

(declare-fun lt!1744008 () Unit!105349)

(assert (=> b!4578879 (= e!2855286 lt!1744008)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1151 (List!51059 (_ BitVec 64)) Unit!105349)

(assert (=> b!4578879 (= lt!1744008 (lemmaContainsKeyImpliesGetValueByKeyDefined!1151 (toList!4539 lm!1477) lt!1743733))))

(declare-fun isDefined!8587 (Option!11313) Bool)

(assert (=> b!4578879 (isDefined!8587 (getValueByKey!1245 (toList!4539 lm!1477) lt!1743733))))

(declare-fun b!4578880 () Bool)

(declare-fun Unit!105378 () Unit!105349)

(assert (=> b!4578880 (= e!2855286 Unit!105378)))

(declare-fun b!4578881 () Bool)

(assert (=> b!4578881 (= e!2855285 (isDefined!8587 (getValueByKey!1245 (toList!4539 lm!1477) lt!1743733)))))

(assert (= (and d!1433643 c!783708) b!4578879))

(assert (= (and d!1433643 (not c!783708)) b!4578880))

(assert (= (and d!1433643 (not res!1912785)) b!4578881))

(declare-fun m!5387939 () Bool)

(assert (=> d!1433643 m!5387939))

(declare-fun m!5387941 () Bool)

(assert (=> b!4578879 m!5387941))

(declare-fun m!5387943 () Bool)

(assert (=> b!4578879 m!5387943))

(assert (=> b!4578879 m!5387943))

(declare-fun m!5387945 () Bool)

(assert (=> b!4578879 m!5387945))

(assert (=> b!4578881 m!5387943))

(assert (=> b!4578881 m!5387943))

(assert (=> b!4578881 m!5387945))

(assert (=> b!4578635 d!1433643))

(declare-fun b!4578892 () Bool)

(declare-fun e!2855292 () List!51058)

(assert (=> b!4578892 (= e!2855292 (Cons!50934 (h!56865 lt!1743751) (removePairForKey!893 (t!358048 lt!1743751) key!3287)))))

(declare-fun b!4578891 () Bool)

(declare-fun e!2855291 () List!51058)

(assert (=> b!4578891 (= e!2855291 e!2855292)))

(declare-fun c!783714 () Bool)

(assert (=> b!4578891 (= c!783714 ((_ is Cons!50934) lt!1743751))))

(declare-fun b!4578890 () Bool)

(assert (=> b!4578890 (= e!2855291 (t!358048 lt!1743751))))

(declare-fun d!1433659 () Bool)

(declare-fun lt!1744012 () List!51058)

(assert (=> d!1433659 (not (containsKey!2040 lt!1744012 key!3287))))

(assert (=> d!1433659 (= lt!1744012 e!2855291)))

(declare-fun c!783713 () Bool)

(assert (=> d!1433659 (= c!783713 (and ((_ is Cons!50934) lt!1743751) (= (_1!29043 (h!56865 lt!1743751)) key!3287)))))

(assert (=> d!1433659 (noDuplicateKeys!1266 lt!1743751)))

(assert (=> d!1433659 (= (removePairForKey!893 lt!1743751 key!3287) lt!1744012)))

(declare-fun b!4578893 () Bool)

(assert (=> b!4578893 (= e!2855292 Nil!50934)))

(assert (= (and d!1433659 c!783713) b!4578890))

(assert (= (and d!1433659 (not c!783713)) b!4578891))

(assert (= (and b!4578891 c!783714) b!4578892))

(assert (= (and b!4578891 (not c!783714)) b!4578893))

(declare-fun m!5387947 () Bool)

(assert (=> b!4578892 m!5387947))

(declare-fun m!5387949 () Bool)

(assert (=> d!1433659 m!5387949))

(declare-fun m!5387951 () Bool)

(assert (=> d!1433659 m!5387951))

(assert (=> b!4578635 d!1433659))

(declare-fun d!1433661 () Bool)

(assert (=> d!1433661 (contains!13822 (toList!4539 lm!1477) (tuple2!51501 hash!344 lt!1743751))))

(declare-fun lt!1744015 () Unit!105349)

(declare-fun choose!30485 (List!51059 (_ BitVec 64) List!51058) Unit!105349)

(assert (=> d!1433661 (= lt!1744015 (choose!30485 (toList!4539 lm!1477) hash!344 lt!1743751))))

(declare-fun e!2855295 () Bool)

(assert (=> d!1433661 e!2855295))

(declare-fun res!1912788 () Bool)

(assert (=> d!1433661 (=> (not res!1912788) (not e!2855295))))

(declare-fun isStrictlySorted!508 (List!51059) Bool)

(assert (=> d!1433661 (= res!1912788 (isStrictlySorted!508 (toList!4539 lm!1477)))))

(assert (=> d!1433661 (= (lemmaGetValueByKeyImpliesContainsTuple!778 (toList!4539 lm!1477) hash!344 lt!1743751) lt!1744015)))

(declare-fun b!4578896 () Bool)

(assert (=> b!4578896 (= e!2855295 (= (getValueByKey!1245 (toList!4539 lm!1477) hash!344) (Some!11312 lt!1743751)))))

(assert (= (and d!1433661 res!1912788) b!4578896))

(declare-fun m!5387953 () Bool)

(assert (=> d!1433661 m!5387953))

(declare-fun m!5387955 () Bool)

(assert (=> d!1433661 m!5387955))

(declare-fun m!5387957 () Bool)

(assert (=> d!1433661 m!5387957))

(assert (=> b!4578896 m!5387865))

(assert (=> b!4578635 d!1433661))

(declare-fun d!1433663 () Bool)

(declare-fun res!1912793 () Bool)

(declare-fun e!2855300 () Bool)

(assert (=> d!1433663 (=> res!1912793 e!2855300)))

(assert (=> d!1433663 (= res!1912793 (not ((_ is Cons!50934) (_2!29044 lt!1743746))))))

(assert (=> d!1433663 (= (noDuplicateKeys!1266 (_2!29044 lt!1743746)) e!2855300)))

(declare-fun b!4578901 () Bool)

(declare-fun e!2855301 () Bool)

(assert (=> b!4578901 (= e!2855300 e!2855301)))

(declare-fun res!1912794 () Bool)

(assert (=> b!4578901 (=> (not res!1912794) (not e!2855301))))

(assert (=> b!4578901 (= res!1912794 (not (containsKey!2040 (t!358048 (_2!29044 lt!1743746)) (_1!29043 (h!56865 (_2!29044 lt!1743746))))))))

(declare-fun b!4578902 () Bool)

(assert (=> b!4578902 (= e!2855301 (noDuplicateKeys!1266 (t!358048 (_2!29044 lt!1743746))))))

(assert (= (and d!1433663 (not res!1912793)) b!4578901))

(assert (= (and b!4578901 res!1912794) b!4578902))

(declare-fun m!5387959 () Bool)

(assert (=> b!4578901 m!5387959))

(declare-fun m!5387961 () Bool)

(assert (=> b!4578902 m!5387961))

(assert (=> b!4578624 d!1433663))

(declare-fun d!1433665 () Bool)

(assert (=> d!1433665 (dynLambda!21328 lambda!182697 (h!56866 (toList!4539 lm!1477)))))

(declare-fun lt!1744016 () Unit!105349)

(assert (=> d!1433665 (= lt!1744016 (choose!30484 (toList!4539 lm!1477) lambda!182697 (h!56866 (toList!4539 lm!1477))))))

(declare-fun e!2855302 () Bool)

(assert (=> d!1433665 e!2855302))

(declare-fun res!1912795 () Bool)

(assert (=> d!1433665 (=> (not res!1912795) (not e!2855302))))

(assert (=> d!1433665 (= res!1912795 (forall!10490 (toList!4539 lm!1477) lambda!182697))))

(assert (=> d!1433665 (= (forallContained!2751 (toList!4539 lm!1477) lambda!182697 (h!56866 (toList!4539 lm!1477))) lt!1744016)))

(declare-fun b!4578903 () Bool)

(assert (=> b!4578903 (= e!2855302 (contains!13822 (toList!4539 lm!1477) (h!56866 (toList!4539 lm!1477))))))

(assert (= (and d!1433665 res!1912795) b!4578903))

(declare-fun b_lambda!165935 () Bool)

(assert (=> (not b_lambda!165935) (not d!1433665)))

(declare-fun m!5387963 () Bool)

(assert (=> d!1433665 m!5387963))

(declare-fun m!5387965 () Bool)

(assert (=> d!1433665 m!5387965))

(assert (=> d!1433665 m!5387479))

(declare-fun m!5387967 () Bool)

(assert (=> b!4578903 m!5387967))

(assert (=> b!4578624 d!1433665))

(declare-fun d!1433667 () Bool)

(declare-fun res!1912796 () Bool)

(declare-fun e!2855303 () Bool)

(assert (=> d!1433667 (=> res!1912796 e!2855303)))

(assert (=> d!1433667 (= res!1912796 (not ((_ is Cons!50934) newBucket!178)))))

(assert (=> d!1433667 (= (noDuplicateKeys!1266 newBucket!178) e!2855303)))

(declare-fun b!4578904 () Bool)

(declare-fun e!2855304 () Bool)

(assert (=> b!4578904 (= e!2855303 e!2855304)))

(declare-fun res!1912797 () Bool)

(assert (=> b!4578904 (=> (not res!1912797) (not e!2855304))))

(assert (=> b!4578904 (= res!1912797 (not (containsKey!2040 (t!358048 newBucket!178) (_1!29043 (h!56865 newBucket!178)))))))

(declare-fun b!4578905 () Bool)

(assert (=> b!4578905 (= e!2855304 (noDuplicateKeys!1266 (t!358048 newBucket!178)))))

(assert (= (and d!1433667 (not res!1912796)) b!4578904))

(assert (= (and b!4578904 res!1912797) b!4578905))

(declare-fun m!5387969 () Bool)

(assert (=> b!4578904 m!5387969))

(declare-fun m!5387971 () Bool)

(assert (=> b!4578905 m!5387971))

(assert (=> b!4578613 d!1433667))

(declare-fun d!1433669 () Bool)

(assert (=> d!1433669 (= (eq!705 lt!1743747 lt!1743741) (= (content!8574 (toList!4540 lt!1743747)) (content!8574 (toList!4540 lt!1743741))))))

(declare-fun bs!971351 () Bool)

(assert (= bs!971351 d!1433669))

(assert (=> bs!971351 m!5387647))

(assert (=> bs!971351 m!5387645))

(assert (=> b!4578634 d!1433669))

(declare-fun bs!971352 () Bool)

(declare-fun d!1433671 () Bool)

(assert (= bs!971352 (and d!1433671 d!1433561)))

(declare-fun lambda!182772 () Int)

(assert (=> bs!971352 (not (= lambda!182772 lambda!182709))))

(declare-fun bs!971353 () Bool)

(assert (= bs!971353 (and d!1433671 d!1433599)))

(assert (=> bs!971353 (not (= lambda!182772 lambda!182752))))

(declare-fun bs!971354 () Bool)

(assert (= bs!971354 (and d!1433671 d!1433583)))

(assert (=> bs!971354 (not (= lambda!182772 lambda!182717))))

(declare-fun bs!971355 () Bool)

(assert (= bs!971355 (and d!1433671 d!1433581)))

(assert (=> bs!971355 (not (= lambda!182772 lambda!182710))))

(declare-fun bs!971356 () Bool)

(assert (= bs!971356 (and d!1433671 start!455776)))

(assert (=> bs!971356 (not (= lambda!182772 lambda!182697))))

(declare-fun bs!971357 () Bool)

(assert (= bs!971357 (and d!1433671 d!1433629)))

(assert (=> bs!971357 (not (= lambda!182772 lambda!182761))))

(declare-fun bs!971358 () Bool)

(assert (= bs!971358 (and d!1433671 d!1433617)))

(assert (=> bs!971358 (not (= lambda!182772 lambda!182756))))

(declare-fun bs!971359 () Bool)

(assert (= bs!971359 (and d!1433671 d!1433607)))

(assert (=> bs!971359 (not (= lambda!182772 lambda!182755))))

(declare-fun bs!971360 () Bool)

(assert (= bs!971360 (and d!1433671 d!1433633)))

(assert (=> bs!971360 (not (= lambda!182772 lambda!182765))))

(assert (=> d!1433671 true))

(assert (=> d!1433671 (= (allKeysSameHashInMap!1373 lm!1477 hashF!1107) (forall!10490 (toList!4539 lm!1477) lambda!182772))))

(declare-fun bs!971361 () Bool)

(assert (= bs!971361 d!1433671))

(declare-fun m!5387973 () Bool)

(assert (=> bs!971361 m!5387973))

(assert (=> b!4578623 d!1433671))

(declare-fun d!1433673 () Bool)

(declare-fun res!1912804 () Bool)

(declare-fun e!2855311 () Bool)

(assert (=> d!1433673 (=> res!1912804 e!2855311)))

(declare-fun e!2855312 () Bool)

(assert (=> d!1433673 (= res!1912804 e!2855312)))

(declare-fun res!1912805 () Bool)

(assert (=> d!1433673 (=> (not res!1912805) (not e!2855312))))

(assert (=> d!1433673 (= res!1912805 ((_ is Cons!50935) (t!358049 (toList!4539 lm!1477))))))

(assert (=> d!1433673 (= (containsKeyBiggerList!236 (t!358049 (toList!4539 lm!1477)) key!3287) e!2855311)))

(declare-fun b!4578914 () Bool)

(assert (=> b!4578914 (= e!2855312 (containsKey!2040 (_2!29044 (h!56866 (t!358049 (toList!4539 lm!1477)))) key!3287))))

(declare-fun b!4578915 () Bool)

(declare-fun e!2855313 () Bool)

(assert (=> b!4578915 (= e!2855311 e!2855313)))

(declare-fun res!1912806 () Bool)

(assert (=> b!4578915 (=> (not res!1912806) (not e!2855313))))

(assert (=> b!4578915 (= res!1912806 ((_ is Cons!50935) (t!358049 (toList!4539 lm!1477))))))

(declare-fun b!4578916 () Bool)

(assert (=> b!4578916 (= e!2855313 (containsKeyBiggerList!236 (t!358049 (t!358049 (toList!4539 lm!1477))) key!3287))))

(assert (= (and d!1433673 res!1912805) b!4578914))

(assert (= (and d!1433673 (not res!1912804)) b!4578915))

(assert (= (and b!4578915 res!1912806) b!4578916))

(declare-fun m!5387975 () Bool)

(assert (=> b!4578914 m!5387975))

(declare-fun m!5387977 () Bool)

(assert (=> b!4578916 m!5387977))

(assert (=> b!4578612 d!1433673))

(declare-fun d!1433675 () Bool)

(declare-fun res!1912807 () Bool)

(declare-fun e!2855314 () Bool)

(assert (=> d!1433675 (=> res!1912807 e!2855314)))

(declare-fun e!2855315 () Bool)

(assert (=> d!1433675 (= res!1912807 e!2855315)))

(declare-fun res!1912808 () Bool)

(assert (=> d!1433675 (=> (not res!1912808) (not e!2855315))))

(assert (=> d!1433675 (= res!1912808 ((_ is Cons!50935) (toList!4539 lt!1743734)))))

(assert (=> d!1433675 (= (containsKeyBiggerList!236 (toList!4539 lt!1743734) key!3287) e!2855314)))

(declare-fun b!4578917 () Bool)

(assert (=> b!4578917 (= e!2855315 (containsKey!2040 (_2!29044 (h!56866 (toList!4539 lt!1743734))) key!3287))))

(declare-fun b!4578918 () Bool)

(declare-fun e!2855316 () Bool)

(assert (=> b!4578918 (= e!2855314 e!2855316)))

(declare-fun res!1912809 () Bool)

(assert (=> b!4578918 (=> (not res!1912809) (not e!2855316))))

(assert (=> b!4578918 (= res!1912809 ((_ is Cons!50935) (toList!4539 lt!1743734)))))

(declare-fun b!4578919 () Bool)

(assert (=> b!4578919 (= e!2855316 (containsKeyBiggerList!236 (t!358049 (toList!4539 lt!1743734)) key!3287))))

(assert (= (and d!1433675 res!1912808) b!4578917))

(assert (= (and d!1433675 (not res!1912807)) b!4578918))

(assert (= (and b!4578918 res!1912809) b!4578919))

(declare-fun m!5387981 () Bool)

(assert (=> b!4578917 m!5387981))

(declare-fun m!5387985 () Bool)

(assert (=> b!4578919 m!5387985))

(assert (=> b!4578612 d!1433675))

(declare-fun bs!971372 () Bool)

(declare-fun d!1433677 () Bool)

(assert (= bs!971372 (and d!1433677 d!1433561)))

(declare-fun lambda!182778 () Int)

(assert (=> bs!971372 (= lambda!182778 lambda!182709)))

(declare-fun bs!971373 () Bool)

(assert (= bs!971373 (and d!1433677 d!1433599)))

(assert (=> bs!971373 (= lambda!182778 lambda!182752)))

(declare-fun bs!971374 () Bool)

(assert (= bs!971374 (and d!1433677 d!1433583)))

(assert (=> bs!971374 (= lambda!182778 lambda!182717)))

(declare-fun bs!971375 () Bool)

(assert (= bs!971375 (and d!1433677 d!1433581)))

(assert (=> bs!971375 (= lambda!182778 lambda!182710)))

(declare-fun bs!971376 () Bool)

(assert (= bs!971376 (and d!1433677 start!455776)))

(assert (=> bs!971376 (= lambda!182778 lambda!182697)))

(declare-fun bs!971377 () Bool)

(assert (= bs!971377 (and d!1433677 d!1433617)))

(assert (=> bs!971377 (= lambda!182778 lambda!182756)))

(declare-fun bs!971378 () Bool)

(assert (= bs!971378 (and d!1433677 d!1433607)))

(assert (=> bs!971378 (= lambda!182778 lambda!182755)))

(declare-fun bs!971379 () Bool)

(assert (= bs!971379 (and d!1433677 d!1433633)))

(assert (=> bs!971379 (= lambda!182778 lambda!182765)))

(declare-fun bs!971380 () Bool)

(assert (= bs!971380 (and d!1433677 d!1433671)))

(assert (=> bs!971380 (not (= lambda!182778 lambda!182772))))

(declare-fun bs!971381 () Bool)

(assert (= bs!971381 (and d!1433677 d!1433629)))

(assert (=> bs!971381 (= lambda!182778 lambda!182761)))

(assert (=> d!1433677 (containsKeyBiggerList!236 (toList!4539 lt!1743734) key!3287)))

(declare-fun lt!1744022 () Unit!105349)

(declare-fun choose!30487 (ListLongMap!3171 K!12305 Hashable!5661) Unit!105349)

(assert (=> d!1433677 (= lt!1744022 (choose!30487 lt!1743734 key!3287 hashF!1107))))

(assert (=> d!1433677 (forall!10490 (toList!4539 lt!1743734) lambda!182778)))

(assert (=> d!1433677 (= (lemmaInLongMapThenContainsKeyBiggerList!148 lt!1743734 key!3287 hashF!1107) lt!1744022)))

(declare-fun bs!971382 () Bool)

(assert (= bs!971382 d!1433677))

(assert (=> bs!971382 m!5387455))

(declare-fun m!5387995 () Bool)

(assert (=> bs!971382 m!5387995))

(declare-fun m!5387997 () Bool)

(assert (=> bs!971382 m!5387997))

(assert (=> b!4578612 d!1433677))

(declare-fun d!1433681 () Bool)

(declare-fun e!2855317 () Bool)

(assert (=> d!1433681 e!2855317))

(declare-fun res!1912810 () Bool)

(assert (=> d!1433681 (=> (not res!1912810) (not e!2855317))))

(declare-fun lt!1744025 () ListLongMap!3171)

(assert (=> d!1433681 (= res!1912810 (contains!13823 lt!1744025 (_1!29044 lt!1743739)))))

(declare-fun lt!1744024 () List!51059)

(assert (=> d!1433681 (= lt!1744025 (ListLongMap!3172 lt!1744024))))

(declare-fun lt!1744026 () Unit!105349)

(declare-fun lt!1744023 () Unit!105349)

(assert (=> d!1433681 (= lt!1744026 lt!1744023)))

(assert (=> d!1433681 (= (getValueByKey!1245 lt!1744024 (_1!29044 lt!1743739)) (Some!11312 (_2!29044 lt!1743739)))))

(assert (=> d!1433681 (= lt!1744023 (lemmaContainsTupThenGetReturnValue!774 lt!1744024 (_1!29044 lt!1743739) (_2!29044 lt!1743739)))))

(assert (=> d!1433681 (= lt!1744024 (insertStrictlySorted!474 (toList!4539 lm!1477) (_1!29044 lt!1743739) (_2!29044 lt!1743739)))))

(assert (=> d!1433681 (= (+!1698 lm!1477 lt!1743739) lt!1744025)))

(declare-fun b!4578920 () Bool)

(declare-fun res!1912811 () Bool)

(assert (=> b!4578920 (=> (not res!1912811) (not e!2855317))))

(assert (=> b!4578920 (= res!1912811 (= (getValueByKey!1245 (toList!4539 lt!1744025) (_1!29044 lt!1743739)) (Some!11312 (_2!29044 lt!1743739))))))

(declare-fun b!4578921 () Bool)

(assert (=> b!4578921 (= e!2855317 (contains!13822 (toList!4539 lt!1744025) lt!1743739))))

(assert (= (and d!1433681 res!1912810) b!4578920))

(assert (= (and b!4578920 res!1912811) b!4578921))

(declare-fun m!5387999 () Bool)

(assert (=> d!1433681 m!5387999))

(declare-fun m!5388001 () Bool)

(assert (=> d!1433681 m!5388001))

(declare-fun m!5388003 () Bool)

(assert (=> d!1433681 m!5388003))

(declare-fun m!5388005 () Bool)

(assert (=> d!1433681 m!5388005))

(declare-fun m!5388007 () Bool)

(assert (=> b!4578920 m!5388007))

(declare-fun m!5388009 () Bool)

(assert (=> b!4578921 m!5388009))

(assert (=> b!4578633 d!1433681))

(declare-fun d!1433683 () Bool)

(declare-fun e!2855318 () Bool)

(assert (=> d!1433683 e!2855318))

(declare-fun res!1912812 () Bool)

(assert (=> d!1433683 (=> (not res!1912812) (not e!2855318))))

(declare-fun lt!1744029 () ListLongMap!3171)

(assert (=> d!1433683 (= res!1912812 (contains!13823 lt!1744029 (_1!29044 lt!1743746)))))

(declare-fun lt!1744028 () List!51059)

(assert (=> d!1433683 (= lt!1744029 (ListLongMap!3172 lt!1744028))))

(declare-fun lt!1744030 () Unit!105349)

(declare-fun lt!1744027 () Unit!105349)

(assert (=> d!1433683 (= lt!1744030 lt!1744027)))

(assert (=> d!1433683 (= (getValueByKey!1245 lt!1744028 (_1!29044 lt!1743746)) (Some!11312 (_2!29044 lt!1743746)))))

(assert (=> d!1433683 (= lt!1744027 (lemmaContainsTupThenGetReturnValue!774 lt!1744028 (_1!29044 lt!1743746) (_2!29044 lt!1743746)))))

(assert (=> d!1433683 (= lt!1744028 (insertStrictlySorted!474 (toList!4539 lt!1743740) (_1!29044 lt!1743746) (_2!29044 lt!1743746)))))

(assert (=> d!1433683 (= (+!1698 lt!1743740 lt!1743746) lt!1744029)))

(declare-fun b!4578922 () Bool)

(declare-fun res!1912813 () Bool)

(assert (=> b!4578922 (=> (not res!1912813) (not e!2855318))))

(assert (=> b!4578922 (= res!1912813 (= (getValueByKey!1245 (toList!4539 lt!1744029) (_1!29044 lt!1743746)) (Some!11312 (_2!29044 lt!1743746))))))

(declare-fun b!4578923 () Bool)

(assert (=> b!4578923 (= e!2855318 (contains!13822 (toList!4539 lt!1744029) lt!1743746))))

(assert (= (and d!1433683 res!1912812) b!4578922))

(assert (= (and b!4578922 res!1912813) b!4578923))

(declare-fun m!5388011 () Bool)

(assert (=> d!1433683 m!5388011))

(declare-fun m!5388013 () Bool)

(assert (=> d!1433683 m!5388013))

(declare-fun m!5388015 () Bool)

(assert (=> d!1433683 m!5388015))

(declare-fun m!5388017 () Bool)

(assert (=> d!1433683 m!5388017))

(declare-fun m!5388019 () Bool)

(assert (=> b!4578922 m!5388019))

(declare-fun m!5388021 () Bool)

(assert (=> b!4578923 m!5388021))

(assert (=> b!4578633 d!1433683))

(declare-fun d!1433685 () Bool)

(declare-fun res!1912821 () Bool)

(declare-fun e!2855326 () Bool)

(assert (=> d!1433685 (=> res!1912821 e!2855326)))

(assert (=> d!1433685 (= res!1912821 (and ((_ is Cons!50934) lt!1743751) (= (_1!29043 (h!56865 lt!1743751)) key!3287)))))

(assert (=> d!1433685 (= (containsKey!2040 lt!1743751 key!3287) e!2855326)))

(declare-fun b!4578931 () Bool)

(declare-fun e!2855327 () Bool)

(assert (=> b!4578931 (= e!2855326 e!2855327)))

(declare-fun res!1912822 () Bool)

(assert (=> b!4578931 (=> (not res!1912822) (not e!2855327))))

(assert (=> b!4578931 (= res!1912822 ((_ is Cons!50934) lt!1743751))))

(declare-fun b!4578932 () Bool)

(assert (=> b!4578932 (= e!2855327 (containsKey!2040 (t!358048 lt!1743751) key!3287))))

(assert (= (and d!1433685 (not res!1912821)) b!4578931))

(assert (= (and b!4578931 res!1912822) b!4578932))

(declare-fun m!5388035 () Bool)

(assert (=> b!4578932 m!5388035))

(assert (=> b!4578622 d!1433685))

(declare-fun d!1433689 () Bool)

(declare-fun hash!3109 (Hashable!5661 K!12305) (_ BitVec 64))

(assert (=> d!1433689 (= (hash!3105 hashF!1107 key!3287) (hash!3109 hashF!1107 key!3287))))

(declare-fun bs!971383 () Bool)

(assert (= bs!971383 d!1433689))

(declare-fun m!5388037 () Bool)

(assert (=> bs!971383 m!5388037))

(assert (=> b!4578611 d!1433689))

(declare-fun d!1433691 () Bool)

(assert (=> d!1433691 (= (eq!705 lt!1743748 lt!1743726) (= (content!8574 (toList!4540 lt!1743748)) (content!8574 (toList!4540 lt!1743726))))))

(declare-fun bs!971385 () Bool)

(assert (= bs!971385 d!1433691))

(declare-fun m!5388041 () Bool)

(assert (=> bs!971385 m!5388041))

(declare-fun m!5388043 () Bool)

(assert (=> bs!971385 m!5388043))

(assert (=> b!4578632 d!1433691))

(declare-fun bs!971442 () Bool)

(declare-fun b!4578971 () Bool)

(assert (= bs!971442 (and b!4578971 d!1433623)))

(declare-fun lambda!182816 () Int)

(assert (=> bs!971442 (not (= lambda!182816 lambda!182759))))

(assert (=> b!4578971 true))

(declare-fun bs!971443 () Bool)

(declare-fun b!4578973 () Bool)

(assert (= bs!971443 (and b!4578973 d!1433623)))

(declare-fun lambda!182817 () Int)

(assert (=> bs!971443 (not (= lambda!182817 lambda!182759))))

(declare-fun bs!971444 () Bool)

(assert (= bs!971444 (and b!4578973 b!4578971)))

(assert (=> bs!971444 (= lambda!182817 lambda!182816)))

(assert (=> b!4578973 true))

(declare-fun lambda!182818 () Int)

(assert (=> bs!971443 (not (= lambda!182818 lambda!182759))))

(declare-fun lt!1744123 () ListMap!3801)

(assert (=> bs!971444 (= (= lt!1744123 lt!1743731) (= lambda!182818 lambda!182816))))

(assert (=> b!4578973 (= (= lt!1744123 lt!1743731) (= lambda!182818 lambda!182817))))

(assert (=> b!4578973 true))

(declare-fun bs!971445 () Bool)

(declare-fun d!1433695 () Bool)

(assert (= bs!971445 (and d!1433695 d!1433623)))

(declare-fun lambda!182819 () Int)

(assert (=> bs!971445 (not (= lambda!182819 lambda!182759))))

(declare-fun bs!971446 () Bool)

(assert (= bs!971446 (and d!1433695 b!4578971)))

(declare-fun lt!1744119 () ListMap!3801)

(assert (=> bs!971446 (= (= lt!1744119 lt!1743731) (= lambda!182819 lambda!182816))))

(declare-fun bs!971447 () Bool)

(assert (= bs!971447 (and d!1433695 b!4578973)))

(assert (=> bs!971447 (= (= lt!1744119 lt!1743731) (= lambda!182819 lambda!182817))))

(assert (=> bs!971447 (= (= lt!1744119 lt!1744123) (= lambda!182819 lambda!182818))))

(assert (=> d!1433695 true))

(declare-fun e!2855351 () ListMap!3801)

(assert (=> b!4578971 (= e!2855351 lt!1743731)))

(declare-fun lt!1744116 () Unit!105349)

(declare-fun call!319639 () Unit!105349)

(assert (=> b!4578971 (= lt!1744116 call!319639)))

(declare-fun call!319638 () Bool)

(assert (=> b!4578971 call!319638))

(declare-fun lt!1744133 () Unit!105349)

(assert (=> b!4578971 (= lt!1744133 lt!1744116)))

(declare-fun call!319637 () Bool)

(assert (=> b!4578971 call!319637))

(declare-fun lt!1744115 () Unit!105349)

(declare-fun Unit!105390 () Unit!105349)

(assert (=> b!4578971 (= lt!1744115 Unit!105390)))

(declare-fun bm!319632 () Bool)

(declare-fun c!783723 () Bool)

(assert (=> bm!319632 (= call!319637 (forall!10492 (toList!4540 lt!1743731) (ite c!783723 lambda!182816 lambda!182818)))))

(declare-fun bm!319633 () Bool)

(assert (=> bm!319633 (= call!319638 (forall!10492 (toList!4540 lt!1743731) (ite c!783723 lambda!182816 lambda!182817)))))

(declare-fun b!4578972 () Bool)

(declare-fun e!2855353 () Bool)

(assert (=> b!4578972 (= e!2855353 (forall!10492 (toList!4540 lt!1743731) lambda!182818))))

(assert (=> b!4578973 (= e!2855351 lt!1744123)))

(declare-fun lt!1744125 () ListMap!3801)

(declare-fun +!1700 (ListMap!3801 tuple2!51498) ListMap!3801)

(assert (=> b!4578973 (= lt!1744125 (+!1700 lt!1743731 (h!56865 (_2!29044 lt!1743746))))))

(assert (=> b!4578973 (= lt!1744123 (addToMapMapFromBucket!779 (t!358048 (_2!29044 lt!1743746)) (+!1700 lt!1743731 (h!56865 (_2!29044 lt!1743746)))))))

(declare-fun lt!1744128 () Unit!105349)

(assert (=> b!4578973 (= lt!1744128 call!319639)))

(assert (=> b!4578973 call!319638))

(declare-fun lt!1744118 () Unit!105349)

(assert (=> b!4578973 (= lt!1744118 lt!1744128)))

(assert (=> b!4578973 (forall!10492 (toList!4540 lt!1744125) lambda!182818)))

(declare-fun lt!1744127 () Unit!105349)

(declare-fun Unit!105391 () Unit!105349)

(assert (=> b!4578973 (= lt!1744127 Unit!105391)))

(assert (=> b!4578973 (forall!10492 (t!358048 (_2!29044 lt!1743746)) lambda!182818)))

(declare-fun lt!1744121 () Unit!105349)

(declare-fun Unit!105392 () Unit!105349)

(assert (=> b!4578973 (= lt!1744121 Unit!105392)))

(declare-fun lt!1744131 () Unit!105349)

(declare-fun Unit!105393 () Unit!105349)

(assert (=> b!4578973 (= lt!1744131 Unit!105393)))

(declare-fun lt!1744132 () Unit!105349)

(declare-fun forallContained!2753 (List!51058 Int tuple2!51498) Unit!105349)

(assert (=> b!4578973 (= lt!1744132 (forallContained!2753 (toList!4540 lt!1744125) lambda!182818 (h!56865 (_2!29044 lt!1743746))))))

(assert (=> b!4578973 (contains!13821 lt!1744125 (_1!29043 (h!56865 (_2!29044 lt!1743746))))))

(declare-fun lt!1744126 () Unit!105349)

(declare-fun Unit!105394 () Unit!105349)

(assert (=> b!4578973 (= lt!1744126 Unit!105394)))

(assert (=> b!4578973 (contains!13821 lt!1744123 (_1!29043 (h!56865 (_2!29044 lt!1743746))))))

(declare-fun lt!1744120 () Unit!105349)

(declare-fun Unit!105395 () Unit!105349)

(assert (=> b!4578973 (= lt!1744120 Unit!105395)))

(assert (=> b!4578973 (forall!10492 (_2!29044 lt!1743746) lambda!182818)))

(declare-fun lt!1744130 () Unit!105349)

(declare-fun Unit!105396 () Unit!105349)

(assert (=> b!4578973 (= lt!1744130 Unit!105396)))

(assert (=> b!4578973 (forall!10492 (toList!4540 lt!1744125) lambda!182818)))

(declare-fun lt!1744124 () Unit!105349)

(declare-fun Unit!105397 () Unit!105349)

(assert (=> b!4578973 (= lt!1744124 Unit!105397)))

(declare-fun lt!1744129 () Unit!105349)

(declare-fun Unit!105398 () Unit!105349)

(assert (=> b!4578973 (= lt!1744129 Unit!105398)))

(declare-fun lt!1744117 () Unit!105349)

(declare-fun addForallContainsKeyThenBeforeAdding!410 (ListMap!3801 ListMap!3801 K!12305 V!12551) Unit!105349)

(assert (=> b!4578973 (= lt!1744117 (addForallContainsKeyThenBeforeAdding!410 lt!1743731 lt!1744123 (_1!29043 (h!56865 (_2!29044 lt!1743746))) (_2!29043 (h!56865 (_2!29044 lt!1743746)))))))

(assert (=> b!4578973 call!319637))

(declare-fun lt!1744122 () Unit!105349)

(assert (=> b!4578973 (= lt!1744122 lt!1744117)))

(assert (=> b!4578973 (forall!10492 (toList!4540 lt!1743731) lambda!182818)))

(declare-fun lt!1744114 () Unit!105349)

(declare-fun Unit!105399 () Unit!105349)

(assert (=> b!4578973 (= lt!1744114 Unit!105399)))

(declare-fun res!1912836 () Bool)

(assert (=> b!4578973 (= res!1912836 (forall!10492 (_2!29044 lt!1743746) lambda!182818))))

(assert (=> b!4578973 (=> (not res!1912836) (not e!2855353))))

(assert (=> b!4578973 e!2855353))

(declare-fun lt!1744113 () Unit!105349)

(declare-fun Unit!105400 () Unit!105349)

(assert (=> b!4578973 (= lt!1744113 Unit!105400)))

(declare-fun b!4578974 () Bool)

(declare-fun e!2855352 () Bool)

(assert (=> b!4578974 (= e!2855352 (invariantList!1093 (toList!4540 lt!1744119)))))

(declare-fun b!4578975 () Bool)

(declare-fun res!1912837 () Bool)

(assert (=> b!4578975 (=> (not res!1912837) (not e!2855352))))

(assert (=> b!4578975 (= res!1912837 (forall!10492 (toList!4540 lt!1743731) lambda!182819))))

(assert (=> d!1433695 e!2855352))

(declare-fun res!1912835 () Bool)

(assert (=> d!1433695 (=> (not res!1912835) (not e!2855352))))

(assert (=> d!1433695 (= res!1912835 (forall!10492 (_2!29044 lt!1743746) lambda!182819))))

(assert (=> d!1433695 (= lt!1744119 e!2855351)))

(assert (=> d!1433695 (= c!783723 ((_ is Nil!50934) (_2!29044 lt!1743746)))))

(assert (=> d!1433695 (noDuplicateKeys!1266 (_2!29044 lt!1743746))))

(assert (=> d!1433695 (= (addToMapMapFromBucket!779 (_2!29044 lt!1743746) lt!1743731) lt!1744119)))

(declare-fun bm!319634 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!410 (ListMap!3801) Unit!105349)

(assert (=> bm!319634 (= call!319639 (lemmaContainsAllItsOwnKeys!410 lt!1743731))))

(assert (= (and d!1433695 c!783723) b!4578971))

(assert (= (and d!1433695 (not c!783723)) b!4578973))

(assert (= (and b!4578973 res!1912836) b!4578972))

(assert (= (or b!4578971 b!4578973) bm!319633))

(assert (= (or b!4578971 b!4578973) bm!319632))

(assert (= (or b!4578971 b!4578973) bm!319634))

(assert (= (and d!1433695 res!1912835) b!4578975))

(assert (= (and b!4578975 res!1912837) b!4578974))

(declare-fun m!5388133 () Bool)

(assert (=> b!4578973 m!5388133))

(declare-fun m!5388135 () Bool)

(assert (=> b!4578973 m!5388135))

(declare-fun m!5388137 () Bool)

(assert (=> b!4578973 m!5388137))

(assert (=> b!4578973 m!5388135))

(declare-fun m!5388139 () Bool)

(assert (=> b!4578973 m!5388139))

(declare-fun m!5388141 () Bool)

(assert (=> b!4578973 m!5388141))

(declare-fun m!5388143 () Bool)

(assert (=> b!4578973 m!5388143))

(assert (=> b!4578973 m!5388133))

(declare-fun m!5388145 () Bool)

(assert (=> b!4578973 m!5388145))

(assert (=> b!4578973 m!5388139))

(declare-fun m!5388147 () Bool)

(assert (=> b!4578973 m!5388147))

(declare-fun m!5388149 () Bool)

(assert (=> b!4578973 m!5388149))

(declare-fun m!5388151 () Bool)

(assert (=> b!4578973 m!5388151))

(declare-fun m!5388153 () Bool)

(assert (=> d!1433695 m!5388153))

(assert (=> d!1433695 m!5387463))

(declare-fun m!5388155 () Bool)

(assert (=> bm!319633 m!5388155))

(assert (=> b!4578972 m!5388143))

(declare-fun m!5388157 () Bool)

(assert (=> b!4578974 m!5388157))

(declare-fun m!5388159 () Bool)

(assert (=> bm!319632 m!5388159))

(declare-fun m!5388161 () Bool)

(assert (=> bm!319634 m!5388161))

(declare-fun m!5388163 () Bool)

(assert (=> b!4578975 m!5388163))

(assert (=> b!4578632 d!1433695))

(declare-fun bs!971448 () Bool)

(declare-fun d!1433719 () Bool)

(assert (= bs!971448 (and d!1433719 d!1433561)))

(declare-fun lambda!182820 () Int)

(assert (=> bs!971448 (= lambda!182820 lambda!182709)))

(declare-fun bs!971449 () Bool)

(assert (= bs!971449 (and d!1433719 d!1433599)))

(assert (=> bs!971449 (= lambda!182820 lambda!182752)))

(declare-fun bs!971450 () Bool)

(assert (= bs!971450 (and d!1433719 d!1433583)))

(assert (=> bs!971450 (= lambda!182820 lambda!182717)))

(declare-fun bs!971451 () Bool)

(assert (= bs!971451 (and d!1433719 d!1433581)))

(assert (=> bs!971451 (= lambda!182820 lambda!182710)))

(declare-fun bs!971452 () Bool)

(assert (= bs!971452 (and d!1433719 start!455776)))

(assert (=> bs!971452 (= lambda!182820 lambda!182697)))

(declare-fun bs!971453 () Bool)

(assert (= bs!971453 (and d!1433719 d!1433617)))

(assert (=> bs!971453 (= lambda!182820 lambda!182756)))

(declare-fun bs!971454 () Bool)

(assert (= bs!971454 (and d!1433719 d!1433607)))

(assert (=> bs!971454 (= lambda!182820 lambda!182755)))

(declare-fun bs!971455 () Bool)

(assert (= bs!971455 (and d!1433719 d!1433633)))

(assert (=> bs!971455 (= lambda!182820 lambda!182765)))

(declare-fun bs!971456 () Bool)

(assert (= bs!971456 (and d!1433719 d!1433671)))

(assert (=> bs!971456 (not (= lambda!182820 lambda!182772))))

(declare-fun bs!971457 () Bool)

(assert (= bs!971457 (and d!1433719 d!1433629)))

(assert (=> bs!971457 (= lambda!182820 lambda!182761)))

(declare-fun bs!971458 () Bool)

(assert (= bs!971458 (and d!1433719 d!1433677)))

(assert (=> bs!971458 (= lambda!182820 lambda!182778)))

(declare-fun lt!1744134 () ListMap!3801)

(assert (=> d!1433719 (invariantList!1093 (toList!4540 lt!1744134))))

(declare-fun e!2855354 () ListMap!3801)

(assert (=> d!1433719 (= lt!1744134 e!2855354)))

(declare-fun c!783724 () Bool)

(assert (=> d!1433719 (= c!783724 ((_ is Cons!50935) (toList!4539 lt!1743750)))))

(assert (=> d!1433719 (forall!10490 (toList!4539 lt!1743750) lambda!182820)))

(assert (=> d!1433719 (= (extractMap!1322 (toList!4539 lt!1743750)) lt!1744134)))

(declare-fun b!4578978 () Bool)

(assert (=> b!4578978 (= e!2855354 (addToMapMapFromBucket!779 (_2!29044 (h!56866 (toList!4539 lt!1743750))) (extractMap!1322 (t!358049 (toList!4539 lt!1743750)))))))

(declare-fun b!4578979 () Bool)

(assert (=> b!4578979 (= e!2855354 (ListMap!3802 Nil!50934))))

(assert (= (and d!1433719 c!783724) b!4578978))

(assert (= (and d!1433719 (not c!783724)) b!4578979))

(declare-fun m!5388165 () Bool)

(assert (=> d!1433719 m!5388165))

(declare-fun m!5388167 () Bool)

(assert (=> d!1433719 m!5388167))

(declare-fun m!5388169 () Bool)

(assert (=> b!4578978 m!5388169))

(assert (=> b!4578978 m!5388169))

(declare-fun m!5388171 () Bool)

(assert (=> b!4578978 m!5388171))

(assert (=> b!4578632 d!1433719))

(declare-fun d!1433721 () Bool)

(declare-fun e!2855355 () Bool)

(assert (=> d!1433721 e!2855355))

(declare-fun res!1912838 () Bool)

(assert (=> d!1433721 (=> res!1912838 e!2855355)))

(declare-fun lt!1744138 () Bool)

(assert (=> d!1433721 (= res!1912838 (not lt!1744138))))

(declare-fun lt!1744135 () Bool)

(assert (=> d!1433721 (= lt!1744138 lt!1744135)))

(declare-fun lt!1744136 () Unit!105349)

(declare-fun e!2855356 () Unit!105349)

(assert (=> d!1433721 (= lt!1744136 e!2855356)))

(declare-fun c!783725 () Bool)

(assert (=> d!1433721 (= c!783725 lt!1744135)))

(assert (=> d!1433721 (= lt!1744135 (containsKey!2044 (toList!4539 lt!1743734) hash!344))))

(assert (=> d!1433721 (= (contains!13823 lt!1743734 hash!344) lt!1744138)))

(declare-fun b!4578980 () Bool)

(declare-fun lt!1744137 () Unit!105349)

(assert (=> b!4578980 (= e!2855356 lt!1744137)))

(assert (=> b!4578980 (= lt!1744137 (lemmaContainsKeyImpliesGetValueByKeyDefined!1151 (toList!4539 lt!1743734) hash!344))))

(assert (=> b!4578980 (isDefined!8587 (getValueByKey!1245 (toList!4539 lt!1743734) hash!344))))

(declare-fun b!4578981 () Bool)

(declare-fun Unit!105401 () Unit!105349)

(assert (=> b!4578981 (= e!2855356 Unit!105401)))

(declare-fun b!4578982 () Bool)

(assert (=> b!4578982 (= e!2855355 (isDefined!8587 (getValueByKey!1245 (toList!4539 lt!1743734) hash!344)))))

(assert (= (and d!1433721 c!783725) b!4578980))

(assert (= (and d!1433721 (not c!783725)) b!4578981))

(assert (= (and d!1433721 (not res!1912838)) b!4578982))

(declare-fun m!5388173 () Bool)

(assert (=> d!1433721 m!5388173))

(declare-fun m!5388175 () Bool)

(assert (=> b!4578980 m!5388175))

(assert (=> b!4578980 m!5387791))

(assert (=> b!4578980 m!5387791))

(declare-fun m!5388177 () Bool)

(assert (=> b!4578980 m!5388177))

(assert (=> b!4578982 m!5387791))

(assert (=> b!4578982 m!5387791))

(assert (=> b!4578982 m!5388177))

(assert (=> b!4578631 d!1433721))

(declare-fun d!1433723 () Bool)

(declare-fun tail!7909 (List!51059) List!51059)

(assert (=> d!1433723 (= (tail!7907 lm!1477) (ListLongMap!3172 (tail!7909 (toList!4539 lm!1477))))))

(declare-fun bs!971459 () Bool)

(assert (= bs!971459 d!1433723))

(declare-fun m!5388179 () Bool)

(assert (=> bs!971459 m!5388179))

(assert (=> b!4578631 d!1433723))

(declare-fun d!1433725 () Bool)

(declare-fun res!1912843 () Bool)

(declare-fun e!2855361 () Bool)

(assert (=> d!1433725 (=> res!1912843 e!2855361)))

(assert (=> d!1433725 (= res!1912843 ((_ is Nil!50935) (toList!4539 lm!1477)))))

(assert (=> d!1433725 (= (forall!10490 (toList!4539 lm!1477) lambda!182697) e!2855361)))

(declare-fun b!4578987 () Bool)

(declare-fun e!2855362 () Bool)

(assert (=> b!4578987 (= e!2855361 e!2855362)))

(declare-fun res!1912844 () Bool)

(assert (=> b!4578987 (=> (not res!1912844) (not e!2855362))))

(assert (=> b!4578987 (= res!1912844 (dynLambda!21328 lambda!182697 (h!56866 (toList!4539 lm!1477))))))

(declare-fun b!4578988 () Bool)

(assert (=> b!4578988 (= e!2855362 (forall!10490 (t!358049 (toList!4539 lm!1477)) lambda!182697))))

(assert (= (and d!1433725 (not res!1912843)) b!4578987))

(assert (= (and b!4578987 res!1912844) b!4578988))

(declare-fun b_lambda!165943 () Bool)

(assert (=> (not b_lambda!165943) (not b!4578987)))

(assert (=> b!4578987 m!5387963))

(declare-fun m!5388181 () Bool)

(assert (=> b!4578988 m!5388181))

(assert (=> start!455776 d!1433725))

(declare-fun d!1433727 () Bool)

(assert (=> d!1433727 (= (inv!66489 lm!1477) (isStrictlySorted!508 (toList!4539 lm!1477)))))

(declare-fun bs!971460 () Bool)

(assert (= bs!971460 d!1433727))

(assert (=> bs!971460 m!5387957))

(assert (=> start!455776 d!1433727))

(declare-fun bs!971461 () Bool)

(declare-fun d!1433729 () Bool)

(assert (= bs!971461 (and d!1433729 d!1433561)))

(declare-fun lambda!182823 () Int)

(assert (=> bs!971461 (= lambda!182823 lambda!182709)))

(declare-fun bs!971462 () Bool)

(assert (= bs!971462 (and d!1433729 d!1433599)))

(assert (=> bs!971462 (= lambda!182823 lambda!182752)))

(declare-fun bs!971463 () Bool)

(assert (= bs!971463 (and d!1433729 d!1433583)))

(assert (=> bs!971463 (= lambda!182823 lambda!182717)))

(declare-fun bs!971464 () Bool)

(assert (= bs!971464 (and d!1433729 d!1433581)))

(assert (=> bs!971464 (= lambda!182823 lambda!182710)))

(declare-fun bs!971465 () Bool)

(assert (= bs!971465 (and d!1433729 start!455776)))

(assert (=> bs!971465 (= lambda!182823 lambda!182697)))

(declare-fun bs!971466 () Bool)

(assert (= bs!971466 (and d!1433729 d!1433617)))

(assert (=> bs!971466 (= lambda!182823 lambda!182756)))

(declare-fun bs!971467 () Bool)

(assert (= bs!971467 (and d!1433729 d!1433607)))

(assert (=> bs!971467 (= lambda!182823 lambda!182755)))

(declare-fun bs!971468 () Bool)

(assert (= bs!971468 (and d!1433729 d!1433719)))

(assert (=> bs!971468 (= lambda!182823 lambda!182820)))

(declare-fun bs!971469 () Bool)

(assert (= bs!971469 (and d!1433729 d!1433633)))

(assert (=> bs!971469 (= lambda!182823 lambda!182765)))

(declare-fun bs!971470 () Bool)

(assert (= bs!971470 (and d!1433729 d!1433671)))

(assert (=> bs!971470 (not (= lambda!182823 lambda!182772))))

(declare-fun bs!971471 () Bool)

(assert (= bs!971471 (and d!1433729 d!1433629)))

(assert (=> bs!971471 (= lambda!182823 lambda!182761)))

(declare-fun bs!971472 () Bool)

(assert (= bs!971472 (and d!1433729 d!1433677)))

(assert (=> bs!971472 (= lambda!182823 lambda!182778)))

(assert (=> d!1433729 (not (contains!13821 (extractMap!1322 (toList!4539 lm!1477)) key!3287))))

(declare-fun lt!1744141 () Unit!105349)

(declare-fun choose!30489 (ListLongMap!3171 K!12305 Hashable!5661) Unit!105349)

(assert (=> d!1433729 (= lt!1744141 (choose!30489 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1433729 (forall!10490 (toList!4539 lm!1477) lambda!182823)))

(assert (=> d!1433729 (= (lemmaNotInItsHashBucketThenNotInMap!248 lm!1477 key!3287 hashF!1107) lt!1744141)))

(declare-fun bs!971473 () Bool)

(assert (= bs!971473 d!1433729))

(assert (=> bs!971473 m!5387487))

(assert (=> bs!971473 m!5387487))

(declare-fun m!5388183 () Bool)

(assert (=> bs!971473 m!5388183))

(declare-fun m!5388185 () Bool)

(assert (=> bs!971473 m!5388185))

(declare-fun m!5388187 () Bool)

(assert (=> bs!971473 m!5388187))

(assert (=> b!4578630 d!1433729))

(declare-fun d!1433731 () Bool)

(assert (=> d!1433731 (= (eq!705 lt!1743748 lt!1743735) (= (content!8574 (toList!4540 lt!1743748)) (content!8574 (toList!4540 lt!1743735))))))

(declare-fun bs!971474 () Bool)

(assert (= bs!971474 d!1433731))

(assert (=> bs!971474 m!5388041))

(declare-fun m!5388189 () Bool)

(assert (=> bs!971474 m!5388189))

(assert (=> b!4578629 d!1433731))

(declare-fun d!1433733 () Bool)

(assert (=> d!1433733 (= (eq!705 lt!1743726 lt!1743735) (= (content!8574 (toList!4540 lt!1743726)) (content!8574 (toList!4540 lt!1743735))))))

(declare-fun bs!971475 () Bool)

(assert (= bs!971475 d!1433733))

(assert (=> bs!971475 m!5388043))

(assert (=> bs!971475 m!5388189))

(assert (=> b!4578629 d!1433733))

(declare-fun bs!971476 () Bool)

(declare-fun b!4578989 () Bool)

(assert (= bs!971476 (and b!4578989 d!1433695)))

(declare-fun lambda!182824 () Int)

(assert (=> bs!971476 (= (= lt!1743744 lt!1744119) (= lambda!182824 lambda!182819))))

(declare-fun bs!971477 () Bool)

(assert (= bs!971477 (and b!4578989 d!1433623)))

(assert (=> bs!971477 (not (= lambda!182824 lambda!182759))))

(declare-fun bs!971478 () Bool)

(assert (= bs!971478 (and b!4578989 b!4578973)))

(assert (=> bs!971478 (= (= lt!1743744 lt!1743731) (= lambda!182824 lambda!182817))))

(assert (=> bs!971478 (= (= lt!1743744 lt!1744123) (= lambda!182824 lambda!182818))))

(declare-fun bs!971479 () Bool)

(assert (= bs!971479 (and b!4578989 b!4578971)))

(assert (=> bs!971479 (= (= lt!1743744 lt!1743731) (= lambda!182824 lambda!182816))))

(assert (=> b!4578989 true))

(declare-fun bs!971480 () Bool)

(declare-fun b!4578991 () Bool)

(assert (= bs!971480 (and b!4578991 d!1433695)))

(declare-fun lambda!182825 () Int)

(assert (=> bs!971480 (= (= lt!1743744 lt!1744119) (= lambda!182825 lambda!182819))))

(declare-fun bs!971481 () Bool)

(assert (= bs!971481 (and b!4578991 b!4578989)))

(assert (=> bs!971481 (= lambda!182825 lambda!182824)))

(declare-fun bs!971482 () Bool)

(assert (= bs!971482 (and b!4578991 d!1433623)))

(assert (=> bs!971482 (not (= lambda!182825 lambda!182759))))

(declare-fun bs!971483 () Bool)

(assert (= bs!971483 (and b!4578991 b!4578973)))

(assert (=> bs!971483 (= (= lt!1743744 lt!1743731) (= lambda!182825 lambda!182817))))

(assert (=> bs!971483 (= (= lt!1743744 lt!1744123) (= lambda!182825 lambda!182818))))

(declare-fun bs!971484 () Bool)

(assert (= bs!971484 (and b!4578991 b!4578971)))

(assert (=> bs!971484 (= (= lt!1743744 lt!1743731) (= lambda!182825 lambda!182816))))

(assert (=> b!4578991 true))

(declare-fun lt!1744152 () ListMap!3801)

(declare-fun lambda!182826 () Int)

(assert (=> bs!971481 (= (= lt!1744152 lt!1743744) (= lambda!182826 lambda!182824))))

(assert (=> bs!971482 (not (= lambda!182826 lambda!182759))))

(assert (=> bs!971483 (= (= lt!1744152 lt!1743731) (= lambda!182826 lambda!182817))))

(assert (=> bs!971483 (= (= lt!1744152 lt!1744123) (= lambda!182826 lambda!182818))))

(assert (=> bs!971484 (= (= lt!1744152 lt!1743731) (= lambda!182826 lambda!182816))))

(assert (=> bs!971480 (= (= lt!1744152 lt!1744119) (= lambda!182826 lambda!182819))))

(assert (=> b!4578991 (= (= lt!1744152 lt!1743744) (= lambda!182826 lambda!182825))))

(assert (=> b!4578991 true))

(declare-fun bs!971485 () Bool)

(declare-fun d!1433735 () Bool)

(assert (= bs!971485 (and d!1433735 b!4578989)))

(declare-fun lambda!182827 () Int)

(declare-fun lt!1744148 () ListMap!3801)

(assert (=> bs!971485 (= (= lt!1744148 lt!1743744) (= lambda!182827 lambda!182824))))

(declare-fun bs!971486 () Bool)

(assert (= bs!971486 (and d!1433735 d!1433623)))

(assert (=> bs!971486 (not (= lambda!182827 lambda!182759))))

(declare-fun bs!971487 () Bool)

(assert (= bs!971487 (and d!1433735 b!4578973)))

(assert (=> bs!971487 (= (= lt!1744148 lt!1744123) (= lambda!182827 lambda!182818))))

(declare-fun bs!971488 () Bool)

(assert (= bs!971488 (and d!1433735 b!4578971)))

(assert (=> bs!971488 (= (= lt!1744148 lt!1743731) (= lambda!182827 lambda!182816))))

(declare-fun bs!971489 () Bool)

(assert (= bs!971489 (and d!1433735 d!1433695)))

(assert (=> bs!971489 (= (= lt!1744148 lt!1744119) (= lambda!182827 lambda!182819))))

(declare-fun bs!971490 () Bool)

(assert (= bs!971490 (and d!1433735 b!4578991)))

(assert (=> bs!971490 (= (= lt!1744148 lt!1743744) (= lambda!182827 lambda!182825))))

(assert (=> bs!971487 (= (= lt!1744148 lt!1743731) (= lambda!182827 lambda!182817))))

(assert (=> bs!971490 (= (= lt!1744148 lt!1744152) (= lambda!182827 lambda!182826))))

(assert (=> d!1433735 true))

(declare-fun e!2855363 () ListMap!3801)

(assert (=> b!4578989 (= e!2855363 lt!1743744)))

(declare-fun lt!1744145 () Unit!105349)

(declare-fun call!319642 () Unit!105349)

(assert (=> b!4578989 (= lt!1744145 call!319642)))

(declare-fun call!319641 () Bool)

(assert (=> b!4578989 call!319641))

(declare-fun lt!1744162 () Unit!105349)

(assert (=> b!4578989 (= lt!1744162 lt!1744145)))

(declare-fun call!319640 () Bool)

(assert (=> b!4578989 call!319640))

(declare-fun lt!1744144 () Unit!105349)

(declare-fun Unit!105402 () Unit!105349)

(assert (=> b!4578989 (= lt!1744144 Unit!105402)))

(declare-fun bm!319635 () Bool)

(declare-fun c!783726 () Bool)

(assert (=> bm!319635 (= call!319640 (forall!10492 (toList!4540 lt!1743744) (ite c!783726 lambda!182824 lambda!182826)))))

(declare-fun bm!319636 () Bool)

(assert (=> bm!319636 (= call!319641 (forall!10492 (toList!4540 lt!1743744) (ite c!783726 lambda!182824 lambda!182825)))))

(declare-fun b!4578990 () Bool)

(declare-fun e!2855365 () Bool)

(assert (=> b!4578990 (= e!2855365 (forall!10492 (toList!4540 lt!1743744) lambda!182826))))

(assert (=> b!4578991 (= e!2855363 lt!1744152)))

(declare-fun lt!1744154 () ListMap!3801)

(assert (=> b!4578991 (= lt!1744154 (+!1700 lt!1743744 (h!56865 (_2!29044 lt!1743746))))))

(assert (=> b!4578991 (= lt!1744152 (addToMapMapFromBucket!779 (t!358048 (_2!29044 lt!1743746)) (+!1700 lt!1743744 (h!56865 (_2!29044 lt!1743746)))))))

(declare-fun lt!1744157 () Unit!105349)

(assert (=> b!4578991 (= lt!1744157 call!319642)))

(assert (=> b!4578991 call!319641))

(declare-fun lt!1744147 () Unit!105349)

(assert (=> b!4578991 (= lt!1744147 lt!1744157)))

(assert (=> b!4578991 (forall!10492 (toList!4540 lt!1744154) lambda!182826)))

(declare-fun lt!1744156 () Unit!105349)

(declare-fun Unit!105403 () Unit!105349)

(assert (=> b!4578991 (= lt!1744156 Unit!105403)))

(assert (=> b!4578991 (forall!10492 (t!358048 (_2!29044 lt!1743746)) lambda!182826)))

(declare-fun lt!1744150 () Unit!105349)

(declare-fun Unit!105404 () Unit!105349)

(assert (=> b!4578991 (= lt!1744150 Unit!105404)))

(declare-fun lt!1744160 () Unit!105349)

(declare-fun Unit!105405 () Unit!105349)

(assert (=> b!4578991 (= lt!1744160 Unit!105405)))

(declare-fun lt!1744161 () Unit!105349)

(assert (=> b!4578991 (= lt!1744161 (forallContained!2753 (toList!4540 lt!1744154) lambda!182826 (h!56865 (_2!29044 lt!1743746))))))

(assert (=> b!4578991 (contains!13821 lt!1744154 (_1!29043 (h!56865 (_2!29044 lt!1743746))))))

(declare-fun lt!1744155 () Unit!105349)

(declare-fun Unit!105406 () Unit!105349)

(assert (=> b!4578991 (= lt!1744155 Unit!105406)))

(assert (=> b!4578991 (contains!13821 lt!1744152 (_1!29043 (h!56865 (_2!29044 lt!1743746))))))

(declare-fun lt!1744149 () Unit!105349)

(declare-fun Unit!105407 () Unit!105349)

(assert (=> b!4578991 (= lt!1744149 Unit!105407)))

(assert (=> b!4578991 (forall!10492 (_2!29044 lt!1743746) lambda!182826)))

(declare-fun lt!1744159 () Unit!105349)

(declare-fun Unit!105408 () Unit!105349)

(assert (=> b!4578991 (= lt!1744159 Unit!105408)))

(assert (=> b!4578991 (forall!10492 (toList!4540 lt!1744154) lambda!182826)))

(declare-fun lt!1744153 () Unit!105349)

(declare-fun Unit!105409 () Unit!105349)

(assert (=> b!4578991 (= lt!1744153 Unit!105409)))

(declare-fun lt!1744158 () Unit!105349)

(declare-fun Unit!105410 () Unit!105349)

(assert (=> b!4578991 (= lt!1744158 Unit!105410)))

(declare-fun lt!1744146 () Unit!105349)

(assert (=> b!4578991 (= lt!1744146 (addForallContainsKeyThenBeforeAdding!410 lt!1743744 lt!1744152 (_1!29043 (h!56865 (_2!29044 lt!1743746))) (_2!29043 (h!56865 (_2!29044 lt!1743746)))))))

(assert (=> b!4578991 call!319640))

(declare-fun lt!1744151 () Unit!105349)

(assert (=> b!4578991 (= lt!1744151 lt!1744146)))

(assert (=> b!4578991 (forall!10492 (toList!4540 lt!1743744) lambda!182826)))

(declare-fun lt!1744143 () Unit!105349)

(declare-fun Unit!105411 () Unit!105349)

(assert (=> b!4578991 (= lt!1744143 Unit!105411)))

(declare-fun res!1912846 () Bool)

(assert (=> b!4578991 (= res!1912846 (forall!10492 (_2!29044 lt!1743746) lambda!182826))))

(assert (=> b!4578991 (=> (not res!1912846) (not e!2855365))))

(assert (=> b!4578991 e!2855365))

(declare-fun lt!1744142 () Unit!105349)

(declare-fun Unit!105412 () Unit!105349)

(assert (=> b!4578991 (= lt!1744142 Unit!105412)))

(declare-fun b!4578992 () Bool)

(declare-fun e!2855364 () Bool)

(assert (=> b!4578992 (= e!2855364 (invariantList!1093 (toList!4540 lt!1744148)))))

(declare-fun b!4578993 () Bool)

(declare-fun res!1912847 () Bool)

(assert (=> b!4578993 (=> (not res!1912847) (not e!2855364))))

(assert (=> b!4578993 (= res!1912847 (forall!10492 (toList!4540 lt!1743744) lambda!182827))))

(assert (=> d!1433735 e!2855364))

(declare-fun res!1912845 () Bool)

(assert (=> d!1433735 (=> (not res!1912845) (not e!2855364))))

(assert (=> d!1433735 (= res!1912845 (forall!10492 (_2!29044 lt!1743746) lambda!182827))))

(assert (=> d!1433735 (= lt!1744148 e!2855363)))

(assert (=> d!1433735 (= c!783726 ((_ is Nil!50934) (_2!29044 lt!1743746)))))

(assert (=> d!1433735 (noDuplicateKeys!1266 (_2!29044 lt!1743746))))

(assert (=> d!1433735 (= (addToMapMapFromBucket!779 (_2!29044 lt!1743746) lt!1743744) lt!1744148)))

(declare-fun bm!319637 () Bool)

(assert (=> bm!319637 (= call!319642 (lemmaContainsAllItsOwnKeys!410 lt!1743744))))

(assert (= (and d!1433735 c!783726) b!4578989))

(assert (= (and d!1433735 (not c!783726)) b!4578991))

(assert (= (and b!4578991 res!1912846) b!4578990))

(assert (= (or b!4578989 b!4578991) bm!319636))

(assert (= (or b!4578989 b!4578991) bm!319635))

(assert (= (or b!4578989 b!4578991) bm!319637))

(assert (= (and d!1433735 res!1912845) b!4578993))

(assert (= (and b!4578993 res!1912847) b!4578992))

(declare-fun m!5388191 () Bool)

(assert (=> b!4578991 m!5388191))

(declare-fun m!5388193 () Bool)

(assert (=> b!4578991 m!5388193))

(declare-fun m!5388195 () Bool)

(assert (=> b!4578991 m!5388195))

(assert (=> b!4578991 m!5388193))

(declare-fun m!5388197 () Bool)

(assert (=> b!4578991 m!5388197))

(declare-fun m!5388199 () Bool)

(assert (=> b!4578991 m!5388199))

(declare-fun m!5388201 () Bool)

(assert (=> b!4578991 m!5388201))

(assert (=> b!4578991 m!5388191))

(declare-fun m!5388203 () Bool)

(assert (=> b!4578991 m!5388203))

(assert (=> b!4578991 m!5388197))

(declare-fun m!5388205 () Bool)

(assert (=> b!4578991 m!5388205))

(declare-fun m!5388207 () Bool)

(assert (=> b!4578991 m!5388207))

(declare-fun m!5388209 () Bool)

(assert (=> b!4578991 m!5388209))

(declare-fun m!5388211 () Bool)

(assert (=> d!1433735 m!5388211))

(assert (=> d!1433735 m!5387463))

(declare-fun m!5388213 () Bool)

(assert (=> bm!319636 m!5388213))

(assert (=> b!4578990 m!5388201))

(declare-fun m!5388215 () Bool)

(assert (=> b!4578992 m!5388215))

(declare-fun m!5388217 () Bool)

(assert (=> bm!319635 m!5388217))

(declare-fun m!5388219 () Bool)

(assert (=> bm!319637 m!5388219))

(declare-fun m!5388221 () Bool)

(assert (=> b!4578993 m!5388221))

(assert (=> b!4578629 d!1433735))

(declare-fun d!1433737 () Bool)

(assert (=> d!1433737 (eq!705 (addToMapMapFromBucket!779 (_2!29044 lt!1743746) lt!1743731) (addToMapMapFromBucket!779 (_2!29044 lt!1743746) lt!1743744))))

(declare-fun lt!1744165 () Unit!105349)

(declare-fun choose!30490 (ListMap!3801 ListMap!3801 List!51058) Unit!105349)

(assert (=> d!1433737 (= lt!1744165 (choose!30490 lt!1743731 lt!1743744 (_2!29044 lt!1743746)))))

(assert (=> d!1433737 (noDuplicateKeys!1266 (_2!29044 lt!1743746))))

(assert (=> d!1433737 (= (lemmaAddToMapFromBucketPreservesEquivalence!90 lt!1743731 lt!1743744 (_2!29044 lt!1743746)) lt!1744165)))

(declare-fun bs!971491 () Bool)

(assert (= bs!971491 d!1433737))

(assert (=> bs!971491 m!5387433))

(assert (=> bs!971491 m!5387463))

(assert (=> bs!971491 m!5387449))

(declare-fun m!5388223 () Bool)

(assert (=> bs!971491 m!5388223))

(assert (=> bs!971491 m!5387449))

(assert (=> bs!971491 m!5387433))

(declare-fun m!5388225 () Bool)

(assert (=> bs!971491 m!5388225))

(assert (=> b!4578629 d!1433737))

(declare-fun d!1433739 () Bool)

(declare-fun lt!1744166 () Bool)

(assert (=> d!1433739 (= lt!1744166 (select (content!8576 (t!358049 (toList!4539 lm!1477))) lt!1743730))))

(declare-fun e!2855366 () Bool)

(assert (=> d!1433739 (= lt!1744166 e!2855366)))

(declare-fun res!1912848 () Bool)

(assert (=> d!1433739 (=> (not res!1912848) (not e!2855366))))

(assert (=> d!1433739 (= res!1912848 ((_ is Cons!50935) (t!358049 (toList!4539 lm!1477))))))

(assert (=> d!1433739 (= (contains!13822 (t!358049 (toList!4539 lm!1477)) lt!1743730) lt!1744166)))

(declare-fun b!4578994 () Bool)

(declare-fun e!2855367 () Bool)

(assert (=> b!4578994 (= e!2855366 e!2855367)))

(declare-fun res!1912849 () Bool)

(assert (=> b!4578994 (=> res!1912849 e!2855367)))

(assert (=> b!4578994 (= res!1912849 (= (h!56866 (t!358049 (toList!4539 lm!1477))) lt!1743730))))

(declare-fun b!4578995 () Bool)

(assert (=> b!4578995 (= e!2855367 (contains!13822 (t!358049 (t!358049 (toList!4539 lm!1477))) lt!1743730))))

(assert (= (and d!1433739 res!1912848) b!4578994))

(assert (= (and b!4578994 (not res!1912849)) b!4578995))

(declare-fun m!5388227 () Bool)

(assert (=> d!1433739 m!5388227))

(declare-fun m!5388229 () Bool)

(assert (=> d!1433739 m!5388229))

(declare-fun m!5388231 () Bool)

(assert (=> b!4578995 m!5388231))

(assert (=> b!4578618 d!1433739))

(declare-fun b!4579000 () Bool)

(declare-fun tp!1339677 () Bool)

(declare-fun e!2855370 () Bool)

(assert (=> b!4579000 (= e!2855370 (and tp_is_empty!28341 tp_is_empty!28343 tp!1339677))))

(assert (=> b!4578621 (= tp!1339665 e!2855370)))

(assert (= (and b!4578621 ((_ is Cons!50934) (t!358048 newBucket!178))) b!4579000))

(declare-fun b!4579005 () Bool)

(declare-fun e!2855373 () Bool)

(declare-fun tp!1339682 () Bool)

(declare-fun tp!1339683 () Bool)

(assert (=> b!4579005 (= e!2855373 (and tp!1339682 tp!1339683))))

(assert (=> b!4578614 (= tp!1339664 e!2855373)))

(assert (= (and b!4578614 ((_ is Cons!50935) (toList!4539 lm!1477))) b!4579005))

(declare-fun b_lambda!165945 () Bool)

(assert (= b_lambda!165935 (or start!455776 b_lambda!165945)))

(declare-fun bs!971492 () Bool)

(declare-fun d!1433741 () Bool)

(assert (= bs!971492 (and d!1433741 start!455776)))

(assert (=> bs!971492 (= (dynLambda!21328 lambda!182697 (h!56866 (toList!4539 lm!1477))) (noDuplicateKeys!1266 (_2!29044 (h!56866 (toList!4539 lm!1477)))))))

(declare-fun m!5388233 () Bool)

(assert (=> bs!971492 m!5388233))

(assert (=> d!1433665 d!1433741))

(declare-fun b_lambda!165947 () Bool)

(assert (= b_lambda!165933 (or start!455776 b_lambda!165947)))

(declare-fun bs!971493 () Bool)

(declare-fun d!1433743 () Bool)

(assert (= bs!971493 (and d!1433743 start!455776)))

(assert (=> bs!971493 (= (dynLambda!21328 lambda!182697 lt!1743730) (noDuplicateKeys!1266 (_2!29044 lt!1743730)))))

(declare-fun m!5388235 () Bool)

(assert (=> bs!971493 m!5388235))

(assert (=> d!1433639 d!1433743))

(declare-fun b_lambda!165949 () Bool)

(assert (= b_lambda!165943 (or start!455776 b_lambda!165949)))

(assert (=> b!4578987 d!1433741))

(check-sat (not d!1433549) (not b!4578766) (not d!1433591) (not d!1433615) (not b!4578978) (not b!4578920) (not b!4578723) (not b!4578974) (not b!4578932) (not b!4578991) (not d!1433643) (not b!4578857) tp_is_empty!28343 (not bm!319615) (not b!4579000) (not b!4578816) (not b!4578919) (not b!4578990) (not bs!971492) (not bm!319620) (not b!4578800) (not d!1433677) (not d!1433689) (not d!1433695) (not b!4578988) (not b!4578835) (not b!4578838) (not d!1433691) (not b!4578892) (not b_lambda!165945) (not d!1433561) (not b!4578917) (not b!4578922) (not b!4578902) (not d!1433607) (not b!4578995) (not b!4578716) (not b!4578709) (not d!1433671) (not d!1433619) (not b!4578879) (not b_lambda!165947) (not d!1433669) (not d!1433719) (not b!4578777) (not b!4578770) (not b!4578797) (not d!1433577) (not d!1433731) (not d!1433729) (not b!4578905) (not d!1433581) (not b!4579005) (not b!4578767) (not d!1433629) (not b!4578896) (not b!4578992) (not b!4578851) (not d!1433739) (not b!4578972) (not d!1433623) (not bs!971493) (not b!4578802) (not b!4578923) (not b!4578841) (not b!4578975) (not d!1433733) (not d!1433599) (not b!4578799) (not b!4578801) (not b!4578763) (not b!4578724) (not d!1433579) (not d!1433587) (not d!1433659) (not d!1433721) (not d!1433683) (not bm!319634) (not d!1433661) (not b!4578839) (not b!4578804) (not b!4578914) (not d!1433641) (not d!1433621) (not d!1433633) (not b!4578881) (not b!4578903) (not b!4578688) (not d!1433681) (not bm!319635) (not b!4578803) (not bm!319633) tp_is_empty!28341 (not b!4578765) (not d!1433637) (not d!1433617) (not d!1433639) (not bm!319632) (not b!4578768) (not b_lambda!165949) (not b!4578916) (not b!4578904) (not d!1433665) (not d!1433737) (not b!4578901) (not d!1433585) (not d!1433583) (not b!4578921) (not d!1433735) (not d!1433723) (not bm!319636) (not b!4578717) (not d!1433727) (not b!4578715) (not b!4578982) (not d!1433625) (not b!4578973) (not b!4578837) (not b!4578840) (not b!4578845) (not d!1433589) (not b!4578980) (not b!4578842) (not bm!319616) (not b!4578769) (not bm!319637) (not b!4578993))
(check-sat)
