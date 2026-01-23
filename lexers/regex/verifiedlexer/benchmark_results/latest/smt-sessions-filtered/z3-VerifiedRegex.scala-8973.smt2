; Options: -in -smt2
(set-option :produce-unsat-assumptions true)

(declare-fun start!483016 () Bool)

(assert start!483016)

(declare-fun b!4735745 () Bool)

(declare-fun res!2005600 () Bool)

(declare-fun e!2953917 () Bool)

(assert (=> b!4735745 (=> res!2005600 e!2953917)))

(declare-datatypes ((K!14270 0))(
  ( (K!14271 (val!19687 Int)) )
))
(declare-datatypes ((V!14516 0))(
  ( (V!14517 (val!19688 Int)) )
))
(declare-datatypes ((tuple2!54586 0))(
  ( (tuple2!54587 (_1!30587 K!14270) (_2!30587 V!14516)) )
))
(declare-datatypes ((List!53049 0))(
  ( (Nil!52925) (Cons!52925 (h!59300 tuple2!54586) (t!360335 List!53049)) )
))
(declare-fun oldBucket!34 () List!53049)

(declare-fun lt!1898796 () tuple2!54586)

(assert (=> b!4735745 (= res!2005600 (not (= (h!59300 oldBucket!34) lt!1898796)))))

(declare-fun b!4735746 () Bool)

(declare-fun e!2953920 () Bool)

(declare-fun e!2953923 () Bool)

(assert (=> b!4735746 (= e!2953920 e!2953923)))

(declare-fun res!2005595 () Bool)

(assert (=> b!4735746 (=> (not res!2005595) (not e!2953923))))

(declare-datatypes ((ListMap!5349 0))(
  ( (ListMap!5350 (toList!5985 List!53049)) )
))
(declare-fun lt!1898803 () ListMap!5349)

(declare-fun key!4653 () K!14270)

(declare-fun contains!16316 (ListMap!5349 K!14270) Bool)

(assert (=> b!4735746 (= res!2005595 (contains!16316 lt!1898803 key!4653))))

(declare-datatypes ((tuple2!54588 0))(
  ( (tuple2!54589 (_1!30588 (_ BitVec 64)) (_2!30588 List!53049)) )
))
(declare-datatypes ((List!53050 0))(
  ( (Nil!52926) (Cons!52926 (h!59301 tuple2!54588) (t!360336 List!53050)) )
))
(declare-datatypes ((ListLongMap!4515 0))(
  ( (ListLongMap!4516 (toList!5986 List!53050)) )
))
(declare-fun lm!2023 () ListLongMap!4515)

(declare-fun extractMap!2074 (List!53050) ListMap!5349)

(assert (=> b!4735746 (= lt!1898803 (extractMap!2074 (toList!5986 lm!2023)))))

(declare-fun tp_is_empty!31485 () Bool)

(declare-fun tp!1349064 () Bool)

(declare-fun b!4735747 () Bool)

(declare-fun e!2953918 () Bool)

(declare-fun tp_is_empty!31487 () Bool)

(assert (=> b!4735747 (= e!2953918 (and tp_is_empty!31485 tp_is_empty!31487 tp!1349064))))

(declare-fun b!4735748 () Bool)

(declare-fun e!2953916 () Bool)

(assert (=> b!4735748 (= e!2953923 e!2953916)))

(declare-fun res!2005593 () Bool)

(assert (=> b!4735748 (=> (not res!2005593) (not e!2953916))))

(declare-fun lt!1898794 () (_ BitVec 64))

(declare-fun hash!405 () (_ BitVec 64))

(assert (=> b!4735748 (= res!2005593 (= lt!1898794 hash!405))))

(declare-datatypes ((Hashable!6417 0))(
  ( (HashableExt!6416 (__x!32120 Int)) )
))
(declare-fun hashF!1323 () Hashable!6417)

(declare-fun hash!4444 (Hashable!6417 K!14270) (_ BitVec 64))

(assert (=> b!4735748 (= lt!1898794 (hash!4444 hashF!1323 key!4653))))

(declare-fun b!4735749 () Bool)

(declare-fun res!2005592 () Bool)

(assert (=> b!4735749 (=> res!2005592 e!2953917)))

(declare-fun lt!1898790 () ListMap!5349)

(declare-fun lt!1898802 () ListMap!5349)

(declare-fun eq!1145 (ListMap!5349 ListMap!5349) Bool)

(declare-fun +!2296 (ListMap!5349 tuple2!54586) ListMap!5349)

(assert (=> b!4735749 (= res!2005592 (not (eq!1145 lt!1898802 (+!2296 lt!1898790 lt!1898796))))))

(declare-fun b!4735750 () Bool)

(declare-fun res!2005601 () Bool)

(assert (=> b!4735750 (=> (not res!2005601) (not e!2953920))))

(declare-fun allKeysSameHash!1874 (List!53049 (_ BitVec 64) Hashable!6417) Bool)

(assert (=> b!4735750 (= res!2005601 (allKeysSameHash!1874 oldBucket!34 hash!405 hashF!1323))))

(declare-fun b!4735751 () Bool)

(declare-fun res!2005596 () Bool)

(assert (=> b!4735751 (=> (not res!2005596) (not e!2953920))))

(declare-fun newBucket!218 () List!53049)

(declare-fun noDuplicateKeys!2048 (List!53049) Bool)

(assert (=> b!4735751 (= res!2005596 (noDuplicateKeys!2048 newBucket!218))))

(declare-fun b!4735752 () Bool)

(declare-fun res!2005583 () Bool)

(assert (=> b!4735752 (=> (not res!2005583) (not e!2953916))))

(assert (=> b!4735752 (= res!2005583 (allKeysSameHash!1874 newBucket!218 hash!405 hashF!1323))))

(declare-fun b!4735753 () Bool)

(declare-fun res!2005598 () Bool)

(assert (=> b!4735753 (=> (not res!2005598) (not e!2953920))))

(assert (=> b!4735753 (= res!2005598 (noDuplicateKeys!2048 oldBucket!34))))

(declare-fun b!4735754 () Bool)

(declare-fun res!2005582 () Bool)

(declare-fun e!2953919 () Bool)

(assert (=> b!4735754 (=> (not res!2005582) (not e!2953919))))

(get-info :version)

(assert (=> b!4735754 (= res!2005582 ((_ is Cons!52926) (toList!5986 lm!2023)))))

(declare-fun b!4735755 () Bool)

(declare-fun e!2953922 () Bool)

(assert (=> b!4735755 (= e!2953919 (not e!2953922))))

(declare-fun res!2005584 () Bool)

(assert (=> b!4735755 (=> res!2005584 e!2953922)))

(assert (=> b!4735755 (= res!2005584 (or (and ((_ is Cons!52925) oldBucket!34) (= (_1!30587 (h!59300 oldBucket!34)) key!4653)) (not ((_ is Cons!52925) oldBucket!34)) (= (_1!30587 (h!59300 oldBucket!34)) key!4653)))))

(declare-fun lt!1898798 () ListMap!5349)

(declare-fun addToMapMapFromBucket!1478 (List!53049 ListMap!5349) ListMap!5349)

(assert (=> b!4735755 (= lt!1898803 (addToMapMapFromBucket!1478 (_2!30588 (h!59301 (toList!5986 lm!2023))) lt!1898798))))

(assert (=> b!4735755 (= lt!1898798 (extractMap!2074 (t!360336 (toList!5986 lm!2023))))))

(declare-fun tail!9088 (ListLongMap!4515) ListLongMap!4515)

(assert (=> b!4735755 (= (t!360336 (toList!5986 lm!2023)) (toList!5986 (tail!9088 lm!2023)))))

(declare-fun b!4735756 () Bool)

(declare-fun e!2953921 () Bool)

(declare-fun e!2953924 () Bool)

(assert (=> b!4735756 (= e!2953921 e!2953924)))

(declare-fun res!2005586 () Bool)

(assert (=> b!4735756 (=> res!2005586 e!2953924)))

(declare-fun lt!1898783 () List!53049)

(declare-fun lt!1898795 () List!53049)

(declare-fun removePairForKey!1643 (List!53049 K!14270) List!53049)

(assert (=> b!4735756 (= res!2005586 (not (= (removePairForKey!1643 lt!1898783 key!4653) lt!1898795)))))

(declare-fun tail!9089 (List!53049) List!53049)

(assert (=> b!4735756 (= lt!1898795 (tail!9089 newBucket!218))))

(assert (=> b!4735756 (= lt!1898783 (tail!9089 oldBucket!34))))

(declare-fun e!2953925 () Bool)

(declare-fun tp!1349065 () Bool)

(declare-fun b!4735757 () Bool)

(assert (=> b!4735757 (= e!2953925 (and tp_is_empty!31485 tp_is_empty!31487 tp!1349065))))

(declare-fun b!4735758 () Bool)

(assert (=> b!4735758 (= e!2953922 e!2953921)))

(declare-fun res!2005589 () Bool)

(assert (=> b!4735758 (=> res!2005589 e!2953921)))

(declare-fun containsKey!3449 (List!53049 K!14270) Bool)

(assert (=> b!4735758 (= res!2005589 (not (containsKey!3449 (t!360335 oldBucket!34) key!4653)))))

(assert (=> b!4735758 (containsKey!3449 oldBucket!34 key!4653)))

(declare-datatypes ((Unit!132303 0))(
  ( (Unit!132304) )
))
(declare-fun lt!1898801 () Unit!132303)

(declare-fun lemmaGetPairDefinedThenContainsKey!332 (List!53049 K!14270 Hashable!6417) Unit!132303)

(assert (=> b!4735758 (= lt!1898801 (lemmaGetPairDefinedThenContainsKey!332 oldBucket!34 key!4653 hashF!1323))))

(declare-fun lt!1898787 () List!53049)

(declare-datatypes ((Option!12435 0))(
  ( (None!12434) (Some!12434 (v!47079 tuple2!54586)) )
))
(declare-fun isDefined!9689 (Option!12435) Bool)

(declare-fun getPair!588 (List!53049 K!14270) Option!12435)

(assert (=> b!4735758 (isDefined!9689 (getPair!588 lt!1898787 key!4653))))

(declare-fun lt!1898788 () tuple2!54588)

(declare-fun lt!1898799 () Unit!132303)

(declare-fun lambda!218208 () Int)

(declare-fun forallContained!3701 (List!53050 Int tuple2!54588) Unit!132303)

(assert (=> b!4735758 (= lt!1898799 (forallContained!3701 (toList!5986 lm!2023) lambda!218208 lt!1898788))))

(declare-fun contains!16317 (List!53050 tuple2!54588) Bool)

(assert (=> b!4735758 (contains!16317 (toList!5986 lm!2023) lt!1898788)))

(assert (=> b!4735758 (= lt!1898788 (tuple2!54589 lt!1898794 lt!1898787))))

(declare-fun lt!1898786 () Unit!132303)

(declare-fun lemmaGetValueImpliesTupleContained!393 (ListLongMap!4515 (_ BitVec 64) List!53049) Unit!132303)

(assert (=> b!4735758 (= lt!1898786 (lemmaGetValueImpliesTupleContained!393 lm!2023 lt!1898794 lt!1898787))))

(declare-fun apply!12473 (ListLongMap!4515 (_ BitVec 64)) List!53049)

(assert (=> b!4735758 (= lt!1898787 (apply!12473 lm!2023 lt!1898794))))

(declare-fun contains!16318 (ListLongMap!4515 (_ BitVec 64)) Bool)

(assert (=> b!4735758 (contains!16318 lm!2023 lt!1898794)))

(declare-fun lt!1898800 () Unit!132303)

(declare-fun lemmaInGenMapThenLongMapContainsHash!794 (ListLongMap!4515 K!14270 Hashable!6417) Unit!132303)

(assert (=> b!4735758 (= lt!1898800 (lemmaInGenMapThenLongMapContainsHash!794 lm!2023 key!4653 hashF!1323))))

(declare-fun lt!1898792 () Unit!132303)

(declare-fun lemmaInGenMapThenGetPairDefined!384 (ListLongMap!4515 K!14270 Hashable!6417) Unit!132303)

(assert (=> b!4735758 (= lt!1898792 (lemmaInGenMapThenGetPairDefined!384 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4735759 () Bool)

(assert (=> b!4735759 (= e!2953924 e!2953917)))

(declare-fun res!2005588 () Bool)

(assert (=> b!4735759 (=> res!2005588 e!2953917)))

(assert (=> b!4735759 (= res!2005588 (not (eq!1145 lt!1898802 (+!2296 lt!1898790 (h!59300 oldBucket!34)))))))

(assert (=> b!4735759 (= lt!1898790 (extractMap!2074 (Cons!52926 (tuple2!54589 hash!405 lt!1898783) (t!360336 (toList!5986 lm!2023)))))))

(declare-fun lt!1898789 () tuple2!54588)

(assert (=> b!4735759 (= lt!1898802 (extractMap!2074 (Cons!52926 lt!1898789 (t!360336 (toList!5986 lm!2023)))))))

(assert (=> b!4735759 (eq!1145 (addToMapMapFromBucket!1478 (Cons!52925 lt!1898796 lt!1898795) lt!1898798) (+!2296 (addToMapMapFromBucket!1478 lt!1898795 lt!1898798) lt!1898796))))

(declare-fun lt!1898797 () Unit!132303)

(declare-fun lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!394 (tuple2!54586 List!53049 ListMap!5349) Unit!132303)

(assert (=> b!4735759 (= lt!1898797 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!394 lt!1898796 lt!1898795 lt!1898798))))

(declare-fun head!10299 (List!53049) tuple2!54586)

(assert (=> b!4735759 (= lt!1898796 (head!10299 newBucket!218))))

(declare-fun lt!1898791 () tuple2!54586)

(assert (=> b!4735759 (eq!1145 (addToMapMapFromBucket!1478 (Cons!52925 lt!1898791 lt!1898783) lt!1898798) (+!2296 (addToMapMapFromBucket!1478 lt!1898783 lt!1898798) lt!1898791))))

(declare-fun lt!1898793 () Unit!132303)

(assert (=> b!4735759 (= lt!1898793 (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!394 lt!1898791 lt!1898783 lt!1898798))))

(assert (=> b!4735759 (= lt!1898791 (head!10299 oldBucket!34))))

(declare-fun lt!1898785 () List!53050)

(assert (=> b!4735759 (contains!16316 (extractMap!2074 lt!1898785) key!4653)))

(declare-fun lt!1898784 () Unit!132303)

(declare-fun lemmaListContainsThenExtractedMapContains!556 (ListLongMap!4515 K!14270 Hashable!6417) Unit!132303)

(assert (=> b!4735759 (= lt!1898784 (lemmaListContainsThenExtractedMapContains!556 (ListLongMap!4516 lt!1898785) key!4653 hashF!1323))))

(assert (=> b!4735759 (= lt!1898785 (Cons!52926 (tuple2!54589 hash!405 (t!360335 oldBucket!34)) (t!360336 (toList!5986 lm!2023))))))

(declare-fun b!4735760 () Bool)

(declare-fun e!2953926 () Bool)

(declare-fun tp!1349063 () Bool)

(assert (=> b!4735760 (= e!2953926 tp!1349063)))

(declare-fun b!4735761 () Bool)

(declare-fun res!2005599 () Bool)

(assert (=> b!4735761 (=> res!2005599 e!2953924)))

(assert (=> b!4735761 (= res!2005599 (not (= (removePairForKey!1643 (t!360335 oldBucket!34) key!4653) lt!1898795)))))

(declare-fun res!2005597 () Bool)

(assert (=> start!483016 (=> (not res!2005597) (not e!2953920))))

(declare-fun forall!11661 (List!53050 Int) Bool)

(assert (=> start!483016 (= res!2005597 (forall!11661 (toList!5986 lm!2023) lambda!218208))))

(assert (=> start!483016 e!2953920))

(declare-fun inv!68144 (ListLongMap!4515) Bool)

(assert (=> start!483016 (and (inv!68144 lm!2023) e!2953926)))

(assert (=> start!483016 tp_is_empty!31485))

(assert (=> start!483016 e!2953925))

(assert (=> start!483016 true))

(assert (=> start!483016 e!2953918))

(declare-fun b!4735762 () Bool)

(declare-fun res!2005594 () Bool)

(assert (=> b!4735762 (=> (not res!2005594) (not e!2953916))))

(declare-fun allKeysSameHashInMap!1962 (ListLongMap!4515 Hashable!6417) Bool)

(assert (=> b!4735762 (= res!2005594 (allKeysSameHashInMap!1962 lm!2023 hashF!1323))))

(declare-fun b!4735763 () Bool)

(assert (=> b!4735763 (= e!2953917 (noDuplicateKeys!2048 lt!1898795))))

(declare-fun b!4735764 () Bool)

(declare-fun res!2005585 () Bool)

(assert (=> b!4735764 (=> res!2005585 e!2953917)))

(assert (=> b!4735764 (= res!2005585 (not (forall!11661 lt!1898785 lambda!218208)))))

(declare-fun b!4735765 () Bool)

(assert (=> b!4735765 (= e!2953916 e!2953919)))

(declare-fun res!2005587 () Bool)

(assert (=> b!4735765 (=> (not res!2005587) (not e!2953919))))

(declare-fun head!10300 (List!53050) tuple2!54588)

(assert (=> b!4735765 (= res!2005587 (= (head!10300 (toList!5986 lm!2023)) lt!1898789))))

(assert (=> b!4735765 (= lt!1898789 (tuple2!54589 hash!405 oldBucket!34))))

(declare-fun b!4735766 () Bool)

(declare-fun res!2005591 () Bool)

(assert (=> b!4735766 (=> (not res!2005591) (not e!2953920))))

(assert (=> b!4735766 (= res!2005591 (= (removePairForKey!1643 oldBucket!34 key!4653) newBucket!218))))

(declare-fun b!4735767 () Bool)

(declare-fun res!2005590 () Bool)

(assert (=> b!4735767 (=> res!2005590 e!2953917)))

(assert (=> b!4735767 (= res!2005590 (not (noDuplicateKeys!2048 (t!360335 oldBucket!34))))))

(assert (= (and start!483016 res!2005597) b!4735753))

(assert (= (and b!4735753 res!2005598) b!4735751))

(assert (= (and b!4735751 res!2005596) b!4735766))

(assert (= (and b!4735766 res!2005591) b!4735750))

(assert (= (and b!4735750 res!2005601) b!4735746))

(assert (= (and b!4735746 res!2005595) b!4735748))

(assert (= (and b!4735748 res!2005593) b!4735752))

(assert (= (and b!4735752 res!2005583) b!4735762))

(assert (= (and b!4735762 res!2005594) b!4735765))

(assert (= (and b!4735765 res!2005587) b!4735754))

(assert (= (and b!4735754 res!2005582) b!4735755))

(assert (= (and b!4735755 (not res!2005584)) b!4735758))

(assert (= (and b!4735758 (not res!2005589)) b!4735756))

(assert (= (and b!4735756 (not res!2005586)) b!4735761))

(assert (= (and b!4735761 (not res!2005599)) b!4735759))

(assert (= (and b!4735759 (not res!2005588)) b!4735745))

(assert (= (and b!4735745 (not res!2005600)) b!4735749))

(assert (= (and b!4735749 (not res!2005592)) b!4735764))

(assert (= (and b!4735764 (not res!2005585)) b!4735767))

(assert (= (and b!4735767 (not res!2005590)) b!4735763))

(assert (= start!483016 b!4735760))

(assert (= (and start!483016 ((_ is Cons!52925) oldBucket!34)) b!4735757))

(assert (= (and start!483016 ((_ is Cons!52925) newBucket!218)) b!4735747))

(declare-fun m!5681913 () Bool)

(assert (=> b!4735751 m!5681913))

(declare-fun m!5681915 () Bool)

(assert (=> b!4735752 m!5681915))

(declare-fun m!5681917 () Bool)

(assert (=> b!4735764 m!5681917))

(declare-fun m!5681919 () Bool)

(assert (=> b!4735763 m!5681919))

(declare-fun m!5681921 () Bool)

(assert (=> b!4735746 m!5681921))

(declare-fun m!5681923 () Bool)

(assert (=> b!4735746 m!5681923))

(declare-fun m!5681925 () Bool)

(assert (=> b!4735759 m!5681925))

(declare-fun m!5681927 () Bool)

(assert (=> b!4735759 m!5681927))

(declare-fun m!5681929 () Bool)

(assert (=> b!4735759 m!5681929))

(declare-fun m!5681931 () Bool)

(assert (=> b!4735759 m!5681931))

(declare-fun m!5681933 () Bool)

(assert (=> b!4735759 m!5681933))

(declare-fun m!5681935 () Bool)

(assert (=> b!4735759 m!5681935))

(declare-fun m!5681937 () Bool)

(assert (=> b!4735759 m!5681937))

(assert (=> b!4735759 m!5681925))

(declare-fun m!5681939 () Bool)

(assert (=> b!4735759 m!5681939))

(declare-fun m!5681941 () Bool)

(assert (=> b!4735759 m!5681941))

(declare-fun m!5681943 () Bool)

(assert (=> b!4735759 m!5681943))

(declare-fun m!5681945 () Bool)

(assert (=> b!4735759 m!5681945))

(declare-fun m!5681947 () Bool)

(assert (=> b!4735759 m!5681947))

(declare-fun m!5681949 () Bool)

(assert (=> b!4735759 m!5681949))

(declare-fun m!5681951 () Bool)

(assert (=> b!4735759 m!5681951))

(declare-fun m!5681953 () Bool)

(assert (=> b!4735759 m!5681953))

(assert (=> b!4735759 m!5681937))

(assert (=> b!4735759 m!5681933))

(assert (=> b!4735759 m!5681931))

(assert (=> b!4735759 m!5681945))

(assert (=> b!4735759 m!5681927))

(declare-fun m!5681955 () Bool)

(assert (=> b!4735759 m!5681955))

(declare-fun m!5681957 () Bool)

(assert (=> b!4735759 m!5681957))

(assert (=> b!4735759 m!5681951))

(declare-fun m!5681959 () Bool)

(assert (=> b!4735759 m!5681959))

(assert (=> b!4735759 m!5681941))

(declare-fun m!5681961 () Bool)

(assert (=> b!4735759 m!5681961))

(declare-fun m!5681963 () Bool)

(assert (=> b!4735758 m!5681963))

(declare-fun m!5681965 () Bool)

(assert (=> b!4735758 m!5681965))

(declare-fun m!5681967 () Bool)

(assert (=> b!4735758 m!5681967))

(declare-fun m!5681969 () Bool)

(assert (=> b!4735758 m!5681969))

(declare-fun m!5681971 () Bool)

(assert (=> b!4735758 m!5681971))

(declare-fun m!5681973 () Bool)

(assert (=> b!4735758 m!5681973))

(declare-fun m!5681975 () Bool)

(assert (=> b!4735758 m!5681975))

(declare-fun m!5681977 () Bool)

(assert (=> b!4735758 m!5681977))

(declare-fun m!5681979 () Bool)

(assert (=> b!4735758 m!5681979))

(declare-fun m!5681981 () Bool)

(assert (=> b!4735758 m!5681981))

(declare-fun m!5681983 () Bool)

(assert (=> b!4735758 m!5681983))

(assert (=> b!4735758 m!5681967))

(declare-fun m!5681985 () Bool)

(assert (=> b!4735758 m!5681985))

(declare-fun m!5681987 () Bool)

(assert (=> b!4735767 m!5681987))

(declare-fun m!5681989 () Bool)

(assert (=> b!4735761 m!5681989))

(declare-fun m!5681991 () Bool)

(assert (=> b!4735755 m!5681991))

(declare-fun m!5681993 () Bool)

(assert (=> b!4735755 m!5681993))

(declare-fun m!5681995 () Bool)

(assert (=> b!4735755 m!5681995))

(declare-fun m!5681997 () Bool)

(assert (=> b!4735750 m!5681997))

(declare-fun m!5681999 () Bool)

(assert (=> b!4735762 m!5681999))

(declare-fun m!5682001 () Bool)

(assert (=> b!4735766 m!5682001))

(declare-fun m!5682003 () Bool)

(assert (=> b!4735753 m!5682003))

(declare-fun m!5682005 () Bool)

(assert (=> start!483016 m!5682005))

(declare-fun m!5682007 () Bool)

(assert (=> start!483016 m!5682007))

(declare-fun m!5682009 () Bool)

(assert (=> b!4735748 m!5682009))

(declare-fun m!5682011 () Bool)

(assert (=> b!4735749 m!5682011))

(assert (=> b!4735749 m!5682011))

(declare-fun m!5682013 () Bool)

(assert (=> b!4735749 m!5682013))

(declare-fun m!5682015 () Bool)

(assert (=> b!4735756 m!5682015))

(declare-fun m!5682017 () Bool)

(assert (=> b!4735756 m!5682017))

(declare-fun m!5682019 () Bool)

(assert (=> b!4735756 m!5682019))

(declare-fun m!5682021 () Bool)

(assert (=> b!4735765 m!5682021))

(check-sat (not b!4735760) (not b!4735765) (not b!4735758) (not b!4735751) (not b!4735755) (not b!4735764) (not b!4735753) (not b!4735759) tp_is_empty!31487 (not start!483016) (not b!4735757) (not b!4735752) (not b!4735763) (not b!4735756) (not b!4735749) (not b!4735750) (not b!4735767) (not b!4735761) (not b!4735766) tp_is_empty!31485 (not b!4735746) (not b!4735762) (not b!4735748) (not b!4735747))
(check-sat)
(get-model)

(declare-fun b!4735811 () Bool)

(declare-fun e!2953954 () List!53049)

(declare-fun e!2953953 () List!53049)

(assert (=> b!4735811 (= e!2953954 e!2953953)))

(declare-fun c!808826 () Bool)

(assert (=> b!4735811 (= c!808826 ((_ is Cons!52925) (t!360335 oldBucket!34)))))

(declare-fun d!1511148 () Bool)

(declare-fun lt!1898826 () List!53049)

(assert (=> d!1511148 (not (containsKey!3449 lt!1898826 key!4653))))

(assert (=> d!1511148 (= lt!1898826 e!2953954)))

(declare-fun c!808827 () Bool)

(assert (=> d!1511148 (= c!808827 (and ((_ is Cons!52925) (t!360335 oldBucket!34)) (= (_1!30587 (h!59300 (t!360335 oldBucket!34))) key!4653)))))

(assert (=> d!1511148 (noDuplicateKeys!2048 (t!360335 oldBucket!34))))

(assert (=> d!1511148 (= (removePairForKey!1643 (t!360335 oldBucket!34) key!4653) lt!1898826)))

(declare-fun b!4735810 () Bool)

(assert (=> b!4735810 (= e!2953954 (t!360335 (t!360335 oldBucket!34)))))

(declare-fun b!4735812 () Bool)

(assert (=> b!4735812 (= e!2953953 (Cons!52925 (h!59300 (t!360335 oldBucket!34)) (removePairForKey!1643 (t!360335 (t!360335 oldBucket!34)) key!4653)))))

(declare-fun b!4735813 () Bool)

(assert (=> b!4735813 (= e!2953953 Nil!52925)))

(assert (= (and d!1511148 c!808827) b!4735810))

(assert (= (and d!1511148 (not c!808827)) b!4735811))

(assert (= (and b!4735811 c!808826) b!4735812))

(assert (= (and b!4735811 (not c!808826)) b!4735813))

(declare-fun m!5682083 () Bool)

(assert (=> d!1511148 m!5682083))

(assert (=> d!1511148 m!5681987))

(declare-fun m!5682085 () Bool)

(assert (=> b!4735812 m!5682085))

(assert (=> b!4735761 d!1511148))

(declare-fun d!1511158 () Bool)

(assert (=> d!1511158 true))

(assert (=> d!1511158 true))

(declare-fun lambda!218219 () Int)

(declare-fun forall!11663 (List!53049 Int) Bool)

(assert (=> d!1511158 (= (allKeysSameHash!1874 oldBucket!34 hash!405 hashF!1323) (forall!11663 oldBucket!34 lambda!218219))))

(declare-fun bs!1124925 () Bool)

(assert (= bs!1124925 d!1511158))

(declare-fun m!5682089 () Bool)

(assert (=> bs!1124925 m!5682089))

(assert (=> b!4735750 d!1511158))

(declare-fun d!1511162 () Bool)

(declare-fun res!2005628 () Bool)

(declare-fun e!2953959 () Bool)

(assert (=> d!1511162 (=> res!2005628 e!2953959)))

(assert (=> d!1511162 (= res!2005628 (not ((_ is Cons!52925) newBucket!218)))))

(assert (=> d!1511162 (= (noDuplicateKeys!2048 newBucket!218) e!2953959)))

(declare-fun b!4735822 () Bool)

(declare-fun e!2953960 () Bool)

(assert (=> b!4735822 (= e!2953959 e!2953960)))

(declare-fun res!2005629 () Bool)

(assert (=> b!4735822 (=> (not res!2005629) (not e!2953960))))

(assert (=> b!4735822 (= res!2005629 (not (containsKey!3449 (t!360335 newBucket!218) (_1!30587 (h!59300 newBucket!218)))))))

(declare-fun b!4735823 () Bool)

(assert (=> b!4735823 (= e!2953960 (noDuplicateKeys!2048 (t!360335 newBucket!218)))))

(assert (= (and d!1511162 (not res!2005628)) b!4735822))

(assert (= (and b!4735822 res!2005629) b!4735823))

(declare-fun m!5682091 () Bool)

(assert (=> b!4735822 m!5682091))

(declare-fun m!5682093 () Bool)

(assert (=> b!4735823 m!5682093))

(assert (=> b!4735751 d!1511162))

(declare-fun bs!1124926 () Bool)

(declare-fun d!1511164 () Bool)

(assert (= bs!1124926 (and d!1511164 start!483016)))

(declare-fun lambda!218222 () Int)

(assert (=> bs!1124926 (not (= lambda!218222 lambda!218208))))

(assert (=> d!1511164 true))

(assert (=> d!1511164 (= (allKeysSameHashInMap!1962 lm!2023 hashF!1323) (forall!11661 (toList!5986 lm!2023) lambda!218222))))

(declare-fun bs!1124927 () Bool)

(assert (= bs!1124927 d!1511164))

(declare-fun m!5682095 () Bool)

(assert (=> bs!1124927 m!5682095))

(assert (=> b!4735762 d!1511164))

(declare-fun d!1511166 () Bool)

(declare-fun res!2005634 () Bool)

(declare-fun e!2953965 () Bool)

(assert (=> d!1511166 (=> res!2005634 e!2953965)))

(assert (=> d!1511166 (= res!2005634 ((_ is Nil!52926) (toList!5986 lm!2023)))))

(assert (=> d!1511166 (= (forall!11661 (toList!5986 lm!2023) lambda!218208) e!2953965)))

(declare-fun b!4735830 () Bool)

(declare-fun e!2953966 () Bool)

(assert (=> b!4735830 (= e!2953965 e!2953966)))

(declare-fun res!2005635 () Bool)

(assert (=> b!4735830 (=> (not res!2005635) (not e!2953966))))

(declare-fun dynLambda!21863 (Int tuple2!54588) Bool)

(assert (=> b!4735830 (= res!2005635 (dynLambda!21863 lambda!218208 (h!59301 (toList!5986 lm!2023))))))

(declare-fun b!4735831 () Bool)

(assert (=> b!4735831 (= e!2953966 (forall!11661 (t!360336 (toList!5986 lm!2023)) lambda!218208))))

(assert (= (and d!1511166 (not res!2005634)) b!4735830))

(assert (= (and b!4735830 res!2005635) b!4735831))

(declare-fun b_lambda!181113 () Bool)

(assert (=> (not b_lambda!181113) (not b!4735830)))

(declare-fun m!5682097 () Bool)

(assert (=> b!4735830 m!5682097))

(declare-fun m!5682099 () Bool)

(assert (=> b!4735831 m!5682099))

(assert (=> start!483016 d!1511166))

(declare-fun d!1511168 () Bool)

(declare-fun isStrictlySorted!776 (List!53050) Bool)

(assert (=> d!1511168 (= (inv!68144 lm!2023) (isStrictlySorted!776 (toList!5986 lm!2023)))))

(declare-fun bs!1124928 () Bool)

(assert (= bs!1124928 d!1511168))

(declare-fun m!5682101 () Bool)

(assert (=> bs!1124928 m!5682101))

(assert (=> start!483016 d!1511168))

(declare-fun d!1511170 () Bool)

(assert (=> d!1511170 (dynLambda!21863 lambda!218208 lt!1898788)))

(declare-fun lt!1898832 () Unit!132303)

(declare-fun choose!33561 (List!53050 Int tuple2!54588) Unit!132303)

(assert (=> d!1511170 (= lt!1898832 (choose!33561 (toList!5986 lm!2023) lambda!218208 lt!1898788))))

(declare-fun e!2953969 () Bool)

(assert (=> d!1511170 e!2953969))

(declare-fun res!2005638 () Bool)

(assert (=> d!1511170 (=> (not res!2005638) (not e!2953969))))

(assert (=> d!1511170 (= res!2005638 (forall!11661 (toList!5986 lm!2023) lambda!218208))))

(assert (=> d!1511170 (= (forallContained!3701 (toList!5986 lm!2023) lambda!218208 lt!1898788) lt!1898832)))

(declare-fun b!4735834 () Bool)

(assert (=> b!4735834 (= e!2953969 (contains!16317 (toList!5986 lm!2023) lt!1898788))))

(assert (= (and d!1511170 res!2005638) b!4735834))

(declare-fun b_lambda!181115 () Bool)

(assert (=> (not b_lambda!181115) (not d!1511170)))

(declare-fun m!5682103 () Bool)

(assert (=> d!1511170 m!5682103))

(declare-fun m!5682105 () Bool)

(assert (=> d!1511170 m!5682105))

(assert (=> d!1511170 m!5682005))

(assert (=> b!4735834 m!5681981))

(assert (=> b!4735758 d!1511170))

(declare-fun d!1511172 () Bool)

(declare-fun isEmpty!29218 (Option!12435) Bool)

(assert (=> d!1511172 (= (isDefined!9689 (getPair!588 lt!1898787 key!4653)) (not (isEmpty!29218 (getPair!588 lt!1898787 key!4653))))))

(declare-fun bs!1124929 () Bool)

(assert (= bs!1124929 d!1511172))

(assert (=> bs!1124929 m!5681967))

(declare-fun m!5682107 () Bool)

(assert (=> bs!1124929 m!5682107))

(assert (=> b!4735758 d!1511172))

(declare-fun d!1511174 () Bool)

(declare-fun lt!1898835 () Bool)

(define-sort InoxSet (T) (Array T Bool))

(declare-fun content!9449 (List!53050) (InoxSet tuple2!54588))

(assert (=> d!1511174 (= lt!1898835 (select (content!9449 (toList!5986 lm!2023)) lt!1898788))))

(declare-fun e!2953975 () Bool)

(assert (=> d!1511174 (= lt!1898835 e!2953975)))

(declare-fun res!2005644 () Bool)

(assert (=> d!1511174 (=> (not res!2005644) (not e!2953975))))

(assert (=> d!1511174 (= res!2005644 ((_ is Cons!52926) (toList!5986 lm!2023)))))

(assert (=> d!1511174 (= (contains!16317 (toList!5986 lm!2023) lt!1898788) lt!1898835)))

(declare-fun b!4735839 () Bool)

(declare-fun e!2953974 () Bool)

(assert (=> b!4735839 (= e!2953975 e!2953974)))

(declare-fun res!2005643 () Bool)

(assert (=> b!4735839 (=> res!2005643 e!2953974)))

(assert (=> b!4735839 (= res!2005643 (= (h!59301 (toList!5986 lm!2023)) lt!1898788))))

(declare-fun b!4735840 () Bool)

(assert (=> b!4735840 (= e!2953974 (contains!16317 (t!360336 (toList!5986 lm!2023)) lt!1898788))))

(assert (= (and d!1511174 res!2005644) b!4735839))

(assert (= (and b!4735839 (not res!2005643)) b!4735840))

(declare-fun m!5682109 () Bool)

(assert (=> d!1511174 m!5682109))

(declare-fun m!5682111 () Bool)

(assert (=> d!1511174 m!5682111))

(declare-fun m!5682113 () Bool)

(assert (=> b!4735840 m!5682113))

(assert (=> b!4735758 d!1511174))

(declare-fun d!1511176 () Bool)

(declare-fun e!2953981 () Bool)

(assert (=> d!1511176 e!2953981))

(declare-fun res!2005647 () Bool)

(assert (=> d!1511176 (=> res!2005647 e!2953981)))

(declare-fun lt!1898844 () Bool)

(assert (=> d!1511176 (= res!2005647 (not lt!1898844))))

(declare-fun lt!1898847 () Bool)

(assert (=> d!1511176 (= lt!1898844 lt!1898847)))

(declare-fun lt!1898845 () Unit!132303)

(declare-fun e!2953980 () Unit!132303)

(assert (=> d!1511176 (= lt!1898845 e!2953980)))

(declare-fun c!808830 () Bool)

(assert (=> d!1511176 (= c!808830 lt!1898847)))

(declare-fun containsKey!3451 (List!53050 (_ BitVec 64)) Bool)

(assert (=> d!1511176 (= lt!1898847 (containsKey!3451 (toList!5986 lm!2023) lt!1898794))))

(assert (=> d!1511176 (= (contains!16318 lm!2023 lt!1898794) lt!1898844)))

(declare-fun b!4735847 () Bool)

(declare-fun lt!1898846 () Unit!132303)

(assert (=> b!4735847 (= e!2953980 lt!1898846)))

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1898 (List!53050 (_ BitVec 64)) Unit!132303)

(assert (=> b!4735847 (= lt!1898846 (lemmaContainsKeyImpliesGetValueByKeyDefined!1898 (toList!5986 lm!2023) lt!1898794))))

(declare-datatypes ((Option!12437 0))(
  ( (None!12436) (Some!12436 (v!47085 List!53049)) )
))
(declare-fun isDefined!9691 (Option!12437) Bool)

(declare-fun getValueByKey!2007 (List!53050 (_ BitVec 64)) Option!12437)

(assert (=> b!4735847 (isDefined!9691 (getValueByKey!2007 (toList!5986 lm!2023) lt!1898794))))

(declare-fun b!4735848 () Bool)

(declare-fun Unit!132340 () Unit!132303)

(assert (=> b!4735848 (= e!2953980 Unit!132340)))

(declare-fun b!4735849 () Bool)

(assert (=> b!4735849 (= e!2953981 (isDefined!9691 (getValueByKey!2007 (toList!5986 lm!2023) lt!1898794)))))

(assert (= (and d!1511176 c!808830) b!4735847))

(assert (= (and d!1511176 (not c!808830)) b!4735848))

(assert (= (and d!1511176 (not res!2005647)) b!4735849))

(declare-fun m!5682115 () Bool)

(assert (=> d!1511176 m!5682115))

(declare-fun m!5682117 () Bool)

(assert (=> b!4735847 m!5682117))

(declare-fun m!5682119 () Bool)

(assert (=> b!4735847 m!5682119))

(assert (=> b!4735847 m!5682119))

(declare-fun m!5682121 () Bool)

(assert (=> b!4735847 m!5682121))

(assert (=> b!4735849 m!5682119))

(assert (=> b!4735849 m!5682119))

(assert (=> b!4735849 m!5682121))

(assert (=> b!4735758 d!1511176))

(declare-fun d!1511178 () Bool)

(declare-fun get!17782 (Option!12437) List!53049)

(assert (=> d!1511178 (= (apply!12473 lm!2023 lt!1898794) (get!17782 (getValueByKey!2007 (toList!5986 lm!2023) lt!1898794)))))

(declare-fun bs!1124930 () Bool)

(assert (= bs!1124930 d!1511178))

(assert (=> bs!1124930 m!5682119))

(assert (=> bs!1124930 m!5682119))

(declare-fun m!5682123 () Bool)

(assert (=> bs!1124930 m!5682123))

(assert (=> b!4735758 d!1511178))

(declare-fun bs!1124931 () Bool)

(declare-fun d!1511180 () Bool)

(assert (= bs!1124931 (and d!1511180 start!483016)))

(declare-fun lambda!218225 () Int)

(assert (=> bs!1124931 (= lambda!218225 lambda!218208)))

(declare-fun bs!1124932 () Bool)

(assert (= bs!1124932 (and d!1511180 d!1511164)))

(assert (=> bs!1124932 (not (= lambda!218225 lambda!218222))))

(assert (=> d!1511180 (contains!16318 lm!2023 (hash!4444 hashF!1323 key!4653))))

(declare-fun lt!1898850 () Unit!132303)

(declare-fun choose!33562 (ListLongMap!4515 K!14270 Hashable!6417) Unit!132303)

(assert (=> d!1511180 (= lt!1898850 (choose!33562 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1511180 (forall!11661 (toList!5986 lm!2023) lambda!218225)))

(assert (=> d!1511180 (= (lemmaInGenMapThenLongMapContainsHash!794 lm!2023 key!4653 hashF!1323) lt!1898850)))

(declare-fun bs!1124933 () Bool)

(assert (= bs!1124933 d!1511180))

(assert (=> bs!1124933 m!5682009))

(assert (=> bs!1124933 m!5682009))

(declare-fun m!5682125 () Bool)

(assert (=> bs!1124933 m!5682125))

(declare-fun m!5682127 () Bool)

(assert (=> bs!1124933 m!5682127))

(declare-fun m!5682129 () Bool)

(assert (=> bs!1124933 m!5682129))

(assert (=> b!4735758 d!1511180))

(declare-fun d!1511182 () Bool)

(assert (=> d!1511182 (contains!16317 (toList!5986 lm!2023) (tuple2!54589 lt!1898794 lt!1898787))))

(declare-fun lt!1898853 () Unit!132303)

(declare-fun choose!33563 (ListLongMap!4515 (_ BitVec 64) List!53049) Unit!132303)

(assert (=> d!1511182 (= lt!1898853 (choose!33563 lm!2023 lt!1898794 lt!1898787))))

(assert (=> d!1511182 (contains!16318 lm!2023 lt!1898794)))

(assert (=> d!1511182 (= (lemmaGetValueImpliesTupleContained!393 lm!2023 lt!1898794 lt!1898787) lt!1898853)))

(declare-fun bs!1124934 () Bool)

(assert (= bs!1124934 d!1511182))

(declare-fun m!5682131 () Bool)

(assert (=> bs!1124934 m!5682131))

(declare-fun m!5682133 () Bool)

(assert (=> bs!1124934 m!5682133))

(assert (=> bs!1124934 m!5681965))

(assert (=> b!4735758 d!1511182))

(declare-fun bs!1124996 () Bool)

(declare-fun d!1511184 () Bool)

(assert (= bs!1124996 (and d!1511184 start!483016)))

(declare-fun lambda!218273 () Int)

(assert (=> bs!1124996 (= lambda!218273 lambda!218208)))

(declare-fun bs!1124997 () Bool)

(assert (= bs!1124997 (and d!1511184 d!1511164)))

(assert (=> bs!1124997 (not (= lambda!218273 lambda!218222))))

(declare-fun bs!1124998 () Bool)

(assert (= bs!1124998 (and d!1511184 d!1511180)))

(assert (=> bs!1124998 (= lambda!218273 lambda!218225)))

(declare-fun b!4735917 () Bool)

(declare-fun res!2005685 () Bool)

(declare-fun e!2954022 () Bool)

(assert (=> b!4735917 (=> (not res!2005685) (not e!2954022))))

(assert (=> b!4735917 (= res!2005685 (allKeysSameHashInMap!1962 lm!2023 hashF!1323))))

(declare-fun b!4735918 () Bool)

(declare-fun res!2005684 () Bool)

(assert (=> b!4735918 (=> (not res!2005684) (not e!2954022))))

(assert (=> b!4735918 (= res!2005684 (contains!16316 (extractMap!2074 (toList!5986 lm!2023)) key!4653))))

(assert (=> d!1511184 e!2954022))

(declare-fun res!2005683 () Bool)

(assert (=> d!1511184 (=> (not res!2005683) (not e!2954022))))

(assert (=> d!1511184 (= res!2005683 (forall!11661 (toList!5986 lm!2023) lambda!218273))))

(declare-fun lt!1899010 () Unit!132303)

(declare-fun choose!33564 (ListLongMap!4515 K!14270 Hashable!6417) Unit!132303)

(assert (=> d!1511184 (= lt!1899010 (choose!33564 lm!2023 key!4653 hashF!1323))))

(assert (=> d!1511184 (forall!11661 (toList!5986 lm!2023) lambda!218273)))

(assert (=> d!1511184 (= (lemmaInGenMapThenGetPairDefined!384 lm!2023 key!4653 hashF!1323) lt!1899010)))

(declare-fun b!4735919 () Bool)

(assert (=> b!4735919 (= e!2954022 (isDefined!9689 (getPair!588 (apply!12473 lm!2023 (hash!4444 hashF!1323 key!4653)) key!4653)))))

(declare-fun lt!1899005 () Unit!132303)

(assert (=> b!4735919 (= lt!1899005 (forallContained!3701 (toList!5986 lm!2023) lambda!218273 (tuple2!54589 (hash!4444 hashF!1323 key!4653) (apply!12473 lm!2023 (hash!4444 hashF!1323 key!4653)))))))

(declare-fun lt!1899009 () Unit!132303)

(declare-fun lt!1899008 () Unit!132303)

(assert (=> b!4735919 (= lt!1899009 lt!1899008)))

(declare-fun lt!1899007 () (_ BitVec 64))

(declare-fun lt!1899012 () List!53049)

(assert (=> b!4735919 (contains!16317 (toList!5986 lm!2023) (tuple2!54589 lt!1899007 lt!1899012))))

(assert (=> b!4735919 (= lt!1899008 (lemmaGetValueImpliesTupleContained!393 lm!2023 lt!1899007 lt!1899012))))

(declare-fun e!2954021 () Bool)

(assert (=> b!4735919 e!2954021))

(declare-fun res!2005682 () Bool)

(assert (=> b!4735919 (=> (not res!2005682) (not e!2954021))))

(assert (=> b!4735919 (= res!2005682 (contains!16318 lm!2023 lt!1899007))))

(assert (=> b!4735919 (= lt!1899012 (apply!12473 lm!2023 (hash!4444 hashF!1323 key!4653)))))

(assert (=> b!4735919 (= lt!1899007 (hash!4444 hashF!1323 key!4653))))

(declare-fun lt!1899006 () Unit!132303)

(declare-fun lt!1899011 () Unit!132303)

(assert (=> b!4735919 (= lt!1899006 lt!1899011)))

(assert (=> b!4735919 (contains!16318 lm!2023 (hash!4444 hashF!1323 key!4653))))

(assert (=> b!4735919 (= lt!1899011 (lemmaInGenMapThenLongMapContainsHash!794 lm!2023 key!4653 hashF!1323))))

(declare-fun b!4735920 () Bool)

(assert (=> b!4735920 (= e!2954021 (= (getValueByKey!2007 (toList!5986 lm!2023) lt!1899007) (Some!12436 lt!1899012)))))

(assert (= (and d!1511184 res!2005683) b!4735917))

(assert (= (and b!4735917 res!2005685) b!4735918))

(assert (= (and b!4735918 res!2005684) b!4735919))

(assert (= (and b!4735919 res!2005682) b!4735920))

(declare-fun m!5682285 () Bool)

(assert (=> d!1511184 m!5682285))

(declare-fun m!5682287 () Bool)

(assert (=> d!1511184 m!5682287))

(assert (=> d!1511184 m!5682285))

(assert (=> b!4735918 m!5681923))

(assert (=> b!4735918 m!5681923))

(declare-fun m!5682289 () Bool)

(assert (=> b!4735918 m!5682289))

(declare-fun m!5682291 () Bool)

(assert (=> b!4735920 m!5682291))

(assert (=> b!4735917 m!5681999))

(declare-fun m!5682293 () Bool)

(assert (=> b!4735919 m!5682293))

(declare-fun m!5682295 () Bool)

(assert (=> b!4735919 m!5682295))

(declare-fun m!5682297 () Bool)

(assert (=> b!4735919 m!5682297))

(assert (=> b!4735919 m!5682009))

(declare-fun m!5682299 () Bool)

(assert (=> b!4735919 m!5682299))

(assert (=> b!4735919 m!5682009))

(declare-fun m!5682301 () Bool)

(assert (=> b!4735919 m!5682301))

(assert (=> b!4735919 m!5681963))

(assert (=> b!4735919 m!5682299))

(assert (=> b!4735919 m!5682295))

(declare-fun m!5682303 () Bool)

(assert (=> b!4735919 m!5682303))

(declare-fun m!5682305 () Bool)

(assert (=> b!4735919 m!5682305))

(assert (=> b!4735919 m!5682009))

(assert (=> b!4735919 m!5682125))

(assert (=> b!4735758 d!1511184))

(declare-fun b!4735937 () Bool)

(declare-fun res!2005694 () Bool)

(declare-fun e!2954035 () Bool)

(assert (=> b!4735937 (=> (not res!2005694) (not e!2954035))))

(declare-fun lt!1899018 () Option!12435)

(declare-fun get!17783 (Option!12435) tuple2!54586)

(assert (=> b!4735937 (= res!2005694 (= (_1!30587 (get!17783 lt!1899018)) key!4653))))

(declare-fun b!4735938 () Bool)

(declare-fun e!2954034 () Option!12435)

(assert (=> b!4735938 (= e!2954034 None!12434)))

(declare-fun b!4735939 () Bool)

(assert (=> b!4735939 (= e!2954034 (getPair!588 (t!360335 lt!1898787) key!4653))))

(declare-fun b!4735940 () Bool)

(declare-fun e!2954037 () Option!12435)

(assert (=> b!4735940 (= e!2954037 e!2954034)))

(declare-fun c!808851 () Bool)

(assert (=> b!4735940 (= c!808851 ((_ is Cons!52925) lt!1898787))))

(declare-fun d!1511208 () Bool)

(declare-fun e!2954036 () Bool)

(assert (=> d!1511208 e!2954036))

(declare-fun res!2005697 () Bool)

(assert (=> d!1511208 (=> res!2005697 e!2954036)))

(declare-fun e!2954033 () Bool)

(assert (=> d!1511208 (= res!2005697 e!2954033)))

(declare-fun res!2005696 () Bool)

(assert (=> d!1511208 (=> (not res!2005696) (not e!2954033))))

(assert (=> d!1511208 (= res!2005696 (isEmpty!29218 lt!1899018))))

(assert (=> d!1511208 (= lt!1899018 e!2954037)))

(declare-fun c!808850 () Bool)

(assert (=> d!1511208 (= c!808850 (and ((_ is Cons!52925) lt!1898787) (= (_1!30587 (h!59300 lt!1898787)) key!4653)))))

(assert (=> d!1511208 (noDuplicateKeys!2048 lt!1898787)))

(assert (=> d!1511208 (= (getPair!588 lt!1898787 key!4653) lt!1899018)))

(declare-fun b!4735941 () Bool)

(assert (=> b!4735941 (= e!2954036 e!2954035)))

(declare-fun res!2005695 () Bool)

(assert (=> b!4735941 (=> (not res!2005695) (not e!2954035))))

(assert (=> b!4735941 (= res!2005695 (isDefined!9689 lt!1899018))))

(declare-fun b!4735942 () Bool)

(assert (=> b!4735942 (= e!2954033 (not (containsKey!3449 lt!1898787 key!4653)))))

(declare-fun b!4735943 () Bool)

(assert (=> b!4735943 (= e!2954037 (Some!12434 (h!59300 lt!1898787)))))

(declare-fun b!4735944 () Bool)

(declare-fun contains!16321 (List!53049 tuple2!54586) Bool)

(assert (=> b!4735944 (= e!2954035 (contains!16321 lt!1898787 (get!17783 lt!1899018)))))

(assert (= (and d!1511208 c!808850) b!4735943))

(assert (= (and d!1511208 (not c!808850)) b!4735940))

(assert (= (and b!4735940 c!808851) b!4735939))

(assert (= (and b!4735940 (not c!808851)) b!4735938))

(assert (= (and d!1511208 res!2005696) b!4735942))

(assert (= (and d!1511208 (not res!2005697)) b!4735941))

(assert (= (and b!4735941 res!2005695) b!4735937))

(assert (= (and b!4735937 res!2005694) b!4735944))

(declare-fun m!5682315 () Bool)

(assert (=> b!4735937 m!5682315))

(assert (=> b!4735944 m!5682315))

(assert (=> b!4735944 m!5682315))

(declare-fun m!5682317 () Bool)

(assert (=> b!4735944 m!5682317))

(declare-fun m!5682319 () Bool)

(assert (=> b!4735942 m!5682319))

(declare-fun m!5682321 () Bool)

(assert (=> d!1511208 m!5682321))

(declare-fun m!5682323 () Bool)

(assert (=> d!1511208 m!5682323))

(declare-fun m!5682325 () Bool)

(assert (=> b!4735941 m!5682325))

(declare-fun m!5682327 () Bool)

(assert (=> b!4735939 m!5682327))

(assert (=> b!4735758 d!1511208))

(declare-fun d!1511212 () Bool)

(assert (=> d!1511212 (containsKey!3449 oldBucket!34 key!4653)))

(declare-fun lt!1899042 () Unit!132303)

(declare-fun choose!33565 (List!53049 K!14270 Hashable!6417) Unit!132303)

(assert (=> d!1511212 (= lt!1899042 (choose!33565 oldBucket!34 key!4653 hashF!1323))))

(assert (=> d!1511212 (noDuplicateKeys!2048 oldBucket!34)))

(assert (=> d!1511212 (= (lemmaGetPairDefinedThenContainsKey!332 oldBucket!34 key!4653 hashF!1323) lt!1899042)))

(declare-fun bs!1125018 () Bool)

(assert (= bs!1125018 d!1511212))

(assert (=> bs!1125018 m!5681983))

(declare-fun m!5682329 () Bool)

(assert (=> bs!1125018 m!5682329))

(assert (=> bs!1125018 m!5682003))

(assert (=> b!4735758 d!1511212))

(declare-fun d!1511214 () Bool)

(declare-fun res!2005705 () Bool)

(declare-fun e!2954045 () Bool)

(assert (=> d!1511214 (=> res!2005705 e!2954045)))

(assert (=> d!1511214 (= res!2005705 (and ((_ is Cons!52925) (t!360335 oldBucket!34)) (= (_1!30587 (h!59300 (t!360335 oldBucket!34))) key!4653)))))

(assert (=> d!1511214 (= (containsKey!3449 (t!360335 oldBucket!34) key!4653) e!2954045)))

(declare-fun b!4735954 () Bool)

(declare-fun e!2954046 () Bool)

(assert (=> b!4735954 (= e!2954045 e!2954046)))

(declare-fun res!2005706 () Bool)

(assert (=> b!4735954 (=> (not res!2005706) (not e!2954046))))

(assert (=> b!4735954 (= res!2005706 ((_ is Cons!52925) (t!360335 oldBucket!34)))))

(declare-fun b!4735955 () Bool)

(assert (=> b!4735955 (= e!2954046 (containsKey!3449 (t!360335 (t!360335 oldBucket!34)) key!4653))))

(assert (= (and d!1511214 (not res!2005705)) b!4735954))

(assert (= (and b!4735954 res!2005706) b!4735955))

(declare-fun m!5682331 () Bool)

(assert (=> b!4735955 m!5682331))

(assert (=> b!4735758 d!1511214))

(declare-fun d!1511216 () Bool)

(declare-fun res!2005707 () Bool)

(declare-fun e!2954047 () Bool)

(assert (=> d!1511216 (=> res!2005707 e!2954047)))

(assert (=> d!1511216 (= res!2005707 (and ((_ is Cons!52925) oldBucket!34) (= (_1!30587 (h!59300 oldBucket!34)) key!4653)))))

(assert (=> d!1511216 (= (containsKey!3449 oldBucket!34 key!4653) e!2954047)))

(declare-fun b!4735956 () Bool)

(declare-fun e!2954048 () Bool)

(assert (=> b!4735956 (= e!2954047 e!2954048)))

(declare-fun res!2005708 () Bool)

(assert (=> b!4735956 (=> (not res!2005708) (not e!2954048))))

(assert (=> b!4735956 (= res!2005708 ((_ is Cons!52925) oldBucket!34))))

(declare-fun b!4735957 () Bool)

(assert (=> b!4735957 (= e!2954048 (containsKey!3449 (t!360335 oldBucket!34) key!4653))))

(assert (= (and d!1511216 (not res!2005707)) b!4735956))

(assert (= (and b!4735956 res!2005708) b!4735957))

(assert (=> b!4735957 m!5681969))

(assert (=> b!4735758 d!1511216))

(declare-fun b!4735985 () Bool)

(declare-fun e!2954067 () Bool)

(declare-datatypes ((List!53052 0))(
  ( (Nil!52928) (Cons!52928 (h!59305 K!14270) (t!360340 List!53052)) )
))
(declare-fun contains!16322 (List!53052 K!14270) Bool)

(declare-fun keys!19037 (ListMap!5349) List!53052)

(assert (=> b!4735985 (= e!2954067 (contains!16322 (keys!19037 (extractMap!2074 lt!1898785)) key!4653))))

(declare-fun b!4735986 () Bool)

(declare-fun e!2954069 () Unit!132303)

(declare-fun Unit!132352 () Unit!132303)

(assert (=> b!4735986 (= e!2954069 Unit!132352)))

(declare-fun b!4735987 () Bool)

(declare-fun e!2954068 () List!53052)

(assert (=> b!4735987 (= e!2954068 (keys!19037 (extractMap!2074 lt!1898785)))))

(declare-fun d!1511218 () Bool)

(declare-fun e!2954070 () Bool)

(assert (=> d!1511218 e!2954070))

(declare-fun res!2005721 () Bool)

(assert (=> d!1511218 (=> res!2005721 e!2954070)))

(declare-fun e!2954072 () Bool)

(assert (=> d!1511218 (= res!2005721 e!2954072)))

(declare-fun res!2005720 () Bool)

(assert (=> d!1511218 (=> (not res!2005720) (not e!2954072))))

(declare-fun lt!1899082 () Bool)

(assert (=> d!1511218 (= res!2005720 (not lt!1899082))))

(declare-fun lt!1899081 () Bool)

(assert (=> d!1511218 (= lt!1899082 lt!1899081)))

(declare-fun lt!1899084 () Unit!132303)

(declare-fun e!2954071 () Unit!132303)

(assert (=> d!1511218 (= lt!1899084 e!2954071)))

(declare-fun c!808863 () Bool)

(assert (=> d!1511218 (= c!808863 lt!1899081)))

(declare-fun containsKey!3452 (List!53049 K!14270) Bool)

(assert (=> d!1511218 (= lt!1899081 (containsKey!3452 (toList!5985 (extractMap!2074 lt!1898785)) key!4653))))

(assert (=> d!1511218 (= (contains!16316 (extractMap!2074 lt!1898785) key!4653) lt!1899082)))

(declare-fun b!4735988 () Bool)

(assert (=> b!4735988 (= e!2954070 e!2954067)))

(declare-fun res!2005722 () Bool)

(assert (=> b!4735988 (=> (not res!2005722) (not e!2954067))))

(declare-datatypes ((Option!12438 0))(
  ( (None!12437) (Some!12437 (v!47086 V!14516)) )
))
(declare-fun isDefined!9692 (Option!12438) Bool)

(declare-fun getValueByKey!2008 (List!53049 K!14270) Option!12438)

(assert (=> b!4735988 (= res!2005722 (isDefined!9692 (getValueByKey!2008 (toList!5985 (extractMap!2074 lt!1898785)) key!4653)))))

(declare-fun b!4735989 () Bool)

(assert (=> b!4735989 (= e!2954071 e!2954069)))

(declare-fun c!808862 () Bool)

(declare-fun call!331306 () Bool)

(assert (=> b!4735989 (= c!808862 call!331306)))

(declare-fun bm!331301 () Bool)

(assert (=> bm!331301 (= call!331306 (contains!16322 e!2954068 key!4653))))

(declare-fun c!808861 () Bool)

(assert (=> bm!331301 (= c!808861 c!808863)))

(declare-fun b!4735990 () Bool)

(declare-fun lt!1899087 () Unit!132303)

(assert (=> b!4735990 (= e!2954071 lt!1899087)))

(declare-fun lt!1899086 () Unit!132303)

(declare-fun lemmaContainsKeyImpliesGetValueByKeyDefined!1899 (List!53049 K!14270) Unit!132303)

(assert (=> b!4735990 (= lt!1899086 (lemmaContainsKeyImpliesGetValueByKeyDefined!1899 (toList!5985 (extractMap!2074 lt!1898785)) key!4653))))

(assert (=> b!4735990 (isDefined!9692 (getValueByKey!2008 (toList!5985 (extractMap!2074 lt!1898785)) key!4653))))

(declare-fun lt!1899085 () Unit!132303)

(assert (=> b!4735990 (= lt!1899085 lt!1899086)))

(declare-fun lemmaInListThenGetKeysListContains!973 (List!53049 K!14270) Unit!132303)

(assert (=> b!4735990 (= lt!1899087 (lemmaInListThenGetKeysListContains!973 (toList!5985 (extractMap!2074 lt!1898785)) key!4653))))

(assert (=> b!4735990 call!331306))

(declare-fun b!4735991 () Bool)

(assert (=> b!4735991 false))

(declare-fun lt!1899083 () Unit!132303)

(declare-fun lt!1899088 () Unit!132303)

(assert (=> b!4735991 (= lt!1899083 lt!1899088)))

(assert (=> b!4735991 (containsKey!3452 (toList!5985 (extractMap!2074 lt!1898785)) key!4653)))

(declare-fun lemmaInGetKeysListThenContainsKey!977 (List!53049 K!14270) Unit!132303)

(assert (=> b!4735991 (= lt!1899088 (lemmaInGetKeysListThenContainsKey!977 (toList!5985 (extractMap!2074 lt!1898785)) key!4653))))

(declare-fun Unit!132354 () Unit!132303)

(assert (=> b!4735991 (= e!2954069 Unit!132354)))

(declare-fun b!4735992 () Bool)

(declare-fun getKeysList!978 (List!53049) List!53052)

(assert (=> b!4735992 (= e!2954068 (getKeysList!978 (toList!5985 (extractMap!2074 lt!1898785))))))

(declare-fun b!4735993 () Bool)

(assert (=> b!4735993 (= e!2954072 (not (contains!16322 (keys!19037 (extractMap!2074 lt!1898785)) key!4653)))))

(assert (= (and d!1511218 c!808863) b!4735990))

(assert (= (and d!1511218 (not c!808863)) b!4735989))

(assert (= (and b!4735989 c!808862) b!4735991))

(assert (= (and b!4735989 (not c!808862)) b!4735986))

(assert (= (or b!4735990 b!4735989) bm!331301))

(assert (= (and bm!331301 c!808861) b!4735992))

(assert (= (and bm!331301 (not c!808861)) b!4735987))

(assert (= (and d!1511218 res!2005720) b!4735993))

(assert (= (and d!1511218 (not res!2005721)) b!4735988))

(assert (= (and b!4735988 res!2005722) b!4735985))

(declare-fun m!5682409 () Bool)

(assert (=> b!4735988 m!5682409))

(assert (=> b!4735988 m!5682409))

(declare-fun m!5682411 () Bool)

(assert (=> b!4735988 m!5682411))

(declare-fun m!5682413 () Bool)

(assert (=> d!1511218 m!5682413))

(assert (=> b!4735991 m!5682413))

(declare-fun m!5682415 () Bool)

(assert (=> b!4735991 m!5682415))

(declare-fun m!5682417 () Bool)

(assert (=> b!4735990 m!5682417))

(assert (=> b!4735990 m!5682409))

(assert (=> b!4735990 m!5682409))

(assert (=> b!4735990 m!5682411))

(declare-fun m!5682419 () Bool)

(assert (=> b!4735990 m!5682419))

(assert (=> b!4735987 m!5681951))

(declare-fun m!5682421 () Bool)

(assert (=> b!4735987 m!5682421))

(assert (=> b!4735993 m!5681951))

(assert (=> b!4735993 m!5682421))

(assert (=> b!4735993 m!5682421))

(declare-fun m!5682423 () Bool)

(assert (=> b!4735993 m!5682423))

(assert (=> b!4735985 m!5681951))

(assert (=> b!4735985 m!5682421))

(assert (=> b!4735985 m!5682421))

(assert (=> b!4735985 m!5682423))

(declare-fun m!5682425 () Bool)

(assert (=> bm!331301 m!5682425))

(declare-fun m!5682427 () Bool)

(assert (=> b!4735992 m!5682427))

(assert (=> b!4735759 d!1511218))

(declare-fun bs!1125132 () Bool)

(declare-fun b!4736121 () Bool)

(assert (= bs!1125132 (and b!4736121 d!1511158)))

(declare-fun lambda!218328 () Int)

(assert (=> bs!1125132 (not (= lambda!218328 lambda!218219))))

(assert (=> b!4736121 true))

(declare-fun bs!1125133 () Bool)

(declare-fun b!4736117 () Bool)

(assert (= bs!1125133 (and b!4736117 d!1511158)))

(declare-fun lambda!218329 () Int)

(assert (=> bs!1125133 (not (= lambda!218329 lambda!218219))))

(declare-fun bs!1125134 () Bool)

(assert (= bs!1125134 (and b!4736117 b!4736121)))

(assert (=> bs!1125134 (= lambda!218329 lambda!218328)))

(assert (=> b!4736117 true))

(declare-fun lambda!218330 () Int)

(assert (=> bs!1125133 (not (= lambda!218330 lambda!218219))))

(declare-fun lt!1899220 () ListMap!5349)

(assert (=> bs!1125134 (= (= lt!1899220 lt!1898798) (= lambda!218330 lambda!218328))))

(assert (=> b!4736117 (= (= lt!1899220 lt!1898798) (= lambda!218330 lambda!218329))))

(assert (=> b!4736117 true))

(declare-fun bs!1125135 () Bool)

(declare-fun d!1511232 () Bool)

(assert (= bs!1125135 (and d!1511232 d!1511158)))

(declare-fun lambda!218331 () Int)

(assert (=> bs!1125135 (not (= lambda!218331 lambda!218219))))

(declare-fun bs!1125136 () Bool)

(assert (= bs!1125136 (and d!1511232 b!4736121)))

(declare-fun lt!1899208 () ListMap!5349)

(assert (=> bs!1125136 (= (= lt!1899208 lt!1898798) (= lambda!218331 lambda!218328))))

(declare-fun bs!1125137 () Bool)

(assert (= bs!1125137 (and d!1511232 b!4736117)))

(assert (=> bs!1125137 (= (= lt!1899208 lt!1898798) (= lambda!218331 lambda!218329))))

(assert (=> bs!1125137 (= (= lt!1899208 lt!1899220) (= lambda!218331 lambda!218330))))

(assert (=> d!1511232 true))

(declare-fun e!2954153 () ListMap!5349)

(assert (=> b!4736117 (= e!2954153 lt!1899220)))

(declare-fun lt!1899223 () ListMap!5349)

(assert (=> b!4736117 (= lt!1899223 (+!2296 lt!1898798 (h!59300 (Cons!52925 lt!1898791 lt!1898783))))))

(assert (=> b!4736117 (= lt!1899220 (addToMapMapFromBucket!1478 (t!360335 (Cons!52925 lt!1898791 lt!1898783)) (+!2296 lt!1898798 (h!59300 (Cons!52925 lt!1898791 lt!1898783)))))))

(declare-fun lt!1899209 () Unit!132303)

(declare-fun call!331314 () Unit!132303)

(assert (=> b!4736117 (= lt!1899209 call!331314)))

(assert (=> b!4736117 (forall!11663 (toList!5985 lt!1898798) lambda!218329)))

(declare-fun lt!1899204 () Unit!132303)

(assert (=> b!4736117 (= lt!1899204 lt!1899209)))

(assert (=> b!4736117 (forall!11663 (toList!5985 lt!1899223) lambda!218330)))

(declare-fun lt!1899207 () Unit!132303)

(declare-fun Unit!132365 () Unit!132303)

(assert (=> b!4736117 (= lt!1899207 Unit!132365)))

(assert (=> b!4736117 (forall!11663 (t!360335 (Cons!52925 lt!1898791 lt!1898783)) lambda!218330)))

(declare-fun lt!1899205 () Unit!132303)

(declare-fun Unit!132366 () Unit!132303)

(assert (=> b!4736117 (= lt!1899205 Unit!132366)))

(declare-fun lt!1899221 () Unit!132303)

(declare-fun Unit!132367 () Unit!132303)

(assert (=> b!4736117 (= lt!1899221 Unit!132367)))

(declare-fun lt!1899219 () Unit!132303)

(declare-fun forallContained!3703 (List!53049 Int tuple2!54586) Unit!132303)

(assert (=> b!4736117 (= lt!1899219 (forallContained!3703 (toList!5985 lt!1899223) lambda!218330 (h!59300 (Cons!52925 lt!1898791 lt!1898783))))))

(assert (=> b!4736117 (contains!16316 lt!1899223 (_1!30587 (h!59300 (Cons!52925 lt!1898791 lt!1898783))))))

(declare-fun lt!1899218 () Unit!132303)

(declare-fun Unit!132368 () Unit!132303)

(assert (=> b!4736117 (= lt!1899218 Unit!132368)))

(assert (=> b!4736117 (contains!16316 lt!1899220 (_1!30587 (h!59300 (Cons!52925 lt!1898791 lt!1898783))))))

(declare-fun lt!1899210 () Unit!132303)

(declare-fun Unit!132369 () Unit!132303)

(assert (=> b!4736117 (= lt!1899210 Unit!132369)))

(assert (=> b!4736117 (forall!11663 (Cons!52925 lt!1898791 lt!1898783) lambda!218330)))

(declare-fun lt!1899211 () Unit!132303)

(declare-fun Unit!132370 () Unit!132303)

(assert (=> b!4736117 (= lt!1899211 Unit!132370)))

(declare-fun call!331315 () Bool)

(assert (=> b!4736117 call!331315))

(declare-fun lt!1899222 () Unit!132303)

(declare-fun Unit!132371 () Unit!132303)

(assert (=> b!4736117 (= lt!1899222 Unit!132371)))

(declare-fun lt!1899212 () Unit!132303)

(declare-fun Unit!132372 () Unit!132303)

(assert (=> b!4736117 (= lt!1899212 Unit!132372)))

(declare-fun lt!1899215 () Unit!132303)

(declare-fun addForallContainsKeyThenBeforeAdding!823 (ListMap!5349 ListMap!5349 K!14270 V!14516) Unit!132303)

(assert (=> b!4736117 (= lt!1899215 (addForallContainsKeyThenBeforeAdding!823 lt!1898798 lt!1899220 (_1!30587 (h!59300 (Cons!52925 lt!1898791 lt!1898783))) (_2!30587 (h!59300 (Cons!52925 lt!1898791 lt!1898783)))))))

(assert (=> b!4736117 (forall!11663 (toList!5985 lt!1898798) lambda!218330)))

(declare-fun lt!1899213 () Unit!132303)

(assert (=> b!4736117 (= lt!1899213 lt!1899215)))

(declare-fun call!331316 () Bool)

(assert (=> b!4736117 call!331316))

(declare-fun lt!1899217 () Unit!132303)

(declare-fun Unit!132373 () Unit!132303)

(assert (=> b!4736117 (= lt!1899217 Unit!132373)))

(declare-fun res!2005782 () Bool)

(assert (=> b!4736117 (= res!2005782 (forall!11663 (Cons!52925 lt!1898791 lt!1898783) lambda!218330))))

(declare-fun e!2954152 () Bool)

(assert (=> b!4736117 (=> (not res!2005782) (not e!2954152))))

(assert (=> b!4736117 e!2954152))

(declare-fun lt!1899216 () Unit!132303)

(declare-fun Unit!132374 () Unit!132303)

(assert (=> b!4736117 (= lt!1899216 Unit!132374)))

(declare-fun b!4736118 () Bool)

(assert (=> b!4736118 (= e!2954152 (forall!11663 (toList!5985 lt!1898798) lambda!218330))))

(declare-fun bm!331309 () Bool)

(declare-fun lemmaContainsAllItsOwnKeys!824 (ListMap!5349) Unit!132303)

(assert (=> bm!331309 (= call!331314 (lemmaContainsAllItsOwnKeys!824 lt!1898798))))

(declare-fun b!4736119 () Bool)

(declare-fun e!2954154 () Bool)

(declare-fun invariantList!1539 (List!53049) Bool)

(assert (=> b!4736119 (= e!2954154 (invariantList!1539 (toList!5985 lt!1899208)))))

(declare-fun bm!331310 () Bool)

(declare-fun c!808889 () Bool)

(assert (=> bm!331310 (= call!331316 (forall!11663 (toList!5985 lt!1898798) (ite c!808889 lambda!218328 lambda!218330)))))

(assert (=> d!1511232 e!2954154))

(declare-fun res!2005783 () Bool)

(assert (=> d!1511232 (=> (not res!2005783) (not e!2954154))))

(assert (=> d!1511232 (= res!2005783 (forall!11663 (Cons!52925 lt!1898791 lt!1898783) lambda!218331))))

(assert (=> d!1511232 (= lt!1899208 e!2954153)))

(assert (=> d!1511232 (= c!808889 ((_ is Nil!52925) (Cons!52925 lt!1898791 lt!1898783)))))

(assert (=> d!1511232 (noDuplicateKeys!2048 (Cons!52925 lt!1898791 lt!1898783))))

(assert (=> d!1511232 (= (addToMapMapFromBucket!1478 (Cons!52925 lt!1898791 lt!1898783) lt!1898798) lt!1899208)))

(declare-fun b!4736120 () Bool)

(declare-fun res!2005784 () Bool)

(assert (=> b!4736120 (=> (not res!2005784) (not e!2954154))))

(assert (=> b!4736120 (= res!2005784 (forall!11663 (toList!5985 lt!1898798) lambda!218331))))

(declare-fun bm!331311 () Bool)

(assert (=> bm!331311 (= call!331315 (forall!11663 (ite c!808889 (toList!5985 lt!1898798) (toList!5985 lt!1899223)) (ite c!808889 lambda!218328 lambda!218330)))))

(assert (=> b!4736121 (= e!2954153 lt!1898798)))

(declare-fun lt!1899206 () Unit!132303)

(assert (=> b!4736121 (= lt!1899206 call!331314)))

(assert (=> b!4736121 call!331315))

(declare-fun lt!1899214 () Unit!132303)

(assert (=> b!4736121 (= lt!1899214 lt!1899206)))

(assert (=> b!4736121 call!331316))

(declare-fun lt!1899203 () Unit!132303)

(declare-fun Unit!132377 () Unit!132303)

(assert (=> b!4736121 (= lt!1899203 Unit!132377)))

(assert (= (and d!1511232 c!808889) b!4736121))

(assert (= (and d!1511232 (not c!808889)) b!4736117))

(assert (= (and b!4736117 res!2005782) b!4736118))

(assert (= (or b!4736121 b!4736117) bm!331309))

(assert (= (or b!4736121 b!4736117) bm!331310))

(assert (= (or b!4736121 b!4736117) bm!331311))

(assert (= (and d!1511232 res!2005783) b!4736120))

(assert (= (and b!4736120 res!2005784) b!4736119))

(declare-fun m!5682565 () Bool)

(assert (=> b!4736120 m!5682565))

(declare-fun m!5682567 () Bool)

(assert (=> b!4736118 m!5682567))

(declare-fun m!5682569 () Bool)

(assert (=> b!4736117 m!5682569))

(declare-fun m!5682571 () Bool)

(assert (=> b!4736117 m!5682571))

(declare-fun m!5682573 () Bool)

(assert (=> b!4736117 m!5682573))

(declare-fun m!5682575 () Bool)

(assert (=> b!4736117 m!5682575))

(declare-fun m!5682577 () Bool)

(assert (=> b!4736117 m!5682577))

(assert (=> b!4736117 m!5682567))

(declare-fun m!5682579 () Bool)

(assert (=> b!4736117 m!5682579))

(declare-fun m!5682581 () Bool)

(assert (=> b!4736117 m!5682581))

(declare-fun m!5682583 () Bool)

(assert (=> b!4736117 m!5682583))

(assert (=> b!4736117 m!5682573))

(declare-fun m!5682585 () Bool)

(assert (=> b!4736117 m!5682585))

(declare-fun m!5682587 () Bool)

(assert (=> b!4736117 m!5682587))

(assert (=> b!4736117 m!5682577))

(declare-fun m!5682589 () Bool)

(assert (=> bm!331310 m!5682589))

(declare-fun m!5682591 () Bool)

(assert (=> b!4736119 m!5682591))

(declare-fun m!5682593 () Bool)

(assert (=> d!1511232 m!5682593))

(declare-fun m!5682595 () Bool)

(assert (=> d!1511232 m!5682595))

(declare-fun m!5682597 () Bool)

(assert (=> bm!331309 m!5682597))

(declare-fun m!5682599 () Bool)

(assert (=> bm!331311 m!5682599))

(assert (=> b!4735759 d!1511232))

(declare-fun d!1511286 () Bool)

(declare-fun content!9450 (List!53049) (InoxSet tuple2!54586))

(assert (=> d!1511286 (= (eq!1145 (addToMapMapFromBucket!1478 (Cons!52925 lt!1898791 lt!1898783) lt!1898798) (+!2296 (addToMapMapFromBucket!1478 lt!1898783 lt!1898798) lt!1898791)) (= (content!9450 (toList!5985 (addToMapMapFromBucket!1478 (Cons!52925 lt!1898791 lt!1898783) lt!1898798))) (content!9450 (toList!5985 (+!2296 (addToMapMapFromBucket!1478 lt!1898783 lt!1898798) lt!1898791)))))))

(declare-fun bs!1125138 () Bool)

(assert (= bs!1125138 d!1511286))

(declare-fun m!5682601 () Bool)

(assert (=> bs!1125138 m!5682601))

(declare-fun m!5682603 () Bool)

(assert (=> bs!1125138 m!5682603))

(assert (=> b!4735759 d!1511286))

(declare-fun d!1511288 () Bool)

(assert (=> d!1511288 (= (eq!1145 (addToMapMapFromBucket!1478 (Cons!52925 lt!1898796 lt!1898795) lt!1898798) (+!2296 (addToMapMapFromBucket!1478 lt!1898795 lt!1898798) lt!1898796)) (= (content!9450 (toList!5985 (addToMapMapFromBucket!1478 (Cons!52925 lt!1898796 lt!1898795) lt!1898798))) (content!9450 (toList!5985 (+!2296 (addToMapMapFromBucket!1478 lt!1898795 lt!1898798) lt!1898796)))))))

(declare-fun bs!1125139 () Bool)

(assert (= bs!1125139 d!1511288))

(declare-fun m!5682605 () Bool)

(assert (=> bs!1125139 m!5682605))

(declare-fun m!5682607 () Bool)

(assert (=> bs!1125139 m!5682607))

(assert (=> b!4735759 d!1511288))

(declare-fun bs!1125140 () Bool)

(declare-fun d!1511290 () Bool)

(assert (= bs!1125140 (and d!1511290 start!483016)))

(declare-fun lambda!218334 () Int)

(assert (=> bs!1125140 (= lambda!218334 lambda!218208)))

(declare-fun bs!1125141 () Bool)

(assert (= bs!1125141 (and d!1511290 d!1511164)))

(assert (=> bs!1125141 (not (= lambda!218334 lambda!218222))))

(declare-fun bs!1125142 () Bool)

(assert (= bs!1125142 (and d!1511290 d!1511180)))

(assert (=> bs!1125142 (= lambda!218334 lambda!218225)))

(declare-fun bs!1125143 () Bool)

(assert (= bs!1125143 (and d!1511290 d!1511184)))

(assert (=> bs!1125143 (= lambda!218334 lambda!218273)))

(declare-fun lt!1899226 () ListMap!5349)

(assert (=> d!1511290 (invariantList!1539 (toList!5985 lt!1899226))))

(declare-fun e!2954157 () ListMap!5349)

(assert (=> d!1511290 (= lt!1899226 e!2954157)))

(declare-fun c!808892 () Bool)

(assert (=> d!1511290 (= c!808892 ((_ is Cons!52926) (Cons!52926 (tuple2!54589 hash!405 lt!1898783) (t!360336 (toList!5986 lm!2023)))))))

(assert (=> d!1511290 (forall!11661 (Cons!52926 (tuple2!54589 hash!405 lt!1898783) (t!360336 (toList!5986 lm!2023))) lambda!218334)))

(assert (=> d!1511290 (= (extractMap!2074 (Cons!52926 (tuple2!54589 hash!405 lt!1898783) (t!360336 (toList!5986 lm!2023)))) lt!1899226)))

(declare-fun b!4736128 () Bool)

(assert (=> b!4736128 (= e!2954157 (addToMapMapFromBucket!1478 (_2!30588 (h!59301 (Cons!52926 (tuple2!54589 hash!405 lt!1898783) (t!360336 (toList!5986 lm!2023))))) (extractMap!2074 (t!360336 (Cons!52926 (tuple2!54589 hash!405 lt!1898783) (t!360336 (toList!5986 lm!2023)))))))))

(declare-fun b!4736129 () Bool)

(assert (=> b!4736129 (= e!2954157 (ListMap!5350 Nil!52925))))

(assert (= (and d!1511290 c!808892) b!4736128))

(assert (= (and d!1511290 (not c!808892)) b!4736129))

(declare-fun m!5682609 () Bool)

(assert (=> d!1511290 m!5682609))

(declare-fun m!5682611 () Bool)

(assert (=> d!1511290 m!5682611))

(declare-fun m!5682613 () Bool)

(assert (=> b!4736128 m!5682613))

(assert (=> b!4736128 m!5682613))

(declare-fun m!5682615 () Bool)

(assert (=> b!4736128 m!5682615))

(assert (=> b!4735759 d!1511290))

(declare-fun d!1511292 () Bool)

(assert (=> d!1511292 (= (head!10299 oldBucket!34) (h!59300 oldBucket!34))))

(assert (=> b!4735759 d!1511292))

(declare-fun d!1511294 () Bool)

(declare-fun e!2954160 () Bool)

(assert (=> d!1511294 e!2954160))

(declare-fun res!2005789 () Bool)

(assert (=> d!1511294 (=> (not res!2005789) (not e!2954160))))

(declare-fun lt!1899236 () ListMap!5349)

(assert (=> d!1511294 (= res!2005789 (contains!16316 lt!1899236 (_1!30587 lt!1898791)))))

(declare-fun lt!1899235 () List!53049)

(assert (=> d!1511294 (= lt!1899236 (ListMap!5350 lt!1899235))))

(declare-fun lt!1899237 () Unit!132303)

(declare-fun lt!1899238 () Unit!132303)

(assert (=> d!1511294 (= lt!1899237 lt!1899238)))

(assert (=> d!1511294 (= (getValueByKey!2008 lt!1899235 (_1!30587 lt!1898791)) (Some!12437 (_2!30587 lt!1898791)))))

(declare-fun lemmaContainsTupThenGetReturnValue!1106 (List!53049 K!14270 V!14516) Unit!132303)

(assert (=> d!1511294 (= lt!1899238 (lemmaContainsTupThenGetReturnValue!1106 lt!1899235 (_1!30587 lt!1898791) (_2!30587 lt!1898791)))))

(declare-fun insertNoDuplicatedKeys!614 (List!53049 K!14270 V!14516) List!53049)

(assert (=> d!1511294 (= lt!1899235 (insertNoDuplicatedKeys!614 (toList!5985 (addToMapMapFromBucket!1478 lt!1898783 lt!1898798)) (_1!30587 lt!1898791) (_2!30587 lt!1898791)))))

(assert (=> d!1511294 (= (+!2296 (addToMapMapFromBucket!1478 lt!1898783 lt!1898798) lt!1898791) lt!1899236)))

(declare-fun b!4736134 () Bool)

(declare-fun res!2005790 () Bool)

(assert (=> b!4736134 (=> (not res!2005790) (not e!2954160))))

(assert (=> b!4736134 (= res!2005790 (= (getValueByKey!2008 (toList!5985 lt!1899236) (_1!30587 lt!1898791)) (Some!12437 (_2!30587 lt!1898791))))))

(declare-fun b!4736135 () Bool)

(assert (=> b!4736135 (= e!2954160 (contains!16321 (toList!5985 lt!1899236) lt!1898791))))

(assert (= (and d!1511294 res!2005789) b!4736134))

(assert (= (and b!4736134 res!2005790) b!4736135))

(declare-fun m!5682617 () Bool)

(assert (=> d!1511294 m!5682617))

(declare-fun m!5682619 () Bool)

(assert (=> d!1511294 m!5682619))

(declare-fun m!5682621 () Bool)

(assert (=> d!1511294 m!5682621))

(declare-fun m!5682623 () Bool)

(assert (=> d!1511294 m!5682623))

(declare-fun m!5682625 () Bool)

(assert (=> b!4736134 m!5682625))

(declare-fun m!5682627 () Bool)

(assert (=> b!4736135 m!5682627))

(assert (=> b!4735759 d!1511294))

(declare-fun bs!1125144 () Bool)

(declare-fun d!1511296 () Bool)

(assert (= bs!1125144 (and d!1511296 d!1511290)))

(declare-fun lambda!218335 () Int)

(assert (=> bs!1125144 (= lambda!218335 lambda!218334)))

(declare-fun bs!1125145 () Bool)

(assert (= bs!1125145 (and d!1511296 d!1511164)))

(assert (=> bs!1125145 (not (= lambda!218335 lambda!218222))))

(declare-fun bs!1125146 () Bool)

(assert (= bs!1125146 (and d!1511296 d!1511184)))

(assert (=> bs!1125146 (= lambda!218335 lambda!218273)))

(declare-fun bs!1125147 () Bool)

(assert (= bs!1125147 (and d!1511296 start!483016)))

(assert (=> bs!1125147 (= lambda!218335 lambda!218208)))

(declare-fun bs!1125148 () Bool)

(assert (= bs!1125148 (and d!1511296 d!1511180)))

(assert (=> bs!1125148 (= lambda!218335 lambda!218225)))

(declare-fun lt!1899239 () ListMap!5349)

(assert (=> d!1511296 (invariantList!1539 (toList!5985 lt!1899239))))

(declare-fun e!2954161 () ListMap!5349)

(assert (=> d!1511296 (= lt!1899239 e!2954161)))

(declare-fun c!808893 () Bool)

(assert (=> d!1511296 (= c!808893 ((_ is Cons!52926) lt!1898785))))

(assert (=> d!1511296 (forall!11661 lt!1898785 lambda!218335)))

(assert (=> d!1511296 (= (extractMap!2074 lt!1898785) lt!1899239)))

(declare-fun b!4736136 () Bool)

(assert (=> b!4736136 (= e!2954161 (addToMapMapFromBucket!1478 (_2!30588 (h!59301 lt!1898785)) (extractMap!2074 (t!360336 lt!1898785))))))

(declare-fun b!4736137 () Bool)

(assert (=> b!4736137 (= e!2954161 (ListMap!5350 Nil!52925))))

(assert (= (and d!1511296 c!808893) b!4736136))

(assert (= (and d!1511296 (not c!808893)) b!4736137))

(declare-fun m!5682629 () Bool)

(assert (=> d!1511296 m!5682629))

(declare-fun m!5682631 () Bool)

(assert (=> d!1511296 m!5682631))

(declare-fun m!5682633 () Bool)

(assert (=> b!4736136 m!5682633))

(assert (=> b!4736136 m!5682633))

(declare-fun m!5682635 () Bool)

(assert (=> b!4736136 m!5682635))

(assert (=> b!4735759 d!1511296))

(declare-fun bs!1125149 () Bool)

(declare-fun b!4736142 () Bool)

(assert (= bs!1125149 (and b!4736142 b!4736117)))

(declare-fun lambda!218336 () Int)

(assert (=> bs!1125149 (= (= lt!1898798 lt!1899220) (= lambda!218336 lambda!218330))))

(declare-fun bs!1125150 () Bool)

(assert (= bs!1125150 (and b!4736142 d!1511232)))

(assert (=> bs!1125150 (= (= lt!1898798 lt!1899208) (= lambda!218336 lambda!218331))))

(declare-fun bs!1125151 () Bool)

(assert (= bs!1125151 (and b!4736142 b!4736121)))

(assert (=> bs!1125151 (= lambda!218336 lambda!218328)))

(declare-fun bs!1125152 () Bool)

(assert (= bs!1125152 (and b!4736142 d!1511158)))

(assert (=> bs!1125152 (not (= lambda!218336 lambda!218219))))

(assert (=> bs!1125149 (= lambda!218336 lambda!218329)))

(assert (=> b!4736142 true))

(declare-fun bs!1125153 () Bool)

(declare-fun b!4736138 () Bool)

(assert (= bs!1125153 (and b!4736138 d!1511232)))

(declare-fun lambda!218337 () Int)

(assert (=> bs!1125153 (= (= lt!1898798 lt!1899208) (= lambda!218337 lambda!218331))))

(declare-fun bs!1125154 () Bool)

(assert (= bs!1125154 (and b!4736138 b!4736121)))

(assert (=> bs!1125154 (= lambda!218337 lambda!218328)))

(declare-fun bs!1125155 () Bool)

(assert (= bs!1125155 (and b!4736138 b!4736142)))

(assert (=> bs!1125155 (= lambda!218337 lambda!218336)))

(declare-fun bs!1125156 () Bool)

(assert (= bs!1125156 (and b!4736138 b!4736117)))

(assert (=> bs!1125156 (= (= lt!1898798 lt!1899220) (= lambda!218337 lambda!218330))))

(declare-fun bs!1125157 () Bool)

(assert (= bs!1125157 (and b!4736138 d!1511158)))

(assert (=> bs!1125157 (not (= lambda!218337 lambda!218219))))

(assert (=> bs!1125156 (= lambda!218337 lambda!218329)))

(assert (=> b!4736138 true))

(declare-fun lambda!218338 () Int)

(declare-fun lt!1899257 () ListMap!5349)

(assert (=> b!4736138 (= (= lt!1899257 lt!1898798) (= lambda!218338 lambda!218337))))

(assert (=> bs!1125153 (= (= lt!1899257 lt!1899208) (= lambda!218338 lambda!218331))))

(assert (=> bs!1125154 (= (= lt!1899257 lt!1898798) (= lambda!218338 lambda!218328))))

(assert (=> bs!1125155 (= (= lt!1899257 lt!1898798) (= lambda!218338 lambda!218336))))

(assert (=> bs!1125156 (= (= lt!1899257 lt!1899220) (= lambda!218338 lambda!218330))))

(assert (=> bs!1125157 (not (= lambda!218338 lambda!218219))))

(assert (=> bs!1125156 (= (= lt!1899257 lt!1898798) (= lambda!218338 lambda!218329))))

(assert (=> b!4736138 true))

(declare-fun bs!1125158 () Bool)

(declare-fun d!1511298 () Bool)

(assert (= bs!1125158 (and d!1511298 b!4736138)))

(declare-fun lt!1899245 () ListMap!5349)

(declare-fun lambda!218339 () Int)

(assert (=> bs!1125158 (= (= lt!1899245 lt!1898798) (= lambda!218339 lambda!218337))))

(declare-fun bs!1125159 () Bool)

(assert (= bs!1125159 (and d!1511298 d!1511232)))

(assert (=> bs!1125159 (= (= lt!1899245 lt!1899208) (= lambda!218339 lambda!218331))))

(assert (=> bs!1125158 (= (= lt!1899245 lt!1899257) (= lambda!218339 lambda!218338))))

(declare-fun bs!1125160 () Bool)

(assert (= bs!1125160 (and d!1511298 b!4736121)))

(assert (=> bs!1125160 (= (= lt!1899245 lt!1898798) (= lambda!218339 lambda!218328))))

(declare-fun bs!1125161 () Bool)

(assert (= bs!1125161 (and d!1511298 b!4736142)))

(assert (=> bs!1125161 (= (= lt!1899245 lt!1898798) (= lambda!218339 lambda!218336))))

(declare-fun bs!1125162 () Bool)

(assert (= bs!1125162 (and d!1511298 b!4736117)))

(assert (=> bs!1125162 (= (= lt!1899245 lt!1899220) (= lambda!218339 lambda!218330))))

(declare-fun bs!1125163 () Bool)

(assert (= bs!1125163 (and d!1511298 d!1511158)))

(assert (=> bs!1125163 (not (= lambda!218339 lambda!218219))))

(assert (=> bs!1125162 (= (= lt!1899245 lt!1898798) (= lambda!218339 lambda!218329))))

(assert (=> d!1511298 true))

(declare-fun e!2954163 () ListMap!5349)

(assert (=> b!4736138 (= e!2954163 lt!1899257)))

(declare-fun lt!1899260 () ListMap!5349)

(assert (=> b!4736138 (= lt!1899260 (+!2296 lt!1898798 (h!59300 (Cons!52925 lt!1898796 lt!1898795))))))

(assert (=> b!4736138 (= lt!1899257 (addToMapMapFromBucket!1478 (t!360335 (Cons!52925 lt!1898796 lt!1898795)) (+!2296 lt!1898798 (h!59300 (Cons!52925 lt!1898796 lt!1898795)))))))

(declare-fun lt!1899246 () Unit!132303)

(declare-fun call!331317 () Unit!132303)

(assert (=> b!4736138 (= lt!1899246 call!331317)))

(assert (=> b!4736138 (forall!11663 (toList!5985 lt!1898798) lambda!218337)))

(declare-fun lt!1899241 () Unit!132303)

(assert (=> b!4736138 (= lt!1899241 lt!1899246)))

(assert (=> b!4736138 (forall!11663 (toList!5985 lt!1899260) lambda!218338)))

(declare-fun lt!1899244 () Unit!132303)

(declare-fun Unit!132378 () Unit!132303)

(assert (=> b!4736138 (= lt!1899244 Unit!132378)))

(assert (=> b!4736138 (forall!11663 (t!360335 (Cons!52925 lt!1898796 lt!1898795)) lambda!218338)))

(declare-fun lt!1899242 () Unit!132303)

(declare-fun Unit!132379 () Unit!132303)

(assert (=> b!4736138 (= lt!1899242 Unit!132379)))

(declare-fun lt!1899258 () Unit!132303)

(declare-fun Unit!132380 () Unit!132303)

(assert (=> b!4736138 (= lt!1899258 Unit!132380)))

(declare-fun lt!1899256 () Unit!132303)

(assert (=> b!4736138 (= lt!1899256 (forallContained!3703 (toList!5985 lt!1899260) lambda!218338 (h!59300 (Cons!52925 lt!1898796 lt!1898795))))))

(assert (=> b!4736138 (contains!16316 lt!1899260 (_1!30587 (h!59300 (Cons!52925 lt!1898796 lt!1898795))))))

(declare-fun lt!1899255 () Unit!132303)

(declare-fun Unit!132381 () Unit!132303)

(assert (=> b!4736138 (= lt!1899255 Unit!132381)))

(assert (=> b!4736138 (contains!16316 lt!1899257 (_1!30587 (h!59300 (Cons!52925 lt!1898796 lt!1898795))))))

(declare-fun lt!1899247 () Unit!132303)

(declare-fun Unit!132382 () Unit!132303)

(assert (=> b!4736138 (= lt!1899247 Unit!132382)))

(assert (=> b!4736138 (forall!11663 (Cons!52925 lt!1898796 lt!1898795) lambda!218338)))

(declare-fun lt!1899248 () Unit!132303)

(declare-fun Unit!132383 () Unit!132303)

(assert (=> b!4736138 (= lt!1899248 Unit!132383)))

(declare-fun call!331318 () Bool)

(assert (=> b!4736138 call!331318))

(declare-fun lt!1899259 () Unit!132303)

(declare-fun Unit!132384 () Unit!132303)

(assert (=> b!4736138 (= lt!1899259 Unit!132384)))

(declare-fun lt!1899249 () Unit!132303)

(declare-fun Unit!132385 () Unit!132303)

(assert (=> b!4736138 (= lt!1899249 Unit!132385)))

(declare-fun lt!1899252 () Unit!132303)

(assert (=> b!4736138 (= lt!1899252 (addForallContainsKeyThenBeforeAdding!823 lt!1898798 lt!1899257 (_1!30587 (h!59300 (Cons!52925 lt!1898796 lt!1898795))) (_2!30587 (h!59300 (Cons!52925 lt!1898796 lt!1898795)))))))

(assert (=> b!4736138 (forall!11663 (toList!5985 lt!1898798) lambda!218338)))

(declare-fun lt!1899250 () Unit!132303)

(assert (=> b!4736138 (= lt!1899250 lt!1899252)))

(declare-fun call!331319 () Bool)

(assert (=> b!4736138 call!331319))

(declare-fun lt!1899254 () Unit!132303)

(declare-fun Unit!132386 () Unit!132303)

(assert (=> b!4736138 (= lt!1899254 Unit!132386)))

(declare-fun res!2005791 () Bool)

(assert (=> b!4736138 (= res!2005791 (forall!11663 (Cons!52925 lt!1898796 lt!1898795) lambda!218338))))

(declare-fun e!2954162 () Bool)

(assert (=> b!4736138 (=> (not res!2005791) (not e!2954162))))

(assert (=> b!4736138 e!2954162))

(declare-fun lt!1899253 () Unit!132303)

(declare-fun Unit!132387 () Unit!132303)

(assert (=> b!4736138 (= lt!1899253 Unit!132387)))

(declare-fun b!4736139 () Bool)

(assert (=> b!4736139 (= e!2954162 (forall!11663 (toList!5985 lt!1898798) lambda!218338))))

(declare-fun bm!331312 () Bool)

(assert (=> bm!331312 (= call!331317 (lemmaContainsAllItsOwnKeys!824 lt!1898798))))

(declare-fun b!4736140 () Bool)

(declare-fun e!2954164 () Bool)

(assert (=> b!4736140 (= e!2954164 (invariantList!1539 (toList!5985 lt!1899245)))))

(declare-fun bm!331313 () Bool)

(declare-fun c!808894 () Bool)

(assert (=> bm!331313 (= call!331319 (forall!11663 (toList!5985 lt!1898798) (ite c!808894 lambda!218336 lambda!218338)))))

(assert (=> d!1511298 e!2954164))

(declare-fun res!2005792 () Bool)

(assert (=> d!1511298 (=> (not res!2005792) (not e!2954164))))

(assert (=> d!1511298 (= res!2005792 (forall!11663 (Cons!52925 lt!1898796 lt!1898795) lambda!218339))))

(assert (=> d!1511298 (= lt!1899245 e!2954163)))

(assert (=> d!1511298 (= c!808894 ((_ is Nil!52925) (Cons!52925 lt!1898796 lt!1898795)))))

(assert (=> d!1511298 (noDuplicateKeys!2048 (Cons!52925 lt!1898796 lt!1898795))))

(assert (=> d!1511298 (= (addToMapMapFromBucket!1478 (Cons!52925 lt!1898796 lt!1898795) lt!1898798) lt!1899245)))

(declare-fun b!4736141 () Bool)

(declare-fun res!2005793 () Bool)

(assert (=> b!4736141 (=> (not res!2005793) (not e!2954164))))

(assert (=> b!4736141 (= res!2005793 (forall!11663 (toList!5985 lt!1898798) lambda!218339))))

(declare-fun bm!331314 () Bool)

(assert (=> bm!331314 (= call!331318 (forall!11663 (ite c!808894 (toList!5985 lt!1898798) (toList!5985 lt!1899260)) (ite c!808894 lambda!218336 lambda!218338)))))

(assert (=> b!4736142 (= e!2954163 lt!1898798)))

(declare-fun lt!1899243 () Unit!132303)

(assert (=> b!4736142 (= lt!1899243 call!331317)))

(assert (=> b!4736142 call!331318))

(declare-fun lt!1899251 () Unit!132303)

(assert (=> b!4736142 (= lt!1899251 lt!1899243)))

(assert (=> b!4736142 call!331319))

(declare-fun lt!1899240 () Unit!132303)

(declare-fun Unit!132388 () Unit!132303)

(assert (=> b!4736142 (= lt!1899240 Unit!132388)))

(assert (= (and d!1511298 c!808894) b!4736142))

(assert (= (and d!1511298 (not c!808894)) b!4736138))

(assert (= (and b!4736138 res!2005791) b!4736139))

(assert (= (or b!4736142 b!4736138) bm!331312))

(assert (= (or b!4736142 b!4736138) bm!331313))

(assert (= (or b!4736142 b!4736138) bm!331314))

(assert (= (and d!1511298 res!2005792) b!4736141))

(assert (= (and b!4736141 res!2005793) b!4736140))

(declare-fun m!5682637 () Bool)

(assert (=> b!4736141 m!5682637))

(declare-fun m!5682639 () Bool)

(assert (=> b!4736139 m!5682639))

(declare-fun m!5682641 () Bool)

(assert (=> b!4736138 m!5682641))

(declare-fun m!5682643 () Bool)

(assert (=> b!4736138 m!5682643))

(declare-fun m!5682645 () Bool)

(assert (=> b!4736138 m!5682645))

(declare-fun m!5682647 () Bool)

(assert (=> b!4736138 m!5682647))

(declare-fun m!5682649 () Bool)

(assert (=> b!4736138 m!5682649))

(assert (=> b!4736138 m!5682639))

(declare-fun m!5682651 () Bool)

(assert (=> b!4736138 m!5682651))

(declare-fun m!5682653 () Bool)

(assert (=> b!4736138 m!5682653))

(declare-fun m!5682655 () Bool)

(assert (=> b!4736138 m!5682655))

(assert (=> b!4736138 m!5682645))

(declare-fun m!5682657 () Bool)

(assert (=> b!4736138 m!5682657))

(declare-fun m!5682659 () Bool)

(assert (=> b!4736138 m!5682659))

(assert (=> b!4736138 m!5682649))

(declare-fun m!5682661 () Bool)

(assert (=> bm!331313 m!5682661))

(declare-fun m!5682663 () Bool)

(assert (=> b!4736140 m!5682663))

(declare-fun m!5682665 () Bool)

(assert (=> d!1511298 m!5682665))

(declare-fun m!5682667 () Bool)

(assert (=> d!1511298 m!5682667))

(assert (=> bm!331312 m!5682597))

(declare-fun m!5682669 () Bool)

(assert (=> bm!331314 m!5682669))

(assert (=> b!4735759 d!1511298))

(declare-fun bs!1125164 () Bool)

(declare-fun d!1511300 () Bool)

(assert (= bs!1125164 (and d!1511300 d!1511290)))

(declare-fun lambda!218342 () Int)

(assert (=> bs!1125164 (= lambda!218342 lambda!218334)))

(declare-fun bs!1125165 () Bool)

(assert (= bs!1125165 (and d!1511300 d!1511296)))

(assert (=> bs!1125165 (= lambda!218342 lambda!218335)))

(declare-fun bs!1125166 () Bool)

(assert (= bs!1125166 (and d!1511300 d!1511164)))

(assert (=> bs!1125166 (not (= lambda!218342 lambda!218222))))

(declare-fun bs!1125167 () Bool)

(assert (= bs!1125167 (and d!1511300 d!1511184)))

(assert (=> bs!1125167 (= lambda!218342 lambda!218273)))

(declare-fun bs!1125168 () Bool)

(assert (= bs!1125168 (and d!1511300 start!483016)))

(assert (=> bs!1125168 (= lambda!218342 lambda!218208)))

(declare-fun bs!1125169 () Bool)

(assert (= bs!1125169 (and d!1511300 d!1511180)))

(assert (=> bs!1125169 (= lambda!218342 lambda!218225)))

(assert (=> d!1511300 (contains!16316 (extractMap!2074 (toList!5986 (ListLongMap!4516 lt!1898785))) key!4653)))

(declare-fun lt!1899263 () Unit!132303)

(declare-fun choose!33568 (ListLongMap!4515 K!14270 Hashable!6417) Unit!132303)

(assert (=> d!1511300 (= lt!1899263 (choose!33568 (ListLongMap!4516 lt!1898785) key!4653 hashF!1323))))

(assert (=> d!1511300 (forall!11661 (toList!5986 (ListLongMap!4516 lt!1898785)) lambda!218342)))

(assert (=> d!1511300 (= (lemmaListContainsThenExtractedMapContains!556 (ListLongMap!4516 lt!1898785) key!4653 hashF!1323) lt!1899263)))

(declare-fun bs!1125170 () Bool)

(assert (= bs!1125170 d!1511300))

(declare-fun m!5682671 () Bool)

(assert (=> bs!1125170 m!5682671))

(assert (=> bs!1125170 m!5682671))

(declare-fun m!5682673 () Bool)

(assert (=> bs!1125170 m!5682673))

(declare-fun m!5682675 () Bool)

(assert (=> bs!1125170 m!5682675))

(declare-fun m!5682677 () Bool)

(assert (=> bs!1125170 m!5682677))

(assert (=> b!4735759 d!1511300))

(declare-fun d!1511302 () Bool)

(declare-fun e!2954165 () Bool)

(assert (=> d!1511302 e!2954165))

(declare-fun res!2005794 () Bool)

(assert (=> d!1511302 (=> (not res!2005794) (not e!2954165))))

(declare-fun lt!1899265 () ListMap!5349)

(assert (=> d!1511302 (= res!2005794 (contains!16316 lt!1899265 (_1!30587 lt!1898796)))))

(declare-fun lt!1899264 () List!53049)

(assert (=> d!1511302 (= lt!1899265 (ListMap!5350 lt!1899264))))

(declare-fun lt!1899266 () Unit!132303)

(declare-fun lt!1899267 () Unit!132303)

(assert (=> d!1511302 (= lt!1899266 lt!1899267)))

(assert (=> d!1511302 (= (getValueByKey!2008 lt!1899264 (_1!30587 lt!1898796)) (Some!12437 (_2!30587 lt!1898796)))))

(assert (=> d!1511302 (= lt!1899267 (lemmaContainsTupThenGetReturnValue!1106 lt!1899264 (_1!30587 lt!1898796) (_2!30587 lt!1898796)))))

(assert (=> d!1511302 (= lt!1899264 (insertNoDuplicatedKeys!614 (toList!5985 (addToMapMapFromBucket!1478 lt!1898795 lt!1898798)) (_1!30587 lt!1898796) (_2!30587 lt!1898796)))))

(assert (=> d!1511302 (= (+!2296 (addToMapMapFromBucket!1478 lt!1898795 lt!1898798) lt!1898796) lt!1899265)))

(declare-fun b!4736143 () Bool)

(declare-fun res!2005795 () Bool)

(assert (=> b!4736143 (=> (not res!2005795) (not e!2954165))))

(assert (=> b!4736143 (= res!2005795 (= (getValueByKey!2008 (toList!5985 lt!1899265) (_1!30587 lt!1898796)) (Some!12437 (_2!30587 lt!1898796))))))

(declare-fun b!4736144 () Bool)

(assert (=> b!4736144 (= e!2954165 (contains!16321 (toList!5985 lt!1899265) lt!1898796))))

(assert (= (and d!1511302 res!2005794) b!4736143))

(assert (= (and b!4736143 res!2005795) b!4736144))

(declare-fun m!5682679 () Bool)

(assert (=> d!1511302 m!5682679))

(declare-fun m!5682681 () Bool)

(assert (=> d!1511302 m!5682681))

(declare-fun m!5682683 () Bool)

(assert (=> d!1511302 m!5682683))

(declare-fun m!5682685 () Bool)

(assert (=> d!1511302 m!5682685))

(declare-fun m!5682687 () Bool)

(assert (=> b!4736143 m!5682687))

(declare-fun m!5682689 () Bool)

(assert (=> b!4736144 m!5682689))

(assert (=> b!4735759 d!1511302))

(declare-fun bs!1125171 () Bool)

(declare-fun b!4736149 () Bool)

(assert (= bs!1125171 (and b!4736149 d!1511298)))

(declare-fun lambda!218343 () Int)

(assert (=> bs!1125171 (= (= lt!1898798 lt!1899245) (= lambda!218343 lambda!218339))))

(declare-fun bs!1125172 () Bool)

(assert (= bs!1125172 (and b!4736149 b!4736138)))

(assert (=> bs!1125172 (= lambda!218343 lambda!218337)))

(declare-fun bs!1125173 () Bool)

(assert (= bs!1125173 (and b!4736149 d!1511232)))

(assert (=> bs!1125173 (= (= lt!1898798 lt!1899208) (= lambda!218343 lambda!218331))))

(assert (=> bs!1125172 (= (= lt!1898798 lt!1899257) (= lambda!218343 lambda!218338))))

(declare-fun bs!1125174 () Bool)

(assert (= bs!1125174 (and b!4736149 b!4736121)))

(assert (=> bs!1125174 (= lambda!218343 lambda!218328)))

(declare-fun bs!1125175 () Bool)

(assert (= bs!1125175 (and b!4736149 b!4736142)))

(assert (=> bs!1125175 (= lambda!218343 lambda!218336)))

(declare-fun bs!1125176 () Bool)

(assert (= bs!1125176 (and b!4736149 b!4736117)))

(assert (=> bs!1125176 (= (= lt!1898798 lt!1899220) (= lambda!218343 lambda!218330))))

(declare-fun bs!1125177 () Bool)

(assert (= bs!1125177 (and b!4736149 d!1511158)))

(assert (=> bs!1125177 (not (= lambda!218343 lambda!218219))))

(assert (=> bs!1125176 (= lambda!218343 lambda!218329)))

(assert (=> b!4736149 true))

(declare-fun bs!1125178 () Bool)

(declare-fun b!4736145 () Bool)

(assert (= bs!1125178 (and b!4736145 d!1511298)))

(declare-fun lambda!218344 () Int)

(assert (=> bs!1125178 (= (= lt!1898798 lt!1899245) (= lambda!218344 lambda!218339))))

(declare-fun bs!1125179 () Bool)

(assert (= bs!1125179 (and b!4736145 b!4736138)))

(assert (=> bs!1125179 (= lambda!218344 lambda!218337)))

(declare-fun bs!1125180 () Bool)

(assert (= bs!1125180 (and b!4736145 b!4736149)))

(assert (=> bs!1125180 (= lambda!218344 lambda!218343)))

(declare-fun bs!1125181 () Bool)

(assert (= bs!1125181 (and b!4736145 d!1511232)))

(assert (=> bs!1125181 (= (= lt!1898798 lt!1899208) (= lambda!218344 lambda!218331))))

(assert (=> bs!1125179 (= (= lt!1898798 lt!1899257) (= lambda!218344 lambda!218338))))

(declare-fun bs!1125182 () Bool)

(assert (= bs!1125182 (and b!4736145 b!4736121)))

(assert (=> bs!1125182 (= lambda!218344 lambda!218328)))

(declare-fun bs!1125183 () Bool)

(assert (= bs!1125183 (and b!4736145 b!4736142)))

(assert (=> bs!1125183 (= lambda!218344 lambda!218336)))

(declare-fun bs!1125184 () Bool)

(assert (= bs!1125184 (and b!4736145 b!4736117)))

(assert (=> bs!1125184 (= (= lt!1898798 lt!1899220) (= lambda!218344 lambda!218330))))

(declare-fun bs!1125185 () Bool)

(assert (= bs!1125185 (and b!4736145 d!1511158)))

(assert (=> bs!1125185 (not (= lambda!218344 lambda!218219))))

(assert (=> bs!1125184 (= lambda!218344 lambda!218329)))

(assert (=> b!4736145 true))

(declare-fun lt!1899285 () ListMap!5349)

(declare-fun lambda!218345 () Int)

(assert (=> bs!1125179 (= (= lt!1899285 lt!1898798) (= lambda!218345 lambda!218337))))

(assert (=> bs!1125180 (= (= lt!1899285 lt!1898798) (= lambda!218345 lambda!218343))))

(assert (=> bs!1125181 (= (= lt!1899285 lt!1899208) (= lambda!218345 lambda!218331))))

(assert (=> bs!1125179 (= (= lt!1899285 lt!1899257) (= lambda!218345 lambda!218338))))

(assert (=> bs!1125182 (= (= lt!1899285 lt!1898798) (= lambda!218345 lambda!218328))))

(assert (=> b!4736145 (= (= lt!1899285 lt!1898798) (= lambda!218345 lambda!218344))))

(assert (=> bs!1125178 (= (= lt!1899285 lt!1899245) (= lambda!218345 lambda!218339))))

(assert (=> bs!1125183 (= (= lt!1899285 lt!1898798) (= lambda!218345 lambda!218336))))

(assert (=> bs!1125184 (= (= lt!1899285 lt!1899220) (= lambda!218345 lambda!218330))))

(assert (=> bs!1125185 (not (= lambda!218345 lambda!218219))))

(assert (=> bs!1125184 (= (= lt!1899285 lt!1898798) (= lambda!218345 lambda!218329))))

(assert (=> b!4736145 true))

(declare-fun bs!1125186 () Bool)

(declare-fun d!1511304 () Bool)

(assert (= bs!1125186 (and d!1511304 b!4736138)))

(declare-fun lt!1899273 () ListMap!5349)

(declare-fun lambda!218346 () Int)

(assert (=> bs!1125186 (= (= lt!1899273 lt!1898798) (= lambda!218346 lambda!218337))))

(declare-fun bs!1125187 () Bool)

(assert (= bs!1125187 (and d!1511304 b!4736149)))

(assert (=> bs!1125187 (= (= lt!1899273 lt!1898798) (= lambda!218346 lambda!218343))))

(declare-fun bs!1125188 () Bool)

(assert (= bs!1125188 (and d!1511304 d!1511232)))

(assert (=> bs!1125188 (= (= lt!1899273 lt!1899208) (= lambda!218346 lambda!218331))))

(declare-fun bs!1125189 () Bool)

(assert (= bs!1125189 (and d!1511304 b!4736121)))

(assert (=> bs!1125189 (= (= lt!1899273 lt!1898798) (= lambda!218346 lambda!218328))))

(declare-fun bs!1125190 () Bool)

(assert (= bs!1125190 (and d!1511304 b!4736145)))

(assert (=> bs!1125190 (= (= lt!1899273 lt!1898798) (= lambda!218346 lambda!218344))))

(declare-fun bs!1125191 () Bool)

(assert (= bs!1125191 (and d!1511304 d!1511298)))

(assert (=> bs!1125191 (= (= lt!1899273 lt!1899245) (= lambda!218346 lambda!218339))))

(declare-fun bs!1125192 () Bool)

(assert (= bs!1125192 (and d!1511304 b!4736142)))

(assert (=> bs!1125192 (= (= lt!1899273 lt!1898798) (= lambda!218346 lambda!218336))))

(declare-fun bs!1125193 () Bool)

(assert (= bs!1125193 (and d!1511304 b!4736117)))

(assert (=> bs!1125193 (= (= lt!1899273 lt!1899220) (= lambda!218346 lambda!218330))))

(declare-fun bs!1125194 () Bool)

(assert (= bs!1125194 (and d!1511304 d!1511158)))

(assert (=> bs!1125194 (not (= lambda!218346 lambda!218219))))

(assert (=> bs!1125193 (= (= lt!1899273 lt!1898798) (= lambda!218346 lambda!218329))))

(assert (=> bs!1125186 (= (= lt!1899273 lt!1899257) (= lambda!218346 lambda!218338))))

(assert (=> bs!1125190 (= (= lt!1899273 lt!1899285) (= lambda!218346 lambda!218345))))

(assert (=> d!1511304 true))

(declare-fun e!2954167 () ListMap!5349)

(assert (=> b!4736145 (= e!2954167 lt!1899285)))

(declare-fun lt!1899288 () ListMap!5349)

(assert (=> b!4736145 (= lt!1899288 (+!2296 lt!1898798 (h!59300 lt!1898783)))))

(assert (=> b!4736145 (= lt!1899285 (addToMapMapFromBucket!1478 (t!360335 lt!1898783) (+!2296 lt!1898798 (h!59300 lt!1898783))))))

(declare-fun lt!1899274 () Unit!132303)

(declare-fun call!331320 () Unit!132303)

(assert (=> b!4736145 (= lt!1899274 call!331320)))

(assert (=> b!4736145 (forall!11663 (toList!5985 lt!1898798) lambda!218344)))

(declare-fun lt!1899269 () Unit!132303)

(assert (=> b!4736145 (= lt!1899269 lt!1899274)))

(assert (=> b!4736145 (forall!11663 (toList!5985 lt!1899288) lambda!218345)))

(declare-fun lt!1899272 () Unit!132303)

(declare-fun Unit!132389 () Unit!132303)

(assert (=> b!4736145 (= lt!1899272 Unit!132389)))

(assert (=> b!4736145 (forall!11663 (t!360335 lt!1898783) lambda!218345)))

(declare-fun lt!1899270 () Unit!132303)

(declare-fun Unit!132390 () Unit!132303)

(assert (=> b!4736145 (= lt!1899270 Unit!132390)))

(declare-fun lt!1899286 () Unit!132303)

(declare-fun Unit!132391 () Unit!132303)

(assert (=> b!4736145 (= lt!1899286 Unit!132391)))

(declare-fun lt!1899284 () Unit!132303)

(assert (=> b!4736145 (= lt!1899284 (forallContained!3703 (toList!5985 lt!1899288) lambda!218345 (h!59300 lt!1898783)))))

(assert (=> b!4736145 (contains!16316 lt!1899288 (_1!30587 (h!59300 lt!1898783)))))

(declare-fun lt!1899283 () Unit!132303)

(declare-fun Unit!132392 () Unit!132303)

(assert (=> b!4736145 (= lt!1899283 Unit!132392)))

(assert (=> b!4736145 (contains!16316 lt!1899285 (_1!30587 (h!59300 lt!1898783)))))

(declare-fun lt!1899275 () Unit!132303)

(declare-fun Unit!132393 () Unit!132303)

(assert (=> b!4736145 (= lt!1899275 Unit!132393)))

(assert (=> b!4736145 (forall!11663 lt!1898783 lambda!218345)))

(declare-fun lt!1899276 () Unit!132303)

(declare-fun Unit!132394 () Unit!132303)

(assert (=> b!4736145 (= lt!1899276 Unit!132394)))

(declare-fun call!331321 () Bool)

(assert (=> b!4736145 call!331321))

(declare-fun lt!1899287 () Unit!132303)

(declare-fun Unit!132395 () Unit!132303)

(assert (=> b!4736145 (= lt!1899287 Unit!132395)))

(declare-fun lt!1899277 () Unit!132303)

(declare-fun Unit!132396 () Unit!132303)

(assert (=> b!4736145 (= lt!1899277 Unit!132396)))

(declare-fun lt!1899280 () Unit!132303)

(assert (=> b!4736145 (= lt!1899280 (addForallContainsKeyThenBeforeAdding!823 lt!1898798 lt!1899285 (_1!30587 (h!59300 lt!1898783)) (_2!30587 (h!59300 lt!1898783))))))

(assert (=> b!4736145 (forall!11663 (toList!5985 lt!1898798) lambda!218345)))

(declare-fun lt!1899278 () Unit!132303)

(assert (=> b!4736145 (= lt!1899278 lt!1899280)))

(declare-fun call!331322 () Bool)

(assert (=> b!4736145 call!331322))

(declare-fun lt!1899282 () Unit!132303)

(declare-fun Unit!132397 () Unit!132303)

(assert (=> b!4736145 (= lt!1899282 Unit!132397)))

(declare-fun res!2005796 () Bool)

(assert (=> b!4736145 (= res!2005796 (forall!11663 lt!1898783 lambda!218345))))

(declare-fun e!2954166 () Bool)

(assert (=> b!4736145 (=> (not res!2005796) (not e!2954166))))

(assert (=> b!4736145 e!2954166))

(declare-fun lt!1899281 () Unit!132303)

(declare-fun Unit!132398 () Unit!132303)

(assert (=> b!4736145 (= lt!1899281 Unit!132398)))

(declare-fun b!4736146 () Bool)

(assert (=> b!4736146 (= e!2954166 (forall!11663 (toList!5985 lt!1898798) lambda!218345))))

(declare-fun bm!331315 () Bool)

(assert (=> bm!331315 (= call!331320 (lemmaContainsAllItsOwnKeys!824 lt!1898798))))

(declare-fun b!4736147 () Bool)

(declare-fun e!2954168 () Bool)

(assert (=> b!4736147 (= e!2954168 (invariantList!1539 (toList!5985 lt!1899273)))))

(declare-fun bm!331316 () Bool)

(declare-fun c!808895 () Bool)

(assert (=> bm!331316 (= call!331322 (forall!11663 (toList!5985 lt!1898798) (ite c!808895 lambda!218343 lambda!218345)))))

(assert (=> d!1511304 e!2954168))

(declare-fun res!2005797 () Bool)

(assert (=> d!1511304 (=> (not res!2005797) (not e!2954168))))

(assert (=> d!1511304 (= res!2005797 (forall!11663 lt!1898783 lambda!218346))))

(assert (=> d!1511304 (= lt!1899273 e!2954167)))

(assert (=> d!1511304 (= c!808895 ((_ is Nil!52925) lt!1898783))))

(assert (=> d!1511304 (noDuplicateKeys!2048 lt!1898783)))

(assert (=> d!1511304 (= (addToMapMapFromBucket!1478 lt!1898783 lt!1898798) lt!1899273)))

(declare-fun b!4736148 () Bool)

(declare-fun res!2005798 () Bool)

(assert (=> b!4736148 (=> (not res!2005798) (not e!2954168))))

(assert (=> b!4736148 (= res!2005798 (forall!11663 (toList!5985 lt!1898798) lambda!218346))))

(declare-fun bm!331317 () Bool)

(assert (=> bm!331317 (= call!331321 (forall!11663 (ite c!808895 (toList!5985 lt!1898798) (toList!5985 lt!1899288)) (ite c!808895 lambda!218343 lambda!218345)))))

(assert (=> b!4736149 (= e!2954167 lt!1898798)))

(declare-fun lt!1899271 () Unit!132303)

(assert (=> b!4736149 (= lt!1899271 call!331320)))

(assert (=> b!4736149 call!331321))

(declare-fun lt!1899279 () Unit!132303)

(assert (=> b!4736149 (= lt!1899279 lt!1899271)))

(assert (=> b!4736149 call!331322))

(declare-fun lt!1899268 () Unit!132303)

(declare-fun Unit!132400 () Unit!132303)

(assert (=> b!4736149 (= lt!1899268 Unit!132400)))

(assert (= (and d!1511304 c!808895) b!4736149))

(assert (= (and d!1511304 (not c!808895)) b!4736145))

(assert (= (and b!4736145 res!2005796) b!4736146))

(assert (= (or b!4736149 b!4736145) bm!331315))

(assert (= (or b!4736149 b!4736145) bm!331316))

(assert (= (or b!4736149 b!4736145) bm!331317))

(assert (= (and d!1511304 res!2005797) b!4736148))

(assert (= (and b!4736148 res!2005798) b!4736147))

(declare-fun m!5682691 () Bool)

(assert (=> b!4736148 m!5682691))

(declare-fun m!5682693 () Bool)

(assert (=> b!4736146 m!5682693))

(declare-fun m!5682695 () Bool)

(assert (=> b!4736145 m!5682695))

(declare-fun m!5682697 () Bool)

(assert (=> b!4736145 m!5682697))

(declare-fun m!5682699 () Bool)

(assert (=> b!4736145 m!5682699))

(declare-fun m!5682701 () Bool)

(assert (=> b!4736145 m!5682701))

(declare-fun m!5682703 () Bool)

(assert (=> b!4736145 m!5682703))

(assert (=> b!4736145 m!5682693))

(declare-fun m!5682705 () Bool)

(assert (=> b!4736145 m!5682705))

(declare-fun m!5682707 () Bool)

(assert (=> b!4736145 m!5682707))

(declare-fun m!5682709 () Bool)

(assert (=> b!4736145 m!5682709))

(assert (=> b!4736145 m!5682699))

(declare-fun m!5682711 () Bool)

(assert (=> b!4736145 m!5682711))

(declare-fun m!5682713 () Bool)

(assert (=> b!4736145 m!5682713))

(assert (=> b!4736145 m!5682703))

(declare-fun m!5682715 () Bool)

(assert (=> bm!331316 m!5682715))

(declare-fun m!5682717 () Bool)

(assert (=> b!4736147 m!5682717))

(declare-fun m!5682719 () Bool)

(assert (=> d!1511304 m!5682719))

(declare-fun m!5682721 () Bool)

(assert (=> d!1511304 m!5682721))

(assert (=> bm!331315 m!5682597))

(declare-fun m!5682723 () Bool)

(assert (=> bm!331317 m!5682723))

(assert (=> b!4735759 d!1511304))

(declare-fun d!1511306 () Bool)

(assert (=> d!1511306 (eq!1145 (addToMapMapFromBucket!1478 (Cons!52925 lt!1898791 lt!1898783) lt!1898798) (+!2296 (addToMapMapFromBucket!1478 lt!1898783 lt!1898798) lt!1898791))))

(declare-fun lt!1899291 () Unit!132303)

(declare-fun choose!33572 (tuple2!54586 List!53049 ListMap!5349) Unit!132303)

(assert (=> d!1511306 (= lt!1899291 (choose!33572 lt!1898791 lt!1898783 lt!1898798))))

(assert (=> d!1511306 (noDuplicateKeys!2048 lt!1898783)))

(assert (=> d!1511306 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!394 lt!1898791 lt!1898783 lt!1898798) lt!1899291)))

(declare-fun bs!1125195 () Bool)

(assert (= bs!1125195 d!1511306))

(assert (=> bs!1125195 m!5681925))

(assert (=> bs!1125195 m!5681945))

(assert (=> bs!1125195 m!5681927))

(assert (=> bs!1125195 m!5681955))

(assert (=> bs!1125195 m!5682721))

(declare-fun m!5682725 () Bool)

(assert (=> bs!1125195 m!5682725))

(assert (=> bs!1125195 m!5681945))

(assert (=> bs!1125195 m!5681925))

(assert (=> bs!1125195 m!5681927))

(assert (=> b!4735759 d!1511306))

(declare-fun d!1511308 () Bool)

(assert (=> d!1511308 (= (eq!1145 lt!1898802 (+!2296 lt!1898790 (h!59300 oldBucket!34))) (= (content!9450 (toList!5985 lt!1898802)) (content!9450 (toList!5985 (+!2296 lt!1898790 (h!59300 oldBucket!34))))))))

(declare-fun bs!1125196 () Bool)

(assert (= bs!1125196 d!1511308))

(declare-fun m!5682727 () Bool)

(assert (=> bs!1125196 m!5682727))

(declare-fun m!5682729 () Bool)

(assert (=> bs!1125196 m!5682729))

(assert (=> b!4735759 d!1511308))

(declare-fun bs!1125197 () Bool)

(declare-fun d!1511310 () Bool)

(assert (= bs!1125197 (and d!1511310 d!1511290)))

(declare-fun lambda!218347 () Int)

(assert (=> bs!1125197 (= lambda!218347 lambda!218334)))

(declare-fun bs!1125198 () Bool)

(assert (= bs!1125198 (and d!1511310 d!1511296)))

(assert (=> bs!1125198 (= lambda!218347 lambda!218335)))

(declare-fun bs!1125199 () Bool)

(assert (= bs!1125199 (and d!1511310 d!1511300)))

(assert (=> bs!1125199 (= lambda!218347 lambda!218342)))

(declare-fun bs!1125200 () Bool)

(assert (= bs!1125200 (and d!1511310 d!1511164)))

(assert (=> bs!1125200 (not (= lambda!218347 lambda!218222))))

(declare-fun bs!1125201 () Bool)

(assert (= bs!1125201 (and d!1511310 d!1511184)))

(assert (=> bs!1125201 (= lambda!218347 lambda!218273)))

(declare-fun bs!1125202 () Bool)

(assert (= bs!1125202 (and d!1511310 start!483016)))

(assert (=> bs!1125202 (= lambda!218347 lambda!218208)))

(declare-fun bs!1125203 () Bool)

(assert (= bs!1125203 (and d!1511310 d!1511180)))

(assert (=> bs!1125203 (= lambda!218347 lambda!218225)))

(declare-fun lt!1899292 () ListMap!5349)

(assert (=> d!1511310 (invariantList!1539 (toList!5985 lt!1899292))))

(declare-fun e!2954169 () ListMap!5349)

(assert (=> d!1511310 (= lt!1899292 e!2954169)))

(declare-fun c!808896 () Bool)

(assert (=> d!1511310 (= c!808896 ((_ is Cons!52926) (Cons!52926 lt!1898789 (t!360336 (toList!5986 lm!2023)))))))

(assert (=> d!1511310 (forall!11661 (Cons!52926 lt!1898789 (t!360336 (toList!5986 lm!2023))) lambda!218347)))

(assert (=> d!1511310 (= (extractMap!2074 (Cons!52926 lt!1898789 (t!360336 (toList!5986 lm!2023)))) lt!1899292)))

(declare-fun b!4736150 () Bool)

(assert (=> b!4736150 (= e!2954169 (addToMapMapFromBucket!1478 (_2!30588 (h!59301 (Cons!52926 lt!1898789 (t!360336 (toList!5986 lm!2023))))) (extractMap!2074 (t!360336 (Cons!52926 lt!1898789 (t!360336 (toList!5986 lm!2023)))))))))

(declare-fun b!4736151 () Bool)

(assert (=> b!4736151 (= e!2954169 (ListMap!5350 Nil!52925))))

(assert (= (and d!1511310 c!808896) b!4736150))

(assert (= (and d!1511310 (not c!808896)) b!4736151))

(declare-fun m!5682731 () Bool)

(assert (=> d!1511310 m!5682731))

(declare-fun m!5682733 () Bool)

(assert (=> d!1511310 m!5682733))

(declare-fun m!5682735 () Bool)

(assert (=> b!4736150 m!5682735))

(assert (=> b!4736150 m!5682735))

(declare-fun m!5682737 () Bool)

(assert (=> b!4736150 m!5682737))

(assert (=> b!4735759 d!1511310))

(declare-fun d!1511312 () Bool)

(assert (=> d!1511312 (= (head!10299 newBucket!218) (h!59300 newBucket!218))))

(assert (=> b!4735759 d!1511312))

(declare-fun bs!1125204 () Bool)

(declare-fun b!4736156 () Bool)

(assert (= bs!1125204 (and b!4736156 b!4736138)))

(declare-fun lambda!218348 () Int)

(assert (=> bs!1125204 (= lambda!218348 lambda!218337)))

(declare-fun bs!1125205 () Bool)

(assert (= bs!1125205 (and b!4736156 b!4736149)))

(assert (=> bs!1125205 (= lambda!218348 lambda!218343)))

(declare-fun bs!1125206 () Bool)

(assert (= bs!1125206 (and b!4736156 d!1511232)))

(assert (=> bs!1125206 (= (= lt!1898798 lt!1899208) (= lambda!218348 lambda!218331))))

(declare-fun bs!1125207 () Bool)

(assert (= bs!1125207 (and b!4736156 d!1511304)))

(assert (=> bs!1125207 (= (= lt!1898798 lt!1899273) (= lambda!218348 lambda!218346))))

(declare-fun bs!1125208 () Bool)

(assert (= bs!1125208 (and b!4736156 b!4736121)))

(assert (=> bs!1125208 (= lambda!218348 lambda!218328)))

(declare-fun bs!1125209 () Bool)

(assert (= bs!1125209 (and b!4736156 b!4736145)))

(assert (=> bs!1125209 (= lambda!218348 lambda!218344)))

(declare-fun bs!1125210 () Bool)

(assert (= bs!1125210 (and b!4736156 d!1511298)))

(assert (=> bs!1125210 (= (= lt!1898798 lt!1899245) (= lambda!218348 lambda!218339))))

(declare-fun bs!1125211 () Bool)

(assert (= bs!1125211 (and b!4736156 b!4736142)))

(assert (=> bs!1125211 (= lambda!218348 lambda!218336)))

(declare-fun bs!1125212 () Bool)

(assert (= bs!1125212 (and b!4736156 b!4736117)))

(assert (=> bs!1125212 (= (= lt!1898798 lt!1899220) (= lambda!218348 lambda!218330))))

(declare-fun bs!1125213 () Bool)

(assert (= bs!1125213 (and b!4736156 d!1511158)))

(assert (=> bs!1125213 (not (= lambda!218348 lambda!218219))))

(assert (=> bs!1125212 (= lambda!218348 lambda!218329)))

(assert (=> bs!1125204 (= (= lt!1898798 lt!1899257) (= lambda!218348 lambda!218338))))

(assert (=> bs!1125209 (= (= lt!1898798 lt!1899285) (= lambda!218348 lambda!218345))))

(assert (=> b!4736156 true))

(declare-fun bs!1125214 () Bool)

(declare-fun b!4736152 () Bool)

(assert (= bs!1125214 (and b!4736152 b!4736138)))

(declare-fun lambda!218349 () Int)

(assert (=> bs!1125214 (= lambda!218349 lambda!218337)))

(declare-fun bs!1125215 () Bool)

(assert (= bs!1125215 (and b!4736152 b!4736149)))

(assert (=> bs!1125215 (= lambda!218349 lambda!218343)))

(declare-fun bs!1125216 () Bool)

(assert (= bs!1125216 (and b!4736152 b!4736156)))

(assert (=> bs!1125216 (= lambda!218349 lambda!218348)))

(declare-fun bs!1125217 () Bool)

(assert (= bs!1125217 (and b!4736152 d!1511232)))

(assert (=> bs!1125217 (= (= lt!1898798 lt!1899208) (= lambda!218349 lambda!218331))))

(declare-fun bs!1125218 () Bool)

(assert (= bs!1125218 (and b!4736152 d!1511304)))

(assert (=> bs!1125218 (= (= lt!1898798 lt!1899273) (= lambda!218349 lambda!218346))))

(declare-fun bs!1125219 () Bool)

(assert (= bs!1125219 (and b!4736152 b!4736121)))

(assert (=> bs!1125219 (= lambda!218349 lambda!218328)))

(declare-fun bs!1125220 () Bool)

(assert (= bs!1125220 (and b!4736152 b!4736145)))

(assert (=> bs!1125220 (= lambda!218349 lambda!218344)))

(declare-fun bs!1125221 () Bool)

(assert (= bs!1125221 (and b!4736152 d!1511298)))

(assert (=> bs!1125221 (= (= lt!1898798 lt!1899245) (= lambda!218349 lambda!218339))))

(declare-fun bs!1125222 () Bool)

(assert (= bs!1125222 (and b!4736152 b!4736142)))

(assert (=> bs!1125222 (= lambda!218349 lambda!218336)))

(declare-fun bs!1125223 () Bool)

(assert (= bs!1125223 (and b!4736152 b!4736117)))

(assert (=> bs!1125223 (= (= lt!1898798 lt!1899220) (= lambda!218349 lambda!218330))))

(declare-fun bs!1125224 () Bool)

(assert (= bs!1125224 (and b!4736152 d!1511158)))

(assert (=> bs!1125224 (not (= lambda!218349 lambda!218219))))

(assert (=> bs!1125223 (= lambda!218349 lambda!218329)))

(assert (=> bs!1125214 (= (= lt!1898798 lt!1899257) (= lambda!218349 lambda!218338))))

(assert (=> bs!1125220 (= (= lt!1898798 lt!1899285) (= lambda!218349 lambda!218345))))

(assert (=> b!4736152 true))

(declare-fun lt!1899310 () ListMap!5349)

(declare-fun lambda!218350 () Int)

(assert (=> bs!1125214 (= (= lt!1899310 lt!1898798) (= lambda!218350 lambda!218337))))

(assert (=> bs!1125215 (= (= lt!1899310 lt!1898798) (= lambda!218350 lambda!218343))))

(assert (=> bs!1125216 (= (= lt!1899310 lt!1898798) (= lambda!218350 lambda!218348))))

(assert (=> bs!1125218 (= (= lt!1899310 lt!1899273) (= lambda!218350 lambda!218346))))

(assert (=> bs!1125219 (= (= lt!1899310 lt!1898798) (= lambda!218350 lambda!218328))))

(assert (=> bs!1125220 (= (= lt!1899310 lt!1898798) (= lambda!218350 lambda!218344))))

(assert (=> bs!1125221 (= (= lt!1899310 lt!1899245) (= lambda!218350 lambda!218339))))

(assert (=> bs!1125222 (= (= lt!1899310 lt!1898798) (= lambda!218350 lambda!218336))))

(assert (=> bs!1125223 (= (= lt!1899310 lt!1899220) (= lambda!218350 lambda!218330))))

(assert (=> bs!1125224 (not (= lambda!218350 lambda!218219))))

(assert (=> bs!1125223 (= (= lt!1899310 lt!1898798) (= lambda!218350 lambda!218329))))

(assert (=> bs!1125217 (= (= lt!1899310 lt!1899208) (= lambda!218350 lambda!218331))))

(assert (=> b!4736152 (= (= lt!1899310 lt!1898798) (= lambda!218350 lambda!218349))))

(assert (=> bs!1125214 (= (= lt!1899310 lt!1899257) (= lambda!218350 lambda!218338))))

(assert (=> bs!1125220 (= (= lt!1899310 lt!1899285) (= lambda!218350 lambda!218345))))

(assert (=> b!4736152 true))

(declare-fun bs!1125225 () Bool)

(declare-fun d!1511314 () Bool)

(assert (= bs!1125225 (and d!1511314 b!4736138)))

(declare-fun lambda!218351 () Int)

(declare-fun lt!1899298 () ListMap!5349)

(assert (=> bs!1125225 (= (= lt!1899298 lt!1898798) (= lambda!218351 lambda!218337))))

(declare-fun bs!1125226 () Bool)

(assert (= bs!1125226 (and d!1511314 b!4736149)))

(assert (=> bs!1125226 (= (= lt!1899298 lt!1898798) (= lambda!218351 lambda!218343))))

(declare-fun bs!1125227 () Bool)

(assert (= bs!1125227 (and d!1511314 b!4736152)))

(assert (=> bs!1125227 (= (= lt!1899298 lt!1899310) (= lambda!218351 lambda!218350))))

(declare-fun bs!1125228 () Bool)

(assert (= bs!1125228 (and d!1511314 b!4736156)))

(assert (=> bs!1125228 (= (= lt!1899298 lt!1898798) (= lambda!218351 lambda!218348))))

(declare-fun bs!1125229 () Bool)

(assert (= bs!1125229 (and d!1511314 d!1511304)))

(assert (=> bs!1125229 (= (= lt!1899298 lt!1899273) (= lambda!218351 lambda!218346))))

(declare-fun bs!1125230 () Bool)

(assert (= bs!1125230 (and d!1511314 b!4736121)))

(assert (=> bs!1125230 (= (= lt!1899298 lt!1898798) (= lambda!218351 lambda!218328))))

(declare-fun bs!1125231 () Bool)

(assert (= bs!1125231 (and d!1511314 b!4736145)))

(assert (=> bs!1125231 (= (= lt!1899298 lt!1898798) (= lambda!218351 lambda!218344))))

(declare-fun bs!1125232 () Bool)

(assert (= bs!1125232 (and d!1511314 d!1511298)))

(assert (=> bs!1125232 (= (= lt!1899298 lt!1899245) (= lambda!218351 lambda!218339))))

(declare-fun bs!1125233 () Bool)

(assert (= bs!1125233 (and d!1511314 b!4736142)))

(assert (=> bs!1125233 (= (= lt!1899298 lt!1898798) (= lambda!218351 lambda!218336))))

(declare-fun bs!1125234 () Bool)

(assert (= bs!1125234 (and d!1511314 b!4736117)))

(assert (=> bs!1125234 (= (= lt!1899298 lt!1899220) (= lambda!218351 lambda!218330))))

(declare-fun bs!1125235 () Bool)

(assert (= bs!1125235 (and d!1511314 d!1511158)))

(assert (=> bs!1125235 (not (= lambda!218351 lambda!218219))))

(assert (=> bs!1125234 (= (= lt!1899298 lt!1898798) (= lambda!218351 lambda!218329))))

(declare-fun bs!1125236 () Bool)

(assert (= bs!1125236 (and d!1511314 d!1511232)))

(assert (=> bs!1125236 (= (= lt!1899298 lt!1899208) (= lambda!218351 lambda!218331))))

(assert (=> bs!1125227 (= (= lt!1899298 lt!1898798) (= lambda!218351 lambda!218349))))

(assert (=> bs!1125225 (= (= lt!1899298 lt!1899257) (= lambda!218351 lambda!218338))))

(assert (=> bs!1125231 (= (= lt!1899298 lt!1899285) (= lambda!218351 lambda!218345))))

(assert (=> d!1511314 true))

(declare-fun e!2954171 () ListMap!5349)

(assert (=> b!4736152 (= e!2954171 lt!1899310)))

(declare-fun lt!1899313 () ListMap!5349)

(assert (=> b!4736152 (= lt!1899313 (+!2296 lt!1898798 (h!59300 lt!1898795)))))

(assert (=> b!4736152 (= lt!1899310 (addToMapMapFromBucket!1478 (t!360335 lt!1898795) (+!2296 lt!1898798 (h!59300 lt!1898795))))))

(declare-fun lt!1899299 () Unit!132303)

(declare-fun call!331323 () Unit!132303)

(assert (=> b!4736152 (= lt!1899299 call!331323)))

(assert (=> b!4736152 (forall!11663 (toList!5985 lt!1898798) lambda!218349)))

(declare-fun lt!1899294 () Unit!132303)

(assert (=> b!4736152 (= lt!1899294 lt!1899299)))

(assert (=> b!4736152 (forall!11663 (toList!5985 lt!1899313) lambda!218350)))

(declare-fun lt!1899297 () Unit!132303)

(declare-fun Unit!132401 () Unit!132303)

(assert (=> b!4736152 (= lt!1899297 Unit!132401)))

(assert (=> b!4736152 (forall!11663 (t!360335 lt!1898795) lambda!218350)))

(declare-fun lt!1899295 () Unit!132303)

(declare-fun Unit!132402 () Unit!132303)

(assert (=> b!4736152 (= lt!1899295 Unit!132402)))

(declare-fun lt!1899311 () Unit!132303)

(declare-fun Unit!132403 () Unit!132303)

(assert (=> b!4736152 (= lt!1899311 Unit!132403)))

(declare-fun lt!1899309 () Unit!132303)

(assert (=> b!4736152 (= lt!1899309 (forallContained!3703 (toList!5985 lt!1899313) lambda!218350 (h!59300 lt!1898795)))))

(assert (=> b!4736152 (contains!16316 lt!1899313 (_1!30587 (h!59300 lt!1898795)))))

(declare-fun lt!1899308 () Unit!132303)

(declare-fun Unit!132404 () Unit!132303)

(assert (=> b!4736152 (= lt!1899308 Unit!132404)))

(assert (=> b!4736152 (contains!16316 lt!1899310 (_1!30587 (h!59300 lt!1898795)))))

(declare-fun lt!1899300 () Unit!132303)

(declare-fun Unit!132405 () Unit!132303)

(assert (=> b!4736152 (= lt!1899300 Unit!132405)))

(assert (=> b!4736152 (forall!11663 lt!1898795 lambda!218350)))

(declare-fun lt!1899301 () Unit!132303)

(declare-fun Unit!132406 () Unit!132303)

(assert (=> b!4736152 (= lt!1899301 Unit!132406)))

(declare-fun call!331324 () Bool)

(assert (=> b!4736152 call!331324))

(declare-fun lt!1899312 () Unit!132303)

(declare-fun Unit!132407 () Unit!132303)

(assert (=> b!4736152 (= lt!1899312 Unit!132407)))

(declare-fun lt!1899302 () Unit!132303)

(declare-fun Unit!132408 () Unit!132303)

(assert (=> b!4736152 (= lt!1899302 Unit!132408)))

(declare-fun lt!1899305 () Unit!132303)

(assert (=> b!4736152 (= lt!1899305 (addForallContainsKeyThenBeforeAdding!823 lt!1898798 lt!1899310 (_1!30587 (h!59300 lt!1898795)) (_2!30587 (h!59300 lt!1898795))))))

(assert (=> b!4736152 (forall!11663 (toList!5985 lt!1898798) lambda!218350)))

(declare-fun lt!1899303 () Unit!132303)

(assert (=> b!4736152 (= lt!1899303 lt!1899305)))

(declare-fun call!331325 () Bool)

(assert (=> b!4736152 call!331325))

(declare-fun lt!1899307 () Unit!132303)

(declare-fun Unit!132409 () Unit!132303)

(assert (=> b!4736152 (= lt!1899307 Unit!132409)))

(declare-fun res!2005799 () Bool)

(assert (=> b!4736152 (= res!2005799 (forall!11663 lt!1898795 lambda!218350))))

(declare-fun e!2954170 () Bool)

(assert (=> b!4736152 (=> (not res!2005799) (not e!2954170))))

(assert (=> b!4736152 e!2954170))

(declare-fun lt!1899306 () Unit!132303)

(declare-fun Unit!132410 () Unit!132303)

(assert (=> b!4736152 (= lt!1899306 Unit!132410)))

(declare-fun b!4736153 () Bool)

(assert (=> b!4736153 (= e!2954170 (forall!11663 (toList!5985 lt!1898798) lambda!218350))))

(declare-fun bm!331318 () Bool)

(assert (=> bm!331318 (= call!331323 (lemmaContainsAllItsOwnKeys!824 lt!1898798))))

(declare-fun b!4736154 () Bool)

(declare-fun e!2954172 () Bool)

(assert (=> b!4736154 (= e!2954172 (invariantList!1539 (toList!5985 lt!1899298)))))

(declare-fun c!808897 () Bool)

(declare-fun bm!331319 () Bool)

(assert (=> bm!331319 (= call!331325 (forall!11663 (toList!5985 lt!1898798) (ite c!808897 lambda!218348 lambda!218350)))))

(assert (=> d!1511314 e!2954172))

(declare-fun res!2005800 () Bool)

(assert (=> d!1511314 (=> (not res!2005800) (not e!2954172))))

(assert (=> d!1511314 (= res!2005800 (forall!11663 lt!1898795 lambda!218351))))

(assert (=> d!1511314 (= lt!1899298 e!2954171)))

(assert (=> d!1511314 (= c!808897 ((_ is Nil!52925) lt!1898795))))

(assert (=> d!1511314 (noDuplicateKeys!2048 lt!1898795)))

(assert (=> d!1511314 (= (addToMapMapFromBucket!1478 lt!1898795 lt!1898798) lt!1899298)))

(declare-fun b!4736155 () Bool)

(declare-fun res!2005801 () Bool)

(assert (=> b!4736155 (=> (not res!2005801) (not e!2954172))))

(assert (=> b!4736155 (= res!2005801 (forall!11663 (toList!5985 lt!1898798) lambda!218351))))

(declare-fun bm!331320 () Bool)

(assert (=> bm!331320 (= call!331324 (forall!11663 (ite c!808897 (toList!5985 lt!1898798) (toList!5985 lt!1899313)) (ite c!808897 lambda!218348 lambda!218350)))))

(assert (=> b!4736156 (= e!2954171 lt!1898798)))

(declare-fun lt!1899296 () Unit!132303)

(assert (=> b!4736156 (= lt!1899296 call!331323)))

(assert (=> b!4736156 call!331324))

(declare-fun lt!1899304 () Unit!132303)

(assert (=> b!4736156 (= lt!1899304 lt!1899296)))

(assert (=> b!4736156 call!331325))

(declare-fun lt!1899293 () Unit!132303)

(declare-fun Unit!132411 () Unit!132303)

(assert (=> b!4736156 (= lt!1899293 Unit!132411)))

(assert (= (and d!1511314 c!808897) b!4736156))

(assert (= (and d!1511314 (not c!808897)) b!4736152))

(assert (= (and b!4736152 res!2005799) b!4736153))

(assert (= (or b!4736156 b!4736152) bm!331318))

(assert (= (or b!4736156 b!4736152) bm!331319))

(assert (= (or b!4736156 b!4736152) bm!331320))

(assert (= (and d!1511314 res!2005800) b!4736155))

(assert (= (and b!4736155 res!2005801) b!4736154))

(declare-fun m!5682739 () Bool)

(assert (=> b!4736155 m!5682739))

(declare-fun m!5682741 () Bool)

(assert (=> b!4736153 m!5682741))

(declare-fun m!5682743 () Bool)

(assert (=> b!4736152 m!5682743))

(declare-fun m!5682745 () Bool)

(assert (=> b!4736152 m!5682745))

(declare-fun m!5682747 () Bool)

(assert (=> b!4736152 m!5682747))

(declare-fun m!5682749 () Bool)

(assert (=> b!4736152 m!5682749))

(declare-fun m!5682751 () Bool)

(assert (=> b!4736152 m!5682751))

(assert (=> b!4736152 m!5682741))

(declare-fun m!5682753 () Bool)

(assert (=> b!4736152 m!5682753))

(declare-fun m!5682755 () Bool)

(assert (=> b!4736152 m!5682755))

(declare-fun m!5682757 () Bool)

(assert (=> b!4736152 m!5682757))

(assert (=> b!4736152 m!5682747))

(declare-fun m!5682759 () Bool)

(assert (=> b!4736152 m!5682759))

(declare-fun m!5682761 () Bool)

(assert (=> b!4736152 m!5682761))

(assert (=> b!4736152 m!5682751))

(declare-fun m!5682763 () Bool)

(assert (=> bm!331319 m!5682763))

(declare-fun m!5682765 () Bool)

(assert (=> b!4736154 m!5682765))

(declare-fun m!5682767 () Bool)

(assert (=> d!1511314 m!5682767))

(assert (=> d!1511314 m!5681919))

(assert (=> bm!331318 m!5682597))

(declare-fun m!5682769 () Bool)

(assert (=> bm!331320 m!5682769))

(assert (=> b!4735759 d!1511314))

(declare-fun d!1511316 () Bool)

(assert (=> d!1511316 (eq!1145 (addToMapMapFromBucket!1478 (Cons!52925 lt!1898796 lt!1898795) lt!1898798) (+!2296 (addToMapMapFromBucket!1478 lt!1898795 lt!1898798) lt!1898796))))

(declare-fun lt!1899314 () Unit!132303)

(assert (=> d!1511316 (= lt!1899314 (choose!33572 lt!1898796 lt!1898795 lt!1898798))))

(assert (=> d!1511316 (noDuplicateKeys!2048 lt!1898795)))

(assert (=> d!1511316 (= (lemmaAddToMapFromBucketTlPlusHeadIsSameAsList!394 lt!1898796 lt!1898795 lt!1898798) lt!1899314)))

(declare-fun bs!1125237 () Bool)

(assert (= bs!1125237 d!1511316))

(assert (=> bs!1125237 m!5681937))

(assert (=> bs!1125237 m!5681931))

(assert (=> bs!1125237 m!5681933))

(assert (=> bs!1125237 m!5681935))

(assert (=> bs!1125237 m!5681919))

(declare-fun m!5682771 () Bool)

(assert (=> bs!1125237 m!5682771))

(assert (=> bs!1125237 m!5681931))

(assert (=> bs!1125237 m!5681937))

(assert (=> bs!1125237 m!5681933))

(assert (=> b!4735759 d!1511316))

(declare-fun d!1511318 () Bool)

(declare-fun e!2954173 () Bool)

(assert (=> d!1511318 e!2954173))

(declare-fun res!2005802 () Bool)

(assert (=> d!1511318 (=> (not res!2005802) (not e!2954173))))

(declare-fun lt!1899316 () ListMap!5349)

(assert (=> d!1511318 (= res!2005802 (contains!16316 lt!1899316 (_1!30587 (h!59300 oldBucket!34))))))

(declare-fun lt!1899315 () List!53049)

(assert (=> d!1511318 (= lt!1899316 (ListMap!5350 lt!1899315))))

(declare-fun lt!1899317 () Unit!132303)

(declare-fun lt!1899318 () Unit!132303)

(assert (=> d!1511318 (= lt!1899317 lt!1899318)))

(assert (=> d!1511318 (= (getValueByKey!2008 lt!1899315 (_1!30587 (h!59300 oldBucket!34))) (Some!12437 (_2!30587 (h!59300 oldBucket!34))))))

(assert (=> d!1511318 (= lt!1899318 (lemmaContainsTupThenGetReturnValue!1106 lt!1899315 (_1!30587 (h!59300 oldBucket!34)) (_2!30587 (h!59300 oldBucket!34))))))

(assert (=> d!1511318 (= lt!1899315 (insertNoDuplicatedKeys!614 (toList!5985 lt!1898790) (_1!30587 (h!59300 oldBucket!34)) (_2!30587 (h!59300 oldBucket!34))))))

(assert (=> d!1511318 (= (+!2296 lt!1898790 (h!59300 oldBucket!34)) lt!1899316)))

(declare-fun b!4736157 () Bool)

(declare-fun res!2005803 () Bool)

(assert (=> b!4736157 (=> (not res!2005803) (not e!2954173))))

(assert (=> b!4736157 (= res!2005803 (= (getValueByKey!2008 (toList!5985 lt!1899316) (_1!30587 (h!59300 oldBucket!34))) (Some!12437 (_2!30587 (h!59300 oldBucket!34)))))))

(declare-fun b!4736158 () Bool)

(assert (=> b!4736158 (= e!2954173 (contains!16321 (toList!5985 lt!1899316) (h!59300 oldBucket!34)))))

(assert (= (and d!1511318 res!2005802) b!4736157))

(assert (= (and b!4736157 res!2005803) b!4736158))

(declare-fun m!5682773 () Bool)

(assert (=> d!1511318 m!5682773))

(declare-fun m!5682775 () Bool)

(assert (=> d!1511318 m!5682775))

(declare-fun m!5682777 () Bool)

(assert (=> d!1511318 m!5682777))

(declare-fun m!5682779 () Bool)

(assert (=> d!1511318 m!5682779))

(declare-fun m!5682781 () Bool)

(assert (=> b!4736157 m!5682781))

(declare-fun m!5682783 () Bool)

(assert (=> b!4736158 m!5682783))

(assert (=> b!4735759 d!1511318))

(declare-fun d!1511320 () Bool)

(declare-fun hash!4446 (Hashable!6417 K!14270) (_ BitVec 64))

(assert (=> d!1511320 (= (hash!4444 hashF!1323 key!4653) (hash!4446 hashF!1323 key!4653))))

(declare-fun bs!1125238 () Bool)

(assert (= bs!1125238 d!1511320))

(declare-fun m!5682785 () Bool)

(assert (=> bs!1125238 m!5682785))

(assert (=> b!4735748 d!1511320))

(declare-fun d!1511322 () Bool)

(assert (=> d!1511322 (= (eq!1145 lt!1898802 (+!2296 lt!1898790 lt!1898796)) (= (content!9450 (toList!5985 lt!1898802)) (content!9450 (toList!5985 (+!2296 lt!1898790 lt!1898796)))))))

(declare-fun bs!1125239 () Bool)

(assert (= bs!1125239 d!1511322))

(assert (=> bs!1125239 m!5682727))

(declare-fun m!5682787 () Bool)

(assert (=> bs!1125239 m!5682787))

(assert (=> b!4735749 d!1511322))

(declare-fun d!1511324 () Bool)

(declare-fun e!2954174 () Bool)

(assert (=> d!1511324 e!2954174))

(declare-fun res!2005804 () Bool)

(assert (=> d!1511324 (=> (not res!2005804) (not e!2954174))))

(declare-fun lt!1899320 () ListMap!5349)

(assert (=> d!1511324 (= res!2005804 (contains!16316 lt!1899320 (_1!30587 lt!1898796)))))

(declare-fun lt!1899319 () List!53049)

(assert (=> d!1511324 (= lt!1899320 (ListMap!5350 lt!1899319))))

(declare-fun lt!1899321 () Unit!132303)

(declare-fun lt!1899322 () Unit!132303)

(assert (=> d!1511324 (= lt!1899321 lt!1899322)))

(assert (=> d!1511324 (= (getValueByKey!2008 lt!1899319 (_1!30587 lt!1898796)) (Some!12437 (_2!30587 lt!1898796)))))

(assert (=> d!1511324 (= lt!1899322 (lemmaContainsTupThenGetReturnValue!1106 lt!1899319 (_1!30587 lt!1898796) (_2!30587 lt!1898796)))))

(assert (=> d!1511324 (= lt!1899319 (insertNoDuplicatedKeys!614 (toList!5985 lt!1898790) (_1!30587 lt!1898796) (_2!30587 lt!1898796)))))

(assert (=> d!1511324 (= (+!2296 lt!1898790 lt!1898796) lt!1899320)))

(declare-fun b!4736159 () Bool)

(declare-fun res!2005805 () Bool)

(assert (=> b!4736159 (=> (not res!2005805) (not e!2954174))))

(assert (=> b!4736159 (= res!2005805 (= (getValueByKey!2008 (toList!5985 lt!1899320) (_1!30587 lt!1898796)) (Some!12437 (_2!30587 lt!1898796))))))

(declare-fun b!4736160 () Bool)

(assert (=> b!4736160 (= e!2954174 (contains!16321 (toList!5985 lt!1899320) lt!1898796))))

(assert (= (and d!1511324 res!2005804) b!4736159))

(assert (= (and b!4736159 res!2005805) b!4736160))

(declare-fun m!5682789 () Bool)

(assert (=> d!1511324 m!5682789))

(declare-fun m!5682791 () Bool)

(assert (=> d!1511324 m!5682791))

(declare-fun m!5682793 () Bool)

(assert (=> d!1511324 m!5682793))

(declare-fun m!5682795 () Bool)

(assert (=> d!1511324 m!5682795))

(declare-fun m!5682797 () Bool)

(assert (=> b!4736159 m!5682797))

(declare-fun m!5682799 () Bool)

(assert (=> b!4736160 m!5682799))

(assert (=> b!4735749 d!1511324))

(declare-fun bs!1125240 () Bool)

(declare-fun b!4736165 () Bool)

(assert (= bs!1125240 (and b!4736165 b!4736138)))

(declare-fun lambda!218352 () Int)

(assert (=> bs!1125240 (= lambda!218352 lambda!218337)))

(declare-fun bs!1125241 () Bool)

(assert (= bs!1125241 (and b!4736165 b!4736149)))

(assert (=> bs!1125241 (= lambda!218352 lambda!218343)))

(declare-fun bs!1125242 () Bool)

(assert (= bs!1125242 (and b!4736165 b!4736152)))

(assert (=> bs!1125242 (= (= lt!1898798 lt!1899310) (= lambda!218352 lambda!218350))))

(declare-fun bs!1125243 () Bool)

(assert (= bs!1125243 (and b!4736165 b!4736156)))

(assert (=> bs!1125243 (= lambda!218352 lambda!218348)))

(declare-fun bs!1125244 () Bool)

(assert (= bs!1125244 (and b!4736165 d!1511304)))

(assert (=> bs!1125244 (= (= lt!1898798 lt!1899273) (= lambda!218352 lambda!218346))))

(declare-fun bs!1125245 () Bool)

(assert (= bs!1125245 (and b!4736165 d!1511314)))

(assert (=> bs!1125245 (= (= lt!1898798 lt!1899298) (= lambda!218352 lambda!218351))))

(declare-fun bs!1125246 () Bool)

(assert (= bs!1125246 (and b!4736165 b!4736121)))

(assert (=> bs!1125246 (= lambda!218352 lambda!218328)))

(declare-fun bs!1125247 () Bool)

(assert (= bs!1125247 (and b!4736165 b!4736145)))

(assert (=> bs!1125247 (= lambda!218352 lambda!218344)))

(declare-fun bs!1125248 () Bool)

(assert (= bs!1125248 (and b!4736165 d!1511298)))

(assert (=> bs!1125248 (= (= lt!1898798 lt!1899245) (= lambda!218352 lambda!218339))))

(declare-fun bs!1125249 () Bool)

(assert (= bs!1125249 (and b!4736165 b!4736142)))

(assert (=> bs!1125249 (= lambda!218352 lambda!218336)))

(declare-fun bs!1125250 () Bool)

(assert (= bs!1125250 (and b!4736165 b!4736117)))

(assert (=> bs!1125250 (= (= lt!1898798 lt!1899220) (= lambda!218352 lambda!218330))))

(declare-fun bs!1125251 () Bool)

(assert (= bs!1125251 (and b!4736165 d!1511158)))

(assert (=> bs!1125251 (not (= lambda!218352 lambda!218219))))

(assert (=> bs!1125250 (= lambda!218352 lambda!218329)))

(declare-fun bs!1125252 () Bool)

(assert (= bs!1125252 (and b!4736165 d!1511232)))

(assert (=> bs!1125252 (= (= lt!1898798 lt!1899208) (= lambda!218352 lambda!218331))))

(assert (=> bs!1125242 (= lambda!218352 lambda!218349)))

(assert (=> bs!1125240 (= (= lt!1898798 lt!1899257) (= lambda!218352 lambda!218338))))

(assert (=> bs!1125247 (= (= lt!1898798 lt!1899285) (= lambda!218352 lambda!218345))))

(assert (=> b!4736165 true))

(declare-fun bs!1125253 () Bool)

(declare-fun b!4736161 () Bool)

(assert (= bs!1125253 (and b!4736161 b!4736138)))

(declare-fun lambda!218353 () Int)

(assert (=> bs!1125253 (= lambda!218353 lambda!218337)))

(declare-fun bs!1125254 () Bool)

(assert (= bs!1125254 (and b!4736161 b!4736149)))

(assert (=> bs!1125254 (= lambda!218353 lambda!218343)))

(declare-fun bs!1125255 () Bool)

(assert (= bs!1125255 (and b!4736161 b!4736165)))

(assert (=> bs!1125255 (= lambda!218353 lambda!218352)))

(declare-fun bs!1125256 () Bool)

(assert (= bs!1125256 (and b!4736161 b!4736152)))

(assert (=> bs!1125256 (= (= lt!1898798 lt!1899310) (= lambda!218353 lambda!218350))))

(declare-fun bs!1125257 () Bool)

(assert (= bs!1125257 (and b!4736161 b!4736156)))

(assert (=> bs!1125257 (= lambda!218353 lambda!218348)))

(declare-fun bs!1125258 () Bool)

(assert (= bs!1125258 (and b!4736161 d!1511304)))

(assert (=> bs!1125258 (= (= lt!1898798 lt!1899273) (= lambda!218353 lambda!218346))))

(declare-fun bs!1125259 () Bool)

(assert (= bs!1125259 (and b!4736161 d!1511314)))

(assert (=> bs!1125259 (= (= lt!1898798 lt!1899298) (= lambda!218353 lambda!218351))))

(declare-fun bs!1125260 () Bool)

(assert (= bs!1125260 (and b!4736161 b!4736121)))

(assert (=> bs!1125260 (= lambda!218353 lambda!218328)))

(declare-fun bs!1125261 () Bool)

(assert (= bs!1125261 (and b!4736161 b!4736145)))

(assert (=> bs!1125261 (= lambda!218353 lambda!218344)))

(declare-fun bs!1125262 () Bool)

(assert (= bs!1125262 (and b!4736161 d!1511298)))

(assert (=> bs!1125262 (= (= lt!1898798 lt!1899245) (= lambda!218353 lambda!218339))))

(declare-fun bs!1125263 () Bool)

(assert (= bs!1125263 (and b!4736161 b!4736142)))

(assert (=> bs!1125263 (= lambda!218353 lambda!218336)))

(declare-fun bs!1125264 () Bool)

(assert (= bs!1125264 (and b!4736161 b!4736117)))

(assert (=> bs!1125264 (= (= lt!1898798 lt!1899220) (= lambda!218353 lambda!218330))))

(declare-fun bs!1125265 () Bool)

(assert (= bs!1125265 (and b!4736161 d!1511158)))

(assert (=> bs!1125265 (not (= lambda!218353 lambda!218219))))

(assert (=> bs!1125264 (= lambda!218353 lambda!218329)))

(declare-fun bs!1125266 () Bool)

(assert (= bs!1125266 (and b!4736161 d!1511232)))

(assert (=> bs!1125266 (= (= lt!1898798 lt!1899208) (= lambda!218353 lambda!218331))))

(assert (=> bs!1125256 (= lambda!218353 lambda!218349)))

(assert (=> bs!1125253 (= (= lt!1898798 lt!1899257) (= lambda!218353 lambda!218338))))

(assert (=> bs!1125261 (= (= lt!1898798 lt!1899285) (= lambda!218353 lambda!218345))))

(assert (=> b!4736161 true))

(declare-fun lt!1899340 () ListMap!5349)

(declare-fun lambda!218354 () Int)

(assert (=> bs!1125254 (= (= lt!1899340 lt!1898798) (= lambda!218354 lambda!218343))))

(assert (=> bs!1125255 (= (= lt!1899340 lt!1898798) (= lambda!218354 lambda!218352))))

(assert (=> bs!1125256 (= (= lt!1899340 lt!1899310) (= lambda!218354 lambda!218350))))

(assert (=> bs!1125257 (= (= lt!1899340 lt!1898798) (= lambda!218354 lambda!218348))))

(assert (=> bs!1125258 (= (= lt!1899340 lt!1899273) (= lambda!218354 lambda!218346))))

(assert (=> bs!1125259 (= (= lt!1899340 lt!1899298) (= lambda!218354 lambda!218351))))

(assert (=> bs!1125260 (= (= lt!1899340 lt!1898798) (= lambda!218354 lambda!218328))))

(assert (=> bs!1125261 (= (= lt!1899340 lt!1898798) (= lambda!218354 lambda!218344))))

(assert (=> bs!1125262 (= (= lt!1899340 lt!1899245) (= lambda!218354 lambda!218339))))

(assert (=> bs!1125253 (= (= lt!1899340 lt!1898798) (= lambda!218354 lambda!218337))))

(assert (=> b!4736161 (= (= lt!1899340 lt!1898798) (= lambda!218354 lambda!218353))))

(assert (=> bs!1125263 (= (= lt!1899340 lt!1898798) (= lambda!218354 lambda!218336))))

(assert (=> bs!1125264 (= (= lt!1899340 lt!1899220) (= lambda!218354 lambda!218330))))

(assert (=> bs!1125265 (not (= lambda!218354 lambda!218219))))

(assert (=> bs!1125264 (= (= lt!1899340 lt!1898798) (= lambda!218354 lambda!218329))))

(assert (=> bs!1125266 (= (= lt!1899340 lt!1899208) (= lambda!218354 lambda!218331))))

(assert (=> bs!1125256 (= (= lt!1899340 lt!1898798) (= lambda!218354 lambda!218349))))

(assert (=> bs!1125253 (= (= lt!1899340 lt!1899257) (= lambda!218354 lambda!218338))))

(assert (=> bs!1125261 (= (= lt!1899340 lt!1899285) (= lambda!218354 lambda!218345))))

(assert (=> b!4736161 true))

(declare-fun bs!1125267 () Bool)

(declare-fun d!1511326 () Bool)

(assert (= bs!1125267 (and d!1511326 b!4736149)))

(declare-fun lambda!218355 () Int)

(declare-fun lt!1899328 () ListMap!5349)

(assert (=> bs!1125267 (= (= lt!1899328 lt!1898798) (= lambda!218355 lambda!218343))))

(declare-fun bs!1125268 () Bool)

(assert (= bs!1125268 (and d!1511326 b!4736161)))

(assert (=> bs!1125268 (= (= lt!1899328 lt!1899340) (= lambda!218355 lambda!218354))))

(declare-fun bs!1125269 () Bool)

(assert (= bs!1125269 (and d!1511326 b!4736165)))

(assert (=> bs!1125269 (= (= lt!1899328 lt!1898798) (= lambda!218355 lambda!218352))))

(declare-fun bs!1125270 () Bool)

(assert (= bs!1125270 (and d!1511326 b!4736152)))

(assert (=> bs!1125270 (= (= lt!1899328 lt!1899310) (= lambda!218355 lambda!218350))))

(declare-fun bs!1125271 () Bool)

(assert (= bs!1125271 (and d!1511326 b!4736156)))

(assert (=> bs!1125271 (= (= lt!1899328 lt!1898798) (= lambda!218355 lambda!218348))))

(declare-fun bs!1125272 () Bool)

(assert (= bs!1125272 (and d!1511326 d!1511304)))

(assert (=> bs!1125272 (= (= lt!1899328 lt!1899273) (= lambda!218355 lambda!218346))))

(declare-fun bs!1125273 () Bool)

(assert (= bs!1125273 (and d!1511326 d!1511314)))

(assert (=> bs!1125273 (= (= lt!1899328 lt!1899298) (= lambda!218355 lambda!218351))))

(declare-fun bs!1125274 () Bool)

(assert (= bs!1125274 (and d!1511326 b!4736121)))

(assert (=> bs!1125274 (= (= lt!1899328 lt!1898798) (= lambda!218355 lambda!218328))))

(declare-fun bs!1125275 () Bool)

(assert (= bs!1125275 (and d!1511326 b!4736145)))

(assert (=> bs!1125275 (= (= lt!1899328 lt!1898798) (= lambda!218355 lambda!218344))))

(declare-fun bs!1125276 () Bool)

(assert (= bs!1125276 (and d!1511326 d!1511298)))

(assert (=> bs!1125276 (= (= lt!1899328 lt!1899245) (= lambda!218355 lambda!218339))))

(declare-fun bs!1125277 () Bool)

(assert (= bs!1125277 (and d!1511326 b!4736138)))

(assert (=> bs!1125277 (= (= lt!1899328 lt!1898798) (= lambda!218355 lambda!218337))))

(assert (=> bs!1125268 (= (= lt!1899328 lt!1898798) (= lambda!218355 lambda!218353))))

(declare-fun bs!1125278 () Bool)

(assert (= bs!1125278 (and d!1511326 b!4736142)))

(assert (=> bs!1125278 (= (= lt!1899328 lt!1898798) (= lambda!218355 lambda!218336))))

(declare-fun bs!1125279 () Bool)

(assert (= bs!1125279 (and d!1511326 b!4736117)))

(assert (=> bs!1125279 (= (= lt!1899328 lt!1899220) (= lambda!218355 lambda!218330))))

(declare-fun bs!1125280 () Bool)

(assert (= bs!1125280 (and d!1511326 d!1511158)))

(assert (=> bs!1125280 (not (= lambda!218355 lambda!218219))))

(assert (=> bs!1125279 (= (= lt!1899328 lt!1898798) (= lambda!218355 lambda!218329))))

(declare-fun bs!1125281 () Bool)

(assert (= bs!1125281 (and d!1511326 d!1511232)))

(assert (=> bs!1125281 (= (= lt!1899328 lt!1899208) (= lambda!218355 lambda!218331))))

(assert (=> bs!1125270 (= (= lt!1899328 lt!1898798) (= lambda!218355 lambda!218349))))

(assert (=> bs!1125277 (= (= lt!1899328 lt!1899257) (= lambda!218355 lambda!218338))))

(assert (=> bs!1125275 (= (= lt!1899328 lt!1899285) (= lambda!218355 lambda!218345))))

(assert (=> d!1511326 true))

(declare-fun e!2954176 () ListMap!5349)

(assert (=> b!4736161 (= e!2954176 lt!1899340)))

(declare-fun lt!1899343 () ListMap!5349)

(assert (=> b!4736161 (= lt!1899343 (+!2296 lt!1898798 (h!59300 (_2!30588 (h!59301 (toList!5986 lm!2023))))))))

(assert (=> b!4736161 (= lt!1899340 (addToMapMapFromBucket!1478 (t!360335 (_2!30588 (h!59301 (toList!5986 lm!2023)))) (+!2296 lt!1898798 (h!59300 (_2!30588 (h!59301 (toList!5986 lm!2023)))))))))

(declare-fun lt!1899329 () Unit!132303)

(declare-fun call!331326 () Unit!132303)

(assert (=> b!4736161 (= lt!1899329 call!331326)))

(assert (=> b!4736161 (forall!11663 (toList!5985 lt!1898798) lambda!218353)))

(declare-fun lt!1899324 () Unit!132303)

(assert (=> b!4736161 (= lt!1899324 lt!1899329)))

(assert (=> b!4736161 (forall!11663 (toList!5985 lt!1899343) lambda!218354)))

(declare-fun lt!1899327 () Unit!132303)

(declare-fun Unit!132412 () Unit!132303)

(assert (=> b!4736161 (= lt!1899327 Unit!132412)))

(assert (=> b!4736161 (forall!11663 (t!360335 (_2!30588 (h!59301 (toList!5986 lm!2023)))) lambda!218354)))

(declare-fun lt!1899325 () Unit!132303)

(declare-fun Unit!132413 () Unit!132303)

(assert (=> b!4736161 (= lt!1899325 Unit!132413)))

(declare-fun lt!1899341 () Unit!132303)

(declare-fun Unit!132414 () Unit!132303)

(assert (=> b!4736161 (= lt!1899341 Unit!132414)))

(declare-fun lt!1899339 () Unit!132303)

(assert (=> b!4736161 (= lt!1899339 (forallContained!3703 (toList!5985 lt!1899343) lambda!218354 (h!59300 (_2!30588 (h!59301 (toList!5986 lm!2023))))))))

(assert (=> b!4736161 (contains!16316 lt!1899343 (_1!30587 (h!59300 (_2!30588 (h!59301 (toList!5986 lm!2023))))))))

(declare-fun lt!1899338 () Unit!132303)

(declare-fun Unit!132415 () Unit!132303)

(assert (=> b!4736161 (= lt!1899338 Unit!132415)))

(assert (=> b!4736161 (contains!16316 lt!1899340 (_1!30587 (h!59300 (_2!30588 (h!59301 (toList!5986 lm!2023))))))))

(declare-fun lt!1899330 () Unit!132303)

(declare-fun Unit!132416 () Unit!132303)

(assert (=> b!4736161 (= lt!1899330 Unit!132416)))

(assert (=> b!4736161 (forall!11663 (_2!30588 (h!59301 (toList!5986 lm!2023))) lambda!218354)))

(declare-fun lt!1899331 () Unit!132303)

(declare-fun Unit!132417 () Unit!132303)

(assert (=> b!4736161 (= lt!1899331 Unit!132417)))

(declare-fun call!331327 () Bool)

(assert (=> b!4736161 call!331327))

(declare-fun lt!1899342 () Unit!132303)

(declare-fun Unit!132418 () Unit!132303)

(assert (=> b!4736161 (= lt!1899342 Unit!132418)))

(declare-fun lt!1899332 () Unit!132303)

(declare-fun Unit!132419 () Unit!132303)

(assert (=> b!4736161 (= lt!1899332 Unit!132419)))

(declare-fun lt!1899335 () Unit!132303)

(assert (=> b!4736161 (= lt!1899335 (addForallContainsKeyThenBeforeAdding!823 lt!1898798 lt!1899340 (_1!30587 (h!59300 (_2!30588 (h!59301 (toList!5986 lm!2023))))) (_2!30587 (h!59300 (_2!30588 (h!59301 (toList!5986 lm!2023)))))))))

(assert (=> b!4736161 (forall!11663 (toList!5985 lt!1898798) lambda!218354)))

(declare-fun lt!1899333 () Unit!132303)

(assert (=> b!4736161 (= lt!1899333 lt!1899335)))

(declare-fun call!331328 () Bool)

(assert (=> b!4736161 call!331328))

(declare-fun lt!1899337 () Unit!132303)

(declare-fun Unit!132420 () Unit!132303)

(assert (=> b!4736161 (= lt!1899337 Unit!132420)))

(declare-fun res!2005806 () Bool)

(assert (=> b!4736161 (= res!2005806 (forall!11663 (_2!30588 (h!59301 (toList!5986 lm!2023))) lambda!218354))))

(declare-fun e!2954175 () Bool)

(assert (=> b!4736161 (=> (not res!2005806) (not e!2954175))))

(assert (=> b!4736161 e!2954175))

(declare-fun lt!1899336 () Unit!132303)

(declare-fun Unit!132421 () Unit!132303)

(assert (=> b!4736161 (= lt!1899336 Unit!132421)))

(declare-fun b!4736162 () Bool)

(assert (=> b!4736162 (= e!2954175 (forall!11663 (toList!5985 lt!1898798) lambda!218354))))

(declare-fun bm!331321 () Bool)

(assert (=> bm!331321 (= call!331326 (lemmaContainsAllItsOwnKeys!824 lt!1898798))))

(declare-fun b!4736163 () Bool)

(declare-fun e!2954177 () Bool)

(assert (=> b!4736163 (= e!2954177 (invariantList!1539 (toList!5985 lt!1899328)))))

(declare-fun bm!331322 () Bool)

(declare-fun c!808898 () Bool)

(assert (=> bm!331322 (= call!331328 (forall!11663 (toList!5985 lt!1898798) (ite c!808898 lambda!218352 lambda!218354)))))

(assert (=> d!1511326 e!2954177))

(declare-fun res!2005807 () Bool)

(assert (=> d!1511326 (=> (not res!2005807) (not e!2954177))))

(assert (=> d!1511326 (= res!2005807 (forall!11663 (_2!30588 (h!59301 (toList!5986 lm!2023))) lambda!218355))))

(assert (=> d!1511326 (= lt!1899328 e!2954176)))

(assert (=> d!1511326 (= c!808898 ((_ is Nil!52925) (_2!30588 (h!59301 (toList!5986 lm!2023)))))))

(assert (=> d!1511326 (noDuplicateKeys!2048 (_2!30588 (h!59301 (toList!5986 lm!2023))))))

(assert (=> d!1511326 (= (addToMapMapFromBucket!1478 (_2!30588 (h!59301 (toList!5986 lm!2023))) lt!1898798) lt!1899328)))

(declare-fun b!4736164 () Bool)

(declare-fun res!2005808 () Bool)

(assert (=> b!4736164 (=> (not res!2005808) (not e!2954177))))

(assert (=> b!4736164 (= res!2005808 (forall!11663 (toList!5985 lt!1898798) lambda!218355))))

(declare-fun bm!331323 () Bool)

(assert (=> bm!331323 (= call!331327 (forall!11663 (ite c!808898 (toList!5985 lt!1898798) (toList!5985 lt!1899343)) (ite c!808898 lambda!218352 lambda!218354)))))

(assert (=> b!4736165 (= e!2954176 lt!1898798)))

(declare-fun lt!1899326 () Unit!132303)

(assert (=> b!4736165 (= lt!1899326 call!331326)))

(assert (=> b!4736165 call!331327))

(declare-fun lt!1899334 () Unit!132303)

(assert (=> b!4736165 (= lt!1899334 lt!1899326)))

(assert (=> b!4736165 call!331328))

(declare-fun lt!1899323 () Unit!132303)

(declare-fun Unit!132422 () Unit!132303)

(assert (=> b!4736165 (= lt!1899323 Unit!132422)))

(assert (= (and d!1511326 c!808898) b!4736165))

(assert (= (and d!1511326 (not c!808898)) b!4736161))

(assert (= (and b!4736161 res!2005806) b!4736162))

(assert (= (or b!4736165 b!4736161) bm!331321))

(assert (= (or b!4736165 b!4736161) bm!331322))

(assert (= (or b!4736165 b!4736161) bm!331323))

(assert (= (and d!1511326 res!2005807) b!4736164))

(assert (= (and b!4736164 res!2005808) b!4736163))

(declare-fun m!5682801 () Bool)

(assert (=> b!4736164 m!5682801))

(declare-fun m!5682803 () Bool)

(assert (=> b!4736162 m!5682803))

(declare-fun m!5682805 () Bool)

(assert (=> b!4736161 m!5682805))

(declare-fun m!5682807 () Bool)

(assert (=> b!4736161 m!5682807))

(declare-fun m!5682809 () Bool)

(assert (=> b!4736161 m!5682809))

(declare-fun m!5682811 () Bool)

(assert (=> b!4736161 m!5682811))

(declare-fun m!5682813 () Bool)

(assert (=> b!4736161 m!5682813))

(assert (=> b!4736161 m!5682803))

(declare-fun m!5682815 () Bool)

(assert (=> b!4736161 m!5682815))

(declare-fun m!5682817 () Bool)

(assert (=> b!4736161 m!5682817))

(declare-fun m!5682819 () Bool)

(assert (=> b!4736161 m!5682819))

(assert (=> b!4736161 m!5682809))

(declare-fun m!5682821 () Bool)

(assert (=> b!4736161 m!5682821))

(declare-fun m!5682823 () Bool)

(assert (=> b!4736161 m!5682823))

(assert (=> b!4736161 m!5682813))

(declare-fun m!5682825 () Bool)

(assert (=> bm!331322 m!5682825))

(declare-fun m!5682827 () Bool)

(assert (=> b!4736163 m!5682827))

(declare-fun m!5682829 () Bool)

(assert (=> d!1511326 m!5682829))

(declare-fun m!5682831 () Bool)

(assert (=> d!1511326 m!5682831))

(assert (=> bm!331321 m!5682597))

(declare-fun m!5682833 () Bool)

(assert (=> bm!331323 m!5682833))

(assert (=> b!4735755 d!1511326))

(declare-fun bs!1125282 () Bool)

(declare-fun d!1511328 () Bool)

(assert (= bs!1125282 (and d!1511328 d!1511290)))

(declare-fun lambda!218356 () Int)

(assert (=> bs!1125282 (= lambda!218356 lambda!218334)))

(declare-fun bs!1125283 () Bool)

(assert (= bs!1125283 (and d!1511328 d!1511296)))

(assert (=> bs!1125283 (= lambda!218356 lambda!218335)))

(declare-fun bs!1125284 () Bool)

(assert (= bs!1125284 (and d!1511328 d!1511300)))

(assert (=> bs!1125284 (= lambda!218356 lambda!218342)))

(declare-fun bs!1125285 () Bool)

(assert (= bs!1125285 (and d!1511328 d!1511164)))

(assert (=> bs!1125285 (not (= lambda!218356 lambda!218222))))

(declare-fun bs!1125286 () Bool)

(assert (= bs!1125286 (and d!1511328 d!1511310)))

(assert (=> bs!1125286 (= lambda!218356 lambda!218347)))

(declare-fun bs!1125287 () Bool)

(assert (= bs!1125287 (and d!1511328 d!1511184)))

(assert (=> bs!1125287 (= lambda!218356 lambda!218273)))

(declare-fun bs!1125288 () Bool)

(assert (= bs!1125288 (and d!1511328 start!483016)))

(assert (=> bs!1125288 (= lambda!218356 lambda!218208)))

(declare-fun bs!1125289 () Bool)

(assert (= bs!1125289 (and d!1511328 d!1511180)))

(assert (=> bs!1125289 (= lambda!218356 lambda!218225)))

(declare-fun lt!1899344 () ListMap!5349)

(assert (=> d!1511328 (invariantList!1539 (toList!5985 lt!1899344))))

(declare-fun e!2954178 () ListMap!5349)

(assert (=> d!1511328 (= lt!1899344 e!2954178)))

(declare-fun c!808899 () Bool)

(assert (=> d!1511328 (= c!808899 ((_ is Cons!52926) (t!360336 (toList!5986 lm!2023))))))

(assert (=> d!1511328 (forall!11661 (t!360336 (toList!5986 lm!2023)) lambda!218356)))

(assert (=> d!1511328 (= (extractMap!2074 (t!360336 (toList!5986 lm!2023))) lt!1899344)))

(declare-fun b!4736166 () Bool)

(assert (=> b!4736166 (= e!2954178 (addToMapMapFromBucket!1478 (_2!30588 (h!59301 (t!360336 (toList!5986 lm!2023)))) (extractMap!2074 (t!360336 (t!360336 (toList!5986 lm!2023))))))))

(declare-fun b!4736167 () Bool)

(assert (=> b!4736167 (= e!2954178 (ListMap!5350 Nil!52925))))

(assert (= (and d!1511328 c!808899) b!4736166))

(assert (= (and d!1511328 (not c!808899)) b!4736167))

(declare-fun m!5682835 () Bool)

(assert (=> d!1511328 m!5682835))

(declare-fun m!5682837 () Bool)

(assert (=> d!1511328 m!5682837))

(declare-fun m!5682839 () Bool)

(assert (=> b!4736166 m!5682839))

(assert (=> b!4736166 m!5682839))

(declare-fun m!5682841 () Bool)

(assert (=> b!4736166 m!5682841))

(assert (=> b!4735755 d!1511328))

(declare-fun d!1511330 () Bool)

(declare-fun tail!9091 (List!53050) List!53050)

(assert (=> d!1511330 (= (tail!9088 lm!2023) (ListLongMap!4516 (tail!9091 (toList!5986 lm!2023))))))

(declare-fun bs!1125290 () Bool)

(assert (= bs!1125290 d!1511330))

(declare-fun m!5682843 () Bool)

(assert (=> bs!1125290 m!5682843))

(assert (=> b!4735755 d!1511330))

(declare-fun b!4736169 () Bool)

(declare-fun e!2954180 () List!53049)

(declare-fun e!2954179 () List!53049)

(assert (=> b!4736169 (= e!2954180 e!2954179)))

(declare-fun c!808900 () Bool)

(assert (=> b!4736169 (= c!808900 ((_ is Cons!52925) oldBucket!34))))

(declare-fun d!1511332 () Bool)

(declare-fun lt!1899345 () List!53049)

(assert (=> d!1511332 (not (containsKey!3449 lt!1899345 key!4653))))

(assert (=> d!1511332 (= lt!1899345 e!2954180)))

(declare-fun c!808901 () Bool)

(assert (=> d!1511332 (= c!808901 (and ((_ is Cons!52925) oldBucket!34) (= (_1!30587 (h!59300 oldBucket!34)) key!4653)))))

(assert (=> d!1511332 (noDuplicateKeys!2048 oldBucket!34)))

(assert (=> d!1511332 (= (removePairForKey!1643 oldBucket!34 key!4653) lt!1899345)))

(declare-fun b!4736168 () Bool)

(assert (=> b!4736168 (= e!2954180 (t!360335 oldBucket!34))))

(declare-fun b!4736170 () Bool)

(assert (=> b!4736170 (= e!2954179 (Cons!52925 (h!59300 oldBucket!34) (removePairForKey!1643 (t!360335 oldBucket!34) key!4653)))))

(declare-fun b!4736171 () Bool)

(assert (=> b!4736171 (= e!2954179 Nil!52925)))

(assert (= (and d!1511332 c!808901) b!4736168))

(assert (= (and d!1511332 (not c!808901)) b!4736169))

(assert (= (and b!4736169 c!808900) b!4736170))

(assert (= (and b!4736169 (not c!808900)) b!4736171))

(declare-fun m!5682845 () Bool)

(assert (=> d!1511332 m!5682845))

(assert (=> d!1511332 m!5682003))

(assert (=> b!4736170 m!5681989))

(assert (=> b!4735766 d!1511332))

(declare-fun d!1511334 () Bool)

(declare-fun res!2005809 () Bool)

(declare-fun e!2954181 () Bool)

(assert (=> d!1511334 (=> res!2005809 e!2954181)))

(assert (=> d!1511334 (= res!2005809 (not ((_ is Cons!52925) (t!360335 oldBucket!34))))))

(assert (=> d!1511334 (= (noDuplicateKeys!2048 (t!360335 oldBucket!34)) e!2954181)))

(declare-fun b!4736172 () Bool)

(declare-fun e!2954182 () Bool)

(assert (=> b!4736172 (= e!2954181 e!2954182)))

(declare-fun res!2005810 () Bool)

(assert (=> b!4736172 (=> (not res!2005810) (not e!2954182))))

(assert (=> b!4736172 (= res!2005810 (not (containsKey!3449 (t!360335 (t!360335 oldBucket!34)) (_1!30587 (h!59300 (t!360335 oldBucket!34))))))))

(declare-fun b!4736173 () Bool)

(assert (=> b!4736173 (= e!2954182 (noDuplicateKeys!2048 (t!360335 (t!360335 oldBucket!34))))))

(assert (= (and d!1511334 (not res!2005809)) b!4736172))

(assert (= (and b!4736172 res!2005810) b!4736173))

(declare-fun m!5682847 () Bool)

(assert (=> b!4736172 m!5682847))

(declare-fun m!5682849 () Bool)

(assert (=> b!4736173 m!5682849))

(assert (=> b!4735767 d!1511334))

(declare-fun b!4736175 () Bool)

(declare-fun e!2954184 () List!53049)

(declare-fun e!2954183 () List!53049)

(assert (=> b!4736175 (= e!2954184 e!2954183)))

(declare-fun c!808902 () Bool)

(assert (=> b!4736175 (= c!808902 ((_ is Cons!52925) lt!1898783))))

(declare-fun d!1511336 () Bool)

(declare-fun lt!1899346 () List!53049)

(assert (=> d!1511336 (not (containsKey!3449 lt!1899346 key!4653))))

(assert (=> d!1511336 (= lt!1899346 e!2954184)))

(declare-fun c!808903 () Bool)

(assert (=> d!1511336 (= c!808903 (and ((_ is Cons!52925) lt!1898783) (= (_1!30587 (h!59300 lt!1898783)) key!4653)))))

(assert (=> d!1511336 (noDuplicateKeys!2048 lt!1898783)))

(assert (=> d!1511336 (= (removePairForKey!1643 lt!1898783 key!4653) lt!1899346)))

(declare-fun b!4736174 () Bool)

(assert (=> b!4736174 (= e!2954184 (t!360335 lt!1898783))))

(declare-fun b!4736176 () Bool)

(assert (=> b!4736176 (= e!2954183 (Cons!52925 (h!59300 lt!1898783) (removePairForKey!1643 (t!360335 lt!1898783) key!4653)))))

(declare-fun b!4736177 () Bool)

(assert (=> b!4736177 (= e!2954183 Nil!52925)))

(assert (= (and d!1511336 c!808903) b!4736174))

(assert (= (and d!1511336 (not c!808903)) b!4736175))

(assert (= (and b!4736175 c!808902) b!4736176))

(assert (= (and b!4736175 (not c!808902)) b!4736177))

(declare-fun m!5682851 () Bool)

(assert (=> d!1511336 m!5682851))

(assert (=> d!1511336 m!5682721))

(declare-fun m!5682853 () Bool)

(assert (=> b!4736176 m!5682853))

(assert (=> b!4735756 d!1511336))

(declare-fun d!1511338 () Bool)

(assert (=> d!1511338 (= (tail!9089 newBucket!218) (t!360335 newBucket!218))))

(assert (=> b!4735756 d!1511338))

(declare-fun d!1511340 () Bool)

(assert (=> d!1511340 (= (tail!9089 oldBucket!34) (t!360335 oldBucket!34))))

(assert (=> b!4735756 d!1511340))

(declare-fun b!4736178 () Bool)

(declare-fun e!2954185 () Bool)

(assert (=> b!4736178 (= e!2954185 (contains!16322 (keys!19037 lt!1898803) key!4653))))

(declare-fun b!4736179 () Bool)

(declare-fun e!2954187 () Unit!132303)

(declare-fun Unit!132423 () Unit!132303)

(assert (=> b!4736179 (= e!2954187 Unit!132423)))

(declare-fun b!4736180 () Bool)

(declare-fun e!2954186 () List!53052)

(assert (=> b!4736180 (= e!2954186 (keys!19037 lt!1898803))))

(declare-fun d!1511342 () Bool)

(declare-fun e!2954188 () Bool)

(assert (=> d!1511342 e!2954188))

(declare-fun res!2005812 () Bool)

(assert (=> d!1511342 (=> res!2005812 e!2954188)))

(declare-fun e!2954190 () Bool)

(assert (=> d!1511342 (= res!2005812 e!2954190)))

(declare-fun res!2005811 () Bool)

(assert (=> d!1511342 (=> (not res!2005811) (not e!2954190))))

(declare-fun lt!1899348 () Bool)

(assert (=> d!1511342 (= res!2005811 (not lt!1899348))))

(declare-fun lt!1899347 () Bool)

(assert (=> d!1511342 (= lt!1899348 lt!1899347)))

(declare-fun lt!1899350 () Unit!132303)

(declare-fun e!2954189 () Unit!132303)

(assert (=> d!1511342 (= lt!1899350 e!2954189)))

(declare-fun c!808906 () Bool)

(assert (=> d!1511342 (= c!808906 lt!1899347)))

(assert (=> d!1511342 (= lt!1899347 (containsKey!3452 (toList!5985 lt!1898803) key!4653))))

(assert (=> d!1511342 (= (contains!16316 lt!1898803 key!4653) lt!1899348)))

(declare-fun b!4736181 () Bool)

(assert (=> b!4736181 (= e!2954188 e!2954185)))

(declare-fun res!2005813 () Bool)

(assert (=> b!4736181 (=> (not res!2005813) (not e!2954185))))

(assert (=> b!4736181 (= res!2005813 (isDefined!9692 (getValueByKey!2008 (toList!5985 lt!1898803) key!4653)))))

(declare-fun b!4736182 () Bool)

(assert (=> b!4736182 (= e!2954189 e!2954187)))

(declare-fun c!808905 () Bool)

(declare-fun call!331329 () Bool)

(assert (=> b!4736182 (= c!808905 call!331329)))

(declare-fun bm!331324 () Bool)

(assert (=> bm!331324 (= call!331329 (contains!16322 e!2954186 key!4653))))

(declare-fun c!808904 () Bool)

(assert (=> bm!331324 (= c!808904 c!808906)))

(declare-fun b!4736183 () Bool)

(declare-fun lt!1899353 () Unit!132303)

(assert (=> b!4736183 (= e!2954189 lt!1899353)))

(declare-fun lt!1899352 () Unit!132303)

(assert (=> b!4736183 (= lt!1899352 (lemmaContainsKeyImpliesGetValueByKeyDefined!1899 (toList!5985 lt!1898803) key!4653))))

(assert (=> b!4736183 (isDefined!9692 (getValueByKey!2008 (toList!5985 lt!1898803) key!4653))))

(declare-fun lt!1899351 () Unit!132303)

(assert (=> b!4736183 (= lt!1899351 lt!1899352)))

(assert (=> b!4736183 (= lt!1899353 (lemmaInListThenGetKeysListContains!973 (toList!5985 lt!1898803) key!4653))))

(assert (=> b!4736183 call!331329))

(declare-fun b!4736184 () Bool)

(assert (=> b!4736184 false))

(declare-fun lt!1899349 () Unit!132303)

(declare-fun lt!1899354 () Unit!132303)

(assert (=> b!4736184 (= lt!1899349 lt!1899354)))

(assert (=> b!4736184 (containsKey!3452 (toList!5985 lt!1898803) key!4653)))

(assert (=> b!4736184 (= lt!1899354 (lemmaInGetKeysListThenContainsKey!977 (toList!5985 lt!1898803) key!4653))))

(declare-fun Unit!132424 () Unit!132303)

(assert (=> b!4736184 (= e!2954187 Unit!132424)))

(declare-fun b!4736185 () Bool)

(assert (=> b!4736185 (= e!2954186 (getKeysList!978 (toList!5985 lt!1898803)))))

(declare-fun b!4736186 () Bool)

(assert (=> b!4736186 (= e!2954190 (not (contains!16322 (keys!19037 lt!1898803) key!4653)))))

(assert (= (and d!1511342 c!808906) b!4736183))

(assert (= (and d!1511342 (not c!808906)) b!4736182))

(assert (= (and b!4736182 c!808905) b!4736184))

(assert (= (and b!4736182 (not c!808905)) b!4736179))

(assert (= (or b!4736183 b!4736182) bm!331324))

(assert (= (and bm!331324 c!808904) b!4736185))

(assert (= (and bm!331324 (not c!808904)) b!4736180))

(assert (= (and d!1511342 res!2005811) b!4736186))

(assert (= (and d!1511342 (not res!2005812)) b!4736181))

(assert (= (and b!4736181 res!2005813) b!4736178))

(declare-fun m!5682855 () Bool)

(assert (=> b!4736181 m!5682855))

(assert (=> b!4736181 m!5682855))

(declare-fun m!5682857 () Bool)

(assert (=> b!4736181 m!5682857))

(declare-fun m!5682859 () Bool)

(assert (=> d!1511342 m!5682859))

(assert (=> b!4736184 m!5682859))

(declare-fun m!5682861 () Bool)

(assert (=> b!4736184 m!5682861))

(declare-fun m!5682863 () Bool)

(assert (=> b!4736183 m!5682863))

(assert (=> b!4736183 m!5682855))

(assert (=> b!4736183 m!5682855))

(assert (=> b!4736183 m!5682857))

(declare-fun m!5682865 () Bool)

(assert (=> b!4736183 m!5682865))

(declare-fun m!5682867 () Bool)

(assert (=> b!4736180 m!5682867))

(assert (=> b!4736186 m!5682867))

(assert (=> b!4736186 m!5682867))

(declare-fun m!5682869 () Bool)

(assert (=> b!4736186 m!5682869))

(assert (=> b!4736178 m!5682867))

(assert (=> b!4736178 m!5682867))

(assert (=> b!4736178 m!5682869))

(declare-fun m!5682871 () Bool)

(assert (=> bm!331324 m!5682871))

(declare-fun m!5682873 () Bool)

(assert (=> b!4736185 m!5682873))

(assert (=> b!4735746 d!1511342))

(declare-fun bs!1125291 () Bool)

(declare-fun d!1511344 () Bool)

(assert (= bs!1125291 (and d!1511344 d!1511290)))

(declare-fun lambda!218357 () Int)

(assert (=> bs!1125291 (= lambda!218357 lambda!218334)))

(declare-fun bs!1125292 () Bool)

(assert (= bs!1125292 (and d!1511344 d!1511328)))

(assert (=> bs!1125292 (= lambda!218357 lambda!218356)))

(declare-fun bs!1125293 () Bool)

(assert (= bs!1125293 (and d!1511344 d!1511296)))

(assert (=> bs!1125293 (= lambda!218357 lambda!218335)))

(declare-fun bs!1125294 () Bool)

(assert (= bs!1125294 (and d!1511344 d!1511300)))

(assert (=> bs!1125294 (= lambda!218357 lambda!218342)))

(declare-fun bs!1125295 () Bool)

(assert (= bs!1125295 (and d!1511344 d!1511164)))

(assert (=> bs!1125295 (not (= lambda!218357 lambda!218222))))

(declare-fun bs!1125296 () Bool)

(assert (= bs!1125296 (and d!1511344 d!1511310)))

(assert (=> bs!1125296 (= lambda!218357 lambda!218347)))

(declare-fun bs!1125297 () Bool)

(assert (= bs!1125297 (and d!1511344 d!1511184)))

(assert (=> bs!1125297 (= lambda!218357 lambda!218273)))

(declare-fun bs!1125298 () Bool)

(assert (= bs!1125298 (and d!1511344 start!483016)))

(assert (=> bs!1125298 (= lambda!218357 lambda!218208)))

(declare-fun bs!1125299 () Bool)

(assert (= bs!1125299 (and d!1511344 d!1511180)))

(assert (=> bs!1125299 (= lambda!218357 lambda!218225)))

(declare-fun lt!1899355 () ListMap!5349)

(assert (=> d!1511344 (invariantList!1539 (toList!5985 lt!1899355))))

(declare-fun e!2954191 () ListMap!5349)

(assert (=> d!1511344 (= lt!1899355 e!2954191)))

(declare-fun c!808907 () Bool)

(assert (=> d!1511344 (= c!808907 ((_ is Cons!52926) (toList!5986 lm!2023)))))

(assert (=> d!1511344 (forall!11661 (toList!5986 lm!2023) lambda!218357)))

(assert (=> d!1511344 (= (extractMap!2074 (toList!5986 lm!2023)) lt!1899355)))

(declare-fun b!4736187 () Bool)

(assert (=> b!4736187 (= e!2954191 (addToMapMapFromBucket!1478 (_2!30588 (h!59301 (toList!5986 lm!2023))) (extractMap!2074 (t!360336 (toList!5986 lm!2023)))))))

(declare-fun b!4736188 () Bool)

(assert (=> b!4736188 (= e!2954191 (ListMap!5350 Nil!52925))))

(assert (= (and d!1511344 c!808907) b!4736187))

(assert (= (and d!1511344 (not c!808907)) b!4736188))

(declare-fun m!5682875 () Bool)

(assert (=> d!1511344 m!5682875))

(declare-fun m!5682877 () Bool)

(assert (=> d!1511344 m!5682877))

(assert (=> b!4736187 m!5681993))

(assert (=> b!4736187 m!5681993))

(declare-fun m!5682879 () Bool)

(assert (=> b!4736187 m!5682879))

(assert (=> b!4735746 d!1511344))

(declare-fun d!1511346 () Bool)

(declare-fun res!2005814 () Bool)

(declare-fun e!2954192 () Bool)

(assert (=> d!1511346 (=> res!2005814 e!2954192)))

(assert (=> d!1511346 (= res!2005814 (not ((_ is Cons!52925) lt!1898795)))))

(assert (=> d!1511346 (= (noDuplicateKeys!2048 lt!1898795) e!2954192)))

(declare-fun b!4736189 () Bool)

(declare-fun e!2954193 () Bool)

(assert (=> b!4736189 (= e!2954192 e!2954193)))

(declare-fun res!2005815 () Bool)

(assert (=> b!4736189 (=> (not res!2005815) (not e!2954193))))

(assert (=> b!4736189 (= res!2005815 (not (containsKey!3449 (t!360335 lt!1898795) (_1!30587 (h!59300 lt!1898795)))))))

(declare-fun b!4736190 () Bool)

(assert (=> b!4736190 (= e!2954193 (noDuplicateKeys!2048 (t!360335 lt!1898795)))))

(assert (= (and d!1511346 (not res!2005814)) b!4736189))

(assert (= (and b!4736189 res!2005815) b!4736190))

(declare-fun m!5682881 () Bool)

(assert (=> b!4736189 m!5682881))

(declare-fun m!5682883 () Bool)

(assert (=> b!4736190 m!5682883))

(assert (=> b!4735763 d!1511346))

(declare-fun bs!1125300 () Bool)

(declare-fun d!1511348 () Bool)

(assert (= bs!1125300 (and d!1511348 b!4736149)))

(declare-fun lambda!218358 () Int)

(assert (=> bs!1125300 (not (= lambda!218358 lambda!218343))))

(declare-fun bs!1125301 () Bool)

(assert (= bs!1125301 (and d!1511348 b!4736161)))

(assert (=> bs!1125301 (not (= lambda!218358 lambda!218354))))

(declare-fun bs!1125302 () Bool)

(assert (= bs!1125302 (and d!1511348 d!1511326)))

(assert (=> bs!1125302 (not (= lambda!218358 lambda!218355))))

(declare-fun bs!1125303 () Bool)

(assert (= bs!1125303 (and d!1511348 b!4736165)))

(assert (=> bs!1125303 (not (= lambda!218358 lambda!218352))))

(declare-fun bs!1125304 () Bool)

(assert (= bs!1125304 (and d!1511348 b!4736152)))

(assert (=> bs!1125304 (not (= lambda!218358 lambda!218350))))

(declare-fun bs!1125305 () Bool)

(assert (= bs!1125305 (and d!1511348 b!4736156)))

(assert (=> bs!1125305 (not (= lambda!218358 lambda!218348))))

(declare-fun bs!1125306 () Bool)

(assert (= bs!1125306 (and d!1511348 d!1511304)))

(assert (=> bs!1125306 (not (= lambda!218358 lambda!218346))))

(declare-fun bs!1125307 () Bool)

(assert (= bs!1125307 (and d!1511348 d!1511314)))

(assert (=> bs!1125307 (not (= lambda!218358 lambda!218351))))

(declare-fun bs!1125308 () Bool)

(assert (= bs!1125308 (and d!1511348 b!4736121)))

(assert (=> bs!1125308 (not (= lambda!218358 lambda!218328))))

(declare-fun bs!1125309 () Bool)

(assert (= bs!1125309 (and d!1511348 b!4736145)))

(assert (=> bs!1125309 (not (= lambda!218358 lambda!218344))))

(declare-fun bs!1125310 () Bool)

(assert (= bs!1125310 (and d!1511348 d!1511298)))

(assert (=> bs!1125310 (not (= lambda!218358 lambda!218339))))

(declare-fun bs!1125311 () Bool)

(assert (= bs!1125311 (and d!1511348 b!4736138)))

(assert (=> bs!1125311 (not (= lambda!218358 lambda!218337))))

(assert (=> bs!1125301 (not (= lambda!218358 lambda!218353))))

(declare-fun bs!1125312 () Bool)

(assert (= bs!1125312 (and d!1511348 b!4736142)))

(assert (=> bs!1125312 (not (= lambda!218358 lambda!218336))))

(declare-fun bs!1125313 () Bool)

(assert (= bs!1125313 (and d!1511348 b!4736117)))

(assert (=> bs!1125313 (not (= lambda!218358 lambda!218330))))

(declare-fun bs!1125314 () Bool)

(assert (= bs!1125314 (and d!1511348 d!1511158)))

(assert (=> bs!1125314 (= lambda!218358 lambda!218219)))

(assert (=> bs!1125313 (not (= lambda!218358 lambda!218329))))

(declare-fun bs!1125315 () Bool)

(assert (= bs!1125315 (and d!1511348 d!1511232)))

(assert (=> bs!1125315 (not (= lambda!218358 lambda!218331))))

(assert (=> bs!1125304 (not (= lambda!218358 lambda!218349))))

(assert (=> bs!1125311 (not (= lambda!218358 lambda!218338))))

(assert (=> bs!1125309 (not (= lambda!218358 lambda!218345))))

(assert (=> d!1511348 true))

(assert (=> d!1511348 true))

(assert (=> d!1511348 (= (allKeysSameHash!1874 newBucket!218 hash!405 hashF!1323) (forall!11663 newBucket!218 lambda!218358))))

(declare-fun bs!1125316 () Bool)

(assert (= bs!1125316 d!1511348))

(declare-fun m!5682885 () Bool)

(assert (=> bs!1125316 m!5682885))

(assert (=> b!4735752 d!1511348))

(declare-fun d!1511350 () Bool)

(declare-fun res!2005816 () Bool)

(declare-fun e!2954194 () Bool)

(assert (=> d!1511350 (=> res!2005816 e!2954194)))

(assert (=> d!1511350 (= res!2005816 (not ((_ is Cons!52925) oldBucket!34)))))

(assert (=> d!1511350 (= (noDuplicateKeys!2048 oldBucket!34) e!2954194)))

(declare-fun b!4736191 () Bool)

(declare-fun e!2954195 () Bool)

(assert (=> b!4736191 (= e!2954194 e!2954195)))

(declare-fun res!2005817 () Bool)

(assert (=> b!4736191 (=> (not res!2005817) (not e!2954195))))

(assert (=> b!4736191 (= res!2005817 (not (containsKey!3449 (t!360335 oldBucket!34) (_1!30587 (h!59300 oldBucket!34)))))))

(declare-fun b!4736192 () Bool)

(assert (=> b!4736192 (= e!2954195 (noDuplicateKeys!2048 (t!360335 oldBucket!34)))))

(assert (= (and d!1511350 (not res!2005816)) b!4736191))

(assert (= (and b!4736191 res!2005817) b!4736192))

(declare-fun m!5682887 () Bool)

(assert (=> b!4736191 m!5682887))

(assert (=> b!4736192 m!5681987))

(assert (=> b!4735753 d!1511350))

(declare-fun d!1511352 () Bool)

(declare-fun res!2005818 () Bool)

(declare-fun e!2954196 () Bool)

(assert (=> d!1511352 (=> res!2005818 e!2954196)))

(assert (=> d!1511352 (= res!2005818 ((_ is Nil!52926) lt!1898785))))

(assert (=> d!1511352 (= (forall!11661 lt!1898785 lambda!218208) e!2954196)))

(declare-fun b!4736193 () Bool)

(declare-fun e!2954197 () Bool)

(assert (=> b!4736193 (= e!2954196 e!2954197)))

(declare-fun res!2005819 () Bool)

(assert (=> b!4736193 (=> (not res!2005819) (not e!2954197))))

(assert (=> b!4736193 (= res!2005819 (dynLambda!21863 lambda!218208 (h!59301 lt!1898785)))))

(declare-fun b!4736194 () Bool)

(assert (=> b!4736194 (= e!2954197 (forall!11661 (t!360336 lt!1898785) lambda!218208))))

(assert (= (and d!1511352 (not res!2005818)) b!4736193))

(assert (= (and b!4736193 res!2005819) b!4736194))

(declare-fun b_lambda!181127 () Bool)

(assert (=> (not b_lambda!181127) (not b!4736193)))

(declare-fun m!5682889 () Bool)

(assert (=> b!4736193 m!5682889))

(declare-fun m!5682891 () Bool)

(assert (=> b!4736194 m!5682891))

(assert (=> b!4735764 d!1511352))

(declare-fun d!1511354 () Bool)

(assert (=> d!1511354 (= (head!10300 (toList!5986 lm!2023)) (h!59301 (toList!5986 lm!2023)))))

(assert (=> b!4735765 d!1511354))

(declare-fun b!4736199 () Bool)

(declare-fun e!2954200 () Bool)

(declare-fun tp!1349080 () Bool)

(declare-fun tp!1349081 () Bool)

(assert (=> b!4736199 (= e!2954200 (and tp!1349080 tp!1349081))))

(assert (=> b!4735760 (= tp!1349063 e!2954200)))

(assert (= (and b!4735760 ((_ is Cons!52926) (toList!5986 lm!2023))) b!4736199))

(declare-fun b!4736204 () Bool)

(declare-fun e!2954203 () Bool)

(declare-fun tp!1349084 () Bool)

(assert (=> b!4736204 (= e!2954203 (and tp_is_empty!31485 tp_is_empty!31487 tp!1349084))))

(assert (=> b!4735757 (= tp!1349065 e!2954203)))

(assert (= (and b!4735757 ((_ is Cons!52925) (t!360335 oldBucket!34))) b!4736204))

(declare-fun e!2954204 () Bool)

(declare-fun b!4736205 () Bool)

(declare-fun tp!1349085 () Bool)

(assert (=> b!4736205 (= e!2954204 (and tp_is_empty!31485 tp_is_empty!31487 tp!1349085))))

(assert (=> b!4735747 (= tp!1349064 e!2954204)))

(assert (= (and b!4735747 ((_ is Cons!52925) (t!360335 newBucket!218))) b!4736205))

(declare-fun b_lambda!181129 () Bool)

(assert (= b_lambda!181113 (or start!483016 b_lambda!181129)))

(declare-fun bs!1125317 () Bool)

(declare-fun d!1511356 () Bool)

(assert (= bs!1125317 (and d!1511356 start!483016)))

(assert (=> bs!1125317 (= (dynLambda!21863 lambda!218208 (h!59301 (toList!5986 lm!2023))) (noDuplicateKeys!2048 (_2!30588 (h!59301 (toList!5986 lm!2023)))))))

(assert (=> bs!1125317 m!5682831))

(assert (=> b!4735830 d!1511356))

(declare-fun b_lambda!181131 () Bool)

(assert (= b_lambda!181115 (or start!483016 b_lambda!181131)))

(declare-fun bs!1125318 () Bool)

(declare-fun d!1511358 () Bool)

(assert (= bs!1125318 (and d!1511358 start!483016)))

(assert (=> bs!1125318 (= (dynLambda!21863 lambda!218208 lt!1898788) (noDuplicateKeys!2048 (_2!30588 lt!1898788)))))

(declare-fun m!5682893 () Bool)

(assert (=> bs!1125318 m!5682893))

(assert (=> d!1511170 d!1511358))

(declare-fun b_lambda!181133 () Bool)

(assert (= b_lambda!181127 (or start!483016 b_lambda!181133)))

(declare-fun bs!1125319 () Bool)

(declare-fun d!1511360 () Bool)

(assert (= bs!1125319 (and d!1511360 start!483016)))

(assert (=> bs!1125319 (= (dynLambda!21863 lambda!218208 (h!59301 lt!1898785)) (noDuplicateKeys!2048 (_2!30588 (h!59301 lt!1898785))))))

(declare-fun m!5682895 () Bool)

(assert (=> bs!1125319 m!5682895))

(assert (=> b!4736193 d!1511360))

(check-sat (not b!4735990) (not b!4736160) (not bm!331322) (not d!1511310) (not bm!331313) (not b!4736134) (not b!4736143) (not bm!331316) (not d!1511320) (not b!4736140) (not d!1511302) (not d!1511218) (not d!1511208) (not d!1511344) (not b!4736187) (not bm!331324) (not bm!331318) (not b!4735942) (not b!4735944) (not b!4736145) (not b!4736141) (not b!4736139) (not b!4735917) (not b!4736170) (not b!4736183) (not d!1511170) (not b!4736135) (not b!4735955) (not b!4735920) (not b!4736205) (not b!4736173) tp_is_empty!31485 (not bm!331323) (not d!1511184) (not b!4735988) (not b!4735993) (not d!1511324) (not b!4736204) (not b!4735939) (not d!1511348) (not d!1511148) (not d!1511306) (not d!1511212) (not b!4736155) (not d!1511296) (not b!4735992) (not b!4736164) (not b!4735991) (not b_lambda!181129) (not b!4736119) (not b!4736117) (not b!4736128) (not b!4735985) (not bm!331312) (not d!1511168) (not bm!331301) (not b!4736150) (not b!4736138) (not b!4736178) (not d!1511288) (not b!4735847) (not bm!331309) (not d!1511328) (not b!4735937) (not b!4735831) (not d!1511172) (not b!4736191) (not bm!331320) (not b!4736180) (not bs!1125317) (not b!4736172) (not d!1511336) (not b!4735840) (not b!4736148) (not bs!1125318) (not bm!331321) (not d!1511298) (not d!1511232) (not b!4735812) (not d!1511300) (not d!1511322) (not b!4736159) (not b!4736162) (not b!4735918) (not bm!331310) (not d!1511308) (not d!1511332) (not b!4736192) (not d!1511342) (not bs!1125319) (not d!1511182) (not d!1511164) (not b!4736194) (not b!4736157) (not d!1511330) (not b!4735823) (not d!1511176) (not b!4736147) (not bm!331311) (not b!4736181) (not b!4735834) (not b!4736154) (not b!4735849) (not bm!331317) (not d!1511318) (not b!4736199) (not d!1511316) (not b!4736185) (not b!4736144) tp_is_empty!31487 (not d!1511294) (not b_lambda!181131) (not bm!331314) (not b!4736152) (not b!4736190) (not b!4735941) (not b!4735957) (not b!4736184) (not b_lambda!181133) (not b!4736153) (not b!4736120) (not b!4736161) (not b!4736118) (not d!1511290) (not d!1511174) (not d!1511326) (not b!4736146) (not b!4735919) (not bm!331319) (not d!1511158) (not d!1511304) (not b!4735822) (not b!4736186) (not b!4736166) (not b!4736163) (not b!4736136) (not b!4736176) (not b!4736158) (not d!1511178) (not d!1511314) (not d!1511180) (not b!4735987) (not bm!331315) (not b!4736189) (not d!1511286))
(check-sat)
