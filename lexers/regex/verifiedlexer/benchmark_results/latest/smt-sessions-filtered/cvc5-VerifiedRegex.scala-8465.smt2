; Options: -q --produce-models --incremental --print-success --lang smt2.6
(set-logic ALL)

(declare-fun start!439730 () Bool)

(assert start!439730)

(declare-fun b!4472680 () Bool)

(declare-fun res!1855881 () Bool)

(declare-fun e!2785211 () Bool)

(assert (=> b!4472680 (=> res!1855881 e!2785211)))

(declare-datatypes ((K!11728 0))(
  ( (K!11729 (val!17653 Int)) )
))
(declare-datatypes ((V!11974 0))(
  ( (V!11975 (val!17654 Int)) )
))
(declare-datatypes ((tuple2!50574 0))(
  ( (tuple2!50575 (_1!28581 K!11728) (_2!28581 V!11974)) )
))
(declare-datatypes ((List!50438 0))(
  ( (Nil!50314) (Cons!50314 (h!56085 tuple2!50574) (t!357388 List!50438)) )
))
(declare-datatypes ((tuple2!50576 0))(
  ( (tuple2!50577 (_1!28582 (_ BitVec 64)) (_2!28582 List!50438)) )
))
(declare-datatypes ((List!50439 0))(
  ( (Nil!50315) (Cons!50315 (h!56086 tuple2!50576) (t!357389 List!50439)) )
))
(declare-datatypes ((ListLongMap!2709 0))(
  ( (ListLongMap!2710 (toList!4077 List!50439)) )
))
(declare-fun lm!1477 () ListLongMap!2709)

(declare-fun hash!344 () (_ BitVec 64))

(assert (=> b!4472680 (= res!1855881 (or (is-Nil!50315 (toList!4077 lm!1477)) (not (= (_1!28582 (h!56086 (toList!4077 lm!1477))) hash!344))))))

(declare-fun b!4472681 () Bool)

(declare-fun e!2785209 () Bool)

(assert (=> b!4472681 (= e!2785211 e!2785209)))

(declare-fun res!1855882 () Bool)

(assert (=> b!4472681 (=> res!1855882 e!2785209)))

(declare-fun lt!1660772 () Bool)

(assert (=> b!4472681 (= res!1855882 lt!1660772)))

(declare-datatypes ((Unit!88235 0))(
  ( (Unit!88236) )
))
(declare-fun lt!1660758 () Unit!88235)

(declare-fun e!2785217 () Unit!88235)

(assert (=> b!4472681 (= lt!1660758 e!2785217)))

(declare-fun c!761616 () Bool)

(assert (=> b!4472681 (= c!761616 lt!1660772)))

(declare-fun key!3287 () K!11728)

(declare-fun containsKey!1495 (List!50438 K!11728) Bool)

(assert (=> b!4472681 (= lt!1660772 (not (containsKey!1495 (_2!28582 (h!56086 (toList!4077 lm!1477))) key!3287)))))

(declare-fun b!4472682 () Bool)

(declare-fun e!2785214 () Bool)

(declare-fun e!2785220 () Bool)

(assert (=> b!4472682 (= e!2785214 e!2785220)))

(declare-fun res!1855889 () Bool)

(assert (=> b!4472682 (=> res!1855889 e!2785220)))

(declare-fun lt!1660755 () ListLongMap!2709)

(declare-fun tail!7522 (List!50439) List!50439)

(assert (=> b!4472682 (= res!1855889 (not (= (t!357389 (toList!4077 lm!1477)) (tail!7522 (toList!4077 lt!1660755)))))))

(declare-fun lt!1660765 () tuple2!50576)

(declare-fun +!1383 (ListLongMap!2709 tuple2!50576) ListLongMap!2709)

(assert (=> b!4472682 (= lt!1660755 (+!1383 lm!1477 lt!1660765))))

(declare-datatypes ((ListMap!3339 0))(
  ( (ListMap!3340 (toList!4078 List!50438)) )
))
(declare-fun eq!528 (ListMap!3339 ListMap!3339) Bool)

(declare-fun extractMap!1091 (List!50439) ListMap!3339)

(declare-fun -!297 (ListMap!3339 K!11728) ListMap!3339)

(assert (=> b!4472682 (eq!528 (extractMap!1091 (Cons!50315 lt!1660765 Nil!50315)) (-!297 (extractMap!1091 (Cons!50315 (tuple2!50577 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477)))) Nil!50315)) key!3287))))

(declare-fun newBucket!178 () List!50438)

(assert (=> b!4472682 (= lt!1660765 (tuple2!50577 hash!344 newBucket!178))))

(declare-fun lt!1660771 () Unit!88235)

(declare-datatypes ((Hashable!5430 0))(
  ( (HashableExt!5429 (__x!31133 Int)) )
))
(declare-fun hashF!1107 () Hashable!5430)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!27 ((_ BitVec 64) List!50438 List!50438 K!11728 Hashable!5430) Unit!88235)

(assert (=> b!4472682 (= lt!1660771 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!27 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(declare-fun lt!1660768 () List!50439)

(declare-fun contains!12880 (ListMap!3339 K!11728) Bool)

(assert (=> b!4472682 (contains!12880 (extractMap!1091 lt!1660768) key!3287)))

(declare-fun lt!1660762 () Unit!88235)

(declare-fun lemmaListContainsThenExtractedMapContains!31 (ListLongMap!2709 K!11728 Hashable!5430) Unit!88235)

(assert (=> b!4472682 (= lt!1660762 (lemmaListContainsThenExtractedMapContains!31 (ListLongMap!2710 lt!1660768) key!3287 hashF!1107))))

(declare-fun b!4472683 () Bool)

(declare-fun res!1855893 () Bool)

(declare-fun e!2785219 () Bool)

(assert (=> b!4472683 (=> (not res!1855893) (not e!2785219))))

(declare-fun allKeysSameHashInMap!1142 (ListLongMap!2709 Hashable!5430) Bool)

(assert (=> b!4472683 (= res!1855893 (allKeysSameHashInMap!1142 lm!1477 hashF!1107))))

(declare-fun b!4472684 () Bool)

(declare-fun Unit!88237 () Unit!88235)

(assert (=> b!4472684 (= e!2785217 Unit!88237)))

(declare-fun lt!1660761 () Unit!88235)

(declare-fun lemmaNotInItsHashBucketThenNotInMap!35 (ListLongMap!2709 K!11728 Hashable!5430) Unit!88235)

(assert (=> b!4472684 (= lt!1660761 (lemmaNotInItsHashBucketThenNotInMap!35 lm!1477 key!3287 hashF!1107))))

(assert (=> b!4472684 false))

(declare-fun b!4472685 () Bool)

(declare-fun res!1855883 () Bool)

(assert (=> b!4472685 (=> (not res!1855883) (not e!2785219))))

(assert (=> b!4472685 (= res!1855883 (contains!12880 (extractMap!1091 (toList!4077 lm!1477)) key!3287))))

(declare-fun b!4472686 () Bool)

(assert (=> b!4472686 (= e!2785209 e!2785214)))

(declare-fun res!1855891 () Bool)

(assert (=> b!4472686 (=> res!1855891 e!2785214)))

(declare-fun containsKeyBiggerList!35 (List!50439 K!11728) Bool)

(assert (=> b!4472686 (= res!1855891 (not (containsKeyBiggerList!35 lt!1660768 key!3287)))))

(assert (=> b!4472686 (= lt!1660768 (Cons!50315 (h!56086 (toList!4077 lm!1477)) Nil!50315))))

(declare-fun b!4472687 () Bool)

(declare-fun res!1855886 () Bool)

(declare-fun e!2785210 () Bool)

(assert (=> b!4472687 (=> (not res!1855886) (not e!2785210))))

(declare-fun allKeysSameHash!889 (List!50438 (_ BitVec 64) Hashable!5430) Bool)

(assert (=> b!4472687 (= res!1855886 (allKeysSameHash!889 newBucket!178 hash!344 hashF!1107))))

(declare-fun b!4472689 () Bool)

(declare-fun tp_is_empty!27417 () Bool)

(declare-fun tp!1336387 () Bool)

(declare-fun e!2785215 () Bool)

(declare-fun tp_is_empty!27419 () Bool)

(assert (=> b!4472689 (= e!2785215 (and tp_is_empty!27417 tp_is_empty!27419 tp!1336387))))

(declare-fun b!4472690 () Bool)

(declare-fun e!2785208 () Bool)

(declare-fun lt!1660770 () ListLongMap!2709)

(declare-fun lambda!163882 () Int)

(declare-fun forall!10013 (List!50439 Int) Bool)

(assert (=> b!4472690 (= e!2785208 (forall!10013 (toList!4077 lt!1660770) lambda!163882))))

(declare-fun lt!1660767 () Unit!88235)

(declare-fun e!2785218 () Unit!88235)

(assert (=> b!4472690 (= lt!1660767 e!2785218)))

(declare-fun c!761615 () Bool)

(declare-fun lt!1660764 () ListMap!3339)

(assert (=> b!4472690 (= c!761615 (contains!12880 lt!1660764 key!3287))))

(declare-fun b!4472691 () Bool)

(declare-fun Unit!88238 () Unit!88235)

(assert (=> b!4472691 (= e!2785218 Unit!88238)))

(declare-fun b!4472692 () Bool)

(assert (=> b!4472692 (= e!2785210 (not e!2785211))))

(declare-fun res!1855888 () Bool)

(assert (=> b!4472692 (=> res!1855888 e!2785211)))

(declare-fun lt!1660763 () List!50438)

(declare-fun removePairForKey!662 (List!50438 K!11728) List!50438)

(assert (=> b!4472692 (= res!1855888 (not (= newBucket!178 (removePairForKey!662 lt!1660763 key!3287))))))

(declare-fun lt!1660766 () tuple2!50576)

(declare-fun lt!1660760 () Unit!88235)

(declare-fun forallContained!2280 (List!50439 Int tuple2!50576) Unit!88235)

(assert (=> b!4472692 (= lt!1660760 (forallContained!2280 (toList!4077 lm!1477) lambda!163882 lt!1660766))))

(declare-fun contains!12881 (List!50439 tuple2!50576) Bool)

(assert (=> b!4472692 (contains!12881 (toList!4077 lm!1477) lt!1660766)))

(assert (=> b!4472692 (= lt!1660766 (tuple2!50577 hash!344 lt!1660763))))

(declare-fun lt!1660759 () Unit!88235)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!547 (List!50439 (_ BitVec 64) List!50438) Unit!88235)

(assert (=> b!4472692 (= lt!1660759 (lemmaGetValueByKeyImpliesContainsTuple!547 (toList!4077 lm!1477) hash!344 lt!1660763))))

(declare-fun apply!11772 (ListLongMap!2709 (_ BitVec 64)) List!50438)

(assert (=> b!4472692 (= lt!1660763 (apply!11772 lm!1477 hash!344))))

(declare-fun lt!1660757 () (_ BitVec 64))

(declare-fun contains!12882 (ListLongMap!2709 (_ BitVec 64)) Bool)

(assert (=> b!4472692 (contains!12882 lm!1477 lt!1660757)))

(declare-fun lt!1660769 () Unit!88235)

(declare-fun lemmaInGenMapThenLongMapContainsHash!109 (ListLongMap!2709 K!11728 Hashable!5430) Unit!88235)

(assert (=> b!4472692 (= lt!1660769 (lemmaInGenMapThenLongMapContainsHash!109 lm!1477 key!3287 hashF!1107))))

(declare-fun b!4472693 () Bool)

(declare-fun e!2785212 () Bool)

(assert (=> b!4472693 (= e!2785212 e!2785208)))

(declare-fun res!1855890 () Bool)

(assert (=> b!4472693 (=> res!1855890 e!2785208)))

(assert (=> b!4472693 (= res!1855890 (not (= lt!1660764 (extractMap!1091 (t!357389 (toList!4077 lm!1477))))))))

(assert (=> b!4472693 (= lt!1660764 (extractMap!1091 (toList!4077 lt!1660770)))))

(declare-fun b!4472694 () Bool)

(declare-fun Unit!88239 () Unit!88235)

(assert (=> b!4472694 (= e!2785218 Unit!88239)))

(declare-fun lt!1660756 () Unit!88235)

(assert (=> b!4472694 (= lt!1660756 (lemmaInGenMapThenLongMapContainsHash!109 lt!1660770 key!3287 hashF!1107))))

(declare-fun res!1855885 () Bool)

(assert (=> b!4472694 (= res!1855885 (contains!12882 lt!1660770 lt!1660757))))

(declare-fun e!2785216 () Bool)

(assert (=> b!4472694 (=> (not res!1855885) (not e!2785216))))

(assert (=> b!4472694 e!2785216))

(declare-fun b!4472695 () Bool)

(assert (=> b!4472695 (= e!2785216 false)))

(declare-fun b!4472688 () Bool)

(declare-fun res!1855887 () Bool)

(assert (=> b!4472688 (=> res!1855887 e!2785211)))

(declare-fun noDuplicateKeys!1035 (List!50438) Bool)

(assert (=> b!4472688 (= res!1855887 (not (noDuplicateKeys!1035 newBucket!178)))))

(declare-fun res!1855892 () Bool)

(assert (=> start!439730 (=> (not res!1855892) (not e!2785219))))

(assert (=> start!439730 (= res!1855892 (forall!10013 (toList!4077 lm!1477) lambda!163882))))

(assert (=> start!439730 e!2785219))

(assert (=> start!439730 true))

(declare-fun e!2785213 () Bool)

(declare-fun inv!65913 (ListLongMap!2709) Bool)

(assert (=> start!439730 (and (inv!65913 lm!1477) e!2785213)))

(assert (=> start!439730 tp_is_empty!27417))

(assert (=> start!439730 e!2785215))

(declare-fun b!4472696 () Bool)

(assert (=> b!4472696 (= e!2785219 e!2785210)))

(declare-fun res!1855884 () Bool)

(assert (=> b!4472696 (=> (not res!1855884) (not e!2785210))))

(assert (=> b!4472696 (= res!1855884 (= lt!1660757 hash!344))))

(declare-fun hash!2478 (Hashable!5430 K!11728) (_ BitVec 64))

(assert (=> b!4472696 (= lt!1660757 (hash!2478 hashF!1107 key!3287))))

(declare-fun b!4472697 () Bool)

(declare-fun Unit!88240 () Unit!88235)

(assert (=> b!4472697 (= e!2785217 Unit!88240)))

(declare-fun b!4472698 () Bool)

(declare-fun tp!1336386 () Bool)

(assert (=> b!4472698 (= e!2785213 tp!1336386)))

(declare-fun b!4472699 () Bool)

(assert (=> b!4472699 (= e!2785220 e!2785212)))

(declare-fun res!1855880 () Bool)

(assert (=> b!4472699 (=> res!1855880 e!2785212)))

(assert (=> b!4472699 (= res!1855880 (not (= lt!1660755 (+!1383 lt!1660770 lt!1660765))))))

(declare-fun tail!7523 (ListLongMap!2709) ListLongMap!2709)

(assert (=> b!4472699 (= lt!1660770 (tail!7523 lm!1477))))

(assert (= (and start!439730 res!1855892) b!4472683))

(assert (= (and b!4472683 res!1855893) b!4472685))

(assert (= (and b!4472685 res!1855883) b!4472696))

(assert (= (and b!4472696 res!1855884) b!4472687))

(assert (= (and b!4472687 res!1855886) b!4472692))

(assert (= (and b!4472692 (not res!1855888)) b!4472688))

(assert (= (and b!4472688 (not res!1855887)) b!4472680))

(assert (= (and b!4472680 (not res!1855881)) b!4472681))

(assert (= (and b!4472681 c!761616) b!4472684))

(assert (= (and b!4472681 (not c!761616)) b!4472697))

(assert (= (and b!4472681 (not res!1855882)) b!4472686))

(assert (= (and b!4472686 (not res!1855891)) b!4472682))

(assert (= (and b!4472682 (not res!1855889)) b!4472699))

(assert (= (and b!4472699 (not res!1855880)) b!4472693))

(assert (= (and b!4472693 (not res!1855890)) b!4472690))

(assert (= (and b!4472690 c!761615) b!4472694))

(assert (= (and b!4472690 (not c!761615)) b!4472691))

(assert (= (and b!4472694 res!1855885) b!4472695))

(assert (= start!439730 b!4472698))

(assert (= (and start!439730 (is-Cons!50314 newBucket!178)) b!4472689))

(declare-fun m!5181629 () Bool)

(assert (=> b!4472687 m!5181629))

(declare-fun m!5181631 () Bool)

(assert (=> b!4472696 m!5181631))

(declare-fun m!5181633 () Bool)

(assert (=> b!4472694 m!5181633))

(declare-fun m!5181635 () Bool)

(assert (=> b!4472694 m!5181635))

(declare-fun m!5181637 () Bool)

(assert (=> b!4472685 m!5181637))

(assert (=> b!4472685 m!5181637))

(declare-fun m!5181639 () Bool)

(assert (=> b!4472685 m!5181639))

(declare-fun m!5181641 () Bool)

(assert (=> b!4472681 m!5181641))

(declare-fun m!5181643 () Bool)

(assert (=> b!4472684 m!5181643))

(declare-fun m!5181645 () Bool)

(assert (=> b!4472693 m!5181645))

(declare-fun m!5181647 () Bool)

(assert (=> b!4472693 m!5181647))

(declare-fun m!5181649 () Bool)

(assert (=> b!4472699 m!5181649))

(declare-fun m!5181651 () Bool)

(assert (=> b!4472699 m!5181651))

(declare-fun m!5181653 () Bool)

(assert (=> b!4472692 m!5181653))

(declare-fun m!5181655 () Bool)

(assert (=> b!4472692 m!5181655))

(declare-fun m!5181657 () Bool)

(assert (=> b!4472692 m!5181657))

(declare-fun m!5181659 () Bool)

(assert (=> b!4472692 m!5181659))

(declare-fun m!5181661 () Bool)

(assert (=> b!4472692 m!5181661))

(declare-fun m!5181663 () Bool)

(assert (=> b!4472692 m!5181663))

(declare-fun m!5181665 () Bool)

(assert (=> b!4472692 m!5181665))

(declare-fun m!5181667 () Bool)

(assert (=> b!4472682 m!5181667))

(declare-fun m!5181669 () Bool)

(assert (=> b!4472682 m!5181669))

(declare-fun m!5181671 () Bool)

(assert (=> b!4472682 m!5181671))

(assert (=> b!4472682 m!5181671))

(assert (=> b!4472682 m!5181669))

(declare-fun m!5181673 () Bool)

(assert (=> b!4472682 m!5181673))

(declare-fun m!5181675 () Bool)

(assert (=> b!4472682 m!5181675))

(declare-fun m!5181677 () Bool)

(assert (=> b!4472682 m!5181677))

(declare-fun m!5181679 () Bool)

(assert (=> b!4472682 m!5181679))

(declare-fun m!5181681 () Bool)

(assert (=> b!4472682 m!5181681))

(assert (=> b!4472682 m!5181667))

(declare-fun m!5181683 () Bool)

(assert (=> b!4472682 m!5181683))

(assert (=> b!4472682 m!5181675))

(declare-fun m!5181685 () Bool)

(assert (=> b!4472682 m!5181685))

(declare-fun m!5181687 () Bool)

(assert (=> b!4472683 m!5181687))

(declare-fun m!5181689 () Bool)

(assert (=> b!4472690 m!5181689))

(declare-fun m!5181691 () Bool)

(assert (=> b!4472690 m!5181691))

(declare-fun m!5181693 () Bool)

(assert (=> b!4472688 m!5181693))

(declare-fun m!5181695 () Bool)

(assert (=> start!439730 m!5181695))

(declare-fun m!5181697 () Bool)

(assert (=> start!439730 m!5181697))

(declare-fun m!5181699 () Bool)

(assert (=> b!4472686 m!5181699))

(push 1)

(assert (not b!4472682))

(assert (not b!4472688))

(assert (not b!4472683))

(assert (not start!439730))

(assert (not b!4472687))

(assert (not b!4472684))

(assert (not b!4472693))

(assert (not b!4472689))

(assert (not b!4472690))

(assert (not b!4472696))

(assert (not b!4472686))

(assert (not b!4472698))

(assert (not b!4472681))

(assert tp_is_empty!27419)

(assert (not b!4472694))

(assert (not b!4472699))

(assert tp_is_empty!27417)

(assert (not b!4472685))

(assert (not b!4472692))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(get-model)

(pop 1)

(declare-fun bs!797280 () Bool)

(declare-fun d!1365076 () Bool)

(assert (= bs!797280 (and d!1365076 start!439730)))

(declare-fun lambda!163892 () Int)

(assert (=> bs!797280 (= lambda!163892 lambda!163882)))

(declare-fun lt!1660829 () ListMap!3339)

(declare-fun invariantList!934 (List!50438) Bool)

(assert (=> d!1365076 (invariantList!934 (toList!4078 lt!1660829))))

(declare-fun e!2785268 () ListMap!3339)

(assert (=> d!1365076 (= lt!1660829 e!2785268)))

(declare-fun c!761625 () Bool)

(assert (=> d!1365076 (= c!761625 (is-Cons!50315 (Cons!50315 lt!1660765 Nil!50315)))))

(assert (=> d!1365076 (forall!10013 (Cons!50315 lt!1660765 Nil!50315) lambda!163892)))

(assert (=> d!1365076 (= (extractMap!1091 (Cons!50315 lt!1660765 Nil!50315)) lt!1660829)))

(declare-fun b!4472770 () Bool)

(declare-fun addToMapMapFromBucket!596 (List!50438 ListMap!3339) ListMap!3339)

(assert (=> b!4472770 (= e!2785268 (addToMapMapFromBucket!596 (_2!28582 (h!56086 (Cons!50315 lt!1660765 Nil!50315))) (extractMap!1091 (t!357389 (Cons!50315 lt!1660765 Nil!50315)))))))

(declare-fun b!4472771 () Bool)

(assert (=> b!4472771 (= e!2785268 (ListMap!3340 Nil!50314))))

(assert (= (and d!1365076 c!761625) b!4472770))

(assert (= (and d!1365076 (not c!761625)) b!4472771))

(declare-fun m!5181777 () Bool)

(assert (=> d!1365076 m!5181777))

(declare-fun m!5181779 () Bool)

(assert (=> d!1365076 m!5181779))

(declare-fun m!5181781 () Bool)

(assert (=> b!4472770 m!5181781))

(assert (=> b!4472770 m!5181781))

(declare-fun m!5181783 () Bool)

(assert (=> b!4472770 m!5181783))

(assert (=> b!4472682 d!1365076))

(declare-fun bs!797281 () Bool)

(declare-fun d!1365078 () Bool)

(assert (= bs!797281 (and d!1365078 start!439730)))

(declare-fun lambda!163893 () Int)

(assert (=> bs!797281 (= lambda!163893 lambda!163882)))

(declare-fun bs!797282 () Bool)

(assert (= bs!797282 (and d!1365078 d!1365076)))

(assert (=> bs!797282 (= lambda!163893 lambda!163892)))

(declare-fun lt!1660830 () ListMap!3339)

(assert (=> d!1365078 (invariantList!934 (toList!4078 lt!1660830))))

(declare-fun e!2785269 () ListMap!3339)

(assert (=> d!1365078 (= lt!1660830 e!2785269)))

(declare-fun c!761626 () Bool)

(assert (=> d!1365078 (= c!761626 (is-Cons!50315 (Cons!50315 (tuple2!50577 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477)))) Nil!50315)))))

(assert (=> d!1365078 (forall!10013 (Cons!50315 (tuple2!50577 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477)))) Nil!50315) lambda!163893)))

(assert (=> d!1365078 (= (extractMap!1091 (Cons!50315 (tuple2!50577 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477)))) Nil!50315)) lt!1660830)))

(declare-fun b!4472772 () Bool)

(assert (=> b!4472772 (= e!2785269 (addToMapMapFromBucket!596 (_2!28582 (h!56086 (Cons!50315 (tuple2!50577 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477)))) Nil!50315))) (extractMap!1091 (t!357389 (Cons!50315 (tuple2!50577 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477)))) Nil!50315)))))))

(declare-fun b!4472773 () Bool)

(assert (=> b!4472773 (= e!2785269 (ListMap!3340 Nil!50314))))

(assert (= (and d!1365078 c!761626) b!4472772))

(assert (= (and d!1365078 (not c!761626)) b!4472773))

(declare-fun m!5181785 () Bool)

(assert (=> d!1365078 m!5181785))

(declare-fun m!5181787 () Bool)

(assert (=> d!1365078 m!5181787))

(declare-fun m!5181789 () Bool)

(assert (=> b!4472772 m!5181789))

(assert (=> b!4472772 m!5181789))

(declare-fun m!5181791 () Bool)

(assert (=> b!4472772 m!5181791))

(assert (=> b!4472682 d!1365078))

(declare-fun bs!797283 () Bool)

(declare-fun d!1365080 () Bool)

(assert (= bs!797283 (and d!1365080 start!439730)))

(declare-fun lambda!163894 () Int)

(assert (=> bs!797283 (= lambda!163894 lambda!163882)))

(declare-fun bs!797284 () Bool)

(assert (= bs!797284 (and d!1365080 d!1365076)))

(assert (=> bs!797284 (= lambda!163894 lambda!163892)))

(declare-fun bs!797285 () Bool)

(assert (= bs!797285 (and d!1365080 d!1365078)))

(assert (=> bs!797285 (= lambda!163894 lambda!163893)))

(declare-fun lt!1660831 () ListMap!3339)

(assert (=> d!1365080 (invariantList!934 (toList!4078 lt!1660831))))

(declare-fun e!2785270 () ListMap!3339)

(assert (=> d!1365080 (= lt!1660831 e!2785270)))

(declare-fun c!761627 () Bool)

(assert (=> d!1365080 (= c!761627 (is-Cons!50315 lt!1660768))))

(assert (=> d!1365080 (forall!10013 lt!1660768 lambda!163894)))

(assert (=> d!1365080 (= (extractMap!1091 lt!1660768) lt!1660831)))

(declare-fun b!4472774 () Bool)

(assert (=> b!4472774 (= e!2785270 (addToMapMapFromBucket!596 (_2!28582 (h!56086 lt!1660768)) (extractMap!1091 (t!357389 lt!1660768))))))

(declare-fun b!4472775 () Bool)

(assert (=> b!4472775 (= e!2785270 (ListMap!3340 Nil!50314))))

(assert (= (and d!1365080 c!761627) b!4472774))

(assert (= (and d!1365080 (not c!761627)) b!4472775))

(declare-fun m!5181793 () Bool)

(assert (=> d!1365080 m!5181793))

(declare-fun m!5181795 () Bool)

(assert (=> d!1365080 m!5181795))

(declare-fun m!5181797 () Bool)

(assert (=> b!4472774 m!5181797))

(assert (=> b!4472774 m!5181797))

(declare-fun m!5181799 () Bool)

(assert (=> b!4472774 m!5181799))

(assert (=> b!4472682 d!1365080))

(declare-fun d!1365082 () Bool)

(declare-fun e!2785273 () Bool)

(assert (=> d!1365082 e!2785273))

(declare-fun res!1855944 () Bool)

(assert (=> d!1365082 (=> (not res!1855944) (not e!2785273))))

(declare-fun lt!1660834 () ListMap!3339)

(assert (=> d!1365082 (= res!1855944 (not (contains!12880 lt!1660834 key!3287)))))

(declare-fun removePresrvNoDuplicatedKeys!70 (List!50438 K!11728) List!50438)

(assert (=> d!1365082 (= lt!1660834 (ListMap!3340 (removePresrvNoDuplicatedKeys!70 (toList!4078 (extractMap!1091 (Cons!50315 (tuple2!50577 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477)))) Nil!50315))) key!3287)))))

(assert (=> d!1365082 (= (-!297 (extractMap!1091 (Cons!50315 (tuple2!50577 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477)))) Nil!50315)) key!3287) lt!1660834)))

(declare-fun b!4472778 () Bool)

(declare-datatypes ((List!50442 0))(
  ( (Nil!50318) (Cons!50318 (h!56090 K!11728) (t!357392 List!50442)) )
))
(declare-fun content!8123 (List!50442) (Set K!11728))

(declare-fun keys!17381 (ListMap!3339) List!50442)

(assert (=> b!4472778 (= e!2785273 (= (set.minus (content!8123 (keys!17381 (extractMap!1091 (Cons!50315 (tuple2!50577 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477)))) Nil!50315)))) (set.insert key!3287 (as set.empty (Set K!11728)))) (content!8123 (keys!17381 lt!1660834))))))

(assert (= (and d!1365082 res!1855944) b!4472778))

(declare-fun m!5181801 () Bool)

(assert (=> d!1365082 m!5181801))

(declare-fun m!5181803 () Bool)

(assert (=> d!1365082 m!5181803))

(assert (=> b!4472778 m!5181667))

(declare-fun m!5181805 () Bool)

(assert (=> b!4472778 m!5181805))

(declare-fun m!5181807 () Bool)

(assert (=> b!4472778 m!5181807))

(declare-fun m!5181809 () Bool)

(assert (=> b!4472778 m!5181809))

(declare-fun m!5181811 () Bool)

(assert (=> b!4472778 m!5181811))

(assert (=> b!4472778 m!5181805))

(declare-fun m!5181813 () Bool)

(assert (=> b!4472778 m!5181813))

(assert (=> b!4472778 m!5181807))

(assert (=> b!4472682 d!1365082))

(declare-fun bs!797286 () Bool)

(declare-fun d!1365084 () Bool)

(assert (= bs!797286 (and d!1365084 start!439730)))

(declare-fun lambda!163897 () Int)

(assert (=> bs!797286 (= lambda!163897 lambda!163882)))

(declare-fun bs!797287 () Bool)

(assert (= bs!797287 (and d!1365084 d!1365076)))

(assert (=> bs!797287 (= lambda!163897 lambda!163892)))

(declare-fun bs!797288 () Bool)

(assert (= bs!797288 (and d!1365084 d!1365078)))

(assert (=> bs!797288 (= lambda!163897 lambda!163893)))

(declare-fun bs!797289 () Bool)

(assert (= bs!797289 (and d!1365084 d!1365080)))

(assert (=> bs!797289 (= lambda!163897 lambda!163894)))

(assert (=> d!1365084 (contains!12880 (extractMap!1091 (toList!4077 (ListLongMap!2710 lt!1660768))) key!3287)))

(declare-fun lt!1660853 () Unit!88235)

(declare-fun choose!28640 (ListLongMap!2709 K!11728 Hashable!5430) Unit!88235)

(assert (=> d!1365084 (= lt!1660853 (choose!28640 (ListLongMap!2710 lt!1660768) key!3287 hashF!1107))))

(assert (=> d!1365084 (forall!10013 (toList!4077 (ListLongMap!2710 lt!1660768)) lambda!163897)))

(assert (=> d!1365084 (= (lemmaListContainsThenExtractedMapContains!31 (ListLongMap!2710 lt!1660768) key!3287 hashF!1107) lt!1660853)))

(declare-fun bs!797290 () Bool)

(assert (= bs!797290 d!1365084))

(declare-fun m!5181815 () Bool)

(assert (=> bs!797290 m!5181815))

(assert (=> bs!797290 m!5181815))

(declare-fun m!5181817 () Bool)

(assert (=> bs!797290 m!5181817))

(declare-fun m!5181819 () Bool)

(assert (=> bs!797290 m!5181819))

(declare-fun m!5181821 () Bool)

(assert (=> bs!797290 m!5181821))

(assert (=> b!4472682 d!1365084))

(declare-fun d!1365086 () Bool)

(declare-fun content!8124 (List!50438) (Set tuple2!50574))

(assert (=> d!1365086 (= (eq!528 (extractMap!1091 (Cons!50315 lt!1660765 Nil!50315)) (-!297 (extractMap!1091 (Cons!50315 (tuple2!50577 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477)))) Nil!50315)) key!3287)) (= (content!8124 (toList!4078 (extractMap!1091 (Cons!50315 lt!1660765 Nil!50315)))) (content!8124 (toList!4078 (-!297 (extractMap!1091 (Cons!50315 (tuple2!50577 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477)))) Nil!50315)) key!3287)))))))

(declare-fun bs!797291 () Bool)

(assert (= bs!797291 d!1365086))

(declare-fun m!5181823 () Bool)

(assert (=> bs!797291 m!5181823))

(declare-fun m!5181825 () Bool)

(assert (=> bs!797291 m!5181825))

(assert (=> b!4472682 d!1365086))

(declare-fun d!1365088 () Bool)

(assert (=> d!1365088 (= (tail!7522 (toList!4077 lt!1660755)) (t!357389 (toList!4077 lt!1660755)))))

(assert (=> b!4472682 d!1365088))

(declare-fun d!1365090 () Bool)

(declare-fun e!2785294 () Bool)

(assert (=> d!1365090 e!2785294))

(declare-fun res!1855958 () Bool)

(assert (=> d!1365090 (=> (not res!1855958) (not e!2785294))))

(declare-fun lt!1660870 () ListLongMap!2709)

(assert (=> d!1365090 (= res!1855958 (contains!12882 lt!1660870 (_1!28582 lt!1660765)))))

(declare-fun lt!1660871 () List!50439)

(assert (=> d!1365090 (= lt!1660870 (ListLongMap!2710 lt!1660871))))

(declare-fun lt!1660872 () Unit!88235)

(declare-fun lt!1660873 () Unit!88235)

(assert (=> d!1365090 (= lt!1660872 lt!1660873)))

(declare-datatypes ((Option!10940 0))(
  ( (None!10939) (Some!10939 (v!44279 List!50438)) )
))
(declare-fun getValueByKey!926 (List!50439 (_ BitVec 64)) Option!10940)

(assert (=> d!1365090 (= (getValueByKey!926 lt!1660871 (_1!28582 lt!1660765)) (Some!10939 (_2!28582 lt!1660765)))))

(declare-fun lemmaContainsTupThenGetReturnValue!591 (List!50439 (_ BitVec 64) List!50438) Unit!88235)

(assert (=> d!1365090 (= lt!1660873 (lemmaContainsTupThenGetReturnValue!591 lt!1660871 (_1!28582 lt!1660765) (_2!28582 lt!1660765)))))

(declare-fun insertStrictlySorted!337 (List!50439 (_ BitVec 64) List!50438) List!50439)

(assert (=> d!1365090 (= lt!1660871 (insertStrictlySorted!337 (toList!4077 lm!1477) (_1!28582 lt!1660765) (_2!28582 lt!1660765)))))

(assert (=> d!1365090 (= (+!1383 lm!1477 lt!1660765) lt!1660870)))

(declare-fun b!4472810 () Bool)

(declare-fun res!1855959 () Bool)

(assert (=> b!4472810 (=> (not res!1855959) (not e!2785294))))

(assert (=> b!4472810 (= res!1855959 (= (getValueByKey!926 (toList!4077 lt!1660870) (_1!28582 lt!1660765)) (Some!10939 (_2!28582 lt!1660765))))))

(declare-fun b!4472811 () Bool)

(assert (=> b!4472811 (= e!2785294 (contains!12881 (toList!4077 lt!1660870) lt!1660765))))

(assert (= (and d!1365090 res!1855958) b!4472810))

(assert (= (and b!4472810 res!1855959) b!4472811))

(declare-fun m!5181847 () Bool)

(assert (=> d!1365090 m!5181847))

(declare-fun m!5181849 () Bool)

(assert (=> d!1365090 m!5181849))

(declare-fun m!5181851 () Bool)

(assert (=> d!1365090 m!5181851))

(declare-fun m!5181853 () Bool)

(assert (=> d!1365090 m!5181853))

(declare-fun m!5181855 () Bool)

(assert (=> b!4472810 m!5181855))

(declare-fun m!5181857 () Bool)

(assert (=> b!4472811 m!5181857))

(assert (=> b!4472682 d!1365090))

(declare-fun b!4472830 () Bool)

(assert (=> b!4472830 false))

(declare-fun lt!1660895 () Unit!88235)

(declare-fun lt!1660897 () Unit!88235)

(assert (=> b!4472830 (= lt!1660895 lt!1660897)))

(declare-fun containsKey!1497 (List!50438 K!11728) Bool)

(assert (=> b!4472830 (containsKey!1497 (toList!4078 (extractMap!1091 lt!1660768)) key!3287)))

(declare-fun lemmaInGetKeysListThenContainsKey!381 (List!50438 K!11728) Unit!88235)

(assert (=> b!4472830 (= lt!1660897 (lemmaInGetKeysListThenContainsKey!381 (toList!4078 (extractMap!1091 lt!1660768)) key!3287))))

(declare-fun e!2785308 () Unit!88235)

(declare-fun Unit!88247 () Unit!88235)

(assert (=> b!4472830 (= e!2785308 Unit!88247)))

(declare-fun b!4472831 () Bool)

(declare-fun e!2785311 () List!50442)

(assert (=> b!4472831 (= e!2785311 (keys!17381 (extractMap!1091 lt!1660768)))))

(declare-fun b!4472832 () Bool)

(declare-fun e!2785312 () Unit!88235)

(assert (=> b!4472832 (= e!2785312 e!2785308)))

(declare-fun c!761645 () Bool)

(declare-fun call!311464 () Bool)

(assert (=> b!4472832 (= c!761645 call!311464)))

(declare-fun b!4472833 () Bool)

(declare-fun e!2785310 () Bool)

(declare-fun contains!12886 (List!50442 K!11728) Bool)

(assert (=> b!4472833 (= e!2785310 (not (contains!12886 (keys!17381 (extractMap!1091 lt!1660768)) key!3287)))))

(declare-fun d!1365094 () Bool)

(declare-fun e!2785309 () Bool)

(assert (=> d!1365094 e!2785309))

(declare-fun res!1855966 () Bool)

(assert (=> d!1365094 (=> res!1855966 e!2785309)))

(assert (=> d!1365094 (= res!1855966 e!2785310)))

(declare-fun res!1855967 () Bool)

(assert (=> d!1365094 (=> (not res!1855967) (not e!2785310))))

(declare-fun lt!1660896 () Bool)

(assert (=> d!1365094 (= res!1855967 (not lt!1660896))))

(declare-fun lt!1660900 () Bool)

(assert (=> d!1365094 (= lt!1660896 lt!1660900)))

(declare-fun lt!1660894 () Unit!88235)

(assert (=> d!1365094 (= lt!1660894 e!2785312)))

(declare-fun c!761643 () Bool)

(assert (=> d!1365094 (= c!761643 lt!1660900)))

(assert (=> d!1365094 (= lt!1660900 (containsKey!1497 (toList!4078 (extractMap!1091 lt!1660768)) key!3287))))

(assert (=> d!1365094 (= (contains!12880 (extractMap!1091 lt!1660768) key!3287) lt!1660896)))

(declare-fun b!4472834 () Bool)

(declare-fun e!2785307 () Bool)

(assert (=> b!4472834 (= e!2785307 (contains!12886 (keys!17381 (extractMap!1091 lt!1660768)) key!3287))))

(declare-fun b!4472835 () Bool)

(assert (=> b!4472835 (= e!2785309 e!2785307)))

(declare-fun res!1855968 () Bool)

(assert (=> b!4472835 (=> (not res!1855968) (not e!2785307))))

(declare-datatypes ((Option!10941 0))(
  ( (None!10940) (Some!10940 (v!44280 V!11974)) )
))
(declare-fun isDefined!8227 (Option!10941) Bool)

(declare-fun getValueByKey!927 (List!50438 K!11728) Option!10941)

(assert (=> b!4472835 (= res!1855968 (isDefined!8227 (getValueByKey!927 (toList!4078 (extractMap!1091 lt!1660768)) key!3287)))))

(declare-fun b!4472836 () Bool)

(declare-fun getKeysList!382 (List!50438) List!50442)

(assert (=> b!4472836 (= e!2785311 (getKeysList!382 (toList!4078 (extractMap!1091 lt!1660768))))))

(declare-fun b!4472837 () Bool)

(declare-fun lt!1660899 () Unit!88235)

(assert (=> b!4472837 (= e!2785312 lt!1660899)))

(declare-fun lt!1660893 () Unit!88235)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!830 (List!50438 K!11728) Unit!88235)

(assert (=> b!4472837 (= lt!1660893 (lemmaContainsKeyImpliesGetValueByKeyDefined!830 (toList!4078 (extractMap!1091 lt!1660768)) key!3287))))

(assert (=> b!4472837 (isDefined!8227 (getValueByKey!927 (toList!4078 (extractMap!1091 lt!1660768)) key!3287))))

(declare-fun lt!1660898 () Unit!88235)

(assert (=> b!4472837 (= lt!1660898 lt!1660893)))

(declare-fun lemmaInListThenGetKeysListContains!378 (List!50438 K!11728) Unit!88235)

(assert (=> b!4472837 (= lt!1660899 (lemmaInListThenGetKeysListContains!378 (toList!4078 (extractMap!1091 lt!1660768)) key!3287))))

(assert (=> b!4472837 call!311464))

(declare-fun b!4472838 () Bool)

(declare-fun Unit!88248 () Unit!88235)

(assert (=> b!4472838 (= e!2785308 Unit!88248)))

(declare-fun bm!311459 () Bool)

(assert (=> bm!311459 (= call!311464 (contains!12886 e!2785311 key!3287))))

(declare-fun c!761644 () Bool)

(assert (=> bm!311459 (= c!761644 c!761643)))

(assert (= (and d!1365094 c!761643) b!4472837))

(assert (= (and d!1365094 (not c!761643)) b!4472832))

(assert (= (and b!4472832 c!761645) b!4472830))

(assert (= (and b!4472832 (not c!761645)) b!4472838))

(assert (= (or b!4472837 b!4472832) bm!311459))

(assert (= (and bm!311459 c!761644) b!4472836))

(assert (= (and bm!311459 (not c!761644)) b!4472831))

(assert (= (and d!1365094 res!1855967) b!4472833))

(assert (= (and d!1365094 (not res!1855966)) b!4472835))

(assert (= (and b!4472835 res!1855968) b!4472834))

(declare-fun m!5181865 () Bool)

(assert (=> b!4472835 m!5181865))

(assert (=> b!4472835 m!5181865))

(declare-fun m!5181867 () Bool)

(assert (=> b!4472835 m!5181867))

(declare-fun m!5181869 () Bool)

(assert (=> b!4472837 m!5181869))

(assert (=> b!4472837 m!5181865))

(assert (=> b!4472837 m!5181865))

(assert (=> b!4472837 m!5181867))

(declare-fun m!5181871 () Bool)

(assert (=> b!4472837 m!5181871))

(declare-fun m!5181873 () Bool)

(assert (=> d!1365094 m!5181873))

(declare-fun m!5181875 () Bool)

(assert (=> b!4472836 m!5181875))

(assert (=> b!4472834 m!5181675))

(declare-fun m!5181877 () Bool)

(assert (=> b!4472834 m!5181877))

(assert (=> b!4472834 m!5181877))

(declare-fun m!5181879 () Bool)

(assert (=> b!4472834 m!5181879))

(declare-fun m!5181881 () Bool)

(assert (=> bm!311459 m!5181881))

(assert (=> b!4472830 m!5181873))

(declare-fun m!5181883 () Bool)

(assert (=> b!4472830 m!5181883))

(assert (=> b!4472831 m!5181675))

(assert (=> b!4472831 m!5181877))

(assert (=> b!4472833 m!5181675))

(assert (=> b!4472833 m!5181877))

(assert (=> b!4472833 m!5181877))

(assert (=> b!4472833 m!5181879))

(assert (=> b!4472682 d!1365094))

(declare-fun d!1365098 () Bool)

(assert (=> d!1365098 (eq!528 (extractMap!1091 (Cons!50315 (tuple2!50577 hash!344 newBucket!178) Nil!50315)) (-!297 (extractMap!1091 (Cons!50315 (tuple2!50577 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477)))) Nil!50315)) key!3287))))

(declare-fun lt!1660915 () Unit!88235)

(declare-fun choose!28641 ((_ BitVec 64) List!50438 List!50438 K!11728 Hashable!5430) Unit!88235)

(assert (=> d!1365098 (= lt!1660915 (choose!28641 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477))) newBucket!178 key!3287 hashF!1107))))

(assert (=> d!1365098 (noDuplicateKeys!1035 (_2!28582 (h!56086 (toList!4077 lm!1477))))))

(assert (=> d!1365098 (= (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMapOneHash!27 hash!344 (_2!28582 (h!56086 (toList!4077 lm!1477))) newBucket!178 key!3287 hashF!1107) lt!1660915)))

(declare-fun bs!797294 () Bool)

(assert (= bs!797294 d!1365098))

(declare-fun m!5181893 () Bool)

(assert (=> bs!797294 m!5181893))

(declare-fun m!5181895 () Bool)

(assert (=> bs!797294 m!5181895))

(declare-fun m!5181897 () Bool)

(assert (=> bs!797294 m!5181897))

(assert (=> bs!797294 m!5181669))

(declare-fun m!5181899 () Bool)

(assert (=> bs!797294 m!5181899))

(assert (=> bs!797294 m!5181667))

(assert (=> bs!797294 m!5181897))

(assert (=> bs!797294 m!5181667))

(assert (=> bs!797294 m!5181669))

(assert (=> b!4472682 d!1365098))

(declare-fun bs!797295 () Bool)

(declare-fun d!1365104 () Bool)

(assert (= bs!797295 (and d!1365104 d!1365084)))

(declare-fun lambda!163901 () Int)

(assert (=> bs!797295 (= lambda!163901 lambda!163897)))

(declare-fun bs!797296 () Bool)

(assert (= bs!797296 (and d!1365104 start!439730)))

(assert (=> bs!797296 (= lambda!163901 lambda!163882)))

(declare-fun bs!797297 () Bool)

(assert (= bs!797297 (and d!1365104 d!1365076)))

(assert (=> bs!797297 (= lambda!163901 lambda!163892)))

(declare-fun bs!797298 () Bool)

(assert (= bs!797298 (and d!1365104 d!1365078)))

(assert (=> bs!797298 (= lambda!163901 lambda!163893)))

(declare-fun bs!797299 () Bool)

(assert (= bs!797299 (and d!1365104 d!1365080)))

(assert (=> bs!797299 (= lambda!163901 lambda!163894)))

(declare-fun lt!1660916 () ListMap!3339)

(assert (=> d!1365104 (invariantList!934 (toList!4078 lt!1660916))))

(declare-fun e!2785319 () ListMap!3339)

(assert (=> d!1365104 (= lt!1660916 e!2785319)))

(declare-fun c!761649 () Bool)

(assert (=> d!1365104 (= c!761649 (is-Cons!50315 (t!357389 (toList!4077 lm!1477))))))

(assert (=> d!1365104 (forall!10013 (t!357389 (toList!4077 lm!1477)) lambda!163901)))

(assert (=> d!1365104 (= (extractMap!1091 (t!357389 (toList!4077 lm!1477))) lt!1660916)))

(declare-fun b!4472848 () Bool)

(assert (=> b!4472848 (= e!2785319 (addToMapMapFromBucket!596 (_2!28582 (h!56086 (t!357389 (toList!4077 lm!1477)))) (extractMap!1091 (t!357389 (t!357389 (toList!4077 lm!1477))))))))

(declare-fun b!4472849 () Bool)

(assert (=> b!4472849 (= e!2785319 (ListMap!3340 Nil!50314))))

(assert (= (and d!1365104 c!761649) b!4472848))

(assert (= (and d!1365104 (not c!761649)) b!4472849))

(declare-fun m!5181901 () Bool)

(assert (=> d!1365104 m!5181901))

(declare-fun m!5181903 () Bool)

(assert (=> d!1365104 m!5181903))

(declare-fun m!5181905 () Bool)

(assert (=> b!4472848 m!5181905))

(assert (=> b!4472848 m!5181905))

(declare-fun m!5181907 () Bool)

(assert (=> b!4472848 m!5181907))

(assert (=> b!4472693 d!1365104))

(declare-fun bs!797300 () Bool)

(declare-fun d!1365106 () Bool)

(assert (= bs!797300 (and d!1365106 d!1365084)))

(declare-fun lambda!163902 () Int)

(assert (=> bs!797300 (= lambda!163902 lambda!163897)))

(declare-fun bs!797301 () Bool)

(assert (= bs!797301 (and d!1365106 start!439730)))

(assert (=> bs!797301 (= lambda!163902 lambda!163882)))

(declare-fun bs!797302 () Bool)

(assert (= bs!797302 (and d!1365106 d!1365076)))

(assert (=> bs!797302 (= lambda!163902 lambda!163892)))

(declare-fun bs!797303 () Bool)

(assert (= bs!797303 (and d!1365106 d!1365104)))

(assert (=> bs!797303 (= lambda!163902 lambda!163901)))

(declare-fun bs!797304 () Bool)

(assert (= bs!797304 (and d!1365106 d!1365078)))

(assert (=> bs!797304 (= lambda!163902 lambda!163893)))

(declare-fun bs!797305 () Bool)

(assert (= bs!797305 (and d!1365106 d!1365080)))

(assert (=> bs!797305 (= lambda!163902 lambda!163894)))

(declare-fun lt!1660917 () ListMap!3339)

(assert (=> d!1365106 (invariantList!934 (toList!4078 lt!1660917))))

(declare-fun e!2785320 () ListMap!3339)

(assert (=> d!1365106 (= lt!1660917 e!2785320)))

(declare-fun c!761650 () Bool)

(assert (=> d!1365106 (= c!761650 (is-Cons!50315 (toList!4077 lt!1660770)))))

(assert (=> d!1365106 (forall!10013 (toList!4077 lt!1660770) lambda!163902)))

(assert (=> d!1365106 (= (extractMap!1091 (toList!4077 lt!1660770)) lt!1660917)))

(declare-fun b!4472850 () Bool)

(assert (=> b!4472850 (= e!2785320 (addToMapMapFromBucket!596 (_2!28582 (h!56086 (toList!4077 lt!1660770))) (extractMap!1091 (t!357389 (toList!4077 lt!1660770)))))))

(declare-fun b!4472851 () Bool)

(assert (=> b!4472851 (= e!2785320 (ListMap!3340 Nil!50314))))

(assert (= (and d!1365106 c!761650) b!4472850))

(assert (= (and d!1365106 (not c!761650)) b!4472851))

(declare-fun m!5181909 () Bool)

(assert (=> d!1365106 m!5181909))

(declare-fun m!5181911 () Bool)

(assert (=> d!1365106 m!5181911))

(declare-fun m!5181913 () Bool)

(assert (=> b!4472850 m!5181913))

(assert (=> b!4472850 m!5181913))

(declare-fun m!5181915 () Bool)

(assert (=> b!4472850 m!5181915))

(assert (=> b!4472693 d!1365106))

(declare-fun bs!797306 () Bool)

(declare-fun d!1365108 () Bool)

(assert (= bs!797306 (and d!1365108 d!1365084)))

(declare-fun lambda!163905 () Int)

(assert (=> bs!797306 (not (= lambda!163905 lambda!163897))))

(declare-fun bs!797307 () Bool)

(assert (= bs!797307 (and d!1365108 start!439730)))

(assert (=> bs!797307 (not (= lambda!163905 lambda!163882))))

(declare-fun bs!797308 () Bool)

(assert (= bs!797308 (and d!1365108 d!1365106)))

(assert (=> bs!797308 (not (= lambda!163905 lambda!163902))))

(declare-fun bs!797309 () Bool)

(assert (= bs!797309 (and d!1365108 d!1365076)))

(assert (=> bs!797309 (not (= lambda!163905 lambda!163892))))

(declare-fun bs!797310 () Bool)

(assert (= bs!797310 (and d!1365108 d!1365104)))

(assert (=> bs!797310 (not (= lambda!163905 lambda!163901))))

(declare-fun bs!797311 () Bool)

(assert (= bs!797311 (and d!1365108 d!1365078)))

(assert (=> bs!797311 (not (= lambda!163905 lambda!163893))))

(declare-fun bs!797312 () Bool)

(assert (= bs!797312 (and d!1365108 d!1365080)))

(assert (=> bs!797312 (not (= lambda!163905 lambda!163894))))

(assert (=> d!1365108 true))

(assert (=> d!1365108 (= (allKeysSameHashInMap!1142 lm!1477 hashF!1107) (forall!10013 (toList!4077 lm!1477) lambda!163905))))

(declare-fun bs!797313 () Bool)

(assert (= bs!797313 d!1365108))

(declare-fun m!5181917 () Bool)

(assert (=> bs!797313 m!5181917))

(assert (=> b!4472683 d!1365108))

(declare-fun d!1365110 () Bool)

(declare-fun res!1855976 () Bool)

(declare-fun e!2785325 () Bool)

(assert (=> d!1365110 (=> res!1855976 e!2785325)))

(assert (=> d!1365110 (= res!1855976 (and (is-Cons!50314 (_2!28582 (h!56086 (toList!4077 lm!1477)))) (= (_1!28581 (h!56085 (_2!28582 (h!56086 (toList!4077 lm!1477))))) key!3287)))))

(assert (=> d!1365110 (= (containsKey!1495 (_2!28582 (h!56086 (toList!4077 lm!1477))) key!3287) e!2785325)))

(declare-fun b!4472858 () Bool)

(declare-fun e!2785326 () Bool)

(assert (=> b!4472858 (= e!2785325 e!2785326)))

(declare-fun res!1855977 () Bool)

(assert (=> b!4472858 (=> (not res!1855977) (not e!2785326))))

(assert (=> b!4472858 (= res!1855977 (is-Cons!50314 (_2!28582 (h!56086 (toList!4077 lm!1477)))))))

(declare-fun b!4472859 () Bool)

(assert (=> b!4472859 (= e!2785326 (containsKey!1495 (t!357388 (_2!28582 (h!56086 (toList!4077 lm!1477)))) key!3287))))

(assert (= (and d!1365110 (not res!1855976)) b!4472858))

(assert (= (and b!4472858 res!1855977) b!4472859))

(declare-fun m!5181919 () Bool)

(assert (=> b!4472859 m!5181919))

(assert (=> b!4472681 d!1365110))

(declare-fun bs!797314 () Bool)

(declare-fun d!1365112 () Bool)

(assert (= bs!797314 (and d!1365112 d!1365084)))

(declare-fun lambda!163908 () Int)

(assert (=> bs!797314 (= lambda!163908 lambda!163897)))

(declare-fun bs!797315 () Bool)

(assert (= bs!797315 (and d!1365112 d!1365108)))

(assert (=> bs!797315 (not (= lambda!163908 lambda!163905))))

(declare-fun bs!797316 () Bool)

(assert (= bs!797316 (and d!1365112 start!439730)))

(assert (=> bs!797316 (= lambda!163908 lambda!163882)))

(declare-fun bs!797317 () Bool)

(assert (= bs!797317 (and d!1365112 d!1365106)))

(assert (=> bs!797317 (= lambda!163908 lambda!163902)))

(declare-fun bs!797318 () Bool)

(assert (= bs!797318 (and d!1365112 d!1365076)))

(assert (=> bs!797318 (= lambda!163908 lambda!163892)))

(declare-fun bs!797319 () Bool)

(assert (= bs!797319 (and d!1365112 d!1365104)))

(assert (=> bs!797319 (= lambda!163908 lambda!163901)))

(declare-fun bs!797320 () Bool)

(assert (= bs!797320 (and d!1365112 d!1365078)))

(assert (=> bs!797320 (= lambda!163908 lambda!163893)))

(declare-fun bs!797321 () Bool)

(assert (= bs!797321 (and d!1365112 d!1365080)))

(assert (=> bs!797321 (= lambda!163908 lambda!163894)))

(assert (=> d!1365112 (contains!12882 lm!1477 (hash!2478 hashF!1107 key!3287))))

(declare-fun lt!1660920 () Unit!88235)

(declare-fun choose!28642 (ListLongMap!2709 K!11728 Hashable!5430) Unit!88235)

(assert (=> d!1365112 (= lt!1660920 (choose!28642 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1365112 (forall!10013 (toList!4077 lm!1477) lambda!163908)))

(assert (=> d!1365112 (= (lemmaInGenMapThenLongMapContainsHash!109 lm!1477 key!3287 hashF!1107) lt!1660920)))

(declare-fun bs!797322 () Bool)

(assert (= bs!797322 d!1365112))

(assert (=> bs!797322 m!5181631))

(assert (=> bs!797322 m!5181631))

(declare-fun m!5181921 () Bool)

(assert (=> bs!797322 m!5181921))

(declare-fun m!5181923 () Bool)

(assert (=> bs!797322 m!5181923))

(declare-fun m!5181925 () Bool)

(assert (=> bs!797322 m!5181925))

(assert (=> b!4472692 d!1365112))

(declare-fun d!1365114 () Bool)

(declare-fun get!16410 (Option!10940) List!50438)

(assert (=> d!1365114 (= (apply!11772 lm!1477 hash!344) (get!16410 (getValueByKey!926 (toList!4077 lm!1477) hash!344)))))

(declare-fun bs!797323 () Bool)

(assert (= bs!797323 d!1365114))

(declare-fun m!5181927 () Bool)

(assert (=> bs!797323 m!5181927))

(assert (=> bs!797323 m!5181927))

(declare-fun m!5181929 () Bool)

(assert (=> bs!797323 m!5181929))

(assert (=> b!4472692 d!1365114))

(declare-fun b!4472870 () Bool)

(declare-fun e!2785331 () List!50438)

(assert (=> b!4472870 (= e!2785331 (Cons!50314 (h!56085 lt!1660763) (removePairForKey!662 (t!357388 lt!1660763) key!3287)))))

(declare-fun d!1365116 () Bool)

(declare-fun lt!1660923 () List!50438)

(assert (=> d!1365116 (not (containsKey!1495 lt!1660923 key!3287))))

(declare-fun e!2785332 () List!50438)

(assert (=> d!1365116 (= lt!1660923 e!2785332)))

(declare-fun c!761655 () Bool)

(assert (=> d!1365116 (= c!761655 (and (is-Cons!50314 lt!1660763) (= (_1!28581 (h!56085 lt!1660763)) key!3287)))))

(assert (=> d!1365116 (noDuplicateKeys!1035 lt!1660763)))

(assert (=> d!1365116 (= (removePairForKey!662 lt!1660763 key!3287) lt!1660923)))

(declare-fun b!4472868 () Bool)

(assert (=> b!4472868 (= e!2785332 (t!357388 lt!1660763))))

(declare-fun b!4472869 () Bool)

(assert (=> b!4472869 (= e!2785332 e!2785331)))

(declare-fun c!761656 () Bool)

(assert (=> b!4472869 (= c!761656 (is-Cons!50314 lt!1660763))))

(declare-fun b!4472871 () Bool)

(assert (=> b!4472871 (= e!2785331 Nil!50314)))

(assert (= (and d!1365116 c!761655) b!4472868))

(assert (= (and d!1365116 (not c!761655)) b!4472869))

(assert (= (and b!4472869 c!761656) b!4472870))

(assert (= (and b!4472869 (not c!761656)) b!4472871))

(declare-fun m!5181931 () Bool)

(assert (=> b!4472870 m!5181931))

(declare-fun m!5181933 () Bool)

(assert (=> d!1365116 m!5181933))

(declare-fun m!5181935 () Bool)

(assert (=> d!1365116 m!5181935))

(assert (=> b!4472692 d!1365116))

(declare-fun d!1365118 () Bool)

(declare-fun dynLambda!21025 (Int tuple2!50576) Bool)

(assert (=> d!1365118 (dynLambda!21025 lambda!163882 lt!1660766)))

(declare-fun lt!1660926 () Unit!88235)

(declare-fun choose!28643 (List!50439 Int tuple2!50576) Unit!88235)

(assert (=> d!1365118 (= lt!1660926 (choose!28643 (toList!4077 lm!1477) lambda!163882 lt!1660766))))

(declare-fun e!2785335 () Bool)

(assert (=> d!1365118 e!2785335))

(declare-fun res!1855980 () Bool)

(assert (=> d!1365118 (=> (not res!1855980) (not e!2785335))))

(assert (=> d!1365118 (= res!1855980 (forall!10013 (toList!4077 lm!1477) lambda!163882))))

(assert (=> d!1365118 (= (forallContained!2280 (toList!4077 lm!1477) lambda!163882 lt!1660766) lt!1660926)))

(declare-fun b!4472874 () Bool)

(assert (=> b!4472874 (= e!2785335 (contains!12881 (toList!4077 lm!1477) lt!1660766))))

(assert (= (and d!1365118 res!1855980) b!4472874))

(declare-fun b_lambda!148695 () Bool)

(assert (=> (not b_lambda!148695) (not d!1365118)))

(declare-fun m!5181937 () Bool)

(assert (=> d!1365118 m!5181937))

(declare-fun m!5181939 () Bool)

(assert (=> d!1365118 m!5181939))

(assert (=> d!1365118 m!5181695))

(assert (=> b!4472874 m!5181657))

(assert (=> b!4472692 d!1365118))

(declare-fun d!1365120 () Bool)

(declare-fun lt!1660931 () Bool)

(declare-fun content!8125 (List!50439) (Set tuple2!50576))

(assert (=> d!1365120 (= lt!1660931 (set.member lt!1660766 (content!8125 (toList!4077 lm!1477))))))

(declare-fun e!2785343 () Bool)

(assert (=> d!1365120 (= lt!1660931 e!2785343)))

(declare-fun res!1855985 () Bool)

(assert (=> d!1365120 (=> (not res!1855985) (not e!2785343))))

(assert (=> d!1365120 (= res!1855985 (is-Cons!50315 (toList!4077 lm!1477)))))

(assert (=> d!1365120 (= (contains!12881 (toList!4077 lm!1477) lt!1660766) lt!1660931)))

(declare-fun b!4472883 () Bool)

(declare-fun e!2785342 () Bool)

(assert (=> b!4472883 (= e!2785343 e!2785342)))

(declare-fun res!1855986 () Bool)

(assert (=> b!4472883 (=> res!1855986 e!2785342)))

(assert (=> b!4472883 (= res!1855986 (= (h!56086 (toList!4077 lm!1477)) lt!1660766))))

(declare-fun b!4472884 () Bool)

(assert (=> b!4472884 (= e!2785342 (contains!12881 (t!357389 (toList!4077 lm!1477)) lt!1660766))))

(assert (= (and d!1365120 res!1855985) b!4472883))

(assert (= (and b!4472883 (not res!1855986)) b!4472884))

(declare-fun m!5181941 () Bool)

(assert (=> d!1365120 m!5181941))

(declare-fun m!5181943 () Bool)

(assert (=> d!1365120 m!5181943))

(declare-fun m!5181945 () Bool)

(assert (=> b!4472884 m!5181945))

(assert (=> b!4472692 d!1365120))

(declare-fun d!1365122 () Bool)

(assert (=> d!1365122 (contains!12881 (toList!4077 lm!1477) (tuple2!50577 hash!344 lt!1660763))))

(declare-fun lt!1660935 () Unit!88235)

(declare-fun choose!28644 (List!50439 (_ BitVec 64) List!50438) Unit!88235)

(assert (=> d!1365122 (= lt!1660935 (choose!28644 (toList!4077 lm!1477) hash!344 lt!1660763))))

(declare-fun e!2785347 () Bool)

(assert (=> d!1365122 e!2785347))

(declare-fun res!1855989 () Bool)

(assert (=> d!1365122 (=> (not res!1855989) (not e!2785347))))

(declare-fun isStrictlySorted!348 (List!50439) Bool)

(assert (=> d!1365122 (= res!1855989 (isStrictlySorted!348 (toList!4077 lm!1477)))))

(assert (=> d!1365122 (= (lemmaGetValueByKeyImpliesContainsTuple!547 (toList!4077 lm!1477) hash!344 lt!1660763) lt!1660935)))

(declare-fun b!4472889 () Bool)

(assert (=> b!4472889 (= e!2785347 (= (getValueByKey!926 (toList!4077 lm!1477) hash!344) (Some!10939 lt!1660763)))))

(assert (= (and d!1365122 res!1855989) b!4472889))

(declare-fun m!5181947 () Bool)

(assert (=> d!1365122 m!5181947))

(declare-fun m!5181949 () Bool)

(assert (=> d!1365122 m!5181949))

(declare-fun m!5181951 () Bool)

(assert (=> d!1365122 m!5181951))

(assert (=> b!4472889 m!5181927))

(assert (=> b!4472692 d!1365122))

(declare-fun d!1365124 () Bool)

(declare-fun e!2785353 () Bool)

(assert (=> d!1365124 e!2785353))

(declare-fun res!1855992 () Bool)

(assert (=> d!1365124 (=> res!1855992 e!2785353)))

(declare-fun lt!1660947 () Bool)

(assert (=> d!1365124 (= res!1855992 (not lt!1660947))))

(declare-fun lt!1660945 () Bool)

(assert (=> d!1365124 (= lt!1660947 lt!1660945)))

(declare-fun lt!1660944 () Unit!88235)

(declare-fun e!2785352 () Unit!88235)

(assert (=> d!1365124 (= lt!1660944 e!2785352)))

(declare-fun c!761662 () Bool)

(assert (=> d!1365124 (= c!761662 lt!1660945)))

(declare-fun containsKey!1498 (List!50439 (_ BitVec 64)) Bool)

(assert (=> d!1365124 (= lt!1660945 (containsKey!1498 (toList!4077 lm!1477) lt!1660757))))

(assert (=> d!1365124 (= (contains!12882 lm!1477 lt!1660757) lt!1660947)))

(declare-fun b!4472896 () Bool)

(declare-fun lt!1660946 () Unit!88235)

(assert (=> b!4472896 (= e!2785352 lt!1660946)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!831 (List!50439 (_ BitVec 64)) Unit!88235)

(assert (=> b!4472896 (= lt!1660946 (lemmaContainsKeyImpliesGetValueByKeyDefined!831 (toList!4077 lm!1477) lt!1660757))))

(declare-fun isDefined!8228 (Option!10940) Bool)

(assert (=> b!4472896 (isDefined!8228 (getValueByKey!926 (toList!4077 lm!1477) lt!1660757))))

(declare-fun b!4472897 () Bool)

(declare-fun Unit!88249 () Unit!88235)

(assert (=> b!4472897 (= e!2785352 Unit!88249)))

(declare-fun b!4472898 () Bool)

(assert (=> b!4472898 (= e!2785353 (isDefined!8228 (getValueByKey!926 (toList!4077 lm!1477) lt!1660757)))))

(assert (= (and d!1365124 c!761662) b!4472896))

(assert (= (and d!1365124 (not c!761662)) b!4472897))

(assert (= (and d!1365124 (not res!1855992)) b!4472898))

(declare-fun m!5181961 () Bool)

(assert (=> d!1365124 m!5181961))

(declare-fun m!5181963 () Bool)

(assert (=> b!4472896 m!5181963))

(declare-fun m!5181965 () Bool)

(assert (=> b!4472896 m!5181965))

(assert (=> b!4472896 m!5181965))

(declare-fun m!5181967 () Bool)

(assert (=> b!4472896 m!5181967))

(assert (=> b!4472898 m!5181965))

(assert (=> b!4472898 m!5181965))

(assert (=> b!4472898 m!5181967))

(assert (=> b!4472692 d!1365124))

(declare-fun d!1365128 () Bool)

(declare-fun res!1855997 () Bool)

(declare-fun e!2785358 () Bool)

(assert (=> d!1365128 (=> res!1855997 e!2785358)))

(assert (=> d!1365128 (= res!1855997 (is-Nil!50315 (toList!4077 lt!1660770)))))

(assert (=> d!1365128 (= (forall!10013 (toList!4077 lt!1660770) lambda!163882) e!2785358)))

(declare-fun b!4472903 () Bool)

(declare-fun e!2785359 () Bool)

(assert (=> b!4472903 (= e!2785358 e!2785359)))

(declare-fun res!1855998 () Bool)

(assert (=> b!4472903 (=> (not res!1855998) (not e!2785359))))

(assert (=> b!4472903 (= res!1855998 (dynLambda!21025 lambda!163882 (h!56086 (toList!4077 lt!1660770))))))

(declare-fun b!4472904 () Bool)

(assert (=> b!4472904 (= e!2785359 (forall!10013 (t!357389 (toList!4077 lt!1660770)) lambda!163882))))

(assert (= (and d!1365128 (not res!1855997)) b!4472903))

(assert (= (and b!4472903 res!1855998) b!4472904))

(declare-fun b_lambda!148697 () Bool)

(assert (=> (not b_lambda!148697) (not b!4472903)))

(declare-fun m!5181969 () Bool)

(assert (=> b!4472903 m!5181969))

(declare-fun m!5181971 () Bool)

(assert (=> b!4472904 m!5181971))

(assert (=> b!4472690 d!1365128))

(declare-fun b!4472905 () Bool)

(assert (=> b!4472905 false))

(declare-fun lt!1660950 () Unit!88235)

(declare-fun lt!1660952 () Unit!88235)

(assert (=> b!4472905 (= lt!1660950 lt!1660952)))

(assert (=> b!4472905 (containsKey!1497 (toList!4078 lt!1660764) key!3287)))

(assert (=> b!4472905 (= lt!1660952 (lemmaInGetKeysListThenContainsKey!381 (toList!4078 lt!1660764) key!3287))))

(declare-fun e!2785361 () Unit!88235)

(declare-fun Unit!88250 () Unit!88235)

(assert (=> b!4472905 (= e!2785361 Unit!88250)))

(declare-fun b!4472906 () Bool)

(declare-fun e!2785364 () List!50442)

(assert (=> b!4472906 (= e!2785364 (keys!17381 lt!1660764))))

(declare-fun b!4472907 () Bool)

(declare-fun e!2785365 () Unit!88235)

(assert (=> b!4472907 (= e!2785365 e!2785361)))

(declare-fun c!761665 () Bool)

(declare-fun call!311465 () Bool)

(assert (=> b!4472907 (= c!761665 call!311465)))

(declare-fun b!4472908 () Bool)

(declare-fun e!2785363 () Bool)

(assert (=> b!4472908 (= e!2785363 (not (contains!12886 (keys!17381 lt!1660764) key!3287)))))

(declare-fun d!1365130 () Bool)

(declare-fun e!2785362 () Bool)

(assert (=> d!1365130 e!2785362))

(declare-fun res!1855999 () Bool)

(assert (=> d!1365130 (=> res!1855999 e!2785362)))

(assert (=> d!1365130 (= res!1855999 e!2785363)))

(declare-fun res!1856000 () Bool)

(assert (=> d!1365130 (=> (not res!1856000) (not e!2785363))))

(declare-fun lt!1660951 () Bool)

(assert (=> d!1365130 (= res!1856000 (not lt!1660951))))

(declare-fun lt!1660955 () Bool)

(assert (=> d!1365130 (= lt!1660951 lt!1660955)))

(declare-fun lt!1660949 () Unit!88235)

(assert (=> d!1365130 (= lt!1660949 e!2785365)))

(declare-fun c!761663 () Bool)

(assert (=> d!1365130 (= c!761663 lt!1660955)))

(assert (=> d!1365130 (= lt!1660955 (containsKey!1497 (toList!4078 lt!1660764) key!3287))))

(assert (=> d!1365130 (= (contains!12880 lt!1660764 key!3287) lt!1660951)))

(declare-fun b!4472909 () Bool)

(declare-fun e!2785360 () Bool)

(assert (=> b!4472909 (= e!2785360 (contains!12886 (keys!17381 lt!1660764) key!3287))))

(declare-fun b!4472910 () Bool)

(assert (=> b!4472910 (= e!2785362 e!2785360)))

(declare-fun res!1856001 () Bool)

(assert (=> b!4472910 (=> (not res!1856001) (not e!2785360))))

(assert (=> b!4472910 (= res!1856001 (isDefined!8227 (getValueByKey!927 (toList!4078 lt!1660764) key!3287)))))

(declare-fun b!4472911 () Bool)

(assert (=> b!4472911 (= e!2785364 (getKeysList!382 (toList!4078 lt!1660764)))))

(declare-fun b!4472912 () Bool)

(declare-fun lt!1660954 () Unit!88235)

(assert (=> b!4472912 (= e!2785365 lt!1660954)))

(declare-fun lt!1660948 () Unit!88235)

(assert (=> b!4472912 (= lt!1660948 (lemmaContainsKeyImpliesGetValueByKeyDefined!830 (toList!4078 lt!1660764) key!3287))))

(assert (=> b!4472912 (isDefined!8227 (getValueByKey!927 (toList!4078 lt!1660764) key!3287))))

(declare-fun lt!1660953 () Unit!88235)

(assert (=> b!4472912 (= lt!1660953 lt!1660948)))

(assert (=> b!4472912 (= lt!1660954 (lemmaInListThenGetKeysListContains!378 (toList!4078 lt!1660764) key!3287))))

(assert (=> b!4472912 call!311465))

(declare-fun b!4472913 () Bool)

(declare-fun Unit!88251 () Unit!88235)

(assert (=> b!4472913 (= e!2785361 Unit!88251)))

(declare-fun bm!311460 () Bool)

(assert (=> bm!311460 (= call!311465 (contains!12886 e!2785364 key!3287))))

(declare-fun c!761664 () Bool)

(assert (=> bm!311460 (= c!761664 c!761663)))

(assert (= (and d!1365130 c!761663) b!4472912))

(assert (= (and d!1365130 (not c!761663)) b!4472907))

(assert (= (and b!4472907 c!761665) b!4472905))

(assert (= (and b!4472907 (not c!761665)) b!4472913))

(assert (= (or b!4472912 b!4472907) bm!311460))

(assert (= (and bm!311460 c!761664) b!4472911))

(assert (= (and bm!311460 (not c!761664)) b!4472906))

(assert (= (and d!1365130 res!1856000) b!4472908))

(assert (= (and d!1365130 (not res!1855999)) b!4472910))

(assert (= (and b!4472910 res!1856001) b!4472909))

(declare-fun m!5181973 () Bool)

(assert (=> b!4472910 m!5181973))

(assert (=> b!4472910 m!5181973))

(declare-fun m!5181975 () Bool)

(assert (=> b!4472910 m!5181975))

(declare-fun m!5181977 () Bool)

(assert (=> b!4472912 m!5181977))

(assert (=> b!4472912 m!5181973))

(assert (=> b!4472912 m!5181973))

(assert (=> b!4472912 m!5181975))

(declare-fun m!5181979 () Bool)

(assert (=> b!4472912 m!5181979))

(declare-fun m!5181981 () Bool)

(assert (=> d!1365130 m!5181981))

(declare-fun m!5181983 () Bool)

(assert (=> b!4472911 m!5181983))

(declare-fun m!5181985 () Bool)

(assert (=> b!4472909 m!5181985))

(assert (=> b!4472909 m!5181985))

(declare-fun m!5181987 () Bool)

(assert (=> b!4472909 m!5181987))

(declare-fun m!5181989 () Bool)

(assert (=> bm!311460 m!5181989))

(assert (=> b!4472905 m!5181981))

(declare-fun m!5181991 () Bool)

(assert (=> b!4472905 m!5181991))

(assert (=> b!4472906 m!5181985))

(assert (=> b!4472908 m!5181985))

(assert (=> b!4472908 m!5181985))

(assert (=> b!4472908 m!5181987))

(assert (=> b!4472690 d!1365130))

(declare-fun d!1365132 () Bool)

(declare-fun res!1856006 () Bool)

(declare-fun e!2785370 () Bool)

(assert (=> d!1365132 (=> res!1856006 e!2785370)))

(assert (=> d!1365132 (= res!1856006 (not (is-Cons!50314 newBucket!178)))))

(assert (=> d!1365132 (= (noDuplicateKeys!1035 newBucket!178) e!2785370)))

(declare-fun b!4472918 () Bool)

(declare-fun e!2785371 () Bool)

(assert (=> b!4472918 (= e!2785370 e!2785371)))

(declare-fun res!1856007 () Bool)

(assert (=> b!4472918 (=> (not res!1856007) (not e!2785371))))

(assert (=> b!4472918 (= res!1856007 (not (containsKey!1495 (t!357388 newBucket!178) (_1!28581 (h!56085 newBucket!178)))))))

(declare-fun b!4472919 () Bool)

(assert (=> b!4472919 (= e!2785371 (noDuplicateKeys!1035 (t!357388 newBucket!178)))))

(assert (= (and d!1365132 (not res!1856006)) b!4472918))

(assert (= (and b!4472918 res!1856007) b!4472919))

(declare-fun m!5181993 () Bool)

(assert (=> b!4472918 m!5181993))

(declare-fun m!5181995 () Bool)

(assert (=> b!4472919 m!5181995))

(assert (=> b!4472688 d!1365132))

(declare-fun d!1365134 () Bool)

(declare-fun e!2785372 () Bool)

(assert (=> d!1365134 e!2785372))

(declare-fun res!1856008 () Bool)

(assert (=> d!1365134 (=> (not res!1856008) (not e!2785372))))

(declare-fun lt!1660956 () ListLongMap!2709)

(assert (=> d!1365134 (= res!1856008 (contains!12882 lt!1660956 (_1!28582 lt!1660765)))))

(declare-fun lt!1660957 () List!50439)

(assert (=> d!1365134 (= lt!1660956 (ListLongMap!2710 lt!1660957))))

(declare-fun lt!1660958 () Unit!88235)

(declare-fun lt!1660959 () Unit!88235)

(assert (=> d!1365134 (= lt!1660958 lt!1660959)))

(assert (=> d!1365134 (= (getValueByKey!926 lt!1660957 (_1!28582 lt!1660765)) (Some!10939 (_2!28582 lt!1660765)))))

(assert (=> d!1365134 (= lt!1660959 (lemmaContainsTupThenGetReturnValue!591 lt!1660957 (_1!28582 lt!1660765) (_2!28582 lt!1660765)))))

(assert (=> d!1365134 (= lt!1660957 (insertStrictlySorted!337 (toList!4077 lt!1660770) (_1!28582 lt!1660765) (_2!28582 lt!1660765)))))

(assert (=> d!1365134 (= (+!1383 lt!1660770 lt!1660765) lt!1660956)))

(declare-fun b!4472920 () Bool)

(declare-fun res!1856009 () Bool)

(assert (=> b!4472920 (=> (not res!1856009) (not e!2785372))))

(assert (=> b!4472920 (= res!1856009 (= (getValueByKey!926 (toList!4077 lt!1660956) (_1!28582 lt!1660765)) (Some!10939 (_2!28582 lt!1660765))))))

(declare-fun b!4472921 () Bool)

(assert (=> b!4472921 (= e!2785372 (contains!12881 (toList!4077 lt!1660956) lt!1660765))))

(assert (= (and d!1365134 res!1856008) b!4472920))

(assert (= (and b!4472920 res!1856009) b!4472921))

(declare-fun m!5181997 () Bool)

(assert (=> d!1365134 m!5181997))

(declare-fun m!5181999 () Bool)

(assert (=> d!1365134 m!5181999))

(declare-fun m!5182001 () Bool)

(assert (=> d!1365134 m!5182001))

(declare-fun m!5182003 () Bool)

(assert (=> d!1365134 m!5182003))

(declare-fun m!5182005 () Bool)

(assert (=> b!4472920 m!5182005))

(declare-fun m!5182007 () Bool)

(assert (=> b!4472921 m!5182007))

(assert (=> b!4472699 d!1365134))

(declare-fun d!1365136 () Bool)

(assert (=> d!1365136 (= (tail!7523 lm!1477) (ListLongMap!2710 (tail!7522 (toList!4077 lm!1477))))))

(declare-fun bs!797326 () Bool)

(assert (= bs!797326 d!1365136))

(declare-fun m!5182009 () Bool)

(assert (=> bs!797326 m!5182009))

(assert (=> b!4472699 d!1365136))

(declare-fun d!1365138 () Bool)

(declare-fun res!1856018 () Bool)

(declare-fun e!2785383 () Bool)

(assert (=> d!1365138 (=> res!1856018 e!2785383)))

(declare-fun e!2785382 () Bool)

(assert (=> d!1365138 (= res!1856018 e!2785382)))

(declare-fun res!1856019 () Bool)

(assert (=> d!1365138 (=> (not res!1856019) (not e!2785382))))

(assert (=> d!1365138 (= res!1856019 (is-Cons!50315 lt!1660768))))

(assert (=> d!1365138 (= (containsKeyBiggerList!35 lt!1660768 key!3287) e!2785383)))

(declare-fun b!4472930 () Bool)

(assert (=> b!4472930 (= e!2785382 (containsKey!1495 (_2!28582 (h!56086 lt!1660768)) key!3287))))

(declare-fun b!4472931 () Bool)

(declare-fun e!2785381 () Bool)

(assert (=> b!4472931 (= e!2785383 e!2785381)))

(declare-fun res!1856020 () Bool)

(assert (=> b!4472931 (=> (not res!1856020) (not e!2785381))))

(assert (=> b!4472931 (= res!1856020 (is-Cons!50315 lt!1660768))))

(declare-fun b!4472932 () Bool)

(assert (=> b!4472932 (= e!2785381 (containsKeyBiggerList!35 (t!357389 lt!1660768) key!3287))))

(assert (= (and d!1365138 res!1856019) b!4472930))

(assert (= (and d!1365138 (not res!1856018)) b!4472931))

(assert (= (and b!4472931 res!1856020) b!4472932))

(declare-fun m!5182011 () Bool)

(assert (=> b!4472930 m!5182011))

(declare-fun m!5182013 () Bool)

(assert (=> b!4472932 m!5182013))

(assert (=> b!4472686 d!1365138))

(declare-fun d!1365140 () Bool)

(assert (=> d!1365140 true))

(assert (=> d!1365140 true))

(declare-fun lambda!163915 () Int)

(declare-fun forall!10015 (List!50438 Int) Bool)

(assert (=> d!1365140 (= (allKeysSameHash!889 newBucket!178 hash!344 hashF!1107) (forall!10015 newBucket!178 lambda!163915))))

(declare-fun bs!797329 () Bool)

(assert (= bs!797329 d!1365140))

(declare-fun m!5182029 () Bool)

(assert (=> bs!797329 m!5182029))

(assert (=> b!4472687 d!1365140))

(declare-fun b!4472940 () Bool)

(assert (=> b!4472940 false))

(declare-fun lt!1660966 () Unit!88235)

(declare-fun lt!1660968 () Unit!88235)

(assert (=> b!4472940 (= lt!1660966 lt!1660968)))

(assert (=> b!4472940 (containsKey!1497 (toList!4078 (extractMap!1091 (toList!4077 lm!1477))) key!3287)))

(assert (=> b!4472940 (= lt!1660968 (lemmaInGetKeysListThenContainsKey!381 (toList!4078 (extractMap!1091 (toList!4077 lm!1477))) key!3287))))

(declare-fun e!2785387 () Unit!88235)

(declare-fun Unit!88254 () Unit!88235)

(assert (=> b!4472940 (= e!2785387 Unit!88254)))

(declare-fun b!4472941 () Bool)

(declare-fun e!2785390 () List!50442)

(assert (=> b!4472941 (= e!2785390 (keys!17381 (extractMap!1091 (toList!4077 lm!1477))))))

(declare-fun b!4472942 () Bool)

(declare-fun e!2785391 () Unit!88235)

(assert (=> b!4472942 (= e!2785391 e!2785387)))

(declare-fun c!761669 () Bool)

(declare-fun call!311466 () Bool)

(assert (=> b!4472942 (= c!761669 call!311466)))

(declare-fun b!4472943 () Bool)

(declare-fun e!2785389 () Bool)

(assert (=> b!4472943 (= e!2785389 (not (contains!12886 (keys!17381 (extractMap!1091 (toList!4077 lm!1477))) key!3287)))))

(declare-fun d!1365144 () Bool)

(declare-fun e!2785388 () Bool)

(assert (=> d!1365144 e!2785388))

(declare-fun res!1856022 () Bool)

(assert (=> d!1365144 (=> res!1856022 e!2785388)))

(assert (=> d!1365144 (= res!1856022 e!2785389)))

(declare-fun res!1856023 () Bool)

(assert (=> d!1365144 (=> (not res!1856023) (not e!2785389))))

(declare-fun lt!1660967 () Bool)

(assert (=> d!1365144 (= res!1856023 (not lt!1660967))))

(declare-fun lt!1660971 () Bool)

(assert (=> d!1365144 (= lt!1660967 lt!1660971)))

(declare-fun lt!1660965 () Unit!88235)

(assert (=> d!1365144 (= lt!1660965 e!2785391)))

(declare-fun c!761667 () Bool)

(assert (=> d!1365144 (= c!761667 lt!1660971)))

(assert (=> d!1365144 (= lt!1660971 (containsKey!1497 (toList!4078 (extractMap!1091 (toList!4077 lm!1477))) key!3287))))

(assert (=> d!1365144 (= (contains!12880 (extractMap!1091 (toList!4077 lm!1477)) key!3287) lt!1660967)))

(declare-fun b!4472944 () Bool)

(declare-fun e!2785386 () Bool)

(assert (=> b!4472944 (= e!2785386 (contains!12886 (keys!17381 (extractMap!1091 (toList!4077 lm!1477))) key!3287))))

(declare-fun b!4472945 () Bool)

(assert (=> b!4472945 (= e!2785388 e!2785386)))

(declare-fun res!1856024 () Bool)

(assert (=> b!4472945 (=> (not res!1856024) (not e!2785386))))

(assert (=> b!4472945 (= res!1856024 (isDefined!8227 (getValueByKey!927 (toList!4078 (extractMap!1091 (toList!4077 lm!1477))) key!3287)))))

(declare-fun b!4472946 () Bool)

(assert (=> b!4472946 (= e!2785390 (getKeysList!382 (toList!4078 (extractMap!1091 (toList!4077 lm!1477)))))))

(declare-fun b!4472947 () Bool)

(declare-fun lt!1660970 () Unit!88235)

(assert (=> b!4472947 (= e!2785391 lt!1660970)))

(declare-fun lt!1660964 () Unit!88235)

(assert (=> b!4472947 (= lt!1660964 (lemmaContainsKeyImpliesGetValueByKeyDefined!830 (toList!4078 (extractMap!1091 (toList!4077 lm!1477))) key!3287))))

(assert (=> b!4472947 (isDefined!8227 (getValueByKey!927 (toList!4078 (extractMap!1091 (toList!4077 lm!1477))) key!3287))))

(declare-fun lt!1660969 () Unit!88235)

(assert (=> b!4472947 (= lt!1660969 lt!1660964)))

(assert (=> b!4472947 (= lt!1660970 (lemmaInListThenGetKeysListContains!378 (toList!4078 (extractMap!1091 (toList!4077 lm!1477))) key!3287))))

(assert (=> b!4472947 call!311466))

(declare-fun b!4472948 () Bool)

(declare-fun Unit!88255 () Unit!88235)

(assert (=> b!4472948 (= e!2785387 Unit!88255)))

(declare-fun bm!311461 () Bool)

(assert (=> bm!311461 (= call!311466 (contains!12886 e!2785390 key!3287))))

(declare-fun c!761668 () Bool)

(assert (=> bm!311461 (= c!761668 c!761667)))

(assert (= (and d!1365144 c!761667) b!4472947))

(assert (= (and d!1365144 (not c!761667)) b!4472942))

(assert (= (and b!4472942 c!761669) b!4472940))

(assert (= (and b!4472942 (not c!761669)) b!4472948))

(assert (= (or b!4472947 b!4472942) bm!311461))

(assert (= (and bm!311461 c!761668) b!4472946))

(assert (= (and bm!311461 (not c!761668)) b!4472941))

(assert (= (and d!1365144 res!1856023) b!4472943))

(assert (= (and d!1365144 (not res!1856022)) b!4472945))

(assert (= (and b!4472945 res!1856024) b!4472944))

(declare-fun m!5182037 () Bool)

(assert (=> b!4472945 m!5182037))

(assert (=> b!4472945 m!5182037))

(declare-fun m!5182039 () Bool)

(assert (=> b!4472945 m!5182039))

(declare-fun m!5182041 () Bool)

(assert (=> b!4472947 m!5182041))

(assert (=> b!4472947 m!5182037))

(assert (=> b!4472947 m!5182037))

(assert (=> b!4472947 m!5182039))

(declare-fun m!5182045 () Bool)

(assert (=> b!4472947 m!5182045))

(declare-fun m!5182047 () Bool)

(assert (=> d!1365144 m!5182047))

(declare-fun m!5182049 () Bool)

(assert (=> b!4472946 m!5182049))

(assert (=> b!4472944 m!5181637))

(declare-fun m!5182051 () Bool)

(assert (=> b!4472944 m!5182051))

(assert (=> b!4472944 m!5182051))

(declare-fun m!5182053 () Bool)

(assert (=> b!4472944 m!5182053))

(declare-fun m!5182055 () Bool)

(assert (=> bm!311461 m!5182055))

(assert (=> b!4472940 m!5182047))

(declare-fun m!5182057 () Bool)

(assert (=> b!4472940 m!5182057))

(assert (=> b!4472941 m!5181637))

(assert (=> b!4472941 m!5182051))

(assert (=> b!4472943 m!5181637))

(assert (=> b!4472943 m!5182051))

(assert (=> b!4472943 m!5182051))

(assert (=> b!4472943 m!5182053))

(assert (=> b!4472685 d!1365144))

(declare-fun bs!797332 () Bool)

(declare-fun d!1365148 () Bool)

(assert (= bs!797332 (and d!1365148 d!1365084)))

(declare-fun lambda!163917 () Int)

(assert (=> bs!797332 (= lambda!163917 lambda!163897)))

(declare-fun bs!797333 () Bool)

(assert (= bs!797333 (and d!1365148 d!1365108)))

(assert (=> bs!797333 (not (= lambda!163917 lambda!163905))))

(declare-fun bs!797335 () Bool)

(assert (= bs!797335 (and d!1365148 start!439730)))

(assert (=> bs!797335 (= lambda!163917 lambda!163882)))

(declare-fun bs!797336 () Bool)

(assert (= bs!797336 (and d!1365148 d!1365106)))

(assert (=> bs!797336 (= lambda!163917 lambda!163902)))

(declare-fun bs!797338 () Bool)

(assert (= bs!797338 (and d!1365148 d!1365076)))

(assert (=> bs!797338 (= lambda!163917 lambda!163892)))

(declare-fun bs!797339 () Bool)

(assert (= bs!797339 (and d!1365148 d!1365112)))

(assert (=> bs!797339 (= lambda!163917 lambda!163908)))

(declare-fun bs!797340 () Bool)

(assert (= bs!797340 (and d!1365148 d!1365104)))

(assert (=> bs!797340 (= lambda!163917 lambda!163901)))

(declare-fun bs!797342 () Bool)

(assert (= bs!797342 (and d!1365148 d!1365078)))

(assert (=> bs!797342 (= lambda!163917 lambda!163893)))

(declare-fun bs!797343 () Bool)

(assert (= bs!797343 (and d!1365148 d!1365080)))

(assert (=> bs!797343 (= lambda!163917 lambda!163894)))

(declare-fun lt!1660973 () ListMap!3339)

(assert (=> d!1365148 (invariantList!934 (toList!4078 lt!1660973))))

(declare-fun e!2785393 () ListMap!3339)

(assert (=> d!1365148 (= lt!1660973 e!2785393)))

(declare-fun c!761671 () Bool)

(assert (=> d!1365148 (= c!761671 (is-Cons!50315 (toList!4077 lm!1477)))))

(assert (=> d!1365148 (forall!10013 (toList!4077 lm!1477) lambda!163917)))

(assert (=> d!1365148 (= (extractMap!1091 (toList!4077 lm!1477)) lt!1660973)))

(declare-fun b!4472951 () Bool)

(assert (=> b!4472951 (= e!2785393 (addToMapMapFromBucket!596 (_2!28582 (h!56086 (toList!4077 lm!1477))) (extractMap!1091 (t!357389 (toList!4077 lm!1477)))))))

(declare-fun b!4472952 () Bool)

(assert (=> b!4472952 (= e!2785393 (ListMap!3340 Nil!50314))))

(assert (= (and d!1365148 c!761671) b!4472951))

(assert (= (and d!1365148 (not c!761671)) b!4472952))

(declare-fun m!5182059 () Bool)

(assert (=> d!1365148 m!5182059))

(declare-fun m!5182061 () Bool)

(assert (=> d!1365148 m!5182061))

(assert (=> b!4472951 m!5181645))

(assert (=> b!4472951 m!5181645))

(declare-fun m!5182063 () Bool)

(assert (=> b!4472951 m!5182063))

(assert (=> b!4472685 d!1365148))

(declare-fun d!1365150 () Bool)

(declare-fun hash!2482 (Hashable!5430 K!11728) (_ BitVec 64))

(assert (=> d!1365150 (= (hash!2478 hashF!1107 key!3287) (hash!2482 hashF!1107 key!3287))))

(declare-fun bs!797344 () Bool)

(assert (= bs!797344 d!1365150))

(declare-fun m!5182073 () Bool)

(assert (=> bs!797344 m!5182073))

(assert (=> b!4472696 d!1365150))

(declare-fun d!1365154 () Bool)

(declare-fun res!1856028 () Bool)

(declare-fun e!2785400 () Bool)

(assert (=> d!1365154 (=> res!1856028 e!2785400)))

(assert (=> d!1365154 (= res!1856028 (is-Nil!50315 (toList!4077 lm!1477)))))

(assert (=> d!1365154 (= (forall!10013 (toList!4077 lm!1477) lambda!163882) e!2785400)))

(declare-fun b!4472962 () Bool)

(declare-fun e!2785401 () Bool)

(assert (=> b!4472962 (= e!2785400 e!2785401)))

(declare-fun res!1856029 () Bool)

(assert (=> b!4472962 (=> (not res!1856029) (not e!2785401))))

(assert (=> b!4472962 (= res!1856029 (dynLambda!21025 lambda!163882 (h!56086 (toList!4077 lm!1477))))))

(declare-fun b!4472963 () Bool)

(assert (=> b!4472963 (= e!2785401 (forall!10013 (t!357389 (toList!4077 lm!1477)) lambda!163882))))

(assert (= (and d!1365154 (not res!1856028)) b!4472962))

(assert (= (and b!4472962 res!1856029) b!4472963))

(declare-fun b_lambda!148699 () Bool)

(assert (=> (not b_lambda!148699) (not b!4472962)))

(declare-fun m!5182075 () Bool)

(assert (=> b!4472962 m!5182075))

(declare-fun m!5182077 () Bool)

(assert (=> b!4472963 m!5182077))

(assert (=> start!439730 d!1365154))

(declare-fun d!1365156 () Bool)

(assert (=> d!1365156 (= (inv!65913 lm!1477) (isStrictlySorted!348 (toList!4077 lm!1477)))))

(declare-fun bs!797345 () Bool)

(assert (= bs!797345 d!1365156))

(assert (=> bs!797345 m!5181951))

(assert (=> start!439730 d!1365156))

(declare-fun bs!797346 () Bool)

(declare-fun d!1365158 () Bool)

(assert (= bs!797346 (and d!1365158 d!1365084)))

(declare-fun lambda!163918 () Int)

(assert (=> bs!797346 (= lambda!163918 lambda!163897)))

(declare-fun bs!797347 () Bool)

(assert (= bs!797347 (and d!1365158 d!1365108)))

(assert (=> bs!797347 (not (= lambda!163918 lambda!163905))))

(declare-fun bs!797348 () Bool)

(assert (= bs!797348 (and d!1365158 start!439730)))

(assert (=> bs!797348 (= lambda!163918 lambda!163882)))

(declare-fun bs!797349 () Bool)

(assert (= bs!797349 (and d!1365158 d!1365106)))

(assert (=> bs!797349 (= lambda!163918 lambda!163902)))

(declare-fun bs!797350 () Bool)

(assert (= bs!797350 (and d!1365158 d!1365076)))

(assert (=> bs!797350 (= lambda!163918 lambda!163892)))

(declare-fun bs!797351 () Bool)

(assert (= bs!797351 (and d!1365158 d!1365112)))

(assert (=> bs!797351 (= lambda!163918 lambda!163908)))

(declare-fun bs!797352 () Bool)

(assert (= bs!797352 (and d!1365158 d!1365104)))

(assert (=> bs!797352 (= lambda!163918 lambda!163901)))

(declare-fun bs!797353 () Bool)

(assert (= bs!797353 (and d!1365158 d!1365078)))

(assert (=> bs!797353 (= lambda!163918 lambda!163893)))

(declare-fun bs!797354 () Bool)

(assert (= bs!797354 (and d!1365158 d!1365148)))

(assert (=> bs!797354 (= lambda!163918 lambda!163917)))

(declare-fun bs!797355 () Bool)

(assert (= bs!797355 (and d!1365158 d!1365080)))

(assert (=> bs!797355 (= lambda!163918 lambda!163894)))

(assert (=> d!1365158 (contains!12882 lt!1660770 (hash!2478 hashF!1107 key!3287))))

(declare-fun lt!1660982 () Unit!88235)

(assert (=> d!1365158 (= lt!1660982 (choose!28642 lt!1660770 key!3287 hashF!1107))))

(assert (=> d!1365158 (forall!10013 (toList!4077 lt!1660770) lambda!163918)))

(assert (=> d!1365158 (= (lemmaInGenMapThenLongMapContainsHash!109 lt!1660770 key!3287 hashF!1107) lt!1660982)))

(declare-fun bs!797356 () Bool)

(assert (= bs!797356 d!1365158))

(assert (=> bs!797356 m!5181631))

(assert (=> bs!797356 m!5181631))

(declare-fun m!5182097 () Bool)

(assert (=> bs!797356 m!5182097))

(declare-fun m!5182101 () Bool)

(assert (=> bs!797356 m!5182101))

(declare-fun m!5182103 () Bool)

(assert (=> bs!797356 m!5182103))

(assert (=> b!4472694 d!1365158))

(declare-fun d!1365160 () Bool)

(declare-fun e!2785403 () Bool)

(assert (=> d!1365160 e!2785403))

(declare-fun res!1856030 () Bool)

(assert (=> d!1365160 (=> res!1856030 e!2785403)))

(declare-fun lt!1660986 () Bool)

(assert (=> d!1365160 (= res!1856030 (not lt!1660986))))

(declare-fun lt!1660984 () Bool)

(assert (=> d!1365160 (= lt!1660986 lt!1660984)))

(declare-fun lt!1660983 () Unit!88235)

(declare-fun e!2785402 () Unit!88235)

(assert (=> d!1365160 (= lt!1660983 e!2785402)))

(declare-fun c!761675 () Bool)

(assert (=> d!1365160 (= c!761675 lt!1660984)))

(assert (=> d!1365160 (= lt!1660984 (containsKey!1498 (toList!4077 lt!1660770) lt!1660757))))

(assert (=> d!1365160 (= (contains!12882 lt!1660770 lt!1660757) lt!1660986)))

(declare-fun b!4472964 () Bool)

(declare-fun lt!1660985 () Unit!88235)

(assert (=> b!4472964 (= e!2785402 lt!1660985)))

(assert (=> b!4472964 (= lt!1660985 (lemmaContainsKeyImpliesGetValueByKeyDefined!831 (toList!4077 lt!1660770) lt!1660757))))

(assert (=> b!4472964 (isDefined!8228 (getValueByKey!926 (toList!4077 lt!1660770) lt!1660757))))

(declare-fun b!4472965 () Bool)

(declare-fun Unit!88258 () Unit!88235)

(assert (=> b!4472965 (= e!2785402 Unit!88258)))

(declare-fun b!4472966 () Bool)

(assert (=> b!4472966 (= e!2785403 (isDefined!8228 (getValueByKey!926 (toList!4077 lt!1660770) lt!1660757)))))

(assert (= (and d!1365160 c!761675) b!4472964))

(assert (= (and d!1365160 (not c!761675)) b!4472965))

(assert (= (and d!1365160 (not res!1856030)) b!4472966))

(declare-fun m!5182105 () Bool)

(assert (=> d!1365160 m!5182105))

(declare-fun m!5182107 () Bool)

(assert (=> b!4472964 m!5182107))

(declare-fun m!5182109 () Bool)

(assert (=> b!4472964 m!5182109))

(assert (=> b!4472964 m!5182109))

(declare-fun m!5182111 () Bool)

(assert (=> b!4472964 m!5182111))

(assert (=> b!4472966 m!5182109))

(assert (=> b!4472966 m!5182109))

(assert (=> b!4472966 m!5182111))

(assert (=> b!4472694 d!1365160))

(declare-fun bs!797357 () Bool)

(declare-fun d!1365164 () Bool)

(assert (= bs!797357 (and d!1365164 d!1365084)))

(declare-fun lambda!163921 () Int)

(assert (=> bs!797357 (= lambda!163921 lambda!163897)))

(declare-fun bs!797358 () Bool)

(assert (= bs!797358 (and d!1365164 d!1365108)))

(assert (=> bs!797358 (not (= lambda!163921 lambda!163905))))

(declare-fun bs!797359 () Bool)

(assert (= bs!797359 (and d!1365164 start!439730)))

(assert (=> bs!797359 (= lambda!163921 lambda!163882)))

(declare-fun bs!797360 () Bool)

(assert (= bs!797360 (and d!1365164 d!1365158)))

(assert (=> bs!797360 (= lambda!163921 lambda!163918)))

(declare-fun bs!797361 () Bool)

(assert (= bs!797361 (and d!1365164 d!1365106)))

(assert (=> bs!797361 (= lambda!163921 lambda!163902)))

(declare-fun bs!797362 () Bool)

(assert (= bs!797362 (and d!1365164 d!1365076)))

(assert (=> bs!797362 (= lambda!163921 lambda!163892)))

(declare-fun bs!797363 () Bool)

(assert (= bs!797363 (and d!1365164 d!1365112)))

(assert (=> bs!797363 (= lambda!163921 lambda!163908)))

(declare-fun bs!797364 () Bool)

(assert (= bs!797364 (and d!1365164 d!1365104)))

(assert (=> bs!797364 (= lambda!163921 lambda!163901)))

(declare-fun bs!797365 () Bool)

(assert (= bs!797365 (and d!1365164 d!1365078)))

(assert (=> bs!797365 (= lambda!163921 lambda!163893)))

(declare-fun bs!797366 () Bool)

(assert (= bs!797366 (and d!1365164 d!1365148)))

(assert (=> bs!797366 (= lambda!163921 lambda!163917)))

(declare-fun bs!797367 () Bool)

(assert (= bs!797367 (and d!1365164 d!1365080)))

(assert (=> bs!797367 (= lambda!163921 lambda!163894)))

(assert (=> d!1365164 (not (contains!12880 (extractMap!1091 (toList!4077 lm!1477)) key!3287))))

(declare-fun lt!1660989 () Unit!88235)

(declare-fun choose!28646 (ListLongMap!2709 K!11728 Hashable!5430) Unit!88235)

(assert (=> d!1365164 (= lt!1660989 (choose!28646 lm!1477 key!3287 hashF!1107))))

(assert (=> d!1365164 (forall!10013 (toList!4077 lm!1477) lambda!163921)))

(assert (=> d!1365164 (= (lemmaNotInItsHashBucketThenNotInMap!35 lm!1477 key!3287 hashF!1107) lt!1660989)))

(declare-fun bs!797368 () Bool)

(assert (= bs!797368 d!1365164))

(assert (=> bs!797368 m!5181637))

(assert (=> bs!797368 m!5181637))

(assert (=> bs!797368 m!5181639))

(declare-fun m!5182113 () Bool)

(assert (=> bs!797368 m!5182113))

(declare-fun m!5182115 () Bool)

(assert (=> bs!797368 m!5182115))

(assert (=> b!4472684 d!1365164))

(declare-fun b!4472971 () Bool)

(declare-fun e!2785406 () Bool)

(declare-fun tp!1336398 () Bool)

(declare-fun tp!1336399 () Bool)

(assert (=> b!4472971 (= e!2785406 (and tp!1336398 tp!1336399))))

(assert (=> b!4472698 (= tp!1336386 e!2785406)))

(assert (= (and b!4472698 (is-Cons!50315 (toList!4077 lm!1477))) b!4472971))

(declare-fun b!4472976 () Bool)

(declare-fun tp!1336402 () Bool)

(declare-fun e!2785409 () Bool)

(assert (=> b!4472976 (= e!2785409 (and tp_is_empty!27417 tp_is_empty!27419 tp!1336402))))

(assert (=> b!4472689 (= tp!1336387 e!2785409)))

(assert (= (and b!4472689 (is-Cons!50314 (t!357388 newBucket!178))) b!4472976))

(declare-fun b_lambda!148701 () Bool)

(assert (= b_lambda!148695 (or start!439730 b_lambda!148701)))

(declare-fun bs!797369 () Bool)

(declare-fun d!1365166 () Bool)

(assert (= bs!797369 (and d!1365166 start!439730)))

(assert (=> bs!797369 (= (dynLambda!21025 lambda!163882 lt!1660766) (noDuplicateKeys!1035 (_2!28582 lt!1660766)))))

(declare-fun m!5182117 () Bool)

(assert (=> bs!797369 m!5182117))

(assert (=> d!1365118 d!1365166))

(declare-fun b_lambda!148703 () Bool)

(assert (= b_lambda!148697 (or start!439730 b_lambda!148703)))

(declare-fun bs!797370 () Bool)

(declare-fun d!1365168 () Bool)

(assert (= bs!797370 (and d!1365168 start!439730)))

(assert (=> bs!797370 (= (dynLambda!21025 lambda!163882 (h!56086 (toList!4077 lt!1660770))) (noDuplicateKeys!1035 (_2!28582 (h!56086 (toList!4077 lt!1660770)))))))

(declare-fun m!5182119 () Bool)

(assert (=> bs!797370 m!5182119))

(assert (=> b!4472903 d!1365168))

(declare-fun b_lambda!148705 () Bool)

(assert (= b_lambda!148699 (or start!439730 b_lambda!148705)))

(declare-fun bs!797371 () Bool)

(declare-fun d!1365170 () Bool)

(assert (= bs!797371 (and d!1365170 start!439730)))

(assert (=> bs!797371 (= (dynLambda!21025 lambda!163882 (h!56086 (toList!4077 lm!1477))) (noDuplicateKeys!1035 (_2!28582 (h!56086 (toList!4077 lm!1477)))))))

(assert (=> bs!797371 m!5181893))

(assert (=> b!4472962 d!1365170))

(push 1)

(assert (not d!1365080))

(assert (not b!4472912))

(assert (not b!4472946))

(assert (not b!4472941))

(assert (not b!4472889))

(assert (not d!1365148))

(assert (not b!4472944))

(assert (not b_lambda!148705))

(assert (not d!1365140))

(assert (not d!1365076))

(assert (not b!4472947))

(assert (not b!4472810))

(assert (not b!4472911))

(assert (not b!4472834))

(assert (not b!4472848))

(assert (not b!4472811))

(assert (not b!4472918))

(assert (not d!1365082))

(assert (not b!4472905))

(assert (not b!4472836))

(assert (not d!1365120))

(assert (not bm!311459))

(assert (not b!4472906))

(assert (not b!4472976))

(assert (not b!4472971))

(assert (not b_lambda!148703))

(assert (not b!4472770))

(assert (not b!4472830))

(assert (not d!1365114))

(assert (not b!4472943))

(assert tp_is_empty!27417)

(assert (not b!4472833))

(assert (not d!1365086))

(assert (not d!1365106))

(assert (not b!4472904))

(assert (not d!1365156))

(assert (not b!4472930))

(assert (not bs!797371))

(assert (not b!4472964))

(assert (not b!4472921))

(assert (not b!4472963))

(assert (not d!1365144))

(assert (not b!4472850))

(assert (not b!4472908))

(assert (not b!4472919))

(assert (not b!4472920))

(assert (not d!1365130))

(assert (not d!1365090))

(assert (not d!1365160))

(assert (not d!1365108))

(assert (not b!4472898))

(assert (not b!4472835))

(assert (not bs!797370))

(assert (not b!4472778))

(assert (not d!1365136))

(assert (not bs!797369))

(assert (not b!4472772))

(assert (not b!4472966))

(assert (not b!4472932))

(assert (not b!4472870))

(assert (not d!1365158))

(assert (not b!4472951))

(assert (not d!1365134))

(assert (not b!4472910))

(assert (not d!1365164))

(assert (not b!4472909))

(assert (not d!1365116))

(assert (not b!4472859))

(assert (not d!1365122))

(assert (not d!1365118))

(assert (not d!1365150))

(assert (not b!4472945))

(assert (not b!4472874))

(assert (not d!1365084))

(assert (not b!4472831))

(assert (not d!1365104))

(assert (not b!4472837))

(assert (not b!4472896))

(assert (not d!1365078))

(assert (not d!1365094))

(assert tp_is_empty!27419)

(assert (not b!4472884))

(assert (not d!1365124))

(assert (not d!1365098))

(assert (not bm!311461))

(assert (not bm!311460))

(assert (not b!4472940))

(assert (not d!1365112))

(assert (not b!4472774))

(assert (not b_lambda!148701))

(check-sat)

(pop 1)

(push 1)

(check-sat)

(pop 1)

