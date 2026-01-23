; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!419692 () Bool)

(assert start!419692)

(declare-fun b!4346945 () Bool)

(declare-fun e!2705054 () Bool)

(declare-datatypes ((V!10421 0))(
  ( (V!10422 (val!16411 Int)) )
))
(declare-datatypes ((K!10175 0))(
  ( (K!10176 (val!16412 Int)) )
))
(declare-datatypes ((tuple2!48142 0))(
  ( (tuple2!48143 (_1!27365 K!10175) (_2!27365 V!10421)) )
))
(declare-datatypes ((List!48939 0))(
  ( (Nil!48815) (Cons!48815 (h!54342 tuple2!48142) (t!355859 List!48939)) )
))
(declare-datatypes ((tuple2!48144 0))(
  ( (tuple2!48145 (_1!27366 (_ BitVec 64)) (_2!27366 List!48939)) )
))
(declare-datatypes ((List!48940 0))(
  ( (Nil!48816) (Cons!48816 (h!54343 tuple2!48144) (t!355860 List!48940)) )
))
(declare-datatypes ((ListLongMap!1519 0))(
  ( (ListLongMap!1520 (toList!2869 List!48940)) )
))
(declare-fun lt!1561688 () ListLongMap!1519)

(declare-fun lambda!138519 () Int)

(declare-fun forall!9039 (List!48940 Int) Bool)

(assert (=> b!4346945 (= e!2705054 (forall!9039 (toList!2869 lt!1561688) lambda!138519))))

(declare-datatypes ((ListMap!2113 0))(
  ( (ListMap!2114 (toList!2870 List!48939)) )
))
(declare-fun lt!1561687 () ListMap!2113)

(declare-fun lt!1561677 () tuple2!48142)

(declare-fun lt!1561680 () ListMap!2113)

(declare-fun eq!233 (ListMap!2113 ListMap!2113) Bool)

(declare-fun +!557 (ListMap!2113 tuple2!48142) ListMap!2113)

(assert (=> b!4346945 (eq!233 (+!557 lt!1561687 lt!1561677) (+!557 lt!1561680 lt!1561677))))

(declare-fun newValue!99 () V!10421)

(declare-fun key!3918 () K!10175)

(declare-datatypes ((Unit!70733 0))(
  ( (Unit!70734) )
))
(declare-fun lt!1561679 () Unit!70733)

(declare-fun removeThenAddForSameKeyIsSameAsAdd!2 (ListMap!2113 K!10175 V!10421) Unit!70733)

(assert (=> b!4346945 (= lt!1561679 (removeThenAddForSameKeyIsSameAsAdd!2 lt!1561680 key!3918 newValue!99))))

(declare-fun lt!1561674 () ListMap!2113)

(declare-fun lt!1561699 () tuple2!48144)

(declare-fun lt!1561684 () ListLongMap!1519)

(declare-fun extractMap!502 (List!48940) ListMap!2113)

(declare-fun +!558 (ListLongMap!1519 tuple2!48144) ListLongMap!1519)

(assert (=> b!4346945 (eq!233 (extractMap!502 (toList!2869 (+!558 lt!1561684 lt!1561699))) (+!557 lt!1561674 lt!1561677))))

(declare-fun lt!1561681 () Unit!70733)

(declare-fun newBucket!200 () List!48939)

(declare-fun hash!377 () (_ BitVec 64))

(declare-datatypes ((Hashable!4835 0))(
  ( (HashableExt!4834 (__x!30538 Int)) )
))
(declare-fun hashF!1247 () Hashable!4835)

(declare-fun lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!83 (ListLongMap!1519 (_ BitVec 64) List!48939 K!10175 V!10421 Hashable!4835) Unit!70733)

(assert (=> b!4346945 (= lt!1561681 (lemmaChangeOneBucketToUpdateANewKeyUpdateThisKeyInGenMap!83 lt!1561684 hash!377 newBucket!200 key!3918 newValue!99 hashF!1247))))

(declare-fun b!4346946 () Bool)

(declare-fun e!2705056 () Bool)

(declare-fun tp!1329592 () Bool)

(assert (=> b!4346946 (= e!2705056 tp!1329592)))

(declare-fun b!4346947 () Bool)

(declare-fun res!1785081 () Bool)

(declare-fun e!2705052 () Bool)

(assert (=> b!4346947 (=> (not res!1785081) (not e!2705052))))

(declare-fun hash!1430 (Hashable!4835 K!10175) (_ BitVec 64))

(assert (=> b!4346947 (= res!1785081 (= (hash!1430 hashF!1247 key!3918) hash!377))))

(declare-fun b!4346948 () Bool)

(declare-fun res!1785079 () Bool)

(assert (=> b!4346948 (=> (not res!1785079) (not e!2705052))))

(declare-fun allKeysSameHash!401 (List!48939 (_ BitVec 64) Hashable!4835) Bool)

(assert (=> b!4346948 (= res!1785079 (allKeysSameHash!401 newBucket!200 hash!377 hashF!1247))))

(declare-fun b!4346949 () Bool)

(declare-fun res!1785085 () Bool)

(declare-fun e!2705053 () Bool)

(assert (=> b!4346949 (=> (not res!1785085) (not e!2705053))))

(declare-fun lm!1707 () ListLongMap!1519)

(declare-fun contains!10958 (ListLongMap!1519 (_ BitVec 64)) Bool)

(assert (=> b!4346949 (= res!1785085 (contains!10958 lm!1707 hash!377))))

(declare-fun b!4346950 () Bool)

(declare-fun e!2705055 () Bool)

(declare-fun lt!1561678 () ListMap!2113)

(declare-fun lt!1561693 () ListMap!2113)

(assert (=> b!4346950 (= e!2705055 (eq!233 lt!1561678 lt!1561693))))

(declare-fun tp_is_empty!25009 () Bool)

(declare-fun tp!1329591 () Bool)

(declare-fun tp_is_empty!25011 () Bool)

(declare-fun b!4346951 () Bool)

(declare-fun e!2705048 () Bool)

(assert (=> b!4346951 (= e!2705048 (and tp_is_empty!25009 tp_is_empty!25011 tp!1329591))))

(declare-fun b!4346952 () Bool)

(declare-fun e!2705047 () Bool)

(assert (=> b!4346952 (= e!2705047 e!2705054)))

(declare-fun res!1785080 () Bool)

(assert (=> b!4346952 (=> res!1785080 e!2705054)))

(declare-fun lt!1561690 () Bool)

(assert (=> b!4346952 (= res!1785080 lt!1561690)))

(declare-fun e!2705051 () Bool)

(assert (=> b!4346952 e!2705051))

(declare-fun res!1785090 () Bool)

(assert (=> b!4346952 (=> (not res!1785090) (not e!2705051))))

(declare-fun contains!10959 (ListMap!2113 K!10175) Bool)

(assert (=> b!4346952 (= res!1785090 (= lt!1561690 (contains!10959 lt!1561687 key!3918)))))

(assert (=> b!4346952 (= lt!1561690 (contains!10959 lt!1561674 key!3918))))

(declare-fun lt!1561696 () Unit!70733)

(declare-fun lemmaEquivalentThenSameContains!94 (ListMap!2113 ListMap!2113 K!10175) Unit!70733)

(assert (=> b!4346952 (= lt!1561696 (lemmaEquivalentThenSameContains!94 lt!1561674 lt!1561687 key!3918))))

(assert (=> b!4346952 (eq!233 lt!1561674 lt!1561687)))

(declare-fun -!244 (ListMap!2113 K!10175) ListMap!2113)

(assert (=> b!4346952 (= lt!1561687 (-!244 lt!1561680 key!3918))))

(declare-fun lt!1561683 () List!48939)

(declare-fun lt!1561676 () Unit!70733)

(declare-fun lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!59 (ListLongMap!1519 (_ BitVec 64) List!48939 K!10175 Hashable!4835) Unit!70733)

(assert (=> b!4346952 (= lt!1561676 (lemmaChangeOneBucketToRemoveAKeyRemoveThisKeyInGenMap!59 lm!1707 hash!377 lt!1561683 key!3918 hashF!1247))))

(declare-fun lt!1561686 () ListMap!2113)

(assert (=> b!4346952 (= lt!1561686 lt!1561674)))

(assert (=> b!4346952 (= lt!1561674 (extractMap!502 (toList!2869 lt!1561684)))))

(declare-fun lt!1561692 () List!48939)

(assert (=> b!4346952 (= lt!1561683 lt!1561692)))

(assert (=> b!4346952 (= lt!1561684 (+!558 lm!1707 (tuple2!48145 hash!377 lt!1561683)))))

(declare-fun tail!6941 (List!48939) List!48939)

(assert (=> b!4346952 (= lt!1561683 (tail!6941 newBucket!200))))

(assert (=> b!4346952 e!2705055))

(declare-fun res!1785089 () Bool)

(assert (=> b!4346952 (=> (not res!1785089) (not e!2705055))))

(declare-fun lt!1561698 () ListMap!2113)

(assert (=> b!4346952 (= res!1785089 (eq!233 lt!1561698 lt!1561693))))

(assert (=> b!4346952 (= lt!1561693 (+!557 lt!1561686 lt!1561677))))

(declare-fun lt!1561689 () ListMap!2113)

(declare-fun addToMapMapFromBucket!151 (List!48939 ListMap!2113) ListMap!2113)

(assert (=> b!4346952 (= lt!1561686 (addToMapMapFromBucket!151 lt!1561692 lt!1561689))))

(declare-fun lt!1561691 () Unit!70733)

(declare-fun lemmaAddToMapFromBucketPlusKeyValueIsCommutative!62 (ListMap!2113 K!10175 V!10421 List!48939) Unit!70733)

(assert (=> b!4346952 (= lt!1561691 (lemmaAddToMapFromBucketPlusKeyValueIsCommutative!62 lt!1561689 key!3918 newValue!99 lt!1561692))))

(assert (=> b!4346952 (= lt!1561678 lt!1561698)))

(assert (=> b!4346952 (= lt!1561698 (addToMapMapFromBucket!151 lt!1561692 (+!557 lt!1561689 lt!1561677)))))

(declare-fun lt!1561675 () ListMap!2113)

(assert (=> b!4346952 (= lt!1561675 lt!1561678)))

(declare-fun lt!1561697 () List!48939)

(assert (=> b!4346952 (= lt!1561678 (addToMapMapFromBucket!151 lt!1561697 lt!1561689))))

(assert (=> b!4346952 (= lt!1561675 (addToMapMapFromBucket!151 newBucket!200 lt!1561689))))

(assert (=> b!4346952 (= lt!1561675 (extractMap!502 (toList!2869 lt!1561688)))))

(assert (=> b!4346952 (= lt!1561689 (extractMap!502 (t!355860 (toList!2869 lm!1707))))))

(declare-fun b!4346953 () Bool)

(declare-fun e!2705049 () Bool)

(assert (=> b!4346953 (= e!2705049 e!2705047)))

(declare-fun res!1785082 () Bool)

(assert (=> b!4346953 (=> res!1785082 e!2705047)))

(get-info :version)

(assert (=> b!4346953 (= res!1785082 (or (not ((_ is Cons!48816) (toList!2869 lm!1707))) (not (= (_1!27366 (h!54343 (toList!2869 lm!1707))) hash!377))))))

(declare-fun e!2705050 () Bool)

(assert (=> b!4346953 e!2705050))

(declare-fun res!1785088 () Bool)

(assert (=> b!4346953 (=> (not res!1785088) (not e!2705050))))

(assert (=> b!4346953 (= res!1785088 (forall!9039 (toList!2869 lt!1561688) lambda!138519))))

(assert (=> b!4346953 (= lt!1561688 (+!558 lm!1707 lt!1561699))))

(assert (=> b!4346953 (= lt!1561699 (tuple2!48145 hash!377 newBucket!200))))

(declare-fun lt!1561700 () Unit!70733)

(declare-fun addValidProp!97 (ListLongMap!1519 Int (_ BitVec 64) List!48939) Unit!70733)

(assert (=> b!4346953 (= lt!1561700 (addValidProp!97 lm!1707 lambda!138519 hash!377 newBucket!200))))

(assert (=> b!4346953 (forall!9039 (toList!2869 lm!1707) lambda!138519)))

(declare-fun b!4346954 () Bool)

(declare-fun res!1785078 () Bool)

(assert (=> b!4346954 (=> (not res!1785078) (not e!2705052))))

(declare-fun allKeysSameHashInMap!547 (ListLongMap!1519 Hashable!4835) Bool)

(assert (=> b!4346954 (= res!1785078 (allKeysSameHashInMap!547 lm!1707 hashF!1247))))

(declare-fun b!4346955 () Bool)

(assert (=> b!4346955 (= e!2705053 (not e!2705049))))

(declare-fun res!1785084 () Bool)

(assert (=> b!4346955 (=> res!1785084 e!2705049)))

(assert (=> b!4346955 (= res!1785084 (not (= newBucket!200 lt!1561697)))))

(assert (=> b!4346955 (= lt!1561697 (Cons!48815 lt!1561677 lt!1561692))))

(declare-fun lt!1561685 () List!48939)

(declare-fun removePairForKey!413 (List!48939 K!10175) List!48939)

(assert (=> b!4346955 (= lt!1561692 (removePairForKey!413 lt!1561685 key!3918))))

(assert (=> b!4346955 (= lt!1561677 (tuple2!48143 key!3918 newValue!99))))

(declare-fun lt!1561682 () tuple2!48144)

(declare-fun lt!1561694 () Unit!70733)

(declare-fun forallContained!1689 (List!48940 Int tuple2!48144) Unit!70733)

(assert (=> b!4346955 (= lt!1561694 (forallContained!1689 (toList!2869 lm!1707) lambda!138519 lt!1561682))))

(declare-fun contains!10960 (List!48940 tuple2!48144) Bool)

(assert (=> b!4346955 (contains!10960 (toList!2869 lm!1707) lt!1561682)))

(assert (=> b!4346955 (= lt!1561682 (tuple2!48145 hash!377 lt!1561685))))

(declare-fun lt!1561695 () Unit!70733)

(declare-fun lemmaGetValueByKeyImpliesContainsTuple!290 (List!48940 (_ BitVec 64) List!48939) Unit!70733)

(assert (=> b!4346955 (= lt!1561695 (lemmaGetValueByKeyImpliesContainsTuple!290 (toList!2869 lm!1707) hash!377 lt!1561685))))

(declare-fun apply!11295 (ListLongMap!1519 (_ BitVec 64)) List!48939)

(assert (=> b!4346955 (= lt!1561685 (apply!11295 lm!1707 hash!377))))

(declare-fun res!1785087 () Bool)

(assert (=> start!419692 (=> (not res!1785087) (not e!2705052))))

(assert (=> start!419692 (= res!1785087 (forall!9039 (toList!2869 lm!1707) lambda!138519))))

(assert (=> start!419692 e!2705052))

(assert (=> start!419692 e!2705048))

(assert (=> start!419692 true))

(declare-fun inv!64361 (ListLongMap!1519) Bool)

(assert (=> start!419692 (and (inv!64361 lm!1707) e!2705056)))

(assert (=> start!419692 tp_is_empty!25009))

(assert (=> start!419692 tp_is_empty!25011))

(declare-fun b!4346956 () Bool)

(assert (=> b!4346956 (= e!2705051 (= (apply!11295 lt!1561684 hash!377) lt!1561683))))

(declare-fun b!4346957 () Bool)

(assert (=> b!4346957 (= e!2705052 e!2705053)))

(declare-fun res!1785091 () Bool)

(assert (=> b!4346957 (=> (not res!1785091) (not e!2705053))))

(assert (=> b!4346957 (= res!1785091 (contains!10959 lt!1561680 key!3918))))

(assert (=> b!4346957 (= lt!1561680 (extractMap!502 (toList!2869 lm!1707)))))

(declare-fun b!4346958 () Bool)

(assert (=> b!4346958 (= e!2705050 (or (not ((_ is Cons!48816) (toList!2869 lm!1707))) (not (= (_1!27366 (h!54343 (toList!2869 lm!1707))) hash!377)) (= lt!1561688 (ListLongMap!1520 (Cons!48816 lt!1561699 (t!355860 (toList!2869 lm!1707)))))))))

(declare-fun b!4346959 () Bool)

(declare-fun res!1785083 () Bool)

(assert (=> b!4346959 (=> (not res!1785083) (not e!2705050))))

(assert (=> b!4346959 (= res!1785083 (forall!9039 (toList!2869 lt!1561688) lambda!138519))))

(declare-fun b!4346960 () Bool)

(declare-fun res!1785086 () Bool)

(assert (=> b!4346960 (=> res!1785086 e!2705049)))

(declare-fun noDuplicateKeys!443 (List!48939) Bool)

(assert (=> b!4346960 (= res!1785086 (not (noDuplicateKeys!443 newBucket!200)))))

(assert (= (and start!419692 res!1785087) b!4346954))

(assert (= (and b!4346954 res!1785078) b!4346947))

(assert (= (and b!4346947 res!1785081) b!4346948))

(assert (= (and b!4346948 res!1785079) b!4346957))

(assert (= (and b!4346957 res!1785091) b!4346949))

(assert (= (and b!4346949 res!1785085) b!4346955))

(assert (= (and b!4346955 (not res!1785084)) b!4346960))

(assert (= (and b!4346960 (not res!1785086)) b!4346953))

(assert (= (and b!4346953 res!1785088) b!4346959))

(assert (= (and b!4346959 res!1785083) b!4346958))

(assert (= (and b!4346953 (not res!1785082)) b!4346952))

(assert (= (and b!4346952 res!1785089) b!4346950))

(assert (= (and b!4346952 res!1785090) b!4346956))

(assert (= (and b!4346952 (not res!1785080)) b!4346945))

(assert (= (and start!419692 ((_ is Cons!48815) newBucket!200)) b!4346951))

(assert (= start!419692 b!4346946))

(declare-fun m!4955705 () Bool)

(assert (=> start!419692 m!4955705))

(declare-fun m!4955707 () Bool)

(assert (=> start!419692 m!4955707))

(declare-fun m!4955709 () Bool)

(assert (=> b!4346957 m!4955709))

(declare-fun m!4955711 () Bool)

(assert (=> b!4346957 m!4955711))

(declare-fun m!4955713 () Bool)

(assert (=> b!4346960 m!4955713))

(declare-fun m!4955715 () Bool)

(assert (=> b!4346947 m!4955715))

(declare-fun m!4955717 () Bool)

(assert (=> b!4346952 m!4955717))

(declare-fun m!4955719 () Bool)

(assert (=> b!4346952 m!4955719))

(declare-fun m!4955721 () Bool)

(assert (=> b!4346952 m!4955721))

(declare-fun m!4955723 () Bool)

(assert (=> b!4346952 m!4955723))

(assert (=> b!4346952 m!4955719))

(declare-fun m!4955725 () Bool)

(assert (=> b!4346952 m!4955725))

(declare-fun m!4955727 () Bool)

(assert (=> b!4346952 m!4955727))

(declare-fun m!4955729 () Bool)

(assert (=> b!4346952 m!4955729))

(declare-fun m!4955731 () Bool)

(assert (=> b!4346952 m!4955731))

(declare-fun m!4955733 () Bool)

(assert (=> b!4346952 m!4955733))

(declare-fun m!4955735 () Bool)

(assert (=> b!4346952 m!4955735))

(declare-fun m!4955737 () Bool)

(assert (=> b!4346952 m!4955737))

(declare-fun m!4955739 () Bool)

(assert (=> b!4346952 m!4955739))

(declare-fun m!4955741 () Bool)

(assert (=> b!4346952 m!4955741))

(declare-fun m!4955743 () Bool)

(assert (=> b!4346952 m!4955743))

(declare-fun m!4955745 () Bool)

(assert (=> b!4346952 m!4955745))

(declare-fun m!4955747 () Bool)

(assert (=> b!4346952 m!4955747))

(declare-fun m!4955749 () Bool)

(assert (=> b!4346952 m!4955749))

(declare-fun m!4955751 () Bool)

(assert (=> b!4346952 m!4955751))

(declare-fun m!4955753 () Bool)

(assert (=> b!4346952 m!4955753))

(declare-fun m!4955755 () Bool)

(assert (=> b!4346949 m!4955755))

(declare-fun m!4955757 () Bool)

(assert (=> b!4346948 m!4955757))

(declare-fun m!4955759 () Bool)

(assert (=> b!4346953 m!4955759))

(declare-fun m!4955761 () Bool)

(assert (=> b!4346953 m!4955761))

(declare-fun m!4955763 () Bool)

(assert (=> b!4346953 m!4955763))

(assert (=> b!4346953 m!4955705))

(assert (=> b!4346959 m!4955759))

(declare-fun m!4955765 () Bool)

(assert (=> b!4346954 m!4955765))

(declare-fun m!4955767 () Bool)

(assert (=> b!4346950 m!4955767))

(declare-fun m!4955769 () Bool)

(assert (=> b!4346955 m!4955769))

(declare-fun m!4955771 () Bool)

(assert (=> b!4346955 m!4955771))

(declare-fun m!4955773 () Bool)

(assert (=> b!4346955 m!4955773))

(declare-fun m!4955775 () Bool)

(assert (=> b!4346955 m!4955775))

(declare-fun m!4955777 () Bool)

(assert (=> b!4346955 m!4955777))

(declare-fun m!4955779 () Bool)

(assert (=> b!4346945 m!4955779))

(declare-fun m!4955781 () Bool)

(assert (=> b!4346945 m!4955781))

(declare-fun m!4955783 () Bool)

(assert (=> b!4346945 m!4955783))

(declare-fun m!4955785 () Bool)

(assert (=> b!4346945 m!4955785))

(declare-fun m!4955787 () Bool)

(assert (=> b!4346945 m!4955787))

(assert (=> b!4346945 m!4955759))

(assert (=> b!4346945 m!4955783))

(assert (=> b!4346945 m!4955787))

(declare-fun m!4955789 () Bool)

(assert (=> b!4346945 m!4955789))

(declare-fun m!4955791 () Bool)

(assert (=> b!4346945 m!4955791))

(declare-fun m!4955793 () Bool)

(assert (=> b!4346945 m!4955793))

(declare-fun m!4955795 () Bool)

(assert (=> b!4346945 m!4955795))

(assert (=> b!4346945 m!4955791))

(assert (=> b!4346945 m!4955793))

(declare-fun m!4955797 () Bool)

(assert (=> b!4346956 m!4955797))

(check-sat (not b!4346960) tp_is_empty!25009 (not b!4346945) tp_is_empty!25011 (not b!4346947) (not b!4346952) (not b!4346951) (not b!4346949) (not b!4346946) (not b!4346950) (not b!4346948) (not start!419692) (not b!4346955) (not b!4346953) (not b!4346954) (not b!4346957) (not b!4346956) (not b!4346959))
(check-sat)
